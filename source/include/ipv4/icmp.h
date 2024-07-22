/*
*	icmp.h
*	ICMP����	�w�b�_
*	Copyright (c)Junnichi Tomaru
*/
#ifndef _ICMP_DEFINED_
#define _ICMP_DEFINED_
#include	"library/userdef.h"

/* ----- ���b�Z�[�W�^�C�v ----- */
#define		ICMP_TYPE_ECHOREPLY	0x00	/* �G�R�[���� */
#define		ICMP_TYPE_UNREACH	0x03	/* ���擞�B�s�\ */
#define		ICMP_TYPE_QUENCH	0x04	/* ���M���� */
#define		ICMP_TYPE_REDIRECT	0x05	/* ���_�C���N�g�ʒm */
#define		ICMP_TYPE_ECHOREQ	0x08	/* �G�R�[�v�� */
#define		ICMP_TYPE_EXCEED	0x0b	/* �f�[�^�̎��Ԓ��� */
#define		ICMP_TYPE_PROBLEM	0x0c	/* �f�[�^�̃p�����[�^�ُ� */
#define		ICMP_TYPE_TIMEREQ	0x0d	/* �^�C���X�^���v�v�� */
#define		ICMP_TYPE_TIMEREPLY	0x0e	/* �^�C���X�^���v���� */
#define		ICMP_TYPE_INFOREQ	0x0f	/* ���v�� */
#define		ICMP_TYPE_INFOREPLY	0x10	/* ��񉞓� */
#define		ICMP_TYPE_MASKREQ	0x11	/* �A�h���X�}�X�N�v�� */
#define		ICMP_TYPE_MASKREPLY	0x12	/* �A�h���X�}�X�N���� */

/* ----- �R�[�h ----- */

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

/* ----- ���̑� ----- */
#define		ICMPHDR_SIZE	8

#endif
