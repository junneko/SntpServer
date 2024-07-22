/**
*	KDK-SNTP-SERVER		グローバル宣言と初期化
*	Copyright (c)Junnichi Tomaru
*/

/* ----- グローバル ----- */
/* --- 一般 --- */
byte	disppage = DISPMIN;		/* 表示中画面 */
byte	pmin = DISPMIN;			/* 表示最小ページ */
byte	pmax = DISPMAX;			/* 表示最高ページ */
byte	gpstype = GPS_MTK3339;		/* GPSモジュール 1 */
byte	nmeamode = NMEA_GPRMC;		/* 採用するNMEAコマンド */
byte	baudrate = BAUD9600;		/* 通信ボーレート */
word	opemode = 0U;			/* 動作モード */
word	opests = 0U;			/* 動作ステータス */

word	gps_ndtimeout = 0U;		/* データ非受信タイムアウト */
word	gps_ustimeout = 0U;		/* 同期状態タイムアウト */

char	nmea_data[42] = 		/* NMEA出力用 */
{
	'$','G','P','R','M','C',',',' ',' ',' ',' ',' ',' ','.',' ',' ',
	' ',',',' ',',',',',',',',',',',',',',',' ',' ',' ',' ',' ',' ',
	',',',',',','N','*',' ',' ',0x0d, 0x0a, 0x00
};

/* --- フラグ --- */
swbool	lcden = on;			/* 液晶許可 */
swbool	redrawflg = off;		/* 画面書き直し */
swbool	ext7segen = off;		/* 7セグモジュール許可 */
swbool	tim7segen = off;		/* 7セグタイマ */
swbool	ppsedge = on;			/* PPSエッジ(上昇) */
swbool	nmea_adj = off;			/* NMEAデータの補正 */
swbool	nmea_en = off;			/* NMEAデータ出力 */
swbool	rebootflg = off;		/* 電源投入以外のリセットかフラグ */
swbool	inical = on;			/* 初めての補正 */

/* ----- 時刻関係 ----- */
struct tm	world_time = { 0,0,9,1,0,70,0,0,0 };	/* 世界時間(現地時間) */
struct tm	utc_time = { 0,0,0,1,0,70,0,0,0 };	/* UTC時間 */
struct tm	ocal_time = { 0,0,9,1,0,70,0,0,0 };	/* 前回補正時間 */
struct tm	obcast_time = { 0,0,9,1,0,70,0,0,0 };	/* 前回配信時間 */

long	timeoffset = 32400L;		/* UTCからのオフセット(秒) */
long	opetime = 0L;			/* 運転時間 */
byte	opecnt = 0;			/* 分計時用 */
byte	timezone = 0;			/* タイムゾーン(JST) */
byte	adjustseq = ADJUSTSEQ_NONE;	/* 時刻要求シーケンス(NTP,GPS共通) */
swbool	synchronized = off;		/* 時刻同期している */
swbool	chkskip = off;			/* 時間補正幅チェック回避 */
word	maxpoll = CYCLE_MAX;		/* 最大17.07min(1024sec) */
int	hosei = 0;			/* 補正量(ms) ver2.20.00 */
byte	calmode = 0;			/* 校正モード ver2.20.00 */

/* --- タイマ関係 8byte --- */
timer_st	on_time = { 0, 0, 0, 0 };	/* タイマによるON時刻 */
timer_st	off_time = { 0, 0, 0, 0 };	/* タイマによるOFF時刻 */

/* ----- ログ ----- */
cal_t	callog[16] = 			/* 補正ログ */
{
	{ 0U,0,0,0,0,0,0,0,0,0,{0,0,0} }, { 0U,0,0,0,0,0,0,0,0,0,{0,0,0} },
	{ 0U,0,0,0,0,0,0,0,0,0,{0,0,0} }, { 0U,0,0,0,0,0,0,0,0,0,{0,0,0} },
	{ 0U,0,0,0,0,0,0,0,0,0,{0,0,0} }, { 0U,0,0,0,0,0,0,0,0,0,{0,0,0} },
	{ 0U,0,0,0,0,0,0,0,0,0,{0,0,0} }, { 0U,0,0,0,0,0,0,0,0,0,{0,0,0} },
	{ 0U,0,0,0,0,0,0,0,0,0,{0,0,0} }, { 0U,0,0,0,0,0,0,0,0,0,{0,0,0} },
	{ 0U,0,0,0,0,0,0,0,0,0,{0,0,0} }, { 0U,0,0,0,0,0,0,0,0,0,{0,0,0} },
	{ 0U,0,0,0,0,0,0,0,0,0,{0,0,0} }, { 0U,0,0,0,0,0,0,0,0,0,{0,0,0} },
	{ 0U,0,0,0,0,0,0,0,0,0,{0,0,0} }, { 0U,0,0,0,0,0,0,0,0,0,{0,0,0} }
};
evntlog_t	eventlog[16] = 		/* イベントログ */
{
	{ 0U,0,0,0,0,0,0,0U,0U,0U }, { 0U,0,0,0,0,0,0,0U,0U,0U },
	{ 0U,0,0,0,0,0,0,0U,0U,0U }, { 0U,0,0,0,0,0,0,0U,0U,0U },
	{ 0U,0,0,0,0,0,0,0U,0U,0U }, { 0U,0,0,0,0,0,0,0U,0U,0U },
	{ 0U,0,0,0,0,0,0,0U,0U,0U }, { 0U,0,0,0,0,0,0,0U,0U,0U },
	{ 0U,0,0,0,0,0,0,0U,0U,0U }, { 0U,0,0,0,0,0,0,0U,0U,0U },
	{ 0U,0,0,0,0,0,0,0U,0U,0U }, { 0U,0,0,0,0,0,0,0U,0U,0U },
	{ 0U,0,0,0,0,0,0,0U,0U,0U }, { 0U,0,0,0,0,0,0,0U,0U,0U },
	{ 0U,0,0,0,0,0,0,0U,0U,0U }, { 0U,0,0,0,0,0,0,0U,0U,0U }
};

/* ----- 割り込み内で変更される変数 ----- */
volatile int	utc_msec = 0;		/* 1秒計時用カウンタ */
volatile time_t	utc_sec = 0;		/* 時刻(1970/1/1からの秒数) *//* debug:1435708790 */
volatile swbool	timeflg = off;		/* 時刻更新したか */
volatile byte	filtercnt = PPS_FILTER;	/* 入力チャタリング防止(カウント) */
volatile byte	sync_sts = SYNC_INI;	/* GPSにおける同期状態 */
volatile swbool	cal_updated = off;	/* 時刻が補正されたか */
volatile byte	time_sts = TIME_UNADJUSTED;	/* 時刻ステータス */
volatile word	gps_ndcnt = 0U;		/* GPS時刻なしカウント */
volatile word	gps_uscnt = 0U;		/* GPS非同期カウント */
volatile struct tm	time_tmp = { 0,0,9,1,0,70,0,0,0 };	/* GPSモード用一時記憶 */
volatile time_t	sec_tmp = 0L;		/* 時刻 */
volatile byte	pps_out = 0;		/* PPS出力用カウント */
volatile byte	liflg = LI_NONE;
volatile byte	ppscnt = 0;		/* PPS受け取り中(汎用GPS) */
volatile byte	adjmode = ADJ_NTP;		/* 動作モード */
/* end of inival.c */
