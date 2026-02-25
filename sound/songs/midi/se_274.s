	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_274_grp, voicegroup005
	.equ	se_274_pri, 30
	.equ	se_274_rev, reverb_set+0
	.equ	se_274_mvl, 100
	.equ	se_274_key, 0
	.equ	se_274_tbs, 1
	.equ	se_274_exg, 1
	.equ	se_274_cmp, 1

	mSectionRodata
	.global	C_DECL(se_274)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_274_1:
	.byte	KEYSH , se_274_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*se_274_tbs/2
	.byte		VOICE , 103
	.byte		VOL   , 89*se_274_mvl/mxv
	.byte		BENDR , 12
	.byte		LFOS  , 103
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 100
	.byte		N60   , Cs7 , v127
	.byte	W60
	.byte	W02
	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

se_274_2:
	.byte	KEYSH , se_274_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 102
	.byte		VOL   , 127*se_274_mvl/mxv
	.byte		BENDR , 12
	.byte		LFOS  , 103
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N60   , Fs3 , v127
	.byte	W60
	.byte	W02
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_274):
	.byte	2	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_274_pri	/* Priority */
	.byte	se_274_rev	/* Reverb */

mAlignWord
	mPtr	se_274_grp

	mPtr	se_274_1
	mPtr	se_274_2

	.end
