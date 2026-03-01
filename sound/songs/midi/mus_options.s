	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_options_grp, voicegroup022
	.equ	mus_options_pri, 0
	.equ	mus_options_rev, reverb_set+0
	.equ	mus_options_mvl, 100
	.equ	mus_options_key, 0
	.equ	mus_options_tbs, 1
	.equ	mus_options_exg, 1
	.equ	mus_options_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_options)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

mus_options_1:
	.byte	KEYSH , mus_options_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 110*mus_options_tbs/2
	.byte		VOICE , 67
	.byte		VOL   , 100*mus_options_mvl/mxv
	.byte	W24
@ 001   ----------------------------------------
mus_options_1_001:
	.byte		N06   , Cn2 , v120
	.byte	W06
	.byte		        Cn3 
	.byte	W18
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , An2 
	.byte	W06
	.byte		        Ds2 
	.byte	W18
	.byte		N12   , As1 
	.byte	W18
	.byte		        Fn2 
	.byte	W18
	.byte	PEND
@ 002   ----------------------------------------
mus_options_1_002:
	.byte		N06   , Cn2 , v120
	.byte	W06
	.byte		        Cn3 
	.byte	W18
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , An2 
	.byte	W06
	.byte		        Ds2 
	.byte	W18
	.byte		N12   , Gn2 
	.byte	W18
	.byte		        Cs2 
	.byte	W18
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_1_001
@ 004   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_1_002
mus_options_1_B1:
@ 005   ----------------------------------------
mus_options_1_005:
	.byte		N06   , Cn2 , v120
	.byte	W06
	.byte		        Cn3 
	.byte	W18
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , An2 
	.byte	W06
	.byte		        Ds2 
	.byte	W18
	.byte		N12   , As1 
	.byte	W12
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N12   , Cn2 
	.byte	W18
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_1_002
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_1_001
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_1_002
@ 009   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_1_005
@ 010   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_1_002
@ 011   ----------------------------------------
	.byte		N06   , Fn2 , v120
	.byte	W06
	.byte		        Fn3 
	.byte	W18
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W18
	.byte		N12   , As2 
	.byte	W18
	.byte		        Fn2 
	.byte	W18
@ 012   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		        Fn3 
	.byte	W18
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        An2 
	.byte	W18
	.byte		N12   , As2 
	.byte	W18
	.byte		        Bn2 
	.byte	W18
@ 013   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_1_005
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_1_002
@ 015   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_1_001
@ 016   ----------------------------------------
	.byte		N06   , Cn2 , v120
	.byte	W06
	.byte		        Cn3 
	.byte	W18
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , An2 
	.byte	W06
	.byte		        Ds2 
	.byte	W18
	.byte		N12   , Cn3 
	.byte	W18
	.byte		        As2 
	.byte	W18
@ 017   ----------------------------------------
mus_options_1_017:
	.byte		N06   , Gs2 , v120
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W18
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , Gs2 
	.byte	W18
	.byte	PEND
@ 018   ----------------------------------------
	.byte		N06   , As2 
	.byte	W06
	.byte		        As3 
	.byte	W18
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W18
	.byte		N12   , Fn3 
	.byte	W18
	.byte		        Bn2 
	.byte	W18
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_1_017
@ 020   ----------------------------------------
	.byte		N06   , As2 , v120
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   , Fn3 
	.byte	W18
	.byte		        As2 
	.byte	W18
@ 021   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_1_005
@ 022   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_1_002
@ 023   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_1_001
@ 024   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_1_002
@ 025   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_1_005
@ 026   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_1_002
@ 027   ----------------------------------------
	.byte		N06   , Bn2 , v120
	.byte	W06
	.byte		        Cn3 
	.byte	W12
	.byte		N12   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 028   ----------------------------------------
	.byte		        Cn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn3 
	.byte	W18
	.byte		N12   , Gn2 
	.byte	W18
	.byte		        Cs2 
	.byte	W18
@ 029   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_1_005
@ 030   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_1_002
	.byte	GOTO
	 mPtr	mus_options_1_B1
mus_options_1_B2:
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	FINE

@ **************** Track 2 (Midi-Chn.2) ****************

mus_options_2:
	.byte	KEYSH , mus_options_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 127
	.byte		VOL   , 120*mus_options_mvl/mxv
	.byte	W24
