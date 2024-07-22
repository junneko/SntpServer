/**
*	parameter.c
*	�p�����[�^�ݒ�
*	Copyright (c)Junnichi Tomaru
*/
#include	"include/avrntp.h"

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

/**
*	�����ݒ�
*	 in	x	�J�n�w���W
*		y	�J�n�x���W
*		setbuf	�ݒ�o�b�t�@
*		l	�ݒ蒷��
*		hex	on:16�i off:10�i
*	out	on:�ݒ肳�ꂽ off:�^�C���A�E�g
*/
swbool	setstring( byte x, byte y, char *setbuf, byte l, swbool hex )
{
	byte	key, px, c, max;
	char	*pt;
	int	p, ptr;
	swbool	ret;

	p = c = 0;
	px = x;
	lcd_print( x, y, setbuf );	/* �����\�� */
	*( setbuf + l ) = C_NULL;
	ptr = serchchar( *setbuf );	/* �J�[�\���ʒu�̕������� */
	_forever{			/* ENT�������ςȂ��΍� */
		wdt_reset( );		/* WDT�̍X�V */
		if( BYTE_BIT3_CHK( PINB ) ){
			break;
		}
	}
	lcd_dispcursor( 1 );		/* �J�[�\���\�� */
	ret = off;
	max = ( hex == on )? 16: 10;
	_forever{
		pt = setbuf + p;
		lcd_locate( px, y );
		if(( ptr >= 0 ) && ( ptr <= 9 )){
			c = ptr + '0';
		}
		else{
			c = ptr - 10 + 'A';
		}
		lcd_putch( c );
		lcd_curleft( );			/* �i��ł��܂��̂Ŗ߂� */
		key = key_input( );
		if( key == UP_KEY ){		/* �l���グ�� */
			ptr++;
			if( ptr >= max ){
				ptr = 0;
			}
			if(( ptr >= 0 ) && ( ptr <= 9 )){
				c = ptr + '0';
			}
			else{
				c = ptr - 10 + 'A';
			}
			*pt = c;
		}
		else if( key == DOWN_KEY ){	/* �l�������� */
			ptr--;
			if( ptr < 0 ){
				ptr = max - 1;
			}
			if(( ptr >= 0 ) && ( ptr <= 9 )){
				c = ptr + '0';
			}
			else{
				c = ptr - 10 + 'A';
			}
			*pt = c;
		}
		else if( key == RIGHT_KEY ){	/* �J�[�\���E�ֈړ� */
			p++;
			px++;
			if( isalnum( *( setbuf + p ) ) == 0 ){	/* �p�����ł͂Ȃ� */
				p++;
				px++;
			}
			if( p >= l ){		/* �ݒ蒷�������� */
				p = 0;
				px = x;
			}
			ptr = serchchar( *( setbuf + p ) );
		}
		else if( key == ENTER_KEY ){
			ret = on;
			break;
		}
		else if( key == KEY_TOUT ){
			break;
		}
	}
	lcd_dispcursor( 0 );

	return	ret;
}

/**
*	���ڑI��
*	 in	now: ���݈ʒu
*		max: ���ڐ�
*		key: �����ꂽ�L�[
*	out	0-max:�I�� 255:ENTER
*/
byte	selectitem( byte now, byte max, byte *key )
{
	byte	pg;

	pg = now;
	*key = key_input( );
	if( *key == UP_KEY ){		/* SW2 */
		pg++;
		if( pg >= max ){
			pg = 0;
		}
	}
	else if( *key == DOWN_KEY ){	/* SW3 */
		if( pg == 0 ){
			pg = max - 1;
		}
		else{
			pg--;
		}
	}

	return	pg;
}

/* ---------- �p�����[�^�ݒ� ---------- */

#define	PAGE	26	/* �S�y�[�W�� */

