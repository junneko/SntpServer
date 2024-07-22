/*
*	icmp.c
*	ICMP層(OSI参照モデル第3層：ネットワーク層)
*	Internet Control Message Protocol:インターネット障害通知
*	Copyright (c)Junnichi Tomaru
*/
#include	"ipv4/ipv4.h"


/**
*	ICMP層入力処理
*	 in	なし
*	out	0:正常 0以外:エラー発生
*/
byte	icmp_input( void )
{
	word	sum;
	dword	opt;
	icmp_st	rxicmp;
	byte	ret;

	enc_rxseek( ICMP_TOP );
	enc_readbuffer((byte *)&rxicmp, ICMPHDR_SIZE );
	icmptype = rxicmp.type;		/* メッセージタイプ */
	icmpcode = rxicmp.code;		/* コード */
	sum = enc_rxchksum( ICMP_TOP, pacinfo.datasize );
	if( sum != 0U ){		/* チェックサム合わない */
		enc_rxseek( ICMP_TOP + ICMPHDR_SIZE + 16 );	/* DST ADDR */
		icmpopt = enc_readbuf4( );	/*  */
		return	EVNT_ICMP_RXSUMERR;
	}
	if( icmptype != ICMP_TYPE_ECHOREQ ){	/* エコー要求ではない */
		ret = EVNT_ICMP_MESSAGE;
		opt = cnvendian32( rxicmp.id );	/* オプション */
		icmpopt = opt;
		if( icmptype == ICMP_TYPE_UNREACH ){	/* 宛先不到達の場合、念のためENC28J60初期化 */
			enc_init( );
		}
		else if( icmptype == ICMP_TYPE_REDIRECT ){	/* リダイレクト通知 */
			if( icmpcode == ICMP_REDIRECT_HOST ){
				gateway = opt;
			}
		}
		return	ret;
	}
	/* ----- エコー応答処理 ----- */
	enc_packetcopy( ICMP_TOP, ICMP_TOP, pacinfo.datasize );	/* データをコピーする */
	enc_txseek( ICMP_TOP );
	enc_writebuf( ICMP_TYPE_ECHOREPLY );	/* エコー応答 */
	enc_writebuf( 0 );			/* コード */
	enc_writebuf2( 0U );			/* チェックサム(計算用) */
	sum = enc_txchksum( ICMP_TOP, pacinfo.datasize );
						/* チェックサム計算 */
	enc_txseek( ICMP_SUM );			/* チェックサム位置 */
	enc_writebuf2( sum );

	return	ip_output( IPPROTO_ICMP );	/* 応答送信 */
}


/* end of icmp.c */
