/**
*	IPv4 読み取り専用定数
*	Copyright (c)Junnichi Tomaru
*/
#include	<avr/pgmspace.h>

/* --- 共通 --- */
extern const prog_char	testmac[];
extern const prog_char	nbndflt[];

/* ----- アプリケーション別 ----- */

extern const prog_char	no_nbc[];

/* --- SNTP --- */
extern const prog_char	ntp0[];
extern const prog_char	ntp1[];
extern const prog_char	ntp2[];
extern const prog_char	ntp3[];
extern const prog_char *dfltntp[];
extern const char	*ntpsrv[];

/* end of constantval.h */
