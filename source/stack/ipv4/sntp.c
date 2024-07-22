/**
*	sntp.c
*	Simple Network Time Protocol: �����C���v���g�R�� RFC5905
*	Copyright (c)Junnichi Tomaru
*/
#include	"ipv4/ipv4.h"
extern int	hosei;		/* �␳��(ms) */
extern byte	calmode;	/* �Z�����[�h */

/**
*	�����_�ȉ��^�C�}�l���^�C���X�^���v�ɂ���
*	����32�r�b�g���b�̏����_�ȉ��Ȃ̂ŁA�b�̕����ɓ���Ă���
*	1000�Ŋ��邱�Ƃɂ�艺��32�r�b�g�ɕb���Z�œ����
*	 in	�����_�ȉ��^�C�}�l
*	out	�^�C���X�^���v
*/
static dword	timer2stamp( dword timer )
{
	qword_t	tmp;	/* �v�Z�p */
	dword	ret;

	tmp.dwords.hi = timer;	/* time * 4294967296 */
	tmp.dwords.lo = 0L;
	ret = ( dword )( tmp.data / 1000ULL );	/* ( tmp / 1000 ) */

	return	ret;
}


/**
*	�^�C���X�^���v�������_�ȉ��^�C�}�l�ɂ���
*	����32�r�b�g���b�̏����_�ȉ�(2^-x)�Ȃ̂ŁA1000(ms)��
*	�|����Ə��32�r�b�g�Ƀ~���b���Z�̐��l�ɂȂ�B
*	 in	�^�C���X�^���v
*	out	�����_�ȉ��^�C�}�l
*/
static dword	stamp2timer( dword timer )
{
	qword_t	ret;

	ret.data = (qword)timer * 1000ULL;

	return	ret.dwords.hi;
}


/**
*	���t�@�����XID�Z�b�g
*	 in	�Ȃ�
*	out	�Ȃ�
*/
void	set_referenceid( void )
{
	if( adjmode == GPSADJ_MODE ){	/* GPS MODE */
		enc_writebufc( PSTR( "GPS" ));
		enc_writebuf( C_NULL );
	}
	else{		/* NTP MODE */
		enc_writebuf4( myipaddr );	/* �Q�Ǝ��ʎq(RFC5905�ɂ��IPv4�A�h���X) */
	}
}


/**
*	�����␳�A�␳���O�����ۑ�(�T�u���[�`��)
*	 in	���ԍ�
*	out	�Ȃ�
*/
void	ntp_calsub( int64_t data )
{
	qword_t	qw;
	long	l, w;
	int	i;

	qw.data = data;
	l = (long)qw.dwords.hi;		/* �b�␳�� */
	i = (int)stamp2timer( qw.dwords.lo );	/* ms�␳�� */
	if(( inical == off ) && ( timewidth != 0U ) && ( chkskip == off )){	/* �����␳�E���薳���ł͂Ȃ� */
		w = _abs( l );			/* �␳��͉����b���Y���␳���邱�Ƃ��Ȃ��Ƃ����O�� */
		if( w > (long)timewidth ){	/* �ω������傫���Ƃ��͕␳���Ȃ� */
			return;
		}
	}
	chkskip = off;
	/* ----- �������X�V ----- */
	if(( _abs( l ) > 0 ) || ( _abs( i ) >= slew_width )){	/* STEP���[�h(����l <= ����) */
		_di( );
		slew_ms = 0;
		utc_sec += l;		/* �b�̃Y���␳ */
		utc_msec += i;		/* �����_�ȉ��̃Y���␳ */
		if(( utc_msec < 0 ) && ( utc_sec > 0 )){	/* ms�̃Y���ŕ␳�����ق����ǂ�(�}�C�i�X����) */
			utc_sec--;
			utc_msec += 1000;
		}
		rnstamp = utc_sec;	/* �X�V���� */
		rntime = utc_msec;
		_ei( );
	}
	else{	/* SLEW���[�h */
		_di( );
		slew_ms = i;		/* �������␳ */
		rnstamp = utc_sec;	/* �X�V�����͎󂯎�������� */
		rntime = utc_msec;
		_ei( );
	}
	/* ----- �␳��� ----- */
	if(( l < 0 ) && ( i > 0 )){	/* �b���}�C�i�X��ms���v���X�̂Ƃ��� */
		l++;			/* ms�̂ق��Œ������������Ƃɂ��� */
		i -= 1000;
	}
	if(( l > 32767L ) || ( l < -32768L )){
		calsec = 32767;		/* �o���Ă����͍̂ŏ����ɂ��� */
	}
	else{
		calsec = (int)l;
	}
	calms = i;

	/* ----- �Ԋu���� ver2.20.00 ----- */
	if( calmode == 0 ){		/* ���� */
		calmode = 2;		/* ���� */
	}
	else{	/* �����␳�ł͂Ȃ� */
		hosei = _abs( l * 1000 + i );	/* �b�␳�ʂ�����ɓ���� */
		if( hosei >= 333 ){	/* �ω������傫���Ƃ��͎������߂� */
			calmode = 1;
		}
		else{
			calmode = 2;
		}
	}
	cal_updated = on;
}


