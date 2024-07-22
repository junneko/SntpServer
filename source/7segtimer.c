/**
*	7segtimer.c
*	
*	Copyright (c)Junnichi Tomaru
*/
#include	"include/avrntp.h"

timer_st	on_tmp = { 0, 0, 0, 0 };
timer_st	off_tmp = { 0, 0, 0, 0 };


/* -------------------- ON/OFF���Ԑݒ� -------------------- */


/**
*	�^�C�}�����𕶎���ɂ���
*	in	tm	�^�C�}�\����
*		buf	�i�[��o�b�t�@
*	out	�Ȃ�
*/
static void	timer2str( timer_st *tm, char *tmbuf )
{
	char	buf[4];

	strcpy_P( tmbuf, PSTR( "  :  :  " ));
	uctoaz( tm->hour, buf );	/* �� */
	strncpy( tmbuf + 0, buf + 1, 2 );
	uctoaz( tm->min, buf );		/* �� */
	strncpy( tmbuf + 3, buf + 1, 2 );
	uctoaz( tm->sec, buf );		/* �b */
	strncpy( tmbuf + 6, buf + 1, 2 );
}


/**
*	��������^�C�}�����ɂ���
*	in	buf	������
*		tm	�^�C�}�\����
*	out	on:�ݒ�OK off:�͈͊O
*/
static swbool	str2timer( char *buf, timer_st *tm )
{
	timer_st	t;

	t = *tm;	/* �t���O�����Ȃ��悤�� */
	t.sec = _atoi( buf + 6 );	/* �b */
	if( t.sec > 59 ){
		return	off;
	}
	*( buf + 5 ) = C_NULL;
	t.min = _atoi( buf + 3 );	/* �� */
	if( t.min > 59 ){
		return	off;
	}
	*( buf + 2 ) = C_NULL;
	t.hour = _atoi( buf + 0 );	/* �� */
	if( t.hour > 23 ){
		return	off;
	}
	*tm = t;	/* �̗p */

	return	on;
}


/**
*	��v���镶���̈ʒu��T��
*/
static char	serchchar( char c )
{
	if(( c >= '0' ) && ( c <= '9' )){
		return	c - '0';
	}
	else if(( c >= 'A' ) && ( c <= 'F' )){
		return	c - 'A' + 10;
	}
	else{
		return	0;
	}
}


const prog_char	prmmax[] = { 2, 9, 0, 5, 9, 0, 5, 9 };

/**
*	�����ݒ�
*	 in	y	�J�n�x���W
*		timebuf	�ݒ��(xx:xx:xx)
*	out	on:�ݒ肳�ꂽ off:�^�C���A�E�g
*/
static swbool	settime( char y, char *timebuf )
{
	char	key, px, c;
	char	*pt;
	int	p, ptr;
	swbool	ret;

	p = c = 0;
	px = 8;		/* �����ʒu */
	lcd_print( px, y, timebuf );	/* �����\�� */
	*( timebuf + 8 ) = C_NULL;
	ptr = serchchar( *timebuf );	/* �J�[�\���ʒu�̕������� */
	_forever{			/* ENT�������ςȂ��΍� */
		wdt_reset( );		/* WDT�̍X�V */
		if( bit_is_set( PIND,PIND2 ) ){
			break;
		}
	}
	lcd_dispcursor( 1 );		/* �J�[�\���\�� */
	ret = off;
	_forever{
		pt = timebuf + p;;
		lcd_locate( px, y );
		if( ptr <= pgm_read_byte( prmmax + p )){
			c = ptr + '0';
		}
		lcd_putch( c );
		lcd_curleft( );		/* �i��ł��܂��̂Ŗ߂� */
		key = key_input( );
		if( key == UP_KEY ){	/* �l���グ�� */
			ptr++;
			if( ptr <= pgm_read_byte( prmmax + p )){	/* �ݒ��� */
				c = ptr + '0';
			}
			else{
				ptr = 0;
				c = '0';
			}
			*pt = c;
		}
		else if( key == DOWN_KEY ){	/* �l�������� */
			if( ptr == 0 ){
				ptr = pgm_read_byte( prmmax + p );	/* �ݒ��� */
			}
			else{
				ptr--;
			}
			c = ptr + '0';
			*pt = c;
		}
		else if( key == RIGHT_KEY ){	/* �J�[�\���E�ֈړ� */
			p++;
			px++;
			if( isalnum( *( timebuf + p ) ) == 0 ){	/* �p�����ł͂Ȃ�(:) */
				p++;
				px++;
			}
			if( p >= 8 ){	/* �ݒ蒷�������� */
				p = 0;
				px = 8;
			}
			ptr = serchchar( *( timebuf + p ) );
		}
		else if( key == ENTER_KEY ){
			ret = on;
			break;
		}
		else if( key == KEY_TOUT ){
			break;
		}
	}
	lcd_dispcursor( 0 );		/* �J�[�\��OFF */

	return	ret;
}


