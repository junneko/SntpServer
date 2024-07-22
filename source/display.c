/**
*	AVR版簡易SNTPサーバ	画面表示
*	Copyright (c)Junnichi Tomaru
*/
#include	"include/avrntp.h"

/* ----- 曜日 ----- */
const prog_char	wday[] = { "SUN\0MON\0TUE\0WED\0THU\0FRI\0SAT" };
/* ----- 補正ステータス ----- */
const prog_char	adj[] = { 'A', 'I', 'U', 'T', 'U', 'P', 'V', 'N' };

/* ----- 1行目表示 ----- */
const prog_char	msg0_00[] = "KDB-SNTP SERVER";
const prog_char	msg0_01[] = "ENC28J60 REV:";
const prog_char	msg0_02[] = "INITIALIZING...";
const prog_char	msg0_03[] = "INITIALIZED";
const prog_char	msg0_04[] = "KEYINPUT ILLEGAL";
const prog_char	msg0_05[] = "LCD DISABLED.";
const prog_char	msg0_06[] = "CAL REM:";
const prog_char	msg0_07[] = "DHCP DISABLED";
const prog_char	msg0_08[] = "DHCP ENABLED";
const prog_char	msg0_09[] = "NTP RX ENABLED";
const prog_char	msg0_10[] = "NTP RX DISABLED";
const prog_char	msg0_11[] = "BROADCAST LOG";
const prog_char	msg0_12[] = "OPERATING TIME";
const prog_char	msg0_13[] = "GPS MODE READY";
const prog_char	msg0_14[] = "";
const prog_char	msg0_15[] = "ENC28J60 INITERR";
const prog_char	msg0_16[] = "MTK3339 INITIAL";
const prog_char *msg0[] PROGMEM = {
	 msg0_00, msg0_01, msg0_02, msg0_03, msg0_04,
	 msg0_05, msg0_06, msg0_07, msg0_08, msg0_09,
	 msg0_10, msg0_11, msg0_12, msg0_13, msg0_14,
	 msg0_15, msg0_16
};

/* ----- 2行目表示 ----- */
const prog_char	msg1_00[] = "Version";
const prog_char	msg1_01[] = "PLEASE CHECK KEY";
const prog_char	msg1_02[] = "PLEASE RESET";
const prog_char	msg1_03[] = "MAC:";
const prog_char	msg1_04[] = "DHCPCNT:";
const prog_char	msg1_05[] = "NBC REM:";
const prog_char	msg1_06[] = "WAIT for TIME RX";
const prog_char	msg1_07[] = "";
const prog_char	msg1_08[] = "CHECK CIRCUIT";
const prog_char	msg1_09[] = "PLEASE WAIT";
const prog_char *msg1[] PROGMEM = {
	msg1_00, msg1_01, msg1_02, msg1_03, msg1_04,
	msg1_05, msg1_06, msg1_07, msg1_08, msg1_09
};

/* ----- DHCPメッセージ表示 ----- */
const prog_char	dmsg0[] = "EXPIRED ";
const prog_char	dmsg1[] = " REBIND ";
const prog_char	dmsg2[] = "RENEWAL ";
const prog_char	dmsg3[] = "INFINITY";
const prog_char *dmsg[] PROGMEM = { dmsg0, dmsg1, dmsg2, dmsg3 };

/* ----- タイムゾーン ----- */
const prog_char	tzmsg0[] = "JST";
const prog_char	tzmsg1[] = "KST";
const prog_char	tzmsg2[] = "CCT";
const prog_char	tzmsg3[] = "UTC";
const prog_char	tzmsg4[] = "PST";
const prog_char	tzmsg5[] = "HDT";
const prog_char *tzmsg[] PROGMEM = { tzmsg0, tzmsg1, tzmsg2, tzmsg3, tzmsg4, tzmsg5 };

