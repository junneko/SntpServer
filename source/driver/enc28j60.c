/**
*	ENC28J60ドライバ rev.1.02.02
*	ATmega644 SPI機能使用(MODE 0,0)
*	EREVID=04H,05Hでの制限事項
*	  ERXWRPTがERXSTで変わらない(受信バッファを0000Hから配置)
*	Copyright (c)Junnichi Tomaru
*/
#include	"driver/enc28j60.h"

#define	ENC_RESET()	ENC_RST_ASSERT();wait(WAIT1000US);ENC_RST_NEGATE()

#define	WAIT_MIBUSY()	while(enc_readmreg(MISTAT)&MISTAT_BUSY)
#define	WAIT_DMAEND()	while(enc_readethreg(ECON1)&ECON1_DMAST)

#define	DUMMY		0x00
#define	BUFFERSTART	0x0000
#define	BUFFEREND	0x1fff
#define	MAX_FRAME	1518

/* ---------- 低レベル関数 ---------- */

/**
*	SPIでデータを送信する(8bit分)
*	 in	データ
*	out	なし
*/
void	spitx( char data )
{
	SPDR = data;		 /* データ送信 */
	loop_until_bit_is_set( SPSR, SPIF );	 /* 転送完了まで待機*/
}


/**
*	システムリセット(ENC28J60のソフトウェアリセット)
*	 in	なし
*	out	なし
*/
static void	enc_systemreset( void )
{
	ENC_CS_ASSERT( );
	spitx( ENC_SC );
	ENC_CS_NEGATE( );
}


/**
*	コントロールレジスタ読む(ETHグループ)
*	 in	レジスタアドレス
*	out	データ
*/
byte	enc_readethreg( char addr )
{
	byte	ret;

	ENC_CS_ASSERT( );
	spitx( ENC_RCR + addr );/* OPCODE + ADDR */
	spitx( DUMMY );		/* 受信用ダミー送信 */
	ret = SPDR;		/* 受信データ */
	ENC_CS_NEGATE( );

	return ret;
}


/**
*	MAC&MIIレジスタ読む
*	 in	レジスタアドレス
*	out	データ
*/
byte	enc_readmreg( char addr )
{
	byte	ret;

	ENC_CS_ASSERT( );
	spitx( ENC_RCR + addr );/* OPCODE + ADDR */
	spitx( DUMMY );		/* 受信用ダミー送信 */
	ret = SPDR;		/* データ */
	spitx( DUMMY );		/* 受信用ダミー送信 */
	ret = SPDR;		/* 受信データ */
	ENC_CS_NEGATE( );

	return ret;
}


/**
*	レジスタにデータ書く
*	 in	addr:レジスタアドレス
*		data:データ(8bit)
*	out	なし
*/
void	enc_writereg( char addr, byte data )
{
	ENC_CS_ASSERT( );
	spitx( ENC_WCR + addr );/* OPCODE + ADDR */
	spitx( data );		/* データ */
	ENC_CS_NEGATE( );
}


/**
*	コントロールレジスタ読む(16ビット)
*	 in	アドレス(Lower側)
*	out	レジスタの値
*/
static word	enc_readethreg16( char addr )
{
	ui_t	t;

	t.bytes.lo = enc_readethreg( addr );	/* LOWER BYTE */
	t.bytes.hi = enc_readethreg( addr + 1 );/* HIGHER BYTE */

	return	t.data;
}


/**
*	MAC&MIIレジスタ読む(16ビット)
*	 in	アドレス(Lower側)
*	out	レジスタの値
*/
word	enc_readmreg16( char addr )
{
	ui_t	t;

	t.bytes.lo = enc_readmreg( addr );	/* LOWER BYTE */
	t.bytes.hi = enc_readmreg( addr + 1 );	/* HIGHER BYTE */

	return	t.data;
}


/**
*	レジスタ書き込み(16ビット)
*	 in	addr:アドレス(L側)
*		data:レジスタの値
*	out	なし
*/
void	enc_writereg16( char addr, word data )
{
	ui_t	t;

	t.data = data;
	enc_writereg( addr, t.bytes.lo );	/* LOWER BYTE */
	enc_writereg( addr + 1, t.bytes.hi );	/* HIGHER BYTE */
}


