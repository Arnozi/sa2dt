	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_7_boss_grp, voicegroup022
	.equ	mus_7_boss_pri, 0
	.equ	mus_7_boss_rev, reverb_set+0
	.equ	mus_7_boss_mvl, 98
	.equ	mus_7_boss_key, 0
	.equ	mus_7_boss_tbs, 1
	.equ	mus_7_boss_exg, 1
	.equ	mus_7_boss_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_7_boss)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

mus_7_boss_1:
	.byte	KEYSH , mus_7_boss_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 164*mus_7_boss_tbs/2
	.byte		VOICE , 68
	.byte		VOL   , 122*mus_7_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
mus_7_boss_1_B1:
@ 001   ----------------------------------------
mus_7_boss_1_001:
	.byte		N06   , An1 , v127
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
mus_7_boss_1_002:
	.byte		N06   , An1 , v127
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_1_001
@ 004   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_1_002
@ 005   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_1_001
@ 006   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_1_002
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_1_001
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_1_002
@ 009   ----------------------------------------
mus_7_boss_1_009:
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
@ 010   ----------------------------------------
mus_7_boss_1_010:
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
@ 011   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_1_009
@ 012   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_1_010
@ 013   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_1_009
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_1_010
@ 015   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_1_009
@ 016   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_1_010
@ 017   ----------------------------------------
mus_7_boss_1_017:
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 018   ----------------------------------------
mus_7_boss_1_018:
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte	PEND
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_1_017
@ 020   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_1_018
@ 021   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_1_001
@ 022   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_1_002
@ 023   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_1_001
@ 024   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_1_002
@ 025   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_1_009
@ 026   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_1_010
@ 027   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_1_009
@ 028   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_1_010
@ 029   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_1_009
@ 030   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_1_010
@ 031   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_1_009
@ 032   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_1_010
@ 033   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_1_009
@ 034   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_1_010
@ 035   ----------------------------------------
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
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 036   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte	GOTO
	 mPtr	mus_7_boss_1_B1
mus_7_boss_1_B2:
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	FINE

@ **************** Track 2 (Midi-Chn.2) ****************

mus_7_boss_2:
	.byte	KEYSH , mus_7_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_7_boss_mvl/mxv
	.byte	W03
mus_7_boss_2_B1:
@ 001   ----------------------------------------
mus_7_boss_2_001:
	.byte		N18   , Ds2 , v120
	.byte	W24
	.byte		N18   
	.byte	W24
	.byte		N18   
	.byte	W24
	.byte		N18   
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
mus_7_boss_2_002:
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
@ 003   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_2_001
@ 004   ----------------------------------------
	.byte		N18   , Ds2 , v120
	.byte	W24
	.byte		N18   
	.byte	W24
	.byte		N18   
	.byte	W18
	.byte		N06   , Ds2 , v112
	.byte	W06
	.byte		        Gs2 , v120
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        An2 
	.byte	W06
@ 005   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_2_001
@ 006   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_2_002
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_2_001
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_2_002
@ 009   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_2_001
@ 010   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_2_002
@ 011   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_2_001
@ 012   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_2_002
@ 013   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_2_001
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_2_002
@ 015   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_2_001
@ 016   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_2_002
@ 017   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_2_001
@ 018   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_2_002
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_2_001
@ 020   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_2_002
@ 021   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_2_001
@ 022   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_2_002
@ 023   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_2_001
@ 024   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_2_002
@ 025   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_2_001
@ 026   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_2_002
@ 027   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_2_001
@ 028   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_2_002
@ 029   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_2_001
@ 030   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_2_002
@ 031   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_2_001
@ 032   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_2_002
@ 033   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_2_001
@ 034   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_2_002
@ 035   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_2_001
@ 036   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_2_002
	.byte	GOTO
	 mPtr	mus_7_boss_2_B1
mus_7_boss_2_B2:
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	FINE

@ **************** Track 3 (Midi-Chn.3) ****************

