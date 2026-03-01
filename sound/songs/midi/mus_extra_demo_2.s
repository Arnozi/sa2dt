	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_extra_demo_2_grp, voicegroup022
	.equ	mus_extra_demo_2_pri, 0
	.equ	mus_extra_demo_2_rev, reverb_set+0
	.equ	mus_extra_demo_2_mvl, 94
	.equ	mus_extra_demo_2_key, 0
	.equ	mus_extra_demo_2_tbs, 1
	.equ	mus_extra_demo_2_exg, 1
	.equ	mus_extra_demo_2_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_extra_demo_2)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

mus_extra_demo_2_1:
	.byte	KEYSH , mus_extra_demo_2_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 140*mus_extra_demo_2_tbs/2
	.byte		VOICE , 42
	.byte		VOL   , 109*mus_extra_demo_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
mus_extra_demo_2_1_B1:
@ 001   ----------------------------------------
mus_extra_demo_2_1_001:
	.byte		N18   , Dn2 , v120
	.byte	W18
	.byte		N06   , Cs2 
	.byte	W18
	.byte		N18   , Cn2 
	.byte	W18
	.byte		N09   , Bn1 
	.byte	W18
	.byte		N06   , As1 
	.byte	W12
	.byte		N09   , An1 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_extra_demo_2_1_002:
	.byte		N18   , Dn2 , v120
	.byte	W18
	.byte		N06   , Cs2 
	.byte	W18
	.byte		N18   , Cn2 
	.byte	W18
	.byte		N06   , Bn1 
	.byte	W18
	.byte		        As1 
	.byte	W12
	.byte		N09   , An1 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	W03
	.byte		N18   , Dn2 
	.byte	W18
	.byte		N06   , Cs2 
	.byte	W18
	.byte		N18   , Cn2 
	.byte	W18
	.byte		N09   , Bn1 
	.byte	W18
	.byte		N06   , As1 
	.byte	W12
	.byte		N09   , An1 
	.byte	W09
@ 004   ----------------------------------------
	.byte	W03
	.byte		N18   , Dn2 
	.byte	W18
	.byte		N06   , Cs2 
	.byte	W18
	.byte		N18   , Cn2 
	.byte	W18
	.byte		N06   , Bn1 
	.byte	W18
	.byte		        As1 
	.byte	W12
	.byte		N09   , An1 
	.byte	W09
@ 005   ----------------------------------------
mus_extra_demo_2_1_005:
	.byte		N06   , Dn2 , v127
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
mus_extra_demo_2_1_006:
	.byte		N06   , Dn2 , v127
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte	PEND
@ 007   ----------------------------------------
mus_extra_demo_2_1_007:
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 008   ----------------------------------------
mus_extra_demo_2_1_008:
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_1_005
@ 010   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_1_006
@ 011   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_1_007
@ 012   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_1_008
@ 013   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_1_001
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_1_002
@ 015   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_1_001
@ 016   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_1_002
@ 017   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_1_005
@ 018   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_1_006
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_1_007
@ 020   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_1_008
@ 021   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_1_005
@ 022   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_1_006
@ 023   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_1_007
@ 024   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_1_008
@ 025   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_1_005
@ 026   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_1_006
@ 027   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_1_007
@ 028   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_1_008
@ 029   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_1_005
@ 030   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_1_006
@ 031   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_1_007
@ 032   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_1_008
	.byte	GOTO
	 mPtr	mus_extra_demo_2_1_B1
mus_extra_demo_2_1_B2:
@ 033   ----------------------------------------
	.byte		N06   , Dn2 , v127
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	FINE

@ **************** Track 2 (Midi-Chn.2) ****************

mus_extra_demo_2_2:
	.byte	KEYSH , mus_extra_demo_2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 127
	.byte		VOL   , 114*mus_extra_demo_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
mus_extra_demo_2_2_B1:
@ 001   ----------------------------------------
mus_extra_demo_2_2_001:
	.byte		N18   , Ds2 , v120
	.byte	W24
	.byte		N18   
	.byte	W24
	.byte		N18   
	.byte	W18
	.byte		N06   , Ds2 , v112
	.byte	W06
	.byte		N12   , Ds2 , v120
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_extra_demo_2_2_002:
	.byte		N18   , Ds2 , v120
	.byte	W24
	.byte		N18   
	.byte	W24
	.byte		N18   
	.byte	W24
	.byte		N18   
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_2_001
@ 004   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_2_002
@ 005   ----------------------------------------
	.byte		VOICE , 127
	.byte		VOL   , 114*mus_extra_demo_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N18   , Ds2 , v120
	.byte	W24
	.byte		N18   
	.byte	W24
	.byte		N18   
	.byte	W24
	.byte		N18   
	.byte	W24