/**
*	ビットフィールドセット(ETHレジスタのみ,ビットOR)
*	 in	addr:レジスタアドレス
*		data:1のビットがセットされる
*	out	なし
*/
void	enc_setbit( char addr, byte data )
{
	ENC_CS_ASSERT( );
	spitx( ENC_BFS + addr );/* OPCODE + ADDR */
	spitx( data );		/* データ */
	ENC_CS_NEGATE( );
}


/**
*	ビットフィールドクリア(ETHレジスタのみ,ビットNot-AND)
*	 in	addr:レジスタアドレス
*		data:1のビットがクリアされる
*	out	なし
*/
void	enc_clrbit( char addr, byte data )
{
	ENC_CS_ASSERT( );
	spitx( ENC_BFC + addr );/* OPCODE + ADDR */
	spitx( data );		/* データ */
	ENC_CS_NEGATE( );
}


/**
*	バンクセレクト
*	他のビットを書き換えないように、ビットフィールド命令を使用
*	 in	バンク番号
*	out	なし
*/
void	enc_bankselect( byte bank )
{
	enc_clrbit( ECON1, 0x3 );	/* BSEL0,BSEL1クリア */
	enc_setbit( ECON1, bank );	/* バンク番号セット */
}


/**
*	PHYレジスタから読む
*	 in	読み込むアドレス
*	out	16ビットデータ
*/
word	enc_readphy( byte addr )
{
	enc_bankselect( ENC_BANK2 );
	enc_writereg( MIREGADR, addr );	/* アドレス指定 */
	enc_writereg( MICMD, MICMD_MIIRD );	/* MIRDから１度だけ読む */

	enc_bankselect( ENC_BANK3 );
	WAIT_MIBUSY( );		/* PHYレジスタから読み込まれるのを待つ */

	enc_bankselect( ENC_BANK2 );
	enc_writereg( MICMD, 0x00 );	/* 読み込み停止(MIIRD=0) */

	return	enc_readmreg16( MIRD );	/* データ読み出し */
}


/**
*	PHYレジスタに書く
*	 in	addr:レジスタアドレス
*		data:書き込むデータ
*	out	なし
*/
void	enc_writephy( byte addr, word data )
{
	enc_bankselect( ENC_BANK2 );
	enc_writereg( MIREGADR, addr );	/* レジスタアドレス */

	enc_writereg16( MIWR, data );	/* データ書き込み */

	enc_bankselect( ENC_BANK3 );
	WAIT_MIBUSY( );		/* 終了待ち */
}


/**
*	イーサネットバッファから１バイト読み込み
*	 in	なし
*	out	読み込んだデータ
*/
byte	enc_readbuf( void )
{
	byte	ret;

	ENC_CS_ASSERT( );
	spitx( ENC_RBM );	/* バッファ読み込み */
	spitx( DUMMY );		/* 受信用ダミー送信 */
	ret = SPDR;
	ENC_CS_NEGATE( );

	return ret;
}


/**
*	イーサネットバッファから２バイト読み込み
*	 in	なし
*	out	読み込んだデータ(リトルエンディアン)
*/
word	enc_readbuf2( void )
{
	ui_t	t;

	ENC_CS_ASSERT( );
	spitx( ENC_RBM );	/* バッファ書き込み */
	spitx( DUMMY );		/* 受信用ダミー送信 */
	t.bytes.hi = SPDR;
	spitx( DUMMY );		/* 受信用ダミー送信 */
	t.bytes.lo = SPDR;
	ENC_CS_NEGATE( );

	return	t.data;
}


/**
*	イーサネットバッファから４バイト読み込み
*	 in	なし
*	out	読み込んだデータ(リトルエンディアン)
*/
dword	enc_readbuf4( void )
{
	ul_t	t;

	ENC_CS_ASSERT( );
	spitx( ENC_RBM );	/* バッファ書き込み */
	spitx( DUMMY );		/* 受信用ダミー送信 */
	t.bytes.hh = SPDR;
	spitx( DUMMY );		/* 受信用ダミー送信 */
	t.bytes.hl = SPDR;
	spitx( DUMMY );		/* 受信用ダミー送信 */
	t.bytes.lh = SPDR;
	spitx( DUMMY );		/* 受信用ダミー送信 */
	t.bytes.ll = SPDR;
	ENC_CS_NEGATE( );

	return	t.data;
}


