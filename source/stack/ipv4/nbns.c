/**
*	nbns.c
*	NBT(NetBIOS over TCP/IP) RFC1001,1002
*	Copyright (c)Junnichi Tomaru
*/
#include	"ipv4/ipv4.h"

/**
*	受信バッファから取り出した符号化ASCIIコードをASCIIコードにする
*	 in	なし
*	out	ASCIIコード
*/
byte	casc2asc( void )
{
	nbl_t	d;

	d.nbl.hi = ( enc_readbuf( ) - 'A' ) & BYTE_MASK_L4;
	d.nbl.lo = ( enc_readbuf( ) - 'A' ) & BYTE_MASK_L4;

	return	d.data;
}


/**
*	ASCIIコード文字列を符号化ASCIIコードにして送信バッファに埋め込む
*	 in	ASCIIコード
*	out	なし
*/
void	asc2casc( byte *p )
{
	byte	i, c;

	for( i = 0; i < 16; i++, p++ ){	/* 32文字固定 */
		c = (byte)toupper( *p );
		enc_writebuf(( c >> 4 ) + 'A' );
		enc_writebuf(( c & BYTE_MASK_L4 ) + 'A' );
	}
	enc_writebuf( 0x00 );		/* 終端 */
}


/**
*	問い合わせ送信(一部DNSと共通変数使用)
*	 in	NetBIOS名文字列(16バイト必須)
*	out	0:エラーなし 0以外:エラーあり
*/
byte	nbns_sendquery( char *name )
{
	byte	ret;

	ret = EVNT_NONE;
	pacinfo.partipaddr = myipaddr | ( ~netmask );	/* サブネット内ブロードキャスト */
	pacinfo.partport = UDP_NBNS;
	pacinfo.myport = UDP_NBNS;
	rslv_xid = (word)make_rand( );	/* トランザクションID生成 */
	enc_txseek( UDP_DATA );
	enc_writebuf2( rslv_xid );	/* ID */
	enc_writebuf2( OP_QUERY | NM_RD | NM_BC );	/* 問い合わせ、再帰、ブロードキャスト */
	enc_writebuf2( 1U );		/* Question数 */
	enc_writebuf2( 0U );		/* Answer数 */
	enc_writebuf2( 0U );		/* Authority数 */
	enc_writebuf2( 0U );		/* Additional数 */
	enc_writebuf( 32 );		/* 長さ(32バイト固定) */
	asc2casc( (byte *)name );	/* NetBIOS名(符号化ASCIIエンコード) */
	enc_writebuf2( RRTYPE_NB );	/* RR_TYPE */
	enc_writebuf2( CLASS_IN );	/* CLASS */

	return	udp_output( 50U );	/* 要求は50オクテット固定 */
}


/**
*	他ホストからの問い合わせ処理(Query処理)
*	 in	NBNSヘッダ構造体
*	out	0:エラーなし 0以外:エラーあり
*/
static byte	nbns_query( nbns_st *rxnbns )
{
	byte	buf[16], j, ret;
	word	i, qn, tid, type, class, sts, len;
	swbool	sw;

	ret = EVNT_NONE;
	tid = cnvendian16( rxnbns->trid );	/* トランザクションID */
	qn = cnvendian16( rxnbns->question );	/* 問い合わせ個数 */
	sw = off;
	for( i = 0; i < qn; i++ ){
		if( enc_readbuf( ) != 32 ){	/* 名前長さが32文字ではない(ポインタ含む) */
			break;			/* 出た時点で処理終了 */
		}
		for( j = 0; j < 16; j++ ){	/* NetBIOS名(符号化ASCIIデコード) */
			buf[j] = casc2asc( );
		}
		buf[15] = C_NULL;
		enc_readbuf( );			/* 終端コード読み飛ばし */
		type = enc_readbuf2( );		/* タイプ NetBIOS Node Status */
		class = enc_readbuf2( );	/* クラス Internet(1) */
		if( class != CLASS_IN ){	/* クラス違う */
			continue;
		}
		if( type == RRTYPE_NB ){	/* NB */
			if( strcmp((char *)buf, nbns_name ) == 0 ){	/* NetBIOS名一致 */
				sw = on;	/* 汎用ネームサービスのリソースレコード */
				sts = ( OP_RESPONSE | NM_AA | NM_RD );	
				break;
			}
		}
		else if( type == RRTYPE_NBSTAT ){	/* NBSTAT */
			if( buf[0] == '*' ){
				sw = on;	/* ノードステータスリソースレコード */
				sts = ( OP_RESPONSE | NM_AA );	
				break;
			}
		}
	}
	if( sw == on ){		/* 返答 */
		enc_txseek( NBNS_TOP );	
		enc_writebuf2( tid );	/* トランザクションID */
		enc_writebuf2( sts );	/* Status */
		enc_writebuf2( 0U );	/* 問い合わせ数 */
		enc_writebuf2( 1U );	/* 回答数 */
		enc_writebuf2( 0U );	/* 権威セクション数 */
		enc_writebuf2( 0U );	/* 追加情報セクション数 */
		enc_writebuf( 32 );	/* 長さ(32byte) */
		asc2casc( buf );	/* NetBIOS名(来たのを埋め込む) */
		enc_writebuf2( type );	/* Type: NetBIOS Status */
		enc_writebuf2( CLASS_IN );	/* Class: Internet */
		enc_writebuf4( NBNS_TTL );	/* Time To Live */
		if( type == RRTYPE_NB ){	/* NB(0x20) */
			enc_writebuf2( 6U );		/* データ長 */
			enc_writebuf2( NB_BNODE | NB_UNIQUE );	/* B-Node,Unique */
			enc_writebuf4( myipaddr );	/* NB Address */
			len = 62U;
		}
		else{			/* NBSTAT(0x21) */
			enc_writebuf2( 61U );	/* データ長 */
			enc_writebuf( 1 );	/* 名前の個数 */
			enc_writebuffer( (byte *)nbns_name, 15 );	/* NetBIOS名(回答) */
			enc_writebuf( C_NULL );	/* 終端 */
			enc_writebuf2( NB_BNODE | NB_UNIQUE | NF_ACT );	/* B-Node,Unique,Active */
			enc_writebuffer( mac_address, PHYSICALADDR_SIZE );/* Node Address */
			enc_fillwrite( 0x00, 36 );	/* その他情報(全部0) */
			len = 117U;
		}
		ret = udp_output( len );
	}

	return	ret;
}


