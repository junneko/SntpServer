/**
*	ENC28J60�h���C�o rev.1.02.02
*	ATmega644 SPI�@�\�g�p(MODE 0,0)
*	EREVID=04H,05H�ł̐�������
*	  ERXWRPT��ERXST�ŕς��Ȃ�(��M�o�b�t�@��0000H����z�u)
*	Copyright (c)Junnichi Tomaru
*/
#include	"driver/enc28j60.h"

#define	ENC_RESET()	ENC_RST_ASSERT();wait(WAIT1000US);ENC_RST_NEGATE()

#define	WAIT_MIBUSY()	while(enc_readmreg(MISTAT)&MISTAT_BUSY)
#define	WAIT_DMAEND()	while(enc_readethreg(ECON1)&ECON1_DMAST)

#define	DUMMY		0x00
#define	BUFFERSTART	0x0000
#define	BUFFEREND	0x1fff
#define	MAX_FRAME	1518

/* ---------- �჌�x���֐� ---------- */

/**
*	SPI�Ńf�[�^�𑗐M����(8bit��)
*	 in	�f�[�^
*	out	�Ȃ�
*/
void	spitx( char data )
{
	SPDR = data;		 /* �f�[�^���M */
	loop_until_bit_is_set( SPSR, SPIF );	 /* �]�������܂őҋ@*/
}


/**
*	�V�X�e�����Z�b�g(ENC28J60�̃\�t�g�E�F�A���Z�b�g)
*	 in	�Ȃ�
*	out	�Ȃ�
*/
static void	enc_systemreset( void )
{
	ENC_CS_ASSERT( );
	spitx( ENC_SC );
	ENC_CS_NEGATE( );
}


/**
*	�R���g���[�����W�X�^�ǂ�(ETH�O���[�v)
*	 in	���W�X�^�A�h���X
*	out	�f�[�^
*/
byte	enc_readethreg( char addr )
{
	byte	ret;

	ENC_CS_ASSERT( );
	spitx( ENC_RCR + addr );/* OPCODE + ADDR */
	spitx( DUMMY );		/* ��M�p�_�~�[���M */
	ret = SPDR;		/* ��M�f�[�^ */
	ENC_CS_NEGATE( );

	return ret;
}


/**
*	MAC&MII���W�X�^�ǂ�
*	 in	���W�X�^�A�h���X
*	out	�f�[�^
*/
byte	enc_readmreg( char addr )
{
	byte	ret;

	ENC_CS_ASSERT( );
	spitx( ENC_RCR + addr );/* OPCODE + ADDR */
	spitx( DUMMY );		/* ��M�p�_�~�[���M */
	ret = SPDR;		/* �f�[�^ */
	spitx( DUMMY );		/* ��M�p�_�~�[���M */
	ret = SPDR;		/* ��M�f�[�^ */
	ENC_CS_NEGATE( );

	return ret;
}


/**
*	���W�X�^�Ƀf�[�^����
*	 in	addr:���W�X�^�A�h���X
*		data:�f�[�^(8bit)
*	out	�Ȃ�
*/
void	enc_writereg( char addr, byte data )
{
	ENC_CS_ASSERT( );
	spitx( ENC_WCR + addr );/* OPCODE + ADDR */
	spitx( data );		/* �f�[�^ */
	ENC_CS_NEGATE( );
}


/**
*	�R���g���[�����W�X�^�ǂ�(16�r�b�g)
*	 in	�A�h���X(Lower��)
*	out	���W�X�^�̒l
*/
static word	enc_readethreg16( char addr )
{
	ui_t	t;

	t.bytes.lo = enc_readethreg( addr );	/* LOWER BYTE */
	t.bytes.hi = enc_readethreg( addr + 1 );/* HIGHER BYTE */

	return	t.data;
}


/**
*	MAC&MII���W�X�^�ǂ�(16�r�b�g)
*	 in	�A�h���X(Lower��)
*	out	���W�X�^�̒l
*/
word	enc_readmreg16( char addr )
{
	ui_t	t;

	t.bytes.lo = enc_readmreg( addr );	/* LOWER BYTE */
	t.bytes.hi = enc_readmreg( addr + 1 );	/* HIGHER BYTE */

	return	t.data;
}


/**
*	���W�X�^��������(16�r�b�g)
*	 in	addr:�A�h���X(L��)
*		data:���W�X�^�̒l
*	out	�Ȃ�
*/
void	enc_writereg16( char addr, word data )
{
	ui_t	t;

	t.data = data;
	enc_writereg( addr, t.bytes.lo );	/* LOWER BYTE */
	enc_writereg( addr + 1, t.bytes.hi );	/* HIGHER BYTE */
}


