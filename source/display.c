/**
*	AVR�ŊȈ�SNTP�T�[�o	��ʕ\��
*	Copyright (c)Junnichi Tomaru
*/
#include	"include/avrntp.h"

/* ----- �j�� ----- */
const prog_char	wday[] = { "SUN\0MON\0TUE\0WED\0THU\0FRI\0SAT" };
/* ----- �␳�X�e�[�^�X ----- */
const prog_char	adj[] = { 'A', 'I', 'U', 'T', 'U', 'P', 'V', 'N' };

/* ----- 1�s�ڕ\�� ----- */
const prog_char	msg0_00[] = "KDB-SNTP SERVER";
const prog_char	msg0_01[] = "ENC28J60 REV:";
const prog_char	msg0_02[] = "INITIALIZING...";
const prog_char	msg0_03[] = "INITIALIZED";
const prog_char	msg0_04[] = "KEYINPUT ILLEGAL";
const prog_char	msg0_05[] = "LCD DISABLED.";
const prog_char	msg0_06[] = "CAL REM:";
const prog_char	msg0_07[] = "DHCP DISABLED";
const prog_char	msg0_08[] = "DHCP ENABLED";
const prog_char	msg0_09[] = "NTP RX ENABLED";
const prog_char	msg0_10[] = "NTP RX DISABLED";
const prog_char	msg0_11[] = "BROADCAST LOG";
const prog_char	msg0_12[] = "OPERATING TIME";
const prog_char	msg0_13[] = "GPS MODE READY";
const prog_char	msg0_14[] = "";
const prog_char	msg0_15[] = "ENC28J60 INITERR";
const prog_char	msg0_16[] = "MTK3339 INITIAL";
const prog_char *msg0[] PROGMEM = {
	 msg0_00, msg0_01, msg0_02, msg0_03, msg0_04,
	 msg0_05, msg0_06, msg0_07, msg0_08, msg0_09,
	 msg0_10, msg0_11, msg0_12, msg0_13, msg0_14,
	 msg0_15, msg0_16
};

/* ----- 2�s�ڕ\�� ----- */
const prog_char	msg1_00[] = "Version";
const prog_char	msg1_01[] = "PLEASE CHECK KEY";
const prog_char	msg1_02[] = "PLEASE RESET";
const prog_char	msg1_03[] = "MAC:";
const prog_char	msg1_04[] = "DHCPCNT:";
const prog_char	msg1_05[] = "NBC REM:";
const prog_char	msg1_06[] = "WAIT for TIME RX";
const prog_char	msg1_07[] = "";
const prog_char	msg1_08[] = "CHECK CIRCUIT";
const prog_char	msg1_09[] = "PLEASE WAIT";
const prog_char *msg1[] PROGMEM = {
	msg1_00, msg1_01, msg1_02, msg1_03, msg1_04,
	msg1_05, msg1_06, msg1_07, msg1_08, msg1_09
};

/* ----- DHCP���b�Z�[�W�\�� ----- */
const prog_char	dmsg0[] = "EXPIRED ";
const prog_char	dmsg1[] = " REBIND ";
const prog_char	dmsg2[] = "RENEWAL ";
const prog_char	dmsg3[] = "INFINITY";
const prog_char *dmsg[] PROGMEM = { dmsg0, dmsg1, dmsg2, dmsg3 };

/* ----- �^�C���]�[�� ----- */
const prog_char	tzmsg0[] = "JST";
const prog_char	tzmsg1[] = "KST";
const prog_char	tzmsg2[] = "CCT";
const prog_char	tzmsg3[] = "UTC";
const prog_char	tzmsg4[] = "PST";
const prog_char	tzmsg5[] = "HDT";
const prog_char *tzmsg[] PROGMEM = { tzmsg0, tzmsg1, tzmsg2, tzmsg3, tzmsg4, tzmsg5 };

