/**
*	nbns.c
*	NBT(NetBIOS over TCP/IP) RFC1001,1002
*	Copyright (c)Junnichi Tomaru
*/
#include	"ipv4/ipv4.h"

/**
*	��M�o�b�t�@������o����������ASCII�R�[�h��ASCII�R�[�h�ɂ���
*	 in	�Ȃ�
*	out	ASCII�R�[�h
*/
byte	casc2asc( void )
{
	nbl_t	d;

	d.nbl.hi = ( enc_readbuf( ) - 'A' ) & BYTE_MASK_L4;
	d.nbl.lo = ( enc_readbuf( ) - 'A' ) & BYTE_MASK_L4;

	return	d.data;
}


/**
*	ASCII�R�[�h������𕄍���ASCII�R�[�h�ɂ��đ��M�o�b�t�@�ɖ��ߍ���
*	 in	ASCII�R�[�h
*	out	�Ȃ�
*/
void	asc2casc( byte *p )
{
	byte	i, c;

	for( i = 0; i < 16; i++, p++ ){	/* 32�����Œ� */
		c = (byte)toupper( *p );
		enc_writebuf(( c >> 4 ) + 'A' );
		enc_writebuf(( c & BYTE_MASK_L4 ) + 'A' );
	}
	enc_writebuf( 0x00 );		/* �I�[ */
}


/**
*	�₢���킹���M(�ꕔDNS�Ƌ��ʕϐ��g�p)
*	 in	NetBIOS��������(16�o�C�g�K�{)
*	out	0:�G���[�Ȃ� 0�ȊO:�G���[����
*/
byte	nbns_sendquery( char *name )
{
	byte	ret;

	ret = EVNT_NONE;
	pacinfo.partipaddr = myipaddr | ( ~netmask );	/* �T�u�l�b�g���u���[�h�L���X�g */
	pacinfo.partport = UDP_NBNS;
	pacinfo.myport = UDP_NBNS;
	rslv_xid = (word)make_rand( );	/* �g�����U�N�V����ID���� */
	enc_txseek( UDP_DATA );
	enc_writebuf2( rslv_xid );	/* ID */
	enc_writebuf2( OP_QUERY | NM_RD | NM_BC );	/* �₢���킹�A�ċA�A�u���[�h�L���X�g */
	enc_writebuf2( 1U );		/* Question�� */
	enc_writebuf2( 0U );		/* Answer�� */
	enc_writebuf2( 0U );		/* Authority�� */
	enc_writebuf2( 0U );		/* Additional�� */
	enc_writebuf( 32 );		/* ����(32�o�C�g�Œ�) */
	asc2casc( (byte *)name );	/* NetBIOS��(������ASCII�G���R�[�h) */
	enc_writebuf2( RRTYPE_NB );	/* RR_TYPE */
	enc_writebuf2( CLASS_IN );	/* CLASS */

	return	udp_output( 50U );	/* �v����50�I�N�e�b�g�Œ� */
}


/**
*	���z�X�g����̖₢���킹����(Query����)
*	 in	NBNS�w�b�_�\����
*	out	0:�G���[�Ȃ� 0�ȊO:�G���[����
*/
static byte	nbns_query( nbns_st *rxnbns )
{
	byte	buf[16], j, ret;
	word	i, qn, tid, type, class, sts, len;
	swbool	sw;

	ret = EVNT_NONE;
	tid = cnvendian16( rxnbns->trid );	/* �g�����U�N�V����ID */
	qn = cnvendian16( rxnbns->question );	/* �₢���킹�� */
	sw = off;
	for( i = 0; i < qn; i++ ){
		if( enc_readbuf( ) != 32 ){	/* ���O������32�����ł͂Ȃ�(�|�C���^�܂�) */
			break;			/* �o�����_�ŏ����I�� */
		}
		for( j = 0; j < 16; j++ ){	/* NetBIOS��(������ASCII�f�R�[�h) */
			buf[j] = casc2asc( );
		}
		buf[15] = C_NULL;
		enc_readbuf( );			/* �I�[�R�[�h�ǂݔ�΂� */
		type = enc_readbuf2( );		/* �^�C�v NetBIOS Node Status */
		class = enc_readbuf2( );	/* �N���X Internet(1) */
		if( class != CLASS_IN ){	/* �N���X�Ⴄ */
			continue;
		}
		if( type == RRTYPE_NB ){	/* NB */
			if( strcmp((char *)buf, nbns_name ) == 0 ){	/* NetBIOS����v */
				sw = on;	/* �ėp�l�[���T�[�r�X�̃��\�[�X���R�[�h */
				sts = ( OP_RESPONSE | NM_AA | NM_RD );	
				break;
			}
		}
		else if( type == RRTYPE_NBSTAT ){	/* NBSTAT */
			if( buf[0] == '*' ){
				sw = on;	/* �m�[�h�X�e�[�^�X���\�[�X���R�[�h */
				sts = ( OP_RESPONSE | NM_AA );	
				break;
			}
		}
	}
	if( sw == on ){		/* �ԓ� */
		enc_txseek( NBNS_TOP );	
		enc_writebuf2( tid );	/* �g�����U�N�V����ID */
		enc_writebuf2( sts );	/* Status */
		enc_writebuf2( 0U );	/* �₢���킹�� */
		enc_writebuf2( 1U );	/* �񓚐� */
		enc_writebuf2( 0U );	/* ���ЃZ�N�V������ */
		enc_writebuf2( 0U );	/* �ǉ����Z�N�V������ */
		enc_writebuf( 32 );	/* ����(32byte) */
		asc2casc( buf );	/* NetBIOS��(�����̂𖄂ߍ���) */
		enc_writebuf2( type );	/* Type: NetBIOS Status */
		enc_writebuf2( CLASS_IN );	/* Class: Internet */
		enc_writebuf4( NBNS_TTL );	/* Time To Live */
		if( type == RRTYPE_NB ){	/* NB(0x20) */
			enc_writebuf2( 6U );		/* �f�[�^�� */
			enc_writebuf2( NB_BNODE | NB_UNIQUE );	/* B-Node,Unique */
			enc_writebuf4( myipaddr );	/* NB Address */
			len = 62U;
		}
		else{			/* NBSTAT(0x21) */
			enc_writebuf2( 61U );	/* �f�[�^�� */
			enc_writebuf( 1 );	/* ���O�̌� */
			enc_writebuffer( (byte *)nbns_name, 15 );	/* NetBIOS��(��) */
			enc_writebuf( C_NULL );	/* �I�[ */
			enc_writebuf2( NB_BNODE | NB_UNIQUE | NF_ACT );	/* B-Node,Unique,Active */
			enc_writebuffer( mac_address, PHYSICALADDR_SIZE );/* Node Address */
			enc_fillwrite( 0x00, 36 );	/* ���̑����(�S��0) */
			len = 117U;
		}
		ret = udp_output( len );
	}

	return	ret;
}


