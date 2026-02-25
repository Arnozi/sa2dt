	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_126_grp, voicegroup003
	.equ	se_126_pri, 30
	.equ	se_126_rev, reverb_set+0
	.equ	se_126_mvl, 110
	.equ	se_126_key, 0
	.equ	se_126_tbs, 1
	.equ	se_126_exg, 1
	.equ	se_126_cmp, 1

	mSectionRodata
	.global	C_DECL(se_126)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_126_1:
	.byte	KEYSH , se_126_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*se_126_tbs/2
	.byte		VOICE , 19
	.byte		VOL   , 127*se_126_mvl/mxv
	.byte		BENDR , 10
	.byte		LFOS  , 17
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 77
	.byte		BEND  , c_v-28
	.byte		N01   , Gs3 , v127
	.byte	W01
	.byte		VOL   , 127*se_126_mvl/mxv
	.byte		BEND  , c_v-27
	.byte	W01
	.byte		VOL   , 127*se_126_mvl/mxv
	.byte		BEND  , c_v-26
	.byte		N06   , Ds3 
	.byte	W01
	.byte		VOL   , 127*se_126_mvl/mxv
	.byte		BEND  , c_v-25
	.byte	W01
	.byte		VOL   , 117*se_126_mvl/mxv
	.byte		BEND  , c_v-24
	.byte	W01
	.byte		VOL   , 112*se_126_mvl/mxv
	.byte		BEND  , c_v-23
	.byte	W01
	.byte		VOL   , 107*se_126_mvl/mxv
	.byte		BEND  , c_v-22
	.byte	W01
	.byte		VOL   , 102*se_126_mvl/mxv
	.byte		BEND  , c_v-21
	.byte	W01
	.byte		VOL   , 97*se_126_mvl/mxv
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		VOL   , 92*se_126_mvl/mxv
	.byte		BEND  , c_v-18
	.byte	W01
	.byte		VOL   , 87*se_126_mvl/mxv
	.byte		BEND  , c_v-17
	.byte	W01
	.byte		VOL   , 82*se_126_mvl/mxv
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		VOL   , 77*se_126_mvl/mxv
	.byte		BEND  , c_v-15
	.byte	W01
	.byte		VOL   , 72*se_126_mvl/mxv
	.byte		BEND  , c_v-14
	.byte	W01
	.byte		VOL   , 67*se_126_mvl/mxv
	.byte		BEND  , c_v-13
	.byte	W01
	.byte		VOL   , 62*se_126_mvl/mxv
	.byte		BEND  , c_v-12
	.byte	W01
	.byte		VOL   , 57*se_126_mvl/mxv
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		VOL   , 52*se_126_mvl/mxv
	.byte		BEND  , c_v-10
	.byte	W01
	.byte		VOL   , 47*se_126_mvl/mxv
	.byte		BEND  , c_v-8
	.byte	W01
	.byte		VOL   , 42*se_126_mvl/mxv
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		VOL   , 27*se_126_mvl/mxv
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		VOL   , 26*se_126_mvl/mxv
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		VOL   , 25*se_126_mvl/mxv
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		VOL   , 22*se_126_mvl/mxv
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		VOL   , 22*se_126_mvl/mxv
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		VOL   , 20*se_126_mvl/mxv
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		VOL   , 19*se_126_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 18*se_126_mvl/mxv
	.byte		BEND  , c_v+2
	.byte	W01
	.byte		VOL   , 16*se_126_mvl/mxv
	.byte		BEND  , c_v+3
	.byte	W01
	.byte		VOL   , 14*se_126_mvl/mxv
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		VOL   , 13*se_126_mvl/mxv
	.byte		BEND  , c_v+5
	.byte	W01
	.byte		VOL   , 12*se_126_mvl/mxv
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		VOL   , 10*se_126_mvl/mxv
	.byte		BEND  , c_v+7
	.byte	W01
	.byte		VOL   , 9*se_126_mvl/mxv
	.byte		BEND  , c_v+8
	.byte	W01
	.byte		VOL   , 7*se_126_mvl/mxv
	.byte		BEND  , c_v+9
	.byte	W01
	.byte		VOL   , 6*se_126_mvl/mxv
	.byte		BEND  , c_v+10
	.byte	W01
	.byte		VOL   , 5*se_126_mvl/mxv
	.byte		BEND  , c_v+12
	.byte	W01
	.byte		        c_v+13
	.byte	W01
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+15
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_126):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_126_pri	/* Priority */
	.byte	se_126_rev	/* Reverb */

mAlignWord
	mPtr	se_126_grp

	mPtr	se_126_1

	.end
