	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_extra_clear_grp, voicegroup008
	.equ	mus_extra_clear_pri, 0
	.equ	mus_extra_clear_rev, reverb_set+0
	.equ	mus_extra_clear_mvl, 100
	.equ	mus_extra_clear_key, 0
	.equ	mus_extra_clear_tbs, 1
	.equ	mus_extra_clear_exg, 1
	.equ	mus_extra_clear_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_extra_clear)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_extra_clear_1:
	.byte	KEYSH , mus_extra_clear_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 108*mus_extra_clear_tbs/2
	.byte		VOICE , 27
	.byte		VOL   , 112*mus_extra_clear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N05   , En3 , v112
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N04   , Cn4 
	.byte	W06
	.byte		N06   , En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
/* 001   ----------------------------------------
 */	.byte		N03   , Cn4 , v080
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N13   , Dn4 
	.byte	W18
	.byte		N04   
	.byte	W06
	.byte		N07   , Cn4 , v072
	.byte	W06
	.byte		N04   , As3 , v080
	.byte	W06
	.byte		N10   , Ds4 
	.byte	W18
	.byte		N12   , Fn4 , v112
	.byte	W18
	.byte		N09   , Gn4 
	.byte	W06
/* 002   ----------------------------------------
 */	.byte	W12
	.byte		N60   , Gs4 
	.byte	W60
	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_extra_clear_2:
	.byte	KEYSH , mus_extra_clear_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 28
	.byte		VOL   , 108*mus_extra_clear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N03   , Cn2 , v112
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Bn2 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        En2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
/* 001   ----------------------------------------
 */	.byte		N03   , Gs2 , v080
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N07   , As2 
	.byte	W18
	.byte		N04   
	.byte	W06
	.byte		N07   , Gs2 , v072
	.byte	W06
	.byte		N04   , Gn2 , v080
	.byte	W06
	.byte		N10   , Cn3 
	.byte	W18
	.byte		N16   , Cs2 , v112
	.byte	W18
	.byte		N09   , Ds2 
	.byte	W06
/* 002   ----------------------------------------
 */	.byte	W12
	.byte		N60   , Gs2 
	.byte	W60
	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_extra_clear_3:
	.byte	KEYSH , mus_extra_clear_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 29
	.byte		VOL   , 117*mus_extra_clear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N11   , Gn2 , v127
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		        Gn3 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
/* 001   ----------------------------------------
 */	.byte		N17   , Ds3 
	.byte	W18
	.byte		N11   , Fn3 
	.byte	W18
	.byte		N11   
	.byte	W18
	.byte		N12   , Gn3 
	.byte	W18
	.byte		        Gs3 
	.byte	W18
	.byte		        As3 
	.byte	W06
/* 002   ----------------------------------------
 */	.byte	W12
	.byte		N60   , Cs4 
	.byte	W60
	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_extra_clear_4:
	.byte	KEYSH , mus_extra_clear_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 30
	.byte		VOL   , 107*mus_extra_clear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N13   , Cn2 , v127
	.byte	W18
	.byte		N23   , Bn1 
	.byte	W30
	.byte		N15   , An1 
	.byte	W24
	.byte		N18   , Gn1 
	.byte	W24
/* 001   ----------------------------------------
 */	.byte		N14   , Gs1 
	.byte	W18
	.byte		N15   , As1 
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		        Cn1 
	.byte	W18
	.byte		        Cs1 
	.byte	W18
	.byte		N10   , Ds1 
	.byte	W06
/* 002   ----------------------------------------
 */	.byte	W12
	.byte		N60   , Cs1 
	.byte	W60
	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_extra_clear_5:
	.byte	KEYSH , mus_extra_clear_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 31
	.byte		VOL   , 51*mus_extra_clear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N11   , En4 , v127
	.byte	W12
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        En5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
/* 001   ----------------------------------------
 */	.byte		N03   , Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		N07   , Dn5 
	.byte	W18
	.byte		N04   
	.byte	W06
	.byte		N07   , Cn5 , v120
	.byte	W06
	.byte		N04   , As4 , v127
	.byte	W06
	.byte		N10   , Ds5 
	.byte	W18
	.byte		N12   , Fn4 
	.byte	W18
	.byte		N09   , Gn4 
	.byte	W06
