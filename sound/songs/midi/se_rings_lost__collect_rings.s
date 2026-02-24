	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_rings_lost__collect_rings_grp, voicegroup003
	.equ	se_rings_lost__collect_rings_pri, 20
	.equ	se_rings_lost__collect_rings_rev, reverb_set+0
	.equ	se_rings_lost__collect_rings_mvl, 127
	.equ	se_rings_lost__collect_rings_key, 0
	.equ	se_rings_lost__collect_rings_tbs, 1
	.equ	se_rings_lost__collect_rings_exg, 1
	.equ	se_rings_lost__collect_rings_cmp, 1

	mSectionRodata
	.global	C_DECL(se_rings_lost__collect_rings)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_rings_lost__collect_rings_1:
	.byte	KEYSH , se_rings_lost__collect_rings_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 150*se_rings_lost__collect_rings_tbs/2
	.byte		VOICE , 3
	.byte		VOL   , 127*se_rings_lost__collect_rings_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		N48   , Cn3 , v112
	.byte	W48
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_rings_lost__collect_rings):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_rings_lost__collect_rings_pri	/* Priority */
	.byte	se_rings_lost__collect_rings_rev	/* Reverb */

mAlignWord
	mPtr	se_rings_lost__collect_rings_grp

	mPtr	se_rings_lost__collect_rings_1

	.end
