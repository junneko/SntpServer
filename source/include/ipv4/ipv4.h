/**
*	KDB-BASE IPv4関連ヘッダ
*	Copyright (c)Junnichi Tomaru
*/
#include	<stdint.h>
#include	<string.h>
#include	<ctype.h>
#include	"net_struct.h"
#include	"define.h"
#include	"bios/stime.h"
#include	"driver/enc28j60.h"
#include	"library/netutility.h"
#include	"library/timeutility.h"

#include	"arp.h"
#include	"ethernet.h"
#include	"ip.h"
#include	"icmp.h"
#include	"tcp.h"
#include	"udp.h"
#include	"dhcp.h"
#include	"dns.h"
#include	"nbns.h"
#include	"sntp.h"
#include	"ipv4_constval.h"

/* ---------- 定義 ---------- */
#define	DNS_CACHE_MAX	8	/* キャッシュ最大数,2のべき乗を指定すること */
#define	DNS_CACHE_MASK	(DNS_CACHE_MAX-1)

/* ---------- 受信バッファ内の先頭位置 ---------- */
#define	ETHER_TOP	0
#define	IP_TOP		ETHERHDR_SIZE
#define	IP_SUM		IP_TOP+10
#define	ICMP_TOP	IP_TOP+IPHDR_SIZE
#define	ICMP_SUM	ICMP_TOP+2
#define	UDP_TOP		IP_TOP+IPHDR_SIZE
#define	UDP_SUM		UDP_TOP+6
#define	UDP_DATA	UDP_TOP+UDPHDR_SIZE
#define	TCP_TOP		IP_TOP+IPHDR_SIZE
#define	TCP_SUM		TCP_TOP+16
#define	TCP_DATA	TCP_TOP+TCPHDR_SIZE
#define	NTP_TOP		UDP_DATA
#define	NBNS_TOP	UDP_DATA

/* -------------------- 変数宣言 -------------------- */
/* ----- 外部変数(外部で確保) ----- */
extern swbool	inical;		/* 初めての補正 */
extern swbool	synchronized;	/* 同期している */
extern byte	adjustseq;	/* 時刻要求シーケンス */
extern swbool	chkskip;	/* 時間補正幅チェック回避 */
extern swbool	redrawflg;	/* 画面書き直し */
extern long	timeoffset;	/* UTCからのオフセット(秒) */
extern byte	timezone;	/* タイムゾーン */
extern char	*srvbuf[];
extern volatile swbool	cal_updated;	/* 時刻が補正されたか */
extern volatile byte	time_sts;	/* 時刻ステータス */
extern volatile byte	adjmode;	/* 補正モード */

/* ----- プロトコル 1393byte ----- */
/* --- 共通 42byte --- */
extern ether_t	pacinfo;	/* パケット情報 30 */
extern pseudo_st	pseudo_hdr;	/* 擬似ヘッダ 12 */

/* --- ETHERNET,ARP 123byte --- */
extern byte	mac_address[6];	/* MACアドレス 6 */
extern arp_tb	arp_cache[ARP_CACHE_MAX];	/* ARPキャッシュテーブル 112 */
extern byte	arp_tp;		/* ARPテーブルポインタ 1 */
extern dword	arp_timeout;	/* ARPキャッシュタイムアウト 4 */
extern word	arp_reqtimeout;	/* ARP要求返答タイムアウト 2 ver2.21.00 */

/* --- IP 16byte --- */
extern dword	myipaddr;	/* 自分のIPアドレス 4 */
extern dword	netmask;	/* サブネットマスク 4 */
extern dword	gateway;	/* デフォルトゲートウェイ 4 */
extern word	ip_identifer;	/* IP識別ID 2 */
extern byte	ip_hdrlen;	/* IPヘッダ長 1 */
extern byte	ip_ttl;		/* TTL */

/* --- ICMP 6byte --- */
extern byte	icmptype;	/* メッセージタイプ 1 */
extern byte	icmpcode;	/* メッセージコード 1 */
extern dword	icmpopt;	/* オプション 4 */

/* --- TCP 38byte --- */
extern tsock_t	sock_tbl[TCPSOCK_MAX];	/* TCPソケット 38 */

/* --- HTTP 536byte --- */
extern word	http_port;	/* HTTP使用ポート 2 */
extern tsock_t	*tstmp;		/* HTTP作業用 18 */
extern char	cgibuf1[CGIBUFSIZE];	/* CGI処理バッファ1 256 */
extern char	cgibuf2[CGIBUFSIZE];	/* CGI処理バッファ2 256 */
extern swbool	httpen[2];	/* HTTPデータ有効 2 */
extern byte	cgien[2];	/* GET,HEADメソッドを受信した 2 */