/**
*	�r�b�g�t�B�[���h�Z�b�g(ETH���W�X�^�̂�,�r�b�gOR)
*	 in	addr:���W�X�^�A�h���X
*		data:1�̃r�b�g���Z�b�g�����
*	out	�Ȃ�
*/
void	enc_setbit( char addr, byte data )
{
	ENC_CS_ASSERT( );
	spitx( ENC_BFS + addr );/* OPCODE + ADDR */
	spitx( data );		/* �f�[�^ */
	ENC_CS_NEGATE( );
}


/**
*	�r�b�g�t�B�[���h�N���A(ETH���W�X�^�̂�,�r�b�gNot-AND)
*	 in	addr:���W�X�^�A�h���X
*		data:1�̃r�b�g���N���A�����
*	out	�Ȃ�
*/
void	enc_clrbit( char addr, byte data )
{
	ENC_CS_ASSERT( );
	spitx( ENC_BFC + addr );/* OPCODE + ADDR */
	spitx( data );		/* �f�[�^ */
	ENC_CS_NEGATE( );
}


/**
*	�o���N�Z���N�g
*	���̃r�b�g�����������Ȃ��悤�ɁA�r�b�g�t�B�[���h���߂��g�p
*	 in	�o���N�ԍ�
*	out	�Ȃ�
*/
void	enc_bankselect( byte bank )
{
	enc_clrbit( ECON1, 0x3 );	/* BSEL0,BSEL1�N���A */
	enc_setbit( ECON1, bank );	/* �o���N�ԍ��Z�b�g */
}


/**
*	PHY���W�X�^����ǂ�
*	 in	�ǂݍ��ރA�h���X
*	out	16�r�b�g�f�[�^
*/
word	enc_readphy( byte addr )
{
	enc_bankselect( ENC_BANK2 );
	enc_writereg( MIREGADR, addr );	/* �A�h���X�w�� */
	enc_writereg( MICMD, MICMD_MIIRD );	/* MIRD����P�x�����ǂ� */

	enc_bankselect( ENC_BANK3 );
	WAIT_MIBUSY( );		/* PHY���W�X�^����ǂݍ��܂��̂�҂� */

	enc_bankselect( ENC_BANK2 );
	enc_writereg( MICMD, 0x00 );	/* �ǂݍ��ݒ�~(MIIRD=0) */

	return	enc_readmreg16( MIRD );	/* �f�[�^�ǂݏo�� */
}


/**
*	PHY���W�X�^�ɏ���
*	 in	addr:���W�X�^�A�h���X
*		data:�������ރf�[�^
*	out	�Ȃ�
*/
void	enc_writephy( byte addr, word data )
{
	enc_bankselect( ENC_BANK2 );
	enc_writereg( MIREGADR, addr );	/* ���W�X�^�A�h���X */

	enc_writereg16( MIWR, data );	/* �f�[�^�������� */

	enc_bankselect( ENC_BANK3 );
	WAIT_MIBUSY( );		/* �I���҂� */
}


/**
*	�C�[�T�l�b�g�o�b�t�@����P�o�C�g�ǂݍ���
*	 in	�Ȃ�
*	out	�ǂݍ��񂾃f�[�^
*/
byte	enc_readbuf( void )
{
	byte	ret;

	ENC_CS_ASSERT( );
	spitx( ENC_RBM );	/* �o�b�t�@�ǂݍ��� */
	spitx( DUMMY );		/* ��M�p�_�~�[���M */
	ret = SPDR;
	ENC_CS_NEGATE( );

	return ret;
}


/**
*	�C�[�T�l�b�g�o�b�t�@����Q�o�C�g�ǂݍ���
*	 in	�Ȃ�
*	out	�ǂݍ��񂾃f�[�^(���g���G���f�B�A��)
*/
word	enc_readbuf2( void )
{
	ui_t	t;

	ENC_CS_ASSERT( );
	spitx( ENC_RBM );	/* �o�b�t�@�������� */
	spitx( DUMMY );		/* ��M�p�_�~�[���M */
	t.bytes.hi = SPDR;
	spitx( DUMMY );		/* ��M�p�_�~�[���M */
	t.bytes.lo = SPDR;
	ENC_CS_NEGATE( );

	return	t.data;
}


/**
*	�C�[�T�l�b�g�o�b�t�@����S�o�C�g�ǂݍ���
*	 in	�Ȃ�
*	out	�ǂݍ��񂾃f�[�^(���g���G���f�B�A��)
*/
dword	enc_readbuf4( void )
{
	ul_t	t;

	ENC_CS_ASSERT( );
	spitx( ENC_RBM );	/* �o�b�t�@�������� */
	spitx( DUMMY );		/* ��M�p�_�~�[���M */
	t.bytes.hh = SPDR;
	spitx( DUMMY );		/* ��M�p�_�~�[���M */
	t.bytes.hl = SPDR;
	spitx( DUMMY );		/* ��M�p�_�~�[���M */
	t.bytes.lh = SPDR;
	spitx( DUMMY );		/* ��M�p�_�~�[���M */
	t.bytes.ll = SPDR;
	ENC_CS_NEGATE( );

	return	t.data;
}