mus_7_boss_3:
	.byte	KEYSH , mus_7_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 127
	.byte		VOL   , 122*mus_7_boss_mvl/mxv
	.byte	W03
mus_7_boss_3_B1:
@ 001   ----------------------------------------
mus_7_boss_3_001:
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
	.byte	PEND
@ 002   ----------------------------------------
mus_7_boss_3_002:
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
@ 003   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_3_002
@ 004   ----------------------------------------
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
	.byte		        En1 , v052
	.byte	W06
@ 005   ----------------------------------------
mus_7_boss_3_005:
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
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_3_002
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_3_002
@ 008   ----------------------------------------
mus_7_boss_3_008:
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
@ 009   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_3_002
@ 010   ----------------------------------------
mus_7_boss_3_010:
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
@ 011   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_3_008
@ 012   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_3_010
@ 013   ----------------------------------------
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
@ 014   ----------------------------------------
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
@ 015   ----------------------------------------
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
	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
@ 016   ----------------------------------------
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
@ 017   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_3_001
@ 018   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_3_002
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_3_002
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
mus_7_boss_3_022:
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
	 mPtr	mus_7_boss_3_022
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
	.byte	PATT
	 mPtr	mus_7_boss_3_005
@ 026   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_3_002
@ 027   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_3_002
@ 028   ----------------------------------------
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
@ 029   ----------------------------------------
mus_7_boss_3_029:
	.byte		N24   , Gn2 , v127
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
@ 030   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_3_002
@ 031   ----------------------------------------
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
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
@ 032   ----------------------------------------
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		        Ds1 , v080
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
	.byte		N12   
	.byte	W12
@ 033   ----------------------------------------
	.byte		N24   , Cs2 , v127
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
@ 034   ----------------------------------------
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
	.byte		N12   , Ds1 , v072
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
@ 035   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_3_029
@ 036   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_3_002
	.byte	GOTO
	 mPtr	mus_7_boss_3_B1
mus_7_boss_3_B2:
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	FINE

@ **************** Track 4 (Midi-Chn.4) ****************

mus_7_boss_4:
	.byte	KEYSH , mus_7_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 115
	.byte		VOL   , 81*mus_7_boss_mvl/mxv
	.byte	W03
mus_7_boss_4_B1:
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
	.byte	W06
	.byte		N06   , As3 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 026   ----------------------------------------
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 027   ----------------------------------------
	.byte		        En2 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 028   ----------------------------------------
	.byte		        Cs2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 029   ----------------------------------------
	.byte		        As1 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 030   ----------------------------------------
	.byte		        Gn1 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 031   ----------------------------------------
	.byte		        En1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 032   ----------------------------------------
	.byte		        Cs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_7_boss_4_B1
mus_7_boss_4_B2:
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	FINE

@ **************** Track 5 (Midi-Chn.5) ****************

mus_7_boss_5:
	.byte	KEYSH , mus_7_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		PAN   , c_v-30
	.byte		MOD   , 5
	.byte	W03
mus_7_boss_5_B1:
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte		VOL   , 61*mus_7_boss_mvl/mxv
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W84
	.byte		N06   , Cn4 , v120
	.byte	W06
	.byte		        Cs4 
	.byte	W06
@ 005   ----------------------------------------
	.byte		        Ds4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
@ 006   ----------------------------------------
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
@ 007   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
@ 008   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte		VOL   , 51*mus_7_boss_mvl/mxv
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
	.byte		N04   , Gn3 , v080
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
@ 018   ----------------------------------------
	.byte		        Fn3 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
@ 019   ----------------------------------------
mus_7_boss_5_019:
	.byte		N04   , Gn4 , v080
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte	PEND
@ 020   ----------------------------------------
mus_7_boss_5_020:
	.byte		N04   , Fn4 , v080
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte	PEND
@ 021   ----------------------------------------
	.byte		N04   
	.byte	W04
	.byte		        An5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        An5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        An5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        An5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Gs5 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Gs5 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Gs5 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Gs5 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Gs5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
@ 022   ----------------------------------------
	.byte		        Gn4 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Fn5 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Fn5 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Fn5 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        En5 
	.byte	W04