@ 001   ----------------------------------------
mus_options_2_001:
	.byte		N24   , Ds2 , v120
	.byte	W24
	.byte		N18   , En2 , v100
	.byte	W20
	.byte		N04   , Ds2 
	.byte	W04
	.byte		N12   , Ds2 , v120
	.byte	W12
	.byte		N06   , Ds2 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N18   , En2 
	.byte	W19
	.byte		N05   , Ds2 
	.byte	W05
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_2_001
@ 003   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_2_001
@ 004   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_2_001
mus_options_2_B1:
@ 005   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_2_001
@ 006   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_2_001
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_2_001
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_2_001
@ 009   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_2_001
@ 010   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_2_001
@ 011   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_2_001
@ 012   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_2_001
@ 013   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_2_001
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_2_001
@ 015   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_2_001
@ 016   ----------------------------------------
	.byte		N24   , Ds2 , v120
	.byte	W24
	.byte		N18   , En2 , v100
	.byte	W20
	.byte		N04   , Ds2 
	.byte	W04
	.byte		N06   , Ds2 , v120
	.byte	W06
	.byte		        En2 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 017   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_2_001
@ 018   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_2_001
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_2_001
@ 020   ----------------------------------------
	.byte		N12   , Ds2 , v120
	.byte	W12
	.byte		        En2 , v112
	.byte	W12
	.byte		N06   , En2 , v116
	.byte	W06
	.byte		        En2 , v120
	.byte	W06
	.byte		N08   , En2 , v127
	.byte	W08
	.byte		N04   , Ds2 , v100
	.byte	W04
	.byte		N06   , An1 , v120
	.byte	W06
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N06   , Ds2 , v100
	.byte	W06
	.byte		        En2 , v112
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
@ 021   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_2_001
@ 022   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_2_001
@ 023   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_2_001
@ 024   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_2_001
@ 025   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_2_001
@ 026   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_2_001
@ 027   ----------------------------------------
	.byte		N24   , Ds2 , v120
	.byte	W24
	.byte		N18   , En2 , v100
	.byte	W24
	.byte		N06   , Ds2 , v120
	.byte	W06
	.byte		        En2 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 028   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N18   , Ds2 
	.byte	W20
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        Gn1 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N06   , An1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N04   , Gs1 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
@ 029   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_2_001
@ 030   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_2_001
	.byte	GOTO
	 mPtr	mus_options_2_B1
mus_options_2_B2:
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	FINE

@ **************** Track 3 (Midi-Chn.3) ****************

mus_options_3:
	.byte	KEYSH , mus_options_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 127
	.byte		VOL   , 120*mus_options_mvl/mxv
	.byte		N05   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
@ 001   ----------------------------------------
	.byte		N24   , Fs2 , v120
	.byte	W06
	.byte		N05   , Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
@ 002   ----------------------------------------
mus_options_3_002:
	.byte		N05   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_3_002
@ 004   ----------------------------------------
	.byte		N05   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
mus_options_3_B1:
@ 005   ----------------------------------------
	.byte		N24   , Fs2 , v112
	.byte	W06
	.byte		N05   , Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
@ 006   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_3_002
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_3_002
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_3_002
@ 009   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_3_002
@ 010   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_3_002
@ 011   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_3_002
@ 012   ----------------------------------------
	.byte		N05   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
@ 013   ----------------------------------------
	.byte		N24   , Fs2 , v112
	.byte	W12
	.byte		N05   , Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        En1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
@ 014   ----------------------------------------
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Ds1 , v040
	.byte	W06
@ 015   ----------------------------------------
	.byte		N24   , Cn2 , v092
	.byte	W06
	.byte		N05   , Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
@ 016   ----------------------------------------
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        En1 , v040
	.byte	W54
@ 017   ----------------------------------------
	.byte		N24   , Cs2 , v120
	.byte	W12
	.byte		N05   , Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v044
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		        Ds1 , v044
	.byte	W06
	.byte		        Ds1 , v064
	.byte	W06
	.byte		        Ds1 , v044
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		        Ds1 , v044
	.byte	W06
	.byte		        Ds1 , v064
	.byte	W06
	.byte		        Ds1 , v044
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		        Ds1 , v044
	.byte	W06