@ 006   ----------------------------------------
mus_extra_demo_2_2_006:
	.byte		N18   , Ds2 , v120
	.byte	W24
	.byte		N18   
	.byte	W24
	.byte		N18   
	.byte	W18
	.byte		N06   , Ds2 , v112
	.byte	W30
	.byte	PEND
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_2_002
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_2_001
@ 009   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_2_002
@ 010   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_2_006
@ 011   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_2_002
@ 012   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_2_001
@ 013   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_2_001
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_2_002
@ 015   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_2_001
@ 016   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_2_002
@ 017   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_2_002
@ 018   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_2_006
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_2_002
@ 020   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_2_001
@ 021   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_2_002
@ 022   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_2_001
@ 023   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_2_002
@ 024   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_2_001
@ 025   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_2_002
@ 026   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_2_006
@ 027   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_2_002
@ 028   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_2_001
@ 029   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_2_002
@ 030   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_2_006
@ 031   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_2_002
@ 032   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_2_001
	.byte	GOTO
	 mPtr	mus_extra_demo_2_2_B1
mus_extra_demo_2_2_B2:
@ 033   ----------------------------------------
	.byte		N18   , Ds2 , v120
	.byte	W24
	.byte		N18   
	.byte	W18
	.byte	FINE

@ **************** Track 3 (Midi-Chn.3) ****************

mus_extra_demo_2_3:
	.byte	KEYSH , mus_extra_demo_2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 127
	.byte		VOL   , 109*mus_extra_demo_2_mvl/mxv
	.byte	W03
mus_extra_demo_2_3_B1:
@ 001   ----------------------------------------
mus_extra_demo_2_3_001:
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_3_001
@ 003   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_3_001
@ 004   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_3_001
@ 005   ----------------------------------------
	.byte		VOICE , 127
	.byte		VOL   , 109*mus_extra_demo_2_mvl/mxv
	.byte		N24   , Cs2 , v127
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
@ 006   ----------------------------------------
mus_extra_demo_2_3_006:
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Ds1 , v072
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Ds1 , v072
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte	PEND
@ 007   ----------------------------------------
mus_extra_demo_2_3_007:
	.byte		N11   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_3_006
@ 009   ----------------------------------------
	.byte		N36   , Fs2 , v120
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v072
	.byte	W02
	.byte		N11   , Cs5 , v004
	.byte	W04
	.byte		N06   , Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
@ 010   ----------------------------------------
mus_extra_demo_2_3_010:
	.byte		N06   , Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Ds1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Ds1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte	PEND
@ 011   ----------------------------------------
mus_extra_demo_2_3_011:
	.byte		N06   , Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte	PEND
@ 012   ----------------------------------------
mus_extra_demo_2_3_012:
	.byte		N06   , Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Ds1 , v080
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v080
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_3_001
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_3_001
@ 015   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_3_001
@ 016   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_3_001
@ 017   ----------------------------------------
	.byte		N24   , Cs2 , v120
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
@ 018   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_3_001
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_3_001
@ 020   ----------------------------------------
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
@ 021   ----------------------------------------
	.byte		N24   , Fs2 , v120
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
@ 022   ----------------------------------------
mus_extra_demo_2_3_022:
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte	PEND
@ 023   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_3_022
@ 024   ----------------------------------------
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
@ 025   ----------------------------------------
	.byte		N24   , Cs2 , v127
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
@ 026   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_3_006
@ 027   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_3_007
@ 028   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_3_006
@ 029   ----------------------------------------
	.byte		N36   , Fs2 , v120
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
@ 030   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_3_010
@ 031   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_3_011
@ 032   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_3_012
	.byte	GOTO
	 mPtr	mus_extra_demo_2_3_B1
mus_extra_demo_2_3_B2:
@ 033   ----------------------------------------
	.byte		N24   , Cs2 , v120
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte	FINE

@ **************** Track 4 (Midi-Chn.4) ****************

mus_extra_demo_2_4:
	.byte	KEYSH , mus_extra_demo_2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 93
	.byte		VOL   , 109*mus_extra_demo_2_mvl/mxv
	.byte		MOD   , 50
	.byte		LFOS  , 40
	.byte		MODT  , 1
	.byte	PRIO  , 10
	.byte		PAN   , c_v+0
	.byte	W03
