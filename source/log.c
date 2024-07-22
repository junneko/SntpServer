/**
*	log.c
*	���O�֌W���[�`��
*	Copyright (c)Junnichi Tomaru
*/
#include	"include/avrntp.h"


/**
*	�␳�����X�V
*	 in	1:�␳ 2:�z�M 3:�u���[�h�L���X�g
*	out	�Ȃ�
*/
void	update_callog( byte flg )
{
	cal_t	ct;
	size_t	rt;

	rt = sizeof( callog ) - sizeof( cal_t );	/* ����(�S�́|�P��) */
	memmove((char *)&callog[1], (char *)&callog[0], rt );	/* �P�V�t�g */
	ct.year = world_time.tm_year + 1900U;
	ct.mon = world_time.tm_mon + 1;
	ct.day = world_time.tm_mday;
	ct.hour = world_time.tm_hour;
	ct.min = world_time.tm_min;
	ct.sec = world_time.tm_sec;
	ct.csec = calsec;
	ct.cms = calms;
	ct.flg = flg;
	ct.pnt = osrvpnt;
	ct.dummy[0] = C_NULL;
	ct.dummy[1] = C_NULL;
	ct.dummy[2] = C_NULL;
	callog[0] = ct;
}


/**
*	�␳���O�N���A
*	 in	�Ȃ�
*	out	�Ȃ�
*/
void	clear_callog( void )
{
	memset((char *)&callog, 0x00, sizeof( callog ));
}


/**
*	�C�x���g���O�ǉ�
*	 in	�����C�x���g
*	out	�Ȃ�
*/
void	update_eventlog( byte evnt )
{
	evntlog_t	et = { 0U,0,0,0,0,0,0,0U,0U,0UL };
	size_t	rt;
	swbool	flg;

	rt = sizeof( eventlog ) - sizeof( evntlog_t );	/* ���� */
	memmove((char *)&eventlog[1], (char *)&eventlog[0], rt );	/* �P�V�t�g */
	et.year = world_time.tm_year + 1900U;
	et.mon = world_time.tm_mon + 1;
	et.day = world_time.tm_mday;
	et.hour = world_time.tm_hour;
	et.min = world_time.tm_min;
	et.sec = world_time.tm_sec;
	et.evnt = evnt;
	if( evnt == EVNT_ENC_RXRCVERR ){	/* ��M�G���[ */
		et.arg1 = rxstatus.status.rxsts.data;
		et.arg2 = rxstatus.rxcount.data;
		et.arg3 = (dword)rxstatus.next.data;
	}
	else if(( evnt == EVNT_ICMP_MESSAGE ) || ( evnt == EVNT_ICMP_RXSUMERR )){
		et.arg1 = icmptype;		/* ���b�Z�[�W�^�C�v */
		et.arg2 = icmpcode;		/* ���b�Z�[�W�R�[�h */
		et.arg3 = icmpopt;		/* �f�[�^�P */
	}
	else if(( evnt == EVNT_TCP_RXSUMERR ) || ( evnt == EVNT_UDP_RXSUMERR )){
		et.arg1 = pacinfo.myport;	/* �����̃|�[�g */
		et.arg2 = pacinfo.partport;	/* ����̃|�[�g */
		et.arg3 = pacinfo.partipaddr;	/* �����IP�A�h���X */
	}
	else if( evnt == EVNT_NTP_UNSYNC ){
		et.arg1 = et.arg2 = 0U;
		et.arg3 = ntpserver;
	}
	else{
		et.arg1 = et.arg2 = 0U;
		et.arg3 = 0UL;
	}
	eventlog[0] = et;
	flg = on;
	/* ----- �G���[LED�_�� ----- */
	if( evnt == EVNT_ICMP_MESSAGE ){	/* ���b�Z�[�W�͓_�����Ȃ� */
		flg = off;
	}
	else if( evnt == EVNT_NTP_UNSYNC ){	/* NTP�T�[�o�񓯊��͓_�����Ȃ� */
		flg = off;
	}
	else if( evnt == EVNT_NTP_LEAP ){	/* ���邤�␳�͓_�����Ȃ� */
		flg = off;
	}
	else if( evnt == EVNT_DHCP_RENEWAL ){	/* RENEWAL�͓_�����Ȃ� */
		flg = off;
	}
	else if( evnt == EVNT_DHCP_REBIND ){	/* REBIND�͓_�����Ȃ� */
		flg = off;
	}
	else if( evnt == EVNT_PWR_ON ){		/* �p���[�I�����Z�b�g�͓_�����Ȃ� */
		flg = off;
	}
	else if( evnt == EVNT_EXT_RESET ){	/* �O�����Z�b�g�͓_�����Ȃ� */
		flg = off;
	}
	else if( evnt == EVNT_WDT_RESET ){	/* WDT���Z�b�g�͓_�����Ȃ� */
		flg = off;
	}
	if( flg == on ){
		ERROR( );
		WORD_BIT15_ON( opests );	/* ERROR ON */
	}
}


/**
*	�C�x���g���O�N���A
*	 in	�Ȃ�
*	out	�Ȃ�
*/
void	clear_eventlog( void )
{
	memset((char *)&eventlog, 0x00, sizeof( eventlog ));
}


/* end of log.c */
