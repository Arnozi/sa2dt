	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_drowning_grp, voicegroup009
	.equ	mus_drowning_pri, 0
	.equ	mus_drowning_rev, reverb_set+0
	.equ	mus_drowning_mvl, 86
	.equ	mus_drowning_key, 0
	.equ	mus_drowning_tbs, 1
	.equ	mus_drowning_exg, 1
	.equ	mus_drowning_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_drowning)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

mus_drowning_1:
	.byte	KEYSH , mus_drowning_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*mus_drowning_tbs/2
	.byte		VOICE , 30
	.byte		VOL   , 92*mus_drowning_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 0
	.byte		N06   , Cn3 , v124
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 001   ----------------------------------------
	.byte		        Cn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 002   ----------------------------------------
	.byte		        Cn3 
	.byte	W08
	.byte		        Cn4 
	.byte	W08
	.byte		        Cn3 
	.byte	W08
	.byte		        Cn4 
	.byte	W08
	.byte		        Cs3 
	.byte	W08
	.byte		        Cs4 
	.byte	W08
	.byte		        Cs3 
	.byte	W08
	.byte		        Cs4 
	.byte	W08
	.byte		        Cn3 
	.byte	W08
	.byte		        Cn4 
	.byte	W08
	.byte		        Cn3 
	.byte	W08
	.byte		        Cn4 
	.byte	W08
@ 003   ----------------------------------------
	.byte		        Cs3 
	.byte	W08
	.byte		        Cs4 
	.byte	W08
	.byte		        Cs3 
	.byte	W08
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 004   ----------------------------------------
mus_drowning_1_004:
	.byte		N06   , Cn4 , v124
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 mPtr	mus_drowning_1_004
@ 006   ----------------------------------------
	.byte		N06   , Cn4 , v124
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte	FINE

@ **************** Track 2 (Midi-Chn.2) ****************

mus_drowning_2:
	.byte	KEYSH , mus_drowning_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 31
	.byte		VOL   , 92*mus_drowning_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 0
	.byte		N06   , Cn3 , v124
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 001   ----------------------------------------
	.byte		        Cn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 002   ----------------------------------------
	.byte		        Cn3 
	.byte	W08
	.byte		        Cn4 
	.byte	W08
	.byte		        Cn3 
	.byte	W08
	.byte		        Cn4 
	.byte	W08
	.byte		        Cs3 
	.byte	W08
	.byte		        Cs4 
	.byte	W08
	.byte		        Cs3 
	.byte	W08
	.byte		        Cs4 
	.byte	W08
	.byte		        Cn3 
	.byte	W08
	.byte		        Cn4 
	.byte	W08
	.byte		        Cn3 
	.byte	W08
	.byte		        Cn4 
	.byte	W08
@ 003   ----------------------------------------
	.byte		        Cs3 
	.byte	W08
	.byte		        Cs4 
	.byte	W08
	.byte		        Cs3 
	.byte	W08
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 004   ----------------------------------------
mus_drowning_2_004:
	.byte		N06   , Cn4 , v124
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 mPtr	mus_drowning_2_004
@ 006   ----------------------------------------
	.byte		N06   , Cn4 , v124
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte	FINE

@ **************** Track 3 (Midi-Chn.3) ****************

mus_drowning_3:
	.byte	KEYSH , mus_drowning_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_drowning_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 127
	.byte		N23   , Cs1 , v116
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
@ 001   ----------------------------------------
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
@ 002   ----------------------------------------
	.byte		N15   
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		N15   
	.byte	W16
@ 003   ----------------------------------------
	.byte		N15   
	.byte	W16
	.byte		N13   
	.byte	W14
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W06
@ 004   ----------------------------------------
mus_drowning_3_004:
	.byte	W06
	.byte		N11   , Cs1 , v116
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 mPtr	mus_drowning_3_004
@ 006   ----------------------------------------
	.byte	W06
	.byte		N11   , Cs1 , v116
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(mus_drowning):
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_drowning_pri	@ Priority
	.byte	mus_drowning_rev	@ Reverb

mAlignWord
	mPtr	mus_drowning_grp

	mPtr	mus_drowning_1
	mPtr	mus_drowning_2
	mPtr	mus_drowning_3

	.end
