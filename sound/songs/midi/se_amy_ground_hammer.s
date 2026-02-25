	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_amy_ground_hammer_grp, voicegroup003
	.equ	se_amy_ground_hammer_pri, 20
	.equ	se_amy_ground_hammer_rev, reverb_set+0
	.equ	se_amy_ground_hammer_mvl, 120
	.equ	se_amy_ground_hammer_key, 0
	.equ	se_amy_ground_hammer_tbs, 1
	.equ	se_amy_ground_hammer_exg, 1
	.equ	se_amy_ground_hammer_cmp, 1

	mSectionRodata
	.global	C_DECL(se_amy_ground_hammer)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_amy_ground_hammer_1:
	.byte	KEYSH , se_amy_ground_hammer_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 150*se_amy_ground_hammer_tbs/2
	.byte		VOICE , 116
	.byte		VOL   , 127*se_amy_ground_hammer_mvl/mxv
	.byte		N84   , Cn3 , v127
	.byte	W84
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_amy_ground_hammer):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_amy_ground_hammer_pri	/* Priority */
	.byte	se_amy_ground_hammer_rev	/* Reverb */

mAlignWord
	mPtr	se_amy_ground_hammer_grp

	mPtr	se_amy_ground_hammer_1

	.end
