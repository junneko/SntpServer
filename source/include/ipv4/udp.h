/*
*	udp.h
*	UDP層定義
*	Copyright (c)Junnichi Tomaru
*/

#ifndef _UDP_DEFINED_
#define _UDP_DEFINED_

/* ポート番号定義 */
#define	UDP_ECHO	7U
#define	UDP_DISCARD	9U
#define	UDP_TIME	37U
#define	UDP_DNS		53U
#define	UDP_BOOTPS	67U
#define	UDP_BOOTPC	68U
#define	UDP_NTP		123U
#define	UDP_NBNS	137U
#define	UDP_DNSC	1024U
#define	UDP_RESET	10001U
#define	UDP_COMMAND	50000U

/* UDPヘッダ定義 */
#define	UDPHDR_SIZE	0x0008

#endif

/* end of udp.h */
