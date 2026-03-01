	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_228_grp, voicegroup005
	.equ	se_228_pri, 20
	.equ	se_228_rev, reverb_set+0
	.equ	se_228_mvl, 100
	.equ	se_228_key, 0
	.equ	se_228_tbs, 1
	.equ	se_228_exg, 1
	.equ	se_228_cmp, 1

	mSectionRodata
	.global	C_DECL(se_228)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_228_1:
	.byte	KEYSH , se_228_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 74*se_228_tbs/2
	.byte		VOICE , 28
	.byte		VOL   , 127*se_228_mvl/mxv
	.byte		LFOS  , 51
	.byte		BENDR , 15
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 117*se_228_mvl/mxv
	.byte		MOD   , 60
	.byte		TIE   , As5 , v127
	.byte	W24
se_228_1_B1:
	.byte	W72
	.byte	GOTO
	 mPtr	se_228_1_B1
se_228_1_B2:
@ 001   ----------------------------------------
	.byte	W01
	.byte		EOT   , As5 
	.byte	W01
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_228):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_228_pri	@ Priority
	.byte	se_228_rev	@ Reverb

mAlignWord
	mPtr	se_228_grp

	mPtr	se_228_1

	.end
