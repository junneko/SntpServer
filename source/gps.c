/**
*	KDB-SNTP-SERVER	GPS処理
*	Copyright (c)Junnichi Tomaru
*/
#include	"include/avrntp.h"

/* ---------- GPS 共通ルーチン ---------- */

/**
*	文字列から日付時刻を取り出す(time_tmpに入る)
*	 in	buf: バッファ(時刻部先頭)(YYYYMMDDhhmmss)
*	out	TRUE:時刻正常 FALSE:不正時刻
*/
bool	asc2datetime( char *buf )
{
	int	i;

	time_tmp.tm_isdst = 0;
	*( buf + 14 ) = C_NULL;	/* 秒 */
	i = _atoi( buf + 12 );
	if( i > 61 ){
		return	FALSE;
	}
	time_tmp.tm_sec = i;

	*( buf + 12 ) = C_NULL;	/* 分 */
	i = _atoi( buf + 10 );
	if( i > 59 ){
		return	FALSE;
	}
	time_tmp.tm_min = i;

	*( buf + 10 ) = C_NULL;	/* 時 */
	i = _atoi( buf + 8 );
	if( i > 23 ){
		return	FALSE;
	}
	time_tmp.tm_hour = i;

	*( buf + 8 ) = C_NULL;	/* 日 */
	i = _atoi( buf + 6 );
	if(( i == 0 ) || ( i > 31 )){
		return	FALSE;
	}
	time_tmp.tm_mday = i;

	*( buf + 6 ) = C_NULL;	/* 月 */
	i = _atoi( buf + 4 ) - 1;
	if( i > 11 ){
		return	FALSE;
	}
	time_tmp.tm_mon = i;

	*( buf + 4 ) = C_NULL;	/* 年 */
	time_tmp.tm_year = _atoi( buf + 0 ) - 1900;

	time_tmp.tm_wday = 0;	/* 曜日 */
	time_tmp.tm_yday = 0;	/* 1月1日からの経過 */
	sec_tmp = mktime( (struct tm *)&time_tmp );
	if( sec_tmp >= 0L ){
		sec_tmp++;	/* 予告型にする */
		time_tmp.tm_isdst = 1;	/* アップデートフラグとして利用 */
	}

	return	TRUE;
}


/* ---------- GPS(MTK3339)ルーチン ---------- */
/**
*	MTK3339初期化処理
*	 in	なし
*	out	0:正常 0以外:エラーあり
*
* PMTK314
*	00: GLL		Geographic Position - Latitude longitude
*	01: RMC		Recomended Minimum Specific GNSS
*	02: VTG		Course Over Ground and Ground Speed
*	03: GGA		GPS Fix Data
*	04: GSA		GNSS DOPS and Active Satellites
*	05: GSV		GNSS Satellites in View
*	06: GRS		GNSS Range Residuals
*	07: GST		GNSS Pseudorange Erros Statistics
*	13: MALM	GPS almanac information
*	14: MEPH	GPS ephmeris information
*	15: MDGP	GPS differential correction information
*	16: MDBG	MTK debug information
*	17: ZDA		Time & Date
*	18: MCHN	GPS channel status
*	output freqency
*	0: Disabled
*	1: Output once every one position fix
*	2: Output once every two position fixes
*	3: Output once every three position fixes
*	4: Output once every four position fixes
*	5: Output once every five position fixes
*/
byte	mtk_init( void )
{
	word	wt;
	char	c;
	byte	ret, sts;

	ret = EVNT_NONE;
	sio_clear( );
	sio_setstrc( PSTR( "$PMTK314,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0*28\r\n" ));	/* RMC,ZDA */
	wt = getcount1ms( );
	for( sts = 0; ; ){
		wdt_reset( );		/* WDTの更新 */
		if( sts == 0 ){
			if( sio_getchar( &c ) == TRUE ){	/* 受信あり */
				if( c == '$' ){		/* 先頭文字$で受信開始 */
					sts = 1;
					bufp = 0;
				}
			}
		}
		else if( sts == 1 ){
			if( sio_getstr( ) == 1 ){	/* LFまで受信(& recv_en=off) */
				if( strncmp_P( rxbuffer, PSTR( "PMTK001,314,3" ), 13 ) == 0 ){
					break;
				}
				else{
					sts = 0;
				}
			}
		}
		if(( getcount1ms( ) - wt ) >= 2000U ){
			ret = EVNT_RCV_ERROR;
			break;
		}
	}

	return	ret;
}


