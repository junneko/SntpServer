/**
*	ENC28J60定義
*	Copyright (c)Junnichi Tomaru
*	version 1.03.00
*/

/*
*	  バッファ割り当て
*	0000 |------------|
*	     |受信バッファ|
*	19D7 |------------|
*	19D8 |------------|
*	     |送信バッファ|
*	1FCB |------------|
*	1FCC |------------|
*	     |  ARP要求用 |
*	1FFF |------------|
*/
#include	<avr/interrupt.h>	/* for cli,sti */
#include	<avr/eeprom.h>	/* with <avr/io.h> */
#include	<avr/pgmspace.h>
#include	"bios/bios.h"
#include	"bios/stime.h"
#include	"ipv4/net_struct.h"
#include	"ipv4/ethernet.h"
#include	"library/struct_std.h"
#include	"library/userdef.h"

/* ---------- 構造体 ---------- */
#ifndef _ENCSTRUCT_DEFINED
#define _ENCSTRUCT_DEFINED
/* ----- ENC28J60受信ステータス格納用 ----- */
struct RX_STATUS{
	ui_t	next;
	ui_t	rxcount;
	union{
		ui_t	rxsts;
		struct{
			byte	longevent : 1;
			byte	reserved1 : 1;
			byte	carrierpreviouslyseen : 1;
			byte	reserved2 : 1;
			byte	crcerror : 1;
			byte	lengthcheckerr : 1;
			byte	lengthoutofrange : 1;
			byte	receiveok : 1;
			byte	multicast : 1;
			byte	broadcast : 1;
			byte	dribblenibble : 1;
			byte	ctrlframe : 1;
			byte	pausecontrolframe : 1;
			byte	unknownopcode : 1;
			byte	vlantype : 1;
			byte	zero : 1;
		} bits;
	} status;
};
typedef struct RX_STATUS rxstatus_t;

/* ----- ENC28J60送信ステータス格納用 ----- */
struct TX_STATUS{
	ui_t	bytecount;
	byte	colcnt : 4;
	byte	crcerror : 1;
	byte	lenchkerr : 1;
	byte	lenuor : 1;
	byte	txdone : 1;
	byte	multicast : 1;
	byte	broadcast : 1;
	byte	pctdefer : 1;
	byte	excdefer : 1;
	byte	exccol : 1;
	byte	latecollision : 1;
	byte	giant : 1;
	byte	underrun : 1;
	ui_t	txonwire;
	byte	ctrlframe : 1;
	byte	pausectrlframe : 1;
	byte	bakprsapli : 1;
	byte	vlantag : 1;
	byte	zero : 4;
};
typedef struct TX_STATUS txstatus_t;
#endif

/* --- 割り込み内 --- */
extern volatile int	utc_msec;	/* １秒計時用カウンタ 2 */
extern volatile time_t	utc_sec;	/* 時刻(1970/1/1からの秒数) 4 */

/* --- 外部変数 --- */
extern word	nowrxpnt;	/* 現在の受信パケット先頭 */
extern word	nextrxpnt;	/* 次の受信パケット先頭 */
extern rxstatus_t	rxstatus;	/* 受信ステータス */
extern byte	revid;		/* ENC28J60 REV.ID */

extern byte	mac_address[6];	/* MACアドレス */
extern ether_t	pacinfo;	/* パケット情報 */
extern word	rxtime;		/* 1msごとパケット受信カウント値 */
extern time_t	rxstamp;	/* パケット受信時刻(秒) */

/* --- 外部関数 --- */
extern void	wait( word time );

#define	ENC_RST_ASSERT()	asm("cbi 0x0B, 6"::)
#define	ENC_RST_NEGATE()	asm("sbi 0x0B, 6"::)
#define	ENC_CS_ASSERT()		asm("cbi 0x05, 4"::)	/* PB4 */
#define	ENC_CS_NEGATE()		asm("sbi 0x05, 4"::)