/* ----- イベント ----- */
const prog_char	dspevnt00[] = "                ";
const prog_char	dspevnt01[] = "POWER ON";
const prog_char	dspevnt02[] = "EXTERNAL RESET";
const prog_char	dspevnt03[] = "BROWN OUT RESET";
const prog_char	dspevnt04[] = "WATCHDOG RESET";
const prog_char	dspevnt05[] = "ENC RCV ERROR";
const prog_char	dspevnt06[] = "ARP REQ TIMEOUT";
const prog_char	dspevnt07[] = "ICMP SUM ERROR";
const prog_char	dspevnt08[] = "TCP SUM ERROR";
const prog_char	dspevnt09[] = "UDP SUM ERROR";
const prog_char	dspevnt10[] = "ICMP MESSAGE RCV";
const prog_char	dspevnt11[] = "DHCP RECEIVE NAK";
const prog_char	dspevnt12[] = "DHCP RENEWAL";
const prog_char	dspevnt13[] = "DHCP REBIND";
const prog_char	dspevnt14[] = "DHCP EXPIRED";
const prog_char	dspevnt15[] = "DHCP PCT ERROR";
const prog_char	dspevnt16[] = "NBT RCV ERROR";
const prog_char	dspevnt17[] = "NBT FORMAT ERROR";
const prog_char	dspevnt18[] = "NBT PACKET ERROR";
const prog_char	dspevnt19[] = "NBT TIMEOUT(No1)";
const prog_char	dspevnt20[] = "NBT TIMEOUT(No2)";
const prog_char	dspevnt21[] = "NBT TIMEOUT(No3)";
const prog_char	dspevnt22[] = "NBT TIMEOUT(No4)";
const prog_char	dspevnt23[] = "DNS TIMEOUT(No1)";
const prog_char	dspevnt24[] = "DNS TIMEOUT(No2)";
const prog_char	dspevnt25[] = "DNS TIMEOUT(No3)";
const prog_char	dspevnt26[] = "DNS TIMEOUT(No4)";
const prog_char	dspevnt27[] = "NTP UNSYNCRONIZE";
const prog_char	dspevnt28[] = "NTP TIMEOUT(No1)";
const prog_char	dspevnt29[] = "NTP TIMEOUT(No2)";
const prog_char	dspevnt30[] = "NTP TIMEOUT(No3)";
const prog_char	dspevnt31[] = "NTP TIMEOUT(No4)";
const prog_char	dspevnt32[] = "NTP ILLEGAL REP.";
const prog_char	dspevnt33[] = "NTP LEAP ADJUST";
const prog_char	dspevnt34[] = "TIME ILLEGAL";
const prog_char	dspevnt35[] = "GPS FORMAT ERROR";
const prog_char	dspevnt36[] = "NMEA CHKSUM ERR.";
const prog_char	dspevnt37[] = "TIME DATA RCVERR";
const prog_char	dspevnt38[] = "UNSYNC TIMEUP";
const prog_char	dspevnt39[] = "MTK3339 INITERR";
const prog_char	*dspevnt[] PROGMEM = {
	dspevnt00, dspevnt01, dspevnt02, dspevnt03, dspevnt04,
	dspevnt05, dspevnt06, dspevnt07, dspevnt08, dspevnt09,
	dspevnt10, dspevnt11, dspevnt12, dspevnt13, dspevnt14,
	dspevnt15, dspevnt16, dspevnt17, dspevnt18, dspevnt19,
	dspevnt20, dspevnt21, dspevnt22, dspevnt23, dspevnt24,
	dspevnt25, dspevnt26, dspevnt27, dspevnt28, dspevnt29,
	dspevnt30, dspevnt31, dspevnt32, dspevnt33, dspevnt34,
	dspevnt35, dspevnt36, dspevnt37, dspevnt38, dspevnt39
};

const prog_char	no_logtime[] = "--/-- --:--:--";

/**
*	日付を表示する
*	 in	表示行
*		日付構造体
*	out	なし
*/
static void	disp_date( byte y, date_st *t )
{
	char	buf[8];

	ustoaz( t->year, buf );	/* 年 */
	lcd_print( 0, y, buf + 1 );
	lcd_putch( '/' );
	uctoaz( t->mon, buf );	/* 月 */
	lcd_putstr( buf + 1 );
	lcd_putch( '/' );
	uctoaz( t->day, buf );	/* 日 */
	lcd_putstr( buf + 1 );
}