mus_extra_demo_2_4_B1:
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
mus_extra_demo_2_4_005:
	.byte	W12
	.byte		N11   , Fn3 , v124
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N17   , Fn3 , v116
	.byte		N17   , Dn4 
	.byte	W18
	.byte		N11   , Fn3 , v104
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N17   , Fn3 , v096
	.byte		N17   , Dn4 
	.byte	W18
	.byte		        Fn3 , v080
	.byte		N17   , Dn4 
	.byte	W18
	.byte		        Fn3 , v068
	.byte		N17   , Dn4 
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
mus_extra_demo_2_4_006:
	.byte	W12
	.byte		N17   , Fn3 , v056
	.byte		N17   , Dn4 
	.byte	W18
	.byte		        Fn3 , v044
	.byte		N17   , Dn4 
	.byte	W18
	.byte		        Fn3 , v028
	.byte		N17   , Dn4 
	.byte	W18
	.byte		        Fn3 , v016
	.byte		N17   , Dn4 
	.byte	W18
	.byte		N23   , Fn3 , v004
	.byte		N23   , Dn4 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
mus_extra_demo_2_4_007:
	.byte	W12
	.byte		N11   , Gn3 , v124
	.byte		N11   , Ds4 
	.byte	W12
	.byte		N17   , Gn3 , v116
	.byte		N17   , Ds4 
	.byte	W18
	.byte		N11   , Gn3 , v104
	.byte		N11   , Ds4 
	.byte	W12
	.byte		N17   , Gn3 , v096
	.byte		N17   , Ds4 
	.byte	W18
	.byte		        Gn3 , v080
	.byte		N17   , Ds4 
	.byte	W18
	.byte		        Gn3 , v068
	.byte		N17   , Ds4 
	.byte	W06
	.byte	PEND
@ 008   ----------------------------------------
	.byte	W12
	.byte		        Gn3 , v056
	.byte		N17   , Ds4 
	.byte	W18
	.byte		        Gn3 , v044
	.byte		N17   , Ds4 
	.byte	W18
	.byte		        Gn3 , v028
	.byte		N17   , Ds4 
	.byte	W11
	.byte		N11   , An4 , v004
	.byte	W07
	.byte		N17   , Gn3 , v016
	.byte		N17   , Ds4 
	.byte	W18
	.byte		N11   , Gn3 , v004
	.byte		N11   , Ds4 
	.byte	W12
@ 009   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_4_005
@ 010   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_4_006
@ 011   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_4_007
@ 012   ----------------------------------------
mus_extra_demo_2_4_012:
	.byte	W12
	.byte		N17   , Gn3 , v056
	.byte		N17   , Ds4 
	.byte	W18
	.byte		        Gn3 , v044
	.byte		N17   , Ds4 
	.byte	W18
	.byte		        Gn3 , v028
	.byte		N17   , Ds4 
	.byte	W18
	.byte		        Gn3 , v016
	.byte		N17   , Ds4 
	.byte	W18
	.byte		N11   , Gn3 , v004
	.byte		N11   , Ds4 
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_4_005
@ 018   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_4_006
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_4_007
@ 020   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_4_012
@ 021   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_4_005
@ 022   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_4_006
@ 023   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_4_007
@ 024   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_4_012
@ 025   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_4_005
@ 026   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_4_006
@ 027   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_4_007
@ 028   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_4_012
@ 029   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_4_005
@ 030   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_4_006
@ 031   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_4_007
@ 032   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_4_012
	.byte	GOTO
	 mPtr	mus_extra_demo_2_4_B1
mus_extra_demo_2_4_B2:
@ 033   ----------------------------------------
	.byte	W12
	.byte		N11   , Fn3 , v124
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N17   , Fn3 , v116
	.byte		N17   , Dn4 
	.byte	W18
	.byte		N11   , Fn3 , v104
	.byte		N11   , Dn4 
	.byte	W11
	.byte	FINE

@ **************** Track 5 (Midi-Chn.5) ****************

mus_extra_demo_2_5:
	.byte	KEYSH , mus_extra_demo_2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 85
	.byte		VOL   , 87*mus_extra_demo_2_mvl/mxv
	.byte		MOD   , 50
	.byte		LFOS  , 40
	.byte		MODT  , 1
	.byte	PRIO  , 5
	.byte		PAN   , c_v-30
	.byte	W03
mus_extra_demo_2_5_B1:
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
mus_extra_demo_2_5_002:
	.byte		N18   , Dn3 , v112
	.byte	W18
	.byte		N06   , Cs3 
	.byte	W18
	.byte		N18   , Cn3 
	.byte	W18
	.byte		N06   , Bn2 
	.byte	W18
	.byte		        As2 
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_5_002
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_5_002
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_5_002
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_extra_demo_2_5_B1
mus_extra_demo_2_5_B2:
@ 033   ----------------------------------------
	.byte	FINE

@ **************** Track 6 (Midi-Chn.6) ****************

mus_extra_demo_2_6:
	.byte	KEYSH , mus_extra_demo_2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 49*mus_extra_demo_2_mvl/mxv
	.byte		PAN   , c_v-30
	.byte		MOD   , 2
	.byte		LFOS  , 20
	.byte		MODT  , 0
	.byte	W03
