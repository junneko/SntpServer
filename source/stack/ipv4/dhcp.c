/**
*	dhcp.c
*	DHCPクライアント処理(アプリケーション層:RFC1541)
*	Copyright (c)Junnichi Tomaru
*/
#include	"ipv4/ipv4.h"

/**
*	DHCP 発見パケット送信
*	 in	なし
*	out	0:正常　0以外:エラーあり
*/
byte	dhcp_discover( void )
{
	dhcp_mode = DHCP_DISCOVER;
	/* パケット情報セット */
	pacinfo.partipaddr = IP_BROADCAST;
	pacinfo.partport = UDP_BOOTPS;
	pacinfo.myport = UDP_BOOTPC;

	/* 各値初期化 */
	myipaddr = netmask = 0L;
	gateway = dns_server = 0L;
	tmp_netmask = tmp_gateway = 0L;
	tmp_server = tmp_dns = 0L;
	tmp_renewal = tmp_rebind = tmp_lease = 0L;
	lease_time = tmp_rebind = tmp_renewal = 0UL;
	dhcp_cnt = 0;

	dhcp_xid = make_rand( );
	enc_txseek( UDP_DATA );		/* UDPデータの先頭へ */
	enc_writebuf4( 0x01010600 );	/* ブート要求,ハードアドレス,ハードアドレス長,ホップカウント */
	enc_writebuf4( dhcp_xid );	/* トランザクションID */
	enc_writebuf4( 0x00008000 );	/* 秒数,フラグ(ブロードキャスト) */
	enc_fillwrite( 0, 16U );	/* ～ゲートウェイIPアドレス */
	enc_writebuffer( mac_address, PHYSICALADDR_SIZE );	/* 自分のMACアドレス */
	enc_fillwrite( 0, 202U );	/* 残り10個+サーバーホスト名,起動ファイル名 */
	enc_writebuf4( BOOTP_MAGICCOOKIE );	/* マジックコード */
	enc_writebuf2( BOOTP_MESSAGE );
	enc_writebuf( DHCP_DISCOVER );	/* 01 ディスカバー */
	enc_writebuf( DHCP_CLIANTID );	/* 61 クライアントID */
	enc_writebuf( DHCP_CLIANTIDLEN );
	enc_writebuf( 1 );		/* ハードウェアタイプ */
	enc_writebuffer( mac_address, PHYSICALADDR_SIZE );
	enc_writebuf( BOOTP_MSGSTOPPER );	/* ストッパー */
	enc_fillwrite( 0, 47U );	/* 残りを0で埋める */

	return	udp_output( DHCPMSG_SIZE );
}


