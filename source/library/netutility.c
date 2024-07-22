/**
*	netutility.c
*	�l�b�g���[�N�֌W�T�u���[�`���W
*	Copyright (c)Junnichi Tomaru
*/
#include	<avr/pgmspace.h>
#include	<ctype.h>
#include	<string.h>
#include	"bios/stime.h"
#include	"library/utility.h"


/**
*	IP�A�h���X�𕶎���ɂ���(3���Œ�)
*	 in	ipadr: IP�A�h���X
*		  buf: �i�[�敶����
*	out	�o�b�t�@�|�C���^
*/
char	*long2ipstr( dword ipadr, char *buf )
{
	ul_t	tmp;

	tmp.data = ipadr;
	uctoaz( tmp.bytes.hh, buf );
	*( buf + 3 ) = '.';
	uctoaz( tmp.bytes.hl, buf + 4 );
	*( buf + 7 ) = '.';
	uctoaz( tmp.bytes.lh, buf + 8 );
	*( buf + 11 ) = '.';
	uctoaz( tmp.bytes.ll, buf + 12 );

	return	buf;
}


/**
*	IP�A�h���X�������long�^�ɕϊ�����
*	 in	adrstr	IP�A�h���X������
*			������ɐ����ƃh�b�g�ȊO�܂ނ��Ƃ͂ł��Ȃ�
*		addr	�ϊ���̃A�h���X(�󔒎�0,�G���[��0xffffffff)
*			192.168.0.100 -> 0xc0a80064
*	out	TRUE:���� FALSE:���s
*/
bool	ipstr2bin( char *adrstr, dword *addr )
{
	char	*p, *q, d, tmp[32];
	int	i;
	dword	adr;
	bool	ret;

	adr = 0L;
	ret = FALSE;
	strcpy( tmp, adrstr );		/* ����ς��Ȃ��悤�ɃR�s�[���g�p */
	p = q = tmp;
	for( i = 0; i < 16; i++, q++ ){
		d = *q;
		if( d == '.' ){		/* ��؂��.(8�r�b�g�����l�ϊ�) */
			*q = C_NULL;
			adr |= _atoi( p );
			adr <<= 8;
			p = q + 1;
		}
		else if( d == C_NULL ){	/* ������Ō� */
			if( q == tmp ){	/* �ŏ�������(��) */
				*addr = 0UL;	/* 0.0.0.0�Ɠ����ɂ��� */
			}
			else{		/* ����(8�r�b�g�����l�ϊ�) */
				*q = C_NULL;
				adr |= _atoi( p );
				*addr = adr;
			}
			ret = TRUE;
			break;
		}
		else if( isdigit( d ) == 0 ){	/* �����ȕ��� */
			*addr = 0UL;	/* ������0.0.0.0�Ɠ����ɂ��� */
			break;
		}
	}

	return	ret;
}


/* end of netutility.c */