/**
*	イーサネットバッファから連続読み込み
*	 in	buffer:データを格納するバッファ
*		   len:読み込むバイト数
*	out	なし
*/
void	enc_readbuffer( byte *buffer, word len )
{
	word	i;

	ENC_CS_ASSERT( );
	spitx( ENC_RBM );	/* バッファ読み込み */
	for( i = 0; i < len; i++, buffer++ ){
		spitx( DUMMY );	/* 受信用ダミー送信 */
		*buffer = SPDR;
	};
	ENC_CS_NEGATE( );
}


/**
*	イーサネットバッファに１バイト書き込み
*	EWRPTが示すアドレスから書き込まれます
*	 in	データ
*	out	なし
*/
void	enc_writebuf( byte data )
{
	ENC_CS_ASSERT( );
	spitx( ENC_WBM );	/* バッファ書き込み */
	spitx( data );
	ENC_CS_NEGATE( );
}


/**
*	バッファに２バイト書き込み
*	EWRPTが示すアドレスから書き込まれます
*	 in	書き込む値
*	out	なし
*/
void	enc_writebuf2( word data )
{
	ui_t	t;

	t.data = data;
	ENC_CS_ASSERT( );
	spitx( ENC_WBM );	/* バッファ書き込み */
	spitx( t.bytes.hi );
	spitx( t.bytes.lo );
	ENC_CS_NEGATE( );
}


/**
*	バッファに４バイト書き込み
*	EWRPTが示すアドレスから書き込まれます
*	 in	書き込む値
*	out	なし
*/
void	enc_writebuf4( dword data )
{
	ul_t	t;

	t.data = data;
	ENC_CS_ASSERT( );
	spitx( ENC_WBM );	/* バッファ書き込み */
	spitx( t.bytes.hh );
	spitx( t.bytes.hl );
	spitx( t.bytes.lh );
	spitx( t.bytes.ll );
	ENC_CS_NEGATE( );
}


/**
*	バッファにバースト書き込み
*	EWRPTが示すアドレスから書き込まれます
*	 in	buffer:書き込みバッファのポインタ
*	out	長さ
*/
word	enc_writebuffer( byte *buffer, word len )
{
	word	i;

	ENC_CS_ASSERT( );
	spitx( ENC_WBM );	/* バッファ書き込み */
	for( i = 0; i < len; i++, buffer++ ){
		spitx( *buffer );
	}
	ENC_CS_NEGATE( );

	return	len;
}


/**
*	バッファに同じデータを埋める
*	EWRPTが示すアドレスから書き込まれます
*	 in	data:書き込むデータ
*		 len:書き込むバイト数
*	out	なし
*/
void	enc_fillwrite( byte data, word len )
{
	word	i;

	ENC_CS_ASSERT( );
	spitx( ENC_WBM );	/* バッファ書き込み */
	for( i = 0; i < len; i++ ){
		spitx( data );
	}
	ENC_CS_NEGATE( );
}


/* ---------- 高レベル関数 ---------- */


/**
*	自己診断ルーチン
*	 in	なし
*	out	FALSE:異常 TRUE:正常
*/
bool	enc_selftest( void )
{
	bool	ret;

	enc_writereg( ECON1, 0 );	/* PAGE0 */
	enc_writereg16( EDMAST, BUFFERSTART );	/* DMA開始アドレス */
	enc_writereg16( EDMAND, BUFFEREND );	/* DMA終了アドレス */
	enc_writereg16( ERXND, BUFFEREND );	/* 受信終了アドレス */

	enc_bankselect( ENC_BANK3 );
	enc_writereg( EBSTCON, ADR_FIL | EBSTCON_TME | EBSTCON_BISTST );
			/* アドレスフィル,ビットテストモード */

	/* DMAを開始する前にBISTが終了するのを待ち、テストモード禁止する */
	while( enc_readethreg( EBSTCON ) & EBSTCON_BISTST );
	enc_clrbit( EBSTCON, EBSTCON_TME );

	/* サム計算を許可し、DMAをスタートさせる */
	enc_setbit( ECON1, ECON1_DMAST | ECON1_CSUMEN );
	WAIT_DMAEND( );

	enc_bankselect( ENC_BANK0 );
	/* チェックサム比較 */
	if( enc_readethreg16( EDMACS ) != 0xF807 ){	/* アドレスフィルの結果はF807hになるはず */
		ret = FALSE;
	}
	else{
		ret = TRUE;
	}

	return	ret;
}


