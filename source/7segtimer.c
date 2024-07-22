/**
*	7segtimer.c
*	
*	Copyright (c)Junnichi Tomaru
*/
#include	"include/avrntp.h"

timer_st	on_tmp = { 0, 0, 0, 0 };
timer_st	off_tmp = { 0, 0, 0, 0 };


/* -------------------- ON/OFF時間設定 -------------------- */


/**
*	タイマ時刻を文字列にする
*	in	tm	タイマ構造体
*		buf	格納先バッファ
*	out	なし
*/
static void	timer2str( timer_st *tm, char *tmbuf )
{
	char	buf[4];

	strcpy_P( tmbuf, PSTR( "  :  :  " ));
	uctoaz( tm->hour, buf );	/* 時 */
	strncpy( tmbuf + 0, buf + 1, 2 );
	uctoaz( tm->min, buf );		/* 分 */
	strncpy( tmbuf + 3, buf + 1, 2 );
	uctoaz( tm->sec, buf );		/* 秒 */
	strncpy( tmbuf + 6, buf + 1, 2 );
}


/**
*	文字列をタイマ時刻にする
*	in	buf	文字列
*		tm	タイマ構造体
*	out	on:設定OK off:範囲外
*/
static swbool	str2timer( char *buf, timer_st *tm )
{
	timer_st	t;

	t = *tm;	/* フラグ消さないように */
	t.sec = _atoi( buf + 6 );	/* 秒 */
	if( t.sec > 59 ){
		return	off;
	}
	*( buf + 5 ) = C_NULL;
	t.min = _atoi( buf + 3 );	/* 分 */
	if( t.min > 59 ){
		return	off;
	}
	*( buf + 2 ) = C_NULL;
	t.hour = _atoi( buf + 0 );	/* 時 */
	if( t.hour > 23 ){
		return	off;
	}
	*tm = t;	/* 採用 */

	return	on;
}


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


const prog_char	prmmax[] = { 2, 9, 0, 5, 9, 0, 5, 9 };

/**
*	時刻設定
*	 in	y	開始Ｙ座標
*		timebuf	設定先(xx:xx:xx)
*	out	on:設定された off:タイムアウト
*/
static swbool	settime( char y, char *timebuf )
{
	char	key, px, c;
	char	*pt;
	int	p, ptr;
	swbool	ret;

	p = c = 0;
	px = 8;		/* 初期位置 */
	lcd_print( px, y, timebuf );	/* 初期表示 */
	*( timebuf + 8 ) = C_NULL;
	ptr = serchchar( *timebuf );	/* カーソル位置の文字検索 */
	_forever{			/* ENT押しっぱなし対策 */
		wdt_reset( );		/* WDTの更新 */
		if( bit_is_set( PIND,PIND2 ) ){
			break;
		}
	}
	lcd_dispcursor( 1 );		/* カーソル表示 */
	ret = off;
	_forever{
		pt = timebuf + p;;
		lcd_locate( px, y );
		if( ptr <= pgm_read_byte( prmmax + p )){
			c = ptr + '0';
		}
		lcd_putch( c );
		lcd_curleft( );		/* 進んでしまうので戻す */
		key = key_input( );
		if( key == UP_KEY ){	/* 値を上げる */
			ptr++;
			if( ptr <= pgm_read_byte( prmmax + p )){	/* 設定上限 */
				c = ptr + '0';
			}
			else{
				ptr = 0;
				c = '0';
			}
			*pt = c;
		}
		else if( key == DOWN_KEY ){	/* 値を下げる */
			if( ptr == 0 ){
				ptr = pgm_read_byte( prmmax + p );	/* 設定上限 */
			}
			else{
				ptr--;
			}
			c = ptr + '0';
			*pt = c;
		}
		else if( key == RIGHT_KEY ){	/* カーソル右へ移動 */
			p++;
			px++;
			if( isalnum( *( timebuf + p ) ) == 0 ){	/* 英数字ではない(:) */
				p++;
				px++;
			}
			if( p >= 8 ){	/* 設定長さ超えた */
				p = 0;
				px = 8;
			}
			ptr = serchchar( *( timebuf + p ) );
		}
		else if( key == ENTER_KEY ){
			ret = on;
			break;
		}
		else if( key == KEY_TOUT ){
			break;
		}
	}
	lcd_dispcursor( 0 );		/* カーソルOFF */

	return	ret;
}


