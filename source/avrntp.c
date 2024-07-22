/**
*	KDB-SNTP-SERVER		メイン
*	Copyright (c)Junnichi Tomaru
*/
#include	"include/avrntp.h"

/* ----- ヒューズビット ----- */
__fuse_t __fuse __attribute__((section (".fuse"))) = 
{
	.low =      0xFF,
	.high =     0xD7,
	.extended = 0xFC
};
/* ----- ロックビット ----- */
unsigned char __lock __attribute__((section (".lock"))) = LOCKBITS_DEFAULT;

/* ----- グローバル変数読み込み ----- */
#include	"constantval.c"			/* 読み取り専用 */
#include	"bios/bios_inival.c"		/* バイオスグローバル変数 */
#include	"stack/ipv4/ipv4_inival.c"	/* プロトコルスタック用変数 */
#include	"inival.c"			/* 一般グローバル変数 */

/* ---------- サブルーチンとか ---------- */

/**
*	補正インターバル更新
*	 in	位置
*	out	なし
*/
void	change_calinterval( int cycle )
{
	int	i;

	i = (int)( make_rand( ) & LONG_MASK_L05 );	/* 変化幅0-31 */
	i -= 16;			/* 0-31→±16 */
	cinterval = cycle + i;		/* インターバルを±16秒振る */
	if( cinterval < 60 ){		/* ver2.19.00 */
		cinterval = 60;
	}
	ocal_time = world_time;		/* 次の周期のため */
}

/**
*	補正残り時間算出
*	 in	なし
*	out	残り時間
*/
time_t	calc_calremtime( void )
{
	return	_difftime( cinterval, calc_timediff( &ocal_time, &world_time ));
}

/**
*	配信残り時間算出
*	 in	なし
*	out	残り時間
*/
time_t	calc_bcastremtime( void )
{
	return	_difftime( binterval, calc_timediff( &obcast_time, &world_time ));
}

/**
*	時刻情報更新
*	 in	なし
*	out	なし
*/
static void	update_time( void )
{
	time_t	utccnt;
	struct tm	*dspt;
	byte	flg;

	_di( );
	utccnt = utc_sec;
	_ei( );
	/* ----- UTC処理 ----- */
	dspt = gmtime( &utccnt );	/* COUNT->UTC */
	if( dspt == NULL ){	/* 時刻異常 */
		lists = LI_ALARM;
		time_sts = TIME_ILLEGAL;
		return;
	}
	/* ----- 時刻正常 ----- */
	flg = 0;
	utc_time = *dspt;
	if( lists == LI_INC ){		/* 60秒挿入 UTC 00:00:00 */
		if(( liflg == LI_NONE ) && ( utc_time.tm_hour == 0 ) && ( utc_time.tm_min == 0 ) && ( utc_time.tm_sec == 0 )){
			utccnt--;	/* 前の分の60秒とするため00秒→59秒 */
			liflg = LI_INCREQ;
			flg = 1;
		}
		else if( liflg == LI_INCREQ ){	/* 60秒挿入後 */
			liflg = LI_UPDATED;
		}
	}
	else if( lists == LI_DEC ){	/* 59秒削除 UTC 23:59:59 */
		if(( liflg == LI_NONE ) && ( utc_time.tm_hour == 23 ) && ( utc_time.tm_min == 59 ) && ( utc_time.tm_sec == 59 )){
			utccnt++;	/* 59秒→00秒とするため */
			utc_sec++;
			liflg = LI_UPDATED;
			flg = 2;
		}
	}
	if( flg != 0 ){			/* COUNT->UTCやり直し */
		dspt = gmtime( &utccnt );
		utc_time = *dspt;
		if( dspt == NULL ){	/* 時刻異常 */
			lists = LI_ALARM;	/* ver2.20.00 */
			cal_updated = off;
		}
	}
	/* ----- WTC処理 ----- */
	utccnt += timeoffset;		/* オフセット分足す */
	dspt = gmtime( &utccnt );	/* UTC->WTC */
	world_time = *dspt;
	if( liflg == LI_UPDATED ){	/* うるう秒処理終わり(削除または挿入処理後) */
		lists = LI_READY;	/* LI消す */
		liflg = LI_NONE;	/* 処理なし */
		time_sts = TIME_ILLEGAL;
	}
	else if( liflg == LI_INCREQ ){	/* 60秒挿入 v0.30 */
		world_time.tm_sec = 60;	/* TIME関数では処理できないので、ここで処理 */
	}
}

/* ---------- 初期化ルーチン ---------- */

/**
*	値の初期化
*	初期値が必要な変数を初期化する
*	 in	なし
*	out	なし
*/
static void	init_value( void )
{
	lcden = on;				/* 初期は液晶あり固定 */
}

/* BAUD RATE */
const prog_uint16_t	baudtbl[] = {
	BPS1200, BPS2400, BPS4800, BPS9600, BPS19200, BPS38400, BPS57600
};