/* ---------- �ǂݎ���p ---------- */
/* ----- ���j���[�E�T�u���j���[ ----- */
/*			      "                "*/
const prog_char	prmmenu00[] = "FIX IP ADDRESS";
const prog_char	prmmenu01[] = "FIX SUBNETMASK";
const prog_char	prmmenu02[] = "FIX DFLT GATEWAY";
const prog_char	prmmenu03[] = "FIX DNS SERVER";
const prog_char	prmmenu04[] = "DHCP ENABLE";
const prog_char	prmmenu05[] = "HTTP PORT(Web)";
const prog_char	prmmenu06[] = "ARP REQ TIMEOUT";
const prog_char	prmmenu07[] = "BCAST ADDRESS";
const prog_char	prmmenu08[] = "BCAST INTERVAL";
const prog_char	prmmenu09[] = "DISP TIME ZONE";
const prog_char	prmmenu10[] = "NTP REQ TIMEOUT";
const prog_char	prmmenu11[] = "ADJUST WIDTH";
const prog_char	prmmenu12[] = "NTP SLEW ";
const prog_char	prmmenu13[] = "GPS BAUDRATE";
const prog_char	prmmenu14[] = "GPS MODULE TYPE";
const prog_char	prmmenu15[] = "NMEA SENTENSE";
const prog_char	prmmenu16[] = "ADJUST PPS EDGE";
const prog_char	prmmenu17[] = "NMEA ADJUST SEC";
const prog_char	prmmenu18[] = "GPS NODATA TIMER";
const prog_char	prmmenu19[] = "GPS UNSYNC TIMER";
const prog_char	prmmenu20[] = "NTP MAXPOLL(2^n)";
const prog_char	prmmenu21[] = "7SEG DISP ENABLE";
const prog_char	prmmenu22[] = "7SEG DISP TIMER";
const prog_char	prmmenu23[] = "MAC ADDRESS";
const prog_char	prmmenu24[] = "ADJUST MODE";
const prog_char	prmmenu25[] = "QUIT TO MAIN";
const prog_char *prmmenu[] PROGMEM = {
	 prmmenu00, prmmenu01, prmmenu02, prmmenu03, prmmenu04,
	 prmmenu05, prmmenu06, prmmenu07, prmmenu08, prmmenu09,
	 prmmenu10, prmmenu11, prmmenu12, prmmenu13, prmmenu14,
	 prmmenu15, prmmenu16, prmmenu17, prmmenu18, prmmenu19,
	 prmmenu20, prmmenu21, prmmenu22, prmmenu23, prmmenu24,
	 prmmenu25
};

/* ---------- �T�u�֐� ---------- */

/**
*	���j���[�\��
*	 in	�y�[�W�ԍ�
*	out	�Ȃ�
*/
static void	disp_menu( byte page )
{
	char	buf[4];

	lcd_cls( );
	lcd_printc( 0, 0, PSTR( "-- MENU --" ));
	lcd_printc( 0, 1, (char *)pgm_read_word( prmmenu + page ));
	uctoaz( page + 1, buf );
	lcd_print( 11, 0, buf + 1 );	/* NOWOAGE */
	lcd_putcode( 13, 0, '/' );
	uctoaz( PAGE, buf );
	lcd_putstr( buf + 1 );		/* MAXPAGE */
}

/**
*	�T�u���j���[�\��
*	 in	���b�Z�[�W�ԍ�
*	out	�Ȃ�
*/
static void	disp_submenu( byte msg )
{
	lcd_cls( );
	lcd_printc( 0, 0, (prog_char *)pgm_read_word( prmmenu + msg ));
}

/**
*	�A�h���X�ݒ�
*	 in	addr: �i�[��
*	out	on:�ʏ��ʂ�
*/
swbool	prm_setaddr( word addr )
{
	char	buf[16];
	dword	dw;

	EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
	dw = eeprom_read_dword((uint32_t *)addr );
	long2ipstr( dw, buf );
	if( setstring( 1, 1, buf, 15, off ) == off ){	/* �ҏW�^�C���A�E�g */
		return	on;
	}
	if( ipstr2bin( buf, (dword *)&dw ) == TRUE ){
		EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
		eeprom_update_dword((uint32_t *)addr, dw );
	}

	return	off;
}

/**
*	�I�����ڐݒ�
*	 in	val: �ݒ肷�����
*		max: �A�C�e����
*		ptr: �\�����ڔz��
*	out	on:�ʏ��ʂ�
*/
swbool	prm_selitem( byte *val, byte max, prog_char *ptr )
{
	byte	itm, key;
	swbool	ret;

	itm = *val;
	for( ret = on; ; ){
		lcd_lcls( 1 );
		lcd_printc( 0, 1, (char *)pgm_read_word( ptr + itm ));	/* ���� */
		itm = selectitem( itm, max, &key );
		if( key == KEY_TOUT ){
			break;
		}
		else if( key == ENTER_KEY ){	/* ENTER */
			*val = itm;
			ret = off;
			break;
		}
	}

	return	ret;
}

