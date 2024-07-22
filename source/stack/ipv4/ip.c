/**
*	IP�w(OSI�Q�ƃ��f����3�w�F�l�b�g���[�N�w  RFC791,RFC919,RFC922)
*	Internet Protocol:�o�H����̂��߂̃A�h���X�\����p�P�b�g�̕����E�č\���Ȃ�
*	Copyright (c)Junnichi Tomaru
*/
#include	"ipv4/ipv4.h"


/**
*	IP�w���͏���
*	 in	�Ȃ�
*	out	0:�ȍ~�̏����Ȃ� 1:ENC RXERR 2-4:��������
*/
byte	ip_input( void )
{
	byte	ret, opt, flg;
	dword	dip, bld;
	ip_st	rxip;

	flg = ether_input( );
	if( flg == 0 ){			/* �C�[�T�l�b�g�w���� */
		return	RCV_NONE;
	}
	else if( flg == 2 ){		/* ��M�G���[ */
		return	EVNT_ENC_RXRCVERR;
	}
	if( enc_rxchksum( IP_TOP, IPHDR_SIZE ) != 0U ){	/* �`�F�b�N�T������Ȃ����� */
		enc_setnextpoint( );	/* ���܂�ɂ�SUMERR�����̂��߁A���O�}������ */
		return	RCV_NONE;
	}
	enc_rxseek( IP_TOP );
	enc_readbuffer((byte *)&rxip, IPHDR_SIZE );	/* IP�w�b�_�ǂݍ��� */
	dip = cnvendian32( rxip.dipaddr );
	bld = dip | netmask;
	if(( rxip.ipver & BYTE_MASK_U4 ) != 0x40 ){	/* IPv4���ǂ����̃`�F�b�N */
		enc_setnextpoint( );
		return	RCV_NONE;
	}
	flg = 0;
	if( dip == myipaddr ){		/* �������H */
		flg = 1;
	}
	else if( bld == IP_BROADCAST ){	/* �l�b�g���[�N���u���[�h�L���X�g */
		flg = 1;
	}
	else if( dip == IP_BROADCAST ){	/* IP�w�u���[�h�L���X�g */
		flg = 1;
	}
	ret = RCV_NONE;
	if( flg == 1 ){
		ip_hdrlen = ( rxip.ipver & BYTE_MASK_L4 ) * 4;
		pacinfo.datasize = cnvendian16( rxip.length );	/* IP�p�P�b�g���� */
		pacinfo.datasize -= ip_hdrlen;		/* �w�b�_������ */
		pacinfo.partipaddr = cnvendian32( rxip.sipaddr );
		pacinfo.myipaddr = dip;
		if( ip_hdrlen > IPHDR_SIZE ){		/* �I�v�V���������� */
			opt = ip_hdrlen - IPHDR_SIZE;
			enc_skip( opt );		/* �ǂݔ�΂� */
		}
		arp_keep( pacinfo.partipaddr, pacinfo.mac, ARP_CACHE_NONE );	/* ARP�L���b�V���o�^ */
		if( rxip.protocol == IPPROTO_ICMP ){		/* ICMP */
			ret = RCV_ICMP;
		}
		else if( rxip.protocol == IPPROTO_UDP ){	/* UDP */
			ret = RCV_UDP;
		}
		else if( rxip.protocol == IPPROTO_TCP ){	/* TCP */
			ret = RCV_TCP;
		}
		else{
			enc_setnextpoint( );
		}
	}
	else{
		enc_setnextpoint( );
	}

	return	ret;
}


