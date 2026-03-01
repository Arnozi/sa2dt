	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_241_grp, voicegroup005
	.equ	se_241_pri, 20
	.equ	se_241_rev, reverb_set+0
	.equ	se_241_mvl, 100
	.equ	se_241_key, 0
	.equ	se_241_tbs, 1
	.equ	se_241_exg, 1
	.equ	se_241_cmp, 1

	mSectionRodata
	.global	C_DECL(se_241)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_241_1:
	.byte	KEYSH , se_241_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_241_tbs/2
	.byte		VOICE , 41
	.byte		VOL   , 127*se_241_mvl/mxv
	.byte		BENDR , 10
	.byte		LFOS  , 17
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 77
	.byte		BEND  , c_v-28
	.byte		N01   , Gs3 , v127
	.byte	W01
	.byte		VOL   , 127*se_241_mvl/mxv
	.byte		BEND  , c_v-27
	.byte	W01
	.byte		VOL   , 127*se_241_mvl/mxv
	.byte		BEND  , c_v-26
	.byte		N06   , Ds3 
	.byte	W01
	.byte		VOL   , 127*se_241_mvl/mxv
	.byte		BEND  , c_v-25
	.byte	W01
	.byte		VOL   , 117*se_241_mvl/mxv
	.byte		BEND  , c_v-24
	.byte	W01
	.byte		VOL   , 112*se_241_mvl/mxv
	.byte		BEND  , c_v-23
	.byte	W01
	.byte		VOL   , 107*se_241_mvl/mxv
	.byte		BEND  , c_v-22
	.byte	W01
	.byte		VOL   , 102*se_241_mvl/mxv
	.byte		BEND  , c_v-21
	.byte	W01
	.byte		VOL   , 97*se_241_mvl/mxv
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		VOL   , 92*se_241_mvl/mxv
	.byte		BEND  , c_v-18
	.byte	W01
	.byte		VOL   , 87*se_241_mvl/mxv
	.byte		BEND  , c_v-17
	.byte	W01
	.byte		VOL   , 82*se_241_mvl/mxv
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		VOL   , 77*se_241_mvl/mxv
	.byte		BEND  , c_v-15
	.byte	W01
	.byte		VOL   , 72*se_241_mvl/mxv
	.byte		BEND  , c_v-14
	.byte	W01
	.byte		VOL   , 67*se_241_mvl/mxv
	.byte		BEND  , c_v-13
	.byte	W01
	.byte		VOL   , 61*se_241_mvl/mxv
	.byte		BEND  , c_v-12
	.byte	W01
	.byte		VOL   , 56*se_241_mvl/mxv
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		VOL   , 51*se_241_mvl/mxv
	.byte		BEND  , c_v-10
	.byte	W01
	.byte		VOL   , 47*se_241_mvl/mxv
	.byte		BEND  , c_v-8
	.byte	W01
	.byte		VOL   , 42*se_241_mvl/mxv
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		VOL   , 27*se_241_mvl/mxv
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		VOL   , 26*se_241_mvl/mxv
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		VOL   , 25*se_241_mvl/mxv
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		VOL   , 23*se_241_mvl/mxv
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		VOL   , 22*se_241_mvl/mxv
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		VOL   , 20*se_241_mvl/mxv
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		VOL   , 18*se_241_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 18*se_241_mvl/mxv
	.byte		BEND  , c_v+2
	.byte	W01
	.byte		VOL   , 16*se_241_mvl/mxv
	.byte		BEND  , c_v+3
	.byte	W01
	.byte		VOL   , 14*se_241_mvl/mxv
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		VOL   , 13*se_241_mvl/mxv
	.byte		BEND  , c_v+5
	.byte	W01
	.byte		VOL   , 12*se_241_mvl/mxv
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		VOL   , 9*se_241_mvl/mxv
	.byte		BEND  , c_v+7
	.byte	W01
	.byte		VOL   , 9*se_241_mvl/mxv
	.byte		BEND  , c_v+8
	.byte	W01
	.byte		VOL   , 8*se_241_mvl/mxv
	.byte		BEND  , c_v+9
	.byte	W01
	.byte		VOL   , 6*se_241_mvl/mxv
	.byte		BEND  , c_v+10
	.byte	W01
	.byte		VOL   , 4*se_241_mvl/mxv
	.byte		BEND  , c_v+12
	.byte	W01
	.byte		        c_v+13
	.byte	W01
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+15
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_241):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_241_pri	@ Priority
	.byte	se_241_rev	@ Reverb

mAlignWord
	mPtr	se_241_grp

	mPtr	se_241_1

	.end