/* ---------- �ݒ�֐� ---------- */

/**
*	IP�A�h���X�ݒ�
*	 in	�Ȃ�
*	out	off:�ʏ��ʂ�
*/
static swbool	prm_setipaddr( void )
{
	return	prm_setaddr( EEP_IPADDR );
}

/**
*	�T�u�l�b�g�}�X�N�ݒ�
*	 in	�Ȃ�
*	out	off:�ʏ��ʂ�
*/
static swbool	prm_setmask( void )
{
	return	prm_setaddr( EEP_NETMASK );
}

/**
*	�Q�[�g�E�F�C�ݒ�
*	 in	�Ȃ�
*	out	off:�ʏ��ʂ�
*/
static swbool	prm_setgateway( void )
{
	return	prm_setaddr( EEP_GATEWAY );
}

/**
*	DNS�T�[�o�ݒ�
*	 in	�Ȃ�
*	out	off:�ʏ��ʂ�
*/
static swbool	prm_setdnsserver( void )
{
	return	prm_setaddr( EEP_DNSP );
}

const prog_char	endis00[] = "DISABLE";		/* ���� */
const prog_char	endis01[] = "ENABLE";		/* �L�� */
const prog_char *endis[] PROGMEM = { endis00, endis01 };

/**
*	DHCP�g�p�ݒ�
*	 in	�Ȃ�
*	out	on:�ʏ��ʂ� off:�ݒ胁�j���[��
*/
static swbool	prm_setdhcpuse( void )
{
	byte	pg, key;
	swbool	ret;
	word	wtmp;

	disp_submenu( 4 );
	EEP_READYWAIT( );			/* �A�N�Z�X�\�܂ő҂� */
	wtmp = eeprom_read_word( EEP_DHCP );
	pg = ( WORD_BIT15_CHK( wtmp ) == 0U )? 0: 1;	/* 0:DISABLE 1:ENABLE */
	lcd_printc( 0, 1, (char *)pgm_read_word( endis + pg ));	/* ���� */
	for( ret = on; ; ){
		pg = selectitem( pg, 2, &key );
		if( key == KEY_TOUT ){
			break;
		}
		else if( key == ENTER_KEY ){	/* ENTER */
			if( pg == 0 ){		/* DHCP DISABLE */
				dhcp_mode = DHCP_ABORT;
				myipaddr = eep_getipaddr( EEP_IPADDR, IPADDR );		/* IP�A�h���X�ݒ� */
				netmask = eep_getipaddr( EEP_NETMASK, NETMASK );	/* �l�b�g�}�X�N�ݒ� */
				gateway = eep_getipaddr( EEP_GATEWAY, GATEWAY );	/* �f�t�H���g�Q�[�g�E�F�C�ݒ� */
				dns_server = eep_getipaddr( EEP_DNSP, DNSPSRV );	/* DNS�T�[�o */
				WORD_BIT11_OFF( opemode );	/* DHCP OFF */
				WORD_BIT15_OFF( wtmp );		/* DHCP OFF */
			}
			else{			/* DHCP ENABLE */
				dhcp_mode = DHCP_INIT;
				dinterval = 60U;
				myipaddr = netmask = 0;
				gateway = dns_server = 0;
				WORD_BIT11_ON( opemode );	/* DHCP ON */
				WORD_BIT15_ON( wtmp );		/* DHCP ON */
			}
			EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
			eeprom_update_word( EEP_DHCP, wtmp );
			ret = off;
			break;
		}
		lcd_lcls( 1 );
		lcd_printc( 0, 1, (char *)pgm_read_word( endis + pg ));	/* ���� */
	}

	return	ret;
}

/**
*	HTTP�|�[�g�ԍ��ݒ�
*	 in	�Ȃ�
*	out	on:�ʏ��ʂ�
*/
static swbool	prm_sethttpport( void )
{
	char	buf[8];

	lcd_printc( 3, 1, PSTR( "PORT:     " ));
	lcd_print( 8, 1, ustoaz( http_port, buf ));
	if( setstring( 8, 1, buf, 5, off ) == off ){	/* �ҏW�^�C���A�E�g */
		return	on;
	}
	http_port = _atoi( buf );
	EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
	eeprom_update_word((uint16_t *)EEP_HTTP_PORT, http_port );

	return	off;
}

