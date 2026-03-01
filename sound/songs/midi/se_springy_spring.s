	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_springy_spring_grp, voicegroup005
	.equ	se_springy_spring_pri, 20
	.equ	se_springy_spring_rev, reverb_set+0
	.equ	se_springy_spring_mvl, 88
	.equ	se_springy_spring_key, 0
	.equ	se_springy_spring_tbs, 1
	.equ	se_springy_spring_exg, 1
	.equ	se_springy_spring_cmp, 1

	mSectionRodata
	.global	C_DECL(se_springy_spring)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_springy_spring_1:
	.byte	KEYSH , se_springy_spring_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_springy_spring_tbs/2
	.byte		VOICE , 100
	.byte		VOL   , 127*se_springy_spring_mvl/mxv
	.byte		LFOS  , 45
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 41
	.byte		BEND  , c_v-57
	.byte		N48   , Ds3 , v127
	.byte	W01
	.byte		VOL   , 126*se_springy_spring_mvl/mxv
	.byte		BEND  , c_v-50
	.byte	W01
	.byte		VOL   , 122*se_springy_spring_mvl/mxv
	.byte		BEND  , c_v-42
	.byte	W01
	.byte		VOL   , 119*se_springy_spring_mvl/mxv
	.byte		BEND  , c_v-35
	.byte	W01
	.byte		VOL   , 116*se_springy_spring_mvl/mxv
	.byte		BEND  , c_v-27
	.byte	W01
	.byte		VOL   , 116*se_springy_spring_mvl/mxv
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		VOL   , 110*se_springy_spring_mvl/mxv
	.byte		BEND  , c_v-12
	.byte	W01
	.byte		VOL   , 107*se_springy_spring_mvl/mxv
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		VOL   , 104*se_springy_spring_mvl/mxv
	.byte		BEND  , c_v+3
	.byte	W01
	.byte		VOL   , 102*se_springy_spring_mvl/mxv
	.byte		BEND  , c_v+10
	.byte	W01
	.byte		VOL   , 99*se_springy_spring_mvl/mxv
	.byte		BEND  , c_v+18
	.byte	W01
	.byte		VOL   , 96*se_springy_spring_mvl/mxv
	.byte		BEND  , c_v+25
	.byte	W01
	.byte		VOL   , 93*se_springy_spring_mvl/mxv
	.byte		BEND  , c_v+33
	.byte	W01
	.byte		VOL   , 90*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        87*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        84*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        81*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        78*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        77*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        74*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        70*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        67*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        64*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        63*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        60*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        55*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        52*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        45*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        45*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        44*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        42*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        41*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        39*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        38*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        37*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        35*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        34*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        32*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        31*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        29*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        28*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        26*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        25*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        25*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        22*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        21*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        21*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        18*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        18*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        15*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        13*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        13*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        11*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        11*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        9*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        6*se_springy_spring_mvl/mxv
	.byte	W01
	.byte		        6*se_springy_spring_mvl/mxv
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_springy_spring):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_springy_spring_pri	@ Priority
	.byte	se_springy_spring_rev	@ Reverb

mAlignWord
	mPtr	se_springy_spring_grp

	mPtr	se_springy_spring_1

	.end
