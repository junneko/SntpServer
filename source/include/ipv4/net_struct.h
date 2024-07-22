/**
*	プロトコル構造体
*	Copyright (c)Junnichi Tomaru
*/

#ifndef	_NETSTRUCT_DEFINED
#define	_NETSTRUCT_DEFINED

#include	"library/userdef.h"

/**
*	各プロトコルの構造体は、ビッグエンディアンで入ります。
*	各変数の読み書き時は、エンディアンに気をつけること
*/
/* --- ARP構造体 --- */
struct ARP_ST{			/* ARPパケット */
	word	hwtype;		/* ハードウェアタイプ */
	word	protocol;	/* プロトコルタイプ */
	byte	hwsize;		/* ハードウェアアドレスサイズ */
	byte	protolen;	/* プロトコルアドレスサイズ */
	word	opcode;		/* オペレーションコード */
	byte	srcmac[6];	/* 送信元MACアドレス */
	dword	sipaddr;	/* 送信元IPアドレス */
	byte	destmac[6];	/* 宛先MACアドレス */
	dword	dipaddr;	/* 宛先IPアドレス */
};
typedef struct ARP_ST	arp_st;

/* --- IP構造体 --- */
struct IP_ST{			/* IP構造体 */
	byte	ipver;		/* IPバージョン */
	byte	tos;		/* TOS */
	word	length;		/* 全データ長 */
	word	id;		/* 識別子 */
	word	flags;		/* フラグ */
	byte	ttl;		/* 生存時間 */
	byte	protocol;	/* プロトコル種 */
	word	chksum;		/* チェックサム */
	dword	sipaddr;	/* 発信元IPアドレス */
	dword	dipaddr;	/* 宛先IPアドレス */
};
typedef struct IP_ST	ip_st;

/* --- ICMP構造体 --- */
struct ICMP_ST{			/* ICMP構造体(エコー要求／応答用) */
	byte	type;		/* タイプ */
	byte	code;		/* コード(０) */
	word	chksum;		/* ICMPチェックサム */
	dword	id;		/* 識別子 */
};
typedef struct ICMP_ST	icmp_st;

/* --- TCP構造体 --- */
struct	TCP_T{
	word	srcport;	/* 送信元ポート番号 */
	word	destport;	/* 宛先ポート番号 */
	dword	seq;		/* シーケンス番号 */
	dword	ack;		/* 受信確認番号 */
	byte	offset;		/* オフセット */
	byte	flag;		/* フラグ */
	word	window;		/* ウィンドウ */
	word	chksum;		/* チェックサム */
	word	urgent;		/* 緊急ポインタ */
};
typedef struct TCP_T	tcp_t;

/* --- UDP構造体 --- */
struct UDP_ST{			/* UDP構造体 */
	word	srcport;	/* 送信元ポート */
	word	destport;	/* 宛先ポート */
	word	length;		/* 長さ */
	word	chksum;		/* チェックサム */
};
typedef struct UDP_ST	udp_st;

/* --- NTP構造体 --- */
struct NTP_ST{
	byte	livnmd;		/* LI,VN,mode */
	byte	stratum;	/* 階級 */
	byte	interval;	/* ポーリング間隔 */
	byte	precision;	/* 精度 */
	dword	delay;		/* ルート遅延(big-endian) */
	dword	dispersion;	/* ルート分散(big-endian) */
	dword	id;		/* 基準ID(big-endian) */
	struct{			/* 基準タイムスタンプ */
		byte	b1;	/* ビッグエンディアンの数値を */
		byte	b2;	/* 手っ取り早く覚えておくため */
		byte	b3;
		byte	b4;
		byte	b5;
		byte	b6;
		byte	b7;
		byte	b8;
	} referts;
	struct{			/* 基点タイムスタンプ */
		byte	b1;
		byte	b2;
		byte	b3;
		byte	b4;
		byte	b5;
		byte	b6;
		byte	b7;
		byte	b8;
	} origints;
	struct{			/* 受信タイムスタンプ */
		byte	b1;
		byte	b2;
		byte	b3;
		byte	b4;
		byte	b5;
		byte	b6;
		byte	b7;
		byte	b8;
	} rxts;
	struct{			/* 送信タイムスタンプ */
		byte	b1;
		byte	b2;
		byte	b3;
		byte	b4;
		byte	b5;
		byte	b6;
		byte	b7;
		byte	b8;
	} txts;
};
typedef struct NTP_ST	ntp_st;

/* --- NBNS(NBT),DNSヘッダ --- */
struct DNS_T{
	word	trid;		/* トランザクションID */
	word	status;		/* ステータス */
	word	question;	/* 問い合わせ数 */
	word	answer;		/* 回答数 */
	word	authority;	/* 権威セクション数 */
	word	additional;	/* 追加情報セクション数 */
};
typedef struct DNS_T	nbns_st;/* 構造が同じなので集約 */
typedef struct DNS_T	dns_t;

/* --- 擬似ヘッダ --- */
struct PSEUDO_ST{
	dword	sipaddr;	/* 送信元IPアドレス */
	dword	dipaddr;	/* 宛先IPアドレス */
	byte	zero;		/* パディング(0) */
	byte	protocol;	/* プロトコル */
	word	paclen;		/* プロトコル長さ */
};
typedef struct PSEUDO_ST	pseudo_st;

/* -------------------- 処理用構造体(リトルエンディアン) -------------------- */

/* --- パケット用構造体 --- */
struct	ETHER_T{	/* 28byte */
	word	datasize;	/* データ長さ */
	byte	mac[6];		/* 相手のMACアドレス */
	dword	partipaddr;	/* 相手のIPアドレス */
	dword	myipaddr;
	word	partport;
	word	myport;
	word	proto_body;
	word	proto_len;
	dword	seq;		/*  */
};
typedef struct ETHER_T	ether_t;

/* --- ARPキャッシュテーブル --- */
struct ARP_TB{		/* 14byte */
	dword	ipaddr;		/* 相手のIPアドレス */
	byte	mac[6];		/* 相手のMACアドレス */
	dword	timer;		/* ARPタイマ1000ms単位,減算タイプ */
	byte	flg;		/* 登録あるかフラグ */
};
typedef struct ARP_TB	arp_tb;

/* --- TCPソケット構造体 --- */
struct TCPSOCK_T {	/* 18byte */
	byte	status;		/* 現在の状態 */
	dword	ip;
	word	selfport;	/* 自分のポート */
	word	partport;	/* 相手のポート */
	dword	seqnum;		/* シーケンス番号 */
	dword	acknum;		/* 受信確認番号 */
	byte	timer;
};
typedef struct TCPSOCK_T	tsock_t;

/* --- NAMEキャッシュ(リゾルバ NBT,DNS兼用) --- */
struct	CACHE_T{	/* 41byte */
	char	domain[32];	/* ドメイン名(NetBIOS名兼用) */
	dword	ipaddr;		/* 解決されたIPアドレス */
	dword	ttl;		/* 有効時間 */
	byte	flg;		/*  */
};
typedef struct CACHE_T	cache_t;

#endif

/* end of net_struct.h */
