	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_ring_grp, voicegroup003
	.equ	se_ring_pri, 20
	.equ	se_ring_rev, reverb_set+0
	.equ	se_ring_mvl, 100
	.equ	se_ring_key, 0
	.equ	se_ring_tbs, 1
	.equ	se_ring_exg, 1
	.equ	se_ring_cmp, 1

	mSectionRodata
	.global	C_DECL(se_ring)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_ring_1:
	.byte	KEYSH , se_ring_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 150*se_ring_tbs/2
	.byte		VOICE , 2
	.byte		VOL   , 127*se_ring_mvl/mxv
	.byte		N48   , Cn3 , v127
	.byte	W48
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_ring):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_ring_pri	/* Priority */
	.byte	se_ring_rev	/* Reverb */

mAlignWord
	mPtr	se_ring_grp

	mPtr	se_ring_1

	.end