/**
*	ARP�ݒ�
*	 in	�Ȃ�
*	out	on:�ʏ��ʂ�
*/
static swbool	prm_setarptimeout( void )
{
	char	buf[8];

	lcd_printc( 1, 1, PSTR( "TIMEOUT:     ms" ));
	lcd_print( 9, 1, ustoaz( arp_reqtimeout, buf ));
	if( setstring( 9, 1, buf, 5, off ) == off ){	/* �ҏW�^�C���A�E�g */
		return	on;
	}
	arp_reqtimeout = _atoi( buf );
	EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
	eeprom_update_word((uint16_t *)EEP_ARPREQTOUT, arp_reqtimeout );

	return	off;
}

/**
*	�����z�M�ݒ�
*	 in	�Ȃ�
*	out	off:�ʏ��ʂ�
*/
static swbool	prm_setbroadcast( void )
{
	return	prm_setaddr( EEP_NTPBCAST );
}

/**
*	�����z�M�Ԋu�ݒ�
*	 in	�Ȃ�
*	out	on:�ʏ��ʂ�
*/
static swbool	prm_setbcinterval( void )
{
	char	buf[8];

	lcd_printc( 0, 1, PSTR( "INTERVAL:     s" ));
	lcd_print( 9, 1, ustoaz( binterval, buf ));
	if( setstring( 9, 1, buf, 5, off ) == off ){	/* �ҏW�^�C���A�E�g */
		return	on;
	}
	binterval = _atoi( buf );
	EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
	eeprom_update_word((uint16_t *)EEP_NTPBITBL, binterval );

	return	off;
}

/* ----- TIME ZONE ----- */
const prog_char	tz00[] = "JST(UTC+9:00)";	/* Japan Std Time(���{�W������) */
const prog_char	tz01[] = "KST(UTC+9:00)";	/* Korea Standard Time (�؍��W������) */
const prog_char	tz02[] = "CCT(UTC+8:00)";	/* China Coastal Time(�����p�ݎ���) */
const prog_char	tz03[] = "UTC(UTC 0:00)";	/* ���E�W���� */
const prog_char	tz04[] = "PST(UTC-8:00)";	/* Pacific Std Time(�A�����J�����m�W������) */
const prog_char	tz05[] = "HDT(UTC-9:00)";	/* Hawaii/Alaska Daylight Time(�n���C/�A���X�J�Ď���) */
const prog_char *tz[] PROGMEM = { tz00, tz01, tz02, tz03, tz04, tz05 };
const prog_int32_t	tzs[] = { 32400L, 32400L, 28800L, 0L, -28800L, -32400L };

/**
*	�^�C���]�[���ݒ�
*	 in	�Ȃ�
*	out	on:�ʏ��ʂ� off:�ݒ胁�j���[��
*/
static swbool	prm_settimezone( void )
{
	byte	itm, key;
	swbool	ret;

	itm = timezone;
	for( ret = on; ; ){
		lcd_lcls( 1 );
		lcd_printc( 0, 1, (char *)pgm_read_word( tz + itm ));	/* ���� */
		itm = selectitem( itm, 6, &key );
		if( key == KEY_TOUT ){
			break;
		}
		else if( key == ENTER_KEY ){	/* ENTER */
			timezone = itm;
			timeoffset = (int32_t)pgm_read_dword( tzs + itm );	/* ���ԃI�t�Z�b�g */
			EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
			eeprom_update_word( EEP_TIMEZONE, timezone );
			ret = off;
			break;
		}
	}

	return	ret;
}

/**
*	NTP�^�C���A�E�g�ݒ�
*	 in	�Ȃ�
*	out	on:�ʏ��ʂ�
*/
static swbool	prm_setntptout( void )
{
	char	buf[8];

	lcd_printc( 1, 1, PSTR( "TIMEOUT:     ms" ));
	lcd_print( 9, 1, ustoaz( ntptout, buf ));
	if( setstring( 9, 1, buf, 5, off ) == off ){	/* �ҏW�^�C���A�E�g */
		return on;
	}
	ntptout = _atoi( buf );
	EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
	eeprom_update_word((uint16_t *)EEP_NTPTOUT, ntptout );

	return	off;
}

