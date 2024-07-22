/**
*	http.c
*	HTTP処理
*	HyperText Transfer Protocol:Webブラウザとのコンテンツのやりとりなど(RFC1945,RFC2616)
*	Copyright (c)Junnichi Tomaru
*/
#include	"avrntp.h"

#define	PAGENW	0
#define	PAGENS	1
#define	PAGENB	2
#define	PAGECL	3
#define	PAGEEL	4
#define	PAGESD	5
#define	PAGE	6	/* ページ数 */

tsock_t	*tstmp;		/* HTTP作業用 */

struct HTITEM_T{
	prog_char	*title;
	prog_char	*item;
	byte	len;
	byte	max;
	char	*buf;
};
typedef struct HTITEM_T	htitem_t;

/* ----- 共通 ----- */
const prog_char http_head[] = "HTTP/1.1 200 HTTP\r\nConnection: close\r\nContent-Type: text/html\r\nCache-Control: no-cache\r\nContent-Language: en\r\n\r\n";
const prog_char msg_head[] = "HTTP/1.1 200 OK\r\nConnection: close\r\nContent-Type: text/html\r\nCache-Control: no-cache\r\nContent-Language: en\r\n\r\n<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\"><HTML><HEAD><TITLE>KDB-SNTP-SERVER SETUP</TITLE></HEAD><BODY BGCOLOR=\"#FFFFFFFF\"><CENTER><B>";
const prog_char msg_chgend[] = "\"></FORM><BR><FONT COLOR=\"GREEN\">VALUE SAVED</FONT><BR>";
const prog_char msg_chg[] = "\"><BR><BR><INPUT TYPE=\"SUBMIT\" VALUE=\"APPLY\"></FORM>";

/* ----- ネットワーク・ブロードキャスト設定 ----- */
const prog_char	itmip0[] = "IP";
const prog_char	itmip1[] = "NM";
const prog_char	itmip2[] = "GW";
const prog_char	itmip3[] = "DN";
const prog_char	itmip4[] = "BC";
const prog_char *itmip[] PROGMEM = { itmip0, itmip1, itmip2, itmip3, itmip4 };
const prog_uint16_t	eepip[] = { EEP_IPADDR, EEP_NETMASK, EEP_GATEWAY, EEP_DNSP, EEP_NTPBCAST };
const prog_uint32_t	dfltadr[] = { IPADDR, NETMASK, GATEWAY, DNSPSRV, NTPBC };

const prog_char	nameip0[] = "IP ADDRESS";
const prog_char	nameip1[] = "SUBNET MASK";
const prog_char	nameip2[] = "GATEWAY";
const prog_char	nameip3[] = "DNS SERVER";
const prog_char	nameip4[] = "ADDRESS";
const prog_char *nameip[] PROGMEM = { nameip0, nameip1, nameip2, nameip3, nameip4 };

/* ----- NTPサーバ設定 ----- */
const prog_char	itmntp0[] = "N1";
const prog_char	itmntp1[] = "N2";
const prog_char	itmntp2[] = "N3";
const prog_char	itmntp3[] = "N4";
const prog_char *itmntp[] PROGMEM = { itmntp0, itmntp1, itmntp2, itmntp3 };
const prog_char	namentp0[] = "SERVER1";
const prog_char	namentp1[] = "SERVER2";
const prog_char	namentp2[] = "SERVER3";
const prog_char	namentp3[] = "SERVER4";
const prog_char *namentp[] PROGMEM = { namentp0, namentp1, namentp2, namentp3 };
const prog_uint16_t	eepntp[] = { EEP_NTPSRV1, EEP_NTPSRV2, EEP_NTPSRV3, EEP_NTPSRV4 };

