	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_258_grp, voicegroup005
	.equ	se_258_pri, 20
	.equ	se_258_rev, reverb_set+0
	.equ	se_258_mvl, 100
	.equ	se_258_key, 0
	.equ	se_258_tbs, 1
	.equ	se_258_exg, 1
	.equ	se_258_cmp, 1

	mSectionRodata
	.global	C_DECL(se_258)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_258_1:
	.byte	KEYSH , se_258_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_258_tbs/2
	.byte		VOICE , 58
	.byte		VOL   , 127*se_258_mvl/mxv
	.byte		BENDR , 10
	.byte		LFOS  , 17
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		BEND  , c_v+63
	.byte		N02   , Gn2 , v127
	.byte	W01
	.byte		VOL   , 127*se_258_mvl/mxv
	.byte		BEND  , c_v+60
	.byte	W01
	.byte		VOL   , 127*se_258_mvl/mxv
	.byte		BEND  , c_v+57
	.byte	W01
	.byte		VOL   , 127*se_258_mvl/mxv
	.byte		BEND  , c_v+53
	.byte	W01
	.byte		VOL   , 117*se_258_mvl/mxv
	.byte		BEND  , c_v+50
	.byte		N44   , As2 
	.byte	W01
	.byte		VOL   , 112*se_258_mvl/mxv
	.byte		BEND  , c_v+47
	.byte	W01
	.byte		VOL   , 107*se_258_mvl/mxv
	.byte		BEND  , c_v+43
	.byte	W01
	.byte		VOL   , 102*se_258_mvl/mxv
	.byte		BEND  , c_v+40
	.byte	W01
	.byte		VOL   , 97*se_258_mvl/mxv
	.byte		BEND  , c_v+37
	.byte	W01
	.byte		VOL   , 92*se_258_mvl/mxv
	.byte		BEND  , c_v+33
	.byte	W01
	.byte		VOL   , 87*se_258_mvl/mxv
	.byte		BEND  , c_v+30
	.byte	W01
	.byte		VOL   , 82*se_258_mvl/mxv
	.byte		BEND  , c_v+27
	.byte	W01
	.byte		VOL   , 77*se_258_mvl/mxv
	.byte		BEND  , c_v+23
	.byte	W01
	.byte		VOL   , 72*se_258_mvl/mxv
	.byte		BEND  , c_v+20
	.byte	W01
	.byte		VOL   , 67*se_258_mvl/mxv
	.byte		BEND  , c_v+17
	.byte	W01
	.byte		VOL   , 61*se_258_mvl/mxv
	.byte		BEND  , c_v+13
	.byte	W01
	.byte		VOL   , 56*se_258_mvl/mxv
	.byte		BEND  , c_v+10
	.byte	W01
	.byte		VOL   , 51*se_258_mvl/mxv
	.byte		BEND  , c_v+7
	.byte	W01
	.byte		VOL   , 47*se_258_mvl/mxv
	.byte		BEND  , c_v+3
	.byte	W01
	.byte		VOL   , 42*se_258_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 27*se_258_mvl/mxv
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		VOL   , 26*se_258_mvl/mxv
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		VOL   , 25*se_258_mvl/mxv
	.byte		BEND  , c_v-10
	.byte	W01
	.byte		VOL   , 23*se_258_mvl/mxv
	.byte		BEND  , c_v-13
	.byte	W01
	.byte		VOL   , 22*se_258_mvl/mxv
	.byte		BEND  , c_v-17
	.byte	W01
	.byte		VOL   , 20*se_258_mvl/mxv
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		VOL   , 18*se_258_mvl/mxv
	.byte		BEND  , c_v-23
	.byte	W01
	.byte		VOL   , 18*se_258_mvl/mxv
	.byte		BEND  , c_v-27
	.byte	W01
	.byte		VOL   , 16*se_258_mvl/mxv
	.byte		BEND  , c_v-30
	.byte	W01
	.byte		VOL   , 14*se_258_mvl/mxv
	.byte		BEND  , c_v-33
	.byte	W01
	.byte		VOL   , 13*se_258_mvl/mxv
	.byte		BEND  , c_v-37
	.byte	W01
	.byte		VOL   , 12*se_258_mvl/mxv
	.byte		BEND  , c_v-40
	.byte	W01
	.byte		VOL   , 9*se_258_mvl/mxv
	.byte		BEND  , c_v-43
	.byte	W01
	.byte		VOL   , 9*se_258_mvl/mxv
	.byte		BEND  , c_v-47
	.byte	W01
	.byte		VOL   , 8*se_258_mvl/mxv
	.byte		BEND  , c_v-50
	.byte	W01
	.byte		VOL   , 6*se_258_mvl/mxv
	.byte		BEND  , c_v-53
	.byte	W01
	.byte		VOL   , 4*se_258_mvl/mxv
	.byte		BEND  , c_v-57
	.byte	W01
	.byte		        c_v-60
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-57
	.byte	W09
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_258):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_258_pri	@ Priority
	.byte	se_258_rev	@ Reverb

mAlignWord
	mPtr	se_258_grp

	mPtr	se_258_1

	.end
