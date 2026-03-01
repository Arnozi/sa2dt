	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_331_grp, voicegroup006
	.equ	se_331_pri, 20
	.equ	se_331_rev, reverb_set+0
	.equ	se_331_mvl, 120
	.equ	se_331_key, 0
	.equ	se_331_tbs, 1
	.equ	se_331_exg, 1
	.equ	se_331_cmp, 1

	mSectionRodata
	.global	C_DECL(se_331)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_331_1:
	.byte	KEYSH , se_331_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 74*se_331_tbs/2
	.byte		VOICE , 31
	.byte		VOL   , 127*se_331_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N09   , Cn3 , v127
	.byte	W09
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_331):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_331_pri	@ Priority
	.byte	se_331_rev	@ Reverb

mAlignWord
	mPtr	se_331_grp

	mPtr	se_331_1

	.end
