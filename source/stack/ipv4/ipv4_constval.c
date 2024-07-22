/**
*	IPv4 �ǂݎ���p�萔
*	Copyright (c)Junnichi Tomaru
*/
#include	"ipv4/ipv4_constval.h"

extern char	ntpsrv1[32], ntpsrv2[32], ntpsrv3[32], ntpsrv4[32];	/* NTP�T�[�o�ݒ� */

/* --- ���� --- */
const prog_char	testmac[] = { 0x02, 0x00, 0x00, 0x00, 0x00, 0x00 };	/* �e�X�g�pMAC�A�h���X */
const prog_char	nbndflt[] = "KDB-SNTP-SERVER";	/* �f�t�H���gNETBIOS�� 15����.�����Ȃ��ꍇ�̓X�y�[�X�Ŗ��߂� */

/* --- SNTP --- */

const prog_char	ntp0[] = "ntp1.jst.mfeed.ad.jp";
const prog_char	ntp1[] = "ntp2.jst.mfeed.ad.jp";
const prog_char	ntp2[] = "ntp3.jst.mfeed.ad.jp";
const prog_char	ntp3[] = "ntp.nict.jp";
const prog_char	*dfltntp[] PROGMEM = { ntp0 , ntp1, ntp2, ntp3 };
const char	*ntpsrv[] PROGMEM = { ntpsrv1, ntpsrv2, ntpsrv3, ntpsrv4 };

/* end of constantval.c */
