/**
*	resolver.c
*	NBT(NetBIOS over TCP/IP),DNS�̋��ʕ���
*	Copyright (c)Junnichi Tomaru
*/
#include	"ipv4/ipv4.h"

/**
*	NAME�L���b�V���̗L�����Ԃ��`�F�b�N
*	 in	�Ȃ�
*	out	�Ȃ�
*/
void	resolve_timer( void )
{
	byte	i;
	dword	ttl;

	for( i = 0; i < DNS_CACHE_MAX; i++ ){
		if( cache_table[i].flg == 1 ){
			ttl = cache_table[i].ttl;
			if( ttl != 0UL ){	/* 0 = Infinity. */
				ttl--;
				cache_table[i].ttl = ttl;
				if( ttl == 0 ){	/* �^�C���A�b�v���� */
					cache_table[i].flg = 0;
				}
			}
		}
	}
}


/**
*	DNS,NBT���]���o(�L���b�V������)
*	 in	�z�X�g��
*	out	0�ȊO:�L���b�V���ɂ��� 0:�L���b�V������Ă��Ȃ�
*/
dword	search_resolver( char *name )
{
	byte	i;
	dword	ret;
	cache_t	tmp;

	ret = 0UL;
	for( i = 0; i < DNS_CACHE_MAX; i++ ){	/* �L���b�V�����̌��� */
		tmp = cache_table[i];
		if(( tmp.flg == 1 ) && ( strcmp( tmp.domain, name ) == 0 )){	/* ����������A�������w�� */
			ret = tmp.ipaddr;
			break;
		}
	}

	return	ret;
}


/**
*	�L���b�V�������E�o�^���[�`��
*	 in	name:����̃z�X�g��
*		addr:�����IP�A�h���X
*		ttl:TTL�l
*	out	�Ȃ�
*/
void	cache_keep( char *name, dword addr, dword ttl )
{
	byte	i, p;

	p = BD_MAX;
	for( i = 0; i < DNS_CACHE_MAX; i++ ){	/* �L���b�V�����̌��� */
		if( strcmp( cache_table[i].domain, name ) == 0 ){	/* �������� */
			p = i;
			break;
		}
	}
	if( p == BD_MAX ){	/* �܂��L���b�V������Ă��Ȃ��������� */
		p = rslv_tp;
		rslv_tp++;	/* �|�C���^��i�߂� */
		rslv_tp &= DNS_CACHE_MASK;
		/* �L���b�V���e�[�u���ɕۊ� */
		strcpy( cache_table[p].domain, name );
		cache_table[p].ipaddr = addr;
		cache_table[p].ttl = ttl;
		cache_table[p].flg = 1;
	}
}


/**
*	���O�����V�[�P���X
*	 in	�Ȃ�
*	out	0:��ʏ����Ȃ� 255:�^�C���A�E�g
*/
byte	resolve_seq( void )
{
	byte	sts;
	swbool	endflg;

	sts = EVNT_NONE;
	endflg = off;
	/* ----- ���菈�� ----- */
	if( rslv_req == 1 ){	/* ���l�w��ANetBIOS���A�z�X�g���w��𔻒肷�� */
		if( ipstr2bin( rslvname, (dword *)&rslv_addr ) == TRUE ){	/* IP�A�h���X�ϊ����� */
			if( rslv_addr == 0UL ){		/* 0�܂��͋L�^�Ȃ��͏I��� */
				adjustseq = rslv_req = 0;
			}
			else{
				endflg = on;
			}
		}
		else if( strlen( rslvname ) > 15 ){	/* 15���������Ă���z�X�g���w��̉\���� */
			rslv_req = 4;	/* DNS�₢���킹�K�v */
		}
		else if( strchr( rslvname, '.' ) != NULL ){	/* .����������z�X�g���w��̉\���� */
			rslv_req = 4;	/* DNS�₢���킹�K�v */
		}
		else{			/* NBT�₢���킹�K�v */
			rslv_req = 2;
		}
	}
	/* ----- NBT(NetBIOS over TCP/IP)���� ----- */
	else if( rslv_req == 2 ){	/* ���]���o�֖₢���킹 */
		rslv_addr = search_resolver( rslvname );	/* NetBIOS������ */
		if( rslv_addr != 0UL ){	/* �L���b�V�����ɂ����� */
			endflg = on;
		}
		else{		/* �₢���킹�K�v */
			rslv_start = getcount1ms( );
			sts = nbns_sendquery( rslvname );
			rslv_cnt = 0;
			rslv_req = 3;
		}
	}
	else if( rslv_req == 3 ){	/* NBT�₢���킹�҂� */
		if( rslv_addr != 0UL ){	/* �A�h���X�������ꂽ */
			endflg = on;
		}
		else if(( getcount1ms( ) - rslv_start ) >= 1000U ){	/* NBT�^�C���A�E�g */
			rslv_cnt++;
			if( rslv_cnt >= 3 ){	/* �G���[ */
				sts = EVNT_NBT_TIMEOUT1 + srvpnt;
			}
			else{	/* ���Ȃ��� */
				rslv_start = getcount1ms( );
				sts = nbns_sendquery( rslvname );
			}
		}
	}
	/* ----- DNS���� ----- */
	else if( rslv_req == 4 ){	/* DNS���]���o�֖₢���킹 */
		rslv_addr = search_resolver( rslvname );	/* �z�X�g������ */
		if( rslv_addr != 0UL ){	/* �L���b�V�����ɂ����� */
			endflg = on;
		}
		else{		/* �₢���킹�K�v */
			rslv_start = getcount1ms( );
			sts = dns_request( rslvname );
			rslv_cnt = 0;
			rslv_req = 5;
		}
	}
	else if( rslv_req == 5 ){	/* DNS�₢���킹�҂� */
		if( rslv_addr != 0UL ){	/* �A�h���X�������ꂽ */
			endflg = on;
		}
		else if(( getcount1ms( ) - rslv_start ) >= 1000U ){	/* DNS�^�C���A�E�g */
			rslv_cnt++;
			if( rslv_cnt >= 3 ){	/* �G���[ */
				sts = EVNT_DNS_TIMEOUT1 + srvpnt;
			}
			else{	/* ���Ȃ��� */
				rslv_start = getcount1ms( );
				sts = dns_request( rslvname );
			}
		}
	}
	/* ----- ���̑� ----- */
	rslv_end = endflg;
	if( endflg == on ){	/* �A�h���X�������ꂽ */
		rslv_req = 0;
	}

	return	sts;
}


/* end of resolver.c */