/**
*	�����␳���ݒ�
*	 in	�Ȃ�
*	out	on:�ʏ��ʂ�
*/
static swbool	prm_setntpwidth( void )
{
	char	buf[8];

	lcd_printc( 1, 1, PSTR( "WIDTH:     sec" ));
	lcd_print( 7, 1, ustoaz( timewidth, buf ));
	if( setstring( 7, 1, buf, 5, off ) == off ){	/* �ҏW�^�C���A�E�g */
		return on;
	}
	timewidth = _atoi( buf );
	EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
	eeprom_update_word((uint16_t *)EEP_ADJWIDTH, timewidth );

	return	off;
}

/**
*	NTP SLEW�␳���ݒ�
*	 in	�Ȃ�
*	out	on:�ʏ��ʂ�
*/
static swbool	prm_setslewwidth( void )
{
	char	buf[8];
	word	tmp;

	lcd_printc( 1, 1, PSTR( "WIDTH:     msec" ));
	lcd_print( 7, 1, ustoaz( slew_width, buf ));
	if( setstring( 7, 1, buf, 5, off ) == off ){	/* �ҏW�^�C���A�E�g */
		return on;
	}
	tmp = _atoi( buf );
	if( tmp < 32768U ){
		slew_width = (int)tmp;
		EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
		eeprom_update_word((uint16_t *)EEP_NTPSLEW, slew_width );
	}

	return	off;
}

/* ----- BAUD RATE ----- */
const prog_char	br00[] = " 1200bps";
const prog_char	br01[] = " 2400bps";
const prog_char	br02[] = " 4800bps";
const prog_char	br03[] = " 9600bps";
const prog_char	br04[] = "19200bps";
const prog_char	br05[] = "38400bps";
const prog_char	br06[] = "57600bps";
const prog_char *br[] PROGMEM = { br00, br01, br02, br03, br04, br05, br06 };

/**
*	�{�[���[�g�I��(�ċN����L��)
*	 in	�Ȃ�
*	out	on:�ʏ��ʂ�
*/
static swbool	prm_setbaudrate( void )
{
	byte	itm, key;
	swbool	ret;

	itm = baudrate;
	for( ret = on; ; ){
		lcd_lcls( 1 );
		lcd_printc( 0, 1, (char *)pgm_read_word( br + itm ));	/* ���� */
		itm = selectitem( itm, 7, &key );
		if( key == KEY_TOUT ){
			break;
		}
		else if( key == ENTER_KEY ){	/* ENTER */
			baudrate = itm;
			EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
			eeprom_update_word( EEP_BAUD, baudrate );
			ret = off;
			break;
		}
	}

	return	ret;
}

/* ----- GPS MOJULE ----- */
const prog_char	gm00[] = "MTK3339 MODULE";
const prog_char	gm01[] = "UNIVERSAL GPS";
const prog_char *gm[] PROGMEM = { gm00, gm01 };

/**
*	GPS���W���[���ݒ�
*	 in	�Ȃ�
*	out	on:�ʏ��ʂ�
*/
static swbool	prm_setgpstype( void )
{
	ui_t	tmp;
	byte	itm, key;
	swbool	ret;

	itm = gpstype;
	for( ret = on; ; ){
		lcd_lcls( 1 );
		lcd_printc( 0, 1, (char *)pgm_read_word( gm + itm ));	/* ���� */
		itm = selectitem( itm, 2, &key );
		if( key == KEY_TOUT ){		/* �^�C���A�E�g */
			break;
		}
		else if( key == ENTER_KEY ){	/* ENTER */
			gpstype = itm;
			EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
			tmp.data = eeprom_read_word( EEP_NMEA );
			tmp.bytes.hi = itm;	/* ��ʂ��ݒ� */
			EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
			eeprom_update_word( EEP_NMEA, tmp.data );
			ret = off;
			break;
		}
	}

	return	ret;
}

/* ----- NMEA FORMAT ----- */
const prog_char	nmea00[] = "$**RMC(UNIV.)";
const prog_char	nmea01[] = "$**ZDA(UNIV.)";
const prog_char *nmea[] PROGMEM = { nmea00, nmea01 };

