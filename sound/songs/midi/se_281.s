	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_281_grp, voicegroup005
	.equ	se_281_pri, 20
	.equ	se_281_rev, reverb_set+0
	.equ	se_281_mvl, 90
	.equ	se_281_key, 0
	.equ	se_281_tbs, 1
	.equ	se_281_exg, 1
	.equ	se_281_cmp, 1

	mSectionRodata
	.global	C_DECL(se_281)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_281_1:
	.byte	KEYSH , se_281_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*se_281_tbs/2
	.byte		VOICE , 81
	.byte		PAN   , c_v+0
	.byte		MOD   , 43
	.byte		LFOS  , 7
	.byte		MODT  , 0
	.byte		BENDR , 10
	.byte		VOL   , 127*se_281_mvl/mxv
	.byte		TIE   , As3 , v127
	.byte	W24
se_281_1_B1:
	.byte	W72
/* 001   ----------------------------------------
 */	.byte	W72
	.byte	GOTO
	 mPtr	se_281_1_B1
se_281_1_B2:
	.byte	W24
	.byte		EOT   , As3 
/* 002   ----------------------------------------
 */	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_281):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_281_pri	/* Priority */
	.byte	se_281_rev	/* Reverb */

mAlignWord
	mPtr	se_281_grp

	mPtr	se_281_1

	.end
