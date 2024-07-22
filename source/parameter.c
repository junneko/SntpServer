/**
*	parameter.c
*	パラメータ設定
*	Copyright (c)Junnichi Tomaru
*/
#include	"include/avrntp.h"

/**
*	一致する文字の位置を探す
*/
static char	serchchar( char c )
{
	if(( c >= '0' ) && ( c <= '9' )){
		return	c - '0';
	}
	else if(( c >= 'A' ) && ( c <= 'F' )){
		return	c - 'A' + 10;
	}
	else{
		return	0;
	}
}

/**
*	数字設定
*	 in	x	開始Ｘ座標
*		y	開始Ｙ座標
*		setbuf	設定バッファ
*		l	設定長さ
*		hex	on:16進 off:10進
*	out	on:設定された off:タイムアウト
*/
swbool	setstring( byte x, byte y, char *setbuf, byte l, swbool hex )
{
	byte	key, px, c, max;
	char	*pt;
	int	p, ptr;
	swbool	ret;

	p = c = 0;
	px = x;
	lcd_print( x, y, setbuf );	/* 初期表示 */
	*( setbuf + l ) = C_NULL;
	ptr = serchchar( *setbuf );	/* カーソル位置の文字検索 */
	_forever{			/* ENT押しっぱなし対策 */
		wdt_reset( );		/* WDTの更新 */
		if( BYTE_BIT3_CHK( PINB ) ){
			break;
		}
	}
	lcd_dispcursor( 1 );		/* カーソル表示 */
	ret = off;
	max = ( hex == on )? 16: 10;
	_forever{
		pt = setbuf + p;
		lcd_locate( px, y );
		if(( ptr >= 0 ) && ( ptr <= 9 )){
			c = ptr + '0';
		}
		else{
			c = ptr - 10 + 'A';
		}
		lcd_putch( c );
		lcd_curleft( );			/* 進んでしまうので戻す */
		key = key_input( );
		if( key == UP_KEY ){		/* 値を上げる */
			ptr++;
			if( ptr >= max ){
				ptr = 0;
			}
			if(( ptr >= 0 ) && ( ptr <= 9 )){
				c = ptr + '0';
			}
			else{
				c = ptr - 10 + 'A';
			}
			*pt = c;
		}
		else if( key == DOWN_KEY ){	/* 値を下げる */
			ptr--;
			if( ptr < 0 ){
				ptr = max - 1;
			}
			if(( ptr >= 0 ) && ( ptr <= 9 )){
				c = ptr + '0';
			}
			else{
				c = ptr - 10 + 'A';
			}
			*pt = c;
		}
		else if( key == RIGHT_KEY ){	/* カーソル右へ移動 */
			p++;
			px++;
			if( isalnum( *( setbuf + p ) ) == 0 ){	/* 英数字ではない */
				p++;
				px++;
			}
			if( p >= l ){		/* 設定長さ超えた */
				p = 0;
				px = x;
			}
			ptr = serchchar( *( setbuf + p ) );
		}
		else if( key == ENTER_KEY ){
			ret = on;
			break;
		}
		else if( key == KEY_TOUT ){
			break;
		}
	}
	lcd_dispcursor( 0 );

	return	ret;
}

/**
*	項目選択
*	 in	now: 現在位置
*		max: 項目数
*		key: 押されたキー
*	out	0-max:選択 255:ENTER
*/
byte	selectitem( byte now, byte max, byte *key )
{
	byte	pg;

	pg = now;
	*key = key_input( );
	if( *key == UP_KEY ){		/* SW2 */
		pg++;
		if( pg >= max ){
			pg = 0;
		}
	}
	else if( *key == DOWN_KEY ){	/* SW3 */
		if( pg == 0 ){
			pg = max - 1;
		}
		else{
			pg--;
		}
	}

	return	pg;
}

/* ---------- パラメータ設定 ---------- */

#define	PAGE	26	/* 全ページ数 */

