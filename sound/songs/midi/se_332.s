	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_332_grp, voicegroup006
	.equ	se_332_pri, 20
	.equ	se_332_rev, reverb_set+0
	.equ	se_332_mvl, 120
	.equ	se_332_key, 0
	.equ	se_332_tbs, 1
	.equ	se_332_exg, 1
	.equ	se_332_cmp, 1

	mSectionRodata
	.global	C_DECL(se_332)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_332_1:
	.byte	KEYSH , se_332_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 74*se_332_tbs/2
	.byte		VOICE , 32
	.byte		VOL   , 127*se_332_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N24   , Cn4 , v127
	.byte	W24
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_332):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_332_pri	@ Priority
	.byte	se_332_rev	@ Reverb

mAlignWord
	mPtr	se_332_grp

	mPtr	se_332_1

	.end
