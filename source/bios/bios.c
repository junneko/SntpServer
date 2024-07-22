/**
*	KDB-BASE BIOSレベル関数群
*	Copyright (c)Junnichi Tomaru
*/
#include	"bios/bios.h"

#define	DLM	C_LF	/* LF */

/* ---------- 時間・ウェイトルーチン ---------- */

/**
*	waitルーチン
*	12.8MHz時62.5us単位
*	割り込みは入るので注意
*	in	wait数
*	out	なし
*/
void	wait( word time )
{
	byte	lpcnt;

	__asm__ __volatile__("\n"
		"CPU_wait_entry%=:\n\t"
		"ldi %0,200\n"
		"CPU_wait_lp%=:\n\t"
		"nop\n\t"
		"dec %0\n\t"
		"brne CPU_wait_lp%=\n\t"
		"sbiw %1,1\n\t"
		"brne CPU_wait_entry%=\n\t"
		:"=&a"(lpcnt)
		:"w"(time)
	);
}


/**
*	1ms単位のカウンタ値取る
*	 in	なし
*	out	カウンタ値(16bit値)
*/
word	getcount1ms( void )
{
	word	ret;

	_di( );
	ret = count1ms;
	_ei( );

	return	ret;
}


/**
*	指定ms待つ
*	 in	待つ時間(ms)
*	out	なし
*/
void	waitms( word time )
{
	word	w;

	for( w = getcount1ms( ); ( getcount1ms( ) - w ) < time; ){
		wdt_reset( );	/* WDTの更新 */
	}
}


/* ---------- SIO関連 ---------- */

/* ----- 送信 ----- */
/**
*	コマンド送信(文字数)
*	 in	送信文字列
*	out	なし
*/
void	sio_setstrn( char *buf, char n )
{
	if( n >= TXBUFSIZE ){		/* 長すぎる */
		return;
	}
	while( siotxflg == on ){	/* 送信中待つ */
		wdt_reset( );
	}
	siotxflg = on;
	memcpy((char *)txbuf, buf, n );	/* バイナリデータ想定でmemcpy */
	UDR0 = txbuf[0];	/* 最初の一文字 */
	txct = n - 1;
	txp = 1;
	UCSR0B |= ( BYTE_BIT_X( UDRIE0 ) | BYTE_BIT_X( TXCIE0 ));	/* TXCI,UDRI on */
}


/**
*	コマンド送信(送信用バッファにしまう)
*	 in	送信文字列
*	out	なし
*/
void	sio_setstr( char *buf )
{
	byte	len;

	len = (byte)strlen( buf );		/* 長さ */
	if( len >= TXBUFSIZE ){
		return;
	}
	while( siotxflg == on ){	/* 送信中待つ */
		wdt_reset( );
	}
	siotxflg = on;
	strcpy((char *)txbuf, buf );
	UDR0 = txbuf[0];	/* 最初の一文字 */
	txct = len - 1;
	txp = 1;
	UCSR0B |= ( BYTE_BIT_X( UDRIE0 ) | BYTE_BIT_X( TXCIE0 ));	/* TXCI,UDRI on */
}


/**
*	コマンド送信(ROM)(送信が終わるまではロックされる)
*	 in	送信文字列
*	out	なし
*/
void	sio_setstrc( prog_char *buf )
{
	char	len;

	len = strlen_P( buf );		/* 長さ */
	if( len >= TXBUFSIZE ){
		return;
	}
	while( siotxflg == on ){	/* 送信中待つ */
		wdt_reset( );
	}
	siotxflg = on;
	strcpy_P((char *)txbuf, buf );
	UDR0 = txbuf[0];	/* 最初の一文字 */
	txct = len - 1;
	txp = 1;
	UCSR0B |= ( BYTE_BIT_X( UDRIE0 ) | BYTE_BIT_X( TXCIE0 ));	/* TXCI,UDRI on */
}


/* ----- 受信 ----- */
/**
*	受信クリア
*	 in	なし
*	out	なし
*/
void	sio_clear( void )
{
	char	c;

	while( sio_getchar( &c ) == TRUE ){
		wdt_reset( );
	}
}


/**
*	バッファから１文字取る(割り込み)
*	 in	格納バッファポインタ
*	out	TRUE:受信あり  FALSE:受信なし
*/
bool	sio_getchar( char *data )
{
	byte	c;

	_di( );
	c = rxct;
	_ei( );
	if( c == 0 ){		/* 受信なし */
		return	FALSE;
	}
	_di( );
	*data = rxringbuf[rxhp];
	rxhp++;
	rxhp &= ( RXBUFSIZE - 1 );
	rxct--;
	_ei( );

	return	TRUE;
}


/**
*	デリミタまで受信
*	 in	なし
*	out	0:受信まだ 1:受信完了 2:バッファオーバー
*/
byte	sio_getstr( void )
{
	char	c;
	byte	ret;

	ret = 0;
	if( sio_getchar( &c ) == FALSE ){	/* 受信ない */
		return	0;
	}
	if( bufp >= ( RXCOMSIZE - 1 )){	/* バッファ容量を超えてしまった */
		recv_en = off;
		bufp = 0;
		ret = 2;
	}
	else{
		rxbuffer[bufp] = c;
		bufp++;
		if( c == C_LF ){	/* デリミタLF */
			rxbuffer[bufp] = C_NULL;
			bufp = 0;
			recv_en = off;
			ret = 1;
		}
	}

	return	ret;
}