/* ----- エラーメッセージ ----- */
const prog_char	evnt00[] = "";
const prog_char	evnt01[] = "POWER ON";
const prog_char	evnt02[] = "EXTERNAL RESET";
const prog_char	evnt03[] = "BROWN OUT RESET";
const prog_char	evnt04[] = "WATCHDOG TIMER RESET";
const prog_char	evnt05[] = "ENC28J60 RECEIVE ERROR";
const prog_char	evnt06[] = "ARP REQUEST TIMEOUT ERROR";
const prog_char	evnt07[] = "ICMP PACKET CHECK SUM ERROR";
const prog_char	evnt08[] = "TCP PACKET CHECK SUM ERROR";
const prog_char	evnt09[] = "UDP PACKET CHECK SUM ERROR";
const prog_char	evnt10[] = "ICMP MESSAGE";
const prog_char	evnt11[] = "DHCP RECEIVE NAK(RETRY)";
const prog_char	evnt12[] = "DHCP RENEWAL STATE";
const prog_char	evnt13[] = "DHCP REBIND STATE";
const prog_char	evnt14[] = "DHCP EXPIRED STATE";
const prog_char	evnt15[] = "DHCP RECEIVE PACKET ERROR";
const prog_char	evnt16[] = "NBT RECEIVE ERROR";
const prog_char	evnt17[] = "NBT FORMAT ERROR";
const prog_char	evnt18[] = "NBT PACKET ERROR";
const prog_char	evnt19[] = "NBT TIME OUT(SERVER1)";
const prog_char	evnt20[] = "NBT TIME OUT(SERVER2)";
const prog_char	evnt21[] = "NBT TIME OUT(SERVER3)";
const prog_char	evnt22[] = "NBT TIME OUT(SERVER4)";
const prog_char	evnt23[] = "DNS TIME OUT(SERVER1)";
const prog_char	evnt24[] = "DNS TIME OUT(SERVER2)";
const prog_char	evnt25[] = "DNS TIME OUT(SERVER3)";
const prog_char	evnt26[] = "DNS TIME OUT(SERVER4)";
const prog_char	evnt27[] = "NTP UNSYNCRONIZED";
const prog_char	evnt28[] = "NTP TIME OUT(SERVER1)";
const prog_char	evnt29[] = "NTP TIME OUT(SERVER2)";
const prog_char	evnt30[] = "NTP TIME OUT(SERVER3)";
const prog_char	evnt31[] = "NTP TIME OUT(SERVER4)";
const prog_char	evnt32[] = "NTP ILLEGAL SERVER REPLY";
const prog_char	evnt33[] = "NTP LEAP SECOND ADJUST";
const prog_char	evnt34[] = "TIME ILLEGAL";
const prog_char	evnt35[] = "GPS NMEA FORMAT ERROR";
const prog_char	evnt36[] = "NMEA CHECKSUM ERROR";
const prog_char	evnt37[] = "TIME DATA RECEIVE ERROR";
const prog_char	evnt38[] = "UNSYNC TIMEUP";
const prog_char	evnt39[] = "MTK3339 INITIAL ERROR";
const prog_char *event[] PROGMEM = {
	evnt00, evnt01, evnt02, evnt03, evnt04,
	evnt05, evnt06, evnt07, evnt08, evnt09,
	evnt10, evnt11, evnt12, evnt13, evnt14,
	evnt15, evnt16, evnt17, evnt18, evnt19,
	evnt20, evnt21, evnt22, evnt23, evnt24,
	evnt25, evnt26, evnt27, evnt28, evnt29,
	evnt30, evnt31, evnt32, evnt33, evnt34,
	evnt35, evnt36, evnt37, evnt38, evnt39
};

/* ----- トップページ ----- */
const prog_char	cgi0[] = "nw.cgi";	/* ネットワーク設定 */
const prog_char	cgi1[] = "ns.cgi";	/* NTP参照サーバ設定 */
const prog_char	cgi2[] = "nb.cgi";	/* NTPブロードキャスト設定 */
const prog_char	cgi3[] = "cl.cgi";	/* 時刻補正・配信ログ */
const prog_char	cgi4[] = "el.cgi";	/* イベントログ */
const prog_char	cgi5[] = "sd.cgi";	/* システム情報 */
const prog_char	cgi6[] = "favico";	/* favicon */
const prog_char *cgi[] PROGMEM = { cgi0, cgi1, cgi2, cgi3, cgi4, cgi5, cgi6 };

const prog_char	menu0[] = "FIX NETWORK SETTING";
const prog_char	menu1[] = "TIME SERVER SETTING";
const prog_char	menu2[] = "TIME PROVIDE SETTING";
const prog_char	menu3[] = "TIME BROADCAST LOG";
const prog_char	menu4[] = "EVENT LOG";
const prog_char	menu5[] = "SYSTEM INFOMATION";
const prog_char *menu[] PROGMEM = { menu0, menu1, menu2, menu3, menu4, menu5 };


/* ---------- CGI処理部 ---------- */

/**
*	アドレス処理(CGI)
*	 in	データ先頭位置
*	out	なし
*/
static void	http_netseq( char *buf )
{
	byte	i;
	char	*p;
	word	adr;
	dword	dw;

	for( i = 0; i < 4; i++ ){	/* データ後ろから処理する(NULLで止めるので) */
		p = strstr_P( buf, (prog_char *)pgm_read_word( itmip + 3 - i ));	/* 項目名比較 */
		if( p == NULL ){
			break;
		}
		if( ipstr2bin( p + 3, (dword *)&dw ) == TRUE ){	/* アドレス文字列→数値 */
			adr = pgm_read_word( eepip + 3 - i );	/* 格納先アドレス */
			EEP_READYWAIT( );	/* アクセス可能まで待つ */
			eeprom_update_dword((uint32_t *)adr , dw );
		}
		*( p - 1 ) = C_NULL;	/* &のところにNULL */
	}
}


/**
*	NTPサーバ設定処理(CGI)
*	 in	データ先頭位置
*	out	なし
*/
static void	http_ntpsrvseq( char *buf )
{
	byte	i;
	char	*p, tmp[32];
	int	a;
	word	w;
	char	*srvbuf[] = { ntpsrv1, ntpsrv2, ntpsrv3, ntpsrv4 };

	for( i = 0; i < 4; i++ ){	/* データ後ろから処理する(NULLで止めるので) */
		p = strstr_P( buf, (prog_char *)pgm_read_word( itmntp + 3 - i ));/* 項目名比較 */
		if( p == NULL ){	/* 見つからなくなったら終わり */
			srvpnt = osrvpnt = 0;	/* ポインタリセット */
			break;
		}
		memset( tmp, 0, sizeof( tmp ));
		strcpy( tmp, p + 3 );
		a = 3 - i;
		strcpy( srvbuf[a], tmp );	/* 直ちに反映 */
		w = pgm_read_word( eepntp + a );	/* 格納先アドレス */
		EEP_READYWAIT( );	/* アクセス可能まで待つ */
		eeprom_update_block((uint8_t *)tmp, (uint8_t *)w, 32 );
		*( p - 1 ) = C_NULL;	/* &のところにNULL */
	}
}


