/**
*	KDB-BASE	��`
*	Copyright (c)Junnichi Tomaru
*/
#ifndef _COMMON_DEFINED
#define _COMMON_DEFINED

#define		USE_644P
/*#define	USE_644PA*/	/* ATmega644PA�g�p���R�����g�O�� */
/*#define	USE_1284P*/	/* ATmega12844P�g�p���R�����g�O�� */

/* ----- �l�b�g���[�N�f�t�H���g�l ----- */
#define	IPADDR		0xC0A80166UL	/* 192.168.1.102 */
#define	NETMASK		0xFFFFFF00UL	/* 255.255.255.0 */
#define	GATEWAY		0xC0A80101UL	/* 192.168.1.1 */
#define	NTPBC		0xC0A801ffUL	/* 192.168.1.255 */
#define	DNSPSRV		0xC0A80101UL	/* 192.168.1.1 */

/* ----- �O�����荞�݋��� ----- */
#define	EINT_DIS	0x00
#define	EINT0_EN	0x01
#define	EINT1_EN	0x02
#define	EINT2_EN	0x04

/* ----- ��ʏ������ʃR�[�h ----- */
#define	RCV_NONE	0
/* 1:RXERR */
#define	RCV_ICMP	2
#define	RCV_UDP		3
#define	RCV_TCP		4

/* ----- �O������ ----- */

/* ----- �O���o�� ----- */
/* --- LED --- */
#define	NTP_SEL()	BYTE_BIT0_ON(PORTA)	/* NTP�ŕ␳ */
#define	GPS_SEL()	BYTE_BIT1_ON(PORTA)	/* GPS�ŕ␳ */
#define	BCAST_SEL()	BYTE_BIT2_ON(PORTA)	/* BCAT�ŕ␳ */
#define	NO_SEL()	PORTA&=0x07	/* �␳�Ȃ� */

#define	DHCP_EN()	BYTE_BIT3_ON(PORTA)	/* DHCP�L�� */
#define	DHCP_DIS()	BYTE_BIT3_OFF(PORTA)	/* DHCP����(EXPIRE�܂�) */

#define	BCAST_EN()	BYTE_BIT4_ON(PORTA)	/* �����z�M�L�� */
#define	BCAST_DIS()	BYTE_BIT4_OFF(PORTA)	/* �����z�M���� */

#define	TIME_SYNC()	BYTE_BIT5_ON(PORTA)	/* ���������� */
#define	TIME_UNSYNC()	BYTE_BIT5_OFF(PORTA)	/* �����������ĂȂ� */

#define	LAN_LINK()	BYTE_BIT6_ON(PORTA)	/* LAN�����N�L�� */
#define	LAN_UNLINK()	BYTE_BIT6_OFF(PORTA)	/* LAN�����N���� */

#define	ERROR()		BYTE_BIT7_ON(PORTA)	/* �G���[������ */
#define	ERRRST()	BYTE_BIT7_OFF(PORTA)	/* �G���[�o�͉��� */

#define	LAT_NEGATE()	BYTE_BIT7_OFF(PORTC)	/* LATCH OFF */
#define	LAT_ASSERT()	BYTE_BIT7_ON(PORTC)	/* LATCH ON */

/* ----- �␳���[�h ----- */
#define	ADJ_NTP		0	/* 000  */
#define	ADJ_NTPNMEA	1	/* 001 */
#define	ADJ_BCAST	2	/* 010 */
#define	ADJ_BCSTNMEA	3	/* 011 */
#define	ADJ_GPSMODULE	4	/* 100 GPS */

#define	NTPADJ_MODE	0x00	/* bit�����ĂȂ�(bit1�̓}�X�N) */
#define	GPSADJ_MODE	0x04	/* bit2�����Ă� */
#define	BCAST_MODE	0x02	/* bit1�����Ă� */
#define	NMEAOUT_MODE	0x01	/* bit0�����Ă� */

