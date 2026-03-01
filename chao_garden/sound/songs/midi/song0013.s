	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	song0013_grp, voicegroup000
	.equ	song0013_pri, 20
	.equ	song0013_rev, reverb_set+0
	.equ	song0013_mvl, 66
	.equ	song0013_key, 0
	.equ	song0013_tbs, 1
	.equ	song0013_exg, 1
	.equ	song0013_cmp, 1

	mSectionRodata
	.global	C_DECL(song0013)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

song0013_1:
	.byte	KEYSH , song0013_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*song0013_tbs/2
	.byte		VOICE , 50
	.byte		VOL   , 127*song0013_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 10
	.byte		BEND  , c_v+51
	.byte		N09   , Fn3 , v127
	.byte	W01
	.byte		BEND  , c_v+39
	.byte	W01
	.byte		        c_v+27
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-64
	.byte	W02
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(song0013):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song0013_pri	@ Priority
	.byte	song0013_rev	@ Reverb

mAlignWord
	mPtr	song0013_grp

	mPtr	song0013_1

	.end
