/*
*	icmp.h
*	ICMP処理	ヘッダ
*	Copyright (c)Junnichi Tomaru
*/
#ifndef _ICMP_DEFINED_
#define _ICMP_DEFINED_
#include	"library/userdef.h"

/* ----- メッセージタイプ ----- */
#define		ICMP_TYPE_ECHOREPLY	0x00	/* エコー応答 */
#define		ICMP_TYPE_UNREACH	0x03	/* 宛先到達不能 */
#define		ICMP_TYPE_QUENCH	0x04	/* 発信制御 */
#define		ICMP_TYPE_REDIRECT	0x05	/* リダイレクト通知 */
#define		ICMP_TYPE_ECHOREQ	0x08	/* エコー要求 */
#define		ICMP_TYPE_EXCEED	0x0b	/* データの時間超過 */
#define		ICMP_TYPE_PROBLEM	0x0c	/* データのパラメータ異常 */
#define		ICMP_TYPE_TIMEREQ	0x0d	/* タイムスタンプ要求 */
#define		ICMP_TYPE_TIMEREPLY	0x0e	/* タイムスタンプ応答 */
#define		ICMP_TYPE_INFOREQ	0x0f	/* 情報要求 */
#define		ICMP_TYPE_INFOREPLY	0x10	/* 情報応答 */
#define		ICMP_TYPE_MASKREQ	0x11	/* アドレスマスク要求 */
#define		ICMP_TYPE_MASKREPLY	0x12	/* アドレスマスク応答 */

/* ----- コード ----- */

/* ICMP_TYPE_UNREACH */
#define		ICMP_UNREACH_NETWORK	0x00
#define		ICMP_UNREACH_HOST	0x01
#define		ICMP_UNREACH_PROTOCOL	0x02
#define		ICMP_UNREACH_PORT	0x03
#define		ICMP_UNREACH_FRAGMENT	0x04
#define		ICMP_UNREACH_SRCROUT	0x05
#define		ICMP_UNREACH_UNKNET	0x06
#define		ICMP_UNREACH_UNKHOST	0x07
#define		ICMP_UNREACH_DNAP	0x09
#define		ICMP_UNREACH_DHAP	0x0a
#define		ICMP_UNREACH_TOSNET	0x0b
#define		ICMP_UNREACH_TOSHOST	0x0c
#define		ICMP_UNREACH_CAPF	0x0d
#define		ICMP_UNREACH_HPV	0x0e
#define		ICMP_UNREACH_PCIE	0x0f

/* ICMP_TYPE_REDIRECT */
#define		ICMP_REDIRECT_NETWORK	0x00
#define		ICMP_REDIRECT_HOST	0x01
#define		ICMP_REDIRECT_TOSNET	0x02
#define		ICMP_REDIRECT_TOSHOST	0x03

/* ----- その他 ----- */
#define		ICMPHDR_SIZE	8

#endif
