/**
*	KDB-SNTP-SERVER		構造体定義
*	Copyright (c)Junnichi Tomaru
*/
#include	"library/userdef.h"

#ifndef	_STRUCT_DEFINED
#define	_STRUCT_DEFINED

/* ---------- 時間 ---------- */

/* 表示用日付構造体 4byte */
struct DATE_ST{
	word	year;
	byte	mon;
	byte	day;
};
typedef struct DATE_ST	date_st;

/* 表示用時間構造体 3byte */
struct TIME_ST{
	byte	hour;
	byte	min;
	byte	sec;
};
typedef struct TIME_ST	time_st;

/* タイマ用時間構造体 4byte */
struct TIMER_ST{
	byte	wday;	/* 許可曜日 bit0-6=Sun-Sat */
	byte	hour;
	byte	min;
	byte	sec;
};
typedef struct TIMER_ST	timer_st;

/* ---------- 通信用 ---------- */

/* HTTP用時間構造体 7byte */
struct HTTP_TM{
	word	year;
	byte	mon;
	byte	day;
	byte	hour;
	byte	min;
	byte	sec;
};
typedef struct HTTP_TM	http_tm;

/* ---------- ログ ---------- */

/* 補正用構造体 16byte */
struct CAL_T{
	word	year;	/* 補正日時 */
	byte	mon;
	byte	day;
	byte	hour;
	byte	min;
	byte	sec;
	byte	flg;	/* 0:なし 1:補正 2:配信 3:受信 */
	int	csec;	/* 秒補正値 */
	int	cms;	/* ms補正値 */
	byte	pnt;
	byte	dummy[3];
};
typedef struct CAL_T	cal_t;

/* イベントログ用構造体 16byte */
struct EVNTLOG_T{
	word	year;	/* 年 */
	byte	mon;	/* 月 */
	byte	day;	/* 日 */
	byte	hour;	/* 時 */
	byte	min;	/* 分 */
	byte	sec;	/* 秒 */
	byte	evnt;	/* イベント番号(0:無) */
	word	arg1;	/* 情報１ */
	word	arg2;	/* 情報２ */
	dword	arg3;	/* 情報３ */
};
typedef struct EVNTLOG_T	evntlog_t;

#endif

/* end of struct.h */
