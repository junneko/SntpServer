/**
*	sntp.c
*	Simple Network Time Protocol: 時刻修正プロトコル RFC5905
*	Copyright (c)Junnichi Tomaru
*/
#include	"ipv4/ipv4.h"
extern int	hosei;		/* 補正量(ms) */
extern byte	calmode;	/* 校正モード */

/**
*	小数点以下タイマ値をタイムスタンプにする
*	下位32ビットが秒の小数点以下なので、秒の部分に入れてから
*	1000で割ることにより下位32ビットに秒換算で入れる
*	 in	小数点以下タイマ値
*	out	タイムスタンプ
*/
static dword	timer2stamp( dword timer )
{
	qword_t	tmp;	/* 計算用 */
	dword	ret;

	tmp.dwords.hi = timer;	/* time * 4294967296 */
	tmp.dwords.lo = 0L;
	ret = ( dword )( tmp.data / 1000ULL );	/* ( tmp / 1000 ) */

	return	ret;
}


/**
*	タイムスタンプを小数点以下タイマ値にする
*	下位32ビットが秒の小数点以下(2^-x)なので、1000(ms)を
*	掛けると上位32ビットにミリ秒換算の数値になる。
*	 in	タイムスタンプ
*	out	小数点以下タイマ値
*/
static dword	stamp2timer( dword timer )
{
	qword_t	ret;

	ret.data = (qword)timer * 1000ULL;

	return	ret.dwords.hi;
}


/**
*	リファレンスIDセット
*	 in	なし
*	out	なし
*/
void	set_referenceid( void )
{
	if( adjmode == GPSADJ_MODE ){	/* GPS MODE */
		enc_writebufc( PSTR( "GPS" ));
		enc_writebuf( C_NULL );
	}
	else{		/* NTP MODE */
		enc_writebuf4( myipaddr );	/* 参照識別子(RFC5905によりIPv4アドレス) */
	}
}


/**
*	時刻補正、補正ログ時刻保存(サブルーチン)
*	 in	時間差
*	out	なし
*/
void	ntp_calsub( int64_t data )
{
	qword_t	qw;
	long	l, w;
	int	i;

	qw.data = data;
	l = (long)qw.dwords.hi;		/* 秒補正量 */
	i = (int)stamp2timer( qw.dwords.lo );	/* ms補正量 */
	if(( inical == off ) && ( timewidth != 0U ) && ( chkskip == off )){	/* 初期補正・判定無効ではない */
		w = _abs( l );			/* 補正後は何万秒もズレ補正することがないという前提 */
		if( w > (long)timewidth ){	/* 変化幅より大きいときは補正しない */
			return;
		}
	}
	chkskip = off;
	/* ----- 時刻情報更新 ----- */
	if(( _abs( l ) > 0 ) || ( _abs( i ) >= slew_width )){	/* STEPモード(判定値 <= ずれ) */
		_di( );
		slew_ms = 0;
		utc_sec += l;		/* 秒のズレ補正 */
		utc_msec += i;		/* 小数点以下のズレ補正 */
		if(( utc_msec < 0 ) && ( utc_sec > 0 )){	/* msのズレで補正したほうが良い(マイナス方向) */
			utc_sec--;
			utc_msec += 1000;
		}
		rnstamp = utc_sec;	/* 更新時刻 */
		rntime = utc_msec;
		_ei( );
	}
	else{	/* SLEWモード */
		_di( );
		slew_ms = i;		/* 少しずつ補正 */
		rnstamp = utc_sec;	/* 更新時刻は受け取った時刻 */
		rntime = utc_msec;
		_ei( );
	}
	/* ----- 補正情報 ----- */
	if(( l < 0 ) && ( i > 0 )){	/* 秒がマイナスでmsがプラスのときは */
		l++;			/* msのほうで調整をしたことにする */
		i -= 1000;
	}
	if(( l > 32767L ) || ( l < -32768L )){
		calsec = 32767;		/* 覚えておくのは最小限にする */
	}
	else{
		calsec = (int)l;
	}
	calms = i;

	/* ----- 間隔判定 ver2.20.00 ----- */
	if( calmode == 0 ){		/* 初期 */
		calmode = 2;		/* 多く */
	}
	else{	/* 初期補正ではない */
		hosei = _abs( l * 1000 + i );	/* 秒補正量も判定に入れる */
		if( hosei >= 333 ){	/* 変化幅より大きいときは周期早める */
			calmode = 1;
		}
		else{
			calmode = 2;
		}
	}
	cal_updated = on;
}