/* ---------- 読み取り専用 ---------- */
/* ----- メニュー・サブメニュー ----- */
/*			      "                "*/
const prog_char	prmmenu00[] = "FIX IP ADDRESS";
const prog_char	prmmenu01[] = "FIX SUBNETMASK";
const prog_char	prmmenu02[] = "FIX DFLT GATEWAY";
const prog_char	prmmenu03[] = "FIX DNS SERVER";
const prog_char	prmmenu04[] = "DHCP ENABLE";
const prog_char	prmmenu05[] = "HTTP PORT(Web)";
const prog_char	prmmenu06[] = "ARP REQ TIMEOUT";
const prog_char	prmmenu07[] = "BCAST ADDRESS";
const prog_char	prmmenu08[] = "BCAST INTERVAL";
const prog_char	prmmenu09[] = "DISP TIME ZONE";
const prog_char	prmmenu10[] = "NTP REQ TIMEOUT";
const prog_char	prmmenu11[] = "ADJUST WIDTH";
const prog_char	prmmenu12[] = "NTP SLEW ";
const prog_char	prmmenu13[] = "GPS BAUDRATE";
const prog_char	prmmenu14[] = "GPS MODULE TYPE";
const prog_char	prmmenu15[] = "NMEA SENTENSE";
const prog_char	prmmenu16[] = "ADJUST PPS EDGE";
const prog_char	prmmenu17[] = "NMEA ADJUST SEC";
const prog_char	prmmenu18[] = "GPS NODATA TIMER";
const prog_char	prmmenu19[] = "GPS UNSYNC TIMER";
const prog_char	prmmenu20[] = "NTP MAXPOLL(2^n)";
const prog_char	prmmenu21[] = "7SEG DISP ENABLE";
const prog_char	prmmenu22[] = "7SEG DISP TIMER";
const prog_char	prmmenu23[] = "MAC ADDRESS";
const prog_char	prmmenu24[] = "ADJUST MODE";
const prog_char	prmmenu25[] = "QUIT TO MAIN";
const prog_char *prmmenu[] PROGMEM = {
	 prmmenu00, prmmenu01, prmmenu02, prmmenu03, prmmenu04,
	 prmmenu05, prmmenu06, prmmenu07, prmmenu08, prmmenu09,
	 prmmenu10, prmmenu11, prmmenu12, prmmenu13, prmmenu14,
	 prmmenu15, prmmenu16, prmmenu17, prmmenu18, prmmenu19,
	 prmmenu20, prmmenu21, prmmenu22, prmmenu23, prmmenu24,
	 prmmenu25
};

/* ---------- サブ関数 ---------- */

/**
*	メニュー表示
*	 in	ページ番号
*	out	なし
*/
static void	disp_menu( byte page )
{
	char	buf[4];

	lcd_cls( );
	lcd_printc( 0, 0, PSTR( "-- MENU --" ));
	lcd_printc( 0, 1, (char *)pgm_read_word( prmmenu + page ));
	uctoaz( page + 1, buf );
	lcd_print( 11, 0, buf + 1 );	/* NOWOAGE */
	lcd_putcode( 13, 0, '/' );
	uctoaz( PAGE, buf );
	lcd_putstr( buf + 1 );		/* MAXPAGE */
}

/**
*	サブメニュー表示
*	 in	メッセージ番号
*	out	なし
*/
static void	disp_submenu( byte msg )
{
	lcd_cls( );
	lcd_printc( 0, 0, (prog_char *)pgm_read_word( prmmenu + msg ));
}

/**
*	アドレス設定
*	 in	addr: 格納先
*	out	on:通常画面へ
*/
swbool	prm_setaddr( word addr )
{
	char	buf[16];
	dword	dw;

	EEP_READYWAIT( );	/* アクセス可能まで待つ */
	dw = eeprom_read_dword((uint32_t *)addr );
	long2ipstr( dw, buf );
	if( setstring( 1, 1, buf, 15, off ) == off ){	/* 編集タイムアウト */
		return	on;
	}
	if( ipstr2bin( buf, (dword *)&dw ) == TRUE ){
		EEP_READYWAIT( );	/* アクセス可能まで待つ */
		eeprom_update_dword((uint32_t *)addr, dw );
	}

	return	off;
}

/**
*	選択項目設定
*	 in	val: 設定するもの
*		max: アイテム数
*		ptr: 表示項目配列
*	out	on:通常画面へ
*/
swbool	prm_selitem( byte *val, byte max, prog_char *ptr )
{
	byte	itm, key;
	swbool	ret;

	itm = *val;
	for( ret = on; ; ){
		lcd_lcls( 1 );
		lcd_printc( 0, 1, (char *)pgm_read_word( ptr + itm ));	/* 項目 */
		itm = selectitem( itm, max, &key );
		if( key == KEY_TOUT ){
			break;
		}
		else if( key == ENTER_KEY ){	/* ENTER */
			*val = itm;
			ret = off;
			break;
		}
	}

	return	ret;
}