/* 002   ----------------------------------------
 */	.byte	W12
	.byte		N60   , Gs4 
	.byte	W60
	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_extra_clear_6:
	.byte	KEYSH , mus_extra_clear_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 32
	.byte		VOL   , 61*mus_extra_clear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N10   , Gn2 , v127
	.byte	W12
	.byte		N05   , En3 
	.byte	W06
	.byte		N11   , Gn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N05   , Bn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
/* 001   ----------------------------------------
 */	.byte		N17   , Ds3 
	.byte	W18
	.byte		        Fn3 
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		        Gn3 
	.byte	W18
	.byte		        Gs3 
	.byte	W18
	.byte		        As3 
	.byte	W06
/* 002   ----------------------------------------
 */	.byte	W12
	.byte		N60   , Cs4 
	.byte	W60
	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_extra_clear_7:
	.byte	KEYSH , mus_extra_clear_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 127
	.byte		VOL   , 127*mus_extra_clear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N05   , Cs1 , v127
	.byte		N05   , Ds1 , v048
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W06
	.byte		N05   
	.byte		N03   , Dn1 , v056
	.byte	W06
	.byte		N11   , Cs1 , v127
	.byte		N05   , Ds1 , v048
	.byte	W12
	.byte		N11   , Cn1 , v127
	.byte		N03   , Dn1 , v056
	.byte	W12
	.byte		N11   , Cs1 , v127
	.byte		N05   , Ds1 , v056
	.byte	W12
	.byte		N02   , An1 , v127
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
/* 001   ----------------------------------------
 */	.byte		N11   , Cs1 
	.byte		N05   , Ds1 , v056
	.byte	W12
	.byte		        Cn1 , v127
	.byte		N03   , Dn1 , v056
	.byte	W06
	.byte		N17   , Cs1 , v127
	.byte		N32   , Cs2 
	.byte	W18
	.byte		N11   , Cs1 
	.byte		N05   , Ds1 , v056
	.byte	W12
	.byte		        Cn1 , v127
	.byte		N03   , Dn1 , v056
	.byte	W06
	.byte		N17   , Cs1 , v127
	.byte		N32   , Cs2 
	.byte	W18
	.byte		N11   , Cs1 
	.byte		N05   , Ds1 , v056
	.byte	W12
	.byte		        Cn1 , v127
	.byte		N03   , Dn1 , v056
	.byte	W06
	.byte		N11   , Cs1 , v127
	.byte		N05   , Ds1 , v056
	.byte	W06
/* 002   ----------------------------------------
 */	.byte	W06
	.byte		        Cn1 , v127
	.byte		N03   , Dn1 , v056
	.byte	W06
	.byte		N54   , Cn1 , v127
	.byte		N54   , Cs2 
	.byte	W54
	.byte		N02   , Cs1 , v092
	.byte	W03
	.byte		N03   , Cs1 , v127
	.byte	W03
	.byte		N54   , Cn1 
	.byte		N54   , Cs2 
	.byte	W24
/* 003   ----------------------------------------
 */	.byte	W30
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_extra_clear):
	.byte	7	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_extra_clear_pri	/* Priority */
	.byte	mus_extra_clear_rev	/* Reverb */

mAlignWord
	mPtr	mus_extra_clear_grp

	mPtr	mus_extra_clear_1
	mPtr	mus_extra_clear_2
	mPtr	mus_extra_clear_3
	mPtr	mus_extra_clear_4
	mPtr	mus_extra_clear_5
	mPtr	mus_extra_clear_6
	mPtr	mus_extra_clear_7

	.end