/**
*	時刻を表示する
*	 in	表示行
*		日付構造体
*	out	なし
*/
void	disp_time( byte x, byte y, time_st *t )
{
	char	buf[4];

	uctoaz( t->hour, buf );	/* 時 */
	lcd_print( x, y, buf + 1 );
	lcd_putch( ':' );
	uctoaz( t->min, buf );	/* 分 */
	lcd_putstr( buf + 1 );
	lcd_putch( ':' );
	uctoaz( t->sec, buf );	/* 秒 */
	lcd_putstr( buf + 1 );
}


/**
*	現在時間表示
*	 in	なし
*	out	なし
*/
void	disp_nowtime( void )
{
	char	sts, mode;
	char	buf[4], buf2[4];
	struct tm	t;
	date_st	dt;
	time_st	tt;

	/* ---------- 1行目 ---------- */
	strcpy_P( buf2, (prog_char *)pgm_read_word( tzmsg + timezone ));
	t = world_time;
	t.tm_year += 1900U;
	t.tm_mon++;
	dt.year = t.tm_year;	/* 年 */
	dt.mon = t.tm_mon;	/* 月 */
	dt.day = t.tm_mday;	/* 日 */
	disp_date( 0, &dt );	/* 日付表示 */
	lcd_putch( ' ' );
	strcpy_P( buf, &wday[t.tm_wday*4] );
	lcd_putstr( buf );	/* 曜日 */
	lcd_putch( ' ' );
	/* --- 補正モード --- */
	mode = adjmode & BYTE_MASK_U7;
	sts ='-';
	if( mode == GPSADJ_MODE ){
		if( gpstype == GPS_MTK3339 ){	/* MTK3339 */
			sts = 'M';
		}
		else{				/* 汎用GPS */
			sts = 'G';
		}
	}
	else if( mode == BCAST_MODE ){	/* ブロードキャスト受信待ち */
		sts = 'R';
	}
	else if( mode == NTPADJ_MODE ){
		if( lists == LI_ALARM ){	/* ver2.20.00 */
			sts = 'A';
		}
		else if( lists == LI_INC ){
			sts = 'I';
		}
		else if( lists == LI_DEC ){
			sts = 'D';
		}
		else{
			sts = srvpnt + '0';	/* NTPサーバ位置 */
		}
	}
	lcd_putch( sts );

	/* ---------- 2行目 ---------- */
	tt.hour = t.tm_hour;	/* 時刻 */
	tt.min = t.tm_min;
	tt.sec = t.tm_sec;
	disp_time( 0, 1, &tt );

	lcd_putch( ' ' );
	lcd_putstr( buf2 );	/* JST, UTC */
	lcd_putch( ' ' );
	if( mode == GPSADJ_MODE ){	/* GPS */
		if( nmeamode == NMEA_GPRMC ){	/* エッジ */
			lcd_putch( 'R' );
		}
		else if( nmeamode == NMEA_GPZDA ){
			lcd_putch( 'Z' );
		}
		else{
			lcd_putch( 'E' );	/* エラー */
		}
		if( ppsedge == on ){		/* 上昇エッジ */
			lcd_putch( 'R' );
		}
		else{
			lcd_putch( 'F' );
		}
	}
	else{				/* NTP */
		uctoaz( stratum, buf );
		lcd_putstr( buf + 1 );	/* 階級 */
	}
	lcd_putch( pgm_read_byte( adj + time_sts ));	/* 時刻状態 */
}


/**
*	１行目にメッセージ表示
*	 in	メッセージ番号
*	out	なし
*/
void	disp_message1( byte msg )
{
	lcd_printc( 0, 0, (prog_char *)pgm_read_word( msg0 + msg ));
}


/**
*	２行目にメッセージ表示
*	 in	メッセージ番号
*	out	なし
*/
void	disp_message2( byte msg )
{
	lcd_printc( 0, 1, (prog_char *)pgm_read_word( msg1 + msg ));
}


/**
*	時間無効表示
*	 in	表示行
*	out	なし
*/
void	disp_notime( byte y )
{
	lcd_printc( 8, y, PSTR( "--:--:--" ));
}


