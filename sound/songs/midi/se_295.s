	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_295_grp, voicegroup005
	.equ	se_295_pri, 20
	.equ	se_295_rev, reverb_set+0
	.equ	se_295_mvl, 100
	.equ	se_295_key, 0
	.equ	se_295_tbs, 1
	.equ	se_295_exg, 1
	.equ	se_295_cmp, 1

	mSectionRodata
	.global	C_DECL(se_295)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_295_1:
	.byte	KEYSH , se_295_key+0
se_295_1_B1:
/* 000   ----------------------------------------
 */	.byte	TEMPO , 74*se_295_tbs/2
	.byte		VOICE , 95
	.byte		MOD   , 95
	.byte		VOL   , 127*se_295_mvl/mxv
	.byte		N84   , Fn6 , v127
	.byte	W72
	.byte	GOTO
	 mPtr	se_295_1_B1
se_295_1_B2:
	.byte	W12
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_295):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_295_pri	/* Priority */
	.byte	se_295_rev	/* Reverb */

mAlignWord
	mPtr	se_295_grp

	mPtr	se_295_1

	.end