/**
*	ENC28J60初期化
*	 in	なし
*	out	なし
*/
void	enc_init( void )
{
	byte	sts;

	enc_clrbit( ECON2, ECON2_PWRSV );	/* パワーセーブ解除しておく */
	wait( WAIT1000US );
	ENC_RESET( );			/* HARDWARE RESET(RESET=L) */
	wait( WAIT1000US );
	_forever{			/* SOFTWARE RESET */
		enc_systemreset( );
		wait( WAIT1000US );	/* 1ms以上待てば良い(ERRATAによる) */
		sts = enc_readethreg( ESTAT );
		if((( sts & ESTAT_SPIRDY ) == 0 ) && ( sts & ESTAT_CLKRDY )){/* CLKRDY待ち */
			break;		/* bit3はRESET中かどうか見るため。 */
		}
	}

	/* ----- バンク0レジスタ設定 ----- */
	enc_writereg( ECON1, ECON1_TXRST | ECON1_RXRST );/* TX,RX=リセット,ページ0 */
	enc_writereg( ECON2, ECON2_AUTOINC );	/* バッファポインタ自動インクリメント */

	enc_writereg16( ERXST, RXSTART );	/* 受信バッファ開始アドレス */
	enc_writereg16( ERXRDPT, RXSTOP );	/* 境界アドレス RXSTART->RXSTOP 2012.02.15 */
	enc_writereg16( ERXND, RXSTOP );	/* 受信バッファ終了アドレス */
	enc_writereg16( ETXST, TXSTART );	/* 送信バッファ開始アドレス */

	/* ----- バンク1レジスタ設定 ----- */
	enc_bankselect( ENC_BANK1 );
	enc_writereg( ERXFCON, ERXFCON_UCEN | ERXFCON_CRCEN | ERXFCON_BCEN );	/* 受信フィルタ */

	/* ----- バンク2レジスタ設定 ----- */
	enc_bankselect( ENC_BANK2 );
	enc_writereg( MACON1, MACON1_TXPAUS | MACON1_RXPAUS | MACON1_MARXEN );	/* 受信有効 */
	enc_writereg( MACON2, 0x00 );		/* リセットを抜ける */

	/* 60バイトまでパディング,CRC付加 */
	enc_writereg( MACON3, MACON3_PADCFG0 | MACON3_TXCRCEN | MACON3_FRMLNEN );
	enc_writereg16( MAMXFL, MAX_FRAME );	/* パケットの最大値(802.3 1518byte) */

	enc_writereg16( MAIPG, 0x0C12 );	/* MAC BACK-TO-BACK INTER-PACKET GAP RESISTER */
	enc_writereg( MABBIPG, 0x12 );		/* 推奨値はHALF=0x12(IPG=9.6us) */

	enc_writereg( MACON4, MACON4_DEFER );	/* 遅延送信許可(半２重用) */
	enc_writereg( MACLCON2, 63 );		/* rev.5用に大きめの値 */

	/* ----- バンク3レジスタ設定 ----- */
	enc_bankselect( ENC_BANK3 );
	enc_writereg( ECOCON, ECOCON_INVALID );	/* CLKOUT無効(使わないので) */
	enc_writereg( MAADR5, mac_address[0] );	/* MAC ADDRESS設定 */
	enc_writereg( MAADR4, mac_address[1] );
	enc_writereg( MAADR3, mac_address[2] );
	enc_writereg( MAADR2, mac_address[3] );
	enc_writereg( MAADR1, mac_address[4] );
	enc_writereg( MAADR0, mac_address[5] );

	revid = enc_readethreg( EREVID ) & BYTE_MASK_L5;	/* REVID読み込み */

	enc_writephy( PHCON1, 0x0000 );		/* パワーダウン解除 */
	enc_writephy( PHCON2, PHCON2_HDLDIS );	/* ループバック解除 */
	/* LEDA:リンク LEDB:送受信ステータス 40ms */
	enc_writephy( PHLCON, LEDA_LINK | LEDB_TXRXACT | LED_TNSTRCH );

	/* ----- バンク0レジスタ設定(戻す) ----- */
	enc_bankselect( ENC_BANK0 );
#ifdef USE_INT
	enc_setbit( EIE, EIE_INTIE | EIE_PKTIE );	/* 割り込み許可 */
#endif
	enc_writereg( ECON1, ECON1_RXEN );	/* 受信許可 */
}


