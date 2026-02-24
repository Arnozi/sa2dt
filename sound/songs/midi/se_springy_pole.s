	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_springy_pole_grp, voicegroup005
	.equ	se_springy_pole_pri, 20
	.equ	se_springy_pole_rev, reverb_set+0
	.equ	se_springy_pole_mvl, 88
	.equ	se_springy_pole_key, 0
	.equ	se_springy_pole_tbs, 1
	.equ	se_springy_pole_exg, 1
	.equ	se_springy_pole_cmp, 1

	mSectionRodata
	.global	C_DECL(se_springy_pole)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_springy_pole_1:
	.byte	KEYSH , se_springy_pole_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*se_springy_pole_tbs/2
	.byte		VOICE , 99
	.byte		VOL   , 127*se_springy_pole_mvl/mxv
	.byte		LFOS  , 43
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 48
	.byte		BEND  , c_v-64
	.byte		N48   , Cn4 , v127
	.byte	W01
	.byte		VOL   , 125*se_springy_pole_mvl/mxv
	.byte		BEND  , c_v-56
	.byte	W01
	.byte		VOL   , 122*se_springy_pole_mvl/mxv
	.byte		BEND  , c_v-48
	.byte	W01
	.byte		VOL   , 119*se_springy_pole_mvl/mxv
	.byte		BEND  , c_v-39
	.byte	W01
	.byte		VOL   , 116*se_springy_pole_mvl/mxv
	.byte		BEND  , c_v-31
	.byte	W01
	.byte		VOL   , 116*se_springy_pole_mvl/mxv
	.byte		BEND  , c_v-22
	.byte	W01
	.byte		VOL   , 110*se_springy_pole_mvl/mxv
	.byte		BEND  , c_v-14
	.byte	W01
	.byte		VOL   , 107*se_springy_pole_mvl/mxv
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		VOL   , 104*se_springy_pole_mvl/mxv
	.byte		BEND  , c_v+3
	.byte	W01
	.byte		VOL   , 102*se_springy_pole_mvl/mxv
	.byte		BEND  , c_v+12
	.byte	W01
	.byte		VOL   , 99*se_springy_pole_mvl/mxv
	.byte		BEND  , c_v+20
	.byte	W01
	.byte		VOL   , 96*se_springy_pole_mvl/mxv
	.byte		BEND  , c_v+29
	.byte	W01
	.byte		VOL   , 93*se_springy_pole_mvl/mxv
	.byte		BEND  , c_v+37
	.byte	W01
	.byte		VOL   , 90*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        87*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        84*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        81*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        78*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        77*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        74*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        70*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        67*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        64*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        63*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        60*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        55*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        52*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        45*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        45*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        44*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        42*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        41*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        39*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        38*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        37*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        35*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        34*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        32*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        31*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        29*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        28*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        26*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        25*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        25*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        22*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        21*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        21*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        18*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        18*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        15*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        13*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        13*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        11*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        11*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        9*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        6*se_springy_pole_mvl/mxv
	.byte	W01
	.byte		        6*se_springy_pole_mvl/mxv
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_springy_pole):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_springy_pole_pri	/* Priority */
	.byte	se_springy_pole_rev	/* Reverb */

mAlignWord
	mPtr	se_springy_pole_grp

	mPtr	se_springy_pole_1

	.end
