/**
*	http.c
*	HTTP����
*	HyperText Transfer Protocol:Web�u���E�U�Ƃ̃R���e���c�̂��Ƃ�Ȃ�(RFC1945,RFC2616)
*	Copyright (c)Junnichi Tomaru
*/
#include	"avrntp.h"

#define	PAGENW	0
#define	PAGENS	1
#define	PAGENB	2
#define	PAGECL	3
#define	PAGEEL	4
#define	PAGESD	5
#define	PAGE	6	/* �y�[�W�� */

tsock_t	*tstmp;		/* HTTP��Ɨp */

struct HTITEM_T{
	prog_char	*title;
	prog_char	*item;
	byte	len;
	byte	max;
	char	*buf;
};
typedef struct HTITEM_T	htitem_t;

/* ----- ���� ----- */
const prog_char http_head[] = "HTTP/1.1 200 HTTP\r\nConnection: close\r\nContent-Type: text/html\r\nCache-Control: no-cache\r\nContent-Language: en\r\n\r\n";
const prog_char msg_head[] = "HTTP/1.1 200 OK\r\nConnection: close\r\nContent-Type: text/html\r\nCache-Control: no-cache\r\nContent-Language: en\r\n\r\n<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\"><HTML><HEAD><TITLE>KDB-SNTP-SERVER SETUP</TITLE></HEAD><BODY BGCOLOR=\"#FFFFFFFF\"><CENTER><B>";
const prog_char msg_chgend[] = "\"></FORM><BR><FONT COLOR=\"GREEN\">VALUE SAVED</FONT><BR>";
const prog_char msg_chg[] = "\"><BR><BR><INPUT TYPE=\"SUBMIT\" VALUE=\"APPLY\"></FORM>";

/* ----- �l�b�g���[�N�E�u���[�h�L���X�g�ݒ� ----- */
const prog_char	itmip0[] = "IP";
const prog_char	itmip1[] = "NM";
const prog_char	itmip2[] = "GW";
const prog_char	itmip3[] = "DN";
const prog_char	itmip4[] = "BC";
const prog_char *itmip[] PROGMEM = { itmip0, itmip1, itmip2, itmip3, itmip4 };
const prog_uint16_t	eepip[] = { EEP_IPADDR, EEP_NETMASK, EEP_GATEWAY, EEP_DNSP, EEP_NTPBCAST };
const prog_uint32_t	dfltadr[] = { IPADDR, NETMASK, GATEWAY, DNSPSRV, NTPBC };

const prog_char	nameip0[] = "IP ADDRESS";
const prog_char	nameip1[] = "SUBNET MASK";
const prog_char	nameip2[] = "GATEWAY";
const prog_char	nameip3[] = "DNS SERVER";
const prog_char	nameip4[] = "ADDRESS";
const prog_char *nameip[] PROGMEM = { nameip0, nameip1, nameip2, nameip3, nameip4 };

/* ----- NTP�T�[�o�ݒ� ----- */
const prog_char	itmntp0[] = "N1";
const prog_char	itmntp1[] = "N2";
const prog_char	itmntp2[] = "N3";
const prog_char	itmntp3[] = "N4";
const prog_char *itmntp[] PROGMEM = { itmntp0, itmntp1, itmntp2, itmntp3 };
const prog_char	namentp0[] = "SERVER1";
const prog_char	namentp1[] = "SERVER2";
const prog_char	namentp2[] = "SERVER3";
const prog_char	namentp3[] = "SERVER4";
const prog_char *namentp[] PROGMEM = { namentp0, namentp1, namentp2, namentp3 };
const prog_uint16_t	eepntp[] = { EEP_NTPSRV1, EEP_NTPSRV2, EEP_NTPSRV3, EEP_NTPSRV4 };

