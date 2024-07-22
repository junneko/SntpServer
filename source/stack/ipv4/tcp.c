/**
*	tcp.c
*	TCP�w(OSI�Q�ƃ��f����S�w�F�g�����X�|�[�g�w)
*	Transmission Control Protocol:�R�l�N�V�����^�ʐM�v���g�R��(RFC793)
*	Copyright (c)Junnichi Tomaru
*/
#include	"ipv4/ipv4.h"

/* ----- �O���֐� ----- */
byte	http_output( int sid );


/**
*	�\�P�b�g���e�[�u���ɓo�^���Ă��邩���ׂ�
*	 in	�Ȃ�
*	out	0�`:��������(�o�^�ꏊ)
*		0<:�o�^����Ă��Ȃ�(�o�^�������Ƃ���-1)
*		-100:�o�^�����ς�
*/
static int	tcp_searchsocket( void )
{
	int	i, lp, ret;
	dword	addr;
	word	pport, dport;
	tsock_t	t;

	addr = pacinfo.partipaddr;
	pport = pacinfo.partport;
	dport = pacinfo.myport;
	lp = ( -1 );
	ret = ( -100 );
	for( i = 0; i < TCPSOCK_MAX; i++ ){
		t = sock_tbl[i];
		if(( t.status == LISTEN ) && ( lp == ( -1 ))){	/* �ŏ��Ɍ�������LISTEN */
			lp = i;
			continue;
		}
		if( t.ip != addr ){	/* IP�A�h���X�s��v */
			continue;
		}
		if(( t.partport == pport ) && ( t.selfport == dport )){	/* �|�[�g���v */
			ret = i;
			break;
		}
	}
	if( i == TCPSOCK_MAX ){	/* ������Ȃ� */
		if( lp < 0 ){	/* ���o�^������ */
			ret = ( -100 );
		}
		else{		/* �ŏ��Ɍ����������o�^�̂Ƃ���ɓ���� */
			ret = (-( lp + 1 ));
		}
	}

	return	ret;
}


/**
*	�\�P�b�g�e�[�u���ɓo�^����
*	 in	�Ȃ�
*	out	�Ȃ�
*/
static void	tcp_registsocket( int sid )
{
	sock_tbl[sid].ip = pacinfo.partipaddr;
	sock_tbl[sid].selfport = pacinfo.myport;
	sock_tbl[sid].partport = pacinfo.partport;
}


/**
*	LISTEN��Ԃɂ���
*	 in	�\�P�b�gID
*	out	�Ȃ�
*/
void	tcp_resetsocket( int sid )
{
	tsock_t	*t;
	char	*p;

	p = ( sid == 0 )? cgibuf1: cgibuf2;
	t = &sock_tbl[sid];
	t->status = LISTEN;
	t->ip = 0;
	t->selfport = 0;
	t->partport = 0;
	t->acknum = 0;
	memset( p, 0, CGIBUFSIZE );	/* sizeof�g��Ȃ� */
	httpen[sid] = cgien[sid] = off;
}


/**
*	�ڑ��v����M����
*	 in	�\�P�b�gID
*	out	0:���� 0�ȊO:�G���[����
*/
static byte	tcp_synpacket( int sid )
{
	byte	ret;
	tsock_t	*t;

	if( pacinfo.myport != http_port ){
		return EVNT_NONE;	/* �������Ȃ� */
	}
	tcp_registsocket( sid );	/* �\�P�b�g��o�^ */
	t = &sock_tbl[sid];
	t->status = SYN_RCVD;		/* LISTEN -> SYN_RCVD */
	t->seqnum = make_rand( );
	t->acknum = pacinfo.seq + 1;
	t->timer = 60;
	ret = tcp_output(( SYN_FLAG | ACK_FLAG ), t, 0U );	/* �ڑ��v��&ACK */
	if( ret != EVNT_NONE ){
		tcp_resetsocket( sid );	/* ���s�����烊�Z�b�g���A����SYN��҂� */
	}

	return	ret;
}