/* ----- �C�x���g ----- */
const prog_char	dspevnt00[] = "                ";
const prog_char	dspevnt01[] = "POWER ON";
const prog_char	dspevnt02[] = "EXTERNAL RESET";
const prog_char	dspevnt03[] = "BROWN OUT RESET";
const prog_char	dspevnt04[] = "WATCHDOG RESET";
const prog_char	dspevnt05[] = "ENC RCV ERROR";
const prog_char	dspevnt06[] = "ARP REQ TIMEOUT";
const prog_char	dspevnt07[] = "ICMP SUM ERROR";
const prog_char	dspevnt08[] = "TCP SUM ERROR";
const prog_char	dspevnt09[] = "UDP SUM ERROR";
const prog_char	dspevnt10[] = "ICMP MESSAGE RCV";
const prog_char	dspevnt11[] = "DHCP RECEIVE NAK";
const prog_char	dspevnt12[] = "DHCP RENEWAL";
const prog_char	dspevnt13[] = "DHCP REBIND";
const prog_char	dspevnt14[] = "DHCP EXPIRED";
const prog_char	dspevnt15[] = "DHCP PCT ERROR";
const prog_char	dspevnt16[] = "NBT RCV ERROR";
const prog_char	dspevnt17[] = "NBT FORMAT ERROR";
const prog_char	dspevnt18[] = "NBT PACKET ERROR";
const prog_char	dspevnt19[] = "NBT TIMEOUT(No1)";
const prog_char	dspevnt20[] = "NBT TIMEOUT(No2)";
const prog_char	dspevnt21[] = "NBT TIMEOUT(No3)";
const prog_char	dspevnt22[] = "NBT TIMEOUT(No4)";
const prog_char	dspevnt23[] = "DNS TIMEOUT(No1)";
const prog_char	dspevnt24[] = "DNS TIMEOUT(No2)";
const prog_char	dspevnt25[] = "DNS TIMEOUT(No3)";
const prog_char	dspevnt26[] = "DNS TIMEOUT(No4)";
const prog_char	dspevnt27[] = "NTP UNSYNCRONIZE";
const prog_char	dspevnt28[] = "NTP TIMEOUT(No1)";
const prog_char	dspevnt29[] = "NTP TIMEOUT(No2)";
const prog_char	dspevnt30[] = "NTP TIMEOUT(No3)";
const prog_char	dspevnt31[] = "NTP TIMEOUT(No4)";
const prog_char	dspevnt32[] = "NTP ILLEGAL REP.";
const prog_char	dspevnt33[] = "NTP LEAP ADJUST";
const prog_char	dspevnt34[] = "TIME ILLEGAL";
const prog_char	dspevnt35[] = "GPS FORMAT ERROR";
const prog_char	dspevnt36[] = "NMEA CHKSUM ERR.";
const prog_char	dspevnt37[] = "TIME DATA RCVERR";
const prog_char	dspevnt38[] = "UNSYNC TIMEUP";
const prog_char	dspevnt39[] = "MTK3339 INITERR";
const prog_char	*dspevnt[] PROGMEM = {
	dspevnt00, dspevnt01, dspevnt02, dspevnt03, dspevnt04,
	dspevnt05, dspevnt06, dspevnt07, dspevnt08, dspevnt09,
	dspevnt10, dspevnt11, dspevnt12, dspevnt13, dspevnt14,
	dspevnt15, dspevnt16, dspevnt17, dspevnt18, dspevnt19,
	dspevnt20, dspevnt21, dspevnt22, dspevnt23, dspevnt24,
	dspevnt25, dspevnt26, dspevnt27, dspevnt28, dspevnt29,
	dspevnt30, dspevnt31, dspevnt32, dspevnt33, dspevnt34,
	dspevnt35, dspevnt36, dspevnt37, dspevnt38, dspevnt39
};

const prog_char	no_logtime[] = "--/-- --:--:--";

/**
*	���t��\������
*	 in	�\���s
*		���t�\����
*	out	�Ȃ�
*/
static void	disp_date( byte y, date_st *t )
{
	char	buf[8];

	ustoaz( t->year, buf );	/* �N */
	lcd_print( 0, y, buf + 1 );
	lcd_putch( '/' );
	uctoaz( t->mon, buf );	/* �� */
	lcd_putstr( buf + 1 );
	lcd_putch( '/' );
	uctoaz( t->day, buf );	/* �� */
	lcd_putstr( buf + 1 );
}


