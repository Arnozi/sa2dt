	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_217_grp, voicegroup005
	.equ	se_217_pri, 20
	.equ	se_217_rev, reverb_set+0
	.equ	se_217_mvl, 98
	.equ	se_217_key, 0
	.equ	se_217_tbs, 1
	.equ	se_217_exg, 1
	.equ	se_217_cmp, 1

	mSectionRodata
	.global	C_DECL(se_217)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_217_1:
	.byte	KEYSH , se_217_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 74*se_217_tbs/2
	.byte		VOICE , 17
	.byte		VOL   , 127*se_217_mvl/mxv
	.byte		LFOS  , 48
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 16
	.byte		BEND  , c_v-55
	.byte		N30   , Gs1 , v104
	.byte	W01
	.byte		VOL   , 125*se_217_mvl/mxv
	.byte	W01
	.byte		        121*se_217_mvl/mxv
	.byte	W01
	.byte		        118*se_217_mvl/mxv
	.byte		BEND  , c_v-10
	.byte	W01
	.byte		VOL   , 116*se_217_mvl/mxv
	.byte	W01
	.byte		        113*se_217_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-10
	.byte	W03
	.byte		        c_v+35
	.byte	W03
	.byte		        c_v+58
	.byte	W03
	.byte		        c_v+58
	.byte	W03
	.byte		        c_v+53
	.byte	W03
	.byte		        c_v+31
	.byte	W03
	.byte		        c_v-19
	.byte	W03
	.byte		        c_v-37
	.byte	W03
	.byte		        c_v-37
	.byte	W03
	.byte		        c_v-33
	.byte	W03
	.byte		        c_v-24
	.byte	W03
	.byte		        c_v+4
	.byte	W03
	.byte		        c_v+63
	.byte	W03
	.byte		        c_v+63
	.byte	W03
	.byte		        c_v+63
	.byte	W03
	.byte		        c_v+63
	.byte	W03
	.byte		        c_v+63
	.byte	W03
	.byte		        c_v+63
	.byte	W03
	.byte		        c_v+58
	.byte	W03
	.byte		        c_v+22
	.byte	W03
	.byte		        c_v-37
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_217):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_217_pri	/* Priority */
	.byte	se_217_rev	/* Reverb */

mAlignWord
	mPtr	se_217_grp

	mPtr	se_217_1

	.end
