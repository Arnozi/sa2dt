	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_239_grp, voicegroup005
	.equ	se_239_pri, 20
	.equ	se_239_rev, reverb_set+0
	.equ	se_239_mvl, 100
	.equ	se_239_key, 0
	.equ	se_239_tbs, 1
	.equ	se_239_exg, 1
	.equ	se_239_cmp, 1

	mSectionRodata
	.global	C_DECL(se_239)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_239_1:
	.byte	KEYSH , se_239_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_239_tbs/2
	.byte		VOICE , 39
	.byte		MOD   , 127
	.byte		VOL   , 127*se_239_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 20
	.byte		BEND  , c_v-60
	.byte		N04   , As2 , v112
	.byte	W01
	.byte		BEND  , c_v-62
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-15
	.byte	W01
	.byte		MOD   , 19
	.byte		BEND  , c_v-18
	.byte		N44   , En3 , v127
	.byte	W01
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W21
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_239):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_239_pri	@ Priority
	.byte	se_239_rev	@ Reverb

mAlignWord
	mPtr	se_239_grp

	mPtr	se_239_1

	.end
