	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_character_selection_grp, voicegroup007
	.equ	mus_character_selection_pri, 0
	.equ	mus_character_selection_rev, reverb_set+0
	.equ	mus_character_selection_mvl, 120
	.equ	mus_character_selection_key, 0
	.equ	mus_character_selection_tbs, 1
	.equ	mus_character_selection_exg, 1
	.equ	mus_character_selection_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_character_selection)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

mus_character_selection_1:
	.byte	KEYSH , mus_character_selection_key+0
mus_character_selection_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 120*mus_character_selection_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_character_selection_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 15
	.byte		N06   , Cn1 , v120
	.byte	W12
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Cn1 , v108
	.byte	W06
	.byte		        Cs1 , v120
	.byte	W12
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Cn1 , v112
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Cn1 , v112
	.byte	W12
	.byte		        Cs1 , v120
	.byte	W12
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Cs1 , v116
	.byte	W06
@ 001   ----------------------------------------
mus_character_selection_1_001:
	.byte		N06   , Cn1 , v120
	.byte	W12
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Cn1 , v108
	.byte	W06
	.byte		        Cs1 , v120
	.byte	W12
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Cn1 , v112
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Cn1 , v112
	.byte	W12
	.byte		        Cs1 , v120
	.byte	W12
	.byte		N12   , Ds1 , v044
	.byte	W06
	.byte		N06   , Cs1 , v116
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Dn1 , v044
	.byte	W12
	.byte		        Cs1 , v120
	.byte	W12
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Cn1 , v112
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Cn1 , v112
	.byte	W12
	.byte		        Cs1 , v120
	.byte	W12
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Cs1 , v116
	.byte	W06
@ 003   ----------------------------------------
	.byte	PATT
	 mPtr	mus_character_selection_1_001
@ 004   ----------------------------------------
mus_character_selection_1_004:
	.byte		N06   , Cn1 , v120
	.byte	W12
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Cn1 , v108
	.byte	W06
	.byte		        Cs1 , v120
	.byte	W12
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Cn1 , v112
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Cn1 , v112
	.byte	W12
	.byte		        Cs1 , v120
	.byte	W12
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Cs1 , v116
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 mPtr	mus_character_selection_1_004
@ 006   ----------------------------------------
	.byte	PATT
	 mPtr	mus_character_selection_1_004
@ 007   ----------------------------------------
	.byte		N06   , Cn1 , v120
	.byte	W12
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Cn1 , v108
	.byte	W06
	.byte		        Cs1 , v120
	.byte	W12
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Cn1 , v112
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs1 , v120
	.byte	W12
	.byte		        Cn1 , v112
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Cs1 , v116
	.byte	W06
@ 008   ----------------------------------------
mus_character_selection_1_008:
	.byte		N06   , Cn1 , v120
	.byte	W12
	.byte		        Ds1 , v048
	.byte	W12
	.byte		        Cs1 , v120
	.byte	W12
	.byte		        Ds1 , v048
	.byte	W06
	.byte		        Cn1 , v112
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        Ds1 , v048
	.byte	W12
	.byte		        Cs1 , v120
	.byte	W12
	.byte		        Ds1 , v048
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Ds1 , v048
	.byte	W12
	.byte		        Cs1 , v120
	.byte	W12
	.byte		        Ds1 , v048
	.byte	W06
	.byte		        Cs1 , v112
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Cn1 , v112
	.byte		N12   , En1 , v044
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        Cn1 , v116
	.byte		N18   , En1 , v044
	.byte	W12
	.byte		N06   , Cn1 , v116
	.byte	W06
@ 010   ----------------------------------------
	.byte	PATT
	 mPtr	mus_character_selection_1_008
