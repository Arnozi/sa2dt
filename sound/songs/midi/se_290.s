	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_290_grp, voicegroup005
	.equ	se_290_pri, 20
	.equ	se_290_rev, reverb_set+0
	.equ	se_290_mvl, 100
	.equ	se_290_key, 0
	.equ	se_290_tbs, 1
	.equ	se_290_exg, 1
	.equ	se_290_cmp, 1

	mSectionRodata
	.global	C_DECL(se_290)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_290_1:
	.byte	KEYSH , se_290_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 126*se_290_tbs/2
	.byte		VOICE , 101
	.byte		VOL   , 127*se_290_mvl/mxv
	.byte		BENDR , 18
	.byte		LFOS  , 30
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		BEND  , c_v+63
	.byte		TIE   , Fn4 , v127
	.byte	W01
	.byte		VOL   , 126*se_290_mvl/mxv
	.byte		BEND  , c_v+32
	.byte	W01
	.byte		VOL   , 124*se_290_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 122*se_290_mvl/mxv
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		VOL   , 121*se_290_mvl/mxv
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		VOL   , 120*se_290_mvl/mxv
	.byte		BEND  , c_v-33
	.byte	W01
	.byte		VOL   , 117*se_290_mvl/mxv
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		VOL   , 116*se_290_mvl/mxv
	.byte		BEND  , c_v+31
	.byte	W01
	.byte		VOL   , 115*se_290_mvl/mxv
	.byte		BEND  , c_v+63
	.byte	W01
	.byte		VOL   , 112*se_290_mvl/mxv
	.byte		BEND  , c_v+63
	.byte	W01
	.byte		VOL   , 112*se_290_mvl/mxv
	.byte		BEND  , c_v+59
	.byte	W01
	.byte		VOL   , 110*se_290_mvl/mxv
	.byte		BEND  , c_v+54
	.byte	W01
	.byte		VOL   , 108*se_290_mvl/mxv
	.byte		BEND  , c_v+50
	.byte	W01
	.byte		VOL   , 107*se_290_mvl/mxv
	.byte		BEND  , c_v+45
	.byte	W01
	.byte		VOL   , 105*se_290_mvl/mxv
	.byte		BEND  , c_v+41
	.byte	W01
	.byte		VOL   , 103*se_290_mvl/mxv
	.byte		BEND  , c_v+36
	.byte	W01
	.byte		VOL   , 102*se_290_mvl/mxv
	.byte		BEND  , c_v+32
	.byte	W01
	.byte		VOL   , 101*se_290_mvl/mxv
	.byte		BEND  , c_v+27
	.byte	W01
	.byte		VOL   , 98*se_290_mvl/mxv
	.byte		BEND  , c_v+23
	.byte	W01
	.byte		VOL   , 97*se_290_mvl/mxv
	.byte		BEND  , c_v+18
	.byte	W01
	.byte		VOL   , 96*se_290_mvl/mxv
	.byte		BEND  , c_v+14
	.byte	W01
	.byte		VOL   , 94*se_290_mvl/mxv
	.byte		BEND  , c_v+9
	.byte	W01
	.byte		VOL   , 93*se_290_mvl/mxv
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		VOL   , 91*se_290_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 89*se_290_mvl/mxv
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-14
	.byte	W04
	.byte		VOL   , 79*se_290_mvl/mxv
	.byte	W06
	.byte		        70*se_290_mvl/mxv
	.byte	W06
	.byte		        61*se_290_mvl/mxv
	.byte	W06
se_290_1_B1:
	.byte		VOL   , 51*se_290_mvl/mxv
	.byte	W06
	.byte		        42*se_290_mvl/mxv
	.byte	W06
	.byte		        32*se_290_mvl/mxv
	.byte	W06
	.byte		        23*se_290_mvl/mxv
	.byte	W30
@ 001   ----------------------------------------
	.byte	W48
	.byte	GOTO
	 mPtr	se_290_1_B1
se_290_1_B2:
	.byte	W07
	.byte		EOT   , Fn4 
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_290):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_290_pri	@ Priority
	.byte	se_290_rev	@ Reverb

mAlignWord
	mPtr	se_290_grp

	mPtr	se_290_1

	.end
