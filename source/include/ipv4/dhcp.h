/**
*	dhcp.h
*	DHCP�������w�b�_
*	Copyright (c)Junnichi Tomaru
*/
#define	DHCPMSG_SIZE		300U
#define	BOOTPMAIN_SIZE		236U	/* �I�v�V�����ȊO�̒��� */

#define	BOOTP_MAGICCOOKIE	0x63825363	/* �}�W�b�N�R�[�h */
#define	BOOTP_BOOTREQ		1		/* �u�[�g�v�� */
#define	BOOTP_BOOTREPLY		2		/* �u�[�g���� */
#define	BOOTP_HWADDR		1		/* �n�[�h�A�h���X(�C�[�T�l�b�g�͂P) */
#define	BOOTP_HWSIZE		6		/* �n�[�h�A�h���X��(�C�[�T�l�b�g�͂U) */

/* --- �p�P�b�g��R�[�h(���M�p) --- */
#define	BOOTP_MESSAGE		0x3501	/* ���b�Z�[�W�^�C�v */

/* --- ���b�Z�[�W�^�C�v(�H���ł��g��) --- */
#define	DHCP_ABORT		0	/* DHCP���� */
#define	DHCP_DISCOVER		1	/* �����p�P�b�g */
#define	DHCP_OFFER		2	/* �񋟃p�P�b�g */
#define	DHCP_REQUEST		3	/* �v���p�P�b�g */
#define	DHCP_DECLINE		4	/* ���ۃp�P�b�g */
#define	DHCP_PACK		5	/* �m�F�����p�P�b�g */
#define	DHCP_PNAK		6	/* �ے艞���p�P�b�g */
#define	DHCP_RELEASE		7	/* �ԋp�p�P�b�g */
#define	DHCP_INFORM		8	/* �I�v�V�������̎擾�p�P�b�g */
#define	DHCP_DHCPFORCERENEW	9	/* �č\���v�� */

#define	DHCP_INIT		20	/* �d�������㏈�� */
#define	DHCP_INITREBOOT		21	/* ���Z�b�g���̂Ƃ� */
#define	DHCP_REBOOTING		22	/* IP�A�h���X�L�����蒆 */
#define	DHCP_BOUND		23	/* ���蓖�ď�� */
#define	DHCP_RENEWING		24	/* �ݗ^���ԍX�V */
#define	DHCP_REBINDING		25	/* �ݗ^���ԉ����v�� */

/* --- BootP �I�v�V�����t�B�[���h --- */
#define	DHCP_UNKNOWN_MESSAGE	0

#define	DHCP_SUBNETMASK		1	/* �l�b�g���[�N�̃T�u�l�b�g�}�X�N */
#define	DHCP_SUBNETMASKLEN	4	

#define	DHCP_ROUTER		3	/* ���[�^��IP�A�h���X */
#define	DHCP_ROUTERLEN		4

#define	DHCP_TIMEOFFSET		4	/* �����I�t�Z�b�g */
#define	DHCP_TIMEOFFSETLEN	4

#define	DHCP_DNSID		6	/* DNS�T�[�o��IP�A�h���X */
#define	DHCP_DNSIDLEN		4

#define	DHCP_HOSTNAME		12	/* �z�X�g�� */

#define	DHCP_IPTTL		23	/* IP��TTL�����l */
#define	DHCP_IPTTLLEN		1

#define	DHCP_ARPTIMEOUT		35	/* ARP�^�C���A�E�g */
#define	DHCP_ARPTIMEOUTLEN	4

#define	DHCP_NTPSERVER		42	/* NTP�T�[�o */
#define	DHCP_NTPSERVERLEN	4

#define	DHCP_REQIPADDR		50	/* �v������IP�A�h���X */
#define	DHCP_REQIPADDRLEN	4

#define	DHCP_LEASETIME		51	/* IP�A�h���X�ݗ^���� */
#define	DHCP_LEASETIMELEN	4

#define	DHCP_MESSAGETYPE	53	/* ���b�Z�[�W�^�C�v */
#define	DHCP_MESSAGETYPELEN	1

#define	DHCP_SERVERID		54	/* DHCP�T�[�oIP�A�h���X */
#define	DHCP_SERVERIDLEN	4

#define	DHCP_PRMREQLIST		55	/* �p�����[�^���N�G�X�g���X�g */
#define	DHCP_PRMREQLISTLEN	8	/* �p�����[�^��(��) */

#define	DHCP_RENEWALTIME	58	/* RENEWAL����(T1) */
#define	DHCP_RENEWALTIMELEN	4

#define	DHCP_REBINDTIME		59	/* REBIND����(T2) */
#define	DHCP_REBINDTIMELEN	4

#define	DHCP_CLIANTID		61	/* �N���C�A���g��MAC�A�h���X */
#define	DHCP_CLIANTIDLEN	7

#define	BOOTP_MSGSTOPPER	0xff	/* �X�g�b�v�R�[�h */

/* end of dhcp.h */
