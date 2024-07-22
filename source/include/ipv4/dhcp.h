/**
*	dhcp.h
*	DHCP処理部ヘッダ
*	Copyright (c)Junnichi Tomaru
*/
#define	DHCPMSG_SIZE		300U
#define	BOOTPMAIN_SIZE		236U	/* オプション以外の長さ */

#define	BOOTP_MAGICCOOKIE	0x63825363	/* マジックコード */
#define	BOOTP_BOOTREQ		1		/* ブート要求 */
#define	BOOTP_BOOTREPLY		2		/* ブート応答 */
#define	BOOTP_HWADDR		1		/* ハードアドレス(イーサネットは１) */
#define	BOOTP_HWSIZE		6		/* ハードアドレス長(イーサネットは６) */

/* --- パケット種コード(送信用) --- */
#define	BOOTP_MESSAGE		0x3501	/* メッセージタイプ */

/* --- メッセージタイプ(工程でも使う) --- */
#define	DHCP_ABORT		0	/* DHCP無効 */
#define	DHCP_DISCOVER		1	/* 発見パケット */
#define	DHCP_OFFER		2	/* 提供パケット */
#define	DHCP_REQUEST		3	/* 要求パケット */
#define	DHCP_DECLINE		4	/* 拒否パケット */
#define	DHCP_PACK		5	/* 確認応答パケット */
#define	DHCP_PNAK		6	/* 否定応答パケット */
#define	DHCP_RELEASE		7	/* 返却パケット */
#define	DHCP_INFORM		8	/* オプション情報の取得パケット */
#define	DHCP_DHCPFORCERENEW	9	/* 再構成要求 */

#define	DHCP_INIT		20	/* 電源投入後処理 */
#define	DHCP_INITREBOOT		21	/* リセット等のとき */
#define	DHCP_REBOOTING		22	/* IPアドレス有効判定中 */
#define	DHCP_BOUND		23	/* 割り当て状態 */
#define	DHCP_RENEWING		24	/* 貸与期間更新 */
#define	DHCP_REBINDING		25	/* 貸与期間延長要求 */

/* --- BootP オプションフィールド --- */
#define	DHCP_UNKNOWN_MESSAGE	0

#define	DHCP_SUBNETMASK		1	/* ネットワークのサブネットマスク */
#define	DHCP_SUBNETMASKLEN	4	

#define	DHCP_ROUTER		3	/* ルータのIPアドレス */
#define	DHCP_ROUTERLEN		4

#define	DHCP_TIMEOFFSET		4	/* 時刻オフセット */
#define	DHCP_TIMEOFFSETLEN	4

#define	DHCP_DNSID		6	/* DNSサーバのIPアドレス */
#define	DHCP_DNSIDLEN		4

#define	DHCP_HOSTNAME		12	/* ホスト名 */

#define	DHCP_IPTTL		23	/* IPのTTL初期値 */
#define	DHCP_IPTTLLEN		1

#define	DHCP_ARPTIMEOUT		35	/* ARPタイムアウト */
#define	DHCP_ARPTIMEOUTLEN	4

#define	DHCP_NTPSERVER		42	/* NTPサーバ */
#define	DHCP_NTPSERVERLEN	4

#define	DHCP_REQIPADDR		50	/* 要求するIPアドレス */
#define	DHCP_REQIPADDRLEN	4

#define	DHCP_LEASETIME		51	/* IPアドレス貸与時間 */
#define	DHCP_LEASETIMELEN	4

#define	DHCP_MESSAGETYPE	53	/* メッセージタイプ */
#define	DHCP_MESSAGETYPELEN	1

#define	DHCP_SERVERID		54	/* DHCPサーバIPアドレス */
#define	DHCP_SERVERIDLEN	4

#define	DHCP_PRMREQLIST		55	/* パラメータリクエストリスト */
#define	DHCP_PRMREQLISTLEN	8	/* パラメータ個数(可変) */

#define	DHCP_RENEWALTIME	58	/* RENEWAL時間(T1) */
#define	DHCP_RENEWALTIMELEN	4

#define	DHCP_REBINDTIME		59	/* REBIND時間(T2) */
#define	DHCP_REBINDTIMELEN	4

#define	DHCP_CLIANTID		61	/* クライアントのMACアドレス */
#define	DHCP_CLIANTIDLEN	7

#define	BOOTP_MSGSTOPPER	0xff	/* ストップコード */

/* end of dhcp.h */