/**
*	ポート等初期化
*	 in	なし
*	out	なし
*	DDx 0:入力 1:出力
*/
static void	init_internal( void )
{
	byte	sts;

	/* --- 消費電力関係 --- */
#if defined( USE_644PA )
	PRR0 = ( BYTE_BIT_X( PRTWI ) | BYTE_BIT_X( PRTIM1 ) | BYTE_BIT_X( PRUSART1 ) | BYTE_BIT_X( PRADC ));	/* TWI,TMR1,USART1,ADC停止 */
#else
	PRR = ( BYTE_BIT_X( PRTWI ) | BYTE_BIT_X( PRTIM1 ) | BYTE_BIT_X( PRADC ));	/* TWI,TMR1,ADC停止 */
#endif
#if defined( USE_1284P )
	PRR1 = BB_X( 0 );	/* TMR3停止 */
#endif
	MCUCR = BYTE_BIT_X( JTD );	/* JTAG DISABLE 2回 */
	MCUCR = BYTE_BIT_X( JTD );
	ACSR = BYTE_BIT_X( ACD );	/* コンパレータ停止 */

	/* --- ポート初期値、方向 --- */
	PORTA = 0x00;		/* 状態出力=L */
	PORTB = 0x10;		/* SS=H */
	PORTC = 0x80;		/* LCD=W only,LAT='H' */
	PORTD = 0x0B;		/* TxD0,RxD0=PullUp,BL=ON */
	DDRA = 0xFF;		/* 出力 */
	DDRB = 0xB0;		/*  */
	DDRC = 0xFF;		/* LCDポート出力に,LAT=OUT */
	DDRD = 0xCA;		/* BL,RESET,TxD=OUT */

	init_value( );

	/* --- SPI --- */
	SPCR = BYTE_BIT_X( MSTR );	/* マスタ、2分周に設定*/
	SPSR = BYTE_BIT_X( SPI2X );	/* X2 */
	SPI_EN( );

	/* --- UART0 --- */
	UBRR0 = BPS9600;		/* 9600bps */
	UCSR0A = BYTE_BIT_X( U2X0 );	/* 倍速 */
	UCSR0C = B8S1PN;		/* 8bit,stop1,Pn */

	/* --- Timer0 インターバルタイマ,計時処理用 --- */
	TCNT0 = 0;
	TCCR0A = BYTE_BIT_X( WGM01 );	/* CTC動作 */
	TCCR0B = ( BYTE_BIT_X( CS00 ) | BYTE_BIT_X( CS01 ));	/* f/64 */
	OCR0A = TIMER0;			/* 12.8MHz / 64 / 200 = 1000Hz */
	TIMSK0 = BYTE_BIT_X( OCIE0A );	/* A一致割り込み */

	/* --- Timer1 予約 --- */
	/* --- Timer2 計時処理用 --- */
	TCNT2 = 0;
	TCCR2A = BYTE_BIT_X( WGM21 );	/* CTC動作 */
	TCCR2B = BYTE_BIT_X( CS22 );	/* f/64 */
	OCR2A = TIMER2;			/* 12.8MHz / 64 / 200 = 1000Hz */
	TIMSK2 = BYTE_BIT_X( OCIE2A );	/* A一致割り込み */

	/* --- INT割り込み(許可本体はmain()) --- */
	EIFR = 0x00;			/* フラグクリア */
	EIMSK = EINT_DIS;		/* 一度割り込み禁止 */

	/* --- リセット要因調べる --- */
	sts = MCUSR;
	if( BYTE_BIT0_CHK( sts ) ){		/* 電源ONリセット */
		update_eventlog( EVNT_PWR_ON );
	}
	else if( BYTE_BIT1_CHK( sts ) ){	/* 外部リセット */
		update_eventlog( EVNT_EXT_RESET );
		rebootflg = on;
	}
	else if( BYTE_BIT2_CHK( sts ) ){	/* 電圧低下リセット */
		update_eventlog( EVNT_BOR_RESET );
		rebootflg = on;
	}
	else if( BYTE_BIT3_CHK( sts ) ){	/* WDTリセット */
		update_eventlog( EVNT_WDT_RESET );
		rebootflg = on;
	}
	MCUSR = 0;			/* リセット要因クリア */

	wdt_enable( WDT_TIMEOUT );	/* WDT有効 */
	_ei( );
}

/* ---------- その他 ---------- */

/**
*	チェック間隔を変更する
*	範囲は64,128,256,512,1024(sec)
*	間隔は最大1024秒
*	 in	なし
*	out	なし
*/
static void	change_chkinterval( void )
{
	int	val;

	val = cinterval;
	if( calmode == 1 ){		/* 短くする */
		val = val >> 1;		/* 1/2にする */
	}
	else if( calmode == 2 ){	/* 長くする */
		val <<= 1;		/* 倍にする */
		if( val > maxpoll ){
			val = maxpoll;
		}
	}
	if( val < CYCLE_MIN ){		/* 電源投入後最初とか */
		val = CYCLE_MIN;
	}
	change_calinterval( val );	/* インターバル更新 */
}

/**
*	時刻が補正されたときの処理
*	 in	なし
*	out	なし
*/
static void	update_calibseq( void )
{
	byte	flg;
	byte	mode;

	flg = 0;
	mode = adjmode & BYTE_MASK_U7;
	if( mode == NTPADJ_MODE ){	/* NTP要求による補正 */
		time_sts = TIME_ADJUSTED;
		sync_sts = SYNC_OK;
		change_chkinterval( );	/* チェック間隔更新 */
		ocal_time = world_time;
	}
	else if( mode == BCAST_MODE ){	/* ブロードキャストによる補正 */
		time_sts = TIME_ADJUSTED;
		sync_sts = SYNC_OK;
		update_callog( LOG_BCRX );
	}
	adjustseq = ADJUSTSEQ_NONE;	/* シーケンス終了 */
	if( inical == on ){		/* はじめての補正 */
		inical = off;
		obcast_time = world_time;
	}
}

