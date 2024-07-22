/**
*	dhcp.c
*	DHCP�N���C�A���g����(�A�v���P�[�V�����w:RFC1541)
*	Copyright (c)Junnichi Tomaru
*/
#include	"ipv4/ipv4.h"

/**
*	DHCP �����p�P�b�g���M
*	 in	�Ȃ�
*	out	0:����@0�ȊO:�G���[����
*/
byte	dhcp_discover( void )
{
	dhcp_mode = DHCP_DISCOVER;
	/* �p�P�b�g���Z�b�g */
	pacinfo.partipaddr = IP_BROADCAST;
	pacinfo.partport = UDP_BOOTPS;
	pacinfo.myport = UDP_BOOTPC;

	/* �e�l������ */
	myipaddr = netmask = 0L;
	gateway = dns_server = 0L;
	tmp_netmask = tmp_gateway = 0L;
	tmp_server = tmp_dns = 0L;
	tmp_renewal = tmp_rebind = tmp_lease = 0L;
	lease_time = tmp_rebind = tmp_renewal = 0UL;
	dhcp_cnt = 0;

	dhcp_xid = make_rand( );
	enc_txseek( UDP_DATA );		/* UDP�f�[�^�̐擪�� */
	enc_writebuf4( 0x01010600 );	/* �u�[�g�v��,�n�[�h�A�h���X,�n�[�h�A�h���X��,�z�b�v�J�E���g */
	enc_writebuf4( dhcp_xid );	/* �g�����U�N�V����ID */
	enc_writebuf4( 0x00008000 );	/* �b��,�t���O(�u���[�h�L���X�g) */
	enc_fillwrite( 0, 16U );	/* �`�Q�[�g�E�F�CIP�A�h���X */
	enc_writebuffer( mac_address, PHYSICALADDR_SIZE );	/* ������MAC�A�h���X */
	enc_fillwrite( 0, 202U );	/* �c��10��+�T�[�o�[�z�X�g��,�N���t�@�C���� */
	enc_writebuf4( BOOTP_MAGICCOOKIE );	/* �}�W�b�N�R�[�h */
	enc_writebuf2( BOOTP_MESSAGE );
	enc_writebuf( DHCP_DISCOVER );	/* 01 �f�B�X�J�o�[ */
	enc_writebuf( DHCP_CLIANTID );	/* 61 �N���C�A���gID */
	enc_writebuf( DHCP_CLIANTIDLEN );
	enc_writebuf( 1 );		/* �n�[�h�E�F�A�^�C�v */
	enc_writebuffer( mac_address, PHYSICALADDR_SIZE );
	enc_writebuf( BOOTP_MSGSTOPPER );	/* �X�g�b�p�[ */
	enc_fillwrite( 0, 47U );	/* �c���0�Ŗ��߂� */

	return	udp_output( DHCPMSG_SIZE );
}