/**
*	DHCP 要求パケット送信
*	 in	モード
*	out	0:正常　0以外:エラーあり
*/
byte	dhcp_request( byte mode )
{
	byte	cnt, len;
	word	flg;

	dhcp_mode = mode;
	pacinfo.partipaddr = ( mode != DHCP_RENEWING )? IP_BROADCAST: tmp_server;
	if( mode != DHCP_REQUEST ){	/* RENEWING,REBINDINGのとき */
		dhcp_xid = make_rand( );
	}
	len = (byte)strlen( nbns_name ) + 1;
	pacinfo.partport = UDP_BOOTPS;
	pacinfo.myport = UDP_BOOTPC;

	enc_txseek( UDP_DATA );		/* UDPデータの先頭へ */
	enc_writebuf4( 0x01010600 );	/* ブート要求,ハードアドレス,ハードアドレス長,ホップカウント */
	enc_writebuf4( dhcp_xid );	/* トランザクションID(REQUEST時は発見パケットと同じ) */
	enc_writebuf2( 0U );		/* 秒数 */
	flg = ( mode == DHCP_RENEWING )? WORD_DATA_ZERO: WORD_BIT_15;
	enc_writebuf2( flg );		/* フラグ(ユニキャスト:0000 ブロードキャスト:8000) */
	enc_writebuf4( myipaddr );	/* クライアントIPアドレス */
	enc_fillwrite( 0, 12U );	/* 割り当て～ゲートウェイIPアドレス */
	enc_writebuffer( mac_address, PHYSICALADDR_SIZE );	/* 自分のMACアドレス */
	enc_fillwrite( 0, 202U );	/* 残り10個+サーバーホスト名,起動ファイル名 */
	enc_writebuf4( BOOTP_MAGICCOOKIE );	/* マジックコード */
	enc_writebuf2( BOOTP_MESSAGE );
	enc_writebuf( DHCP_REQUEST );	/* 03 リクエスト */
	enc_writebuf( DHCP_HOSTNAME );	/* 12 ホスト名 */
	enc_writebuf( len );
	enc_writebuffer( (byte *)nbns_name, len );	/* \0まで書く */
	if( mode == DHCP_REQUEST ){
		enc_writebuf( DHCP_REQIPADDR );	/* 50 リクエストIPアドレス */
		enc_writebuf( DHCP_REQIPADDRLEN );
		enc_rxseek( pacinfo.proto_body + 16 );
		enc_writebuf4( enc_readbuf4( ) );	/* ユーザーIPアドレスを入れる */
		enc_writebuf( DHCP_SERVERID );	/* 54 サーバID */
		enc_writebuf( DHCP_SERVERIDLEN );
		enc_writebuf4( tmp_server );
		cnt = 25;
	}
	else if( mode == DHCP_REBOOTING ){
		enc_writebuf( DHCP_REQIPADDR );	/* 50 リクエストIPアドレス */
		enc_writebuf( DHCP_REQIPADDRLEN );
		enc_writebuf4( tmp_ipaddr );	/* ユーザーIPアドレスを入れる */
		cnt = 27;
	}
	else{		/* RENEWING,REBINDINGのとき */
		cnt = 33;
	}
	cnt -= len;	/* ホスト名分引く */
	enc_writebuf( DHCP_PRMREQLIST );	/* 55 パラメータリクエスト */
	enc_writebuf( DHCP_PRMREQLISTLEN );	/* 項目個数(可変) */
	enc_writebuf( DHCP_SUBNETMASK );	/* 01 ネットマスク */
	enc_writebuf( DHCP_ROUTER );		/* 03 ルータ */
	enc_writebuf( DHCP_DNSID );		/* 06 DNSサーバ */
	enc_writebuf( DHCP_LEASETIME );		/* 51 リース時間 */
	enc_writebuf( DHCP_RENEWALTIME );	/* 58 RENEWAL時間 */
	enc_writebuf( DHCP_REBINDTIME );	/* 59 REBIND時間 */
	enc_writebuf( DHCP_IPTTL );		/* 23 TTL初期値 */
	enc_writebuf( DHCP_ARPTIMEOUT );	/* 35 ARPタイムアウト */

	enc_writebuf( DHCP_CLIANTID );		/* 61 クライアントID */
	enc_writebuf( DHCP_CLIANTIDLEN );
	enc_writebuf( 1 );			/* ハードウェアタイプ */
	enc_writebuffer( mac_address, PHYSICALADDR_SIZE );	/* 自分のMACアドレス */
	enc_writebuf( BOOTP_MSGSTOPPER );	/* ストッパー */
	enc_fillwrite( 0, cnt );		/* 残りを0で埋める */

	return	udp_output( DHCPMSG_SIZE );
}


/**
*	DHCP 拒否パケット送信
*	 in	なし
*	out	0:正常　0以外:エラーあり
*/
byte	dhcp_decline( void )
{
	pacinfo.partipaddr = tmp_server;	/* DHCPサーバ宛 */
	pacinfo.partport = UDP_BOOTPS;
	pacinfo.myport = UDP_BOOTPC;

	enc_txseek( UDP_DATA );		/* UDPデータの先頭へ */
	enc_writebuf4( 0x01010600 );	/* ブート要求,ハードアドレス,ハードアドレス長,ホップカウント */
	dhcp_xid = make_rand( );
	enc_writebuf4( dhcp_xid );	/* トランザクションID */
	enc_writebuf2( 0U );		/* 秒数 */
	enc_writebuf2( 0x0000 );	/* フラグ(ユニキャスト) */
	enc_writebuf4( 0x00000000 );	/* クライアントIPアドレス */
	enc_fillwrite( 0, 12U );	/* 割り当て～ゲートウェイIPアドレス */
	enc_writebuffer( mac_address, PHYSICALADDR_SIZE );	/* 自分のMACアドレス */
	enc_fillwrite( 0, 202U );	/* 残り10個+サーバーホスト名,起動ファイル名 */
	enc_writebuf4( BOOTP_MAGICCOOKIE );	/* マジックコード */
	enc_writebuf2( BOOTP_MESSAGE );
	enc_writebuf( DHCP_DECLINE );	/* 04 拒否 */
	enc_writebuf( DHCP_REQIPADDR );	/* 50 リクエストIPアドレス */
	enc_writebuf( DHCP_REQIPADDRLEN );
	enc_writebuf4( myipaddr );	/* ユーザーIPアドレスを入れる */
	enc_writebuf( DHCP_SERVERID );	/* 54 サーバID */
	enc_writebuf( DHCP_SERVERIDLEN );
	enc_writebuf4( tmp_server );
	enc_writebuf( BOOTP_MSGSTOPPER );	/* ストッパー */
	enc_fillwrite( 0, 44U );	/* 残りを0で埋める */

	return	udp_output( DHCPMSG_SIZE );
}


