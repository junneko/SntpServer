/**
*	arp.c
*	ARP�������[�`���iOSI�Q�ƃ��f����2�w�i�f�[�^�����N�w�j�j
*	Address Resolution Protocol:IP�A�h���X����Ή�����MAC�A�h���X����������
*	Copyright (c)Junnichi Tomaru
*/
#include	"ipv4/ipv4.h"


/**
*	ARP�^�C�}�`�F�b�N	ver2.23.00
*	�P�b���ƂɌĂяo�����BARP�L���b�V���e�[�u���̃^�C�}�����Z��
*	�^�C���A�b�v�������̂�ARP�L���b�V����j������B
*	 in	�Ȃ�
*	out	�Ȃ�
*/
void	arp_timer( void )
{
	byte	i, j, p, flg;

	p = 255;	/* �O�ɋl�߂��Ȃ� */
	for( i = 0; i < ARP_CACHE_MAX; i++ ){
		flg = 0;
		if( arp_cache[i].flg == ARP_CACHE_DYNAMIC ){	/* �_�C�i�~�b�N */
			arp_cache[i].timer--;
			if( arp_cache[i].timer == 0UL ){	/* �^�C���A�b�v���� */
				arp_cache[i].flg = ARP_CACHE_NONE;
				p = i;		/* �V�����l�߂��� */
			}
			else if( p != 255 ){	/* �O�ɋl�߂��� */
				flg = 1;
			}
		}
		else if( arp_cache[i].flg == ARP_CACHE_STATIC ){	/* �X�^�e�B�b�N */
			if( p != 255 ){		/* �O�ɋl�߂��� */
				flg = 1;
			}
		}
		else{	/* �o�^�Ȃ�(ARP_CACHE_NONE) */
			p = i;		/* �O�ɋl�߂��� */
		}
		if( flg == 1 ){		/* �l�߂� */
			arp_cache[p] = arp_cache[i];	/* �R�s�[ */
			arp_cache[i].ipaddr = 0UL;	/* �������Ƃ���͏������� */
			for( j = 0; j < 6; j++ ){
				arp_cache[i].mac[j] = 0;
			}
			arp_cache[i].timer = 0UL;
			arp_cache[i].flg = ARP_CACHE_NONE;
			p = i;		/* �V�����l�߂��� */
		}
	}
}


/**
*	ARP�e�[�u���������[�`��
*	���M���IP�A�h���X���AMAC�A�h���X����������B
*	1.IP�u���[�h�L���X�g�̂Ƃ��́AMAC�A�h���X���u���[�h�L���X�g�Ƃ���
*	2.IP�A�h���X���l�b�g���[�N�O�̏ꍇ�́A�Q�[�g�E�F�C��MAC�A�h���X������
*	3.����ȊO�́AARP�L���b�V���e�[�u����茟���B
*	�e�[�u�����ŏ��Ɍ�������IP�A�h���X�ɑ΂���MAC�A�h���X���R�s�[����
*	�����Ƃ��͈���MAC�A�h���X�̓u���[�h�L���X�g�Ƃ��AARP�v�����o��
*	 in	�Ȃ�
*	out	0:��������(�܂��̓u���[�h�L���X�g��)
*		1:������Ȃ�����(�l�b�g���[�N��)
*		2:������Ȃ�����(�l�b�g���[�N�O)
*/
byte	arp_search( void )
{
	byte	i, ret, *p;
	dword	adr;
	arp_tb	*ap;

	ret = ARP_NFND;
	adr = pacinfo.partipaddr;	/* ���M��A�h���X */
	p = pacinfo.mac;
	if(( adr | netmask ) == IP_BROADCAST ){	/* �l�b�g���[�N���u���[�h�L���X�g */
		memset( p, 0xff, PHYSICALADDR_SIZE );
		return	ARP_FOUND;
	}
	else if(( adr & netmask ) != ( myipaddr & netmask )){
						/* �l�b�g���[�N�O��IP�A�h���X */
		adr = gateway;
		ret = ARP_NFNDG;
	}
	for( i = 0; i < ARP_CACHE_MAX; i++ ){	/* IP�A�h���X����MAC�A�h���X��T�� */
		ap = (arp_tb *)&arp_cache[i];
		if(( ap->flg == 1 ) && ( ap->ipaddr == adr )){	/* �������� */
			memcpy( p, (char *)ap->mac, PHYSICALADDR_SIZE );
			ret = ARP_FOUND;
			break;
		}
	}

	return	ret;
}