/**
*	�f�[�^������
*	 in	�\�P�b�gID
*	out	�Ȃ�
*/
void	tcp_search( int sid )
{
	int	i;
	char	buf[8], *p;

	enc_rxseek( pacinfo.proto_body );	/* �f�[�^���Ɉړ� */
	for( i = 0; i < pacinfo.proto_len; ){
		i += enc_readstr((byte *)buf, 5, '\n' );
		if( strcmp_P( buf, PSTR( "GET /" )) == 0 ){	/* GET�`HTTP/�̍s���o�� */
			p = ( sid == 0 )? cgibuf1: cgibuf2;
			i += enc_readstr((byte *)p, CGIBUFSIZE-5, '\n' );/* �p�����[�^�R�s�[ */
			cgien[sid] = CGI_GET;
		}
		else if( strncmp_P( buf, PSTR( "HEAD" ), 4 ) == 0 ){	/* �w�b�_���o�� */
			cgien[sid] = CGI_HEAD;
		}
		else if(( buf[0] == '\r' ) && ( buf[1] == '\n' )){	/* HTTP�w�b�_�I����CRLF */
			if( i >= pacinfo.proto_len ){		/* �f�[�^�Ō��CRLF */
				httpen[sid] = on;
				break;
			}
		}
		else{			/* ���̑��͓ǂݔ�΂� */
			while( i < pacinfo.proto_len ){
				i++;
				if( enc_readbuf( ) == '\n' ){
					break;
				}
			}
		}
	}
}


/**
*	ACK��M����
*	 in	�\�P�b�gID
*	out	0:���� 1:�G���[����
*/
static byte	tcp_ackpacket( int sid )
{
	byte	ret, sts;
	tsock_t	*t;

	ret = EVNT_NONE;
	t = &sock_tbl[sid];
	sts = t->status;
	if( sts == SYN_RCVD ){		/* �ڑ��v����ACK */
		t->status = ESTABLISHED;	/* �ڑ��m�� */
	}
	else if( sts == ESTABLISHED ){	/* HTTP���M�ɑ΂���ACK */
		if( pacinfo.proto_len ){	/* �o�b�t�@����f�[�^�Ȃǂ����� */
			ret = tcp_output( ACK_FLAG, t, 0U );
			tcp_search( sid );
		}
		else{
			ret = tcp_output(( FIN_FLAG | ACK_FLAG ), t, 0U );
			t->status = FIN_WAIT_1;
		}
	}
	else if( sts == FIN_WAIT_1 ){	/* FIN�ɑ΂���ACK */
		t->status = FIN_WAIT_2;
	}
	else if( sts == LAST_ACK ){	/* FIN�ɑ΂���ACK */
		tcp_resetsocket( sid );
	}

	return	ret;
}


/**
*	�ؒf�v����M����
*	 in	�\�P�b�gID
*	out	0:���� 1:�G���[����
*/
static byte	tcp_finpacket( int sid )
{
	byte	ret, sts;
	tsock_t	*t;

	ret = 0;
	t = &sock_tbl[sid];
	sts = t->status;
	t->acknum = pacinfo.seq + 1;
	if( sts == ESTABLISHED ){	/* �ڑ��� */
		ret = tcp_output( ACK_FLAG, t, 0U );
		ret = tcp_output(( FIN_FLAG | ACK_FLAG ), t, 0U );
		t->status = LAST_ACK;
	}
	else if(( sts == FIN_WAIT_1 ) || ( sts == FIN_WAIT_2 )){	/*  */
		ret = tcp_output( ACK_FLAG, t, 0U );
		tcp_resetsocket( sid );
	}

	return	ret;
}


