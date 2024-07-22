/**
*	utility.c
*	�T�u���[�`���W
*	Copyright (c)Junnichi Tomaru
*/
#include	<avr/pgmspace.h>
#include	<ctype.h>
#include	<string.h>
#include	"library/struct_std.h"
#include	"library/utility.h"

const prog_char	hexnum[] = "0123456789ABCDEF";

/* ---------- ���l��16�i������ ---------- */
/**
*	���l��16�i�������(unsigned char,�[���p�f�B���O)
*	 in	num:�f�[�^
*		buf:�i�[�敶����
*	out	�o�b�t�@�|�C���^
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
*	���l��16�i�������(unsigned short,�[���p�f�B���O)
*	 in	num:�f�[�^
*		buf:�i�[�敶����
*	out	�o�b�t�@�|�C���^
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
*	���l��16�i�������(unsigned long,�[���p�f�B���O)
*	 in	num:�f�[�^
*		buf:�i�[�敶����
*	out	�o�b�t�@�|�C���^
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


/* ---------- ���l��10�i������ ---------- */
/**
*	���l��10�i�������(unsigned char,�[���p�f�B���O)
*	 in	num:�f�[�^
*		buf:�i�[�敶���� xxx
*	out	�o�b�t�@�|�C���^
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
*	�������A�X�L�[�������(unsigned short,�[���p�f�B���O)
*	 in	num:�f�[�^
*		buf:�i�[�敶���� xxxxx
*	out	�o�b�t�@�|�C���^
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
*	�������A�X�L�[�������(unsigned long,�[���p�f�B���O)
*	 in	num:�f�[�^
*		buf:�i�[�敶���� xxxxxxxxxx
*	out	�o�b�t�@�|�C���^
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
*	�������A�X�L�[�������(signed long,�[���p�f�B���O)
*	 in	num:�f�[�^
*		buf:�i�[�敶����
*	out	�o�b�t�@�|�C���^
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


/* ---------- �����񁨐��l ---------- */

/**
*	10�i������𐔒l��(16bit)
*	  ���l�̂ݑΉ�(�}�C�i�X�͕s��)
*	 in	������
*	out	���l
*/
word	_atoi( char *buf )
{
	dword	ret;
	char	d;

	for( ret = 0UL; ; buf++ ){
		d = *buf;
		if(( d >= '0' ) && ( d <= '9' )){
			ret *= 10;	/* ��̌��ֈړ� */
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
*	16�i�����𐔒l��
*	 in	����
*	out	���l
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
*	16�i������𐔒l��(char)
*	 in	�ϊ���������
*	out	�ϊ��f�[�^
*/
byte	atox( char *buf )
{
	nbl_t	ret;

	ret.nbl.hi = asc2bin( *( buf + 0 ));
	ret.nbl.lo = asc2bin( *( buf + 1 ));

	return	ret.data;
}


/**
*	16�i������𐔒l��(word)
*	 in	�ϊ���������
*	out	�ϊ��f�[�^
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
*	16�i������𐔒l��(dword)
*	 in	�ϊ���������
*	out	�ϊ��f�[�^
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


/* ---------- �v�Z�� ---------- */

/* random seed(for make_rand()) */
static dword	randw = 88675123UL;
static dword	randx = 123456789UL;
static dword	randy = 362436069UL;
static dword	randz = 521288629UL;


/**
*	�����_�����쐬(Xorshift����)
*	 in	�Ȃ�
*	out	�����_����(32bit)
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
*	���2�Ƃ���ΐ��v�Z(���������̂�)
*	2�i����Log=���������͍�����ŏ���1�����������r�b�g�ʒu
*	(ex.log2(8) 0b00001000 = bit3 = 3 )
*	 in	�^��
*	out	�ΐ�
*/
byte	log2x( word x )
{
	byte	i;
	word	b;

	b = 0x8000;
	for( i = 15; i > 0; i-- ){
		if( x & b ){	/* �r�b�g��1 */
			break;
		}
		b >>= 1;
	}

	return	i;
}


/* ---------- �G���f�B�A������ւ� ---------- */

/**
*	�G���f�B�A������ւ�(16bit)
*	 in	����ւ���f�[�^
*	out	����ւ���̃f�[�^
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
*	�G���f�B�A������ւ�(32bit)
*	 in	����ւ���f�[�^
*	out	����ւ���̃f�[�^
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