/**
*	NTPブロードキャスト設定(CGI)
*	 in	データ先頭位置
*	out	なし
*/
static void	http_ntpbcastseq( char *buf )
{
	char	*p;
	dword	dw;

	p = strstr_P( buf, PSTR( "ITBL" ));
	if( p == NULL ){
		return;
	}
	binterval = _atoi( p + 5 );
	if( binterval > 65534U ){
		binterval = 0U;
	}
	EEP_READYWAIT( );	/* アクセス可能まで待つ */
	eeprom_update_word((uint16_t *)EEP_NTPBITBL, binterval );
	*( p - 1 ) = C_NULL;	/* &のところにNULL */
	p = strstr_P( buf, PSTR( "BC" ));
	if( p != NULL ){
		if( ipstr2bin( p + 3, (dword *)&dw ) == TRUE ){
			EEP_READYWAIT( );	/* アクセス可能まで待つ */
			eeprom_update_dword((uint32_t *)EEP_NTPBCAST, dw );
		}
	}
}


/* ---------- HTTP処理部 ---------- */

/**
*	ヘッダ挿入
*	 in	メニュー番号
*	out	サイズ
*/
word	http_msgheader( char num )
{
	word	size;

	enc_txseek( TCP_DATA );
	size = enc_writebufc( msg_head );
	size += enc_writebufc( (prog_char *)pgm_read_word( menu + num ));
	size += enc_writebufc( PSTR( "</B><BR><FORM ACTION=\"" ));
	size += enc_writebufc( (prog_char *)pgm_read_word( cgi + num ));
	size += enc_writebufc( PSTR( "\" METHOD=\"GET" ));

	return	size;
}


/**
*	ログ画面ヘッダ挿入
*	 in	メニュー番号
*	out	サイズ
*/
word	http_msglogheader( char num )
{
	word	size;

	enc_txseek( TCP_DATA );
	size = enc_writebufc( msg_head );
	size += enc_writebufc( (prog_char *)pgm_read_word( menu + num ));
	size += enc_writebufc( PSTR( "</B><BR><BR><TABLE BORDER=\"1\"><TR><TH WIDTH=\"" ));

	return	size;
}


/**
*	ログ画面のページ切替・クリア部分挿入
*	 in	  page: 表示ページ
*		errclr: エラー出力クリア
*	out	サイズ
*/
word	http_msgpagechg( char page, swbool errclr )
{
	word	size;
	prog_char	*p;

	p = (prog_char *)pgm_read_word( cgi + page );
	size = enc_writebufc( PSTR( "</TABLE><BR><A HREF=\"" ));
	size += enc_writebufc( p );
	size += enc_writebufc( PSTR( "?PG=0\">[1]</A>&emsp;<A HREF=\"" ));
	size += enc_writebufc( p );
	size += enc_writebufc( PSTR( "?PG=1\">[2]</A>&emsp;<A HREF=\"" ));
	size += enc_writebufc( p );
	size += enc_writebufc( PSTR( "?CLR\">LOG CLEAR</A>" ));
	if( errclr == on ){
		size += enc_writebufc( PSTR( "&emsp;<A HREF=\"" ));
		size += enc_writebufc( p );
		size += enc_writebufc( PSTR( "?ERRRST\">ERROR OFF</A><BR>" ));
	}
	else{
		size += enc_writebufc( PSTR( "<BR>" ));
	}

	return	size;
}


/**
*	フッタ挿入
*	 in	on:戻る有り off:戻る無し
*	out	サイズ
*/
word	http_msgfooter( swbool sw )
{
	word	size;

	size = 0;
	if( sw == on ){
		size += enc_writebufc( PSTR( "<BR><A HREF=\"./\">MAIN MENU</A><BR>" ));
	}
	size += enc_writebufc( PSTR( "<BR>Copyright (c)Junnichi Tomaru" ));
	size += enc_writebufc( PSTR( "</CENTER></BODY></HTML>" ));

	return	size;
}


/**
*	項目情報を送信バッファに入れる
*	 in	
*	out	サイズ
*/
word	http_setitem( htitem_t *itm )
{
	word	size;
	char	tmp[4];

	size = enc_writebufc( PSTR( "\"><BR>" ));
	size += enc_writebufc( itm->title );	/* 項目タイトル */
	size += enc_writebufc( PSTR( "<BR><INPUT TYPE=\"TEXT\" NAME=\"" ));
	size += enc_writebufc( itm->item );	/* 項目名 */
	size += enc_writebufc( PSTR( "\" SIZE=\"" ));
	size += enc_writebuffer((byte *)uctoaz( itm->len, tmp ), strlen( tmp ));
	size += enc_writebufc( PSTR( "\" MAXLENGTH=\"" ));
	size += enc_writebuffer((byte *)uctoaz( itm->max, tmp ), strlen( tmp ));
	size += enc_writebufc( PSTR( "\" VALUE=\"" ));
	size += enc_writebuffer((byte *)itm->buf, strlen( itm->buf ));

	return	size;
}


