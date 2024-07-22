/*
*	ethernet.c
*	イーサネット層処理ルーチン(ＯＳＩ参照モデル第２層:データリンク層)
*	Copyright (c)Junnichi Tomaru
*/
#include	"ipv4/ipv4.h"


/**
*	イーサネット入力処理(イーサネットヘッダ処理)
*	 in	なし
*	out	0:処理終了 1:IPパケット受信 2:受信エラー
*/
byte	ether_input( void )
{
	struct	ETHHDR_T{
		byte	destmac[6];	/* 宛先MACアドレス */
		byte	srcmac[6];	/* 送信元MACアドレス */
		word	ethertype;	/* イーサネットタイプ */
	} ethhdr_t;
	word	type;
	byte	ret;

	if( enc_input( (byte *)&ethhdr_t ) == 0 ){	/* 入力無し */
		return	ETHER_OK;
	}

	memcpy((byte *)pacinfo.mac, (byte *)ethhdr_t.srcmac, PHYSICALADDR_SIZE );
	type = cnvendian16( ethhdr_t.ethertype );	/* プロトコルタイプ */
	ret = ETHER_OK;
	if( type == ETHERTYPE_IP ){	/* IPプロトコル */
		ret = ETHER_RXIP;
	}
	else if( type == ETHERTYPE_ARP ){	/* ARPプロトコル */
		ret = arp_input( );
		enc_setnextpoint( );	/* 処理終わったから */
	}
	else{				/* 関係ないプロトコル */
		enc_setnextpoint( );
	}

	return	ret;
}


/**
*	イーサネット出力処理(ヘッダのセット)
*	 in	point:送信データ開始位置
*		 type:イーサネットタイプ
*	out	なし
*/
void	ether_output( word type )
{
	pacinfo.datasize += ETHERHDR_SIZE;
	enc_txseek( ETHER_TOP );
	enc_writebuffer( pacinfo.mac, PHYSICALADDR_SIZE );	/* 宛先MACアドレスコピー */
	enc_writebuffer( mac_address, PHYSICALADDR_SIZE );	/* 送信元MACアドレスのコピー */
	enc_writebuf2( type );		/* イーサネット プロトコルタイプ */
	enc_output( TXSTART );
}


/* end of ethernet.c */
