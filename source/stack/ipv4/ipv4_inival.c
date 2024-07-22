/**
*	IPv4�֌W	�O���[�o���錾�Ə�����
*	Copyright (c)Junnichi Tomaru
*/

/* ----- �l�b�g���[�N�֘A ----- */
/* ���� */
ether_t	pacinfo = { 0U, { 0,0,0,0,0,0 }, 0UL, 0UL, 0U, 0U, 0U, 0U, 0UL };	/* �p�P�b�g��� */
pseudo_st	pseudo_hdr ={ 0UL, 0UL, 0, 0, 0U };	/* �[���w�b�_ */

/* ���ʃ��C���[ */
byte	mac_address[6] = { 0, 0, 0, 0, 0, 0 };	/* MAC�A�h���X */
arp_tb	arp_cache[8] = {	/* ARP�L���b�V���e�[�u�� */
	{ 0UL, { 0,0,0,0,0,0 }, 0UL, 0 }, { 0UL, { 0,0,0,0,0,0 }, 0UL, 0 },
	{ 0UL, { 0,0,0,0,0,0 }, 0UL, 0 }, { 0UL, { 0,0,0,0,0,0 }, 0UL, 0 },
	{ 0UL, { 0,0,0,0,0,0 }, 0UL, 0 }, { 0UL, { 0,0,0,0,0,0 }, 0UL, 0 },
	{ 0UL, { 0,0,0,0,0,0 }, 0UL, 0 }, { 0UL, { 0,0,0,0,0,0 }, 0UL, 0 }
};
byte	arp_tp = 0;		/* ARP�e�[�u���|�C���^ */
dword	arp_timeout = ARP_TIMEMAX;	/* ARP�L���b�V���^�C���A�E�g */
word	arp_reqtimeout = 2000U;	/* ARP�v���ԓ��^�C���A�E�g */

/* ��ʃ��C���[ */
/* --- IP --- */
dword	myipaddr = 0UL;		/* ������IP�A�h���X */
dword	netmask = 0UL;		/* �T�u�l�b�g�}�X�N */
dword	gateway = 0UL;		/* �f�t�H���g�Q�[�g�E�F�C */
word	ip_identifer = 0U;	/* IP����ID */
byte	ip_hdrlen = 0;		/* IP�w�b�_�� */
byte	ip_ttl = 0x40;		/* TTL */

/* --- ICMP --- */
byte	icmptype = 0;		/* ���b�Z�[�W�^�C�v */
byte	icmpcode = 0;		/* ���b�Z�[�W�R�[�h */
dword	icmpopt = 0UL;		/* �I�v�V���� */

/* --- TCP --- */
tsock_t	sock_tbl[TCPSOCK_MAX] = {	/* TCP�\�P�b�g */
	{ LISTEN, 0UL, 0U, 0U, 0UL, 0UL, 0U }, { LISTEN, 0UL, 0U, 0U, 0UL, 0UL, 0U }
};

/* --- HTTP --- */
word	http_port = 0U;		/* HTTP�g�p�|�[�g */
tsock_t	*tstmp = NULL;
char	cgibuf1[CGIBUFSIZE] = 	/* CGI�����o�b�t�@1 */
{
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
};
char	cgibuf2[CGIBUFSIZE] = 		/* CGI�����o�b�t�@2 */
{
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
};
swbool	httpen[2] = { off, off };	/* HTTP�f�[�^�L�� */
byte	cgien[2] = { CGI_NONE, CGI_NONE };	/* GET,HEAD���\�b�h����M���� */

