/**
*	KDB-SNTP-SERVER		���C��
*	Copyright (c)Junnichi Tomaru
*/
#include	"include/avrntp.h"

/* ----- �q���[�Y�r�b�g ----- */
__fuse_t __fuse __attribute__((section (".fuse"))) = 
{
	.low =      0xFF,
	.high =     0xD7,
	.extended = 0xFC
};
/* ----- ���b�N�r�b�g ----- */
unsigned char __lock __attribute__((section (".lock"))) = LOCKBITS_DEFAULT;

/* ----- �O���[�o���ϐ��ǂݍ��� ----- */
#include	"constantval.c"			/* �ǂݎ���p */
#include	"bios/bios_inival.c"		/* �o�C�I�X�O���[�o���ϐ� */
#include	"stack/ipv4/ipv4_inival.c"	/* �v���g�R���X�^�b�N�p�ϐ� */
#include	"inival.c"			/* ��ʃO���[�o���ϐ� */

/* ---------- �T�u���[�`���Ƃ� ---------- */

/**
*	�␳�C���^�[�o���X�V
*	 in	�ʒu
*	out	�Ȃ�
*/
void	change_calinterval( int cycle )
{
	int	i;

	i = (int)( make_rand( ) & LONG_MASK_L05 );	/* �ω���0-31 */
	i -= 16;			/* 0-31���}16 */
	cinterval = cycle + i;		/* �C���^�[�o�����}16�b�U�� */
	if( cinterval < 60 ){		/* ver2.19.00 */
		cinterval = 60;
	}
	ocal_time = world_time;		/* ���̎����̂��� */
}

/**
*	�␳�c�莞�ԎZ�o
*	 in	�Ȃ�
*	out	�c�莞��
*/
time_t	calc_calremtime( void )
{
	return	_difftime( cinterval, calc_timediff( &ocal_time, &world_time ));
}

/**
*	�z�M�c�莞�ԎZ�o
*	 in	�Ȃ�
*	out	�c�莞��
*/
time_t	calc_bcastremtime( void )
{
	return	_difftime( binterval, calc_timediff( &obcast_time, &world_time ));
}

/**
*	�������X�V
*	 in	�Ȃ�
*	out	�Ȃ�
*/
static void	update_time( void )
{
	time_t	utccnt;
	struct tm	*dspt;
	byte	flg;

	_di( );
	utccnt = utc_sec;
	_ei( );
	/* ----- UTC���� ----- */
	dspt = gmtime( &utccnt );	/* COUNT->UTC */
	if( dspt == NULL ){	/* �����ُ� */
		lists = LI_ALARM;
		time_sts = TIME_ILLEGAL;
		return;
	}
	/* ----- �������� ----- */
	flg = 0;
	utc_time = *dspt;
	if( lists == LI_INC ){		/* 60�b�}�� UTC 00:00:00 */
		if(( liflg == LI_NONE ) && ( utc_time.tm_hour == 0 ) && ( utc_time.tm_min == 0 ) && ( utc_time.tm_sec == 0 )){
			utccnt--;	/* �O�̕���60�b�Ƃ��邽��00�b��59�b */
			liflg = LI_INCREQ;
			flg = 1;
		}
		else if( liflg == LI_INCREQ ){	/* 60�b�}���� */
			liflg = LI_UPDATED;
		}
	}
	else if( lists == LI_DEC ){	/* 59�b�폜 UTC 23:59:59 */
		if(( liflg == LI_NONE ) && ( utc_time.tm_hour == 23 ) && ( utc_time.tm_min == 59 ) && ( utc_time.tm_sec == 59 )){
			utccnt++;	/* 59�b��00�b�Ƃ��邽�� */
			utc_sec++;
			liflg = LI_UPDATED;
			flg = 2;
		}
	}
	if( flg != 0 ){			/* COUNT->UTC��蒼�� */
		dspt = gmtime( &utccnt );
		utc_time = *dspt;
		if( dspt == NULL ){	/* �����ُ� */
			lists = LI_ALARM;	/* ver2.20.00 */
			cal_updated = off;
		}
	}
	/* ----- WTC���� ----- */
	utccnt += timeoffset;		/* �I�t�Z�b�g������ */
	dspt = gmtime( &utccnt );	/* UTC->WTC */
	world_time = *dspt;
	if( liflg == LI_UPDATED ){	/* ���邤�b�����I���(�폜�܂��͑}��������) */
		lists = LI_READY;	/* LI���� */
		liflg = LI_NONE;	/* �����Ȃ� */
		time_sts = TIME_ILLEGAL;
	}
	else if( liflg == LI_INCREQ ){	/* 60�b�}�� v0.30 */
		world_time.tm_sec = 60;	/* TIME�֐��ł͏����ł��Ȃ��̂ŁA�����ŏ��� */
	}
}

/* ---------- ���������[�`�� ---------- */

/**
*	�l�̏�����
*	�����l���K�v�ȕϐ�������������
*	 in	�Ȃ�
*	out	�Ȃ�
*/
static void	init_value( void )
{
	lcden = on;				/* �����͉t������Œ� */
}

/* BAUD RATE */
const prog_uint16_t	baudtbl[] = {
	BPS1200, BPS2400, BPS4800, BPS9600, BPS19200, BPS38400, BPS57600
};

