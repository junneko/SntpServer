/**
*	arp.c
*	ARP処理ルーチン（OSI参照モデル第2層（データリンク層））
*	Address Resolution Protocol:IPアドレスから対応するMACアドレスを検索する
*	Copyright (c)Junnichi Tomaru
*/
#include	"ipv4/ipv4.h"


/**
*	ARPタイマチェック	ver2.23.00
*	１秒ごとに呼び出される。ARPキャッシュテーブルのタイマを減算し
*	タイムアップしたものはARPキャッシュを破棄する。
*	 in	なし
*	out	なし
*/
void	arp_timer( void )
{
	byte	i, j, p, flg;

	p = 255;	/* 前に詰められない */
	for( i = 0; i < ARP_CACHE_MAX; i++ ){
		flg = 0;
		if( arp_cache[i].flg == ARP_CACHE_DYNAMIC ){	/* ダイナミック */
			arp_cache[i].timer--;
			if( arp_cache[i].timer == 0UL ){	/* タイムアップした */
				arp_cache[i].flg = ARP_CACHE_NONE;
				p = i;		/* 新しく詰められる */
			}
			else if( p != 255 ){	/* 前に詰められる */
				flg = 1;
			}
		}
		else if( arp_cache[i].flg == ARP_CACHE_STATIC ){	/* スタティック */
			if( p != 255 ){		/* 前に詰められる */
				flg = 1;
			}
		}
		else{	/* 登録なし(ARP_CACHE_NONE) */
			p = i;		/* 前に詰められる */
		}
		if( flg == 1 ){		/* 詰める */
			arp_cache[p] = arp_cache[i];	/* コピー */
			arp_cache[i].ipaddr = 0UL;	/* あったところは消去する */
			for( j = 0; j < 6; j++ ){
				arp_cache[i].mac[j] = 0;
			}
			arp_cache[i].timer = 0UL;
			arp_cache[i].flg = ARP_CACHE_NONE;
			p = i;		/* 新しく詰められる */
		}
	}
}


/**
*	ARPテーブル検索ルーチン
*	送信先のIPアドレスより、MACアドレスを検索する。
*	1.IPブロードキャストのときは、MACアドレスもブロードキャストとする
*	2.IPアドレスがネットワーク外の場合は、ゲートウェイのMACアドレスを検索
*	3.それ以外は、ARPキャッシュテーブルより検索。
*	テーブルより最初に見つかったIPアドレスに対するMACアドレスをコピーする
*	無いときは宛先MACアドレスはブロードキャストとし、ARP要求を出す
*	 in	なし
*	out	0:見つかった(またはブロードキャスト宛)
*		1:見つからなかった(ネットワーク内)
*		2:見つからなかった(ネットワーク外)
*/
byte	arp_search( void )
{
	byte	i, ret, *p;
	dword	adr;
	arp_tb	*ap;

	ret = ARP_NFND;
	adr = pacinfo.partipaddr;	/* 送信先アドレス */
	p = pacinfo.mac;
	if(( adr | netmask ) == IP_BROADCAST ){	/* ネットワーク内ブロードキャスト */
		memset( p, 0xff, PHYSICALADDR_SIZE );
		return	ARP_FOUND;
	}
	else if(( adr & netmask ) != ( myipaddr & netmask )){
						/* ネットワーク外のIPアドレス */
		adr = gateway;
		ret = ARP_NFNDG;
	}
	for( i = 0; i < ARP_CACHE_MAX; i++ ){	/* IPアドレスからMACアドレスを探す */
		ap = (arp_tb *)&arp_cache[i];
		if(( ap->flg == 1 ) && ( ap->ipaddr == adr )){	/* 見つかった */
			memcpy( p, (char *)ap->mac, PHYSICALADDR_SIZE );
			ret = ARP_FOUND;
			break;
		}
	}

	return	ret;
}


