	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_218_grp, voicegroup005
	.equ	se_218_pri, 20
	.equ	se_218_rev, reverb_set+0
	.equ	se_218_mvl, 100
	.equ	se_218_key, 0
	.equ	se_218_tbs, 1
	.equ	se_218_exg, 1
	.equ	se_218_cmp, 1

	mSectionRodata
	.global	C_DECL(se_218)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_218_1:
	.byte	KEYSH , se_218_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 74*se_218_tbs/2
	.byte		VOICE , 18
	.byte		VOL   , 127*se_218_mvl/mxv
	.byte		LFOS  , 51
	.byte		BENDR , 15
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 60
	.byte		N05   , Fs2 , v127
	.byte	W06
	.byte		VOL   , 117*se_218_mvl/mxv
	.byte		N90   , Gn3 
	.byte	W06
	.byte		VOL   , 108*se_218_mvl/mxv
	.byte	W06
	.byte		        100*se_218_mvl/mxv
	.byte	W06
	.byte		        91*se_218_mvl/mxv
	.byte	W06
	.byte		        82*se_218_mvl/mxv
	.byte	W06
	.byte		        73*se_218_mvl/mxv
	.byte	W06
	.byte		        64*se_218_mvl/mxv
	.byte	W06
	.byte		        55*se_218_mvl/mxv
	.byte	W06
	.byte		        46*se_218_mvl/mxv
	.byte	W06
	.byte		        37*se_218_mvl/mxv
	.byte	W06
	.byte		        28*se_218_mvl/mxv
	.byte	W06
	.byte		        18*se_218_mvl/mxv
	.byte	W06
	.byte		        9*se_218_mvl/mxv
	.byte	W06
	.byte		        0*se_218_mvl/mxv
	.byte	W12
/* 001   ----------------------------------------
 */	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_218):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_218_pri	/* Priority */
	.byte	se_218_rev	/* Reverb */

mAlignWord
	mPtr	se_218_grp

	mPtr	se_218_1

	.end
