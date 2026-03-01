	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_tails_propeller_flying_grp, voicegroup003
	.equ	se_tails_propeller_flying_pri, 20
	.equ	se_tails_propeller_flying_rev, reverb_set+0
	.equ	se_tails_propeller_flying_mvl, 127
	.equ	se_tails_propeller_flying_key, 0
	.equ	se_tails_propeller_flying_tbs, 1
	.equ	se_tails_propeller_flying_exg, 1
	.equ	se_tails_propeller_flying_cmp, 1

	mSectionRodata
	.global	C_DECL(se_tails_propeller_flying)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_tails_propeller_flying_1:
	.byte	KEYSH , se_tails_propeller_flying_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_tails_propeller_flying_tbs/2
	.byte		VOICE , 120
	.byte		VOL   , 127*se_tails_propeller_flying_mvl/mxv
	.byte		LFOS  , 45
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 76
	.byte		N05   , Ds3 , v127
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
se_tails_propeller_flying_1_B1:
	.byte		N05   , Ds3 , v127
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 001   ----------------------------------------
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	GOTO
	 mPtr	se_tails_propeller_flying_1_B1
se_tails_propeller_flying_1_B2:
@ 002   ----------------------------------------
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_tails_propeller_flying):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_tails_propeller_flying_pri	@ Priority
	.byte	se_tails_propeller_flying_rev	@ Reverb

mAlignWord
	mPtr	se_tails_propeller_flying_grp

	mPtr	se_tails_propeller_flying_1

	.end