/**
*	�|�[�g��������
*	 in	�Ȃ�
*	out	�Ȃ�
*	DDx 0:���� 1:�o��
*/
static void	init_internal( void )
{
	byte	sts;

	/* --- ����d�͊֌W --- */
#if defined( USE_644PA )
	PRR0 = ( BYTE_BIT_X( PRTWI ) | BYTE_BIT_X( PRTIM1 ) | BYTE_BIT_X( PRUSART1 ) | BYTE_BIT_X( PRADC ));	/* TWI,TMR1,USART1,ADC��~ */
#else
	PRR = ( BYTE_BIT_X( PRTWI ) | BYTE_BIT_X( PRTIM1 ) | BYTE_BIT_X( PRADC ));	/* TWI,TMR1,ADC��~ */
#endif
#if defined( USE_1284P )
	PRR1 = BB_X( 0 );	/* TMR3��~ */
#endif
	MCUCR = BYTE_BIT_X( JTD );	/* JTAG DISABLE 2�� */
	MCUCR = BYTE_BIT_X( JTD );
	ACSR = BYTE_BIT_X( ACD );	/* �R���p���[�^��~ */

	/* --- �|�[�g�����l�A���� --- */
	PORTA = 0x00;		/* ��ԏo��=L */
	PORTB = 0x10;		/* SS=H */
	PORTC = 0x80;		/* LCD=W only,LAT='H' */
	PORTD = 0x0B;		/* TxD0,RxD0=PullUp,BL=ON */
	DDRA = 0xFF;		/* �o�� */
	DDRB = 0xB0;		/*  */
	DDRC = 0xFF;		/* LCD�|�[�g�o�͂�,LAT=OUT */
	DDRD = 0xCA;		/* BL,RESET,TxD=OUT */

	init_value( );

	/* --- SPI --- */
	SPCR = BYTE_BIT_X( MSTR );	/* �}�X�^�A2�����ɐݒ�*/
	SPSR = BYTE_BIT_X( SPI2X );	/* X2 */
	SPI_EN( );

	/* --- UART0 --- */
	UBRR0 = BPS9600;		/* 9600bps */
	UCSR0A = BYTE_BIT_X( U2X0 );	/* �{�� */
	UCSR0C = B8S1PN;		/* 8bit,stop1,Pn */

	/* --- Timer0 �C���^�[�o���^�C�},�v�������p --- */
	TCNT0 = 0;
	TCCR0A = BYTE_BIT_X( WGM01 );	/* CTC���� */
	TCCR0B = ( BYTE_BIT_X( CS00 ) | BYTE_BIT_X( CS01 ));	/* f/64 */
	OCR0A = TIMER0;			/* 12.8MHz / 64 / 200 = 1000Hz */
	TIMSK0 = BYTE_BIT_X( OCIE0A );	/* A��v���荞�� */

	/* --- Timer1 �\�� --- */
	/* --- Timer2 �v�������p --- */
	TCNT2 = 0;
	TCCR2A = BYTE_BIT_X( WGM21 );	/* CTC���� */
	TCCR2B = BYTE_BIT_X( CS22 );	/* f/64 */
	OCR2A = TIMER2;			/* 12.8MHz / 64 / 200 = 1000Hz */
	TIMSK2 = BYTE_BIT_X( OCIE2A );	/* A��v���荞�� */

	/* --- INT���荞��(���{�̂�main()) --- */
	EIFR = 0x00;			/* �t���O�N���A */
	EIMSK = EINT_DIS;		/* ��x���荞�݋֎~ */

	/* --- ���Z�b�g�v�����ׂ� --- */
	sts = MCUSR;
	if( BYTE_BIT0_CHK( sts ) ){		/* �d��ON���Z�b�g */
		update_eventlog( EVNT_PWR_ON );
	}
	else if( BYTE_BIT1_CHK( sts ) ){	/* �O�����Z�b�g */
		update_eventlog( EVNT_EXT_RESET );
		rebootflg = on;
	}
	else if( BYTE_BIT2_CHK( sts ) ){	/* �d���ቺ���Z�b�g */
		update_eventlog( EVNT_BOR_RESET );
		rebootflg = on;
	}
	else if( BYTE_BIT3_CHK( sts ) ){	/* WDT���Z�b�g */
		update_eventlog( EVNT_WDT_RESET );
		rebootflg = on;
	}
	MCUSR = 0;			/* ���Z�b�g�v���N���A */

	wdt_enable( WDT_TIMEOUT );	/* WDT�L�� */
	_ei( );
}

/* ---------- ���̑� ---------- */

/**
*	�`�F�b�N�Ԋu��ύX����
*	�͈͂�64,128,256,512,1024(sec)
*	�Ԋu�͍ő�1024�b
*	 in	�Ȃ�
*	out	�Ȃ�
*/
static void	change_chkinterval( void )
{
	int	val;

	val = cinterval;
	if( calmode == 1 ){		/* �Z������ */
		val = val >> 1;		/* 1/2�ɂ��� */
	}
	else if( calmode == 2 ){	/* �������� */
		val <<= 1;		/* �{�ɂ��� */
		if( val > maxpoll ){
			val = maxpoll;
		}
	}
	if( val < CYCLE_MIN ){		/* �d��������ŏ��Ƃ� */
		val = CYCLE_MIN;
	}
	change_calinterval( val );	/* �C���^�[�o���X�V */
}

/**
*	�������␳���ꂽ�Ƃ��̏���
*	 in	�Ȃ�
*	out	�Ȃ�
*/
static void	update_calibseq( void )
{
	byte	flg;
	byte	mode;

	flg = 0;
	mode = adjmode & BYTE_MASK_U7;
	if( mode == NTPADJ_MODE ){	/* NTP�v���ɂ��␳ */
		time_sts = TIME_ADJUSTED;
		sync_sts = SYNC_OK;
		change_chkinterval( );	/* �`�F�b�N�Ԋu�X�V */
		ocal_time = world_time;
	}
	else if( mode == BCAST_MODE ){	/* �u���[�h�L���X�g�ɂ��␳ */
		time_sts = TIME_ADJUSTED;
		sync_sts = SYNC_OK;
		update_callog( LOG_BCRX );
	}
	adjustseq = ADJUSTSEQ_NONE;	/* �V�[�P���X�I�� */
	if( inical == on ){		/* �͂��߂Ă̕␳ */
		inical = off;
		obcast_time = world_time;
	}
}

