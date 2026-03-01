	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_216__collect_rings_grp, voicegroup005
	.equ	se_216__collect_rings_pri, 20
	.equ	se_216__collect_rings_rev, reverb_set+0
	.equ	se_216__collect_rings_mvl, 98
	.equ	se_216__collect_rings_key, 0
	.equ	se_216__collect_rings_tbs, 1
	.equ	se_216__collect_rings_exg, 1
	.equ	se_216__collect_rings_cmp, 1

	mSectionRodata
	.global	C_DECL(se_216__collect_rings)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_216__collect_rings_1:
	.byte	KEYSH , se_216__collect_rings_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 74*se_216__collect_rings_tbs/2
	.byte		VOICE , 16
	.byte		VOL   , 127*se_216__collect_rings_mvl/mxv
	.byte		LFOS  , 48
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 46
	.byte		BEND  , c_v+63
	.byte		N48   , Ds2 , v104
	.byte	W01
	.byte		VOL   , 124*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        121*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        118*se_216__collect_rings_mvl/mxv
	.byte		BEND  , c_v-46
	.byte	W01
	.byte		VOL   , 116*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        112*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        110*se_216__collect_rings_mvl/mxv
	.byte		BEND  , c_v-42
	.byte	W01
	.byte		VOL   , 107*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        104*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        102*se_216__collect_rings_mvl/mxv
	.byte		BEND  , c_v-33
	.byte	W01
	.byte		VOL   , 98*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        95*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        92*se_216__collect_rings_mvl/mxv
	.byte		BEND  , c_v-24
	.byte	W01
	.byte		VOL   , 90*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        88*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        84*se_216__collect_rings_mvl/mxv
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		VOL   , 81*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        78*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        76*se_216__collect_rings_mvl/mxv
	.byte		BEND  , c_v+26
	.byte	W01
	.byte		VOL   , 74*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        70*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        67*se_216__collect_rings_mvl/mxv
	.byte		BEND  , c_v+53
	.byte	W01
	.byte		VOL   , 64*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        62*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        59*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        55*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        53*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        46*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        45*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        44*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        41*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        40*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        39*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        37*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        37*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        36*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        34*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        33*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        31*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        30*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        28*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        26*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        25*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        24*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        22*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        21*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        20*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        19*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        18*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        16*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        14*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        13*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        11*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        10*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        9*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        7*se_216__collect_rings_mvl/mxv
	.byte	W01
	.byte		        6*se_216__collect_rings_mvl/mxv
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_216__collect_rings):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_216__collect_rings_pri	@ Priority
	.byte	se_216__collect_rings_rev	@ Reverb

mAlignWord
	mPtr	se_216__collect_rings_grp

	mPtr	se_216__collect_rings_1

	.end
