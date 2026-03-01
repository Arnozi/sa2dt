	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_216_grp, voicegroup005
	.equ	se_216_pri, 20
	.equ	se_216_rev, reverb_set+0
	.equ	se_216_mvl, 98
	.equ	se_216_key, 0
	.equ	se_216_tbs, 1
	.equ	se_216_exg, 1
	.equ	se_216_cmp, 1

	mSectionRodata
	.global	C_DECL(se_216)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_216_1:
	.byte	KEYSH , se_216_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 74*se_216_tbs/2
	.byte		VOICE , 16
	.byte		VOL   , 127*se_216_mvl/mxv
	.byte		LFOS  , 48
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 46
	.byte		BEND  , c_v+63
	.byte		N48   , Ds2 , v104
	.byte	W01
	.byte		VOL   , 125*se_216_mvl/mxv
	.byte	W01
	.byte		        121*se_216_mvl/mxv
	.byte	W01
	.byte		        118*se_216_mvl/mxv
	.byte		BEND  , c_v-46
	.byte	W01
	.byte		VOL   , 116*se_216_mvl/mxv
	.byte	W01
	.byte		        113*se_216_mvl/mxv
	.byte	W01
	.byte		        111*se_216_mvl/mxv
	.byte		BEND  , c_v-42
	.byte	W01
	.byte		VOL   , 107*se_216_mvl/mxv
	.byte	W01
	.byte		        104*se_216_mvl/mxv
	.byte	W01
	.byte		        102*se_216_mvl/mxv
	.byte		BEND  , c_v-33
	.byte	W01
	.byte		VOL   , 99*se_216_mvl/mxv
	.byte	W01
	.byte		        96*se_216_mvl/mxv
	.byte	W01
	.byte		        93*se_216_mvl/mxv
	.byte		BEND  , c_v-24
	.byte	W01
	.byte		VOL   , 90*se_216_mvl/mxv
	.byte	W01
	.byte		        87*se_216_mvl/mxv
	.byte	W01
	.byte		        85*se_216_mvl/mxv
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		VOL   , 81*se_216_mvl/mxv
	.byte	W01
	.byte		        78*se_216_mvl/mxv
	.byte	W01
	.byte		        77*se_216_mvl/mxv
	.byte		BEND  , c_v+26
	.byte	W01
	.byte		VOL   , 73*se_216_mvl/mxv
	.byte	W01
	.byte		        70*se_216_mvl/mxv
	.byte	W01
	.byte		        67*se_216_mvl/mxv
	.byte		BEND  , c_v+53
	.byte	W01
	.byte		VOL   , 64*se_216_mvl/mxv
	.byte	W01
	.byte		        63*se_216_mvl/mxv
	.byte	W01
	.byte		        59*se_216_mvl/mxv
	.byte	W01
	.byte		        56*se_216_mvl/mxv
	.byte	W01
	.byte		        52*se_216_mvl/mxv
	.byte	W01
	.byte		        46*se_216_mvl/mxv
	.byte	W01
	.byte		        45*se_216_mvl/mxv
	.byte	W01
	.byte		        43*se_216_mvl/mxv
	.byte	W01
	.byte		        42*se_216_mvl/mxv
	.byte	W01
	.byte		        41*se_216_mvl/mxv
	.byte	W01
	.byte		        39*se_216_mvl/mxv
	.byte	W01
	.byte		        38*se_216_mvl/mxv
	.byte	W01
	.byte		        37*se_216_mvl/mxv
	.byte	W01
	.byte		        35*se_216_mvl/mxv
	.byte	W01
	.byte		        33*se_216_mvl/mxv
	.byte	W01
	.byte		        33*se_216_mvl/mxv
	.byte	W01
	.byte		        30*se_216_mvl/mxv
	.byte	W01
	.byte		        29*se_216_mvl/mxv
	.byte	W01
	.byte		        29*se_216_mvl/mxv
	.byte	W01
	.byte		        26*se_216_mvl/mxv
	.byte	W01
	.byte		        25*se_216_mvl/mxv
	.byte	W01
	.byte		        24*se_216_mvl/mxv
	.byte	W01
	.byte		        23*se_216_mvl/mxv
	.byte	W01
	.byte		        21*se_216_mvl/mxv
	.byte	W01
	.byte		        20*se_216_mvl/mxv
	.byte	W01
	.byte		        19*se_216_mvl/mxv
	.byte	W01
	.byte		        17*se_216_mvl/mxv
	.byte	W01
	.byte		        15*se_216_mvl/mxv
	.byte	W01
	.byte		        15*se_216_mvl/mxv
	.byte	W01
	.byte		        13*se_216_mvl/mxv
	.byte	W01
	.byte		        11*se_216_mvl/mxv
	.byte	W01
	.byte		        10*se_216_mvl/mxv
	.byte	W01
	.byte		        10*se_216_mvl/mxv
	.byte	W01
	.byte		        7*se_216_mvl/mxv
	.byte	W01
	.byte		        6*se_216_mvl/mxv
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_216):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_216_pri	@ Priority
	.byte	se_216_rev	@ Reverb

mAlignWord
	mPtr	se_216_grp

	mPtr	se_216_1

	.end