/**
*	DHCP �v���p�P�b�g���M
*	 in	���[�h
*	out	0:����@0�ȊO:�G���[����
*/
byte	dhcp_request( byte mode )
{
	byte	cnt, len;
	word	flg;

	dhcp_mode = mode;
	pacinfo.partipaddr = ( mode != DHCP_RENEWING )? IP_BROADCAST: tmp_server;
	if( mode != DHCP_REQUEST ){	/* RENEWING,REBINDING�̂Ƃ� */
		dhcp_xid = make_rand( );
	}
	len = (byte)strlen( nbns_name ) + 1;
	pacinfo.partport = UDP_BOOTPS;
	pacinfo.myport = UDP_BOOTPC;

	enc_txseek( UDP_DATA );		/* UDP�f�[�^�̐擪�� */
	enc_writebuf4( 0x01010600 );	/* �u�[�g�v��,�n�[�h�A�h���X,�n�[�h�A�h���X��,�z�b�v�J�E���g */
	enc_writebuf4( dhcp_xid );	/* �g�����U�N�V����ID(REQUEST���͔����p�P�b�g�Ɠ���) */
	enc_writebuf2( 0U );		/* �b�� */
	flg = ( mode == DHCP_RENEWING )? WORD_DATA_ZERO: WORD_BIT_15;
	enc_writebuf2( flg );		/* �t���O(���j�L���X�g:0000 �u���[�h�L���X�g:8000) */
	enc_writebuf4( myipaddr );	/* �N���C�A���gIP�A�h���X */
	enc_fillwrite( 0, 12U );	/* ���蓖�ā`�Q�[�g�E�F�CIP�A�h���X */
	enc_writebuffer( mac_address, PHYSICALADDR_SIZE );	/* ������MAC�A�h���X */
	enc_fillwrite( 0, 202U );	/* �c��10��+�T�[�o�[�z�X�g��,�N���t�@�C���� */
	enc_writebuf4( BOOTP_MAGICCOOKIE );	/* �}�W�b�N�R�[�h */
	enc_writebuf2( BOOTP_MESSAGE );
	enc_writebuf( DHCP_REQUEST );	/* 03 ���N�G�X�g */
	enc_writebuf( DHCP_HOSTNAME );	/* 12 �z�X�g�� */
	enc_writebuf( len );
	enc_writebuffer( (byte *)nbns_name, len );	/* \0�܂ŏ��� */
	if( mode == DHCP_REQUEST ){
		enc_writebuf( DHCP_REQIPADDR );	/* 50 ���N�G�X�gIP�A�h���X */
		enc_writebuf( DHCP_REQIPADDRLEN );
		enc_rxseek( pacinfo.proto_body + 16 );
		enc_writebuf4( enc_readbuf4( ) );	/* ���[�U�[IP�A�h���X������ */
		enc_writebuf( DHCP_SERVERID );	/* 54 �T�[�oID */
		enc_writebuf( DHCP_SERVERIDLEN );
		enc_writebuf4( tmp_server );
		cnt = 25;
	}
	else if( mode == DHCP_REBOOTING ){
		enc_writebuf( DHCP_REQIPADDR );	/* 50 ���N�G�X�gIP�A�h���X */
		enc_writebuf( DHCP_REQIPADDRLEN );
		enc_writebuf4( tmp_ipaddr );	/* ���[�U�[IP�A�h���X������ */
		cnt = 27;
	}
	else{		/* RENEWING,REBINDING�̂Ƃ� */
		cnt = 33;
	}
	cnt -= len;	/* �z�X�g�������� */
	enc_writebuf( DHCP_PRMREQLIST );	/* 55 �p�����[�^���N�G�X�g */
	enc_writebuf( DHCP_PRMREQLISTLEN );	/* ���ڌ�(��) */
	enc_writebuf( DHCP_SUBNETMASK );	/* 01 �l�b�g�}�X�N */
	enc_writebuf( DHCP_ROUTER );		/* 03 ���[�^ */
	enc_writebuf( DHCP_DNSID );		/* 06 DNS�T�[�o */
	enc_writebuf( DHCP_LEASETIME );		/* 51 ���[�X���� */
	enc_writebuf( DHCP_RENEWALTIME );	/* 58 RENEWAL���� */
	enc_writebuf( DHCP_REBINDTIME );	/* 59 REBIND���� */
	enc_writebuf( DHCP_IPTTL );		/* 23 TTL�����l */
	enc_writebuf( DHCP_ARPTIMEOUT );	/* 35 ARP�^�C���A�E�g */

	enc_writebuf( DHCP_CLIANTID );		/* 61 �N���C�A���gID */
	enc_writebuf( DHCP_CLIANTIDLEN );
	enc_writebuf( 1 );			/* �n�[�h�E�F�A�^�C�v */
	enc_writebuffer( mac_address, PHYSICALADDR_SIZE );	/* ������MAC�A�h���X */
	enc_writebuf( BOOTP_MSGSTOPPER );	/* �X�g�b�p�[ */
	enc_fillwrite( 0, cnt );		/* �c���0�Ŗ��߂� */

	return	udp_output( DHCPMSG_SIZE );
}


