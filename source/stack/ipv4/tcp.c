/**
*	tcp.c
*	TCP層(OSI参照モデル第４層：トランスポート層)
*	Transmission Control Protocol:コネクション型通信プロトコル(RFC793)
*	Copyright (c)Junnichi Tomaru
*/
#include	"ipv4/ipv4.h"

/* ----- 外部関数 ----- */
byte	http_output( int sid );


/**
*	ソケットがテーブルに登録してあるか調べる
*	 in	なし
*	out	0～:見つかった(登録場所)
*		0<:登録されていない(登録したいところ-1)
*		-100:登録いっぱい
*/
static int	tcp_searchsocket( void )
{
	int	i, lp, ret;
	dword	addr;
	word	pport, dport;
	tsock_t	t;

	addr = pacinfo.partipaddr;
	pport = pacinfo.partport;
	dport = pacinfo.myport;
	lp = ( -1 );
	ret = ( -100 );
	for( i = 0; i < TCPSOCK_MAX; i++ ){
		t = sock_tbl[i];
		if(( t.status == LISTEN ) && ( lp == ( -1 ))){	/* 最初に見つかったLISTEN */
			lp = i;
			continue;
		}
		if( t.ip != addr ){	/* IPアドレス不一致 */
			continue;
		}
		if(( t.partport == pport ) && ( t.selfport == dport )){	/* ポート合致 */
			ret = i;
			break;
		}
	}
	if( i == TCPSOCK_MAX ){	/* 見つからない */
		if( lp < 0 ){	/* 未登録が無い */
			ret = ( -100 );
		}
		else{		/* 最初に見つかった未登録のところに入れる */
			ret = (-( lp + 1 ));
		}
	}

	return	ret;
}


/**
*	ソケットテーブルに登録する
*	 in	なし
*	out	なし
*/
static void	tcp_registsocket( int sid )
{
	sock_tbl[sid].ip = pacinfo.partipaddr;
	sock_tbl[sid].selfport = pacinfo.myport;
	sock_tbl[sid].partport = pacinfo.partport;
}


/**
*	LISTEN状態にする
*	 in	ソケットID
*	out	なし
*/
void	tcp_resetsocket( int sid )
{
	tsock_t	*t;
	char	*p;

	p = ( sid == 0 )? cgibuf1: cgibuf2;
	t = &sock_tbl[sid];
	t->status = LISTEN;
	t->ip = 0;
	t->selfport = 0;
	t->partport = 0;
	t->acknum = 0;
	memset( p, 0, CGIBUFSIZE );	/* sizeof使わない */
	httpen[sid] = cgien[sid] = off;
}


/**
*	接続要求受信処理
*	 in	ソケットID
*	out	0:正常 0以外:エラーあり
*/
static byte	tcp_synpacket( int sid )
{
	byte	ret;
	tsock_t	*t;

	if( pacinfo.myport != http_port ){
		return EVNT_NONE;	/* 処理しない */
	}
	tcp_registsocket( sid );	/* ソケットを登録 */
	t = &sock_tbl[sid];
	t->status = SYN_RCVD;		/* LISTEN -> SYN_RCVD */
	t->seqnum = make_rand( );
	t->acknum = pacinfo.seq + 1;
	t->timer = 60;
	ret = tcp_output(( SYN_FLAG | ACK_FLAG ), t, 0U );	/* 接続要求&ACK */
	if( ret != EVNT_NONE ){
		tcp_resetsocket( sid );	/* 失敗したらリセットし、次のSYNを待つ */
	}

	return	ret;
}


/**
*	データ内検索
*	 in	ソケットID
*	out	なし
*/
void	tcp_search( int sid )
{
	int	i;
	char	buf[8], *p;

	enc_rxseek( pacinfo.proto_body );	/* データ部に移動 */
	for( i = 0; i < pacinfo.proto_len; ){
		i += enc_readstr((byte *)buf, 5, '\n' );
		if( strcmp_P( buf, PSTR( "GET /" )) == 0 ){	/* GET～HTTP/の行取り出し */
			p = ( sid == 0 )? cgibuf1: cgibuf2;
			i += enc_readstr((byte *)p, CGIBUFSIZE-5, '\n' );/* パラメータコピー */
			cgien[sid] = CGI_GET;
		}
		else if( strncmp_P( buf, PSTR( "HEAD" ), 4 ) == 0 ){	/* ヘッダ取り出し */
			cgien[sid] = CGI_HEAD;
		}
		else if(( buf[0] == '\r' ) && ( buf[1] == '\n' )){	/* HTTPヘッダ終了のCRLF */
			if( i >= pacinfo.proto_len ){		/* データ最後のCRLF */
				httpen[sid] = on;
				break;
			}
		}
		else{			/* その他は読み飛ばし */
			while( i < pacinfo.proto_len ){
				i++;
				if( enc_readbuf( ) == '\n' ){
					break;
				}
			}
		}
	}
}


