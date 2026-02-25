	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	voice__announcer__tails_grp, voicegroup005
	.equ	voice__announcer__tails_pri, 20
	.equ	voice__announcer__tails_rev, reverb_set+0
	.equ	voice__announcer__tails_mvl, 127
	.equ	voice__announcer__tails_key, 0
	.equ	voice__announcer__tails_tbs, 1
	.equ	voice__announcer__tails_exg, 1
	.equ	voice__announcer__tails_cmp, 1

	mSectionRodata
	.global	C_DECL(voice__announcer__tails)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

voice__announcer__tails_1:
	.byte	KEYSH , voice__announcer__tails_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 74*voice__announcer__tails_tbs/2
	.byte		VOICE , 3
	.byte		VOL   , 127*voice__announcer__tails_mvl/mxv
	.byte		N84   , Cn3 , v127
	.byte	W84
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(voice__announcer__tails):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	voice__announcer__tails_pri	/* Priority */
	.byte	voice__announcer__tails_rev	/* Reverb */

mAlignWord
	mPtr	voice__announcer__tails_grp

	mPtr	voice__announcer__tails_1

	.end
