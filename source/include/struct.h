/**
*	KDB-SNTP-SERVER		�\���̒�`
*	Copyright (c)Junnichi Tomaru
*/
#include	"library/userdef.h"

#ifndef	_STRUCT_DEFINED
#define	_STRUCT_DEFINED

/* ---------- ���� ---------- */

/* �\���p���t�\���� 4byte */
struct DATE_ST{
	word	year;
	byte	mon;
	byte	day;
};
typedef struct DATE_ST	date_st;

/* �\���p���ԍ\���� 3byte */
struct TIME_ST{
	byte	hour;
	byte	min;
	byte	sec;
};
typedef struct TIME_ST	time_st;

/* �^�C�}�p���ԍ\���� 4byte */
struct TIMER_ST{
	byte	wday;	/* ���j�� bit0-6=Sun-Sat */
	byte	hour;
	byte	min;
	byte	sec;
};
typedef struct TIMER_ST	timer_st;

/* ---------- �ʐM�p ---------- */

/* HTTP�p���ԍ\���� 7byte */
struct HTTP_TM{
	word	year;
	byte	mon;
	byte	day;
	byte	hour;
	byte	min;
	byte	sec;
};
typedef struct HTTP_TM	http_tm;

/* ---------- ���O ---------- */

/* �␳�p�\���� 16byte */
struct CAL_T{
	word	year;	/* �␳���� */
	byte	mon;
	byte	day;
	byte	hour;
	byte	min;
	byte	sec;
	byte	flg;	/* 0:�Ȃ� 1:�␳ 2:�z�M 3:��M */
	int	csec;	/* �b�␳�l */
	int	cms;	/* ms�␳�l */
	byte	pnt;
	byte	dummy[3];
};
typedef struct CAL_T	cal_t;

/* �C�x���g���O�p�\���� 16byte */
struct EVNTLOG_T{
	word	year;	/* �N */
	byte	mon;	/* �� */
	byte	day;	/* �� */
	byte	hour;	/* �� */
	byte	min;	/* �� */
	byte	sec;	/* �b */
	byte	evnt;	/* �C�x���g�ԍ�(0:��) */
	word	arg1;	/* ���P */
	word	arg2;	/* ���Q */
	dword	arg3;	/* ���R */
};
typedef struct EVNTLOG_T	evntlog_t;

#endif

/* end of struct.h */