/**
*	ARP検索・登録ルーチン
*	ARPキャッシュ内を検索し、登録済のIPアドレスなら上書きする。
*	(IPアドレスが同じで機械が変わった場合などに対応して、常に最新の状態を保持する)
*	 in	adr: 相手のIPアドレス
*		mac: 相手のMACアドレス
*		フラグ: ARP_CACHE_NONE:未登録時は無視 ARP_CACHE_DYNAMIC:動的登録 ARP_CACHE_STATIC:静的登録
*	out	0:登録できなかった 1:登録した
*/
byte	arp_keep( dword adr, byte *mac, byte flg )
{
	byte	i, p;
	arp_tb	*ap;

	/* --- キャッシュ内の検索 --- */
	p = 0;
	for( i = 0; i < ARP_CACHE_MAX; i++ ){
		if( arp_cache[i].flg == flg ){
			if( arp_cache[i].ipaddr == adr ){	/* 見つかったら、そこを指定 */
				p = i;
				break;
			}
		}
	}
	/* --- 登録判断 --- */
	if( i == ARP_CACHE_MAX ){		/* まだキャッシュされていないか消えた */
		if( flg == ARP_CACHE_NONE ){	/* 未登録相手を登録しない */
			return	0;
		}
		/* --- スタティックでない次の位置探す --- */
		p = arp_tp;
		for( i = 0; i < ARP_CACHE_MAX; i++ ){
			if( arp_cache[i].flg != ARP_CACHE_STATIC ){
				break;
			}
			p++;		/* ポインタを進める */
			p &= ARP_CACHE_MASK;
		}
		arp_tp = p;
		if( i == ARP_CACHE_MAX ){	/* 登録できない */
			return	0;
		}
	}
	/* --- IPアドレスとMACアドレスの関係をキャッシュテーブルに保管 --- */
	ap = (arp_tb *)&arp_cache[p];	/* ポインタ取り出し */
	memcpy((char *)ap->mac, mac, PHYSICALADDR_SIZE );	/* MACアドレスのコピー */
	ap->ipaddr = adr;		/* IPアドレスのコピー */
	ap->timer = arp_timeout;	/* ARPタイマセット */
	if( flg == ARP_CACHE_NONE ){	/* スタティック以外はダイナミックで登録 */
		ap->flg = ARP_CACHE_DYNAMIC;	/* ver2.23.00 */
	}
	else{
		ap->flg = flg;		/* ver2.23.00 */
	}

	return	1;
}


/**
*	ARPテーブル削除ルーチン
*	 in	adr:IPアドレス
*	out	0:見つからなかった
*		1:見つかった(削除した)
*/
byte	arp_delete( dword adr )
{
	byte	i, ret;

	ret = 0;
	for( i = 0; i < ARP_CACHE_MAX; i++ ){	/* IPアドレスからMACアドレスを探す */
		if( arp_cache[i].ipaddr == adr ){	/* 見つかった */
			arp_cache[i].flg = ARP_CACHE_NONE;
			ret = 1;
			break;
		}
	}

	return	ret;
}


/**
*	ARP要求の送信(特殊処理なので、関数内ですべて処理する)
*	 in	partadr:相手のIPアドレス
*	out	なし
*/
void	arp_request( dword partadr )
{
	pacinfo.datasize = ARP_SIZE + ETHERHDR_SIZE;	/* ARP REQUEST送信サイズ */

	enc_bankselect( 0 );
	enc_writereg16( EWRPT, TMPSTART + 1 );	/* 書き込み先頭(PPCBは後で書く) */

	enc_fillwrite( 0xff, PHYSICALADDR_SIZE );	/* 宛先MACアドレス(ブロードキャスト) */
	enc_writebuffer( mac_address, PHYSICALADDR_SIZE );	/* 送信元MACアドレス */
	enc_writebuf2( ARP_PROTOARP );		/* イーサネットタイプ */
	enc_writebuf2( ARP_HWETHER );		/* ハードウェアタイプ */
	enc_writebuf2( ARP_PROTOIP );		/* 要求元プロトコル */
	enc_writebuf( PHYSICALADDR_SIZE );	/* ハードウェアアドレス長 */
	enc_writebuf( IPADDR_SIZE );		/* プロトコルアドレス長 */
	enc_writebuf2( ARP_REQUEST );		/* オペレーションコード(ARP要求) */
	enc_writebuffer( mac_address, PHYSICALADDR_SIZE );	/* ARP発信元MACアドレス */
	enc_writebuf4( myipaddr );		/* ARP送信元アドレスコピー */
	enc_fillwrite( 0x00, PHYSICALADDR_SIZE );	/* ARP宛先MACアドレス */
	enc_writebuf4( partadr );		/* ARP受信側IPアドレス */

	enc_output( TMPSTART );			/* ENC28J60へ直接 */
}