@ 023   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_5_019
@ 024   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_5_020
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
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte		N04   , Dn3 , v080
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Cs3 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Cs3 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Cs3 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Cs3 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Cn3 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Cn3 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Cn3 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
@ 036   ----------------------------------------
	.byte		        Cn3 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Cn3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        As2 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        As2 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        As2 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte	GOTO
	 mPtr	mus_7_boss_5_B1
mus_7_boss_5_B2:
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	FINE

@ **************** Track 6 (Midi-Chn.6) ****************

mus_7_boss_6:
	.byte	KEYSH , mus_7_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 12
	.byte		VOL   , 102*mus_7_boss_mvl/mxv
	.byte		PAN   , c_v+30
	.byte		MOD   , 0
	.byte	W03
mus_7_boss_6_B1:
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W84
	.byte		N06   , Cn3 , v120
	.byte	W06
	.byte		        Cs3 
	.byte	W06
@ 005   ----------------------------------------
	.byte		        Ds3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
@ 006   ----------------------------------------
	.byte		        Cn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
@ 007   ----------------------------------------
	.byte		        As2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
@ 008   ----------------------------------------
	.byte		        Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
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
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte		N04   , Gn4 , v080
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
@ 018   ----------------------------------------
	.byte		        Fn4 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        An3 
	.byte	W04
@ 019   ----------------------------------------
	.byte		        Gn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fn5 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Fn5 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Fn5 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
@ 020   ----------------------------------------
	.byte		        Fn5 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Fn5 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
@ 021   ----------------------------------------
	.byte		        An4 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
@ 022   ----------------------------------------
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
@ 023   ----------------------------------------
	.byte		        An3 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
@ 024   ----------------------------------------
	.byte		        Gn3 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        En4 
	.byte	W04
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
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte		        Dn4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
@ 036   ----------------------------------------
	.byte		        Cn4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte	GOTO
	 mPtr	mus_7_boss_6_B1
mus_7_boss_6_B2:
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	FINE

@ **************** Track 7 (Midi-Chn.7) ****************

mus_7_boss_7:
	.byte	KEYSH , mus_7_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 96
	.byte		PAN   , c_v+0
	.byte		VOL   , 122*mus_7_boss_mvl/mxv
	.byte	W03
mus_7_boss_7_B1:
@ 001   ----------------------------------------
mus_7_boss_7_001:
	.byte		N36   , Cn3 , v112
	.byte	W36
	.byte		        Cs3 
	.byte	W36
	.byte		        Ds3 
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
mus_7_boss_7_002:
	.byte	W12
	.byte		N36   , An2 , v112
	.byte	W36
	.byte		N24   , As2 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_7_001
@ 004   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_7_002
@ 005   ----------------------------------------
mus_7_boss_7_005:
	.byte		N36   , Cn3 , v100
	.byte	W36
	.byte		        Cs3 
	.byte	W36
	.byte		        Ds3 
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
mus_7_boss_7_006:
	.byte	W12
	.byte		N36   , An2 , v100
	.byte	W36
	.byte		N24   , As2 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte	PEND
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_7_005
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_7_006
@ 009   ----------------------------------------
	.byte		N48   , Dn3 , v112
	.byte	W96
@ 010   ----------------------------------------
mus_7_boss_7_010:
	.byte	W60
	.byte		N18   , Dn3 , v112
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte	PEND
@ 011   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_7_010
@ 015   ----------------------------------------
	.byte		N48   , Dn3 , v112
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
mus_7_boss_7_017:
	.byte		N36   , Gn3 , v112
	.byte	W36
	.byte		        Gs3 
	.byte	W36
	.byte		        As3 
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
mus_7_boss_7_018:
	.byte	W12
	.byte		N36   , En3 , v112
	.byte	W36
	.byte		N24   , Fn3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_7_017
@ 020   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_7_018
@ 021   ----------------------------------------
mus_7_boss_7_021:
	.byte		N36   , An3 , v112
	.byte	W36
	.byte		        As3 
	.byte	W36
	.byte		        Cn4 
	.byte	W24
	.byte	PEND