/**
*	����(�b)���X�V���ꂽ�Ƃ��̏���
*	 in	�Ȃ�
*	out	�Ȃ�
*/
static void	update_timeseq( void )
{
	time_t	remcal, rembc;
	word	ms;
	byte	flg, sts, wdbit;
	char	buf[8];

	if( nmea_en == on ){
		/*                01234567890123456789012345678901234567890 */
		/* ----- NMEA�o�� $GPRMC,hhmmss.mmm,A,,,,,,,DDMMYY,,,N*SS ----- */
		_di( );
		ms = utc_msec;
		_ei( );
		uctoaz( utc_time.tm_hour, buf );	/* �� */
		strncpy( nmea_data + 7, buf + 1, 2 );
		uctoaz( utc_time.tm_min, buf );		/* �� */
		strncpy( nmea_data + 9, buf + 1, 2 );
		uctoaz( utc_time.tm_sec, buf );		/* �b */
		strncpy( nmea_data + 11, buf + 1, 2 );
		ustoaz( ms, buf );			/* ms */
		strncpy( nmea_data + 14, buf + 2, 3 );
		nmea_data[18] = ( synchronized == on )? 'A': 'V';	/* �����L�� */
		uctoaz( utc_time.tm_mday, buf );	/* �� */
		strncpy( nmea_data + 26, buf + 1, 2 );
		uctoaz( utc_time.tm_mon + 1, buf );	/* �� */
		strncpy( nmea_data + 28, buf + 1, 2 );
		if( utc_time.tm_year >= 100 ){		/* 2000�` */
			ustoaz( utc_time.tm_year - 100, buf );	/* �N */
		}
		else{
			ustoaz( utc_time.tm_year, buf );
		}
		strncpy( nmea_data + 30, buf + 3, 2 );
		nmea_checksum( nmea_data, buf );	/* �T�� */
		strncpy( nmea_data + 37, buf, 2 );
		sio_setstr( nmea_data );
	}

	/* ---------- �v���g�R������ ---------- */
	arp_timer( );		/* ARP�L���b�V�� */
	resolve_timer( );	/* DNS,NBT�L���b�V�� */
	dhcp_sequense( );	/* DHCP���� */

	/* ---------- ��������E���� ---------- */
	/* ----- �����z�M�������� ----- */
	rembc = 0U;
	if( binterval != 0U ){	/* �����z�M�L�� */
		if( synchronized == on ){	/* �����������͔z�M���� */
			rembc = calc_bcastremtime( );
			if( rembc <= 0L ){
				sts = ntp_broadcast( );	/* �����z�M */
				if( sts != EVNT_NONE ){
					update_eventlog( sts );
				}
				obcast_time = world_time;
				update_callog( LOG_BCAST );	/* �z�M���O */
			}
		}
		else{		/* �����������ĂȂ��Ƃ��͔z�M���Ȃ� */
			obcast_time = world_time;
		}
	}
	else{	/* �����̂Ƃ��͔z�M���Ȃ� */
		obcast_time = world_time;
	}
	/* ----- �����v���������� ---- */
	if( adjmode == ADJ_NTP ){
		if( adjustseq == ADJUSTSEQ_NONE ){
			remcal = calc_calremtime( );			/* �␳�c�莞�ԎZ�o */
			if(( remcal <= 0L ) && ( myipaddr != 0UL )){	/* �A�h���X�������͗v�����Ȃ� */
				adjustseq = 1;
			}
		}
	}

	/* ---------- �^�C�}���� ---------- */
	if( ext7segen == on ){
		if(( on_time.wday == 0 ) && ( off_time.wday == 0 )){
			tim7segen = on;	/* �^�C�}������7�Z�O�����g�����͏펞�_�� */
		}
		else{
			wdbit = BYTE_BIT_X( world_time.tm_wday );
			if( on_time.wday & wdbit ){	/* ON�^�C�}�L���j�� */
				if(( on_time.hour == world_time.tm_hour ) && ( on_time.min == world_time.tm_min ) && ( on_time.sec == world_time.tm_sec )){
					tim7segen = on;
				}
			}
			if( off_time.wday & wdbit ){	/* OFF�^�C�}�L���j�� */
				if(( off_time.hour == world_time.tm_hour ) && ( off_time.min == world_time.tm_min ) && ( off_time.sec == world_time.tm_sec )){
					tim7segen = off;
				}
			}
		}
	}
	else{
		tim7segen = off;
	}

	/* ---------- �ғ����� ---------- */
	opecnt++;
	if( opecnt == 60 ){		/* �P��(���쎞�ԗp) */
		opecnt = 0;
		opetime++;
	}

	/* ---------- 7SEG�\�� ---------- */
	if( tim7segen == on ){
		disp7seg( &world_time );	/* 7�Z�O�o�� */
	}
	else{
		dispoff7seg( );		/* 7�Z�O���� */
	}
	/* ---------- ��ʕ\�� ---------- */
	if( disppage == 0 ){
		disp_nowtime( );	/* �����\�� */
	}
	else if( disppage == 4 ){
		dhcpdisp( );		/* DHCP�X�V�c�莞�ԕ\�� */
	}
	else if( disppage == 5 ){
		flg = 0;
		if( adjmode == GPSADJ_MODE ){		/* GPS */
			flg = 1;
		}
		else if( adjmode & BCAST_MODE ){	/* �z�M�ɂ��␳ */
			flg = 1;
		}
		else if( adjustseq != ADJUSTSEQ_NONE ){	/* �����␳�v�����Ƃ� */
			flg = 1;
		}
		if( flg == 1 ){
			disp_notime( 0 );		/* �J�E���g�����\�� */
		}
		else{
			disp_remtime( 0, remcal );	/* �Z���c�莞�ԕ\�� */
		}
		if( binterval != 0U ){		/* �z�M�L�� */
			if( synchronized == on ){
				disp_remtime( 1, rembc );	/* �z�M�c�莞�ԕ\�� */
			}
			else{
				disp_notime( 1 );	/* �J�E���g�����\�� */
			}
		}
		else{
			disp_notime( 1 );	/* �J�E���g�����\�� */
		}
	}
	else if( disppage == 6 ){
		disp_opetime( );	/* ���쎞�ԕ\�� */
	}
}

/**
*	�v���g�R���X�^�b�N����
*	 in	�Ȃ�
*	out	�Ȃ�
*/
static void	stackseq( void )
{
	byte	flg, sts;

	flg = ip_input( );		/* �|�[�����O�p */
	if( flg == RCV_ICMP ){		/* ICMP��M */
		sts = icmp_input( );
		enc_setnextpoint( );
	}
	else if( flg == RCV_UDP ){	/* UDP��M */
		sts = udp_input( );
		enc_setnextpoint( );
	}
	else if( flg == RCV_TCP ){	/* TCP��M */
		sts = tcp_input( );
		enc_setnextpoint( );
	}
	else{				/* ���̑� */
		sts = EVNT_NONE;
	}


	if( sts != EVNT_NONE ){		/* �ʐM�ŃC�x���g(�G���[)���� */
		if(( adjmode & BYTE_MASK_U7 ) == NTPADJ_MODE ){
			if(( sts == EVNT_ARP_TIMEOUT ) && ( adjustseq != 0 )){
				ocal_time = world_time;
				rslv_req = 0;
				adjustseq = 0;	/* NTP�v�����~ */
			}
			else if( sts == EVNT_NTP_UNSYNC ){		/* �T�[�o���G���[��Ԃ̂Ƃ� */
				change_calinterval( CYCLE_MIN );	/* �C���^�[�o�����Z�b�g */
			}
		}
		update_eventlog( sts );
	}
	/* ----- DHCP�J�n���� ----- */
	if( dhcp_mode == DHCP_ABORT ){		/* DHCP�Ȃ�(IP�A�h���X�Œ�) */
		dhcpcnten = off;
	}
	else if( dhcp_mode == DHCP_INIT ){	/* DHCP�č\�� */
		dhcpcnten = on;
		odcvr_time = world_time;
		sts = dhcp_discover( );
	}
	else if( dhcp_mode == DHCP_INITREBOOT ){	/* ���Z�b�g�Ȃǂ̎��́A�O��Ɠ���IP�A�h���X��D��I�Ɋ��蓖�ĂĂ��炤 */
		dhcpcnten = on;
		odcvr_time = world_time;
		sts = dhcp_request( DHCP_REBOOTING );
	}
}