/**
*	リンク状態取得
*	 in	なし
*	out	TRUE:リンク状態  FALSE:非リンク状態
*/
bool	enc_getlinkstatus( void )
{
	return ( enc_readphy( PHSTAT1 ) & PHSTAT1_LLSTAT )? TRUE: FALSE;
}


/**
*	送信できるかを調べる
*	 in	なし
*	out	TRUE:送信可能  FALSE:送信不能
*/
bool	enc_gettxready( void )
{
	return ( enc_readethreg( ECON1 ) & ECON1_TXRST )? FALSE: TRUE;
}


/**
*	受信バッファ読み出し位置設定
*	 in	先頭からのオフセット値(ステータス含まず)
*	out	更新前のポインタ
*/
word	enc_rxseek( word offset )
{
	word	i, ret;

	enc_bankselect( ENC_BANK0 );
	ret = enc_readmreg16( ERDPT );
	i = nowrxpnt + RXSTS_SIZE + offset;
	if( i > RXSTOP ){	/* 折り返してたら */
		i -= RXSIZE;
	}
	enc_writereg16( ERDPT, i );

	return	ret;
}


/**
*	送信バッファ書き込み位置設定
*	 in	先頭からのオフセット値(PPCB含まず)
*	out	更新前のポインタ
*/
word	enc_txseek( word offset )
{
	word	ret;

	enc_bankselect( ENC_BANK0 );
	ret = enc_readmreg16( EWRPT );
	enc_writereg16( EWRPT, offset + TXSTART + PPCB_SIZE );

	return	ret;
}


/**
*	次のパケット位置へ移動
*	 in	なし
*	out	なし
*/
void	enc_setnextpoint( void )
{
	word	newrxend;

	newrxend = nextrxpnt - 1;	/* 受信ストップアドレス(1個手前) */
	if( newrxend > RXSTOP ){	/* 受信領域外 */
		newrxend = RXSTOP;
	}
	enc_bankselect( ENC_BANK0 );
	enc_setbit( ECON2, ECON2_PKTDEC );	/* 受信パケットカウンタデクリメント */
	enc_writereg16( ERXRDPT, newrxend );	/* 位置移動 */

#ifdef USE_INT
	enc_setbit( EIE, EIE_INTIE );	/* 割り込み許可 */
#endif
}


/**
*	受信バッファの空きサイズを調べる
*	 in	なし
*	out	サイズ
*/
word	enc_getfreerxsize( void )
{
	word	rp, wp;
	byte	c, d;
	word	ret;

	/* 書き込まれる位置を読む間に更新されたかどうかを調べ、 */
	/* 変わっていたら読み直す */
	enc_bankselect( ENC_BANK1 );
	c = enc_readethreg( EPKTCNT );	/* １回目読み込み */
	_forever{
		enc_bankselect( ENC_BANK0 );
		wp = enc_readethreg( ERXWRPT ) & WORD_MASK_L13;
		enc_bankselect( ENC_BANK1 );
		d = enc_readethreg( EPKTCNT );
		if( c == d ){	/* 同じだった */
			break;
		}
		c = d;
	}
	/* 書き込み境界アドレスを読む */
	rp = enc_readethreg16( ERXRDPT ) & WORD_MASK_L13;

	if( wp > rp ){		/* ERXWRPTの方が大きい */
		ret = (( RXSTOP - RXSTART ) - ( wp - rp ));
	}
	else if( wp == rp ){	/* 同じ場所 */
		ret = ( RXSTOP - RXSTART );
	}
	else{			/* ERXRDPTの方が大きい */
		ret = ( rp - wp - 1 );
	}

	return	ret;
}