/**
*	時刻(秒)が更新されたときの処理
*	 in	なし
*	out	なし
*/
static void	update_timeseq( void )
{
	time_t	remcal, rembc;
	word	ms;
	byte	flg, sts, wdbit;
	char	buf[8];

	if( nmea_en == on ){
		/*                01234567890123456789012345678901234567890 */
		/* ----- NMEA出力 $GPRMC,hhmmss.mmm,A,,,,,,,DDMMYY,,,N*SS ----- */
		_di( );
		ms = utc_msec;
		_ei( );
		uctoaz( utc_time.tm_hour, buf );	/* 時 */
		strncpy( nmea_data + 7, buf + 1, 2 );
		uctoaz( utc_time.tm_min, buf );		/* 分 */
		strncpy( nmea_data + 9, buf + 1, 2 );
		uctoaz( utc_time.tm_sec, buf );		/* 秒 */
		strncpy( nmea_data + 11, buf + 1, 2 );
		ustoaz( ms, buf );			/* ms */
		strncpy( nmea_data + 14, buf + 2, 3 );
		nmea_data[18] = ( synchronized == on )? 'A': 'V';	/* 時刻有効 */
		uctoaz( utc_time.tm_mday, buf );	/* 日 */
		strncpy( nmea_data + 26, buf + 1, 2 );
		uctoaz( utc_time.tm_mon + 1, buf );	/* 月 */
		strncpy( nmea_data + 28, buf + 1, 2 );
		if( utc_time.tm_year >= 100 ){		/* 2000～ */
			ustoaz( utc_time.tm_year - 100, buf );	/* 年 */
		}
		else{
			ustoaz( utc_time.tm_year, buf );
		}
		strncpy( nmea_data + 30, buf + 3, 2 );
		nmea_checksum( nmea_data, buf );	/* サム */
		strncpy( nmea_data + 37, buf, 2 );
		sio_setstr( nmea_data );
	}

	/* ---------- プロトコル処理 ---------- */
	arp_timer( );		/* ARPキャッシュ */
	resolve_timer( );	/* DNS,NBTキャッシュ */
	dhcp_sequense( );	/* DHCP処理 */

	/* ---------- 周期判定・処理 ---------- */
	/* ----- 時刻配信周期判定 ----- */
	rembc = 0U;
	if( binterval != 0U ){	/* 時刻配信有効 */
		if( synchronized == on ){	/* 時刻同期中は配信する */
			rembc = calc_bcastremtime( );
			if( rembc <= 0L ){
				sts = ntp_broadcast( );	/* 時刻配信 */
				if( sts != EVNT_NONE ){
					update_eventlog( sts );
				}
				obcast_time = world_time;
				update_callog( LOG_BCAST );	/* 配信ログ */
			}
		}
		else{		/* 時刻が合ってないときは配信しない */
			obcast_time = world_time;
		}
	}
	else{	/* 無効のときは配信しない */
		obcast_time = world_time;
	}
	/* ----- 時刻要求周期判定 ---- */
	if( adjmode == ADJ_NTP ){
		if( adjustseq == ADJUSTSEQ_NONE ){
			remcal = calc_calremtime( );			/* 補正残り時間算出 */
			if(( remcal <= 0L ) && ( myipaddr != 0UL )){	/* アドレス解決中は要求しない */
				adjustseq = 1;
			}
		}
	}

	/* ---------- タイマ処理 ---------- */
	if( ext7segen == on ){
		if(( on_time.wday == 0 ) && ( off_time.wday == 0 )){
			tim7segen = on;	/* タイマ無効で7セグメント許可時は常時点灯 */
		}
		else{
			wdbit = BYTE_BIT_X( world_time.tm_wday );
			if( on_time.wday & wdbit ){	/* ONタイマ有効曜日 */
				if(( on_time.hour == world_time.tm_hour ) && ( on_time.min == world_time.tm_min ) && ( on_time.sec == world_time.tm_sec )){
					tim7segen = on;
				}
			}
			if( off_time.wday & wdbit ){	/* OFFタイマ有効曜日 */
				if(( off_time.hour == world_time.tm_hour ) && ( off_time.min == world_time.tm_min ) && ( off_time.sec == world_time.tm_sec )){
					tim7segen = off;
				}
			}
		}
	}
	else{
		tim7segen = off;
	}

	/* ---------- 稼働時間 ---------- */
	opecnt++;
	if( opecnt == 60 ){		/* １分(動作時間用) */
		opecnt = 0;
		opetime++;
	}

	/* ---------- 7SEG表示 ---------- */
	if( tim7segen == on ){
		disp7seg( &world_time );	/* 7セグ出力 */
	}
	else{
		dispoff7seg( );		/* 7セグ消灯 */
	}
	/* ---------- 画面表示 ---------- */
	if( disppage == 0 ){
		disp_nowtime( );	/* 日時表示 */
	}
	else if( disppage == 4 ){
		dhcpdisp( );		/* DHCP更新残り時間表示 */
	}
	else if( disppage == 5 ){
		flg = 0;
		if( adjmode == GPSADJ_MODE ){		/* GPS */
			flg = 1;
		}
		else if( adjmode & BCAST_MODE ){	/* 配信による補正 */
			flg = 1;
		}
		else if( adjustseq != ADJUSTSEQ_NONE ){	/* 時刻補正要求中とか */
			flg = 1;
		}
		if( flg == 1 ){
			disp_notime( 0 );		/* カウント無効表示 */
		}
		else{
			disp_remtime( 0, remcal );	/* 校正残り時間表示 */
		}
		if( binterval != 0U ){		/* 配信有効 */
			if( synchronized == on ){
				disp_remtime( 1, rembc );	/* 配信残り時間表示 */
			}
			else{
				disp_notime( 1 );	/* カウント無効表示 */
			}
		}
		else{
			disp_notime( 1 );	/* カウント無効表示 */
		}
	}
	else if( disppage == 6 ){
		disp_opetime( );	/* 動作時間表示 */
	}
}

/**
*	プロトコルスタック処理
*	 in	なし
*	out	なし
*/
static void	stackseq( void )
{
	byte	flg, sts;

	flg = ip_input( );		/* ポーリング用 */
	if( flg == RCV_ICMP ){		/* ICMP受信 */
		sts = icmp_input( );
		enc_setnextpoint( );
	}
	else if( flg == RCV_UDP ){	/* UDP受信 */
		sts = udp_input( );
		enc_setnextpoint( );
	}
	else if( flg == RCV_TCP ){	/* TCP受信 */
		sts = tcp_input( );
		enc_setnextpoint( );
	}
	else{				/* その他 */
		sts = EVNT_NONE;
	}


	if( sts != EVNT_NONE ){		/* 通信でイベント(エラー)発生 */
		if(( adjmode & BYTE_MASK_U7 ) == NTPADJ_MODE ){
			if(( sts == EVNT_ARP_TIMEOUT ) && ( adjustseq != 0 )){
				ocal_time = world_time;
				rslv_req = 0;
				adjustseq = 0;	/* NTP要求中止 */
			}
			else if( sts == EVNT_NTP_UNSYNC ){		/* サーバがエラー状態のとき */
				change_calinterval( CYCLE_MIN );	/* インターバルリセット */
			}
		}
		update_eventlog( sts );
	}
	/* ----- DHCP開始処理 ----- */
	if( dhcp_mode == DHCP_ABORT ){		/* DHCPなし(IPアドレス固定) */
		dhcpcnten = off;
	}
	else if( dhcp_mode == DHCP_INIT ){	/* DHCP再構成 */
		dhcpcnten = on;
		odcvr_time = world_time;
		sts = dhcp_discover( );
	}
	else if( dhcp_mode == DHCP_INITREBOOT ){	/* リセットなどの時は、前回と同じIPアドレスを優先的に割り当ててもらう */
		dhcpcnten = on;
		odcvr_time = world_time;
		sts = dhcp_request( DHCP_REBOOTING );
	}
}

