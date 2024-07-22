/**
*	utility.c
*	サブルーチン集
*	Copyright (c)Junnichi Tomaru
*/
#include	<avr/pgmspace.h>
#include	<ctype.h>
#include	<string.h>
#include	"library/struct_std.h"
#include	"library/utility.h"

const prog_char	hexnum[] = "0123456789ABCDEF";

/* ---------- 数値→16進文字列 ---------- */
/**
*	数値を16進文字列に(unsigned char,ゼロパディング)
*	 in	num:データ
*		buf:格納先文字列
*	out	バッファポインタ
*/
char	*uctoahz( byte num, char *buf )
{
	nbl_t	uni;

	uni.data = num;
	*( buf + 0 ) = pgm_read_byte( hexnum + uni.nbl.hi );
	*( buf + 1 ) = pgm_read_byte( hexnum + uni.nbl.lo );
	*( buf + 2 ) = C_NULL;

	return	buf;
}


/**
*	数値を16進文字列に(unsigned short,ゼロパディング)
*	 in	num:データ
*		buf:格納先文字列
*	out	バッファポインタ
*/
char	*ustoahz( word num, char *buf )
{
	wnbl_t	uni;

	uni.data = num;
	*( buf + 0 ) = pgm_read_byte( hexnum + uni.wnbl.hh );
	*( buf + 1 ) = pgm_read_byte( hexnum + uni.wnbl.hl );
	*( buf + 2 ) = pgm_read_byte( hexnum + uni.wnbl.lh );
	*( buf + 3 ) = pgm_read_byte( hexnum + uni.wnbl.ll );
	*( buf + 4 ) = C_NULL;

	return	buf;
}


/**
*	数値を16進文字列に(unsigned long,ゼロパディング)
*	 in	num:データ
*		buf:格納先文字列
*	out	バッファポインタ
*/
char	*ultoahz( dword num, char *buf )
{
	dwnbl_t	uni;

	uni.data = num;
	*( buf + 0 ) = pgm_read_byte( hexnum + uni.dwnbl.hhh );
	*( buf + 1 ) = pgm_read_byte( hexnum + uni.dwnbl.hhl );
	*( buf + 2 ) = pgm_read_byte( hexnum + uni.dwnbl.hlh );
	*( buf + 3 ) = pgm_read_byte( hexnum + uni.dwnbl.hll );
	*( buf + 4 ) = pgm_read_byte( hexnum + uni.dwnbl.lhh );
	*( buf + 5 ) = pgm_read_byte( hexnum + uni.dwnbl.lhl );
	*( buf + 6 ) = pgm_read_byte( hexnum + uni.dwnbl.llh );
	*( buf + 7 ) = pgm_read_byte( hexnum + uni.dwnbl.lll );
	*( buf + 8 ) = C_NULL;

	return	buf;
}


/* ---------- 数値→10進文字列 ---------- */
/**
*	数値を10進文字列に(unsigned char,ゼロパディング)
*	 in	num:データ
*		buf:格納先文字列 xxx
*	out	バッファポインタ
*/
char	*uctoaz( byte num, char *buf )
{
	byte	n;
	char	i, *p;

	p = buf;
	for( n = 100; n > 1; n /= 10, p++ ){
		i = num / n;
		num %= n;
		*p = ( char )( i + '0' );
	}
	*( p + 0 ) = num + '0';
	*( p + 1 ) = C_NULL;

	return	buf;
}


/**
*	数字をアスキー文字列に(unsigned short,ゼロパディング)
*	 in	num:データ
*		buf:格納先文字列 xxxxx
*	out	バッファポインタ
*/
char	*ustoaz( word num, char *buf )
{
	word	n;
	int	i;
	char	*p;

	p = buf;
	for( n = 10000U; n > 1U; n /= 10U ){
		i = num / n;
		num %= n;
		*p = ( char )( i + '0' );
		p++;
	}
	*( p + 0 ) = num + '0';
	*( p + 1 ) = C_NULL;

	return	buf;
}


/**
*	数字をアスキー文字列に(unsigned long,ゼロパディング)
*	 in	num:データ
*		buf:格納先文字列 xxxxxxxxxx
*	out	バッファポインタ
*/
char	*ultoaz( dword num, char *buf )
{
	dword	n;
	int	i;
	char	*p;

	p = buf;
	for( n = 1000000000LU; n > 1; n /= 10, p++ ){
		i = num / n;
		num %= n;
		*p = ( char )( i + '0' );
	}
	*( p + 0 ) = num + '0';
	*( p + 1 ) = C_NULL;

	return	buf;
}


/**
*	数字をアスキー文字列に(signed long,ゼロパディング)
*	 in	num:データ
*		buf:格納先文字列
*	out	バッファポインタ
*/
char	*ltoaz( long num, char *buf )
{
	char	*p;

	p = buf;
	if( num < 0L ){
		num = _abs( num );
		*p = '-';
		p++;
	}
	ultoaz(( dword )num, p );
	return	buf;
}


