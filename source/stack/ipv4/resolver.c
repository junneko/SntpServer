/**
*	resolver.c
*	NBT(NetBIOS over TCP/IP),DNSの共通部分
*	Copyright (c)Junnichi Tomaru
*/
#include	"ipv4/ipv4.h"

/**
*	NAMEキャッシュの有効時間をチェック
*	 in	なし
*	out	なし
*/
void	resolve_timer( void )
{
	byte	i;
	dword	ttl;

	for( i = 0; i < DNS_CACHE_MAX; i++ ){
		if( cache_table[i].flg == 1 ){
			ttl = cache_table[i].ttl;
			if( ttl != 0UL ){	/* 0 = Infinity. */
				ttl--;
				cache_table[i].ttl = ttl;
				if( ttl == 0 ){	/* タイムアップした */
					cache_table[i].flg = 0;
				}
			}
		}
	}
}


/**
*	DNS,NBTリゾルバ(キャッシュ検索)
*	 in	ホスト名
*	out	0以外:キャッシュにある 0:キャッシュされていない
*/
dword	search_resolver( char *name )
{
	byte	i;
	dword	ret;
	cache_t	tmp;

	ret = 0UL;
	for( i = 0; i < DNS_CACHE_MAX; i++ ){	/* キャッシュ内の検索 */
		tmp = cache_table[i];
		if(( tmp.flg == 1 ) && ( strcmp( tmp.domain, name ) == 0 )){	/* 見つかったら、そこを指定 */
			ret = tmp.ipaddr;
			break;
		}
	}

	return	ret;
}


/**
*	キャッシュ検索・登録ルーチン
*	 in	name:相手のホスト名
*		addr:相手のIPアドレス
*		ttl:TTL値
*	out	なし
*/
void	cache_keep( char *name, dword addr, dword ttl )
{
	byte	i, p;

	p = BD_MAX;
	for( i = 0; i < DNS_CACHE_MAX; i++ ){	/* キャッシュ内の検索 */
		if( strcmp( cache_table[i].domain, name ) == 0 ){	/* 見つかった */
			p = i;
			break;
		}
	}
	if( p == BD_MAX ){	/* まだキャッシュされていないか消えた */
		p = rslv_tp;
		rslv_tp++;	/* ポインタを進める */
		rslv_tp &= DNS_CACHE_MASK;
		/* キャッシュテーブルに保管 */
		strcpy( cache_table[p].domain, name );
		cache_table[p].ipaddr = addr;
		cache_table[p].ttl = ttl;
		cache_table[p].flg = 1;
	}
}


/**
*	名前解決シーケンス
*	 in	なし
*	out	0:上位処理なし 255:タイムアウト
*/
byte	resolve_seq( void )
{
	byte	sts;
	swbool	endflg;

	sts = EVNT_NONE;
	endflg = off;
	/* ----- 判定処理 ----- */
	if( rslv_req == 1 ){	/* 数値指定、NetBIOS名、ホスト名指定を判定する */
		if( ipstr2bin( rslvname, (dword *)&rslv_addr ) == TRUE ){	/* IPアドレス変換成功 */
			if( rslv_addr == 0UL ){		/* 0または記録なしは終わり */
				adjustseq = rslv_req = 0;
			}
			else{
				endflg = on;
			}
		}
		else if( strlen( rslvname ) > 15 ){	/* 15文字超えてたらホスト名指定の可能性大 */
			rslv_req = 4;	/* DNS問い合わせ必要 */
		}
		else if( strchr( rslvname, '.' ) != NULL ){	/* .見つかったらホスト名指定の可能性大 */
			rslv_req = 4;	/* DNS問い合わせ必要 */
		}
		else{			/* NBT問い合わせ必要 */
			rslv_req = 2;
		}
	}
	/* ----- NBT(NetBIOS over TCP/IP)処理 ----- */
	else if( rslv_req == 2 ){	/* リゾルバへ問い合わせ */
		rslv_addr = search_resolver( rslvname );	/* NetBIOS名検索 */
		if( rslv_addr != 0UL ){	/* キャッシュ内にあった */
			endflg = on;
		}
		else{		/* 問い合わせ必要 */
			rslv_start = getcount1ms( );
			sts = nbns_sendquery( rslvname );
			rslv_cnt = 0;
			rslv_req = 3;
		}
	}
	else if( rslv_req == 3 ){	/* NBT問い合わせ待ち */
		if( rslv_addr != 0UL ){	/* アドレス解決された */
			endflg = on;
		}
		else if(( getcount1ms( ) - rslv_start ) >= 1000U ){	/* NBTタイムアウト */
			rslv_cnt++;
			if( rslv_cnt >= 3 ){	/* エラー */
				sts = EVNT_NBT_TIMEOUT1 + srvpnt;
			}
			else{	/* やりなおし */
				rslv_start = getcount1ms( );
				sts = nbns_sendquery( rslvname );
			}
		}
	}
	/* ----- DNS処理 ----- */
	else if( rslv_req == 4 ){	/* DNSリゾルバへ問い合わせ */
		rslv_addr = search_resolver( rslvname );	/* ホスト名検索 */
		if( rslv_addr != 0UL ){	/* キャッシュ内にあった */
			endflg = on;
		}
		else{		/* 問い合わせ必要 */
			rslv_start = getcount1ms( );
			sts = dns_request( rslvname );
			rslv_cnt = 0;
			rslv_req = 5;
		}
	}
	else if( rslv_req == 5 ){	/* DNS問い合わせ待ち */
		if( rslv_addr != 0UL ){	/* アドレス解決された */
			endflg = on;
		}
		else if(( getcount1ms( ) - rslv_start ) >= 1000U ){	/* DNSタイムアウト */
			rslv_cnt++;
			if( rslv_cnt >= 3 ){	/* エラー */
				sts = EVNT_DNS_TIMEOUT1 + srvpnt;
			}
			else{	/* やりなおし */
				rslv_start = getcount1ms( );
				sts = dns_request( rslvname );
			}
		}
	}
	/* ----- その他 ----- */
	rslv_end = endflg;
	if( endflg == on ){	/* アドレス解決された */
		rslv_req = 0;
	}

	return	sts;
}


/* end of resolver.c */
