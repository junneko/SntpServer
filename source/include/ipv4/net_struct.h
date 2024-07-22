/**
*	�v���g�R���\����
*	Copyright (c)Junnichi Tomaru
*/

#ifndef	_NETSTRUCT_DEFINED
#define	_NETSTRUCT_DEFINED

#include	"library/userdef.h"

/**
*	�e�v���g�R���̍\���̂́A�r�b�O�G���f�B�A���œ���܂��B
*	�e�ϐ��̓ǂݏ������́A�G���f�B�A���ɋC�����邱��
*/
/* --- ARP�\���� --- */
struct ARP_ST{			/* ARP�p�P�b�g */
	word	hwtype;		/* �n�[�h�E�F�A�^�C�v */
	word	protocol;	/* �v���g�R���^�C�v */
	byte	hwsize;		/* �n�[�h�E�F�A�A�h���X�T�C�Y */
	byte	protolen;	/* �v���g�R���A�h���X�T�C�Y */
	word	opcode;		/* �I�y���[�V�����R�[�h */
	byte	srcmac[6];	/* ���M��MAC�A�h���X */
	dword	sipaddr;	/* ���M��IP�A�h���X */
	byte	destmac[6];	/* ����MAC�A�h���X */
	dword	dipaddr;	/* ����IP�A�h���X */
};
typedef struct ARP_ST	arp_st;

/* --- IP�\���� --- */
struct IP_ST{			/* IP�\���� */
	byte	ipver;		/* IP�o�[�W���� */
	byte	tos;		/* TOS */
	word	length;		/* �S�f�[�^�� */
	word	id;		/* ���ʎq */
	word	flags;		/* �t���O */
	byte	ttl;		/* �������� */
	byte	protocol;	/* �v���g�R���� */
	word	chksum;		/* �`�F�b�N�T�� */
	dword	sipaddr;	/* ���M��IP�A�h���X */
	dword	dipaddr;	/* ����IP�A�h���X */
};
typedef struct IP_ST	ip_st;

/* --- ICMP�\���� --- */
struct ICMP_ST{			/* ICMP�\����(�G�R�[�v���^�����p) */
	byte	type;		/* �^�C�v */
	byte	code;		/* �R�[�h(�O) */
	word	chksum;		/* ICMP�`�F�b�N�T�� */
	dword	id;		/* ���ʎq */
};
typedef struct ICMP_ST	icmp_st;

/* --- TCP�\���� --- */
struct	TCP_T{
	word	srcport;	/* ���M���|�[�g�ԍ� */
	word	destport;	/* ����|�[�g�ԍ� */
	dword	seq;		/* �V�[�P���X�ԍ� */
	dword	ack;		/* ��M�m�F�ԍ� */
	byte	offset;		/* �I�t�Z�b�g */
	byte	flag;		/* �t���O */
	word	window;		/* �E�B���h�E */
	word	chksum;		/* �`�F�b�N�T�� */
	word	urgent;		/* �ً}�|�C���^ */
};
typedef struct TCP_T	tcp_t;

/* --- UDP�\���� --- */
struct UDP_ST{			/* UDP�\���� */
	word	srcport;	/* ���M���|�[�g */
	word	destport;	/* ����|�[�g */
	word	length;		/* ���� */
	word	chksum;		/* �`�F�b�N�T�� */
};
typedef struct UDP_ST	udp_st;

/* --- NTP�\���� --- */
struct NTP_ST{
	byte	livnmd;		/* LI,VN,mode */
	byte	stratum;	/* �K�� */
	byte	interval;	/* �|�[�����O�Ԋu */
	byte	precision;	/* ���x */
	dword	delay;		/* ���[�g�x��(big-endian) */
	dword	dispersion;	/* ���[�g���U(big-endian) */
	dword	id;		/* �ID(big-endian) */
	struct{			/* ��^�C���X�^���v */
		byte	b1;	/* �r�b�O�G���f�B�A���̐��l�� */
		byte	b2;	/* �����葁���o���Ă������� */
		byte	b3;
		byte	b4;
		byte	b5;
		byte	b6;
		byte	b7;
		byte	b8;
	} referts;
	struct{			/* ��_�^�C���X�^���v */
		byte	b1;
		byte	b2;
		byte	b3;
		byte	b4;
		byte	b5;
		byte	b6;
		byte	b7;
		byte	b8;
	} origints;
	struct{			/* ��M�^�C���X�^���v */
		byte	b1;
		byte	b2;
		byte	b3;
		byte	b4;
		byte	b5;
		byte	b6;
		byte	b7;
		byte	b8;
	} rxts;
	struct{			/* ���M�^�C���X�^���v */
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

/* --- NBNS(NBT),DNS�w�b�_ --- */
struct DNS_T{
	word	trid;		/* �g�����U�N�V����ID */
	word	status;		/* �X�e�[�^�X */
	word	question;	/* �₢���킹�� */
	word	answer;		/* �񓚐� */
	word	authority;	/* ���ЃZ�N�V������ */
	word	additional;	/* �ǉ����Z�N�V������ */
};
typedef struct DNS_T	nbns_st;/* �\���������Ȃ̂ŏW�� */
typedef struct DNS_T	dns_t;

/* --- �[���w�b�_ --- */
struct PSEUDO_ST{
	dword	sipaddr;	/* ���M��IP�A�h���X */
	dword	dipaddr;	/* ����IP�A�h���X */
	byte	zero;		/* �p�f�B���O(0) */
	byte	protocol;	/* �v���g�R�� */
	word	paclen;		/* �v���g�R������ */
};
typedef struct PSEUDO_ST	pseudo_st;

/* -------------------- �����p�\����(���g���G���f�B�A��) -------------------- */

/* --- �p�P�b�g�p�\���� --- */
struct	ETHER_T{	/* 28byte */
	word	datasize;	/* �f�[�^���� */
	byte	mac[6];		/* �����MAC�A�h���X */
	dword	partipaddr;	/* �����IP�A�h���X */
	dword	myipaddr;
	word	partport;
	word	myport;
	word	proto_body;
	word	proto_len;
	dword	seq;		/*  */
};
typedef struct ETHER_T	ether_t;

/* --- ARP�L���b�V���e�[�u�� --- */
struct ARP_TB{		/* 14byte */
	dword	ipaddr;		/* �����IP�A�h���X */
	byte	mac[6];		/* �����MAC�A�h���X */
	dword	timer;		/* ARP�^�C�}1000ms�P��,���Z�^�C�v */
	byte	flg;		/* �o�^���邩�t���O */
};
typedef struct ARP_TB	arp_tb;

/* --- TCP�\�P�b�g�\���� --- */
struct TCPSOCK_T {	/* 18byte */
	byte	status;		/* ���݂̏�� */
	dword	ip;
	word	selfport;	/* �����̃|�[�g */
	word	partport;	/* ����̃|�[�g */
	dword	seqnum;		/* �V�[�P���X�ԍ� */
	dword	acknum;		/* ��M�m�F�ԍ� */
	byte	timer;
};
typedef struct TCPSOCK_T	tsock_t;

/* --- NAME�L���b�V��(���]���o NBT,DNS���p) --- */
struct	CACHE_T{	/* 41byte */
	char	domain[32];	/* �h���C����(NetBIOS�����p) */
	dword	ipaddr;		/* �������ꂽIP�A�h���X */
	dword	ttl;		/* �L������ */
	byte	flg;		/*  */
};
typedef struct CACHE_T	cache_t;

#endif

/* end of net_struct.h */
