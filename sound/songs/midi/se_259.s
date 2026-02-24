	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_259_grp, voicegroup005
	.equ	se_259_pri, 20
	.equ	se_259_rev, reverb_set+0
	.equ	se_259_mvl, 100
	.equ	se_259_key, 0
	.equ	se_259_tbs, 1
	.equ	se_259_exg, 1
	.equ	se_259_cmp, 1

	mSectionRodata
	.global	C_DECL(se_259)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_259_1:
	.byte	KEYSH , se_259_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*se_259_tbs/2
	.byte		VOICE , 59
	.byte		MOD   , 30
	.byte		VOL   , 127*se_259_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		MOD   , 21
	.byte		BENDR , 19
	.byte		LFOS  , 60
	.byte		MODT  , 0
	.byte		TIE   , Gs2 , v080
	.byte	W24
se_259_1_B1:
	.byte	W72
/* 001   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	se_259_1_B1
se_259_1_B2:
/* 002   ----------------------------------------
 */	.byte	W13
	.byte		EOT   , Gs2 
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_259):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_259_pri	/* Priority */
	.byte	se_259_rev	/* Reverb */

mAlignWord
	mPtr	se_259_grp

	mPtr	se_259_1

	.end