/**
*	ACK受信処理
*	 in	ソケットID
*	out	0:正常 1:エラーあり
*/
static byte	tcp_ackpacket( int sid )
{
	byte	ret, sts;
	tsock_t	*t;

	ret = EVNT_NONE;
	t = &sock_tbl[sid];
	sts = t->status;
	if( sts == SYN_RCVD ){		/* 接続要求のACK */
		t->status = ESTABLISHED;	/* 接続確立 */
	}
	else if( sts == ESTABLISHED ){	/* HTTP送信に対するACK */
		if( pacinfo.proto_len ){	/* バッファするデータなどがある */
			ret = tcp_output( ACK_FLAG, t, 0U );
			tcp_search( sid );
		}
		else{
			ret = tcp_output(( FIN_FLAG | ACK_FLAG ), t, 0U );
			t->status = FIN_WAIT_1;
		}
	}
	else if( sts == FIN_WAIT_1 ){	/* FINに対するACK */
		t->status = FIN_WAIT_2;
	}
	else if( sts == LAST_ACK ){	/* FINに対するACK */
		tcp_resetsocket( sid );
	}

	return	ret;
}


/**
*	切断要求受信処理
*	 in	ソケットID
*	out	0:正常 1:エラーあり
*/
static byte	tcp_finpacket( int sid )
{
	byte	ret, sts;
	tsock_t	*t;

	ret = 0;
	t = &sock_tbl[sid];
	sts = t->status;
	t->acknum = pacinfo.seq + 1;
	if( sts == ESTABLISHED ){	/* 接続中 */
		ret = tcp_output( ACK_FLAG, t, 0U );
		ret = tcp_output(( FIN_FLAG | ACK_FLAG ), t, 0U );
		t->status = LAST_ACK;
	}
	else if(( sts == FIN_WAIT_1 ) || ( sts == FIN_WAIT_2 )){	/*  */
		ret = tcp_output( ACK_FLAG, t, 0U );
		tcp_resetsocket( sid );
	}

	return	ret;
}


/**
*	通常
*	 in	ソケットID
*	out	0:正常 0以外:エラーあり
*/
static byte	tcp_normalpacket( int sid )
{
	byte	ret, sts;
	tsock_t	*t;

	ret = EVNT_NONE;
	if( pacinfo.proto_len == 0U ){	/* データ無いので無視 */
		return	EVNT_NONE;
	}
	t = &sock_tbl[sid];
	sts = t->status;
	if( sts == SYN_RCVD ){	/* PUSHと共にACKが来たと判断 */
		t->status = ESTABLISHED;	/* 接続確立 */
	}
	if( sts == ESTABLISHED ){
		ret = EVNT_NONE;
		t->acknum = pacinfo.seq + pacinfo.proto_len;
		if( t->selfport == http_port ){	/* WWW */
			ret = tcp_output( ACK_FLAG, t, 0U );/*  */
			tcp_search( sid );
			if( httpen[sid] == on ){
				ret = http_output( sid );
			}
		}
		else{	/* その他のポート宛は切断 */
			ret = tcp_output(( FIN_FLAG | ACK_FLAG ), t, 0U );
			t->status = FIN_WAIT_1;
		}
	}

	return	ret;
}


/**
*	TCP前処理
*	 in	なし
*	out	0:サム合わない 0以外:フラグ
*/
static byte	tcp_preprocess( void )
{
	byte	hdrlen, ret;
	word	pnt;
	tcp_t	rxtcp;

	pnt = ip_hdrlen + IP_TOP;	/* ヘッダ位置 */
	enc_readbuffer((byte *)&rxtcp, TCPHDR_SIZE );	/* ヘッダ読み込み */
	pacinfo.partport = cnvendian16( rxtcp.srcport );	/* 相手のポート番号 */
	pacinfo.myport = cnvendian16( rxtcp.destport );		/* 送信先(自分)のポート番号 */
	pacinfo.seq = cnvendian32( rxtcp.seq );
	hdrlen = ( rxtcp.offset >> 2 );		/* TCPヘッダ長((off>>4)*4) */
	pacinfo.proto_body = pnt + hdrlen;	/* TCPデータ先頭位置 */
	pacinfo.proto_len = pacinfo.datasize - hdrlen;	/* TCPデータ長 */

	pseudo_hdr.sipaddr = cnvendian32( pacinfo.partipaddr );	/* 送信元IPアドレス */
	pseudo_hdr.dipaddr = cnvendian32( pacinfo.myipaddr );	/* 宛先IPアドレス */
	pseudo_hdr.zero = 0;			/* パディング(0) */
	pseudo_hdr.protocol = IPPROTO_TCP;	/* プロトコル */
	pseudo_hdr.paclen = cnvendian16( pacinfo.datasize );	/* プロトコル長さ */
	if( tcpudp_sum( RX, pnt, pacinfo.datasize ) != 0U ){	/* チェックサム合わない */
		ret = 0;
	}
	else{
		ret = rxtcp.flag;
	}

	return	ret;
}

