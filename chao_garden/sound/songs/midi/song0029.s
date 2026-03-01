	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	song0029_grp, voicegroup000
	.equ	song0029_pri, 20
	.equ	song0029_rev, reverb_set+0
	.equ	song0029_mvl, 70
	.equ	song0029_key, 0
	.equ	song0029_tbs, 1
	.equ	song0029_exg, 1
	.equ	song0029_cmp, 1

	mSectionRodata
	.global	C_DECL(song0029)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

song0029_1:
	.byte	KEYSH , song0029_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*song0029_tbs/2
	.byte		VOICE , 50
	.byte		VOL   , 127*song0029_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 33
	.byte		BEND  , c_v+37
	.byte		N09   , As4 , v127
	.byte	W01
	.byte		BEND  , c_v+11
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+51
	.byte	W01
	.byte		        c_v+63
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(song0029):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song0029_pri	@ Priority
	.byte	song0029_rev	@ Reverb

mAlignWord
	mPtr	song0029_grp

	mPtr	song0029_1

	.end
