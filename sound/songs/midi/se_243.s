	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_243_grp, voicegroup005
	.equ	se_243_pri, 20
	.equ	se_243_rev, reverb_set+0
	.equ	se_243_mvl, 100
	.equ	se_243_key, 0
	.equ	se_243_tbs, 1
	.equ	se_243_exg, 1
	.equ	se_243_cmp, 1

	mSectionRodata
	.global	C_DECL(se_243)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_243_1:
	.byte	KEYSH , se_243_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_243_tbs/2
	.byte		VOICE , 43
	.byte		VOL   , 127*se_243_mvl/mxv
	.byte		LFOS  , 84
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 77
	.byte		N18   , Gn2 , v127
	.byte	W18
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_243):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_243_pri	@ Priority
	.byte	se_243_rev	@ Reverb

mAlignWord
	mPtr	se_243_grp

	mPtr	se_243_1

	.end
