/**
*	BIOS関数群
*	Copyright (c)Junnichi Tomaru
*/

/* ---------- システムクロック依存 ---------- */
#define	SYSTEM_CLOCK	12800000

/* ----- 1msタイマ ----- */
#define	TIMER0		((SYSTEM_CLOCK/64/1000)-1)	/* 12.8MHz/64/200=1000(1ms) */
#define	TIMER2		((SYSTEM_CLOCK/64/1000)-1)	/* 12.8MHz/64/200=1000(1ms) */

/* ----- デバイス依存 ----- */
#define	_di()		cli()		/* 割り込み禁止(再定義) */
#define	_ei()		sei()		/* 割り込み許可(再定義) */
#define	SPI_DIS()	SPCR=BYTE_BIT_X(MSTR)
#define	SPI_EN()	SPCR=(BYTE_BIT_X(SPE)|BYTE_BIT_X(MSTR))
#define	SPI_7SEGEN()	SPCR=(BYTE_BIT_X(SPE)|BYTE_BIT_X(MSTR))|BYTE_BIT_X(SPR1)|BYTE_BIT_X(SPR0)	/* 200kHz */
#define	EEP_READYWAIT()	while(eeprom_is_ready()==0){wdt_reset();}
#define	WDT_TIMEOUT	WDTO_250MS

#define	LCD_ON()	BYTE_BIT7_OFF(PORTD)
#define	LCD_OFF()	BYTE_BIT7_ON(PORTD)

/* --- キーコード定義 --- */
#define	NO_KEY		0x00
#define	LCDDI_KEY	0x0e
#define	LCDEN_KEY	0x0f
#define	TIMEREQ_KEY	0x10
#define	UP_KEY		0x11
#define	DOWN_KEY	0x12
#define	RIGHT_KEY	0x13
#define	ENTER_KEY	0x14
#define	BCAST_KEY	0x16
#define	LOGCLR_KEY	0x18
#define	KEY_TOUT	0x19

/* --- キービット定義 --- */
#define	UPKEY_BIT	0x01
#define	DOWNKEY_BIT	0x02
#define	RIGHTKEY_BIT	0x04
#define	ENTERKEY_BIT	0x08

/* ----- ソフトウェアディレイ(12.8MHz) ----- */
#define	WAIT40US	1		/* 62.5us */
#define	WAIT100US	2		/* 125us */
#define	WAIT120US	2		/* 125us */
#define	WAIT230US	3		/* 234.375us */
#define	WAIT640US	11		/* 687us */
#define	WAIT1000US	16		/* 1ms */
#define	WAIT4100US	66		/* 4.125ms */

/* ----- シリアル通信 ----- */
/* --- BAUD RATE --- */
#define	BPS1200		1332U		/* 12.8M/8/1333=1200.3bps */
#define	BPS2400		666U
#define	BPS4800		332U
#define	BPS9600		165U		/* 12.8M/8/166=9638.5bps */
#define	BPS19200	82U
#define	BPS38400	41U
#define	BPS57600	27U

/* --- PARAMETER --- */
#define	B5S1PN		0x00
#define	B5S1PE		0x20
#define	B5S1PO		0x30
#define	B5S2PN		0x08
#define	B5S2PE		0x28
#define	B5S2PO		0x38
#define	B6S1PN		0x02
#define	B6S1PE		0x22
#define	B6S1PO		0x32
#define	B6S2PN		0x0A
#define	B6S2PE		0x2A
#define	B6S2PO		0x3A
#define	B7S1PN		0x04
#define	B7S1PE		0x24
#define	B7S1PO		0x34
#define	B7S2PN		0x0C
#define	B7S2PE		0x2C
#define	B7S2PO		0x3C
#define	B8S1PN		0x06
#define	B8S1PE		0x26
#define	B8S1PO		0x36
#define	B8S2PN		0x0E
#define	B8S2PE		0x2E
#define	B8S2PO		0x3E

/* ----- バッファサイズ ----- */
#define	TXBUFSIZE	64
#define	RXBUFSIZE	256
#define	RXCOMSIZE	128

/* ----- EEPROM See eeprom.txt ----- */
#define	EEP_MACADDRESS	(uint8_t *)(0x0000)
#define	EEP_ARPREQTOUT	(uint16_t *)(0x0006)
#define	EEP_IPTMP	0x0008
#define	EEP_DHCP	(uint16_t *)(0x000C)
#define	EEP_HTTP_PORT	(uint16_t *)(0x000E)

#define	EEP_HOST_NAME	0x0010
#define	EEP_IPADDR	0x0020
#define	EEP_NETMASK	0x0024
#define	EEP_GATEWAY	0x0028
#define	EEP_DNSP	0x002C		/* Primary */
#define	EEP_DNSS	0x0030		/* Secondary */

#define	EEP_BAUD	(uint16_t *)(0x003A)
#define	EEP_INIFLG	(uint16_t *)(0x003E)

#define	EEP_NTPSRV1	0x0040
#define	EEP_NTPSRV2	0x0060
#define	EEP_NTPSRV3	0x0080
#define	EEP_NTPSRV4	0x00A0

#define	EEP_NTPBCAST	0x00C0
#define	EEP_NTPBITBL	(uint16_t *)(0x00C4)
#define	EEP_NTPTOUT	(uint16_t *)(0x00C6)
#define	EEP_ADJWIDTH	(uint16_t *)(0x00C8)
#define	EEP_NTPFLAG	(uint16_t *)(0x00CA)
#define	EEP_TIMEZONE	(uint16_t *)(0x00CC)
#define	EEP_NTPSLEW	(uint16_t *)(0x00CE)

#define	EEP_NMEA	(uint16_t *)(0x00D0)
#define	EEP_FLG		(uint16_t *)(0x00D2)
#define	EEP_GPSNDTOUT	(uint16_t *)(0x00D4)
#define	EEP_GPSUSTOUT	(uint16_t *)(0x00D6)

#define	EEP_TIMON	(uint32_t *)(0x00E0)
#define	EEP_TIMOFF	(uint32_t *)(0x00E4)


#define	EEP_ADJMODE	(uint16_t *)(0x00F0)

/* end of bios_define.h */
