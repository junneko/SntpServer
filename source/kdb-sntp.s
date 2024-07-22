
kdb-sntp.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 9d 0c 	jmp	0x193a	; 0x193a <__ctors_end>
       4:	0c 94 4f 42 	jmp	0x849e	; 0x849e <__vector_1>
       8:	0c 94 85 42 	jmp	0x850a	; 0x850a <__vector_2>
       c:	0c 94 ba 0c 	jmp	0x1974	; 0x1974 <__bad_interrupt>
      10:	0c 94 ba 0c 	jmp	0x1974	; 0x1974 <__bad_interrupt>
      14:	0c 94 ba 0c 	jmp	0x1974	; 0x1974 <__bad_interrupt>
      18:	0c 94 ba 0c 	jmp	0x1974	; 0x1974 <__bad_interrupt>
      1c:	0c 94 ba 0c 	jmp	0x1974	; 0x1974 <__bad_interrupt>
      20:	0c 94 ba 0c 	jmp	0x1974	; 0x1974 <__bad_interrupt>
      24:	0c 94 ba 0c 	jmp	0x1974	; 0x1974 <__bad_interrupt>
      28:	0c 94 ba 0c 	jmp	0x1974	; 0x1974 <__bad_interrupt>
      2c:	0c 94 ba 0c 	jmp	0x1974	; 0x1974 <__bad_interrupt>
      30:	0c 94 ba 0c 	jmp	0x1974	; 0x1974 <__bad_interrupt>
      34:	0c 94 ba 0c 	jmp	0x1974	; 0x1974 <__bad_interrupt>
      38:	0c 94 ba 0c 	jmp	0x1974	; 0x1974 <__bad_interrupt>
      3c:	0c 94 ba 0c 	jmp	0x1974	; 0x1974 <__bad_interrupt>
      40:	0c 94 ff 42 	jmp	0x85fe	; 0x85fe <__vector_16>
      44:	0c 94 ba 0c 	jmp	0x1974	; 0x1974 <__bad_interrupt>
      48:	0c 94 ba 0c 	jmp	0x1974	; 0x1974 <__bad_interrupt>
      4c:	0c 94 ba 0c 	jmp	0x1974	; 0x1974 <__bad_interrupt>
      50:	0c 94 8f 42 	jmp	0x851e	; 0x851e <__vector_20>
      54:	0c 94 b7 42 	jmp	0x856e	; 0x856e <__vector_21>
      58:	0c 94 e6 42 	jmp	0x85cc	; 0x85cc <__vector_22>
      5c:	0c 94 ba 0c 	jmp	0x1974	; 0x1974 <__bad_interrupt>
      60:	0c 94 ba 0c 	jmp	0x1974	; 0x1974 <__bad_interrupt>
      64:	0c 94 ba 0c 	jmp	0x1974	; 0x1974 <__bad_interrupt>
      68:	0c 94 ba 0c 	jmp	0x1974	; 0x1974 <__bad_interrupt>
      6c:	0c 94 ba 0c 	jmp	0x1974	; 0x1974 <__bad_interrupt>
      70:	0c 94 ba 0c 	jmp	0x1974	; 0x1974 <__bad_interrupt>
      74:	0c 94 ba 0c 	jmp	0x1974	; 0x1974 <__bad_interrupt>
      78:	0c 94 ba 0c 	jmp	0x1974	; 0x1974 <__bad_interrupt>

0000007c <version>:
      7c:	32 2e 32 33 2e 30 30 00                             2.23.00.

00000084 <baudtbl>:
      84:	34 05 9a 02 4c 01 a5 00 52 00 29 00 1b 00           4...L...R.)...

00000092 <cg0>:
      92:	17 15 15 15 15 15 17 00                             ........

0000009a <cg1>:
      9a:	12 12 12 12 12 12 12 00                             ........

000000a2 <cg2>:
      a2:	17 11 11 17 14 14 17 00                             ........

000000aa <cg3>:
      aa:	17 11 11 17 11 11 17 00                             ........

000000b2 <cg4>:
      b2:	15 15 15 17 11 11 11 00                             ........

000000ba <cg5>:
      ba:	17 14 14 17 11 11 17 00                             ........

000000c2 <cg6>:
      c2:	17 14 14 17 15 15 17 00                             ........

000000ca <cg7>:
	...

000000d2 <cgram>:
      d2:	92 00 9a 00 a2 00 aa 00 b2 00 ba 00 c2 00 ca 00     ................

000000e2 <__c.2324>:
      e2:	48 45 41 44 00                                      HEAD.

000000e7 <__c.2322>:
      e7:	47 45 54 20 2f 00                                   GET /.

000000ed <__c.2433>:
      ed:	52 45 42 4f 4f 54 0d 0a 00                          REBOOT...

000000f6 <__c.2431>:
      f6:	52 45 53 45 54 0d 0a 00                             RESET...

000000fe <__c.2286>:
      fe:	4a 4a 59 00                                         JJY.

00000102 <__c.2284>:
     102:	47 50 53 00                                         GPS.

00000106 <testmac>:
     106:	02 00 00 00 00 00                                   ......

0000010c <nbndflt>:
     10c:	4b 44 42 2d 53 4e 54 50 2d 53 45 52 56 45 52 00     KDB-SNTP-SERVER.

0000011c <ntp0>:
     11c:	6e 74 70 31 2e 6a 73 74 2e 6d 66 65 65 64 2e 61     ntp1.jst.mfeed.a
     12c:	64 2e 6a 70 00                                      d.jp.

00000131 <ntp1>:
     131:	6e 74 70 32 2e 6a 73 74 2e 6d 66 65 65 64 2e 61     ntp2.jst.mfeed.a
     141:	64 2e 6a 70 00                                      d.jp.

00000146 <ntp2>:
     146:	6e 74 70 33 2e 6a 73 74 2e 6d 66 65 65 64 2e 61     ntp3.jst.mfeed.a
     156:	64 2e 6a 70 00                                      d.jp.

0000015b <ntp3>:
     15b:	6e 74 70 2e 6e 69 63 74 2e 6a 70 00                 ntp.nict.jp.

00000167 <dfltntp>:
     167:	1c 01 31 01 46 01 5b 01                             ..1.F.[.

0000016f <ntpsrv>:
     16f:	52 07 72 07 92 07 b2 07                             R.r.....

00000177 <hexnum>:
     177:	30 31 32 33 34 35 36 37 38 39 41 42 43 44 45 46     0123456789ABCDEF
	...

00000188 <http_head>:
     188:	48 54 54 50 2f 31 2e 31 20 32 30 30 20 48 54 54     HTTP/1.1 200 HTT
     198:	50 0d 0a 43 6f 6e 6e 65 63 74 69 6f 6e 3a 20 63     P..Connection: c
     1a8:	6c 6f 73 65 0d 0a 43 6f 6e 74 65 6e 74 2d 54 79     lose..Content-Ty
     1b8:	70 65 3a 20 74 65 78 74 2f 68 74 6d 6c 0d 0a 43     pe: text/html..C
     1c8:	61 63 68 65 2d 43 6f 6e 74 72 6f 6c 3a 20 6e 6f     ache-Control: no
     1d8:	2d 63 61 63 68 65 0d 0a 43 6f 6e 74 65 6e 74 2d     -cache..Content-
     1e8:	4c 61 6e 67 75 61 67 65 3a 20 65 6e 0d 0a 0d 0a     Language: en....
	...

000001f9 <msg_head>:
     1f9:	48 54 54 50 2f 31 2e 31 20 32 30 30 20 4f 4b 0d     HTTP/1.1 200 OK.
     209:	0a 43 6f 6e 6e 65 63 74 69 6f 6e 3a 20 63 6c 6f     .Connection: clo
     219:	73 65 0d 0a 43 6f 6e 74 65 6e 74 2d 54 79 70 65     se..Content-Type
     229:	3a 20 74 65 78 74 2f 68 74 6d 6c 0d 0a 43 61 63     : text/html..Cac
     239:	68 65 2d 43 6f 6e 74 72 6f 6c 3a 20 6e 6f 2d 63     he-Control: no-c
     249:	61 63 68 65 0d 0a 43 6f 6e 74 65 6e 74 2d 4c 61     ache..Content-La
     259:	6e 67 75 61 67 65 3a 20 65 6e 0d 0a 0d 0a 3c 21     nguage: en....<!
     269:	44 4f 43 54 59 50 45 20 48 54 4d 4c 20 50 55 42     DOCTYPE HTML PUB
     279:	4c 49 43 20 22 2d 2f 2f 57 33 43 2f 2f 44 54 44     LIC "-//W3C//DTD
     289:	20 48 54 4d 4c 20 34 2e 30 31 20 54 72 61 6e 73      HTML 4.01 Trans
     299:	69 74 69 6f 6e 61 6c 2f 2f 45 4e 22 20 22 68 74     itional//EN" "ht
     2a9:	74 70 3a 2f 2f 77 77 77 2e 77 33 2e 6f 72 67 2f     tp://www.w3.org/
     2b9:	54 52 2f 68 74 6d 6c 34 2f 6c 6f 6f 73 65 2e 64     TR/html4/loose.d
     2c9:	74 64 22 3e 3c 48 54 4d 4c 3e 3c 48 45 41 44 3e     td"><HTML><HEAD>
     2d9:	3c 54 49 54 4c 45 3e 4b 44 42 2d 53 4e 54 50 2d     <TITLE>KDB-SNTP-
     2e9:	53 45 52 56 45 52 20 53 45 54 55 50 3c 2f 54 49     SERVER SETUP</TI
     2f9:	54 4c 45 3e 3c 2f 48 45 41 44 3e 3c 42 4f 44 59     TLE></HEAD><BODY
     309:	20 42 47 43 4f 4c 4f 52 3d 22 23 46 46 46 46 46      BGCOLOR="#FFFFF
     319:	46 46 46 22 3e 3c 43 45 4e 54 45 52 3e 3c 42 3e     FFF"><CENTER><B>
	...

0000032a <msg_chgend>:
     32a:	22 3e 3c 2f 46 4f 52 4d 3e 3c 42 52 3e 3c 46 4f     "></FORM><BR><FO
     33a:	4e 54 20 43 4f 4c 4f 52 3d 22 47 52 45 45 4e 22     NT COLOR="GREEN"
     34a:	3e 56 41 4c 55 45 20 53 41 56 45 44 3c 2f 46 4f     >VALUE SAVED</FO
     35a:	4e 54 3e 3c 42 52 3e 00                             NT><BR>.

00000362 <msg_chg>:
     362:	22 3e 3c 42 52 3e 3c 42 52 3e 3c 49 4e 50 55 54     "><BR><BR><INPUT
     372:	20 54 59 50 45 3d 22 53 55 42 4d 49 54 22 20 56      TYPE="SUBMIT" V
     382:	41 4c 55 45 3d 22 41 50 50 4c 59 22 3e 3c 2f 46     ALUE="APPLY"></F
     392:	4f 52 4d 3e 00                                      ORM>.

00000397 <itmip0>:
     397:	49 50 00                                            IP.

0000039a <itmip1>:
     39a:	4e 4d 00                                            NM.

0000039d <itmip2>:
     39d:	47 57 00                                            GW.

000003a0 <itmip3>:
     3a0:	44 4e 00                                            DN.

000003a3 <itmip4>:
     3a3:	42 43 00                                            BC.

000003a6 <itmip>:
     3a6:	97 03 9a 03 9d 03 a0 03 a3 03                       ..........

000003b0 <eepip>:
     3b0:	20 00 24 00 28 00 2c 00 c0 00                        .$.(.,...

000003ba <dfltadr>:
     3ba:	66 01 a8 c0 00 ff ff ff 01 01 a8 c0 01 01 a8 c0     f...............
     3ca:	ff 01 a8 c0                                         ....

000003ce <nameip0>:
     3ce:	49 50 20 41 44 44 52 45 53 53 00                    IP ADDRESS.

000003d9 <nameip1>:
     3d9:	53 55 42 4e 45 54 20 4d 41 53 4b 00                 SUBNET MASK.

000003e5 <nameip2>:
     3e5:	47 41 54 45 57 41 59 00                             GATEWAY.

000003ed <nameip3>:
     3ed:	44 4e 53 20 53 45 52 56 45 52 00                    DNS SERVER.

000003f8 <nameip4>:
     3f8:	41 44 44 52 45 53 53 00                             ADDRESS.

00000400 <nameip>:
     400:	ce 03 d9 03 e5 03 ed 03 f8 03                       ..........

0000040a <itmntp0>:
     40a:	4e 31 00                                            N1.

0000040d <itmntp1>:
     40d:	4e 32 00                                            N2.

00000410 <itmntp2>:
     410:	4e 33 00                                            N3.

00000413 <itmntp3>:
     413:	4e 34 00                                            N4.

00000416 <itmntp>:
     416:	0a 04 0d 04 10 04 13 04                             ........

0000041e <namentp0>:
     41e:	53 45 52 56 45 52 31 00                             SERVER1.

00000426 <namentp1>:
     426:	53 45 52 56 45 52 32 00                             SERVER2.

0000042e <namentp2>:
     42e:	53 45 52 56 45 52 33 00                             SERVER3.

00000436 <namentp3>:
     436:	53 45 52 56 45 52 34 00                             SERVER4.

0000043e <namentp>:
     43e:	1e 04 26 04 2e 04 36 04                             ..&...6.

00000446 <eepntp>:
     446:	40 00 60 00 80 00 a0 00                             @.`.....

0000044e <evnt00>:
	...

0000044f <evnt01>:
     44f:	50 4f 57 45 52 20 4f 4e 00                          POWER ON.

00000458 <evnt02>:
     458:	45 58 54 45 52 4e 41 4c 20 52 45 53 45 54 00        EXTERNAL RESET.

00000467 <evnt03>:
     467:	42 52 4f 57 4e 20 4f 55 54 20 52 45 53 45 54 00     BROWN OUT RESET.

00000477 <evnt04>:
     477:	57 41 54 43 48 44 4f 47 20 54 49 4d 45 52 20 52     WATCHDOG TIMER R
     487:	45 53 45 54 00                                      ESET.

0000048c <evnt05>:
     48c:	45 4e 43 32 38 4a 36 30 20 52 45 43 45 49 56 45     ENC28J60 RECEIVE
     49c:	20 45 52 52 4f 52 00                                 ERROR.

000004a3 <evnt06>:
     4a3:	41 52 50 20 52 45 51 55 45 53 54 20 54 49 4d 45     ARP REQUEST TIME
     4b3:	4f 55 54 20 45 52 52 4f 52 00                       OUT ERROR.

000004bd <evnt07>:
     4bd:	49 43 4d 50 20 50 41 43 4b 45 54 20 43 48 45 43     ICMP PACKET CHEC
     4cd:	4b 20 53 55 4d 20 45 52 52 4f 52 00                 K SUM ERROR.

000004d9 <evnt08>:
     4d9:	54 43 50 20 50 41 43 4b 45 54 20 43 48 45 43 4b     TCP PACKET CHECK
     4e9:	20 53 55 4d 20 45 52 52 4f 52 00                     SUM ERROR.

000004f4 <evnt09>:
     4f4:	55 44 50 20 50 41 43 4b 45 54 20 43 48 45 43 4b     UDP PACKET CHECK
     504:	20 53 55 4d 20 45 52 52 4f 52 00                     SUM ERROR.

0000050f <evnt10>:
     50f:	49 43 4d 50 20 4d 45 53 53 41 47 45 00              ICMP MESSAGE.

0000051c <evnt11>:
     51c:	44 48 43 50 20 52 45 43 45 49 56 45 20 4e 41 4b     DHCP RECEIVE NAK
     52c:	28 52 45 54 52 59 29 00                             (RETRY).

00000534 <evnt12>:
     534:	44 48 43 50 20 52 45 4e 45 57 41 4c 20 53 54 41     DHCP RENEWAL STA
     544:	54 45 00                                            TE.

00000547 <evnt13>:
     547:	44 48 43 50 20 52 45 42 49 4e 44 20 53 54 41 54     DHCP REBIND STAT
     557:	45 00                                               E.

00000559 <evnt14>:
     559:	44 48 43 50 20 45 58 50 49 52 45 44 20 53 54 41     DHCP EXPIRED STA
     569:	54 45 00                                            TE.

0000056c <evnt15>:
     56c:	44 48 43 50 20 52 45 43 45 49 56 45 20 50 41 43     DHCP RECEIVE PAC
     57c:	4b 45 54 20 45 52 52 4f 52 00                       KET ERROR.

00000586 <evnt16>:
     586:	4e 42 54 20 52 45 43 45 49 56 45 20 45 52 52 4f     NBT RECEIVE ERRO
     596:	52 00                                               R.

00000598 <evnt17>:
     598:	4e 42 54 20 46 4f 52 4d 41 54 20 45 52 52 4f 52     NBT FORMAT ERROR
	...

000005a9 <evnt18>:
     5a9:	4e 42 54 20 50 41 43 4b 45 54 20 45 52 52 4f 52     NBT PACKET ERROR
	...

000005ba <evnt19>:
     5ba:	4e 42 54 20 54 49 4d 45 20 4f 55 54 28 53 45 52     NBT TIME OUT(SER
     5ca:	56 45 52 31 29 00                                   VER1).

000005d0 <evnt20>:
     5d0:	4e 42 54 20 54 49 4d 45 20 4f 55 54 28 53 45 52     NBT TIME OUT(SER
     5e0:	56 45 52 32 29 00                                   VER2).

000005e6 <evnt21>:
     5e6:	4e 42 54 20 54 49 4d 45 20 4f 55 54 28 53 45 52     NBT TIME OUT(SER
     5f6:	56 45 52 33 29 00                                   VER3).

000005fc <evnt22>:
     5fc:	4e 42 54 20 54 49 4d 45 20 4f 55 54 28 53 45 52     NBT TIME OUT(SER
     60c:	56 45 52 34 29 00                                   VER4).

00000612 <evnt23>:
     612:	44 4e 53 20 54 49 4d 45 20 4f 55 54 28 53 45 52     DNS TIME OUT(SER
     622:	56 45 52 31 29 00                                   VER1).

00000628 <evnt24>:
     628:	44 4e 53 20 54 49 4d 45 20 4f 55 54 28 53 45 52     DNS TIME OUT(SER
     638:	56 45 52 32 29 00                                   VER2).

0000063e <evnt25>:
     63e:	44 4e 53 20 54 49 4d 45 20 4f 55 54 28 53 45 52     DNS TIME OUT(SER
     64e:	56 45 52 33 29 00                                   VER3).

00000654 <evnt26>:
     654:	44 4e 53 20 54 49 4d 45 20 4f 55 54 28 53 45 52     DNS TIME OUT(SER
     664:	56 45 52 34 29 00                                   VER4).

0000066a <evnt27>:
     66a:	4e 54 50 20 55 4e 53 59 4e 43 52 4f 4e 49 5a 45     NTP UNSYNCRONIZE
     67a:	44 00                                               D.

0000067c <evnt28>:
     67c:	4e 54 50 20 54 49 4d 45 20 4f 55 54 28 53 45 52     NTP TIME OUT(SER
     68c:	56 45 52 31 29 00                                   VER1).

00000692 <evnt29>:
     692:	4e 54 50 20 54 49 4d 45 20 4f 55 54 28 53 45 52     NTP TIME OUT(SER
     6a2:	56 45 52 32 29 00                                   VER2).

000006a8 <evnt30>:
     6a8:	4e 54 50 20 54 49 4d 45 20 4f 55 54 28 53 45 52     NTP TIME OUT(SER
     6b8:	56 45 52 33 29 00                                   VER3).

000006be <evnt31>:
     6be:	4e 54 50 20 54 49 4d 45 20 4f 55 54 28 53 45 52     NTP TIME OUT(SER
     6ce:	56 45 52 34 29 00                                   VER4).

000006d4 <evnt32>:
     6d4:	4e 54 50 20 49 4c 4c 45 47 41 4c 20 53 45 52 56     NTP ILLEGAL SERV
     6e4:	45 52 20 52 45 50 4c 59 00                          ER REPLY.

000006ed <evnt33>:
     6ed:	4e 54 50 20 4c 45 41 50 20 53 45 43 4f 4e 44 20     NTP LEAP SECOND 
     6fd:	41 44 4a 55 53 54 00                                ADJUST.

00000704 <evnt34>:
     704:	54 49 4d 45 20 49 4c 4c 45 47 41 4c 00              TIME ILLEGAL.

00000711 <evnt35>:
     711:	47 50 53 20 4e 4d 45 41 20 46 4f 52 4d 41 54 20     GPS NMEA FORMAT 
     721:	45 52 52 4f 52 00                                   ERROR.

00000727 <evnt36>:
     727:	4e 4d 45 41 20 43 48 45 43 4b 53 55 4d 20 45 52     NMEA CHECKSUM ER
     737:	52 4f 52 00                                         ROR.

0000073b <evnt37>:
     73b:	54 49 4d 45 20 44 41 54 41 20 52 45 43 45 49 56     TIME DATA RECEIV
     74b:	45 20 45 52 52 4f 52 00                             E ERROR.

00000753 <evnt38>:
     753:	55 4e 53 59 4e 43 20 54 49 4d 45 55 50 00           UNSYNC TIMEUP.

00000761 <evnt39>:
     761:	4d 54 4b 33 33 33 39 20 49 4e 49 54 49 41 4c 20     MTK3339 INITIAL 
     771:	45 52 52 4f 52 00                                   ERROR.

00000777 <event>:
     777:	4e 04 4f 04 58 04 67 04 77 04 8c 04 a3 04 bd 04     N.O.X.g.w.......
     787:	d9 04 f4 04 0f 05 1c 05 34 05 47 05 59 05 6c 05     ........4.G.Y.l.
     797:	86 05 98 05 a9 05 ba 05 d0 05 e6 05 fc 05 12 06     ................
     7a7:	28 06 3e 06 54 06 6a 06 7c 06 92 06 a8 06 be 06     (.>.T.j.|.......
     7b7:	d4 06 ed 06 04 07 11 07 27 07 3b 07 53 07 61 07     ........'.;.S.a.

000007c7 <cgi0>:
     7c7:	6e 77 2e 63 67 69 00                                nw.cgi.

000007ce <cgi1>:
     7ce:	6e 73 2e 63 67 69 00                                ns.cgi.

000007d5 <cgi2>:
     7d5:	6e 62 2e 63 67 69 00                                nb.cgi.

000007dc <cgi3>:
     7dc:	63 6c 2e 63 67 69 00                                cl.cgi.

000007e3 <cgi4>:
     7e3:	65 6c 2e 63 67 69 00                                el.cgi.

000007ea <cgi5>:
     7ea:	73 64 2e 63 67 69 00                                sd.cgi.

000007f1 <cgi6>:
     7f1:	66 61 76 69 63 6f 00                                favico.

000007f8 <cgi>:
     7f8:	c7 07 ce 07 d5 07 dc 07 e3 07 ea 07 f1 07           ..............

00000806 <menu0>:
     806:	46 49 58 20 4e 45 54 57 4f 52 4b 20 53 45 54 54     FIX NETWORK SETT
     816:	49 4e 47 00                                         ING.

0000081a <menu1>:
     81a:	54 49 4d 45 20 53 45 52 56 45 52 20 53 45 54 54     TIME SERVER SETT
     82a:	49 4e 47 00                                         ING.

0000082e <menu2>:
     82e:	54 49 4d 45 20 50 52 4f 56 49 44 45 20 53 45 54     TIME PROVIDE SET
     83e:	54 49 4e 47 00                                      TING.

00000843 <menu3>:
     843:	54 49 4d 45 20 42 52 4f 41 44 43 41 53 54 20 4c     TIME BROADCAST L
     853:	4f 47 00                                            OG.

00000856 <menu4>:
     856:	45 56 45 4e 54 20 4c 4f 47 00                       EVENT LOG.

00000860 <menu5>:
     860:	53 59 53 54 45 4d 20 49 4e 46 4f 4d 41 54 49 4f     SYSTEM INFOMATIO
     870:	4e 00                                               N.

00000872 <menu>:
     872:	06 08 1a 08 2e 08 43 08 56 08 60 08                 ......C.V.`.

0000087e <opmode0>:
     87e:	4e 54 50 20 41 44 4a 55 53 54 4d 45 4e 54 20 4d     NTP ADJUSTMENT M
     88e:	4f 44 45 00                                         ODE.

00000892 <opmode1>:
     892:	42 52 4f 41 44 43 41 53 54 20 41 44 4a 55 53 54     BROADCAST ADJUST
     8a2:	4d 45 4e 54 20 4d 4f 44 45 00                       MENT MODE.

000008ac <opmode2>:
     8ac:	46 55 52 55 4e 4f 20 47 50 53 20 41 44 4a 55 53     FURUNO GPS ADJUS
     8bc:	54 4d 45 4e 54 20 4d 4f 44 45 00                    TMENT MODE.

000008c7 <opmode3>:
     8c7:	4d 54 4b 33 33 33 39 20 47 50 53 20 41 44 4a 55     MTK3339 GPS ADJU
     8d7:	53 54 4d 45 4e 54 20 4d 4f 44 45 00                 STMENT MODE.

000008e3 <opmode4>:
     8e3:	55 4e 49 56 45 52 53 41 4c 20 47 50 53 20 41 44     UNIVERSAL GPS AD
     8f3:	4a 55 53 54 4d 45 4e 54 20 4d 4f 44 45 00           JUSTMENT MODE.

00000901 <opmode5>:
     901:	4a 4a 59 20 43 4c 4f 43 4b 20 41 44 4a 55 53 54     JJY CLOCK ADJUST
     911:	4d 45 4e 54 20 4d 4f 44 45 00                       MENT MODE.

0000091b <opmode>:
     91b:	7e 08 92 08 ac 08 c7 08 e3 08 01 09                 ~...........

00000927 <calsts0>:
     927:	4e 4f 20 41 4c 41 52 4d 28 54 49 4d 45 20 53 59     NO ALARM(TIME SY
     937:	4e 43 52 4f 4e 49 5a 45 44 29 00                    NCRONIZED).

00000942 <calsts1>:
     942:	54 49 4d 45 20 41 4c 41 52 4d 28 4e 4f 54 20 53     TIME ALARM(NOT S
     952:	59 4e 43 52 4f 4e 49 5a 45 44 29 00                 YNCRONIZED).

0000095e <calsts2>:
     95e:	54 49 4d 45 20 55 4e 41 44 4a 55 53 54 45 44 00     TIME UNADJUSTED.

0000096e <calsts3>:
     96e:	54 49 4d 45 20 4f 50 45 52 41 54 49 4f 4e 20 54     TIME OPERATION T
     97e:	49 4d 45 4f 55 54 00                                IMEOUT.

00000985 <calsts4>:
     985:	46 55 52 55 4e 4f 20 52 54 43 20 4d 4f 44 45 00     FURUNO RTC MODE.

00000995 <calsts5>:
     995:	46 55 52 55 4e 4f 20 47 50 53 20 4d 4f 44 45 00     FURUNO GPS MODE.

000009a5 <calsts6>:
     9a5:	55 54 43 20 4d 4f 44 45 28 56 41 4c 49 44 29 00     UTC MODE(VALID).

000009b5 <calsts7>:
     9b5:	55 54 43 20 50 50 53 4f 55 54 20 4d 4f 44 45 28     UTC PPSOUT MODE(
     9c5:	56 41 4c 49 44 29 00                                VALID).

000009cc <calsts8>:
     9cc:	47 50 53 20 54 49 4d 45 20 4e 4f 20 56 41 4c 49     GPS TIME NO VALI
     9dc:	44 00                                               D.

000009de <calsts9>:
     9de:	4e 4f 20 54 49 4d 45 20 49 4e 50 55 54 00           NO TIME INPUT.

000009ec <calsts>:
     9ec:	27 09 42 09 5e 09 6e 09 85 09 95 09 a5 09 b5 09     '.B.^.n.........
     9fc:	cc 09 de 09                                         ....

00000a00 <__c.3620>:
     a00:	20 48 54 54 50 2f 00                                 HTTP/.

00000a07 <__c.3566>:
     a07:	3c 2f 41 3e 3c 42 52 3e 00                          </A><BR>.

00000a10 <__c.3561>:
     a10:	3f 22 3e 00                                         ?">.

00000a14 <__c.3556>:
     a14:	3c 42 52 3e 3c 41 20 48 52 45 46 3d 22 2e 2f 00     <BR><A HREF="./.

00000a24 <__c.3554>:
     a24:	4b 44 42 2d 53 4e 54 50 2d 53 45 52 56 45 52 3c     KDB-SNTP-SERVER<
     a34:	2f 42 3e 3c 42 52 3e 00                             /B><BR>.

00000a3c <__c.2883>:
     a3c:	42 43 00                                            BC.

00000a3f <__c.2878>:
     a3f:	49 54 42 4c 00                                      ITBL.

00000a44 <__c.3139>:
     a44:	22 3e 3c 42 52 3e 3c 42 52 3e 49 4e 54 45 52 56     "><BR><BR>INTERV
     a54:	41 4c 28 53 65 63 2e 20 30 20 6f 72 20 3e 36 35     AL(Sec. 0 or >65
     a64:	35 33 34 20 49 67 6e 6f 72 65 29 3c 42 52 3e 3c     534 Ignore)<BR><
     a74:	49 4e 50 55 54 20 54 59 50 45 3d 22 54 45 58 54     INPUT TYPE="TEXT
     a84:	22 20 4e 41 4d 45 3d 22 49 54 42 4c 22 20 53 49     " NAME="ITBL" SI
     a94:	5a 45 3d 22 38 22 20 4d 41 58 4c 45 4e 47 54 48     ZE="8" MAXLENGTH
     aa4:	3d 22 35 22 20 56 41 4c 55 45 3d 22 00              ="5" VALUE=".

00000ab1 <__c.3273>:
     ab1:	35 30 22 3e 3c 2f 54 48 3e 3c 54 48 20 57 49 44     50"></TH><TH WID
     ac1:	54 48 3d 22 31 35 30 22 3e 54 49 4d 45 3c 2f 54     TH="150">TIME</T
     ad1:	48 3e 3c 54 48 20 57 49 44 54 48 3d 22 31 35 30     H><TH WIDTH="150
     ae1:	22 3e 41 4d 4f 55 4e 54 3c 2f 54 48 3e 3c 54 48     ">AMOUNT</TH><TH
     af1:	20 57 49 44 54 48 3d 22 31 35 30 22 3e 4e 4f 54      WIDTH="150">NOT
     b01:	45 3c 2f 54 48 3e 3c 2f 54 52 3e 00                 E</TH></TR>.

00000b0d <__c.3225>:
     b0d:	3c 2f 54 44 3e 3c 2f 54 52 3e 00                    </TD></TR>.

00000b18 <__c.3223>:
     b18:	3c 2f 54 44 3e 3c 54 44 3e 26 65 6d 73 70 3b 00     </TD><TD>&emsp;.

00000b28 <__c.3221>:
     b28:	3c 2f 54 44 3e 3c 54 44 3e 42 43 20 41 44 4a 55     </TD><TD>BC ADJU
     b38:	53 54 00                                            ST.

00000b3b <__c.3219>:
     b3b:	6d 73 2e 00                                         ms..

00000b3f <__c.3217>:
     b3f:	73 65 63 2c 00                                      sec,.

00000b44 <__c.3215>:
     b44:	6f 76 65 72 20 39 68 6f 75 72 73 2e 00              over 9hours..

00000b51 <__c.3213>:
     b51:	44 49 53 54 52 49 42 55 54 49 4f 4e 00              DISTRIBUTION.

00000b5e <__c.3211>:
     b5e:	2d 2d 2d 2d 2d 3c 2f 54 44 3e 3c 54 44 3e 00        -----</TD><TD>.

00000b6d <__c.3209>:
     b6d:	3c 2f 54 44 3e 3c 54 44 3e 00                       </TD><TD>.

00000b77 <__c.3207>:
     b77:	26 65 6d 73 70 3b 00                                &emsp;.

00000b7e <__c.3205>:
     b7e:	3c 2f 54 44 3e 3c 54 44 3e 00                       </TD><TD>.

00000b88 <__c.3203>:
     b88:	3c 54 52 20 41 4c 49 47 4e 3d 22 43 45 4e 54 45     <TR ALIGN="CENTE
     b98:	52 22 3e 3c 54 44 3e 00                             R"><TD>.

00000ba0 <__c.3596>:
     ba0:	45 52 52 52 53 54 00                                ERRRST.

00000ba7 <__c.3594>:
     ba7:	43 4c 52 00                                         CLR.

00000bab <__c.3592>:
     bab:	50 47 3d 31 00                                      PG=1.

00000bb0 <__c.3383>:
     bb0:	31 35 30 22 3e 54 49 4d 45 3c 2f 54 48 3e 3c 54     150">TIME</TH><T
     bc0:	48 20 57 49 44 54 48 3d 22 35 30 30 22 3e 45 56     H WIDTH="500">EV
     bd0:	45 4e 54 3c 2f 54 48 3e 3c 2f 54 52 3e 00           ENT</TH></TR>.

00000bde <__c.3322>:
     bde:	3c 2f 54 44 3e 3c 2f 54 52 3e 00                    </TD></TR>.

00000be9 <__c.3320>:
     be9:	26 65 6d 73 70 3b 3c 2f 54 44 3e 3c 54 44 3e 26     &emsp;</TD><TD>&
     bf9:	65 6d 73 70 3b 00                                   emsp;.

00000bff <__c.3318>:
     bff:	28 53 45 52 56 45 52 3a 00                          (SERVER:.

00000c08 <__c.3316>:
     c08:	2c 44 41 54 41 31 3a 00                             ,DATA1:.

00000c10 <__c.3314>:
     c10:	2c 43 4f 44 45 3a 00                                ,CODE:.

00000c17 <__c.3312>:
     c17:	28 54 59 50 45 3a 00                                (TYPE:.

00000c1e <__c.3310>:
     c1e:	2c 4e 45 58 54 3a 00                                ,NEXT:.

00000c25 <__c.3308>:
     c25:	2c 43 4e 54 3a 00                                   ,CNT:.

00000c2b <__c.3306>:
     c2b:	28 53 54 53 3a 00                                   (STS:.

00000c31 <__c.3301>:
     c31:	3c 2f 54 44 3e 3c 54 44 3e 00                       </TD><TD>.

00000c3b <__c.3299>:
     c3b:	2d 2d 2d 2d 2f 2d 2d 2f 2d 2d 20 2d 2d 3a 2d 2d     ----/--/-- --:--
     c4b:	3a 2d 2d 00                                         :--.

00000c4f <__c.3297>:
     c4f:	3c 54 52 20 41 4c 49 47 4e 3d 22 43 45 4e 54 45     <TR ALIGN="CENTE
     c5f:	52 22 3e 3c 54 44 3e 00                             R"><TD>.

00000c67 <__c.3498>:
     c67:	3c 2f 54 41 42 4c 45 3e 3c 42 52 3e 00              </TABLE><BR>.

00000c74 <__c.3496>:
     c74:	4f 50 45 52 41 54 49 4e 47 20 54 49 4d 45 00        OPERATING TIME.

00000c83 <__c.3494>:
     c83:	4d 49 4e 2e 00                                      MIN..

00000c88 <__c.3492>:
     c88:	48 4f 55 52 20 00                                   HOUR .

00000c8e <__c.3490>:
     c8e:	46 49 52 4d 57 41 52 45 20 56 45 52 53 49 4f 4e     FIRMWARE VERSION
	...

00000c9f <__c.3488>:
     c9f:	45 4e 43 32 38 4a 36 30 20 52 45 56 49 53 49 4f     ENC28J60 REVISIO
     caf:	4e 00                                               N.

00000cb1 <__c.3486>:
     cb1:	4d 41 43 20 41 44 44 52 45 53 53 00                 MAC ADDRESS.

00000cbd <__c.3478>:
     cbd:	54 49 4d 45 20 53 54 41 54 55 53 00                 TIME STATUS.

00000cc9 <__c.3473>:
     cc9:	4f 50 45 52 41 54 49 4f 4e 20 4d 4f 44 45 00        OPERATION MODE.

00000cd8 <__c.3468>:
     cd8:	44 48 43 50 20 4d 4f 44 45 00                       DHCP MODE.

00000ce2 <__c.3466>:
     ce2:	55 53 45 20 44 48 43 50 20 53 45 52 56 45 52 00     USE DHCP SERVER.

00000cf2 <__c.3464>:
     cf2:	46 49 58 20 41 44 44 52 45 53 53 00                 FIX ADDRESS.

00000cfe <__c.3462>:
     cfe:	4e 45 54 42 49 4f 53 20 4e 41 4d 45 00              NETBIOS NAME.

00000d0b <__c.3460>:
     d0b:	44 4e 53 20 53 45 52 56 45 52 00                    DNS SERVER.

00000d16 <__c.3458>:
     d16:	47 41 54 45 57 41 59 20 41 44 44 52 45 53 53 00     GATEWAY ADDRESS.

00000d26 <__c.3456>:
     d26:	53 55 42 4e 45 54 20 4d 41 53 4b 00                 SUBNET MASK.

00000d32 <__c.3454>:
     d32:	49 50 20 41 44 44 52 45 53 53 00                    IP ADDRESS.

00000d3d <__c.3452>:
     d3d:	32 30 30 22 3e 49 54 45 4d 3c 2f 54 48 3e 3c 54     200">ITEM</TH><T
     d4d:	48 20 57 49 44 54 48 3d 22 33 30 30 22 3e 56 41     H WIDTH="300">VA
     d5d:	4c 55 45 3c 2f 54 48 3e 3c 2f 54 52 3e 00           LUE</TH></TR>.

00000d6b <__c.3413>:
     d6b:	3c 2f 54 44 3e 3c 2f 54 52 3e 00                    </TD></TR>.

00000d76 <__c.3411>:
     d76:	3c 2f 54 44 3e 3c 54 44 3e 00                       </TD><TD>.

00000d80 <__c.3409>:
     d80:	3c 54 52 20 41 4c 49 47 4e 3d 22 43 45 4e 54 45     <TR ALIGN="CENTE
     d90:	52 22 3e 3c 54 44 3e 00                             R"><TD>.

00000d98 <__c.3010>:
     d98:	22 20 56 41 4c 55 45 3d 22 00                       " VALUE=".

00000da2 <__c.3008>:
     da2:	22 20 4d 41 58 4c 45 4e 47 54 48 3d 22 00           " MAXLENGTH=".

00000db0 <__c.3006>:
     db0:	22 20 53 49 5a 45 3d 22 00                          " SIZE=".

00000db9 <__c.3004>:
     db9:	3c 42 52 3e 3c 49 4e 50 55 54 20 54 59 50 45 3d     <BR><INPUT TYPE=
     dc9:	22 54 45 58 54 22 20 4e 41 4d 45 3d 22 00           "TEXT" NAME=".

00000dd7 <__c.3002>:
     dd7:	22 3e 3c 42 52 3e 00                                "><BR>.

00000dde <__c.2991>:
     dde:	3c 2f 43 45 4e 54 45 52 3e 3c 2f 42 4f 44 59 3e     </CENTER></BODY>
     dee:	3c 2f 48 54 4d 4c 3e 00                             </HTML>.

00000df6 <__c.2989>:
     df6:	3c 42 52 3e 43 6f 70 79 72 69 67 68 74 20 28 63     <BR>Copyright (c
     e06:	29 4a 75 6e 6e 69 63 68 69 20 54 6f 6d 61 72 75     )Junnichi Tomaru
	...

00000e17 <__c.2987>:
     e17:	3c 42 52 3e 3c 41 20 48 52 45 46 3d 22 2e 2f 22     <BR><A HREF="./"
     e27:	3e 4d 41 49 4e 20 4d 45 4e 55 3c 2f 41 3e 3c 42     >MAIN MENU</A><B
     e37:	52 3e 00                                            R>.

00000e3a <__c.2966>:
     e3a:	3c 42 52 3e 00                                      <BR>.

00000e3f <__c.2964>:
     e3f:	3f 45 52 52 52 53 54 22 3e 45 52 52 4f 52 20 4f     ?ERRRST">ERROR O
     e4f:	46 46 3c 2f 41 3e 3c 42 52 3e 00                    FF</A><BR>.

00000e5a <__c.2962>:
     e5a:	26 65 6d 73 70 3b 3c 41 20 48 52 45 46 3d 22 00     &emsp;<A HREF=".

00000e6a <__c.2960>:
     e6a:	3f 43 4c 52 22 3e 4c 4f 47 20 43 4c 45 41 52 3c     ?CLR">LOG CLEAR<
     e7a:	2f 41 3e 00                                         /A>.

00000e7e <__c.2958>:
     e7e:	3f 50 47 3d 31 22 3e 5b 32 5d 3c 2f 41 3e 26 65     ?PG=1">[2]</A>&e
     e8e:	6d 73 70 3b 3c 41 20 48 52 45 46 3d 22 00           msp;<A HREF=".

00000e9c <__c.2956>:
     e9c:	3f 50 47 3d 30 22 3e 5b 31 5d 3c 2f 41 3e 26 65     ?PG=0">[1]</A>&e
     eac:	6d 73 70 3b 3c 41 20 48 52 45 46 3d 22 00           msp;<A HREF=".

00000eba <__c.2954>:
     eba:	3c 2f 54 41 42 4c 45 3e 3c 42 52 3e 3c 41 20 48     </TABLE><BR><A H
     eca:	52 45 46 3d 22 00                                   REF=".

00000ed0 <__c.2935>:
     ed0:	3c 2f 42 3e 3c 42 52 3e 3c 42 52 3e 3c 54 41 42     </B><BR><BR><TAB
     ee0:	4c 45 20 42 4f 52 44 45 52 3d 22 31 22 3e 3c 54     LE BORDER="1"><T
     ef0:	52 3e 3c 54 48 20 57 49 44 54 48 3d 22 00           R><TH WIDTH=".

00000efe <__c.2914>:
     efe:	22 20 4d 45 54 48 4f 44 3d 22 47 45 54 00           " METHOD="GET.

00000f0c <__c.2909>:
     f0c:	3c 2f 42 3e 3c 42 52 3e 3c 46 4f 52 4d 20 41 43     </B><BR><FORM AC
     f1c:	54 49 4f 4e 3d 22 00                                TION=".

00000f23 <wday>:
     f23:	53 55 4e 00 4d 4f 4e 00 54 55 45 00 57 45 44 00     SUN.MON.TUE.WED.
     f33:	54 48 55 00 46 52 49 00 53 41 54 00                 THU.FRI.SAT.

00000f3f <adj>:
     f3f:	41 49 55 54 52 47 55 50 56 4e                       AIUTRGUPVN

00000f49 <msg0_00>:
     f49:	4b 44 42 2d 53 4e 54 50 20 53 45 52 56 45 52 00     KDB-SNTP SERVER.

00000f59 <msg0_01>:
     f59:	45 4e 43 32 38 4a 36 30 20 52 45 56 3a 00           ENC28J60 REV:.

00000f67 <msg0_02>:
     f67:	49 4e 49 54 49 41 4c 49 5a 49 4e 47 2e 2e 2e 00     INITIALIZING....

00000f77 <msg0_03>:
     f77:	49 4e 49 54 49 41 4c 49 5a 45 44 00                 INITIALIZED.

00000f83 <msg0_04>:
     f83:	4b 45 59 49 4e 50 55 54 20 49 4c 4c 45 47 41 4c     KEYINPUT ILLEGAL
	...

00000f94 <msg0_05>:
     f94:	4c 43 44 20 44 49 53 41 42 4c 45 44 2e 00           LCD DISABLED..

00000fa2 <msg0_06>:
     fa2:	43 41 4c 20 52 45 4d 3a 00                          CAL REM:.

00000fab <msg0_07>:
     fab:	44 48 43 50 20 44 49 53 41 42 4c 45 44 00           DHCP DISABLED.

00000fb9 <msg0_08>:
     fb9:	44 48 43 50 20 45 4e 41 42 4c 45 44 00              DHCP ENABLED.

00000fc6 <msg0_09>:
     fc6:	4e 54 50 20 52 58 20 45 4e 41 42 4c 45 44 00        NTP RX ENABLED.

00000fd5 <msg0_10>:
     fd5:	4e 54 50 20 52 58 20 44 49 53 41 42 4c 45 44 00     NTP RX DISABLED.

00000fe5 <msg0_11>:
     fe5:	42 52 4f 41 44 43 41 53 54 20 4c 4f 47 00           BROADCAST LOG.

00000ff3 <msg0_12>:
     ff3:	4f 50 45 52 41 54 49 4e 47 20 54 49 4d 45 00        OPERATING TIME.

00001002 <msg0_13>:
    1002:	47 50 53 20 4d 4f 44 45 20 52 45 41 44 59 00        GPS MODE READY.

00001011 <msg0_14>:
    1011:	4a 4a 59 20 4d 4f 44 45 20 52 45 41 44 59 00        JJY MODE READY.

00001020 <msg0_15>:
    1020:	45 4e 43 32 38 4a 36 30 20 49 4e 49 54 45 52 52     ENC28J60 INITERR
	...

00001031 <msg0_16>:
    1031:	4d 54 4b 33 33 33 39 20 49 4e 49 54 49 41 4c 00     MTK3339 INITIAL.

00001041 <msg0>:
    1041:	49 0f 59 0f 67 0f 77 0f 83 0f 94 0f a2 0f ab 0f     I.Y.g.w.........
    1051:	b9 0f c6 0f d5 0f e5 0f f3 0f 02 10 11 10 20 10     .............. .
    1061:	31 10                                               1.

00001063 <msg1_00>:
    1063:	56 65 72 73 69 6f 6e 00                             Version.

0000106b <msg1_01>:
    106b:	50 4c 45 41 53 45 20 43 48 45 43 4b 20 4b 45 59     PLEASE CHECK KEY
	...

0000107c <msg1_02>:
    107c:	50 4c 45 41 53 45 20 52 45 53 45 54 00              PLEASE RESET.

00001089 <msg1_03>:
    1089:	4d 41 43 3a 00                                      MAC:.

0000108e <msg1_04>:
    108e:	44 48 43 50 43 4e 54 3a 00                          DHCPCNT:.

00001097 <msg1_05>:
    1097:	4e 42 43 20 52 45 4d 3a 00                          NBC REM:.

000010a0 <msg1_06>:
    10a0:	57 41 49 54 20 66 6f 72 20 54 49 4d 45 20 52 58     WAIT for TIME RX
	...

000010b1 <msg1_07>:
    10b1:	43 4f 4e 4e 45 43 54 20 54 53 2d 4a 4a 59 30 32     CONNECT TS-JJY02
	...

000010c2 <msg1_08>:
    10c2:	43 48 45 43 4b 20 43 49 52 43 55 49 54 00           CHECK CIRCUIT.

000010d0 <msg1_09>:
    10d0:	50 4c 45 41 53 45 20 57 41 49 54 00                 PLEASE WAIT.

000010dc <msg1>:
    10dc:	63 10 6b 10 7c 10 89 10 8e 10 97 10 a0 10 b1 10     c.k.|...........
    10ec:	c2 10 d0 10                                         ....

000010f0 <dmsg0>:
    10f0:	45 58 50 49 52 45 44 20 00                          EXPIRED .

000010f9 <dmsg1>:
    10f9:	20 52 45 42 49 4e 44 20 00                           REBIND .

00001102 <dmsg2>:
    1102:	52 45 4e 45 57 41 4c 20 00                          RENEWAL .

0000110b <dmsg3>:
    110b:	49 4e 46 49 4e 49 54 59 00                          INFINITY.

00001114 <dmsg>:
    1114:	f0 10 f9 10 02 11 0b 11                             ........

0000111c <tzmsg0>:
    111c:	4a 53 54 00                                         JST.

00001120 <tzmsg1>:
    1120:	4b 53 54 00                                         KST.

00001124 <tzmsg2>:
    1124:	43 43 54 00                                         CCT.

00001128 <tzmsg3>:
    1128:	55 54 43 00                                         UTC.

0000112c <tzmsg4>:
    112c:	50 53 54 00                                         PST.

00001130 <tzmsg5>:
    1130:	48 44 54 00                                         HDT.

00001134 <tzmsg>:
    1134:	1c 11 20 11 24 11 28 11 2c 11 30 11                 .. .$.(.,.0.

00001140 <dspevnt00>:
    1140:	20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20                     
	...

00001151 <dspevnt01>:
    1151:	50 4f 57 45 52 20 4f 4e 00                          POWER ON.

0000115a <dspevnt02>:
    115a:	45 58 54 45 52 4e 41 4c 20 52 45 53 45 54 00        EXTERNAL RESET.

00001169 <dspevnt03>:
    1169:	42 52 4f 57 4e 20 4f 55 54 20 52 45 53 45 54 00     BROWN OUT RESET.

00001179 <dspevnt04>:
    1179:	57 41 54 43 48 44 4f 47 20 52 45 53 45 54 00        WATCHDOG RESET.

00001188 <dspevnt05>:
    1188:	45 4e 43 20 52 43 56 20 45 52 52 4f 52 00           ENC RCV ERROR.

00001196 <dspevnt06>:
    1196:	41 52 50 20 52 45 51 20 54 49 4d 45 4f 55 54 00     ARP REQ TIMEOUT.

000011a6 <dspevnt07>:
    11a6:	49 43 4d 50 20 53 55 4d 20 45 52 52 4f 52 00        ICMP SUM ERROR.

000011b5 <dspevnt08>:
    11b5:	54 43 50 20 53 55 4d 20 45 52 52 4f 52 00           TCP SUM ERROR.

000011c3 <dspevnt09>:
    11c3:	55 44 50 20 53 55 4d 20 45 52 52 4f 52 00           UDP SUM ERROR.

000011d1 <dspevnt10>:
    11d1:	49 43 4d 50 20 4d 45 53 53 41 47 45 20 52 43 56     ICMP MESSAGE RCV
	...

000011e2 <dspevnt11>:
    11e2:	44 48 43 50 20 52 45 43 45 49 56 45 20 4e 41 4b     DHCP RECEIVE NAK
	...

000011f3 <dspevnt12>:
    11f3:	44 48 43 50 20 52 45 4e 45 57 41 4c 00              DHCP RENEWAL.

00001200 <dspevnt13>:
    1200:	44 48 43 50 20 52 45 42 49 4e 44 00                 DHCP REBIND.

0000120c <dspevnt14>:
    120c:	44 48 43 50 20 45 58 50 49 52 45 44 00              DHCP EXPIRED.

00001219 <dspevnt15>:
    1219:	44 48 43 50 20 50 43 54 20 45 52 52 4f 52 00        DHCP PCT ERROR.

00001228 <dspevnt16>:
    1228:	4e 42 54 20 52 43 56 20 45 52 52 4f 52 00           NBT RCV ERROR.

00001236 <dspevnt17>:
    1236:	4e 42 54 20 46 4f 52 4d 41 54 20 45 52 52 4f 52     NBT FORMAT ERROR
	...

00001247 <dspevnt18>:
    1247:	4e 42 54 20 50 41 43 4b 45 54 20 45 52 52 4f 52     NBT PACKET ERROR
	...

00001258 <dspevnt19>:
    1258:	4e 42 54 20 54 49 4d 45 4f 55 54 28 4e 6f 31 29     NBT TIMEOUT(No1)
	...

00001269 <dspevnt20>:
    1269:	4e 42 54 20 54 49 4d 45 4f 55 54 28 4e 6f 32 29     NBT TIMEOUT(No2)
	...

0000127a <dspevnt21>:
    127a:	4e 42 54 20 54 49 4d 45 4f 55 54 28 4e 6f 33 29     NBT TIMEOUT(No3)
	...

0000128b <dspevnt22>:
    128b:	4e 42 54 20 54 49 4d 45 4f 55 54 28 4e 6f 34 29     NBT TIMEOUT(No4)
	...

0000129c <dspevnt23>:
    129c:	44 4e 53 20 54 49 4d 45 4f 55 54 28 4e 6f 31 29     DNS TIMEOUT(No1)
	...

000012ad <dspevnt24>:
    12ad:	44 4e 53 20 54 49 4d 45 4f 55 54 28 4e 6f 32 29     DNS TIMEOUT(No2)
	...

000012be <dspevnt25>:
    12be:	44 4e 53 20 54 49 4d 45 4f 55 54 28 4e 6f 33 29     DNS TIMEOUT(No3)
	...

000012cf <dspevnt26>:
    12cf:	44 4e 53 20 54 49 4d 45 4f 55 54 28 4e 6f 34 29     DNS TIMEOUT(No4)
	...

000012e0 <dspevnt27>:
    12e0:	4e 54 50 20 55 4e 53 59 4e 43 52 4f 4e 49 5a 45     NTP UNSYNCRONIZE
	...

000012f1 <dspevnt28>:
    12f1:	4e 54 50 20 54 49 4d 45 4f 55 54 28 4e 6f 31 29     NTP TIMEOUT(No1)
	...

00001302 <dspevnt29>:
    1302:	4e 54 50 20 54 49 4d 45 4f 55 54 28 4e 6f 32 29     NTP TIMEOUT(No2)
	...

00001313 <dspevnt30>:
    1313:	4e 54 50 20 54 49 4d 45 4f 55 54 28 4e 6f 33 29     NTP TIMEOUT(No3)
	...

00001324 <dspevnt31>:
    1324:	4e 54 50 20 54 49 4d 45 4f 55 54 28 4e 6f 34 29     NTP TIMEOUT(No4)
	...

00001335 <dspevnt32>:
    1335:	4e 54 50 20 49 4c 4c 45 47 41 4c 20 52 45 50 2e     NTP ILLEGAL REP.
	...

00001346 <dspevnt33>:
    1346:	4e 54 50 20 4c 45 41 50 20 41 44 4a 55 53 54 00     NTP LEAP ADJUST.

00001356 <dspevnt34>:
    1356:	54 49 4d 45 20 49 4c 4c 45 47 41 4c 00              TIME ILLEGAL.

00001363 <dspevnt35>:
    1363:	47 50 53 20 46 4f 52 4d 41 54 20 45 52 52 4f 52     GPS FORMAT ERROR
	...

00001374 <dspevnt36>:
    1374:	4e 4d 45 41 20 43 48 4b 53 55 4d 20 45 52 52 2e     NMEA CHKSUM ERR.
	...

00001385 <dspevnt37>:
    1385:	54 49 4d 45 20 44 41 54 41 20 52 43 56 45 52 52     TIME DATA RCVERR
	...

00001396 <dspevnt38>:
    1396:	55 4e 53 59 4e 43 20 54 49 4d 45 55 50 00           UNSYNC TIMEUP.

000013a4 <dspevnt39>:
    13a4:	4d 54 4b 33 33 33 39 20 49 4e 49 54 45 52 52 00     MTK3339 INITERR.

000013b4 <dspevnt>:
    13b4:	40 11 51 11 5a 11 69 11 79 11 88 11 96 11 a6 11     @.Q.Z.i.y.......
    13c4:	b5 11 c3 11 d1 11 e2 11 f3 11 00 12 0c 12 19 12     ................
    13d4:	28 12 36 12 47 12 58 12 69 12 7a 12 8b 12 9c 12     (.6.G.X.i.z.....
    13e4:	ad 12 be 12 cf 12 e0 12 f1 12 02 13 13 13 24 13     ..............$.
    13f4:	35 13 46 13 56 13 63 13 74 13 85 13 96 13 a4 13     5.F.V.c.t.......

00001404 <no_logtime>:
    1404:	2d 2d 2f 2d 2d 20 2d 2d 3a 2d 2d 3a 2d 2d 00        --/-- --:--:--.

00001413 <segdata>:
    1413:	c0 f9 a4 b0 99 92 82 f8 80 90 ff                    ...........

0000141e <segadj>:
    141e:	88 fb c1 87 af c2 c1 8c e3 eb                       ..........

00001428 <__c.2975>:
    1428:	48 4f 55 52 20 20 20 4d 49 4e 2e 00                 HOUR   MIN..

00001434 <__c.2899>:
    1434:	2a 2a 3a 2a 2a 3a 2a 2a 00                          **:**:**.

0000143d <__c.2882>:
    143d:	2d 2d 3a 2d 2d 3a 2d 2d 00                          --:--:--.

00001446 <__c.2916>:
    1446:	53 54 49 4d 0d 0a 00                                STIM...

0000144d <__c.2914>:
    144d:	44 41 54 45 0d 0a 00                                DATE...

00001454 <__c.2912>:
    1454:	61 64 6a 75 73 74 65 64 00                          adjusted.

0000145d <__c.2910>:
    145d:	76 61 6c 69 64 00                                   valid.

00001463 <__c.2908>:
    1463:	53 54 55 53 0d 0a 00                                STUS...

0000146a <__c.2906>:
    146a:	44 43 53 54 0d 0a 00                                DCST...

00001471 <__c.2822>:
    1471:	2d 2d 5a 44 41 00                                   --ZDA.

00001477 <__c.2820>:
    1477:	47 50 5a 44 41 00                                   GPZDA.

0000147d <__c.2818>:
    147d:	2d 2d 52 4d 43 00                                   --RMC.

00001483 <__c.2816>:
    1483:	47 50 52 4d 43 00                                   GPRMC.

00001489 <__c.2814>:
    1489:	47 50 5a 44 41 00                                   GPZDA.

0000148f <__c.2812>:
    148f:	50 46 45 43 2c 47 50 74 70 73 00                    PFEC,GPtps.

0000149a <__c.2753>:
    149a:	50 4d 54 4b 30 30 31 2c 33 31 34 2c 33 00           PMTK001,314,3.

000014a8 <__c.2751>:
    14a8:	24 50 4d 54 4b 33 31 34 2c 30 2c 31 2c 30 2c 30     $PMTK314,0,1,0,0
    14b8:	2c 30 2c 30 2c 30 2c 30 2c 30 2c 30 2c 30 2c 30     ,0,0,0,0,0,0,0,0
    14c8:	2c 30 2c 30 2c 30 2c 30 2c 30 2c 31 2c 30 2a 32     ,0,0,0,0,0,1,0*2
    14d8:	38 0d 0a 00                                         8...

000014dc <prmmax>:
    14dc:	02 09 00 05 09 00 05 09                             ........

000014e4 <tmrwday>:
    14e4:	53 4d 54 57 54 46 53 00                             SMTWTFS.

000014ec <__c.2801>:
    14ec:	4f 46 46 54 49 4d 45 00                             OFFTIME.

000014f4 <__c.2799>:
    14f4:	4f 4e 54 49 4d 45 00                                ONTIME.

000014fb <__c.2712>:
    14fb:	20 20 3a 20 20 3a 20 20 00                            :  :  .

00001504 <__c.2872>:
    1504:	4f 46 46 20 57 44 41 59 3a 00                       OFF WDAY:.

0000150e <__c.2870>:
    150e:	4f 4e 20 20 57 44 41 59 3a 00                       ON  WDAY:.

00001518 <__c.2772>:
    1518:	2c 45 30 30 0a 00                                   ,E00..

0000151e <__c.2770>:
    151e:	2c 4f 4b 0a 00                                      ,OK..

00001523 <__c.2768>:
    1523:	43 4c 4f 47 00                                      CLOG.

00001528 <__c.2766>:
    1528:	2c 4f 4b 0a 00                                      ,OK..

0000152d <__c.2764>:
    152d:	43 4f 55 54 00                                      COUT.

00001532 <__c.2762>:
    1532:	2c 45 30 31 0a 00                                   ,E01..

00001538 <__c.2760>:
    1538:	2c 4e 47 0a 00                                      ,NG..

0000153d <__c.2758>:
    153d:	2c 4f 4b 0a 00                                      ,OK..

00001542 <__c.2756>:
    1542:	43 41 52 50 00                                      CARP.

00001547 <__c.2754>:
    1547:	2c 45 30 31 0a 00                                   ,E01..

0000154d <__c.2752>:
    154d:	2c 4e 47 0a 00                                      ,NG..

00001552 <__c.2750>:
    1552:	2c 4f 4b 0a 00                                      ,OK..

00001557 <__c.2745>:
    1557:	53 41 52 50 00                                      SARP.

0000155c <__c.2743>:
    155c:	47 56 45 52 00                                      GVER.

00001561 <__c.2741>:
    1561:	47 4d 41 43 00                                      GMAC.

00001566 <__c.2739>:
    1566:	2c 45 30 31 0a 00                                   ,E01..

0000156c <__c.2737>:
    156c:	47 45 43 44 00                                      GECD.

00001571 <__c.2732>:
    1571:	47 45 56 4e 00                                      GEVN.

00001576 <__c.2724>:
    1576:	47 41 52 50 00                                      GARP.

0000157b <__c.2722>:
    157b:	47 4d 4f 44 00                                      GMOD.

00001580 <__c.2720>:
    1580:	47 53 54 53 00                                      GSTS.

00001585 <__c.2718>:
    1585:	47 55 44 54 00                                      GUDT.

0000158a <__c.2716>:
    158a:	47 57 44 54 00                                      GWDT.

0000158f <prmmenu00>:
    158f:	53 45 54 20 46 49 58 20 49 50 20 41 44 44 52 2e     SET FIX IP ADDR.
	...

000015a0 <prmmenu01>:
    15a0:	53 45 54 20 46 49 58 20 4e 45 54 4d 41 53 4b 00     SET FIX NETMASK.

000015b0 <prmmenu02>:
    15b0:	53 45 54 20 46 49 58 20 47 41 54 45 57 41 59 00     SET FIX GATEWAY.

000015c0 <prmmenu03>:
    15c0:	53 45 54 20 46 49 58 20 44 4e 53 20 53 52 56 2e     SET FIX DNS SRV.
	...

000015d1 <prmmenu04>:
    15d1:	53 45 54 20 48 54 54 50 20 50 4f 52 54 00           SET HTTP PORT.

000015df <prmmenu05>:
    15df:	53 45 54 20 41 52 50 20 52 45 51 20 54 4f 55 54     SET ARP REQ TOUT
	...

000015f0 <prmmenu06>:
    15f0:	53 45 54 20 42 43 41 53 54 20 41 44 44 52 2e 00     SET BCAST ADDR..

00001600 <prmmenu07>:
    1600:	53 45 54 20 42 43 41 53 54 20 49 4e 54 56 4c 00     SET BCAST INTVL.

00001610 <prmmenu08>:
    1610:	53 45 54 20 54 49 4d 45 20 5a 4f 4e 45 00           SET TIME ZONE.

0000161e <prmmenu09>:
    161e:	53 45 54 20 4e 54 50 20 54 49 4d 45 4f 55 54 00     SET NTP TIMEOUT.

0000162e <prmmenu10>:
    162e:	53 45 54 20 41 44 4a 55 53 54 20 57 49 44 54 48     SET ADJUST WIDTH
	...

0000163f <prmmenu11>:
    163f:	53 45 54 20 4e 54 50 20 53 4c 45 57 00              SET NTP SLEW.

0000164c <prmmenu12>:
    164c:	53 45 54 20 42 41 55 44 52 41 54 45 00              SET BAUDRATE.

00001659 <prmmenu13>:
    1659:	53 45 4c 20 47 50 53 20 4d 4f 44 55 4c 45 00        SEL GPS MODULE.

00001668 <prmmenu14>:
    1668:	53 45 4c 20 4e 4d 45 41 20 53 45 4e 54 2e 00        SEL NMEA SENT..

00001677 <prmmenu15>:
    1677:	53 45 54 20 50 50 53 20 45 44 47 45 00              SET PPS EDGE.

00001684 <prmmenu16>:
    1684:	53 45 54 20 4e 4d 45 41 20 41 44 4a 55 53 54 00     SET NMEA ADJUST.

00001694 <prmmenu17>:
    1694:	53 45 54 20 47 50 53 20 4e 4f 44 41 54 41 00        SET GPS NODATA.

000016a3 <prmmenu18>:
    16a3:	53 45 54 20 47 50 53 20 55 4e 53 59 4e 43 00        SET GPS UNSYNC.

000016b2 <prmmenu19>:
    16b2:	53 45 54 20 4d 41 58 50 4f 4c 4c 28 32 5e 6e 29     SET MAXPOLL(2^n)
	...

000016c3 <prmmenu20>:
    16c3:	53 45 54 20 37 53 45 47 20 45 4e 41 42 4c 45 00     SET 7SEG ENABLE.

000016d3 <prmmenu21>:
    16d3:	53 45 54 20 37 53 45 47 20 54 49 4d 45 52 00        SET 7SEG TIMER.

000016e2 <prmmenu22>:
    16e2:	53 45 54 20 4d 41 43 20 41 44 44 52 45 53 53 00     SET MAC ADDRESS.

000016f2 <prmmenu23>:
    16f2:	51 55 49 54 20 54 4f 20 4d 41 49 4e 00              QUIT TO MAIN.

000016ff <prmmenu>:
    16ff:	8f 15 a0 15 b0 15 c0 15 d1 15 df 15 f0 15 00 16     ................
    170f:	10 16 1e 16 2e 16 3f 16 4c 16 59 16 68 16 77 16     ......?.L.Y.h.w.
    171f:	84 16 94 16 a3 16 b2 16 c3 16 d3 16 e2 16 f2 16     ................

0000172f <tz00>:
    172f:	4a 53 54 28 55 54 43 2b 39 3a 30 30 29 00           JST(UTC+9:00).

0000173d <tz01>:
    173d:	4b 53 54 28 55 54 43 2b 39 3a 30 30 29 00           KST(UTC+9:00).

0000174b <tz02>:
    174b:	43 43 54 28 55 54 43 2b 38 3a 30 30 29 00           CCT(UTC+8:00).

00001759 <tz03>:
    1759:	55 54 43 28 55 54 43 20 30 3a 30 30 29 00           UTC(UTC 0:00).

00001767 <tz04>:
    1767:	50 53 54 28 55 54 43 2d 38 3a 30 30 29 00           PST(UTC-8:00).

00001775 <tz05>:
    1775:	48 44 54 28 55 54 43 2d 39 3a 30 30 29 00           HDT(UTC-9:00).

00001783 <tz>:
    1783:	2f 17 3d 17 4b 17 59 17 67 17 75 17                 /.=.K.Y.g.u.

0000178f <tzs>:
    178f:	90 7e 00 00 90 7e 00 00 80 70 00 00 00 00 00 00     .~...~...p......
    179f:	80 8f ff ff 70 81 ff ff                             ....p...

000017a7 <br00>:
    17a7:	20 31 32 30 30 62 70 73 00                           1200bps.

000017b0 <br01>:
    17b0:	20 32 34 30 30 62 70 73 00                           2400bps.

000017b9 <br02>:
    17b9:	20 34 38 30 30 62 70 73 00                           4800bps.

000017c2 <br03>:
    17c2:	20 39 36 30 30 62 70 73 00                           9600bps.

000017cb <br04>:
    17cb:	31 39 32 30 30 62 70 73 00                          19200bps.

000017d4 <br05>:
    17d4:	33 38 34 30 30 62 70 73 00                          38400bps.

000017dd <br06>:
    17dd:	35 37 36 30 30 62 70 73 00                          57600bps.

000017e6 <br>:
    17e6:	a7 17 b0 17 b9 17 c2 17 cb 17 d4 17 dd 17           ..............

000017f4 <gm00>:
    17f4:	46 55 52 55 4e 4f 20 4d 4f 44 55 4c 45 00           FURUNO MODULE.

00001802 <gm01>:
    1802:	4d 54 4b 33 33 33 39 20 4d 4f 44 55 4c 45 00        MTK3339 MODULE.

00001811 <gm02>:
    1811:	55 4e 49 56 45 52 53 41 4c 20 47 50 53 00           UNIVERSAL GPS.

0000181f <gm>:
    181f:	f4 17 02 18 11 18                                   ......

00001825 <nmea00>:
    1825:	24 47 50 74 70 73 28 46 55 52 55 4e 4f 29 00        $GPtps(FURUNO).

00001834 <nmea01>:
    1834:	24 47 50 5a 44 41 28 46 55 52 55 4e 4f 29 00        $GPZDA(FURUNO).

00001843 <nmea02>:
    1843:	24 47 50 52 4d 43 28 55 4e 49 56 2e 29 00           $GPRMC(UNIV.).

00001851 <nmea03>:
    1851:	24 47 50 5a 44 41 28 55 4e 49 56 2e 29 00           $GPZDA(UNIV.).

0000185f <nmea>:
    185f:	25 18 34 18 43 18 51 18                             %.4.C.Q.

00001867 <eg00>:
    1867:	46 41 4c 4c 20 45 44 47 45 00                       FALL EDGE.

00001871 <eg01>:
    1871:	52 49 53 45 20 45 44 47 45 00                       RISE EDGE.

0000187b <eg>:
    187b:	67 18 71 18                                         g.q.

0000187f <nd00>:
    187f:	2b 30 20 53 45 43 4f 4e 44 00                       +0 SECOND.

00001889 <nd01>:
    1889:	2b 31 20 53 45 43 4f 4e 44 00                       +1 SECOND.

00001893 <nd>:
    1893:	7f 18 89 18                                         ....

00001897 <en00>:
    1897:	44 49 53 41 42 4c 45 00                             DISABLE.

0000189f <en01>:
    189f:	45 4e 41 42 4c 45 00                                ENABLE.

000018a6 <en>:
    18a6:	97 18 9f 18                                         ....

000018aa <__c.3262>:
    18aa:	50 4f 4c 4c 3a 20 20 28 4d 41 58 31 34 29 00        POLL:  (MAX14).

000018b9 <__c.3242>:
    18b9:	54 4f 55 54 3a 20 20 20 20 20 73 65 63 00           TOUT:     sec.

000018c7 <__c.3224>:
    18c7:	54 4f 55 54 3a 20 20 20 20 20 73 65 63 00           TOUT:     sec.

000018d5 <__c.3017>:
    18d5:	57 49 44 54 48 3a 20 20 20 20 20 6d 73 65 63 00     WIDTH:     msec.

000018e5 <__c.2998>:
    18e5:	57 49 44 54 48 3a 20 20 20 20 20 73 65 63 00        WIDTH:     sec.

000018f4 <__c.2980>:
    18f4:	54 49 4d 45 4f 55 54 3a 20 20 20 20 20 6d 73 00     TIMEOUT:     ms.

00001904 <__c.2921>:
    1904:	49 4e 54 45 52 56 41 4c 3a 20 20 20 20 20 73 00     INTERVAL:     s.

00001914 <__c.2898>:
    1914:	54 49 4d 45 4f 55 54 3a 20 20 20 20 20 6d 73 00     TIMEOUT:     ms.

00001924 <__c.2880>:
    1924:	50 4f 52 54 3a 20 20 20 20 20 00                    PORT:     .

0000192f <__c.2792>:
    192f:	2d 2d 20 4d 45 4e 55 20 2d 2d 00                    -- MENU --.

0000193a <__ctors_end>:
    193a:	11 24       	eor	r1, r1
    193c:	1f be       	out	0x3f, r1	; 63
    193e:	cf ef       	ldi	r28, 0xFF	; 255
    1940:	d0 e1       	ldi	r29, 0x10	; 16
    1942:	de bf       	out	0x3e, r29	; 62
    1944:	cd bf       	out	0x3d, r28	; 61

00001946 <__do_copy_data>:
    1946:	13 e0       	ldi	r17, 0x03	; 3
    1948:	a0 e0       	ldi	r26, 0x00	; 0
    194a:	b1 e0       	ldi	r27, 0x01	; 1
    194c:	ea e9       	ldi	r30, 0x9A	; 154
    194e:	fd ed       	ldi	r31, 0xDD	; 221
    1950:	02 c0       	rjmp	.+4      	; 0x1956 <.do_copy_data_start>

00001952 <.do_copy_data_loop>:
    1952:	05 90       	lpm	r0, Z+
    1954:	0d 92       	st	X+, r0

00001956 <.do_copy_data_start>:
    1956:	a6 30       	cpi	r26, 0x06	; 6
    1958:	b1 07       	cpc	r27, r17
    195a:	d9 f7       	brne	.-10     	; 0x1952 <.do_copy_data_loop>

0000195c <__do_clear_bss>:
    195c:	1c e0       	ldi	r17, 0x0C	; 12
    195e:	a6 e0       	ldi	r26, 0x06	; 6
    1960:	b3 e0       	ldi	r27, 0x03	; 3
    1962:	01 c0       	rjmp	.+2      	; 0x1966 <.do_clear_bss_start>

00001964 <.do_clear_bss_loop>:
    1964:	1d 92       	st	X+, r1

00001966 <.do_clear_bss_start>:
    1966:	af 32       	cpi	r26, 0x2F	; 47
    1968:	b1 07       	cpc	r27, r17
    196a:	e1 f7       	brne	.-8      	; 0x1964 <.do_clear_bss_loop>
    196c:	0e 94 64 12 	call	0x24c8	; 0x24c8 <main>
    1970:	0c 94 cb 6e 	jmp	0xdd96	; 0xdd96 <_exit>

00001974 <__bad_interrupt>:
    1974:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

00001978 <unsync_seq>:
    1978:	80 91 ab 01 	lds	r24, 0x01AB
    197c:	88 23       	and	r24, r24
    197e:	59 f4       	brne	.+22     	; 0x1996 <unsync_seq+0x1e>
    1980:	80 91 d2 09 	lds	r24, 0x09D2
    1984:	90 91 d3 09 	lds	r25, 0x09D3
    1988:	90 93 0c 0c 	sts	0x0C0C, r25
    198c:	80 93 0b 0c 	sts	0x0C0B, r24
    1990:	81 e0       	ldi	r24, 0x01	; 1
    1992:	80 93 ab 01 	sts	0x01AB, r24
    1996:	08 95       	ret

00001998 <eep_initvalue>:
    1998:	a0 e2       	ldi	r26, 0x20	; 32
    199a:	b0 e0       	ldi	r27, 0x00	; 0
    199c:	e2 ed       	ldi	r30, 0xD2	; 210
    199e:	fc e0       	ldi	r31, 0x0C	; 12
    19a0:	0c 94 57 6d 	jmp	0xdaae	; 0xdaae <__prologue_saves__+0x1c>
    19a4:	0e 94 a0 1e 	call	0x3d40	; 0x3d40 <lcd_cls>
    19a8:	82 e0       	ldi	r24, 0x02	; 2
    19aa:	0e 94 9b 4f 	call	0x9f36	; 0x9f36 <disp_message1>
    19ae:	01 c0       	rjmp	.+2      	; 0x19b2 <eep_initvalue+0x1a>
    19b0:	a8 95       	wdr
    19b2:	f9 99       	sbic	0x1f, 1	; 31
    19b4:	fd cf       	rjmp	.-6      	; 0x19b0 <eep_initvalue+0x18>
    19b6:	8a e3       	ldi	r24, 0x3A	; 58
    19b8:	90 e0       	ldi	r25, 0x00	; 0
    19ba:	63 e0       	ldi	r22, 0x03	; 3
    19bc:	70 e0       	ldi	r23, 0x00	; 0
    19be:	0e 94 c6 6e 	call	0xdd8c	; 0xdd8c <__eewr_word_m644a>
    19c2:	01 c0       	rjmp	.+2      	; 0x19c6 <eep_initvalue+0x2e>
    19c4:	a8 95       	wdr
    19c6:	f9 99       	sbic	0x1f, 1	; 31
    19c8:	fd cf       	rjmp	.-6      	; 0x19c4 <eep_initvalue+0x2c>
    19ca:	86 e0       	ldi	r24, 0x06	; 6
    19cc:	90 e0       	ldi	r25, 0x00	; 0
    19ce:	60 ed       	ldi	r22, 0xD0	; 208
    19d0:	77 e0       	ldi	r23, 0x07	; 7
    19d2:	0e 94 c6 6e 	call	0xdd8c	; 0xdd8c <__eewr_word_m644a>
    19d6:	01 c0       	rjmp	.+2      	; 0x19da <eep_initvalue+0x42>
    19d8:	a8 95       	wdr
    19da:	f9 99       	sbic	0x1f, 1	; 31
    19dc:	fd cf       	rjmp	.-6      	; 0x19d8 <eep_initvalue+0x40>
    19de:	8e e0       	ldi	r24, 0x0E	; 14
    19e0:	90 e0       	ldi	r25, 0x00	; 0
    19e2:	60 e5       	ldi	r22, 0x50	; 80
    19e4:	70 e0       	ldi	r23, 0x00	; 0
    19e6:	0e 94 c6 6e 	call	0xdd8c	; 0xdd8c <__eewr_word_m644a>
    19ea:	01 c0       	rjmp	.+2      	; 0x19ee <eep_initvalue+0x56>
    19ec:	a8 95       	wdr
    19ee:	f9 99       	sbic	0x1f, 1	; 31
    19f0:	fd cf       	rjmp	.-6      	; 0x19ec <eep_initvalue+0x54>
    19f2:	8c e0       	ldi	r24, 0x0C	; 12
    19f4:	90 e0       	ldi	r25, 0x00	; 0
    19f6:	6a e0       	ldi	r22, 0x0A	; 10
    19f8:	70 e8       	ldi	r23, 0x80	; 128
    19fa:	0e 94 c6 6e 	call	0xdd8c	; 0xdd8c <__eewr_word_m644a>
    19fe:	01 c0       	rjmp	.+2      	; 0x1a02 <eep_initvalue+0x6a>
    1a00:	a8 95       	wdr
    1a02:	f9 99       	sbic	0x1f, 1	; 31
    1a04:	fd cf       	rjmp	.-6      	; 0x1a00 <eep_initvalue+0x68>
    1a06:	80 e2       	ldi	r24, 0x20	; 32
    1a08:	90 e0       	ldi	r25, 0x00	; 0
    1a0a:	46 e6       	ldi	r20, 0x66	; 102
    1a0c:	51 e0       	ldi	r21, 0x01	; 1
    1a0e:	68 ea       	ldi	r22, 0xA8	; 168
    1a10:	70 ec       	ldi	r23, 0xC0	; 192
    1a12:	0e 94 be 6e 	call	0xdd7c	; 0xdd7c <__eewr_dword_m644a>
    1a16:	01 c0       	rjmp	.+2      	; 0x1a1a <eep_initvalue+0x82>
    1a18:	a8 95       	wdr
    1a1a:	f9 99       	sbic	0x1f, 1	; 31
    1a1c:	fd cf       	rjmp	.-6      	; 0x1a18 <eep_initvalue+0x80>
    1a1e:	84 e2       	ldi	r24, 0x24	; 36
    1a20:	90 e0       	ldi	r25, 0x00	; 0
    1a22:	40 e0       	ldi	r20, 0x00	; 0
    1a24:	5f ef       	ldi	r21, 0xFF	; 255
    1a26:	6f ef       	ldi	r22, 0xFF	; 255
    1a28:	7f ef       	ldi	r23, 0xFF	; 255
    1a2a:	0e 94 be 6e 	call	0xdd7c	; 0xdd7c <__eewr_dword_m644a>
    1a2e:	01 c0       	rjmp	.+2      	; 0x1a32 <eep_initvalue+0x9a>
    1a30:	a8 95       	wdr
    1a32:	f9 99       	sbic	0x1f, 1	; 31
    1a34:	fd cf       	rjmp	.-6      	; 0x1a30 <eep_initvalue+0x98>
    1a36:	88 e2       	ldi	r24, 0x28	; 40
    1a38:	90 e0       	ldi	r25, 0x00	; 0
    1a3a:	41 e0       	ldi	r20, 0x01	; 1
    1a3c:	51 e0       	ldi	r21, 0x01	; 1
    1a3e:	68 ea       	ldi	r22, 0xA8	; 168
    1a40:	70 ec       	ldi	r23, 0xC0	; 192
    1a42:	0e 94 be 6e 	call	0xdd7c	; 0xdd7c <__eewr_dword_m644a>
    1a46:	01 c0       	rjmp	.+2      	; 0x1a4a <eep_initvalue+0xb2>
    1a48:	a8 95       	wdr
    1a4a:	f9 99       	sbic	0x1f, 1	; 31
    1a4c:	fd cf       	rjmp	.-6      	; 0x1a48 <eep_initvalue+0xb0>
    1a4e:	8c e2       	ldi	r24, 0x2C	; 44
    1a50:	90 e0       	ldi	r25, 0x00	; 0
    1a52:	41 e0       	ldi	r20, 0x01	; 1
    1a54:	51 e0       	ldi	r21, 0x01	; 1
    1a56:	68 ea       	ldi	r22, 0xA8	; 168
    1a58:	70 ec       	ldi	r23, 0xC0	; 192
    1a5a:	0e 94 be 6e 	call	0xdd7c	; 0xdd7c <__eewr_dword_m644a>
    1a5e:	ce 01       	movw	r24, r28
    1a60:	01 96       	adiw	r24, 0x01	; 1
    1a62:	6c e0       	ldi	r22, 0x0C	; 12
    1a64:	71 e0       	ldi	r23, 0x01	; 1
    1a66:	0e 94 b9 6d 	call	0xdb72	; 0xdb72 <strcpy_P>
    1a6a:	01 c0       	rjmp	.+2      	; 0x1a6e <eep_initvalue+0xd6>
    1a6c:	a8 95       	wdr
    1a6e:	f9 99       	sbic	0x1f, 1	; 31
    1a70:	fd cf       	rjmp	.-6      	; 0x1a6c <eep_initvalue+0xd4>
    1a72:	ce 01       	movw	r24, r28
    1a74:	01 96       	adiw	r24, 0x01	; 1
    1a76:	60 e1       	ldi	r22, 0x10	; 16
    1a78:	70 e0       	ldi	r23, 0x00	; 0
    1a7a:	40 e1       	ldi	r20, 0x10	; 16
    1a7c:	50 e0       	ldi	r21, 0x00	; 0
    1a7e:	0e 94 a6 6e 	call	0xdd4c	; 0xdd4c <__eewr_block_m644a>
    1a82:	01 c0       	rjmp	.+2      	; 0x1a86 <eep_initvalue+0xee>
    1a84:	a8 95       	wdr
    1a86:	f9 99       	sbic	0x1f, 1	; 31
    1a88:	fd cf       	rjmp	.-6      	; 0x1a84 <eep_initvalue+0xec>
    1a8a:	8e 01       	movw	r16, r28
    1a8c:	0f 5f       	subi	r16, 0xFF	; 255
    1a8e:	1f 4f       	sbci	r17, 0xFF	; 255
    1a90:	c8 01       	movw	r24, r16
    1a92:	6c e1       	ldi	r22, 0x1C	; 28
    1a94:	71 e0       	ldi	r23, 0x01	; 1
    1a96:	0e 94 b9 6d 	call	0xdb72	; 0xdb72 <strcpy_P>
    1a9a:	c8 01       	movw	r24, r16
    1a9c:	60 e4       	ldi	r22, 0x40	; 64
    1a9e:	70 e0       	ldi	r23, 0x00	; 0
    1aa0:	40 e2       	ldi	r20, 0x20	; 32
    1aa2:	50 e0       	ldi	r21, 0x00	; 0
    1aa4:	0e 94 a6 6e 	call	0xdd4c	; 0xdd4c <__eewr_block_m644a>
    1aa8:	01 c0       	rjmp	.+2      	; 0x1aac <eep_initvalue+0x114>
    1aaa:	a8 95       	wdr
    1aac:	f9 99       	sbic	0x1f, 1	; 31
    1aae:	fd cf       	rjmp	.-6      	; 0x1aaa <eep_initvalue+0x112>
    1ab0:	8e 01       	movw	r16, r28
    1ab2:	0f 5f       	subi	r16, 0xFF	; 255
    1ab4:	1f 4f       	sbci	r17, 0xFF	; 255
    1ab6:	c8 01       	movw	r24, r16
    1ab8:	61 e3       	ldi	r22, 0x31	; 49
    1aba:	71 e0       	ldi	r23, 0x01	; 1
    1abc:	0e 94 b9 6d 	call	0xdb72	; 0xdb72 <strcpy_P>
    1ac0:	c8 01       	movw	r24, r16
    1ac2:	60 e6       	ldi	r22, 0x60	; 96
    1ac4:	70 e0       	ldi	r23, 0x00	; 0
    1ac6:	40 e2       	ldi	r20, 0x20	; 32
    1ac8:	50 e0       	ldi	r21, 0x00	; 0
    1aca:	0e 94 a6 6e 	call	0xdd4c	; 0xdd4c <__eewr_block_m644a>
    1ace:	01 c0       	rjmp	.+2      	; 0x1ad2 <eep_initvalue+0x13a>
    1ad0:	a8 95       	wdr
    1ad2:	f9 99       	sbic	0x1f, 1	; 31
    1ad4:	fd cf       	rjmp	.-6      	; 0x1ad0 <eep_initvalue+0x138>
    1ad6:	8e 01       	movw	r16, r28
    1ad8:	0f 5f       	subi	r16, 0xFF	; 255
    1ada:	1f 4f       	sbci	r17, 0xFF	; 255
    1adc:	c8 01       	movw	r24, r16
    1ade:	66 e4       	ldi	r22, 0x46	; 70
    1ae0:	71 e0       	ldi	r23, 0x01	; 1
    1ae2:	0e 94 b9 6d 	call	0xdb72	; 0xdb72 <strcpy_P>
    1ae6:	c8 01       	movw	r24, r16
    1ae8:	60 e8       	ldi	r22, 0x80	; 128
    1aea:	70 e0       	ldi	r23, 0x00	; 0
    1aec:	40 e2       	ldi	r20, 0x20	; 32
    1aee:	50 e0       	ldi	r21, 0x00	; 0
    1af0:	0e 94 a6 6e 	call	0xdd4c	; 0xdd4c <__eewr_block_m644a>
    1af4:	01 c0       	rjmp	.+2      	; 0x1af8 <eep_initvalue+0x160>
    1af6:	a8 95       	wdr
    1af8:	f9 99       	sbic	0x1f, 1	; 31
    1afa:	fd cf       	rjmp	.-6      	; 0x1af6 <eep_initvalue+0x15e>
    1afc:	8e 01       	movw	r16, r28
    1afe:	0f 5f       	subi	r16, 0xFF	; 255
    1b00:	1f 4f       	sbci	r17, 0xFF	; 255
    1b02:	c8 01       	movw	r24, r16
    1b04:	6b e5       	ldi	r22, 0x5B	; 91
    1b06:	71 e0       	ldi	r23, 0x01	; 1
    1b08:	0e 94 b9 6d 	call	0xdb72	; 0xdb72 <strcpy_P>
    1b0c:	c8 01       	movw	r24, r16
    1b0e:	60 ea       	ldi	r22, 0xA0	; 160
    1b10:	70 e0       	ldi	r23, 0x00	; 0
    1b12:	40 e2       	ldi	r20, 0x20	; 32
    1b14:	50 e0       	ldi	r21, 0x00	; 0
    1b16:	0e 94 a6 6e 	call	0xdd4c	; 0xdd4c <__eewr_block_m644a>
    1b1a:	01 c0       	rjmp	.+2      	; 0x1b1e <eep_initvalue+0x186>
    1b1c:	a8 95       	wdr
    1b1e:	f9 99       	sbic	0x1f, 1	; 31
    1b20:	fd cf       	rjmp	.-6      	; 0x1b1c <eep_initvalue+0x184>
    1b22:	80 ec       	ldi	r24, 0xC0	; 192
    1b24:	90 e0       	ldi	r25, 0x00	; 0
    1b26:	4f ef       	ldi	r20, 0xFF	; 255
    1b28:	51 e0       	ldi	r21, 0x01	; 1
    1b2a:	68 ea       	ldi	r22, 0xA8	; 168
    1b2c:	70 ec       	ldi	r23, 0xC0	; 192
    1b2e:	0e 94 be 6e 	call	0xdd7c	; 0xdd7c <__eewr_dword_m644a>
    1b32:	01 c0       	rjmp	.+2      	; 0x1b36 <eep_initvalue+0x19e>
    1b34:	a8 95       	wdr
    1b36:	f9 99       	sbic	0x1f, 1	; 31
    1b38:	fd cf       	rjmp	.-6      	; 0x1b34 <eep_initvalue+0x19c>
    1b3a:	84 ec       	ldi	r24, 0xC4	; 196
    1b3c:	90 e0       	ldi	r25, 0x00	; 0
    1b3e:	60 e0       	ldi	r22, 0x00	; 0
    1b40:	70 e0       	ldi	r23, 0x00	; 0
    1b42:	0e 94 c6 6e 	call	0xdd8c	; 0xdd8c <__eewr_word_m644a>
    1b46:	01 c0       	rjmp	.+2      	; 0x1b4a <eep_initvalue+0x1b2>
    1b48:	a8 95       	wdr
    1b4a:	f9 99       	sbic	0x1f, 1	; 31
    1b4c:	fd cf       	rjmp	.-6      	; 0x1b48 <eep_initvalue+0x1b0>
    1b4e:	86 ec       	ldi	r24, 0xC6	; 198
    1b50:	90 e0       	ldi	r25, 0x00	; 0
    1b52:	60 ed       	ldi	r22, 0xD0	; 208
    1b54:	77 e0       	ldi	r23, 0x07	; 7
    1b56:	0e 94 c6 6e 	call	0xdd8c	; 0xdd8c <__eewr_word_m644a>
    1b5a:	01 c0       	rjmp	.+2      	; 0x1b5e <eep_initvalue+0x1c6>
    1b5c:	a8 95       	wdr
    1b5e:	f9 99       	sbic	0x1f, 1	; 31
    1b60:	fd cf       	rjmp	.-6      	; 0x1b5c <eep_initvalue+0x1c4>
    1b62:	88 ec       	ldi	r24, 0xC8	; 200
    1b64:	90 e0       	ldi	r25, 0x00	; 0
    1b66:	68 e8       	ldi	r22, 0x88	; 136
    1b68:	73 e1       	ldi	r23, 0x13	; 19
    1b6a:	0e 94 c6 6e 	call	0xdd8c	; 0xdd8c <__eewr_word_m644a>
    1b6e:	01 c0       	rjmp	.+2      	; 0x1b72 <eep_initvalue+0x1da>
    1b70:	a8 95       	wdr
    1b72:	f9 99       	sbic	0x1f, 1	; 31
    1b74:	fd cf       	rjmp	.-6      	; 0x1b70 <eep_initvalue+0x1d8>
    1b76:	8a ec       	ldi	r24, 0xCA	; 202
    1b78:	90 e0       	ldi	r25, 0x00	; 0
    1b7a:	60 e0       	ldi	r22, 0x00	; 0
    1b7c:	7a e0       	ldi	r23, 0x0A	; 10
    1b7e:	0e 94 c6 6e 	call	0xdd8c	; 0xdd8c <__eewr_word_m644a>
    1b82:	01 c0       	rjmp	.+2      	; 0x1b86 <eep_initvalue+0x1ee>
    1b84:	a8 95       	wdr
    1b86:	f9 99       	sbic	0x1f, 1	; 31
    1b88:	fd cf       	rjmp	.-6      	; 0x1b84 <eep_initvalue+0x1ec>
    1b8a:	8e ec       	ldi	r24, 0xCE	; 206
    1b8c:	90 e0       	ldi	r25, 0x00	; 0
    1b8e:	60 e8       	ldi	r22, 0x80	; 128
    1b90:	70 e0       	ldi	r23, 0x00	; 0
    1b92:	0e 94 c6 6e 	call	0xdd8c	; 0xdd8c <__eewr_word_m644a>
    1b96:	01 c0       	rjmp	.+2      	; 0x1b9a <eep_initvalue+0x202>
    1b98:	a8 95       	wdr
    1b9a:	f9 99       	sbic	0x1f, 1	; 31
    1b9c:	fd cf       	rjmp	.-6      	; 0x1b98 <eep_initvalue+0x200>
    1b9e:	80 ed       	ldi	r24, 0xD0	; 208
    1ba0:	90 e0       	ldi	r25, 0x00	; 0
    1ba2:	60 e0       	ldi	r22, 0x00	; 0
    1ba4:	70 e0       	ldi	r23, 0x00	; 0
    1ba6:	0e 94 c6 6e 	call	0xdd8c	; 0xdd8c <__eewr_word_m644a>
    1baa:	01 c0       	rjmp	.+2      	; 0x1bae <eep_initvalue+0x216>
    1bac:	a8 95       	wdr
    1bae:	f9 99       	sbic	0x1f, 1	; 31
    1bb0:	fd cf       	rjmp	.-6      	; 0x1bac <eep_initvalue+0x214>
    1bb2:	82 ed       	ldi	r24, 0xD2	; 210
    1bb4:	90 e0       	ldi	r25, 0x00	; 0
    1bb6:	60 e0       	ldi	r22, 0x00	; 0
    1bb8:	70 e0       	ldi	r23, 0x00	; 0
    1bba:	0e 94 c6 6e 	call	0xdd8c	; 0xdd8c <__eewr_word_m644a>
    1bbe:	01 c0       	rjmp	.+2      	; 0x1bc2 <eep_initvalue+0x22a>
    1bc0:	a8 95       	wdr
    1bc2:	f9 99       	sbic	0x1f, 1	; 31
    1bc4:	fd cf       	rjmp	.-6      	; 0x1bc0 <eep_initvalue+0x228>
    1bc6:	84 ed       	ldi	r24, 0xD4	; 212
    1bc8:	90 e0       	ldi	r25, 0x00	; 0
    1bca:	6c e3       	ldi	r22, 0x3C	; 60
    1bcc:	70 e0       	ldi	r23, 0x00	; 0
    1bce:	0e 94 c6 6e 	call	0xdd8c	; 0xdd8c <__eewr_word_m644a>
    1bd2:	01 c0       	rjmp	.+2      	; 0x1bd6 <eep_initvalue+0x23e>
    1bd4:	a8 95       	wdr
    1bd6:	f9 99       	sbic	0x1f, 1	; 31
    1bd8:	fd cf       	rjmp	.-6      	; 0x1bd4 <eep_initvalue+0x23c>
    1bda:	86 ed       	ldi	r24, 0xD6	; 214
    1bdc:	90 e0       	ldi	r25, 0x00	; 0
    1bde:	64 e8       	ldi	r22, 0x84	; 132
    1be0:	73 e0       	ldi	r23, 0x03	; 3
    1be2:	0e 94 c6 6e 	call	0xdd8c	; 0xdd8c <__eewr_word_m644a>
    1be6:	01 c0       	rjmp	.+2      	; 0x1bea <eep_initvalue+0x252>
    1be8:	a8 95       	wdr
    1bea:	f9 99       	sbic	0x1f, 1	; 31
    1bec:	fd cf       	rjmp	.-6      	; 0x1be8 <eep_initvalue+0x250>
    1bee:	80 ee       	ldi	r24, 0xE0	; 224
    1bf0:	90 e0       	ldi	r25, 0x00	; 0
    1bf2:	40 e0       	ldi	r20, 0x00	; 0
    1bf4:	50 e0       	ldi	r21, 0x00	; 0
    1bf6:	60 e0       	ldi	r22, 0x00	; 0
    1bf8:	70 e0       	ldi	r23, 0x00	; 0
    1bfa:	0e 94 be 6e 	call	0xdd7c	; 0xdd7c <__eewr_dword_m644a>
    1bfe:	01 c0       	rjmp	.+2      	; 0x1c02 <eep_initvalue+0x26a>
    1c00:	a8 95       	wdr
    1c02:	f9 99       	sbic	0x1f, 1	; 31
    1c04:	fd cf       	rjmp	.-6      	; 0x1c00 <eep_initvalue+0x268>
    1c06:	84 ee       	ldi	r24, 0xE4	; 228
    1c08:	90 e0       	ldi	r25, 0x00	; 0
    1c0a:	40 e0       	ldi	r20, 0x00	; 0
    1c0c:	50 e0       	ldi	r21, 0x00	; 0
    1c0e:	60 e0       	ldi	r22, 0x00	; 0
    1c10:	70 e0       	ldi	r23, 0x00	; 0
    1c12:	0e 94 be 6e 	call	0xdd7c	; 0xdd7c <__eewr_dword_m644a>
    1c16:	01 c0       	rjmp	.+2      	; 0x1c1a <eep_initvalue+0x282>
    1c18:	a8 95       	wdr
    1c1a:	f9 99       	sbic	0x1f, 1	; 31
    1c1c:	fd cf       	rjmp	.-6      	; 0x1c18 <eep_initvalue+0x280>
    1c1e:	8e e3       	ldi	r24, 0x3E	; 62
    1c20:	90 e0       	ldi	r25, 0x00	; 0
    1c22:	65 ea       	ldi	r22, 0xA5	; 165
    1c24:	73 ec       	ldi	r23, 0xC3	; 195
    1c26:	0e 94 c6 6e 	call	0xdd8c	; 0xdd8c <__eewr_word_m644a>
    1c2a:	a0 96       	adiw	r28, 0x20	; 32
    1c2c:	e4 e0       	ldi	r30, 0x04	; 4
    1c2e:	0c 94 73 6d 	jmp	0xdae6	; 0xdae6 <__epilogue_restores__+0x1c>

00001c32 <eep_initread>:
    1c32:	cf 93       	push	r28
    1c34:	df 93       	push	r29
    1c36:	01 c0       	rjmp	.+2      	; 0x1c3a <eep_initread+0x8>
    1c38:	a8 95       	wdr
    1c3a:	f9 99       	sbic	0x1f, 1	; 31
    1c3c:	fd cf       	rjmp	.-6      	; 0x1c38 <eep_initread+0x6>
    1c3e:	8c e8       	ldi	r24, 0x8C	; 140
    1c40:	94 e0       	ldi	r25, 0x04	; 4
    1c42:	60 e0       	ldi	r22, 0x00	; 0
    1c44:	70 e0       	ldi	r23, 0x00	; 0
    1c46:	46 e0       	ldi	r20, 0x06	; 6
    1c48:	50 e0       	ldi	r21, 0x00	; 0
    1c4a:	0e 94 56 6e 	call	0xdcac	; 0xdcac <__eerd_block_m644a>
    1c4e:	80 91 8c 04 	lds	r24, 0x048C
    1c52:	8f 3f       	cpi	r24, 0xFF	; 255
    1c54:	41 f4       	brne	.+16     	; 0x1c66 <eep_initread+0x34>
    1c56:	8c e8       	ldi	r24, 0x8C	; 140
    1c58:	94 e0       	ldi	r25, 0x04	; 4
    1c5a:	66 e0       	ldi	r22, 0x06	; 6
    1c5c:	71 e0       	ldi	r23, 0x01	; 1
    1c5e:	46 e0       	ldi	r20, 0x06	; 6
    1c60:	50 e0       	ldi	r21, 0x00	; 0
    1c62:	0e 94 9c 6d 	call	0xdb38	; 0xdb38 <memcpy_P>
    1c66:	83 b1       	in	r24, 0x03	; 3
    1c68:	80 95       	com	r24
    1c6a:	8f 70       	andi	r24, 0x0F	; 15
    1c6c:	83 ff       	sbrs	r24, 3
    1c6e:	5e c0       	rjmp	.+188    	; 0x1d2c <eep_initread+0xfa>
    1c70:	89 30       	cpi	r24, 0x09	; 9
    1c72:	b1 f4       	brne	.+44     	; 0x1ca0 <eep_initread+0x6e>
    1c74:	10 92 3a 08 	sts	0x083A, r1
    1c78:	01 c0       	rjmp	.+2      	; 0x1c7c <eep_initread+0x4a>
    1c7a:	a8 95       	wdr
    1c7c:	f9 99       	sbic	0x1f, 1	; 31
    1c7e:	fd cf       	rjmp	.-6      	; 0x1c7a <eep_initread+0x48>
    1c80:	8c e0       	ldi	r24, 0x0C	; 12
    1c82:	90 e0       	ldi	r25, 0x00	; 0
    1c84:	0e 94 6c 6e 	call	0xdcd8	; 0xdcd8 <__eerd_word_m644a>
    1c88:	bc 01       	movw	r22, r24
    1c8a:	01 c0       	rjmp	.+2      	; 0x1c8e <eep_initread+0x5c>
    1c8c:	a8 95       	wdr
    1c8e:	f9 99       	sbic	0x1f, 1	; 31
    1c90:	fd cf       	rjmp	.-6      	; 0x1c8c <eep_initread+0x5a>
    1c92:	7f 77       	andi	r23, 0x7F	; 127
    1c94:	8c e0       	ldi	r24, 0x0C	; 12
    1c96:	90 e0       	ldi	r25, 0x00	; 0
    1c98:	0e 94 a0 6e 	call	0xdd40	; 0xdd40 <__eeupd_word_m644a>
    1c9c:	87 e0       	ldi	r24, 0x07	; 7
    1c9e:	18 c0       	rjmp	.+48     	; 0x1cd0 <eep_initread+0x9e>
    1ca0:	8a 30       	cpi	r24, 0x0A	; 10
    1ca2:	c9 f4       	brne	.+50     	; 0x1cd6 <eep_initread+0xa4>
    1ca4:	84 e1       	ldi	r24, 0x14	; 20
    1ca6:	80 93 3a 08 	sts	0x083A, r24
    1caa:	01 c0       	rjmp	.+2      	; 0x1cae <eep_initread+0x7c>
    1cac:	a8 95       	wdr
    1cae:	f9 99       	sbic	0x1f, 1	; 31
    1cb0:	fd cf       	rjmp	.-6      	; 0x1cac <eep_initread+0x7a>
    1cb2:	8c e0       	ldi	r24, 0x0C	; 12
    1cb4:	90 e0       	ldi	r25, 0x00	; 0
    1cb6:	0e 94 6c 6e 	call	0xdcd8	; 0xdcd8 <__eerd_word_m644a>
    1cba:	bc 01       	movw	r22, r24
    1cbc:	01 c0       	rjmp	.+2      	; 0x1cc0 <eep_initread+0x8e>
    1cbe:	a8 95       	wdr
    1cc0:	f9 99       	sbic	0x1f, 1	; 31
    1cc2:	fd cf       	rjmp	.-6      	; 0x1cbe <eep_initread+0x8c>
    1cc4:	70 68       	ori	r23, 0x80	; 128
    1cc6:	8c e0       	ldi	r24, 0x0C	; 12
    1cc8:	90 e0       	ldi	r25, 0x00	; 0
    1cca:	0e 94 a0 6e 	call	0xdd40	; 0xdd40 <__eeupd_word_m644a>
    1cce:	88 e0       	ldi	r24, 0x08	; 8
    1cd0:	0e 94 9b 4f 	call	0x9f36	; 0x9f36 <disp_message1>
    1cd4:	1e c0       	rjmp	.+60     	; 0x1d12 <eep_initread+0xe0>
    1cd6:	8c 30       	cpi	r24, 0x0C	; 12
    1cd8:	11 f0       	breq	.+4      	; 0x1cde <eep_initread+0xac>
    1cda:	20 c0       	rjmp	.+64     	; 0x1d1c <eep_initread+0xea>
    1cdc:	a8 95       	wdr
    1cde:	f9 99       	sbic	0x1f, 1	; 31
    1ce0:	fd cf       	rjmp	.-6      	; 0x1cdc <eep_initread+0xaa>
    1ce2:	8a ec       	ldi	r24, 0xCA	; 202
    1ce4:	90 e0       	ldi	r25, 0x00	; 0
    1ce6:	0e 94 6c 6e 	call	0xdcd8	; 0xdcd8 <__eerd_word_m644a>
    1cea:	80 ff       	sbrs	r24, 0
    1cec:	04 c0       	rjmp	.+8      	; 0x1cf6 <eep_initread+0xc4>
    1cee:	ec 01       	movw	r28, r24
    1cf0:	ce 7f       	andi	r28, 0xFE	; 254
    1cf2:	8a e0       	ldi	r24, 0x0A	; 10
    1cf4:	03 c0       	rjmp	.+6      	; 0x1cfc <eep_initread+0xca>
    1cf6:	ec 01       	movw	r28, r24
    1cf8:	c1 60       	ori	r28, 0x01	; 1
    1cfa:	89 e0       	ldi	r24, 0x09	; 9
    1cfc:	0e 94 9b 4f 	call	0x9f36	; 0x9f36 <disp_message1>
    1d00:	01 c0       	rjmp	.+2      	; 0x1d04 <eep_initread+0xd2>
    1d02:	a8 95       	wdr
    1d04:	f9 99       	sbic	0x1f, 1	; 31
    1d06:	fd cf       	rjmp	.-6      	; 0x1d02 <eep_initread+0xd0>
    1d08:	8a ec       	ldi	r24, 0xCA	; 202
    1d0a:	90 e0       	ldi	r25, 0x00	; 0
    1d0c:	be 01       	movw	r22, r28
    1d0e:	0e 94 a0 6e 	call	0xdd40	; 0xdd40 <__eeupd_word_m644a>
    1d12:	88 ee       	ldi	r24, 0xE8	; 232
    1d14:	93 e0       	ldi	r25, 0x03	; 3
    1d16:	0e 94 ce 1f 	call	0x3f9c	; 0x3f9c <waitms>
    1d1a:	17 c0       	rjmp	.+46     	; 0x1d4a <eep_initread+0x118>
    1d1c:	84 e0       	ldi	r24, 0x04	; 4
    1d1e:	0e 94 9b 4f 	call	0x9f36	; 0x9f36 <disp_message1>
    1d22:	81 e0       	ldi	r24, 0x01	; 1
    1d24:	0e 94 8e 4f 	call	0x9f1c	; 0x9f1c <disp_message2>
    1d28:	a8 95       	wdr
    1d2a:	fe cf       	rjmp	.-4      	; 0x1d28 <eep_initread+0xf6>
    1d2c:	87 30       	cpi	r24, 0x07	; 7
    1d2e:	69 f4       	brne	.+26     	; 0x1d4a <eep_initread+0x118>
    1d30:	0e 94 cc 0c 	call	0x1998	; 0x1998 <eep_initvalue>
    1d34:	0e 94 a0 1e 	call	0x3d40	; 0x3d40 <lcd_cls>
    1d38:	83 e0       	ldi	r24, 0x03	; 3
    1d3a:	0e 94 9b 4f 	call	0x9f36	; 0x9f36 <disp_message1>
    1d3e:	82 e0       	ldi	r24, 0x02	; 2
    1d40:	0e 94 8e 4f 	call	0x9f1c	; 0x9f1c <disp_message2>
    1d44:	a8 95       	wdr
    1d46:	fe cf       	rjmp	.-4      	; 0x1d44 <eep_initread+0x112>
    1d48:	a8 95       	wdr
    1d4a:	f9 99       	sbic	0x1f, 1	; 31
    1d4c:	fd cf       	rjmp	.-6      	; 0x1d48 <eep_initread+0x116>
    1d4e:	8e e3       	ldi	r24, 0x3E	; 62
    1d50:	90 e0       	ldi	r25, 0x00	; 0
    1d52:	0e 94 6c 6e 	call	0xdcd8	; 0xdcd8 <__eerd_word_m644a>
    1d56:	85 5a       	subi	r24, 0xA5	; 165
    1d58:	93 4c       	sbci	r25, 0xC3	; 195
    1d5a:	21 f0       	breq	.+8      	; 0x1d64 <eep_initread+0x132>
    1d5c:	0e 94 cc 0c 	call	0x1998	; 0x1998 <eep_initvalue>
    1d60:	01 c0       	rjmp	.+2      	; 0x1d64 <eep_initread+0x132>
    1d62:	a8 95       	wdr
    1d64:	f9 99       	sbic	0x1f, 1	; 31
    1d66:	fd cf       	rjmp	.-6      	; 0x1d62 <eep_initread+0x130>
    1d68:	86 e0       	ldi	r24, 0x06	; 6
    1d6a:	90 e0       	ldi	r25, 0x00	; 0
    1d6c:	0e 94 6c 6e 	call	0xdcd8	; 0xdcd8 <__eerd_word_m644a>
    1d70:	90 93 05 01 	sts	0x0105, r25
    1d74:	80 93 04 01 	sts	0x0104, r24
    1d78:	01 97       	sbiw	r24, 0x01	; 1
    1d7a:	8e 5f       	subi	r24, 0xFE	; 254
    1d7c:	9f 4f       	sbci	r25, 0xFF	; 255
    1d7e:	40 f0       	brcs	.+16     	; 0x1d90 <eep_initread+0x15e>
    1d80:	80 ed       	ldi	r24, 0xD0	; 208
    1d82:	97 e0       	ldi	r25, 0x07	; 7
    1d84:	90 93 05 01 	sts	0x0105, r25
    1d88:	80 93 04 01 	sts	0x0104, r24
    1d8c:	01 c0       	rjmp	.+2      	; 0x1d90 <eep_initread+0x15e>
    1d8e:	a8 95       	wdr
    1d90:	f9 99       	sbic	0x1f, 1	; 31
    1d92:	fd cf       	rjmp	.-6      	; 0x1d8e <eep_initread+0x15c>
    1d94:	8e e0       	ldi	r24, 0x0E	; 14
    1d96:	90 e0       	ldi	r25, 0x00	; 0
    1d98:	0e 94 6c 6e 	call	0xdcd8	; 0xdcd8 <__eerd_word_m644a>
    1d9c:	90 93 45 05 	sts	0x0545, r25
    1da0:	80 93 44 05 	sts	0x0544, r24
    1da4:	01 97       	sbiw	r24, 0x01	; 1
    1da6:	8e 5f       	subi	r24, 0xFE	; 254
    1da8:	9f 4f       	sbci	r25, 0xFF	; 255
    1daa:	40 f0       	brcs	.+16     	; 0x1dbc <eep_initread+0x18a>
    1dac:	80 e5       	ldi	r24, 0x50	; 80
    1dae:	90 e0       	ldi	r25, 0x00	; 0
    1db0:	90 93 45 05 	sts	0x0545, r25
    1db4:	80 93 44 05 	sts	0x0544, r24
    1db8:	01 c0       	rjmp	.+2      	; 0x1dbc <eep_initread+0x18a>
    1dba:	a8 95       	wdr
    1dbc:	f9 99       	sbic	0x1f, 1	; 31
    1dbe:	fd cf       	rjmp	.-6      	; 0x1dba <eep_initread+0x188>
    1dc0:	8c e0       	ldi	r24, 0x0C	; 12
    1dc2:	90 e0       	ldi	r25, 0x00	; 0
    1dc4:	0e 94 6c 6e 	call	0xdcd8	; 0xdcd8 <__eerd_word_m644a>
    1dc8:	9c 01       	movw	r18, r24
    1dca:	9f 77       	andi	r25, 0x7F	; 127
    1dcc:	90 93 38 08 	sts	0x0838, r25
    1dd0:	80 93 37 08 	sts	0x0837, r24
    1dd4:	c9 01       	movw	r24, r18
    1dd6:	01 97       	sbiw	r24, 0x01	; 1
    1dd8:	8e 5f       	subi	r24, 0xFE	; 254
    1dda:	9f 4f       	sbci	r25, 0xFF	; 255
    1ddc:	50 f0       	brcs	.+20     	; 0x1df2 <eep_initread+0x1c0>
    1dde:	84 e1       	ldi	r24, 0x14	; 20
    1de0:	80 93 3a 08 	sts	0x083A, r24
    1de4:	8c e3       	ldi	r24, 0x3C	; 60
    1de6:	90 e0       	ldi	r25, 0x00	; 0
    1de8:	90 93 38 08 	sts	0x0838, r25
    1dec:	80 93 37 08 	sts	0x0837, r24
    1df0:	0d c0       	rjmp	.+26     	; 0x1e0c <eep_initread+0x1da>
    1df2:	37 ff       	sbrs	r19, 7
    1df4:	15 c0       	rjmp	.+42     	; 0x1e20 <eep_initread+0x1ee>
    1df6:	80 91 e0 09 	lds	r24, 0x09E0
    1dfa:	90 91 e1 09 	lds	r25, 0x09E1
    1dfe:	01 97       	sbiw	r24, 0x01	; 1
    1e00:	11 f0       	breq	.+4      	; 0x1e06 <eep_initread+0x1d4>
    1e02:	84 e1       	ldi	r24, 0x14	; 20
    1e04:	01 c0       	rjmp	.+2      	; 0x1e08 <eep_initread+0x1d6>
    1e06:	85 e1       	ldi	r24, 0x15	; 21
    1e08:	80 93 3a 08 	sts	0x083A, r24
    1e0c:	80 91 cc 09 	lds	r24, 0x09CC
    1e10:	90 91 cd 09 	lds	r25, 0x09CD
    1e14:	98 60       	ori	r25, 0x08	; 8
    1e16:	90 93 cd 09 	sts	0x09CD, r25
    1e1a:	80 93 cc 09 	sts	0x09CC, r24
    1e1e:	02 c0       	rjmp	.+4      	; 0x1e24 <eep_initread+0x1f2>
    1e20:	10 92 3a 08 	sts	0x083A, r1
    1e24:	80 91 3a 08 	lds	r24, 0x083A
    1e28:	88 23       	and	r24, r24
    1e2a:	09 f0       	breq	.+2      	; 0x1e2e <eep_initread+0x1fc>
    1e2c:	40 c0       	rjmp	.+128    	; 0x1eae <eep_initread+0x27c>
    1e2e:	80 e2       	ldi	r24, 0x20	; 32
    1e30:	90 e0       	ldi	r25, 0x00	; 0
    1e32:	46 e6       	ldi	r20, 0x66	; 102
    1e34:	51 e0       	ldi	r21, 0x01	; 1
    1e36:	68 ea       	ldi	r22, 0xA8	; 168
    1e38:	70 ec       	ldi	r23, 0xC0	; 192
    1e3a:	0e 94 06 21 	call	0x420c	; 0x420c <eep_getipaddr>
    1e3e:	60 93 0b 05 	sts	0x050B, r22
    1e42:	70 93 0c 05 	sts	0x050C, r23
    1e46:	80 93 0d 05 	sts	0x050D, r24
    1e4a:	90 93 0e 05 	sts	0x050E, r25
    1e4e:	84 e2       	ldi	r24, 0x24	; 36
    1e50:	90 e0       	ldi	r25, 0x00	; 0
    1e52:	40 e0       	ldi	r20, 0x00	; 0
    1e54:	5f ef       	ldi	r21, 0xFF	; 255
    1e56:	6f ef       	ldi	r22, 0xFF	; 255
    1e58:	7f ef       	ldi	r23, 0xFF	; 255
    1e5a:	0e 94 06 21 	call	0x420c	; 0x420c <eep_getipaddr>
    1e5e:	60 93 0f 05 	sts	0x050F, r22
    1e62:	70 93 10 05 	sts	0x0510, r23
    1e66:	80 93 11 05 	sts	0x0511, r24
    1e6a:	90 93 12 05 	sts	0x0512, r25
    1e6e:	88 e2       	ldi	r24, 0x28	; 40
    1e70:	90 e0       	ldi	r25, 0x00	; 0
    1e72:	41 e0       	ldi	r20, 0x01	; 1
    1e74:	51 e0       	ldi	r21, 0x01	; 1
    1e76:	68 ea       	ldi	r22, 0xA8	; 168
    1e78:	70 ec       	ldi	r23, 0xC0	; 192
    1e7a:	0e 94 06 21 	call	0x420c	; 0x420c <eep_getipaddr>
    1e7e:	60 93 13 05 	sts	0x0513, r22
    1e82:	70 93 14 05 	sts	0x0514, r23
    1e86:	80 93 15 05 	sts	0x0515, r24
    1e8a:	90 93 16 05 	sts	0x0516, r25
    1e8e:	8c e2       	ldi	r24, 0x2C	; 44
    1e90:	90 e0       	ldi	r25, 0x00	; 0
    1e92:	41 e0       	ldi	r20, 0x01	; 1
    1e94:	51 e0       	ldi	r21, 0x01	; 1
    1e96:	68 ea       	ldi	r22, 0xA8	; 168
    1e98:	70 ec       	ldi	r23, 0xC0	; 192
    1e9a:	0e 94 06 21 	call	0x420c	; 0x420c <eep_getipaddr>
    1e9e:	60 93 c3 09 	sts	0x09C3, r22
    1ea2:	70 93 c4 09 	sts	0x09C4, r23
    1ea6:	80 93 c5 09 	sts	0x09C5, r24
    1eaa:	90 93 c6 09 	sts	0x09C6, r25
    1eae:	80 e1       	ldi	r24, 0x10	; 16
    1eb0:	90 e0       	ldi	r25, 0x00	; 0
    1eb2:	63 eb       	ldi	r22, 0xB3	; 179
    1eb4:	79 e0       	ldi	r23, 0x09	; 9
    1eb6:	4c e0       	ldi	r20, 0x0C	; 12
    1eb8:	51 e0       	ldi	r21, 0x01	; 1
    1eba:	0e 94 e3 20 	call	0x41c6	; 0x41c6 <eep_getstring16>
    1ebe:	8a e3       	ldi	r24, 0x3A	; 58
    1ec0:	90 e0       	ldi	r25, 0x00	; 0
    1ec2:	0e 94 6c 6e 	call	0xdcd8	; 0xdcd8 <__eerd_word_m644a>
    1ec6:	80 93 1c 01 	sts	0x011C, r24
    1eca:	8c 31       	cpi	r24, 0x1C	; 28
    1ecc:	18 f0       	brcs	.+6      	; 0x1ed4 <eep_initread+0x2a2>
    1ece:	85 ea       	ldi	r24, 0xA5	; 165
    1ed0:	80 93 1c 01 	sts	0x011C, r24
    1ed4:	80 ed       	ldi	r24, 0xD0	; 208
    1ed6:	90 e0       	ldi	r25, 0x00	; 0
    1ed8:	0e 94 6c 6e 	call	0xdcd8	; 0xdcd8 <__eerd_word_m644a>
    1edc:	49 2f       	mov	r20, r25
    1ede:	80 93 cb 09 	sts	0x09CB, r24
    1ee2:	84 30       	cpi	r24, 0x04	; 4
    1ee4:	10 f0       	brcs	.+4      	; 0x1eea <eep_initread+0x2b8>
    1ee6:	10 92 cb 09 	sts	0x09CB, r1
    1eea:	80 91 c9 09 	lds	r24, 0x09C9
    1eee:	82 30       	cpi	r24, 0x02	; 2
    1ef0:	a9 f5       	brne	.+106    	; 0x1f5c <eep_initread+0x32a>
    1ef2:	80 91 cb 09 	lds	r24, 0x09CB
    1ef6:	90 e0       	ldi	r25, 0x00	; 0
    1ef8:	05 96       	adiw	r24, 0x05	; 5
    1efa:	21 e0       	ldi	r18, 0x01	; 1
    1efc:	30 e0       	ldi	r19, 0x00	; 0
    1efe:	02 c0       	rjmp	.+4      	; 0x1f04 <eep_initread+0x2d2>
    1f00:	22 0f       	add	r18, r18
    1f02:	33 1f       	adc	r19, r19
    1f04:	8a 95       	dec	r24
    1f06:	e2 f7       	brpl	.-8      	; 0x1f00 <eep_initread+0x2ce>
    1f08:	80 91 cc 09 	lds	r24, 0x09CC
    1f0c:	90 91 cd 09 	lds	r25, 0x09CD
    1f10:	82 2b       	or	r24, r18
    1f12:	93 2b       	or	r25, r19
    1f14:	90 93 cd 09 	sts	0x09CD, r25
    1f18:	80 93 cc 09 	sts	0x09CC, r24
    1f1c:	40 93 ca 09 	sts	0x09CA, r20
    1f20:	43 30       	cpi	r20, 0x03	; 3
    1f22:	10 f0       	brcs	.+4      	; 0x1f28 <eep_initread+0x2f6>
    1f24:	10 92 ca 09 	sts	0x09CA, r1
    1f28:	20 91 c9 09 	lds	r18, 0x09C9
    1f2c:	80 91 ca 09 	lds	r24, 0x09CA
    1f30:	28 0f       	add	r18, r24
    1f32:	20 93 c9 09 	sts	0x09C9, r18
    1f36:	90 e0       	ldi	r25, 0x00	; 0
    1f38:	02 96       	adiw	r24, 0x02	; 2
    1f3a:	21 e0       	ldi	r18, 0x01	; 1
    1f3c:	30 e0       	ldi	r19, 0x00	; 0
    1f3e:	02 c0       	rjmp	.+4      	; 0x1f44 <eep_initread+0x312>
    1f40:	22 0f       	add	r18, r18
    1f42:	33 1f       	adc	r19, r19
    1f44:	8a 95       	dec	r24
    1f46:	e2 f7       	brpl	.-8      	; 0x1f40 <eep_initread+0x30e>
    1f48:	80 91 cc 09 	lds	r24, 0x09CC
    1f4c:	90 91 cd 09 	lds	r25, 0x09CD
    1f50:	82 2b       	or	r24, r18
    1f52:	93 2b       	or	r25, r19
    1f54:	90 93 cd 09 	sts	0x09CD, r25
    1f58:	80 93 cc 09 	sts	0x09CC, r24
    1f5c:	84 ed       	ldi	r24, 0xD4	; 212
    1f5e:	90 e0       	ldi	r25, 0x00	; 0
    1f60:	0e 94 6c 6e 	call	0xdcd8	; 0xdcd8 <__eerd_word_m644a>
    1f64:	9c 01       	movw	r18, r24
    1f66:	01 97       	sbiw	r24, 0x01	; 1
    1f68:	8e 5f       	subi	r24, 0xFE	; 254
    1f6a:	9f 4f       	sbci	r25, 0xFF	; 255
    1f6c:	10 f0       	brcs	.+4      	; 0x1f72 <eep_initread+0x340>
    1f6e:	2c e3       	ldi	r18, 0x3C	; 60
    1f70:	30 e0       	ldi	r19, 0x00	; 0
    1f72:	30 93 d1 09 	sts	0x09D1, r19
    1f76:	20 93 d0 09 	sts	0x09D0, r18
    1f7a:	86 ed       	ldi	r24, 0xD6	; 214
    1f7c:	90 e0       	ldi	r25, 0x00	; 0
    1f7e:	0e 94 6c 6e 	call	0xdcd8	; 0xdcd8 <__eerd_word_m644a>
    1f82:	9c 01       	movw	r18, r24
    1f84:	01 97       	sbiw	r24, 0x01	; 1
    1f86:	8e 5f       	subi	r24, 0xFE	; 254
    1f88:	9f 4f       	sbci	r25, 0xFF	; 255
    1f8a:	10 f0       	brcs	.+4      	; 0x1f90 <eep_initread+0x35e>
    1f8c:	24 e8       	ldi	r18, 0x84	; 132
    1f8e:	33 e0       	ldi	r19, 0x03	; 3
    1f90:	30 93 d3 09 	sts	0x09D3, r19
    1f94:	20 93 d2 09 	sts	0x09D2, r18
    1f98:	82 ed       	ldi	r24, 0xD2	; 210
    1f9a:	90 e0       	ldi	r25, 0x00	; 0
    1f9c:	0e 94 6c 6e 	call	0xdcd8	; 0xdcd8 <__eerd_word_m644a>
    1fa0:	9c 01       	movw	r18, r24
    1fa2:	8f ef       	ldi	r24, 0xFF	; 255
    1fa4:	2f 3f       	cpi	r18, 0xFF	; 255
    1fa6:	38 07       	cpc	r19, r24
    1fa8:	69 f4       	brne	.+26     	; 0x1fc4 <eep_initread+0x392>
    1faa:	10 92 d7 09 	sts	0x09D7, r1
    1fae:	10 92 d6 09 	sts	0x09D6, r1
    1fb2:	10 92 db 09 	sts	0x09DB, r1
    1fb6:	10 92 da 09 	sts	0x09DA, r1
    1fba:	10 92 dd 09 	sts	0x09DD, r1
    1fbe:	10 92 dc 09 	sts	0x09DC, r1
    1fc2:	18 c0       	rjmp	.+48     	; 0x1ff4 <eep_initread+0x3c2>
    1fc4:	c9 01       	movw	r24, r18
    1fc6:	81 70       	andi	r24, 0x01	; 1
    1fc8:	90 70       	andi	r25, 0x00	; 0
    1fca:	90 93 d7 09 	sts	0x09D7, r25
    1fce:	80 93 d6 09 	sts	0x09D6, r24
    1fd2:	83 2f       	mov	r24, r19
    1fd4:	99 27       	eor	r25, r25
    1fd6:	81 70       	andi	r24, 0x01	; 1
    1fd8:	90 70       	andi	r25, 0x00	; 0
    1fda:	90 93 db 09 	sts	0x09DB, r25
    1fde:	80 93 da 09 	sts	0x09DA, r24
    1fe2:	23 2f       	mov	r18, r19
    1fe4:	33 27       	eor	r19, r19
    1fe6:	26 95       	lsr	r18
    1fe8:	21 70       	andi	r18, 0x01	; 1
    1fea:	30 70       	andi	r19, 0x00	; 0
    1fec:	30 93 dd 09 	sts	0x09DD, r19
    1ff0:	20 93 dc 09 	sts	0x09DC, r18
    1ff4:	80 e4       	ldi	r24, 0x40	; 64
    1ff6:	90 e0       	ldi	r25, 0x00	; 0
    1ff8:	62 e5       	ldi	r22, 0x52	; 82
    1ffa:	77 e0       	ldi	r23, 0x07	; 7
    1ffc:	4c e1       	ldi	r20, 0x1C	; 28
    1ffe:	51 e0       	ldi	r21, 0x01	; 1
    2000:	0e 94 c0 20 	call	0x4180	; 0x4180 <eep_getstring32>
    2004:	80 e6       	ldi	r24, 0x60	; 96
    2006:	90 e0       	ldi	r25, 0x00	; 0
    2008:	62 e7       	ldi	r22, 0x72	; 114
    200a:	77 e0       	ldi	r23, 0x07	; 7
    200c:	41 e3       	ldi	r20, 0x31	; 49
    200e:	51 e0       	ldi	r21, 0x01	; 1
    2010:	0e 94 c0 20 	call	0x4180	; 0x4180 <eep_getstring32>
    2014:	80 e8       	ldi	r24, 0x80	; 128
    2016:	90 e0       	ldi	r25, 0x00	; 0
    2018:	62 e9       	ldi	r22, 0x92	; 146
    201a:	77 e0       	ldi	r23, 0x07	; 7
    201c:	46 e4       	ldi	r20, 0x46	; 70
    201e:	51 e0       	ldi	r21, 0x01	; 1
    2020:	0e 94 c0 20 	call	0x4180	; 0x4180 <eep_getstring32>
    2024:	80 ea       	ldi	r24, 0xA0	; 160
    2026:	90 e0       	ldi	r25, 0x00	; 0
    2028:	62 eb       	ldi	r22, 0xB2	; 178
    202a:	77 e0       	ldi	r23, 0x07	; 7
    202c:	4b e5       	ldi	r20, 0x5B	; 91
    202e:	51 e0       	ldi	r21, 0x01	; 1
    2030:	0e 94 c0 20 	call	0x4180	; 0x4180 <eep_getstring32>
    2034:	80 ec       	ldi	r24, 0xC0	; 192
    2036:	90 e0       	ldi	r25, 0x00	; 0
    2038:	4f ef       	ldi	r20, 0xFF	; 255
    203a:	51 e0       	ldi	r21, 0x01	; 1
    203c:	68 ea       	ldi	r22, 0xA8	; 168
    203e:	70 ec       	ldi	r23, 0xC0	; 192
    2040:	0e 94 06 21 	call	0x420c	; 0x420c <eep_getipaddr>
    2044:	60 93 d8 07 	sts	0x07D8, r22
    2048:	70 93 d9 07 	sts	0x07D9, r23
    204c:	80 93 da 07 	sts	0x07DA, r24
    2050:	90 93 db 07 	sts	0x07DB, r25
    2054:	01 c0       	rjmp	.+2      	; 0x2058 <eep_initread+0x426>
    2056:	a8 95       	wdr
    2058:	f9 99       	sbic	0x1f, 1	; 31
    205a:	fd cf       	rjmp	.-6      	; 0x2056 <eep_initread+0x424>
    205c:	84 ec       	ldi	r24, 0xC4	; 196
    205e:	90 e0       	ldi	r25, 0x00	; 0
    2060:	0e 94 6c 6e 	call	0xdcd8	; 0xdcd8 <__eerd_word_m644a>
    2064:	90 93 f9 07 	sts	0x07F9, r25
    2068:	80 93 f8 07 	sts	0x07F8, r24
    206c:	8f 5f       	subi	r24, 0xFF	; 255
    206e:	9f 4f       	sbci	r25, 0xFF	; 255
    2070:	21 f4       	brne	.+8      	; 0x207a <eep_initread+0x448>
    2072:	10 92 f9 07 	sts	0x07F9, r1
    2076:	10 92 f8 07 	sts	0x07F8, r1
    207a:	80 91 f8 07 	lds	r24, 0x07F8
    207e:	90 91 f9 07 	lds	r25, 0x07F9
    2082:	89 2b       	or	r24, r25
    2084:	59 f0       	breq	.+22     	; 0x209c <eep_initread+0x46a>
    2086:	80 91 cc 09 	lds	r24, 0x09CC
    208a:	90 91 cd 09 	lds	r25, 0x09CD
    208e:	82 60       	ori	r24, 0x02	; 2
    2090:	90 93 cd 09 	sts	0x09CD, r25
    2094:	80 93 cc 09 	sts	0x09CC, r24
    2098:	01 c0       	rjmp	.+2      	; 0x209c <eep_initread+0x46a>
    209a:	a8 95       	wdr
    209c:	f9 99       	sbic	0x1f, 1	; 31
    209e:	fd cf       	rjmp	.-6      	; 0x209a <eep_initread+0x468>
    20a0:	86 ec       	ldi	r24, 0xC6	; 198
    20a2:	90 e0       	ldi	r25, 0x00	; 0
    20a4:	0e 94 6c 6e 	call	0xdcd8	; 0xdcd8 <__eerd_word_m644a>
    20a8:	90 93 f7 07 	sts	0x07F7, r25
    20ac:	80 93 f6 07 	sts	0x07F6, r24
    20b0:	01 97       	sbiw	r24, 0x01	; 1
    20b2:	8e 5f       	subi	r24, 0xFE	; 254
    20b4:	9f 4f       	sbci	r25, 0xFF	; 255
    20b6:	40 f0       	brcs	.+16     	; 0x20c8 <eep_initread+0x496>
    20b8:	80 ed       	ldi	r24, 0xD0	; 208
    20ba:	97 e0       	ldi	r25, 0x07	; 7
    20bc:	90 93 f7 07 	sts	0x07F7, r25
    20c0:	80 93 f6 07 	sts	0x07F6, r24
    20c4:	01 c0       	rjmp	.+2      	; 0x20c8 <eep_initread+0x496>
    20c6:	a8 95       	wdr
    20c8:	f9 99       	sbic	0x1f, 1	; 31
    20ca:	fd cf       	rjmp	.-6      	; 0x20c6 <eep_initread+0x494>
    20cc:	88 ec       	ldi	r24, 0xC8	; 200
    20ce:	90 e0       	ldi	r25, 0x00	; 0
    20d0:	0e 94 6c 6e 	call	0xdcd8	; 0xdcd8 <__eerd_word_m644a>
    20d4:	90 93 fe 07 	sts	0x07FE, r25
    20d8:	80 93 fd 07 	sts	0x07FD, r24
    20dc:	8f 5f       	subi	r24, 0xFF	; 255
    20de:	9f 4f       	sbci	r25, 0xFF	; 255
    20e0:	41 f4       	brne	.+16     	; 0x20f2 <eep_initread+0x4c0>
    20e2:	88 e8       	ldi	r24, 0x88	; 136
    20e4:	93 e1       	ldi	r25, 0x13	; 19
    20e6:	90 93 fe 07 	sts	0x07FE, r25
    20ea:	80 93 fd 07 	sts	0x07FD, r24
    20ee:	01 c0       	rjmp	.+2      	; 0x20f2 <eep_initread+0x4c0>
    20f0:	a8 95       	wdr
    20f2:	f9 99       	sbic	0x1f, 1	; 31
    20f4:	fd cf       	rjmp	.-6      	; 0x20f0 <eep_initread+0x4be>
    20f6:	8a ec       	ldi	r24, 0xCA	; 202
    20f8:	90 e0       	ldi	r25, 0x00	; 0
    20fa:	0e 94 6c 6e 	call	0xdcd8	; 0xdcd8 <__eerd_word_m644a>
    20fe:	9c 01       	movw	r18, r24
    2100:	80 91 c9 09 	lds	r24, 0x09C9
    2104:	88 23       	and	r24, r24
    2106:	29 f4       	brne	.+10     	; 0x2112 <eep_initread+0x4e0>
    2108:	20 fd       	sbrc	r18, 0
    210a:	03 c0       	rjmp	.+6      	; 0x2112 <eep_initread+0x4e0>
    210c:	81 e0       	ldi	r24, 0x01	; 1
    210e:	80 93 c9 09 	sts	0x09C9, r24
    2112:	3f 30       	cpi	r19, 0x0F	; 15
    2114:	68 f4       	brcc	.+26     	; 0x2130 <eep_initread+0x4fe>
    2116:	81 e0       	ldi	r24, 0x01	; 1
    2118:	90 e0       	ldi	r25, 0x00	; 0
    211a:	02 c0       	rjmp	.+4      	; 0x2120 <eep_initread+0x4ee>
    211c:	88 0f       	add	r24, r24
    211e:	99 1f       	adc	r25, r25
    2120:	3a 95       	dec	r19
    2122:	e2 f7       	brpl	.-8      	; 0x211c <eep_initread+0x4ea>
    2124:	90 93 aa 01 	sts	0x01AA, r25
    2128:	80 93 a9 01 	sts	0x01A9, r24
    212c:	01 c0       	rjmp	.+2      	; 0x2130 <eep_initread+0x4fe>
    212e:	a8 95       	wdr
    2130:	f9 99       	sbic	0x1f, 1	; 31
    2132:	fd cf       	rjmp	.-6      	; 0x212e <eep_initread+0x4fc>
    2134:	8e ec       	ldi	r24, 0xCE	; 206
    2136:	90 e0       	ldi	r25, 0x00	; 0
    2138:	0e 94 6c 6e 	call	0xdcd8	; 0xdcd8 <__eerd_word_m644a>
    213c:	4f ef       	ldi	r20, 0xFF	; 255
    213e:	8f 3f       	cpi	r24, 0xFF	; 255
    2140:	94 07       	cpc	r25, r20
    2142:	11 f4       	brne	.+4      	; 0x2148 <eep_initread+0x516>
    2144:	80 e8       	ldi	r24, 0x80	; 128
    2146:	90 e0       	ldi	r25, 0x00	; 0
    2148:	90 93 02 08 	sts	0x0802, r25
    214c:	80 93 01 08 	sts	0x0801, r24
    2150:	01 c0       	rjmp	.+2      	; 0x2154 <eep_initread+0x522>
    2152:	a8 95       	wdr
    2154:	f9 99       	sbic	0x1f, 1	; 31
    2156:	fd cf       	rjmp	.-6      	; 0x2152 <eep_initread+0x520>
    2158:	8c ec       	ldi	r24, 0xCC	; 204
    215a:	90 e0       	ldi	r25, 0x00	; 0
    215c:	0e 94 6c 6e 	call	0xdcd8	; 0xdcd8 <__eerd_word_m644a>
    2160:	80 93 e7 09 	sts	0x09E7, r24
    2164:	8f 3f       	cpi	r24, 0xFF	; 255
    2166:	21 f4       	brne	.+8      	; 0x2170 <eep_initread+0x53e>
    2168:	10 92 e7 09 	sts	0x09E7, r1
    216c:	01 c0       	rjmp	.+2      	; 0x2170 <eep_initread+0x53e>
    216e:	a8 95       	wdr
    2170:	f9 99       	sbic	0x1f, 1	; 31
    2172:	fd cf       	rjmp	.-6      	; 0x216e <eep_initread+0x53c>
    2174:	80 91 e7 09 	lds	r24, 0x09E7
    2178:	e8 2f       	mov	r30, r24
    217a:	f0 e0       	ldi	r31, 0x00	; 0
    217c:	ee 0f       	add	r30, r30
    217e:	ff 1f       	adc	r31, r31
    2180:	ee 0f       	add	r30, r30
    2182:	ff 1f       	adc	r31, r31
    2184:	e1 57       	subi	r30, 0x71	; 113
    2186:	f8 4e       	sbci	r31, 0xE8	; 232
    2188:	85 91       	lpm	r24, Z+
    218a:	95 91       	lpm	r25, Z+
    218c:	a5 91       	lpm	r26, Z+
    218e:	b4 91       	lpm	r27, Z+
    2190:	80 93 a5 01 	sts	0x01A5, r24
    2194:	90 93 a6 01 	sts	0x01A6, r25
    2198:	a0 93 a7 01 	sts	0x01A7, r26
    219c:	b0 93 a8 01 	sts	0x01A8, r27
    21a0:	01 c0       	rjmp	.+2      	; 0x21a4 <eep_initread+0x572>
    21a2:	a8 95       	wdr
    21a4:	f9 99       	sbic	0x1f, 1	; 31
    21a6:	fd cf       	rjmp	.-6      	; 0x21a2 <eep_initread+0x570>
    21a8:	80 ee       	ldi	r24, 0xE0	; 224
    21aa:	90 e0       	ldi	r25, 0x00	; 0
    21ac:	0e 94 66 6e 	call	0xdccc	; 0xdccc <__eerd_dword_m644a>
    21b0:	6f 3f       	cpi	r22, 0xFF	; 255
    21b2:	2f ef       	ldi	r18, 0xFF	; 255
    21b4:	72 07       	cpc	r23, r18
    21b6:	2f ef       	ldi	r18, 0xFF	; 255
    21b8:	82 07       	cpc	r24, r18
    21ba:	2f ef       	ldi	r18, 0xFF	; 255
    21bc:	92 07       	cpc	r25, r18
    21be:	21 f4       	brne	.+8      	; 0x21c8 <eep_initread+0x596>
    21c0:	60 e0       	ldi	r22, 0x00	; 0
    21c2:	70 e0       	ldi	r23, 0x00	; 0
    21c4:	80 e0       	ldi	r24, 0x00	; 0
    21c6:	90 e0       	ldi	r25, 0x00	; 0
    21c8:	60 93 f4 09 	sts	0x09F4, r22
    21cc:	70 93 f5 09 	sts	0x09F5, r23
    21d0:	80 93 f6 09 	sts	0x09F6, r24
    21d4:	90 93 f7 09 	sts	0x09F7, r25
    21d8:	01 c0       	rjmp	.+2      	; 0x21dc <eep_initread+0x5aa>
    21da:	a8 95       	wdr
    21dc:	f9 99       	sbic	0x1f, 1	; 31
    21de:	fd cf       	rjmp	.-6      	; 0x21da <eep_initread+0x5a8>
    21e0:	84 ee       	ldi	r24, 0xE4	; 228
    21e2:	90 e0       	ldi	r25, 0x00	; 0
    21e4:	0e 94 66 6e 	call	0xdccc	; 0xdccc <__eerd_dword_m644a>
    21e8:	6f 3f       	cpi	r22, 0xFF	; 255
    21ea:	4f ef       	ldi	r20, 0xFF	; 255
    21ec:	74 07       	cpc	r23, r20
    21ee:	4f ef       	ldi	r20, 0xFF	; 255
    21f0:	84 07       	cpc	r24, r20
    21f2:	4f ef       	ldi	r20, 0xFF	; 255
    21f4:	94 07       	cpc	r25, r20
    21f6:	21 f4       	brne	.+8      	; 0x2200 <eep_initread+0x5ce>
    21f8:	60 e0       	ldi	r22, 0x00	; 0
    21fa:	70 e0       	ldi	r23, 0x00	; 0
    21fc:	80 e0       	ldi	r24, 0x00	; 0
    21fe:	90 e0       	ldi	r25, 0x00	; 0
    2200:	60 93 f8 09 	sts	0x09F8, r22
    2204:	70 93 f9 09 	sts	0x09F9, r23
    2208:	80 93 fa 09 	sts	0x09FA, r24
    220c:	90 93 fb 09 	sts	0x09FB, r25
    2210:	10 92 d9 09 	sts	0x09D9, r1
    2214:	10 92 d8 09 	sts	0x09D8, r1
    2218:	80 91 d6 09 	lds	r24, 0x09D6
    221c:	90 91 d7 09 	lds	r25, 0x09D7
    2220:	81 30       	cpi	r24, 0x01	; 1
    2222:	91 05       	cpc	r25, r1
    2224:	31 f4       	brne	.+12     	; 0x2232 <eep_initread+0x600>
    2226:	90 93 d9 09 	sts	0x09D9, r25
    222a:	80 93 d8 09 	sts	0x09D8, r24
    222e:	01 c0       	rjmp	.+2      	; 0x2232 <eep_initread+0x600>
    2230:	a8 95       	wdr
    2232:	f9 99       	sbic	0x1f, 1	; 31
    2234:	fd cf       	rjmp	.-6      	; 0x2230 <eep_initread+0x5fe>
    2236:	88 e0       	ldi	r24, 0x08	; 8
    2238:	90 e0       	ldi	r25, 0x00	; 0
    223a:	0e 94 66 6e 	call	0xdccc	; 0xdccc <__eerd_dword_m644a>
    223e:	60 93 03 08 	sts	0x0803, r22
    2242:	70 93 04 08 	sts	0x0804, r23
    2246:	80 93 05 08 	sts	0x0805, r24
    224a:	90 93 06 08 	sts	0x0806, r25
    224e:	df 91       	pop	r29
    2250:	cf 91       	pop	r28
    2252:	08 95       	ret

00002254 <main_sub>:
    2254:	1f 93       	push	r17
    2256:	cf 93       	push	r28
    2258:	df 93       	push	r29
    225a:	10 e5       	ldi	r17, 0x50	; 80
    225c:	1c bd       	out	0x2c, r17	; 44
    225e:	0e 94 d7 4e 	call	0x9dae	; 0x9dae <dispoff7seg>
    2262:	80 e1       	ldi	r24, 0x10	; 16
    2264:	8c bd       	out	0x2c, r24	; 44
    2266:	0e 94 65 1f 	call	0x3eca	; 0x3eca <lcd_init>
    226a:	0e 94 19 0e 	call	0x1c32	; 0x1c32 <eep_initread>
    226e:	1c bd       	out	0x2c, r17	; 44
    2270:	80 91 c9 09 	lds	r24, 0x09C9
    2274:	82 50       	subi	r24, 0x02	; 2
    2276:	84 30       	cpi	r24, 0x04	; 4
    2278:	30 f0       	brcs	.+12     	; 0x2286 <main_sub+0x32>
    227a:	80 91 de 09 	lds	r24, 0x09DE
    227e:	90 91 df 09 	lds	r25, 0x09DF
    2282:	01 97       	sbiw	r24, 0x01	; 1
    2284:	89 f5       	brne	.+98     	; 0x22e8 <main_sub+0x94>
    2286:	80 91 1c 01 	lds	r24, 0x011C
    228a:	e8 2f       	mov	r30, r24
    228c:	f0 e0       	ldi	r31, 0x00	; 0
    228e:	ee 0f       	add	r30, r30
    2290:	ff 1f       	adc	r31, r31
    2292:	ec 57       	subi	r30, 0x7C	; 124
    2294:	ff 4f       	sbci	r31, 0xFF	; 255
    2296:	85 91       	lpm	r24, Z+
    2298:	94 91       	lpm	r25, Z+
    229a:	90 93 c5 00 	sts	0x00C5, r25
    229e:	80 93 c4 00 	sts	0x00C4, r24
    22a2:	22 e0       	ldi	r18, 0x02	; 2
    22a4:	20 93 c0 00 	sts	0x00C0, r18
    22a8:	86 e0       	ldi	r24, 0x06	; 6
    22aa:	80 93 c2 00 	sts	0x00C2, r24
    22ae:	80 91 c6 00 	lds	r24, 0x00C6
    22b2:	80 91 de 09 	lds	r24, 0x09DE
    22b6:	90 91 df 09 	lds	r25, 0x09DF
    22ba:	01 97       	sbiw	r24, 0x01	; 1
    22bc:	21 f4       	brne	.+8      	; 0x22c6 <main_sub+0x72>
    22be:	88 e0       	ldi	r24, 0x08	; 8
    22c0:	80 93 c1 00 	sts	0x00C1, r24
    22c4:	11 c0       	rjmp	.+34     	; 0x22e8 <main_sub+0x94>
    22c6:	88 e9       	ldi	r24, 0x98	; 152
    22c8:	80 93 c1 00 	sts	0x00C1, r24
    22cc:	80 91 da 09 	lds	r24, 0x09DA
    22d0:	90 91 db 09 	lds	r25, 0x09DB
    22d4:	01 97       	sbiw	r24, 0x01	; 1
    22d6:	21 f4       	brne	.+8      	; 0x22e0 <main_sub+0x8c>
    22d8:	83 e0       	ldi	r24, 0x03	; 3
    22da:	80 93 69 00 	sts	0x0069, r24
    22de:	02 c0       	rjmp	.+4      	; 0x22e4 <main_sub+0x90>
    22e0:	20 93 69 00 	sts	0x0069, r18
    22e4:	81 e0       	ldi	r24, 0x01	; 1
    22e6:	8d bb       	out	0x1d, r24	; 29
    22e8:	5e 9a       	sbi	0x0b, 6	; 11
    22ea:	80 e1       	ldi	r24, 0x10	; 16
    22ec:	90 e0       	ldi	r25, 0x00	; 0
    22ee:	0e 94 bf 1f 	call	0x3f7e	; 0x3f7e <wait>
    22f2:	0e 94 f8 19 	call	0x33f0	; 0x33f0 <enc_selftest>
    22f6:	88 23       	and	r24, r24
    22f8:	81 f4       	brne	.+32     	; 0x231a <main_sub+0xc6>
    22fa:	84 e1       	ldi	r24, 0x14	; 20
    22fc:	62 ea       	ldi	r22, 0xA2	; 162
    22fe:	7a e0       	ldi	r23, 0x0A	; 10
    2300:	0e 94 27 19 	call	0x324e	; 0x324e <enc_writephy>
    2304:	0e 94 a0 1e 	call	0x3d40	; 0x3d40 <lcd_cls>
    2308:	8f e0       	ldi	r24, 0x0F	; 15
    230a:	0e 94 9b 4f 	call	0x9f36	; 0x9f36 <disp_message1>
    230e:	88 e0       	ldi	r24, 0x08	; 8
    2310:	0e 94 8e 4f 	call	0x9f1c	; 0x9f1c <disp_message2>
    2314:	17 9a       	sbi	0x02, 7	; 2
    2316:	a8 95       	wdr
    2318:	fe cf       	rjmp	.-4      	; 0x2316 <main_sub+0xc2>
    231a:	0e 94 ce 1c 	call	0x399c	; 0x399c <enc_init>
    231e:	80 e0       	ldi	r24, 0x00	; 0
    2320:	0e 94 9b 4f 	call	0x9f36	; 0x9f36 <disp_message1>
    2324:	80 e0       	ldi	r24, 0x00	; 0
    2326:	0e 94 8e 4f 	call	0x9f1c	; 0x9f1c <disp_message2>
    232a:	88 e0       	ldi	r24, 0x08	; 8
    232c:	61 e0       	ldi	r22, 0x01	; 1
    232e:	4c e7       	ldi	r20, 0x7C	; 124
    2330:	50 e0       	ldi	r21, 0x00	; 0
    2332:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    2336:	0e 94 c6 1f 	call	0x3f8c	; 0x3f8c <getcount1ms>
    233a:	ec 01       	movw	r28, r24
    233c:	08 c0       	rjmp	.+16     	; 0x234e <main_sub+0xfa>
    233e:	a8 95       	wdr
    2340:	80 91 c9 09 	lds	r24, 0x09C9
    2344:	82 50       	subi	r24, 0x02	; 2
    2346:	83 30       	cpi	r24, 0x03	; 3
    2348:	10 f4       	brcc	.+4      	; 0x234e <main_sub+0xfa>
    234a:	0e 94 cc 57 	call	0xaf98	; 0xaf98 <gps_process>
    234e:	0e 94 c6 1f 	call	0x3f8c	; 0x3f8c <getcount1ms>
    2352:	8c 1b       	sub	r24, r28
    2354:	9d 0b       	sbc	r25, r29
    2356:	84 5c       	subi	r24, 0xC4	; 196
    2358:	99 40       	sbci	r25, 0x09	; 9
    235a:	88 f3       	brcs	.-30     	; 0x233e <main_sub+0xea>
    235c:	0e 94 a0 1e 	call	0x3d40	; 0x3d40 <lcd_cls>
    2360:	80 91 c9 09 	lds	r24, 0x09C9
    2364:	82 30       	cpi	r24, 0x02	; 2
    2366:	11 f0       	breq	.+4      	; 0x236c <main_sub+0x118>
    2368:	84 30       	cpi	r24, 0x04	; 4
    236a:	29 f4       	brne	.+10     	; 0x2376 <main_sub+0x122>
    236c:	8d e0       	ldi	r24, 0x0D	; 13
    236e:	0e 94 9b 4f 	call	0x9f36	; 0x9f36 <disp_message1>
    2372:	86 e0       	ldi	r24, 0x06	; 6
    2374:	06 c0       	rjmp	.+12     	; 0x2382 <main_sub+0x12e>
    2376:	85 30       	cpi	r24, 0x05	; 5
    2378:	31 f4       	brne	.+12     	; 0x2386 <main_sub+0x132>
    237a:	8e e0       	ldi	r24, 0x0E	; 14
    237c:	0e 94 9b 4f 	call	0x9f36	; 0x9f36 <disp_message1>
    2380:	87 e0       	ldi	r24, 0x07	; 7
    2382:	0e 94 8e 4f 	call	0x9f1c	; 0x9f1c <disp_message2>
    2386:	20 91 3a 08 	lds	r18, 0x083A
    238a:	22 23       	and	r18, r18
    238c:	e1 f0       	breq	.+56     	; 0x23c6 <main_sub+0x172>
    238e:	81 e0       	ldi	r24, 0x01	; 1
    2390:	90 e0       	ldi	r25, 0x00	; 0
    2392:	90 93 3c 08 	sts	0x083C, r25
    2396:	80 93 3b 08 	sts	0x083B, r24
    239a:	a9 e0       	ldi	r26, 0x09	; 9
    239c:	b1 e0       	ldi	r27, 0x01	; 1
    239e:	eb e4       	ldi	r30, 0x4B	; 75
    23a0:	f1 e0       	ldi	r31, 0x01	; 1
    23a2:	82 e1       	ldi	r24, 0x12	; 18
    23a4:	01 90       	ld	r0, Z+
    23a6:	0d 92       	st	X+, r0
    23a8:	81 50       	subi	r24, 0x01	; 1
    23aa:	e1 f7       	brne	.-8      	; 0x23a4 <main_sub+0x150>
    23ac:	24 31       	cpi	r18, 0x14	; 20
    23ae:	19 f4       	brne	.+6      	; 0x23b6 <main_sub+0x162>
    23b0:	0e 94 a8 2c 	call	0x5950	; 0x5950 <dhcp_discover>
    23b4:	03 c0       	rjmp	.+6      	; 0x23bc <main_sub+0x168>
    23b6:	86 e1       	ldi	r24, 0x16	; 22
    23b8:	0e 94 86 2d 	call	0x5b0c	; 0x5b0c <dhcp_request>
    23bc:	88 23       	and	r24, r24
    23be:	39 f0       	breq	.+14     	; 0x23ce <main_sub+0x17a>
    23c0:	0e 94 74 53 	call	0xa6e8	; 0xa6e8 <update_eventlog>
    23c4:	04 c0       	rjmp	.+8      	; 0x23ce <main_sub+0x17a>
    23c6:	10 92 3c 08 	sts	0x083C, r1
    23ca:	10 92 3b 08 	sts	0x083B, r1
    23ce:	80 91 c9 09 	lds	r24, 0x09C9
    23d2:	83 30       	cpi	r24, 0x03	; 3
    23d4:	c9 f4       	brne	.+50     	; 0x2408 <main_sub+0x1b4>
    23d6:	0e 94 a0 1e 	call	0x3d40	; 0x3d40 <lcd_cls>
    23da:	80 e1       	ldi	r24, 0x10	; 16
    23dc:	0e 94 9b 4f 	call	0x9f36	; 0x9f36 <disp_message1>
    23e0:	89 e0       	ldi	r24, 0x09	; 9
    23e2:	0e 94 8e 4f 	call	0x9f1c	; 0x9f1c <disp_message2>
    23e6:	0e 94 65 56 	call	0xacca	; 0xacca <mtk_init>
    23ea:	85 32       	cpi	r24, 0x25	; 37
    23ec:	69 f4       	brne	.+26     	; 0x2408 <main_sub+0x1b4>
    23ee:	87 e2       	ldi	r24, 0x27	; 39
    23f0:	0e 94 74 53 	call	0xa6e8	; 0xa6e8 <update_eventlog>
    23f4:	17 9a       	sbi	0x02, 7	; 2
    23f6:	80 91 ce 09 	lds	r24, 0x09CE
    23fa:	90 91 cf 09 	lds	r25, 0x09CF
    23fe:	90 68       	ori	r25, 0x80	; 128
    2400:	90 93 cf 09 	sts	0x09CF, r25
    2404:	80 93 ce 09 	sts	0x09CE, r24
    2408:	df 91       	pop	r29
    240a:	cf 91       	pop	r28
    240c:	1f 91       	pop	r17
    240e:	08 95       	ret

00002410 <calc_bcastremtime>:
    2410:	ef 92       	push	r14
    2412:	ff 92       	push	r15
    2414:	0f 93       	push	r16
    2416:	1f 93       	push	r17
    2418:	e0 90 f8 07 	lds	r14, 0x07F8
    241c:	f0 90 f9 07 	lds	r15, 0x07F9
    2420:	00 e0       	ldi	r16, 0x00	; 0
    2422:	10 e0       	ldi	r17, 0x00	; 0
    2424:	81 e8       	ldi	r24, 0x81	; 129
    2426:	91 e0       	ldi	r25, 0x01	; 1
    2428:	6b e4       	ldi	r22, 0x4B	; 75
    242a:	71 e0       	ldi	r23, 0x01	; 1
    242c:	0e 94 d4 41 	call	0x83a8	; 0x83a8 <calc_timediff>
    2430:	e6 1a       	sub	r14, r22
    2432:	f7 0a       	sbc	r15, r23
    2434:	08 0b       	sbc	r16, r24
    2436:	19 0b       	sbc	r17, r25
    2438:	b7 01       	movw	r22, r14
    243a:	c8 01       	movw	r24, r16
    243c:	1f 91       	pop	r17
    243e:	0f 91       	pop	r16
    2440:	ff 90       	pop	r15
    2442:	ef 90       	pop	r14
    2444:	08 95       	ret

00002446 <calc_calremtime>:
    2446:	ef 92       	push	r14
    2448:	ff 92       	push	r15
    244a:	0f 93       	push	r16
    244c:	1f 93       	push	r17
    244e:	e0 90 fa 07 	lds	r14, 0x07FA
    2452:	f0 90 fb 07 	lds	r15, 0x07FB
    2456:	00 27       	eor	r16, r16
    2458:	f7 fc       	sbrc	r15, 7
    245a:	00 95       	com	r16
    245c:	10 2f       	mov	r17, r16
    245e:	8f e6       	ldi	r24, 0x6F	; 111
    2460:	91 e0       	ldi	r25, 0x01	; 1
    2462:	6b e4       	ldi	r22, 0x4B	; 75
    2464:	71 e0       	ldi	r23, 0x01	; 1
    2466:	0e 94 d4 41 	call	0x83a8	; 0x83a8 <calc_timediff>
    246a:	e6 1a       	sub	r14, r22
    246c:	f7 0a       	sbc	r15, r23
    246e:	08 0b       	sbc	r16, r24
    2470:	19 0b       	sbc	r17, r25
    2472:	b7 01       	movw	r22, r14
    2474:	c8 01       	movw	r24, r16
    2476:	1f 91       	pop	r17
    2478:	0f 91       	pop	r16
    247a:	ff 90       	pop	r15
    247c:	ef 90       	pop	r14
    247e:	08 95       	ret

00002480 <change_calinterval>:
    2480:	0f 93       	push	r16
    2482:	1f 93       	push	r17
    2484:	8c 01       	movw	r16, r24
    2486:	0e 94 b6 40 	call	0x816c	; 0x816c <make_rand>
    248a:	00 51       	subi	r16, 0x10	; 16
    248c:	10 40       	sbci	r17, 0x00	; 0
    248e:	6f 71       	andi	r22, 0x1F	; 31
    2490:	70 70       	andi	r23, 0x00	; 0
    2492:	06 0f       	add	r16, r22
    2494:	17 1f       	adc	r17, r23
    2496:	10 93 fb 07 	sts	0x07FB, r17
    249a:	00 93 fa 07 	sts	0x07FA, r16
    249e:	0c 33       	cpi	r16, 0x3C	; 60
    24a0:	11 05       	cpc	r17, r1
    24a2:	34 f4       	brge	.+12     	; 0x24b0 <change_calinterval+0x30>
    24a4:	8c e3       	ldi	r24, 0x3C	; 60
    24a6:	90 e0       	ldi	r25, 0x00	; 0
    24a8:	90 93 fb 07 	sts	0x07FB, r25
    24ac:	80 93 fa 07 	sts	0x07FA, r24
    24b0:	af e6       	ldi	r26, 0x6F	; 111
    24b2:	b1 e0       	ldi	r27, 0x01	; 1
    24b4:	eb e4       	ldi	r30, 0x4B	; 75
    24b6:	f1 e0       	ldi	r31, 0x01	; 1
    24b8:	82 e1       	ldi	r24, 0x12	; 18
    24ba:	01 90       	ld	r0, Z+
    24bc:	0d 92       	st	X+, r0
    24be:	81 50       	subi	r24, 0x01	; 1
    24c0:	e1 f7       	brne	.-8      	; 0x24ba <change_calinterval+0x3a>
    24c2:	1f 91       	pop	r17
    24c4:	0f 91       	pop	r16
    24c6:	08 95       	ret

000024c8 <main>:
    24c8:	ae e0       	ldi	r26, 0x0E	; 14
    24ca:	b0 e0       	ldi	r27, 0x00	; 0
    24cc:	ea e6       	ldi	r30, 0x6A	; 106
    24ce:	f2 e1       	ldi	r31, 0x12	; 18
    24d0:	0c 94 49 6d 	jmp	0xda92	; 0xda92 <__prologue_saves__>
    24d4:	f8 94       	cli
    24d6:	89 ec       	ldi	r24, 0xC9	; 201
    24d8:	80 93 64 00 	sts	0x0064, r24
    24dc:	80 e8       	ldi	r24, 0x80	; 128
    24de:	85 bf       	out	0x35, r24	; 53
    24e0:	85 bf       	out	0x35, r24	; 53
    24e2:	80 bf       	out	0x30, r24	; 48
    24e4:	12 b8       	out	0x02, r1	; 2
    24e6:	80 e1       	ldi	r24, 0x10	; 16
    24e8:	85 b9       	out	0x05, r24	; 5
    24ea:	18 b8       	out	0x08, r1	; 8
    24ec:	8b e0       	ldi	r24, 0x0B	; 11
    24ee:	8b b9       	out	0x0b, r24	; 11
    24f0:	8f ef       	ldi	r24, 0xFF	; 255
    24f2:	81 b9       	out	0x01, r24	; 1
    24f4:	80 eb       	ldi	r24, 0xB0	; 176
    24f6:	84 b9       	out	0x04, r24	; 4
    24f8:	17 b8       	out	0x07, r1	; 7
    24fa:	8a ec       	ldi	r24, 0xCA	; 202
    24fc:	8a b9       	out	0x0a, r24	; 10
    24fe:	41 e0       	ldi	r20, 0x01	; 1
    2500:	50 e0       	ldi	r21, 0x00	; 0
    2502:	50 93 48 01 	sts	0x0148, r21
    2506:	40 93 47 01 	sts	0x0147, r20
    250a:	29 b1       	in	r18, 0x09	; 9
    250c:	20 73       	andi	r18, 0x30	; 48
    250e:	20 32       	cpi	r18, 0x20	; 32
    2510:	29 f4       	brne	.+10     	; 0x251c <main+0x54>
    2512:	11 9a       	sbi	0x02, 1	; 2
    2514:	82 e0       	ldi	r24, 0x02	; 2
    2516:	80 93 c9 09 	sts	0x09C9, r24
    251a:	0f c0       	rjmp	.+30     	; 0x253a <main+0x72>
    251c:	20 31       	cpi	r18, 0x10	; 16
    251e:	89 f4       	brne	.+34     	; 0x2542 <main+0x7a>
    2520:	12 9a       	sbi	0x02, 2	; 2
    2522:	85 e0       	ldi	r24, 0x05	; 5
    2524:	80 93 c9 09 	sts	0x09C9, r24
    2528:	80 91 cc 09 	lds	r24, 0x09CC
    252c:	90 91 cd 09 	lds	r25, 0x09CD
    2530:	94 60       	ori	r25, 0x04	; 4
    2532:	90 93 cd 09 	sts	0x09CD, r25
    2536:	80 93 cc 09 	sts	0x09CC, r24
    253a:	89 e0       	ldi	r24, 0x09	; 9
    253c:	80 93 ac 01 	sts	0x01AC, r24
    2540:	1d c0       	rjmp	.+58     	; 0x257c <main+0xb4>
    2542:	80 91 cc 09 	lds	r24, 0x09CC
    2546:	90 91 cd 09 	lds	r25, 0x09CD
    254a:	20 33       	cpi	r18, 0x30	; 48
    254c:	49 f4       	brne	.+18     	; 0x2560 <main+0x98>
    254e:	10 9a       	sbi	0x02, 0	; 2
    2550:	81 60       	ori	r24, 0x01	; 1
    2552:	90 93 cd 09 	sts	0x09CD, r25
    2556:	80 93 cc 09 	sts	0x09CC, r24
    255a:	10 92 c9 09 	sts	0x09C9, r1
    255e:	0e c0       	rjmp	.+28     	; 0x257c <main+0xb4>
    2560:	10 9a       	sbi	0x02, 0	; 2
    2562:	10 92 c9 09 	sts	0x09C9, r1
    2566:	5a 9a       	sbi	0x0b, 2	; 11
    2568:	52 9a       	sbi	0x0a, 2	; 10
    256a:	90 62       	ori	r25, 0x20	; 32
    256c:	90 93 cd 09 	sts	0x09CD, r25
    2570:	80 93 cc 09 	sts	0x09CC, r24
    2574:	50 93 df 09 	sts	0x09DF, r21
    2578:	40 93 de 09 	sts	0x09DE, r20
    257c:	80 e1       	ldi	r24, 0x10	; 16
    257e:	8c bd       	out	0x2c, r24	; 44
    2580:	81 e0       	ldi	r24, 0x01	; 1
    2582:	8d bd       	out	0x2d, r24	; 45
    2584:	80 e5       	ldi	r24, 0x50	; 80
    2586:	8c bd       	out	0x2c, r24	; 44
    2588:	85 ea       	ldi	r24, 0xA5	; 165
    258a:	90 e0       	ldi	r25, 0x00	; 0
    258c:	90 93 c5 00 	sts	0x00C5, r25
    2590:	80 93 c4 00 	sts	0x00C4, r24
    2594:	92 e0       	ldi	r25, 0x02	; 2
    2596:	90 93 c0 00 	sts	0x00C0, r25
    259a:	86 e0       	ldi	r24, 0x06	; 6
    259c:	80 93 c2 00 	sts	0x00C2, r24
    25a0:	16 bc       	out	0x26, r1	; 38
    25a2:	94 bd       	out	0x24, r25	; 36
    25a4:	83 e0       	ldi	r24, 0x03	; 3
    25a6:	85 bd       	out	0x25, r24	; 37
    25a8:	87 ec       	ldi	r24, 0xC7	; 199
    25aa:	87 bd       	out	0x27, r24	; 39
    25ac:	90 93 6e 00 	sts	0x006E, r25
    25b0:	1c ba       	out	0x1c, r1	; 28
    25b2:	1d ba       	out	0x1d, r1	; 29
    25b4:	84 b7       	in	r24, 0x34	; 52
    25b6:	80 ff       	sbrs	r24, 0
    25b8:	04 c0       	rjmp	.+8      	; 0x25c2 <main+0xfa>
    25ba:	81 e0       	ldi	r24, 0x01	; 1
    25bc:	0e 94 74 53 	call	0xa6e8	; 0xa6e8 <update_eventlog>
    25c0:	13 c0       	rjmp	.+38     	; 0x25e8 <main+0x120>
    25c2:	81 ff       	sbrs	r24, 1
    25c4:	02 c0       	rjmp	.+4      	; 0x25ca <main+0x102>
    25c6:	82 e0       	ldi	r24, 0x02	; 2
    25c8:	07 c0       	rjmp	.+14     	; 0x25d8 <main+0x110>
    25ca:	82 ff       	sbrs	r24, 2
    25cc:	02 c0       	rjmp	.+4      	; 0x25d2 <main+0x10a>
    25ce:	83 e0       	ldi	r24, 0x03	; 3
    25d0:	03 c0       	rjmp	.+6      	; 0x25d8 <main+0x110>
    25d2:	83 ff       	sbrs	r24, 3
    25d4:	09 c0       	rjmp	.+18     	; 0x25e8 <main+0x120>
    25d6:	84 e0       	ldi	r24, 0x04	; 4
    25d8:	0e 94 74 53 	call	0xa6e8	; 0xa6e8 <update_eventlog>
    25dc:	81 e0       	ldi	r24, 0x01	; 1
    25de:	90 e0       	ldi	r25, 0x00	; 0
    25e0:	90 93 e1 09 	sts	0x09E1, r25
    25e4:	80 93 e0 09 	sts	0x09E0, r24
    25e8:	14 be       	out	0x34, r1	; 52
    25ea:	2c e0       	ldi	r18, 0x0C	; 12
    25ec:	88 e1       	ldi	r24, 0x18	; 24
    25ee:	90 e0       	ldi	r25, 0x00	; 0
    25f0:	0f b6       	in	r0, 0x3f	; 63
    25f2:	f8 94       	cli
    25f4:	a8 95       	wdr
    25f6:	80 93 60 00 	sts	0x0060, r24
    25fa:	0f be       	out	0x3f, r0	; 63
    25fc:	20 93 60 00 	sts	0x0060, r18
    2600:	78 94       	sei
    2602:	0e 94 2a 11 	call	0x2254	; 0x2254 <main_sub>
    2606:	10 92 e1 09 	sts	0x09E1, r1
    260a:	10 92 e0 09 	sts	0x09E0, r1
    260e:	0e 94 c6 1f 	call	0x3f8c	; 0x3f8c <getcount1ms>
    2612:	9e 87       	std	Y+14, r25	; 0x0e
    2614:	8d 87       	std	Y+13, r24	; 0x0d
    2616:	f5 e0       	ldi	r31, 0x05	; 5
    2618:	8f 2e       	mov	r8, r31
    261a:	91 2c       	mov	r9, r1
    261c:	8c 0e       	add	r8, r28
    261e:	9d 1e       	adc	r9, r29
    2620:	e6 e0       	ldi	r30, 0x06	; 6
    2622:	2e 2e       	mov	r2, r30
    2624:	31 2c       	mov	r3, r1
    2626:	2c 0e       	add	r2, r28
    2628:	3d 1e       	adc	r3, r29
    262a:	a8 95       	wdr
    262c:	0e 94 8c 26 	call	0x4d18	; 0x4d18 <ip_input>
    2630:	82 30       	cpi	r24, 0x02	; 2
    2632:	19 f4       	brne	.+6      	; 0x263a <main+0x172>
    2634:	0e 94 f3 24 	call	0x49e6	; 0x49e6 <icmp_input>
    2638:	09 c0       	rjmp	.+18     	; 0x264c <main+0x184>
    263a:	83 30       	cpi	r24, 0x03	; 3
    263c:	19 f4       	brne	.+6      	; 0x2644 <main+0x17c>
    263e:	0e 94 5b 2b 	call	0x56b6	; 0x56b6 <udp_input>
    2642:	04 c0       	rjmp	.+8      	; 0x264c <main+0x184>
    2644:	84 30       	cpi	r24, 0x04	; 4
    2646:	41 f5       	brne	.+80     	; 0x2698 <main+0x1d0>
    2648:	0e 94 d8 28 	call	0x51b0	; 0x51b0 <tcp_input>
    264c:	18 2f       	mov	r17, r24
    264e:	0e 94 81 1a 	call	0x3502	; 0x3502 <enc_setnextpoint>
    2652:	11 23       	and	r17, r17
    2654:	09 f1       	breq	.+66     	; 0x2698 <main+0x1d0>
    2656:	80 91 c9 09 	lds	r24, 0x09C9
    265a:	88 23       	and	r24, r24
    265c:	d1 f4       	brne	.+52     	; 0x2692 <main+0x1ca>
    265e:	16 30       	cpi	r17, 0x06	; 6
    2660:	91 f4       	brne	.+36     	; 0x2686 <main+0x1be>
    2662:	80 91 e8 09 	lds	r24, 0x09E8
    2666:	88 23       	and	r24, r24
    2668:	a1 f0       	breq	.+40     	; 0x2692 <main+0x1ca>
    266a:	af e6       	ldi	r26, 0x6F	; 111
    266c:	b1 e0       	ldi	r27, 0x01	; 1
    266e:	eb e4       	ldi	r30, 0x4B	; 75
    2670:	f1 e0       	ldi	r31, 0x01	; 1
    2672:	82 e1       	ldi	r24, 0x12	; 18
    2674:	01 90       	ld	r0, Z+
    2676:	0d 92       	st	X+, r0
    2678:	81 50       	subi	r24, 0x01	; 1
    267a:	e1 f7       	brne	.-8      	; 0x2674 <main+0x1ac>
    267c:	10 92 b0 09 	sts	0x09B0, r1
    2680:	10 92 e8 09 	sts	0x09E8, r1
    2684:	06 c0       	rjmp	.+12     	; 0x2692 <main+0x1ca>
    2686:	1b 31       	cpi	r17, 0x1B	; 27
    2688:	21 f4       	brne	.+8      	; 0x2692 <main+0x1ca>
    268a:	80 e4       	ldi	r24, 0x40	; 64
    268c:	90 e0       	ldi	r25, 0x00	; 0
    268e:	0e 94 40 12 	call	0x2480	; 0x2480 <change_calinterval>
    2692:	81 2f       	mov	r24, r17
    2694:	0e 94 74 53 	call	0xa6e8	; 0xa6e8 <update_eventlog>
    2698:	90 91 c9 09 	lds	r25, 0x09C9
    269c:	89 2f       	mov	r24, r25
    269e:	82 50       	subi	r24, 0x02	; 2
    26a0:	83 30       	cpi	r24, 0x03	; 3
    26a2:	18 f4       	brcc	.+6      	; 0x26aa <main+0x1e2>
    26a4:	0e 94 cc 57 	call	0xaf98	; 0xaf98 <gps_process>
    26a8:	04 c0       	rjmp	.+8      	; 0x26b2 <main+0x1ea>
    26aa:	95 30       	cpi	r25, 0x05	; 5
    26ac:	11 f4       	brne	.+4      	; 0x26b2 <main+0x1ea>
    26ae:	0e 94 47 55 	call	0xaa8e	; 0xaa8e <jjy_process>
    26b2:	f8 94       	cli
    26b4:	60 90 02 0c 	lds	r6, 0x0C02
    26b8:	70 90 03 0c 	lds	r7, 0x0C03
    26bc:	10 92 03 0c 	sts	0x0C03, r1
    26c0:	10 92 02 0c 	sts	0x0C02, r1
    26c4:	40 90 07 0c 	lds	r4, 0x0C07
    26c8:	50 90 08 0c 	lds	r5, 0x0C08
    26cc:	10 92 08 0c 	sts	0x0C08, r1
    26d0:	10 92 07 0c 	sts	0x0C07, r1
    26d4:	78 94       	sei
    26d6:	21 e0       	ldi	r18, 0x01	; 1
    26d8:	62 16       	cp	r6, r18
    26da:	71 04       	cpc	r7, r1
    26dc:	29 f0       	breq	.+10     	; 0x26e8 <main+0x220>
    26de:	31 e0       	ldi	r19, 0x01	; 1
    26e0:	43 16       	cp	r4, r19
    26e2:	51 04       	cpc	r5, r1
    26e4:	09 f0       	breq	.+2      	; 0x26e8 <main+0x220>
    26e6:	04 c3       	rjmp	.+1544   	; 0x2cf0 <main+0x828>
    26e8:	f8 94       	cli
    26ea:	80 91 fe 0b 	lds	r24, 0x0BFE
    26ee:	90 91 ff 0b 	lds	r25, 0x0BFF
    26f2:	a0 91 00 0c 	lds	r26, 0x0C00
    26f6:	b0 91 01 0c 	lds	r27, 0x0C01
    26fa:	89 83       	std	Y+1, r24	; 0x01
    26fc:	9a 83       	std	Y+2, r25	; 0x02
    26fe:	ab 83       	std	Y+3, r26	; 0x03
    2700:	bc 83       	std	Y+4, r27	; 0x04
    2702:	78 94       	sei
    2704:	ce 01       	movw	r24, r28
    2706:	01 96       	adiw	r24, 0x01	; 1
    2708:	0e 94 18 22 	call	0x4430	; 0x4430 <gmtime>
    270c:	00 97       	sbiw	r24, 0x00	; 0
    270e:	29 f4       	brne	.+10     	; 0x271a <main+0x252>
    2710:	80 ec       	ldi	r24, 0xC0	; 192
    2712:	80 93 07 01 	sts	0x0107, r24
    2716:	81 e0       	ldi	r24, 0x01	; 1
    2718:	b1 c0       	rjmp	.+354    	; 0x287c <main+0x3b4>
    271a:	ad e5       	ldi	r26, 0x5D	; 93
    271c:	b1 e0       	ldi	r27, 0x01	; 1
    271e:	fc 01       	movw	r30, r24
    2720:	82 e1       	ldi	r24, 0x12	; 18
    2722:	01 90       	ld	r0, Z+
    2724:	0d 92       	st	X+, r0
    2726:	81 50       	subi	r24, 0x01	; 1
    2728:	e1 f7       	brne	.-8      	; 0x2722 <main+0x25a>
    272a:	80 91 07 01 	lds	r24, 0x0107
    272e:	80 34       	cpi	r24, 0x40	; 64
    2730:	61 f5       	brne	.+88     	; 0x278a <main+0x2c2>
    2732:	80 91 12 0c 	lds	r24, 0x0C12
    2736:	88 23       	and	r24, r24
    2738:	f9 f4       	brne	.+62     	; 0x2778 <main+0x2b0>
    273a:	80 91 61 01 	lds	r24, 0x0161
    273e:	90 91 62 01 	lds	r25, 0x0162
    2742:	89 2b       	or	r24, r25
    2744:	c9 f4       	brne	.+50     	; 0x2778 <main+0x2b0>
    2746:	80 91 5f 01 	lds	r24, 0x015F
    274a:	90 91 60 01 	lds	r25, 0x0160
    274e:	89 2b       	or	r24, r25
    2750:	99 f4       	brne	.+38     	; 0x2778 <main+0x2b0>
    2752:	80 91 5d 01 	lds	r24, 0x015D
    2756:	90 91 5e 01 	lds	r25, 0x015E
    275a:	89 2b       	or	r24, r25
    275c:	69 f4       	brne	.+26     	; 0x2778 <main+0x2b0>
    275e:	89 81       	ldd	r24, Y+1	; 0x01
    2760:	9a 81       	ldd	r25, Y+2	; 0x02
    2762:	ab 81       	ldd	r26, Y+3	; 0x03
    2764:	bc 81       	ldd	r27, Y+4	; 0x04
    2766:	01 97       	sbiw	r24, 0x01	; 1
    2768:	a1 09       	sbc	r26, r1
    276a:	b1 09       	sbc	r27, r1
    276c:	89 83       	std	Y+1, r24	; 0x01
    276e:	9a 83       	std	Y+2, r25	; 0x02
    2770:	ab 83       	std	Y+3, r26	; 0x03
    2772:	bc 83       	std	Y+4, r27	; 0x04
    2774:	82 e0       	ldi	r24, 0x02	; 2
    2776:	43 c0       	rjmp	.+134    	; 0x27fe <main+0x336>
    2778:	80 91 12 0c 	lds	r24, 0x0C12
    277c:	82 30       	cpi	r24, 0x02	; 2
    277e:	09 f0       	breq	.+2      	; 0x2782 <main+0x2ba>
    2780:	55 c0       	rjmp	.+170    	; 0x282c <main+0x364>
    2782:	81 e0       	ldi	r24, 0x01	; 1
    2784:	80 93 12 0c 	sts	0x0C12, r24
    2788:	51 c0       	rjmp	.+162    	; 0x282c <main+0x364>
    278a:	80 38       	cpi	r24, 0x80	; 128
    278c:	09 f0       	breq	.+2      	; 0x2790 <main+0x2c8>
    278e:	4e c0       	rjmp	.+156    	; 0x282c <main+0x364>
    2790:	80 91 12 0c 	lds	r24, 0x0C12
    2794:	88 23       	and	r24, r24
    2796:	09 f0       	breq	.+2      	; 0x279a <main+0x2d2>
    2798:	49 c0       	rjmp	.+146    	; 0x282c <main+0x364>
    279a:	80 91 61 01 	lds	r24, 0x0161
    279e:	90 91 62 01 	lds	r25, 0x0162
    27a2:	47 97       	sbiw	r24, 0x17	; 23
    27a4:	09 f0       	breq	.+2      	; 0x27a8 <main+0x2e0>
    27a6:	42 c0       	rjmp	.+132    	; 0x282c <main+0x364>
    27a8:	80 91 5f 01 	lds	r24, 0x015F
    27ac:	90 91 60 01 	lds	r25, 0x0160
    27b0:	cb 97       	sbiw	r24, 0x3b	; 59
    27b2:	e1 f5       	brne	.+120    	; 0x282c <main+0x364>
    27b4:	80 91 5d 01 	lds	r24, 0x015D
    27b8:	90 91 5e 01 	lds	r25, 0x015E
    27bc:	cb 97       	sbiw	r24, 0x3b	; 59
    27be:	b1 f5       	brne	.+108    	; 0x282c <main+0x364>
    27c0:	89 81       	ldd	r24, Y+1	; 0x01
    27c2:	9a 81       	ldd	r25, Y+2	; 0x02
    27c4:	ab 81       	ldd	r26, Y+3	; 0x03
    27c6:	bc 81       	ldd	r27, Y+4	; 0x04
    27c8:	01 96       	adiw	r24, 0x01	; 1
    27ca:	a1 1d       	adc	r26, r1
    27cc:	b1 1d       	adc	r27, r1
    27ce:	89 83       	std	Y+1, r24	; 0x01
    27d0:	9a 83       	std	Y+2, r25	; 0x02
    27d2:	ab 83       	std	Y+3, r26	; 0x03
    27d4:	bc 83       	std	Y+4, r27	; 0x04
    27d6:	80 91 fe 0b 	lds	r24, 0x0BFE
    27da:	90 91 ff 0b 	lds	r25, 0x0BFF
    27de:	a0 91 00 0c 	lds	r26, 0x0C00
    27e2:	b0 91 01 0c 	lds	r27, 0x0C01
    27e6:	01 96       	adiw	r24, 0x01	; 1
    27e8:	a1 1d       	adc	r26, r1
    27ea:	b1 1d       	adc	r27, r1
    27ec:	80 93 fe 0b 	sts	0x0BFE, r24
    27f0:	90 93 ff 0b 	sts	0x0BFF, r25
    27f4:	a0 93 00 0c 	sts	0x0C00, r26
    27f8:	b0 93 01 0c 	sts	0x0C01, r27
    27fc:	81 e0       	ldi	r24, 0x01	; 1
    27fe:	80 93 12 0c 	sts	0x0C12, r24
    2802:	ce 01       	movw	r24, r28
    2804:	01 96       	adiw	r24, 0x01	; 1
    2806:	0e 94 18 22 	call	0x4430	; 0x4430 <gmtime>
    280a:	ad e5       	ldi	r26, 0x5D	; 93
    280c:	b1 e0       	ldi	r27, 0x01	; 1
    280e:	fc 01       	movw	r30, r24
    2810:	22 e1       	ldi	r18, 0x12	; 18
    2812:	01 90       	ld	r0, Z+
    2814:	0d 92       	st	X+, r0
    2816:	21 50       	subi	r18, 0x01	; 1
    2818:	e1 f7       	brne	.-8      	; 0x2812 <main+0x34a>
    281a:	89 2b       	or	r24, r25
    281c:	39 f4       	brne	.+14     	; 0x282c <main+0x364>
    281e:	90 ec       	ldi	r25, 0xC0	; 192
    2820:	90 93 07 01 	sts	0x0107, r25
    2824:	10 92 08 0c 	sts	0x0C08, r1
    2828:	10 92 07 0c 	sts	0x0C07, r1
    282c:	89 81       	ldd	r24, Y+1	; 0x01
    282e:	9a 81       	ldd	r25, Y+2	; 0x02
    2830:	ab 81       	ldd	r26, Y+3	; 0x03
    2832:	bc 81       	ldd	r27, Y+4	; 0x04
    2834:	20 91 a5 01 	lds	r18, 0x01A5
    2838:	30 91 a6 01 	lds	r19, 0x01A6
    283c:	40 91 a7 01 	lds	r20, 0x01A7
    2840:	50 91 a8 01 	lds	r21, 0x01A8
    2844:	82 0f       	add	r24, r18
    2846:	93 1f       	adc	r25, r19
    2848:	a4 1f       	adc	r26, r20
    284a:	b5 1f       	adc	r27, r21
    284c:	89 83       	std	Y+1, r24	; 0x01
    284e:	9a 83       	std	Y+2, r25	; 0x02
    2850:	ab 83       	std	Y+3, r26	; 0x03
    2852:	bc 83       	std	Y+4, r27	; 0x04
    2854:	ce 01       	movw	r24, r28
    2856:	01 96       	adiw	r24, 0x01	; 1
    2858:	0e 94 18 22 	call	0x4430	; 0x4430 <gmtime>
    285c:	ab e4       	ldi	r26, 0x4B	; 75
    285e:	b1 e0       	ldi	r27, 0x01	; 1
    2860:	fc 01       	movw	r30, r24
    2862:	82 e1       	ldi	r24, 0x12	; 18
    2864:	01 90       	ld	r0, Z+
    2866:	0d 92       	st	X+, r0
    2868:	81 50       	subi	r24, 0x01	; 1
    286a:	e1 f7       	brne	.-8      	; 0x2864 <main+0x39c>
    286c:	80 91 12 0c 	lds	r24, 0x0C12
    2870:	81 30       	cpi	r24, 0x01	; 1
    2872:	39 f4       	brne	.+14     	; 0x2882 <main+0x3ba>
    2874:	10 92 07 01 	sts	0x0107, r1
    2878:	10 92 12 0c 	sts	0x0C12, r1
    287c:	80 93 ac 01 	sts	0x01AC, r24
    2880:	0a c0       	rjmp	.+20     	; 0x2896 <main+0x3ce>
    2882:	80 91 12 0c 	lds	r24, 0x0C12
    2886:	82 30       	cpi	r24, 0x02	; 2
    2888:	31 f4       	brne	.+12     	; 0x2896 <main+0x3ce>
    288a:	2c e3       	ldi	r18, 0x3C	; 60
    288c:	30 e0       	ldi	r19, 0x00	; 0
    288e:	30 93 4c 01 	sts	0x014C, r19
    2892:	20 93 4b 01 	sts	0x014B, r18
    2896:	31 e0       	ldi	r19, 0x01	; 1
    2898:	63 16       	cp	r6, r19
    289a:	71 04       	cpc	r7, r1
    289c:	09 f0       	breq	.+2      	; 0x28a0 <main+0x3d8>
    289e:	d3 c1       	rjmp	.+934    	; 0x2c46 <main+0x77e>
    28a0:	80 91 de 09 	lds	r24, 0x09DE
    28a4:	90 91 df 09 	lds	r25, 0x09DF
    28a8:	01 97       	sbiw	r24, 0x01	; 1
    28aa:	09 f0       	breq	.+2      	; 0x28ae <main+0x3e6>
    28ac:	80 c0       	rjmp	.+256    	; 0x29ae <main+0x4e6>
    28ae:	f8 94       	cli
    28b0:	00 91 fc 0b 	lds	r16, 0x0BFC
    28b4:	10 91 fd 0b 	lds	r17, 0x0BFD
    28b8:	78 94       	sei
    28ba:	80 91 61 01 	lds	r24, 0x0161
    28be:	b4 01       	movw	r22, r8
    28c0:	0e 94 27 3f 	call	0x7e4e	; 0x7e4e <uctoaz>
    28c4:	84 e2       	ldi	r24, 0x24	; 36
    28c6:	91 e0       	ldi	r25, 0x01	; 1
    28c8:	b1 01       	movw	r22, r2
    28ca:	42 e0       	ldi	r20, 0x02	; 2
    28cc:	50 e0       	ldi	r21, 0x00	; 0
    28ce:	0e 94 47 6e 	call	0xdc8e	; 0xdc8e <strncpy>
    28d2:	80 91 5f 01 	lds	r24, 0x015F
    28d6:	b4 01       	movw	r22, r8
    28d8:	0e 94 27 3f 	call	0x7e4e	; 0x7e4e <uctoaz>
    28dc:	86 e2       	ldi	r24, 0x26	; 38
    28de:	91 e0       	ldi	r25, 0x01	; 1
    28e0:	b1 01       	movw	r22, r2
    28e2:	42 e0       	ldi	r20, 0x02	; 2
    28e4:	50 e0       	ldi	r21, 0x00	; 0
    28e6:	0e 94 47 6e 	call	0xdc8e	; 0xdc8e <strncpy>
    28ea:	80 91 5d 01 	lds	r24, 0x015D
    28ee:	b4 01       	movw	r22, r8
    28f0:	0e 94 27 3f 	call	0x7e4e	; 0x7e4e <uctoaz>
    28f4:	88 e2       	ldi	r24, 0x28	; 40
    28f6:	91 e0       	ldi	r25, 0x01	; 1
    28f8:	b1 01       	movw	r22, r2
    28fa:	42 e0       	ldi	r20, 0x02	; 2
    28fc:	50 e0       	ldi	r21, 0x00	; 0
    28fe:	0e 94 47 6e 	call	0xdc8e	; 0xdc8e <strncpy>
    2902:	c8 01       	movw	r24, r16
    2904:	b4 01       	movw	r22, r8
    2906:	0e 94 43 3f 	call	0x7e86	; 0x7e86 <ustoaz>
    290a:	8b e2       	ldi	r24, 0x2B	; 43
    290c:	91 e0       	ldi	r25, 0x01	; 1
    290e:	be 01       	movw	r22, r28
    2910:	69 5f       	subi	r22, 0xF9	; 249
    2912:	7f 4f       	sbci	r23, 0xFF	; 255
    2914:	43 e0       	ldi	r20, 0x03	; 3
    2916:	50 e0       	ldi	r21, 0x00	; 0
    2918:	0e 94 47 6e 	call	0xdc8e	; 0xdc8e <strncpy>
    291c:	80 91 e9 09 	lds	r24, 0x09E9
    2920:	90 91 ea 09 	lds	r25, 0x09EA
    2924:	01 97       	sbiw	r24, 0x01	; 1
    2926:	11 f0       	breq	.+4      	; 0x292c <main+0x464>
    2928:	86 e5       	ldi	r24, 0x56	; 86
    292a:	01 c0       	rjmp	.+2      	; 0x292e <main+0x466>
    292c:	81 e4       	ldi	r24, 0x41	; 65
    292e:	80 93 2f 01 	sts	0x012F, r24
    2932:	80 91 63 01 	lds	r24, 0x0163
    2936:	b4 01       	movw	r22, r8
    2938:	0e 94 27 3f 	call	0x7e4e	; 0x7e4e <uctoaz>
    293c:	87 e3       	ldi	r24, 0x37	; 55
    293e:	91 e0       	ldi	r25, 0x01	; 1
    2940:	b1 01       	movw	r22, r2
    2942:	42 e0       	ldi	r20, 0x02	; 2
    2944:	50 e0       	ldi	r21, 0x00	; 0
    2946:	0e 94 47 6e 	call	0xdc8e	; 0xdc8e <strncpy>
    294a:	80 91 65 01 	lds	r24, 0x0165
    294e:	8f 5f       	subi	r24, 0xFF	; 255
    2950:	b4 01       	movw	r22, r8
    2952:	0e 94 27 3f 	call	0x7e4e	; 0x7e4e <uctoaz>
    2956:	89 e3       	ldi	r24, 0x39	; 57
    2958:	91 e0       	ldi	r25, 0x01	; 1
    295a:	b1 01       	movw	r22, r2
    295c:	42 e0       	ldi	r20, 0x02	; 2
    295e:	50 e0       	ldi	r21, 0x00	; 0
    2960:	0e 94 47 6e 	call	0xdc8e	; 0xdc8e <strncpy>
    2964:	80 91 67 01 	lds	r24, 0x0167
    2968:	90 91 68 01 	lds	r25, 0x0168
    296c:	84 36       	cpi	r24, 0x64	; 100
    296e:	91 05       	cpc	r25, r1
    2970:	14 f0       	brlt	.+4      	; 0x2976 <main+0x4ae>
    2972:	84 56       	subi	r24, 0x64	; 100
    2974:	90 40       	sbci	r25, 0x00	; 0
    2976:	b4 01       	movw	r22, r8
    2978:	0e 94 43 3f 	call	0x7e86	; 0x7e86 <ustoaz>
    297c:	8b e3       	ldi	r24, 0x3B	; 59
    297e:	91 e0       	ldi	r25, 0x01	; 1
    2980:	be 01       	movw	r22, r28
    2982:	68 5f       	subi	r22, 0xF8	; 248
    2984:	7f 4f       	sbci	r23, 0xFF	; 255
    2986:	42 e0       	ldi	r20, 0x02	; 2
    2988:	50 e0       	ldi	r21, 0x00	; 0
    298a:	0e 94 47 6e 	call	0xdc8e	; 0xdc8e <strncpy>
    298e:	8d e1       	ldi	r24, 0x1D	; 29
    2990:	91 e0       	ldi	r25, 0x01	; 1
    2992:	b4 01       	movw	r22, r8
    2994:	0e 94 bd 57 	call	0xaf7a	; 0xaf7a <nmea_checksum>
    2998:	82 e4       	ldi	r24, 0x42	; 66
    299a:	91 e0       	ldi	r25, 0x01	; 1
    299c:	b4 01       	movw	r22, r8
    299e:	42 e0       	ldi	r20, 0x02	; 2
    29a0:	50 e0       	ldi	r21, 0x00	; 0
    29a2:	0e 94 47 6e 	call	0xdc8e	; 0xdc8e <strncpy>
    29a6:	8d e1       	ldi	r24, 0x1D	; 29
    29a8:	91 e0       	ldi	r25, 0x01	; 1
    29aa:	0e 94 5c 21 	call	0x42b8	; 0x42b8 <sio_setstr>
    29ae:	0e 94 71 22 	call	0x44e2	; 0x44e2 <arp_timer>
    29b2:	0e 94 d1 34 	call	0x69a2	; 0x69a2 <resolve_timer>
    29b6:	0e 94 8f 2e 	call	0x5d1e	; 0x5d1e <dhcp_sequense>
    29ba:	80 91 f8 07 	lds	r24, 0x07F8
    29be:	90 91 f9 07 	lds	r25, 0x07F9
    29c2:	89 2b       	or	r24, r25
    29c4:	61 f1       	breq	.+88     	; 0x2a1e <main+0x556>
    29c6:	80 91 e9 09 	lds	r24, 0x09E9
    29ca:	90 91 ea 09 	lds	r25, 0x09EA
    29ce:	01 97       	sbiw	r24, 0x01	; 1
    29d0:	e1 f4       	brne	.+56     	; 0x2a0a <main+0x542>
    29d2:	0e 94 08 12 	call	0x2410	; 0x2410 <calc_bcastremtime>
    29d6:	5b 01       	movw	r10, r22
    29d8:	6c 01       	movw	r12, r24
    29da:	16 16       	cp	r1, r22
    29dc:	17 06       	cpc	r1, r23
    29de:	18 06       	cpc	r1, r24
    29e0:	19 06       	cpc	r1, r25
    29e2:	4c f1       	brlt	.+82     	; 0x2a36 <main+0x56e>
    29e4:	0e 94 d8 39 	call	0x73b0	; 0x73b0 <ntp_broadcast>
    29e8:	88 23       	and	r24, r24
    29ea:	11 f0       	breq	.+4      	; 0x29f0 <main+0x528>
    29ec:	0e 94 74 53 	call	0xa6e8	; 0xa6e8 <update_eventlog>
    29f0:	a1 e8       	ldi	r26, 0x81	; 129
    29f2:	b1 e0       	ldi	r27, 0x01	; 1
    29f4:	eb e4       	ldi	r30, 0x4B	; 75
    29f6:	f1 e0       	ldi	r31, 0x01	; 1
    29f8:	82 e1       	ldi	r24, 0x12	; 18
    29fa:	01 90       	ld	r0, Z+
    29fc:	0d 92       	st	X+, r0
    29fe:	81 50       	subi	r24, 0x01	; 1
    2a00:	e1 f7       	brne	.-8      	; 0x29fa <main+0x532>
    2a02:	82 e0       	ldi	r24, 0x02	; 2
    2a04:	0e 94 0a 54 	call	0xa814	; 0xa814 <update_callog>
    2a08:	16 c0       	rjmp	.+44     	; 0x2a36 <main+0x56e>
    2a0a:	a1 e8       	ldi	r26, 0x81	; 129
    2a0c:	b1 e0       	ldi	r27, 0x01	; 1
    2a0e:	eb e4       	ldi	r30, 0x4B	; 75
    2a10:	f1 e0       	ldi	r31, 0x01	; 1
    2a12:	82 e1       	ldi	r24, 0x12	; 18
    2a14:	01 90       	ld	r0, Z+
    2a16:	0d 92       	st	X+, r0
    2a18:	81 50       	subi	r24, 0x01	; 1
    2a1a:	e1 f7       	brne	.-8      	; 0x2a14 <main+0x54c>
    2a1c:	09 c0       	rjmp	.+18     	; 0x2a30 <main+0x568>
    2a1e:	a1 e8       	ldi	r26, 0x81	; 129
    2a20:	b1 e0       	ldi	r27, 0x01	; 1
    2a22:	eb e4       	ldi	r30, 0x4B	; 75
    2a24:	f1 e0       	ldi	r31, 0x01	; 1
    2a26:	82 e1       	ldi	r24, 0x12	; 18
    2a28:	01 90       	ld	r0, Z+
    2a2a:	0d 92       	st	X+, r0
    2a2c:	81 50       	subi	r24, 0x01	; 1
    2a2e:	e1 f7       	brne	.-8      	; 0x2a28 <main+0x560>
    2a30:	aa 24       	eor	r10, r10
    2a32:	bb 24       	eor	r11, r11
    2a34:	65 01       	movw	r12, r10
    2a36:	80 91 c9 09 	lds	r24, 0x09C9
    2a3a:	88 23       	and	r24, r24
    2a3c:	d1 f4       	brne	.+52     	; 0x2a72 <main+0x5aa>
    2a3e:	80 91 e8 09 	lds	r24, 0x09E8
    2a42:	88 23       	and	r24, r24
    2a44:	79 f5       	brne	.+94     	; 0x2aa4 <main+0x5dc>
    2a46:	0e 94 23 12 	call	0x2446	; 0x2446 <calc_calremtime>
    2a4a:	7b 01       	movw	r14, r22
    2a4c:	8c 01       	movw	r16, r24
    2a4e:	16 16       	cp	r1, r22
    2a50:	17 06       	cpc	r1, r23
    2a52:	18 06       	cpc	r1, r24
    2a54:	19 06       	cpc	r1, r25
    2a56:	4c f1       	brlt	.+82     	; 0x2aaa <main+0x5e2>
    2a58:	80 91 0b 05 	lds	r24, 0x050B
    2a5c:	90 91 0c 05 	lds	r25, 0x050C
    2a60:	a0 91 0d 05 	lds	r26, 0x050D
    2a64:	b0 91 0e 05 	lds	r27, 0x050E
    2a68:	00 97       	sbiw	r24, 0x00	; 0
    2a6a:	a1 05       	cpc	r26, r1
    2a6c:	b1 05       	cpc	r27, r1
    2a6e:	e9 f0       	breq	.+58     	; 0x2aaa <main+0x5e2>
    2a70:	15 c0       	rjmp	.+42     	; 0x2a9c <main+0x5d4>
    2a72:	85 30       	cpi	r24, 0x05	; 5
    2a74:	b9 f4       	brne	.+46     	; 0x2aa4 <main+0x5dc>
    2a76:	80 91 e8 09 	lds	r24, 0x09E8
    2a7a:	88 23       	and	r24, r24
    2a7c:	99 f4       	brne	.+38     	; 0x2aa4 <main+0x5dc>
    2a7e:	80 91 bd 01 	lds	r24, 0x01BD
    2a82:	90 91 be 01 	lds	r25, 0x01BE
    2a86:	89 2b       	or	r24, r25
    2a88:	69 f4       	brne	.+26     	; 0x2aa4 <main+0x5dc>
    2a8a:	0e 94 23 12 	call	0x2446	; 0x2446 <calc_calremtime>
    2a8e:	7b 01       	movw	r14, r22
    2a90:	8c 01       	movw	r16, r24
    2a92:	16 16       	cp	r1, r22
    2a94:	17 06       	cpc	r1, r23
    2a96:	18 06       	cpc	r1, r24
    2a98:	19 06       	cpc	r1, r25
    2a9a:	3c f0       	brlt	.+14     	; 0x2aaa <main+0x5e2>
    2a9c:	81 e0       	ldi	r24, 0x01	; 1
    2a9e:	80 93 e8 09 	sts	0x09E8, r24
    2aa2:	03 c0       	rjmp	.+6      	; 0x2aaa <main+0x5e2>
    2aa4:	ee 24       	eor	r14, r14
    2aa6:	ff 24       	eor	r15, r15
    2aa8:	87 01       	movw	r16, r14
    2aaa:	40 91 d6 09 	lds	r20, 0x09D6
    2aae:	50 91 d7 09 	lds	r21, 0x09D7
    2ab2:	41 30       	cpi	r20, 0x01	; 1
    2ab4:	51 05       	cpc	r21, r1
    2ab6:	09 f0       	breq	.+2      	; 0x2aba <main+0x5f2>
    2ab8:	5f c0       	rjmp	.+190    	; 0x2b78 <main+0x6b0>
    2aba:	20 91 f4 09 	lds	r18, 0x09F4
    2abe:	22 23       	and	r18, r18
    2ac0:	49 f4       	brne	.+18     	; 0x2ad4 <main+0x60c>
    2ac2:	80 91 f8 09 	lds	r24, 0x09F8
    2ac6:	88 23       	and	r24, r24
    2ac8:	29 f4       	brne	.+10     	; 0x2ad4 <main+0x60c>
    2aca:	50 93 d9 09 	sts	0x09D9, r21
    2ace:	40 93 d8 09 	sts	0x09D8, r20
    2ad2:	56 c0       	rjmp	.+172    	; 0x2b80 <main+0x6b8>
    2ad4:	81 e0       	ldi	r24, 0x01	; 1
    2ad6:	90 e0       	ldi	r25, 0x00	; 0
    2ad8:	00 90 57 01 	lds	r0, 0x0157
    2adc:	02 c0       	rjmp	.+4      	; 0x2ae2 <main+0x61a>
    2ade:	88 0f       	add	r24, r24
    2ae0:	99 1f       	adc	r25, r25
    2ae2:	0a 94       	dec	r0
    2ae4:	e2 f7       	brpl	.-8      	; 0x2ade <main+0x616>
    2ae6:	48 2f       	mov	r20, r24
    2ae8:	28 23       	and	r18, r24
    2aea:	21 f1       	breq	.+72     	; 0x2b34 <main+0x66c>
    2aec:	80 91 f5 09 	lds	r24, 0x09F5
    2af0:	90 e0       	ldi	r25, 0x00	; 0
    2af2:	20 91 4f 01 	lds	r18, 0x014F
    2af6:	30 91 50 01 	lds	r19, 0x0150
    2afa:	82 17       	cp	r24, r18
    2afc:	93 07       	cpc	r25, r19
    2afe:	d1 f4       	brne	.+52     	; 0x2b34 <main+0x66c>
    2b00:	80 91 f6 09 	lds	r24, 0x09F6
    2b04:	90 e0       	ldi	r25, 0x00	; 0
    2b06:	20 91 4d 01 	lds	r18, 0x014D
    2b0a:	30 91 4e 01 	lds	r19, 0x014E
    2b0e:	82 17       	cp	r24, r18
    2b10:	93 07       	cpc	r25, r19
    2b12:	81 f4       	brne	.+32     	; 0x2b34 <main+0x66c>
    2b14:	80 91 f7 09 	lds	r24, 0x09F7
    2b18:	90 e0       	ldi	r25, 0x00	; 0
    2b1a:	20 91 4b 01 	lds	r18, 0x014B
    2b1e:	30 91 4c 01 	lds	r19, 0x014C
    2b22:	82 17       	cp	r24, r18
    2b24:	93 07       	cpc	r25, r19
    2b26:	31 f4       	brne	.+12     	; 0x2b34 <main+0x66c>
    2b28:	81 e0       	ldi	r24, 0x01	; 1
    2b2a:	90 e0       	ldi	r25, 0x00	; 0
    2b2c:	90 93 d9 09 	sts	0x09D9, r25
    2b30:	80 93 d8 09 	sts	0x09D8, r24
    2b34:	80 91 f8 09 	lds	r24, 0x09F8
    2b38:	48 23       	and	r20, r24
    2b3a:	11 f1       	breq	.+68     	; 0x2b80 <main+0x6b8>
    2b3c:	80 91 f9 09 	lds	r24, 0x09F9
    2b40:	90 e0       	ldi	r25, 0x00	; 0
    2b42:	20 91 4f 01 	lds	r18, 0x014F
    2b46:	30 91 50 01 	lds	r19, 0x0150
    2b4a:	82 17       	cp	r24, r18
    2b4c:	93 07       	cpc	r25, r19
    2b4e:	c1 f4       	brne	.+48     	; 0x2b80 <main+0x6b8>
    2b50:	80 91 fa 09 	lds	r24, 0x09FA
    2b54:	90 e0       	ldi	r25, 0x00	; 0
    2b56:	20 91 4d 01 	lds	r18, 0x014D
    2b5a:	30 91 4e 01 	lds	r19, 0x014E
    2b5e:	82 17       	cp	r24, r18
    2b60:	93 07       	cpc	r25, r19
    2b62:	71 f4       	brne	.+28     	; 0x2b80 <main+0x6b8>
    2b64:	80 91 fb 09 	lds	r24, 0x09FB
    2b68:	90 e0       	ldi	r25, 0x00	; 0
    2b6a:	20 91 4b 01 	lds	r18, 0x014B
    2b6e:	30 91 4c 01 	lds	r19, 0x014C
    2b72:	82 17       	cp	r24, r18
    2b74:	93 07       	cpc	r25, r19
    2b76:	21 f4       	brne	.+8      	; 0x2b80 <main+0x6b8>
    2b78:	10 92 d9 09 	sts	0x09D9, r1
    2b7c:	10 92 d8 09 	sts	0x09D8, r1
    2b80:	80 91 e6 09 	lds	r24, 0x09E6
    2b84:	8f 5f       	subi	r24, 0xFF	; 255
    2b86:	80 93 e6 09 	sts	0x09E6, r24
    2b8a:	8c 33       	cpi	r24, 0x3C	; 60
    2b8c:	a9 f4       	brne	.+42     	; 0x2bb8 <main+0x6f0>
    2b8e:	10 92 e6 09 	sts	0x09E6, r1
    2b92:	80 91 e2 09 	lds	r24, 0x09E2
    2b96:	90 91 e3 09 	lds	r25, 0x09E3
    2b9a:	a0 91 e4 09 	lds	r26, 0x09E4
    2b9e:	b0 91 e5 09 	lds	r27, 0x09E5
    2ba2:	01 96       	adiw	r24, 0x01	; 1
    2ba4:	a1 1d       	adc	r26, r1
    2ba6:	b1 1d       	adc	r27, r1
    2ba8:	80 93 e2 09 	sts	0x09E2, r24
    2bac:	90 93 e3 09 	sts	0x09E3, r25
    2bb0:	a0 93 e4 09 	sts	0x09E4, r26
    2bb4:	b0 93 e5 09 	sts	0x09E5, r27
    2bb8:	80 91 d8 09 	lds	r24, 0x09D8
    2bbc:	90 91 d9 09 	lds	r25, 0x09D9
    2bc0:	01 97       	sbiw	r24, 0x01	; 1
    2bc2:	29 f4       	brne	.+10     	; 0x2bce <main+0x706>
    2bc4:	8b e4       	ldi	r24, 0x4B	; 75
    2bc6:	91 e0       	ldi	r25, 0x01	; 1
    2bc8:	0e 94 e3 4e 	call	0x9dc6	; 0x9dc6 <disp7seg>
    2bcc:	02 c0       	rjmp	.+4      	; 0x2bd2 <main+0x70a>
    2bce:	0e 94 d7 4e 	call	0x9dae	; 0x9dae <dispoff7seg>
    2bd2:	80 91 c7 09 	lds	r24, 0x09C7
    2bd6:	88 23       	and	r24, r24
    2bd8:	19 f4       	brne	.+6      	; 0x2be0 <main+0x718>
    2bda:	0e 94 88 51 	call	0xa310	; 0xa310 <disp_nowtime>
    2bde:	33 c0       	rjmp	.+102    	; 0x2c46 <main+0x77e>
    2be0:	84 30       	cpi	r24, 0x04	; 4
    2be2:	19 f4       	brne	.+6      	; 0x2bea <main+0x722>
    2be4:	0e 94 64 50 	call	0xa0c8	; 0xa0c8 <dhcpdisp>
    2be8:	2e c0       	rjmp	.+92     	; 0x2c46 <main+0x77e>
    2bea:	85 30       	cpi	r24, 0x05	; 5
    2bec:	41 f5       	brne	.+80     	; 0x2c3e <main+0x776>
    2bee:	80 91 c9 09 	lds	r24, 0x09C9
    2bf2:	82 30       	cpi	r24, 0x02	; 2
    2bf4:	59 f0       	breq	.+22     	; 0x2c0c <main+0x744>
    2bf6:	83 30       	cpi	r24, 0x03	; 3
    2bf8:	49 f0       	breq	.+18     	; 0x2c0c <main+0x744>
    2bfa:	84 30       	cpi	r24, 0x04	; 4
    2bfc:	39 f0       	breq	.+14     	; 0x2c0c <main+0x744>
    2bfe:	81 30       	cpi	r24, 0x01	; 1
    2c00:	29 f0       	breq	.+10     	; 0x2c0c <main+0x744>
    2c02:	80 91 e8 09 	lds	r24, 0x09E8
    2c06:	88 23       	and	r24, r24
    2c08:	09 f4       	brne	.+2      	; 0x2c0c <main+0x744>
    2c0a:	76 c2       	rjmp	.+1260   	; 0x30f8 <main+0xc30>
    2c0c:	80 e0       	ldi	r24, 0x00	; 0
    2c0e:	0e 94 87 4f 	call	0x9f0e	; 0x9f0e <disp_notime>
    2c12:	80 91 f8 07 	lds	r24, 0x07F8
    2c16:	90 91 f9 07 	lds	r25, 0x07F9
    2c1a:	89 2b       	or	r24, r25
    2c1c:	61 f0       	breq	.+24     	; 0x2c36 <main+0x76e>
    2c1e:	80 91 e9 09 	lds	r24, 0x09E9
    2c22:	90 91 ea 09 	lds	r25, 0x09EA
    2c26:	01 97       	sbiw	r24, 0x01	; 1
    2c28:	31 f4       	brne	.+12     	; 0x2c36 <main+0x76e>
    2c2a:	81 e0       	ldi	r24, 0x01	; 1
    2c2c:	b6 01       	movw	r22, r12
    2c2e:	a5 01       	movw	r20, r10
    2c30:	0e 94 1a 50 	call	0xa034	; 0xa034 <disp_remtime>
    2c34:	08 c0       	rjmp	.+16     	; 0x2c46 <main+0x77e>
    2c36:	81 e0       	ldi	r24, 0x01	; 1
    2c38:	0e 94 87 4f 	call	0x9f0e	; 0x9f0e <disp_notime>
    2c3c:	04 c0       	rjmp	.+8      	; 0x2c46 <main+0x77e>
    2c3e:	86 30       	cpi	r24, 0x06	; 6
    2c40:	11 f4       	brne	.+4      	; 0x2c46 <main+0x77e>
    2c42:	0e 94 a8 4f 	call	0x9f50	; 0x9f50 <disp_opetime>
    2c46:	91 e0       	ldi	r25, 0x01	; 1
    2c48:	49 16       	cp	r4, r25
    2c4a:	51 04       	cpc	r5, r1
    2c4c:	09 f0       	breq	.+2      	; 0x2c50 <main+0x788>
    2c4e:	50 c0       	rjmp	.+160    	; 0x2cf0 <main+0x828>
    2c50:	80 91 c9 09 	lds	r24, 0x09C9
    2c54:	88 23       	and	r24, r24
    2c56:	29 f4       	brne	.+10     	; 0x2c62 <main+0x79a>
    2c58:	10 92 ac 01 	sts	0x01AC, r1
    2c5c:	10 92 ab 01 	sts	0x01AB, r1
    2c60:	0b c0       	rjmp	.+22     	; 0x2c78 <main+0x7b0>
    2c62:	85 30       	cpi	r24, 0x05	; 5
    2c64:	49 f0       	breq	.+18     	; 0x2c78 <main+0x7b0>
    2c66:	81 30       	cpi	r24, 0x01	; 1
    2c68:	71 f5       	brne	.+92     	; 0x2cc6 <main+0x7fe>
    2c6a:	0e 94 0a 54 	call	0xa814	; 0xa814 <update_callog>
    2c6e:	10 92 ac 01 	sts	0x01AC, r1
    2c72:	10 92 ab 01 	sts	0x01AB, r1
    2c76:	27 c0       	rjmp	.+78     	; 0x2cc6 <main+0x7fe>
    2c78:	80 91 fa 07 	lds	r24, 0x07FA
    2c7c:	90 91 fb 07 	lds	r25, 0x07FB
    2c80:	20 91 f3 09 	lds	r18, 0x09F3
    2c84:	21 30       	cpi	r18, 0x01	; 1
    2c86:	19 f4       	brne	.+6      	; 0x2c8e <main+0x7c6>
    2c88:	95 95       	asr	r25
    2c8a:	87 95       	ror	r24
    2c8c:	0c c0       	rjmp	.+24     	; 0x2ca6 <main+0x7de>
    2c8e:	22 30       	cpi	r18, 0x02	; 2
    2c90:	51 f4       	brne	.+20     	; 0x2ca6 <main+0x7de>
    2c92:	88 0f       	add	r24, r24
    2c94:	99 1f       	adc	r25, r25
    2c96:	20 91 a9 01 	lds	r18, 0x01A9
    2c9a:	30 91 aa 01 	lds	r19, 0x01AA
    2c9e:	28 17       	cp	r18, r24
    2ca0:	39 07       	cpc	r19, r25
    2ca2:	08 f4       	brcc	.+2      	; 0x2ca6 <main+0x7de>
    2ca4:	c9 01       	movw	r24, r18
    2ca6:	80 34       	cpi	r24, 0x40	; 64
    2ca8:	91 05       	cpc	r25, r1
    2caa:	14 f4       	brge	.+4      	; 0x2cb0 <main+0x7e8>
    2cac:	80 e4       	ldi	r24, 0x40	; 64
    2cae:	90 e0       	ldi	r25, 0x00	; 0
    2cb0:	0e 94 40 12 	call	0x2480	; 0x2480 <change_calinterval>
    2cb4:	af e6       	ldi	r26, 0x6F	; 111
    2cb6:	b1 e0       	ldi	r27, 0x01	; 1
    2cb8:	eb e4       	ldi	r30, 0x4B	; 75
    2cba:	f1 e0       	ldi	r31, 0x01	; 1
    2cbc:	82 e1       	ldi	r24, 0x12	; 18
    2cbe:	01 90       	ld	r0, Z+
    2cc0:	0d 92       	st	X+, r0
    2cc2:	81 50       	subi	r24, 0x01	; 1
    2cc4:	e1 f7       	brne	.-8      	; 0x2cbe <main+0x7f6>
    2cc6:	10 92 e8 09 	sts	0x09E8, r1
    2cca:	80 91 49 01 	lds	r24, 0x0149
    2cce:	90 91 4a 01 	lds	r25, 0x014A
    2cd2:	01 97       	sbiw	r24, 0x01	; 1
    2cd4:	69 f4       	brne	.+26     	; 0x2cf0 <main+0x828>
    2cd6:	10 92 4a 01 	sts	0x014A, r1
    2cda:	10 92 49 01 	sts	0x0149, r1
    2cde:	a1 e8       	ldi	r26, 0x81	; 129
    2ce0:	b1 e0       	ldi	r27, 0x01	; 1
    2ce2:	eb e4       	ldi	r30, 0x4B	; 75
    2ce4:	f1 e0       	ldi	r31, 0x01	; 1
    2ce6:	82 e1       	ldi	r24, 0x12	; 18
    2ce8:	01 90       	ld	r0, Z+
    2cea:	0d 92       	st	X+, r0
    2cec:	81 50       	subi	r24, 0x01	; 1
    2cee:	e1 f7       	brne	.-8      	; 0x2ce8 <main+0x820>
    2cf0:	80 91 b0 09 	lds	r24, 0x09B0
    2cf4:	88 23       	and	r24, r24
    2cf6:	d9 f0       	breq	.+54     	; 0x2d2e <main+0x866>
    2cf8:	0e 94 22 35 	call	0x6a44	; 0x6a44 <resolve_seq>
    2cfc:	18 2f       	mov	r17, r24
    2cfe:	88 23       	and	r24, r24
    2d00:	e1 f0       	breq	.+56     	; 0x2d3a <main+0x872>
    2d02:	80 51       	subi	r24, 0x10	; 16
    2d04:	8b 30       	cpi	r24, 0x0B	; 11
    2d06:	58 f4       	brcc	.+22     	; 0x2d1e <main+0x856>
    2d08:	af e6       	ldi	r26, 0x6F	; 111
    2d0a:	b1 e0       	ldi	r27, 0x01	; 1
    2d0c:	eb e4       	ldi	r30, 0x4B	; 75
    2d0e:	f1 e0       	ldi	r31, 0x01	; 1
    2d10:	82 e1       	ldi	r24, 0x12	; 18
    2d12:	01 90       	ld	r0, Z+
    2d14:	0d 92       	st	X+, r0
    2d16:	81 50       	subi	r24, 0x01	; 1
    2d18:	e1 f7       	brne	.-8      	; 0x2d12 <main+0x84a>
    2d1a:	0e 94 96 38 	call	0x712c	; 0x712c <nextntpsrv>
    2d1e:	10 92 b0 09 	sts	0x09B0, r1
    2d22:	10 92 e8 09 	sts	0x09E8, r1
    2d26:	81 2f       	mov	r24, r17
    2d28:	0e 94 74 53 	call	0xa6e8	; 0xa6e8 <update_eventlog>
    2d2c:	06 c0       	rjmp	.+12     	; 0x2d3a <main+0x872>
    2d2e:	10 92 af 09 	sts	0x09AF, r1
    2d32:	10 92 b2 09 	sts	0x09B2, r1
    2d36:	10 92 b1 09 	sts	0x09B1, r1
    2d3a:	80 91 c9 09 	lds	r24, 0x09C9
    2d3e:	82 30       	cpi	r24, 0x02	; 2
    2d40:	80 f4       	brcc	.+32     	; 0x2d62 <main+0x89a>
    2d42:	0e 94 30 39 	call	0x7260	; 0x7260 <ntp_reqseq>
    2d46:	18 2f       	mov	r17, r24
    2d48:	88 23       	and	r24, r24
    2d4a:	59 f0       	breq	.+22     	; 0x2d62 <main+0x89a>
    2d4c:	10 92 b0 09 	sts	0x09B0, r1
    2d50:	10 92 e8 09 	sts	0x09E8, r1
    2d54:	80 e4       	ldi	r24, 0x40	; 64
    2d56:	90 e0       	ldi	r25, 0x00	; 0
    2d58:	0e 94 40 12 	call	0x2480	; 0x2480 <change_calinterval>
    2d5c:	81 2f       	mov	r24, r17
    2d5e:	0e 94 74 53 	call	0xa6e8	; 0xa6e8 <update_eventlog>
    2d62:	21 e0       	ldi	r18, 0x01	; 1
    2d64:	62 16       	cp	r6, r18
    2d66:	71 04       	cpc	r7, r1
    2d68:	f1 f4       	brne	.+60     	; 0x2da6 <main+0x8de>
    2d6a:	80 91 20 05 	lds	r24, 0x0520
    2d6e:	88 23       	and	r24, r24
    2d70:	59 f0       	breq	.+22     	; 0x2d88 <main+0x8c0>
    2d72:	80 91 31 05 	lds	r24, 0x0531
    2d76:	81 50       	subi	r24, 0x01	; 1
    2d78:	80 93 31 05 	sts	0x0531, r24
    2d7c:	88 23       	and	r24, r24
    2d7e:	21 f4       	brne	.+8      	; 0x2d88 <main+0x8c0>
    2d80:	80 e0       	ldi	r24, 0x00	; 0
    2d82:	90 e0       	ldi	r25, 0x00	; 0
    2d84:	0e 94 9a 28 	call	0x5134	; 0x5134 <tcp_resetsocket>
    2d88:	80 91 32 05 	lds	r24, 0x0532
    2d8c:	88 23       	and	r24, r24
    2d8e:	59 f0       	breq	.+22     	; 0x2da6 <main+0x8de>
    2d90:	80 91 43 05 	lds	r24, 0x0543
    2d94:	81 50       	subi	r24, 0x01	; 1
    2d96:	80 93 43 05 	sts	0x0543, r24
    2d9a:	88 23       	and	r24, r24
    2d9c:	21 f4       	brne	.+8      	; 0x2da6 <main+0x8de>
    2d9e:	81 e0       	ldi	r24, 0x01	; 1
    2da0:	90 e0       	ldi	r25, 0x00	; 0
    2da2:	0e 94 9a 28 	call	0x5134	; 0x5134 <tcp_resetsocket>
    2da6:	80 91 d4 09 	lds	r24, 0x09D4
    2daa:	90 91 d5 09 	lds	r25, 0x09D5
    2dae:	01 97       	sbiw	r24, 0x01	; 1
    2db0:	11 f4       	brne	.+4      	; 0x2db6 <main+0x8ee>
    2db2:	0e 94 70 52 	call	0xa4e0	; 0xa4e0 <redraw>
    2db6:	10 92 d5 09 	sts	0x09D5, r1
    2dba:	10 92 d4 09 	sts	0x09D4, r1
    2dbe:	0e 94 c6 1f 	call	0x3f8c	; 0x3f8c <getcount1ms>
    2dc2:	2d 85       	ldd	r18, Y+13	; 0x0d
    2dc4:	3e 85       	ldd	r19, Y+14	; 0x0e
    2dc6:	82 1b       	sub	r24, r18
    2dc8:	93 0b       	sbc	r25, r19
    2dca:	40 97       	sbiw	r24, 0x10	; 16
    2dcc:	08 f4       	brcc	.+2      	; 0x2dd0 <main+0x908>
    2dce:	e1 c0       	rjmp	.+450    	; 0x2f92 <main+0xaca>
    2dd0:	0e 94 c6 1f 	call	0x3f8c	; 0x3f8c <getcount1ms>
    2dd4:	9e 87       	std	Y+14, r25	; 0x0e
    2dd6:	8d 87       	std	Y+13, r24	; 0x0d
    2dd8:	0e 94 49 20 	call	0x4092	; 0x4092 <key_check>
    2ddc:	0e 94 58 20 	call	0x40b0	; 0x40b0 <key_sense>
    2de0:	48 2f       	mov	r20, r24
    2de2:	88 23       	and	r24, r24
    2de4:	09 f4       	brne	.+2      	; 0x2de8 <main+0x920>
    2de6:	d5 c0       	rjmp	.+426    	; 0x2f92 <main+0xaca>
    2de8:	17 98       	cbi	0x02, 7	; 2
    2dea:	80 91 ce 09 	lds	r24, 0x09CE
    2dee:	90 91 cf 09 	lds	r25, 0x09CF
    2df2:	9f 77       	andi	r25, 0x7F	; 127
    2df4:	90 93 cf 09 	sts	0x09CF, r25
    2df8:	80 93 ce 09 	sts	0x09CE, r24
    2dfc:	00 91 c7 09 	lds	r16, 0x09C7
    2e00:	80 91 47 01 	lds	r24, 0x0147
    2e04:	90 91 48 01 	lds	r25, 0x0148
    2e08:	01 97       	sbiw	r24, 0x01	; 1
    2e0a:	09 f0       	breq	.+2      	; 0x2e0e <main+0x946>
    2e0c:	7b c0       	rjmp	.+246    	; 0x2f04 <main+0xa3c>
    2e0e:	4e 30       	cpi	r20, 0x0E	; 14
    2e10:	59 f4       	brne	.+22     	; 0x2e28 <main+0x960>
    2e12:	0e 94 a0 1e 	call	0x3d40	; 0x3d40 <lcd_cls>
    2e16:	85 e0       	ldi	r24, 0x05	; 5
    2e18:	0e 94 9b 4f 	call	0x9f36	; 0x9f36 <disp_message1>
    2e1c:	10 92 48 01 	sts	0x0148, r1
    2e20:	10 92 47 01 	sts	0x0147, r1
    2e24:	5f 9a       	sbi	0x0b, 7	; 11
    2e26:	56 c0       	rjmp	.+172    	; 0x2ed4 <main+0xa0c>
    2e28:	44 31       	cpi	r20, 0x14	; 20
    2e2a:	81 f4       	brne	.+32     	; 0x2e4c <main+0x984>
    2e2c:	80 91 c8 09 	lds	r24, 0x09C8
    2e30:	88 23       	and	r24, r24
    2e32:	09 f0       	breq	.+2      	; 0x2e36 <main+0x96e>
    2e34:	79 c0       	rjmp	.+242    	; 0x2f28 <main+0xa60>
    2e36:	0e 94 e0 5e 	call	0xbdc0	; 0xbdc0 <parameter>
    2e3a:	10 92 c8 09 	sts	0x09C8, r1
    2e3e:	86 e0       	ldi	r24, 0x06	; 6
    2e40:	80 93 1b 01 	sts	0x011B, r24
    2e44:	21 e0       	ldi	r18, 0x01	; 1
    2e46:	30 e0       	ldi	r19, 0x00	; 0
    2e48:	00 e0       	ldi	r16, 0x00	; 0
    2e4a:	8c c0       	rjmp	.+280    	; 0x2f64 <main+0xa9c>
    2e4c:	41 31       	cpi	r20, 0x11	; 17
    2e4e:	49 f4       	brne	.+18     	; 0x2e62 <main+0x99a>
    2e50:	0f 5f       	subi	r16, 0xFF	; 255
    2e52:	80 91 1b 01 	lds	r24, 0x011B
    2e56:	80 17       	cp	r24, r16
    2e58:	08 f0       	brcs	.+2      	; 0x2e5c <main+0x994>
    2e5a:	54 c1       	rjmp	.+680    	; 0x3104 <main+0xc3c>
    2e5c:	00 91 c8 09 	lds	r16, 0x09C8
    2e60:	51 c1       	rjmp	.+674    	; 0x3104 <main+0xc3c>
    2e62:	42 31       	cpi	r20, 0x12	; 18
    2e64:	49 f4       	brne	.+18     	; 0x2e78 <main+0x9b0>
    2e66:	80 91 c8 09 	lds	r24, 0x09C8
    2e6a:	08 17       	cp	r16, r24
    2e6c:	19 f4       	brne	.+6      	; 0x2e74 <main+0x9ac>
    2e6e:	00 91 1b 01 	lds	r16, 0x011B
    2e72:	48 c1       	rjmp	.+656    	; 0x3104 <main+0xc3c>
    2e74:	01 50       	subi	r16, 0x01	; 1
    2e76:	46 c1       	rjmp	.+652    	; 0x3104 <main+0xc3c>
    2e78:	43 31       	cpi	r20, 0x13	; 19
    2e7a:	d9 f4       	brne	.+54     	; 0x2eb2 <main+0x9ea>
    2e7c:	80 91 c8 09 	lds	r24, 0x09C8
    2e80:	88 23       	and	r24, r24
    2e82:	39 f4       	brne	.+14     	; 0x2e92 <main+0x9ca>
    2e84:	87 e0       	ldi	r24, 0x07	; 7
    2e86:	80 93 c8 09 	sts	0x09C8, r24
    2e8a:	86 e1       	ldi	r24, 0x16	; 22
    2e8c:	80 93 1b 01 	sts	0x011B, r24
    2e90:	2c c0       	rjmp	.+88     	; 0x2eea <main+0xa22>
    2e92:	87 30       	cpi	r24, 0x07	; 7
    2e94:	39 f4       	brne	.+14     	; 0x2ea4 <main+0x9dc>
    2e96:	87 e1       	ldi	r24, 0x17	; 23
    2e98:	80 93 c8 09 	sts	0x09C8, r24
    2e9c:	86 e2       	ldi	r24, 0x26	; 38
    2e9e:	80 93 1b 01 	sts	0x011B, r24
    2ea2:	2c c0       	rjmp	.+88     	; 0x2efc <main+0xa34>
    2ea4:	10 92 c8 09 	sts	0x09C8, r1
    2ea8:	86 e0       	ldi	r24, 0x06	; 6
    2eaa:	80 93 1b 01 	sts	0x011B, r24
    2eae:	00 e0       	ldi	r16, 0x00	; 0
    2eb0:	2c c1       	rjmp	.+600    	; 0x310a <main+0xc42>
    2eb2:	46 31       	cpi	r20, 0x16	; 22
    2eb4:	91 f4       	brne	.+36     	; 0x2eda <main+0xa12>
    2eb6:	80 91 e9 09 	lds	r24, 0x09E9
    2eba:	90 91 ea 09 	lds	r25, 0x09EA
    2ebe:	01 97       	sbiw	r24, 0x01	; 1
    2ec0:	99 f5       	brne	.+102    	; 0x2f28 <main+0xa60>
    2ec2:	0e 94 d8 39 	call	0x73b0	; 0x73b0 <ntp_broadcast>
    2ec6:	88 23       	and	r24, r24
    2ec8:	11 f0       	breq	.+4      	; 0x2ece <main+0xa06>
    2eca:	0e 94 74 53 	call	0xa6e8	; 0xa6e8 <update_eventlog>
    2ece:	82 e0       	ldi	r24, 0x02	; 2
    2ed0:	0e 94 0a 54 	call	0xa814	; 0xa814 <update_callog>
    2ed4:	20 e0       	ldi	r18, 0x00	; 0
    2ed6:	30 e0       	ldi	r19, 0x00	; 0
    2ed8:	45 c0       	rjmp	.+138    	; 0x2f64 <main+0xa9c>
    2eda:	48 31       	cpi	r20, 0x18	; 24
    2edc:	99 f4       	brne	.+38     	; 0x2f04 <main+0xa3c>
    2ede:	80 91 c8 09 	lds	r24, 0x09C8
    2ee2:	87 30       	cpi	r24, 0x07	; 7
    2ee4:	31 f4       	brne	.+12     	; 0x2ef2 <main+0xa2a>
    2ee6:	0e 94 5e 53 	call	0xa6bc	; 0xa6bc <clear_eventlog>
    2eea:	21 e0       	ldi	r18, 0x01	; 1
    2eec:	30 e0       	ldi	r19, 0x00	; 0
    2eee:	07 e0       	ldi	r16, 0x07	; 7
    2ef0:	39 c0       	rjmp	.+114    	; 0x2f64 <main+0xa9c>
    2ef2:	87 31       	cpi	r24, 0x17	; 23
    2ef4:	09 f0       	breq	.+2      	; 0x2ef8 <main+0xa30>
    2ef6:	09 c1       	rjmp	.+530    	; 0x310a <main+0xc42>
    2ef8:	0e 94 69 53 	call	0xa6d2	; 0xa6d2 <clear_callog>
    2efc:	21 e0       	ldi	r18, 0x01	; 1
    2efe:	30 e0       	ldi	r19, 0x00	; 0
    2f00:	07 e1       	ldi	r16, 0x17	; 23
    2f02:	30 c0       	rjmp	.+96     	; 0x2f64 <main+0xa9c>
    2f04:	4f 30       	cpi	r20, 0x0F	; 15
    2f06:	81 f4       	brne	.+32     	; 0x2f28 <main+0xa60>
    2f08:	0e 94 65 1f 	call	0x3eca	; 0x3eca <lcd_init>
    2f0c:	10 92 c8 09 	sts	0x09C8, r1
    2f10:	86 e0       	ldi	r24, 0x06	; 6
    2f12:	80 93 1b 01 	sts	0x011B, r24
    2f16:	81 e0       	ldi	r24, 0x01	; 1
    2f18:	90 e0       	ldi	r25, 0x00	; 0
    2f1a:	90 93 48 01 	sts	0x0148, r25
    2f1e:	80 93 47 01 	sts	0x0147, r24
    2f22:	5f 98       	cbi	0x0b, 7	; 11
    2f24:	00 e0       	ldi	r16, 0x00	; 0
    2f26:	21 c0       	rjmp	.+66     	; 0x2f6a <main+0xaa2>
    2f28:	20 e0       	ldi	r18, 0x00	; 0
    2f2a:	30 e0       	ldi	r19, 0x00	; 0
    2f2c:	40 31       	cpi	r20, 0x10	; 16
    2f2e:	d1 f4       	brne	.+52     	; 0x2f64 <main+0xa9c>
    2f30:	80 91 c9 09 	lds	r24, 0x09C9
    2f34:	82 30       	cpi	r24, 0x02	; 2
    2f36:	88 f4       	brcc	.+34     	; 0x2f5a <main+0xa92>
    2f38:	80 91 e8 09 	lds	r24, 0x09E8
    2f3c:	88 23       	and	r24, r24
    2f3e:	91 f4       	brne	.+36     	; 0x2f64 <main+0xa9c>
    2f40:	80 91 0b 05 	lds	r24, 0x050B
    2f44:	90 91 0c 05 	lds	r25, 0x050C
    2f48:	a0 91 0d 05 	lds	r26, 0x050D
    2f4c:	b0 91 0e 05 	lds	r27, 0x050E
    2f50:	00 97       	sbiw	r24, 0x00	; 0
    2f52:	a1 05       	cpc	r26, r1
    2f54:	b1 05       	cpc	r27, r1
    2f56:	31 f0       	breq	.+12     	; 0x2f64 <main+0xa9c>
    2f58:	02 c0       	rjmp	.+4      	; 0x2f5e <main+0xa96>
    2f5a:	85 30       	cpi	r24, 0x05	; 5
    2f5c:	19 f4       	brne	.+6      	; 0x2f64 <main+0xa9c>
    2f5e:	81 e0       	ldi	r24, 0x01	; 1
    2f60:	80 93 e8 09 	sts	0x09E8, r24
    2f64:	21 30       	cpi	r18, 0x01	; 1
    2f66:	31 05       	cpc	r19, r1
    2f68:	a1 f4       	brne	.+40     	; 0x2f92 <main+0xaca>
    2f6a:	00 93 c7 09 	sts	0x09C7, r16
    2f6e:	80 91 c8 09 	lds	r24, 0x09C8
    2f72:	87 30       	cpi	r24, 0x07	; 7
    2f74:	29 f4       	brne	.+10     	; 0x2f80 <main+0xab8>
    2f76:	80 2f       	mov	r24, r16
    2f78:	87 50       	subi	r24, 0x07	; 7
    2f7a:	0e 94 a4 50 	call	0xa148	; 0xa148 <disp_eventlog>
    2f7e:	09 c0       	rjmp	.+18     	; 0x2f92 <main+0xaca>
    2f80:	87 31       	cpi	r24, 0x17	; 23
    2f82:	29 f4       	brne	.+10     	; 0x2f8e <main+0xac6>
    2f84:	80 2f       	mov	r24, r16
    2f86:	87 51       	subi	r24, 0x17	; 23
    2f88:	0e 94 15 51 	call	0xa22a	; 0xa22a <disp_callog>
    2f8c:	02 c0       	rjmp	.+4      	; 0x2f92 <main+0xaca>
    2f8e:	0e 94 70 52 	call	0xa4e0	; 0xa4e0 <redraw>
    2f92:	80 91 ab 01 	lds	r24, 0x01AB
    2f96:	88 23       	and	r24, r24
    2f98:	21 f0       	breq	.+8      	; 0x2fa2 <main+0xada>
    2f9a:	80 91 ab 01 	lds	r24, 0x01AB
    2f9e:	81 30       	cpi	r24, 0x01	; 1
    2fa0:	e1 f4       	brne	.+56     	; 0x2fda <main+0xb12>
    2fa2:	21 e0       	ldi	r18, 0x01	; 1
    2fa4:	30 e0       	ldi	r19, 0x00	; 0
    2fa6:	30 93 ea 09 	sts	0x09EA, r19
    2faa:	20 93 e9 09 	sts	0x09E9, r18
    2fae:	80 91 c9 09 	lds	r24, 0x09C9
    2fb2:	82 30       	cpi	r24, 0x02	; 2
    2fb4:	31 f0       	breq	.+12     	; 0x2fc2 <main+0xafa>
    2fb6:	83 30       	cpi	r24, 0x03	; 3
    2fb8:	21 f0       	breq	.+8      	; 0x2fc2 <main+0xafa>
    2fba:	84 30       	cpi	r24, 0x04	; 4
    2fbc:	11 f0       	breq	.+4      	; 0x2fc2 <main+0xafa>
    2fbe:	85 30       	cpi	r24, 0x05	; 5
    2fc0:	29 f4       	brne	.+10     	; 0x2fcc <main+0xb04>
    2fc2:	10 92 07 01 	sts	0x0107, r1
    2fc6:	81 e0       	ldi	r24, 0x01	; 1
    2fc8:	80 93 08 01 	sts	0x0108, r24
    2fcc:	15 9a       	sbi	0x02, 5	; 2
    2fce:	80 91 ce 09 	lds	r24, 0x09CE
    2fd2:	90 91 cf 09 	lds	r25, 0x09CF
    2fd6:	81 60       	ori	r24, 0x01	; 1
    2fd8:	23 c0       	rjmp	.+70     	; 0x3020 <main+0xb58>
    2fda:	80 91 ab 01 	lds	r24, 0x01AB
    2fde:	83 30       	cpi	r24, 0x03	; 3
    2fe0:	29 f4       	brne	.+10     	; 0x2fec <main+0xb24>
    2fe2:	84 e0       	ldi	r24, 0x04	; 4
    2fe4:	80 93 ab 01 	sts	0x01AB, r24
    2fe8:	85 e2       	ldi	r24, 0x25	; 37
    2fea:	08 c0       	rjmp	.+16     	; 0x2ffc <main+0xb34>
    2fec:	80 91 ab 01 	lds	r24, 0x01AB
    2ff0:	82 30       	cpi	r24, 0x02	; 2
    2ff2:	31 f4       	brne	.+12     	; 0x3000 <main+0xb38>
    2ff4:	84 e0       	ldi	r24, 0x04	; 4
    2ff6:	80 93 ab 01 	sts	0x01AB, r24
    2ffa:	86 e2       	ldi	r24, 0x26	; 38
    2ffc:	0e 94 74 53 	call	0xa6e8	; 0xa6e8 <update_eventlog>
    3000:	10 92 ea 09 	sts	0x09EA, r1
    3004:	10 92 e9 09 	sts	0x09E9, r1
    3008:	30 ec       	ldi	r19, 0xC0	; 192
    300a:	30 93 07 01 	sts	0x0107, r19
    300e:	80 e1       	ldi	r24, 0x10	; 16
    3010:	80 93 08 01 	sts	0x0108, r24
    3014:	15 98       	cbi	0x02, 5	; 2
    3016:	80 91 ce 09 	lds	r24, 0x09CE
    301a:	90 91 cf 09 	lds	r25, 0x09CF
    301e:	8e 7f       	andi	r24, 0xFE	; 254
    3020:	90 93 cf 09 	sts	0x09CF, r25
    3024:	80 93 ce 09 	sts	0x09CE, r24
    3028:	80 91 f8 07 	lds	r24, 0x07F8
    302c:	90 91 f9 07 	lds	r25, 0x07F9
    3030:	89 2b       	or	r24, r25
    3032:	a1 f0       	breq	.+40     	; 0x305c <main+0xb94>
    3034:	80 91 e9 09 	lds	r24, 0x09E9
    3038:	90 91 ea 09 	lds	r25, 0x09EA
    303c:	20 91 ce 09 	lds	r18, 0x09CE
    3040:	30 91 cf 09 	lds	r19, 0x09CF
    3044:	01 97       	sbiw	r24, 0x01	; 1
    3046:	19 f4       	brne	.+6      	; 0x304e <main+0xb86>
    3048:	14 9a       	sbi	0x02, 4	; 2
    304a:	32 60       	ori	r19, 0x02	; 2
    304c:	02 c0       	rjmp	.+4      	; 0x3052 <main+0xb8a>
    304e:	14 98       	cbi	0x02, 4	; 2
    3050:	3d 7f       	andi	r19, 0xFD	; 253
    3052:	30 93 cf 09 	sts	0x09CF, r19
    3056:	20 93 ce 09 	sts	0x09CE, r18
    305a:	0a c0       	rjmp	.+20     	; 0x3070 <main+0xba8>
    305c:	14 98       	cbi	0x02, 4	; 2
    305e:	80 91 ce 09 	lds	r24, 0x09CE
    3062:	90 91 cf 09 	lds	r25, 0x09CF
    3066:	9d 7f       	andi	r25, 0xFD	; 253
    3068:	90 93 cf 09 	sts	0x09CF, r25
    306c:	80 93 ce 09 	sts	0x09CE, r24
    3070:	80 91 3a 08 	lds	r24, 0x083A
    3074:	88 23       	and	r24, r24
    3076:	99 f0       	breq	.+38     	; 0x309e <main+0xbd6>
    3078:	80 91 0b 05 	lds	r24, 0x050B
    307c:	90 91 0c 05 	lds	r25, 0x050C
    3080:	a0 91 0d 05 	lds	r26, 0x050D
    3084:	b0 91 0e 05 	lds	r27, 0x050E
    3088:	00 97       	sbiw	r24, 0x00	; 0
    308a:	a1 05       	cpc	r26, r1
    308c:	b1 05       	cpc	r27, r1
    308e:	39 f0       	breq	.+14     	; 0x309e <main+0xbd6>
    3090:	13 9a       	sbi	0x02, 3	; 2
    3092:	80 91 ce 09 	lds	r24, 0x09CE
    3096:	90 91 cf 09 	lds	r25, 0x09CF
    309a:	91 60       	ori	r25, 0x01	; 1
    309c:	06 c0       	rjmp	.+12     	; 0x30aa <main+0xbe2>
    309e:	13 98       	cbi	0x02, 3	; 2
    30a0:	80 91 ce 09 	lds	r24, 0x09CE
    30a4:	90 91 cf 09 	lds	r25, 0x09CF
    30a8:	9e 7f       	andi	r25, 0xFE	; 254
    30aa:	90 93 cf 09 	sts	0x09CF, r25
    30ae:	80 93 ce 09 	sts	0x09CE, r24
    30b2:	0e 94 31 1a 	call	0x3462	; 0x3462 <enc_getlinkstatus>
    30b6:	20 91 ce 09 	lds	r18, 0x09CE
    30ba:	30 91 cf 09 	lds	r19, 0x09CF
    30be:	81 30       	cpi	r24, 0x01	; 1
    30c0:	19 f4       	brne	.+6      	; 0x30c8 <main+0xc00>
    30c2:	16 9a       	sbi	0x02, 6	; 2
    30c4:	30 64       	ori	r19, 0x40	; 64
    30c6:	02 c0       	rjmp	.+4      	; 0x30cc <main+0xc04>
    30c8:	16 98       	cbi	0x02, 6	; 2
    30ca:	3f 7b       	andi	r19, 0xBF	; 191
    30cc:	30 93 cf 09 	sts	0x09CF, r19
    30d0:	20 93 ce 09 	sts	0x09CE, r18
    30d4:	20 91 ce 09 	lds	r18, 0x09CE
    30d8:	30 91 cf 09 	lds	r19, 0x09CF
    30dc:	29 7f       	andi	r18, 0xF9	; 249
    30de:	80 91 07 01 	lds	r24, 0x0107
    30e2:	82 95       	swap	r24
    30e4:	86 95       	lsr	r24
    30e6:	87 70       	andi	r24, 0x07	; 7
    30e8:	90 e0       	ldi	r25, 0x00	; 0
    30ea:	82 2b       	or	r24, r18
    30ec:	93 2b       	or	r25, r19
    30ee:	90 93 cf 09 	sts	0x09CF, r25
    30f2:	80 93 ce 09 	sts	0x09CE, r24
    30f6:	99 ca       	rjmp	.-2766   	; 0x262a <main+0x162>
    30f8:	80 e0       	ldi	r24, 0x00	; 0
    30fa:	b8 01       	movw	r22, r16
    30fc:	a7 01       	movw	r20, r14
    30fe:	0e 94 1a 50 	call	0xa034	; 0xa034 <disp_remtime>
    3102:	87 cd       	rjmp	.-1266   	; 0x2c12 <main+0x74a>
    3104:	21 e0       	ldi	r18, 0x01	; 1
    3106:	30 e0       	ldi	r19, 0x00	; 0
    3108:	2d cf       	rjmp	.-422    	; 0x2f64 <main+0xa9c>
    310a:	21 e0       	ldi	r18, 0x01	; 1
    310c:	30 e0       	ldi	r19, 0x00	; 0
    310e:	0e cf       	rjmp	.-484    	; 0x2f2c <main+0xa64>

00003110 <spitx>:
    3110:	8e bd       	out	0x2e, r24	; 46
    3112:	0d b4       	in	r0, 0x2d	; 45
    3114:	07 fe       	sbrs	r0, 7
    3116:	fd cf       	rjmp	.-6      	; 0x3112 <spitx+0x2>
    3118:	08 95       	ret

0000311a <enc_readethreg>:
    311a:	2c 98       	cbi	0x05, 4	; 5
    311c:	8e bd       	out	0x2e, r24	; 46
    311e:	0d b4       	in	r0, 0x2d	; 45
    3120:	07 fe       	sbrs	r0, 7
    3122:	fd cf       	rjmp	.-6      	; 0x311e <enc_readethreg+0x4>
    3124:	1e bc       	out	0x2e, r1	; 46
    3126:	0d b4       	in	r0, 0x2d	; 45
    3128:	07 fe       	sbrs	r0, 7
    312a:	fd cf       	rjmp	.-6      	; 0x3126 <enc_readethreg+0xc>
    312c:	8e b5       	in	r24, 0x2e	; 46
    312e:	2c 9a       	sbi	0x05, 4	; 5
    3130:	08 95       	ret

00003132 <enc_readmreg>:
    3132:	2c 98       	cbi	0x05, 4	; 5
    3134:	8e bd       	out	0x2e, r24	; 46
    3136:	0d b4       	in	r0, 0x2d	; 45
    3138:	07 fe       	sbrs	r0, 7
    313a:	fd cf       	rjmp	.-6      	; 0x3136 <enc_readmreg+0x4>
    313c:	1e bc       	out	0x2e, r1	; 46
    313e:	0d b4       	in	r0, 0x2d	; 45
    3140:	07 fe       	sbrs	r0, 7
    3142:	fd cf       	rjmp	.-6      	; 0x313e <enc_readmreg+0xc>
    3144:	8e b5       	in	r24, 0x2e	; 46
    3146:	1e bc       	out	0x2e, r1	; 46
    3148:	0d b4       	in	r0, 0x2d	; 45
    314a:	07 fe       	sbrs	r0, 7
    314c:	fd cf       	rjmp	.-6      	; 0x3148 <enc_readmreg+0x16>
    314e:	8e b5       	in	r24, 0x2e	; 46
    3150:	2c 9a       	sbi	0x05, 4	; 5
    3152:	08 95       	ret

00003154 <enc_writereg>:
    3154:	2c 98       	cbi	0x05, 4	; 5
    3156:	80 5c       	subi	r24, 0xC0	; 192
    3158:	8e bd       	out	0x2e, r24	; 46
    315a:	0d b4       	in	r0, 0x2d	; 45
    315c:	07 fe       	sbrs	r0, 7
    315e:	fd cf       	rjmp	.-6      	; 0x315a <enc_writereg+0x6>
    3160:	6e bd       	out	0x2e, r22	; 46
    3162:	0d b4       	in	r0, 0x2d	; 45
    3164:	07 fe       	sbrs	r0, 7
    3166:	fd cf       	rjmp	.-6      	; 0x3162 <enc_writereg+0xe>
    3168:	2c 9a       	sbi	0x05, 4	; 5
    316a:	08 95       	ret

0000316c <enc_readethreg16>:
    316c:	0f 93       	push	r16
    316e:	1f 93       	push	r17
    3170:	18 2f       	mov	r17, r24
    3172:	0e 94 8d 18 	call	0x311a	; 0x311a <enc_readethreg>
    3176:	08 2f       	mov	r16, r24
    3178:	81 2f       	mov	r24, r17
    317a:	8f 5f       	subi	r24, 0xFF	; 255
    317c:	0e 94 8d 18 	call	0x311a	; 0x311a <enc_readethreg>
    3180:	98 2f       	mov	r25, r24
    3182:	80 2f       	mov	r24, r16
    3184:	1f 91       	pop	r17
    3186:	0f 91       	pop	r16
    3188:	08 95       	ret

0000318a <enc_readmreg16>:
    318a:	0f 93       	push	r16
    318c:	1f 93       	push	r17
    318e:	18 2f       	mov	r17, r24
    3190:	0e 94 99 18 	call	0x3132	; 0x3132 <enc_readmreg>
    3194:	08 2f       	mov	r16, r24
    3196:	81 2f       	mov	r24, r17
    3198:	8f 5f       	subi	r24, 0xFF	; 255
    319a:	0e 94 99 18 	call	0x3132	; 0x3132 <enc_readmreg>
    319e:	98 2f       	mov	r25, r24
    31a0:	80 2f       	mov	r24, r16
    31a2:	1f 91       	pop	r17
    31a4:	0f 91       	pop	r16
    31a6:	08 95       	ret

000031a8 <enc_writereg16>:
    31a8:	0f 93       	push	r16
    31aa:	1f 93       	push	r17
    31ac:	18 2f       	mov	r17, r24
    31ae:	07 2f       	mov	r16, r23
    31b0:	0e 94 aa 18 	call	0x3154	; 0x3154 <enc_writereg>
    31b4:	81 2f       	mov	r24, r17
    31b6:	8f 5f       	subi	r24, 0xFF	; 255
    31b8:	60 2f       	mov	r22, r16
    31ba:	0e 94 aa 18 	call	0x3154	; 0x3154 <enc_writereg>
    31be:	1f 91       	pop	r17
    31c0:	0f 91       	pop	r16
    31c2:	08 95       	ret

000031c4 <enc_setbit>:
    31c4:	2c 98       	cbi	0x05, 4	; 5
    31c6:	80 58       	subi	r24, 0x80	; 128
    31c8:	8e bd       	out	0x2e, r24	; 46
    31ca:	0d b4       	in	r0, 0x2d	; 45
    31cc:	07 fe       	sbrs	r0, 7
    31ce:	fd cf       	rjmp	.-6      	; 0x31ca <enc_setbit+0x6>
    31d0:	6e bd       	out	0x2e, r22	; 46
    31d2:	0d b4       	in	r0, 0x2d	; 45
    31d4:	07 fe       	sbrs	r0, 7
    31d6:	fd cf       	rjmp	.-6      	; 0x31d2 <enc_setbit+0xe>
    31d8:	2c 9a       	sbi	0x05, 4	; 5
    31da:	08 95       	ret

000031dc <enc_clrbit>:
    31dc:	2c 98       	cbi	0x05, 4	; 5
    31de:	80 56       	subi	r24, 0x60	; 96
    31e0:	8e bd       	out	0x2e, r24	; 46
    31e2:	0d b4       	in	r0, 0x2d	; 45
    31e4:	07 fe       	sbrs	r0, 7
    31e6:	fd cf       	rjmp	.-6      	; 0x31e2 <enc_clrbit+0x6>
    31e8:	6e bd       	out	0x2e, r22	; 46
    31ea:	0d b4       	in	r0, 0x2d	; 45
    31ec:	07 fe       	sbrs	r0, 7
    31ee:	fd cf       	rjmp	.-6      	; 0x31ea <enc_clrbit+0xe>
    31f0:	2c 9a       	sbi	0x05, 4	; 5
    31f2:	08 95       	ret

000031f4 <enc_bankselect>:
    31f4:	1f 93       	push	r17
    31f6:	18 2f       	mov	r17, r24
    31f8:	8f e1       	ldi	r24, 0x1F	; 31
    31fa:	63 e0       	ldi	r22, 0x03	; 3
    31fc:	0e 94 ee 18 	call	0x31dc	; 0x31dc <enc_clrbit>
    3200:	8f e1       	ldi	r24, 0x1F	; 31
    3202:	61 2f       	mov	r22, r17
    3204:	0e 94 e2 18 	call	0x31c4	; 0x31c4 <enc_setbit>
    3208:	1f 91       	pop	r17
    320a:	08 95       	ret

0000320c <enc_readphy>:
    320c:	1f 93       	push	r17
    320e:	18 2f       	mov	r17, r24
    3210:	82 e0       	ldi	r24, 0x02	; 2
    3212:	0e 94 fa 18 	call	0x31f4	; 0x31f4 <enc_bankselect>
    3216:	84 e1       	ldi	r24, 0x14	; 20
    3218:	61 2f       	mov	r22, r17
    321a:	0e 94 aa 18 	call	0x3154	; 0x3154 <enc_writereg>
    321e:	82 e1       	ldi	r24, 0x12	; 18
    3220:	61 e0       	ldi	r22, 0x01	; 1
    3222:	0e 94 aa 18 	call	0x3154	; 0x3154 <enc_writereg>
    3226:	83 e0       	ldi	r24, 0x03	; 3
    3228:	0e 94 fa 18 	call	0x31f4	; 0x31f4 <enc_bankselect>
    322c:	8a e0       	ldi	r24, 0x0A	; 10
    322e:	0e 94 99 18 	call	0x3132	; 0x3132 <enc_readmreg>
    3232:	80 fd       	sbrc	r24, 0
    3234:	fb cf       	rjmp	.-10     	; 0x322c <enc_readphy+0x20>
    3236:	82 e0       	ldi	r24, 0x02	; 2
    3238:	0e 94 fa 18 	call	0x31f4	; 0x31f4 <enc_bankselect>
    323c:	82 e1       	ldi	r24, 0x12	; 18
    323e:	60 e0       	ldi	r22, 0x00	; 0
    3240:	0e 94 aa 18 	call	0x3154	; 0x3154 <enc_writereg>
    3244:	88 e1       	ldi	r24, 0x18	; 24
    3246:	0e 94 c5 18 	call	0x318a	; 0x318a <enc_readmreg16>
    324a:	1f 91       	pop	r17
    324c:	08 95       	ret

0000324e <enc_writephy>:
    324e:	ff 92       	push	r15
    3250:	0f 93       	push	r16
    3252:	1f 93       	push	r17
    3254:	f8 2e       	mov	r15, r24
    3256:	8b 01       	movw	r16, r22
    3258:	82 e0       	ldi	r24, 0x02	; 2
    325a:	0e 94 fa 18 	call	0x31f4	; 0x31f4 <enc_bankselect>
    325e:	84 e1       	ldi	r24, 0x14	; 20
    3260:	6f 2d       	mov	r22, r15
    3262:	0e 94 aa 18 	call	0x3154	; 0x3154 <enc_writereg>
    3266:	86 e1       	ldi	r24, 0x16	; 22
    3268:	b8 01       	movw	r22, r16
    326a:	0e 94 d4 18 	call	0x31a8	; 0x31a8 <enc_writereg16>
    326e:	83 e0       	ldi	r24, 0x03	; 3
    3270:	0e 94 fa 18 	call	0x31f4	; 0x31f4 <enc_bankselect>
    3274:	8a e0       	ldi	r24, 0x0A	; 10
    3276:	0e 94 99 18 	call	0x3132	; 0x3132 <enc_readmreg>
    327a:	80 fd       	sbrc	r24, 0
    327c:	fb cf       	rjmp	.-10     	; 0x3274 <enc_writephy+0x26>
    327e:	1f 91       	pop	r17
    3280:	0f 91       	pop	r16
    3282:	ff 90       	pop	r15
    3284:	08 95       	ret

00003286 <enc_readbuf>:
    3286:	2c 98       	cbi	0x05, 4	; 5
    3288:	8a e3       	ldi	r24, 0x3A	; 58
    328a:	8e bd       	out	0x2e, r24	; 46
    328c:	0d b4       	in	r0, 0x2d	; 45
    328e:	07 fe       	sbrs	r0, 7
    3290:	fd cf       	rjmp	.-6      	; 0x328c <enc_readbuf+0x6>
    3292:	1e bc       	out	0x2e, r1	; 46
    3294:	0d b4       	in	r0, 0x2d	; 45
    3296:	07 fe       	sbrs	r0, 7
    3298:	fd cf       	rjmp	.-6      	; 0x3294 <enc_readbuf+0xe>
    329a:	8e b5       	in	r24, 0x2e	; 46
    329c:	2c 9a       	sbi	0x05, 4	; 5
    329e:	08 95       	ret

000032a0 <enc_readbuf2>:
    32a0:	2c 98       	cbi	0x05, 4	; 5
    32a2:	8a e3       	ldi	r24, 0x3A	; 58
    32a4:	8e bd       	out	0x2e, r24	; 46
    32a6:	0d b4       	in	r0, 0x2d	; 45
    32a8:	07 fe       	sbrs	r0, 7
    32aa:	fd cf       	rjmp	.-6      	; 0x32a6 <enc_readbuf2+0x6>
    32ac:	1e bc       	out	0x2e, r1	; 46
    32ae:	0d b4       	in	r0, 0x2d	; 45
    32b0:	07 fe       	sbrs	r0, 7
    32b2:	fd cf       	rjmp	.-6      	; 0x32ae <enc_readbuf2+0xe>
    32b4:	9e b5       	in	r25, 0x2e	; 46
    32b6:	1e bc       	out	0x2e, r1	; 46
    32b8:	0d b4       	in	r0, 0x2d	; 45
    32ba:	07 fe       	sbrs	r0, 7
    32bc:	fd cf       	rjmp	.-6      	; 0x32b8 <enc_readbuf2+0x18>
    32be:	8e b5       	in	r24, 0x2e	; 46
    32c0:	2c 9a       	sbi	0x05, 4	; 5
    32c2:	08 95       	ret

000032c4 <enc_readbuf4>:
    32c4:	2c 98       	cbi	0x05, 4	; 5
    32c6:	8a e3       	ldi	r24, 0x3A	; 58
    32c8:	8e bd       	out	0x2e, r24	; 46
    32ca:	0d b4       	in	r0, 0x2d	; 45
    32cc:	07 fe       	sbrs	r0, 7
    32ce:	fd cf       	rjmp	.-6      	; 0x32ca <enc_readbuf4+0x6>
    32d0:	1e bc       	out	0x2e, r1	; 46
    32d2:	0d b4       	in	r0, 0x2d	; 45
    32d4:	07 fe       	sbrs	r0, 7
    32d6:	fd cf       	rjmp	.-6      	; 0x32d2 <enc_readbuf4+0xe>
    32d8:	9e b5       	in	r25, 0x2e	; 46
    32da:	1e bc       	out	0x2e, r1	; 46
    32dc:	0d b4       	in	r0, 0x2d	; 45
    32de:	07 fe       	sbrs	r0, 7
    32e0:	fd cf       	rjmp	.-6      	; 0x32dc <enc_readbuf4+0x18>
    32e2:	8e b5       	in	r24, 0x2e	; 46
    32e4:	1e bc       	out	0x2e, r1	; 46
    32e6:	0d b4       	in	r0, 0x2d	; 45
    32e8:	07 fe       	sbrs	r0, 7
    32ea:	fd cf       	rjmp	.-6      	; 0x32e6 <enc_readbuf4+0x22>
    32ec:	7e b5       	in	r23, 0x2e	; 46
    32ee:	1e bc       	out	0x2e, r1	; 46
    32f0:	0d b4       	in	r0, 0x2d	; 45
    32f2:	07 fe       	sbrs	r0, 7
    32f4:	fd cf       	rjmp	.-6      	; 0x32f0 <enc_readbuf4+0x2c>
    32f6:	6e b5       	in	r22, 0x2e	; 46
    32f8:	2c 9a       	sbi	0x05, 4	; 5
    32fa:	08 95       	ret

000032fc <enc_readbuffer>:
    32fc:	fc 01       	movw	r30, r24
    32fe:	2c 98       	cbi	0x05, 4	; 5
    3300:	8a e3       	ldi	r24, 0x3A	; 58
    3302:	8e bd       	out	0x2e, r24	; 46
    3304:	0d b4       	in	r0, 0x2d	; 45
    3306:	07 fe       	sbrs	r0, 7
    3308:	fd cf       	rjmp	.-6      	; 0x3304 <enc_readbuffer+0x8>
    330a:	20 e0       	ldi	r18, 0x00	; 0
    330c:	30 e0       	ldi	r19, 0x00	; 0
    330e:	08 c0       	rjmp	.+16     	; 0x3320 <enc_readbuffer+0x24>
    3310:	1e bc       	out	0x2e, r1	; 46
    3312:	0d b4       	in	r0, 0x2d	; 45
    3314:	07 fe       	sbrs	r0, 7
    3316:	fd cf       	rjmp	.-6      	; 0x3312 <enc_readbuffer+0x16>
    3318:	8e b5       	in	r24, 0x2e	; 46
    331a:	81 93       	st	Z+, r24
    331c:	2f 5f       	subi	r18, 0xFF	; 255
    331e:	3f 4f       	sbci	r19, 0xFF	; 255
    3320:	26 17       	cp	r18, r22
    3322:	37 07       	cpc	r19, r23
    3324:	a8 f3       	brcs	.-22     	; 0x3310 <enc_readbuffer+0x14>
    3326:	2c 9a       	sbi	0x05, 4	; 5
    3328:	08 95       	ret

0000332a <enc_writebuf>:
    332a:	98 2f       	mov	r25, r24
    332c:	2c 98       	cbi	0x05, 4	; 5
    332e:	8a e7       	ldi	r24, 0x7A	; 122
    3330:	8e bd       	out	0x2e, r24	; 46
    3332:	0d b4       	in	r0, 0x2d	; 45
    3334:	07 fe       	sbrs	r0, 7
    3336:	fd cf       	rjmp	.-6      	; 0x3332 <enc_writebuf+0x8>
    3338:	9e bd       	out	0x2e, r25	; 46
    333a:	0d b4       	in	r0, 0x2d	; 45
    333c:	07 fe       	sbrs	r0, 7
    333e:	fd cf       	rjmp	.-6      	; 0x333a <enc_writebuf+0x10>
    3340:	2c 9a       	sbi	0x05, 4	; 5
    3342:	08 95       	ret

00003344 <enc_writebuf2>:
    3344:	28 2f       	mov	r18, r24
    3346:	2c 98       	cbi	0x05, 4	; 5
    3348:	8a e7       	ldi	r24, 0x7A	; 122
    334a:	8e bd       	out	0x2e, r24	; 46
    334c:	0d b4       	in	r0, 0x2d	; 45
    334e:	07 fe       	sbrs	r0, 7
    3350:	fd cf       	rjmp	.-6      	; 0x334c <enc_writebuf2+0x8>
    3352:	9e bd       	out	0x2e, r25	; 46
    3354:	0d b4       	in	r0, 0x2d	; 45
    3356:	07 fe       	sbrs	r0, 7
    3358:	fd cf       	rjmp	.-6      	; 0x3354 <enc_writebuf2+0x10>
    335a:	2e bd       	out	0x2e, r18	; 46
    335c:	0d b4       	in	r0, 0x2d	; 45
    335e:	07 fe       	sbrs	r0, 7
    3360:	fd cf       	rjmp	.-6      	; 0x335c <enc_writebuf2+0x18>
    3362:	2c 9a       	sbi	0x05, 4	; 5
    3364:	08 95       	ret

00003366 <enc_writebuf4>:
    3366:	28 2f       	mov	r18, r24
    3368:	2c 98       	cbi	0x05, 4	; 5
    336a:	8a e7       	ldi	r24, 0x7A	; 122
    336c:	8e bd       	out	0x2e, r24	; 46
    336e:	0d b4       	in	r0, 0x2d	; 45
    3370:	07 fe       	sbrs	r0, 7
    3372:	fd cf       	rjmp	.-6      	; 0x336e <enc_writebuf4+0x8>
    3374:	9e bd       	out	0x2e, r25	; 46
    3376:	0d b4       	in	r0, 0x2d	; 45
    3378:	07 fe       	sbrs	r0, 7
    337a:	fd cf       	rjmp	.-6      	; 0x3376 <enc_writebuf4+0x10>
    337c:	2e bd       	out	0x2e, r18	; 46
    337e:	0d b4       	in	r0, 0x2d	; 45
    3380:	07 fe       	sbrs	r0, 7
    3382:	fd cf       	rjmp	.-6      	; 0x337e <enc_writebuf4+0x18>
    3384:	7e bd       	out	0x2e, r23	; 46
    3386:	0d b4       	in	r0, 0x2d	; 45
    3388:	07 fe       	sbrs	r0, 7
    338a:	fd cf       	rjmp	.-6      	; 0x3386 <enc_writebuf4+0x20>
    338c:	6e bd       	out	0x2e, r22	; 46
    338e:	0d b4       	in	r0, 0x2d	; 45
    3390:	07 fe       	sbrs	r0, 7
    3392:	fd cf       	rjmp	.-6      	; 0x338e <enc_writebuf4+0x28>
    3394:	2c 9a       	sbi	0x05, 4	; 5
    3396:	08 95       	ret

00003398 <enc_writebuffer>:
    3398:	fc 01       	movw	r30, r24
    339a:	2c 98       	cbi	0x05, 4	; 5
    339c:	8a e7       	ldi	r24, 0x7A	; 122
    339e:	8e bd       	out	0x2e, r24	; 46
    33a0:	0d b4       	in	r0, 0x2d	; 45
    33a2:	07 fe       	sbrs	r0, 7
    33a4:	fd cf       	rjmp	.-6      	; 0x33a0 <enc_writebuffer+0x8>
    33a6:	20 e0       	ldi	r18, 0x00	; 0
    33a8:	30 e0       	ldi	r19, 0x00	; 0
    33aa:	08 c0       	rjmp	.+16     	; 0x33bc <enc_writebuffer+0x24>
    33ac:	80 81       	ld	r24, Z
    33ae:	8e bd       	out	0x2e, r24	; 46
    33b0:	0d b4       	in	r0, 0x2d	; 45
    33b2:	07 fe       	sbrs	r0, 7
    33b4:	fd cf       	rjmp	.-6      	; 0x33b0 <enc_writebuffer+0x18>
    33b6:	2f 5f       	subi	r18, 0xFF	; 255
    33b8:	3f 4f       	sbci	r19, 0xFF	; 255
    33ba:	31 96       	adiw	r30, 0x01	; 1
    33bc:	26 17       	cp	r18, r22
    33be:	37 07       	cpc	r19, r23
    33c0:	a8 f3       	brcs	.-22     	; 0x33ac <enc_writebuffer+0x14>
    33c2:	2c 9a       	sbi	0x05, 4	; 5
    33c4:	cb 01       	movw	r24, r22
    33c6:	08 95       	ret

000033c8 <enc_fillwrite>:
    33c8:	28 2f       	mov	r18, r24
    33ca:	2c 98       	cbi	0x05, 4	; 5
    33cc:	8a e7       	ldi	r24, 0x7A	; 122
    33ce:	8e bd       	out	0x2e, r24	; 46
    33d0:	0d b4       	in	r0, 0x2d	; 45
    33d2:	07 fe       	sbrs	r0, 7
    33d4:	fd cf       	rjmp	.-6      	; 0x33d0 <enc_fillwrite+0x8>
    33d6:	80 e0       	ldi	r24, 0x00	; 0
    33d8:	90 e0       	ldi	r25, 0x00	; 0
    33da:	05 c0       	rjmp	.+10     	; 0x33e6 <enc_fillwrite+0x1e>
    33dc:	2e bd       	out	0x2e, r18	; 46
    33de:	0d b4       	in	r0, 0x2d	; 45
    33e0:	07 fe       	sbrs	r0, 7
    33e2:	fd cf       	rjmp	.-6      	; 0x33de <enc_fillwrite+0x16>
    33e4:	01 96       	adiw	r24, 0x01	; 1
    33e6:	86 17       	cp	r24, r22
    33e8:	97 07       	cpc	r25, r23
    33ea:	c0 f3       	brcs	.-16     	; 0x33dc <enc_fillwrite+0x14>
    33ec:	2c 9a       	sbi	0x05, 4	; 5
    33ee:	08 95       	ret

000033f0 <enc_selftest>:
    33f0:	8f e1       	ldi	r24, 0x1F	; 31
    33f2:	60 e0       	ldi	r22, 0x00	; 0
    33f4:	0e 94 aa 18 	call	0x3154	; 0x3154 <enc_writereg>
    33f8:	80 e1       	ldi	r24, 0x10	; 16
    33fa:	60 e0       	ldi	r22, 0x00	; 0
    33fc:	70 e0       	ldi	r23, 0x00	; 0
    33fe:	0e 94 d4 18 	call	0x31a8	; 0x31a8 <enc_writereg16>
    3402:	82 e1       	ldi	r24, 0x12	; 18
    3404:	6f ef       	ldi	r22, 0xFF	; 255
    3406:	7f e1       	ldi	r23, 0x1F	; 31
    3408:	0e 94 d4 18 	call	0x31a8	; 0x31a8 <enc_writereg16>
    340c:	8a e0       	ldi	r24, 0x0A	; 10
    340e:	6f ef       	ldi	r22, 0xFF	; 255
    3410:	7f e1       	ldi	r23, 0x1F	; 31
    3412:	0e 94 d4 18 	call	0x31a8	; 0x31a8 <enc_writereg16>
    3416:	83 e0       	ldi	r24, 0x03	; 3
    3418:	0e 94 fa 18 	call	0x31f4	; 0x31f4 <enc_bankselect>
    341c:	87 e0       	ldi	r24, 0x07	; 7
    341e:	67 e0       	ldi	r22, 0x07	; 7
    3420:	0e 94 aa 18 	call	0x3154	; 0x3154 <enc_writereg>
    3424:	87 e0       	ldi	r24, 0x07	; 7
    3426:	0e 94 8d 18 	call	0x311a	; 0x311a <enc_readethreg>
    342a:	80 fd       	sbrc	r24, 0
    342c:	fb cf       	rjmp	.-10     	; 0x3424 <enc_selftest+0x34>
    342e:	87 e0       	ldi	r24, 0x07	; 7
    3430:	62 e0       	ldi	r22, 0x02	; 2
    3432:	0e 94 ee 18 	call	0x31dc	; 0x31dc <enc_clrbit>
    3436:	8f e1       	ldi	r24, 0x1F	; 31
    3438:	60 e3       	ldi	r22, 0x30	; 48
    343a:	0e 94 e2 18 	call	0x31c4	; 0x31c4 <enc_setbit>
    343e:	8f e1       	ldi	r24, 0x1F	; 31
    3440:	0e 94 8d 18 	call	0x311a	; 0x311a <enc_readethreg>
    3444:	85 fd       	sbrc	r24, 5
    3446:	fb cf       	rjmp	.-10     	; 0x343e <enc_selftest+0x4e>
    3448:	80 e0       	ldi	r24, 0x00	; 0
    344a:	0e 94 fa 18 	call	0x31f4	; 0x31f4 <enc_bankselect>
    344e:	86 e1       	ldi	r24, 0x16	; 22
    3450:	0e 94 b6 18 	call	0x316c	; 0x316c <enc_readethreg16>
    3454:	20 e0       	ldi	r18, 0x00	; 0
    3456:	87 50       	subi	r24, 0x07	; 7
    3458:	98 4f       	sbci	r25, 0xF8	; 248
    345a:	09 f4       	brne	.+2      	; 0x345e <enc_selftest+0x6e>
    345c:	21 e0       	ldi	r18, 0x01	; 1
    345e:	82 2f       	mov	r24, r18
    3460:	08 95       	ret

00003462 <enc_getlinkstatus>:
    3462:	81 e0       	ldi	r24, 0x01	; 1
    3464:	0e 94 06 19 	call	0x320c	; 0x320c <enc_readphy>
    3468:	96 95       	lsr	r25
    346a:	87 95       	ror	r24
    346c:	96 95       	lsr	r25
    346e:	87 95       	ror	r24
    3470:	81 70       	andi	r24, 0x01	; 1
    3472:	08 95       	ret

00003474 <enc_gettxready>:
    3474:	8f e1       	ldi	r24, 0x1F	; 31
    3476:	0e 94 8d 18 	call	0x311a	; 0x311a <enc_readethreg>
    347a:	80 95       	com	r24
    347c:	88 1f       	adc	r24, r24
    347e:	88 27       	eor	r24, r24
    3480:	88 1f       	adc	r24, r24
    3482:	08 95       	ret

00003484 <enc_rxseek>:
    3484:	ef 92       	push	r14
    3486:	ff 92       	push	r15
    3488:	0f 93       	push	r16
    348a:	1f 93       	push	r17
    348c:	8c 01       	movw	r16, r24
    348e:	80 e0       	ldi	r24, 0x00	; 0
    3490:	0e 94 fa 18 	call	0x31f4	; 0x31f4 <enc_bankselect>
    3494:	80 e0       	ldi	r24, 0x00	; 0
    3496:	0e 94 c5 18 	call	0x318a	; 0x318a <enc_readmreg16>
    349a:	f8 2e       	mov	r15, r24
    349c:	e9 2e       	mov	r14, r25
    349e:	60 91 5f 04 	lds	r22, 0x045F
    34a2:	70 91 60 04 	lds	r23, 0x0460
    34a6:	6a 5f       	subi	r22, 0xFA	; 250
    34a8:	7f 4f       	sbci	r23, 0xFF	; 255
    34aa:	60 0f       	add	r22, r16
    34ac:	71 1f       	adc	r23, r17
    34ae:	89 e1       	ldi	r24, 0x19	; 25
    34b0:	68 3d       	cpi	r22, 0xD8	; 216
    34b2:	78 07       	cpc	r23, r24
    34b4:	10 f0       	brcs	.+4      	; 0x34ba <enc_rxseek+0x36>
    34b6:	68 5d       	subi	r22, 0xD8	; 216
    34b8:	79 41       	sbci	r23, 0x19	; 25
    34ba:	80 e0       	ldi	r24, 0x00	; 0
    34bc:	0e 94 d4 18 	call	0x31a8	; 0x31a8 <enc_writereg16>
    34c0:	8f 2d       	mov	r24, r15
    34c2:	9e 2d       	mov	r25, r14
    34c4:	1f 91       	pop	r17
    34c6:	0f 91       	pop	r16
    34c8:	ff 90       	pop	r15
    34ca:	ef 90       	pop	r14
    34cc:	08 95       	ret

000034ce <enc_txseek>:
    34ce:	ef 92       	push	r14
    34d0:	ff 92       	push	r15
    34d2:	0f 93       	push	r16
    34d4:	1f 93       	push	r17
    34d6:	8c 01       	movw	r16, r24
    34d8:	80 e0       	ldi	r24, 0x00	; 0
    34da:	0e 94 fa 18 	call	0x31f4	; 0x31f4 <enc_bankselect>
    34de:	82 e0       	ldi	r24, 0x02	; 2
    34e0:	0e 94 c5 18 	call	0x318a	; 0x318a <enc_readmreg16>
    34e4:	f8 2e       	mov	r15, r24
    34e6:	e9 2e       	mov	r14, r25
    34e8:	07 52       	subi	r16, 0x27	; 39
    34ea:	16 4e       	sbci	r17, 0xE6	; 230
    34ec:	82 e0       	ldi	r24, 0x02	; 2
    34ee:	b8 01       	movw	r22, r16
    34f0:	0e 94 d4 18 	call	0x31a8	; 0x31a8 <enc_writereg16>
    34f4:	8f 2d       	mov	r24, r15
    34f6:	9e 2d       	mov	r25, r14
    34f8:	1f 91       	pop	r17
    34fa:	0f 91       	pop	r16
    34fc:	ff 90       	pop	r15
    34fe:	ef 90       	pop	r14
    3500:	08 95       	ret

00003502 <enc_setnextpoint>:
    3502:	0f 93       	push	r16
    3504:	1f 93       	push	r17
    3506:	00 91 61 04 	lds	r16, 0x0461
    350a:	10 91 62 04 	lds	r17, 0x0462
    350e:	01 50       	subi	r16, 0x01	; 1
    3510:	10 40       	sbci	r17, 0x00	; 0
    3512:	80 e0       	ldi	r24, 0x00	; 0
    3514:	0e 94 fa 18 	call	0x31f4	; 0x31f4 <enc_bankselect>
    3518:	8e e1       	ldi	r24, 0x1E	; 30
    351a:	60 e4       	ldi	r22, 0x40	; 64
    351c:	0e 94 e2 18 	call	0x31c4	; 0x31c4 <enc_setbit>
    3520:	b8 01       	movw	r22, r16
    3522:	89 e1       	ldi	r24, 0x19	; 25
    3524:	08 3d       	cpi	r16, 0xD8	; 216
    3526:	18 07       	cpc	r17, r24
    3528:	10 f0       	brcs	.+4      	; 0x352e <enc_setnextpoint+0x2c>
    352a:	67 ed       	ldi	r22, 0xD7	; 215
    352c:	79 e1       	ldi	r23, 0x19	; 25
    352e:	8c e0       	ldi	r24, 0x0C	; 12
    3530:	0e 94 d4 18 	call	0x31a8	; 0x31a8 <enc_writereg16>
    3534:	1f 91       	pop	r17
    3536:	0f 91       	pop	r16
    3538:	08 95       	ret

0000353a <enc_getfreerxsize>:
    353a:	1f 93       	push	r17
    353c:	cf 93       	push	r28
    353e:	df 93       	push	r29
    3540:	81 e0       	ldi	r24, 0x01	; 1
    3542:	0e 94 fa 18 	call	0x31f4	; 0x31f4 <enc_bankselect>
    3546:	89 e1       	ldi	r24, 0x19	; 25
    3548:	0e 94 8d 18 	call	0x311a	; 0x311a <enc_readethreg>
    354c:	18 2f       	mov	r17, r24
    354e:	80 e0       	ldi	r24, 0x00	; 0
    3550:	0e 94 fa 18 	call	0x31f4	; 0x31f4 <enc_bankselect>
    3554:	8e e0       	ldi	r24, 0x0E	; 14
    3556:	0e 94 8d 18 	call	0x311a	; 0x311a <enc_readethreg>
    355a:	c8 2f       	mov	r28, r24
    355c:	d0 e0       	ldi	r29, 0x00	; 0
    355e:	81 e0       	ldi	r24, 0x01	; 1
    3560:	0e 94 fa 18 	call	0x31f4	; 0x31f4 <enc_bankselect>
    3564:	89 e1       	ldi	r24, 0x19	; 25
    3566:	0e 94 8d 18 	call	0x311a	; 0x311a <enc_readethreg>
    356a:	18 17       	cp	r17, r24
    356c:	79 f7       	brne	.-34     	; 0x354c <enc_getfreerxsize+0x12>
    356e:	8c e0       	ldi	r24, 0x0C	; 12
    3570:	0e 94 b6 18 	call	0x316c	; 0x316c <enc_readethreg16>
    3574:	9f 71       	andi	r25, 0x1F	; 31
    3576:	8c 17       	cp	r24, r28
    3578:	9d 07       	cpc	r25, r29
    357a:	20 f4       	brcc	.+8      	; 0x3584 <enc_getfreerxsize+0x4a>
    357c:	9c 01       	movw	r18, r24
    357e:	29 52       	subi	r18, 0x29	; 41
    3580:	36 4e       	sbci	r19, 0xE6	; 230
    3582:	09 c0       	rjmp	.+18     	; 0x3596 <enc_getfreerxsize+0x5c>
    3584:	c8 17       	cp	r28, r24
    3586:	d9 07       	cpc	r29, r25
    3588:	19 f4       	brne	.+6      	; 0x3590 <enc_getfreerxsize+0x56>
    358a:	27 ed       	ldi	r18, 0xD7	; 215
    358c:	39 e1       	ldi	r19, 0x19	; 25
    358e:	05 c0       	rjmp	.+10     	; 0x359a <enc_getfreerxsize+0x60>
    3590:	9c 01       	movw	r18, r24
    3592:	21 50       	subi	r18, 0x01	; 1
    3594:	30 40       	sbci	r19, 0x00	; 0
    3596:	2c 1b       	sub	r18, r28
    3598:	3d 0b       	sbc	r19, r29
    359a:	c9 01       	movw	r24, r18
    359c:	df 91       	pop	r29
    359e:	cf 91       	pop	r28
    35a0:	1f 91       	pop	r17
    35a2:	08 95       	ret

000035a4 <enc_output>:
    35a4:	a7 e0       	ldi	r26, 0x07	; 7
    35a6:	b0 e0       	ldi	r27, 0x00	; 0
    35a8:	e8 ed       	ldi	r30, 0xD8	; 216
    35aa:	fa e1       	ldi	r31, 0x1A	; 26
    35ac:	0c 94 51 6d 	jmp	0xdaa2	; 0xdaa2 <__prologue_saves__+0x10>
    35b0:	8c 01       	movw	r16, r24
    35b2:	e0 90 64 04 	lds	r14, 0x0464
    35b6:	f0 90 65 04 	lds	r15, 0x0465
    35ba:	e8 0e       	add	r14, r24
    35bc:	f9 1e       	adc	r15, r25
    35be:	82 e0       	ldi	r24, 0x02	; 2
    35c0:	b8 01       	movw	r22, r16
    35c2:	0e 94 d4 18 	call	0x31a8	; 0x31a8 <enc_writereg16>
    35c6:	80 e0       	ldi	r24, 0x00	; 0
    35c8:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    35cc:	84 e0       	ldi	r24, 0x04	; 4
    35ce:	b8 01       	movw	r22, r16
    35d0:	0e 94 d4 18 	call	0x31a8	; 0x31a8 <enc_writereg16>
    35d4:	86 e0       	ldi	r24, 0x06	; 6
    35d6:	b7 01       	movw	r22, r14
    35d8:	0e 94 d4 18 	call	0x31a8	; 0x31a8 <enc_writereg16>
    35dc:	8f e1       	ldi	r24, 0x1F	; 31
    35de:	60 e8       	ldi	r22, 0x80	; 128
    35e0:	0e 94 e2 18 	call	0x31c4	; 0x31c4 <enc_setbit>
    35e4:	8f e1       	ldi	r24, 0x1F	; 31
    35e6:	60 e8       	ldi	r22, 0x80	; 128
    35e8:	0e 94 ee 18 	call	0x31dc	; 0x31dc <enc_clrbit>
    35ec:	8c e1       	ldi	r24, 0x1C	; 28
    35ee:	6a e0       	ldi	r22, 0x0A	; 10
    35f0:	0e 94 ee 18 	call	0x31dc	; 0x31dc <enc_clrbit>
    35f4:	8f e1       	ldi	r24, 0x1F	; 31
    35f6:	68 e0       	ldi	r22, 0x08	; 8
    35f8:	0e 94 e2 18 	call	0x31c4	; 0x31c4 <enc_setbit>
    35fc:	80 91 63 04 	lds	r24, 0x0463
    3600:	85 50       	subi	r24, 0x05	; 5
    3602:	82 30       	cpi	r24, 0x02	; 2
    3604:	08 f0       	brcs	.+2      	; 0x3608 <enc_output+0x64>
    3606:	68 c0       	rjmp	.+208    	; 0x36d8 <enc_output+0x134>
    3608:	00 e0       	ldi	r16, 0x00	; 0
    360a:	10 e0       	ldi	r17, 0x00	; 0
    360c:	8c e1       	ldi	r24, 0x1C	; 28
    360e:	0e 94 8d 18 	call	0x311a	; 0x311a <enc_readethreg>
    3612:	8a 70       	andi	r24, 0x0A	; 10
    3614:	31 f4       	brne	.+12     	; 0x3622 <enc_output+0x7e>
    3616:	0f 5f       	subi	r16, 0xFF	; 255
    3618:	1f 4f       	sbci	r17, 0xFF	; 255
    361a:	83 e0       	ldi	r24, 0x03	; 3
    361c:	08 3e       	cpi	r16, 0xE8	; 232
    361e:	18 07       	cpc	r17, r24
    3620:	a9 f7       	brne	.-22     	; 0x360c <enc_output+0x68>
    3622:	8c e1       	ldi	r24, 0x1C	; 28
    3624:	0e 94 8d 18 	call	0x311a	; 0x311a <enc_readethreg>
    3628:	81 fd       	sbrc	r24, 1
    362a:	05 c0       	rjmp	.+10     	; 0x3636 <enc_output+0x92>
    362c:	83 e0       	ldi	r24, 0x03	; 3
    362e:	08 3e       	cpi	r16, 0xE8	; 232
    3630:	18 07       	cpc	r17, r24
    3632:	08 f4       	brcc	.+2      	; 0x3636 <enc_output+0x92>
    3634:	51 c0       	rjmp	.+162    	; 0x36d8 <enc_output+0x134>
    3636:	8f e1       	ldi	r24, 0x1F	; 31
    3638:	68 e0       	ldi	r22, 0x08	; 8
    363a:	0e 94 ee 18 	call	0x31dc	; 0x31dc <enc_clrbit>
    363e:	80 e0       	ldi	r24, 0x00	; 0
    3640:	0e 94 c5 18 	call	0x318a	; 0x318a <enc_readmreg16>
    3644:	5c 01       	movw	r10, r24
    3646:	86 e0       	ldi	r24, 0x06	; 6
    3648:	0e 94 c5 18 	call	0x318a	; 0x318a <enc_readmreg16>
    364c:	6c 01       	movw	r12, r24
    364e:	08 94       	sec
    3650:	c1 1c       	adc	r12, r1
    3652:	d1 1c       	adc	r13, r1
    3654:	80 e0       	ldi	r24, 0x00	; 0
    3656:	b6 01       	movw	r22, r12
    3658:	0e 94 d4 18 	call	0x31a8	; 0x31a8 <enc_writereg16>
    365c:	8e 01       	movw	r16, r28
    365e:	0f 5f       	subi	r16, 0xFF	; 255
    3660:	1f 4f       	sbci	r17, 0xFF	; 255
    3662:	c8 01       	movw	r24, r16
    3664:	67 e0       	ldi	r22, 0x07	; 7
    3666:	70 e0       	ldi	r23, 0x00	; 0
    3668:	0e 94 7e 19 	call	0x32fc	; 0x32fc <enc_readbuffer>
    366c:	ee 24       	eor	r14, r14
    366e:	f0 2e       	mov	r15, r16
    3670:	01 2f       	mov	r16, r17
    3672:	8c e1       	ldi	r24, 0x1C	; 28
    3674:	0e 94 8d 18 	call	0x311a	; 0x311a <enc_readethreg>
    3678:	81 ff       	sbrs	r24, 1
    367a:	2a c0       	rjmp	.+84     	; 0x36d0 <enc_output+0x12c>
    367c:	8c 81       	ldd	r24, Y+4	; 0x04
    367e:	85 ff       	sbrs	r24, 5
    3680:	27 c0       	rjmp	.+78     	; 0x36d0 <enc_output+0x12c>
    3682:	8f e1       	ldi	r24, 0x1F	; 31
    3684:	60 e8       	ldi	r22, 0x80	; 128
    3686:	0e 94 e2 18 	call	0x31c4	; 0x31c4 <enc_setbit>
    368a:	8f e1       	ldi	r24, 0x1F	; 31
    368c:	60 e8       	ldi	r22, 0x80	; 128
    368e:	0e 94 ee 18 	call	0x31dc	; 0x31dc <enc_clrbit>
    3692:	8c e1       	ldi	r24, 0x1C	; 28
    3694:	6a e0       	ldi	r22, 0x0A	; 10
    3696:	0e 94 ee 18 	call	0x31dc	; 0x31dc <enc_clrbit>
    369a:	8f e1       	ldi	r24, 0x1F	; 31
    369c:	68 e0       	ldi	r22, 0x08	; 8
    369e:	0e 94 e2 18 	call	0x31c4	; 0x31c4 <enc_setbit>
    36a2:	8c e1       	ldi	r24, 0x1C	; 28
    36a4:	0e 94 8d 18 	call	0x311a	; 0x311a <enc_readethreg>
    36a8:	8a 70       	andi	r24, 0x0A	; 10
    36aa:	d9 f3       	breq	.-10     	; 0x36a2 <enc_output+0xfe>
    36ac:	8f e1       	ldi	r24, 0x1F	; 31
    36ae:	68 e0       	ldi	r22, 0x08	; 8
    36b0:	0e 94 ee 18 	call	0x31dc	; 0x31dc <enc_clrbit>
    36b4:	80 e0       	ldi	r24, 0x00	; 0
    36b6:	b6 01       	movw	r22, r12
    36b8:	0e 94 d4 18 	call	0x31a8	; 0x31a8 <enc_writereg16>
    36bc:	8f 2d       	mov	r24, r15
    36be:	90 2f       	mov	r25, r16
    36c0:	67 e0       	ldi	r22, 0x07	; 7
    36c2:	70 e0       	ldi	r23, 0x00	; 0
    36c4:	0e 94 7e 19 	call	0x32fc	; 0x32fc <enc_readbuffer>
    36c8:	e3 94       	inc	r14
    36ca:	80 e1       	ldi	r24, 0x10	; 16
    36cc:	e8 16       	cp	r14, r24
    36ce:	89 f6       	brne	.-94     	; 0x3672 <enc_output+0xce>
    36d0:	80 e0       	ldi	r24, 0x00	; 0
    36d2:	b5 01       	movw	r22, r10
    36d4:	0e 94 d4 18 	call	0x31a8	; 0x31a8 <enc_writereg16>
    36d8:	27 96       	adiw	r28, 0x07	; 7
    36da:	ea e0       	ldi	r30, 0x0A	; 10
    36dc:	0c 94 6d 6d 	jmp	0xdada	; 0xdada <__epilogue_restores__+0x10>

000036e0 <enc_addsum>:
    36e0:	a0 e0       	ldi	r26, 0x00	; 0
    36e2:	b0 e0       	ldi	r27, 0x00	; 0
    36e4:	e6 e7       	ldi	r30, 0x76	; 118
    36e6:	fb e1       	ldi	r31, 0x1B	; 27
    36e8:	0c 94 52 6d 	jmp	0xdaa4	; 0xdaa4 <__prologue_saves__+0x12>
    36ec:	b8 2e       	mov	r11, r24
    36ee:	28 2f       	mov	r18, r24
    36f0:	39 2f       	mov	r19, r25
    36f2:	69 01       	movw	r12, r18
    36f4:	ee 24       	eor	r14, r14
    36f6:	ff 24       	eor	r15, r15
    36f8:	87 01       	movw	r16, r14
    36fa:	11 c0       	rjmp	.+34     	; 0x371e <enc_addsum+0x3e>
    36fc:	0e 94 43 19 	call	0x3286	; 0x3286 <enc_readbuf>
    3700:	d8 2f       	mov	r29, r24
    3702:	0e 94 43 19 	call	0x3286	; 0x3286 <enc_readbuf>
    3706:	c8 2f       	mov	r28, r24
    3708:	ce 01       	movw	r24, r28
    370a:	a0 e0       	ldi	r26, 0x00	; 0
    370c:	b0 e0       	ldi	r27, 0x00	; 0
    370e:	e8 0e       	add	r14, r24
    3710:	f9 1e       	adc	r15, r25
    3712:	0a 1f       	adc	r16, r26
    3714:	1b 1f       	adc	r17, r27
    3716:	8e ef       	ldi	r24, 0xFE	; 254
    3718:	9f ef       	ldi	r25, 0xFF	; 255
    371a:	c8 0e       	add	r12, r24
    371c:	d9 1e       	adc	r13, r25
    371e:	92 e0       	ldi	r25, 0x02	; 2
    3720:	c9 16       	cp	r12, r25
    3722:	d1 04       	cpc	r13, r1
    3724:	58 f7       	brcc	.-42     	; 0x36fc <enc_addsum+0x1c>
    3726:	c7 01       	movw	r24, r14
    3728:	d8 01       	movw	r26, r16
    372a:	9c 01       	movw	r18, r24
    372c:	ad 01       	movw	r20, r26
    372e:	b0 fe       	sbrs	r11, 0
    3730:	0b c0       	rjmp	.+22     	; 0x3748 <enc_addsum+0x68>
    3732:	0e 94 43 19 	call	0x3286	; 0x3286 <enc_readbuf>
    3736:	d8 2f       	mov	r29, r24
    3738:	c0 e0       	ldi	r28, 0x00	; 0
    373a:	9e 01       	movw	r18, r28
    373c:	40 e0       	ldi	r20, 0x00	; 0
    373e:	50 e0       	ldi	r21, 0x00	; 0
    3740:	2e 0d       	add	r18, r14
    3742:	3f 1d       	adc	r19, r15
    3744:	40 1f       	adc	r20, r16
    3746:	51 1f       	adc	r21, r17
    3748:	20 30       	cpi	r18, 0x00	; 0
    374a:	80 e0       	ldi	r24, 0x00	; 0
    374c:	38 07       	cpc	r19, r24
    374e:	81 e0       	ldi	r24, 0x01	; 1
    3750:	48 07       	cpc	r20, r24
    3752:	80 e0       	ldi	r24, 0x00	; 0
    3754:	58 07       	cpc	r21, r24
    3756:	a0 f0       	brcs	.+40     	; 0x3780 <enc_addsum+0xa0>
    3758:	ca 01       	movw	r24, r20
    375a:	40 e0       	ldi	r20, 0x00	; 0
    375c:	50 e0       	ldi	r21, 0x00	; 0
    375e:	a0 e0       	ldi	r26, 0x00	; 0
    3760:	b0 e0       	ldi	r27, 0x00	; 0
    3762:	28 0f       	add	r18, r24
    3764:	39 1f       	adc	r19, r25
    3766:	4a 1f       	adc	r20, r26
    3768:	5b 1f       	adc	r21, r27
    376a:	20 30       	cpi	r18, 0x00	; 0
    376c:	90 e0       	ldi	r25, 0x00	; 0
    376e:	39 07       	cpc	r19, r25
    3770:	91 e0       	ldi	r25, 0x01	; 1
    3772:	49 07       	cpc	r20, r25
    3774:	90 e0       	ldi	r25, 0x00	; 0
    3776:	59 07       	cpc	r21, r25
    3778:	18 f0       	brcs	.+6      	; 0x3780 <enc_addsum+0xa0>
    377a:	c9 01       	movw	r24, r18
    377c:	01 96       	adiw	r24, 0x01	; 1
    377e:	9c 01       	movw	r18, r24
    3780:	c9 01       	movw	r24, r18
    3782:	cd b7       	in	r28, 0x3d	; 61
    3784:	de b7       	in	r29, 0x3e	; 62
    3786:	e9 e0       	ldi	r30, 0x09	; 9
    3788:	0c 94 6e 6d 	jmp	0xdadc	; 0xdadc <__epilogue_restores__+0x12>

0000378c <enc_rxchksum>:
    378c:	0f 93       	push	r16
    378e:	1f 93       	push	r17
    3790:	8b 01       	movw	r16, r22
    3792:	0e 94 42 1a 	call	0x3484	; 0x3484 <enc_rxseek>
    3796:	c8 01       	movw	r24, r16
    3798:	0e 94 70 1b 	call	0x36e0	; 0x36e0 <enc_addsum>
    379c:	9c 01       	movw	r18, r24
    379e:	20 95       	com	r18
    37a0:	30 95       	com	r19
    37a2:	c9 01       	movw	r24, r18
    37a4:	1f 91       	pop	r17
    37a6:	0f 91       	pop	r16
    37a8:	08 95       	ret

000037aa <enc_txchksum>:
    37aa:	ef 92       	push	r14
    37ac:	ff 92       	push	r15
    37ae:	0f 93       	push	r16
    37b0:	1f 93       	push	r17
    37b2:	8c 01       	movw	r16, r24
    37b4:	7b 01       	movw	r14, r22
    37b6:	80 e0       	ldi	r24, 0x00	; 0
    37b8:	0e 94 fa 18 	call	0x31f4	; 0x31f4 <enc_bankselect>
    37bc:	07 52       	subi	r16, 0x27	; 39
    37be:	16 4e       	sbci	r17, 0xE6	; 230
    37c0:	80 e0       	ldi	r24, 0x00	; 0
    37c2:	b8 01       	movw	r22, r16
    37c4:	0e 94 d4 18 	call	0x31a8	; 0x31a8 <enc_writereg16>
    37c8:	c7 01       	movw	r24, r14
    37ca:	0e 94 70 1b 	call	0x36e0	; 0x36e0 <enc_addsum>
    37ce:	9c 01       	movw	r18, r24
    37d0:	20 95       	com	r18
    37d2:	30 95       	com	r19
    37d4:	c9 01       	movw	r24, r18
    37d6:	1f 91       	pop	r17
    37d8:	0f 91       	pop	r16
    37da:	ff 90       	pop	r15
    37dc:	ef 90       	pop	r14
    37de:	08 95       	ret

000037e0 <enc_packetcopy>:
    37e0:	a0 e0       	ldi	r26, 0x00	; 0
    37e2:	b0 e0       	ldi	r27, 0x00	; 0
    37e4:	e6 ef       	ldi	r30, 0xF6	; 246
    37e6:	fb e1       	ldi	r31, 0x1B	; 27
    37e8:	0c 94 53 6d 	jmp	0xdaa6	; 0xdaa6 <__prologue_saves__+0x14>
    37ec:	6c 01       	movw	r12, r24
    37ee:	7b 01       	movw	r14, r22
    37f0:	8a 01       	movw	r16, r20
    37f2:	41 15       	cp	r20, r1
    37f4:	51 05       	cpc	r21, r1
    37f6:	09 f4       	brne	.+2      	; 0x37fa <enc_packetcopy+0x1a>
    37f8:	44 c0       	rjmp	.+136    	; 0x3882 <enc_packetcopy+0xa2>
    37fa:	41 30       	cpi	r20, 0x01	; 1
    37fc:	51 05       	cpc	r21, r1
    37fe:	51 f4       	brne	.+20     	; 0x3814 <enc_packetcopy+0x34>
    3800:	0e 94 42 1a 	call	0x3484	; 0x3484 <enc_rxseek>
    3804:	c7 01       	movw	r24, r14
    3806:	0e 94 67 1a 	call	0x34ce	; 0x34ce <enc_txseek>
    380a:	0e 94 43 19 	call	0x3286	; 0x3286 <enc_readbuf>
    380e:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    3812:	37 c0       	rjmp	.+110    	; 0x3882 <enc_packetcopy+0xa2>
    3814:	80 e0       	ldi	r24, 0x00	; 0
    3816:	0e 94 fa 18 	call	0x31f4	; 0x31f4 <enc_bankselect>
    381a:	c0 91 5f 04 	lds	r28, 0x045F
    381e:	d0 91 60 04 	lds	r29, 0x0460
    3822:	26 96       	adiw	r28, 0x06	; 6
    3824:	cc 0d       	add	r28, r12
    3826:	dd 1d       	adc	r29, r13
    3828:	89 e1       	ldi	r24, 0x19	; 25
    382a:	c8 3d       	cpi	r28, 0xD8	; 216
    382c:	d8 07       	cpc	r29, r24
    382e:	10 f0       	brcs	.+4      	; 0x3834 <enc_packetcopy+0x54>
    3830:	c8 5d       	subi	r28, 0xD8	; 216
    3832:	d9 41       	sbci	r29, 0x19	; 25
    3834:	80 e1       	ldi	r24, 0x10	; 16
    3836:	be 01       	movw	r22, r28
    3838:	0e 94 d4 18 	call	0x31a8	; 0x31a8 <enc_writereg16>
    383c:	b8 01       	movw	r22, r16
    383e:	61 50       	subi	r22, 0x01	; 1
    3840:	70 40       	sbci	r23, 0x00	; 0
    3842:	6c 0f       	add	r22, r28
    3844:	7d 1f       	adc	r23, r29
    3846:	99 e1       	ldi	r25, 0x19	; 25
    3848:	68 3d       	cpi	r22, 0xD8	; 216
    384a:	79 07       	cpc	r23, r25
    384c:	10 f0       	brcs	.+4      	; 0x3852 <enc_packetcopy+0x72>
    384e:	68 5d       	subi	r22, 0xD8	; 216
    3850:	79 41       	sbci	r23, 0x19	; 25
    3852:	82 e1       	ldi	r24, 0x12	; 18
    3854:	0e 94 d4 18 	call	0x31a8	; 0x31a8 <enc_writereg16>
    3858:	89 ed       	ldi	r24, 0xD9	; 217
    385a:	99 e1       	ldi	r25, 0x19	; 25
    385c:	e8 0e       	add	r14, r24
    385e:	f9 1e       	adc	r15, r25
    3860:	84 e1       	ldi	r24, 0x14	; 20
    3862:	b7 01       	movw	r22, r14
    3864:	0e 94 d4 18 	call	0x31a8	; 0x31a8 <enc_writereg16>
    3868:	8f e1       	ldi	r24, 0x1F	; 31
    386a:	60 e1       	ldi	r22, 0x10	; 16
    386c:	0e 94 ee 18 	call	0x31dc	; 0x31dc <enc_clrbit>
    3870:	8f e1       	ldi	r24, 0x1F	; 31
    3872:	60 e2       	ldi	r22, 0x20	; 32
    3874:	0e 94 e2 18 	call	0x31c4	; 0x31c4 <enc_setbit>
    3878:	8f e1       	ldi	r24, 0x1F	; 31
    387a:	0e 94 8d 18 	call	0x311a	; 0x311a <enc_readethreg>
    387e:	85 fd       	sbrc	r24, 5
    3880:	fb cf       	rjmp	.-10     	; 0x3878 <enc_packetcopy+0x98>
    3882:	cd b7       	in	r28, 0x3d	; 61
    3884:	de b7       	in	r29, 0x3e	; 62
    3886:	e8 e0       	ldi	r30, 0x08	; 8
    3888:	0c 94 6f 6d 	jmp	0xdade	; 0xdade <__epilogue_restores__+0x14>

0000388c <enc_powerdown>:
    388c:	8f e1       	ldi	r24, 0x1F	; 31
    388e:	64 e0       	ldi	r22, 0x04	; 4
    3890:	0e 94 ee 18 	call	0x31dc	; 0x31dc <enc_clrbit>
    3894:	8d e1       	ldi	r24, 0x1D	; 29
    3896:	0e 94 8d 18 	call	0x311a	; 0x311a <enc_readethreg>
    389a:	82 fd       	sbrc	r24, 2
    389c:	fb cf       	rjmp	.-10     	; 0x3894 <enc_powerdown+0x8>
    389e:	8f e1       	ldi	r24, 0x1F	; 31
    38a0:	0e 94 8d 18 	call	0x311a	; 0x311a <enc_readethreg>
    38a4:	87 fd       	sbrc	r24, 7
    38a6:	fb cf       	rjmp	.-10     	; 0x389e <enc_powerdown+0x12>
    38a8:	8e e1       	ldi	r24, 0x1E	; 30
    38aa:	60 e2       	ldi	r22, 0x20	; 32
    38ac:	0e 94 e2 18 	call	0x31c4	; 0x31c4 <enc_setbit>
    38b0:	08 95       	ret

000038b2 <enc_setclkout>:
    38b2:	1f 93       	push	r17
    38b4:	18 2f       	mov	r17, r24
    38b6:	83 e0       	ldi	r24, 0x03	; 3
    38b8:	0e 94 fa 18 	call	0x31f4	; 0x31f4 <enc_bankselect>
    38bc:	85 e1       	ldi	r24, 0x15	; 21
    38be:	61 2f       	mov	r22, r17
    38c0:	0e 94 aa 18 	call	0x3154	; 0x3154 <enc_writereg>
    38c4:	1f 91       	pop	r17
    38c6:	08 95       	ret

000038c8 <enc_getclkout>:
    38c8:	83 e0       	ldi	r24, 0x03	; 3
    38ca:	0e 94 fa 18 	call	0x31f4	; 0x31f4 <enc_bankselect>
    38ce:	85 e1       	ldi	r24, 0x15	; 21
    38d0:	0e 94 8d 18 	call	0x311a	; 0x311a <enc_readethreg>
    38d4:	08 95       	ret

000038d6 <enc_readstr>:
    38d6:	fc 01       	movw	r30, r24
    38d8:	2c 98       	cbi	0x05, 4	; 5
    38da:	8a e3       	ldi	r24, 0x3A	; 58
    38dc:	8e bd       	out	0x2e, r24	; 46
    38de:	0d b4       	in	r0, 0x2d	; 45
    38e0:	07 fe       	sbrs	r0, 7
    38e2:	fd cf       	rjmp	.-6      	; 0x38de <enc_readstr+0x8>
    38e4:	20 e0       	ldi	r18, 0x00	; 0
    38e6:	30 e0       	ldi	r19, 0x00	; 0
    38e8:	0a c0       	rjmp	.+20     	; 0x38fe <enc_readstr+0x28>
    38ea:	1e bc       	out	0x2e, r1	; 46
    38ec:	0d b4       	in	r0, 0x2d	; 45
    38ee:	07 fe       	sbrs	r0, 7
    38f0:	fd cf       	rjmp	.-6      	; 0x38ec <enc_readstr+0x16>
    38f2:	8e b5       	in	r24, 0x2e	; 46
    38f4:	81 93       	st	Z+, r24
    38f6:	2f 5f       	subi	r18, 0xFF	; 255
    38f8:	3f 4f       	sbci	r19, 0xFF	; 255
    38fa:	84 17       	cp	r24, r20
    38fc:	19 f0       	breq	.+6      	; 0x3904 <enc_readstr+0x2e>
    38fe:	26 17       	cp	r18, r22
    3900:	37 07       	cpc	r19, r23
    3902:	98 f3       	brcs	.-26     	; 0x38ea <enc_readstr+0x14>
    3904:	10 82       	st	Z, r1
    3906:	2c 9a       	sbi	0x05, 4	; 5
    3908:	c9 01       	movw	r24, r18
    390a:	08 95       	ret

0000390c <enc_skip>:
    390c:	0f 93       	push	r16
    390e:	1f 93       	push	r17
    3910:	cf 93       	push	r28
    3912:	df 93       	push	r29
    3914:	8c 01       	movw	r16, r24
    3916:	c0 e0       	ldi	r28, 0x00	; 0
    3918:	d0 e0       	ldi	r29, 0x00	; 0
    391a:	03 c0       	rjmp	.+6      	; 0x3922 <enc_skip+0x16>
    391c:	0e 94 43 19 	call	0x3286	; 0x3286 <enc_readbuf>
    3920:	21 96       	adiw	r28, 0x01	; 1
    3922:	c0 17       	cp	r28, r16
    3924:	d1 07       	cpc	r29, r17
    3926:	d0 f3       	brcs	.-12     	; 0x391c <enc_skip+0x10>
    3928:	df 91       	pop	r29
    392a:	cf 91       	pop	r28
    392c:	1f 91       	pop	r17
    392e:	0f 91       	pop	r16
    3930:	08 95       	ret

00003932 <enc_writebufc>:
    3932:	cf 93       	push	r28
    3934:	df 93       	push	r29
    3936:	ec 01       	movw	r28, r24
    3938:	0e 94 c0 6d 	call	0xdb80	; 0xdb80 <strlen_P>
    393c:	ac 01       	movw	r20, r24
    393e:	2c 98       	cbi	0x05, 4	; 5
    3940:	8a e7       	ldi	r24, 0x7A	; 122
    3942:	8e bd       	out	0x2e, r24	; 46
    3944:	0d b4       	in	r0, 0x2d	; 45
    3946:	07 fe       	sbrs	r0, 7
    3948:	fd cf       	rjmp	.-6      	; 0x3944 <enc_writebufc+0x12>
    394a:	20 e0       	ldi	r18, 0x00	; 0
    394c:	30 e0       	ldi	r19, 0x00	; 0
    394e:	0a c0       	rjmp	.+20     	; 0x3964 <enc_writebufc+0x32>
    3950:	fe 01       	movw	r30, r28
    3952:	e2 0f       	add	r30, r18
    3954:	f3 1f       	adc	r31, r19
    3956:	e4 91       	lpm	r30, Z+
    3958:	ee bd       	out	0x2e, r30	; 46
    395a:	0d b4       	in	r0, 0x2d	; 45
    395c:	07 fe       	sbrs	r0, 7
    395e:	fd cf       	rjmp	.-6      	; 0x395a <enc_writebufc+0x28>
    3960:	2f 5f       	subi	r18, 0xFF	; 255
    3962:	3f 4f       	sbci	r19, 0xFF	; 255
    3964:	24 17       	cp	r18, r20
    3966:	35 07       	cpc	r19, r21
    3968:	98 f3       	brcs	.-26     	; 0x3950 <enc_writebufc+0x1e>
    396a:	2c 9a       	sbi	0x05, 4	; 5
    396c:	ca 01       	movw	r24, r20
    396e:	df 91       	pop	r29
    3970:	cf 91       	pop	r28
    3972:	08 95       	ret

00003974 <enc_powerup>:
    3974:	8e e1       	ldi	r24, 0x1E	; 30
    3976:	60 e2       	ldi	r22, 0x20	; 32
    3978:	0e 94 ee 18 	call	0x31dc	; 0x31dc <enc_clrbit>
    397c:	80 e1       	ldi	r24, 0x10	; 16
    397e:	90 e0       	ldi	r25, 0x00	; 0
    3980:	0e 94 bf 1f 	call	0x3f7e	; 0x3f7e <wait>
    3984:	8d e1       	ldi	r24, 0x1D	; 29
    3986:	0e 94 8d 18 	call	0x311a	; 0x311a <enc_readethreg>
    398a:	83 fd       	sbrc	r24, 3
    398c:	fb cf       	rjmp	.-10     	; 0x3984 <enc_powerup+0x10>
    398e:	80 ff       	sbrs	r24, 0
    3990:	f9 cf       	rjmp	.-14     	; 0x3984 <enc_powerup+0x10>
    3992:	8f e1       	ldi	r24, 0x1F	; 31
    3994:	64 e0       	ldi	r22, 0x04	; 4
    3996:	0e 94 e2 18 	call	0x31c4	; 0x31c4 <enc_setbit>
    399a:	08 95       	ret

0000399c <enc_init>:
    399c:	1f 93       	push	r17
    399e:	8e e1       	ldi	r24, 0x1E	; 30
    39a0:	60 e2       	ldi	r22, 0x20	; 32
    39a2:	0e 94 ee 18 	call	0x31dc	; 0x31dc <enc_clrbit>
    39a6:	80 e1       	ldi	r24, 0x10	; 16
    39a8:	90 e0       	ldi	r25, 0x00	; 0
    39aa:	0e 94 bf 1f 	call	0x3f7e	; 0x3f7e <wait>
    39ae:	5e 98       	cbi	0x0b, 6	; 11
    39b0:	80 e1       	ldi	r24, 0x10	; 16
    39b2:	90 e0       	ldi	r25, 0x00	; 0
    39b4:	0e 94 bf 1f 	call	0x3f7e	; 0x3f7e <wait>
    39b8:	5e 9a       	sbi	0x0b, 6	; 11
    39ba:	80 e1       	ldi	r24, 0x10	; 16
    39bc:	90 e0       	ldi	r25, 0x00	; 0
    39be:	0e 94 bf 1f 	call	0x3f7e	; 0x3f7e <wait>
    39c2:	1f ef       	ldi	r17, 0xFF	; 255
    39c4:	2c 98       	cbi	0x05, 4	; 5
    39c6:	1e bd       	out	0x2e, r17	; 46
    39c8:	0d b4       	in	r0, 0x2d	; 45
    39ca:	07 fe       	sbrs	r0, 7
    39cc:	fd cf       	rjmp	.-6      	; 0x39c8 <enc_init+0x2c>
    39ce:	2c 9a       	sbi	0x05, 4	; 5
    39d0:	80 e1       	ldi	r24, 0x10	; 16
    39d2:	90 e0       	ldi	r25, 0x00	; 0
    39d4:	0e 94 bf 1f 	call	0x3f7e	; 0x3f7e <wait>
    39d8:	8d e1       	ldi	r24, 0x1D	; 29
    39da:	0e 94 8d 18 	call	0x311a	; 0x311a <enc_readethreg>
    39de:	83 fd       	sbrc	r24, 3
    39e0:	f1 cf       	rjmp	.-30     	; 0x39c4 <enc_init+0x28>
    39e2:	80 ff       	sbrs	r24, 0
    39e4:	ef cf       	rjmp	.-34     	; 0x39c4 <enc_init+0x28>
    39e6:	8f e1       	ldi	r24, 0x1F	; 31
    39e8:	60 ec       	ldi	r22, 0xC0	; 192
    39ea:	0e 94 aa 18 	call	0x3154	; 0x3154 <enc_writereg>
    39ee:	8e e1       	ldi	r24, 0x1E	; 30
    39f0:	60 e8       	ldi	r22, 0x80	; 128
    39f2:	0e 94 aa 18 	call	0x3154	; 0x3154 <enc_writereg>
    39f6:	88 e0       	ldi	r24, 0x08	; 8
    39f8:	60 e0       	ldi	r22, 0x00	; 0
    39fa:	70 e0       	ldi	r23, 0x00	; 0
    39fc:	0e 94 d4 18 	call	0x31a8	; 0x31a8 <enc_writereg16>
    3a00:	8c e0       	ldi	r24, 0x0C	; 12
    3a02:	67 ed       	ldi	r22, 0xD7	; 215
    3a04:	79 e1       	ldi	r23, 0x19	; 25
    3a06:	0e 94 d4 18 	call	0x31a8	; 0x31a8 <enc_writereg16>
    3a0a:	8a e0       	ldi	r24, 0x0A	; 10
    3a0c:	67 ed       	ldi	r22, 0xD7	; 215
    3a0e:	79 e1       	ldi	r23, 0x19	; 25
    3a10:	0e 94 d4 18 	call	0x31a8	; 0x31a8 <enc_writereg16>
    3a14:	84 e0       	ldi	r24, 0x04	; 4
    3a16:	68 ed       	ldi	r22, 0xD8	; 216
    3a18:	79 e1       	ldi	r23, 0x19	; 25
    3a1a:	0e 94 d4 18 	call	0x31a8	; 0x31a8 <enc_writereg16>
    3a1e:	81 e0       	ldi	r24, 0x01	; 1
    3a20:	0e 94 fa 18 	call	0x31f4	; 0x31f4 <enc_bankselect>
    3a24:	88 e1       	ldi	r24, 0x18	; 24
    3a26:	61 ea       	ldi	r22, 0xA1	; 161
    3a28:	0e 94 aa 18 	call	0x3154	; 0x3154 <enc_writereg>
    3a2c:	82 e0       	ldi	r24, 0x02	; 2
    3a2e:	0e 94 fa 18 	call	0x31f4	; 0x31f4 <enc_bankselect>
    3a32:	80 e0       	ldi	r24, 0x00	; 0
    3a34:	6d e0       	ldi	r22, 0x0D	; 13
    3a36:	0e 94 aa 18 	call	0x3154	; 0x3154 <enc_writereg>
    3a3a:	81 e0       	ldi	r24, 0x01	; 1
    3a3c:	60 e0       	ldi	r22, 0x00	; 0
    3a3e:	0e 94 aa 18 	call	0x3154	; 0x3154 <enc_writereg>
    3a42:	82 e0       	ldi	r24, 0x02	; 2
    3a44:	62 e3       	ldi	r22, 0x32	; 50
    3a46:	0e 94 aa 18 	call	0x3154	; 0x3154 <enc_writereg>
    3a4a:	8a e0       	ldi	r24, 0x0A	; 10
    3a4c:	6e ee       	ldi	r22, 0xEE	; 238
    3a4e:	75 e0       	ldi	r23, 0x05	; 5
    3a50:	0e 94 d4 18 	call	0x31a8	; 0x31a8 <enc_writereg16>
    3a54:	86 e0       	ldi	r24, 0x06	; 6
    3a56:	62 e1       	ldi	r22, 0x12	; 18
    3a58:	7c e0       	ldi	r23, 0x0C	; 12
    3a5a:	0e 94 d4 18 	call	0x31a8	; 0x31a8 <enc_writereg16>
    3a5e:	84 e0       	ldi	r24, 0x04	; 4
    3a60:	62 e1       	ldi	r22, 0x12	; 18
    3a62:	0e 94 aa 18 	call	0x3154	; 0x3154 <enc_writereg>
    3a66:	83 e0       	ldi	r24, 0x03	; 3
    3a68:	60 e4       	ldi	r22, 0x40	; 64
    3a6a:	0e 94 aa 18 	call	0x3154	; 0x3154 <enc_writereg>
    3a6e:	89 e0       	ldi	r24, 0x09	; 9
    3a70:	6f e3       	ldi	r22, 0x3F	; 63
    3a72:	0e 94 aa 18 	call	0x3154	; 0x3154 <enc_writereg>
    3a76:	83 e0       	ldi	r24, 0x03	; 3
    3a78:	0e 94 fa 18 	call	0x31f4	; 0x31f4 <enc_bankselect>
    3a7c:	85 e1       	ldi	r24, 0x15	; 21
    3a7e:	60 e0       	ldi	r22, 0x00	; 0
    3a80:	0e 94 aa 18 	call	0x3154	; 0x3154 <enc_writereg>
    3a84:	84 e0       	ldi	r24, 0x04	; 4
    3a86:	60 91 8c 04 	lds	r22, 0x048C
    3a8a:	0e 94 aa 18 	call	0x3154	; 0x3154 <enc_writereg>
    3a8e:	85 e0       	ldi	r24, 0x05	; 5
    3a90:	60 91 8d 04 	lds	r22, 0x048D
    3a94:	0e 94 aa 18 	call	0x3154	; 0x3154 <enc_writereg>
    3a98:	82 e0       	ldi	r24, 0x02	; 2
    3a9a:	60 91 8e 04 	lds	r22, 0x048E
    3a9e:	0e 94 aa 18 	call	0x3154	; 0x3154 <enc_writereg>
    3aa2:	83 e0       	ldi	r24, 0x03	; 3
    3aa4:	60 91 8f 04 	lds	r22, 0x048F
    3aa8:	0e 94 aa 18 	call	0x3154	; 0x3154 <enc_writereg>
    3aac:	80 e0       	ldi	r24, 0x00	; 0
    3aae:	60 91 90 04 	lds	r22, 0x0490
    3ab2:	0e 94 aa 18 	call	0x3154	; 0x3154 <enc_writereg>
    3ab6:	81 e0       	ldi	r24, 0x01	; 1
    3ab8:	60 91 91 04 	lds	r22, 0x0491
    3abc:	0e 94 aa 18 	call	0x3154	; 0x3154 <enc_writereg>
    3ac0:	82 e1       	ldi	r24, 0x12	; 18
    3ac2:	0e 94 8d 18 	call	0x311a	; 0x311a <enc_readethreg>
    3ac6:	8f 71       	andi	r24, 0x1F	; 31
    3ac8:	80 93 63 04 	sts	0x0463, r24
    3acc:	80 e0       	ldi	r24, 0x00	; 0
    3ace:	60 e0       	ldi	r22, 0x00	; 0
    3ad0:	70 e0       	ldi	r23, 0x00	; 0
    3ad2:	0e 94 27 19 	call	0x324e	; 0x324e <enc_writephy>
    3ad6:	80 e1       	ldi	r24, 0x10	; 16
    3ad8:	60 e0       	ldi	r22, 0x00	; 0
    3ada:	71 e0       	ldi	r23, 0x01	; 1
    3adc:	0e 94 27 19 	call	0x324e	; 0x324e <enc_writephy>
    3ae0:	84 e1       	ldi	r24, 0x14	; 20
    3ae2:	62 e7       	ldi	r22, 0x72	; 114
    3ae4:	74 e0       	ldi	r23, 0x04	; 4
    3ae6:	0e 94 27 19 	call	0x324e	; 0x324e <enc_writephy>
    3aea:	80 e0       	ldi	r24, 0x00	; 0
    3aec:	0e 94 fa 18 	call	0x31f4	; 0x31f4 <enc_bankselect>
    3af0:	8f e1       	ldi	r24, 0x1F	; 31
    3af2:	64 e0       	ldi	r22, 0x04	; 4
    3af4:	0e 94 aa 18 	call	0x3154	; 0x3154 <enc_writereg>
    3af8:	1f 91       	pop	r17
    3afa:	08 95       	ret

00003afc <enc_input>:
    3afc:	cf 93       	push	r28
    3afe:	df 93       	push	r29
    3b00:	ec 01       	movw	r28, r24
    3b02:	81 e0       	ldi	r24, 0x01	; 1
    3b04:	0e 94 fa 18 	call	0x31f4	; 0x31f4 <enc_bankselect>
    3b08:	89 e1       	ldi	r24, 0x19	; 25
    3b0a:	0e 94 8d 18 	call	0x311a	; 0x311a <enc_readethreg>
    3b0e:	88 23       	and	r24, r24
    3b10:	21 f4       	brne	.+8      	; 0x3b1a <enc_input+0x1e>
    3b12:	0e 94 fa 18 	call	0x31f4	; 0x31f4 <enc_bankselect>
    3b16:	80 e0       	ldi	r24, 0x00	; 0
    3b18:	44 c0       	rjmp	.+136    	; 0x3ba2 <enc_input+0xa6>
    3b1a:	80 e0       	ldi	r24, 0x00	; 0
    3b1c:	0e 94 fa 18 	call	0x31f4	; 0x31f4 <enc_bankselect>
    3b20:	60 91 61 04 	lds	r22, 0x0461
    3b24:	70 91 62 04 	lds	r23, 0x0462
    3b28:	80 e0       	ldi	r24, 0x00	; 0
    3b2a:	0e 94 d4 18 	call	0x31a8	; 0x31a8 <enc_writereg16>
    3b2e:	80 91 61 04 	lds	r24, 0x0461
    3b32:	90 91 62 04 	lds	r25, 0x0462
    3b36:	90 93 60 04 	sts	0x0460, r25
    3b3a:	80 93 5f 04 	sts	0x045F, r24
    3b3e:	89 e5       	ldi	r24, 0x59	; 89
    3b40:	94 e0       	ldi	r25, 0x04	; 4
    3b42:	66 e0       	ldi	r22, 0x06	; 6
    3b44:	70 e0       	ldi	r23, 0x00	; 0
    3b46:	0e 94 7e 19 	call	0x32fc	; 0x32fc <enc_readbuffer>
    3b4a:	80 91 5a 04 	lds	r24, 0x045A
    3b4e:	8f 71       	andi	r24, 0x1F	; 31
    3b50:	80 93 5a 04 	sts	0x045A, r24
    3b54:	80 91 5c 04 	lds	r24, 0x045C
    3b58:	8f 71       	andi	r24, 0x1F	; 31
    3b5a:	80 93 5c 04 	sts	0x045C, r24
    3b5e:	20 91 59 04 	lds	r18, 0x0459
    3b62:	30 91 5a 04 	lds	r19, 0x045A
    3b66:	30 93 62 04 	sts	0x0462, r19
    3b6a:	20 93 61 04 	sts	0x0461, r18
    3b6e:	80 91 5b 04 	lds	r24, 0x045B
    3b72:	90 91 5c 04 	lds	r25, 0x045C
    3b76:	8f 5e       	subi	r24, 0xEF	; 239
    3b78:	95 40       	sbci	r25, 0x05	; 5
    3b7a:	80 f4       	brcc	.+32     	; 0x3b9c <enc_input+0xa0>
    3b7c:	89 e1       	ldi	r24, 0x19	; 25
    3b7e:	28 3d       	cpi	r18, 0xD8	; 216
    3b80:	38 07       	cpc	r19, r24
    3b82:	60 f4       	brcc	.+24     	; 0x3b9c <enc_input+0xa0>
    3b84:	20 fd       	sbrc	r18, 0
    3b86:	0a c0       	rjmp	.+20     	; 0x3b9c <enc_input+0xa0>
    3b88:	80 91 5e 04 	lds	r24, 0x045E
    3b8c:	87 fd       	sbrc	r24, 7
    3b8e:	06 c0       	rjmp	.+12     	; 0x3b9c <enc_input+0xa0>
    3b90:	80 91 5d 04 	lds	r24, 0x045D
    3b94:	84 fd       	sbrc	r24, 4
    3b96:	02 c0       	rjmp	.+4      	; 0x3b9c <enc_input+0xa0>
    3b98:	87 fd       	sbrc	r24, 7
    3b9a:	06 c0       	rjmp	.+12     	; 0x3ba8 <enc_input+0xac>
    3b9c:	0e 94 ce 1c 	call	0x399c	; 0x399c <enc_init>
    3ba0:	82 e0       	ldi	r24, 0x02	; 2
    3ba2:	df 91       	pop	r29
    3ba4:	cf 91       	pop	r28
    3ba6:	08 95       	ret
    3ba8:	f8 94       	cli
    3baa:	80 91 fe 0b 	lds	r24, 0x0BFE
    3bae:	90 91 ff 0b 	lds	r25, 0x0BFF
    3bb2:	a0 91 00 0c 	lds	r26, 0x0C00
    3bb6:	b0 91 01 0c 	lds	r27, 0x0C01
    3bba:	80 93 e8 07 	sts	0x07E8, r24
    3bbe:	90 93 e9 07 	sts	0x07E9, r25
    3bc2:	a0 93 ea 07 	sts	0x07EA, r26
    3bc6:	b0 93 eb 07 	sts	0x07EB, r27
    3bca:	80 91 fc 0b 	lds	r24, 0x0BFC
    3bce:	90 91 fd 0b 	lds	r25, 0x0BFD
    3bd2:	90 93 f1 07 	sts	0x07F1, r25
    3bd6:	80 93 f0 07 	sts	0x07F0, r24
    3bda:	78 94       	sei
    3bdc:	ce 01       	movw	r24, r28
    3bde:	6e e0       	ldi	r22, 0x0E	; 14
    3be0:	70 e0       	ldi	r23, 0x00	; 0
    3be2:	0e 94 7e 19 	call	0x32fc	; 0x32fc <enc_readbuffer>
    3be6:	81 e0       	ldi	r24, 0x01	; 1
    3be8:	dc cf       	rjmp	.-72     	; 0x3ba2 <enc_input+0xa6>

00003bea <write_data>:
    3bea:	98 b1       	in	r25, 0x08	; 8
    3bec:	8f 70       	andi	r24, 0x0F	; 15
    3bee:	90 7f       	andi	r25, 0xF0	; 240
    3bf0:	89 2b       	or	r24, r25
    3bf2:	88 b9       	out	0x08, r24	; 8
    3bf4:	08 95       	ret

00003bf6 <lcd_writeir4>:
    3bf6:	9f e7       	ldi	r25, 0x7F	; 127
    3bf8:	97 b9       	out	0x07, r25	; 7
    3bfa:	46 98       	cbi	0x08, 6	; 8
    3bfc:	45 98       	cbi	0x08, 5	; 8
    3bfe:	98 b1       	in	r25, 0x08	; 8
    3c00:	8f 70       	andi	r24, 0x0F	; 15
    3c02:	90 7f       	andi	r25, 0xF0	; 240
    3c04:	89 2b       	or	r24, r25
    3c06:	88 b9       	out	0x08, r24	; 8
    3c08:	00 00       	nop
    3c0a:	44 9a       	sbi	0x08, 4	; 8
    3c0c:	83 e0       	ldi	r24, 0x03	; 3
    3c0e:	90 e0       	ldi	r25, 0x00	; 0
    3c10:	0e 94 bf 1f 	call	0x3f7e	; 0x3f7e <wait>
    3c14:	44 98       	cbi	0x08, 4	; 8
    3c16:	08 95       	ret

00003c18 <lcd_read>:
    3c18:	1f 93       	push	r17
    3c1a:	80 e7       	ldi	r24, 0x70	; 112
    3c1c:	87 b9       	out	0x07, r24	; 7
    3c1e:	45 9a       	sbi	0x08, 5	; 8
    3c20:	00 00       	nop
    3c22:	44 9a       	sbi	0x08, 4	; 8
    3c24:	82 e0       	ldi	r24, 0x02	; 2
    3c26:	90 e0       	ldi	r25, 0x00	; 0
    3c28:	0e 94 bf 1f 	call	0x3f7e	; 0x3f7e <wait>
    3c2c:	16 b1       	in	r17, 0x06	; 6
    3c2e:	44 98       	cbi	0x08, 4	; 8
    3c30:	83 e0       	ldi	r24, 0x03	; 3
    3c32:	90 e0       	ldi	r25, 0x00	; 0
    3c34:	0e 94 bf 1f 	call	0x3f7e	; 0x3f7e <wait>
    3c38:	44 9a       	sbi	0x08, 4	; 8
    3c3a:	82 e0       	ldi	r24, 0x02	; 2
    3c3c:	90 e0       	ldi	r25, 0x00	; 0
    3c3e:	0e 94 bf 1f 	call	0x3f7e	; 0x3f7e <wait>
    3c42:	86 b1       	in	r24, 0x06	; 6
    3c44:	8f 70       	andi	r24, 0x0F	; 15
    3c46:	12 95       	swap	r17
    3c48:	10 7f       	andi	r17, 0xF0	; 240
    3c4a:	44 98       	cbi	0x08, 4	; 8
    3c4c:	81 2b       	or	r24, r17
    3c4e:	1f 91       	pop	r17
    3c50:	08 95       	ret

00003c52 <lcd_busy>:
    3c52:	46 98       	cbi	0x08, 6	; 8
    3c54:	0e 94 0c 1e 	call	0x3c18	; 0x3c18 <lcd_read>
    3c58:	80 78       	andi	r24, 0x80	; 128
    3c5a:	08 95       	ret

00003c5c <lcd_readdr>:
    3c5c:	46 9a       	sbi	0x08, 6	; 8
    3c5e:	0e 94 0c 1e 	call	0x3c18	; 0x3c18 <lcd_read>
    3c62:	08 95       	ret

00003c64 <lcd_write>:
    3c64:	1f 93       	push	r17
    3c66:	18 2f       	mov	r17, r24
    3c68:	8f e7       	ldi	r24, 0x7F	; 127
    3c6a:	87 b9       	out	0x07, r24	; 7
    3c6c:	45 98       	cbi	0x08, 5	; 8
    3c6e:	88 b1       	in	r24, 0x08	; 8
    3c70:	91 2f       	mov	r25, r17
    3c72:	92 95       	swap	r25
    3c74:	9f 70       	andi	r25, 0x0F	; 15
    3c76:	80 7f       	andi	r24, 0xF0	; 240
    3c78:	98 2b       	or	r25, r24
    3c7a:	98 b9       	out	0x08, r25	; 8
    3c7c:	44 9a       	sbi	0x08, 4	; 8
    3c7e:	83 e0       	ldi	r24, 0x03	; 3
    3c80:	90 e0       	ldi	r25, 0x00	; 0
    3c82:	0e 94 bf 1f 	call	0x3f7e	; 0x3f7e <wait>
    3c86:	44 98       	cbi	0x08, 4	; 8
    3c88:	88 b1       	in	r24, 0x08	; 8
    3c8a:	1f 70       	andi	r17, 0x0F	; 15
    3c8c:	80 7f       	andi	r24, 0xF0	; 240
    3c8e:	81 2b       	or	r24, r17
    3c90:	88 b9       	out	0x08, r24	; 8
    3c92:	44 9a       	sbi	0x08, 4	; 8
    3c94:	83 e0       	ldi	r24, 0x03	; 3
    3c96:	90 e0       	ldi	r25, 0x00	; 0
    3c98:	0e 94 bf 1f 	call	0x3f7e	; 0x3f7e <wait>
    3c9c:	44 98       	cbi	0x08, 4	; 8
    3c9e:	1f 91       	pop	r17
    3ca0:	08 95       	ret

00003ca2 <lcd_writedr>:
    3ca2:	46 9a       	sbi	0x08, 6	; 8
    3ca4:	0e 94 32 1e 	call	0x3c64	; 0x3c64 <lcd_write>
    3ca8:	08 95       	ret

00003caa <lcd_putch>:
    3caa:	1f 93       	push	r17
    3cac:	18 2f       	mov	r17, r24
    3cae:	80 91 47 01 	lds	r24, 0x0147
    3cb2:	90 91 48 01 	lds	r25, 0x0148
    3cb6:	89 2b       	or	r24, r25
    3cb8:	39 f0       	breq	.+14     	; 0x3cc8 <lcd_putch+0x1e>
    3cba:	0e 94 29 1e 	call	0x3c52	; 0x3c52 <lcd_busy>
    3cbe:	88 23       	and	r24, r24
    3cc0:	e1 f7       	brne	.-8      	; 0x3cba <lcd_putch+0x10>
    3cc2:	81 2f       	mov	r24, r17
    3cc4:	0e 94 51 1e 	call	0x3ca2	; 0x3ca2 <lcd_writedr>
    3cc8:	1f 91       	pop	r17
    3cca:	08 95       	ret

00003ccc <lcd_putstr>:
    3ccc:	cf 93       	push	r28
    3cce:	df 93       	push	r29
    3cd0:	ec 01       	movw	r28, r24
    3cd2:	80 91 47 01 	lds	r24, 0x0147
    3cd6:	90 91 48 01 	lds	r25, 0x0148
    3cda:	89 2b       	or	r24, r25
    3cdc:	21 f4       	brne	.+8      	; 0x3ce6 <lcd_putstr+0x1a>
    3cde:	06 c0       	rjmp	.+12     	; 0x3cec <lcd_putstr+0x20>
    3ce0:	21 96       	adiw	r28, 0x01	; 1
    3ce2:	0e 94 55 1e 	call	0x3caa	; 0x3caa <lcd_putch>
    3ce6:	88 81       	ld	r24, Y
    3ce8:	88 23       	and	r24, r24
    3cea:	d1 f7       	brne	.-12     	; 0x3ce0 <lcd_putstr+0x14>
    3cec:	df 91       	pop	r29
    3cee:	cf 91       	pop	r28
    3cf0:	08 95       	ret

00003cf2 <lcd_writeir>:
    3cf2:	46 98       	cbi	0x08, 6	; 8
    3cf4:	0e 94 32 1e 	call	0x3c64	; 0x3c64 <lcd_write>
    3cf8:	08 95       	ret

00003cfa <lcd_curleft>:
    3cfa:	80 91 47 01 	lds	r24, 0x0147
    3cfe:	90 91 48 01 	lds	r25, 0x0148
    3d02:	89 2b       	or	r24, r25
    3d04:	39 f0       	breq	.+14     	; 0x3d14 <lcd_curleft+0x1a>
    3d06:	0e 94 29 1e 	call	0x3c52	; 0x3c52 <lcd_busy>
    3d0a:	88 23       	and	r24, r24
    3d0c:	e1 f7       	brne	.-8      	; 0x3d06 <lcd_curleft+0xc>
    3d0e:	80 e1       	ldi	r24, 0x10	; 16
    3d10:	0e 94 79 1e 	call	0x3cf2	; 0x3cf2 <lcd_writeir>
    3d14:	08 95       	ret

00003d16 <lcd_dispcursor>:
    3d16:	1f 93       	push	r17
    3d18:	18 2f       	mov	r17, r24
    3d1a:	80 91 47 01 	lds	r24, 0x0147
    3d1e:	90 91 48 01 	lds	r25, 0x0148
    3d22:	89 2b       	or	r24, r25
    3d24:	59 f0       	breq	.+22     	; 0x3d3c <lcd_dispcursor+0x26>
    3d26:	0e 94 29 1e 	call	0x3c52	; 0x3c52 <lcd_busy>
    3d2a:	88 23       	and	r24, r24
    3d2c:	e1 f7       	brne	.-8      	; 0x3d26 <lcd_dispcursor+0x10>
    3d2e:	11 23       	and	r17, r17
    3d30:	11 f4       	brne	.+4      	; 0x3d36 <lcd_dispcursor+0x20>
    3d32:	8c e0       	ldi	r24, 0x0C	; 12
    3d34:	01 c0       	rjmp	.+2      	; 0x3d38 <lcd_dispcursor+0x22>
    3d36:	8e e0       	ldi	r24, 0x0E	; 14
    3d38:	0e 94 79 1e 	call	0x3cf2	; 0x3cf2 <lcd_writeir>
    3d3c:	1f 91       	pop	r17
    3d3e:	08 95       	ret

00003d40 <lcd_cls>:
    3d40:	80 91 47 01 	lds	r24, 0x0147
    3d44:	90 91 48 01 	lds	r25, 0x0148
    3d48:	89 2b       	or	r24, r25
    3d4a:	39 f0       	breq	.+14     	; 0x3d5a <lcd_cls+0x1a>
    3d4c:	0e 94 29 1e 	call	0x3c52	; 0x3c52 <lcd_busy>
    3d50:	88 23       	and	r24, r24
    3d52:	e1 f7       	brne	.-8      	; 0x3d4c <lcd_cls+0xc>
    3d54:	81 e0       	ldi	r24, 0x01	; 1
    3d56:	0e 94 79 1e 	call	0x3cf2	; 0x3cf2 <lcd_writeir>
    3d5a:	08 95       	ret

00003d5c <lcd_locate>:
    3d5c:	1f 93       	push	r17
    3d5e:	28 2f       	mov	r18, r24
    3d60:	80 91 47 01 	lds	r24, 0x0147
    3d64:	90 91 48 01 	lds	r25, 0x0148
    3d68:	89 2b       	or	r24, r25
    3d6a:	c1 f0       	breq	.+48     	; 0x3d9c <lcd_locate+0x40>
    3d6c:	66 23       	and	r22, r22
    3d6e:	11 f4       	brne	.+4      	; 0x3d74 <lcd_locate+0x18>
    3d70:	12 2f       	mov	r17, r18
    3d72:	0c c0       	rjmp	.+24     	; 0x3d8c <lcd_locate+0x30>
    3d74:	61 30       	cpi	r22, 0x01	; 1
    3d76:	19 f4       	brne	.+6      	; 0x3d7e <lcd_locate+0x22>
    3d78:	12 2f       	mov	r17, r18
    3d7a:	10 5c       	subi	r17, 0xC0	; 192
    3d7c:	07 c0       	rjmp	.+14     	; 0x3d8c <lcd_locate+0x30>
    3d7e:	62 30       	cpi	r22, 0x02	; 2
    3d80:	19 f4       	brne	.+6      	; 0x3d88 <lcd_locate+0x2c>
    3d82:	12 2f       	mov	r17, r18
    3d84:	1c 5e       	subi	r17, 0xEC	; 236
    3d86:	02 c0       	rjmp	.+4      	; 0x3d8c <lcd_locate+0x30>
    3d88:	12 2f       	mov	r17, r18
    3d8a:	1c 5a       	subi	r17, 0xAC	; 172
    3d8c:	0e 94 29 1e 	call	0x3c52	; 0x3c52 <lcd_busy>
    3d90:	88 23       	and	r24, r24
    3d92:	e1 f7       	brne	.-8      	; 0x3d8c <lcd_locate+0x30>
    3d94:	81 2f       	mov	r24, r17
    3d96:	80 68       	ori	r24, 0x80	; 128
    3d98:	0e 94 79 1e 	call	0x3cf2	; 0x3cf2 <lcd_writeir>
    3d9c:	1f 91       	pop	r17
    3d9e:	08 95       	ret

00003da0 <lcd_space>:
    3da0:	0f 93       	push	r16
    3da2:	1f 93       	push	r17
    3da4:	cf 93       	push	r28
    3da6:	df 93       	push	r29
    3da8:	28 2f       	mov	r18, r24
    3daa:	04 2f       	mov	r16, r20
    3dac:	80 91 47 01 	lds	r24, 0x0147
    3db0:	90 91 48 01 	lds	r25, 0x0148
    3db4:	89 2b       	or	r24, r25
    3db6:	91 f0       	breq	.+36     	; 0x3ddc <lcd_space+0x3c>
    3db8:	82 2f       	mov	r24, r18
    3dba:	0e 94 ae 1e 	call	0x3d5c	; 0x3d5c <lcd_locate>
    3dbe:	10 e0       	ldi	r17, 0x00	; 0
    3dc0:	c0 2f       	mov	r28, r16
    3dc2:	dd 27       	eor	r29, r29
    3dc4:	c7 fd       	sbrc	r28, 7
    3dc6:	d0 95       	com	r29
    3dc8:	04 c0       	rjmp	.+8      	; 0x3dd2 <lcd_space+0x32>
    3dca:	80 e2       	ldi	r24, 0x20	; 32
    3dcc:	0e 94 55 1e 	call	0x3caa	; 0x3caa <lcd_putch>
    3dd0:	1f 5f       	subi	r17, 0xFF	; 255
    3dd2:	81 2f       	mov	r24, r17
    3dd4:	90 e0       	ldi	r25, 0x00	; 0
    3dd6:	8c 17       	cp	r24, r28
    3dd8:	9d 07       	cpc	r25, r29
    3dda:	bc f3       	brlt	.-18     	; 0x3dca <lcd_space+0x2a>
    3ddc:	df 91       	pop	r29
    3dde:	cf 91       	pop	r28
    3de0:	1f 91       	pop	r17
    3de2:	0f 91       	pop	r16
    3de4:	08 95       	ret

00003de6 <lcd_lcls>:
    3de6:	68 2f       	mov	r22, r24
    3de8:	80 91 47 01 	lds	r24, 0x0147
    3dec:	90 91 48 01 	lds	r25, 0x0148
    3df0:	89 2b       	or	r24, r25
    3df2:	21 f0       	breq	.+8      	; 0x3dfc <lcd_lcls+0x16>
    3df4:	80 e0       	ldi	r24, 0x00	; 0
    3df6:	40 e1       	ldi	r20, 0x10	; 16
    3df8:	0e 94 d0 1e 	call	0x3da0	; 0x3da0 <lcd_space>
    3dfc:	08 95       	ret

00003dfe <lcd_printc>:
    3dfe:	cf 93       	push	r28
    3e00:	df 93       	push	r29
    3e02:	28 2f       	mov	r18, r24
    3e04:	ea 01       	movw	r28, r20
    3e06:	80 91 47 01 	lds	r24, 0x0147
    3e0a:	90 91 48 01 	lds	r25, 0x0148
    3e0e:	89 2b       	or	r24, r25
    3e10:	59 f0       	breq	.+22     	; 0x3e28 <lcd_printc+0x2a>
    3e12:	82 2f       	mov	r24, r18
    3e14:	0e 94 ae 1e 	call	0x3d5c	; 0x3d5c <lcd_locate>
    3e18:	03 c0       	rjmp	.+6      	; 0x3e20 <lcd_printc+0x22>
    3e1a:	0e 94 55 1e 	call	0x3caa	; 0x3caa <lcd_putch>
    3e1e:	21 96       	adiw	r28, 0x01	; 1
    3e20:	fe 01       	movw	r30, r28
    3e22:	84 91       	lpm	r24, Z+
    3e24:	88 23       	and	r24, r24
    3e26:	c9 f7       	brne	.-14     	; 0x3e1a <lcd_printc+0x1c>
    3e28:	df 91       	pop	r29
    3e2a:	cf 91       	pop	r28
    3e2c:	08 95       	ret

00003e2e <lcd_print>:
    3e2e:	cf 93       	push	r28
    3e30:	df 93       	push	r29
    3e32:	28 2f       	mov	r18, r24
    3e34:	ea 01       	movw	r28, r20
    3e36:	80 91 47 01 	lds	r24, 0x0147
    3e3a:	90 91 48 01 	lds	r25, 0x0148
    3e3e:	89 2b       	or	r24, r25
    3e40:	31 f0       	breq	.+12     	; 0x3e4e <lcd_print+0x20>
    3e42:	82 2f       	mov	r24, r18
    3e44:	0e 94 ae 1e 	call	0x3d5c	; 0x3d5c <lcd_locate>
    3e48:	ce 01       	movw	r24, r28
    3e4a:	0e 94 66 1e 	call	0x3ccc	; 0x3ccc <lcd_putstr>
    3e4e:	df 91       	pop	r29
    3e50:	cf 91       	pop	r28
    3e52:	08 95       	ret

00003e54 <lcd_putcode>:
    3e54:	1f 93       	push	r17
    3e56:	28 2f       	mov	r18, r24
    3e58:	14 2f       	mov	r17, r20
    3e5a:	80 91 47 01 	lds	r24, 0x0147
    3e5e:	90 91 48 01 	lds	r25, 0x0148
    3e62:	89 2b       	or	r24, r25
    3e64:	51 f0       	breq	.+20     	; 0x3e7a <lcd_putcode+0x26>
    3e66:	82 2f       	mov	r24, r18
    3e68:	0e 94 ae 1e 	call	0x3d5c	; 0x3d5c <lcd_locate>
    3e6c:	0e 94 29 1e 	call	0x3c52	; 0x3c52 <lcd_busy>
    3e70:	88 23       	and	r24, r24
    3e72:	e1 f7       	brne	.-8      	; 0x3e6c <lcd_putcode+0x18>
    3e74:	81 2f       	mov	r24, r17
    3e76:	0e 94 51 1e 	call	0x3ca2	; 0x3ca2 <lcd_writedr>
    3e7a:	1f 91       	pop	r17
    3e7c:	08 95       	ret

00003e7e <lcd_setcgram>:
    3e7e:	0f 93       	push	r16
    3e80:	1f 93       	push	r17
    3e82:	cf 93       	push	r28
    3e84:	df 93       	push	r29
    3e86:	8b 01       	movw	r16, r22
    3e88:	88 0f       	add	r24, r24
    3e8a:	88 0f       	add	r24, r24
    3e8c:	88 0f       	add	r24, r24
    3e8e:	88 73       	andi	r24, 0x38	; 56
    3e90:	80 64       	ori	r24, 0x40	; 64
    3e92:	0e 94 79 1e 	call	0x3cf2	; 0x3cf2 <lcd_writeir>
    3e96:	c0 e0       	ldi	r28, 0x00	; 0
    3e98:	d0 e0       	ldi	r29, 0x00	; 0
    3e9a:	0e 94 29 1e 	call	0x3c52	; 0x3c52 <lcd_busy>
    3e9e:	88 23       	and	r24, r24
    3ea0:	e1 f7       	brne	.-8      	; 0x3e9a <lcd_setcgram+0x1c>
    3ea2:	81 e0       	ldi	r24, 0x01	; 1
    3ea4:	90 e0       	ldi	r25, 0x00	; 0
    3ea6:	0e 94 bf 1f 	call	0x3f7e	; 0x3f7e <wait>
    3eaa:	f8 01       	movw	r30, r16
    3eac:	ec 0f       	add	r30, r28
    3eae:	fd 1f       	adc	r31, r29
    3eb0:	e4 91       	lpm	r30, Z+
    3eb2:	8e 2f       	mov	r24, r30
    3eb4:	0e 94 51 1e 	call	0x3ca2	; 0x3ca2 <lcd_writedr>
    3eb8:	21 96       	adiw	r28, 0x01	; 1
    3eba:	c8 30       	cpi	r28, 0x08	; 8
    3ebc:	d1 05       	cpc	r29, r1
    3ebe:	69 f7       	brne	.-38     	; 0x3e9a <lcd_setcgram+0x1c>
    3ec0:	df 91       	pop	r29
    3ec2:	cf 91       	pop	r28
    3ec4:	1f 91       	pop	r17
    3ec6:	0f 91       	pop	r16
    3ec8:	08 95       	ret

00003eca <lcd_init>:
    3eca:	1f 93       	push	r17
    3ecc:	cf 93       	push	r28
    3ece:	df 93       	push	r29
    3ed0:	80 91 47 01 	lds	r24, 0x0147
    3ed4:	90 91 48 01 	lds	r25, 0x0148
    3ed8:	89 2b       	or	r24, r25
    3eda:	09 f4       	brne	.+2      	; 0x3ede <lcd_init+0x14>
    3edc:	4c c0       	rjmp	.+152    	; 0x3f76 <lcd_init+0xac>
    3ede:	88 e2       	ldi	r24, 0x28	; 40
    3ee0:	90 e0       	ldi	r25, 0x00	; 0
    3ee2:	0e 94 ce 1f 	call	0x3f9c	; 0x3f9c <waitms>
    3ee6:	83 e0       	ldi	r24, 0x03	; 3
    3ee8:	0e 94 fb 1d 	call	0x3bf6	; 0x3bf6 <lcd_writeir4>
    3eec:	82 e4       	ldi	r24, 0x42	; 66
    3eee:	90 e0       	ldi	r25, 0x00	; 0
    3ef0:	0e 94 bf 1f 	call	0x3f7e	; 0x3f7e <wait>
    3ef4:	83 e0       	ldi	r24, 0x03	; 3
    3ef6:	0e 94 fb 1d 	call	0x3bf6	; 0x3bf6 <lcd_writeir4>
    3efa:	81 e0       	ldi	r24, 0x01	; 1
    3efc:	90 e0       	ldi	r25, 0x00	; 0
    3efe:	0e 94 bf 1f 	call	0x3f7e	; 0x3f7e <wait>
    3f02:	83 e0       	ldi	r24, 0x03	; 3
    3f04:	0e 94 fb 1d 	call	0x3bf6	; 0x3bf6 <lcd_writeir4>
    3f08:	81 e0       	ldi	r24, 0x01	; 1
    3f0a:	90 e0       	ldi	r25, 0x00	; 0
    3f0c:	0e 94 bf 1f 	call	0x3f7e	; 0x3f7e <wait>
    3f10:	82 e0       	ldi	r24, 0x02	; 2
    3f12:	0e 94 fb 1d 	call	0x3bf6	; 0x3bf6 <lcd_writeir4>
    3f16:	0e 94 29 1e 	call	0x3c52	; 0x3c52 <lcd_busy>
    3f1a:	88 23       	and	r24, r24
    3f1c:	e1 f7       	brne	.-8      	; 0x3f16 <lcd_init+0x4c>
    3f1e:	88 e2       	ldi	r24, 0x28	; 40
    3f20:	0e 94 79 1e 	call	0x3cf2	; 0x3cf2 <lcd_writeir>
    3f24:	0e 94 29 1e 	call	0x3c52	; 0x3c52 <lcd_busy>
    3f28:	88 23       	and	r24, r24
    3f2a:	e1 f7       	brne	.-8      	; 0x3f24 <lcd_init+0x5a>
    3f2c:	88 e0       	ldi	r24, 0x08	; 8
    3f2e:	0e 94 79 1e 	call	0x3cf2	; 0x3cf2 <lcd_writeir>
    3f32:	0e 94 29 1e 	call	0x3c52	; 0x3c52 <lcd_busy>
    3f36:	88 23       	and	r24, r24
    3f38:	e1 f7       	brne	.-8      	; 0x3f32 <lcd_init+0x68>
    3f3a:	81 e0       	ldi	r24, 0x01	; 1
    3f3c:	0e 94 79 1e 	call	0x3cf2	; 0x3cf2 <lcd_writeir>
    3f40:	0e 94 29 1e 	call	0x3c52	; 0x3c52 <lcd_busy>
    3f44:	88 23       	and	r24, r24
    3f46:	e1 f7       	brne	.-8      	; 0x3f40 <lcd_init+0x76>
    3f48:	86 e0       	ldi	r24, 0x06	; 6
    3f4a:	0e 94 79 1e 	call	0x3cf2	; 0x3cf2 <lcd_writeir>
    3f4e:	0e 94 29 1e 	call	0x3c52	; 0x3c52 <lcd_busy>
    3f52:	88 23       	and	r24, r24
    3f54:	e1 f7       	brne	.-8      	; 0x3f4e <lcd_init+0x84>
    3f56:	8c e0       	ldi	r24, 0x0C	; 12
    3f58:	0e 94 79 1e 	call	0x3cf2	; 0x3cf2 <lcd_writeir>
    3f5c:	c2 ed       	ldi	r28, 0xD2	; 210
    3f5e:	d0 e0       	ldi	r29, 0x00	; 0
    3f60:	10 e0       	ldi	r17, 0x00	; 0
    3f62:	fe 01       	movw	r30, r28
    3f64:	65 91       	lpm	r22, Z+
    3f66:	74 91       	lpm	r23, Z+
    3f68:	81 2f       	mov	r24, r17
    3f6a:	0e 94 3f 1f 	call	0x3e7e	; 0x3e7e <lcd_setcgram>
    3f6e:	1f 5f       	subi	r17, 0xFF	; 255
    3f70:	22 96       	adiw	r28, 0x02	; 2
    3f72:	18 30       	cpi	r17, 0x08	; 8
    3f74:	b1 f7       	brne	.-20     	; 0x3f62 <lcd_init+0x98>
    3f76:	df 91       	pop	r29
    3f78:	cf 91       	pop	r28
    3f7a:	1f 91       	pop	r17
    3f7c:	08 95       	ret

00003f7e <wait>:
    3f7e:	28 ec       	ldi	r18, 0xC8	; 200

00003f80 <CPU_wait_lp6>:
    3f80:	00 00       	nop
    3f82:	2a 95       	dec	r18
    3f84:	e9 f7       	brne	.-6      	; 0x3f80 <CPU_wait_lp6>
    3f86:	01 97       	sbiw	r24, 0x01	; 1
    3f88:	d1 f7       	brne	.-12     	; 0x3f7e <wait>
    3f8a:	08 95       	ret

00003f8c <getcount1ms>:
    3f8c:	f8 94       	cli
    3f8e:	20 91 06 03 	lds	r18, 0x0306
    3f92:	30 91 07 03 	lds	r19, 0x0307
    3f96:	78 94       	sei
    3f98:	c9 01       	movw	r24, r18
    3f9a:	08 95       	ret

00003f9c <waitms>:
    3f9c:	ac 01       	movw	r20, r24
    3f9e:	f8 94       	cli
    3fa0:	20 91 06 03 	lds	r18, 0x0306
    3fa4:	30 91 07 03 	lds	r19, 0x0307
    3fa8:	78 94       	sei
    3faa:	01 c0       	rjmp	.+2      	; 0x3fae <waitms+0x12>
    3fac:	a8 95       	wdr
    3fae:	f8 94       	cli
    3fb0:	80 91 06 03 	lds	r24, 0x0306
    3fb4:	90 91 07 03 	lds	r25, 0x0307
    3fb8:	78 94       	sei
    3fba:	82 1b       	sub	r24, r18
    3fbc:	93 0b       	sbc	r25, r19
    3fbe:	84 17       	cp	r24, r20
    3fc0:	95 07       	cpc	r25, r21
    3fc2:	a0 f3       	brcs	.-24     	; 0x3fac <waitms+0x10>
    3fc4:	08 95       	ret

00003fc6 <sio_getchar>:
    3fc6:	dc 01       	movw	r26, r24
    3fc8:	f8 94       	cli
    3fca:	78 94       	sei
    3fcc:	80 91 d3 03 	lds	r24, 0x03D3
    3fd0:	88 23       	and	r24, r24
    3fd2:	a9 f0       	breq	.+42     	; 0x3ffe <sio_getchar+0x38>
    3fd4:	f8 94       	cli
    3fd6:	e0 91 d1 03 	lds	r30, 0x03D1
    3fda:	f0 e0       	ldi	r31, 0x00	; 0
    3fdc:	ef 5a       	subi	r30, 0xAF	; 175
    3fde:	fc 4f       	sbci	r31, 0xFC	; 252
    3fe0:	80 81       	ld	r24, Z
    3fe2:	8c 93       	st	X, r24
    3fe4:	80 91 d1 03 	lds	r24, 0x03D1
    3fe8:	8f 5f       	subi	r24, 0xFF	; 255
    3fea:	8f 77       	andi	r24, 0x7F	; 127
    3fec:	80 93 d1 03 	sts	0x03D1, r24
    3ff0:	80 91 d3 03 	lds	r24, 0x03D3
    3ff4:	81 50       	subi	r24, 0x01	; 1
    3ff6:	80 93 d3 03 	sts	0x03D3, r24
    3ffa:	78 94       	sei
    3ffc:	81 e0       	ldi	r24, 0x01	; 1
    3ffe:	08 95       	ret

00004000 <sio_clear>:
    4000:	a1 e0       	ldi	r26, 0x01	; 1
    4002:	b0 e0       	ldi	r27, 0x00	; 0
    4004:	e6 e0       	ldi	r30, 0x06	; 6
    4006:	f0 e2       	ldi	r31, 0x20	; 32
    4008:	0c 94 57 6d 	jmp	0xdaae	; 0xdaae <__prologue_saves__+0x1c>
    400c:	8e 01       	movw	r16, r28
    400e:	0f 5f       	subi	r16, 0xFF	; 255
    4010:	1f 4f       	sbci	r17, 0xFF	; 255
    4012:	01 c0       	rjmp	.+2      	; 0x4016 <sio_clear+0x16>
    4014:	a8 95       	wdr
    4016:	c8 01       	movw	r24, r16
    4018:	0e 94 e3 1f 	call	0x3fc6	; 0x3fc6 <sio_getchar>
    401c:	81 30       	cpi	r24, 0x01	; 1
    401e:	d1 f3       	breq	.-12     	; 0x4014 <sio_clear+0x14>
    4020:	21 96       	adiw	r28, 0x01	; 1
    4022:	e4 e0       	ldi	r30, 0x04	; 4
    4024:	0c 94 73 6d 	jmp	0xdae6	; 0xdae6 <__epilogue_restores__+0x1c>

00004028 <sio_getstr>:
    4028:	a1 e0       	ldi	r26, 0x01	; 1
    402a:	b0 e0       	ldi	r27, 0x00	; 0
    402c:	ea e1       	ldi	r30, 0x1A	; 26
    402e:	f0 e2       	ldi	r31, 0x20	; 32
    4030:	0c 94 59 6d 	jmp	0xdab2	; 0xdab2 <__prologue_saves__+0x20>
    4034:	ce 01       	movw	r24, r28
    4036:	01 96       	adiw	r24, 0x01	; 1
    4038:	0e 94 e3 1f 	call	0x3fc6	; 0x3fc6 <sio_getchar>
    403c:	88 23       	and	r24, r24
    403e:	11 f4       	brne	.+4      	; 0x4044 <sio_getstr+0x1c>
    4040:	90 e0       	ldi	r25, 0x00	; 0
    4042:	22 c0       	rjmp	.+68     	; 0x4088 <sio_getstr+0x60>
    4044:	20 91 54 04 	lds	r18, 0x0454
    4048:	2f 37       	cpi	r18, 0x7F	; 127
    404a:	10 f4       	brcc	.+4      	; 0x4050 <sio_getstr+0x28>
    404c:	90 e0       	ldi	r25, 0x00	; 0
    404e:	05 c0       	rjmp	.+10     	; 0x405a <sio_getstr+0x32>
    4050:	10 92 58 04 	sts	0x0458, r1
    4054:	10 92 57 04 	sts	0x0457, r1
    4058:	92 e0       	ldi	r25, 0x02	; 2
    405a:	89 81       	ldd	r24, Y+1	; 0x01
    405c:	e2 2f       	mov	r30, r18
    405e:	f0 e0       	ldi	r31, 0x00	; 0
    4060:	ec 52       	subi	r30, 0x2C	; 44
    4062:	fc 4f       	sbci	r31, 0xFC	; 252
    4064:	80 83       	st	Z, r24
    4066:	e2 2f       	mov	r30, r18
    4068:	ef 5f       	subi	r30, 0xFF	; 255
    406a:	e0 93 54 04 	sts	0x0454, r30
    406e:	8a 30       	cpi	r24, 0x0A	; 10
    4070:	59 f4       	brne	.+22     	; 0x4088 <sio_getstr+0x60>
    4072:	f0 e0       	ldi	r31, 0x00	; 0
    4074:	ec 52       	subi	r30, 0x2C	; 44
    4076:	fc 4f       	sbci	r31, 0xFC	; 252
    4078:	10 82       	st	Z, r1
    407a:	10 92 54 04 	sts	0x0454, r1
    407e:	10 92 58 04 	sts	0x0458, r1
    4082:	10 92 57 04 	sts	0x0457, r1
    4086:	91 e0       	ldi	r25, 0x01	; 1
    4088:	89 2f       	mov	r24, r25
    408a:	21 96       	adiw	r28, 0x01	; 1
    408c:	e2 e0       	ldi	r30, 0x02	; 2
    408e:	0c 94 75 6d 	jmp	0xdaea	; 0xdaea <__epilogue_restores__+0x20>

00004092 <key_check>:
    4092:	90 91 0c 03 	lds	r25, 0x030C
    4096:	83 b1       	in	r24, 0x03	; 3
    4098:	e8 e0       	ldi	r30, 0x08	; 8
    409a:	f3 e0       	ldi	r31, 0x03	; 3
    409c:	e9 0f       	add	r30, r25
    409e:	f1 1d       	adc	r31, r1
    40a0:	80 95       	com	r24
    40a2:	8f 70       	andi	r24, 0x0F	; 15
    40a4:	80 83       	st	Z, r24
    40a6:	9f 5f       	subi	r25, 0xFF	; 255
    40a8:	93 70       	andi	r25, 0x03	; 3
    40aa:	90 93 0c 03 	sts	0x030C, r25
    40ae:	08 95       	ret

000040b0 <key_sense>:
    40b0:	90 91 09 03 	lds	r25, 0x0309
    40b4:	80 91 08 03 	lds	r24, 0x0308
    40b8:	98 23       	and	r25, r24
    40ba:	80 91 0a 03 	lds	r24, 0x030A
    40be:	98 23       	and	r25, r24
    40c0:	80 91 0b 03 	lds	r24, 0x030B
    40c4:	98 23       	and	r25, r24
    40c6:	61 f1       	breq	.+88     	; 0x4120 <key_sense+0x70>
    40c8:	98 30       	cpi	r25, 0x08	; 8
    40ca:	11 f4       	brne	.+4      	; 0x40d0 <key_sense+0x20>
    40cc:	94 e1       	ldi	r25, 0x14	; 20
    40ce:	21 c0       	rjmp	.+66     	; 0x4112 <key_sense+0x62>
    40d0:	94 30       	cpi	r25, 0x04	; 4
    40d2:	11 f4       	brne	.+4      	; 0x40d8 <key_sense+0x28>
    40d4:	93 e1       	ldi	r25, 0x13	; 19
    40d6:	1d c0       	rjmp	.+58     	; 0x4112 <key_sense+0x62>
    40d8:	92 30       	cpi	r25, 0x02	; 2
    40da:	11 f4       	brne	.+4      	; 0x40e0 <key_sense+0x30>
    40dc:	92 e1       	ldi	r25, 0x12	; 18
    40de:	19 c0       	rjmp	.+50     	; 0x4112 <key_sense+0x62>
    40e0:	91 30       	cpi	r25, 0x01	; 1
    40e2:	11 f4       	brne	.+4      	; 0x40e8 <key_sense+0x38>
    40e4:	91 e1       	ldi	r25, 0x11	; 17
    40e6:	15 c0       	rjmp	.+42     	; 0x4112 <key_sense+0x62>
    40e8:	9c 30       	cpi	r25, 0x0C	; 12
    40ea:	11 f4       	brne	.+4      	; 0x40f0 <key_sense+0x40>
    40ec:	98 e1       	ldi	r25, 0x18	; 24
    40ee:	11 c0       	rjmp	.+34     	; 0x4112 <key_sense+0x62>
    40f0:	93 30       	cpi	r25, 0x03	; 3
    40f2:	11 f4       	brne	.+4      	; 0x40f8 <key_sense+0x48>
    40f4:	9f e0       	ldi	r25, 0x0F	; 15
    40f6:	0d c0       	rjmp	.+26     	; 0x4112 <key_sense+0x62>
    40f8:	95 30       	cpi	r25, 0x05	; 5
    40fa:	11 f4       	brne	.+4      	; 0x4100 <key_sense+0x50>
    40fc:	9e e0       	ldi	r25, 0x0E	; 14
    40fe:	09 c0       	rjmp	.+18     	; 0x4112 <key_sense+0x62>
    4100:	99 30       	cpi	r25, 0x09	; 9
    4102:	11 f4       	brne	.+4      	; 0x4108 <key_sense+0x58>
    4104:	90 e1       	ldi	r25, 0x10	; 16
    4106:	05 c0       	rjmp	.+10     	; 0x4112 <key_sense+0x62>
    4108:	9a 30       	cpi	r25, 0x0A	; 10
    410a:	11 f0       	breq	.+4      	; 0x4110 <key_sense+0x60>
    410c:	90 e0       	ldi	r25, 0x00	; 0
    410e:	01 c0       	rjmp	.+2      	; 0x4112 <key_sense+0x62>
    4110:	96 e1       	ldi	r25, 0x16	; 22
    4112:	80 91 14 0c 	lds	r24, 0x0C14
    4116:	98 17       	cp	r25, r24
    4118:	29 f0       	breq	.+10     	; 0x4124 <key_sense+0x74>
    411a:	90 93 14 0c 	sts	0x0C14, r25
    411e:	03 c0       	rjmp	.+6      	; 0x4126 <key_sense+0x76>
    4120:	10 92 14 0c 	sts	0x0C14, r1
    4124:	90 e0       	ldi	r25, 0x00	; 0
    4126:	89 2f       	mov	r24, r25
    4128:	08 95       	ret

0000412a <key_input>:
    412a:	ef 92       	push	r14
    412c:	ff 92       	push	r15
    412e:	0f 93       	push	r16
    4130:	1f 93       	push	r17
    4132:	cf 93       	push	r28
    4134:	df 93       	push	r29
    4136:	f8 94       	cli
    4138:	e0 90 06 03 	lds	r14, 0x0306
    413c:	f0 90 07 03 	lds	r15, 0x0307
    4140:	78 94       	sei
    4142:	87 01       	movw	r16, r14
    4144:	a8 95       	wdr
    4146:	f8 94       	cli
    4148:	c0 91 06 03 	lds	r28, 0x0306
    414c:	d0 91 07 03 	lds	r29, 0x0307
    4150:	78 94       	sei
    4152:	ce 01       	movw	r24, r28
    4154:	80 1b       	sub	r24, r16
    4156:	91 0b       	sbc	r25, r17
    4158:	40 97       	sbiw	r24, 0x10	; 16
    415a:	18 f0       	brcs	.+6      	; 0x4162 <key_input+0x38>
    415c:	0e 94 49 20 	call	0x4092	; 0x4092 <key_check>
    4160:	8e 01       	movw	r16, r28
    4162:	0e 94 58 20 	call	0x40b0	; 0x40b0 <key_sense>
    4166:	88 23       	and	r24, r24
    4168:	31 f4       	brne	.+12     	; 0x4176 <key_input+0x4c>
    416a:	ce 19       	sub	r28, r14
    416c:	df 09       	sbc	r29, r15
    416e:	c0 51       	subi	r28, 0x10	; 16
    4170:	d7 42       	sbci	r29, 0x27	; 39
    4172:	40 f3       	brcs	.-48     	; 0x4144 <key_input+0x1a>
    4174:	89 e1       	ldi	r24, 0x19	; 25
    4176:	cd b7       	in	r28, 0x3d	; 61
    4178:	de b7       	in	r29, 0x3e	; 62
    417a:	e6 e0       	ldi	r30, 0x06	; 6
    417c:	0c 94 71 6d 	jmp	0xdae2	; 0xdae2 <__epilogue_restores__+0x18>

00004180 <eep_getstring32>:
    4180:	0f 93       	push	r16
    4182:	1f 93       	push	r17
    4184:	cf 93       	push	r28
    4186:	df 93       	push	r29
    4188:	9c 01       	movw	r18, r24
    418a:	eb 01       	movw	r28, r22
    418c:	8a 01       	movw	r16, r20
    418e:	01 c0       	rjmp	.+2      	; 0x4192 <eep_getstring32+0x12>
    4190:	a8 95       	wdr
    4192:	f9 99       	sbic	0x1f, 1	; 31
    4194:	fd cf       	rjmp	.-6      	; 0x4190 <eep_getstring32+0x10>
    4196:	ce 01       	movw	r24, r28
    4198:	b9 01       	movw	r22, r18
    419a:	4f e1       	ldi	r20, 0x1F	; 31
    419c:	50 e0       	ldi	r21, 0x00	; 0
    419e:	0e 94 56 6e 	call	0xdcac	; 0xdcac <__eerd_block_m644a>
    41a2:	1f 8e       	std	Y+31, r1	; 0x1f
    41a4:	88 81       	ld	r24, Y
    41a6:	99 27       	eor	r25, r25
    41a8:	87 fd       	sbrc	r24, 7
    41aa:	90 95       	com	r25
    41ac:	0e 94 80 6d 	call	0xdb00	; 0xdb00 <isalnum>
    41b0:	89 2b       	or	r24, r25
    41b2:	21 f4       	brne	.+8      	; 0x41bc <eep_getstring32+0x3c>
    41b4:	ce 01       	movw	r24, r28
    41b6:	b8 01       	movw	r22, r16
    41b8:	0e 94 b9 6d 	call	0xdb72	; 0xdb72 <strcpy_P>
    41bc:	df 91       	pop	r29
    41be:	cf 91       	pop	r28
    41c0:	1f 91       	pop	r17
    41c2:	0f 91       	pop	r16
    41c4:	08 95       	ret

000041c6 <eep_getstring16>:
    41c6:	0f 93       	push	r16
    41c8:	1f 93       	push	r17
    41ca:	cf 93       	push	r28
    41cc:	df 93       	push	r29
    41ce:	9c 01       	movw	r18, r24
    41d0:	eb 01       	movw	r28, r22
    41d2:	8a 01       	movw	r16, r20
    41d4:	01 c0       	rjmp	.+2      	; 0x41d8 <eep_getstring16+0x12>
    41d6:	a8 95       	wdr
    41d8:	f9 99       	sbic	0x1f, 1	; 31
    41da:	fd cf       	rjmp	.-6      	; 0x41d6 <eep_getstring16+0x10>
    41dc:	ce 01       	movw	r24, r28
    41de:	b9 01       	movw	r22, r18
    41e0:	4f e0       	ldi	r20, 0x0F	; 15
    41e2:	50 e0       	ldi	r21, 0x00	; 0
    41e4:	0e 94 56 6e 	call	0xdcac	; 0xdcac <__eerd_block_m644a>
    41e8:	1f 86       	std	Y+15, r1	; 0x0f
    41ea:	88 81       	ld	r24, Y
    41ec:	99 27       	eor	r25, r25
    41ee:	87 fd       	sbrc	r24, 7
    41f0:	90 95       	com	r25
    41f2:	0e 94 80 6d 	call	0xdb00	; 0xdb00 <isalnum>
    41f6:	89 2b       	or	r24, r25
    41f8:	21 f4       	brne	.+8      	; 0x4202 <eep_getstring16+0x3c>
    41fa:	ce 01       	movw	r24, r28
    41fc:	b8 01       	movw	r22, r16
    41fe:	0e 94 b9 6d 	call	0xdb72	; 0xdb72 <strcpy_P>
    4202:	df 91       	pop	r29
    4204:	cf 91       	pop	r28
    4206:	1f 91       	pop	r17
    4208:	0f 91       	pop	r16
    420a:	08 95       	ret

0000420c <eep_getipaddr>:
    420c:	ef 92       	push	r14
    420e:	ff 92       	push	r15
    4210:	0f 93       	push	r16
    4212:	1f 93       	push	r17
    4214:	14 2f       	mov	r17, r20
    4216:	05 2f       	mov	r16, r21
    4218:	f6 2e       	mov	r15, r22
    421a:	e7 2e       	mov	r14, r23
    421c:	01 c0       	rjmp	.+2      	; 0x4220 <eep_getipaddr+0x14>
    421e:	a8 95       	wdr
    4220:	f9 99       	sbic	0x1f, 1	; 31
    4222:	fd cf       	rjmp	.-6      	; 0x421e <eep_getipaddr+0x12>
    4224:	0e 94 66 6e 	call	0xdccc	; 0xdccc <__eerd_dword_m644a>
    4228:	9b 01       	movw	r18, r22
    422a:	ac 01       	movw	r20, r24
    422c:	2f 3f       	cpi	r18, 0xFF	; 255
    422e:	8f ef       	ldi	r24, 0xFF	; 255
    4230:	38 07       	cpc	r19, r24
    4232:	8f ef       	ldi	r24, 0xFF	; 255
    4234:	48 07       	cpc	r20, r24
    4236:	8f ef       	ldi	r24, 0xFF	; 255
    4238:	58 07       	cpc	r21, r24
    423a:	41 f4       	brne	.+16     	; 0x424c <eep_getipaddr+0x40>
    423c:	21 2f       	mov	r18, r17
    423e:	30 2f       	mov	r19, r16
    4240:	4f 2d       	mov	r20, r15
    4242:	5e 2d       	mov	r21, r14
    4244:	c9 01       	movw	r24, r18
    4246:	da 01       	movw	r26, r20
    4248:	9c 01       	movw	r18, r24
    424a:	ad 01       	movw	r20, r26
    424c:	b9 01       	movw	r22, r18
    424e:	ca 01       	movw	r24, r20
    4250:	1f 91       	pop	r17
    4252:	0f 91       	pop	r16
    4254:	ff 90       	pop	r15
    4256:	ef 90       	pop	r14
    4258:	08 95       	ret

0000425a <sio_setstrc>:
    425a:	1f 93       	push	r17
    425c:	cf 93       	push	r28
    425e:	df 93       	push	r29
    4260:	ec 01       	movw	r28, r24
    4262:	0e 94 c0 6d 	call	0xdb80	; 0xdb80 <strlen_P>
    4266:	18 2f       	mov	r17, r24
    4268:	80 34       	cpi	r24, 0x40	; 64
    426a:	14 f5       	brge	.+68     	; 0x42b0 <sio_setstrc+0x56>
    426c:	80 91 4f 03 	lds	r24, 0x034F
    4270:	90 91 50 03 	lds	r25, 0x0350
    4274:	01 97       	sbiw	r24, 0x01	; 1
    4276:	11 f4       	brne	.+4      	; 0x427c <sio_setstrc+0x22>
    4278:	a8 95       	wdr
    427a:	fe cf       	rjmp	.-4      	; 0x4278 <sio_setstrc+0x1e>
    427c:	81 e0       	ldi	r24, 0x01	; 1
    427e:	90 e0       	ldi	r25, 0x00	; 0
    4280:	90 93 50 03 	sts	0x0350, r25
    4284:	80 93 4f 03 	sts	0x034F, r24
    4288:	8d e0       	ldi	r24, 0x0D	; 13
    428a:	93 e0       	ldi	r25, 0x03	; 3
    428c:	be 01       	movw	r22, r28
    428e:	0e 94 b9 6d 	call	0xdb72	; 0xdb72 <strcpy_P>
    4292:	80 91 0d 03 	lds	r24, 0x030D
    4296:	80 93 c6 00 	sts	0x00C6, r24
    429a:	11 50       	subi	r17, 0x01	; 1
    429c:	10 93 4e 03 	sts	0x034E, r17
    42a0:	81 e0       	ldi	r24, 0x01	; 1
    42a2:	80 93 4d 03 	sts	0x034D, r24
    42a6:	80 91 c1 00 	lds	r24, 0x00C1
    42aa:	80 66       	ori	r24, 0x60	; 96
    42ac:	80 93 c1 00 	sts	0x00C1, r24
    42b0:	df 91       	pop	r29
    42b2:	cf 91       	pop	r28
    42b4:	1f 91       	pop	r17
    42b6:	08 95       	ret

000042b8 <sio_setstr>:
    42b8:	1f 93       	push	r17
    42ba:	bc 01       	movw	r22, r24
    42bc:	fc 01       	movw	r30, r24
    42be:	01 90       	ld	r0, Z+
    42c0:	00 20       	and	r0, r0
    42c2:	e9 f7       	brne	.-6      	; 0x42be <sio_setstr+0x6>
    42c4:	31 97       	sbiw	r30, 0x01	; 1
    42c6:	1e 2f       	mov	r17, r30
    42c8:	18 1b       	sub	r17, r24
    42ca:	10 34       	cpi	r17, 0x40	; 64
    42cc:	08 f5       	brcc	.+66     	; 0x4310 <sio_setstr+0x58>
    42ce:	80 91 4f 03 	lds	r24, 0x034F
    42d2:	90 91 50 03 	lds	r25, 0x0350
    42d6:	01 97       	sbiw	r24, 0x01	; 1
    42d8:	11 f4       	brne	.+4      	; 0x42de <sio_setstr+0x26>
    42da:	a8 95       	wdr
    42dc:	fe cf       	rjmp	.-4      	; 0x42da <sio_setstr+0x22>
    42de:	81 e0       	ldi	r24, 0x01	; 1
    42e0:	90 e0       	ldi	r25, 0x00	; 0
    42e2:	90 93 50 03 	sts	0x0350, r25
    42e6:	80 93 4f 03 	sts	0x034F, r24
    42ea:	8d e0       	ldi	r24, 0x0D	; 13
    42ec:	93 e0       	ldi	r25, 0x03	; 3
    42ee:	0e 94 32 6e 	call	0xdc64	; 0xdc64 <strcpy>
    42f2:	80 91 0d 03 	lds	r24, 0x030D
    42f6:	80 93 c6 00 	sts	0x00C6, r24
    42fa:	11 50       	subi	r17, 0x01	; 1
    42fc:	10 93 4e 03 	sts	0x034E, r17
    4300:	81 e0       	ldi	r24, 0x01	; 1
    4302:	80 93 4d 03 	sts	0x034D, r24
    4306:	80 91 c1 00 	lds	r24, 0x00C1
    430a:	80 66       	ori	r24, 0x60	; 96
    430c:	80 93 c1 00 	sts	0x00C1, r24
    4310:	1f 91       	pop	r17
    4312:	08 95       	ret

00004314 <sio_setstrn>:
    4314:	1f 93       	push	r17
    4316:	48 2f       	mov	r20, r24
    4318:	79 2f       	mov	r23, r25
    431a:	16 2f       	mov	r17, r22
    431c:	60 34       	cpi	r22, 0x40	; 64
    431e:	44 f5       	brge	.+80     	; 0x4370 <sio_setstrn+0x5c>
    4320:	80 91 4f 03 	lds	r24, 0x034F
    4324:	90 91 50 03 	lds	r25, 0x0350
    4328:	01 97       	sbiw	r24, 0x01	; 1
    432a:	11 f4       	brne	.+4      	; 0x4330 <sio_setstrn+0x1c>
    432c:	a8 95       	wdr
    432e:	fe cf       	rjmp	.-4      	; 0x432c <sio_setstrn+0x18>
    4330:	81 e0       	ldi	r24, 0x01	; 1
    4332:	90 e0       	ldi	r25, 0x00	; 0
    4334:	90 93 50 03 	sts	0x0350, r25
    4338:	80 93 4f 03 	sts	0x034F, r24
    433c:	2d e0       	ldi	r18, 0x0D	; 13
    433e:	33 e0       	ldi	r19, 0x03	; 3
    4340:	e6 2f       	mov	r30, r22
    4342:	ff 27       	eor	r31, r31
    4344:	e7 fd       	sbrc	r30, 7
    4346:	f0 95       	com	r31
    4348:	c9 01       	movw	r24, r18
    434a:	64 2f       	mov	r22, r20
    434c:	af 01       	movw	r20, r30
    434e:	0e 94 f1 6d 	call	0xdbe2	; 0xdbe2 <memcpy>
    4352:	80 91 0d 03 	lds	r24, 0x030D
    4356:	80 93 c6 00 	sts	0x00C6, r24
    435a:	11 50       	subi	r17, 0x01	; 1
    435c:	10 93 4e 03 	sts	0x034E, r17
    4360:	81 e0       	ldi	r24, 0x01	; 1
    4362:	80 93 4d 03 	sts	0x034D, r24
    4366:	80 91 c1 00 	lds	r24, 0x00C1
    436a:	80 66       	ori	r24, 0x60	; 96
    436c:	80 93 c1 00 	sts	0x00C1, r24
    4370:	1f 91       	pop	r17
    4372:	08 95       	ret

00004374 <samurai>:
    4374:	1f 1d       	adc	r17, r15
    4376:	1f 1e       	adc	r1, r31
    4378:	1f 1e       	adc	r1, r31
    437a:	1f 1f       	adc	r17, r31
    437c:	1e 1f       	adc	r17, r30
    437e:	1e 1f       	adc	r17, r30

00004380 <mktime>:
    4380:	cf 93       	push	r28
    4382:	df 93       	push	r29
    4384:	ec 01       	movw	r28, r24
    4386:	2c 96       	adiw	r28, 0x0c	; 12
    4388:	4a e8       	ldi	r20, 0x8A	; 138
    438a:	34 d0       	rcall	.+104    	; 0x43f4 <ldcp16>
    438c:	66 27       	eor	r22, r22
    438e:	77 27       	eor	r23, r23
    4390:	36 e4       	ldi	r19, 0x46	; 70
    4392:	ae e6       	ldi	r26, 0x6E	; 110
    4394:	b1 e0       	ldi	r27, 0x01	; 1
    4396:	53 2f       	mov	r21, r19
    4398:	53 70       	andi	r21, 0x03	; 3
    439a:	09 f0       	breq	.+2      	; 0x439e <mktime+0x1e>
    439c:	11 97       	sbiw	r26, 0x01	; 1
    439e:	32 17       	cp	r19, r18
    43a0:	29 f0       	breq	.+10     	; 0x43ac <mktime+0x2c>
    43a2:	78 f5       	brcc	.+94     	; 0x4402 <ldcp16+0xe>
    43a4:	6a 0f       	add	r22, r26
    43a6:	7b 1f       	adc	r23, r27
    43a8:	33 95       	inc	r19
    43aa:	f3 cf       	rjmp	.-26     	; 0x4392 <mktime+0x12>
    43ac:	4c e0       	ldi	r20, 0x0C	; 12
    43ae:	22 d0       	rcall	.+68     	; 0x43f4 <ldcp16>
    43b0:	e4 e7       	ldi	r30, 0x74	; 116
    43b2:	f3 e4       	ldi	r31, 0x43	; 67
    43b4:	30 e0       	ldi	r19, 0x00	; 0
    43b6:	c8 95       	lpm
    43b8:	31 96       	adiw	r30, 0x01	; 1
    43ba:	31 30       	cpi	r19, 0x01	; 1
    43bc:	11 f4       	brne	.+4      	; 0x43c2 <mktime+0x42>
    43be:	51 11       	cpse	r21, r1
    43c0:	0a 94       	dec	r0
    43c2:	32 17       	cp	r19, r18
    43c4:	20 f4       	brcc	.+8      	; 0x43ce <mktime+0x4e>
    43c6:	60 0d       	add	r22, r0
    43c8:	71 1d       	adc	r23, r1
    43ca:	33 95       	inc	r19
    43cc:	f4 cf       	rjmp	.-24     	; 0x43b6 <mktime+0x36>
    43ce:	40 2d       	mov	r20, r0
    43d0:	43 95       	inc	r20
    43d2:	10 d0       	rcall	.+32     	; 0x43f4 <ldcp16>
    43d4:	21 50       	subi	r18, 0x01	; 1
    43d6:	a8 f0       	brcs	.+42     	; 0x4402 <ldcp16+0xe>
    43d8:	62 0f       	add	r22, r18
    43da:	71 1d       	adc	r23, r1
    43dc:	88 27       	eor	r24, r24
    43de:	99 27       	eor	r25, r25
    43e0:	48 e1       	ldi	r20, 0x18	; 24
    43e2:	08 d0       	rcall	.+16     	; 0x43f4 <ldcp16>
    43e4:	15 d0       	rcall	.+42     	; 0x4410 <muladd3208>
    43e6:	4c e3       	ldi	r20, 0x3C	; 60
    43e8:	05 d0       	rcall	.+10     	; 0x43f4 <ldcp16>
    43ea:	12 d0       	rcall	.+36     	; 0x4410 <muladd3208>
    43ec:	2c e3       	ldi	r18, 0x3C	; 60
    43ee:	02 d0       	rcall	.+4      	; 0x43f4 <ldcp16>
    43f0:	0f d0       	rcall	.+30     	; 0x4410 <muladd3208>
    43f2:	0b c0       	rjmp	.+22     	; 0x440a <ldcp16+0x16>

000043f4 <ldcp16>:
    43f4:	3a 91       	ld	r19, -Y
    43f6:	2a 91       	ld	r18, -Y
    43f8:	24 17       	cp	r18, r20
    43fa:	31 05       	cpc	r19, r1
    43fc:	40 f0       	brcs	.+16     	; 0x440e <ldcp16+0x1a>
    43fe:	0f 90       	pop	r0
    4400:	0f 90       	pop	r0
    4402:	6f ef       	ldi	r22, 0xFF	; 255
    4404:	7f ef       	ldi	r23, 0xFF	; 255
    4406:	8f ef       	ldi	r24, 0xFF	; 255
    4408:	9f ef       	ldi	r25, 0xFF	; 255
    440a:	df 91       	pop	r29
    440c:	cf 91       	pop	r28
    440e:	08 95       	ret

00004410 <muladd3208>:
    4410:	51 e2       	ldi	r21, 0x21	; 33
    4412:	aa 1b       	sub	r26, r26
    4414:	08 f4       	brcc	.+2      	; 0x4418 <muladd3208+0x8>
    4416:	a4 0f       	add	r26, r20
    4418:	a7 95       	ror	r26
    441a:	97 95       	ror	r25
    441c:	87 95       	ror	r24
    441e:	77 95       	ror	r23
    4420:	67 95       	ror	r22
    4422:	5a 95       	dec	r21
    4424:	b9 f7       	brne	.-18     	; 0x4414 <muladd3208+0x4>
    4426:	62 0f       	add	r22, r18
    4428:	71 1d       	adc	r23, r1
    442a:	81 1d       	adc	r24, r1
    442c:	91 1d       	adc	r25, r1
    442e:	08 95       	ret

00004430 <gmtime>:
    4430:	cf 93       	push	r28
    4432:	df 93       	push	r29
    4434:	fc 01       	movw	r30, r24
    4436:	20 81       	ld	r18, Z
    4438:	31 81       	ldd	r19, Z+1	; 0x01
    443a:	42 81       	ldd	r20, Z+2	; 0x02
    443c:	53 81       	ldd	r21, Z+3	; 0x03
    443e:	cc 27       	eor	r28, r28
    4440:	dd 27       	eor	r29, r29
    4442:	57 fd       	sbrc	r21, 7
    4444:	3c c0       	rjmp	.+120    	; 0x44be <gmtime+0x8e>
    4446:	c5 e1       	ldi	r28, 0x15	; 21
    4448:	dc e0       	ldi	r29, 0x0C	; 12
    444a:	6c e3       	ldi	r22, 0x3C	; 60
    444c:	3c d0       	rcall	.+120    	; 0x44c6 <div3208>
    444e:	08 82       	st	Y, r0
    4450:	19 82       	std	Y+1, r1	; 0x01
    4452:	39 d0       	rcall	.+114    	; 0x44c6 <div3208>
    4454:	0a 82       	std	Y+2, r0	; 0x02
    4456:	1b 82       	std	Y+3, r1	; 0x03
    4458:	68 e1       	ldi	r22, 0x18	; 24
    445a:	35 d0       	rcall	.+106    	; 0x44c6 <div3208>
    445c:	0c 82       	std	Y+4, r0	; 0x04
    445e:	1d 82       	std	Y+5, r1	; 0x05
    4460:	f9 01       	movw	r30, r18
    4462:	2c 5f       	subi	r18, 0xFC	; 252
    4464:	3f 4f       	sbci	r19, 0xFF	; 255
    4466:	67 e0       	ldi	r22, 0x07	; 7
    4468:	2e d0       	rcall	.+92     	; 0x44c6 <div3208>
    446a:	0c 86       	std	Y+12, r0	; 0x0c
    446c:	1d 86       	std	Y+13, r1	; 0x0d
    446e:	9f 01       	movw	r18, r30
    4470:	a6 e4       	ldi	r26, 0x46	; 70
    4472:	ee e6       	ldi	r30, 0x6E	; 110
    4474:	f1 e0       	ldi	r31, 0x01	; 1
    4476:	ba 2f       	mov	r27, r26
    4478:	b3 70       	andi	r27, 0x03	; 3
    447a:	09 f0       	breq	.+2      	; 0x447e <gmtime+0x4e>
    447c:	31 97       	sbiw	r30, 0x01	; 1
    447e:	2e 17       	cp	r18, r30
    4480:	3f 07       	cpc	r19, r31
    4482:	20 f0       	brcs	.+8      	; 0x448c <gmtime+0x5c>
    4484:	2e 1b       	sub	r18, r30
    4486:	3f 0b       	sbc	r19, r31
    4488:	a3 95       	inc	r26
    448a:	f3 cf       	rjmp	.-26     	; 0x4472 <gmtime+0x42>
    448c:	aa 87       	std	Y+10, r26	; 0x0a
    448e:	1b 86       	std	Y+11, r1	; 0x0b
    4490:	2e 87       	std	Y+14, r18	; 0x0e
    4492:	3f 87       	std	Y+15, r19	; 0x0f
    4494:	e4 e7       	ldi	r30, 0x74	; 116
    4496:	f3 e4       	ldi	r31, 0x43	; 67
    4498:	aa 27       	eor	r26, r26
    449a:	c8 95       	lpm
    449c:	31 96       	adiw	r30, 0x01	; 1
    449e:	a1 30       	cpi	r26, 0x01	; 1
    44a0:	11 f4       	brne	.+4      	; 0x44a6 <gmtime+0x76>
    44a2:	b1 11       	cpse	r27, r1
    44a4:	0a 94       	dec	r0
    44a6:	20 15       	cp	r18, r0
    44a8:	31 05       	cpc	r19, r1
    44aa:	20 f0       	brcs	.+8      	; 0x44b4 <gmtime+0x84>
    44ac:	20 19       	sub	r18, r0
    44ae:	31 09       	sbc	r19, r1
    44b0:	a3 95       	inc	r26
    44b2:	f3 cf       	rjmp	.-26     	; 0x449a <gmtime+0x6a>
    44b4:	a8 87       	std	Y+8, r26	; 0x08
    44b6:	19 86       	std	Y+9, r1	; 0x09
    44b8:	23 95       	inc	r18
    44ba:	2e 83       	std	Y+6, r18	; 0x06
    44bc:	3f 83       	std	Y+7, r19	; 0x07
    44be:	ce 01       	movw	r24, r28
    44c0:	df 91       	pop	r29
    44c2:	cf 91       	pop	r28
    44c4:	08 95       	ret

000044c6 <div3208>:
    44c6:	00 24       	eor	r0, r0
    44c8:	70 e2       	ldi	r23, 0x20	; 32
    44ca:	22 0f       	add	r18, r18
    44cc:	33 1f       	adc	r19, r19
    44ce:	44 1f       	adc	r20, r20
    44d0:	55 1f       	adc	r21, r21
    44d2:	00 1c       	adc	r0, r0
    44d4:	06 16       	cp	r0, r22
    44d6:	10 f0       	brcs	.+4      	; 0x44dc <div3208+0x16>
    44d8:	06 1a       	sub	r0, r22
    44da:	23 95       	inc	r18
    44dc:	7a 95       	dec	r23
    44de:	a9 f7       	brne	.-22     	; 0x44ca <div3208+0x4>
    44e0:	08 95       	ret

000044e2 <arp_timer>:
    44e2:	cf 93       	push	r28
    44e4:	df 93       	push	r29
    44e6:	e2 e9       	ldi	r30, 0x92	; 146
    44e8:	f4 e0       	ldi	r31, 0x04	; 4
    44ea:	30 e0       	ldi	r19, 0x00	; 0
    44ec:	2f ef       	ldi	r18, 0xFF	; 255
    44ee:	86 85       	ldd	r24, Z+14	; 0x0e
    44f0:	81 30       	cpi	r24, 0x01	; 1
    44f2:	81 f4       	brne	.+32     	; 0x4514 <arp_timer+0x32>
    44f4:	82 85       	ldd	r24, Z+10	; 0x0a
    44f6:	93 85       	ldd	r25, Z+11	; 0x0b
    44f8:	a4 85       	ldd	r26, Z+12	; 0x0c
    44fa:	b5 85       	ldd	r27, Z+13	; 0x0d
    44fc:	01 97       	sbiw	r24, 0x01	; 1
    44fe:	a1 09       	sbc	r26, r1
    4500:	b1 09       	sbc	r27, r1
    4502:	82 87       	std	Z+10, r24	; 0x0a
    4504:	93 87       	std	Z+11, r25	; 0x0b
    4506:	a4 87       	std	Z+12, r26	; 0x0c
    4508:	b5 87       	std	Z+13, r27	; 0x0d
    450a:	00 97       	sbiw	r24, 0x00	; 0
    450c:	a1 05       	cpc	r26, r1
    450e:	b1 05       	cpc	r27, r1
    4510:	19 f4       	brne	.+6      	; 0x4518 <arp_timer+0x36>
    4512:	29 c0       	rjmp	.+82     	; 0x4566 <arp_timer+0x84>
    4514:	82 30       	cpi	r24, 0x02	; 2
    4516:	41 f5       	brne	.+80     	; 0x4568 <arp_timer+0x86>
    4518:	2f 3f       	cpi	r18, 0xFF	; 255
    451a:	29 f4       	brne	.+10     	; 0x4526 <arp_timer+0x44>
    451c:	3f 5f       	subi	r19, 0xFF	; 255
    451e:	3f 96       	adiw	r30, 0x0f	; 15
    4520:	38 30       	cpi	r19, 0x08	; 8
    4522:	29 f7       	brne	.-54     	; 0x44ee <arp_timer+0xc>
    4524:	23 c0       	rjmp	.+70     	; 0x456c <arp_timer+0x8a>
    4526:	82 2f       	mov	r24, r18
    4528:	90 e0       	ldi	r25, 0x00	; 0
    452a:	dc 01       	movw	r26, r24
    452c:	24 e0       	ldi	r18, 0x04	; 4
    452e:	aa 0f       	add	r26, r26
    4530:	bb 1f       	adc	r27, r27
    4532:	2a 95       	dec	r18
    4534:	e1 f7       	brne	.-8      	; 0x452e <arp_timer+0x4c>
    4536:	a8 1b       	sub	r26, r24
    4538:	b9 0b       	sbc	r27, r25
    453a:	ae 56       	subi	r26, 0x6E	; 110
    453c:	bb 4f       	sbci	r27, 0xFB	; 251
    453e:	ef 01       	movw	r28, r30
    4540:	8f e0       	ldi	r24, 0x0F	; 15
    4542:	09 90       	ld	r0, Y+
    4544:	0d 92       	st	X+, r0
    4546:	81 50       	subi	r24, 0x01	; 1
    4548:	e1 f7       	brne	.-8      	; 0x4542 <arp_timer+0x60>
    454a:	10 82       	st	Z, r1
    454c:	11 82       	std	Z+1, r1	; 0x01
    454e:	12 82       	std	Z+2, r1	; 0x02
    4550:	13 82       	std	Z+3, r1	; 0x03
    4552:	14 82       	std	Z+4, r1	; 0x04
    4554:	15 82       	std	Z+5, r1	; 0x05
    4556:	16 82       	std	Z+6, r1	; 0x06
    4558:	17 82       	std	Z+7, r1	; 0x07
    455a:	10 86       	std	Z+8, r1	; 0x08
    455c:	11 86       	std	Z+9, r1	; 0x09
    455e:	12 86       	std	Z+10, r1	; 0x0a
    4560:	13 86       	std	Z+11, r1	; 0x0b
    4562:	14 86       	std	Z+12, r1	; 0x0c
    4564:	15 86       	std	Z+13, r1	; 0x0d
    4566:	16 86       	std	Z+14, r1	; 0x0e
    4568:	23 2f       	mov	r18, r19
    456a:	d8 cf       	rjmp	.-80     	; 0x451c <arp_timer+0x3a>
    456c:	df 91       	pop	r29
    456e:	cf 91       	pop	r28
    4570:	08 95       	ret

00004572 <arp_delete>:
    4572:	ab 01       	movw	r20, r22
    4574:	bc 01       	movw	r22, r24
    4576:	e2 e9       	ldi	r30, 0x92	; 146
    4578:	f4 e0       	ldi	r31, 0x04	; 4
    457a:	20 e0       	ldi	r18, 0x00	; 0
    457c:	30 e0       	ldi	r19, 0x00	; 0
    457e:	80 81       	ld	r24, Z
    4580:	91 81       	ldd	r25, Z+1	; 0x01
    4582:	a2 81       	ldd	r26, Z+2	; 0x02
    4584:	b3 81       	ldd	r27, Z+3	; 0x03
    4586:	84 17       	cp	r24, r20
    4588:	95 07       	cpc	r25, r21
    458a:	a6 07       	cpc	r26, r22
    458c:	b7 07       	cpc	r27, r23
    458e:	69 f4       	brne	.+26     	; 0x45aa <arp_delete+0x38>
    4590:	f9 01       	movw	r30, r18
    4592:	44 e0       	ldi	r20, 0x04	; 4
    4594:	ee 0f       	add	r30, r30
    4596:	ff 1f       	adc	r31, r31
    4598:	4a 95       	dec	r20
    459a:	e1 f7       	brne	.-8      	; 0x4594 <arp_delete+0x22>
    459c:	e2 1b       	sub	r30, r18
    459e:	f3 0b       	sbc	r31, r19
    45a0:	ee 56       	subi	r30, 0x6E	; 110
    45a2:	fb 4f       	sbci	r31, 0xFB	; 251
    45a4:	16 86       	std	Z+14, r1	; 0x0e
    45a6:	81 e0       	ldi	r24, 0x01	; 1
    45a8:	08 95       	ret
    45aa:	2f 5f       	subi	r18, 0xFF	; 255
    45ac:	3f 4f       	sbci	r19, 0xFF	; 255
    45ae:	3f 96       	adiw	r30, 0x0f	; 15
    45b0:	28 30       	cpi	r18, 0x08	; 8
    45b2:	31 05       	cpc	r19, r1
    45b4:	21 f7       	brne	.-56     	; 0x457e <arp_delete+0xc>
    45b6:	80 e0       	ldi	r24, 0x00	; 0
    45b8:	08 95       	ret

000045ba <arp_request>:
    45ba:	cf 92       	push	r12
    45bc:	df 92       	push	r13
    45be:	ef 92       	push	r14
    45c0:	ff 92       	push	r15
    45c2:	0f 93       	push	r16
    45c4:	1f 93       	push	r17
    45c6:	6b 01       	movw	r12, r22
    45c8:	7c 01       	movw	r14, r24
    45ca:	8a e2       	ldi	r24, 0x2A	; 42
    45cc:	90 e0       	ldi	r25, 0x00	; 0
    45ce:	90 93 65 04 	sts	0x0465, r25
    45d2:	80 93 64 04 	sts	0x0464, r24
    45d6:	80 e0       	ldi	r24, 0x00	; 0
    45d8:	0e 94 fa 18 	call	0x31f4	; 0x31f4 <enc_bankselect>
    45dc:	82 e0       	ldi	r24, 0x02	; 2
    45de:	6d ec       	ldi	r22, 0xCD	; 205
    45e0:	7f e1       	ldi	r23, 0x1F	; 31
    45e2:	0e 94 d4 18 	call	0x31a8	; 0x31a8 <enc_writereg16>
    45e6:	8f ef       	ldi	r24, 0xFF	; 255
    45e8:	66 e0       	ldi	r22, 0x06	; 6
    45ea:	70 e0       	ldi	r23, 0x00	; 0
    45ec:	0e 94 e4 19 	call	0x33c8	; 0x33c8 <enc_fillwrite>
    45f0:	0c e8       	ldi	r16, 0x8C	; 140
    45f2:	14 e0       	ldi	r17, 0x04	; 4
    45f4:	c8 01       	movw	r24, r16
    45f6:	66 e0       	ldi	r22, 0x06	; 6
    45f8:	70 e0       	ldi	r23, 0x00	; 0
    45fa:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    45fe:	86 e0       	ldi	r24, 0x06	; 6
    4600:	98 e0       	ldi	r25, 0x08	; 8
    4602:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    4606:	81 e0       	ldi	r24, 0x01	; 1
    4608:	90 e0       	ldi	r25, 0x00	; 0
    460a:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    460e:	80 e0       	ldi	r24, 0x00	; 0
    4610:	98 e0       	ldi	r25, 0x08	; 8
    4612:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    4616:	86 e0       	ldi	r24, 0x06	; 6
    4618:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    461c:	84 e0       	ldi	r24, 0x04	; 4
    461e:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    4622:	81 e0       	ldi	r24, 0x01	; 1
    4624:	90 e0       	ldi	r25, 0x00	; 0
    4626:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    462a:	c8 01       	movw	r24, r16
    462c:	66 e0       	ldi	r22, 0x06	; 6
    462e:	70 e0       	ldi	r23, 0x00	; 0
    4630:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    4634:	60 91 0b 05 	lds	r22, 0x050B
    4638:	70 91 0c 05 	lds	r23, 0x050C
    463c:	80 91 0d 05 	lds	r24, 0x050D
    4640:	90 91 0e 05 	lds	r25, 0x050E
    4644:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    4648:	80 e0       	ldi	r24, 0x00	; 0
    464a:	66 e0       	ldi	r22, 0x06	; 6
    464c:	70 e0       	ldi	r23, 0x00	; 0
    464e:	0e 94 e4 19 	call	0x33c8	; 0x33c8 <enc_fillwrite>
    4652:	c7 01       	movw	r24, r14
    4654:	b6 01       	movw	r22, r12
    4656:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    465a:	8c ec       	ldi	r24, 0xCC	; 204
    465c:	9f e1       	ldi	r25, 0x1F	; 31
    465e:	0e 94 d2 1a 	call	0x35a4	; 0x35a4 <enc_output>
    4662:	1f 91       	pop	r17
    4664:	0f 91       	pop	r16
    4666:	ff 90       	pop	r15
    4668:	ef 90       	pop	r14
    466a:	df 90       	pop	r13
    466c:	cf 90       	pop	r12
    466e:	08 95       	ret

00004670 <arp_keep>:
    4670:	ef 92       	push	r14
    4672:	ff 92       	push	r15
    4674:	0f 93       	push	r16
    4676:	1f 93       	push	r17
    4678:	cf 93       	push	r28
    467a:	df 93       	push	r29
    467c:	7b 01       	movw	r14, r22
    467e:	8c 01       	movw	r16, r24
    4680:	62 2f       	mov	r22, r18
    4682:	e2 e9       	ldi	r30, 0x92	; 146
    4684:	f4 e0       	ldi	r31, 0x04	; 4
    4686:	20 e0       	ldi	r18, 0x00	; 0
    4688:	86 85       	ldd	r24, Z+14	; 0x0e
    468a:	86 17       	cp	r24, r22
    468c:	59 f4       	brne	.+22     	; 0x46a4 <arp_keep+0x34>
    468e:	80 81       	ld	r24, Z
    4690:	91 81       	ldd	r25, Z+1	; 0x01
    4692:	a2 81       	ldd	r26, Z+2	; 0x02
    4694:	b3 81       	ldd	r27, Z+3	; 0x03
    4696:	8e 15       	cp	r24, r14
    4698:	9f 05       	cpc	r25, r15
    469a:	a0 07       	cpc	r26, r16
    469c:	b1 07       	cpc	r27, r17
    469e:	11 f4       	brne	.+4      	; 0x46a4 <arp_keep+0x34>
    46a0:	92 2f       	mov	r25, r18
    46a2:	18 c0       	rjmp	.+48     	; 0x46d4 <arp_keep+0x64>
    46a4:	2f 5f       	subi	r18, 0xFF	; 255
    46a6:	3f 96       	adiw	r30, 0x0f	; 15
    46a8:	28 30       	cpi	r18, 0x08	; 8
    46aa:	71 f7       	brne	.-36     	; 0x4688 <arp_keep+0x18>
    46ac:	66 23       	and	r22, r22
    46ae:	c1 f1       	breq	.+112    	; 0x4720 <arp_keep+0xb0>
    46b0:	90 91 0a 05 	lds	r25, 0x050A
    46b4:	e0 ea       	ldi	r30, 0xA0	; 160
    46b6:	f4 e0       	ldi	r31, 0x04	; 4
    46b8:	20 e0       	ldi	r18, 0x00	; 0
    46ba:	80 81       	ld	r24, Z
    46bc:	82 30       	cpi	r24, 0x02	; 2
    46be:	31 f4       	brne	.+12     	; 0x46cc <arp_keep+0x5c>
    46c0:	9f 5f       	subi	r25, 0xFF	; 255
    46c2:	97 70       	andi	r25, 0x07	; 7
    46c4:	2f 5f       	subi	r18, 0xFF	; 255
    46c6:	3f 96       	adiw	r30, 0x0f	; 15
    46c8:	28 30       	cpi	r18, 0x08	; 8
    46ca:	b9 f7       	brne	.-18     	; 0x46ba <arp_keep+0x4a>
    46cc:	90 93 0a 05 	sts	0x050A, r25
    46d0:	28 30       	cpi	r18, 0x08	; 8
    46d2:	31 f1       	breq	.+76     	; 0x4720 <arp_keep+0xb0>
    46d4:	8f e0       	ldi	r24, 0x0F	; 15
    46d6:	98 9f       	mul	r25, r24
    46d8:	f0 01       	movw	r30, r0
    46da:	11 24       	eor	r1, r1
    46dc:	ee 56       	subi	r30, 0x6E	; 110
    46de:	fb 4f       	sbci	r31, 0xFB	; 251
    46e0:	ef 01       	movw	r28, r30
    46e2:	24 96       	adiw	r28, 0x04	; 4
    46e4:	da 01       	movw	r26, r20
    46e6:	86 e0       	ldi	r24, 0x06	; 6
    46e8:	0d 90       	ld	r0, X+
    46ea:	09 92       	st	Y+, r0
    46ec:	81 50       	subi	r24, 0x01	; 1
    46ee:	e1 f7       	brne	.-8      	; 0x46e8 <arp_keep+0x78>
    46f0:	e0 82       	st	Z, r14
    46f2:	f1 82       	std	Z+1, r15	; 0x01
    46f4:	02 83       	std	Z+2, r16	; 0x02
    46f6:	13 83       	std	Z+3, r17	; 0x03
    46f8:	80 91 00 01 	lds	r24, 0x0100
    46fc:	90 91 01 01 	lds	r25, 0x0101
    4700:	a0 91 02 01 	lds	r26, 0x0102
    4704:	b0 91 03 01 	lds	r27, 0x0103
    4708:	82 87       	std	Z+10, r24	; 0x0a
    470a:	93 87       	std	Z+11, r25	; 0x0b
    470c:	a4 87       	std	Z+12, r26	; 0x0c
    470e:	b5 87       	std	Z+13, r27	; 0x0d
    4710:	66 23       	and	r22, r22
    4712:	19 f4       	brne	.+6      	; 0x471a <arp_keep+0xaa>
    4714:	81 e0       	ldi	r24, 0x01	; 1
    4716:	86 87       	std	Z+14, r24	; 0x0e
    4718:	04 c0       	rjmp	.+8      	; 0x4722 <arp_keep+0xb2>
    471a:	66 87       	std	Z+14, r22	; 0x0e
    471c:	81 e0       	ldi	r24, 0x01	; 1
    471e:	01 c0       	rjmp	.+2      	; 0x4722 <arp_keep+0xb2>
    4720:	80 e0       	ldi	r24, 0x00	; 0
    4722:	cd b7       	in	r28, 0x3d	; 61
    4724:	de b7       	in	r29, 0x3e	; 62
    4726:	e6 e0       	ldi	r30, 0x06	; 6
    4728:	0c 94 71 6d 	jmp	0xdae2	; 0xdae2 <__epilogue_restores__+0x18>

0000472c <arp_input>:
    472c:	ac e1       	ldi	r26, 0x1C	; 28
    472e:	b0 e0       	ldi	r27, 0x00	; 0
    4730:	ec e9       	ldi	r30, 0x9C	; 156
    4732:	f3 e2       	ldi	r31, 0x23	; 35
    4734:	0c 94 4f 6d 	jmp	0xda9e	; 0xda9e <__prologue_saves__+0xc>
    4738:	ce 01       	movw	r24, r28
    473a:	01 96       	adiw	r24, 0x01	; 1
    473c:	6c e1       	ldi	r22, 0x1C	; 28
    473e:	70 e0       	ldi	r23, 0x00	; 0
    4740:	0e 94 7e 19 	call	0x32fc	; 0x32fc <enc_readbuffer>
    4744:	8f 81       	ldd	r24, Y+7	; 0x07
    4746:	98 85       	ldd	r25, Y+8	; 0x08
    4748:	0e 94 37 41 	call	0x826e	; 0x826e <cnvendian16>
    474c:	4c 01       	movw	r8, r24
    474e:	6f 85       	ldd	r22, Y+15	; 0x0f
    4750:	78 89       	ldd	r23, Y+16	; 0x10
    4752:	89 89       	ldd	r24, Y+17	; 0x11
    4754:	9a 89       	ldd	r25, Y+18	; 0x12
    4756:	0e 94 3b 41 	call	0x8276	; 0x8276 <cnvendian32>
    475a:	5b 01       	movw	r10, r22
    475c:	6c 01       	movw	r12, r24
    475e:	69 8d       	ldd	r22, Y+25	; 0x19
    4760:	7a 8d       	ldd	r23, Y+26	; 0x1a
    4762:	8b 8d       	ldd	r24, Y+27	; 0x1b
    4764:	9c 8d       	ldd	r25, Y+28	; 0x1c
    4766:	0e 94 3b 41 	call	0x8276	; 0x8276 <cnvendian32>
    476a:	7b 01       	movw	r14, r22
    476c:	8c 01       	movw	r16, r24
    476e:	89 81       	ldd	r24, Y+1	; 0x01
    4770:	9a 81       	ldd	r25, Y+2	; 0x02
    4772:	0e 94 37 41 	call	0x826e	; 0x826e <cnvendian16>
    4776:	01 97       	sbiw	r24, 0x01	; 1
    4778:	09 f0       	breq	.+2      	; 0x477c <arp_input+0x50>
    477a:	70 c0       	rjmp	.+224    	; 0x485c <arp_input+0x130>
    477c:	8b 81       	ldd	r24, Y+3	; 0x03
    477e:	9c 81       	ldd	r25, Y+4	; 0x04
    4780:	0e 94 37 41 	call	0x826e	; 0x826e <cnvendian16>
    4784:	80 50       	subi	r24, 0x00	; 0
    4786:	98 40       	sbci	r25, 0x08	; 8
    4788:	09 f0       	breq	.+2      	; 0x478c <arp_input+0x60>
    478a:	68 c0       	rjmp	.+208    	; 0x485c <arp_input+0x130>
    478c:	80 91 0b 05 	lds	r24, 0x050B
    4790:	90 91 0c 05 	lds	r25, 0x050C
    4794:	a0 91 0d 05 	lds	r26, 0x050D
    4798:	b0 91 0e 05 	lds	r27, 0x050E
    479c:	e8 16       	cp	r14, r24
    479e:	f9 06       	cpc	r15, r25
    47a0:	0a 07       	cpc	r16, r26
    47a2:	1b 07       	cpc	r17, r27
    47a4:	09 f0       	breq	.+2      	; 0x47a8 <arp_input+0x7c>
    47a6:	5a c0       	rjmp	.+180    	; 0x485c <arp_input+0x130>
    47a8:	ce 01       	movw	r24, r28
    47aa:	43 96       	adiw	r24, 0x13	; 19
    47ac:	6c e8       	ldi	r22, 0x8C	; 140
    47ae:	74 e0       	ldi	r23, 0x04	; 4
    47b0:	46 e0       	ldi	r20, 0x06	; 6
    47b2:	50 e0       	ldi	r21, 0x00	; 0
    47b4:	0e 94 39 6e 	call	0xdc72	; 0xdc72 <strncmp>
    47b8:	00 97       	sbiw	r24, 0x00	; 0
    47ba:	09 f0       	breq	.+2      	; 0x47be <arp_input+0x92>
    47bc:	4f c0       	rjmp	.+158    	; 0x485c <arp_input+0x130>
    47be:	ae 14       	cp	r10, r14
    47c0:	bf 04       	cpc	r11, r15
    47c2:	c0 06       	cpc	r12, r16
    47c4:	d1 06       	cpc	r13, r17
    47c6:	11 f4       	brne	.+4      	; 0x47cc <arp_input+0xa0>
    47c8:	82 e0       	ldi	r24, 0x02	; 2
    47ca:	49 c0       	rjmp	.+146    	; 0x485e <arp_input+0x132>
    47cc:	8e 01       	movw	r16, r28
    47ce:	07 5f       	subi	r16, 0xF7	; 247
    47d0:	1f 4f       	sbci	r17, 0xFF	; 255
    47d2:	c6 01       	movw	r24, r12
    47d4:	b5 01       	movw	r22, r10
    47d6:	a8 01       	movw	r20, r16
    47d8:	21 e0       	ldi	r18, 0x01	; 1
    47da:	0e 94 38 23 	call	0x4670	; 0x4670 <arp_keep>
    47de:	81 e0       	ldi	r24, 0x01	; 1
    47e0:	88 16       	cp	r8, r24
    47e2:	91 04       	cpc	r9, r1
    47e4:	d9 f5       	brne	.+118    	; 0x485c <arp_input+0x130>
    47e6:	8c e1       	ldi	r24, 0x1C	; 28
    47e8:	90 e0       	ldi	r25, 0x00	; 0
    47ea:	90 93 65 04 	sts	0x0465, r25
    47ee:	80 93 64 04 	sts	0x0464, r24
    47f2:	8e e0       	ldi	r24, 0x0E	; 14
    47f4:	90 e0       	ldi	r25, 0x00	; 0
    47f6:	0e 94 67 1a 	call	0x34ce	; 0x34ce <enc_txseek>
    47fa:	81 e0       	ldi	r24, 0x01	; 1
    47fc:	90 e0       	ldi	r25, 0x00	; 0
    47fe:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    4802:	80 e0       	ldi	r24, 0x00	; 0
    4804:	98 e0       	ldi	r25, 0x08	; 8
    4806:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    480a:	86 e0       	ldi	r24, 0x06	; 6
    480c:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    4810:	84 e0       	ldi	r24, 0x04	; 4
    4812:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    4816:	82 e0       	ldi	r24, 0x02	; 2
    4818:	90 e0       	ldi	r25, 0x00	; 0
    481a:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    481e:	8c e8       	ldi	r24, 0x8C	; 140
    4820:	94 e0       	ldi	r25, 0x04	; 4
    4822:	66 e0       	ldi	r22, 0x06	; 6
    4824:	70 e0       	ldi	r23, 0x00	; 0
    4826:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    482a:	60 91 0b 05 	lds	r22, 0x050B
    482e:	70 91 0c 05 	lds	r23, 0x050C
    4832:	80 91 0d 05 	lds	r24, 0x050D
    4836:	90 91 0e 05 	lds	r25, 0x050E
    483a:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    483e:	c8 01       	movw	r24, r16
    4840:	66 e0       	ldi	r22, 0x06	; 6
    4842:	70 e0       	ldi	r23, 0x00	; 0
    4844:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    4848:	ce 01       	movw	r24, r28
    484a:	0f 96       	adiw	r24, 0x0f	; 15
    484c:	64 e0       	ldi	r22, 0x04	; 4
    484e:	70 e0       	ldi	r23, 0x00	; 0
    4850:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    4854:	86 e0       	ldi	r24, 0x06	; 6
    4856:	98 e0       	ldi	r25, 0x08	; 8
    4858:	0e 94 9d 24 	call	0x493a	; 0x493a <ether_output>
    485c:	80 e0       	ldi	r24, 0x00	; 0
    485e:	6c 96       	adiw	r28, 0x1c	; 28
    4860:	ec e0       	ldi	r30, 0x0C	; 12
    4862:	0c 94 6b 6d 	jmp	0xdad6	; 0xdad6 <__epilogue_restores__+0xc>

00004866 <arp_search>:
    4866:	ef 92       	push	r14
    4868:	ff 92       	push	r15
    486a:	0f 93       	push	r16
    486c:	1f 93       	push	r17
    486e:	e0 90 6c 04 	lds	r14, 0x046C
    4872:	f0 90 6d 04 	lds	r15, 0x046D
    4876:	00 91 6e 04 	lds	r16, 0x046E
    487a:	10 91 6f 04 	lds	r17, 0x046F
    487e:	20 91 0f 05 	lds	r18, 0x050F
    4882:	30 91 10 05 	lds	r19, 0x0510
    4886:	40 91 11 05 	lds	r20, 0x0511
    488a:	50 91 12 05 	lds	r21, 0x0512
    488e:	da 01       	movw	r26, r20
    4890:	c9 01       	movw	r24, r18
    4892:	8e 29       	or	r24, r14
    4894:	9f 29       	or	r25, r15
    4896:	a0 2b       	or	r26, r16
    4898:	b1 2b       	or	r27, r17
    489a:	8f 5f       	subi	r24, 0xFF	; 255
    489c:	9f 4f       	sbci	r25, 0xFF	; 255
    489e:	af 4f       	sbci	r26, 0xFF	; 255
    48a0:	bf 4f       	sbci	r27, 0xFF	; 255
    48a2:	49 f4       	brne	.+18     	; 0x48b6 <arp_search+0x50>
    48a4:	86 e6       	ldi	r24, 0x66	; 102
    48a6:	94 e0       	ldi	r25, 0x04	; 4
    48a8:	6f ef       	ldi	r22, 0xFF	; 255
    48aa:	70 e0       	ldi	r23, 0x00	; 0
    48ac:	46 e0       	ldi	r20, 0x06	; 6
    48ae:	50 e0       	ldi	r21, 0x00	; 0
    48b0:	0e 94 0c 6e 	call	0xdc18	; 0xdc18 <memset>
    48b4:	35 c0       	rjmp	.+106    	; 0x4920 <arp_search+0xba>
    48b6:	80 91 0b 05 	lds	r24, 0x050B
    48ba:	90 91 0c 05 	lds	r25, 0x050C
    48be:	a0 91 0d 05 	lds	r26, 0x050D
    48c2:	b0 91 0e 05 	lds	r27, 0x050E
    48c6:	8e 25       	eor	r24, r14
    48c8:	9f 25       	eor	r25, r15
    48ca:	a0 27       	eor	r26, r16
    48cc:	b1 27       	eor	r27, r17
    48ce:	82 23       	and	r24, r18
    48d0:	93 23       	and	r25, r19
    48d2:	a4 23       	and	r26, r20
    48d4:	b5 23       	and	r27, r21
    48d6:	00 97       	sbiw	r24, 0x00	; 0
    48d8:	a1 05       	cpc	r26, r1
    48da:	b1 05       	cpc	r27, r1
    48dc:	11 f4       	brne	.+4      	; 0x48e2 <arp_search+0x7c>
    48de:	21 e0       	ldi	r18, 0x01	; 1
    48e0:	09 c0       	rjmp	.+18     	; 0x48f4 <arp_search+0x8e>
    48e2:	e0 90 13 05 	lds	r14, 0x0513
    48e6:	f0 90 14 05 	lds	r15, 0x0514
    48ea:	00 91 15 05 	lds	r16, 0x0515
    48ee:	10 91 16 05 	lds	r17, 0x0516
    48f2:	22 e0       	ldi	r18, 0x02	; 2
    48f4:	e2 e9       	ldi	r30, 0x92	; 146
    48f6:	f4 e0       	ldi	r31, 0x04	; 4
    48f8:	86 85       	ldd	r24, Z+14	; 0x0e
    48fa:	81 30       	cpi	r24, 0x01	; 1
    48fc:	99 f4       	brne	.+38     	; 0x4924 <arp_search+0xbe>
    48fe:	80 81       	ld	r24, Z
    4900:	91 81       	ldd	r25, Z+1	; 0x01
    4902:	a2 81       	ldd	r26, Z+2	; 0x02
    4904:	b3 81       	ldd	r27, Z+3	; 0x03
    4906:	8e 15       	cp	r24, r14
    4908:	9f 05       	cpc	r25, r15
    490a:	a0 07       	cpc	r26, r16
    490c:	b1 07       	cpc	r27, r17
    490e:	51 f4       	brne	.+20     	; 0x4924 <arp_search+0xbe>
    4910:	a6 e6       	ldi	r26, 0x66	; 102
    4912:	b4 e0       	ldi	r27, 0x04	; 4
    4914:	34 96       	adiw	r30, 0x04	; 4
    4916:	86 e0       	ldi	r24, 0x06	; 6
    4918:	01 90       	ld	r0, Z+
    491a:	0d 92       	st	X+, r0
    491c:	81 50       	subi	r24, 0x01	; 1
    491e:	e1 f7       	brne	.-8      	; 0x4918 <arp_search+0xb2>
    4920:	20 e0       	ldi	r18, 0x00	; 0
    4922:	05 c0       	rjmp	.+10     	; 0x492e <arp_search+0xc8>
    4924:	3f 96       	adiw	r30, 0x0f	; 15
    4926:	85 e0       	ldi	r24, 0x05	; 5
    4928:	ea 30       	cpi	r30, 0x0A	; 10
    492a:	f8 07       	cpc	r31, r24
    492c:	29 f7       	brne	.-54     	; 0x48f8 <arp_search+0x92>
    492e:	82 2f       	mov	r24, r18
    4930:	1f 91       	pop	r17
    4932:	0f 91       	pop	r16
    4934:	ff 90       	pop	r15
    4936:	ef 90       	pop	r14
    4938:	08 95       	ret

0000493a <ether_output>:
    493a:	0f 93       	push	r16
    493c:	1f 93       	push	r17
    493e:	8c 01       	movw	r16, r24
    4940:	80 91 64 04 	lds	r24, 0x0464
    4944:	90 91 65 04 	lds	r25, 0x0465
    4948:	0e 96       	adiw	r24, 0x0e	; 14
    494a:	90 93 65 04 	sts	0x0465, r25
    494e:	80 93 64 04 	sts	0x0464, r24
    4952:	80 e0       	ldi	r24, 0x00	; 0
    4954:	90 e0       	ldi	r25, 0x00	; 0
    4956:	0e 94 67 1a 	call	0x34ce	; 0x34ce <enc_txseek>
    495a:	86 e6       	ldi	r24, 0x66	; 102
    495c:	94 e0       	ldi	r25, 0x04	; 4
    495e:	66 e0       	ldi	r22, 0x06	; 6
    4960:	70 e0       	ldi	r23, 0x00	; 0
    4962:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    4966:	8c e8       	ldi	r24, 0x8C	; 140
    4968:	94 e0       	ldi	r25, 0x04	; 4
    496a:	66 e0       	ldi	r22, 0x06	; 6
    496c:	70 e0       	ldi	r23, 0x00	; 0
    496e:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    4972:	c8 01       	movw	r24, r16
    4974:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    4978:	88 ed       	ldi	r24, 0xD8	; 216
    497a:	99 e1       	ldi	r25, 0x19	; 25
    497c:	0e 94 d2 1a 	call	0x35a4	; 0x35a4 <enc_output>
    4980:	1f 91       	pop	r17
    4982:	0f 91       	pop	r16
    4984:	08 95       	ret

00004986 <ether_input>:
    4986:	ae e0       	ldi	r26, 0x0E	; 14
    4988:	b0 e0       	ldi	r27, 0x00	; 0
    498a:	e9 ec       	ldi	r30, 0xC9	; 201
    498c:	f4 e2       	ldi	r31, 0x24	; 36
    498e:	0c 94 58 6d 	jmp	0xdab0	; 0xdab0 <__prologue_saves__+0x1e>
    4992:	ce 01       	movw	r24, r28
    4994:	01 96       	adiw	r24, 0x01	; 1
    4996:	0e 94 7e 1d 	call	0x3afc	; 0x3afc <enc_input>
    499a:	88 23       	and	r24, r24
    499c:	f1 f0       	breq	.+60     	; 0x49da <ether_input+0x54>
    499e:	a6 e6       	ldi	r26, 0x66	; 102
    49a0:	b4 e0       	ldi	r27, 0x04	; 4
    49a2:	fe 01       	movw	r30, r28
    49a4:	37 96       	adiw	r30, 0x07	; 7
    49a6:	86 e0       	ldi	r24, 0x06	; 6
    49a8:	01 90       	ld	r0, Z+
    49aa:	0d 92       	st	X+, r0
    49ac:	81 50       	subi	r24, 0x01	; 1
    49ae:	e1 f7       	brne	.-8      	; 0x49a8 <ether_input+0x22>
    49b0:	8d 85       	ldd	r24, Y+13	; 0x0d
    49b2:	9e 85       	ldd	r25, Y+14	; 0x0e
    49b4:	0e 94 37 41 	call	0x826e	; 0x826e <cnvendian16>
    49b8:	28 e0       	ldi	r18, 0x08	; 8
    49ba:	80 30       	cpi	r24, 0x00	; 0
    49bc:	92 07       	cpc	r25, r18
    49be:	11 f4       	brne	.+4      	; 0x49c4 <ether_input+0x3e>
    49c0:	11 e0       	ldi	r17, 0x01	; 1
    49c2:	0c c0       	rjmp	.+24     	; 0x49dc <ether_input+0x56>
    49c4:	86 50       	subi	r24, 0x06	; 6
    49c6:	98 40       	sbci	r25, 0x08	; 8
    49c8:	31 f4       	brne	.+12     	; 0x49d6 <ether_input+0x50>
    49ca:	0e 94 96 23 	call	0x472c	; 0x472c <arp_input>
    49ce:	18 2f       	mov	r17, r24
    49d0:	0e 94 81 1a 	call	0x3502	; 0x3502 <enc_setnextpoint>
    49d4:	03 c0       	rjmp	.+6      	; 0x49dc <ether_input+0x56>
    49d6:	0e 94 81 1a 	call	0x3502	; 0x3502 <enc_setnextpoint>
    49da:	10 e0       	ldi	r17, 0x00	; 0
    49dc:	81 2f       	mov	r24, r17
    49de:	2e 96       	adiw	r28, 0x0e	; 14
    49e0:	e3 e0       	ldi	r30, 0x03	; 3
    49e2:	0c 94 74 6d 	jmp	0xdae8	; 0xdae8 <__epilogue_restores__+0x1e>

000049e6 <icmp_input>:
    49e6:	a8 e0       	ldi	r26, 0x08	; 8
    49e8:	b0 e0       	ldi	r27, 0x00	; 0
    49ea:	e9 ef       	ldi	r30, 0xF9	; 249
    49ec:	f4 e2       	ldi	r31, 0x24	; 36
    49ee:	0c 94 57 6d 	jmp	0xdaae	; 0xdaae <__prologue_saves__+0x1c>
    49f2:	82 e2       	ldi	r24, 0x22	; 34
    49f4:	90 e0       	ldi	r25, 0x00	; 0
    49f6:	0e 94 42 1a 	call	0x3484	; 0x3484 <enc_rxseek>
    49fa:	ce 01       	movw	r24, r28
    49fc:	01 96       	adiw	r24, 0x01	; 1
    49fe:	68 e0       	ldi	r22, 0x08	; 8
    4a00:	70 e0       	ldi	r23, 0x00	; 0
    4a02:	0e 94 7e 19 	call	0x32fc	; 0x32fc <enc_readbuffer>
    4a06:	89 81       	ldd	r24, Y+1	; 0x01
    4a08:	80 93 1a 05 	sts	0x051A, r24
    4a0c:	8a 81       	ldd	r24, Y+2	; 0x02
    4a0e:	80 93 1b 05 	sts	0x051B, r24
    4a12:	60 91 64 04 	lds	r22, 0x0464
    4a16:	70 91 65 04 	lds	r23, 0x0465
    4a1a:	82 e2       	ldi	r24, 0x22	; 34
    4a1c:	90 e0       	ldi	r25, 0x00	; 0
    4a1e:	0e 94 c6 1b 	call	0x378c	; 0x378c <enc_rxchksum>
    4a22:	89 2b       	or	r24, r25
    4a24:	81 f0       	breq	.+32     	; 0x4a46 <icmp_input+0x60>
    4a26:	8a e3       	ldi	r24, 0x3A	; 58
    4a28:	90 e0       	ldi	r25, 0x00	; 0
    4a2a:	0e 94 42 1a 	call	0x3484	; 0x3484 <enc_rxseek>
    4a2e:	0e 94 62 19 	call	0x32c4	; 0x32c4 <enc_readbuf4>
    4a32:	60 93 1c 05 	sts	0x051C, r22
    4a36:	70 93 1d 05 	sts	0x051D, r23
    4a3a:	80 93 1e 05 	sts	0x051E, r24
    4a3e:	90 93 1f 05 	sts	0x051F, r25
    4a42:	87 e0       	ldi	r24, 0x07	; 7
    4a44:	57 c0       	rjmp	.+174    	; 0x4af4 <icmp_input+0x10e>
    4a46:	80 91 1a 05 	lds	r24, 0x051A
    4a4a:	88 30       	cpi	r24, 0x08	; 8
    4a4c:	31 f1       	breq	.+76     	; 0x4a9a <icmp_input+0xb4>
    4a4e:	6d 81       	ldd	r22, Y+5	; 0x05
    4a50:	7e 81       	ldd	r23, Y+6	; 0x06
    4a52:	8f 81       	ldd	r24, Y+7	; 0x07
    4a54:	98 85       	ldd	r25, Y+8	; 0x08
    4a56:	0e 94 3b 41 	call	0x8276	; 0x8276 <cnvendian32>
    4a5a:	9b 01       	movw	r18, r22
    4a5c:	ac 01       	movw	r20, r24
    4a5e:	60 93 1c 05 	sts	0x051C, r22
    4a62:	70 93 1d 05 	sts	0x051D, r23
    4a66:	80 93 1e 05 	sts	0x051E, r24
    4a6a:	90 93 1f 05 	sts	0x051F, r25
    4a6e:	80 91 1a 05 	lds	r24, 0x051A
    4a72:	83 30       	cpi	r24, 0x03	; 3
    4a74:	19 f4       	brne	.+6      	; 0x4a7c <icmp_input+0x96>
    4a76:	0e 94 ce 1c 	call	0x399c	; 0x399c <enc_init>
    4a7a:	3b c0       	rjmp	.+118    	; 0x4af2 <icmp_input+0x10c>
    4a7c:	85 30       	cpi	r24, 0x05	; 5
    4a7e:	c9 f5       	brne	.+114    	; 0x4af2 <icmp_input+0x10c>
    4a80:	80 91 1b 05 	lds	r24, 0x051B
    4a84:	81 30       	cpi	r24, 0x01	; 1
    4a86:	a9 f5       	brne	.+106    	; 0x4af2 <icmp_input+0x10c>
    4a88:	20 93 13 05 	sts	0x0513, r18
    4a8c:	30 93 14 05 	sts	0x0514, r19
    4a90:	40 93 15 05 	sts	0x0515, r20
    4a94:	50 93 16 05 	sts	0x0516, r21
    4a98:	2c c0       	rjmp	.+88     	; 0x4af2 <icmp_input+0x10c>
    4a9a:	40 91 64 04 	lds	r20, 0x0464
    4a9e:	50 91 65 04 	lds	r21, 0x0465
    4aa2:	82 e2       	ldi	r24, 0x22	; 34
    4aa4:	90 e0       	ldi	r25, 0x00	; 0
    4aa6:	62 e2       	ldi	r22, 0x22	; 34
    4aa8:	70 e0       	ldi	r23, 0x00	; 0
    4aaa:	0e 94 f0 1b 	call	0x37e0	; 0x37e0 <enc_packetcopy>
    4aae:	82 e2       	ldi	r24, 0x22	; 34
    4ab0:	90 e0       	ldi	r25, 0x00	; 0
    4ab2:	0e 94 67 1a 	call	0x34ce	; 0x34ce <enc_txseek>
    4ab6:	80 e0       	ldi	r24, 0x00	; 0
    4ab8:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    4abc:	80 e0       	ldi	r24, 0x00	; 0
    4abe:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    4ac2:	80 e0       	ldi	r24, 0x00	; 0
    4ac4:	90 e0       	ldi	r25, 0x00	; 0
    4ac6:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    4aca:	60 91 64 04 	lds	r22, 0x0464
    4ace:	70 91 65 04 	lds	r23, 0x0465
    4ad2:	82 e2       	ldi	r24, 0x22	; 34
    4ad4:	90 e0       	ldi	r25, 0x00	; 0
    4ad6:	0e 94 d5 1b 	call	0x37aa	; 0x37aa <enc_txchksum>
    4ada:	8c 01       	movw	r16, r24
    4adc:	84 e2       	ldi	r24, 0x24	; 36
    4ade:	90 e0       	ldi	r25, 0x00	; 0
    4ae0:	0e 94 67 1a 	call	0x34ce	; 0x34ce <enc_txseek>
    4ae4:	c8 01       	movw	r24, r16
    4ae6:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    4aea:	81 e0       	ldi	r24, 0x01	; 1
    4aec:	0e 94 d8 25 	call	0x4bb0	; 0x4bb0 <ip_output>
    4af0:	01 c0       	rjmp	.+2      	; 0x4af4 <icmp_input+0x10e>
    4af2:	8a e0       	ldi	r24, 0x0A	; 10
    4af4:	28 96       	adiw	r28, 0x08	; 8
    4af6:	e4 e0       	ldi	r30, 0x04	; 4
    4af8:	0c 94 73 6d 	jmp	0xdae6	; 0xdae6 <__epilogue_restores__+0x1c>

00004afc <tcpudp_sum>:
    4afc:	a0 e0       	ldi	r26, 0x00	; 0
    4afe:	b0 e0       	ldi	r27, 0x00	; 0
    4b00:	e4 e8       	ldi	r30, 0x84	; 132
    4b02:	f5 e2       	ldi	r31, 0x25	; 37
    4b04:	0c 94 52 6d 	jmp	0xdaa4	; 0xdaa4 <__prologue_saves__+0x12>
    4b08:	b8 2e       	mov	r11, r24
    4b0a:	eb 01       	movw	r28, r22
    4b0c:	6a 01       	movw	r12, r20
    4b0e:	e0 e8       	ldi	r30, 0x80	; 128
    4b10:	f4 e0       	ldi	r31, 0x04	; 4
    4b12:	ee 24       	eor	r14, r14
    4b14:	ff 24       	eor	r15, r15
    4b16:	87 01       	movw	r16, r14
    4b18:	30 81       	ld	r19, Z
    4b1a:	21 81       	ldd	r18, Z+1	; 0x01
    4b1c:	32 96       	adiw	r30, 0x02	; 2
    4b1e:	c9 01       	movw	r24, r18
    4b20:	a0 e0       	ldi	r26, 0x00	; 0
    4b22:	b0 e0       	ldi	r27, 0x00	; 0
    4b24:	e8 0e       	add	r14, r24
    4b26:	f9 1e       	adc	r15, r25
    4b28:	0a 1f       	adc	r16, r26
    4b2a:	1b 1f       	adc	r17, r27
    4b2c:	84 e0       	ldi	r24, 0x04	; 4
    4b2e:	ec 38       	cpi	r30, 0x8C	; 140
    4b30:	f8 07       	cpc	r31, r24
    4b32:	91 f7       	brne	.-28     	; 0x4b18 <tcpudp_sum+0x1c>
    4b34:	81 e0       	ldi	r24, 0x01	; 1
    4b36:	b8 16       	cp	r11, r24
    4b38:	51 f4       	brne	.+20     	; 0x4b4e <tcpudp_sum+0x52>
    4b3a:	80 e0       	ldi	r24, 0x00	; 0
    4b3c:	0e 94 fa 18 	call	0x31f4	; 0x31f4 <enc_bankselect>
    4b40:	c7 52       	subi	r28, 0x27	; 39
    4b42:	d6 4e       	sbci	r29, 0xE6	; 230
    4b44:	80 e0       	ldi	r24, 0x00	; 0
    4b46:	be 01       	movw	r22, r28
    4b48:	0e 94 d4 18 	call	0x31a8	; 0x31a8 <enc_writereg16>
    4b4c:	03 c0       	rjmp	.+6      	; 0x4b54 <tcpudp_sum+0x58>
    4b4e:	ce 01       	movw	r24, r28
    4b50:	0e 94 42 1a 	call	0x3484	; 0x3484 <enc_rxseek>
    4b54:	c6 01       	movw	r24, r12
    4b56:	0e 94 70 1b 	call	0x36e0	; 0x36e0 <enc_addsum>
    4b5a:	9c 01       	movw	r18, r24
    4b5c:	40 e0       	ldi	r20, 0x00	; 0
    4b5e:	50 e0       	ldi	r21, 0x00	; 0
    4b60:	2e 0d       	add	r18, r14
    4b62:	3f 1d       	adc	r19, r15
    4b64:	40 1f       	adc	r20, r16
    4b66:	51 1f       	adc	r21, r17
    4b68:	20 30       	cpi	r18, 0x00	; 0
    4b6a:	80 e0       	ldi	r24, 0x00	; 0
    4b6c:	38 07       	cpc	r19, r24
    4b6e:	81 e0       	ldi	r24, 0x01	; 1
    4b70:	48 07       	cpc	r20, r24
    4b72:	80 e0       	ldi	r24, 0x00	; 0
    4b74:	58 07       	cpc	r21, r24
    4b76:	a0 f0       	brcs	.+40     	; 0x4ba0 <tcpudp_sum+0xa4>
    4b78:	ca 01       	movw	r24, r20
    4b7a:	40 e0       	ldi	r20, 0x00	; 0
    4b7c:	50 e0       	ldi	r21, 0x00	; 0
    4b7e:	a0 e0       	ldi	r26, 0x00	; 0
    4b80:	b0 e0       	ldi	r27, 0x00	; 0
    4b82:	28 0f       	add	r18, r24
    4b84:	39 1f       	adc	r19, r25
    4b86:	4a 1f       	adc	r20, r26
    4b88:	5b 1f       	adc	r21, r27
    4b8a:	20 30       	cpi	r18, 0x00	; 0
    4b8c:	80 e0       	ldi	r24, 0x00	; 0
    4b8e:	38 07       	cpc	r19, r24
    4b90:	81 e0       	ldi	r24, 0x01	; 1
    4b92:	48 07       	cpc	r20, r24
    4b94:	80 e0       	ldi	r24, 0x00	; 0
    4b96:	58 07       	cpc	r21, r24
    4b98:	18 f0       	brcs	.+6      	; 0x4ba0 <tcpudp_sum+0xa4>
    4b9a:	c9 01       	movw	r24, r18
    4b9c:	01 96       	adiw	r24, 0x01	; 1
    4b9e:	9c 01       	movw	r18, r24
    4ba0:	20 95       	com	r18
    4ba2:	30 95       	com	r19
    4ba4:	c9 01       	movw	r24, r18
    4ba6:	cd b7       	in	r28, 0x3d	; 61
    4ba8:	de b7       	in	r29, 0x3e	; 62
    4baa:	e9 e0       	ldi	r30, 0x09	; 9
    4bac:	0c 94 6e 6d 	jmp	0xdadc	; 0xdadc <__epilogue_restores__+0x12>

00004bb0 <ip_output>:
    4bb0:	ac e1       	ldi	r26, 0x1C	; 28
    4bb2:	b0 e0       	ldi	r27, 0x00	; 0
    4bb4:	ee ed       	ldi	r30, 0xDE	; 222
    4bb6:	f5 e2       	ldi	r31, 0x25	; 37
    4bb8:	0c 94 57 6d 	jmp	0xdaae	; 0xdaae <__prologue_saves__+0x1c>
    4bbc:	18 2f       	mov	r17, r24
    4bbe:	80 91 64 04 	lds	r24, 0x0464
    4bc2:	90 91 65 04 	lds	r25, 0x0465
    4bc6:	44 96       	adiw	r24, 0x14	; 20
    4bc8:	90 93 65 04 	sts	0x0465, r25
    4bcc:	80 93 64 04 	sts	0x0464, r24
    4bd0:	8e e0       	ldi	r24, 0x0E	; 14
    4bd2:	90 e0       	ldi	r25, 0x00	; 0
    4bd4:	0e 94 67 1a 	call	0x34ce	; 0x34ce <enc_txseek>
    4bd8:	80 e0       	ldi	r24, 0x00	; 0
    4bda:	95 e4       	ldi	r25, 0x45	; 69
    4bdc:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    4be0:	80 91 64 04 	lds	r24, 0x0464
    4be4:	90 91 65 04 	lds	r25, 0x0465
    4be8:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    4bec:	80 91 17 05 	lds	r24, 0x0517
    4bf0:	90 91 18 05 	lds	r25, 0x0518
    4bf4:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    4bf8:	80 e0       	ldi	r24, 0x00	; 0
    4bfa:	90 e4       	ldi	r25, 0x40	; 64
    4bfc:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    4c00:	80 91 06 01 	lds	r24, 0x0106
    4c04:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    4c08:	81 2f       	mov	r24, r17
    4c0a:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    4c0e:	80 e0       	ldi	r24, 0x00	; 0
    4c10:	90 e0       	ldi	r25, 0x00	; 0
    4c12:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    4c16:	60 91 0b 05 	lds	r22, 0x050B
    4c1a:	70 91 0c 05 	lds	r23, 0x050C
    4c1e:	80 91 0d 05 	lds	r24, 0x050D
    4c22:	90 91 0e 05 	lds	r25, 0x050E
    4c26:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    4c2a:	60 91 6c 04 	lds	r22, 0x046C
    4c2e:	70 91 6d 04 	lds	r23, 0x046D
    4c32:	80 91 6e 04 	lds	r24, 0x046E
    4c36:	90 91 6f 04 	lds	r25, 0x046F
    4c3a:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    4c3e:	8e e0       	ldi	r24, 0x0E	; 14
    4c40:	90 e0       	ldi	r25, 0x00	; 0
    4c42:	64 e1       	ldi	r22, 0x14	; 20
    4c44:	70 e0       	ldi	r23, 0x00	; 0
    4c46:	0e 94 d5 1b 	call	0x37aa	; 0x37aa <enc_txchksum>
    4c4a:	8c 01       	movw	r16, r24
    4c4c:	88 e1       	ldi	r24, 0x18	; 24
    4c4e:	90 e0       	ldi	r25, 0x00	; 0
    4c50:	0e 94 67 1a 	call	0x34ce	; 0x34ce <enc_txseek>
    4c54:	c8 01       	movw	r24, r16
    4c56:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    4c5a:	0e 94 33 24 	call	0x4866	; 0x4866 <arp_search>
    4c5e:	88 23       	and	r24, r24
    4c60:	09 f4       	brne	.+2      	; 0x4c64 <ip_output+0xb4>
    4c62:	47 c0       	rjmp	.+142    	; 0x4cf2 <ip_output+0x142>
    4c64:	de 01       	movw	r26, r28
    4c66:	11 96       	adiw	r26, 0x01	; 1
    4c68:	e4 e6       	ldi	r30, 0x64	; 100
    4c6a:	f4 e0       	ldi	r31, 0x04	; 4
    4c6c:	9c e1       	ldi	r25, 0x1C	; 28
    4c6e:	01 90       	ld	r0, Z+
    4c70:	0d 92       	st	X+, r0
    4c72:	91 50       	subi	r25, 0x01	; 1
    4c74:	e1 f7       	brne	.-8      	; 0x4c6e <ip_output+0xbe>
    4c76:	82 30       	cpi	r24, 0x02	; 2
    4c78:	49 f4       	brne	.+18     	; 0x4c8c <ip_output+0xdc>
    4c7a:	60 91 13 05 	lds	r22, 0x0513
    4c7e:	70 91 14 05 	lds	r23, 0x0514
    4c82:	80 91 15 05 	lds	r24, 0x0515
    4c86:	90 91 16 05 	lds	r25, 0x0516
    4c8a:	08 c0       	rjmp	.+16     	; 0x4c9c <ip_output+0xec>
    4c8c:	60 91 6c 04 	lds	r22, 0x046C
    4c90:	70 91 6d 04 	lds	r23, 0x046D
    4c94:	80 91 6e 04 	lds	r24, 0x046E
    4c98:	90 91 6f 04 	lds	r25, 0x046F
    4c9c:	0e 94 dd 22 	call	0x45ba	; 0x45ba <arp_request>
    4ca0:	0e 94 81 1a 	call	0x3502	; 0x3502 <enc_setnextpoint>
    4ca4:	0e 94 c6 1f 	call	0x3f8c	; 0x3f8c <getcount1ms>
    4ca8:	8c 01       	movw	r16, r24
    4caa:	a8 95       	wdr
    4cac:	0e 94 c3 24 	call	0x4986	; 0x4986 <ether_input>
    4cb0:	88 23       	and	r24, r24
    4cb2:	11 f0       	breq	.+4      	; 0x4cb8 <ip_output+0x108>
    4cb4:	0e 94 81 1a 	call	0x3502	; 0x3502 <enc_setnextpoint>
    4cb8:	0e 94 33 24 	call	0x4866	; 0x4866 <arp_search>
    4cbc:	88 23       	and	r24, r24
    4cbe:	11 f4       	brne	.+4      	; 0x4cc4 <ip_output+0x114>
    4cc0:	20 e0       	ldi	r18, 0x00	; 0
    4cc2:	0c c0       	rjmp	.+24     	; 0x4cdc <ip_output+0x12c>
    4cc4:	0e 94 c6 1f 	call	0x3f8c	; 0x3f8c <getcount1ms>
    4cc8:	80 1b       	sub	r24, r16
    4cca:	91 0b       	sbc	r25, r17
    4ccc:	20 91 04 01 	lds	r18, 0x0104
    4cd0:	30 91 05 01 	lds	r19, 0x0105
    4cd4:	82 17       	cp	r24, r18
    4cd6:	93 07       	cpc	r25, r19
    4cd8:	40 f3       	brcs	.-48     	; 0x4caa <ip_output+0xfa>
    4cda:	26 e0       	ldi	r18, 0x06	; 6
    4cdc:	a4 e6       	ldi	r26, 0x64	; 100
    4cde:	b4 e0       	ldi	r27, 0x04	; 4
    4ce0:	fe 01       	movw	r30, r28
    4ce2:	31 96       	adiw	r30, 0x01	; 1
    4ce4:	8c e1       	ldi	r24, 0x1C	; 28
    4ce6:	01 90       	ld	r0, Z+
    4ce8:	0d 92       	st	X+, r0
    4cea:	81 50       	subi	r24, 0x01	; 1
    4cec:	e1 f7       	brne	.-8      	; 0x4ce6 <ip_output+0x136>
    4cee:	22 23       	and	r18, r18
    4cf0:	29 f4       	brne	.+10     	; 0x4cfc <ip_output+0x14c>
    4cf2:	80 e0       	ldi	r24, 0x00	; 0
    4cf4:	98 e0       	ldi	r25, 0x08	; 8
    4cf6:	0e 94 9d 24 	call	0x493a	; 0x493a <ether_output>
    4cfa:	20 e0       	ldi	r18, 0x00	; 0
    4cfc:	80 91 17 05 	lds	r24, 0x0517
    4d00:	90 91 18 05 	lds	r25, 0x0518
    4d04:	01 96       	adiw	r24, 0x01	; 1
    4d06:	90 93 18 05 	sts	0x0518, r25
    4d0a:	80 93 17 05 	sts	0x0517, r24
    4d0e:	82 2f       	mov	r24, r18
    4d10:	6c 96       	adiw	r28, 0x1c	; 28
    4d12:	e4 e0       	ldi	r30, 0x04	; 4
    4d14:	0c 94 73 6d 	jmp	0xdae6	; 0xdae6 <__epilogue_restores__+0x1c>

00004d18 <ip_input>:
    4d18:	a4 e1       	ldi	r26, 0x14	; 20
    4d1a:	b0 e0       	ldi	r27, 0x00	; 0
    4d1c:	e2 e9       	ldi	r30, 0x92	; 146
    4d1e:	f6 e2       	ldi	r31, 0x26	; 38
    4d20:	0c 94 55 6d 	jmp	0xdaaa	; 0xdaaa <__prologue_saves__+0x18>
    4d24:	0e 94 c3 24 	call	0x4986	; 0x4986 <ether_input>
    4d28:	88 23       	and	r24, r24
    4d2a:	09 f4       	brne	.+2      	; 0x4d2e <ip_input+0x16>
    4d2c:	a0 c0       	rjmp	.+320    	; 0x4e6e <ip_input+0x156>
    4d2e:	82 30       	cpi	r24, 0x02	; 2
    4d30:	11 f4       	brne	.+4      	; 0x4d36 <ip_input+0x1e>
    4d32:	85 e0       	ldi	r24, 0x05	; 5
    4d34:	9c c0       	rjmp	.+312    	; 0x4e6e <ip_input+0x156>
    4d36:	8e e0       	ldi	r24, 0x0E	; 14
    4d38:	90 e0       	ldi	r25, 0x00	; 0
    4d3a:	64 e1       	ldi	r22, 0x14	; 20
    4d3c:	70 e0       	ldi	r23, 0x00	; 0
    4d3e:	0e 94 c6 1b 	call	0x378c	; 0x378c <enc_rxchksum>
    4d42:	89 2b       	or	r24, r25
    4d44:	09 f0       	breq	.+2      	; 0x4d48 <ip_input+0x30>
    4d46:	90 c0       	rjmp	.+288    	; 0x4e68 <ip_input+0x150>
    4d48:	8e e0       	ldi	r24, 0x0E	; 14
    4d4a:	90 e0       	ldi	r25, 0x00	; 0
    4d4c:	0e 94 42 1a 	call	0x3484	; 0x3484 <enc_rxseek>
    4d50:	ce 01       	movw	r24, r28
    4d52:	01 96       	adiw	r24, 0x01	; 1
    4d54:	64 e1       	ldi	r22, 0x14	; 20
    4d56:	70 e0       	ldi	r23, 0x00	; 0
    4d58:	0e 94 7e 19 	call	0x32fc	; 0x32fc <enc_readbuffer>
    4d5c:	69 89       	ldd	r22, Y+17	; 0x11
    4d5e:	7a 89       	ldd	r23, Y+18	; 0x12
    4d60:	8b 89       	ldd	r24, Y+19	; 0x13
    4d62:	9c 89       	ldd	r25, Y+20	; 0x14
    4d64:	0e 94 3b 41 	call	0x8276	; 0x8276 <cnvendian32>
    4d68:	7b 01       	movw	r14, r22
    4d6a:	8c 01       	movw	r16, r24
    4d6c:	20 91 0f 05 	lds	r18, 0x050F
    4d70:	30 91 10 05 	lds	r19, 0x0510
    4d74:	40 91 11 05 	lds	r20, 0x0511
    4d78:	50 91 12 05 	lds	r21, 0x0512
    4d7c:	89 81       	ldd	r24, Y+1	; 0x01
    4d7e:	68 2f       	mov	r22, r24
    4d80:	70 e0       	ldi	r23, 0x00	; 0
    4d82:	cb 01       	movw	r24, r22
    4d84:	80 7f       	andi	r24, 0xF0	; 240
    4d86:	90 70       	andi	r25, 0x00	; 0
    4d88:	80 34       	cpi	r24, 0x40	; 64
    4d8a:	91 05       	cpc	r25, r1
    4d8c:	09 f0       	breq	.+2      	; 0x4d90 <ip_input+0x78>
    4d8e:	6c c0       	rjmp	.+216    	; 0x4e68 <ip_input+0x150>
    4d90:	80 91 0b 05 	lds	r24, 0x050B
    4d94:	90 91 0c 05 	lds	r25, 0x050C
    4d98:	a0 91 0d 05 	lds	r26, 0x050D
    4d9c:	b0 91 0e 05 	lds	r27, 0x050E
    4da0:	e8 16       	cp	r14, r24
    4da2:	f9 06       	cpc	r15, r25
    4da4:	0a 07       	cpc	r16, r26
    4da6:	1b 07       	cpc	r17, r27
    4da8:	99 f0       	breq	.+38     	; 0x4dd0 <ip_input+0xb8>
    4daa:	2e 29       	or	r18, r14
    4dac:	3f 29       	or	r19, r15
    4dae:	40 2b       	or	r20, r16
    4db0:	51 2b       	or	r21, r17
    4db2:	2f 5f       	subi	r18, 0xFF	; 255
    4db4:	3f 4f       	sbci	r19, 0xFF	; 255
    4db6:	4f 4f       	sbci	r20, 0xFF	; 255
    4db8:	5f 4f       	sbci	r21, 0xFF	; 255
    4dba:	51 f0       	breq	.+20     	; 0x4dd0 <ip_input+0xb8>
    4dbc:	8f ef       	ldi	r24, 0xFF	; 255
    4dbe:	e8 16       	cp	r14, r24
    4dc0:	8f ef       	ldi	r24, 0xFF	; 255
    4dc2:	f8 06       	cpc	r15, r24
    4dc4:	8f ef       	ldi	r24, 0xFF	; 255
    4dc6:	08 07       	cpc	r16, r24
    4dc8:	8f ef       	ldi	r24, 0xFF	; 255
    4dca:	18 07       	cpc	r17, r24
    4dcc:	09 f0       	breq	.+2      	; 0x4dd0 <ip_input+0xb8>
    4dce:	4c c0       	rjmp	.+152    	; 0x4e68 <ip_input+0x150>
    4dd0:	6f 70       	andi	r22, 0x0F	; 15
    4dd2:	70 70       	andi	r23, 0x00	; 0
    4dd4:	66 0f       	add	r22, r22
    4dd6:	77 1f       	adc	r23, r23
    4dd8:	66 0f       	add	r22, r22
    4dda:	77 1f       	adc	r23, r23
    4ddc:	60 93 19 05 	sts	0x0519, r22
    4de0:	8b 81       	ldd	r24, Y+3	; 0x03
    4de2:	9c 81       	ldd	r25, Y+4	; 0x04
    4de4:	0e 94 37 41 	call	0x826e	; 0x826e <cnvendian16>
    4de8:	20 91 19 05 	lds	r18, 0x0519
    4dec:	82 1b       	sub	r24, r18
    4dee:	91 09       	sbc	r25, r1
    4df0:	90 93 65 04 	sts	0x0465, r25
    4df4:	80 93 64 04 	sts	0x0464, r24
    4df8:	6d 85       	ldd	r22, Y+13	; 0x0d
    4dfa:	7e 85       	ldd	r23, Y+14	; 0x0e
    4dfc:	8f 85       	ldd	r24, Y+15	; 0x0f
    4dfe:	98 89       	ldd	r25, Y+16	; 0x10
    4e00:	0e 94 3b 41 	call	0x8276	; 0x8276 <cnvendian32>
    4e04:	60 93 6c 04 	sts	0x046C, r22
    4e08:	70 93 6d 04 	sts	0x046D, r23
    4e0c:	80 93 6e 04 	sts	0x046E, r24
    4e10:	90 93 6f 04 	sts	0x046F, r25
    4e14:	e0 92 70 04 	sts	0x0470, r14
    4e18:	f0 92 71 04 	sts	0x0471, r15
    4e1c:	00 93 72 04 	sts	0x0472, r16
    4e20:	10 93 73 04 	sts	0x0473, r17
    4e24:	80 91 19 05 	lds	r24, 0x0519
    4e28:	85 31       	cpi	r24, 0x15	; 21
    4e2a:	20 f0       	brcs	.+8      	; 0x4e34 <ip_input+0x11c>
    4e2c:	84 51       	subi	r24, 0x14	; 20
    4e2e:	90 e0       	ldi	r25, 0x00	; 0
    4e30:	0e 94 86 1c 	call	0x390c	; 0x390c <enc_skip>
    4e34:	60 91 6c 04 	lds	r22, 0x046C
    4e38:	70 91 6d 04 	lds	r23, 0x046D
    4e3c:	80 91 6e 04 	lds	r24, 0x046E
    4e40:	90 91 6f 04 	lds	r25, 0x046F
    4e44:	46 e6       	ldi	r20, 0x66	; 102
    4e46:	54 e0       	ldi	r21, 0x04	; 4
    4e48:	20 e0       	ldi	r18, 0x00	; 0
    4e4a:	0e 94 38 23 	call	0x4670	; 0x4670 <arp_keep>
    4e4e:	8a 85       	ldd	r24, Y+10	; 0x0a
    4e50:	81 30       	cpi	r24, 0x01	; 1
    4e52:	11 f4       	brne	.+4      	; 0x4e58 <ip_input+0x140>
    4e54:	82 e0       	ldi	r24, 0x02	; 2
    4e56:	0b c0       	rjmp	.+22     	; 0x4e6e <ip_input+0x156>
    4e58:	81 31       	cpi	r24, 0x11	; 17
    4e5a:	11 f4       	brne	.+4      	; 0x4e60 <ip_input+0x148>
    4e5c:	83 e0       	ldi	r24, 0x03	; 3
    4e5e:	07 c0       	rjmp	.+14     	; 0x4e6e <ip_input+0x156>
    4e60:	86 30       	cpi	r24, 0x06	; 6
    4e62:	11 f4       	brne	.+4      	; 0x4e68 <ip_input+0x150>
    4e64:	84 e0       	ldi	r24, 0x04	; 4
    4e66:	03 c0       	rjmp	.+6      	; 0x4e6e <ip_input+0x156>
    4e68:	0e 94 81 1a 	call	0x3502	; 0x3502 <enc_setnextpoint>
    4e6c:	80 e0       	ldi	r24, 0x00	; 0
    4e6e:	64 96       	adiw	r28, 0x14	; 20
    4e70:	e6 e0       	ldi	r30, 0x06	; 6
    4e72:	0c 94 71 6d 	jmp	0xdae2	; 0xdae2 <__epilogue_restores__+0x18>

00004e76 <tcp_output>:
    4e76:	a0 e0       	ldi	r26, 0x00	; 0
    4e78:	b0 e0       	ldi	r27, 0x00	; 0
    4e7a:	e1 e4       	ldi	r30, 0x41	; 65
    4e7c:	f7 e2       	ldi	r31, 0x27	; 39
    4e7e:	0c 94 54 6d 	jmp	0xdaa8	; 0xdaa8 <__prologue_saves__+0x16>
    4e82:	d8 2e       	mov	r13, r24
    4e84:	eb 01       	movw	r28, r22
    4e86:	7a 01       	movw	r14, r20
    4e88:	84 e1       	ldi	r24, 0x14	; 20
    4e8a:	90 e0       	ldi	r25, 0x00	; 0
    4e8c:	e8 0e       	add	r14, r24
    4e8e:	f9 1e       	adc	r15, r25
    4e90:	f0 92 65 04 	sts	0x0465, r15
    4e94:	e0 92 64 04 	sts	0x0464, r14
    4e98:	8c ee       	ldi	r24, 0xEC	; 236
    4e9a:	9f ef       	ldi	r25, 0xFF	; 255
    4e9c:	e8 0e       	add	r14, r24
    4e9e:	f9 1e       	adc	r15, r25
    4ea0:	82 e2       	ldi	r24, 0x22	; 34
    4ea2:	90 e0       	ldi	r25, 0x00	; 0
    4ea4:	0e 94 67 1a 	call	0x34ce	; 0x34ce <enc_txseek>
    4ea8:	8d 81       	ldd	r24, Y+5	; 0x05
    4eaa:	9e 81       	ldd	r25, Y+6	; 0x06
    4eac:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    4eb0:	8f 81       	ldd	r24, Y+7	; 0x07
    4eb2:	98 85       	ldd	r25, Y+8	; 0x08
    4eb4:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    4eb8:	69 85       	ldd	r22, Y+9	; 0x09
    4eba:	7a 85       	ldd	r23, Y+10	; 0x0a
    4ebc:	8b 85       	ldd	r24, Y+11	; 0x0b
    4ebe:	9c 85       	ldd	r25, Y+12	; 0x0c
    4ec0:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    4ec4:	6d 85       	ldd	r22, Y+13	; 0x0d
    4ec6:	7e 85       	ldd	r23, Y+14	; 0x0e
    4ec8:	8f 85       	ldd	r24, Y+15	; 0x0f
    4eca:	98 89       	ldd	r25, Y+16	; 0x10
    4ecc:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    4ed0:	80 e5       	ldi	r24, 0x50	; 80
    4ed2:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    4ed6:	8d 2d       	mov	r24, r13
    4ed8:	8f 73       	andi	r24, 0x3F	; 63
    4eda:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    4ede:	84 eb       	ldi	r24, 0xB4	; 180
    4ee0:	95 e0       	ldi	r25, 0x05	; 5
    4ee2:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    4ee6:	60 e0       	ldi	r22, 0x00	; 0
    4ee8:	70 e0       	ldi	r23, 0x00	; 0
    4eea:	80 e0       	ldi	r24, 0x00	; 0
    4eec:	90 e0       	ldi	r25, 0x00	; 0
    4eee:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    4ef2:	60 91 0b 05 	lds	r22, 0x050B
    4ef6:	70 91 0c 05 	lds	r23, 0x050C
    4efa:	80 91 0d 05 	lds	r24, 0x050D
    4efe:	90 91 0e 05 	lds	r25, 0x050E
    4f02:	0e 94 3b 41 	call	0x8276	; 0x8276 <cnvendian32>
    4f06:	60 93 80 04 	sts	0x0480, r22
    4f0a:	70 93 81 04 	sts	0x0481, r23
    4f0e:	80 93 82 04 	sts	0x0482, r24
    4f12:	90 93 83 04 	sts	0x0483, r25
    4f16:	69 81       	ldd	r22, Y+1	; 0x01
    4f18:	7a 81       	ldd	r23, Y+2	; 0x02
    4f1a:	8b 81       	ldd	r24, Y+3	; 0x03
    4f1c:	9c 81       	ldd	r25, Y+4	; 0x04
    4f1e:	0e 94 3b 41 	call	0x8276	; 0x8276 <cnvendian32>
    4f22:	60 93 84 04 	sts	0x0484, r22
    4f26:	70 93 85 04 	sts	0x0485, r23
    4f2a:	80 93 86 04 	sts	0x0486, r24
    4f2e:	90 93 87 04 	sts	0x0487, r25
    4f32:	10 92 88 04 	sts	0x0488, r1
    4f36:	86 e0       	ldi	r24, 0x06	; 6
    4f38:	80 93 89 04 	sts	0x0489, r24
    4f3c:	80 91 64 04 	lds	r24, 0x0464
    4f40:	90 91 65 04 	lds	r25, 0x0465
    4f44:	0e 94 37 41 	call	0x826e	; 0x826e <cnvendian16>
    4f48:	90 93 8b 04 	sts	0x048B, r25
    4f4c:	80 93 8a 04 	sts	0x048A, r24
    4f50:	40 91 64 04 	lds	r20, 0x0464
    4f54:	50 91 65 04 	lds	r21, 0x0465
    4f58:	81 e0       	ldi	r24, 0x01	; 1
    4f5a:	62 e2       	ldi	r22, 0x22	; 34
    4f5c:	70 e0       	ldi	r23, 0x00	; 0
    4f5e:	0e 94 7e 25 	call	0x4afc	; 0x4afc <tcpudp_sum>
    4f62:	8c 01       	movw	r16, r24
    4f64:	82 e3       	ldi	r24, 0x32	; 50
    4f66:	90 e0       	ldi	r25, 0x00	; 0
    4f68:	0e 94 67 1a 	call	0x34ce	; 0x34ce <enc_txseek>
    4f6c:	c8 01       	movw	r24, r16
    4f6e:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    4f72:	86 e0       	ldi	r24, 0x06	; 6
    4f74:	0e 94 d8 25 	call	0x4bb0	; 0x4bb0 <ip_output>
    4f78:	68 2f       	mov	r22, r24
    4f7a:	88 23       	and	r24, r24
    4f7c:	01 f5       	brne	.+64     	; 0x4fbe <tcp_output+0x148>
    4f7e:	8d 2d       	mov	r24, r13
    4f80:	90 e0       	ldi	r25, 0x00	; 0
    4f82:	83 70       	andi	r24, 0x03	; 3
    4f84:	90 70       	andi	r25, 0x00	; 0
    4f86:	89 2b       	or	r24, r25
    4f88:	41 f0       	breq	.+16     	; 0x4f9a <tcp_output+0x124>
    4f8a:	89 85       	ldd	r24, Y+9	; 0x09
    4f8c:	9a 85       	ldd	r25, Y+10	; 0x0a
    4f8e:	ab 85       	ldd	r26, Y+11	; 0x0b
    4f90:	bc 85       	ldd	r27, Y+12	; 0x0c
    4f92:	01 96       	adiw	r24, 0x01	; 1
    4f94:	a1 1d       	adc	r26, r1
    4f96:	b1 1d       	adc	r27, r1
    4f98:	0e c0       	rjmp	.+28     	; 0x4fb6 <tcp_output+0x140>
    4f9a:	e1 14       	cp	r14, r1
    4f9c:	f1 04       	cpc	r15, r1
    4f9e:	79 f0       	breq	.+30     	; 0x4fbe <tcp_output+0x148>
    4fa0:	97 01       	movw	r18, r14
    4fa2:	40 e0       	ldi	r20, 0x00	; 0
    4fa4:	50 e0       	ldi	r21, 0x00	; 0
    4fa6:	89 85       	ldd	r24, Y+9	; 0x09
    4fa8:	9a 85       	ldd	r25, Y+10	; 0x0a
    4faa:	ab 85       	ldd	r26, Y+11	; 0x0b
    4fac:	bc 85       	ldd	r27, Y+12	; 0x0c
    4fae:	82 0f       	add	r24, r18
    4fb0:	93 1f       	adc	r25, r19
    4fb2:	a4 1f       	adc	r26, r20
    4fb4:	b5 1f       	adc	r27, r21
    4fb6:	89 87       	std	Y+9, r24	; 0x09
    4fb8:	9a 87       	std	Y+10, r25	; 0x0a
    4fba:	ab 87       	std	Y+11, r26	; 0x0b
    4fbc:	bc 87       	std	Y+12, r27	; 0x0c
    4fbe:	86 2f       	mov	r24, r22
    4fc0:	cd b7       	in	r28, 0x3d	; 61
    4fc2:	de b7       	in	r29, 0x3e	; 62
    4fc4:	e7 e0       	ldi	r30, 0x07	; 7
    4fc6:	0c 94 70 6d 	jmp	0xdae0	; 0xdae0 <__epilogue_restores__+0x16>

00004fca <tcp_sendreset>:
    4fca:	a2 e1       	ldi	r26, 0x12	; 18
    4fcc:	b0 e0       	ldi	r27, 0x00	; 0
    4fce:	eb ee       	ldi	r30, 0xEB	; 235
    4fd0:	f7 e2       	ldi	r31, 0x27	; 39
    4fd2:	0c 94 59 6d 	jmp	0xdab2	; 0xdab2 <__prologue_saves__+0x20>
    4fd6:	20 91 74 04 	lds	r18, 0x0474
    4fda:	30 91 75 04 	lds	r19, 0x0475
    4fde:	c9 01       	movw	r24, r18
    4fe0:	a0 e0       	ldi	r26, 0x00	; 0
    4fe2:	b0 e0       	ldi	r27, 0x00	; 0
    4fe4:	8a 83       	std	Y+2, r24	; 0x02
    4fe6:	9b 83       	std	Y+3, r25	; 0x03
    4fe8:	ac 83       	std	Y+4, r26	; 0x04
    4fea:	bd 83       	std	Y+5, r27	; 0x05
    4fec:	80 91 76 04 	lds	r24, 0x0476
    4ff0:	90 91 77 04 	lds	r25, 0x0477
    4ff4:	9f 83       	std	Y+7, r25	; 0x07
    4ff6:	8e 83       	std	Y+6, r24	; 0x06
    4ff8:	39 87       	std	Y+9, r19	; 0x09
    4ffa:	28 87       	std	Y+8, r18	; 0x08
    4ffc:	1a 86       	std	Y+10, r1	; 0x0a
    4ffe:	1b 86       	std	Y+11, r1	; 0x0b
    5000:	1c 86       	std	Y+12, r1	; 0x0c
    5002:	1d 86       	std	Y+13, r1	; 0x0d
    5004:	80 91 7c 04 	lds	r24, 0x047C
    5008:	90 91 7d 04 	lds	r25, 0x047D
    500c:	a0 91 7e 04 	lds	r26, 0x047E
    5010:	b0 91 7f 04 	lds	r27, 0x047F
    5014:	01 96       	adiw	r24, 0x01	; 1
    5016:	a1 1d       	adc	r26, r1
    5018:	b1 1d       	adc	r27, r1
    501a:	8e 87       	std	Y+14, r24	; 0x0e
    501c:	9f 87       	std	Y+15, r25	; 0x0f
    501e:	a8 8b       	std	Y+16, r26	; 0x10
    5020:	b9 8b       	std	Y+17, r27	; 0x11
    5022:	84 e0       	ldi	r24, 0x04	; 4
    5024:	be 01       	movw	r22, r28
    5026:	6f 5f       	subi	r22, 0xFF	; 255
    5028:	7f 4f       	sbci	r23, 0xFF	; 255
    502a:	40 e0       	ldi	r20, 0x00	; 0
    502c:	50 e0       	ldi	r21, 0x00	; 0
    502e:	0e 94 3b 27 	call	0x4e76	; 0x4e76 <tcp_output>
    5032:	62 96       	adiw	r28, 0x12	; 18
    5034:	e2 e0       	ldi	r30, 0x02	; 2
    5036:	0c 94 75 6d 	jmp	0xdaea	; 0xdaea <__epilogue_restores__+0x20>

0000503a <tcp_search>:
    503a:	a8 e0       	ldi	r26, 0x08	; 8
    503c:	b0 e0       	ldi	r27, 0x00	; 0
    503e:	e3 e2       	ldi	r30, 0x23	; 35
    5040:	f8 e2       	ldi	r31, 0x28	; 40
    5042:	0c 94 4f 6d 	jmp	0xda9e	; 0xda9e <__prologue_saves__+0xc>
    5046:	7c 01       	movw	r14, r24
    5048:	80 91 78 04 	lds	r24, 0x0478
    504c:	90 91 79 04 	lds	r25, 0x0479
    5050:	0e 94 42 1a 	call	0x3484	; 0x3484 <enc_rxseek>
    5054:	00 e0       	ldi	r16, 0x00	; 0
    5056:	10 e0       	ldi	r17, 0x00	; 0
    5058:	6e 01       	movw	r12, r28
    505a:	08 94       	sec
    505c:	c1 1c       	adc	r12, r1
    505e:	d1 1c       	adc	r13, r1
    5060:	2c e4       	ldi	r18, 0x4C	; 76
    5062:	a2 2e       	mov	r10, r18
    5064:	27 e0       	ldi	r18, 0x07	; 7
    5066:	b2 2e       	mov	r11, r18
    5068:	ae 0c       	add	r10, r14
    506a:	bf 1c       	adc	r11, r15
    506c:	92 e0       	ldi	r25, 0x02	; 2
    506e:	89 2e       	mov	r8, r25
    5070:	99 24       	eor	r9, r9
    5072:	93 94       	inc	r9
    5074:	53 c0       	rjmp	.+166    	; 0x511c <tcp_search+0xe2>
    5076:	c6 01       	movw	r24, r12
    5078:	65 e0       	ldi	r22, 0x05	; 5
    507a:	70 e0       	ldi	r23, 0x00	; 0
    507c:	4a e0       	ldi	r20, 0x0A	; 10
    507e:	0e 94 6b 1c 	call	0x38d6	; 0x38d6 <enc_readstr>
    5082:	08 0f       	add	r16, r24
    5084:	19 1f       	adc	r17, r25
    5086:	c6 01       	movw	r24, r12
    5088:	67 ee       	ldi	r22, 0xE7	; 231
    508a:	70 e0       	ldi	r23, 0x00	; 0
    508c:	0e 94 b0 6d 	call	0xdb60	; 0xdb60 <strcmp_P>
    5090:	89 2b       	or	r24, r25
    5092:	91 f4       	brne	.+36     	; 0x50b8 <tcp_search+0x7e>
    5094:	e1 14       	cp	r14, r1
    5096:	f1 04       	cpc	r15, r1
    5098:	19 f0       	breq	.+6      	; 0x50a0 <tcp_search+0x66>
    509a:	88 e4       	ldi	r24, 0x48	; 72
    509c:	96 e0       	ldi	r25, 0x06	; 6
    509e:	02 c0       	rjmp	.+4      	; 0x50a4 <tcp_search+0x6a>
    50a0:	88 e4       	ldi	r24, 0x48	; 72
    50a2:	95 e0       	ldi	r25, 0x05	; 5
    50a4:	6b ef       	ldi	r22, 0xFB	; 251
    50a6:	70 e0       	ldi	r23, 0x00	; 0
    50a8:	4a e0       	ldi	r20, 0x0A	; 10
    50aa:	0e 94 6b 1c 	call	0x38d6	; 0x38d6 <enc_readstr>
    50ae:	08 0f       	add	r16, r24
    50b0:	19 1f       	adc	r17, r25
    50b2:	f5 01       	movw	r30, r10
    50b4:	90 82       	st	Z, r9
    50b6:	32 c0       	rjmp	.+100    	; 0x511c <tcp_search+0xe2>
    50b8:	c6 01       	movw	r24, r12
    50ba:	62 ee       	ldi	r22, 0xE2	; 226
    50bc:	70 e0       	ldi	r23, 0x00	; 0
    50be:	44 e0       	ldi	r20, 0x04	; 4
    50c0:	50 e0       	ldi	r21, 0x00	; 0
    50c2:	0e 94 c9 6d 	call	0xdb92	; 0xdb92 <strncmp_P>
    50c6:	89 2b       	or	r24, r25
    50c8:	19 f4       	brne	.+6      	; 0x50d0 <tcp_search+0x96>
    50ca:	f5 01       	movw	r30, r10
    50cc:	80 82       	st	Z, r8
    50ce:	26 c0       	rjmp	.+76     	; 0x511c <tcp_search+0xe2>
    50d0:	89 81       	ldd	r24, Y+1	; 0x01
    50d2:	8d 30       	cpi	r24, 0x0D	; 13
    50d4:	e1 f4       	brne	.+56     	; 0x510e <tcp_search+0xd4>
    50d6:	8a 81       	ldd	r24, Y+2	; 0x02
    50d8:	8a 30       	cpi	r24, 0x0A	; 10
    50da:	c9 f4       	brne	.+50     	; 0x510e <tcp_search+0xd4>
    50dc:	80 91 7a 04 	lds	r24, 0x047A
    50e0:	90 91 7b 04 	lds	r25, 0x047B
    50e4:	08 17       	cp	r16, r24
    50e6:	19 07       	cpc	r17, r25
    50e8:	c8 f0       	brcs	.+50     	; 0x511c <tcp_search+0xe2>
    50ea:	ee 0c       	add	r14, r14
    50ec:	ff 1c       	adc	r15, r15
    50ee:	88 e4       	ldi	r24, 0x48	; 72
    50f0:	97 e0       	ldi	r25, 0x07	; 7
    50f2:	e8 0e       	add	r14, r24
    50f4:	f9 1e       	adc	r15, r25
    50f6:	81 e0       	ldi	r24, 0x01	; 1
    50f8:	90 e0       	ldi	r25, 0x00	; 0
    50fa:	f7 01       	movw	r30, r14
    50fc:	91 83       	std	Z+1, r25	; 0x01
    50fe:	80 83       	st	Z, r24
    5100:	15 c0       	rjmp	.+42     	; 0x512c <tcp_search+0xf2>
    5102:	0f 5f       	subi	r16, 0xFF	; 255
    5104:	1f 4f       	sbci	r17, 0xFF	; 255
    5106:	0e 94 43 19 	call	0x3286	; 0x3286 <enc_readbuf>
    510a:	8a 30       	cpi	r24, 0x0A	; 10
    510c:	39 f0       	breq	.+14     	; 0x511c <tcp_search+0xe2>
    510e:	80 91 7a 04 	lds	r24, 0x047A
    5112:	90 91 7b 04 	lds	r25, 0x047B
    5116:	08 17       	cp	r16, r24
    5118:	19 07       	cpc	r17, r25
    511a:	98 f3       	brcs	.-26     	; 0x5102 <tcp_search+0xc8>
    511c:	80 91 7a 04 	lds	r24, 0x047A
    5120:	90 91 7b 04 	lds	r25, 0x047B
    5124:	08 17       	cp	r16, r24
    5126:	19 07       	cpc	r17, r25
    5128:	08 f4       	brcc	.+2      	; 0x512c <tcp_search+0xf2>
    512a:	a5 cf       	rjmp	.-182    	; 0x5076 <tcp_search+0x3c>
    512c:	28 96       	adiw	r28, 0x08	; 8
    512e:	ec e0       	ldi	r30, 0x0C	; 12
    5130:	0c 94 6b 6d 	jmp	0xdad6	; 0xdad6 <__epilogue_restores__+0xc>

00005134 <tcp_resetsocket>:
    5134:	cf 93       	push	r28
    5136:	df 93       	push	r29
    5138:	ec 01       	movw	r28, r24
    513a:	00 97       	sbiw	r24, 0x00	; 0
    513c:	19 f0       	breq	.+6      	; 0x5144 <tcp_resetsocket+0x10>
    513e:	28 e4       	ldi	r18, 0x48	; 72
    5140:	36 e0       	ldi	r19, 0x06	; 6
    5142:	02 c0       	rjmp	.+4      	; 0x5148 <tcp_resetsocket+0x14>
    5144:	28 e4       	ldi	r18, 0x48	; 72
    5146:	35 e0       	ldi	r19, 0x05	; 5
    5148:	fe 01       	movw	r30, r28
    514a:	ee 0f       	add	r30, r30
    514c:	ff 1f       	adc	r31, r31
    514e:	df 01       	movw	r26, r30
    5150:	43 e0       	ldi	r20, 0x03	; 3
    5152:	aa 0f       	add	r26, r26
    5154:	bb 1f       	adc	r27, r27
    5156:	4a 95       	dec	r20
    5158:	e1 f7       	brne	.-8      	; 0x5152 <tcp_resetsocket+0x1e>
    515a:	ae 0f       	add	r26, r30
    515c:	bf 1f       	adc	r27, r31
    515e:	a0 5e       	subi	r26, 0xE0	; 224
    5160:	ba 4f       	sbci	r27, 0xFA	; 250
    5162:	1c 92       	st	X, r1
    5164:	11 96       	adiw	r26, 0x01	; 1
    5166:	1d 92       	st	X+, r1
    5168:	1d 92       	st	X+, r1
    516a:	1d 92       	st	X+, r1
    516c:	1c 92       	st	X, r1
    516e:	14 97       	sbiw	r26, 0x04	; 4
    5170:	16 96       	adiw	r26, 0x06	; 6
    5172:	1c 92       	st	X, r1
    5174:	1e 92       	st	-X, r1
    5176:	15 97       	sbiw	r26, 0x05	; 5
    5178:	18 96       	adiw	r26, 0x08	; 8
    517a:	1c 92       	st	X, r1
    517c:	1e 92       	st	-X, r1
    517e:	17 97       	sbiw	r26, 0x07	; 7
    5180:	1d 96       	adiw	r26, 0x0d	; 13
    5182:	1d 92       	st	X+, r1
    5184:	1d 92       	st	X+, r1
    5186:	1d 92       	st	X+, r1
    5188:	1c 92       	st	X, r1
    518a:	50 97       	sbiw	r26, 0x10	; 16
    518c:	80 e0       	ldi	r24, 0x00	; 0
    518e:	91 e0       	ldi	r25, 0x01	; 1
    5190:	d9 01       	movw	r26, r18
    5192:	ac 01       	movw	r20, r24
    5194:	1d 92       	st	X+, r1
    5196:	41 50       	subi	r20, 0x01	; 1
    5198:	50 40       	sbci	r21, 0x00	; 0
    519a:	e1 f7       	brne	.-8      	; 0x5194 <tcp_resetsocket+0x60>
    519c:	c4 5b       	subi	r28, 0xB4	; 180
    519e:	d8 4f       	sbci	r29, 0xF8	; 248
    51a0:	18 82       	st	Y, r1
    51a2:	e8 5b       	subi	r30, 0xB8	; 184
    51a4:	f8 4f       	sbci	r31, 0xF8	; 248
    51a6:	11 82       	std	Z+1, r1	; 0x01
    51a8:	10 82       	st	Z, r1
    51aa:	df 91       	pop	r29
    51ac:	cf 91       	pop	r28
    51ae:	08 95       	ret

000051b0 <tcp_input>:
    51b0:	a6 e2       	ldi	r26, 0x26	; 38
    51b2:	b0 e0       	ldi	r27, 0x00	; 0
    51b4:	ee ed       	ldi	r30, 0xDE	; 222
    51b6:	f8 e2       	ldi	r31, 0x28	; 40
    51b8:	0c 94 4b 6d 	jmp	0xda96	; 0xda96 <__prologue_saves__+0x4>
    51bc:	00 91 19 05 	lds	r16, 0x0519
    51c0:	10 e0       	ldi	r17, 0x00	; 0
    51c2:	02 5f       	subi	r16, 0xF2	; 242
    51c4:	1f 4f       	sbci	r17, 0xFF	; 255
    51c6:	ce 01       	movw	r24, r28
    51c8:	43 96       	adiw	r24, 0x13	; 19
    51ca:	64 e1       	ldi	r22, 0x14	; 20
    51cc:	70 e0       	ldi	r23, 0x00	; 0
    51ce:	0e 94 7e 19 	call	0x32fc	; 0x32fc <enc_readbuffer>
    51d2:	8b 89       	ldd	r24, Y+19	; 0x13
    51d4:	9c 89       	ldd	r25, Y+20	; 0x14
    51d6:	0e 94 37 41 	call	0x826e	; 0x826e <cnvendian16>
    51da:	90 93 75 04 	sts	0x0475, r25
    51de:	80 93 74 04 	sts	0x0474, r24
    51e2:	8d 89       	ldd	r24, Y+21	; 0x15
    51e4:	9e 89       	ldd	r25, Y+22	; 0x16
    51e6:	0e 94 37 41 	call	0x826e	; 0x826e <cnvendian16>
    51ea:	90 93 77 04 	sts	0x0477, r25
    51ee:	80 93 76 04 	sts	0x0476, r24
    51f2:	6f 89       	ldd	r22, Y+23	; 0x17
    51f4:	78 8d       	ldd	r23, Y+24	; 0x18
    51f6:	89 8d       	ldd	r24, Y+25	; 0x19
    51f8:	9a 8d       	ldd	r25, Y+26	; 0x1a
    51fa:	0e 94 3b 41 	call	0x8276	; 0x8276 <cnvendian32>
    51fe:	60 93 7c 04 	sts	0x047C, r22
    5202:	70 93 7d 04 	sts	0x047D, r23
    5206:	80 93 7e 04 	sts	0x047E, r24
    520a:	90 93 7f 04 	sts	0x047F, r25
    520e:	2f 8d       	ldd	r18, Y+31	; 0x1f
    5210:	26 95       	lsr	r18
    5212:	26 95       	lsr	r18
    5214:	30 e0       	ldi	r19, 0x00	; 0
    5216:	c8 01       	movw	r24, r16
    5218:	82 0f       	add	r24, r18
    521a:	93 1f       	adc	r25, r19
    521c:	90 93 79 04 	sts	0x0479, r25
    5220:	80 93 78 04 	sts	0x0478, r24
    5224:	80 91 64 04 	lds	r24, 0x0464
    5228:	90 91 65 04 	lds	r25, 0x0465
    522c:	82 1b       	sub	r24, r18
    522e:	93 0b       	sbc	r25, r19
    5230:	90 93 7b 04 	sts	0x047B, r25
    5234:	80 93 7a 04 	sts	0x047A, r24
    5238:	60 91 6c 04 	lds	r22, 0x046C
    523c:	70 91 6d 04 	lds	r23, 0x046D
    5240:	80 91 6e 04 	lds	r24, 0x046E
    5244:	90 91 6f 04 	lds	r25, 0x046F
    5248:	0e 94 3b 41 	call	0x8276	; 0x8276 <cnvendian32>
    524c:	60 93 80 04 	sts	0x0480, r22
    5250:	70 93 81 04 	sts	0x0481, r23
    5254:	80 93 82 04 	sts	0x0482, r24
    5258:	90 93 83 04 	sts	0x0483, r25
    525c:	60 91 70 04 	lds	r22, 0x0470
    5260:	70 91 71 04 	lds	r23, 0x0471
    5264:	80 91 72 04 	lds	r24, 0x0472
    5268:	90 91 73 04 	lds	r25, 0x0473
    526c:	0e 94 3b 41 	call	0x8276	; 0x8276 <cnvendian32>
    5270:	60 93 84 04 	sts	0x0484, r22
    5274:	70 93 85 04 	sts	0x0485, r23
    5278:	80 93 86 04 	sts	0x0486, r24
    527c:	90 93 87 04 	sts	0x0487, r25
    5280:	10 92 88 04 	sts	0x0488, r1
    5284:	86 e0       	ldi	r24, 0x06	; 6
    5286:	80 93 89 04 	sts	0x0489, r24
    528a:	80 91 64 04 	lds	r24, 0x0464
    528e:	90 91 65 04 	lds	r25, 0x0465
    5292:	0e 94 37 41 	call	0x826e	; 0x826e <cnvendian16>
    5296:	90 93 8b 04 	sts	0x048B, r25
    529a:	80 93 8a 04 	sts	0x048A, r24
    529e:	40 91 64 04 	lds	r20, 0x0464
    52a2:	50 91 65 04 	lds	r21, 0x0465
    52a6:	80 e0       	ldi	r24, 0x00	; 0
    52a8:	b8 01       	movw	r22, r16
    52aa:	0e 94 7e 25 	call	0x4afc	; 0x4afc <tcpudp_sum>
    52ae:	89 2b       	or	r24, r25
    52b0:	09 f0       	breq	.+2      	; 0x52b4 <tcp_input+0x104>
    52b2:	89 c1       	rjmp	.+786    	; 0x55c6 <tcp_input+0x416>
    52b4:	98 a1       	ldd	r25, Y+32	; 0x20
    52b6:	99 23       	and	r25, r25
    52b8:	09 f4       	brne	.+2      	; 0x52bc <tcp_input+0x10c>
    52ba:	85 c1       	rjmp	.+778    	; 0x55c6 <tcp_input+0x416>
    52bc:	60 90 6c 04 	lds	r6, 0x046C
    52c0:	70 90 6d 04 	lds	r7, 0x046D
    52c4:	80 90 6e 04 	lds	r8, 0x046E
    52c8:	90 90 6f 04 	lds	r9, 0x046F
    52cc:	e0 90 74 04 	lds	r14, 0x0474
    52d0:	f0 90 75 04 	lds	r15, 0x0475
    52d4:	a0 90 76 04 	lds	r10, 0x0476
    52d8:	b0 90 77 04 	lds	r11, 0x0477
    52dc:	00 e2       	ldi	r16, 0x20	; 32
    52de:	15 e0       	ldi	r17, 0x05	; 5
    52e0:	cc 24       	eor	r12, r12
    52e2:	dd 24       	eor	r13, r13
    52e4:	6f ef       	ldi	r22, 0xFF	; 255
    52e6:	7f ef       	ldi	r23, 0xFF	; 255
    52e8:	2e 01       	movw	r4, r28
    52ea:	08 94       	sec
    52ec:	41 1c       	adc	r4, r1
    52ee:	51 1c       	adc	r5, r1
    52f0:	d2 01       	movw	r26, r4
    52f2:	f8 01       	movw	r30, r16
    52f4:	82 e1       	ldi	r24, 0x12	; 18
    52f6:	01 90       	ld	r0, Z+
    52f8:	0d 92       	st	X+, r0
    52fa:	81 50       	subi	r24, 0x01	; 1
    52fc:	e1 f7       	brne	.-8      	; 0x52f6 <tcp_input+0x146>
    52fe:	ae 81       	ldd	r26, Y+6	; 0x06
    5300:	bf 81       	ldd	r27, Y+7	; 0x07
    5302:	e8 85       	ldd	r30, Y+8	; 0x08
    5304:	f9 85       	ldd	r31, Y+9	; 0x09
    5306:	2a 81       	ldd	r18, Y+2	; 0x02
    5308:	3b 81       	ldd	r19, Y+3	; 0x03
    530a:	4c 81       	ldd	r20, Y+4	; 0x04
    530c:	5d 81       	ldd	r21, Y+5	; 0x05
    530e:	89 81       	ldd	r24, Y+1	; 0x01
    5310:	88 23       	and	r24, r24
    5312:	31 f4       	brne	.+12     	; 0x5320 <tcp_input+0x170>
    5314:	8f ef       	ldi	r24, 0xFF	; 255
    5316:	6f 3f       	cpi	r22, 0xFF	; 255
    5318:	78 07       	cpc	r23, r24
    531a:	11 f4       	brne	.+4      	; 0x5320 <tcp_input+0x170>
    531c:	b6 01       	movw	r22, r12
    531e:	0b c0       	rjmp	.+22     	; 0x5336 <tcp_input+0x186>
    5320:	26 15       	cp	r18, r6
    5322:	37 05       	cpc	r19, r7
    5324:	48 05       	cpc	r20, r8
    5326:	59 05       	cpc	r21, r9
    5328:	31 f4       	brne	.+12     	; 0x5336 <tcp_input+0x186>
    532a:	ee 15       	cp	r30, r14
    532c:	ff 05       	cpc	r31, r15
    532e:	19 f4       	brne	.+6      	; 0x5336 <tcp_input+0x186>
    5330:	aa 15       	cp	r26, r10
    5332:	bb 05       	cpc	r27, r11
    5334:	c1 f0       	breq	.+48     	; 0x5366 <tcp_input+0x1b6>
    5336:	08 94       	sec
    5338:	c1 1c       	adc	r12, r1
    533a:	d1 1c       	adc	r13, r1
    533c:	0e 5e       	subi	r16, 0xEE	; 238
    533e:	1f 4f       	sbci	r17, 0xFF	; 255
    5340:	e2 e0       	ldi	r30, 0x02	; 2
    5342:	ce 16       	cp	r12, r30
    5344:	d1 04       	cpc	r13, r1
    5346:	a1 f6       	brne	.-88     	; 0x52f0 <tcp_input+0x140>
    5348:	ff ef       	ldi	r31, 0xFF	; 255
    534a:	6f 3f       	cpi	r22, 0xFF	; 255
    534c:	7f 07       	cpc	r23, r31
    534e:	41 f0       	breq	.+16     	; 0x5360 <tcp_input+0x1b0>
    5350:	6b 01       	movw	r12, r22
    5352:	c0 94       	com	r12
    5354:	d0 94       	com	r13
    5356:	8c e9       	ldi	r24, 0x9C	; 156
    5358:	c8 16       	cp	r12, r24
    535a:	8f ef       	ldi	r24, 0xFF	; 255
    535c:	d8 06       	cpc	r13, r24
    535e:	19 f4       	brne	.+6      	; 0x5366 <tcp_input+0x1b6>
    5360:	0e 94 e5 27 	call	0x4fca	; 0x4fca <tcp_sendreset>
    5364:	ef c0       	rjmp	.+478    	; 0x5544 <tcp_input+0x394>
    5366:	d7 fe       	sbrs	r13, 7
    5368:	47 c0       	rjmp	.+142    	; 0x53f8 <tcp_input+0x248>
    536a:	91 ff       	sbrs	r25, 1
    536c:	2f c1       	rjmp	.+606    	; 0x55cc <tcp_input+0x41c>
    536e:	80 91 44 05 	lds	r24, 0x0544
    5372:	90 91 45 05 	lds	r25, 0x0545
    5376:	a8 16       	cp	r10, r24
    5378:	b9 06       	cpc	r11, r25
    537a:	09 f0       	breq	.+2      	; 0x537e <tcp_input+0x1ce>
    537c:	27 c1       	rjmp	.+590    	; 0x55cc <tcp_input+0x41c>
    537e:	c0 94       	com	r12
    5380:	d0 94       	com	r13
    5382:	c6 01       	movw	r24, r12
    5384:	88 0f       	add	r24, r24
    5386:	99 1f       	adc	r25, r25
    5388:	8c 01       	movw	r16, r24
    538a:	43 e0       	ldi	r20, 0x03	; 3
    538c:	00 0f       	add	r16, r16
    538e:	11 1f       	adc	r17, r17
    5390:	4a 95       	dec	r20
    5392:	e1 f7       	brne	.-8      	; 0x538c <tcp_input+0x1dc>
    5394:	08 0f       	add	r16, r24
    5396:	19 1f       	adc	r17, r25
    5398:	00 5e       	subi	r16, 0xE0	; 224
    539a:	1a 4f       	sbci	r17, 0xFA	; 250
    539c:	f8 01       	movw	r30, r16
    539e:	61 82       	std	Z+1, r6	; 0x01
    53a0:	72 82       	std	Z+2, r7	; 0x02
    53a2:	83 82       	std	Z+3, r8	; 0x03
    53a4:	94 82       	std	Z+4, r9	; 0x04
    53a6:	b6 82       	std	Z+6, r11	; 0x06
    53a8:	a5 82       	std	Z+5, r10	; 0x05
    53aa:	f0 86       	std	Z+8, r15	; 0x08
    53ac:	e7 82       	std	Z+7, r14	; 0x07
    53ae:	81 e0       	ldi	r24, 0x01	; 1
    53b0:	80 83       	st	Z, r24
    53b2:	0e 94 b6 40 	call	0x816c	; 0x816c <make_rand>
    53b6:	f8 01       	movw	r30, r16
    53b8:	61 87       	std	Z+9, r22	; 0x09
    53ba:	72 87       	std	Z+10, r23	; 0x0a
    53bc:	83 87       	std	Z+11, r24	; 0x0b
    53be:	94 87       	std	Z+12, r25	; 0x0c
    53c0:	80 91 7c 04 	lds	r24, 0x047C
    53c4:	90 91 7d 04 	lds	r25, 0x047D
    53c8:	a0 91 7e 04 	lds	r26, 0x047E
    53cc:	b0 91 7f 04 	lds	r27, 0x047F
    53d0:	01 96       	adiw	r24, 0x01	; 1
    53d2:	a1 1d       	adc	r26, r1
    53d4:	b1 1d       	adc	r27, r1
    53d6:	85 87       	std	Z+13, r24	; 0x0d
    53d8:	96 87       	std	Z+14, r25	; 0x0e
    53da:	a7 87       	std	Z+15, r26	; 0x0f
    53dc:	b0 8b       	std	Z+16, r27	; 0x10
    53de:	8c e3       	ldi	r24, 0x3C	; 60
    53e0:	81 8b       	std	Z+17, r24	; 0x11
    53e2:	82 e1       	ldi	r24, 0x12	; 18
    53e4:	b8 01       	movw	r22, r16
    53e6:	40 e0       	ldi	r20, 0x00	; 0
    53e8:	50 e0       	ldi	r21, 0x00	; 0
    53ea:	0e 94 3b 27 	call	0x4e76	; 0x4e76 <tcp_output>
    53ee:	f8 2e       	mov	r15, r24
    53f0:	88 23       	and	r24, r24
    53f2:	09 f4       	brne	.+2      	; 0x53f6 <tcp_input+0x246>
    53f4:	ec c0       	rjmp	.+472    	; 0x55ce <tcp_input+0x41e>
    53f6:	53 c0       	rjmp	.+166    	; 0x549e <tcp_input+0x2ee>
    53f8:	91 ff       	sbrs	r25, 1
    53fa:	03 c0       	rjmp	.+6      	; 0x5402 <tcp_input+0x252>
    53fc:	0e 94 e5 27 	call	0x4fca	; 0x4fca <tcp_sendreset>
    5400:	4d c0       	rjmp	.+154    	; 0x549c <tcp_input+0x2ec>
    5402:	92 ff       	sbrs	r25, 2
    5404:	0f c0       	rjmp	.+30     	; 0x5424 <tcp_input+0x274>
    5406:	b6 01       	movw	r22, r12
    5408:	66 0f       	add	r22, r22
    540a:	77 1f       	adc	r23, r23
    540c:	cb 01       	movw	r24, r22
    540e:	23 e0       	ldi	r18, 0x03	; 3
    5410:	88 0f       	add	r24, r24
    5412:	99 1f       	adc	r25, r25
    5414:	2a 95       	dec	r18
    5416:	e1 f7       	brne	.-8      	; 0x5410 <tcp_input+0x260>
    5418:	68 0f       	add	r22, r24
    541a:	79 1f       	adc	r23, r25
    541c:	60 5e       	subi	r22, 0xE0	; 224
    541e:	7a 4f       	sbci	r23, 0xFA	; 250
    5420:	84 e0       	ldi	r24, 0x04	; 4
    5422:	38 c0       	rjmp	.+112    	; 0x5494 <tcp_input+0x2e4>
    5424:	90 ff       	sbrs	r25, 0
    5426:	3f c0       	rjmp	.+126    	; 0x54a6 <tcp_input+0x2f6>
    5428:	c6 01       	movw	r24, r12
    542a:	88 0f       	add	r24, r24
    542c:	99 1f       	adc	r25, r25
    542e:	8c 01       	movw	r16, r24
    5430:	b3 e0       	ldi	r27, 0x03	; 3
    5432:	00 0f       	add	r16, r16
    5434:	11 1f       	adc	r17, r17
    5436:	ba 95       	dec	r27
    5438:	e1 f7       	brne	.-8      	; 0x5432 <tcp_input+0x282>
    543a:	08 0f       	add	r16, r24
    543c:	19 1f       	adc	r17, r25
    543e:	00 5e       	subi	r16, 0xE0	; 224
    5440:	1a 4f       	sbci	r17, 0xFA	; 250
    5442:	f8 01       	movw	r30, r16
    5444:	20 81       	ld	r18, Z
    5446:	80 91 7c 04 	lds	r24, 0x047C
    544a:	90 91 7d 04 	lds	r25, 0x047D
    544e:	a0 91 7e 04 	lds	r26, 0x047E
    5452:	b0 91 7f 04 	lds	r27, 0x047F
    5456:	01 96       	adiw	r24, 0x01	; 1
    5458:	a1 1d       	adc	r26, r1
    545a:	b1 1d       	adc	r27, r1
    545c:	85 87       	std	Z+13, r24	; 0x0d
    545e:	96 87       	std	Z+14, r25	; 0x0e
    5460:	a7 87       	std	Z+15, r26	; 0x0f
    5462:	b0 8b       	std	Z+16, r27	; 0x10
    5464:	22 30       	cpi	r18, 0x02	; 2
    5466:	79 f4       	brne	.+30     	; 0x5486 <tcp_input+0x2d6>
    5468:	80 e1       	ldi	r24, 0x10	; 16
    546a:	b8 01       	movw	r22, r16
    546c:	40 e0       	ldi	r20, 0x00	; 0
    546e:	50 e0       	ldi	r21, 0x00	; 0
    5470:	0e 94 3b 27 	call	0x4e76	; 0x4e76 <tcp_output>
    5474:	81 e1       	ldi	r24, 0x11	; 17
    5476:	b8 01       	movw	r22, r16
    5478:	40 e0       	ldi	r20, 0x00	; 0
    547a:	50 e0       	ldi	r21, 0x00	; 0
    547c:	0e 94 3b 27 	call	0x4e76	; 0x4e76 <tcp_output>
    5480:	f8 2e       	mov	r15, r24
    5482:	85 e0       	ldi	r24, 0x05	; 5
    5484:	69 c0       	rjmp	.+210    	; 0x5558 <tcp_input+0x3a8>
    5486:	23 30       	cpi	r18, 0x03	; 3
    5488:	19 f0       	breq	.+6      	; 0x5490 <tcp_input+0x2e0>
    548a:	26 30       	cpi	r18, 0x06	; 6
    548c:	09 f0       	breq	.+2      	; 0x5490 <tcp_input+0x2e0>
    548e:	9e c0       	rjmp	.+316    	; 0x55cc <tcp_input+0x41c>
    5490:	80 e1       	ldi	r24, 0x10	; 16
    5492:	b8 01       	movw	r22, r16
    5494:	40 e0       	ldi	r20, 0x00	; 0
    5496:	50 e0       	ldi	r21, 0x00	; 0
    5498:	0e 94 3b 27 	call	0x4e76	; 0x4e76 <tcp_output>
    549c:	f8 2e       	mov	r15, r24
    549e:	c6 01       	movw	r24, r12
    54a0:	0e 94 9a 28 	call	0x5134	; 0x5134 <tcp_resetsocket>
    54a4:	94 c0       	rjmp	.+296    	; 0x55ce <tcp_input+0x41e>
    54a6:	93 ff       	sbrs	r25, 3
    54a8:	5a c0       	rjmp	.+180    	; 0x555e <tcp_input+0x3ae>
    54aa:	80 91 7a 04 	lds	r24, 0x047A
    54ae:	90 91 7b 04 	lds	r25, 0x047B
    54b2:	00 97       	sbiw	r24, 0x00	; 0
    54b4:	09 f4       	brne	.+2      	; 0x54b8 <tcp_input+0x308>
    54b6:	8a c0       	rjmp	.+276    	; 0x55cc <tcp_input+0x41c>
    54b8:	56 01       	movw	r10, r12
    54ba:	aa 0c       	add	r10, r10
    54bc:	bb 1c       	adc	r11, r11
    54be:	85 01       	movw	r16, r10
    54c0:	f3 e0       	ldi	r31, 0x03	; 3
    54c2:	00 0f       	add	r16, r16
    54c4:	11 1f       	adc	r17, r17
    54c6:	fa 95       	dec	r31
    54c8:	e1 f7       	brne	.-8      	; 0x54c2 <tcp_input+0x312>
    54ca:	0a 0d       	add	r16, r10
    54cc:	1b 1d       	adc	r17, r11
    54ce:	00 5e       	subi	r16, 0xE0	; 224
    54d0:	1a 4f       	sbci	r17, 0xFA	; 250
    54d2:	f8 01       	movw	r30, r16
    54d4:	20 81       	ld	r18, Z
    54d6:	21 30       	cpi	r18, 0x01	; 1
    54d8:	09 f4       	brne	.+2      	; 0x54dc <tcp_input+0x32c>
    54da:	54 c0       	rjmp	.+168    	; 0x5584 <tcp_input+0x3d4>
    54dc:	22 30       	cpi	r18, 0x02	; 2
    54de:	09 f0       	breq	.+2      	; 0x54e2 <tcp_input+0x332>
    54e0:	75 c0       	rjmp	.+234    	; 0x55cc <tcp_input+0x41c>
    54e2:	a0 e0       	ldi	r26, 0x00	; 0
    54e4:	b0 e0       	ldi	r27, 0x00	; 0
    54e6:	20 91 7c 04 	lds	r18, 0x047C
    54ea:	30 91 7d 04 	lds	r19, 0x047D
    54ee:	40 91 7e 04 	lds	r20, 0x047E
    54f2:	50 91 7f 04 	lds	r21, 0x047F
    54f6:	82 0f       	add	r24, r18
    54f8:	93 1f       	adc	r25, r19
    54fa:	a4 1f       	adc	r26, r20
    54fc:	b5 1f       	adc	r27, r21
    54fe:	f8 01       	movw	r30, r16
    5500:	85 87       	std	Z+13, r24	; 0x0d
    5502:	96 87       	std	Z+14, r25	; 0x0e
    5504:	a7 87       	std	Z+15, r26	; 0x0f
    5506:	b0 8b       	std	Z+16, r27	; 0x10
    5508:	25 81       	ldd	r18, Z+5	; 0x05
    550a:	36 81       	ldd	r19, Z+6	; 0x06
    550c:	80 91 44 05 	lds	r24, 0x0544
    5510:	90 91 45 05 	lds	r25, 0x0545
    5514:	28 17       	cp	r18, r24
    5516:	39 07       	cpc	r19, r25
    5518:	b9 f4       	brne	.+46     	; 0x5548 <tcp_input+0x398>
    551a:	80 e1       	ldi	r24, 0x10	; 16
    551c:	b8 01       	movw	r22, r16
    551e:	40 e0       	ldi	r20, 0x00	; 0
    5520:	50 e0       	ldi	r21, 0x00	; 0
    5522:	0e 94 3b 27 	call	0x4e76	; 0x4e76 <tcp_output>
    5526:	f8 2e       	mov	r15, r24
    5528:	c6 01       	movw	r24, r12
    552a:	0e 94 1d 28 	call	0x503a	; 0x503a <tcp_search>
    552e:	f5 01       	movw	r30, r10
    5530:	e8 5b       	subi	r30, 0xB8	; 184
    5532:	f8 4f       	sbci	r31, 0xF8	; 248
    5534:	80 81       	ld	r24, Z
    5536:	91 81       	ldd	r25, Z+1	; 0x01
    5538:	01 97       	sbiw	r24, 0x01	; 1
    553a:	09 f0       	breq	.+2      	; 0x553e <tcp_input+0x38e>
    553c:	48 c0       	rjmp	.+144    	; 0x55ce <tcp_input+0x41e>
    553e:	c6 01       	movw	r24, r12
    5540:	0e 94 af 47 	call	0x8f5e	; 0x8f5e <http_output>
    5544:	f8 2e       	mov	r15, r24
    5546:	43 c0       	rjmp	.+134    	; 0x55ce <tcp_input+0x41e>
    5548:	81 e1       	ldi	r24, 0x11	; 17
    554a:	b8 01       	movw	r22, r16
    554c:	40 e0       	ldi	r20, 0x00	; 0
    554e:	50 e0       	ldi	r21, 0x00	; 0
    5550:	0e 94 3b 27 	call	0x4e76	; 0x4e76 <tcp_output>
    5554:	f8 2e       	mov	r15, r24
    5556:	83 e0       	ldi	r24, 0x03	; 3
    5558:	f8 01       	movw	r30, r16
    555a:	80 83       	st	Z, r24
    555c:	38 c0       	rjmp	.+112    	; 0x55ce <tcp_input+0x41e>
    555e:	94 ff       	sbrs	r25, 4
    5560:	35 c0       	rjmp	.+106    	; 0x55cc <tcp_input+0x41c>
    5562:	c6 01       	movw	r24, r12
    5564:	88 0f       	add	r24, r24
    5566:	99 1f       	adc	r25, r25
    5568:	8c 01       	movw	r16, r24
    556a:	73 e0       	ldi	r23, 0x03	; 3
    556c:	00 0f       	add	r16, r16
    556e:	11 1f       	adc	r17, r17
    5570:	7a 95       	dec	r23
    5572:	e1 f7       	brne	.-8      	; 0x556c <tcp_input+0x3bc>
    5574:	08 0f       	add	r16, r24
    5576:	19 1f       	adc	r17, r25
    5578:	00 5e       	subi	r16, 0xE0	; 224
    557a:	1a 4f       	sbci	r17, 0xFA	; 250
    557c:	f8 01       	movw	r30, r16
    557e:	80 81       	ld	r24, Z
    5580:	81 30       	cpi	r24, 0x01	; 1
    5582:	11 f4       	brne	.+4      	; 0x5588 <tcp_input+0x3d8>
    5584:	82 e0       	ldi	r24, 0x02	; 2
    5586:	17 c0       	rjmp	.+46     	; 0x55b6 <tcp_input+0x406>
    5588:	82 30       	cpi	r24, 0x02	; 2
    558a:	89 f4       	brne	.+34     	; 0x55ae <tcp_input+0x3fe>
    558c:	80 91 7a 04 	lds	r24, 0x047A
    5590:	90 91 7b 04 	lds	r25, 0x047B
    5594:	89 2b       	or	r24, r25
    5596:	c1 f2       	breq	.-80     	; 0x5548 <tcp_input+0x398>
    5598:	80 e1       	ldi	r24, 0x10	; 16
    559a:	b8 01       	movw	r22, r16
    559c:	40 e0       	ldi	r20, 0x00	; 0
    559e:	50 e0       	ldi	r21, 0x00	; 0
    55a0:	0e 94 3b 27 	call	0x4e76	; 0x4e76 <tcp_output>
    55a4:	f8 2e       	mov	r15, r24
    55a6:	c6 01       	movw	r24, r12
    55a8:	0e 94 1d 28 	call	0x503a	; 0x503a <tcp_search>
    55ac:	10 c0       	rjmp	.+32     	; 0x55ce <tcp_input+0x41e>
    55ae:	83 30       	cpi	r24, 0x03	; 3
    55b0:	21 f4       	brne	.+8      	; 0x55ba <tcp_input+0x40a>
    55b2:	86 e0       	ldi	r24, 0x06	; 6
    55b4:	f8 01       	movw	r30, r16
    55b6:	80 83       	st	Z, r24
    55b8:	09 c0       	rjmp	.+18     	; 0x55cc <tcp_input+0x41c>
    55ba:	85 30       	cpi	r24, 0x05	; 5
    55bc:	39 f4       	brne	.+14     	; 0x55cc <tcp_input+0x41c>
    55be:	c6 01       	movw	r24, r12
    55c0:	0e 94 9a 28 	call	0x5134	; 0x5134 <tcp_resetsocket>
    55c4:	03 c0       	rjmp	.+6      	; 0x55cc <tcp_input+0x41c>
    55c6:	68 e0       	ldi	r22, 0x08	; 8
    55c8:	f6 2e       	mov	r15, r22
    55ca:	01 c0       	rjmp	.+2      	; 0x55ce <tcp_input+0x41e>
    55cc:	ff 24       	eor	r15, r15
    55ce:	8f 2d       	mov	r24, r15
    55d0:	a6 96       	adiw	r28, 0x26	; 38
    55d2:	e0 e1       	ldi	r30, 0x10	; 16
    55d4:	0c 94 67 6d 	jmp	0xdace	; 0xdace <__epilogue_restores__+0x4>

000055d8 <udp_output>:
    55d8:	cf 93       	push	r28
    55da:	df 93       	push	r29
    55dc:	08 96       	adiw	r24, 0x08	; 8
    55de:	90 93 65 04 	sts	0x0465, r25
    55e2:	80 93 64 04 	sts	0x0464, r24
    55e6:	82 e2       	ldi	r24, 0x22	; 34
    55e8:	90 e0       	ldi	r25, 0x00	; 0
    55ea:	0e 94 67 1a 	call	0x34ce	; 0x34ce <enc_txseek>
    55ee:	80 91 76 04 	lds	r24, 0x0476
    55f2:	90 91 77 04 	lds	r25, 0x0477
    55f6:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    55fa:	80 91 74 04 	lds	r24, 0x0474
    55fe:	90 91 75 04 	lds	r25, 0x0475
    5602:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    5606:	80 91 64 04 	lds	r24, 0x0464
    560a:	90 91 65 04 	lds	r25, 0x0465
    560e:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    5612:	80 e0       	ldi	r24, 0x00	; 0
    5614:	90 e0       	ldi	r25, 0x00	; 0
    5616:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    561a:	60 91 0b 05 	lds	r22, 0x050B
    561e:	70 91 0c 05 	lds	r23, 0x050C
    5622:	80 91 0d 05 	lds	r24, 0x050D
    5626:	90 91 0e 05 	lds	r25, 0x050E
    562a:	0e 94 3b 41 	call	0x8276	; 0x8276 <cnvendian32>
    562e:	60 93 80 04 	sts	0x0480, r22
    5632:	70 93 81 04 	sts	0x0481, r23
    5636:	80 93 82 04 	sts	0x0482, r24
    563a:	90 93 83 04 	sts	0x0483, r25
    563e:	60 91 6c 04 	lds	r22, 0x046C
    5642:	70 91 6d 04 	lds	r23, 0x046D
    5646:	80 91 6e 04 	lds	r24, 0x046E
    564a:	90 91 6f 04 	lds	r25, 0x046F
    564e:	0e 94 3b 41 	call	0x8276	; 0x8276 <cnvendian32>
    5652:	60 93 84 04 	sts	0x0484, r22
    5656:	70 93 85 04 	sts	0x0485, r23
    565a:	80 93 86 04 	sts	0x0486, r24
    565e:	90 93 87 04 	sts	0x0487, r25
    5662:	10 92 88 04 	sts	0x0488, r1
    5666:	81 e1       	ldi	r24, 0x11	; 17
    5668:	80 93 89 04 	sts	0x0489, r24
    566c:	80 91 64 04 	lds	r24, 0x0464
    5670:	90 91 65 04 	lds	r25, 0x0465
    5674:	0e 94 37 41 	call	0x826e	; 0x826e <cnvendian16>
    5678:	90 93 8b 04 	sts	0x048B, r25
    567c:	80 93 8a 04 	sts	0x048A, r24
    5680:	40 91 64 04 	lds	r20, 0x0464
    5684:	50 91 65 04 	lds	r21, 0x0465
    5688:	81 e0       	ldi	r24, 0x01	; 1
    568a:	62 e2       	ldi	r22, 0x22	; 34
    568c:	70 e0       	ldi	r23, 0x00	; 0
    568e:	0e 94 7e 25 	call	0x4afc	; 0x4afc <tcpudp_sum>
    5692:	ec 01       	movw	r28, r24
    5694:	00 97       	sbiw	r24, 0x00	; 0
    5696:	11 f4       	brne	.+4      	; 0x569c <udp_output+0xc4>
    5698:	cf ef       	ldi	r28, 0xFF	; 255
    569a:	df ef       	ldi	r29, 0xFF	; 255
    569c:	88 e2       	ldi	r24, 0x28	; 40
    569e:	90 e0       	ldi	r25, 0x00	; 0
    56a0:	0e 94 67 1a 	call	0x34ce	; 0x34ce <enc_txseek>
    56a4:	ce 01       	movw	r24, r28
    56a6:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    56aa:	81 e1       	ldi	r24, 0x11	; 17
    56ac:	0e 94 d8 25 	call	0x4bb0	; 0x4bb0 <ip_output>
    56b0:	df 91       	pop	r29
    56b2:	cf 91       	pop	r28
    56b4:	08 95       	ret

000056b6 <udp_input>:
    56b6:	a0 e1       	ldi	r26, 0x10	; 16
    56b8:	b0 e0       	ldi	r27, 0x00	; 0
    56ba:	e1 e6       	ldi	r30, 0x61	; 97
    56bc:	fb e2       	ldi	r31, 0x2B	; 43
    56be:	0c 94 55 6d 	jmp	0xdaaa	; 0xdaaa <__prologue_saves__+0x18>
    56c2:	ce 01       	movw	r24, r28
    56c4:	09 96       	adiw	r24, 0x09	; 9
    56c6:	68 e0       	ldi	r22, 0x08	; 8
    56c8:	70 e0       	ldi	r23, 0x00	; 0
    56ca:	0e 94 7e 19 	call	0x32fc	; 0x32fc <enc_readbuffer>
    56ce:	89 85       	ldd	r24, Y+9	; 0x09
    56d0:	9a 85       	ldd	r25, Y+10	; 0x0a
    56d2:	0e 94 37 41 	call	0x826e	; 0x826e <cnvendian16>
    56d6:	90 93 75 04 	sts	0x0475, r25
    56da:	80 93 74 04 	sts	0x0474, r24
    56de:	8b 85       	ldd	r24, Y+11	; 0x0b
    56e0:	9c 85       	ldd	r25, Y+12	; 0x0c
    56e2:	0e 94 37 41 	call	0x826e	; 0x826e <cnvendian16>
    56e6:	90 93 77 04 	sts	0x0477, r25
    56ea:	80 93 76 04 	sts	0x0476, r24
    56ee:	8d 85       	ldd	r24, Y+13	; 0x0d
    56f0:	9e 85       	ldd	r25, Y+14	; 0x0e
    56f2:	0e 94 37 41 	call	0x826e	; 0x826e <cnvendian16>
    56f6:	8c 01       	movw	r16, r24
    56f8:	08 50       	subi	r16, 0x08	; 8
    56fa:	10 40       	sbci	r17, 0x00	; 0
    56fc:	10 93 7b 04 	sts	0x047B, r17
    5700:	00 93 7a 04 	sts	0x047A, r16
    5704:	08 5f       	subi	r16, 0xF8	; 248
    5706:	1f 4f       	sbci	r17, 0xFF	; 255
    5708:	80 91 19 05 	lds	r24, 0x0519
    570c:	e8 2e       	mov	r14, r24
    570e:	ff 24       	eor	r15, r15
    5710:	8e e0       	ldi	r24, 0x0E	; 14
    5712:	90 e0       	ldi	r25, 0x00	; 0
    5714:	e8 0e       	add	r14, r24
    5716:	f9 1e       	adc	r15, r25
    5718:	8f 85       	ldd	r24, Y+15	; 0x0f
    571a:	98 89       	ldd	r25, Y+16	; 0x10
    571c:	89 2b       	or	r24, r25
    571e:	c1 f1       	breq	.+112    	; 0x5790 <udp_input+0xda>
    5720:	60 91 6c 04 	lds	r22, 0x046C
    5724:	70 91 6d 04 	lds	r23, 0x046D
    5728:	80 91 6e 04 	lds	r24, 0x046E
    572c:	90 91 6f 04 	lds	r25, 0x046F
    5730:	0e 94 3b 41 	call	0x8276	; 0x8276 <cnvendian32>
    5734:	60 93 80 04 	sts	0x0480, r22
    5738:	70 93 81 04 	sts	0x0481, r23
    573c:	80 93 82 04 	sts	0x0482, r24
    5740:	90 93 83 04 	sts	0x0483, r25
    5744:	60 91 70 04 	lds	r22, 0x0470
    5748:	70 91 71 04 	lds	r23, 0x0471
    574c:	80 91 72 04 	lds	r24, 0x0472
    5750:	90 91 73 04 	lds	r25, 0x0473
    5754:	0e 94 3b 41 	call	0x8276	; 0x8276 <cnvendian32>
    5758:	60 93 84 04 	sts	0x0484, r22
    575c:	70 93 85 04 	sts	0x0485, r23
    5760:	80 93 86 04 	sts	0x0486, r24
    5764:	90 93 87 04 	sts	0x0487, r25
    5768:	10 92 88 04 	sts	0x0488, r1
    576c:	81 e1       	ldi	r24, 0x11	; 17
    576e:	80 93 89 04 	sts	0x0489, r24
    5772:	8d 85       	ldd	r24, Y+13	; 0x0d
    5774:	9e 85       	ldd	r25, Y+14	; 0x0e
    5776:	90 93 8b 04 	sts	0x048B, r25
    577a:	80 93 8a 04 	sts	0x048A, r24
    577e:	80 e0       	ldi	r24, 0x00	; 0
    5780:	b7 01       	movw	r22, r14
    5782:	a8 01       	movw	r20, r16
    5784:	0e 94 7e 25 	call	0x4afc	; 0x4afc <tcpudp_sum>
    5788:	89 2b       	or	r24, r25
    578a:	11 f0       	breq	.+4      	; 0x5790 <udp_input+0xda>
    578c:	89 e0       	ldi	r24, 0x09	; 9
    578e:	52 c0       	rjmp	.+164    	; 0x5834 <udp_input+0x17e>
    5790:	c7 01       	movw	r24, r14
    5792:	08 96       	adiw	r24, 0x08	; 8
    5794:	90 93 79 04 	sts	0x0479, r25
    5798:	80 93 78 04 	sts	0x0478, r24
    579c:	20 91 76 04 	lds	r18, 0x0476
    57a0:	30 91 77 04 	lds	r19, 0x0477
    57a4:	2b 37       	cpi	r18, 0x7B	; 123
    57a6:	31 05       	cpc	r19, r1
    57a8:	19 f4       	brne	.+6      	; 0x57b0 <udp_input+0xfa>
    57aa:	0e 94 84 3a 	call	0x7508	; 0x7508 <ntp_input>
    57ae:	42 c0       	rjmp	.+132    	; 0x5834 <udp_input+0x17e>
    57b0:	25 32       	cpi	r18, 0x25	; 37
    57b2:	31 05       	cpc	r19, r1
    57b4:	19 f4       	brne	.+6      	; 0x57bc <udp_input+0x106>
    57b6:	0e 94 76 3e 	call	0x7cec	; 0x7cec <time_input>
    57ba:	3c c0       	rjmp	.+120    	; 0x5834 <udp_input+0x17e>
    57bc:	44 e0       	ldi	r20, 0x04	; 4
    57be:	20 30       	cpi	r18, 0x00	; 0
    57c0:	34 07       	cpc	r19, r20
    57c2:	19 f4       	brne	.+6      	; 0x57ca <udp_input+0x114>
    57c4:	0e 94 e0 31 	call	0x63c0	; 0x63c0 <dns_input>
    57c8:	35 c0       	rjmp	.+106    	; 0x5834 <udp_input+0x17e>
    57ca:	24 34       	cpi	r18, 0x44	; 68
    57cc:	31 05       	cpc	r19, r1
    57ce:	19 f4       	brne	.+6      	; 0x57d6 <udp_input+0x120>
    57d0:	0e 94 86 2f 	call	0x5f0c	; 0x5f0c <dhcp_input>
    57d4:	2f c0       	rjmp	.+94     	; 0x5834 <udp_input+0x17e>
    57d6:	29 38       	cpi	r18, 0x89	; 137
    57d8:	31 05       	cpc	r19, r1
    57da:	19 f4       	brne	.+6      	; 0x57e2 <udp_input+0x12c>
    57dc:	0e 94 26 33 	call	0x664c	; 0x664c <nbns_input>
    57e0:	29 c0       	rjmp	.+82     	; 0x5834 <udp_input+0x17e>
    57e2:	47 e2       	ldi	r20, 0x27	; 39
    57e4:	21 31       	cpi	r18, 0x11	; 17
    57e6:	34 07       	cpc	r19, r20
    57e8:	f1 f4       	brne	.+60     	; 0x5826 <udp_input+0x170>
    57ea:	0e 94 42 1a 	call	0x3484	; 0x3484 <enc_rxseek>
    57ee:	8e 01       	movw	r16, r28
    57f0:	0f 5f       	subi	r16, 0xFF	; 255
    57f2:	1f 4f       	sbci	r17, 0xFF	; 255
    57f4:	c8 01       	movw	r24, r16
    57f6:	67 e0       	ldi	r22, 0x07	; 7
    57f8:	70 e0       	ldi	r23, 0x00	; 0
    57fa:	0e 94 7e 19 	call	0x32fc	; 0x32fc <enc_readbuffer>
    57fe:	c8 01       	movw	r24, r16
    5800:	66 ef       	ldi	r22, 0xF6	; 246
    5802:	70 e0       	ldi	r23, 0x00	; 0
    5804:	47 e0       	ldi	r20, 0x07	; 7
    5806:	50 e0       	ldi	r21, 0x00	; 0
    5808:	0e 94 c9 6d 	call	0xdb92	; 0xdb92 <strncmp_P>
    580c:	89 2b       	or	r24, r25
    580e:	89 f4       	brne	.+34     	; 0x5832 <udp_input+0x17c>
    5810:	8a e2       	ldi	r24, 0x2A	; 42
    5812:	90 e0       	ldi	r25, 0x00	; 0
    5814:	0e 94 67 1a 	call	0x34ce	; 0x34ce <enc_txseek>
    5818:	8d ee       	ldi	r24, 0xED	; 237
    581a:	90 e0       	ldi	r25, 0x00	; 0
    581c:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    5820:	0e 94 ec 2a 	call	0x55d8	; 0x55d8 <udp_output>
    5824:	ff cf       	rjmp	.-2      	; 0x5824 <udp_input+0x16e>
    5826:	20 55       	subi	r18, 0x50	; 80
    5828:	33 4c       	sbci	r19, 0xC3	; 195
    582a:	19 f4       	brne	.+6      	; 0x5832 <udp_input+0x17c>
    582c:	0e 94 81 5b 	call	0xb702	; 0xb702 <udp_command>
    5830:	01 c0       	rjmp	.+2      	; 0x5834 <udp_input+0x17e>
    5832:	80 e0       	ldi	r24, 0x00	; 0
    5834:	60 96       	adiw	r28, 0x10	; 16
    5836:	e6 e0       	ldi	r30, 0x06	; 6
    5838:	0c 94 71 6d 	jmp	0xdae2	; 0xdae2 <__epilogue_restores__+0x18>

0000583c <dhcp_decline>:
    583c:	80 91 0f 08 	lds	r24, 0x080F
    5840:	90 91 10 08 	lds	r25, 0x0810
    5844:	a0 91 11 08 	lds	r26, 0x0811
    5848:	b0 91 12 08 	lds	r27, 0x0812
    584c:	80 93 6c 04 	sts	0x046C, r24
    5850:	90 93 6d 04 	sts	0x046D, r25
    5854:	a0 93 6e 04 	sts	0x046E, r26
    5858:	b0 93 6f 04 	sts	0x046F, r27
    585c:	83 e4       	ldi	r24, 0x43	; 67
    585e:	90 e0       	ldi	r25, 0x00	; 0
    5860:	90 93 75 04 	sts	0x0475, r25
    5864:	80 93 74 04 	sts	0x0474, r24
    5868:	84 e4       	ldi	r24, 0x44	; 68
    586a:	90 e0       	ldi	r25, 0x00	; 0
    586c:	90 93 77 04 	sts	0x0477, r25
    5870:	80 93 76 04 	sts	0x0476, r24
    5874:	8a e2       	ldi	r24, 0x2A	; 42
    5876:	90 e0       	ldi	r25, 0x00	; 0
    5878:	0e 94 67 1a 	call	0x34ce	; 0x34ce <enc_txseek>
    587c:	60 e0       	ldi	r22, 0x00	; 0
    587e:	76 e0       	ldi	r23, 0x06	; 6
    5880:	81 e0       	ldi	r24, 0x01	; 1
    5882:	91 e0       	ldi	r25, 0x01	; 1
    5884:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    5888:	0e 94 b6 40 	call	0x816c	; 0x816c <make_rand>
    588c:	60 93 23 08 	sts	0x0823, r22
    5890:	70 93 24 08 	sts	0x0824, r23
    5894:	80 93 25 08 	sts	0x0825, r24
    5898:	90 93 26 08 	sts	0x0826, r25
    589c:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    58a0:	80 e0       	ldi	r24, 0x00	; 0
    58a2:	90 e0       	ldi	r25, 0x00	; 0
    58a4:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    58a8:	80 e0       	ldi	r24, 0x00	; 0
    58aa:	90 e0       	ldi	r25, 0x00	; 0
    58ac:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    58b0:	60 e0       	ldi	r22, 0x00	; 0
    58b2:	70 e0       	ldi	r23, 0x00	; 0
    58b4:	80 e0       	ldi	r24, 0x00	; 0
    58b6:	90 e0       	ldi	r25, 0x00	; 0
    58b8:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    58bc:	80 e0       	ldi	r24, 0x00	; 0
    58be:	6c e0       	ldi	r22, 0x0C	; 12
    58c0:	70 e0       	ldi	r23, 0x00	; 0
    58c2:	0e 94 e4 19 	call	0x33c8	; 0x33c8 <enc_fillwrite>
    58c6:	8c e8       	ldi	r24, 0x8C	; 140
    58c8:	94 e0       	ldi	r25, 0x04	; 4
    58ca:	66 e0       	ldi	r22, 0x06	; 6
    58cc:	70 e0       	ldi	r23, 0x00	; 0
    58ce:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    58d2:	80 e0       	ldi	r24, 0x00	; 0
    58d4:	6a ec       	ldi	r22, 0xCA	; 202
    58d6:	70 e0       	ldi	r23, 0x00	; 0
    58d8:	0e 94 e4 19 	call	0x33c8	; 0x33c8 <enc_fillwrite>
    58dc:	63 e6       	ldi	r22, 0x63	; 99
    58de:	73 e5       	ldi	r23, 0x53	; 83
    58e0:	82 e8       	ldi	r24, 0x82	; 130
    58e2:	93 e6       	ldi	r25, 0x63	; 99
    58e4:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    58e8:	81 e0       	ldi	r24, 0x01	; 1
    58ea:	95 e3       	ldi	r25, 0x35	; 53
    58ec:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    58f0:	84 e0       	ldi	r24, 0x04	; 4
    58f2:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    58f6:	82 e3       	ldi	r24, 0x32	; 50
    58f8:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    58fc:	84 e0       	ldi	r24, 0x04	; 4
    58fe:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    5902:	60 91 0b 05 	lds	r22, 0x050B
    5906:	70 91 0c 05 	lds	r23, 0x050C
    590a:	80 91 0d 05 	lds	r24, 0x050D
    590e:	90 91 0e 05 	lds	r25, 0x050E
    5912:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    5916:	86 e3       	ldi	r24, 0x36	; 54
    5918:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    591c:	84 e0       	ldi	r24, 0x04	; 4
    591e:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    5922:	60 91 0f 08 	lds	r22, 0x080F
    5926:	70 91 10 08 	lds	r23, 0x0810
    592a:	80 91 11 08 	lds	r24, 0x0811
    592e:	90 91 12 08 	lds	r25, 0x0812
    5932:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    5936:	8f ef       	ldi	r24, 0xFF	; 255
    5938:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    593c:	80 e0       	ldi	r24, 0x00	; 0
    593e:	6c e2       	ldi	r22, 0x2C	; 44
    5940:	70 e0       	ldi	r23, 0x00	; 0
    5942:	0e 94 e4 19 	call	0x33c8	; 0x33c8 <enc_fillwrite>
    5946:	8c e2       	ldi	r24, 0x2C	; 44
    5948:	91 e0       	ldi	r25, 0x01	; 1
    594a:	0e 94 ec 2a 	call	0x55d8	; 0x55d8 <udp_output>
    594e:	08 95       	ret

00005950 <dhcp_discover>:
    5950:	0f 93       	push	r16
    5952:	1f 93       	push	r17
    5954:	81 e0       	ldi	r24, 0x01	; 1
    5956:	80 93 3a 08 	sts	0x083A, r24
    595a:	8f ef       	ldi	r24, 0xFF	; 255
    595c:	9f ef       	ldi	r25, 0xFF	; 255
    595e:	af ef       	ldi	r26, 0xFF	; 255
    5960:	bf ef       	ldi	r27, 0xFF	; 255
    5962:	80 93 6c 04 	sts	0x046C, r24
    5966:	90 93 6d 04 	sts	0x046D, r25
    596a:	a0 93 6e 04 	sts	0x046E, r26
    596e:	b0 93 6f 04 	sts	0x046F, r27
    5972:	83 e4       	ldi	r24, 0x43	; 67
    5974:	90 e0       	ldi	r25, 0x00	; 0
    5976:	90 93 75 04 	sts	0x0475, r25
    597a:	80 93 74 04 	sts	0x0474, r24
    597e:	84 e4       	ldi	r24, 0x44	; 68
    5980:	90 e0       	ldi	r25, 0x00	; 0
    5982:	90 93 77 04 	sts	0x0477, r25
    5986:	80 93 76 04 	sts	0x0476, r24
    598a:	10 92 0f 05 	sts	0x050F, r1
    598e:	10 92 10 05 	sts	0x0510, r1
    5992:	10 92 11 05 	sts	0x0511, r1
    5996:	10 92 12 05 	sts	0x0512, r1
    599a:	10 92 0b 05 	sts	0x050B, r1
    599e:	10 92 0c 05 	sts	0x050C, r1
    59a2:	10 92 0d 05 	sts	0x050D, r1
    59a6:	10 92 0e 05 	sts	0x050E, r1
    59aa:	10 92 c3 09 	sts	0x09C3, r1
    59ae:	10 92 c4 09 	sts	0x09C4, r1
    59b2:	10 92 c5 09 	sts	0x09C5, r1
    59b6:	10 92 c6 09 	sts	0x09C6, r1
    59ba:	10 92 13 05 	sts	0x0513, r1
    59be:	10 92 14 05 	sts	0x0514, r1
    59c2:	10 92 15 05 	sts	0x0515, r1
    59c6:	10 92 16 05 	sts	0x0516, r1
    59ca:	10 92 0b 08 	sts	0x080B, r1
    59ce:	10 92 0c 08 	sts	0x080C, r1
    59d2:	10 92 0d 08 	sts	0x080D, r1
    59d6:	10 92 0e 08 	sts	0x080E, r1
    59da:	10 92 07 08 	sts	0x0807, r1
    59de:	10 92 08 08 	sts	0x0808, r1
    59e2:	10 92 09 08 	sts	0x0809, r1
    59e6:	10 92 0a 08 	sts	0x080A, r1
    59ea:	10 92 13 08 	sts	0x0813, r1
    59ee:	10 92 14 08 	sts	0x0814, r1
    59f2:	10 92 15 08 	sts	0x0815, r1
    59f6:	10 92 16 08 	sts	0x0816, r1
    59fa:	10 92 0f 08 	sts	0x080F, r1
    59fe:	10 92 10 08 	sts	0x0810, r1
    5a02:	10 92 11 08 	sts	0x0811, r1
    5a06:	10 92 12 08 	sts	0x0812, r1
    5a0a:	10 92 1f 08 	sts	0x081F, r1
    5a0e:	10 92 20 08 	sts	0x0820, r1
    5a12:	10 92 21 08 	sts	0x0821, r1
    5a16:	10 92 22 08 	sts	0x0822, r1
    5a1a:	10 92 17 08 	sts	0x0817, r1
    5a1e:	10 92 18 08 	sts	0x0818, r1
    5a22:	10 92 19 08 	sts	0x0819, r1
    5a26:	10 92 1a 08 	sts	0x081A, r1
    5a2a:	10 92 1b 08 	sts	0x081B, r1
    5a2e:	10 92 1c 08 	sts	0x081C, r1
    5a32:	10 92 1d 08 	sts	0x081D, r1
    5a36:	10 92 1e 08 	sts	0x081E, r1
    5a3a:	10 92 2f 08 	sts	0x082F, r1
    5a3e:	10 92 30 08 	sts	0x0830, r1
    5a42:	10 92 31 08 	sts	0x0831, r1
    5a46:	10 92 32 08 	sts	0x0832, r1
    5a4a:	10 92 3d 08 	sts	0x083D, r1
    5a4e:	0e 94 b6 40 	call	0x816c	; 0x816c <make_rand>
    5a52:	60 93 23 08 	sts	0x0823, r22
    5a56:	70 93 24 08 	sts	0x0824, r23
    5a5a:	80 93 25 08 	sts	0x0825, r24
    5a5e:	90 93 26 08 	sts	0x0826, r25
    5a62:	8a e2       	ldi	r24, 0x2A	; 42
    5a64:	90 e0       	ldi	r25, 0x00	; 0
    5a66:	0e 94 67 1a 	call	0x34ce	; 0x34ce <enc_txseek>
    5a6a:	60 e0       	ldi	r22, 0x00	; 0
    5a6c:	76 e0       	ldi	r23, 0x06	; 6
    5a6e:	81 e0       	ldi	r24, 0x01	; 1
    5a70:	91 e0       	ldi	r25, 0x01	; 1
    5a72:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    5a76:	60 91 23 08 	lds	r22, 0x0823
    5a7a:	70 91 24 08 	lds	r23, 0x0824
    5a7e:	80 91 25 08 	lds	r24, 0x0825
    5a82:	90 91 26 08 	lds	r25, 0x0826
    5a86:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    5a8a:	60 e0       	ldi	r22, 0x00	; 0
    5a8c:	70 e8       	ldi	r23, 0x80	; 128
    5a8e:	80 e0       	ldi	r24, 0x00	; 0
    5a90:	90 e0       	ldi	r25, 0x00	; 0
    5a92:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    5a96:	80 e0       	ldi	r24, 0x00	; 0
    5a98:	60 e1       	ldi	r22, 0x10	; 16
    5a9a:	70 e0       	ldi	r23, 0x00	; 0
    5a9c:	0e 94 e4 19 	call	0x33c8	; 0x33c8 <enc_fillwrite>
    5aa0:	0c e8       	ldi	r16, 0x8C	; 140
    5aa2:	14 e0       	ldi	r17, 0x04	; 4
    5aa4:	c8 01       	movw	r24, r16
    5aa6:	66 e0       	ldi	r22, 0x06	; 6
    5aa8:	70 e0       	ldi	r23, 0x00	; 0
    5aaa:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    5aae:	80 e0       	ldi	r24, 0x00	; 0
    5ab0:	6a ec       	ldi	r22, 0xCA	; 202
    5ab2:	70 e0       	ldi	r23, 0x00	; 0
    5ab4:	0e 94 e4 19 	call	0x33c8	; 0x33c8 <enc_fillwrite>
    5ab8:	63 e6       	ldi	r22, 0x63	; 99
    5aba:	73 e5       	ldi	r23, 0x53	; 83
    5abc:	82 e8       	ldi	r24, 0x82	; 130
    5abe:	93 e6       	ldi	r25, 0x63	; 99
    5ac0:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    5ac4:	81 e0       	ldi	r24, 0x01	; 1
    5ac6:	95 e3       	ldi	r25, 0x35	; 53
    5ac8:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    5acc:	81 e0       	ldi	r24, 0x01	; 1
    5ace:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    5ad2:	8d e3       	ldi	r24, 0x3D	; 61
    5ad4:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    5ad8:	87 e0       	ldi	r24, 0x07	; 7
    5ada:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    5ade:	81 e0       	ldi	r24, 0x01	; 1
    5ae0:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    5ae4:	c8 01       	movw	r24, r16
    5ae6:	66 e0       	ldi	r22, 0x06	; 6
    5ae8:	70 e0       	ldi	r23, 0x00	; 0
    5aea:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    5aee:	8f ef       	ldi	r24, 0xFF	; 255
    5af0:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    5af4:	80 e0       	ldi	r24, 0x00	; 0
    5af6:	6f e2       	ldi	r22, 0x2F	; 47
    5af8:	70 e0       	ldi	r23, 0x00	; 0
    5afa:	0e 94 e4 19 	call	0x33c8	; 0x33c8 <enc_fillwrite>
    5afe:	8c e2       	ldi	r24, 0x2C	; 44
    5b00:	91 e0       	ldi	r25, 0x01	; 1
    5b02:	0e 94 ec 2a 	call	0x55d8	; 0x55d8 <udp_output>
    5b06:	1f 91       	pop	r17
    5b08:	0f 91       	pop	r16
    5b0a:	08 95       	ret

00005b0c <dhcp_request>:
    5b0c:	0f 93       	push	r16
    5b0e:	1f 93       	push	r17
    5b10:	18 2f       	mov	r17, r24
    5b12:	80 93 3a 08 	sts	0x083A, r24
    5b16:	88 31       	cpi	r24, 0x18	; 24
    5b18:	29 f0       	breq	.+10     	; 0x5b24 <dhcp_request+0x18>
    5b1a:	8f ef       	ldi	r24, 0xFF	; 255
    5b1c:	9f ef       	ldi	r25, 0xFF	; 255
    5b1e:	af ef       	ldi	r26, 0xFF	; 255
    5b20:	bf ef       	ldi	r27, 0xFF	; 255
    5b22:	08 c0       	rjmp	.+16     	; 0x5b34 <dhcp_request+0x28>
    5b24:	80 91 0f 08 	lds	r24, 0x080F
    5b28:	90 91 10 08 	lds	r25, 0x0810
    5b2c:	a0 91 11 08 	lds	r26, 0x0811
    5b30:	b0 91 12 08 	lds	r27, 0x0812
    5b34:	80 93 6c 04 	sts	0x046C, r24
    5b38:	90 93 6d 04 	sts	0x046D, r25
    5b3c:	a0 93 6e 04 	sts	0x046E, r26
    5b40:	b0 93 6f 04 	sts	0x046F, r27
    5b44:	13 30       	cpi	r17, 0x03	; 3
    5b46:	51 f0       	breq	.+20     	; 0x5b5c <dhcp_request+0x50>
    5b48:	0e 94 b6 40 	call	0x816c	; 0x816c <make_rand>
    5b4c:	60 93 23 08 	sts	0x0823, r22
    5b50:	70 93 24 08 	sts	0x0824, r23
    5b54:	80 93 25 08 	sts	0x0825, r24
    5b58:	90 93 26 08 	sts	0x0826, r25
    5b5c:	e3 eb       	ldi	r30, 0xB3	; 179
    5b5e:	f9 e0       	ldi	r31, 0x09	; 9
    5b60:	01 90       	ld	r0, Z+
    5b62:	00 20       	and	r0, r0
    5b64:	e9 f7       	brne	.-6      	; 0x5b60 <dhcp_request+0x54>
    5b66:	31 97       	sbiw	r30, 0x01	; 1
    5b68:	e3 5b       	subi	r30, 0xB3	; 179
    5b6a:	f9 40       	sbci	r31, 0x09	; 9
    5b6c:	0e 2f       	mov	r16, r30
    5b6e:	0f 5f       	subi	r16, 0xFF	; 255
    5b70:	83 e4       	ldi	r24, 0x43	; 67
    5b72:	90 e0       	ldi	r25, 0x00	; 0
    5b74:	90 93 75 04 	sts	0x0475, r25
    5b78:	80 93 74 04 	sts	0x0474, r24
    5b7c:	84 e4       	ldi	r24, 0x44	; 68
    5b7e:	90 e0       	ldi	r25, 0x00	; 0
    5b80:	90 93 77 04 	sts	0x0477, r25
    5b84:	80 93 76 04 	sts	0x0476, r24
    5b88:	8a e2       	ldi	r24, 0x2A	; 42
    5b8a:	90 e0       	ldi	r25, 0x00	; 0
    5b8c:	0e 94 67 1a 	call	0x34ce	; 0x34ce <enc_txseek>
    5b90:	60 e0       	ldi	r22, 0x00	; 0
    5b92:	76 e0       	ldi	r23, 0x06	; 6
    5b94:	81 e0       	ldi	r24, 0x01	; 1
    5b96:	91 e0       	ldi	r25, 0x01	; 1
    5b98:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    5b9c:	60 91 23 08 	lds	r22, 0x0823
    5ba0:	70 91 24 08 	lds	r23, 0x0824
    5ba4:	80 91 25 08 	lds	r24, 0x0825
    5ba8:	90 91 26 08 	lds	r25, 0x0826
    5bac:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    5bb0:	80 e0       	ldi	r24, 0x00	; 0
    5bb2:	90 e0       	ldi	r25, 0x00	; 0
    5bb4:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    5bb8:	18 31       	cpi	r17, 0x18	; 24
    5bba:	19 f0       	breq	.+6      	; 0x5bc2 <dhcp_request+0xb6>
    5bbc:	80 e0       	ldi	r24, 0x00	; 0
    5bbe:	90 e8       	ldi	r25, 0x80	; 128
    5bc0:	02 c0       	rjmp	.+4      	; 0x5bc6 <dhcp_request+0xba>
    5bc2:	80 e0       	ldi	r24, 0x00	; 0
    5bc4:	90 e0       	ldi	r25, 0x00	; 0
    5bc6:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    5bca:	60 91 0b 05 	lds	r22, 0x050B
    5bce:	70 91 0c 05 	lds	r23, 0x050C
    5bd2:	80 91 0d 05 	lds	r24, 0x050D
    5bd6:	90 91 0e 05 	lds	r25, 0x050E
    5bda:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    5bde:	80 e0       	ldi	r24, 0x00	; 0
    5be0:	6c e0       	ldi	r22, 0x0C	; 12
    5be2:	70 e0       	ldi	r23, 0x00	; 0
    5be4:	0e 94 e4 19 	call	0x33c8	; 0x33c8 <enc_fillwrite>
    5be8:	8c e8       	ldi	r24, 0x8C	; 140
    5bea:	94 e0       	ldi	r25, 0x04	; 4
    5bec:	66 e0       	ldi	r22, 0x06	; 6
    5bee:	70 e0       	ldi	r23, 0x00	; 0
    5bf0:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    5bf4:	80 e0       	ldi	r24, 0x00	; 0
    5bf6:	6a ec       	ldi	r22, 0xCA	; 202
    5bf8:	70 e0       	ldi	r23, 0x00	; 0
    5bfa:	0e 94 e4 19 	call	0x33c8	; 0x33c8 <enc_fillwrite>
    5bfe:	63 e6       	ldi	r22, 0x63	; 99
    5c00:	73 e5       	ldi	r23, 0x53	; 83
    5c02:	82 e8       	ldi	r24, 0x82	; 130
    5c04:	93 e6       	ldi	r25, 0x63	; 99
    5c06:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    5c0a:	81 e0       	ldi	r24, 0x01	; 1
    5c0c:	95 e3       	ldi	r25, 0x35	; 53
    5c0e:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    5c12:	83 e0       	ldi	r24, 0x03	; 3
    5c14:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    5c18:	8c e0       	ldi	r24, 0x0C	; 12
    5c1a:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    5c1e:	80 2f       	mov	r24, r16
    5c20:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    5c24:	83 eb       	ldi	r24, 0xB3	; 179
    5c26:	99 e0       	ldi	r25, 0x09	; 9
    5c28:	60 2f       	mov	r22, r16
    5c2a:	70 e0       	ldi	r23, 0x00	; 0
    5c2c:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    5c30:	13 30       	cpi	r17, 0x03	; 3
    5c32:	19 f5       	brne	.+70     	; 0x5c7a <dhcp_request+0x16e>
    5c34:	82 e3       	ldi	r24, 0x32	; 50
    5c36:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    5c3a:	84 e0       	ldi	r24, 0x04	; 4
    5c3c:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    5c40:	80 91 78 04 	lds	r24, 0x0478
    5c44:	90 91 79 04 	lds	r25, 0x0479
    5c48:	40 96       	adiw	r24, 0x10	; 16
    5c4a:	0e 94 42 1a 	call	0x3484	; 0x3484 <enc_rxseek>
    5c4e:	0e 94 62 19 	call	0x32c4	; 0x32c4 <enc_readbuf4>
    5c52:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    5c56:	86 e3       	ldi	r24, 0x36	; 54
    5c58:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    5c5c:	84 e0       	ldi	r24, 0x04	; 4
    5c5e:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    5c62:	60 91 0f 08 	lds	r22, 0x080F
    5c66:	70 91 10 08 	lds	r23, 0x0810
    5c6a:	80 91 11 08 	lds	r24, 0x0811
    5c6e:	90 91 12 08 	lds	r25, 0x0812
    5c72:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    5c76:	19 e1       	ldi	r17, 0x19	; 25
    5c78:	15 c0       	rjmp	.+42     	; 0x5ca4 <dhcp_request+0x198>
    5c7a:	16 31       	cpi	r17, 0x16	; 22
    5c7c:	11 f0       	breq	.+4      	; 0x5c82 <dhcp_request+0x176>
    5c7e:	11 e2       	ldi	r17, 0x21	; 33
    5c80:	11 c0       	rjmp	.+34     	; 0x5ca4 <dhcp_request+0x198>
    5c82:	82 e3       	ldi	r24, 0x32	; 50
    5c84:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    5c88:	84 e0       	ldi	r24, 0x04	; 4
    5c8a:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    5c8e:	60 91 03 08 	lds	r22, 0x0803
    5c92:	70 91 04 08 	lds	r23, 0x0804
    5c96:	80 91 05 08 	lds	r24, 0x0805
    5c9a:	90 91 06 08 	lds	r25, 0x0806
    5c9e:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    5ca2:	1b e1       	ldi	r17, 0x1B	; 27
    5ca4:	87 e3       	ldi	r24, 0x37	; 55
    5ca6:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    5caa:	88 e0       	ldi	r24, 0x08	; 8
    5cac:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    5cb0:	81 e0       	ldi	r24, 0x01	; 1
    5cb2:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    5cb6:	83 e0       	ldi	r24, 0x03	; 3
    5cb8:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    5cbc:	86 e0       	ldi	r24, 0x06	; 6
    5cbe:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    5cc2:	83 e3       	ldi	r24, 0x33	; 51
    5cc4:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    5cc8:	8a e3       	ldi	r24, 0x3A	; 58
    5cca:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    5cce:	8b e3       	ldi	r24, 0x3B	; 59
    5cd0:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    5cd4:	87 e1       	ldi	r24, 0x17	; 23
    5cd6:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    5cda:	83 e2       	ldi	r24, 0x23	; 35
    5cdc:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    5ce0:	8d e3       	ldi	r24, 0x3D	; 61
    5ce2:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    5ce6:	87 e0       	ldi	r24, 0x07	; 7
    5ce8:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    5cec:	81 e0       	ldi	r24, 0x01	; 1
    5cee:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    5cf2:	8c e8       	ldi	r24, 0x8C	; 140
    5cf4:	94 e0       	ldi	r25, 0x04	; 4
    5cf6:	66 e0       	ldi	r22, 0x06	; 6
    5cf8:	70 e0       	ldi	r23, 0x00	; 0
    5cfa:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    5cfe:	8f ef       	ldi	r24, 0xFF	; 255
    5d00:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    5d04:	10 1b       	sub	r17, r16
    5d06:	80 e0       	ldi	r24, 0x00	; 0
    5d08:	61 2f       	mov	r22, r17
    5d0a:	70 e0       	ldi	r23, 0x00	; 0
    5d0c:	0e 94 e4 19 	call	0x33c8	; 0x33c8 <enc_fillwrite>
    5d10:	8c e2       	ldi	r24, 0x2C	; 44
    5d12:	91 e0       	ldi	r25, 0x01	; 1
    5d14:	0e 94 ec 2a 	call	0x55d8	; 0x55d8 <udp_output>
    5d18:	1f 91       	pop	r17
    5d1a:	0f 91       	pop	r16
    5d1c:	08 95       	ret

00005d1e <dhcp_sequense>:
    5d1e:	ef 92       	push	r14
    5d20:	ff 92       	push	r15
    5d22:	0f 93       	push	r16
    5d24:	1f 93       	push	r17
    5d26:	80 91 3b 08 	lds	r24, 0x083B
    5d2a:	90 91 3c 08 	lds	r25, 0x083C
    5d2e:	89 2b       	or	r24, r25
    5d30:	59 f4       	brne	.+22     	; 0x5d48 <dhcp_sequense+0x2a>
    5d32:	a9 e0       	ldi	r26, 0x09	; 9
    5d34:	b1 e0       	ldi	r27, 0x01	; 1
    5d36:	eb e4       	ldi	r30, 0x4B	; 75
    5d38:	f1 e0       	ldi	r31, 0x01	; 1
    5d3a:	82 e1       	ldi	r24, 0x12	; 18
    5d3c:	01 90       	ld	r0, Z+
    5d3e:	0d 92       	st	X+, r0
    5d40:	81 50       	subi	r24, 0x01	; 1
    5d42:	e1 f7       	brne	.-8      	; 0x5d3c <dhcp_sequense+0x1e>
    5d44:	60 e0       	ldi	r22, 0x00	; 0
    5d46:	dc c0       	rjmp	.+440    	; 0x5f00 <dhcp_sequense+0x1e2>
    5d48:	80 91 3a 08 	lds	r24, 0x083A
    5d4c:	81 30       	cpi	r24, 0x01	; 1
    5d4e:	31 f0       	breq	.+12     	; 0x5d5c <dhcp_sequense+0x3e>
    5d50:	86 31       	cpi	r24, 0x16	; 22
    5d52:	21 f0       	breq	.+8      	; 0x5d5c <dhcp_sequense+0x3e>
    5d54:	88 31       	cpi	r24, 0x18	; 24
    5d56:	11 f0       	breq	.+4      	; 0x5d5c <dhcp_sequense+0x3e>
    5d58:	89 31       	cpi	r24, 0x19	; 25
    5d5a:	d9 f5       	brne	.+118    	; 0x5dd2 <dhcp_sequense+0xb4>
    5d5c:	e0 90 37 08 	lds	r14, 0x0837
    5d60:	f0 90 38 08 	lds	r15, 0x0838
    5d64:	00 e0       	ldi	r16, 0x00	; 0
    5d66:	10 e0       	ldi	r17, 0x00	; 0
    5d68:	89 e0       	ldi	r24, 0x09	; 9
    5d6a:	91 e0       	ldi	r25, 0x01	; 1
    5d6c:	6b e4       	ldi	r22, 0x4B	; 75
    5d6e:	71 e0       	ldi	r23, 0x01	; 1
    5d70:	0e 94 d4 41 	call	0x83a8	; 0x83a8 <calc_timediff>
    5d74:	e6 1a       	sub	r14, r22
    5d76:	f7 0a       	sbc	r15, r23
    5d78:	08 0b       	sbc	r16, r24
    5d7a:	19 0b       	sbc	r17, r25
    5d7c:	e0 92 33 08 	sts	0x0833, r14
    5d80:	f0 92 34 08 	sts	0x0834, r15
    5d84:	00 93 35 08 	sts	0x0835, r16
    5d88:	10 93 36 08 	sts	0x0836, r17
    5d8c:	1e 14       	cp	r1, r14
    5d8e:	1f 04       	cpc	r1, r15
    5d90:	10 06       	cpc	r1, r16
    5d92:	11 06       	cpc	r1, r17
    5d94:	f4 f0       	brlt	.+60     	; 0x5dd2 <dhcp_sequense+0xb4>
    5d96:	80 91 3a 08 	lds	r24, 0x083A
    5d9a:	81 30       	cpi	r24, 0x01	; 1
    5d9c:	49 f0       	breq	.+18     	; 0x5db0 <dhcp_sequense+0x92>
    5d9e:	86 31       	cpi	r24, 0x16	; 22
    5da0:	59 f4       	brne	.+22     	; 0x5db8 <dhcp_sequense+0x9a>
    5da2:	80 91 3d 08 	lds	r24, 0x083D
    5da6:	8f 5f       	subi	r24, 0xFF	; 255
    5da8:	80 93 3d 08 	sts	0x083D, r24
    5dac:	83 30       	cpi	r24, 0x03	; 3
    5dae:	18 f0       	brcs	.+6      	; 0x5db6 <dhcp_sequense+0x98>
    5db0:	0e 94 a8 2c 	call	0x5950	; 0x5950 <dhcp_discover>
    5db4:	03 c0       	rjmp	.+6      	; 0x5dbc <dhcp_sequense+0x9e>
    5db6:	86 e1       	ldi	r24, 0x16	; 22
    5db8:	0e 94 86 2d 	call	0x5b0c	; 0x5b0c <dhcp_request>
    5dbc:	68 2f       	mov	r22, r24
    5dbe:	a9 e0       	ldi	r26, 0x09	; 9
    5dc0:	b1 e0       	ldi	r27, 0x01	; 1
    5dc2:	eb e4       	ldi	r30, 0x4B	; 75
    5dc4:	f1 e0       	ldi	r31, 0x01	; 1
    5dc6:	82 e1       	ldi	r24, 0x12	; 18
    5dc8:	01 90       	ld	r0, Z+
    5dca:	0d 92       	st	X+, r0
    5dcc:	81 50       	subi	r24, 0x01	; 1
    5dce:	e1 f7       	brne	.-8      	; 0x5dc8 <dhcp_sequense+0xaa>
    5dd0:	01 c0       	rjmp	.+2      	; 0x5dd4 <dhcp_sequense+0xb6>
    5dd2:	60 e0       	ldi	r22, 0x00	; 0
    5dd4:	e0 90 2f 08 	lds	r14, 0x082F
    5dd8:	f0 90 30 08 	lds	r15, 0x0830
    5ddc:	00 91 31 08 	lds	r16, 0x0831
    5de0:	10 91 32 08 	lds	r17, 0x0832
    5de4:	d8 01       	movw	r26, r16
    5de6:	c7 01       	movw	r24, r14
    5de8:	01 96       	adiw	r24, 0x01	; 1
    5dea:	a1 1d       	adc	r26, r1
    5dec:	b1 1d       	adc	r27, r1
    5dee:	02 97       	sbiw	r24, 0x02	; 2
    5df0:	a1 05       	cpc	r26, r1
    5df2:	b1 05       	cpc	r27, r1
    5df4:	08 f4       	brcc	.+2      	; 0x5df8 <dhcp_sequense+0xda>
    5df6:	84 c0       	rjmp	.+264    	; 0x5f00 <dhcp_sequense+0x1e2>
    5df8:	80 91 27 08 	lds	r24, 0x0827
    5dfc:	90 91 28 08 	lds	r25, 0x0828
    5e00:	a0 91 29 08 	lds	r26, 0x0829
    5e04:	b0 91 2a 08 	lds	r27, 0x082A
    5e08:	20 91 2b 08 	lds	r18, 0x082B
    5e0c:	30 91 2c 08 	lds	r19, 0x082C
    5e10:	40 91 2d 08 	lds	r20, 0x082D
    5e14:	50 91 2e 08 	lds	r21, 0x082E
    5e18:	00 97       	sbiw	r24, 0x00	; 0
    5e1a:	a1 05       	cpc	r26, r1
    5e1c:	b1 05       	cpc	r27, r1
    5e1e:	91 f1       	breq	.+100    	; 0x5e84 <dhcp_sequense+0x166>
    5e20:	01 97       	sbiw	r24, 0x01	; 1
    5e22:	a1 09       	sbc	r26, r1
    5e24:	b1 09       	sbc	r27, r1
    5e26:	80 93 27 08 	sts	0x0827, r24
    5e2a:	90 93 28 08 	sts	0x0828, r25
    5e2e:	a0 93 29 08 	sts	0x0829, r26
    5e32:	b0 93 2a 08 	sts	0x082A, r27
    5e36:	21 50       	subi	r18, 0x01	; 1
    5e38:	30 40       	sbci	r19, 0x00	; 0
    5e3a:	40 40       	sbci	r20, 0x00	; 0
    5e3c:	50 40       	sbci	r21, 0x00	; 0
    5e3e:	20 93 2b 08 	sts	0x082B, r18
    5e42:	30 93 2c 08 	sts	0x082C, r19
    5e46:	40 93 2d 08 	sts	0x082D, r20
    5e4a:	50 93 2e 08 	sts	0x082E, r21
    5e4e:	08 94       	sec
    5e50:	e1 08       	sbc	r14, r1
    5e52:	f1 08       	sbc	r15, r1
    5e54:	01 09       	sbc	r16, r1
    5e56:	11 09       	sbc	r17, r1
    5e58:	e0 92 2f 08 	sts	0x082F, r14
    5e5c:	f0 92 30 08 	sts	0x0830, r15
    5e60:	00 93 31 08 	sts	0x0831, r16
    5e64:	10 93 32 08 	sts	0x0832, r17
    5e68:	00 97       	sbiw	r24, 0x00	; 0
    5e6a:	a1 05       	cpc	r26, r1
    5e6c:	b1 05       	cpc	r27, r1
    5e6e:	09 f0       	breq	.+2      	; 0x5e72 <dhcp_sequense+0x154>
    5e70:	47 c0       	rjmp	.+142    	; 0x5f00 <dhcp_sequense+0x1e2>
    5e72:	88 e1       	ldi	r24, 0x18	; 24
    5e74:	0e 94 86 2d 	call	0x5b0c	; 0x5b0c <dhcp_request>
    5e78:	68 2f       	mov	r22, r24
    5e7a:	88 23       	and	r24, r24
    5e7c:	09 f0       	breq	.+2      	; 0x5e80 <dhcp_sequense+0x162>
    5e7e:	40 c0       	rjmp	.+128    	; 0x5f00 <dhcp_sequense+0x1e2>
    5e80:	6c e0       	ldi	r22, 0x0C	; 12
    5e82:	3e c0       	rjmp	.+124    	; 0x5f00 <dhcp_sequense+0x1e2>
    5e84:	08 94       	sec
    5e86:	e1 08       	sbc	r14, r1
    5e88:	f1 08       	sbc	r15, r1
    5e8a:	01 09       	sbc	r16, r1
    5e8c:	11 09       	sbc	r17, r1
    5e8e:	21 15       	cp	r18, r1
    5e90:	31 05       	cpc	r19, r1
    5e92:	41 05       	cpc	r20, r1
    5e94:	51 05       	cpc	r21, r1
    5e96:	09 f1       	breq	.+66     	; 0x5eda <dhcp_sequense+0x1bc>
    5e98:	da 01       	movw	r26, r20
    5e9a:	c9 01       	movw	r24, r18
    5e9c:	01 97       	sbiw	r24, 0x01	; 1
    5e9e:	a1 09       	sbc	r26, r1
    5ea0:	b1 09       	sbc	r27, r1
    5ea2:	80 93 2b 08 	sts	0x082B, r24
    5ea6:	90 93 2c 08 	sts	0x082C, r25
    5eaa:	a0 93 2d 08 	sts	0x082D, r26
    5eae:	b0 93 2e 08 	sts	0x082E, r27
    5eb2:	e0 92 2f 08 	sts	0x082F, r14
    5eb6:	f0 92 30 08 	sts	0x0830, r15
    5eba:	00 93 31 08 	sts	0x0831, r16
    5ebe:	10 93 32 08 	sts	0x0832, r17
    5ec2:	00 97       	sbiw	r24, 0x00	; 0
    5ec4:	a1 05       	cpc	r26, r1
    5ec6:	b1 05       	cpc	r27, r1
    5ec8:	d9 f4       	brne	.+54     	; 0x5f00 <dhcp_sequense+0x1e2>
    5eca:	89 e1       	ldi	r24, 0x19	; 25
    5ecc:	0e 94 86 2d 	call	0x5b0c	; 0x5b0c <dhcp_request>
    5ed0:	68 2f       	mov	r22, r24
    5ed2:	88 23       	and	r24, r24
    5ed4:	a9 f4       	brne	.+42     	; 0x5f00 <dhcp_sequense+0x1e2>
    5ed6:	6d e0       	ldi	r22, 0x0D	; 13
    5ed8:	13 c0       	rjmp	.+38     	; 0x5f00 <dhcp_sequense+0x1e2>
    5eda:	e0 92 2f 08 	sts	0x082F, r14
    5ede:	f0 92 30 08 	sts	0x0830, r15
    5ee2:	00 93 31 08 	sts	0x0831, r16
    5ee6:	10 93 32 08 	sts	0x0832, r17
    5eea:	e1 14       	cp	r14, r1
    5eec:	f1 04       	cpc	r15, r1
    5eee:	01 05       	cpc	r16, r1
    5ef0:	11 05       	cpc	r17, r1
    5ef2:	31 f4       	brne	.+12     	; 0x5f00 <dhcp_sequense+0x1e2>
    5ef4:	0e 94 a8 2c 	call	0x5950	; 0x5950 <dhcp_discover>
    5ef8:	68 2f       	mov	r22, r24
    5efa:	88 23       	and	r24, r24
    5efc:	09 f4       	brne	.+2      	; 0x5f00 <dhcp_sequense+0x1e2>
    5efe:	6e e0       	ldi	r22, 0x0E	; 14
    5f00:	86 2f       	mov	r24, r22
    5f02:	1f 91       	pop	r17
    5f04:	0f 91       	pop	r16
    5f06:	ff 90       	pop	r15
    5f08:	ef 90       	pop	r14
    5f0a:	08 95       	ret

00005f0c <dhcp_input>:
    5f0c:	ac e1       	ldi	r26, 0x1C	; 28
    5f0e:	b0 e0       	ldi	r27, 0x00	; 0
    5f10:	ec e8       	ldi	r30, 0x8C	; 140
    5f12:	ff e2       	ldi	r31, 0x2F	; 47
    5f14:	0c 94 55 6d 	jmp	0xdaaa	; 0xdaaa <__prologue_saves__+0x18>
    5f18:	80 91 3a 08 	lds	r24, 0x083A
    5f1c:	88 23       	and	r24, r24
    5f1e:	09 f4       	brne	.+2      	; 0x5f22 <dhcp_input+0x16>
    5f20:	02 c2       	rjmp	.+1028   	; 0x6326 <dhcp_input+0x41a>
    5f22:	87 31       	cpi	r24, 0x17	; 23
    5f24:	09 f4       	brne	.+2      	; 0x5f28 <dhcp_input+0x1c>
    5f26:	ff c1       	rjmp	.+1022   	; 0x6326 <dhcp_input+0x41a>
    5f28:	80 91 78 04 	lds	r24, 0x0478
    5f2c:	90 91 79 04 	lds	r25, 0x0479
    5f30:	80 51       	subi	r24, 0x10	; 16
    5f32:	9f 4f       	sbci	r25, 0xFF	; 255
    5f34:	0e 94 42 1a 	call	0x3484	; 0x3484 <enc_rxseek>
    5f38:	0e 94 43 19 	call	0x3286	; 0x3286 <enc_readbuf>
    5f3c:	18 2f       	mov	r17, r24
    5f3e:	8f 3f       	cpi	r24, 0xFF	; 255
    5f40:	09 f4       	brne	.+2      	; 0x5f44 <dhcp_input+0x38>
    5f42:	df c0       	rjmp	.+446    	; 0x6102 <dhcp_input+0x1f6>
    5f44:	0e 94 43 19 	call	0x3286	; 0x3286 <enc_readbuf>
    5f48:	08 2f       	mov	r16, r24
    5f4a:	15 33       	cpi	r17, 0x35	; 53
    5f4c:	41 f4       	brne	.+16     	; 0x5f5e <dhcp_input+0x52>
    5f4e:	81 30       	cpi	r24, 0x01	; 1
    5f50:	09 f0       	breq	.+2      	; 0x5f54 <dhcp_input+0x48>
    5f52:	f0 c1       	rjmp	.+992    	; 0x6334 <dhcp_input+0x428>
    5f54:	0e 94 43 19 	call	0x3286	; 0x3286 <enc_readbuf>
    5f58:	80 93 39 08 	sts	0x0839, r24
    5f5c:	ed cf       	rjmp	.-38     	; 0x5f38 <dhcp_input+0x2c>
    5f5e:	11 30       	cpi	r17, 0x01	; 1
    5f60:	71 f4       	brne	.+28     	; 0x5f7e <dhcp_input+0x72>
    5f62:	84 30       	cpi	r24, 0x04	; 4
    5f64:	09 f0       	breq	.+2      	; 0x5f68 <dhcp_input+0x5c>
    5f66:	e6 c1       	rjmp	.+972    	; 0x6334 <dhcp_input+0x428>
    5f68:	0e 94 62 19 	call	0x32c4	; 0x32c4 <enc_readbuf4>
    5f6c:	60 93 07 08 	sts	0x0807, r22
    5f70:	70 93 08 08 	sts	0x0808, r23
    5f74:	80 93 09 08 	sts	0x0809, r24
    5f78:	90 93 0a 08 	sts	0x080A, r25
    5f7c:	dd cf       	rjmp	.-70     	; 0x5f38 <dhcp_input+0x2c>
    5f7e:	13 30       	cpi	r17, 0x03	; 3
    5f80:	71 f4       	brne	.+28     	; 0x5f9e <dhcp_input+0x92>
    5f82:	84 30       	cpi	r24, 0x04	; 4
    5f84:	08 f4       	brcc	.+2      	; 0x5f88 <dhcp_input+0x7c>
    5f86:	d6 c1       	rjmp	.+940    	; 0x6334 <dhcp_input+0x428>
    5f88:	0e 94 62 19 	call	0x32c4	; 0x32c4 <enc_readbuf4>
    5f8c:	60 93 0b 08 	sts	0x080B, r22
    5f90:	70 93 0c 08 	sts	0x080C, r23
    5f94:	80 93 0d 08 	sts	0x080D, r24
    5f98:	90 93 0e 08 	sts	0x080E, r25
    5f9c:	1f c0       	rjmp	.+62     	; 0x5fdc <dhcp_input+0xd0>
    5f9e:	16 33       	cpi	r17, 0x36	; 54
    5fa0:	71 f4       	brne	.+28     	; 0x5fbe <dhcp_input+0xb2>
    5fa2:	84 30       	cpi	r24, 0x04	; 4
    5fa4:	08 f4       	brcc	.+2      	; 0x5fa8 <dhcp_input+0x9c>
    5fa6:	c6 c1       	rjmp	.+908    	; 0x6334 <dhcp_input+0x428>
    5fa8:	0e 94 62 19 	call	0x32c4	; 0x32c4 <enc_readbuf4>
    5fac:	60 93 0f 08 	sts	0x080F, r22
    5fb0:	70 93 10 08 	sts	0x0810, r23
    5fb4:	80 93 11 08 	sts	0x0811, r24
    5fb8:	90 93 12 08 	sts	0x0812, r25
    5fbc:	0f c0       	rjmp	.+30     	; 0x5fdc <dhcp_input+0xd0>
    5fbe:	16 30       	cpi	r17, 0x06	; 6
    5fc0:	a1 f4       	brne	.+40     	; 0x5fea <dhcp_input+0xde>
    5fc2:	84 30       	cpi	r24, 0x04	; 4
    5fc4:	08 f4       	brcc	.+2      	; 0x5fc8 <dhcp_input+0xbc>
    5fc6:	b6 c1       	rjmp	.+876    	; 0x6334 <dhcp_input+0x428>
    5fc8:	0e 94 62 19 	call	0x32c4	; 0x32c4 <enc_readbuf4>
    5fcc:	60 93 13 08 	sts	0x0813, r22
    5fd0:	70 93 14 08 	sts	0x0814, r23
    5fd4:	80 93 15 08 	sts	0x0815, r24
    5fd8:	90 93 16 08 	sts	0x0816, r25
    5fdc:	04 30       	cpi	r16, 0x04	; 4
    5fde:	09 f4       	brne	.+2      	; 0x5fe2 <dhcp_input+0xd6>
    5fe0:	ab cf       	rjmp	.-170    	; 0x5f38 <dhcp_input+0x2c>
    5fe2:	80 2f       	mov	r24, r16
    5fe4:	90 e0       	ldi	r25, 0x00	; 0
    5fe6:	04 97       	sbiw	r24, 0x04	; 4
    5fe8:	89 c0       	rjmp	.+274    	; 0x60fc <dhcp_input+0x1f0>
    5fea:	13 33       	cpi	r17, 0x33	; 51
    5fec:	09 f0       	breq	.+2      	; 0x5ff0 <dhcp_input+0xe4>
    5fee:	4b c0       	rjmp	.+150    	; 0x6086 <dhcp_input+0x17a>
    5ff0:	84 30       	cpi	r24, 0x04	; 4
    5ff2:	09 f0       	breq	.+2      	; 0x5ff6 <dhcp_input+0xea>
    5ff4:	a1 cf       	rjmp	.-190    	; 0x5f38 <dhcp_input+0x2c>
    5ff6:	0e 94 62 19 	call	0x32c4	; 0x32c4 <enc_readbuf4>
    5ffa:	7b 01       	movw	r14, r22
    5ffc:	8c 01       	movw	r16, r24
    5ffe:	60 93 1f 08 	sts	0x081F, r22
    6002:	70 93 20 08 	sts	0x0820, r23
    6006:	80 93 21 08 	sts	0x0821, r24
    600a:	90 93 22 08 	sts	0x0822, r25
    600e:	80 91 1b 08 	lds	r24, 0x081B
    6012:	90 91 1c 08 	lds	r25, 0x081C
    6016:	a0 91 1d 08 	lds	r26, 0x081D
    601a:	b0 91 1e 08 	lds	r27, 0x081E
    601e:	00 97       	sbiw	r24, 0x00	; 0
    6020:	a1 05       	cpc	r26, r1
    6022:	b1 05       	cpc	r27, r1
    6024:	b1 f4       	brne	.+44     	; 0x6052 <dhcp_input+0x146>
    6026:	c8 01       	movw	r24, r16
    6028:	b7 01       	movw	r22, r14
    602a:	2b e6       	ldi	r18, 0x6B	; 107
    602c:	33 e0       	ldi	r19, 0x03	; 3
    602e:	40 e0       	ldi	r20, 0x00	; 0
    6030:	50 e0       	ldi	r21, 0x00	; 0
    6032:	0e 94 cd 6c 	call	0xd99a	; 0xd99a <__mulsi3>
    6036:	28 ee       	ldi	r18, 0xE8	; 232
    6038:	33 e0       	ldi	r19, 0x03	; 3
    603a:	40 e0       	ldi	r20, 0x00	; 0
    603c:	50 e0       	ldi	r21, 0x00	; 0
    603e:	0e 94 0c 6d 	call	0xda18	; 0xda18 <__udivmodsi4>
    6042:	20 93 1b 08 	sts	0x081B, r18
    6046:	30 93 1c 08 	sts	0x081C, r19
    604a:	40 93 1d 08 	sts	0x081D, r20
    604e:	50 93 1e 08 	sts	0x081E, r21
    6052:	80 91 17 08 	lds	r24, 0x0817
    6056:	90 91 18 08 	lds	r25, 0x0818
    605a:	a0 91 19 08 	lds	r26, 0x0819
    605e:	b0 91 1a 08 	lds	r27, 0x081A
    6062:	00 97       	sbiw	r24, 0x00	; 0
    6064:	a1 05       	cpc	r26, r1
    6066:	b1 05       	cpc	r27, r1
    6068:	09 f0       	breq	.+2      	; 0x606c <dhcp_input+0x160>
    606a:	66 cf       	rjmp	.-308    	; 0x5f38 <dhcp_input+0x2c>
    606c:	16 95       	lsr	r17
    606e:	07 95       	ror	r16
    6070:	f7 94       	ror	r15
    6072:	e7 94       	ror	r14
    6074:	e0 92 17 08 	sts	0x0817, r14
    6078:	f0 92 18 08 	sts	0x0818, r15
    607c:	00 93 19 08 	sts	0x0819, r16
    6080:	10 93 1a 08 	sts	0x081A, r17
    6084:	59 cf       	rjmp	.-334    	; 0x5f38 <dhcp_input+0x2c>
    6086:	1a 33       	cpi	r17, 0x3A	; 58
    6088:	71 f4       	brne	.+28     	; 0x60a6 <dhcp_input+0x19a>
    608a:	84 30       	cpi	r24, 0x04	; 4
    608c:	09 f0       	breq	.+2      	; 0x6090 <dhcp_input+0x184>
    608e:	52 c1       	rjmp	.+676    	; 0x6334 <dhcp_input+0x428>
    6090:	0e 94 62 19 	call	0x32c4	; 0x32c4 <enc_readbuf4>
    6094:	60 93 17 08 	sts	0x0817, r22
    6098:	70 93 18 08 	sts	0x0818, r23
    609c:	80 93 19 08 	sts	0x0819, r24
    60a0:	90 93 1a 08 	sts	0x081A, r25
    60a4:	49 cf       	rjmp	.-366    	; 0x5f38 <dhcp_input+0x2c>
    60a6:	1b 33       	cpi	r17, 0x3B	; 59
    60a8:	71 f4       	brne	.+28     	; 0x60c6 <dhcp_input+0x1ba>
    60aa:	84 30       	cpi	r24, 0x04	; 4
    60ac:	09 f0       	breq	.+2      	; 0x60b0 <dhcp_input+0x1a4>
    60ae:	42 c1       	rjmp	.+644    	; 0x6334 <dhcp_input+0x428>
    60b0:	0e 94 62 19 	call	0x32c4	; 0x32c4 <enc_readbuf4>
    60b4:	60 93 1b 08 	sts	0x081B, r22
    60b8:	70 93 1c 08 	sts	0x081C, r23
    60bc:	80 93 1d 08 	sts	0x081D, r24
    60c0:	90 93 1e 08 	sts	0x081E, r25
    60c4:	39 cf       	rjmp	.-398    	; 0x5f38 <dhcp_input+0x2c>
    60c6:	17 31       	cpi	r17, 0x17	; 23
    60c8:	39 f4       	brne	.+14     	; 0x60d8 <dhcp_input+0x1cc>
    60ca:	81 30       	cpi	r24, 0x01	; 1
    60cc:	a9 f4       	brne	.+42     	; 0x60f8 <dhcp_input+0x1ec>
    60ce:	0e 94 43 19 	call	0x3286	; 0x3286 <enc_readbuf>
    60d2:	80 93 06 01 	sts	0x0106, r24
    60d6:	30 cf       	rjmp	.-416    	; 0x5f38 <dhcp_input+0x2c>
    60d8:	13 32       	cpi	r17, 0x23	; 35
    60da:	71 f4       	brne	.+28     	; 0x60f8 <dhcp_input+0x1ec>
    60dc:	84 30       	cpi	r24, 0x04	; 4
    60de:	09 f0       	breq	.+2      	; 0x60e2 <dhcp_input+0x1d6>
    60e0:	29 c1       	rjmp	.+594    	; 0x6334 <dhcp_input+0x428>
    60e2:	0e 94 62 19 	call	0x32c4	; 0x32c4 <enc_readbuf4>
    60e6:	60 93 00 01 	sts	0x0100, r22
    60ea:	70 93 01 01 	sts	0x0101, r23
    60ee:	80 93 02 01 	sts	0x0102, r24
    60f2:	90 93 03 01 	sts	0x0103, r25
    60f6:	20 cf       	rjmp	.-448    	; 0x5f38 <dhcp_input+0x2c>
    60f8:	80 2f       	mov	r24, r16
    60fa:	90 e0       	ldi	r25, 0x00	; 0
    60fc:	0e 94 86 1c 	call	0x390c	; 0x390c <enc_skip>
    6100:	1b cf       	rjmp	.-458    	; 0x5f38 <dhcp_input+0x2c>
    6102:	80 91 78 04 	lds	r24, 0x0478
    6106:	90 91 79 04 	lds	r25, 0x0479
    610a:	04 96       	adiw	r24, 0x04	; 4
    610c:	0e 94 42 1a 	call	0x3484	; 0x3484 <enc_rxseek>
    6110:	80 91 3a 08 	lds	r24, 0x083A
    6114:	90 91 39 08 	lds	r25, 0x0839
    6118:	81 30       	cpi	r24, 0x01	; 1
    611a:	b9 f4       	brne	.+46     	; 0x614a <dhcp_input+0x23e>
    611c:	92 30       	cpi	r25, 0x02	; 2
    611e:	09 f0       	breq	.+2      	; 0x6122 <dhcp_input+0x216>
    6120:	04 c1       	rjmp	.+520    	; 0x632a <dhcp_input+0x41e>
    6122:	0e 94 62 19 	call	0x32c4	; 0x32c4 <enc_readbuf4>
    6126:	20 91 23 08 	lds	r18, 0x0823
    612a:	30 91 24 08 	lds	r19, 0x0824
    612e:	40 91 25 08 	lds	r20, 0x0825
    6132:	50 91 26 08 	lds	r21, 0x0826
    6136:	62 17       	cp	r22, r18
    6138:	73 07       	cpc	r23, r19
    613a:	84 07       	cpc	r24, r20
    613c:	95 07       	cpc	r25, r21
    613e:	09 f0       	breq	.+2      	; 0x6142 <dhcp_input+0x236>
    6140:	f4 c0       	rjmp	.+488    	; 0x632a <dhcp_input+0x41e>
    6142:	83 e0       	ldi	r24, 0x03	; 3
    6144:	0e 94 86 2d 	call	0x5b0c	; 0x5b0c <dhcp_request>
    6148:	f1 c0       	rjmp	.+482    	; 0x632c <dhcp_input+0x420>
    614a:	95 30       	cpi	r25, 0x05	; 5
    614c:	09 f0       	breq	.+2      	; 0x6150 <dhcp_input+0x244>
    614e:	d9 c0       	rjmp	.+434    	; 0x6302 <dhcp_input+0x3f6>
    6150:	0e 94 62 19 	call	0x32c4	; 0x32c4 <enc_readbuf4>
    6154:	20 91 23 08 	lds	r18, 0x0823
    6158:	30 91 24 08 	lds	r19, 0x0824
    615c:	40 91 25 08 	lds	r20, 0x0825
    6160:	50 91 26 08 	lds	r21, 0x0826
    6164:	62 17       	cp	r22, r18
    6166:	73 07       	cpc	r23, r19
    6168:	84 07       	cpc	r24, r20
    616a:	95 07       	cpc	r25, r21
    616c:	09 f0       	breq	.+2      	; 0x6170 <dhcp_input+0x264>
    616e:	dd c0       	rjmp	.+442    	; 0x632a <dhcp_input+0x41e>
    6170:	87 e1       	ldi	r24, 0x17	; 23
    6172:	80 93 3a 08 	sts	0x083A, r24
    6176:	80 91 78 04 	lds	r24, 0x0478
    617a:	90 91 79 04 	lds	r25, 0x0479
    617e:	40 96       	adiw	r24, 0x10	; 16
    6180:	0e 94 42 1a 	call	0x3484	; 0x3484 <enc_rxseek>
    6184:	0e 94 62 19 	call	0x32c4	; 0x32c4 <enc_readbuf4>
    6188:	ab 01       	movw	r20, r22
    618a:	bc 01       	movw	r22, r24
    618c:	40 93 0b 05 	sts	0x050B, r20
    6190:	50 93 0c 05 	sts	0x050C, r21
    6194:	60 93 0d 05 	sts	0x050D, r22
    6198:	70 93 0e 05 	sts	0x050E, r23
    619c:	88 e0       	ldi	r24, 0x08	; 8
    619e:	90 e0       	ldi	r25, 0x00	; 0
    61a0:	0e 94 94 6e 	call	0xdd28	; 0xdd28 <__eeupd_dword_m644a>
    61a4:	80 91 07 08 	lds	r24, 0x0807
    61a8:	90 91 08 08 	lds	r25, 0x0808
    61ac:	a0 91 09 08 	lds	r26, 0x0809
    61b0:	b0 91 0a 08 	lds	r27, 0x080A
    61b4:	80 93 0f 05 	sts	0x050F, r24
    61b8:	90 93 10 05 	sts	0x0510, r25
    61bc:	a0 93 11 05 	sts	0x0511, r26
    61c0:	b0 93 12 05 	sts	0x0512, r27
    61c4:	80 91 0b 08 	lds	r24, 0x080B
    61c8:	90 91 0c 08 	lds	r25, 0x080C
    61cc:	a0 91 0d 08 	lds	r26, 0x080D
    61d0:	b0 91 0e 08 	lds	r27, 0x080E
    61d4:	80 93 13 05 	sts	0x0513, r24
    61d8:	90 93 14 05 	sts	0x0514, r25
    61dc:	a0 93 15 05 	sts	0x0515, r26
    61e0:	b0 93 16 05 	sts	0x0516, r27
    61e4:	80 91 13 08 	lds	r24, 0x0813
    61e8:	90 91 14 08 	lds	r25, 0x0814
    61ec:	a0 91 15 08 	lds	r26, 0x0815
    61f0:	b0 91 16 08 	lds	r27, 0x0816
    61f4:	80 93 c3 09 	sts	0x09C3, r24
    61f8:	90 93 c4 09 	sts	0x09C4, r25
    61fc:	a0 93 c5 09 	sts	0x09C5, r26
    6200:	b0 93 c6 09 	sts	0x09C6, r27
    6204:	80 91 17 08 	lds	r24, 0x0817
    6208:	90 91 18 08 	lds	r25, 0x0818
    620c:	a0 91 19 08 	lds	r26, 0x0819
    6210:	b0 91 1a 08 	lds	r27, 0x081A
    6214:	80 93 27 08 	sts	0x0827, r24
    6218:	90 93 28 08 	sts	0x0828, r25
    621c:	a0 93 29 08 	sts	0x0829, r26
    6220:	b0 93 2a 08 	sts	0x082A, r27
    6224:	80 91 1b 08 	lds	r24, 0x081B
    6228:	90 91 1c 08 	lds	r25, 0x081C
    622c:	a0 91 1d 08 	lds	r26, 0x081D
    6230:	b0 91 1e 08 	lds	r27, 0x081E
    6234:	80 93 2b 08 	sts	0x082B, r24
    6238:	90 93 2c 08 	sts	0x082C, r25
    623c:	a0 93 2d 08 	sts	0x082D, r26
    6240:	b0 93 2e 08 	sts	0x082E, r27
    6244:	80 91 1f 08 	lds	r24, 0x081F
    6248:	90 91 20 08 	lds	r25, 0x0820
    624c:	a0 91 21 08 	lds	r26, 0x0821
    6250:	b0 91 22 08 	lds	r27, 0x0822
    6254:	80 93 2f 08 	sts	0x082F, r24
    6258:	90 93 30 08 	sts	0x0830, r25
    625c:	a0 93 31 08 	sts	0x0831, r26
    6260:	b0 93 32 08 	sts	0x0832, r27
    6264:	8f 5f       	subi	r24, 0xFF	; 255
    6266:	9f 4f       	sbci	r25, 0xFF	; 255
    6268:	af 4f       	sbci	r26, 0xFF	; 255
    626a:	bf 4f       	sbci	r27, 0xFF	; 255
    626c:	21 f4       	brne	.+8      	; 0x6276 <dhcp_input+0x36a>
    626e:	10 92 3c 08 	sts	0x083C, r1
    6272:	10 92 3b 08 	sts	0x083B, r1
    6276:	de 01       	movw	r26, r28
    6278:	11 96       	adiw	r26, 0x01	; 1
    627a:	e4 e6       	ldi	r30, 0x64	; 100
    627c:	f4 e0       	ldi	r31, 0x04	; 4
    627e:	8c e1       	ldi	r24, 0x1C	; 28
    6280:	01 90       	ld	r0, Z+
    6282:	0d 92       	st	X+, r0
    6284:	81 50       	subi	r24, 0x01	; 1
    6286:	e1 f7       	brne	.-8      	; 0x6280 <dhcp_input+0x374>
    6288:	60 91 0b 05 	lds	r22, 0x050B
    628c:	70 91 0c 05 	lds	r23, 0x050C
    6290:	80 91 0d 05 	lds	r24, 0x050D
    6294:	90 91 0e 05 	lds	r25, 0x050E
    6298:	0e 94 dd 22 	call	0x45ba	; 0x45ba <arp_request>
    629c:	0e 94 81 1a 	call	0x3502	; 0x3502 <enc_setnextpoint>
    62a0:	0e 94 c6 1f 	call	0x3f8c	; 0x3f8c <getcount1ms>
    62a4:	8c 01       	movw	r16, r24
    62a6:	a8 95       	wdr
    62a8:	0e 94 c3 24 	call	0x4986	; 0x4986 <ether_input>
    62ac:	81 30       	cpi	r24, 0x01	; 1
    62ae:	19 f4       	brne	.+6      	; 0x62b6 <dhcp_input+0x3aa>
    62b0:	0e 94 81 1a 	call	0x3502	; 0x3502 <enc_setnextpoint>
    62b4:	09 c0       	rjmp	.+18     	; 0x62c8 <dhcp_input+0x3bc>
    62b6:	82 30       	cpi	r24, 0x02	; 2
    62b8:	39 f4       	brne	.+14     	; 0x62c8 <dhcp_input+0x3bc>
    62ba:	0e 94 1e 2c 	call	0x583c	; 0x583c <dhcp_decline>
    62be:	88 23       	and	r24, r24
    62c0:	b1 f4       	brne	.+44     	; 0x62ee <dhcp_input+0x3e2>
    62c2:	0e 94 a8 2c 	call	0x5950	; 0x5950 <dhcp_discover>
    62c6:	13 c0       	rjmp	.+38     	; 0x62ee <dhcp_input+0x3e2>
    62c8:	0e 94 c6 1f 	call	0x3f8c	; 0x3f8c <getcount1ms>
    62cc:	80 1b       	sub	r24, r16
    62ce:	91 0b       	sbc	r25, r17
    62d0:	84 36       	cpi	r24, 0x64	; 100
    62d2:	91 05       	cpc	r25, r1
    62d4:	40 f3       	brcs	.-48     	; 0x62a6 <dhcp_input+0x39a>
    62d6:	80 91 c7 09 	lds	r24, 0x09C7
    62da:	81 50       	subi	r24, 0x01	; 1
    62dc:	82 30       	cpi	r24, 0x02	; 2
    62de:	30 f4       	brcc	.+12     	; 0x62ec <dhcp_input+0x3e0>
    62e0:	81 e0       	ldi	r24, 0x01	; 1
    62e2:	90 e0       	ldi	r25, 0x00	; 0
    62e4:	90 93 d5 09 	sts	0x09D5, r25
    62e8:	80 93 d4 09 	sts	0x09D4, r24
    62ec:	80 e0       	ldi	r24, 0x00	; 0
    62ee:	a4 e6       	ldi	r26, 0x64	; 100
    62f0:	b4 e0       	ldi	r27, 0x04	; 4
    62f2:	fe 01       	movw	r30, r28
    62f4:	31 96       	adiw	r30, 0x01	; 1
    62f6:	9c e1       	ldi	r25, 0x1C	; 28
    62f8:	01 90       	ld	r0, Z+
    62fa:	0d 92       	st	X+, r0
    62fc:	91 50       	subi	r25, 0x01	; 1
    62fe:	e1 f7       	brne	.-8      	; 0x62f8 <dhcp_input+0x3ec>
    6300:	15 c0       	rjmp	.+42     	; 0x632c <dhcp_input+0x420>
    6302:	96 30       	cpi	r25, 0x06	; 6
    6304:	91 f4       	brne	.+36     	; 0x632a <dhcp_input+0x41e>
    6306:	0e 94 62 19 	call	0x32c4	; 0x32c4 <enc_readbuf4>
    630a:	20 91 23 08 	lds	r18, 0x0823
    630e:	30 91 24 08 	lds	r19, 0x0824
    6312:	40 91 25 08 	lds	r20, 0x0825
    6316:	50 91 26 08 	lds	r21, 0x0826
    631a:	62 17       	cp	r22, r18
    631c:	73 07       	cpc	r23, r19
    631e:	84 07       	cpc	r24, r20
    6320:	95 07       	cpc	r25, r21
    6322:	19 f4       	brne	.+6      	; 0x632a <dhcp_input+0x41e>
    6324:	07 c0       	rjmp	.+14     	; 0x6334 <dhcp_input+0x428>
    6326:	80 e0       	ldi	r24, 0x00	; 0
    6328:	01 c0       	rjmp	.+2      	; 0x632c <dhcp_input+0x420>
    632a:	8f e0       	ldi	r24, 0x0F	; 15
    632c:	6c 96       	adiw	r28, 0x1c	; 28
    632e:	e6 e0       	ldi	r30, 0x06	; 6
    6330:	0c 94 71 6d 	jmp	0xdae2	; 0xdae2 <__epilogue_restores__+0x18>
    6334:	0e 94 a8 2c 	call	0x5950	; 0x5950 <dhcp_discover>
    6338:	f9 cf       	rjmp	.-14     	; 0x632c <dhcp_input+0x420>

0000633a <dns_getname>:
    633a:	af 92       	push	r10
    633c:	bf 92       	push	r11
    633e:	df 92       	push	r13
    6340:	ef 92       	push	r14
    6342:	ff 92       	push	r15
    6344:	0f 93       	push	r16
    6346:	1f 93       	push	r17
    6348:	df 93       	push	r29
    634a:	cf 93       	push	r28
    634c:	0f 92       	push	r0
    634e:	cd b7       	in	r28, 0x3d	; 61
    6350:	de b7       	in	r29, 0x3e	; 62
    6352:	f8 2e       	mov	r15, r24
    6354:	e9 2e       	mov	r14, r25
    6356:	9c 01       	movw	r18, r24
    6358:	59 01       	movw	r10, r18
    635a:	8e e2       	ldi	r24, 0x2E	; 46
    635c:	d8 2e       	mov	r13, r24
    635e:	0e 94 43 19 	call	0x3286	; 0x3286 <enc_readbuf>
    6362:	98 2f       	mov	r25, r24
    6364:	88 23       	and	r24, r24
    6366:	31 f4       	brne	.+12     	; 0x6374 <dns_getname+0x3a>
    6368:	08 94       	sec
    636a:	a1 08       	sbc	r10, r1
    636c:	b1 08       	sbc	r11, r1
    636e:	f5 01       	movw	r30, r10
    6370:	10 82       	st	Z, r1
    6372:	19 c0       	rjmp	.+50     	; 0x63a6 <dns_getname+0x6c>
    6374:	80 7c       	andi	r24, 0xC0	; 192
    6376:	80 3c       	cpi	r24, 0xC0	; 192
    6378:	11 f0       	breq	.+4      	; 0x637e <dns_getname+0x44>
    637a:	85 01       	movw	r16, r10
    637c:	0a c0       	rjmp	.+20     	; 0x6392 <dns_getname+0x58>
    637e:	0e 94 43 19 	call	0x3286	; 0x3286 <enc_readbuf>
    6382:	11 c0       	rjmp	.+34     	; 0x63a6 <dns_getname+0x6c>
    6384:	99 83       	std	Y+1, r25	; 0x01
    6386:	0e 94 43 19 	call	0x3286	; 0x3286 <enc_readbuf>
    638a:	f8 01       	movw	r30, r16
    638c:	81 93       	st	Z+, r24
    638e:	8f 01       	movw	r16, r30
    6390:	99 81       	ldd	r25, Y+1	; 0x01
    6392:	80 2f       	mov	r24, r16
    6394:	8a 19       	sub	r24, r10
    6396:	89 17       	cp	r24, r25
    6398:	a8 f3       	brcs	.-22     	; 0x6384 <dns_getname+0x4a>
    639a:	a9 0e       	add	r10, r25
    639c:	b1 1c       	adc	r11, r1
    639e:	f5 01       	movw	r30, r10
    63a0:	d1 92       	st	Z+, r13
    63a2:	5f 01       	movw	r10, r30
    63a4:	dc cf       	rjmp	.-72     	; 0x635e <dns_getname+0x24>
    63a6:	8f 2d       	mov	r24, r15
    63a8:	9e 2d       	mov	r25, r14
    63aa:	0f 90       	pop	r0
    63ac:	cf 91       	pop	r28
    63ae:	df 91       	pop	r29
    63b0:	1f 91       	pop	r17
    63b2:	0f 91       	pop	r16
    63b4:	ff 90       	pop	r15
    63b6:	ef 90       	pop	r14
    63b8:	df 90       	pop	r13
    63ba:	bf 90       	pop	r11
    63bc:	af 90       	pop	r10
    63be:	08 95       	ret

000063c0 <dns_input>:
    63c0:	ac e4       	ldi	r26, 0x4C	; 76
    63c2:	b0 e0       	ldi	r27, 0x00	; 0
    63c4:	e6 ee       	ldi	r30, 0xE6	; 230
    63c6:	f1 e3       	ldi	r31, 0x31	; 49
    63c8:	0c 94 4b 6d 	jmp	0xda96	; 0xda96 <__prologue_saves__+0x4>
    63cc:	80 91 78 04 	lds	r24, 0x0478
    63d0:	90 91 79 04 	lds	r25, 0x0479
    63d4:	0e 94 42 1a 	call	0x3484	; 0x3484 <enc_rxseek>
    63d8:	ce 01       	movw	r24, r28
    63da:	01 96       	adiw	r24, 0x01	; 1
    63dc:	6c e0       	ldi	r22, 0x0C	; 12
    63de:	70 e0       	ldi	r23, 0x00	; 0
    63e0:	0e 94 7e 19 	call	0x32fc	; 0x32fc <enc_readbuffer>
    63e4:	89 81       	ldd	r24, Y+1	; 0x01
    63e6:	9a 81       	ldd	r25, Y+2	; 0x02
    63e8:	0e 94 37 41 	call	0x826e	; 0x826e <cnvendian16>
    63ec:	20 91 a8 09 	lds	r18, 0x09A8
    63f0:	30 91 a9 09 	lds	r19, 0x09A9
    63f4:	82 17       	cp	r24, r18
    63f6:	93 07       	cpc	r25, r19
    63f8:	09 f0       	breq	.+2      	; 0x63fc <dns_input+0x3c>
    63fa:	6a c0       	rjmp	.+212    	; 0x64d0 <dns_input+0x110>
    63fc:	8d 81       	ldd	r24, Y+5	; 0x05
    63fe:	9e 81       	ldd	r25, Y+6	; 0x06
    6400:	0e 94 37 41 	call	0x826e	; 0x826e <cnvendian16>
    6404:	6c 01       	movw	r12, r24
    6406:	ee 24       	eor	r14, r14
    6408:	ff 24       	eor	r15, r15
    640a:	3d e2       	ldi	r19, 0x2D	; 45
    640c:	a3 2e       	mov	r10, r19
    640e:	b1 2c       	mov	r11, r1
    6410:	ac 0e       	add	r10, r28
    6412:	bd 1e       	adc	r11, r29
    6414:	2d e0       	ldi	r18, 0x0D	; 13
    6416:	82 2e       	mov	r8, r18
    6418:	91 2c       	mov	r9, r1
    641a:	8c 0e       	add	r8, r28
    641c:	9d 1e       	adc	r9, r29
    641e:	14 c0       	rjmp	.+40     	; 0x6448 <dns_input+0x88>
    6420:	c5 01       	movw	r24, r10
    6422:	0e 94 9d 31 	call	0x633a	; 0x633a <dns_getname>
    6426:	0e 94 50 19 	call	0x32a0	; 0x32a0 <enc_readbuf2>
    642a:	8c 01       	movw	r16, r24
    642c:	0e 94 50 19 	call	0x32a0	; 0x32a0 <enc_readbuf2>
    6430:	01 30       	cpi	r16, 0x01	; 1
    6432:	11 05       	cpc	r17, r1
    6434:	31 f4       	brne	.+12     	; 0x6442 <dns_input+0x82>
    6436:	01 97       	sbiw	r24, 0x01	; 1
    6438:	21 f4       	brne	.+8      	; 0x6442 <dns_input+0x82>
    643a:	c4 01       	movw	r24, r8
    643c:	b5 01       	movw	r22, r10
    643e:	0e 94 32 6e 	call	0xdc64	; 0xdc64 <strcpy>
    6442:	08 94       	sec
    6444:	e1 1c       	adc	r14, r1
    6446:	f1 1c       	adc	r15, r1
    6448:	ec 14       	cp	r14, r12
    644a:	fd 04       	cpc	r15, r13
    644c:	48 f3       	brcs	.-46     	; 0x6420 <dns_input+0x60>
    644e:	8f 81       	ldd	r24, Y+7	; 0x07
    6450:	98 85       	ldd	r25, Y+8	; 0x08
    6452:	0e 94 37 41 	call	0x826e	; 0x826e <cnvendian16>
    6456:	3c 01       	movw	r6, r24
    6458:	ee 24       	eor	r14, r14
    645a:	ff 24       	eor	r15, r15
    645c:	9d e2       	ldi	r25, 0x2D	; 45
    645e:	49 2e       	mov	r4, r25
    6460:	51 2c       	mov	r5, r1
    6462:	4c 0e       	add	r4, r28
    6464:	5d 1e       	adc	r5, r29
    6466:	31 c0       	rjmp	.+98     	; 0x64ca <dns_input+0x10a>
    6468:	c2 01       	movw	r24, r4
    646a:	0e 94 9d 31 	call	0x633a	; 0x633a <dns_getname>
    646e:	0e 94 50 19 	call	0x32a0	; 0x32a0 <enc_readbuf2>
    6472:	8c 01       	movw	r16, r24
    6474:	0e 94 50 19 	call	0x32a0	; 0x32a0 <enc_readbuf2>
    6478:	4c 01       	movw	r8, r24
    647a:	0e 94 62 19 	call	0x32c4	; 0x32c4 <enc_readbuf4>
    647e:	5b 01       	movw	r10, r22
    6480:	6c 01       	movw	r12, r24
    6482:	0e 94 50 19 	call	0x32a0	; 0x32a0 <enc_readbuf2>
    6486:	01 30       	cpi	r16, 0x01	; 1
    6488:	11 05       	cpc	r17, r1
    648a:	d1 f4       	brne	.+52     	; 0x64c0 <dns_input+0x100>
    648c:	21 e0       	ldi	r18, 0x01	; 1
    648e:	82 16       	cp	r8, r18
    6490:	91 04       	cpc	r9, r1
    6492:	b1 f4       	brne	.+44     	; 0x64c0 <dns_input+0x100>
    6494:	84 30       	cpi	r24, 0x04	; 4
    6496:	91 05       	cpc	r25, r1
    6498:	99 f4       	brne	.+38     	; 0x64c0 <dns_input+0x100>
    649a:	0e 94 62 19 	call	0x32c4	; 0x32c4 <enc_readbuf4>
    649e:	ab 01       	movw	r20, r22
    64a0:	bc 01       	movw	r22, r24
    64a2:	40 93 aa 09 	sts	0x09AA, r20
    64a6:	50 93 ab 09 	sts	0x09AB, r21
    64aa:	60 93 ac 09 	sts	0x09AC, r22
    64ae:	70 93 ad 09 	sts	0x09AD, r23
    64b2:	ce 01       	movw	r24, r28
    64b4:	0d 96       	adiw	r24, 0x0d	; 13
    64b6:	96 01       	movw	r18, r12
    64b8:	85 01       	movw	r16, r10
    64ba:	0e 94 16 36 	call	0x6c2c	; 0x6c2c <cache_keep>
    64be:	08 c0       	rjmp	.+16     	; 0x64d0 <dns_input+0x110>
    64c0:	0e 94 86 1c 	call	0x390c	; 0x390c <enc_skip>
    64c4:	08 94       	sec
    64c6:	e1 1c       	adc	r14, r1
    64c8:	f1 1c       	adc	r15, r1
    64ca:	e6 14       	cp	r14, r6
    64cc:	f7 04       	cpc	r15, r7
    64ce:	60 f2       	brcs	.-104    	; 0x6468 <dns_input+0xa8>
    64d0:	80 e0       	ldi	r24, 0x00	; 0
    64d2:	c4 5b       	subi	r28, 0xB4	; 180
    64d4:	df 4f       	sbci	r29, 0xFF	; 255
    64d6:	e0 e1       	ldi	r30, 0x10	; 16
    64d8:	0c 94 67 6d 	jmp	0xdace	; 0xdace <__epilogue_restores__+0x4>

000064dc <dns_request>:
    64dc:	af 92       	push	r10
    64de:	bf 92       	push	r11
    64e0:	df 92       	push	r13
    64e2:	ef 92       	push	r14
    64e4:	ff 92       	push	r15
    64e6:	0f 93       	push	r16
    64e8:	1f 93       	push	r17
    64ea:	cf 93       	push	r28
    64ec:	df 93       	push	r29
    64ee:	18 2f       	mov	r17, r24
    64f0:	09 2f       	mov	r16, r25
    64f2:	80 91 c3 09 	lds	r24, 0x09C3
    64f6:	90 91 c4 09 	lds	r25, 0x09C4
    64fa:	a0 91 c5 09 	lds	r26, 0x09C5
    64fe:	b0 91 c6 09 	lds	r27, 0x09C6
    6502:	80 93 6c 04 	sts	0x046C, r24
    6506:	90 93 6d 04 	sts	0x046D, r25
    650a:	a0 93 6e 04 	sts	0x046E, r26
    650e:	b0 93 6f 04 	sts	0x046F, r27
    6512:	85 e3       	ldi	r24, 0x35	; 53
    6514:	90 e0       	ldi	r25, 0x00	; 0
    6516:	90 93 75 04 	sts	0x0475, r25
    651a:	80 93 74 04 	sts	0x0474, r24
    651e:	80 e0       	ldi	r24, 0x00	; 0
    6520:	94 e0       	ldi	r25, 0x04	; 4
    6522:	90 93 77 04 	sts	0x0477, r25
    6526:	80 93 76 04 	sts	0x0476, r24
    652a:	0e 94 b6 40 	call	0x816c	; 0x816c <make_rand>
    652e:	70 93 a9 09 	sts	0x09A9, r23
    6532:	60 93 a8 09 	sts	0x09A8, r22
    6536:	8a e2       	ldi	r24, 0x2A	; 42
    6538:	90 e0       	ldi	r25, 0x00	; 0
    653a:	0e 94 67 1a 	call	0x34ce	; 0x34ce <enc_txseek>
    653e:	80 91 a8 09 	lds	r24, 0x09A8
    6542:	90 91 a9 09 	lds	r25, 0x09A9
    6546:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    654a:	80 e0       	ldi	r24, 0x00	; 0
    654c:	91 e0       	ldi	r25, 0x01	; 1
    654e:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    6552:	81 e0       	ldi	r24, 0x01	; 1
    6554:	90 e0       	ldi	r25, 0x00	; 0
    6556:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    655a:	80 e0       	ldi	r24, 0x00	; 0
    655c:	90 e0       	ldi	r25, 0x00	; 0
    655e:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    6562:	80 e0       	ldi	r24, 0x00	; 0
    6564:	90 e0       	ldi	r25, 0x00	; 0
    6566:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    656a:	80 e0       	ldi	r24, 0x00	; 0
    656c:	90 e0       	ldi	r25, 0x00	; 0
    656e:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    6572:	21 2f       	mov	r18, r17
    6574:	30 2f       	mov	r19, r16
    6576:	c9 01       	movw	r24, r18
    6578:	ec 01       	movw	r28, r24
    657a:	40 e1       	ldi	r20, 0x10	; 16
    657c:	a4 2e       	mov	r10, r20
    657e:	b1 2c       	mov	r11, r1
    6580:	7e 01       	movw	r14, r28
    6582:	0e 2d       	mov	r16, r14
    6584:	0c 1b       	sub	r16, r28
    6586:	f7 01       	movw	r30, r14
    6588:	d0 80       	ld	r13, Z
    658a:	fe e2       	ldi	r31, 0x2E	; 46
    658c:	df 16       	cp	r13, r31
    658e:	31 f0       	breq	.+12     	; 0x659c <dns_request+0xc0>
    6590:	dd 20       	and	r13, r13
    6592:	21 f0       	breq	.+8      	; 0x659c <dns_request+0xc0>
    6594:	08 94       	sec
    6596:	e1 1c       	adc	r14, r1
    6598:	f1 1c       	adc	r15, r1
    659a:	f3 cf       	rjmp	.-26     	; 0x6582 <dns_request+0xa6>
    659c:	80 2f       	mov	r24, r16
    659e:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    65a2:	10 e0       	ldi	r17, 0x00	; 0
    65a4:	ce 01       	movw	r24, r28
    65a6:	b8 01       	movw	r22, r16
    65a8:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    65ac:	0f 5f       	subi	r16, 0xFF	; 255
    65ae:	1f 4f       	sbci	r17, 0xFF	; 255
    65b0:	a0 0e       	add	r10, r16
    65b2:	b1 1e       	adc	r11, r17
    65b4:	dd 20       	and	r13, r13
    65b6:	19 f0       	breq	.+6      	; 0x65be <dns_request+0xe2>
    65b8:	e7 01       	movw	r28, r14
    65ba:	21 96       	adiw	r28, 0x01	; 1
    65bc:	e1 cf       	rjmp	.-62     	; 0x6580 <dns_request+0xa4>
    65be:	80 e0       	ldi	r24, 0x00	; 0
    65c0:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    65c4:	81 e0       	ldi	r24, 0x01	; 1
    65c6:	90 e0       	ldi	r25, 0x00	; 0
    65c8:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    65cc:	81 e0       	ldi	r24, 0x01	; 1
    65ce:	90 e0       	ldi	r25, 0x00	; 0
    65d0:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    65d4:	c5 01       	movw	r24, r10
    65d6:	01 96       	adiw	r24, 0x01	; 1
    65d8:	0e 94 ec 2a 	call	0x55d8	; 0x55d8 <udp_output>
    65dc:	df 91       	pop	r29
    65de:	cf 91       	pop	r28
    65e0:	1f 91       	pop	r17
    65e2:	0f 91       	pop	r16
    65e4:	ff 90       	pop	r15
    65e6:	ef 90       	pop	r14
    65e8:	df 90       	pop	r13
    65ea:	bf 90       	pop	r11
    65ec:	af 90       	pop	r10
    65ee:	08 95       	ret

000065f0 <casc2asc>:
    65f0:	1f 93       	push	r17
    65f2:	0e 94 43 19 	call	0x3286	; 0x3286 <enc_readbuf>
    65f6:	18 2f       	mov	r17, r24
    65f8:	11 54       	subi	r17, 0x41	; 65
    65fa:	12 95       	swap	r17
    65fc:	10 7f       	andi	r17, 0xF0	; 240
    65fe:	0e 94 43 19 	call	0x3286	; 0x3286 <enc_readbuf>
    6602:	81 54       	subi	r24, 0x41	; 65
    6604:	8f 70       	andi	r24, 0x0F	; 15
    6606:	81 2b       	or	r24, r17
    6608:	1f 91       	pop	r17
    660a:	08 95       	ret

0000660c <asc2casc>:
    660c:	0f 93       	push	r16
    660e:	1f 93       	push	r17
    6610:	cf 93       	push	r28
    6612:	df 93       	push	r29
    6614:	ec 01       	movw	r28, r24
    6616:	00 e0       	ldi	r16, 0x00	; 0
    6618:	89 91       	ld	r24, Y+
    661a:	90 e0       	ldi	r25, 0x00	; 0
    661c:	0e 94 94 6d 	call	0xdb28	; 0xdb28 <toupper>
    6620:	18 2f       	mov	r17, r24
    6622:	82 95       	swap	r24
    6624:	8f 70       	andi	r24, 0x0F	; 15
    6626:	8f 5b       	subi	r24, 0xBF	; 191
    6628:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    662c:	1f 70       	andi	r17, 0x0F	; 15
    662e:	81 2f       	mov	r24, r17
    6630:	8f 5b       	subi	r24, 0xBF	; 191
    6632:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    6636:	0f 5f       	subi	r16, 0xFF	; 255
    6638:	00 31       	cpi	r16, 0x10	; 16
    663a:	71 f7       	brne	.-36     	; 0x6618 <asc2casc+0xc>
    663c:	80 e0       	ldi	r24, 0x00	; 0
    663e:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    6642:	df 91       	pop	r29
    6644:	cf 91       	pop	r28
    6646:	1f 91       	pop	r17
    6648:	0f 91       	pop	r16
    664a:	08 95       	ret

0000664c <nbns_input>:
    664c:	ac e1       	ldi	r26, 0x1C	; 28
    664e:	b0 e0       	ldi	r27, 0x00	; 0
    6650:	ec e2       	ldi	r30, 0x2C	; 44
    6652:	f3 e3       	ldi	r31, 0x33	; 51
    6654:	0c 94 4b 6d 	jmp	0xda96	; 0xda96 <__prologue_saves__+0x4>
    6658:	80 91 78 04 	lds	r24, 0x0478
    665c:	90 91 79 04 	lds	r25, 0x0479
    6660:	0e 94 42 1a 	call	0x3484	; 0x3484 <enc_rxseek>
    6664:	ce 01       	movw	r24, r28
    6666:	01 96       	adiw	r24, 0x01	; 1
    6668:	6c e0       	ldi	r22, 0x0C	; 12
    666a:	70 e0       	ldi	r23, 0x00	; 0
    666c:	0e 94 7e 19 	call	0x32fc	; 0x32fc <enc_readbuffer>
    6670:	8b 81       	ldd	r24, Y+3	; 0x03
    6672:	9c 81       	ldd	r25, Y+4	; 0x04
    6674:	0e 94 37 41 	call	0x826e	; 0x826e <cnvendian16>
    6678:	9c 01       	movw	r18, r24
    667a:	8f 70       	andi	r24, 0x0F	; 15
    667c:	90 70       	andi	r25, 0x00	; 0
    667e:	89 2b       	or	r24, r25
    6680:	11 f0       	breq	.+4      	; 0x6686 <nbns_input+0x3a>
    6682:	82 e1       	ldi	r24, 0x12	; 18
    6684:	ee c0       	rjmp	.+476    	; 0x6862 <nbns_input+0x216>
    6686:	37 ff       	sbrs	r19, 7
    6688:	5a c0       	rjmp	.+180    	; 0x673e <nbns_input+0xf2>
    668a:	89 81       	ldd	r24, Y+1	; 0x01
    668c:	9a 81       	ldd	r25, Y+2	; 0x02
    668e:	0e 94 37 41 	call	0x826e	; 0x826e <cnvendian16>
    6692:	20 91 a8 09 	lds	r18, 0x09A8
    6696:	30 91 a9 09 	lds	r19, 0x09A9
    669a:	82 17       	cp	r24, r18
    669c:	93 07       	cpc	r25, r19
    669e:	09 f0       	breq	.+2      	; 0x66a2 <nbns_input+0x56>
    66a0:	df c0       	rjmp	.+446    	; 0x6860 <nbns_input+0x214>
    66a2:	8f 81       	ldd	r24, Y+7	; 0x07
    66a4:	98 85       	ldd	r25, Y+8	; 0x08
    66a6:	0e 94 37 41 	call	0x826e	; 0x826e <cnvendian16>
    66aa:	01 97       	sbiw	r24, 0x01	; 1
    66ac:	11 f0       	breq	.+4      	; 0x66b2 <nbns_input+0x66>
    66ae:	80 e1       	ldi	r24, 0x10	; 16
    66b0:	d8 c0       	rjmp	.+432    	; 0x6862 <nbns_input+0x216>
    66b2:	0e 94 43 19 	call	0x3286	; 0x3286 <enc_readbuf>
    66b6:	80 32       	cpi	r24, 0x20	; 32
    66b8:	11 f0       	breq	.+4      	; 0x66be <nbns_input+0x72>
    66ba:	81 e1       	ldi	r24, 0x11	; 17
    66bc:	d2 c0       	rjmp	.+420    	; 0x6862 <nbns_input+0x216>
    66be:	8e 01       	movw	r16, r28
    66c0:	03 5f       	subi	r16, 0xF3	; 243
    66c2:	1f 4f       	sbci	r17, 0xFF	; 255
    66c4:	c8 01       	movw	r24, r16
    66c6:	90 2e       	mov	r9, r16
    66c8:	89 2e       	mov	r8, r25
    66ca:	2d e1       	ldi	r18, 0x1D	; 29
    66cc:	e2 2e       	mov	r14, r18
    66ce:	f1 2c       	mov	r15, r1
    66d0:	ec 0e       	add	r14, r28
    66d2:	fd 1e       	adc	r15, r29
    66d4:	0e 94 f8 32 	call	0x65f0	; 0x65f0 <casc2asc>
    66d8:	f8 01       	movw	r30, r16
    66da:	81 93       	st	Z+, r24
    66dc:	8f 01       	movw	r16, r30
    66de:	ee 15       	cp	r30, r14
    66e0:	ff 05       	cpc	r31, r15
    66e2:	c1 f7       	brne	.-16     	; 0x66d4 <nbns_input+0x88>
    66e4:	1c 8e       	std	Y+28, r1	; 0x1c
    66e6:	0e 94 43 19 	call	0x3286	; 0x3286 <enc_readbuf>
    66ea:	0e 94 50 19 	call	0x32a0	; 0x32a0 <enc_readbuf2>
    66ee:	8c 01       	movw	r16, r24
    66f0:	0e 94 50 19 	call	0x32a0	; 0x32a0 <enc_readbuf2>
    66f4:	7c 01       	movw	r14, r24
    66f6:	0e 94 62 19 	call	0x32c4	; 0x32c4 <enc_readbuf4>
    66fa:	5b 01       	movw	r10, r22
    66fc:	6c 01       	movw	r12, r24
    66fe:	00 32       	cpi	r16, 0x20	; 32
    6700:	11 05       	cpc	r17, r1
    6702:	09 f0       	breq	.+2      	; 0x6706 <nbns_input+0xba>
    6704:	ad c0       	rjmp	.+346    	; 0x6860 <nbns_input+0x214>
    6706:	f1 e0       	ldi	r31, 0x01	; 1
    6708:	ef 16       	cp	r14, r31
    670a:	f1 04       	cpc	r15, r1
    670c:	09 f0       	breq	.+2      	; 0x6710 <nbns_input+0xc4>
    670e:	a8 c0       	rjmp	.+336    	; 0x6860 <nbns_input+0x214>
    6710:	0e 94 50 19 	call	0x32a0	; 0x32a0 <enc_readbuf2>
    6714:	0e 94 50 19 	call	0x32a0	; 0x32a0 <enc_readbuf2>
    6718:	0e 94 62 19 	call	0x32c4	; 0x32c4 <enc_readbuf4>
    671c:	ab 01       	movw	r20, r22
    671e:	bc 01       	movw	r22, r24
    6720:	40 93 aa 09 	sts	0x09AA, r20
    6724:	50 93 ab 09 	sts	0x09AB, r21
    6728:	60 93 ac 09 	sts	0x09AC, r22
    672c:	70 93 ad 09 	sts	0x09AD, r23
    6730:	89 2d       	mov	r24, r9
    6732:	98 2d       	mov	r25, r8
    6734:	96 01       	movw	r18, r12
    6736:	85 01       	movw	r16, r10
    6738:	0e 94 16 36 	call	0x6c2c	; 0x6c2c <cache_keep>
    673c:	91 c0       	rjmp	.+290    	; 0x6860 <nbns_input+0x214>
    673e:	20 70       	andi	r18, 0x00	; 0
    6740:	38 77       	andi	r19, 0x78	; 120
    6742:	23 2b       	or	r18, r19
    6744:	09 f0       	breq	.+2      	; 0x6748 <nbns_input+0xfc>
    6746:	8c c0       	rjmp	.+280    	; 0x6860 <nbns_input+0x214>
    6748:	80 91 7a 04 	lds	r24, 0x047A
    674c:	90 91 7b 04 	lds	r25, 0x047B
    6750:	c2 97       	sbiw	r24, 0x32	; 50
    6752:	09 f0       	breq	.+2      	; 0x6756 <nbns_input+0x10a>
    6754:	85 c0       	rjmp	.+266    	; 0x6860 <nbns_input+0x214>
    6756:	89 81       	ldd	r24, Y+1	; 0x01
    6758:	9a 81       	ldd	r25, Y+2	; 0x02
    675a:	0e 94 37 41 	call	0x826e	; 0x826e <cnvendian16>
    675e:	4c 01       	movw	r8, r24
    6760:	8d 81       	ldd	r24, Y+5	; 0x05
    6762:	9e 81       	ldd	r25, Y+6	; 0x06
    6764:	0e 94 37 41 	call	0x826e	; 0x826e <cnvendian16>
    6768:	5c 01       	movw	r10, r24
    676a:	cc 24       	eor	r12, r12
    676c:	dd 24       	eor	r13, r13
    676e:	9d e0       	ldi	r25, 0x0D	; 13
    6770:	69 2e       	mov	r6, r25
    6772:	71 2c       	mov	r7, r1
    6774:	6c 0e       	add	r6, r28
    6776:	7d 1e       	adc	r7, r29
    6778:	8d e1       	ldi	r24, 0x1D	; 29
    677a:	48 2e       	mov	r4, r24
    677c:	51 2c       	mov	r5, r1
    677e:	4c 0e       	add	r4, r28
    6780:	5d 1e       	adc	r5, r29
    6782:	31 c0       	rjmp	.+98     	; 0x67e6 <nbns_input+0x19a>
    6784:	0e 94 43 19 	call	0x3286	; 0x3286 <enc_readbuf>
    6788:	80 32       	cpi	r24, 0x20	; 32
    678a:	09 f0       	breq	.+2      	; 0x678e <nbns_input+0x142>
    678c:	69 c0       	rjmp	.+210    	; 0x6860 <nbns_input+0x214>
    678e:	83 01       	movw	r16, r6
    6790:	0e 94 f8 32 	call	0x65f0	; 0x65f0 <casc2asc>
    6794:	f8 01       	movw	r30, r16
    6796:	81 93       	st	Z+, r24
    6798:	8f 01       	movw	r16, r30
    679a:	e4 15       	cp	r30, r4
    679c:	f5 05       	cpc	r31, r5
    679e:	c1 f7       	brne	.-16     	; 0x6790 <nbns_input+0x144>
    67a0:	1c 8e       	std	Y+28, r1	; 0x1c
    67a2:	0e 94 43 19 	call	0x3286	; 0x3286 <enc_readbuf>
    67a6:	0e 94 50 19 	call	0x32a0	; 0x32a0 <enc_readbuf2>
    67aa:	7c 01       	movw	r14, r24
    67ac:	0e 94 50 19 	call	0x32a0	; 0x32a0 <enc_readbuf2>
    67b0:	01 97       	sbiw	r24, 0x01	; 1
    67b2:	b1 f4       	brne	.+44     	; 0x67e0 <nbns_input+0x194>
    67b4:	f0 e2       	ldi	r31, 0x20	; 32
    67b6:	ef 16       	cp	r14, r31
    67b8:	f1 04       	cpc	r15, r1
    67ba:	51 f4       	brne	.+20     	; 0x67d0 <nbns_input+0x184>
    67bc:	c3 01       	movw	r24, r6
    67be:	63 eb       	ldi	r22, 0xB3	; 179
    67c0:	79 e0       	ldi	r23, 0x09	; 9
    67c2:	0e 94 29 6e 	call	0xdc52	; 0xdc52 <strcmp>
    67c6:	00 97       	sbiw	r24, 0x00	; 0
    67c8:	59 f4       	brne	.+22     	; 0x67e0 <nbns_input+0x194>
    67ca:	00 e0       	ldi	r16, 0x00	; 0
    67cc:	15 e8       	ldi	r17, 0x85	; 133
    67ce:	4f c0       	rjmp	.+158    	; 0x686e <nbns_input+0x222>
    67d0:	81 e2       	ldi	r24, 0x21	; 33
    67d2:	e8 16       	cp	r14, r24
    67d4:	f1 04       	cpc	r15, r1
    67d6:	21 f4       	brne	.+8      	; 0x67e0 <nbns_input+0x194>
    67d8:	8d 85       	ldd	r24, Y+13	; 0x0d
    67da:	8a 32       	cpi	r24, 0x2A	; 42
    67dc:	09 f4       	brne	.+2      	; 0x67e0 <nbns_input+0x194>
    67de:	45 c0       	rjmp	.+138    	; 0x686a <nbns_input+0x21e>
    67e0:	08 94       	sec
    67e2:	c1 1c       	adc	r12, r1
    67e4:	d1 1c       	adc	r13, r1
    67e6:	ca 14       	cp	r12, r10
    67e8:	db 04       	cpc	r13, r11
    67ea:	60 f2       	brcs	.-104    	; 0x6784 <nbns_input+0x138>
    67ec:	39 c0       	rjmp	.+114    	; 0x6860 <nbns_input+0x214>
    67ee:	86 e0       	ldi	r24, 0x06	; 6
    67f0:	90 e0       	ldi	r25, 0x00	; 0
    67f2:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    67f6:	80 e0       	ldi	r24, 0x00	; 0
    67f8:	90 e0       	ldi	r25, 0x00	; 0
    67fa:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    67fe:	60 91 0b 05 	lds	r22, 0x050B
    6802:	70 91 0c 05 	lds	r23, 0x050C
    6806:	80 91 0d 05 	lds	r24, 0x050D
    680a:	90 91 0e 05 	lds	r25, 0x050E
    680e:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    6812:	8e e3       	ldi	r24, 0x3E	; 62
    6814:	90 e0       	ldi	r25, 0x00	; 0
    6816:	21 c0       	rjmp	.+66     	; 0x685a <nbns_input+0x20e>
    6818:	8d e3       	ldi	r24, 0x3D	; 61
    681a:	90 e0       	ldi	r25, 0x00	; 0
    681c:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    6820:	81 e0       	ldi	r24, 0x01	; 1
    6822:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    6826:	83 eb       	ldi	r24, 0xB3	; 179
    6828:	99 e0       	ldi	r25, 0x09	; 9
    682a:	6f e0       	ldi	r22, 0x0F	; 15
    682c:	70 e0       	ldi	r23, 0x00	; 0
    682e:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    6832:	80 e0       	ldi	r24, 0x00	; 0
    6834:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    6838:	80 e0       	ldi	r24, 0x00	; 0
    683a:	94 e0       	ldi	r25, 0x04	; 4
    683c:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    6840:	8c e8       	ldi	r24, 0x8C	; 140
    6842:	94 e0       	ldi	r25, 0x04	; 4
    6844:	66 e0       	ldi	r22, 0x06	; 6
    6846:	70 e0       	ldi	r23, 0x00	; 0
    6848:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    684c:	80 e0       	ldi	r24, 0x00	; 0
    684e:	64 e2       	ldi	r22, 0x24	; 36
    6850:	70 e0       	ldi	r23, 0x00	; 0
    6852:	0e 94 e4 19 	call	0x33c8	; 0x33c8 <enc_fillwrite>
    6856:	85 e7       	ldi	r24, 0x75	; 117
    6858:	90 e0       	ldi	r25, 0x00	; 0
    685a:	0e 94 ec 2a 	call	0x55d8	; 0x55d8 <udp_output>
    685e:	01 c0       	rjmp	.+2      	; 0x6862 <nbns_input+0x216>
    6860:	80 e0       	ldi	r24, 0x00	; 0
    6862:	6c 96       	adiw	r28, 0x1c	; 28
    6864:	e0 e1       	ldi	r30, 0x10	; 16
    6866:	0c 94 67 6d 	jmp	0xdace	; 0xdace <__epilogue_restores__+0x4>
    686a:	00 e0       	ldi	r16, 0x00	; 0
    686c:	14 e8       	ldi	r17, 0x84	; 132
    686e:	8a e2       	ldi	r24, 0x2A	; 42
    6870:	90 e0       	ldi	r25, 0x00	; 0
    6872:	0e 94 67 1a 	call	0x34ce	; 0x34ce <enc_txseek>
    6876:	c4 01       	movw	r24, r8
    6878:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    687c:	c8 01       	movw	r24, r16
    687e:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    6882:	80 e0       	ldi	r24, 0x00	; 0
    6884:	90 e0       	ldi	r25, 0x00	; 0
    6886:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    688a:	81 e0       	ldi	r24, 0x01	; 1
    688c:	90 e0       	ldi	r25, 0x00	; 0
    688e:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    6892:	80 e0       	ldi	r24, 0x00	; 0
    6894:	90 e0       	ldi	r25, 0x00	; 0
    6896:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    689a:	80 e0       	ldi	r24, 0x00	; 0
    689c:	90 e0       	ldi	r25, 0x00	; 0
    689e:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    68a2:	80 e2       	ldi	r24, 0x20	; 32
    68a4:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    68a8:	ce 01       	movw	r24, r28
    68aa:	0d 96       	adiw	r24, 0x0d	; 13
    68ac:	0e 94 06 33 	call	0x660c	; 0x660c <asc2casc>
    68b0:	c7 01       	movw	r24, r14
    68b2:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    68b6:	81 e0       	ldi	r24, 0x01	; 1
    68b8:	90 e0       	ldi	r25, 0x00	; 0
    68ba:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    68be:	68 e5       	ldi	r22, 0x58	; 88
    68c0:	72 e0       	ldi	r23, 0x02	; 2
    68c2:	80 e0       	ldi	r24, 0x00	; 0
    68c4:	90 e0       	ldi	r25, 0x00	; 0
    68c6:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    68ca:	e0 e2       	ldi	r30, 0x20	; 32
    68cc:	ee 16       	cp	r14, r30
    68ce:	f1 04       	cpc	r15, r1
    68d0:	09 f0       	breq	.+2      	; 0x68d4 <nbns_input+0x288>
    68d2:	a2 cf       	rjmp	.-188    	; 0x6818 <nbns_input+0x1cc>
    68d4:	8c cf       	rjmp	.-232    	; 0x67ee <nbns_input+0x1a2>

000068d6 <nbns_sendquery>:
    68d6:	0f 93       	push	r16
    68d8:	1f 93       	push	r17
    68da:	8c 01       	movw	r16, r24
    68dc:	80 91 0f 05 	lds	r24, 0x050F
    68e0:	90 91 10 05 	lds	r25, 0x0510
    68e4:	a0 91 11 05 	lds	r26, 0x0511
    68e8:	b0 91 12 05 	lds	r27, 0x0512
    68ec:	80 95       	com	r24
    68ee:	90 95       	com	r25
    68f0:	a0 95       	com	r26
    68f2:	b0 95       	com	r27
    68f4:	20 91 0b 05 	lds	r18, 0x050B
    68f8:	30 91 0c 05 	lds	r19, 0x050C
    68fc:	40 91 0d 05 	lds	r20, 0x050D
    6900:	50 91 0e 05 	lds	r21, 0x050E
    6904:	82 2b       	or	r24, r18
    6906:	93 2b       	or	r25, r19
    6908:	a4 2b       	or	r26, r20
    690a:	b5 2b       	or	r27, r21
    690c:	80 93 6c 04 	sts	0x046C, r24
    6910:	90 93 6d 04 	sts	0x046D, r25
    6914:	a0 93 6e 04 	sts	0x046E, r26
    6918:	b0 93 6f 04 	sts	0x046F, r27
    691c:	89 e8       	ldi	r24, 0x89	; 137
    691e:	90 e0       	ldi	r25, 0x00	; 0
    6920:	90 93 75 04 	sts	0x0475, r25
    6924:	80 93 74 04 	sts	0x0474, r24
    6928:	90 93 77 04 	sts	0x0477, r25
    692c:	80 93 76 04 	sts	0x0476, r24
    6930:	0e 94 b6 40 	call	0x816c	; 0x816c <make_rand>
    6934:	70 93 a9 09 	sts	0x09A9, r23
    6938:	60 93 a8 09 	sts	0x09A8, r22
    693c:	8a e2       	ldi	r24, 0x2A	; 42
    693e:	90 e0       	ldi	r25, 0x00	; 0
    6940:	0e 94 67 1a 	call	0x34ce	; 0x34ce <enc_txseek>
    6944:	80 91 a8 09 	lds	r24, 0x09A8
    6948:	90 91 a9 09 	lds	r25, 0x09A9
    694c:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    6950:	80 e1       	ldi	r24, 0x10	; 16
    6952:	91 e0       	ldi	r25, 0x01	; 1
    6954:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    6958:	81 e0       	ldi	r24, 0x01	; 1
    695a:	90 e0       	ldi	r25, 0x00	; 0
    695c:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    6960:	80 e0       	ldi	r24, 0x00	; 0
    6962:	90 e0       	ldi	r25, 0x00	; 0
    6964:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    6968:	80 e0       	ldi	r24, 0x00	; 0
    696a:	90 e0       	ldi	r25, 0x00	; 0
    696c:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    6970:	80 e0       	ldi	r24, 0x00	; 0
    6972:	90 e0       	ldi	r25, 0x00	; 0
    6974:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    6978:	80 e2       	ldi	r24, 0x20	; 32
    697a:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    697e:	c8 01       	movw	r24, r16
    6980:	0e 94 06 33 	call	0x660c	; 0x660c <asc2casc>
    6984:	80 e2       	ldi	r24, 0x20	; 32
    6986:	90 e0       	ldi	r25, 0x00	; 0
    6988:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    698c:	81 e0       	ldi	r24, 0x01	; 1
    698e:	90 e0       	ldi	r25, 0x00	; 0
    6990:	0e 94 a2 19 	call	0x3344	; 0x3344 <enc_writebuf2>
    6994:	82 e3       	ldi	r24, 0x32	; 50
    6996:	90 e0       	ldi	r25, 0x00	; 0
    6998:	0e 94 ec 2a 	call	0x55d8	; 0x55d8 <udp_output>
    699c:	1f 91       	pop	r17
    699e:	0f 91       	pop	r16
    69a0:	08 95       	ret

000069a2 <resolve_timer>:
    69a2:	e2 e8       	ldi	r30, 0x82	; 130
    69a4:	f8 e0       	ldi	r31, 0x08	; 8
    69a6:	84 81       	ldd	r24, Z+4	; 0x04
    69a8:	81 30       	cpi	r24, 0x01	; 1
    69aa:	a1 f4       	brne	.+40     	; 0x69d4 <resolve_timer+0x32>
    69ac:	80 81       	ld	r24, Z
    69ae:	91 81       	ldd	r25, Z+1	; 0x01
    69b0:	a2 81       	ldd	r26, Z+2	; 0x02
    69b2:	b3 81       	ldd	r27, Z+3	; 0x03
    69b4:	00 97       	sbiw	r24, 0x00	; 0
    69b6:	a1 05       	cpc	r26, r1
    69b8:	b1 05       	cpc	r27, r1
    69ba:	61 f0       	breq	.+24     	; 0x69d4 <resolve_timer+0x32>
    69bc:	01 97       	sbiw	r24, 0x01	; 1
    69be:	a1 09       	sbc	r26, r1
    69c0:	b1 09       	sbc	r27, r1
    69c2:	80 83       	st	Z, r24
    69c4:	91 83       	std	Z+1, r25	; 0x01
    69c6:	a2 83       	std	Z+2, r26	; 0x02
    69c8:	b3 83       	std	Z+3, r27	; 0x03
    69ca:	00 97       	sbiw	r24, 0x00	; 0
    69cc:	a1 05       	cpc	r26, r1
    69ce:	b1 05       	cpc	r27, r1
    69d0:	09 f4       	brne	.+2      	; 0x69d4 <resolve_timer+0x32>
    69d2:	14 82       	std	Z+4, r1	; 0x04
    69d4:	b9 96       	adiw	r30, 0x29	; 41
    69d6:	89 e0       	ldi	r24, 0x09	; 9
    69d8:	ea 3c       	cpi	r30, 0xCA	; 202
    69da:	f8 07       	cpc	r31, r24
    69dc:	21 f7       	brne	.-56     	; 0x69a6 <resolve_timer+0x4>
    69de:	08 95       	ret

000069e0 <search_resolver>:
    69e0:	a9 e2       	ldi	r26, 0x29	; 41
    69e2:	b0 e0       	ldi	r27, 0x00	; 0
    69e4:	e6 ef       	ldi	r30, 0xF6	; 246
    69e6:	f4 e3       	ldi	r31, 0x34	; 52
    69e8:	0c 94 53 6d 	jmp	0xdaa6	; 0xdaa6 <__prologue_saves__+0x14>
    69ec:	7c 01       	movw	r14, r24
    69ee:	0e e5       	ldi	r16, 0x5E	; 94
    69f0:	18 e0       	ldi	r17, 0x08	; 8
    69f2:	6e 01       	movw	r12, r28
    69f4:	08 94       	sec
    69f6:	c1 1c       	adc	r12, r1
    69f8:	d1 1c       	adc	r13, r1
    69fa:	d6 01       	movw	r26, r12
    69fc:	f8 01       	movw	r30, r16
    69fe:	89 e2       	ldi	r24, 0x29	; 41
    6a00:	01 90       	ld	r0, Z+
    6a02:	0d 92       	st	X+, r0
    6a04:	81 50       	subi	r24, 0x01	; 1
    6a06:	e1 f7       	brne	.-8      	; 0x6a00 <search_resolver+0x20>
    6a08:	89 a5       	ldd	r24, Y+41	; 0x29
    6a0a:	81 30       	cpi	r24, 0x01	; 1
    6a0c:	59 f4       	brne	.+22     	; 0x6a24 <search_resolver+0x44>
    6a0e:	c6 01       	movw	r24, r12
    6a10:	b7 01       	movw	r22, r14
    6a12:	0e 94 29 6e 	call	0xdc52	; 0xdc52 <strcmp>
    6a16:	00 97       	sbiw	r24, 0x00	; 0
    6a18:	29 f4       	brne	.+10     	; 0x6a24 <search_resolver+0x44>
    6a1a:	29 a1       	ldd	r18, Y+33	; 0x21
    6a1c:	3a a1       	ldd	r19, Y+34	; 0x22
    6a1e:	4b a1       	ldd	r20, Y+35	; 0x23
    6a20:	5c a1       	ldd	r21, Y+36	; 0x24
    6a22:	0a c0       	rjmp	.+20     	; 0x6a38 <search_resolver+0x58>
    6a24:	07 5d       	subi	r16, 0xD7	; 215
    6a26:	1f 4f       	sbci	r17, 0xFF	; 255
    6a28:	89 e0       	ldi	r24, 0x09	; 9
    6a2a:	06 3a       	cpi	r16, 0xA6	; 166
    6a2c:	18 07       	cpc	r17, r24
    6a2e:	29 f7       	brne	.-54     	; 0x69fa <search_resolver+0x1a>
    6a30:	20 e0       	ldi	r18, 0x00	; 0
    6a32:	30 e0       	ldi	r19, 0x00	; 0
    6a34:	40 e0       	ldi	r20, 0x00	; 0
    6a36:	50 e0       	ldi	r21, 0x00	; 0
    6a38:	b9 01       	movw	r22, r18
    6a3a:	ca 01       	movw	r24, r20
    6a3c:	a9 96       	adiw	r28, 0x29	; 41
    6a3e:	e8 e0       	ldi	r30, 0x08	; 8
    6a40:	0c 94 6f 6d 	jmp	0xdade	; 0xdade <__epilogue_restores__+0x14>

00006a44 <resolve_seq>:
    6a44:	cf 93       	push	r28
    6a46:	df 93       	push	r29
    6a48:	80 91 b0 09 	lds	r24, 0x09B0
    6a4c:	81 30       	cpi	r24, 0x01	; 1
    6a4e:	89 f5       	brne	.+98     	; 0x6ab2 <resolve_seq+0x6e>
    6a50:	ce e3       	ldi	r28, 0x3E	; 62
    6a52:	d8 e0       	ldi	r29, 0x08	; 8
    6a54:	ce 01       	movw	r24, r28
    6a56:	6a ea       	ldi	r22, 0xAA	; 170
    6a58:	79 e0       	ldi	r23, 0x09	; 9
    6a5a:	0e 94 41 41 	call	0x8282	; 0x8282 <ipstr2bin>
    6a5e:	81 30       	cpi	r24, 0x01	; 1
    6a60:	91 f4       	brne	.+36     	; 0x6a86 <resolve_seq+0x42>
    6a62:	80 91 aa 09 	lds	r24, 0x09AA
    6a66:	90 91 ab 09 	lds	r25, 0x09AB
    6a6a:	a0 91 ac 09 	lds	r26, 0x09AC
    6a6e:	b0 91 ad 09 	lds	r27, 0x09AD
    6a72:	00 97       	sbiw	r24, 0x00	; 0
    6a74:	a1 05       	cpc	r26, r1
    6a76:	b1 05       	cpc	r27, r1
    6a78:	09 f0       	breq	.+2      	; 0x6a7c <resolve_seq+0x38>
    6a7a:	c9 c0       	rjmp	.+402    	; 0x6c0e <resolve_seq+0x1ca>
    6a7c:	10 92 b0 09 	sts	0x09B0, r1
    6a80:	10 92 e8 09 	sts	0x09E8, r1
    6a84:	c1 c0       	rjmp	.+386    	; 0x6c08 <resolve_seq+0x1c4>
    6a86:	fe 01       	movw	r30, r28
    6a88:	01 90       	ld	r0, Z+
    6a8a:	00 20       	and	r0, r0
    6a8c:	e9 f7       	brne	.-6      	; 0x6a88 <resolve_seq+0x44>
    6a8e:	31 97       	sbiw	r30, 0x01	; 1
    6a90:	ee 53       	subi	r30, 0x3E	; 62
    6a92:	f8 40       	sbci	r31, 0x08	; 8
    6a94:	70 97       	sbiw	r30, 0x10	; 16
    6a96:	38 f4       	brcc	.+14     	; 0x6aa6 <resolve_seq+0x62>
    6a98:	ce 01       	movw	r24, r28
    6a9a:	6e e2       	ldi	r22, 0x2E	; 46
    6a9c:	70 e0       	ldi	r23, 0x00	; 0
    6a9e:	0e 94 1e 6e 	call	0xdc3c	; 0xdc3c <strchr>
    6aa2:	00 97       	sbiw	r24, 0x00	; 0
    6aa4:	11 f0       	breq	.+4      	; 0x6aaa <resolve_seq+0x66>
    6aa6:	84 e0       	ldi	r24, 0x04	; 4
    6aa8:	01 c0       	rjmp	.+2      	; 0x6aac <resolve_seq+0x68>
    6aaa:	82 e0       	ldi	r24, 0x02	; 2
    6aac:	80 93 b0 09 	sts	0x09B0, r24
    6ab0:	ab c0       	rjmp	.+342    	; 0x6c08 <resolve_seq+0x1c4>
    6ab2:	82 30       	cpi	r24, 0x02	; 2
    6ab4:	09 f5       	brne	.+66     	; 0x6af8 <resolve_seq+0xb4>
    6ab6:	8e e3       	ldi	r24, 0x3E	; 62
    6ab8:	98 e0       	ldi	r25, 0x08	; 8
    6aba:	0e 94 f0 34 	call	0x69e0	; 0x69e0 <search_resolver>
    6abe:	60 93 aa 09 	sts	0x09AA, r22
    6ac2:	70 93 ab 09 	sts	0x09AB, r23
    6ac6:	80 93 ac 09 	sts	0x09AC, r24
    6aca:	90 93 ad 09 	sts	0x09AD, r25
    6ace:	61 15       	cp	r22, r1
    6ad0:	71 05       	cpc	r23, r1
    6ad2:	81 05       	cpc	r24, r1
    6ad4:	91 05       	cpc	r25, r1
    6ad6:	09 f0       	breq	.+2      	; 0x6ada <resolve_seq+0x96>
    6ad8:	9a c0       	rjmp	.+308    	; 0x6c0e <resolve_seq+0x1ca>
    6ada:	0e 94 c6 1f 	call	0x3f8c	; 0x3f8c <getcount1ms>
    6ade:	90 93 a7 09 	sts	0x09A7, r25
    6ae2:	80 93 a6 09 	sts	0x09A6, r24
    6ae6:	8e e3       	ldi	r24, 0x3E	; 62
    6ae8:	98 e0       	ldi	r25, 0x08	; 8
    6aea:	0e 94 6b 34 	call	0x68d6	; 0x68d6 <nbns_sendquery>
    6aee:	28 2f       	mov	r18, r24
    6af0:	10 92 af 09 	sts	0x09AF, r1
    6af4:	83 e0       	ldi	r24, 0x03	; 3
    6af6:	53 c0       	rjmp	.+166    	; 0x6b9e <resolve_seq+0x15a>
    6af8:	83 30       	cpi	r24, 0x03	; 3
    6afa:	79 f5       	brne	.+94     	; 0x6b5a <resolve_seq+0x116>
    6afc:	80 91 aa 09 	lds	r24, 0x09AA
    6b00:	90 91 ab 09 	lds	r25, 0x09AB
    6b04:	a0 91 ac 09 	lds	r26, 0x09AC
    6b08:	b0 91 ad 09 	lds	r27, 0x09AD
    6b0c:	00 97       	sbiw	r24, 0x00	; 0
    6b0e:	a1 05       	cpc	r26, r1
    6b10:	b1 05       	cpc	r27, r1
    6b12:	09 f0       	breq	.+2      	; 0x6b16 <resolve_seq+0xd2>
    6b14:	7c c0       	rjmp	.+248    	; 0x6c0e <resolve_seq+0x1ca>
    6b16:	0e 94 c6 1f 	call	0x3f8c	; 0x3f8c <getcount1ms>
    6b1a:	20 91 a6 09 	lds	r18, 0x09A6
    6b1e:	30 91 a7 09 	lds	r19, 0x09A7
    6b22:	82 1b       	sub	r24, r18
    6b24:	93 0b       	sbc	r25, r19
    6b26:	88 5e       	subi	r24, 0xE8	; 232
    6b28:	93 40       	sbci	r25, 0x03	; 3
    6b2a:	08 f4       	brcc	.+2      	; 0x6b2e <resolve_seq+0xea>
    6b2c:	6d c0       	rjmp	.+218    	; 0x6c08 <resolve_seq+0x1c4>
    6b2e:	80 91 af 09 	lds	r24, 0x09AF
    6b32:	8f 5f       	subi	r24, 0xFF	; 255
    6b34:	80 93 af 09 	sts	0x09AF, r24
    6b38:	83 30       	cpi	r24, 0x03	; 3
    6b3a:	20 f0       	brcs	.+8      	; 0x6b44 <resolve_seq+0x100>
    6b3c:	20 91 d2 07 	lds	r18, 0x07D2
    6b40:	2d 5e       	subi	r18, 0xED	; 237
    6b42:	5f c0       	rjmp	.+190    	; 0x6c02 <resolve_seq+0x1be>
    6b44:	0e 94 c6 1f 	call	0x3f8c	; 0x3f8c <getcount1ms>
    6b48:	90 93 a7 09 	sts	0x09A7, r25
    6b4c:	80 93 a6 09 	sts	0x09A6, r24
    6b50:	8e e3       	ldi	r24, 0x3E	; 62
    6b52:	98 e0       	ldi	r25, 0x08	; 8
    6b54:	0e 94 6b 34 	call	0x68d6	; 0x68d6 <nbns_sendquery>
    6b58:	53 c0       	rjmp	.+166    	; 0x6c00 <resolve_seq+0x1bc>
    6b5a:	84 30       	cpi	r24, 0x04	; 4
    6b5c:	19 f5       	brne	.+70     	; 0x6ba4 <resolve_seq+0x160>
    6b5e:	8e e3       	ldi	r24, 0x3E	; 62
    6b60:	98 e0       	ldi	r25, 0x08	; 8
    6b62:	0e 94 f0 34 	call	0x69e0	; 0x69e0 <search_resolver>
    6b66:	60 93 aa 09 	sts	0x09AA, r22
    6b6a:	70 93 ab 09 	sts	0x09AB, r23
    6b6e:	80 93 ac 09 	sts	0x09AC, r24
    6b72:	90 93 ad 09 	sts	0x09AD, r25
    6b76:	61 15       	cp	r22, r1
    6b78:	71 05       	cpc	r23, r1
    6b7a:	81 05       	cpc	r24, r1
    6b7c:	91 05       	cpc	r25, r1
    6b7e:	09 f0       	breq	.+2      	; 0x6b82 <resolve_seq+0x13e>
    6b80:	46 c0       	rjmp	.+140    	; 0x6c0e <resolve_seq+0x1ca>
    6b82:	0e 94 c6 1f 	call	0x3f8c	; 0x3f8c <getcount1ms>
    6b86:	90 93 a7 09 	sts	0x09A7, r25
    6b8a:	80 93 a6 09 	sts	0x09A6, r24
    6b8e:	8e e3       	ldi	r24, 0x3E	; 62
    6b90:	98 e0       	ldi	r25, 0x08	; 8
    6b92:	0e 94 6e 32 	call	0x64dc	; 0x64dc <dns_request>
    6b96:	28 2f       	mov	r18, r24
    6b98:	10 92 af 09 	sts	0x09AF, r1
    6b9c:	85 e0       	ldi	r24, 0x05	; 5
    6b9e:	80 93 b0 09 	sts	0x09B0, r24
    6ba2:	2f c0       	rjmp	.+94     	; 0x6c02 <resolve_seq+0x1be>
    6ba4:	85 30       	cpi	r24, 0x05	; 5
    6ba6:	81 f5       	brne	.+96     	; 0x6c08 <resolve_seq+0x1c4>
    6ba8:	80 91 aa 09 	lds	r24, 0x09AA
    6bac:	90 91 ab 09 	lds	r25, 0x09AB
    6bb0:	a0 91 ac 09 	lds	r26, 0x09AC
    6bb4:	b0 91 ad 09 	lds	r27, 0x09AD
    6bb8:	00 97       	sbiw	r24, 0x00	; 0
    6bba:	a1 05       	cpc	r26, r1
    6bbc:	b1 05       	cpc	r27, r1
    6bbe:	39 f5       	brne	.+78     	; 0x6c0e <resolve_seq+0x1ca>
    6bc0:	0e 94 c6 1f 	call	0x3f8c	; 0x3f8c <getcount1ms>
    6bc4:	20 91 a6 09 	lds	r18, 0x09A6
    6bc8:	30 91 a7 09 	lds	r19, 0x09A7
    6bcc:	82 1b       	sub	r24, r18
    6bce:	93 0b       	sbc	r25, r19
    6bd0:	88 5e       	subi	r24, 0xE8	; 232
    6bd2:	93 40       	sbci	r25, 0x03	; 3
    6bd4:	c8 f0       	brcs	.+50     	; 0x6c08 <resolve_seq+0x1c4>
    6bd6:	80 91 af 09 	lds	r24, 0x09AF
    6bda:	8f 5f       	subi	r24, 0xFF	; 255
    6bdc:	80 93 af 09 	sts	0x09AF, r24
    6be0:	83 30       	cpi	r24, 0x03	; 3
    6be2:	20 f0       	brcs	.+8      	; 0x6bec <resolve_seq+0x1a8>
    6be4:	20 91 d2 07 	lds	r18, 0x07D2
    6be8:	29 5e       	subi	r18, 0xE9	; 233
    6bea:	0b c0       	rjmp	.+22     	; 0x6c02 <resolve_seq+0x1be>
    6bec:	0e 94 c6 1f 	call	0x3f8c	; 0x3f8c <getcount1ms>
    6bf0:	90 93 a7 09 	sts	0x09A7, r25
    6bf4:	80 93 a6 09 	sts	0x09A6, r24
    6bf8:	8e e3       	ldi	r24, 0x3E	; 62
    6bfa:	98 e0       	ldi	r25, 0x08	; 8
    6bfc:	0e 94 6e 32 	call	0x64dc	; 0x64dc <dns_request>
    6c00:	28 2f       	mov	r18, r24
    6c02:	80 e0       	ldi	r24, 0x00	; 0
    6c04:	90 e0       	ldi	r25, 0x00	; 0
    6c06:	06 c0       	rjmp	.+12     	; 0x6c14 <resolve_seq+0x1d0>
    6c08:	80 e0       	ldi	r24, 0x00	; 0
    6c0a:	90 e0       	ldi	r25, 0x00	; 0
    6c0c:	02 c0       	rjmp	.+4      	; 0x6c12 <resolve_seq+0x1ce>
    6c0e:	81 e0       	ldi	r24, 0x01	; 1
    6c10:	90 e0       	ldi	r25, 0x00	; 0
    6c12:	20 e0       	ldi	r18, 0x00	; 0
    6c14:	90 93 b2 09 	sts	0x09B2, r25
    6c18:	80 93 b1 09 	sts	0x09B1, r24
    6c1c:	01 97       	sbiw	r24, 0x01	; 1
    6c1e:	11 f4       	brne	.+4      	; 0x6c24 <resolve_seq+0x1e0>
    6c20:	10 92 b0 09 	sts	0x09B0, r1
    6c24:	82 2f       	mov	r24, r18
    6c26:	df 91       	pop	r29
    6c28:	cf 91       	pop	r28
    6c2a:	08 95       	ret

00006c2c <cache_keep>:
    6c2c:	a0 e0       	ldi	r26, 0x00	; 0
    6c2e:	b0 e0       	ldi	r27, 0x00	; 0
    6c30:	ec e1       	ldi	r30, 0x1C	; 28
    6c32:	f6 e3       	ldi	r31, 0x36	; 54
    6c34:	0c 94 4d 6d 	jmp	0xda9a	; 0xda9a <__prologue_saves__+0x8>
    6c38:	ec 01       	movw	r28, r24
    6c3a:	6a 01       	movw	r12, r20
    6c3c:	7b 01       	movw	r14, r22
    6c3e:	48 01       	movw	r8, r16
    6c40:	59 01       	movw	r10, r18
    6c42:	00 e0       	ldi	r16, 0x00	; 0
    6c44:	10 e0       	ldi	r17, 0x00	; 0
    6c46:	89 e2       	ldi	r24, 0x29	; 41
    6c48:	68 2e       	mov	r6, r24
    6c4a:	71 2c       	mov	r7, r1
    6c4c:	06 9d       	mul	r16, r6
    6c4e:	c0 01       	movw	r24, r0
    6c50:	07 9d       	mul	r16, r7
    6c52:	90 0d       	add	r25, r0
    6c54:	16 9d       	mul	r17, r6
    6c56:	90 0d       	add	r25, r0
    6c58:	11 24       	eor	r1, r1
    6c5a:	82 5a       	subi	r24, 0xA2	; 162
    6c5c:	97 4f       	sbci	r25, 0xF7	; 247
    6c5e:	be 01       	movw	r22, r28
    6c60:	0e 94 29 6e 	call	0xdc52	; 0xdc52 <strcmp>
    6c64:	00 97       	sbiw	r24, 0x00	; 0
    6c66:	39 f1       	breq	.+78     	; 0x6cb6 <cache_keep+0x8a>
    6c68:	0f 5f       	subi	r16, 0xFF	; 255
    6c6a:	1f 4f       	sbci	r17, 0xFF	; 255
    6c6c:	08 30       	cpi	r16, 0x08	; 8
    6c6e:	11 05       	cpc	r17, r1
    6c70:	69 f7       	brne	.-38     	; 0x6c4c <cache_keep+0x20>
    6c72:	20 91 ae 09 	lds	r18, 0x09AE
    6c76:	82 2f       	mov	r24, r18
    6c78:	8f 5f       	subi	r24, 0xFF	; 255
    6c7a:	87 70       	andi	r24, 0x07	; 7
    6c7c:	80 93 ae 09 	sts	0x09AE, r24
    6c80:	30 e0       	ldi	r19, 0x00	; 0
    6c82:	89 e2       	ldi	r24, 0x29	; 41
    6c84:	90 e0       	ldi	r25, 0x00	; 0
    6c86:	28 9f       	mul	r18, r24
    6c88:	80 01       	movw	r16, r0
    6c8a:	29 9f       	mul	r18, r25
    6c8c:	10 0d       	add	r17, r0
    6c8e:	38 9f       	mul	r19, r24
    6c90:	10 0d       	add	r17, r0
    6c92:	11 24       	eor	r1, r1
    6c94:	02 5a       	subi	r16, 0xA2	; 162
    6c96:	17 4f       	sbci	r17, 0xF7	; 247
    6c98:	c8 01       	movw	r24, r16
    6c9a:	be 01       	movw	r22, r28
    6c9c:	0e 94 32 6e 	call	0xdc64	; 0xdc64 <strcpy>
    6ca0:	f8 01       	movw	r30, r16
    6ca2:	c0 a2       	std	Z+32, r12	; 0x20
    6ca4:	d1 a2       	std	Z+33, r13	; 0x21
    6ca6:	e2 a2       	std	Z+34, r14	; 0x22
    6ca8:	f3 a2       	std	Z+35, r15	; 0x23
    6caa:	84 a2       	std	Z+36, r8	; 0x24
    6cac:	95 a2       	std	Z+37, r9	; 0x25
    6cae:	a6 a2       	std	Z+38, r10	; 0x26
    6cb0:	b7 a2       	std	Z+39, r11	; 0x27
    6cb2:	81 e0       	ldi	r24, 0x01	; 1
    6cb4:	80 a7       	std	Z+40, r24	; 0x28
    6cb6:	cd b7       	in	r28, 0x3d	; 61
    6cb8:	de b7       	in	r29, 0x3e	; 62
    6cba:	ee e0       	ldi	r30, 0x0E	; 14
    6cbc:	0c 94 69 6d 	jmp	0xdad2	; 0xdad2 <__epilogue_restores__+0x8>

00006cc0 <timer2stamp>:
    6cc0:	a8 e0       	ldi	r26, 0x08	; 8
    6cc2:	b0 e0       	ldi	r27, 0x00	; 0
    6cc4:	e6 e6       	ldi	r30, 0x66	; 102
    6cc6:	f6 e3       	ldi	r31, 0x36	; 54
    6cc8:	0c 94 51 6d 	jmp	0xdaa2	; 0xdaa2 <__prologue_saves__+0x10>
    6ccc:	6d 83       	std	Y+5, r22	; 0x05
    6cce:	7e 83       	std	Y+6, r23	; 0x06
    6cd0:	8f 83       	std	Y+7, r24	; 0x07
    6cd2:	98 87       	std	Y+8, r25	; 0x08
    6cd4:	19 82       	std	Y+1, r1	; 0x01
    6cd6:	1a 82       	std	Y+2, r1	; 0x02
    6cd8:	1b 82       	std	Y+3, r1	; 0x03
    6cda:	1c 82       	std	Y+4, r1	; 0x04
    6cdc:	29 81       	ldd	r18, Y+1	; 0x01
    6cde:	3a 81       	ldd	r19, Y+2	; 0x02
    6ce0:	4b 81       	ldd	r20, Y+3	; 0x03
    6ce2:	5c 81       	ldd	r21, Y+4	; 0x04
    6ce4:	f8 ee       	ldi	r31, 0xE8	; 232
    6ce6:	af 2e       	mov	r10, r31
    6ce8:	e3 e0       	ldi	r30, 0x03	; 3
    6cea:	be 2e       	mov	r11, r30
    6cec:	cc 24       	eor	r12, r12
    6cee:	dd 24       	eor	r13, r13
    6cf0:	ee 24       	eor	r14, r14
    6cf2:	ff 24       	eor	r15, r15
    6cf4:	00 e0       	ldi	r16, 0x00	; 0
    6cf6:	10 e0       	ldi	r17, 0x00	; 0
    6cf8:	0e 94 58 66 	call	0xccb0	; 0xccb0 <__udivdi3>
    6cfc:	95 2f       	mov	r25, r21
    6cfe:	b9 01       	movw	r22, r18
    6d00:	84 2f       	mov	r24, r20
    6d02:	28 96       	adiw	r28, 0x08	; 8
    6d04:	ea e0       	ldi	r30, 0x0A	; 10
    6d06:	0c 94 6d 6d 	jmp	0xdada	; 0xdada <__epilogue_restores__+0x10>

00006d0a <ntp_calsub>:
    6d0a:	aa e1       	ldi	r26, 0x1A	; 26
    6d0c:	b0 e0       	ldi	r27, 0x00	; 0
    6d0e:	eb e8       	ldi	r30, 0x8B	; 139
    6d10:	f6 e3       	ldi	r31, 0x36	; 54
    6d12:	0c 94 49 6d 	jmp	0xda92	; 0xda92 <__prologue_saves__>
    6d16:	29 83       	std	Y+1, r18	; 0x01
    6d18:	3a 83       	std	Y+2, r19	; 0x02
    6d1a:	4b 83       	std	Y+3, r20	; 0x03
    6d1c:	5c 83       	std	Y+4, r21	; 0x04
    6d1e:	6d 83       	std	Y+5, r22	; 0x05
    6d20:	7e 83       	std	Y+6, r23	; 0x06
    6d22:	8f 83       	std	Y+7, r24	; 0x07
    6d24:	98 87       	std	Y+8, r25	; 0x08
    6d26:	4d 80       	ldd	r4, Y+5	; 0x05
    6d28:	5e 80       	ldd	r5, Y+6	; 0x06
    6d2a:	6f 80       	ldd	r6, Y+7	; 0x07
    6d2c:	78 84       	ldd	r7, Y+8	; 0x08
    6d2e:	89 81       	ldd	r24, Y+1	; 0x01
    6d30:	9a 81       	ldd	r25, Y+2	; 0x02
    6d32:	ab 81       	ldd	r26, Y+3	; 0x03
    6d34:	bc 81       	ldd	r27, Y+4	; 0x04
    6d36:	4c 01       	movw	r8, r24
    6d38:	5d 01       	movw	r10, r26
    6d3a:	cc 24       	eor	r12, r12
    6d3c:	dd 24       	eor	r13, r13
    6d3e:	76 01       	movw	r14, r12
    6d40:	9c 01       	movw	r18, r24
    6d42:	a5 01       	movw	r20, r10
    6d44:	60 e0       	ldi	r22, 0x00	; 0
    6d46:	70 e0       	ldi	r23, 0x00	; 0
    6d48:	80 e0       	ldi	r24, 0x00	; 0
    6d4a:	90 e0       	ldi	r25, 0x00	; 0
    6d4c:	02 e0       	ldi	r16, 0x02	; 2
    6d4e:	0e 94 54 65 	call	0xcaa8	; 0xcaa8 <__ashldi3>
    6d52:	12 2f       	mov	r17, r18
    6d54:	23 2e       	mov	r2, r19
    6d56:	49 8b       	std	Y+17, r20	; 0x11
    6d58:	5a 8b       	std	Y+18, r21	; 0x12
    6d5a:	6b 8b       	std	Y+19, r22	; 0x13
    6d5c:	7c 8b       	std	Y+20, r23	; 0x14
    6d5e:	8d 8b       	std	Y+21, r24	; 0x15
    6d60:	9e 8b       	std	Y+22, r25	; 0x16
    6d62:	05 e0       	ldi	r16, 0x05	; 5
    6d64:	0e 94 54 65 	call	0xcaa8	; 0xcaa8 <__ashldi3>
    6d68:	a3 2f       	mov	r26, r19
    6d6a:	b4 2f       	mov	r27, r20
    6d6c:	05 2f       	mov	r16, r21
    6d6e:	6f 8b       	std	Y+23, r22	; 0x17
    6d70:	78 8f       	std	Y+24, r23	; 0x18
    6d72:	89 8f       	std	Y+25, r24	; 0x19
    6d74:	9a 8f       	std	Y+26, r25	; 0x1a
    6d76:	32 2e       	mov	r3, r18
    6d78:	31 1a       	sub	r3, r17
    6d7a:	f1 e0       	ldi	r31, 0x01	; 1
    6d7c:	23 15       	cp	r18, r3
    6d7e:	08 f0       	brcs	.+2      	; 0x6d82 <ntp_calsub+0x78>
    6d80:	f0 e0       	ldi	r31, 0x00	; 0
    6d82:	3a 2f       	mov	r19, r26
    6d84:	32 19       	sub	r19, r2
    6d86:	e1 e0       	ldi	r30, 0x01	; 1
    6d88:	a3 17       	cp	r26, r19
    6d8a:	08 f0       	brcs	.+2      	; 0x6d8e <ntp_calsub+0x84>
    6d8c:	e0 e0       	ldi	r30, 0x00	; 0
    6d8e:	13 2f       	mov	r17, r19
    6d90:	1f 1b       	sub	r17, r31
    6d92:	21 e0       	ldi	r18, 0x01	; 1
    6d94:	31 17       	cp	r19, r17
    6d96:	08 f0       	brcs	.+2      	; 0x6d9a <ntp_calsub+0x90>
    6d98:	20 e0       	ldi	r18, 0x00	; 0
    6d9a:	e2 2b       	or	r30, r18
    6d9c:	4b 2f       	mov	r20, r27
    6d9e:	29 89       	ldd	r18, Y+17	; 0x11
    6da0:	42 1b       	sub	r20, r18
    6da2:	31 e0       	ldi	r19, 0x01	; 1
    6da4:	b4 17       	cp	r27, r20
    6da6:	08 f0       	brcs	.+2      	; 0x6daa <ntp_calsub+0xa0>
    6da8:	30 e0       	ldi	r19, 0x00	; 0
    6daa:	b4 2f       	mov	r27, r20
    6dac:	be 1b       	sub	r27, r30
    6dae:	21 e0       	ldi	r18, 0x01	; 1
    6db0:	4b 17       	cp	r20, r27
    6db2:	08 f0       	brcs	.+2      	; 0x6db6 <ntp_calsub+0xac>
    6db4:	20 e0       	ldi	r18, 0x00	; 0
    6db6:	32 2b       	or	r19, r18
    6db8:	50 2f       	mov	r21, r16
    6dba:	8a 89       	ldd	r24, Y+18	; 0x12
    6dbc:	58 1b       	sub	r21, r24
    6dbe:	41 e0       	ldi	r20, 0x01	; 1
    6dc0:	05 17       	cp	r16, r21
    6dc2:	08 f0       	brcs	.+2      	; 0x6dc6 <ntp_calsub+0xbc>
    6dc4:	40 e0       	ldi	r20, 0x00	; 0
    6dc6:	05 2f       	mov	r16, r21
    6dc8:	03 1b       	sub	r16, r19
    6dca:	21 e0       	ldi	r18, 0x01	; 1
    6dcc:	50 17       	cp	r21, r16
    6dce:	08 f0       	brcs	.+2      	; 0x6dd2 <ntp_calsub+0xc8>
    6dd0:	20 e0       	ldi	r18, 0x00	; 0
    6dd2:	42 2b       	or	r20, r18
    6dd4:	6f 89       	ldd	r22, Y+23	; 0x17
    6dd6:	9b 89       	ldd	r25, Y+19	; 0x13
    6dd8:	69 1b       	sub	r22, r25
    6dda:	31 e0       	ldi	r19, 0x01	; 1
    6ddc:	2f 89       	ldd	r18, Y+23	; 0x17
    6dde:	26 17       	cp	r18, r22
    6de0:	08 f0       	brcs	.+2      	; 0x6de4 <ntp_calsub+0xda>
    6de2:	30 e0       	ldi	r19, 0x00	; 0
    6de4:	96 2f       	mov	r25, r22
    6de6:	94 1b       	sub	r25, r20
    6de8:	21 e0       	ldi	r18, 0x01	; 1
    6dea:	69 17       	cp	r22, r25
    6dec:	08 f0       	brcs	.+2      	; 0x6df0 <ntp_calsub+0xe6>
    6dee:	20 e0       	ldi	r18, 0x00	; 0
    6df0:	32 2b       	or	r19, r18
    6df2:	78 8d       	ldd	r23, Y+24	; 0x18
    6df4:	8c 89       	ldd	r24, Y+20	; 0x14
    6df6:	78 1b       	sub	r23, r24
    6df8:	41 e0       	ldi	r20, 0x01	; 1
    6dfa:	28 8d       	ldd	r18, Y+24	; 0x18
    6dfc:	27 17       	cp	r18, r23
    6dfe:	08 f0       	brcs	.+2      	; 0x6e02 <ntp_calsub+0xf8>
    6e00:	40 e0       	ldi	r20, 0x00	; 0
    6e02:	a7 2f       	mov	r26, r23
    6e04:	a3 1b       	sub	r26, r19
    6e06:	21 e0       	ldi	r18, 0x01	; 1
    6e08:	7a 17       	cp	r23, r26
    6e0a:	08 f0       	brcs	.+2      	; 0x6e0e <ntp_calsub+0x104>
    6e0c:	20 e0       	ldi	r18, 0x00	; 0
    6e0e:	42 2b       	or	r20, r18
    6e10:	89 8d       	ldd	r24, Y+25	; 0x19
    6e12:	3d 89       	ldd	r19, Y+21	; 0x15
    6e14:	83 1b       	sub	r24, r19
    6e16:	21 e0       	ldi	r18, 0x01	; 1
    6e18:	39 8d       	ldd	r19, Y+25	; 0x19
    6e1a:	38 17       	cp	r19, r24
    6e1c:	08 f0       	brcs	.+2      	; 0x6e20 <ntp_calsub+0x116>
    6e1e:	20 e0       	ldi	r18, 0x00	; 0
    6e20:	e8 2f       	mov	r30, r24
    6e22:	e4 1b       	sub	r30, r20
    6e24:	31 e0       	ldi	r19, 0x01	; 1
    6e26:	8e 17       	cp	r24, r30
    6e28:	08 f0       	brcs	.+2      	; 0x6e2c <ntp_calsub+0x122>
    6e2a:	30 e0       	ldi	r19, 0x00	; 0
    6e2c:	23 2b       	or	r18, r19
    6e2e:	fa 8d       	ldd	r31, Y+26	; 0x1a
    6e30:	8e 89       	ldd	r24, Y+22	; 0x16
    6e32:	f8 1b       	sub	r31, r24
    6e34:	f2 1b       	sub	r31, r18
    6e36:	23 2c       	mov	r2, r3
    6e38:	28 0c       	add	r2, r8
    6e3a:	31 e0       	ldi	r19, 0x01	; 1
    6e3c:	23 14       	cp	r2, r3
    6e3e:	08 f0       	brcs	.+2      	; 0x6e42 <ntp_calsub+0x138>
    6e40:	30 e0       	ldi	r19, 0x00	; 0
    6e42:	81 2f       	mov	r24, r17
    6e44:	89 0d       	add	r24, r9
    6e46:	41 e0       	ldi	r20, 0x01	; 1
    6e48:	81 17       	cp	r24, r17
    6e4a:	08 f0       	brcs	.+2      	; 0x6e4e <ntp_calsub+0x144>
    6e4c:	40 e0       	ldi	r20, 0x00	; 0
    6e4e:	38 0f       	add	r19, r24
    6e50:	51 e0       	ldi	r21, 0x01	; 1
    6e52:	38 17       	cp	r19, r24
    6e54:	08 f0       	brcs	.+2      	; 0x6e58 <ntp_calsub+0x14e>
    6e56:	50 e0       	ldi	r21, 0x00	; 0
    6e58:	45 2b       	or	r20, r21
    6e5a:	8b 2f       	mov	r24, r27
    6e5c:	8a 0d       	add	r24, r10
    6e5e:	51 e0       	ldi	r21, 0x01	; 1
    6e60:	8b 17       	cp	r24, r27
    6e62:	08 f0       	brcs	.+2      	; 0x6e66 <ntp_calsub+0x15c>
    6e64:	50 e0       	ldi	r21, 0x00	; 0
    6e66:	48 0f       	add	r20, r24
    6e68:	61 e0       	ldi	r22, 0x01	; 1
    6e6a:	48 17       	cp	r20, r24
    6e6c:	08 f0       	brcs	.+2      	; 0x6e70 <ntp_calsub+0x166>
    6e6e:	60 e0       	ldi	r22, 0x00	; 0
    6e70:	56 2b       	or	r21, r22
    6e72:	20 2f       	mov	r18, r16
    6e74:	2b 0d       	add	r18, r11
    6e76:	81 e0       	ldi	r24, 0x01	; 1
    6e78:	20 17       	cp	r18, r16
    6e7a:	08 f0       	brcs	.+2      	; 0x6e7e <ntp_calsub+0x174>
    6e7c:	80 e0       	ldi	r24, 0x00	; 0
    6e7e:	52 0f       	add	r21, r18
    6e80:	61 e0       	ldi	r22, 0x01	; 1
    6e82:	52 17       	cp	r21, r18
    6e84:	08 f0       	brcs	.+2      	; 0x6e88 <ntp_calsub+0x17e>
    6e86:	60 e0       	ldi	r22, 0x00	; 0
    6e88:	68 2b       	or	r22, r24
    6e8a:	69 0f       	add	r22, r25
    6e8c:	71 e0       	ldi	r23, 0x01	; 1
    6e8e:	69 17       	cp	r22, r25
    6e90:	08 f0       	brcs	.+2      	; 0x6e94 <ntp_calsub+0x18a>
    6e92:	70 e0       	ldi	r23, 0x00	; 0
    6e94:	7a 0f       	add	r23, r26
    6e96:	81 e0       	ldi	r24, 0x01	; 1
    6e98:	7a 17       	cp	r23, r26
    6e9a:	08 f0       	brcs	.+2      	; 0x6e9e <ntp_calsub+0x194>
    6e9c:	80 e0       	ldi	r24, 0x00	; 0
    6e9e:	8e 0f       	add	r24, r30
    6ea0:	91 e0       	ldi	r25, 0x01	; 1
    6ea2:	8e 17       	cp	r24, r30
    6ea4:	08 f0       	brcs	.+2      	; 0x6ea8 <ntp_calsub+0x19e>
    6ea6:	90 e0       	ldi	r25, 0x00	; 0
    6ea8:	22 2d       	mov	r18, r2
    6eaa:	9f 0f       	add	r25, r31
    6eac:	03 e0       	ldi	r16, 0x03	; 3
    6eae:	0e 94 54 65 	call	0xcaa8	; 0xcaa8 <__ashldi3>
    6eb2:	29 87       	std	Y+9, r18	; 0x09
    6eb4:	3a 87       	std	Y+10, r19	; 0x0a
    6eb6:	4b 87       	std	Y+11, r20	; 0x0b
    6eb8:	5c 87       	std	Y+12, r21	; 0x0c
    6eba:	6d 87       	std	Y+13, r22	; 0x0d
    6ebc:	7e 87       	std	Y+14, r23	; 0x0e
    6ebe:	8f 87       	std	Y+15, r24	; 0x0f
    6ec0:	98 8b       	std	Y+16, r25	; 0x10
    6ec2:	ed 84       	ldd	r14, Y+13	; 0x0d
    6ec4:	fe 84       	ldd	r15, Y+14	; 0x0e
    6ec6:	0f 85       	ldd	r16, Y+15	; 0x0f
    6ec8:	18 89       	ldd	r17, Y+16	; 0x10
    6eca:	80 91 49 01 	lds	r24, 0x0149
    6ece:	90 91 4a 01 	lds	r25, 0x014A
    6ed2:	89 2b       	or	r24, r25
    6ed4:	09 f5       	brne	.+66     	; 0x6f18 <ntp_calsub+0x20e>
    6ed6:	60 91 fd 07 	lds	r22, 0x07FD
    6eda:	70 91 fe 07 	lds	r23, 0x07FE
    6ede:	61 15       	cp	r22, r1
    6ee0:	71 05       	cpc	r23, r1
    6ee2:	d1 f0       	breq	.+52     	; 0x6f18 <ntp_calsub+0x20e>
    6ee4:	80 91 eb 09 	lds	r24, 0x09EB
    6ee8:	90 91 ec 09 	lds	r25, 0x09EC
    6eec:	89 2b       	or	r24, r25
    6eee:	a1 f4       	brne	.+40     	; 0x6f18 <ntp_calsub+0x20e>
    6ef0:	a3 01       	movw	r20, r6
    6ef2:	92 01       	movw	r18, r4
    6ef4:	77 fe       	sbrs	r7, 7
    6ef6:	07 c0       	rjmp	.+14     	; 0x6f06 <ntp_calsub+0x1fc>
    6ef8:	22 27       	eor	r18, r18
    6efa:	33 27       	eor	r19, r19
    6efc:	a9 01       	movw	r20, r18
    6efe:	24 19       	sub	r18, r4
    6f00:	35 09       	sbc	r19, r5
    6f02:	46 09       	sbc	r20, r6
    6f04:	57 09       	sbc	r21, r7
    6f06:	cb 01       	movw	r24, r22
    6f08:	a0 e0       	ldi	r26, 0x00	; 0
    6f0a:	b0 e0       	ldi	r27, 0x00	; 0
    6f0c:	82 17       	cp	r24, r18
    6f0e:	93 07       	cpc	r25, r19
    6f10:	a4 07       	cpc	r26, r20
    6f12:	b5 07       	cpc	r27, r21
    6f14:	0c f4       	brge	.+2      	; 0x6f18 <ntp_calsub+0x20e>
    6f16:	06 c1       	rjmp	.+524    	; 0x7124 <ntp_calsub+0x41a>
    6f18:	67 01       	movw	r12, r14
    6f1a:	10 92 ec 09 	sts	0x09EC, r1
    6f1e:	10 92 eb 09 	sts	0x09EB, r1
    6f22:	41 14       	cp	r4, r1
    6f24:	51 04       	cpc	r5, r1
    6f26:	61 04       	cpc	r6, r1
    6f28:	71 04       	cpc	r7, r1
    6f2a:	79 f4       	brne	.+30     	; 0x6f4a <ntp_calsub+0x240>
    6f2c:	97 01       	movw	r18, r14
    6f2e:	f7 fe       	sbrs	r15, 7
    6f30:	04 c0       	rjmp	.+8      	; 0x6f3a <ntp_calsub+0x230>
    6f32:	22 27       	eor	r18, r18
    6f34:	33 27       	eor	r19, r19
    6f36:	2e 19       	sub	r18, r14
    6f38:	3f 09       	sbc	r19, r15
    6f3a:	80 91 01 08 	lds	r24, 0x0801
    6f3e:	90 91 02 08 	lds	r25, 0x0802
    6f42:	28 17       	cp	r18, r24
    6f44:	39 07       	cpc	r19, r25
    6f46:	0c f4       	brge	.+2      	; 0x6f4a <ntp_calsub+0x240>
    6f48:	6f c0       	rjmp	.+222    	; 0x7028 <ntp_calsub+0x31e>
    6f4a:	f8 94       	cli
    6f4c:	10 92 00 08 	sts	0x0800, r1
    6f50:	10 92 ff 07 	sts	0x07FF, r1
    6f54:	80 91 fe 0b 	lds	r24, 0x0BFE
    6f58:	90 91 ff 0b 	lds	r25, 0x0BFF
    6f5c:	a0 91 00 0c 	lds	r26, 0x0C00
    6f60:	b0 91 01 0c 	lds	r27, 0x0C01
    6f64:	84 0d       	add	r24, r4
    6f66:	95 1d       	adc	r25, r5
    6f68:	a6 1d       	adc	r26, r6
    6f6a:	b7 1d       	adc	r27, r7
    6f6c:	80 93 fe 0b 	sts	0x0BFE, r24
    6f70:	90 93 ff 0b 	sts	0x0BFF, r25
    6f74:	a0 93 00 0c 	sts	0x0C00, r26
    6f78:	b0 93 01 0c 	sts	0x0C01, r27
    6f7c:	80 91 fc 0b 	lds	r24, 0x0BFC
    6f80:	90 91 fd 0b 	lds	r25, 0x0BFD
    6f84:	8c 0d       	add	r24, r12
    6f86:	9d 1d       	adc	r25, r13
    6f88:	90 93 fd 0b 	sts	0x0BFD, r25
    6f8c:	80 93 fc 0b 	sts	0x0BFC, r24
    6f90:	80 91 fc 0b 	lds	r24, 0x0BFC
    6f94:	90 91 fd 0b 	lds	r25, 0x0BFD
    6f98:	97 ff       	sbrs	r25, 7
    6f9a:	2a c0       	rjmp	.+84     	; 0x6ff0 <ntp_calsub+0x2e6>
    6f9c:	80 91 fe 0b 	lds	r24, 0x0BFE
    6fa0:	90 91 ff 0b 	lds	r25, 0x0BFF
    6fa4:	a0 91 00 0c 	lds	r26, 0x0C00
    6fa8:	b0 91 01 0c 	lds	r27, 0x0C01
    6fac:	18 16       	cp	r1, r24
    6fae:	19 06       	cpc	r1, r25
    6fb0:	1a 06       	cpc	r1, r26
    6fb2:	1b 06       	cpc	r1, r27
    6fb4:	ec f4       	brge	.+58     	; 0x6ff0 <ntp_calsub+0x2e6>
    6fb6:	80 91 fe 0b 	lds	r24, 0x0BFE
    6fba:	90 91 ff 0b 	lds	r25, 0x0BFF
    6fbe:	a0 91 00 0c 	lds	r26, 0x0C00
    6fc2:	b0 91 01 0c 	lds	r27, 0x0C01
    6fc6:	01 97       	sbiw	r24, 0x01	; 1
    6fc8:	a1 09       	sbc	r26, r1
    6fca:	b1 09       	sbc	r27, r1
    6fcc:	80 93 fe 0b 	sts	0x0BFE, r24
    6fd0:	90 93 ff 0b 	sts	0x0BFF, r25
    6fd4:	a0 93 00 0c 	sts	0x0C00, r26
    6fd8:	b0 93 01 0c 	sts	0x0C01, r27
    6fdc:	80 91 fc 0b 	lds	r24, 0x0BFC
    6fe0:	90 91 fd 0b 	lds	r25, 0x0BFD
    6fe4:	88 51       	subi	r24, 0x18	; 24
    6fe6:	9c 4f       	sbci	r25, 0xFC	; 252
    6fe8:	90 93 fd 0b 	sts	0x0BFD, r25
    6fec:	80 93 fc 0b 	sts	0x0BFC, r24
    6ff0:	80 91 fe 0b 	lds	r24, 0x0BFE
    6ff4:	90 91 ff 0b 	lds	r25, 0x0BFF
    6ff8:	a0 91 00 0c 	lds	r26, 0x0C00
    6ffc:	b0 91 01 0c 	lds	r27, 0x0C01
    7000:	80 93 ec 07 	sts	0x07EC, r24
    7004:	90 93 ed 07 	sts	0x07ED, r25
    7008:	a0 93 ee 07 	sts	0x07EE, r26
    700c:	b0 93 ef 07 	sts	0x07EF, r27
    7010:	80 91 fc 0b 	lds	r24, 0x0BFC
    7014:	90 91 fd 0b 	lds	r25, 0x0BFD
    7018:	90 93 f3 07 	sts	0x07F3, r25
    701c:	80 93 f2 07 	sts	0x07F2, r24
    7020:	78 94       	sei
    7022:	77 fe       	sbrs	r7, 7
    7024:	2c c0       	rjmp	.+88     	; 0x707e <ntp_calsub+0x374>
    7026:	1f c0       	rjmp	.+62     	; 0x7066 <ntp_calsub+0x35c>
    7028:	f8 94       	cli
    702a:	d0 92 00 08 	sts	0x0800, r13
    702e:	c0 92 ff 07 	sts	0x07FF, r12
    7032:	80 91 fe 0b 	lds	r24, 0x0BFE
    7036:	90 91 ff 0b 	lds	r25, 0x0BFF
    703a:	a0 91 00 0c 	lds	r26, 0x0C00
    703e:	b0 91 01 0c 	lds	r27, 0x0C01
    7042:	80 93 ec 07 	sts	0x07EC, r24
    7046:	90 93 ed 07 	sts	0x07ED, r25
    704a:	a0 93 ee 07 	sts	0x07EE, r26
    704e:	b0 93 ef 07 	sts	0x07EF, r27
    7052:	80 91 fc 0b 	lds	r24, 0x0BFC
    7056:	90 91 fd 0b 	lds	r25, 0x0BFD
    705a:	90 93 f3 07 	sts	0x07F3, r25
    705e:	80 93 f2 07 	sts	0x07F2, r24
    7062:	78 94       	sei
    7064:	0c c0       	rjmp	.+24     	; 0x707e <ntp_calsub+0x374>
    7066:	1c 14       	cp	r1, r12
    7068:	1d 04       	cpc	r1, r13
    706a:	4c f4       	brge	.+18     	; 0x707e <ntp_calsub+0x374>
    706c:	08 94       	sec
    706e:	41 1c       	adc	r4, r1
    7070:	51 1c       	adc	r5, r1
    7072:	61 1c       	adc	r6, r1
    7074:	71 1c       	adc	r7, r1
    7076:	28 e1       	ldi	r18, 0x18	; 24
    7078:	3c ef       	ldi	r19, 0xFC	; 252
    707a:	c2 0e       	add	r12, r18
    707c:	d3 1e       	adc	r13, r19
    707e:	d3 01       	movw	r26, r6
    7080:	c2 01       	movw	r24, r4
    7082:	80 50       	subi	r24, 0x00	; 0
    7084:	90 48       	sbci	r25, 0x80	; 128
    7086:	af 4f       	sbci	r26, 0xFF	; 255
    7088:	bf 4f       	sbci	r27, 0xFF	; 255
    708a:	80 50       	subi	r24, 0x00	; 0
    708c:	90 40       	sbci	r25, 0x00	; 0
    708e:	a1 40       	sbci	r26, 0x01	; 1
    7090:	b0 40       	sbci	r27, 0x00	; 0
    7092:	38 f0       	brcs	.+14     	; 0x70a2 <ntp_calsub+0x398>
    7094:	8f ef       	ldi	r24, 0xFF	; 255
    7096:	9f e7       	ldi	r25, 0x7F	; 127
    7098:	90 93 d5 07 	sts	0x07D5, r25
    709c:	80 93 d4 07 	sts	0x07D4, r24
    70a0:	04 c0       	rjmp	.+8      	; 0x70aa <ntp_calsub+0x3a0>
    70a2:	50 92 d5 07 	sts	0x07D5, r5
    70a6:	40 92 d4 07 	sts	0x07D4, r4
    70aa:	d0 92 d7 07 	sts	0x07D7, r13
    70ae:	c0 92 d6 07 	sts	0x07D6, r12
    70b2:	80 91 f3 09 	lds	r24, 0x09F3
    70b6:	88 23       	and	r24, r24
    70b8:	61 f1       	breq	.+88     	; 0x7112 <ntp_calsub+0x408>
    70ba:	c3 01       	movw	r24, r6
    70bc:	b2 01       	movw	r22, r4
    70be:	28 ee       	ldi	r18, 0xE8	; 232
    70c0:	33 e0       	ldi	r19, 0x03	; 3
    70c2:	40 e0       	ldi	r20, 0x00	; 0
    70c4:	50 e0       	ldi	r21, 0x00	; 0
    70c6:	0e 94 cd 6c 	call	0xd99a	; 0xd99a <__mulsi3>
    70ca:	9b 01       	movw	r18, r22
    70cc:	ac 01       	movw	r20, r24
    70ce:	c6 01       	movw	r24, r12
    70d0:	aa 27       	eor	r26, r26
    70d2:	97 fd       	sbrc	r25, 7
    70d4:	a0 95       	com	r26
    70d6:	ba 2f       	mov	r27, r26
    70d8:	82 0f       	add	r24, r18
    70da:	93 1f       	adc	r25, r19
    70dc:	a4 1f       	adc	r26, r20
    70de:	b5 1f       	adc	r27, r21
    70e0:	b7 fd       	sbrc	r27, 7
    70e2:	04 c0       	rjmp	.+8      	; 0x70ec <ntp_calsub+0x3e2>
    70e4:	b6 01       	movw	r22, r12
    70e6:	62 0f       	add	r22, r18
    70e8:	73 1f       	adc	r23, r19
    70ea:	0a c0       	rjmp	.+20     	; 0x7100 <ntp_calsub+0x3f6>
    70ec:	c3 01       	movw	r24, r6
    70ee:	b2 01       	movw	r22, r4
    70f0:	28 e1       	ldi	r18, 0x18	; 24
    70f2:	3c ef       	ldi	r19, 0xFC	; 252
    70f4:	4f ef       	ldi	r20, 0xFF	; 255
    70f6:	5f ef       	ldi	r21, 0xFF	; 255
    70f8:	0e 94 cd 6c 	call	0xd99a	; 0xd99a <__mulsi3>
    70fc:	6c 19       	sub	r22, r12
    70fe:	7d 09       	sbc	r23, r13
    7100:	70 93 f2 09 	sts	0x09F2, r23
    7104:	60 93 f1 09 	sts	0x09F1, r22
    7108:	6d 54       	subi	r22, 0x4D	; 77
    710a:	71 40       	sbci	r23, 0x01	; 1
    710c:	14 f0       	brlt	.+4      	; 0x7112 <ntp_calsub+0x408>
    710e:	81 e0       	ldi	r24, 0x01	; 1
    7110:	01 c0       	rjmp	.+2      	; 0x7114 <ntp_calsub+0x40a>
    7112:	82 e0       	ldi	r24, 0x02	; 2
    7114:	80 93 f3 09 	sts	0x09F3, r24
    7118:	81 e0       	ldi	r24, 0x01	; 1
    711a:	90 e0       	ldi	r25, 0x00	; 0
    711c:	90 93 08 0c 	sts	0x0C08, r25
    7120:	80 93 07 0c 	sts	0x0C07, r24
    7124:	6a 96       	adiw	r28, 0x1a	; 26
    7126:	e2 e1       	ldi	r30, 0x12	; 18
    7128:	0c 94 65 6d 	jmp	0xdaca	; 0xdaca <__epilogue_restores__>

0000712c <nextntpsrv>:
    712c:	a4 e2       	ldi	r26, 0x24	; 36
    712e:	b0 e0       	ldi	r27, 0x00	; 0
    7130:	ec e9       	ldi	r30, 0x9C	; 156
    7132:	f8 e3       	ldi	r31, 0x38	; 56
    7134:	0c 94 53 6d 	jmp	0xdaa6	; 0xdaa6 <__prologue_saves__+0x14>
    7138:	10 91 d2 07 	lds	r17, 0x07D2
    713c:	10 93 d3 07 	sts	0x07D3, r17
    7140:	00 e0       	ldi	r16, 0x00	; 0
    7142:	b5 e0       	ldi	r27, 0x05	; 5
    7144:	eb 2e       	mov	r14, r27
    7146:	f1 2c       	mov	r15, r1
    7148:	ec 0e       	add	r14, r28
    714a:	fd 1e       	adc	r15, r29
    714c:	6e 01       	movw	r12, r28
    714e:	08 94       	sec
    7150:	c1 1c       	adc	r12, r1
    7152:	d1 1c       	adc	r13, r1
    7154:	1f 5f       	subi	r17, 0xFF	; 255
    7156:	13 70       	andi	r17, 0x03	; 3
    7158:	e1 2f       	mov	r30, r17
    715a:	f0 e0       	ldi	r31, 0x00	; 0
    715c:	ee 0f       	add	r30, r30
    715e:	ff 1f       	adc	r31, r31
    7160:	e1 59       	subi	r30, 0x91	; 145
    7162:	fe 4f       	sbci	r31, 0xFE	; 254
    7164:	65 91       	lpm	r22, Z+
    7166:	74 91       	lpm	r23, Z+
    7168:	c7 01       	movw	r24, r14
    716a:	0e 94 32 6e 	call	0xdc64	; 0xdc64 <strcpy>
    716e:	c7 01       	movw	r24, r14
    7170:	b6 01       	movw	r22, r12
    7172:	0e 94 41 41 	call	0x8282	; 0x8282 <ipstr2bin>
    7176:	81 30       	cpi	r24, 0x01	; 1
    7178:	41 f4       	brne	.+16     	; 0x718a <nextntpsrv+0x5e>
    717a:	89 81       	ldd	r24, Y+1	; 0x01
    717c:	9a 81       	ldd	r25, Y+2	; 0x02
    717e:	ab 81       	ldd	r26, Y+3	; 0x03
    7180:	bc 81       	ldd	r27, Y+4	; 0x04
    7182:	00 97       	sbiw	r24, 0x00	; 0
    7184:	a1 05       	cpc	r26, r1
    7186:	b1 05       	cpc	r27, r1
    7188:	19 f0       	breq	.+6      	; 0x7190 <nextntpsrv+0x64>
    718a:	10 93 d2 07 	sts	0x07D2, r17
    718e:	03 c0       	rjmp	.+6      	; 0x7196 <nextntpsrv+0x6a>
    7190:	0f 5f       	subi	r16, 0xFF	; 255
    7192:	04 30       	cpi	r16, 0x04	; 4
    7194:	f9 f6       	brne	.-66     	; 0x7154 <nextntpsrv+0x28>
    7196:	a4 96       	adiw	r28, 0x24	; 36
    7198:	e8 e0       	ldi	r30, 0x08	; 8
    719a:	0c 94 6f 6d 	jmp	0xdade	; 0xdade <__epilogue_restores__+0x14>

0000719e <ntp_request>:
    719e:	af 92       	push	r10
    71a0:	bf 92       	push	r11
    71a2:	cf 92       	push	r12
    71a4:	df 92       	push	r13
    71a6:	ef 92       	push	r14
    71a8:	ff 92       	push	r15
    71aa:	0f 93       	push	r16
    71ac:	1f 93       	push	r17
    71ae:	60 93 6c 04 	sts	0x046C, r22
    71b2:	70 93 6d 04 	sts	0x046D, r23
    71b6:	80 93 6e 04 	sts	0x046E, r24
    71ba:	90 93 6f 04 	sts	0x046F, r25
    71be:	8b e7       	ldi	r24, 0x7B	; 123
    71c0:	90 e0       	ldi	r25, 0x00	; 0
    71c2:	90 93 75 04 	sts	0x0475, r25
    71c6:	80 93 74 04 	sts	0x0474, r24
    71ca:	90 93 77 04 	sts	0x0477, r25
    71ce:	80 93 76 04 	sts	0x0476, r24
    71d2:	8a e2       	ldi	r24, 0x2A	; 42
    71d4:	90 e0       	ldi	r25, 0x00	; 0
    71d6:	0e 94 67 1a 	call	0x34ce	; 0x34ce <enc_txseek>
    71da:	83 e2       	ldi	r24, 0x23	; 35
    71dc:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    71e0:	80 e0       	ldi	r24, 0x00	; 0
    71e2:	67 e2       	ldi	r22, 0x27	; 39
    71e4:	70 e0       	ldi	r23, 0x00	; 0
    71e6:	0e 94 e4 19 	call	0x33c8	; 0x33c8 <enc_fillwrite>
    71ea:	f8 94       	cli
    71ec:	e0 90 fe 0b 	lds	r14, 0x0BFE
    71f0:	f0 90 ff 0b 	lds	r15, 0x0BFF
    71f4:	00 91 00 0c 	lds	r16, 0x0C00
    71f8:	10 91 01 0c 	lds	r17, 0x0C01
    71fc:	60 91 fc 0b 	lds	r22, 0x0BFC
    7200:	70 91 fd 0b 	lds	r23, 0x0BFD
    7204:	88 27       	eor	r24, r24
    7206:	77 fd       	sbrc	r23, 7
    7208:	80 95       	com	r24
    720a:	98 2f       	mov	r25, r24
    720c:	0e 94 60 36 	call	0x6cc0	; 0x6cc0 <timer2stamp>
    7210:	5b 01       	movw	r10, r22
    7212:	6c 01       	movw	r12, r24
    7214:	78 94       	sei
    7216:	60 93 e4 07 	sts	0x07E4, r22
    721a:	70 93 e5 07 	sts	0x07E5, r23
    721e:	80 93 e6 07 	sts	0x07E6, r24
    7222:	90 93 e7 07 	sts	0x07E7, r25
    7226:	80 e8       	ldi	r24, 0x80	; 128
    7228:	9e e7       	ldi	r25, 0x7E	; 126
    722a:	aa ea       	ldi	r26, 0xAA	; 170
    722c:	b3 e8       	ldi	r27, 0x83	; 131
    722e:	e8 0e       	add	r14, r24
    7230:	f9 1e       	adc	r15, r25
    7232:	0a 1f       	adc	r16, r26
    7234:	1b 1f       	adc	r17, r27
    7236:	c8 01       	movw	r24, r16
    7238:	b7 01       	movw	r22, r14
    723a:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    723e:	c6 01       	movw	r24, r12
    7240:	b5 01       	movw	r22, r10
    7242:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    7246:	80 e3       	ldi	r24, 0x30	; 48
    7248:	90 e0       	ldi	r25, 0x00	; 0
    724a:	0e 94 ec 2a 	call	0x55d8	; 0x55d8 <udp_output>
    724e:	1f 91       	pop	r17
    7250:	0f 91       	pop	r16
    7252:	ff 90       	pop	r15
    7254:	ef 90       	pop	r14
    7256:	df 90       	pop	r13
    7258:	cf 90       	pop	r12
    725a:	bf 90       	pop	r11
    725c:	af 90       	pop	r10
    725e:	08 95       	ret

00007260 <ntp_reqseq>:
    7260:	1f 93       	push	r17
    7262:	10 91 e8 09 	lds	r17, 0x09E8
    7266:	11 23       	and	r17, r17
    7268:	09 f4       	brne	.+2      	; 0x726c <ntp_reqseq+0xc>
    726a:	80 c0       	rjmp	.+256    	; 0x736c <ntp_reqseq+0x10c>
    726c:	11 30       	cpi	r17, 0x01	; 1
    726e:	a1 f4       	brne	.+40     	; 0x7298 <ntp_reqseq+0x38>
    7270:	80 91 d2 07 	lds	r24, 0x07D2
    7274:	e8 2f       	mov	r30, r24
    7276:	f0 e0       	ldi	r31, 0x00	; 0
    7278:	ee 0f       	add	r30, r30
    727a:	ff 1f       	adc	r31, r31
    727c:	e1 59       	subi	r30, 0x91	; 145
    727e:	fe 4f       	sbci	r31, 0xFE	; 254
    7280:	65 91       	lpm	r22, Z+
    7282:	74 91       	lpm	r23, Z+
    7284:	8e e3       	ldi	r24, 0x3E	; 62
    7286:	98 e0       	ldi	r25, 0x08	; 8
    7288:	0e 94 32 6e 	call	0xdc64	; 0xdc64 <strcpy>
    728c:	10 93 b0 09 	sts	0x09B0, r17
    7290:	82 e0       	ldi	r24, 0x02	; 2
    7292:	80 93 e8 09 	sts	0x09E8, r24
    7296:	6a c0       	rjmp	.+212    	; 0x736c <ntp_reqseq+0x10c>
    7298:	12 30       	cpi	r17, 0x02	; 2
    729a:	89 f5       	brne	.+98     	; 0x72fe <ntp_reqseq+0x9e>
    729c:	80 91 b1 09 	lds	r24, 0x09B1
    72a0:	90 91 b2 09 	lds	r25, 0x09B2
    72a4:	01 97       	sbiw	r24, 0x01	; 1
    72a6:	09 f0       	breq	.+2      	; 0x72aa <ntp_reqseq+0x4a>
    72a8:	61 c0       	rjmp	.+194    	; 0x736c <ntp_reqseq+0x10c>
    72aa:	10 92 b2 09 	sts	0x09B2, r1
    72ae:	10 92 b1 09 	sts	0x09B1, r1
    72b2:	60 91 aa 09 	lds	r22, 0x09AA
    72b6:	70 91 ab 09 	lds	r23, 0x09AB
    72ba:	80 91 ac 09 	lds	r24, 0x09AC
    72be:	90 91 ad 09 	lds	r25, 0x09AD
    72c2:	60 93 4e 07 	sts	0x074E, r22
    72c6:	70 93 4f 07 	sts	0x074F, r23
    72ca:	80 93 50 07 	sts	0x0750, r24
    72ce:	90 93 51 07 	sts	0x0751, r25
    72d2:	10 92 fc 07 	sts	0x07FC, r1
    72d6:	0e 94 cf 38 	call	0x719e	; 0x719e <ntp_request>
    72da:	18 2f       	mov	r17, r24
    72dc:	88 23       	and	r24, r24
    72de:	51 f4       	brne	.+20     	; 0x72f4 <ntp_reqseq+0x94>
    72e0:	83 e0       	ldi	r24, 0x03	; 3
    72e2:	80 93 e8 09 	sts	0x09E8, r24
    72e6:	0e 94 c6 1f 	call	0x3f8c	; 0x3f8c <getcount1ms>
    72ea:	90 93 f5 07 	sts	0x07F5, r25
    72ee:	80 93 f4 07 	sts	0x07F4, r24
    72f2:	02 c0       	rjmp	.+4      	; 0x72f8 <ntp_reqseq+0x98>
    72f4:	10 92 e8 09 	sts	0x09E8, r1
    72f8:	0e 94 96 38 	call	0x712c	; 0x712c <nextntpsrv>
    72fc:	38 c0       	rjmp	.+112    	; 0x736e <ntp_reqseq+0x10e>
    72fe:	13 30       	cpi	r17, 0x03	; 3
    7300:	a9 f5       	brne	.+106    	; 0x736c <ntp_reqseq+0x10c>
    7302:	0e 94 c6 1f 	call	0x3f8c	; 0x3f8c <getcount1ms>
    7306:	20 91 f4 07 	lds	r18, 0x07F4
    730a:	30 91 f5 07 	lds	r19, 0x07F5
    730e:	82 1b       	sub	r24, r18
    7310:	93 0b       	sbc	r25, r19
    7312:	20 91 f6 07 	lds	r18, 0x07F6
    7316:	30 91 f7 07 	lds	r19, 0x07F7
    731a:	82 17       	cp	r24, r18
    731c:	93 07       	cpc	r25, r19
    731e:	30 f1       	brcs	.+76     	; 0x736c <ntp_reqseq+0x10c>
    7320:	80 91 fc 07 	lds	r24, 0x07FC
    7324:	8f 5f       	subi	r24, 0xFF	; 255
    7326:	80 93 fc 07 	sts	0x07FC, r24
    732a:	83 30       	cpi	r24, 0x03	; 3
    732c:	40 f0       	brcs	.+16     	; 0x733e <ntp_reqseq+0xde>
    732e:	10 93 ac 01 	sts	0x01AC, r17
    7332:	10 91 d3 07 	lds	r17, 0x07D3
    7336:	14 5e       	subi	r17, 0xE4	; 228
    7338:	0e 94 bc 0c 	call	0x1978	; 0x1978 <unsync_seq>
    733c:	18 c0       	rjmp	.+48     	; 0x736e <ntp_reqseq+0x10e>
    733e:	60 91 4e 07 	lds	r22, 0x074E
    7342:	70 91 4f 07 	lds	r23, 0x074F
    7346:	80 91 50 07 	lds	r24, 0x0750
    734a:	90 91 51 07 	lds	r25, 0x0751
    734e:	0e 94 cf 38 	call	0x719e	; 0x719e <ntp_request>
    7352:	18 2f       	mov	r17, r24
    7354:	88 23       	and	r24, r24
    7356:	39 f4       	brne	.+14     	; 0x7366 <ntp_reqseq+0x106>
    7358:	0e 94 c6 1f 	call	0x3f8c	; 0x3f8c <getcount1ms>
    735c:	90 93 f5 07 	sts	0x07F5, r25
    7360:	80 93 f4 07 	sts	0x07F4, r24
    7364:	04 c0       	rjmp	.+8      	; 0x736e <ntp_reqseq+0x10e>
    7366:	10 92 e8 09 	sts	0x09E8, r1
    736a:	01 c0       	rjmp	.+2      	; 0x736e <ntp_reqseq+0x10e>
    736c:	10 e0       	ldi	r17, 0x00	; 0
    736e:	81 2f       	mov	r24, r17
    7370:	1f 91       	pop	r17
    7372:	08 95       	ret

00007374 <set_referenceid>:
    7374:	90 91 c9 09 	lds	r25, 0x09C9
    7378:	89 2f       	mov	r24, r25
    737a:	82 50       	subi	r24, 0x02	; 2
    737c:	83 30       	cpi	r24, 0x03	; 3
    737e:	18 f4       	brcc	.+6      	; 0x7386 <set_referenceid+0x12>
    7380:	82 e0       	ldi	r24, 0x02	; 2
    7382:	91 e0       	ldi	r25, 0x01	; 1
    7384:	04 c0       	rjmp	.+8      	; 0x738e <set_referenceid+0x1a>
    7386:	95 30       	cpi	r25, 0x05	; 5
    7388:	41 f4       	brne	.+16     	; 0x739a <set_referenceid+0x26>
    738a:	8e ef       	ldi	r24, 0xFE	; 254
    738c:	90 e0       	ldi	r25, 0x00	; 0
    738e:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    7392:	80 e0       	ldi	r24, 0x00	; 0
    7394:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    7398:	08 95       	ret
    739a:	60 91 0b 05 	lds	r22, 0x050B
    739e:	70 91 0c 05 	lds	r23, 0x050C
    73a2:	80 91 0d 05 	lds	r24, 0x050D
    73a6:	90 91 0e 05 	lds	r25, 0x050E
    73aa:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    73ae:	08 95       	ret

000073b0 <ntp_broadcast>:
    73b0:	af 92       	push	r10
    73b2:	bf 92       	push	r11
    73b4:	cf 92       	push	r12
    73b6:	df 92       	push	r13
    73b8:	ef 92       	push	r14
    73ba:	ff 92       	push	r15
    73bc:	0f 93       	push	r16
    73be:	1f 93       	push	r17
    73c0:	80 91 d8 07 	lds	r24, 0x07D8
    73c4:	90 91 d9 07 	lds	r25, 0x07D9
    73c8:	a0 91 da 07 	lds	r26, 0x07DA
    73cc:	b0 91 db 07 	lds	r27, 0x07DB
    73d0:	80 93 6c 04 	sts	0x046C, r24
    73d4:	90 93 6d 04 	sts	0x046D, r25
    73d8:	a0 93 6e 04 	sts	0x046E, r26
    73dc:	b0 93 6f 04 	sts	0x046F, r27
    73e0:	8b e7       	ldi	r24, 0x7B	; 123
    73e2:	90 e0       	ldi	r25, 0x00	; 0
    73e4:	90 93 75 04 	sts	0x0475, r25
    73e8:	80 93 74 04 	sts	0x0474, r24
    73ec:	90 93 77 04 	sts	0x0477, r25
    73f0:	80 93 76 04 	sts	0x0476, r24
    73f4:	80 91 e9 09 	lds	r24, 0x09E9
    73f8:	90 91 ea 09 	lds	r25, 0x09EA
    73fc:	89 2b       	or	r24, r25
    73fe:	19 f4       	brne	.+6      	; 0x7406 <ntp_broadcast+0x56>
    7400:	05 ee       	ldi	r16, 0xE5	; 229
    7402:	10 e1       	ldi	r17, 0x10	; 16
    7404:	02 c0       	rjmp	.+4      	; 0x740a <ntp_broadcast+0x5a>
    7406:	05 e2       	ldi	r16, 0x25	; 37
    7408:	11 e0       	ldi	r17, 0x01	; 1
    740a:	8a e2       	ldi	r24, 0x2A	; 42
    740c:	90 e0       	ldi	r25, 0x00	; 0
    740e:	0e 94 67 1a 	call	0x34ce	; 0x34ce <enc_txseek>
    7412:	80 2f       	mov	r24, r16
    7414:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    7418:	81 2f       	mov	r24, r17
    741a:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    741e:	80 91 f8 07 	lds	r24, 0x07F8
    7422:	90 91 f9 07 	lds	r25, 0x07F9
    7426:	0e 94 27 41 	call	0x824e	; 0x824e <log2x>
    742a:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    742e:	86 ef       	ldi	r24, 0xF6	; 246
    7430:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    7434:	60 91 dc 07 	lds	r22, 0x07DC
    7438:	70 91 dd 07 	lds	r23, 0x07DD
    743c:	80 91 de 07 	lds	r24, 0x07DE
    7440:	90 91 df 07 	lds	r25, 0x07DF
    7444:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    7448:	60 91 e0 07 	lds	r22, 0x07E0
    744c:	70 91 e1 07 	lds	r23, 0x07E1
    7450:	80 91 e2 07 	lds	r24, 0x07E2
    7454:	90 91 e3 07 	lds	r25, 0x07E3
    7458:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    745c:	0e 94 ba 39 	call	0x7374	; 0x7374 <set_referenceid>
    7460:	60 91 f2 07 	lds	r22, 0x07F2
    7464:	70 91 f3 07 	lds	r23, 0x07F3
    7468:	80 e0       	ldi	r24, 0x00	; 0
    746a:	90 e0       	ldi	r25, 0x00	; 0
    746c:	0e 94 60 36 	call	0x6cc0	; 0x6cc0 <timer2stamp>
    7470:	7b 01       	movw	r14, r22
    7472:	8c 01       	movw	r16, r24
    7474:	60 91 ec 07 	lds	r22, 0x07EC
    7478:	70 91 ed 07 	lds	r23, 0x07ED
    747c:	80 91 ee 07 	lds	r24, 0x07EE
    7480:	90 91 ef 07 	lds	r25, 0x07EF
    7484:	60 58       	subi	r22, 0x80	; 128
    7486:	71 48       	sbci	r23, 0x81	; 129
    7488:	85 45       	sbci	r24, 0x55	; 85
    748a:	9c 47       	sbci	r25, 0x7C	; 124
    748c:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    7490:	c8 01       	movw	r24, r16
    7492:	b7 01       	movw	r22, r14
    7494:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    7498:	80 e0       	ldi	r24, 0x00	; 0
    749a:	60 e1       	ldi	r22, 0x10	; 16
    749c:	70 e0       	ldi	r23, 0x00	; 0
    749e:	0e 94 e4 19 	call	0x33c8	; 0x33c8 <enc_fillwrite>
    74a2:	f8 94       	cli
    74a4:	e0 90 fe 0b 	lds	r14, 0x0BFE
    74a8:	f0 90 ff 0b 	lds	r15, 0x0BFF
    74ac:	00 91 00 0c 	lds	r16, 0x0C00
    74b0:	10 91 01 0c 	lds	r17, 0x0C01
    74b4:	60 91 fc 0b 	lds	r22, 0x0BFC
    74b8:	70 91 fd 0b 	lds	r23, 0x0BFD
    74bc:	88 27       	eor	r24, r24
    74be:	77 fd       	sbrc	r23, 7
    74c0:	80 95       	com	r24
    74c2:	98 2f       	mov	r25, r24
    74c4:	0e 94 60 36 	call	0x6cc0	; 0x6cc0 <timer2stamp>
    74c8:	5b 01       	movw	r10, r22
    74ca:	6c 01       	movw	r12, r24
    74cc:	78 94       	sei
    74ce:	80 e8       	ldi	r24, 0x80	; 128
    74d0:	9e e7       	ldi	r25, 0x7E	; 126
    74d2:	aa ea       	ldi	r26, 0xAA	; 170
    74d4:	b3 e8       	ldi	r27, 0x83	; 131
    74d6:	e8 0e       	add	r14, r24
    74d8:	f9 1e       	adc	r15, r25
    74da:	0a 1f       	adc	r16, r26
    74dc:	1b 1f       	adc	r17, r27
    74de:	c8 01       	movw	r24, r16
    74e0:	b7 01       	movw	r22, r14
    74e2:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    74e6:	c6 01       	movw	r24, r12
    74e8:	b5 01       	movw	r22, r10
    74ea:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    74ee:	80 e3       	ldi	r24, 0x30	; 48
    74f0:	90 e0       	ldi	r25, 0x00	; 0
    74f2:	0e 94 ec 2a 	call	0x55d8	; 0x55d8 <udp_output>
    74f6:	1f 91       	pop	r17
    74f8:	0f 91       	pop	r16
    74fa:	ff 90       	pop	r15
    74fc:	ef 90       	pop	r14
    74fe:	df 90       	pop	r13
    7500:	cf 90       	pop	r12
    7502:	bf 90       	pop	r11
    7504:	af 90       	pop	r10
    7506:	08 95       	ret

00007508 <ntp_input>:
    7508:	a7 e4       	ldi	r26, 0x47	; 71
    750a:	b0 e0       	ldi	r27, 0x00	; 0
    750c:	ea e8       	ldi	r30, 0x8A	; 138
    750e:	fa e3       	ldi	r31, 0x3A	; 58
    7510:	0c 94 49 6d 	jmp	0xda92	; 0xda92 <__prologue_saves__>
    7514:	80 91 78 04 	lds	r24, 0x0478
    7518:	90 91 79 04 	lds	r25, 0x0479
    751c:	0e 94 42 1a 	call	0x3484	; 0x3484 <enc_rxseek>
    7520:	ce 01       	movw	r24, r28
    7522:	41 96       	adiw	r24, 0x11	; 17
    7524:	60 e3       	ldi	r22, 0x30	; 48
    7526:	70 e0       	ldi	r23, 0x00	; 0
    7528:	0e 94 7e 19 	call	0x32fc	; 0x32fc <enc_readbuffer>
    752c:	99 89       	ldd	r25, Y+17	; 0x11
    752e:	89 2f       	mov	r24, r25
    7530:	87 70       	andi	r24, 0x07	; 7
    7532:	84 30       	cpi	r24, 0x04	; 4
    7534:	09 f0       	breq	.+2      	; 0x7538 <ntp_input+0x30>
    7536:	0a c2       	rjmp	.+1044   	; 0x794c <ntp_input+0x444>
    7538:	80 91 e8 09 	lds	r24, 0x09E8
    753c:	88 23       	and	r24, r24
    753e:	09 f4       	brne	.+2      	; 0x7542 <ntp_input+0x3a>
    7540:	d0 c3       	rjmp	.+1952   	; 0x7ce2 <ntp_input+0x7da>
    7542:	89 2f       	mov	r24, r25
    7544:	80 7c       	andi	r24, 0xC0	; 192
    7546:	80 93 07 01 	sts	0x0107, r24
    754a:	9a 89       	ldd	r25, Y+18	; 0x12
    754c:	80 3c       	cpi	r24, 0xC0	; 192
    754e:	21 f0       	breq	.+8      	; 0x7558 <ntp_input+0x50>
    7550:	99 23       	and	r25, r25
    7552:	11 f0       	breq	.+4      	; 0x7558 <ntp_input+0x50>
    7554:	90 31       	cpi	r25, 0x10	; 16
    7556:	58 f0       	brcs	.+22     	; 0x756e <ntp_input+0x66>
    7558:	82 e0       	ldi	r24, 0x02	; 2
    755a:	80 93 ac 01 	sts	0x01AC, r24
    755e:	10 92 b0 09 	sts	0x09B0, r1
    7562:	10 92 e8 09 	sts	0x09E8, r1
    7566:	0e 94 bc 0c 	call	0x1978	; 0x1978 <unsync_seq>
    756a:	8b e1       	ldi	r24, 0x1B	; 27
    756c:	ba c3       	rjmp	.+1908   	; 0x7ce2 <ntp_input+0x7da>
    756e:	9f 5f       	subi	r25, 0xFF	; 255
    7570:	90 93 08 01 	sts	0x0108, r25
    7574:	6d 89       	ldd	r22, Y+21	; 0x15
    7576:	7e 89       	ldd	r23, Y+22	; 0x16
    7578:	8f 89       	ldd	r24, Y+23	; 0x17
    757a:	98 8d       	ldd	r25, Y+24	; 0x18
    757c:	0e 94 3b 41 	call	0x8276	; 0x8276 <cnvendian32>
    7580:	60 93 dc 07 	sts	0x07DC, r22
    7584:	70 93 dd 07 	sts	0x07DD, r23
    7588:	80 93 de 07 	sts	0x07DE, r24
    758c:	90 93 df 07 	sts	0x07DF, r25
    7590:	69 8d       	ldd	r22, Y+25	; 0x19
    7592:	7a 8d       	ldd	r23, Y+26	; 0x1a
    7594:	8b 8d       	ldd	r24, Y+27	; 0x1b
    7596:	9c 8d       	ldd	r25, Y+28	; 0x1c
    7598:	0e 94 3b 41 	call	0x8276	; 0x8276 <cnvendian32>
    759c:	60 93 e0 07 	sts	0x07E0, r22
    75a0:	70 93 e1 07 	sts	0x07E1, r23
    75a4:	80 93 e2 07 	sts	0x07E2, r24
    75a8:	90 93 e3 07 	sts	0x07E3, r25
    75ac:	98 a9       	ldd	r25, Y+48	; 0x30
    75ae:	2f a5       	ldd	r18, Y+47	; 0x2f
    75b0:	6e a5       	ldd	r22, Y+46	; 0x2e
    75b2:	7d a5       	ldd	r23, Y+45	; 0x2d
    75b4:	ec a5       	ldd	r30, Y+44	; 0x2c
    75b6:	fb a5       	ldd	r31, Y+43	; 0x2b
    75b8:	da a4       	ldd	r13, Y+42	; 0x2a
    75ba:	99 a4       	ldd	r9, Y+41	; 0x29
    75bc:	cc a8       	ldd	r12, Y+52	; 0x34
    75be:	bb a8       	ldd	r11, Y+51	; 0x33
    75c0:	aa a8       	ldd	r10, Y+50	; 0x32
    75c2:	79 a8       	ldd	r7, Y+49	; 0x31
    75c4:	88 ad       	ldd	r24, Y+56	; 0x38
    75c6:	3f a9       	ldd	r19, Y+55	; 0x37
    75c8:	4e a9       	ldd	r20, Y+54	; 0x36
    75ca:	5d a9       	ldd	r21, Y+53	; 0x35
    75cc:	e8 2e       	mov	r14, r24
    75ce:	e9 1a       	sub	r14, r25
    75d0:	91 e0       	ldi	r25, 0x01	; 1
    75d2:	8e 15       	cp	r24, r14
    75d4:	08 f0       	brcs	.+2      	; 0x75d8 <ntp_input+0xd0>
    75d6:	90 e0       	ldi	r25, 0x00	; 0
    75d8:	83 2f       	mov	r24, r19
    75da:	82 1b       	sub	r24, r18
    75dc:	21 e0       	ldi	r18, 0x01	; 1
    75de:	38 17       	cp	r19, r24
    75e0:	08 f0       	brcs	.+2      	; 0x75e4 <ntp_input+0xdc>
    75e2:	20 e0       	ldi	r18, 0x00	; 0
    75e4:	f8 2e       	mov	r15, r24
    75e6:	f9 1a       	sub	r15, r25
    75e8:	91 e0       	ldi	r25, 0x01	; 1
    75ea:	8f 15       	cp	r24, r15
    75ec:	08 f0       	brcs	.+2      	; 0x75f0 <ntp_input+0xe8>
    75ee:	90 e0       	ldi	r25, 0x00	; 0
    75f0:	29 2b       	or	r18, r25
    75f2:	84 2f       	mov	r24, r20
    75f4:	86 1b       	sub	r24, r22
    75f6:	31 e0       	ldi	r19, 0x01	; 1
    75f8:	48 17       	cp	r20, r24
    75fa:	08 f0       	brcs	.+2      	; 0x75fe <ntp_input+0xf6>
    75fc:	30 e0       	ldi	r19, 0x00	; 0
    75fe:	08 2f       	mov	r16, r24
    7600:	02 1b       	sub	r16, r18
    7602:	91 e0       	ldi	r25, 0x01	; 1
    7604:	80 17       	cp	r24, r16
    7606:	08 f0       	brcs	.+2      	; 0x760a <ntp_input+0x102>
    7608:	90 e0       	ldi	r25, 0x00	; 0
    760a:	39 2b       	or	r19, r25
    760c:	85 2f       	mov	r24, r21
    760e:	87 1b       	sub	r24, r23
    7610:	21 e0       	ldi	r18, 0x01	; 1
    7612:	58 17       	cp	r21, r24
    7614:	08 f0       	brcs	.+2      	; 0x7618 <ntp_input+0x110>
    7616:	20 e0       	ldi	r18, 0x00	; 0
    7618:	18 2f       	mov	r17, r24
    761a:	13 1b       	sub	r17, r19
    761c:	91 e0       	ldi	r25, 0x01	; 1
    761e:	81 17       	cp	r24, r17
    7620:	08 f0       	brcs	.+2      	; 0x7624 <ntp_input+0x11c>
    7622:	90 e0       	ldi	r25, 0x00	; 0
    7624:	29 2b       	or	r18, r25
    7626:	8c 2d       	mov	r24, r12
    7628:	8e 1b       	sub	r24, r30
    762a:	31 e0       	ldi	r19, 0x01	; 1
    762c:	c8 16       	cp	r12, r24
    762e:	08 f0       	brcs	.+2      	; 0x7632 <ntp_input+0x12a>
    7630:	30 e0       	ldi	r19, 0x00	; 0
    7632:	b8 2f       	mov	r27, r24
    7634:	b2 1b       	sub	r27, r18
    7636:	91 e0       	ldi	r25, 0x01	; 1
    7638:	8b 17       	cp	r24, r27
    763a:	08 f0       	brcs	.+2      	; 0x763e <ntp_input+0x136>
    763c:	90 e0       	ldi	r25, 0x00	; 0
    763e:	39 2b       	or	r19, r25
    7640:	8b 2d       	mov	r24, r11
    7642:	8f 1b       	sub	r24, r31
    7644:	21 e0       	ldi	r18, 0x01	; 1
    7646:	b8 16       	cp	r11, r24
    7648:	08 f0       	brcs	.+2      	; 0x764c <ntp_input+0x144>
    764a:	20 e0       	ldi	r18, 0x00	; 0
    764c:	a8 2f       	mov	r26, r24
    764e:	a3 1b       	sub	r26, r19
    7650:	91 e0       	ldi	r25, 0x01	; 1
    7652:	8a 17       	cp	r24, r26
    7654:	08 f0       	brcs	.+2      	; 0x7658 <ntp_input+0x150>
    7656:	90 e0       	ldi	r25, 0x00	; 0
    7658:	29 2b       	or	r18, r25
    765a:	8a 2d       	mov	r24, r10
    765c:	8d 19       	sub	r24, r13
    765e:	91 e0       	ldi	r25, 0x01	; 1
    7660:	a8 16       	cp	r10, r24
    7662:	08 f0       	brcs	.+2      	; 0x7666 <ntp_input+0x15e>
    7664:	90 e0       	ldi	r25, 0x00	; 0
    7666:	f8 2f       	mov	r31, r24
    7668:	f2 1b       	sub	r31, r18
    766a:	21 e0       	ldi	r18, 0x01	; 1
    766c:	8f 17       	cp	r24, r31
    766e:	08 f0       	brcs	.+2      	; 0x7672 <ntp_input+0x16a>
    7670:	20 e0       	ldi	r18, 0x00	; 0
    7672:	92 2b       	or	r25, r18
    7674:	e7 2d       	mov	r30, r7
    7676:	e9 19       	sub	r30, r9
    7678:	e9 1b       	sub	r30, r25
    767a:	97 01       	movw	r18, r14
    767c:	a8 01       	movw	r20, r16
    767e:	6b 2f       	mov	r22, r27
    7680:	7a 2f       	mov	r23, r26
    7682:	8f 2f       	mov	r24, r31
    7684:	9e 2f       	mov	r25, r30
    7686:	52 f5       	brpl	.+84     	; 0x76dc <ntp_input+0x1d4>
    7688:	2e 2d       	mov	r18, r14
    768a:	2f 5f       	subi	r18, 0xFF	; 255
    768c:	81 e0       	ldi	r24, 0x01	; 1
    768e:	2e 15       	cp	r18, r14
    7690:	08 f0       	brcs	.+2      	; 0x7694 <ntp_input+0x18c>
    7692:	80 e0       	ldi	r24, 0x00	; 0
    7694:	38 2f       	mov	r19, r24
    7696:	3f 0d       	add	r19, r15
    7698:	81 e0       	ldi	r24, 0x01	; 1
    769a:	3f 15       	cp	r19, r15
    769c:	08 f0       	brcs	.+2      	; 0x76a0 <ntp_input+0x198>
    769e:	80 e0       	ldi	r24, 0x00	; 0
    76a0:	48 2f       	mov	r20, r24
    76a2:	40 0f       	add	r20, r16
    76a4:	81 e0       	ldi	r24, 0x01	; 1
    76a6:	40 17       	cp	r20, r16
    76a8:	08 f0       	brcs	.+2      	; 0x76ac <ntp_input+0x1a4>
    76aa:	80 e0       	ldi	r24, 0x00	; 0
    76ac:	58 2f       	mov	r21, r24
    76ae:	51 0f       	add	r21, r17
    76b0:	81 e0       	ldi	r24, 0x01	; 1
    76b2:	51 17       	cp	r21, r17
    76b4:	08 f0       	brcs	.+2      	; 0x76b8 <ntp_input+0x1b0>
    76b6:	80 e0       	ldi	r24, 0x00	; 0
    76b8:	68 2f       	mov	r22, r24
    76ba:	6b 0f       	add	r22, r27
    76bc:	81 e0       	ldi	r24, 0x01	; 1
    76be:	6b 17       	cp	r22, r27
    76c0:	08 f0       	brcs	.+2      	; 0x76c4 <ntp_input+0x1bc>
    76c2:	80 e0       	ldi	r24, 0x00	; 0
    76c4:	78 2f       	mov	r23, r24
    76c6:	7a 0f       	add	r23, r26
    76c8:	81 e0       	ldi	r24, 0x01	; 1
    76ca:	7a 17       	cp	r23, r26
    76cc:	08 f0       	brcs	.+2      	; 0x76d0 <ntp_input+0x1c8>
    76ce:	80 e0       	ldi	r24, 0x00	; 0
    76d0:	8f 0f       	add	r24, r31
    76d2:	91 e0       	ldi	r25, 0x01	; 1
    76d4:	8f 17       	cp	r24, r31
    76d6:	08 f0       	brcs	.+2      	; 0x76da <ntp_input+0x1d2>
    76d8:	90 e0       	ldi	r25, 0x00	; 0
    76da:	9e 0f       	add	r25, r30
    76dc:	01 e0       	ldi	r16, 0x01	; 1
    76de:	0e 94 d3 65 	call	0xcba6	; 0xcba6 <__ashrdi3>
    76e2:	62 2e       	mov	r6, r18
    76e4:	53 2e       	mov	r5, r19
    76e6:	44 2e       	mov	r4, r20
    76e8:	35 2e       	mov	r3, r21
    76ea:	26 2e       	mov	r2, r22
    76ec:	26 96       	adiw	r28, 0x06	; 6
    76ee:	7f af       	std	Y+63, r23	; 0x3f
    76f0:	26 97       	sbiw	r28, 0x06	; 6
    76f2:	27 96       	adiw	r28, 0x07	; 7
    76f4:	8f af       	std	Y+63, r24	; 0x3f
    76f6:	27 97       	sbiw	r28, 0x07	; 7
    76f8:	28 96       	adiw	r28, 0x08	; 8
    76fa:	9f af       	std	Y+63, r25	; 0x3f
    76fc:	28 97       	sbiw	r28, 0x08	; 8
    76fe:	cc ac       	ldd	r12, Y+60	; 0x3c
    7700:	bb ac       	ldd	r11, Y+59	; 0x3b
    7702:	aa ac       	ldd	r10, Y+58	; 0x3a
    7704:	79 ac       	ldd	r7, Y+57	; 0x39
    7706:	fe 01       	movw	r30, r28
    7708:	e0 5c       	subi	r30, 0xC0	; 192
    770a:	ff 4f       	sbci	r31, 0xFF	; 255
    770c:	00 81       	ld	r16, Z
    770e:	ff ac       	ldd	r15, Y+63	; 0x3f
    7710:	9e ac       	ldd	r9, Y+62	; 0x3e
    7712:	8d ac       	ldd	r8, Y+61	; 0x3d
    7714:	80 91 e8 07 	lds	r24, 0x07E8
    7718:	90 91 e9 07 	lds	r25, 0x07E9
    771c:	a0 91 ea 07 	lds	r26, 0x07EA
    7720:	b0 91 eb 07 	lds	r27, 0x07EB
    7724:	80 58       	subi	r24, 0x80	; 128
    7726:	91 48       	sbci	r25, 0x81	; 129
    7728:	a5 45       	sbci	r26, 0x55	; 85
    772a:	bc 47       	sbci	r27, 0x7C	; 124
    772c:	18 2f       	mov	r17, r24
    772e:	8d 87       	std	Y+13, r24	; 0x0d
    7730:	9e 87       	std	Y+14, r25	; 0x0e
    7732:	af 87       	std	Y+15, r26	; 0x0f
    7734:	b8 8b       	std	Y+16, r27	; 0x10
    7736:	60 91 f0 07 	lds	r22, 0x07F0
    773a:	70 91 f1 07 	lds	r23, 0x07F1
    773e:	80 e0       	ldi	r24, 0x00	; 0
    7740:	90 e0       	ldi	r25, 0x00	; 0
    7742:	0e 94 60 36 	call	0x6cc0	; 0x6cc0 <timer2stamp>
    7746:	69 87       	std	Y+9, r22	; 0x09
    7748:	7a 87       	std	Y+10, r23	; 0x0a
    774a:	8b 87       	std	Y+11, r24	; 0x0b
    774c:	9c 87       	std	Y+12, r25	; 0x0c
    774e:	87 2f       	mov	r24, r23
    7750:	3b 85       	ldd	r19, Y+11	; 0x0b
    7752:	49 2f       	mov	r20, r25
    7754:	5e 85       	ldd	r21, Y+14	; 0x0e
    7756:	7f 85       	ldd	r23, Y+15	; 0x0f
    7758:	e8 89       	ldd	r30, Y+16	; 0x10
    775a:	d0 2e       	mov	r13, r16
    775c:	d6 1a       	sub	r13, r22
    775e:	91 e0       	ldi	r25, 0x01	; 1
    7760:	0d 15       	cp	r16, r13
    7762:	08 f0       	brcs	.+2      	; 0x7766 <ntp_input+0x25e>
    7764:	90 e0       	ldi	r25, 0x00	; 0
    7766:	2f 2d       	mov	r18, r15
    7768:	28 1b       	sub	r18, r24
    776a:	82 2f       	mov	r24, r18
    776c:	21 e0       	ldi	r18, 0x01	; 1
    776e:	f8 16       	cp	r15, r24
    7770:	08 f0       	brcs	.+2      	; 0x7774 <ntp_input+0x26c>
    7772:	20 e0       	ldi	r18, 0x00	; 0
    7774:	e8 2e       	mov	r14, r24
    7776:	e9 1a       	sub	r14, r25
    7778:	91 e0       	ldi	r25, 0x01	; 1
    777a:	8e 15       	cp	r24, r14
    777c:	08 f0       	brcs	.+2      	; 0x7780 <ntp_input+0x278>
    777e:	90 e0       	ldi	r25, 0x00	; 0
    7780:	29 2b       	or	r18, r25
    7782:	89 2d       	mov	r24, r9
    7784:	83 1b       	sub	r24, r19
    7786:	31 e0       	ldi	r19, 0x01	; 1
    7788:	98 16       	cp	r9, r24
    778a:	08 f0       	brcs	.+2      	; 0x778e <ntp_input+0x286>
    778c:	30 e0       	ldi	r19, 0x00	; 0
    778e:	f8 2e       	mov	r15, r24
    7790:	f2 1a       	sub	r15, r18
    7792:	91 e0       	ldi	r25, 0x01	; 1
    7794:	8f 15       	cp	r24, r15
    7796:	08 f0       	brcs	.+2      	; 0x779a <ntp_input+0x292>
    7798:	90 e0       	ldi	r25, 0x00	; 0
    779a:	39 2b       	or	r19, r25
    779c:	88 2d       	mov	r24, r8
    779e:	84 1b       	sub	r24, r20
    77a0:	21 e0       	ldi	r18, 0x01	; 1
    77a2:	88 16       	cp	r8, r24
    77a4:	08 f0       	brcs	.+2      	; 0x77a8 <ntp_input+0x2a0>
    77a6:	20 e0       	ldi	r18, 0x00	; 0
    77a8:	08 2f       	mov	r16, r24
    77aa:	03 1b       	sub	r16, r19
    77ac:	91 e0       	ldi	r25, 0x01	; 1
    77ae:	80 17       	cp	r24, r16
    77b0:	08 f0       	brcs	.+2      	; 0x77b4 <ntp_input+0x2ac>
    77b2:	90 e0       	ldi	r25, 0x00	; 0
    77b4:	29 2b       	or	r18, r25
    77b6:	8c 2d       	mov	r24, r12
    77b8:	81 1b       	sub	r24, r17
    77ba:	18 2f       	mov	r17, r24
    77bc:	91 e0       	ldi	r25, 0x01	; 1
    77be:	c8 16       	cp	r12, r24
    77c0:	08 f0       	brcs	.+2      	; 0x77c4 <ntp_input+0x2bc>
    77c2:	90 e0       	ldi	r25, 0x00	; 0
    77c4:	b1 2f       	mov	r27, r17
    77c6:	b2 1b       	sub	r27, r18
    77c8:	81 e0       	ldi	r24, 0x01	; 1
    77ca:	1b 17       	cp	r17, r27
    77cc:	08 f0       	brcs	.+2      	; 0x77d0 <ntp_input+0x2c8>
    77ce:	80 e0       	ldi	r24, 0x00	; 0
    77d0:	98 2b       	or	r25, r24
    77d2:	8b 2d       	mov	r24, r11
    77d4:	85 1b       	sub	r24, r21
    77d6:	21 e0       	ldi	r18, 0x01	; 1
    77d8:	b8 16       	cp	r11, r24
    77da:	08 f0       	brcs	.+2      	; 0x77de <ntp_input+0x2d6>
    77dc:	20 e0       	ldi	r18, 0x00	; 0
    77de:	a8 2f       	mov	r26, r24
    77e0:	a9 1b       	sub	r26, r25
    77e2:	91 e0       	ldi	r25, 0x01	; 1
    77e4:	8a 17       	cp	r24, r26
    77e6:	08 f0       	brcs	.+2      	; 0x77ea <ntp_input+0x2e2>
    77e8:	90 e0       	ldi	r25, 0x00	; 0
    77ea:	29 2b       	or	r18, r25
    77ec:	8a 2d       	mov	r24, r10
    77ee:	87 1b       	sub	r24, r23
    77f0:	91 e0       	ldi	r25, 0x01	; 1
    77f2:	a8 16       	cp	r10, r24
    77f4:	08 f0       	brcs	.+2      	; 0x77f8 <ntp_input+0x2f0>
    77f6:	90 e0       	ldi	r25, 0x00	; 0
    77f8:	f8 2f       	mov	r31, r24
    77fa:	f2 1b       	sub	r31, r18
    77fc:	21 e0       	ldi	r18, 0x01	; 1
    77fe:	8f 17       	cp	r24, r31
    7800:	08 f0       	brcs	.+2      	; 0x7804 <ntp_input+0x2fc>
    7802:	20 e0       	ldi	r18, 0x00	; 0
    7804:	92 2b       	or	r25, r18
    7806:	7e 1a       	sub	r7, r30
    7808:	e7 2d       	mov	r30, r7
    780a:	e9 1b       	sub	r30, r25
    780c:	2d 2d       	mov	r18, r13
    780e:	3e 2d       	mov	r19, r14
    7810:	4f 2d       	mov	r20, r15
    7812:	50 2f       	mov	r21, r16
    7814:	6b 2f       	mov	r22, r27
    7816:	7a 2f       	mov	r23, r26
    7818:	8f 2f       	mov	r24, r31
    781a:	9e 2f       	mov	r25, r30
    781c:	52 f5       	brpl	.+84     	; 0x7872 <ntp_input+0x36a>
    781e:	2d 2d       	mov	r18, r13
    7820:	2f 5f       	subi	r18, 0xFF	; 255
    7822:	81 e0       	ldi	r24, 0x01	; 1
    7824:	2d 15       	cp	r18, r13
    7826:	08 f0       	brcs	.+2      	; 0x782a <ntp_input+0x322>
    7828:	80 e0       	ldi	r24, 0x00	; 0
    782a:	38 2f       	mov	r19, r24
    782c:	3e 0d       	add	r19, r14
    782e:	81 e0       	ldi	r24, 0x01	; 1
    7830:	3e 15       	cp	r19, r14
    7832:	08 f0       	brcs	.+2      	; 0x7836 <ntp_input+0x32e>
    7834:	80 e0       	ldi	r24, 0x00	; 0
    7836:	48 2f       	mov	r20, r24
    7838:	4f 0d       	add	r20, r15
    783a:	81 e0       	ldi	r24, 0x01	; 1
    783c:	4f 15       	cp	r20, r15
    783e:	08 f0       	brcs	.+2      	; 0x7842 <ntp_input+0x33a>
    7840:	80 e0       	ldi	r24, 0x00	; 0
    7842:	58 2f       	mov	r21, r24
    7844:	50 0f       	add	r21, r16
    7846:	81 e0       	ldi	r24, 0x01	; 1
    7848:	50 17       	cp	r21, r16
    784a:	08 f0       	brcs	.+2      	; 0x784e <ntp_input+0x346>
    784c:	80 e0       	ldi	r24, 0x00	; 0
    784e:	68 2f       	mov	r22, r24
    7850:	6b 0f       	add	r22, r27
    7852:	81 e0       	ldi	r24, 0x01	; 1
    7854:	6b 17       	cp	r22, r27
    7856:	08 f0       	brcs	.+2      	; 0x785a <ntp_input+0x352>
    7858:	80 e0       	ldi	r24, 0x00	; 0
    785a:	78 2f       	mov	r23, r24
    785c:	7a 0f       	add	r23, r26
    785e:	81 e0       	ldi	r24, 0x01	; 1
    7860:	7a 17       	cp	r23, r26
    7862:	08 f0       	brcs	.+2      	; 0x7866 <ntp_input+0x35e>
    7864:	80 e0       	ldi	r24, 0x00	; 0
    7866:	8f 0f       	add	r24, r31
    7868:	91 e0       	ldi	r25, 0x01	; 1
    786a:	8f 17       	cp	r24, r31
    786c:	08 f0       	brcs	.+2      	; 0x7870 <ntp_input+0x368>
    786e:	90 e0       	ldi	r25, 0x00	; 0
    7870:	9e 0f       	add	r25, r30
    7872:	01 e0       	ldi	r16, 0x01	; 1
    7874:	0e 94 d3 65 	call	0xcba6	; 0xcba6 <__ashrdi3>
    7878:	a3 2f       	mov	r26, r19
    787a:	b4 2f       	mov	r27, r20
    787c:	05 2f       	mov	r16, r21
    787e:	f6 2e       	mov	r15, r22
    7880:	d7 2e       	mov	r13, r23
    7882:	b8 2e       	mov	r11, r24
    7884:	19 2f       	mov	r17, r25
    7886:	a2 2e       	mov	r10, r18
    7888:	a6 0c       	add	r10, r6
    788a:	f1 e0       	ldi	r31, 0x01	; 1
    788c:	a2 16       	cp	r10, r18
    788e:	08 f0       	brcs	.+2      	; 0x7892 <ntp_input+0x38a>
    7890:	f0 e0       	ldi	r31, 0x00	; 0
    7892:	3a 2f       	mov	r19, r26
    7894:	35 0d       	add	r19, r5
    7896:	e1 e0       	ldi	r30, 0x01	; 1
    7898:	3a 17       	cp	r19, r26
    789a:	08 f0       	brcs	.+2      	; 0x789e <ntp_input+0x396>
    789c:	e0 e0       	ldi	r30, 0x00	; 0
    789e:	cf 2e       	mov	r12, r31
    78a0:	c3 0e       	add	r12, r19
    78a2:	21 e0       	ldi	r18, 0x01	; 1
    78a4:	c3 16       	cp	r12, r19
    78a6:	08 f0       	brcs	.+2      	; 0x78aa <ntp_input+0x3a2>
    78a8:	20 e0       	ldi	r18, 0x00	; 0
    78aa:	e2 2b       	or	r30, r18
    78ac:	4b 2f       	mov	r20, r27
    78ae:	44 0d       	add	r20, r4
    78b0:	f1 e0       	ldi	r31, 0x01	; 1
    78b2:	4b 17       	cp	r20, r27
    78b4:	08 f0       	brcs	.+2      	; 0x78b8 <ntp_input+0x3b0>
    78b6:	f0 e0       	ldi	r31, 0x00	; 0
    78b8:	ee 2e       	mov	r14, r30
    78ba:	e4 0e       	add	r14, r20
    78bc:	21 e0       	ldi	r18, 0x01	; 1
    78be:	e4 16       	cp	r14, r20
    78c0:	08 f0       	brcs	.+2      	; 0x78c4 <ntp_input+0x3bc>
    78c2:	20 e0       	ldi	r18, 0x00	; 0
    78c4:	f2 2b       	or	r31, r18
    78c6:	50 2f       	mov	r21, r16
    78c8:	53 0d       	add	r21, r3
    78ca:	e1 e0       	ldi	r30, 0x01	; 1
    78cc:	50 17       	cp	r21, r16
    78ce:	08 f0       	brcs	.+2      	; 0x78d2 <ntp_input+0x3ca>
    78d0:	e0 e0       	ldi	r30, 0x00	; 0
    78d2:	bf 2f       	mov	r27, r31
    78d4:	b5 0f       	add	r27, r21
    78d6:	21 e0       	ldi	r18, 0x01	; 1
    78d8:	b5 17       	cp	r27, r21
    78da:	08 f0       	brcs	.+2      	; 0x78de <ntp_input+0x3d6>
    78dc:	20 e0       	ldi	r18, 0x00	; 0
    78de:	e2 2b       	or	r30, r18
    78e0:	6f 2d       	mov	r22, r15
    78e2:	62 0d       	add	r22, r2
    78e4:	f1 e0       	ldi	r31, 0x01	; 1
    78e6:	6f 15       	cp	r22, r15
    78e8:	08 f0       	brcs	.+2      	; 0x78ec <ntp_input+0x3e4>
    78ea:	f0 e0       	ldi	r31, 0x00	; 0
    78ec:	ae 2f       	mov	r26, r30
    78ee:	a6 0f       	add	r26, r22
    78f0:	21 e0       	ldi	r18, 0x01	; 1
    78f2:	a6 17       	cp	r26, r22
    78f4:	08 f0       	brcs	.+2      	; 0x78f8 <ntp_input+0x3f0>
    78f6:	20 e0       	ldi	r18, 0x00	; 0
    78f8:	f2 2b       	or	r31, r18
    78fa:	26 96       	adiw	r28, 0x06	; 6
    78fc:	7f ad       	ldd	r23, Y+63	; 0x3f
    78fe:	26 97       	sbiw	r28, 0x06	; 6
    7900:	7d 0d       	add	r23, r13
    7902:	e1 e0       	ldi	r30, 0x01	; 1
    7904:	7d 15       	cp	r23, r13
    7906:	08 f0       	brcs	.+2      	; 0x790a <ntp_input+0x402>
    7908:	e0 e0       	ldi	r30, 0x00	; 0
    790a:	f7 0f       	add	r31, r23
    790c:	21 e0       	ldi	r18, 0x01	; 1
    790e:	f7 17       	cp	r31, r23
    7910:	08 f0       	brcs	.+2      	; 0x7914 <ntp_input+0x40c>
    7912:	20 e0       	ldi	r18, 0x00	; 0
    7914:	e2 2b       	or	r30, r18
    7916:	27 96       	adiw	r28, 0x07	; 7
    7918:	8f ad       	ldd	r24, Y+63	; 0x3f
    791a:	27 97       	sbiw	r28, 0x07	; 7
    791c:	8b 0d       	add	r24, r11
    791e:	91 e0       	ldi	r25, 0x01	; 1
    7920:	8b 15       	cp	r24, r11
    7922:	08 f0       	brcs	.+2      	; 0x7926 <ntp_input+0x41e>
    7924:	90 e0       	ldi	r25, 0x00	; 0
    7926:	e8 0f       	add	r30, r24
    7928:	21 e0       	ldi	r18, 0x01	; 1
    792a:	e8 17       	cp	r30, r24
    792c:	08 f0       	brcs	.+2      	; 0x7930 <ntp_input+0x428>
    792e:	20 e0       	ldi	r18, 0x00	; 0
    7930:	92 2b       	or	r25, r18
    7932:	28 96       	adiw	r28, 0x08	; 8
    7934:	2f ad       	ldd	r18, Y+63	; 0x3f
    7936:	28 97       	sbiw	r28, 0x08	; 8
    7938:	12 0f       	add	r17, r18
    793a:	2a 2d       	mov	r18, r10
    793c:	3c 2d       	mov	r19, r12
    793e:	4e 2d       	mov	r20, r14
    7940:	5b 2f       	mov	r21, r27
    7942:	6a 2f       	mov	r22, r26
    7944:	7f 2f       	mov	r23, r31
    7946:	8e 2f       	mov	r24, r30
    7948:	91 0f       	add	r25, r17
    794a:	c8 c1       	rjmp	.+912    	; 0x7cdc <ntp_input+0x7d4>
    794c:	83 30       	cpi	r24, 0x03	; 3
    794e:	09 f0       	breq	.+2      	; 0x7952 <ntp_input+0x44a>
    7950:	e7 c0       	rjmp	.+462    	; 0x7b20 <ntp_input+0x618>
    7952:	29 2f       	mov	r18, r25
    7954:	28 73       	andi	r18, 0x38	; 56
    7956:	80 91 e9 09 	lds	r24, 0x09E9
    795a:	90 91 ea 09 	lds	r25, 0x09EA
    795e:	01 97       	sbiw	r24, 0x01	; 1
    7960:	f1 f5       	brne	.+124    	; 0x79de <ntp_input+0x4d6>
    7962:	50 90 07 01 	lds	r5, 0x0107
    7966:	52 2a       	or	r5, r18
    7968:	40 90 08 01 	lds	r4, 0x0108
    796c:	e0 90 ec 07 	lds	r14, 0x07EC
    7970:	f0 90 ed 07 	lds	r15, 0x07ED
    7974:	00 91 ee 07 	lds	r16, 0x07EE
    7978:	10 91 ef 07 	lds	r17, 0x07EF
    797c:	80 e8       	ldi	r24, 0x80	; 128
    797e:	9e e7       	ldi	r25, 0x7E	; 126
    7980:	aa ea       	ldi	r26, 0xAA	; 170
    7982:	b3 e8       	ldi	r27, 0x83	; 131
    7984:	e8 0e       	add	r14, r24
    7986:	f9 1e       	adc	r15, r25
    7988:	0a 1f       	adc	r16, r26
    798a:	1b 1f       	adc	r17, r27
    798c:	60 91 f2 07 	lds	r22, 0x07F2
    7990:	70 91 f3 07 	lds	r23, 0x07F3
    7994:	80 e0       	ldi	r24, 0x00	; 0
    7996:	90 e0       	ldi	r25, 0x00	; 0
    7998:	0e 94 60 36 	call	0x6cc0	; 0x6cc0 <timer2stamp>
    799c:	3b 01       	movw	r6, r22
    799e:	4c 01       	movw	r8, r24
    79a0:	a0 90 e8 07 	lds	r10, 0x07E8
    79a4:	b0 90 e9 07 	lds	r11, 0x07E9
    79a8:	c0 90 ea 07 	lds	r12, 0x07EA
    79ac:	d0 90 eb 07 	lds	r13, 0x07EB
    79b0:	80 e8       	ldi	r24, 0x80	; 128
    79b2:	9e e7       	ldi	r25, 0x7E	; 126
    79b4:	aa ea       	ldi	r26, 0xAA	; 170
    79b6:	b3 e8       	ldi	r27, 0x83	; 131
    79b8:	a8 0e       	add	r10, r24
    79ba:	b9 1e       	adc	r11, r25
    79bc:	ca 1e       	adc	r12, r26
    79be:	db 1e       	adc	r13, r27
    79c0:	60 91 f0 07 	lds	r22, 0x07F0
    79c4:	70 91 f1 07 	lds	r23, 0x07F1
    79c8:	80 e0       	ldi	r24, 0x00	; 0
    79ca:	90 e0       	ldi	r25, 0x00	; 0
    79cc:	0e 94 60 36 	call	0x6cc0	; 0x6cc0 <timer2stamp>
    79d0:	25 96       	adiw	r28, 0x05	; 5
    79d2:	6c af       	std	Y+60, r22	; 0x3c
    79d4:	7d af       	std	Y+61, r23	; 0x3d
    79d6:	8e af       	std	Y+62, r24	; 0x3e
    79d8:	9f af       	std	Y+63, r25	; 0x3f
    79da:	25 97       	sbiw	r28, 0x05	; 5
    79dc:	13 c0       	rjmp	.+38     	; 0x7a04 <ntp_input+0x4fc>
    79de:	30 ec       	ldi	r19, 0xC0	; 192
    79e0:	53 2e       	mov	r5, r19
    79e2:	52 2a       	or	r5, r18
    79e4:	25 96       	adiw	r28, 0x05	; 5
    79e6:	1c ae       	std	Y+60, r1	; 0x3c
    79e8:	1d ae       	std	Y+61, r1	; 0x3d
    79ea:	1e ae       	std	Y+62, r1	; 0x3e
    79ec:	1f ae       	std	Y+63, r1	; 0x3f
    79ee:	25 97       	sbiw	r28, 0x05	; 5
    79f0:	66 24       	eor	r6, r6
    79f2:	77 24       	eor	r7, r7
    79f4:	43 01       	movw	r8, r6
    79f6:	aa 24       	eor	r10, r10
    79f8:	bb 24       	eor	r11, r11
    79fa:	65 01       	movw	r12, r10
    79fc:	ee 24       	eor	r14, r14
    79fe:	ff 24       	eor	r15, r15
    7a00:	87 01       	movw	r16, r14
    7a02:	44 24       	eor	r4, r4
    7a04:	8a e2       	ldi	r24, 0x2A	; 42
    7a06:	90 e0       	ldi	r25, 0x00	; 0
    7a08:	0e 94 67 1a 	call	0x34ce	; 0x34ce <enc_txseek>
    7a0c:	85 2d       	mov	r24, r5
    7a0e:	84 60       	ori	r24, 0x04	; 4
    7a10:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    7a14:	84 2d       	mov	r24, r4
    7a16:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    7a1a:	8b 89       	ldd	r24, Y+19	; 0x13
    7a1c:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    7a20:	86 ef       	ldi	r24, 0xF6	; 246
    7a22:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    7a26:	60 e0       	ldi	r22, 0x00	; 0
    7a28:	70 e0       	ldi	r23, 0x00	; 0
    7a2a:	80 e0       	ldi	r24, 0x00	; 0
    7a2c:	90 e0       	ldi	r25, 0x00	; 0
    7a2e:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    7a32:	60 e0       	ldi	r22, 0x00	; 0
    7a34:	70 e0       	ldi	r23, 0x00	; 0
    7a36:	80 e0       	ldi	r24, 0x00	; 0
    7a38:	90 e0       	ldi	r25, 0x00	; 0
    7a3a:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    7a3e:	0e 94 ba 39 	call	0x7374	; 0x7374 <set_referenceid>
    7a42:	c8 01       	movw	r24, r16
    7a44:	b7 01       	movw	r22, r14
    7a46:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    7a4a:	c4 01       	movw	r24, r8
    7a4c:	b3 01       	movw	r22, r6
    7a4e:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    7a52:	80 91 e9 09 	lds	r24, 0x09E9
    7a56:	90 91 ea 09 	lds	r25, 0x09EA
    7a5a:	01 97       	sbiw	r24, 0x01	; 1
    7a5c:	89 f4       	brne	.+34     	; 0x7a80 <ntp_input+0x578>
    7a5e:	8e 01       	movw	r16, r28
    7a60:	07 5c       	subi	r16, 0xC7	; 199
    7a62:	1f 4f       	sbci	r17, 0xFF	; 255
    7a64:	91 e4       	ldi	r25, 0x41	; 65
    7a66:	e9 2e       	mov	r14, r25
    7a68:	f1 2c       	mov	r15, r1
    7a6a:	ec 0e       	add	r14, r28
    7a6c:	fd 1e       	adc	r15, r29
    7a6e:	d8 01       	movw	r26, r16
    7a70:	8d 91       	ld	r24, X+
    7a72:	8d 01       	movw	r16, r26
    7a74:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    7a78:	0e 15       	cp	r16, r14
    7a7a:	1f 05       	cpc	r17, r15
    7a7c:	c1 f7       	brne	.-16     	; 0x7a6e <ntp_input+0x566>
    7a7e:	0c c0       	rjmp	.+24     	; 0x7a98 <ntp_input+0x590>
    7a80:	60 e0       	ldi	r22, 0x00	; 0
    7a82:	70 e0       	ldi	r23, 0x00	; 0
    7a84:	80 e0       	ldi	r24, 0x00	; 0
    7a86:	90 e0       	ldi	r25, 0x00	; 0
    7a88:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    7a8c:	60 e0       	ldi	r22, 0x00	; 0
    7a8e:	70 e0       	ldi	r23, 0x00	; 0
    7a90:	80 e0       	ldi	r24, 0x00	; 0
    7a92:	90 e0       	ldi	r25, 0x00	; 0
    7a94:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    7a98:	c6 01       	movw	r24, r12
    7a9a:	b5 01       	movw	r22, r10
    7a9c:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    7aa0:	25 96       	adiw	r28, 0x05	; 5
    7aa2:	6c ad       	ldd	r22, Y+60	; 0x3c
    7aa4:	7d ad       	ldd	r23, Y+61	; 0x3d
    7aa6:	8e ad       	ldd	r24, Y+62	; 0x3e
    7aa8:	9f ad       	ldd	r25, Y+63	; 0x3f
    7aaa:	25 97       	sbiw	r28, 0x05	; 5
    7aac:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    7ab0:	80 91 e9 09 	lds	r24, 0x09E9
    7ab4:	90 91 ea 09 	lds	r25, 0x09EA
    7ab8:	01 97       	sbiw	r24, 0x01	; 1
    7aba:	39 f0       	breq	.+14     	; 0x7aca <ntp_input+0x5c2>
    7abc:	aa 24       	eor	r10, r10
    7abe:	bb 24       	eor	r11, r11
    7ac0:	65 01       	movw	r12, r10
    7ac2:	ee 24       	eor	r14, r14
    7ac4:	ff 24       	eor	r15, r15
    7ac6:	87 01       	movw	r16, r14
    7ac8:	1e c0       	rjmp	.+60     	; 0x7b06 <ntp_input+0x5fe>
    7aca:	f8 94       	cli
    7acc:	e0 90 fe 0b 	lds	r14, 0x0BFE
    7ad0:	f0 90 ff 0b 	lds	r15, 0x0BFF
    7ad4:	00 91 00 0c 	lds	r16, 0x0C00
    7ad8:	10 91 01 0c 	lds	r17, 0x0C01
    7adc:	80 e8       	ldi	r24, 0x80	; 128
    7ade:	9e e7       	ldi	r25, 0x7E	; 126
    7ae0:	aa ea       	ldi	r26, 0xAA	; 170
    7ae2:	b3 e8       	ldi	r27, 0x83	; 131
    7ae4:	e8 0e       	add	r14, r24
    7ae6:	f9 1e       	adc	r15, r25
    7ae8:	0a 1f       	adc	r16, r26
    7aea:	1b 1f       	adc	r17, r27
    7aec:	60 91 fc 0b 	lds	r22, 0x0BFC
    7af0:	70 91 fd 0b 	lds	r23, 0x0BFD
    7af4:	88 27       	eor	r24, r24
    7af6:	77 fd       	sbrc	r23, 7
    7af8:	80 95       	com	r24
    7afa:	98 2f       	mov	r25, r24
    7afc:	0e 94 60 36 	call	0x6cc0	; 0x6cc0 <timer2stamp>
    7b00:	5b 01       	movw	r10, r22
    7b02:	6c 01       	movw	r12, r24
    7b04:	78 94       	sei
    7b06:	c8 01       	movw	r24, r16
    7b08:	b7 01       	movw	r22, r14
    7b0a:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    7b0e:	c6 01       	movw	r24, r12
    7b10:	b5 01       	movw	r22, r10
    7b12:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    7b16:	80 e3       	ldi	r24, 0x30	; 48
    7b18:	90 e0       	ldi	r25, 0x00	; 0
    7b1a:	0e 94 ec 2a 	call	0x55d8	; 0x55d8 <udp_output>
    7b1e:	e1 c0       	rjmp	.+450    	; 0x7ce2 <ntp_input+0x7da>
    7b20:	85 30       	cpi	r24, 0x05	; 5
    7b22:	09 f0       	breq	.+2      	; 0x7b26 <ntp_input+0x61e>
    7b24:	dd c0       	rjmp	.+442    	; 0x7ce0 <ntp_input+0x7d8>
    7b26:	80 91 c9 09 	lds	r24, 0x09C9
    7b2a:	81 30       	cpi	r24, 0x01	; 1
    7b2c:	09 f0       	breq	.+2      	; 0x7b30 <ntp_input+0x628>
    7b2e:	d8 c0       	rjmp	.+432    	; 0x7ce0 <ntp_input+0x7d8>
    7b30:	89 2f       	mov	r24, r25
    7b32:	80 7c       	andi	r24, 0xC0	; 192
    7b34:	80 93 07 01 	sts	0x0107, r24
    7b38:	9a 89       	ldd	r25, Y+18	; 0x12
    7b3a:	80 3c       	cpi	r24, 0xC0	; 192
    7b3c:	09 f4       	brne	.+2      	; 0x7b40 <ntp_input+0x638>
    7b3e:	d0 c0       	rjmp	.+416    	; 0x7ce0 <ntp_input+0x7d8>
    7b40:	99 23       	and	r25, r25
    7b42:	09 f4       	brne	.+2      	; 0x7b46 <ntp_input+0x63e>
    7b44:	cd c0       	rjmp	.+410    	; 0x7ce0 <ntp_input+0x7d8>
    7b46:	90 31       	cpi	r25, 0x10	; 16
    7b48:	09 f4       	brne	.+2      	; 0x7b4c <ntp_input+0x644>
    7b4a:	ca c0       	rjmp	.+404    	; 0x7ce0 <ntp_input+0x7d8>
    7b4c:	9f 5f       	subi	r25, 0xFF	; 255
    7b4e:	90 93 08 01 	sts	0x0108, r25
    7b52:	6d 89       	ldd	r22, Y+21	; 0x15
    7b54:	7e 89       	ldd	r23, Y+22	; 0x16
    7b56:	8f 89       	ldd	r24, Y+23	; 0x17
    7b58:	98 8d       	ldd	r25, Y+24	; 0x18
    7b5a:	0e 94 3b 41 	call	0x8276	; 0x8276 <cnvendian32>
    7b5e:	60 93 dc 07 	sts	0x07DC, r22
    7b62:	70 93 dd 07 	sts	0x07DD, r23
    7b66:	80 93 de 07 	sts	0x07DE, r24
    7b6a:	90 93 df 07 	sts	0x07DF, r25
    7b6e:	69 8d       	ldd	r22, Y+25	; 0x19
    7b70:	7a 8d       	ldd	r23, Y+26	; 0x1a
    7b72:	8b 8d       	ldd	r24, Y+27	; 0x1b
    7b74:	9c 8d       	ldd	r25, Y+28	; 0x1c
    7b76:	0e 94 3b 41 	call	0x8276	; 0x8276 <cnvendian32>
    7b7a:	60 93 e0 07 	sts	0x07E0, r22
    7b7e:	70 93 e1 07 	sts	0x07E1, r23
    7b82:	80 93 e2 07 	sts	0x07E2, r24
    7b86:	90 93 e3 07 	sts	0x07E3, r25
    7b8a:	fe 01       	movw	r30, r28
    7b8c:	e0 5c       	subi	r30, 0xC0	; 192
    7b8e:	ff 4f       	sbci	r31, 0xFF	; 255
    7b90:	d0 80       	ld	r13, Z
    7b92:	cf ac       	ldd	r12, Y+63	; 0x3f
    7b94:	ae ac       	ldd	r10, Y+62	; 0x3e
    7b96:	fd ac       	ldd	r15, Y+61	; 0x3d
    7b98:	3d 2d       	mov	r19, r13
    7b9a:	d9 82       	std	Y+1, r13	; 0x01
    7b9c:	2c 2d       	mov	r18, r12
    7b9e:	ca 82       	std	Y+2, r12	; 0x02
    7ba0:	9a 2d       	mov	r25, r10
    7ba2:	ab 82       	std	Y+3, r10	; 0x03
    7ba4:	8f 2d       	mov	r24, r15
    7ba6:	fc 82       	std	Y+4, r15	; 0x04
    7ba8:	dc ac       	ldd	r13, Y+60	; 0x3c
    7baa:	cb ac       	ldd	r12, Y+59	; 0x3b
    7bac:	aa ac       	ldd	r10, Y+58	; 0x3a
    7bae:	f9 ac       	ldd	r15, Y+57	; 0x39
    7bb0:	dd 82       	std	Y+5, r13	; 0x05
    7bb2:	ce 82       	std	Y+6, r12	; 0x06
    7bb4:	af 82       	std	Y+7, r10	; 0x07
    7bb6:	f8 86       	std	Y+8, r15	; 0x08
    7bb8:	89 01       	movw	r16, r18
    7bba:	e9 2e       	mov	r14, r25
    7bbc:	b8 2e       	mov	r11, r24
    7bbe:	81 2f       	mov	r24, r17
    7bc0:	80 2b       	or	r24, r16
    7bc2:	89 2b       	or	r24, r25
    7bc4:	8b 29       	or	r24, r11
    7bc6:	8d 29       	or	r24, r13
    7bc8:	8c 29       	or	r24, r12
    7bca:	8a 29       	or	r24, r10
    7bcc:	8f 29       	or	r24, r15
    7bce:	09 f4       	brne	.+2      	; 0x7bd2 <ntp_input+0x6ca>
    7bd0:	87 c0       	rjmp	.+270    	; 0x7ce0 <ntp_input+0x7d8>
    7bd2:	f8 94       	cli
    7bd4:	80 91 fe 0b 	lds	r24, 0x0BFE
    7bd8:	90 91 ff 0b 	lds	r25, 0x0BFF
    7bdc:	a0 91 00 0c 	lds	r26, 0x0C00
    7be0:	b0 91 01 0c 	lds	r27, 0x0C01
    7be4:	80 58       	subi	r24, 0x80	; 128
    7be6:	91 48       	sbci	r25, 0x81	; 129
    7be8:	a5 45       	sbci	r26, 0x55	; 85
    7bea:	bc 47       	sbci	r27, 0x7C	; 124
    7bec:	8d 83       	std	Y+5, r24	; 0x05
    7bee:	9e 83       	std	Y+6, r25	; 0x06
    7bf0:	af 83       	std	Y+7, r26	; 0x07
    7bf2:	b8 87       	std	Y+8, r27	; 0x08
    7bf4:	60 91 fc 0b 	lds	r22, 0x0BFC
    7bf8:	70 91 fd 0b 	lds	r23, 0x0BFD
    7bfc:	88 27       	eor	r24, r24
    7bfe:	77 fd       	sbrc	r23, 7
    7c00:	80 95       	com	r24
    7c02:	98 2f       	mov	r25, r24
    7c04:	0e 94 60 36 	call	0x6cc0	; 0x6cc0 <timer2stamp>
    7c08:	69 83       	std	Y+1, r22	; 0x01
    7c0a:	7a 83       	std	Y+2, r23	; 0x02
    7c0c:	8b 83       	std	Y+3, r24	; 0x03
    7c0e:	9c 83       	std	Y+4, r25	; 0x04
    7c10:	78 94       	sei
    7c12:	89 81       	ldd	r24, Y+1	; 0x01
    7c14:	9a 81       	ldd	r25, Y+2	; 0x02
    7c16:	5b 81       	ldd	r21, Y+3	; 0x03
    7c18:	6c 81       	ldd	r22, Y+4	; 0x04
    7c1a:	7d 81       	ldd	r23, Y+5	; 0x05
    7c1c:	ee 81       	ldd	r30, Y+6	; 0x06
    7c1e:	ff 81       	ldd	r31, Y+7	; 0x07
    7c20:	a8 85       	ldd	r26, Y+8	; 0x08
    7c22:	21 2f       	mov	r18, r17
    7c24:	28 1b       	sub	r18, r24
    7c26:	31 e0       	ldi	r19, 0x01	; 1
    7c28:	12 17       	cp	r17, r18
    7c2a:	08 f0       	brcs	.+2      	; 0x7c2e <ntp_input+0x726>
    7c2c:	30 e0       	ldi	r19, 0x00	; 0
    7c2e:	80 2f       	mov	r24, r16
    7c30:	89 1b       	sub	r24, r25
    7c32:	41 e0       	ldi	r20, 0x01	; 1
    7c34:	08 17       	cp	r16, r24
    7c36:	08 f0       	brcs	.+2      	; 0x7c3a <ntp_input+0x732>
    7c38:	40 e0       	ldi	r20, 0x00	; 0
    7c3a:	98 2f       	mov	r25, r24
    7c3c:	93 1b       	sub	r25, r19
    7c3e:	39 2f       	mov	r19, r25
    7c40:	91 e0       	ldi	r25, 0x01	; 1
    7c42:	83 17       	cp	r24, r19
    7c44:	08 f0       	brcs	.+2      	; 0x7c48 <ntp_input+0x740>
    7c46:	90 e0       	ldi	r25, 0x00	; 0
    7c48:	49 2b       	or	r20, r25
    7c4a:	8e 2d       	mov	r24, r14
    7c4c:	85 1b       	sub	r24, r21
    7c4e:	51 e0       	ldi	r21, 0x01	; 1
    7c50:	e8 16       	cp	r14, r24
    7c52:	08 f0       	brcs	.+2      	; 0x7c56 <ntp_input+0x74e>
    7c54:	50 e0       	ldi	r21, 0x00	; 0
    7c56:	b8 2f       	mov	r27, r24
    7c58:	b4 1b       	sub	r27, r20
    7c5a:	4b 2f       	mov	r20, r27
    7c5c:	91 e0       	ldi	r25, 0x01	; 1
    7c5e:	8b 17       	cp	r24, r27
    7c60:	08 f0       	brcs	.+2      	; 0x7c64 <ntp_input+0x75c>
    7c62:	90 e0       	ldi	r25, 0x00	; 0
    7c64:	59 2b       	or	r21, r25
    7c66:	8b 2d       	mov	r24, r11
    7c68:	86 1b       	sub	r24, r22
    7c6a:	61 e0       	ldi	r22, 0x01	; 1
    7c6c:	b8 16       	cp	r11, r24
    7c6e:	08 f0       	brcs	.+2      	; 0x7c72 <ntp_input+0x76a>
    7c70:	60 e0       	ldi	r22, 0x00	; 0
    7c72:	98 2f       	mov	r25, r24
    7c74:	95 1b       	sub	r25, r21
    7c76:	59 2f       	mov	r21, r25
    7c78:	91 e0       	ldi	r25, 0x01	; 1
    7c7a:	85 17       	cp	r24, r21
    7c7c:	08 f0       	brcs	.+2      	; 0x7c80 <ntp_input+0x778>
    7c7e:	90 e0       	ldi	r25, 0x00	; 0
    7c80:	69 2b       	or	r22, r25
    7c82:	8d 2d       	mov	r24, r13
    7c84:	87 1b       	sub	r24, r23
    7c86:	71 e0       	ldi	r23, 0x01	; 1
    7c88:	d8 16       	cp	r13, r24
    7c8a:	08 f0       	brcs	.+2      	; 0x7c8e <ntp_input+0x786>
    7c8c:	70 e0       	ldi	r23, 0x00	; 0
    7c8e:	b8 2f       	mov	r27, r24
    7c90:	b6 1b       	sub	r27, r22
    7c92:	6b 2f       	mov	r22, r27
    7c94:	91 e0       	ldi	r25, 0x01	; 1
    7c96:	8b 17       	cp	r24, r27
    7c98:	08 f0       	brcs	.+2      	; 0x7c9c <ntp_input+0x794>
    7c9a:	90 e0       	ldi	r25, 0x00	; 0
    7c9c:	79 2b       	or	r23, r25
    7c9e:	9c 2d       	mov	r25, r12
    7ca0:	9e 1b       	sub	r25, r30
    7ca2:	81 e0       	ldi	r24, 0x01	; 1
    7ca4:	c9 16       	cp	r12, r25
    7ca6:	08 f0       	brcs	.+2      	; 0x7caa <ntp_input+0x7a2>
    7ca8:	80 e0       	ldi	r24, 0x00	; 0
    7caa:	e9 2f       	mov	r30, r25
    7cac:	e7 1b       	sub	r30, r23
    7cae:	7e 2f       	mov	r23, r30
    7cb0:	e1 e0       	ldi	r30, 0x01	; 1
    7cb2:	97 17       	cp	r25, r23
    7cb4:	08 f0       	brcs	.+2      	; 0x7cb8 <ntp_input+0x7b0>
    7cb6:	e0 e0       	ldi	r30, 0x00	; 0
    7cb8:	8e 2b       	or	r24, r30
    7cba:	9a 2d       	mov	r25, r10
    7cbc:	9f 1b       	sub	r25, r31
    7cbe:	f1 e0       	ldi	r31, 0x01	; 1
    7cc0:	a9 16       	cp	r10, r25
    7cc2:	08 f0       	brcs	.+2      	; 0x7cc6 <ntp_input+0x7be>
    7cc4:	f0 e0       	ldi	r31, 0x00	; 0
    7cc6:	b9 2f       	mov	r27, r25
    7cc8:	b8 1b       	sub	r27, r24
    7cca:	8b 2f       	mov	r24, r27
    7ccc:	e1 e0       	ldi	r30, 0x01	; 1
    7cce:	9b 17       	cp	r25, r27
    7cd0:	08 f0       	brcs	.+2      	; 0x7cd4 <ntp_input+0x7cc>
    7cd2:	e0 e0       	ldi	r30, 0x00	; 0
    7cd4:	fe 2b       	or	r31, r30
    7cd6:	fa 1a       	sub	r15, r26
    7cd8:	9f 2d       	mov	r25, r15
    7cda:	9f 1b       	sub	r25, r31
    7cdc:	0e 94 85 36 	call	0x6d0a	; 0x6d0a <ntp_calsub>
    7ce0:	80 e0       	ldi	r24, 0x00	; 0
    7ce2:	c9 5b       	subi	r28, 0xB9	; 185
    7ce4:	df 4f       	sbci	r29, 0xFF	; 255
    7ce6:	e2 e1       	ldi	r30, 0x12	; 18
    7ce8:	0c 94 65 6d 	jmp	0xdaca	; 0xdaca <__epilogue_restores__>

00007cec <time_input>:
    7cec:	80 91 e9 09 	lds	r24, 0x09E9
    7cf0:	90 91 ea 09 	lds	r25, 0x09EA
    7cf4:	89 2b       	or	r24, r25
    7cf6:	11 f4       	brne	.+4      	; 0x7cfc <time_input+0x10>
    7cf8:	80 e0       	ldi	r24, 0x00	; 0
    7cfa:	08 95       	ret
    7cfc:	8a e2       	ldi	r24, 0x2A	; 42
    7cfe:	90 e0       	ldi	r25, 0x00	; 0
    7d00:	0e 94 67 1a 	call	0x34ce	; 0x34ce <enc_txseek>
    7d04:	f8 94       	cli
    7d06:	60 91 fe 0b 	lds	r22, 0x0BFE
    7d0a:	70 91 ff 0b 	lds	r23, 0x0BFF
    7d0e:	80 91 00 0c 	lds	r24, 0x0C00
    7d12:	90 91 01 0c 	lds	r25, 0x0C01
    7d16:	78 94       	sei
    7d18:	60 58       	subi	r22, 0x80	; 128
    7d1a:	71 48       	sbci	r23, 0x81	; 129
    7d1c:	85 45       	sbci	r24, 0x55	; 85
    7d1e:	9c 47       	sbci	r25, 0x7C	; 124
    7d20:	0e 94 b3 19 	call	0x3366	; 0x3366 <enc_writebuf4>
    7d24:	84 e0       	ldi	r24, 0x04	; 4
    7d26:	90 e0       	ldi	r25, 0x00	; 0
    7d28:	0e 94 ec 2a 	call	0x55d8	; 0x55d8 <udp_output>
    7d2c:	08 95       	ret

00007d2e <uctoahz>:
    7d2e:	db 01       	movw	r26, r22
    7d30:	98 2f       	mov	r25, r24
    7d32:	92 95       	swap	r25
    7d34:	9f 70       	andi	r25, 0x0F	; 15
    7d36:	27 e7       	ldi	r18, 0x77	; 119
    7d38:	31 e0       	ldi	r19, 0x01	; 1
    7d3a:	f9 01       	movw	r30, r18
    7d3c:	e9 0f       	add	r30, r25
    7d3e:	f1 1d       	adc	r31, r1
    7d40:	e4 91       	lpm	r30, Z+
    7d42:	ec 93       	st	X, r30
    7d44:	8f 70       	andi	r24, 0x0F	; 15
    7d46:	28 0f       	add	r18, r24
    7d48:	31 1d       	adc	r19, r1
    7d4a:	f9 01       	movw	r30, r18
    7d4c:	84 91       	lpm	r24, Z+
    7d4e:	11 96       	adiw	r26, 0x01	; 1
    7d50:	8c 93       	st	X, r24
    7d52:	11 97       	sbiw	r26, 0x01	; 1
    7d54:	12 96       	adiw	r26, 0x02	; 2
    7d56:	1c 92       	st	X, r1
    7d58:	12 97       	sbiw	r26, 0x02	; 2
    7d5a:	cb 01       	movw	r24, r22
    7d5c:	08 95       	ret

00007d5e <ustoahz>:
    7d5e:	db 01       	movw	r26, r22
    7d60:	29 2f       	mov	r18, r25
    7d62:	22 95       	swap	r18
    7d64:	2f 70       	andi	r18, 0x0F	; 15
    7d66:	47 e7       	ldi	r20, 0x77	; 119
    7d68:	51 e0       	ldi	r21, 0x01	; 1
    7d6a:	fa 01       	movw	r30, r20
    7d6c:	e2 0f       	add	r30, r18
    7d6e:	f1 1d       	adc	r31, r1
    7d70:	e4 91       	lpm	r30, Z+
    7d72:	ec 93       	st	X, r30
    7d74:	9f 70       	andi	r25, 0x0F	; 15
    7d76:	fa 01       	movw	r30, r20
    7d78:	e9 0f       	add	r30, r25
    7d7a:	f1 1d       	adc	r31, r1
    7d7c:	e4 91       	lpm	r30, Z+
    7d7e:	11 96       	adiw	r26, 0x01	; 1
    7d80:	ec 93       	st	X, r30
    7d82:	11 97       	sbiw	r26, 0x01	; 1
    7d84:	98 2f       	mov	r25, r24
    7d86:	92 95       	swap	r25
    7d88:	9f 70       	andi	r25, 0x0F	; 15
    7d8a:	fa 01       	movw	r30, r20
    7d8c:	e9 0f       	add	r30, r25
    7d8e:	f1 1d       	adc	r31, r1
    7d90:	e4 91       	lpm	r30, Z+
    7d92:	12 96       	adiw	r26, 0x02	; 2
    7d94:	ec 93       	st	X, r30
    7d96:	12 97       	sbiw	r26, 0x02	; 2
    7d98:	8f 70       	andi	r24, 0x0F	; 15
    7d9a:	48 0f       	add	r20, r24
    7d9c:	51 1d       	adc	r21, r1
    7d9e:	fa 01       	movw	r30, r20
    7da0:	84 91       	lpm	r24, Z+
    7da2:	13 96       	adiw	r26, 0x03	; 3
    7da4:	8c 93       	st	X, r24
    7da6:	13 97       	sbiw	r26, 0x03	; 3
    7da8:	14 96       	adiw	r26, 0x04	; 4
    7daa:	1c 92       	st	X, r1
    7dac:	14 97       	sbiw	r26, 0x04	; 4
    7dae:	cb 01       	movw	r24, r22
    7db0:	08 95       	ret

00007db2 <ultoahz>:
    7db2:	da 01       	movw	r26, r20
    7db4:	29 2f       	mov	r18, r25
    7db6:	22 95       	swap	r18
    7db8:	2f 70       	andi	r18, 0x0F	; 15
    7dba:	47 e7       	ldi	r20, 0x77	; 119
    7dbc:	51 e0       	ldi	r21, 0x01	; 1
    7dbe:	fa 01       	movw	r30, r20
    7dc0:	e2 0f       	add	r30, r18
    7dc2:	f1 1d       	adc	r31, r1
    7dc4:	e4 91       	lpm	r30, Z+
    7dc6:	ec 93       	st	X, r30
    7dc8:	9f 70       	andi	r25, 0x0F	; 15
    7dca:	fa 01       	movw	r30, r20
    7dcc:	e9 0f       	add	r30, r25
    7dce:	f1 1d       	adc	r31, r1
    7dd0:	e4 91       	lpm	r30, Z+
    7dd2:	11 96       	adiw	r26, 0x01	; 1
    7dd4:	ec 93       	st	X, r30
    7dd6:	11 97       	sbiw	r26, 0x01	; 1
    7dd8:	98 2f       	mov	r25, r24
    7dda:	92 95       	swap	r25
    7ddc:	9f 70       	andi	r25, 0x0F	; 15
    7dde:	fa 01       	movw	r30, r20
    7de0:	e9 0f       	add	r30, r25
    7de2:	f1 1d       	adc	r31, r1
    7de4:	e4 91       	lpm	r30, Z+
    7de6:	12 96       	adiw	r26, 0x02	; 2
    7de8:	ec 93       	st	X, r30
    7dea:	12 97       	sbiw	r26, 0x02	; 2
    7dec:	8f 70       	andi	r24, 0x0F	; 15
    7dee:	fa 01       	movw	r30, r20
    7df0:	e8 0f       	add	r30, r24
    7df2:	f1 1d       	adc	r31, r1
    7df4:	e4 91       	lpm	r30, Z+
    7df6:	13 96       	adiw	r26, 0x03	; 3
    7df8:	ec 93       	st	X, r30
    7dfa:	13 97       	sbiw	r26, 0x03	; 3
    7dfc:	87 2f       	mov	r24, r23
    7dfe:	82 95       	swap	r24
    7e00:	8f 70       	andi	r24, 0x0F	; 15
    7e02:	fa 01       	movw	r30, r20
    7e04:	e8 0f       	add	r30, r24
    7e06:	f1 1d       	adc	r31, r1
    7e08:	e4 91       	lpm	r30, Z+
    7e0a:	14 96       	adiw	r26, 0x04	; 4
    7e0c:	ec 93       	st	X, r30
    7e0e:	14 97       	sbiw	r26, 0x04	; 4
    7e10:	7f 70       	andi	r23, 0x0F	; 15
    7e12:	fa 01       	movw	r30, r20
    7e14:	e7 0f       	add	r30, r23
    7e16:	f1 1d       	adc	r31, r1
    7e18:	e4 91       	lpm	r30, Z+
    7e1a:	15 96       	adiw	r26, 0x05	; 5
    7e1c:	ec 93       	st	X, r30
    7e1e:	15 97       	sbiw	r26, 0x05	; 5
    7e20:	86 2f       	mov	r24, r22
    7e22:	82 95       	swap	r24
    7e24:	8f 70       	andi	r24, 0x0F	; 15
    7e26:	fa 01       	movw	r30, r20
    7e28:	e8 0f       	add	r30, r24
    7e2a:	f1 1d       	adc	r31, r1
    7e2c:	e4 91       	lpm	r30, Z+
    7e2e:	16 96       	adiw	r26, 0x06	; 6
    7e30:	ec 93       	st	X, r30
    7e32:	16 97       	sbiw	r26, 0x06	; 6
    7e34:	6f 70       	andi	r22, 0x0F	; 15
    7e36:	46 0f       	add	r20, r22
    7e38:	51 1d       	adc	r21, r1
    7e3a:	fa 01       	movw	r30, r20
    7e3c:	84 91       	lpm	r24, Z+
    7e3e:	17 96       	adiw	r26, 0x07	; 7
    7e40:	8c 93       	st	X, r24
    7e42:	17 97       	sbiw	r26, 0x07	; 7
    7e44:	18 96       	adiw	r26, 0x08	; 8
    7e46:	1c 92       	st	X, r1
    7e48:	18 97       	sbiw	r26, 0x08	; 8
    7e4a:	cd 01       	movw	r24, r26
    7e4c:	08 95       	ret

00007e4e <uctoaz>:
    7e4e:	28 2f       	mov	r18, r24
    7e50:	db 01       	movw	r26, r22
    7e52:	64 e6       	ldi	r22, 0x64	; 100
    7e54:	0e 94 ec 6c 	call	0xd9d8	; 0xd9d8 <__udivmodqi4>
    7e58:	39 2f       	mov	r19, r25
    7e5a:	82 2f       	mov	r24, r18
    7e5c:	0e 94 ec 6c 	call	0xd9d8	; 0xd9d8 <__udivmodqi4>
    7e60:	80 5d       	subi	r24, 0xD0	; 208
    7e62:	fd 01       	movw	r30, r26
    7e64:	81 93       	st	Z+, r24
    7e66:	83 2f       	mov	r24, r19
    7e68:	6a e0       	ldi	r22, 0x0A	; 10
    7e6a:	0e 94 ec 6c 	call	0xd9d8	; 0xd9d8 <__udivmodqi4>
    7e6e:	80 5d       	subi	r24, 0xD0	; 208
    7e70:	11 96       	adiw	r26, 0x01	; 1
    7e72:	8c 93       	st	X, r24
    7e74:	11 97       	sbiw	r26, 0x01	; 1
    7e76:	83 2f       	mov	r24, r19
    7e78:	0e 94 ec 6c 	call	0xd9d8	; 0xd9d8 <__udivmodqi4>
    7e7c:	90 5d       	subi	r25, 0xD0	; 208
    7e7e:	91 83       	std	Z+1, r25	; 0x01
    7e80:	12 82       	std	Z+2, r1	; 0x02
    7e82:	cd 01       	movw	r24, r26
    7e84:	08 95       	ret

00007e86 <ustoaz>:
    7e86:	a0 e0       	ldi	r26, 0x00	; 0
    7e88:	b0 e0       	ldi	r27, 0x00	; 0
    7e8a:	e9 e4       	ldi	r30, 0x49	; 73
    7e8c:	ff e3       	ldi	r31, 0x3F	; 63
    7e8e:	0c 94 54 6d 	jmp	0xdaa8	; 0xdaa8 <__prologue_saves__+0x16>
    7e92:	48 2f       	mov	r20, r24
    7e94:	f9 2e       	mov	r15, r25
    7e96:	e6 2e       	mov	r14, r22
    7e98:	d7 2e       	mov	r13, r23
    7e9a:	86 2f       	mov	r24, r22
    7e9c:	97 2f       	mov	r25, r23
    7e9e:	9c 01       	movw	r18, r24
    7ea0:	e9 01       	movw	r28, r18
    7ea2:	e0 e1       	ldi	r30, 0x10	; 16
    7ea4:	f7 e2       	ldi	r31, 0x27	; 39
    7ea6:	00 e0       	ldi	r16, 0x00	; 0
    7ea8:	10 e0       	ldi	r17, 0x00	; 0
    7eaa:	84 2f       	mov	r24, r20
    7eac:	9f 2d       	mov	r25, r15
    7eae:	bf 01       	movw	r22, r30
    7eb0:	0e 94 f8 6c 	call	0xd9f0	; 0xd9f0 <__udivmodhi4>
    7eb4:	26 2f       	mov	r18, r22
    7eb6:	84 2f       	mov	r24, r20
    7eb8:	9f 2d       	mov	r25, r15
    7eba:	bf 01       	movw	r22, r30
    7ebc:	0e 94 f8 6c 	call	0xd9f0	; 0xd9f0 <__udivmodhi4>
    7ec0:	48 2f       	mov	r20, r24
    7ec2:	f9 2e       	mov	r15, r25
    7ec4:	20 5d       	subi	r18, 0xD0	; 208
    7ec6:	29 93       	st	Y+, r18
    7ec8:	cf 01       	movw	r24, r30
    7eca:	6a e0       	ldi	r22, 0x0A	; 10
    7ecc:	70 e0       	ldi	r23, 0x00	; 0
    7ece:	0e 94 f8 6c 	call	0xd9f0	; 0xd9f0 <__udivmodhi4>
    7ed2:	fb 01       	movw	r30, r22
    7ed4:	0f 5f       	subi	r16, 0xFF	; 255
    7ed6:	1f 4f       	sbci	r17, 0xFF	; 255
    7ed8:	04 30       	cpi	r16, 0x04	; 4
    7eda:	11 05       	cpc	r17, r1
    7edc:	31 f7       	brne	.-52     	; 0x7eaa <ustoaz+0x24>
    7ede:	40 5d       	subi	r20, 0xD0	; 208
    7ee0:	48 83       	st	Y, r20
    7ee2:	19 82       	std	Y+1, r1	; 0x01
    7ee4:	8e 2d       	mov	r24, r14
    7ee6:	9d 2d       	mov	r25, r13
    7ee8:	cd b7       	in	r28, 0x3d	; 61
    7eea:	de b7       	in	r29, 0x3e	; 62
    7eec:	e7 e0       	ldi	r30, 0x07	; 7
    7eee:	0c 94 70 6d 	jmp	0xdae0	; 0xdae0 <__epilogue_restores__+0x16>

00007ef2 <ultoaz>:
    7ef2:	a0 e0       	ldi	r26, 0x00	; 0
    7ef4:	b0 e0       	ldi	r27, 0x00	; 0
    7ef6:	ef e7       	ldi	r30, 0x7F	; 127
    7ef8:	ff e3       	ldi	r31, 0x3F	; 63
    7efa:	0c 94 4c 6d 	jmp	0xda98	; 0xda98 <__prologue_saves__+0x6>
    7efe:	06 2f       	mov	r16, r22
    7f00:	77 2e       	mov	r7, r23
    7f02:	4c 01       	movw	r8, r24
    7f04:	64 2e       	mov	r6, r20
    7f06:	55 2e       	mov	r5, r21
    7f08:	84 2f       	mov	r24, r20
    7f0a:	95 2f       	mov	r25, r21
    7f0c:	9c 01       	movw	r18, r24
    7f0e:	e9 01       	movw	r28, r18
    7f10:	c1 2c       	mov	r12, r1
    7f12:	8a ec       	ldi	r24, 0xCA	; 202
    7f14:	d8 2e       	mov	r13, r24
    7f16:	8a e9       	ldi	r24, 0x9A	; 154
    7f18:	e8 2e       	mov	r14, r24
    7f1a:	8b e3       	ldi	r24, 0x3B	; 59
    7f1c:	f8 2e       	mov	r15, r24
    7f1e:	aa 24       	eor	r10, r10
    7f20:	bb 24       	eor	r11, r11
    7f22:	60 2f       	mov	r22, r16
    7f24:	77 2d       	mov	r23, r7
    7f26:	c4 01       	movw	r24, r8
    7f28:	a7 01       	movw	r20, r14
    7f2a:	96 01       	movw	r18, r12
    7f2c:	0e 94 0c 6d 	call	0xda18	; 0xda18 <__udivmodsi4>
    7f30:	12 2f       	mov	r17, r18
    7f32:	60 2f       	mov	r22, r16
    7f34:	77 2d       	mov	r23, r7
    7f36:	c4 01       	movw	r24, r8
    7f38:	a7 01       	movw	r20, r14
    7f3a:	96 01       	movw	r18, r12
    7f3c:	0e 94 0c 6d 	call	0xda18	; 0xda18 <__udivmodsi4>
    7f40:	06 2f       	mov	r16, r22
    7f42:	77 2e       	mov	r7, r23
    7f44:	4c 01       	movw	r8, r24
    7f46:	10 5d       	subi	r17, 0xD0	; 208
    7f48:	19 93       	st	Y+, r17
    7f4a:	c7 01       	movw	r24, r14
    7f4c:	b6 01       	movw	r22, r12
    7f4e:	2a e0       	ldi	r18, 0x0A	; 10
    7f50:	30 e0       	ldi	r19, 0x00	; 0
    7f52:	40 e0       	ldi	r20, 0x00	; 0
    7f54:	50 e0       	ldi	r21, 0x00	; 0
    7f56:	0e 94 0c 6d 	call	0xda18	; 0xda18 <__udivmodsi4>
    7f5a:	c9 01       	movw	r24, r18
    7f5c:	da 01       	movw	r26, r20
    7f5e:	6c 01       	movw	r12, r24
    7f60:	7d 01       	movw	r14, r26
    7f62:	08 94       	sec
    7f64:	a1 1c       	adc	r10, r1
    7f66:	b1 1c       	adc	r11, r1
    7f68:	89 e0       	ldi	r24, 0x09	; 9
    7f6a:	a8 16       	cp	r10, r24
    7f6c:	b1 04       	cpc	r11, r1
    7f6e:	c9 f6       	brne	.-78     	; 0x7f22 <ultoaz+0x30>
    7f70:	00 5d       	subi	r16, 0xD0	; 208
    7f72:	08 83       	st	Y, r16
    7f74:	19 82       	std	Y+1, r1	; 0x01
    7f76:	86 2d       	mov	r24, r6
    7f78:	95 2d       	mov	r25, r5
    7f7a:	cd b7       	in	r28, 0x3d	; 61
    7f7c:	de b7       	in	r29, 0x3e	; 62
    7f7e:	ef e0       	ldi	r30, 0x0F	; 15
    7f80:	0c 94 68 6d 	jmp	0xdad0	; 0xdad0 <__epilogue_restores__+0x6>

00007f84 <ltoaz>:
    7f84:	ef 92       	push	r14
    7f86:	ff 92       	push	r15
    7f88:	0f 93       	push	r16
    7f8a:	1f 93       	push	r17
    7f8c:	8b 01       	movw	r16, r22
    7f8e:	9c 01       	movw	r18, r24
    7f90:	f4 2e       	mov	r15, r20
    7f92:	e5 2e       	mov	r14, r21
    7f94:	97 fd       	sbrc	r25, 7
    7f96:	04 c0       	rjmp	.+8      	; 0x7fa0 <ltoaz+0x1c>
    7f98:	84 2f       	mov	r24, r20
    7f9a:	95 2f       	mov	r25, r21
    7f9c:	fc 01       	movw	r30, r24
    7f9e:	0c c0       	rjmp	.+24     	; 0x7fb8 <ltoaz+0x34>
    7fa0:	30 95       	com	r19
    7fa2:	20 95       	com	r18
    7fa4:	10 95       	com	r17
    7fa6:	01 95       	neg	r16
    7fa8:	1f 4f       	sbci	r17, 0xFF	; 255
    7faa:	2f 4f       	sbci	r18, 0xFF	; 255
    7fac:	3f 4f       	sbci	r19, 0xFF	; 255
    7fae:	84 2f       	mov	r24, r20
    7fb0:	95 2f       	mov	r25, r21
    7fb2:	fc 01       	movw	r30, r24
    7fb4:	8d e2       	ldi	r24, 0x2D	; 45
    7fb6:	81 93       	st	Z+, r24
    7fb8:	c9 01       	movw	r24, r18
    7fba:	b8 01       	movw	r22, r16
    7fbc:	af 01       	movw	r20, r30
    7fbe:	0e 94 79 3f 	call	0x7ef2	; 0x7ef2 <ultoaz>
    7fc2:	8f 2d       	mov	r24, r15
    7fc4:	9e 2d       	mov	r25, r14
    7fc6:	1f 91       	pop	r17
    7fc8:	0f 91       	pop	r16
    7fca:	ff 90       	pop	r15
    7fcc:	ef 90       	pop	r14
    7fce:	08 95       	ret

00007fd0 <_atoi>:
    7fd0:	1f 93       	push	r17
    7fd2:	cf 93       	push	r28
    7fd4:	df 93       	push	r29
    7fd6:	ec 01       	movw	r28, r24
    7fd8:	20 e0       	ldi	r18, 0x00	; 0
    7fda:	30 e0       	ldi	r19, 0x00	; 0
    7fdc:	40 e0       	ldi	r20, 0x00	; 0
    7fde:	50 e0       	ldi	r21, 0x00	; 0
    7fe0:	18 81       	ld	r17, Y
    7fe2:	81 2f       	mov	r24, r17
    7fe4:	80 53       	subi	r24, 0x30	; 48
    7fe6:	8a 30       	cpi	r24, 0x0A	; 10
    7fe8:	c8 f4       	brcc	.+50     	; 0x801c <_atoi+0x4c>
    7fea:	ca 01       	movw	r24, r20
    7fec:	b9 01       	movw	r22, r18
    7fee:	2a e0       	ldi	r18, 0x0A	; 10
    7ff0:	30 e0       	ldi	r19, 0x00	; 0
    7ff2:	40 e0       	ldi	r20, 0x00	; 0
    7ff4:	50 e0       	ldi	r21, 0x00	; 0
    7ff6:	0e 94 cd 6c 	call	0xd99a	; 0xd99a <__mulsi3>
    7ffa:	9b 01       	movw	r18, r22
    7ffc:	ac 01       	movw	r20, r24
    7ffe:	81 2f       	mov	r24, r17
    8000:	99 27       	eor	r25, r25
    8002:	87 fd       	sbrc	r24, 7
    8004:	90 95       	com	r25
    8006:	c0 97       	sbiw	r24, 0x30	; 48
    8008:	aa 27       	eor	r26, r26
    800a:	97 fd       	sbrc	r25, 7
    800c:	a0 95       	com	r26
    800e:	ba 2f       	mov	r27, r26
    8010:	28 0f       	add	r18, r24
    8012:	39 1f       	adc	r19, r25
    8014:	4a 1f       	adc	r20, r26
    8016:	5b 1f       	adc	r21, r27
    8018:	21 96       	adiw	r28, 0x01	; 1
    801a:	e2 cf       	rjmp	.-60     	; 0x7fe0 <_atoi+0x10>
    801c:	20 30       	cpi	r18, 0x00	; 0
    801e:	80 e0       	ldi	r24, 0x00	; 0
    8020:	38 07       	cpc	r19, r24
    8022:	81 e0       	ldi	r24, 0x01	; 1
    8024:	48 07       	cpc	r20, r24
    8026:	80 e0       	ldi	r24, 0x00	; 0
    8028:	58 07       	cpc	r21, r24
    802a:	20 f0       	brcs	.+8      	; 0x8034 <_atoi+0x64>
    802c:	2f ef       	ldi	r18, 0xFF	; 255
    802e:	3f ef       	ldi	r19, 0xFF	; 255
    8030:	40 e0       	ldi	r20, 0x00	; 0
    8032:	50 e0       	ldi	r21, 0x00	; 0
    8034:	c9 01       	movw	r24, r18
    8036:	df 91       	pop	r29
    8038:	cf 91       	pop	r28
    803a:	1f 91       	pop	r17
    803c:	08 95       	ret

0000803e <asc2bin>:
    803e:	98 2f       	mov	r25, r24
    8040:	81 54       	subi	r24, 0x41	; 65
    8042:	86 30       	cpi	r24, 0x06	; 6
    8044:	10 f4       	brcc	.+4      	; 0x804a <asc2bin+0xc>
    8046:	87 e3       	ldi	r24, 0x37	; 55
    8048:	07 c0       	rjmp	.+14     	; 0x8058 <asc2bin+0x1a>
    804a:	89 2f       	mov	r24, r25
    804c:	81 56       	subi	r24, 0x61	; 97
    804e:	86 30       	cpi	r24, 0x06	; 6
    8050:	10 f4       	brcc	.+4      	; 0x8056 <asc2bin+0x18>
    8052:	87 e5       	ldi	r24, 0x57	; 87
    8054:	01 c0       	rjmp	.+2      	; 0x8058 <asc2bin+0x1a>
    8056:	80 e3       	ldi	r24, 0x30	; 48
    8058:	98 1b       	sub	r25, r24
    805a:	89 2f       	mov	r24, r25
    805c:	08 95       	ret

0000805e <atox>:
    805e:	ff 92       	push	r15
    8060:	0f 93       	push	r16
    8062:	1f 93       	push	r17
    8064:	8c 01       	movw	r16, r24
    8066:	fc 01       	movw	r30, r24
    8068:	80 81       	ld	r24, Z
    806a:	0e 94 1f 40 	call	0x803e	; 0x803e <asc2bin>
    806e:	f8 2e       	mov	r15, r24
    8070:	f2 94       	swap	r15
    8072:	90 ef       	ldi	r25, 0xF0	; 240
    8074:	f9 22       	and	r15, r25
    8076:	f8 01       	movw	r30, r16
    8078:	81 81       	ldd	r24, Z+1	; 0x01
    807a:	0e 94 1f 40 	call	0x803e	; 0x803e <asc2bin>
    807e:	8f 70       	andi	r24, 0x0F	; 15
    8080:	8f 29       	or	r24, r15
    8082:	1f 91       	pop	r17
    8084:	0f 91       	pop	r16
    8086:	ff 90       	pop	r15
    8088:	08 95       	ret

0000808a <atoux>:
    808a:	ef 92       	push	r14
    808c:	ff 92       	push	r15
    808e:	0f 93       	push	r16
    8090:	1f 93       	push	r17
    8092:	8c 01       	movw	r16, r24
    8094:	fc 01       	movw	r30, r24
    8096:	80 81       	ld	r24, Z
    8098:	0e 94 1f 40 	call	0x803e	; 0x803e <asc2bin>
    809c:	f8 2e       	mov	r15, r24
    809e:	f2 94       	swap	r15
    80a0:	30 ef       	ldi	r19, 0xF0	; 240
    80a2:	f3 22       	and	r15, r19
    80a4:	f8 01       	movw	r30, r16
    80a6:	81 81       	ldd	r24, Z+1	; 0x01
    80a8:	0e 94 1f 40 	call	0x803e	; 0x803e <asc2bin>
    80ac:	8f 70       	andi	r24, 0x0F	; 15
    80ae:	f8 2a       	or	r15, r24
    80b0:	f8 01       	movw	r30, r16
    80b2:	82 81       	ldd	r24, Z+2	; 0x02
    80b4:	0e 94 1f 40 	call	0x803e	; 0x803e <asc2bin>
    80b8:	e8 2e       	mov	r14, r24
    80ba:	e2 94       	swap	r14
    80bc:	20 ef       	ldi	r18, 0xF0	; 240
    80be:	e2 22       	and	r14, r18
    80c0:	f8 01       	movw	r30, r16
    80c2:	83 81       	ldd	r24, Z+3	; 0x03
    80c4:	0e 94 1f 40 	call	0x803e	; 0x803e <asc2bin>
    80c8:	8f 70       	andi	r24, 0x0F	; 15
    80ca:	8e 29       	or	r24, r14
    80cc:	9f 2d       	mov	r25, r15
    80ce:	1f 91       	pop	r17
    80d0:	0f 91       	pop	r16
    80d2:	ff 90       	pop	r15
    80d4:	ef 90       	pop	r14
    80d6:	08 95       	ret

000080d8 <atolx>:
    80d8:	cf 92       	push	r12
    80da:	df 92       	push	r13
    80dc:	ef 92       	push	r14
    80de:	ff 92       	push	r15
    80e0:	0f 93       	push	r16
    80e2:	1f 93       	push	r17
    80e4:	8c 01       	movw	r16, r24
    80e6:	fc 01       	movw	r30, r24
    80e8:	80 81       	ld	r24, Z
    80ea:	0e 94 1f 40 	call	0x803e	; 0x803e <asc2bin>
    80ee:	c8 2e       	mov	r12, r24
    80f0:	c2 94       	swap	r12
    80f2:	70 ef       	ldi	r23, 0xF0	; 240
    80f4:	c7 22       	and	r12, r23
    80f6:	f8 01       	movw	r30, r16
    80f8:	81 81       	ldd	r24, Z+1	; 0x01
    80fa:	0e 94 1f 40 	call	0x803e	; 0x803e <asc2bin>
    80fe:	8f 70       	andi	r24, 0x0F	; 15
    8100:	c8 2a       	or	r12, r24
    8102:	f8 01       	movw	r30, r16
    8104:	82 81       	ldd	r24, Z+2	; 0x02
    8106:	0e 94 1f 40 	call	0x803e	; 0x803e <asc2bin>
    810a:	d8 2e       	mov	r13, r24
    810c:	d2 94       	swap	r13
    810e:	60 ef       	ldi	r22, 0xF0	; 240
    8110:	d6 22       	and	r13, r22
    8112:	f8 01       	movw	r30, r16
    8114:	83 81       	ldd	r24, Z+3	; 0x03
    8116:	0e 94 1f 40 	call	0x803e	; 0x803e <asc2bin>
    811a:	8f 70       	andi	r24, 0x0F	; 15
    811c:	d8 2a       	or	r13, r24
    811e:	f8 01       	movw	r30, r16
    8120:	84 81       	ldd	r24, Z+4	; 0x04
    8122:	0e 94 1f 40 	call	0x803e	; 0x803e <asc2bin>
    8126:	f8 2e       	mov	r15, r24
    8128:	f2 94       	swap	r15
    812a:	50 ef       	ldi	r21, 0xF0	; 240
    812c:	f5 22       	and	r15, r21
    812e:	f8 01       	movw	r30, r16
    8130:	85 81       	ldd	r24, Z+5	; 0x05
    8132:	0e 94 1f 40 	call	0x803e	; 0x803e <asc2bin>
    8136:	8f 70       	andi	r24, 0x0F	; 15
    8138:	f8 2a       	or	r15, r24
    813a:	f8 01       	movw	r30, r16
    813c:	86 81       	ldd	r24, Z+6	; 0x06
    813e:	0e 94 1f 40 	call	0x803e	; 0x803e <asc2bin>
    8142:	e8 2e       	mov	r14, r24
    8144:	e2 94       	swap	r14
    8146:	40 ef       	ldi	r20, 0xF0	; 240
    8148:	e4 22       	and	r14, r20
    814a:	f8 01       	movw	r30, r16
    814c:	87 81       	ldd	r24, Z+7	; 0x07
    814e:	0e 94 1f 40 	call	0x803e	; 0x803e <asc2bin>
    8152:	8f 70       	andi	r24, 0x0F	; 15
    8154:	8e 29       	or	r24, r14
    8156:	68 2f       	mov	r22, r24
    8158:	7f 2d       	mov	r23, r15
    815a:	8d 2d       	mov	r24, r13
    815c:	9c 2d       	mov	r25, r12
    815e:	1f 91       	pop	r17
    8160:	0f 91       	pop	r16
    8162:	ff 90       	pop	r15
    8164:	ef 90       	pop	r14
    8166:	df 90       	pop	r13
    8168:	cf 90       	pop	r12
    816a:	08 95       	ret

0000816c <make_rand>:
    816c:	ef 92       	push	r14
    816e:	ff 92       	push	r15
    8170:	0f 93       	push	r16
    8172:	1f 93       	push	r17
    8174:	80 91 c0 01 	lds	r24, 0x01C0
    8178:	90 91 c1 01 	lds	r25, 0x01C1
    817c:	a0 91 c2 01 	lds	r26, 0x01C2
    8180:	b0 91 c3 01 	lds	r27, 0x01C3
    8184:	7c 01       	movw	r14, r24
    8186:	8d 01       	movw	r16, r26
    8188:	2b e0       	ldi	r18, 0x0B	; 11
    818a:	ee 0c       	add	r14, r14
    818c:	ff 1c       	adc	r15, r15
    818e:	00 1f       	adc	r16, r16
    8190:	11 1f       	adc	r17, r17
    8192:	2a 95       	dec	r18
    8194:	d1 f7       	brne	.-12     	; 0x818a <make_rand+0x1e>
    8196:	e8 26       	eor	r14, r24
    8198:	f9 26       	eor	r15, r25
    819a:	0a 27       	eor	r16, r26
    819c:	1b 27       	eor	r17, r27
    819e:	80 91 c4 01 	lds	r24, 0x01C4
    81a2:	90 91 c5 01 	lds	r25, 0x01C5
    81a6:	a0 91 c6 01 	lds	r26, 0x01C6
    81aa:	b0 91 c7 01 	lds	r27, 0x01C7
    81ae:	80 93 c0 01 	sts	0x01C0, r24
    81b2:	90 93 c1 01 	sts	0x01C1, r25
    81b6:	a0 93 c2 01 	sts	0x01C2, r26
    81ba:	b0 93 c3 01 	sts	0x01C3, r27
    81be:	80 91 c8 01 	lds	r24, 0x01C8
    81c2:	90 91 c9 01 	lds	r25, 0x01C9
    81c6:	a0 91 ca 01 	lds	r26, 0x01CA
    81ca:	b0 91 cb 01 	lds	r27, 0x01CB
    81ce:	80 93 c4 01 	sts	0x01C4, r24
    81d2:	90 93 c5 01 	sts	0x01C5, r25
    81d6:	a0 93 c6 01 	sts	0x01C6, r26
    81da:	b0 93 c7 01 	sts	0x01C7, r27
    81de:	80 91 cc 01 	lds	r24, 0x01CC
    81e2:	90 91 cd 01 	lds	r25, 0x01CD
    81e6:	a0 91 ce 01 	lds	r26, 0x01CE
    81ea:	b0 91 cf 01 	lds	r27, 0x01CF
    81ee:	80 93 c8 01 	sts	0x01C8, r24
    81f2:	90 93 c9 01 	sts	0x01C9, r25
    81f6:	a0 93 ca 01 	sts	0x01CA, r26
    81fa:	b0 93 cb 01 	sts	0x01CB, r27
    81fe:	9c 01       	movw	r18, r24
    8200:	ad 01       	movw	r20, r26
    8202:	f3 e1       	ldi	r31, 0x13	; 19
    8204:	56 95       	lsr	r21
    8206:	47 95       	ror	r20
    8208:	37 95       	ror	r19
    820a:	27 95       	ror	r18
    820c:	fa 95       	dec	r31
    820e:	d1 f7       	brne	.-12     	; 0x8204 <make_rand+0x98>
    8210:	28 27       	eor	r18, r24
    8212:	39 27       	eor	r19, r25
    8214:	4a 27       	eor	r20, r26
    8216:	5b 27       	eor	r21, r27
    8218:	2e 25       	eor	r18, r14
    821a:	3f 25       	eor	r19, r15
    821c:	40 27       	eor	r20, r16
    821e:	51 27       	eor	r21, r17
    8220:	ef 2c       	mov	r14, r15
    8222:	f0 2e       	mov	r15, r16
    8224:	01 2f       	mov	r16, r17
    8226:	11 27       	eor	r17, r17
    8228:	2e 25       	eor	r18, r14
    822a:	3f 25       	eor	r19, r15
    822c:	40 27       	eor	r20, r16
    822e:	51 27       	eor	r21, r17
    8230:	20 93 cc 01 	sts	0x01CC, r18
    8234:	30 93 cd 01 	sts	0x01CD, r19
    8238:	40 93 ce 01 	sts	0x01CE, r20
    823c:	50 93 cf 01 	sts	0x01CF, r21
    8240:	b9 01       	movw	r22, r18
    8242:	ca 01       	movw	r24, r20
    8244:	1f 91       	pop	r17
    8246:	0f 91       	pop	r16
    8248:	ff 90       	pop	r15
    824a:	ef 90       	pop	r14
    824c:	08 95       	ret

0000824e <log2x>:
    824e:	bc 01       	movw	r22, r24
    8250:	4f e0       	ldi	r20, 0x0F	; 15
    8252:	20 e0       	ldi	r18, 0x00	; 0
    8254:	30 e8       	ldi	r19, 0x80	; 128
    8256:	c9 01       	movw	r24, r18
    8258:	86 23       	and	r24, r22
    825a:	97 23       	and	r25, r23
    825c:	89 2b       	or	r24, r25
    825e:	29 f4       	brne	.+10     	; 0x826a <log2x+0x1c>
    8260:	41 50       	subi	r20, 0x01	; 1
    8262:	19 f0       	breq	.+6      	; 0x826a <log2x+0x1c>
    8264:	36 95       	lsr	r19
    8266:	27 95       	ror	r18
    8268:	f6 cf       	rjmp	.-20     	; 0x8256 <log2x+0x8>
    826a:	84 2f       	mov	r24, r20
    826c:	08 95       	ret

0000826e <cnvendian16>:
    826e:	28 2f       	mov	r18, r24
    8270:	89 2f       	mov	r24, r25
    8272:	92 2f       	mov	r25, r18
    8274:	08 95       	ret

00008276 <cnvendian32>:
    8276:	36 2f       	mov	r19, r22
    8278:	27 2f       	mov	r18, r23
    827a:	69 2f       	mov	r22, r25
    827c:	78 2f       	mov	r23, r24
    827e:	c9 01       	movw	r24, r18
    8280:	08 95       	ret

00008282 <ipstr2bin>:
    8282:	a0 e2       	ldi	r26, 0x20	; 32
    8284:	b0 e0       	ldi	r27, 0x00	; 0
    8286:	e7 e4       	ldi	r30, 0x47	; 71
    8288:	f1 e4       	ldi	r31, 0x41	; 65
    828a:	0c 94 4f 6d 	jmp	0xda9e	; 0xda9e <__prologue_saves__+0xc>
    828e:	9c 01       	movw	r18, r24
    8290:	5b 01       	movw	r10, r22
    8292:	8e 01       	movw	r16, r28
    8294:	0f 5f       	subi	r16, 0xFF	; 255
    8296:	1f 4f       	sbci	r17, 0xFF	; 255
    8298:	c8 01       	movw	r24, r16
    829a:	b9 01       	movw	r22, r18
    829c:	0e 94 32 6e 	call	0xdc64	; 0xdc64 <strcpy>
    82a0:	98 01       	movw	r18, r16
    82a2:	cc 24       	eor	r12, r12
    82a4:	dd 24       	eor	r13, r13
    82a6:	76 01       	movw	r14, r12
    82a8:	40 e1       	ldi	r20, 0x10	; 16
    82aa:	84 2e       	mov	r8, r20
    82ac:	91 2c       	mov	r9, r1
    82ae:	8c 0e       	add	r8, r28
    82b0:	9d 1e       	adc	r9, r29
    82b2:	f8 01       	movw	r30, r16
    82b4:	80 81       	ld	r24, Z
    82b6:	8e 32       	cpi	r24, 0x2E	; 46
    82b8:	91 f4       	brne	.+36     	; 0x82de <ipstr2bin+0x5c>
    82ba:	10 82       	st	Z, r1
    82bc:	c9 01       	movw	r24, r18
    82be:	0e 94 e8 3f 	call	0x7fd0	; 0x7fd0 <_atoi>
    82c2:	a0 e0       	ldi	r26, 0x00	; 0
    82c4:	b0 e0       	ldi	r27, 0x00	; 0
    82c6:	8c 29       	or	r24, r12
    82c8:	9d 29       	or	r25, r13
    82ca:	ae 29       	or	r26, r14
    82cc:	bf 29       	or	r27, r15
    82ce:	cc 24       	eor	r12, r12
    82d0:	d8 2e       	mov	r13, r24
    82d2:	e9 2e       	mov	r14, r25
    82d4:	fa 2e       	mov	r15, r26
    82d6:	98 01       	movw	r18, r16
    82d8:	2f 5f       	subi	r18, 0xFF	; 255
    82da:	3f 4f       	sbci	r19, 0xFF	; 255
    82dc:	2b c0       	rjmp	.+86     	; 0x8334 <ipstr2bin+0xb2>
    82de:	88 23       	and	r24, r24
    82e0:	e9 f4       	brne	.+58     	; 0x831c <ipstr2bin+0x9a>
    82e2:	ce 01       	movw	r24, r28
    82e4:	01 96       	adiw	r24, 0x01	; 1
    82e6:	08 17       	cp	r16, r24
    82e8:	19 07       	cpc	r17, r25
    82ea:	31 f4       	brne	.+12     	; 0x82f8 <ipstr2bin+0x76>
    82ec:	f5 01       	movw	r30, r10
    82ee:	10 82       	st	Z, r1
    82f0:	11 82       	std	Z+1, r1	; 0x01
    82f2:	12 82       	std	Z+2, r1	; 0x02
    82f4:	13 82       	std	Z+3, r1	; 0x03
    82f6:	10 c0       	rjmp	.+32     	; 0x8318 <ipstr2bin+0x96>
    82f8:	f8 01       	movw	r30, r16
    82fa:	10 82       	st	Z, r1
    82fc:	c9 01       	movw	r24, r18
    82fe:	0e 94 e8 3f 	call	0x7fd0	; 0x7fd0 <_atoi>
    8302:	a0 e0       	ldi	r26, 0x00	; 0
    8304:	b0 e0       	ldi	r27, 0x00	; 0
    8306:	8c 29       	or	r24, r12
    8308:	9d 29       	or	r25, r13
    830a:	ae 29       	or	r26, r14
    830c:	bf 29       	or	r27, r15
    830e:	f5 01       	movw	r30, r10
    8310:	80 83       	st	Z, r24
    8312:	91 83       	std	Z+1, r25	; 0x01
    8314:	a2 83       	std	Z+2, r26	; 0x02
    8316:	b3 83       	std	Z+3, r27	; 0x03
    8318:	81 e0       	ldi	r24, 0x01	; 1
    831a:	13 c0       	rjmp	.+38     	; 0x8342 <ipstr2bin+0xc0>
    831c:	99 27       	eor	r25, r25
    831e:	87 fd       	sbrc	r24, 7
    8320:	90 95       	com	r25
    8322:	c0 97       	sbiw	r24, 0x30	; 48
    8324:	0a 97       	sbiw	r24, 0x0a	; 10
    8326:	30 f0       	brcs	.+12     	; 0x8334 <ipstr2bin+0xb2>
    8328:	f5 01       	movw	r30, r10
    832a:	10 82       	st	Z, r1
    832c:	11 82       	std	Z+1, r1	; 0x01
    832e:	12 82       	std	Z+2, r1	; 0x02
    8330:	13 82       	std	Z+3, r1	; 0x03
    8332:	06 c0       	rjmp	.+12     	; 0x8340 <ipstr2bin+0xbe>
    8334:	08 15       	cp	r16, r8
    8336:	19 05       	cpc	r17, r9
    8338:	19 f0       	breq	.+6      	; 0x8340 <ipstr2bin+0xbe>
    833a:	0f 5f       	subi	r16, 0xFF	; 255
    833c:	1f 4f       	sbci	r17, 0xFF	; 255
    833e:	b9 cf       	rjmp	.-142    	; 0x82b2 <ipstr2bin+0x30>
    8340:	80 e0       	ldi	r24, 0x00	; 0
    8342:	a0 96       	adiw	r28, 0x20	; 32
    8344:	ec e0       	ldi	r30, 0x0C	; 12
    8346:	0c 94 6b 6d 	jmp	0xdad6	; 0xdad6 <__epilogue_restores__+0xc>

0000834a <long2ipstr>:
    834a:	cf 92       	push	r12
    834c:	df 92       	push	r13
    834e:	ef 92       	push	r14
    8350:	ff 92       	push	r15
    8352:	0f 93       	push	r16
    8354:	1f 93       	push	r17
    8356:	6b 01       	movw	r12, r22
    8358:	e8 2e       	mov	r14, r24
    835a:	8a 01       	movw	r16, r20
    835c:	89 2f       	mov	r24, r25
    835e:	ba 01       	movw	r22, r20
    8360:	0e 94 27 3f 	call	0x7e4e	; 0x7e4e <uctoaz>
    8364:	5e e2       	ldi	r21, 0x2E	; 46
    8366:	f5 2e       	mov	r15, r21
    8368:	f8 01       	movw	r30, r16
    836a:	f3 82       	std	Z+3, r15	; 0x03
    836c:	b8 01       	movw	r22, r16
    836e:	6c 5f       	subi	r22, 0xFC	; 252
    8370:	7f 4f       	sbci	r23, 0xFF	; 255
    8372:	8e 2d       	mov	r24, r14
    8374:	0e 94 27 3f 	call	0x7e4e	; 0x7e4e <uctoaz>
    8378:	f8 01       	movw	r30, r16
    837a:	f7 82       	std	Z+7, r15	; 0x07
    837c:	b8 01       	movw	r22, r16
    837e:	68 5f       	subi	r22, 0xF8	; 248
    8380:	7f 4f       	sbci	r23, 0xFF	; 255
    8382:	8d 2d       	mov	r24, r13
    8384:	0e 94 27 3f 	call	0x7e4e	; 0x7e4e <uctoaz>
    8388:	f8 01       	movw	r30, r16
    838a:	f3 86       	std	Z+11, r15	; 0x0b
    838c:	b8 01       	movw	r22, r16
    838e:	64 5f       	subi	r22, 0xF4	; 244
    8390:	7f 4f       	sbci	r23, 0xFF	; 255
    8392:	8c 2d       	mov	r24, r12
    8394:	0e 94 27 3f 	call	0x7e4e	; 0x7e4e <uctoaz>
    8398:	c8 01       	movw	r24, r16
    839a:	1f 91       	pop	r17
    839c:	0f 91       	pop	r16
    839e:	ff 90       	pop	r15
    83a0:	ef 90       	pop	r14
    83a2:	df 90       	pop	r13
    83a4:	cf 90       	pop	r12
    83a6:	08 95       	ret

000083a8 <calc_timediff>:
    83a8:	cf 92       	push	r12
    83aa:	df 92       	push	r13
    83ac:	ef 92       	push	r14
    83ae:	ff 92       	push	r15
    83b0:	0f 93       	push	r16
    83b2:	1f 93       	push	r17
    83b4:	6b 01       	movw	r12, r22
    83b6:	0e 94 c0 21 	call	0x4380	; 0x4380 <mktime>
    83ba:	7b 01       	movw	r14, r22
    83bc:	8c 01       	movw	r16, r24
    83be:	c6 01       	movw	r24, r12
    83c0:	0e 94 c0 21 	call	0x4380	; 0x4380 <mktime>
    83c4:	9b 01       	movw	r18, r22
    83c6:	ac 01       	movw	r20, r24
    83c8:	2e 19       	sub	r18, r14
    83ca:	3f 09       	sbc	r19, r15
    83cc:	40 0b       	sbc	r20, r16
    83ce:	51 0b       	sbc	r21, r17
    83d0:	b9 01       	movw	r22, r18
    83d2:	ca 01       	movw	r24, r20
    83d4:	1f 91       	pop	r17
    83d6:	0f 91       	pop	r16
    83d8:	ff 90       	pop	r15
    83da:	ef 90       	pop	r14
    83dc:	df 90       	pop	r13
    83de:	cf 90       	pop	r12
    83e0:	08 95       	ret

000083e2 <utc2wt>:
    83e2:	a4 e0       	ldi	r26, 0x04	; 4
    83e4:	b0 e0       	ldi	r27, 0x00	; 0
    83e6:	e7 ef       	ldi	r30, 0xF7	; 247
    83e8:	f1 e4       	ldi	r31, 0x41	; 65
    83ea:	0c 94 57 6d 	jmp	0xdaae	; 0xdaae <__prologue_saves__+0x1c>
    83ee:	16 2f       	mov	r17, r22
    83f0:	07 2f       	mov	r16, r23
    83f2:	0e 94 c0 21 	call	0x4380	; 0x4380 <mktime>
    83f6:	20 91 a5 01 	lds	r18, 0x01A5
    83fa:	30 91 a6 01 	lds	r19, 0x01A6
    83fe:	40 91 a7 01 	lds	r20, 0x01A7
    8402:	50 91 a8 01 	lds	r21, 0x01A8
    8406:	26 0f       	add	r18, r22
    8408:	37 1f       	adc	r19, r23
    840a:	48 1f       	adc	r20, r24
    840c:	59 1f       	adc	r21, r25
    840e:	29 83       	std	Y+1, r18	; 0x01
    8410:	3a 83       	std	Y+2, r19	; 0x02
    8412:	4b 83       	std	Y+3, r20	; 0x03
    8414:	5c 83       	std	Y+4, r21	; 0x04
    8416:	ce 01       	movw	r24, r28
    8418:	01 96       	adiw	r24, 0x01	; 1
    841a:	0e 94 18 22 	call	0x4430	; 0x4430 <gmtime>
    841e:	ac 01       	movw	r20, r24
    8420:	00 97       	sbiw	r24, 0x00	; 0
    8422:	11 f4       	brne	.+4      	; 0x8428 <utc2wt+0x46>
    8424:	80 e0       	ldi	r24, 0x00	; 0
    8426:	0b c0       	rjmp	.+22     	; 0x843e <utc2wt+0x5c>
    8428:	81 2f       	mov	r24, r17
    842a:	90 2f       	mov	r25, r16
    842c:	9c 01       	movw	r18, r24
    842e:	d9 01       	movw	r26, r18
    8430:	fa 01       	movw	r30, r20
    8432:	82 e1       	ldi	r24, 0x12	; 18
    8434:	01 90       	ld	r0, Z+
    8436:	0d 92       	st	X+, r0
    8438:	81 50       	subi	r24, 0x01	; 1
    843a:	e1 f7       	brne	.-8      	; 0x8434 <utc2wt+0x52>
    843c:	81 e0       	ldi	r24, 0x01	; 1
    843e:	24 96       	adiw	r28, 0x04	; 4
    8440:	e4 e0       	ldi	r30, 0x04	; 4
    8442:	0c 94 73 6d 	jmp	0xdae6	; 0xdae6 <__epilogue_restores__+0x1c>

00008446 <wt2utc>:
    8446:	a4 e0       	ldi	r26, 0x04	; 4
    8448:	b0 e0       	ldi	r27, 0x00	; 0
    844a:	e9 e2       	ldi	r30, 0x29	; 41
    844c:	f2 e4       	ldi	r31, 0x42	; 66
    844e:	0c 94 53 6d 	jmp	0xdaa6	; 0xdaa6 <__prologue_saves__+0x14>
    8452:	d6 2e       	mov	r13, r22
    8454:	c7 2e       	mov	r12, r23
    8456:	79 01       	movw	r14, r18
    8458:	8a 01       	movw	r16, r20
    845a:	0e 94 c0 21 	call	0x4380	; 0x4380 <mktime>
    845e:	6e 19       	sub	r22, r14
    8460:	7f 09       	sbc	r23, r15
    8462:	80 0b       	sbc	r24, r16
    8464:	91 0b       	sbc	r25, r17
    8466:	69 83       	std	Y+1, r22	; 0x01
    8468:	7a 83       	std	Y+2, r23	; 0x02
    846a:	8b 83       	std	Y+3, r24	; 0x03
    846c:	9c 83       	std	Y+4, r25	; 0x04
    846e:	ce 01       	movw	r24, r28
    8470:	01 96       	adiw	r24, 0x01	; 1
    8472:	0e 94 18 22 	call	0x4430	; 0x4430 <gmtime>
    8476:	ac 01       	movw	r20, r24
    8478:	00 97       	sbiw	r24, 0x00	; 0
    847a:	11 f4       	brne	.+4      	; 0x8480 <wt2utc+0x3a>
    847c:	80 e0       	ldi	r24, 0x00	; 0
    847e:	0b c0       	rjmp	.+22     	; 0x8496 <wt2utc+0x50>
    8480:	8d 2d       	mov	r24, r13
    8482:	9c 2d       	mov	r25, r12
    8484:	9c 01       	movw	r18, r24
    8486:	d9 01       	movw	r26, r18
    8488:	fa 01       	movw	r30, r20
    848a:	82 e1       	ldi	r24, 0x12	; 18
    848c:	01 90       	ld	r0, Z+
    848e:	0d 92       	st	X+, r0
    8490:	81 50       	subi	r24, 0x01	; 1
    8492:	e1 f7       	brne	.-8      	; 0x848c <wt2utc+0x46>
    8494:	81 e0       	ldi	r24, 0x01	; 1
    8496:	24 96       	adiw	r28, 0x04	; 4
    8498:	e8 e0       	ldi	r30, 0x08	; 8
    849a:	0c 94 6f 6d 	jmp	0xdade	; 0xdade <__epilogue_restores__+0x14>

0000849e <__vector_1>:
    849e:	1f 92       	push	r1
    84a0:	0f 92       	push	r0
    84a2:	0f b6       	in	r0, 0x3f	; 63
    84a4:	0f 92       	push	r0
    84a6:	11 24       	eor	r1, r1
    84a8:	2f 93       	push	r18
    84aa:	3f 93       	push	r19
    84ac:	8f 93       	push	r24
    84ae:	9f 93       	push	r25
    84b0:	80 91 04 0c 	lds	r24, 0x0C04
    84b4:	90 91 05 0c 	lds	r25, 0x0C05
    84b8:	89 2b       	or	r24, r25
    84ba:	f1 f4       	brne	.+60     	; 0x84f8 <__vector_1+0x5a>
    84bc:	21 e0       	ldi	r18, 0x01	; 1
    84be:	30 e0       	ldi	r19, 0x00	; 0
    84c0:	30 93 05 0c 	sts	0x0C05, r19
    84c4:	20 93 04 0c 	sts	0x0C04, r18
    84c8:	10 92 06 0c 	sts	0x0C06, r1
    84cc:	8a e0       	ldi	r24, 0x0A	; 10
    84ce:	80 93 13 0c 	sts	0x0C13, r24
    84d2:	80 91 c9 09 	lds	r24, 0x09C9
    84d6:	85 30       	cpi	r24, 0x05	; 5
    84d8:	39 f4       	brne	.+14     	; 0x84e8 <__vector_1+0x4a>
    84da:	84 e6       	ldi	r24, 0x64	; 100
    84dc:	90 e0       	ldi	r25, 0x00	; 0
    84de:	90 93 fd 0b 	sts	0x0BFD, r25
    84e2:	80 93 fc 0b 	sts	0x0BFC, r24
    84e6:	08 c0       	rjmp	.+16     	; 0x84f8 <__vector_1+0x5a>
    84e8:	10 92 fd 0b 	sts	0x0BFD, r1
    84ec:	10 92 fc 0b 	sts	0x0BFC, r1
    84f0:	30 93 03 0c 	sts	0x0C03, r19
    84f4:	20 93 02 0c 	sts	0x0C02, r18
    84f8:	9f 91       	pop	r25
    84fa:	8f 91       	pop	r24
    84fc:	3f 91       	pop	r19
    84fe:	2f 91       	pop	r18
    8500:	0f 90       	pop	r0
    8502:	0f be       	out	0x3f, r0	; 63
    8504:	0f 90       	pop	r0
    8506:	1f 90       	pop	r1
    8508:	18 95       	reti

0000850a <__vector_2>:
    850a:	1f 92       	push	r1
    850c:	0f 92       	push	r0
    850e:	0f b6       	in	r0, 0x3f	; 63
    8510:	0f 92       	push	r0
    8512:	11 24       	eor	r1, r1
    8514:	0f 90       	pop	r0
    8516:	0f be       	out	0x3f, r0	; 63
    8518:	0f 90       	pop	r0
    851a:	1f 90       	pop	r1
    851c:	18 95       	reti

0000851e <__vector_20>:
    851e:	1f 92       	push	r1
    8520:	0f 92       	push	r0
    8522:	0f b6       	in	r0, 0x3f	; 63
    8524:	0f 92       	push	r0
    8526:	11 24       	eor	r1, r1
    8528:	8f 93       	push	r24
    852a:	9f 93       	push	r25
    852c:	ef 93       	push	r30
    852e:	ff 93       	push	r31
    8530:	80 91 c0 00 	lds	r24, 0x00C0
    8534:	90 91 c6 00 	lds	r25, 0x00C6
    8538:	8c 71       	andi	r24, 0x1C	; 28
    853a:	81 f4       	brne	.+32     	; 0x855c <__vector_20+0x3e>
    853c:	80 91 d2 03 	lds	r24, 0x03D2
    8540:	e8 2f       	mov	r30, r24
    8542:	f0 e0       	ldi	r31, 0x00	; 0
    8544:	ef 5a       	subi	r30, 0xAF	; 175
    8546:	fc 4f       	sbci	r31, 0xFC	; 252
    8548:	90 83       	st	Z, r25
    854a:	8f 5f       	subi	r24, 0xFF	; 255
    854c:	8f 77       	andi	r24, 0x7F	; 127
    854e:	80 93 d2 03 	sts	0x03D2, r24
    8552:	80 91 d3 03 	lds	r24, 0x03D3
    8556:	8f 5f       	subi	r24, 0xFF	; 255
    8558:	80 93 d3 03 	sts	0x03D3, r24
    855c:	ff 91       	pop	r31
    855e:	ef 91       	pop	r30
    8560:	9f 91       	pop	r25
    8562:	8f 91       	pop	r24
    8564:	0f 90       	pop	r0
    8566:	0f be       	out	0x3f, r0	; 63
    8568:	0f 90       	pop	r0
    856a:	1f 90       	pop	r1
    856c:	18 95       	reti

0000856e <__vector_21>:
    856e:	1f 92       	push	r1
    8570:	0f 92       	push	r0
    8572:	0f b6       	in	r0, 0x3f	; 63
    8574:	0f 92       	push	r0
    8576:	11 24       	eor	r1, r1
    8578:	2f 93       	push	r18
    857a:	8f 93       	push	r24
    857c:	9f 93       	push	r25
    857e:	ef 93       	push	r30
    8580:	ff 93       	push	r31
    8582:	20 91 4e 03 	lds	r18, 0x034E
    8586:	22 23       	and	r18, r18
    8588:	b9 f0       	breq	.+46     	; 0x85b8 <__vector_21+0x4a>
    858a:	90 91 4d 03 	lds	r25, 0x034D
    858e:	e9 2f       	mov	r30, r25
    8590:	f0 e0       	ldi	r31, 0x00	; 0
    8592:	e3 5f       	subi	r30, 0xF3	; 243
    8594:	fc 4f       	sbci	r31, 0xFC	; 252
    8596:	80 81       	ld	r24, Z
    8598:	80 93 c6 00 	sts	0x00C6, r24
    859c:	9f 5f       	subi	r25, 0xFF	; 255
    859e:	90 93 4d 03 	sts	0x034D, r25
    85a2:	82 2f       	mov	r24, r18
    85a4:	81 50       	subi	r24, 0x01	; 1
    85a6:	80 93 4e 03 	sts	0x034E, r24
    85aa:	88 23       	and	r24, r24
    85ac:	29 f4       	brne	.+10     	; 0x85b8 <__vector_21+0x4a>
    85ae:	80 91 c1 00 	lds	r24, 0x00C1
    85b2:	8f 7d       	andi	r24, 0xDF	; 223
    85b4:	80 93 c1 00 	sts	0x00C1, r24
    85b8:	ff 91       	pop	r31
    85ba:	ef 91       	pop	r30
    85bc:	9f 91       	pop	r25
    85be:	8f 91       	pop	r24
    85c0:	2f 91       	pop	r18
    85c2:	0f 90       	pop	r0
    85c4:	0f be       	out	0x3f, r0	; 63
    85c6:	0f 90       	pop	r0
    85c8:	1f 90       	pop	r1
    85ca:	18 95       	reti

000085cc <__vector_22>:
    85cc:	1f 92       	push	r1
    85ce:	0f 92       	push	r0
    85d0:	0f b6       	in	r0, 0x3f	; 63
    85d2:	0f 92       	push	r0
    85d4:	11 24       	eor	r1, r1
    85d6:	8f 93       	push	r24
    85d8:	80 91 4e 03 	lds	r24, 0x034E
    85dc:	88 23       	and	r24, r24
    85de:	49 f4       	brne	.+18     	; 0x85f2 <__vector_22+0x26>
    85e0:	80 91 c1 00 	lds	r24, 0x00C1
    85e4:	8f 7b       	andi	r24, 0xBF	; 191
    85e6:	80 93 c1 00 	sts	0x00C1, r24
    85ea:	10 92 50 03 	sts	0x0350, r1
    85ee:	10 92 4f 03 	sts	0x034F, r1
    85f2:	8f 91       	pop	r24
    85f4:	0f 90       	pop	r0
    85f6:	0f be       	out	0x3f, r0	; 63
    85f8:	0f 90       	pop	r0
    85fa:	1f 90       	pop	r1
    85fc:	18 95       	reti

000085fe <__vector_16>:
    85fe:	1f 92       	push	r1
    8600:	0f 92       	push	r0
    8602:	0f b6       	in	r0, 0x3f	; 63
    8604:	0f 92       	push	r0
    8606:	11 24       	eor	r1, r1
    8608:	2f 93       	push	r18
    860a:	3f 93       	push	r19
    860c:	4f 93       	push	r20
    860e:	5f 93       	push	r21
    8610:	6f 93       	push	r22
    8612:	7f 93       	push	r23
    8614:	8f 93       	push	r24
    8616:	9f 93       	push	r25
    8618:	af 93       	push	r26
    861a:	bf 93       	push	r27
    861c:	ef 93       	push	r30
    861e:	ff 93       	push	r31
    8620:	80 91 fc 0b 	lds	r24, 0x0BFC
    8624:	90 91 fd 0b 	lds	r25, 0x0BFD
    8628:	01 96       	adiw	r24, 0x01	; 1
    862a:	90 93 fd 0b 	sts	0x0BFD, r25
    862e:	80 93 fc 0b 	sts	0x0BFC, r24
    8632:	80 91 bd 01 	lds	r24, 0x01BD
    8636:	90 91 be 01 	lds	r25, 0x01BE
    863a:	02 97       	sbiw	r24, 0x02	; 2
    863c:	b9 f4       	brne	.+46     	; 0x866c <__vector_16+0x6e>
    863e:	10 92 fd 0b 	sts	0x0BFD, r1
    8642:	10 92 fc 0b 	sts	0x0BFC, r1
    8646:	10 92 f3 07 	sts	0x07F3, r1
    864a:	10 92 f2 07 	sts	0x07F2, r1
    864e:	81 e0       	ldi	r24, 0x01	; 1
    8650:	90 e0       	ldi	r25, 0x00	; 0
    8652:	90 93 08 0c 	sts	0x0C08, r25
    8656:	80 93 07 0c 	sts	0x0C07, r24
    865a:	10 92 be 01 	sts	0x01BE, r1
    865e:	10 92 bd 01 	sts	0x01BD, r1
    8662:	10 92 0a 0c 	sts	0x0C0A, r1
    8666:	10 92 09 0c 	sts	0x0C09, r1
    866a:	58 c0       	rjmp	.+176    	; 0x871c <__vector_16+0x11e>
    866c:	80 91 fc 0b 	lds	r24, 0x0BFC
    8670:	90 91 fd 0b 	lds	r25, 0x0BFD
    8674:	88 5e       	subi	r24, 0xE8	; 232
    8676:	93 40       	sbci	r25, 0x03	; 3
    8678:	0c f4       	brge	.+2      	; 0x867c <__vector_16+0x7e>
    867a:	36 c1       	rjmp	.+620    	; 0x88e8 <__vector_16+0x2ea>
    867c:	20 91 c9 09 	lds	r18, 0x09C9
    8680:	22 30       	cpi	r18, 0x02	; 2
    8682:	08 f0       	brcs	.+2      	; 0x8686 <__vector_16+0x88>
    8684:	60 c0       	rjmp	.+192    	; 0x8746 <__vector_16+0x148>
    8686:	80 91 de 09 	lds	r24, 0x09DE
    868a:	90 91 df 09 	lds	r25, 0x09DF
    868e:	01 97       	sbiw	r24, 0x01	; 1
    8690:	21 f4       	brne	.+8      	; 0x869a <__vector_16+0x9c>
    8692:	81 e0       	ldi	r24, 0x01	; 1
    8694:	80 93 11 0c 	sts	0x0C11, r24
    8698:	5a 98       	cbi	0x0b, 2	; 11
    869a:	20 91 ff 07 	lds	r18, 0x07FF
    869e:	30 91 00 08 	lds	r19, 0x0800
    86a2:	21 15       	cp	r18, r1
    86a4:	31 05       	cpc	r19, r1
    86a6:	49 f4       	brne	.+18     	; 0x86ba <__vector_16+0xbc>
    86a8:	10 92 fd 0b 	sts	0x0BFD, r1
    86ac:	10 92 fc 0b 	sts	0x0BFC, r1
    86b0:	80 91 12 0c 	lds	r24, 0x0C12
    86b4:	82 30       	cpi	r24, 0x02	; 2
    86b6:	e9 f4       	brne	.+58     	; 0x86f2 <__vector_16+0xf4>
    86b8:	2f c0       	rjmp	.+94     	; 0x8718 <__vector_16+0x11a>
    86ba:	12 16       	cp	r1, r18
    86bc:	13 06       	cpc	r1, r19
    86be:	9c f5       	brge	.+102    	; 0x8726 <__vector_16+0x128>
    86c0:	80 91 fc 0b 	lds	r24, 0x0BFC
    86c4:	90 91 fd 0b 	lds	r25, 0x0BFD
    86c8:	01 96       	adiw	r24, 0x01	; 1
    86ca:	90 93 fd 0b 	sts	0x0BFD, r25
    86ce:	80 93 fc 0b 	sts	0x0BFC, r24
    86d2:	80 91 fc 0b 	lds	r24, 0x0BFC
    86d6:	90 91 fd 0b 	lds	r25, 0x0BFD
    86da:	88 5e       	subi	r24, 0xE8	; 232
    86dc:	93 40       	sbci	r25, 0x03	; 3
    86de:	90 93 fd 0b 	sts	0x0BFD, r25
    86e2:	80 93 fc 0b 	sts	0x0BFC, r24
    86e6:	21 50       	subi	r18, 0x01	; 1
    86e8:	30 40       	sbci	r19, 0x00	; 0
    86ea:	30 93 00 08 	sts	0x0800, r19
    86ee:	20 93 ff 07 	sts	0x07FF, r18
    86f2:	80 91 fe 0b 	lds	r24, 0x0BFE
    86f6:	90 91 ff 0b 	lds	r25, 0x0BFF
    86fa:	a0 91 00 0c 	lds	r26, 0x0C00
    86fe:	b0 91 01 0c 	lds	r27, 0x0C01
    8702:	01 96       	adiw	r24, 0x01	; 1
    8704:	a1 1d       	adc	r26, r1
    8706:	b1 1d       	adc	r27, r1
    8708:	80 93 fe 0b 	sts	0x0BFE, r24
    870c:	90 93 ff 0b 	sts	0x0BFF, r25
    8710:	a0 93 00 0c 	sts	0x0C00, r26
    8714:	b0 93 01 0c 	sts	0x0C01, r27
    8718:	81 e0       	ldi	r24, 0x01	; 1
    871a:	90 e0       	ldi	r25, 0x00	; 0
    871c:	90 93 03 0c 	sts	0x0C03, r25
    8720:	80 93 02 0c 	sts	0x0C02, r24
    8724:	f4 c0       	rjmp	.+488    	; 0x890e <__vector_16+0x310>
    8726:	80 91 fc 0b 	lds	r24, 0x0BFC
    872a:	90 91 fd 0b 	lds	r25, 0x0BFD
    872e:	01 97       	sbiw	r24, 0x01	; 1
    8730:	90 93 fd 0b 	sts	0x0BFD, r25
    8734:	80 93 fc 0b 	sts	0x0BFC, r24
    8738:	2f 5f       	subi	r18, 0xFF	; 255
    873a:	3f 4f       	sbci	r19, 0xFF	; 255
    873c:	30 93 00 08 	sts	0x0800, r19
    8740:	20 93 ff 07 	sts	0x07FF, r18
    8744:	02 c1       	rjmp	.+516    	; 0x894a <__vector_16+0x34c>
    8746:	10 92 fd 0b 	sts	0x0BFD, r1
    874a:	10 92 fc 0b 	sts	0x0BFC, r1
    874e:	80 91 13 0c 	lds	r24, 0x0C13
    8752:	88 23       	and	r24, r24
    8754:	31 f0       	breq	.+12     	; 0x8762 <__vector_16+0x164>
    8756:	80 91 13 0c 	lds	r24, 0x0C13
    875a:	81 50       	subi	r24, 0x01	; 1
    875c:	80 93 13 0c 	sts	0x0C13, r24
    8760:	07 c0       	rjmp	.+14     	; 0x8770 <__vector_16+0x172>
    8762:	80 91 ac 01 	lds	r24, 0x01AC
    8766:	87 30       	cpi	r24, 0x07	; 7
    8768:	19 f4       	brne	.+6      	; 0x8770 <__vector_16+0x172>
    876a:	86 e0       	ldi	r24, 0x06	; 6
    876c:	80 93 ac 01 	sts	0x01AC, r24
    8770:	80 91 bd 01 	lds	r24, 0x01BD
    8774:	90 91 be 01 	lds	r25, 0x01BE
    8778:	01 97       	sbiw	r24, 0x01	; 1
    877a:	09 f0       	breq	.+2      	; 0x877e <__vector_16+0x180>
    877c:	5a c0       	rjmp	.+180    	; 0x8832 <__vector_16+0x234>
    877e:	8d ea       	ldi	r24, 0xAD	; 173
    8780:	91 e0       	ldi	r25, 0x01	; 1
    8782:	0e 94 c0 21 	call	0x4380	; 0x4380 <mktime>
    8786:	60 93 0d 0c 	sts	0x0C0D, r22
    878a:	70 93 0e 0c 	sts	0x0C0E, r23
    878e:	80 93 0f 0c 	sts	0x0C0F, r24
    8792:	90 93 10 0c 	sts	0x0C10, r25
    8796:	80 91 0d 0c 	lds	r24, 0x0C0D
    879a:	90 91 0e 0c 	lds	r25, 0x0C0E
    879e:	a0 91 0f 0c 	lds	r26, 0x0C0F
    87a2:	b0 91 10 0c 	lds	r27, 0x0C10
    87a6:	b7 fd       	sbrc	r27, 7
    87a8:	3f c0       	rjmp	.+126    	; 0x8828 <__vector_16+0x22a>
    87aa:	80 91 c9 09 	lds	r24, 0x09C9
    87ae:	85 30       	cpi	r24, 0x05	; 5
    87b0:	31 f0       	breq	.+12     	; 0x87be <__vector_16+0x1c0>
    87b2:	80 91 dc 09 	lds	r24, 0x09DC
    87b6:	90 91 dd 09 	lds	r25, 0x09DD
    87ba:	01 97       	sbiw	r24, 0x01	; 1
    87bc:	99 f4       	brne	.+38     	; 0x87e4 <__vector_16+0x1e6>
    87be:	80 91 0d 0c 	lds	r24, 0x0C0D
    87c2:	90 91 0e 0c 	lds	r25, 0x0C0E
    87c6:	a0 91 0f 0c 	lds	r26, 0x0C0F
    87ca:	b0 91 10 0c 	lds	r27, 0x0C10
    87ce:	01 96       	adiw	r24, 0x01	; 1
    87d0:	a1 1d       	adc	r26, r1
    87d2:	b1 1d       	adc	r27, r1
    87d4:	80 93 0d 0c 	sts	0x0C0D, r24
    87d8:	90 93 0e 0c 	sts	0x0C0E, r25
    87dc:	a0 93 0f 0c 	sts	0x0C0F, r26
    87e0:	b0 93 10 0c 	sts	0x0C10, r27
    87e4:	80 91 0d 0c 	lds	r24, 0x0C0D
    87e8:	90 91 0e 0c 	lds	r25, 0x0C0E
    87ec:	a0 91 0f 0c 	lds	r26, 0x0C0F
    87f0:	b0 91 10 0c 	lds	r27, 0x0C10
    87f4:	80 93 ec 07 	sts	0x07EC, r24
    87f8:	90 93 ed 07 	sts	0x07ED, r25
    87fc:	a0 93 ee 07 	sts	0x07EE, r26
    8800:	b0 93 ef 07 	sts	0x07EF, r27
    8804:	80 93 fe 0b 	sts	0x0BFE, r24
    8808:	90 93 ff 0b 	sts	0x0BFF, r25
    880c:	a0 93 00 0c 	sts	0x0C00, r26
    8810:	b0 93 01 0c 	sts	0x0C01, r27
    8814:	10 92 f3 07 	sts	0x07F3, r1
    8818:	10 92 f2 07 	sts	0x07F2, r1
    881c:	81 e0       	ldi	r24, 0x01	; 1
    881e:	90 e0       	ldi	r25, 0x00	; 0
    8820:	90 93 08 0c 	sts	0x0C08, r25
    8824:	80 93 07 0c 	sts	0x0C07, r24
    8828:	10 92 be 01 	sts	0x01BE, r1
    882c:	10 92 bd 01 	sts	0x01BD, r1
    8830:	37 c0       	rjmp	.+110    	; 0x88a0 <__vector_16+0x2a2>
    8832:	80 91 fe 0b 	lds	r24, 0x0BFE
    8836:	90 91 ff 0b 	lds	r25, 0x0BFF
    883a:	a0 91 00 0c 	lds	r26, 0x0C00
    883e:	b0 91 01 0c 	lds	r27, 0x0C01
    8842:	01 96       	adiw	r24, 0x01	; 1
    8844:	a1 1d       	adc	r26, r1
    8846:	b1 1d       	adc	r27, r1
    8848:	80 93 fe 0b 	sts	0x0BFE, r24
    884c:	90 93 ff 0b 	sts	0x0BFF, r25
    8850:	a0 93 00 0c 	sts	0x0C00, r26
    8854:	b0 93 01 0c 	sts	0x0C01, r27
    8858:	25 30       	cpi	r18, 0x05	; 5
    885a:	31 f1       	breq	.+76     	; 0x88a8 <__vector_16+0x2aa>
    885c:	20 91 d0 09 	lds	r18, 0x09D0
    8860:	30 91 d1 09 	lds	r19, 0x09D1
    8864:	21 15       	cp	r18, r1
    8866:	31 05       	cpc	r19, r1
    8868:	d9 f0       	breq	.+54     	; 0x88a0 <__vector_16+0x2a2>
    886a:	80 91 09 0c 	lds	r24, 0x0C09
    886e:	90 91 0a 0c 	lds	r25, 0x0C0A
    8872:	01 96       	adiw	r24, 0x01	; 1
    8874:	90 93 0a 0c 	sts	0x0C0A, r25
    8878:	80 93 09 0c 	sts	0x0C09, r24
    887c:	80 91 09 0c 	lds	r24, 0x0C09
    8880:	90 91 0a 0c 	lds	r25, 0x0C0A
    8884:	82 17       	cp	r24, r18
    8886:	93 07       	cpc	r25, r19
    8888:	78 f0       	brcs	.+30     	; 0x88a8 <__vector_16+0x2aa>
    888a:	89 e0       	ldi	r24, 0x09	; 9
    888c:	80 93 ac 01 	sts	0x01AC, r24
    8890:	80 91 ab 01 	lds	r24, 0x01AB
    8894:	84 30       	cpi	r24, 0x04	; 4
    8896:	41 f0       	breq	.+16     	; 0x88a8 <__vector_16+0x2aa>
    8898:	83 e0       	ldi	r24, 0x03	; 3
    889a:	80 93 ab 01 	sts	0x01AB, r24
    889e:	04 c0       	rjmp	.+8      	; 0x88a8 <__vector_16+0x2aa>
    88a0:	10 92 0a 0c 	sts	0x0C0A, r1
    88a4:	10 92 09 0c 	sts	0x0C09, r1
    88a8:	80 91 ab 01 	lds	r24, 0x01AB
    88ac:	81 30       	cpi	r24, 0x01	; 1
    88ae:	09 f0       	breq	.+2      	; 0x88b2 <__vector_16+0x2b4>
    88b0:	33 cf       	rjmp	.-410    	; 0x8718 <__vector_16+0x11a>
    88b2:	80 91 d2 09 	lds	r24, 0x09D2
    88b6:	90 91 d3 09 	lds	r25, 0x09D3
    88ba:	89 2b       	or	r24, r25
    88bc:	09 f4       	brne	.+2      	; 0x88c0 <__vector_16+0x2c2>
    88be:	2c cf       	rjmp	.-424    	; 0x8718 <__vector_16+0x11a>
    88c0:	80 91 0b 0c 	lds	r24, 0x0C0B
    88c4:	90 91 0c 0c 	lds	r25, 0x0C0C
    88c8:	01 97       	sbiw	r24, 0x01	; 1
    88ca:	90 93 0c 0c 	sts	0x0C0C, r25
    88ce:	80 93 0b 0c 	sts	0x0C0B, r24
    88d2:	80 91 0b 0c 	lds	r24, 0x0C0B
    88d6:	90 91 0c 0c 	lds	r25, 0x0C0C
    88da:	89 2b       	or	r24, r25
    88dc:	09 f0       	breq	.+2      	; 0x88e0 <__vector_16+0x2e2>
    88de:	1c cf       	rjmp	.-456    	; 0x8718 <__vector_16+0x11a>
    88e0:	82 e0       	ldi	r24, 0x02	; 2
    88e2:	80 93 ab 01 	sts	0x01AB, r24
    88e6:	18 cf       	rjmp	.-464    	; 0x8718 <__vector_16+0x11a>
    88e8:	80 91 11 0c 	lds	r24, 0x0C11
    88ec:	81 30       	cpi	r24, 0x01	; 1
    88ee:	79 f4       	brne	.+30     	; 0x890e <__vector_16+0x310>
    88f0:	80 91 bf 01 	lds	r24, 0x01BF
    88f4:	81 50       	subi	r24, 0x01	; 1
    88f6:	80 93 bf 01 	sts	0x01BF, r24
    88fa:	80 91 bf 01 	lds	r24, 0x01BF
    88fe:	88 23       	and	r24, r24
    8900:	31 f4       	brne	.+12     	; 0x890e <__vector_16+0x310>
    8902:	84 e6       	ldi	r24, 0x64	; 100
    8904:	80 93 bf 01 	sts	0x01BF, r24
    8908:	10 92 11 0c 	sts	0x0C11, r1
    890c:	5a 9a       	sbi	0x0b, 2	; 11
    890e:	80 91 06 03 	lds	r24, 0x0306
    8912:	90 91 07 03 	lds	r25, 0x0307
    8916:	01 96       	adiw	r24, 0x01	; 1
    8918:	90 93 07 03 	sts	0x0307, r25
    891c:	80 93 06 03 	sts	0x0306, r24
    8920:	80 91 04 0c 	lds	r24, 0x0C04
    8924:	90 91 05 0c 	lds	r25, 0x0C05
    8928:	01 97       	sbiw	r24, 0x01	; 1
    892a:	79 f4       	brne	.+30     	; 0x894a <__vector_16+0x34c>
    892c:	80 91 06 0c 	lds	r24, 0x0C06
    8930:	8f 5f       	subi	r24, 0xFF	; 255
    8932:	80 93 06 0c 	sts	0x0C06, r24
    8936:	80 91 06 0c 	lds	r24, 0x0C06
    893a:	88 3c       	cpi	r24, 0xC8	; 200
    893c:	30 f0       	brcs	.+12     	; 0x894a <__vector_16+0x34c>
    893e:	10 92 06 0c 	sts	0x0C06, r1
    8942:	10 92 05 0c 	sts	0x0C05, r1
    8946:	10 92 04 0c 	sts	0x0C04, r1
    894a:	ff 91       	pop	r31
    894c:	ef 91       	pop	r30
    894e:	bf 91       	pop	r27
    8950:	af 91       	pop	r26
    8952:	9f 91       	pop	r25
    8954:	8f 91       	pop	r24
    8956:	7f 91       	pop	r23
    8958:	6f 91       	pop	r22
    895a:	5f 91       	pop	r21
    895c:	4f 91       	pop	r20
    895e:	3f 91       	pop	r19
    8960:	2f 91       	pop	r18
    8962:	0f 90       	pop	r0
    8964:	0f be       	out	0x3f, r0	; 63
    8966:	0f 90       	pop	r0
    8968:	1f 90       	pop	r1
    896a:	18 95       	reti

0000896c <http_outputsub>:
    896c:	cf 93       	push	r28
    896e:	df 93       	push	r29
    8970:	ec 01       	movw	r28, r24
    8972:	6b ea       	ldi	r22, 0xAB	; 171
    8974:	7b e0       	ldi	r23, 0x0B	; 11
    8976:	44 e0       	ldi	r20, 0x04	; 4
    8978:	50 e0       	ldi	r21, 0x00	; 0
    897a:	0e 94 c9 6d 	call	0xdb92	; 0xdb92 <strncmp_P>
    897e:	89 2b       	or	r24, r25
    8980:	11 f4       	brne	.+4      	; 0x8986 <http_outputsub+0x1a>
    8982:	81 e0       	ldi	r24, 0x01	; 1
    8984:	17 c0       	rjmp	.+46     	; 0x89b4 <http_outputsub+0x48>
    8986:	ce 01       	movw	r24, r28
    8988:	67 ea       	ldi	r22, 0xA7	; 167
    898a:	7b e0       	ldi	r23, 0x0B	; 11
    898c:	43 e0       	ldi	r20, 0x03	; 3
    898e:	50 e0       	ldi	r21, 0x00	; 0
    8990:	0e 94 c9 6d 	call	0xdb92	; 0xdb92 <strncmp_P>
    8994:	89 2b       	or	r24, r25
    8996:	11 f4       	brne	.+4      	; 0x899c <http_outputsub+0x30>
    8998:	82 e0       	ldi	r24, 0x02	; 2
    899a:	0c c0       	rjmp	.+24     	; 0x89b4 <http_outputsub+0x48>
    899c:	ce 01       	movw	r24, r28
    899e:	60 ea       	ldi	r22, 0xA0	; 160
    89a0:	7b e0       	ldi	r23, 0x0B	; 11
    89a2:	46 e0       	ldi	r20, 0x06	; 6
    89a4:	50 e0       	ldi	r21, 0x00	; 0
    89a6:	0e 94 c9 6d 	call	0xdb92	; 0xdb92 <strncmp_P>
    89aa:	89 2b       	or	r24, r25
    89ac:	11 f4       	brne	.+4      	; 0x89b2 <http_outputsub+0x46>
    89ae:	83 e0       	ldi	r24, 0x03	; 3
    89b0:	01 c0       	rjmp	.+2      	; 0x89b4 <http_outputsub+0x48>
    89b2:	80 e0       	ldi	r24, 0x00	; 0
    89b4:	df 91       	pop	r29
    89b6:	cf 91       	pop	r28
    89b8:	08 95       	ret

000089ba <http_msgfooter>:
    89ba:	0f 93       	push	r16
    89bc:	1f 93       	push	r17
    89be:	cf 93       	push	r28
    89c0:	df 93       	push	r29
    89c2:	01 97       	sbiw	r24, 0x01	; 1
    89c4:	19 f0       	breq	.+6      	; 0x89cc <http_msgfooter+0x12>
    89c6:	c0 e0       	ldi	r28, 0x00	; 0
    89c8:	d0 e0       	ldi	r29, 0x00	; 0
    89ca:	05 c0       	rjmp	.+10     	; 0x89d6 <http_msgfooter+0x1c>
    89cc:	87 e1       	ldi	r24, 0x17	; 23
    89ce:	9e e0       	ldi	r25, 0x0E	; 14
    89d0:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    89d4:	ec 01       	movw	r28, r24
    89d6:	86 ef       	ldi	r24, 0xF6	; 246
    89d8:	9d e0       	ldi	r25, 0x0D	; 13
    89da:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    89de:	8c 01       	movw	r16, r24
    89e0:	8e ed       	ldi	r24, 0xDE	; 222
    89e2:	9d e0       	ldi	r25, 0x0D	; 13
    89e4:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    89e8:	9c 01       	movw	r18, r24
    89ea:	20 0f       	add	r18, r16
    89ec:	31 1f       	adc	r19, r17
    89ee:	2c 0f       	add	r18, r28
    89f0:	3d 1f       	adc	r19, r29
    89f2:	c9 01       	movw	r24, r18
    89f4:	df 91       	pop	r29
    89f6:	cf 91       	pop	r28
    89f8:	1f 91       	pop	r17
    89fa:	0f 91       	pop	r16
    89fc:	08 95       	ret

000089fe <http_msgpagechg>:
    89fe:	a0 e0       	ldi	r26, 0x00	; 0
    8a00:	b0 e0       	ldi	r27, 0x00	; 0
    8a02:	e5 e0       	ldi	r30, 0x05	; 5
    8a04:	f5 e4       	ldi	r31, 0x45	; 69
    8a06:	0c 94 4b 6d 	jmp	0xda96	; 0xda96 <__prologue_saves__+0x4>
    8a0a:	3b 01       	movw	r6, r22
    8a0c:	e8 2f       	mov	r30, r24
    8a0e:	ff 27       	eor	r31, r31
    8a10:	e7 fd       	sbrc	r30, 7
    8a12:	f0 95       	com	r31
    8a14:	ee 0f       	add	r30, r30
    8a16:	ff 1f       	adc	r31, r31
    8a18:	e8 50       	subi	r30, 0x08	; 8
    8a1a:	f8 4f       	sbci	r31, 0xF8	; 248
    8a1c:	45 90       	lpm	r4, Z+
    8a1e:	54 90       	lpm	r5, Z+
    8a20:	8a eb       	ldi	r24, 0xBA	; 186
    8a22:	9e e0       	ldi	r25, 0x0E	; 14
    8a24:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    8a28:	4c 01       	movw	r8, r24
    8a2a:	c2 01       	movw	r24, r4
    8a2c:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    8a30:	ec 01       	movw	r28, r24
    8a32:	8c e9       	ldi	r24, 0x9C	; 156
    8a34:	9e e0       	ldi	r25, 0x0E	; 14
    8a36:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    8a3a:	5c 01       	movw	r10, r24
    8a3c:	c2 01       	movw	r24, r4
    8a3e:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    8a42:	6c 01       	movw	r12, r24
    8a44:	8e e7       	ldi	r24, 0x7E	; 126
    8a46:	9e e0       	ldi	r25, 0x0E	; 14
    8a48:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    8a4c:	7c 01       	movw	r14, r24
    8a4e:	c2 01       	movw	r24, r4
    8a50:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    8a54:	8c 01       	movw	r16, r24
    8a56:	8a e6       	ldi	r24, 0x6A	; 106
    8a58:	9e e0       	ldi	r25, 0x0E	; 14
    8a5a:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    8a5e:	c8 0d       	add	r28, r8
    8a60:	d9 1d       	adc	r29, r9
    8a62:	ca 0d       	add	r28, r10
    8a64:	db 1d       	adc	r29, r11
    8a66:	cc 0d       	add	r28, r12
    8a68:	dd 1d       	adc	r29, r13
    8a6a:	ce 0d       	add	r28, r14
    8a6c:	df 1d       	adc	r29, r15
    8a6e:	c0 0f       	add	r28, r16
    8a70:	d1 1f       	adc	r29, r17
    8a72:	c8 0f       	add	r28, r24
    8a74:	d9 1f       	adc	r29, r25
    8a76:	81 e0       	ldi	r24, 0x01	; 1
    8a78:	68 16       	cp	r6, r24
    8a7a:	71 04       	cpc	r7, r1
    8a7c:	a9 f4       	brne	.+42     	; 0x8aa8 <http_msgpagechg+0xaa>
    8a7e:	8a e5       	ldi	r24, 0x5A	; 90
    8a80:	9e e0       	ldi	r25, 0x0E	; 14
    8a82:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    8a86:	7c 01       	movw	r14, r24
    8a88:	c2 01       	movw	r24, r4
    8a8a:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    8a8e:	8c 01       	movw	r16, r24
    8a90:	8f e3       	ldi	r24, 0x3F	; 63
    8a92:	9e e0       	ldi	r25, 0x0E	; 14
    8a94:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    8a98:	97 01       	movw	r18, r14
    8a9a:	20 0f       	add	r18, r16
    8a9c:	31 1f       	adc	r19, r17
    8a9e:	2c 0f       	add	r18, r28
    8aa0:	3d 1f       	adc	r19, r29
    8aa2:	28 0f       	add	r18, r24
    8aa4:	39 1f       	adc	r19, r25
    8aa6:	07 c0       	rjmp	.+14     	; 0x8ab6 <http_msgpagechg+0xb8>
    8aa8:	8a e3       	ldi	r24, 0x3A	; 58
    8aaa:	9e e0       	ldi	r25, 0x0E	; 14
    8aac:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    8ab0:	9c 01       	movw	r18, r24
    8ab2:	2c 0f       	add	r18, r28
    8ab4:	3d 1f       	adc	r19, r29
    8ab6:	c9 01       	movw	r24, r18
    8ab8:	cd b7       	in	r28, 0x3d	; 61
    8aba:	de b7       	in	r29, 0x3e	; 62
    8abc:	e0 e1       	ldi	r30, 0x10	; 16
    8abe:	0c 94 67 6d 	jmp	0xdace	; 0xdace <__epilogue_restores__+0x4>

00008ac2 <http_msglogheader>:
    8ac2:	ef 92       	push	r14
    8ac4:	ff 92       	push	r15
    8ac6:	0f 93       	push	r16
    8ac8:	1f 93       	push	r17
    8aca:	18 2f       	mov	r17, r24
    8acc:	86 e3       	ldi	r24, 0x36	; 54
    8ace:	90 e0       	ldi	r25, 0x00	; 0
    8ad0:	0e 94 67 1a 	call	0x34ce	; 0x34ce <enc_txseek>
    8ad4:	89 ef       	ldi	r24, 0xF9	; 249
    8ad6:	91 e0       	ldi	r25, 0x01	; 1
    8ad8:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    8adc:	7c 01       	movw	r14, r24
    8ade:	e1 2f       	mov	r30, r17
    8ae0:	ff 27       	eor	r31, r31
    8ae2:	e7 fd       	sbrc	r30, 7
    8ae4:	f0 95       	com	r31
    8ae6:	ee 0f       	add	r30, r30
    8ae8:	ff 1f       	adc	r31, r31
    8aea:	ee 58       	subi	r30, 0x8E	; 142
    8aec:	f7 4f       	sbci	r31, 0xF7	; 247
    8aee:	85 91       	lpm	r24, Z+
    8af0:	94 91       	lpm	r25, Z+
    8af2:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    8af6:	8c 01       	movw	r16, r24
    8af8:	80 ed       	ldi	r24, 0xD0	; 208
    8afa:	9e e0       	ldi	r25, 0x0E	; 14
    8afc:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    8b00:	0e 0d       	add	r16, r14
    8b02:	1f 1d       	adc	r17, r15
    8b04:	08 0f       	add	r16, r24
    8b06:	19 1f       	adc	r17, r25
    8b08:	c8 01       	movw	r24, r16
    8b0a:	1f 91       	pop	r17
    8b0c:	0f 91       	pop	r16
    8b0e:	ff 90       	pop	r15
    8b10:	ef 90       	pop	r14
    8b12:	08 95       	ret

00008b14 <http_msgheader>:
    8b14:	a0 e0       	ldi	r26, 0x00	; 0
    8b16:	b0 e0       	ldi	r27, 0x00	; 0
    8b18:	e0 e9       	ldi	r30, 0x90	; 144
    8b1a:	f5 e4       	ldi	r31, 0x45	; 69
    8b1c:	0c 94 51 6d 	jmp	0xdaa2	; 0xdaa2 <__prologue_saves__+0x10>
    8b20:	08 2f       	mov	r16, r24
    8b22:	86 e3       	ldi	r24, 0x36	; 54
    8b24:	90 e0       	ldi	r25, 0x00	; 0
    8b26:	0e 94 67 1a 	call	0x34ce	; 0x34ce <enc_txseek>
    8b2a:	89 ef       	ldi	r24, 0xF9	; 249
    8b2c:	91 e0       	ldi	r25, 0x01	; 1
    8b2e:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    8b32:	5c 01       	movw	r10, r24
    8b34:	c0 2f       	mov	r28, r16
    8b36:	dd 27       	eor	r29, r29
    8b38:	c7 fd       	sbrc	r28, 7
    8b3a:	d0 95       	com	r29
    8b3c:	cc 0f       	add	r28, r28
    8b3e:	dd 1f       	adc	r29, r29
    8b40:	fe 01       	movw	r30, r28
    8b42:	ee 58       	subi	r30, 0x8E	; 142
    8b44:	f7 4f       	sbci	r31, 0xF7	; 247
    8b46:	85 91       	lpm	r24, Z+
    8b48:	94 91       	lpm	r25, Z+
    8b4a:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    8b4e:	8c 01       	movw	r16, r24
    8b50:	8c e0       	ldi	r24, 0x0C	; 12
    8b52:	9f e0       	ldi	r25, 0x0F	; 15
    8b54:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    8b58:	6c 01       	movw	r12, r24
    8b5a:	fe 01       	movw	r30, r28
    8b5c:	e8 50       	subi	r30, 0x08	; 8
    8b5e:	f8 4f       	sbci	r31, 0xF8	; 248
    8b60:	85 91       	lpm	r24, Z+
    8b62:	94 91       	lpm	r25, Z+
    8b64:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    8b68:	7c 01       	movw	r14, r24
    8b6a:	8e ef       	ldi	r24, 0xFE	; 254
    8b6c:	9e e0       	ldi	r25, 0x0E	; 14
    8b6e:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    8b72:	0a 0d       	add	r16, r10
    8b74:	1b 1d       	adc	r17, r11
    8b76:	0c 0d       	add	r16, r12
    8b78:	1d 1d       	adc	r17, r13
    8b7a:	0e 0d       	add	r16, r14
    8b7c:	1f 1d       	adc	r17, r15
    8b7e:	08 0f       	add	r16, r24
    8b80:	19 1f       	adc	r17, r25
    8b82:	c8 01       	movw	r24, r16
    8b84:	cd b7       	in	r28, 0x3d	; 61
    8b86:	de b7       	in	r29, 0x3e	; 62
    8b88:	ea e0       	ldi	r30, 0x0A	; 10
    8b8a:	0c 94 6d 6d 	jmp	0xdada	; 0xdada <__epilogue_restores__+0x10>

00008b8e <http_systemdatasub>:
    8b8e:	af 92       	push	r10
    8b90:	bf 92       	push	r11
    8b92:	cf 92       	push	r12
    8b94:	df 92       	push	r13
    8b96:	ef 92       	push	r14
    8b98:	ff 92       	push	r15
    8b9a:	0f 93       	push	r16
    8b9c:	1f 93       	push	r17
    8b9e:	8c 01       	movw	r16, r24
    8ba0:	f6 2e       	mov	r15, r22
    8ba2:	e7 2e       	mov	r14, r23
    8ba4:	80 e8       	ldi	r24, 0x80	; 128
    8ba6:	9d e0       	ldi	r25, 0x0D	; 13
    8ba8:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    8bac:	5c 01       	movw	r10, r24
    8bae:	c8 01       	movw	r24, r16
    8bb0:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    8bb4:	8c 01       	movw	r16, r24
    8bb6:	86 e7       	ldi	r24, 0x76	; 118
    8bb8:	9d e0       	ldi	r25, 0x0D	; 13
    8bba:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    8bbe:	6c 01       	movw	r12, r24
    8bc0:	ef 2d       	mov	r30, r15
    8bc2:	fe 2d       	mov	r31, r14
    8bc4:	df 01       	movw	r26, r30
    8bc6:	0d 90       	ld	r0, X+
    8bc8:	00 20       	and	r0, r0
    8bca:	e9 f7       	brne	.-6      	; 0x8bc6 <http_systemdatasub+0x38>
    8bcc:	11 97       	sbiw	r26, 0x01	; 1
    8bce:	ae 1b       	sub	r26, r30
    8bd0:	bf 0b       	sbc	r27, r31
    8bd2:	8f 2d       	mov	r24, r15
    8bd4:	9e 2d       	mov	r25, r14
    8bd6:	bd 01       	movw	r22, r26
    8bd8:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    8bdc:	7c 01       	movw	r14, r24
    8bde:	8b e6       	ldi	r24, 0x6B	; 107
    8be0:	9d e0       	ldi	r25, 0x0D	; 13
    8be2:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    8be6:	0a 0d       	add	r16, r10
    8be8:	1b 1d       	adc	r17, r11
    8bea:	0c 0d       	add	r16, r12
    8bec:	1d 1d       	adc	r17, r13
    8bee:	0e 0d       	add	r16, r14
    8bf0:	1f 1d       	adc	r17, r15
    8bf2:	08 0f       	add	r16, r24
    8bf4:	19 1f       	adc	r17, r25
    8bf6:	c8 01       	movw	r24, r16
    8bf8:	1f 91       	pop	r17
    8bfa:	0f 91       	pop	r16
    8bfc:	ff 90       	pop	r15
    8bfe:	ef 90       	pop	r14
    8c00:	df 90       	pop	r13
    8c02:	cf 90       	pop	r12
    8c04:	bf 90       	pop	r11
    8c06:	af 90       	pop	r10
    8c08:	08 95       	ret

00008c0a <write_val2>:
    8c0a:	a4 e0       	ldi	r26, 0x04	; 4
    8c0c:	b0 e0       	ldi	r27, 0x00	; 0
    8c0e:	eb e0       	ldi	r30, 0x0B	; 11
    8c10:	f6 e4       	ldi	r31, 0x46	; 70
    8c12:	0c 94 59 6d 	jmp	0xdab2	; 0xdab2 <__prologue_saves__+0x20>
    8c16:	be 01       	movw	r22, r28
    8c18:	6f 5f       	subi	r22, 0xFF	; 255
    8c1a:	7f 4f       	sbci	r23, 0xFF	; 255
    8c1c:	0e 94 27 3f 	call	0x7e4e	; 0x7e4e <uctoaz>
    8c20:	ce 01       	movw	r24, r28
    8c22:	02 96       	adiw	r24, 0x02	; 2
    8c24:	62 e0       	ldi	r22, 0x02	; 2
    8c26:	70 e0       	ldi	r23, 0x00	; 0
    8c28:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    8c2c:	24 96       	adiw	r28, 0x04	; 4
    8c2e:	e2 e0       	ldi	r30, 0x02	; 2
    8c30:	0c 94 75 6d 	jmp	0xdaea	; 0xdaea <__epilogue_restores__+0x20>

00008c34 <writedate>:
    8c34:	a8 e0       	ldi	r26, 0x08	; 8
    8c36:	b0 e0       	ldi	r27, 0x00	; 0
    8c38:	e0 e2       	ldi	r30, 0x20	; 32
    8c3a:	f6 e4       	ldi	r31, 0x46	; 70
    8c3c:	0c 94 4d 6d 	jmp	0xda9a	; 0xda9a <__prologue_saves__+0x8>
    8c40:	7c 01       	movw	r14, r24
    8c42:	fc 01       	movw	r30, r24
    8c44:	80 81       	ld	r24, Z
    8c46:	91 81       	ldd	r25, Z+1	; 0x01
    8c48:	be 01       	movw	r22, r28
    8c4a:	6f 5f       	subi	r22, 0xFF	; 255
    8c4c:	7f 4f       	sbci	r23, 0xFF	; 255
    8c4e:	0e 94 43 3f 	call	0x7e86	; 0x7e86 <ustoaz>
    8c52:	ce 01       	movw	r24, r28
    8c54:	02 96       	adiw	r24, 0x02	; 2
    8c56:	64 e0       	ldi	r22, 0x04	; 4
    8c58:	70 e0       	ldi	r23, 0x00	; 0
    8c5a:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    8c5e:	3c 01       	movw	r6, r24
    8c60:	8f e2       	ldi	r24, 0x2F	; 47
    8c62:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    8c66:	f7 01       	movw	r30, r14
    8c68:	82 81       	ldd	r24, Z+2	; 0x02
    8c6a:	0e 94 05 46 	call	0x8c0a	; 0x8c0a <write_val2>
    8c6e:	8c 01       	movw	r16, r24
    8c70:	8f e2       	ldi	r24, 0x2F	; 47
    8c72:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    8c76:	f7 01       	movw	r30, r14
    8c78:	83 81       	ldd	r24, Z+3	; 0x03
    8c7a:	0e 94 05 46 	call	0x8c0a	; 0x8c0a <write_val2>
    8c7e:	4c 01       	movw	r8, r24
    8c80:	80 e2       	ldi	r24, 0x20	; 32
    8c82:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    8c86:	f7 01       	movw	r30, r14
    8c88:	84 81       	ldd	r24, Z+4	; 0x04
    8c8a:	0e 94 05 46 	call	0x8c0a	; 0x8c0a <write_val2>
    8c8e:	5c 01       	movw	r10, r24
    8c90:	8a e3       	ldi	r24, 0x3A	; 58
    8c92:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    8c96:	f7 01       	movw	r30, r14
    8c98:	85 81       	ldd	r24, Z+5	; 0x05
    8c9a:	0e 94 05 46 	call	0x8c0a	; 0x8c0a <write_val2>
    8c9e:	6c 01       	movw	r12, r24
    8ca0:	8a e3       	ldi	r24, 0x3A	; 58
    8ca2:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    8ca6:	f7 01       	movw	r30, r14
    8ca8:	86 81       	ldd	r24, Z+6	; 0x06
    8caa:	0e 94 05 46 	call	0x8c0a	; 0x8c0a <write_val2>
    8cae:	08 0d       	add	r16, r8
    8cb0:	19 1d       	adc	r17, r9
    8cb2:	0b 5f       	subi	r16, 0xFB	; 251
    8cb4:	1f 4f       	sbci	r17, 0xFF	; 255
    8cb6:	0a 0d       	add	r16, r10
    8cb8:	1b 1d       	adc	r17, r11
    8cba:	0c 0d       	add	r16, r12
    8cbc:	1d 1d       	adc	r17, r13
    8cbe:	08 0f       	add	r16, r24
    8cc0:	19 1f       	adc	r17, r25
    8cc2:	06 0d       	add	r16, r6
    8cc4:	17 1d       	adc	r17, r7
    8cc6:	c8 01       	movw	r24, r16
    8cc8:	28 96       	adiw	r28, 0x08	; 8
    8cca:	ee e0       	ldi	r30, 0x0E	; 14
    8ccc:	0c 94 69 6d 	jmp	0xdad2	; 0xdad2 <__epilogue_restores__+0x8>

00008cd0 <http_setitem>:
    8cd0:	a8 e0       	ldi	r26, 0x08	; 8
    8cd2:	b0 e0       	ldi	r27, 0x00	; 0
    8cd4:	ee e6       	ldi	r30, 0x6E	; 110
    8cd6:	f6 e4       	ldi	r31, 0x46	; 70
    8cd8:	0c 94 49 6d 	jmp	0xda92	; 0xda92 <__prologue_saves__>
    8cdc:	6c 01       	movw	r12, r24
    8cde:	87 ed       	ldi	r24, 0xD7	; 215
    8ce0:	9d e0       	ldi	r25, 0x0D	; 13
    8ce2:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    8ce6:	9e 83       	std	Y+6, r25	; 0x06
    8ce8:	8d 83       	std	Y+5, r24	; 0x05
    8cea:	f6 01       	movw	r30, r12
    8cec:	80 81       	ld	r24, Z
    8cee:	91 81       	ldd	r25, Z+1	; 0x01
    8cf0:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    8cf4:	8c 01       	movw	r16, r24
    8cf6:	89 eb       	ldi	r24, 0xB9	; 185
    8cf8:	9d e0       	ldi	r25, 0x0D	; 13
    8cfa:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    8cfe:	98 87       	std	Y+8, r25	; 0x08
    8d00:	8f 83       	std	Y+7, r24	; 0x07
    8d02:	f6 01       	movw	r30, r12
    8d04:	82 81       	ldd	r24, Z+2	; 0x02
    8d06:	93 81       	ldd	r25, Z+3	; 0x03
    8d08:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    8d0c:	1c 01       	movw	r2, r24
    8d0e:	80 eb       	ldi	r24, 0xB0	; 176
    8d10:	9d e0       	ldi	r25, 0x0D	; 13
    8d12:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    8d16:	2c 01       	movw	r4, r24
    8d18:	f6 01       	movw	r30, r12
    8d1a:	84 81       	ldd	r24, Z+4	; 0x04
    8d1c:	7e 01       	movw	r14, r28
    8d1e:	08 94       	sec
    8d20:	e1 1c       	adc	r14, r1
    8d22:	f1 1c       	adc	r15, r1
    8d24:	b7 01       	movw	r22, r14
    8d26:	0e 94 27 3f 	call	0x7e4e	; 0x7e4e <uctoaz>
    8d2a:	f7 01       	movw	r30, r14
    8d2c:	01 90       	ld	r0, Z+
    8d2e:	00 20       	and	r0, r0
    8d30:	e9 f7       	brne	.-6      	; 0x8d2c <http_setitem+0x5c>
    8d32:	31 97       	sbiw	r30, 0x01	; 1
    8d34:	ee 19       	sub	r30, r14
    8d36:	ff 09       	sbc	r31, r15
    8d38:	bf 01       	movw	r22, r30
    8d3a:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    8d3e:	3c 01       	movw	r6, r24
    8d40:	82 ea       	ldi	r24, 0xA2	; 162
    8d42:	9d e0       	ldi	r25, 0x0D	; 13
    8d44:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    8d48:	4c 01       	movw	r8, r24
    8d4a:	f6 01       	movw	r30, r12
    8d4c:	85 81       	ldd	r24, Z+5	; 0x05
    8d4e:	b7 01       	movw	r22, r14
    8d50:	0e 94 27 3f 	call	0x7e4e	; 0x7e4e <uctoaz>
    8d54:	f7 01       	movw	r30, r14
    8d56:	01 90       	ld	r0, Z+
    8d58:	00 20       	and	r0, r0
    8d5a:	e9 f7       	brne	.-6      	; 0x8d56 <http_setitem+0x86>
    8d5c:	31 97       	sbiw	r30, 0x01	; 1
    8d5e:	ee 19       	sub	r30, r14
    8d60:	ff 09       	sbc	r31, r15
    8d62:	bf 01       	movw	r22, r30
    8d64:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    8d68:	5c 01       	movw	r10, r24
    8d6a:	88 e9       	ldi	r24, 0x98	; 152
    8d6c:	9d e0       	ldi	r25, 0x0D	; 13
    8d6e:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    8d72:	7c 01       	movw	r14, r24
    8d74:	f6 01       	movw	r30, r12
    8d76:	86 81       	ldd	r24, Z+6	; 0x06
    8d78:	97 81       	ldd	r25, Z+7	; 0x07
    8d7a:	fc 01       	movw	r30, r24
    8d7c:	df 01       	movw	r26, r30
    8d7e:	0d 90       	ld	r0, X+
    8d80:	00 20       	and	r0, r0
    8d82:	e9 f7       	brne	.-6      	; 0x8d7e <http_setitem+0xae>
    8d84:	11 97       	sbiw	r26, 0x01	; 1
    8d86:	ae 1b       	sub	r26, r30
    8d88:	bf 0b       	sbc	r27, r31
    8d8a:	bd 01       	movw	r22, r26
    8d8c:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    8d90:	2d 81       	ldd	r18, Y+5	; 0x05
    8d92:	3e 81       	ldd	r19, Y+6	; 0x06
    8d94:	02 0f       	add	r16, r18
    8d96:	13 1f       	adc	r17, r19
    8d98:	ef 81       	ldd	r30, Y+7	; 0x07
    8d9a:	f8 85       	ldd	r31, Y+8	; 0x08
    8d9c:	0e 0f       	add	r16, r30
    8d9e:	1f 1f       	adc	r17, r31
    8da0:	02 0d       	add	r16, r2
    8da2:	13 1d       	adc	r17, r3
    8da4:	04 0d       	add	r16, r4
    8da6:	15 1d       	adc	r17, r5
    8da8:	06 0d       	add	r16, r6
    8daa:	17 1d       	adc	r17, r7
    8dac:	08 0d       	add	r16, r8
    8dae:	19 1d       	adc	r17, r9
    8db0:	0a 0d       	add	r16, r10
    8db2:	1b 1d       	adc	r17, r11
    8db4:	0e 0d       	add	r16, r14
    8db6:	1f 1d       	adc	r17, r15
    8db8:	08 0f       	add	r16, r24
    8dba:	19 1f       	adc	r17, r25
    8dbc:	c8 01       	movw	r24, r16
    8dbe:	28 96       	adiw	r28, 0x08	; 8
    8dc0:	e2 e1       	ldi	r30, 0x12	; 18
    8dc2:	0c 94 65 6d 	jmp	0xdaca	; 0xdaca <__epilogue_restores__>

00008dc6 <http_putntpsrvaddr>:
    8dc6:	a8 e2       	ldi	r26, 0x28	; 40
    8dc8:	b0 e0       	ldi	r27, 0x00	; 0
    8dca:	e9 ee       	ldi	r30, 0xE9	; 233
    8dcc:	f6 e4       	ldi	r31, 0x46	; 70
    8dce:	0c 94 55 6d 	jmp	0xdaaa	; 0xdaaa <__prologue_saves__+0x18>
    8dd2:	08 2f       	mov	r16, r24
    8dd4:	11 27       	eor	r17, r17
    8dd6:	07 fd       	sbrc	r16, 7
    8dd8:	10 95       	com	r17
    8dda:	00 0f       	add	r16, r16
    8ddc:	11 1f       	adc	r17, r17
    8dde:	f8 01       	movw	r30, r16
    8de0:	ea 5b       	subi	r30, 0xBA	; 186
    8de2:	fb 4f       	sbci	r31, 0xFB	; 251
    8de4:	85 91       	lpm	r24, Z+
    8de6:	94 91       	lpm	r25, Z+
    8de8:	f8 01       	movw	r30, r16
    8dea:	e9 59       	subi	r30, 0x99	; 153
    8dec:	fe 4f       	sbci	r31, 0xFE	; 254
    8dee:	45 91       	lpm	r20, Z+
    8df0:	54 91       	lpm	r21, Z+
    8df2:	39 e0       	ldi	r19, 0x09	; 9
    8df4:	e3 2e       	mov	r14, r19
    8df6:	f1 2c       	mov	r15, r1
    8df8:	ec 0e       	add	r14, r28
    8dfa:	fd 1e       	adc	r15, r29
    8dfc:	b7 01       	movw	r22, r14
    8dfe:	0e 94 c0 20 	call	0x4180	; 0x4180 <eep_getstring32>
    8e02:	f8 01       	movw	r30, r16
    8e04:	e2 5c       	subi	r30, 0xC2	; 194
    8e06:	fb 4f       	sbci	r31, 0xFB	; 251
    8e08:	85 91       	lpm	r24, Z+
    8e0a:	94 91       	lpm	r25, Z+
    8e0c:	9a 83       	std	Y+2, r25	; 0x02
    8e0e:	89 83       	std	Y+1, r24	; 0x01
    8e10:	f8 01       	movw	r30, r16
    8e12:	ea 5e       	subi	r30, 0xEA	; 234
    8e14:	fb 4f       	sbci	r31, 0xFB	; 251
    8e16:	85 91       	lpm	r24, Z+
    8e18:	94 91       	lpm	r25, Z+
    8e1a:	9c 83       	std	Y+4, r25	; 0x04
    8e1c:	8b 83       	std	Y+3, r24	; 0x03
    8e1e:	81 e2       	ldi	r24, 0x21	; 33
    8e20:	8d 83       	std	Y+5, r24	; 0x05
    8e22:	8f e1       	ldi	r24, 0x1F	; 31
    8e24:	8e 83       	std	Y+6, r24	; 0x06
    8e26:	f8 86       	std	Y+8, r15	; 0x08
    8e28:	ef 82       	std	Y+7, r14	; 0x07
    8e2a:	ce 01       	movw	r24, r28
    8e2c:	01 96       	adiw	r24, 0x01	; 1
    8e2e:	0e 94 68 46 	call	0x8cd0	; 0x8cd0 <http_setitem>
    8e32:	a8 96       	adiw	r28, 0x28	; 40
    8e34:	e6 e0       	ldi	r30, 0x06	; 6
    8e36:	0c 94 71 6d 	jmp	0xdae2	; 0xdae2 <__epilogue_restores__+0x18>

00008e3a <http_putaddr>:
    8e3a:	a8 e1       	ldi	r26, 0x18	; 24
    8e3c:	b0 e0       	ldi	r27, 0x00	; 0
    8e3e:	e3 e2       	ldi	r30, 0x23	; 35
    8e40:	f7 e4       	ldi	r31, 0x47	; 71
    8e42:	0c 94 55 6d 	jmp	0xdaaa	; 0xdaaa <__prologue_saves__+0x18>
    8e46:	e8 2e       	mov	r14, r24
    8e48:	ff 24       	eor	r15, r15
    8e4a:	e7 fc       	sbrc	r14, 7
    8e4c:	f0 94       	com	r15
    8e4e:	87 01       	movw	r16, r14
    8e50:	00 0f       	add	r16, r16
    8e52:	11 1f       	adc	r17, r17
    8e54:	f8 01       	movw	r30, r16
    8e56:	e0 55       	subi	r30, 0x50	; 80
    8e58:	fc 4f       	sbci	r31, 0xFC	; 252
    8e5a:	85 91       	lpm	r24, Z+
    8e5c:	94 91       	lpm	r25, Z+
    8e5e:	01 c0       	rjmp	.+2      	; 0x8e62 <http_putaddr+0x28>
    8e60:	a8 95       	wdr
    8e62:	f9 99       	sbic	0x1f, 1	; 31
    8e64:	fd cf       	rjmp	.-6      	; 0x8e60 <http_putaddr+0x26>
    8e66:	0e 94 66 6e 	call	0xdccc	; 0xdccc <__eerd_dword_m644a>
    8e6a:	9b 01       	movw	r18, r22
    8e6c:	ac 01       	movw	r20, r24
    8e6e:	2f 3f       	cpi	r18, 0xFF	; 255
    8e70:	8f ef       	ldi	r24, 0xFF	; 255
    8e72:	38 07       	cpc	r19, r24
    8e74:	8f ef       	ldi	r24, 0xFF	; 255
    8e76:	48 07       	cpc	r20, r24
    8e78:	8f ef       	ldi	r24, 0xFF	; 255
    8e7a:	58 07       	cpc	r21, r24
    8e7c:	59 f4       	brne	.+22     	; 0x8e94 <http_putaddr+0x5a>
    8e7e:	f7 01       	movw	r30, r14
    8e80:	ee 0f       	add	r30, r30
    8e82:	ff 1f       	adc	r31, r31
    8e84:	ee 0f       	add	r30, r30
    8e86:	ff 1f       	adc	r31, r31
    8e88:	e6 54       	subi	r30, 0x46	; 70
    8e8a:	fc 4f       	sbci	r31, 0xFC	; 252
    8e8c:	25 91       	lpm	r18, Z+
    8e8e:	35 91       	lpm	r19, Z+
    8e90:	45 91       	lpm	r20, Z+
    8e92:	54 91       	lpm	r21, Z+
    8e94:	f8 01       	movw	r30, r16
    8e96:	e0 50       	subi	r30, 0x00	; 0
    8e98:	fc 4f       	sbci	r31, 0xFC	; 252
    8e9a:	85 91       	lpm	r24, Z+
    8e9c:	94 91       	lpm	r25, Z+
    8e9e:	9a 83       	std	Y+2, r25	; 0x02
    8ea0:	89 83       	std	Y+1, r24	; 0x01
    8ea2:	f8 01       	movw	r30, r16
    8ea4:	ea 55       	subi	r30, 0x5A	; 90
    8ea6:	fc 4f       	sbci	r31, 0xFC	; 252
    8ea8:	85 91       	lpm	r24, Z+
    8eaa:	94 91       	lpm	r25, Z+
    8eac:	9c 83       	std	Y+4, r25	; 0x04
    8eae:	8b 83       	std	Y+3, r24	; 0x03
    8eb0:	82 e1       	ldi	r24, 0x12	; 18
    8eb2:	8d 83       	std	Y+5, r24	; 0x05
    8eb4:	8f e0       	ldi	r24, 0x0F	; 15
    8eb6:	8e 83       	std	Y+6, r24	; 0x06
    8eb8:	ca 01       	movw	r24, r20
    8eba:	b9 01       	movw	r22, r18
    8ebc:	ae 01       	movw	r20, r28
    8ebe:	47 5f       	subi	r20, 0xF7	; 247
    8ec0:	5f 4f       	sbci	r21, 0xFF	; 255
    8ec2:	0e 94 a5 41 	call	0x834a	; 0x834a <long2ipstr>
    8ec6:	98 87       	std	Y+8, r25	; 0x08
    8ec8:	8f 83       	std	Y+7, r24	; 0x07
    8eca:	ce 01       	movw	r24, r28
    8ecc:	01 96       	adiw	r24, 0x01	; 1
    8ece:	0e 94 68 46 	call	0x8cd0	; 0x8cd0 <http_setitem>
    8ed2:	68 96       	adiw	r28, 0x18	; 24
    8ed4:	e6 e0       	ldi	r30, 0x06	; 6
    8ed6:	0c 94 71 6d 	jmp	0xdae2	; 0xdae2 <__epilogue_restores__+0x18>

00008eda <http_putnetwork>:
    8eda:	a0 e0       	ldi	r26, 0x00	; 0
    8edc:	b0 e0       	ldi	r27, 0x00	; 0
    8ede:	e3 e7       	ldi	r30, 0x73	; 115
    8ee0:	f7 e4       	ldi	r31, 0x47	; 71
    8ee2:	0c 94 51 6d 	jmp	0xdaa2	; 0xdaa2 <__prologue_saves__+0x10>
    8ee6:	5c 01       	movw	r10, r24
    8ee8:	80 e0       	ldi	r24, 0x00	; 0
    8eea:	0e 94 8a 45 	call	0x8b14	; 0x8b14 <http_msgheader>
    8eee:	6c 01       	movw	r12, r24
    8ef0:	80 e0       	ldi	r24, 0x00	; 0
    8ef2:	0e 94 1d 47 	call	0x8e3a	; 0x8e3a <http_putaddr>
    8ef6:	ec 01       	movw	r28, r24
    8ef8:	81 e0       	ldi	r24, 0x01	; 1
    8efa:	0e 94 1d 47 	call	0x8e3a	; 0x8e3a <http_putaddr>
    8efe:	7c 01       	movw	r14, r24
    8f00:	82 e0       	ldi	r24, 0x02	; 2
    8f02:	0e 94 1d 47 	call	0x8e3a	; 0x8e3a <http_putaddr>
    8f06:	8c 01       	movw	r16, r24
    8f08:	83 e0       	ldi	r24, 0x03	; 3
    8f0a:	0e 94 1d 47 	call	0x8e3a	; 0x8e3a <http_putaddr>
    8f0e:	cc 0d       	add	r28, r12
    8f10:	dd 1d       	adc	r29, r13
    8f12:	ce 0d       	add	r28, r14
    8f14:	df 1d       	adc	r29, r15
    8f16:	c0 0f       	add	r28, r16
    8f18:	d1 1f       	adc	r29, r17
    8f1a:	c8 0f       	add	r28, r24
    8f1c:	d9 1f       	adc	r29, r25
    8f1e:	81 e0       	ldi	r24, 0x01	; 1
    8f20:	a8 16       	cp	r10, r24
    8f22:	b1 04       	cpc	r11, r1
    8f24:	19 f4       	brne	.+6      	; 0x8f2c <http_putnetwork+0x52>
    8f26:	8a e2       	ldi	r24, 0x2A	; 42
    8f28:	93 e0       	ldi	r25, 0x03	; 3
    8f2a:	02 c0       	rjmp	.+4      	; 0x8f30 <http_putnetwork+0x56>
    8f2c:	82 e6       	ldi	r24, 0x62	; 98
    8f2e:	93 e0       	ldi	r25, 0x03	; 3
    8f30:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    8f34:	c8 0f       	add	r28, r24
    8f36:	d9 1f       	adc	r29, r25
    8f38:	81 e0       	ldi	r24, 0x01	; 1
    8f3a:	90 e0       	ldi	r25, 0x00	; 0
    8f3c:	0e 94 dd 44 	call	0x89ba	; 0x89ba <http_msgfooter>
    8f40:	60 91 46 05 	lds	r22, 0x0546
    8f44:	70 91 47 05 	lds	r23, 0x0547
    8f48:	c8 0f       	add	r28, r24
    8f4a:	d9 1f       	adc	r29, r25
    8f4c:	88 e1       	ldi	r24, 0x18	; 24
    8f4e:	ae 01       	movw	r20, r28
    8f50:	0e 94 3b 27 	call	0x4e76	; 0x4e76 <tcp_output>
    8f54:	cd b7       	in	r28, 0x3d	; 61
    8f56:	de b7       	in	r29, 0x3e	; 62
    8f58:	ea e0       	ldi	r30, 0x0A	; 10
    8f5a:	0c 94 6d 6d 	jmp	0xdada	; 0xdada <__epilogue_restores__+0x10>

00008f5e <http_output>:
    8f5e:	ac e9       	ldi	r26, 0x9C	; 156
    8f60:	b0 e0       	ldi	r27, 0x00	; 0
    8f62:	e5 eb       	ldi	r30, 0xB5	; 181
    8f64:	f7 e4       	ldi	r31, 0x47	; 71
    8f66:	0c 94 49 6d 	jmp	0xda92	; 0xda92 <__prologue_saves__>
    8f6a:	9c 01       	movw	r18, r24
    8f6c:	88 0f       	add	r24, r24
    8f6e:	99 1f       	adc	r25, r25
    8f70:	bc 01       	movw	r22, r24
    8f72:	f3 e0       	ldi	r31, 0x03	; 3
    8f74:	66 0f       	add	r22, r22
    8f76:	77 1f       	adc	r23, r23
    8f78:	fa 95       	dec	r31
    8f7a:	e1 f7       	brne	.-8      	; 0x8f74 <http_output+0x16>
    8f7c:	68 0f       	add	r22, r24
    8f7e:	79 1f       	adc	r23, r25
    8f80:	60 5e       	subi	r22, 0xE0	; 224
    8f82:	7a 4f       	sbci	r23, 0xFA	; 250
    8f84:	70 93 47 05 	sts	0x0547, r23
    8f88:	60 93 46 05 	sts	0x0546, r22
    8f8c:	f9 01       	movw	r30, r18
    8f8e:	e4 5b       	subi	r30, 0xB4	; 180
    8f90:	f8 4f       	sbci	r31, 0xF8	; 248
    8f92:	e0 81       	ld	r30, Z
    8f94:	e1 30       	cpi	r30, 0x01	; 1
    8f96:	09 f0       	breq	.+2      	; 0x8f9a <http_output+0x3c>
    8f98:	cb c6       	rjmp	.+3478   	; 0x9d30 <http_output+0xdd2>
    8f9a:	23 2b       	or	r18, r19
    8f9c:	29 f0       	breq	.+10     	; 0x8fa8 <http_output+0x4a>
    8f9e:	e8 e4       	ldi	r30, 0x48	; 72
    8fa0:	8e 2e       	mov	r8, r30
    8fa2:	e6 e0       	ldi	r30, 0x06	; 6
    8fa4:	9e 2e       	mov	r9, r30
    8fa6:	04 c0       	rjmp	.+8      	; 0x8fb0 <http_output+0x52>
    8fa8:	78 e4       	ldi	r23, 0x48	; 72
    8faa:	87 2e       	mov	r8, r23
    8fac:	75 e0       	ldi	r23, 0x05	; 5
    8fae:	97 2e       	mov	r9, r23
    8fb0:	c4 01       	movw	r24, r8
    8fb2:	60 e0       	ldi	r22, 0x00	; 0
    8fb4:	7a e0       	ldi	r23, 0x0A	; 10
    8fb6:	0e 94 d7 6d 	call	0xdbae	; 0xdbae <strstr_P>
    8fba:	fc 01       	movw	r30, r24
    8fbc:	10 82       	st	Z, r1
    8fbe:	68 ef       	ldi	r22, 0xF8	; 248
    8fc0:	e6 2e       	mov	r14, r22
    8fc2:	67 e0       	ldi	r22, 0x07	; 7
    8fc4:	f6 2e       	mov	r15, r22
    8fc6:	00 e0       	ldi	r16, 0x00	; 0
    8fc8:	f7 01       	movw	r30, r14
    8fca:	65 91       	lpm	r22, Z+
    8fcc:	74 91       	lpm	r23, Z+
    8fce:	c4 01       	movw	r24, r8
    8fd0:	46 e0       	ldi	r20, 0x06	; 6
    8fd2:	50 e0       	ldi	r21, 0x00	; 0
    8fd4:	0e 94 c9 6d 	call	0xdb92	; 0xdb92 <strncmp_P>
    8fd8:	89 2b       	or	r24, r25
    8fda:	09 f4       	brne	.+2      	; 0x8fde <http_output+0x80>
    8fdc:	55 c0       	rjmp	.+170    	; 0x9088 <http_output+0x12a>
    8fde:	0f 5f       	subi	r16, 0xFF	; 255
    8fe0:	22 e0       	ldi	r18, 0x02	; 2
    8fe2:	30 e0       	ldi	r19, 0x00	; 0
    8fe4:	e2 0e       	add	r14, r18
    8fe6:	f3 1e       	adc	r15, r19
    8fe8:	06 30       	cpi	r16, 0x06	; 6
    8fea:	71 f7       	brne	.-36     	; 0x8fc8 <http_output+0x6a>
    8fec:	86 e3       	ldi	r24, 0x36	; 54
    8fee:	90 e0       	ldi	r25, 0x00	; 0
    8ff0:	0e 94 67 1a 	call	0x34ce	; 0x34ce <enc_txseek>
    8ff4:	89 ef       	ldi	r24, 0xF9	; 249
    8ff6:	91 e0       	ldi	r25, 0x01	; 1
    8ff8:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    8ffc:	2c 01       	movw	r4, r24
    8ffe:	84 e2       	ldi	r24, 0x24	; 36
    9000:	9a e0       	ldi	r25, 0x0A	; 10
    9002:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    9006:	48 0e       	add	r4, r24
    9008:	59 1e       	adc	r5, r25
    900a:	88 24       	eor	r8, r8
    900c:	99 24       	eor	r9, r9
    900e:	84 e1       	ldi	r24, 0x14	; 20
    9010:	9a e0       	ldi	r25, 0x0A	; 10
    9012:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    9016:	5c 01       	movw	r10, r24
    9018:	f4 01       	movw	r30, r8
    901a:	e8 50       	subi	r30, 0x08	; 8
    901c:	f8 4f       	sbci	r31, 0xF8	; 248
    901e:	85 91       	lpm	r24, Z+
    9020:	94 91       	lpm	r25, Z+
    9022:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    9026:	8c 01       	movw	r16, r24
    9028:	80 e1       	ldi	r24, 0x10	; 16
    902a:	9a e0       	ldi	r25, 0x0A	; 10
    902c:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    9030:	6c 01       	movw	r12, r24
    9032:	f4 01       	movw	r30, r8
    9034:	ee 58       	subi	r30, 0x8E	; 142
    9036:	f7 4f       	sbci	r31, 0xF7	; 247
    9038:	85 91       	lpm	r24, Z+
    903a:	94 91       	lpm	r25, Z+
    903c:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    9040:	7c 01       	movw	r14, r24
    9042:	87 e0       	ldi	r24, 0x07	; 7
    9044:	9a e0       	ldi	r25, 0x0A	; 10
    9046:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    904a:	0a 0d       	add	r16, r10
    904c:	1b 1d       	adc	r17, r11
    904e:	0c 0d       	add	r16, r12
    9050:	1d 1d       	adc	r17, r13
    9052:	0e 0d       	add	r16, r14
    9054:	1f 1d       	adc	r17, r15
    9056:	08 0f       	add	r16, r24
    9058:	19 1f       	adc	r17, r25
    905a:	40 0e       	add	r4, r16
    905c:	51 1e       	adc	r5, r17
    905e:	42 e0       	ldi	r20, 0x02	; 2
    9060:	50 e0       	ldi	r21, 0x00	; 0
    9062:	84 0e       	add	r8, r20
    9064:	95 1e       	adc	r9, r21
    9066:	5c e0       	ldi	r21, 0x0C	; 12
    9068:	85 16       	cp	r8, r21
    906a:	91 04       	cpc	r9, r1
    906c:	81 f6       	brne	.-96     	; 0x900e <http_output+0xb0>
    906e:	80 e0       	ldi	r24, 0x00	; 0
    9070:	90 e0       	ldi	r25, 0x00	; 0
    9072:	0e 94 dd 44 	call	0x89ba	; 0x89ba <http_msgfooter>
    9076:	60 91 46 05 	lds	r22, 0x0546
    907a:	70 91 47 05 	lds	r23, 0x0547
    907e:	48 0e       	add	r4, r24
    9080:	59 1e       	adc	r5, r25
    9082:	88 e1       	ldi	r24, 0x18	; 24
    9084:	a2 01       	movw	r20, r4
    9086:	68 c6       	rjmp	.+3280   	; 0x9d58 <http_output+0xdfa>
    9088:	57 e0       	ldi	r21, 0x07	; 7
    908a:	45 2e       	mov	r4, r21
    908c:	51 2c       	mov	r5, r1
    908e:	48 0c       	add	r4, r8
    9090:	59 1c       	adc	r5, r9
    9092:	00 23       	and	r16, r16
    9094:	09 f0       	breq	.+2      	; 0x9098 <http_output+0x13a>
    9096:	43 c0       	rjmp	.+134    	; 0x911e <http_output+0x1c0>
    9098:	d4 01       	movw	r26, r8
    909a:	17 96       	adiw	r26, 0x07	; 7
    909c:	8c 91       	ld	r24, X
    909e:	88 23       	and	r24, r24
    90a0:	19 f4       	brne	.+6      	; 0x90a8 <http_output+0x14a>
    90a2:	80 e0       	ldi	r24, 0x00	; 0
    90a4:	90 e0       	ldi	r25, 0x00	; 0
    90a6:	38 c0       	rjmp	.+112    	; 0x9118 <http_output+0x1ba>
    90a8:	00 e0       	ldi	r16, 0x00	; 0
    90aa:	10 e0       	ldi	r17, 0x00	; 0
    90ac:	6e 01       	movw	r12, r28
    90ae:	08 94       	sec
    90b0:	c1 1c       	adc	r12, r1
    90b2:	d1 1c       	adc	r13, r1
    90b4:	46 e0       	ldi	r20, 0x06	; 6
    90b6:	84 2e       	mov	r8, r20
    90b8:	91 2c       	mov	r9, r1
    90ba:	80 0e       	add	r8, r16
    90bc:	91 1e       	adc	r9, r17
    90be:	f4 01       	movw	r30, r8
    90c0:	ea 55       	subi	r30, 0x5A	; 90
    90c2:	fc 4f       	sbci	r31, 0xFC	; 252
    90c4:	65 91       	lpm	r22, Z+
    90c6:	74 91       	lpm	r23, Z+
    90c8:	c2 01       	movw	r24, r4
    90ca:	0e 94 d7 6d 	call	0xdbae	; 0xdbae <strstr_P>
    90ce:	7c 01       	movw	r14, r24
    90d0:	00 97       	sbiw	r24, 0x00	; 0
    90d2:	01 f1       	breq	.+64     	; 0x9114 <http_output+0x1b6>
    90d4:	03 96       	adiw	r24, 0x03	; 3
    90d6:	b6 01       	movw	r22, r12
    90d8:	0e 94 41 41 	call	0x8282	; 0x8282 <ipstr2bin>
    90dc:	81 30       	cpi	r24, 0x01	; 1
    90de:	79 f4       	brne	.+30     	; 0x90fe <http_output+0x1a0>
    90e0:	f4 01       	movw	r30, r8
    90e2:	e0 55       	subi	r30, 0x50	; 80
    90e4:	fc 4f       	sbci	r31, 0xFC	; 252
    90e6:	85 91       	lpm	r24, Z+
    90e8:	94 91       	lpm	r25, Z+
    90ea:	01 c0       	rjmp	.+2      	; 0x90ee <http_output+0x190>
    90ec:	a8 95       	wdr
    90ee:	f9 99       	sbic	0x1f, 1	; 31
    90f0:	fd cf       	rjmp	.-6      	; 0x90ec <http_output+0x18e>
    90f2:	49 81       	ldd	r20, Y+1	; 0x01
    90f4:	5a 81       	ldd	r21, Y+2	; 0x02
    90f6:	6b 81       	ldd	r22, Y+3	; 0x03
    90f8:	7c 81       	ldd	r23, Y+4	; 0x04
    90fa:	0e 94 94 6e 	call	0xdd28	; 0xdd28 <__eeupd_dword_m644a>
    90fe:	08 94       	sec
    9100:	e1 08       	sbc	r14, r1
    9102:	f1 08       	sbc	r15, r1
    9104:	f7 01       	movw	r30, r14
    9106:	10 82       	st	Z, r1
    9108:	02 50       	subi	r16, 0x02	; 2
    910a:	10 40       	sbci	r17, 0x00	; 0
    910c:	ff ef       	ldi	r31, 0xFF	; 255
    910e:	08 3f       	cpi	r16, 0xF8	; 248
    9110:	1f 07       	cpc	r17, r31
    9112:	81 f6       	brne	.-96     	; 0x90b4 <http_output+0x156>
    9114:	81 e0       	ldi	r24, 0x01	; 1
    9116:	90 e0       	ldi	r25, 0x00	; 0
    9118:	0e 94 6d 47 	call	0x8eda	; 0x8eda <http_putnetwork>
    911c:	1f c6       	rjmp	.+3134   	; 0x9d5c <http_output+0xdfe>
    911e:	01 30       	cpi	r16, 0x01	; 1
    9120:	09 f0       	breq	.+2      	; 0x9124 <http_output+0x1c6>
    9122:	86 c0       	rjmp	.+268    	; 0x9230 <http_output+0x2d2>
    9124:	d2 01       	movw	r26, r4
    9126:	8c 91       	ld	r24, X
    9128:	88 23       	and	r24, r24
    912a:	19 f4       	brne	.+6      	; 0x9132 <http_output+0x1d4>
    912c:	88 24       	eor	r8, r8
    912e:	99 24       	eor	r9, r9
    9130:	5e c0       	rjmp	.+188    	; 0x91ee <http_output+0x290>
    9132:	de 01       	movw	r26, r28
    9134:	1c 96       	adiw	r26, 0x0c	; 12
    9136:	e0 ed       	ldi	r30, 0xD0	; 208
    9138:	f1 e0       	ldi	r31, 0x01	; 1
    913a:	88 e0       	ldi	r24, 0x08	; 8
    913c:	01 90       	ld	r0, Z+
    913e:	0d 92       	st	X+, r0
    9140:	81 50       	subi	r24, 0x01	; 1
    9142:	e1 f7       	brne	.-8      	; 0x913c <http_output+0x1de>
    9144:	32 e1       	ldi	r19, 0x12	; 18
    9146:	83 2e       	mov	r8, r19
    9148:	91 2c       	mov	r9, r1
    914a:	8c 0e       	add	r8, r28
    914c:	9d 1e       	adc	r9, r29
    914e:	00 e0       	ldi	r16, 0x00	; 0
    9150:	10 e0       	ldi	r17, 0x00	; 0
    9152:	2c e3       	ldi	r18, 0x3C	; 60
    9154:	c2 2e       	mov	r12, r18
    9156:	d1 2c       	mov	r13, r1
    9158:	cc 0e       	add	r12, r28
    915a:	dd 1e       	adc	r13, r29
    915c:	90 e2       	ldi	r25, 0x20	; 32
    915e:	b9 2e       	mov	r11, r25
    9160:	86 e0       	ldi	r24, 0x06	; 6
    9162:	28 2e       	mov	r2, r24
    9164:	31 2c       	mov	r3, r1
    9166:	20 0e       	add	r2, r16
    9168:	31 1e       	adc	r3, r17
    916a:	f1 01       	movw	r30, r2
    916c:	ea 5e       	subi	r30, 0xEA	; 234
    916e:	fb 4f       	sbci	r31, 0xFB	; 251
    9170:	65 91       	lpm	r22, Z+
    9172:	74 91       	lpm	r23, Z+
    9174:	c2 01       	movw	r24, r4
    9176:	0e 94 d7 6d 	call	0xdbae	; 0xdbae <strstr_P>
    917a:	7c 01       	movw	r14, r24
    917c:	00 97       	sbiw	r24, 0x00	; 0
    917e:	29 f4       	brne	.+10     	; 0x918a <http_output+0x22c>
    9180:	10 92 d3 07 	sts	0x07D3, r1
    9184:	10 92 d2 07 	sts	0x07D2, r1
    9188:	2f c0       	rjmp	.+94     	; 0x91e8 <http_output+0x28a>
    918a:	f6 01       	movw	r30, r12
    918c:	2b 2d       	mov	r18, r11
    918e:	11 92       	st	Z+, r1
    9190:	2a 95       	dec	r18
    9192:	e9 f7       	brne	.-6      	; 0x918e <http_output+0x230>
    9194:	bc 01       	movw	r22, r24
    9196:	6d 5f       	subi	r22, 0xFD	; 253
    9198:	7f 4f       	sbci	r23, 0xFF	; 255
    919a:	c6 01       	movw	r24, r12
    919c:	0e 94 32 6e 	call	0xdc64	; 0xdc64 <strcpy>
    91a0:	d4 01       	movw	r26, r8
    91a2:	8d 91       	ld	r24, X+
    91a4:	9c 91       	ld	r25, X
    91a6:	b6 01       	movw	r22, r12
    91a8:	0e 94 32 6e 	call	0xdc64	; 0xdc64 <strcpy>
    91ac:	f1 01       	movw	r30, r2
    91ae:	ea 5b       	subi	r30, 0xBA	; 186
    91b0:	fb 4f       	sbci	r31, 0xFB	; 251
    91b2:	65 91       	lpm	r22, Z+
    91b4:	74 91       	lpm	r23, Z+
    91b6:	01 c0       	rjmp	.+2      	; 0x91ba <http_output+0x25c>
    91b8:	a8 95       	wdr
    91ba:	f9 99       	sbic	0x1f, 1	; 31
    91bc:	fd cf       	rjmp	.-6      	; 0x91b8 <http_output+0x25a>
    91be:	c6 01       	movw	r24, r12
    91c0:	40 e2       	ldi	r20, 0x20	; 32
    91c2:	50 e0       	ldi	r21, 0x00	; 0
    91c4:	0e 94 72 6e 	call	0xdce4	; 0xdce4 <__eeupd_block_m644a>
    91c8:	08 94       	sec
    91ca:	e1 08       	sbc	r14, r1
    91cc:	f1 08       	sbc	r15, r1
    91ce:	f7 01       	movw	r30, r14
    91d0:	10 82       	st	Z, r1
    91d2:	02 50       	subi	r16, 0x02	; 2
    91d4:	10 40       	sbci	r17, 0x00	; 0
    91d6:	2e ef       	ldi	r18, 0xFE	; 254
    91d8:	3f ef       	ldi	r19, 0xFF	; 255
    91da:	82 0e       	add	r8, r18
    91dc:	93 1e       	adc	r9, r19
    91de:	3f ef       	ldi	r19, 0xFF	; 255
    91e0:	08 3f       	cpi	r16, 0xF8	; 248
    91e2:	13 07       	cpc	r17, r19
    91e4:	09 f0       	breq	.+2      	; 0x91e8 <http_output+0x28a>
    91e6:	bc cf       	rjmp	.-136    	; 0x9160 <http_output+0x202>
    91e8:	b1 e0       	ldi	r27, 0x01	; 1
    91ea:	8b 2e       	mov	r8, r27
    91ec:	91 2c       	mov	r9, r1
    91ee:	81 e0       	ldi	r24, 0x01	; 1
    91f0:	0e 94 8a 45 	call	0x8b14	; 0x8b14 <http_msgheader>
    91f4:	6c 01       	movw	r12, r24
    91f6:	80 e0       	ldi	r24, 0x00	; 0
    91f8:	0e 94 e3 46 	call	0x8dc6	; 0x8dc6 <http_putntpsrvaddr>
    91fc:	2c 01       	movw	r4, r24
    91fe:	81 e0       	ldi	r24, 0x01	; 1
    9200:	0e 94 e3 46 	call	0x8dc6	; 0x8dc6 <http_putntpsrvaddr>
    9204:	7c 01       	movw	r14, r24
    9206:	82 e0       	ldi	r24, 0x02	; 2
    9208:	0e 94 e3 46 	call	0x8dc6	; 0x8dc6 <http_putntpsrvaddr>
    920c:	8c 01       	movw	r16, r24
    920e:	83 e0       	ldi	r24, 0x03	; 3
    9210:	0e 94 e3 46 	call	0x8dc6	; 0x8dc6 <http_putntpsrvaddr>
    9214:	4c 0c       	add	r4, r12
    9216:	5d 1c       	adc	r5, r13
    9218:	4e 0c       	add	r4, r14
    921a:	5f 1c       	adc	r5, r15
    921c:	40 0e       	add	r4, r16
    921e:	51 1e       	adc	r5, r17
    9220:	48 0e       	add	r4, r24
    9222:	59 1e       	adc	r5, r25
    9224:	41 e0       	ldi	r20, 0x01	; 1
    9226:	84 16       	cp	r8, r20
    9228:	91 04       	cpc	r9, r1
    922a:	09 f0       	breq	.+2      	; 0x922e <http_output+0x2d0>
    922c:	7f c0       	rjmp	.+254    	; 0x932c <http_output+0x3ce>
    922e:	7b c0       	rjmp	.+246    	; 0x9326 <http_output+0x3c8>
    9230:	02 30       	cpi	r16, 0x02	; 2
    9232:	09 f0       	breq	.+2      	; 0x9236 <http_output+0x2d8>
    9234:	8f c0       	rjmp	.+286    	; 0x9354 <http_output+0x3f6>
    9236:	d2 01       	movw	r26, r4
    9238:	8c 91       	ld	r24, X
    923a:	88 23       	and	r24, r24
    923c:	19 f4       	brne	.+6      	; 0x9244 <http_output+0x2e6>
    923e:	88 24       	eor	r8, r8
    9240:	99 24       	eor	r9, r9
    9242:	45 c0       	rjmp	.+138    	; 0x92ce <http_output+0x370>
    9244:	c2 01       	movw	r24, r4
    9246:	6f e3       	ldi	r22, 0x3F	; 63
    9248:	7a e0       	ldi	r23, 0x0A	; 10
    924a:	0e 94 d7 6d 	call	0xdbae	; 0xdbae <strstr_P>
    924e:	7c 01       	movw	r14, r24
    9250:	00 97       	sbiw	r24, 0x00	; 0
    9252:	d1 f1       	breq	.+116    	; 0x92c8 <http_output+0x36a>
    9254:	05 96       	adiw	r24, 0x05	; 5
    9256:	0e 94 e8 3f 	call	0x7fd0	; 0x7fd0 <_atoi>
    925a:	90 93 f9 07 	sts	0x07F9, r25
    925e:	80 93 f8 07 	sts	0x07F8, r24
    9262:	8f 5f       	subi	r24, 0xFF	; 255
    9264:	9f 4f       	sbci	r25, 0xFF	; 255
    9266:	31 f4       	brne	.+12     	; 0x9274 <http_output+0x316>
    9268:	10 92 f9 07 	sts	0x07F9, r1
    926c:	10 92 f8 07 	sts	0x07F8, r1
    9270:	01 c0       	rjmp	.+2      	; 0x9274 <http_output+0x316>
    9272:	a8 95       	wdr
    9274:	f9 99       	sbic	0x1f, 1	; 31
    9276:	fd cf       	rjmp	.-6      	; 0x9272 <http_output+0x314>
    9278:	60 91 f8 07 	lds	r22, 0x07F8
    927c:	70 91 f9 07 	lds	r23, 0x07F9
    9280:	84 ec       	ldi	r24, 0xC4	; 196
    9282:	90 e0       	ldi	r25, 0x00	; 0
    9284:	0e 94 a0 6e 	call	0xdd40	; 0xdd40 <__eeupd_word_m644a>
    9288:	08 94       	sec
    928a:	e1 08       	sbc	r14, r1
    928c:	f1 08       	sbc	r15, r1
    928e:	f7 01       	movw	r30, r14
    9290:	10 82       	st	Z, r1
    9292:	c2 01       	movw	r24, r4
    9294:	6c e3       	ldi	r22, 0x3C	; 60
    9296:	7a e0       	ldi	r23, 0x0A	; 10
    9298:	0e 94 d7 6d 	call	0xdbae	; 0xdbae <strstr_P>
    929c:	00 97       	sbiw	r24, 0x00	; 0
    929e:	a1 f0       	breq	.+40     	; 0x92c8 <http_output+0x36a>
    92a0:	03 96       	adiw	r24, 0x03	; 3
    92a2:	be 01       	movw	r22, r28
    92a4:	6f 5f       	subi	r22, 0xFF	; 255
    92a6:	7f 4f       	sbci	r23, 0xFF	; 255
    92a8:	0e 94 41 41 	call	0x8282	; 0x8282 <ipstr2bin>
    92ac:	81 30       	cpi	r24, 0x01	; 1
    92ae:	61 f4       	brne	.+24     	; 0x92c8 <http_output+0x36a>
    92b0:	01 c0       	rjmp	.+2      	; 0x92b4 <http_output+0x356>
    92b2:	a8 95       	wdr
    92b4:	f9 99       	sbic	0x1f, 1	; 31
    92b6:	fd cf       	rjmp	.-6      	; 0x92b2 <http_output+0x354>
    92b8:	49 81       	ldd	r20, Y+1	; 0x01
    92ba:	5a 81       	ldd	r21, Y+2	; 0x02
    92bc:	6b 81       	ldd	r22, Y+3	; 0x03
    92be:	7c 81       	ldd	r23, Y+4	; 0x04
    92c0:	80 ec       	ldi	r24, 0xC0	; 192
    92c2:	90 e0       	ldi	r25, 0x00	; 0
    92c4:	0e 94 94 6e 	call	0xdd28	; 0xdd28 <__eeupd_dword_m644a>
    92c8:	a1 e0       	ldi	r26, 0x01	; 1
    92ca:	8a 2e       	mov	r8, r26
    92cc:	91 2c       	mov	r9, r1
    92ce:	82 e0       	ldi	r24, 0x02	; 2
    92d0:	0e 94 8a 45 	call	0x8b14	; 0x8b14 <http_msgheader>
    92d4:	6c 01       	movw	r12, r24
    92d6:	84 e0       	ldi	r24, 0x04	; 4
    92d8:	0e 94 1d 47 	call	0x8e3a	; 0x8e3a <http_putaddr>
    92dc:	2c 01       	movw	r4, r24
    92de:	84 e4       	ldi	r24, 0x44	; 68
    92e0:	9a e0       	ldi	r25, 0x0A	; 10
    92e2:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    92e6:	7c 01       	movw	r14, r24
    92e8:	8e 01       	movw	r16, r28
    92ea:	0c 5e       	subi	r16, 0xEC	; 236
    92ec:	1f 4f       	sbci	r17, 0xFF	; 255
    92ee:	80 91 f8 07 	lds	r24, 0x07F8
    92f2:	90 91 f9 07 	lds	r25, 0x07F9
    92f6:	b8 01       	movw	r22, r16
    92f8:	0e 94 43 3f 	call	0x7e86	; 0x7e86 <ustoaz>
    92fc:	f8 01       	movw	r30, r16
    92fe:	01 90       	ld	r0, Z+
    9300:	00 20       	and	r0, r0
    9302:	e9 f7       	brne	.-6      	; 0x92fe <http_output+0x3a0>
    9304:	31 97       	sbiw	r30, 0x01	; 1
    9306:	e0 1b       	sub	r30, r16
    9308:	f1 0b       	sbc	r31, r17
    930a:	c8 01       	movw	r24, r16
    930c:	bf 01       	movw	r22, r30
    930e:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    9312:	4c 0c       	add	r4, r12
    9314:	5d 1c       	adc	r5, r13
    9316:	4e 0c       	add	r4, r14
    9318:	5f 1c       	adc	r5, r15
    931a:	48 0e       	add	r4, r24
    931c:	59 1e       	adc	r5, r25
    931e:	f1 e0       	ldi	r31, 0x01	; 1
    9320:	8f 16       	cp	r8, r31
    9322:	91 04       	cpc	r9, r1
    9324:	19 f4       	brne	.+6      	; 0x932c <http_output+0x3ce>
    9326:	8a e2       	ldi	r24, 0x2A	; 42
    9328:	93 e0       	ldi	r25, 0x03	; 3
    932a:	02 c0       	rjmp	.+4      	; 0x9330 <http_output+0x3d2>
    932c:	82 e6       	ldi	r24, 0x62	; 98
    932e:	93 e0       	ldi	r25, 0x03	; 3
    9330:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    9334:	7c 01       	movw	r14, r24
    9336:	e4 0c       	add	r14, r4
    9338:	f5 1c       	adc	r15, r5
    933a:	81 e0       	ldi	r24, 0x01	; 1
    933c:	90 e0       	ldi	r25, 0x00	; 0
    933e:	0e 94 dd 44 	call	0x89ba	; 0x89ba <http_msgfooter>
    9342:	60 91 46 05 	lds	r22, 0x0546
    9346:	70 91 47 05 	lds	r23, 0x0547
    934a:	e8 0e       	add	r14, r24
    934c:	f9 1e       	adc	r15, r25
    934e:	88 e1       	ldi	r24, 0x18	; 24
    9350:	a7 01       	movw	r20, r14
    9352:	02 c5       	rjmp	.+2564   	; 0x9d58 <http_output+0xdfa>
    9354:	03 30       	cpi	r16, 0x03	; 3
    9356:	09 f0       	breq	.+2      	; 0x935a <http_output+0x3fc>
    9358:	4f c1       	rjmp	.+670    	; 0x95f8 <http_output+0x69a>
    935a:	c2 01       	movw	r24, r4
    935c:	0e 94 b6 44 	call	0x896c	; 0x896c <http_outputsub>
    9360:	81 30       	cpi	r24, 0x01	; 1
    9362:	19 f4       	brne	.+6      	; 0x936a <http_output+0x40c>
    9364:	f8 e0       	ldi	r31, 0x08	; 8
    9366:	ff 2e       	mov	r15, r31
    9368:	05 c0       	rjmp	.+10     	; 0x9374 <http_output+0x416>
    936a:	82 30       	cpi	r24, 0x02	; 2
    936c:	11 f4       	brne	.+4      	; 0x9372 <http_output+0x414>
    936e:	0e 94 69 53 	call	0xa6d2	; 0xa6d2 <clear_callog>
    9372:	ff 24       	eor	r15, r15
    9374:	83 e0       	ldi	r24, 0x03	; 3
    9376:	0e 94 61 45 	call	0x8ac2	; 0x8ac2 <http_msglogheader>
    937a:	8c 01       	movw	r16, r24
    937c:	81 eb       	ldi	r24, 0xB1	; 177
    937e:	9a e0       	ldi	r25, 0x0A	; 10
    9380:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    9384:	60 91 46 05 	lds	r22, 0x0546
    9388:	70 91 47 05 	lds	r23, 0x0547
    938c:	08 0f       	add	r16, r24
    938e:	19 1f       	adc	r17, r25
    9390:	88 e1       	ldi	r24, 0x18	; 24
    9392:	a8 01       	movw	r20, r16
    9394:	0e 94 3b 27 	call	0x4e76	; 0x4e76 <tcp_output>
    9398:	88 23       	and	r24, r24
    939a:	09 f0       	breq	.+2      	; 0x939e <http_output+0x440>
    939c:	df c4       	rjmp	.+2494   	; 0x9d5c <http_output+0xdfe>
    939e:	86 e3       	ldi	r24, 0x36	; 54
    93a0:	90 e0       	ldi	r25, 0x00	; 0
    93a2:	0e 94 67 1a 	call	0x34ce	; 0x34ce <enc_txseek>
    93a6:	6f 2c       	mov	r6, r15
    93a8:	aa 24       	eor	r10, r10
    93aa:	bb 24       	eor	r11, r11
    93ac:	ec e2       	ldi	r30, 0x2C	; 44
    93ae:	2e 2e       	mov	r2, r30
    93b0:	31 2c       	mov	r3, r1
    93b2:	2c 0e       	add	r2, r28
    93b4:	3d 1e       	adc	r3, r29
    93b6:	2f 2d       	mov	r18, r15
    93b8:	28 5f       	subi	r18, 0xF8	; 248
    93ba:	c4 56       	subi	r28, 0x64	; 100
    93bc:	df 4f       	sbci	r29, 0xFF	; 255
    93be:	28 83       	st	Y, r18
    93c0:	cc 59       	subi	r28, 0x9C	; 156
    93c2:	d0 40       	sbci	r29, 0x00	; 0
    93c4:	e6 2d       	mov	r30, r6
    93c6:	f0 e0       	ldi	r31, 0x00	; 0
    93c8:	74 e0       	ldi	r23, 0x04	; 4
    93ca:	ee 0f       	add	r30, r30
    93cc:	ff 1f       	adc	r31, r31
    93ce:	7a 95       	dec	r23
    93d0:	e1 f7       	brne	.-8      	; 0x93ca <http_output+0x46c>
    93d2:	de 01       	movw	r26, r28
    93d4:	5c 96       	adiw	r26, 0x1c	; 28
    93d6:	e4 50       	subi	r30, 0x04	; 4
    93d8:	f6 4f       	sbci	r31, 0xF6	; 246
    93da:	80 e1       	ldi	r24, 0x10	; 16
    93dc:	01 90       	ld	r0, Z+
    93de:	0d 92       	st	X+, r0
    93e0:	81 50       	subi	r24, 0x01	; 1
    93e2:	e1 f7       	brne	.-8      	; 0x93dc <http_output+0x47e>
    93e4:	db a0       	ldd	r13, Y+35	; 0x23
    93e6:	4c 8c       	ldd	r4, Y+28	; 0x1c
    93e8:	5d 8c       	ldd	r5, Y+29	; 0x1d
    93ea:	3e 8d       	ldd	r19, Y+30	; 0x1e
    93ec:	ce 57       	subi	r28, 0x7E	; 126
    93ee:	df 4f       	sbci	r29, 0xFF	; 255
    93f0:	38 83       	st	Y, r19
    93f2:	c2 58       	subi	r28, 0x82	; 130
    93f4:	d0 40       	sbci	r29, 0x00	; 0
    93f6:	4f 8d       	ldd	r20, Y+31	; 0x1f
    93f8:	cf 57       	subi	r28, 0x7F	; 127
    93fa:	df 4f       	sbci	r29, 0xFF	; 255
    93fc:	48 83       	st	Y, r20
    93fe:	c1 58       	subi	r28, 0x81	; 129
    9400:	d0 40       	sbci	r29, 0x00	; 0
    9402:	58 a1       	ldd	r21, Y+32	; 0x20
    9404:	c0 58       	subi	r28, 0x80	; 128
    9406:	df 4f       	sbci	r29, 0xFF	; 255
    9408:	58 83       	st	Y, r21
    940a:	c0 58       	subi	r28, 0x80	; 128
    940c:	d0 40       	sbci	r29, 0x00	; 0
    940e:	79 a0       	ldd	r7, Y+33	; 0x21
    9410:	ca a0       	ldd	r12, Y+34	; 0x22
    9412:	8c a0       	ldd	r8, Y+36	; 0x24
    9414:	9d a0       	ldd	r9, Y+37	; 0x25
    9416:	8e a1       	ldd	r24, Y+38	; 0x26
    9418:	9f a1       	ldd	r25, Y+39	; 0x27
    941a:	c2 58       	subi	r28, 0x82	; 130
    941c:	df 4f       	sbci	r29, 0xFF	; 255
    941e:	99 83       	std	Y+1, r25	; 0x01
    9420:	88 83       	st	Y, r24
    9422:	ce 57       	subi	r28, 0x7E	; 126
    9424:	d0 40       	sbci	r29, 0x00	; 0
    9426:	88 e8       	ldi	r24, 0x88	; 136
    9428:	9b e0       	ldi	r25, 0x0B	; 11
    942a:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    942e:	8c 01       	movw	r16, r24
    9430:	63 94       	inc	r6
    9432:	86 2d       	mov	r24, r6
    9434:	0e 94 05 46 	call	0x8c0a	; 0x8c0a <write_val2>
    9438:	7c 01       	movw	r14, r24
    943a:	8e e7       	ldi	r24, 0x7E	; 126
    943c:	9b e0       	ldi	r25, 0x0B	; 11
    943e:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    9442:	e0 0e       	add	r14, r16
    9444:	f1 1e       	adc	r15, r17
    9446:	e8 0e       	add	r14, r24
    9448:	f9 1e       	adc	r15, r25
    944a:	8d 2d       	mov	r24, r13
    944c:	81 50       	subi	r24, 0x01	; 1
    944e:	83 30       	cpi	r24, 0x03	; 3
    9450:	d8 f4       	brcc	.+54     	; 0x9488 <http_output+0x52a>
    9452:	5e 82       	std	Y+6, r5	; 0x06
    9454:	4d 82       	std	Y+5, r4	; 0x05
    9456:	ce 57       	subi	r28, 0x7E	; 126
    9458:	df 4f       	sbci	r29, 0xFF	; 255
    945a:	98 81       	ld	r25, Y
    945c:	c2 58       	subi	r28, 0x82	; 130
    945e:	d0 40       	sbci	r29, 0x00	; 0
    9460:	9f 83       	std	Y+7, r25	; 0x07
    9462:	cf 57       	subi	r28, 0x7F	; 127
    9464:	df 4f       	sbci	r29, 0xFF	; 255
    9466:	a8 81       	ld	r26, Y
    9468:	c1 58       	subi	r28, 0x81	; 129
    946a:	d0 40       	sbci	r29, 0x00	; 0
    946c:	a8 87       	std	Y+8, r26	; 0x08
    946e:	c0 58       	subi	r28, 0x80	; 128
    9470:	df 4f       	sbci	r29, 0xFF	; 255
    9472:	b8 81       	ld	r27, Y
    9474:	c0 58       	subi	r28, 0x80	; 128
    9476:	d0 40       	sbci	r29, 0x00	; 0
    9478:	b9 87       	std	Y+9, r27	; 0x09
    947a:	7a 86       	std	Y+10, r7	; 0x0a
    947c:	cb 86       	std	Y+11, r12	; 0x0b
    947e:	ce 01       	movw	r24, r28
    9480:	05 96       	adiw	r24, 0x05	; 5
    9482:	0e 94 1a 46 	call	0x8c34	; 0x8c34 <writedate>
    9486:	04 c0       	rjmp	.+8      	; 0x9490 <http_output+0x532>
    9488:	87 e7       	ldi	r24, 0x77	; 119
    948a:	9b e0       	ldi	r25, 0x0B	; 11
    948c:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    9490:	e8 0e       	add	r14, r24
    9492:	f9 1e       	adc	r15, r25
    9494:	8d e6       	ldi	r24, 0x6D	; 109
    9496:	9b e0       	ldi	r25, 0x0B	; 11
    9498:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    949c:	27 01       	movw	r4, r14
    949e:	48 0e       	add	r4, r24
    94a0:	59 1e       	adc	r5, r25
    94a2:	e2 e0       	ldi	r30, 0x02	; 2
    94a4:	de 16       	cp	r13, r30
    94a6:	61 f4       	brne	.+24     	; 0x94c0 <http_output+0x562>
    94a8:	8e e5       	ldi	r24, 0x5E	; 94
    94aa:	9b e0       	ldi	r25, 0x0B	; 11
    94ac:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    94b0:	7c 01       	movw	r14, r24
    94b2:	81 e5       	ldi	r24, 0x51	; 81
    94b4:	9b e0       	ldi	r25, 0x0B	; 11
    94b6:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    94ba:	e8 0e       	add	r14, r24
    94bc:	f9 1e       	adc	r15, r25
    94be:	77 c0       	rjmp	.+238    	; 0x95ae <http_output+0x650>
    94c0:	f1 e0       	ldi	r31, 0x01	; 1
    94c2:	df 16       	cp	r13, r31
    94c4:	09 f0       	breq	.+2      	; 0x94c8 <http_output+0x56a>
    94c6:	6e c0       	rjmp	.+220    	; 0x95a4 <http_output+0x646>
    94c8:	21 e9       	ldi	r18, 0x91	; 145
    94ca:	82 16       	cp	r8, r18
    94cc:	2e e7       	ldi	r18, 0x7E	; 126
    94ce:	92 06       	cpc	r9, r18
    94d0:	44 f0       	brlt	.+16     	; 0x94e2 <http_output+0x584>
    94d2:	84 e4       	ldi	r24, 0x44	; 68
    94d4:	9b e0       	ldi	r25, 0x0B	; 11
    94d6:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    94da:	7c 01       	movw	r14, r24
    94dc:	e4 0c       	add	r14, r4
    94de:	f5 1c       	adc	r15, r5
    94e0:	5a c0       	rjmp	.+180    	; 0x9596 <http_output+0x638>
    94e2:	97 fc       	sbrc	r9, 7
    94e4:	02 c0       	rjmp	.+4      	; 0x94ea <http_output+0x58c>
    94e6:	8b e2       	ldi	r24, 0x2B	; 43
    94e8:	01 c0       	rjmp	.+2      	; 0x94ec <http_output+0x58e>
    94ea:	8d e2       	ldi	r24, 0x2D	; 45
    94ec:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    94f0:	c4 01       	movw	r24, r8
    94f2:	97 fe       	sbrs	r9, 7
    94f4:	03 c0       	rjmp	.+6      	; 0x94fc <http_output+0x59e>
    94f6:	90 95       	com	r25
    94f8:	81 95       	neg	r24
    94fa:	9f 4f       	sbci	r25, 0xFF	; 255
    94fc:	b1 01       	movw	r22, r2
    94fe:	0e 94 43 3f 	call	0x7e86	; 0x7e86 <ustoaz>
    9502:	f1 01       	movw	r30, r2
    9504:	01 90       	ld	r0, Z+
    9506:	00 20       	and	r0, r0
    9508:	e9 f7       	brne	.-6      	; 0x9504 <http_output+0x5a6>
    950a:	31 97       	sbiw	r30, 0x01	; 1
    950c:	e2 19       	sub	r30, r2
    950e:	f3 09       	sbc	r31, r3
    9510:	c1 01       	movw	r24, r2
    9512:	bf 01       	movw	r22, r30
    9514:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    9518:	4c 01       	movw	r8, r24
    951a:	8f e3       	ldi	r24, 0x3F	; 63
    951c:	9b e0       	ldi	r25, 0x0B	; 11
    951e:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    9522:	6c 01       	movw	r12, r24
    9524:	c2 58       	subi	r28, 0x82	; 130
    9526:	df 4f       	sbci	r29, 0xFF	; 255
    9528:	48 81       	ld	r20, Y
    952a:	59 81       	ldd	r21, Y+1	; 0x01
    952c:	ce 57       	subi	r28, 0x7E	; 126
    952e:	d0 40       	sbci	r29, 0x00	; 0
    9530:	57 fd       	sbrc	r21, 7
    9532:	02 c0       	rjmp	.+4      	; 0x9538 <http_output+0x5da>
    9534:	8b e2       	ldi	r24, 0x2B	; 43
    9536:	01 c0       	rjmp	.+2      	; 0x953a <http_output+0x5dc>
    9538:	8d e2       	ldi	r24, 0x2D	; 45
    953a:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    953e:	c2 58       	subi	r28, 0x82	; 130
    9540:	df 4f       	sbci	r29, 0xFF	; 255
    9542:	88 81       	ld	r24, Y
    9544:	99 81       	ldd	r25, Y+1	; 0x01
    9546:	ce 57       	subi	r28, 0x7E	; 126
    9548:	d0 40       	sbci	r29, 0x00	; 0
    954a:	97 ff       	sbrs	r25, 7
    954c:	03 c0       	rjmp	.+6      	; 0x9554 <http_output+0x5f6>
    954e:	90 95       	com	r25
    9550:	81 95       	neg	r24
    9552:	9f 4f       	sbci	r25, 0xFF	; 255
    9554:	b1 01       	movw	r22, r2
    9556:	0e 94 43 3f 	call	0x7e86	; 0x7e86 <ustoaz>
    955a:	f1 01       	movw	r30, r2
    955c:	01 90       	ld	r0, Z+
    955e:	00 20       	and	r0, r0
    9560:	e9 f7       	brne	.-6      	; 0x955c <http_output+0x5fe>
    9562:	e2 19       	sub	r30, r2
    9564:	f3 09       	sbc	r31, r3
    9566:	33 97       	sbiw	r30, 0x03	; 3
    9568:	ce 01       	movw	r24, r28
    956a:	8e 96       	adiw	r24, 0x2e	; 46
    956c:	bf 01       	movw	r22, r30
    956e:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    9572:	8c 01       	movw	r16, r24
    9574:	8b e3       	ldi	r24, 0x3B	; 59
    9576:	9b e0       	ldi	r25, 0x0B	; 11
    9578:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    957c:	62 e0       	ldi	r22, 0x02	; 2
    957e:	e6 2e       	mov	r14, r22
    9580:	f1 2c       	mov	r15, r1
    9582:	e4 0c       	add	r14, r4
    9584:	f5 1c       	adc	r15, r5
    9586:	e8 0c       	add	r14, r8
    9588:	f9 1c       	adc	r15, r9
    958a:	ec 0c       	add	r14, r12
    958c:	fd 1c       	adc	r15, r13
    958e:	e0 0e       	add	r14, r16
    9590:	f1 1e       	adc	r15, r17
    9592:	e8 0e       	add	r14, r24
    9594:	f9 1e       	adc	r15, r25
    9596:	88 e2       	ldi	r24, 0x28	; 40
    9598:	9b e0       	ldi	r25, 0x0B	; 11
    959a:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    959e:	e8 0e       	add	r14, r24
    95a0:	f9 1e       	adc	r15, r25
    95a2:	07 c0       	rjmp	.+14     	; 0x95b2 <http_output+0x654>
    95a4:	88 e1       	ldi	r24, 0x18	; 24
    95a6:	9b e0       	ldi	r25, 0x0B	; 11
    95a8:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    95ac:	7c 01       	movw	r14, r24
    95ae:	e4 0c       	add	r14, r4
    95b0:	f5 1c       	adc	r15, r5
    95b2:	8d e0       	ldi	r24, 0x0D	; 13
    95b4:	9b e0       	ldi	r25, 0x0B	; 11
    95b6:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    95ba:	e8 0e       	add	r14, r24
    95bc:	f9 1e       	adc	r15, r25
    95be:	ae 0c       	add	r10, r14
    95c0:	bf 1c       	adc	r11, r15
    95c2:	c4 56       	subi	r28, 0x64	; 100
    95c4:	df 4f       	sbci	r29, 0xFF	; 255
    95c6:	58 81       	ld	r21, Y
    95c8:	cc 59       	subi	r28, 0x9C	; 156
    95ca:	d0 40       	sbci	r29, 0x00	; 0
    95cc:	65 16       	cp	r6, r21
    95ce:	09 f0       	breq	.+2      	; 0x95d2 <http_output+0x674>
    95d0:	f9 ce       	rjmp	.-526    	; 0x93c4 <http_output+0x466>
    95d2:	60 91 46 05 	lds	r22, 0x0546
    95d6:	70 91 47 05 	lds	r23, 0x0547
    95da:	88 e1       	ldi	r24, 0x18	; 24
    95dc:	a5 01       	movw	r20, r10
    95de:	0e 94 3b 27 	call	0x4e76	; 0x4e76 <tcp_output>
    95e2:	88 23       	and	r24, r24
    95e4:	09 f0       	breq	.+2      	; 0x95e8 <http_output+0x68a>
    95e6:	ba c3       	rjmp	.+1908   	; 0x9d5c <http_output+0xdfe>
    95e8:	86 e3       	ldi	r24, 0x36	; 54
    95ea:	90 e0       	ldi	r25, 0x00	; 0
    95ec:	0e 94 67 1a 	call	0x34ce	; 0x34ce <enc_txseek>
    95f0:	83 e0       	ldi	r24, 0x03	; 3
    95f2:	60 e0       	ldi	r22, 0x00	; 0
    95f4:	70 e0       	ldi	r23, 0x00	; 0
    95f6:	c7 c1       	rjmp	.+910    	; 0x9986 <http_output+0xa28>
    95f8:	04 30       	cpi	r16, 0x04	; 4
    95fa:	09 f0       	breq	.+2      	; 0x95fe <http_output+0x6a0>
    95fc:	d4 c1       	rjmp	.+936    	; 0x99a6 <http_output+0xa48>
    95fe:	c2 01       	movw	r24, r4
    9600:	0e 94 b6 44 	call	0x896c	; 0x896c <http_outputsub>
    9604:	81 30       	cpi	r24, 0x01	; 1
    9606:	39 f4       	brne	.+14     	; 0x9616 <http_output+0x6b8>
    9608:	88 e0       	ldi	r24, 0x08	; 8
    960a:	c6 56       	subi	r28, 0x66	; 102
    960c:	df 4f       	sbci	r29, 0xFF	; 255
    960e:	88 83       	st	Y, r24
    9610:	ca 59       	subi	r28, 0x9A	; 154
    9612:	d0 40       	sbci	r29, 0x00	; 0
    9614:	16 c0       	rjmp	.+44     	; 0x9642 <http_output+0x6e4>
    9616:	82 30       	cpi	r24, 0x02	; 2
    9618:	19 f4       	brne	.+6      	; 0x9620 <http_output+0x6c2>
    961a:	0e 94 5e 53 	call	0xa6bc	; 0xa6bc <clear_eventlog>
    961e:	0c c0       	rjmp	.+24     	; 0x9638 <http_output+0x6da>
    9620:	83 30       	cpi	r24, 0x03	; 3
    9622:	51 f4       	brne	.+20     	; 0x9638 <http_output+0x6da>
    9624:	17 98       	cbi	0x02, 7	; 2
    9626:	80 91 ce 09 	lds	r24, 0x09CE
    962a:	90 91 cf 09 	lds	r25, 0x09CF
    962e:	9f 77       	andi	r25, 0x7F	; 127
    9630:	90 93 cf 09 	sts	0x09CF, r25
    9634:	80 93 ce 09 	sts	0x09CE, r24
    9638:	c6 56       	subi	r28, 0x66	; 102
    963a:	df 4f       	sbci	r29, 0xFF	; 255
    963c:	18 82       	st	Y, r1
    963e:	ca 59       	subi	r28, 0x9A	; 154
    9640:	d0 40       	sbci	r29, 0x00	; 0
    9642:	84 e0       	ldi	r24, 0x04	; 4
    9644:	0e 94 61 45 	call	0x8ac2	; 0x8ac2 <http_msglogheader>
    9648:	8c 01       	movw	r16, r24
    964a:	80 eb       	ldi	r24, 0xB0	; 176
    964c:	9b e0       	ldi	r25, 0x0B	; 11
    964e:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    9652:	60 91 46 05 	lds	r22, 0x0546
    9656:	70 91 47 05 	lds	r23, 0x0547
    965a:	08 0f       	add	r16, r24
    965c:	19 1f       	adc	r17, r25
    965e:	88 e1       	ldi	r24, 0x18	; 24
    9660:	a8 01       	movw	r20, r16
    9662:	0e 94 3b 27 	call	0x4e76	; 0x4e76 <tcp_output>
    9666:	88 23       	and	r24, r24
    9668:	09 f0       	breq	.+2      	; 0x966c <http_output+0x70e>
    966a:	78 c3       	rjmp	.+1776   	; 0x9d5c <http_output+0xdfe>
    966c:	86 e3       	ldi	r24, 0x36	; 54
    966e:	90 e0       	ldi	r25, 0x00	; 0
    9670:	0e 94 67 1a 	call	0x34ce	; 0x34ce <enc_txseek>
    9674:	c7 56       	subi	r28, 0x67	; 103
    9676:	df 4f       	sbci	r29, 0xFF	; 255
    9678:	18 82       	st	Y, r1
    967a:	c9 59       	subi	r28, 0x99	; 153
    967c:	d0 40       	sbci	r29, 0x00	; 0
    967e:	ee 96       	adiw	r28, 0x3e	; 62
    9680:	1f ae       	std	Y+63, r1	; 0x3f
    9682:	1e ae       	std	Y+62, r1	; 0x3e
    9684:	ee 97       	sbiw	r28, 0x3e	; 62
    9686:	5c e2       	ldi	r21, 0x2C	; 44
    9688:	25 2e       	mov	r2, r21
    968a:	31 2c       	mov	r3, r1
    968c:	2c 0e       	add	r2, r28
    968e:	3d 1e       	adc	r3, r29
    9690:	8f e4       	ldi	r24, 0x4F	; 79
    9692:	9c e0       	ldi	r25, 0x0C	; 12
    9694:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    9698:	7c 01       	movw	r14, r24
    969a:	c7 56       	subi	r28, 0x67	; 103
    969c:	df 4f       	sbci	r29, 0xFF	; 255
    969e:	e8 81       	ld	r30, Y
    96a0:	c9 59       	subi	r28, 0x99	; 153
    96a2:	d0 40       	sbci	r29, 0x00	; 0
    96a4:	c6 56       	subi	r28, 0x66	; 102
    96a6:	df 4f       	sbci	r29, 0xFF	; 255
    96a8:	98 81       	ld	r25, Y
    96aa:	ca 59       	subi	r28, 0x9A	; 154
    96ac:	d0 40       	sbci	r29, 0x00	; 0
    96ae:	e9 0f       	add	r30, r25
    96b0:	f0 e0       	ldi	r31, 0x00	; 0
    96b2:	44 e0       	ldi	r20, 0x04	; 4
    96b4:	ee 0f       	add	r30, r30
    96b6:	ff 1f       	adc	r31, r31
    96b8:	4a 95       	dec	r20
    96ba:	e1 f7       	brne	.-8      	; 0x96b4 <http_output+0x756>
    96bc:	cf 01       	movw	r24, r30
    96be:	84 50       	subi	r24, 0x04	; 4
    96c0:	95 4f       	sbci	r25, 0xF5	; 245
    96c2:	dc 01       	movw	r26, r24
    96c4:	1c 96       	adiw	r26, 0x0c	; 12
    96c6:	2d 91       	ld	r18, X+
    96c8:	3d 91       	ld	r19, X+
    96ca:	4d 91       	ld	r20, X+
    96cc:	5c 91       	ld	r21, X
    96ce:	1f 97       	sbiw	r26, 0x0f	; 15
    96d0:	cb 56       	subi	r28, 0x6B	; 107
    96d2:	df 4f       	sbci	r29, 0xFF	; 255
    96d4:	28 83       	st	Y, r18
    96d6:	39 83       	std	Y+1, r19	; 0x01
    96d8:	4a 83       	std	Y+2, r20	; 0x02
    96da:	5b 83       	std	Y+3, r21	; 0x03
    96dc:	c5 59       	subi	r28, 0x95	; 149
    96de:	d0 40       	sbci	r29, 0x00	; 0
    96e0:	1a 96       	adiw	r26, 0x0a	; 10
    96e2:	cc 90       	ld	r12, X
    96e4:	1a 97       	sbiw	r26, 0x0a	; 10
    96e6:	1b 96       	adiw	r26, 0x0b	; 11
    96e8:	bc 91       	ld	r27, X
    96ea:	c5 56       	subi	r28, 0x65	; 101
    96ec:	df 4f       	sbci	r29, 0xFF	; 255
    96ee:	b8 83       	st	Y, r27
    96f0:	cb 59       	subi	r28, 0x9B	; 155
    96f2:	d0 40       	sbci	r29, 0x00	; 0
    96f4:	df 01       	movw	r26, r30
    96f6:	ac 5f       	subi	r26, 0xFC	; 252
    96f8:	b4 4f       	sbci	r27, 0xF4	; 244
    96fa:	1c 91       	ld	r17, X
    96fc:	11 96       	adiw	r26, 0x01	; 1
    96fe:	dc 90       	ld	r13, X
    9700:	dc 01       	movw	r26, r24
    9702:	16 96       	adiw	r26, 0x06	; 6
    9704:	6c 91       	ld	r22, X
    9706:	16 97       	sbiw	r26, 0x06	; 6
    9708:	15 96       	adiw	r26, 0x05	; 5
    970a:	5c 91       	ld	r21, X
    970c:	df 01       	movw	r26, r30
    970e:	a0 50       	subi	r26, 0x00	; 0
    9710:	b5 4f       	sbci	r27, 0xF5	; 245
    9712:	7c 91       	ld	r23, X
    9714:	dc 01       	movw	r26, r24
    9716:	13 96       	adiw	r26, 0x03	; 3
    9718:	4c 91       	ld	r20, X
    971a:	13 97       	sbiw	r26, 0x03	; 3
    971c:	e2 50       	subi	r30, 0x02	; 2
    971e:	f5 4f       	sbci	r31, 0xF5	; 245
    9720:	e0 81       	ld	r30, Z
    9722:	2d 91       	ld	r18, X+
    9724:	3c 91       	ld	r19, X
    9726:	11 97       	sbiw	r26, 0x01	; 1
    9728:	17 96       	adiw	r26, 0x07	; 7
    972a:	0c 91       	ld	r16, X
    972c:	00 23       	and	r16, r16
    972e:	09 f4       	brne	.+2      	; 0x9732 <http_output+0x7d4>
    9730:	f0 c0       	rjmp	.+480    	; 0x9912 <http_output+0x9b4>
    9732:	80 2f       	mov	r24, r16
    9734:	81 50       	subi	r24, 0x01	; 1
    9736:	84 30       	cpi	r24, 0x04	; 4
    9738:	28 f4       	brcc	.+10     	; 0x9744 <http_output+0x7e6>
    973a:	8b e3       	ldi	r24, 0x3B	; 59
    973c:	9c e0       	ldi	r25, 0x0C	; 12
    973e:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    9742:	0b c0       	rjmp	.+22     	; 0x975a <http_output+0x7fc>
    9744:	3e 83       	std	Y+6, r19	; 0x06
    9746:	2d 83       	std	Y+5, r18	; 0x05
    9748:	ef 83       	std	Y+7, r30	; 0x07
    974a:	48 87       	std	Y+8, r20	; 0x08
    974c:	79 87       	std	Y+9, r23	; 0x09
    974e:	5a 87       	std	Y+10, r21	; 0x0a
    9750:	6b 87       	std	Y+11, r22	; 0x0b
    9752:	ce 01       	movw	r24, r28
    9754:	05 96       	adiw	r24, 0x05	; 5
    9756:	0e 94 1a 46 	call	0x8c34	; 0x8c34 <writedate>
    975a:	e8 0e       	add	r14, r24
    975c:	f9 1e       	adc	r15, r25
    975e:	81 e3       	ldi	r24, 0x31	; 49
    9760:	9c e0       	ldi	r25, 0x0C	; 12
    9762:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    9766:	2c 01       	movw	r4, r24
    9768:	e0 2f       	mov	r30, r16
    976a:	f0 e0       	ldi	r31, 0x00	; 0
    976c:	ee 0f       	add	r30, r30
    976e:	ff 1f       	adc	r31, r31
    9770:	e9 58       	subi	r30, 0x89	; 137
    9772:	f8 4f       	sbci	r31, 0xF8	; 248
    9774:	85 91       	lpm	r24, Z+
    9776:	94 91       	lpm	r25, Z+
    9778:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    977c:	4e 0c       	add	r4, r14
    977e:	5f 1c       	adc	r5, r15
    9780:	48 0e       	add	r4, r24
    9782:	59 1e       	adc	r5, r25
    9784:	05 30       	cpi	r16, 0x05	; 5
    9786:	09 f0       	breq	.+2      	; 0x978a <http_output+0x82c>
    9788:	3f c0       	rjmp	.+126    	; 0x9808 <http_output+0x8aa>
    978a:	8b e2       	ldi	r24, 0x2B	; 43
    978c:	9c e0       	ldi	r25, 0x0C	; 12
    978e:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    9792:	3c 01       	movw	r6, r24
    9794:	81 2f       	mov	r24, r17
    9796:	9d 2d       	mov	r25, r13
    9798:	b1 01       	movw	r22, r2
    979a:	0e 94 af 3e 	call	0x7d5e	; 0x7d5e <ustoahz>
    979e:	f1 01       	movw	r30, r2
    97a0:	01 90       	ld	r0, Z+
    97a2:	00 20       	and	r0, r0
    97a4:	e9 f7       	brne	.-6      	; 0x97a0 <http_output+0x842>
    97a6:	31 97       	sbiw	r30, 0x01	; 1
    97a8:	e2 19       	sub	r30, r2
    97aa:	f3 09       	sbc	r31, r3
    97ac:	c1 01       	movw	r24, r2
    97ae:	bf 01       	movw	r22, r30
    97b0:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    97b4:	4c 01       	movw	r8, r24
    97b6:	85 e2       	ldi	r24, 0x25	; 37
    97b8:	9c e0       	ldi	r25, 0x0C	; 12
    97ba:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    97be:	5c 01       	movw	r10, r24
    97c0:	8c 2d       	mov	r24, r12
    97c2:	c5 56       	subi	r28, 0x65	; 101
    97c4:	df 4f       	sbci	r29, 0xFF	; 255
    97c6:	98 81       	ld	r25, Y
    97c8:	cb 59       	subi	r28, 0x9B	; 155
    97ca:	d0 40       	sbci	r29, 0x00	; 0
    97cc:	b1 01       	movw	r22, r2
    97ce:	0e 94 af 3e 	call	0x7d5e	; 0x7d5e <ustoahz>
    97d2:	f1 01       	movw	r30, r2
    97d4:	01 90       	ld	r0, Z+
    97d6:	00 20       	and	r0, r0
    97d8:	e9 f7       	brne	.-6      	; 0x97d4 <http_output+0x876>
    97da:	31 97       	sbiw	r30, 0x01	; 1
    97dc:	e2 19       	sub	r30, r2
    97de:	f3 09       	sbc	r31, r3
    97e0:	c1 01       	movw	r24, r2
    97e2:	bf 01       	movw	r22, r30
    97e4:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    97e8:	6c 01       	movw	r12, r24
    97ea:	8e e1       	ldi	r24, 0x1E	; 30
    97ec:	9c e0       	ldi	r25, 0x0C	; 12
    97ee:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    97f2:	7c 01       	movw	r14, r24
    97f4:	cb 56       	subi	r28, 0x6B	; 107
    97f6:	df 4f       	sbci	r29, 0xFF	; 255
    97f8:	88 81       	ld	r24, Y
    97fa:	99 81       	ldd	r25, Y+1	; 0x01
    97fc:	c5 59       	subi	r28, 0x95	; 149
    97fe:	d0 40       	sbci	r29, 0x00	; 0
    9800:	b1 01       	movw	r22, r2
    9802:	0e 94 af 3e 	call	0x7d5e	; 0x7d5e <ustoahz>
    9806:	3f c0       	rjmp	.+126    	; 0x9886 <http_output+0x928>
    9808:	0a 30       	cpi	r16, 0x0A	; 10
    980a:	19 f0       	breq	.+6      	; 0x9812 <http_output+0x8b4>
    980c:	07 30       	cpi	r16, 0x07	; 7
    980e:	09 f0       	breq	.+2      	; 0x9812 <http_output+0x8b4>
    9810:	59 c0       	rjmp	.+178    	; 0x98c4 <http_output+0x966>
    9812:	87 e1       	ldi	r24, 0x17	; 23
    9814:	9c e0       	ldi	r25, 0x0C	; 12
    9816:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    981a:	3c 01       	movw	r6, r24
    981c:	81 2f       	mov	r24, r17
    981e:	b1 01       	movw	r22, r2
    9820:	0e 94 97 3e 	call	0x7d2e	; 0x7d2e <uctoahz>
    9824:	f1 01       	movw	r30, r2
    9826:	01 90       	ld	r0, Z+
    9828:	00 20       	and	r0, r0
    982a:	e9 f7       	brne	.-6      	; 0x9826 <http_output+0x8c8>
    982c:	31 97       	sbiw	r30, 0x01	; 1
    982e:	e2 19       	sub	r30, r2
    9830:	f3 09       	sbc	r31, r3
    9832:	c1 01       	movw	r24, r2
    9834:	bf 01       	movw	r22, r30
    9836:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    983a:	4c 01       	movw	r8, r24
    983c:	80 e1       	ldi	r24, 0x10	; 16
    983e:	9c e0       	ldi	r25, 0x0C	; 12
    9840:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    9844:	5c 01       	movw	r10, r24
    9846:	8c 2d       	mov	r24, r12
    9848:	b1 01       	movw	r22, r2
    984a:	0e 94 97 3e 	call	0x7d2e	; 0x7d2e <uctoahz>
    984e:	f1 01       	movw	r30, r2
    9850:	01 90       	ld	r0, Z+
    9852:	00 20       	and	r0, r0
    9854:	e9 f7       	brne	.-6      	; 0x9850 <http_output+0x8f2>
    9856:	31 97       	sbiw	r30, 0x01	; 1
    9858:	e2 19       	sub	r30, r2
    985a:	f3 09       	sbc	r31, r3
    985c:	c1 01       	movw	r24, r2
    985e:	bf 01       	movw	r22, r30
    9860:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    9864:	6c 01       	movw	r12, r24
    9866:	88 e0       	ldi	r24, 0x08	; 8
    9868:	9c e0       	ldi	r25, 0x0C	; 12
    986a:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    986e:	7c 01       	movw	r14, r24
    9870:	cb 56       	subi	r28, 0x6B	; 107
    9872:	df 4f       	sbci	r29, 0xFF	; 255
    9874:	68 81       	ld	r22, Y
    9876:	79 81       	ldd	r23, Y+1	; 0x01
    9878:	8a 81       	ldd	r24, Y+2	; 0x02
    987a:	9b 81       	ldd	r25, Y+3	; 0x03
    987c:	c5 59       	subi	r28, 0x95	; 149
    987e:	d0 40       	sbci	r29, 0x00	; 0
    9880:	a1 01       	movw	r20, r2
    9882:	0e 94 d9 3e 	call	0x7db2	; 0x7db2 <ultoahz>
    9886:	f1 01       	movw	r30, r2
    9888:	01 90       	ld	r0, Z+
    988a:	00 20       	and	r0, r0
    988c:	e9 f7       	brne	.-6      	; 0x9888 <http_output+0x92a>
    988e:	31 97       	sbiw	r30, 0x01	; 1
    9890:	e2 19       	sub	r30, r2
    9892:	f3 09       	sbc	r31, r3
    9894:	c1 01       	movw	r24, r2
    9896:	bf 01       	movw	r22, r30
    9898:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    989c:	8c 01       	movw	r16, r24
    989e:	89 e2       	ldi	r24, 0x29	; 41
    98a0:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    98a4:	08 94       	sec
    98a6:	41 1c       	adc	r4, r1
    98a8:	51 1c       	adc	r5, r1
    98aa:	46 0c       	add	r4, r6
    98ac:	57 1c       	adc	r5, r7
    98ae:	48 0c       	add	r4, r8
    98b0:	59 1c       	adc	r5, r9
    98b2:	4a 0c       	add	r4, r10
    98b4:	5b 1c       	adc	r5, r11
    98b6:	4c 0c       	add	r4, r12
    98b8:	5d 1c       	adc	r5, r13
    98ba:	4e 0c       	add	r4, r14
    98bc:	5f 1c       	adc	r5, r15
    98be:	40 0e       	add	r4, r16
    98c0:	51 1e       	adc	r5, r17
    98c2:	2e c0       	rjmp	.+92     	; 0x9920 <http_output+0x9c2>
    98c4:	0b 31       	cpi	r16, 0x1B	; 27
    98c6:	61 f5       	brne	.+88     	; 0x9920 <http_output+0x9c2>
    98c8:	8f ef       	ldi	r24, 0xFF	; 255
    98ca:	9b e0       	ldi	r25, 0x0B	; 11
    98cc:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    98d0:	8c 01       	movw	r16, r24
    98d2:	cb 56       	subi	r28, 0x6B	; 107
    98d4:	df 4f       	sbci	r29, 0xFF	; 255
    98d6:	68 81       	ld	r22, Y
    98d8:	79 81       	ldd	r23, Y+1	; 0x01
    98da:	8a 81       	ldd	r24, Y+2	; 0x02
    98dc:	9b 81       	ldd	r25, Y+3	; 0x03
    98de:	c5 59       	subi	r28, 0x95	; 149
    98e0:	d0 40       	sbci	r29, 0x00	; 0
    98e2:	a1 01       	movw	r20, r2
    98e4:	0e 94 a5 41 	call	0x834a	; 0x834a <long2ipstr>
    98e8:	f1 01       	movw	r30, r2
    98ea:	01 90       	ld	r0, Z+
    98ec:	00 20       	and	r0, r0
    98ee:	e9 f7       	brne	.-6      	; 0x98ea <http_output+0x98c>
    98f0:	31 97       	sbiw	r30, 0x01	; 1
    98f2:	e2 19       	sub	r30, r2
    98f4:	f3 09       	sbc	r31, r3
    98f6:	c1 01       	movw	r24, r2
    98f8:	bf 01       	movw	r22, r30
    98fa:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    98fe:	7c 01       	movw	r14, r24
    9900:	89 e2       	ldi	r24, 0x29	; 41
    9902:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    9906:	08 94       	sec
    9908:	41 1c       	adc	r4, r1
    990a:	51 1c       	adc	r5, r1
    990c:	40 0e       	add	r4, r16
    990e:	51 1e       	adc	r5, r17
    9910:	05 c0       	rjmp	.+10     	; 0x991c <http_output+0x9be>
    9912:	89 ee       	ldi	r24, 0xE9	; 233
    9914:	9b e0       	ldi	r25, 0x0B	; 11
    9916:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    991a:	2c 01       	movw	r4, r24
    991c:	4e 0c       	add	r4, r14
    991e:	5f 1c       	adc	r5, r15
    9920:	8e ed       	ldi	r24, 0xDE	; 222
    9922:	9b e0       	ldi	r25, 0x0B	; 11
    9924:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    9928:	48 0e       	add	r4, r24
    992a:	59 1e       	adc	r5, r25
    992c:	ee 96       	adiw	r28, 0x3e	; 62
    992e:	ee ad       	ldd	r30, Y+62	; 0x3e
    9930:	ff ad       	ldd	r31, Y+63	; 0x3f
    9932:	ee 97       	sbiw	r28, 0x3e	; 62
    9934:	e4 0d       	add	r30, r4
    9936:	f5 1d       	adc	r31, r5
    9938:	ee 96       	adiw	r28, 0x3e	; 62
    993a:	ff af       	std	Y+63, r31	; 0x3f
    993c:	ee af       	std	Y+62, r30	; 0x3e
    993e:	ee 97       	sbiw	r28, 0x3e	; 62
    9940:	c7 56       	subi	r28, 0x67	; 103
    9942:	df 4f       	sbci	r29, 0xFF	; 255
    9944:	f8 81       	ld	r31, Y
    9946:	c9 59       	subi	r28, 0x99	; 153
    9948:	d0 40       	sbci	r29, 0x00	; 0
    994a:	ff 5f       	subi	r31, 0xFF	; 255
    994c:	c7 56       	subi	r28, 0x67	; 103
    994e:	df 4f       	sbci	r29, 0xFF	; 255
    9950:	f8 83       	st	Y, r31
    9952:	c9 59       	subi	r28, 0x99	; 153
    9954:	d0 40       	sbci	r29, 0x00	; 0
    9956:	f8 30       	cpi	r31, 0x08	; 8
    9958:	09 f0       	breq	.+2      	; 0x995c <http_output+0x9fe>
    995a:	9a ce       	rjmp	.-716    	; 0x9690 <http_output+0x732>
    995c:	60 91 46 05 	lds	r22, 0x0546
    9960:	70 91 47 05 	lds	r23, 0x0547
    9964:	88 e1       	ldi	r24, 0x18	; 24
    9966:	ee 96       	adiw	r28, 0x3e	; 62
    9968:	4e ad       	ldd	r20, Y+62	; 0x3e
    996a:	5f ad       	ldd	r21, Y+63	; 0x3f
    996c:	ee 97       	sbiw	r28, 0x3e	; 62
    996e:	0e 94 3b 27 	call	0x4e76	; 0x4e76 <tcp_output>
    9972:	88 23       	and	r24, r24
    9974:	09 f0       	breq	.+2      	; 0x9978 <http_output+0xa1a>
    9976:	f2 c1       	rjmp	.+996    	; 0x9d5c <http_output+0xdfe>
    9978:	86 e3       	ldi	r24, 0x36	; 54
    997a:	90 e0       	ldi	r25, 0x00	; 0
    997c:	0e 94 67 1a 	call	0x34ce	; 0x34ce <enc_txseek>
    9980:	84 e0       	ldi	r24, 0x04	; 4
    9982:	61 e0       	ldi	r22, 0x01	; 1
    9984:	70 e0       	ldi	r23, 0x00	; 0
    9986:	0e 94 ff 44 	call	0x89fe	; 0x89fe <http_msgpagechg>
    998a:	8c 01       	movw	r16, r24
    998c:	81 e0       	ldi	r24, 0x01	; 1
    998e:	90 e0       	ldi	r25, 0x00	; 0
    9990:	0e 94 dd 44 	call	0x89ba	; 0x89ba <http_msgfooter>
    9994:	60 91 46 05 	lds	r22, 0x0546
    9998:	70 91 47 05 	lds	r23, 0x0547
    999c:	08 0f       	add	r16, r24
    999e:	19 1f       	adc	r17, r25
    99a0:	88 e1       	ldi	r24, 0x18	; 24
    99a2:	a8 01       	movw	r20, r16
    99a4:	d9 c1       	rjmp	.+946    	; 0x9d58 <http_output+0xdfa>
    99a6:	05 30       	cpi	r16, 0x05	; 5
    99a8:	09 f0       	breq	.+2      	; 0x99ac <http_output+0xa4e>
    99aa:	bd c1       	rjmp	.+890    	; 0x9d26 <http_output+0xdc8>
    99ac:	85 e0       	ldi	r24, 0x05	; 5
    99ae:	0e 94 61 45 	call	0x8ac2	; 0x8ac2 <http_msglogheader>
    99b2:	cd 56       	subi	r28, 0x6D	; 109
    99b4:	df 4f       	sbci	r29, 0xFF	; 255
    99b6:	99 83       	std	Y+1, r25	; 0x01
    99b8:	88 83       	st	Y, r24
    99ba:	c3 59       	subi	r28, 0x93	; 147
    99bc:	d0 40       	sbci	r29, 0x00	; 0
    99be:	8d e3       	ldi	r24, 0x3D	; 61
    99c0:	9d e0       	ldi	r25, 0x0D	; 13
    99c2:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    99c6:	cd 57       	subi	r28, 0x7D	; 125
    99c8:	df 4f       	sbci	r29, 0xFF	; 255
    99ca:	99 83       	std	Y+1, r25	; 0x01
    99cc:	88 83       	st	Y, r24
    99ce:	c3 58       	subi	r28, 0x83	; 131
    99d0:	d0 40       	sbci	r29, 0x00	; 0
    99d2:	60 91 0b 05 	lds	r22, 0x050B
    99d6:	70 91 0c 05 	lds	r23, 0x050C
    99da:	80 91 0d 05 	lds	r24, 0x050D
    99de:	90 91 0e 05 	lds	r25, 0x050E
    99e2:	8e 01       	movw	r16, r28
    99e4:	04 5c       	subi	r16, 0xC4	; 196
    99e6:	1f 4f       	sbci	r17, 0xFF	; 255
    99e8:	a8 01       	movw	r20, r16
    99ea:	0e 94 a5 41 	call	0x834a	; 0x834a <long2ipstr>
    99ee:	bc 01       	movw	r22, r24
    99f0:	82 e3       	ldi	r24, 0x32	; 50
    99f2:	9d e0       	ldi	r25, 0x0D	; 13
    99f4:	0e 94 c7 45 	call	0x8b8e	; 0x8b8e <http_systemdatasub>
    99f8:	cb 57       	subi	r28, 0x7B	; 123
    99fa:	df 4f       	sbci	r29, 0xFF	; 255
    99fc:	99 83       	std	Y+1, r25	; 0x01
    99fe:	88 83       	st	Y, r24
    9a00:	c5 58       	subi	r28, 0x85	; 133
    9a02:	d0 40       	sbci	r29, 0x00	; 0
    9a04:	60 91 0f 05 	lds	r22, 0x050F
    9a08:	70 91 10 05 	lds	r23, 0x0510
    9a0c:	80 91 11 05 	lds	r24, 0x0511
    9a10:	90 91 12 05 	lds	r25, 0x0512
    9a14:	a8 01       	movw	r20, r16
    9a16:	0e 94 a5 41 	call	0x834a	; 0x834a <long2ipstr>
    9a1a:	bc 01       	movw	r22, r24
    9a1c:	86 e2       	ldi	r24, 0x26	; 38
    9a1e:	9d e0       	ldi	r25, 0x0D	; 13
    9a20:	0e 94 c7 45 	call	0x8b8e	; 0x8b8e <http_systemdatasub>
    9a24:	c9 57       	subi	r28, 0x79	; 121
    9a26:	df 4f       	sbci	r29, 0xFF	; 255
    9a28:	99 83       	std	Y+1, r25	; 0x01
    9a2a:	88 83       	st	Y, r24
    9a2c:	c7 58       	subi	r28, 0x87	; 135
    9a2e:	d0 40       	sbci	r29, 0x00	; 0
    9a30:	60 91 13 05 	lds	r22, 0x0513
    9a34:	70 91 14 05 	lds	r23, 0x0514
    9a38:	80 91 15 05 	lds	r24, 0x0515
    9a3c:	90 91 16 05 	lds	r25, 0x0516
    9a40:	a8 01       	movw	r20, r16
    9a42:	0e 94 a5 41 	call	0x834a	; 0x834a <long2ipstr>
    9a46:	bc 01       	movw	r22, r24
    9a48:	86 e1       	ldi	r24, 0x16	; 22
    9a4a:	9d e0       	ldi	r25, 0x0D	; 13
    9a4c:	0e 94 c7 45 	call	0x8b8e	; 0x8b8e <http_systemdatasub>
    9a50:	c7 57       	subi	r28, 0x77	; 119
    9a52:	df 4f       	sbci	r29, 0xFF	; 255
    9a54:	99 83       	std	Y+1, r25	; 0x01
    9a56:	88 83       	st	Y, r24
    9a58:	c9 58       	subi	r28, 0x89	; 137
    9a5a:	d0 40       	sbci	r29, 0x00	; 0
    9a5c:	60 91 c3 09 	lds	r22, 0x09C3
    9a60:	70 91 c4 09 	lds	r23, 0x09C4
    9a64:	80 91 c5 09 	lds	r24, 0x09C5
    9a68:	90 91 c6 09 	lds	r25, 0x09C6
    9a6c:	a8 01       	movw	r20, r16
    9a6e:	0e 94 a5 41 	call	0x834a	; 0x834a <long2ipstr>
    9a72:	bc 01       	movw	r22, r24
    9a74:	8b e0       	ldi	r24, 0x0B	; 11
    9a76:	9d e0       	ldi	r25, 0x0D	; 13
    9a78:	0e 94 c7 45 	call	0x8b8e	; 0x8b8e <http_systemdatasub>
    9a7c:	c5 57       	subi	r28, 0x75	; 117
    9a7e:	df 4f       	sbci	r29, 0xFF	; 255
    9a80:	99 83       	std	Y+1, r25	; 0x01
    9a82:	88 83       	st	Y, r24
    9a84:	cb 58       	subi	r28, 0x8B	; 139
    9a86:	d0 40       	sbci	r29, 0x00	; 0
    9a88:	8e ef       	ldi	r24, 0xFE	; 254
    9a8a:	9c e0       	ldi	r25, 0x0C	; 12
    9a8c:	63 eb       	ldi	r22, 0xB3	; 179
    9a8e:	79 e0       	ldi	r23, 0x09	; 9
    9a90:	0e 94 c7 45 	call	0x8b8e	; 0x8b8e <http_systemdatasub>
    9a94:	c3 57       	subi	r28, 0x73	; 115
    9a96:	df 4f       	sbci	r29, 0xFF	; 255
    9a98:	99 83       	std	Y+1, r25	; 0x01
    9a9a:	88 83       	st	Y, r24
    9a9c:	cd 58       	subi	r28, 0x8D	; 141
    9a9e:	d0 40       	sbci	r29, 0x00	; 0
    9aa0:	80 91 3a 08 	lds	r24, 0x083A
    9aa4:	88 23       	and	r24, r24
    9aa6:	21 f4       	brne	.+8      	; 0x9ab0 <http_output+0xb52>
    9aa8:	c8 01       	movw	r24, r16
    9aaa:	62 ef       	ldi	r22, 0xF2	; 242
    9aac:	7c e0       	ldi	r23, 0x0C	; 12
    9aae:	03 c0       	rjmp	.+6      	; 0x9ab6 <http_output+0xb58>
    9ab0:	c8 01       	movw	r24, r16
    9ab2:	62 ee       	ldi	r22, 0xE2	; 226
    9ab4:	7c e0       	ldi	r23, 0x0C	; 12
    9ab6:	0e 94 b9 6d 	call	0xdb72	; 0xdb72 <strcpy_P>
    9aba:	8e 01       	movw	r16, r28
    9abc:	04 5c       	subi	r16, 0xC4	; 196
    9abe:	1f 4f       	sbci	r17, 0xFF	; 255
    9ac0:	88 ed       	ldi	r24, 0xD8	; 216
    9ac2:	9c e0       	ldi	r25, 0x0C	; 12
    9ac4:	b8 01       	movw	r22, r16
    9ac6:	0e 94 c7 45 	call	0x8b8e	; 0x8b8e <http_systemdatasub>
    9aca:	c1 57       	subi	r28, 0x71	; 113
    9acc:	df 4f       	sbci	r29, 0xFF	; 255
    9ace:	99 83       	std	Y+1, r25	; 0x01
    9ad0:	88 83       	st	Y, r24
    9ad2:	cf 58       	subi	r28, 0x8F	; 143
    9ad4:	d0 40       	sbci	r29, 0x00	; 0
    9ad6:	80 91 c9 09 	lds	r24, 0x09C9
    9ada:	e8 2f       	mov	r30, r24
    9adc:	f0 e0       	ldi	r31, 0x00	; 0
    9ade:	ee 0f       	add	r30, r30
    9ae0:	ff 1f       	adc	r31, r31
    9ae2:	e5 5e       	subi	r30, 0xE5	; 229
    9ae4:	f6 4f       	sbci	r31, 0xF6	; 246
    9ae6:	65 91       	lpm	r22, Z+
    9ae8:	74 91       	lpm	r23, Z+
    9aea:	c8 01       	movw	r24, r16
    9aec:	0e 94 b9 6d 	call	0xdb72	; 0xdb72 <strcpy_P>
    9af0:	89 ec       	ldi	r24, 0xC9	; 201
    9af2:	9c e0       	ldi	r25, 0x0C	; 12
    9af4:	b8 01       	movw	r22, r16
    9af6:	0e 94 c7 45 	call	0x8b8e	; 0x8b8e <http_systemdatasub>
    9afa:	cf 56       	subi	r28, 0x6F	; 111
    9afc:	df 4f       	sbci	r29, 0xFF	; 255
    9afe:	99 83       	std	Y+1, r25	; 0x01
    9b00:	88 83       	st	Y, r24
    9b02:	c1 59       	subi	r28, 0x91	; 145
    9b04:	d0 40       	sbci	r29, 0x00	; 0
    9b06:	80 91 ac 01 	lds	r24, 0x01AC
    9b0a:	e8 2f       	mov	r30, r24
    9b0c:	f0 e0       	ldi	r31, 0x00	; 0
    9b0e:	ee 0f       	add	r30, r30
    9b10:	ff 1f       	adc	r31, r31
    9b12:	e4 51       	subi	r30, 0x14	; 20
    9b14:	f6 4f       	sbci	r31, 0xF6	; 246
    9b16:	65 91       	lpm	r22, Z+
    9b18:	74 91       	lpm	r23, Z+
    9b1a:	c8 01       	movw	r24, r16
    9b1c:	0e 94 b9 6d 	call	0xdb72	; 0xdb72 <strcpy_P>
    9b20:	8d eb       	ldi	r24, 0xBD	; 189
    9b22:	9c e0       	ldi	r25, 0x0C	; 12
    9b24:	b8 01       	movw	r22, r16
    9b26:	0e 94 c7 45 	call	0x8b8e	; 0x8b8e <http_systemdatasub>
    9b2a:	1c 01       	movw	r2, r24
    9b2c:	80 91 8c 04 	lds	r24, 0x048C
    9b30:	b8 01       	movw	r22, r16
    9b32:	0e 94 97 3e 	call	0x7d2e	; 0x7d2e <uctoahz>
    9b36:	80 91 8d 04 	lds	r24, 0x048D
    9b3a:	be 01       	movw	r22, r28
    9b3c:	62 5c       	subi	r22, 0xC2	; 194
    9b3e:	7f 4f       	sbci	r23, 0xFF	; 255
    9b40:	0e 94 97 3e 	call	0x7d2e	; 0x7d2e <uctoahz>
    9b44:	b8 01       	movw	r22, r16
    9b46:	6c 5f       	subi	r22, 0xFC	; 252
    9b48:	7f 4f       	sbci	r23, 0xFF	; 255
    9b4a:	80 91 8e 04 	lds	r24, 0x048E
    9b4e:	0e 94 97 3e 	call	0x7d2e	; 0x7d2e <uctoahz>
    9b52:	8d e2       	ldi	r24, 0x2D	; 45
    9b54:	fe 01       	movw	r30, r28
    9b56:	ee 5b       	subi	r30, 0xBE	; 190
    9b58:	ff 4f       	sbci	r31, 0xFF	; 255
    9b5a:	80 83       	st	Z, r24
    9b5c:	b8 01       	movw	r22, r16
    9b5e:	69 5f       	subi	r22, 0xF9	; 249
    9b60:	7f 4f       	sbci	r23, 0xFF	; 255
    9b62:	80 91 8f 04 	lds	r24, 0x048F
    9b66:	0e 94 97 3e 	call	0x7d2e	; 0x7d2e <uctoahz>
    9b6a:	b8 01       	movw	r22, r16
    9b6c:	67 5f       	subi	r22, 0xF7	; 247
    9b6e:	7f 4f       	sbci	r23, 0xFF	; 255
    9b70:	80 91 90 04 	lds	r24, 0x0490
    9b74:	0e 94 97 3e 	call	0x7d2e	; 0x7d2e <uctoahz>
    9b78:	b8 01       	movw	r22, r16
    9b7a:	65 5f       	subi	r22, 0xF5	; 245
    9b7c:	7f 4f       	sbci	r23, 0xFF	; 255
    9b7e:	80 91 91 04 	lds	r24, 0x0491
    9b82:	0e 94 97 3e 	call	0x7d2e	; 0x7d2e <uctoahz>
    9b86:	fe 01       	movw	r30, r28
    9b88:	e7 5b       	subi	r30, 0xB7	; 183
    9b8a:	ff 4f       	sbci	r31, 0xFF	; 255
    9b8c:	10 82       	st	Z, r1
    9b8e:	81 eb       	ldi	r24, 0xB1	; 177
    9b90:	9c e0       	ldi	r25, 0x0C	; 12
    9b92:	b8 01       	movw	r22, r16
    9b94:	0e 94 c7 45 	call	0x8b8e	; 0x8b8e <http_systemdatasub>
    9b98:	2c 01       	movw	r4, r24
    9b9a:	20 91 63 04 	lds	r18, 0x0463
    9b9e:	82 2f       	mov	r24, r18
    9ba0:	6a e0       	ldi	r22, 0x0A	; 10
    9ba2:	0e 94 ec 6c 	call	0xd9d8	; 0xd9d8 <__udivmodqi4>
    9ba6:	80 5d       	subi	r24, 0xD0	; 208
    9ba8:	8c af       	std	Y+60, r24	; 0x3c
    9baa:	82 2f       	mov	r24, r18
    9bac:	0e 94 ec 6c 	call	0xd9d8	; 0xd9d8 <__udivmodqi4>
    9bb0:	90 5d       	subi	r25, 0xD0	; 208
    9bb2:	9d af       	std	Y+61, r25	; 0x3d
    9bb4:	1e ae       	std	Y+62, r1	; 0x3e
    9bb6:	8f e9       	ldi	r24, 0x9F	; 159
    9bb8:	9c e0       	ldi	r25, 0x0C	; 12
    9bba:	b8 01       	movw	r22, r16
    9bbc:	0e 94 c7 45 	call	0x8b8e	; 0x8b8e <http_systemdatasub>
    9bc0:	3c 01       	movw	r6, r24
    9bc2:	c8 01       	movw	r24, r16
    9bc4:	6c e7       	ldi	r22, 0x7C	; 124
    9bc6:	70 e0       	ldi	r23, 0x00	; 0
    9bc8:	0e 94 b9 6d 	call	0xdb72	; 0xdb72 <strcpy_P>
    9bcc:	8e e8       	ldi	r24, 0x8E	; 142
    9bce:	9c e0       	ldi	r25, 0x0C	; 12
    9bd0:	b8 01       	movw	r22, r16
    9bd2:	0e 94 c7 45 	call	0x8b8e	; 0x8b8e <http_systemdatasub>
    9bd6:	4c 01       	movw	r8, r24
    9bd8:	a0 90 e2 09 	lds	r10, 0x09E2
    9bdc:	b0 90 e3 09 	lds	r11, 0x09E3
    9be0:	c0 90 e4 09 	lds	r12, 0x09E4
    9be4:	d0 90 e5 09 	lds	r13, 0x09E5
    9be8:	c6 01       	movw	r24, r12
    9bea:	b5 01       	movw	r22, r10
    9bec:	2c e3       	ldi	r18, 0x3C	; 60
    9bee:	30 e0       	ldi	r19, 0x00	; 0
    9bf0:	40 e0       	ldi	r20, 0x00	; 0
    9bf2:	50 e0       	ldi	r21, 0x00	; 0
    9bf4:	0e 94 2e 6d 	call	0xda5c	; 0xda5c <__divmodsi4>
    9bf8:	ca 01       	movw	r24, r20
    9bfa:	b9 01       	movw	r22, r18
    9bfc:	a8 01       	movw	r20, r16
    9bfe:	0e 94 c2 3f 	call	0x7f84	; 0x7f84 <ltoaz>
    9c02:	7c e5       	ldi	r23, 0x5C	; 92
    9c04:	e7 2e       	mov	r14, r23
    9c06:	f1 2c       	mov	r15, r1
    9c08:	ec 0e       	add	r14, r28
    9c0a:	fd 1e       	adc	r15, r29
    9c0c:	b8 01       	movw	r22, r16
    9c0e:	6b 5f       	subi	r22, 0xFB	; 251
    9c10:	7f 4f       	sbci	r23, 0xFF	; 255
    9c12:	c7 01       	movw	r24, r14
    9c14:	0e 94 32 6e 	call	0xdc64	; 0xdc64 <strcpy>
    9c18:	c7 01       	movw	r24, r14
    9c1a:	68 e8       	ldi	r22, 0x88	; 136
    9c1c:	7c e0       	ldi	r23, 0x0C	; 12
    9c1e:	0e 94 a5 6d 	call	0xdb4a	; 0xdb4a <strcat_P>
    9c22:	c6 01       	movw	r24, r12
    9c24:	b5 01       	movw	r22, r10
    9c26:	2c e3       	ldi	r18, 0x3C	; 60
    9c28:	30 e0       	ldi	r19, 0x00	; 0
    9c2a:	40 e0       	ldi	r20, 0x00	; 0
    9c2c:	50 e0       	ldi	r21, 0x00	; 0
    9c2e:	0e 94 2e 6d 	call	0xda5c	; 0xda5c <__divmodsi4>
    9c32:	dc 01       	movw	r26, r24
    9c34:	cb 01       	movw	r24, r22
    9c36:	b8 01       	movw	r22, r16
    9c38:	0e 94 43 3f 	call	0x7e86	; 0x7e86 <ustoaz>
    9c3c:	c7 01       	movw	r24, r14
    9c3e:	be 01       	movw	r22, r28
    9c40:	61 5c       	subi	r22, 0xC1	; 193
    9c42:	7f 4f       	sbci	r23, 0xFF	; 255
    9c44:	0e 94 13 6e 	call	0xdc26	; 0xdc26 <strcat>
    9c48:	c7 01       	movw	r24, r14
    9c4a:	63 e8       	ldi	r22, 0x83	; 131
    9c4c:	7c e0       	ldi	r23, 0x0C	; 12
    9c4e:	0e 94 a5 6d 	call	0xdb4a	; 0xdb4a <strcat_P>
    9c52:	84 e7       	ldi	r24, 0x74	; 116
    9c54:	9c e0       	ldi	r25, 0x0C	; 12
    9c56:	b7 01       	movw	r22, r14
    9c58:	0e 94 c7 45 	call	0x8b8e	; 0x8b8e <http_systemdatasub>
    9c5c:	7c 01       	movw	r14, r24
    9c5e:	87 e6       	ldi	r24, 0x67	; 103
    9c60:	9c e0       	ldi	r25, 0x0C	; 12
    9c62:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    9c66:	8c 01       	movw	r16, r24
    9c68:	81 e0       	ldi	r24, 0x01	; 1
    9c6a:	90 e0       	ldi	r25, 0x00	; 0
    9c6c:	0e 94 dd 44 	call	0x89ba	; 0x89ba <http_msgfooter>
    9c70:	cd 57       	subi	r28, 0x7D	; 125
    9c72:	df 4f       	sbci	r29, 0xFF	; 255
    9c74:	28 81       	ld	r18, Y
    9c76:	39 81       	ldd	r19, Y+1	; 0x01
    9c78:	c3 58       	subi	r28, 0x83	; 131
    9c7a:	d0 40       	sbci	r29, 0x00	; 0
    9c7c:	cd 56       	subi	r28, 0x6D	; 109
    9c7e:	df 4f       	sbci	r29, 0xFF	; 255
    9c80:	48 81       	ld	r20, Y
    9c82:	59 81       	ldd	r21, Y+1	; 0x01
    9c84:	c3 59       	subi	r28, 0x93	; 147
    9c86:	d0 40       	sbci	r29, 0x00	; 0
    9c88:	24 0f       	add	r18, r20
    9c8a:	35 1f       	adc	r19, r21
    9c8c:	cb 57       	subi	r28, 0x7B	; 123
    9c8e:	df 4f       	sbci	r29, 0xFF	; 255
    9c90:	a8 81       	ld	r26, Y
    9c92:	b9 81       	ldd	r27, Y+1	; 0x01
    9c94:	c5 58       	subi	r28, 0x85	; 133
    9c96:	d0 40       	sbci	r29, 0x00	; 0
    9c98:	2a 0f       	add	r18, r26
    9c9a:	3b 1f       	adc	r19, r27
    9c9c:	c9 57       	subi	r28, 0x79	; 121
    9c9e:	df 4f       	sbci	r29, 0xFF	; 255
    9ca0:	e8 81       	ld	r30, Y
    9ca2:	f9 81       	ldd	r31, Y+1	; 0x01
    9ca4:	c7 58       	subi	r28, 0x87	; 135
    9ca6:	d0 40       	sbci	r29, 0x00	; 0
    9ca8:	2e 0f       	add	r18, r30
    9caa:	3f 1f       	adc	r19, r31
    9cac:	c7 57       	subi	r28, 0x77	; 119
    9cae:	df 4f       	sbci	r29, 0xFF	; 255
    9cb0:	48 81       	ld	r20, Y
    9cb2:	59 81       	ldd	r21, Y+1	; 0x01
    9cb4:	c9 58       	subi	r28, 0x89	; 137
    9cb6:	d0 40       	sbci	r29, 0x00	; 0
    9cb8:	24 0f       	add	r18, r20
    9cba:	35 1f       	adc	r19, r21
    9cbc:	c5 57       	subi	r28, 0x75	; 117
    9cbe:	df 4f       	sbci	r29, 0xFF	; 255
    9cc0:	a8 81       	ld	r26, Y
    9cc2:	b9 81       	ldd	r27, Y+1	; 0x01
    9cc4:	cb 58       	subi	r28, 0x8B	; 139
    9cc6:	d0 40       	sbci	r29, 0x00	; 0
    9cc8:	2a 0f       	add	r18, r26
    9cca:	3b 1f       	adc	r19, r27
    9ccc:	c3 57       	subi	r28, 0x73	; 115
    9cce:	df 4f       	sbci	r29, 0xFF	; 255
    9cd0:	e8 81       	ld	r30, Y
    9cd2:	f9 81       	ldd	r31, Y+1	; 0x01
    9cd4:	cd 58       	subi	r28, 0x8D	; 141
    9cd6:	d0 40       	sbci	r29, 0x00	; 0
    9cd8:	2e 0f       	add	r18, r30
    9cda:	3f 1f       	adc	r19, r31
    9cdc:	c1 57       	subi	r28, 0x71	; 113
    9cde:	df 4f       	sbci	r29, 0xFF	; 255
    9ce0:	48 81       	ld	r20, Y
    9ce2:	59 81       	ldd	r21, Y+1	; 0x01
    9ce4:	cf 58       	subi	r28, 0x8F	; 143
    9ce6:	d0 40       	sbci	r29, 0x00	; 0
    9ce8:	24 0f       	add	r18, r20
    9cea:	35 1f       	adc	r19, r21
    9cec:	cf 56       	subi	r28, 0x6F	; 111
    9cee:	df 4f       	sbci	r29, 0xFF	; 255
    9cf0:	a8 81       	ld	r26, Y
    9cf2:	b9 81       	ldd	r27, Y+1	; 0x01
    9cf4:	c1 59       	subi	r28, 0x91	; 145
    9cf6:	d0 40       	sbci	r29, 0x00	; 0
    9cf8:	2a 0f       	add	r18, r26
    9cfa:	3b 1f       	adc	r19, r27
    9cfc:	22 0d       	add	r18, r2
    9cfe:	33 1d       	adc	r19, r3
    9d00:	24 0d       	add	r18, r4
    9d02:	35 1d       	adc	r19, r5
    9d04:	26 0d       	add	r18, r6
    9d06:	37 1d       	adc	r19, r7
    9d08:	28 0d       	add	r18, r8
    9d0a:	39 1d       	adc	r19, r9
    9d0c:	2e 0d       	add	r18, r14
    9d0e:	3f 1d       	adc	r19, r15
    9d10:	20 0f       	add	r18, r16
    9d12:	31 1f       	adc	r19, r17
    9d14:	60 91 46 05 	lds	r22, 0x0546
    9d18:	70 91 47 05 	lds	r23, 0x0547
    9d1c:	28 0f       	add	r18, r24
    9d1e:	39 1f       	adc	r19, r25
    9d20:	88 e1       	ldi	r24, 0x18	; 24
    9d22:	a9 01       	movw	r20, r18
    9d24:	19 c0       	rjmp	.+50     	; 0x9d58 <http_output+0xdfa>
    9d26:	60 91 46 05 	lds	r22, 0x0546
    9d2a:	70 91 47 05 	lds	r23, 0x0547
    9d2e:	11 c0       	rjmp	.+34     	; 0x9d52 <http_output+0xdf4>
    9d30:	e2 30       	cpi	r30, 0x02	; 2
    9d32:	79 f4       	brne	.+30     	; 0x9d52 <http_output+0xdf4>
    9d34:	86 e3       	ldi	r24, 0x36	; 54
    9d36:	90 e0       	ldi	r25, 0x00	; 0
    9d38:	0e 94 67 1a 	call	0x34ce	; 0x34ce <enc_txseek>
    9d3c:	88 e8       	ldi	r24, 0x88	; 136
    9d3e:	91 e0       	ldi	r25, 0x01	; 1
    9d40:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    9d44:	ac 01       	movw	r20, r24
    9d46:	60 91 46 05 	lds	r22, 0x0546
    9d4a:	70 91 47 05 	lds	r23, 0x0547
    9d4e:	88 e1       	ldi	r24, 0x18	; 24
    9d50:	03 c0       	rjmp	.+6      	; 0x9d58 <http_output+0xdfa>
    9d52:	81 e1       	ldi	r24, 0x11	; 17
    9d54:	40 e0       	ldi	r20, 0x00	; 0
    9d56:	50 e0       	ldi	r21, 0x00	; 0
    9d58:	0e 94 3b 27 	call	0x4e76	; 0x4e76 <tcp_output>
    9d5c:	c4 56       	subi	r28, 0x64	; 100
    9d5e:	df 4f       	sbci	r29, 0xFF	; 255
    9d60:	e2 e1       	ldi	r30, 0x12	; 18
    9d62:	0c 94 65 6d 	jmp	0xdaca	; 0xdaca <__epilogue_restores__>

00009d66 <ucto7seg>:
    9d66:	1f 93       	push	r17
    9d68:	48 2f       	mov	r20, r24
    9d6a:	56 2f       	mov	r21, r22
    9d6c:	17 2f       	mov	r17, r23
    9d6e:	86 2f       	mov	r24, r22
    9d70:	97 2f       	mov	r25, r23
    9d72:	9c 01       	movw	r18, r24
    9d74:	d9 01       	movw	r26, r18
    9d76:	30 e0       	ldi	r19, 0x00	; 0
    9d78:	24 e6       	ldi	r18, 0x64	; 100
    9d7a:	84 2f       	mov	r24, r20
    9d7c:	62 2f       	mov	r22, r18
    9d7e:	0e 94 ec 6c 	call	0xd9d8	; 0xd9d8 <__udivmodqi4>
    9d82:	e8 2f       	mov	r30, r24
    9d84:	84 2f       	mov	r24, r20
    9d86:	0e 94 ec 6c 	call	0xd9d8	; 0xd9d8 <__udivmodqi4>
    9d8a:	49 2f       	mov	r20, r25
    9d8c:	f0 e0       	ldi	r31, 0x00	; 0
    9d8e:	ed 5e       	subi	r30, 0xED	; 237
    9d90:	fb 4e       	sbci	r31, 0xEB	; 235
    9d92:	e4 91       	lpm	r30, Z+
    9d94:	ed 93       	st	X+, r30
    9d96:	82 2f       	mov	r24, r18
    9d98:	6a e0       	ldi	r22, 0x0A	; 10
    9d9a:	0e 94 ec 6c 	call	0xd9d8	; 0xd9d8 <__udivmodqi4>
    9d9e:	28 2f       	mov	r18, r24
    9da0:	3f 5f       	subi	r19, 0xFF	; 255
    9da2:	33 30       	cpi	r19, 0x03	; 3
    9da4:	51 f7       	brne	.-44     	; 0x9d7a <ucto7seg+0x14>
    9da6:	85 2f       	mov	r24, r21
    9da8:	91 2f       	mov	r25, r17
    9daa:	1f 91       	pop	r17
    9dac:	08 95       	ret

00009dae <dispoff7seg>:
    9dae:	1f 93       	push	r17
    9db0:	5b 98       	cbi	0x0b, 3	; 11
    9db2:	10 e0       	ldi	r17, 0x00	; 0
    9db4:	8f ef       	ldi	r24, 0xFF	; 255
    9db6:	0e 94 88 18 	call	0x3110	; 0x3110 <spitx>
    9dba:	1f 5f       	subi	r17, 0xFF	; 255
    9dbc:	10 31       	cpi	r17, 0x10	; 16
    9dbe:	d1 f7       	brne	.-12     	; 0x9db4 <dispoff7seg+0x6>
    9dc0:	5b 9a       	sbi	0x0b, 3	; 11
    9dc2:	1f 91       	pop	r17
    9dc4:	08 95       	ret

00009dc6 <disp7seg>:
    9dc6:	a8 e0       	ldi	r26, 0x08	; 8
    9dc8:	b0 e0       	ldi	r27, 0x00	; 0
    9dca:	e9 ee       	ldi	r30, 0xE9	; 233
    9dcc:	fe e4       	ldi	r31, 0x4E	; 78
    9dce:	0c 94 4d 6d 	jmp	0xda9a	; 0xda9a <__prologue_saves__+0x8>
    9dd2:	5c 01       	movw	r10, r24
    9dd4:	e0 91 ac 01 	lds	r30, 0x01AC
    9dd8:	f0 e0       	ldi	r31, 0x00	; 0
    9dda:	e2 5e       	subi	r30, 0xE2	; 226
    9ddc:	fb 4e       	sbci	r31, 0xEB	; 235
    9dde:	84 90       	lpm	r8, Z+
    9de0:	80 91 c9 09 	lds	r24, 0x09C9
    9de4:	88 23       	and	r24, r24
    9de6:	19 f4       	brne	.+6      	; 0x9dee <disp7seg+0x28>
    9de8:	4e ef       	ldi	r20, 0xFE	; 254
    9dea:	94 2e       	mov	r9, r20
    9dec:	08 c0       	rjmp	.+16     	; 0x9dfe <disp7seg+0x38>
    9dee:	82 50       	subi	r24, 0x02	; 2
    9df0:	83 30       	cpi	r24, 0x03	; 3
    9df2:	18 f0       	brcs	.+6      	; 0x9dfa <disp7seg+0x34>
    9df4:	37 ef       	ldi	r19, 0xF7	; 247
    9df6:	93 2e       	mov	r9, r19
    9df8:	02 c0       	rjmp	.+4      	; 0x9dfe <disp7seg+0x38>
    9dfa:	2f eb       	ldi	r18, 0xBF	; 191
    9dfc:	92 2e       	mov	r9, r18
    9dfe:	5b 98       	cbi	0x0b, 3	; 11
    9e00:	d5 01       	movw	r26, r10
    9e02:	16 96       	adiw	r26, 0x06	; 6
    9e04:	8c 91       	ld	r24, X
    9e06:	8e 01       	movw	r16, r28
    9e08:	0f 5f       	subi	r16, 0xFF	; 255
    9e0a:	1f 4f       	sbci	r17, 0xFF	; 255
    9e0c:	b8 01       	movw	r22, r16
    9e0e:	0e 94 b3 4e 	call	0x9d66	; 0x9d66 <ucto7seg>
    9e12:	8b 81       	ldd	r24, Y+3	; 0x03
    9e14:	0e 94 88 18 	call	0x3110	; 0x3110 <spitx>
    9e18:	8a 81       	ldd	r24, Y+2	; 0x02
    9e1a:	0e 94 88 18 	call	0x3110	; 0x3110 <spitx>
    9e1e:	f5 01       	movw	r30, r10
    9e20:	80 85       	ldd	r24, Z+8	; 0x08
    9e22:	8f 5f       	subi	r24, 0xFF	; 255
    9e24:	b8 01       	movw	r22, r16
    9e26:	0e 94 b3 4e 	call	0x9d66	; 0x9d66 <ucto7seg>
    9e2a:	8b 81       	ldd	r24, Y+3	; 0x03
    9e2c:	8f 77       	andi	r24, 0x7F	; 127
    9e2e:	0e 94 88 18 	call	0x3110	; 0x3110 <spitx>
    9e32:	8a 81       	ldd	r24, Y+2	; 0x02
    9e34:	0e 94 88 18 	call	0x3110	; 0x3110 <spitx>
    9e38:	d5 01       	movw	r26, r10
    9e3a:	1a 96       	adiw	r26, 0x0a	; 10
    9e3c:	ed 90       	ld	r14, X+
    9e3e:	fc 90       	ld	r15, X
    9e40:	1b 97       	sbiw	r26, 0x0b	; 11
    9e42:	ec e6       	ldi	r30, 0x6C	; 108
    9e44:	f7 e0       	ldi	r31, 0x07	; 7
    9e46:	ee 0e       	add	r14, r30
    9e48:	ff 1e       	adc	r15, r31
    9e4a:	90 e1       	ldi	r25, 0x10	; 16
    9e4c:	c9 2e       	mov	r12, r25
    9e4e:	97 e2       	ldi	r25, 0x27	; 39
    9e50:	d9 2e       	mov	r13, r25
    9e52:	86 e0       	ldi	r24, 0x06	; 6
    9e54:	68 2e       	mov	r6, r24
    9e56:	71 2c       	mov	r7, r1
    9e58:	6c 0e       	add	r6, r28
    9e5a:	7d 1e       	adc	r7, r29
    9e5c:	c7 01       	movw	r24, r14
    9e5e:	b6 01       	movw	r22, r12
    9e60:	0e 94 f8 6c 	call	0xd9f0	; 0xd9f0 <__udivmodhi4>
    9e64:	e6 2f       	mov	r30, r22
    9e66:	c7 01       	movw	r24, r14
    9e68:	b6 01       	movw	r22, r12
    9e6a:	0e 94 f8 6c 	call	0xd9f0	; 0xd9f0 <__udivmodhi4>
    9e6e:	7c 01       	movw	r14, r24
    9e70:	f0 e0       	ldi	r31, 0x00	; 0
    9e72:	ed 5e       	subi	r30, 0xED	; 237
    9e74:	fb 4e       	sbci	r31, 0xEB	; 235
    9e76:	e4 91       	lpm	r30, Z+
    9e78:	d8 01       	movw	r26, r16
    9e7a:	ed 93       	st	X+, r30
    9e7c:	8d 01       	movw	r16, r26
    9e7e:	c6 01       	movw	r24, r12
    9e80:	6a e0       	ldi	r22, 0x0A	; 10
    9e82:	70 e0       	ldi	r23, 0x00	; 0
    9e84:	0e 94 f8 6c 	call	0xd9f0	; 0xd9f0 <__udivmodhi4>
    9e88:	6b 01       	movw	r12, r22
    9e8a:	06 15       	cp	r16, r6
    9e8c:	17 05       	cpc	r17, r7
    9e8e:	31 f7       	brne	.-52     	; 0x9e5c <disp7seg+0x96>
    9e90:	8d 81       	ldd	r24, Y+5	; 0x05
    9e92:	8f 77       	andi	r24, 0x7F	; 127
    9e94:	0e 94 88 18 	call	0x3110	; 0x3110 <spitx>
    9e98:	8c 81       	ldd	r24, Y+4	; 0x04
    9e9a:	0e 94 88 18 	call	0x3110	; 0x3110 <spitx>
    9e9e:	8b 81       	ldd	r24, Y+3	; 0x03
    9ea0:	0e 94 88 18 	call	0x3110	; 0x3110 <spitx>
    9ea4:	8a 81       	ldd	r24, Y+2	; 0x02
    9ea6:	0e 94 88 18 	call	0x3110	; 0x3110 <spitx>
    9eaa:	88 2d       	mov	r24, r8
    9eac:	0e 94 88 18 	call	0x3110	; 0x3110 <spitx>
    9eb0:	89 2d       	mov	r24, r9
    9eb2:	0e 94 88 18 	call	0x3110	; 0x3110 <spitx>
    9eb6:	f5 01       	movw	r30, r10
    9eb8:	80 81       	ld	r24, Z
    9eba:	8e 01       	movw	r16, r28
    9ebc:	0f 5f       	subi	r16, 0xFF	; 255
    9ebe:	1f 4f       	sbci	r17, 0xFF	; 255
    9ec0:	b8 01       	movw	r22, r16
    9ec2:	0e 94 b3 4e 	call	0x9d66	; 0x9d66 <ucto7seg>
    9ec6:	8b 81       	ldd	r24, Y+3	; 0x03
    9ec8:	0e 94 88 18 	call	0x3110	; 0x3110 <spitx>
    9ecc:	8a 81       	ldd	r24, Y+2	; 0x02
    9ece:	0e 94 88 18 	call	0x3110	; 0x3110 <spitx>
    9ed2:	d5 01       	movw	r26, r10
    9ed4:	12 96       	adiw	r26, 0x02	; 2
    9ed6:	8c 91       	ld	r24, X
    9ed8:	b8 01       	movw	r22, r16
    9eda:	0e 94 b3 4e 	call	0x9d66	; 0x9d66 <ucto7seg>
    9ede:	8b 81       	ldd	r24, Y+3	; 0x03
    9ee0:	8f 77       	andi	r24, 0x7F	; 127
    9ee2:	0e 94 88 18 	call	0x3110	; 0x3110 <spitx>
    9ee6:	8a 81       	ldd	r24, Y+2	; 0x02
    9ee8:	0e 94 88 18 	call	0x3110	; 0x3110 <spitx>
    9eec:	f5 01       	movw	r30, r10
    9eee:	84 81       	ldd	r24, Z+4	; 0x04
    9ef0:	b8 01       	movw	r22, r16
    9ef2:	0e 94 b3 4e 	call	0x9d66	; 0x9d66 <ucto7seg>
    9ef6:	8b 81       	ldd	r24, Y+3	; 0x03
    9ef8:	8f 77       	andi	r24, 0x7F	; 127
    9efa:	0e 94 88 18 	call	0x3110	; 0x3110 <spitx>
    9efe:	8a 81       	ldd	r24, Y+2	; 0x02
    9f00:	0e 94 88 18 	call	0x3110	; 0x3110 <spitx>
    9f04:	5b 9a       	sbi	0x0b, 3	; 11
    9f06:	28 96       	adiw	r28, 0x08	; 8
    9f08:	ee e0       	ldi	r30, 0x0E	; 14
    9f0a:	0c 94 69 6d 	jmp	0xdad2	; 0xdad2 <__epilogue_restores__+0x8>

00009f0e <disp_notime>:
    9f0e:	68 2f       	mov	r22, r24
    9f10:	88 e0       	ldi	r24, 0x08	; 8
    9f12:	4d e3       	ldi	r20, 0x3D	; 61
    9f14:	54 e1       	ldi	r21, 0x14	; 20
    9f16:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    9f1a:	08 95       	ret

00009f1c <disp_message2>:
    9f1c:	e8 2f       	mov	r30, r24
    9f1e:	f0 e0       	ldi	r31, 0x00	; 0
    9f20:	ee 0f       	add	r30, r30
    9f22:	ff 1f       	adc	r31, r31
    9f24:	e4 52       	subi	r30, 0x24	; 36
    9f26:	ff 4e       	sbci	r31, 0xEF	; 239
    9f28:	45 91       	lpm	r20, Z+
    9f2a:	54 91       	lpm	r21, Z+
    9f2c:	80 e0       	ldi	r24, 0x00	; 0
    9f2e:	61 e0       	ldi	r22, 0x01	; 1
    9f30:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    9f34:	08 95       	ret

00009f36 <disp_message1>:
    9f36:	e8 2f       	mov	r30, r24
    9f38:	f0 e0       	ldi	r31, 0x00	; 0
    9f3a:	ee 0f       	add	r30, r30
    9f3c:	ff 1f       	adc	r31, r31
    9f3e:	ef 5b       	subi	r30, 0xBF	; 191
    9f40:	ff 4e       	sbci	r31, 0xEF	; 239
    9f42:	45 91       	lpm	r20, Z+
    9f44:	54 91       	lpm	r21, Z+
    9f46:	80 e0       	ldi	r24, 0x00	; 0
    9f48:	60 e0       	ldi	r22, 0x00	; 0
    9f4a:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    9f4e:	08 95       	ret

00009f50 <disp_opetime>:
    9f50:	a0 e1       	ldi	r26, 0x10	; 16
    9f52:	b0 e0       	ldi	r27, 0x00	; 0
    9f54:	ee ea       	ldi	r30, 0xAE	; 174
    9f56:	ff e4       	ldi	r31, 0x4F	; 79
    9f58:	0c 94 53 6d 	jmp	0xdaa6	; 0xdaa6 <__prologue_saves__+0x14>
    9f5c:	e0 90 e2 09 	lds	r14, 0x09E2
    9f60:	f0 90 e3 09 	lds	r15, 0x09E3
    9f64:	00 91 e4 09 	lds	r16, 0x09E4
    9f68:	10 91 e5 09 	lds	r17, 0x09E5
    9f6c:	c8 01       	movw	r24, r16
    9f6e:	b7 01       	movw	r22, r14
    9f70:	2c e3       	ldi	r18, 0x3C	; 60
    9f72:	30 e0       	ldi	r19, 0x00	; 0
    9f74:	40 e0       	ldi	r20, 0x00	; 0
    9f76:	50 e0       	ldi	r21, 0x00	; 0
    9f78:	0e 94 2e 6d 	call	0xda5c	; 0xda5c <__divmodsi4>
    9f7c:	ca 01       	movw	r24, r20
    9f7e:	b9 01       	movw	r22, r18
    9f80:	6e 01       	movw	r12, r28
    9f82:	08 94       	sec
    9f84:	c1 1c       	adc	r12, r1
    9f86:	d1 1c       	adc	r13, r1
    9f88:	a6 01       	movw	r20, r12
    9f8a:	0e 94 c2 3f 	call	0x7f84	; 0x7f84 <ltoaz>
    9f8e:	80 e0       	ldi	r24, 0x00	; 0
    9f90:	61 e0       	ldi	r22, 0x01	; 1
    9f92:	ae 01       	movw	r20, r28
    9f94:	4a 5f       	subi	r20, 0xFA	; 250
    9f96:	5f 4f       	sbci	r21, 0xFF	; 255
    9f98:	0e 94 17 1f 	call	0x3e2e	; 0x3e2e <lcd_print>
    9f9c:	c8 01       	movw	r24, r16
    9f9e:	b7 01       	movw	r22, r14
    9fa0:	2c e3       	ldi	r18, 0x3C	; 60
    9fa2:	30 e0       	ldi	r19, 0x00	; 0
    9fa4:	40 e0       	ldi	r20, 0x00	; 0
    9fa6:	50 e0       	ldi	r21, 0x00	; 0
    9fa8:	0e 94 2e 6d 	call	0xda5c	; 0xda5c <__divmodsi4>
    9fac:	dc 01       	movw	r26, r24
    9fae:	cb 01       	movw	r24, r22
    9fb0:	b6 01       	movw	r22, r12
    9fb2:	0e 94 43 3f 	call	0x7e86	; 0x7e86 <ustoaz>
    9fb6:	8a e0       	ldi	r24, 0x0A	; 10
    9fb8:	61 e0       	ldi	r22, 0x01	; 1
    9fba:	ae 01       	movw	r20, r28
    9fbc:	4c 5f       	subi	r20, 0xFC	; 252
    9fbe:	5f 4f       	sbci	r21, 0xFF	; 255
    9fc0:	0e 94 17 1f 	call	0x3e2e	; 0x3e2e <lcd_print>
    9fc4:	60 96       	adiw	r28, 0x10	; 16
    9fc6:	e8 e0       	ldi	r30, 0x08	; 8
    9fc8:	0c 94 6f 6d 	jmp	0xdade	; 0xdade <__epilogue_restores__+0x14>

00009fcc <disp_time>:
    9fcc:	a4 e0       	ldi	r26, 0x04	; 4
    9fce:	b0 e0       	ldi	r27, 0x00	; 0
    9fd0:	ec ee       	ldi	r30, 0xEC	; 236
    9fd2:	ff e4       	ldi	r31, 0x4F	; 79
    9fd4:	0c 94 51 6d 	jmp	0xdaa2	; 0xdaa2 <__prologue_saves__+0x10>
    9fd8:	b8 2e       	mov	r11, r24
    9fda:	a6 2e       	mov	r10, r22
    9fdc:	6a 01       	movw	r12, r20
    9fde:	fa 01       	movw	r30, r20
    9fe0:	80 81       	ld	r24, Z
    9fe2:	7e 01       	movw	r14, r28
    9fe4:	08 94       	sec
    9fe6:	e1 1c       	adc	r14, r1
    9fe8:	f1 1c       	adc	r15, r1
    9fea:	b7 01       	movw	r22, r14
    9fec:	0e 94 27 3f 	call	0x7e4e	; 0x7e4e <uctoaz>
    9ff0:	8e 01       	movw	r16, r28
    9ff2:	0e 5f       	subi	r16, 0xFE	; 254
    9ff4:	1f 4f       	sbci	r17, 0xFF	; 255
    9ff6:	8b 2d       	mov	r24, r11
    9ff8:	6a 2d       	mov	r22, r10
    9ffa:	a8 01       	movw	r20, r16
    9ffc:	0e 94 17 1f 	call	0x3e2e	; 0x3e2e <lcd_print>
    a000:	8a e3       	ldi	r24, 0x3A	; 58
    a002:	0e 94 55 1e 	call	0x3caa	; 0x3caa <lcd_putch>
    a006:	f6 01       	movw	r30, r12
    a008:	81 81       	ldd	r24, Z+1	; 0x01
    a00a:	b7 01       	movw	r22, r14
    a00c:	0e 94 27 3f 	call	0x7e4e	; 0x7e4e <uctoaz>
    a010:	c8 01       	movw	r24, r16
    a012:	0e 94 66 1e 	call	0x3ccc	; 0x3ccc <lcd_putstr>
    a016:	8a e3       	ldi	r24, 0x3A	; 58
    a018:	0e 94 55 1e 	call	0x3caa	; 0x3caa <lcd_putch>
    a01c:	f6 01       	movw	r30, r12
    a01e:	82 81       	ldd	r24, Z+2	; 0x02
    a020:	b7 01       	movw	r22, r14
    a022:	0e 94 27 3f 	call	0x7e4e	; 0x7e4e <uctoaz>
    a026:	c8 01       	movw	r24, r16
    a028:	0e 94 66 1e 	call	0x3ccc	; 0x3ccc <lcd_putstr>
    a02c:	24 96       	adiw	r28, 0x04	; 4
    a02e:	ea e0       	ldi	r30, 0x0A	; 10
    a030:	0c 94 6d 6d 	jmp	0xdada	; 0xdada <__epilogue_restores__+0x10>

0000a034 <disp_remtime>:
    a034:	a3 e0       	ldi	r26, 0x03	; 3
    a036:	b0 e0       	ldi	r27, 0x00	; 0
    a038:	e0 e2       	ldi	r30, 0x20	; 32
    a03a:	f0 e5       	ldi	r31, 0x50	; 80
    a03c:	0c 94 54 6d 	jmp	0xdaa8	; 0xdaa8 <__prologue_saves__+0x16>
    a040:	d8 2e       	mov	r13, r24
    a042:	7a 01       	movw	r14, r20
    a044:	8b 01       	movw	r16, r22
    a046:	40 34       	cpi	r20, 0x40	; 64
    a048:	8e e7       	ldi	r24, 0x7E	; 126
    a04a:	58 07       	cpc	r21, r24
    a04c:	85 e0       	ldi	r24, 0x05	; 5
    a04e:	68 07       	cpc	r22, r24
    a050:	80 e0       	ldi	r24, 0x00	; 0
    a052:	78 07       	cpc	r23, r24
    a054:	38 f0       	brcs	.+14     	; 0xa064 <disp_remtime+0x30>
    a056:	88 e0       	ldi	r24, 0x08	; 8
    a058:	6d 2d       	mov	r22, r13
    a05a:	44 e3       	ldi	r20, 0x34	; 52
    a05c:	54 e1       	ldi	r21, 0x14	; 20
    a05e:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    a062:	2e c0       	rjmp	.+92     	; 0xa0c0 <disp_remtime+0x8c>
    a064:	cb 01       	movw	r24, r22
    a066:	ba 01       	movw	r22, r20
    a068:	20 e1       	ldi	r18, 0x10	; 16
    a06a:	3e e0       	ldi	r19, 0x0E	; 14
    a06c:	40 e0       	ldi	r20, 0x00	; 0
    a06e:	50 e0       	ldi	r21, 0x00	; 0
    a070:	0e 94 2e 6d 	call	0xda5c	; 0xda5c <__divmodsi4>
    a074:	29 83       	std	Y+1, r18	; 0x01
    a076:	c8 01       	movw	r24, r16
    a078:	b7 01       	movw	r22, r14
    a07a:	20 e1       	ldi	r18, 0x10	; 16
    a07c:	3e e0       	ldi	r19, 0x0E	; 14
    a07e:	40 e0       	ldi	r20, 0x00	; 0
    a080:	50 e0       	ldi	r21, 0x00	; 0
    a082:	0e 94 2e 6d 	call	0xda5c	; 0xda5c <__divmodsi4>
    a086:	16 2f       	mov	r17, r22
    a088:	07 2f       	mov	r16, r23
    a08a:	f8 2e       	mov	r15, r24
    a08c:	e9 2e       	mov	r14, r25
    a08e:	2c e3       	ldi	r18, 0x3C	; 60
    a090:	30 e0       	ldi	r19, 0x00	; 0
    a092:	40 e0       	ldi	r20, 0x00	; 0
    a094:	50 e0       	ldi	r21, 0x00	; 0
    a096:	0e 94 2e 6d 	call	0xda5c	; 0xda5c <__divmodsi4>
    a09a:	2a 83       	std	Y+2, r18	; 0x02
    a09c:	61 2f       	mov	r22, r17
    a09e:	70 2f       	mov	r23, r16
    a0a0:	8f 2d       	mov	r24, r15
    a0a2:	9e 2d       	mov	r25, r14
    a0a4:	2c e3       	ldi	r18, 0x3C	; 60
    a0a6:	30 e0       	ldi	r19, 0x00	; 0
    a0a8:	40 e0       	ldi	r20, 0x00	; 0
    a0aa:	50 e0       	ldi	r21, 0x00	; 0
    a0ac:	0e 94 2e 6d 	call	0xda5c	; 0xda5c <__divmodsi4>
    a0b0:	6b 83       	std	Y+3, r22	; 0x03
    a0b2:	88 e0       	ldi	r24, 0x08	; 8
    a0b4:	6d 2d       	mov	r22, r13
    a0b6:	ae 01       	movw	r20, r28
    a0b8:	4f 5f       	subi	r20, 0xFF	; 255
    a0ba:	5f 4f       	sbci	r21, 0xFF	; 255
    a0bc:	0e 94 e6 4f 	call	0x9fcc	; 0x9fcc <disp_time>
    a0c0:	23 96       	adiw	r28, 0x03	; 3
    a0c2:	e7 e0       	ldi	r30, 0x07	; 7
    a0c4:	0c 94 70 6d 	jmp	0xdae0	; 0xdae0 <__epilogue_restores__+0x16>

0000a0c8 <dhcpdisp>:
    a0c8:	80 91 3a 08 	lds	r24, 0x083A
    a0cc:	81 30       	cpi	r24, 0x01	; 1
    a0ce:	49 f4       	brne	.+18     	; 0xa0e2 <dhcpdisp+0x1a>
    a0d0:	40 91 33 08 	lds	r20, 0x0833
    a0d4:	50 91 34 08 	lds	r21, 0x0834
    a0d8:	60 91 35 08 	lds	r22, 0x0835
    a0dc:	70 91 36 08 	lds	r23, 0x0836
    a0e0:	1b c0       	rjmp	.+54     	; 0xa118 <dhcpdisp+0x50>
    a0e2:	87 31       	cpi	r24, 0x17	; 23
    a0e4:	e1 f4       	brne	.+56     	; 0xa11e <dhcpdisp+0x56>
    a0e6:	80 91 2f 08 	lds	r24, 0x082F
    a0ea:	90 91 30 08 	lds	r25, 0x0830
    a0ee:	a0 91 31 08 	lds	r26, 0x0831
    a0f2:	b0 91 32 08 	lds	r27, 0x0832
    a0f6:	8f 5f       	subi	r24, 0xFF	; 255
    a0f8:	9f 4f       	sbci	r25, 0xFF	; 255
    a0fa:	af 4f       	sbci	r26, 0xFF	; 255
    a0fc:	bf 4f       	sbci	r27, 0xFF	; 255
    a0fe:	19 f4       	brne	.+6      	; 0xa106 <dhcpdisp+0x3e>
    a100:	ea e1       	ldi	r30, 0x1A	; 26
    a102:	f1 e1       	ldi	r31, 0x11	; 17
    a104:	15 c0       	rjmp	.+42     	; 0xa130 <dhcpdisp+0x68>
    a106:	40 91 27 08 	lds	r20, 0x0827
    a10a:	50 91 28 08 	lds	r21, 0x0828
    a10e:	60 91 29 08 	lds	r22, 0x0829
    a112:	70 91 2a 08 	lds	r23, 0x082A
    a116:	81 e0       	ldi	r24, 0x01	; 1
    a118:	0e 94 1a 50 	call	0xa034	; 0xa034 <disp_remtime>
    a11c:	08 95       	ret
    a11e:	88 31       	cpi	r24, 0x18	; 24
    a120:	19 f4       	brne	.+6      	; 0xa128 <dhcpdisp+0x60>
    a122:	e8 e1       	ldi	r30, 0x18	; 24
    a124:	f1 e1       	ldi	r31, 0x11	; 17
    a126:	04 c0       	rjmp	.+8      	; 0xa130 <dhcpdisp+0x68>
    a128:	89 31       	cpi	r24, 0x19	; 25
    a12a:	39 f4       	brne	.+14     	; 0xa13a <dhcpdisp+0x72>
    a12c:	e6 e1       	ldi	r30, 0x16	; 22
    a12e:	f1 e1       	ldi	r31, 0x11	; 17
    a130:	45 91       	lpm	r20, Z+
    a132:	54 91       	lpm	r21, Z+
    a134:	88 e0       	ldi	r24, 0x08	; 8
    a136:	61 e0       	ldi	r22, 0x01	; 1
    a138:	04 c0       	rjmp	.+8      	; 0xa142 <dhcpdisp+0x7a>
    a13a:	88 e0       	ldi	r24, 0x08	; 8
    a13c:	61 e0       	ldi	r22, 0x01	; 1
    a13e:	4d e3       	ldi	r20, 0x3D	; 61
    a140:	54 e1       	ldi	r21, 0x14	; 20
    a142:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    a146:	08 95       	ret

0000a148 <disp_eventlog>:
    a148:	a3 e2       	ldi	r26, 0x23	; 35
    a14a:	b0 e0       	ldi	r27, 0x00	; 0
    a14c:	ea ea       	ldi	r30, 0xAA	; 170
    a14e:	f0 e5       	ldi	r31, 0x50	; 80
    a150:	0c 94 50 6d 	jmp	0xdaa0	; 0xdaa0 <__prologue_saves__+0xe>
    a154:	08 2f       	mov	r16, r24
    a156:	0e 94 a0 1e 	call	0x3d40	; 0x3d40 <lcd_cls>
    a15a:	09 30       	cpi	r16, 0x09	; 9
    a15c:	18 f4       	brcc	.+6      	; 0xa164 <disp_eventlog+0x1c>
    a15e:	40 2f       	mov	r20, r16
    a160:	4f 5c       	subi	r20, 0xCF	; 207
    a162:	02 c0       	rjmp	.+4      	; 0xa168 <disp_eventlog+0x20>
    a164:	40 2f       	mov	r20, r16
    a166:	49 50       	subi	r20, 0x09	; 9
    a168:	8f e0       	ldi	r24, 0x0F	; 15
    a16a:	60 e0       	ldi	r22, 0x00	; 0
    a16c:	0e 94 2a 1f 	call	0x3e54	; 0x3e54 <lcd_putcode>
    a170:	e0 2f       	mov	r30, r16
    a172:	f0 e0       	ldi	r31, 0x00	; 0
    a174:	a4 e0       	ldi	r26, 0x04	; 4
    a176:	ee 0f       	add	r30, r30
    a178:	ff 1f       	adc	r31, r31
    a17a:	aa 95       	dec	r26
    a17c:	e1 f7       	brne	.-8      	; 0xa176 <disp_eventlog+0x2e>
    a17e:	de 01       	movw	r26, r28
    a180:	14 96       	adiw	r26, 0x04	; 4
    a182:	e4 50       	subi	r30, 0x04	; 4
    a184:	f5 4f       	sbci	r31, 0xF5	; 245
    a186:	80 e1       	ldi	r24, 0x10	; 16
    a188:	01 90       	ld	r0, Z+
    a18a:	0d 92       	st	X+, r0
    a18c:	81 50       	subi	r24, 0x01	; 1
    a18e:	e1 f7       	brne	.-8      	; 0xa188 <disp_eventlog+0x40>
    a190:	db 84       	ldd	r13, Y+11	; 0x0b
    a192:	9e 81       	ldd	r25, Y+6	; 0x06
    a194:	cf 80       	ldd	r12, Y+7	; 0x07
    a196:	98 84       	ldd	r9, Y+8	; 0x08
    a198:	a9 84       	ldd	r10, Y+9	; 0x09
    a19a:	ba 84       	ldd	r11, Y+10	; 0x0a
    a19c:	8d 2d       	mov	r24, r13
    a19e:	81 50       	subi	r24, 0x01	; 1
    a1a0:	84 30       	cpi	r24, 0x04	; 4
    a1a2:	68 f1       	brcs	.+90     	; 0xa1fe <disp_eventlog+0xb6>
    a1a4:	8d 2d       	mov	r24, r13
    a1a6:	85 50       	subi	r24, 0x05	; 5
    a1a8:	8e 31       	cpi	r24, 0x1E	; 30
    a1aa:	48 f5       	brcc	.+82     	; 0xa1fe <disp_eventlog+0xb6>
    a1ac:	e4 e1       	ldi	r30, 0x14	; 20
    a1ae:	ee 2e       	mov	r14, r30
    a1b0:	f1 2c       	mov	r15, r1
    a1b2:	ec 0e       	add	r14, r28
    a1b4:	fd 1e       	adc	r15, r29
    a1b6:	89 2f       	mov	r24, r25
    a1b8:	b7 01       	movw	r22, r14
    a1ba:	0e 94 27 3f 	call	0x7e4e	; 0x7e4e <uctoaz>
    a1be:	8e 01       	movw	r16, r28
    a1c0:	0b 5e       	subi	r16, 0xEB	; 235
    a1c2:	1f 4f       	sbci	r17, 0xFF	; 255
    a1c4:	80 e0       	ldi	r24, 0x00	; 0
    a1c6:	60 e0       	ldi	r22, 0x00	; 0
    a1c8:	a8 01       	movw	r20, r16
    a1ca:	0e 94 17 1f 	call	0x3e2e	; 0x3e2e <lcd_print>
    a1ce:	8f e2       	ldi	r24, 0x2F	; 47
    a1d0:	0e 94 55 1e 	call	0x3caa	; 0x3caa <lcd_putch>
    a1d4:	8c 2d       	mov	r24, r12
    a1d6:	b7 01       	movw	r22, r14
    a1d8:	0e 94 27 3f 	call	0x7e4e	; 0x7e4e <uctoaz>
    a1dc:	c8 01       	movw	r24, r16
    a1de:	0e 94 66 1e 	call	0x3ccc	; 0x3ccc <lcd_putstr>
    a1e2:	80 e2       	ldi	r24, 0x20	; 32
    a1e4:	0e 94 55 1e 	call	0x3caa	; 0x3caa <lcd_putch>
    a1e8:	99 82       	std	Y+1, r9	; 0x01
    a1ea:	aa 82       	std	Y+2, r10	; 0x02
    a1ec:	bb 82       	std	Y+3, r11	; 0x03
    a1ee:	86 e0       	ldi	r24, 0x06	; 6
    a1f0:	60 e0       	ldi	r22, 0x00	; 0
    a1f2:	ae 01       	movw	r20, r28
    a1f4:	4f 5f       	subi	r20, 0xFF	; 255
    a1f6:	5f 4f       	sbci	r21, 0xFF	; 255
    a1f8:	0e 94 e6 4f 	call	0x9fcc	; 0x9fcc <disp_time>
    a1fc:	06 c0       	rjmp	.+12     	; 0xa20a <disp_eventlog+0xc2>
    a1fe:	80 e0       	ldi	r24, 0x00	; 0
    a200:	60 e0       	ldi	r22, 0x00	; 0
    a202:	44 e0       	ldi	r20, 0x04	; 4
    a204:	54 e1       	ldi	r21, 0x14	; 20
    a206:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    a20a:	ed 2d       	mov	r30, r13
    a20c:	f0 e0       	ldi	r31, 0x00	; 0
    a20e:	ee 0f       	add	r30, r30
    a210:	ff 1f       	adc	r31, r31
    a212:	ec 54       	subi	r30, 0x4C	; 76
    a214:	fc 4e       	sbci	r31, 0xEC	; 236
    a216:	45 91       	lpm	r20, Z+
    a218:	54 91       	lpm	r21, Z+
    a21a:	80 e0       	ldi	r24, 0x00	; 0
    a21c:	61 e0       	ldi	r22, 0x01	; 1
    a21e:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    a222:	a3 96       	adiw	r28, 0x23	; 35
    a224:	eb e0       	ldi	r30, 0x0B	; 11
    a226:	0c 94 6c 6d 	jmp	0xdad8	; 0xdad8 <__epilogue_restores__+0xe>

0000a22a <disp_callog>:
    a22a:	a3 e2       	ldi	r26, 0x23	; 35
    a22c:	b0 e0       	ldi	r27, 0x00	; 0
    a22e:	eb e1       	ldi	r30, 0x1B	; 27
    a230:	f1 e5       	ldi	r31, 0x51	; 81
    a232:	0c 94 4f 6d 	jmp	0xda9e	; 0xda9e <__prologue_saves__+0xc>
    a236:	18 2f       	mov	r17, r24
    a238:	0e 94 a0 1e 	call	0x3d40	; 0x3d40 <lcd_cls>
    a23c:	8b e0       	ldi	r24, 0x0B	; 11
    a23e:	0e 94 9b 4f 	call	0x9f36	; 0x9f36 <disp_message1>
    a242:	e1 2f       	mov	r30, r17
    a244:	f0 e0       	ldi	r31, 0x00	; 0
    a246:	04 e0       	ldi	r16, 0x04	; 4
    a248:	ee 0f       	add	r30, r30
    a24a:	ff 1f       	adc	r31, r31
    a24c:	0a 95       	dec	r16
    a24e:	e1 f7       	brne	.-8      	; 0xa248 <disp_callog+0x1e>
    a250:	de 01       	movw	r26, r28
    a252:	14 96       	adiw	r26, 0x04	; 4
    a254:	e4 50       	subi	r30, 0x04	; 4
    a256:	f6 4f       	sbci	r31, 0xF6	; 246
    a258:	80 e1       	ldi	r24, 0x10	; 16
    a25a:	01 90       	ld	r0, Z+
    a25c:	0d 92       	st	X+, r0
    a25e:	81 50       	subi	r24, 0x01	; 1
    a260:	e1 f7       	brne	.-8      	; 0xa25a <disp_callog+0x30>
    a262:	db 84       	ldd	r13, Y+11	; 0x0b
    a264:	ce 80       	ldd	r12, Y+6	; 0x06
    a266:	bf 80       	ldd	r11, Y+7	; 0x07
    a268:	88 84       	ldd	r8, Y+8	; 0x08
    a26a:	99 84       	ldd	r9, Y+9	; 0x09
    a26c:	aa 84       	ldd	r10, Y+10	; 0x0a
    a26e:	b4 e1       	ldi	r27, 0x14	; 20
    a270:	eb 2e       	mov	r14, r27
    a272:	f1 2c       	mov	r15, r1
    a274:	ec 0e       	add	r14, r28
    a276:	fd 1e       	adc	r15, r29
    a278:	81 2f       	mov	r24, r17
    a27a:	8f 5f       	subi	r24, 0xFF	; 255
    a27c:	b7 01       	movw	r22, r14
    a27e:	0e 94 27 3f 	call	0x7e4e	; 0x7e4e <uctoaz>
    a282:	8e 01       	movw	r16, r28
    a284:	0b 5e       	subi	r16, 0xEB	; 235
    a286:	1f 4f       	sbci	r17, 0xFF	; 255
    a288:	8e e0       	ldi	r24, 0x0E	; 14
    a28a:	60 e0       	ldi	r22, 0x00	; 0
    a28c:	a8 01       	movw	r20, r16
    a28e:	0e 94 17 1f 	call	0x3e2e	; 0x3e2e <lcd_print>
    a292:	80 e0       	ldi	r24, 0x00	; 0
    a294:	61 e0       	ldi	r22, 0x01	; 1
    a296:	0e 94 ae 1e 	call	0x3d5c	; 0x3d5c <lcd_locate>
    a29a:	8d 2d       	mov	r24, r13
    a29c:	81 50       	subi	r24, 0x01	; 1
    a29e:	82 30       	cpi	r24, 0x02	; 2
    a2a0:	68 f5       	brcc	.+90     	; 0xa2fc <disp_callog+0xd2>
    a2a2:	8c 2d       	mov	r24, r12
    a2a4:	b7 01       	movw	r22, r14
    a2a6:	0e 94 27 3f 	call	0x7e4e	; 0x7e4e <uctoaz>
    a2aa:	c8 01       	movw	r24, r16
    a2ac:	0e 94 66 1e 	call	0x3ccc	; 0x3ccc <lcd_putstr>
    a2b0:	8f e2       	ldi	r24, 0x2F	; 47
    a2b2:	0e 94 55 1e 	call	0x3caa	; 0x3caa <lcd_putch>
    a2b6:	8b 2d       	mov	r24, r11
    a2b8:	b7 01       	movw	r22, r14
    a2ba:	0e 94 27 3f 	call	0x7e4e	; 0x7e4e <uctoaz>
    a2be:	c8 01       	movw	r24, r16
    a2c0:	0e 94 66 1e 	call	0x3ccc	; 0x3ccc <lcd_putstr>
    a2c4:	80 e2       	ldi	r24, 0x20	; 32
    a2c6:	0e 94 55 1e 	call	0x3caa	; 0x3caa <lcd_putch>
    a2ca:	89 82       	std	Y+1, r8	; 0x01
    a2cc:	9a 82       	std	Y+2, r9	; 0x02
    a2ce:	ab 82       	std	Y+3, r10	; 0x03
    a2d0:	86 e0       	ldi	r24, 0x06	; 6
    a2d2:	61 e0       	ldi	r22, 0x01	; 1
    a2d4:	ae 01       	movw	r20, r28
    a2d6:	4f 5f       	subi	r20, 0xFF	; 255
    a2d8:	5f 4f       	sbci	r21, 0xFF	; 255
    a2da:	0e 94 e6 4f 	call	0x9fcc	; 0x9fcc <disp_time>
    a2de:	80 e2       	ldi	r24, 0x20	; 32
    a2e0:	0e 94 55 1e 	call	0x3caa	; 0x3caa <lcd_putch>
    a2e4:	82 e0       	ldi	r24, 0x02	; 2
    a2e6:	d8 16       	cp	r13, r24
    a2e8:	11 f4       	brne	.+4      	; 0xa2ee <disp_callog+0xc4>
    a2ea:	82 e4       	ldi	r24, 0x42	; 66
    a2ec:	04 c0       	rjmp	.+8      	; 0xa2f6 <disp_callog+0xcc>
    a2ee:	81 e0       	ldi	r24, 0x01	; 1
    a2f0:	d8 16       	cp	r13, r24
    a2f2:	51 f4       	brne	.+20     	; 0xa308 <disp_callog+0xde>
    a2f4:	82 e5       	ldi	r24, 0x52	; 82
    a2f6:	0e 94 55 1e 	call	0x3caa	; 0x3caa <lcd_putch>
    a2fa:	06 c0       	rjmp	.+12     	; 0xa308 <disp_callog+0xde>
    a2fc:	80 e0       	ldi	r24, 0x00	; 0
    a2fe:	61 e0       	ldi	r22, 0x01	; 1
    a300:	44 e0       	ldi	r20, 0x04	; 4
    a302:	54 e1       	ldi	r21, 0x14	; 20
    a304:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    a308:	a3 96       	adiw	r28, 0x23	; 35
    a30a:	ec e0       	ldi	r30, 0x0C	; 12
    a30c:	0c 94 6b 6d 	jmp	0xdad6	; 0xdad6 <__epilogue_restores__+0xc>

0000a310 <disp_nowtime>:
    a310:	a3 e1       	ldi	r26, 0x13	; 19
    a312:	b0 e0       	ldi	r27, 0x00	; 0
    a314:	ee e8       	ldi	r30, 0x8E	; 142
    a316:	f1 e5       	ldi	r31, 0x51	; 81
    a318:	0c 94 4d 6d 	jmp	0xda9a	; 0xda9a <__prologue_saves__+0x8>
    a31c:	80 91 e7 09 	lds	r24, 0x09E7
    a320:	e8 2f       	mov	r30, r24
    a322:	f0 e0       	ldi	r31, 0x00	; 0
    a324:	ee 0f       	add	r30, r30
    a326:	ff 1f       	adc	r31, r31
    a328:	ec 5c       	subi	r30, 0xCC	; 204
    a32a:	fe 4e       	sbci	r31, 0xEE	; 238
    a32c:	65 91       	lpm	r22, Z+
    a32e:	74 91       	lpm	r23, Z+
    a330:	ce 01       	movw	r24, r28
    a332:	08 96       	adiw	r24, 0x08	; 8
    a334:	0e 94 b9 6d 	call	0xdb72	; 0xdb72 <strcpy_P>
    a338:	60 90 4b 01 	lds	r6, 0x014B
    a33c:	70 90 4d 01 	lds	r7, 0x014D
    a340:	80 90 4f 01 	lds	r8, 0x014F
    a344:	a0 90 57 01 	lds	r10, 0x0157
    a348:	b0 90 58 01 	lds	r11, 0x0158
    a34c:	00 91 53 01 	lds	r16, 0x0153
    a350:	10 91 54 01 	lds	r17, 0x0154
    a354:	0f 5f       	subi	r16, 0xFF	; 255
    a356:	1f 4f       	sbci	r17, 0xFF	; 255
    a358:	90 90 51 01 	lds	r9, 0x0151
    a35c:	80 91 55 01 	lds	r24, 0x0155
    a360:	90 91 56 01 	lds	r25, 0x0156
    a364:	2c e0       	ldi	r18, 0x0C	; 12
    a366:	c2 2e       	mov	r12, r18
    a368:	d1 2c       	mov	r13, r1
    a36a:	cc 0e       	add	r12, r28
    a36c:	dd 1e       	adc	r13, r29
    a36e:	84 59       	subi	r24, 0x94	; 148
    a370:	98 4f       	sbci	r25, 0xF8	; 248
    a372:	b6 01       	movw	r22, r12
    a374:	0e 94 43 3f 	call	0x7e86	; 0x7e86 <ustoaz>
    a378:	9d e0       	ldi	r25, 0x0D	; 13
    a37a:	e9 2e       	mov	r14, r25
    a37c:	f1 2c       	mov	r15, r1
    a37e:	ec 0e       	add	r14, r28
    a380:	fd 1e       	adc	r15, r29
    a382:	80 e0       	ldi	r24, 0x00	; 0
    a384:	60 e0       	ldi	r22, 0x00	; 0
    a386:	a7 01       	movw	r20, r14
    a388:	0e 94 17 1f 	call	0x3e2e	; 0x3e2e <lcd_print>
    a38c:	8f e2       	ldi	r24, 0x2F	; 47
    a38e:	0e 94 55 1e 	call	0x3caa	; 0x3caa <lcd_putch>
    a392:	80 2f       	mov	r24, r16
    a394:	b6 01       	movw	r22, r12
    a396:	0e 94 27 3f 	call	0x7e4e	; 0x7e4e <uctoaz>
    a39a:	c7 01       	movw	r24, r14
    a39c:	0e 94 66 1e 	call	0x3ccc	; 0x3ccc <lcd_putstr>
    a3a0:	8f e2       	ldi	r24, 0x2F	; 47
    a3a2:	0e 94 55 1e 	call	0x3caa	; 0x3caa <lcd_putch>
    a3a6:	89 2d       	mov	r24, r9
    a3a8:	b6 01       	movw	r22, r12
    a3aa:	0e 94 27 3f 	call	0x7e4e	; 0x7e4e <uctoaz>
    a3ae:	c7 01       	movw	r24, r14
    a3b0:	0e 94 66 1e 	call	0x3ccc	; 0x3ccc <lcd_putstr>
    a3b4:	80 e2       	ldi	r24, 0x20	; 32
    a3b6:	0e 94 55 1e 	call	0x3caa	; 0x3caa <lcd_putch>
    a3ba:	8e 01       	movw	r16, r28
    a3bc:	0c 5f       	subi	r16, 0xFC	; 252
    a3be:	1f 4f       	sbci	r17, 0xFF	; 255
    a3c0:	aa 0c       	add	r10, r10
    a3c2:	bb 1c       	adc	r11, r11
    a3c4:	aa 0c       	add	r10, r10
    a3c6:	bb 1c       	adc	r11, r11
    a3c8:	83 e2       	ldi	r24, 0x23	; 35
    a3ca:	9f e0       	ldi	r25, 0x0F	; 15
    a3cc:	a8 0e       	add	r10, r24
    a3ce:	b9 1e       	adc	r11, r25
    a3d0:	c8 01       	movw	r24, r16
    a3d2:	b5 01       	movw	r22, r10
    a3d4:	0e 94 b9 6d 	call	0xdb72	; 0xdb72 <strcpy_P>
    a3d8:	c8 01       	movw	r24, r16
    a3da:	0e 94 66 1e 	call	0x3ccc	; 0x3ccc <lcd_putstr>
    a3de:	80 e2       	ldi	r24, 0x20	; 32
    a3e0:	0e 94 55 1e 	call	0x3caa	; 0x3caa <lcd_putch>
    a3e4:	80 91 c9 09 	lds	r24, 0x09C9
    a3e8:	88 23       	and	r24, r24
    a3ea:	91 f4       	brne	.+36     	; 0xa410 <disp_nowtime+0x100>
    a3ec:	80 91 07 01 	lds	r24, 0x0107
    a3f0:	80 3c       	cpi	r24, 0xC0	; 192
    a3f2:	11 f4       	brne	.+4      	; 0xa3f8 <disp_nowtime+0xe8>
    a3f4:	81 e4       	ldi	r24, 0x41	; 65
    a3f6:	1d c0       	rjmp	.+58     	; 0xa432 <disp_nowtime+0x122>
    a3f8:	80 34       	cpi	r24, 0x40	; 64
    a3fa:	11 f4       	brne	.+4      	; 0xa400 <disp_nowtime+0xf0>
    a3fc:	89 e4       	ldi	r24, 0x49	; 73
    a3fe:	19 c0       	rjmp	.+50     	; 0xa432 <disp_nowtime+0x122>
    a400:	80 38       	cpi	r24, 0x80	; 128
    a402:	11 f4       	brne	.+4      	; 0xa408 <disp_nowtime+0xf8>
    a404:	84 e4       	ldi	r24, 0x44	; 68
    a406:	15 c0       	rjmp	.+42     	; 0xa432 <disp_nowtime+0x122>
    a408:	80 91 d2 07 	lds	r24, 0x07D2
    a40c:	80 5d       	subi	r24, 0xD0	; 208
    a40e:	11 c0       	rjmp	.+34     	; 0xa432 <disp_nowtime+0x122>
    a410:	81 30       	cpi	r24, 0x01	; 1
    a412:	11 f4       	brne	.+4      	; 0xa418 <disp_nowtime+0x108>
    a414:	82 e5       	ldi	r24, 0x52	; 82
    a416:	0d c0       	rjmp	.+26     	; 0xa432 <disp_nowtime+0x122>
    a418:	82 30       	cpi	r24, 0x02	; 2
    a41a:	11 f4       	brne	.+4      	; 0xa420 <disp_nowtime+0x110>
    a41c:	86 e4       	ldi	r24, 0x46	; 70
    a41e:	09 c0       	rjmp	.+18     	; 0xa432 <disp_nowtime+0x122>
    a420:	83 30       	cpi	r24, 0x03	; 3
    a422:	11 f4       	brne	.+4      	; 0xa428 <disp_nowtime+0x118>
    a424:	8d e4       	ldi	r24, 0x4D	; 77
    a426:	05 c0       	rjmp	.+10     	; 0xa432 <disp_nowtime+0x122>
    a428:	84 30       	cpi	r24, 0x04	; 4
    a42a:	11 f0       	breq	.+4      	; 0xa430 <disp_nowtime+0x120>
    a42c:	8a e4       	ldi	r24, 0x4A	; 74
    a42e:	01 c0       	rjmp	.+2      	; 0xa432 <disp_nowtime+0x122>
    a430:	87 e4       	ldi	r24, 0x47	; 71
    a432:	0e 94 55 1e 	call	0x3caa	; 0x3caa <lcd_putch>
    a436:	89 82       	std	Y+1, r8	; 0x01
    a438:	7a 82       	std	Y+2, r7	; 0x02
    a43a:	6b 82       	std	Y+3, r6	; 0x03
    a43c:	80 e0       	ldi	r24, 0x00	; 0
    a43e:	61 e0       	ldi	r22, 0x01	; 1
    a440:	ae 01       	movw	r20, r28
    a442:	4f 5f       	subi	r20, 0xFF	; 255
    a444:	5f 4f       	sbci	r21, 0xFF	; 255
    a446:	0e 94 e6 4f 	call	0x9fcc	; 0x9fcc <disp_time>
    a44a:	80 e2       	ldi	r24, 0x20	; 32
    a44c:	0e 94 55 1e 	call	0x3caa	; 0x3caa <lcd_putch>
    a450:	ce 01       	movw	r24, r28
    a452:	08 96       	adiw	r24, 0x08	; 8
    a454:	0e 94 66 1e 	call	0x3ccc	; 0x3ccc <lcd_putstr>
    a458:	80 e2       	ldi	r24, 0x20	; 32
    a45a:	0e 94 55 1e 	call	0x3caa	; 0x3caa <lcd_putch>
    a45e:	80 91 c9 09 	lds	r24, 0x09C9
    a462:	82 30       	cpi	r24, 0x02	; 2
    a464:	49 f4       	brne	.+18     	; 0xa478 <disp_nowtime+0x168>
    a466:	80 91 cb 09 	lds	r24, 0x09CB
    a46a:	88 23       	and	r24, r24
    a46c:	11 f4       	brne	.+4      	; 0xa472 <disp_nowtime+0x162>
    a46e:	84 e5       	ldi	r24, 0x54	; 84
    a470:	11 c0       	rjmp	.+34     	; 0xa494 <disp_nowtime+0x184>
    a472:	81 30       	cpi	r24, 0x01	; 1
    a474:	71 f4       	brne	.+28     	; 0xa492 <disp_nowtime+0x182>
    a476:	0b c0       	rjmp	.+22     	; 0xa48e <disp_nowtime+0x17e>
    a478:	83 50       	subi	r24, 0x03	; 3
    a47a:	82 30       	cpi	r24, 0x02	; 2
    a47c:	c8 f4       	brcc	.+50     	; 0xa4b0 <disp_nowtime+0x1a0>
    a47e:	80 91 cb 09 	lds	r24, 0x09CB
    a482:	82 30       	cpi	r24, 0x02	; 2
    a484:	11 f4       	brne	.+4      	; 0xa48a <disp_nowtime+0x17a>
    a486:	82 e5       	ldi	r24, 0x52	; 82
    a488:	05 c0       	rjmp	.+10     	; 0xa494 <disp_nowtime+0x184>
    a48a:	83 30       	cpi	r24, 0x03	; 3
    a48c:	11 f4       	brne	.+4      	; 0xa492 <disp_nowtime+0x182>
    a48e:	8a e5       	ldi	r24, 0x5A	; 90
    a490:	01 c0       	rjmp	.+2      	; 0xa494 <disp_nowtime+0x184>
    a492:	85 e4       	ldi	r24, 0x45	; 69
    a494:	0e 94 55 1e 	call	0x3caa	; 0x3caa <lcd_putch>
    a498:	80 91 da 09 	lds	r24, 0x09DA
    a49c:	90 91 db 09 	lds	r25, 0x09DB
    a4a0:	01 97       	sbiw	r24, 0x01	; 1
    a4a2:	11 f4       	brne	.+4      	; 0xa4a8 <disp_nowtime+0x198>
    a4a4:	82 e5       	ldi	r24, 0x52	; 82
    a4a6:	01 c0       	rjmp	.+2      	; 0xa4aa <disp_nowtime+0x19a>
    a4a8:	86 e4       	ldi	r24, 0x46	; 70
    a4aa:	0e 94 55 1e 	call	0x3caa	; 0x3caa <lcd_putch>
    a4ae:	0b c0       	rjmp	.+22     	; 0xa4c6 <disp_nowtime+0x1b6>
    a4b0:	80 91 08 01 	lds	r24, 0x0108
    a4b4:	be 01       	movw	r22, r28
    a4b6:	6c 5f       	subi	r22, 0xFC	; 252
    a4b8:	7f 4f       	sbci	r23, 0xFF	; 255
    a4ba:	0e 94 27 3f 	call	0x7e4e	; 0x7e4e <uctoaz>
    a4be:	ce 01       	movw	r24, r28
    a4c0:	05 96       	adiw	r24, 0x05	; 5
    a4c2:	0e 94 66 1e 	call	0x3ccc	; 0x3ccc <lcd_putstr>
    a4c6:	e0 91 ac 01 	lds	r30, 0x01AC
    a4ca:	f0 e0       	ldi	r31, 0x00	; 0
    a4cc:	e1 5c       	subi	r30, 0xC1	; 193
    a4ce:	f0 4f       	sbci	r31, 0xF0	; 240
    a4d0:	e4 91       	lpm	r30, Z+
    a4d2:	8e 2f       	mov	r24, r30
    a4d4:	0e 94 55 1e 	call	0x3caa	; 0x3caa <lcd_putch>
    a4d8:	63 96       	adiw	r28, 0x13	; 19
    a4da:	ee e0       	ldi	r30, 0x0E	; 14
    a4dc:	0c 94 69 6d 	jmp	0xdad2	; 0xdad2 <__epilogue_restores__+0x8>

0000a4e0 <redraw>:
    a4e0:	a0 e1       	ldi	r26, 0x10	; 16
    a4e2:	b0 e0       	ldi	r27, 0x00	; 0
    a4e4:	e6 e7       	ldi	r30, 0x76	; 118
    a4e6:	f2 e5       	ldi	r31, 0x52	; 82
    a4e8:	0c 94 53 6d 	jmp	0xdaa6	; 0xdaa6 <__prologue_saves__+0x14>
    a4ec:	00 91 c7 09 	lds	r16, 0x09C7
    a4f0:	0e 94 a0 1e 	call	0x3d40	; 0x3d40 <lcd_cls>
    a4f4:	00 23       	and	r16, r16
    a4f6:	19 f4       	brne	.+6      	; 0xa4fe <redraw+0x1e>
    a4f8:	0e 94 88 51 	call	0xa310	; 0xa310 <disp_nowtime>
    a4fc:	db c0       	rjmp	.+438    	; 0xa6b4 <redraw+0x1d4>
    a4fe:	01 30       	cpi	r16, 0x01	; 1
    a500:	19 f5       	brne	.+70     	; 0xa548 <redraw+0x68>
    a502:	80 e0       	ldi	r24, 0x00	; 0
    a504:	60 e0       	ldi	r22, 0x00	; 0
    a506:	41 e4       	ldi	r20, 0x41	; 65
    a508:	0e 94 2a 1f 	call	0x3e54	; 0x3e54 <lcd_putcode>
    a50c:	60 91 0b 05 	lds	r22, 0x050B
    a510:	70 91 0c 05 	lds	r23, 0x050C
    a514:	80 91 0d 05 	lds	r24, 0x050D
    a518:	90 91 0e 05 	lds	r25, 0x050E
    a51c:	8e 01       	movw	r16, r28
    a51e:	0f 5f       	subi	r16, 0xFF	; 255
    a520:	1f 4f       	sbci	r17, 0xFF	; 255
    a522:	a8 01       	movw	r20, r16
    a524:	0e 94 a5 41 	call	0x834a	; 0x834a <long2ipstr>
    a528:	0e 94 66 1e 	call	0x3ccc	; 0x3ccc <lcd_putstr>
    a52c:	80 e0       	ldi	r24, 0x00	; 0
    a52e:	61 e0       	ldi	r22, 0x01	; 1
    a530:	4d e4       	ldi	r20, 0x4D	; 77
    a532:	0e 94 2a 1f 	call	0x3e54	; 0x3e54 <lcd_putcode>
    a536:	60 91 0f 05 	lds	r22, 0x050F
    a53a:	70 91 10 05 	lds	r23, 0x0510
    a53e:	80 91 11 05 	lds	r24, 0x0511
    a542:	90 91 12 05 	lds	r25, 0x0512
    a546:	24 c0       	rjmp	.+72     	; 0xa590 <redraw+0xb0>
    a548:	02 30       	cpi	r16, 0x02	; 2
    a54a:	41 f5       	brne	.+80     	; 0xa59c <redraw+0xbc>
    a54c:	80 e0       	ldi	r24, 0x00	; 0
    a54e:	60 e0       	ldi	r22, 0x00	; 0
    a550:	47 e4       	ldi	r20, 0x47	; 71
    a552:	0e 94 2a 1f 	call	0x3e54	; 0x3e54 <lcd_putcode>
    a556:	60 91 13 05 	lds	r22, 0x0513
    a55a:	70 91 14 05 	lds	r23, 0x0514
    a55e:	80 91 15 05 	lds	r24, 0x0515
    a562:	90 91 16 05 	lds	r25, 0x0516
    a566:	8e 01       	movw	r16, r28
    a568:	0f 5f       	subi	r16, 0xFF	; 255
    a56a:	1f 4f       	sbci	r17, 0xFF	; 255
    a56c:	a8 01       	movw	r20, r16
    a56e:	0e 94 a5 41 	call	0x834a	; 0x834a <long2ipstr>
    a572:	0e 94 66 1e 	call	0x3ccc	; 0x3ccc <lcd_putstr>
    a576:	80 e0       	ldi	r24, 0x00	; 0
    a578:	61 e0       	ldi	r22, 0x01	; 1
    a57a:	44 e4       	ldi	r20, 0x44	; 68
    a57c:	0e 94 2a 1f 	call	0x3e54	; 0x3e54 <lcd_putcode>
    a580:	60 91 c3 09 	lds	r22, 0x09C3
    a584:	70 91 c4 09 	lds	r23, 0x09C4
    a588:	80 91 c5 09 	lds	r24, 0x09C5
    a58c:	90 91 c6 09 	lds	r25, 0x09C6
    a590:	a8 01       	movw	r20, r16
    a592:	0e 94 a5 41 	call	0x834a	; 0x834a <long2ipstr>
    a596:	0e 94 66 1e 	call	0x3ccc	; 0x3ccc <lcd_putstr>
    a59a:	8c c0       	rjmp	.+280    	; 0xa6b4 <redraw+0x1d4>
    a59c:	03 30       	cpi	r16, 0x03	; 3
    a59e:	79 f5       	brne	.+94     	; 0xa5fe <redraw+0x11e>
    a5a0:	81 e0       	ldi	r24, 0x01	; 1
    a5a2:	0e 94 9b 4f 	call	0x9f36	; 0x9f36 <disp_message1>
    a5a6:	80 91 63 04 	lds	r24, 0x0463
    a5aa:	6a e0       	ldi	r22, 0x0A	; 10
    a5ac:	0e 94 ec 6c 	call	0xd9d8	; 0xd9d8 <__udivmodqi4>
    a5b0:	80 5d       	subi	r24, 0xD0	; 208
    a5b2:	0e 94 55 1e 	call	0x3caa	; 0x3caa <lcd_putch>
    a5b6:	80 91 63 04 	lds	r24, 0x0463
    a5ba:	6a e0       	ldi	r22, 0x0A	; 10
    a5bc:	0e 94 ec 6c 	call	0xd9d8	; 0xd9d8 <__udivmodqi4>
    a5c0:	89 2f       	mov	r24, r25
    a5c2:	80 5d       	subi	r24, 0xD0	; 208
    a5c4:	0e 94 55 1e 	call	0x3caa	; 0x3caa <lcd_putch>
    a5c8:	83 e0       	ldi	r24, 0x03	; 3
    a5ca:	0e 94 8e 4f 	call	0x9f1c	; 0x9f1c <disp_message2>
    a5ce:	04 e0       	ldi	r16, 0x04	; 4
    a5d0:	4c e8       	ldi	r20, 0x8C	; 140
    a5d2:	e4 2e       	mov	r14, r20
    a5d4:	44 e0       	ldi	r20, 0x04	; 4
    a5d6:	f4 2e       	mov	r15, r20
    a5d8:	6e 01       	movw	r12, r28
    a5da:	08 94       	sec
    a5dc:	c1 1c       	adc	r12, r1
    a5de:	d1 1c       	adc	r13, r1
    a5e0:	f7 01       	movw	r30, r14
    a5e2:	81 91       	ld	r24, Z+
    a5e4:	7f 01       	movw	r14, r30
    a5e6:	b6 01       	movw	r22, r12
    a5e8:	0e 94 97 3e 	call	0x7d2e	; 0x7d2e <uctoahz>
    a5ec:	ac 01       	movw	r20, r24
    a5ee:	80 2f       	mov	r24, r16
    a5f0:	61 e0       	ldi	r22, 0x01	; 1
    a5f2:	0e 94 17 1f 	call	0x3e2e	; 0x3e2e <lcd_print>
    a5f6:	0e 5f       	subi	r16, 0xFE	; 254
    a5f8:	00 31       	cpi	r16, 0x10	; 16
    a5fa:	91 f7       	brne	.-28     	; 0xa5e0 <redraw+0x100>
    a5fc:	5b c0       	rjmp	.+182    	; 0xa6b4 <redraw+0x1d4>
    a5fe:	04 30       	cpi	r16, 0x04	; 4
    a600:	61 f4       	brne	.+24     	; 0xa61a <redraw+0x13a>
    a602:	80 e0       	ldi	r24, 0x00	; 0
    a604:	60 e0       	ldi	r22, 0x00	; 0
    a606:	43 eb       	ldi	r20, 0xB3	; 179
    a608:	59 e0       	ldi	r21, 0x09	; 9
    a60a:	0e 94 17 1f 	call	0x3e2e	; 0x3e2e <lcd_print>
    a60e:	84 e0       	ldi	r24, 0x04	; 4
    a610:	0e 94 8e 4f 	call	0x9f1c	; 0x9f1c <disp_message2>
    a614:	0e 94 64 50 	call	0xa0c8	; 0xa0c8 <dhcpdisp>
    a618:	4d c0       	rjmp	.+154    	; 0xa6b4 <redraw+0x1d4>
    a61a:	05 30       	cpi	r16, 0x05	; 5
    a61c:	a9 f5       	brne	.+106    	; 0xa688 <redraw+0x1a8>
    a61e:	86 e0       	ldi	r24, 0x06	; 6
    a620:	0e 94 9b 4f 	call	0x9f36	; 0x9f36 <disp_message1>
    a624:	80 91 c9 09 	lds	r24, 0x09C9
    a628:	82 30       	cpi	r24, 0x02	; 2
    a62a:	51 f0       	breq	.+20     	; 0xa640 <redraw+0x160>
    a62c:	83 30       	cpi	r24, 0x03	; 3
    a62e:	41 f0       	breq	.+16     	; 0xa640 <redraw+0x160>
    a630:	84 30       	cpi	r24, 0x04	; 4
    a632:	31 f0       	breq	.+12     	; 0xa640 <redraw+0x160>
    a634:	81 30       	cpi	r24, 0x01	; 1
    a636:	21 f0       	breq	.+8      	; 0xa640 <redraw+0x160>
    a638:	80 91 e8 09 	lds	r24, 0x09E8
    a63c:	88 23       	and	r24, r24
    a63e:	91 f1       	breq	.+100    	; 0xa6a4 <redraw+0x1c4>
    a640:	88 e0       	ldi	r24, 0x08	; 8
    a642:	60 e0       	ldi	r22, 0x00	; 0
    a644:	4d e3       	ldi	r20, 0x3D	; 61
    a646:	54 e1       	ldi	r21, 0x14	; 20
    a648:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    a64c:	85 e0       	ldi	r24, 0x05	; 5
    a64e:	0e 94 8e 4f 	call	0x9f1c	; 0x9f1c <disp_message2>
    a652:	80 91 f8 07 	lds	r24, 0x07F8
    a656:	90 91 f9 07 	lds	r25, 0x07F9
    a65a:	89 2b       	or	r24, r25
    a65c:	71 f0       	breq	.+28     	; 0xa67a <redraw+0x19a>
    a65e:	80 91 e9 09 	lds	r24, 0x09E9
    a662:	90 91 ea 09 	lds	r25, 0x09EA
    a666:	01 97       	sbiw	r24, 0x01	; 1
    a668:	41 f4       	brne	.+16     	; 0xa67a <redraw+0x19a>
    a66a:	0e 94 08 12 	call	0x2410	; 0x2410 <calc_bcastremtime>
    a66e:	ab 01       	movw	r20, r22
    a670:	bc 01       	movw	r22, r24
    a672:	81 e0       	ldi	r24, 0x01	; 1
    a674:	0e 94 1a 50 	call	0xa034	; 0xa034 <disp_remtime>
    a678:	1d c0       	rjmp	.+58     	; 0xa6b4 <redraw+0x1d4>
    a67a:	88 e0       	ldi	r24, 0x08	; 8
    a67c:	61 e0       	ldi	r22, 0x01	; 1
    a67e:	4d e3       	ldi	r20, 0x3D	; 61
    a680:	54 e1       	ldi	r21, 0x14	; 20
    a682:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    a686:	16 c0       	rjmp	.+44     	; 0xa6b4 <redraw+0x1d4>
    a688:	06 30       	cpi	r16, 0x06	; 6
    a68a:	a1 f4       	brne	.+40     	; 0xa6b4 <redraw+0x1d4>
    a68c:	8c e0       	ldi	r24, 0x0C	; 12
    a68e:	0e 94 9b 4f 	call	0x9f36	; 0x9f36 <disp_message1>
    a692:	85 e0       	ldi	r24, 0x05	; 5
    a694:	61 e0       	ldi	r22, 0x01	; 1
    a696:	48 e2       	ldi	r20, 0x28	; 40
    a698:	54 e1       	ldi	r21, 0x14	; 20
    a69a:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    a69e:	0e 94 a8 4f 	call	0x9f50	; 0x9f50 <disp_opetime>
    a6a2:	08 c0       	rjmp	.+16     	; 0xa6b4 <redraw+0x1d4>
    a6a4:	0e 94 23 12 	call	0x2446	; 0x2446 <calc_calremtime>
    a6a8:	ab 01       	movw	r20, r22
    a6aa:	bc 01       	movw	r22, r24
    a6ac:	80 e0       	ldi	r24, 0x00	; 0
    a6ae:	0e 94 1a 50 	call	0xa034	; 0xa034 <disp_remtime>
    a6b2:	cc cf       	rjmp	.-104    	; 0xa64c <redraw+0x16c>
    a6b4:	60 96       	adiw	r28, 0x10	; 16
    a6b6:	e8 e0       	ldi	r30, 0x08	; 8
    a6b8:	0c 94 6f 6d 	jmp	0xdade	; 0xdade <__epilogue_restores__+0x14>

0000a6bc <clear_eventlog>:
    a6bc:	80 e0       	ldi	r24, 0x00	; 0
    a6be:	91 e0       	ldi	r25, 0x01	; 1
    a6c0:	ec ef       	ldi	r30, 0xFC	; 252
    a6c2:	fa e0       	ldi	r31, 0x0A	; 10
    a6c4:	df 01       	movw	r26, r30
    a6c6:	9c 01       	movw	r18, r24
    a6c8:	1d 92       	st	X+, r1
    a6ca:	21 50       	subi	r18, 0x01	; 1
    a6cc:	30 40       	sbci	r19, 0x00	; 0
    a6ce:	e1 f7       	brne	.-8      	; 0xa6c8 <clear_eventlog+0xc>
    a6d0:	08 95       	ret

0000a6d2 <clear_callog>:
    a6d2:	80 e0       	ldi	r24, 0x00	; 0
    a6d4:	91 e0       	ldi	r25, 0x01	; 1
    a6d6:	ec ef       	ldi	r30, 0xFC	; 252
    a6d8:	f9 e0       	ldi	r31, 0x09	; 9
    a6da:	df 01       	movw	r26, r30
    a6dc:	9c 01       	movw	r18, r24
    a6de:	1d 92       	st	X+, r1
    a6e0:	21 50       	subi	r18, 0x01	; 1
    a6e2:	30 40       	sbci	r19, 0x00	; 0
    a6e4:	e1 f7       	brne	.-8      	; 0xa6de <clear_callog+0xc>
    a6e6:	08 95       	ret

0000a6e8 <update_eventlog>:
    a6e8:	ef 92       	push	r14
    a6ea:	ff 92       	push	r15
    a6ec:	0f 93       	push	r16
    a6ee:	1f 93       	push	r17
    a6f0:	18 2f       	mov	r17, r24
    a6f2:	8c e0       	ldi	r24, 0x0C	; 12
    a6f4:	9b e0       	ldi	r25, 0x0B	; 11
    a6f6:	6c ef       	ldi	r22, 0xFC	; 252
    a6f8:	7a e0       	ldi	r23, 0x0A	; 10
    a6fa:	40 ef       	ldi	r20, 0xF0	; 240
    a6fc:	50 e0       	ldi	r21, 0x00	; 0
    a6fe:	0e 94 fa 6d 	call	0xdbf4	; 0xdbf4 <memmove>
    a702:	60 91 55 01 	lds	r22, 0x0155
    a706:	70 91 56 01 	lds	r23, 0x0156
    a70a:	e0 91 53 01 	lds	r30, 0x0153
    a70e:	e0 90 51 01 	lds	r14, 0x0151
    a712:	f0 90 4f 01 	lds	r15, 0x014F
    a716:	00 91 4d 01 	lds	r16, 0x014D
    a71a:	f0 91 4b 01 	lds	r31, 0x014B
    a71e:	15 30       	cpi	r17, 0x05	; 5
    a720:	79 f4       	brne	.+30     	; 0xa740 <update_eventlog+0x58>
    a722:	40 91 5d 04 	lds	r20, 0x045D
    a726:	50 91 5e 04 	lds	r21, 0x045E
    a72a:	20 91 5b 04 	lds	r18, 0x045B
    a72e:	30 91 5c 04 	lds	r19, 0x045C
    a732:	80 91 59 04 	lds	r24, 0x0459
    a736:	90 91 5a 04 	lds	r25, 0x045A
    a73a:	a0 e0       	ldi	r26, 0x00	; 0
    a73c:	b0 e0       	ldi	r27, 0x00	; 0
    a73e:	28 c0       	rjmp	.+80     	; 0xa790 <update_eventlog+0xa8>
    a740:	1a 30       	cpi	r17, 0x0A	; 10
    a742:	11 f0       	breq	.+4      	; 0xa748 <update_eventlog+0x60>
    a744:	17 30       	cpi	r17, 0x07	; 7
    a746:	89 f4       	brne	.+34     	; 0xa76a <update_eventlog+0x82>
    a748:	80 91 1a 05 	lds	r24, 0x051A
    a74c:	48 2f       	mov	r20, r24
    a74e:	50 e0       	ldi	r21, 0x00	; 0
    a750:	80 91 1b 05 	lds	r24, 0x051B
    a754:	28 2f       	mov	r18, r24
    a756:	30 e0       	ldi	r19, 0x00	; 0
    a758:	80 91 1c 05 	lds	r24, 0x051C
    a75c:	90 91 1d 05 	lds	r25, 0x051D
    a760:	a0 91 1e 05 	lds	r26, 0x051E
    a764:	b0 91 1f 05 	lds	r27, 0x051F
    a768:	13 c0       	rjmp	.+38     	; 0xa790 <update_eventlog+0xa8>
    a76a:	1b 31       	cpi	r17, 0x1B	; 27
    a76c:	29 f0       	breq	.+10     	; 0xa778 <update_eventlog+0x90>
    a76e:	80 e0       	ldi	r24, 0x00	; 0
    a770:	90 e0       	ldi	r25, 0x00	; 0
    a772:	a0 e0       	ldi	r26, 0x00	; 0
    a774:	b0 e0       	ldi	r27, 0x00	; 0
    a776:	08 c0       	rjmp	.+16     	; 0xa788 <update_eventlog+0xa0>
    a778:	80 91 4e 07 	lds	r24, 0x074E
    a77c:	90 91 4f 07 	lds	r25, 0x074F
    a780:	a0 91 50 07 	lds	r26, 0x0750
    a784:	b0 91 51 07 	lds	r27, 0x0751
    a788:	20 e0       	ldi	r18, 0x00	; 0
    a78a:	30 e0       	ldi	r19, 0x00	; 0
    a78c:	40 e0       	ldi	r20, 0x00	; 0
    a78e:	50 e0       	ldi	r21, 0x00	; 0
    a790:	80 93 08 0b 	sts	0x0B08, r24
    a794:	90 93 09 0b 	sts	0x0B09, r25
    a798:	a0 93 0a 0b 	sts	0x0B0A, r26
    a79c:	b0 93 0b 0b 	sts	0x0B0B, r27
    a7a0:	30 93 07 0b 	sts	0x0B07, r19
    a7a4:	20 93 06 0b 	sts	0x0B06, r18
    a7a8:	50 93 05 0b 	sts	0x0B05, r21
    a7ac:	40 93 04 0b 	sts	0x0B04, r20
    a7b0:	10 93 03 0b 	sts	0x0B03, r17
    a7b4:	f0 93 02 0b 	sts	0x0B02, r31
    a7b8:	00 93 01 0b 	sts	0x0B01, r16
    a7bc:	f0 92 00 0b 	sts	0x0B00, r15
    a7c0:	e0 92 ff 0a 	sts	0x0AFF, r14
    a7c4:	ef 5f       	subi	r30, 0xFF	; 255
    a7c6:	e0 93 fe 0a 	sts	0x0AFE, r30
    a7ca:	64 59       	subi	r22, 0x94	; 148
    a7cc:	78 4f       	sbci	r23, 0xF8	; 248
    a7ce:	70 93 fd 0a 	sts	0x0AFD, r23
    a7d2:	60 93 fc 0a 	sts	0x0AFC, r22
    a7d6:	1a 30       	cpi	r17, 0x0A	; 10
    a7d8:	c1 f0       	breq	.+48     	; 0xa80a <update_eventlog+0x122>
    a7da:	1b 31       	cpi	r17, 0x1B	; 27
    a7dc:	b1 f0       	breq	.+44     	; 0xa80a <update_eventlog+0x122>
    a7de:	11 32       	cpi	r17, 0x21	; 33
    a7e0:	a1 f0       	breq	.+40     	; 0xa80a <update_eventlog+0x122>
    a7e2:	1c 30       	cpi	r17, 0x0C	; 12
    a7e4:	91 f0       	breq	.+36     	; 0xa80a <update_eventlog+0x122>
    a7e6:	1d 30       	cpi	r17, 0x0D	; 13
    a7e8:	81 f0       	breq	.+32     	; 0xa80a <update_eventlog+0x122>
    a7ea:	11 30       	cpi	r17, 0x01	; 1
    a7ec:	71 f0       	breq	.+28     	; 0xa80a <update_eventlog+0x122>
    a7ee:	12 30       	cpi	r17, 0x02	; 2
    a7f0:	61 f0       	breq	.+24     	; 0xa80a <update_eventlog+0x122>
    a7f2:	14 30       	cpi	r17, 0x04	; 4
    a7f4:	51 f0       	breq	.+20     	; 0xa80a <update_eventlog+0x122>
    a7f6:	17 9a       	sbi	0x02, 7	; 2
    a7f8:	80 91 ce 09 	lds	r24, 0x09CE
    a7fc:	90 91 cf 09 	lds	r25, 0x09CF
    a800:	90 68       	ori	r25, 0x80	; 128
    a802:	90 93 cf 09 	sts	0x09CF, r25
    a806:	80 93 ce 09 	sts	0x09CE, r24
    a80a:	1f 91       	pop	r17
    a80c:	0f 91       	pop	r16
    a80e:	ff 90       	pop	r15
    a810:	ef 90       	pop	r14
    a812:	08 95       	ret

0000a814 <update_callog>:
    a814:	ff 92       	push	r15
    a816:	0f 93       	push	r16
    a818:	1f 93       	push	r17
    a81a:	f8 2e       	mov	r15, r24
    a81c:	8c e0       	ldi	r24, 0x0C	; 12
    a81e:	9a e0       	ldi	r25, 0x0A	; 10
    a820:	8c 01       	movw	r16, r24
    a822:	00 51       	subi	r16, 0x10	; 16
    a824:	10 40       	sbci	r17, 0x00	; 0
    a826:	b8 01       	movw	r22, r16
    a828:	40 ef       	ldi	r20, 0xF0	; 240
    a82a:	50 e0       	ldi	r21, 0x00	; 0
    a82c:	0e 94 fa 6d 	call	0xdbf4	; 0xdbf4 <memmove>
    a830:	80 91 55 01 	lds	r24, 0x0155
    a834:	90 91 56 01 	lds	r25, 0x0156
    a838:	84 59       	subi	r24, 0x94	; 148
    a83a:	98 4f       	sbci	r25, 0xF8	; 248
    a83c:	50 91 53 01 	lds	r21, 0x0153
    a840:	5f 5f       	subi	r21, 0xFF	; 255
    a842:	b0 91 51 01 	lds	r27, 0x0151
    a846:	a0 91 4f 01 	lds	r26, 0x014F
    a84a:	f0 91 4d 01 	lds	r31, 0x014D
    a84e:	e0 91 4b 01 	lds	r30, 0x014B
    a852:	60 91 d4 07 	lds	r22, 0x07D4
    a856:	70 91 d5 07 	lds	r23, 0x07D5
    a85a:	20 91 d6 07 	lds	r18, 0x07D6
    a85e:	30 91 d7 07 	lds	r19, 0x07D7
    a862:	40 91 d3 07 	lds	r20, 0x07D3
    a866:	10 92 0b 0a 	sts	0x0A0B, r1
    a86a:	10 92 0a 0a 	sts	0x0A0A, r1
    a86e:	10 92 09 0a 	sts	0x0A09, r1
    a872:	40 93 08 0a 	sts	0x0A08, r20
    a876:	f0 92 03 0a 	sts	0x0A03, r15
    a87a:	30 93 07 0a 	sts	0x0A07, r19
    a87e:	20 93 06 0a 	sts	0x0A06, r18
    a882:	70 93 05 0a 	sts	0x0A05, r23
    a886:	60 93 04 0a 	sts	0x0A04, r22
    a88a:	e0 93 02 0a 	sts	0x0A02, r30
    a88e:	f0 93 01 0a 	sts	0x0A01, r31
    a892:	a0 93 00 0a 	sts	0x0A00, r26
    a896:	b0 93 ff 09 	sts	0x09FF, r27
    a89a:	50 93 fe 09 	sts	0x09FE, r21
    a89e:	f8 01       	movw	r30, r16
    a8a0:	91 83       	std	Z+1, r25	; 0x01
    a8a2:	80 83       	st	Z, r24
    a8a4:	1f 91       	pop	r17
    a8a6:	0f 91       	pop	r16
    a8a8:	ff 90       	pop	r15
    a8aa:	08 95       	ret

0000a8ac <asc2datetime>:
    a8ac:	0f 93       	push	r16
    a8ae:	1f 93       	push	r17
    a8b0:	cf 93       	push	r28
    a8b2:	df 93       	push	r29
    a8b4:	ec 01       	movw	r28, r24
    a8b6:	8b 01       	movw	r16, r22
    a8b8:	10 92 be 01 	sts	0x01BE, r1
    a8bc:	10 92 bd 01 	sts	0x01BD, r1
    a8c0:	1e 86       	std	Y+14, r1	; 0x0e
    a8c2:	0c 96       	adiw	r24, 0x0c	; 12
    a8c4:	0e 94 e8 3f 	call	0x7fd0	; 0x7fd0 <_atoi>
    a8c8:	8e 33       	cpi	r24, 0x3E	; 62
    a8ca:	91 05       	cpc	r25, r1
    a8cc:	0c f0       	brlt	.+2      	; 0xa8d0 <asc2datetime+0x24>
    a8ce:	69 c0       	rjmp	.+210    	; 0xa9a2 <asc2datetime+0xf6>
    a8d0:	90 93 ae 01 	sts	0x01AE, r25
    a8d4:	80 93 ad 01 	sts	0x01AD, r24
    a8d8:	1c 86       	std	Y+12, r1	; 0x0c
    a8da:	ce 01       	movw	r24, r28
    a8dc:	0a 96       	adiw	r24, 0x0a	; 10
    a8de:	0e 94 e8 3f 	call	0x7fd0	; 0x7fd0 <_atoi>
    a8e2:	8c 33       	cpi	r24, 0x3C	; 60
    a8e4:	91 05       	cpc	r25, r1
    a8e6:	0c f0       	brlt	.+2      	; 0xa8ea <asc2datetime+0x3e>
    a8e8:	5c c0       	rjmp	.+184    	; 0xa9a2 <asc2datetime+0xf6>
    a8ea:	90 93 b0 01 	sts	0x01B0, r25
    a8ee:	80 93 af 01 	sts	0x01AF, r24
    a8f2:	1a 86       	std	Y+10, r1	; 0x0a
    a8f4:	ce 01       	movw	r24, r28
    a8f6:	08 96       	adiw	r24, 0x08	; 8
    a8f8:	0e 94 e8 3f 	call	0x7fd0	; 0x7fd0 <_atoi>
    a8fc:	88 31       	cpi	r24, 0x18	; 24
    a8fe:	91 05       	cpc	r25, r1
    a900:	0c f0       	brlt	.+2      	; 0xa904 <asc2datetime+0x58>
    a902:	4f c0       	rjmp	.+158    	; 0xa9a2 <asc2datetime+0xf6>
    a904:	90 93 b2 01 	sts	0x01B2, r25
    a908:	80 93 b1 01 	sts	0x01B1, r24
    a90c:	18 86       	std	Y+8, r1	; 0x08
    a90e:	ce 01       	movw	r24, r28
    a910:	06 96       	adiw	r24, 0x06	; 6
    a912:	0e 94 e8 3f 	call	0x7fd0	; 0x7fd0 <_atoi>
    a916:	00 97       	sbiw	r24, 0x00	; 0
    a918:	09 f4       	brne	.+2      	; 0xa91c <asc2datetime+0x70>
    a91a:	43 c0       	rjmp	.+134    	; 0xa9a2 <asc2datetime+0xf6>
    a91c:	80 32       	cpi	r24, 0x20	; 32
    a91e:	91 05       	cpc	r25, r1
    a920:	0c f0       	brlt	.+2      	; 0xa924 <asc2datetime+0x78>
    a922:	3f c0       	rjmp	.+126    	; 0xa9a2 <asc2datetime+0xf6>
    a924:	90 93 b4 01 	sts	0x01B4, r25
    a928:	80 93 b3 01 	sts	0x01B3, r24
    a92c:	1e 82       	std	Y+6, r1	; 0x06
    a92e:	ce 01       	movw	r24, r28
    a930:	04 96       	adiw	r24, 0x04	; 4
    a932:	0e 94 e8 3f 	call	0x7fd0	; 0x7fd0 <_atoi>
    a936:	01 97       	sbiw	r24, 0x01	; 1
    a938:	8c 30       	cpi	r24, 0x0C	; 12
    a93a:	91 05       	cpc	r25, r1
    a93c:	94 f5       	brge	.+100    	; 0xa9a2 <asc2datetime+0xf6>
    a93e:	90 93 b6 01 	sts	0x01B6, r25
    a942:	80 93 b5 01 	sts	0x01B5, r24
    a946:	1c 82       	std	Y+4, r1	; 0x04
    a948:	ce 01       	movw	r24, r28
    a94a:	0e 94 e8 3f 	call	0x7fd0	; 0x7fd0 <_atoi>
    a94e:	8c 56       	subi	r24, 0x6C	; 108
    a950:	97 40       	sbci	r25, 0x07	; 7
    a952:	90 93 b8 01 	sts	0x01B8, r25
    a956:	80 93 b7 01 	sts	0x01B7, r24
    a95a:	10 92 ba 01 	sts	0x01BA, r1
    a95e:	10 92 b9 01 	sts	0x01B9, r1
    a962:	10 92 bc 01 	sts	0x01BC, r1
    a966:	10 92 bb 01 	sts	0x01BB, r1
    a96a:	8d ea       	ldi	r24, 0xAD	; 173
    a96c:	91 e0       	ldi	r25, 0x01	; 1
    a96e:	0e 94 c0 21 	call	0x4380	; 0x4380 <mktime>
    a972:	60 93 0d 0c 	sts	0x0C0D, r22
    a976:	70 93 0e 0c 	sts	0x0C0E, r23
    a97a:	80 93 0f 0c 	sts	0x0C0F, r24
    a97e:	90 93 10 0c 	sts	0x0C10, r25
    a982:	80 91 0d 0c 	lds	r24, 0x0C0D
    a986:	90 91 0e 0c 	lds	r25, 0x0C0E
    a98a:	a0 91 0f 0c 	lds	r26, 0x0C0F
    a98e:	b0 91 10 0c 	lds	r27, 0x0C10
    a992:	b7 fd       	sbrc	r27, 7
    a994:	04 c0       	rjmp	.+8      	; 0xa99e <asc2datetime+0xf2>
    a996:	10 93 be 01 	sts	0x01BE, r17
    a99a:	00 93 bd 01 	sts	0x01BD, r16
    a99e:	81 e0       	ldi	r24, 0x01	; 1
    a9a0:	01 c0       	rjmp	.+2      	; 0xa9a4 <asc2datetime+0xf8>
    a9a2:	80 e0       	ldi	r24, 0x00	; 0
    a9a4:	df 91       	pop	r29
    a9a6:	cf 91       	pop	r28
    a9a8:	1f 91       	pop	r17
    a9aa:	0f 91       	pop	r16
    a9ac:	08 95       	ret

0000a9ae <setjsttime>:
    a9ae:	ef 92       	push	r14
    a9b0:	ff 92       	push	r15
    a9b2:	0f 93       	push	r16
    a9b4:	1f 93       	push	r17
    a9b6:	cf 93       	push	r28
    a9b8:	df 93       	push	r29
    a9ba:	eb 01       	movw	r28, r22
    a9bc:	f8 94       	cli
    a9be:	6d ea       	ldi	r22, 0xAD	; 173
    a9c0:	71 e0       	ldi	r23, 0x01	; 1
    a9c2:	20 e9       	ldi	r18, 0x90	; 144
    a9c4:	3e e7       	ldi	r19, 0x7E	; 126
    a9c6:	40 e0       	ldi	r20, 0x00	; 0
    a9c8:	50 e0       	ldi	r21, 0x00	; 0
    a9ca:	0e 94 23 42 	call	0x8446	; 0x8446 <wt2utc>
    a9ce:	8d ea       	ldi	r24, 0xAD	; 173
    a9d0:	91 e0       	ldi	r25, 0x01	; 1
    a9d2:	0e 94 c0 21 	call	0x4380	; 0x4380 <mktime>
    a9d6:	7b 01       	movw	r14, r22
    a9d8:	8c 01       	movw	r16, r24
    a9da:	78 94       	sei
    a9dc:	97 fd       	sbrc	r25, 7
    a9de:	4c c0       	rjmp	.+152    	; 0xaa78 <setjsttime+0xca>
    a9e0:	21 97       	sbiw	r28, 0x01	; 1
    a9e2:	91 f5       	brne	.+100    	; 0xaa48 <setjsttime+0x9a>
    a9e4:	80 91 eb 09 	lds	r24, 0x09EB
    a9e8:	90 91 ec 09 	lds	r25, 0x09EC
    a9ec:	89 2b       	or	r24, r25
    a9ee:	61 f5       	brne	.+88     	; 0xaa48 <setjsttime+0x9a>
    a9f0:	f8 94       	cli
    a9f2:	20 91 fe 0b 	lds	r18, 0x0BFE
    a9f6:	30 91 ff 0b 	lds	r19, 0x0BFF
    a9fa:	40 91 00 0c 	lds	r20, 0x0C00
    a9fe:	50 91 01 0c 	lds	r21, 0x0C01
    aa02:	78 94       	sei
    aa04:	80 91 49 01 	lds	r24, 0x0149
    aa08:	90 91 4a 01 	lds	r25, 0x014A
    aa0c:	89 2b       	or	r24, r25
    aa0e:	e1 f4       	brne	.+56     	; 0xaa48 <setjsttime+0x9a>
    aa10:	80 91 fd 07 	lds	r24, 0x07FD
    aa14:	90 91 fe 07 	lds	r25, 0x07FE
    aa18:	00 97       	sbiw	r24, 0x00	; 0
    aa1a:	b1 f0       	breq	.+44     	; 0xaa48 <setjsttime+0x9a>
    aa1c:	2e 19       	sub	r18, r14
    aa1e:	3f 09       	sbc	r19, r15
    aa20:	40 0b       	sbc	r20, r16
    aa22:	51 0b       	sbc	r21, r17
    aa24:	57 ff       	sbrs	r21, 7
    aa26:	07 c0       	rjmp	.+14     	; 0xaa36 <setjsttime+0x88>
    aa28:	50 95       	com	r21
    aa2a:	40 95       	com	r20
    aa2c:	30 95       	com	r19
    aa2e:	21 95       	neg	r18
    aa30:	3f 4f       	sbci	r19, 0xFF	; 255
    aa32:	4f 4f       	sbci	r20, 0xFF	; 255
    aa34:	5f 4f       	sbci	r21, 0xFF	; 255
    aa36:	a0 e0       	ldi	r26, 0x00	; 0
    aa38:	b0 e0       	ldi	r27, 0x00	; 0
    aa3a:	82 17       	cp	r24, r18
    aa3c:	93 07       	cpc	r25, r19
    aa3e:	a4 07       	cpc	r26, r20
    aa40:	b5 07       	cpc	r27, r21
    aa42:	14 f4       	brge	.+4      	; 0xaa48 <setjsttime+0x9a>
    aa44:	82 e0       	ldi	r24, 0x02	; 2
    aa46:	19 c0       	rjmp	.+50     	; 0xaa7a <setjsttime+0xcc>
    aa48:	81 e0       	ldi	r24, 0x01	; 1
    aa4a:	90 e0       	ldi	r25, 0x00	; 0
    aa4c:	90 93 be 01 	sts	0x01BE, r25
    aa50:	80 93 bd 01 	sts	0x01BD, r24
    aa54:	10 92 ec 09 	sts	0x09EC, r1
    aa58:	10 92 eb 09 	sts	0x09EB, r1
    aa5c:	10 92 d7 07 	sts	0x07D7, r1
    aa60:	10 92 d6 07 	sts	0x07D6, r1
    aa64:	10 92 d5 07 	sts	0x07D5, r1
    aa68:	10 92 d4 07 	sts	0x07D4, r1
    aa6c:	10 92 ac 01 	sts	0x01AC, r1
    aa70:	10 92 ab 01 	sts	0x01AB, r1
    aa74:	81 e0       	ldi	r24, 0x01	; 1
    aa76:	06 c0       	rjmp	.+12     	; 0xaa84 <setjsttime+0xd6>
    aa78:	81 e0       	ldi	r24, 0x01	; 1
    aa7a:	80 93 ac 01 	sts	0x01AC, r24
    aa7e:	0e 94 bc 0c 	call	0x1978	; 0x1978 <unsync_seq>
    aa82:	80 e0       	ldi	r24, 0x00	; 0
    aa84:	cd b7       	in	r28, 0x3d	; 61
    aa86:	de b7       	in	r29, 0x3e	; 62
    aa88:	e6 e0       	ldi	r30, 0x06	; 6
    aa8a:	0c 94 71 6d 	jmp	0xdae2	; 0xdae2 <__epilogue_restores__+0x18>

0000aa8e <jjy_process>:
    aa8e:	1f 93       	push	r17
    aa90:	37 9b       	sbis	0x06, 7	; 6
    aa92:	08 c0       	rjmp	.+16     	; 0xaaa4 <jjy_process+0x16>
    aa94:	10 92 ee 09 	sts	0x09EE, r1
    aa98:	10 92 ed 09 	sts	0x09ED, r1
    aa9c:	89 e0       	ldi	r24, 0x09	; 9
    aa9e:	80 93 ac 01 	sts	0x01AC, r24
    aaa2:	10 c1       	rjmp	.+544    	; 0xacc4 <jjy_process+0x236>
    aaa4:	80 91 ac 01 	lds	r24, 0x01AC
    aaa8:	89 30       	cpi	r24, 0x09	; 9
    aaaa:	19 f4       	brne	.+6      	; 0xaab2 <jjy_process+0x24>
    aaac:	82 e0       	ldi	r24, 0x02	; 2
    aaae:	80 93 ac 01 	sts	0x01AC, r24
    aab2:	10 91 e8 09 	lds	r17, 0x09E8
    aab6:	11 23       	and	r17, r17
    aab8:	09 f4       	brne	.+2      	; 0xaabc <jjy_process+0x2e>
    aaba:	04 c1       	rjmp	.+520    	; 0xacc4 <jjy_process+0x236>
    aabc:	11 30       	cpi	r17, 0x01	; 1
    aabe:	e9 f4       	brne	.+58     	; 0xaafa <jjy_process+0x6c>
    aac0:	10 92 be 01 	sts	0x01BE, r1
    aac4:	10 92 bd 01 	sts	0x01BD, r1
    aac8:	0e 94 00 20 	call	0x4000	; 0x4000 <sio_clear>
    aacc:	80 91 ed 09 	lds	r24, 0x09ED
    aad0:	90 91 ee 09 	lds	r25, 0x09EE
    aad4:	89 2b       	or	r24, r25
    aad6:	19 f4       	brne	.+6      	; 0xaade <jjy_process+0x50>
    aad8:	8a e6       	ldi	r24, 0x6A	; 106
    aada:	94 e1       	ldi	r25, 0x14	; 20
    aadc:	02 c0       	rjmp	.+4      	; 0xaae2 <jjy_process+0x54>
    aade:	83 e6       	ldi	r24, 0x63	; 99
    aae0:	94 e1       	ldi	r25, 0x14	; 20
    aae2:	0e 94 2d 21 	call	0x425a	; 0x425a <sio_setstrc>
    aae6:	82 e0       	ldi	r24, 0x02	; 2
    aae8:	80 93 e8 09 	sts	0x09E8, r24
    aaec:	0e 94 c6 1f 	call	0x3f8c	; 0x3f8c <getcount1ms>
    aaf0:	90 93 f0 09 	sts	0x09F0, r25
    aaf4:	80 93 ef 09 	sts	0x09EF, r24
    aaf8:	e5 c0       	rjmp	.+458    	; 0xacc4 <jjy_process+0x236>
    aafa:	12 30       	cpi	r17, 0x02	; 2
    aafc:	d9 f5       	brne	.+118    	; 0xab74 <jjy_process+0xe6>
    aafe:	0e 94 14 20 	call	0x4028	; 0x4028 <sio_getstr>
    ab02:	81 30       	cpi	r24, 0x01	; 1
    ab04:	09 f0       	breq	.+2      	; 0xab08 <jjy_process+0x7a>
    ab06:	c8 c0       	rjmp	.+400    	; 0xac98 <jjy_process+0x20a>
    ab08:	80 91 ed 09 	lds	r24, 0x09ED
    ab0c:	90 91 ee 09 	lds	r25, 0x09EE
    ab10:	89 2b       	or	r24, r25
    ab12:	c1 f4       	brne	.+48     	; 0xab44 <jjy_process+0xb6>
    ab14:	84 ed       	ldi	r24, 0xD4	; 212
    ab16:	93 e0       	ldi	r25, 0x03	; 3
    ab18:	6d e5       	ldi	r22, 0x5D	; 93
    ab1a:	74 e1       	ldi	r23, 0x14	; 20
    ab1c:	45 e0       	ldi	r20, 0x05	; 5
    ab1e:	50 e0       	ldi	r21, 0x00	; 0
    ab20:	0e 94 c9 6d 	call	0xdb92	; 0xdb92 <strncmp_P>
    ab24:	89 2b       	or	r24, r25
    ab26:	39 f4       	brne	.+14     	; 0xab36 <jjy_process+0xa8>
    ab28:	81 e0       	ldi	r24, 0x01	; 1
    ab2a:	90 e0       	ldi	r25, 0x00	; 0
    ab2c:	90 93 ee 09 	sts	0x09EE, r25
    ab30:	80 93 ed 09 	sts	0x09ED, r24
    ab34:	11 c0       	rjmp	.+34     	; 0xab58 <jjy_process+0xca>
    ab36:	80 e4       	ldi	r24, 0x40	; 64
    ab38:	90 e0       	ldi	r25, 0x00	; 0
    ab3a:	0e 94 40 12 	call	0x2480	; 0x2480 <change_calinterval>
    ab3e:	10 93 ac 01 	sts	0x01AC, r17
    ab42:	a7 c0       	rjmp	.+334    	; 0xac92 <jjy_process+0x204>
    ab44:	84 ed       	ldi	r24, 0xD4	; 212
    ab46:	93 e0       	ldi	r25, 0x03	; 3
    ab48:	64 e5       	ldi	r22, 0x54	; 84
    ab4a:	74 e1       	ldi	r23, 0x14	; 20
    ab4c:	48 e0       	ldi	r20, 0x08	; 8
    ab4e:	50 e0       	ldi	r21, 0x00	; 0
    ab50:	0e 94 c9 6d 	call	0xdb92	; 0xdb92 <strncmp_P>
    ab54:	89 2b       	or	r24, r25
    ab56:	11 f4       	brne	.+4      	; 0xab5c <jjy_process+0xce>
    ab58:	83 e0       	ldi	r24, 0x03	; 3
    ab5a:	52 c0       	rjmp	.+164    	; 0xac00 <jjy_process+0x172>
    ab5c:	af e6       	ldi	r26, 0x6F	; 111
    ab5e:	b1 e0       	ldi	r27, 0x01	; 1
    ab60:	eb e4       	ldi	r30, 0x4B	; 75
    ab62:	f1 e0       	ldi	r31, 0x01	; 1
    ab64:	82 e1       	ldi	r24, 0x12	; 18
    ab66:	01 90       	ld	r0, Z+
    ab68:	0d 92       	st	X+, r0
    ab6a:	81 50       	subi	r24, 0x01	; 1
    ab6c:	e1 f7       	brne	.-8      	; 0xab66 <jjy_process+0xd8>
    ab6e:	10 92 e8 09 	sts	0x09E8, r1
    ab72:	a9 c0       	rjmp	.+338    	; 0xacc6 <jjy_process+0x238>
    ab74:	13 30       	cpi	r17, 0x03	; 3
    ab76:	41 f4       	brne	.+16     	; 0xab88 <jjy_process+0xfa>
    ab78:	0e 94 00 20 	call	0x4000	; 0x4000 <sio_clear>
    ab7c:	8d e4       	ldi	r24, 0x4D	; 77
    ab7e:	94 e1       	ldi	r25, 0x14	; 20
    ab80:	0e 94 2d 21 	call	0x425a	; 0x425a <sio_setstrc>
    ab84:	84 e0       	ldi	r24, 0x04	; 4
    ab86:	b0 cf       	rjmp	.-160    	; 0xaae8 <jjy_process+0x5a>
    ab88:	14 30       	cpi	r17, 0x04	; 4
    ab8a:	09 f0       	breq	.+2      	; 0xab8e <jjy_process+0x100>
    ab8c:	44 c0       	rjmp	.+136    	; 0xac16 <jjy_process+0x188>
    ab8e:	0e 94 14 20 	call	0x4028	; 0x4028 <sio_getstr>
    ab92:	81 30       	cpi	r24, 0x01	; 1
    ab94:	09 f0       	breq	.+2      	; 0xab98 <jjy_process+0x10a>
    ab96:	80 c0       	rjmp	.+256    	; 0xac98 <jjy_process+0x20a>
    ab98:	10 92 de 03 	sts	0x03DE, r1
    ab9c:	8c ed       	ldi	r24, 0xDC	; 220
    ab9e:	93 e0       	ldi	r25, 0x03	; 3
    aba0:	0e 94 e8 3f 	call	0x7fd0	; 0x7fd0 <_atoi>
    aba4:	00 97       	sbiw	r24, 0x00	; 0
    aba6:	79 f1       	breq	.+94     	; 0xac06 <jjy_process+0x178>
    aba8:	80 32       	cpi	r24, 0x20	; 32
    abaa:	91 05       	cpc	r25, r1
    abac:	64 f5       	brge	.+88     	; 0xac06 <jjy_process+0x178>
    abae:	90 93 b4 01 	sts	0x01B4, r25
    abb2:	80 93 b3 01 	sts	0x01B3, r24
    abb6:	10 92 db 03 	sts	0x03DB, r1
    abba:	89 ed       	ldi	r24, 0xD9	; 217
    abbc:	93 e0       	ldi	r25, 0x03	; 3
    abbe:	0e 94 e8 3f 	call	0x7fd0	; 0x7fd0 <_atoi>
    abc2:	01 97       	sbiw	r24, 0x01	; 1
    abc4:	8c 30       	cpi	r24, 0x0C	; 12
    abc6:	91 05       	cpc	r25, r1
    abc8:	f4 f4       	brge	.+60     	; 0xac06 <jjy_process+0x178>
    abca:	90 93 b6 01 	sts	0x01B6, r25
    abce:	80 93 b5 01 	sts	0x01B5, r24
    abd2:	10 92 d8 03 	sts	0x03D8, r1
    abd6:	84 ed       	ldi	r24, 0xD4	; 212
    abd8:	93 e0       	ldi	r25, 0x03	; 3
    abda:	0e 94 e8 3f 	call	0x7fd0	; 0x7fd0 <_atoi>
    abde:	8c 56       	subi	r24, 0x6C	; 108
    abe0:	97 40       	sbci	r25, 0x07	; 7
    abe2:	97 fd       	sbrc	r25, 7
    abe4:	10 c0       	rjmp	.+32     	; 0xac06 <jjy_process+0x178>
    abe6:	90 93 b8 01 	sts	0x01B8, r25
    abea:	80 93 b7 01 	sts	0x01B7, r24
    abee:	10 92 ba 01 	sts	0x01BA, r1
    abf2:	10 92 b9 01 	sts	0x01B9, r1
    abf6:	10 92 bc 01 	sts	0x01BC, r1
    abfa:	10 92 bb 01 	sts	0x01BB, r1
    abfe:	85 e0       	ldi	r24, 0x05	; 5
    ac00:	80 93 e8 09 	sts	0x09E8, r24
    ac04:	5f c0       	rjmp	.+190    	; 0xacc4 <jjy_process+0x236>
    ac06:	80 e4       	ldi	r24, 0x40	; 64
    ac08:	90 e0       	ldi	r25, 0x00	; 0
    ac0a:	0e 94 40 12 	call	0x2480	; 0x2480 <change_calinterval>
    ac0e:	81 e0       	ldi	r24, 0x01	; 1
    ac10:	80 93 ac 01 	sts	0x01AC, r24
    ac14:	3e c0       	rjmp	.+124    	; 0xac92 <jjy_process+0x204>
    ac16:	15 30       	cpi	r17, 0x05	; 5
    ac18:	41 f4       	brne	.+16     	; 0xac2a <jjy_process+0x19c>
    ac1a:	0e 94 00 20 	call	0x4000	; 0x4000 <sio_clear>
    ac1e:	86 e4       	ldi	r24, 0x46	; 70
    ac20:	94 e1       	ldi	r25, 0x14	; 20
    ac22:	0e 94 2d 21 	call	0x425a	; 0x425a <sio_setstrc>
    ac26:	86 e0       	ldi	r24, 0x06	; 6
    ac28:	5f cf       	rjmp	.-322    	; 0xaae8 <jjy_process+0x5a>
    ac2a:	16 30       	cpi	r17, 0x06	; 6
    ac2c:	09 f0       	breq	.+2      	; 0xac30 <jjy_process+0x1a2>
    ac2e:	4a c0       	rjmp	.+148    	; 0xacc4 <jjy_process+0x236>
    ac30:	0e 94 14 20 	call	0x4028	; 0x4028 <sio_getstr>
    ac34:	81 30       	cpi	r24, 0x01	; 1
    ac36:	81 f5       	brne	.+96     	; 0xac98 <jjy_process+0x20a>
    ac38:	10 92 dc 03 	sts	0x03DC, r1
    ac3c:	8a ed       	ldi	r24, 0xDA	; 218
    ac3e:	93 e0       	ldi	r25, 0x03	; 3
    ac40:	0e 94 e8 3f 	call	0x7fd0	; 0x7fd0 <_atoi>
    ac44:	8c 33       	cpi	r24, 0x3C	; 60
    ac46:	91 05       	cpc	r25, r1
    ac48:	24 f5       	brge	.+72     	; 0xac92 <jjy_process+0x204>
    ac4a:	90 93 ae 01 	sts	0x01AE, r25
    ac4e:	80 93 ad 01 	sts	0x01AD, r24
    ac52:	10 92 d9 03 	sts	0x03D9, r1
    ac56:	87 ed       	ldi	r24, 0xD7	; 215
    ac58:	93 e0       	ldi	r25, 0x03	; 3
    ac5a:	0e 94 e8 3f 	call	0x7fd0	; 0x7fd0 <_atoi>
    ac5e:	8c 33       	cpi	r24, 0x3C	; 60
    ac60:	91 05       	cpc	r25, r1
    ac62:	bc f4       	brge	.+46     	; 0xac92 <jjy_process+0x204>
    ac64:	90 93 b0 01 	sts	0x01B0, r25
    ac68:	80 93 af 01 	sts	0x01AF, r24
    ac6c:	10 92 d6 03 	sts	0x03D6, r1
    ac70:	84 ed       	ldi	r24, 0xD4	; 212
    ac72:	93 e0       	ldi	r25, 0x03	; 3
    ac74:	0e 94 e8 3f 	call	0x7fd0	; 0x7fd0 <_atoi>
    ac78:	88 31       	cpi	r24, 0x18	; 24
    ac7a:	91 05       	cpc	r25, r1
    ac7c:	54 f4       	brge	.+20     	; 0xac92 <jjy_process+0x204>
    ac7e:	90 93 b2 01 	sts	0x01B2, r25
    ac82:	80 93 b1 01 	sts	0x01B1, r24
    ac86:	8d ea       	ldi	r24, 0xAD	; 173
    ac88:	91 e0       	ldi	r25, 0x01	; 1
    ac8a:	61 e0       	ldi	r22, 0x01	; 1
    ac8c:	70 e0       	ldi	r23, 0x00	; 0
    ac8e:	0e 94 d7 54 	call	0xa9ae	; 0xa9ae <setjsttime>
    ac92:	10 92 e8 09 	sts	0x09E8, r1
    ac96:	16 c0       	rjmp	.+44     	; 0xacc4 <jjy_process+0x236>
    ac98:	0e 94 c6 1f 	call	0x3f8c	; 0x3f8c <getcount1ms>
    ac9c:	20 91 ef 09 	lds	r18, 0x09EF
    aca0:	30 91 f0 09 	lds	r19, 0x09F0
    aca4:	82 1b       	sub	r24, r18
    aca6:	93 0b       	sbc	r25, r19
    aca8:	80 5d       	subi	r24, 0xD0	; 208
    acaa:	97 40       	sbci	r25, 0x07	; 7
    acac:	58 f0       	brcs	.+22     	; 0xacc4 <jjy_process+0x236>
    acae:	80 e4       	ldi	r24, 0x40	; 64
    acb0:	90 e0       	ldi	r25, 0x00	; 0
    acb2:	0e 94 40 12 	call	0x2480	; 0x2480 <change_calinterval>
    acb6:	83 e0       	ldi	r24, 0x03	; 3
    acb8:	80 93 ac 01 	sts	0x01AC, r24
    acbc:	10 92 e8 09 	sts	0x09E8, r1
    acc0:	85 e2       	ldi	r24, 0x25	; 37
    acc2:	01 c0       	rjmp	.+2      	; 0xacc6 <jjy_process+0x238>
    acc4:	80 e0       	ldi	r24, 0x00	; 0
    acc6:	1f 91       	pop	r17
    acc8:	08 95       	ret

0000acca <mtk_init>:
    acca:	cf 92       	push	r12
    accc:	df 92       	push	r13
    acce:	ef 92       	push	r14
    acd0:	ff 92       	push	r15
    acd2:	1f 93       	push	r17
    acd4:	df 93       	push	r29
    acd6:	cf 93       	push	r28
    acd8:	0f 92       	push	r0
    acda:	cd b7       	in	r28, 0x3d	; 61
    acdc:	de b7       	in	r29, 0x3e	; 62
    acde:	0e 94 00 20 	call	0x4000	; 0x4000 <sio_clear>
    ace2:	88 ea       	ldi	r24, 0xA8	; 168
    ace4:	94 e1       	ldi	r25, 0x14	; 20
    ace6:	0e 94 2d 21 	call	0x425a	; 0x425a <sio_setstrc>
    acea:	0e 94 c6 1f 	call	0x3f8c	; 0x3f8c <getcount1ms>
    acee:	7c 01       	movw	r14, r24
    acf0:	10 e0       	ldi	r17, 0x00	; 0
    acf2:	6e 01       	movw	r12, r28
    acf4:	08 94       	sec
    acf6:	c1 1c       	adc	r12, r1
    acf8:	d1 1c       	adc	r13, r1
    acfa:	a8 95       	wdr
    acfc:	11 23       	and	r17, r17
    acfe:	61 f4       	brne	.+24     	; 0xad18 <mtk_init+0x4e>
    ad00:	c6 01       	movw	r24, r12
    ad02:	0e 94 e3 1f 	call	0x3fc6	; 0x3fc6 <sio_getchar>
    ad06:	81 30       	cpi	r24, 0x01	; 1
    ad08:	c1 f4       	brne	.+48     	; 0xad3a <mtk_init+0x70>
    ad0a:	89 81       	ldd	r24, Y+1	; 0x01
    ad0c:	84 32       	cpi	r24, 0x24	; 36
    ad0e:	a9 f4       	brne	.+42     	; 0xad3a <mtk_init+0x70>
    ad10:	10 92 54 04 	sts	0x0454, r1
    ad14:	11 e0       	ldi	r17, 0x01	; 1
    ad16:	11 c0       	rjmp	.+34     	; 0xad3a <mtk_init+0x70>
    ad18:	0e 94 14 20 	call	0x4028	; 0x4028 <sio_getstr>
    ad1c:	81 30       	cpi	r24, 0x01	; 1
    ad1e:	69 f4       	brne	.+26     	; 0xad3a <mtk_init+0x70>
    ad20:	84 ed       	ldi	r24, 0xD4	; 212
    ad22:	93 e0       	ldi	r25, 0x03	; 3
    ad24:	6a e9       	ldi	r22, 0x9A	; 154
    ad26:	74 e1       	ldi	r23, 0x14	; 20
    ad28:	4d e0       	ldi	r20, 0x0D	; 13
    ad2a:	50 e0       	ldi	r21, 0x00	; 0
    ad2c:	0e 94 c9 6d 	call	0xdb92	; 0xdb92 <strncmp_P>
    ad30:	89 2b       	or	r24, r25
    ad32:	11 f4       	brne	.+4      	; 0xad38 <mtk_init+0x6e>
    ad34:	80 e0       	ldi	r24, 0x00	; 0
    ad36:	09 c0       	rjmp	.+18     	; 0xad4a <mtk_init+0x80>
    ad38:	10 e0       	ldi	r17, 0x00	; 0
    ad3a:	0e 94 c6 1f 	call	0x3f8c	; 0x3f8c <getcount1ms>
    ad3e:	8e 19       	sub	r24, r14
    ad40:	9f 09       	sbc	r25, r15
    ad42:	80 5d       	subi	r24, 0xD0	; 208
    ad44:	97 40       	sbci	r25, 0x07	; 7
    ad46:	c8 f2       	brcs	.-78     	; 0xacfa <mtk_init+0x30>
    ad48:	85 e2       	ldi	r24, 0x25	; 37
    ad4a:	0f 90       	pop	r0
    ad4c:	cf 91       	pop	r28
    ad4e:	df 91       	pop	r29
    ad50:	1f 91       	pop	r17
    ad52:	ff 90       	pop	r15
    ad54:	ef 90       	pop	r14
    ad56:	df 90       	pop	r13
    ad58:	cf 90       	pop	r12
    ad5a:	08 95       	ret

0000ad5c <decode_gprmc>:
    ad5c:	a0 e1       	ldi	r26, 0x10	; 16
    ad5e:	b0 e0       	ldi	r27, 0x00	; 0
    ad60:	e4 eb       	ldi	r30, 0xB4	; 180
    ad62:	f6 e5       	ldi	r31, 0x56	; 86
    ad64:	0c 94 56 6d 	jmp	0xdaac	; 0xdaac <__prologue_saves__+0x1a>
    ad68:	84 ed       	ldi	r24, 0xD4	; 212
    ad6a:	93 e0       	ldi	r25, 0x03	; 3
    ad6c:	6c e2       	ldi	r22, 0x2C	; 44
    ad6e:	70 e0       	ldi	r23, 0x00	; 0
    ad70:	0e 94 1e 6e 	call	0xdc3c	; 0xdc3c <strchr>
    ad74:	00 97       	sbiw	r24, 0x00	; 0
    ad76:	09 f4       	brne	.+2      	; 0xad7a <decode_gprmc+0x1e>
    ad78:	97 c0       	rjmp	.+302    	; 0xaea8 <decode_gprmc+0x14c>
    ad7a:	8c 01       	movw	r16, r24
    ad7c:	0f 5f       	subi	r16, 0xFF	; 255
    ad7e:	1f 4f       	sbci	r17, 0xFF	; 255
    ad80:	ce 01       	movw	r24, r28
    ad82:	09 96       	adiw	r24, 0x09	; 9
    ad84:	b8 01       	movw	r22, r16
    ad86:	46 e0       	ldi	r20, 0x06	; 6
    ad88:	50 e0       	ldi	r21, 0x00	; 0
    ad8a:	0e 94 47 6e 	call	0xdc8e	; 0xdc8e <strncpy>
    ad8e:	c8 01       	movw	r24, r16
    ad90:	6c e2       	ldi	r22, 0x2C	; 44
    ad92:	70 e0       	ldi	r23, 0x00	; 0
    ad94:	0e 94 1e 6e 	call	0xdc3c	; 0xdc3c <strchr>
    ad98:	fc 01       	movw	r30, r24
    ad9a:	00 97       	sbiw	r24, 0x00	; 0
    ad9c:	09 f4       	brne	.+2      	; 0xada0 <decode_gprmc+0x44>
    ad9e:	84 c0       	rjmp	.+264    	; 0xaea8 <decode_gprmc+0x14c>
    ada0:	f1 80       	ldd	r15, Z+1	; 0x01
    ada2:	01 96       	adiw	r24, 0x01	; 1
    ada4:	6c e2       	ldi	r22, 0x2C	; 44
    ada6:	70 e0       	ldi	r23, 0x00	; 0
    ada8:	0e 94 1e 6e 	call	0xdc3c	; 0xdc3c <strchr>
    adac:	00 97       	sbiw	r24, 0x00	; 0
    adae:	09 f4       	brne	.+2      	; 0xadb2 <decode_gprmc+0x56>
    adb0:	7b c0       	rjmp	.+246    	; 0xaea8 <decode_gprmc+0x14c>
    adb2:	01 96       	adiw	r24, 0x01	; 1
    adb4:	6c e2       	ldi	r22, 0x2C	; 44
    adb6:	70 e0       	ldi	r23, 0x00	; 0
    adb8:	0e 94 1e 6e 	call	0xdc3c	; 0xdc3c <strchr>
    adbc:	00 97       	sbiw	r24, 0x00	; 0
    adbe:	09 f4       	brne	.+2      	; 0xadc2 <decode_gprmc+0x66>
    adc0:	73 c0       	rjmp	.+230    	; 0xaea8 <decode_gprmc+0x14c>
    adc2:	01 96       	adiw	r24, 0x01	; 1
    adc4:	6c e2       	ldi	r22, 0x2C	; 44
    adc6:	70 e0       	ldi	r23, 0x00	; 0
    adc8:	0e 94 1e 6e 	call	0xdc3c	; 0xdc3c <strchr>
    adcc:	00 97       	sbiw	r24, 0x00	; 0
    adce:	09 f4       	brne	.+2      	; 0xadd2 <decode_gprmc+0x76>
    add0:	6b c0       	rjmp	.+214    	; 0xaea8 <decode_gprmc+0x14c>
    add2:	01 96       	adiw	r24, 0x01	; 1
    add4:	6c e2       	ldi	r22, 0x2C	; 44
    add6:	70 e0       	ldi	r23, 0x00	; 0
    add8:	0e 94 1e 6e 	call	0xdc3c	; 0xdc3c <strchr>
    addc:	00 97       	sbiw	r24, 0x00	; 0
    adde:	09 f4       	brne	.+2      	; 0xade2 <decode_gprmc+0x86>
    ade0:	63 c0       	rjmp	.+198    	; 0xaea8 <decode_gprmc+0x14c>
    ade2:	01 96       	adiw	r24, 0x01	; 1
    ade4:	6c e2       	ldi	r22, 0x2C	; 44
    ade6:	70 e0       	ldi	r23, 0x00	; 0
    ade8:	0e 94 1e 6e 	call	0xdc3c	; 0xdc3c <strchr>
    adec:	00 97       	sbiw	r24, 0x00	; 0
    adee:	09 f4       	brne	.+2      	; 0xadf2 <decode_gprmc+0x96>
    adf0:	5b c0       	rjmp	.+182    	; 0xaea8 <decode_gprmc+0x14c>
    adf2:	01 96       	adiw	r24, 0x01	; 1
    adf4:	6c e2       	ldi	r22, 0x2C	; 44
    adf6:	70 e0       	ldi	r23, 0x00	; 0
    adf8:	0e 94 1e 6e 	call	0xdc3c	; 0xdc3c <strchr>
    adfc:	00 97       	sbiw	r24, 0x00	; 0
    adfe:	09 f4       	brne	.+2      	; 0xae02 <decode_gprmc+0xa6>
    ae00:	53 c0       	rjmp	.+166    	; 0xaea8 <decode_gprmc+0x14c>
    ae02:	01 96       	adiw	r24, 0x01	; 1
    ae04:	6c e2       	ldi	r22, 0x2C	; 44
    ae06:	70 e0       	ldi	r23, 0x00	; 0
    ae08:	0e 94 1e 6e 	call	0xdc3c	; 0xdc3c <strchr>
    ae0c:	8c 01       	movw	r16, r24
    ae0e:	00 97       	sbiw	r24, 0x00	; 0
    ae10:	09 f4       	brne	.+2      	; 0xae14 <decode_gprmc+0xb8>
    ae12:	4a c0       	rjmp	.+148    	; 0xaea8 <decode_gprmc+0x14c>
    ae14:	bc 01       	movw	r22, r24
    ae16:	6f 5f       	subi	r22, 0xFF	; 255
    ae18:	7f 4f       	sbci	r23, 0xFF	; 255
    ae1a:	ce 01       	movw	r24, r28
    ae1c:	07 96       	adiw	r24, 0x07	; 7
    ae1e:	42 e0       	ldi	r20, 0x02	; 2
    ae20:	50 e0       	ldi	r21, 0x00	; 0
    ae22:	0e 94 47 6e 	call	0xdc8e	; 0xdc8e <strncpy>
    ae26:	b8 01       	movw	r22, r16
    ae28:	6d 5f       	subi	r22, 0xFD	; 253
    ae2a:	7f 4f       	sbci	r23, 0xFF	; 255
    ae2c:	ce 01       	movw	r24, r28
    ae2e:	05 96       	adiw	r24, 0x05	; 5
    ae30:	42 e0       	ldi	r20, 0x02	; 2
    ae32:	50 e0       	ldi	r21, 0x00	; 0
    ae34:	0e 94 47 6e 	call	0xdc8e	; 0xdc8e <strncpy>
    ae38:	b8 01       	movw	r22, r16
    ae3a:	6b 5f       	subi	r22, 0xFB	; 251
    ae3c:	7f 4f       	sbci	r23, 0xFF	; 255
    ae3e:	ce 01       	movw	r24, r28
    ae40:	03 96       	adiw	r24, 0x03	; 3
    ae42:	42 e0       	ldi	r20, 0x02	; 2
    ae44:	50 e0       	ldi	r21, 0x00	; 0
    ae46:	0e 94 47 6e 	call	0xdc8e	; 0xdc8e <strncpy>
    ae4a:	f8 01       	movw	r30, r16
    ae4c:	85 81       	ldd	r24, Z+5	; 0x05
    ae4e:	87 33       	cpi	r24, 0x37	; 55
    ae50:	24 f0       	brlt	.+8      	; 0xae5a <decode_gprmc+0xfe>
    ae52:	81 e3       	ldi	r24, 0x31	; 49
    ae54:	89 83       	std	Y+1, r24	; 0x01
    ae56:	89 e3       	ldi	r24, 0x39	; 57
    ae58:	03 c0       	rjmp	.+6      	; 0xae60 <decode_gprmc+0x104>
    ae5a:	82 e3       	ldi	r24, 0x32	; 50
    ae5c:	89 83       	std	Y+1, r24	; 0x01
    ae5e:	80 e3       	ldi	r24, 0x30	; 48
    ae60:	8a 83       	std	Y+2, r24	; 0x02
    ae62:	ce 01       	movw	r24, r28
    ae64:	01 96       	adiw	r24, 0x01	; 1
    ae66:	61 e0       	ldi	r22, 0x01	; 1
    ae68:	70 e0       	ldi	r23, 0x00	; 0
    ae6a:	0e 94 56 54 	call	0xa8ac	; 0xa8ac <asc2datetime>
    ae6e:	88 23       	and	r24, r24
    ae70:	11 f4       	brne	.+4      	; 0xae76 <decode_gprmc+0x11a>
    ae72:	82 e2       	ldi	r24, 0x22	; 34
    ae74:	1a c0       	rjmp	.+52     	; 0xaeaa <decode_gprmc+0x14e>
    ae76:	f1 e4       	ldi	r31, 0x41	; 65
    ae78:	ff 16       	cp	r15, r31
    ae7a:	61 f4       	brne	.+24     	; 0xae94 <decode_gprmc+0x138>
    ae7c:	80 91 13 0c 	lds	r24, 0x0C13
    ae80:	88 23       	and	r24, r24
    ae82:	11 f0       	breq	.+4      	; 0xae88 <decode_gprmc+0x12c>
    ae84:	87 e0       	ldi	r24, 0x07	; 7
    ae86:	01 c0       	rjmp	.+2      	; 0xae8a <decode_gprmc+0x12e>
    ae88:	86 e0       	ldi	r24, 0x06	; 6
    ae8a:	80 93 ac 01 	sts	0x01AC, r24
    ae8e:	10 92 ab 01 	sts	0x01AB, r1
    ae92:	08 c0       	rjmp	.+16     	; 0xaea4 <decode_gprmc+0x148>
    ae94:	86 e5       	ldi	r24, 0x56	; 86
    ae96:	f8 16       	cp	r15, r24
    ae98:	39 f4       	brne	.+14     	; 0xaea8 <decode_gprmc+0x14c>
    ae9a:	88 e0       	ldi	r24, 0x08	; 8
    ae9c:	80 93 ac 01 	sts	0x01AC, r24
    aea0:	0e 94 bc 0c 	call	0x1978	; 0x1978 <unsync_seq>
    aea4:	80 e0       	ldi	r24, 0x00	; 0
    aea6:	01 c0       	rjmp	.+2      	; 0xaeaa <decode_gprmc+0x14e>
    aea8:	83 e2       	ldi	r24, 0x23	; 35
    aeaa:	60 96       	adiw	r28, 0x10	; 16
    aeac:	e5 e0       	ldi	r30, 0x05	; 5
    aeae:	0c 94 72 6d 	jmp	0xdae4	; 0xdae4 <__epilogue_restores__+0x1a>

0000aeb2 <decode_gpzda>:
    aeb2:	a0 e1       	ldi	r26, 0x10	; 16
    aeb4:	b0 e0       	ldi	r27, 0x00	; 0
    aeb6:	ef e5       	ldi	r30, 0x5F	; 95
    aeb8:	f7 e5       	ldi	r31, 0x57	; 87
    aeba:	0c 94 55 6d 	jmp	0xdaaa	; 0xdaaa <__prologue_saves__+0x18>
    aebe:	88 e0       	ldi	r24, 0x08	; 8
    aec0:	80 93 ac 01 	sts	0x01AC, r24
    aec4:	84 ed       	ldi	r24, 0xD4	; 212
    aec6:	93 e0       	ldi	r25, 0x03	; 3
    aec8:	6c e2       	ldi	r22, 0x2C	; 44
    aeca:	70 e0       	ldi	r23, 0x00	; 0
    aecc:	0e 94 1e 6e 	call	0xdc3c	; 0xdc3c <strchr>
    aed0:	00 97       	sbiw	r24, 0x00	; 0
    aed2:	91 f0       	breq	.+36     	; 0xaef8 <decode_gpzda+0x46>
    aed4:	8c 01       	movw	r16, r24
    aed6:	0f 5f       	subi	r16, 0xFF	; 255
    aed8:	1f 4f       	sbci	r17, 0xFF	; 255
    aeda:	ce 01       	movw	r24, r28
    aedc:	09 96       	adiw	r24, 0x09	; 9
    aede:	b8 01       	movw	r22, r16
    aee0:	46 e0       	ldi	r20, 0x06	; 6
    aee2:	50 e0       	ldi	r21, 0x00	; 0
    aee4:	0e 94 47 6e 	call	0xdc8e	; 0xdc8e <strncpy>
    aee8:	c8 01       	movw	r24, r16
    aeea:	6c e2       	ldi	r22, 0x2C	; 44
    aeec:	70 e0       	ldi	r23, 0x00	; 0
    aeee:	0e 94 1e 6e 	call	0xdc3c	; 0xdc3c <strchr>
    aef2:	7c 01       	movw	r14, r24
    aef4:	00 97       	sbiw	r24, 0x00	; 0
    aef6:	21 f4       	brne	.+8      	; 0xaf00 <decode_gpzda+0x4e>
    aef8:	0e 94 bc 0c 	call	0x1978	; 0x1978 <unsync_seq>
    aefc:	83 e2       	ldi	r24, 0x23	; 35
    aefe:	39 c0       	rjmp	.+114    	; 0xaf72 <decode_gpzda+0xc0>
    af00:	08 94       	sec
    af02:	e1 1c       	adc	r14, r1
    af04:	f1 1c       	adc	r15, r1
    af06:	ce 01       	movw	r24, r28
    af08:	07 96       	adiw	r24, 0x07	; 7
    af0a:	b7 01       	movw	r22, r14
    af0c:	42 e0       	ldi	r20, 0x02	; 2
    af0e:	50 e0       	ldi	r21, 0x00	; 0
    af10:	0e 94 47 6e 	call	0xdc8e	; 0xdc8e <strncpy>
    af14:	83 e0       	ldi	r24, 0x03	; 3
    af16:	90 e0       	ldi	r25, 0x00	; 0
    af18:	e8 0e       	add	r14, r24
    af1a:	f9 1e       	adc	r15, r25
    af1c:	ce 01       	movw	r24, r28
    af1e:	05 96       	adiw	r24, 0x05	; 5
    af20:	b7 01       	movw	r22, r14
    af22:	42 e0       	ldi	r20, 0x02	; 2
    af24:	50 e0       	ldi	r21, 0x00	; 0
    af26:	0e 94 47 6e 	call	0xdc8e	; 0xdc8e <strncpy>
    af2a:	83 e0       	ldi	r24, 0x03	; 3
    af2c:	90 e0       	ldi	r25, 0x00	; 0
    af2e:	e8 0e       	add	r14, r24
    af30:	f9 1e       	adc	r15, r25
    af32:	8e 01       	movw	r16, r28
    af34:	0f 5f       	subi	r16, 0xFF	; 255
    af36:	1f 4f       	sbci	r17, 0xFF	; 255
    af38:	c8 01       	movw	r24, r16
    af3a:	b7 01       	movw	r22, r14
    af3c:	44 e0       	ldi	r20, 0x04	; 4
    af3e:	50 e0       	ldi	r21, 0x00	; 0
    af40:	0e 94 47 6e 	call	0xdc8e	; 0xdc8e <strncpy>
    af44:	c8 01       	movw	r24, r16
    af46:	61 e0       	ldi	r22, 0x01	; 1
    af48:	70 e0       	ldi	r23, 0x00	; 0
    af4a:	0e 94 56 54 	call	0xa8ac	; 0xa8ac <asc2datetime>
    af4e:	88 23       	and	r24, r24
    af50:	21 f4       	brne	.+8      	; 0xaf5a <decode_gpzda+0xa8>
    af52:	0e 94 bc 0c 	call	0x1978	; 0x1978 <unsync_seq>
    af56:	82 e2       	ldi	r24, 0x22	; 34
    af58:	0c c0       	rjmp	.+24     	; 0xaf72 <decode_gpzda+0xc0>
    af5a:	80 91 13 0c 	lds	r24, 0x0C13
    af5e:	88 23       	and	r24, r24
    af60:	11 f0       	breq	.+4      	; 0xaf66 <decode_gpzda+0xb4>
    af62:	87 e0       	ldi	r24, 0x07	; 7
    af64:	01 c0       	rjmp	.+2      	; 0xaf68 <decode_gpzda+0xb6>
    af66:	86 e0       	ldi	r24, 0x06	; 6
    af68:	80 93 ac 01 	sts	0x01AC, r24
    af6c:	10 92 ab 01 	sts	0x01AB, r1
    af70:	80 e0       	ldi	r24, 0x00	; 0
    af72:	60 96       	adiw	r28, 0x10	; 16
    af74:	e6 e0       	ldi	r30, 0x06	; 6
    af76:	0c 94 71 6d 	jmp	0xdae2	; 0xdae2 <__epilogue_restores__+0x18>

0000af7a <nmea_checksum>:
    af7a:	fc 01       	movw	r30, r24
    af7c:	80 81       	ld	r24, Z
    af7e:	91 81       	ldd	r25, Z+1	; 0x01
    af80:	9a 32       	cpi	r25, 0x2A	; 42
    af82:	39 f0       	breq	.+14     	; 0xaf92 <nmea_checksum+0x18>
    af84:	9a 30       	cpi	r25, 0x0A	; 10
    af86:	29 f0       	breq	.+10     	; 0xaf92 <nmea_checksum+0x18>
    af88:	31 96       	adiw	r30, 0x01	; 1
    af8a:	99 23       	and	r25, r25
    af8c:	11 f0       	breq	.+4      	; 0xaf92 <nmea_checksum+0x18>
    af8e:	89 27       	eor	r24, r25
    af90:	f6 cf       	rjmp	.-20     	; 0xaf7e <nmea_checksum+0x4>
    af92:	0e 94 97 3e 	call	0x7d2e	; 0x7d2e <uctoahz>
    af96:	08 95       	ret

0000af98 <gps_process>:
    af98:	a5 e0       	ldi	r26, 0x05	; 5
    af9a:	b0 e0       	ldi	r27, 0x00	; 0
    af9c:	e2 ed       	ldi	r30, 0xD2	; 210
    af9e:	f7 e5       	ldi	r31, 0x57	; 87
    afa0:	0c 94 59 6d 	jmp	0xdab2	; 0xdab2 <__prologue_saves__+0x20>
    afa4:	80 91 57 04 	lds	r24, 0x0457
    afa8:	90 91 58 04 	lds	r25, 0x0458
    afac:	89 2b       	or	r24, r25
    afae:	d1 f4       	brne	.+52     	; 0xafe4 <gps_process+0x4c>
    afb0:	ce 01       	movw	r24, r28
    afb2:	01 96       	adiw	r24, 0x01	; 1
    afb4:	0e 94 e3 1f 	call	0x3fc6	; 0x3fc6 <sio_getchar>
    afb8:	81 30       	cpi	r24, 0x01	; 1
    afba:	09 f0       	breq	.+2      	; 0xafbe <gps_process+0x26>
    afbc:	fc c0       	rjmp	.+504    	; 0xb1b6 <gps_process+0x21e>
    afbe:	89 81       	ldd	r24, Y+1	; 0x01
    afc0:	84 32       	cpi	r24, 0x24	; 36
    afc2:	09 f0       	breq	.+2      	; 0xafc6 <gps_process+0x2e>
    afc4:	f8 c0       	rjmp	.+496    	; 0xb1b6 <gps_process+0x21e>
    afc6:	0e 94 c6 1f 	call	0x3f8c	; 0x3f8c <getcount1ms>
    afca:	90 93 56 04 	sts	0x0456, r25
    afce:	80 93 55 04 	sts	0x0455, r24
    afd2:	81 e0       	ldi	r24, 0x01	; 1
    afd4:	90 e0       	ldi	r25, 0x00	; 0
    afd6:	90 93 58 04 	sts	0x0458, r25
    afda:	80 93 57 04 	sts	0x0457, r24
    afde:	10 92 54 04 	sts	0x0454, r1
    afe2:	e9 c0       	rjmp	.+466    	; 0xb1b6 <gps_process+0x21e>
    afe4:	0e 94 14 20 	call	0x4028	; 0x4028 <sio_getstr>
    afe8:	81 30       	cpi	r24, 0x01	; 1
    afea:	09 f0       	breq	.+2      	; 0xafee <gps_process+0x56>
    afec:	d4 c0       	rjmp	.+424    	; 0xb196 <gps_process+0x1fe>
    afee:	80 91 cb 09 	lds	r24, 0x09CB
    aff2:	88 23       	and	r24, r24
    aff4:	09 f0       	breq	.+2      	; 0xaff8 <gps_process+0x60>
    aff6:	63 c0       	rjmp	.+198    	; 0xb0be <gps_process+0x126>
    aff8:	84 ed       	ldi	r24, 0xD4	; 212
    affa:	93 e0       	ldi	r25, 0x03	; 3
    affc:	6f e8       	ldi	r22, 0x8F	; 143
    affe:	74 e1       	ldi	r23, 0x14	; 20
    b000:	4a e0       	ldi	r20, 0x0A	; 10
    b002:	50 e0       	ldi	r21, 0x00	; 0
    b004:	0e 94 c9 6d 	call	0xdb92	; 0xdb92 <strncmp_P>
    b008:	89 2b       	or	r24, r25
    b00a:	09 f0       	breq	.+2      	; 0xb00e <gps_process+0x76>
    b00c:	d4 c0       	rjmp	.+424    	; 0xb1b6 <gps_process+0x21e>
    b00e:	90 91 df 03 	lds	r25, 0x03DF
    b012:	99 33       	cpi	r25, 0x39	; 57
    b014:	31 f4       	brne	.+12     	; 0xb022 <gps_process+0x8a>
    b016:	81 e3       	ldi	r24, 0x31	; 49
    b018:	80 93 dd 03 	sts	0x03DD, r24
    b01c:	90 93 de 03 	sts	0x03DE, r25
    b020:	06 c0       	rjmp	.+12     	; 0xb02e <gps_process+0x96>
    b022:	82 e3       	ldi	r24, 0x32	; 50
    b024:	80 93 dd 03 	sts	0x03DD, r24
    b028:	80 e3       	ldi	r24, 0x30	; 48
    b02a:	80 93 de 03 	sts	0x03DE, r24
    b02e:	8d ed       	ldi	r24, 0xDD	; 221
    b030:	93 e0       	ldi	r25, 0x03	; 3
    b032:	62 e0       	ldi	r22, 0x02	; 2
    b034:	70 e0       	ldi	r23, 0x00	; 0
    b036:	0e 94 56 54 	call	0xa8ac	; 0xa8ac <asc2datetime>
    b03a:	81 30       	cpi	r24, 0x01	; 1
    b03c:	09 f0       	breq	.+2      	; 0xb040 <gps_process+0xa8>
    b03e:	bd c0       	rjmp	.+378    	; 0xb1ba <gps_process+0x222>
    b040:	10 92 fd 0b 	sts	0x0BFD, r1
    b044:	10 92 fc 0b 	sts	0x0BFC, r1
    b048:	f8 94       	cli
    b04a:	10 92 fd 0b 	sts	0x0BFD, r1
    b04e:	10 92 fc 0b 	sts	0x0BFC, r1
    b052:	80 91 0d 0c 	lds	r24, 0x0C0D
    b056:	90 91 0e 0c 	lds	r25, 0x0C0E
    b05a:	a0 91 0f 0c 	lds	r26, 0x0C0F
    b05e:	b0 91 10 0c 	lds	r27, 0x0C10
    b062:	80 93 ec 07 	sts	0x07EC, r24
    b066:	90 93 ed 07 	sts	0x07ED, r25
    b06a:	a0 93 ee 07 	sts	0x07EE, r26
    b06e:	b0 93 ef 07 	sts	0x07EF, r27
    b072:	80 93 fe 0b 	sts	0x0BFE, r24
    b076:	90 93 ff 0b 	sts	0x0BFF, r25
    b07a:	a0 93 00 0c 	sts	0x0C00, r26
    b07e:	b0 93 01 0c 	sts	0x0C01, r27
    b082:	78 94       	sei
    b084:	80 91 ec 03 	lds	r24, 0x03EC
    b088:	81 33       	cpi	r24, 0x31	; 49
    b08a:	11 f4       	brne	.+4      	; 0xb090 <gps_process+0xf8>
    b08c:	84 e0       	ldi	r24, 0x04	; 4
    b08e:	0c c0       	rjmp	.+24     	; 0xb0a8 <gps_process+0x110>
    b090:	82 33       	cpi	r24, 0x32	; 50
    b092:	11 f4       	brne	.+4      	; 0xb098 <gps_process+0x100>
    b094:	85 e0       	ldi	r24, 0x05	; 5
    b096:	08 c0       	rjmp	.+16     	; 0xb0a8 <gps_process+0x110>
    b098:	83 33       	cpi	r24, 0x33	; 51
    b09a:	09 f0       	breq	.+2      	; 0xb09e <gps_process+0x106>
    b09c:	8c c0       	rjmp	.+280    	; 0xb1b6 <gps_process+0x21e>
    b09e:	80 91 ee 03 	lds	r24, 0x03EE
    b0a2:	80 33       	cpi	r24, 0x30	; 48
    b0a4:	31 f4       	brne	.+12     	; 0xb0b2 <gps_process+0x11a>
    b0a6:	86 e0       	ldi	r24, 0x06	; 6
    b0a8:	80 93 ac 01 	sts	0x01AC, r24
    b0ac:	0e 94 bc 0c 	call	0x1978	; 0x1978 <unsync_seq>
    b0b0:	82 c0       	rjmp	.+260    	; 0xb1b6 <gps_process+0x21e>
    b0b2:	87 e0       	ldi	r24, 0x07	; 7
    b0b4:	80 93 ac 01 	sts	0x01AC, r24
    b0b8:	10 92 ab 01 	sts	0x01AB, r1
    b0bc:	7c c0       	rjmp	.+248    	; 0xb1b6 <gps_process+0x21e>
    b0be:	81 30       	cpi	r24, 0x01	; 1
    b0c0:	49 f4       	brne	.+18     	; 0xb0d4 <gps_process+0x13c>
    b0c2:	84 ed       	ldi	r24, 0xD4	; 212
    b0c4:	93 e0       	ldi	r25, 0x03	; 3
    b0c6:	69 e8       	ldi	r22, 0x89	; 137
    b0c8:	74 e1       	ldi	r23, 0x14	; 20
    b0ca:	45 e0       	ldi	r20, 0x05	; 5
    b0cc:	50 e0       	ldi	r21, 0x00	; 0
    b0ce:	0e 94 c9 6d 	call	0xdb92	; 0xdb92 <strncmp_P>
    b0d2:	5c c0       	rjmp	.+184    	; 0xb18c <gps_process+0x1f4>
    b0d4:	82 30       	cpi	r24, 0x02	; 2
    b0d6:	81 f5       	brne	.+96     	; 0xb138 <gps_process+0x1a0>
    b0d8:	84 ed       	ldi	r24, 0xD4	; 212
    b0da:	93 e0       	ldi	r25, 0x03	; 3
    b0dc:	be 01       	movw	r22, r28
    b0de:	6e 5f       	subi	r22, 0xFE	; 254
    b0e0:	7f 4f       	sbci	r23, 0xFF	; 255
    b0e2:	0e 94 bd 57 	call	0xaf7a	; 0xaf7a <nmea_checksum>
    b0e6:	84 ed       	ldi	r24, 0xD4	; 212
    b0e8:	93 e0       	ldi	r25, 0x03	; 3
    b0ea:	6a e2       	ldi	r22, 0x2A	; 42
    b0ec:	70 e0       	ldi	r23, 0x00	; 0
    b0ee:	0e 94 1e 6e 	call	0xdc3c	; 0xdc3c <strchr>
    b0f2:	fc 01       	movw	r30, r24
    b0f4:	91 81       	ldd	r25, Z+1	; 0x01
    b0f6:	8a 81       	ldd	r24, Y+2	; 0x02
    b0f8:	98 17       	cp	r25, r24
    b0fa:	09 f0       	breq	.+2      	; 0xb0fe <gps_process+0x166>
    b0fc:	5e c0       	rjmp	.+188    	; 0xb1ba <gps_process+0x222>
    b0fe:	92 81       	ldd	r25, Z+2	; 0x02
    b100:	8b 81       	ldd	r24, Y+3	; 0x03
    b102:	98 17       	cp	r25, r24
    b104:	09 f0       	breq	.+2      	; 0xb108 <gps_process+0x170>
    b106:	59 c0       	rjmp	.+178    	; 0xb1ba <gps_process+0x222>
    b108:	84 ed       	ldi	r24, 0xD4	; 212
    b10a:	93 e0       	ldi	r25, 0x03	; 3
    b10c:	63 e8       	ldi	r22, 0x83	; 131
    b10e:	74 e1       	ldi	r23, 0x14	; 20
    b110:	45 e0       	ldi	r20, 0x05	; 5
    b112:	50 e0       	ldi	r21, 0x00	; 0
    b114:	0e 94 c9 6d 	call	0xdb92	; 0xdb92 <strncmp_P>
    b118:	89 2b       	or	r24, r25
    b11a:	59 f0       	breq	.+22     	; 0xb132 <gps_process+0x19a>
    b11c:	84 ed       	ldi	r24, 0xD4	; 212
    b11e:	93 e0       	ldi	r25, 0x03	; 3
    b120:	6d e7       	ldi	r22, 0x7D	; 125
    b122:	74 e1       	ldi	r23, 0x14	; 20
    b124:	45 e0       	ldi	r20, 0x05	; 5
    b126:	50 e0       	ldi	r21, 0x00	; 0
    b128:	0e 94 c9 6d 	call	0xdb92	; 0xdb92 <strncmp_P>
    b12c:	89 2b       	or	r24, r25
    b12e:	09 f0       	breq	.+2      	; 0xb132 <gps_process+0x19a>
    b130:	42 c0       	rjmp	.+132    	; 0xb1b6 <gps_process+0x21e>
    b132:	0e 94 ae 56 	call	0xad5c	; 0xad5c <decode_gprmc>
    b136:	42 c0       	rjmp	.+132    	; 0xb1bc <gps_process+0x224>
    b138:	83 30       	cpi	r24, 0x03	; 3
    b13a:	e9 f5       	brne	.+122    	; 0xb1b6 <gps_process+0x21e>
    b13c:	84 ed       	ldi	r24, 0xD4	; 212
    b13e:	93 e0       	ldi	r25, 0x03	; 3
    b140:	be 01       	movw	r22, r28
    b142:	6e 5f       	subi	r22, 0xFE	; 254
    b144:	7f 4f       	sbci	r23, 0xFF	; 255
    b146:	0e 94 bd 57 	call	0xaf7a	; 0xaf7a <nmea_checksum>
    b14a:	84 ed       	ldi	r24, 0xD4	; 212
    b14c:	93 e0       	ldi	r25, 0x03	; 3
    b14e:	6a e2       	ldi	r22, 0x2A	; 42
    b150:	70 e0       	ldi	r23, 0x00	; 0
    b152:	0e 94 1e 6e 	call	0xdc3c	; 0xdc3c <strchr>
    b156:	fc 01       	movw	r30, r24
    b158:	91 81       	ldd	r25, Z+1	; 0x01
    b15a:	8a 81       	ldd	r24, Y+2	; 0x02
    b15c:	98 17       	cp	r25, r24
    b15e:	69 f5       	brne	.+90     	; 0xb1ba <gps_process+0x222>
    b160:	92 81       	ldd	r25, Z+2	; 0x02
    b162:	8b 81       	ldd	r24, Y+3	; 0x03
    b164:	98 17       	cp	r25, r24
    b166:	49 f5       	brne	.+82     	; 0xb1ba <gps_process+0x222>
    b168:	84 ed       	ldi	r24, 0xD4	; 212
    b16a:	93 e0       	ldi	r25, 0x03	; 3
    b16c:	67 e7       	ldi	r22, 0x77	; 119
    b16e:	74 e1       	ldi	r23, 0x14	; 20
    b170:	45 e0       	ldi	r20, 0x05	; 5
    b172:	50 e0       	ldi	r21, 0x00	; 0
    b174:	0e 94 c9 6d 	call	0xdb92	; 0xdb92 <strncmp_P>
    b178:	89 2b       	or	r24, r25
    b17a:	51 f0       	breq	.+20     	; 0xb190 <gps_process+0x1f8>
    b17c:	84 ed       	ldi	r24, 0xD4	; 212
    b17e:	93 e0       	ldi	r25, 0x03	; 3
    b180:	61 e7       	ldi	r22, 0x71	; 113
    b182:	74 e1       	ldi	r23, 0x14	; 20
    b184:	45 e0       	ldi	r20, 0x05	; 5
    b186:	50 e0       	ldi	r21, 0x00	; 0
    b188:	0e 94 c9 6d 	call	0xdb92	; 0xdb92 <strncmp_P>
    b18c:	89 2b       	or	r24, r25
    b18e:	99 f4       	brne	.+38     	; 0xb1b6 <gps_process+0x21e>
    b190:	0e 94 59 57 	call	0xaeb2	; 0xaeb2 <decode_gpzda>
    b194:	13 c0       	rjmp	.+38     	; 0xb1bc <gps_process+0x224>
    b196:	0e 94 c6 1f 	call	0x3f8c	; 0x3f8c <getcount1ms>
    b19a:	20 91 55 04 	lds	r18, 0x0455
    b19e:	30 91 56 04 	lds	r19, 0x0456
    b1a2:	82 1b       	sub	r24, r18
    b1a4:	93 0b       	sbc	r25, r19
    b1a6:	88 5e       	subi	r24, 0xE8	; 232
    b1a8:	93 40       	sbci	r25, 0x03	; 3
    b1aa:	28 f0       	brcs	.+10     	; 0xb1b6 <gps_process+0x21e>
    b1ac:	10 92 58 04 	sts	0x0458, r1
    b1b0:	10 92 57 04 	sts	0x0457, r1
    b1b4:	02 c0       	rjmp	.+4      	; 0xb1ba <gps_process+0x222>
    b1b6:	80 e0       	ldi	r24, 0x00	; 0
    b1b8:	01 c0       	rjmp	.+2      	; 0xb1bc <gps_process+0x224>
    b1ba:	82 e2       	ldi	r24, 0x22	; 34
    b1bc:	25 96       	adiw	r28, 0x05	; 5
    b1be:	e2 e0       	ldi	r30, 0x02	; 2
    b1c0:	0c 94 75 6d 	jmp	0xdaea	; 0xdaea <__epilogue_restores__+0x20>

0000b1c4 <timer2str>:
    b1c4:	a4 e0       	ldi	r26, 0x04	; 4
    b1c6:	b0 e0       	ldi	r27, 0x00	; 0
    b1c8:	e8 ee       	ldi	r30, 0xE8	; 232
    b1ca:	f8 e5       	ldi	r31, 0x58	; 88
    b1cc:	0c 94 51 6d 	jmp	0xdaa2	; 0xdaa2 <__prologue_saves__+0x10>
    b1d0:	5c 01       	movw	r10, r24
    b1d2:	6b 01       	movw	r12, r22
    b1d4:	cb 01       	movw	r24, r22
    b1d6:	6b ef       	ldi	r22, 0xFB	; 251
    b1d8:	74 e1       	ldi	r23, 0x14	; 20
    b1da:	0e 94 b9 6d 	call	0xdb72	; 0xdb72 <strcpy_P>
    b1de:	f5 01       	movw	r30, r10
    b1e0:	81 81       	ldd	r24, Z+1	; 0x01
    b1e2:	8e 01       	movw	r16, r28
    b1e4:	0f 5f       	subi	r16, 0xFF	; 255
    b1e6:	1f 4f       	sbci	r17, 0xFF	; 255
    b1e8:	b8 01       	movw	r22, r16
    b1ea:	0e 94 27 3f 	call	0x7e4e	; 0x7e4e <uctoaz>
    b1ee:	82 e0       	ldi	r24, 0x02	; 2
    b1f0:	e8 2e       	mov	r14, r24
    b1f2:	f1 2c       	mov	r15, r1
    b1f4:	ec 0e       	add	r14, r28
    b1f6:	fd 1e       	adc	r15, r29
    b1f8:	c6 01       	movw	r24, r12
    b1fa:	b7 01       	movw	r22, r14
    b1fc:	42 e0       	ldi	r20, 0x02	; 2
    b1fe:	50 e0       	ldi	r21, 0x00	; 0
    b200:	0e 94 47 6e 	call	0xdc8e	; 0xdc8e <strncpy>
    b204:	f5 01       	movw	r30, r10
    b206:	82 81       	ldd	r24, Z+2	; 0x02
    b208:	b8 01       	movw	r22, r16
    b20a:	0e 94 27 3f 	call	0x7e4e	; 0x7e4e <uctoaz>
    b20e:	c6 01       	movw	r24, r12
    b210:	03 96       	adiw	r24, 0x03	; 3
    b212:	b7 01       	movw	r22, r14
    b214:	42 e0       	ldi	r20, 0x02	; 2
    b216:	50 e0       	ldi	r21, 0x00	; 0
    b218:	0e 94 47 6e 	call	0xdc8e	; 0xdc8e <strncpy>
    b21c:	f5 01       	movw	r30, r10
    b21e:	83 81       	ldd	r24, Z+3	; 0x03
    b220:	b8 01       	movw	r22, r16
    b222:	0e 94 27 3f 	call	0x7e4e	; 0x7e4e <uctoaz>
    b226:	c6 01       	movw	r24, r12
    b228:	06 96       	adiw	r24, 0x06	; 6
    b22a:	b7 01       	movw	r22, r14
    b22c:	42 e0       	ldi	r20, 0x02	; 2
    b22e:	50 e0       	ldi	r21, 0x00	; 0
    b230:	0e 94 47 6e 	call	0xdc8e	; 0xdc8e <strncpy>
    b234:	24 96       	adiw	r28, 0x04	; 4
    b236:	ea e0       	ldi	r30, 0x0A	; 10
    b238:	0c 94 6d 6d 	jmp	0xdada	; 0xdada <__epilogue_restores__+0x10>

0000b23c <setwday>:
    b23c:	af 92       	push	r10
    b23e:	bf 92       	push	r11
    b240:	df 92       	push	r13
    b242:	ef 92       	push	r14
    b244:	ff 92       	push	r15
    b246:	0f 93       	push	r16
    b248:	1f 93       	push	r17
    b24a:	cf 93       	push	r28
    b24c:	df 93       	push	r29
    b24e:	d8 2e       	mov	r13, r24
    b250:	7b 01       	movw	r14, r22
    b252:	fb 01       	movw	r30, r22
    b254:	10 81       	ld	r17, Z
    b256:	89 e0       	ldi	r24, 0x09	; 9
    b258:	6d 2d       	mov	r22, r13
    b25a:	0e 94 17 1f 	call	0x3e2e	; 0x3e2e <lcd_print>
    b25e:	a8 95       	wdr
    b260:	4a 9b       	sbis	0x09, 2	; 9
    b262:	fd cf       	rjmp	.-6      	; 0xb25e <setwday+0x22>
    b264:	01 2f       	mov	r16, r17
    b266:	81 e0       	ldi	r24, 0x01	; 1
    b268:	0e 94 8b 1e 	call	0x3d16	; 0x3d16 <lcd_dispcursor>
    b26c:	19 e0       	ldi	r17, 0x09	; 9
    b26e:	c0 e0       	ldi	r28, 0x00	; 0
    b270:	d0 e0       	ldi	r29, 0x00	; 0
    b272:	91 e0       	ldi	r25, 0x01	; 1
    b274:	a9 2e       	mov	r10, r25
    b276:	b1 2c       	mov	r11, r1
    b278:	01 c0       	rjmp	.+2      	; 0xb27c <setwday+0x40>
    b27a:	1f 5f       	subi	r17, 0xFF	; 255
    b27c:	81 2f       	mov	r24, r17
    b27e:	6d 2d       	mov	r22, r13
    b280:	0e 94 ae 1e 	call	0x3d5c	; 0x3d5c <lcd_locate>
    b284:	80 2f       	mov	r24, r16
    b286:	99 27       	eor	r25, r25
    b288:	87 fd       	sbrc	r24, 7
    b28a:	90 95       	com	r25
    b28c:	0c 2e       	mov	r0, r28
    b28e:	02 c0       	rjmp	.+4      	; 0xb294 <setwday+0x58>
    b290:	95 95       	asr	r25
    b292:	87 95       	ror	r24
    b294:	0a 94       	dec	r0
    b296:	e2 f7       	brpl	.-8      	; 0xb290 <setwday+0x54>
    b298:	80 fd       	sbrc	r24, 0
    b29a:	02 c0       	rjmp	.+4      	; 0xb2a0 <setwday+0x64>
    b29c:	80 e2       	ldi	r24, 0x20	; 32
    b29e:	04 c0       	rjmp	.+8      	; 0xb2a8 <setwday+0x6c>
    b2a0:	fe 01       	movw	r30, r28
    b2a2:	ec 51       	subi	r30, 0x1C	; 28
    b2a4:	fb 4e       	sbci	r31, 0xEB	; 235
    b2a6:	84 91       	lpm	r24, Z+
    b2a8:	0e 94 55 1e 	call	0x3caa	; 0x3caa <lcd_putch>
    b2ac:	0e 94 7d 1e 	call	0x3cfa	; 0x3cfa <lcd_curleft>
    b2b0:	0e 94 95 20 	call	0x412a	; 0x412a <key_input>
    b2b4:	81 31       	cpi	r24, 0x11	; 17
    b2b6:	49 f4       	brne	.+18     	; 0xb2ca <setwday+0x8e>
    b2b8:	c5 01       	movw	r24, r10
    b2ba:	0c 2e       	mov	r0, r28
    b2bc:	02 c0       	rjmp	.+4      	; 0xb2c2 <setwday+0x86>
    b2be:	88 0f       	add	r24, r24
    b2c0:	99 1f       	adc	r25, r25
    b2c2:	0a 94       	dec	r0
    b2c4:	e2 f7       	brpl	.-8      	; 0xb2be <setwday+0x82>
    b2c6:	08 27       	eor	r16, r24
    b2c8:	d9 cf       	rjmp	.-78     	; 0xb27c <setwday+0x40>
    b2ca:	83 31       	cpi	r24, 0x13	; 19
    b2cc:	41 f4       	brne	.+16     	; 0xb2de <setwday+0xa2>
    b2ce:	21 96       	adiw	r28, 0x01	; 1
    b2d0:	c7 30       	cpi	r28, 0x07	; 7
    b2d2:	d1 05       	cpc	r29, r1
    b2d4:	94 f2       	brlt	.-92     	; 0xb27a <setwday+0x3e>
    b2d6:	19 e0       	ldi	r17, 0x09	; 9
    b2d8:	c0 e0       	ldi	r28, 0x00	; 0
    b2da:	d0 e0       	ldi	r29, 0x00	; 0
    b2dc:	cf cf       	rjmp	.-98     	; 0xb27c <setwday+0x40>
    b2de:	84 31       	cpi	r24, 0x14	; 20
    b2e0:	29 f4       	brne	.+10     	; 0xb2ec <setwday+0xb0>
    b2e2:	f7 01       	movw	r30, r14
    b2e4:	00 83       	st	Z, r16
    b2e6:	c1 e0       	ldi	r28, 0x01	; 1
    b2e8:	d0 e0       	ldi	r29, 0x00	; 0
    b2ea:	04 c0       	rjmp	.+8      	; 0xb2f4 <setwday+0xb8>
    b2ec:	89 31       	cpi	r24, 0x19	; 25
    b2ee:	31 f6       	brne	.-116    	; 0xb27c <setwday+0x40>
    b2f0:	c0 e0       	ldi	r28, 0x00	; 0
    b2f2:	d0 e0       	ldi	r29, 0x00	; 0
    b2f4:	80 e0       	ldi	r24, 0x00	; 0
    b2f6:	0e 94 8b 1e 	call	0x3d16	; 0x3d16 <lcd_dispcursor>
    b2fa:	ce 01       	movw	r24, r28
    b2fc:	df 91       	pop	r29
    b2fe:	cf 91       	pop	r28
    b300:	1f 91       	pop	r17
    b302:	0f 91       	pop	r16
    b304:	ff 90       	pop	r15
    b306:	ef 90       	pop	r14
    b308:	df 90       	pop	r13
    b30a:	bf 90       	pop	r11
    b30c:	af 90       	pop	r10
    b30e:	08 95       	ret

0000b310 <settime>:
    b310:	a0 e0       	ldi	r26, 0x00	; 0
    b312:	b0 e0       	ldi	r27, 0x00	; 0
    b314:	ee e8       	ldi	r30, 0x8E	; 142
    b316:	f9 e5       	ldi	r31, 0x59	; 89
    b318:	0c 94 4e 6d 	jmp	0xda9c	; 0xda9c <__prologue_saves__+0xa>
    b31c:	78 2e       	mov	r7, r24
    b31e:	5b 01       	movw	r10, r22
    b320:	88 e0       	ldi	r24, 0x08	; 8
    b322:	67 2d       	mov	r22, r7
    b324:	a5 01       	movw	r20, r10
    b326:	0e 94 17 1f 	call	0x3e2e	; 0x3e2e <lcd_print>
    b32a:	f5 01       	movw	r30, r10
    b32c:	10 86       	std	Z+8, r1	; 0x08
    b32e:	90 81       	ld	r25, Z
    b330:	89 2f       	mov	r24, r25
    b332:	80 53       	subi	r24, 0x30	; 48
    b334:	8a 30       	cpi	r24, 0x0A	; 10
    b336:	40 f0       	brcs	.+16     	; 0xb348 <settime+0x38>
    b338:	89 2f       	mov	r24, r25
    b33a:	81 54       	subi	r24, 0x41	; 65
    b33c:	86 30       	cpi	r24, 0x06	; 6
    b33e:	10 f0       	brcs	.+4      	; 0xb344 <settime+0x34>
    b340:	80 e0       	ldi	r24, 0x00	; 0
    b342:	02 c0       	rjmp	.+4      	; 0xb348 <settime+0x38>
    b344:	89 2f       	mov	r24, r25
    b346:	87 53       	subi	r24, 0x37	; 55
    b348:	a8 95       	wdr
    b34a:	4a 9b       	sbis	0x09, 2	; 9
    b34c:	fd cf       	rjmp	.-6      	; 0xb348 <settime+0x38>
    b34e:	c8 2f       	mov	r28, r24
    b350:	dd 27       	eor	r29, r29
    b352:	c7 fd       	sbrc	r28, 7
    b354:	d0 95       	com	r29
    b356:	81 e0       	ldi	r24, 0x01	; 1
    b358:	0e 94 8b 1e 	call	0x3d16	; 0x3d16 <lcd_dispcursor>
    b35c:	78 e0       	ldi	r23, 0x08	; 8
    b35e:	c7 2e       	mov	r12, r23
    b360:	dd 24       	eor	r13, r13
    b362:	00 e0       	ldi	r16, 0x00	; 0
    b364:	10 e0       	ldi	r17, 0x00	; 0
    b366:	45 01       	movw	r8, r10
    b368:	80 0e       	add	r8, r16
    b36a:	91 1e       	adc	r9, r17
    b36c:	8c 2d       	mov	r24, r12
    b36e:	67 2d       	mov	r22, r7
    b370:	0e 94 ae 1e 	call	0x3d5c	; 0x3d5c <lcd_locate>
    b374:	6c ed       	ldi	r22, 0xDC	; 220
    b376:	e6 2e       	mov	r14, r22
    b378:	64 e1       	ldi	r22, 0x14	; 20
    b37a:	f6 2e       	mov	r15, r22
    b37c:	e0 0e       	add	r14, r16
    b37e:	f1 1e       	adc	r15, r17
    b380:	f7 01       	movw	r30, r14
    b382:	84 91       	lpm	r24, Z+
    b384:	90 e0       	ldi	r25, 0x00	; 0
    b386:	8c 17       	cp	r24, r28
    b388:	9d 07       	cpc	r25, r29
    b38a:	1c f0       	brlt	.+6      	; 0xb392 <settime+0x82>
    b38c:	50 e3       	ldi	r21, 0x30	; 48
    b38e:	d5 2e       	mov	r13, r21
    b390:	dc 0e       	add	r13, r28
    b392:	8d 2d       	mov	r24, r13
    b394:	0e 94 55 1e 	call	0x3caa	; 0x3caa <lcd_putch>
    b398:	0e 94 7d 1e 	call	0x3cfa	; 0x3cfa <lcd_curleft>
    b39c:	0e 94 95 20 	call	0x412a	; 0x412a <key_input>
    b3a0:	81 31       	cpi	r24, 0x11	; 17
    b3a2:	61 f4       	brne	.+24     	; 0xb3bc <settime+0xac>
    b3a4:	21 96       	adiw	r28, 0x01	; 1
    b3a6:	f7 01       	movw	r30, r14
    b3a8:	84 91       	lpm	r24, Z+
    b3aa:	90 e0       	ldi	r25, 0x00	; 0
    b3ac:	8c 17       	cp	r24, r28
    b3ae:	9d 07       	cpc	r25, r29
    b3b0:	7c f4       	brge	.+30     	; 0xb3d0 <settime+0xc0>
    b3b2:	40 e3       	ldi	r20, 0x30	; 48
    b3b4:	d4 2e       	mov	r13, r20
    b3b6:	c0 e0       	ldi	r28, 0x00	; 0
    b3b8:	d0 e0       	ldi	r29, 0x00	; 0
    b3ba:	0d c0       	rjmp	.+26     	; 0xb3d6 <settime+0xc6>
    b3bc:	82 31       	cpi	r24, 0x12	; 18
    b3be:	71 f4       	brne	.+28     	; 0xb3dc <settime+0xcc>
    b3c0:	20 97       	sbiw	r28, 0x00	; 0
    b3c2:	29 f4       	brne	.+10     	; 0xb3ce <settime+0xbe>
    b3c4:	f7 01       	movw	r30, r14
    b3c6:	84 91       	lpm	r24, Z+
    b3c8:	c8 2f       	mov	r28, r24
    b3ca:	d0 e0       	ldi	r29, 0x00	; 0
    b3cc:	01 c0       	rjmp	.+2      	; 0xb3d0 <settime+0xc0>
    b3ce:	21 97       	sbiw	r28, 0x01	; 1
    b3d0:	30 e3       	ldi	r19, 0x30	; 48
    b3d2:	d3 2e       	mov	r13, r19
    b3d4:	dc 0e       	add	r13, r28
    b3d6:	f4 01       	movw	r30, r8
    b3d8:	d0 82       	st	Z, r13
    b3da:	c5 cf       	rjmp	.-118    	; 0xb366 <settime+0x56>
    b3dc:	83 31       	cpi	r24, 0x13	; 19
    b3de:	69 f5       	brne	.+90     	; 0xb43a <settime+0x12a>
    b3e0:	0f 5f       	subi	r16, 0xFF	; 255
    b3e2:	1f 4f       	sbci	r17, 0xFF	; 255
    b3e4:	c3 94       	inc	r12
    b3e6:	f5 01       	movw	r30, r10
    b3e8:	e0 0f       	add	r30, r16
    b3ea:	f1 1f       	adc	r31, r17
    b3ec:	80 81       	ld	r24, Z
    b3ee:	99 27       	eor	r25, r25
    b3f0:	87 fd       	sbrc	r24, 7
    b3f2:	90 95       	com	r25
    b3f4:	0e 94 80 6d 	call	0xdb00	; 0xdb00 <isalnum>
    b3f8:	89 2b       	or	r24, r25
    b3fa:	19 f4       	brne	.+6      	; 0xb402 <settime+0xf2>
    b3fc:	0f 5f       	subi	r16, 0xFF	; 255
    b3fe:	1f 4f       	sbci	r17, 0xFF	; 255
    b400:	c3 94       	inc	r12
    b402:	08 30       	cpi	r16, 0x08	; 8
    b404:	11 05       	cpc	r17, r1
    b406:	24 f0       	brlt	.+8      	; 0xb410 <settime+0x100>
    b408:	28 e0       	ldi	r18, 0x08	; 8
    b40a:	c2 2e       	mov	r12, r18
    b40c:	00 e0       	ldi	r16, 0x00	; 0
    b40e:	10 e0       	ldi	r17, 0x00	; 0
    b410:	f5 01       	movw	r30, r10
    b412:	e0 0f       	add	r30, r16
    b414:	f1 1f       	adc	r31, r17
    b416:	e0 81       	ld	r30, Z
    b418:	8e 2f       	mov	r24, r30
    b41a:	80 53       	subi	r24, 0x30	; 48
    b41c:	8a 30       	cpi	r24, 0x0A	; 10
    b41e:	40 f0       	brcs	.+16     	; 0xb430 <settime+0x120>
    b420:	8e 2f       	mov	r24, r30
    b422:	81 54       	subi	r24, 0x41	; 65
    b424:	86 30       	cpi	r24, 0x06	; 6
    b426:	10 f0       	brcs	.+4      	; 0xb42c <settime+0x11c>
    b428:	80 e0       	ldi	r24, 0x00	; 0
    b42a:	02 c0       	rjmp	.+4      	; 0xb430 <settime+0x120>
    b42c:	8e 2f       	mov	r24, r30
    b42e:	87 53       	subi	r24, 0x37	; 55
    b430:	c8 2f       	mov	r28, r24
    b432:	dd 27       	eor	r29, r29
    b434:	c7 fd       	sbrc	r28, 7
    b436:	d0 95       	com	r29
    b438:	96 cf       	rjmp	.-212    	; 0xb366 <settime+0x56>
    b43a:	84 31       	cpi	r24, 0x14	; 20
    b43c:	19 f4       	brne	.+6      	; 0xb444 <settime+0x134>
    b43e:	c1 e0       	ldi	r28, 0x01	; 1
    b440:	d0 e0       	ldi	r29, 0x00	; 0
    b442:	05 c0       	rjmp	.+10     	; 0xb44e <settime+0x13e>
    b444:	89 31       	cpi	r24, 0x19	; 25
    b446:	09 f0       	breq	.+2      	; 0xb44a <settime+0x13a>
    b448:	8e cf       	rjmp	.-228    	; 0xb366 <settime+0x56>
    b44a:	c0 e0       	ldi	r28, 0x00	; 0
    b44c:	d0 e0       	ldi	r29, 0x00	; 0
    b44e:	80 e0       	ldi	r24, 0x00	; 0
    b450:	0e 94 8b 1e 	call	0x3d16	; 0x3d16 <lcd_dispcursor>
    b454:	ce 01       	movw	r24, r28
    b456:	cd b7       	in	r28, 0x3d	; 61
    b458:	de b7       	in	r29, 0x3e	; 62
    b45a:	ed e0       	ldi	r30, 0x0D	; 13
    b45c:	0c 94 6a 6d 	jmp	0xdad4	; 0xdad4 <__epilogue_restores__+0xa>

0000b460 <str2timer>:
    b460:	a0 e0       	ldi	r26, 0x00	; 0
    b462:	b0 e0       	ldi	r27, 0x00	; 0
    b464:	e6 e3       	ldi	r30, 0x36	; 54
    b466:	fa e5       	ldi	r31, 0x5A	; 90
    b468:	0c 94 54 6d 	jmp	0xdaa8	; 0xdaa8 <__prologue_saves__+0x16>
    b46c:	ec 01       	movw	r28, r24
    b46e:	8b 01       	movw	r16, r22
    b470:	fb 01       	movw	r30, r22
    b472:	d0 80       	ld	r13, Z
    b474:	06 96       	adiw	r24, 0x06	; 6
    b476:	0e 94 e8 3f 	call	0x7fd0	; 0x7fd0 <_atoi>
    b47a:	e8 2e       	mov	r14, r24
    b47c:	fb e3       	ldi	r31, 0x3B	; 59
    b47e:	f8 17       	cp	r31, r24
    b480:	b8 f0       	brcs	.+46     	; 0xb4b0 <str2timer+0x50>
    b482:	1d 82       	std	Y+5, r1	; 0x05
    b484:	ce 01       	movw	r24, r28
    b486:	03 96       	adiw	r24, 0x03	; 3
    b488:	0e 94 e8 3f 	call	0x7fd0	; 0x7fd0 <_atoi>
    b48c:	f8 2e       	mov	r15, r24
    b48e:	8b e3       	ldi	r24, 0x3B	; 59
    b490:	8f 15       	cp	r24, r15
    b492:	70 f0       	brcs	.+28     	; 0xb4b0 <str2timer+0x50>
    b494:	1a 82       	std	Y+2, r1	; 0x02
    b496:	ce 01       	movw	r24, r28
    b498:	0e 94 e8 3f 	call	0x7fd0	; 0x7fd0 <_atoi>
    b49c:	88 31       	cpi	r24, 0x18	; 24
    b49e:	40 f4       	brcc	.+16     	; 0xb4b0 <str2timer+0x50>
    b4a0:	f8 01       	movw	r30, r16
    b4a2:	d0 82       	st	Z, r13
    b4a4:	81 83       	std	Z+1, r24	; 0x01
    b4a6:	f2 82       	std	Z+2, r15	; 0x02
    b4a8:	e3 82       	std	Z+3, r14	; 0x03
    b4aa:	21 e0       	ldi	r18, 0x01	; 1
    b4ac:	30 e0       	ldi	r19, 0x00	; 0
    b4ae:	02 c0       	rjmp	.+4      	; 0xb4b4 <str2timer+0x54>
    b4b0:	20 e0       	ldi	r18, 0x00	; 0
    b4b2:	30 e0       	ldi	r19, 0x00	; 0
    b4b4:	c9 01       	movw	r24, r18
    b4b6:	cd b7       	in	r28, 0x3d	; 61
    b4b8:	de b7       	in	r29, 0x3e	; 62
    b4ba:	e7 e0       	ldi	r30, 0x07	; 7
    b4bc:	0c 94 70 6d 	jmp	0xdae0	; 0xdae0 <__epilogue_restores__+0x16>

0000b4c0 <prm_setsegtimer>:
    b4c0:	a0 e3       	ldi	r26, 0x30	; 48
    b4c2:	b0 e0       	ldi	r27, 0x00	; 0
    b4c4:	e6 e6       	ldi	r30, 0x66	; 102
    b4c6:	fa e5       	ldi	r31, 0x5A	; 90
    b4c8:	0c 94 55 6d 	jmp	0xdaaa	; 0xdaaa <__prologue_saves__+0x18>
    b4cc:	80 91 f4 09 	lds	r24, 0x09F4
    b4d0:	90 91 f5 09 	lds	r25, 0x09F5
    b4d4:	a0 91 f6 09 	lds	r26, 0x09F6
    b4d8:	b0 91 f7 09 	lds	r27, 0x09F7
    b4dc:	80 93 27 0c 	sts	0x0C27, r24
    b4e0:	90 93 28 0c 	sts	0x0C28, r25
    b4e4:	a0 93 29 0c 	sts	0x0C29, r26
    b4e8:	b0 93 2a 0c 	sts	0x0C2A, r27
    b4ec:	80 91 f8 09 	lds	r24, 0x09F8
    b4f0:	90 91 f9 09 	lds	r25, 0x09F9
    b4f4:	a0 91 fa 09 	lds	r26, 0x09FA
    b4f8:	b0 91 fb 09 	lds	r27, 0x09FB
    b4fc:	80 93 2b 0c 	sts	0x0C2B, r24
    b500:	90 93 2c 0c 	sts	0x0C2C, r25
    b504:	a0 93 2d 0c 	sts	0x0C2D, r26
    b508:	b0 93 2e 0c 	sts	0x0C2E, r27
    b50c:	8e 01       	movw	r16, r28
    b50e:	0f 5e       	subi	r16, 0xEF	; 239
    b510:	1f 4f       	sbci	r17, 0xFF	; 255
    b512:	87 e2       	ldi	r24, 0x27	; 39
    b514:	9c e0       	ldi	r25, 0x0C	; 12
    b516:	b8 01       	movw	r22, r16
    b518:	0e 94 e2 58 	call	0xb1c4	; 0xb1c4 <timer2str>
    b51c:	e1 e2       	ldi	r30, 0x21	; 33
    b51e:	ee 2e       	mov	r14, r30
    b520:	f1 2c       	mov	r15, r1
    b522:	ec 0e       	add	r14, r28
    b524:	fd 1e       	adc	r15, r29
    b526:	8b e2       	ldi	r24, 0x2B	; 43
    b528:	9c e0       	ldi	r25, 0x0C	; 12
    b52a:	b7 01       	movw	r22, r14
    b52c:	0e 94 e2 58 	call	0xb1c4	; 0xb1c4 <timer2str>
    b530:	0e 94 a0 1e 	call	0x3d40	; 0x3d40 <lcd_cls>
    b534:	81 e0       	ldi	r24, 0x01	; 1
    b536:	60 e0       	ldi	r22, 0x00	; 0
    b538:	44 ef       	ldi	r20, 0xF4	; 244
    b53a:	54 e1       	ldi	r21, 0x14	; 20
    b53c:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    b540:	88 e0       	ldi	r24, 0x08	; 8
    b542:	60 e0       	ldi	r22, 0x00	; 0
    b544:	a8 01       	movw	r20, r16
    b546:	0e 94 17 1f 	call	0x3e2e	; 0x3e2e <lcd_print>
    b54a:	80 e0       	ldi	r24, 0x00	; 0
    b54c:	61 e0       	ldi	r22, 0x01	; 1
    b54e:	4c ee       	ldi	r20, 0xEC	; 236
    b550:	54 e1       	ldi	r21, 0x14	; 20
    b552:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    b556:	88 e0       	ldi	r24, 0x08	; 8
    b558:	61 e0       	ldi	r22, 0x01	; 1
    b55a:	a7 01       	movw	r20, r14
    b55c:	0e 94 17 1f 	call	0x3e2e	; 0x3e2e <lcd_print>
    b560:	80 e0       	ldi	r24, 0x00	; 0
    b562:	b8 01       	movw	r22, r16
    b564:	0e 94 88 59 	call	0xb310	; 0xb310 <settime>
    b568:	89 2b       	or	r24, r25
    b56a:	09 f4       	brne	.+2      	; 0xb56e <prm_setsegtimer+0xae>
    b56c:	95 c0       	rjmp	.+298    	; 0xb698 <prm_setsegtimer+0x1d8>
    b56e:	c8 01       	movw	r24, r16
    b570:	67 e2       	ldi	r22, 0x27	; 39
    b572:	7c e0       	ldi	r23, 0x0C	; 12
    b574:	0e 94 30 5a 	call	0xb460	; 0xb460 <str2timer>
    b578:	89 2b       	or	r24, r25
    b57a:	09 f4       	brne	.+2      	; 0xb57e <prm_setsegtimer+0xbe>
    b57c:	8d c0       	rjmp	.+282    	; 0xb698 <prm_setsegtimer+0x1d8>
    b57e:	81 e0       	ldi	r24, 0x01	; 1
    b580:	b7 01       	movw	r22, r14
    b582:	0e 94 88 59 	call	0xb310	; 0xb310 <settime>
    b586:	89 2b       	or	r24, r25
    b588:	09 f4       	brne	.+2      	; 0xb58c <prm_setsegtimer+0xcc>
    b58a:	86 c0       	rjmp	.+268    	; 0xb698 <prm_setsegtimer+0x1d8>
    b58c:	c7 01       	movw	r24, r14
    b58e:	6b e2       	ldi	r22, 0x2B	; 43
    b590:	7c e0       	ldi	r23, 0x0C	; 12
    b592:	0e 94 30 5a 	call	0xb460	; 0xb460 <str2timer>
    b596:	89 2b       	or	r24, r25
    b598:	09 f4       	brne	.+2      	; 0xb59c <prm_setsegtimer+0xdc>
    b59a:	7e c0       	rjmp	.+252    	; 0xb698 <prm_setsegtimer+0x1d8>
    b59c:	84 c0       	rjmp	.+264    	; 0xb6a6 <prm_setsegtimer+0x1e6>
    b59e:	95 95       	asr	r25
    b5a0:	0f 5f       	subi	r16, 0xFF	; 255
    b5a2:	1f 4f       	sbci	r17, 0xFF	; 255
    b5a4:	90 ff       	sbrs	r25, 0
    b5a6:	05 c0       	rjmp	.+10     	; 0xb5b2 <prm_setsegtimer+0xf2>
    b5a8:	f9 01       	movw	r30, r18
    b5aa:	84 91       	lpm	r24, Z+
    b5ac:	f8 01       	movw	r30, r16
    b5ae:	80 83       	st	Z, r24
    b5b0:	02 c0       	rjmp	.+4      	; 0xb5b6 <prm_setsegtimer+0xf6>
    b5b2:	f8 01       	movw	r30, r16
    b5b4:	a0 83       	st	Z, r26
    b5b6:	2f 5f       	subi	r18, 0xFF	; 255
    b5b8:	3f 4f       	sbci	r19, 0xFF	; 255
    b5ba:	06 17       	cp	r16, r22
    b5bc:	17 07       	cpc	r17, r23
    b5be:	79 f7       	brne	.-34     	; 0xb59e <prm_setsegtimer+0xde>
    b5c0:	20 91 2b 0c 	lds	r18, 0x0C2B
    b5c4:	de 01       	movw	r26, r28
    b5c6:	19 96       	adiw	r26, 0x09	; 9
    b5c8:	30 e2       	ldi	r19, 0x20	; 32
    b5ca:	cd 01       	movw	r24, r26
    b5cc:	fa 2e       	mov	r15, r26
    b5ce:	e9 2e       	mov	r14, r25
    b5d0:	be 01       	movw	r22, r28
    b5d2:	61 5f       	subi	r22, 0xF1	; 241
    b5d4:	7f 4f       	sbci	r23, 0xFF	; 255
    b5d6:	20 ff       	sbrs	r18, 0
    b5d8:	04 c0       	rjmp	.+8      	; 0xb5e2 <prm_setsegtimer+0x122>
    b5da:	fa 01       	movw	r30, r20
    b5dc:	84 91       	lpm	r24, Z+
    b5de:	8c 93       	st	X, r24
    b5e0:	01 c0       	rjmp	.+2      	; 0xb5e4 <prm_setsegtimer+0x124>
    b5e2:	3c 93       	st	X, r19
    b5e4:	4f 5f       	subi	r20, 0xFF	; 255
    b5e6:	5f 4f       	sbci	r21, 0xFF	; 255
    b5e8:	a6 17       	cp	r26, r22
    b5ea:	b7 07       	cpc	r27, r23
    b5ec:	19 f0       	breq	.+6      	; 0xb5f4 <prm_setsegtimer+0x134>
    b5ee:	25 95       	asr	r18
    b5f0:	11 96       	adiw	r26, 0x01	; 1
    b5f2:	f1 cf       	rjmp	.-30     	; 0xb5d6 <prm_setsegtimer+0x116>
    b5f4:	18 8a       	std	Y+16, r1	; 0x10
    b5f6:	18 86       	std	Y+8, r1	; 0x08
    b5f8:	0e 94 a0 1e 	call	0x3d40	; 0x3d40 <lcd_cls>
    b5fc:	80 e0       	ldi	r24, 0x00	; 0
    b5fe:	60 e0       	ldi	r22, 0x00	; 0
    b600:	4e e0       	ldi	r20, 0x0E	; 14
    b602:	55 e1       	ldi	r21, 0x15	; 21
    b604:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    b608:	89 e0       	ldi	r24, 0x09	; 9
    b60a:	60 e0       	ldi	r22, 0x00	; 0
    b60c:	8e 01       	movw	r16, r28
    b60e:	0f 5f       	subi	r16, 0xFF	; 255
    b610:	1f 4f       	sbci	r17, 0xFF	; 255
    b612:	a8 01       	movw	r20, r16
    b614:	0e 94 17 1f 	call	0x3e2e	; 0x3e2e <lcd_print>
    b618:	80 e0       	ldi	r24, 0x00	; 0
    b61a:	61 e0       	ldi	r22, 0x01	; 1
    b61c:	44 e0       	ldi	r20, 0x04	; 4
    b61e:	55 e1       	ldi	r21, 0x15	; 21
    b620:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    b624:	89 e0       	ldi	r24, 0x09	; 9
    b626:	61 e0       	ldi	r22, 0x01	; 1
    b628:	4f 2d       	mov	r20, r15
    b62a:	5e 2d       	mov	r21, r14
    b62c:	0e 94 17 1f 	call	0x3e2e	; 0x3e2e <lcd_print>
    b630:	80 e0       	ldi	r24, 0x00	; 0
    b632:	67 e2       	ldi	r22, 0x27	; 39
    b634:	7c e0       	ldi	r23, 0x0C	; 12
    b636:	a8 01       	movw	r20, r16
    b638:	0e 94 1e 59 	call	0xb23c	; 0xb23c <setwday>
    b63c:	89 2b       	or	r24, r25
    b63e:	61 f1       	breq	.+88     	; 0xb698 <prm_setsegtimer+0x1d8>
    b640:	81 e0       	ldi	r24, 0x01	; 1
    b642:	6b e2       	ldi	r22, 0x2B	; 43
    b644:	7c e0       	ldi	r23, 0x0C	; 12
    b646:	4f 2d       	mov	r20, r15
    b648:	5e 2d       	mov	r21, r14
    b64a:	0e 94 1e 59 	call	0xb23c	; 0xb23c <setwday>
    b64e:	89 2b       	or	r24, r25
    b650:	19 f1       	breq	.+70     	; 0xb698 <prm_setsegtimer+0x1d8>
    b652:	36 c0       	rjmp	.+108    	; 0xb6c0 <prm_setsegtimer+0x200>
    b654:	a8 95       	wdr
    b656:	f9 99       	sbic	0x1f, 1	; 31
    b658:	fd cf       	rjmp	.-6      	; 0xb654 <prm_setsegtimer+0x194>
    b65a:	40 91 f4 09 	lds	r20, 0x09F4
    b65e:	50 91 f5 09 	lds	r21, 0x09F5
    b662:	60 91 f6 09 	lds	r22, 0x09F6
    b666:	70 91 f7 09 	lds	r23, 0x09F7
    b66a:	80 ee       	ldi	r24, 0xE0	; 224
    b66c:	90 e0       	ldi	r25, 0x00	; 0
    b66e:	0e 94 94 6e 	call	0xdd28	; 0xdd28 <__eeupd_dword_m644a>
    b672:	01 c0       	rjmp	.+2      	; 0xb676 <prm_setsegtimer+0x1b6>
    b674:	a8 95       	wdr
    b676:	f9 99       	sbic	0x1f, 1	; 31
    b678:	fd cf       	rjmp	.-6      	; 0xb674 <prm_setsegtimer+0x1b4>
    b67a:	40 91 f8 09 	lds	r20, 0x09F8
    b67e:	50 91 f9 09 	lds	r21, 0x09F9
    b682:	60 91 fa 09 	lds	r22, 0x09FA
    b686:	70 91 fb 09 	lds	r23, 0x09FB
    b68a:	84 ee       	ldi	r24, 0xE4	; 228
    b68c:	90 e0       	ldi	r25, 0x00	; 0
    b68e:	0e 94 94 6e 	call	0xdd28	; 0xdd28 <__eeupd_dword_m644a>
    b692:	20 e0       	ldi	r18, 0x00	; 0
    b694:	30 e0       	ldi	r19, 0x00	; 0
    b696:	02 c0       	rjmp	.+4      	; 0xb69c <prm_setsegtimer+0x1dc>
    b698:	21 e0       	ldi	r18, 0x01	; 1
    b69a:	30 e0       	ldi	r19, 0x00	; 0
    b69c:	c9 01       	movw	r24, r18
    b69e:	e0 96       	adiw	r28, 0x30	; 48
    b6a0:	e6 e0       	ldi	r30, 0x06	; 6
    b6a2:	0c 94 71 6d 	jmp	0xdae2	; 0xdae2 <__epilogue_restores__+0x18>
    b6a6:	90 91 27 0c 	lds	r25, 0x0C27
    b6aa:	44 ee       	ldi	r20, 0xE4	; 228
    b6ac:	54 e1       	ldi	r21, 0x14	; 20
    b6ae:	9a 01       	movw	r18, r20
    b6b0:	8e 01       	movw	r16, r28
    b6b2:	0f 5f       	subi	r16, 0xFF	; 255
    b6b4:	1f 4f       	sbci	r17, 0xFF	; 255
    b6b6:	a0 e2       	ldi	r26, 0x20	; 32
    b6b8:	be 01       	movw	r22, r28
    b6ba:	69 5f       	subi	r22, 0xF9	; 249
    b6bc:	7f 4f       	sbci	r23, 0xFF	; 255
    b6be:	72 cf       	rjmp	.-284    	; 0xb5a4 <prm_setsegtimer+0xe4>
    b6c0:	80 91 27 0c 	lds	r24, 0x0C27
    b6c4:	90 91 28 0c 	lds	r25, 0x0C28
    b6c8:	a0 91 29 0c 	lds	r26, 0x0C29
    b6cc:	b0 91 2a 0c 	lds	r27, 0x0C2A
    b6d0:	80 93 f4 09 	sts	0x09F4, r24
    b6d4:	90 93 f5 09 	sts	0x09F5, r25
    b6d8:	a0 93 f6 09 	sts	0x09F6, r26
    b6dc:	b0 93 f7 09 	sts	0x09F7, r27
    b6e0:	80 91 2b 0c 	lds	r24, 0x0C2B
    b6e4:	90 91 2c 0c 	lds	r25, 0x0C2C
    b6e8:	a0 91 2d 0c 	lds	r26, 0x0C2D
    b6ec:	b0 91 2e 0c 	lds	r27, 0x0C2E
    b6f0:	80 93 f8 09 	sts	0x09F8, r24
    b6f4:	90 93 f9 09 	sts	0x09F9, r25
    b6f8:	a0 93 fa 09 	sts	0x09FA, r26
    b6fc:	b0 93 fb 09 	sts	0x09FB, r27
    b700:	aa cf       	rjmp	.-172    	; 0xb656 <prm_setsegtimer+0x196>

0000b702 <udp_command>:
    b702:	ac e2       	ldi	r26, 0x2C	; 44
    b704:	b0 e0       	ldi	r27, 0x00	; 0
    b706:	e7 e8       	ldi	r30, 0x87	; 135
    b708:	fb e5       	ldi	r31, 0x5B	; 91
    b70a:	0c 94 50 6d 	jmp	0xdaa0	; 0xdaa0 <__prologue_saves__+0xe>
    b70e:	80 91 78 04 	lds	r24, 0x0478
    b712:	90 91 79 04 	lds	r25, 0x0479
    b716:	0e 94 42 1a 	call	0x3484	; 0x3484 <enc_rxseek>
    b71a:	8a e2       	ldi	r24, 0x2A	; 42
    b71c:	90 e0       	ldi	r25, 0x00	; 0
    b71e:	0e 94 67 1a 	call	0x34ce	; 0x34ce <enc_txseek>
    b722:	8e 01       	movw	r16, r28
    b724:	03 5f       	subi	r16, 0xF3	; 243
    b726:	1f 4f       	sbci	r17, 0xFF	; 255
    b728:	c8 01       	movw	r24, r16
    b72a:	64 e0       	ldi	r22, 0x04	; 4
    b72c:	70 e0       	ldi	r23, 0x00	; 0
    b72e:	0e 94 7e 19 	call	0x32fc	; 0x32fc <enc_readbuffer>
    b732:	19 8a       	std	Y+17, r1	; 0x11
    b734:	c8 01       	movw	r24, r16
    b736:	64 e0       	ldi	r22, 0x04	; 4
    b738:	70 e0       	ldi	r23, 0x00	; 0
    b73a:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    b73e:	c8 01       	movw	r24, r16
    b740:	6a e8       	ldi	r22, 0x8A	; 138
    b742:	75 e1       	ldi	r23, 0x15	; 21
    b744:	0e 94 b0 6d 	call	0xdb60	; 0xdb60 <strcmp_P>
    b748:	89 2b       	or	r24, r25
    b74a:	09 f0       	breq	.+2      	; 0xb74e <udp_command+0x4c>
    b74c:	53 c0       	rjmp	.+166    	; 0xb7f4 <udp_command+0xf2>
    b74e:	8c e2       	ldi	r24, 0x2C	; 44
    b750:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    b754:	8e 01       	movw	r16, r28
    b756:	03 5e       	subi	r16, 0xE3	; 227
    b758:	1f 4f       	sbci	r17, 0xFF	; 255
    b75a:	80 91 55 01 	lds	r24, 0x0155
    b75e:	90 91 56 01 	lds	r25, 0x0156
    b762:	84 59       	subi	r24, 0x94	; 148
    b764:	98 4f       	sbci	r25, 0xF8	; 248
    b766:	b8 01       	movw	r22, r16
    b768:	0e 94 43 3f 	call	0x7e86	; 0x7e86 <ustoaz>
    b76c:	ce 01       	movw	r24, r28
    b76e:	4e 96       	adiw	r24, 0x1e	; 30
    b770:	64 e0       	ldi	r22, 0x04	; 4
    b772:	70 e0       	ldi	r23, 0x00	; 0
    b774:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    b778:	80 91 53 01 	lds	r24, 0x0153
    b77c:	90 91 54 01 	lds	r25, 0x0154
    b780:	01 96       	adiw	r24, 0x01	; 1
    b782:	b8 01       	movw	r22, r16
    b784:	0e 94 43 3f 	call	0x7e86	; 0x7e86 <ustoaz>
    b788:	60 e2       	ldi	r22, 0x20	; 32
    b78a:	e6 2e       	mov	r14, r22
    b78c:	f1 2c       	mov	r15, r1
    b78e:	ec 0e       	add	r14, r28
    b790:	fd 1e       	adc	r15, r29
    b792:	c7 01       	movw	r24, r14
    b794:	62 e0       	ldi	r22, 0x02	; 2
    b796:	70 e0       	ldi	r23, 0x00	; 0
    b798:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    b79c:	80 91 51 01 	lds	r24, 0x0151
    b7a0:	90 91 52 01 	lds	r25, 0x0152
    b7a4:	b8 01       	movw	r22, r16
    b7a6:	0e 94 43 3f 	call	0x7e86	; 0x7e86 <ustoaz>
    b7aa:	c7 01       	movw	r24, r14
    b7ac:	62 e0       	ldi	r22, 0x02	; 2
    b7ae:	70 e0       	ldi	r23, 0x00	; 0
    b7b0:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    b7b4:	8c e2       	ldi	r24, 0x2C	; 44
    b7b6:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    b7ba:	80 91 4f 01 	lds	r24, 0x014F
    b7be:	90 91 50 01 	lds	r25, 0x0150
    b7c2:	b8 01       	movw	r22, r16
    b7c4:	0e 94 43 3f 	call	0x7e86	; 0x7e86 <ustoaz>
    b7c8:	c7 01       	movw	r24, r14
    b7ca:	62 e0       	ldi	r22, 0x02	; 2
    b7cc:	70 e0       	ldi	r23, 0x00	; 0
    b7ce:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    b7d2:	80 91 4d 01 	lds	r24, 0x014D
    b7d6:	90 91 4e 01 	lds	r25, 0x014E
    b7da:	b8 01       	movw	r22, r16
    b7dc:	0e 94 43 3f 	call	0x7e86	; 0x7e86 <ustoaz>
    b7e0:	c7 01       	movw	r24, r14
    b7e2:	62 e0       	ldi	r22, 0x02	; 2
    b7e4:	70 e0       	ldi	r23, 0x00	; 0
    b7e6:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    b7ea:	80 91 4b 01 	lds	r24, 0x014B
    b7ee:	90 91 4c 01 	lds	r25, 0x014C
    b7f2:	5a c0       	rjmp	.+180    	; 0xb8a8 <udp_command+0x1a6>
    b7f4:	c8 01       	movw	r24, r16
    b7f6:	65 e8       	ldi	r22, 0x85	; 133
    b7f8:	75 e1       	ldi	r23, 0x15	; 21
    b7fa:	0e 94 b0 6d 	call	0xdb60	; 0xdb60 <strcmp_P>
    b7fe:	89 2b       	or	r24, r25
    b800:	09 f0       	breq	.+2      	; 0xb804 <udp_command+0x102>
    b802:	70 c0       	rjmp	.+224    	; 0xb8e4 <udp_command+0x1e2>
    b804:	8c e2       	ldi	r24, 0x2C	; 44
    b806:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    b80a:	8e 01       	movw	r16, r28
    b80c:	03 5e       	subi	r16, 0xE3	; 227
    b80e:	1f 4f       	sbci	r17, 0xFF	; 255
    b810:	80 91 67 01 	lds	r24, 0x0167
    b814:	90 91 68 01 	lds	r25, 0x0168
    b818:	84 59       	subi	r24, 0x94	; 148
    b81a:	98 4f       	sbci	r25, 0xF8	; 248
    b81c:	b8 01       	movw	r22, r16
    b81e:	0e 94 43 3f 	call	0x7e86	; 0x7e86 <ustoaz>
    b822:	ce 01       	movw	r24, r28
    b824:	4e 96       	adiw	r24, 0x1e	; 30
    b826:	64 e0       	ldi	r22, 0x04	; 4
    b828:	70 e0       	ldi	r23, 0x00	; 0
    b82a:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    b82e:	80 91 65 01 	lds	r24, 0x0165
    b832:	90 91 66 01 	lds	r25, 0x0166
    b836:	01 96       	adiw	r24, 0x01	; 1
    b838:	b8 01       	movw	r22, r16
    b83a:	0e 94 43 3f 	call	0x7e86	; 0x7e86 <ustoaz>
    b83e:	50 e2       	ldi	r21, 0x20	; 32
    b840:	e5 2e       	mov	r14, r21
    b842:	f1 2c       	mov	r15, r1
    b844:	ec 0e       	add	r14, r28
    b846:	fd 1e       	adc	r15, r29
    b848:	c7 01       	movw	r24, r14
    b84a:	62 e0       	ldi	r22, 0x02	; 2
    b84c:	70 e0       	ldi	r23, 0x00	; 0
    b84e:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    b852:	80 91 63 01 	lds	r24, 0x0163
    b856:	90 91 64 01 	lds	r25, 0x0164
    b85a:	b8 01       	movw	r22, r16
    b85c:	0e 94 43 3f 	call	0x7e86	; 0x7e86 <ustoaz>
    b860:	c7 01       	movw	r24, r14
    b862:	62 e0       	ldi	r22, 0x02	; 2
    b864:	70 e0       	ldi	r23, 0x00	; 0
    b866:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    b86a:	8c e2       	ldi	r24, 0x2C	; 44
    b86c:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    b870:	80 91 61 01 	lds	r24, 0x0161
    b874:	90 91 62 01 	lds	r25, 0x0162
    b878:	b8 01       	movw	r22, r16
    b87a:	0e 94 43 3f 	call	0x7e86	; 0x7e86 <ustoaz>
    b87e:	c7 01       	movw	r24, r14
    b880:	62 e0       	ldi	r22, 0x02	; 2
    b882:	70 e0       	ldi	r23, 0x00	; 0
    b884:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    b888:	80 91 5f 01 	lds	r24, 0x015F
    b88c:	90 91 60 01 	lds	r25, 0x0160
    b890:	b8 01       	movw	r22, r16
    b892:	0e 94 43 3f 	call	0x7e86	; 0x7e86 <ustoaz>
    b896:	c7 01       	movw	r24, r14
    b898:	62 e0       	ldi	r22, 0x02	; 2
    b89a:	70 e0       	ldi	r23, 0x00	; 0
    b89c:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    b8a0:	80 91 5d 01 	lds	r24, 0x015D
    b8a4:	90 91 5e 01 	lds	r25, 0x015E
    b8a8:	b8 01       	movw	r22, r16
    b8aa:	0e 94 43 3f 	call	0x7e86	; 0x7e86 <ustoaz>
    b8ae:	c7 01       	movw	r24, r14
    b8b0:	62 e0       	ldi	r22, 0x02	; 2
    b8b2:	70 e0       	ldi	r23, 0x00	; 0
    b8b4:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    b8b8:	8e e2       	ldi	r24, 0x2E	; 46
    b8ba:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    b8be:	80 91 fc 0b 	lds	r24, 0x0BFC
    b8c2:	90 91 fd 0b 	lds	r25, 0x0BFD
    b8c6:	b8 01       	movw	r22, r16
    b8c8:	0e 94 43 3f 	call	0x7e86	; 0x7e86 <ustoaz>
    b8cc:	ce 01       	movw	r24, r28
    b8ce:	4f 96       	adiw	r24, 0x1f	; 31
    b8d0:	63 e0       	ldi	r22, 0x03	; 3
    b8d2:	70 e0       	ldi	r23, 0x00	; 0
    b8d4:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    b8d8:	8a e0       	ldi	r24, 0x0A	; 10
    b8da:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    b8de:	89 e1       	ldi	r24, 0x19	; 25
    b8e0:	90 e0       	ldi	r25, 0x00	; 0
    b8e2:	0a c2       	rjmp	.+1044   	; 0xbcf8 <udp_command+0x5f6>
    b8e4:	c8 01       	movw	r24, r16
    b8e6:	60 e8       	ldi	r22, 0x80	; 128
    b8e8:	75 e1       	ldi	r23, 0x15	; 21
    b8ea:	0e 94 b0 6d 	call	0xdb60	; 0xdb60 <strcmp_P>
    b8ee:	89 2b       	or	r24, r25
    b8f0:	59 f4       	brne	.+22     	; 0xb908 <udp_command+0x206>
    b8f2:	8c e2       	ldi	r24, 0x2C	; 44
    b8f4:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    b8f8:	8e 01       	movw	r16, r28
    b8fa:	03 5e       	subi	r16, 0xE3	; 227
    b8fc:	1f 4f       	sbci	r17, 0xFF	; 255
    b8fe:	80 91 ce 09 	lds	r24, 0x09CE
    b902:	90 91 cf 09 	lds	r25, 0x09CF
    b906:	11 c0       	rjmp	.+34     	; 0xb92a <udp_command+0x228>
    b908:	c8 01       	movw	r24, r16
    b90a:	6b e7       	ldi	r22, 0x7B	; 123
    b90c:	75 e1       	ldi	r23, 0x15	; 21
    b90e:	0e 94 b0 6d 	call	0xdb60	; 0xdb60 <strcmp_P>
    b912:	89 2b       	or	r24, r25
    b914:	c1 f4       	brne	.+48     	; 0xb946 <udp_command+0x244>
    b916:	8c e2       	ldi	r24, 0x2C	; 44
    b918:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    b91c:	8e 01       	movw	r16, r28
    b91e:	03 5e       	subi	r16, 0xE3	; 227
    b920:	1f 4f       	sbci	r17, 0xFF	; 255
    b922:	80 91 cc 09 	lds	r24, 0x09CC
    b926:	90 91 cd 09 	lds	r25, 0x09CD
    b92a:	b8 01       	movw	r22, r16
    b92c:	0e 94 af 3e 	call	0x7d5e	; 0x7d5e <ustoahz>
    b930:	c8 01       	movw	r24, r16
    b932:	64 e0       	ldi	r22, 0x04	; 4
    b934:	70 e0       	ldi	r23, 0x00	; 0
    b936:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    b93a:	8a e0       	ldi	r24, 0x0A	; 10
    b93c:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    b940:	8a e0       	ldi	r24, 0x0A	; 10
    b942:	90 e0       	ldi	r25, 0x00	; 0
    b944:	d9 c1       	rjmp	.+946    	; 0xbcf8 <udp_command+0x5f6>
    b946:	c8 01       	movw	r24, r16
    b948:	66 e7       	ldi	r22, 0x76	; 118
    b94a:	75 e1       	ldi	r23, 0x15	; 21
    b94c:	0e 94 b0 6d 	call	0xdb60	; 0xdb60 <strcmp_P>
    b950:	89 2b       	or	r24, r25
    b952:	09 f0       	breq	.+2      	; 0xb956 <udp_command+0x254>
    b954:	58 c0       	rjmp	.+176    	; 0xba06 <udp_command+0x304>
    b956:	42 e9       	ldi	r20, 0x92	; 146
    b958:	a4 2e       	mov	r10, r20
    b95a:	44 e0       	ldi	r20, 0x04	; 4
    b95c:	b4 2e       	mov	r11, r20
    b95e:	cc 24       	eor	r12, r12
    b960:	dd 24       	eor	r13, r13
    b962:	c8 01       	movw	r24, r16
    b964:	90 2e       	mov	r9, r16
    b966:	f9 2e       	mov	r15, r25
    b968:	8c e2       	ldi	r24, 0x2C	; 44
    b96a:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    b96e:	f5 01       	movw	r30, r10
    b970:	86 85       	ldd	r24, Z+14	; 0x0e
    b972:	81 30       	cpi	r24, 0x01	; 1
    b974:	11 f4       	brne	.+4      	; 0xb97a <udp_command+0x278>
    b976:	84 e4       	ldi	r24, 0x44	; 68
    b978:	05 c0       	rjmp	.+10     	; 0xb984 <udp_command+0x282>
    b97a:	82 30       	cpi	r24, 0x02	; 2
    b97c:	11 f4       	brne	.+4      	; 0xb982 <udp_command+0x280>
    b97e:	83 e5       	ldi	r24, 0x53	; 83
    b980:	01 c0       	rjmp	.+2      	; 0xb984 <udp_command+0x282>
    b982:	8e e4       	ldi	r24, 0x4E	; 78
    b984:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    b988:	8c e2       	ldi	r24, 0x2C	; 44
    b98a:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    b98e:	f5 01       	movw	r30, r10
    b990:	60 81       	ld	r22, Z
    b992:	71 81       	ldd	r23, Z+1	; 0x01
    b994:	82 81       	ldd	r24, Z+2	; 0x02
    b996:	93 81       	ldd	r25, Z+3	; 0x03
    b998:	49 2d       	mov	r20, r9
    b99a:	5f 2d       	mov	r21, r15
    b99c:	0e 94 a5 41 	call	0x834a	; 0x834a <long2ipstr>
    b9a0:	6f e0       	ldi	r22, 0x0F	; 15
    b9a2:	70 e0       	ldi	r23, 0x00	; 0
    b9a4:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    b9a8:	8c e2       	ldi	r24, 0x2C	; 44
    b9aa:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    b9ae:	86 01       	movw	r16, r12
    b9b0:	34 e0       	ldi	r19, 0x04	; 4
    b9b2:	00 0f       	add	r16, r16
    b9b4:	11 1f       	adc	r17, r17
    b9b6:	3a 95       	dec	r19
    b9b8:	e1 f7       	brne	.-8      	; 0xb9b2 <udp_command+0x2b0>
    b9ba:	0c 19       	sub	r16, r12
    b9bc:	1d 09       	sbc	r17, r13
    b9be:	0a 56       	subi	r16, 0x6A	; 106
    b9c0:	1b 4f       	sbci	r17, 0xFB	; 251
    b9c2:	ee 24       	eor	r14, r14
    b9c4:	f8 01       	movw	r30, r16
    b9c6:	81 91       	ld	r24, Z+
    b9c8:	8f 01       	movw	r16, r30
    b9ca:	69 2d       	mov	r22, r9
    b9cc:	7f 2d       	mov	r23, r15
    b9ce:	0e 94 97 3e 	call	0x7d2e	; 0x7d2e <uctoahz>
    b9d2:	62 e0       	ldi	r22, 0x02	; 2
    b9d4:	70 e0       	ldi	r23, 0x00	; 0
    b9d6:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    b9da:	e3 94       	inc	r14
    b9dc:	f6 e0       	ldi	r31, 0x06	; 6
    b9de:	ef 16       	cp	r14, r31
    b9e0:	89 f7       	brne	.-30     	; 0xb9c4 <udp_command+0x2c2>
    b9e2:	08 94       	sec
    b9e4:	c1 1c       	adc	r12, r1
    b9e6:	d1 1c       	adc	r13, r1
    b9e8:	8f e0       	ldi	r24, 0x0F	; 15
    b9ea:	90 e0       	ldi	r25, 0x00	; 0
    b9ec:	a8 0e       	add	r10, r24
    b9ee:	b9 1e       	adc	r11, r25
    b9f0:	98 e0       	ldi	r25, 0x08	; 8
    b9f2:	c9 16       	cp	r12, r25
    b9f4:	d1 04       	cpc	r13, r1
    b9f6:	09 f0       	breq	.+2      	; 0xb9fa <udp_command+0x2f8>
    b9f8:	b7 cf       	rjmp	.-146    	; 0xb968 <udp_command+0x266>
    b9fa:	8a e0       	ldi	r24, 0x0A	; 10
    b9fc:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    ba00:	8d ef       	ldi	r24, 0xFD	; 253
    ba02:	90 e0       	ldi	r25, 0x00	; 0
    ba04:	79 c1       	rjmp	.+754    	; 0xbcf8 <udp_command+0x5f6>
    ba06:	c8 01       	movw	r24, r16
    ba08:	61 e7       	ldi	r22, 0x71	; 113
    ba0a:	75 e1       	ldi	r23, 0x15	; 21
    ba0c:	0e 94 b0 6d 	call	0xdb60	; 0xdb60 <strcmp_P>
    ba10:	89 2b       	or	r24, r25
    ba12:	e9 f4       	brne	.+58     	; 0xba4e <udp_command+0x34c>
    ba14:	8c e2       	ldi	r24, 0x2C	; 44
    ba16:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    ba1a:	e3 e0       	ldi	r30, 0x03	; 3
    ba1c:	fb e0       	ldi	r31, 0x0B	; 11
    ba1e:	90 e0       	ldi	r25, 0x00	; 0
    ba20:	80 81       	ld	r24, Z
    ba22:	88 23       	and	r24, r24
    ba24:	21 f0       	breq	.+8      	; 0xba2e <udp_command+0x32c>
    ba26:	9f 5f       	subi	r25, 0xFF	; 255
    ba28:	70 96       	adiw	r30, 0x10	; 16
    ba2a:	90 31       	cpi	r25, 0x10	; 16
    ba2c:	c9 f7       	brne	.-14     	; 0xba20 <udp_command+0x31e>
    ba2e:	89 2f       	mov	r24, r25
    ba30:	be 01       	movw	r22, r28
    ba32:	63 5e       	subi	r22, 0xE3	; 227
    ba34:	7f 4f       	sbci	r23, 0xFF	; 255
    ba36:	0e 94 27 3f 	call	0x7e4e	; 0x7e4e <uctoaz>
    ba3a:	ce 01       	movw	r24, r28
    ba3c:	4e 96       	adiw	r24, 0x1e	; 30
    ba3e:	62 e0       	ldi	r22, 0x02	; 2
    ba40:	70 e0       	ldi	r23, 0x00	; 0
    ba42:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    ba46:	8a e0       	ldi	r24, 0x0A	; 10
    ba48:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    ba4c:	4c c1       	rjmp	.+664    	; 0xbce6 <udp_command+0x5e4>
    ba4e:	c8 01       	movw	r24, r16
    ba50:	6c e6       	ldi	r22, 0x6C	; 108
    ba52:	75 e1       	ldi	r23, 0x15	; 21
    ba54:	0e 94 b0 6d 	call	0xdb60	; 0xdb60 <strcmp_P>
    ba58:	89 2b       	or	r24, r25
    ba5a:	c1 f5       	brne	.+112    	; 0xbacc <udp_command+0x3ca>
    ba5c:	0e 94 43 19 	call	0x3286	; 0x3286 <enc_readbuf>
    ba60:	c8 01       	movw	r24, r16
    ba62:	62 e0       	ldi	r22, 0x02	; 2
    ba64:	70 e0       	ldi	r23, 0x00	; 0
    ba66:	0e 94 7e 19 	call	0x32fc	; 0x32fc <enc_readbuffer>
    ba6a:	1f 86       	std	Y+15, r1	; 0x0f
    ba6c:	c8 01       	movw	r24, r16
    ba6e:	0e 94 e8 3f 	call	0x7fd0	; 0x7fd0 <_atoi>
    ba72:	f8 2e       	mov	r15, r24
    ba74:	81 50       	subi	r24, 0x01	; 1
    ba76:	80 31       	cpi	r24, 0x10	; 16
    ba78:	18 f0       	brcs	.+6      	; 0xba80 <udp_command+0x37e>
    ba7a:	86 e6       	ldi	r24, 0x66	; 102
    ba7c:	95 e1       	ldi	r25, 0x15	; 21
    ba7e:	38 c1       	rjmp	.+624    	; 0xbcf0 <udp_command+0x5ee>
    ba80:	8c e2       	ldi	r24, 0x2C	; 44
    ba82:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    ba86:	c8 01       	movw	r24, r16
    ba88:	62 e0       	ldi	r22, 0x02	; 2
    ba8a:	70 e0       	ldi	r23, 0x00	; 0
    ba8c:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    ba90:	8c e2       	ldi	r24, 0x2C	; 44
    ba92:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    ba96:	ef 2d       	mov	r30, r15
    ba98:	f0 e0       	ldi	r31, 0x00	; 0
    ba9a:	24 e0       	ldi	r18, 0x04	; 4
    ba9c:	ee 0f       	add	r30, r30
    ba9e:	ff 1f       	adc	r31, r31
    baa0:	2a 95       	dec	r18
    baa2:	e1 f7       	brne	.-8      	; 0xba9c <udp_command+0x39a>
    baa4:	e4 51       	subi	r30, 0x14	; 20
    baa6:	f5 4f       	sbci	r31, 0xF5	; 245
    baa8:	87 81       	ldd	r24, Z+7	; 0x07
    baaa:	be 01       	movw	r22, r28
    baac:	63 5e       	subi	r22, 0xE3	; 227
    baae:	7f 4f       	sbci	r23, 0xFF	; 255
    bab0:	0e 94 27 3f 	call	0x7e4e	; 0x7e4e <uctoaz>
    bab4:	ce 01       	movw	r24, r28
    bab6:	4e 96       	adiw	r24, 0x1e	; 30
    bab8:	62 e0       	ldi	r22, 0x02	; 2
    baba:	70 e0       	ldi	r23, 0x00	; 0
    babc:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    bac0:	8a e0       	ldi	r24, 0x0A	; 10
    bac2:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    bac6:	8b e0       	ldi	r24, 0x0B	; 11
    bac8:	90 e0       	ldi	r25, 0x00	; 0
    baca:	16 c1       	rjmp	.+556    	; 0xbcf8 <udp_command+0x5f6>
    bacc:	c8 01       	movw	r24, r16
    bace:	61 e6       	ldi	r22, 0x61	; 97
    bad0:	75 e1       	ldi	r23, 0x15	; 21
    bad2:	0e 94 b0 6d 	call	0xdb60	; 0xdb60 <strcmp_P>
    bad6:	89 2b       	or	r24, r25
    bad8:	09 f0       	breq	.+2      	; 0xbadc <udp_command+0x3da>
    bada:	57 c0       	rjmp	.+174    	; 0xbb8a <udp_command+0x488>
    badc:	8c e2       	ldi	r24, 0x2C	; 44
    bade:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    bae2:	8e 01       	movw	r16, r28
    bae4:	03 5e       	subi	r16, 0xE3	; 227
    bae6:	1f 4f       	sbci	r17, 0xFF	; 255
    bae8:	80 91 8c 04 	lds	r24, 0x048C
    baec:	b8 01       	movw	r22, r16
    baee:	0e 94 97 3e 	call	0x7d2e	; 0x7d2e <uctoahz>
    baf2:	c8 01       	movw	r24, r16
    baf4:	62 e0       	ldi	r22, 0x02	; 2
    baf6:	70 e0       	ldi	r23, 0x00	; 0
    baf8:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    bafc:	8d e2       	ldi	r24, 0x2D	; 45
    bafe:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    bb02:	80 91 8d 04 	lds	r24, 0x048D
    bb06:	b8 01       	movw	r22, r16
    bb08:	0e 94 97 3e 	call	0x7d2e	; 0x7d2e <uctoahz>
    bb0c:	c8 01       	movw	r24, r16
    bb0e:	62 e0       	ldi	r22, 0x02	; 2
    bb10:	70 e0       	ldi	r23, 0x00	; 0
    bb12:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    bb16:	8d e2       	ldi	r24, 0x2D	; 45
    bb18:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    bb1c:	80 91 8e 04 	lds	r24, 0x048E
    bb20:	b8 01       	movw	r22, r16
    bb22:	0e 94 97 3e 	call	0x7d2e	; 0x7d2e <uctoahz>
    bb26:	c8 01       	movw	r24, r16
    bb28:	62 e0       	ldi	r22, 0x02	; 2
    bb2a:	70 e0       	ldi	r23, 0x00	; 0
    bb2c:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    bb30:	8d e2       	ldi	r24, 0x2D	; 45
    bb32:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    bb36:	80 91 8f 04 	lds	r24, 0x048F
    bb3a:	b8 01       	movw	r22, r16
    bb3c:	0e 94 97 3e 	call	0x7d2e	; 0x7d2e <uctoahz>
    bb40:	c8 01       	movw	r24, r16
    bb42:	62 e0       	ldi	r22, 0x02	; 2
    bb44:	70 e0       	ldi	r23, 0x00	; 0
    bb46:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    bb4a:	8d e2       	ldi	r24, 0x2D	; 45
    bb4c:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    bb50:	80 91 90 04 	lds	r24, 0x0490
    bb54:	b8 01       	movw	r22, r16
    bb56:	0e 94 97 3e 	call	0x7d2e	; 0x7d2e <uctoahz>
    bb5a:	c8 01       	movw	r24, r16
    bb5c:	62 e0       	ldi	r22, 0x02	; 2
    bb5e:	70 e0       	ldi	r23, 0x00	; 0
    bb60:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    bb64:	8d e2       	ldi	r24, 0x2D	; 45
    bb66:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    bb6a:	80 91 91 04 	lds	r24, 0x0491
    bb6e:	b8 01       	movw	r22, r16
    bb70:	0e 94 97 3e 	call	0x7d2e	; 0x7d2e <uctoahz>
    bb74:	c8 01       	movw	r24, r16
    bb76:	62 e0       	ldi	r22, 0x02	; 2
    bb78:	70 e0       	ldi	r23, 0x00	; 0
    bb7a:	0e 94 cc 19 	call	0x3398	; 0x3398 <enc_writebuffer>
    bb7e:	8a e0       	ldi	r24, 0x0A	; 10
    bb80:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    bb84:	87 e1       	ldi	r24, 0x17	; 23
    bb86:	90 e0       	ldi	r25, 0x00	; 0
    bb88:	b7 c0       	rjmp	.+366    	; 0xbcf8 <udp_command+0x5f6>
    bb8a:	c8 01       	movw	r24, r16
    bb8c:	6c e5       	ldi	r22, 0x5C	; 92
    bb8e:	75 e1       	ldi	r23, 0x15	; 21
    bb90:	0e 94 b0 6d 	call	0xdb60	; 0xdb60 <strcmp_P>
    bb94:	89 2b       	or	r24, r25
    bb96:	69 f4       	brne	.+26     	; 0xbbb2 <udp_command+0x4b0>
    bb98:	8c e2       	ldi	r24, 0x2C	; 44
    bb9a:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    bb9e:	8c e7       	ldi	r24, 0x7C	; 124
    bba0:	90 e0       	ldi	r25, 0x00	; 0
    bba2:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    bba6:	8a e0       	ldi	r24, 0x0A	; 10
    bba8:	0e 94 95 19 	call	0x332a	; 0x332a <enc_writebuf>
    bbac:	8d e0       	ldi	r24, 0x0D	; 13
    bbae:	90 e0       	ldi	r25, 0x00	; 0
    bbb0:	a3 c0       	rjmp	.+326    	; 0xbcf8 <udp_command+0x5f6>
    bbb2:	c8 01       	movw	r24, r16
    bbb4:	67 e5       	ldi	r22, 0x57	; 87
    bbb6:	75 e1       	ldi	r23, 0x15	; 21
    bbb8:	0e 94 b0 6d 	call	0xdb60	; 0xdb60 <strcmp_P>
    bbbc:	89 2b       	or	r24, r25
    bbbe:	09 f0       	breq	.+2      	; 0xbbc2 <udp_command+0x4c0>
    bbc0:	46 c0       	rjmp	.+140    	; 0xbc4e <udp_command+0x54c>
    bbc2:	0e 94 43 19 	call	0x3286	; 0x3286 <enc_readbuf>
    bbc6:	ce 01       	movw	r24, r28
    bbc8:	0d 96       	adiw	r24, 0x0d	; 13
    bbca:	6f e0       	ldi	r22, 0x0F	; 15
    bbcc:	70 e0       	ldi	r23, 0x00	; 0
    bbce:	0e 94 7e 19 	call	0x32fc	; 0x32fc <enc_readbuffer>
    bbd2:	1c 8e       	std	Y+28, r1	; 0x1c
    bbd4:	0e 94 43 19 	call	0x3286	; 0x3286 <enc_readbuf>
    bbd8:	8e 01       	movw	r16, r28
    bbda:	03 5e       	subi	r16, 0xE3	; 227
    bbdc:	1f 4f       	sbci	r17, 0xFF	; 255
    bbde:	c8 01       	movw	r24, r16
    bbe0:	6c e0       	ldi	r22, 0x0C	; 12
    bbe2:	70 e0       	ldi	r23, 0x00	; 0
    bbe4:	0e 94 7e 19 	call	0x32fc	; 0x32fc <enc_readbuffer>
    bbe8:	95 e0       	ldi	r25, 0x05	; 5
    bbea:	e9 2e       	mov	r14, r25
    bbec:	f1 2c       	mov	r15, r1
    bbee:	ec 0e       	add	r14, r28
    bbf0:	fd 1e       	adc	r15, r29
    bbf2:	89 e2       	ldi	r24, 0x29	; 41
    bbf4:	c8 2e       	mov	r12, r24
    bbf6:	d1 2c       	mov	r13, r1
    bbf8:	cc 0e       	add	r12, r28
    bbfa:	dd 1e       	adc	r13, r29
    bbfc:	c8 01       	movw	r24, r16
    bbfe:	0e 94 2f 40 	call	0x805e	; 0x805e <atox>
    bc02:	f7 01       	movw	r30, r14
    bc04:	81 93       	st	Z+, r24
    bc06:	7f 01       	movw	r14, r30
    bc08:	0e 5f       	subi	r16, 0xFE	; 254
    bc0a:	1f 4f       	sbci	r17, 0xFF	; 255
    bc0c:	0c 15       	cp	r16, r12
    bc0e:	1d 05       	cpc	r17, r13
    bc10:	a9 f7       	brne	.-22     	; 0xbbfc <udp_command+0x4fa>
    bc12:	ce 01       	movw	r24, r28
    bc14:	0d 96       	adiw	r24, 0x0d	; 13
    bc16:	be 01       	movw	r22, r28
    bc18:	6f 5f       	subi	r22, 0xFF	; 255
    bc1a:	7f 4f       	sbci	r23, 0xFF	; 255
    bc1c:	0e 94 41 41 	call	0x8282	; 0x8282 <ipstr2bin>
    bc20:	81 30       	cpi	r24, 0x01	; 1
    bc22:	91 f4       	brne	.+36     	; 0xbc48 <udp_command+0x546>
    bc24:	69 81       	ldd	r22, Y+1	; 0x01
    bc26:	7a 81       	ldd	r23, Y+2	; 0x02
    bc28:	8b 81       	ldd	r24, Y+3	; 0x03
    bc2a:	9c 81       	ldd	r25, Y+4	; 0x04
    bc2c:	ae 01       	movw	r20, r28
    bc2e:	4b 5f       	subi	r20, 0xFB	; 251
    bc30:	5f 4f       	sbci	r21, 0xFF	; 255
    bc32:	22 e0       	ldi	r18, 0x02	; 2
    bc34:	0e 94 38 23 	call	0x4670	; 0x4670 <arp_keep>
    bc38:	81 30       	cpi	r24, 0x01	; 1
    bc3a:	19 f4       	brne	.+6      	; 0xbc42 <udp_command+0x540>
    bc3c:	82 e5       	ldi	r24, 0x52	; 82
    bc3e:	95 e1       	ldi	r25, 0x15	; 21
    bc40:	50 c0       	rjmp	.+160    	; 0xbce2 <udp_command+0x5e0>
    bc42:	8d e4       	ldi	r24, 0x4D	; 77
    bc44:	95 e1       	ldi	r25, 0x15	; 21
    bc46:	4d c0       	rjmp	.+154    	; 0xbce2 <udp_command+0x5e0>
    bc48:	87 e4       	ldi	r24, 0x47	; 71
    bc4a:	95 e1       	ldi	r25, 0x15	; 21
    bc4c:	51 c0       	rjmp	.+162    	; 0xbcf0 <udp_command+0x5ee>
    bc4e:	c8 01       	movw	r24, r16
    bc50:	62 e4       	ldi	r22, 0x42	; 66
    bc52:	75 e1       	ldi	r23, 0x15	; 21
    bc54:	0e 94 b0 6d 	call	0xdb60	; 0xdb60 <strcmp_P>
    bc58:	89 2b       	or	r24, r25
    bc5a:	21 f5       	brne	.+72     	; 0xbca4 <udp_command+0x5a2>
    bc5c:	0e 94 43 19 	call	0x3286	; 0x3286 <enc_readbuf>
    bc60:	8e 01       	movw	r16, r28
    bc62:	03 5f       	subi	r16, 0xF3	; 243
    bc64:	1f 4f       	sbci	r17, 0xFF	; 255
    bc66:	c8 01       	movw	r24, r16
    bc68:	6f e0       	ldi	r22, 0x0F	; 15
    bc6a:	70 e0       	ldi	r23, 0x00	; 0
    bc6c:	0e 94 7e 19 	call	0x32fc	; 0x32fc <enc_readbuffer>
    bc70:	1c 8e       	std	Y+28, r1	; 0x1c
    bc72:	c8 01       	movw	r24, r16
    bc74:	be 01       	movw	r22, r28
    bc76:	6f 5f       	subi	r22, 0xFF	; 255
    bc78:	7f 4f       	sbci	r23, 0xFF	; 255
    bc7a:	0e 94 41 41 	call	0x8282	; 0x8282 <ipstr2bin>
    bc7e:	81 30       	cpi	r24, 0x01	; 1
    bc80:	71 f4       	brne	.+28     	; 0xbc9e <udp_command+0x59c>
    bc82:	69 81       	ldd	r22, Y+1	; 0x01
    bc84:	7a 81       	ldd	r23, Y+2	; 0x02
    bc86:	8b 81       	ldd	r24, Y+3	; 0x03
    bc88:	9c 81       	ldd	r25, Y+4	; 0x04
    bc8a:	0e 94 b9 22 	call	0x4572	; 0x4572 <arp_delete>
    bc8e:	81 30       	cpi	r24, 0x01	; 1
    bc90:	19 f4       	brne	.+6      	; 0xbc98 <udp_command+0x596>
    bc92:	8d e3       	ldi	r24, 0x3D	; 61
    bc94:	95 e1       	ldi	r25, 0x15	; 21
    bc96:	25 c0       	rjmp	.+74     	; 0xbce2 <udp_command+0x5e0>
    bc98:	88 e3       	ldi	r24, 0x38	; 56
    bc9a:	95 e1       	ldi	r25, 0x15	; 21
    bc9c:	22 c0       	rjmp	.+68     	; 0xbce2 <udp_command+0x5e0>
    bc9e:	82 e3       	ldi	r24, 0x32	; 50
    bca0:	95 e1       	ldi	r25, 0x15	; 21
    bca2:	26 c0       	rjmp	.+76     	; 0xbcf0 <udp_command+0x5ee>
    bca4:	c8 01       	movw	r24, r16
    bca6:	6d e2       	ldi	r22, 0x2D	; 45
    bca8:	75 e1       	ldi	r23, 0x15	; 21
    bcaa:	0e 94 b0 6d 	call	0xdb60	; 0xdb60 <strcmp_P>
    bcae:	89 2b       	or	r24, r25
    bcb0:	69 f4       	brne	.+26     	; 0xbccc <udp_command+0x5ca>
    bcb2:	17 98       	cbi	0x02, 7	; 2
    bcb4:	80 91 ce 09 	lds	r24, 0x09CE
    bcb8:	90 91 cf 09 	lds	r25, 0x09CF
    bcbc:	9f 77       	andi	r25, 0x7F	; 127
    bcbe:	90 93 cf 09 	sts	0x09CF, r25
    bcc2:	80 93 ce 09 	sts	0x09CE, r24
    bcc6:	88 e2       	ldi	r24, 0x28	; 40
    bcc8:	95 e1       	ldi	r25, 0x15	; 21
    bcca:	0b c0       	rjmp	.+22     	; 0xbce2 <udp_command+0x5e0>
    bccc:	c8 01       	movw	r24, r16
    bcce:	63 e2       	ldi	r22, 0x23	; 35
    bcd0:	75 e1       	ldi	r23, 0x15	; 21
    bcd2:	0e 94 b0 6d 	call	0xdb60	; 0xdb60 <strcmp_P>
    bcd6:	89 2b       	or	r24, r25
    bcd8:	49 f4       	brne	.+18     	; 0xbcec <udp_command+0x5ea>
    bcda:	0e 94 5e 53 	call	0xa6bc	; 0xa6bc <clear_eventlog>
    bcde:	8e e1       	ldi	r24, 0x1E	; 30
    bce0:	95 e1       	ldi	r25, 0x15	; 21
    bce2:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    bce6:	88 e0       	ldi	r24, 0x08	; 8
    bce8:	90 e0       	ldi	r25, 0x00	; 0
    bcea:	06 c0       	rjmp	.+12     	; 0xbcf8 <udp_command+0x5f6>
    bcec:	88 e1       	ldi	r24, 0x18	; 24
    bcee:	95 e1       	ldi	r25, 0x15	; 21
    bcf0:	0e 94 99 1c 	call	0x3932	; 0x3932 <enc_writebufc>
    bcf4:	89 e0       	ldi	r24, 0x09	; 9
    bcf6:	90 e0       	ldi	r25, 0x00	; 0
    bcf8:	0e 94 ec 2a 	call	0x55d8	; 0x55d8 <udp_output>
    bcfc:	ac 96       	adiw	r28, 0x2c	; 44
    bcfe:	eb e0       	ldi	r30, 0x0B	; 11
    bd00:	0c 94 6c 6d 	jmp	0xdad8	; 0xdad8 <__epilogue_restores__+0xe>

0000bd04 <disp_menu>:
    bd04:	a4 e0       	ldi	r26, 0x04	; 4
    bd06:	b0 e0       	ldi	r27, 0x00	; 0
    bd08:	e8 e8       	ldi	r30, 0x88	; 136
    bd0a:	fe e5       	ldi	r31, 0x5E	; 94
    bd0c:	0c 94 55 6d 	jmp	0xdaaa	; 0xdaaa <__prologue_saves__+0x18>
    bd10:	18 2f       	mov	r17, r24
    bd12:	0e 94 a0 1e 	call	0x3d40	; 0x3d40 <lcd_cls>
    bd16:	80 e0       	ldi	r24, 0x00	; 0
    bd18:	60 e0       	ldi	r22, 0x00	; 0
    bd1a:	4f e2       	ldi	r20, 0x2F	; 47
    bd1c:	59 e1       	ldi	r21, 0x19	; 25
    bd1e:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    bd22:	e1 2f       	mov	r30, r17
    bd24:	f0 e0       	ldi	r31, 0x00	; 0
    bd26:	ee 0f       	add	r30, r30
    bd28:	ff 1f       	adc	r31, r31
    bd2a:	e1 50       	subi	r30, 0x01	; 1
    bd2c:	f9 4e       	sbci	r31, 0xE9	; 233
    bd2e:	45 91       	lpm	r20, Z+
    bd30:	54 91       	lpm	r21, Z+
    bd32:	80 e0       	ldi	r24, 0x00	; 0
    bd34:	61 e0       	ldi	r22, 0x01	; 1
    bd36:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    bd3a:	81 2f       	mov	r24, r17
    bd3c:	8f 5f       	subi	r24, 0xFF	; 255
    bd3e:	7e 01       	movw	r14, r28
    bd40:	08 94       	sec
    bd42:	e1 1c       	adc	r14, r1
    bd44:	f1 1c       	adc	r15, r1
    bd46:	b7 01       	movw	r22, r14
    bd48:	0e 94 27 3f 	call	0x7e4e	; 0x7e4e <uctoaz>
    bd4c:	8e 01       	movw	r16, r28
    bd4e:	0e 5f       	subi	r16, 0xFE	; 254
    bd50:	1f 4f       	sbci	r17, 0xFF	; 255
    bd52:	8b e0       	ldi	r24, 0x0B	; 11
    bd54:	60 e0       	ldi	r22, 0x00	; 0
    bd56:	a8 01       	movw	r20, r16
    bd58:	0e 94 17 1f 	call	0x3e2e	; 0x3e2e <lcd_print>
    bd5c:	8d e0       	ldi	r24, 0x0D	; 13
    bd5e:	60 e0       	ldi	r22, 0x00	; 0
    bd60:	4f e2       	ldi	r20, 0x2F	; 47
    bd62:	0e 94 2a 1f 	call	0x3e54	; 0x3e54 <lcd_putcode>
    bd66:	88 e1       	ldi	r24, 0x18	; 24
    bd68:	b7 01       	movw	r22, r14
    bd6a:	0e 94 27 3f 	call	0x7e4e	; 0x7e4e <uctoaz>
    bd6e:	c8 01       	movw	r24, r16
    bd70:	0e 94 66 1e 	call	0x3ccc	; 0x3ccc <lcd_putstr>
    bd74:	24 96       	adiw	r28, 0x04	; 4
    bd76:	e6 e0       	ldi	r30, 0x06	; 6
    bd78:	0c 94 71 6d 	jmp	0xdae2	; 0xdae2 <__epilogue_restores__+0x18>

0000bd7c <selectitem>:
    bd7c:	ef 92       	push	r14
    bd7e:	ff 92       	push	r15
    bd80:	0f 93       	push	r16
    bd82:	1f 93       	push	r17
    bd84:	f8 2e       	mov	r15, r24
    bd86:	e6 2e       	mov	r14, r22
    bd88:	8a 01       	movw	r16, r20
    bd8a:	0e 94 95 20 	call	0x412a	; 0x412a <key_input>
    bd8e:	f8 01       	movw	r30, r16
    bd90:	80 83       	st	Z, r24
    bd92:	81 31       	cpi	r24, 0x11	; 17
    bd94:	31 f4       	brne	.+12     	; 0xbda2 <selectitem+0x26>
    bd96:	8f 2d       	mov	r24, r15
    bd98:	8f 5f       	subi	r24, 0xFF	; 255
    bd9a:	8e 15       	cp	r24, r14
    bd9c:	60 f0       	brcs	.+24     	; 0xbdb6 <selectitem+0x3a>
    bd9e:	80 e0       	ldi	r24, 0x00	; 0
    bda0:	0a c0       	rjmp	.+20     	; 0xbdb6 <selectitem+0x3a>
    bda2:	82 31       	cpi	r24, 0x12	; 18
    bda4:	11 f0       	breq	.+4      	; 0xbdaa <selectitem+0x2e>
    bda6:	8f 2d       	mov	r24, r15
    bda8:	06 c0       	rjmp	.+12     	; 0xbdb6 <selectitem+0x3a>
    bdaa:	ff 20       	and	r15, r15
    bdac:	11 f4       	brne	.+4      	; 0xbdb2 <selectitem+0x36>
    bdae:	8e 2d       	mov	r24, r14
    bdb0:	01 c0       	rjmp	.+2      	; 0xbdb4 <selectitem+0x38>
    bdb2:	8f 2d       	mov	r24, r15
    bdb4:	81 50       	subi	r24, 0x01	; 1
    bdb6:	1f 91       	pop	r17
    bdb8:	0f 91       	pop	r16
    bdba:	ff 90       	pop	r15
    bdbc:	ef 90       	pop	r14
    bdbe:	08 95       	ret

0000bdc0 <parameter>:
    bdc0:	cf 92       	push	r12
    bdc2:	df 92       	push	r13
    bdc4:	ff 92       	push	r15
    bdc6:	0f 93       	push	r16
    bdc8:	1f 93       	push	r17
    bdca:	df 93       	push	r29
    bdcc:	cf 93       	push	r28
    bdce:	cd b7       	in	r28, 0x3d	; 61
    bdd0:	de b7       	in	r29, 0x3e	; 62
    bdd2:	af 97       	sbiw	r28, 0x2f	; 47
    bdd4:	0f b6       	in	r0, 0x3f	; 63
    bdd6:	f8 94       	cli
    bdd8:	de bf       	out	0x3e, r29	; 62
    bdda:	0f be       	out	0x3f, r0	; 63
    bddc:	cd bf       	out	0x3d, r28	; 61
    bdde:	de 01       	movw	r26, r28
    bde0:	12 96       	adiw	r26, 0x02	; 2
    bde2:	e8 ed       	ldi	r30, 0xD8	; 216
    bde4:	f1 e0       	ldi	r31, 0x01	; 1
    bde6:	8e e2       	ldi	r24, 0x2E	; 46
    bde8:	01 90       	ld	r0, Z+
    bdea:	0d 92       	st	X+, r0
    bdec:	81 50       	subi	r24, 0x01	; 1
    bdee:	e1 f7       	brne	.-8      	; 0xbde8 <parameter+0x28>
    bdf0:	0e 94 82 5e 	call	0xbd04	; 0xbd04 <disp_menu>
    bdf4:	ff 24       	eor	r15, r15
    bdf6:	6e 01       	movw	r12, r28
    bdf8:	08 94       	sec
    bdfa:	c1 1c       	adc	r12, r1
    bdfc:	d1 1c       	adc	r13, r1
    bdfe:	8f 2d       	mov	r24, r15
    be00:	68 e1       	ldi	r22, 0x18	; 24
    be02:	a6 01       	movw	r20, r12
    be04:	0e 94 be 5e 	call	0xbd7c	; 0xbd7c <selectitem>
    be08:	f8 2e       	mov	r15, r24
    be0a:	89 81       	ldd	r24, Y+1	; 0x01
    be0c:	89 31       	cpi	r24, 0x19	; 25
    be0e:	29 f1       	breq	.+74     	; 0xbe5a <parameter+0x9a>
    be10:	84 31       	cpi	r24, 0x14	; 20
    be12:	19 f0       	breq	.+6      	; 0xbe1a <parameter+0x5a>
    be14:	00 e0       	ldi	r16, 0x00	; 0
    be16:	10 e0       	ldi	r17, 0x00	; 0
    be18:	1b c0       	rjmp	.+54     	; 0xbe50 <parameter+0x90>
    be1a:	87 e1       	ldi	r24, 0x17	; 23
    be1c:	f8 16       	cp	r15, r24
    be1e:	e9 f0       	breq	.+58     	; 0xbe5a <parameter+0x9a>
    be20:	0e 94 a0 1e 	call	0x3d40	; 0x3d40 <lcd_cls>
    be24:	0f 2d       	mov	r16, r15
    be26:	10 e0       	ldi	r17, 0x00	; 0
    be28:	00 0f       	add	r16, r16
    be2a:	11 1f       	adc	r17, r17
    be2c:	f8 01       	movw	r30, r16
    be2e:	e1 50       	subi	r30, 0x01	; 1
    be30:	f9 4e       	sbci	r31, 0xE9	; 233
    be32:	45 91       	lpm	r20, Z+
    be34:	54 91       	lpm	r21, Z+
    be36:	80 e0       	ldi	r24, 0x00	; 0
    be38:	60 e0       	ldi	r22, 0x00	; 0
    be3a:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    be3e:	0c 0d       	add	r16, r12
    be40:	1d 1d       	adc	r17, r13
    be42:	d8 01       	movw	r26, r16
    be44:	11 96       	adiw	r26, 0x01	; 1
    be46:	ed 91       	ld	r30, X+
    be48:	fc 91       	ld	r31, X
    be4a:	12 97       	sbiw	r26, 0x02	; 2
    be4c:	09 95       	icall
    be4e:	8c 01       	movw	r16, r24
    be50:	8f 2d       	mov	r24, r15
    be52:	0e 94 82 5e 	call	0xbd04	; 0xbd04 <disp_menu>
    be56:	01 2b       	or	r16, r17
    be58:	91 f2       	breq	.-92     	; 0xbdfe <parameter+0x3e>
    be5a:	af 96       	adiw	r28, 0x2f	; 47
    be5c:	0f b6       	in	r0, 0x3f	; 63
    be5e:	f8 94       	cli
    be60:	de bf       	out	0x3e, r29	; 62
    be62:	0f be       	out	0x3f, r0	; 63
    be64:	cd bf       	out	0x3d, r28	; 61
    be66:	cf 91       	pop	r28
    be68:	df 91       	pop	r29
    be6a:	1f 91       	pop	r17
    be6c:	0f 91       	pop	r16
    be6e:	ff 90       	pop	r15
    be70:	df 90       	pop	r13
    be72:	cf 90       	pop	r12
    be74:	08 95       	ret

0000be76 <prm_set7segenable>:
    be76:	a1 e0       	ldi	r26, 0x01	; 1
    be78:	b0 e0       	ldi	r27, 0x00	; 0
    be7a:	e1 e4       	ldi	r30, 0x41	; 65
    be7c:	ff e5       	ldi	r31, 0x5F	; 95
    be7e:	0c 94 56 6d 	jmp	0xdaac	; 0xdaac <__prologue_saves__+0x1a>
    be82:	ff 24       	eor	r15, r15
    be84:	80 91 d6 09 	lds	r24, 0x09D6
    be88:	90 91 d7 09 	lds	r25, 0x09D7
    be8c:	01 97       	sbiw	r24, 0x01	; 1
    be8e:	11 f4       	brne	.+4      	; 0xbe94 <prm_set7segenable+0x1e>
    be90:	ff 24       	eor	r15, r15
    be92:	f3 94       	inc	r15
    be94:	8e 01       	movw	r16, r28
    be96:	0f 5f       	subi	r16, 0xFF	; 255
    be98:	1f 4f       	sbci	r17, 0xFF	; 255
    be9a:	81 e0       	ldi	r24, 0x01	; 1
    be9c:	0e 94 f3 1e 	call	0x3de6	; 0x3de6 <lcd_lcls>
    bea0:	ef 2d       	mov	r30, r15
    bea2:	f0 e0       	ldi	r31, 0x00	; 0
    bea4:	ee 0f       	add	r30, r30
    bea6:	ff 1f       	adc	r31, r31
    bea8:	ea 55       	subi	r30, 0x5A	; 90
    beaa:	f7 4e       	sbci	r31, 0xE7	; 231
    beac:	45 91       	lpm	r20, Z+
    beae:	54 91       	lpm	r21, Z+
    beb0:	80 e0       	ldi	r24, 0x00	; 0
    beb2:	61 e0       	ldi	r22, 0x01	; 1
    beb4:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    beb8:	8f 2d       	mov	r24, r15
    beba:	62 e0       	ldi	r22, 0x02	; 2
    bebc:	a8 01       	movw	r20, r16
    bebe:	0e 94 be 5e 	call	0xbd7c	; 0xbd7c <selectitem>
    bec2:	f8 2e       	mov	r15, r24
    bec4:	89 81       	ldd	r24, Y+1	; 0x01
    bec6:	89 31       	cpi	r24, 0x19	; 25
    bec8:	19 f4       	brne	.+6      	; 0xbed0 <prm_set7segenable+0x5a>
    beca:	21 e0       	ldi	r18, 0x01	; 1
    becc:	30 e0       	ldi	r19, 0x00	; 0
    bece:	27 c0       	rjmp	.+78     	; 0xbf1e <prm_set7segenable+0xa8>
    bed0:	84 31       	cpi	r24, 0x14	; 20
    bed2:	19 f7       	brne	.-58     	; 0xbe9a <prm_set7segenable+0x24>
    bed4:	00 e0       	ldi	r16, 0x00	; 0
    bed6:	10 e0       	ldi	r17, 0x00	; 0
    bed8:	81 e0       	ldi	r24, 0x01	; 1
    beda:	f8 16       	cp	r15, r24
    bedc:	11 f4       	brne	.+4      	; 0xbee2 <prm_set7segenable+0x6c>
    bede:	01 e0       	ldi	r16, 0x01	; 1
    bee0:	10 e0       	ldi	r17, 0x00	; 0
    bee2:	10 93 d7 09 	sts	0x09D7, r17
    bee6:	00 93 d6 09 	sts	0x09D6, r16
    beea:	01 c0       	rjmp	.+2      	; 0xbeee <prm_set7segenable+0x78>
    beec:	a8 95       	wdr
    beee:	f9 99       	sbic	0x1f, 1	; 31
    bef0:	fd cf       	rjmp	.-6      	; 0xbeec <prm_set7segenable+0x76>
    bef2:	82 ed       	ldi	r24, 0xD2	; 210
    bef4:	90 e0       	ldi	r25, 0x00	; 0
    bef6:	0e 94 6c 6e 	call	0xdcd8	; 0xdcd8 <__eerd_word_m644a>
    befa:	01 30       	cpi	r16, 0x01	; 1
    befc:	11 05       	cpc	r17, r1
    befe:	19 f4       	brne	.+6      	; 0xbf06 <prm_set7segenable+0x90>
    bf00:	bc 01       	movw	r22, r24
    bf02:	61 60       	ori	r22, 0x01	; 1
    bf04:	04 c0       	rjmp	.+8      	; 0xbf0e <prm_set7segenable+0x98>
    bf06:	bc 01       	movw	r22, r24
    bf08:	6e 7f       	andi	r22, 0xFE	; 254
    bf0a:	01 c0       	rjmp	.+2      	; 0xbf0e <prm_set7segenable+0x98>
    bf0c:	a8 95       	wdr
    bf0e:	f9 99       	sbic	0x1f, 1	; 31
    bf10:	fd cf       	rjmp	.-6      	; 0xbf0c <prm_set7segenable+0x96>
    bf12:	82 ed       	ldi	r24, 0xD2	; 210
    bf14:	90 e0       	ldi	r25, 0x00	; 0
    bf16:	0e 94 a0 6e 	call	0xdd40	; 0xdd40 <__eeupd_word_m644a>
    bf1a:	20 e0       	ldi	r18, 0x00	; 0
    bf1c:	30 e0       	ldi	r19, 0x00	; 0
    bf1e:	c9 01       	movw	r24, r18
    bf20:	21 96       	adiw	r28, 0x01	; 1
    bf22:	e5 e0       	ldi	r30, 0x05	; 5
    bf24:	0c 94 72 6d 	jmp	0xdae4	; 0xdae4 <__epilogue_restores__+0x1a>

0000bf28 <prm_setnmea_adjust>:
    bf28:	a1 e0       	ldi	r26, 0x01	; 1
    bf2a:	b0 e0       	ldi	r27, 0x00	; 0
    bf2c:	ea e9       	ldi	r30, 0x9A	; 154
    bf2e:	ff e5       	ldi	r31, 0x5F	; 95
    bf30:	0c 94 56 6d 	jmp	0xdaac	; 0xdaac <__prologue_saves__+0x1a>
    bf34:	ff 24       	eor	r15, r15
    bf36:	80 91 dc 09 	lds	r24, 0x09DC
    bf3a:	90 91 dd 09 	lds	r25, 0x09DD
    bf3e:	01 97       	sbiw	r24, 0x01	; 1
    bf40:	11 f4       	brne	.+4      	; 0xbf46 <prm_setnmea_adjust+0x1e>
    bf42:	ff 24       	eor	r15, r15
    bf44:	f3 94       	inc	r15
    bf46:	8e 01       	movw	r16, r28
    bf48:	0f 5f       	subi	r16, 0xFF	; 255
    bf4a:	1f 4f       	sbci	r17, 0xFF	; 255
    bf4c:	81 e0       	ldi	r24, 0x01	; 1
    bf4e:	0e 94 f3 1e 	call	0x3de6	; 0x3de6 <lcd_lcls>
    bf52:	ef 2d       	mov	r30, r15
    bf54:	f0 e0       	ldi	r31, 0x00	; 0
    bf56:	ee 0f       	add	r30, r30
    bf58:	ff 1f       	adc	r31, r31
    bf5a:	ed 56       	subi	r30, 0x6D	; 109
    bf5c:	f7 4e       	sbci	r31, 0xE7	; 231
    bf5e:	45 91       	lpm	r20, Z+
    bf60:	54 91       	lpm	r21, Z+
    bf62:	80 e0       	ldi	r24, 0x00	; 0
    bf64:	61 e0       	ldi	r22, 0x01	; 1
    bf66:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    bf6a:	8f 2d       	mov	r24, r15
    bf6c:	62 e0       	ldi	r22, 0x02	; 2
    bf6e:	a8 01       	movw	r20, r16
    bf70:	0e 94 be 5e 	call	0xbd7c	; 0xbd7c <selectitem>
    bf74:	f8 2e       	mov	r15, r24
    bf76:	89 81       	ldd	r24, Y+1	; 0x01
    bf78:	89 31       	cpi	r24, 0x19	; 25
    bf7a:	19 f4       	brne	.+6      	; 0xbf82 <prm_setnmea_adjust+0x5a>
    bf7c:	21 e0       	ldi	r18, 0x01	; 1
    bf7e:	30 e0       	ldi	r19, 0x00	; 0
    bf80:	27 c0       	rjmp	.+78     	; 0xbfd0 <prm_setnmea_adjust+0xa8>
    bf82:	84 31       	cpi	r24, 0x14	; 20
    bf84:	19 f7       	brne	.-58     	; 0xbf4c <prm_setnmea_adjust+0x24>
    bf86:	00 e0       	ldi	r16, 0x00	; 0
    bf88:	10 e0       	ldi	r17, 0x00	; 0
    bf8a:	81 e0       	ldi	r24, 0x01	; 1
    bf8c:	f8 16       	cp	r15, r24
    bf8e:	11 f4       	brne	.+4      	; 0xbf94 <prm_setnmea_adjust+0x6c>
    bf90:	01 e0       	ldi	r16, 0x01	; 1
    bf92:	10 e0       	ldi	r17, 0x00	; 0
    bf94:	10 93 dd 09 	sts	0x09DD, r17
    bf98:	00 93 dc 09 	sts	0x09DC, r16
    bf9c:	01 c0       	rjmp	.+2      	; 0xbfa0 <prm_setnmea_adjust+0x78>
    bf9e:	a8 95       	wdr
    bfa0:	f9 99       	sbic	0x1f, 1	; 31
    bfa2:	fd cf       	rjmp	.-6      	; 0xbf9e <prm_setnmea_adjust+0x76>
    bfa4:	82 ed       	ldi	r24, 0xD2	; 210
    bfa6:	90 e0       	ldi	r25, 0x00	; 0
    bfa8:	0e 94 6c 6e 	call	0xdcd8	; 0xdcd8 <__eerd_word_m644a>
    bfac:	01 30       	cpi	r16, 0x01	; 1
    bfae:	11 05       	cpc	r17, r1
    bfb0:	19 f4       	brne	.+6      	; 0xbfb8 <prm_setnmea_adjust+0x90>
    bfb2:	bc 01       	movw	r22, r24
    bfb4:	72 60       	ori	r23, 0x02	; 2
    bfb6:	04 c0       	rjmp	.+8      	; 0xbfc0 <prm_setnmea_adjust+0x98>
    bfb8:	bc 01       	movw	r22, r24
    bfba:	7d 7f       	andi	r23, 0xFD	; 253
    bfbc:	01 c0       	rjmp	.+2      	; 0xbfc0 <prm_setnmea_adjust+0x98>
    bfbe:	a8 95       	wdr
    bfc0:	f9 99       	sbic	0x1f, 1	; 31
    bfc2:	fd cf       	rjmp	.-6      	; 0xbfbe <prm_setnmea_adjust+0x96>
    bfc4:	82 ed       	ldi	r24, 0xD2	; 210
    bfc6:	90 e0       	ldi	r25, 0x00	; 0
    bfc8:	0e 94 a0 6e 	call	0xdd40	; 0xdd40 <__eeupd_word_m644a>
    bfcc:	20 e0       	ldi	r18, 0x00	; 0
    bfce:	30 e0       	ldi	r19, 0x00	; 0
    bfd0:	c9 01       	movw	r24, r18
    bfd2:	21 96       	adiw	r28, 0x01	; 1
    bfd4:	e5 e0       	ldi	r30, 0x05	; 5
    bfd6:	0c 94 72 6d 	jmp	0xdae4	; 0xdae4 <__epilogue_restores__+0x1a>

0000bfda <prm_setppsedge>:
    bfda:	a1 e0       	ldi	r26, 0x01	; 1
    bfdc:	b0 e0       	ldi	r27, 0x00	; 0
    bfde:	e3 ef       	ldi	r30, 0xF3	; 243
    bfe0:	ff e5       	ldi	r31, 0x5F	; 95
    bfe2:	0c 94 56 6d 	jmp	0xdaac	; 0xdaac <__prologue_saves__+0x1a>
    bfe6:	ff 24       	eor	r15, r15
    bfe8:	80 91 da 09 	lds	r24, 0x09DA
    bfec:	90 91 db 09 	lds	r25, 0x09DB
    bff0:	01 97       	sbiw	r24, 0x01	; 1
    bff2:	11 f4       	brne	.+4      	; 0xbff8 <prm_setppsedge+0x1e>
    bff4:	ff 24       	eor	r15, r15
    bff6:	f3 94       	inc	r15
    bff8:	8e 01       	movw	r16, r28
    bffa:	0f 5f       	subi	r16, 0xFF	; 255
    bffc:	1f 4f       	sbci	r17, 0xFF	; 255
    bffe:	81 e0       	ldi	r24, 0x01	; 1
    c000:	0e 94 f3 1e 	call	0x3de6	; 0x3de6 <lcd_lcls>
    c004:	ef 2d       	mov	r30, r15
    c006:	f0 e0       	ldi	r31, 0x00	; 0
    c008:	ee 0f       	add	r30, r30
    c00a:	ff 1f       	adc	r31, r31
    c00c:	e5 58       	subi	r30, 0x85	; 133
    c00e:	f7 4e       	sbci	r31, 0xE7	; 231
    c010:	45 91       	lpm	r20, Z+
    c012:	54 91       	lpm	r21, Z+
    c014:	80 e0       	ldi	r24, 0x00	; 0
    c016:	61 e0       	ldi	r22, 0x01	; 1
    c018:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    c01c:	8f 2d       	mov	r24, r15
    c01e:	62 e0       	ldi	r22, 0x02	; 2
    c020:	a8 01       	movw	r20, r16
    c022:	0e 94 be 5e 	call	0xbd7c	; 0xbd7c <selectitem>
    c026:	f8 2e       	mov	r15, r24
    c028:	89 81       	ldd	r24, Y+1	; 0x01
    c02a:	89 31       	cpi	r24, 0x19	; 25
    c02c:	19 f4       	brne	.+6      	; 0xc034 <prm_setppsedge+0x5a>
    c02e:	21 e0       	ldi	r18, 0x01	; 1
    c030:	30 e0       	ldi	r19, 0x00	; 0
    c032:	27 c0       	rjmp	.+78     	; 0xc082 <prm_setppsedge+0xa8>
    c034:	84 31       	cpi	r24, 0x14	; 20
    c036:	19 f7       	brne	.-58     	; 0xbffe <prm_setppsedge+0x24>
    c038:	00 e0       	ldi	r16, 0x00	; 0
    c03a:	10 e0       	ldi	r17, 0x00	; 0
    c03c:	81 e0       	ldi	r24, 0x01	; 1
    c03e:	f8 16       	cp	r15, r24
    c040:	11 f4       	brne	.+4      	; 0xc046 <prm_setppsedge+0x6c>
    c042:	01 e0       	ldi	r16, 0x01	; 1
    c044:	10 e0       	ldi	r17, 0x00	; 0
    c046:	10 93 db 09 	sts	0x09DB, r17
    c04a:	00 93 da 09 	sts	0x09DA, r16
    c04e:	01 c0       	rjmp	.+2      	; 0xc052 <prm_setppsedge+0x78>
    c050:	a8 95       	wdr
    c052:	f9 99       	sbic	0x1f, 1	; 31
    c054:	fd cf       	rjmp	.-6      	; 0xc050 <prm_setppsedge+0x76>
    c056:	82 ed       	ldi	r24, 0xD2	; 210
    c058:	90 e0       	ldi	r25, 0x00	; 0
    c05a:	0e 94 6c 6e 	call	0xdcd8	; 0xdcd8 <__eerd_word_m644a>
    c05e:	01 30       	cpi	r16, 0x01	; 1
    c060:	11 05       	cpc	r17, r1
    c062:	19 f4       	brne	.+6      	; 0xc06a <prm_setppsedge+0x90>
    c064:	bc 01       	movw	r22, r24
    c066:	71 60       	ori	r23, 0x01	; 1
    c068:	04 c0       	rjmp	.+8      	; 0xc072 <prm_setppsedge+0x98>
    c06a:	bc 01       	movw	r22, r24
    c06c:	7e 7f       	andi	r23, 0xFE	; 254
    c06e:	01 c0       	rjmp	.+2      	; 0xc072 <prm_setppsedge+0x98>
    c070:	a8 95       	wdr
    c072:	f9 99       	sbic	0x1f, 1	; 31
    c074:	fd cf       	rjmp	.-6      	; 0xc070 <prm_setppsedge+0x96>
    c076:	82 ed       	ldi	r24, 0xD2	; 210
    c078:	90 e0       	ldi	r25, 0x00	; 0
    c07a:	0e 94 a0 6e 	call	0xdd40	; 0xdd40 <__eeupd_word_m644a>
    c07e:	20 e0       	ldi	r18, 0x00	; 0
    c080:	30 e0       	ldi	r19, 0x00	; 0
    c082:	c9 01       	movw	r24, r18
    c084:	21 96       	adiw	r28, 0x01	; 1
    c086:	e5 e0       	ldi	r30, 0x05	; 5
    c088:	0c 94 72 6d 	jmp	0xdae4	; 0xdae4 <__epilogue_restores__+0x1a>

0000c08c <prm_selnmea>:
    c08c:	ef 92       	push	r14
    c08e:	ff 92       	push	r15
    c090:	1f 93       	push	r17
    c092:	df 93       	push	r29
    c094:	cf 93       	push	r28
    c096:	0f 92       	push	r0
    c098:	cd b7       	in	r28, 0x3d	; 61
    c09a:	de b7       	in	r29, 0x3e	; 62
    c09c:	10 91 cb 09 	lds	r17, 0x09CB
    c0a0:	7e 01       	movw	r14, r28
    c0a2:	08 94       	sec
    c0a4:	e1 1c       	adc	r14, r1
    c0a6:	f1 1c       	adc	r15, r1
    c0a8:	81 e0       	ldi	r24, 0x01	; 1
    c0aa:	0e 94 f3 1e 	call	0x3de6	; 0x3de6 <lcd_lcls>
    c0ae:	e1 2f       	mov	r30, r17
    c0b0:	f0 e0       	ldi	r31, 0x00	; 0
    c0b2:	ee 0f       	add	r30, r30
    c0b4:	ff 1f       	adc	r31, r31
    c0b6:	e1 5a       	subi	r30, 0xA1	; 161
    c0b8:	f7 4e       	sbci	r31, 0xE7	; 231
    c0ba:	45 91       	lpm	r20, Z+
    c0bc:	54 91       	lpm	r21, Z+
    c0be:	80 e0       	ldi	r24, 0x00	; 0
    c0c0:	61 e0       	ldi	r22, 0x01	; 1
    c0c2:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    c0c6:	81 2f       	mov	r24, r17
    c0c8:	64 e0       	ldi	r22, 0x04	; 4
    c0ca:	a7 01       	movw	r20, r14
    c0cc:	0e 94 be 5e 	call	0xbd7c	; 0xbd7c <selectitem>
    c0d0:	18 2f       	mov	r17, r24
    c0d2:	89 81       	ldd	r24, Y+1	; 0x01
    c0d4:	89 31       	cpi	r24, 0x19	; 25
    c0d6:	19 f4       	brne	.+6      	; 0xc0de <prm_selnmea+0x52>
    c0d8:	21 e0       	ldi	r18, 0x01	; 1
    c0da:	30 e0       	ldi	r19, 0x00	; 0
    c0dc:	18 c0       	rjmp	.+48     	; 0xc10e <prm_selnmea+0x82>
    c0de:	84 31       	cpi	r24, 0x14	; 20
    c0e0:	19 f7       	brne	.-58     	; 0xc0a8 <prm_selnmea+0x1c>
    c0e2:	10 93 cb 09 	sts	0x09CB, r17
    c0e6:	01 c0       	rjmp	.+2      	; 0xc0ea <prm_selnmea+0x5e>
    c0e8:	a8 95       	wdr
    c0ea:	f9 99       	sbic	0x1f, 1	; 31
    c0ec:	fd cf       	rjmp	.-6      	; 0xc0e8 <prm_selnmea+0x5c>
    c0ee:	80 ed       	ldi	r24, 0xD0	; 208
    c0f0:	90 e0       	ldi	r25, 0x00	; 0
    c0f2:	0e 94 6c 6e 	call	0xdcd8	; 0xdcd8 <__eerd_word_m644a>
    c0f6:	79 2f       	mov	r23, r25
    c0f8:	01 c0       	rjmp	.+2      	; 0xc0fc <prm_selnmea+0x70>
    c0fa:	a8 95       	wdr
    c0fc:	f9 99       	sbic	0x1f, 1	; 31
    c0fe:	fd cf       	rjmp	.-6      	; 0xc0fa <prm_selnmea+0x6e>
    c100:	80 ed       	ldi	r24, 0xD0	; 208
    c102:	90 e0       	ldi	r25, 0x00	; 0
    c104:	61 2f       	mov	r22, r17
    c106:	0e 94 a0 6e 	call	0xdd40	; 0xdd40 <__eeupd_word_m644a>
    c10a:	20 e0       	ldi	r18, 0x00	; 0
    c10c:	30 e0       	ldi	r19, 0x00	; 0
    c10e:	c9 01       	movw	r24, r18
    c110:	0f 90       	pop	r0
    c112:	cf 91       	pop	r28
    c114:	df 91       	pop	r29
    c116:	1f 91       	pop	r17
    c118:	ff 90       	pop	r15
    c11a:	ef 90       	pop	r14
    c11c:	08 95       	ret

0000c11e <prm_setgpstype>:
    c11e:	ef 92       	push	r14
    c120:	ff 92       	push	r15
    c122:	1f 93       	push	r17
    c124:	df 93       	push	r29
    c126:	cf 93       	push	r28
    c128:	0f 92       	push	r0
    c12a:	cd b7       	in	r28, 0x3d	; 61
    c12c:	de b7       	in	r29, 0x3e	; 62
    c12e:	10 91 ca 09 	lds	r17, 0x09CA
    c132:	7e 01       	movw	r14, r28
    c134:	08 94       	sec
    c136:	e1 1c       	adc	r14, r1
    c138:	f1 1c       	adc	r15, r1
    c13a:	81 e0       	ldi	r24, 0x01	; 1
    c13c:	0e 94 f3 1e 	call	0x3de6	; 0x3de6 <lcd_lcls>
    c140:	e1 2f       	mov	r30, r17
    c142:	f0 e0       	ldi	r31, 0x00	; 0
    c144:	ee 0f       	add	r30, r30
    c146:	ff 1f       	adc	r31, r31
    c148:	e1 5e       	subi	r30, 0xE1	; 225
    c14a:	f7 4e       	sbci	r31, 0xE7	; 231
    c14c:	45 91       	lpm	r20, Z+
    c14e:	54 91       	lpm	r21, Z+
    c150:	80 e0       	ldi	r24, 0x00	; 0
    c152:	61 e0       	ldi	r22, 0x01	; 1
    c154:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    c158:	81 2f       	mov	r24, r17
    c15a:	63 e0       	ldi	r22, 0x03	; 3
    c15c:	a7 01       	movw	r20, r14
    c15e:	0e 94 be 5e 	call	0xbd7c	; 0xbd7c <selectitem>
    c162:	18 2f       	mov	r17, r24
    c164:	89 81       	ldd	r24, Y+1	; 0x01
    c166:	89 31       	cpi	r24, 0x19	; 25
    c168:	19 f4       	brne	.+6      	; 0xc170 <prm_setgpstype+0x52>
    c16a:	21 e0       	ldi	r18, 0x01	; 1
    c16c:	30 e0       	ldi	r19, 0x00	; 0
    c16e:	18 c0       	rjmp	.+48     	; 0xc1a0 <prm_setgpstype+0x82>
    c170:	84 31       	cpi	r24, 0x14	; 20
    c172:	19 f7       	brne	.-58     	; 0xc13a <prm_setgpstype+0x1c>
    c174:	10 93 ca 09 	sts	0x09CA, r17
    c178:	01 c0       	rjmp	.+2      	; 0xc17c <prm_setgpstype+0x5e>
    c17a:	a8 95       	wdr
    c17c:	f9 99       	sbic	0x1f, 1	; 31
    c17e:	fd cf       	rjmp	.-6      	; 0xc17a <prm_setgpstype+0x5c>
    c180:	80 ed       	ldi	r24, 0xD0	; 208
    c182:	90 e0       	ldi	r25, 0x00	; 0
    c184:	0e 94 6c 6e 	call	0xdcd8	; 0xdcd8 <__eerd_word_m644a>
    c188:	68 2f       	mov	r22, r24
    c18a:	01 c0       	rjmp	.+2      	; 0xc18e <prm_setgpstype+0x70>
    c18c:	a8 95       	wdr
    c18e:	f9 99       	sbic	0x1f, 1	; 31
    c190:	fd cf       	rjmp	.-6      	; 0xc18c <prm_setgpstype+0x6e>
    c192:	80 ed       	ldi	r24, 0xD0	; 208
    c194:	90 e0       	ldi	r25, 0x00	; 0
    c196:	71 2f       	mov	r23, r17
    c198:	0e 94 a0 6e 	call	0xdd40	; 0xdd40 <__eeupd_word_m644a>
    c19c:	20 e0       	ldi	r18, 0x00	; 0
    c19e:	30 e0       	ldi	r19, 0x00	; 0
    c1a0:	c9 01       	movw	r24, r18
    c1a2:	0f 90       	pop	r0
    c1a4:	cf 91       	pop	r28
    c1a6:	df 91       	pop	r29
    c1a8:	1f 91       	pop	r17
    c1aa:	ff 90       	pop	r15
    c1ac:	ef 90       	pop	r14
    c1ae:	08 95       	ret

0000c1b0 <prm_setbaudrate>:
    c1b0:	ef 92       	push	r14
    c1b2:	ff 92       	push	r15
    c1b4:	1f 93       	push	r17
    c1b6:	df 93       	push	r29
    c1b8:	cf 93       	push	r28
    c1ba:	0f 92       	push	r0
    c1bc:	cd b7       	in	r28, 0x3d	; 61
    c1be:	de b7       	in	r29, 0x3e	; 62
    c1c0:	10 91 1c 01 	lds	r17, 0x011C
    c1c4:	7e 01       	movw	r14, r28
    c1c6:	08 94       	sec
    c1c8:	e1 1c       	adc	r14, r1
    c1ca:	f1 1c       	adc	r15, r1
    c1cc:	81 e0       	ldi	r24, 0x01	; 1
    c1ce:	0e 94 f3 1e 	call	0x3de6	; 0x3de6 <lcd_lcls>
    c1d2:	e1 2f       	mov	r30, r17
    c1d4:	f0 e0       	ldi	r31, 0x00	; 0
    c1d6:	ee 0f       	add	r30, r30
    c1d8:	ff 1f       	adc	r31, r31
    c1da:	ea 51       	subi	r30, 0x1A	; 26
    c1dc:	f8 4e       	sbci	r31, 0xE8	; 232
    c1de:	45 91       	lpm	r20, Z+
    c1e0:	54 91       	lpm	r21, Z+
    c1e2:	80 e0       	ldi	r24, 0x00	; 0
    c1e4:	61 e0       	ldi	r22, 0x01	; 1
    c1e6:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    c1ea:	81 2f       	mov	r24, r17
    c1ec:	67 e0       	ldi	r22, 0x07	; 7
    c1ee:	a7 01       	movw	r20, r14
    c1f0:	0e 94 be 5e 	call	0xbd7c	; 0xbd7c <selectitem>
    c1f4:	18 2f       	mov	r17, r24
    c1f6:	89 81       	ldd	r24, Y+1	; 0x01
    c1f8:	89 31       	cpi	r24, 0x19	; 25
    c1fa:	19 f4       	brne	.+6      	; 0xc202 <prm_setbaudrate+0x52>
    c1fc:	21 e0       	ldi	r18, 0x01	; 1
    c1fe:	30 e0       	ldi	r19, 0x00	; 0
    c200:	10 c0       	rjmp	.+32     	; 0xc222 <prm_setbaudrate+0x72>
    c202:	84 31       	cpi	r24, 0x14	; 20
    c204:	19 f7       	brne	.-58     	; 0xc1cc <prm_setbaudrate+0x1c>
    c206:	10 93 1c 01 	sts	0x011C, r17
    c20a:	01 c0       	rjmp	.+2      	; 0xc20e <prm_setbaudrate+0x5e>
    c20c:	a8 95       	wdr
    c20e:	f9 99       	sbic	0x1f, 1	; 31
    c210:	fd cf       	rjmp	.-6      	; 0xc20c <prm_setbaudrate+0x5c>
    c212:	8a e3       	ldi	r24, 0x3A	; 58
    c214:	90 e0       	ldi	r25, 0x00	; 0
    c216:	61 2f       	mov	r22, r17
    c218:	70 e0       	ldi	r23, 0x00	; 0
    c21a:	0e 94 a0 6e 	call	0xdd40	; 0xdd40 <__eeupd_word_m644a>
    c21e:	20 e0       	ldi	r18, 0x00	; 0
    c220:	30 e0       	ldi	r19, 0x00	; 0
    c222:	c9 01       	movw	r24, r18
    c224:	0f 90       	pop	r0
    c226:	cf 91       	pop	r28
    c228:	df 91       	pop	r29
    c22a:	1f 91       	pop	r17
    c22c:	ff 90       	pop	r15
    c22e:	ef 90       	pop	r14
    c230:	08 95       	ret

0000c232 <prm_settimezone>:
    c232:	ef 92       	push	r14
    c234:	ff 92       	push	r15
    c236:	1f 93       	push	r17
    c238:	df 93       	push	r29
    c23a:	cf 93       	push	r28
    c23c:	0f 92       	push	r0
    c23e:	cd b7       	in	r28, 0x3d	; 61
    c240:	de b7       	in	r29, 0x3e	; 62
    c242:	10 91 e7 09 	lds	r17, 0x09E7
    c246:	7e 01       	movw	r14, r28
    c248:	08 94       	sec
    c24a:	e1 1c       	adc	r14, r1
    c24c:	f1 1c       	adc	r15, r1
    c24e:	81 e0       	ldi	r24, 0x01	; 1
    c250:	0e 94 f3 1e 	call	0x3de6	; 0x3de6 <lcd_lcls>
    c254:	e1 2f       	mov	r30, r17
    c256:	f0 e0       	ldi	r31, 0x00	; 0
    c258:	ee 0f       	add	r30, r30
    c25a:	ff 1f       	adc	r31, r31
    c25c:	ed 57       	subi	r30, 0x7D	; 125
    c25e:	f8 4e       	sbci	r31, 0xE8	; 232
    c260:	45 91       	lpm	r20, Z+
    c262:	54 91       	lpm	r21, Z+
    c264:	80 e0       	ldi	r24, 0x00	; 0
    c266:	61 e0       	ldi	r22, 0x01	; 1
    c268:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    c26c:	81 2f       	mov	r24, r17
    c26e:	66 e0       	ldi	r22, 0x06	; 6
    c270:	a7 01       	movw	r20, r14
    c272:	0e 94 be 5e 	call	0xbd7c	; 0xbd7c <selectitem>
    c276:	18 2f       	mov	r17, r24
    c278:	89 81       	ldd	r24, Y+1	; 0x01
    c27a:	89 31       	cpi	r24, 0x19	; 25
    c27c:	19 f4       	brne	.+6      	; 0xc284 <prm_settimezone+0x52>
    c27e:	21 e0       	ldi	r18, 0x01	; 1
    c280:	30 e0       	ldi	r19, 0x00	; 0
    c282:	23 c0       	rjmp	.+70     	; 0xc2ca <prm_settimezone+0x98>
    c284:	84 31       	cpi	r24, 0x14	; 20
    c286:	19 f7       	brne	.-58     	; 0xc24e <prm_settimezone+0x1c>
    c288:	10 93 e7 09 	sts	0x09E7, r17
    c28c:	61 2f       	mov	r22, r17
    c28e:	70 e0       	ldi	r23, 0x00	; 0
    c290:	fb 01       	movw	r30, r22
    c292:	ee 0f       	add	r30, r30
    c294:	ff 1f       	adc	r31, r31
    c296:	ee 0f       	add	r30, r30
    c298:	ff 1f       	adc	r31, r31
    c29a:	e1 57       	subi	r30, 0x71	; 113
    c29c:	f8 4e       	sbci	r31, 0xE8	; 232
    c29e:	85 91       	lpm	r24, Z+
    c2a0:	95 91       	lpm	r25, Z+
    c2a2:	a5 91       	lpm	r26, Z+
    c2a4:	b4 91       	lpm	r27, Z+
    c2a6:	80 93 a5 01 	sts	0x01A5, r24
    c2aa:	90 93 a6 01 	sts	0x01A6, r25
    c2ae:	a0 93 a7 01 	sts	0x01A7, r26
    c2b2:	b0 93 a8 01 	sts	0x01A8, r27
    c2b6:	01 c0       	rjmp	.+2      	; 0xc2ba <prm_settimezone+0x88>
    c2b8:	a8 95       	wdr
    c2ba:	f9 99       	sbic	0x1f, 1	; 31
    c2bc:	fd cf       	rjmp	.-6      	; 0xc2b8 <prm_settimezone+0x86>
    c2be:	8c ec       	ldi	r24, 0xCC	; 204
    c2c0:	90 e0       	ldi	r25, 0x00	; 0
    c2c2:	0e 94 a0 6e 	call	0xdd40	; 0xdd40 <__eeupd_word_m644a>
    c2c6:	20 e0       	ldi	r18, 0x00	; 0
    c2c8:	30 e0       	ldi	r19, 0x00	; 0
    c2ca:	c9 01       	movw	r24, r18
    c2cc:	0f 90       	pop	r0
    c2ce:	cf 91       	pop	r28
    c2d0:	df 91       	pop	r29
    c2d2:	1f 91       	pop	r17
    c2d4:	ff 90       	pop	r15
    c2d6:	ef 90       	pop	r14
    c2d8:	08 95       	ret

0000c2da <prm_selitem>:
    c2da:	a1 e0       	ldi	r26, 0x01	; 1
    c2dc:	b0 e0       	ldi	r27, 0x00	; 0
    c2de:	e3 e7       	ldi	r30, 0x73	; 115
    c2e0:	f1 e6       	ldi	r31, 0x61	; 97
    c2e2:	0c 94 51 6d 	jmp	0xdaa2	; 0xdaa2 <__prologue_saves__+0x10>
    c2e6:	7c 01       	movw	r14, r24
    c2e8:	06 2f       	mov	r16, r22
    c2ea:	6a 01       	movw	r12, r20
    c2ec:	fc 01       	movw	r30, r24
    c2ee:	10 81       	ld	r17, Z
    c2f0:	5e 01       	movw	r10, r28
    c2f2:	08 94       	sec
    c2f4:	a1 1c       	adc	r10, r1
    c2f6:	b1 1c       	adc	r11, r1
    c2f8:	81 e0       	ldi	r24, 0x01	; 1
    c2fa:	0e 94 f3 1e 	call	0x3de6	; 0x3de6 <lcd_lcls>
    c2fe:	f6 01       	movw	r30, r12
    c300:	e1 0f       	add	r30, r17
    c302:	f1 1d       	adc	r31, r1
    c304:	45 91       	lpm	r20, Z+
    c306:	54 91       	lpm	r21, Z+
    c308:	80 e0       	ldi	r24, 0x00	; 0
    c30a:	61 e0       	ldi	r22, 0x01	; 1
    c30c:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    c310:	81 2f       	mov	r24, r17
    c312:	60 2f       	mov	r22, r16
    c314:	a5 01       	movw	r20, r10
    c316:	0e 94 be 5e 	call	0xbd7c	; 0xbd7c <selectitem>
    c31a:	18 2f       	mov	r17, r24
    c31c:	89 81       	ldd	r24, Y+1	; 0x01
    c31e:	89 31       	cpi	r24, 0x19	; 25
    c320:	19 f4       	brne	.+6      	; 0xc328 <prm_selitem+0x4e>
    c322:	21 e0       	ldi	r18, 0x01	; 1
    c324:	30 e0       	ldi	r19, 0x00	; 0
    c326:	06 c0       	rjmp	.+12     	; 0xc334 <prm_selitem+0x5a>
    c328:	84 31       	cpi	r24, 0x14	; 20
    c32a:	31 f7       	brne	.-52     	; 0xc2f8 <prm_selitem+0x1e>
    c32c:	f7 01       	movw	r30, r14
    c32e:	10 83       	st	Z, r17
    c330:	20 e0       	ldi	r18, 0x00	; 0
    c332:	30 e0       	ldi	r19, 0x00	; 0
    c334:	c9 01       	movw	r24, r18
    c336:	21 96       	adiw	r28, 0x01	; 1
    c338:	ea e0       	ldi	r30, 0x0A	; 10
    c33a:	0c 94 6d 6d 	jmp	0xdada	; 0xdada <__epilogue_restores__+0x10>

0000c33e <setstring>:
    c33e:	a0 e0       	ldi	r26, 0x00	; 0
    c340:	b0 e0       	ldi	r27, 0x00	; 0
    c342:	e5 ea       	ldi	r30, 0xA5	; 165
    c344:	f1 e6       	ldi	r31, 0x61	; 97
    c346:	0c 94 4a 6d 	jmp	0xda94	; 0xda94 <__prologue_saves__+0x2>
    c34a:	c8 2e       	mov	r12, r24
    c34c:	36 2e       	mov	r3, r22
    c34e:	7a 01       	movw	r14, r20
    c350:	b2 2e       	mov	r11, r18
    c352:	e8 01       	movw	r28, r16
    c354:	0e 94 17 1f 	call	0x3e2e	; 0x3e2e <lcd_print>
    c358:	f7 01       	movw	r30, r14
    c35a:	eb 0d       	add	r30, r11
    c35c:	f1 1d       	adc	r31, r1
    c35e:	10 82       	st	Z, r1
    c360:	f7 01       	movw	r30, r14
    c362:	90 81       	ld	r25, Z
    c364:	89 2f       	mov	r24, r25
    c366:	80 53       	subi	r24, 0x30	; 48
    c368:	8a 30       	cpi	r24, 0x0A	; 10
    c36a:	10 f4       	brcc	.+4      	; 0xc370 <setstring+0x32>
    c36c:	18 2f       	mov	r17, r24
    c36e:	08 c0       	rjmp	.+16     	; 0xc380 <setstring+0x42>
    c370:	89 2f       	mov	r24, r25
    c372:	81 54       	subi	r24, 0x41	; 65
    c374:	86 30       	cpi	r24, 0x06	; 6
    c376:	10 f0       	brcs	.+4      	; 0xc37c <setstring+0x3e>
    c378:	10 e0       	ldi	r17, 0x00	; 0
    c37a:	02 c0       	rjmp	.+4      	; 0xc380 <setstring+0x42>
    c37c:	19 2f       	mov	r17, r25
    c37e:	17 53       	subi	r17, 0x37	; 55
    c380:	a8 95       	wdr
    c382:	1b 9b       	sbis	0x03, 3	; 3
    c384:	fd cf       	rjmp	.-6      	; 0xc380 <setstring+0x42>
    c386:	81 e0       	ldi	r24, 0x01	; 1
    c388:	0e 94 8b 1e 	call	0x3d16	; 0x3d16 <lcd_dispcursor>
    c38c:	21 97       	sbiw	r28, 0x01	; 1
    c38e:	11 f0       	breq	.+4      	; 0xc394 <setstring+0x56>
    c390:	8a e0       	ldi	r24, 0x0A	; 10
    c392:	01 c0       	rjmp	.+2      	; 0xc396 <setstring+0x58>
    c394:	80 e1       	ldi	r24, 0x10	; 16
    c396:	01 2f       	mov	r16, r17
    c398:	11 27       	eor	r17, r17
    c39a:	07 fd       	sbrc	r16, 7
    c39c:	10 95       	com	r17
    c39e:	dc 2c       	mov	r13, r12
    c3a0:	c0 e0       	ldi	r28, 0x00	; 0
    c3a2:	d0 e0       	ldi	r29, 0x00	; 0
    c3a4:	4b 2c       	mov	r4, r11
    c3a6:	55 24       	eor	r5, r5
    c3a8:	88 2e       	mov	r8, r24
    c3aa:	99 24       	eor	r9, r9
    c3ac:	34 01       	movw	r6, r8
    c3ae:	08 94       	sec
    c3b0:	61 08       	sbc	r6, r1
    c3b2:	71 08       	sbc	r7, r1
    c3b4:	57 01       	movw	r10, r14
    c3b6:	ac 0e       	add	r10, r28
    c3b8:	bd 1e       	adc	r11, r29
    c3ba:	8d 2d       	mov	r24, r13
    c3bc:	63 2d       	mov	r22, r3
    c3be:	0e 94 ae 1e 	call	0x3d5c	; 0x3d5c <lcd_locate>
    c3c2:	0a 30       	cpi	r16, 0x0A	; 10
    c3c4:	11 05       	cpc	r17, r1
    c3c6:	18 f4       	brcc	.+6      	; 0xc3ce <setstring+0x90>
    c3c8:	80 2f       	mov	r24, r16
    c3ca:	80 5d       	subi	r24, 0xD0	; 208
    c3cc:	02 c0       	rjmp	.+4      	; 0xc3d2 <setstring+0x94>
    c3ce:	80 2f       	mov	r24, r16
    c3d0:	89 5c       	subi	r24, 0xC9	; 201
    c3d2:	0e 94 55 1e 	call	0x3caa	; 0x3caa <lcd_putch>
    c3d6:	0e 94 7d 1e 	call	0x3cfa	; 0x3cfa <lcd_curleft>
    c3da:	0e 94 95 20 	call	0x412a	; 0x412a <key_input>
    c3de:	81 31       	cpi	r24, 0x11	; 17
    c3e0:	41 f4       	brne	.+16     	; 0xc3f2 <setstring+0xb4>
    c3e2:	0f 5f       	subi	r16, 0xFF	; 255
    c3e4:	1f 4f       	sbci	r17, 0xFF	; 255
    c3e6:	08 15       	cp	r16, r8
    c3e8:	19 05       	cpc	r17, r9
    c3ea:	4c f0       	brlt	.+18     	; 0xc3fe <setstring+0xc0>
    c3ec:	00 e0       	ldi	r16, 0x00	; 0
    c3ee:	10 e0       	ldi	r17, 0x00	; 0
    c3f0:	06 c0       	rjmp	.+12     	; 0xc3fe <setstring+0xc0>
    c3f2:	82 31       	cpi	r24, 0x12	; 18
    c3f4:	79 f4       	brne	.+30     	; 0xc414 <setstring+0xd6>
    c3f6:	01 50       	subi	r16, 0x01	; 1
    c3f8:	10 40       	sbci	r17, 0x00	; 0
    c3fa:	17 fd       	sbrc	r17, 7
    c3fc:	83 01       	movw	r16, r6
    c3fe:	0a 30       	cpi	r16, 0x0A	; 10
    c400:	11 05       	cpc	r17, r1
    c402:	18 f4       	brcc	.+6      	; 0xc40a <setstring+0xcc>
    c404:	80 2f       	mov	r24, r16
    c406:	80 5d       	subi	r24, 0xD0	; 208
    c408:	02 c0       	rjmp	.+4      	; 0xc40e <setstring+0xd0>
    c40a:	80 2f       	mov	r24, r16
    c40c:	89 5c       	subi	r24, 0xC9	; 201
    c40e:	f5 01       	movw	r30, r10
    c410:	80 83       	st	Z, r24
    c412:	d0 cf       	rjmp	.-96     	; 0xc3b4 <setstring+0x76>
    c414:	83 31       	cpi	r24, 0x13	; 19
    c416:	51 f5       	brne	.+84     	; 0xc46c <setstring+0x12e>
    c418:	21 96       	adiw	r28, 0x01	; 1
    c41a:	d3 94       	inc	r13
    c41c:	f7 01       	movw	r30, r14
    c41e:	ec 0f       	add	r30, r28
    c420:	fd 1f       	adc	r31, r29
    c422:	80 81       	ld	r24, Z
    c424:	99 27       	eor	r25, r25
    c426:	87 fd       	sbrc	r24, 7
    c428:	90 95       	com	r25
    c42a:	0e 94 80 6d 	call	0xdb00	; 0xdb00 <isalnum>
    c42e:	89 2b       	or	r24, r25
    c430:	11 f4       	brne	.+4      	; 0xc436 <setstring+0xf8>
    c432:	21 96       	adiw	r28, 0x01	; 1
    c434:	d3 94       	inc	r13
    c436:	c4 15       	cp	r28, r4
    c438:	d5 05       	cpc	r29, r5
    c43a:	1c f0       	brlt	.+6      	; 0xc442 <setstring+0x104>
    c43c:	dc 2c       	mov	r13, r12
    c43e:	c0 e0       	ldi	r28, 0x00	; 0
    c440:	d0 e0       	ldi	r29, 0x00	; 0
    c442:	f7 01       	movw	r30, r14
    c444:	ec 0f       	add	r30, r28
    c446:	fd 1f       	adc	r31, r29
    c448:	e0 81       	ld	r30, Z
    c44a:	8e 2f       	mov	r24, r30
    c44c:	80 53       	subi	r24, 0x30	; 48
    c44e:	8a 30       	cpi	r24, 0x0A	; 10
    c450:	40 f0       	brcs	.+16     	; 0xc462 <setstring+0x124>
    c452:	8e 2f       	mov	r24, r30
    c454:	81 54       	subi	r24, 0x41	; 65
    c456:	86 30       	cpi	r24, 0x06	; 6
    c458:	10 f0       	brcs	.+4      	; 0xc45e <setstring+0x120>
    c45a:	80 e0       	ldi	r24, 0x00	; 0
    c45c:	02 c0       	rjmp	.+4      	; 0xc462 <setstring+0x124>
    c45e:	8e 2f       	mov	r24, r30
    c460:	87 53       	subi	r24, 0x37	; 55
    c462:	08 2f       	mov	r16, r24
    c464:	11 27       	eor	r17, r17
    c466:	07 fd       	sbrc	r16, 7
    c468:	10 95       	com	r17
    c46a:	a4 cf       	rjmp	.-184    	; 0xc3b4 <setstring+0x76>
    c46c:	84 31       	cpi	r24, 0x14	; 20
    c46e:	19 f4       	brne	.+6      	; 0xc476 <setstring+0x138>
    c470:	01 e0       	ldi	r16, 0x01	; 1
    c472:	10 e0       	ldi	r17, 0x00	; 0
    c474:	05 c0       	rjmp	.+10     	; 0xc480 <setstring+0x142>
    c476:	89 31       	cpi	r24, 0x19	; 25
    c478:	09 f0       	breq	.+2      	; 0xc47c <setstring+0x13e>
    c47a:	9c cf       	rjmp	.-200    	; 0xc3b4 <setstring+0x76>
    c47c:	00 e0       	ldi	r16, 0x00	; 0
    c47e:	10 e0       	ldi	r17, 0x00	; 0
    c480:	80 e0       	ldi	r24, 0x00	; 0
    c482:	0e 94 8b 1e 	call	0x3d16	; 0x3d16 <lcd_dispcursor>
    c486:	c8 01       	movw	r24, r16
    c488:	cd b7       	in	r28, 0x3d	; 61
    c48a:	de b7       	in	r29, 0x3e	; 62
    c48c:	e1 e1       	ldi	r30, 0x11	; 17
    c48e:	0c 94 66 6d 	jmp	0xdacc	; 0xdacc <__epilogue_restores__+0x2>

0000c492 <prm_setmacaddr>:
    c492:	a0 e1       	ldi	r26, 0x10	; 16
    c494:	b0 e0       	ldi	r27, 0x00	; 0
    c496:	ef e4       	ldi	r30, 0x4F	; 79
    c498:	f2 e6       	ldi	r31, 0x62	; 98
    c49a:	0c 94 53 6d 	jmp	0xdaa6	; 0xdaa6 <__prologue_saves__+0x14>
    c49e:	8e 01       	movw	r16, r28
    c4a0:	0f 5f       	subi	r16, 0xFF	; 255
    c4a2:	1f 4f       	sbci	r17, 0xFF	; 255
    c4a4:	9c e8       	ldi	r25, 0x8C	; 140
    c4a6:	e9 2e       	mov	r14, r25
    c4a8:	94 e0       	ldi	r25, 0x04	; 4
    c4aa:	f9 2e       	mov	r15, r25
    c4ac:	8d e0       	ldi	r24, 0x0D	; 13
    c4ae:	c8 2e       	mov	r12, r24
    c4b0:	d1 2c       	mov	r13, r1
    c4b2:	cc 0e       	add	r12, r28
    c4b4:	dd 1e       	adc	r13, r29
    c4b6:	f7 01       	movw	r30, r14
    c4b8:	81 91       	ld	r24, Z+
    c4ba:	7f 01       	movw	r14, r30
    c4bc:	b8 01       	movw	r22, r16
    c4be:	0e 94 97 3e 	call	0x7d2e	; 0x7d2e <uctoahz>
    c4c2:	0e 5f       	subi	r16, 0xFE	; 254
    c4c4:	1f 4f       	sbci	r17, 0xFF	; 255
    c4c6:	0c 15       	cp	r16, r12
    c4c8:	1d 05       	cpc	r17, r13
    c4ca:	a9 f7       	brne	.-22     	; 0xc4b6 <prm_setmacaddr+0x24>
    c4cc:	82 e0       	ldi	r24, 0x02	; 2
    c4ce:	61 e0       	ldi	r22, 0x01	; 1
    c4d0:	7e 01       	movw	r14, r28
    c4d2:	08 94       	sec
    c4d4:	e1 1c       	adc	r14, r1
    c4d6:	f1 1c       	adc	r15, r1
    c4d8:	a7 01       	movw	r20, r14
    c4da:	2c e0       	ldi	r18, 0x0C	; 12
    c4dc:	01 e0       	ldi	r16, 0x01	; 1
    c4de:	10 e0       	ldi	r17, 0x00	; 0
    c4e0:	0e 94 9f 61 	call	0xc33e	; 0xc33e <setstring>
    c4e4:	89 2b       	or	r24, r25
    c4e6:	19 f4       	brne	.+6      	; 0xc4ee <prm_setmacaddr+0x5c>
    c4e8:	21 e0       	ldi	r18, 0x01	; 1
    c4ea:	30 e0       	ldi	r19, 0x00	; 0
    c4ec:	1e c0       	rjmp	.+60     	; 0xc52a <prm_setmacaddr+0x98>
    c4ee:	0c e8       	ldi	r16, 0x8C	; 140
    c4f0:	14 e0       	ldi	r17, 0x04	; 4
    c4f2:	c7 01       	movw	r24, r14
    c4f4:	0e 94 2f 40 	call	0x805e	; 0x805e <atox>
    c4f8:	f8 01       	movw	r30, r16
    c4fa:	81 93       	st	Z+, r24
    c4fc:	8f 01       	movw	r16, r30
    c4fe:	82 e0       	ldi	r24, 0x02	; 2
    c500:	90 e0       	ldi	r25, 0x00	; 0
    c502:	e8 0e       	add	r14, r24
    c504:	f9 1e       	adc	r15, r25
    c506:	94 e0       	ldi	r25, 0x04	; 4
    c508:	e2 39       	cpi	r30, 0x92	; 146
    c50a:	f9 07       	cpc	r31, r25
    c50c:	91 f7       	brne	.-28     	; 0xc4f2 <prm_setmacaddr+0x60>
    c50e:	01 c0       	rjmp	.+2      	; 0xc512 <prm_setmacaddr+0x80>
    c510:	a8 95       	wdr
    c512:	f9 99       	sbic	0x1f, 1	; 31
    c514:	fd cf       	rjmp	.-6      	; 0xc510 <prm_setmacaddr+0x7e>
    c516:	8c e8       	ldi	r24, 0x8C	; 140
    c518:	94 e0       	ldi	r25, 0x04	; 4
    c51a:	60 e0       	ldi	r22, 0x00	; 0
    c51c:	70 e0       	ldi	r23, 0x00	; 0
    c51e:	46 e0       	ldi	r20, 0x06	; 6
    c520:	50 e0       	ldi	r21, 0x00	; 0
    c522:	0e 94 72 6e 	call	0xdce4	; 0xdce4 <__eeupd_block_m644a>
    c526:	20 e0       	ldi	r18, 0x00	; 0
    c528:	30 e0       	ldi	r19, 0x00	; 0
    c52a:	c9 01       	movw	r24, r18
    c52c:	60 96       	adiw	r28, 0x10	; 16
    c52e:	e8 e0       	ldi	r30, 0x08	; 8
    c530:	0c 94 6f 6d 	jmp	0xdade	; 0xdade <__epilogue_restores__+0x14>

0000c534 <prm_setmaxpoll>:
    c534:	a8 e0       	ldi	r26, 0x08	; 8
    c536:	b0 e0       	ldi	r27, 0x00	; 0
    c538:	e0 ea       	ldi	r30, 0xA0	; 160
    c53a:	f2 e6       	ldi	r31, 0x62	; 98
    c53c:	0c 94 55 6d 	jmp	0xdaaa	; 0xdaaa <__prologue_saves__+0x18>
    c540:	80 91 a9 01 	lds	r24, 0x01A9
    c544:	90 91 aa 01 	lds	r25, 0x01AA
    c548:	0e 94 27 41 	call	0x824e	; 0x824e <log2x>
    c54c:	18 2f       	mov	r17, r24
    c54e:	82 e0       	ldi	r24, 0x02	; 2
    c550:	61 e0       	ldi	r22, 0x01	; 1
    c552:	4a ea       	ldi	r20, 0xAA	; 170
    c554:	58 e1       	ldi	r21, 0x18	; 24
    c556:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    c55a:	81 2f       	mov	r24, r17
    c55c:	be 01       	movw	r22, r28
    c55e:	6f 5f       	subi	r22, 0xFF	; 255
    c560:	7f 4f       	sbci	r23, 0xFF	; 255
    c562:	0e 94 27 3f 	call	0x7e4e	; 0x7e4e <uctoaz>
    c566:	22 e0       	ldi	r18, 0x02	; 2
    c568:	e2 2e       	mov	r14, r18
    c56a:	f1 2c       	mov	r15, r1
    c56c:	ec 0e       	add	r14, r28
    c56e:	fd 1e       	adc	r15, r29
    c570:	87 e0       	ldi	r24, 0x07	; 7
    c572:	61 e0       	ldi	r22, 0x01	; 1
    c574:	a7 01       	movw	r20, r14
    c576:	0e 94 17 1f 	call	0x3e2e	; 0x3e2e <lcd_print>
    c57a:	87 e0       	ldi	r24, 0x07	; 7
    c57c:	61 e0       	ldi	r22, 0x01	; 1
    c57e:	a7 01       	movw	r20, r14
    c580:	22 e0       	ldi	r18, 0x02	; 2
    c582:	00 e0       	ldi	r16, 0x00	; 0
    c584:	10 e0       	ldi	r17, 0x00	; 0
    c586:	0e 94 9f 61 	call	0xc33e	; 0xc33e <setstring>
    c58a:	89 2b       	or	r24, r25
    c58c:	51 f1       	breq	.+84     	; 0xc5e2 <prm_setmaxpoll+0xae>
    c58e:	c7 01       	movw	r24, r14
    c590:	0e 94 e8 3f 	call	0x7fd0	; 0x7fd0 <_atoi>
    c594:	18 2f       	mov	r17, r24
    c596:	8f 30       	cpi	r24, 0x0F	; 15
    c598:	20 f5       	brcc	.+72     	; 0xc5e2 <prm_setmaxpoll+0xae>
    c59a:	81 e0       	ldi	r24, 0x01	; 1
    c59c:	90 e0       	ldi	r25, 0x00	; 0
    c59e:	01 2e       	mov	r0, r17
    c5a0:	02 c0       	rjmp	.+4      	; 0xc5a6 <prm_setmaxpoll+0x72>
    c5a2:	88 0f       	add	r24, r24
    c5a4:	99 1f       	adc	r25, r25
    c5a6:	0a 94       	dec	r0
    c5a8:	e2 f7       	brpl	.-8      	; 0xc5a2 <prm_setmaxpoll+0x6e>
    c5aa:	90 93 aa 01 	sts	0x01AA, r25
    c5ae:	80 93 a9 01 	sts	0x01A9, r24
    c5b2:	01 c0       	rjmp	.+2      	; 0xc5b6 <prm_setmaxpoll+0x82>
    c5b4:	a8 95       	wdr
    c5b6:	f9 99       	sbic	0x1f, 1	; 31
    c5b8:	fd cf       	rjmp	.-6      	; 0xc5b4 <prm_setmaxpoll+0x80>
    c5ba:	8a ec       	ldi	r24, 0xCA	; 202
    c5bc:	90 e0       	ldi	r25, 0x00	; 0
    c5be:	0e 94 6c 6e 	call	0xdcd8	; 0xdcd8 <__eerd_word_m644a>
    c5c2:	01 c0       	rjmp	.+2      	; 0xc5c6 <prm_setmaxpoll+0x92>
    c5c4:	a8 95       	wdr
    c5c6:	f9 99       	sbic	0x1f, 1	; 31
    c5c8:	fd cf       	rjmp	.-6      	; 0xc5c4 <prm_setmaxpoll+0x90>
    c5ca:	90 70       	andi	r25, 0x00	; 0
    c5cc:	71 2f       	mov	r23, r17
    c5ce:	60 e0       	ldi	r22, 0x00	; 0
    c5d0:	68 2b       	or	r22, r24
    c5d2:	79 2b       	or	r23, r25
    c5d4:	8a ec       	ldi	r24, 0xCA	; 202
    c5d6:	90 e0       	ldi	r25, 0x00	; 0
    c5d8:	0e 94 a0 6e 	call	0xdd40	; 0xdd40 <__eeupd_word_m644a>
    c5dc:	20 e0       	ldi	r18, 0x00	; 0
    c5de:	30 e0       	ldi	r19, 0x00	; 0
    c5e0:	02 c0       	rjmp	.+4      	; 0xc5e6 <prm_setmaxpoll+0xb2>
    c5e2:	21 e0       	ldi	r18, 0x01	; 1
    c5e4:	30 e0       	ldi	r19, 0x00	; 0
    c5e6:	c9 01       	movw	r24, r18
    c5e8:	28 96       	adiw	r28, 0x08	; 8
    c5ea:	e6 e0       	ldi	r30, 0x06	; 6
    c5ec:	0c 94 71 6d 	jmp	0xdae2	; 0xdae2 <__epilogue_restores__+0x18>

0000c5f0 <prm_setustout>:
    c5f0:	a8 e0       	ldi	r26, 0x08	; 8
    c5f2:	b0 e0       	ldi	r27, 0x00	; 0
    c5f4:	ee ef       	ldi	r30, 0xFE	; 254
    c5f6:	f2 e6       	ldi	r31, 0x62	; 98
    c5f8:	0c 94 55 6d 	jmp	0xdaaa	; 0xdaaa <__prologue_saves__+0x18>
    c5fc:	82 e0       	ldi	r24, 0x02	; 2
    c5fe:	61 e0       	ldi	r22, 0x01	; 1
    c600:	49 eb       	ldi	r20, 0xB9	; 185
    c602:	58 e1       	ldi	r21, 0x18	; 24
    c604:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    c608:	80 91 d2 09 	lds	r24, 0x09D2
    c60c:	90 91 d3 09 	lds	r25, 0x09D3
    c610:	7e 01       	movw	r14, r28
    c612:	08 94       	sec
    c614:	e1 1c       	adc	r14, r1
    c616:	f1 1c       	adc	r15, r1
    c618:	b7 01       	movw	r22, r14
    c61a:	0e 94 43 3f 	call	0x7e86	; 0x7e86 <ustoaz>
    c61e:	ac 01       	movw	r20, r24
    c620:	87 e0       	ldi	r24, 0x07	; 7
    c622:	61 e0       	ldi	r22, 0x01	; 1
    c624:	0e 94 17 1f 	call	0x3e2e	; 0x3e2e <lcd_print>
    c628:	87 e0       	ldi	r24, 0x07	; 7
    c62a:	61 e0       	ldi	r22, 0x01	; 1
    c62c:	a7 01       	movw	r20, r14
    c62e:	25 e0       	ldi	r18, 0x05	; 5
    c630:	00 e0       	ldi	r16, 0x00	; 0
    c632:	10 e0       	ldi	r17, 0x00	; 0
    c634:	0e 94 9f 61 	call	0xc33e	; 0xc33e <setstring>
    c638:	89 2b       	or	r24, r25
    c63a:	19 f4       	brne	.+6      	; 0xc642 <prm_setustout+0x52>
    c63c:	21 e0       	ldi	r18, 0x01	; 1
    c63e:	30 e0       	ldi	r19, 0x00	; 0
    c640:	12 c0       	rjmp	.+36     	; 0xc666 <prm_setustout+0x76>
    c642:	c7 01       	movw	r24, r14
    c644:	0e 94 e8 3f 	call	0x7fd0	; 0x7fd0 <_atoi>
    c648:	bc 01       	movw	r22, r24
    c64a:	90 93 d3 09 	sts	0x09D3, r25
    c64e:	80 93 d2 09 	sts	0x09D2, r24
    c652:	01 c0       	rjmp	.+2      	; 0xc656 <prm_setustout+0x66>
    c654:	a8 95       	wdr
    c656:	f9 99       	sbic	0x1f, 1	; 31
    c658:	fd cf       	rjmp	.-6      	; 0xc654 <prm_setustout+0x64>
    c65a:	86 ed       	ldi	r24, 0xD6	; 214
    c65c:	90 e0       	ldi	r25, 0x00	; 0
    c65e:	0e 94 a0 6e 	call	0xdd40	; 0xdd40 <__eeupd_word_m644a>
    c662:	20 e0       	ldi	r18, 0x00	; 0
    c664:	30 e0       	ldi	r19, 0x00	; 0
    c666:	c9 01       	movw	r24, r18
    c668:	28 96       	adiw	r28, 0x08	; 8
    c66a:	e6 e0       	ldi	r30, 0x06	; 6
    c66c:	0c 94 71 6d 	jmp	0xdae2	; 0xdae2 <__epilogue_restores__+0x18>

0000c670 <prm_setndtout>:
    c670:	a8 e0       	ldi	r26, 0x08	; 8
    c672:	b0 e0       	ldi	r27, 0x00	; 0
    c674:	ee e3       	ldi	r30, 0x3E	; 62
    c676:	f3 e6       	ldi	r31, 0x63	; 99
    c678:	0c 94 55 6d 	jmp	0xdaaa	; 0xdaaa <__prologue_saves__+0x18>
    c67c:	82 e0       	ldi	r24, 0x02	; 2
    c67e:	61 e0       	ldi	r22, 0x01	; 1
    c680:	47 ec       	ldi	r20, 0xC7	; 199
    c682:	58 e1       	ldi	r21, 0x18	; 24
    c684:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    c688:	80 91 d0 09 	lds	r24, 0x09D0
    c68c:	90 91 d1 09 	lds	r25, 0x09D1
    c690:	7e 01       	movw	r14, r28
    c692:	08 94       	sec
    c694:	e1 1c       	adc	r14, r1
    c696:	f1 1c       	adc	r15, r1
    c698:	b7 01       	movw	r22, r14
    c69a:	0e 94 43 3f 	call	0x7e86	; 0x7e86 <ustoaz>
    c69e:	ac 01       	movw	r20, r24
    c6a0:	87 e0       	ldi	r24, 0x07	; 7
    c6a2:	61 e0       	ldi	r22, 0x01	; 1
    c6a4:	0e 94 17 1f 	call	0x3e2e	; 0x3e2e <lcd_print>
    c6a8:	87 e0       	ldi	r24, 0x07	; 7
    c6aa:	61 e0       	ldi	r22, 0x01	; 1
    c6ac:	a7 01       	movw	r20, r14
    c6ae:	25 e0       	ldi	r18, 0x05	; 5
    c6b0:	00 e0       	ldi	r16, 0x00	; 0
    c6b2:	10 e0       	ldi	r17, 0x00	; 0
    c6b4:	0e 94 9f 61 	call	0xc33e	; 0xc33e <setstring>
    c6b8:	89 2b       	or	r24, r25
    c6ba:	19 f4       	brne	.+6      	; 0xc6c2 <prm_setndtout+0x52>
    c6bc:	21 e0       	ldi	r18, 0x01	; 1
    c6be:	30 e0       	ldi	r19, 0x00	; 0
    c6c0:	12 c0       	rjmp	.+36     	; 0xc6e6 <prm_setndtout+0x76>
    c6c2:	c7 01       	movw	r24, r14
    c6c4:	0e 94 e8 3f 	call	0x7fd0	; 0x7fd0 <_atoi>
    c6c8:	bc 01       	movw	r22, r24
    c6ca:	90 93 d1 09 	sts	0x09D1, r25
    c6ce:	80 93 d0 09 	sts	0x09D0, r24
    c6d2:	01 c0       	rjmp	.+2      	; 0xc6d6 <prm_setndtout+0x66>
    c6d4:	a8 95       	wdr
    c6d6:	f9 99       	sbic	0x1f, 1	; 31
    c6d8:	fd cf       	rjmp	.-6      	; 0xc6d4 <prm_setndtout+0x64>
    c6da:	84 ed       	ldi	r24, 0xD4	; 212
    c6dc:	90 e0       	ldi	r25, 0x00	; 0
    c6de:	0e 94 a0 6e 	call	0xdd40	; 0xdd40 <__eeupd_word_m644a>
    c6e2:	20 e0       	ldi	r18, 0x00	; 0
    c6e4:	30 e0       	ldi	r19, 0x00	; 0
    c6e6:	c9 01       	movw	r24, r18
    c6e8:	28 96       	adiw	r28, 0x08	; 8
    c6ea:	e6 e0       	ldi	r30, 0x06	; 6
    c6ec:	0c 94 71 6d 	jmp	0xdae2	; 0xdae2 <__epilogue_restores__+0x18>

0000c6f0 <prm_setslewwidth>:
    c6f0:	a8 e0       	ldi	r26, 0x08	; 8
    c6f2:	b0 e0       	ldi	r27, 0x00	; 0
    c6f4:	ee e7       	ldi	r30, 0x7E	; 126
    c6f6:	f3 e6       	ldi	r31, 0x63	; 99
    c6f8:	0c 94 55 6d 	jmp	0xdaaa	; 0xdaaa <__prologue_saves__+0x18>
    c6fc:	81 e0       	ldi	r24, 0x01	; 1
    c6fe:	61 e0       	ldi	r22, 0x01	; 1
    c700:	45 ed       	ldi	r20, 0xD5	; 213
    c702:	58 e1       	ldi	r21, 0x18	; 24
    c704:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    c708:	80 91 01 08 	lds	r24, 0x0801
    c70c:	90 91 02 08 	lds	r25, 0x0802
    c710:	7e 01       	movw	r14, r28
    c712:	08 94       	sec
    c714:	e1 1c       	adc	r14, r1
    c716:	f1 1c       	adc	r15, r1
    c718:	b7 01       	movw	r22, r14
    c71a:	0e 94 43 3f 	call	0x7e86	; 0x7e86 <ustoaz>
    c71e:	ac 01       	movw	r20, r24
    c720:	87 e0       	ldi	r24, 0x07	; 7
    c722:	61 e0       	ldi	r22, 0x01	; 1
    c724:	0e 94 17 1f 	call	0x3e2e	; 0x3e2e <lcd_print>
    c728:	87 e0       	ldi	r24, 0x07	; 7
    c72a:	61 e0       	ldi	r22, 0x01	; 1
    c72c:	a7 01       	movw	r20, r14
    c72e:	25 e0       	ldi	r18, 0x05	; 5
    c730:	00 e0       	ldi	r16, 0x00	; 0
    c732:	10 e0       	ldi	r17, 0x00	; 0
    c734:	0e 94 9f 61 	call	0xc33e	; 0xc33e <setstring>
    c738:	89 2b       	or	r24, r25
    c73a:	19 f4       	brne	.+6      	; 0xc742 <prm_setslewwidth+0x52>
    c73c:	21 e0       	ldi	r18, 0x01	; 1
    c73e:	30 e0       	ldi	r19, 0x00	; 0
    c740:	14 c0       	rjmp	.+40     	; 0xc76a <prm_setslewwidth+0x7a>
    c742:	c7 01       	movw	r24, r14
    c744:	0e 94 e8 3f 	call	0x7fd0	; 0x7fd0 <_atoi>
    c748:	bc 01       	movw	r22, r24
    c74a:	97 fd       	sbrc	r25, 7
    c74c:	0c c0       	rjmp	.+24     	; 0xc766 <prm_setslewwidth+0x76>
    c74e:	90 93 02 08 	sts	0x0802, r25
    c752:	80 93 01 08 	sts	0x0801, r24
    c756:	01 c0       	rjmp	.+2      	; 0xc75a <prm_setslewwidth+0x6a>
    c758:	a8 95       	wdr
    c75a:	f9 99       	sbic	0x1f, 1	; 31
    c75c:	fd cf       	rjmp	.-6      	; 0xc758 <prm_setslewwidth+0x68>
    c75e:	8e ec       	ldi	r24, 0xCE	; 206
    c760:	90 e0       	ldi	r25, 0x00	; 0
    c762:	0e 94 a0 6e 	call	0xdd40	; 0xdd40 <__eeupd_word_m644a>
    c766:	20 e0       	ldi	r18, 0x00	; 0
    c768:	30 e0       	ldi	r19, 0x00	; 0
    c76a:	c9 01       	movw	r24, r18
    c76c:	28 96       	adiw	r28, 0x08	; 8
    c76e:	e6 e0       	ldi	r30, 0x06	; 6
    c770:	0c 94 71 6d 	jmp	0xdae2	; 0xdae2 <__epilogue_restores__+0x18>

0000c774 <prm_setntpwidth>:
    c774:	a8 e0       	ldi	r26, 0x08	; 8
    c776:	b0 e0       	ldi	r27, 0x00	; 0
    c778:	e0 ec       	ldi	r30, 0xC0	; 192
    c77a:	f3 e6       	ldi	r31, 0x63	; 99
    c77c:	0c 94 55 6d 	jmp	0xdaaa	; 0xdaaa <__prologue_saves__+0x18>
    c780:	81 e0       	ldi	r24, 0x01	; 1
    c782:	61 e0       	ldi	r22, 0x01	; 1
    c784:	45 ee       	ldi	r20, 0xE5	; 229
    c786:	58 e1       	ldi	r21, 0x18	; 24
    c788:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    c78c:	80 91 fd 07 	lds	r24, 0x07FD
    c790:	90 91 fe 07 	lds	r25, 0x07FE
    c794:	7e 01       	movw	r14, r28
    c796:	08 94       	sec
    c798:	e1 1c       	adc	r14, r1
    c79a:	f1 1c       	adc	r15, r1
    c79c:	b7 01       	movw	r22, r14
    c79e:	0e 94 43 3f 	call	0x7e86	; 0x7e86 <ustoaz>
    c7a2:	ac 01       	movw	r20, r24
    c7a4:	87 e0       	ldi	r24, 0x07	; 7
    c7a6:	61 e0       	ldi	r22, 0x01	; 1
    c7a8:	0e 94 17 1f 	call	0x3e2e	; 0x3e2e <lcd_print>
    c7ac:	87 e0       	ldi	r24, 0x07	; 7
    c7ae:	61 e0       	ldi	r22, 0x01	; 1
    c7b0:	a7 01       	movw	r20, r14
    c7b2:	25 e0       	ldi	r18, 0x05	; 5
    c7b4:	00 e0       	ldi	r16, 0x00	; 0
    c7b6:	10 e0       	ldi	r17, 0x00	; 0
    c7b8:	0e 94 9f 61 	call	0xc33e	; 0xc33e <setstring>
    c7bc:	89 2b       	or	r24, r25
    c7be:	19 f4       	brne	.+6      	; 0xc7c6 <prm_setntpwidth+0x52>
    c7c0:	21 e0       	ldi	r18, 0x01	; 1
    c7c2:	30 e0       	ldi	r19, 0x00	; 0
    c7c4:	12 c0       	rjmp	.+36     	; 0xc7ea <prm_setntpwidth+0x76>
    c7c6:	c7 01       	movw	r24, r14
    c7c8:	0e 94 e8 3f 	call	0x7fd0	; 0x7fd0 <_atoi>
    c7cc:	bc 01       	movw	r22, r24
    c7ce:	90 93 fe 07 	sts	0x07FE, r25
    c7d2:	80 93 fd 07 	sts	0x07FD, r24
    c7d6:	01 c0       	rjmp	.+2      	; 0xc7da <prm_setntpwidth+0x66>
    c7d8:	a8 95       	wdr
    c7da:	f9 99       	sbic	0x1f, 1	; 31
    c7dc:	fd cf       	rjmp	.-6      	; 0xc7d8 <prm_setntpwidth+0x64>
    c7de:	88 ec       	ldi	r24, 0xC8	; 200
    c7e0:	90 e0       	ldi	r25, 0x00	; 0
    c7e2:	0e 94 a0 6e 	call	0xdd40	; 0xdd40 <__eeupd_word_m644a>
    c7e6:	20 e0       	ldi	r18, 0x00	; 0
    c7e8:	30 e0       	ldi	r19, 0x00	; 0
    c7ea:	c9 01       	movw	r24, r18
    c7ec:	28 96       	adiw	r28, 0x08	; 8
    c7ee:	e6 e0       	ldi	r30, 0x06	; 6
    c7f0:	0c 94 71 6d 	jmp	0xdae2	; 0xdae2 <__epilogue_restores__+0x18>

0000c7f4 <prm_setntptout>:
    c7f4:	a8 e0       	ldi	r26, 0x08	; 8
    c7f6:	b0 e0       	ldi	r27, 0x00	; 0
    c7f8:	e0 e0       	ldi	r30, 0x00	; 0
    c7fa:	f4 e6       	ldi	r31, 0x64	; 100
    c7fc:	0c 94 55 6d 	jmp	0xdaaa	; 0xdaaa <__prologue_saves__+0x18>
    c800:	81 e0       	ldi	r24, 0x01	; 1
    c802:	61 e0       	ldi	r22, 0x01	; 1
    c804:	44 ef       	ldi	r20, 0xF4	; 244
    c806:	58 e1       	ldi	r21, 0x18	; 24
    c808:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    c80c:	80 91 f6 07 	lds	r24, 0x07F6
    c810:	90 91 f7 07 	lds	r25, 0x07F7
    c814:	7e 01       	movw	r14, r28
    c816:	08 94       	sec
    c818:	e1 1c       	adc	r14, r1
    c81a:	f1 1c       	adc	r15, r1
    c81c:	b7 01       	movw	r22, r14
    c81e:	0e 94 43 3f 	call	0x7e86	; 0x7e86 <ustoaz>
    c822:	ac 01       	movw	r20, r24
    c824:	89 e0       	ldi	r24, 0x09	; 9
    c826:	61 e0       	ldi	r22, 0x01	; 1
    c828:	0e 94 17 1f 	call	0x3e2e	; 0x3e2e <lcd_print>
    c82c:	89 e0       	ldi	r24, 0x09	; 9
    c82e:	61 e0       	ldi	r22, 0x01	; 1
    c830:	a7 01       	movw	r20, r14
    c832:	25 e0       	ldi	r18, 0x05	; 5
    c834:	00 e0       	ldi	r16, 0x00	; 0
    c836:	10 e0       	ldi	r17, 0x00	; 0
    c838:	0e 94 9f 61 	call	0xc33e	; 0xc33e <setstring>
    c83c:	89 2b       	or	r24, r25
    c83e:	19 f4       	brne	.+6      	; 0xc846 <prm_setntptout+0x52>
    c840:	21 e0       	ldi	r18, 0x01	; 1
    c842:	30 e0       	ldi	r19, 0x00	; 0
    c844:	12 c0       	rjmp	.+36     	; 0xc86a <prm_setntptout+0x76>
    c846:	c7 01       	movw	r24, r14
    c848:	0e 94 e8 3f 	call	0x7fd0	; 0x7fd0 <_atoi>
    c84c:	bc 01       	movw	r22, r24
    c84e:	90 93 f7 07 	sts	0x07F7, r25
    c852:	80 93 f6 07 	sts	0x07F6, r24
    c856:	01 c0       	rjmp	.+2      	; 0xc85a <prm_setntptout+0x66>
    c858:	a8 95       	wdr
    c85a:	f9 99       	sbic	0x1f, 1	; 31
    c85c:	fd cf       	rjmp	.-6      	; 0xc858 <prm_setntptout+0x64>
    c85e:	86 ec       	ldi	r24, 0xC6	; 198
    c860:	90 e0       	ldi	r25, 0x00	; 0
    c862:	0e 94 a0 6e 	call	0xdd40	; 0xdd40 <__eeupd_word_m644a>
    c866:	20 e0       	ldi	r18, 0x00	; 0
    c868:	30 e0       	ldi	r19, 0x00	; 0
    c86a:	c9 01       	movw	r24, r18
    c86c:	28 96       	adiw	r28, 0x08	; 8
    c86e:	e6 e0       	ldi	r30, 0x06	; 6
    c870:	0c 94 71 6d 	jmp	0xdae2	; 0xdae2 <__epilogue_restores__+0x18>

0000c874 <prm_setbcinterval>:
    c874:	a8 e0       	ldi	r26, 0x08	; 8
    c876:	b0 e0       	ldi	r27, 0x00	; 0
    c878:	e0 e4       	ldi	r30, 0x40	; 64
    c87a:	f4 e6       	ldi	r31, 0x64	; 100
    c87c:	0c 94 55 6d 	jmp	0xdaaa	; 0xdaaa <__prologue_saves__+0x18>
    c880:	80 e0       	ldi	r24, 0x00	; 0
    c882:	61 e0       	ldi	r22, 0x01	; 1
    c884:	44 e0       	ldi	r20, 0x04	; 4
    c886:	59 e1       	ldi	r21, 0x19	; 25
    c888:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    c88c:	80 91 f8 07 	lds	r24, 0x07F8
    c890:	90 91 f9 07 	lds	r25, 0x07F9
    c894:	7e 01       	movw	r14, r28
    c896:	08 94       	sec
    c898:	e1 1c       	adc	r14, r1
    c89a:	f1 1c       	adc	r15, r1
    c89c:	b7 01       	movw	r22, r14
    c89e:	0e 94 43 3f 	call	0x7e86	; 0x7e86 <ustoaz>
    c8a2:	ac 01       	movw	r20, r24
    c8a4:	89 e0       	ldi	r24, 0x09	; 9
    c8a6:	61 e0       	ldi	r22, 0x01	; 1
    c8a8:	0e 94 17 1f 	call	0x3e2e	; 0x3e2e <lcd_print>
    c8ac:	89 e0       	ldi	r24, 0x09	; 9
    c8ae:	61 e0       	ldi	r22, 0x01	; 1
    c8b0:	a7 01       	movw	r20, r14
    c8b2:	25 e0       	ldi	r18, 0x05	; 5
    c8b4:	00 e0       	ldi	r16, 0x00	; 0
    c8b6:	10 e0       	ldi	r17, 0x00	; 0
    c8b8:	0e 94 9f 61 	call	0xc33e	; 0xc33e <setstring>
    c8bc:	89 2b       	or	r24, r25
    c8be:	19 f4       	brne	.+6      	; 0xc8c6 <prm_setbcinterval+0x52>
    c8c0:	21 e0       	ldi	r18, 0x01	; 1
    c8c2:	30 e0       	ldi	r19, 0x00	; 0
    c8c4:	12 c0       	rjmp	.+36     	; 0xc8ea <prm_setbcinterval+0x76>
    c8c6:	c7 01       	movw	r24, r14
    c8c8:	0e 94 e8 3f 	call	0x7fd0	; 0x7fd0 <_atoi>
    c8cc:	bc 01       	movw	r22, r24
    c8ce:	90 93 f9 07 	sts	0x07F9, r25
    c8d2:	80 93 f8 07 	sts	0x07F8, r24
    c8d6:	01 c0       	rjmp	.+2      	; 0xc8da <prm_setbcinterval+0x66>
    c8d8:	a8 95       	wdr
    c8da:	f9 99       	sbic	0x1f, 1	; 31
    c8dc:	fd cf       	rjmp	.-6      	; 0xc8d8 <prm_setbcinterval+0x64>
    c8de:	84 ec       	ldi	r24, 0xC4	; 196
    c8e0:	90 e0       	ldi	r25, 0x00	; 0
    c8e2:	0e 94 a0 6e 	call	0xdd40	; 0xdd40 <__eeupd_word_m644a>
    c8e6:	20 e0       	ldi	r18, 0x00	; 0
    c8e8:	30 e0       	ldi	r19, 0x00	; 0
    c8ea:	c9 01       	movw	r24, r18
    c8ec:	28 96       	adiw	r28, 0x08	; 8
    c8ee:	e6 e0       	ldi	r30, 0x06	; 6
    c8f0:	0c 94 71 6d 	jmp	0xdae2	; 0xdae2 <__epilogue_restores__+0x18>

0000c8f4 <prm_setarptimeout>:
    c8f4:	a8 e0       	ldi	r26, 0x08	; 8
    c8f6:	b0 e0       	ldi	r27, 0x00	; 0
    c8f8:	e0 e8       	ldi	r30, 0x80	; 128
    c8fa:	f4 e6       	ldi	r31, 0x64	; 100
    c8fc:	0c 94 55 6d 	jmp	0xdaaa	; 0xdaaa <__prologue_saves__+0x18>
    c900:	81 e0       	ldi	r24, 0x01	; 1
    c902:	61 e0       	ldi	r22, 0x01	; 1
    c904:	44 e1       	ldi	r20, 0x14	; 20
    c906:	59 e1       	ldi	r21, 0x19	; 25
    c908:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    c90c:	80 91 04 01 	lds	r24, 0x0104
    c910:	90 91 05 01 	lds	r25, 0x0105
    c914:	7e 01       	movw	r14, r28
    c916:	08 94       	sec
    c918:	e1 1c       	adc	r14, r1
    c91a:	f1 1c       	adc	r15, r1
    c91c:	b7 01       	movw	r22, r14
    c91e:	0e 94 43 3f 	call	0x7e86	; 0x7e86 <ustoaz>
    c922:	ac 01       	movw	r20, r24
    c924:	89 e0       	ldi	r24, 0x09	; 9
    c926:	61 e0       	ldi	r22, 0x01	; 1
    c928:	0e 94 17 1f 	call	0x3e2e	; 0x3e2e <lcd_print>
    c92c:	89 e0       	ldi	r24, 0x09	; 9
    c92e:	61 e0       	ldi	r22, 0x01	; 1
    c930:	a7 01       	movw	r20, r14
    c932:	25 e0       	ldi	r18, 0x05	; 5
    c934:	00 e0       	ldi	r16, 0x00	; 0
    c936:	10 e0       	ldi	r17, 0x00	; 0
    c938:	0e 94 9f 61 	call	0xc33e	; 0xc33e <setstring>
    c93c:	89 2b       	or	r24, r25
    c93e:	19 f4       	brne	.+6      	; 0xc946 <prm_setarptimeout+0x52>
    c940:	21 e0       	ldi	r18, 0x01	; 1
    c942:	30 e0       	ldi	r19, 0x00	; 0
    c944:	12 c0       	rjmp	.+36     	; 0xc96a <prm_setarptimeout+0x76>
    c946:	c7 01       	movw	r24, r14
    c948:	0e 94 e8 3f 	call	0x7fd0	; 0x7fd0 <_atoi>
    c94c:	bc 01       	movw	r22, r24
    c94e:	90 93 05 01 	sts	0x0105, r25
    c952:	80 93 04 01 	sts	0x0104, r24
    c956:	01 c0       	rjmp	.+2      	; 0xc95a <prm_setarptimeout+0x66>
    c958:	a8 95       	wdr
    c95a:	f9 99       	sbic	0x1f, 1	; 31
    c95c:	fd cf       	rjmp	.-6      	; 0xc958 <prm_setarptimeout+0x64>
    c95e:	86 e0       	ldi	r24, 0x06	; 6
    c960:	90 e0       	ldi	r25, 0x00	; 0
    c962:	0e 94 a0 6e 	call	0xdd40	; 0xdd40 <__eeupd_word_m644a>
    c966:	20 e0       	ldi	r18, 0x00	; 0
    c968:	30 e0       	ldi	r19, 0x00	; 0
    c96a:	c9 01       	movw	r24, r18
    c96c:	28 96       	adiw	r28, 0x08	; 8
    c96e:	e6 e0       	ldi	r30, 0x06	; 6
    c970:	0c 94 71 6d 	jmp	0xdae2	; 0xdae2 <__epilogue_restores__+0x18>

0000c974 <prm_sethttpport>:
    c974:	a8 e0       	ldi	r26, 0x08	; 8
    c976:	b0 e0       	ldi	r27, 0x00	; 0
    c978:	e0 ec       	ldi	r30, 0xC0	; 192
    c97a:	f4 e6       	ldi	r31, 0x64	; 100
    c97c:	0c 94 55 6d 	jmp	0xdaaa	; 0xdaaa <__prologue_saves__+0x18>
    c980:	83 e0       	ldi	r24, 0x03	; 3
    c982:	61 e0       	ldi	r22, 0x01	; 1
    c984:	44 e2       	ldi	r20, 0x24	; 36
    c986:	59 e1       	ldi	r21, 0x19	; 25
    c988:	0e 94 ff 1e 	call	0x3dfe	; 0x3dfe <lcd_printc>
    c98c:	80 91 44 05 	lds	r24, 0x0544
    c990:	90 91 45 05 	lds	r25, 0x0545
    c994:	7e 01       	movw	r14, r28
    c996:	08 94       	sec
    c998:	e1 1c       	adc	r14, r1
    c99a:	f1 1c       	adc	r15, r1
    c99c:	b7 01       	movw	r22, r14
    c99e:	0e 94 43 3f 	call	0x7e86	; 0x7e86 <ustoaz>
    c9a2:	ac 01       	movw	r20, r24
    c9a4:	88 e0       	ldi	r24, 0x08	; 8
    c9a6:	61 e0       	ldi	r22, 0x01	; 1
    c9a8:	0e 94 17 1f 	call	0x3e2e	; 0x3e2e <lcd_print>
    c9ac:	88 e0       	ldi	r24, 0x08	; 8
    c9ae:	61 e0       	ldi	r22, 0x01	; 1
    c9b0:	a7 01       	movw	r20, r14
    c9b2:	25 e0       	ldi	r18, 0x05	; 5
    c9b4:	00 e0       	ldi	r16, 0x00	; 0
    c9b6:	10 e0       	ldi	r17, 0x00	; 0
    c9b8:	0e 94 9f 61 	call	0xc33e	; 0xc33e <setstring>
    c9bc:	89 2b       	or	r24, r25
    c9be:	19 f4       	brne	.+6      	; 0xc9c6 <prm_sethttpport+0x52>
    c9c0:	21 e0       	ldi	r18, 0x01	; 1
    c9c2:	30 e0       	ldi	r19, 0x00	; 0
    c9c4:	12 c0       	rjmp	.+36     	; 0xc9ea <prm_sethttpport+0x76>
    c9c6:	c7 01       	movw	r24, r14
    c9c8:	0e 94 e8 3f 	call	0x7fd0	; 0x7fd0 <_atoi>
    c9cc:	bc 01       	movw	r22, r24
    c9ce:	90 93 45 05 	sts	0x0545, r25
    c9d2:	80 93 44 05 	sts	0x0544, r24
    c9d6:	01 c0       	rjmp	.+2      	; 0xc9da <prm_sethttpport+0x66>
    c9d8:	a8 95       	wdr
    c9da:	f9 99       	sbic	0x1f, 1	; 31
    c9dc:	fd cf       	rjmp	.-6      	; 0xc9d8 <prm_sethttpport+0x64>
    c9de:	8e e0       	ldi	r24, 0x0E	; 14
    c9e0:	90 e0       	ldi	r25, 0x00	; 0
    c9e2:	0e 94 a0 6e 	call	0xdd40	; 0xdd40 <__eeupd_word_m644a>
    c9e6:	20 e0       	ldi	r18, 0x00	; 0
    c9e8:	30 e0       	ldi	r19, 0x00	; 0
    c9ea:	c9 01       	movw	r24, r18
    c9ec:	28 96       	adiw	r28, 0x08	; 8
    c9ee:	e6 e0       	ldi	r30, 0x06	; 6
    c9f0:	0c 94 71 6d 	jmp	0xdae2	; 0xdae2 <__epilogue_restores__+0x18>

0000c9f4 <prm_setaddr>:
    c9f4:	a4 e1       	ldi	r26, 0x14	; 20
    c9f6:	b0 e0       	ldi	r27, 0x00	; 0
    c9f8:	e0 e0       	ldi	r30, 0x00	; 0
    c9fa:	f5 e6       	ldi	r31, 0x65	; 101
    c9fc:	0c 94 53 6d 	jmp	0xdaa6	; 0xdaa6 <__prologue_saves__+0x14>
    ca00:	6c 01       	movw	r12, r24
    ca02:	01 c0       	rjmp	.+2      	; 0xca06 <prm_setaddr+0x12>
    ca04:	a8 95       	wdr
    ca06:	f9 99       	sbic	0x1f, 1	; 31
    ca08:	fd cf       	rjmp	.-6      	; 0xca04 <prm_setaddr+0x10>
    ca0a:	c6 01       	movw	r24, r12
    ca0c:	0e 94 66 6e 	call	0xdccc	; 0xdccc <__eerd_dword_m644a>
    ca10:	69 83       	std	Y+1, r22	; 0x01
    ca12:	7a 83       	std	Y+2, r23	; 0x02
    ca14:	8b 83       	std	Y+3, r24	; 0x03
    ca16:	9c 83       	std	Y+4, r25	; 0x04
    ca18:	35 e0       	ldi	r19, 0x05	; 5
    ca1a:	e3 2e       	mov	r14, r19
    ca1c:	f1 2c       	mov	r15, r1
    ca1e:	ec 0e       	add	r14, r28
    ca20:	fd 1e       	adc	r15, r29
    ca22:	a7 01       	movw	r20, r14
    ca24:	0e 94 a5 41 	call	0x834a	; 0x834a <long2ipstr>
    ca28:	81 e0       	ldi	r24, 0x01	; 1
    ca2a:	61 e0       	ldi	r22, 0x01	; 1
    ca2c:	a7 01       	movw	r20, r14
    ca2e:	2f e0       	ldi	r18, 0x0F	; 15
    ca30:	00 e0       	ldi	r16, 0x00	; 0
    ca32:	10 e0       	ldi	r17, 0x00	; 0
    ca34:	0e 94 9f 61 	call	0xc33e	; 0xc33e <setstring>
    ca38:	89 2b       	or	r24, r25
    ca3a:	19 f4       	brne	.+6      	; 0xca42 <prm_setaddr+0x4e>
    ca3c:	21 e0       	ldi	r18, 0x01	; 1
    ca3e:	30 e0       	ldi	r19, 0x00	; 0
    ca40:	15 c0       	rjmp	.+42     	; 0xca6c <prm_setaddr+0x78>
    ca42:	c7 01       	movw	r24, r14
    ca44:	be 01       	movw	r22, r28
    ca46:	6f 5f       	subi	r22, 0xFF	; 255
    ca48:	7f 4f       	sbci	r23, 0xFF	; 255
    ca4a:	0e 94 41 41 	call	0x8282	; 0x8282 <ipstr2bin>
    ca4e:	81 30       	cpi	r24, 0x01	; 1
    ca50:	59 f4       	brne	.+22     	; 0xca68 <prm_setaddr+0x74>
    ca52:	01 c0       	rjmp	.+2      	; 0xca56 <prm_setaddr+0x62>
    ca54:	a8 95       	wdr
    ca56:	f9 99       	sbic	0x1f, 1	; 31
    ca58:	fd cf       	rjmp	.-6      	; 0xca54 <prm_setaddr+0x60>
    ca5a:	49 81       	ldd	r20, Y+1	; 0x01
    ca5c:	5a 81       	ldd	r21, Y+2	; 0x02
    ca5e:	6b 81       	ldd	r22, Y+3	; 0x03
    ca60:	7c 81       	ldd	r23, Y+4	; 0x04
    ca62:	c6 01       	movw	r24, r12
    ca64:	0e 94 94 6e 	call	0xdd28	; 0xdd28 <__eeupd_dword_m644a>
    ca68:	20 e0       	ldi	r18, 0x00	; 0
    ca6a:	30 e0       	ldi	r19, 0x00	; 0
    ca6c:	c9 01       	movw	r24, r18
    ca6e:	64 96       	adiw	r28, 0x14	; 20
    ca70:	e8 e0       	ldi	r30, 0x08	; 8
    ca72:	0c 94 6f 6d 	jmp	0xdade	; 0xdade <__epilogue_restores__+0x14>

0000ca76 <prm_setbroadcast>:
    ca76:	80 ec       	ldi	r24, 0xC0	; 192
    ca78:	90 e0       	ldi	r25, 0x00	; 0
    ca7a:	0e 94 fa 64 	call	0xc9f4	; 0xc9f4 <prm_setaddr>
    ca7e:	08 95       	ret

0000ca80 <prm_setdnsserver>:
    ca80:	8c e2       	ldi	r24, 0x2C	; 44
    ca82:	90 e0       	ldi	r25, 0x00	; 0
    ca84:	0e 94 fa 64 	call	0xc9f4	; 0xc9f4 <prm_setaddr>
    ca88:	08 95       	ret

0000ca8a <prm_setgateway>:
    ca8a:	88 e2       	ldi	r24, 0x28	; 40
    ca8c:	90 e0       	ldi	r25, 0x00	; 0
    ca8e:	0e 94 fa 64 	call	0xc9f4	; 0xc9f4 <prm_setaddr>
    ca92:	08 95       	ret

0000ca94 <prm_setmask>:
    ca94:	84 e2       	ldi	r24, 0x24	; 36
    ca96:	90 e0       	ldi	r25, 0x00	; 0
    ca98:	0e 94 fa 64 	call	0xc9f4	; 0xc9f4 <prm_setaddr>
    ca9c:	08 95       	ret

0000ca9e <prm_setipaddr>:
    ca9e:	80 e2       	ldi	r24, 0x20	; 32
    caa0:	90 e0       	ldi	r25, 0x00	; 0
    caa2:	0e 94 fa 64 	call	0xc9f4	; 0xc9f4 <prm_setaddr>
    caa6:	08 95       	ret

0000caa8 <__ashldi3>:
    caa8:	ef 92       	push	r14
    caaa:	ff 92       	push	r15
    caac:	0f 93       	push	r16
    caae:	df 93       	push	r29
    cab0:	cf 93       	push	r28
    cab2:	cd b7       	in	r28, 0x3d	; 61
    cab4:	de b7       	in	r29, 0x3e	; 62
    cab6:	60 97       	sbiw	r28, 0x10	; 16
    cab8:	0f b6       	in	r0, 0x3f	; 63
    caba:	f8 94       	cli
    cabc:	de bf       	out	0x3e, r29	; 62
    cabe:	0f be       	out	0x3f, r0	; 63
    cac0:	cd bf       	out	0x3d, r28	; 61
    cac2:	a8 2f       	mov	r26, r24
    cac4:	00 23       	and	r16, r16
    cac6:	09 f4       	brne	.+2      	; 0xcaca <__ashldi3+0x22>
    cac8:	61 c0       	rjmp	.+194    	; 0xcb8c <__ashldi3+0xe4>
    caca:	7e 01       	movw	r14, r28
    cacc:	08 94       	sec
    cace:	e1 1c       	adc	r14, r1
    cad0:	f1 1c       	adc	r15, r1
    cad2:	88 e0       	ldi	r24, 0x08	; 8
    cad4:	f7 01       	movw	r30, r14
    cad6:	11 92       	st	Z+, r1
    cad8:	8a 95       	dec	r24
    cada:	e9 f7       	brne	.-6      	; 0xcad6 <__ashldi3+0x2e>
    cadc:	29 83       	std	Y+1, r18	; 0x01
    cade:	3a 83       	std	Y+2, r19	; 0x02
    cae0:	4b 83       	std	Y+3, r20	; 0x03
    cae2:	5c 83       	std	Y+4, r21	; 0x04
    cae4:	6d 83       	std	Y+5, r22	; 0x05
    cae6:	7e 83       	std	Y+6, r23	; 0x06
    cae8:	af 83       	std	Y+7, r26	; 0x07
    caea:	98 87       	std	Y+8, r25	; 0x08
    caec:	80 e2       	ldi	r24, 0x20	; 32
    caee:	80 1b       	sub	r24, r16
    caf0:	e8 2f       	mov	r30, r24
    caf2:	ff 27       	eor	r31, r31
    caf4:	e7 fd       	sbrc	r30, 7
    caf6:	f0 95       	com	r31
    caf8:	49 81       	ldd	r20, Y+1	; 0x01
    cafa:	5a 81       	ldd	r21, Y+2	; 0x02
    cafc:	6b 81       	ldd	r22, Y+3	; 0x03
    cafe:	7c 81       	ldd	r23, Y+4	; 0x04
    cb00:	18 16       	cp	r1, r24
    cb02:	84 f0       	brlt	.+32     	; 0xcb24 <__ashldi3+0x7c>
    cb04:	19 86       	std	Y+9, r1	; 0x09
    cb06:	1a 86       	std	Y+10, r1	; 0x0a
    cb08:	1b 86       	std	Y+11, r1	; 0x0b
    cb0a:	1c 86       	std	Y+12, r1	; 0x0c
    cb0c:	88 27       	eor	r24, r24
    cb0e:	99 27       	eor	r25, r25
    cb10:	8e 1b       	sub	r24, r30
    cb12:	9f 0b       	sbc	r25, r31
    cb14:	04 c0       	rjmp	.+8      	; 0xcb1e <__ashldi3+0x76>
    cb16:	44 0f       	add	r20, r20
    cb18:	55 1f       	adc	r21, r21
    cb1a:	66 1f       	adc	r22, r22
    cb1c:	77 1f       	adc	r23, r23
    cb1e:	8a 95       	dec	r24
    cb20:	d2 f7       	brpl	.-12     	; 0xcb16 <__ashldi3+0x6e>
    cb22:	28 c0       	rjmp	.+80     	; 0xcb74 <__ashldi3+0xcc>
    cb24:	20 2f       	mov	r18, r16
    cb26:	33 27       	eor	r19, r19
    cb28:	27 fd       	sbrc	r18, 7
    cb2a:	30 95       	com	r19
    cb2c:	db 01       	movw	r26, r22
    cb2e:	ca 01       	movw	r24, r20
    cb30:	02 2e       	mov	r0, r18
    cb32:	04 c0       	rjmp	.+8      	; 0xcb3c <__ashldi3+0x94>
    cb34:	88 0f       	add	r24, r24
    cb36:	99 1f       	adc	r25, r25
    cb38:	aa 1f       	adc	r26, r26
    cb3a:	bb 1f       	adc	r27, r27
    cb3c:	0a 94       	dec	r0
    cb3e:	d2 f7       	brpl	.-12     	; 0xcb34 <__ashldi3+0x8c>
    cb40:	89 87       	std	Y+9, r24	; 0x09
    cb42:	9a 87       	std	Y+10, r25	; 0x0a
    cb44:	ab 87       	std	Y+11, r26	; 0x0b
    cb46:	bc 87       	std	Y+12, r27	; 0x0c
    cb48:	04 c0       	rjmp	.+8      	; 0xcb52 <__ashldi3+0xaa>
    cb4a:	76 95       	lsr	r23
    cb4c:	67 95       	ror	r22
    cb4e:	57 95       	ror	r21
    cb50:	47 95       	ror	r20
    cb52:	ea 95       	dec	r30
    cb54:	d2 f7       	brpl	.-12     	; 0xcb4a <__ashldi3+0xa2>
    cb56:	8d 81       	ldd	r24, Y+5	; 0x05
    cb58:	9e 81       	ldd	r25, Y+6	; 0x06
    cb5a:	af 81       	ldd	r26, Y+7	; 0x07
    cb5c:	b8 85       	ldd	r27, Y+8	; 0x08
    cb5e:	04 c0       	rjmp	.+8      	; 0xcb68 <__ashldi3+0xc0>
    cb60:	88 0f       	add	r24, r24
    cb62:	99 1f       	adc	r25, r25
    cb64:	aa 1f       	adc	r26, r26
    cb66:	bb 1f       	adc	r27, r27
    cb68:	2a 95       	dec	r18
    cb6a:	d2 f7       	brpl	.-12     	; 0xcb60 <__ashldi3+0xb8>
    cb6c:	48 2b       	or	r20, r24
    cb6e:	59 2b       	or	r21, r25
    cb70:	6a 2b       	or	r22, r26
    cb72:	7b 2b       	or	r23, r27
    cb74:	4d 87       	std	Y+13, r20	; 0x0d
    cb76:	5e 87       	std	Y+14, r21	; 0x0e
    cb78:	6f 87       	std	Y+15, r22	; 0x0f
    cb7a:	78 8b       	std	Y+16, r23	; 0x10
    cb7c:	29 85       	ldd	r18, Y+9	; 0x09
    cb7e:	3a 85       	ldd	r19, Y+10	; 0x0a
    cb80:	4b 85       	ldd	r20, Y+11	; 0x0b
    cb82:	5c 85       	ldd	r21, Y+12	; 0x0c
    cb84:	6d 85       	ldd	r22, Y+13	; 0x0d
    cb86:	7e 85       	ldd	r23, Y+14	; 0x0e
    cb88:	af 85       	ldd	r26, Y+15	; 0x0f
    cb8a:	98 89       	ldd	r25, Y+16	; 0x10
    cb8c:	8a 2f       	mov	r24, r26
    cb8e:	60 96       	adiw	r28, 0x10	; 16
    cb90:	0f b6       	in	r0, 0x3f	; 63
    cb92:	f8 94       	cli
    cb94:	de bf       	out	0x3e, r29	; 62
    cb96:	0f be       	out	0x3f, r0	; 63
    cb98:	cd bf       	out	0x3d, r28	; 61
    cb9a:	cf 91       	pop	r28
    cb9c:	df 91       	pop	r29
    cb9e:	0f 91       	pop	r16
    cba0:	ff 90       	pop	r15
    cba2:	ef 90       	pop	r14
    cba4:	08 95       	ret

0000cba6 <__ashrdi3>:
    cba6:	ef 92       	push	r14
    cba8:	ff 92       	push	r15
    cbaa:	0f 93       	push	r16
    cbac:	df 93       	push	r29
    cbae:	cf 93       	push	r28
    cbb0:	cd b7       	in	r28, 0x3d	; 61
    cbb2:	de b7       	in	r29, 0x3e	; 62
    cbb4:	60 97       	sbiw	r28, 0x10	; 16
    cbb6:	0f b6       	in	r0, 0x3f	; 63
    cbb8:	f8 94       	cli
    cbba:	de bf       	out	0x3e, r29	; 62
    cbbc:	0f be       	out	0x3f, r0	; 63
    cbbe:	cd bf       	out	0x3d, r28	; 61
    cbc0:	a8 2f       	mov	r26, r24
    cbc2:	00 23       	and	r16, r16
    cbc4:	09 f4       	brne	.+2      	; 0xcbc8 <__ashrdi3+0x22>
    cbc6:	67 c0       	rjmp	.+206    	; 0xcc96 <__ashrdi3+0xf0>
    cbc8:	7e 01       	movw	r14, r28
    cbca:	08 94       	sec
    cbcc:	e1 1c       	adc	r14, r1
    cbce:	f1 1c       	adc	r15, r1
    cbd0:	88 e0       	ldi	r24, 0x08	; 8
    cbd2:	f7 01       	movw	r30, r14
    cbd4:	11 92       	st	Z+, r1
    cbd6:	8a 95       	dec	r24
    cbd8:	e9 f7       	brne	.-6      	; 0xcbd4 <__ashrdi3+0x2e>
    cbda:	29 83       	std	Y+1, r18	; 0x01
    cbdc:	3a 83       	std	Y+2, r19	; 0x02
    cbde:	4b 83       	std	Y+3, r20	; 0x03
    cbe0:	5c 83       	std	Y+4, r21	; 0x04
    cbe2:	6d 83       	std	Y+5, r22	; 0x05
    cbe4:	7e 83       	std	Y+6, r23	; 0x06
    cbe6:	af 83       	std	Y+7, r26	; 0x07
    cbe8:	98 87       	std	Y+8, r25	; 0x08
    cbea:	80 e2       	ldi	r24, 0x20	; 32
    cbec:	80 1b       	sub	r24, r16
    cbee:	4d 81       	ldd	r20, Y+5	; 0x05
    cbf0:	5e 81       	ldd	r21, Y+6	; 0x06
    cbf2:	6f 81       	ldd	r22, Y+7	; 0x07
    cbf4:	78 85       	ldd	r23, Y+8	; 0x08
    cbf6:	e8 2f       	mov	r30, r24
    cbf8:	ff 27       	eor	r31, r31
    cbfa:	e7 fd       	sbrc	r30, 7
    cbfc:	f0 95       	com	r31
    cbfe:	18 16       	cp	r1, r24
    cc00:	b4 f0       	brlt	.+44     	; 0xcc2e <__ashrdi3+0x88>
    cc02:	db 01       	movw	r26, r22
    cc04:	ca 01       	movw	r24, r20
    cc06:	bb 0f       	add	r27, r27
    cc08:	88 0b       	sbc	r24, r24
    cc0a:	98 2f       	mov	r25, r24
    cc0c:	dc 01       	movw	r26, r24
    cc0e:	8d 87       	std	Y+13, r24	; 0x0d
    cc10:	9e 87       	std	Y+14, r25	; 0x0e
    cc12:	af 87       	std	Y+15, r26	; 0x0f
    cc14:	b8 8b       	std	Y+16, r27	; 0x10
    cc16:	88 27       	eor	r24, r24
    cc18:	99 27       	eor	r25, r25
    cc1a:	8e 1b       	sub	r24, r30
    cc1c:	9f 0b       	sbc	r25, r31
    cc1e:	04 c0       	rjmp	.+8      	; 0xcc28 <__ashrdi3+0x82>
    cc20:	75 95       	asr	r23
    cc22:	67 95       	ror	r22
    cc24:	57 95       	ror	r21
    cc26:	47 95       	ror	r20
    cc28:	8a 95       	dec	r24
    cc2a:	d2 f7       	brpl	.-12     	; 0xcc20 <__ashrdi3+0x7a>
    cc2c:	28 c0       	rjmp	.+80     	; 0xcc7e <__ashrdi3+0xd8>
    cc2e:	20 2f       	mov	r18, r16
    cc30:	33 27       	eor	r19, r19
    cc32:	27 fd       	sbrc	r18, 7
    cc34:	30 95       	com	r19
    cc36:	db 01       	movw	r26, r22
    cc38:	ca 01       	movw	r24, r20
    cc3a:	02 2e       	mov	r0, r18
    cc3c:	04 c0       	rjmp	.+8      	; 0xcc46 <__ashrdi3+0xa0>
    cc3e:	b5 95       	asr	r27
    cc40:	a7 95       	ror	r26
    cc42:	97 95       	ror	r25
    cc44:	87 95       	ror	r24
    cc46:	0a 94       	dec	r0
    cc48:	d2 f7       	brpl	.-12     	; 0xcc3e <__ashrdi3+0x98>
    cc4a:	8d 87       	std	Y+13, r24	; 0x0d
    cc4c:	9e 87       	std	Y+14, r25	; 0x0e
    cc4e:	af 87       	std	Y+15, r26	; 0x0f
    cc50:	b8 8b       	std	Y+16, r27	; 0x10
    cc52:	04 c0       	rjmp	.+8      	; 0xcc5c <__ashrdi3+0xb6>
    cc54:	44 0f       	add	r20, r20
    cc56:	55 1f       	adc	r21, r21
    cc58:	66 1f       	adc	r22, r22
    cc5a:	77 1f       	adc	r23, r23
    cc5c:	ea 95       	dec	r30
    cc5e:	d2 f7       	brpl	.-12     	; 0xcc54 <__ashrdi3+0xae>
    cc60:	89 81       	ldd	r24, Y+1	; 0x01
    cc62:	9a 81       	ldd	r25, Y+2	; 0x02
    cc64:	ab 81       	ldd	r26, Y+3	; 0x03
    cc66:	bc 81       	ldd	r27, Y+4	; 0x04
    cc68:	04 c0       	rjmp	.+8      	; 0xcc72 <__ashrdi3+0xcc>
    cc6a:	b6 95       	lsr	r27
    cc6c:	a7 95       	ror	r26
    cc6e:	97 95       	ror	r25
    cc70:	87 95       	ror	r24
    cc72:	2a 95       	dec	r18
    cc74:	d2 f7       	brpl	.-12     	; 0xcc6a <__ashrdi3+0xc4>
    cc76:	48 2b       	or	r20, r24
    cc78:	59 2b       	or	r21, r25
    cc7a:	6a 2b       	or	r22, r26
    cc7c:	7b 2b       	or	r23, r27
    cc7e:	49 87       	std	Y+9, r20	; 0x09
    cc80:	5a 87       	std	Y+10, r21	; 0x0a
    cc82:	6b 87       	std	Y+11, r22	; 0x0b
    cc84:	7c 87       	std	Y+12, r23	; 0x0c
    cc86:	29 85       	ldd	r18, Y+9	; 0x09
    cc88:	3a 85       	ldd	r19, Y+10	; 0x0a
    cc8a:	4b 85       	ldd	r20, Y+11	; 0x0b
    cc8c:	5c 85       	ldd	r21, Y+12	; 0x0c
    cc8e:	6d 85       	ldd	r22, Y+13	; 0x0d
    cc90:	7e 85       	ldd	r23, Y+14	; 0x0e
    cc92:	af 85       	ldd	r26, Y+15	; 0x0f
    cc94:	98 89       	ldd	r25, Y+16	; 0x10
    cc96:	8a 2f       	mov	r24, r26
    cc98:	60 96       	adiw	r28, 0x10	; 16
    cc9a:	0f b6       	in	r0, 0x3f	; 63
    cc9c:	f8 94       	cli
    cc9e:	de bf       	out	0x3e, r29	; 62
    cca0:	0f be       	out	0x3f, r0	; 63
    cca2:	cd bf       	out	0x3d, r28	; 61
    cca4:	cf 91       	pop	r28
    cca6:	df 91       	pop	r29
    cca8:	0f 91       	pop	r16
    ccaa:	ff 90       	pop	r15
    ccac:	ef 90       	pop	r14
    ccae:	08 95       	ret

0000ccb0 <__udivdi3>:
    ccb0:	ae e5       	ldi	r26, 0x5E	; 94
    ccb2:	b0 e0       	ldi	r27, 0x00	; 0
    ccb4:	ee e5       	ldi	r30, 0x5E	; 94
    ccb6:	f6 e6       	ldi	r31, 0x66	; 102
    ccb8:	0c 94 49 6d 	jmp	0xda92	; 0xda92 <__prologue_saves__>
    ccbc:	a8 e0       	ldi	r26, 0x08	; 8
    ccbe:	4e 01       	movw	r8, r28
    ccc0:	08 94       	sec
    ccc2:	81 1c       	adc	r8, r1
    ccc4:	91 1c       	adc	r9, r1
    ccc6:	f4 01       	movw	r30, r8
    ccc8:	6a 2e       	mov	r6, r26
    ccca:	11 92       	st	Z+, r1
    cccc:	6a 94       	dec	r6
    ccce:	e9 f7       	brne	.-6      	; 0xccca <__udivdi3+0x1a>
    ccd0:	29 83       	std	Y+1, r18	; 0x01
    ccd2:	3a 83       	std	Y+2, r19	; 0x02
    ccd4:	4b 83       	std	Y+3, r20	; 0x03
    ccd6:	5c 83       	std	Y+4, r21	; 0x04
    ccd8:	6d 83       	std	Y+5, r22	; 0x05
    ccda:	7e 83       	std	Y+6, r23	; 0x06
    ccdc:	8f 83       	std	Y+7, r24	; 0x07
    ccde:	98 87       	std	Y+8, r25	; 0x08
    cce0:	ce 01       	movw	r24, r28
    cce2:	09 96       	adiw	r24, 0x09	; 9
    cce4:	fc 01       	movw	r30, r24
    cce6:	11 92       	st	Z+, r1
    cce8:	aa 95       	dec	r26
    ccea:	e9 f7       	brne	.-6      	; 0xcce6 <__udivdi3+0x36>
    ccec:	a9 86       	std	Y+9, r10	; 0x09
    ccee:	ba 86       	std	Y+10, r11	; 0x0a
    ccf0:	cb 86       	std	Y+11, r12	; 0x0b
    ccf2:	dc 86       	std	Y+12, r13	; 0x0c
    ccf4:	ed 86       	std	Y+13, r14	; 0x0d
    ccf6:	fe 86       	std	Y+14, r15	; 0x0e
    ccf8:	0f 87       	std	Y+15, r16	; 0x0f
    ccfa:	18 8b       	std	Y+16, r17	; 0x10
    ccfc:	29 84       	ldd	r2, Y+9	; 0x09
    ccfe:	3a 84       	ldd	r3, Y+10	; 0x0a
    cd00:	4b 84       	ldd	r4, Y+11	; 0x0b
    cd02:	5c 84       	ldd	r5, Y+12	; 0x0c
    cd04:	ed 84       	ldd	r14, Y+13	; 0x0d
    cd06:	fe 84       	ldd	r15, Y+14	; 0x0e
    cd08:	0f 85       	ldd	r16, Y+15	; 0x0f
    cd0a:	18 89       	ldd	r17, Y+16	; 0x10
    cd0c:	69 80       	ldd	r6, Y+1	; 0x01
    cd0e:	7a 80       	ldd	r7, Y+2	; 0x02
    cd10:	8b 80       	ldd	r8, Y+3	; 0x03
    cd12:	9c 80       	ldd	r9, Y+4	; 0x04
    cd14:	6d a6       	std	Y+45, r6	; 0x2d
    cd16:	7e a6       	std	Y+46, r7	; 0x2e
    cd18:	8f a6       	std	Y+47, r8	; 0x2f
    cd1a:	98 aa       	std	Y+48, r9	; 0x30
    cd1c:	6d 80       	ldd	r6, Y+5	; 0x05
    cd1e:	7e 80       	ldd	r7, Y+6	; 0x06
    cd20:	8f 80       	ldd	r8, Y+7	; 0x07
    cd22:	98 84       	ldd	r9, Y+8	; 0x08
    cd24:	e1 14       	cp	r14, r1
    cd26:	f1 04       	cpc	r15, r1
    cd28:	01 05       	cpc	r16, r1
    cd2a:	11 05       	cpc	r17, r1
    cd2c:	09 f0       	breq	.+2      	; 0xcd30 <__udivdi3+0x80>
    cd2e:	b3 c3       	rjmp	.+1894   	; 0xd496 <__udivdi3+0x7e6>
    cd30:	62 14       	cp	r6, r2
    cd32:	73 04       	cpc	r7, r3
    cd34:	84 04       	cpc	r8, r4
    cd36:	95 04       	cpc	r9, r5
    cd38:	08 f0       	brcs	.+2      	; 0xcd3c <__udivdi3+0x8c>
    cd3a:	3d c1       	rjmp	.+634    	; 0xcfb6 <__udivdi3+0x306>
    cd3c:	00 e0       	ldi	r16, 0x00	; 0
    cd3e:	20 16       	cp	r2, r16
    cd40:	00 e0       	ldi	r16, 0x00	; 0
    cd42:	30 06       	cpc	r3, r16
    cd44:	01 e0       	ldi	r16, 0x01	; 1
    cd46:	40 06       	cpc	r4, r16
    cd48:	00 e0       	ldi	r16, 0x00	; 0
    cd4a:	50 06       	cpc	r5, r16
    cd4c:	88 f4       	brcc	.+34     	; 0xcd70 <__udivdi3+0xc0>
    cd4e:	1f ef       	ldi	r17, 0xFF	; 255
    cd50:	21 16       	cp	r2, r17
    cd52:	31 04       	cpc	r3, r1
    cd54:	41 04       	cpc	r4, r1
    cd56:	51 04       	cpc	r5, r1
    cd58:	39 f0       	breq	.+14     	; 0xcd68 <__udivdi3+0xb8>
    cd5a:	30 f0       	brcs	.+12     	; 0xcd68 <__udivdi3+0xb8>
    cd5c:	48 e0       	ldi	r20, 0x08	; 8
    cd5e:	e4 2e       	mov	r14, r20
    cd60:	f1 2c       	mov	r15, r1
    cd62:	01 2d       	mov	r16, r1
    cd64:	11 2d       	mov	r17, r1
    cd66:	18 c0       	rjmp	.+48     	; 0xcd98 <__udivdi3+0xe8>
    cd68:	ee 24       	eor	r14, r14
    cd6a:	ff 24       	eor	r15, r15
    cd6c:	87 01       	movw	r16, r14
    cd6e:	14 c0       	rjmp	.+40     	; 0xcd98 <__udivdi3+0xe8>
    cd70:	20 e0       	ldi	r18, 0x00	; 0
    cd72:	22 16       	cp	r2, r18
    cd74:	20 e0       	ldi	r18, 0x00	; 0
    cd76:	32 06       	cpc	r3, r18
    cd78:	20 e0       	ldi	r18, 0x00	; 0
    cd7a:	42 06       	cpc	r4, r18
    cd7c:	21 e0       	ldi	r18, 0x01	; 1
    cd7e:	52 06       	cpc	r5, r18
    cd80:	30 f0       	brcs	.+12     	; 0xcd8e <__udivdi3+0xde>
    cd82:	38 e1       	ldi	r19, 0x18	; 24
    cd84:	e3 2e       	mov	r14, r19
    cd86:	f1 2c       	mov	r15, r1
    cd88:	01 2d       	mov	r16, r1
    cd8a:	11 2d       	mov	r17, r1
    cd8c:	05 c0       	rjmp	.+10     	; 0xcd98 <__udivdi3+0xe8>
    cd8e:	20 e1       	ldi	r18, 0x10	; 16
    cd90:	e2 2e       	mov	r14, r18
    cd92:	f1 2c       	mov	r15, r1
    cd94:	01 2d       	mov	r16, r1
    cd96:	11 2d       	mov	r17, r1
    cd98:	d2 01       	movw	r26, r4
    cd9a:	c1 01       	movw	r24, r2
    cd9c:	0e 2c       	mov	r0, r14
    cd9e:	04 c0       	rjmp	.+8      	; 0xcda8 <__udivdi3+0xf8>
    cda0:	b6 95       	lsr	r27
    cda2:	a7 95       	ror	r26
    cda4:	97 95       	ror	r25
    cda6:	87 95       	ror	r24
    cda8:	0a 94       	dec	r0
    cdaa:	d2 f7       	brpl	.-12     	; 0xcda0 <__udivdi3+0xf0>
    cdac:	8a 5f       	subi	r24, 0xFA	; 250
    cdae:	9d 4f       	sbci	r25, 0xFD	; 253
    cdb0:	dc 01       	movw	r26, r24
    cdb2:	2c 91       	ld	r18, X
    cdb4:	80 e2       	ldi	r24, 0x20	; 32
    cdb6:	90 e0       	ldi	r25, 0x00	; 0
    cdb8:	a0 e0       	ldi	r26, 0x00	; 0
    cdba:	b0 e0       	ldi	r27, 0x00	; 0
    cdbc:	8e 19       	sub	r24, r14
    cdbe:	9f 09       	sbc	r25, r15
    cdc0:	a0 0b       	sbc	r26, r16
    cdc2:	b1 0b       	sbc	r27, r17
    cdc4:	7c 01       	movw	r14, r24
    cdc6:	8d 01       	movw	r16, r26
    cdc8:	e2 1a       	sub	r14, r18
    cdca:	f1 08       	sbc	r15, r1
    cdcc:	01 09       	sbc	r16, r1
    cdce:	11 09       	sbc	r17, r1
    cdd0:	e1 14       	cp	r14, r1
    cdd2:	f1 04       	cpc	r15, r1
    cdd4:	01 05       	cpc	r16, r1
    cdd6:	11 05       	cpc	r17, r1
    cdd8:	a1 f1       	breq	.+104    	; 0xce42 <__udivdi3+0x192>
    cdda:	0e 2c       	mov	r0, r14
    cddc:	04 c0       	rjmp	.+8      	; 0xcde6 <__udivdi3+0x136>
    cdde:	22 0c       	add	r2, r2
    cde0:	33 1c       	adc	r3, r3
    cde2:	44 1c       	adc	r4, r4
    cde4:	55 1c       	adc	r5, r5
    cde6:	0a 94       	dec	r0
    cde8:	d2 f7       	brpl	.-12     	; 0xcdde <__udivdi3+0x12e>
    cdea:	a4 01       	movw	r20, r8
    cdec:	93 01       	movw	r18, r6
    cdee:	0e 2c       	mov	r0, r14
    cdf0:	04 c0       	rjmp	.+8      	; 0xcdfa <__udivdi3+0x14a>
    cdf2:	22 0f       	add	r18, r18
    cdf4:	33 1f       	adc	r19, r19
    cdf6:	44 1f       	adc	r20, r20
    cdf8:	55 1f       	adc	r21, r21
    cdfa:	0a 94       	dec	r0
    cdfc:	d2 f7       	brpl	.-12     	; 0xcdf2 <__udivdi3+0x142>
    cdfe:	80 e2       	ldi	r24, 0x20	; 32
    ce00:	90 e0       	ldi	r25, 0x00	; 0
    ce02:	8e 19       	sub	r24, r14
    ce04:	9f 09       	sbc	r25, r15
    ce06:	6d a4       	ldd	r6, Y+45	; 0x2d
    ce08:	7e a4       	ldd	r7, Y+46	; 0x2e
    ce0a:	8f a4       	ldd	r8, Y+47	; 0x2f
    ce0c:	98 a8       	ldd	r9, Y+48	; 0x30
    ce0e:	04 c0       	rjmp	.+8      	; 0xce18 <__udivdi3+0x168>
    ce10:	96 94       	lsr	r9
    ce12:	87 94       	ror	r8
    ce14:	77 94       	ror	r7
    ce16:	67 94       	ror	r6
    ce18:	8a 95       	dec	r24
    ce1a:	d2 f7       	brpl	.-12     	; 0xce10 <__udivdi3+0x160>
    ce1c:	62 2a       	or	r6, r18
    ce1e:	73 2a       	or	r7, r19
    ce20:	84 2a       	or	r8, r20
    ce22:	95 2a       	or	r9, r21
    ce24:	ad a4       	ldd	r10, Y+45	; 0x2d
    ce26:	be a4       	ldd	r11, Y+46	; 0x2e
    ce28:	cf a4       	ldd	r12, Y+47	; 0x2f
    ce2a:	d8 a8       	ldd	r13, Y+48	; 0x30
    ce2c:	04 c0       	rjmp	.+8      	; 0xce36 <__udivdi3+0x186>
    ce2e:	aa 0c       	add	r10, r10
    ce30:	bb 1c       	adc	r11, r11
    ce32:	cc 1c       	adc	r12, r12
    ce34:	dd 1c       	adc	r13, r13
    ce36:	ea 94       	dec	r14
    ce38:	d2 f7       	brpl	.-12     	; 0xce2e <__udivdi3+0x17e>
    ce3a:	ad a6       	std	Y+45, r10	; 0x2d
    ce3c:	be a6       	std	Y+46, r11	; 0x2e
    ce3e:	cf a6       	std	Y+47, r12	; 0x2f
    ce40:	d8 aa       	std	Y+48, r13	; 0x30
    ce42:	62 01       	movw	r12, r4
    ce44:	ee 24       	eor	r14, r14
    ce46:	ff 24       	eor	r15, r15
    ce48:	cd aa       	std	Y+53, r12	; 0x35
    ce4a:	de aa       	std	Y+54, r13	; 0x36
    ce4c:	ef aa       	std	Y+55, r14	; 0x37
    ce4e:	f8 ae       	std	Y+56, r15	; 0x38
    ce50:	92 01       	movw	r18, r4
    ce52:	81 01       	movw	r16, r2
    ce54:	20 70       	andi	r18, 0x00	; 0
    ce56:	30 70       	andi	r19, 0x00	; 0
    ce58:	09 af       	std	Y+57, r16	; 0x39
    ce5a:	1a af       	std	Y+58, r17	; 0x3a
    ce5c:	2b af       	std	Y+59, r18	; 0x3b
    ce5e:	3c af       	std	Y+60, r19	; 0x3c
    ce60:	c4 01       	movw	r24, r8
    ce62:	b3 01       	movw	r22, r6
    ce64:	a7 01       	movw	r20, r14
    ce66:	96 01       	movw	r18, r12
    ce68:	0e 94 0c 6d 	call	0xda18	; 0xda18 <__udivmodsi4>
    ce6c:	7b 01       	movw	r14, r22
    ce6e:	8c 01       	movw	r16, r24
    ce70:	c4 01       	movw	r24, r8
    ce72:	b3 01       	movw	r22, r6
    ce74:	2d a9       	ldd	r18, Y+53	; 0x35
    ce76:	3e a9       	ldd	r19, Y+54	; 0x36
    ce78:	4f a9       	ldd	r20, Y+55	; 0x37
    ce7a:	58 ad       	ldd	r21, Y+56	; 0x38
    ce7c:	0e 94 0c 6d 	call	0xda18	; 0xda18 <__udivmodsi4>
    ce80:	c9 01       	movw	r24, r18
    ce82:	da 01       	movw	r26, r20
    ce84:	3c 01       	movw	r6, r24
    ce86:	4d 01       	movw	r8, r26
    ce88:	c4 01       	movw	r24, r8
    ce8a:	b3 01       	movw	r22, r6
    ce8c:	29 ad       	ldd	r18, Y+57	; 0x39
    ce8e:	3a ad       	ldd	r19, Y+58	; 0x3a
    ce90:	4b ad       	ldd	r20, Y+59	; 0x3b
    ce92:	5c ad       	ldd	r21, Y+60	; 0x3c
    ce94:	0e 94 cd 6c 	call	0xd99a	; 0xd99a <__mulsi3>
    ce98:	9b 01       	movw	r18, r22
    ce9a:	ac 01       	movw	r20, r24
    ce9c:	87 01       	movw	r16, r14
    ce9e:	ff 24       	eor	r15, r15
    cea0:	ee 24       	eor	r14, r14
    cea2:	ad a4       	ldd	r10, Y+45	; 0x2d
    cea4:	be a4       	ldd	r11, Y+46	; 0x2e
    cea6:	cf a4       	ldd	r12, Y+47	; 0x2f
    cea8:	d8 a8       	ldd	r13, Y+48	; 0x30
    ceaa:	c6 01       	movw	r24, r12
    ceac:	aa 27       	eor	r26, r26
    ceae:	bb 27       	eor	r27, r27
    ceb0:	57 01       	movw	r10, r14
    ceb2:	68 01       	movw	r12, r16
    ceb4:	a8 2a       	or	r10, r24
    ceb6:	b9 2a       	or	r11, r25
    ceb8:	ca 2a       	or	r12, r26
    ceba:	db 2a       	or	r13, r27
    cebc:	a2 16       	cp	r10, r18
    cebe:	b3 06       	cpc	r11, r19
    cec0:	c4 06       	cpc	r12, r20
    cec2:	d5 06       	cpc	r13, r21
    cec4:	e0 f4       	brcc	.+56     	; 0xcefe <__udivdi3+0x24e>
    cec6:	08 94       	sec
    cec8:	61 08       	sbc	r6, r1
    ceca:	71 08       	sbc	r7, r1
    cecc:	81 08       	sbc	r8, r1
    cece:	91 08       	sbc	r9, r1
    ced0:	a2 0c       	add	r10, r2
    ced2:	b3 1c       	adc	r11, r3
    ced4:	c4 1c       	adc	r12, r4
    ced6:	d5 1c       	adc	r13, r5
    ced8:	a2 14       	cp	r10, r2
    ceda:	b3 04       	cpc	r11, r3
    cedc:	c4 04       	cpc	r12, r4
    cede:	d5 04       	cpc	r13, r5
    cee0:	70 f0       	brcs	.+28     	; 0xcefe <__udivdi3+0x24e>
    cee2:	a2 16       	cp	r10, r18
    cee4:	b3 06       	cpc	r11, r19
    cee6:	c4 06       	cpc	r12, r20
    cee8:	d5 06       	cpc	r13, r21
    ceea:	48 f4       	brcc	.+18     	; 0xcefe <__udivdi3+0x24e>
    ceec:	08 94       	sec
    ceee:	61 08       	sbc	r6, r1
    cef0:	71 08       	sbc	r7, r1
    cef2:	81 08       	sbc	r8, r1
    cef4:	91 08       	sbc	r9, r1
    cef6:	a2 0c       	add	r10, r2
    cef8:	b3 1c       	adc	r11, r3
    cefa:	c4 1c       	adc	r12, r4
    cefc:	d5 1c       	adc	r13, r5
    cefe:	a2 1a       	sub	r10, r18
    cf00:	b3 0a       	sbc	r11, r19
    cf02:	c4 0a       	sbc	r12, r20
    cf04:	d5 0a       	sbc	r13, r21
    cf06:	c6 01       	movw	r24, r12
    cf08:	b5 01       	movw	r22, r10
    cf0a:	2d a9       	ldd	r18, Y+53	; 0x35
    cf0c:	3e a9       	ldd	r19, Y+54	; 0x36
    cf0e:	4f a9       	ldd	r20, Y+55	; 0x37
    cf10:	58 ad       	ldd	r21, Y+56	; 0x38
    cf12:	0e 94 0c 6d 	call	0xda18	; 0xda18 <__udivmodsi4>
    cf16:	7b 01       	movw	r14, r22
    cf18:	8c 01       	movw	r16, r24
    cf1a:	c6 01       	movw	r24, r12
    cf1c:	b5 01       	movw	r22, r10
    cf1e:	2d a9       	ldd	r18, Y+53	; 0x35
    cf20:	3e a9       	ldd	r19, Y+54	; 0x36
    cf22:	4f a9       	ldd	r20, Y+55	; 0x37
    cf24:	58 ad       	ldd	r21, Y+56	; 0x38
    cf26:	0e 94 0c 6d 	call	0xda18	; 0xda18 <__udivmodsi4>
    cf2a:	c9 01       	movw	r24, r18
    cf2c:	da 01       	movw	r26, r20
    cf2e:	5c 01       	movw	r10, r24
    cf30:	6d 01       	movw	r12, r26
    cf32:	c6 01       	movw	r24, r12
    cf34:	b5 01       	movw	r22, r10
    cf36:	29 ad       	ldd	r18, Y+57	; 0x39
    cf38:	3a ad       	ldd	r19, Y+58	; 0x3a
    cf3a:	4b ad       	ldd	r20, Y+59	; 0x3b
    cf3c:	5c ad       	ldd	r21, Y+60	; 0x3c
    cf3e:	0e 94 cd 6c 	call	0xd99a	; 0xd99a <__mulsi3>
    cf42:	9b 01       	movw	r18, r22
    cf44:	ac 01       	movw	r20, r24
    cf46:	87 01       	movw	r16, r14
    cf48:	ff 24       	eor	r15, r15
    cf4a:	ee 24       	eor	r14, r14
    cf4c:	8d a5       	ldd	r24, Y+45	; 0x2d
    cf4e:	9e a5       	ldd	r25, Y+46	; 0x2e
    cf50:	af a5       	ldd	r26, Y+47	; 0x2f
    cf52:	b8 a9       	ldd	r27, Y+48	; 0x30
    cf54:	a0 70       	andi	r26, 0x00	; 0
    cf56:	b0 70       	andi	r27, 0x00	; 0
    cf58:	e8 2a       	or	r14, r24
    cf5a:	f9 2a       	or	r15, r25
    cf5c:	0a 2b       	or	r16, r26
    cf5e:	1b 2b       	or	r17, r27
    cf60:	e2 16       	cp	r14, r18
    cf62:	f3 06       	cpc	r15, r19
    cf64:	04 07       	cpc	r16, r20
    cf66:	15 07       	cpc	r17, r21
    cf68:	c0 f4       	brcc	.+48     	; 0xcf9a <__udivdi3+0x2ea>
    cf6a:	08 94       	sec
    cf6c:	a1 08       	sbc	r10, r1
    cf6e:	b1 08       	sbc	r11, r1
    cf70:	c1 08       	sbc	r12, r1
    cf72:	d1 08       	sbc	r13, r1
    cf74:	e2 0c       	add	r14, r2
    cf76:	f3 1c       	adc	r15, r3
    cf78:	04 1d       	adc	r16, r4
    cf7a:	15 1d       	adc	r17, r5
    cf7c:	e2 14       	cp	r14, r2
    cf7e:	f3 04       	cpc	r15, r3
    cf80:	04 05       	cpc	r16, r4
    cf82:	15 05       	cpc	r17, r5
    cf84:	50 f0       	brcs	.+20     	; 0xcf9a <__udivdi3+0x2ea>
    cf86:	e2 16       	cp	r14, r18
    cf88:	f3 06       	cpc	r15, r19
    cf8a:	04 07       	cpc	r16, r20
    cf8c:	15 07       	cpc	r17, r21
    cf8e:	28 f4       	brcc	.+10     	; 0xcf9a <__udivdi3+0x2ea>
    cf90:	08 94       	sec
    cf92:	a1 08       	sbc	r10, r1
    cf94:	b1 08       	sbc	r11, r1
    cf96:	c1 08       	sbc	r12, r1
    cf98:	d1 08       	sbc	r13, r1
    cf9a:	d3 01       	movw	r26, r6
    cf9c:	99 27       	eor	r25, r25
    cf9e:	88 27       	eor	r24, r24
    cfa0:	86 01       	movw	r16, r12
    cfa2:	75 01       	movw	r14, r10
    cfa4:	e8 2a       	or	r14, r24
    cfa6:	f9 2a       	or	r15, r25
    cfa8:	0a 2b       	or	r16, r26
    cfaa:	1b 2b       	or	r17, r27
    cfac:	e9 aa       	std	Y+49, r14	; 0x31
    cfae:	fa aa       	std	Y+50, r15	; 0x32
    cfb0:	0b ab       	std	Y+51, r16	; 0x33
    cfb2:	1c ab       	std	Y+52, r17	; 0x34
    cfb4:	cf c4       	rjmp	.+2462   	; 0xd954 <__udivdi3+0xca4>
    cfb6:	21 14       	cp	r2, r1
    cfb8:	31 04       	cpc	r3, r1
    cfba:	41 04       	cpc	r4, r1
    cfbc:	51 04       	cpc	r5, r1
    cfbe:	71 f4       	brne	.+28     	; 0xcfdc <__udivdi3+0x32c>
    cfc0:	61 e0       	ldi	r22, 0x01	; 1
    cfc2:	70 e0       	ldi	r23, 0x00	; 0
    cfc4:	80 e0       	ldi	r24, 0x00	; 0
    cfc6:	90 e0       	ldi	r25, 0x00	; 0
    cfc8:	20 e0       	ldi	r18, 0x00	; 0
    cfca:	30 e0       	ldi	r19, 0x00	; 0
    cfcc:	40 e0       	ldi	r20, 0x00	; 0
    cfce:	50 e0       	ldi	r21, 0x00	; 0
    cfd0:	0e 94 0c 6d 	call	0xda18	; 0xda18 <__udivmodsi4>
    cfd4:	c9 01       	movw	r24, r18
    cfd6:	da 01       	movw	r26, r20
    cfd8:	1c 01       	movw	r2, r24
    cfda:	2d 01       	movw	r4, r26
    cfdc:	00 e0       	ldi	r16, 0x00	; 0
    cfde:	20 16       	cp	r2, r16
    cfe0:	00 e0       	ldi	r16, 0x00	; 0
    cfe2:	30 06       	cpc	r3, r16
    cfe4:	01 e0       	ldi	r16, 0x01	; 1
    cfe6:	40 06       	cpc	r4, r16
    cfe8:	00 e0       	ldi	r16, 0x00	; 0
    cfea:	50 06       	cpc	r5, r16
    cfec:	88 f4       	brcc	.+34     	; 0xd010 <__udivdi3+0x360>
    cfee:	1f ef       	ldi	r17, 0xFF	; 255
    cff0:	21 16       	cp	r2, r17
    cff2:	31 04       	cpc	r3, r1
    cff4:	41 04       	cpc	r4, r1
    cff6:	51 04       	cpc	r5, r1
    cff8:	31 f0       	breq	.+12     	; 0xd006 <__udivdi3+0x356>
    cffa:	28 f0       	brcs	.+10     	; 0xd006 <__udivdi3+0x356>
    cffc:	48 e0       	ldi	r20, 0x08	; 8
    cffe:	50 e0       	ldi	r21, 0x00	; 0
    d000:	60 e0       	ldi	r22, 0x00	; 0
    d002:	70 e0       	ldi	r23, 0x00	; 0
    d004:	17 c0       	rjmp	.+46     	; 0xd034 <__udivdi3+0x384>
    d006:	40 e0       	ldi	r20, 0x00	; 0
    d008:	50 e0       	ldi	r21, 0x00	; 0
    d00a:	60 e0       	ldi	r22, 0x00	; 0
    d00c:	70 e0       	ldi	r23, 0x00	; 0
    d00e:	12 c0       	rjmp	.+36     	; 0xd034 <__udivdi3+0x384>
    d010:	20 e0       	ldi	r18, 0x00	; 0
    d012:	22 16       	cp	r2, r18
    d014:	20 e0       	ldi	r18, 0x00	; 0
    d016:	32 06       	cpc	r3, r18
    d018:	20 e0       	ldi	r18, 0x00	; 0
    d01a:	42 06       	cpc	r4, r18
    d01c:	21 e0       	ldi	r18, 0x01	; 1
    d01e:	52 06       	cpc	r5, r18
    d020:	28 f0       	brcs	.+10     	; 0xd02c <__udivdi3+0x37c>
    d022:	48 e1       	ldi	r20, 0x18	; 24
    d024:	50 e0       	ldi	r21, 0x00	; 0
    d026:	60 e0       	ldi	r22, 0x00	; 0
    d028:	70 e0       	ldi	r23, 0x00	; 0
    d02a:	04 c0       	rjmp	.+8      	; 0xd034 <__udivdi3+0x384>
    d02c:	40 e1       	ldi	r20, 0x10	; 16
    d02e:	50 e0       	ldi	r21, 0x00	; 0
    d030:	60 e0       	ldi	r22, 0x00	; 0
    d032:	70 e0       	ldi	r23, 0x00	; 0
    d034:	d2 01       	movw	r26, r4
    d036:	c1 01       	movw	r24, r2
    d038:	04 2e       	mov	r0, r20
    d03a:	04 c0       	rjmp	.+8      	; 0xd044 <__udivdi3+0x394>
    d03c:	b6 95       	lsr	r27
    d03e:	a7 95       	ror	r26
    d040:	97 95       	ror	r25
    d042:	87 95       	ror	r24
    d044:	0a 94       	dec	r0
    d046:	d2 f7       	brpl	.-12     	; 0xd03c <__udivdi3+0x38c>
    d048:	8a 5f       	subi	r24, 0xFA	; 250
    d04a:	9d 4f       	sbci	r25, 0xFD	; 253
    d04c:	dc 01       	movw	r26, r24
    d04e:	2c 91       	ld	r18, X
    d050:	e0 e2       	ldi	r30, 0x20	; 32
    d052:	ee 2e       	mov	r14, r30
    d054:	f1 2c       	mov	r15, r1
    d056:	01 2d       	mov	r16, r1
    d058:	11 2d       	mov	r17, r1
    d05a:	d8 01       	movw	r26, r16
    d05c:	c7 01       	movw	r24, r14
    d05e:	84 1b       	sub	r24, r20
    d060:	95 0b       	sbc	r25, r21
    d062:	a6 0b       	sbc	r26, r22
    d064:	b7 0b       	sbc	r27, r23
    d066:	82 1b       	sub	r24, r18
    d068:	91 09       	sbc	r25, r1
    d06a:	a1 09       	sbc	r26, r1
    d06c:	b1 09       	sbc	r27, r1
    d06e:	00 97       	sbiw	r24, 0x00	; 0
    d070:	a1 05       	cpc	r26, r1
    d072:	b1 05       	cpc	r27, r1
    d074:	61 f4       	brne	.+24     	; 0xd08e <__udivdi3+0x3de>
    d076:	64 01       	movw	r12, r8
    d078:	53 01       	movw	r10, r6
    d07a:	a2 18       	sub	r10, r2
    d07c:	b3 08       	sbc	r11, r3
    d07e:	c4 08       	sbc	r12, r4
    d080:	d5 08       	sbc	r13, r5
    d082:	31 e0       	ldi	r19, 0x01	; 1
    d084:	63 2e       	mov	r6, r19
    d086:	71 2c       	mov	r7, r1
    d088:	81 2c       	mov	r8, r1
    d08a:	91 2c       	mov	r9, r1
    d08c:	1e c1       	rjmp	.+572    	; 0xd2ca <__udivdi3+0x61a>
    d08e:	6f 96       	adiw	r28, 0x1f	; 31
    d090:	8f af       	std	Y+63, r24	; 0x3f
    d092:	6f 97       	sbiw	r28, 0x1f	; 31
    d094:	08 2e       	mov	r0, r24
    d096:	04 c0       	rjmp	.+8      	; 0xd0a0 <__udivdi3+0x3f0>
    d098:	22 0c       	add	r2, r2
    d09a:	33 1c       	adc	r3, r3
    d09c:	44 1c       	adc	r4, r4
    d09e:	55 1c       	adc	r5, r5
    d0a0:	0a 94       	dec	r0
    d0a2:	d2 f7       	brpl	.-12     	; 0xd098 <__udivdi3+0x3e8>
    d0a4:	ee 2d       	mov	r30, r14
    d0a6:	e8 1b       	sub	r30, r24
    d0a8:	64 01       	movw	r12, r8
    d0aa:	53 01       	movw	r10, r6
    d0ac:	0e 2e       	mov	r0, r30
    d0ae:	04 c0       	rjmp	.+8      	; 0xd0b8 <__udivdi3+0x408>
    d0b0:	d6 94       	lsr	r13
    d0b2:	c7 94       	ror	r12
    d0b4:	b7 94       	ror	r11
    d0b6:	a7 94       	ror	r10
    d0b8:	0a 94       	dec	r0
    d0ba:	d2 f7       	brpl	.-12     	; 0xd0b0 <__udivdi3+0x400>
    d0bc:	a4 01       	movw	r20, r8
    d0be:	93 01       	movw	r18, r6
    d0c0:	6f 96       	adiw	r28, 0x1f	; 31
    d0c2:	0f ac       	ldd	r0, Y+63	; 0x3f
    d0c4:	6f 97       	sbiw	r28, 0x1f	; 31
    d0c6:	04 c0       	rjmp	.+8      	; 0xd0d0 <__udivdi3+0x420>
    d0c8:	22 0f       	add	r18, r18
    d0ca:	33 1f       	adc	r19, r19
    d0cc:	44 1f       	adc	r20, r20
    d0ce:	55 1f       	adc	r21, r21
    d0d0:	0a 94       	dec	r0
    d0d2:	d2 f7       	brpl	.-12     	; 0xd0c8 <__udivdi3+0x418>
    d0d4:	6d a4       	ldd	r6, Y+45	; 0x2d
    d0d6:	7e a4       	ldd	r7, Y+46	; 0x2e
    d0d8:	8f a4       	ldd	r8, Y+47	; 0x2f
    d0da:	98 a8       	ldd	r9, Y+48	; 0x30
    d0dc:	0e 2e       	mov	r0, r30
    d0de:	04 c0       	rjmp	.+8      	; 0xd0e8 <__udivdi3+0x438>
    d0e0:	96 94       	lsr	r9
    d0e2:	87 94       	ror	r8
    d0e4:	77 94       	ror	r7
    d0e6:	67 94       	ror	r6
    d0e8:	0a 94       	dec	r0
    d0ea:	d2 f7       	brpl	.-12     	; 0xd0e0 <__udivdi3+0x430>
    d0ec:	84 01       	movw	r16, r8
    d0ee:	73 01       	movw	r14, r6
    d0f0:	e2 2a       	or	r14, r18
    d0f2:	f3 2a       	or	r15, r19
    d0f4:	04 2b       	or	r16, r20
    d0f6:	15 2b       	or	r17, r21
    d0f8:	e9 a6       	std	Y+41, r14	; 0x29
    d0fa:	fa a6       	std	Y+42, r15	; 0x2a
    d0fc:	0b a7       	std	Y+43, r16	; 0x2b
    d0fe:	1c a7       	std	Y+44, r17	; 0x2c
    d100:	32 01       	movw	r6, r4
    d102:	88 24       	eor	r8, r8
    d104:	99 24       	eor	r9, r9
    d106:	92 01       	movw	r18, r4
    d108:	81 01       	movw	r16, r2
    d10a:	20 70       	andi	r18, 0x00	; 0
    d10c:	30 70       	andi	r19, 0x00	; 0
    d10e:	21 96       	adiw	r28, 0x01	; 1
    d110:	0c af       	std	Y+60, r16	; 0x3c
    d112:	1d af       	std	Y+61, r17	; 0x3d
    d114:	2e af       	std	Y+62, r18	; 0x3e
    d116:	3f af       	std	Y+63, r19	; 0x3f
    d118:	21 97       	sbiw	r28, 0x01	; 1
    d11a:	c6 01       	movw	r24, r12
    d11c:	b5 01       	movw	r22, r10
    d11e:	a4 01       	movw	r20, r8
    d120:	93 01       	movw	r18, r6
    d122:	0e 94 0c 6d 	call	0xda18	; 0xda18 <__udivmodsi4>
    d126:	7b 01       	movw	r14, r22
    d128:	8c 01       	movw	r16, r24
    d12a:	c6 01       	movw	r24, r12
    d12c:	b5 01       	movw	r22, r10
    d12e:	a4 01       	movw	r20, r8
    d130:	93 01       	movw	r18, r6
    d132:	0e 94 0c 6d 	call	0xda18	; 0xda18 <__udivmodsi4>
    d136:	c9 01       	movw	r24, r18
    d138:	da 01       	movw	r26, r20
    d13a:	25 96       	adiw	r28, 0x05	; 5
    d13c:	8c af       	std	Y+60, r24	; 0x3c
    d13e:	9d af       	std	Y+61, r25	; 0x3d
    d140:	ae af       	std	Y+62, r26	; 0x3e
    d142:	bf af       	std	Y+63, r27	; 0x3f
    d144:	25 97       	sbiw	r28, 0x05	; 5
    d146:	bc 01       	movw	r22, r24
    d148:	cd 01       	movw	r24, r26
    d14a:	21 96       	adiw	r28, 0x01	; 1
    d14c:	2c ad       	ldd	r18, Y+60	; 0x3c
    d14e:	3d ad       	ldd	r19, Y+61	; 0x3d
    d150:	4e ad       	ldd	r20, Y+62	; 0x3e
    d152:	5f ad       	ldd	r21, Y+63	; 0x3f
    d154:	21 97       	sbiw	r28, 0x01	; 1
    d156:	0e 94 cd 6c 	call	0xd99a	; 0xd99a <__mulsi3>
    d15a:	9b 01       	movw	r18, r22
    d15c:	ac 01       	movw	r20, r24
    d15e:	87 01       	movw	r16, r14
    d160:	ff 24       	eor	r15, r15
    d162:	ee 24       	eor	r14, r14
    d164:	a9 a4       	ldd	r10, Y+41	; 0x29
    d166:	ba a4       	ldd	r11, Y+42	; 0x2a
    d168:	cb a4       	ldd	r12, Y+43	; 0x2b
    d16a:	dc a4       	ldd	r13, Y+44	; 0x2c
    d16c:	c6 01       	movw	r24, r12
    d16e:	aa 27       	eor	r26, r26
    d170:	bb 27       	eor	r27, r27
    d172:	5c 01       	movw	r10, r24
    d174:	6d 01       	movw	r12, r26
    d176:	ae 28       	or	r10, r14
    d178:	bf 28       	or	r11, r15
    d17a:	c0 2a       	or	r12, r16
    d17c:	d1 2a       	or	r13, r17
    d17e:	a2 16       	cp	r10, r18
    d180:	b3 06       	cpc	r11, r19
    d182:	c4 06       	cpc	r12, r20
    d184:	d5 06       	cpc	r13, r21
    d186:	60 f5       	brcc	.+88     	; 0xd1e0 <__udivdi3+0x530>
    d188:	25 96       	adiw	r28, 0x05	; 5
    d18a:	6c ad       	ldd	r22, Y+60	; 0x3c
    d18c:	7d ad       	ldd	r23, Y+61	; 0x3d
    d18e:	8e ad       	ldd	r24, Y+62	; 0x3e
    d190:	9f ad       	ldd	r25, Y+63	; 0x3f
    d192:	25 97       	sbiw	r28, 0x05	; 5
    d194:	61 50       	subi	r22, 0x01	; 1
    d196:	70 40       	sbci	r23, 0x00	; 0
    d198:	80 40       	sbci	r24, 0x00	; 0
    d19a:	90 40       	sbci	r25, 0x00	; 0
    d19c:	25 96       	adiw	r28, 0x05	; 5
    d19e:	6c af       	std	Y+60, r22	; 0x3c
    d1a0:	7d af       	std	Y+61, r23	; 0x3d
    d1a2:	8e af       	std	Y+62, r24	; 0x3e
    d1a4:	9f af       	std	Y+63, r25	; 0x3f
    d1a6:	25 97       	sbiw	r28, 0x05	; 5
    d1a8:	a2 0c       	add	r10, r2
    d1aa:	b3 1c       	adc	r11, r3
    d1ac:	c4 1c       	adc	r12, r4
    d1ae:	d5 1c       	adc	r13, r5
    d1b0:	a2 14       	cp	r10, r2
    d1b2:	b3 04       	cpc	r11, r3
    d1b4:	c4 04       	cpc	r12, r4
    d1b6:	d5 04       	cpc	r13, r5
    d1b8:	98 f0       	brcs	.+38     	; 0xd1e0 <__udivdi3+0x530>
    d1ba:	a2 16       	cp	r10, r18
    d1bc:	b3 06       	cpc	r11, r19
    d1be:	c4 06       	cpc	r12, r20
    d1c0:	d5 06       	cpc	r13, r21
    d1c2:	70 f4       	brcc	.+28     	; 0xd1e0 <__udivdi3+0x530>
    d1c4:	61 50       	subi	r22, 0x01	; 1
    d1c6:	70 40       	sbci	r23, 0x00	; 0
    d1c8:	80 40       	sbci	r24, 0x00	; 0
    d1ca:	90 40       	sbci	r25, 0x00	; 0
    d1cc:	25 96       	adiw	r28, 0x05	; 5
    d1ce:	6c af       	std	Y+60, r22	; 0x3c
    d1d0:	7d af       	std	Y+61, r23	; 0x3d
    d1d2:	8e af       	std	Y+62, r24	; 0x3e
    d1d4:	9f af       	std	Y+63, r25	; 0x3f
    d1d6:	25 97       	sbiw	r28, 0x05	; 5
    d1d8:	a2 0c       	add	r10, r2
    d1da:	b3 1c       	adc	r11, r3
    d1dc:	c4 1c       	adc	r12, r4
    d1de:	d5 1c       	adc	r13, r5
    d1e0:	a2 1a       	sub	r10, r18
    d1e2:	b3 0a       	sbc	r11, r19
    d1e4:	c4 0a       	sbc	r12, r20
    d1e6:	d5 0a       	sbc	r13, r21
    d1e8:	c6 01       	movw	r24, r12
    d1ea:	b5 01       	movw	r22, r10
    d1ec:	a4 01       	movw	r20, r8
    d1ee:	93 01       	movw	r18, r6
    d1f0:	0e 94 0c 6d 	call	0xda18	; 0xda18 <__udivmodsi4>
    d1f4:	7b 01       	movw	r14, r22
    d1f6:	8c 01       	movw	r16, r24
    d1f8:	c6 01       	movw	r24, r12
    d1fa:	b5 01       	movw	r22, r10
    d1fc:	a4 01       	movw	r20, r8
    d1fe:	93 01       	movw	r18, r6
    d200:	0e 94 0c 6d 	call	0xda18	; 0xda18 <__udivmodsi4>
    d204:	c9 01       	movw	r24, r18
    d206:	da 01       	movw	r26, r20
    d208:	3c 01       	movw	r6, r24
    d20a:	4d 01       	movw	r8, r26
    d20c:	c4 01       	movw	r24, r8
    d20e:	b3 01       	movw	r22, r6
    d210:	21 96       	adiw	r28, 0x01	; 1
    d212:	2c ad       	ldd	r18, Y+60	; 0x3c
    d214:	3d ad       	ldd	r19, Y+61	; 0x3d
    d216:	4e ad       	ldd	r20, Y+62	; 0x3e
    d218:	5f ad       	ldd	r21, Y+63	; 0x3f
    d21a:	21 97       	sbiw	r28, 0x01	; 1
    d21c:	0e 94 cd 6c 	call	0xd99a	; 0xd99a <__mulsi3>
    d220:	9b 01       	movw	r18, r22
    d222:	ac 01       	movw	r20, r24
    d224:	87 01       	movw	r16, r14
    d226:	ff 24       	eor	r15, r15
    d228:	ee 24       	eor	r14, r14
    d22a:	89 a5       	ldd	r24, Y+41	; 0x29
    d22c:	9a a5       	ldd	r25, Y+42	; 0x2a
    d22e:	ab a5       	ldd	r26, Y+43	; 0x2b
    d230:	bc a5       	ldd	r27, Y+44	; 0x2c
    d232:	a0 70       	andi	r26, 0x00	; 0
    d234:	b0 70       	andi	r27, 0x00	; 0
    d236:	57 01       	movw	r10, r14
    d238:	68 01       	movw	r12, r16
    d23a:	a8 2a       	or	r10, r24
    d23c:	b9 2a       	or	r11, r25
    d23e:	ca 2a       	or	r12, r26
    d240:	db 2a       	or	r13, r27
    d242:	a2 16       	cp	r10, r18
    d244:	b3 06       	cpc	r11, r19
    d246:	c4 06       	cpc	r12, r20
    d248:	d5 06       	cpc	r13, r21
    d24a:	e0 f4       	brcc	.+56     	; 0xd284 <__udivdi3+0x5d4>
    d24c:	08 94       	sec
    d24e:	61 08       	sbc	r6, r1
    d250:	71 08       	sbc	r7, r1
    d252:	81 08       	sbc	r8, r1
    d254:	91 08       	sbc	r9, r1
    d256:	a2 0c       	add	r10, r2
    d258:	b3 1c       	adc	r11, r3
    d25a:	c4 1c       	adc	r12, r4
    d25c:	d5 1c       	adc	r13, r5
    d25e:	a2 14       	cp	r10, r2
    d260:	b3 04       	cpc	r11, r3
    d262:	c4 04       	cpc	r12, r4
    d264:	d5 04       	cpc	r13, r5
    d266:	70 f0       	brcs	.+28     	; 0xd284 <__udivdi3+0x5d4>
    d268:	a2 16       	cp	r10, r18
    d26a:	b3 06       	cpc	r11, r19
    d26c:	c4 06       	cpc	r12, r20
    d26e:	d5 06       	cpc	r13, r21
    d270:	48 f4       	brcc	.+18     	; 0xd284 <__udivdi3+0x5d4>
    d272:	08 94       	sec
    d274:	61 08       	sbc	r6, r1
    d276:	71 08       	sbc	r7, r1
    d278:	81 08       	sbc	r8, r1
    d27a:	91 08       	sbc	r9, r1
    d27c:	a2 0c       	add	r10, r2
    d27e:	b3 1c       	adc	r11, r3
    d280:	c4 1c       	adc	r12, r4
    d282:	d5 1c       	adc	r13, r5
    d284:	8d a5       	ldd	r24, Y+45	; 0x2d
    d286:	9e a5       	ldd	r25, Y+46	; 0x2e
    d288:	af a5       	ldd	r26, Y+47	; 0x2f
    d28a:	b8 a9       	ldd	r27, Y+48	; 0x30
    d28c:	6f 96       	adiw	r28, 0x1f	; 31
    d28e:	0f ac       	ldd	r0, Y+63	; 0x3f
    d290:	6f 97       	sbiw	r28, 0x1f	; 31
    d292:	04 c0       	rjmp	.+8      	; 0xd29c <__udivdi3+0x5ec>
    d294:	88 0f       	add	r24, r24
    d296:	99 1f       	adc	r25, r25
    d298:	aa 1f       	adc	r26, r26
    d29a:	bb 1f       	adc	r27, r27
    d29c:	0a 94       	dec	r0
    d29e:	d2 f7       	brpl	.-12     	; 0xd294 <__udivdi3+0x5e4>
    d2a0:	8d a7       	std	Y+45, r24	; 0x2d
    d2a2:	9e a7       	std	Y+46, r25	; 0x2e
    d2a4:	af a7       	std	Y+47, r26	; 0x2f
    d2a6:	b8 ab       	std	Y+48, r27	; 0x30
    d2a8:	a2 1a       	sub	r10, r18
    d2aa:	b3 0a       	sbc	r11, r19
    d2ac:	c4 0a       	sbc	r12, r20
    d2ae:	d5 0a       	sbc	r13, r21
    d2b0:	25 96       	adiw	r28, 0x05	; 5
    d2b2:	ec ac       	ldd	r14, Y+60	; 0x3c
    d2b4:	fd ac       	ldd	r15, Y+61	; 0x3d
    d2b6:	0e ad       	ldd	r16, Y+62	; 0x3e
    d2b8:	1f ad       	ldd	r17, Y+63	; 0x3f
    d2ba:	25 97       	sbiw	r28, 0x05	; 5
    d2bc:	d7 01       	movw	r26, r14
    d2be:	99 27       	eor	r25, r25
    d2c0:	88 27       	eor	r24, r24
    d2c2:	68 2a       	or	r6, r24
    d2c4:	79 2a       	or	r7, r25
    d2c6:	8a 2a       	or	r8, r26
    d2c8:	9b 2a       	or	r9, r27
    d2ca:	82 01       	movw	r16, r4
    d2cc:	22 27       	eor	r18, r18
    d2ce:	33 27       	eor	r19, r19
    d2d0:	29 96       	adiw	r28, 0x09	; 9
    d2d2:	0c af       	std	Y+60, r16	; 0x3c
    d2d4:	1d af       	std	Y+61, r17	; 0x3d
    d2d6:	2e af       	std	Y+62, r18	; 0x3e
    d2d8:	3f af       	std	Y+63, r19	; 0x3f
    d2da:	29 97       	sbiw	r28, 0x09	; 9
    d2dc:	a2 01       	movw	r20, r4
    d2de:	91 01       	movw	r18, r2
    d2e0:	40 70       	andi	r20, 0x00	; 0
    d2e2:	50 70       	andi	r21, 0x00	; 0
    d2e4:	2d 96       	adiw	r28, 0x0d	; 13
    d2e6:	2c af       	std	Y+60, r18	; 0x3c
    d2e8:	3d af       	std	Y+61, r19	; 0x3d
    d2ea:	4e af       	std	Y+62, r20	; 0x3e
    d2ec:	5f af       	std	Y+63, r21	; 0x3f
    d2ee:	2d 97       	sbiw	r28, 0x0d	; 13
    d2f0:	c6 01       	movw	r24, r12
    d2f2:	b5 01       	movw	r22, r10
    d2f4:	29 96       	adiw	r28, 0x09	; 9
    d2f6:	2c ad       	ldd	r18, Y+60	; 0x3c
    d2f8:	3d ad       	ldd	r19, Y+61	; 0x3d
    d2fa:	4e ad       	ldd	r20, Y+62	; 0x3e
    d2fc:	5f ad       	ldd	r21, Y+63	; 0x3f
    d2fe:	29 97       	sbiw	r28, 0x09	; 9
    d300:	0e 94 0c 6d 	call	0xda18	; 0xda18 <__udivmodsi4>
    d304:	7b 01       	movw	r14, r22
    d306:	8c 01       	movw	r16, r24
    d308:	c6 01       	movw	r24, r12
    d30a:	b5 01       	movw	r22, r10
    d30c:	29 96       	adiw	r28, 0x09	; 9
    d30e:	2c ad       	ldd	r18, Y+60	; 0x3c
    d310:	3d ad       	ldd	r19, Y+61	; 0x3d
    d312:	4e ad       	ldd	r20, Y+62	; 0x3e
    d314:	5f ad       	ldd	r21, Y+63	; 0x3f
    d316:	29 97       	sbiw	r28, 0x09	; 9
    d318:	0e 94 0c 6d 	call	0xda18	; 0xda18 <__udivmodsi4>
    d31c:	c9 01       	movw	r24, r18
    d31e:	da 01       	movw	r26, r20
    d320:	61 96       	adiw	r28, 0x11	; 17
    d322:	8c af       	std	Y+60, r24	; 0x3c
    d324:	9d af       	std	Y+61, r25	; 0x3d
    d326:	ae af       	std	Y+62, r26	; 0x3e
    d328:	bf af       	std	Y+63, r27	; 0x3f
    d32a:	61 97       	sbiw	r28, 0x11	; 17
    d32c:	bc 01       	movw	r22, r24
    d32e:	cd 01       	movw	r24, r26
    d330:	2d 96       	adiw	r28, 0x0d	; 13
    d332:	2c ad       	ldd	r18, Y+60	; 0x3c
    d334:	3d ad       	ldd	r19, Y+61	; 0x3d
    d336:	4e ad       	ldd	r20, Y+62	; 0x3e
    d338:	5f ad       	ldd	r21, Y+63	; 0x3f
    d33a:	2d 97       	sbiw	r28, 0x0d	; 13
    d33c:	0e 94 cd 6c 	call	0xd99a	; 0xd99a <__mulsi3>
    d340:	9b 01       	movw	r18, r22
    d342:	ac 01       	movw	r20, r24
    d344:	87 01       	movw	r16, r14
    d346:	ff 24       	eor	r15, r15
    d348:	ee 24       	eor	r14, r14
    d34a:	ad a4       	ldd	r10, Y+45	; 0x2d
    d34c:	be a4       	ldd	r11, Y+46	; 0x2e
    d34e:	cf a4       	ldd	r12, Y+47	; 0x2f
    d350:	d8 a8       	ldd	r13, Y+48	; 0x30
    d352:	c6 01       	movw	r24, r12
    d354:	aa 27       	eor	r26, r26
    d356:	bb 27       	eor	r27, r27
    d358:	57 01       	movw	r10, r14
    d35a:	68 01       	movw	r12, r16
    d35c:	a8 2a       	or	r10, r24
    d35e:	b9 2a       	or	r11, r25
    d360:	ca 2a       	or	r12, r26
    d362:	db 2a       	or	r13, r27
    d364:	a2 16       	cp	r10, r18
    d366:	b3 06       	cpc	r11, r19
    d368:	c4 06       	cpc	r12, r20
    d36a:	d5 06       	cpc	r13, r21
    d36c:	60 f5       	brcc	.+88     	; 0xd3c6 <__udivdi3+0x716>
    d36e:	61 96       	adiw	r28, 0x11	; 17
    d370:	6c ad       	ldd	r22, Y+60	; 0x3c
    d372:	7d ad       	ldd	r23, Y+61	; 0x3d
    d374:	8e ad       	ldd	r24, Y+62	; 0x3e
    d376:	9f ad       	ldd	r25, Y+63	; 0x3f
    d378:	61 97       	sbiw	r28, 0x11	; 17
    d37a:	61 50       	subi	r22, 0x01	; 1
    d37c:	70 40       	sbci	r23, 0x00	; 0
    d37e:	80 40       	sbci	r24, 0x00	; 0
    d380:	90 40       	sbci	r25, 0x00	; 0
    d382:	61 96       	adiw	r28, 0x11	; 17
    d384:	6c af       	std	Y+60, r22	; 0x3c
    d386:	7d af       	std	Y+61, r23	; 0x3d
    d388:	8e af       	std	Y+62, r24	; 0x3e
    d38a:	9f af       	std	Y+63, r25	; 0x3f
    d38c:	61 97       	sbiw	r28, 0x11	; 17
    d38e:	a2 0c       	add	r10, r2
    d390:	b3 1c       	adc	r11, r3
    d392:	c4 1c       	adc	r12, r4
    d394:	d5 1c       	adc	r13, r5
    d396:	a2 14       	cp	r10, r2
    d398:	b3 04       	cpc	r11, r3
    d39a:	c4 04       	cpc	r12, r4
    d39c:	d5 04       	cpc	r13, r5
    d39e:	98 f0       	brcs	.+38     	; 0xd3c6 <__udivdi3+0x716>
    d3a0:	a2 16       	cp	r10, r18
    d3a2:	b3 06       	cpc	r11, r19
    d3a4:	c4 06       	cpc	r12, r20
    d3a6:	d5 06       	cpc	r13, r21
    d3a8:	70 f4       	brcc	.+28     	; 0xd3c6 <__udivdi3+0x716>
    d3aa:	61 50       	subi	r22, 0x01	; 1
    d3ac:	70 40       	sbci	r23, 0x00	; 0
    d3ae:	80 40       	sbci	r24, 0x00	; 0
    d3b0:	90 40       	sbci	r25, 0x00	; 0
    d3b2:	61 96       	adiw	r28, 0x11	; 17
    d3b4:	6c af       	std	Y+60, r22	; 0x3c
    d3b6:	7d af       	std	Y+61, r23	; 0x3d
    d3b8:	8e af       	std	Y+62, r24	; 0x3e
    d3ba:	9f af       	std	Y+63, r25	; 0x3f
    d3bc:	61 97       	sbiw	r28, 0x11	; 17
    d3be:	a2 0c       	add	r10, r2
    d3c0:	b3 1c       	adc	r11, r3
    d3c2:	c4 1c       	adc	r12, r4
    d3c4:	d5 1c       	adc	r13, r5
    d3c6:	a2 1a       	sub	r10, r18
    d3c8:	b3 0a       	sbc	r11, r19
    d3ca:	c4 0a       	sbc	r12, r20
    d3cc:	d5 0a       	sbc	r13, r21
    d3ce:	c6 01       	movw	r24, r12
    d3d0:	b5 01       	movw	r22, r10
    d3d2:	29 96       	adiw	r28, 0x09	; 9
    d3d4:	2c ad       	ldd	r18, Y+60	; 0x3c
    d3d6:	3d ad       	ldd	r19, Y+61	; 0x3d
    d3d8:	4e ad       	ldd	r20, Y+62	; 0x3e
    d3da:	5f ad       	ldd	r21, Y+63	; 0x3f
    d3dc:	29 97       	sbiw	r28, 0x09	; 9
    d3de:	0e 94 0c 6d 	call	0xda18	; 0xda18 <__udivmodsi4>
    d3e2:	7b 01       	movw	r14, r22
    d3e4:	8c 01       	movw	r16, r24
    d3e6:	c6 01       	movw	r24, r12
    d3e8:	b5 01       	movw	r22, r10
    d3ea:	29 96       	adiw	r28, 0x09	; 9
    d3ec:	2c ad       	ldd	r18, Y+60	; 0x3c
    d3ee:	3d ad       	ldd	r19, Y+61	; 0x3d
    d3f0:	4e ad       	ldd	r20, Y+62	; 0x3e
    d3f2:	5f ad       	ldd	r21, Y+63	; 0x3f
    d3f4:	29 97       	sbiw	r28, 0x09	; 9
    d3f6:	0e 94 0c 6d 	call	0xda18	; 0xda18 <__udivmodsi4>
    d3fa:	c9 01       	movw	r24, r18
    d3fc:	da 01       	movw	r26, r20
    d3fe:	5c 01       	movw	r10, r24
    d400:	6d 01       	movw	r12, r26
    d402:	c6 01       	movw	r24, r12
    d404:	b5 01       	movw	r22, r10
    d406:	2d 96       	adiw	r28, 0x0d	; 13
    d408:	2c ad       	ldd	r18, Y+60	; 0x3c
    d40a:	3d ad       	ldd	r19, Y+61	; 0x3d
    d40c:	4e ad       	ldd	r20, Y+62	; 0x3e
    d40e:	5f ad       	ldd	r21, Y+63	; 0x3f
    d410:	2d 97       	sbiw	r28, 0x0d	; 13
    d412:	0e 94 cd 6c 	call	0xd99a	; 0xd99a <__mulsi3>
    d416:	9b 01       	movw	r18, r22
    d418:	ac 01       	movw	r20, r24
    d41a:	87 01       	movw	r16, r14
    d41c:	ff 24       	eor	r15, r15
    d41e:	ee 24       	eor	r14, r14
    d420:	8d a5       	ldd	r24, Y+45	; 0x2d
    d422:	9e a5       	ldd	r25, Y+46	; 0x2e
    d424:	af a5       	ldd	r26, Y+47	; 0x2f
    d426:	b8 a9       	ldd	r27, Y+48	; 0x30
    d428:	a0 70       	andi	r26, 0x00	; 0
    d42a:	b0 70       	andi	r27, 0x00	; 0
    d42c:	e8 2a       	or	r14, r24
    d42e:	f9 2a       	or	r15, r25
    d430:	0a 2b       	or	r16, r26
    d432:	1b 2b       	or	r17, r27
    d434:	e2 16       	cp	r14, r18
    d436:	f3 06       	cpc	r15, r19
    d438:	04 07       	cpc	r16, r20
    d43a:	15 07       	cpc	r17, r21
    d43c:	c0 f4       	brcc	.+48     	; 0xd46e <__udivdi3+0x7be>
    d43e:	08 94       	sec
    d440:	a1 08       	sbc	r10, r1
    d442:	b1 08       	sbc	r11, r1
    d444:	c1 08       	sbc	r12, r1
    d446:	d1 08       	sbc	r13, r1
    d448:	e2 0c       	add	r14, r2
    d44a:	f3 1c       	adc	r15, r3
    d44c:	04 1d       	adc	r16, r4
    d44e:	15 1d       	adc	r17, r5
    d450:	e2 14       	cp	r14, r2
    d452:	f3 04       	cpc	r15, r3
    d454:	04 05       	cpc	r16, r4
    d456:	15 05       	cpc	r17, r5
    d458:	50 f0       	brcs	.+20     	; 0xd46e <__udivdi3+0x7be>
    d45a:	e2 16       	cp	r14, r18
    d45c:	f3 06       	cpc	r15, r19
    d45e:	04 07       	cpc	r16, r20
    d460:	15 07       	cpc	r17, r21
    d462:	28 f4       	brcc	.+10     	; 0xd46e <__udivdi3+0x7be>
    d464:	08 94       	sec
    d466:	a1 08       	sbc	r10, r1
    d468:	b1 08       	sbc	r11, r1
    d46a:	c1 08       	sbc	r12, r1
    d46c:	d1 08       	sbc	r13, r1
    d46e:	61 96       	adiw	r28, 0x11	; 17
    d470:	ec ac       	ldd	r14, Y+60	; 0x3c
    d472:	fd ac       	ldd	r15, Y+61	; 0x3d
    d474:	0e ad       	ldd	r16, Y+62	; 0x3e
    d476:	1f ad       	ldd	r17, Y+63	; 0x3f
    d478:	61 97       	sbiw	r28, 0x11	; 17
    d47a:	d7 01       	movw	r26, r14
    d47c:	99 27       	eor	r25, r25
    d47e:	88 27       	eor	r24, r24
    d480:	96 01       	movw	r18, r12
    d482:	85 01       	movw	r16, r10
    d484:	08 2b       	or	r16, r24
    d486:	19 2b       	or	r17, r25
    d488:	2a 2b       	or	r18, r26
    d48a:	3b 2b       	or	r19, r27
    d48c:	09 ab       	std	Y+49, r16	; 0x31
    d48e:	1a ab       	std	Y+50, r17	; 0x32
    d490:	2b ab       	std	Y+51, r18	; 0x33
    d492:	3c ab       	std	Y+52, r19	; 0x34
    d494:	62 c2       	rjmp	.+1220   	; 0xd95a <__udivdi3+0xcaa>
    d496:	6e 14       	cp	r6, r14
    d498:	7f 04       	cpc	r7, r15
    d49a:	80 06       	cpc	r8, r16
    d49c:	91 06       	cpc	r9, r17
    d49e:	08 f4       	brcc	.+2      	; 0xd4a2 <__udivdi3+0x7f2>
    d4a0:	51 c2       	rjmp	.+1186   	; 0xd944 <__udivdi3+0xc94>
    d4a2:	20 e0       	ldi	r18, 0x00	; 0
    d4a4:	e2 16       	cp	r14, r18
    d4a6:	20 e0       	ldi	r18, 0x00	; 0
    d4a8:	f2 06       	cpc	r15, r18
    d4aa:	21 e0       	ldi	r18, 0x01	; 1
    d4ac:	02 07       	cpc	r16, r18
    d4ae:	20 e0       	ldi	r18, 0x00	; 0
    d4b0:	12 07       	cpc	r17, r18
    d4b2:	88 f4       	brcc	.+34     	; 0xd4d6 <__udivdi3+0x826>
    d4b4:	3f ef       	ldi	r19, 0xFF	; 255
    d4b6:	e3 16       	cp	r14, r19
    d4b8:	f1 04       	cpc	r15, r1
    d4ba:	01 05       	cpc	r16, r1
    d4bc:	11 05       	cpc	r17, r1
    d4be:	31 f0       	breq	.+12     	; 0xd4cc <__udivdi3+0x81c>
    d4c0:	28 f0       	brcs	.+10     	; 0xd4cc <__udivdi3+0x81c>
    d4c2:	48 e0       	ldi	r20, 0x08	; 8
    d4c4:	50 e0       	ldi	r21, 0x00	; 0
    d4c6:	60 e0       	ldi	r22, 0x00	; 0
    d4c8:	70 e0       	ldi	r23, 0x00	; 0
    d4ca:	17 c0       	rjmp	.+46     	; 0xd4fa <__udivdi3+0x84a>
    d4cc:	40 e0       	ldi	r20, 0x00	; 0
    d4ce:	50 e0       	ldi	r21, 0x00	; 0
    d4d0:	60 e0       	ldi	r22, 0x00	; 0
    d4d2:	70 e0       	ldi	r23, 0x00	; 0
    d4d4:	12 c0       	rjmp	.+36     	; 0xd4fa <__udivdi3+0x84a>
    d4d6:	40 e0       	ldi	r20, 0x00	; 0
    d4d8:	e4 16       	cp	r14, r20
    d4da:	40 e0       	ldi	r20, 0x00	; 0
    d4dc:	f4 06       	cpc	r15, r20
    d4de:	40 e0       	ldi	r20, 0x00	; 0
    d4e0:	04 07       	cpc	r16, r20
    d4e2:	41 e0       	ldi	r20, 0x01	; 1
    d4e4:	14 07       	cpc	r17, r20
    d4e6:	28 f0       	brcs	.+10     	; 0xd4f2 <__udivdi3+0x842>
    d4e8:	48 e1       	ldi	r20, 0x18	; 24
    d4ea:	50 e0       	ldi	r21, 0x00	; 0
    d4ec:	60 e0       	ldi	r22, 0x00	; 0
    d4ee:	70 e0       	ldi	r23, 0x00	; 0
    d4f0:	04 c0       	rjmp	.+8      	; 0xd4fa <__udivdi3+0x84a>
    d4f2:	40 e1       	ldi	r20, 0x10	; 16
    d4f4:	50 e0       	ldi	r21, 0x00	; 0
    d4f6:	60 e0       	ldi	r22, 0x00	; 0
    d4f8:	70 e0       	ldi	r23, 0x00	; 0
    d4fa:	d8 01       	movw	r26, r16
    d4fc:	c7 01       	movw	r24, r14
    d4fe:	04 2e       	mov	r0, r20
    d500:	04 c0       	rjmp	.+8      	; 0xd50a <__udivdi3+0x85a>
    d502:	b6 95       	lsr	r27
    d504:	a7 95       	ror	r26
    d506:	97 95       	ror	r25
    d508:	87 95       	ror	r24
    d50a:	0a 94       	dec	r0
    d50c:	d2 f7       	brpl	.-12     	; 0xd502 <__udivdi3+0x852>
    d50e:	8a 5f       	subi	r24, 0xFA	; 250
    d510:	9d 4f       	sbci	r25, 0xFD	; 253
    d512:	dc 01       	movw	r26, r24
    d514:	2c 91       	ld	r18, X
    d516:	30 e2       	ldi	r19, 0x20	; 32
    d518:	a3 2e       	mov	r10, r19
    d51a:	b1 2c       	mov	r11, r1
    d51c:	c1 2c       	mov	r12, r1
    d51e:	d1 2c       	mov	r13, r1
    d520:	d6 01       	movw	r26, r12
    d522:	c5 01       	movw	r24, r10
    d524:	84 1b       	sub	r24, r20
    d526:	95 0b       	sbc	r25, r21
    d528:	a6 0b       	sbc	r26, r22
    d52a:	b7 0b       	sbc	r27, r23
    d52c:	82 1b       	sub	r24, r18
    d52e:	91 09       	sbc	r25, r1
    d530:	a1 09       	sbc	r26, r1
    d532:	b1 09       	sbc	r27, r1
    d534:	00 97       	sbiw	r24, 0x00	; 0
    d536:	a1 05       	cpc	r26, r1
    d538:	b1 05       	cpc	r27, r1
    d53a:	89 f4       	brne	.+34     	; 0xd55e <__udivdi3+0x8ae>
    d53c:	e6 14       	cp	r14, r6
    d53e:	f7 04       	cpc	r15, r7
    d540:	08 05       	cpc	r16, r8
    d542:	19 05       	cpc	r17, r9
    d544:	08 f4       	brcc	.+2      	; 0xd548 <__udivdi3+0x898>
    d546:	f2 c1       	rjmp	.+996    	; 0xd92c <__udivdi3+0xc7c>
    d548:	6d a4       	ldd	r6, Y+45	; 0x2d
    d54a:	7e a4       	ldd	r7, Y+46	; 0x2e
    d54c:	8f a4       	ldd	r8, Y+47	; 0x2f
    d54e:	98 a8       	ldd	r9, Y+48	; 0x30
    d550:	62 14       	cp	r6, r2
    d552:	73 04       	cpc	r7, r3
    d554:	84 04       	cpc	r8, r4
    d556:	95 04       	cpc	r9, r5
    d558:	08 f0       	brcs	.+2      	; 0xd55c <__udivdi3+0x8ac>
    d55a:	e8 c1       	rjmp	.+976    	; 0xd92c <__udivdi3+0xc7c>
    d55c:	f3 c1       	rjmp	.+998    	; 0xd944 <__udivdi3+0xc94>
    d55e:	6e 96       	adiw	r28, 0x1e	; 30
    d560:	8f af       	std	Y+63, r24	; 0x3f
    d562:	6e 97       	sbiw	r28, 0x1e	; 30
    d564:	08 2e       	mov	r0, r24
    d566:	04 c0       	rjmp	.+8      	; 0xd570 <__udivdi3+0x8c0>
    d568:	ee 0c       	add	r14, r14
    d56a:	ff 1c       	adc	r15, r15
    d56c:	00 1f       	adc	r16, r16
    d56e:	11 1f       	adc	r17, r17
    d570:	0a 94       	dec	r0
    d572:	d2 f7       	brpl	.-12     	; 0xd568 <__udivdi3+0x8b8>
    d574:	6a 2d       	mov	r22, r10
    d576:	68 1b       	sub	r22, r24
    d578:	d2 01       	movw	r26, r4
    d57a:	c1 01       	movw	r24, r2
    d57c:	06 2e       	mov	r0, r22
    d57e:	04 c0       	rjmp	.+8      	; 0xd588 <__udivdi3+0x8d8>
    d580:	b6 95       	lsr	r27
    d582:	a7 95       	ror	r26
    d584:	97 95       	ror	r25
    d586:	87 95       	ror	r24
    d588:	0a 94       	dec	r0
    d58a:	d2 f7       	brpl	.-12     	; 0xd580 <__udivdi3+0x8d0>
    d58c:	5c 01       	movw	r10, r24
    d58e:	6d 01       	movw	r12, r26
    d590:	ae 28       	or	r10, r14
    d592:	bf 28       	or	r11, r15
    d594:	c0 2a       	or	r12, r16
    d596:	d1 2a       	or	r13, r17
    d598:	ad a2       	std	Y+37, r10	; 0x25
    d59a:	be a2       	std	Y+38, r11	; 0x26
    d59c:	cf a2       	std	Y+39, r12	; 0x27
    d59e:	d8 a6       	std	Y+40, r13	; 0x28
    d5a0:	72 01       	movw	r14, r4
    d5a2:	61 01       	movw	r12, r2
    d5a4:	6e 96       	adiw	r28, 0x1e	; 30
    d5a6:	0f ac       	ldd	r0, Y+63	; 0x3f
    d5a8:	6e 97       	sbiw	r28, 0x1e	; 30
    d5aa:	04 c0       	rjmp	.+8      	; 0xd5b4 <__udivdi3+0x904>
    d5ac:	cc 0c       	add	r12, r12
    d5ae:	dd 1c       	adc	r13, r13
    d5b0:	ee 1c       	adc	r14, r14
    d5b2:	ff 1c       	adc	r15, r15
    d5b4:	0a 94       	dec	r0
    d5b6:	d2 f7       	brpl	.-12     	; 0xd5ac <__udivdi3+0x8fc>
    d5b8:	c9 a2       	std	Y+33, r12	; 0x21
    d5ba:	da a2       	std	Y+34, r13	; 0x22
    d5bc:	eb a2       	std	Y+35, r14	; 0x23
    d5be:	fc a2       	std	Y+36, r15	; 0x24
    d5c0:	64 01       	movw	r12, r8
    d5c2:	53 01       	movw	r10, r6
    d5c4:	06 2e       	mov	r0, r22
    d5c6:	04 c0       	rjmp	.+8      	; 0xd5d0 <__udivdi3+0x920>
    d5c8:	d6 94       	lsr	r13
    d5ca:	c7 94       	ror	r12
    d5cc:	b7 94       	ror	r11
    d5ce:	a7 94       	ror	r10
    d5d0:	0a 94       	dec	r0
    d5d2:	d2 f7       	brpl	.-12     	; 0xd5c8 <__udivdi3+0x918>
    d5d4:	d4 01       	movw	r26, r8
    d5d6:	c3 01       	movw	r24, r6
    d5d8:	6e 96       	adiw	r28, 0x1e	; 30
    d5da:	0f ac       	ldd	r0, Y+63	; 0x3f
    d5dc:	6e 97       	sbiw	r28, 0x1e	; 30
    d5de:	04 c0       	rjmp	.+8      	; 0xd5e8 <__udivdi3+0x938>
    d5e0:	88 0f       	add	r24, r24
    d5e2:	99 1f       	adc	r25, r25
    d5e4:	aa 1f       	adc	r26, r26
    d5e6:	bb 1f       	adc	r27, r27
    d5e8:	0a 94       	dec	r0
    d5ea:	d2 f7       	brpl	.-12     	; 0xd5e0 <__udivdi3+0x930>
    d5ec:	ed a4       	ldd	r14, Y+45	; 0x2d
    d5ee:	fe a4       	ldd	r15, Y+46	; 0x2e
    d5f0:	0f a5       	ldd	r16, Y+47	; 0x2f
    d5f2:	18 a9       	ldd	r17, Y+48	; 0x30
    d5f4:	04 c0       	rjmp	.+8      	; 0xd5fe <__udivdi3+0x94e>
    d5f6:	16 95       	lsr	r17
    d5f8:	07 95       	ror	r16
    d5fa:	f7 94       	ror	r15
    d5fc:	e7 94       	ror	r14
    d5fe:	6a 95       	dec	r22
    d600:	d2 f7       	brpl	.-12     	; 0xd5f6 <__udivdi3+0x946>
    d602:	37 01       	movw	r6, r14
    d604:	48 01       	movw	r8, r16
    d606:	68 2a       	or	r6, r24
    d608:	79 2a       	or	r7, r25
    d60a:	8a 2a       	or	r8, r26
    d60c:	9b 2a       	or	r9, r27
    d60e:	6d 8e       	std	Y+29, r6	; 0x1d
    d610:	7e 8e       	std	Y+30, r7	; 0x1e
    d612:	8f 8e       	std	Y+31, r8	; 0x1f
    d614:	98 a2       	std	Y+32, r9	; 0x20
    d616:	ed a0       	ldd	r14, Y+37	; 0x25
    d618:	fe a0       	ldd	r15, Y+38	; 0x26
    d61a:	0f a1       	ldd	r16, Y+39	; 0x27
    d61c:	18 a5       	ldd	r17, Y+40	; 0x28
    d61e:	38 01       	movw	r6, r16
    d620:	88 24       	eor	r8, r8
    d622:	99 24       	eor	r9, r9
    d624:	98 01       	movw	r18, r16
    d626:	87 01       	movw	r16, r14
    d628:	20 70       	andi	r18, 0x00	; 0
    d62a:	30 70       	andi	r19, 0x00	; 0
    d62c:	65 96       	adiw	r28, 0x15	; 21
    d62e:	0c af       	std	Y+60, r16	; 0x3c
    d630:	1d af       	std	Y+61, r17	; 0x3d
    d632:	2e af       	std	Y+62, r18	; 0x3e
    d634:	3f af       	std	Y+63, r19	; 0x3f
    d636:	65 97       	sbiw	r28, 0x15	; 21
    d638:	c6 01       	movw	r24, r12
    d63a:	b5 01       	movw	r22, r10
    d63c:	a4 01       	movw	r20, r8
    d63e:	93 01       	movw	r18, r6
    d640:	0e 94 0c 6d 	call	0xda18	; 0xda18 <__udivmodsi4>
    d644:	7b 01       	movw	r14, r22
    d646:	8c 01       	movw	r16, r24
    d648:	c6 01       	movw	r24, r12
    d64a:	b5 01       	movw	r22, r10
    d64c:	a4 01       	movw	r20, r8
    d64e:	93 01       	movw	r18, r6
    d650:	0e 94 0c 6d 	call	0xda18	; 0xda18 <__udivmodsi4>
    d654:	c9 01       	movw	r24, r18
    d656:	da 01       	movw	r26, r20
    d658:	1c 01       	movw	r2, r24
    d65a:	2d 01       	movw	r4, r26
    d65c:	c2 01       	movw	r24, r4
    d65e:	b1 01       	movw	r22, r2
    d660:	65 96       	adiw	r28, 0x15	; 21
    d662:	2c ad       	ldd	r18, Y+60	; 0x3c
    d664:	3d ad       	ldd	r19, Y+61	; 0x3d
    d666:	4e ad       	ldd	r20, Y+62	; 0x3e
    d668:	5f ad       	ldd	r21, Y+63	; 0x3f
    d66a:	65 97       	sbiw	r28, 0x15	; 21
    d66c:	0e 94 cd 6c 	call	0xd99a	; 0xd99a <__mulsi3>
    d670:	9b 01       	movw	r18, r22
    d672:	ac 01       	movw	r20, r24
    d674:	87 01       	movw	r16, r14
    d676:	ff 24       	eor	r15, r15
    d678:	ee 24       	eor	r14, r14
    d67a:	ad 8c       	ldd	r10, Y+29	; 0x1d
    d67c:	be 8c       	ldd	r11, Y+30	; 0x1e
    d67e:	cf 8c       	ldd	r12, Y+31	; 0x1f
    d680:	d8 a0       	ldd	r13, Y+32	; 0x20
    d682:	c6 01       	movw	r24, r12
    d684:	aa 27       	eor	r26, r26
    d686:	bb 27       	eor	r27, r27
    d688:	57 01       	movw	r10, r14
    d68a:	68 01       	movw	r12, r16
    d68c:	a8 2a       	or	r10, r24
    d68e:	b9 2a       	or	r11, r25
    d690:	ca 2a       	or	r12, r26
    d692:	db 2a       	or	r13, r27
    d694:	a2 16       	cp	r10, r18
    d696:	b3 06       	cpc	r11, r19
    d698:	c4 06       	cpc	r12, r20
    d69a:	d5 06       	cpc	r13, r21
    d69c:	00 f5       	brcc	.+64     	; 0xd6de <__udivdi3+0xa2e>
    d69e:	08 94       	sec
    d6a0:	21 08       	sbc	r2, r1
    d6a2:	31 08       	sbc	r3, r1
    d6a4:	41 08       	sbc	r4, r1
    d6a6:	51 08       	sbc	r5, r1
    d6a8:	ed a0       	ldd	r14, Y+37	; 0x25
    d6aa:	fe a0       	ldd	r15, Y+38	; 0x26
    d6ac:	0f a1       	ldd	r16, Y+39	; 0x27
    d6ae:	18 a5       	ldd	r17, Y+40	; 0x28
    d6b0:	ae 0c       	add	r10, r14
    d6b2:	bf 1c       	adc	r11, r15
    d6b4:	c0 1e       	adc	r12, r16
    d6b6:	d1 1e       	adc	r13, r17
    d6b8:	ae 14       	cp	r10, r14
    d6ba:	bf 04       	cpc	r11, r15
    d6bc:	c0 06       	cpc	r12, r16
    d6be:	d1 06       	cpc	r13, r17
    d6c0:	70 f0       	brcs	.+28     	; 0xd6de <__udivdi3+0xa2e>
    d6c2:	a2 16       	cp	r10, r18
    d6c4:	b3 06       	cpc	r11, r19
    d6c6:	c4 06       	cpc	r12, r20
    d6c8:	d5 06       	cpc	r13, r21
    d6ca:	48 f4       	brcc	.+18     	; 0xd6de <__udivdi3+0xa2e>
    d6cc:	08 94       	sec
    d6ce:	21 08       	sbc	r2, r1
    d6d0:	31 08       	sbc	r3, r1
    d6d2:	41 08       	sbc	r4, r1
    d6d4:	51 08       	sbc	r5, r1
    d6d6:	ae 0c       	add	r10, r14
    d6d8:	bf 1c       	adc	r11, r15
    d6da:	c0 1e       	adc	r12, r16
    d6dc:	d1 1e       	adc	r13, r17
    d6de:	a2 1a       	sub	r10, r18
    d6e0:	b3 0a       	sbc	r11, r19
    d6e2:	c4 0a       	sbc	r12, r20
    d6e4:	d5 0a       	sbc	r13, r21
    d6e6:	c6 01       	movw	r24, r12
    d6e8:	b5 01       	movw	r22, r10
    d6ea:	a4 01       	movw	r20, r8
    d6ec:	93 01       	movw	r18, r6
    d6ee:	0e 94 0c 6d 	call	0xda18	; 0xda18 <__udivmodsi4>
    d6f2:	7b 01       	movw	r14, r22
    d6f4:	8c 01       	movw	r16, r24
    d6f6:	c6 01       	movw	r24, r12
    d6f8:	b5 01       	movw	r22, r10
    d6fa:	a4 01       	movw	r20, r8
    d6fc:	93 01       	movw	r18, r6
    d6fe:	0e 94 0c 6d 	call	0xda18	; 0xda18 <__udivmodsi4>
    d702:	c9 01       	movw	r24, r18
    d704:	da 01       	movw	r26, r20
    d706:	3c 01       	movw	r6, r24
    d708:	4d 01       	movw	r8, r26
    d70a:	c4 01       	movw	r24, r8
    d70c:	b3 01       	movw	r22, r6
    d70e:	65 96       	adiw	r28, 0x15	; 21
    d710:	2c ad       	ldd	r18, Y+60	; 0x3c
    d712:	3d ad       	ldd	r19, Y+61	; 0x3d
    d714:	4e ad       	ldd	r20, Y+62	; 0x3e
    d716:	5f ad       	ldd	r21, Y+63	; 0x3f
    d718:	65 97       	sbiw	r28, 0x15	; 21
    d71a:	0e 94 cd 6c 	call	0xd99a	; 0xd99a <__mulsi3>
    d71e:	9b 01       	movw	r18, r22
    d720:	ac 01       	movw	r20, r24
    d722:	87 01       	movw	r16, r14
    d724:	ff 24       	eor	r15, r15
    d726:	ee 24       	eor	r14, r14
    d728:	8d 8d       	ldd	r24, Y+29	; 0x1d
    d72a:	9e 8d       	ldd	r25, Y+30	; 0x1e
    d72c:	af 8d       	ldd	r26, Y+31	; 0x1f
    d72e:	b8 a1       	ldd	r27, Y+32	; 0x20
    d730:	a0 70       	andi	r26, 0x00	; 0
    d732:	b0 70       	andi	r27, 0x00	; 0
    d734:	57 01       	movw	r10, r14
    d736:	68 01       	movw	r12, r16
    d738:	a8 2a       	or	r10, r24
    d73a:	b9 2a       	or	r11, r25
    d73c:	ca 2a       	or	r12, r26
    d73e:	db 2a       	or	r13, r27
    d740:	a2 16       	cp	r10, r18
    d742:	b3 06       	cpc	r11, r19
    d744:	c4 06       	cpc	r12, r20
    d746:	d5 06       	cpc	r13, r21
    d748:	00 f5       	brcc	.+64     	; 0xd78a <__udivdi3+0xada>
    d74a:	08 94       	sec
    d74c:	61 08       	sbc	r6, r1
    d74e:	71 08       	sbc	r7, r1
    d750:	81 08       	sbc	r8, r1
    d752:	91 08       	sbc	r9, r1
    d754:	6d a1       	ldd	r22, Y+37	; 0x25
    d756:	7e a1       	ldd	r23, Y+38	; 0x26
    d758:	8f a1       	ldd	r24, Y+39	; 0x27
    d75a:	98 a5       	ldd	r25, Y+40	; 0x28
    d75c:	a6 0e       	add	r10, r22
    d75e:	b7 1e       	adc	r11, r23
    d760:	c8 1e       	adc	r12, r24
    d762:	d9 1e       	adc	r13, r25
    d764:	a6 16       	cp	r10, r22
    d766:	b7 06       	cpc	r11, r23
    d768:	c8 06       	cpc	r12, r24
    d76a:	d9 06       	cpc	r13, r25
    d76c:	70 f0       	brcs	.+28     	; 0xd78a <__udivdi3+0xada>
    d76e:	a2 16       	cp	r10, r18
    d770:	b3 06       	cpc	r11, r19
    d772:	c4 06       	cpc	r12, r20
    d774:	d5 06       	cpc	r13, r21
    d776:	48 f4       	brcc	.+18     	; 0xd78a <__udivdi3+0xada>
    d778:	08 94       	sec
    d77a:	61 08       	sbc	r6, r1
    d77c:	71 08       	sbc	r7, r1
    d77e:	81 08       	sbc	r8, r1
    d780:	91 08       	sbc	r9, r1
    d782:	a6 0e       	add	r10, r22
    d784:	b7 1e       	adc	r11, r23
    d786:	c8 1e       	adc	r12, r24
    d788:	d9 1e       	adc	r13, r25
    d78a:	d6 01       	movw	r26, r12
    d78c:	c5 01       	movw	r24, r10
    d78e:	82 1b       	sub	r24, r18
    d790:	93 0b       	sbc	r25, r19
    d792:	a4 0b       	sbc	r26, r20
    d794:	b5 0b       	sbc	r27, r21
    d796:	89 8f       	std	Y+25, r24	; 0x19
    d798:	9a 8f       	std	Y+26, r25	; 0x1a
    d79a:	ab 8f       	std	Y+27, r26	; 0x1b
    d79c:	bc 8f       	std	Y+28, r27	; 0x1c
    d79e:	d1 01       	movw	r26, r2
    d7a0:	99 27       	eor	r25, r25
    d7a2:	88 27       	eor	r24, r24
    d7a4:	64 01       	movw	r12, r8
    d7a6:	53 01       	movw	r10, r6
    d7a8:	a8 2a       	or	r10, r24
    d7aa:	b9 2a       	or	r11, r25
    d7ac:	ca 2a       	or	r12, r26
    d7ae:	db 2a       	or	r13, r27
    d7b0:	a9 aa       	std	Y+49, r10	; 0x31
    d7b2:	ba aa       	std	Y+50, r11	; 0x32
    d7b4:	cb aa       	std	Y+51, r12	; 0x33
    d7b6:	dc aa       	std	Y+52, r13	; 0x34
    d7b8:	86 01       	movw	r16, r12
    d7ba:	75 01       	movw	r14, r10
    d7bc:	2f ef       	ldi	r18, 0xFF	; 255
    d7be:	3f ef       	ldi	r19, 0xFF	; 255
    d7c0:	40 e0       	ldi	r20, 0x00	; 0
    d7c2:	50 e0       	ldi	r21, 0x00	; 0
    d7c4:	e2 22       	and	r14, r18
    d7c6:	f3 22       	and	r15, r19
    d7c8:	04 23       	and	r16, r20
    d7ca:	15 23       	and	r17, r21
    d7cc:	a6 01       	movw	r20, r12
    d7ce:	66 27       	eor	r22, r22
    d7d0:	77 27       	eor	r23, r23
    d7d2:	6d 96       	adiw	r28, 0x1d	; 29
    d7d4:	4c af       	std	Y+60, r20	; 0x3c
    d7d6:	5d af       	std	Y+61, r21	; 0x3d
    d7d8:	6e af       	std	Y+62, r22	; 0x3e
    d7da:	7f af       	std	Y+63, r23	; 0x3f
    d7dc:	6d 97       	sbiw	r28, 0x1d	; 29
    d7de:	a9 a0       	ldd	r10, Y+33	; 0x21
    d7e0:	ba a0       	ldd	r11, Y+34	; 0x22
    d7e2:	cb a0       	ldd	r12, Y+35	; 0x23
    d7e4:	dc a0       	ldd	r13, Y+36	; 0x24
    d7e6:	6f ef       	ldi	r22, 0xFF	; 255
    d7e8:	7f ef       	ldi	r23, 0xFF	; 255
    d7ea:	80 e0       	ldi	r24, 0x00	; 0
    d7ec:	90 e0       	ldi	r25, 0x00	; 0
    d7ee:	a6 22       	and	r10, r22
    d7f0:	b7 22       	and	r11, r23
    d7f2:	c8 22       	and	r12, r24
    d7f4:	d9 22       	and	r13, r25
    d7f6:	89 a1       	ldd	r24, Y+33	; 0x21
    d7f8:	9a a1       	ldd	r25, Y+34	; 0x22
    d7fa:	ab a1       	ldd	r26, Y+35	; 0x23
    d7fc:	bc a1       	ldd	r27, Y+36	; 0x24
    d7fe:	1d 01       	movw	r2, r26
    d800:	44 24       	eor	r4, r4
    d802:	55 24       	eor	r5, r5
    d804:	c8 01       	movw	r24, r16
    d806:	b7 01       	movw	r22, r14
    d808:	a6 01       	movw	r20, r12
    d80a:	95 01       	movw	r18, r10
    d80c:	0e 94 cd 6c 	call	0xd99a	; 0xd99a <__mulsi3>
    d810:	69 96       	adiw	r28, 0x19	; 25
    d812:	6c af       	std	Y+60, r22	; 0x3c
    d814:	7d af       	std	Y+61, r23	; 0x3d
    d816:	8e af       	std	Y+62, r24	; 0x3e
    d818:	9f af       	std	Y+63, r25	; 0x3f
    d81a:	69 97       	sbiw	r28, 0x19	; 25
    d81c:	c8 01       	movw	r24, r16
    d81e:	b7 01       	movw	r22, r14
    d820:	a2 01       	movw	r20, r4
    d822:	91 01       	movw	r18, r2
    d824:	0e 94 cd 6c 	call	0xd99a	; 0xd99a <__mulsi3>
    d828:	3b 01       	movw	r6, r22
    d82a:	4c 01       	movw	r8, r24
    d82c:	6d 96       	adiw	r28, 0x1d	; 29
    d82e:	6c ad       	ldd	r22, Y+60	; 0x3c
    d830:	7d ad       	ldd	r23, Y+61	; 0x3d
    d832:	8e ad       	ldd	r24, Y+62	; 0x3e
    d834:	9f ad       	ldd	r25, Y+63	; 0x3f
    d836:	6d 97       	sbiw	r28, 0x1d	; 29
    d838:	a6 01       	movw	r20, r12
    d83a:	95 01       	movw	r18, r10
    d83c:	0e 94 cd 6c 	call	0xd99a	; 0xd99a <__mulsi3>
    d840:	7b 01       	movw	r14, r22
    d842:	8c 01       	movw	r16, r24
    d844:	6d 96       	adiw	r28, 0x1d	; 29
    d846:	6c ad       	ldd	r22, Y+60	; 0x3c
    d848:	7d ad       	ldd	r23, Y+61	; 0x3d
    d84a:	8e ad       	ldd	r24, Y+62	; 0x3e
    d84c:	9f ad       	ldd	r25, Y+63	; 0x3f
    d84e:	6d 97       	sbiw	r28, 0x1d	; 29
    d850:	a2 01       	movw	r20, r4
    d852:	91 01       	movw	r18, r2
    d854:	0e 94 cd 6c 	call	0xd99a	; 0xd99a <__mulsi3>
    d858:	5b 01       	movw	r10, r22
    d85a:	6c 01       	movw	r12, r24
    d85c:	a8 01       	movw	r20, r16
    d85e:	97 01       	movw	r18, r14
    d860:	26 0d       	add	r18, r6
    d862:	37 1d       	adc	r19, r7
    d864:	48 1d       	adc	r20, r8
    d866:	59 1d       	adc	r21, r9
    d868:	69 96       	adiw	r28, 0x19	; 25
    d86a:	6c ac       	ldd	r6, Y+60	; 0x3c
    d86c:	7d ac       	ldd	r7, Y+61	; 0x3d
    d86e:	8e ac       	ldd	r8, Y+62	; 0x3e
    d870:	9f ac       	ldd	r9, Y+63	; 0x3f
    d872:	69 97       	sbiw	r28, 0x19	; 25
    d874:	c4 01       	movw	r24, r8
    d876:	aa 27       	eor	r26, r26
    d878:	bb 27       	eor	r27, r27
    d87a:	28 0f       	add	r18, r24
    d87c:	39 1f       	adc	r19, r25
    d87e:	4a 1f       	adc	r20, r26
    d880:	5b 1f       	adc	r21, r27
    d882:	2e 15       	cp	r18, r14
    d884:	3f 05       	cpc	r19, r15
    d886:	40 07       	cpc	r20, r16
    d888:	51 07       	cpc	r21, r17
    d88a:	48 f4       	brcc	.+18     	; 0xd89e <__udivdi3+0xbee>
    d88c:	e1 2c       	mov	r14, r1
    d88e:	f1 2c       	mov	r15, r1
    d890:	61 e0       	ldi	r22, 0x01	; 1
    d892:	06 2f       	mov	r16, r22
    d894:	11 2d       	mov	r17, r1
    d896:	ae 0c       	add	r10, r14
    d898:	bf 1c       	adc	r11, r15
    d89a:	c0 1e       	adc	r12, r16
    d89c:	d1 1e       	adc	r13, r17
    d89e:	ca 01       	movw	r24, r20
    d8a0:	aa 27       	eor	r26, r26
    d8a2:	bb 27       	eor	r27, r27
    d8a4:	bc 01       	movw	r22, r24
    d8a6:	cd 01       	movw	r24, r26
    d8a8:	6a 0d       	add	r22, r10
    d8aa:	7b 1d       	adc	r23, r11
    d8ac:	8c 1d       	adc	r24, r12
    d8ae:	9d 1d       	adc	r25, r13
    d8b0:	69 8c       	ldd	r6, Y+25	; 0x19
    d8b2:	7a 8c       	ldd	r7, Y+26	; 0x1a
    d8b4:	8b 8c       	ldd	r8, Y+27	; 0x1b
    d8b6:	9c 8c       	ldd	r9, Y+28	; 0x1c
    d8b8:	66 16       	cp	r6, r22
    d8ba:	77 06       	cpc	r7, r23
    d8bc:	88 06       	cpc	r8, r24
    d8be:	99 06       	cpc	r9, r25
    d8c0:	40 f1       	brcs	.+80     	; 0xd912 <__udivdi3+0xc62>
    d8c2:	66 15       	cp	r22, r6
    d8c4:	77 05       	cpc	r23, r7
    d8c6:	88 05       	cpc	r24, r8
    d8c8:	99 05       	cpc	r25, r9
    d8ca:	09 f0       	breq	.+2      	; 0xd8ce <__udivdi3+0xc1e>
    d8cc:	43 c0       	rjmp	.+134    	; 0xd954 <__udivdi3+0xca4>
    d8ce:	d9 01       	movw	r26, r18
    d8d0:	99 27       	eor	r25, r25
    d8d2:	88 27       	eor	r24, r24
    d8d4:	69 96       	adiw	r28, 0x19	; 25
    d8d6:	2c ad       	ldd	r18, Y+60	; 0x3c
    d8d8:	3d ad       	ldd	r19, Y+61	; 0x3d
    d8da:	4e ad       	ldd	r20, Y+62	; 0x3e
    d8dc:	5f ad       	ldd	r21, Y+63	; 0x3f
    d8de:	69 97       	sbiw	r28, 0x19	; 25
    d8e0:	40 70       	andi	r20, 0x00	; 0
    d8e2:	50 70       	andi	r21, 0x00	; 0
    d8e4:	82 0f       	add	r24, r18
    d8e6:	93 1f       	adc	r25, r19
    d8e8:	a4 1f       	adc	r26, r20
    d8ea:	b5 1f       	adc	r27, r21
    d8ec:	2d a5       	ldd	r18, Y+45	; 0x2d
    d8ee:	3e a5       	ldd	r19, Y+46	; 0x2e
    d8f0:	4f a5       	ldd	r20, Y+47	; 0x2f
    d8f2:	58 a9       	ldd	r21, Y+48	; 0x30
    d8f4:	6e 96       	adiw	r28, 0x1e	; 30
    d8f6:	0f ac       	ldd	r0, Y+63	; 0x3f
    d8f8:	6e 97       	sbiw	r28, 0x1e	; 30
    d8fa:	04 c0       	rjmp	.+8      	; 0xd904 <__udivdi3+0xc54>
    d8fc:	22 0f       	add	r18, r18
    d8fe:	33 1f       	adc	r19, r19
    d900:	44 1f       	adc	r20, r20
    d902:	55 1f       	adc	r21, r21
    d904:	0a 94       	dec	r0
    d906:	d2 f7       	brpl	.-12     	; 0xd8fc <__udivdi3+0xc4c>
    d908:	28 17       	cp	r18, r24
    d90a:	39 07       	cpc	r19, r25
    d90c:	4a 07       	cpc	r20, r26
    d90e:	5b 07       	cpc	r21, r27
    d910:	08 f5       	brcc	.+66     	; 0xd954 <__udivdi3+0xca4>
    d912:	09 a9       	ldd	r16, Y+49	; 0x31
    d914:	1a a9       	ldd	r17, Y+50	; 0x32
    d916:	2b a9       	ldd	r18, Y+51	; 0x33
    d918:	3c a9       	ldd	r19, Y+52	; 0x34
    d91a:	01 50       	subi	r16, 0x01	; 1
    d91c:	10 40       	sbci	r17, 0x00	; 0
    d91e:	20 40       	sbci	r18, 0x00	; 0
    d920:	30 40       	sbci	r19, 0x00	; 0
    d922:	09 ab       	std	Y+49, r16	; 0x31
    d924:	1a ab       	std	Y+50, r17	; 0x32
    d926:	2b ab       	std	Y+51, r18	; 0x33
    d928:	3c ab       	std	Y+52, r19	; 0x34
    d92a:	14 c0       	rjmp	.+40     	; 0xd954 <__udivdi3+0xca4>
    d92c:	66 24       	eor	r6, r6
    d92e:	77 24       	eor	r7, r7
    d930:	43 01       	movw	r8, r6
    d932:	21 e0       	ldi	r18, 0x01	; 1
    d934:	30 e0       	ldi	r19, 0x00	; 0
    d936:	40 e0       	ldi	r20, 0x00	; 0
    d938:	50 e0       	ldi	r21, 0x00	; 0
    d93a:	29 ab       	std	Y+49, r18	; 0x31
    d93c:	3a ab       	std	Y+50, r19	; 0x32
    d93e:	4b ab       	std	Y+51, r20	; 0x33
    d940:	5c ab       	std	Y+52, r21	; 0x34
    d942:	0b c0       	rjmp	.+22     	; 0xd95a <__udivdi3+0xcaa>
    d944:	66 24       	eor	r6, r6
    d946:	77 24       	eor	r7, r7
    d948:	43 01       	movw	r8, r6
    d94a:	19 aa       	std	Y+49, r1	; 0x31
    d94c:	1a aa       	std	Y+50, r1	; 0x32
    d94e:	1b aa       	std	Y+51, r1	; 0x33
    d950:	1c aa       	std	Y+52, r1	; 0x34
    d952:	03 c0       	rjmp	.+6      	; 0xd95a <__udivdi3+0xcaa>
    d954:	66 24       	eor	r6, r6
    d956:	77 24       	eor	r7, r7
    d958:	43 01       	movw	r8, r6
    d95a:	fe 01       	movw	r30, r28
    d95c:	71 96       	adiw	r30, 0x11	; 17
    d95e:	88 e0       	ldi	r24, 0x08	; 8
    d960:	df 01       	movw	r26, r30
    d962:	1d 92       	st	X+, r1
    d964:	8a 95       	dec	r24
    d966:	e9 f7       	brne	.-6      	; 0xd962 <__udivdi3+0xcb2>
    d968:	a9 a8       	ldd	r10, Y+49	; 0x31
    d96a:	ba a8       	ldd	r11, Y+50	; 0x32
    d96c:	cb a8       	ldd	r12, Y+51	; 0x33
    d96e:	dc a8       	ldd	r13, Y+52	; 0x34
    d970:	a9 8a       	std	Y+17, r10	; 0x11
    d972:	ba 8a       	std	Y+18, r11	; 0x12
    d974:	cb 8a       	std	Y+19, r12	; 0x13
    d976:	dc 8a       	std	Y+20, r13	; 0x14
    d978:	6d 8a       	std	Y+21, r6	; 0x15
    d97a:	7e 8a       	std	Y+22, r7	; 0x16
    d97c:	8f 8a       	std	Y+23, r8	; 0x17
    d97e:	98 8e       	std	Y+24, r9	; 0x18
    d980:	29 a9       	ldd	r18, Y+49	; 0x31
    d982:	3a 89       	ldd	r19, Y+18	; 0x12
    d984:	4b 89       	ldd	r20, Y+19	; 0x13
    d986:	5c 89       	ldd	r21, Y+20	; 0x14
    d988:	66 2d       	mov	r22, r6
    d98a:	7e 89       	ldd	r23, Y+22	; 0x16
    d98c:	8f 89       	ldd	r24, Y+23	; 0x17
    d98e:	98 8d       	ldd	r25, Y+24	; 0x18
    d990:	c2 5a       	subi	r28, 0xA2	; 162
    d992:	df 4f       	sbci	r29, 0xFF	; 255
    d994:	e2 e1       	ldi	r30, 0x12	; 18
    d996:	0c 94 65 6d 	jmp	0xdaca	; 0xdaca <__epilogue_restores__>

0000d99a <__mulsi3>:
    d99a:	62 9f       	mul	r22, r18
    d99c:	d0 01       	movw	r26, r0
    d99e:	73 9f       	mul	r23, r19
    d9a0:	f0 01       	movw	r30, r0
    d9a2:	82 9f       	mul	r24, r18
    d9a4:	e0 0d       	add	r30, r0
    d9a6:	f1 1d       	adc	r31, r1
    d9a8:	64 9f       	mul	r22, r20
    d9aa:	e0 0d       	add	r30, r0
    d9ac:	f1 1d       	adc	r31, r1
    d9ae:	92 9f       	mul	r25, r18
    d9b0:	f0 0d       	add	r31, r0
    d9b2:	83 9f       	mul	r24, r19
    d9b4:	f0 0d       	add	r31, r0
    d9b6:	74 9f       	mul	r23, r20
    d9b8:	f0 0d       	add	r31, r0
    d9ba:	65 9f       	mul	r22, r21
    d9bc:	f0 0d       	add	r31, r0
    d9be:	99 27       	eor	r25, r25
    d9c0:	72 9f       	mul	r23, r18
    d9c2:	b0 0d       	add	r27, r0
    d9c4:	e1 1d       	adc	r30, r1
    d9c6:	f9 1f       	adc	r31, r25
    d9c8:	63 9f       	mul	r22, r19
    d9ca:	b0 0d       	add	r27, r0
    d9cc:	e1 1d       	adc	r30, r1
    d9ce:	f9 1f       	adc	r31, r25
    d9d0:	bd 01       	movw	r22, r26
    d9d2:	cf 01       	movw	r24, r30
    d9d4:	11 24       	eor	r1, r1
    d9d6:	08 95       	ret

0000d9d8 <__udivmodqi4>:
    d9d8:	99 1b       	sub	r25, r25
    d9da:	79 e0       	ldi	r23, 0x09	; 9
    d9dc:	04 c0       	rjmp	.+8      	; 0xd9e6 <__udivmodqi4_ep>

0000d9de <__udivmodqi4_loop>:
    d9de:	99 1f       	adc	r25, r25
    d9e0:	96 17       	cp	r25, r22
    d9e2:	08 f0       	brcs	.+2      	; 0xd9e6 <__udivmodqi4_ep>
    d9e4:	96 1b       	sub	r25, r22

0000d9e6 <__udivmodqi4_ep>:
    d9e6:	88 1f       	adc	r24, r24
    d9e8:	7a 95       	dec	r23
    d9ea:	c9 f7       	brne	.-14     	; 0xd9de <__udivmodqi4_loop>
    d9ec:	80 95       	com	r24
    d9ee:	08 95       	ret

0000d9f0 <__udivmodhi4>:
    d9f0:	aa 1b       	sub	r26, r26
    d9f2:	bb 1b       	sub	r27, r27
    d9f4:	51 e1       	ldi	r21, 0x11	; 17
    d9f6:	07 c0       	rjmp	.+14     	; 0xda06 <__udivmodhi4_ep>

0000d9f8 <__udivmodhi4_loop>:
    d9f8:	aa 1f       	adc	r26, r26
    d9fa:	bb 1f       	adc	r27, r27
    d9fc:	a6 17       	cp	r26, r22
    d9fe:	b7 07       	cpc	r27, r23
    da00:	10 f0       	brcs	.+4      	; 0xda06 <__udivmodhi4_ep>
    da02:	a6 1b       	sub	r26, r22
    da04:	b7 0b       	sbc	r27, r23

0000da06 <__udivmodhi4_ep>:
    da06:	88 1f       	adc	r24, r24
    da08:	99 1f       	adc	r25, r25
    da0a:	5a 95       	dec	r21
    da0c:	a9 f7       	brne	.-22     	; 0xd9f8 <__udivmodhi4_loop>
    da0e:	80 95       	com	r24
    da10:	90 95       	com	r25
    da12:	bc 01       	movw	r22, r24
    da14:	cd 01       	movw	r24, r26
    da16:	08 95       	ret

0000da18 <__udivmodsi4>:
    da18:	a1 e2       	ldi	r26, 0x21	; 33
    da1a:	1a 2e       	mov	r1, r26
    da1c:	aa 1b       	sub	r26, r26
    da1e:	bb 1b       	sub	r27, r27
    da20:	fd 01       	movw	r30, r26
    da22:	0d c0       	rjmp	.+26     	; 0xda3e <__udivmodsi4_ep>

0000da24 <__udivmodsi4_loop>:
    da24:	aa 1f       	adc	r26, r26
    da26:	bb 1f       	adc	r27, r27
    da28:	ee 1f       	adc	r30, r30
    da2a:	ff 1f       	adc	r31, r31
    da2c:	a2 17       	cp	r26, r18
    da2e:	b3 07       	cpc	r27, r19
    da30:	e4 07       	cpc	r30, r20
    da32:	f5 07       	cpc	r31, r21
    da34:	20 f0       	brcs	.+8      	; 0xda3e <__udivmodsi4_ep>
    da36:	a2 1b       	sub	r26, r18
    da38:	b3 0b       	sbc	r27, r19
    da3a:	e4 0b       	sbc	r30, r20
    da3c:	f5 0b       	sbc	r31, r21

0000da3e <__udivmodsi4_ep>:
    da3e:	66 1f       	adc	r22, r22
    da40:	77 1f       	adc	r23, r23
    da42:	88 1f       	adc	r24, r24
    da44:	99 1f       	adc	r25, r25
    da46:	1a 94       	dec	r1
    da48:	69 f7       	brne	.-38     	; 0xda24 <__udivmodsi4_loop>
    da4a:	60 95       	com	r22
    da4c:	70 95       	com	r23
    da4e:	80 95       	com	r24
    da50:	90 95       	com	r25
    da52:	9b 01       	movw	r18, r22
    da54:	ac 01       	movw	r20, r24
    da56:	bd 01       	movw	r22, r26
    da58:	cf 01       	movw	r24, r30
    da5a:	08 95       	ret

0000da5c <__divmodsi4>:
    da5c:	97 fb       	bst	r25, 7
    da5e:	09 2e       	mov	r0, r25
    da60:	05 26       	eor	r0, r21
    da62:	0e d0       	rcall	.+28     	; 0xda80 <__divmodsi4_neg1>
    da64:	57 fd       	sbrc	r21, 7
    da66:	04 d0       	rcall	.+8      	; 0xda70 <__divmodsi4_neg2>
    da68:	d7 df       	rcall	.-82     	; 0xda18 <__udivmodsi4>
    da6a:	0a d0       	rcall	.+20     	; 0xda80 <__divmodsi4_neg1>
    da6c:	00 1c       	adc	r0, r0
    da6e:	38 f4       	brcc	.+14     	; 0xda7e <__divmodsi4_exit>

0000da70 <__divmodsi4_neg2>:
    da70:	50 95       	com	r21
    da72:	40 95       	com	r20
    da74:	30 95       	com	r19
    da76:	21 95       	neg	r18
    da78:	3f 4f       	sbci	r19, 0xFF	; 255
    da7a:	4f 4f       	sbci	r20, 0xFF	; 255
    da7c:	5f 4f       	sbci	r21, 0xFF	; 255

0000da7e <__divmodsi4_exit>:
    da7e:	08 95       	ret

0000da80 <__divmodsi4_neg1>:
    da80:	f6 f7       	brtc	.-4      	; 0xda7e <__divmodsi4_exit>
    da82:	90 95       	com	r25
    da84:	80 95       	com	r24
    da86:	70 95       	com	r23
    da88:	61 95       	neg	r22
    da8a:	7f 4f       	sbci	r23, 0xFF	; 255
    da8c:	8f 4f       	sbci	r24, 0xFF	; 255
    da8e:	9f 4f       	sbci	r25, 0xFF	; 255
    da90:	08 95       	ret

0000da92 <__prologue_saves__>:
    da92:	2f 92       	push	r2
    da94:	3f 92       	push	r3
    da96:	4f 92       	push	r4
    da98:	5f 92       	push	r5
    da9a:	6f 92       	push	r6
    da9c:	7f 92       	push	r7
    da9e:	8f 92       	push	r8
    daa0:	9f 92       	push	r9
    daa2:	af 92       	push	r10
    daa4:	bf 92       	push	r11
    daa6:	cf 92       	push	r12
    daa8:	df 92       	push	r13
    daaa:	ef 92       	push	r14
    daac:	ff 92       	push	r15
    daae:	0f 93       	push	r16
    dab0:	1f 93       	push	r17
    dab2:	cf 93       	push	r28
    dab4:	df 93       	push	r29
    dab6:	cd b7       	in	r28, 0x3d	; 61
    dab8:	de b7       	in	r29, 0x3e	; 62
    daba:	ca 1b       	sub	r28, r26
    dabc:	db 0b       	sbc	r29, r27
    dabe:	0f b6       	in	r0, 0x3f	; 63
    dac0:	f8 94       	cli
    dac2:	de bf       	out	0x3e, r29	; 62
    dac4:	0f be       	out	0x3f, r0	; 63
    dac6:	cd bf       	out	0x3d, r28	; 61
    dac8:	09 94       	ijmp

0000daca <__epilogue_restores__>:
    daca:	2a 88       	ldd	r2, Y+18	; 0x12
    dacc:	39 88       	ldd	r3, Y+17	; 0x11
    dace:	48 88       	ldd	r4, Y+16	; 0x10
    dad0:	5f 84       	ldd	r5, Y+15	; 0x0f
    dad2:	6e 84       	ldd	r6, Y+14	; 0x0e
    dad4:	7d 84       	ldd	r7, Y+13	; 0x0d
    dad6:	8c 84       	ldd	r8, Y+12	; 0x0c
    dad8:	9b 84       	ldd	r9, Y+11	; 0x0b
    dada:	aa 84       	ldd	r10, Y+10	; 0x0a
    dadc:	b9 84       	ldd	r11, Y+9	; 0x09
    dade:	c8 84       	ldd	r12, Y+8	; 0x08
    dae0:	df 80       	ldd	r13, Y+7	; 0x07
    dae2:	ee 80       	ldd	r14, Y+6	; 0x06
    dae4:	fd 80       	ldd	r15, Y+5	; 0x05
    dae6:	0c 81       	ldd	r16, Y+4	; 0x04
    dae8:	1b 81       	ldd	r17, Y+3	; 0x03
    daea:	aa 81       	ldd	r26, Y+2	; 0x02
    daec:	b9 81       	ldd	r27, Y+1	; 0x01
    daee:	ce 0f       	add	r28, r30
    daf0:	d1 1d       	adc	r29, r1
    daf2:	0f b6       	in	r0, 0x3f	; 63
    daf4:	f8 94       	cli
    daf6:	de bf       	out	0x3e, r29	; 62
    daf8:	0f be       	out	0x3f, r0	; 63
    dafa:	cd bf       	out	0x3d, r28	; 61
    dafc:	ed 01       	movw	r28, r26
    dafe:	08 95       	ret

0000db00 <isalnum>:
    db00:	91 11       	cpse	r25, r1
    db02:	06 c0       	rjmp	.+12     	; 0xdb10 <__ctype_isfalse>
    db04:	80 53       	subi	r24, 0x30	; 48
    db06:	8a 50       	subi	r24, 0x0A	; 10
    db08:	10 f0       	brcs	.+4      	; 0xdb0e <isalnum+0xe>
    db0a:	86 5c       	subi	r24, 0xC6	; 198
    db0c:	06 c0       	rjmp	.+12     	; 0xdb1a <isalpha>
    db0e:	08 95       	ret

0000db10 <__ctype_isfalse>:
    db10:	99 27       	eor	r25, r25
    db12:	88 27       	eor	r24, r24

0000db14 <__ctype_istrue>:
    db14:	08 95       	ret

0000db16 <isupper>:
    db16:	85 fd       	sbrc	r24, 5
    db18:	fb cf       	rjmp	.-10     	; 0xdb10 <__ctype_isfalse>

0000db1a <isalpha>:
    db1a:	80 62       	ori	r24, 0x20	; 32

0000db1c <islower>:
    db1c:	91 11       	cpse	r25, r1
    db1e:	f8 cf       	rjmp	.-16     	; 0xdb10 <__ctype_isfalse>
    db20:	81 56       	subi	r24, 0x61	; 97
    db22:	8a 51       	subi	r24, 0x1A	; 26
    db24:	e0 f7       	brcc	.-8      	; 0xdb1e <islower+0x2>
    db26:	08 95       	ret

0000db28 <toupper>:
    db28:	91 11       	cpse	r25, r1
    db2a:	08 95       	ret
    db2c:	81 56       	subi	r24, 0x61	; 97
    db2e:	8a 51       	subi	r24, 0x1A	; 26
    db30:	08 f4       	brcc	.+2      	; 0xdb34 <toupper+0xc>
    db32:	80 52       	subi	r24, 0x20	; 32
    db34:	85 58       	subi	r24, 0x85	; 133
    db36:	08 95       	ret

0000db38 <memcpy_P>:
    db38:	fb 01       	movw	r30, r22
    db3a:	dc 01       	movw	r26, r24
    db3c:	02 c0       	rjmp	.+4      	; 0xdb42 <memcpy_P+0xa>
    db3e:	05 90       	lpm	r0, Z+
    db40:	0d 92       	st	X+, r0
    db42:	41 50       	subi	r20, 0x01	; 1
    db44:	50 40       	sbci	r21, 0x00	; 0
    db46:	d8 f7       	brcc	.-10     	; 0xdb3e <memcpy_P+0x6>
    db48:	08 95       	ret

0000db4a <strcat_P>:
    db4a:	fb 01       	movw	r30, r22
    db4c:	dc 01       	movw	r26, r24
    db4e:	0d 90       	ld	r0, X+
    db50:	00 20       	and	r0, r0
    db52:	e9 f7       	brne	.-6      	; 0xdb4e <strcat_P+0x4>
    db54:	11 97       	sbiw	r26, 0x01	; 1
    db56:	05 90       	lpm	r0, Z+
    db58:	0d 92       	st	X+, r0
    db5a:	00 20       	and	r0, r0
    db5c:	e1 f7       	brne	.-8      	; 0xdb56 <strcat_P+0xc>
    db5e:	08 95       	ret

0000db60 <strcmp_P>:
    db60:	fb 01       	movw	r30, r22
    db62:	dc 01       	movw	r26, r24
    db64:	8d 91       	ld	r24, X+
    db66:	05 90       	lpm	r0, Z+
    db68:	80 19       	sub	r24, r0
    db6a:	01 10       	cpse	r0, r1
    db6c:	d9 f3       	breq	.-10     	; 0xdb64 <strcmp_P+0x4>
    db6e:	99 0b       	sbc	r25, r25
    db70:	08 95       	ret

0000db72 <strcpy_P>:
    db72:	fb 01       	movw	r30, r22
    db74:	dc 01       	movw	r26, r24
    db76:	05 90       	lpm	r0, Z+
    db78:	0d 92       	st	X+, r0
    db7a:	00 20       	and	r0, r0
    db7c:	e1 f7       	brne	.-8      	; 0xdb76 <strcpy_P+0x4>
    db7e:	08 95       	ret

0000db80 <strlen_P>:
    db80:	fc 01       	movw	r30, r24
    db82:	05 90       	lpm	r0, Z+
    db84:	00 20       	and	r0, r0
    db86:	e9 f7       	brne	.-6      	; 0xdb82 <strlen_P+0x2>
    db88:	80 95       	com	r24
    db8a:	90 95       	com	r25
    db8c:	8e 0f       	add	r24, r30
    db8e:	9f 1f       	adc	r25, r31
    db90:	08 95       	ret

0000db92 <strncmp_P>:
    db92:	fb 01       	movw	r30, r22
    db94:	dc 01       	movw	r26, r24
    db96:	41 50       	subi	r20, 0x01	; 1
    db98:	50 40       	sbci	r21, 0x00	; 0
    db9a:	30 f0       	brcs	.+12     	; 0xdba8 <strncmp_P+0x16>
    db9c:	8d 91       	ld	r24, X+
    db9e:	05 90       	lpm	r0, Z+
    dba0:	80 19       	sub	r24, r0
    dba2:	19 f4       	brne	.+6      	; 0xdbaa <strncmp_P+0x18>
    dba4:	00 20       	and	r0, r0
    dba6:	b9 f7       	brne	.-18     	; 0xdb96 <strncmp_P+0x4>
    dba8:	88 1b       	sub	r24, r24
    dbaa:	99 0b       	sbc	r25, r25
    dbac:	08 95       	ret

0000dbae <strstr_P>:
    dbae:	fb 01       	movw	r30, r22
    dbb0:	55 91       	lpm	r21, Z+
    dbb2:	55 23       	and	r21, r21
    dbb4:	a9 f0       	breq	.+42     	; 0xdbe0 <strstr_P+0x32>
    dbb6:	bf 01       	movw	r22, r30
    dbb8:	dc 01       	movw	r26, r24
    dbba:	4d 91       	ld	r20, X+
    dbbc:	45 17       	cp	r20, r21
    dbbe:	41 11       	cpse	r20, r1
    dbc0:	e1 f7       	brne	.-8      	; 0xdbba <strstr_P+0xc>
    dbc2:	59 f4       	brne	.+22     	; 0xdbda <strstr_P+0x2c>
    dbc4:	cd 01       	movw	r24, r26
    dbc6:	05 90       	lpm	r0, Z+
    dbc8:	00 20       	and	r0, r0
    dbca:	49 f0       	breq	.+18     	; 0xdbde <strstr_P+0x30>
    dbcc:	4d 91       	ld	r20, X+
    dbce:	40 15       	cp	r20, r0
    dbd0:	41 11       	cpse	r20, r1
    dbd2:	c9 f3       	breq	.-14     	; 0xdbc6 <strstr_P+0x18>
    dbd4:	fb 01       	movw	r30, r22
    dbd6:	41 11       	cpse	r20, r1
    dbd8:	ef cf       	rjmp	.-34     	; 0xdbb8 <strstr_P+0xa>
    dbda:	81 e0       	ldi	r24, 0x01	; 1
    dbdc:	90 e0       	ldi	r25, 0x00	; 0
    dbde:	01 97       	sbiw	r24, 0x01	; 1
    dbe0:	08 95       	ret

0000dbe2 <memcpy>:
    dbe2:	fb 01       	movw	r30, r22
    dbe4:	dc 01       	movw	r26, r24
    dbe6:	02 c0       	rjmp	.+4      	; 0xdbec <memcpy+0xa>
    dbe8:	01 90       	ld	r0, Z+
    dbea:	0d 92       	st	X+, r0
    dbec:	41 50       	subi	r20, 0x01	; 1
    dbee:	50 40       	sbci	r21, 0x00	; 0
    dbf0:	d8 f7       	brcc	.-10     	; 0xdbe8 <memcpy+0x6>
    dbf2:	08 95       	ret

0000dbf4 <memmove>:
    dbf4:	68 17       	cp	r22, r24
    dbf6:	79 07       	cpc	r23, r25
    dbf8:	68 f4       	brcc	.+26     	; 0xdc14 <memmove+0x20>
    dbfa:	fb 01       	movw	r30, r22
    dbfc:	dc 01       	movw	r26, r24
    dbfe:	e4 0f       	add	r30, r20
    dc00:	f5 1f       	adc	r31, r21
    dc02:	a4 0f       	add	r26, r20
    dc04:	b5 1f       	adc	r27, r21
    dc06:	02 c0       	rjmp	.+4      	; 0xdc0c <memmove+0x18>
    dc08:	02 90       	ld	r0, -Z
    dc0a:	0e 92       	st	-X, r0
    dc0c:	41 50       	subi	r20, 0x01	; 1
    dc0e:	50 40       	sbci	r21, 0x00	; 0
    dc10:	d8 f7       	brcc	.-10     	; 0xdc08 <memmove+0x14>
    dc12:	08 95       	ret
    dc14:	0c 94 f1 6d 	jmp	0xdbe2	; 0xdbe2 <memcpy>

0000dc18 <memset>:
    dc18:	dc 01       	movw	r26, r24
    dc1a:	01 c0       	rjmp	.+2      	; 0xdc1e <memset+0x6>
    dc1c:	6d 93       	st	X+, r22
    dc1e:	41 50       	subi	r20, 0x01	; 1
    dc20:	50 40       	sbci	r21, 0x00	; 0
    dc22:	e0 f7       	brcc	.-8      	; 0xdc1c <memset+0x4>
    dc24:	08 95       	ret

0000dc26 <strcat>:
    dc26:	fb 01       	movw	r30, r22
    dc28:	dc 01       	movw	r26, r24
    dc2a:	0d 90       	ld	r0, X+
    dc2c:	00 20       	and	r0, r0
    dc2e:	e9 f7       	brne	.-6      	; 0xdc2a <strcat+0x4>
    dc30:	11 97       	sbiw	r26, 0x01	; 1
    dc32:	01 90       	ld	r0, Z+
    dc34:	0d 92       	st	X+, r0
    dc36:	00 20       	and	r0, r0
    dc38:	e1 f7       	brne	.-8      	; 0xdc32 <strcat+0xc>
    dc3a:	08 95       	ret

0000dc3c <strchr>:
    dc3c:	fc 01       	movw	r30, r24
    dc3e:	81 91       	ld	r24, Z+
    dc40:	86 17       	cp	r24, r22
    dc42:	21 f0       	breq	.+8      	; 0xdc4c <strchr+0x10>
    dc44:	88 23       	and	r24, r24
    dc46:	d9 f7       	brne	.-10     	; 0xdc3e <strchr+0x2>
    dc48:	99 27       	eor	r25, r25
    dc4a:	08 95       	ret
    dc4c:	31 97       	sbiw	r30, 0x01	; 1
    dc4e:	cf 01       	movw	r24, r30
    dc50:	08 95       	ret

0000dc52 <strcmp>:
    dc52:	fb 01       	movw	r30, r22
    dc54:	dc 01       	movw	r26, r24
    dc56:	8d 91       	ld	r24, X+
    dc58:	01 90       	ld	r0, Z+
    dc5a:	80 19       	sub	r24, r0
    dc5c:	01 10       	cpse	r0, r1
    dc5e:	d9 f3       	breq	.-10     	; 0xdc56 <strcmp+0x4>
    dc60:	99 0b       	sbc	r25, r25
    dc62:	08 95       	ret

0000dc64 <strcpy>:
    dc64:	fb 01       	movw	r30, r22
    dc66:	dc 01       	movw	r26, r24
    dc68:	01 90       	ld	r0, Z+
    dc6a:	0d 92       	st	X+, r0
    dc6c:	00 20       	and	r0, r0
    dc6e:	e1 f7       	brne	.-8      	; 0xdc68 <strcpy+0x4>
    dc70:	08 95       	ret

0000dc72 <strncmp>:
    dc72:	fb 01       	movw	r30, r22
    dc74:	dc 01       	movw	r26, r24
    dc76:	41 50       	subi	r20, 0x01	; 1
    dc78:	50 40       	sbci	r21, 0x00	; 0
    dc7a:	30 f0       	brcs	.+12     	; 0xdc88 <strncmp+0x16>
    dc7c:	8d 91       	ld	r24, X+
    dc7e:	01 90       	ld	r0, Z+
    dc80:	80 19       	sub	r24, r0
    dc82:	19 f4       	brne	.+6      	; 0xdc8a <strncmp+0x18>
    dc84:	00 20       	and	r0, r0
    dc86:	b9 f7       	brne	.-18     	; 0xdc76 <strncmp+0x4>
    dc88:	88 1b       	sub	r24, r24
    dc8a:	99 0b       	sbc	r25, r25
    dc8c:	08 95       	ret

0000dc8e <strncpy>:
    dc8e:	fb 01       	movw	r30, r22
    dc90:	dc 01       	movw	r26, r24
    dc92:	41 50       	subi	r20, 0x01	; 1
    dc94:	50 40       	sbci	r21, 0x00	; 0
    dc96:	48 f0       	brcs	.+18     	; 0xdcaa <strncpy+0x1c>
    dc98:	01 90       	ld	r0, Z+
    dc9a:	0d 92       	st	X+, r0
    dc9c:	00 20       	and	r0, r0
    dc9e:	c9 f7       	brne	.-14     	; 0xdc92 <strncpy+0x4>
    dca0:	01 c0       	rjmp	.+2      	; 0xdca4 <strncpy+0x16>
    dca2:	1d 92       	st	X+, r1
    dca4:	41 50       	subi	r20, 0x01	; 1
    dca6:	50 40       	sbci	r21, 0x00	; 0
    dca8:	e0 f7       	brcc	.-8      	; 0xdca2 <strncpy+0x14>
    dcaa:	08 95       	ret

0000dcac <__eerd_block_m644a>:
    dcac:	dc 01       	movw	r26, r24
    dcae:	cb 01       	movw	r24, r22

0000dcb0 <__eerd_blraw_m644a>:
    dcb0:	fc 01       	movw	r30, r24
    dcb2:	f9 99       	sbic	0x1f, 1	; 31
    dcb4:	fe cf       	rjmp	.-4      	; 0xdcb2 <__eerd_blraw_m644a+0x2>
    dcb6:	06 c0       	rjmp	.+12     	; 0xdcc4 <__eerd_blraw_m644a+0x14>
    dcb8:	f2 bd       	out	0x22, r31	; 34
    dcba:	e1 bd       	out	0x21, r30	; 33
    dcbc:	f8 9a       	sbi	0x1f, 0	; 31
    dcbe:	31 96       	adiw	r30, 0x01	; 1
    dcc0:	00 b4       	in	r0, 0x20	; 32
    dcc2:	0d 92       	st	X+, r0
    dcc4:	41 50       	subi	r20, 0x01	; 1
    dcc6:	50 40       	sbci	r21, 0x00	; 0
    dcc8:	b8 f7       	brcc	.-18     	; 0xdcb8 <__eerd_blraw_m644a+0x8>
    dcca:	08 95       	ret

0000dccc <__eerd_dword_m644a>:
    dccc:	a6 e1       	ldi	r26, 0x16	; 22
    dcce:	b0 e0       	ldi	r27, 0x00	; 0
    dcd0:	44 e0       	ldi	r20, 0x04	; 4
    dcd2:	50 e0       	ldi	r21, 0x00	; 0
    dcd4:	0c 94 58 6e 	jmp	0xdcb0	; 0xdcb0 <__eerd_blraw_m644a>

0000dcd8 <__eerd_word_m644a>:
    dcd8:	a8 e1       	ldi	r26, 0x18	; 24
    dcda:	b0 e0       	ldi	r27, 0x00	; 0
    dcdc:	42 e0       	ldi	r20, 0x02	; 2
    dcde:	50 e0       	ldi	r21, 0x00	; 0
    dce0:	0c 94 58 6e 	jmp	0xdcb0	; 0xdcb0 <__eerd_blraw_m644a>

0000dce4 <__eeupd_block_m644a>:
    dce4:	dc 01       	movw	r26, r24
    dce6:	a4 0f       	add	r26, r20
    dce8:	b5 1f       	adc	r27, r21
    dcea:	41 50       	subi	r20, 0x01	; 1
    dcec:	50 40       	sbci	r21, 0x00	; 0
    dcee:	48 f0       	brcs	.+18     	; 0xdd02 <__eeupd_block_m644a+0x1e>
    dcf0:	cb 01       	movw	r24, r22
    dcf2:	84 0f       	add	r24, r20
    dcf4:	95 1f       	adc	r25, r21
    dcf6:	2e 91       	ld	r18, -X
    dcf8:	0e 94 83 6e 	call	0xdd06	; 0xdd06 <__eeupd_r18_m644a>
    dcfc:	41 50       	subi	r20, 0x01	; 1
    dcfe:	50 40       	sbci	r21, 0x00	; 0
    dd00:	d0 f7       	brcc	.-12     	; 0xdcf6 <__eeupd_block_m644a+0x12>
    dd02:	08 95       	ret

0000dd04 <__eeupd_byte_m644a>:
    dd04:	26 2f       	mov	r18, r22

0000dd06 <__eeupd_r18_m644a>:
    dd06:	f9 99       	sbic	0x1f, 1	; 31
    dd08:	fe cf       	rjmp	.-4      	; 0xdd06 <__eeupd_r18_m644a>
    dd0a:	92 bd       	out	0x22, r25	; 34
    dd0c:	81 bd       	out	0x21, r24	; 33
    dd0e:	f8 9a       	sbi	0x1f, 0	; 31
    dd10:	01 97       	sbiw	r24, 0x01	; 1
    dd12:	00 b4       	in	r0, 0x20	; 32
    dd14:	02 16       	cp	r0, r18
    dd16:	39 f0       	breq	.+14     	; 0xdd26 <__eeupd_r18_m644a+0x20>
    dd18:	1f ba       	out	0x1f, r1	; 31
    dd1a:	20 bd       	out	0x20, r18	; 32
    dd1c:	0f b6       	in	r0, 0x3f	; 63
    dd1e:	f8 94       	cli
    dd20:	fa 9a       	sbi	0x1f, 2	; 31
    dd22:	f9 9a       	sbi	0x1f, 1	; 31
    dd24:	0f be       	out	0x3f, r0	; 63
    dd26:	08 95       	ret

0000dd28 <__eeupd_dword_m644a>:
    dd28:	03 96       	adiw	r24, 0x03	; 3
    dd2a:	27 2f       	mov	r18, r23
    dd2c:	0e 94 83 6e 	call	0xdd06	; 0xdd06 <__eeupd_r18_m644a>
    dd30:	0e 94 82 6e 	call	0xdd04	; 0xdd04 <__eeupd_byte_m644a>
    dd34:	25 2f       	mov	r18, r21
    dd36:	0e 94 83 6e 	call	0xdd06	; 0xdd06 <__eeupd_r18_m644a>
    dd3a:	24 2f       	mov	r18, r20
    dd3c:	0c 94 83 6e 	jmp	0xdd06	; 0xdd06 <__eeupd_r18_m644a>

0000dd40 <__eeupd_word_m644a>:
    dd40:	01 96       	adiw	r24, 0x01	; 1
    dd42:	27 2f       	mov	r18, r23
    dd44:	0e 94 83 6e 	call	0xdd06	; 0xdd06 <__eeupd_r18_m644a>
    dd48:	0c 94 82 6e 	jmp	0xdd04	; 0xdd04 <__eeupd_byte_m644a>

0000dd4c <__eewr_block_m644a>:
    dd4c:	dc 01       	movw	r26, r24
    dd4e:	cb 01       	movw	r24, r22
    dd50:	03 c0       	rjmp	.+6      	; 0xdd58 <__eewr_block_m644a+0xc>
    dd52:	2d 91       	ld	r18, X+
    dd54:	0e 94 b1 6e 	call	0xdd62	; 0xdd62 <__eewr_r18_m644a>
    dd58:	41 50       	subi	r20, 0x01	; 1
    dd5a:	50 40       	sbci	r21, 0x00	; 0
    dd5c:	d0 f7       	brcc	.-12     	; 0xdd52 <__eewr_block_m644a+0x6>
    dd5e:	08 95       	ret

0000dd60 <__eewr_byte_m644a>:
    dd60:	26 2f       	mov	r18, r22

0000dd62 <__eewr_r18_m644a>:
    dd62:	f9 99       	sbic	0x1f, 1	; 31
    dd64:	fe cf       	rjmp	.-4      	; 0xdd62 <__eewr_r18_m644a>
    dd66:	1f ba       	out	0x1f, r1	; 31
    dd68:	92 bd       	out	0x22, r25	; 34
    dd6a:	81 bd       	out	0x21, r24	; 33
    dd6c:	20 bd       	out	0x20, r18	; 32
    dd6e:	0f b6       	in	r0, 0x3f	; 63
    dd70:	f8 94       	cli
    dd72:	fa 9a       	sbi	0x1f, 2	; 31
    dd74:	f9 9a       	sbi	0x1f, 1	; 31
    dd76:	0f be       	out	0x3f, r0	; 63
    dd78:	01 96       	adiw	r24, 0x01	; 1
    dd7a:	08 95       	ret

0000dd7c <__eewr_dword_m644a>:
    dd7c:	24 2f       	mov	r18, r20
    dd7e:	0e 94 b1 6e 	call	0xdd62	; 0xdd62 <__eewr_r18_m644a>
    dd82:	25 2f       	mov	r18, r21
    dd84:	0e 94 b1 6e 	call	0xdd62	; 0xdd62 <__eewr_r18_m644a>
    dd88:	0c 94 c6 6e 	jmp	0xdd8c	; 0xdd8c <__eewr_word_m644a>

0000dd8c <__eewr_word_m644a>:
    dd8c:	0e 94 b0 6e 	call	0xdd60	; 0xdd60 <__eewr_byte_m644a>
    dd90:	27 2f       	mov	r18, r23
    dd92:	0c 94 b1 6e 	jmp	0xdd62	; 0xdd62 <__eewr_r18_m644a>

0000dd96 <_exit>:
    dd96:	f8 94       	cli

0000dd98 <__stop_program>:
    dd98:	ff cf       	rjmp	.-2      	; 0xdd98 <__stop_program>