/**
*	�C�[�T�l�b�g�o�b�t�@����A���ǂݍ���
*	 in	buffer:�f�[�^���i�[����o�b�t�@
*		   len:�ǂݍ��ރo�C�g��
*	out	�Ȃ�
*/
void	enc_readbuffer( byte *buffer, word len )
{
	word	i;

	ENC_CS_ASSERT( );
	spitx( ENC_RBM );	/* �o�b�t�@�ǂݍ��� */
	for( i = 0; i < len; i++, buffer++ ){
		spitx( DUMMY );	/* ��M�p�_�~�[���M */
		*buffer = SPDR;
	};
	ENC_CS_NEGATE( );
}


/**
*	�C�[�T�l�b�g�o�b�t�@�ɂP�o�C�g��������
*	EWRPT�������A�h���X���珑�����܂�܂�
*	 in	�f�[�^
*	out	�Ȃ�
*/
void	enc_writebuf( byte data )
{
	ENC_CS_ASSERT( );
	spitx( ENC_WBM );	/* �o�b�t�@�������� */
	spitx( data );
	ENC_CS_NEGATE( );
}


/**
*	�o�b�t�@�ɂQ�o�C�g��������
*	EWRPT�������A�h���X���珑�����܂�܂�
*	 in	�������ޒl
*	out	�Ȃ�
*/
void	enc_writebuf2( word data )
{
	ui_t	t;

	t.data = data;
	ENC_CS_ASSERT( );
	spitx( ENC_WBM );	/* �o�b�t�@�������� */
	spitx( t.bytes.hi );
	spitx( t.bytes.lo );
	ENC_CS_NEGATE( );
}


/**
*	�o�b�t�@�ɂS�o�C�g��������
*	EWRPT�������A�h���X���珑�����܂�܂�
*	 in	�������ޒl
*	out	�Ȃ�
*/
void	enc_writebuf4( dword data )
{
	ul_t	t;

	t.data = data;
	ENC_CS_ASSERT( );
	spitx( ENC_WBM );	/* �o�b�t�@�������� */
	spitx( t.bytes.hh );
	spitx( t.bytes.hl );
	spitx( t.bytes.lh );
	spitx( t.bytes.ll );
	ENC_CS_NEGATE( );
}


/**
*	�o�b�t�@�Ƀo�[�X�g��������
*	EWRPT�������A�h���X���珑�����܂�܂�
*	 in	buffer:�������݃o�b�t�@�̃|�C���^
*	out	����
*/
word	enc_writebuffer( byte *buffer, word len )
{
	word	i;

	ENC_CS_ASSERT( );
	spitx( ENC_WBM );	/* �o�b�t�@�������� */
	for( i = 0; i < len; i++, buffer++ ){
		spitx( *buffer );
	}
	ENC_CS_NEGATE( );

	return	len;
}


/**
*	�o�b�t�@�ɓ����f�[�^�𖄂߂�
*	EWRPT�������A�h���X���珑�����܂�܂�
*	 in	data:�������ރf�[�^
*		 len:�������ރo�C�g��
*	out	�Ȃ�
*/
void	enc_fillwrite( byte data, word len )
{
	word	i;

	ENC_CS_ASSERT( );
	spitx( ENC_WBM );	/* �o�b�t�@�������� */
	for( i = 0; i < len; i++ ){
		spitx( data );
	}
	ENC_CS_NEGATE( );
}


/* ---------- �����x���֐� ---------- */


/**
*	���Ȑf�f���[�`��
*	 in	�Ȃ�
*	out	FALSE:�ُ� TRUE:����
*/
bool	enc_selftest( void )
{
	bool	ret;

	enc_writereg( ECON1, 0 );	/* PAGE0 */
	enc_writereg16( EDMAST, BUFFERSTART );	/* DMA�J�n�A�h���X */
	enc_writereg16( EDMAND, BUFFEREND );	/* DMA�I���A�h���X */
	enc_writereg16( ERXND, BUFFEREND );	/* ��M�I���A�h���X */

	enc_bankselect( ENC_BANK3 );
	enc_writereg( EBSTCON, ADR_FIL | EBSTCON_TME | EBSTCON_BISTST );
			/* �A�h���X�t�B��,�r�b�g�e�X�g���[�h */

	/* DMA���J�n����O��BIST���I������̂�҂��A�e�X�g���[�h�֎~���� */
	while( enc_readethreg( EBSTCON ) & EBSTCON_BISTST );
	enc_clrbit( EBSTCON, EBSTCON_TME );

	/* �T���v�Z�������ADMA���X�^�[�g������ */
	enc_setbit( ECON1, ECON1_DMAST | ECON1_CSUMEN );
	WAIT_DMAEND( );

	enc_bankselect( ENC_BANK0 );
	/* �`�F�b�N�T����r */
	if( enc_readethreg16( EDMACS ) != 0xF807 ){	/* �A�h���X�t�B���̌��ʂ�F807h�ɂȂ�͂� */
		ret = FALSE;
	}
	else{
		ret = TRUE;
	}

	return	ret;
}