/**
*	���̑�����(���ԏd�v�łȂ�)
*	 in	�Ȃ�
*	out	�Ȃ�
*/
static void	otherseq( void )
{
	byte	sts;
	swbool	secflg;		/* �b���X�V���ꂽ�� */
	swbool	calflg;		/* �b���X�V���ꂽ�� */

	/* ----- �X�V��Ԏ擾 ----- */
	_di( );
	secflg = timeflg;
	timeflg = off;
	calflg = cal_updated;
	cal_updated = off;
	_ei( );
	/* ----- �b���X�V���ꂽ ----- */
	if( secflg == on ){
		update_time( );		/* �������X�V(UTC,JST) */
		update_timeseq( );
	}
	/* ----- �����␳���� ----- */
	if( calflg == on ){
		update_calibseq( );
	}
	/* ----- ���O�������� ----- */
	if( rslv_req != 0 ){	/* ������ */
		sts = resolve_seq( );
		if( sts != EVNT_NONE ){		/* �ʐM�ŃC�x���g(�G���[)���� */
			if(( sts >= EVNT_NBT_RCVERROR ) && ( sts <= EVNT_DNS_TIMEOUT4 )){
				ocal_time = world_time;
				nextntpsrv( );	/* ���̃T�[�o�Ɉڂ� */
			}
			rslv_req = 0;
			adjustseq = ADJUSTSEQ_NONE;	/* NTP�v�����~ */
			update_eventlog( sts );
		}
	}
	else{			/* ����Ȃ� */
		rslv_cnt = 0;
		rslv_end = off;
	}
	/* ----- NTP�v������ ----- */
	if(( adjmode & BYTE_MASK_U7 ) == NTPADJ_MODE ){
		sts = ntp_reqseq( );
		if( sts != EVNT_NONE ){		/* �ʐM�ŃC�x���g(�G���[)���� */
			rslv_req = 0;
			adjustseq = ADJUSTSEQ_NONE;	/* NTP�v�����~ */
			change_calinterval( CYCLE_MIN );	/* �C���^�[�o�����Z�b�g */
			update_eventlog( sts );
		}
	}
	/* ----- �^�C���A�E�g�`�F�b�N ----- */
	if( secflg == on ){	/* �b�P�ʃ`�F�b�N */
		if( sock_tbl[0].status != 0 ){	/* �\�P�b�g0�Ď� */
			sock_tbl[0].timer--;
			if( sock_tbl[0].timer == 0 ){
				tcp_resetsocket( 0 );
			}
		}
		if( sock_tbl[1].status != 0 ){	/* �\�P�b�g1�Ď� */
			sock_tbl[1].timer--;
			if( sock_tbl[1].timer == 0 ){
				tcp_resetsocket( 1 );
			}
		}
	}
	/* ----- ��ʏ������� ----- */
	if( redrawflg == on ){
		redraw( );
	}
	/* ----- �t���O���� ----- */
	redrawflg = off;
}

/**
*	�L�[���͏���
*	 in	�Ȃ�
*	out	�Ȃ�
*/
static void	key_inseq( void )
{
	byte	key, dsp, sts;
	swbool	cng;

	key = key_sense( );
	if( key == NO_KEY ){	/* �L�[�ω��Ȃ� */
		return;
	}
	ERRRST( );		/* ���͂���ŃG���[LED���� */
	WORD_BIT15_OFF( opests );	/* ERROR OFF */
	cng = off;
	dsp = disppage;
	if( lcden == on ){	/* �t���L���� */
		if( key == LCDDI_KEY ){
			lcd_cls( );
			disp_message1( 5 );
			lcden = off;
			LCD_OFF( );	/* �o�b�N���C�g���� */
		}
		else if( key == ENTER_KEY ){	/* �p�����[�^�Z�b�g */
			if( pmin == DISPMIN ){	/* �ʏ��ʂ���̂ݍs���� */
				parameter( );
				dsp = pmin = DISPMIN;
				pmax = DISPMAX;
				cng = on;
			}
		}
		else if( key == UP_KEY ){	/* ��L�[ */
			dsp++;
			if( dsp > pmax ){
				dsp = pmin;
			}
			cng = on;
		}
		else if( key == DOWN_KEY ){	/* ���L�[ */
			if( dsp == pmin ){
				dsp = pmax;
			}
			else{
				dsp--;
			}
			cng = on;
		}
		else if( key == RIGHT_KEY ){	/* �E�L�[ */
			if( pmin == DISPMIN ){	/* �ʏ��ʁ��C�x���g���O */
				dsp = pmin = EVNTLOGMIN;
				pmax = EVNTLOGMAX;
			}
			else if( pmin == EVNTLOGMIN ){
				dsp = pmin = CALLOGMIN;	/* �C�x���g���O���␳���O */
				pmax = CALLOGMAX;
			}
			else{			/* �␳���O���ʏ��� */
				dsp = pmin = DISPMIN;
				pmax = DISPMAX;
			}
			cng = on;
		}
		else if( key == BCAST_KEY ){	/* �����z�M�L�[(DOWN+ENTER) */
			if( synchronized == on ){	/* �����������͔z�M���� */
				sts = ntp_broadcast( );	/* �����z�M */
				if( sts != EVNT_NONE ){
					update_eventlog( sts );
				}
				update_callog( LOG_BCAST );	/* �z�M���O.�z�M�����͕ύX���Ȃ� */
			}
		}
		else if( key == LOGCLR_KEY ){	/* ���O�N���A�L�[(RIGHT+ENTER) */
			if( pmin == EVNTLOGMIN ){
				clear_eventlog( );
				dsp = EVNTLOGMIN;
			}
			else if( pmin == CALLOGMIN ){
				clear_callog( );
				dsp = CALLOGMIN;
			}
			cng = on;
		}
	}
	if( key == LCDEN_KEY ){		/* LCD�L�� */
		lcd_init( );
		cng = on;
		dsp = pmin = DISPMIN;
		pmax = DISPMAX;
		lcden = on;
		LCD_ON( );		/* �o�b�N���C�g�_�� */
	}
	else if( key == TIMEREQ_KEY ){	/* �蓮�����v�� */
		if(( adjmode & BYTE_MASK_U7 ) == NTPADJ_MODE ){
			if(( adjustseq == 0 ) && ( myipaddr != 0UL )){
				adjustseq = 1;
			}
		}
	}
	if( cng == on ){		/* ��ʕύX */
		disppage = dsp;
		if( pmin == EVNTLOGMIN ){
			disp_eventlog( dsp - EVNTLOGMIN );	/* �C�x���g���O�\�� */
		}
		else if( pmin == CALLOGMIN ){
			disp_callog( dsp - CALLOGMIN );		/* �␳���O�\�� */
		}
		else{
			redraw( );	/* ��ʏ������� */
		}
	}
}

