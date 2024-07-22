/**
*	BIOS�֐��Q
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

/* ----- �ϐ� 337byte ----- */
/* --- ���荞�ݓ� 2byte --- */
extern volatile word	count1ms;	/* 1ms�J�E���^ 2 */

/* --- ��� 5byte --- */
extern char	keybuf[4];	/* �L�[��� 4 */
extern byte	keypnt;		/* �ŐV��Ԋi�[�ʒu 1 */

/* --- ���M�֌W 67byte --- */
extern byte	txbuf[TXBUFSIZE];
extern byte	txp;
extern byte	txct;
extern swbool	siotxflg;	/* ���M���t���O */

/* --- ��M�֌W 263byte --- */
extern byte	rxringbuf[RXBUFSIZE];	/* ���荞�ݗp */
extern byte	rxhp, rxtp, rxct;
extern char	rxbuffer[RXCOMSIZE];	/* ���o���p */
extern byte	bufp;
extern word	recv_timer;
extern swbool	recv_en;

/* ----- �v���g�^�C�v�錾 ----- */
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
