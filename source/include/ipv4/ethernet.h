/*
*	ethernet.h
*	�C�[�T�l�b�g�w�b�_����`
*	Copyright (c)Junnichi Tomaru
*/

#ifndef _ETHER_DEFINED_
#define _ETHER_DEFINED_

#define	PHYSICALADDR_SIZE	6	/* �����A�h���X�� */
#define	ETHERTYPE_IP		0x0800
#define	ETHERTYPE_ARP		0x0806

#define	ETHERHDR_SIZE		14

#define	ETHER_OK		0
#define	ETHER_RXIP		1
#define	ETHER_COL		2

#endif

/* end of ethernet.h */
