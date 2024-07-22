/**
*	KDB-SNTP-SERVER	コマンド処理
*	Copyright (c)Junnichi Tomaru
*/
#include	"include/avrntp.h"

/**
*	UDPコマンド処理
*	 in	なし
*	out	ステータス
*/
byte	udp_command( void )
{
	byte	buf[16], tmp[16], mac[8];
	byte	i, j, d;
	dword	adr;
	word	size;

	enc_rxseek( pacinfo.proto_body );	/* データ部に移動 */
	enc_txseek( UDP_DATA );			/* 送信UDPデータ先頭位置 */

	/* ----- 解析 ----- */
	enc_readbuffer( buf, 4 );	/* コマンド部読み込み(4文字) */
	buf[4] = C_NULL;
	enc_writebuffer( buf, 4 );	/* コマンド部だけ先に書いとく */
	if( strcmp_P((char *)buf, PSTR( "GWDT" )) == 0 ){	/* 時刻読み出し(WorldTime) */
		enc_writebuf( ',' );
		ustoaz((word)( world_time.tm_year + 1900 ), (char *)tmp );	/* 年 */
		enc_writebuffer( tmp + 1, 4 );
		ustoaz((word)( world_time.tm_mon + 1 ), (char *)tmp );	/* 月 */
		enc_writebuffer( tmp + 3, 2 );
		ustoaz((word)( world_time.tm_mday ), (char *)tmp );	/* 日 */
		enc_writebuffer( tmp + 3, 2 );
		enc_writebuf( ',' );
		ustoaz((word)( world_time.tm_hour ), (char *)tmp );	/* 時 */
		enc_writebuffer( tmp + 3, 2 );
		ustoaz((word)( world_time.tm_min ), (char *)tmp );	/* 分 */
		enc_writebuffer( tmp + 3, 2 );
		ustoaz((word)( world_time.tm_sec ), (char *)tmp );	/* 秒 */
		enc_writebuffer( tmp + 3, 2 );
		enc_writebuf( '.' );
		ustoaz((word)utc_msec, (char *)tmp );	/* ミリ秒 */
		enc_writebuffer( tmp + 2, 3 );
		enc_writebuf( C_LF );
		size = 25U;
	}
	else if( strcmp_P((char *)buf, PSTR( "GUDT" )) == 0 ){	/* 時刻読み出し(UTC) */
		enc_writebuf( ',' );
		ustoaz((word)( utc_time.tm_year + 1900 ), (char *)tmp );/* 年 */
		enc_writebuffer( tmp + 1, 4 );
		ustoaz((word)( utc_time.tm_mon + 1 ), (char *)tmp );	/* 月 */
		enc_writebuffer( tmp + 3, 2 );
		ustoaz((word)( utc_time.tm_mday ), (char *)tmp );	/* 日 */
		enc_writebuffer( tmp + 3, 2 );
		enc_writebuf( ',' );
		ustoaz((word)( utc_time.tm_hour ), (char *)tmp );	/* 時 */
		enc_writebuffer( tmp + 3, 2 );
		ustoaz((word)( utc_time.tm_min ), (char *)tmp );	/* 分 */
		enc_writebuffer( tmp + 3, 2 );
		ustoaz((word)( utc_time.tm_sec ), (char *)tmp );	/* 秒 */
		enc_writebuffer( tmp + 3, 2 );
		enc_writebuf( '.' );
		ustoaz((word)utc_msec, (char *)tmp );	/* ミリ秒 */
		enc_writebuffer( tmp + 2, 3 );
		enc_writebuf( C_LF );
		size = 25U;
	}
	else if( strcmp_P((char *)buf, PSTR( "GSTS" )) == 0 ){	/* ステータス取得 */
		enc_writebuf( ',' );
		ustoahz( opests, (char *)tmp );
		enc_writebuffer( tmp, 4 );
		enc_writebuf( C_LF );
		size = 10U;
	}
	else if( strcmp_P((char *)buf, PSTR( "GMOD" )) == 0 ){	/* 動作モード取得 */
		enc_writebuf( ',' );
		ustoahz( opemode, (char *)tmp );
		enc_writebuffer( tmp, 4 );
		enc_writebuf( C_LF );
		size = 10U;
	}
	else if( strcmp_P((char *)buf, PSTR( "GARP" )) == 0 ){	/* ARPテーブル取得 */
		for( i = 0; i < ARP_CACHE_MAX; i++ ){
			enc_writebuf( ',' );
			if( arp_cache[i].flg == ARP_CACHE_DYNAMIC ){
				enc_writebuf( 'D' );
			}
			else if( arp_cache[i].flg == ARP_CACHE_STATIC ){
				enc_writebuf( 'S' );
			}
			else{
				enc_writebuf( 'N' );
			}
			enc_writebuf( ',' );
			enc_writebuffer((byte *)long2ipstr( arp_cache[i].ipaddr, (char *)buf ), 15 );
			enc_writebuf( ',' );
			for( j = 0; j < 6; j++ ){
				enc_writebuffer( (byte *)uctoahz( arp_cache[i].mac[j], (char *)buf ), 2 );
			}
		}
		enc_writebuf( C_LF );
		size = 253U;
	}
	else if( strcmp_P((char *)buf, PSTR( "GEVN" )) == 0 ){	/* イベント数取得 */
		enc_writebuf( ',' );
		for( d = 0; d < 16; d++ ){
			if( eventlog[d].evnt == EVNT_NONE ){
				break;
			}
		}
		uctoaz( d, (char *)tmp );
		enc_writebuffer( tmp + 1, 2 );
		enc_writebuf( C_LF );
		size = 8U;
	}
	else if( strcmp_P((char *)buf, PSTR( "GECD" )) == 0 ){	/* イベントコード取得 */
		enc_readbuf( );		/* ','読み飛ばし */
		enc_readbuffer( buf, 2 );
		buf[2] = C_NULL;
		d = _atoi( (char *)buf );
		if(( d == 0 ) || ( d > 16 )){
			enc_writebufc( PSTR( ",E01\n" ));
			size = 9U;
		}
		else{
			enc_writebuf( ',' );
			enc_writebuffer( buf, 2 );
			enc_writebuf( ',' );
			uctoaz( eventlog[d-1].evnt, (char *)tmp );
			enc_writebuffer( tmp + 1, 2 );
			enc_writebuf( C_LF );
			size = 11U;
		}
	}
	else if( strcmp_P((char *)buf, PSTR( "GMAC" )) == 0 ){	/* MACアドレス取得 */
		enc_writebuf( ',' );
		uctoahz( mac_address[0], (char *)tmp );
		enc_writebuffer( tmp, 2 );
		enc_writebuf( '-' );
		uctoahz( mac_address[1], (char *)tmp );
		enc_writebuffer( tmp, 2 );
		enc_writebuf( '-' );
		uctoahz( mac_address[2], (char *)tmp );
		enc_writebuffer( tmp, 2 );
		enc_writebuf( '-' );
		uctoahz( mac_address[3], (char *)tmp );
		enc_writebuffer( tmp, 2 );
		enc_writebuf( '-' );
		uctoahz( mac_address[4], (char *)tmp );
		enc_writebuffer( tmp, 2 );
		enc_writebuf( '-' );
		uctoahz( mac_address[5], (char *)tmp );
		enc_writebuffer( tmp, 2 );
		enc_writebuf( C_LF );
		size = 23U;
	}
	else if( strcmp_P((char *)buf, PSTR( "GVER" )) == 0 ){	/* バージョン */
		enc_writebuf( ',' );
		enc_writebufc( version );
		enc_writebuf( C_LF );
		size = 13U;
	}
	/* ----- 設定系 ----- */
	else if( strcmp_P((char *)buf, PSTR( "SARP" )) == 0 ){	/* ARPテーブル設定 */
		enc_readbuf( );			/* ','読み飛ばし */
		enc_readbuffer( buf, 15 );	/* IP */
		buf[15] = C_NULL;
		enc_readbuf( );			/* ','読み飛ばし */
		enc_readbuffer( tmp, 12 );	/* MAC */
		for( i = j = 0; i < 6; i++ ){
			mac[i] = atox( (char *)tmp + j );	/* ASCII -> BIN */
			j += 2;
		}
		if( ipstr2bin(( char *)buf, &adr ) == TRUE ){
			if( arp_keep( adr, mac, ARP_CACHE_STATIC ) == 1 ){
				enc_writebufc( PSTR( ",OK\n" ));
			}
			else{
				enc_writebufc( PSTR( ",NG\n" ));
			}
			size = 8U;
		}
		else{
			enc_writebufc( PSTR( ",E01\n" ));
			size = 9U;
		}
	}
	/* ----- クリア系 ----- */
	else if( strcmp_P((char *)buf, PSTR( "CARP" )) == 0 ){	/* ARPテーブル削除 */
		enc_readbuf( );			/* ','読み飛ばし */
		enc_readbuffer( buf, 15 );	/* IP */
		buf[15] = C_NULL;
		if( ipstr2bin(( char *)buf, &adr ) == TRUE ){
			if( arp_delete( adr ) == 1 ){
				enc_writebufc( PSTR( ",OK\n" ));
			}
			else{
				enc_writebufc( PSTR( ",NG\n" ));
			}
			size = 8U;
		}
		else{
			enc_writebufc( PSTR( ",E01\n" ));
			size = 9U;
		}
	}
	else if( strcmp_P((char *)buf, PSTR( "COUT" )) == 0 ){	/* エラー出力クリア */
		ERRRST( );
		WORD_BIT15_OFF( opests );	/* ERROR OFF */
		enc_writebufc( PSTR( ",OK\n" ));
		size = 8U;
	}
	else if( strcmp_P((char *)buf, PSTR( "CLOG" )) == 0 ){	/* エラーログクリア */
		clear_eventlog( );
		enc_writebufc( PSTR( ",OK\n" ));
		size = 8U;
	}
	/* ----- その他 ----- */
	else if( strcmp_P( (char *)buf, PSTR( "SYNC" )) == 0 ){	/* SYNCコマンド */
		if(( adjmode & BYTE_MASK_U7 ) == NTPADJ_MODE ){
			if(( adjustseq == 0 ) && ( myipaddr != 0UL )){
				adjustseq = 1;
				enc_writebufc( PSTR( ",OK\n" ));
				size = 8U;
			}
			else{
				enc_writebufc( PSTR( ",E02\n" ));
				size = 9U;
			}
		}
		else{
			enc_writebufc( PSTR( ",E02\n" ));
			size = 9U;
		}
	}
	else{
		enc_writebufc( PSTR( ",E00\n" ));	/* コマンド無い */
		size = 9U;
	}
	/* ----- 返信 ----- */
	return	udp_output( size );
}


/* end of command.c */