/* ----- �G���[���b�Z�[�W ----- */
const prog_char	evnt00[] = "";
const prog_char	evnt01[] = "POWER ON";
const prog_char	evnt02[] = "EXTERNAL RESET";
const prog_char	evnt03[] = "BROWN OUT RESET";
const prog_char	evnt04[] = "WATCHDOG TIMER RESET";
const prog_char	evnt05[] = "ENC28J60 RECEIVE ERROR";
const prog_char	evnt06[] = "ARP REQUEST TIMEOUT ERROR";
const prog_char	evnt07[] = "ICMP PACKET CHECK SUM ERROR";
const prog_char	evnt08[] = "TCP PACKET CHECK SUM ERROR";
const prog_char	evnt09[] = "UDP PACKET CHECK SUM ERROR";
const prog_char	evnt10[] = "ICMP MESSAGE";
const prog_char	evnt11[] = "DHCP RECEIVE NAK(RETRY)";
const prog_char	evnt12[] = "DHCP RENEWAL STATE";
const prog_char	evnt13[] = "DHCP REBIND STATE";
const prog_char	evnt14[] = "DHCP EXPIRED STATE";
const prog_char	evnt15[] = "DHCP RECEIVE PACKET ERROR";
const prog_char	evnt16[] = "NBT RECEIVE ERROR";
const prog_char	evnt17[] = "NBT FORMAT ERROR";
const prog_char	evnt18[] = "NBT PACKET ERROR";
const prog_char	evnt19[] = "NBT TIME OUT(SERVER1)";
const prog_char	evnt20[] = "NBT TIME OUT(SERVER2)";
const prog_char	evnt21[] = "NBT TIME OUT(SERVER3)";
const prog_char	evnt22[] = "NBT TIME OUT(SERVER4)";
const prog_char	evnt23[] = "DNS TIME OUT(SERVER1)";
const prog_char	evnt24[] = "DNS TIME OUT(SERVER2)";
const prog_char	evnt25[] = "DNS TIME OUT(SERVER3)";
const prog_char	evnt26[] = "DNS TIME OUT(SERVER4)";
const prog_char	evnt27[] = "NTP UNSYNCRONIZED";
const prog_char	evnt28[] = "NTP TIME OUT(SERVER1)";
const prog_char	evnt29[] = "NTP TIME OUT(SERVER2)";
const prog_char	evnt30[] = "NTP TIME OUT(SERVER3)";
const prog_char	evnt31[] = "NTP TIME OUT(SERVER4)";
const prog_char	evnt32[] = "NTP ILLEGAL SERVER REPLY";
const prog_char	evnt33[] = "NTP LEAP SECOND ADJUST";
const prog_char	evnt34[] = "TIME ILLEGAL";
const prog_char	evnt35[] = "GPS NMEA FORMAT ERROR";
const prog_char	evnt36[] = "NMEA CHECKSUM ERROR";
const prog_char	evnt37[] = "TIME DATA RECEIVE ERROR";
const prog_char	evnt38[] = "UNSYNC TIMEUP";
const prog_char	evnt39[] = "MTK3339 INITIAL ERROR";
const prog_char *event[] PROGMEM = {
	evnt00, evnt01, evnt02, evnt03, evnt04,
	evnt05, evnt06, evnt07, evnt08, evnt09,
	evnt10, evnt11, evnt12, evnt13, evnt14,
	evnt15, evnt16, evnt17, evnt18, evnt19,
	evnt20, evnt21, evnt22, evnt23, evnt24,
	evnt25, evnt26, evnt27, evnt28, evnt29,
	evnt30, evnt31, evnt32, evnt33, evnt34,
	evnt35, evnt36, evnt37, evnt38, evnt39
};

/* ----- �g�b�v�y�[�W ----- */
const prog_char	cgi0[] = "nw.cgi";	/* �l�b�g���[�N�ݒ� */
const prog_char	cgi1[] = "ns.cgi";	/* NTP�Q�ƃT�[�o�ݒ� */
const prog_char	cgi2[] = "nb.cgi";	/* NTP�u���[�h�L���X�g�ݒ� */
const prog_char	cgi3[] = "cl.cgi";	/* �����␳�E�z�M���O */
const prog_char	cgi4[] = "el.cgi";	/* �C�x���g���O */
const prog_char	cgi5[] = "sd.cgi";	/* �V�X�e����� */
const prog_char	cgi6[] = "favico";	/* favicon */
const prog_char *cgi[] PROGMEM = { cgi0, cgi1, cgi2, cgi3, cgi4, cgi5, cgi6 };

const prog_char	menu0[] = "FIX NETWORK SETTING";
const prog_char	menu1[] = "TIME SERVER SETTING";
const prog_char	menu2[] = "TIME PROVIDE SETTING";
const prog_char	menu3[] = "TIME BROADCAST LOG";
const prog_char	menu4[] = "EVENT LOG";
const prog_char	menu5[] = "SYSTEM INFOMATION";
const prog_char *menu[] PROGMEM = { menu0, menu1, menu2, menu3, menu4, menu5 };


/* ---------- CGI������ ---------- */

/**
*	�A�h���X����(CGI)
*	 in	�f�[�^�擪�ʒu
*	out	�Ȃ�
*/
static void	http_netseq( char *buf )
{
	byte	i;
	char	*p;
	word	adr;
	dword	dw;

	for( i = 0; i < 4; i++ ){	/* �f�[�^��납�珈������(NULL�Ŏ~�߂�̂�) */
		p = strstr_P( buf, (prog_char *)pgm_read_word( itmip + 3 - i ));	/* ���ږ���r */
		if( p == NULL ){
			break;
		}
		if( ipstr2bin( p + 3, (dword *)&dw ) == TRUE ){	/* �A�h���X�����񁨐��l */
			adr = pgm_read_word( eepip + 3 - i );	/* �i�[��A�h���X */
			EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
			eeprom_update_dword((uint32_t *)adr , dw );
		}
		*( p - 1 ) = C_NULL;	/* &�̂Ƃ����NULL */
	}
}


/**
*	NTP�T�[�o�ݒ菈��(CGI)
*	 in	�f�[�^�擪�ʒu
*	out	�Ȃ�
*/
static void	http_ntpsrvseq( char *buf )
{
	byte	i;
	char	*p, tmp[32];
	int	a;
	word	w;
	char	*srvbuf[] = { ntpsrv1, ntpsrv2, ntpsrv3, ntpsrv4 };

	for( i = 0; i < 4; i++ ){	/* �f�[�^��납�珈������(NULL�Ŏ~�߂�̂�) */
		p = strstr_P( buf, (prog_char *)pgm_read_word( itmntp + 3 - i ));/* ���ږ���r */
		if( p == NULL ){	/* ������Ȃ��Ȃ�����I��� */
			srvpnt = osrvpnt = 0;	/* �|�C���^���Z�b�g */
			break;
		}
		memset( tmp, 0, sizeof( tmp ));
		strcpy( tmp, p + 3 );
		a = 3 - i;
		strcpy( srvbuf[a], tmp );	/* �����ɔ��f */
		w = pgm_read_word( eepntp + a );	/* �i�[��A�h���X */
		EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
		eeprom_update_block((uint8_t *)tmp, (uint8_t *)w, 32 );
		*( p - 1 ) = C_NULL;	/* &�̂Ƃ����NULL */
	}
}