mus_extra_demo_2_6_B1:
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 49*mus_extra_demo_2_mvl/mxv
	.byte		PAN   , c_v-30
	.byte		MOD   , 2
	.byte		LFOS  , 20
	.byte		MODT  , 0
	.byte	W12
	.byte		N11   , Dn5 , v124
	.byte	W12
	.byte		N17   , Dn5 , v116
	.byte	W18
	.byte		N11   , Dn5 , v104
	.byte	W12
	.byte		N17   , Dn5 , v096
	.byte	W18
	.byte		        Dn5 , v080
	.byte	W18
	.byte		        Dn5 , v068
	.byte	W06
@ 006   ----------------------------------------
mus_extra_demo_2_6_006:
	.byte	W12
	.byte		N17   , Dn5 , v056
	.byte	W18
	.byte		        Dn5 , v044
	.byte	W18
	.byte		        Dn5 , v028
	.byte	W18
	.byte		        Dn5 , v016
	.byte	W18
	.byte		N23   , Dn5 , v004
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
	.byte	W12
	.byte		N11   , Ds5 , v124
	.byte	W12
	.byte		N17   , Ds5 , v116
	.byte	W18
	.byte		N11   , Ds5 , v104
	.byte	W12
	.byte		N17   , Ds5 , v096
	.byte	W18
	.byte		        Ds5 , v080
	.byte	W18
	.byte		        Ds5 , v068
	.byte	W06
@ 008   ----------------------------------------
mus_extra_demo_2_6_008:
	.byte	W12
	.byte		N17   , Ds5 , v056
	.byte	W18
	.byte		        Ds5 , v044
	.byte	W18
	.byte		        Ds5 , v028
	.byte	W18
	.byte		        Ds5 , v016
	.byte	W18
	.byte		N05   , Ds5 , v004
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
	.byte		VOL   , 49*mus_extra_demo_2_mvl/mxv
	.byte	W12
	.byte		N11   , Dn5 , v124
	.byte	W12
	.byte		N17   , Dn5 , v116
	.byte	W18
	.byte		N11   , Dn5 , v104
	.byte	W12
	.byte		N17   , Dn5 , v096
	.byte	W18
	.byte		        Dn5 , v080
	.byte	W18
	.byte		        Dn5 , v068
	.byte	W06
@ 010   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_6_006
@ 011   ----------------------------------------
	.byte	W12
	.byte		N11   , Ds5 , v124
	.byte	W12
	.byte		N17   , Ds5 , v116
	.byte	W18
	.byte		N11   , Ds5 , v104
	.byte	W12
	.byte		        Cs5 , v004
	.byte		N17   , Ds5 , v096
	.byte	W18
	.byte		        Ds5 , v080
	.byte	W18
	.byte		        Ds5 , v068
	.byte	W06
@ 012   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_6_008
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte		VOL   , 90*mus_extra_demo_2_mvl/mxv
	.byte	W48
	.byte		N06   , Dn5 , v100
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 018   ----------------------------------------
mus_extra_demo_2_6_018:
	.byte		N06   , An4 , v100
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte	PEND
@ 019   ----------------------------------------
mus_extra_demo_2_6_019:
	.byte		N06   , Ds3 , v096
	.byte	W06
	.byte		        Gn3 , v088
	.byte	W06
	.byte		        Ds3 , v084
	.byte	W06
	.byte		        As2 , v076
	.byte	W06
	.byte		        Ds3 , v068
	.byte	W06
	.byte		        As2 , v060
	.byte	W06
	.byte		        Gn2 , v052
	.byte	W06
	.byte		        As2 , v048
	.byte	W06
	.byte		        Gn2 , v040
	.byte	W06
	.byte		        Ds2 , v032
	.byte	W06
	.byte		        Gn2 , v024
	.byte	W06
	.byte		        Ds2 , v016
	.byte	W06
	.byte		        As1 , v012
	.byte	W24
	.byte	PEND
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W48
	.byte		        Dn5 , v100
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 022   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_6_018
@ 023   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_6_019
@ 024   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		VOL   , 113*mus_extra_demo_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N04   , Cs3 , v076
	.byte	W01
@ 025   ----------------------------------------
	.byte	W03
	.byte		TIE   , Dn3 , v108
	.byte	W92
	.byte	W01
@ 026   ----------------------------------------
	.byte	W48
	.byte	W01
	.byte		N28   , An2 , v092
	.byte	W01
	.byte		EOT   , Dn3 
	.byte	W23
	.byte		N18   , Gn3 , v096
	.byte	W16
	.byte		N04   , Fs3 , v068
	.byte	W04
	.byte		N06   , Fn3 , v108
	.byte	W03
@ 027   ----------------------------------------
	.byte	W01
	.byte		TIE   , Ds3 , v104
	.byte	W92
	.byte	W03
