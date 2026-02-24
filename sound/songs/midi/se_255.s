	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_255_grp, voicegroup005
	.equ	se_255_pri, 20
	.equ	se_255_rev, reverb_set+0
	.equ	se_255_mvl, 90
	.equ	se_255_key, 0
	.equ	se_255_tbs, 1
	.equ	se_255_exg, 1
	.equ	se_255_cmp, 1

	mSectionRodata
	.global	C_DECL(se_255)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_255_1:
	.byte	KEYSH , se_255_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 150*se_255_tbs/2
	.byte		VOICE , 55
	.byte		VOL   , 127*se_255_mvl/mxv
	.byte		BENDR , 15
	.byte		PAN   , c_v+0
	.byte		N01   , Gs4 , v108
	.byte	W02
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W08
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_255):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_255_pri	/* Priority */
	.byte	se_255_rev	/* Reverb */

mAlignWord
	mPtr	se_255_grp

	mPtr	se_255_1

	.end
