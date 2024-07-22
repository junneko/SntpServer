/**
*	KDB-BASE BIOS���x���֐��Q
*	Copyright (c)Junnichi Tomaru
*/
#include	"bios/bios.h"

#define	DLM	C_LF	/* LF */

/* ---------- ���ԁE�E�F�C�g���[�`�� ---------- */

/**
*	wait���[�`��
*	12.8MHz��62.5us�P��
*	���荞�݂͓���̂Œ���
*	in	wait��
*	out	�Ȃ�
*/
void	wait( word time )
{
	byte	lpcnt;

	__asm__ __volatile__("\n"
		"CPU_wait_entry%=:\n\t"
		"ldi %0,200\n"
		"CPU_wait_lp%=:\n\t"
		"nop\n\t"
		"dec %0\n\t"
		"brne CPU_wait_lp%=\n\t"
		"sbiw %1,1\n\t"
		"brne CPU_wait_entry%=\n\t"
		:"=&a"(lpcnt)
		:"w"(time)
	);
}


/**
*	1ms�P�ʂ̃J�E���^�l���
*	 in	�Ȃ�
*	out	�J�E���^�l(16bit�l)
*/
word	getcount1ms( void )
{
	word	ret;

	_di( );
	ret = count1ms;
	_ei( );

	return	ret;
}


/**
*	�w��ms�҂�
*	 in	�҂���(ms)
*	out	�Ȃ�
*/
void	waitms( word time )
{
	word	w;

	for( w = getcount1ms( ); ( getcount1ms( ) - w ) < time; ){
		wdt_reset( );	/* WDT�̍X�V */
	}
}


/* ---------- SIO�֘A ---------- */

/* ----- ���M ----- */
/**
*	�R�}���h���M(������)
*	 in	���M������
*	out	�Ȃ�
*/
void	sio_setstrn( char *buf, char n )
{
	if( n >= TXBUFSIZE ){		/* �������� */
		return;
	}
	while( siotxflg == on ){	/* ���M���҂� */
		wdt_reset( );
	}
	siotxflg = on;
	memcpy((char *)txbuf, buf, n );	/* �o�C�i���f�[�^�z���memcpy */
	UDR0 = txbuf[0];	/* �ŏ��̈ꕶ�� */
	txct = n - 1;
	txp = 1;
	UCSR0B |= ( BYTE_BIT_X( UDRIE0 ) | BYTE_BIT_X( TXCIE0 ));	/* TXCI,UDRI on */
}


/**
*	�R�}���h���M(���M�p�o�b�t�@�ɂ��܂�)
*	 in	���M������
*	out	�Ȃ�
*/
void	sio_setstr( char *buf )
{
	byte	len;

	len = (byte)strlen( buf );		/* ���� */
	if( len >= TXBUFSIZE ){
		return;
	}
	while( siotxflg == on ){	/* ���M���҂� */
		wdt_reset( );
	}
	siotxflg = on;
	strcpy((char *)txbuf, buf );
	UDR0 = txbuf[0];	/* �ŏ��̈ꕶ�� */
	txct = len - 1;
	txp = 1;
	UCSR0B |= ( BYTE_BIT_X( UDRIE0 ) | BYTE_BIT_X( TXCIE0 ));	/* TXCI,UDRI on */
}


/**
*	�R�}���h���M(ROM)(���M���I���܂ł̓��b�N�����)
*	 in	���M������
*	out	�Ȃ�
*/
void	sio_setstrc( prog_char *buf )
{
	char	len;

	len = strlen_P( buf );		/* ���� */
	if( len >= TXBUFSIZE ){
		return;
	}
	while( siotxflg == on ){	/* ���M���҂� */
		wdt_reset( );
	}
	siotxflg = on;
	strcpy_P((char *)txbuf, buf );
	UDR0 = txbuf[0];	/* �ŏ��̈ꕶ�� */
	txct = len - 1;
	txp = 1;
	UCSR0B |= ( BYTE_BIT_X( UDRIE0 ) | BYTE_BIT_X( TXCIE0 ));	/* TXCI,UDRI on */
}


/* ----- ��M ----- */
/**
*	��M�N���A
*	 in	�Ȃ�
*	out	�Ȃ�
*/
void	sio_clear( void )
{
	char	c;

	while( sio_getchar( &c ) == TRUE ){
		wdt_reset( );
	}
}


/**
*	�o�b�t�@����P�������(���荞��)
*	 in	�i�[�o�b�t�@�|�C���^
*	out	TRUE:��M����  FALSE:��M�Ȃ�
*/
bool	sio_getchar( char *data )
{
	byte	c;

	_di( );
	c = rxct;
	_ei( );
	if( c == 0 ){		/* ��M�Ȃ� */
		return	FALSE;
	}
	_di( );
	*data = rxringbuf[rxhp];
	rxhp++;
	rxhp &= ( RXBUFSIZE - 1 );
	rxct--;
	_ei( );

	return	TRUE;
}


/**
*	�f���~�^�܂Ŏ�M
*	 in	�Ȃ�
*	out	0:��M�܂� 1:��M���� 2:�o�b�t�@�I�[�o�[
*/
byte	sio_getstr( void )
{
	char	c;
	byte	ret;

	ret = 0;
	if( sio_getchar( &c ) == FALSE ){	/* ��M�Ȃ� */
		return	0;
	}
	if( bufp >= ( RXCOMSIZE - 1 )){	/* �o�b�t�@�e�ʂ𒴂��Ă��܂��� */
		recv_en = off;
		bufp = 0;
		ret = 2;
	}
	else{
		rxbuffer[bufp] = c;
		bufp++;
		if( c == C_LF ){	/* �f���~�^LF */
			rxbuffer[bufp] = C_NULL;
			bufp = 0;
			recv_en = off;
			ret = 1;
		}
	}

	return	ret;
}