/**
*	アドレスを送信バッファに入れる
*	 in	(0～7)
*	out	名前長さ
*/
word	http_putaddr( char nn )
{
	char	buf[16];
	dword	dw;
	word	adr;
	htitem_t	itm;

	adr = pgm_read_word( eepip + nn );
	EEP_READYWAIT( );	/* アクセス可能まで待つ */
	dw = eeprom_read_dword( (uint32_t *)adr );
	if( dw == LD_MAX ){	/* 書かれていない */
		dw = pgm_read_dword( dfltadr + nn );
	}
	itm.title = (prog_char *)pgm_read_word( nameip + nn );
	itm.item = (prog_char *)pgm_read_word( itmip + nn );
	itm.len = 18;		/* 枠長さ */
	itm.max = 15;		/* 設定長さ */
	itm.buf = long2ipstr( dw, buf );

	return	http_setitem( &itm );
}


/**
*	ネットワーク設定
*	 in	off:表示だけ on:変更OK
*	out	0:正常 1:エラーあり
*/
byte	http_putnetwork( swbool sw )
{
	word	size;

	size = http_msgheader( PAGENW );
	size += http_putaddr( 0 );	/* IP ADDRESS */
	size += http_putaddr( 1 );	/* NETMASK */
	size += http_putaddr( 2 );	/* GATEWAY */
	size += http_putaddr( 3 );	/* DNS SERVER */
	if( sw == on ){
		size += enc_writebufc( msg_chgend );
	}
	else{	/* 設定 */
		size += enc_writebufc( msg_chg );
	}
	size += http_msgfooter( on );	/* フッタ */

	return	tcp_output(( PSH_FLAG | ACK_FLAG ), tstmp, size );
}


/**
*	NTPアドレスを送信バッファに入れる
*	 in	(0～3)
*	out	名前長さ
*/
word	http_putntpsrvaddr( char nn )
{
	char	buf[32];
	word	adr;
	prog_char	*dflt;
	htitem_t	itm;

	adr = pgm_read_word( eepntp + nn );	/* 格納アドレス */
	dflt = (prog_char *)pgm_read_word( dfltntp + nn );	/* デフォルト */
	eep_getstring32( adr, buf, dflt );
	itm.title = (prog_char *)pgm_read_word( namentp + nn );	/* 項目名 */
	itm.item = (prog_char *)pgm_read_word( itmntp + nn );	/* 名前 */
	itm.len = 33;	/* 枠長さ */
	itm.max = 31;	/* 設定長さ */
	itm.buf = buf;

	return	http_setitem( &itm );
}


/**
*	NTPサーバ設定
*	 in	off:表示だけ on:変更OK
*	out	0:正常 1:エラーあり
*/
static byte	http_ntpsrv( swbool sw )
{
	word	size;

	size = http_msgheader( PAGENS );
	size += http_putntpsrvaddr( 0 );	/* NTP SERVER1 */
	size += http_putntpsrvaddr( 1 );	/* NTP SERVER2 */
	size += http_putntpsrvaddr( 2 );	/* NTP SERVER3 */
	size += http_putntpsrvaddr( 3 );	/* NTP SERVER4 */
	if( sw == on ){
		size += enc_writebufc( msg_chgend );
	}
	else{	/* 設定 */
		size += enc_writebufc( msg_chg );
	}
	size += http_msgfooter( on );	/* フッタ */

	return	tcp_output(( PSH_FLAG | ACK_FLAG ), tstmp, size );
}


/**
*	NTPブロードキャスト設定
*	 in	off:表示だけ on:変更OK
*	out	0:正常 1:エラーあり
*/
static byte	http_ntpbcast( swbool sw )
{
	word	size;
	char	buf[8];

	size = http_msgheader( PAGENB );
	size += http_putaddr( 4 );	/* ADDRESS */
	size += enc_writebufc( PSTR( "\"><BR><BR>INTERVAL(Sec. 0 or >65534 Ignore)<BR><INPUT TYPE=\"TEXT\" NAME=\"ITBL\" SIZE=\"8\" MAXLENGTH=\"5\" VALUE=\"" ));
	ustoaz( binterval, buf );
	size += enc_writebuffer((byte *)buf, strlen( buf ));
	if( sw == on ){
		size += enc_writebufc( msg_chgend );
	}
	else{	/* 設定 */
		size += enc_writebufc( msg_chg );
	}
	size += http_msgfooter( on );	/* フッタ */

	return	tcp_output(( PSH_FLAG | ACK_FLAG ), tstmp, size );
}


/**
*	２桁の数値を文字にしてENCのバッファに書き込む
*	 in	値
*	out	長さ
*/
static word	write_val2( char val )
{
	char	buf[4];

	uctoaz( val, buf );
	return	enc_writebuffer((byte *)&buf[1], 2 );
}