/* --- NTP 178byte --- */
extern dword	ntpserver;	/* 問い合わせ先NTPサーバ 4 */
extern char	ntpsrv1[32];	/* NTPサーバ設定1 32 */
extern char	ntpsrv2[32];	/* NTPサーバ設定2 32 */
extern char	ntpsrv3[32];	/* NTPサーバ設定3 32 */
extern char	ntpsrv4[32];	/* NTPサーバ設定4 32 */
extern byte	srvpnt;		/* 問い合わせ先NTPサーバ位置 1 */
extern byte	osrvpnt;	/* 旧問い合わせ先NTPサーバ位置 1 */
extern int	calsec;		/* 補正秒 2 */
extern int	calms;		/* 補正ミリ秒 2 */
extern dword	ntpbcipadr;	/* NTPブロードキャストIPアドレス 4 */
extern dword	rootdly;	/* ルート遅延 4 */
extern dword	rootdsprsn;	/* ルート拡散 4 */
extern dword	txstamp;	/* 送信時刻(参照識別子用) 4 */
extern time_t	rxstamp;	/* パケット受信時刻(秒) 4 */
extern time_t	rnstamp;	/* 更新時刻(秒) 4 */
extern word	rxtime;		/* 1msごとパケット受信カウント値 2 */
extern word	rntime;		/* 1msごと更新時カウント値 2 */
extern word	ntpstart;	/* NTP要求時刻(タイムアウト用) 2 */
extern word	ntptout;	/* タイムアウト時間 2 */
extern word	binterval;	/* ブロードキャスト間隔(秒,0,65535:無効) 2 */
extern int	cinterval;	/* チェック間隔 2 */
extern byte	lists;		/* LI状態 1 */
extern byte	stratum;	/* サーバ時階級 1 */
extern byte	ntprtrycnt;	/* タイムアウト時リトライカウント 1 */
extern word	timewidth;	/* 補正許容範囲(±sec)65534まで 2 */
extern int	slew_ms;	/* slew補正ミリ秒 2 */
extern int	slew_width;	/* slew補正判定ミリ秒 2 */

/* --- DHCP 76byte --- */
extern dword	tmp_ipaddr;	/* 仮IPアドレス 4 */
extern dword	tmp_netmask;	/* 仮ネットマスク 4 */
extern dword	tmp_gateway;	/* 仮ゲートウェイ 4 */
extern dword	tmp_server;	/* 仮DHCPサーバ 4 */
extern dword	tmp_dns;	/* 仮DNSサーバ 4 */
extern dword	tmp_renewal;	/* 仮RENEW時間 4 */
extern dword	tmp_rebind;	/* 仮REBIND時間 4 */
extern dword	tmp_lease;	/* 仮リースタイム 4 */

extern dword	dhcp_xid;	/* トランザクションID 4 */
extern struct tm	odcvr_time;	/* DISCOVER開始時間 18 */
extern time_t	renewal_time;	/* DHCP RENEW時間 4 */
extern time_t	rebind_time;	/* DHCP REBIND時間 4 */
extern time_t	lease_time;	/* DHCPリースタイム 4 */
extern time_t	ddcrem;		/* DHCP DISCOVERリトライ時間残り 4 */
extern word	dinterval;	/* DHCP要求インターバル(秒,0,65535:無効) 2 */
extern byte	dhcp_msgtype;	/* メッセージタイプ 1 */
extern byte	dhcp_mode;	/* DHCP状態 1 */
extern swbool	dhcpcnten;	/* リースタイムカウント許可 1 */
extern byte	dhcp_cnt;	/* リトライカウント 1 */

/* --- RESOLVER(DNS,NBNS) 372byte --- */
extern char	rslvname[32];	/* 問い合わせ先名前 32 */
extern cache_t	cache_table[DNS_CACHE_MAX];	/* DNSキャッシュ 328 */
extern word	rslv_start;	/* リゾルバ問い合わせ時刻(タイムアウト) 2 */
extern word	rslv_xid;	/* リゾルバトランザクションID 2 */
extern dword	rslv_addr;	/* リゾルバ結果アドレス 4 */
extern byte	rslv_tp;	/* リゾルバテーブルポインタ 1 */
extern byte	rslv_cnt;	/* リゾルバリトライ回数 1 */
extern byte	rslv_req;	/* 名前問い合わせ中 1 */
extern swbool	rslv_end;	/* 解決終了フラグ 1 */

/* --- NBNS 16byte --- */
extern char	nbns_name[16];	/* NetBIOS名 16 */

/* --- DNS 4byte --- */
extern dword	dns_server;	/* DNSサーバアドレス 4 */

/* ---------- プロトタイプ宣言 ---------- */
/* --- 外部関数 --- */
void	unsync_seq( void );
byte	log2x( word x );

/* --- arp.c --- */
void	arp_timer( void );
void	arp_request( dword partadr );
byte	arp_input( void );
byte	arp_search( void );
byte	arp_delete( dword adr );
byte	arp_keep( dword adr, byte *mac, byte flg );

/* --- ethernet.c --- */
byte	ether_input( void );
void	ether_output( word type );

/* --- ip.c --- */
byte	ip_input( void );
bool	wait_arpreply( void );
byte	ip_output( byte protocol );
word	tcpudp_sum( byte dir, word offset, word size );

/* --- icmp.c --- */
byte	icmp_input( void );

/* --- tcp.c --- */
void	tcp_resetsocket( int sid );
void	tcp_buffer( void );
byte	tcp_input( void );
byte	tcp_output( byte flags, tsock_t *tsp, word size );

/* --- udp.c --- */
byte	udp_input( void );
byte	udp_output( word len );

/* --- dhcp.c --- */
byte	dhcp_discover( void );
byte	dhcp_input( void );
byte	dhcp_request( byte mode );
byte	dhcp_sequense( void );

/* --- nbns.c --- */
byte	nbns_sendquery( char *name );
byte	nbns_input( void );

/* --- dns.c --- */
byte	dns_request( char *name );
byte	dns_input( void );

/* --- resolver.c --- */
void	resolve_timer( void );
dword	name_resolver( char *name );
void	cache_keep( char *name, dword addr, dword ttl );
byte	resolve_seq( void );

/* --- sntp.c --- */
byte	ntp_input( void );
byte	ntp_request( dword sntpip );
byte	ntp_broadcast( void );
void	nextntpsrv( void );
byte	ntp_reqseq( void );

/* --- time.c --- */
byte	time_input( void );

/* end of ipv4.h */
