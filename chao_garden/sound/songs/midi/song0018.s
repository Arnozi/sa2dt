	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	song0018_grp, voicegroup000
	.equ	song0018_pri, 20
	.equ	song0018_rev, reverb_set+0
	.equ	song0018_mvl, 80
	.equ	song0018_key, 0
	.equ	song0018_tbs, 1
	.equ	song0018_exg, 1
	.equ	song0018_cmp, 1

	mSectionRodata
	.global	C_DECL(song0018)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

song0018_1:
	.byte	KEYSH , song0018_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*song0018_tbs/2
	.byte		VOICE , 66
	.byte		BENDR , 11
	.byte		PAN   , c_v+0
	.byte		MOD   , 3
	.byte		VOL   , 127*song0018_mvl/mxv
	.byte		LFODL , 0
	.byte		LFOS  , 35
	.byte		MODT  , 0
	.byte		BEND  , c_v-62
	.byte		N36   , Gn4 , v120
	.byte	W01
	.byte		BEND  , c_v-59
	.byte	W01
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+27
	.byte	W01
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+55
	.byte	W01
	.byte		        c_v+58
	.byte	W01
	.byte		        c_v+63
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(song0018):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song0018_pri	@ Priority
	.byte	song0018_rev	@ Reverb

mAlignWord
	mPtr	song0018_grp

	mPtr	song0018_1

	.end