/**
*	NTPブロードキャストクライアント処理
*	 in	受信パケットポインタ
*	out	0:正常 0以外:エラー
*/
static byte	ntp_bcastcliant( ntp_st *rxntp )
{
	qsword_t	qsw;
	int64_t	t1, t2;
	ul_t	ul;
	byte	st;

	lists = rxntp->livnmd & BYTE_MASK_U2;
	st = rxntp->stratum;
	if(( lists == LI_ALARM ) || ( st == 0 ) || ( st == STRATUM_MAX )){	/* LI=3,stratum=0or16 */
		return	EVNT_NONE;	/* 時刻に反映しない */
	}
	stratum = st + 1;		/* 階級は参照元+1 */
	rootdly = cnvendian32( rxntp->delay );	/* ルート遅延 */
	rootdsprsn = cnvendian32( rxntp->dispersion );	/* ルート分散 */
	ul.bytes.ll = rxntp->txts.b8;
	ul.bytes.lh = rxntp->txts.b7;
	ul.bytes.hl = rxntp->txts.b6;
	ul.bytes.hh = rxntp->txts.b5;	/* ミリ秒 */
	qsw.dwords.lo = ul.data;
	ul.bytes.ll = rxntp->txts.b4;
	ul.bytes.lh = rxntp->txts.b3;
	ul.bytes.hl = rxntp->txts.b2;
	ul.bytes.hh = rxntp->txts.b1;	/* 秒 */
	qsw.dwords.hi = ul.data;	/* 送信タイムスタンプ */
	t1 = qsw.data;
	if( t1 == 0LL ){		/* タイムスタンプ＝０ */
		return	EVNT_NONE;
	}
	_di( );
	qsw.dwords.hi = utc_sec + TIME_CONST;	/* UTC→NTP時間変換 */
	qsw.dwords.lo = timer2stamp( utc_msec );	/* 小数点以下 */
	_ei( );
	t2 = qsw.data;
	ntp_calsub( t1 - t2 );		/* 時刻更新 */

	return	EVNT_NONE;
}