/**
*	ENC28J60������
*	 in	�Ȃ�
*	out	�Ȃ�
*/
void	enc_init( void )
{
	byte	sts;

	enc_clrbit( ECON2, ECON2_PWRSV );	/* �p���[�Z�[�u�������Ă��� */
	wait( WAIT1000US );
	ENC_RESET( );			/* HARDWARE RESET(RESET=L) */
	wait( WAIT1000US );
	_forever{			/* SOFTWARE RESET */
		enc_systemreset( );
		wait( WAIT1000US );	/* 1ms�ȏ�҂ĂΗǂ�(ERRATA�ɂ��) */
		sts = enc_readethreg( ESTAT );
		if((( sts & ESTAT_SPIRDY ) == 0 ) && ( sts & ESTAT_CLKRDY )){/* CLKRDY�҂� */
			break;		/* bit3��RESET�����ǂ������邽�߁B */
		}
	}

	/* ----- �o���N0���W�X�^�ݒ� ----- */
	enc_writereg( ECON1, ECON1_TXRST | ECON1_RXRST );/* TX,RX=���Z�b�g,�y�[�W0 */
	enc_writereg( ECON2, ECON2_AUTOINC );	/* �o�b�t�@�|�C���^�����C���N�������g */

	enc_writereg16( ERXST, RXSTART );	/* ��M�o�b�t�@�J�n�A�h���X */
	enc_writereg16( ERXRDPT, RXSTOP );	/* ���E�A�h���X RXSTART->RXSTOP 2012.02.15 */
	enc_writereg16( ERXND, RXSTOP );	/* ��M�o�b�t�@�I���A�h���X */
	enc_writereg16( ETXST, TXSTART );	/* ���M�o�b�t�@�J�n�A�h���X */

	/* ----- �o���N1���W�X�^�ݒ� ----- */
	enc_bankselect( ENC_BANK1 );
	enc_writereg( ERXFCON, ERXFCON_UCEN | ERXFCON_CRCEN | ERXFCON_BCEN );	/* ��M�t�B���^ */

	/* ----- �o���N2���W�X�^�ݒ� ----- */
	enc_bankselect( ENC_BANK2 );
	enc_writereg( MACON1, MACON1_TXPAUS | MACON1_RXPAUS | MACON1_MARXEN );	/* ��M�L�� */
	enc_writereg( MACON2, 0x00 );		/* ���Z�b�g�𔲂��� */

	/* 60�o�C�g�܂Ńp�f�B���O,CRC�t�� */
	enc_writereg( MACON3, MACON3_PADCFG0 | MACON3_TXCRCEN | MACON3_FRMLNEN );
	enc_writereg16( MAMXFL, MAX_FRAME );	/* �p�P�b�g�̍ő�l(802.3 1518byte) */

	enc_writereg16( MAIPG, 0x0C12 );	/* MAC BACK-TO-BACK INTER-PACKET GAP RESISTER */
	enc_writereg( MABBIPG, 0x12 );		/* �����l��HALF=0x12(IPG=9.6us) */

	enc_writereg( MACON4, MACON4_DEFER );	/* �x�����M����(���Q�d�p) */
	enc_writereg( MACLCON2, 63 );		/* rev.5�p�ɑ傫�߂̒l */

	/* ----- �o���N3���W�X�^�ݒ� ----- */
	enc_bankselect( ENC_BANK3 );
	enc_writereg( ECOCON, ECOCON_INVALID );	/* CLKOUT����(�g��Ȃ��̂�) */
	enc_writereg( MAADR5, mac_address[0] );	/* MAC ADDRESS�ݒ� */
	enc_writereg( MAADR4, mac_address[1] );
	enc_writereg( MAADR3, mac_address[2] );
	enc_writereg( MAADR2, mac_address[3] );
	enc_writereg( MAADR1, mac_address[4] );
	enc_writereg( MAADR0, mac_address[5] );

	revid = enc_readethreg( EREVID ) & BYTE_MASK_L5;	/* REVID�ǂݍ��� */

	enc_writephy( PHCON1, 0x0000 );		/* �p���[�_�E������ */
	enc_writephy( PHCON2, PHCON2_HDLDIS );	/* ���[�v�o�b�N���� */
	/* LEDA:�����N LEDB:����M�X�e�[�^�X 40ms */
	enc_writephy( PHLCON, LEDA_LINK | LEDB_TXRXACT | LED_TNSTRCH );

	/* ----- �o���N0���W�X�^�ݒ�(�߂�) ----- */
	enc_bankselect( ENC_BANK0 );
#ifdef USE_INT
	enc_setbit( EIE, EIE_INTIE | EIE_PKTIE );	/* ���荞�݋��� */
#endif
	enc_writereg( ECON1, ECON1_RXEN );	/* ��M���� */
}


