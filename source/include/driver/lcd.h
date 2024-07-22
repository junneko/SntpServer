/*
*	lcd.h
*	LCDコントローラドライバヘッダ
*	Copyright (c)Junichi Tomaru
*/
#ifndef LCD_DEFINED
#define LCD_DEFINED
#include	<avr/io.h>
#include	<avr/pgmspace.h>
#include	"bios/bios_define.h"
#include	"library/userdef.h"

extern void	lcd_setcgram( byte addr, prog_char *code );
extern char	lcd_busy( void );
extern void	lcd_init( void );
extern void	lcd_locate( byte x, byte y );
extern void	lcd_cls( void );
extern void	lcd_dispcursor( byte on );
extern void	lcd_putch( char c );
extern void	lcd_putcode( byte x, byte y, char code );
extern void	lcd_putstr( char *str );
extern void	lcd_lcls( byte line );
extern void	lcd_space( byte x, byte y, char cnt );
extern void	lcd_print( byte x, byte y, char *str );
extern void	lcd_printc( byte x, byte y, const prog_char *pgm_s );
extern void	lcd_curleft( void );

#endif

/* end of lcd.h */
