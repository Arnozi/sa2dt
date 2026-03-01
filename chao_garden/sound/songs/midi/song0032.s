	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	song0032_grp, voicegroup000
	.equ	song0032_pri, 20
	.equ	song0032_rev, reverb_set+0
	.equ	song0032_mvl, 70
	.equ	song0032_key, 0
	.equ	song0032_tbs, 1
	.equ	song0032_exg, 1
	.equ	song0032_cmp, 1

	mSectionRodata
	.global	C_DECL(song0032)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

song0032_1:
	.byte	KEYSH , song0032_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*song0032_tbs/2
	.byte		VOICE , 52
	.byte		VOL   , 127*song0032_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 10
	.byte		LFOS  , 33
	.byte		MOD   , 25
	.byte		MODT  , 0
	.byte		BEND  , c_v+63
	.byte		N42   , Fn3 , v127
	.byte	W01
	.byte		BEND  , c_v+61
	.byte	W02
	.byte		        c_v+58
	.byte	W01
	.byte		        c_v+56
	.byte	W02
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+51
	.byte	W02
	.byte		        c_v+48
	.byte	W01
	.byte		        c_v+46
	.byte	W02
	.byte		        c_v+43
	.byte	W01
	.byte		        c_v+41
	.byte	W02
	.byte		        c_v+38
	.byte	W01
	.byte		        c_v+36
	.byte	W02
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+31
	.byte	W02
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+26
	.byte	W02
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+21
	.byte	W02
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+16
	.byte	W02
	.byte		        c_v+13
	.byte	W01
	.byte		        c_v+11
	.byte	W02
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+6
	.byte	W02
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+1
	.byte	W02
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-4
	.byte	W02
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-10
	.byte	W02
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-15
	.byte	W02
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-20
	.byte	W02
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-25
	.byte	W02
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-30
	.byte	W02
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-35
	.byte	W02
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-40
	.byte	W02
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-45
	.byte	W02
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-50
	.byte	W02
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-55
	.byte	W02
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-60
	.byte	W02
	.byte		        c_v-64
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(song0032):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song0032_pri	@ Priority
	.byte	song0032_rev	@ Reverb

mAlignWord
	mPtr	song0032_grp

	mPtr	song0032_1

	.end
