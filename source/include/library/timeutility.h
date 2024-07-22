/**
*	timeutility.h
*	�����T�u���[�`���W	�w�b�_
*	Copyright (c)Junnichi Tomaru
*/
#ifndef	_TIME_UTILITY_DEFINED
#define	_TIME_UTILITY_DEFINED
#include	<stdint.h>
#include	"userdef.h"
#include	"bios/stime.h"

#define	JSTOFFSET	32400L

time_t	calc_timediff( struct tm *s, struct tm *n );
bool	wt2utc( struct tm *wt, struct tm *utc, long offset );
bool	utc2wt( struct tm *utc, struct tm *wt );

#endif

/* end of timeutility.h */