@ 018   ----------------------------------------
	.byte		        Ds1 , v064
	.byte	W06
	.byte		        Ds1 , v044
	.byte	W06
	.byte		        Ds1 , v056
	.byte	W06
	.byte		        Ds1 , v044
	.byte	W06
	.byte		        Ds1 , v064
	.byte	W06
	.byte		        Ds1 , v044
	.byte	W06
	.byte		        Ds1 , v056
	.byte	W06
	.byte		        Ds1 , v044
	.byte	W06
	.byte		        Ds1 , v068
	.byte	W06
	.byte		        Ds1 , v048
	.byte	W06
	.byte		        En1 , v056
	.byte	W06
	.byte		        Ds1 , v048
	.byte	W06
	.byte		        Ds1 , v068
	.byte	W06
	.byte		        Ds1 , v048
	.byte	W06
	.byte		        En1 , v056
	.byte	W06
	.byte		        Ds1 , v048
	.byte	W06
@ 019   ----------------------------------------
	.byte		        Ds1 , v068
	.byte	W06
	.byte		        Ds1 , v048
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v048
	.byte	W06
	.byte		        Ds1 , v068
	.byte	W06
	.byte		        Ds1 , v048
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v048
	.byte	W06
	.byte		        En1 , v068
	.byte	W06
	.byte		        Ds1 , v048
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		        En1 , v072
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
@ 020   ----------------------------------------
	.byte		        En1 , v072
	.byte	W06
	.byte		        En1 , v052
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		        En1 , v052
	.byte	W06
	.byte		        En1 , v072
	.byte	W06
	.byte		        En1 , v052
	.byte	W06
	.byte		        En1 , v064
	.byte	W06
	.byte		        En1 , v072
	.byte	W54
@ 021   ----------------------------------------
	.byte		N24   , Cs2 , v127
	.byte	W12
	.byte		N05   , Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
@ 022   ----------------------------------------
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
@ 023   ----------------------------------------
	.byte		N24   , Fs2 , v100
	.byte	W06
	.byte		N05   , Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
@ 024   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_3_002
@ 025   ----------------------------------------
	.byte		N24   , Fs2 , v100
	.byte	W06
	.byte		N05   , Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
@ 026   ----------------------------------------
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Ds1 , v040
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
@ 027   ----------------------------------------
	.byte		N24   , Fn2 , v100
	.byte	W06
	.byte		N05   , Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Ds1 , v040
	.byte	W06
@ 028   ----------------------------------------
	.byte		N24   , Fs2 , v120
	.byte	W12
	.byte		N05   , Ds1 , v052
	.byte	W06
	.byte		        Ds1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		        Ds1 , v040
	.byte	W06
	.byte		N24   , Fn2 , v120
	.byte	W48
@ 029   ----------------------------------------
	.byte		        Cs2 
	.byte	W06
	.byte		N05   , Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		N18   , Fs2 , v100
	.byte	W18
	.byte		        Fn2 
	.byte	W18
@ 030   ----------------------------------------
	.byte		N24   , Gn2 , v112
	.byte	W12
	.byte		N05   , Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte	GOTO
	 mPtr	mus_options_3_B1
mus_options_3_B2:
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	FINE

@ **************** Track 4 (Midi-Chn.4) ****************

mus_options_4:
	.byte	KEYSH , mus_options_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 108
	.byte		VOL   , 127*mus_options_mvl/mxv
	.byte	PRIO  , 10
	.byte	W24
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
mus_options_4_B1:
@ 005   ----------------------------------------
mus_options_4_005:
	.byte	W23
	.byte		N01   , Fn3 , v096
	.byte	W01
	.byte		N03   , Fs3 , v116
	.byte	W06
	.byte		N07   
	.byte	W12
	.byte		N11   , Fs3 , v120
	.byte	W12
	.byte		N05   , Fn3 , v096
	.byte	W06
	.byte		N09   , Ds3 , v116
	.byte	W12
	.byte		N04   , Cn3 , v096
	.byte	W06
	.byte		N11   , Ds3 
	.byte	W12
	.byte		N05   , Cn3 , v092
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
	.byte		N08   , Fs3 , v124
	.byte	W12
	.byte		N09   , Fn3 , v112
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		        Ds3 , v120
	.byte	W12
	.byte		N10   , Cn3 , v116
	.byte	W17
	.byte		N02   , An3 , v088
	.byte	W01
	.byte		N15   , As3 
	.byte	W18
	.byte		N12   , Bn3 , v092
	.byte	W18
