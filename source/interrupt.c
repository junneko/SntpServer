/**
*	割り込み処理
*	Copyright (c)Junnichi Tomaru
*/
#include	"include/avrntp.h"

/* 正秒処理 2.23.00 */
void	sec_seq( void )
{
	/* ----- GPSモード ----- */
	if( adjmode == GPSADJ_MODE ){
		/* --- 時刻情報更新あり --- */
		if( time_tmp.tm_isdst == 1 ){		/*  */
			if( nmea_adj == on ){		/* +1秒補正 */
				sec_tmp++;
			}
			utc_sec = rnstamp = sec_tmp;	/* 時刻適用 */
			rntime = 0;			/* 更新時刻が未来になるのでGPS時は0とした */
			time_tmp.tm_isdst = 0;
			cal_updated = on;
			gps_ndcnt = 0U;
		}
		/* --- 正秒時に時刻採用なし --- */
		else{
			utc_sec++;
			if( gps_ndtimeout ){		/* 0以外の設定はカウント */
				gps_ndcnt++;
				if( gps_ndcnt >= gps_ndtimeout ){	/* タイムアウト */
					time_sts = TIME_NOINPUT;
					if( sync_sts != SYNC_INI ){
						sync_sts = SYNC_ERROR;
					}
				}
			}
			else{
				gps_ndcnt = 0;
			}
		}
	}
	/* ----- NTPモード ----- */
	else{
		if( nmea_en == on ){		/* NMEA出力モード */
			pps_out = 100;		/* 100ms */
			BYTE_BIT2_OFF( PORTD );	/* PPS=L */
		}
		/* --- SLEW補正なし(通常時) --- */
		if( slew_ms == 0 ){
			utc_msec = 0;
			if( liflg != LI_INCREQ ){	/* 60秒挿入時は60=00なので、そのままにする */
				utc_sec++;		/* その他は++ */
			}
		}
		/* --- +補正中 --- */
		else if( slew_ms > 0 ){
			utc_msec++;
			utc_msec -= 1000;
			slew_ms--;
			utc_sec++;
		}
		/* --- -補正中、時刻更新しない --- */
		else{
			utc_msec--;
			slew_ms++;
			return;
		}
	}

	/* ------ カウント中 ----- */
	if( sync_sts == SYNC_COUNT ){
		if( gps_ustimeout ){		/* 0以外の設定はカウント ver1.14 */
			gps_uscnt--;
			if( gps_uscnt == 0U ){
				sync_sts = SYNC_TIMEUP;
			}
		}
	}

	timeflg = on;		/* 時刻更新 */
}

/* VECRTOR1 RESET */

/**
*	INT0割り込み(KDB-BUS) UTC+100ms
*	NTPモードのときは1PPSで微補正できる
*/
SIGNAL( INT0_vect )		/* VECTOR2 */
{
	GTCCR = 0x02;		/* TMR2前置分周器リセット */
	TCNT2 = 0;
	EIFR = 0x00;		/* フラグクリア ver2.23.00 */
	EIMSK = EINT_DIS;	/* 一度INT0割り込み禁止 ver2.23.00 */
	filtercnt = PPS_FILTER;
	utc_msec = 100;		/* UTCの100ms後のエッジ側で補正(0ms処理とぶつからないように) */
	ppscnt = 10;		/* ver2.20.01 */
}

/**
*	INT1割り込み(ENC28J60)
*/
SIGNAL( INT1_vect )		/* VECTOR3 */
{
	/* 未使用 */
}

/**
*	タイマ2割り込みルーチン
*	1000Hz(1ms)ごと 計時およびタイムスタンプ用
*	計時用(PPSで0補正されるため周期が変わる)
*/
SIGNAL( TIMER2_COMPA_vect )	/* VECTOR11 */
{
	utc_msec++;			/* 計時およびタイムスタンプ用 */
	if( utc_msec >= 1000 ){		/* 1PPS無しで1秒 */
		utc_msec = 0;		/* ミリ秒リセット */
		sec_seq( );
		if( ppscnt ){		/* カウント中 */
			ppscnt--;
		}
		else if( time_sts == TIME_PPSMODE ){	/* PPSモード時タイムアップでUTCモード ver1.20.01 */
			time_sts = TIME_UTCMODE;
		}
	}
}

/**
*	タイマ0割り込みルーチン
*	1000Hz(1ms)ごと(タイマ用)
*/
SIGNAL( TIMER0_COMPA_vect )	/* VECTOR16 */
{
	/* ----- PPS ----- */
	if( pps_out ){		/* PPS出力中(NTPモード) */
		pps_out--;
		if( pps_out == 0 ){	/* 100ms */
			BYTE_BIT2_ON( PORTD );	/* PPS=H */
		}
	}
	/* ----- インターバルカウント ----- */
	count1ms++;
	if( filtercnt ){	/* フィルタ中 */
		filtercnt--;
		if( filtercnt == 0 ){		/* 200ms経ったら次の補正有効 */
			EIMSK = EINT0_EN;	/* ver1.22.01 */
		}
	}
}

/**
*	USART0受信割り込み(受信用リングバッファにしまう)
*/
SIGNAL( USART0_RX_vect )	/* VECTOR20 */
{
	char	c;
	byte	sts;

	sts = UCSR0A;
	c = UDR0;
	if(( sts & ( BYTE_BIT_X( FE0 ) | BYTE_BIT_X( DOR0 ) | BYTE_BIT_X( UPE0 ))) == 0 ){
		rxringbuf[rxtp] = c;
		rxtp++;
		rxtp &= ( RXBUFSIZE - 1 );
		rxct++;
	}
}

/**
*	USART0送信バッファ空き割り込み
*/
SIGNAL( USART0_UDRE_vect )	/* VECTOR21 */
{
	if( txct != 0 ){	/* 残りがあったら送信 */
		UDR0 = txbuf[txp];
		txp++;
		txct--;
		if( txct == 0 ){
			UCSR0B &= BYTE_MASK_RX( UDRIE0 );	/* UDRI off */
		}
	}
}

/**
*	USART0送信完了割り込み
*/
SIGNAL( USART0_TX_vect )	/* VECTOR22 */
{
	if( txct == 0 ){
		UCSR0B &= BYTE_MASK_RX( TXCIE0 );	/* TXCI off */
		siotxflg = off;
	}
}

/* end of interrupt.c */