@ 011   ----------------------------------------
	.byte		N06   , Cn1 , v120
	.byte	W12
	.byte		        Ds1 , v048
	.byte	W12
	.byte		        Cs1 , v120
	.byte	W06
	.byte		        Cs1 , v112
	.byte	W06
	.byte		        Ds1 , v048
	.byte	W06
	.byte		        Cn1 , v112
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Cn1 , v112
	.byte		N12   , En1 , v044
	.byte	W12
	.byte		N06   , Cs1 , v116
	.byte	W06
	.byte		        Cn1 
	.byte		N18   , En1 , v044
	.byte	W12
	.byte		N06   , Cn1 , v116
	.byte	W06
@ 012   ----------------------------------------
	.byte	PATT
	 mPtr	mus_character_selection_1_008
@ 013   ----------------------------------------
	.byte		N06   , Cs1 , v112
	.byte	W12
	.byte		        Ds1 , v048
	.byte	W06
	.byte		        Cs1 , v112
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds1 , v048
	.byte	W06
	.byte		        Cs1 , v068
	.byte	W06
	.byte		        Cs1 , v120
	.byte	W06
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Cn1 , v112
	.byte		N12   , En1 , v044
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        Cn1 , v116
	.byte		N18   , En1 , v044
	.byte	W12
	.byte		N06   , Cn1 , v116
	.byte	W06
@ 014   ----------------------------------------
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Ds1 , v048
	.byte	W12
	.byte		        Cs1 , v120
	.byte	W12
	.byte		        Ds1 , v048
	.byte	W12
	.byte		        Cn1 , v112
	.byte	W12
	.byte		        Ds1 , v048
	.byte	W06
	.byte		        Cs1 , v112
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Ds1 , v048
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
@ 015   ----------------------------------------
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W48
	.byte		N03   , Cs1 , v068
	.byte	W03
	.byte		        Cs1 , v112
	.byte	W03
	.byte		N06   , Cn1 , v116
	.byte	W06
	.byte		        Cn1 , v124
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W06
	.byte	GOTO
	 mPtr	mus_character_selection_1_B1
mus_character_selection_1_B2:
@ 016   ----------------------------------------
	.byte	FINE

@ **************** Track 2 (Midi-Chn.2) ****************

mus_character_selection_2:
	.byte	KEYSH , mus_character_selection_key+0
mus_character_selection_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 44
	.byte		VOL   , 80*mus_character_selection_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 0
	.byte		N16   , Ds1 , v120
	.byte	W18
	.byte		N04   , Ds1 , v116
	.byte	W66
	.byte		        As1 
	.byte	W06
	.byte		        As1 , v120
	.byte	W06
@ 001   ----------------------------------------
mus_character_selection_2_001:
	.byte		N16   , Ds1 , v120
	.byte	W18
	.byte		N04   
	.byte	W42
	.byte		        Ds1 , v116
	.byte	W12
	.byte		MOD   , 0
	.byte		N04   , As1 , v124
	.byte	W06
	.byte		N16   , Cs2 
	.byte	W18
	.byte	PEND
@ 002   ----------------------------------------
mus_character_selection_2_002:
	.byte		N16   , Ds1 , v120
	.byte	W18
	.byte		N04   , Ds1 , v116
	.byte	W66
	.byte		        As1 
	.byte	W06
	.byte		        As1 , v120
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 mPtr	mus_character_selection_2_001
@ 004   ----------------------------------------
	.byte	PATT
	 mPtr	mus_character_selection_2_002
@ 005   ----------------------------------------
	.byte	PATT
	 mPtr	mus_character_selection_2_001
@ 006   ----------------------------------------
	.byte		N16   , Ds1 , v127
	.byte	W18
	.byte		N04   
	.byte	W66
	.byte		        As1 
	.byte	W06
	.byte		N04   
	.byte	W06
@ 007   ----------------------------------------
	.byte		N16   , Ds1 
	.byte	W18
	.byte		N04   
	.byte	W42
	.byte		N05   
	.byte	W06
	.byte		N04   , As1 
	.byte	W06
	.byte		MOD   , 0
	.byte		N04   , Ds2 
	.byte	W06
	.byte		N16   , Dn2 
	.byte	W18
@ 008   ----------------------------------------
	.byte		N56   , Cs2 
	.byte	W60
	.byte		N17   
	.byte	W18
	.byte		        Gs1 
	.byte	W18