/**
*	ARP�����E�o�^���[�`��
*	ARP�L���b�V�������������A�o�^�ς�IP�A�h���X�Ȃ�㏑������B
*	(IP�A�h���X�������ŋ@�B���ς�����ꍇ�ȂǂɑΉ����āA��ɍŐV�̏�Ԃ�ێ�����)
*	 in	adr: �����IP�A�h���X
*		mac: �����MAC�A�h���X
*		�t���O: ARP_CACHE_NONE:���o�^���͖��� ARP_CACHE_DYNAMIC:���I�o�^ ARP_CACHE_STATIC:�ÓI�o�^
*	out	0:�o�^�ł��Ȃ����� 1:�o�^����
*/
byte	arp_keep( dword adr, byte *mac, byte flg )
{
	byte	i, p;
	arp_tb	*ap;

	/* --- �L���b�V�����̌��� --- */
	p = 0;
	for( i = 0; i < ARP_CACHE_MAX; i++ ){
		if( arp_cache[i].flg == flg ){
			if( arp_cache[i].ipaddr == adr ){	/* ����������A�������w�� */
				p = i;
				break;
			}
		}
	}
	/* --- �o�^���f --- */
	if( i == ARP_CACHE_MAX ){		/* �܂��L���b�V������Ă��Ȃ��������� */
		if( flg == ARP_CACHE_NONE ){	/* ���o�^�����o�^���Ȃ� */
			return	0;
		}
		/* --- �X�^�e�B�b�N�łȂ����̈ʒu�T�� --- */
		p = arp_tp;
		for( i = 0; i < ARP_CACHE_MAX; i++ ){
			if( arp_cache[i].flg != ARP_CACHE_STATIC ){
				break;
			}
			p++;		/* �|�C���^��i�߂� */
			p &= ARP_CACHE_MASK;
		}
		arp_tp = p;
		if( i == ARP_CACHE_MAX ){	/* �o�^�ł��Ȃ� */
			return	0;
		}
	}
	/* --- IP�A�h���X��MAC�A�h���X�̊֌W���L���b�V���e�[�u���ɕۊ� --- */
	ap = (arp_tb *)&arp_cache[p];	/* �|�C���^���o�� */
	memcpy((char *)ap->mac, mac, PHYSICALADDR_SIZE );	/* MAC�A�h���X�̃R�s�[ */
	ap->ipaddr = adr;		/* IP�A�h���X�̃R�s�[ */
	ap->timer = arp_timeout;	/* ARP�^�C�}�Z�b�g */
	if( flg == ARP_CACHE_NONE ){	/* �X�^�e�B�b�N�ȊO�̓_�C�i�~�b�N�œo�^ */
		ap->flg = ARP_CACHE_DYNAMIC;	/* ver2.23.00 */
	}
	else{
		ap->flg = flg;		/* ver2.23.00 */
	}

	return	1;
}


/**
*	ARP�e�[�u���폜���[�`��
*	 in	adr:IP�A�h���X
*	out	0:������Ȃ�����
*		1:��������(�폜����)
*/
byte	arp_delete( dword adr )
{
	byte	i, ret;

	ret = 0;
	for( i = 0; i < ARP_CACHE_MAX; i++ ){	/* IP�A�h���X����MAC�A�h���X��T�� */
		if( arp_cache[i].ipaddr == adr ){	/* �������� */
			arp_cache[i].flg = ARP_CACHE_NONE;
			ret = 1;
			break;
		}
	}

	return	ret;
}


