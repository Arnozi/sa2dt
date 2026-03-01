	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_284_grp, voicegroup005
	.equ	se_284_pri, 20
	.equ	se_284_rev, reverb_set+0
	.equ	se_284_mvl, 98
	.equ	se_284_key, 0
	.equ	se_284_tbs, 1
	.equ	se_284_exg, 1
	.equ	se_284_cmp, 1

	mSectionRodata
	.global	C_DECL(se_284)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_284_1:
	.byte	KEYSH , se_284_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_284_tbs/2
	.byte		VOICE , 84
	.byte		VOL   , 127*se_284_mvl/mxv
	.byte		LFOS  , 45
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 73
	.byte		BEND  , c_v-57
	.byte		N48   , Ds3 , v127
	.byte	W01
	.byte		VOL   , 125*se_284_mvl/mxv
	.byte		BEND  , c_v-50
	.byte	W01
	.byte		VOL   , 121*se_284_mvl/mxv
	.byte		BEND  , c_v-42
	.byte	W01
	.byte		VOL   , 118*se_284_mvl/mxv
	.byte		BEND  , c_v-35
	.byte	W01
	.byte		VOL   , 116*se_284_mvl/mxv
	.byte		BEND  , c_v-27
	.byte	W01
	.byte		VOL   , 116*se_284_mvl/mxv
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		VOL   , 111*se_284_mvl/mxv
	.byte		BEND  , c_v-12
	.byte	W01
	.byte		VOL   , 107*se_284_mvl/mxv
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		VOL   , 104*se_284_mvl/mxv
	.byte		BEND  , c_v+3
	.byte	W01
	.byte		VOL   , 102*se_284_mvl/mxv
	.byte		BEND  , c_v+10
	.byte	W01
	.byte		VOL   , 99*se_284_mvl/mxv
	.byte		BEND  , c_v+18
	.byte	W01
	.byte		VOL   , 96*se_284_mvl/mxv
	.byte		BEND  , c_v+25
	.byte	W01
	.byte		VOL   , 93*se_284_mvl/mxv
	.byte		BEND  , c_v+33
	.byte	W01
	.byte		VOL   , 90*se_284_mvl/mxv
	.byte	W01
	.byte		        87*se_284_mvl/mxv
	.byte	W01
	.byte		        85*se_284_mvl/mxv
	.byte	W01
	.byte		        81*se_284_mvl/mxv
	.byte	W01
	.byte		        78*se_284_mvl/mxv
	.byte	W01
	.byte		        77*se_284_mvl/mxv
	.byte	W01
	.byte		        73*se_284_mvl/mxv
	.byte	W01
	.byte		        70*se_284_mvl/mxv
	.byte	W01
	.byte		        67*se_284_mvl/mxv
	.byte	W01
	.byte		        64*se_284_mvl/mxv
	.byte	W01
	.byte		        63*se_284_mvl/mxv
	.byte	W01
	.byte		        59*se_284_mvl/mxv
	.byte	W01
	.byte		        56*se_284_mvl/mxv
	.byte	W01
	.byte		        52*se_284_mvl/mxv
	.byte	W01
	.byte		        46*se_284_mvl/mxv
	.byte	W01
	.byte		        45*se_284_mvl/mxv
	.byte	W01
	.byte		        43*se_284_mvl/mxv
	.byte	W01
	.byte		        42*se_284_mvl/mxv
	.byte	W01
	.byte		        41*se_284_mvl/mxv
	.byte	W01
	.byte		        39*se_284_mvl/mxv
	.byte	W01
	.byte		        38*se_284_mvl/mxv
	.byte	W01
	.byte		        37*se_284_mvl/mxv
	.byte	W01
	.byte		        35*se_284_mvl/mxv
	.byte	W01
	.byte		        33*se_284_mvl/mxv
	.byte	W01
	.byte		        33*se_284_mvl/mxv
	.byte	W01
	.byte		        30*se_284_mvl/mxv
	.byte	W01
	.byte		        29*se_284_mvl/mxv
	.byte	W01
	.byte		        29*se_284_mvl/mxv
	.byte	W01
	.byte		        26*se_284_mvl/mxv
	.byte	W01
	.byte		        25*se_284_mvl/mxv
	.byte	W01
	.byte		        24*se_284_mvl/mxv
	.byte	W01
	.byte		        23*se_284_mvl/mxv
	.byte	W01
	.byte		        21*se_284_mvl/mxv
	.byte	W01
	.byte		        20*se_284_mvl/mxv
	.byte	W01
	.byte		        19*se_284_mvl/mxv
	.byte	W01
	.byte		        17*se_284_mvl/mxv
	.byte	W01
	.byte		        15*se_284_mvl/mxv
	.byte	W01
	.byte		        15*se_284_mvl/mxv
	.byte	W01
	.byte		        13*se_284_mvl/mxv
	.byte	W01
	.byte		        11*se_284_mvl/mxv
	.byte	W01
	.byte		        10*se_284_mvl/mxv
	.byte	W01
	.byte		        10*se_284_mvl/mxv
	.byte	W01
	.byte		        7*se_284_mvl/mxv
	.byte	W01
	.byte		        6*se_284_mvl/mxv
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_284):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_284_pri	@ Priority
	.byte	se_284_rev	@ Reverb

mAlignWord
	mPtr	se_284_grp

	mPtr	se_284_1

	.end