/* ----- ���ԕ␳��� ----- */
#define	TIME_ADJUSTED	0	/* ����(�␳����Ă���) */
#define	TIME_ILLEGAL	1	/* ���Ԃ�����(�ĕ␳�v) */
#define	TIME_UNADJUSTED	2	/* �␳����Ă��Ȃ� */
#define	TIME_TIMEOUT	3	/* �^�C���A�E�g */
#define	TIME_UTCMODE	4	/* GPS UTC���[�h */
#define	TIME_PPSMODE	5	/* GPS PPS���[�h */
#define	TIME_NOVALID	6	/* GPS �f�[�^���� */
#define	TIME_NOINPUT	7	/* GPS ���͂Ȃ� */

#define	ADJUSTSEQ_NONE	0	/*  */

#define	ADJUST_WIDTH	5000U
#define	PPS_FILTER	200	/* �t�B���^����200ms */

/* ----- �����X�e�[�^�X(sync_sts) ----- */
#define	SYNC_OK		0	/* ������� */
#define	SYNC_COUNT	1	/* �����؂ꂽ(�J�E���g��) */
#define	SYNC_TIMEUP	2	/* �^�C���A�b�v(�G���[) */
#define	SYNC_ERROR	3	/* PPS�����Ď�����񖳂� */
#define	SYNC_INI	4	/* �ŏ��̓����O */

#define	UNSYNC_COUNT	900U	/* �񓯊���ԂɂȂ�܂ł̃^�C�} 15�� */
#define	NODATA_COUNT	60U	/* GPS�f�[�^���M�J�E���g 1�� */

/* ----- �\���֌W ----- */
#define	DISPMIN		0
#define	DISPMAX		6	/* �ʏ��ʍŌ� */
#define	EVNTLOGMIN	(DISPMAX+1)
#define	EVNTLOGMAX	(DISPMAX+16)
#define	CALLOGMIN	(EVNTLOGMAX+1)
#define	CALLOGMAX	(EVNTLOGMAX+16)

/* ----- �␳���� ----- */
#define	CYCLE_MIN	64	/* Linux�ŏ��l */
#define	CYCLE_MAX	1024	/* Linux�ő�l */

/* ----- �␳���O ----- */
#define	LOG_NONE	0
#define	LOG_BCRX	1
#define	LOG_BCAST	2

/* ----- NMEA���[�h ----- */
#define	NMEA_GPRMC	0	/* $GPRMC(�ėp) */
#define	NMEA_GPZDA	1	/* $GPZDA(�ėp) */

/* ----- GPS���[�h ----- */
#define	GPS_MTK3339	0
#define	GPS_UNIVGPS	1

/* ----- BAUD RATE ----- */
#define	BAUD1200	0
#define	BAUD2400	1
#define	BAUD4800	2
#define	BAUD9600	3
#define	BAUD19200	4
#define	BAUD38400	5
#define	BAUD57600	6

/* ----- ���샂�[�h(�R�}���h�p) ----- */
#define	OPMODE_NTP	WORD_BIT_00
#define	OPMODE_NTPBC	WORD_BIT_01
#define	OPMODE_1	WORD_BIT_02
#define	OPMODE_MTK3339	WORD_BIT_03
#define	OPMODE_UNIV	WORD_BIT_04
#define	OPMODE_2	WORD_BIT_05
#define	OPMODE_3	WORD_BIT_06
#define	OPMODE_URMC	WORD_BIT_07
#define	OPMODE_UZDA	WORD_BIT_08
#define	OPMODE_4	WORD_BIT_09
#define	OPMODE_RWC	WORD_BIT_10
#define	OPMODE_DHCP	WORD_BIT_11
#define	OPMODE_5	WORD_BIT_12
#define	OPMODE_NMEA	WORD_BIT_13
#define	OPMODE_6	WORD_BIT_14
#define	OPMODE_7	WORD_BIT_15