@ 022   ----------------------------------------
mus_7_boss_7_022:
	.byte	W12
	.byte		N36   , Fs3 , v112
	.byte	W36
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte	PEND
@ 023   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_7_021
@ 024   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_7_022
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte		N36   , Dn4 , v100
	.byte	W36
	.byte		        Cs4 
	.byte	W36
	.byte		N24   , Cn4 
	.byte	W24
@ 030   ----------------------------------------
	.byte		N36   , Bn3 
	.byte	W36
	.byte		        As3 
	.byte	W36
	.byte		N24   , An3 
	.byte	W24
@ 031   ----------------------------------------
	.byte		N36   , Gs3 
	.byte	W36
	.byte		        Gn3 
	.byte	W36
	.byte		N24   , Fs3 
	.byte	W24
@ 032   ----------------------------------------
	.byte		N36   , Fn3 
	.byte	W36
	.byte		        En3 
	.byte	W36
	.byte		N24   , Ds3 
	.byte	W24
@ 033   ----------------------------------------
	.byte		N48   , Dn3 
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_7_boss_7_B1
mus_7_boss_7_B2:
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	FINE

@ **************** Track 8 (Midi-Chn.8) ****************

mus_7_boss_8:
	.byte	KEYSH , mus_7_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 74
	.byte		VOL   , 91*mus_7_boss_mvl/mxv
	.byte		BENDR , 4
	.byte		PAN   , c_v+30
	.byte	W03
mus_7_boss_8_B1:
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
	.byte	W96
@ 020   ----------------------------------------
	.byte	W60
	.byte		N06   , Cs2 , v100
	.byte	W12
	.byte		        En2 
	.byte	W06
	.byte		        Cs2 
	.byte	W12
	.byte		N12   , An2 
	.byte	W06
@ 021   ----------------------------------------
	.byte	W12
	.byte		N06   , Gs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W06
	.byte		N12   , En2 
	.byte	W12
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N18   , An1 
	.byte	W18
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte		N06   , Dn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Fn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 025   ----------------------------------------
	.byte		N18   , Dn3 
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
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_7_boss_8_B1
mus_7_boss_8_B2:
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	FINE

@ **************** Track 9 (Midi-Chn.9) ****************

mus_7_boss_9:
	.byte	KEYSH , mus_7_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 74
	.byte		VOL   , 91*mus_7_boss_mvl/mxv
	.byte		BENDR , 4
	.byte		PAN   , c_v-30
	.byte	W03
mus_7_boss_9_B1:
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
	.byte	W96
@ 020   ----------------------------------------
	.byte	W60
	.byte		N06   , Cs3 , v100
	.byte	W12
	.byte		        En3 
	.byte	W06
	.byte		        Cs3 
	.byte	W12
	.byte		N12   , An3 
	.byte	W06
@ 021   ----------------------------------------
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N18   , An2 
	.byte	W18
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte		N06   , Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W06
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Fn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
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
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_7_boss_9_B1
mus_7_boss_9_B2:
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	FINE

@ **************** Track 10 (Midi-Chn.10) ****************

mus_7_boss_10:
	.byte	KEYSH , mus_7_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 89
	.byte		VOL   , 122*mus_7_boss_mvl/mxv
	.byte		BENDR , 12
	.byte	W03
mus_7_boss_10_B1:
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte		PAN   , c_v+30
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
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
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte		N12   , An3 , v100
	.byte	W11
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		N12   , An4 
	.byte	W23
	.byte		PAN   , c_v+30
	.byte	W01
	.byte		N12   , Gs4 
	.byte	W23
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		N12   , En4 
	.byte	W23
	.byte		PAN   , c_v+30
	.byte	W01
	.byte		N12   , Gn4 
	.byte	W12
