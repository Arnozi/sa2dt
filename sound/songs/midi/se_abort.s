	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_abort_grp, voicegroup003
	.equ	se_abort_pri, 20
	.equ	se_abort_rev, reverb_set+0
	.equ	se_abort_mvl, 120
	.equ	se_abort_key, 0
	.equ	se_abort_tbs, 1
	.equ	se_abort_exg, 1
	.equ	se_abort_cmp, 1

	mSectionRodata
	.global	C_DECL(se_abort)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_abort_1:
	.byte	KEYSH , se_abort_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_abort_tbs/2
	.byte		VOICE , 17
	.byte		VOL   , 127*se_abort_mvl/mxv
	.byte		LFOS  , 15
	.byte		BENDR , 15
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N02   , Cn1 , v127
	.byte	W05
	.byte		N17   
	.byte	W17
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_abort):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_abort_pri	@ Priority
	.byte	se_abort_rev	@ Reverb

mAlignWord
	mPtr	se_abort_grp

	mPtr	se_abort_1

	.end