/**
*	DHCPメッセージ表示
*	 in	メッセージ番号
*	out	なし
*/
static void	disp_dhcpmsg( byte msg )
{
	lcd_printc( 8, 1, (prog_char *)pgm_read_word( dmsg + msg ));
}


/**
*	残り時間表示
*	 in	y: 行
*		time: 秒
*	out	なし
*/
void	disp_remtime( byte y, long time )
{
	time_st	tt;

	if(( time < 0L ) || ( time >= 360000L )){	/* 表示範囲超えている */
		lcd_printc( 8, y, PSTR( "**:**:**" ));
	}
	else{
		tt.hour = time / 3600;	/* 時 */
		time = time % 3600;
		tt.min = time / 60;	/* 分 */
		tt.sec = time % 60;	/* 秒 */
		disp_time( 8, y, &tt );
	}
}


/**
*	DHCPカウンタ表示
*	 in	なし
*	out	なし
*/
void	dhcpdisp( void )
{
	if( dhcp_mode == DHCP_DISCOVER ){	/* DISCOVERステート */
		disp_remtime( 1, ddcrem );
	}
	else if( dhcp_mode == DHCP_BOUND ){	/* IPアドレス借りてる */
		if( lease_time == LD_MAX ){	/* 無限リース */
			disp_dhcpmsg( 3 );
		}
		else{
			disp_remtime( 1, renewal_time );
		}
	}
	else if( dhcp_mode == DHCP_RENEWING ){	/* RENEWALステート */
		disp_dhcpmsg( 2 );
	}
	else if( dhcp_mode == DHCP_REBINDING ){	/* REBINDステート */
		disp_dhcpmsg( 1 );
	}
	else{	/* 無効等 */
		disp_notime( 1 );
	}
}


/**
*	イベントログ表示
*	 in	位置(0～15)
*	out	なし
*/
void	disp_eventlog( byte pnt )
{
	time_st	tt;
	evntlog_t	et;
	char	c, buf[16];

	lcd_cls( );
	if(( pnt >= 0 ) && ( pnt <= 8 )){	/* 1～9 */
		c = pnt + '1';
	}
	else{	/* 10～16 */
		c = pnt - 9;	/* CGRAM */
	}
	lcd_putcode( 15, 0, c );	/* 番号 */
	et = eventlog[pnt];
	if(( et.evnt >= EVNT_PWR_ON ) && ( et.evnt <= EVNT_WDT_RESET )){
		lcd_printc( 0, 0, (prog_char *)no_logtime );
	}
	else if(( et.evnt >= EVNT_ENC_RXRCVERR ) && ( et.evnt <= EVNT_TIME_ILLEGAL )){
		uctoaz( et.mon, buf );	/* 月 */
		lcd_print( 0, 0, buf + 1 );
		lcd_putch( '/' );
		uctoaz( et.day, buf );	/* 日 */
		lcd_putstr( buf + 1 );
		lcd_putch( ' ' );
		tt.hour = et.hour;
		tt.min = et.min;
		tt.sec = et.sec;
		disp_time( 6, 0, &tt );	/* 時分 */
	}
	else{
		lcd_printc( 0, 0, (prog_char *)no_logtime );
	}
	lcd_printc( 0, 1, (prog_char *)pgm_read_word( dspevnt + et.evnt ));
}


/**
*	補正・配信ログ表示
*	 in	位置(0～15)
*	out	なし
*/
void	disp_callog( byte pnt )
{
	time_st	t;
	cal_t	ct;
	char	buf[16];

	lcd_cls( );
	disp_message1( 11 );
	ct = callog[pnt];
	uctoaz( pnt + 1, buf );	/* 位置 */
	lcd_print( 14, 0, buf + 1 );
	lcd_locate( 0, 1 );	/* 2行目:時刻 */
	if(( ct.flg == LOG_BCRX ) || ( ct.flg == LOG_BCAST )){
		uctoaz( ct.mon, buf );
		lcd_putstr( buf + 1 );
		lcd_putch( '/' );
		uctoaz( ct.day, buf );
		lcd_putstr( buf + 1 );
		lcd_putch( ' ' );
		t.hour = ct.hour;
		t.min = ct.min;
		t.sec = ct.sec;
		disp_time( 6, 1, &t );
		lcd_putch( ' ' );
		if( ct.flg == LOG_BCAST ){	/* 配信 */
			lcd_putch( 'B' );
		}
		else if( ct.flg == LOG_BCRX ){	/* 受信 */
			lcd_putch( 'R' );
		}
	}
	else{
		lcd_printc( 0, 1, no_logtime );
	}
}


