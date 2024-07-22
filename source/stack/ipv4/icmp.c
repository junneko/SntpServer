/*
*	icmp.c
*	ICMP�w(OSI�Q�ƃ��f����3�w�F�l�b�g���[�N�w)
*	Internet Control Message Protocol:�C���^�[�l�b�g��Q�ʒm
*	Copyright (c)Junnichi Tomaru
*/
#include	"ipv4/ipv4.h"


/**
*	ICMP�w���͏���
*	 in	�Ȃ�
*	out	0:���� 0�ȊO:�G���[����
*/
byte	icmp_input( void )
{
	word	sum;
	dword	opt;
	icmp_st	rxicmp;
	byte	ret;

	enc_rxseek( ICMP_TOP );
	enc_readbuffer((byte *)&rxicmp, ICMPHDR_SIZE );
	icmptype = rxicmp.type;		/* ���b�Z�[�W�^�C�v */
	icmpcode = rxicmp.code;		/* �R�[�h */
	sum = enc_rxchksum( ICMP_TOP, pacinfo.datasize );
	if( sum != 0U ){		/* �`�F�b�N�T������Ȃ� */
		enc_rxseek( ICMP_TOP + ICMPHDR_SIZE + 16 );	/* DST ADDR */
		icmpopt = enc_readbuf4( );	/*  */
		return	EVNT_ICMP_RXSUMERR;
	}
	if( icmptype != ICMP_TYPE_ECHOREQ ){	/* �G�R�[�v���ł͂Ȃ� */
		ret = EVNT_ICMP_MESSAGE;
		opt = cnvendian32( rxicmp.id );	/* �I�v�V���� */
		icmpopt = opt;
		if( icmptype == ICMP_TYPE_UNREACH ){	/* ����s���B�̏ꍇ�A�O�̂���ENC28J60������ */
			enc_init( );
		}
		else if( icmptype == ICMP_TYPE_REDIRECT ){	/* ���_�C���N�g�ʒm */
			if( icmpcode == ICMP_REDIRECT_HOST ){
				gateway = opt;
			}
		}
		return	ret;
	}
	/* ----- �G�R�[�������� ----- */
	enc_packetcopy( ICMP_TOP, ICMP_TOP, pacinfo.datasize );	/* �f�[�^���R�s�[���� */
	enc_txseek( ICMP_TOP );
	enc_writebuf( ICMP_TYPE_ECHOREPLY );	/* �G�R�[���� */
	enc_writebuf( 0 );			/* �R�[�h */
	enc_writebuf2( 0U );			/* �`�F�b�N�T��(�v�Z�p) */
	sum = enc_txchksum( ICMP_TOP, pacinfo.datasize );
						/* �`�F�b�N�T���v�Z */
	enc_txseek( ICMP_SUM );			/* �`�F�b�N�T���ʒu */
	enc_writebuf2( sum );

	return	ip_output( IPPROTO_ICMP );	/* �������M */
}


/* end of icmp.c */