/* ---------- 文字列→数値 ---------- */

/**
*	10進文字列を数値に(16bit)
*	  数値のみ対応(マイナスは不可)
*	 in	文字列
*	out	数値
*/
word	_atoi( char *buf )
{
	dword	ret;
	char	d;

	for( ret = 0UL; ; buf++ ){
		d = *buf;
		if(( d >= '0' ) && ( d <= '9' )){
			ret *= 10;	/* 上の桁へ移動 */
			ret += ( d - '0' );
		}
		else{
			break;
		}
	}
	if( ret >= 65536UL ){
		ret = 65535UL;
	}

	return	(word)ret;
}


/**
*	16進文字を数値に
*	 in	文字
*	out	数値
*/
char	asc2bin( char n )
{
	char	diff;

	diff = '0';
	if(( n >= 'A' ) && ( n <= 'F' )){
		diff += ( 'A' - ':' );
	}
	else if(( n >= 'a' ) && ( n <= 'f' )){
		diff += ( 'a' - ':' );
	}

	return	( n - diff );
}


/**
*	16進文字列を数値に(char)
*	 in	変換元文字列
*	out	変換データ
*/
byte	atox( char *buf )
{
	nbl_t	ret;

	ret.nbl.hi = asc2bin( *( buf + 0 ));
	ret.nbl.lo = asc2bin( *( buf + 1 ));

	return	ret.data;
}


/**
*	16進文字列を数値に(word)
*	 in	変換元文字列
*	out	変換データ
*/
word	atoux( char *buf )
{
	wnbl_t	ret;

	ret.wnbl.hh = asc2bin( *( buf + 0 ));
	ret.wnbl.hl = asc2bin( *( buf + 1 ));
	ret.wnbl.lh = asc2bin( *( buf + 2 ));
	ret.wnbl.ll = asc2bin( *( buf + 3 ));

	return	ret.data;
}


/**
*	16進文字列を数値に(dword)
*	 in	変換元文字列
*	out	変換データ
*/
dword	atolx( char *buf )
{
	dwnbl_t	ret;

	ret.dwnbl.hhh = asc2bin( *( buf + 0 ));
	ret.dwnbl.hhl = asc2bin( *( buf + 1 ));
	ret.dwnbl.hlh = asc2bin( *( buf + 2 ));
	ret.dwnbl.hll = asc2bin( *( buf + 3 ));
	ret.dwnbl.lhh = asc2bin( *( buf + 4 ));
	ret.dwnbl.lhl = asc2bin( *( buf + 5 ));
	ret.dwnbl.llh = asc2bin( *( buf + 6 ));
	ret.dwnbl.lll = asc2bin( *( buf + 7 ));

	return	ret.data;
}


/* ---------- 計算等 ---------- */

/* random seed(for make_rand()) */
static dword	randw = 88675123UL;
static dword	randx = 123456789UL;
static dword	randy = 362436069UL;
static dword	randz = 521288629UL;


/**
*	ランダム数作成(Xorshift方式)
*	 in	なし
*	out	ランダム数(32bit)
*/
dword	make_rand( void )
{
	dword	t;

	t = randx ^ ( randx << 11 );
	randx = randy;
	randy = randz;
	randz = randw;
	randw = ( randw ^ ( randw >> 19 )) ^ ( t ^ ( t >> 8 ));

	return	randw;
}


/**
*	底を2とする対数計算(整数部分のみ)
*	2進数のLog=整数部分は左から最初に1が見つかったビット位置
*	(ex.log2(8) 0b00001000 = bit3 = 3 )
*	 in	真数
*	out	対数
*/
byte	log2x( word x )
{
	byte	i;
	word	b;

	b = 0x8000;
	for( i = 15; i > 0; i-- ){
		if( x & b ){	/* ビットが1 */
			break;
		}
		b >>= 1;
	}

	return	i;
}


/* ---------- エンディアン入れ替え ---------- */

/**
*	エンディアン入れ替え(16bit)
*	 in	入れ替えるデータ
*	out	入れ替え後のデータ
*/
word	cnvendian16( word data )
{
	ui_t	ret, tmp;

	tmp.data = data;
	ret.bytes.lo = tmp.bytes.hi;
	ret.bytes.hi = tmp.bytes.lo;

	return	ret.data;
}


/**
*	エンディアン入れ替え(32bit)
*	 in	入れ替えるデータ
*	out	入れ替え後のデータ
*/
dword	cnvendian32( dword data )
{
	ul_t	ret, w;

	w.data = data;
	ret.bytes.ll = w.bytes.hh;
	ret.bytes.lh = w.bytes.hl;
	ret.bytes.hl = w.bytes.lh;
	ret.bytes.hh = w.bytes.ll;

	return	ret.data;
}


/* end of utility.c */
