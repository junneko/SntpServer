/**
*	IP層(OSI参照モデル第3層：ネットワーク層  RFC791,RFC919,RFC922)
*	Internet Protocol:経路制御のためのアドレス構造やパケットの分割・再構成など
*	Copyright (c)Junnichi Tomaru
*/
#include	"ipv4/ipv4.h"


/**
*	IP層入力処理
*	 in	なし
*	out	0:以降の処理なし 1:ENC RXERR 2-4:処理あり
*/
byte	ip_input( void )
{
	byte	ret, opt, flg;
	dword	dip, bld;
	ip_st	rxip;

	flg = ether_input( );
	if( flg == 0 ){			/* イーサネット層入力 */
		return	RCV_NONE;
	}
	else if( flg == 2 ){		/* 受信エラー */
		return	EVNT_ENC_RXRCVERR;
	}
	if( enc_rxchksum( IP_TOP, IPHDR_SIZE ) != 0U ){	/* チェックサム合わなかった */
		enc_setnextpoint( );	/* あまりにもSUMERR発生のため、ログ挿入せず */
		return	RCV_NONE;
	}
	enc_rxseek( IP_TOP );
	enc_readbuffer((byte *)&rxip, IPHDR_SIZE );	/* IPヘッダ読み込み */
	dip = cnvendian32( rxip.dipaddr );
	bld = dip | netmask;
	if(( rxip.ipver & BYTE_MASK_U4 ) != 0x40 ){	/* IPv4かどうかのチェック */
		enc_setnextpoint( );
		return	RCV_NONE;
	}
	flg = 0;
	if( dip == myipaddr ){		/* 自分宛？ */
		flg = 1;
	}
	else if( bld == IP_BROADCAST ){	/* ネットワーク内ブロードキャスト */
		flg = 1;
	}
	else if( dip == IP_BROADCAST ){	/* IP層ブロードキャスト */
		flg = 1;
	}
	ret = RCV_NONE;
	if( flg == 1 ){
		ip_hdrlen = ( rxip.ipver & BYTE_MASK_L4 ) * 4;
		pacinfo.datasize = cnvendian16( rxip.length );	/* IPパケット長さ */
		pacinfo.datasize -= ip_hdrlen;		/* ヘッダ長引く */
		pacinfo.partipaddr = cnvendian32( rxip.sipaddr );
		pacinfo.myipaddr = dip;
		if( ip_hdrlen > IPHDR_SIZE ){		/* オプションがある */
			opt = ip_hdrlen - IPHDR_SIZE;
			enc_skip( opt );		/* 読み飛ばし */
		}
		arp_keep( pacinfo.partipaddr, pacinfo.mac, ARP_CACHE_NONE );	/* ARPキャッシュ登録 */
		if( rxip.protocol == IPPROTO_ICMP ){		/* ICMP */
			ret = RCV_ICMP;
		}
		else if( rxip.protocol == IPPROTO_UDP ){	/* UDP */
			ret = RCV_UDP;
		}
		else if( rxip.protocol == IPPROTO_TCP ){	/* TCP */
			ret = RCV_TCP;
		}
		else{
			enc_setnextpoint( );
		}
	}
	else{
		enc_setnextpoint( );
	}

	return	ret;
}


/**
*	IP層出力処理
*	 in	protocol:上位プロトコル
*	out	0:正常終了　1:ARPタイムアウト
*/
byte	ip_output( byte protocol )
{
	word	sum, wait_timer;
	byte	sts, ret;
	ether_t	tmp;		/* 退避用 */

	pacinfo.datasize += IPHDR_SIZE;	/* IPヘッダ長足す */
	enc_txseek( IP_TOP );		/* 書き込み開始位置 */
	enc_writebuf2( 0x4500 );	/* IPv4＆ヘッダ長(20バイト),TOS */
	enc_writebuf2( pacinfo.datasize );	/* 全体長 */
	enc_writebuf2( ip_identifer );	/* 識別子 */
	enc_writebuf2( 0x4000 );	/* フラグ,オフセット:分割不可能 */
	enc_writebuf( ip_ttl );		/* 生存時間 */
	enc_writebuf( protocol );	/* プロトコル */
	enc_writebuf2( 0U );		/* 計算用なので０ */
	enc_writebuf4( myipaddr );	/* 送信元IP */
	enc_writebuf4( pacinfo.partipaddr );	/* 宛先IP */
	sum = enc_txchksum( ETHERHDR_SIZE, IPHDR_SIZE );	/* ヘッダチェックサム計算 */
	enc_txseek( IP_SUM );		/* チェックサム位置移動 */
	enc_writebuf2( sum );
	ret = EVNT_NONE;
	sts = arp_search( );		/* ARPテーブル検索 */
	if( sts != ARP_FOUND ){		/* テーブルに登録が無い */
		tmp = pacinfo;		/* 上書きされるためバックアップ */
		if( sts == ARP_NFNDG ){	/* ゲートウェイのMACを要求 */
			arp_request( gateway );
		}
		else{
			arp_request( pacinfo.partipaddr );	/* ARP要求を出す */
		}
		/* ----- wait_arpreply( ) ARP要求に対する応答を待つ ----- */
		enc_setnextpoint( );	/* パケットを受け取れるようにするため */
		wait_timer = getcount1ms( );
		_forever{		/* ARP応答待ち */
			wdt_reset( );	/* WDTの更新 */
			if( ether_input( ) != ETHER_OK ){	/* すぐ返ってくるという前提で */
				enc_setnextpoint( );
			}
			if( arp_search( ) == ARP_FOUND ){	/* 見つかった */
				break;
			}
			if(( getcount1ms( ) - wait_timer ) >= arp_reqtimeout ){	/* タイマ切れ(1秒) */
				ret = EVNT_ARP_TIMEOUT;
				break;
			}
		}
		pacinfo = tmp;		/* 送信情報にもどす */
	}
	if( ret == EVNT_NONE ){
		ether_output( ETHERTYPE_IP );	/* イーサネット層へ */
	}
	ip_identifer++;

	return	ret;
}


/**
*	TCPおよびUDPのチェックサム計算
*	 in	   dir:方向
*		offset:オフセット
*		  size:計算領域サイズ
*	out	計算結果
*/
word	tcpudp_sum( byte dir, word offset, word size )
{
	byte	i, *p;
	word	tmp;
	ui_t	t;
	dword_t	ret;

	ret.data = 0U;
	p = (byte *)&pseudo_hdr;	/* 擬似ヘッダを足す */
	for( i = 0; i < 6; i++ ){	/* ２バイトずつ加算(2*6=12) */
		t.bytes.hi = *p;
		p++;
		t.bytes.lo = *p;
		p++;
		ret.data += t.data;
	}
	if( dir == TX ){
		enc_bankselect( ENC_BANK0 );
		tmp = offset + TXSTART + PPCB_SIZE;
		enc_writereg16( ERDPT, tmp );
	}
	else{
		enc_rxseek( offset );
	}
	ret.data += enc_addsum( size );	/* ENCバッファ内の加算 */
	if( ret.data >= 0x10000UL ){	/* オーバーしたら */
		tmp = ret.words.hi;
		ret.words.hi = 0U;	/* 下位16bitマスクと同じ */
		ret.data += tmp;	/* キャリ分を足す */
		if( ret.data >= 0x10000UL ){	/* オーバーしたら */
			ret.words.lo++;	/* キャリ分を足す(3回以上はオーバーしない) */
		}
	}

	return	_invert( ret.words.lo );
}


/* end of ip.c */