/* ---------- 設定関数 ---------- */

/**
*	IPアドレス設定
*	 in	なし
*	out	off:通常画面へ
*/
static swbool	prm_setipaddr( void )
{
	return	prm_setaddr( EEP_IPADDR );
}

/**
*	サブネットマスク設定
*	 in	なし
*	out	off:通常画面へ
*/
static swbool	prm_setmask( void )
{
	return	prm_setaddr( EEP_NETMASK );
}

/**
*	ゲートウェイ設定
*	 in	なし
*	out	off:通常画面へ
*/
static swbool	prm_setgateway( void )
{
	return	prm_setaddr( EEP_GATEWAY );
}

/**
*	DNSサーバ設定
*	 in	なし
*	out	off:通常画面へ
*/
static swbool	prm_setdnsserver( void )
{
	return	prm_setaddr( EEP_DNSP );
}

const prog_char	endis00[] = "DISABLE";		/* 無効 */
const prog_char	endis01[] = "ENABLE";		/* 有効 */
const prog_char *endis[] PROGMEM = { endis00, endis01 };

/**
*	DHCP使用設定
*	 in	なし
*	out	on:通常画面へ off:設定メニューへ
*/
static swbool	prm_setdhcpuse( void )
{
	byte	pg, key;
	swbool	ret;
	word	wtmp;

	disp_submenu( 4 );
	EEP_READYWAIT( );			/* アクセス可能まで待つ */
	wtmp = eeprom_read_word( EEP_DHCP );
	pg = ( WORD_BIT15_CHK( wtmp ) == 0U )? 0: 1;	/* 0:DISABLE 1:ENABLE */
	lcd_printc( 0, 1, (char *)pgm_read_word( endis + pg ));	/* 項目 */
	for( ret = on; ; ){
		pg = selectitem( pg, 2, &key );
		if( key == KEY_TOUT ){
			break;
		}
		else if( key == ENTER_KEY ){	/* ENTER */
			if( pg == 0 ){		/* DHCP DISABLE */
				dhcp_mode = DHCP_ABORT;
				myipaddr = eep_getipaddr( EEP_IPADDR, IPADDR );		/* IPアドレス設定 */
				netmask = eep_getipaddr( EEP_NETMASK, NETMASK );	/* ネットマスク設定 */
				gateway = eep_getipaddr( EEP_GATEWAY, GATEWAY );	/* デフォルトゲートウェイ設定 */
				dns_server = eep_getipaddr( EEP_DNSP, DNSPSRV );	/* DNSサーバ */
				WORD_BIT11_OFF( opemode );	/* DHCP OFF */
				WORD_BIT15_OFF( wtmp );		/* DHCP OFF */
			}
			else{			/* DHCP ENABLE */
				dhcp_mode = DHCP_INIT;
				dinterval = 60U;
				myipaddr = netmask = 0;
				gateway = dns_server = 0;
				WORD_BIT11_ON( opemode );	/* DHCP ON */
				WORD_BIT15_ON( wtmp );		/* DHCP ON */
			}
			EEP_READYWAIT( );	/* アクセス可能まで待つ */
			eeprom_update_word( EEP_DHCP, wtmp );
			ret = off;
			break;
		}
		lcd_lcls( 1 );
		lcd_printc( 0, 1, (char *)pgm_read_word( endis + pg ));	/* 項目 */
	}

	return	ret;
}

/**
*	HTTPポート番号設定
*	 in	なし
*	out	on:通常画面へ
*/
static swbool	prm_sethttpport( void )
{
	char	buf[8];

	lcd_printc( 3, 1, PSTR( "PORT:     " ));
	lcd_print( 8, 1, ustoaz( http_port, buf ));
	if( setstring( 8, 1, buf, 5, off ) == off ){	/* 編集タイムアウト */
		return	on;
	}
	http_port = _atoi( buf );
	EEP_READYWAIT( );	/* アクセス可能まで待つ */
	eeprom_update_word((uint16_t *)EEP_HTTP_PORT, http_port );

	return	off;
}

