	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_127_grp, voicegroup003
	.equ	se_127_pri, 30
	.equ	se_127_rev, reverb_set+0
	.equ	se_127_mvl, 120
	.equ	se_127_key, 0
	.equ	se_127_tbs, 1
	.equ	se_127_exg, 1
	.equ	se_127_cmp, 1

	mSectionRodata
	.global	C_DECL(se_127)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_127_1:
	.byte	KEYSH , se_127_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*se_127_tbs/2
	.byte		VOICE , 19
	.byte		VOL   , 127*se_127_mvl/mxv
	.byte		BENDR , 10
	.byte		LFOS  , 17
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 77
	.byte		BEND  , c_v-28
	.byte		N02   , Cn3 , v127
	.byte	W01
	.byte		VOL   , 126*se_127_mvl/mxv
	.byte		BEND  , c_v-27
	.byte	W01
	.byte		VOL   , 124*se_127_mvl/mxv
	.byte		BEND  , c_v-26
	.byte	W01
	.byte		VOL   , 122*se_127_mvl/mxv
	.byte		BEND  , c_v-25
	.byte	W01
	.byte		VOL   , 120*se_127_mvl/mxv
	.byte		BEND  , c_v-24
	.byte		N02   , Gs3 
	.byte	W01
	.byte		VOL   , 118*se_127_mvl/mxv
	.byte		BEND  , c_v-23
	.byte	W01
	.byte		VOL   , 116*se_127_mvl/mxv
	.byte		BEND  , c_v-22
	.byte	W01
	.byte		VOL   , 114*se_127_mvl/mxv
	.byte		BEND  , c_v-21
	.byte		N02   , Gs2 
	.byte	W01
	.byte		VOL   , 112*se_127_mvl/mxv
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		VOL   , 110*se_127_mvl/mxv
	.byte		BEND  , c_v-18
	.byte	W01
	.byte		VOL   , 108*se_127_mvl/mxv
	.byte		BEND  , c_v-17
	.byte		N02   , Ds3 
	.byte	W01
	.byte		VOL   , 106*se_127_mvl/mxv
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		VOL   , 104*se_127_mvl/mxv
	.byte		BEND  , c_v-15
	.byte	W01
	.byte		VOL   , 102*se_127_mvl/mxv
	.byte		BEND  , c_v-14
	.byte	W01
	.byte		VOL   , 101*se_127_mvl/mxv
	.byte		BEND  , c_v-13
	.byte	W01
	.byte		VOL   , 99*se_127_mvl/mxv
	.byte		BEND  , c_v-12
	.byte		N09   , Fs3 
	.byte	W01
	.byte		VOL   , 97*se_127_mvl/mxv
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		VOL   , 95*se_127_mvl/mxv
	.byte		BEND  , c_v-10
	.byte	W01
	.byte		VOL   , 93*se_127_mvl/mxv
	.byte		BEND  , c_v-8
	.byte	W01
	.byte		VOL   , 90*se_127_mvl/mxv
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		VOL   , 89*se_127_mvl/mxv
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		VOL   , 87*se_127_mvl/mxv
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		VOL   , 85*se_127_mvl/mxv
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		VOL   , 83*se_127_mvl/mxv
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		VOL   , 81*se_127_mvl/mxv
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		VOL   , 79*se_127_mvl/mxv
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		VOL   , 77*se_127_mvl/mxv
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		VOL   , 76*se_127_mvl/mxv
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		VOL   , 74*se_127_mvl/mxv
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		VOL   , 72*se_127_mvl/mxv
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		VOL   , 70*se_127_mvl/mxv
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		VOL   , 68*se_127_mvl/mxv
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		VOL   , 66*se_127_mvl/mxv
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		VOL   , 64*se_127_mvl/mxv
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		VOL   , 62*se_127_mvl/mxv
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		VOL   , 60*se_127_mvl/mxv
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		VOL   , 58*se_127_mvl/mxv
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-19
	.byte	W03
	.byte		VOL   , 47*se_127_mvl/mxv
	.byte	W06
	.byte		        35*se_127_mvl/mxv
	.byte	W06
	.byte		        24*se_127_mvl/mxv
	.byte	W06
	.byte		        12*se_127_mvl/mxv
	.byte	W06
	.byte		        0*se_127_mvl/mxv
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_127):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_127_pri	/* Priority */
	.byte	se_127_rev	/* Reverb */

mAlignWord
	mPtr	se_127_grp

	mPtr	se_127_1

	.end