/**
*	�����N��Ԏ擾
*	 in	�Ȃ�
*	out	TRUE:�����N���  FALSE:�񃊃��N���
*/
bool	enc_getlinkstatus( void )
{
	return ( enc_readphy( PHSTAT1 ) & PHSTAT1_LLSTAT )? TRUE: FALSE;
}


/**
*	���M�ł��邩�𒲂ׂ�
*	 in	�Ȃ�
*	out	TRUE:���M�\  FALSE:���M�s�\
*/
bool	enc_gettxready( void )
{
	return ( enc_readethreg( ECON1 ) & ECON1_TXRST )? FALSE: TRUE;
}


/**
*	��M�o�b�t�@�ǂݏo���ʒu�ݒ�
*	 in	�擪����̃I�t�Z�b�g�l(�X�e�[�^�X�܂܂�)
*	out	�X�V�O�̃|�C���^
*/
word	enc_rxseek( word offset )
{
	word	i, ret;

	enc_bankselect( ENC_BANK0 );
	ret = enc_readmreg16( ERDPT );
	i = nowrxpnt + RXSTS_SIZE + offset;
	if( i > RXSTOP ){	/* �܂�Ԃ��Ă��� */
		i -= RXSIZE;
	}
	enc_writereg16( ERDPT, i );

	return	ret;
}


/**
*	���M�o�b�t�@�������݈ʒu�ݒ�
*	 in	�擪����̃I�t�Z�b�g�l(PPCB�܂܂�)
*	out	�X�V�O�̃|�C���^
*/
word	enc_txseek( word offset )
{
	word	ret;

	enc_bankselect( ENC_BANK0 );
	ret = enc_readmreg16( EWRPT );
	enc_writereg16( EWRPT, offset + TXSTART + PPCB_SIZE );

	return	ret;
}


/**
*	���̃p�P�b�g�ʒu�ֈړ�
*	 in	�Ȃ�
*	out	�Ȃ�
*/
void	enc_setnextpoint( void )
{
	word	newrxend;

	newrxend = nextrxpnt - 1;	/* ��M�X�g�b�v�A�h���X(1��O) */
	if( newrxend > RXSTOP ){	/* ��M�̈�O */
		newrxend = RXSTOP;
	}
	enc_bankselect( ENC_BANK0 );
	enc_setbit( ECON2, ECON2_PKTDEC );	/* ��M�p�P�b�g�J�E���^�f�N�������g */
	enc_writereg16( ERXRDPT, newrxend );	/* �ʒu�ړ� */

#ifdef USE_INT
	enc_setbit( EIE, EIE_INTIE );	/* ���荞�݋��� */
#endif
}


/**
*	��M�o�b�t�@�̋󂫃T�C�Y�𒲂ׂ�
*	 in	�Ȃ�
*	out	�T�C�Y
*/
word	enc_getfreerxsize( void )
{
	word	rp, wp;
	byte	c, d;
	word	ret;

	/* �������܂��ʒu��ǂފԂɍX�V���ꂽ���ǂ����𒲂ׁA */
	/* �ς���Ă�����ǂݒ��� */
	enc_bankselect( ENC_BANK1 );
	c = enc_readethreg( EPKTCNT );	/* �P��ړǂݍ��� */
	_forever{
		enc_bankselect( ENC_BANK0 );
		wp = enc_readethreg( ERXWRPT ) & WORD_MASK_L13;
		enc_bankselect( ENC_BANK1 );
		d = enc_readethreg( EPKTCNT );
		if( c == d ){	/* ���������� */
			break;
		}
		c = d;
	}
	/* �������݋��E�A�h���X��ǂ� */
	rp = enc_readethreg16( ERXRDPT ) & WORD_MASK_L13;

	if( wp > rp ){		/* ERXWRPT�̕����傫�� */
		ret = (( RXSTOP - RXSTART ) - ( wp - rp ));
	}
	else if( wp == rp ){	/* �����ꏊ */
		ret = ( RXSTOP - RXSTART );
	}
	else{			/* ERXRDPT�̕����傫�� */
		ret = ( rp - wp - 1 );
	}

	return	ret;
}


