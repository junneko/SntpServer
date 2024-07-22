/**
*	netutility.c
*	ネットワーク関係サブルーチン集
*	Copyright (c)Junnichi Tomaru
*/
#include	<avr/pgmspace.h>
#include	<ctype.h>
#include	<string.h>
#include	"bios/stime.h"
#include	"library/utility.h"


/**
*	IPアドレスを文字列にする(3桁固定)
*	 in	ipadr: IPアドレス
*		  buf: 格納先文字列
*	out	バッファポインタ
*/
char	*long2ipstr( dword ipadr, char *buf )
{
	ul_t	tmp;

	tmp.data = ipadr;
	uctoaz( tmp.bytes.hh, buf );
	*( buf + 3 ) = '.';
	uctoaz( tmp.bytes.hl, buf + 4 );
	*( buf + 7 ) = '.';
	uctoaz( tmp.bytes.lh, buf + 8 );
	*( buf + 11 ) = '.';
	uctoaz( tmp.bytes.ll, buf + 12 );

	return	buf;
}


/**
*	IPアドレス文字列をlong型に変換する
*	 in	adrstr	IPアドレス文字列
*			文字列に数字とドット以外含むことはできない
*		addr	変換後のアドレス(空白時0,エラー時0xffffffff)
*			192.168.0.100 -> 0xc0a80064
*	out	TRUE:成功 FALSE:失敗
*/
bool	ipstr2bin( char *adrstr, dword *addr )
{
	char	*p, *q, d, tmp[32];
	int	i;
	dword	adr;
	bool	ret;

	adr = 0L;
	ret = FALSE;
	strcpy( tmp, adrstr );		/* 元を変えないようにコピーを使用 */
	p = q = tmp;
	for( i = 0; i < 16; i++, q++ ){
		d = *q;
		if( d == '.' ){		/* 区切りの.(8ビット分数値変換) */
			*q = C_NULL;
			adr |= _atoi( p );
			adr <<= 8;
			p = q + 1;
		}
		else if( d == C_NULL ){	/* 文字列最後 */
			if( q == tmp ){	/* 最初だった(空白) */
				*addr = 0UL;	/* 0.0.0.0と同じにする */
			}
			else{		/* 正常(8ビット分数値変換) */
				*q = C_NULL;
				adr |= _atoi( p );
				*addr = adr;
			}
			ret = TRUE;
			break;
		}
		else if( isdigit( d ) == 0 ){	/* 無効な文字 */
			*addr = 0UL;	/* 無効は0.0.0.0と同じにする */
			break;
		}
	}

	return	ret;
}


/* end of netutility.c */