/**
*	NTP�u���[�h�L���X�g�ݒ�(CGI)
*	 in	�f�[�^�擪�ʒu
*	out	�Ȃ�
*/
static void	http_ntpbcastseq( char *buf )
{
	char	*p;
	dword	dw;

	p = strstr_P( buf, PSTR( "ITBL" ));
	if( p == NULL ){
		return;
	}
	binterval = _atoi( p + 5 );
	if( binterval > 65534U ){
		binterval = 0U;
	}
	EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
	eeprom_update_word((uint16_t *)EEP_NTPBITBL, binterval );
	*( p - 1 ) = C_NULL;	/* &�̂Ƃ����NULL */
	p = strstr_P( buf, PSTR( "BC" ));
	if( p != NULL ){
		if( ipstr2bin( p + 3, (dword *)&dw ) == TRUE ){
			EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
			eeprom_update_dword((uint32_t *)EEP_NTPBCAST, dw );
		}
	}
}


/* ---------- HTTP������ ---------- */

/**
*	�w�b�_�}��
*	 in	���j���[�ԍ�
*	out	�T�C�Y
*/
word	http_msgheader( char num )
{
	word	size;

	enc_txseek( TCP_DATA );
	size = enc_writebufc( msg_head );
	size += enc_writebufc( (prog_char *)pgm_read_word( menu + num ));
	size += enc_writebufc( PSTR( "</B><BR><FORM ACTION=\"" ));
	size += enc_writebufc( (prog_char *)pgm_read_word( cgi + num ));
	size += enc_writebufc( PSTR( "\" METHOD=\"GET" ));

	return	size;
}


/**
*	���O��ʃw�b�_�}��
*	 in	���j���[�ԍ�
*	out	�T�C�Y
*/
word	http_msglogheader( char num )
{
	word	size;

	enc_txseek( TCP_DATA );
	size = enc_writebufc( msg_head );
	size += enc_writebufc( (prog_char *)pgm_read_word( menu + num ));
	size += enc_writebufc( PSTR( "</B><BR><BR><TABLE BORDER=\"1\"><TR><TH WIDTH=\"" ));

	return	size;
}


/**
*	���O��ʂ̃y�[�W�ؑցE�N���A�����}��
*	 in	  page: �\���y�[�W
*		errclr: �G���[�o�̓N���A
*	out	�T�C�Y
*/
word	http_msgpagechg( char page, swbool errclr )
{
	word	size;
	prog_char	*p;

	p = (prog_char *)pgm_read_word( cgi + page );
	size = enc_writebufc( PSTR( "</TABLE><BR><A HREF=\"" ));
	size += enc_writebufc( p );
	size += enc_writebufc( PSTR( "?PG=0\">[1]</A>&emsp;<A HREF=\"" ));
	size += enc_writebufc( p );
	size += enc_writebufc( PSTR( "?PG=1\">[2]</A>&emsp;<A HREF=\"" ));
	size += enc_writebufc( p );
	size += enc_writebufc( PSTR( "?CLR\">LOG CLEAR</A>" ));
	if( errclr == on ){
		size += enc_writebufc( PSTR( "&emsp;<A HREF=\"" ));
		size += enc_writebufc( p );
		size += enc_writebufc( PSTR( "?ERRRST\">ERROR OFF</A><BR>" ));
	}
	else{
		size += enc_writebufc( PSTR( "<BR>" ));
	}

	return	size;
}


/**
*	�t�b�^�}��
*	 in	on:�߂�L�� off:�߂閳��
*	out	�T�C�Y
*/
word	http_msgfooter( swbool sw )
{
	word	size;

	size = 0;
	if( sw == on ){
		size += enc_writebufc( PSTR( "<BR><A HREF=\"./\">MAIN MENU</A><BR>" ));
	}
	size += enc_writebufc( PSTR( "<BR>Copyright (c)Junnichi Tomaru" ));
	size += enc_writebufc( PSTR( "</CENTER></BODY></HTML>" ));

	return	size;
}


/**
*	���ڏ��𑗐M�o�b�t�@�ɓ����
*	 in	
*	out	�T�C�Y
*/
word	http_setitem( htitem_t *itm )
{
	word	size;
	char	tmp[4];

	size = enc_writebufc( PSTR( "\"><BR>" ));
	size += enc_writebufc( itm->title );	/* ���ڃ^�C�g�� */
	size += enc_writebufc( PSTR( "<BR><INPUT TYPE=\"TEXT\" NAME=\"" ));
	size += enc_writebufc( itm->item );	/* ���ږ� */
	size += enc_writebufc( PSTR( "\" SIZE=\"" ));
	size += enc_writebuffer((byte *)uctoaz( itm->len, tmp ), strlen( tmp ));
	size += enc_writebufc( PSTR( "\" MAXLENGTH=\"" ));
	size += enc_writebuffer((byte *)uctoaz( itm->max, tmp ), strlen( tmp ));
	size += enc_writebufc( PSTR( "\" VALUE=\"" ));
	size += enc_writebuffer((byte *)itm->buf, strlen( itm->buf ));

	return	size;
}