/* ----- ����X�e�[�^�X(�R�}���h�p) ----- */
#define	OPSTS_SYNC	WORD_BIT_00
#define	OPSTS_LI1	WORD_BIT_01
#define	OPSTS_LI2	WORD_BIT_02
#define	OPSTS_3		WORD_BIT_03
#define	OPSTS_4		WORD_BIT_04
#define	OPSTS_5		WORD_BIT_05
#define	OPSTS_6		WORD_BIT_06
#define	OPSTS_7		WORD_BIT_07
#define	OPSTS_DHCP	WORD_BIT_08
#define	OPSTS_BCAST	WORD_BIT_09
#define	OPSTS_8		WORD_BIT_10
#define	OPSTS_9		WORD_BIT_11
#define	OPSTS_10	WORD_BIT_12
#define	OPSTS_11	WORD_BIT_13
#define	OPSTS_LINK	WORD_BIT_14
#define	OPSTS_ERROR	WORD_BIT_15

/* ---------- �񋓑̒�` ---------- */
/* ----- LI�X�e�[�^�X(liflg) ----- */
enum{
	LI_NONE,	/* LI�����Ȃ� */
	LI_UPDATED,	/* LI�����I�� */
	LI_INCREQ	/* 1�b�}���v�� */
};

/* ----- �C�x���g��` ----- */
enum{
	EVNT_NONE,		/* 00 */
	EVNT_PWR_ON,		/* 01 */
	EVNT_EXT_RESET,		/* 02 */
	EVNT_BOR_RESET,		/* 03 */
	EVNT_WDT_RESET,		/* 04 */
	EVNT_ENC_RXRCVERR,	/* 05 */
	EVNT_ARP_TIMEOUT,	/* 06 */
	EVNT_ICMP_RXSUMERR,	/* 07 */
	EVNT_TCP_RXSUMERR,	/* 08 */
	EVNT_UDP_RXSUMERR,	/* 09 */
	EVNT_ICMP_MESSAGE,	/* 10 */
	EVNT_DHCP_NAK,		/* 11 */
	EVNT_DHCP_RENEWAL,	/* 12 */
	EVNT_DHCP_REBIND,	/* 13 */
	EVNT_DHCP_EXPIRE,	/* 14 */
	EVNT_DHCP_RCVERROR,	/* 15 */
	EVNT_NBT_RCVERROR,	/* 16 */
	EVNT_NBT_FMTERROR,	/* 17 */
	EVNT_NBT_ERROR,		/* 18 */
	EVNT_NBT_TIMEOUT1,	/* 19 */
	EVNT_NBT_TIMEOUT2,	/* 20 */
	EVNT_NBT_TIMEOUT3,	/* 21 */
	EVNT_NBT_TIMEOUT4,	/* 22 */	/* �����܂ŃV�X�e���n */
	EVNT_DNS_TIMEOUT1,	/* 23 */
	EVNT_DNS_TIMEOUT2,	/* 24 */
	EVNT_DNS_TIMEOUT3,	/* 25 */
	EVNT_DNS_TIMEOUT4,	/* 26 */
	EVNT_NTP_UNSYNC,	/* 27 */
	EVNT_NTP_TIMEOUT1,	/* 28 */
	EVNT_NTP_TIMEOUT2,	/* 29 */
	EVNT_NTP_TIMEOUT3,	/* 30 */
	EVNT_NTP_TIMEOUT4,	/* 31 */
	EVNT_NTP_ILLEGAL,	/* 32 */
	EVNT_NTP_LEAP,		/* 33 */
	EVNT_TIME_ILLEGAL,	/* 34 */
	EVNT_FORMAT_ERROR,	/* 35 */
	EVNT_NMEA_SUMERR,	/* 36 */
	EVNT_RCV_ERROR,		/* 37 */
	EVNT_SYNC_COUNTUP,	/* 38 */
	EVNT_MTK_INITERR	/* 39 */
};
#endif

/* end of define.h */