@ 028   ----------------------------------------
	.byte	W72
	.byte	W02
	.byte		N20   , Fn3 , v096
	.byte	W02
	.byte		EOT   , Ds3 
	.byte	W14
	.byte		N07   , En3 , v092
	.byte	W05
	.byte		        Ds3 , v100
	.byte	W01
@ 029   ----------------------------------------
	.byte	W05
	.byte		TIE   , Dn3 , v092
	.byte	W90
	.byte	W01
@ 030   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N28   , An2 , v088
	.byte	W01
	.byte		EOT   , Dn3 
	.byte	W24
	.byte		N19   , Gn3 , v096
	.byte	W15
	.byte		N04   , Fs3 , v076
	.byte	W04
	.byte		N07   , Fn3 , v108
	.byte	W05
@ 031   ----------------------------------------
	.byte		TIE   , Ds3 , v088
	.byte	W96
@ 032   ----------------------------------------
	.byte	W80
	.byte	W02
	.byte		EOT   
	.byte	W14
	.byte	GOTO
	 mPtr	mus_extra_demo_2_6_B1
mus_extra_demo_2_6_B2:
@ 033   ----------------------------------------
	.byte	FINE

@ **************** Track 7 (Midi-Chn.7) ****************

mus_extra_demo_2_7:
	.byte	KEYSH , mus_extra_demo_2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 12
	.byte		VOL   , 49*mus_extra_demo_2_mvl/mxv
	.byte		PAN   , c_v+30
	.byte		MOD   , 50
	.byte		LFOS  , 40
	.byte		MODT  , 1
	.byte	W03
mus_extra_demo_2_7_B1:
@ 001   ----------------------------------------
	.byte		VOL   , 49*mus_extra_demo_2_mvl/mxv
	.byte		PAN   , c_v+30
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte		VOICE , 12
	.byte		VOL   , 49*mus_extra_demo_2_mvl/mxv
	.byte		PAN   , c_v+30
	.byte		MOD   , 50
	.byte		LFOS  , 40
	.byte		MODT  , 1
	.byte	W03
	.byte		VOL   , 49*mus_extra_demo_2_mvl/mxv
	.byte		PAN   , c_v+30
	.byte	W09
	.byte		N11   , Fn4 , v124
	.byte	W12
	.byte		N17   , Fn4 , v116
	.byte	W18
	.byte		N11   , Fn4 , v104
	.byte	W12
	.byte		N17   , Fn4 , v096
	.byte	W18
	.byte		        Fn4 , v080
	.byte	W18
	.byte		        Fn4 , v068
	.byte	W06
@ 006   ----------------------------------------
mus_extra_demo_2_7_006:
	.byte	W12
	.byte		N17   , Fn4 , v056
	.byte	W18
	.byte		        Fn4 , v044
	.byte	W18
	.byte		        Fn4 , v028
	.byte	W18
	.byte		        Fn4 , v016
	.byte	W18
	.byte		N23   , Fn4 , v004
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
mus_extra_demo_2_7_007:
	.byte	W12
	.byte		N11   , Gn4 , v124
	.byte	W12
	.byte		N17   , Gn4 , v116
	.byte	W18
	.byte		N11   , Gn4 , v104
	.byte	W12
	.byte		N17   , Gn4 , v096
	.byte	W18
	.byte		        Gn4 , v080
	.byte	W18
	.byte		        Gn4 , v068
	.byte	W06
	.byte	PEND
@ 008   ----------------------------------------
mus_extra_demo_2_7_008:
	.byte	W12
	.byte		N17   , Gn4 , v056
	.byte	W18
	.byte		        Gn4 , v044
	.byte	W18
	.byte		        Gn4 , v028
	.byte	W18
	.byte		        Gn4 , v016
	.byte	W18
	.byte		N05   , Gn4 , v004
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
	.byte		VOL   , 49*mus_extra_demo_2_mvl/mxv
	.byte	W12
	.byte		N11   , Fn4 , v124
	.byte	W12
	.byte		N17   , Fn4 , v116
	.byte	W18
	.byte		N11   , Fn4 , v104
	.byte	W12
	.byte		N17   , Fn4 , v096
	.byte	W18
	.byte		        Fn4 , v080
	.byte	W18
	.byte		        Fn4 , v068
	.byte	W06