#define RXSTART		0x0000	/* 偶数番地に設定すること */
#define	RXSTOP		0x19d7
#define RXSIZE		(RXSTOP-RXSTART+1)
#define	TXSTART		0x19d8	/* 偶数番地に設定した方が良い */
#define	TXEND		0x1fcb	/* 1524バイト分(パケット1514+コントロール1+ステータス8) */
#define	TMPSTART	0x1fcc
#define	TMPEND		0x1fff

#define	RXSTS_SIZE	0x0006
#define	PPCB_SIZE	1U	/* Per Packet Control Byte */

/* ----- SPIインストラクション(一部ARGUMENTも含む) ----- */
#define	ENC_RCR 	0x00	/* Read Control Resister */
#define	ENC_RBM 	0x3A	/* Read Buffer Memory */
#define	ENC_WCR 	0x40	/* Write Control Resister */
#define	ENC_WBM 	0x7A	/* Write Buffer Memory */
#define	ENC_BFS 	0x80	/* Bit Field Set */
#define	ENC_BFC 	0xa0	/* Bit Field Clear */
#define	ENC_SC	 	0xff	/* System Command */

/* ----- レジスタバンク定義 ----- */
#define	ENC_BANK0	0x00
#define	ENC_BANK1	0x01
#define	ENC_BANK2	0x02
#define	ENC_BANK3	0x03

/* ----- TCP,UDPチェックサム用 ----- */
#define	RX		0
#define	TX		1

/* ----- レジスタ定義 ----- */

/* ページ0 */
#define	ERDPTL		0x00
#define	ERDPTH		0x01
#define	EWRPTL		0x02
#define	EWRPTH		0x03
#define	ETXSTL		0x04
#define	ETXSTH		0x05
#define	ETXNDL		0x06
#define	ETXNDH		0x07
#define	ERXSTL		0x08
#define	ERXSTH		0x09
#define	ERXNDL		0x0a
#define	ERXNDH		0x0b
#define	ERXRDPTL	0x0c
#define	ERXRDPTH	0x0d
#define	ERXWRPTL	0x0e
#define	ERXWRPTH	0x0f
#define	EDMASTL		0x10
#define	EDMASTH		0x11
#define	EDMANDL		0x12
#define	EDMANDH		0x13
#define	EDMADSTL	0x14
#define	EDMADSTH	0x15
#define	EDMACSL		0x16
#define	EDMACSH		0x17

/* ページ0 16ビット */
#define	ERDPT		0x00
#define	EWRPT		0x02
#define	ETXST		0x04
#define	ETXND		0x06
#define	ERXST		0x08
#define	ERXND		0x0a
#define	ERXRDPT		0x0c
#define	ERXWRPT		0x0e
#define	EDMAST		0x10
#define	EDMAND		0x12
#define	EDMADST		0x14
#define	EDMACS		0x16

/* コモンレジスタ */
#define	EIE		0x1b
#define	EIR		0x1c
#define	ESTAT		0x1d
#define	ECON2		0x1e
#define	ECON1		0x1f

/* ページ1 */
#define	EHT0		0x00
#define	EHT1		0x01
#define	EHT2		0x02
#define	EHT3		0x03
#define	EHT4		0x04
#define	EHT5		0x05
#define	EHT6		0x06
#define	EHT7		0x07
#define	EPMM0		0x08
#define	EPMM1		0x09
#define	EPMM2		0x0a
#define	EPMM3		0x0b
#define	EPMM4		0x0c
#define	EPMM5		0x0d
#define	EPMM6		0x0e
#define	EPMM7		0x0f
#define	EPMCSL		0x10
#define	EPMCSH		0x11
#define	EPMOL		0x14
#define	EPMOH		0x15
#define	EWOLIE		0x16
#define	EWOLIR		0x17
#define	ERXFCON		0x18
#define	EPKTCNT		0x19

/* ページ1 16ビット */
#define	EPMCS		0x10
#define	EPMO		0x14