/**
*	������\������
*	 in	�\���s
*		���t�\����
*	out	�Ȃ�
*/
void	disp_time( byte x, byte y, time_st *t )
{
	char	buf[4];

	uctoaz( t->hour, buf );	/* �� */
	lcd_print( x, y, buf + 1 );
	lcd_putch( ':' );
	uctoaz( t->min, buf );	/* �� */
	lcd_putstr( buf + 1 );
	lcd_putch( ':' );
	uctoaz( t->sec, buf );	/* �b */
	lcd_putstr( buf + 1 );
}


/**
*	���ݎ��ԕ\��
*	 in	�Ȃ�
*	out	�Ȃ�
*/
void	disp_nowtime( void )
{
	char	sts, mode;
	char	buf[4], buf2[4];
	struct tm	t;
	date_st	dt;
	time_st	tt;

	/* ---------- 1�s�� ---------- */
	strcpy_P( buf2, (prog_char *)pgm_read_word( tzmsg + timezone ));
	t = world_time;
	t.tm_year += 1900U;
	t.tm_mon++;
	dt.year = t.tm_year;	/* �N */
	dt.mon = t.tm_mon;	/* �� */
	dt.day = t.tm_mday;	/* �� */
	disp_date( 0, &dt );	/* ���t�\�� */
	lcd_putch( ' ' );
	strcpy_P( buf, &wday[t.tm_wday*4] );
	lcd_putstr( buf );	/* �j�� */
	lcd_putch( ' ' );
	/* --- �␳���[�h --- */
	mode = adjmode & BYTE_MASK_U7;
	sts ='-';
	if( mode == GPSADJ_MODE ){
		if( gpstype == GPS_MTK3339 ){	/* MTK3339 */
			sts = 'M';
		}
		else{				/* �ėpGPS */
			sts = 'G';
		}
	}
	else if( mode == BCAST_MODE ){	/* �u���[�h�L���X�g��M�҂� */
		sts = 'R';
	}
	else if( mode == NTPADJ_MODE ){
		if( lists == LI_ALARM ){	/* ver2.20.00 */
			sts = 'A';
		}
		else if( lists == LI_INC ){
			sts = 'I';
		}
		else if( lists == LI_DEC ){
			sts = 'D';
		}
		else{
			sts = srvpnt + '0';	/* NTP�T�[�o�ʒu */
		}
	}
	lcd_putch( sts );

	/* ---------- 2�s�� ---------- */
	tt.hour = t.tm_hour;	/* ���� */
	tt.min = t.tm_min;
	tt.sec = t.tm_sec;
	disp_time( 0, 1, &tt );

	lcd_putch( ' ' );
	lcd_putstr( buf2 );	/* JST, UTC */
	lcd_putch( ' ' );
	if( mode == GPSADJ_MODE ){	/* GPS */
		if( nmeamode == NMEA_GPRMC ){	/* �G�b�W */
			lcd_putch( 'R' );
		}
		else if( nmeamode == NMEA_GPZDA ){
			lcd_putch( 'Z' );
		}
		else{
			lcd_putch( 'E' );	/* �G���[ */
		}
		if( ppsedge == on ){		/* �㏸�G�b�W */
			lcd_putch( 'R' );
		}
		else{
			lcd_putch( 'F' );
		}
	}
	else{				/* NTP */
		uctoaz( stratum, buf );
		lcd_putstr( buf + 1 );	/* �K�� */
	}
	lcd_putch( pgm_read_byte( adj + time_sts ));	/* ������� */
}


/**
*	�P�s�ڂɃ��b�Z�[�W�\��
*	 in	���b�Z�[�W�ԍ�
*	out	�Ȃ�
*/
void	disp_message1( byte msg )
{
	lcd_printc( 0, 0, (prog_char *)pgm_read_word( msg0 + msg ));
}


/**
*	�Q�s�ڂɃ��b�Z�[�W�\��
*	 in	���b�Z�[�W�ԍ�
*	out	�Ȃ�
*/
void	disp_message2( byte msg )
{
	lcd_printc( 0, 1, (prog_char *)pgm_read_word( msg1 + msg ));
}


/**
*	���Ԗ����\��
*	 in	�\���s
*	out	�Ȃ�
*/
void	disp_notime( byte y )
{
	lcd_printc( 8, y, PSTR( "--:--:--" ));
}