/* --- NTP --- */
dword	ntpserver = 0UL;	/* �₢���킹��NTP�T�[�o */
char	ntpsrv1[32] = { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 };/* NTP�T�[�o�ݒ�1 */
char	ntpsrv2[32] = { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 };/* NTP�T�[�o�ݒ�2 */
char	ntpsrv3[32] = { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 };/* NTP�T�[�o�ݒ�3 */
char	ntpsrv4[32] = { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 };/* NTP�T�[�o�ݒ�4 */
byte	srvpnt = 0;		/* �₢���킹��NTP�T�[�o�ʒu */
byte	osrvpnt = 0;		/* ���₢���킹��NTP�T�[�o�ʒu */
int	calsec = 0;		/* �␳�b */
int	calms = 0;		/* �␳�~���b */
dword	ntpbcipadr = 0UL;	/* NTP�u���[�h�L���X�gIP�A�h���X */
dword	rootdly = 0UL;		/* ���[�g�x�� */
dword	rootdsprsn = 0UL;	/* ���[�g�g�U */
dword	txstamp = 0UL;		/* ���M����(�Q�Ǝ��ʎq�p) */
time_t	rxstamp = 0L;		/* �p�P�b�g��M����(�b) */
time_t	rnstamp = 0L;		/* �X�V����(�b) */
word	rxtime = 0U;		/* 1ms���ƃp�P�b�g��M�J�E���g�l */
word	rntime = 0U;		/* 1ms���ƍX�V���J�E���g�l */
word	ntpstart = 0U;		/* NTP�v������ */
word	ntptout = 0U;		/* �^�C���A�E�g���� */
word	binterval = 0U;		/* �u���[�h�L���X�g�Ԋu(�b,0,65535:����) */
int	cinterval = 0;		/* �`�F�b�N�Ԋu */
byte	lists = LI_ALARM;	/* LI��� */
byte	stratum = 16;		/* ����stratum16(�������ĂȂ��̂�) */
byte	ntprtrycnt = 0;		/* �^�C���A�E�g�����g���C�J�E���g */
word	timewidth = 0U;		/* �␳���e�͈�(�}sec)�A0=���� */
int	slew_ms = 0;		/* slew�␳�~���b */
int	slew_width = 0;		/* slew����~���b */

/* --- DHCP --- */
dword	tmp_ipaddr = 0UL;	/* ��IP�A�h���X(���������Ȃ�) */
dword	tmp_netmask = 0UL;	/* ���l�b�g�}�X�N */
dword	tmp_gateway = 0UL;	/* ���Q�[�g�E�F�C */
dword	tmp_server = 0UL;	/* ��DHCP�T�[�o */
dword	tmp_dns = 0UL;		/* ��DNS�T�[�o */
dword	tmp_renewal = 0UL;	/* ��RENEW���� */
dword	tmp_rebind = 0UL;	/* ��REBIND���� */
dword	tmp_lease = 0UL;	/* �����[�X�^�C�� */

dword	dhcp_xid = 0UL;		/* �g�����U�N�V����ID */
struct tm	odcvr_time = { 0,0,9,1,0,70,0,0,0 };	/* DISCOVER�J�n���� */
time_t	renewal_time = 0L;	/* DHCP RENEW���� */
time_t	rebind_time = 0L;	/* DHCP REBIND���� */
time_t	lease_time = 0L;	/* DHCP���[�X�^�C�� */
time_t	ddcrem = 0L;		/* DHCP DISCOVER���g���C���Ԏc�� */
word	dinterval = 0U;		/* DHCP�v���C���^�[�o��(�b,0,65535:����) */
byte	dhcp_msgtype = 0;	/* ���b�Z�[�W�^�C�v */
byte	dhcp_mode = DHCP_ABORT;	/* DHCP��� */
swbool	dhcpcnten = off;	/* ���[�X�^�C���J�E���g���� */
byte	dhcp_cnt = 0;		/* ���g���C�J�E���g */

/* --- ���]���o --- */
char	rslvname[32] = { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 };
cache_t	cache_table[DNS_CACHE_MAX] =	/* NAME�L���b�V�� */
{
	{{ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 }, 0L, 0L, 0 },
	{{ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 }, 0L, 0L, 0 },
	{{ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 }, 0L, 0L, 0 },
	{{ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 }, 0L, 0L, 0 },
	{{ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 }, 0L, 0L, 0 },
	{{ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 }, 0L, 0L, 0 },
	{{ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 }, 0L, 0L, 0 },
	{{ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 }, 0L, 0L, 0 }
};
word	rslv_start = 0U;	/* ���]���o�₢���킹����(�^�C���A�E�g) */
word	rslv_xid = 0U;		/* ���]���o�g�����U�N�V����ID */
dword	rslv_addr = 0UL;	/* ���]���o���ʃA�h���X */
byte	rslv_tp = 0;		/* ���]���o�e�[�u���|�C���^ */
byte	rslv_cnt = 0;		/* ���]���o���g���C�� */
byte	rslv_req = 0;		/* ���O�₢���킹�� */
swbool	rslv_end = off;		/* �����I���t���O 1 */

/* --- NBNS --- */
char	nbns_name[16] = { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 };	/* NetBIOS�� */

/* --- DNS --- */
dword	dns_server = 0UL;	/* DNS�T�[�o�A�h���X */

/* end of ipv4_inival.c */