@ 007   ----------------------------------------
	.byte		N08   , Cn4 , v076
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_4_005
@ 010   ----------------------------------------
	.byte		N08   , Ds3 , v124
	.byte	W12
	.byte		N09   , Cn3 , v112
	.byte	W12
	.byte		N05   , Ds3 
	.byte	W06
	.byte		        Fn3 , v120
	.byte	W12
	.byte		N10   , Fs3 , v116
	.byte	W17
	.byte		N02   , Fn3 , v092
	.byte	W01
	.byte		N11   , Fs3 , v100
	.byte	W12
	.byte		N05   , Fn3 , v084
	.byte	W06
	.byte		N11   , Ds3 , v100
	.byte	W18
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_4_005
@ 014   ----------------------------------------
	.byte		N08   , Fs3 , v124
	.byte	W11
	.byte		N09   , Fn3 , v112
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		        Ds3 , v120
	.byte	W12
	.byte		N10   , Cn3 , v116
	.byte	W54
	.byte	W01
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
	.byte	GOTO
	 mPtr	mus_options_4_B1
mus_options_4_B2:
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	FINE

@ **************** Track 5 (Midi-Chn.5) ****************

mus_options_5:
	.byte	KEYSH , mus_options_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 107
	.byte		VOL   , 84*mus_options_mvl/mxv
	.byte	W24
@ 001   ----------------------------------------
mus_options_5_001:
	.byte		N06   , Cn4 , v100
	.byte		N05   , Fs4 
	.byte	W05
	.byte		N06   , Gn4 
	.byte	W19
	.byte		N12   , An3 
	.byte		N12   , Ds4 
	.byte	W18
	.byte		N05   , An3 
	.byte		N05   , Ds4 
	.byte	W18
	.byte		N06   , Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W06
	.byte		N12   , Cn4 
	.byte	W18
	.byte	PEND
@ 002   ----------------------------------------
mus_options_5_002:
	.byte		N06   , Cn4 , v100
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W18
	.byte		N12   , An3 
	.byte		N12   , Ds4 
	.byte	W18
	.byte		N05   , An3 
	.byte		N05   , Ds4 
	.byte	W18
	.byte		N06   , As3 
	.byte	W16
	.byte		N03   
	.byte	W02
	.byte		N12   , Bn3 
	.byte	W18
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_5_001
@ 004   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_5_002
mus_options_5_B1:
@ 005   ----------------------------------------
mus_options_5_005:
	.byte		N06   , Cn4 , v100
	.byte		N05   , Fs4 
	.byte	W05
	.byte		N06   , Gn4 
	.byte	W19
	.byte		N12   , An3 
	.byte		N12   , Ds4 
	.byte	W18
	.byte		N05   , An3 
	.byte		N05   , Ds4 
	.byte	W18
	.byte		N06   , Cn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W06
	.byte		N12   , Cn4 
	.byte	W18
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_5_002
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_5_001
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_5_002
@ 009   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_5_005
@ 010   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_5_002
@ 011   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_5_001
@ 012   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_5_002
@ 013   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_5_005
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_5_002
@ 015   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_5_001
@ 016   ----------------------------------------
	.byte		N06   , Cn4 , v100
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W18
	.byte		N12   , An3 
	.byte		N12   , Ds4 
	.byte	W18
	.byte		N05   , An3 
	.byte		N05   , Ds4 
	.byte	W18
	.byte		N06   , Cn4 
	.byte	W16
	.byte		N03   , An3 
	.byte	W02
	.byte		N12   , As3 
	.byte	W18
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
	.byte	PATT
	 mPtr	mus_options_5_001
@ 024   ----------------------------------------
	.byte		N06   , Cn4 , v100
	.byte		N05   , Fs4 
	.byte	W05
	.byte		N06   , Gn4 
	.byte	W19
	.byte		N12   , An3 
	.byte		N12   , Ds4 
	.byte	W18
	.byte		N05   , An3 
	.byte		N05   , Ds4 
	.byte	W18
	.byte		N06   , As3 
	.byte	W16
	.byte		N03   
	.byte	W02
	.byte		N12   , Bn3 
	.byte	W18
@ 025   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_5_001
@ 026   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_5_002
@ 027   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_5_001
@ 028   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_5_002
@ 029   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_5_001
@ 030   ----------------------------------------
	.byte	PATT
	 mPtr	mus_options_5_002
	.byte	GOTO
	 mPtr	mus_options_5_B1
mus_options_5_B2:
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	FINE

@ **************** Track 6 (Midi-Chn.6) ****************

mus_options_6:
	.byte	KEYSH , mus_options_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		PAN   , c_v+50
	.byte		VOL   , 70*mus_options_mvl/mxv
	.byte		MOD   , 5
	.byte		LFODL , 0
	.byte	W24
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
mus_options_6_B1:
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		N01   , Bn4 , v080
	.byte	W01