/**
*	DHCP ���ۃp�P�b�g���M
*	 in	�Ȃ�
*	out	0:����@0�ȊO:�G���[����
*/
byte	dhcp_decline( void )
{
	pacinfo.partipaddr = tmp_server;	/* DHCP�T�[�o�� */
	pacinfo.partport = UDP_BOOTPS;
	pacinfo.myport = UDP_BOOTPC;

	enc_txseek( UDP_DATA );		/* UDP�f�[�^�̐擪�� */
	enc_writebuf4( 0x01010600 );	/* �u�[�g�v��,�n�[�h�A�h���X,�n�[�h�A�h���X��,�z�b�v�J�E���g */
	dhcp_xid = make_rand( );
	enc_writebuf4( dhcp_xid );	/* �g�����U�N�V����ID */
	enc_writebuf2( 0U );		/* �b�� */
	enc_writebuf2( 0x0000 );	/* �t���O(���j�L���X�g) */
	enc_writebuf4( 0x00000000 );	/* �N���C�A���gIP�A�h���X */
	enc_fillwrite( 0, 12U );	/* ���蓖�ā`�Q�[�g�E�F�CIP�A�h���X */
	enc_writebuffer( mac_address, PHYSICALADDR_SIZE );	/* ������MAC�A�h���X */
	enc_fillwrite( 0, 202U );	/* �c��10��+�T�[�o�[�z�X�g��,�N���t�@�C���� */
	enc_writebuf4( BOOTP_MAGICCOOKIE );	/* �}�W�b�N�R�[�h */
	enc_writebuf2( BOOTP_MESSAGE );
	enc_writebuf( DHCP_DECLINE );	/* 04 ���� */
	enc_writebuf( DHCP_REQIPADDR );	/* 50 ���N�G�X�gIP�A�h���X */
	enc_writebuf( DHCP_REQIPADDRLEN );
	enc_writebuf4( myipaddr );	/* ���[�U�[IP�A�h���X������ */
	enc_writebuf( DHCP_SERVERID );	/* 54 �T�[�oID */
	enc_writebuf( DHCP_SERVERIDLEN );
	enc_writebuf4( tmp_server );
	enc_writebuf( BOOTP_MSGSTOPPER );	/* �X�g�b�p�[ */
	enc_fillwrite( 0, 44U );	/* �c���0�Ŗ��߂� */

	return	udp_output( DHCPMSG_SIZE );
}


/**
*	�x���_�[�d�l���̌���
*	 in	�Ȃ�
*	out	TRUE:�I�v�V����OK FALSE:���������Ƃ��낪����(���Ȃ���)
*/
static bool	dhcp_searchoption( void )
{
	byte	d, e;
	bool	ret;
	dword	dw;

	enc_rxseek( pacinfo.proto_body + BOOTPMAIN_SIZE + 4 );	/* �I�v�V�����擪�� */
	ret = FALSE;
	_forever{
		d = enc_readbuf( );	/* �R�[�h */
		if( d == BOOTP_MSGSTOPPER ){	/* �I�[ */
			ret = TRUE;
			break;
		}
		e = enc_readbuf( );	/* ���� */
		if( d == DHCP_MESSAGETYPE ){	/* ���b�Z�[�W�̎�� */
			if( e == DHCP_MESSAGETYPELEN ){
				dhcp_msgtype = enc_readbuf( );
			}
			else{
				break;
			}
		}
		else if( d == DHCP_SUBNETMASK ){	/* �T�u�l�b�g�}�X�N */
			if( e == DHCP_SUBNETMASKLEN ){
				tmp_netmask = enc_readbuf4( );
			}
			else{
				break;
			}
		}
		else if( d == DHCP_ROUTER ){	/* ���[�^ */
			if( e >= DHCP_ROUTERLEN ){	/* ���� */
				tmp_gateway = enc_readbuf4( );	/* ��Ԑ������̗p */
				if( e > DHCP_ROUTERLEN ){	/* �ŏ��̈ȊO�͓ǂݔ�΂� */
					enc_skip( e - DHCP_ROUTERLEN );
				}
			}
			else{
				break;
			}
		}
		else if( d == DHCP_SERVERID ){	/* DHCP�T�[�o */
			if( e >= DHCP_SERVERIDLEN ){
				tmp_server = enc_readbuf4( );	/* ��Ԑ������̗p */
				if( e > DHCP_SERVERIDLEN ){	/* �ŏ��̈ȊO�͓ǂݔ�΂� */
					enc_skip( e - DHCP_SERVERIDLEN );
				}
			}
			else{
				break;
			}
		}
		else if( d == DHCP_DNSID ){	/* DNS�T�[�o */
			if( e >= DHCP_DNSIDLEN ){
				tmp_dns = enc_readbuf4( );
				if( e > DHCP_DNSIDLEN ){	/* �ŏ��̈ȊO�͓ǂݔ�΂� */
					enc_skip( e - DHCP_DNSIDLEN );
				}
			}
			else{
				break;
			}
		}
		else if( d == DHCP_LEASETIME ){	/* ���[�X���� */
			if( e == DHCP_LEASETIMELEN ){
				dw = enc_readbuf4( );
				tmp_lease = dw;	/* ���[�X����(EXPIRE) */
				if( tmp_rebind == 0UL ){
					tmp_rebind = (dword)( dw * 875L / 1000L );
					/* ���[�X���Ԃ�87.5%��REBIND����(T2) */
				}
				if( tmp_renewal == 0UL ){
					tmp_renewal = dw >> 1;	/* 1/2 */
					/* ���[�X���Ԃ�50%��RENEWAL����(T1) */
				}
			}
		}
		else if( d == DHCP_RENEWALTIME ){	/* RENEWAL(T1) */
			if( e == DHCP_RENEWALTIMELEN ){
				tmp_renewal = enc_readbuf4( );	/* ���łɐݒ肳��Ă��Ă��㏑�� */
			}
			else{
				break;
			}
		}
		else if( d == DHCP_REBINDTIME ){	/* REBIND(T2) */
			if( e == DHCP_REBINDTIMELEN ){
				tmp_rebind = enc_readbuf4( );	/* ���łɐݒ肳��Ă��Ă��㏑�� */
			}
			else{
				break;
			}
		}
		else if( d == DHCP_IPTTL ){		/* IP��TTL�����l */
			if( e == DHCP_IPTTLLEN ){	/*  */
				ip_ttl = enc_readbuf( );
			}
			else{
				enc_skip( e );
			}
		}
		else if( d == DHCP_ARPTIMEOUT ){	/* ARP�^�C���A�E�g */
			if( e == DHCP_ARPTIMEOUTLEN ){	/*  */
				arp_timeout = enc_readbuf4( );
			}
			else{
				break;
			}
		}
		else if( d == DHCP_IPTTL ){		/* IP��TTL�����l */
			if( e == DHCP_IPTTLLEN ){	/*  */
				ip_ttl = enc_readbuf( );
			}
			else{
				enc_skip( e );
			}
		}
		else if( d == DHCP_ARPTIMEOUT ){	/* ARP�^�C���A�E�g */
			if( e == DHCP_ARPTIMEOUTLEN ){	/*  */
				arp_timeout = enc_readbuf4( );
			}
			else{
				break;
			}
		}
		else{	/* �֌W�Ȃ��͓̂ǂݔ�΂� */
			enc_skip( e );
		}
	}

	return	ret;
}