@ 016   ----------------------------------------
	.byte	W11
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		N12   , Dn4 
	.byte	W23
	.byte		PAN   , c_v+30
	.byte	W01
	.byte		N24   , Fn4 
	.byte	W23
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		N12   , En4 
	.byte	W11
	.byte		PAN   , c_v+30
	.byte	W01
	.byte		N12   , Cn4 
	.byte	W11
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		N12   , An3 
	.byte	W12
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
	.byte		TIE   , Dn4 , v040
	.byte	W96
@ 026   ----------------------------------------
	.byte	W48
	.byte	W01
	.byte		BEND  , c_v+1
	.byte	W01
	.byte		        c_v+3
	.byte	W02
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+7
	.byte	W02
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		PAN   , c_v-18
	.byte		BEND  , c_v+13
	.byte	W02
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+16
	.byte	W02
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+22
	.byte	W02
	.byte		        c_v+24
	.byte	W01
	.byte		PAN   , c_v-6
	.byte		BEND  , c_v+26
	.byte	W02
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+30
	.byte	W02
	.byte		        c_v+31
	.byte	W01
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+35
	.byte	W02
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v+37
	.byte	W01
	.byte		        c_v+39
	.byte	W02
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+43
	.byte	W01
	.byte		        c_v+45
	.byte	W02
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+48
	.byte	W02
	.byte		PAN   , c_v+18
	.byte		BEND  , c_v+50
	.byte	W01
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+54
	.byte	W02
	.byte		        c_v+56
	.byte	W01
	.byte		        c_v+58
	.byte	W02
	.byte		        c_v+60
	.byte	W01
	.byte		        c_v+62
	.byte	W02
@ 027   ----------------------------------------
	.byte		PAN   , c_v+30
	.byte		BEND  , c_v+63
	.byte	W96
@ 028   ----------------------------------------
	.byte	W48
	.byte	W02
	.byte		        c_v+53
	.byte	W02
	.byte		        c_v+42
	.byte	W02
	.byte		        c_v+32
	.byte	W02
	.byte		        c_v+23
	.byte	W02
	.byte		        c_v+14
	.byte	W02
	.byte		        c_v+5
	.byte	W02
	.byte		        c_v-3
	.byte	W02
	.byte		        c_v-10
	.byte	W02
	.byte		        c_v-17
	.byte	W02
	.byte		        c_v-24
	.byte	W03
	.byte		        c_v-30
	.byte	W02
	.byte		        c_v-35
	.byte	W02
	.byte		        c_v-40
	.byte	W02
	.byte		        c_v-45
	.byte	W02
	.byte		        c_v-49
	.byte	W02
	.byte		        c_v-53
	.byte	W02
	.byte		        c_v-56
	.byte	W02
	.byte		        c_v-58
	.byte	W02
	.byte		        c_v-61
	.byte	W02
	.byte		        c_v-62
	.byte	W02
	.byte		        c_v-64
	.byte	W03
	.byte		        c_v-64
	.byte	W02
	.byte		EOT   
@ 029   ----------------------------------------
	.byte		BEND  , c_v-64
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte		        c_v+0
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_7_boss_10_B1
mus_7_boss_10_B2:
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	FINE

@ **************** Track 11 (Midi-Chn.11) ****************

mus_7_boss_11:
	.byte	KEYSH , mus_7_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
	.byte		VOL   , 122*mus_7_boss_mvl/mxv
	.byte		PAN   , c_v-30
	.byte	W03
mus_7_boss_11_B1:
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
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte		TIE   , Dn3 , v120
	.byte	W96
@ 010   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte	W48
@ 011   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 012   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte	W48
@ 013   ----------------------------------------
	.byte		TIE   , Dn4 
	.byte	W96
@ 014   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte	W48
@ 015   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 016   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte	W48
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
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_7_boss_11_B1
mus_7_boss_11_B2:
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	FINE

@ **************** Track 12 (Midi-Chn.12) ****************

mus_7_boss_12:
	.byte	KEYSH , mus_7_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 15
	.byte		VOL   , 122*mus_7_boss_mvl/mxv
	.byte		PAN   , c_v+30
	.byte		MOD   , 5
	.byte	W03