/**
*	フレーム受信
*	 in	読み込みバッファ
*	out	0:受信なし 1:受信あり 2:エラー
*/
byte	enc_input( byte *buf )
{
	swbool	err;
	byte	ret;

	enc_bankselect( ENC_BANK1 );
	if( enc_readethreg( EPKTCNT ) == 0 ){	/* 受信なし */
		enc_bankselect( ENC_BANK0 );
		return 0;
	}
	ret = 0;
	/* 読み込みの先頭位置に読み込みポインタをセットする */
	enc_bankselect( ENC_BANK0 );
	enc_writereg16( ERDPT, nextrxpnt );
	nowrxpnt = nextrxpnt;			/* 今の位置バックアップ */

	enc_readbuffer((byte *)&rxstatus, RXSTS_SIZE );	/* 次のポインタとステータス読み込み */
	rxstatus.next.bytes.hi &= BYTE_MASK_L5;	/* 上位2ビットマスク(unimplemented) */
	rxstatus.rxcount.bytes.hi &= BYTE_MASK_L5;	/* 上位2ビットマスク(unimplemented) */
	nextrxpnt = rxstatus.next.data;		/* 次のパケット先頭 */
	err = off;
	if( rxstatus.rxcount.data > MAX_FRAME ){/* フレーム長が1518byteより大きい */
		err = on;
	}
	else if( rxstatus.next.data > RXSTOP ){	/* 次のポインタが受信領域外 */
		err = on;
	}
	else if( rxstatus.next.data & WORD_BIT_00 ){	/* 次のポインタが奇数番地 */
		err = on;
	}
	else if( rxstatus.status.bits.zero ){	/* ゼロの領域に情報が入っている */
		err = on;
	}
	else if( rxstatus.status.bits.crcerror ){	/* CRC計算エラー */
		err = on;
	}
	else if( rxstatus.status.bits.receiveok == 0 ){	/* 受信エラー */
		err = on;
	}
	if( err ){
		enc_init( );
		ret = 2;
	}
	else{				/* パケットの取り込み処理 */
		_di( );
		rxstamp = utc_sec;
		rxtime = utc_msec;
		_ei( );
		enc_readbuffer( buf, ETHERHDR_SIZE );	/* イーサネットヘッダ部取り込み */
		ret = 1;
	}

	return	ret;
}


/**
*	フレーム送信
*	 in	送信開始バッファ先頭
*	out	なし
*/
void	enc_output( word txaddr )
{
	word	cnt, rptr, txend;
	word	size;
	txstatus_t	txsts;
	byte	i;

	/* ----- 送信前処理 ----- */
	size = pacinfo.datasize + PPCB_SIZE + txaddr - 1U;
	enc_writereg16( EWRPT, txaddr );
	enc_writebuf( 0x00 );	/* Format For Per Packet Control Bytes */
				/* MACON3の状態を使用する */
	enc_writereg16( ETXST, txaddr );	/* 送信フレーム先頭位置 */
	enc_writereg16( ETXND, size );		/* 送信フレーム終了位置 */
	/* ----- 送信処理 ----- */
	enc_setbit( ECON1, ECON1_TXRST );	/* 前回送信エラーがあったとき */
	enc_clrbit( ECON1, ECON1_TXRST );	/* チップのエラー対策 */
	enc_clrbit( EIR, EIR_TXERIF | EIR_TXIF );

	enc_setbit( ECON1, ECON1_TXRTS );	/* 送信 */

	if(( revid != 0x05 ) && ( revid != 0x06 )){	/* Rev.B5,B7用エラッタ対策 */
		return;
	}
	cnt = 0U;
	_forever{
		if( enc_readethreg( EIR ) & ( EIR_TXERIF | EIR_TXIF )){
			break;
		}
		cnt++;
		if( cnt >= 1000U ){
			break;
		}
	}
	if(( enc_readethreg( EIR ) & EIR_TXERIF ) || ( cnt >= 1000U )){
		enc_clrbit( ECON1, ECON1_TXRTS );	/* 前回の送信キャンセル */
		rptr = enc_readmreg16( ERDPT );		/* 現在の読み込みポインタ退避 */
		txend = enc_readmreg16( ETXND );	/* 送信ステータスベクタ位置 */
		txend++;
		enc_writereg16( ERDPT, txend );		/* 送信ステータス読み込み */
		enc_readbuffer((byte *)&txsts, sizeof( txsts ));
		for( i = 0; i < 16; i++ ){		/* 衝突が起きた時の再送信 */
			if(( enc_readethreg( EIR ) & EIR_TXERIF ) && txsts.latecollision ){
				enc_setbit( ECON1, ECON1_TXRST );	/* 前回送信エラーがあったとき対策 */
				enc_clrbit( ECON1, ECON1_TXRST );	/* チップのエラー対策 */
				enc_clrbit( EIR, EIR_TXERIF | EIR_TXIF );
				enc_setbit( ECON1, ECON1_TXRTS );	/* 再送信 */
				while( ( enc_readethreg( EIR ) & ( EIR_TXERIF | EIR_TXIF )) == 0 );
				enc_clrbit( ECON1, ECON1_TXRTS );	/* 前回の送信キャンセル */
				enc_writereg16( ERDPT, txend );	/* 送信ステータス読み込み */
				enc_readbuffer((byte *)&txsts, sizeof( txsts ));
			}
			else{
				break;
			}
		}
		enc_writereg16( ERDPT, rptr );	/* 読み込みポインタ復帰 */
	}
}


