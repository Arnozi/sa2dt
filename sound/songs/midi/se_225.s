	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_225_grp, voicegroup005
	.equ	se_225_pri, 30
	.equ	se_225_rev, reverb_set+0
	.equ	se_225_mvl, 100
	.equ	se_225_key, 0
	.equ	se_225_tbs, 1
	.equ	se_225_exg, 1
	.equ	se_225_cmp, 1

	mSectionRodata
	.global	C_DECL(se_225)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_225_1:
	.byte	KEYSH , se_225_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 74*se_225_tbs/2
	.byte		VOICE , 25
	.byte		VOL   , 127*se_225_mvl/mxv
	.byte		BENDR , 10
	.byte		LFOS  , 17
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 77
	.byte		BEND  , c_v-28
	.byte		N03   , Cn3 , v127
	.byte	W01
	.byte		VOL   , 126*se_225_mvl/mxv
	.byte		BEND  , c_v-27
	.byte	W01
	.byte		VOL   , 124*se_225_mvl/mxv
	.byte		BEND  , c_v-26
	.byte	W01
	.byte		VOL   , 122*se_225_mvl/mxv
	.byte		BEND  , c_v-25
	.byte	W01
	.byte		VOL   , 120*se_225_mvl/mxv
	.byte		BEND  , c_v-24
	.byte		N02   , Gs3 
	.byte	W01
	.byte		VOL   , 117*se_225_mvl/mxv
	.byte		BEND  , c_v-23
	.byte	W01
	.byte		VOL   , 116*se_225_mvl/mxv
	.byte		BEND  , c_v-22
	.byte	W01
	.byte		VOL   , 114*se_225_mvl/mxv
	.byte		BEND  , c_v-21
	.byte		N02   , Gs2 
	.byte	W01
	.byte		VOL   , 112*se_225_mvl/mxv
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		VOL   , 110*se_225_mvl/mxv
	.byte		BEND  , c_v-18
	.byte	W01
	.byte		VOL   , 108*se_225_mvl/mxv
	.byte		BEND  , c_v-17
	.byte		N02   , Ds3 
	.byte	W01
	.byte		VOL   , 106*se_225_mvl/mxv
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		VOL   , 103*se_225_mvl/mxv
	.byte		BEND  , c_v-15
	.byte	W01
	.byte		VOL   , 102*se_225_mvl/mxv
	.byte		BEND  , c_v-14
	.byte		N03   , Cn3 
	.byte	W01
	.byte		VOL   , 101*se_225_mvl/mxv
	.byte		BEND  , c_v-13
	.byte	W01
	.byte		VOL   , 98*se_225_mvl/mxv
	.byte		BEND  , c_v-12
	.byte	W01
	.byte		VOL   , 97*se_225_mvl/mxv
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		VOL   , 94*se_225_mvl/mxv
	.byte		BEND  , c_v-10
	.byte		N02   , Gs3 
	.byte	W01
	.byte		VOL   , 93*se_225_mvl/mxv
	.byte		BEND  , c_v-8
	.byte	W01
	.byte		VOL   , 91*se_225_mvl/mxv
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		VOL   , 89*se_225_mvl/mxv
	.byte		BEND  , c_v-6
	.byte		N02   , Gs2 
	.byte	W01
	.byte		VOL   , 87*se_225_mvl/mxv
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		VOL   , 84*se_225_mvl/mxv
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		VOL   , 83*se_225_mvl/mxv
	.byte		BEND  , c_v-19
	.byte		N02   , Ds3 
	.byte	W01
	.byte		VOL   , 81*se_225_mvl/mxv
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		VOL   , 79*se_225_mvl/mxv
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		VOL   , 77*se_225_mvl/mxv
	.byte		BEND  , c_v-19
	.byte		N03   , Cn3 
	.byte	W01
	.byte		VOL   , 75*se_225_mvl/mxv
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		VOL   , 74*se_225_mvl/mxv
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		VOL   , 72*se_225_mvl/mxv
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		VOL   , 70*se_225_mvl/mxv
	.byte		BEND  , c_v-19
	.byte		N02   , Gs3 
	.byte	W01
	.byte		VOL   , 68*se_225_mvl/mxv
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		VOL   , 65*se_225_mvl/mxv
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		VOL   , 64*se_225_mvl/mxv
	.byte		BEND  , c_v-19
	.byte		N02   , Gs2 
	.byte	W01
	.byte		VOL   , 61*se_225_mvl/mxv
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		VOL   , 60*se_225_mvl/mxv
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		VOL   , 58*se_225_mvl/mxv
	.byte		BEND  , c_v-19
	.byte		N02   , Ds3 
	.byte	W01
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-19
	.byte		N09   , Fs3 
	.byte	W03
	.byte		VOL   , 47*se_225_mvl/mxv
	.byte	W06
	.byte		        35*se_225_mvl/mxv
	.byte	W06
	.byte		        23*se_225_mvl/mxv
	.byte	W06
	.byte		        12*se_225_mvl/mxv
	.byte	W06
	.byte		        0*se_225_mvl/mxv
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_225):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_225_pri	@ Priority
	.byte	se_225_rev	@ Reverb

mAlignWord
	mPtr	se_225_grp

	mPtr	se_225_1

	.end