/**
*	NTP�u���[�h�L���X�g�N���C�A���g����
*	 in	��M�p�P�b�g�|�C���^
*	out	0:���� 0�ȊO:�G���[
*/
static byte	ntp_bcastcliant( ntp_st *rxntp )
{
	qsword_t	qsw;
	int64_t	t1, t2;
	ul_t	ul;
	byte	st;

	lists = rxntp->livnmd & BYTE_MASK_U2;
	st = rxntp->stratum;
	if(( lists == LI_ALARM ) || ( st == 0 ) || ( st == STRATUM_MAX )){	/* LI=3,stratum=0or16 */
		return	EVNT_NONE;	/* �����ɔ��f���Ȃ� */
	}
	stratum = st + 1;		/* �K���͎Q�ƌ�+1 */
	rootdly = cnvendian32( rxntp->delay );	/* ���[�g�x�� */
	rootdsprsn = cnvendian32( rxntp->dispersion );	/* ���[�g���U */
	ul.bytes.ll = rxntp->txts.b8;
	ul.bytes.lh = rxntp->txts.b7;
	ul.bytes.hl = rxntp->txts.b6;
	ul.bytes.hh = rxntp->txts.b5;	/* �~���b */
	qsw.dwords.lo = ul.data;
	ul.bytes.ll = rxntp->txts.b4;
	ul.bytes.lh = rxntp->txts.b3;
	ul.bytes.hl = rxntp->txts.b2;
	ul.bytes.hh = rxntp->txts.b1;	/* �b */
	qsw.dwords.hi = ul.data;	/* ���M�^�C���X�^���v */
	t1 = qsw.data;
	if( t1 == 0LL ){		/* �^�C���X�^���v���O */
		return	EVNT_NONE;
	}
	_di( );
	qsw.dwords.hi = utc_sec + TIME_CONST;	/* UTC��NTP���ԕϊ� */
	qsw.dwords.lo = timer2stamp( utc_msec );	/* �����_�ȉ� */
	_ei( );
	t2 = qsw.data;
	ntp_calsub( t1 - t2 );		/* �����X�V */

	return	EVNT_NONE;
}


