	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_rings_lost_grp, voicegroup003
	.equ	se_rings_lost_pri, 20
	.equ	se_rings_lost_rev, reverb_set+0
	.equ	se_rings_lost_mvl, 127
	.equ	se_rings_lost_key, 0
	.equ	se_rings_lost_tbs, 1
	.equ	se_rings_lost_exg, 1
	.equ	se_rings_lost_cmp, 1

	mSectionRodata
	.global	C_DECL(se_rings_lost)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_rings_lost_1:
	.byte	KEYSH , se_rings_lost_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 150*se_rings_lost_tbs/2
	.byte		VOICE , 3
	.byte		VOL   , 127*se_rings_lost_mvl/mxv
	.byte		N84   , Cn3 , v127
	.byte	W84
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_rings_lost):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_rings_lost_pri	/* Priority */
	.byte	se_rings_lost_rev	/* Reverb */

mAlignWord
	mPtr	se_rings_lost_grp

	mPtr	se_rings_lost_1

	.end