/**
*	�t���[����M
*	 in	�ǂݍ��݃o�b�t�@
*	out	0:��M�Ȃ� 1:��M���� 2:�G���[
*/
byte	enc_input( byte *buf )
{
	swbool	err;
	byte	ret;

	enc_bankselect( ENC_BANK1 );
	if( enc_readethreg( EPKTCNT ) == 0 ){	/* ��M�Ȃ� */
		enc_bankselect( ENC_BANK0 );
		return 0;
	}
	ret = 0;
	/* �ǂݍ��݂̐擪�ʒu�ɓǂݍ��݃|�C���^���Z�b�g���� */
	enc_bankselect( ENC_BANK0 );
	enc_writereg16( ERDPT, nextrxpnt );
	nowrxpnt = nextrxpnt;			/* ���̈ʒu�o�b�N�A�b�v */

	enc_readbuffer((byte *)&rxstatus, RXSTS_SIZE );	/* ���̃|�C���^�ƃX�e�[�^�X�ǂݍ��� */
	rxstatus.next.bytes.hi &= BYTE_MASK_L5;	/* ���2�r�b�g�}�X�N(unimplemented) */
	rxstatus.rxcount.bytes.hi &= BYTE_MASK_L5;	/* ���2�r�b�g�}�X�N(unimplemented) */
	nextrxpnt = rxstatus.next.data;		/* ���̃p�P�b�g�擪 */
	err = off;
	if( rxstatus.rxcount.data > MAX_FRAME ){/* �t���[������1518byte���傫�� */
		err = on;
	}
	else if( rxstatus.next.data > RXSTOP ){	/* ���̃|�C���^����M�̈�O */
		err = on;
	}
	else if( rxstatus.next.data & WORD_BIT_00 ){	/* ���̃|�C���^����Ԓn */
		err = on;
	}
	else if( rxstatus.status.bits.zero ){	/* �[���̗̈�ɏ�񂪓����Ă��� */
		err = on;
	}
	else if( rxstatus.status.bits.crcerror ){	/* CRC�v�Z�G���[ */
		err = on;
	}
	else if( rxstatus.status.bits.receiveok == 0 ){	/* ��M�G���[ */
		err = on;
	}
	if( err ){
		enc_init( );
		ret = 2;
	}
	else{				/* �p�P�b�g�̎�荞�ݏ��� */
		_di( );
		rxstamp = utc_sec;
		rxtime = utc_msec;
		_ei( );
		enc_readbuffer( buf, ETHERHDR_SIZE );	/* �C�[�T�l�b�g�w�b�_����荞�� */
		ret = 1;
	}

	return	ret;
}


/**
*	�t���[�����M
*	 in	���M�J�n�o�b�t�@�擪
*	out	�Ȃ�
*/
void	enc_output( word txaddr )
{
	word	cnt, rptr, txend;
	word	size;
	txstatus_t	txsts;
	byte	i;

	/* ----- ���M�O���� ----- */
	size = pacinfo.datasize + PPCB_SIZE + txaddr - 1U;
	enc_writereg16( EWRPT, txaddr );
	enc_writebuf( 0x00 );	/* Format For Per Packet Control Bytes */
				/* MACON3�̏�Ԃ��g�p���� */
	enc_writereg16( ETXST, txaddr );	/* ���M�t���[���擪�ʒu */
	enc_writereg16( ETXND, size );		/* ���M�t���[���I���ʒu */
	/* ----- ���M���� ----- */
	enc_setbit( ECON1, ECON1_TXRST );	/* �O�񑗐M�G���[���������Ƃ� */
	enc_clrbit( ECON1, ECON1_TXRST );	/* �`�b�v�̃G���[�΍� */
	enc_clrbit( EIR, EIR_TXERIF | EIR_TXIF );

	enc_setbit( ECON1, ECON1_TXRTS );	/* ���M */

	if(( revid != 0x05 ) && ( revid != 0x06 )){	/* Rev.B5,B7�p�G���b�^�΍� */
		return;
	}
	cnt = 0U;
	_forever{
		if( enc_readethreg( EIR ) & ( EIR_TXERIF | EIR_TXIF )){
			break;
		}
		cnt++;
		if( cnt >= 1000U ){
			break;
		}
	}
	if(( enc_readethreg( EIR ) & EIR_TXERIF ) || ( cnt >= 1000U )){
		enc_clrbit( ECON1, ECON1_TXRTS );	/* �O��̑��M�L�����Z�� */
		rptr = enc_readmreg16( ERDPT );		/* ���݂̓ǂݍ��݃|�C���^�ޔ� */
		txend = enc_readmreg16( ETXND );	/* ���M�X�e�[�^�X�x�N�^�ʒu */
		txend++;
		enc_writereg16( ERDPT, txend );		/* ���M�X�e�[�^�X�ǂݍ��� */
		enc_readbuffer((byte *)&txsts, sizeof( txsts ));
		for( i = 0; i < 16; i++ ){		/* �Փ˂��N�������̍đ��M */
			if(( enc_readethreg( EIR ) & EIR_TXERIF ) && txsts.latecollision ){
				enc_setbit( ECON1, ECON1_TXRST );	/* �O�񑗐M�G���[���������Ƃ��΍� */
				enc_clrbit( ECON1, ECON1_TXRST );	/* �`�b�v�̃G���[�΍� */
				enc_clrbit( EIR, EIR_TXERIF | EIR_TXIF );
				enc_setbit( ECON1, ECON1_TXRTS );	/* �đ��M */
				while( ( enc_readethreg( EIR ) & ( EIR_TXERIF | EIR_TXIF )) == 0 );
				enc_clrbit( ECON1, ECON1_TXRTS );	/* �O��̑��M�L�����Z�� */
				enc_writereg16( ERDPT, txend );	/* ���M�X�e�[�^�X�ǂݍ��� */
				enc_readbuffer((byte *)&txsts, sizeof( txsts ));
			}
			else{
				break;
			}
		}
		enc_writereg16( ERDPT, rptr );	/* �ǂݍ��݃|�C���^���A */
	}
}