/**
*	ベンダー仕様内の検索
*	 in	なし
*	out	TRUE:オプションOK FALSE:おかしいところがある(やりなおし)
*/
static bool	dhcp_searchoption( void )
{
	byte	d, e;
	bool	ret;
	dword	dw;

	enc_rxseek( pacinfo.proto_body + BOOTPMAIN_SIZE + 4 );	/* オプション先頭へ */
	ret = FALSE;
	_forever{
		d = enc_readbuf( );	/* コード */
		if( d == BOOTP_MSGSTOPPER ){	/* 終端 */
			ret = TRUE;
			break;
		}
		e = enc_readbuf( );	/* 長さ */
		if( d == DHCP_MESSAGETYPE ){	/* メッセージの種類 */
			if( e == DHCP_MESSAGETYPELEN ){
				dhcp_msgtype = enc_readbuf( );
			}
			else{
				break;
			}
		}
		else if( d == DHCP_SUBNETMASK ){	/* サブネットマスク */
			if( e == DHCP_SUBNETMASKLEN ){
				tmp_netmask = enc_readbuf4( );
			}
			else{
				break;
			}
		}
		else if( d == DHCP_ROUTER ){	/* ルータ */
			if( e >= DHCP_ROUTERLEN ){	/* 長さ */
				tmp_gateway = enc_readbuf4( );	/* 一番推奨を採用 */
				if( e > DHCP_ROUTERLEN ){	/* 最初の以外は読み飛ばし */
					enc_skip( e - DHCP_ROUTERLEN );
				}
			}
			else{
				break;
			}
		}
		else if( d == DHCP_SERVERID ){	/* DHCPサーバ */
			if( e >= DHCP_SERVERIDLEN ){
				tmp_server = enc_readbuf4( );	/* 一番推奨を採用 */
				if( e > DHCP_SERVERIDLEN ){	/* 最初の以外は読み飛ばし */
					enc_skip( e - DHCP_SERVERIDLEN );
				}
			}
			else{
				break;
			}
		}
		else if( d == DHCP_DNSID ){	/* DNSサーバ */
			if( e >= DHCP_DNSIDLEN ){
				tmp_dns = enc_readbuf4( );
				if( e > DHCP_DNSIDLEN ){	/* 最初の以外は読み飛ばし */
					enc_skip( e - DHCP_DNSIDLEN );
				}
			}
			else{
				break;
			}
		}
		else if( d == DHCP_LEASETIME ){	/* リース時間 */
			if( e == DHCP_LEASETIMELEN ){
				dw = enc_readbuf4( );
				tmp_lease = dw;	/* リース時間(EXPIRE) */
				if( tmp_rebind == 0UL ){
					tmp_rebind = (dword)( dw * 875L / 1000L );
					/* リース時間の87.5%でREBINDする(T2) */
				}
				if( tmp_renewal == 0UL ){
					tmp_renewal = dw >> 1;	/* 1/2 */
					/* リース時間の50%でRENEWALする(T1) */
				}
			}
		}
		else if( d == DHCP_RENEWALTIME ){	/* RENEWAL(T1) */
			if( e == DHCP_RENEWALTIMELEN ){
				tmp_renewal = enc_readbuf4( );	/* すでに設定されていても上書き */
			}
			else{
				break;
			}
		}
		else if( d == DHCP_REBINDTIME ){	/* REBIND(T2) */
			if( e == DHCP_REBINDTIMELEN ){
				tmp_rebind = enc_readbuf4( );	/* すでに設定されていても上書き */
			}
			else{
				break;
			}
		}
		else if( d == DHCP_IPTTL ){		/* IPのTTL初期値 */
			if( e == DHCP_IPTTLLEN ){	/*  */
				ip_ttl = enc_readbuf( );
			}
			else{
				enc_skip( e );
			}
		}
		else if( d == DHCP_ARPTIMEOUT ){	/* ARPタイムアウト */
			if( e == DHCP_ARPTIMEOUTLEN ){	/*  */
				arp_timeout = enc_readbuf4( );
			}
			else{
				break;
			}
		}
		else if( d == DHCP_IPTTL ){		/* IPのTTL初期値 */
			if( e == DHCP_IPTTLLEN ){	/*  */
				ip_ttl = enc_readbuf( );
			}
			else{
				enc_skip( e );
			}
		}
		else if( d == DHCP_ARPTIMEOUT ){	/* ARPタイムアウト */
			if( e == DHCP_ARPTIMEOUTLEN ){	/*  */
				arp_timeout = enc_readbuf4( );
			}
			else{
				break;
			}
		}
		else{	/* 関係ないのは読み飛ばし */
			enc_skip( e );
		}
	}

	return	ret;
}