/**
*	�A�h���X�𑗐M�o�b�t�@�ɓ����
*	 in	(0�`7)
*	out	���O����
*/
word	http_putaddr( char nn )
{
	char	buf[16];
	dword	dw;
	word	adr;
	htitem_t	itm;

	adr = pgm_read_word( eepip + nn );
	EEP_READYWAIT( );	/* �A�N�Z�X�\�܂ő҂� */
	dw = eeprom_read_dword( (uint32_t *)adr );
	if( dw == LD_MAX ){	/* ������Ă��Ȃ� */
		dw = pgm_read_dword( dfltadr + nn );
	}
	itm.title = (prog_char *)pgm_read_word( nameip + nn );
	itm.item = (prog_char *)pgm_read_word( itmip + nn );
	itm.len = 18;		/* �g���� */
	itm.max = 15;		/* �ݒ蒷�� */
	itm.buf = long2ipstr( dw, buf );

	return	http_setitem( &itm );
}


/**
*	�l�b�g���[�N�ݒ�
*	 in	off:�\������ on:�ύXOK
*	out	0:���� 1:�G���[����
*/
byte	http_putnetwork( swbool sw )
{
	word	size;

	size = http_msgheader( PAGENW );
	size += http_putaddr( 0 );	/* IP ADDRESS */
	size += http_putaddr( 1 );	/* NETMASK */
	size += http_putaddr( 2 );	/* GATEWAY */
	size += http_putaddr( 3 );	/* DNS SERVER */
	if( sw == on ){
		size += enc_writebufc( msg_chgend );
	}
	else{	/* �ݒ� */
		size += enc_writebufc( msg_chg );
	}
	size += http_msgfooter( on );	/* �t�b�^ */

	return	tcp_output(( PSH_FLAG | ACK_FLAG ), tstmp, size );
}


/**
*	NTP�A�h���X�𑗐M�o�b�t�@�ɓ����
*	 in	(0�`3)
*	out	���O����
*/
word	http_putntpsrvaddr( char nn )
{
	char	buf[32];
	word	adr;
	prog_char	*dflt;
	htitem_t	itm;

	adr = pgm_read_word( eepntp + nn );	/* �i�[�A�h���X */
	dflt = (prog_char *)pgm_read_word( dfltntp + nn );	/* �f�t�H���g */
	eep_getstring32( adr, buf, dflt );
	itm.title = (prog_char *)pgm_read_word( namentp + nn );	/* ���ږ� */
	itm.item = (prog_char *)pgm_read_word( itmntp + nn );	/* ���O */
	itm.len = 33;	/* �g���� */
	itm.max = 31;	/* �ݒ蒷�� */
	itm.buf = buf;

	return	http_setitem( &itm );
}


/**
*	NTP�T�[�o�ݒ�
*	 in	off:�\������ on:�ύXOK
*	out	0:���� 1:�G���[����
*/
static byte	http_ntpsrv( swbool sw )
{
	word	size;

	size = http_msgheader( PAGENS );
	size += http_putntpsrvaddr( 0 );	/* NTP SERVER1 */
	size += http_putntpsrvaddr( 1 );	/* NTP SERVER2 */
	size += http_putntpsrvaddr( 2 );	/* NTP SERVER3 */
	size += http_putntpsrvaddr( 3 );	/* NTP SERVER4 */
	if( sw == on ){
		size += enc_writebufc( msg_chgend );
	}
	else{	/* �ݒ� */
		size += enc_writebufc( msg_chg );
	}
	size += http_msgfooter( on );	/* �t�b�^ */

	return	tcp_output(( PSH_FLAG | ACK_FLAG ), tstmp, size );
}


/**
*	NTP�u���[�h�L���X�g�ݒ�
*	 in	off:�\������ on:�ύXOK
*	out	0:���� 1:�G���[����
*/
static byte	http_ntpbcast( swbool sw )
{
	word	size;
	char	buf[8];

	size = http_msgheader( PAGENB );
	size += http_putaddr( 4 );	/* ADDRESS */
	size += enc_writebufc( PSTR( "\"><BR><BR>INTERVAL(Sec. 0 or >65534 Ignore)<BR><INPUT TYPE=\"TEXT\" NAME=\"ITBL\" SIZE=\"8\" MAXLENGTH=\"5\" VALUE=\"" ));
	ustoaz( binterval, buf );
	size += enc_writebuffer((byte *)buf, strlen( buf ));
	if( sw == on ){
		size += enc_writebufc( msg_chgend );
	}
	else{	/* �ݒ� */
		size += enc_writebufc( msg_chg );
	}
	size += http_msgfooter( on );	/* �t�b�^ */

	return	tcp_output(( PSH_FLAG | ACK_FLAG ), tstmp, size );
}


/**
*	�Q���̐��l�𕶎��ɂ���ENC�̃o�b�t�@�ɏ�������
*	 in	�l
*	out	����
*/
static word	write_val2( char val )
{
	char	buf[4];

	uctoaz( val, buf );
	return	enc_writebuffer((byte *)&buf[1], 2 );
}