/**
*	ARP応答
*	 in	なし
*	out	なし
*/
static void	arp_reply( arp_st *rxarp )
{
	pacinfo.datasize = ARP_SIZE;
	enc_txseek( ETHERHDR_SIZE );	/* 書き込み開始位置 */
	enc_writebuf2( ARP_HWETHER );	/* ハードウェアタイプ */
	enc_writebuf2( ARP_PROTOIP );	/* 要求元プロトコル */
	enc_writebuf( PHYSICALADDR_SIZE );	/* ハードウェアアドレス長 */
	enc_writebuf( IPADDR_SIZE );	/* プロトコルアドレス長 */
	enc_writebuf2( ARP_REPLY );	/* ARP応答 */
	enc_writebuffer( mac_address, PHYSICALADDR_SIZE );	/* ARP送信元MACアドレス */
	enc_writebuf4( myipaddr );	/* 送信元IPアドレス */
	enc_writebuffer( rxarp->srcmac, PHYSICALADDR_SIZE );
					/* ARP宛先MACアドレスコピー */
	enc_writebuffer((byte *)&rxarp->sipaddr, IPADDR_SIZE );
					/* 宛先IPアドレスはそのままコピー */

	ether_output( ETHERTYPE_ARP );	/* イーサネット処理 */
}


/**
*	ARPパケット受信処理
*	本当は厳密にチェックするべきだが、ROM容量が少ないので最小限にする
*	 in	なし
*	out	0:正常(無効含む)  2:IPアドレスぶつかってる
*/
byte	arp_input( void )
{
	dword	sadr, dadr;
	word	op;
	arp_st	rx_arp;

	enc_readbuffer( (byte *)&rx_arp, ARP_SIZE );
	op = cnvendian16( rx_arp.opcode );	/* OPコード */
	sadr = cnvendian32( rx_arp.sipaddr );	/* 送信元IPアドレス */
	dadr = cnvendian32( rx_arp.dipaddr );	/* 宛先IPアドレス */
	if( cnvendian16( rx_arp.hwtype ) != ARP_HWETHER ){	/* イーサネットではない */
		return	ARP_OK;
	}
	else if( cnvendian16( rx_arp.protocol ) != ARP_PROTOIP ){	/* IPではない */
		return	ARP_OK;
	}
	else if( dadr != myipaddr ){	/* 自分宛ではない */
		return	ARP_OK;
	}
	else if( strncmp((char *)rx_arp.destmac, (char *)mac_address, PHYSICALADDR_SIZE ) ){
		return	ARP_OK;		/* 自分のMAC ADDRESSではない */
	}
	else if( sadr == myipaddr ){	/* 自分から来た？ */
		return	ARP_COL;
	}
	arp_keep( sadr, rx_arp.srcmac, ARP_CACHE_DYNAMIC );	/* テーブル登録 */
	if( op == ARP_REQUEST ){	/* ARP要求を受けた */
		arp_reply( &rx_arp );	/* ARP応答 */
	}

	return	ARP_OK;
}


/* end of arp.c */
