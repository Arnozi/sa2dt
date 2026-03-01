	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_231_grp, voicegroup005
	.equ	se_231_pri, 20
	.equ	se_231_rev, reverb_set+0
	.equ	se_231_mvl, 100
	.equ	se_231_key, 0
	.equ	se_231_tbs, 1
	.equ	se_231_exg, 1
	.equ	se_231_cmp, 1

	mSectionRodata
	.global	C_DECL(se_231)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_231_1:
	.byte	KEYSH , se_231_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_231_tbs/2
	.byte		VOICE , 31
	.byte		VOL   , 127*se_231_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		MOD   , 60
	.byte		BENDR , 19
	.byte		LFOS  , 60
	.byte		MODT  , 0
	.byte		TIE   , Fn3 , v080
	.byte	W24
se_231_1_B1:
	.byte	W72
@ 001   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	se_231_1_B1
se_231_1_B2:
@ 002   ----------------------------------------
	.byte	W13
	.byte		EOT   , Fn3 
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_231):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_231_pri	@ Priority
	.byte	se_231_rev	@ Reverb

mAlignWord
	mPtr	se_231_grp

	mPtr	se_231_1

	.end