/**
*	DHCP���b�Z�[�W�\��
*	 in	���b�Z�[�W�ԍ�
*	out	�Ȃ�
*/
static void	disp_dhcpmsg( byte msg )
{
	lcd_printc( 8, 1, (prog_char *)pgm_read_word( dmsg + msg ));
}


/**
*	�c�莞�ԕ\��
*	 in	y: �s
*		time: �b
*	out	�Ȃ�
*/
void	disp_remtime( byte y, long time )
{
	time_st	tt;

	if(( time < 0L ) || ( time >= 360000L )){	/* �\���͈͒����Ă��� */
		lcd_printc( 8, y, PSTR( "**:**:**" ));
	}
	else{
		tt.hour = time / 3600;	/* �� */
		time = time % 3600;
		tt.min = time / 60;	/* �� */
		tt.sec = time % 60;	/* �b */
		disp_time( 8, y, &tt );
	}
}


/**
*	DHCP�J�E���^�\��
*	 in	�Ȃ�
*	out	�Ȃ�
*/
void	dhcpdisp( void )
{
	if( dhcp_mode == DHCP_DISCOVER ){	/* DISCOVER�X�e�[�g */
		disp_remtime( 1, ddcrem );
	}
	else if( dhcp_mode == DHCP_BOUND ){	/* IP�A�h���X�؂�Ă� */
		if( lease_time == LD_MAX ){	/* �������[�X */
			disp_dhcpmsg( 3 );
		}
		else{
			disp_remtime( 1, renewal_time );
		}
	}
	else if( dhcp_mode == DHCP_RENEWING ){	/* RENEWAL�X�e�[�g */
		disp_dhcpmsg( 2 );
	}
	else if( dhcp_mode == DHCP_REBINDING ){	/* REBIND�X�e�[�g */
		disp_dhcpmsg( 1 );
	}
	else{	/* ������ */
		disp_notime( 1 );
	}
}


/**
*	�C�x���g���O�\��
*	 in	�ʒu(0�`15)
*	out	�Ȃ�
*/
void	disp_eventlog( byte pnt )
{
	time_st	tt;
	evntlog_t	et;
	char	c, buf[16];

	lcd_cls( );
	if(( pnt >= 0 ) && ( pnt <= 8 )){	/* 1�`9 */
		c = pnt + '1';
	}
	else{	/* 10�`16 */
		c = pnt - 9;	/* CGRAM */
	}
	lcd_putcode( 15, 0, c );	/* �ԍ� */
	et = eventlog[pnt];
	if(( et.evnt >= EVNT_PWR_ON ) && ( et.evnt <= EVNT_WDT_RESET )){
		lcd_printc( 0, 0, (prog_char *)no_logtime );
	}
	else if(( et.evnt >= EVNT_ENC_RXRCVERR ) && ( et.evnt <= EVNT_TIME_ILLEGAL )){
		uctoaz( et.mon, buf );	/* �� */
		lcd_print( 0, 0, buf + 1 );
		lcd_putch( '/' );
		uctoaz( et.day, buf );	/* �� */
		lcd_putstr( buf + 1 );
		lcd_putch( ' ' );
		tt.hour = et.hour;
		tt.min = et.min;
		tt.sec = et.sec;
		disp_time( 6, 0, &tt );	/* ���� */
	}
	else{
		lcd_printc( 0, 0, (prog_char *)no_logtime );
	}
	lcd_printc( 0, 1, (prog_char *)pgm_read_word( dspevnt + et.evnt ));
}


/**
*	�␳�E�z�M���O�\��
*	 in	�ʒu(0�`15)
*	out	�Ȃ�
*/
void	disp_callog( byte pnt )
{
	time_st	t;
	cal_t	ct;
	char	buf[16];

	lcd_cls( );
	disp_message1( 11 );
	ct = callog[pnt];
	uctoaz( pnt + 1, buf );	/* �ʒu */
	lcd_print( 14, 0, buf + 1 );
	lcd_locate( 0, 1 );	/* 2�s��:���� */
	if(( ct.flg == LOG_BCRX ) || ( ct.flg == LOG_BCAST )){
		uctoaz( ct.mon, buf );
		lcd_putstr( buf + 1 );
		lcd_putch( '/' );
		uctoaz( ct.day, buf );
		lcd_putstr( buf + 1 );
		lcd_putch( ' ' );
		t.hour = ct.hour;
		t.min = ct.min;
		t.sec = ct.sec;
		disp_time( 6, 1, &t );
		lcd_putch( ' ' );
		if( ct.flg == LOG_BCAST ){	/* �z�M */
			lcd_putch( 'B' );
		}
		else if( ct.flg == LOG_BCRX ){	/* ��M */
			lcd_putch( 'R' );
		}
	}
	else{
		lcd_printc( 0, 1, no_logtime );
	}
}