/**
*	その他処理(時間重要でない)
*	 in	なし
*	out	なし
*/
static void	otherseq( void )
{
	byte	sts;
	swbool	secflg;		/* 秒が更新されたか */
	swbool	calflg;		/* 秒が更新されたか */

	/* ----- 更新状態取得 ----- */
	_di( );
	secflg = timeflg;
	timeflg = off;
	calflg = cal_updated;
	cal_updated = off;
	_ei( );
	/* ----- 秒が更新された ----- */
	if( secflg == on ){
		update_time( );		/* 時刻情報更新(UTC,JST) */
		update_timeseq( );
	}
	/* ----- 時刻補正した ----- */
	if( calflg == on ){
		update_calibseq( );
	}
	/* ----- 名前解決処理 ----- */
	if( rslv_req != 0 ){	/* 解決中 */
		sts = resolve_seq( );
		if( sts != EVNT_NONE ){		/* 通信でイベント(エラー)発生 */
			if(( sts >= EVNT_NBT_RCVERROR ) && ( sts <= EVNT_DNS_TIMEOUT4 )){
				ocal_time = world_time;
				nextntpsrv( );	/* 次のサーバに移る */
			}
			rslv_req = 0;
			adjustseq = ADJUSTSEQ_NONE;	/* NTP要求中止 */
			update_eventlog( sts );
		}
	}
	else{			/* 動作なし */
		rslv_cnt = 0;
		rslv_end = off;
	}
	/* ----- NTP要求処理 ----- */
	if(( adjmode & BYTE_MASK_U7 ) == NTPADJ_MODE ){
		sts = ntp_reqseq( );
		if( sts != EVNT_NONE ){		/* 通信でイベント(エラー)発生 */
			rslv_req = 0;
			adjustseq = ADJUSTSEQ_NONE;	/* NTP要求中止 */
			change_calinterval( CYCLE_MIN );	/* インターバルリセット */
			update_eventlog( sts );
		}
	}
	/* ----- タイムアウトチェック ----- */
	if( secflg == on ){	/* 秒単位チェック */
		if( sock_tbl[0].status != 0 ){	/* ソケット0監視 */
			sock_tbl[0].timer--;
			if( sock_tbl[0].timer == 0 ){
				tcp_resetsocket( 0 );
			}
		}
		if( sock_tbl[1].status != 0 ){	/* ソケット1監視 */
			sock_tbl[1].timer--;
			if( sock_tbl[1].timer == 0 ){
				tcp_resetsocket( 1 );
			}
		}
	}
	/* ----- 画面書き直し ----- */
	if( redrawflg == on ){
		redraw( );
	}
	/* ----- フラグ処理 ----- */
	redrawflg = off;
}

/**
*	キー入力処理
*	 in	なし
*	out	なし
*/
static void	key_inseq( void )
{
	byte	key, dsp, sts;
	swbool	cng;

	key = key_sense( );
	if( key == NO_KEY ){	/* キー変化なし */
		return;
	}
	ERRRST( );		/* 入力ありでエラーLED消灯 */
	WORD_BIT15_OFF( opests );	/* ERROR OFF */
	cng = off;
	dsp = disppage;
	if( lcden == on ){	/* 液晶有効時 */
		if( key == LCDDI_KEY ){
			lcd_cls( );
			disp_message1( 5 );
			lcden = off;
			LCD_OFF( );	/* バックライト消す */
		}
		else if( key == ENTER_KEY ){	/* パラメータセット */
			if( pmin == DISPMIN ){	/* 通常画面からのみ行ける */
				parameter( );
				dsp = pmin = DISPMIN;
				pmax = DISPMAX;
				cng = on;
			}
		}
		else if( key == UP_KEY ){	/* 上キー */
			dsp++;
			if( dsp > pmax ){
				dsp = pmin;
			}
			cng = on;
		}
		else if( key == DOWN_KEY ){	/* 下キー */
			if( dsp == pmin ){
				dsp = pmax;
			}
			else{
				dsp--;
			}
			cng = on;
		}
		else if( key == RIGHT_KEY ){	/* 右キー */
			if( pmin == DISPMIN ){	/* 通常画面→イベントログ */
				dsp = pmin = EVNTLOGMIN;
				pmax = EVNTLOGMAX;
			}
			else if( pmin == EVNTLOGMIN ){
				dsp = pmin = CALLOGMIN;	/* イベントログ→補正ログ */
				pmax = CALLOGMAX;
			}
			else{			/* 補正ログ→通常画面 */
				dsp = pmin = DISPMIN;
				pmax = DISPMAX;
			}
			cng = on;
		}
		else if( key == BCAST_KEY ){	/* 時刻配信キー(DOWN+ENTER) */
			if( synchronized == on ){	/* 時刻同期中は配信する */
				sts = ntp_broadcast( );	/* 時刻配信 */
				if( sts != EVNT_NONE ){
					update_eventlog( sts );
				}
				update_callog( LOG_BCAST );	/* 配信ログ.配信周期は変更しない */
			}
		}
		else if( key == LOGCLR_KEY ){	/* ログクリアキー(RIGHT+ENTER) */
			if( pmin == EVNTLOGMIN ){
				clear_eventlog( );
				dsp = EVNTLOGMIN;
			}
			else if( pmin == CALLOGMIN ){
				clear_callog( );
				dsp = CALLOGMIN;
			}
			cng = on;
		}
	}
	if( key == LCDEN_KEY ){		/* LCD有効 */
		lcd_init( );
		cng = on;
		dsp = pmin = DISPMIN;
		pmax = DISPMAX;
		lcden = on;
		LCD_ON( );		/* バックライト点灯 */
	}
	else if( key == TIMEREQ_KEY ){	/* 手動時刻要求 */
		if(( adjmode & BYTE_MASK_U7 ) == NTPADJ_MODE ){
			if(( adjustseq == 0 ) && ( myipaddr != 0UL )){
				adjustseq = 1;
			}
		}
	}
	if( cng == on ){		/* 画面変更 */
		disppage = dsp;
		if( pmin == EVNTLOGMIN ){
			disp_eventlog( dsp - EVNTLOGMIN );	/* イベントログ表示 */
		}
		else if( pmin == CALLOGMIN ){
			disp_callog( dsp - CALLOGMIN );		/* 補正ログ表示 */
		}
		else{
			redraw( );	/* 画面書き直し */
		}
	}
}

