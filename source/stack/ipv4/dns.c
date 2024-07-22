/**
*	dns.c
*	Domain Name System (DNS):階層化されたドメイン名からIPアドレスを得る(RFC 1035)
*	クライアントのみ対応
*	Copyright (c)Junnichi Tomaru
*/
#include	"ipv4/ipv4.h"


/**
*	DNS名前解決要求
*	 in	ドメインネーム文字列
*	out	0:正常終了　0以外:エラーあり
*/
byte	dns_request( char *name )
{
	word	size;
	byte	d, len;
	char	*p, *q;

	pacinfo.partipaddr = dns_server;
	pacinfo.partport = UDP_DNS;
	pacinfo.myport = UDP_DNSC;
	size = 16U;	/* ドメイン名以外の長さ */

	rslv_xid = (word)make_rand( );	/* トランザクションID生成 */
	enc_txseek( UDP_DATA );
	enc_writebuf2( rslv_xid );	/* ID */
	enc_writebuf2( 0x0100 );	/* ステータス,再帰検索要求 */
	enc_writebuf2( 1U );		/* Question数 */
	enc_writebuf2( 0U );		/* Answer数 */
	enc_writebuf2( 0U );		/* Authority数 */
	enc_writebuf2( 0U );		/* Additional数 */
	p = name;			/* Qname */
	_forever{
		q = p;
		for( len = 0; ; len++, q++ ){	/* 区切り文字までの文字数カウント */
			d = *q;
			if(( d == '.' ) || ( d == C_NULL )){
				break;
			}
		}
		enc_writebuf( len );	/* 文字列長さ */
		enc_writebuffer((byte *)p, len );	/* 文字列 */
		p = q + 1;		/* ポインタ更新 */
		size += ( len + 1 );	/* 長さ含む */
		if( d == C_NULL ){	/* 終端 */
			break;
		}
	}
	enc_writebuf( 0x00 );	/* 終端コード(長さ0) */
	size++;
	enc_writebuf2( DNS_TYPE_HOSTNAME );	/* Qtype */
	enc_writebuf2( DNS_CLASS_INET );	/* Qclass */

	return	udp_output( size );
}


/**
*	名前フィールド取得
*	 in	格納先バッファポインタ
*	out	バッファポインタ
*/
static char	*dns_getname( char *buf )
{
	byte	i, d;
	char	*p;

	p = buf;
	_forever{
		d = enc_readbuf( );		/* 長さまたはポインタ */
		if( d == 0 ){			/* 長さ0(終了) */
			*( p - 1 ) = C_NULL;
			break;
		}
		if(( d & BYTE_MASK_U2 ) == 0xc0 ){	/* ポインタ */
			enc_readbuf( );		/* 位置情報読み飛ばして終了 */
			break;
		}
		for( i = 0; i < d; i++, p++ ){
			*p = enc_readbuf( );
		}
		*p = '.';
		p++;
	}

	return	buf;
}


/**
*	DNS入力
*	 in	なし
*	out	0:正常終了　0以外:エラーあり
*/
byte	dns_input( void )
{
	char	buf[32], tmp[32];
	dns_t	header;
	word	i, cnt;
	word	type, class, rdatalen;
	dword	ttl;

	enc_rxseek( pacinfo.proto_body );	/* データ部に移動 */
	enc_readbuffer((byte *)&header, sizeof( header ));	/* ヘッダ読み込み */
	if( cnvendian16( header.trid ) != rslv_xid ){	/* ID合わない */
		return	EVNT_NONE;
	}
	cnt = cnvendian16( header.question );	/* 質問フィールド解析 */
	for( i = 0; i < cnt; i++ ){
		dns_getname( tmp );		/* 名前部分 */
		type = enc_readbuf2( );		/* Qtype */
		class = enc_readbuf2( );	/* Qclass */
		if(( type == DNS_TYPE_HOSTNAME ) && ( class == DNS_CLASS_INET )){
			strcpy( buf, tmp );
		}
	}
	cnt = cnvendian16( header.answer );	/* 回答フィールド解析 */
	for( i = 0; i < cnt; i++ ){
		dns_getname( tmp );		/* 名前部分(ポインタの場合はスキップ) */
		type = enc_readbuf2( );		/* Rtype */
		class = enc_readbuf2( );	/* Rclass */
		ttl = enc_readbuf4( );		/* TTL */
		rdatalen = enc_readbuf2( );	/* Rlen */
		if(( type == DNS_TYPE_HOSTNAME ) && ( class == DNS_CLASS_INET ) && ( rdatalen == DNS_RLEN_ADDR )){
			rslv_addr = enc_readbuf4( );
			cache_keep( buf, rslv_addr, ttl );
			break;
		}
		else{
			enc_skip( rdatalen );	/* 読み飛ばし */
		}
	}

	return	EVNT_NONE;
}


/* end of dns.c */