/**
*	DHCP�m�菈��
*	 in	�Ȃ�
*	out	�Ȃ�
*/
static byte	dhcp_ackseq( void )
{
	word	wt;
	byte	sts;
	ether_t	tmp;	/* �ޔ�p */
	extern byte	disppage;

	dhcp_mode = DHCP_BOUND;
	enc_rxseek( pacinfo.proto_body + 16 );	/* ���[�UIP�A�h���X�ʒu */
	myipaddr = enc_readbuf4( );
	eeprom_update_dword((uint32_t *)EEP_IPTMP, myipaddr );	/* �ۑ� */
	netmask = tmp_netmask;
	gateway = tmp_gateway;
	dns_server = tmp_dns;
	renewal_time = tmp_renewal;
	rebind_time = tmp_rebind;
	lease_time = tmp_lease;

	if( lease_time == LD_MAX ){	/* �������[�X */
		dhcpcnten = off;
	}
	tmp = pacinfo;			/* �㏑������邽�߃o�b�N�A�b�v */
	arp_request( myipaddr );	/* Gratuitous ARP */
	/* ----- wait_arpreply( ) ARP�v���ɑ΂��鉞����҂� ----- */
	enc_setnextpoint( );		/* �p�P�b�g���󂯎���悤�ɂ��邽�� */
	wt = getcount1ms( );
	_forever{			/* ARP�����҂� */
		wdt_reset( );		/* WDT�̍X�V */
		sts = ether_input( );
		if( sts == ETHER_RXIP ){	/* �������Ă��܂������ǖ��� */
			enc_setnextpoint( );
		}
		else if( sts == ETHER_COL ){	/* �Ԃ����� */
			sts = dhcp_decline( );	/* ���� */
			if( sts != EVNT_NONE ){
				break;
			}
			sts = dhcp_discover( );	/* ���Ȃ��� */
			break;
		}
		if(( getcount1ms( ) - wt ) >= 100U ){	/* �^�C�}�؂�(����) */
			if(( disppage == 1 ) || ( disppage == 2 )){/* �l�b�g���[�N�\����� */
				redrawflg = on;
			}
			sts = EVNT_NONE;
			break;
		}
	}
	pacinfo = tmp;		/* ���M���ɂ��ǂ� */

	return	sts;
}


