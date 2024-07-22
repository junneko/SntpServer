/**
*	KDB-BASE IPv4�֘A�w�b�_
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

/* ---------- ��` ---------- */
#define	DNS_CACHE_MAX	8	/* �L���b�V���ő吔,2�ׂ̂�����w�肷�邱�� */
#define	DNS_CACHE_MASK	(DNS_CACHE_MAX-1)

/* ---------- ��M�o�b�t�@���̐擪�ʒu ---------- */
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

/* -------------------- �ϐ��錾 -------------------- */
/* ----- �O���ϐ�(�O���Ŋm��) ----- */
extern swbool	inical;		/* ���߂Ă̕␳ */
extern swbool	synchronized;	/* �������Ă��� */
extern byte	adjustseq;	/* �����v���V�[�P���X */
extern swbool	chkskip;	/* ���ԕ␳���`�F�b�N��� */
extern swbool	redrawflg;	/* ��ʏ������� */
extern long	timeoffset;	/* UTC����̃I�t�Z�b�g(�b) */
extern byte	timezone;	/* �^�C���]�[�� */
extern char	*srvbuf[];
extern volatile swbool	cal_updated;	/* �������␳���ꂽ�� */
extern volatile byte	time_sts;	/* �����X�e�[�^�X */
extern volatile byte	adjmode;	/* �␳���[�h */

/* ----- �v���g�R�� 1393byte ----- */
/* --- ���� 42byte --- */
extern ether_t	pacinfo;	/* �p�P�b�g��� 30 */
extern pseudo_st	pseudo_hdr;	/* �[���w�b�_ 12 */

/* --- ETHERNET,ARP 123byte --- */
extern byte	mac_address[6];	/* MAC�A�h���X 6 */
extern arp_tb	arp_cache[ARP_CACHE_MAX];	/* ARP�L���b�V���e�[�u�� 112 */
extern byte	arp_tp;		/* ARP�e�[�u���|�C���^ 1 */
extern dword	arp_timeout;	/* ARP�L���b�V���^�C���A�E�g 4 */
extern word	arp_reqtimeout;	/* ARP�v���ԓ��^�C���A�E�g 2 ver2.21.00 */

/* --- IP 16byte --- */
extern dword	myipaddr;	/* ������IP�A�h���X 4 */
extern dword	netmask;	/* �T�u�l�b�g�}�X�N 4 */
extern dword	gateway;	/* �f�t�H���g�Q�[�g�E�F�C 4 */
extern word	ip_identifer;	/* IP����ID 2 */
extern byte	ip_hdrlen;	/* IP�w�b�_�� 1 */
extern byte	ip_ttl;		/* TTL */

/* --- ICMP 6byte --- */
extern byte	icmptype;	/* ���b�Z�[�W�^�C�v 1 */
extern byte	icmpcode;	/* ���b�Z�[�W�R�[�h 1 */
extern dword	icmpopt;	/* �I�v�V���� 4 */

/* --- TCP 38byte --- */
extern tsock_t	sock_tbl[TCPSOCK_MAX];	/* TCP�\�P�b�g 38 */

/* --- HTTP 536byte --- */
extern word	http_port;	/* HTTP�g�p�|�[�g 2 */
extern tsock_t	*tstmp;		/* HTTP��Ɨp 18 */
extern char	cgibuf1[CGIBUFSIZE];	/* CGI�����o�b�t�@1 256 */
extern char	cgibuf2[CGIBUFSIZE];	/* CGI�����o�b�t�@2 256 */
extern swbool	httpen[2];	/* HTTP�f�[�^�L�� 2 */
extern byte	cgien[2];	/* GET,HEAD���\�b�h����M���� 2 */

