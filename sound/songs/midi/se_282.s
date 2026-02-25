	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_282_grp, voicegroup005
	.equ	se_282_pri, 20
	.equ	se_282_rev, reverb_set+0
	.equ	se_282_mvl, 90
	.equ	se_282_key, 0
	.equ	se_282_tbs, 1
	.equ	se_282_exg, 1
	.equ	se_282_cmp, 1

	mSectionRodata
	.global	C_DECL(se_282)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_282_1:
	.byte	KEYSH , se_282_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*se_282_tbs/2
	.byte		VOICE , 82
	.byte		MOD   , 13
	.byte		VOL   , 127*se_282_mvl/mxv
	.byte		LFOS  , 84
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		TIE   , An3 , v127
	.byte	W96
se_282_1_B1:
/* 001   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	se_282_1_B1
se_282_1_B2:
/* 002   ----------------------------------------
 */	.byte	W06
	.byte		EOT   , An3 
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_282):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_282_pri	/* Priority */
	.byte	se_282_rev	/* Reverb */

mAlignWord
	mPtr	se_282_grp

	mPtr	se_282_1

	.end
