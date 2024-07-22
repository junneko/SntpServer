/**
*	timeutility.c
*	���Ԋ֌W�T�u���[�`���W
*	Copyright (c)Junnichi Tomaru
*/
#include	<stddef.h>
#include	"library/timeutility.h"

extern long	timeoffset;

/**
*	�����̍������߂�(�b�P��)
*	 in	s:�J�n����
*		n:���ݎ���
*	out	��(�b)
*/
time_t	calc_timediff( struct tm *s, struct tm *n )
{
	time_t	st, nt;

	st = mktime( s );	/* �������b */
	nt = mktime( n );

	return	_difftime( nt, st );
}


/**
*	����(struct tm)��UTC�ɕϊ�
*	�N�A����ANSI�ɏ������Ă��邱��
*	 in	wt	�ϊ����鎞��
*		utc	UTC����
*		offset	����
*	out	TRUE:���� FALSE:�G���[
*/
bool	wt2utc( struct tm *wt, struct tm *utc, long offset )
{
	time_t	t;
	struct tm	*tmp;
	bool	ret;

	t = mktime( wt );	/* struct tm -> sec */
	t -= offset;		/* �I�t�Z�b�g������ */
	tmp = gmtime( &t );	/* sec -> struct tm */
	if( tmp != NULL ){
		*utc = *tmp;
		ret = TRUE;
	}
	else{
		ret = FALSE;
	}

	return	ret;
}


/**
*	UTC�����𐢊E���Ԃɕϊ�
*	�N�A����ANSI�ɏ������Ă��邱��
*	 in	utc	UTC����
*		wt	���E����
*	out	TRUE:���� FALSE:�G���[
*/
bool	utc2wt( struct tm *utc, struct tm *wt )
{
	time_t	t;
	struct tm	*tmp;
	bool	ret;

	t = mktime( utc ) + timeoffset;	/* �I�t�Z�b�g������ */
	tmp = gmtime( &t );
	if( tmp != NULL ){
		*wt = *tmp;
		ret = TRUE;
	}
	else{
		ret = FALSE;
	}

	return	ret;
}


/* end of timeutility.c */
