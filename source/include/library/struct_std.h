/**
*	標準構造体定義
*	Copyright (c)Junnichi Tomaru
*/

#ifndef	_STRUCT_STD_DEFINED
#define	_STRUCT_STD_DEFINED

#include	"userdef.h"

/* 64bit → 32bit×2 リトルエンディアン */
union QWORD_T{
	qword	data;
	struct{
		dword	lo;
		dword	hi;
	} dwords;
};
typedef union QWORD_T qword_t;

/* int64bit → 32bit×2 リトルエンディアン */
union QSWORD_T{
	int64_t	data;
	struct{
		dword	lo;
		dword	hi;
	} dwords;
};
typedef union QSWORD_T qsword_t;

/* 64bit → 16bit×4 リトルエンディアン */
union	U64_T {
	qword	data;
	struct{
		word	ll;
		word	lh;
		word	hl;
		word	hh;
	} words;
};
typedef union U64_T	u64_t;

/* 32bit → 16bit×2 リトルエンディアン */
union DWORD_T{
	dword	data;
	struct{
		word	lo;
		word	hi;
	} words;
};
typedef union DWORD_T dword_t;

/* 32bit → 8bit×4 リトルエンディアン */
union	UL_T {
	dword	data;
	struct{
		byte	ll;
		byte	lh;
		byte	hl;
		byte	hh;
	} bytes;
};
typedef union UL_T	ul_t;

/* 16bit → 8bit×2 リトルエンディアン */
union	UI_T{
	word	data;
	struct{
		byte	lo;
		byte	hi;
	} bytes;
};
typedef union UI_T	ui_t;

/* 32bit → 4bit×8 リトルエンディアン */
union DWNBL_T{
	dword	data;
	struct{
		byte	lll : 4;
		byte	llh : 4;
		byte	lhl : 4;
		byte	lhh : 4;
		byte	hll : 4;
		byte	hlh : 4;
		byte	hhl : 4;
		byte	hhh : 4;
	} dwnbl;
};
typedef union DWNBL_T	dwnbl_t;

/* 16bit → 4bit×4 リトルエンディアン */
union WNBL_T{
	word	data;
	struct{
		byte	ll : 4;
		byte	lh : 4;
		byte	hl : 4;
		byte	hh : 4;
	} wnbl;
};
typedef union WNBL_T	wnbl_t;

/* 8bit → 4bit×2 リトルエンディアン */
union NBL_T{
	byte	data;
	struct{
		byte	lo : 4;
		byte	hi : 4;
	} nbl;
};
typedef union NBL_T	nbl_t;


#endif

/* end of struct_std.h */