/**
*	チェックサム計算(加算するのみ)
*	 in	チェックする長さ
*	out	加算値
*/
word	enc_addsum( word len )
{
	word	i, tmp;
	ui_t	t;
	dword_t	ret;

	ret.data = 0UL;
	for( i = 0; len > 1; i++, len -= 2 ){	/* 2バイトずつ加算 */
		t.bytes.hi = enc_readbuf( );
		t.bytes.lo = enc_readbuf( );
		ret.data += t.data;
	}
	if( len == 1 ){			/* 奇数バイトのとき */
		t.bytes.hi = enc_readbuf( );	/* １バイト分だけ足す */
		t.bytes.lo = 0;
		ret.data += t.data;
	}
	if( ret.data >= 0x10000UL ){	/* オーバーした */
		tmp = ret.words.hi;
		ret.words.hi = 0U;
		ret.data += tmp;	/* キャリ分を足す */
		if( ret.data >= 0x10000UL ){
			ret.words.lo++;
		}
	}

	return	ret.words.lo;
}


/**
*	受信チェックサム計算(ERRATAにより、DMAを使うとダメなときがある)
*	in	offset:イーサネットフレーム先頭からのオフセット
*		   len:チェックサム計算範囲長さ
*	out	チェックサム
*/
word	enc_rxchksum( word offset, word len )
{
	enc_rxseek( offset );

	return	_invert( enc_addsum( len ));
}


/**
*	送信チェックサム計算(ERRATAにより、DMAを使うとダメなときがある)
*	in	offset:イーサネットフレーム先頭からのオフセット
*		   len:チェックサム計算範囲長さ
*	out	チェックサム
*/
word	enc_txchksum( word offset, word len )
{
	word	i;

	enc_bankselect( ENC_BANK0 );
	i = offset + TXSTART + PPCB_SIZE;
	enc_writereg16( ERDPT, i );

	return	_invert( enc_addsum( len ));
}


/**
*	 受信領域から送信領域へコピーする
*	 in	rxoffset:イーサフレーム先頭位置からのオフセット値
*		txoffset:イーサフレーム先頭位置からのオフセット値
*		     len:コピーするサイズ
*	out	なし
*/
void	enc_packetcopy( word rxoffset, word txoffset, word len )
{
	word	i;

	if( len == 0U ){	/* コピーデータなし */
		return;
	}
	else if( len == 1U ){	/* コピーできないので、別に処理 */
		enc_rxseek( rxoffset );
		enc_txseek( txoffset );
		enc_writebuf( enc_readbuf( ));
		return;
	}
	enc_bankselect( ENC_BANK0 );
	i = nowrxpnt + RXSTS_SIZE + rxoffset;	/* 開始位置 */
	if ( i > RXSTOP ){	/* 折り返してたら */
		i -= RXSIZE;
	}
	enc_writereg16( EDMAST, i );

	i += len - 1;		/* 終了位置 */
	if( i > RXSTOP ){	/* 折り返してたら */
		i -= RXSIZE;
	}
	enc_writereg16( EDMAND, i );

	i = TXSTART + PPCB_SIZE + txoffset;	/* コピー先先頭位置 */
	enc_writereg16( EDMADST, i );

	enc_clrbit( ECON1, ECON1_CSUMEN );	/* チェックサムビットクリア */
	enc_setbit( ECON1, ECON1_DMAST );	/* コピー開始 */
	WAIT_DMAEND( );		/* 終了待ち */
}