/**
*	同期が外れたときの処理
*	 in	なし
*	out	なし
*/
void	unsync_seq( void )
{
	if( sync_sts == SYNC_OK ){	/* 同期外れた */
		gps_uscnt = gps_ustimeout;	/* カウントダウン式 */
		sync_sts = SYNC_COUNT;
	}
}

/**
*	設定情報初期化
*	 in	なし
*	out	なし
*/
void	eep_initvalue( void )
{
	char	buf[32];

	lcd_cls( );
	disp_message1( 2 );	/* INITIALIZING... */

	EEP_READYWAIT( );
	eeprom_write_word( EEP_BAUD, (word)BAUD9600 );		/* ボーレート */
	EEP_READYWAIT( );
	eeprom_write_word( EEP_ARPREQTOUT, 2000U );		/* ARP要求タイムアウト 2秒 */
	EEP_READYWAIT( );
	eeprom_write_word( EEP_HTTP_PORT, 80U );		/* HTTPポート 80 */
	EEP_READYWAIT( );
	eeprom_write_word( EEP_DHCP, 0x800A );			/* DHCP有効,10秒 */
	EEP_READYWAIT( );
	eeprom_write_dword((uint32_t *)EEP_IPADDR, IPADDR );	/* IPアドレス */
	EEP_READYWAIT( );
	eeprom_write_dword((uint32_t *)EEP_NETMASK, NETMASK );	/* ネットマスク */
	EEP_READYWAIT( );
	eeprom_write_dword((uint32_t *)EEP_GATEWAY, GATEWAY );	/* デフォルトゲートウェイ */
	EEP_READYWAIT( );
	eeprom_write_dword((uint32_t *)EEP_DNSP, DNSPSRV );	/* DNSサーバ */
	strcpy_P( buf, (prog_char *)nbndflt );
	EEP_READYWAIT( );
	eeprom_write_block( buf, (byte *)EEP_HOST_NAME, 16 );	/* NetBIOS名 */

	EEP_READYWAIT( );
	strcpy_P( buf, ntp0 );
	eeprom_write_block( buf, (byte *)EEP_NTPSRV1, 32 );	/* NTPサーバ1 */
	EEP_READYWAIT( );
	strcpy_P( buf, ntp1 );
	eeprom_write_block( buf, (byte *)EEP_NTPSRV2, 32 );	/* NTPサーバ2 */
	EEP_READYWAIT( );
	strcpy_P( buf, ntp2 );
	eeprom_write_block( buf, (byte *)EEP_NTPSRV3, 32 );	/* NTPサーバ3 */
	EEP_READYWAIT( );
	strcpy_P( buf, ntp3 );
	eeprom_write_block( buf, (byte *)EEP_NTPSRV4, 32 );	/* NTPサーバ4 */
	EEP_READYWAIT( );
	eeprom_write_dword((uint32_t *)EEP_NTPBCAST, NTPBC );	/* NTPブロードキャスト */
	EEP_READYWAIT( );
	eeprom_write_word( EEP_NTPBITBL, NTPBCINTBL );		/* ブロードキャスト周期 */
	EEP_READYWAIT( );
	eeprom_write_word( EEP_NTPTOUT, NTP_TIMEOUT );		/* NTPタイムアウト */
	EEP_READYWAIT( );
	eeprom_write_word( EEP_ADJWIDTH, ADJUST_WIDTH );	/* 時刻補正許可幅 */
	EEP_READYWAIT( );
	eeprom_write_word( EEP_NTPFLAG, 0x0A00 );		/* MAXPOLL=1024sec */
	EEP_READYWAIT( );
	eeprom_write_word( EEP_TIMEZONE, 0x0000 );		/* JST */
	EEP_READYWAIT( );
	eeprom_write_word( EEP_NTPSLEW, 128U );			/* NTP SLEW時刻補正判定値(128ms) */
	EEP_READYWAIT( );
	eeprom_write_word( EEP_NMEA, NMEA_GPRMC );		/* NMEA:GPRMC */
	EEP_READYWAIT( );
	eeprom_write_word( EEP_FLG, 0x0000 );			/* 7SEG DISABLE, PPS FALL, NO ADJUST */
	EEP_READYWAIT( );
	eeprom_write_word( EEP_GPSNDTOUT, NODATA_COUNT );	/* 1分 */
	EEP_READYWAIT( );
	eeprom_write_word( EEP_GPSUSTOUT, UNSYNC_COUNT );	/* 15分 */
	EEP_READYWAIT( );
	eeprom_write_dword( EEP_TIMON, 0UL );			/* タイマON */
	EEP_READYWAIT( );
	eeprom_write_dword( EEP_TIMOFF, 0UL );			/* タイマOFF */
	EEP_READYWAIT( );
	eeprom_write_word( EEP_ADJMODE, ADJ_NTP );		/* NTP調整 */
	EEP_READYWAIT( );

	eeprom_write_word( EEP_INIFLG, 0xC3A5 );		/* 初期化済みフラグ */
}