/* ---------- EEPROM ---------- */
/**
*	EEPROM����IP�A�h���X�����o��(32bit)
*	 in	addr: �A�h���X�i�[�Ԓn
*		 fix: �f�t�H���g�l
*	out	�A�h���X
*/
dword	eep_getipaddr( word addr, dword fix )
{
	dword	ret;

	EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
	ret = eeprom_read_dword( (uint32_t *)addr );
	if( ret == LD_MAX ){
		ret = fix;
	}

	return	ret;
}


/**
*	EEPROM���當��������o��(16����)
*	 in	addr: �A�h���X�i�[�Ԓn
*		 buf: �i�[��
*		 fix: �f�t�H���g�l
*	out	�Ȃ�
*/
void	eep_getstring16( word addr, char *buf, prog_char *fix )
{
	EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
	eeprom_read_block((uint8_t *)buf, (uint8_t *)addr, 15 );
	*( buf + 15 ) = C_NULL;
	if( isalnum( *( buf + 0 )) == 0 ){
		strcpy_P( buf, fix );
	}
}


/**
*	EEPROM���當��������o��(32����)
*	 in	addr: �A�h���X�i�[�Ԓn
*		 buf: �i�[��
*		 fix: �f�t�H���g�l
*	out	�Ȃ�
*/
void	eep_getstring32( word addr, char *buf, prog_char *fix )
{
	EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
	eeprom_read_block((uint8_t *)buf, (uint8_t *)addr, 31 );
	*( buf + 31 ) = C_NULL;
	if( isalnum( *( buf + 0 )) == 0 ){
		strcpy_P( buf, fix );
	}
}


/* ---------- �L�[���� ---------- */

/**
*	�L�[��Ԃ��`�F�b�N����
*	 in	�Ȃ�
*	out	�Ȃ�
*/
void	key_check( void )
{
	keybuf[keypnt] = _invert( PINB ) & BYTE_MASK_L4;
	keypnt++;
	keypnt &= BYTE_MASK_L2;
}


/**
*	�X�L�����R�[�h���L�[�R�[�h�ϊ�
*/
static byte	scan2keycode( byte scan )
{
	byte	ret;

	if( scan == ENTERKEY_BIT ){		/* SW5 */
		ret = ENTER_KEY;
	}
	else if( scan == RIGHTKEY_BIT ){	/* SW4 */
		ret = RIGHT_KEY;
	}
	else if( scan == DOWNKEY_BIT ){		/* SW3 */
		ret = DOWN_KEY;
	}
	else if( scan == UPKEY_BIT ){		/* SW2 */
		ret = UP_KEY;
	}
	else if( scan == ( RIGHTKEY_BIT + ENTERKEY_BIT )){	/* RIGHT+ENTER */
		ret = LOGCLR_KEY;
	}
	else if( scan == ( UPKEY_BIT + DOWNKEY_BIT )){		/* UP+DOWN */
		ret = LCDEN_KEY;
	}
	else if( scan == ( UPKEY_BIT + RIGHTKEY_BIT )){		/* UP+RIGHT */
		ret = LCDDI_KEY;
	}
	else if( scan == ( UPKEY_BIT + ENTERKEY_BIT )){		/* UP+ENTER */
		ret = TIMEREQ_KEY;
	}
	else if( scan == ( DOWNKEY_BIT + ENTERKEY_BIT )){	/* DOWN+ENTER */
		ret = BCAST_KEY;
	}
	else{
		ret = NO_KEY;
	}

	return	ret;
}


/**
*	�L�[�Z���X
*/
byte	key_sense( void )
{
	byte	keyc, scan;
	static byte	okey;

	scan = keybuf[0];	/* �S�񕪂̓��͂����� */
	scan &= keybuf[1];
	scan &= keybuf[2];
	scan &= keybuf[3];
	if( scan != 0 ){	/* �L�[���͂��� */
		keyc = scan2keycode( scan );	/* �R�[�h�ϊ� */
		if( keyc == okey ){	/* �O��Ɠ��������� */
			keyc = NO_KEY;	/* ���͂��Ȃ����Ƃɂ��� */
		}
		else{
			okey = keyc;
		}
	}
	else{			/* ���͂Ȃ� */
		okey = keyc = NO_KEY;
	}

	return	keyc;
}


/**
*	�L�[����(�҂�)
*	 in	�Ȃ�
*	out	�L�[�R�[�h
*/
byte	key_input( void )
{
	byte	keyc;
	word	wt, wt2, now;

	wt = wt2 = getcount1ms( );
	_forever{
		wdt_reset( );		/* WDT�̍X�V */
		now = getcount1ms( );
		if(( now - wt2 ) >= 16U ){	/* 16ms�Ń`�F�b�N */
			wt2 = now;
			key_check( );
		}
		keyc = key_sense( );	/* �L�[�Z���X */
		if( keyc != NO_KEY ){
			break;
		}
		else if(( now - wt ) >= 10000U ){
			keyc = KEY_TOUT;
			break;
		}
	}

	return	keyc;
}


/* end of bios.c */