/**
*	パワーダウン
*	 in	なし
*	out	なし
*/
void	enc_powerdown( void )
{
	enc_clrbit( ECON1, ECON1_RXEN );	/* 受信禁止 */

	/* 受信データが受け取り終わるのを待つ */
	while( enc_readethreg( ESTAT ) & ESTAT_RXBUSY );

	/* 送信ロジックリセット待ち */
	while( enc_readethreg( ECON1 ) & ECON1_TXRST );

	enc_setbit( ECON2, ECON2_PWRSV );	/* スリープモード */
}


/**
*	パワーダウンから復帰
*	 in	なし
*	out	なし
*/
void	enc_powerup( void )
{
	byte	sts;

	enc_clrbit( ECON2, ECON2_PWRSV );	/* パワーダウンより復帰 */
	wait( WAIT1000US );
	_forever{		/* PHYの準備ができるのを待つ(300us) */
		sts = enc_readethreg( ESTAT );
		if((( sts & ESTAT_SPIRDY ) == 0 ) && ( sts & ESTAT_CLKRDY )){/* CLKRDY待ち */
			break;		/* bit3はRESET中かどうか見るため。 */
		}

	}
	enc_setbit( ECON1, ECON1_RXEN );	/* 受信許可 */
}


/**
*	CLKOUT設定
*	 in	ECOCONの値
*	out	なし
*/
void	enc_setclkout( byte clk )
{
	enc_bankselect( ENC_BANK3 );
	enc_writereg( ECOCON, clk );
}


/**
*	CLKOUTの値を読む
*	 in	なし
*	out:	ECOCONの値
*/
byte	enc_getclkout( void )
{
	enc_bankselect( ENC_BANK3 );
	return enc_readethreg( ECOCON );
}

/**
*	バッファにバースト書き込み(固定文字列)
*	EWRPTで指定したアドレスから書き込まれます
*	 in	prog_char:書き込みバッファのポインタ
*	out	長さ
*/
word	enc_writebufc( const prog_char *pgm_s )
{
	word	i, len;

	len = strlen_P( pgm_s );
	ENC_CS_ASSERT( );
	spitx( ENC_WBM );	/* バッファ書き込み */
	for( i = 0; i < len; i++ ){
		spitx( pgm_read_byte( pgm_s ) );
		pgm_s++;
	}
	ENC_CS_NEGATE( );

	return	len;
}


/**
*	イーサネットバッファから文字列読み込み
*	 in	buffer:データを格納するバッファ
*		   len:読み込む最大バイト数
*		    dm:デリミタ(読み込み終了文字)
*	out	なし
*/
word	enc_readstr( byte *buffer, word len, byte dm )
{
	word	i;
	byte	d;

	ENC_CS_ASSERT( );
	spitx( ENC_RBM );	/* バッファ読み込み */
	for( i = 0; i < len; ){
		spitx( DUMMY );	/* 受信用ダミー送信 */
		d = SPDR;
		*buffer = d;
		i++;
		buffer++;
		if( d == dm ){	/* デリミタで終了 */
			break;
		}
	};
	*buffer = C_NULL;
	ENC_CS_NEGATE( );

	return	i;
}


/**
*	指定バイト読み飛ばし
*	 in	読み飛ばしバイト数
*	out	なし
*/
void	enc_skip( word cnt )
{
	word	i;

	for( i = 0; i < cnt; i++ ){
		enc_readbuf( );
	}
}


/* end of enc28j60.c */