/**
*	EEPROM初期化・初期読み出し等
*	 in	なし
*	out	なし
*/
void	eep_initread( void )
{
	byte	k;
	uint16_t	wtmp;
	uint32_t	dwtmp;
	ui_t	tmp;

	/* ---------- MAC ADDRESS ---------- */
	EEP_READYWAIT( );
	eeprom_read_block( mac_address, EEP_MACADDRESS, PHYSICALADDR_SIZE );
	if( mac_address[0] == BD_MAX ){		/* MACアドレス書かれてない */
		memcpy_P( mac_address, testmac, PHYSICALADDR_SIZE );
	}

	/* ---------- 初期化 ---------- */
	k = _invert( PINB ) & BYTE_MASK_L4;	/* キー入力(下位4bit) */
	if( k == ( UPKEY_BIT + DOWNKEY_BIT + RIGHTKEY_BIT )){	/* 初期化(+無限ループ) */
		eep_initvalue( );
		lcd_cls( );
		disp_message1( 3 );
		disp_message2( 2 );
		_forever{
			wdt_reset( );	/* WDTの更新 */
		}
	}

	/* ---------- 読み込み ---------- */
	EEP_READYWAIT( );
	if( eeprom_read_word( EEP_INIFLG ) != 0xC3A5 ){	/* 値が入っていない */
		eep_initvalue( );
	}
	/* --- 時刻調整モード --- */
	adjmode = eeprom_read_word( EEP_ADJMODE );	/* MODE */
	if( adjmode == GPSADJ_MODE ){	/* GPS */
		GPS_SEL( );
		time_sts = TIME_NOINPUT;
	}
	else{				/* NTP */
		NTP_SEL( );
		WORD_BIT00_ON( opemode );		/* NTP ON */
		if( adjmode & NMEAOUT_MODE ){
			BYTE_BIT2_ON( PORTD );		/* PPS=H */
			BYTE_BIT2_ON( DDRD );		/* PPS=OUT */
			WORD_BIT13_ON( opemode );	/* NMEA OUT */
			nmea_en = on;
		}
		if( adjmode & BCAST_MODE ){	/* ブロードキャスト補正 */
			BCAST_SEL( );
		}
	}
	/* --- ARP要求タイムアウト --- */
	EEP_READYWAIT( );
	arp_reqtimeout = eeprom_read_word( EEP_ARPREQTOUT );
	if(( arp_reqtimeout == WORD_DATA_ZERO ) || ( arp_reqtimeout == WORD_DATA_MAX )){	/* 設定されていない */
		arp_reqtimeout = 2000U;
	}
	/* --- HTTP PORT --- */
	EEP_READYWAIT( );
	http_port = eeprom_read_word( EEP_HTTP_PORT );
	if(( http_port == WORD_DATA_ZERO ) || ( http_port == WORD_DATA_MAX )){	/* 設定されていない */
		http_port = 80U;
	}
	/* --- DHCP --- */
	EEP_READYWAIT( );
	wtmp = eeprom_read_word( EEP_DHCP );
	dinterval = wtmp & WORD_MASK_L15;
	if(( wtmp == WORD_DATA_ZERO ) || ( wtmp == WORD_DATA_MAX )){	/* 値無効 */
		dhcp_mode = DHCP_INIT;
		dinterval = 60U;
		WORD_BIT11_ON( opemode );	/* DHCP ON */
	}
	else if( WORD_BIT15_CHK( wtmp ) ){	/* DHCP有効 */
		dhcp_mode = ( rebootflg == on )? DHCP_INITREBOOT: DHCP_INIT;
		WORD_BIT11_ON( opemode );	/* DHCP ON */
	}
	else{
		dhcp_mode = DHCP_ABORT;
	}
	/* --- IP,NETMASK,GATEWAY, DNS --- */
	if( dhcp_mode == DHCP_ABORT ){	/* パラメータ固定 */
		myipaddr = eep_getipaddr( EEP_IPADDR, IPADDR );		/* IPアドレス設定 */
		netmask = eep_getipaddr( EEP_NETMASK, NETMASK );	/* ネットマスク設定 */
		gateway = eep_getipaddr( EEP_GATEWAY, GATEWAY );	/* デフォルトゲートウェイ設定 */
		dns_server = eep_getipaddr( EEP_DNSP, DNSPSRV );	/* DNSサーバ */
	}
	/* --- NetBIOS NAME --- */
	eep_getstring16( EEP_HOST_NAME, nbns_name, (prog_char *)&nbndflt );
	/* --- BAUDRATE --- */
	baudrate = (byte)( eeprom_read_word( EEP_BAUD ) & WORD_MASK_L08 );
	if( baudrate > BPS57600 ){
		baudrate = BPS9600;
	}
	/* --- GPS(NMEA&MODULE) --- */
	tmp.data = eeprom_read_word( EEP_NMEA );
	nmeamode = tmp.bytes.lo;		/* 下位:NMEA */
	if( nmeamode > NMEA_GPZDA ){
		nmeamode = NMEA_GPRMC;
	}
	if( adjmode == GPSADJ_MODE ){	/* GPSのときだけ */
		opemode |= ( 1U << ( nmeamode + 5 ));	/* ver2.22.00 */
		gpstype = tmp.bytes.hi;		/* 上位:GPSモジュール */
		if( gpstype > GPS_UNIVGPS ){
			gpstype = GPS_MTK3339;
		}
		opemode |= ( 1U << ( gpstype + 2 ));	/* ver2.22.00 */
	}
	/* --- データ非受信タイムアウト --- */
	wtmp = eeprom_read_word( EEP_GPSNDTOUT );
	if(( wtmp == WORD_DATA_ZERO ) || ( wtmp == WORD_DATA_MAX )){	/* 値無効 */
		wtmp = NODATA_COUNT;
	}
	gps_ndtimeout = wtmp;
	/* --- 同期状態タイムアウト --- */
	wtmp = eeprom_read_word( EEP_GPSUSTOUT );
	if(( wtmp == WORD_DATA_ZERO ) || ( wtmp == WORD_DATA_MAX )){	/* 値無効 */
		wtmp = UNSYNC_COUNT;
	}
	gps_ustimeout = wtmp;
	/* --- FLAG --- */
	wtmp = eeprom_read_word( EEP_FLG );
	if( wtmp == WORD_DATA_MAX ){
		ext7segen = off;
		ppsedge = on;
		nmea_adj = off;
	}
	else{
		ext7segen = WORD_BIT00_CHK( wtmp )? on: off;	/* bit0 7SEGEN */
		ppsedge = WORD_BIT08_CHK( wtmp )? on: off;	/* bit8 PPSEDGE */
		nmea_adj = WORD_BIT09_CHK( wtmp )? on: off;	/* bit9 NMEA ADJUST */
	}
	/* --- NTP SERVER --- */
	eep_getstring32( EEP_NTPSRV1, ntpsrv1, (prog_char *)&ntp0 );
	eep_getstring32( EEP_NTPSRV2, ntpsrv2, (prog_char *)&ntp1 );
	eep_getstring32( EEP_NTPSRV3, ntpsrv3, (prog_char *)&ntp2 );
	eep_getstring32( EEP_NTPSRV4, ntpsrv4, (prog_char *)&ntp3 );
	/* --- NTP BROADCAST --- */
	ntpbcipadr = eep_getipaddr( EEP_NTPBCAST, NTPBC );	/* NTPブロードキャスト */
	EEP_READYWAIT( );
	binterval = eeprom_read_word( EEP_NTPBITBL );
	if( binterval == WORD_DATA_MAX ){
		binterval = NTPBCINTBL;
	}
	if( binterval ){			/* ver2.22.00 */
		WORD_BIT01_ON( opemode );	/* BROADCAST CAL */
	}
	/* --- NTP TIMEOUT --- */
	EEP_READYWAIT( );
	ntptout = eeprom_read_word( EEP_NTPTOUT );
	if(( ntptout == WORD_DATA_ZERO ) || ( ntptout == WORD_DATA_MAX )){	/* 設定されていない */
		ntptout = NTP_TIMEOUT;
	}
	/* --- 時刻補正幅 --- */
	EEP_READYWAIT( );
	timewidth = eeprom_read_word( EEP_ADJWIDTH );
	if( timewidth == WORD_DATA_MAX ){	/* 設定されていない */
		timewidth = ADJUST_WIDTH;
	}
	/* --- NTPフラグ処理 --- */
	EEP_READYWAIT( );
	tmp.data = eeprom_read_word( EEP_NTPFLAG );
	/* --- ポーリング間隔(NTPフラグの上位8bit) --- */
	if(( tmp.bytes.hi != 0xFF ) && ( tmp.bytes.hi <= 14 )){	/* 設定されている */
		maxpoll = ( 1U << tmp.bytes.hi );
	}
	/* --- SLEW判定値 --- */
	EEP_READYWAIT( );
	wtmp = eeprom_read_word( EEP_NTPSLEW );
	if( wtmp == WORD_DATA_MAX ){		/* 設定されていない */
		slew_width = 128;
	}
	else{
		slew_width = (int)wtmp;
	}
	/* --- タイムゾーン --- */
	EEP_READYWAIT( );
	timezone = (byte)( eeprom_read_word( EEP_TIMEZONE ) & WORD_MASK_L08 );
	if( timezone == BYTE_DATA_MAX ){	/* 設定されていない */
		timezone = 0;	/* JST */
	}
	EEP_READYWAIT( );
	timeoffset = (long)pgm_read_dword( tzs + timezone );	/* 時間オフセット */
	/* --- TIMER --- */
	EEP_READYWAIT( );
	dwtmp = eeprom_read_dword( EEP_TIMON );		/* ONタイマ */
	if( dwtmp == LONG_DATA_MAX ){
		dwtmp = 0UL;
	}
	*((dword *)&on_time) = dwtmp;
	EEP_READYWAIT( );
	dwtmp = eeprom_read_dword( EEP_TIMOFF );	/* OFFタイマ */
	if( dwtmp == LONG_DATA_MAX ){
		dwtmp = 0UL;
	}
	*((dword *)&off_time) = dwtmp;
	tim7segen = ( ext7segen == on )? on: off;	/* 初期は許可具合による */
	/* --- その他 --- */
	EEP_READYWAIT( );
	tmp_ipaddr = eeprom_read_dword((uint32_t *)EEP_IPTMP );	/* 以前のIPアドレス復帰 */
}

