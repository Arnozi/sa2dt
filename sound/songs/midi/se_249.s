	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_249_grp, voicegroup005
	.equ	se_249_pri, 20
	.equ	se_249_rev, reverb_set+0
	.equ	se_249_mvl, 100
	.equ	se_249_key, 0
	.equ	se_249_tbs, 1
	.equ	se_249_exg, 1
	.equ	se_249_cmp, 1

	mSectionRodata
	.global	C_DECL(se_249)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_249_1:
	.byte	KEYSH , se_249_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*se_249_tbs/2
	.byte		VOICE , 49
	.byte		VOL   , 127*se_249_mvl/mxv
	.byte		LFOS  , 84
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 77
	.byte		N18   , Gn2 , v127
	.byte	W18
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_249):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_249_pri	/* Priority */
	.byte	se_249_rev	/* Reverb */

mAlignWord
	mPtr	se_249_grp

	mPtr	se_249_1

	.end