/**
*	�S���̐��l�𕶎��ɂ���ENC�̃o�b�t�@�ɏ�������
*	 in	�l
*	out	����
*/
static word	write_val4( int val )
{
	char	buf[8];

	ustoaz( val, buf );
	return	enc_writebuffer((byte *)&buf[1], 4 );
}


/**
*	�������t�H�[�}�b�g����ENC�̃o�b�t�@�ɓ����
*	 in	�����f�[�^
*	out	����
*/
word	writedate( http_tm *t )
{
	word	size;

	size = write_val4( t->year );	/* �N */
	enc_writebuf( '/' );
	size++;
	size += write_val2( t->mon );	/* �� */
	enc_writebuf( '/' );
	size++;
	size += write_val2( t->day );	/* �� */
	enc_writebuf( ' ' );
	size++;
	size += write_val2( t->hour );	/* �� */
	enc_writebuf( ':' );
	size++;
	size += write_val2( t->min );	/* �� */
	enc_writebuf( ':' );
	size++;
	size += write_val2( t->sec );	/* �b */

	return	size;
}


/**
*	�␳���O�\���T�u���[�`��
*	 in	�ʒu
*	out	����
*/
static word	caliblog_sub( byte pnt )
{
	http_tm	ht;
	cal_t	ct;
	word	size, sec, ms;
	char	buf[16];
	byte	pol;

	ct = callog[pnt];
	size = enc_writebufc( PSTR( "<TR ALIGN=\"CENTER\"><TD>" ));
	size += write_val2( pnt + 1 );	/* �ʒu */
	size += enc_writebufc( PSTR( "</TD><TD>" ));
	if(( ct.flg >= 1 ) && ( ct.flg <= 3 )){	/* �����\�� */
		ht.year = ct.year;
		ht.mon = ct.mon;
		ht.day = ct.day;
		ht.hour = ct.hour;
		ht.min = ct.min;
		ht.sec = ct.sec;
		size += writedate( &ht );
	}
	else{	/* �\���Ȃ� */
		size += enc_writebufc( PSTR( "&emsp;" ));
	}
	size += enc_writebufc( PSTR( "</TD><TD>" ));
	if( ct.flg == LOG_BCAST ){	/* �z�M */
		size += enc_writebufc( PSTR( "-----</TD><TD>" ));
		size += enc_writebufc( PSTR( "DISTRIBUTION" ));
	}
	else if( ct.flg == LOG_BCRX ){	/* �␳ */
		if( ct.csec > 32400 ){		/* 9���ԉz������ */
			size += enc_writebufc( PSTR( "over 9hours." ));
		}
		else{
			pol = ( ct.csec < 0 )? '-': '+';	/* �␳�b */
			enc_writebuf( pol );
			size++;
			sec = _abs( ct.csec );
			ustoaz( sec, buf );
			size += enc_writebuffer((byte *)buf, strlen( buf ));
			size += enc_writebufc( PSTR( "sec," ));
			pol = ( ct.cms < 0 )? '-': '+';	/* �␳�~���b */
			enc_writebuf( pol );
			size++;
			ms = _abs( ct.cms );		/* �������肵���̂łɐ�Βl���� */
			ustoaz( ms, buf );
			size += enc_writebuffer((byte *)buf+2, strlen( buf ) - 2 );	/* �~���b��3���Ȃ̂� */
			size += enc_writebufc( PSTR( "ms." ));
		}
		size += enc_writebufc( PSTR( "</TD><TD>BC ADJUST" ));
	}
	else{			/* �o�^�Ȃ� */
		size += enc_writebufc( PSTR( "</TD><TD>&emsp;" ));
	}
	size += enc_writebufc( PSTR( "</TD></TR>" ));

	return	size;
}


/**
*	�␳�E�z�M���O�\��
*	 in	�t���O
*	out	0:���� 1:�G���[����
*/
static byte	http_caliblog( byte flg )
{
	word	size;
	byte	i, p, sts;

	p = 0;
	if( flg == 1 ){		/* ���y�[�W */
		p = 8;
	}
	else if( flg == 2 ){	/* �N���A */
		clear_callog( );
	}
	/* ----- �����P��� ----- */
	size = http_msglogheader( PAGECL );
	size += enc_writebufc( PSTR( "50\"></TH><TH WIDTH=\"150\">TIME</TH><TH WIDTH=\"150\">AMOUNT</TH><TH WIDTH=\"150\">NOTE</TH></TR>" ));
	sts = tcp_output(( PSH_FLAG | ACK_FLAG ), tstmp, size );
	if( sts != EVNT_NONE ){
		return	sts;
	}
	/* ----- �����Q��� ----- */
	enc_txseek( TCP_DATA );
	size = 0U;
	for( i = 0; i < 8; i++ ){	/* ���O */
		size += caliblog_sub( p + i );
	}
	sts = tcp_output(( PSH_FLAG | ACK_FLAG ), tstmp, size );
	if( sts != EVNT_NONE ){
		return	sts;
	}
	/* ----- �����R��� ----- */
	enc_txseek( TCP_DATA );
	size = http_msgpagechg( PAGECL, off );
	size += http_msgfooter( on );	/* �t�b�^ */

	return	tcp_output(( PSH_FLAG | ACK_FLAG ), tstmp, size );
}


