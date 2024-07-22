/**
*	netutility.h
*	ネットワークサブルーチン集	ヘッダ
*	Copyright (c)Junnichi Tomaru
*/
#ifndef	_NET_UTILITY_DEFINED
#define	_NET_UTILITY_DEFINED

#include	"userdef.h"

char	*long2ipstr( dword ipadr, char *buf );
bool	ipstr2bin( char *adrstr, dword *addr );

#endif

/* end of netutility.h */
