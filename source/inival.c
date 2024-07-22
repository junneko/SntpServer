/**
*	KDK-SNTP-SERVER		�O���[�o���錾�Ə�����
*	Copyright (c)Junnichi Tomaru
*/

/* ----- �O���[�o�� ----- */
/* --- ��� --- */
byte	disppage = DISPMIN;		/* �\������� */
byte	pmin = DISPMIN;			/* �\���ŏ��y�[�W */
byte	pmax = DISPMAX;			/* �\���ō��y�[�W */
byte	gpstype = GPS_MTK3339;		/* GPS���W���[�� 1 */
byte	nmeamode = NMEA_GPRMC;		/* �̗p����NMEA�R�}���h */
byte	baudrate = BAUD9600;		/* �ʐM�{�[���[�g */
word	opemode = 0U;			/* ���샂�[�h */
word	opests = 0U;			/* ����X�e�[�^�X */

word	gps_ndtimeout = 0U;		/* �f�[�^���M�^�C���A�E�g */
word	gps_ustimeout = 0U;		/* ������ԃ^�C���A�E�g */

char	nmea_data[42] = 		/* NMEA�o�͗p */
{
	'$','G','P','R','M','C',',',' ',' ',' ',' ',' ',' ','.',' ',' ',
	' ',',',' ',',',',',',',',',',',',',',',' ',' ',' ',' ',' ',' ',
	',',',',',','N','*',' ',' ',0x0d, 0x0a, 0x00
};

/* --- �t���O --- */
swbool	lcden = on;			/* �t������ */
swbool	redrawflg = off;		/* ��ʏ������� */
swbool	ext7segen = off;		/* 7�Z�O���W���[������ */
swbool	tim7segen = off;		/* 7�Z�O�^�C�} */
swbool	ppsedge = on;			/* PPS�G�b�W(�㏸) */
swbool	nmea_adj = off;			/* NMEA�f�[�^�̕␳ */
swbool	nmea_en = off;			/* NMEA�f�[�^�o�� */
swbool	rebootflg = off;		/* �d�������ȊO�̃��Z�b�g���t���O */
swbool	inical = on;			/* ���߂Ă̕␳ */

/* ----- �����֌W ----- */
struct tm	world_time = { 0,0,9,1,0,70,0,0,0 };	/* ���E����(���n����) */
struct tm	utc_time = { 0,0,0,1,0,70,0,0,0 };	/* UTC���� */
struct tm	ocal_time = { 0,0,9,1,0,70,0,0,0 };	/* �O��␳���� */
struct tm	obcast_time = { 0,0,9,1,0,70,0,0,0 };	/* �O��z�M���� */

long	timeoffset = 32400L;		/* UTC����̃I�t�Z�b�g(�b) */
long	opetime = 0L;			/* �^�]���� */
byte	opecnt = 0;			/* ���v���p */
byte	timezone = 0;			/* �^�C���]�[��(JST) */
byte	adjustseq = ADJUSTSEQ_NONE;	/* �����v���V�[�P���X(NTP,GPS����) */
swbool	synchronized = off;		/* �����������Ă��� */
swbool	chkskip = off;			/* ���ԕ␳���`�F�b�N��� */
word	maxpoll = CYCLE_MAX;		/* �ő�17.07min(1024sec) */
int	hosei = 0;			/* �␳��(ms) ver2.20.00 */
byte	calmode = 0;			/* �Z�����[�h ver2.20.00 */

/* --- �^�C�}�֌W 8byte --- */
timer_st	on_time = { 0, 0, 0, 0 };	/* �^�C�}�ɂ��ON���� */
timer_st	off_time = { 0, 0, 0, 0 };	/* �^�C�}�ɂ��OFF���� */

/* ----- ���O ----- */
cal_t	callog[16] = 			/* �␳���O */
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
evntlog_t	eventlog[16] = 		/* �C�x���g���O */
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

/* ----- ���荞�ݓ��ŕύX�����ϐ� ----- */
volatile int	utc_msec = 0;		/* 1�b�v���p�J�E���^ */
volatile time_t	utc_sec = 0;		/* ����(1970/1/1����̕b��) *//* debug:1435708790 */
volatile swbool	timeflg = off;		/* �����X�V������ */
volatile byte	filtercnt = PPS_FILTER;	/* ���̓`���^�����O�h�~(�J�E���g) */
volatile byte	sync_sts = SYNC_INI;	/* GPS�ɂ����铯����� */
volatile swbool	cal_updated = off;	/* �������␳���ꂽ�� */
volatile byte	time_sts = TIME_UNADJUSTED;	/* �����X�e�[�^�X */
volatile word	gps_ndcnt = 0U;		/* GPS�����Ȃ��J�E���g */
volatile word	gps_uscnt = 0U;		/* GPS�񓯊��J�E���g */
volatile struct tm	time_tmp = { 0,0,9,1,0,70,0,0,0 };	/* GPS���[�h�p�ꎞ�L�� */
volatile time_t	sec_tmp = 0L;		/* ���� */
volatile byte	pps_out = 0;		/* PPS�o�͗p�J�E���g */
volatile byte	liflg = LI_NONE;
volatile byte	ppscnt = 0;		/* PPS�󂯎�蒆(�ėpGPS) */
volatile byte	adjmode = ADJ_NTP;		/* ���샂�[�h */
/* end of inival.c */