/**
*	�������O�ꂽ�Ƃ��̏���
*	 in	�Ȃ�
*	out	�Ȃ�
*/
void	unsync_seq( void )
{
	if( sync_sts == SYNC_OK ){	/* �����O�ꂽ */
		gps_uscnt = gps_ustimeout;	/* �J�E���g�_�E���� */
		sync_sts = SYNC_COUNT;
	}
}

/**
*	�ݒ��񏉊���
*	 in	�Ȃ�
*	out	�Ȃ�
*/
void	eep_initvalue( void )
{
	char	buf[32];

	lcd_cls( );
	disp_message1( 2 );	/* INITIALIZING... */

	EEP_READYWAIT( );
	eeprom_write_word( EEP_BAUD, (word)BAUD9600 );		/* �{�[���[�g */
	EEP_READYWAIT( );
	eeprom_write_word( EEP_ARPREQTOUT, 2000U );		/* ARP�v���^�C���A�E�g 2�b */
	EEP_READYWAIT( );
	eeprom_write_word( EEP_HTTP_PORT, 80U );		/* HTTP�|�[�g 80 */
	EEP_READYWAIT( );
	eeprom_write_word( EEP_DHCP, 0x800A );			/* DHCP�L��,10�b */
	EEP_READYWAIT( );
	eeprom_write_dword((uint32_t *)EEP_IPADDR, IPADDR );	/* IP�A�h���X */
	EEP_READYWAIT( );
	eeprom_write_dword((uint32_t *)EEP_NETMASK, NETMASK );	/* �l�b�g�}�X�N */
	EEP_READYWAIT( );
	eeprom_write_dword((uint32_t *)EEP_GATEWAY, GATEWAY );	/* �f�t�H���g�Q�[�g�E�F�C */
	EEP_READYWAIT( );
	eeprom_write_dword((uint32_t *)EEP_DNSP, DNSPSRV );	/* DNS�T�[�o */
	strcpy_P( buf, (prog_char *)nbndflt );
	EEP_READYWAIT( );
	eeprom_write_block( buf, (byte *)EEP_HOST_NAME, 16 );	/* NetBIOS�� */

	EEP_READYWAIT( );
	strcpy_P( buf, ntp0 );
	eeprom_write_block( buf, (byte *)EEP_NTPSRV1, 32 );	/* NTP�T�[�o1 */
	EEP_READYWAIT( );
	strcpy_P( buf, ntp1 );
	eeprom_write_block( buf, (byte *)EEP_NTPSRV2, 32 );	/* NTP�T�[�o2 */
	EEP_READYWAIT( );
	strcpy_P( buf, ntp2 );
	eeprom_write_block( buf, (byte *)EEP_NTPSRV3, 32 );	/* NTP�T�[�o3 */
	EEP_READYWAIT( );
	strcpy_P( buf, ntp3 );
	eeprom_write_block( buf, (byte *)EEP_NTPSRV4, 32 );	/* NTP�T�[�o4 */
	EEP_READYWAIT( );
	eeprom_write_dword((uint32_t *)EEP_NTPBCAST, NTPBC );	/* NTP�u���[�h�L���X�g */
	EEP_READYWAIT( );
	eeprom_write_word( EEP_NTPBITBL, NTPBCINTBL );		/* �u���[�h�L���X�g���� */
	EEP_READYWAIT( );
	eeprom_write_word( EEP_NTPTOUT, NTP_TIMEOUT );		/* NTP�^�C���A�E�g */
	EEP_READYWAIT( );
	eeprom_write_word( EEP_ADJWIDTH, ADJUST_WIDTH );	/* �����␳���� */
	EEP_READYWAIT( );
	eeprom_write_word( EEP_NTPFLAG, 0x0A00 );		/* MAXPOLL=1024sec */
	EEP_READYWAIT( );
	eeprom_write_word( EEP_TIMEZONE, 0x0000 );		/* JST */
	EEP_READYWAIT( );
	eeprom_write_word( EEP_NTPSLEW, 128U );			/* NTP SLEW�����␳����l(128ms) */
	EEP_READYWAIT( );
	eeprom_write_word( EEP_NMEA, NMEA_GPRMC );		/* NMEA:GPRMC */
	EEP_READYWAIT( );
	eeprom_write_word( EEP_FLG, 0x0000 );			/* 7SEG DISABLE, PPS FALL, NO ADJUST */
	EEP_READYWAIT( );
	eeprom_write_word( EEP_GPSNDTOUT, NODATA_COUNT );	/* 1�� */
	EEP_READYWAIT( );
	eeprom_write_word( EEP_GPSUSTOUT, UNSYNC_COUNT );	/* 15�� */
	EEP_READYWAIT( );
	eeprom_write_dword( EEP_TIMON, 0UL );			/* �^�C�}ON */
	EEP_READYWAIT( );
	eeprom_write_dword( EEP_TIMOFF, 0UL );			/* �^�C�}OFF */
	EEP_READYWAIT( );
	eeprom_write_word( EEP_ADJMODE, ADJ_NTP );		/* NTP���� */
	EEP_READYWAIT( );

	eeprom_write_word( EEP_INIFLG, 0xC3A5 );		/* �������ς݃t���O */
}

