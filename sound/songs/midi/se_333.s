	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_333_grp, voicegroup005
	.equ	se_333_pri, 20
	.equ	se_333_rev, reverb_set+0
	.equ	se_333_mvl, 120
	.equ	se_333_key, 0
	.equ	se_333_tbs, 1
	.equ	se_333_exg, 1
	.equ	se_333_cmp, 1

	mSectionRodata
	.global	C_DECL(se_333)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_333_1:
	.byte	KEYSH , se_333_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*se_333_tbs/2
	.byte		VOICE , 105
	.byte		VOL   , 127*se_333_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		MOD   , 45
	.byte		BENDR , 15
	.byte		LFOS  , 60
	.byte		MODT  , 0
	.byte		TIE   , As2 , v084
	.byte	W03
	.byte		BEND  , c_v-6
	.byte	W03
	.byte		VOL   , 127*se_333_mvl/mxv
	.byte		BEND  , c_v+35
	.byte	W03
	.byte		        c_v+8
	.byte	W03
	.byte		VOL   , 127*se_333_mvl/mxv
	.byte		BEND  , c_v+8
	.byte	W03
	.byte		        c_v+40
	.byte	W03
	.byte		VOL   , 127*se_333_mvl/mxv
	.byte		BEND  , c_v+17
	.byte	W03
	.byte		        c_v+14
	.byte	W03
	.byte		VOL   , 127*se_333_mvl/mxv
	.byte		BEND  , c_v+11
	.byte	W03
	.byte		        c_v+7
	.byte	W03
	.byte		VOL   , 127*se_333_mvl/mxv
	.byte		BEND  , c_v+4
	.byte	W03
	.byte		        c_v+1
	.byte	W03
	.byte		VOL   , 127*se_333_mvl/mxv
	.byte		BEND  , c_v-3
	.byte	W03
	.byte		        c_v-6
	.byte	W03
	.byte		VOL   , 127*se_333_mvl/mxv
	.byte		BEND  , c_v-10
	.byte	W03
	.byte		        c_v-13
	.byte	W03
	.byte		VOL   , 127*se_333_mvl/mxv
	.byte		BEND  , c_v-16
	.byte	W03
	.byte		        c_v-20
	.byte	W03
	.byte		VOL   , 127*se_333_mvl/mxv
	.byte		BEND  , c_v-23
	.byte	W03
	.byte		        c_v-26
	.byte	W03
	.byte		VOL   , 116*se_333_mvl/mxv
	.byte		BEND  , c_v-30
	.byte	W03
	.byte		        c_v-33
	.byte	W03
	.byte		VOL   , 104*se_333_mvl/mxv
	.byte		BEND  , c_v-37
	.byte	W03
	.byte		        c_v-40
	.byte	W03
	.byte		VOL   , 93*se_333_mvl/mxv
	.byte		BEND  , c_v-43
	.byte	W03
	.byte		        c_v-47
	.byte	W03
	.byte		VOL   , 81*se_333_mvl/mxv
	.byte		BEND  , c_v-50
	.byte	W03
	.byte		        c_v-53
	.byte	W03
	.byte		VOL   , 70*se_333_mvl/mxv
	.byte		BEND  , c_v-57
	.byte	W03
	.byte		        c_v-60
	.byte	W03
	.byte		VOL   , 58*se_333_mvl/mxv
	.byte		BEND  , c_v-64
	.byte	W06
/* 001   ----------------------------------------
 */	.byte		VOL   , 47*se_333_mvl/mxv
	.byte	W06
	.byte		        35*se_333_mvl/mxv
	.byte	W06
	.byte		        24*se_333_mvl/mxv
	.byte	W06
	.byte		        12*se_333_mvl/mxv
	.byte	W06
	.byte		        0*se_333_mvl/mxv
	.byte	W24
	.byte	W01
	.byte		EOT   
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_333):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_333_pri	/* Priority */
	.byte	se_333_rev	/* Reverb */

mAlignWord
	mPtr	se_333_grp

	mPtr	se_333_1

	.end