/* ページ2 */
#define	MACON1		0x00
#define	MACON2		0x01
#define	MACON3		0x02
#define	MACON4		0x03
#define	MABBIPG		0x04
#define	MAIPGL		0x06
#define	MAIPGH		0x07
#define	MACLCON1	0x08
#define	MACLCON2	0x09
#define	MAMXFLL		0x0a
#define	MAMXFLH		0x0b
#define	MAPHSUP		0x0d
#define	MICON		0x11
#define	MICMD		0x12
#define	MIREGADR	0x14
#define	MIWRL		0x16
#define	MIWRH		0x17
#define	MIRDL		0x18
#define	MIRDH		0x19

/* ページ2 16ビット */
#define	MAIPG		0x06
#define	MAMXFL		0x0a
#define	MIWR		0x16
#define	MIRD		0x18

/* ページ3 */
#define	MAADR1		0x00
#define	MAADR0		0x01
#define	MAADR3		0x02
#define	MAADR2		0x03
#define	MAADR5		0x04
#define	MAADR4		0x05
#define	EBSTSD		0x06
#define	EBSTCON		0x07
#define	EBSTCSL		0x08
#define	EBSTCSH		0x09
#define	MISTAT		0x0a
#define	EREVID		0x12
#define	ECOCON		0x15
#define	EFLOCON		0x17
#define	EPAUSL		0x18
#define	EPAUSH		0x19

/* ページ3 16ビット */
#define	EBSTCS		0x08
#define	EPAUS		0x18

/* BISTモード */
#define	RACE_MODE	0x0c
#define	PTN_SFT		0x08
#define	ADR_FIL		0x04
#define	RND_FIL		0x00

/* PHY */
#define	PHCON1		0x00
#define	PHSTAT1		0x01
#define	PHID1		0x02
#define	PHID2		0x03
#define	PHCON2		0x10
#define	PHSTAT2		0x11
#define	PHIE		0x12
#define	PHIR		0x13
#define	PHLCON		0x14

/* DUPLEX */
#define	HALF_DUPLEX	0
#define	FULL_DUPLEX	1
#define	LEDB_STATE	2

/* LEDコントロール */
#define	LEDA_TXACT	0x0100
#define	LEDA_RXACT	0x0200
#define	LEDA_COLACT	0x0300
#define	LEDA_LINK	0x0400
#define	LEDA_DUP	0x0500
#define	LEDA_TXRXACT	0x0700
#define	LEDA_ON		0x0800
#define	LEDA_OFF	0x0900
#define	LEDA_BLKFAST	0x0a00
#define	LEDA_BLKSLOW	0x0b00
#define	LEDA_LNKRX	0x0c00
#define	LEDA_LNKTXRX	0x0d00
#define	LEDA_DUPCOL	0x0e00

#define	LEDB_TXACT	0x0010
#define	LEDB_RXACT	0x0020
#define	LEDB_COLACT	0x0030
#define	LEDB_LINK	0x0040
#define	LEDB_DUP	0x0050
#define	LEDB_TXRXACT	0x0070
#define	LEDB_ON		0x0080
#define	LEDB_OFF	0x0090
#define	LEDB_BLKFAST	0x00a0
#define	LEDB_BLKSLOW	0x00b0
#define	LEDB_LNKRX	0x00c0
#define	LEDB_LNKTXRX	0x00d0
#define	LEDB_DUPCOL	0x00e0

#define	LED_TNSTRCH	0x0002
#define	LED_TMSTRCH	0x0006
#define	LED_TLSTRCH	0x000A

/* ----- レジスタビット定義 ----- */

/* EIE */
#define	EIE_RXERIE	BYTE_BIT_0
#define	EIE_TXERIE	BYTE_BIT_1
#define	EIE_WOLIE	BYTE_BIT_2
#define	EIE_TXIE	BYTE_BIT_3
#define	EIE_LINKIE	BYTE_BIT_4
#define	EIE_DMAIE	BYTE_BIT_5
#define	EIE_PKTIE	BYTE_BIT_6
#define	EIE_INTIE	BYTE_BIT_7

