/*
*	tcp.h
*	TCP層処理ヘッダ
*	Copyright (c)Junnichi Tomaru
*/

#ifndef _TCP_DEFINED_
#define _TCP_DEFINED_

#define		TCPHDR_SIZE	0x0014	/* 20byte */
#define		TCP_WINDOWSIZE	1460U
#define		TCPSOCK_MAX	2
#define		CGIBUFSIZE	256

#define		CGI_NONE	0
#define		CGI_GET		1
#define		CGI_HEAD	2

/* --- TCPポート定義 --- */
#define		TCP_ECHO	7
#define		TCP_DISCARD	9
#define		TCP_HTTP	80

/* --- TCP状態遷移 --- */
#define		LISTEN		0
#define		SYN_RCVD	1
#define		ESTABLISHED	2
#define		FIN_WAIT_1	3
#define		CLOSE_WAIT      4
#define		LAST_ACK	5
#define		FIN_WAIT_2	6
#define		CLOSED	        7

/* --- コントロールフラグ定義 --- */
#define		FIN_FLAG	0x01
#define		SYN_FLAG	0x02
#define		RST_FLAG	0x04
#define		PSH_FLAG	0x08
#define		ACK_FLAG	0x10
#define		URG_FLAG	0x20

#endif
/* end of tcp.h */