/**
*	�ʏ�
*	 in	�\�P�b�gID
*	out	0:���� 0�ȊO:�G���[����
*/
static byte	tcp_normalpacket( int sid )
{
	byte	ret, sts;
	tsock_t	*t;

	ret = EVNT_NONE;
	if( pacinfo.proto_len == 0U ){	/* �f�[�^�����̂Ŗ��� */
		return	EVNT_NONE;
	}
	t = &sock_tbl[sid];
	sts = t->status;
	if( sts == SYN_RCVD ){	/* PUSH�Ƌ���ACK�������Ɣ��f */
		t->status = ESTABLISHED;	/* �ڑ��m�� */
	}
	if( sts == ESTABLISHED ){
		ret = EVNT_NONE;
		t->acknum = pacinfo.seq + pacinfo.proto_len;
		if( t->selfport == http_port ){	/* WWW */
			ret = tcp_output( ACK_FLAG, t, 0U );/*  */
			tcp_search( sid );
			if( httpen[sid] == on ){
				ret = http_output( sid );
			}
		}
		else{	/* ���̑��̃|�[�g���͐ؒf */
			ret = tcp_output(( FIN_FLAG | ACK_FLAG ), t, 0U );
			t->status = FIN_WAIT_1;
		}
	}

	return	ret;
}


/**
*	TCP�O����
*	 in	�Ȃ�
*	out	0:�T������Ȃ� 0�ȊO:�t���O
*/
static byte	tcp_preprocess( void )
{
	byte	hdrlen, ret;
	word	pnt;
	tcp_t	rxtcp;

	pnt = ip_hdrlen + IP_TOP;	/* �w�b�_�ʒu */
	enc_readbuffer((byte *)&rxtcp, TCPHDR_SIZE );	/* �w�b�_�ǂݍ��� */
	pacinfo.partport = cnvendian16( rxtcp.srcport );	/* ����̃|�[�g�ԍ� */
	pacinfo.myport = cnvendian16( rxtcp.destport );		/* ���M��(����)�̃|�[�g�ԍ� */
	pacinfo.seq = cnvendian32( rxtcp.seq );
	hdrlen = ( rxtcp.offset >> 2 );		/* TCP�w�b�_��((off>>4)*4) */
	pacinfo.proto_body = pnt + hdrlen;	/* TCP�f�[�^�擪�ʒu */
	pacinfo.proto_len = pacinfo.datasize - hdrlen;	/* TCP�f�[�^�� */

	pseudo_hdr.sipaddr = cnvendian32( pacinfo.partipaddr );	/* ���M��IP�A�h���X */
	pseudo_hdr.dipaddr = cnvendian32( pacinfo.myipaddr );	/* ����IP�A�h���X */
	pseudo_hdr.zero = 0;			/* �p�f�B���O(0) */
	pseudo_hdr.protocol = IPPROTO_TCP;	/* �v���g�R�� */
	pseudo_hdr.paclen = cnvendian16( pacinfo.datasize );	/* �v���g�R������ */
	if( tcpudp_sum( RX, pnt, pacinfo.datasize ) != 0U ){	/* �`�F�b�N�T������Ȃ� */
		ret = 0;
	}
	else{
		ret = rxtcp.flag;
	}

	return	ret;
}

/**
*	���Z�b�g���M�p
*	 in	�Ȃ�
*	out	0:���� 0�ȊO:�G���[����
*/
byte	tcp_sendreset( void )
{
	tsock_t	t;

	t.ip = pacinfo.partport;
	t.selfport = pacinfo.myport;	/* �����̃|�[�g */
	t.partport = pacinfo.partport;	/* ����̃|�[�g */
	t.seqnum = 0UL;			/* �V�[�P���X�ԍ� */
	t.acknum = pacinfo.seq + 1UL;	/* ��M�m�F�ԍ� */

	return	tcp_output( RST_FLAG, &t, 0U );
}