mus_7_boss_12_B1:
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
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte		TIE   , Dn3 , v120
	.byte	W96
@ 010   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte	W48
@ 011   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 012   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte	W48
@ 013   ----------------------------------------
	.byte		TIE   , Dn4 
	.byte	W96
@ 014   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte	W48
@ 015   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 016   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte	W48
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
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_7_boss_12_B1
mus_7_boss_12_B2:
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	FINE

@ **************** Track 13 (Midi-Chn.13) ****************

mus_7_boss_13:
	.byte	KEYSH , mus_7_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 103
	.byte		VOL   , 117*mus_7_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
mus_7_boss_13_B1:
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
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
mus_7_boss_13_017:
	.byte		BEND  , c_v-48
	.byte		N36   , Cn3 , v100
	.byte	W01
	.byte		BEND  , c_v-37
	.byte	W02
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-13
	.byte	W02
	.byte		        c_v+0
	.byte	W30
	.byte		N36   , Cs3 
	.byte	W36
	.byte		        Ds3 
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
mus_7_boss_13_018:
	.byte	W12
	.byte		N36   , An2 , v100
	.byte	W36
	.byte		N24   , As2 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_13_017
@ 020   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_13_018
@ 021   ----------------------------------------
mus_7_boss_13_021:
	.byte		BEND  , c_v-48
	.byte		N36   , Dn3 , v100
	.byte	W01
	.byte		BEND  , c_v-37
	.byte	W02
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-13
	.byte	W02
	.byte		        c_v+0
	.byte	W30
	.byte		N36   , Ds3 
	.byte	W36
	.byte		        Fn3 
	.byte	W24
	.byte	PEND
@ 022   ----------------------------------------
mus_7_boss_13_022:
	.byte	W12
	.byte		N36   , Bn2 , v100
	.byte	W36
	.byte		N24   , Cn3 
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte	PEND
@ 023   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_13_021
@ 024   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_13_022
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
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_7_boss_13_B1
mus_7_boss_13_B2:
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	FINE

@ **************** Track 14 (Midi-Chn.14) ****************

mus_7_boss_14:
	.byte	KEYSH , mus_7_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 118
	.byte		VOL   , 122*mus_7_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	PRIO  , 20
	.byte	W03
mus_7_boss_14_B1:
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
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
mus_7_boss_14_009:
	.byte		N12   , Dn3 , v100
	.byte	W12
	.byte		        Dn4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Cn4 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
mus_7_boss_14_010:
	.byte	W12
	.byte		N12   , Gn3 , v100
	.byte	W24
	.byte		N24   , As3 
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_14_009
@ 012   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_14_010
@ 013   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_14_009
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_14_010
@ 015   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_14_009
@ 016   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_14_010
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
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_7_boss_14_B1
mus_7_boss_14_B2:
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	FINE

@ **************** Track 15 (Midi-Chn.15) ****************

mus_7_boss_15:
	.byte	KEYSH , mus_7_boss_key+0
@ 000   ----------------------------------------
	.byte		VOL   , 122*mus_7_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
mus_7_boss_15_B1:
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte		VOICE , 94
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
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
	.byte		N06   , An2 , v100
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En2 
	.byte	W06
@ 014   ----------------------------------------
	.byte		        Cn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
@ 015   ----------------------------------------
	.byte		N03   , An1 , v112
	.byte	W03
	.byte		N21   , An2 
	.byte	W92
	.byte	W01
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
	.byte		VOICE , 70
	.byte	W60
	.byte		N12   , Gn3 , v100
	.byte	W18
	.byte		N12   
	.byte	W18
@ 026   ----------------------------------------
	.byte		N24   
	.byte	W96
@ 027   ----------------------------------------
	.byte		N24   
	.byte	W60
	.byte		N12   
	.byte	W18
	.byte		N12   
	.byte	W18
@ 028   ----------------------------------------
	.byte		N24   
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_7_boss_15_B1
mus_7_boss_15_B2:
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	FINE

@ **************** Track 16 (Midi-Chn.16) ****************

