/*
*	ethernet.c
*	�C�[�T�l�b�g�w�������[�`��(�n�r�h�Q�ƃ��f����Q�w:�f�[�^�����N�w)
*	Copyright (c)Junnichi Tomaru
*/
#include	"ipv4/ipv4.h"


/**
*	�C�[�T�l�b�g���͏���(�C�[�T�l�b�g�w�b�_����)
*	 in	�Ȃ�
*	out	0:�����I�� 1:IP�p�P�b�g��M 2:��M�G���[
*/
byte	ether_input( void )
{
	struct	ETHHDR_T{
		byte	destmac[6];	/* ����MAC�A�h���X */
		byte	srcmac[6];	/* ���M��MAC�A�h���X */
		word	ethertype;	/* �C�[�T�l�b�g�^�C�v */
	} ethhdr_t;
	word	type;
	byte	ret;

	if( enc_input( (byte *)&ethhdr_t ) == 0 ){	/* ���͖��� */
		return	ETHER_OK;
	}

	memcpy((byte *)pacinfo.mac, (byte *)ethhdr_t.srcmac, PHYSICALADDR_SIZE );
	type = cnvendian16( ethhdr_t.ethertype );	/* �v���g�R���^�C�v */
	ret = ETHER_OK;
	if( type == ETHERTYPE_IP ){	/* IP�v���g�R�� */
		ret = ETHER_RXIP;
	}
	else if( type == ETHERTYPE_ARP ){	/* ARP�v���g�R�� */
		ret = arp_input( );
		enc_setnextpoint( );	/* �����I��������� */
	}
	else{				/* �֌W�Ȃ��v���g�R�� */
		enc_setnextpoint( );
	}

	return	ret;
}


/**
*	�C�[�T�l�b�g�o�͏���(�w�b�_�̃Z�b�g)
*	 in	point:���M�f�[�^�J�n�ʒu
*		 type:�C�[�T�l�b�g�^�C�v
*	out	�Ȃ�
*/
void	ether_output( word type )
{
	pacinfo.datasize += ETHERHDR_SIZE;
	enc_txseek( ETHER_TOP );
	enc_writebuffer( pacinfo.mac, PHYSICALADDR_SIZE );	/* ����MAC�A�h���X�R�s�[ */
	enc_writebuffer( mac_address, PHYSICALADDR_SIZE );	/* ���M��MAC�A�h���X�̃R�s�[ */
	enc_writebuf2( type );		/* �C�[�T�l�b�g �v���g�R���^�C�v */
	enc_output( TXSTART );
}


/* end of ethernet.c */
