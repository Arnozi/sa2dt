	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_224_grp, voicegroup005
	.equ	se_224_pri, 20
	.equ	se_224_rev, reverb_set+0
	.equ	se_224_mvl, 100
	.equ	se_224_key, 0
	.equ	se_224_tbs, 1
	.equ	se_224_exg, 1
	.equ	se_224_cmp, 1

	mSectionRodata
	.global	C_DECL(se_224)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_224_1:
	.byte		VOL   , 127*se_224_mvl/mxv
	.byte	KEYSH , se_224_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 126*se_224_tbs/2
	.byte		VOICE , 24
	.byte		LFOS  , 60
	.byte		BENDR , 15
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N06   , Gn5 , v127
	.byte	W06
	.byte		TIE   , Cn6 
	.byte	W18
se_224_1_B1:
	.byte	W72
/* 001   ----------------------------------------
 */	.byte	W48
	.byte	GOTO
	 mPtr	se_224_1_B1
se_224_1_B2:
	.byte	W24
	.byte		EOT   , Cn6 
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_224):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_224_pri	/* Priority */
	.byte	se_224_rev	/* Reverb */

mAlignWord
	mPtr	se_224_grp

	mPtr	se_224_1

	.end