/**
*	EEPROM�������E�����ǂݏo����
*	 in	�Ȃ�
*	out	�Ȃ�
*/
void	eep_initread( void )
{
	byte	k;
	uint16_t	wtmp;
	uint32_t	dwtmp;
	ui_t	tmp;

	/* ---------- MAC ADDRESS ---------- */
	EEP_READYWAIT( );
	eeprom_read_block( mac_address, EEP_MACADDRESS, PHYSICALADDR_SIZE );
	if( mac_address[0] == BD_MAX ){		/* MAC�A�h���X������ĂȂ� */
		memcpy_P( mac_address, testmac, PHYSICALADDR_SIZE );
	}

	/* ---------- ������ ---------- */
	k = _invert( PINB ) & BYTE_MASK_L4;	/* �L�[����(����4bit) */
	if( k == ( UPKEY_BIT + DOWNKEY_BIT + RIGHTKEY_BIT )){	/* ������(+�������[�v) */
		eep_initvalue( );
		lcd_cls( );
		disp_message1( 3 );
		disp_message2( 2 );
		_forever{
			wdt_reset( );	/* WDT�̍X�V */
		}
	}

	/* ---------- �ǂݍ��� ---------- */
	EEP_READYWAIT( );
	if( eeprom_read_word( EEP_INIFLG ) != 0xC3A5 ){	/* �l�������Ă��Ȃ� */
		eep_initvalue( );
	}
	/* --- �����������[�h --- */
	adjmode = eeprom_read_word( EEP_ADJMODE );	/* MODE */
	if( adjmode == GPSADJ_MODE ){	/* GPS */
		GPS_SEL( );
		time_sts = TIME_NOINPUT;
	}
	else{				/* NTP */
		NTP_SEL( );
		WORD_BIT00_ON( opemode );		/* NTP ON */
		if( adjmode & NMEAOUT_MODE ){
			BYTE_BIT2_ON( PORTD );		/* PPS=H */
			BYTE_BIT2_ON( DDRD );		/* PPS=OUT */
			WORD_BIT13_ON( opemode );	/* NMEA OUT */
			nmea_en = on;
		}
		if( adjmode & BCAST_MODE ){	/* �u���[�h�L���X�g�␳ */
			BCAST_SEL( );
		}
	}
	/* --- ARP�v���^�C���A�E�g --- */
	EEP_READYWAIT( );
	arp_reqtimeout = eeprom_read_word( EEP_ARPREQTOUT );
	if(( arp_reqtimeout == WORD_DATA_ZERO ) || ( arp_reqtimeout == WORD_DATA_MAX )){	/* �ݒ肳��Ă��Ȃ� */
		arp_reqtimeout = 2000U;
	}
	/* --- HTTP PORT --- */
	EEP_READYWAIT( );
	http_port = eeprom_read_word( EEP_HTTP_PORT );
	if(( http_port == WORD_DATA_ZERO ) || ( http_port == WORD_DATA_MAX )){	/* �ݒ肳��Ă��Ȃ� */
		http_port = 80U;
	}
	/* --- DHCP --- */
	EEP_READYWAIT( );
	wtmp = eeprom_read_word( EEP_DHCP );
	dinterval = wtmp & WORD_MASK_L15;
	if(( wtmp == WORD_DATA_ZERO ) || ( wtmp == WORD_DATA_MAX )){	/* �l���� */
		dhcp_mode = DHCP_INIT;
		dinterval = 60U;
		WORD_BIT11_ON( opemode );	/* DHCP ON */
	}
	else if( WORD_BIT15_CHK( wtmp ) ){	/* DHCP�L�� */
		dhcp_mode = ( rebootflg == on )? DHCP_INITREBOOT: DHCP_INIT;
		WORD_BIT11_ON( opemode );	/* DHCP ON */
	}
	else{
		dhcp_mode = DHCP_ABORT;
	}
	/* --- IP,NETMASK,GATEWAY, DNS --- */
	if( dhcp_mode == DHCP_ABORT ){	/* �p�����[�^�Œ� */
		myipaddr = eep_getipaddr( EEP_IPADDR, IPADDR );		/* IP�A�h���X�ݒ� */
		netmask = eep_getipaddr( EEP_NETMASK, NETMASK );	/* �l�b�g�}�X�N�ݒ� */
		gateway = eep_getipaddr( EEP_GATEWAY, GATEWAY );	/* �f�t�H���g�Q�[�g�E�F�C�ݒ� */
		dns_server = eep_getipaddr( EEP_DNSP, DNSPSRV );	/* DNS�T�[�o */
	}
	/* --- NetBIOS NAME --- */
	eep_getstring16( EEP_HOST_NAME, nbns_name, (prog_char *)&nbndflt );
	/* --- BAUDRATE --- */
	baudrate = (byte)( eeprom_read_word( EEP_BAUD ) & WORD_MASK_L08 );
	if( baudrate > BPS57600 ){
		baudrate = BPS9600;
	}
	/* --- GPS(NMEA&MODULE) --- */
	tmp.data = eeprom_read_word( EEP_NMEA );
	nmeamode = tmp.bytes.lo;		/* ����:NMEA */
	if( nmeamode > NMEA_GPZDA ){
		nmeamode = NMEA_GPRMC;
	}
	if( adjmode == GPSADJ_MODE ){	/* GPS�̂Ƃ����� */
		opemode |= ( 1U << ( nmeamode + 5 ));	/* ver2.22.00 */
		gpstype = tmp.bytes.hi;		/* ���:GPS���W���[�� */
		if( gpstype > GPS_UNIVGPS ){
			gpstype = GPS_MTK3339;
		}
		opemode |= ( 1U << ( gpstype + 2 ));	/* ver2.22.00 */
	}
	/* --- �f�[�^���M�^�C���A�E�g --- */
	wtmp = eeprom_read_word( EEP_GPSNDTOUT );
	if(( wtmp == WORD_DATA_ZERO ) || ( wtmp == WORD_DATA_MAX )){	/* �l���� */
		wtmp = NODATA_COUNT;
	}
	gps_ndtimeout = wtmp;
	/* --- ������ԃ^�C���A�E�g --- */
	wtmp = eeprom_read_word( EEP_GPSUSTOUT );
	if(( wtmp == WORD_DATA_ZERO ) || ( wtmp == WORD_DATA_MAX )){	/* �l���� */
		wtmp = UNSYNC_COUNT;
	}
	gps_ustimeout = wtmp;
	/* --- FLAG --- */
	wtmp = eeprom_read_word( EEP_FLG );
	if( wtmp == WORD_DATA_MAX ){
		ext7segen = off;
		ppsedge = on;
		nmea_adj = off;
	}
	else{
		ext7segen = WORD_BIT00_CHK( wtmp )? on: off;	/* bit0 7SEGEN */
		ppsedge = WORD_BIT08_CHK( wtmp )? on: off;	/* bit8 PPSEDGE */
		nmea_adj = WORD_BIT09_CHK( wtmp )? on: off;	/* bit9 NMEA ADJUST */
	}
	/* --- NTP SERVER --- */
	eep_getstring32( EEP_NTPSRV1, ntpsrv1, (prog_char *)&ntp0 );
	eep_getstring32( EEP_NTPSRV2, ntpsrv2, (prog_char *)&ntp1 );
	eep_getstring32( EEP_NTPSRV3, ntpsrv3, (prog_char *)&ntp2 );
	eep_getstring32( EEP_NTPSRV4, ntpsrv4, (prog_char *)&ntp3 );
	/* --- NTP BROADCAST --- */
	ntpbcipadr = eep_getipaddr( EEP_NTPBCAST, NTPBC );	/* NTP�u���[�h�L���X�g */
	EEP_READYWAIT( );
	binterval = eeprom_read_word( EEP_NTPBITBL );
	if( binterval == WORD_DATA_MAX ){
		binterval = NTPBCINTBL;
	}
	if( binterval ){			/* ver2.22.00 */
		WORD_BIT01_ON( opemode );	/* BROADCAST CAL */
	}
	/* --- NTP TIMEOUT --- */
	EEP_READYWAIT( );
	ntptout = eeprom_read_word( EEP_NTPTOUT );
	if(( ntptout == WORD_DATA_ZERO ) || ( ntptout == WORD_DATA_MAX )){	/* �ݒ肳��Ă��Ȃ� */
		ntptout = NTP_TIMEOUT;
	}
	/* --- �����␳�� --- */
	EEP_READYWAIT( );
	timewidth = eeprom_read_word( EEP_ADJWIDTH );
	if( timewidth == WORD_DATA_MAX ){	/* �ݒ肳��Ă��Ȃ� */
		timewidth = ADJUST_WIDTH;
	}
	/* --- NTP�t���O���� --- */
	EEP_READYWAIT( );
	tmp.data = eeprom_read_word( EEP_NTPFLAG );
	/* --- �|�[�����O�Ԋu(NTP�t���O�̏��8bit) --- */
	if(( tmp.bytes.hi != 0xFF ) && ( tmp.bytes.hi <= 14 )){	/* �ݒ肳��Ă��� */
		maxpoll = ( 1U << tmp.bytes.hi );
	}
	/* --- SLEW����l --- */
	EEP_READYWAIT( );
	wtmp = eeprom_read_word( EEP_NTPSLEW );
	if( wtmp == WORD_DATA_MAX ){		/* �ݒ肳��Ă��Ȃ� */
		slew_width = 128;
	}
	else{
		slew_width = (int)wtmp;
	}
	/* --- �^�C���]�[�� --- */
	EEP_READYWAIT( );
	timezone = (byte)( eeprom_read_word( EEP_TIMEZONE ) & WORD_MASK_L08 );
	if( timezone == BYTE_DATA_MAX ){	/* �ݒ肳��Ă��Ȃ� */
		timezone = 0;	/* JST */
	}
	EEP_READYWAIT( );
	timeoffset = (long)pgm_read_dword( tzs + timezone );	/* ���ԃI�t�Z�b�g */
	/* --- TIMER --- */
	EEP_READYWAIT( );
	dwtmp = eeprom_read_dword( EEP_TIMON );		/* ON�^�C�} */
	if( dwtmp == LONG_DATA_MAX ){
		dwtmp = 0UL;
	}
	*((dword *)&on_time) = dwtmp;
	EEP_READYWAIT( );
	dwtmp = eeprom_read_dword( EEP_TIMOFF );	/* OFF�^�C�} */
	if( dwtmp == LONG_DATA_MAX ){
		dwtmp = 0UL;
	}
	*((dword *)&off_time) = dwtmp;
	tim7segen = ( ext7segen == on )? on: off;	/* �����͋���ɂ�� */
	/* --- ���̑� --- */
	EEP_READYWAIT( );
	tmp_ipaddr = eeprom_read_dword((uint32_t *)EEP_IPTMP );	/* �ȑO��IP�A�h���X���A */
}

