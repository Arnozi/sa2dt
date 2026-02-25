	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_checkpoint_grp, voicegroup000
	.equ	se_checkpoint_pri, 20
	.equ	se_checkpoint_rev, reverb_set+0
	.equ	se_checkpoint_mvl, 90
	.equ	se_checkpoint_key, 0
	.equ	se_checkpoint_tbs, 1
	.equ	se_checkpoint_exg, 1
	.equ	se_checkpoint_cmp, 1

	mSectionRodata
	.global	C_DECL(se_checkpoint)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_checkpoint_1:
	.byte	KEYSH , se_checkpoint_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*se_checkpoint_tbs/2
	.byte		VOICE , 64
	.byte		VOL   , 127*se_checkpoint_mvl/mxv
	.byte		LFOS  , 15
	.byte		BENDR , 15
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N05   , Cn5 , v127
	.byte	W05
	.byte		N24   , An4 
	.byte	W24
	.byte	W01
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_checkpoint):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_checkpoint_pri	/* Priority */
	.byte	se_checkpoint_rev	/* Reverb */

mAlignWord
	mPtr	se_checkpoint_grp

	mPtr	se_checkpoint_1

	.end