/**
*	NTP�N���C�A���g����
*	��(t)=(( t2 - t1 ) + ( t3 - t4 )) / 2
*	T2-T1: �ʐMdelay + �����̃Y��
*	T3-T4: �ʐMdelay - �����̃Y��
*	�����ŒʐMdelay�������Ɖ��肳��Ă���
*	 in	��M�p�P�b�g�|�C���^
*	out	0:���� 0�ȊO:�G���[
*/
static byte	ntp_cliant( ntp_st *rxntp )
{
	qsword_t	qsw;
	int64_t	tmp, t1, t2;
	ul_t	ul;
	byte	st;

	if( adjustseq == ADJUSTSEQ_NONE ){
		return	EVNT_NONE;		/* ���폈���Ȃ̂� */
	}
	lists = rxntp->livnmd & BYTE_MASK_U2;
	st = rxntp->stratum;
	if(( lists == LI_ALARM ) || ( st == STRATUM_0 ) || ( st >= STRATUM_MAX )){	/* LI=3 or stratum=0 or 16 */
		time_sts = TIME_UNADJUSTED;
		rslv_req = 0;
		adjustseq = ADJUSTSEQ_NONE;	/* NTP�v�����~ */
		unsync_seq( );
		return	EVNT_NTP_UNSYNC;
	}
	stratum = st + 1;			/* �K���͎Q�ƌ�+1 */
	rootdly = cnvendian32( rxntp->delay );	/* ���[�g�x�� */
	rootdsprsn = cnvendian32( rxntp->dispersion );	/* ���[�g���U */
	ul.bytes.ll = rxntp->origints.b8;
	ul.bytes.lh = rxntp->origints.b7;
	ul.bytes.hl = rxntp->origints.b6;
	ul.bytes.hh = rxntp->origints.b5;
	qsw.dwords.lo = ul.data;
	ul.bytes.ll = rxntp->origints.b4;
	ul.bytes.lh = rxntp->origints.b3;
	ul.bytes.hl = rxntp->origints.b2;
	ul.bytes.hh = rxntp->origints.b1;
	qsw.dwords.hi = ul.data;
	tmp = qsw.data;				/* ��_�^�C���X�^���v */
	ul.bytes.ll = rxntp->rxts.b8;
	ul.bytes.lh = rxntp->rxts.b7;
	ul.bytes.hl = rxntp->rxts.b6;
	ul.bytes.hh = rxntp->rxts.b5;
	qsw.dwords.lo = ul.data;
	ul.bytes.ll = rxntp->rxts.b4;
	ul.bytes.lh = rxntp->rxts.b3;
	ul.bytes.hl = rxntp->rxts.b2;
	ul.bytes.hh = rxntp->rxts.b1;
	qsw.dwords.hi = ul.data;
	t1 = ( qsw.data - tmp ) / 2LL;		/* ��M�^�C���X�^���v - ��_�^�C���X�^���v / 2 */
	ul.bytes.ll = rxntp->txts.b8;
	ul.bytes.lh = rxntp->txts.b7;
	ul.bytes.hl = rxntp->txts.b6;
	ul.bytes.hh = rxntp->txts.b5;
	qsw.dwords.lo = ul.data;
	ul.bytes.ll = rxntp->txts.b4;
	ul.bytes.lh = rxntp->txts.b3;
	ul.bytes.hl = rxntp->txts.b2;
	ul.bytes.hh = rxntp->txts.b1;
	qsw.dwords.hi = ul.data;
	tmp = qsw.data;				/* ���M�^�C���X�^���v */
	qsw.dwords.hi = rxstamp + TIME_CONST;	/* UTC��NTP���ԕϊ� */
	qsw.dwords.lo = timer2stamp( rxtime );	/* �����_�ȉ� */
	t2 = ( tmp - qsw.data ) / 2LL;		/* ���M�^�C���X�^���v - ��M���� / 2 */
	ntp_calsub( t1 + t2 );			/* �����X�V */

	return	EVNT_NONE;
}


/**
*	NTP�T�[�o����
*	 in	��M�p�P�b�g�|�C���^
*	out	0:���� 1:�G���[����
*/
static byte	ntp_server( ntp_st *rxntp )
{
	byte	livnmd, st, i;
	byte	*p;
	time_t	urn, urx, utx;
	dword	drn, drx, dtx;

	livnmd = rxntp->livnmd & 0x38;	/* �o�[�W�����i���o���o�� */
	if( synchronized == on ){
		livnmd |= lists;	/* LI�ɔ��f */
		st = stratum;		/* �K�� */
		/* �Q�ƃ^�C���X�^���v */
		urn = rnstamp + TIME_CONST;	/* UTC��NTP���ԕϊ� */
		drn = timer2stamp( rntime );	/* �����_�ȉ� */
	}
	else{
		livnmd |= LI_ALARM;	/* �����ĂȂ��Ƃ���LI=3 */
		st = STRATUM_MAX;	/* stratum16(RFC5905�ɂ��)  */
		/* �Q�ƃ^�C���X�^���v=0 */
		urn = 0;
		drn = 0;
	}
	/* ��M�^�C���X�^���v */
	urx = rxstamp + TIME_CONST;	/* UTC��NTP���ԕϊ� */
	drx = timer2stamp( rxtime );	/* �����_�ȉ� */
	/* ���M�o�b�t�@�ւ̃Z�b�g */
	enc_txseek( UDP_DATA );
	enc_writebuf( livnmd | SNTP_SERVER );	/* LI,VN,MODE(�T�[�o) */
	enc_writebuf( st );		/* �K�� */
	enc_writebuf( rxntp->interval );/* �|�[�����O�Ԋu(�I���W�i�����R�s�[) */
	enc_writebuf( PRE_M10 );	/* ���x(-10(0.9765625ms),1ms���Ƃ̎����J�E���g) */
	enc_writebuf4( 0UL );		/* ���[�g�x��(�������K��1������) */
	enc_writebuf4( 0UL );		/* ���[�g���U(�������K��1������) */
	set_referenceid( );		/* Reference ID */
	enc_writebuf4( urn );		/* �Q�ƃ^�C���X�^���v */
	enc_writebuf4( drn );		/* �����_�ȉ� */
	if( synchronized == on ){
		p = &rxntp->txts.b1;	/* �J�n�^�C���X�^���v */
		for( i = 0; i < 8; i++, p++ ){	/* ���M�^�C���X�^���v���R�s�[���� */
			enc_writebuf( *p );
		}
	}
	else{
		enc_writebuf4( 0UL );
		enc_writebuf4( 0UL );
	}
	enc_writebuf4( urx );	/* ��M�^�C���X�^���v */
	enc_writebuf4( drx );
	if( synchronized == on ){	/* ���M�^�C���X�^���v�𐳊m�ɂ��邽�߁A�����ŏ��� */
		_di( );
		utx = utc_sec + TIME_CONST;	/* UTC��NTP���ԕϊ� */
		dtx = timer2stamp( utc_msec );	/* �����_�ȉ� */
		_ei( );
	}
	enc_writebuf4( utx );	/* ���M�^�C���X�^���v */
	enc_writebuf4( dtx );

	return	udp_output( SNTP_BASELENGTH );
}


