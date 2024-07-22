/**
*	arp.h
*	ARPプロトコル処理部ヘッダ
*	Copyright (c)Junnichi Tomaru
*/

#ifndef _ARP_DEFINED_
#define _ARP_DEFINED_

#define	ARP_CACHE_MAX	8	/* キャッシュ最大数,2のべき乗を指定すること */
#define	ARP_CACHE_MASK	(ARP_CACHE_MAX-1)	/*  */

#define	ARP_CACHE_NONE		0	/* ver2.23.00 */
#define	ARP_CACHE_DYNAMIC	1
#define	ARP_CACHE_STATIC	2

#define	ARP_HWETHER	0x0001
#define	ARP_PROTOIP	0x0800
#define	ARP_PROTOARP	0x0806

#define	ARP_REQUEST	0x0001
#define	ARP_REPLY	0x0002

#define	ARP_SIZE	28

#define	ARP_TIMEMAX	1200UL	/* ARPタイムアウト(1200 / 60sec = 20分) */

/* input */
#define	ARP_OK		0
#define	ARP_COL		2

/* search */
#define	ARP_FOUND	0
#define	ARP_NFND	1
#define	ARP_NFNDG	2

#endif

/* end of arp.h */
