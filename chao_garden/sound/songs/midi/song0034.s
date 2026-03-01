	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	song0034_grp, voicegroup000
	.equ	song0034_pri, 20
	.equ	song0034_rev, reverb_set+0
	.equ	song0034_mvl, 95
	.equ	song0034_key, 0
	.equ	song0034_tbs, 1
	.equ	song0034_exg, 1
	.equ	song0034_cmp, 1

	mSectionRodata
	.global	C_DECL(song0034)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

song0034_1:
	.byte	KEYSH , song0034_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*song0034_tbs/2
	.byte		VOICE , 60
	.byte		VOL   , 127*song0034_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 6
	.byte		BEND  , c_v-48
	.byte		N08   , Cn5 , v108
	.byte	W01
	.byte		BEND  , c_v-31
	.byte	W01
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+37
	.byte	W01
	.byte		        c_v+63
	.byte	W03
	.byte		N24   , Gn4 , v127
	.byte	W24
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(song0034):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song0034_pri	@ Priority
	.byte	song0034_rev	@ Reverb

mAlignWord
	mPtr	song0034_grp

	mPtr	song0034_1

	.end