@ 010   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_7_006
@ 011   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_7_007
@ 012   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_7_008
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W06
	.byte		VOL   , 90*mus_extra_demo_2_mvl/mxv
	.byte	W48
	.byte		N06   , Dn5 , v072
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 018   ----------------------------------------
mus_extra_demo_2_7_018:
	.byte		N06   , Dn4 , v072
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte	PEND
@ 019   ----------------------------------------
mus_extra_demo_2_7_019:
	.byte		N06   , Fn3 , v072
	.byte	W06
	.byte		        Ds3 , v068
	.byte	W06
	.byte		        Gn3 , v060
	.byte	W06
	.byte		        Ds3 , v052
	.byte	W06
	.byte		        As2 , v044
	.byte	W06
	.byte		        Ds3 , v040
	.byte	W06
	.byte		        As2 , v032
	.byte	W06
	.byte		        Gn2 , v024
	.byte	W06
	.byte		        As2 , v016
	.byte	W06
	.byte		        Gn2 , v008
	.byte	W06
	.byte		        Ds2 , v004
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        As1 
	.byte	W18
	.byte	PEND
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W54
	.byte		        Dn5 , v072
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 022   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_7_018
@ 023   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_7_019
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_extra_demo_2_7_B1
mus_extra_demo_2_7_B2:
@ 033   ----------------------------------------
	.byte	FINE

@ **************** Track 8 (Midi-Chn.8) ****************

mus_extra_demo_2_8:
	.byte	KEYSH , mus_extra_demo_2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 72
	.byte		VOL   , 117*mus_extra_demo_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
mus_extra_demo_2_8_B1:
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
mus_extra_demo_2_8_005:
	.byte	W01
	.byte		N02   , Dn2 , v112
	.byte	W02
	.byte		        En2 , v116
	.byte	W02
	.byte		        Fn2 , v120
	.byte	W01
	.byte		        Gn2 
	.byte	W02
	.byte		        An2 
	.byte	W01
	.byte		N03   , Bn2 , v112
	.byte	W03
	.byte		N08   , Cn3 , v124
	.byte	W12
	.byte		N14   , Cn3 , v116
	.byte	W18
	.byte		N08   , Cn3 , v104
	.byte	W12
	.byte		N14   , Cn3 , v096
	.byte	W18
	.byte		        Cn3 , v080
	.byte	W18
	.byte		        Cn3 , v068
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
mus_extra_demo_2_8_006:
	.byte	W12
	.byte		N14   , Cn3 , v056
	.byte	W18
	.byte		        Cn3 , v044
	.byte	W18
	.byte		        Cn3 , v028
	.byte	W18
	.byte		        Cn3 , v016
	.byte	W30
	.byte	PEND
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W90
	.byte		N04   , An1 , v124
	.byte	W03
	.byte		N03   , Bn1 , v076
	.byte	W02
	.byte		N02   , Cn2 , v080
	.byte	W01
@ 009   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_8_005
@ 010   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_8_006
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
mus_extra_demo_2_8_017:
	.byte	W06
	.byte		N04   , An1 , v124
	.byte	W03
	.byte		N03   , Bn1 , v076
	.byte	W02
	.byte		N02   , Cn2 , v080
	.byte	W02
	.byte		        Dn2 , v112
	.byte	W02
	.byte		        En2 , v116
	.byte	W02
	.byte		        Fn2 , v120
	.byte	W01
	.byte		        Gn2 
	.byte	W02
	.byte		        An2 
	.byte	W01
	.byte		N03   , Bn2 , v112
	.byte	W03
	.byte		N11   , Cn3 , v124
	.byte	W12
	.byte		N17   , Cn3 , v116
	.byte	W18
	.byte		N11   , Cn3 , v104
	.byte	W12
	.byte		N17   , Cn3 , v096
	.byte	W18
	.byte		        Cn3 , v080
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
mus_extra_demo_2_8_018:
	.byte	W06
	.byte		N17   , Cn3 , v068
	.byte	W18
	.byte		        Cn3 , v056
	.byte	W18
	.byte		        Cn3 , v044
	.byte	W18
	.byte		        Cn3 , v028
	.byte	W18
	.byte		        Cn3 , v016
	.byte	W18
	.byte	PEND
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
mus_extra_demo_2_8_021:
	.byte	W06
	.byte		N04   , An1 , v124
	.byte	W03
	.byte		N03   , Bn1 , v076
	.byte	W02
	.byte		N02   , Cn2 , v080
	.byte	W02
	.byte		        Dn2 , v112
	.byte	W02
	.byte		        En2 , v116
	.byte	W02
	.byte		        Fn2 , v120
	.byte	W01
	.byte		        Gn2 
	.byte	W02
	.byte		        An2 
	.byte	W01
	.byte		N03   , Bn2 , v112
	.byte	W03
	.byte		N08   , Cn3 , v124
	.byte	W12
	.byte		N14   , Cn3 , v116
	.byte	W18
	.byte		N08   , Cn3 , v104
	.byte	W12
	.byte		N14   , Cn3 , v096
	.byte	W18
	.byte		        Cn3 , v080
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
mus_extra_demo_2_8_022:
	.byte	W06
	.byte		N14   , Cn3 , v068
	.byte	W18
	.byte		        Cn3 , v056
	.byte	W18
	.byte		        Cn3 , v044
	.byte	W18
	.byte		        Cn3 , v028
	.byte	W18
	.byte		        Cn3 , v016
	.byte	W18
	.byte	PEND
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_8_021
@ 026   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_8_022
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_8_017
@ 030   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_8_018
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_extra_demo_2_8_B1
mus_extra_demo_2_8_B2:
@ 033   ----------------------------------------
	.byte	W06
	.byte		N04   , An1 , v124
	.byte	W03
	.byte		N03   , Bn1 , v076
	.byte	W02
	.byte		N02   , Cn2 , v080
	.byte	W02
	.byte		        Dn2 , v112
	.byte	W02
	.byte		        En2 , v116
	.byte	W02
	.byte		        Fn2 , v120
	.byte	W01
	.byte		        Gn2 
	.byte	W02
	.byte		        An2 
	.byte	W01
	.byte		N03   , Bn2 , v112
	.byte	W03
	.byte		N08   , Cn3 , v124
	.byte	W12
	.byte		N14   , Cn3 , v116
	.byte	W14
	.byte	FINE