/**
*	DHCP���͏���
*	 in	�Ȃ�
*	out	0:����@0�ȊO:�G���[����
*/
byte	dhcp_input( void )
{
	byte	ret = EVNT_NONE;

	if(( dhcp_mode == DHCP_ABORT ) || ( dhcp_mode == DHCP_BOUND )){	/* �����܂��̓��[�X�� */
		return	EVNT_NONE;
	}
	if( dhcp_searchoption( ) == FALSE ){	/* �I�v�V���� */
		return	dhcp_discover( );	/* ���Ȃ��� */
	}
	enc_rxseek( pacinfo.proto_body + 4 );
	if( dhcp_mode == DHCP_DISCOVER ){	/* DISCOVER�� */
		if( dhcp_msgtype == DHCP_OFFER ){	/* �񋟃p�P�b�g��M */
			if( enc_readbuf4( ) == dhcp_xid ){	/* �����ꍇ�����̗p */
				ret = dhcp_request( DHCP_REQUEST );
			}
			else{
				ret = EVNT_DHCP_RCVERROR;
			}
		}
		else{
			ret = EVNT_DHCP_RCVERROR;
		}
	}
	else{	/* REQUEST�� */
		if( dhcp_msgtype == DHCP_PACK ){	/* �m�F�m�艞�� */
			if( enc_readbuf4( ) == dhcp_xid ){	/* �����ꍇ�����̗p */
				ret = dhcp_ackseq( );
			}
			else{
				ret = EVNT_DHCP_RCVERROR;
			}
		}
		else if( dhcp_msgtype == DHCP_PNAK ){	/* �m�F�ے艞�� */
			ret = EVNT_DHCP_NAK;
			if( enc_readbuf4( ) == dhcp_xid ){	/* �����ꍇ�����̗p */
				ret = dhcp_discover( );	/* ���Ȃ��� */
			}
			else{
				ret = EVNT_DHCP_RCVERROR;
			}
		}
		else{
			ret = EVNT_DHCP_RCVERROR;
		}
	}

	return	ret;
}


/**
*	���[�X���ԃJ�E���g�E�Đ\��
*	 in	�Ȃ�
*	out	0:����I���@0�ȊO:�G���[����
*/
byte	dhcp_sequense( void )
{
	extern struct tm	world_time;
	byte	ret;

	ret = EVNT_NONE;
	if( dhcpcnten == off ){		/* DHCP�J�E���g���Ȃ� */
		odcvr_time = world_time;
		goto DHCP_SEQEND;
	}
	/* ----- ��M���� ----- */
	if(( dhcp_mode == DHCP_DISCOVER ) || ( dhcp_mode == DHCP_REBOOTING )
		 || ( dhcp_mode == DHCP_RENEWING ) || ( dhcp_mode == DHCP_REBINDING )){
		ddcrem = _difftime( dinterval, calc_timediff( &odcvr_time, &world_time ));
		if( ddcrem <= 0L ){	/* ���g���C */
			if( dhcp_mode == DHCP_DISCOVER ){	/*  */
				ret = dhcp_discover( );
			}
			else if( dhcp_mode == DHCP_REBOOTING ){	/*  */
				dhcp_cnt++;
				if( dhcp_cnt >= 3 ){	/* ���߂�DISCOVER�Ɉڍs */
					ret = dhcp_discover( );
				}
				else{	/* �O�Ɠ���IP�A�h���X��\�����Ă݂� */
					ret = dhcp_request( DHCP_REBOOTING );
				}
			}
			else{	/* RENEWING, REBINDING */
				ret = dhcp_request( dhcp_mode );
			}
			odcvr_time = world_time;
		}
	}
	/* ----- ���[�X�^�C���J�E���g�� T1<T2<LT ----- */
	if(( lease_time != 0L ) && ( lease_time != LD_MAX )){
		if( renewal_time != 0L ){	/* T1�J�E���g�� */
			renewal_time--;
			rebind_time--;
			lease_time--;
			if( renewal_time == 0L ){	/* T1(RENEWING)�o�� */
				ret = dhcp_request( DHCP_RENEWING );	/* �Đ\�� */
				if( ret == EVNT_NONE ){	/* ����̂Ƃ��̓��b�Z�[�W */
					ret = EVNT_DHCP_RENEWAL;
				}
			}
			goto DHCP_SEQEND;
		}
		else if( rebind_time != 0L ){	/* T2�J�E���g�� */
			rebind_time--;
			lease_time--;
			if( rebind_time == 0L ){	/* T2(REBIND)�o�� */
				ret = dhcp_request( DHCP_REBINDING );	/* �Đ\�� */
				if( ret == EVNT_NONE ){	/* ����̂Ƃ��̓��b�Z�[�W */
					ret = EVNT_DHCP_REBIND;
				}
			}
			goto DHCP_SEQEND;
		}
		lease_time--;
		if( lease_time == 0L ){		/* ���[�X���Ԍo�� */
			ret = dhcp_discover( );	/* ���Ȃ��� */
			if( ret == EVNT_NONE ){	/* ����̂Ƃ��̓��b�Z�[�W */
				ret = EVNT_DHCP_EXPIRE;
			}
		}
	}
DHCP_SEQEND:

	return	ret;
}


/* end of dhcp.c */