/**
*	NTPクライアント処理
*	差(t)=(( t2 - t1 ) + ( t3 - t4 )) / 2
*	T2-T1: 通信delay + 時刻のズレ
*	T3-T4: 通信delay - 時刻のズレ
*	往復で通信delayが同じと仮定されている
*	 in	受信パケットポインタ
*	out	0:正常 0以外:エラー
*/
static byte	ntp_cliant( ntp_st *rxntp )
{
	qsword_t	qsw;
	int64_t	tmp, t1, t2;
	ul_t	ul;
	byte	st;

	if( adjustseq == ADJUSTSEQ_NONE ){
		return	EVNT_NONE;		/* 正常処理なので */
	}
	lists = rxntp->livnmd & BYTE_MASK_U2;
	st = rxntp->stratum;
	if(( lists == LI_ALARM ) || ( st == STRATUM_0 ) || ( st >= STRATUM_MAX )){	/* LI=3 or stratum=0 or 16 */
		time_sts = TIME_UNADJUSTED;
		rslv_req = 0;
		adjustseq = ADJUSTSEQ_NONE;	/* NTP要求中止 */
		unsync_seq( );
		return	EVNT_NTP_UNSYNC;
	}
	stratum = st + 1;			/* 階級は参照元+1 */
	rootdly = cnvendian32( rxntp->delay );	/* ルート遅延 */
	rootdsprsn = cnvendian32( rxntp->dispersion );	/* ルート分散 */
	ul.bytes.ll = rxntp->origints.b8;
	ul.bytes.lh = rxntp->origints.b7;
	ul.bytes.hl = rxntp->origints.b6;
	ul.bytes.hh = rxntp->origints.b5;
	qsw.dwords.lo = ul.data;
	ul.bytes.ll = rxntp->origints.b4;
	ul.bytes.lh = rxntp->origints.b3;
	ul.bytes.hl = rxntp->origints.b2;
	ul.bytes.hh = rxntp->origints.b1;
	qsw.dwords.hi = ul.data;
	tmp = qsw.data;				/* 基点タイムスタンプ */
	ul.bytes.ll = rxntp->rxts.b8;
	ul.bytes.lh = rxntp->rxts.b7;
	ul.bytes.hl = rxntp->rxts.b6;
	ul.bytes.hh = rxntp->rxts.b5;
	qsw.dwords.lo = ul.data;
	ul.bytes.ll = rxntp->rxts.b4;
	ul.bytes.lh = rxntp->rxts.b3;
	ul.bytes.hl = rxntp->rxts.b2;
	ul.bytes.hh = rxntp->rxts.b1;
	qsw.dwords.hi = ul.data;
	t1 = ( qsw.data - tmp ) / 2LL;		/* 受信タイムスタンプ - 基点タイムスタンプ / 2 */
	ul.bytes.ll = rxntp->txts.b8;
	ul.bytes.lh = rxntp->txts.b7;
	ul.bytes.hl = rxntp->txts.b6;
	ul.bytes.hh = rxntp->txts.b5;
	qsw.dwords.lo = ul.data;
	ul.bytes.ll = rxntp->txts.b4;
	ul.bytes.lh = rxntp->txts.b3;
	ul.bytes.hl = rxntp->txts.b2;
	ul.bytes.hh = rxntp->txts.b1;
	qsw.dwords.hi = ul.data;
	tmp = qsw.data;				/* 送信タイムスタンプ */
	qsw.dwords.hi = rxstamp + TIME_CONST;	/* UTC→NTP時間変換 */
	qsw.dwords.lo = timer2stamp( rxtime );	/* 小数点以下 */
	t2 = ( tmp - qsw.data ) / 2LL;		/* 送信タイムスタンプ - 受信時刻 / 2 */
	ntp_calsub( t1 + t2 );			/* 時刻更新 */

	return	EVNT_NONE;
}


/**
*	NTPサーバ応答
*	 in	受信パケットポインタ
*	out	0:正常 1:エラーあり
*/
static byte	ntp_server( ntp_st *rxntp )
{
	byte	livnmd, st, i;
	byte	*p;
	time_t	urn, urx, utx;
	dword	drn, drx, dtx;

	livnmd = rxntp->livnmd & 0x38;	/* バージョンナンバ取り出し */
	if( synchronized == on ){
		livnmd |= lists;	/* LIに反映 */
		st = stratum;		/* 階級 */
		/* 参照タイムスタンプ */
		urn = rnstamp + TIME_CONST;	/* UTC→NTP時間変換 */
		drn = timer2stamp( rntime );	/* 小数点以下 */
	}
	else{
		livnmd |= LI_ALARM;	/* 合ってないときはLI=3 */
		st = STRATUM_MAX;	/* stratum16(RFC5905による)  */
		/* 参照タイムスタンプ=0 */
		urn = 0;
		drn = 0;
	}
	/* 受信タイムスタンプ */
	urx = rxstamp + TIME_CONST;	/* UTC→NTP時間変換 */
	drx = timer2stamp( rxtime );	/* 小数点以下 */
	/* 送信バッファへのセット */
	enc_txseek( UDP_DATA );
	enc_writebuf( livnmd | SNTP_SERVER );	/* LI,VN,MODE(サーバ) */
	enc_writebuf( st );		/* 階級 */
	enc_writebuf( rxntp->interval );/* ポーリング間隔(オリジナルをコピー) */
	enc_writebuf( PRE_M10 );	/* 精度(-10(0.9765625ms),1msごとの時刻カウント) */
	enc_writebuf4( 0UL );		/* ルート遅延(自分が階級1だから) */
	enc_writebuf4( 0UL );		/* ルート分散(自分が階級1だから) */
	set_referenceid( );		/* Reference ID */
	enc_writebuf4( urn );		/* 参照タイムスタンプ */
	enc_writebuf4( drn );		/* 小数点以下 */
	if( synchronized == on ){
		p = &rxntp->txts.b1;	/* 開始タイムスタンプ */
		for( i = 0; i < 8; i++, p++ ){	/* 送信タイムスタンプをコピーする */
			enc_writebuf( *p );
		}
	}
	else{
		enc_writebuf4( 0UL );
		enc_writebuf4( 0UL );
	}
	enc_writebuf4( urx );	/* 受信タイムスタンプ */
	enc_writebuf4( drx );
	if( synchronized == on ){	/* 送信タイムスタンプを正確にするため、ここで処理 */
		_di( );
		utx = utc_sec + TIME_CONST;	/* UTC→NTP時間変換 */
		dtx = timer2stamp( utc_msec );	/* 小数点以下 */
		_ei( );
	}
	enc_writebuf4( utx );	/* 送信タイムスタンプ */
	enc_writebuf4( dtx );

	return	udp_output( SNTP_BASELENGTH );
}


