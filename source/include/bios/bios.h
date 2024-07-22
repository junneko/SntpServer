/**
*	BIOS関数群
*	Copyright (c)Junnichi Tomaru
*/
#include	<ctype.h>
#include	<string.h>
#include	<avr/eeprom.h>	/* with <avr/io.h> */
#include	<avr/pgmspace.h>
#include	<avr/interrupt.h>	/* for cli,sei */
#include	<avr/wdt.h>
#include	"bios_define.h"
#include	"library/userdef.h"
#include	"library/utility.h"

/* ----- 変数 337byte ----- */
/* --- 割り込み内 2byte --- */
extern volatile word	count1ms;	/* 1msカウンタ 2 */

/* --- 一般 5byte --- */
extern char	keybuf[4];	/* キー状態 4 */
extern byte	keypnt;		/* 最新状態格納位置 1 */

/* --- 送信関係 67byte --- */
extern byte	txbuf[TXBUFSIZE];
extern byte	txp;
extern byte	txct;
extern swbool	siotxflg;	/* 送信中フラグ */

/* --- 受信関係 263byte --- */
extern byte	rxringbuf[RXBUFSIZE];	/* 割り込み用 */
extern byte	rxhp, rxtp, rxct;
extern char	rxbuffer[RXCOMSIZE];	/* 取り出し用 */
extern byte	bufp;
extern word	recv_timer;
extern swbool	recv_en;

/* ----- プロトタイプ宣言 ----- */
void	wait( word time );
word	getcount1ms( void );
void	waitms( word time );

/* --- SIO --- */
void	sio_setstrn( char *buf, char n );
void	sio_setstr( char *buf );
void	sio_setstrc( prog_char *buf );
void	sio_clear( void );
bool	sio_getchar( char *data );
byte	sio_getstr( void );

dword	eep_getipaddr( word addr, dword fix );
void	eep_getstring16( word addr, char *buf, prog_char *fix );
void	eep_getstring32( word addr, char *buf, prog_char *fix );

void	key_check( void );
byte	key_sense( void );
byte	key_input( void );

/* end of bios.h */