mus_7_boss_16:
	.byte	KEYSH , mus_7_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 117
	.byte		VOL   , 122*mus_7_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	PRIO  , 15
	.byte	W03
mus_7_boss_16_B1:
@ 001   ----------------------------------------
mus_7_boss_16_001:
	.byte		N36   , Cn2 , v112
	.byte	W36
	.byte		        Cs2 
	.byte	W36
	.byte		N32   , Ds2 
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
mus_7_boss_16_002:
	.byte	W11
	.byte		N36   , An1 , v112
	.byte	W36
	.byte		N24   , As1 
	.byte	W24
	.byte		        Bn1 
	.byte	W24
	.byte	W01
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_16_001
@ 004   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_16_002
@ 005   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_16_001
@ 006   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_16_002
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_16_001
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_16_002
@ 009   ----------------------------------------
	.byte		N48   , Dn2 , v112
	.byte	W96
@ 010   ----------------------------------------
mus_7_boss_16_010:
	.byte	W60
	.byte		N18   , Dn2 , v112
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte	PEND
@ 011   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_16_010
@ 015   ----------------------------------------
	.byte		N48   , Dn2 , v112
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
mus_7_boss_16_017:
	.byte		N36   , Gn2 , v112
	.byte	W36
	.byte		        Gs2 
	.byte	W36
	.byte		        As2 
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
mus_7_boss_16_018:
	.byte	W12
	.byte		N36   , En2 , v112
	.byte	W36
	.byte		N24   , Fn2 
	.byte	W24
	.byte		        Fs2 
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_16_017
@ 020   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_16_018
@ 021   ----------------------------------------
mus_7_boss_16_021:
	.byte		N36   , An2 , v112
	.byte	W36
	.byte		        As2 
	.byte	W36
	.byte		        Cn3 
	.byte	W24
	.byte	PEND
@ 022   ----------------------------------------
mus_7_boss_16_022:
	.byte	W12
	.byte		N36   , Fs2 , v112
	.byte	W36
	.byte		N24   , Gn2 
	.byte	W24
	.byte		        Gs2 
	.byte	W24
	.byte	PEND
@ 023   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_16_021
@ 024   ----------------------------------------
	.byte	PATT
	 mPtr	mus_7_boss_16_022
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte		N36   , Dn3 , v100
	.byte	W36
	.byte		        Cs3 
	.byte	W36
	.byte		N24   , Cn3 
	.byte	W24
@ 030   ----------------------------------------
	.byte		N36   , Bn2 
	.byte	W36
	.byte		        As2 
	.byte	W36
	.byte		N24   , An2 
	.byte	W24
@ 031   ----------------------------------------
	.byte		N36   , Gs2 
	.byte	W36
	.byte		        Gn2 
	.byte	W36
	.byte		N24   , Fs2 
	.byte	W24
@ 032   ----------------------------------------
	.byte		N36   , Fn2 
	.byte	W36
	.byte		        En2 
	.byte	W36
	.byte		N24   , Ds2 
	.byte	W24
@ 033   ----------------------------------------
	.byte		N48   , Dn2 
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_7_boss_16_B1
mus_7_boss_16_B2:
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(mus_7_boss):
	.byte	16	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_7_boss_pri	@ Priority
	.byte	mus_7_boss_rev	@ Reverb

mAlignWord
	mPtr	mus_7_boss_grp

	mPtr	mus_7_boss_1
	mPtr	mus_7_boss_2
	mPtr	mus_7_boss_3
	mPtr	mus_7_boss_4
	mPtr	mus_7_boss_5
	mPtr	mus_7_boss_6
	mPtr	mus_7_boss_7
	mPtr	mus_7_boss_8
	mPtr	mus_7_boss_9
	mPtr	mus_7_boss_10
	mPtr	mus_7_boss_11
	mPtr	mus_7_boss_12
	mPtr	mus_7_boss_13
	mPtr	mus_7_boss_14
	mPtr	mus_7_boss_15
	mPtr	mus_7_boss_16

	.end