/**
*	�₢���킹�悩��̕ԓ�����
*	 in	NBNS�w�b�_�\����
*	out	0:�G���[�Ȃ� 0�ȊO:�G���[����
*/
static byte	nbns_response( nbns_st *rxnbns )
{
	byte	ret, i;
	byte	buf[16];
	word	type, class, flag, len;
	dword	ttl;

	ret = EVNT_NONE;
	if( cnvendian16( rxnbns->trid ) != rslv_xid ){	/* �g�����U�N�V����ID�Ⴄ */
		return	ret;		/* �G���[�ɂ��Ȃ� */
	}
	if( cnvendian16( rxnbns->answer ) != 1U ){	/* Answer��(����1��) */
		return	EVNT_NBT_RCVERROR;
	}
	if( enc_readbuf( ) != 32 ){	/* ���O������32�����ł͂Ȃ� */
		return	EVNT_NBT_FMTERROR;
	}
	for( i = 0; i < 16; i++ ){	/* NetBIOS��(������ASCII�f�R�[�h) */
		buf[i] = casc2asc( );
	}
	buf[15] = C_NULL;
	enc_readbuf( );			/* �I�[�R�[�h�ǂݔ�΂� */
	type = enc_readbuf2( );		/* �^�C�v NetBIOS Node Status */
	class = enc_readbuf2( );	/* �N���X Internet(1) */
	ttl = enc_readbuf4( );		/* TTL */
	if(( type == RRTYPE_NB ) && ( class == CLASS_IN )){
		len = enc_readbuf2( );		/* ���� */
		flag = enc_readbuf2( );		/* �t���O */
		rslv_addr = enc_readbuf4( );	/* �A�h���X */
		cache_keep(( char *)buf, rslv_addr, ttl );	/* �ۑ� */
	}

	return	ret;
}


/**
*	NetBIOS���O����
*	 in	�Ȃ�
*	out	0:�G���[�Ȃ� 0�ȊO:�G���[����
*/
byte	nbns_input( void )
{
	nbns_st	rxnbns;
	word	sts;
	byte	ret;

	ret = EVNT_NONE;
	enc_rxseek( pacinfo.proto_body );	/* �f�[�^���Ɉړ� */
	enc_readbuffer((byte *)&rxnbns, sizeof( rxnbns ));	/* �w�b�_�ǂݍ��� */
	sts = cnvendian16( rxnbns.status );
	if(( sts & WORD_MASK_L04 ) != 0U ){	/* �G���[ */
		return	EVNT_NBT_ERROR;
	}
	if( WORD_BIT15_CHK( sts ) == WORD_BIT_15 ){	/* ���X�|���X�p�P�b�g */
		ret = nbns_response( &rxnbns );
	}
	else if(( sts & OP_MASK ) == OP_QUERY ){	/* �₢���킹�p�P�b�g */
		if( pacinfo.proto_len == 50U ){		/* �v���͏��50�I�N�e�b�g�Œ�Ȃ̂� */
			ret = nbns_query( &rxnbns );	/* 50�I�N�e�b�g�ȊO�͖��� */
		}
	}

	return	ret;
}


/* end of nbns.c */