@ **************** Track 9 (Midi-Chn.9) ****************

mus_extra_demo_2_9:
	.byte	KEYSH , mus_extra_demo_2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 73
	.byte		VOL   , 127*mus_extra_demo_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
mus_extra_demo_2_9_B1:
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W90
	.byte		N04   , An1 , v124
	.byte	W03
	.byte		N03   , Bn1 , v076
	.byte	W02
	.byte		N02   , Cn2 , v080
	.byte	W01
@ 007   ----------------------------------------
	.byte	W01
	.byte		        Dn2 , v112
	.byte	W02
	.byte		        En2 , v116
	.byte	W02
	.byte		        Fn2 , v120
	.byte	W01
	.byte		        Gn2 
	.byte	W02
	.byte		        An2 
	.byte	W01
	.byte		N03   , Bn2 , v112
	.byte	W03
	.byte		N08   , Cn3 , v124
	.byte	W12
	.byte		N14   , Cn3 , v116
	.byte	W18
	.byte		N08   , Cn3 , v104
	.byte	W12
	.byte		N14   , Cn3 , v096
	.byte	W18
	.byte		        Cn3 , v080
	.byte	W18
	.byte		        Cn3 , v068
	.byte	W06
@ 008   ----------------------------------------
	.byte	W12
	.byte		        Cn3 , v056
	.byte	W18
	.byte		        Cn3 , v044
	.byte	W18
	.byte		        Cn3 , v028
	.byte	W18
	.byte		        Cn3 , v016
	.byte	W30
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
mus_extra_demo_2_9_011:
	.byte	W06
	.byte		N04   , An1 , v124
	.byte	W03
	.byte		N03   , Bn1 , v076
	.byte	W02
	.byte		N02   , Cn2 , v080
	.byte	W02
	.byte		        Dn2 , v112
	.byte	W02
	.byte		        En2 , v116
	.byte	W02
	.byte		        Fn2 , v120
	.byte	W01
	.byte		        Gn2 
	.byte	W02
	.byte		        An2 
	.byte	W01
	.byte		N03   , Bn2 , v112
	.byte	W03
	.byte		N08   , Cn3 , v124
	.byte	W12
	.byte		N14   , Cn3 , v116
	.byte	W18
	.byte		N08   , Cn3 , v104
	.byte	W12
	.byte		N14   , Cn3 , v096
	.byte	W18
	.byte		        Cn3 , v080
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
mus_extra_demo_2_9_012:
	.byte	W06
	.byte		N14   , Cn3 , v068
	.byte	W18
	.byte		        Cn3 , v056
	.byte	W18
	.byte		        Cn3 , v044
	.byte	W18
	.byte		        Cn3 , v028
	.byte	W18
	.byte		        Cn3 , v016
	.byte	W18
	.byte	PEND
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_9_011
@ 020   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_9_012
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W06
	.byte		N04   , An1 , v124
	.byte	W03
	.byte		N03   , Bn1 , v076
	.byte	W02
	.byte		N02   , Cn2 , v080
	.byte	W02
	.byte		        Dn2 , v112
	.byte	W02
	.byte		        En2 , v116
	.byte	W02
	.byte		        Fn2 , v120
	.byte	W01
	.byte		        Gn2 
	.byte	W02
	.byte		        An2 
	.byte	W01
	.byte		N03   , Bn2 , v112
	.byte	W03
	.byte		N11   , Cn3 , v124
	.byte	W12
	.byte		N17   , Cn3 , v116
	.byte	W18
	.byte		N11   , Cn3 , v104
	.byte	W12
	.byte		N17   , Cn3 , v096
	.byte	W18
	.byte		        Cn3 , v080
	.byte	W12
