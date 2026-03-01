	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_hatch_grp, voicegroup000
	.equ	se_hatch_pri, 20
	.equ	se_hatch_rev, reverb_set+0
	.equ	se_hatch_mvl, 127
	.equ	se_hatch_key, 0
	.equ	se_hatch_tbs, 1
	.equ	se_hatch_exg, 1
	.equ	se_hatch_cmp, 1

	mSectionRodata
	.global	C_DECL(se_hatch)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_hatch_1:
	.byte	KEYSH , se_hatch_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_hatch_tbs/2
	.byte		VOICE , 2
	.byte		VOL   , 127*se_hatch_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 10
	.byte		LFOS  , 33
	.byte		MOD   , 55
	.byte		MODT  , 0
	.byte		BEND  , c_v-64
	.byte		N66   , Fn3 , v127
	.byte	W01
	.byte		BEND  , c_v-62
	.byte	W02
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-56
	.byte	W02
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-50
	.byte	W02
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-45
	.byte	W02
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-39
	.byte	W02
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-34
	.byte	W02
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-28
	.byte	W02
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-22
	.byte	W02
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-17
	.byte	W02
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-11
	.byte	W02
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-6
	.byte	W02
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+6
	.byte	W02
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+11
	.byte	W02
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+17
	.byte	W02
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+22
	.byte	W02
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+28
	.byte	W02
	.byte		        c_v+31
	.byte	W01
	.byte		        c_v+34
	.byte	W02
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+39
	.byte	W02
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+45
	.byte	W02
	.byte		        c_v+48
	.byte	W01
	.byte		        c_v+50
	.byte	W02
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+56
	.byte	W02
	.byte		        c_v+59
	.byte	W01
	.byte		        c_v+62
	.byte	W01
	.byte		MOD   , 1
	.byte		BEND  , c_v+63
	.byte		N04   , Fs3 , v108
	.byte	W04
	.byte		        Bn3 , v112
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_hatch):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_hatch_pri	@ Priority
	.byte	se_hatch_rev	@ Reverb

mAlignWord
	mPtr	se_hatch_grp

	mPtr	se_hatch_1

	.end