/**
*	４桁の数値を文字にしてENCのバッファに書き込む
*	 in	値
*	out	長さ
*/
static word	write_val4( int val )
{
	char	buf[8];

	ustoaz( val, buf );
	return	enc_writebuffer((byte *)&buf[1], 4 );
}


/**
*	日時をフォーマットしてENCのバッファに入れる
*	 in	日時データ
*	out	長さ
*/
word	writedate( http_tm *t )
{
	word	size;

	size = write_val4( t->year );	/* 年 */
	enc_writebuf( '/' );
	size++;
	size += write_val2( t->mon );	/* 月 */
	enc_writebuf( '/' );
	size++;
	size += write_val2( t->day );	/* 日 */
	enc_writebuf( ' ' );
	size++;
	size += write_val2( t->hour );	/* 時 */
	enc_writebuf( ':' );
	size++;
	size += write_val2( t->min );	/* 分 */
	enc_writebuf( ':' );
	size++;
	size += write_val2( t->sec );	/* 秒 */

	return	size;
}


/**
*	補正ログ表示サブルーチン
*	 in	位置
*	out	長さ
*/
static word	caliblog_sub( byte pnt )
{
	http_tm	ht;
	cal_t	ct;
	word	size, sec, ms;
	char	buf[16];
	byte	pol;

	ct = callog[pnt];
	size = enc_writebufc( PSTR( "<TR ALIGN=\"CENTER\"><TD>" ));
	size += write_val2( pnt + 1 );	/* 位置 */
	size += enc_writebufc( PSTR( "</TD><TD>" ));
	if(( ct.flg >= 1 ) && ( ct.flg <= 3 )){	/* 時刻表示 */
		ht.year = ct.year;
		ht.mon = ct.mon;
		ht.day = ct.day;
		ht.hour = ct.hour;
		ht.min = ct.min;
		ht.sec = ct.sec;
		size += writedate( &ht );
	}
	else{	/* 表示なし */
		size += enc_writebufc( PSTR( "&emsp;" ));
	}
	size += enc_writebufc( PSTR( "</TD><TD>" ));
	if( ct.flg == LOG_BCAST ){	/* 配信 */
		size += enc_writebufc( PSTR( "-----</TD><TD>" ));
		size += enc_writebufc( PSTR( "DISTRIBUTION" ));
	}
	else if( ct.flg == LOG_BCRX ){	/* 補正 */
		if( ct.csec > 32400 ){		/* 9時間越えたら */
			size += enc_writebufc( PSTR( "over 9hours." ));
		}
		else{
			pol = ( ct.csec < 0 )? '-': '+';	/* 補正秒 */
			enc_writebuf( pol );
			size++;
			sec = _abs( ct.csec );
			ustoaz( sec, buf );
			size += enc_writebuffer((byte *)buf, strlen( buf ));
			size += enc_writebufc( PSTR( "sec," ));
			pol = ( ct.cms < 0 )? '-': '+';	/* 補正ミリ秒 */
			enc_writebuf( pol );
			size++;
			ms = _abs( ct.cms );		/* 符号判定したのでに絶対値する */
			ustoaz( ms, buf );
			size += enc_writebuffer((byte *)buf+2, strlen( buf ) - 2 );	/* ミリ秒は3桁なので */
			size += enc_writebufc( PSTR( "ms." ));
		}
		size += enc_writebufc( PSTR( "</TD><TD>BC ADJUST" ));
	}
	else{			/* 登録なし */
		size += enc_writebufc( PSTR( "</TD><TD>&emsp;" ));
	}
	size += enc_writebufc( PSTR( "</TD></TR>" ));

	return	size;
}


/**
*	補正・配信ログ表示
*	 in	フラグ
*	out	0:正常 1:エラーあり
*/
static byte	http_caliblog( byte flg )
{
	word	size;
	byte	i, p, sts;

	p = 0;
	if( flg == 1 ){		/* 次ページ */
		p = 8;
	}
	else if( flg == 2 ){	/* クリア */
		clear_callog( );
	}
	/* ----- 分割１回目 ----- */
	size = http_msglogheader( PAGECL );
	size += enc_writebufc( PSTR( "50\"></TH><TH WIDTH=\"150\">TIME</TH><TH WIDTH=\"150\">AMOUNT</TH><TH WIDTH=\"150\">NOTE</TH></TR>" ));
	sts = tcp_output(( PSH_FLAG | ACK_FLAG ), tstmp, size );
	if( sts != EVNT_NONE ){
		return	sts;
	}
	/* ----- 分割２回目 ----- */
	enc_txseek( TCP_DATA );
	size = 0U;
	for( i = 0; i < 8; i++ ){	/* ログ */
		size += caliblog_sub( p + i );
	}
	sts = tcp_output(( PSH_FLAG | ACK_FLAG ), tstmp, size );
	if( sts != EVNT_NONE ){
		return	sts;
	}
	/* ----- 分割３回目 ----- */
	enc_txseek( TCP_DATA );
	size = http_msgpagechg( PAGECL, off );
	size += http_msgfooter( on );	/* フッタ */

	return	tcp_output(( PSH_FLAG | ACK_FLAG ), tstmp, size );
}