/**
*	状態をチェックし出力
*	 in	なし
*	out	なし
*/
static void	statuscheck( void )
{
	extern byte	lists;			/* ver2.22.00 */

	/* --- 時刻同期状態 --- */
	if(( sync_sts == SYNC_OK ) || ( sync_sts == SYNC_COUNT )){	/* 時刻同期中(or 回復待ちカウント中) */
		synchronized = on;
		if( adjmode == GPSADJ_MODE ){
			lists = LI_READY;
			stratum = STRATUM_1;
		}
		TIME_SYNC( );
		WORD_BIT00_ON( opests );	/* SYNC ON */
	}
	else{
		if( sync_sts == SYNC_ERROR ){		/* GPS入力が無かった */
			sync_sts = SYNC_INI;
			update_eventlog( EVNT_RCV_ERROR );
		}
		else if( sync_sts == SYNC_TIMEUP ){	/* 非同期タイムアップ */
			sync_sts = SYNC_INI;
			update_eventlog( EVNT_SYNC_COUNTUP );
		}
		synchronized = off;
		lists = LI_ALARM;
		stratum = STRATUM_MAX;
		TIME_UNSYNC( );
		WORD_BIT00_OFF( opests );	/* SYNC OFF */
	}
	/* --- 時刻配信状態 --- */
	if( binterval != 0U ){			/* 時刻配信有効 */
		if( synchronized == on ){	/* 時刻同期してる */
			BCAST_EN( );
			WORD_BIT09_ON( opests );	/* BCAST ON */
		}
		else{				/* 時刻同期してない */
			BCAST_DIS( );
			WORD_BIT09_OFF( opests );	/* BCAST OFF */
		}
	}
	else{
		BCAST_DIS( );
		WORD_BIT09_OFF( opests );	/* BCAST OFF */
	}
	/* --- IPアドレス状態 --- */
	if(( dhcp_mode != DHCP_ABORT ) && ( myipaddr != 0UL )){	/* DHCP有効でIPアドレスが有効状態 */
		DHCP_EN( );
		WORD_BIT08_ON( opests );	/* DHCK ON */
	}
	else{	/* EXPIRE or FIX */
		DHCP_DIS( );
		WORD_BIT08_OFF( opests );	/* DHCP OFF */
	}
	/* --- リンク状態 --- */
	if( enc_getlinkstatus( ) == TRUE ){
		LAN_LINK( );
		WORD_BIT14_ON( opests );	/* LINK ON */
	}
	else{
		LAN_UNLINK( );
		WORD_BIT14_OFF( opests );	/*  */
	}
	/* --- NTP LI --- */
	WORD_BIT01_OFF( opests );	/* LI1 */
	WORD_BIT02_OFF( opests );	/* LI2 */
	opests |= ( lists >> 5 );	/* LI */	/* ver2.22.00 */
}

