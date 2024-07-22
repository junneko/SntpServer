/**
*	���荞�ݏ���
*	Copyright (c)Junnichi Tomaru
*/
#include	"include/avrntp.h"

/* ���b���� 2.23.00 */
void	sec_seq( void )
{
	/* ----- GPS���[�h ----- */
	if( adjmode == GPSADJ_MODE ){
		/* --- �������X�V���� --- */
		if( time_tmp.tm_isdst == 1 ){		/*  */
			if( nmea_adj == on ){		/* +1�b�␳ */
				sec_tmp++;
			}
			utc_sec = rnstamp = sec_tmp;	/* �����K�p */
			rntime = 0;			/* �X�V�����������ɂȂ�̂�GPS����0�Ƃ��� */
			time_tmp.tm_isdst = 0;
			cal_updated = on;
			gps_ndcnt = 0U;
		}
		/* --- ���b���Ɏ����̗p�Ȃ� --- */
		else{
			utc_sec++;
			if( gps_ndtimeout ){		/* 0�ȊO�̐ݒ�̓J�E���g */
				gps_ndcnt++;
				if( gps_ndcnt >= gps_ndtimeout ){	/* �^�C���A�E�g */
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
	/* ----- NTP���[�h ----- */
	else{
		if( nmea_en == on ){		/* NMEA�o�̓��[�h */
			pps_out = 100;		/* 100ms */
			BYTE_BIT2_OFF( PORTD );	/* PPS=L */
		}
		/* --- SLEW�␳�Ȃ�(�ʏ펞) --- */
		if( slew_ms == 0 ){
			utc_msec = 0;
			if( liflg != LI_INCREQ ){	/* 60�b�}������60=00�Ȃ̂ŁA���̂܂܂ɂ��� */
				utc_sec++;		/* ���̑���++ */
			}
		}
		/* --- +�␳�� --- */
		else if( slew_ms > 0 ){
			utc_msec++;
			utc_msec -= 1000;
			slew_ms--;
			utc_sec++;
		}
		/* --- -�␳���A�����X�V���Ȃ� --- */
		else{
			utc_msec--;
			slew_ms++;
			return;
		}
	}

	/* ------ �J�E���g�� ----- */
	if( sync_sts == SYNC_COUNT ){
		if( gps_ustimeout ){		/* 0�ȊO�̐ݒ�̓J�E���g ver1.14 */
			gps_uscnt--;
			if( gps_uscnt == 0U ){
				sync_sts = SYNC_TIMEUP;
			}
		}
	}

	timeflg = on;		/* �����X�V */
}

/* VECRTOR1 RESET */

/**
*	INT0���荞��(KDB-BUS) UTC+100ms
*	NTP���[�h�̂Ƃ���1PPS�Ŕ��␳�ł���
*/
SIGNAL( INT0_vect )		/* VECTOR2 */
{
	GTCCR = 0x02;		/* TMR2�O�u�����탊�Z�b�g */
	TCNT2 = 0;
	EIFR = 0x00;		/* �t���O�N���A ver2.23.00 */
	EIMSK = EINT_DIS;	/* ��xINT0���荞�݋֎~ ver2.23.00 */
	filtercnt = PPS_FILTER;
	utc_msec = 100;		/* UTC��100ms��̃G�b�W���ŕ␳(0ms�����ƂԂ���Ȃ��悤��) */
	ppscnt = 10;		/* ver2.20.01 */
}

/**
*	INT1���荞��(ENC28J60)
*/
SIGNAL( INT1_vect )		/* VECTOR3 */
{
	/* ���g�p */
}

/**
*	�^�C�}2���荞�݃��[�`��
*	1000Hz(1ms)���� �v������у^�C���X�^���v�p
*	�v���p(PPS��0�␳����邽�ߎ������ς��)
*/
SIGNAL( TIMER2_COMPA_vect )	/* VECTOR11 */
{
	utc_msec++;			/* �v������у^�C���X�^���v�p */
	if( utc_msec >= 1000 ){		/* 1PPS������1�b */
		utc_msec = 0;		/* �~���b���Z�b�g */
		sec_seq( );
		if( ppscnt ){		/* �J�E���g�� */
			ppscnt--;
		}
		else if( time_sts == TIME_PPSMODE ){	/* PPS���[�h���^�C���A�b�v��UTC���[�h ver1.20.01 */
			time_sts = TIME_UTCMODE;
		}
	}
}

/**
*	�^�C�}0���荞�݃��[�`��
*	1000Hz(1ms)����(�^�C�}�p)
*/
SIGNAL( TIMER0_COMPA_vect )	/* VECTOR16 */
{
	/* ----- PPS ----- */
	if( pps_out ){		/* PPS�o�͒�(NTP���[�h) */
		pps_out--;
		if( pps_out == 0 ){	/* 100ms */
			BYTE_BIT2_ON( PORTD );	/* PPS=H */
		}
	}
	/* ----- �C���^�[�o���J�E���g ----- */
	count1ms++;
	if( filtercnt ){	/* �t�B���^�� */
		filtercnt--;
		if( filtercnt == 0 ){		/* 200ms�o�����玟�̕␳�L�� */
			EIMSK = EINT0_EN;	/* ver1.22.01 */
		}
	}
}

/**
*	USART0��M���荞��(��M�p�����O�o�b�t�@�ɂ��܂�)
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
*	USART0���M�o�b�t�@�󂫊��荞��
*/
SIGNAL( USART0_UDRE_vect )	/* VECTOR21 */
{
	if( txct != 0 ){	/* �c�肪�������瑗�M */
		UDR0 = txbuf[txp];
		txp++;
		txct--;
		if( txct == 0 ){
			UCSR0B &= BYTE_MASK_RX( UDRIE0 );	/* UDRI off */
		}
	}
}

/**
*	USART0���M�������荞��
*/
SIGNAL( USART0_TX_vect )	/* VECTOR22 */
{
	if( txct == 0 ){
		UCSR0B &= BYTE_MASK_RX( TXCIE0 );	/* TXCI off */
		siotxflg = off;
	}
}

/* end of interrupt.c */
