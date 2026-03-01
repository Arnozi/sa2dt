	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_251_grp, voicegroup005
	.equ	se_251_pri, 20
	.equ	se_251_rev, reverb_set+0
	.equ	se_251_mvl, 100
	.equ	se_251_key, 0
	.equ	se_251_tbs, 1
	.equ	se_251_exg, 1
	.equ	se_251_cmp, 1

	mSectionRodata
	.global	C_DECL(se_251)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_251_1:
	.byte	KEYSH , se_251_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_251_tbs/2
	.byte		VOICE , 51
	.byte		VOL   , 127*se_251_mvl/mxv
	.byte		LFOS  , 84
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 77
	.byte		N12   , Fn3 , v127
	.byte	W12
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_251):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_251_pri	@ Priority
	.byte	se_251_rev	@ Reverb

mAlignWord
	mPtr	se_251_grp

	mPtr	se_251_1

	.end