/**
*	DHCP確定処理
*	 in	なし
*	out	なし
*/
static byte	dhcp_ackseq( void )
{
	word	wt;
	byte	sts;
	ether_t	tmp;	/* 退避用 */
	extern byte	disppage;

	dhcp_mode = DHCP_BOUND;
	enc_rxseek( pacinfo.proto_body + 16 );	/* ユーザIPアドレス位置 */
	myipaddr = enc_readbuf4( );
	eeprom_update_dword((uint32_t *)EEP_IPTMP, myipaddr );	/* 保存 */
	netmask = tmp_netmask;
	gateway = tmp_gateway;
	dns_server = tmp_dns;
	renewal_time = tmp_renewal;
	rebind_time = tmp_rebind;
	lease_time = tmp_lease;

	if( lease_time == LD_MAX ){	/* 無限リース */
		dhcpcnten = off;
	}
	tmp = pacinfo;			/* 上書きされるためバックアップ */
	arp_request( myipaddr );	/* Gratuitous ARP */
	/* ----- wait_arpreply( ) ARP要求に対する応答を待つ ----- */
	enc_setnextpoint( );		/* パケットを受け取れるようにするため */
	wt = getcount1ms( );
	_forever{			/* ARP応答待ち */
		wdt_reset( );		/* WDTの更新 */
		sts = ether_input( );
		if( sts == ETHER_RXIP ){	/* 何か来てしまったけど無視 */
			enc_setnextpoint( );
		}
		else if( sts == ETHER_COL ){	/* ぶつかった */
			sts = dhcp_decline( );	/* 拒否 */
			if( sts != EVNT_NONE ){
				break;
			}
			sts = dhcp_discover( );	/* やりなおし */
			break;
		}
		if(( getcount1ms( ) - wt ) >= 100U ){	/* タイマ切れ(正常) */
			if(( disppage == 1 ) || ( disppage == 2 )){/* ネットワーク表示画面 */
				redrawflg = on;
			}
			sts = EVNT_NONE;
			break;
		}
	}
	pacinfo = tmp;		/* 送信情報にもどす */

	return	sts;
}