/**
*	�C�x���g���O�\���T�u���[�`��
*	 in	�ʒu
*	out	����
*/
static word	eventlog_sub( byte pnt )
{
	word	size;
	http_tm	ht;
	evntlog_t	elt;
	size_t	t;
	char	buf[16];

	t = sizeof( evntlog_t );
	size = enc_writebufc( PSTR( "<TR ALIGN=\"CENTER\"><TD>" ));
	elt = eventlog[pnt];
	if( elt.evnt != EVNT_NONE ){	/* �C�x���g�o�^���� */
		if(( elt.evnt >= EVNT_PWR_ON ) && ( elt.evnt <= EVNT_WDT_RESET )){	/* �����̖����C�x���g */
			size += enc_writebufc( PSTR( "----/--/-- --:--:--" ));
		}
		else{
			ht.year = elt.year;
			ht.mon = elt.mon;
			ht.day = elt.day;
			ht.hour = elt.hour;
			ht.min = elt.min;
			ht.sec = elt.sec;
			size += writedate( &ht );
		}
		size += enc_writebufc( PSTR( "</TD><TD>" ));
		size += enc_writebufc((prog_char *)pgm_read_word( event + elt.evnt ));	/* �C�x���g */
		if( elt.evnt == EVNT_ENC_RXRCVERR ){	/* ��M�G���[ */
			size += enc_writebufc( PSTR( "(STS:" ));
			ustoahz( elt.arg1, buf );
			size += enc_writebuffer((byte *)buf, strlen( buf ));
			size += enc_writebufc( PSTR( ",CNT:" ));
			ustoahz( elt.arg2, buf );
			size += enc_writebuffer((byte *)buf, strlen( buf ));
			size += enc_writebufc( PSTR( ",NEXT:" ));
			ustoahz( (word)elt.arg3, buf );
			size += enc_writebuffer((byte *)buf, strlen( buf ));
			enc_writebuf( ')' );
			size++;
		}
		else if(( elt.evnt == EVNT_ICMP_MESSAGE ) || ( elt.evnt == EVNT_ICMP_RXSUMERR )){	/* ICMP */
			size += enc_writebufc( PSTR( "(TYPE:" ));
			uctoahz( (byte)elt.arg1, buf );
			size += enc_writebuffer((byte *)buf, strlen( buf ));
			size += enc_writebufc( PSTR( ",CODE:" ));
			uctoahz( (byte)elt.arg2, buf );
			size += enc_writebuffer((byte *)buf, strlen( buf ));
			size += enc_writebufc( PSTR( ",DATA1:" ));
			ultoahz( elt.arg3, buf );
			size += enc_writebuffer((byte *)buf, strlen( buf ));
			enc_writebuf( ')' );
			size++;
		}
		else if(( elt.evnt == EVNT_TCP_RXSUMERR ) || ( elt.evnt == EVNT_UDP_RXSUMERR )){	/* TCP,UDP */
			size += enc_writebufc( PSTR( "(IN:" ));
			uctoahz( (byte)elt.arg1, buf );
			size += enc_writebuffer((byte *)buf, strlen( buf ));
			size += enc_writebufc( PSTR( ",OUT:" ));
			uctoahz( (byte)elt.arg2, buf );
			size += enc_writebuffer((byte *)buf, strlen( buf ));
			size += enc_writebufc( PSTR( ",ADDR:" ));
			ultoahz( elt.arg3, buf );
			size += enc_writebuffer((byte *)buf, strlen( buf ));
			enc_writebuf( ')' );
			size++;
		}
		else if( elt.evnt == EVNT_NTP_UNSYNC ){	/* NTP */
			size += enc_writebufc( PSTR( "(SERVER:" ));
			long2ipstr( elt.arg3, buf );	/* ARG3=IPADDR */
			size += enc_writebuffer((byte *)buf, strlen( buf ));
			enc_writebuf( ')' );
			size++;
		}
	}
	else{
		size += enc_writebufc( PSTR( "&emsp;</TD><TD>&emsp;" ));	/* �� */
	}
	size += enc_writebufc( PSTR( "</TD></TR>" ));

	return	size;
}


/**
*	�C�x���g���O�\��
*	 in	�t���O(1:PAGE2 2:LOGCLR 3:ERRRST)
*	out	0:���� 1:�G���[����
*/
static byte	http_eventlog( byte flg )
{
	word	size;
	byte	i, p, sts;

	p = 0;
	if( flg == 1 ){		/* PG=1 */
		p = 8;
	}
	else if( flg == 2 ){	/* CLR */
		clear_eventlog( );
	}
	else if( flg == 3 ){	/* ERRRST */
		ERRRST( );	/* �G���[LED���� */
		WORD_BIT15_OFF( opests );	/* ERROR OFF */
	}
	/* ----- �����P��� ----- */
	size = http_msglogheader( PAGEEL );
	size += enc_writebufc( PSTR( "150\">TIME</TH><TH WIDTH=\"500\">EVENT</TH></TR>" ));
	sts = tcp_output(( PSH_FLAG | ACK_FLAG ), tstmp, size );
	if( sts != EVNT_NONE ){
		return	sts;
	}
	/* ----- �����Q��� ----- */
	enc_txseek( TCP_DATA );
	size = 0U;
	for( i = 0; i < 8; i++ ){	/* ���O */
		size += eventlog_sub( p + i );
	}
	sts = tcp_output(( PSH_FLAG | ACK_FLAG ), tstmp, size );
	if( sts != EVNT_NONE ){
		return	sts;
	}
	/* ----- �����R��� ----- */
	enc_txseek( TCP_DATA );
	size = http_msgpagechg( PAGEEL, on );
	size += http_msgfooter( on );	/* �t�b�^ */

	return	tcp_output(( PSH_FLAG | ACK_FLAG ), tstmp, size );
}