/**
*	ARP設定
*	 in	なし
*	out	on:通常画面へ
*/
static swbool	prm_setarptimeout( void )
{
	char	buf[8];

	lcd_printc( 1, 1, PSTR( "TIMEOUT:     ms" ));
	lcd_print( 9, 1, ustoaz( arp_reqtimeout, buf ));
	if( setstring( 9, 1, buf, 5, off ) == off ){	/* 編集タイムアウト */
		return	on;
	}
	arp_reqtimeout = _atoi( buf );
	EEP_READYWAIT( );	/* アクセス可能まで待つ */
	eeprom_update_word((uint16_t *)EEP_ARPREQTOUT, arp_reqtimeout );

	return	off;
}

/**
*	時刻配信設定
*	 in	なし
*	out	off:通常画面へ
*/
static swbool	prm_setbroadcast( void )
{
	return	prm_setaddr( EEP_NTPBCAST );
}

/**
*	時刻配信間隔設定
*	 in	なし
*	out	on:通常画面へ
*/
static swbool	prm_setbcinterval( void )
{
	char	buf[8];

	lcd_printc( 0, 1, PSTR( "INTERVAL:     s" ));
	lcd_print( 9, 1, ustoaz( binterval, buf ));
	if( setstring( 9, 1, buf, 5, off ) == off ){	/* 編集タイムアウト */
		return	on;
	}
	binterval = _atoi( buf );
	EEP_READYWAIT( );	/* アクセス可能まで待つ */
	eeprom_update_word((uint16_t *)EEP_NTPBITBL, binterval );

	return	off;
}

/* ----- TIME ZONE ----- */
const prog_char	tz00[] = "JST(UTC+9:00)";	/* Japan Std Time(日本標準時間) */
const prog_char	tz01[] = "KST(UTC+9:00)";	/* Korea Standard Time (韓国標準時間) */
const prog_char	tz02[] = "CCT(UTC+8:00)";	/* China Coastal Time(中国湾岸時間) */
const prog_char	tz03[] = "UTC(UTC 0:00)";	/* 世界標準時 */
const prog_char	tz04[] = "PST(UTC-8:00)";	/* Pacific Std Time(アメリカ太平洋標準時間) */
const prog_char	tz05[] = "HDT(UTC-9:00)";	/* Hawaii/Alaska Daylight Time(ハワイ/アラスカ夏時間) */
const prog_char *tz[] PROGMEM = { tz00, tz01, tz02, tz03, tz04, tz05 };
const prog_int32_t	tzs[] = { 32400L, 32400L, 28800L, 0L, -28800L, -32400L };

/**
*	タイムゾーン設定
*	 in	なし
*	out	on:通常画面へ off:設定メニューへ
*/
static swbool	prm_settimezone( void )
{
	byte	itm, key;
	swbool	ret;

	itm = timezone;
	for( ret = on; ; ){
		lcd_lcls( 1 );
		lcd_printc( 0, 1, (char *)pgm_read_word( tz + itm ));	/* 項目 */
		itm = selectitem( itm, 6, &key );
		if( key == KEY_TOUT ){
			break;
		}
		else if( key == ENTER_KEY ){	/* ENTER */
			timezone = itm;
			timeoffset = (int32_t)pgm_read_dword( tzs + itm );	/* 時間オフセット */
			EEP_READYWAIT( );	/* アクセス可能まで待つ */
			eeprom_update_word( EEP_TIMEZONE, timezone );
			ret = off;
			break;
		}
	}

	return	ret;
}

/**
*	NTPタイムアウト設定
*	 in	なし
*	out	on:通常画面へ
*/
static swbool	prm_setntptout( void )
{
	char	buf[8];

	lcd_printc( 1, 1, PSTR( "TIMEOUT:     ms" ));
	lcd_print( 9, 1, ustoaz( ntptout, buf ));
	if( setstring( 9, 1, buf, 5, off ) == off ){	/* 編集タイムアウト */
		return on;
	}
	ntptout = _atoi( buf );
	EEP_READYWAIT( );	/* アクセス可能まで待つ */
	eeprom_update_word((uint16_t *)EEP_NTPTOUT, ntptout );

	return	off;
}