/**
*	イベントログ表示サブルーチン
*	 in	位置
*	out	長さ
*/
static word	eventlog_sub( byte pnt )
{
	word	size;
	http_tm	ht;
	evntlog_t	elt;
	size_t	t;
	char	buf[16];

	t = sizeof( evntlog_t );
	size = enc_writebufc( PSTR( "<TR ALIGN=\"CENTER\"><TD>" ));
	elt = eventlog[pnt];
	if( elt.evnt != EVNT_NONE ){	/* イベント登録あり */
		if(( elt.evnt >= EVNT_PWR_ON ) && ( elt.evnt <= EVNT_WDT_RESET )){	/* 時刻の無いイベント */
			size += enc_writebufc( PSTR( "----/--/-- --:--:--" ));
		}
		else{
			ht.year = elt.year;
			ht.mon = elt.mon;
			ht.day = elt.day;
			ht.hour = elt.hour;
			ht.min = elt.min;
			ht.sec = elt.sec;
			size += writedate( &ht );
		}
		size += enc_writebufc( PSTR( "</TD><TD>" ));
		size += enc_writebufc((prog_char *)pgm_read_word( event + elt.evnt ));	/* イベント */
		if( elt.evnt == EVNT_ENC_RXRCVERR ){	/* 受信エラー */
			size += enc_writebufc( PSTR( "(STS:" ));
			ustoahz( elt.arg1, buf );
			size += enc_writebuffer((byte *)buf, strlen( buf ));
			size += enc_writebufc( PSTR( ",CNT:" ));
			ustoahz( elt.arg2, buf );
			size += enc_writebuffer((byte *)buf, strlen( buf ));
			size += enc_writebufc( PSTR( ",NEXT:" ));
			ustoahz( (word)elt.arg3, buf );
			size += enc_writebuffer((byte *)buf, strlen( buf ));
			enc_writebuf( ')' );
			size++;
		}
		else if(( elt.evnt == EVNT_ICMP_MESSAGE ) || ( elt.evnt == EVNT_ICMP_RXSUMERR )){	/* ICMP */
			size += enc_writebufc( PSTR( "(TYPE:" ));
			uctoahz( (byte)elt.arg1, buf );
			size += enc_writebuffer((byte *)buf, strlen( buf ));
			size += enc_writebufc( PSTR( ",CODE:" ));
			uctoahz( (byte)elt.arg2, buf );
			size += enc_writebuffer((byte *)buf, strlen( buf ));
			size += enc_writebufc( PSTR( ",DATA1:" ));
			ultoahz( elt.arg3, buf );
			size += enc_writebuffer((byte *)buf, strlen( buf ));
			enc_writebuf( ')' );
			size++;
		}
		else if(( elt.evnt == EVNT_TCP_RXSUMERR ) || ( elt.evnt == EVNT_UDP_RXSUMERR )){	/* TCP,UDP */
			size += enc_writebufc( PSTR( "(IN:" ));
			uctoahz( (byte)elt.arg1, buf );
			size += enc_writebuffer((byte *)buf, strlen( buf ));
			size += enc_writebufc( PSTR( ",OUT:" ));
			uctoahz( (byte)elt.arg2, buf );
			size += enc_writebuffer((byte *)buf, strlen( buf ));
			size += enc_writebufc( PSTR( ",ADDR:" ));
			ultoahz( elt.arg3, buf );
			size += enc_writebuffer((byte *)buf, strlen( buf ));
			enc_writebuf( ')' );
			size++;
		}
		else if( elt.evnt == EVNT_NTP_UNSYNC ){	/* NTP */
			size += enc_writebufc( PSTR( "(SERVER:" ));
			long2ipstr( elt.arg3, buf );	/* ARG3=IPADDR */
			size += enc_writebuffer((byte *)buf, strlen( buf ));
			enc_writebuf( ')' );
			size++;
		}
	}
	else{
		size += enc_writebufc( PSTR( "&emsp;</TD><TD>&emsp;" ));	/* 空白 */
	}
	size += enc_writebufc( PSTR( "</TD></TR>" ));

	return	size;
}


/**
*	イベントログ表示
*	 in	フラグ(1:PAGE2 2:LOGCLR 3:ERRRST)
*	out	0:正常 1:エラーあり
*/
static byte	http_eventlog( byte flg )
{
	word	size;
	byte	i, p, sts;

	p = 0;
	if( flg == 1 ){		/* PG=1 */
		p = 8;
	}
	else if( flg == 2 ){	/* CLR */
		clear_eventlog( );
	}
	else if( flg == 3 ){	/* ERRRST */
		ERRRST( );	/* エラーLED消灯 */
		WORD_BIT15_OFF( opests );	/* ERROR OFF */
	}
	/* ----- 分割１回目 ----- */
	size = http_msglogheader( PAGEEL );
	size += enc_writebufc( PSTR( "150\">TIME</TH><TH WIDTH=\"500\">EVENT</TH></TR>" ));
	sts = tcp_output(( PSH_FLAG | ACK_FLAG ), tstmp, size );
	if( sts != EVNT_NONE ){
		return	sts;
	}
	/* ----- 分割２回目 ----- */
	enc_txseek( TCP_DATA );
	size = 0U;
	for( i = 0; i < 8; i++ ){	/* ログ */
		size += eventlog_sub( p + i );
	}
	sts = tcp_output(( PSH_FLAG | ACK_FLAG ), tstmp, size );
	if( sts != EVNT_NONE ){
		return	sts;
	}
	/* ----- 分割３回目 ----- */
	enc_txseek( TCP_DATA );
	size = http_msgpagechg( PAGEEL, on );
	size += http_msgfooter( on );	/* フッタ */

	return	tcp_output(( PSH_FLAG | ACK_FLAG ), tstmp, size );
}