@ 009   ----------------------------------------
	.byte		N44   , Cs1 
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		N05   , Gs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W06
	.byte		N16   , Cn2 
	.byte	W18
@ 010   ----------------------------------------
	.byte		N72   , Bn1 
	.byte	W78
	.byte		N05   
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W12
@ 011   ----------------------------------------
	.byte		N56   , Bn0 
	.byte	W60
	.byte		N06   , Fs1 
	.byte	W12
	.byte		N05   , Bn1 
	.byte	W06
	.byte		N17   , As1 
	.byte	W18
@ 012   ----------------------------------------
	.byte		N72   , An1 
	.byte	W84
	.byte		N11   , En1 
	.byte	W12
@ 013   ----------------------------------------
	.byte		N54   , An1 
	.byte	W60
	.byte		N16   
	.byte	W18
	.byte		        Gs1 
	.byte	W18
@ 014   ----------------------------------------
	.byte		N76   , Gn1 
	.byte	W78
	.byte		N05   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
@ 015   ----------------------------------------
	.byte		        As1 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N03   
	.byte	W78
	.byte	GOTO
	 mPtr	mus_character_selection_2_B1
mus_character_selection_2_B2:
@ 016   ----------------------------------------
	.byte	FINE

@ **************** Track 3 (Midi-Chn.3) ****************

mus_character_selection_3:
	.byte	KEYSH , mus_character_selection_key+0
mus_character_selection_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 70
	.byte		VOL   , 100*mus_character_selection_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		MOD   , 24
	.byte		LFOS  , 43
	.byte		MODT  , 2
	.byte		LFODL , 0
	.byte	W24
	.byte		N30   , Cn3 , v127
	.byte	W72
@ 001   ----------------------------------------
mus_character_selection_3_001:
	.byte	W24
	.byte		N30   , Cn3 , v127
	.byte	W24
	.byte		VOICE , 71
	.byte	W12
	.byte		N30   
	.byte	W36
	.byte	PEND
@ 002   ----------------------------------------
mus_character_selection_3_002:
	.byte		VOICE , 70
	.byte	W24
	.byte		N30   , Cn3 , v127
	.byte	W72
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 mPtr	mus_character_selection_3_001
@ 004   ----------------------------------------
	.byte	PATT
	 mPtr	mus_character_selection_3_002
@ 005   ----------------------------------------
	.byte	PATT
	 mPtr	mus_character_selection_3_001
@ 006   ----------------------------------------
	.byte	PATT
	 mPtr	mus_character_selection_3_002
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_character_selection_3_001
@ 008   ----------------------------------------
	.byte		VOICE , 73
	.byte		TIE   , Cn3 , v127
	.byte	W96
@ 009   ----------------------------------------
	.byte	W54
	.byte		EOT   
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N18   , Bn2 
	.byte	W18
@ 010   ----------------------------------------
	.byte		TIE   , As2 
	.byte	W96
@ 011   ----------------------------------------
	.byte	W54
	.byte		EOT   
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N18   , An2 
	.byte	W18
@ 012   ----------------------------------------
	.byte		TIE   , Gs2 
	.byte	W96
@ 013   ----------------------------------------
	.byte	W54
	.byte		EOT   
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N18   , Gn2 
	.byte	W18
@ 014   ----------------------------------------
	.byte		VOICE , 72
	.byte		N96   , Fs2 
	.byte	W96
@ 015   ----------------------------------------
	.byte		N04   , Cn3 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W78
	.byte	GOTO
	 mPtr	mus_character_selection_3_B1
mus_character_selection_3_B2:
@ 016   ----------------------------------------
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(mus_character_selection):
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_character_selection_pri	@ Priority
	.byte	mus_character_selection_rev	@ Reverb

mAlignWord
	mPtr	mus_character_selection_grp

	mPtr	mus_character_selection_1
	mPtr	mus_character_selection_2
	mPtr	mus_character_selection_3

	.end