/**
*	�^�]���ԕ\��
*	 in	���P�ʎ���
*	out	�Ȃ�
*/
void	disp_opetime( void )
{
	char	buf[16];
	word	wt;
	long	cnt;

	cnt = opetime;
	ltoaz( cnt / 60L, buf );
	lcd_print( 0, 1, buf + 5 );	/* �� */
	wt = (word)( cnt % 60L );
	ustoaz( wt, buf );
	lcd_print( 10, 1, buf + 3 );	/* �� */
}


/**
*	��ʏ�������
*	 in	�Ȃ�
*	out	�Ȃ�
*/
void	redraw( void )
{
	char	buf[16];
	byte	i, j, page, flg;
	byte	*p;

	page = disppage;
	lcd_cls( );
	if( page == 0 ){
		disp_nowtime( );	/* �����\�� */
	}
	else if( page == 1 ){
		lcd_putcode( 0, 0, 'A' );	/* IP�A�h���X�\�� */
		lcd_putstr( long2ipstr( myipaddr, buf ));
		lcd_putcode( 0, 1, 'M' );	/* �l�b�g�}�X�N */
		lcd_putstr( long2ipstr( netmask, buf ));
	}
	else if( page == 2 ){
		lcd_putcode( 0, 0, 'G' );	/* �Q�[�g�E�F�C */
		lcd_putstr( long2ipstr( gateway, buf ));
		lcd_putcode( 0, 1, 'D' );	/* DNS�T�[�o */
		lcd_putstr( long2ipstr( dns_server, buf ));
	}
	else if( page == 3 ){		/* REV,MAC�A�h���X�\�� */
		disp_message1( 1 );
		lcd_putch(( revid / 10 ) + '0' );
		lcd_putch(( revid % 10 ) + '0' );
		disp_message2( 3 );		/* MAC�A�h���X�\�� */
		p = mac_address;
		for( i = 0, j = 4; i < 6; i++, j += 2, p++ ){
			lcd_print( j, 1, uctoahz( *p, buf ));
		}
	}
	else if( page == 4 ){		/* NETBIOS��,DHCP�c�莞�� */
		lcd_print( 0, 0, (char *)nbns_name );
		disp_message2( 4 );
		dhcpdisp( );		/* DHCP�c�莞�� */
	}
	else if( page == 5 ){		/* ����␳�܂ł̎c�莞�� */
		disp_message1( 6 );
		flg = 0;
		
		if( adjmode == GPSADJ_MODE ){		/* GPS */
			flg = 1;
		}
		else if( adjmode & BCAST_MODE ){	/* �u���[�h�L���X�g��M */
			flg = 1;
		}
		else if( adjustseq != ADJUSTSEQ_NONE ){	/* �␳�V�[�P���X�� */
			flg = 1;
		}
		if( flg == 1 ){
			disp_notime( 0 );	/* �\������ */
		}
		else{
			disp_remtime( 0, calc_calremtime( ));	/* �Z���c�莞�� */
		}
		disp_message2( 5 );
		if( binterval != 0U ){
			if( synchronized == on ){
				disp_remtime( 1, calc_bcastremtime( ));	/* �z�M�c�莞�� */
			}
			else{
				disp_notime( 1 );
			}
		}
		else{
			disp_notime( 1 );
		}
	}
	else if( page == 6 ){		/* �^�]���ԕ\�� */
		disp_message1( 12 );
		lcd_printc( 5, 1, PSTR( "HOUR   MIN." ));
		disp_opetime( );
	}
}


/* -------------------- 7SEG -------------------- */

