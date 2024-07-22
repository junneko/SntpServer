/**
*	utility.h
*	サブルーチン集		ヘッダ
*	Copyright (c)Junnichi Tomaru
*/
#ifndef	_UTILITY_DEFINED
#define	_UTILITY_DEFINED
#include	"struct_std.h"
#include	"userdef.h"

char	*uctoahz( byte num, char *buf );
char	*uctoaz( byte num, char *buf );
char	*ustoahz( word num, char *buf );
char	*ustoaz( word num, char *buf );
char	*ultoahz( dword num, char *buf );
char	*ultoaz( dword num, char *buf );
char	*ltoaz( long num, char *buf );

word	_atoi( char *buf );
byte	atox( char *buf );
word	atoux( char *buf );
dword	atolx( char *buf );

dword	make_rand( void );
byte	log2x( word x );

word	cnvendian16( word data );
dword	cnvendian32( dword data );

#endif

/* end of utility.h */