/**
*	NTP����
*	 in	�Ȃ�
*	out	0:���� 0�ȊO:�G���[����
*/
byte	ntp_input( void )
{
	byte	mode, ret;
	ntp_st	rxntp;

	ret = EVNT_NONE;
	enc_rxseek( pacinfo.proto_body );	/* �f�[�^���Ɉړ� */
	enc_readbuffer((byte *)&rxntp, sizeof( rxntp ));	/* NTP�ǂݍ��� */
	mode = rxntp.livnmd & BYTE_MASK_L3;
	if( mode == SNTP_SERVER ){		/* �T�[�o����̉��� */
		ret = ntp_cliant( &rxntp );
	}
	else if( mode == SNTP_CLIANT ){		/* �N���C�A���g����̖₢���킹 */
		ret = ntp_server( &rxntp );
	}
	else if(( mode == SNTP_BCAST ) && ( adjmode & BCAST_MODE )){	/* �u���[�h�L���X�g */
		ret = ntp_bcastcliant( &rxntp );
	}

	return	ret;
}


/**
*	NTP�����v��
*	 in	�T�[�oIP�A�h���X
*	out	0:���� 0�ȊO:�G���[����
*/
byte	ntp_request( dword sntpip )
{
	time_t	utx;
	dword	dtx;

	pacinfo.partipaddr = sntpip;
	pacinfo.partport = UDP_NTP;
	pacinfo.myport = UDP_NTP;

	enc_txseek( UDP_DATA );
	enc_writebuf( 0x20 + SNTP_CLIANT );	/* LI=0,VN=4,MODE(�N���C�A���g) */
	enc_fillwrite( 0, 39U );	/* ���M�^�C���X�^���v�ȊO0 */
	_di( );
	utx = utc_sec + TIME_CONST;	/* UTC��NTP���ԕϊ� */
	dtx = timer2stamp( utc_msec );	/* �����_�ȉ� */
	_ei( );
	txstamp = dtx;			/* ����32bit�ۑ� */
	enc_writebuf4( utx );		/* ���M�^�C���X�^���v */
	enc_writebuf4( dtx );

	return	udp_output( SNTP_BASELENGTH );
}