/* ----- 7SEG DATA -----         0     1     2     3     4     5     6     7     8     9   OFF */
const prog_char	segdata[] = { 0xc0, 0xf9, 0xa4, 0xb0, 0x99, 0x92, 0x82, 0xf8, 0x80, 0x90, 0xff };
/* ----- 7SEG STS -----      0  A  1  i  2  U  3  t  4  G  5  P  6  V  7  n */
const prog_char	segadj[] = { 0x88, 0xFB, 0xC1, 0x87, 0xC2, 0x8C, 0xE3, 0xAB };

/**
*	���l��7SEG DATA��(unsigned char,�[���T�v���X���Ȃ�)
*	 in	num:�f�[�^
*		buf:�i�[��o�b�t�@
*	out	�Ȃ�
*/
static void	*ucto7seg( byte num, byte *buf )
{
	byte	n, i, j, *p;

	p = buf;
	n = 100;
	for( i = 0; i < 3; i++ ){
		j = (byte)( num / n );
		num %= n;
		*p = pgm_read_byte( segdata + j );
		n /= 10;
		p++;
	}

	return	buf;
}


/**
*	�������A�X�L�[�������(unsigned short,�[���T�v���X���Ȃ�)
*	 in	num:�f�[�^
*		buf:�i�[�敶����
*	out	�Ȃ�
*/
static void	*usto7seg( word num, byte *buf )
{
	word	n;
	byte	i, j, *p;

	p = buf;
	n = 10000U;
	for( i = 0; i < 5; i++ ){
		j = (byte)( num / n );
		num %= n;
		*p = pgm_read_byte( segdata + j );
		n /= 10U;
		p++;
	}

	return	buf;
}


/**
*	7SEG�ɓ��t�����\��
*	 in	�����\���̃|�C���^
*	out	�Ȃ�
*	�r�b�g��0�œ_�� PGFEDCBA
*	���b�`��H�Ŋm��
*	���ʂ����ɑ���A�������ɂ��邱�Ƃɂ��
*	���t�����Ǝ��������̂Q�ʂ�g�������ł���
*/
void	disp7seg( struct tm *time )
{
	byte	sts, mode, buf[8];

	sts = pgm_read_byte( segadj + time_sts );
	mode = 0xFF;
	if( adjmode == GPSADJ_MODE ){	/* GPS */
		BYTE_BIT5_OFF( mode );	/* ���� */
	}
	else if( adjmode & NMEAOUT_MODE ){	/* GPS�Ɣr�� */
		BYTE_BIT1_OFF( mode );	/* �E�� */
	}
	if(( adjmode & BYTE_MASK_U7 ) == NTPADJ_MODE ){	/*  */
		BYTE_BIT4_OFF( mode );	/* ���� */
	}
	if( adjmode & BCAST_MODE ){	/*  */
		BYTE_BIT2_OFF( mode );	/* �E�� */
	}
	LAT_NEGATE( );
	/* ----- ���t ----- */
	ucto7seg( time->tm_mday, buf );		/* �� */
	spitx( buf[2] );
	spitx( buf[1] );
	ucto7seg( time->tm_mon + 1, buf );	/* �� */
	spitx( buf[2] & BYTE_MASK_L7 );
	spitx( buf[1] );
	usto7seg( time->tm_year + 1900U, buf );	/* �N */
	spitx( buf[4] & BYTE_MASK_L7 );
	spitx( buf[3] );
	spitx( buf[2] );
	spitx( buf[1] );
	/* ----- �X�e�[�^�X ----- */
	spitx( sts );		/* �X�e�[�^�X */
	spitx( mode );		/* ���샂�[�h */
	/* ----- ���� ----- */
	ucto7seg( time->tm_sec, buf );	/* �b */
	spitx( buf[2] );
	spitx( buf[1] );
	ucto7seg( time->tm_min, buf );	/* �� */
	spitx( buf[2] & BYTE_MASK_L7 );
	spitx( buf[1] );
	ucto7seg( time->tm_hour, buf );	/* �� */
	spitx( buf[2] & BYTE_MASK_L7 );
	spitx( buf[1] );

	LAT_ASSERT( );
}


/**
*	7�Z�O����
*/
void	dispoff7seg( void )
{
	byte	i;

	LAT_NEGATE( );
	for( i = 0; i < 16; i++ ){
		spitx( 0xff );
	}
	LAT_ASSERT( );
}


/* end of display.c */