/**
*	時間セット
*	 in	なし
*	out	on:設定終わり off:タイムアウト
*/
static swbool	prm_settimer( void )
{
	char	onbuf[16], offbuf[16];

	timer2str( &on_tmp, onbuf );
	timer2str( &off_tmp, offbuf );

	/* --- 初期表示 --- */
	lcd_cls( );
	lcd_printc( 1, 0, PSTR( "ONTIME" ));
	lcd_print( 8, 0, onbuf );
	lcd_printc( 0, 1, PSTR( "OFFTIME" ));
	lcd_print( 8, 1, offbuf );

	/* --- ON時刻設定 --- */
	if( settime( 0, onbuf ) == off ){	/* 編集 */
		return	off;
	}
	if( str2timer( onbuf, &on_tmp ) == off ){
		return	off;
	}

	/* --- OFF時刻設定 --- */
	if( settime( 1, offbuf ) == off ){	/* 編集 */
		return	off;
	}
	if( str2timer( offbuf, &off_tmp ) == off ){
		return	off;
	}

	return	on;
}


/* -------------------- 曜日設定 -------------------- */

const prog_char tmrwday[] = "SMTWTFS";

/**
*	曜日フラグ→文字列
*/
static void	wdflg2str( byte wd, char *wdbuf )
{
	char	i, b;
	char	*p;

	p = wdbuf;
	b = wd;
	for( i = 0; i < 7; i++, p++ ){
		if( BYTE_BIT0_CHK( b ) ){
			*p = pgm_read_byte( tmrwday + i );
		}
		else{
			*p = ' ';
		}
		b >>= 1;
	}
	*( wdbuf + 7 ) = C_NULL;
}


/**
*	曜日設定
*	 in	y	開始Ｙ座標
*		wdflg	フラグ
*		wdbuf	設定先(xxxxxxx)
*	out	on:設定された off:タイムアウト
*/
static swbool	setwday( char y, byte *wdflg, char *wdbuf )
{
	char	key, px, c, flg;
	int	p;
	swbool	ret;

	p = c = 0;
	flg = *wdflg;
	px = 9;		/* 初期位置 */
	lcd_print( px, y, wdbuf );	/* 初期表示 */
	_forever{			/* ENT押しっぱなし対策 */
		wdt_reset( );		/* WDTの更新 */
		if( bit_is_set( PIND,PIND2 ) ){
			break;
		}
	}
	lcd_dispcursor( 1 );		/* カーソル表示 */
	ret = off;
	_forever{
		lcd_locate( px, y );	/* カーソル位置 */
		if( flg & ( 1 << p )){	/* 有効 */
			c = pgm_read_byte( tmrwday + p );
		}
		else{
			c = ' ';
		}
		lcd_putch( c );
		lcd_curleft( );		/* カーソル進んでしまうので戻す */
		key = key_input( );
		if( key == UP_KEY ){	/* 値を変える */
			flg ^= ( 1 << p );
		}
		else if( key == RIGHT_KEY ){	/* カーソル右へ移動 */
			p++;
			px++;
			if( p >= 7 ){	/* 設定長さ超えた */
				p = 0;
				px = 9;
			}
		}
		else if( key == ENTER_KEY ){	/* ENT:採用 */
			*wdflg = flg;
			ret = on;
			break;
		}
		else if( key == KEY_TOUT ){	/* タイムアウト */
			break;
		}
	}
	lcd_dispcursor( 0 );		/* カーソルOFF */

	return	ret;
}


/**
*	曜日設定
*	 in	なし
*	out	on:設定終わり
*/
static swbool	prm_setwday( void )
{
	char	onbuf[8], offbuf[8];

	wdflg2str( on_tmp.wday, onbuf );
	wdflg2str( off_tmp.wday, offbuf );

	/* --- 初期表示 --- */
	lcd_cls( );
	lcd_printc( 0, 0, PSTR( "ON  WDAY:" ));
	lcd_print( 9, 0, onbuf );
	lcd_printc( 0, 1, PSTR( "OFF WDAY:" ));
	lcd_print( 9, 1, offbuf );

	/* --- ON設定 --- */
	if( setwday( 0, &on_tmp.wday, onbuf ) == off ){
		return	off;
	}
	/* --- OFF設定 --- */
	if( setwday( 1, &off_tmp.wday, offbuf ) == off ){
		return	off;
	}

	return	on;
}


/**
*	タイマ編集
*	 in	なし
*	out	on:通常画面へ
*/
swbool	prm_setsegtimer( void )
{
	swbool	ret;

	on_tmp = on_time;		/* 設定にコピー */
	off_tmp = off_time;
	if( prm_settimer( ) == off ){	/* 時間設定 */
		return	on;		/* タイムアウト */
	}
	if( prm_setwday( ) == on ){	/* 有効曜日(繰り返しのみ有効) */
		on_time = on_tmp;	/* 保存する */
		off_time = off_tmp;
		EEP_READYWAIT( );
		eeprom_update_dword( EEP_TIMON, *((dword *)&on_time ));
		EEP_READYWAIT( );
		eeprom_update_dword( EEP_TIMOFF, *((dword *)&off_time ));
		ret = off;
	}
	else{
		ret = on;
	}

	return	ret;
}


/* end of parameter.c */