/**
*	�`�F�b�N�T���v�Z(���Z����̂�)
*	 in	�`�F�b�N���钷��
*	out	���Z�l
*/
word	enc_addsum( word len )
{
	word	i, tmp;
	ui_t	t;
	dword_t	ret;

	ret.data = 0UL;
	for( i = 0; len > 1; i++, len -= 2 ){	/* 2�o�C�g�����Z */
		t.bytes.hi = enc_readbuf( );
		t.bytes.lo = enc_readbuf( );
		ret.data += t.data;
	}
	if( len == 1 ){			/* ��o�C�g�̂Ƃ� */
		t.bytes.hi = enc_readbuf( );	/* �P�o�C�g���������� */
		t.bytes.lo = 0;
		ret.data += t.data;
	}
	if( ret.data >= 0x10000UL ){	/* �I�[�o�[���� */
		tmp = ret.words.hi;
		ret.words.hi = 0U;
		ret.data += tmp;	/* �L�������𑫂� */
		if( ret.data >= 0x10000UL ){
			ret.words.lo++;
		}
	}

	return	ret.words.lo;
}


/**
*	��M�`�F�b�N�T���v�Z(ERRATA�ɂ��ADMA���g���ƃ_���ȂƂ�������)
*	in	offset:�C�[�T�l�b�g�t���[���擪����̃I�t�Z�b�g
*		   len:�`�F�b�N�T���v�Z�͈͒���
*	out	�`�F�b�N�T��
*/
word	enc_rxchksum( word offset, word len )
{
	enc_rxseek( offset );

	return	_invert( enc_addsum( len ));
}


/**
*	���M�`�F�b�N�T���v�Z(ERRATA�ɂ��ADMA���g���ƃ_���ȂƂ�������)
*	in	offset:�C�[�T�l�b�g�t���[���擪����̃I�t�Z�b�g
*		   len:�`�F�b�N�T���v�Z�͈͒���
*	out	�`�F�b�N�T��
*/
word	enc_txchksum( word offset, word len )
{
	word	i;

	enc_bankselect( ENC_BANK0 );
	i = offset + TXSTART + PPCB_SIZE;
	enc_writereg16( ERDPT, i );

	return	_invert( enc_addsum( len ));
}


/**
*	 ��M�̈悩�瑗�M�̈�փR�s�[����
*	 in	rxoffset:�C�[�T�t���[���擪�ʒu����̃I�t�Z�b�g�l
*		txoffset:�C�[�T�t���[���擪�ʒu����̃I�t�Z�b�g�l
*		     len:�R�s�[����T�C�Y
*	out	�Ȃ�
*/
void	enc_packetcopy( word rxoffset, word txoffset, word len )
{
	word	i;

	if( len == 0U ){	/* �R�s�[�f�[�^�Ȃ� */
		return;
	}
	else if( len == 1U ){	/* �R�s�[�ł��Ȃ��̂ŁA�ʂɏ��� */
		enc_rxseek( rxoffset );
		enc_txseek( txoffset );
		enc_writebuf( enc_readbuf( ));
		return;
	}
	enc_bankselect( ENC_BANK0 );
	i = nowrxpnt + RXSTS_SIZE + rxoffset;	/* �J�n�ʒu */
	if ( i > RXSTOP ){	/* �܂�Ԃ��Ă��� */
		i -= RXSIZE;
	}
	enc_writereg16( EDMAST, i );

	i += len - 1;		/* �I���ʒu */
	if( i > RXSTOP ){	/* �܂�Ԃ��Ă��� */
		i -= RXSIZE;
	}
	enc_writereg16( EDMAND, i );

	i = TXSTART + PPCB_SIZE + txoffset;	/* �R�s�[��擪�ʒu */
	enc_writereg16( EDMADST, i );

	enc_clrbit( ECON1, ECON1_CSUMEN );	/* �`�F�b�N�T���r�b�g�N���A */
	enc_setbit( ECON1, ECON1_DMAST );	/* �R�s�[�J�n */
	WAIT_DMAEND( );		/* �I���҂� */
}


