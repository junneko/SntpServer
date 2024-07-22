/**
*	sntp.h
*	Simple Network Time Protocol: �����C���v���g�R�� RFC1305,2030
*	Copyright (c)Junnichi Tomaru
*/

/* ----- �p�P�b�g ----- */
#define	SNTP_BASELENGTH	48U

/* ----- ���Ԓ�` ----- */
#define	NTP_TIMEOUT	2000U
#define	NTPBCINTBL	0U	/* �u���[�h�L���X�g�Ԋu(�b) */
#define	TIME_CONST	0x83aa7e80
/* 70�N���̕b��(25567�� * 24���� * 60�� * 60�b = 2208988800 = 0x83aa7e80) */

/* ----- LEAP INDICATER ----- */
#define	LI_READY	0x00	/* ���� */
#define	LI_INC		0x40	
#define	LI_DEC		0x80	
#define	LI_ALARM	0xc0	/* �������Ă��Ȃ� */

/* ----- MODE ----- */
#define	SNTP_CLIANT	0x03
#define	SNTP_SERVER	0x04
#define	SNTP_BCAST	0x05

/* ----- �K�w ----- */
#define	STRATUM_0	0
#define	STRATUM_1	1
#define	STRATUM_2	2
#define	STRATUM_3	3
#define	STRATUM_4	4
#define	STRATUM_5	5
#define	STRATUM_6	6
#define	STRATUM_7	7
#define	STRATUM_8	8
#define	STRATUM_9	9
#define	STRATUM_10	10
#define	STRATUM_11	11
#define	STRATUM_12	12
#define	STRATUM_13	13
#define	STRATUM_14	14
#define	STRATUM_15	15
#define	STRATUM_MAX	16

/* ----- ���x 2^n ----- */
#define	PRE_M01		0xFF	/* 500.0000msec */
#define	PRE_M02		0xFE	/* 250.0000msec */
#define	PRE_M03		0xFD	/* 125.0000msec */
#define	PRE_M04		0xFC	/*  62.5000msec */
#define	PRE_M05		0xFB	/*  31.2500msec */
#define	PRE_M06		0xFA	/*  15.6350msec */
#define	PRE_M07		0xF9	/*   7.8125msec */
#define	PRE_M08		0xF8	/*   3.9063msec */
#define	PRE_M09		0xF7	/*   1.9531msec */
#define	PRE_M10		0xF6	/* 976.5625usec */
#define	PRE_M11		0xF5	/* 488.2813usec */
#define	PRE_M12		0xF4	/* 244.1406usec */
#define	PRE_M13		0xF3	/* 122.0703usec */
#define	PRE_M14		0xF2	/*  61.0351usec */
#define	PRE_M15		0xF1	/*  30.5175usec */
#define	PRE_M16		0xF0	/*  15.2588usec */

/* end of sntp.h */
