	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_vs_exit_grp, voicegroup010
	.equ	mus_vs_exit_pri, 0
	.equ	mus_vs_exit_rev, reverb_set+0
	.equ	mus_vs_exit_mvl, 77
	.equ	mus_vs_exit_key, 0
	.equ	mus_vs_exit_tbs, 1
	.equ	mus_vs_exit_exg, 1
	.equ	mus_vs_exit_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_vs_exit)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_vs_exit_1:
	.byte	KEYSH , mus_vs_exit_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 140*mus_vs_exit_tbs/2
	.byte		VOICE , 113
	.byte		VOL   , 47*mus_vs_exit_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N06   , Gs5 , v112
	.byte	W24
	.byte		        Ds5 
	.byte	W24
	.byte		        Fs5 
	.byte	W24
	.byte		        Cs5 
	.byte	W24
/* 001   ----------------------------------------
 */	.byte		N12   , Cn5 
	.byte	W12
	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_vs_exit_2:
	.byte	KEYSH , mus_vs_exit_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 114
	.byte		VOL   , 58*mus_vs_exit_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N06   , Ds5 , v112
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		        Cs5 
	.byte	W24
	.byte		        As4 
	.byte	W24
/* 001   ----------------------------------------
 */	.byte		N12   , Gs4 
	.byte	W12
	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_vs_exit_3:
	.byte	KEYSH , mus_vs_exit_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 68
	.byte		VOL   , 127*mus_vs_exit_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N06   , Cn4 , v112
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
/* 001   ----------------------------------------
 */	.byte		        Ds3 
	.byte	W06
	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_vs_exit_4:
	.byte	KEYSH , mus_vs_exit_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 69
	.byte		VOL   , 127*mus_vs_exit_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N06   , Gs4 , v112
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
/* 001   ----------------------------------------
 */	.byte		N54   , Cn4 
	.byte	W54
	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_vs_exit_5:
	.byte	KEYSH , mus_vs_exit_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 68
	.byte		VOL   , 63*mus_vs_exit_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N23   , Ds4 , v112
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		        As3 
	.byte	W24
/* 001   ----------------------------------------
 */	.byte		VOICE , 68
	.byte		N78   , Gs3 
	.byte	W78
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_vs_exit):
	.byte	5	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_vs_exit_pri	/* Priority */
	.byte	mus_vs_exit_rev	/* Reverb */

mAlignWord
	mPtr	mus_vs_exit_grp

	mPtr	mus_vs_exit_1
	mPtr	mus_vs_exit_2
	mPtr	mus_vs_exit_3
	mPtr	mus_vs_exit_4
	mPtr	mus_vs_exit_5

	.end
