/**
*	lcd.c
*	LCD�h���C�o�i20���~4�s�Ή��C���^�[�t�F�[�X��4�r�b�g�f�[�^�j
*	PORT C		b0- D4
*			b1- D5
*			b2- D6
*			b3- D7
*			b4- R/~W
*			b5- RS
*	PORT D		b4- E
*	Copyright (c)Junnichi Tomaru
*/
#include	"driver/lcd.h"

/* ----- CG RAM�p�f�[�^ ----- */
const prog_char cg0[8] = { 0x17, 0x15, 0x15, 0x15, 0x15, 0x15, 0x17, 0 };	/* ADDR 0 10 */
const prog_char cg1[8] = { 0x12, 0x12, 0x12, 0x12, 0x12, 0x12, 0x12, 0 };	/* ADDR 1 11 */
const prog_char cg2[8] = { 0x17, 0x11, 0x11, 0x17, 0x14, 0x14, 0x17, 0 };	/* ADDR 2 12 */
const prog_char cg3[8] = { 0x17, 0x11, 0x11, 0x17, 0x11, 0x11, 0x17, 0 };	/* ADDR 3 13 */
const prog_char cg4[8] = { 0x15, 0x15, 0x15, 0x17, 0x11, 0x11, 0x11, 0 };	/* ADDR 4 14 */
const prog_char cg5[8] = { 0x17, 0x14, 0x14, 0x17, 0x11, 0x11, 0x17, 0 };	/* ADDR 5 15 */
const prog_char cg6[8] = { 0x17, 0x14, 0x14, 0x17, 0x15, 0x15, 0x17, 0 };	/* ADDR 6 16 */
const prog_char cg7[8] = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0 };	/* ADDR 7 dummy */
const prog_char *cgram[] PROGMEM = { cg0, cg1, cg2, cg3, cg4, cg5, cg6, cg7 };

/* ----- �O���֐� ----- */
extern	void	waitms( word time );
extern	void	wait( word time );

/* ----- �O���ϐ� ----- */
extern swbool	lcden;		/* �t������ */

#define	LCD_ODATA	PORTC

#define ASSERT_RS()	BYTE_BIT6_ON( PORTC )
#define ASSERT_E()	BYTE_BIT4_ON( PORTC )

#define NEGATE_RS()	BYTE_BIT6_OFF( PORTC )
#define NEGATE_E()	BYTE_BIT4_OFF( PORTC )

/* ---------- �჌�x���֐� ---------- */

/**
*	�f�[�^���Z�b�g
*	 in	�f�[�^
*	out	�Ȃ�
*/
void	write_data( byte data )
{
	byte	dat;

	dat = LCD_ODATA & BYTE_MASK_U4;
	dat |= data & BYTE_MASK_L4;
	LCD_ODATA = dat;
}

/**
*	LCD�Ƀf�[�^����
*	 in	�f�[�^
*	out	�Ȃ�
*/
void	lcd_write( unsigned char data )
{
	write_data( data >> 4 );
	ASSERT_E( );
	wait( WAIT230US );	/* tw */
	NEGATE_E( );
	write_data( data );
	ASSERT_E( );
	wait( WAIT230US );	/* tw */
	NEGATE_E( );
}

/**
*	�C���X�g���N�V��������
*	 in	�f�[�^
*	out	�Ȃ�
*/
void	lcd_writeir( unsigned char data )
{
	NEGATE_RS( );
	lcd_write( data );
}

/**
*	�f�[�^���W�X�^����
*	 in	�f�[�^
*	out	�Ȃ�
*/
void	lcd_writedr( unsigned char data )
{
	ASSERT_RS( );
	lcd_write( data );
}

/**
*	�C���X�g���N�V��������(4�r�b�g)
*	 in	�f�[�^
*	out	�Ȃ�
*/
void	lcd_writeir4( unsigned char data )
{
	NEGATE_RS( );
	write_data( data );
	asm( "nop" );
	ASSERT_E( );
	wait( WAIT230US );	/* tw */
	NEGATE_E( );
}

/**
*	�w��CGRAM�ɕ����R�[�h�Z�b�g
*	 in	addr:CGRAM�A�h���X(0�`7)
*		code:�����f�[�^�z��
*	out	�Ȃ�
*/
void	lcd_setcgram( byte addr, prog_char *code )
{
	byte	i;

	i = ( addr << 3 ) & 0x38;
	lcd_writeir( 0x40 | i );	/* �������݊J�n�A�h���X */
	for( i = 0; i < 8; i++, code++ ){
		wait( WAIT40US );	/* tADD */
		lcd_writedr( pgm_read_byte( code ) );
	}
}

/* ---------- �����x���֐� ---------- */

