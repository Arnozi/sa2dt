	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	song0019_grp, voicegroup000
	.equ	song0019_pri, 20
	.equ	song0019_rev, reverb_set+0
	.equ	song0019_mvl, 95
	.equ	song0019_key, 0
	.equ	song0019_tbs, 1
	.equ	song0019_exg, 1
	.equ	song0019_cmp, 1

	mSectionRodata
	.global	C_DECL(song0019)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

song0019_1:
	.byte	KEYSH , song0019_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*song0019_tbs/2
	.byte		VOICE , 61
	.byte		VOL   , 127*song0019_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 4
	.byte		BEND  , c_v+8
	.byte		N17   , Gs4 , v104
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+13
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+31
	.byte	W01
	.byte		        c_v+48
	.byte	W01
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+63
	.byte	W01
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(song0019):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song0019_pri	@ Priority
	.byte	song0019_rev	@ Reverb

mAlignWord
	mPtr	song0019_grp

	mPtr	song0019_1

	.end
