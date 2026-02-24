	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_267_grp, voicegroup005
	.equ	se_267_pri, 20
	.equ	se_267_rev, reverb_set+0
	.equ	se_267_mvl, 100
	.equ	se_267_key, 0
	.equ	se_267_tbs, 1
	.equ	se_267_exg, 1
	.equ	se_267_cmp, 1

	mSectionRodata
	.global	C_DECL(se_267)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_267_1:
	.byte	KEYSH , se_267_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*se_267_tbs/2
	.byte		VOICE , 67
	.byte		VOL   , 127*se_267_mvl/mxv
	.byte		LFOS  , 84
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 77
	.byte		N18   , Gn2 , v127
	.byte	W18
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_267):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_267_pri	/* Priority */
	.byte	se_267_rev	/* Reverb */

mAlignWord
	mPtr	se_267_grp

	mPtr	se_267_1

	.end
