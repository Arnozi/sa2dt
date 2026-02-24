	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_vs_miss_grp, voicegroup010
	.equ	mus_vs_miss_pri, 0
	.equ	mus_vs_miss_rev, reverb_set+0
	.equ	mus_vs_miss_mvl, 77
	.equ	mus_vs_miss_key, 0
	.equ	mus_vs_miss_tbs, 1
	.equ	mus_vs_miss_exg, 1
	.equ	mus_vs_miss_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_vs_miss)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_vs_miss_1:
	.byte	KEYSH , mus_vs_miss_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 76*mus_vs_miss_tbs/2
	.byte		VOICE , 108
	.byte		VOL   , 127*mus_vs_miss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N02   , Bn4 , v108
	.byte	W02
	.byte		        Gn4 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		N05   , Bn4 
	.byte	W05
	.byte		        Gn5 
	.byte	W05
	.byte		N10   , Dn5 
	.byte	W11
	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_vs_miss_2:
	.byte	KEYSH , mus_vs_miss_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 109
	.byte		VOL   , 127*mus_vs_miss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N02   , Dn4 , v108
	.byte	W02
	.byte		        Bn3 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		N05   , Dn4 
	.byte	W05
	.byte		        Bn4 
	.byte	W05
	.byte		N10   , Fs4 
	.byte	W11
	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_vs_miss_3:
	.byte	KEYSH , mus_vs_miss_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 63
	.byte		VOL   , 127*mus_vs_miss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N02   , Bn3 , v108
	.byte	W02
	.byte		        Gn3 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		N05   , Bn3 
	.byte	W05
	.byte		        Gn4 
	.byte	W05
	.byte		N10   , Dn4 
	.byte	W11
	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_vs_miss_4:
	.byte	KEYSH , mus_vs_miss_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 64
	.byte		VOL   , 127*mus_vs_miss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N02   , Dn3 , v108
	.byte	W02
	.byte		        Bn2 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		N05   , Dn3 
	.byte	W05
	.byte		        Bn3 
	.byte	W05
	.byte		N10   , Fs3 
	.byte	W11
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_vs_miss):
	.byte	4	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_vs_miss_pri	/* Priority */
	.byte	mus_vs_miss_rev	/* Reverb */

mAlignWord
	mPtr	mus_vs_miss_grp

	mPtr	mus_vs_miss_1
	mPtr	mus_vs_miss_2
	mPtr	mus_vs_miss_3
	mPtr	mus_vs_miss_4

	.end