/**
*	NTP入力
*	 in	なし
*	out	0:正常 0以外:エラーあり
*/
byte	ntp_input( void )
{
	byte	mode, ret;
	ntp_st	rxntp;

	ret = EVNT_NONE;
	enc_rxseek( pacinfo.proto_body );	/* データ部に移動 */
	enc_readbuffer((byte *)&rxntp, sizeof( rxntp ));	/* NTP読み込み */
	mode = rxntp.livnmd & BYTE_MASK_L3;
	if( mode == SNTP_SERVER ){		/* サーバからの応答 */
		ret = ntp_cliant( &rxntp );
	}
	else if( mode == SNTP_CLIANT ){		/* クライアントからの問い合わせ */
		ret = ntp_server( &rxntp );
	}
	else if(( mode == SNTP_BCAST ) && ( adjmode & BCAST_MODE )){	/* ブロードキャスト */
		ret = ntp_bcastcliant( &rxntp );
	}

	return	ret;
}


/**
*	NTP時刻要求
*	 in	サーバIPアドレス
*	out	0:正常 0以外:エラーあり
*/
byte	ntp_request( dword sntpip )
{
	time_t	utx;
	dword	dtx;

	pacinfo.partipaddr = sntpip;
	pacinfo.partport = UDP_NTP;
	pacinfo.myport = UDP_NTP;

	enc_txseek( UDP_DATA );
	enc_writebuf( 0x20 + SNTP_CLIANT );	/* LI=0,VN=4,MODE(クライアント) */
	enc_fillwrite( 0, 39U );	/* 送信タイムスタンプ以外0 */
	_di( );
	utx = utc_sec + TIME_CONST;	/* UTC→NTP時間変換 */
	dtx = timer2stamp( utc_msec );	/* 小数点以下 */
	_ei( );
	txstamp = dtx;			/* 下位32bit保存 */
	enc_writebuf4( utx );		/* 送信タイムスタンプ */
	enc_writebuf4( dtx );

	return	udp_output( SNTP_BASELENGTH );
}