@ 024   ----------------------------------------
	.byte	W06
	.byte		        Cn3 , v068
	.byte	W18
	.byte		        Cn3 , v056
	.byte	W18
	.byte		        Cn3 , v044
	.byte	W18
	.byte		        Cn3 , v028
	.byte	W18
	.byte		        Cn3 , v016
	.byte	W18
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_9_011
@ 028   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_9_012
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_9_011
@ 032   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_9_012
	.byte	GOTO
	 mPtr	mus_extra_demo_2_9_B1
mus_extra_demo_2_9_B2:
@ 033   ----------------------------------------
	.byte	FINE

@ **************** Track 10 (Midi-Chn.10) ****************

mus_extra_demo_2_10:
	.byte	KEYSH , mus_extra_demo_2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 106
	.byte		VOL   , 109*mus_extra_demo_2_mvl/mxv
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte	W03
mus_extra_demo_2_10_B1:
@ 001   ----------------------------------------
mus_extra_demo_2_10_001:
	.byte		N18   , Dn3 , v088
	.byte	W18
	.byte		N06   , Cs3 
	.byte	W18
	.byte		N18   , Cn3 
	.byte	W18
	.byte		N09   , Bn2 
	.byte	W18
	.byte		N06   , As2 
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_10_001
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_10_001
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_10_001
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_extra_demo_2_10_B1
mus_extra_demo_2_10_B2:
@ 033   ----------------------------------------
	.byte	FINE

@ **************** Track 11 (Midi-Chn.11) ****************

mus_extra_demo_2_11:
	.byte	KEYSH , mus_extra_demo_2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 118
	.byte		VOL   , 103*mus_extra_demo_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	PRIO  , 20
	.byte	W03
mus_extra_demo_2_11_B1:
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
mus_extra_demo_2_11_002:
	.byte		N18   , Dn3 , v088
	.byte	W18
	.byte		N06   , Cs3 
	.byte	W18
	.byte		N18   , Cn3 
	.byte	W18
	.byte		N09   , Bn2 
	.byte	W18
	.byte		N06   , As2 
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_11_002
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_11_002
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_11_002
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_extra_demo_2_11_B1
mus_extra_demo_2_11_B2:
@ 033   ----------------------------------------
	.byte	FINE

@ **************** Track 12 (Midi-Chn.12) ****************

mus_extra_demo_2_12:
	.byte	KEYSH , mus_extra_demo_2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 86
	.byte		VOL   , 109*mus_extra_demo_2_mvl/mxv
	.byte		MOD   , 50
	.byte		LFOS  , 40
	.byte		MODT  , 1
	.byte	PRIO  , 10
	.byte		PAN   , c_v-30
	.byte	W03
mus_extra_demo_2_12_B1:
@ 001   ----------------------------------------
mus_extra_demo_2_12_001:
	.byte		N18   , Dn3 , v120
	.byte	W18
	.byte		N06   , Cs3 
	.byte	W18
	.byte		N18   , Cn3 
	.byte	W18
	.byte		N09   , Bn2 
	.byte	W18
	.byte		N06   , As2 
	.byte	W12
	.byte		N09   , An2 
	.byte	W11
	.byte		PAN   , c_v+30
	.byte	W01
	.byte	PEND
@ 002   ----------------------------------------
mus_extra_demo_2_12_002:
	.byte		N18   , Dn3 , v120
	.byte	W18
	.byte		N06   , Cs3 
	.byte	W18
	.byte		N18   , Cn3 
	.byte	W18
	.byte		N06   , Bn2 
	.byte	W18
	.byte		        As2 
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_12_001
@ 004   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_12_002
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_12_001
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_12_002
@ 015   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_12_001
@ 016   ----------------------------------------
	.byte	PATT
	 mPtr	mus_extra_demo_2_12_002
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_extra_demo_2_12_B1
mus_extra_demo_2_12_B2:
@ 033   ----------------------------------------
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(mus_extra_demo_2):
	.byte	12	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_extra_demo_2_pri	@ Priority
	.byte	mus_extra_demo_2_rev	@ Reverb

mAlignWord
	mPtr	mus_extra_demo_2_grp

	mPtr	mus_extra_demo_2_1
	mPtr	mus_extra_demo_2_2
	mPtr	mus_extra_demo_2_3
	mPtr	mus_extra_demo_2_4
	mPtr	mus_extra_demo_2_5
	mPtr	mus_extra_demo_2_6
	mPtr	mus_extra_demo_2_7
	mPtr	mus_extra_demo_2_8
	mPtr	mus_extra_demo_2_9
	mPtr	mus_extra_demo_2_10
	mPtr	mus_extra_demo_2_11
	mPtr	mus_extra_demo_2_12

	.end
