/**
*	log.c
*	ログ関係ルーチン
*	Copyright (c)Junnichi Tomaru
*/
#include	"include/avrntp.h"


/**
*	補正履歴更新
*	 in	1:補正 2:配信 3:ブロードキャスト
*	out	なし
*/
void	update_callog( byte flg )
{
	cal_t	ct;
	size_t	rt;

	rt = sizeof( callog ) - sizeof( cal_t );	/* 差分(全体－１個分) */
	memmove((char *)&callog[1], (char *)&callog[0], rt );	/* １個シフト */
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
*	補正ログクリア
*	 in	なし
*	out	なし
*/
void	clear_callog( void )
{
	memset((char *)&callog, 0x00, sizeof( callog ));
}


/**
*	イベントログ追加
*	 in	発生イベント
*	out	なし
*/
void	update_eventlog( byte evnt )
{
	evntlog_t	et = { 0U,0,0,0,0,0,0,0U,0U,0UL };
	size_t	rt;
	swbool	flg;

	rt = sizeof( eventlog ) - sizeof( evntlog_t );	/* 差分 */
	memmove((char *)&eventlog[1], (char *)&eventlog[0], rt );	/* １個シフト */
	et.year = world_time.tm_year + 1900U;
	et.mon = world_time.tm_mon + 1;
	et.day = world_time.tm_mday;
	et.hour = world_time.tm_hour;
	et.min = world_time.tm_min;
	et.sec = world_time.tm_sec;
	et.evnt = evnt;
	if( evnt == EVNT_ENC_RXRCVERR ){	/* 受信エラー */
		et.arg1 = rxstatus.status.rxsts.data;
		et.arg2 = rxstatus.rxcount.data;
		et.arg3 = (dword)rxstatus.next.data;
	}
	else if(( evnt == EVNT_ICMP_MESSAGE ) || ( evnt == EVNT_ICMP_RXSUMERR )){
		et.arg1 = icmptype;		/* メッセージタイプ */
		et.arg2 = icmpcode;		/* メッセージコード */
		et.arg3 = icmpopt;		/* データ１ */
	}
	else if(( evnt == EVNT_TCP_RXSUMERR ) || ( evnt == EVNT_UDP_RXSUMERR )){
		et.arg1 = pacinfo.myport;	/* 自分のポート */
		et.arg2 = pacinfo.partport;	/* 相手のポート */
		et.arg3 = pacinfo.partipaddr;	/* 相手のIPアドレス */
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
	/* ----- エラーLED点灯 ----- */
	if( evnt == EVNT_ICMP_MESSAGE ){	/* メッセージは点灯しない */
		flg = off;
	}
	else if( evnt == EVNT_NTP_UNSYNC ){	/* NTPサーバ非同期は点灯しない */
		flg = off;
	}
	else if( evnt == EVNT_NTP_LEAP ){	/* うるう補正は点灯しない */
		flg = off;
	}
	else if( evnt == EVNT_DHCP_RENEWAL ){	/* RENEWALは点灯しない */
		flg = off;
	}
	else if( evnt == EVNT_DHCP_REBIND ){	/* REBINDは点灯しない */
		flg = off;
	}
	else if( evnt == EVNT_PWR_ON ){		/* パワーオンリセットは点灯しない */
		flg = off;
	}
	else if( evnt == EVNT_EXT_RESET ){	/* 外部リセットは点灯しない */
		flg = off;
	}
	else if( evnt == EVNT_WDT_RESET ){	/* WDTリセットは点灯しない */
		flg = off;
	}
	if( flg == on ){
		ERROR( );
		WORD_BIT15_ON( opests );	/* ERROR ON */
	}
}


/**
*	イベントログクリア
*	 in	なし
*	out	なし
*/
void	clear_eventlog( void )
{
	memset((char *)&eventlog, 0x00, sizeof( eventlog ));
}


/* end of log.c */