/* EIR */
#define	EIR_RXERIF	BYTE_BIT_0
#define	EIR_TXERIF	BYTE_BIT_1
#define	EIR_WOLIF	BYTE_BIT_2
#define	EIR_TXIF	BYTE_BIT_3
#define	EIR_LINKIF	BYTE_BIT_4
#define	EIR_DMAIF	BYTE_BIT_5
#define	EIR_PKTIF	BYTE_BIT_6

/* ESTAT */
#define	ESTAT_CLKRDY	BYTE_BIT_0
#define	ESTAT_TXABRT	BYTE_BIT_1
#define	ESTAT_RXBUSY	BYTE_BIT_2
#define	ESTAT_SPIRDY	BYTE_BIT_3	/* UNIMPLEMENT(独自定義) */
#define	ESTAT_LATECOL	BYTE_BIT_4
#define	ESTAT_INT	BYTE_BIT_7

/* ECON2 */
#define	ECON2_VRPS	BYTE_BIT_3
#define	ECON2_VRTP	BYTE_BIT_4
#define	ECON2_PWRSV	BYTE_BIT_5
#define	ECON2_PKTDEC	BYTE_BIT_6
#define	ECON2_AUTOINC	BYTE_BIT_7

/* ECON1 */
#define	ECON1_BSEL0	BYTE_BIT_0
#define	ECON1_BSEL1	BYTE_BIT_1
#define	ECON1_RXEN	BYTE_BIT_2
#define	ECON1_TXRTS	BYTE_BIT_3
#define	ECON1_CSUMEN	BYTE_BIT_4
#define	ECON1_DMAST	BYTE_BIT_5
#define	ECON1_RXRST	BYTE_BIT_6
#define	ECON1_TXRST	BYTE_BIT_7

/* EWOLIE */
#define	EWOLIE_BCWOLIE	BYTE_BIT_0
#define	EWOLIE_MCWOLIE	BYTE_BIT_1
#define	EWOLIE_HTWOLIE	BYTE_BIT_2
#define	EWOLIE_MPWOLIE	BYTE_BIT_3
#define	EWOLIE_PMWOLIE	BYTE_BIT_4
#define	EWOLIE_AWOLIE	BYTE_BIT_6
#define	EWOLIE_UCWOLIE	BYTE_BIT_7

/* EWOLIR */
#define	EWOLIR_BCWOLIF	BYTE_BIT_0
#define	EWOLIR_MCWOLIF	BYTE_BIT_1
#define	EWOLIR_HTWOLIF	BYTE_BIT_2
#define	EWOLIR_MPWOLIF	BYTE_BIT_3
#define	EWOLIR_PMWOLIF	BYTE_BIT_4
#define	EWOLIR_AWOLIF	BYTE_BIT_6
#define	EWOLIR_UCWOLIF	BYTE_BIT_7

/* ERXFCON */
#define	ERXFCON_BCEN	BYTE_BIT_0
#define	ERXFCON_MCEN	BYTE_BIT_1
#define	ERXFCON_HTEN	BYTE_BIT_2
#define	ERXFCON_MPEN	BYTE_BIT_3
#define	ERXFCON_PMEN	BYTE_BIT_4
#define	ERXFCON_CRCEN	BYTE_BIT_5
#define	ERXFCON_ANDOR	BYTE_BIT_6
#define	ERXFCON_UCEN	BYTE_BIT_7

/* MACON1 */
#define	MACON1_MARXEN	BYTE_BIT_0
#define	MACON1_PASSALL	BYTE_BIT_1
#define	MACON1_RXPAUS	BYTE_BIT_2
#define	MACON1_TXPAUS	BYTE_BIT_3
#define	MACON1_LOOPBK	BYTE_BIT_4