/**
*	LCD������
*	 in	�Ȃ�
*	out	�Ȃ�
*/
void	lcd_init( void )
{
	byte	i;

	if( lcden == off ){
		return;
	}
	waitms( 40 );		/* min 15ms vcc>4.5V */
	lcd_writeir4( 0x03 );
	wait( WAIT4100US );	/* min 4.1ms */
	lcd_writeir4( 0x03 );
	wait( WAIT100US );	/* min 100us */
	lcd_writeir4( 0x03 );
	wait( WAIT40US );
	lcd_writeir4( 0x02 );	/* Return Home */
	waitms( 2 );		/* min 1.62ms */
	lcd_writeir( 0x28 );	/* Set function Data length 4bits */
	wait( WAIT40US );
	lcd_writeir( 0x08 );	/* Display off, cursor off, blink off */
	wait( WAIT40US );
	lcd_writeir( 0x01 );	/* Clear display */
	waitms( 2 );		/* min 1.62ms */
	lcd_writeir( 0x06 );	/* Entry mode : cursor increment */
	wait( WAIT40US );
	lcd_writeir( 0x0C );	/* Display on, cursor off, blink off */
	for( i = 0; i < 8; i++ ){	/* CGRAM�]�� */
		lcd_setcgram( i, (prog_char *)pgm_read_word( cgram + i ));
	}
}

/**
*	�J�[�\���ʒu�w��
*	 in	x:��ʒu
*		y:�s�ʒu
*	out	�Ȃ�
*/
void	lcd_locate( byte x, byte y )
{
	char	addr;

	if( lcden == off ){
		return;
	}
	if( y == 0 ){
		addr = 0x00 + x;
	}
	else if( y == 1 ){
		addr = 0x40 + x;
	}
	else if( y == 2 ){
		addr = 0x14 + x;
	}
	else{
		addr = 0x54 + x;
	}
	wait( WAIT40US );
	lcd_writeir( 0x80 | addr );	/* Set DD RAM address */
}

/**
*	��ʃN���A
*	 in	�Ȃ�
*	out	�Ȃ�
*/
void	lcd_cls( void )
{
	if( lcden == off ){
		return;
	}
	wait( WAIT40US );
	lcd_writeir( 0x01 );
	waitms( 2 );		/* min 1.62ms */
}

/**
*	�J�[�\���\���E��\��
*	 in	0:��\�� ���̑�:�\��
*	out	�Ȃ�
*/
void	lcd_dispcursor( byte on )
{
	if( lcden == off ){
		return;
	}
	wait( WAIT40US );
	lcd_writeir( 0xc | ( on ? 0x02 : 0 ) );
}

/**
*	�ꕶ���\��
*	 in	�����f�[�^
*	out	�Ȃ�
*/
void	lcd_putch( char c )
{
	if( lcden == off ){
		return;
	}
	wait( WAIT40US );
	lcd_writedr( c );
}

/**
*	�w��ʒu�Ɉꕶ���\���i�L�����N�^�R�[�h�w��j
*	 in	   x:��ʒu
*		   y:�s�ʒu
*		code:�f�[�^
*	out	�Ȃ�
*/
void	lcd_putcode( byte x, byte y, char code )
{
	if( lcden == off ){
		return;
	}
	lcd_locate( x, y );
	wait( WAIT40US );
	lcd_writedr( code );
}

/**
*	������\��
*	 in	������f�[�^
*	out	�Ȃ�
*/
void	lcd_putstr( char *str )
{
	if( lcden == off ){
		return;
	}
	while( *str != C_NULL ){
		lcd_putch( *( str++ ) );
	}
}

/**
*	�ʒu���w�肵�ĕ������\������
*	 in	  x:��ʒu
*		  y:�s�ʒu
*		str:������f�[�^
*	out	�Ȃ�
*/
void	lcd_print( byte x, byte y, char *str )
{
	if( lcden == off ){
		return;
	}
	lcd_locate( x, y );
	lcd_putstr( str );
}

/**
*	�ʒu���w�肵�ČŒ蕶�����\������
*	 in	  x:��ʒu
*		  y:�s�ʒu
*		num:������f�[�^�ʒu
*	out	�Ȃ�
*/
void	lcd_printc( byte x, byte y, const prog_char *pgm_s )
{
	char	c;

	if( lcden == off ){
		return;
	}
	lcd_locate( x, y );
	while(( c = pgm_read_byte( pgm_s )) != C_NULL ){
		lcd_putch( c );
		pgm_s++;
	}
}

/**
*	�w��ʒu����w�萔�̕���������
*	 in	  x:��ʒu
*		  y:�s�ʒu
*		cnt:������:
*/
void	lcd_space( byte x, byte y, char cnt )
{
	byte	i;

	if( lcden == off ){
		return;
	}
	lcd_locate( x, y );
	for( i = 0; i < cnt; i++ ){
		lcd_putch( ' ' );
	}
}

/**
*	��s�N���A
*	 in	�N���A����s
*	out	�Ȃ�
*/
void	lcd_lcls( byte line )
{
	if( lcden == off ){
		return;
	}
	lcd_space( 0, line, 16 );
}

/**
*	�J�[�\�����P�߂�
*	 in	�Ȃ�
*	out	�Ȃ�
*/
void	lcd_curleft( void )
{
	if( lcden == off ){
		return;
	}
	wait( WAIT40US );
	lcd_writeir( 0x10 );	/* �J�[�\���� */
}

/* end of lcd.c */