/**
*	ARP�v���̑��M(���ꏈ���Ȃ̂ŁA�֐����ł��ׂď�������)
*	 in	partadr:�����IP�A�h���X
*	out	�Ȃ�
*/
void	arp_request( dword partadr )
{
	pacinfo.datasize = ARP_SIZE + ETHERHDR_SIZE;	/* ARP REQUEST���M�T�C�Y */

	enc_bankselect( 0 );
	enc_writereg16( EWRPT, TMPSTART + 1 );	/* �������ݐ擪(PPCB�͌�ŏ���) */

	enc_fillwrite( 0xff, PHYSICALADDR_SIZE );	/* ����MAC�A�h���X(�u���[�h�L���X�g) */
	enc_writebuffer( mac_address, PHYSICALADDR_SIZE );	/* ���M��MAC�A�h���X */
	enc_writebuf2( ARP_PROTOARP );		/* �C�[�T�l�b�g�^�C�v */
	enc_writebuf2( ARP_HWETHER );		/* �n�[�h�E�F�A�^�C�v */
	enc_writebuf2( ARP_PROTOIP );		/* �v�����v���g�R�� */
	enc_writebuf( PHYSICALADDR_SIZE );	/* �n�[�h�E�F�A�A�h���X�� */
	enc_writebuf( IPADDR_SIZE );		/* �v���g�R���A�h���X�� */
	enc_writebuf2( ARP_REQUEST );		/* �I�y���[�V�����R�[�h(ARP�v��) */
	enc_writebuffer( mac_address, PHYSICALADDR_SIZE );	/* ARP���M��MAC�A�h���X */
	enc_writebuf4( myipaddr );		/* ARP���M���A�h���X�R�s�[ */
	enc_fillwrite( 0x00, PHYSICALADDR_SIZE );	/* ARP����MAC�A�h���X */
	enc_writebuf4( partadr );		/* ARP��M��IP�A�h���X */

	enc_output( TMPSTART );			/* ENC28J60�֒��� */
}


/**
*	ARP����
*	 in	�Ȃ�
*	out	�Ȃ�
*/
static void	arp_reply( arp_st *rxarp )
{
	pacinfo.datasize = ARP_SIZE;
	enc_txseek( ETHERHDR_SIZE );	/* �������݊J�n�ʒu */
	enc_writebuf2( ARP_HWETHER );	/* �n�[�h�E�F�A�^�C�v */
	enc_writebuf2( ARP_PROTOIP );	/* �v�����v���g�R�� */
	enc_writebuf( PHYSICALADDR_SIZE );	/* �n�[�h�E�F�A�A�h���X�� */
	enc_writebuf( IPADDR_SIZE );	/* �v���g�R���A�h���X�� */
	enc_writebuf2( ARP_REPLY );	/* ARP���� */
	enc_writebuffer( mac_address, PHYSICALADDR_SIZE );	/* ARP���M��MAC�A�h���X */
	enc_writebuf4( myipaddr );	/* ���M��IP�A�h���X */
	enc_writebuffer( rxarp->srcmac, PHYSICALADDR_SIZE );
					/* ARP����MAC�A�h���X�R�s�[ */
	enc_writebuffer((byte *)&rxarp->sipaddr, IPADDR_SIZE );
					/* ����IP�A�h���X�͂��̂܂܃R�s�[ */

	ether_output( ETHERTYPE_ARP );	/* �C�[�T�l�b�g���� */
}


/**
*	ARP�p�P�b�g��M����
*	�{���͌����Ƀ`�F�b�N����ׂ������AROM�e�ʂ����Ȃ��̂ōŏ����ɂ���
*	 in	�Ȃ�
*	out	0:����(�����܂�)  2:IP�A�h���X�Ԃ����Ă�
*/
byte	arp_input( void )
{
	dword	sadr, dadr;
	word	op;
	arp_st	rx_arp;

	enc_readbuffer( (byte *)&rx_arp, ARP_SIZE );
	op = cnvendian16( rx_arp.opcode );	/* OP�R�[�h */
	sadr = cnvendian32( rx_arp.sipaddr );	/* ���M��IP�A�h���X */
	dadr = cnvendian32( rx_arp.dipaddr );	/* ����IP�A�h���X */
	if( cnvendian16( rx_arp.hwtype ) != ARP_HWETHER ){	/* �C�[�T�l�b�g�ł͂Ȃ� */
		return	ARP_OK;
	}
	else if( cnvendian16( rx_arp.protocol ) != ARP_PROTOIP ){	/* IP�ł͂Ȃ� */
		return	ARP_OK;
	}
	else if( dadr != myipaddr ){	/* �������ł͂Ȃ� */
		return	ARP_OK;
	}
	else if( strncmp((char *)rx_arp.destmac, (char *)mac_address, PHYSICALADDR_SIZE ) ){
		return	ARP_OK;		/* ������MAC ADDRESS�ł͂Ȃ� */
	}
	else if( sadr == myipaddr ){	/* �������痈���H */
		return	ARP_COL;
	}
	arp_keep( sadr, rx_arp.srcmac, ARP_CACHE_DYNAMIC );	/* �e�[�u���o�^ */
	if( op == ARP_REQUEST ){	/* ARP�v�����󂯂� */
		arp_reply( &rx_arp );	/* ARP���� */
	}

	return	ARP_OK;
}


/* end of arp.c */