/* ---------- EEPROM ---------- */
/**
*	EEPROMからIPアドレスを取り出す(32bit)
*	 in	addr: アドレス格納番地
*		 fix: デフォルト値
*	out	アドレス
*/
dword	eep_getipaddr( word addr, dword fix )
{
	dword	ret;

	EEP_READYWAIT( );	/* アクセス可能まで待つ */
	ret = eeprom_read_dword( (uint32_t *)addr );
	if( ret == LD_MAX ){
		ret = fix;
	}

	return	ret;
}


/**
*	EEPROMから文字列を取り出す(16文字)
*	 in	addr: アドレス格納番地
*		 buf: 格納先
*		 fix: デフォルト値
*	out	なし
*/
void	eep_getstring16( word addr, char *buf, prog_char *fix )
{
	EEP_READYWAIT( );	/* アクセス可能まで待つ */
	eeprom_read_block((uint8_t *)buf, (uint8_t *)addr, 15 );
	*( buf + 15 ) = C_NULL;
	if( isalnum( *( buf + 0 )) == 0 ){
		strcpy_P( buf, fix );
	}
}


/**
*	EEPROMから文字列を取り出す(32文字)
*	 in	addr: アドレス格納番地
*		 buf: 格納先
*		 fix: デフォルト値
*	out	なし
*/
void	eep_getstring32( word addr, char *buf, prog_char *fix )
{
	EEP_READYWAIT( );	/* アクセス可能まで待つ */
	eeprom_read_block((uint8_t *)buf, (uint8_t *)addr, 31 );
	*( buf + 31 ) = C_NULL;
	if( isalnum( *( buf + 0 )) == 0 ){
		strcpy_P( buf, fix );
	}
}


/* ---------- キー入力 ---------- */

/**
*	キー状態をチェックする
*	 in	なし
*	out	なし
*/
void	key_check( void )
{
	keybuf[keypnt] = _invert( PINB ) & BYTE_MASK_L4;
	keypnt++;
	keypnt &= BYTE_MASK_L2;
}


/**
*	スキャンコード→キーコード変換
*/
static byte	scan2keycode( byte scan )
{
	byte	ret;

	if( scan == ENTERKEY_BIT ){		/* SW5 */
		ret = ENTER_KEY;
	}
	else if( scan == RIGHTKEY_BIT ){	/* SW4 */
		ret = RIGHT_KEY;
	}
	else if( scan == DOWNKEY_BIT ){		/* SW3 */
		ret = DOWN_KEY;
	}
	else if( scan == UPKEY_BIT ){		/* SW2 */
		ret = UP_KEY;
	}
	else if( scan == ( RIGHTKEY_BIT + ENTERKEY_BIT )){	/* RIGHT+ENTER */
		ret = LOGCLR_KEY;
	}
	else if( scan == ( UPKEY_BIT + DOWNKEY_BIT )){		/* UP+DOWN */
		ret = LCDEN_KEY;
	}
	else if( scan == ( UPKEY_BIT + RIGHTKEY_BIT )){		/* UP+RIGHT */
		ret = LCDDI_KEY;
	}
	else if( scan == ( UPKEY_BIT + ENTERKEY_BIT )){		/* UP+ENTER */
		ret = TIMEREQ_KEY;
	}
	else if( scan == ( DOWNKEY_BIT + ENTERKEY_BIT )){	/* DOWN+ENTER */
		ret = BCAST_KEY;
	}
	else{
		ret = NO_KEY;
	}

	return	ret;
}


/**
*	キーセンス
*/
byte	key_sense( void )
{
	byte	keyc, scan;
	static byte	okey;

	scan = keybuf[0];	/* ４回分の入力を見る */
	scan &= keybuf[1];
	scan &= keybuf[2];
	scan &= keybuf[3];
	if( scan != 0 ){	/* キー入力あり */
		keyc = scan2keycode( scan );	/* コード変換 */
		if( keyc == okey ){	/* 前回と同じだった */
			keyc = NO_KEY;	/* 入力がないことにする */
		}
		else{
			okey = keyc;
		}
	}
	else{			/* 入力なし */
		okey = keyc = NO_KEY;
	}

	return	keyc;
}


/**
*	キー入力(待つ)
*	 in	なし
*	out	キーコード
*/
byte	key_input( void )
{
	byte	keyc;
	word	wt, wt2, now;

	wt = wt2 = getcount1ms( );
	_forever{
		wdt_reset( );		/* WDTの更新 */
		now = getcount1ms( );
		if(( now - wt2 ) >= 16U ){	/* 16msでチェック */
			wt2 = now;
			key_check( );
		}
		keyc = key_sense( );	/* キーセンス */
		if( keyc != NO_KEY ){
			break;
		}
		else if(( now - wt ) >= 10000U ){
			keyc = KEY_TOUT;
			break;
		}
	}

	return	keyc;
}


/* end of bios.c */
