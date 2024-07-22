/**
*	KDB-SNTP-SERVER	メインヘッダ
*	Copyright (c)Junnichi Tomaru
*/
/* ---------- 標準ライブラリ ---------- */
#include	<string.h>
#include	<ctype.h>
#include	<avr/eeprom.h>	/* with <avr/io.h> */
#include	<avr/wdt.h>
#include	<avr/interrupt.h>
#include	<avr/pgmspace.h>
/* ---------- ユーザライブラリ ---------- */
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

/* ---------- グローバル 2490byte ---------- */
/* --- BIOS 337byte bios.h --- */
/* --- STIME 18byte stime.h --- */
/* --- プロトコル 1393byte ipv4.h --- */
/* --- ランダム数発生 16byte utility.c --- */

/* --- 一般 52byte --- */
extern byte	disppage;		/* 表示中画面 1 */
extern byte	pmin;			/* 表示最小ページ 1 */
extern byte	pmax;			/* 表示最高ページ 1 */
extern byte	gpstype;		/* GPSモジュール 1 */
extern byte	nmeamode;		/* 採用するNMEAコマンド 1 */
extern byte	baudrate;		/* 通信ボーレート 1 */
extern word	opemode;		/* 動作モード 2 */
extern word	opests;			/* 動作ステータス 2 */

extern word	gps_ndtimeout;		/* データ非受信タイムアウト 2 */
extern word	gps_ustimeout;		/* 同期状態タイムアウト 2 */
extern char	nmea_data[42];		/* NMEA出力用 42 */

/* --- フラグ 9byte --- */
extern swbool	lcden;			/* 液晶許可 1 */
extern swbool	redrawflg;		/* 画面書き直し 1 */
extern swbool	ext7segen;		/* 7セグモジュール許可 1 */
extern swbool	tim7segen;		/* 7セグタイマ 1 */
extern swbool	ppsedge;		/* PPSエッジ 1 */
extern swbool	nmea_adj;		/* NMEAデータの補正 1 */
extern swbool	nmea_en;		/* NMEAデータ出力 1 */
extern swbool	rebootflg;		/* 電源投入以外のリセットかフラグ 1 */
extern swbool	inical;			/* 初めての補正 1 */

/* --- 時間関係 89byte --- */
extern struct tm	world_time;	/* 世界時間 18 */
extern struct tm	utc_time;	/* UTC時間 18 */
extern struct tm	ocal_time;	/* 前回補正時間 18 */
extern struct tm	obcast_time;	/* 前回配信時間 18 */

extern long	timeoffset;		/* UTCからのオフセット(秒) 4 */
extern long	opetime;		/* 運転時間 4 */
extern byte	opecnt;			/* 分計時用 1 */
extern byte	timezone;		/* タイムゾーン 1 */
extern byte	adjustseq;		/* 時刻要求シーケンス 1 */
extern swbool	synchronized;		/* 時刻同期している 1 */
extern swbool	chkskip;		/* 時間補正幅チェック回避 1 */
extern word	maxpoll;		/* 最大ポーリング間隔 1 */
extern int	hosei;			/* 補正量(ms) 2 ver2.20.00 */
extern byte	calmode;		/* 校正モード 1 ver2.20.00 */

/* --- タイマ 8byte --- */
extern timer_st	on_time;		/* タイマによる7SEG ON時刻 4 */
extern timer_st	off_time;		/* タイマによる7SEG OFF時刻 4 */

/* --- ログ 512byte --- */
extern cal_t	callog[16];		/* 補正ログ 256 */
extern evntlog_t	eventlog[16];	/* イベントログ 256 */

/* --- 割り込み内で変更される変数 42byte  --- */
extern volatile int	utc_msec;	/* １秒計時用カウンタ 2 */
extern volatile time_t	utc_sec;	/* 時刻(1970/1/1からの秒数) 4 */
extern volatile swbool	timeflg;	/* 更新したか 1 */
extern volatile byte	filtercnt;	/* 入力チャタリング防止 1 */
extern volatile byte	sync_sts;	/* GPSにおける同期状態 1 */
extern volatile swbool	cal_updated;	/* 時刻が補正されたか 1 */
extern volatile byte	time_sts;	/* 時刻ステータス 1 */
extern volatile word	gps_ndcnt;	/* GPS時刻なしカウント 2 */
extern volatile word	gps_uscnt;	/* GPS非同期カウント 2 */
extern volatile struct tm	time_tmp;	/* GPSモード用一時記憶 18 */
extern volatile time_t	sec_tmp;	/* 時刻 4 */
extern volatile byte	pps_out;	/* PPS出力用フラグ 1 */
extern volatile byte	liflg;		/* うるう秒処理用 1 */
extern volatile byte	ppscnt;		/* PPS受け取り中(汎用GPS) 1 */
extern volatile byte	adjmode;	/* 補正モード 1 */
/* end of avrntp.h */
