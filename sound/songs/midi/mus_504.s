	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_504_grp, voicegroup010
	.equ	mus_504_pri, 0
	.equ	mus_504_rev, reverb_set+0
	.equ	mus_504_mvl, 105
	.equ	mus_504_key, 0
	.equ	mus_504_tbs, 1
	.equ	mus_504_exg, 1
	.equ	mus_504_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_504)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_504_1:
	.byte	KEYSH , mus_504_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*mus_504_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 115*mus_504_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
	.byte		N11   , Cs1 , v127
	.byte		N60   , Cs2 
	.byte	W12
	.byte		N05   , Cn1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N11   , Cs1 
	.byte	W12
	.byte		N05   , An1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
/* 001   ----------------------------------------
 */	.byte		        Cs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N24   , Cn1 
	.byte		N72   , Cs2 
	.byte	W72
	.byte	W03
	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_504_2:
	.byte	KEYSH , mus_504_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 110
	.byte		VOL   , 60*mus_504_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
	.byte		N06   , An3 , v116
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N18   , Gn3 
	.byte	W18
	.byte		N06   , Fs3 
	.byte	W12
/* 001   ----------------------------------------
 */	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W06
	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_504_3:
	.byte	KEYSH , mus_504_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 111
	.byte		VOL   , 60*mus_504_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
	.byte		N06   , Cs3 , v116
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W18
	.byte		N06   
	.byte	W12
/* 001   ----------------------------------------
 */	.byte		        Bn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W06
	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_504_4:
	.byte	KEYSH , mus_504_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 112
	.byte		VOL   , 113*mus_504_mvl/mxv
	.byte		PAN   , c_v+14
	.byte	W24
	.byte		N06   , An1 , v116
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N12   , En2 
	.byte	W12
	.byte		N06   , Cs2 
	.byte	W12
	.byte		N18   , Gn1 
	.byte	W18
	.byte		N06   , Dn2 
	.byte	W12
/* 001   ----------------------------------------
 */	.byte		        Bn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W06
	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_504_5:
	.byte	KEYSH , mus_504_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 74
	.byte		VOL   , 108*mus_504_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
	.byte		N06   , An3 , v116
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N18   , Gn3 
	.byte	W18
	.byte		N06   , Fs3 
	.byte	W12
/* 001   ----------------------------------------
 */	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W06
	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_504_6:
	.byte	KEYSH , mus_504_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 61
	.byte		VOL   , 127*mus_504_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
	.byte		N06   , Cs3 , v116
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W18
	.byte		N06   
	.byte	W12
/* 001   ----------------------------------------
 */	.byte		        Bn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W06
	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_504_7:
	.byte	KEYSH , mus_504_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 80
	.byte		VOL   , 105*mus_504_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W08
	.byte		N02   , En2 , v088
	.byte	W01
	.byte		N03   , Fn2 , v064
	.byte	W03
	.byte		        Gn2 , v068
	.byte	W01
	.byte		N02   , An2 , v080
	.byte	W02
	.byte		        Bn2 , v092
	.byte	W02
	.byte		N03   , Cn3 
	.byte	W02
	.byte		N02   , Dn3 , v076
	.byte	W01
	.byte		        En3 , v080
	.byte	W03
	.byte		N04   , Ds3 , v127
	.byte	W01
	.byte		        En3 
	.byte	W07
	.byte		N03   
	.byte	W11
	.byte		N04   
	.byte	W10
	.byte		N07   
	.byte	W12
	.byte		N15   , Dn3 
	.byte	W17
	.byte		N06   
	.byte	W14
	.byte		N03   
	.byte	W01
/* 001   ----------------------------------------
 */	.byte	W04
	.byte		N06   
	.byte	W11
	.byte		N04   , Ds3 
	.byte	W03
	.byte		N17   , En3 
	.byte	W16
	.byte		N03   , Dn3 , v072
	.byte	W01
	.byte		N04   , Cn3 
	.byte	W01
	.byte		N03   , Bn2 
	.byte	W02
	.byte		N04   , An2 
	.byte	W02
	.byte		N03   , Gn2 
	.byte	W02
	.byte		        Fs2 
	.byte	W01
	.byte		N04   , En2 
	.byte	W01
	.byte		N03   , Ds2 
	.byte	W02
	.byte		N04   , Cs2 
	.byte	W02
	.byte		N03   , Bn1 
	.byte	W03
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_504):
	.byte	7	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_504_pri	/* Priority */
	.byte	mus_504_rev	/* Reverb */

mAlignWord
	mPtr	mus_504_grp

	mPtr	mus_504_1
	mPtr	mus_504_2
	mPtr	mus_504_3
	mPtr	mus_504_4
	mPtr	mus_504_5
	mPtr	mus_504_6
	mPtr	mus_504_7

	.end