/**
*	�p���[�_�E��
*	 in	�Ȃ�
*	out	�Ȃ�
*/
void	enc_powerdown( void )
{
	enc_clrbit( ECON1, ECON1_RXEN );	/* ��M�֎~ */

	/* ��M�f�[�^���󂯎��I���̂�҂� */
	while( enc_readethreg( ESTAT ) & ESTAT_RXBUSY );

	/* ���M���W�b�N���Z�b�g�҂� */
	while( enc_readethreg( ECON1 ) & ECON1_TXRST );

	enc_setbit( ECON2, ECON2_PWRSV );	/* �X���[�v���[�h */
}


/**
*	�p���[�_�E�����畜�A
*	 in	�Ȃ�
*	out	�Ȃ�
*/
void	enc_powerup( void )
{
	byte	sts;

	enc_clrbit( ECON2, ECON2_PWRSV );	/* �p���[�_�E����蕜�A */
	wait( WAIT1000US );
	_forever{		/* PHY�̏������ł���̂�҂�(300us) */
		sts = enc_readethreg( ESTAT );
		if((( sts & ESTAT_SPIRDY ) == 0 ) && ( sts & ESTAT_CLKRDY )){/* CLKRDY�҂� */
			break;		/* bit3��RESET�����ǂ������邽�߁B */
		}

	}
	enc_setbit( ECON1, ECON1_RXEN );	/* ��M���� */
}


/**
*	CLKOUT�ݒ�
*	 in	ECOCON�̒l
*	out	�Ȃ�
*/
void	enc_setclkout( byte clk )
{
	enc_bankselect( ENC_BANK3 );
	enc_writereg( ECOCON, clk );
}


/**
*	CLKOUT�̒l��ǂ�
*	 in	�Ȃ�
*	out:	ECOCON�̒l
*/
byte	enc_getclkout( void )
{
	enc_bankselect( ENC_BANK3 );
	return enc_readethreg( ECOCON );
}

/**
*	�o�b�t�@�Ƀo�[�X�g��������(�Œ蕶����)
*	EWRPT�Ŏw�肵���A�h���X���珑�����܂�܂�
*	 in	prog_char:�������݃o�b�t�@�̃|�C���^
*	out	����
*/
word	enc_writebufc( const prog_char *pgm_s )
{
	word	i, len;

	len = strlen_P( pgm_s );
	ENC_CS_ASSERT( );
	spitx( ENC_WBM );	/* �o�b�t�@�������� */
	for( i = 0; i < len; i++ ){
		spitx( pgm_read_byte( pgm_s ) );
		pgm_s++;
	}
	ENC_CS_NEGATE( );

	return	len;
}


/**
*	�C�[�T�l�b�g�o�b�t�@���當����ǂݍ���
*	 in	buffer:�f�[�^���i�[����o�b�t�@
*		   len:�ǂݍ��ލő�o�C�g��
*		    dm:�f���~�^(�ǂݍ��ݏI������)
*	out	�Ȃ�
*/
word	enc_readstr( byte *buffer, word len, byte dm )
{
	word	i;
	byte	d;

	ENC_CS_ASSERT( );
	spitx( ENC_RBM );	/* �o�b�t�@�ǂݍ��� */
	for( i = 0; i < len; ){
		spitx( DUMMY );	/* ��M�p�_�~�[���M */
		d = SPDR;
		*buffer = d;
		i++;
		buffer++;
		if( d == dm ){	/* �f���~�^�ŏI�� */
			break;
		}
	};
	*buffer = C_NULL;
	ENC_CS_NEGATE( );

	return	i;
}


/**
*	�w��o�C�g�ǂݔ�΂�
*	 in	�ǂݔ�΂��o�C�g��
*	out	�Ȃ�
*/
void	enc_skip( word cnt )
{
	word	i;

	for( i = 0; i < cnt; i++ ){
		enc_readbuf( );
	}
}


/* end of enc28j60.c */