@ 007   ----------------------------------------
	.byte		N09   , Cn5 
	.byte	W12
	.byte		N06   , As4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		N04   , Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N10   , Cn4 
	.byte	W11
	.byte		N01   , Bn3 , v060
	.byte	W01
	.byte		N06   , Cn4 , v080
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N04   , Fs4 
	.byte	W06
	.byte		N06   , Fn4 
	.byte	W06
	.byte		N04   , Ds4 
	.byte	W06
	.byte		N06   , Cn4 
	.byte	W06
	.byte		N04   , As3 
	.byte	W05
	.byte		N01   , Bn3 , v060
	.byte	W01
@ 008   ----------------------------------------
	.byte		N24   , Cn4 , v072
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W88
	.byte	W01
	.byte		N01   , Fn4 
	.byte	W01
	.byte		N09   , Fs4 , v080
	.byte	W06
@ 011   ----------------------------------------
	.byte	W06
	.byte		N06   , Fn4 
	.byte	W06
	.byte		N04   , Ds4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N09   , Bn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W11
	.byte		N01   , Bn4 , v092
	.byte	W01
	.byte		N09   , Cn5 , v080
	.byte	W06
@ 012   ----------------------------------------
	.byte	W06
	.byte		N06   , As4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N04   , Fn4 
	.byte	W05
	.byte		N01   , Fs4 , v072
	.byte	W01
	.byte		N04   , Gn4 , v080
	.byte	W06
	.byte		N09   , As4 
	.byte	W11
	.byte		N01   , Bn4 , v072
	.byte	W01
	.byte		N04   , Cn5 , v080
	.byte	W12
	.byte		        Ds5 
	.byte	W11
	.byte		N01   , En5 , v072
	.byte	W01
	.byte		N04   , Fn5 , v080
	.byte	W12
	.byte		N09   , Gn5 
	.byte	W18
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W12
	.byte		N07   , Gs2 , v120
	.byte	W12
	.byte		N11   , Gs2 , v108
	.byte	W12
	.byte		N05   , Gn2 , v104
	.byte	W06
	.byte		N12   , Gs2 , v120
	.byte	W16
	.byte		N07   , As2 
	.byte	W13
	.byte		N10   , Bn2 , v108
	.byte	W13
	.byte		N07   , Cn3 
	.byte	W11
	.byte		N05   , Dn3 
	.byte	W01
@ 018   ----------------------------------------
	.byte	W11
	.byte		N04   , Dn3 , v120
	.byte	W13
	.byte		N10   , Dn3 , v112
	.byte	W11
	.byte		N05   , Cs3 , v108
	.byte	W05
	.byte		N13   , Dn3 , v092
	.byte	W13
	.byte		N05   , Cn3 , v080
	.byte	W06
	.byte		N28   , As2 , v116
	.byte	W36
	.byte	W01
@ 019   ----------------------------------------
	.byte	W11
	.byte		N04   , Gs2 
	.byte	W05
	.byte		N07   , Gn2 , v080
	.byte	W06
	.byte		N14   , Gs2 , v108
	.byte	W14
	.byte		N05   , Gn2 , v092
	.byte	W05
	.byte		N12   , Gs2 , v108
	.byte	W16
	.byte		N11   , As2 , v124
	.byte	W14
	.byte		N10   , Bn2 , v104
	.byte	W12
	.byte		N09   , Cn3 , v116
	.byte	W12
	.byte		N03   , Dn3 , v108
	.byte	W01
@ 020   ----------------------------------------
	.byte	W12
	.byte		        Dn3 , v112
	.byte	W12
	.byte		N03   
	.byte	W11
	.byte		        Dn3 , v108
	.byte	W12
	.byte		N07   , Dn3 , v120
	.byte	W48
	.byte	W01
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		N01   , Fn3 , v072
	.byte	W01
@ 025   ----------------------------------------
	.byte		N06   , Fs3 , v080
	.byte	W06
	.byte		N04   , Gn3 
	.byte	W06
	.byte		N12   , Cn4 
	.byte	W23
	.byte		N01   , Dn4 , v072
	.byte	W01
	.byte		N06   , Ds4 , v080
	.byte	W06
	.byte		N04   , Cn4 
	.byte	W06
	.byte		N06   , As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N04   , Fs3 
	.byte	W06
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N04   , Ds3 
	.byte	W06
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N04   , Ds3 
	.byte	W05
	.byte		N01   , Fn3 , v072
	.byte	W01