/**
*	リセット送信用
*	 in	なし
*	out	0:正常 0以外:エラーあり
*/
byte	tcp_sendreset( void )
{
	tsock_t	t;

	t.ip = pacinfo.partport;
	t.selfport = pacinfo.myport;	/* 自分のポート */
	t.partport = pacinfo.partport;	/* 相手のポート */
	t.seqnum = 0UL;			/* シーケンス番号 */
	t.acknum = pacinfo.seq + 1UL;	/* 受信確認番号 */

	return	tcp_output( RST_FLAG, &t, 0U );
}


/**
*	TCP入力処理
*	 in	なし
*	out	0:正常 0以外:エラーあり
*/
byte	tcp_input( void )
{
	byte	flg, ret;
	int	sid;

	ret = EVNT_NONE;
	flg = tcp_preprocess( );
	if( flg == 0 ){		/* サム合わない */
		return	EVNT_TCP_RXSUMERR;
	}
	sid = tcp_searchsocket( );
	if( sid == ( -100 )){		/* 登録いっぱい(処理しない) */
		ret = tcp_sendreset( );	/* RSTする */
	}
	else if( sid < 0 ){		/* 未登録あり */
		if( flg & SYN_FLAG ){
			ret = tcp_synpacket( (-sid) - 1 );
		}
	}
	else{
		if( flg & SYN_FLAG ){	/* 登録されているところにSYN来た */
			ret = tcp_sendreset( );	/* RSTする */
			tcp_resetsocket( sid );
		}
		else if( flg & RST_FLAG ){	/* リセット */
			ret = tcp_output( RST_FLAG, &sock_tbl[sid], 0U );	/* こちらも送る */
			tcp_resetsocket( sid );
		}
		else if( flg & FIN_FLAG ){	/* 切断要求 */
			ret = tcp_finpacket( sid );
		}
		else if( flg & PSH_FLAG ){	/* 処理要求(ACKと一緒にくるので、先に見る) */
			ret = tcp_normalpacket( sid );
		}
		else if( flg & ACK_FLAG ){	/* ACK */
			ret = tcp_ackpacket( sid );
		}
	}

	return	ret;
}


/**
*	TCPデータ送出ルーチン
*	 in	flags: 制御フラグ
*		  tsp: ソケットのポインタ
*		 size: 送信データのサイズ
*	out	0:正常終了　1:ARPタイムアウト
*/
byte	tcp_output( byte flags, tsock_t *tsp, word size )
{
	word	sum;
	byte	ret;

	/* データ部分は、あらかじめセットしておくこと */
	pacinfo.datasize = TCPHDR_SIZE + size;
	enc_txseek( TCP_TOP );		/* TCPヘッダ部移動 */
	enc_writebuf2( tsp->selfport );	/* 送信元ポート */
	enc_writebuf2( tsp->partport );	/* 宛先ポート */
	enc_writebuf4( tsp->seqnum );	/* シーケンス番号 */
	enc_writebuf4( tsp->acknum );	/* ACK番号 */
	enc_writebuf( 0x50 );		/* ヘッダ長さ(20バイト) */
	enc_writebuf( flags & BYTE_MASK_L6 );	/* フラグ */
	enc_writebuf2( TCP_WINDOWSIZE );/* ウィンドウサイズ */
	enc_writebuf4( 0UL );		/* チェックサム,緊急ポインタ */

	/* チェックサム計算 */
	pseudo_hdr.sipaddr = cnvendian32( myipaddr );
	pseudo_hdr.dipaddr = cnvendian32( tsp->ip );
	pseudo_hdr.zero = 0;
	pseudo_hdr.protocol = IPPROTO_TCP;
	pseudo_hdr.paclen = cnvendian16( pacinfo.datasize );
	sum = tcpudp_sum( TX, TCP_TOP, pacinfo.datasize );	/* チェックサム計算 */
	enc_txseek( TCP_SUM );		/* チェックサム位置 */
	enc_writebuf2( sum );

	ret = ip_output( IPPROTO_TCP );
	if( ret == EVNT_NONE ){		/* エラーなし */
		if( flags & ( SYN_FLAG | FIN_FLAG )){	/* SYN or FIN */
			tsp->seqnum++;
		}
		else if( size > 0U ){
			tsp->seqnum += size;
		}
	}

	return	ret;
}


/* end of tcp.c */
