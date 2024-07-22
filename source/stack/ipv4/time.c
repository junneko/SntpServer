/**
*	time.c
*	Time Protocol: 時刻プロトコル RFC868
*	Copyright (c)Junnichi Tomaru
*/
#include	"ipv4/ipv4.h"

/**
*	TIME入力
*	 in	なし
*	out	0:正常終了　0以外:エラーあり
*/
byte	time_input( void )
{
	time_t	utc;
	byte	ret;

	ret = EVNT_NONE;
	if( synchronized == off ){	/* 同期していない */
		return	ret;
	}
	enc_txseek( UDP_DATA );
	_di( );
	utc = utc_sec + TIME_CONST;	/* UTC→NTP時間変換(70年分の秒数を足す) */
	_ei( );
	enc_writebuf4( utc );		/* タイムスタンプ */
	ret = udp_output( 4U );

	return	ret;
}


/* end of time.c */