/**
*	�̗p����NMEA�t�H�[�}�b�g
*	 in	�Ȃ�
*	out	on:�ʏ��ʂ�
*/
static swbool	prm_selnmea( void )
{
	ui_t	tmp;
	byte	itm, key;
	swbool	ret;

	itm = nmeamode;
	for( ret = on; ; ){
		lcd_lcls( 1 );
		lcd_printc( 0, 1, (char *)pgm_read_word( nmea + itm ));	/* ���� */
		itm = selectitem( itm, 2, &key );
		if( key == KEY_TOUT ){		/* �^�C���A�E�g */
			break;
		}
		else if( key == ENTER_KEY ){	/* ENTER */
			nmeamode = itm;
			EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
			tmp.data = eeprom_read_word( EEP_NMEA );
			tmp.bytes.lo = itm;	/* ���ʂ��ݒ� */
			EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
			eeprom_update_word( EEP_NMEA, tmp.data );
			ret = off;
			break;
		}
	}

	return	ret;
}

/* ----- PPS EDGE ----- */
const prog_char	eg00[] = "FALL EDGE";
const prog_char	eg01[] = "RISE EDGE";
const prog_char *eg[] PROGMEM = { eg00, eg01 };

/**
*	PPS�G�b�W�ݒ�
*	 in	�Ȃ�
*	out	on:�ʏ��ʂ�
*/
static swbool	prm_setppsedge( void )
{
	word	wtmp;
	byte	itm, key;
	swbool	ret;

	if( ppsedge == on ){
		itm = 1;
	}
	else{
		itm = 0;
	}
	for( ret = on; ; ){
		lcd_lcls( 1 );
		lcd_printc( 0, 1, (char *)pgm_read_word( eg + itm ));	/* ���� */
		itm = selectitem( itm, 2, &key );
		if( key == KEY_TOUT ){		/* �^�C���A�E�g */
			break;
		}
		else if( key == ENTER_KEY ){	/* ENTER */
			EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
			wtmp = eeprom_read_word( EEP_FLG );
			if( itm == 1 ){
				ppsedge = on;
				WORD_BIT08_ON( wtmp );
			}
			else{
				ppsedge = off;
				WORD_BIT08_OFF( wtmp );
			}
			EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
			eeprom_update_word( EEP_FLG, wtmp );

			ret = off;
			break;
		}
	}

	return	ret;
}

/* ----- NMEA �f�[�^���� ----- */
const prog_char	nd00[] = "+0 SECOND";
const prog_char	nd01[] = "+1 SECOND";
const prog_char *nd[] PROGMEM = { nd00, nd01 };

/**
*	NMEA �f�[�^�����ݒ�
*	 in	�Ȃ�
*	out	on:�ʏ��ʂ�
*/
static swbool	prm_setnmea_adjust( void )
{
	word	wtmp;
	byte	itm, key;
	swbool	ret;

	if( nmea_adj == on ){
		itm = 1;
	}
	else{
		itm = 0;
	}
	for( ret = on; ; ){
		lcd_lcls( 1 );
		lcd_printc( 0, 1, (char *)pgm_read_word( nd + itm ));	/* ���� */
		itm = selectitem( itm, 2, &key );
		if( key == KEY_TOUT ){		/* �^�C���A�E�g */
			break;
		}
		else if( key == ENTER_KEY ){	/* ENTER */
			EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
			wtmp = eeprom_read_word( EEP_FLG );
			if( itm == 1 ){
				nmea_adj = on;
				WORD_BIT09_ON( wtmp );
			}
			else{
				nmea_adj = off;
				WORD_BIT09_OFF( wtmp );
			}
			EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
			eeprom_update_word( EEP_FLG, wtmp );

			ret = off;
			break;
		}
	}

	return	ret;
}

/**
*	�f�[�^���M�^�C���A�E�g�ݒ�
*	 in	�Ȃ�
*	out	on:�ʏ��ʂ�
*/
static swbool	prm_setndtout( void )
{
	char	buf[8];

	lcd_printc( 2, 1, PSTR( "TOUT:     sec" ));
	lcd_print( 7, 1, ustoaz( gps_ndtimeout, buf ));
	if( setstring( 7, 1, buf, 5, off ) == off ){	/* �ҏW�^�C���A�E�g */
		return on;
	}
	gps_ndtimeout = _atoi( buf );
	EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
	eeprom_update_word( EEP_GPSNDTOUT, gps_ndtimeout );

	return	off;
}