@ 026   ----------------------------------------
	.byte		N09   , Fs3 , v080
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N09   , Ds3 
	.byte	W12
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N04   , Cn3 
	.byte	W05
	.byte		N01   , An2 , v072
	.byte	W01
	.byte		N06   , As2 , v080
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N04   , Gn2 
	.byte	W05
	.byte		N01   , Dn3 , v072
	.byte	W01
	.byte		N06   , Ds3 , v080
	.byte	W06
	.byte		N18   , Cn3 
	.byte	W18
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_options_6_B1
mus_options_6_B2:
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	FINE

@ **************** Track 7 (Midi-Chn.7) ****************

mus_options_7:
	.byte	KEYSH , mus_options_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 10
	.byte		PAN   , c_v-50
	.byte		VOL   , 70*mus_options_mvl/mxv
	.byte		MOD   , 0
	.byte		LFODL , 0
	.byte	W24
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
mus_options_7_B1:
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		N01   , Bn4 , v080
	.byte	W01
@ 007   ----------------------------------------
	.byte		N09   , Cn5 
	.byte	W12
	.byte		N06   , As4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		N04   , Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N10   , Cn4 
	.byte	W11
	.byte		N01   , Bn3 , v060
	.byte	W01
	.byte		N06   , Cn4 , v080
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N04   , Fs4 
	.byte	W06
	.byte		N06   , Fn4 
	.byte	W06
	.byte		N04   , Ds4 
	.byte	W06
	.byte		N06   , Cn4 
	.byte	W06
	.byte		N04   , As3 
	.byte	W05
	.byte		N01   , Bn3 , v060
	.byte	W01
@ 008   ----------------------------------------
	.byte		N24   , Cn4 , v072
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W88
	.byte	W01
	.byte		N01   , Fn4 
	.byte	W01
	.byte		N09   , Fs4 , v080
	.byte	W06
@ 011   ----------------------------------------
	.byte	W06
	.byte		N06   , Fn4 
	.byte	W06
	.byte		N04   , Ds4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N09   , Bn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W11
	.byte		N01   , Bn4 , v092
	.byte	W01
	.byte		N09   , Cn5 , v080
	.byte	W06
@ 012   ----------------------------------------
	.byte	W06
	.byte		N06   , As4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N04   , Fn4 
	.byte	W05
	.byte		N01   , Fs4 , v072
	.byte	W01
	.byte		N04   , Gn4 , v080
	.byte	W06
	.byte		N09   , As4 
	.byte	W11
	.byte		N01   , Bn4 , v072
	.byte	W01
	.byte		N04   , Cn5 , v080
	.byte	W12
	.byte		        Ds5 
	.byte	W11
	.byte		N01   , En5 , v072
	.byte	W01
	.byte		N04   , Fn5 , v080
	.byte	W12
	.byte		N09   , Gn5 
	.byte	W18
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W12
	.byte		N07   , Gs2 , v120
	.byte	W12
	.byte		N11   , Gs2 , v108
	.byte	W12
	.byte		N05   , Gn2 , v104
	.byte	W06
	.byte		N12   , Gs2 , v120
	.byte	W16
	.byte		N07   , As2 
	.byte	W13
	.byte		N10   , Bn2 , v108
	.byte	W13
	.byte		N07   , Cn3 
	.byte	W11
	.byte		N05   , Dn3 
	.byte	W01
@ 018   ----------------------------------------
	.byte	W11
	.byte		N04   , Dn3 , v120
	.byte	W13
	.byte		N10   , Dn3 , v112
	.byte	W11
	.byte		N05   , Cs3 , v108
	.byte	W05
	.byte		N13   , Dn3 , v092
	.byte	W13
	.byte		N05   , Cn3 , v080
	.byte	W06
	.byte		N28   , As2 , v116
	.byte	W36
	.byte	W01
@ 019   ----------------------------------------
	.byte	W11
	.byte		N04   , Gs2 
	.byte	W05
	.byte		N07   , Gn2 , v080
	.byte	W06
	.byte		N14   , Gs2 , v108
	.byte	W14
	.byte		N05   , Gn2 , v092
	.byte	W05
	.byte		N12   , Gs2 , v108
	.byte	W16
	.byte		N11   , As2 , v124
	.byte	W14
	.byte		N10   , Bn2 , v104
	.byte	W12
	.byte		N09   , Cn3 , v116
	.byte	W12
	.byte		N03   , Dn3 , v108
	.byte	W01