/**
*	運転時間表示
*	 in	分単位時間
*	out	なし
*/
void	disp_opetime( void )
{
	char	buf[16];
	word	wt;
	long	cnt;

	cnt = opetime;
	ltoaz( cnt / 60L, buf );
	lcd_print( 0, 1, buf + 5 );	/* 時 */
	wt = (word)( cnt % 60L );
	ustoaz( wt, buf );
	lcd_print( 10, 1, buf + 3 );	/* 分 */
}


/**
*	画面書き換え
*	 in	なし
*	out	なし
*/
void	redraw( void )
{
	char	buf[16];
	byte	i, j, page, flg;
	byte	*p;

	page = disppage;
	lcd_cls( );
	if( page == 0 ){
		disp_nowtime( );	/* 時刻表示 */
	}
	else if( page == 1 ){
		lcd_putcode( 0, 0, 'A' );	/* IPアドレス表示 */
		lcd_putstr( long2ipstr( myipaddr, buf ));
		lcd_putcode( 0, 1, 'M' );	/* ネットマスク */
		lcd_putstr( long2ipstr( netmask, buf ));
	}
	else if( page == 2 ){
		lcd_putcode( 0, 0, 'G' );	/* ゲートウェイ */
		lcd_putstr( long2ipstr( gateway, buf ));
		lcd_putcode( 0, 1, 'D' );	/* DNSサーバ */
		lcd_putstr( long2ipstr( dns_server, buf ));
	}
	else if( page == 3 ){		/* REV,MACアドレス表示 */
		disp_message1( 1 );
		lcd_putch(( revid / 10 ) + '0' );
		lcd_putch(( revid % 10 ) + '0' );
		disp_message2( 3 );		/* MACアドレス表示 */
		p = mac_address;
		for( i = 0, j = 4; i < 6; i++, j += 2, p++ ){
			lcd_print( j, 1, uctoahz( *p, buf ));
		}
	}
	else if( page == 4 ){		/* NETBIOS名,DHCP残り時間 */
		lcd_print( 0, 0, (char *)nbns_name );
		disp_message2( 4 );
		dhcpdisp( );		/* DHCP残り時間 */
	}
	else if( page == 5 ){		/* 次回補正までの残り時間 */
		disp_message1( 6 );
		flg = 0;
		
		if( adjmode == GPSADJ_MODE ){		/* GPS */
			flg = 1;
		}
		else if( adjmode & BCAST_MODE ){	/* ブロードキャスト受信 */
			flg = 1;
		}
		else if( adjustseq != ADJUSTSEQ_NONE ){	/* 補正シーケンス中 */
			flg = 1;
		}
		if( flg == 1 ){
			disp_notime( 0 );	/* 表示無効 */
		}
		else{
			disp_remtime( 0, calc_calremtime( ));	/* 校正残り時間 */
		}
		disp_message2( 5 );
		if( binterval != 0U ){
			if( synchronized == on ){
				disp_remtime( 1, calc_bcastremtime( ));	/* 配信残り時間 */
			}
			else{
				disp_notime( 1 );
			}
		}
		else{
			disp_notime( 1 );
		}
	}
	else if( page == 6 ){		/* 運転時間表示 */
		disp_message1( 12 );
		lcd_printc( 5, 1, PSTR( "HOUR   MIN." ));
		disp_opetime( );
	}
}


/* -------------------- 7SEG -------------------- */

