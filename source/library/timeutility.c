/**
*	timeutility.c
*	時間関係サブルーチン集
*	Copyright (c)Junnichi Tomaru
*/
#include	<stddef.h>
#include	"library/timeutility.h"

extern long	timeoffset;

/**
*	時刻の差を求める(秒単位)
*	 in	s:開始時刻
*		n:現在時刻
*	out	差(秒)
*/
time_t	calc_timediff( struct tm *s, struct tm *n )
{
	time_t	st, nt;

	st = mktime( s );	/* 時刻→秒 */
	nt = mktime( n );

	return	_difftime( nt, st );
}


/**
*	時間(struct tm)をUTCに変換
*	年、月はANSIに準拠していること
*	 in	wt	変換する時間
*		utc	UTC時間
*		offset	時刻
*	out	TRUE:成功 FALSE:エラー
*/
bool	wt2utc( struct tm *wt, struct tm *utc, long offset )
{
	time_t	t;
	struct tm	*tmp;
	bool	ret;

	t = mktime( wt );	/* struct tm -> sec */
	t -= offset;		/* オフセット分引く */
	tmp = gmtime( &t );	/* sec -> struct tm */
	if( tmp != NULL ){
		*utc = *tmp;
		ret = TRUE;
	}
	else{
		ret = FALSE;
	}

	return	ret;
}


/**
*	UTC時刻を世界時間に変換
*	年、月はANSIに準拠していること
*	 in	utc	UTC時間
*		wt	世界時間
*	out	TRUE:成功 FALSE:エラー
*/
bool	utc2wt( struct tm *utc, struct tm *wt )
{
	time_t	t;
	struct tm	*tmp;
	bool	ret;

	t = mktime( utc ) + timeoffset;	/* オフセット分足す */
	tmp = gmtime( &t );
	if( tmp != NULL ){
		*wt = *tmp;
		ret = TRUE;
	}
	else{
		ret = FALSE;
	}

	return	ret;
}


/* end of timeutility.c */
