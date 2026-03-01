	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_toy_trumpet_novice_grp, voicegroup000
	.equ	se_toy_trumpet_novice_pri, 20
	.equ	se_toy_trumpet_novice_rev, reverb_set+0
	.equ	se_toy_trumpet_novice_mvl, 105
	.equ	se_toy_trumpet_novice_key, 0
	.equ	se_toy_trumpet_novice_tbs, 1
	.equ	se_toy_trumpet_novice_exg, 1
	.equ	se_toy_trumpet_novice_cmp, 1

	mSectionRodata
	.global	C_DECL(se_toy_trumpet_novice)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_toy_trumpet_novice_1:
	.byte	KEYSH , se_toy_trumpet_novice_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_toy_trumpet_novice_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 95*se_toy_trumpet_novice_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 33
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		VOL   , 127*se_toy_trumpet_novice_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N24   , En4 , v112
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		MOD   , 5
	.byte	W01
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-8
	.byte	W02
	.byte		        c_v-12
	.byte	W20
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_toy_trumpet_novice):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_toy_trumpet_novice_pri	@ Priority
	.byte	se_toy_trumpet_novice_rev	@ Reverb

mAlignWord
	mPtr	se_toy_trumpet_novice_grp

	mPtr	se_toy_trumpet_novice_1

	.end