/**
*	時刻補正幅設定
*	 in	なし
*	out	on:通常画面へ
*/
static swbool	prm_setntpwidth( void )
{
	char	buf[8];

	lcd_printc( 1, 1, PSTR( "WIDTH:     sec" ));
	lcd_print( 7, 1, ustoaz( timewidth, buf ));
	if( setstring( 7, 1, buf, 5, off ) == off ){	/* 編集タイムアウト */
		return on;
	}
	timewidth = _atoi( buf );
	EEP_READYWAIT( );	/* アクセス可能まで待つ */
	eeprom_update_word((uint16_t *)EEP_ADJWIDTH, timewidth );

	return	off;
}

/**
*	NTP SLEW補正幅設定
*	 in	なし
*	out	on:通常画面へ
*/
static swbool	prm_setslewwidth( void )
{
	char	buf[8];
	word	tmp;

	lcd_printc( 1, 1, PSTR( "WIDTH:     msec" ));
	lcd_print( 7, 1, ustoaz( slew_width, buf ));
	if( setstring( 7, 1, buf, 5, off ) == off ){	/* 編集タイムアウト */
		return on;
	}
	tmp = _atoi( buf );
	if( tmp < 32768U ){
		slew_width = (int)tmp;
		EEP_READYWAIT( );	/* アクセス可能まで待つ */
		eeprom_update_word((uint16_t *)EEP_NTPSLEW, slew_width );
	}

	return	off;
}

/* ----- BAUD RATE ----- */
const prog_char	br00[] = " 1200bps";
const prog_char	br01[] = " 2400bps";
const prog_char	br02[] = " 4800bps";
const prog_char	br03[] = " 9600bps";
const prog_char	br04[] = "19200bps";
const prog_char	br05[] = "38400bps";
const prog_char	br06[] = "57600bps";
const prog_char *br[] PROGMEM = { br00, br01, br02, br03, br04, br05, br06 };

/**
*	ボーレート選択(再起動後有効)
*	 in	なし
*	out	on:通常画面へ
*/
static swbool	prm_setbaudrate( void )
{
	byte	itm, key;
	swbool	ret;

	itm = baudrate;
	for( ret = on; ; ){
		lcd_lcls( 1 );
		lcd_printc( 0, 1, (char *)pgm_read_word( br + itm ));	/* 項目 */
		itm = selectitem( itm, 7, &key );
		if( key == KEY_TOUT ){
			break;
		}
		else if( key == ENTER_KEY ){	/* ENTER */
			baudrate = itm;
			EEP_READYWAIT( );	/* アクセス可能まで待つ */
			eeprom_update_word( EEP_BAUD, baudrate );
			ret = off;
			break;
		}
	}

	return	ret;
}

/* ----- GPS MOJULE ----- */
const prog_char	gm00[] = "MTK3339 MODULE";
const prog_char	gm01[] = "UNIVERSAL GPS";
const prog_char *gm[] PROGMEM = { gm00, gm01 };

/**
*	GPSモジュール設定
*	 in	なし
*	out	on:通常画面へ
*/
static swbool	prm_setgpstype( void )
{
	ui_t	tmp;
	byte	itm, key;
	swbool	ret;

	itm = gpstype;
	for( ret = on; ; ){
		lcd_lcls( 1 );
		lcd_printc( 0, 1, (char *)pgm_read_word( gm + itm ));	/* 項目 */
		itm = selectitem( itm, 2, &key );
		if( key == KEY_TOUT ){		/* タイムアウト */
			break;
		}
		else if( key == ENTER_KEY ){	/* ENTER */
			gpstype = itm;
			EEP_READYWAIT( );	/* アクセス可能まで待つ */
			tmp.data = eeprom_read_word( EEP_NMEA );
			tmp.bytes.hi = itm;	/* 上位が設定 */
			EEP_READYWAIT( );	/* アクセス可能まで待つ */
			eeprom_update_word( EEP_NMEA, tmp.data );
			ret = off;
			break;
		}
	}

	return	ret;
}

/* ----- NMEA FORMAT ----- */
const prog_char	nmea00[] = "$**RMC(UNIV.)";
const prog_char	nmea01[] = "$**ZDA(UNIV.)";
const prog_char *nmea[] PROGMEM = { nmea00, nmea01 };

