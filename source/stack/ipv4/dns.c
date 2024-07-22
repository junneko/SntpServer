/**
*	dns.c
*	Domain Name System (DNS):�K�w�����ꂽ�h���C��������IP�A�h���X�𓾂�(RFC 1035)
*	�N���C�A���g�̂ݑΉ�
*	Copyright (c)Junnichi Tomaru
*/
#include	"ipv4/ipv4.h"


/**
*	DNS���O�����v��
*	 in	�h���C���l�[��������
*	out	0:����I���@0�ȊO:�G���[����
*/
byte	dns_request( char *name )
{
	word	size;
	byte	d, len;
	char	*p, *q;

	pacinfo.partipaddr = dns_server;
	pacinfo.partport = UDP_DNS;
	pacinfo.myport = UDP_DNSC;
	size = 16U;	/* �h���C�����ȊO�̒��� */

	rslv_xid = (word)make_rand( );	/* �g�����U�N�V����ID���� */
	enc_txseek( UDP_DATA );
	enc_writebuf2( rslv_xid );	/* ID */
	enc_writebuf2( 0x0100 );	/* �X�e�[�^�X,�ċA�����v�� */
	enc_writebuf2( 1U );		/* Question�� */
	enc_writebuf2( 0U );		/* Answer�� */
	enc_writebuf2( 0U );		/* Authority�� */
	enc_writebuf2( 0U );		/* Additional�� */
	p = name;			/* Qname */
	_forever{
		q = p;
		for( len = 0; ; len++, q++ ){	/* ��؂蕶���܂ł̕������J�E���g */
			d = *q;
			if(( d == '.' ) || ( d == C_NULL )){
				break;
			}
		}
		enc_writebuf( len );	/* �����񒷂� */
		enc_writebuffer((byte *)p, len );	/* ������ */
		p = q + 1;		/* �|�C���^�X�V */
		size += ( len + 1 );	/* �����܂� */
		if( d == C_NULL ){	/* �I�[ */
			break;
		}
	}
	enc_writebuf( 0x00 );	/* �I�[�R�[�h(����0) */
	size++;
	enc_writebuf2( DNS_TYPE_HOSTNAME );	/* Qtype */
	enc_writebuf2( DNS_CLASS_INET );	/* Qclass */

	return	udp_output( size );
}


/**
*	���O�t�B�[���h�擾
*	 in	�i�[��o�b�t�@�|�C���^
*	out	�o�b�t�@�|�C���^
*/
static char	*dns_getname( char *buf )
{
	byte	i, d;
	char	*p;

	p = buf;
	_forever{
		d = enc_readbuf( );		/* �����܂��̓|�C���^ */
		if( d == 0 ){			/* ����0(�I��) */
			*( p - 1 ) = C_NULL;
			break;
		}
		if(( d & BYTE_MASK_U2 ) == 0xc0 ){	/* �|�C���^ */
			enc_readbuf( );		/* �ʒu���ǂݔ�΂��ďI�� */
			break;
		}
		for( i = 0; i < d; i++, p++ ){
			*p = enc_readbuf( );
		}
		*p = '.';
		p++;
	}

	return	buf;
}


/**
*	DNS����
*	 in	�Ȃ�
*	out	0:����I���@0�ȊO:�G���[����
*/
byte	dns_input( void )
{
	char	buf[32], tmp[32];
	dns_t	header;
	word	i, cnt;
	word	type, class, rdatalen;
	dword	ttl;

	enc_rxseek( pacinfo.proto_body );	/* �f�[�^���Ɉړ� */
	enc_readbuffer((byte *)&header, sizeof( header ));	/* �w�b�_�ǂݍ��� */
	if( cnvendian16( header.trid ) != rslv_xid ){	/* ID����Ȃ� */
		return	EVNT_NONE;
	}
	cnt = cnvendian16( header.question );	/* ����t�B�[���h��� */
	for( i = 0; i < cnt; i++ ){
		dns_getname( tmp );		/* ���O���� */
		type = enc_readbuf2( );		/* Qtype */
		class = enc_readbuf2( );	/* Qclass */
		if(( type == DNS_TYPE_HOSTNAME ) && ( class == DNS_CLASS_INET )){
			strcpy( buf, tmp );
		}
	}
	cnt = cnvendian16( header.answer );	/* �񓚃t�B�[���h��� */
	for( i = 0; i < cnt; i++ ){
		dns_getname( tmp );		/* ���O����(�|�C���^�̏ꍇ�̓X�L�b�v) */
		type = enc_readbuf2( );		/* Rtype */
		class = enc_readbuf2( );	/* Rclass */
		ttl = enc_readbuf4( );		/* TTL */
		rdatalen = enc_readbuf2( );	/* Rlen */
		if(( type == DNS_TYPE_HOSTNAME ) && ( class == DNS_CLASS_INET ) && ( rdatalen == DNS_RLEN_ADDR )){
			rslv_addr = enc_readbuf4( );
			cache_keep( buf, rslv_addr, ttl );
			break;
		}
		else{
			enc_skip( rdatalen );	/* �ǂݔ�΂� */
		}
	}

	return	EVNT_NONE;
}


/* end of dns.c */