/**
*	��Ԃ��`�F�b�N���o��
*	 in	�Ȃ�
*	out	�Ȃ�
*/
static void	statuscheck( void )
{
	extern byte	lists;			/* ver2.22.00 */

	/* --- ����������� --- */
	if(( sync_sts == SYNC_OK ) || ( sync_sts == SYNC_COUNT )){	/* ����������(or �񕜑҂��J�E���g��) */
		synchronized = on;
		if( adjmode == GPSADJ_MODE ){
			lists = LI_READY;
			stratum = STRATUM_1;
		}
		TIME_SYNC( );
		WORD_BIT00_ON( opests );	/* SYNC ON */
	}
	else{
		if( sync_sts == SYNC_ERROR ){		/* GPS���͂��������� */
			sync_sts = SYNC_INI;
			update_eventlog( EVNT_RCV_ERROR );
		}
		else if( sync_sts == SYNC_TIMEUP ){	/* �񓯊��^�C���A�b�v */
			sync_sts = SYNC_INI;
			update_eventlog( EVNT_SYNC_COUNTUP );
		}
		synchronized = off;
		lists = LI_ALARM;
		stratum = STRATUM_MAX;
		TIME_UNSYNC( );
		WORD_BIT00_OFF( opests );	/* SYNC OFF */
	}
	/* --- �����z�M��� --- */
	if( binterval != 0U ){			/* �����z�M�L�� */
		if( synchronized == on ){	/* �����������Ă� */
			BCAST_EN( );
			WORD_BIT09_ON( opests );	/* BCAST ON */
		}
		else{				/* �����������ĂȂ� */
			BCAST_DIS( );
			WORD_BIT09_OFF( opests );	/* BCAST OFF */
		}
	}
	else{
		BCAST_DIS( );
		WORD_BIT09_OFF( opests );	/* BCAST OFF */
	}
	/* --- IP�A�h���X��� --- */
	if(( dhcp_mode != DHCP_ABORT ) && ( myipaddr != 0UL )){	/* DHCP�L����IP�A�h���X���L����� */
		DHCP_EN( );
		WORD_BIT08_ON( opests );	/* DHCK ON */
	}
	else{	/* EXPIRE or FIX */
		DHCP_DIS( );
		WORD_BIT08_OFF( opests );	/* DHCP OFF */
	}
	/* --- �����N��� --- */
	if( enc_getlinkstatus( ) == TRUE ){
		LAN_LINK( );
		WORD_BIT14_ON( opests );	/* LINK ON */
	}
	else{
		LAN_UNLINK( );
		WORD_BIT14_OFF( opests );	/*  */
	}
	/* --- NTP LI --- */
	WORD_BIT01_OFF( opests );	/* LI1 */
	WORD_BIT02_OFF( opests );	/* LI2 */
	opests |= ( lists >> 5 );	/* LI */	/* ver2.22.00 */
}