/**
*	メインループ前処理
*	 in	なし
*	out	なし
*/
void	main_sub( void )
{
	word	wt;
	byte	sts, flg;

	/* --- 7SEG初期化 --- */
	SPI_EN( );		/* 一度SPI有効 */
	dispoff7seg( );		/* 7セグ消灯 */

	/* --- EEPROM読み出し --- */
	SPI_DIS( );		/* EEPROM読み込みのためSPI無効 */
	lcd_init( );		/* for EEP初期化 */
	eep_initread( );	/* EEPROMより読み出し */
	SPI_EN( );		/* SPI有効 */

	/* ----- UART関係(EEPROMより読み出し後) ----- */
	flg = 0;
	if(( adjmode == GPSADJ_MODE ) || ( nmea_en == on )){
		/* --- UART設定 --- */
		UBRR0  = pgm_read_word( baudtbl + baudrate );	/* UART初期化 */
		UCSR0A = BYTE_BIT_X( U2X0 );	/* 倍速 */
		UCSR0C = B8S1PN;	/* 8bit,stop1,Pn */
		sts = UDR0;		/* 空読み(ステータスクリア) */
		if( nmea_en == on ){
			UCSR0B = BYTE_BIT_X( TXEN0 );	/* TxEN */
		}
		else{
			UCSR0B = ( BYTE_BIT_X( RXCIE0 ) | BYTE_BIT_X( RXEN0 ) | BYTE_BIT_X( TXEN0 ));	/* TxEN,RxEN,RxIEN */
		}
	}
	/* --- INT0エッジ設定 --- */
	if( nmea_en == off ){	/* NMEA出力時は1PPS出力になるので */
		if( ppsedge == on ){	/* 上昇端 */
			EICRA = BYTE_BIT_X( ISC01 ) | BYTE_BIT_X( ISC00 );
		}
		else{
			EICRA = BYTE_BIT_X( ISC01 );
		}
		EIMSK = EINT0_EN;	/* INT0割り込み許可 */
	}

	/* --- ENC28J60初期化 --- */
	ENC_RST_NEGATE( );	/* ENC一旦リセット解除(自己診断のため) */
	wait( WAIT1000US );	/* 1ms */
	if( enc_selftest( ) == 0 ){	/* 自己診断NG */
		enc_writephy( PHLCON, PHLCON_LACFG3 | PHLCON_LACFG1 | PHLCON_LBCFG3 | PHLCON_LBCFG1 | PHLCON_STRCH );
		lcd_cls( );		/* 表示残るので */
		disp_message1( 15 );	/* INIT ERR */
		disp_message2( 8 );
		ERROR( );		/* ERROR LED */
		WORD_BIT15_ON( opests );	/* ERROR ON */
		_forever{		/* ダメなときは、LED点滅する */
			wdt_reset( );	/* WDTの更新 */
		}
	}
	enc_init( );		/* ENC28J60初期化 */

	/* ----- タイトル表示 ----- */
	disp_message1( 0 );	/* タイトル表示 */
	disp_message2( 0 );
	lcd_printc( 8, 1, version );
	for( wt = getcount1ms( ); ( getcount1ms( ) - wt ) < 2500U; ){	/* 表示中(GPS処理はする) */
		wdt_reset( );	/* WDTの更新 */
		if( adjmode == GPSADJ_MODE ){	/* GPSモード */
			gps_process( );
		}
	}
	lcd_cls( );		/* 表示残るので */
	if( adjmode == GPSADJ_MODE ){
		if( gpstype == GPS_UNIVGPS ){
			disp_message1( 13 );	/* GPS初期表示 */
			disp_message2( 6 );
		}
		/* ----- MTK3339初期設定 ----- */
		else if( gpstype == GPS_MTK3339 ){
			disp_message1( 16 );	/* INITIAL */
			disp_message2( 9 );
			if( mtk_init( ) == EVNT_RCV_ERROR ){	/* MTK3339初期化(GPRMC,GPZDAだけにする) */
				update_eventlog( EVNT_MTK_INITERR );
				ERROR( );
				WORD_BIT15_ON( opests );	/* ERROR ON */
			}
		}
	}
}

/**
*	メイン
*	 in	なし
*	out	なし
*/
int	main( void )
{
	word	wt;

	/* ----- 初期化処理 ----- */
	_di( );
	init_internal( );	/* 内部初期化 */
	main_sub( );		/* 前処理 */
	rebootflg = off;	/* リブート処理終端 */

	/* ----- メインループ ----- */
	wt = getcount1ms( );
	_forever{
		wdt_reset( );		/* WDTの更新 */
		stackseq( );		/* プロトコル処理 */
		if( adjmode == GPSADJ_MODE ){	/* GPSモード */
			gps_process( );
		}
		otherseq( );		/* その他処理 */
		if(( getcount1ms( ) - wt ) >= 16U ){	/* 16msごとキーチェック */
			wt = getcount1ms( );
			key_check( );	/* キー入力チェック */
			key_inseq( );	/* キー入力処理 */
		}
		statuscheck( );		/* 状態出力 */
	}

	return	0;
}

/* end of avrntp.c */