/**
*	採用するNMEAフォーマット
*	 in	なし
*	out	on:通常画面へ
*/
static swbool	prm_selnmea( void )
{
	ui_t	tmp;
	byte	itm, key;
	swbool	ret;

	itm = nmeamode;
	for( ret = on; ; ){
		lcd_lcls( 1 );
		lcd_printc( 0, 1, (char *)pgm_read_word( nmea + itm ));	/* 項目 */
		itm = selectitem( itm, 2, &key );
		if( key == KEY_TOUT ){		/* タイムアウト */
			break;
		}
		else if( key == ENTER_KEY ){	/* ENTER */
			nmeamode = itm;
			EEP_READYWAIT( );	/* アクセス可能まで待つ */
			tmp.data = eeprom_read_word( EEP_NMEA );
			tmp.bytes.lo = itm;	/* 下位が設定 */
			EEP_READYWAIT( );	/* アクセス可能まで待つ */
			eeprom_update_word( EEP_NMEA, tmp.data );
			ret = off;
			break;
		}
	}

	return	ret;
}

/* ----- PPS EDGE ----- */
const prog_char	eg00[] = "FALL EDGE";
const prog_char	eg01[] = "RISE EDGE";
const prog_char *eg[] PROGMEM = { eg00, eg01 };

/**
*	PPSエッジ設定
*	 in	なし
*	out	on:通常画面へ
*/
static swbool	prm_setppsedge( void )
{
	word	wtmp;
	byte	itm, key;
	swbool	ret;

	if( ppsedge == on ){
		itm = 1;
	}
	else{
		itm = 0;
	}
	for( ret = on; ; ){
		lcd_lcls( 1 );
		lcd_printc( 0, 1, (char *)pgm_read_word( eg + itm ));	/* 項目 */
		itm = selectitem( itm, 2, &key );
		if( key == KEY_TOUT ){		/* タイムアウト */
			break;
		}
		else if( key == ENTER_KEY ){	/* ENTER */
			EEP_READYWAIT( );	/* アクセス可能まで待つ */
			wtmp = eeprom_read_word( EEP_FLG );
			if( itm == 1 ){
				ppsedge = on;
				WORD_BIT08_ON( wtmp );
			}
			else{
				ppsedge = off;
				WORD_BIT08_OFF( wtmp );
			}
			EEP_READYWAIT( );	/* アクセス可能まで待つ */
			eeprom_update_word( EEP_FLG, wtmp );

			ret = off;
			break;
		}
	}

	return	ret;
}

/* ----- NMEA データ調整 ----- */
const prog_char	nd00[] = "+0 SECOND";
const prog_char	nd01[] = "+1 SECOND";
const prog_char *nd[] PROGMEM = { nd00, nd01 };

/**
*	NMEA データ調整設定
*	 in	なし
*	out	on:通常画面へ
*/
static swbool	prm_setnmea_adjust( void )
{
	word	wtmp;
	byte	itm, key;
	swbool	ret;

	if( nmea_adj == on ){
		itm = 1;
	}
	else{
		itm = 0;
	}
	for( ret = on; ; ){
		lcd_lcls( 1 );
		lcd_printc( 0, 1, (char *)pgm_read_word( nd + itm ));	/* 項目 */
		itm = selectitem( itm, 2, &key );
		if( key == KEY_TOUT ){		/* タイムアウト */
			break;
		}
		else if( key == ENTER_KEY ){	/* ENTER */
			EEP_READYWAIT( );	/* アクセス可能まで待つ */
			wtmp = eeprom_read_word( EEP_FLG );
			if( itm == 1 ){
				nmea_adj = on;
				WORD_BIT09_ON( wtmp );
			}
			else{
				nmea_adj = off;
				WORD_BIT09_OFF( wtmp );
			}
			EEP_READYWAIT( );	/* アクセス可能まで待つ */
			eeprom_update_word( EEP_FLG, wtmp );

			ret = off;
			break;
		}
	}

	return	ret;
}

/**
*	データ非受信タイムアウト設定
*	 in	なし
*	out	on:通常画面へ
*/
static swbool	prm_setndtout( void )
{
	char	buf[8];

	lcd_printc( 2, 1, PSTR( "TOUT:     sec" ));
	lcd_print( 7, 1, ustoaz( gps_ndtimeout, buf ));
	if( setstring( 7, 1, buf, 5, off ) == off ){	/* 編集タイムアウト */
		return on;
	}
	gps_ndtimeout = _atoi( buf );
	EEP_READYWAIT( );	/* アクセス可能まで待つ */
	eeprom_update_word( EEP_GPSNDTOUT, gps_ndtimeout );

	return	off;
}