/**
*	TCP���͏���
*	 in	�Ȃ�
*	out	0:���� 0�ȊO:�G���[����
*/
byte	tcp_input( void )
{
	byte	flg, ret;
	int	sid;

	ret = EVNT_NONE;
	flg = tcp_preprocess( );
	if( flg == 0 ){		/* �T������Ȃ� */
		return	EVNT_TCP_RXSUMERR;
	}
	sid = tcp_searchsocket( );
	if( sid == ( -100 )){		/* �o�^�����ς�(�������Ȃ�) */
		ret = tcp_sendreset( );	/* RST���� */
	}
	else if( sid < 0 ){		/* ���o�^���� */
		if( flg & SYN_FLAG ){
			ret = tcp_synpacket( (-sid) - 1 );
		}
	}
	else{
		if( flg & SYN_FLAG ){	/* �o�^����Ă���Ƃ����SYN���� */
			ret = tcp_sendreset( );	/* RST���� */
			tcp_resetsocket( sid );
		}
		else if( flg & RST_FLAG ){	/* ���Z�b�g */
			ret = tcp_output( RST_FLAG, &sock_tbl[sid], 0U );	/* ����������� */
			tcp_resetsocket( sid );
		}
		else if( flg & FIN_FLAG ){	/* �ؒf�v�� */
			ret = tcp_finpacket( sid );
		}
		else if( flg & PSH_FLAG ){	/* �����v��(ACK�ƈꏏ�ɂ���̂ŁA��Ɍ���) */
			ret = tcp_normalpacket( sid );
		}
		else if( flg & ACK_FLAG ){	/* ACK */
			ret = tcp_ackpacket( sid );
		}
	}

	return	ret;
}


/**
*	TCP�f�[�^���o���[�`��
*	 in	flags: ����t���O
*		  tsp: �\�P�b�g�̃|�C���^
*		 size: ���M�f�[�^�̃T�C�Y
*	out	0:����I���@1:ARP�^�C���A�E�g
*/
byte	tcp_output( byte flags, tsock_t *tsp, word size )
{
	word	sum;
	byte	ret;

	/* �f�[�^�����́A���炩���߃Z�b�g���Ă������� */
	pacinfo.datasize = TCPHDR_SIZE + size;
	enc_txseek( TCP_TOP );		/* TCP�w�b�_���ړ� */
	enc_writebuf2( tsp->selfport );	/* ���M���|�[�g */
	enc_writebuf2( tsp->partport );	/* ����|�[�g */
	enc_writebuf4( tsp->seqnum );	/* �V�[�P���X�ԍ� */
	enc_writebuf4( tsp->acknum );	/* ACK�ԍ� */
	enc_writebuf( 0x50 );		/* �w�b�_����(20�o�C�g) */
	enc_writebuf( flags & BYTE_MASK_L6 );	/* �t���O */
	enc_writebuf2( TCP_WINDOWSIZE );/* �E�B���h�E�T�C�Y */
	enc_writebuf4( 0UL );		/* �`�F�b�N�T��,�ً}�|�C���^ */

	/* �`�F�b�N�T���v�Z */
	pseudo_hdr.sipaddr = cnvendian32( myipaddr );
	pseudo_hdr.dipaddr = cnvendian32( tsp->ip );
	pseudo_hdr.zero = 0;
	pseudo_hdr.protocol = IPPROTO_TCP;
	pseudo_hdr.paclen = cnvendian16( pacinfo.datasize );
	sum = tcpudp_sum( TX, TCP_TOP, pacinfo.datasize );	/* �`�F�b�N�T���v�Z */
	enc_txseek( TCP_SUM );		/* �`�F�b�N�T���ʒu */
	enc_writebuf2( sum );

	ret = ip_output( IPPROTO_TCP );
	if( ret == EVNT_NONE ){		/* �G���[�Ȃ� */
		if( flags & ( SYN_FLAG | FIN_FLAG )){	/* SYN or FIN */
			tsp->seqnum++;
		}
		else if( size > 0U ){
			tsp->seqnum += size;
		}
	}

	return	ret;
}


/* end of tcp.c */
