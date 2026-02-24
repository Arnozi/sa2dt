	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_144_grp, voicegroup003
	.equ	se_144_pri, 20
	.equ	se_144_rev, reverb_set+0
	.equ	se_144_mvl, 120
	.equ	se_144_key, 0
	.equ	se_144_tbs, 1
	.equ	se_144_exg, 1
	.equ	se_144_cmp, 1

	mSectionRodata
	.global	C_DECL(se_144)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_144_1:
	.byte	KEYSH , se_144_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*se_144_tbs/2
	.byte		VOICE , 27
	.byte		VOL   , 127*se_144_mvl/mxv
	.byte		LFOS  , 84
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 77
	.byte		N18   , Gn2 , v127
	.byte	W18
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_144):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_144_pri	/* Priority */
	.byte	se_144_rev	/* Reverb */

mAlignWord
	mPtr	se_144_grp

	mPtr	se_144_1

	.end