/**
*	NTP�����u���[�h�L���X�g(�z�M)
*	 in	�Ȃ�
*	out	0:���� 0�ȊO:�G���[����
*/
byte	ntp_broadcast( void )
{
	time_t	urn, utx;
	dword	drn, dtx;
	byte	i, livnmd, st;

	pacinfo.partipaddr = ntpbcipadr;
	pacinfo.partport = UDP_NTP;
	pacinfo.myport = UDP_NTP;
	livnmd = 0x20 + SNTP_BCAST;	/* LI=0,VN=4,MODE5(�u���[�h�L���X�g) */
	st = STRATUM_1;			/* �K�w1(RFC2030�ɂ��) */
	if( synchronized == off ){	/* ���������Ă��Ȃ� */
		livnmd |= LI_ALARM;	/* LI=3 */
		st = STRATUM_MAX;	/* stratum16(RFC5905�ɂ��) */
	}
	enc_txseek( UDP_DATA );
	enc_writebuf( livnmd );
	enc_writebuf( st );		/* Stratum */
	i = log2x( binterval );
	enc_writebuf( i );		/* �|�[�����O�Ԋu */
	enc_writebuf( PRE_M10 );	/* ���x(-10(0.9765625ms),1ms���Ƃ̃J�E���g) */
	enc_writebuf4( rootdly );	/* ���[�g�x�� */
	enc_writebuf4( rootdsprsn );	/* ���[�g���U */
	set_referenceid( );		/* Reference ID */
	urn = rnstamp + TIME_CONST;	/* UTC��NTP���ԕϊ� */
	drn = timer2stamp( rntime );	/* �����_�ȉ� */
	enc_writebuf4( urn );		/* �Q�ƃ^�C���X�^���v */
	enc_writebuf4( drn );		/* �����_�ȉ� */
	enc_fillwrite( 0, 16U );	/* �J�n�E��M�^�C���X�^���v0 */
	_di( );
	utx = utc_sec + TIME_CONST;	/* UTC��NTP���ԕϊ� */
	dtx = timer2stamp( utc_msec );	/* �����_�ȉ� */
	_ei( );
	enc_writebuf4( utx );		/* ���M�^�C���X�^���v */
	enc_writebuf4( dtx );

	return	udp_output( SNTP_BASELENGTH );
}


/**
*	����NTP�T�[�o�Ɉړ�(0,0,0,0�łȂ����̃T�[�o�ݒ��T��)
*	 in	�Ȃ�
*	out	�Ȃ�
*/
void	nextntpsrv( void )
{
	dword	addr;
	byte	i, p;
	char	buf[32];

	osrvpnt = srvpnt;	/* �o�b�N�A�b�v */
	p = srvpnt;
	for( i = 0; i < 4; i++ ){
		p++;
		p &= BYTE_MASK_L2;
		/* �R�s�[���̓�������ɂ���̂�strcpy���g�p���� */
		strcpy( buf, (char *)pgm_read_word( ntpsrv + p ));
		if( ipstr2bin( buf, (dword *)&addr ) == TRUE ){	/* ���l */
			if( addr != 0UL ){	/* �A�h���X�L�� */
				srvpnt = p;
				break;
			}
		}
		else{	/* �����w�� */
			srvpnt = p;
			break;
		}
	}
}


/**
*	NTP�v������
*	 in	�Ȃ�
*	out	0:���� 0�ȊO:�G���[����
*/
byte	ntp_reqseq( void )
{
	byte	sts;

	sts = EVNT_NONE;
	if( adjustseq == ADJUSTSEQ_NONE ){	/* �����Ȃ� */
		return	EVNT_NONE;
	}
	else if( adjustseq == 1 ){	/* �␳�V�[�P���X�J�n */
		/* �R�s�[���̓�������ɂ���̂�strcpy���g�p���� */
		strcpy( rslvname, (char *)pgm_read_word( ntpsrv + srvpnt ));
		rslv_req = 1;
		adjustseq = 2;
	}
	else if( adjustseq == 2 ){	/* ���O������ */
		if( rslv_end == on ){	/* �����I�� */
			rslv_end = off;
			ntpserver = rslv_addr;
			ntprtrycnt = 0;
			sts = ntp_request( ntpserver );	/* �����Ď擾(�v��) */
			if( sts == EVNT_NONE ){
				adjustseq = 3;
				ntpstart = getcount1ms( );
			}
			else{
				adjustseq = ADJUSTSEQ_NONE;
			}
			nextntpsrv( );
		}
	}
	else if( adjustseq == 3 ){	/* NTP���N�G�X�g�� */
		if(( getcount1ms( ) - ntpstart ) >= ntptout ){	/* �^�C���A�E�g */
			ntprtrycnt++;
			if( ntprtrycnt >= 3 ){
				time_sts = TIME_TIMEOUT;	/* lists�ɂ͔��f���Ȃ� */
				sts = EVNT_NTP_TIMEOUT1 + osrvpnt;
				unsync_seq( );
			}
			else{
				sts = ntp_request( ntpserver );	/* �����Ď擾(�v��) */
				if( sts == EVNT_NONE ){
					ntpstart = getcount1ms( );
				}
				else{
					adjustseq = ADJUSTSEQ_NONE;
				}
			}
		}
	}

	return	sts;
}


/* end of sntp.c */