/**
*	IP�w�o�͏���
*	 in	protocol:��ʃv���g�R��
*	out	0:����I���@1:ARP�^�C���A�E�g
*/
byte	ip_output( byte protocol )
{
	word	sum, wait_timer;
	byte	sts, ret;
	ether_t	tmp;		/* �ޔ�p */

	pacinfo.datasize += IPHDR_SIZE;	/* IP�w�b�_������ */
	enc_txseek( IP_TOP );		/* �������݊J�n�ʒu */
	enc_writebuf2( 0x4500 );	/* IPv4���w�b�_��(20�o�C�g),TOS */
	enc_writebuf2( pacinfo.datasize );	/* �S�̒� */
	enc_writebuf2( ip_identifer );	/* ���ʎq */
	enc_writebuf2( 0x4000 );	/* �t���O,�I�t�Z�b�g:�����s�\ */
	enc_writebuf( ip_ttl );		/* �������� */
	enc_writebuf( protocol );	/* �v���g�R�� */
	enc_writebuf2( 0U );		/* �v�Z�p�Ȃ̂łO */
	enc_writebuf4( myipaddr );	/* ���M��IP */
	enc_writebuf4( pacinfo.partipaddr );	/* ����IP */
	sum = enc_txchksum( ETHERHDR_SIZE, IPHDR_SIZE );	/* �w�b�_�`�F�b�N�T���v�Z */
	enc_txseek( IP_SUM );		/* �`�F�b�N�T���ʒu�ړ� */
	enc_writebuf2( sum );
	ret = EVNT_NONE;
	sts = arp_search( );		/* ARP�e�[�u������ */
	if( sts != ARP_FOUND ){		/* �e�[�u���ɓo�^������ */
		tmp = pacinfo;		/* �㏑������邽�߃o�b�N�A�b�v */
		if( sts == ARP_NFNDG ){	/* �Q�[�g�E�F�C��MAC��v�� */
			arp_request( gateway );
		}
		else{
			arp_request( pacinfo.partipaddr );	/* ARP�v�����o�� */
		}
		/* ----- wait_arpreply( ) ARP�v���ɑ΂��鉞����҂� ----- */
		enc_setnextpoint( );	/* �p�P�b�g���󂯎���悤�ɂ��邽�� */
		wait_timer = getcount1ms( );
		_forever{		/* ARP�����҂� */
			wdt_reset( );	/* WDT�̍X�V */
			if( ether_input( ) != ETHER_OK ){	/* �����Ԃ��Ă���Ƃ����O��� */
				enc_setnextpoint( );
			}
			if( arp_search( ) == ARP_FOUND ){	/* �������� */
				break;
			}
			if(( getcount1ms( ) - wait_timer ) >= arp_reqtimeout ){	/* �^�C�}�؂�(1�b) */
				ret = EVNT_ARP_TIMEOUT;
				break;
			}
		}
		pacinfo = tmp;		/* ���M���ɂ��ǂ� */
	}
	if( ret == EVNT_NONE ){
		ether_output( ETHERTYPE_IP );	/* �C�[�T�l�b�g�w�� */
	}
	ip_identifer++;

	return	ret;
}


/**
*	TCP�����UDP�̃`�F�b�N�T���v�Z
*	 in	   dir:����
*		offset:�I�t�Z�b�g
*		  size:�v�Z�̈�T�C�Y
*	out	�v�Z����
*/
word	tcpudp_sum( byte dir, word offset, word size )
{
	byte	i, *p;
	word	tmp;
	ui_t	t;
	dword_t	ret;

	ret.data = 0U;
	p = (byte *)&pseudo_hdr;	/* �[���w�b�_�𑫂� */
	for( i = 0; i < 6; i++ ){	/* �Q�o�C�g�����Z(2*6=12) */
		t.bytes.hi = *p;
		p++;
		t.bytes.lo = *p;
		p++;
		ret.data += t.data;
	}
	if( dir == TX ){
		enc_bankselect( ENC_BANK0 );
		tmp = offset + TXSTART + PPCB_SIZE;
		enc_writereg16( ERDPT, tmp );
	}
	else{
		enc_rxseek( offset );
	}
	ret.data += enc_addsum( size );	/* ENC�o�b�t�@���̉��Z */
	if( ret.data >= 0x10000UL ){	/* �I�[�o�[������ */
		tmp = ret.words.hi;
		ret.words.hi = 0U;	/* ����16bit�}�X�N�Ɠ��� */
		ret.data += tmp;	/* �L�������𑫂� */
		if( ret.data >= 0x10000UL ){	/* �I�[�o�[������ */
			ret.words.lo++;	/* �L�������𑫂�(3��ȏ�̓I�[�o�[���Ȃ�) */
		}
	}

	return	_invert( ret.words.lo );
}


/* end of ip.c */