/* MACON2 */
#define	MACON2_TFUNRST	BYTE_BIT_0
#define	MACON2_MATXRST	BYTE_BIT_1
#define	MACON2_RFUNRST	BYTE_BIT_2
#define	MACON2_MARXRST	BYTE_BIT_3
#define	MACON2_RNDRST	BYTE_BIT_6
#define	MACON2_MARST	BYTE_BIT_7

/* MACON3 */
#define	MACON3_FULDPX	BYTE_BIT_0
#define	MACON3_FRMLNEN	BYTE_BIT_1
#define	MACON3_HFRMEN	BYTE_BIT_2
#define	MACON3_PHDRLEN	BYTE_BIT_3
#define	MACON3_TXCRCEN	BYTE_BIT_4
#define	MACON3_PADCFG0	BYTE_BIT_5
#define	MACON3_PADCFG1	BYTE_BIT_6
#define	MACON3_PADCFG2	BYTE_BIT_7

/* MACON4 */
#define	MACON4_PUREPRE	BYTE_BIT_0
#define	MACON4_LONGPRE	BYTE_BIT_1
#define	MACON4_NOBKOFF	BYTE_BIT_4
#define	MACON4_BPEN	BYTE_BIT_5
#define	MACON4_DEFER	BYTE_BIT_6

/* MAPHSUP */
#define	MAPHSUP_RSTRMII	BYTE_BIT_3

/* MICON */
#define	MICON_RSTMII	BYTE_BIT_7

/* MICMD */
#define	MICMD_MIIRD	BYTE_BIT_0
#define	MICMD_MIISCAN	BYTE_BIT_1

/* EBSTCON */
#define	EBSTCON_BISTST	BYTE_BIT_0
#define	EBSTCON_TME	BYTE_BIT_1
#define	EBSTCON_TMSEL0	BYTE_BIT_2
#define	EBSTCON_TMSEL1	BYTE_BIT_3
#define	EBSTCON_PSEL	BYTE_BIT_4
#define	EBSTCON_PSV0	BYTE_BIT_5
#define	EBSTCON_PSV1	BYTE_BIT_6
#define	EBSTCON_PSV2	BYTE_BIT_7

/* MISTAT */
#define	MISTAT_BUSY	BYTE_BIT_0
#define	MISTAT_SCAN	BYTE_BIT_1
#define	MISTAT_NVALID	BYTE_BIT_2

/* ECOCON */
#define	ECOCON_INVALID	0x00
#define	ECOCON_COCON0	BYTE_BIT_0
#define	ECOCON_COCON1	BYTE_BIT_1
#define	ECOCON_COCON2	BYTE_BIT_2

/* EFLOCON */
#define	EFLOCON_FCEN0	BYTE_BIT_0
#define	EFLOCON_FCEN1	BYTE_BIT_1
#define	EFLOCON_FULDPXS	BYTE_BIT_2

/* --- PHY --- */

/* PHCON1 */
#define	PHCON1_PDPXMD	WORD_BIT_04
#define	PHCON1_PPWRSV	WORD_BIT_07
#define	PHCON1_PLOOPBK	WORD_BIT_14
#define	PHCON1_PRST	WORD_BIT_15

/* PHSTAT1 */
#define	PHSTAT1_JBSTAT	WORD_BIT_01
#define	PHSTAT1_LLSTAT	WORD_BIT_02
#define	PHSTAT1_PHDPX	WORD_BIT_11
#define	PHSTAT1_PFDPX	WORD_BIT_12

/* PHID2 */
#define	PHID2_PREV0	WORD_BIT_00
#define	PHID2_PREV1	WORD_BIT_01
#define	PHID2_PREV2	WORD_BIT_02
#define	PHID2_PREV3	WORD_BIT_03
#define	PHID2_PPN0	WORD_BIT_04
#define	PHID2_PPN1	WORD_BIT_05
#define	PHID2_PPN2	WORD_BIT_06
#define	PHID2_PPN3	WORD_BIT_07
#define	PHID2_PPN4	WORD_BIT_08
#define	PHID2_PPN5	WORD_BIT_09
#define	PHID2_PID19	WORD_BIT_10
#define	PHID2_PID20	WORD_BIT_11
#define	PHID2_PID21	WORD_BIT_12
#define	PHID2_PID22	WORD_BIT_13
#define	PHID2_PID23	WORD_BIT_14
#define	PHID2_PID24	WORD_BIT_15