/**
*	������ԃ^�C���A�E�g�ݒ�
*	 in	�Ȃ�
*	out	on:�ʏ��ʂ�
*/
static swbool	prm_setustout( void )
{
	char	buf[8];

	lcd_printc( 2, 1, PSTR( "TOUT:     sec" ));
	lcd_print( 7, 1, ustoaz( gps_ustimeout, buf ));
	if( setstring( 7, 1, buf, 5, off ) == off ){	/* �ҏW�^�C���A�E�g */
		return on;
	}
	gps_ustimeout = _atoi( buf );
	EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
	eeprom_update_word( EEP_GPSUSTOUT, gps_ustimeout );

	return	off;
}

/**
*	�ő�|�[�����O�Ԋu�ݒ�
*	 in	�Ȃ�
*	out	on:�ʏ��ʂ�
*/
static swbool	prm_setmaxpoll( void )
{
	char	buf[8];
	byte	btmp;
	word	wtmp;

	btmp = log2x( maxpoll );
	lcd_printc( 2, 1, PSTR( "POLL:  (MAX14)" ));
	uctoaz( btmp, buf );
	lcd_print( 7, 1, buf + 1 );
	if( setstring( 7, 1, buf + 1, 2, off ) == off ){	/* �ҏW�^�C���A�E�g */
		return on;
	}
	btmp = (byte)_atoi( buf + 1 );
	if( btmp > 14 ){
		return on;
	}
	maxpoll = ( 1U << btmp );	/* �Ԋu���߂� */

	EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
	wtmp = eeprom_read_word( EEP_NTPFLAG ) & WORD_MASK_L08;
	wtmp |= ((word)btmp << 8 );
	EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
	eeprom_update_word( EEP_NTPFLAG, wtmp );

	return	off;
}

/* ----- ENABLE/DISABLE ----- */
const prog_char	en00[] = "DISABLE";
const prog_char	en01[] = "ENABLE";
const prog_char *en[] PROGMEM = { en00, en01 };

/**
*	�V�Z�O���W���[������
*	 in	�Ȃ�
*	out	on:�ʏ��ʂ�
*/
static swbool	prm_set7segenable( void )
{
	word	wtmp;
	byte	itm, key;
	swbool	ret;

	if( ext7segen == on ){
		itm = 1;
	}
	else{
		itm = 0;
	}
	for( ret = on; ; ){
		lcd_lcls( 1 );
		lcd_printc( 0, 1, (char *)pgm_read_word( en + itm ));	/* ���� */
		itm = selectitem( itm, 2, &key );
		if( key == KEY_TOUT ){		/* �^�C���A�E�g */
			break;
		}
		else if( key == ENTER_KEY ){	/* ENTER */
			EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
			wtmp = eeprom_read_word( EEP_FLG );
			if( itm == 1 ){
				ext7segen = on;
				WORD_BIT00_ON( wtmp );
			}
			else{
				ext7segen = off;
				WORD_BIT00_OFF( wtmp );
			}
			EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
			eeprom_update_word( EEP_FLG, wtmp );

			tim7segen = ( ext7segen == on )? on: off;
			ret = off;
			break;
		}
	}

	return	ret;
}

/**
*	MAC�A�h���X�Z�b�g
*	 in	�Ȃ�
*	out	on:�ʏ��ʂ�
*/
static swbool	prm_setmacaddr( void )
{
	char	dbuf[16], *bp;
	byte	i, j, *p;

	/* --- �\�� --- */
	p = mac_address;
	bp = dbuf;
	for( i = 0; i < 6; i++, p++, bp += 2 ){		/* BIN -> ASCII */
		uctoahz( *p, bp );
	}
	/* --- �ҏW --- */
	if( setstring( 2, 1, dbuf, 12, on ) == off ){	/* �ҏW�^�C���A�E�g */
		return on;
	}
	/* --- �̗p --- */
	p = mac_address;
	for( i = j = 0; i < 6; i++, p++ ){
		*p = atox( dbuf + j );	/* ASCII -> BIN */
		j += 2;
	}
	EEP_READYWAIT( );		/* �A�N�Z�X�\�܂ő҂� */
	eeprom_update_block((byte *)mac_address, (byte *)EEP_MACADDRESS, PHYSICALADDR_SIZE );

	return off;
}