/**
*	�V�X�e�����\���T�u
*	 in	p:���ږ�, q:�l
*	out	����
*/
static word	http_systemdatasub( const prog_char *p, char *q )
{
	word	size;

	size = enc_writebufc( PSTR( "<TR ALIGN=\"CENTER\"><TD>" ));
	size += enc_writebufc( p );
	size += enc_writebufc( PSTR( "</TD><TD>" ));
	size += enc_writebuffer((byte *)q, strlen( q ));
	size += enc_writebufc( PSTR( "</TD></TR>" ));

	return	size;
}

/* ----- ���샂�[�h ----- */
const prog_char	opmode0[] = "NTP ADJUSTMENT MODE";
const prog_char	opmode1[] = "NTP ADJ. NMEAOUT MODE";
const prog_char	opmode2[] = "BROADCAST ADJUSTMENT MODE";
const prog_char	opmode3[] = "BROADCAST ADJ. NMEAOUT MODE";
const prog_char	opmode4[] = "UNIVERSAL GPS ADJUSTMENT MODE";
const prog_char	opmode5[] = "MTK3339 GPS ADJUSTMENT MODE";
const prog_char *opmode[] PROGMEM = {
	opmode0, opmode1, opmode2, opmode3, opmode4, opmode5
};

/* ----- �����X�e�[�^�X ----- */
const prog_char	calsts0[] = "NO ALARM(TIME SYNCRONIZED)";
const prog_char	calsts1[] = "TIME ALARM(NOT SYNCRONIZED)";
const prog_char	calsts2[] = "TIME UNADJUSTED";
const prog_char	calsts3[] = "TIME OPERATION TIMEOUT";
const prog_char	calsts4[] = "UTC MODE(VALID)";
const prog_char	calsts5[] = "UTC PPSOUT MODE(VALID)";
const prog_char	calsts6[] = "GPS TIME NO VALID";
const prog_char	calsts7[] = "NO TIME INPUT";
const prog_char *calsts[] PROGMEM = {
	calsts0, calsts1, calsts2, calsts3, calsts4,
	calsts5, calsts6, calsts7
};

/**
*	�V�X�e�����\��
*	 in	�Ȃ�
*	out	0:���� 1:�G���[����
*/
static byte	http_systemdata( void )
{
	long	cnt;
	word	wt, size;
	byte	i;
	char	*p, *q;
	char	buf[32], buf2[32];

	size = http_msglogheader( PAGESD );
	size += enc_writebufc( PSTR( "200\">ITEM</TH><TH WIDTH=\"300\">VALUE</TH></TR>" ));
	size += http_systemdatasub( PSTR( "IP ADDRESS" ), long2ipstr( myipaddr, buf ) );
	size += http_systemdatasub( PSTR( "SUBNET MASK" ), long2ipstr( netmask, buf ) );
	size += http_systemdatasub( PSTR( "GATEWAY ADDRESS" ), long2ipstr( gateway, buf ) );
	size += http_systemdatasub( PSTR( "DNS SERVER" ), long2ipstr( dns_server, buf ) );
	size += http_systemdatasub( PSTR( "NETBIOS NAME" ), nbns_name );
	if( dhcp_mode == DHCP_ABORT ){
		strcpy_P( buf, PSTR( "FIX ADDRESS" ));
	}
	else{
		strcpy_P( buf, PSTR( "USE DHCP SERVER" ));
	}
	size += http_systemdatasub( PSTR( "DHCP MODE" ), buf );
	strcpy_P( buf, (prog_char *)pgm_read_word( opmode + adjmode ));	/* ���샂�[�h */
	size += http_systemdatasub( PSTR( "OPERATION MODE" ), buf );
	strcpy_P( buf, (prog_char *)pgm_read_word( calsts + time_sts ));	/* �����X�e�[�^�X */
	size += http_systemdatasub( PSTR( "TIME STATUS" ), buf );
	p = (char *)mac_address;
	q = buf;
	for( i = 0; i < 3; i++, p++, q += 2 ){	/* OUI */
		uctoahz( *p, q );
	}
	*q = '-';
	q++;
	for( i = 0; i < 3; i++, p++, q += 2 ){	/* Vendor */
		uctoahz( *p, q );
	}
	*q = C_NULL;
	size += http_systemdatasub( PSTR( "MAC ADDRESS" ), buf );	/* MAC ADDRESS */
	buf[0] = ( revid / 10 ) + '0';
	buf[1] = ( revid % 10 ) + '0';
	buf[2] = C_NULL;
	size += http_systemdatasub( PSTR( "ENC28J60 REVISION" ), buf );	/* REVISION */
	strcpy_P( buf, version );
	size += http_systemdatasub( PSTR( "FIRMWARE VERSION" ), buf );
	/* ���쎞�� */
	cnt = opetime;
	ltoaz( cnt / 60L, buf );	/* �� */
	strcpy( buf2, buf + 5 );
	strcat_P( buf2, PSTR( "HOUR " ));
	wt = (word)( cnt % 60L );
	ustoaz( wt, buf );
	strcat( buf2, buf + 3 );	/* �� */
	strcat_P( buf2, PSTR( "MIN." ));
	size += http_systemdatasub( PSTR( "OPERATING TIME" ), buf2 );
	size += enc_writebufc( PSTR( "</TABLE><BR>" ));
	size += http_msgfooter( on );	/* �t�b�^ */

	return	tcp_output(( PSH_FLAG | ACK_FLAG ), tstmp, size );
}


