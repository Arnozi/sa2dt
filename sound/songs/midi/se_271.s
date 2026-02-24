	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_271_grp, voicegroup005
	.equ	se_271_pri, 20
	.equ	se_271_rev, reverb_set+0
	.equ	se_271_mvl, 100
	.equ	se_271_key, 0
	.equ	se_271_tbs, 1
	.equ	se_271_exg, 1
	.equ	se_271_cmp, 1

	mSectionRodata
	.global	C_DECL(se_271)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_271_1:
	.byte	KEYSH , se_271_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*se_271_tbs/2
	.byte		VOICE , 71
	.byte		VOL   , 127*se_271_mvl/mxv
	.byte		LFOS  , 30
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		BEND  , c_v-64
	.byte		N02   , Gn2 , v127
	.byte	W01
	.byte		VOL   , 127*se_271_mvl/mxv
	.byte		BEND  , c_v-59
	.byte	W01
	.byte		VOL   , 127*se_271_mvl/mxv
	.byte		BEND  , c_v-54
	.byte	W01
	.byte		VOL   , 127*se_271_mvl/mxv
	.byte		BEND  , c_v-49
	.byte		N02   , Gs3 
	.byte	W01
	.byte		VOL   , 117*se_271_mvl/mxv
	.byte		BEND  , c_v-43
	.byte	W01
	.byte		VOL   , 112*se_271_mvl/mxv
	.byte		BEND  , c_v-38
	.byte	W01
	.byte		VOL   , 107*se_271_mvl/mxv
	.byte		BEND  , c_v-33
	.byte	W01
	.byte		VOL   , 102*se_271_mvl/mxv
	.byte		BEND  , c_v-27
	.byte		N11   , Bn2 
	.byte	W01
	.byte		VOL   , 97*se_271_mvl/mxv
	.byte		BEND  , c_v-22
	.byte	W01
	.byte		VOL   , 92*se_271_mvl/mxv
	.byte		BEND  , c_v-17
	.byte	W01
	.byte		VOL   , 87*se_271_mvl/mxv
	.byte		BEND  , c_v-12
	.byte	W01
	.byte		VOL   , 82*se_271_mvl/mxv
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		VOL   , 77*se_271_mvl/mxv
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		VOL   , 72*se_271_mvl/mxv
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		VOL   , 67*se_271_mvl/mxv
	.byte		BEND  , c_v+10
	.byte	W01
	.byte		VOL   , 61*se_271_mvl/mxv
	.byte		BEND  , c_v+15
	.byte	W01
	.byte		VOL   , 56*se_271_mvl/mxv
	.byte		BEND  , c_v+20
	.byte	W01
	.byte		VOL   , 51*se_271_mvl/mxv
	.byte		BEND  , c_v+25
	.byte	W01
	.byte		VOL   , 47*se_271_mvl/mxv
	.byte		BEND  , c_v+31
	.byte	W01
	.byte		VOL   , 42*se_271_mvl/mxv
	.byte		BEND  , c_v+36
	.byte		N36   , Gn2 
	.byte	W01
	.byte		VOL   , 27*se_271_mvl/mxv
	.byte		BEND  , c_v+41
	.byte	W01
	.byte		VOL   , 26*se_271_mvl/mxv
	.byte		BEND  , c_v+47
	.byte	W01
	.byte		VOL   , 25*se_271_mvl/mxv
	.byte		BEND  , c_v+52
	.byte	W01
	.byte		VOL   , 23*se_271_mvl/mxv
	.byte	W01
	.byte		        22*se_271_mvl/mxv
	.byte	W01
	.byte		        20*se_271_mvl/mxv
	.byte	W01
	.byte		        18*se_271_mvl/mxv
	.byte	W01
	.byte		        18*se_271_mvl/mxv
	.byte	W01
	.byte		        16*se_271_mvl/mxv
	.byte	W01
	.byte		        14*se_271_mvl/mxv
	.byte	W01
	.byte		        13*se_271_mvl/mxv
	.byte	W01
	.byte		        12*se_271_mvl/mxv
	.byte	W01
	.byte		        9*se_271_mvl/mxv
	.byte	W01
	.byte		        9*se_271_mvl/mxv
	.byte	W01
	.byte		        8*se_271_mvl/mxv
	.byte	W01
	.byte		        6*se_271_mvl/mxv
	.byte	W01
	.byte		        4*se_271_mvl/mxv
	.byte	W21
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_271):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_271_pri	/* Priority */
	.byte	se_271_rev	/* Reverb */

mAlignWord
	mPtr	se_271_grp

	mPtr	se_271_1

	.end
