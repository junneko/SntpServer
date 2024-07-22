/**
*	nbns.h
*	NBNSプロトコル処理部ヘッダ
*	Copyright (c)Junnichi Tomaru
*/

#ifndef _NBNS_DEFINED_
#define _NBNS_DEFINED_

/* TTL */
#define		NBNS_TTL	600UL	/* 10分=600 */

/* RR-TYPE */
#define		RRTYPE_A	0x0001	/* IP アドレスを示すリソースレコード */
#define		RRTYPE_NS	0x0002	/* ネームサーバを示すリソースレコード */
#define		RRTYPE_NULL	0x000A	/* NULL リソースレコード */
#define		RRTYPE_NB	0x0020	/* NetBIOS の汎用ネームサービスのリソースレコード */
#define		RRTYPE_NBSTAT	0x0021	/* NetBIOS の NODE STATUS リソースレコード */

#define		NB_BNODE	0x0000
#define		NB_PNODE	0x2000
#define		NB_MNODE	0x4000

#define		NB_GROUP	0x8000	/* RR_NAMEはNetBIOSグループ名 */
#define		NB_UNIQUE	0x0000	/* RR_NAME は NetBIOS ユニーク名 */

/* RR-CLASS */
#define		CLASS_IN	0x0001	/* Internet Class */

/* NAME_FLAGS */
#define		NF_PRM		0x0200	/* 永続名(Permanent Name)フラグ */
#define		NF_ACT		0x0400	/* 有効名(Active Name)フラグ */
#define		NF_CNF		0x0800	/* 競合フラグ */
#define		NF_DRG		0x1000	/* 登録解除中フラグ */

/* OPCODE */
#define		OP_MASK		0x7800
#define		OP_QUERY	0x0000
#define		OP_REGIST	0x2800
#define		OP_RELEASE	0x3000
#define		OP_WACK		0x3800
#define		OP_REFRESH	0x4000
#define		OP_RESPONSE	0x8000

/* NM_FLAGS */
#define		NM_BC		0x0010	/* ブロードキャストフラグ */

#define		NM_RA		0x0080	/* 再帰可能(Recursion Available)フラグ */
#define		NM_RD		0x0100	/* 再帰要求(Recursion Desired)フラグ */
#define		NM_TC		0x0200	/* 切り詰め(Truncation)フラグ */
#define		NM_AA		0x0400	/* 権威ある回答フラグ */

/* RCODE */
#define		NO_ERR		0x0000
#define		FMT_ERR		0x0001	/* フォーマットエラー */
#define		SRV_ERR		0x0002	/* サーバ側の不正処理 */
#define		NAM_ERR		0x0003	/* 名前エラー */
#define		IMP_ERR		0x0004	/* サポートされていないリクエストによるエラー */
#define		RFS_ERR		0x0005	/* 拒否エラー */
#define		ACT_ERR		0x0006	/* アクティブエラー */
#define		CFT_ERR		0x0007	/* 名前競合エラー */

#endif

/* end of nbns.h */