/**
*	同期状態タイムアウト設定
*	 in	なし
*	out	on:通常画面へ
*/
static swbool	prm_setustout( void )
{
	char	buf[8];

	lcd_printc( 2, 1, PSTR( "TOUT:     sec" ));
	lcd_print( 7, 1, ustoaz( gps_ustimeout, buf ));
	if( setstring( 7, 1, buf, 5, off ) == off ){	/* 編集タイムアウト */
		return on;
	}
	gps_ustimeout = _atoi( buf );
	EEP_READYWAIT( );	/* アクセス可能まで待つ */
	eeprom_update_word( EEP_GPSUSTOUT, gps_ustimeout );

	return	off;
}

/**
*	最大ポーリング間隔設定
*	 in	なし
*	out	on:通常画面へ
*/
static swbool	prm_setmaxpoll( void )
{
	char	buf[8];
	byte	btmp;
	word	wtmp;

	btmp = log2x( maxpoll );
	lcd_printc( 2, 1, PSTR( "POLL:  (MAX14)" ));
	uctoaz( btmp, buf );
	lcd_print( 7, 1, buf + 1 );
	if( setstring( 7, 1, buf + 1, 2, off ) == off ){	/* 編集タイムアウト */
		return on;
	}
	btmp = (byte)_atoi( buf + 1 );
	if( btmp > 14 ){
		return on;
	}
	maxpoll = ( 1U << btmp );	/* 間隔求める */

	EEP_READYWAIT( );	/* アクセス可能まで待つ */
	wtmp = eeprom_read_word( EEP_NTPFLAG ) & WORD_MASK_L08;
	wtmp |= ((word)btmp << 8 );
	EEP_READYWAIT( );	/* アクセス可能まで待つ */
	eeprom_update_word( EEP_NTPFLAG, wtmp );

	return	off;
}

/* ----- ENABLE/DISABLE ----- */
const prog_char	en00[] = "DISABLE";
const prog_char	en01[] = "ENABLE";
const prog_char *en[] PROGMEM = { en00, en01 };

/**
*	７セグモジュール許可
*	 in	なし
*	out	on:通常画面へ
*/
static swbool	prm_set7segenable( void )
{
	word	wtmp;
	byte	itm, key;
	swbool	ret;

	if( ext7segen == on ){
		itm = 1;
	}
	else{
		itm = 0;
	}
	for( ret = on; ; ){
		lcd_lcls( 1 );
		lcd_printc( 0, 1, (char *)pgm_read_word( en + itm ));	/* 項目 */
		itm = selectitem( itm, 2, &key );
		if( key == KEY_TOUT ){		/* タイムアウト */
			break;
		}
		else if( key == ENTER_KEY ){	/* ENTER */
			EEP_READYWAIT( );	/* アクセス可能まで待つ */
			wtmp = eeprom_read_word( EEP_FLG );
			if( itm == 1 ){
				ext7segen = on;
				WORD_BIT00_ON( wtmp );
			}
			else{
				ext7segen = off;
				WORD_BIT00_OFF( wtmp );
			}
			EEP_READYWAIT( );	/* アクセス可能まで待つ */
			eeprom_update_word( EEP_FLG, wtmp );

			tim7segen = ( ext7segen == on )? on: off;
			ret = off;
			break;
		}
	}

	return	ret;
}

/**
*	MACアドレスセット
*	 in	なし
*	out	on:通常画面へ
*/
static swbool	prm_setmacaddr( void )
{
	char	dbuf[16], *bp;
	byte	i, j, *p;

	/* --- 表示 --- */
	p = mac_address;
	bp = dbuf;
	for( i = 0; i < 6; i++, p++, bp += 2 ){		/* BIN -> ASCII */
		uctoahz( *p, bp );
	}
	/* --- 編集 --- */
	if( setstring( 2, 1, dbuf, 12, on ) == off ){	/* 編集タイムアウト */
		return on;
	}
	/* --- 採用 --- */
	p = mac_address;
	for( i = j = 0; i < 6; i++, p++ ){
		*p = atox( dbuf + j );	/* ASCII -> BIN */
		j += 2;
	}
	EEP_READYWAIT( );		/* アクセス可能まで待つ */
	eeprom_update_block((byte *)mac_address, (byte *)EEP_MACADDRESS, PHYSICALADDR_SIZE );

	return off;
}