/* -----  ----- */
const prog_char	adj00[] = "NTP REQ.ADJUST";
const prog_char	adj01[] = "NTP REQ.NMEA OUT";
const prog_char	adj02[] = "NTP RCV.ADJUST";
const prog_char	adj03[] = "NTP RCV.NMEA OUT";
const prog_char	adj04[] = "GPS MODULE";
const prog_char *adjmd[] PROGMEM = { adj00, adj01, adj02, adj03, adj04 };

/**
*	�������[�h
*	 in	�Ȃ�
*	out	on:�ʏ��ʂ�
*/
static swbool	prm_setadjmode( void )
{
	byte	itm, key;
	swbool	ret;

	itm = adjmode;
	for( ret = on; ; ){
		lcd_lcls( 1 );
		lcd_printc( 0, 1, (char *)pgm_read_word( adjmd + itm ));	/* ���� */
		itm = selectitem( itm, 5, &key );
		if( key == KEY_TOUT ){		/* �^�C���A�E�g */
			break;
		}
		else if( key == ENTER_KEY ){	/* ENTER */
			adjmode = itm;
			EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
			eeprom_update_word( EEP_ADJMODE, adjmode );
			ret = off;
			break;
		}
	}

	return	ret;
}

/**
*	�p�����[�^�ҏW
*	 in	�Ȃ�
*	out	�Ȃ�
*/
void	parameter( void )
{
	const swbool (*pf[])() = {
		(void *)prm_setipaddr,		/* 00 IP�A�h���X */
		(void *)prm_setmask,		/* 01 �T�u�l�b�g�}�X�N */
		(void *)prm_setgateway,		/* 02 �Q�[�g�E�F�C */
		(void *)prm_setdnsserver,	/* 03 DNS�T�[�o */
		(void *)prm_setdhcpuse,		/* 04 DHCP�g�p */
		(void *)prm_sethttpport,	/* 05 HTTP�|�[�g */
		(void *)prm_setarptimeout,	/* 06 ARP�^�C���A�E�g */
		(void *)prm_setbroadcast,	/* 07 �z�M�� */
		(void *)prm_setbcinterval,	/* 08 �z�M�Ԋu */
		(void *)prm_settimezone,	/* 09 �^�C���]�[�� */
		(void *)prm_setntptout,		/* 10 NTP�^�C���A�E�g */
		(void *)prm_setntpwidth,	/* 11 �␳�� */
		(void *)prm_setslewwidth,	/* 12 slew���蕝 */
		(void *)prm_setbaudrate,	/* 13 �{�[���[�g�I�� */
		(void *)prm_setgpstype,		/* 14 GPS���W���[���I�� */
		(void *)prm_selnmea,		/* 15 �̗p����NMEA�t�H�[�}�b�g */
		(void *)prm_setppsedge,		/* 16 PPS�G�b�W */
		(void *)prm_setnmea_adjust,	/* 17 NMEA�f�[�^���� */
		(void *)prm_setndtout,		/* 18 �f�[�^���M�^�C���A�E�g */
		(void *)prm_setustout,		/* 19 ������ԃ^�C���A�E�g */
		(void *)prm_setmaxpoll,		/* 20 �|�[�����O�Ԋu */
		(void *)prm_set7segenable,	/* 21 7�Z�O���W���[������ */
		(void *)prm_setsegtimer,	/* 22 7�Z�O�\���^�C�} */
		(void *)prm_setmacaddr,		/* 23 MAC�A�h���X */
		(void *)prm_setadjmode		/* 24 �������[�h */
	};
	byte	pg, key;
	swbool	ex;

	disp_menu( 0 );		/* �������j���[ */
	pg = 0;
	for( ex = off; ex == off; ){
		pg = selectitem( pg, PAGE, &key );
		if( key == KEY_TOUT ){		/* �^�C���A�E�g */
			break;
		}
		else if( key == ENTER_KEY ){	/* ENTER */
			if( pg == ( PAGE - 1 )){	/* EXIT */
				break;
			}
			/* --- �ҏW --- */
			disp_submenu( pg );	/* �\������ */
			ex = pf[pg]( );		/* ���j���[�I��� */
		}
		disp_menu( pg );
	}
}

/* end of parameter.c */
