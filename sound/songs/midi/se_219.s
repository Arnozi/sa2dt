	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_219_grp, voicegroup005
	.equ	se_219_pri, 20
	.equ	se_219_rev, reverb_set+0
	.equ	se_219_mvl, 100
	.equ	se_219_key, 0
	.equ	se_219_tbs, 1
	.equ	se_219_exg, 1
	.equ	se_219_cmp, 1

	mSectionRodata
	.global	C_DECL(se_219)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_219_1:
	.byte	KEYSH , se_219_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 74*se_219_tbs/2
	.byte		VOICE , 19
	.byte		VOL   , 127*se_219_mvl/mxv
	.byte		LFOS  , 51
	.byte		BENDR , 15
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 127
	.byte		N02   , Gn3 , v127
	.byte	W03
	.byte		N24   , En3 
	.byte	W03
	.byte		VOL   , 96*se_219_mvl/mxv
	.byte	W06
	.byte		        64*se_219_mvl/mxv
	.byte	W06
	.byte		        32*se_219_mvl/mxv
	.byte	W06
	.byte		        0*se_219_mvl/mxv
	.byte	W05
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_219):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_219_pri	/* Priority */
	.byte	se_219_rev	/* Reverb */

mAlignWord
	mPtr	se_219_grp

	mPtr	se_219_1

	.end