/**
*	NTP時刻ブロードキャスト(配信)
*	 in	なし
*	out	0:正常 0以外:エラーあり
*/
byte	ntp_broadcast( void )
{
	time_t	urn, utx;
	dword	drn, dtx;
	byte	i, livnmd, st;

	pacinfo.partipaddr = ntpbcipadr;
	pacinfo.partport = UDP_NTP;
	pacinfo.myport = UDP_NTP;
	livnmd = 0x20 + SNTP_BCAST;	/* LI=0,VN=4,MODE5(ブロードキャスト) */
	st = STRATUM_1;			/* 階層1(RFC2030による) */
	if( synchronized == off ){	/* 時刻合っていない */
		livnmd |= LI_ALARM;	/* LI=3 */
		st = STRATUM_MAX;	/* stratum16(RFC5905による) */
	}
	enc_txseek( UDP_DATA );
	enc_writebuf( livnmd );
	enc_writebuf( st );		/* Stratum */
	i = log2x( binterval );
	enc_writebuf( i );		/* ポーリング間隔 */
	enc_writebuf( PRE_M10 );	/* 精度(-10(0.9765625ms),1msごとのカウント) */
	enc_writebuf4( rootdly );	/* ルート遅延 */
	enc_writebuf4( rootdsprsn );	/* ルート分散 */
	set_referenceid( );		/* Reference ID */
	urn = rnstamp + TIME_CONST;	/* UTC→NTP時間変換 */
	drn = timer2stamp( rntime );	/* 小数点以下 */
	enc_writebuf4( urn );		/* 参照タイムスタンプ */
	enc_writebuf4( drn );		/* 小数点以下 */
	enc_fillwrite( 0, 16U );	/* 開始・受信タイムスタンプ0 */
	_di( );
	utx = utc_sec + TIME_CONST;	/* UTC→NTP時間変換 */
	dtx = timer2stamp( utc_msec );	/* 小数点以下 */
	_ei( );
	enc_writebuf4( utx );		/* 送信タイムスタンプ */
	enc_writebuf4( dtx );

	return	udp_output( SNTP_BASELENGTH );
}


/**
*	次のNTPサーバに移動(0,0,0,0でない次のサーバ設定を探す)
*	 in	なし
*	out	なし
*/
void	nextntpsrv( void )
{
	dword	addr;
	byte	i, p;
	char	buf[32];

	osrvpnt = srvpnt;	/* バックアップ */
	p = srvpnt;
	for( i = 0; i < 4; i++ ){
		p++;
		p &= BYTE_MASK_L2;
		/* コピー元はメモリ上にあるのでstrcpyを使用する */
		strcpy( buf, (char *)pgm_read_word( ntpsrv + p ));
		if( ipstr2bin( buf, (dword *)&addr ) == TRUE ){	/* 数値 */
			if( addr != 0UL ){	/* アドレス有効 */
				srvpnt = p;
				break;
			}
		}
		else{	/* 文字指定 */
			srvpnt = p;
			break;
		}
	}
}


/**
*	NTP要求処理
*	 in	なし
*	out	0:正常 0以外:エラーあり
*/
byte	ntp_reqseq( void )
{
	byte	sts;

	sts = EVNT_NONE;
	if( adjustseq == ADJUSTSEQ_NONE ){	/* 処理なし */
		return	EVNT_NONE;
	}
	else if( adjustseq == 1 ){	/* 補正シーケンス開始 */
		/* コピー元はメモリ上にあるのでstrcpyを使用する */
		strcpy( rslvname, (char *)pgm_read_word( ntpsrv + srvpnt ));
		rslv_req = 1;
		adjustseq = 2;
	}
	else if( adjustseq == 2 ){	/* 名前解決中 */
		if( rslv_end == on ){	/* 解決終了 */
			rslv_end = off;
			ntpserver = rslv_addr;
			ntprtrycnt = 0;
			sts = ntp_request( ntpserver );	/* 時刻再取得(要求) */
			if( sts == EVNT_NONE ){
				adjustseq = 3;
				ntpstart = getcount1ms( );
			}
			else{
				adjustseq = ADJUSTSEQ_NONE;
			}
			nextntpsrv( );
		}
	}
	else if( adjustseq == 3 ){	/* NTPリクエスト中 */
		if(( getcount1ms( ) - ntpstart ) >= ntptout ){	/* タイムアウト */
			ntprtrycnt++;
			if( ntprtrycnt >= 3 ){
				time_sts = TIME_TIMEOUT;	/* listsには反映しない */
				sts = EVNT_NTP_TIMEOUT1 + osrvpnt;
				unsync_seq( );
			}
			else{
				sts = ntp_request( ntpserver );	/* 時刻再取得(要求) */
				if( sts == EVNT_NONE ){
					ntpstart = getcount1ms( );
				}
				else{
					adjustseq = ADJUSTSEQ_NONE;
				}
			}
		}
	}

	return	sts;
}


/* end of sntp.c */
