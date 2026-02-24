	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_act_clear_grp, voicegroup008
	.equ	mus_act_clear_pri, 0
	.equ	mus_act_clear_rev, reverb_set+0
	.equ	mus_act_clear_mvl, 103
	.equ	mus_act_clear_key, 0
	.equ	mus_act_clear_tbs, 1
	.equ	mus_act_clear_exg, 1
	.equ	mus_act_clear_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_act_clear)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_act_clear_1:
	.byte	KEYSH , mus_act_clear_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 130*mus_act_clear_tbs/2
	.byte		VOICE , 11
	.byte		VOL   , 93*mus_act_clear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 0
	.byte		N06   , As2 , v112
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		N18   , En2 
	.byte	W18
	.byte		N06   , Ds2 
	.byte	W12
	.byte		        En2 
	.byte	W12
/* 001   ----------------------------------------
 */	.byte		        En3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N60   , Cs3 
	.byte	W54
/* 002   ----------------------------------------
 */	.byte	W06
	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_act_clear_2:
	.byte	KEYSH , mus_act_clear_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 12
	.byte		VOL   , 60*mus_act_clear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 0
	.byte		N06   , Fs2 , v112
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N18   , Bn1 
	.byte	W18
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
/* 001   ----------------------------------------
 */	.byte		        Gs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N60   , Fs2 
	.byte	W54
/* 002   ----------------------------------------
 */	.byte	W06
	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_act_clear_3:
	.byte	KEYSH , mus_act_clear_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 13
	.byte		VOL   , 81*mus_act_clear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 0
	.byte		N06   , Cs3 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En3 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N18   , Gs2 
	.byte	W18
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
/* 001   ----------------------------------------
 */	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N60   , Fs2 
	.byte	W54
/* 002   ----------------------------------------
 */	.byte	W06
	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_act_clear_4:
	.byte	KEYSH , mus_act_clear_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 127
	.byte		VOL   , 127*mus_act_clear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 127
	.byte		N06   , Cs1 , v127
	.byte		N78   , Cs2 , v056
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte		N12   , Ds1 , v036
	.byte	W12
	.byte		N06   , Cs1 , v127
	.byte		N12   , Dn1 , v036
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Dn1 , v036
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
	.byte		        Dn1 , v036
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		        Fs1 
	.byte	W06
/* 001   ----------------------------------------
 */	.byte		N05   , Cs1 
	.byte		N12   , Ds1 , v036
	.byte		N40   , Cs2 , v056
	.byte	W06
	.byte		N05   , Cn1 , v127
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Cs1 
	.byte		N12   , Ds1 , v036
	.byte	W12
	.byte		N11   , Cn1 , v127
	.byte	W12
	.byte		N52   , Cs1 
	.byte		N12   , Ds1 , v036
	.byte		N54   , Cs2 , v056
	.byte	W54
/* 002   ----------------------------------------
 */	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_act_clear):
	.byte	4	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_act_clear_pri	/* Priority */
	.byte	mus_act_clear_rev	/* Reverb */

mAlignWord
	mPtr	mus_act_clear_grp

	mPtr	mus_act_clear_1
	mPtr	mus_act_clear_2
	mPtr	mus_act_clear_3
	mPtr	mus_act_clear_4

	.end