/* PHCON2 */
#define	PHCON2_HDLDIS	WORD_BIT_08
#define	PHCON2_JABBER	WORD_BIT_10
#define	PHCON2_TXDIS	WORD_BIT_13
#define	PHCON2_FRCLNK	WORD_BIT_14

/* PHSTAT2 */
#define	PHSTAT2_PLRITY	WORD_BIT_05
#define	PHSTAT2_DPXSTAT	WORD_BIT_09
#define	PHSTAT2_LSTAT	WORD_BIT_10
#define	PHSTAT2_COLSTAT	WORD_BIT_11
#define	PHSTAT2_RXSTAT	WORD_BIT_12
#define	PHSTAT2_TXSTAT	WORD_BIT_13

/* PHIE */
#define	PHIE_PGEIE	WORD_BIT_01
#define	PHIE_PLNKIE	WORD_BIT_04

/* PHIR */
#define	PHIR_PGIF	WORD_BIT_02
#define	PHIR_PLNKIF	WORD_BIT_04

/* PHLCON */
#define	PHLCON_STRCH	WORD_BIT_01
#define	PHLCON_LFRQ0	WORD_BIT_02
#define	PHLCON_LFRQ1	WORD_BIT_03
#define	PHLCON_LBCFG0	WORD_BIT_04
#define	PHLCON_LBCFG1	WORD_BIT_05
#define	PHLCON_LBCFG2	WORD_BIT_06
#define	PHLCON_LBCFG3	WORD_BIT_07
#define	PHLCON_LACFG0	WORD_BIT_08
#define	PHLCON_LACFG1	WORD_BIT_09
#define	PHLCON_LACFG2	WORD_BIT_10
#define	PHLCON_LACFG3	WORD_BIT_11

/* ---------- プロトタイプ宣言 ---------- */
void	spitx( char data );
/*void	enc_systemreset( void );*/
byte	enc_readethreg( char addr );
/*word	enc_readethreg16( char addr );*/
void	enc_writereg( char addr, byte data );
void	enc_writereg16( char addr, word data );
byte	enc_readmreg( char addr );
void	enc_setbit( char addr, byte data );
void	enc_clrbit( char addr, byte data );
void	enc_bankselect( byte bank );
word	enc_readphy( byte addr );
void	enc_writephy( byte addr, word data );
byte	enc_readbuf( void );
word	enc_readbuf2( void );
dword	enc_readbuf4( void );
void	enc_readbuffer( byte *buffer, word len );
void	enc_writebuf( byte data );
void	enc_writebuf2( word data );
void	enc_writebuf4( dword data );
word	enc_writebuffer( byte *buffer, word len );
void	enc_fillwrite( byte data, word len );
bool	enc_selftest( void );
void	enc_init( void );
bool	enc_getlinkstatus( void );
bool	enc_gettxready( void );
word	enc_rxseek( word offset );
word	enc_txseek( word offset );
void	enc_setnextpoint( void );
word	enc_getfreerxsize( void );
byte	enc_input( byte *buf );
void	enc_output( word txaddr );
word	enc_addsum( word len );
word	enc_rxchksum( word offset, word len );
word	enc_txchksum( word offset, word len );
void	enc_packetcopy( word rxoffset, word txoffset, word len );
void	enc_powerdown( void );
void	enc_powerup( void );
void	enc_setclkout( byte clk );
byte	enc_getclkout( void );
word	enc_writebufc( const prog_char *pgm_s );
word	enc_readstr( byte *buffer, word len, byte dm );
void	enc_skip( word cnt );

/* end of enc28j60.h */
