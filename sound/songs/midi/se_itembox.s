	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_itembox_grp, voicegroup000
	.equ	se_itembox_pri, 50
	.equ	se_itembox_rev, reverb_set+0
	.equ	se_itembox_mvl, 127
	.equ	se_itembox_key, 0
	.equ	se_itembox_tbs, 1
	.equ	se_itembox_exg, 1
	.equ	se_itembox_cmp, 1

	mSectionRodata
	.global	C_DECL(se_itembox)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_itembox_1:
	.byte	KEYSH , se_itembox_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 150*se_itembox_tbs/2
	.byte		VOICE , 52
	.byte		VOL   , 70*se_itembox_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 6
	.byte		BEND  , c_v-1
	.byte		N60   , Cn4 , v124
	.byte	W01
	.byte		BEND  , c_v+20
	.byte	W01
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+58
	.byte	W01
	.byte		        c_v+45
	.byte	W01
	.byte		        c_v+31
	.byte	W01
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+48
	.byte	W01
	.byte		        c_v+63
	.byte	W36
	.byte	W03
	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

se_itembox_2:
	.byte	KEYSH , se_itembox_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 50
	.byte		VOL   , 127*se_itembox_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 15
	.byte		N02   , Fn3 , v124
	.byte	W02
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_itembox):
	.byte	2	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_itembox_pri	/* Priority */
	.byte	se_itembox_rev	/* Reverb */

mAlignWord
	mPtr	se_itembox_grp

	mPtr	se_itembox_1
	mPtr	se_itembox_2

	.end