/**
*	���ԃZ�b�g
*	 in	�Ȃ�
*	out	on:�ݒ�I��� off:�^�C���A�E�g
*/
static swbool	prm_settimer( void )
{
	char	onbuf[16], offbuf[16];

	timer2str( &on_tmp, onbuf );
	timer2str( &off_tmp, offbuf );

	/* --- �����\�� --- */
	lcd_cls( );
	lcd_printc( 1, 0, PSTR( "ONTIME" ));
	lcd_print( 8, 0, onbuf );
	lcd_printc( 0, 1, PSTR( "OFFTIME" ));
	lcd_print( 8, 1, offbuf );

	/* --- ON�����ݒ� --- */
	if( settime( 0, onbuf ) == off ){	/* �ҏW */
		return	off;
	}
	if( str2timer( onbuf, &on_tmp ) == off ){
		return	off;
	}

	/* --- OFF�����ݒ� --- */
	if( settime( 1, offbuf ) == off ){	/* �ҏW */
		return	off;
	}
	if( str2timer( offbuf, &off_tmp ) == off ){
		return	off;
	}

	return	on;
}


/* -------------------- �j���ݒ� -------------------- */

const prog_char tmrwday[] = "SMTWTFS";

/**
*	�j���t���O��������
*/
static void	wdflg2str( byte wd, char *wdbuf )
{
	char	i, b;
	char	*p;

	p = wdbuf;
	b = wd;
	for( i = 0; i < 7; i++, p++ ){
		if( BYTE_BIT0_CHK( b ) ){
			*p = pgm_read_byte( tmrwday + i );
		}
		else{
			*p = ' ';
		}
		b >>= 1;
	}
	*( wdbuf + 7 ) = C_NULL;
}


/**
*	�j���ݒ�
*	 in	y	�J�n�x���W
*		wdflg	�t���O
*		wdbuf	�ݒ��(xxxxxxx)
*	out	on:�ݒ肳�ꂽ off:�^�C���A�E�g
*/
static swbool	setwday( char y, byte *wdflg, char *wdbuf )
{
	char	key, px, c, flg;
	int	p;
	swbool	ret;

	p = c = 0;
	flg = *wdflg;
	px = 9;		/* �����ʒu */
	lcd_print( px, y, wdbuf );	/* �����\�� */
	_forever{			/* ENT�������ςȂ��΍� */
		wdt_reset( );		/* WDT�̍X�V */
		if( bit_is_set( PIND,PIND2 ) ){
			break;
		}
	}
	lcd_dispcursor( 1 );		/* �J�[�\���\�� */
	ret = off;
	_forever{
		lcd_locate( px, y );	/* �J�[�\���ʒu */
		if( flg & ( 1 << p )){	/* �L�� */
			c = pgm_read_byte( tmrwday + p );
		}
		else{
			c = ' ';
		}
		lcd_putch( c );
		lcd_curleft( );		/* �J�[�\���i��ł��܂��̂Ŗ߂� */
		key = key_input( );
		if( key == UP_KEY ){	/* �l��ς��� */
			flg ^= ( 1 << p );
		}
		else if( key == RIGHT_KEY ){	/* �J�[�\���E�ֈړ� */
			p++;
			px++;
			if( p >= 7 ){	/* �ݒ蒷�������� */
				p = 0;
				px = 9;
			}
		}
		else if( key == ENTER_KEY ){	/* ENT:�̗p */
			*wdflg = flg;
			ret = on;
			break;
		}
		else if( key == KEY_TOUT ){	/* �^�C���A�E�g */
			break;
		}
	}
	lcd_dispcursor( 0 );		/* �J�[�\��OFF */

	return	ret;
}


/**
*	�j���ݒ�
*	 in	�Ȃ�
*	out	on:�ݒ�I���
*/
static swbool	prm_setwday( void )
{
	char	onbuf[8], offbuf[8];

	wdflg2str( on_tmp.wday, onbuf );
	wdflg2str( off_tmp.wday, offbuf );

	/* --- �����\�� --- */
	lcd_cls( );
	lcd_printc( 0, 0, PSTR( "ON  WDAY:" ));
	lcd_print( 9, 0, onbuf );
	lcd_printc( 0, 1, PSTR( "OFF WDAY:" ));
	lcd_print( 9, 1, offbuf );

	/* --- ON�ݒ� --- */
	if( setwday( 0, &on_tmp.wday, onbuf ) == off ){
		return	off;
	}
	/* --- OFF�ݒ� --- */
	if( setwday( 1, &off_tmp.wday, offbuf ) == off ){
		return	off;
	}

	return	on;
}


/**
*	�^�C�}�ҏW
*	 in	�Ȃ�
*	out	on:�ʏ��ʂ�
*/
swbool	prm_setsegtimer( void )
{
	swbool	ret;

	on_tmp = on_time;		/* �ݒ�ɃR�s�[ */
	off_tmp = off_time;
	if( prm_settimer( ) == off ){	/* ���Ԑݒ� */
		return	on;		/* �^�C���A�E�g */
	}
	if( prm_setwday( ) == on ){	/* �L���j��(�J��Ԃ��̂ݗL��) */
		on_time = on_tmp;	/* �ۑ����� */
		off_time = off_tmp;
		EEP_READYWAIT( );
		eeprom_update_dword( EEP_TIMON, *((dword *)&on_time ));
		EEP_READYWAIT( );
		eeprom_update_dword( EEP_TIMOFF, *((dword *)&off_time ));
		ret = off;
	}
	else{
		ret = on;
	}

	return	ret;
}


/* end of parameter.c */