/**
*	�g�b�v�y�[�W�\��
*	 in	�Ȃ�
*	out	0:���� 1:�G���[����
*/
static byte	http_index( void )
{
	word	size;
	byte	i;

	enc_txseek( TCP_DATA );
	size = enc_writebufc( msg_head );
	size += enc_writebufc( PSTR( "KDB-SNTP-SERVER</B><BR>" ));
	for( i = 0; i < PAGE; i++ ){
		size += enc_writebufc( PSTR( "<BR><A HREF=\"./" ));
		size += enc_writebufc( (prog_char *)pgm_read_word( cgi + i ));	/* CGI�� */
		size += enc_writebufc( PSTR( "?\">" ));
		size += enc_writebufc( (prog_char *)pgm_read_word( menu + i ));	/* ���j���[�� */
		size += enc_writebufc( PSTR( "</A><BR>" ));
	}
	size += http_msgfooter( off );	/* �t�b�^ */

	return	tcp_output(( PSH_FLAG | ACK_FLAG ), tstmp, size );
}


/*
*	���O�p�f�[�^����
*	 in	�f�[�^�擪
*	out	�t���O
*/
static byte	http_outputsub( char *buf )
{
	byte	ret;

	ret = 0;
	if( strncmp_P( buf, PSTR( "PG=1" ), 4 ) == 0 ){
		ret = 1;
	}
	else if( strncmp_P( buf, PSTR( "CLR" ), 3 ) == 0 ){
		ret = 2;
	}
	else if( strncmp_P( buf, PSTR( "ERRRST" ), 6 ) == 0 ){
		ret = 3;
	}

	return	ret;
}


/**
*	�w�b�_�ԐM(HEAD���\�b�h)
*	 in	�Ȃ�
*	out	0:���� 1:�G���[����
*/
static byte	http_replyheader( void )
{
	word	size;

	enc_txseek( TCP_DATA );
	size = enc_writebufc( http_head );	/* �w�b�_�Ԃ� */

	return	tcp_output(( PSH_FLAG | ACK_FLAG ), tstmp, size );
}


/**
*	HTTP����
*	 in	�\�P�b�gID
*	out	0:���� 1:�G���[����
*/
byte	http_output( int sid )
{
	char	*p, *q, *r;
	byte	i, ret, flg;
	swbool	sw;

	ret = 0;
	tstmp = &sock_tbl[sid];
	if( cgien[sid] == CGI_GET ){	/* �y�[�W�v�� */
		p = ( sid == 0 )? cgibuf1: cgibuf2;	/* cgi���擪 */
		q = p + 7;	/* �f�[�^�擪 */
		r = strstr_P( p, PSTR( " HTTP/" ));	/* �f�[�^�I�[ */
		*r = C_NULL;
		for( i = 0; i < PAGE; i++ ){
			if( strncmp_P( p, (prog_char *)pgm_read_word( cgi + i ), 6 ) == 0 ){	/* ��v */
				break;
			}
		}
		if( i == PAGE ){	/* �w��Ȃ��܂��͊Y���Ȃ� */
			ret = http_index( );
		}
		else if( i == PAGENW ){	/* �l�b�g���[�N�ݒ� */
			if( *q != C_NULL ){
				http_netseq( q );
				sw = on;
			}
			else{
				sw = off;
			}
			ret = http_putnetwork( sw );
		}
		else if( i == PAGENS ){	/* NTP�T�[�o�ݒ� */
			if( *q != C_NULL ){
				http_ntpsrvseq( q );
				sw = on;
			}
			else{
				sw = off;
			}
			ret = http_ntpsrv( sw );
		}
		else if( i == PAGENB ){	/* NTP�u���[�h�L���X�g�ݒ� */
			if( *q != C_NULL ){
				http_ntpbcastseq( q );
				sw = on;
			}
			else{
				sw = off;
			}
			ret = http_ntpbcast( sw );
		}
		else if( i == PAGECL ){	/* �␳���O */
			flg = http_outputsub( q );
			ret = http_caliblog( flg );
		}
		else if( i == PAGEEL ){	/* �C�x���g���O */
			flg = http_outputsub( q );
			ret = http_eventlog( flg );
		}
		else if( i == PAGESD ){	/* �V�X�e����� */
			ret = http_systemdata( );
		}
		else{	/* favicon.ico */
			ret = tcp_output(( FIN_FLAG | ACK_FLAG ), tstmp, 0U );
		}
	}
	else if( cgien[sid] == CGI_HEAD ){	/* �w�b�_�v�� */
		ret = http_replyheader( );
	}
	else{	/* �Ӑ}���Ȃ��v�� */
		ret = tcp_output(( FIN_FLAG | ACK_FLAG ), tstmp, 0U );
	}

	return	ret;
}


/* end of http.c */
