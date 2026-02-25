	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_special_stage_result_lose_grp, voicegroup010
	.equ	mus_special_stage_result_lose_pri, 0
	.equ	mus_special_stage_result_lose_rev, reverb_set+0
	.equ	mus_special_stage_result_lose_mvl, 92
	.equ	mus_special_stage_result_lose_key, 0
	.equ	mus_special_stage_result_lose_tbs, 1
	.equ	mus_special_stage_result_lose_exg, 1
	.equ	mus_special_stage_result_lose_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_special_stage_result_lose)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_special_stage_result_lose_1:
	.byte	KEYSH , mus_special_stage_result_lose_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 74*mus_special_stage_result_lose_tbs/2
	.byte		VOICE , 74
	.byte		MOD   , 1
	.byte		BENDR , 0
	.byte		VOL   , 110*mus_special_stage_result_lose_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
mus_special_stage_result_lose_1_B1:
/* 001   ----------------------------------------
 */	.byte	W06
	.byte		N06   , En2 , v116
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        En3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W48
/* 002   ----------------------------------------
 */	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        En3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte	GOTO
	 mPtr	mus_special_stage_result_lose_1_B1
mus_special_stage_result_lose_1_B2:
/* 003   ----------------------------------------
 */	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_special_stage_result_lose_2:
	.byte	KEYSH , mus_special_stage_result_lose_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 75
	.byte		MOD   , 0
	.byte		BENDR , 0
	.byte		VOL   , 103*mus_special_stage_result_lose_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
mus_special_stage_result_lose_2_B1:
/* 001   ----------------------------------------
 */	.byte	W06
	.byte		N06   , Cn2 , v100
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Gs2 
	.byte	W48
/* 002   ----------------------------------------
 */	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Gs2 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte	GOTO
	 mPtr	mus_special_stage_result_lose_2_B1
mus_special_stage_result_lose_2_B2:
/* 003   ----------------------------------------
 */	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_special_stage_result_lose_3:
	.byte	KEYSH , mus_special_stage_result_lose_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 102
	.byte		MOD   , 1
	.byte		BENDR , 0
	.byte		VOL   , 122*mus_special_stage_result_lose_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W06
	.byte		N06   , Cn2 , v116
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W30
mus_special_stage_result_lose_3_B1:
/* 001   ----------------------------------------
 */	.byte	W06
	.byte		N06   , Cn2 , v116
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W30
/* 002   ----------------------------------------
 */	.byte	W06
	.byte		        Cn2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Gs2 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte	GOTO
	 mPtr	mus_special_stage_result_lose_3_B1
mus_special_stage_result_lose_3_B2:
/* 003   ----------------------------------------
 */	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_special_stage_result_lose_4:
	.byte	KEYSH , mus_special_stage_result_lose_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 80
	.byte		BENDR , 0
	.byte		VOL   , 112*mus_special_stage_result_lose_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W12
	.byte		N07   , Gn2 , v116
	.byte	W24
	.byte		N07   
	.byte	W24
	.byte		        Ds2 , v127
	.byte	W24
	.byte		        Ds2 , v120
	.byte	W12
mus_special_stage_result_lose_4_B1:
/* 001   ----------------------------------------
 */	.byte	W12
	.byte		N07   , Gn2 , v116
	.byte	W24
	.byte		N07   
	.byte	W24
	.byte		        Ds2 , v127
	.byte	W24
	.byte		        Ds2 , v120
	.byte	W12
/* 002   ----------------------------------------
 */	.byte	W12
	.byte		N06   , Gn2 
	.byte	W24
	.byte		        Gn2 , v108
	.byte	W12
	.byte		N23   , Ds3 
	.byte	W24
	.byte		N06   , Dn3 
	.byte	W24
	.byte	GOTO
	 mPtr	mus_special_stage_result_lose_4_B1
mus_special_stage_result_lose_4_B2:
/* 003   ----------------------------------------
 */	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_special_stage_result_lose_5:
	.byte	KEYSH , mus_special_stage_result_lose_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 127
	.byte		BENDR , 0
	.byte		VOL   , 127*mus_special_stage_result_lose_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N05   , Cn1 , v116
	.byte	W12
	.byte		N05   
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N05   , Cn3 , v116
	.byte	W06
	.byte		N28   , Gs2 
	.byte	W06
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N03   , Dn1 , v048
	.byte	W12
	.byte		N05   , Cn1 , v116
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W12
	.byte		N05   , Cs1 , v116
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W12
mus_special_stage_result_lose_5_B1:
/* 001   ----------------------------------------
 */	.byte		N05   , Cn1 , v116
	.byte	W12
	.byte		N05   
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N05   , Cn3 , v116
	.byte	W06
	.byte		N28   , Gs2 
	.byte	W06
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N03   , Dn1 , v048
	.byte	W12
	.byte		N05   , Cn1 , v116
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W12
	.byte		N05   , Cs1 , v116
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W12
/* 002   ----------------------------------------
 */	.byte		N05   , Cn1 , v116
	.byte	W12
	.byte		N05   
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N05   , Cn3 , v116
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N03   , Dn1 , v048
	.byte		N28   , Gs2 , v116
	.byte	W12
	.byte		N05   , Cn1 
	.byte		N03   , Dn1 , v048
	.byte	W24
	.byte		N05   , Cs1 , v116
	.byte		N03   , Dn1 , v048
	.byte	W24
	.byte	GOTO
	 mPtr	mus_special_stage_result_lose_5_B1
mus_special_stage_result_lose_5_B2:
/* 003   ----------------------------------------
 */	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_special_stage_result_lose):
	.byte	5	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_special_stage_result_lose_pri	/* Priority */
	.byte	mus_special_stage_result_lose_rev	/* Reverb */

mAlignWord
	mPtr	mus_special_stage_result_lose_grp

	mPtr	mus_special_stage_result_lose_1
	mPtr	mus_special_stage_result_lose_2
	mPtr	mus_special_stage_result_lose_3
	mPtr	mus_special_stage_result_lose_4
	mPtr	mus_special_stage_result_lose_5

	.end