/**
*	システム情報表示サブ
*	 in	p:項目名, q:値
*	out	長さ
*/
static word	http_systemdatasub( const prog_char *p, char *q )
{
	word	size;

	size = enc_writebufc( PSTR( "<TR ALIGN=\"CENTER\"><TD>" ));
	size += enc_writebufc( p );
	size += enc_writebufc( PSTR( "</TD><TD>" ));
	size += enc_writebuffer((byte *)q, strlen( q ));
	size += enc_writebufc( PSTR( "</TD></TR>" ));

	return	size;
}

/* ----- 動作モード ----- */
const prog_char	opmode0[] = "NTP ADJUSTMENT MODE";
const prog_char	opmode1[] = "NTP ADJ. NMEAOUT MODE";
const prog_char	opmode2[] = "BROADCAST ADJUSTMENT MODE";
const prog_char	opmode3[] = "BROADCAST ADJ. NMEAOUT MODE";
const prog_char	opmode4[] = "UNIVERSAL GPS ADJUSTMENT MODE";
const prog_char	opmode5[] = "MTK3339 GPS ADJUSTMENT MODE";
const prog_char *opmode[] PROGMEM = {
	opmode0, opmode1, opmode2, opmode3, opmode4, opmode5
};

/* ----- 時刻ステータス ----- */
const prog_char	calsts0[] = "NO ALARM(TIME SYNCRONIZED)";
const prog_char	calsts1[] = "TIME ALARM(NOT SYNCRONIZED)";
const prog_char	calsts2[] = "TIME UNADJUSTED";
const prog_char	calsts3[] = "TIME OPERATION TIMEOUT";
const prog_char	calsts4[] = "UTC MODE(VALID)";
const prog_char	calsts5[] = "UTC PPSOUT MODE(VALID)";
const prog_char	calsts6[] = "GPS TIME NO VALID";
const prog_char	calsts7[] = "NO TIME INPUT";
const prog_char *calsts[] PROGMEM = {
	calsts0, calsts1, calsts2, calsts3, calsts4,
	calsts5, calsts6, calsts7
};

/**
*	システム情報表示
*	 in	なし
*	out	0:正常 1:エラーあり
*/
static byte	http_systemdata( void )
{
	long	cnt;
	word	wt, size;
	byte	i;
	char	*p, *q;
	char	buf[32], buf2[32];

	size = http_msglogheader( PAGESD );
	size += enc_writebufc( PSTR( "200\">ITEM</TH><TH WIDTH=\"300\">VALUE</TH></TR>" ));
	size += http_systemdatasub( PSTR( "IP ADDRESS" ), long2ipstr( myipaddr, buf ) );
	size += http_systemdatasub( PSTR( "SUBNET MASK" ), long2ipstr( netmask, buf ) );
	size += http_systemdatasub( PSTR( "GATEWAY ADDRESS" ), long2ipstr( gateway, buf ) );
	size += http_systemdatasub( PSTR( "DNS SERVER" ), long2ipstr( dns_server, buf ) );
	size += http_systemdatasub( PSTR( "NETBIOS NAME" ), nbns_name );
	if( dhcp_mode == DHCP_ABORT ){
		strcpy_P( buf, PSTR( "FIX ADDRESS" ));
	}
	else{
		strcpy_P( buf, PSTR( "USE DHCP SERVER" ));
	}
	size += http_systemdatasub( PSTR( "DHCP MODE" ), buf );
	strcpy_P( buf, (prog_char *)pgm_read_word( opmode + adjmode ));	/* 動作モード */
	size += http_systemdatasub( PSTR( "OPERATION MODE" ), buf );
	strcpy_P( buf, (prog_char *)pgm_read_word( calsts + time_sts ));	/* 時刻ステータス */
	size += http_systemdatasub( PSTR( "TIME STATUS" ), buf );
	p = (char *)mac_address;
	q = buf;
	for( i = 0; i < 3; i++, p++, q += 2 ){	/* OUI */
		uctoahz( *p, q );
	}
	*q = '-';
	q++;
	for( i = 0; i < 3; i++, p++, q += 2 ){	/* Vendor */
		uctoahz( *p, q );
	}
	*q = C_NULL;
	size += http_systemdatasub( PSTR( "MAC ADDRESS" ), buf );	/* MAC ADDRESS */
	buf[0] = ( revid / 10 ) + '0';
	buf[1] = ( revid % 10 ) + '0';
	buf[2] = C_NULL;
	size += http_systemdatasub( PSTR( "ENC28J60 REVISION" ), buf );	/* REVISION */
	strcpy_P( buf, version );
	size += http_systemdatasub( PSTR( "FIRMWARE VERSION" ), buf );
	/* 動作時間 */
	cnt = opetime;
	ltoaz( cnt / 60L, buf );	/* 時 */
	strcpy( buf2, buf + 5 );
	strcat_P( buf2, PSTR( "HOUR " ));
	wt = (word)( cnt % 60L );
	ustoaz( wt, buf );
	strcat( buf2, buf + 3 );	/* 分 */
	strcat_P( buf2, PSTR( "MIN." ));
	size += http_systemdatasub( PSTR( "OPERATING TIME" ), buf2 );
	size += enc_writebufc( PSTR( "</TABLE><BR>" ));
	size += http_msgfooter( on );	/* フッタ */

	return	tcp_output(( PSH_FLAG | ACK_FLAG ), tstmp, size );
}


