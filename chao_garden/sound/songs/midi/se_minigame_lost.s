	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_minigame_lost_grp, voicegroup000
	.equ	se_minigame_lost_pri, 20
	.equ	se_minigame_lost_rev, reverb_set+0
	.equ	se_minigame_lost_mvl, 115
	.equ	se_minigame_lost_key, 0
	.equ	se_minigame_lost_tbs, 1
	.equ	se_minigame_lost_exg, 1
	.equ	se_minigame_lost_cmp, 1

	mSectionRodata
	.global	C_DECL(se_minigame_lost)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_minigame_lost_1:
	.byte	KEYSH , se_minigame_lost_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_minigame_lost_tbs/2
	.byte		VOICE , 64
	.byte		VOL   , 127*se_minigame_lost_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 77
	.byte		LFODL , 0
	.byte		MODT  , 0
	.byte		MOD   , 17
	.byte		BEND  , c_v-64
	.byte		N96   , Fs3 , v116
	.byte	W01
	.byte		BEND  , c_v-59
	.byte	W02
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-47
	.byte	W02
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-35
	.byte	W02
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-24
	.byte	W02
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-12
	.byte	W02
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+11
	.byte	W02
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+17
	.byte	W02
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+13
	.byte	W02
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+9
	.byte	W02
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+5
	.byte	W02
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-4
	.byte	W02
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-8
	.byte	W02
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-12
	.byte	W02
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-16
	.byte	W02
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-17
	.byte	W02
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-13
	.byte	W02
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-9
	.byte	W02
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-5
	.byte	W02
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-1
	.byte	W02
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+4
	.byte	W02
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+8
	.byte	W02
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+12
	.byte	W02
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+16
	.byte	W02
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+20
	.byte	W02
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-47
	.byte	W01
@ 001   ----------------------------------------
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-64
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_minigame_lost):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_minigame_lost_pri	@ Priority
	.byte	se_minigame_lost_rev	@ Reverb

mAlignWord
	mPtr	se_minigame_lost_grp

	mPtr	se_minigame_lost_1

	.end
