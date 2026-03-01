	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_280_grp, voicegroup005
	.equ	se_280_pri, 20
	.equ	se_280_rev, reverb_set+0
	.equ	se_280_mvl, 100
	.equ	se_280_key, 0
	.equ	se_280_tbs, 1
	.equ	se_280_exg, 1
	.equ	se_280_cmp, 1

	mSectionRodata
	.global	C_DECL(se_280)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_280_1:
	.byte	KEYSH , se_280_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 126*se_280_tbs/2
	.byte		VOICE , 80
	.byte		VOL   , 127*se_280_mvl/mxv
	.byte		BENDR , 18
	.byte		LFOS  , 30
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		BEND  , c_v+63
	.byte		TIE   , Fn4 , v127
	.byte	W01
	.byte		VOL   , 126*se_280_mvl/mxv
	.byte		BEND  , c_v+32
	.byte	W01
	.byte		VOL   , 124*se_280_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 122*se_280_mvl/mxv
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		VOL   , 121*se_280_mvl/mxv
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		VOL   , 120*se_280_mvl/mxv
	.byte		BEND  , c_v-33
	.byte	W01
	.byte		VOL   , 117*se_280_mvl/mxv
	.byte		BEND  , c_v-28
	.byte	W01
	.byte		VOL   , 116*se_280_mvl/mxv
	.byte		BEND  , c_v-26
	.byte	W01
	.byte		VOL   , 115*se_280_mvl/mxv
	.byte		BEND  , c_v-24
	.byte	W01
	.byte		VOL   , 112*se_280_mvl/mxv
	.byte		BEND  , c_v-21
	.byte	W01
	.byte		VOL   , 112*se_280_mvl/mxv
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		VOL   , 110*se_280_mvl/mxv
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		VOL   , 108*se_280_mvl/mxv
	.byte		BEND  , c_v-14
	.byte	W01
	.byte		VOL   , 107*se_280_mvl/mxv
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		VOL   , 105*se_280_mvl/mxv
	.byte		BEND  , c_v-9
	.byte	W01
	.byte		VOL   , 103*se_280_mvl/mxv
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		VOL   , 102*se_280_mvl/mxv
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		VOL   , 101*se_280_mvl/mxv
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		VOL   , 98*se_280_mvl/mxv
	.byte		BEND  , c_v+1
	.byte	W01
	.byte		VOL   , 97*se_280_mvl/mxv
	.byte		BEND  , c_v+3
	.byte	W01
	.byte		VOL   , 96*se_280_mvl/mxv
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		VOL   , 94*se_280_mvl/mxv
	.byte		BEND  , c_v+8
	.byte	W01
	.byte		VOL   , 93*se_280_mvl/mxv
	.byte		BEND  , c_v+11
	.byte	W01
	.byte		VOL   , 91*se_280_mvl/mxv
	.byte		BEND  , c_v+13
	.byte	W01
	.byte		VOL   , 89*se_280_mvl/mxv
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+21
	.byte	W04
	.byte		VOL   , 79*se_280_mvl/mxv
	.byte	W06
	.byte		        70*se_280_mvl/mxv
	.byte	W06
	.byte		        61*se_280_mvl/mxv
	.byte	W06
se_280_1_B1:
	.byte		VOL   , 51*se_280_mvl/mxv
	.byte	W06
	.byte		        42*se_280_mvl/mxv
	.byte	W06
	.byte		        32*se_280_mvl/mxv
	.byte	W06
	.byte		        23*se_280_mvl/mxv
	.byte	W30
@ 001   ----------------------------------------
	.byte	W48
	.byte	GOTO
	 mPtr	se_280_1_B1
se_280_1_B2:
	.byte	W07
	.byte		EOT   , Fn4 
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_280):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_280_pri	@ Priority
	.byte	se_280_rev	@ Reverb

mAlignWord
	mPtr	se_280_grp

	mPtr	se_280_1

	.end
