/**
*	udp.c
*	UDP層(トランスポート層(RFC768))
*	User Datagram Protocol:IPをアプリケーションで直接使えるようにするプロトコル
*	Copyright (c)Junnichi Tomaru
*/
#include	"ipv4/ipv4.h"
#include	"driver/enc28j60.h"

/**
*	UDP層入力処理
*	 in	なし
*	out	0:正常　0以外:エラーあり
*/
byte	udp_input( void )
{
	byte	ret;
	char	buf[8];
	word	size, pnt, port;
	udp_st	rxudp;
	extern	byte	udp_command( );

	ret = EVNT_NONE;
	enc_readbuffer((byte *)&rxudp, UDPHDR_SIZE );	/* ヘッダ読み込み */
	pacinfo.partport = cnvendian16( rxudp.srcport );	/* ポート番号ゲット */
	pacinfo.myport = cnvendian16( rxudp.destport );
	size = cnvendian16( rxudp.length );		/* UDP長さ */
	pacinfo.proto_len = size - UDPHDR_SIZE;

	pnt = ip_hdrlen + IP_TOP;	/* UDP位置 */
	if( rxudp.chksum != 0U ){	/* チェックあり */
		pseudo_hdr.sipaddr = cnvendian32( pacinfo.partipaddr );	/* 送信元IPアドレス */
		pseudo_hdr.dipaddr = cnvendian32( pacinfo.myipaddr );	/* 宛先IPアドレス */
		pseudo_hdr.zero = 0;			/* パディング(0) */
		pseudo_hdr.protocol = IPPROTO_UDP;	/* プロトコル */
		pseudo_hdr.paclen = rxudp.length;	/* プロトコル長さ */
		if( tcpudp_sum( RX, pnt, size ) != 0U ){	/* チェックサム合わない */
			return EVNT_UDP_RXSUMERR;
		}
	}
	pacinfo.proto_body = pnt + UDPHDR_SIZE;	/* データ位置 */
	port = pacinfo.myport;		/* 処理先ポート */
	if( port == UDP_NTP ){		/* NTP */
		ret = ntp_input( );
	}
	else if( port == UDP_TIME ){	/* TIME */
		ret = time_input( );
	}
	else if( port == UDP_DNSC ){	/* DNS CLIANT */
		ret = dns_input( );
	}
	else if( port == UDP_BOOTPC ){	/* DHCP */
		ret = dhcp_input( );
	}
	else if( port == UDP_NBNS ){	/* NetBIOS Name Service */
		ret = nbns_input( );
	}
	else if( port == UDP_RESET ){	/* リセット用ポート */
		enc_rxseek( pacinfo.proto_body );	/* データ部に移動 */
		enc_readbuffer((byte *)buf, 7 );	/* コマンド読み込み */
		if( strncmp_P( buf, PSTR( "RESET\r\n" ), 7 ) == 0 ){	/* RESETコマンド */
			enc_txseek( UDP_DATA );
			size = enc_writebufc( PSTR( "REBOOT\r\n" ));	/* 確認応答 */
			ret = udp_output( size );
			_forever{}		/* WDTタイムアップ待ち */
		}
	}
	else if( port == UDP_COMMAND ){	/* コマンド用ポート */
		ret = udp_command( );
	}

	return	ret;
}


/**
*	UDP層出力処理
*	 in	データ長
*	out	0:正常終了　1:ARPタイムアウト
*/
byte	udp_output( word len )
{
	word	sum;

	/* あらかじめデータをセットしておく */
	pacinfo.datasize = UDPHDR_SIZE + len;
	enc_txseek( UDP_TOP );
	enc_writebuf2( pacinfo.myport );	/* 送信元ポート */
	enc_writebuf2( pacinfo.partport );	/* 宛先ポート */
	enc_writebuf2( pacinfo.datasize );	/* パケット長 */
	enc_writebuf2( 0U );			/* チェックサム(計算用) */
	/* チェックサム計算 */
	pseudo_hdr.sipaddr = cnvendian32( myipaddr );
	pseudo_hdr.dipaddr = cnvendian32( pacinfo.partipaddr );
	pseudo_hdr.zero = 0;
	pseudo_hdr.protocol = IPPROTO_UDP;
	pseudo_hdr.paclen = cnvendian16( pacinfo.datasize );
	sum = tcpudp_sum( TX, UDP_TOP, pacinfo.datasize );	/* チェックサム計算 */
	if( sum == WORD_DATA_ZERO ){	/* Sum 0000 -> FFFF */
		sum = WORD_DATA_MAX;
	}
	enc_txseek( UDP_SUM );		/* チェックサム位置 */
	enc_writebuf2( sum );

	return	ip_output( IPPROTO_UDP );
}


/* end of udp.c */
