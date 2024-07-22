/**
*	time.c
*	Time Protocol: �����v���g�R�� RFC868
*	Copyright (c)Junnichi Tomaru
*/
#include	"ipv4/ipv4.h"

/**
*	TIME����
*	 in	�Ȃ�
*	out	0:����I���@0�ȊO:�G���[����
*/
byte	time_input( void )
{
	time_t	utc;
	byte	ret;

	ret = EVNT_NONE;
	if( synchronized == off ){	/* �������Ă��Ȃ� */
		return	ret;
	}
	enc_txseek( UDP_DATA );
	_di( );
	utc = utc_sec + TIME_CONST;	/* UTC��NTP���ԕϊ�(70�N���̕b���𑫂�) */
	_ei( );
	enc_writebuf4( utc );		/* �^�C���X�^���v */
	ret = udp_output( 4U );

	return	ret;
}


/* end of time.c */
