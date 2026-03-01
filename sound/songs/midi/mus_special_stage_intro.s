	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_special_stage_intro_grp, voicegroup007
	.equ	mus_special_stage_intro_pri, 0
	.equ	mus_special_stage_intro_rev, reverb_set+0
	.equ	mus_special_stage_intro_mvl, 100
	.equ	mus_special_stage_intro_key, 0
	.equ	mus_special_stage_intro_tbs, 1
	.equ	mus_special_stage_intro_exg, 1
	.equ	mus_special_stage_intro_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_special_stage_intro)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

mus_special_stage_intro_1:
	.byte	KEYSH , mus_special_stage_intro_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 130*mus_special_stage_intro_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_special_stage_intro_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		N06   , Cn1 , v127
	.byte		N48   , Cs2 
	.byte	W06
	.byte		N07   , Cs1 
	.byte	W03
	.byte		N03   , An1 
	.byte	W03
	.byte		N10   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N04   , Gn1 
	.byte	W04
	.byte		N08   
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		        Cs1 
	.byte	W04
	.byte		N04   , Cn1 
	.byte	W04
	.byte		N08   
	.byte	W04
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N18   , Ds1 , v076
	.byte	W12
	.byte		        Gn1 , v127
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N18   , Ds1 , v076
	.byte	W06
	.byte		N06   , Cs1 , v080
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N18   , Ds1 , v076
	.byte	W06
@ 001   ----------------------------------------
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte		N18   , An1 
	.byte	W06
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N05   , Cs1 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte	FINE

@ **************** Track 2 (Midi-Chn.2) ****************

mus_special_stage_intro_2:
	.byte	KEYSH , mus_special_stage_intro_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 45
	.byte		VOL   , 127*mus_special_stage_intro_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		N09   , Bn2 , v120
	.byte	W54
	.byte		N06   , An2 , v104
	.byte	W18
	.byte		N19   , As2 , v112
	.byte	W18
	.byte		N06   , Bn2 , v124
	.byte	W06
@ 001   ----------------------------------------
	.byte	W24
	.byte		N05   , An3 , v127
	.byte	W06
	.byte		N05   
	.byte	W05
	.byte	FINE

@ **************** Track 3 (Midi-Chn.3) ****************

mus_special_stage_intro_3:
	.byte	KEYSH , mus_special_stage_intro_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 87
	.byte		VOL   , 127*mus_special_stage_intro_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 56
	.byte		LFODL , 0
	.byte		MOD   , 0
	.byte		MODT  , 2
	.byte		N09   , Bn2 , v120
	.byte	W54
	.byte		N06   , An2 , v104
	.byte	W18
	.byte		N19   , As2 , v112
	.byte	W18
	.byte		N06   , Bn2 , v124
	.byte	W06
@ 001   ----------------------------------------
	.byte	W24
	.byte		N05   , Ds3 , v127
	.byte		N05   , Gs3 
	.byte		N05   , Dn4 
	.byte	W06
	.byte		N08   , Ds3 
	.byte		N08   , Gs3 
	.byte		N08   , Dn4 
	.byte	W08
	.byte	FINE

@ **************** Track 4 (Midi-Chn.4) ****************

mus_special_stage_intro_4:
	.byte	KEYSH , mus_special_stage_intro_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 74
	.byte		VOL   , 127*mus_special_stage_intro_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 31
	.byte		LFODL , 22
	.byte		MOD   , 4
	.byte		MODT  , 0
	.byte		N09   , Bn2 , v120
	.byte		N09   , Bn3 
	.byte	W54
	.byte		N06   , An2 , v104
	.byte		N06   , An3 
	.byte	W18
	.byte		N19   , As2 , v112
	.byte		N19   , As3 
	.byte	W18
	.byte		N06   , Bn2 , v124
	.byte		N06   , Bn3 
	.byte	W06
@ 001   ----------------------------------------
	.byte	W24
	.byte		N05   , Dn4 , v127
	.byte	W06
	.byte		N04   
	.byte	W04
	.byte	FINE

@ **************** Track 5 (Midi-Chn.5) ****************

mus_special_stage_intro_5:
	.byte	KEYSH , mus_special_stage_intro_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 12
	.byte		VOL   , 79*mus_special_stage_intro_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 23
	.byte		LFODL , 22
	.byte		MOD   , 4
	.byte		MODT  , 0
	.byte		N09   , Bn3 , v120
	.byte	W54
	.byte		N06   , An3 , v104
	.byte	W18
	.byte		N19   , As3 , v112
	.byte	W18
	.byte		N06   , Bn3 , v124
	.byte	W06
@ 001   ----------------------------------------
	.byte	W24
	.byte		N05   , An4 , v127
	.byte	W06
	.byte		N04   
	.byte	W04
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(mus_special_stage_intro):
	.byte	5	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_special_stage_intro_pri	@ Priority
	.byte	mus_special_stage_intro_rev	@ Reverb

mAlignWord
	mPtr	mus_special_stage_intro_grp

	mPtr	mus_special_stage_intro_1
	mPtr	mus_special_stage_intro_2
	mPtr	mus_special_stage_intro_3
	mPtr	mus_special_stage_intro_4
	mPtr	mus_special_stage_intro_5

	.end