/* -----  ----- */
const prog_char	adj00[] = "NTP REQ.ADJUST";
const prog_char	adj01[] = "NTP REQ.NMEA OUT";
const prog_char	adj02[] = "NTP RCV.ADJUST";
const prog_char	adj03[] = "NTP RCV.NMEA OUT";
const prog_char	adj04[] = "GPS MODULE";
const prog_char *adjmd[] PROGMEM = { adj00, adj01, adj02, adj03, adj04 };

/**
*	調整モード
*	 in	なし
*	out	on:通常画面へ
*/
static swbool	prm_setadjmode( void )
{
	byte	itm, key;
	swbool	ret;

	itm = adjmode;
	for( ret = on; ; ){
		lcd_lcls( 1 );
		lcd_printc( 0, 1, (char *)pgm_read_word( adjmd + itm ));	/* 項目 */
		itm = selectitem( itm, 5, &key );
		if( key == KEY_TOUT ){		/* タイムアウト */
			break;
		}
		else if( key == ENTER_KEY ){	/* ENTER */
			adjmode = itm;
			EEP_READYWAIT( );	/* アクセス可能まで待つ */
			eeprom_update_word( EEP_ADJMODE, adjmode );
			ret = off;
			break;
		}
	}

	return	ret;
}

/**
*	パラメータ編集
*	 in	なし
*	out	なし
*/
void	parameter( void )
{
	const swbool (*pf[])() = {
		(void *)prm_setipaddr,		/* 00 IPアドレス */
		(void *)prm_setmask,		/* 01 サブネットマスク */
		(void *)prm_setgateway,		/* 02 ゲートウェイ */
		(void *)prm_setdnsserver,	/* 03 DNSサーバ */
		(void *)prm_setdhcpuse,		/* 04 DHCP使用 */
		(void *)prm_sethttpport,	/* 05 HTTPポート */
		(void *)prm_setarptimeout,	/* 06 ARPタイムアウト */
		(void *)prm_setbroadcast,	/* 07 配信先 */
		(void *)prm_setbcinterval,	/* 08 配信間隔 */
		(void *)prm_settimezone,	/* 09 タイムゾーン */
		(void *)prm_setntptout,		/* 10 NTPタイムアウト */
		(void *)prm_setntpwidth,	/* 11 補正幅 */
		(void *)prm_setslewwidth,	/* 12 slew判定幅 */
		(void *)prm_setbaudrate,	/* 13 ボーレート選択 */
		(void *)prm_setgpstype,		/* 14 GPSモジュール選択 */
		(void *)prm_selnmea,		/* 15 採用するNMEAフォーマット */
		(void *)prm_setppsedge,		/* 16 PPSエッジ */
		(void *)prm_setnmea_adjust,	/* 17 NMEAデータ調整 */
		(void *)prm_setndtout,		/* 18 データ非受信タイムアウト */
		(void *)prm_setustout,		/* 19 同期状態タイムアウト */
		(void *)prm_setmaxpoll,		/* 20 ポーリング間隔 */
		(void *)prm_set7segenable,	/* 21 7セグモジュール許可 */
		(void *)prm_setsegtimer,	/* 22 7セグ表示タイマ */
		(void *)prm_setmacaddr,		/* 23 MACアドレス */
		(void *)prm_setadjmode		/* 24 調整モード */
	};
	byte	pg, key;
	swbool	ex;

	disp_menu( 0 );		/* 初期メニュー */
	pg = 0;
	for( ex = off; ex == off; ){
		pg = selectitem( pg, PAGE, &key );
		if( key == KEY_TOUT ){		/* タイムアウト */
			break;
		}
		else if( key == ENTER_KEY ){	/* ENTER */
			if( pg == ( PAGE - 1 )){	/* EXIT */
				break;
			}
			/* --- 編集 --- */
			disp_submenu( pg );	/* 表示初期 */
			ex = pf[pg]( );		/* メニュー選択先 */
		}
		disp_menu( pg );
	}
}

/* end of parameter.c */
