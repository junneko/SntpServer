/**
*	nbns.h
*	NBNS�v���g�R���������w�b�_
*	Copyright (c)Junnichi Tomaru
*/

#ifndef _NBNS_DEFINED_
#define _NBNS_DEFINED_

/* TTL */
#define		NBNS_TTL	600UL	/* 10��=600 */

/* RR-TYPE */
#define		RRTYPE_A	0x0001	/* IP �A�h���X���������\�[�X���R�[�h */
#define		RRTYPE_NS	0x0002	/* �l�[���T�[�o���������\�[�X���R�[�h */
#define		RRTYPE_NULL	0x000A	/* NULL ���\�[�X���R�[�h */
#define		RRTYPE_NB	0x0020	/* NetBIOS �̔ėp�l�[���T�[�r�X�̃��\�[�X���R�[�h */
#define		RRTYPE_NBSTAT	0x0021	/* NetBIOS �� NODE STATUS ���\�[�X���R�[�h */

#define		NB_BNODE	0x0000
#define		NB_PNODE	0x2000
#define		NB_MNODE	0x4000

#define		NB_GROUP	0x8000	/* RR_NAME��NetBIOS�O���[�v�� */
#define		NB_UNIQUE	0x0000	/* RR_NAME �� NetBIOS ���j�[�N�� */

/* RR-CLASS */
#define		CLASS_IN	0x0001	/* Internet Class */

/* NAME_FLAGS */
#define		NF_PRM		0x0200	/* �i����(Permanent Name)�t���O */
#define		NF_ACT		0x0400	/* �L����(Active Name)�t���O */
#define		NF_CNF		0x0800	/* �����t���O */
#define		NF_DRG		0x1000	/* �o�^�������t���O */

/* OPCODE */
#define		OP_MASK		0x7800
#define		OP_QUERY	0x0000
#define		OP_REGIST	0x2800
#define		OP_RELEASE	0x3000
#define		OP_WACK		0x3800
#define		OP_REFRESH	0x4000
#define		OP_RESPONSE	0x8000

/* NM_FLAGS */
#define		NM_BC		0x0010	/* �u���[�h�L���X�g�t���O */

#define		NM_RA		0x0080	/* �ċA�\(Recursion Available)�t���O */
#define		NM_RD		0x0100	/* �ċA�v��(Recursion Desired)�t���O */
#define		NM_TC		0x0200	/* �؂�l��(Truncation)�t���O */
#define		NM_AA		0x0400	/* ���Ђ���񓚃t���O */

/* RCODE */
#define		NO_ERR		0x0000
#define		FMT_ERR		0x0001	/* �t�H�[�}�b�g�G���[ */
#define		SRV_ERR		0x0002	/* �T�[�o���̕s������ */
#define		NAM_ERR		0x0003	/* ���O�G���[ */
#define		IMP_ERR		0x0004	/* �T�|�[�g����Ă��Ȃ����N�G�X�g�ɂ��G���[ */
#define		RFS_ERR		0x0005	/* ���ۃG���[ */
#define		ACT_ERR		0x0006	/* �A�N�e�B�u�G���[ */
#define		CFT_ERR		0x0007	/* ���O�����G���[ */

#endif

/* end of nbns.h */
