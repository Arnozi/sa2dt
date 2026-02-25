	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_156_grp, voicegroup000
	.equ	se_156_pri, 20
	.equ	se_156_rev, reverb_set+0
	.equ	se_156_mvl, 90
	.equ	se_156_key, 0
	.equ	se_156_tbs, 1
	.equ	se_156_exg, 1
	.equ	se_156_cmp, 1

	mSectionRodata
	.global	C_DECL(se_156)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_156_1:
	.byte	KEYSH , se_156_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*se_156_tbs/2
	.byte		VOICE , 50
	.byte		VOL   , 127*se_156_mvl/mxv
	.byte		LFOS  , 30
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 60
	.byte		BEND  , c_v-64
	.byte		N02   , Gn2 , v127
	.byte	W01
	.byte		VOL   , 127*se_156_mvl/mxv
	.byte		BEND  , c_v-59
	.byte	W01
	.byte		VOL   , 127*se_156_mvl/mxv
	.byte		BEND  , c_v-54
	.byte	W01
	.byte		VOL   , 127*se_156_mvl/mxv
	.byte		BEND  , c_v-49
	.byte		N02   , Fs3 
	.byte	W01
	.byte		VOL   , 116*se_156_mvl/mxv
	.byte		BEND  , c_v-43
	.byte	W01
	.byte		VOL   , 112*se_156_mvl/mxv
	.byte		BEND  , c_v-38
	.byte	W01
	.byte		VOL   , 106*se_156_mvl/mxv
	.byte		BEND  , c_v-33
	.byte	W01
	.byte		VOL   , 102*se_156_mvl/mxv
	.byte		BEND  , c_v-27
	.byte		N44   , An3 
	.byte	W01
	.byte		VOL   , 96*se_156_mvl/mxv
	.byte		BEND  , c_v-22
	.byte	W01
	.byte		VOL   , 92*se_156_mvl/mxv
	.byte		BEND  , c_v-17
	.byte	W01
	.byte		VOL   , 87*se_156_mvl/mxv
	.byte		BEND  , c_v-12
	.byte	W01
	.byte		VOL   , 82*se_156_mvl/mxv
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		VOL   , 77*se_156_mvl/mxv
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		VOL   , 72*se_156_mvl/mxv
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		VOL   , 67*se_156_mvl/mxv
	.byte		BEND  , c_v+10
	.byte	W01
	.byte		VOL   , 61*se_156_mvl/mxv
	.byte		BEND  , c_v+15
	.byte	W01
	.byte		VOL   , 57*se_156_mvl/mxv
	.byte		BEND  , c_v+20
	.byte	W01
	.byte		VOL   , 51*se_156_mvl/mxv
	.byte		BEND  , c_v+25
	.byte	W01
	.byte		VOL   , 47*se_156_mvl/mxv
	.byte		BEND  , c_v+31
	.byte	W01
	.byte		VOL   , 41*se_156_mvl/mxv
	.byte		BEND  , c_v+36
	.byte	W01
	.byte		VOL   , 27*se_156_mvl/mxv
	.byte		BEND  , c_v+41
	.byte	W01
	.byte		VOL   , 26*se_156_mvl/mxv
	.byte		BEND  , c_v+47
	.byte	W01
	.byte		VOL   , 24*se_156_mvl/mxv
	.byte		BEND  , c_v+52
	.byte	W01
	.byte		VOL   , 23*se_156_mvl/mxv
	.byte	W01
	.byte		        22*se_156_mvl/mxv
	.byte	W01
	.byte		        20*se_156_mvl/mxv
	.byte	W01
	.byte		        19*se_156_mvl/mxv
	.byte	W01
	.byte		        17*se_156_mvl/mxv
	.byte	W01
	.byte		        16*se_156_mvl/mxv
	.byte	W01
	.byte		        15*se_156_mvl/mxv
	.byte	W01
	.byte		        13*se_156_mvl/mxv
	.byte	W01
	.byte		        12*se_156_mvl/mxv
	.byte	W01
	.byte		        10*se_156_mvl/mxv
	.byte	W01
	.byte		        9*se_156_mvl/mxv
	.byte	W01
	.byte		        8*se_156_mvl/mxv
	.byte	W01
	.byte		        6*se_156_mvl/mxv
	.byte	W01
	.byte		        5*se_156_mvl/mxv
	.byte	W15
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_156):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_156_pri	/* Priority */
	.byte	se_156_rev	/* Reverb */

mAlignWord
	mPtr	se_156_grp

	mPtr	se_156_1

	.end
