	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	song0030_grp, voicegroup000
	.equ	song0030_pri, 20
	.equ	song0030_rev, reverb_set+0
	.equ	song0030_mvl, 95
	.equ	song0030_key, 0
	.equ	song0030_tbs, 1
	.equ	song0030_exg, 1
	.equ	song0030_cmp, 1

	mSectionRodata
	.global	C_DECL(song0030)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

song0030_1:
	.byte	KEYSH , song0030_key+0
song0030_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 150*song0030_tbs/2
	.byte		VOICE , 62
	.byte		VOL   , 127*song0030_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		N11   , Cs5 , v084
	.byte	W12
	.byte		        Fn5 , v100
	.byte	W12
	.byte	GOTO
	 mPtr	song0030_1_B1
song0030_1_B2:
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(song0030):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song0030_pri	@ Priority
	.byte	song0030_rev	@ Reverb

mAlignWord
	mPtr	song0030_grp

	mPtr	song0030_1

	.end
