	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_248_grp, voicegroup005
	.equ	se_248_pri, 20
	.equ	se_248_rev, reverb_set+0
	.equ	se_248_mvl, 100
	.equ	se_248_key, 0
	.equ	se_248_tbs, 1
	.equ	se_248_exg, 1
	.equ	se_248_cmp, 1

	mSectionRodata
	.global	C_DECL(se_248)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_248_1:
	.byte	KEYSH , se_248_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*se_248_tbs/2
	.byte		VOICE , 48
	.byte		VOL   , 127*se_248_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 15
	.byte		BEND  , c_v+22
	.byte		N54   , Fn5 , v127
	.byte	W01
	.byte		VOL   , 125*se_248_mvl/mxv
	.byte		BEND  , c_v+22
	.byte	W01
	.byte		VOL   , 122*se_248_mvl/mxv
	.byte		BEND  , c_v+22
	.byte	W01
	.byte		VOL   , 121*se_248_mvl/mxv
	.byte		BEND  , c_v+21
	.byte	W01
	.byte		VOL   , 117*se_248_mvl/mxv
	.byte		BEND  , c_v+21
	.byte	W01
	.byte		VOL   , 116*se_248_mvl/mxv
	.byte		BEND  , c_v+20
	.byte	W01
	.byte		VOL   , 114*se_248_mvl/mxv
	.byte		BEND  , c_v+20
	.byte	W01
	.byte		VOL   , 112*se_248_mvl/mxv
	.byte		BEND  , c_v+20
	.byte	W01
	.byte		VOL   , 108*se_248_mvl/mxv
	.byte		BEND  , c_v+19
	.byte	W01
	.byte		VOL   , 107*se_248_mvl/mxv
	.byte		BEND  , c_v+19
	.byte	W01
	.byte		VOL   , 105*se_248_mvl/mxv
	.byte		BEND  , c_v+18
	.byte	W01
	.byte		VOL   , 103*se_248_mvl/mxv
	.byte		BEND  , c_v+18
	.byte	W01
	.byte		VOL   , 100*se_248_mvl/mxv
	.byte		BEND  , c_v+18
	.byte	W01
	.byte		VOL   , 98*se_248_mvl/mxv
	.byte		BEND  , c_v+17
	.byte	W01
	.byte		VOL   , 96*se_248_mvl/mxv
	.byte		BEND  , c_v+17
	.byte	W01
	.byte		VOL   , 93*se_248_mvl/mxv
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		VOL   , 91*se_248_mvl/mxv
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		VOL   , 89*se_248_mvl/mxv
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		VOL   , 87*se_248_mvl/mxv
	.byte		BEND  , c_v+15
	.byte	W01
	.byte		VOL   , 84*se_248_mvl/mxv
	.byte		BEND  , c_v+15
	.byte	W01
	.byte		VOL   , 82*se_248_mvl/mxv
	.byte		BEND  , c_v+14
	.byte	W01
	.byte		VOL   , 79*se_248_mvl/mxv
	.byte		BEND  , c_v+14
	.byte	W01
	.byte		VOL   , 78*se_248_mvl/mxv
	.byte		BEND  , c_v+14
	.byte	W01
	.byte		VOL   , 75*se_248_mvl/mxv
	.byte		BEND  , c_v+13
	.byte	W01
	.byte		VOL   , 73*se_248_mvl/mxv
	.byte		BEND  , c_v+13
	.byte	W01
	.byte		VOL   , 70*se_248_mvl/mxv
	.byte		BEND  , c_v+12
	.byte	W01
	.byte		VOL   , 69*se_248_mvl/mxv
	.byte		BEND  , c_v+12
	.byte	W01
	.byte		VOL   , 65*se_248_mvl/mxv
	.byte		BEND  , c_v+12
	.byte	W01
	.byte		VOL   , 64*se_248_mvl/mxv
	.byte		BEND  , c_v+11
	.byte	W01
	.byte		VOL   , 61*se_248_mvl/mxv
	.byte		BEND  , c_v+11
	.byte	W01
	.byte		VOL   , 59*se_248_mvl/mxv
	.byte		BEND  , c_v+10
	.byte	W01
	.byte		VOL   , 56*se_248_mvl/mxv
	.byte		BEND  , c_v+10
	.byte	W01
	.byte		VOL   , 55*se_248_mvl/mxv
	.byte		BEND  , c_v+10
	.byte	W01
	.byte		VOL   , 53*se_248_mvl/mxv
	.byte		BEND  , c_v+9
	.byte	W01
	.byte		VOL   , 50*se_248_mvl/mxv
	.byte		BEND  , c_v+9
	.byte	W01
	.byte		VOL   , 47*se_248_mvl/mxv
	.byte		BEND  , c_v+8
	.byte	W01
	.byte		VOL   , 46*se_248_mvl/mxv
	.byte		BEND  , c_v+8
	.byte	W01
	.byte		VOL   , 44*se_248_mvl/mxv
	.byte		BEND  , c_v+8
	.byte	W01
	.byte		VOL   , 41*se_248_mvl/mxv
	.byte		BEND  , c_v+7
	.byte	W01
	.byte		VOL   , 39*se_248_mvl/mxv
	.byte		BEND  , c_v+7
	.byte	W01
	.byte		VOL   , 37*se_248_mvl/mxv
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		VOL   , 35*se_248_mvl/mxv
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		VOL   , 32*se_248_mvl/mxv
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		VOL   , 30*se_248_mvl/mxv
	.byte		BEND  , c_v+5
	.byte	W01
	.byte		VOL   , 28*se_248_mvl/mxv
	.byte		BEND  , c_v+5
	.byte	W01
	.byte		VOL   , 25*se_248_mvl/mxv
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		VOL   , 23*se_248_mvl/mxv
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		VOL   , 21*se_248_mvl/mxv
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		VOL   , 18*se_248_mvl/mxv
	.byte		BEND  , c_v+3
	.byte	W01
	.byte		VOL   , 16*se_248_mvl/mxv
	.byte		BEND  , c_v+3
	.byte	W01
	.byte		VOL   , 14*se_248_mvl/mxv
	.byte		BEND  , c_v+2
	.byte	W01
	.byte		VOL   , 12*se_248_mvl/mxv
	.byte		BEND  , c_v+2
	.byte	W01
	.byte		VOL   , 9*se_248_mvl/mxv
	.byte		BEND  , c_v+2
	.byte	W01
	.byte		VOL   , 7*se_248_mvl/mxv
	.byte		BEND  , c_v+1
	.byte	W01
	.byte		VOL   , 0*se_248_mvl/mxv
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_248):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_248_pri	/* Priority */
	.byte	se_248_rev	/* Reverb */

mAlignWord
	mPtr	se_248_grp

	mPtr	se_248_1

	.end
