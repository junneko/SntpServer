/**
*	KDB-SNTP-SERVER	プロトタイプ宣言
*	Copyright (c)Junnichi Tomaru
*/
#include	"struct.h"


/* ----- 上位プロトコル ----- */

/* http.c */
byte	http_output( int sid );

/* ----- その他 ----- */
/* command.c */
byte	udp_command( void );

/* display.c */
void	disp_time( byte x, byte y, time_st *t );
void	disp_nowtime( void );
void	disp_message1( byte msg );
void	disp_message2( byte msg );
void	disp_notime( byte y );
void	disp_remtime( byte y, time_t time );
void	dhcpdisp( void );
void	disp_eventlog( byte pnt );
void	disp_callog( byte pnt );
void	disp_opetime( void );
void	redraw( void );
void	disp7seg( struct tm *time );
void	dispoff7seg( void );

/* gpsjjy.c */
void	nmea_checksum( char *buf, char *sum );
byte	mtk_init( void );
byte	gps_process( void );
bool	setjsttime( struct tm *t, swbool chk );
byte	jjy_process( void );

/* log.c */
void	update_callog( byte flg );
void	clear_callog( void );
void	update_eventlog( byte evnt );
void	clear_eventlog( void );

/* parameter.c */
void	parameter( void );

/* 7segtimer.c */
swbool	prm_setsegtimer( void );

/* avrntp.c */
void	change_calinterval( int cycle );
word	getcount1ms( void );
dword	make_rand( void );
long	calc_calremtime( void );
long	calc_bcastremtime( void );
void	unsync_seq( void );
void	initeepread( void );

/* end of prottype.h */