/**
*	問い合わせ先からの返答処理
*	 in	NBNSヘッダ構造体
*	out	0:エラーなし 0以外:エラーあり
*/
static byte	nbns_response( nbns_st *rxnbns )
{
	byte	ret, i;
	byte	buf[16];
	word	type, class, flag, len;
	dword	ttl;

	ret = EVNT_NONE;
	if( cnvendian16( rxnbns->trid ) != rslv_xid ){	/* トランザクションID違う */
		return	ret;		/* エラーにしない */
	}
	if( cnvendian16( rxnbns->answer ) != 1U ){	/* Answer個数(普通1個) */
		return	EVNT_NBT_RCVERROR;
	}
	if( enc_readbuf( ) != 32 ){	/* 名前長さが32文字ではない */
		return	EVNT_NBT_FMTERROR;
	}
	for( i = 0; i < 16; i++ ){	/* NetBIOS名(符号化ASCIIデコード) */
		buf[i] = casc2asc( );
	}
	buf[15] = C_NULL;
	enc_readbuf( );			/* 終端コード読み飛ばし */
	type = enc_readbuf2( );		/* タイプ NetBIOS Node Status */
	class = enc_readbuf2( );	/* クラス Internet(1) */
	ttl = enc_readbuf4( );		/* TTL */
	if(( type == RRTYPE_NB ) && ( class == CLASS_IN )){
		len = enc_readbuf2( );		/* 長さ */
		flag = enc_readbuf2( );		/* フラグ */
		rslv_addr = enc_readbuf4( );	/* アドレス */
		cache_keep(( char *)buf, rslv_addr, ttl );	/* 保存 */
	}

	return	ret;
}


/**
*	NetBIOS名前解決
*	 in	なし
*	out	0:エラーなし 0以外:エラーあり
*/
byte	nbns_input( void )
{
	nbns_st	rxnbns;
	word	sts;
	byte	ret;

	ret = EVNT_NONE;
	enc_rxseek( pacinfo.proto_body );	/* データ部に移動 */
	enc_readbuffer((byte *)&rxnbns, sizeof( rxnbns ));	/* ヘッダ読み込み */
	sts = cnvendian16( rxnbns.status );
	if(( sts & WORD_MASK_L04 ) != 0U ){	/* エラー */
		return	EVNT_NBT_ERROR;
	}
	if( WORD_BIT15_CHK( sts ) == WORD_BIT_15 ){	/* レスポンスパケット */
		ret = nbns_response( &rxnbns );
	}
	else if(( sts & OP_MASK ) == OP_QUERY ){	/* 問い合わせパケット */
		if( pacinfo.proto_len == 50U ){		/* 要求は常に50オクテット固定なので */
			ret = nbns_query( &rxnbns );	/* 50オクテット以外は無視 */
		}
	}

	return	ret;
}


/* end of nbns.c */
