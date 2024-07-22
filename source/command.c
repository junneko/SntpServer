/**
*	KDB-SNTP-SERVER	�R�}���h����
*	Copyright (c)Junnichi Tomaru
*/
#include	"include/avrntp.h"

/**
*	UDP�R�}���h����
*	 in	�Ȃ�
*	out	�X�e�[�^�X
*/
byte	udp_command( void )
{
	byte	buf[16], tmp[16], mac[8];
	byte	i, j, d;
	dword	adr;
	word	size;

	enc_rxseek( pacinfo.proto_body );	/* �f�[�^���Ɉړ� */
	enc_txseek( UDP_DATA );			/* ���MUDP�f�[�^�擪�ʒu */

	/* ----- ��� ----- */
	enc_readbuffer( buf, 4 );	/* �R�}���h���ǂݍ���(4����) */
	buf[4] = C_NULL;
	enc_writebuffer( buf, 4 );	/* �R�}���h��������ɏ����Ƃ� */
	if( strcmp_P((char *)buf, PSTR( "GWDT" )) == 0 ){	/* �����ǂݏo��(WorldTime) */
		enc_writebuf( ',' );
		ustoaz((word)( world_time.tm_year + 1900 ), (char *)tmp );	/* �N */
		enc_writebuffer( tmp + 1, 4 );
		ustoaz((word)( world_time.tm_mon + 1 ), (char *)tmp );	/* �� */
		enc_writebuffer( tmp + 3, 2 );
		ustoaz((word)( world_time.tm_mday ), (char *)tmp );	/* �� */
		enc_writebuffer( tmp + 3, 2 );
		enc_writebuf( ',' );
		ustoaz((word)( world_time.tm_hour ), (char *)tmp );	/* �� */
		enc_writebuffer( tmp + 3, 2 );
		ustoaz((word)( world_time.tm_min ), (char *)tmp );	/* �� */
		enc_writebuffer( tmp + 3, 2 );
		ustoaz((word)( world_time.tm_sec ), (char *)tmp );	/* �b */
		enc_writebuffer( tmp + 3, 2 );
		enc_writebuf( '.' );
		ustoaz((word)utc_msec, (char *)tmp );	/* �~���b */
		enc_writebuffer( tmp + 2, 3 );
		enc_writebuf( C_LF );
		size = 25U;
	}
	else if( strcmp_P((char *)buf, PSTR( "GUDT" )) == 0 ){	/* �����ǂݏo��(UTC) */
		enc_writebuf( ',' );
		ustoaz((word)( utc_time.tm_year + 1900 ), (char *)tmp );/* �N */
		enc_writebuffer( tmp + 1, 4 );
		ustoaz((word)( utc_time.tm_mon + 1 ), (char *)tmp );	/* �� */
		enc_writebuffer( tmp + 3, 2 );
		ustoaz((word)( utc_time.tm_mday ), (char *)tmp );	/* �� */
		enc_writebuffer( tmp + 3, 2 );
		enc_writebuf( ',' );
		ustoaz((word)( utc_time.tm_hour ), (char *)tmp );	/* �� */
		enc_writebuffer( tmp + 3, 2 );
		ustoaz((word)( utc_time.tm_min ), (char *)tmp );	/* �� */
		enc_writebuffer( tmp + 3, 2 );
		ustoaz((word)( utc_time.tm_sec ), (char *)tmp );	/* �b */
		enc_writebuffer( tmp + 3, 2 );
		enc_writebuf( '.' );
		ustoaz((word)utc_msec, (char *)tmp );	/* �~���b */
		enc_writebuffer( tmp + 2, 3 );
		enc_writebuf( C_LF );
		size = 25U;
	}
	else if( strcmp_P((char *)buf, PSTR( "GSTS" )) == 0 ){	/* �X�e�[�^�X�擾 */
		enc_writebuf( ',' );
		ustoahz( opests, (char *)tmp );
		enc_writebuffer( tmp, 4 );
		enc_writebuf( C_LF );
		size = 10U;
	}
	else if( strcmp_P((char *)buf, PSTR( "GMOD" )) == 0 ){	/* ���샂�[�h�擾 */
		enc_writebuf( ',' );
		ustoahz( opemode, (char *)tmp );
		enc_writebuffer( tmp, 4 );
		enc_writebuf( C_LF );
		size = 10U;
	}
	else if( strcmp_P((char *)buf, PSTR( "GARP" )) == 0 ){	/* ARP�e�[�u���擾 */
		for( i = 0; i < ARP_CACHE_MAX; i++ ){
			enc_writebuf( ',' );
			if( arp_cache[i].flg == ARP_CACHE_DYNAMIC ){
				enc_writebuf( 'D' );
			}
			else if( arp_cache[i].flg == ARP_CACHE_STATIC ){
				enc_writebuf( 'S' );
			}
			else{
				enc_writebuf( 'N' );
			}
			enc_writebuf( ',' );
			enc_writebuffer((byte *)long2ipstr( arp_cache[i].ipaddr, (char *)buf ), 15 );
			enc_writebuf( ',' );
			for( j = 0; j < 6; j++ ){
				enc_writebuffer( (byte *)uctoahz( arp_cache[i].mac[j], (char *)buf ), 2 );
			}
		}
		enc_writebuf( C_LF );
		size = 253U;
	}
	else if( strcmp_P((char *)buf, PSTR( "GEVN" )) == 0 ){	/* �C�x���g���擾 */
		enc_writebuf( ',' );
		for( d = 0; d < 16; d++ ){
			if( eventlog[d].evnt == EVNT_NONE ){
				break;
			}
		}
		uctoaz( d, (char *)tmp );
		enc_writebuffer( tmp + 1, 2 );
		enc_writebuf( C_LF );
		size = 8U;
	}
	else if( strcmp_P((char *)buf, PSTR( "GECD" )) == 0 ){	/* �C�x���g�R�[�h�擾 */
		enc_readbuf( );		/* ','�ǂݔ�΂� */
		enc_readbuffer( buf, 2 );
		buf[2] = C_NULL;
		d = _atoi( (char *)buf );
		if(( d == 0 ) || ( d > 16 )){
			enc_writebufc( PSTR( ",E01\n" ));
			size = 9U;
		}
		else{
			enc_writebuf( ',' );
			enc_writebuffer( buf, 2 );
			enc_writebuf( ',' );
			uctoaz( eventlog[d-1].evnt, (char *)tmp );
			enc_writebuffer( tmp + 1, 2 );
			enc_writebuf( C_LF );
			size = 11U;
		}
	}
	else if( strcmp_P((char *)buf, PSTR( "GMAC" )) == 0 ){	/* MAC�A�h���X�擾 */
		enc_writebuf( ',' );
		uctoahz( mac_address[0], (char *)tmp );
		enc_writebuffer( tmp, 2 );
		enc_writebuf( '-' );
		uctoahz( mac_address[1], (char *)tmp );
		enc_writebuffer( tmp, 2 );
		enc_writebuf( '-' );
		uctoahz( mac_address[2], (char *)tmp );
		enc_writebuffer( tmp, 2 );
		enc_writebuf( '-' );
		uctoahz( mac_address[3], (char *)tmp );
		enc_writebuffer( tmp, 2 );
		enc_writebuf( '-' );
		uctoahz( mac_address[4], (char *)tmp );
		enc_writebuffer( tmp, 2 );
		enc_writebuf( '-' );
		uctoahz( mac_address[5], (char *)tmp );
		enc_writebuffer( tmp, 2 );
		enc_writebuf( C_LF );
		size = 23U;
	}
	else if( strcmp_P((char *)buf, PSTR( "GVER" )) == 0 ){	/* �o�[�W���� */
		enc_writebuf( ',' );
		enc_writebufc( version );
		enc_writebuf( C_LF );
		size = 13U;
	}
	/* ----- �ݒ�n ----- */
	else if( strcmp_P((char *)buf, PSTR( "SARP" )) == 0 ){	/* ARP�e�[�u���ݒ� */
		enc_readbuf( );			/* ','�ǂݔ�΂� */
		enc_readbuffer( buf, 15 );	/* IP */
		buf[15] = C_NULL;
		enc_readbuf( );			/* ','�ǂݔ�΂� */
		enc_readbuffer( tmp, 12 );	/* MAC */
		for( i = j = 0; i < 6; i++ ){
			mac[i] = atox( (char *)tmp + j );	/* ASCII -> BIN */
			j += 2;
		}
		if( ipstr2bin(( char *)buf, &adr ) == TRUE ){
			if( arp_keep( adr, mac, ARP_CACHE_STATIC ) == 1 ){
				enc_writebufc( PSTR( ",OK\n" ));
			}
			else{
				enc_writebufc( PSTR( ",NG\n" ));
			}
			size = 8U;
		}
		else{
			enc_writebufc( PSTR( ",E01\n" ));
			size = 9U;
		}
	}
	/* ----- �N���A�n ----- */
	else if( strcmp_P((char *)buf, PSTR( "CARP" )) == 0 ){	/* ARP�e�[�u���폜 */
		enc_readbuf( );			/* ','�ǂݔ�΂� */
		enc_readbuffer( buf, 15 );	/* IP */
		buf[15] = C_NULL;
		if( ipstr2bin(( char *)buf, &adr ) == TRUE ){
			if( arp_delete( adr ) == 1 ){
				enc_writebufc( PSTR( ",OK\n" ));
			}
			else{
				enc_writebufc( PSTR( ",NG\n" ));
			}
			size = 8U;
		}
		else{
			enc_writebufc( PSTR( ",E01\n" ));
			size = 9U;
		}
	}
	else if( strcmp_P((char *)buf, PSTR( "COUT" )) == 0 ){	/* �G���[�o�̓N���A */
		ERRRST( );
		WORD_BIT15_OFF( opests );	/* ERROR OFF */
		enc_writebufc( PSTR( ",OK\n" ));
		size = 8U;
	}
	else if( strcmp_P((char *)buf, PSTR( "CLOG" )) == 0 ){	/* �G���[���O�N���A */
		clear_eventlog( );
		enc_writebufc( PSTR( ",OK\n" ));
		size = 8U;
	}
	/* ----- ���̑� ----- */
	else if( strcmp_P( (char *)buf, PSTR( "SYNC" )) == 0 ){	/* SYNC�R�}���h */
		if(( adjmode & BYTE_MASK_U7 ) == NTPADJ_MODE ){
			if(( adjustseq == 0 ) && ( myipaddr != 0UL )){
				adjustseq = 1;
				enc_writebufc( PSTR( ",OK\n" ));
				size = 8U;
			}
			else{
				enc_writebufc( PSTR( ",E02\n" ));
				size = 9U;
			}
		}
		else{
			enc_writebufc( PSTR( ",E02\n" ));
			size = 9U;
		}
	}
	else{
		enc_writebufc( PSTR( ",E00\n" ));	/* �R�}���h���� */
		size = 9U;
	}
	/* ----- �ԐM ----- */
	return	udp_output( size );
}


/* end of command.c */
