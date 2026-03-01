	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_279_grp, voicegroup005
	.equ	se_279_pri, 20
	.equ	se_279_rev, reverb_set+0
	.equ	se_279_mvl, 98
	.equ	se_279_key, 0
	.equ	se_279_tbs, 1
	.equ	se_279_exg, 1
	.equ	se_279_cmp, 1

	mSectionRodata
	.global	C_DECL(se_279)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_279_1:
	.byte	KEYSH , se_279_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_279_tbs/2
	.byte		VOICE , 79
	.byte		VOL   , 127*se_279_mvl/mxv
	.byte		LFOS  , 43
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 48
	.byte		BEND  , c_v-64
	.byte		N44   , Bn2 , v127
	.byte	W01
	.byte		VOL   , 125*se_279_mvl/mxv
	.byte		BEND  , c_v-56
	.byte	W01
	.byte		VOL   , 121*se_279_mvl/mxv
	.byte		BEND  , c_v-48
	.byte	W01
	.byte		VOL   , 118*se_279_mvl/mxv
	.byte		BEND  , c_v-39
	.byte	W01
	.byte		VOL   , 116*se_279_mvl/mxv
	.byte		BEND  , c_v-31
	.byte	W01
	.byte		VOL   , 116*se_279_mvl/mxv
	.byte		BEND  , c_v-22
	.byte	W01
	.byte		VOL   , 111*se_279_mvl/mxv
	.byte		BEND  , c_v-14
	.byte	W01
	.byte		VOL   , 107*se_279_mvl/mxv
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		VOL   , 104*se_279_mvl/mxv
	.byte		BEND  , c_v+3
	.byte	W01
	.byte		VOL   , 102*se_279_mvl/mxv
	.byte		BEND  , c_v+12
	.byte	W01
	.byte		VOL   , 99*se_279_mvl/mxv
	.byte		BEND  , c_v+20
	.byte	W01
	.byte		VOL   , 96*se_279_mvl/mxv
	.byte		BEND  , c_v+29
	.byte	W01
	.byte		VOL   , 93*se_279_mvl/mxv
	.byte		BEND  , c_v+37
	.byte	W01
	.byte		VOL   , 90*se_279_mvl/mxv
	.byte	W01
	.byte		        87*se_279_mvl/mxv
	.byte	W01
	.byte		        85*se_279_mvl/mxv
	.byte	W01
	.byte		        81*se_279_mvl/mxv
	.byte	W01
	.byte		        78*se_279_mvl/mxv
	.byte	W01
	.byte		        77*se_279_mvl/mxv
	.byte	W01
	.byte		        73*se_279_mvl/mxv
	.byte	W01
	.byte		        70*se_279_mvl/mxv
	.byte	W01
	.byte		        67*se_279_mvl/mxv
	.byte	W01
	.byte		        64*se_279_mvl/mxv
	.byte	W01
	.byte		        63*se_279_mvl/mxv
	.byte	W01
	.byte		        59*se_279_mvl/mxv
	.byte	W01
	.byte		        56*se_279_mvl/mxv
	.byte	W01
	.byte		        52*se_279_mvl/mxv
	.byte	W01
	.byte		        46*se_279_mvl/mxv
	.byte	W01
	.byte		        45*se_279_mvl/mxv
	.byte	W01
	.byte		        43*se_279_mvl/mxv
	.byte	W01
	.byte		        42*se_279_mvl/mxv
	.byte	W01
	.byte		        41*se_279_mvl/mxv
	.byte	W01
	.byte		        39*se_279_mvl/mxv
	.byte	W01
	.byte		        38*se_279_mvl/mxv
	.byte	W01
	.byte		        37*se_279_mvl/mxv
	.byte	W01
	.byte		        35*se_279_mvl/mxv
	.byte	W01
	.byte		        33*se_279_mvl/mxv
	.byte	W01
	.byte		        33*se_279_mvl/mxv
	.byte	W01
	.byte		        30*se_279_mvl/mxv
	.byte	W01
	.byte		        29*se_279_mvl/mxv
	.byte	W01
	.byte		        29*se_279_mvl/mxv
	.byte	W01
	.byte		        26*se_279_mvl/mxv
	.byte	W01
	.byte		        25*se_279_mvl/mxv
	.byte	W01
	.byte		        24*se_279_mvl/mxv
	.byte	W01
	.byte		        23*se_279_mvl/mxv
	.byte	W01
	.byte		        21*se_279_mvl/mxv
	.byte	W01
	.byte		        20*se_279_mvl/mxv
	.byte	W01
	.byte		        19*se_279_mvl/mxv
	.byte	W01
	.byte		        17*se_279_mvl/mxv
	.byte	W01
	.byte		        15*se_279_mvl/mxv
	.byte	W01
	.byte		        15*se_279_mvl/mxv
	.byte	W01
	.byte		        13*se_279_mvl/mxv
	.byte	W01
	.byte		        11*se_279_mvl/mxv
	.byte	W01
	.byte		        10*se_279_mvl/mxv
	.byte	W01
	.byte		        10*se_279_mvl/mxv
	.byte	W01
	.byte		        7*se_279_mvl/mxv
	.byte	W01
	.byte		        6*se_279_mvl/mxv
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_279):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_279_pri	@ Priority
	.byte	se_279_rev	@ Reverb

mAlignWord
	mPtr	se_279_grp

	mPtr	se_279_1

	.end
