/**
*	KDB-SNTP-SERVER	���C���w�b�_
*	Copyright (c)Junnichi Tomaru
*/
/* ---------- �W�����C�u���� ---------- */
#include	<string.h>
#include	<ctype.h>
#include	<avr/eeprom.h>	/* with <avr/io.h> */
#include	<avr/wdt.h>
#include	<avr/interrupt.h>
#include	<avr/pgmspace.h>
/* ---------- ���[�U���C�u���� ---------- */
#include	"library/utility.h"
#include	"library/netutility.h"
#include	"library/timeutility.h"
#include	"library/userdef.h"
#include	"driver/enc28j60.h"
#include	"driver/lcd.h"
#include	"define.h"
#include	"bios/bios.h"
#include	"bios/stime.h"
#include	"ipv4/ipv4.h"
#include	"ipv4/ipv4_constval.h"
#include	"prottype.h"
#include	"struct.h"
#include	"constantval.h"

/* ---------- �O���[�o�� 2490byte ---------- */
/* --- BIOS 337byte bios.h --- */
/* --- STIME 18byte stime.h --- */
/* --- �v���g�R�� 1393byte ipv4.h --- */
/* --- �����_�������� 16byte utility.c --- */

/* --- ��� 52byte --- */
extern byte	disppage;		/* �\������� 1 */
extern byte	pmin;			/* �\���ŏ��y�[�W 1 */
extern byte	pmax;			/* �\���ō��y�[�W 1 */
extern byte	gpstype;		/* GPS���W���[�� 1 */
extern byte	nmeamode;		/* �̗p����NMEA�R�}���h 1 */
extern byte	baudrate;		/* �ʐM�{�[���[�g 1 */
extern word	opemode;		/* ���샂�[�h 2 */
extern word	opests;			/* ����X�e�[�^�X 2 */

extern word	gps_ndtimeout;		/* �f�[�^���M�^�C���A�E�g 2 */
extern word	gps_ustimeout;		/* ������ԃ^�C���A�E�g 2 */
extern char	nmea_data[42];		/* NMEA�o�͗p 42 */

/* --- �t���O 9byte --- */
extern swbool	lcden;			/* �t������ 1 */
extern swbool	redrawflg;		/* ��ʏ������� 1 */
extern swbool	ext7segen;		/* 7�Z�O���W���[������ 1 */
extern swbool	tim7segen;		/* 7�Z�O�^�C�} 1 */
extern swbool	ppsedge;		/* PPS�G�b�W 1 */
extern swbool	nmea_adj;		/* NMEA�f�[�^�̕␳ 1 */
extern swbool	nmea_en;		/* NMEA�f�[�^�o�� 1 */
extern swbool	rebootflg;		/* �d�������ȊO�̃��Z�b�g���t���O 1 */
extern swbool	inical;			/* ���߂Ă̕␳ 1 */

/* --- ���Ԋ֌W 89byte --- */
extern struct tm	world_time;	/* ���E���� 18 */
extern struct tm	utc_time;	/* UTC���� 18 */
extern struct tm	ocal_time;	/* �O��␳���� 18 */
extern struct tm	obcast_time;	/* �O��z�M���� 18 */

extern long	timeoffset;		/* UTC����̃I�t�Z�b�g(�b) 4 */
extern long	opetime;		/* �^�]���� 4 */
extern byte	opecnt;			/* ���v���p 1 */
extern byte	timezone;		/* �^�C���]�[�� 1 */
extern byte	adjustseq;		/* �����v���V�[�P���X 1 */
extern swbool	synchronized;		/* �����������Ă��� 1 */
extern swbool	chkskip;		/* ���ԕ␳���`�F�b�N��� 1 */
extern word	maxpoll;		/* �ő�|�[�����O�Ԋu 1 */
extern int	hosei;			/* �␳��(ms) 2 ver2.20.00 */
extern byte	calmode;		/* �Z�����[�h 1 ver2.20.00 */

/* --- �^�C�} 8byte --- */
extern timer_st	on_time;		/* �^�C�}�ɂ��7SEG ON���� 4 */
extern timer_st	off_time;		/* �^�C�}�ɂ��7SEG OFF���� 4 */

/* --- ���O 512byte --- */
extern cal_t	callog[16];		/* �␳���O 256 */
extern evntlog_t	eventlog[16];	/* �C�x���g���O 256 */

/* --- ���荞�ݓ��ŕύX�����ϐ� 42byte  --- */
extern volatile int	utc_msec;	/* �P�b�v���p�J�E���^ 2 */
extern volatile time_t	utc_sec;	/* ����(1970/1/1����̕b��) 4 */
extern volatile swbool	timeflg;	/* �X�V������ 1 */
extern volatile byte	filtercnt;	/* ���̓`���^�����O�h�~ 1 */
extern volatile byte	sync_sts;	/* GPS�ɂ����铯����� 1 */
extern volatile swbool	cal_updated;	/* �������␳���ꂽ�� 1 */
extern volatile byte	time_sts;	/* �����X�e�[�^�X 1 */
extern volatile word	gps_ndcnt;	/* GPS�����Ȃ��J�E���g 2 */
extern volatile word	gps_uscnt;	/* GPS�񓯊��J�E���g 2 */
extern volatile struct tm	time_tmp;	/* GPS���[�h�p�ꎞ�L�� 18 */
extern volatile time_t	sec_tmp;	/* ���� 4 */
extern volatile byte	pps_out;	/* PPS�o�͗p�t���O 1 */
extern volatile byte	liflg;		/* ���邤�b�����p 1 */
extern volatile byte	ppscnt;		/* PPS�󂯎�蒆(�ėpGPS) 1 */
extern volatile byte	adjmode;	/* �␳���[�h 1 */
/* end of avrntp.h */