/* --- NTP 178byte --- */
extern dword	ntpserver;	/* �₢���킹��NTP�T�[�o 4 */
extern char	ntpsrv1[32];	/* NTP�T�[�o�ݒ�1 32 */
extern char	ntpsrv2[32];	/* NTP�T�[�o�ݒ�2 32 */
extern char	ntpsrv3[32];	/* NTP�T�[�o�ݒ�3 32 */
extern char	ntpsrv4[32];	/* NTP�T�[�o�ݒ�4 32 */
extern byte	srvpnt;		/* �₢���킹��NTP�T�[�o�ʒu 1 */
extern byte	osrvpnt;	/* ���₢���킹��NTP�T�[�o�ʒu 1 */
extern int	calsec;		/* �␳�b 2 */
extern int	calms;		/* �␳�~���b 2 */
extern dword	ntpbcipadr;	/* NTP�u���[�h�L���X�gIP�A�h���X 4 */
extern dword	rootdly;	/* ���[�g�x�� 4 */
extern dword	rootdsprsn;	/* ���[�g�g�U 4 */
extern dword	txstamp;	/* ���M����(�Q�Ǝ��ʎq�p) 4 */
extern time_t	rxstamp;	/* �p�P�b�g��M����(�b) 4 */
extern time_t	rnstamp;	/* �X�V����(�b) 4 */
extern word	rxtime;		/* 1ms���ƃp�P�b�g��M�J�E���g�l 2 */
extern word	rntime;		/* 1ms���ƍX�V���J�E���g�l 2 */
extern word	ntpstart;	/* NTP�v������(�^�C���A�E�g�p) 2 */
extern word	ntptout;	/* �^�C���A�E�g���� 2 */
extern word	binterval;	/* �u���[�h�L���X�g�Ԋu(�b,0,65535:����) 2 */
extern int	cinterval;	/* �`�F�b�N�Ԋu 2 */
extern byte	lists;		/* LI��� 1 */
extern byte	stratum;	/* �T�[�o���K�� 1 */
extern byte	ntprtrycnt;	/* �^�C���A�E�g�����g���C�J�E���g 1 */
extern word	timewidth;	/* �␳���e�͈�(�}sec)65534�܂� 2 */
extern int	slew_ms;	/* slew�␳�~���b 2 */
extern int	slew_width;	/* slew�␳����~���b 2 */

/* --- DHCP 76byte --- */
extern dword	tmp_ipaddr;	/* ��IP�A�h���X 4 */
extern dword	tmp_netmask;	/* ���l�b�g�}�X�N 4 */
extern dword	tmp_gateway;	/* ���Q�[�g�E�F�C 4 */
extern dword	tmp_server;	/* ��DHCP�T�[�o 4 */
extern dword	tmp_dns;	/* ��DNS�T�[�o 4 */
extern dword	tmp_renewal;	/* ��RENEW���� 4 */
extern dword	tmp_rebind;	/* ��REBIND���� 4 */
extern dword	tmp_lease;	/* �����[�X�^�C�� 4 */

extern dword	dhcp_xid;	/* �g�����U�N�V����ID 4 */
extern struct tm	odcvr_time;	/* DISCOVER�J�n���� 18 */
extern time_t	renewal_time;	/* DHCP RENEW���� 4 */
extern time_t	rebind_time;	/* DHCP REBIND���� 4 */
extern time_t	lease_time;	/* DHCP���[�X�^�C�� 4 */
extern time_t	ddcrem;		/* DHCP DISCOVER���g���C���Ԏc�� 4 */
extern word	dinterval;	/* DHCP�v���C���^�[�o��(�b,0,65535:����) 2 */
extern byte	dhcp_msgtype;	/* ���b�Z�[�W�^�C�v 1 */
extern byte	dhcp_mode;	/* DHCP��� 1 */
extern swbool	dhcpcnten;	/* ���[�X�^�C���J�E���g���� 1 */
extern byte	dhcp_cnt;	/* ���g���C�J�E���g 1 */

/* --- RESOLVER(DNS,NBNS) 372byte --- */
extern char	rslvname[32];	/* �₢���킹�於�O 32 */
extern cache_t	cache_table[DNS_CACHE_MAX];	/* DNS�L���b�V�� 328 */
extern word	rslv_start;	/* ���]���o�₢���킹����(�^�C���A�E�g) 2 */
extern word	rslv_xid;	/* ���]���o�g�����U�N�V����ID 2 */
extern dword	rslv_addr;	/* ���]���o���ʃA�h���X 4 */
extern byte	rslv_tp;	/* ���]���o�e�[�u���|�C���^ 1 */
extern byte	rslv_cnt;	/* ���]���o���g���C�� 1 */
extern byte	rslv_req;	/* ���O�₢���킹�� 1 */
extern swbool	rslv_end;	/* �����I���t���O 1 */

/* --- NBNS 16byte --- */
extern char	nbns_name[16];	/* NetBIOS�� 16 */

/* --- DNS 4byte --- */
extern dword	dns_server;	/* DNS�T�[�o�A�h���X 4 */

/* ---------- �v���g�^�C�v�錾 ---------- */
/* --- �O���֐� --- */
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