/* ---------- GPS(汎用)ルーチン ---------- */

/**
*	NMEAのチェックサムをチェックする
*	 in	buf: チェックする文字列
*		sum: チェックサム格納先(文字列)
*	out	なし
*/
void	nmea_checksum( char *buf, char *sum )
{
	byte	tmp;
	char	*p;

	p = buf;
	tmp = *p;
	p++;
	_forever{	/* *までひたすたXOR */
		if( *p == '*' ){
			break;
		}
		else if( *p == '\n' ){
			break;
		}
		else if( *p == C_NULL ){
			break;
		}
		WORD_CDAT_XOR( tmp, *p );
		p++;
	}
	uctoahz( tmp, sum );
}


/**
*	$GPRMC処理
*	 in	なし
*	out	なし
*/
static byte	decode_gprmc( void )
{
	char	buf[16];	/* YYYYMMDDhhmmss */
	char	*p;
	byte	sts, ret;

	ret = EVNT_NONE;
	p = strchr( rxbuffer, ',' );	/* GPRMC */
	if( p == NULL ){
		return EVNT_FORMAT_ERROR;
	}
	strncpy( buf + 8, p + 1, 6 );	/* 1 時分秒 8～13 */
	p = strchr( p + 1, ',' );	/* 2 STATUS */
	if( p == NULL ){
		return EVNT_FORMAT_ERROR;
	}
	sts = *( p + 1 );		/* 取っておく */
	p = strchr( p + 1, ',' );	/* 3 LATITUDE */
	if( p == NULL ){
		return EVNT_FORMAT_ERROR;
	}
	p = strchr( p + 1, ',' );	/* 4 N/S */
	if( p == NULL ){
		return EVNT_FORMAT_ERROR;
	}
	p = strchr( p + 1, ',' );	/* 5 LONGITUDE */
	if( p == NULL ){
		return EVNT_FORMAT_ERROR;
	}
	p = strchr( p + 1, ',' );	/* 6 E/W */
	if( p == NULL ){
		return EVNT_FORMAT_ERROR;
	}
	p = strchr( p + 1, ',' );	/* 7 SPEED */
	if( p == NULL ){
		return EVNT_FORMAT_ERROR;
	}
	p = strchr( p + 1, ',' );	/* 8 COURCE */
	if( p == NULL ){
		return EVNT_FORMAT_ERROR;
	}
	p = strchr( p + 1, ',' );	/* 9 年月日 */
	if( p == NULL ){
		return EVNT_FORMAT_ERROR;
	}
	strncpy( buf + 6, p + 1, 2 );	/* 日 6,7 */
	strncpy( buf + 4, p + 3, 2 );	/* 月 4,5 */
	strncpy( buf + 2, p + 5, 2 );	/* 年 2,3 */
	if( *( p + 5 ) >= '7' ){	/* 1970～1999 */
		buf[0] = '1';
		buf[1] = '9';
	}
	else{		/* 2000～ */
		buf[0] = '2';
		buf[1] = '0';
	}
	if( asc2datetime( buf ) == FALSE ){	/* 時刻変換(time_tmp入れ) */
		return	EVNT_TIME_ILLEGAL;	/* 不正フォーマット */
	}

	if( sts == 'A' ){		/* データ有効 */
		if( ppscnt ){
			time_sts = TIME_PPSMODE;
		}
		else{
			time_sts = TIME_UTCMODE;
		}
		sync_sts = SYNC_OK;
	}
	else if( sts == 'V' ){		/* データ無効 */
		time_sts = TIME_NOVALID;
		unsync_seq( );
	}
	else{
		ret = EVNT_FORMAT_ERROR;
	}

	return	ret;
}