/**
*	トップページ表示
*	 in	なし
*	out	0:正常 1:エラーあり
*/
static byte	http_index( void )
{
	word	size;
	byte	i;

	enc_txseek( TCP_DATA );
	size = enc_writebufc( msg_head );
	size += enc_writebufc( PSTR( "KDB-SNTP-SERVER</B><BR>" ));
	for( i = 0; i < PAGE; i++ ){
		size += enc_writebufc( PSTR( "<BR><A HREF=\"./" ));
		size += enc_writebufc( (prog_char *)pgm_read_word( cgi + i ));	/* CGI名 */
		size += enc_writebufc( PSTR( "?\">" ));
		size += enc_writebufc( (prog_char *)pgm_read_word( menu + i ));	/* メニュー名 */
		size += enc_writebufc( PSTR( "</A><BR>" ));
	}
	size += http_msgfooter( off );	/* フッタ */

	return	tcp_output(( PSH_FLAG | ACK_FLAG ), tstmp, size );
}


/*
*	ログ用データ処理
*	 in	データ先頭
*	out	フラグ
*/
static byte	http_outputsub( char *buf )
{
	byte	ret;

	ret = 0;
	if( strncmp_P( buf, PSTR( "PG=1" ), 4 ) == 0 ){
		ret = 1;
	}
	else if( strncmp_P( buf, PSTR( "CLR" ), 3 ) == 0 ){
		ret = 2;
	}
	else if( strncmp_P( buf, PSTR( "ERRRST" ), 6 ) == 0 ){
		ret = 3;
	}

	return	ret;
}


/**
*	ヘッダ返信(HEADメソッド)
*	 in	なし
*	out	0:正常 1:エラーあり
*/
static byte	http_replyheader( void )
{
	word	size;

	enc_txseek( TCP_DATA );
	size = enc_writebufc( http_head );	/* ヘッダ返す */

	return	tcp_output(( PSH_FLAG | ACK_FLAG ), tstmp, size );
}


/**
*	HTTP処理
*	 in	ソケットID
*	out	0:正常 1:エラーあり
*/
byte	http_output( int sid )
{
	char	*p, *q, *r;
	byte	i, ret, flg;
	swbool	sw;

	ret = 0;
	tstmp = &sock_tbl[sid];
	if( cgien[sid] == CGI_GET ){	/* ページ要求 */
		p = ( sid == 0 )? cgibuf1: cgibuf2;	/* cgi名先頭 */
		q = p + 7;	/* データ先頭 */
		r = strstr_P( p, PSTR( " HTTP/" ));	/* データ終端 */
		*r = C_NULL;
		for( i = 0; i < PAGE; i++ ){
			if( strncmp_P( p, (prog_char *)pgm_read_word( cgi + i ), 6 ) == 0 ){	/* 一致 */
				break;
			}
		}
		if( i == PAGE ){	/* 指定なしまたは該当なし */
			ret = http_index( );
		}
		else if( i == PAGENW ){	/* ネットワーク設定 */
			if( *q != C_NULL ){
				http_netseq( q );
				sw = on;
			}
			else{
				sw = off;
			}
			ret = http_putnetwork( sw );
		}
		else if( i == PAGENS ){	/* NTPサーバ設定 */
			if( *q != C_NULL ){
				http_ntpsrvseq( q );
				sw = on;
			}
			else{
				sw = off;
			}
			ret = http_ntpsrv( sw );
		}
		else if( i == PAGENB ){	/* NTPブロードキャスト設定 */
			if( *q != C_NULL ){
				http_ntpbcastseq( q );
				sw = on;
			}
			else{
				sw = off;
			}
			ret = http_ntpbcast( sw );
		}
		else if( i == PAGECL ){	/* 補正ログ */
			flg = http_outputsub( q );
			ret = http_caliblog( flg );
		}
		else if( i == PAGEEL ){	/* イベントログ */
			flg = http_outputsub( q );
			ret = http_eventlog( flg );
		}
		else if( i == PAGESD ){	/* システム情報 */
			ret = http_systemdata( );
		}
		else{	/* favicon.ico */
			ret = tcp_output(( FIN_FLAG | ACK_FLAG ), tstmp, 0U );
		}
	}
	else if( cgien[sid] == CGI_HEAD ){	/* ヘッダ要求 */
		ret = http_replyheader( );
	}
	else{	/* 意図しない要求 */
		ret = tcp_output(( FIN_FLAG | ACK_FLAG ), tstmp, 0U );
	}

	return	ret;
}


/* end of http.c */