/**
*	DHCP入力処理
*	 in	なし
*	out	0:正常　0以外:エラーあり
*/
byte	dhcp_input( void )
{
	byte	ret = EVNT_NONE;

	if(( dhcp_mode == DHCP_ABORT ) || ( dhcp_mode == DHCP_BOUND )){	/* 無効またはリース中 */
		return	EVNT_NONE;
	}
	if( dhcp_searchoption( ) == FALSE ){	/* オプション */
		return	dhcp_discover( );	/* やりなおし */
	}
	enc_rxseek( pacinfo.proto_body + 4 );
	if( dhcp_mode == DHCP_DISCOVER ){	/* DISCOVER中 */
		if( dhcp_msgtype == DHCP_OFFER ){	/* 提供パケット受信 */
			if( enc_readbuf4( ) == dhcp_xid ){	/* 同じ場合だけ採用 */
				ret = dhcp_request( DHCP_REQUEST );
			}
			else{
				ret = EVNT_DHCP_RCVERROR;
			}
		}
		else{
			ret = EVNT_DHCP_RCVERROR;
		}
	}
	else{	/* REQUEST中 */
		if( dhcp_msgtype == DHCP_PACK ){	/* 確認肯定応答 */
			if( enc_readbuf4( ) == dhcp_xid ){	/* 同じ場合だけ採用 */
				ret = dhcp_ackseq( );
			}
			else{
				ret = EVNT_DHCP_RCVERROR;
			}
		}
		else if( dhcp_msgtype == DHCP_PNAK ){	/* 確認否定応答 */
			ret = EVNT_DHCP_NAK;
			if( enc_readbuf4( ) == dhcp_xid ){	/* 同じ場合だけ採用 */
				ret = dhcp_discover( );	/* やりなおし */
			}
			else{
				ret = EVNT_DHCP_RCVERROR;
			}
		}
		else{
			ret = EVNT_DHCP_RCVERROR;
		}
	}

	return	ret;
}


/**
*	リース時間カウント・再申請
*	 in	なし
*	out	0:正常終了　0以外:エラーあり
*/
byte	dhcp_sequense( void )
{
	extern struct tm	world_time;
	byte	ret;

	ret = EVNT_NONE;
	if( dhcpcnten == off ){		/* DHCPカウントしない */
		odcvr_time = world_time;
		goto DHCP_SEQEND;
	}
	/* ----- 受信処理 ----- */
	if(( dhcp_mode == DHCP_DISCOVER ) || ( dhcp_mode == DHCP_REBOOTING )
		 || ( dhcp_mode == DHCP_RENEWING ) || ( dhcp_mode == DHCP_REBINDING )){
		ddcrem = _difftime( dinterval, calc_timediff( &odcvr_time, &world_time ));
		if( ddcrem <= 0L ){	/* リトライ */
			if( dhcp_mode == DHCP_DISCOVER ){	/*  */
				ret = dhcp_discover( );
			}
			else if( dhcp_mode == DHCP_REBOOTING ){	/*  */
				dhcp_cnt++;
				if( dhcp_cnt >= 3 ){	/* 諦めてDISCOVERに移行 */
					ret = dhcp_discover( );
				}
				else{	/* 前と同じIPアドレスを申請してみる */
					ret = dhcp_request( DHCP_REBOOTING );
				}
			}
			else{	/* RENEWING, REBINDING */
				ret = dhcp_request( dhcp_mode );
			}
			odcvr_time = world_time;
		}
	}
	/* ----- リースタイムカウント中 T1<T2<LT ----- */
	if(( lease_time != 0L ) && ( lease_time != LD_MAX )){
		if( renewal_time != 0L ){	/* T1カウント中 */
			renewal_time--;
			rebind_time--;
			lease_time--;
			if( renewal_time == 0L ){	/* T1(RENEWING)経過 */
				ret = dhcp_request( DHCP_RENEWING );	/* 再申請 */
				if( ret == EVNT_NONE ){	/* 正常のときはメッセージ */
					ret = EVNT_DHCP_RENEWAL;
				}
			}
			goto DHCP_SEQEND;
		}
		else if( rebind_time != 0L ){	/* T2カウント中 */
			rebind_time--;
			lease_time--;
			if( rebind_time == 0L ){	/* T2(REBIND)経過 */
				ret = dhcp_request( DHCP_REBINDING );	/* 再申請 */
				if( ret == EVNT_NONE ){	/* 正常のときはメッセージ */
					ret = EVNT_DHCP_REBIND;
				}
			}
			goto DHCP_SEQEND;
		}
		lease_time--;
		if( lease_time == 0L ){		/* リース期間経過 */
			ret = dhcp_discover( );	/* やりなおし */
			if( ret == EVNT_NONE ){	/* 正常のときはメッセージ */
				ret = EVNT_DHCP_EXPIRE;
			}
		}
	}
DHCP_SEQEND:

	return	ret;
}


/* end of dhcp.c */