/**
*	���C�����[�v�O����
*	 in	�Ȃ�
*	out	�Ȃ�
*/
void	main_sub( void )
{
	word	wt;
	byte	sts, flg;

	/* --- 7SEG������ --- */
	SPI_EN( );		/* ��xSPI�L�� */
	dispoff7seg( );		/* 7�Z�O���� */

	/* --- EEPROM�ǂݏo�� --- */
	SPI_DIS( );		/* EEPROM�ǂݍ��݂̂���SPI���� */
	lcd_init( );		/* for EEP������ */
	eep_initread( );	/* EEPROM���ǂݏo�� */
	SPI_EN( );		/* SPI�L�� */

	/* ----- UART�֌W(EEPROM���ǂݏo����) ----- */
	flg = 0;
	if(( adjmode == GPSADJ_MODE ) || ( nmea_en == on )){
		/* --- UART�ݒ� --- */
		UBRR0  = pgm_read_word( baudtbl + baudrate );	/* UART������ */
		UCSR0A = BYTE_BIT_X( U2X0 );	/* �{�� */
		UCSR0C = B8S1PN;	/* 8bit,stop1,Pn */
		sts = UDR0;		/* ��ǂ�(�X�e�[�^�X�N���A) */
		if( nmea_en == on ){
			UCSR0B = BYTE_BIT_X( TXEN0 );	/* TxEN */
		}
		else{
			UCSR0B = ( BYTE_BIT_X( RXCIE0 ) | BYTE_BIT_X( RXEN0 ) | BYTE_BIT_X( TXEN0 ));	/* TxEN,RxEN,RxIEN */
		}
	}
	/* --- INT0�G�b�W�ݒ� --- */
	if( nmea_en == off ){	/* NMEA�o�͎���1PPS�o�͂ɂȂ�̂� */
		if( ppsedge == on ){	/* �㏸�[ */
			EICRA = BYTE_BIT_X( ISC01 ) | BYTE_BIT_X( ISC00 );
		}
		else{
			EICRA = BYTE_BIT_X( ISC01 );
		}
		EIMSK = EINT0_EN;	/* INT0���荞�݋��� */
	}

	/* --- ENC28J60������ --- */
	ENC_RST_NEGATE( );	/* ENC��U���Z�b�g����(���Ȑf�f�̂���) */
	wait( WAIT1000US );	/* 1ms */
	if( enc_selftest( ) == 0 ){	/* ���Ȑf�fNG */
		enc_writephy( PHLCON, PHLCON_LACFG3 | PHLCON_LACFG1 | PHLCON_LBCFG3 | PHLCON_LBCFG1 | PHLCON_STRCH );
		lcd_cls( );		/* �\���c��̂� */
		disp_message1( 15 );	/* INIT ERR */
		disp_message2( 8 );
		ERROR( );		/* ERROR LED */
		WORD_BIT15_ON( opests );	/* ERROR ON */
		_forever{		/* �_���ȂƂ��́ALED�_�ł��� */
			wdt_reset( );	/* WDT�̍X�V */
		}
	}
	enc_init( );		/* ENC28J60������ */

	/* ----- �^�C�g���\�� ----- */
	disp_message1( 0 );	/* �^�C�g���\�� */
	disp_message2( 0 );
	lcd_printc( 8, 1, version );
	for( wt = getcount1ms( ); ( getcount1ms( ) - wt ) < 2500U; ){	/* �\����(GPS�����͂���) */
		wdt_reset( );	/* WDT�̍X�V */
		if( adjmode == GPSADJ_MODE ){	/* GPS���[�h */
			gps_process( );
		}
	}
	lcd_cls( );		/* �\���c��̂� */
	if( adjmode == GPSADJ_MODE ){
		if( gpstype == GPS_UNIVGPS ){
			disp_message1( 13 );	/* GPS�����\�� */
			disp_message2( 6 );
		}
		/* ----- MTK3339�����ݒ� ----- */
		else if( gpstype == GPS_MTK3339 ){
			disp_message1( 16 );	/* INITIAL */
			disp_message2( 9 );
			if( mtk_init( ) == EVNT_RCV_ERROR ){	/* MTK3339������(GPRMC,GPZDA�����ɂ���) */
				update_eventlog( EVNT_MTK_INITERR );
				ERROR( );
				WORD_BIT15_ON( opests );	/* ERROR ON */
			}
		}
	}
}

/**
*	���C��
*	 in	�Ȃ�
*	out	�Ȃ�
*/
int	main( void )
{
	word	wt;

	/* ----- ���������� ----- */
	_di( );
	init_internal( );	/* ���������� */
	main_sub( );		/* �O���� */
	rebootflg = off;	/* ���u�[�g�����I�[ */

	/* ----- ���C�����[�v ----- */
	wt = getcount1ms( );
	_forever{
		wdt_reset( );		/* WDT�̍X�V */
		stackseq( );		/* �v���g�R������ */
		if( adjmode == GPSADJ_MODE ){	/* GPS���[�h */
			gps_process( );
		}
		otherseq( );		/* ���̑����� */
		if(( getcount1ms( ) - wt ) >= 16U ){	/* 16ms���ƃL�[�`�F�b�N */
			wt = getcount1ms( );
			key_check( );	/* �L�[���̓`�F�b�N */
			key_inseq( );	/* �L�[���͏��� */
		}
		statuscheck( );		/* ��ԏo�� */
	}

	return	0;
}

/* end of avrntp.c */
