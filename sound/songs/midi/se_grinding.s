	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_grinding_grp, voicegroup003
	.equ	se_grinding_pri, 20
	.equ	se_grinding_rev, reverb_set+0
	.equ	se_grinding_mvl, 100
	.equ	se_grinding_key, 0
	.equ	se_grinding_tbs, 1
	.equ	se_grinding_exg, 1
	.equ	se_grinding_cmp, 1

	mSectionRodata
	.global	C_DECL(se_grinding)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_grinding_1:
	.byte	KEYSH , se_grinding_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*se_grinding_tbs/2
	.byte		VOICE , 68
	.byte		VOL   , 127*se_grinding_mvl/mxv
	.byte		LFOS  , 15
	.byte		BENDR , 15
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 46
	.byte		N04   , Cs4 , v127
	.byte	W05
	.byte		N02   , Gn3 
	.byte	W03
	.byte		N01   , Fn5 
	.byte	W02
	.byte		N03   , Ds5 
	.byte	W10
	.byte		TIE   , Bn3 , v072
	.byte	W76
se_grinding_1_B1:
/* 001   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	se_grinding_1_B1
se_grinding_1_B2:
/* 002   ----------------------------------------
 */	.byte	W12
	.byte		EOT   , Bn3 
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_grinding):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_grinding_pri	/* Priority */
	.byte	se_grinding_rev	/* Reverb */

mAlignWord
	mPtr	se_grinding_grp

	mPtr	se_grinding_1

	.end