@ 020   ----------------------------------------
	.byte	W12
	.byte		        Dn3 , v112
	.byte	W12
	.byte		N03   
	.byte	W11
	.byte		        Dn3 , v108
	.byte	W12
	.byte		N07   , Dn3 , v120
	.byte	W48
	.byte	W01
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		N01   , Fn3 , v072
	.byte	W01
@ 025   ----------------------------------------
	.byte		N06   , Fs3 , v080
	.byte	W06
	.byte		N04   , Gn3 
	.byte	W06
	.byte		N12   , Cn4 
	.byte	W23
	.byte		N01   , Dn4 , v072
	.byte	W01
	.byte		N06   , Ds4 , v080
	.byte	W06
	.byte		N04   , Cn4 
	.byte	W06
	.byte		N06   , As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N04   , Fs3 
	.byte	W06
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N04   , Ds3 
	.byte	W06
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N04   , Ds3 
	.byte	W05
	.byte		N01   , Fn3 , v072
	.byte	W01
@ 026   ----------------------------------------
	.byte		N09   , Fs3 , v080
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N09   , Ds3 
	.byte	W12
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N04   , Cn3 
	.byte	W05
	.byte		N01   , An2 , v072
	.byte	W01
	.byte		N06   , As2 , v080
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N04   , Gn2 
	.byte	W05
	.byte		N01   , Dn3 , v072
	.byte	W01
	.byte		N06   , Ds3 , v080
	.byte	W06
	.byte		N18   , Cn3 
	.byte	W18
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_options_7_B1
mus_options_7_B2:
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	FINE

@ **************** Track 8 (Midi-Chn.8) ****************

mus_options_8:
	.byte	KEYSH , mus_options_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 74
	.byte		PAN   , c_v+40
	.byte		VOL   , 89*mus_options_mvl/mxv
	.byte	W24
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
mus_options_8_B1:
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
	.byte	W12
	.byte		N07   , Gs2 , v120
	.byte	W12
	.byte		N11   , Gs2 , v108
	.byte	W12
	.byte		N05   , Gn2 , v104
	.byte	W06
	.byte		N12   , Gs2 , v120
	.byte	W16
	.byte		N07   , As2 
	.byte	W13
	.byte		N10   , Bn2 , v108
	.byte	W13
	.byte		N07   , Cn3 
	.byte	W11
	.byte		N05   , Dn3 
	.byte	W01
@ 018   ----------------------------------------
	.byte	W11
	.byte		N04   , Dn3 , v120
	.byte	W13
	.byte		N10   , Dn3 , v112
	.byte	W11
	.byte		N05   , Cs3 , v108
	.byte	W05
	.byte		N13   , Dn3 , v092
	.byte	W13
	.byte		N05   , Cn3 , v080
	.byte	W06
	.byte		N28   , As2 , v116
	.byte	W36
	.byte	W01
@ 019   ----------------------------------------
	.byte	W11
	.byte		N04   , Gs2 
	.byte	W05
	.byte		N07   , Gn2 , v080
	.byte	W06
	.byte		N14   , Gs2 , v108
	.byte	W14
	.byte		N05   , Gn2 , v092
	.byte	W05
	.byte		N12   , Gs2 , v108
	.byte	W16
	.byte		N11   , As2 , v124
	.byte	W14
	.byte		N10   , Bn2 , v104
	.byte	W12
	.byte		N09   , Cn3 , v116
	.byte	W12
	.byte		N03   , Dn3 , v108
	.byte	W01
@ 020   ----------------------------------------
	.byte	W12
	.byte		        Dn3 , v112
	.byte	W12
	.byte		N03   
	.byte	W11
	.byte		        Dn3 , v108
	.byte	W12
	.byte		N07   , Dn3 , v120
	.byte	W48
	.byte	W01
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
	.byte	GOTO
	 mPtr	mus_options_8_B1
mus_options_8_B2:
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	FINE

@ **************** Track 9 (Midi-Chn.9) ****************

mus_options_9:
	.byte	KEYSH , mus_options_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 74
	.byte		PAN   , c_v-40
	.byte		VOL   , 100*mus_options_mvl/mxv
	.byte	W24
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
mus_options_9_B1:
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
	.byte	W12
	.byte		N07   , Gs3 , v120
	.byte	W12
	.byte		N11   , Gs3 , v108
	.byte	W12
	.byte		N05   , Gn3 , v104
	.byte	W06
	.byte		N12   , Gs3 , v120
	.byte	W16
	.byte		N07   , As3 
	.byte	W13
	.byte		N10   , Bn3 , v108
	.byte	W13
	.byte		N07   , Cn4 
	.byte	W11
	.byte		N05   , Dn4 
	.byte	W01