/**
*	$GPZDA処理
*	 in	なし
*	out	ステータス
*/
static byte	decode_gpzda( void )
{
	char	buf[16];	/* YYYYMMDDhhmmss */
	char	*p;
	byte	ret;

	ret = EVNT_NONE;
	time_sts = TIME_NOVALID;

	/* GPZDA */
	/* --- 1 時分秒 8～13 --- */
	p = strchr( rxbuffer, ',' );
	if( p == NULL ){
		unsync_seq( );
		return EVNT_FORMAT_ERROR;
	}
	strncpy( buf + 8, p + 1, 6 );	/* 1 時分秒 8～13 */

	/* --- 2 年月日 --- */
	p = strchr( p + 1, ',' );
	if( p == NULL ){
		unsync_seq( );
		return EVNT_FORMAT_ERROR;
	}
	strncpy( buf + 6, p + 1, 2 );	/* 日 6,7 */
	strncpy( buf + 4, p + 4, 2 );	/* 月 4,5 */
	strncpy( buf + 0, p + 7, 4 );	/* 年 0-3 */
	if( asc2datetime( buf ) == FALSE ){	/* 時刻変換(time_tmp入れ) */
		unsync_seq( );
		return	EVNT_TIME_ILLEGAL;	/* 不正フォーマット */
	}
	/* --- ステータス変更 --- */
	if( ppscnt ){
		time_sts = TIME_PPSMODE;
	}
	else{
		time_sts = TIME_UTCMODE;
	}
	sync_sts = SYNC_OK;

	return	ret;
}


/**
*	GPS受信・デコード処理
*	 in	なし
*	out	0:正常 0以外:エラーあり
*/
byte	gps_process( void )
{
	char	c, *p, sum[4];
	byte	ret;

	ret = EVNT_NONE;
	/* ----- 受信シーケンス開始判断 ----- */
	if( recv_en == off ){	
		if( sio_getchar( &c ) == TRUE ){	/* 受信 */
			if( c == '$' ){			/* 先頭文字で受信開始 */
				recv_timer = getcount1ms( );
				recv_en = on;
				bufp = 0;
			}
		}
	}
	/* ----- 受信完了判断 ----- */
	else if( sio_getstr( ) == 1 ){
		/* --- デコード($抜きで考える) --- */
		if( nmeamode == NMEA_GPRMC ){	/* $GPRMC(汎用) */
			nmea_checksum( rxbuffer, sum );	/* チェックサム計算 */
			p = strchr( rxbuffer, '*' );
			if(( *( p + 1 ) == sum[0] ) && ( *( p + 2 ) == sum[1] )){	/* チェックサム合った */
				if( strncmp_P( rxbuffer + 2, PSTR( "RMC" ), 3 ) == 0 ){		/* $**RMC 時刻情報 */
					ret = decode_gprmc( );
				}
			}
			else{
				ret = EVNT_TIME_ILLEGAL;
			}
		}
		else if( nmeamode == NMEA_GPZDA ){	/* $GPZDA(汎用) */
			nmea_checksum( rxbuffer, sum );	/* チェックサム計算 */
			p = strchr( rxbuffer, '*' );
			if(( *( p + 1 ) == sum[0] ) && ( *( p + 2 ) == sum[1] )){	/* チェックサム合った */
				if( strncmp_P( rxbuffer + 2, PSTR( "ZDA" ), 3 ) == 0 ){		/* $**ZDA 時刻情報 */
					ret = decode_gpzda( );
				}
			}
			else{
				ret = EVNT_TIME_ILLEGAL;
			}
		}
	}
	/* ----- 受信タイムアウト判断(開始後1秒以内に完結しなかった) ----- */
	else if(( getcount1ms( ) - recv_timer ) >= 1000U ){
		ret = EVNT_TIME_ILLEGAL;
		recv_en = off;
	}

	return	ret;
}


/* end of gpsjjy.c */
