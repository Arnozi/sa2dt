	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_261_grp, voicegroup005
	.equ	se_261_pri, 20
	.equ	se_261_rev, reverb_set+0
	.equ	se_261_mvl, 100
	.equ	se_261_key, 0
	.equ	se_261_tbs, 1
	.equ	se_261_exg, 1
	.equ	se_261_cmp, 1

	mSectionRodata
	.global	C_DECL(se_261)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_261_1:
	.byte	KEYSH , se_261_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 150*se_261_tbs/2
	.byte		VOICE , 61
	.byte		VOL   , 127*se_261_mvl/mxv
	.byte		BENDR , 15
	.byte		PAN   , c_v+0
	.byte		N01   , Gs6 , v104
	.byte	W01
	.byte		        As6 , v108
	.byte	W01
	.byte		        Gs6 , v112
	.byte	W01
	.byte		        As6 , v108
	.byte	W01
	.byte		        Gs6 
	.byte	W01
	.byte		        As6 
	.byte	W02
	.byte		        Gs6 , v104
	.byte	W01
	.byte		        As6 , v108
	.byte	W01
	.byte		        Gs6 , v112
	.byte	W01
	.byte		        As6 , v108
	.byte	W01
	.byte		        Gs6 
	.byte	W01
	.byte		        As6 
	.byte	W01
	.byte		        Gs6 , v104
	.byte	W01
	.byte		        As6 , v108
	.byte	W01
	.byte		        Gs6 , v112
	.byte	W01
	.byte		        As6 , v108
	.byte	W01
	.byte		        Gs6 
	.byte	W01
	.byte		        As6 
	.byte	W01
	.byte		        Gs6 , v104
	.byte	W01
	.byte		        As6 , v108
	.byte	W01
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_261):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_261_pri	/* Priority */
	.byte	se_261_rev	/* Reverb */

mAlignWord
	mPtr	se_261_grp

	mPtr	se_261_1

	.end