@ 018   ----------------------------------------
	.byte	W11
	.byte		N04   , Dn4 , v120
	.byte	W13
	.byte		N10   , Dn4 , v112
	.byte	W11
	.byte		N05   , Cs4 , v108
	.byte	W05
	.byte		N13   , Dn4 , v092
	.byte	W13
	.byte		N05   , Cn4 , v080
	.byte	W06
	.byte		N28   , As3 , v116
	.byte	W36
	.byte	W01
@ 019   ----------------------------------------
	.byte	W11
	.byte		N04   , Gs3 
	.byte	W05
	.byte		N07   , Gn3 , v080
	.byte	W06
	.byte		N14   , Gs3 , v108
	.byte	W14
	.byte		N05   , Gn3 , v092
	.byte	W05
	.byte		N12   , Gs3 , v108
	.byte	W16
	.byte		N11   , As3 , v124
	.byte	W14
	.byte		N10   , Bn3 , v104
	.byte	W12
	.byte		N09   , Cn4 , v116
	.byte	W12
	.byte		N03   , Dn4 , v108
	.byte	W01
@ 020   ----------------------------------------
	.byte	W12
	.byte		        Dn4 , v112
	.byte	W12
	.byte		N03   
	.byte	W11
	.byte		        Dn4 , v108
	.byte	W12
	.byte		N07   , Dn4 , v120
	.byte	W48
	.byte	W01
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
	.byte	GOTO
	 mPtr	mus_options_9_B1
mus_options_9_B2:
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	FINE

@ **************** Track 10 (Midi-Chn.10) ****************

mus_options_10:
	.byte	KEYSH , mus_options_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 80
	.byte		PAN   , c_v+0
	.byte		VOL   , 120*mus_options_mvl/mxv
	.byte	W24
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
mus_options_10_B1:
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
	.byte	W76
	.byte		N01   , Dn2 , v076
	.byte		N03   , En2 
	.byte	W03
	.byte		        Fn2 , v028
	.byte	W02
	.byte		N02   , Gn2 , v052
	.byte	W02
	.byte		N03   , An2 , v064
	.byte	W02
	.byte		        Bn2 , v068
	.byte	W03
	.byte		        Cn3 , v064
	.byte	W02
	.byte		N04   , Dn3 , v076
	.byte	W03
	.byte		TIE   , Ds3 , v120
	.byte		N01   , En3 , v072
	.byte	W03
@ 017   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		EOT   , Ds3 
	.byte	W01
	.byte		N88   , Fn3 , v108
	.byte	W01
@ 018   ----------------------------------------
	.byte	W80
	.byte	W02
	.byte		N04   , Fn2 , v072
	.byte	W02
	.byte		        Gn2 , v044
	.byte	W03
	.byte		N03   , An2 
	.byte	W02
	.byte		        Bn2 , v048
	.byte	W02
	.byte		        Cn3 , v056
	.byte	W02
	.byte		N02   , Dn3 , v044
	.byte		TIE   , Ds3 , v100
	.byte	W03
@ 019   ----------------------------------------
	.byte		N01   , En3 , v052
	.byte	W92
	.byte	W02
	.byte		EOT   , Ds3 
	.byte	W01
	.byte		N54   , Fn3 , v100
	.byte	W01
@ 020   ----------------------------------------
	.byte	W52
	.byte	W01
	.byte		N03   , En3 , v048
	.byte	W02
	.byte		        Dn3 , v064
	.byte	W03
	.byte		        Cn3 , v044
	.byte	W02
	.byte		N02   , Bn2 , v052
	.byte	W01
	.byte		N01   , An2 , v064
	.byte	W32
	.byte	W03
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
	.byte	GOTO
	 mPtr	mus_options_10_B1
mus_options_10_B2:
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(mus_options):
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_options_pri	@ Priority
	.byte	mus_options_rev	@ Reverb

mAlignWord
	mPtr	mus_options_grp

	mPtr	mus_options_1
	mPtr	mus_options_2
	mPtr	mus_options_3
	mPtr	mus_options_4
	mPtr	mus_options_5
	mPtr	mus_options_6
	mPtr	mus_options_7
	mPtr	mus_options_8
	mPtr	mus_options_9
	mPtr	mus_options_10

	.end
