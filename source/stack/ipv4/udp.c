/**
*	udp.c
*	UDP�w(�g�����X�|�[�g�w(RFC768))
*	User Datagram Protocol:IP���A�v���P�[�V�����Œ��ڎg����悤�ɂ���v���g�R��
*	Copyright (c)Junnichi Tomaru
*/
#include	"ipv4/ipv4.h"
#include	"driver/enc28j60.h"

/**
*	UDP�w���͏���
*	 in	�Ȃ�
*	out	0:����@0�ȊO:�G���[����
*/
byte	udp_input( void )
{
	byte	ret;
	char	buf[8];
	word	size, pnt, port;
	udp_st	rxudp;
	extern	byte	udp_command( );

	ret = EVNT_NONE;
	enc_readbuffer((byte *)&rxudp, UDPHDR_SIZE );	/* �w�b�_�ǂݍ��� */
	pacinfo.partport = cnvendian16( rxudp.srcport );	/* �|�[�g�ԍ��Q�b�g */
	pacinfo.myport = cnvendian16( rxudp.destport );
	size = cnvendian16( rxudp.length );		/* UDP���� */
	pacinfo.proto_len = size - UDPHDR_SIZE;

	pnt = ip_hdrlen + IP_TOP;	/* UDP�ʒu */
	if( rxudp.chksum != 0U ){	/* �`�F�b�N���� */
		pseudo_hdr.sipaddr = cnvendian32( pacinfo.partipaddr );	/* ���M��IP�A�h���X */
		pseudo_hdr.dipaddr = cnvendian32( pacinfo.myipaddr );	/* ����IP�A�h���X */
		pseudo_hdr.zero = 0;			/* �p�f�B���O(0) */
		pseudo_hdr.protocol = IPPROTO_UDP;	/* �v���g�R�� */
		pseudo_hdr.paclen = rxudp.length;	/* �v���g�R������ */
		if( tcpudp_sum( RX, pnt, size ) != 0U ){	/* �`�F�b�N�T������Ȃ� */
			return EVNT_UDP_RXSUMERR;
		}
	}
	pacinfo.proto_body = pnt + UDPHDR_SIZE;	/* �f�[�^�ʒu */
	port = pacinfo.myport;		/* ������|�[�g */
	if( port == UDP_NTP ){		/* NTP */
		ret = ntp_input( );
	}
	else if( port == UDP_TIME ){	/* TIME */
		ret = time_input( );
	}
	else if( port == UDP_DNSC ){	/* DNS CLIANT */
		ret = dns_input( );
	}
	else if( port == UDP_BOOTPC ){	/* DHCP */
		ret = dhcp_input( );
	}
	else if( port == UDP_NBNS ){	/* NetBIOS Name Service */
		ret = nbns_input( );
	}
	else if( port == UDP_RESET ){	/* ���Z�b�g�p�|�[�g */
		enc_rxseek( pacinfo.proto_body );	/* �f�[�^���Ɉړ� */
		enc_readbuffer((byte *)buf, 7 );	/* �R�}���h�ǂݍ��� */
		if( strncmp_P( buf, PSTR( "RESET\r\n" ), 7 ) == 0 ){	/* RESET�R�}���h */
			enc_txseek( UDP_DATA );
			size = enc_writebufc( PSTR( "REBOOT\r\n" ));	/* �m�F���� */
			ret = udp_output( size );
			_forever{}		/* WDT�^�C���A�b�v�҂� */
		}
	}
	else if( port == UDP_COMMAND ){	/* �R�}���h�p�|�[�g */
		ret = udp_command( );
	}

	return	ret;
}


/**
*	UDP�w�o�͏���
*	 in	�f�[�^��
*	out	0:����I���@1:ARP�^�C���A�E�g
*/
byte	udp_output( word len )
{
	word	sum;

	/* ���炩���߃f�[�^���Z�b�g���Ă��� */
	pacinfo.datasize = UDPHDR_SIZE + len;
	enc_txseek( UDP_TOP );
	enc_writebuf2( pacinfo.myport );	/* ���M���|�[�g */
	enc_writebuf2( pacinfo.partport );	/* ����|�[�g */
	enc_writebuf2( pacinfo.datasize );	/* �p�P�b�g�� */
	enc_writebuf2( 0U );			/* �`�F�b�N�T��(�v�Z�p) */
	/* �`�F�b�N�T���v�Z */
	pseudo_hdr.sipaddr = cnvendian32( myipaddr );
	pseudo_hdr.dipaddr = cnvendian32( pacinfo.partipaddr );
	pseudo_hdr.zero = 0;
	pseudo_hdr.protocol = IPPROTO_UDP;
	pseudo_hdr.paclen = cnvendian16( pacinfo.datasize );
	sum = tcpudp_sum( TX, UDP_TOP, pacinfo.datasize );	/* �`�F�b�N�T���v�Z */
	if( sum == WORD_DATA_ZERO ){	/* Sum 0000 -> FFFF */
		sum = WORD_DATA_MAX;
	}
	enc_txseek( UDP_SUM );		/* �`�F�b�N�T���ʒu */
	enc_writebuf2( sum );

	return	ip_output( IPPROTO_UDP );
}


/* end of udp.c */
