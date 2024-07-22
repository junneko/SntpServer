/*
*	IP層処理部ヘッダ
*	Copyright (c)Junnichi Tomaru
*/

#ifndef	_IP_DEFINED_
#define	_IP_DEFINED_

#define	IPADDR_SIZE	4	/* IPアドレスサイズ */

/* プロトコル種 */
#define	IPPROTO_ICMP	1	/* ICMPプロトコル */
#define	IPPROTO_TCP	6	/* TCPプロトコル */
#define	IPPROTO_UDP	17	/* UDPプロトコル */

/* その他 */
#define	IPHDR_SIZE	20
#define	PSEUDO_SIZE	12
#define	IP_BROADCAST	0xffffffff

#endif