/* ----- 7SEG DATA -----         0     1     2     3     4     5     6     7     8     9   OFF */
const prog_char	segdata[] = { 0xc0, 0xf9, 0xa4, 0xb0, 0x99, 0x92, 0x82, 0xf8, 0x80, 0x90, 0xff };
/* ----- 7SEG STS -----      0  A  1  i  2  U  3  t  4  G  5  P  6  V  7  n */
const prog_char	segadj[] = { 0x88, 0xFB, 0xC1, 0x87, 0xC2, 0x8C, 0xE3, 0xAB };

/**
*	数値を7SEG DATAに(unsigned char,ゼロサプレスしない)
*	 in	num:データ
*		buf:格納先バッファ
*	out	なし
*/
static void	*ucto7seg( byte num, byte *buf )
{
	byte	n, i, j, *p;

	p = buf;
	n = 100;
	for( i = 0; i < 3; i++ ){
		j = (byte)( num / n );
		num %= n;
		*p = pgm_read_byte( segdata + j );
		n /= 10;
		p++;
	}

	return	buf;
}


/**
*	数字をアスキー文字列に(unsigned short,ゼロサプレスしない)
*	 in	num:データ
*		buf:格納先文字列
*	out	なし
*/
static void	*usto7seg( word num, byte *buf )
{
	word	n;
	byte	i, j, *p;

	p = buf;
	n = 10000U;
	for( i = 0; i < 5; i++ ){
		j = (byte)( num / n );
		num %= n;
		*p = pgm_read_byte( segdata + j );
		n /= 10U;
		p++;
	}

	return	buf;
}


/**
*	7SEGに日付時刻表示
*	 in	時刻構造体ポインタ
*	out	なし
*	ビットは0で点灯 PGFEDCBA
*	ラッチはHで確定
*	下位から先に送る、日時を先にすることにより
*	日付時刻と時刻だけの２通り使い方ができる
*/
void	disp7seg( struct tm *time )
{
	byte	sts, mode, buf[8];

	sts = pgm_read_byte( segadj + time_sts );
	mode = 0xFF;
	if( adjmode == GPSADJ_MODE ){	/* GPS */
		BYTE_BIT5_OFF( mode );	/* 左上 */
	}
	else if( adjmode & NMEAOUT_MODE ){	/* GPSと排他 */
		BYTE_BIT1_OFF( mode );	/* 右上 */
	}
	if(( adjmode & BYTE_MASK_U7 ) == NTPADJ_MODE ){	/*  */
		BYTE_BIT4_OFF( mode );	/* 左下 */
	}
	if( adjmode & BCAST_MODE ){	/*  */
		BYTE_BIT2_OFF( mode );	/* 右下 */
	}
	LAT_NEGATE( );
	/* ----- 日付 ----- */
	ucto7seg( time->tm_mday, buf );		/* 日 */
	spitx( buf[2] );
	spitx( buf[1] );
	ucto7seg( time->tm_mon + 1, buf );	/* 月 */
	spitx( buf[2] & BYTE_MASK_L7 );
	spitx( buf[1] );
	usto7seg( time->tm_year + 1900U, buf );	/* 年 */
	spitx( buf[4] & BYTE_MASK_L7 );
	spitx( buf[3] );
	spitx( buf[2] );
	spitx( buf[1] );
	/* ----- ステータス ----- */
	spitx( sts );		/* ステータス */
	spitx( mode );		/* 動作モード */
	/* ----- 時刻 ----- */
	ucto7seg( time->tm_sec, buf );	/* 秒 */
	spitx( buf[2] );
	spitx( buf[1] );
	ucto7seg( time->tm_min, buf );	/* 分 */
	spitx( buf[2] & BYTE_MASK_L7 );
	spitx( buf[1] );
	ucto7seg( time->tm_hour, buf );	/* 時 */
	spitx( buf[2] & BYTE_MASK_L7 );
	spitx( buf[1] );

	LAT_ASSERT( );
}


/**
*	7セグ消灯
*/
void	dispoff7seg( void )
{
	byte	i;

	LAT_NEGATE( );
	for( i = 0; i < 16; i++ ){
		spitx( 0xff );
	}
	LAT_ASSERT( );
}


/* end of display.c */
