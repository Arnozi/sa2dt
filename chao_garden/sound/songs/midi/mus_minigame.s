	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_minigame_grp, voicegroup000
	.equ	mus_minigame_pri, 0
	.equ	mus_minigame_rev, reverb_set+0
	.equ	mus_minigame_mvl, 100
	.equ	mus_minigame_key, 0
	.equ	mus_minigame_tbs, 1
	.equ	mus_minigame_exg, 1
	.equ	mus_minigame_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_minigame)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

mus_minigame_1:
	.byte	KEYSH , mus_minigame_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 134*mus_minigame_tbs/2
	.byte		VOICE , 72
	.byte		VOL   , 100*mus_minigame_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 38
	.byte		MOD   , 25
	.byte		MODT  , 2
	.byte	W96
mus_minigame_1_B1:
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
mus_minigame_1_002:
	.byte		N11   , An2 , v120
	.byte		N11   , An3 , v124
	.byte	W12
	.byte		N09   , An2 , v127
	.byte		N09   , An3 
	.byte	W84
	.byte	PEND
@ 003   ----------------------------------------
mus_minigame_1_003:
	.byte	W42
	.byte		N03   , Fn2 , v060
	.byte		N03   , Fn3 
	.byte	W03
	.byte		N02   , Fs2 , v076
	.byte		N02   , Fs3 
	.byte	W03
	.byte		N12   , Gn2 , v116
	.byte		N12   , Gn3 
	.byte	W24
	.byte		        Fs2 
	.byte		N12   , Fs3 
	.byte	W24
	.byte	PEND
@ 004   ----------------------------------------
mus_minigame_1_004:
	.byte		N14   , En2 , v116
	.byte		N14   , En3 
	.byte	W24
	.byte		N11   , Cn3 , v108
	.byte		N11   , Fs3 
	.byte	W12
	.byte		TIE   , Cs3 , v096
	.byte		TIE   , Fs3 
	.byte	W60
	.byte	PEND
@ 005   ----------------------------------------
	.byte	W72
	.byte	W02
	.byte		EOT   , Cs3 
	.byte		        Fs3 
	.byte	W22
@ 006   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_1_002
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_1_003
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_1_004
@ 009   ----------------------------------------
	.byte	W44
	.byte		EOT   , Cs3 
	.byte		        Fs3 
	.byte	W16
	.byte		N32   , An2 , v120
	.byte		N17   , Cs3 
	.byte	W18
	.byte		        Cn3 
	.byte	W18
@ 010   ----------------------------------------
	.byte		TIE   , Gs2 
	.byte		TIE   , Bn2 
	.byte	W96
@ 011   ----------------------------------------
	.byte	W32
	.byte		EOT   , Gs2 
	.byte		        Bn2 
	.byte	W14
	.byte		N13   , Fs2 , v100
	.byte		N02   , Bn2 
	.byte	W02
	.byte		N10   , Cn3 , v096
	.byte	W12
	.byte		N11   , Fs2 , v112
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        Fs2 , v104
	.byte		N11   , An2 
	.byte	W12
	.byte		        Dn2 , v084
	.byte		N11   , Fs2 
	.byte	W12
@ 012   ----------------------------------------
	.byte		N21   , Dn2 , v120
	.byte		N21   , An2 
	.byte	W24
	.byte		TIE   , Dn2 
	.byte		TIE   , An2 
	.byte	W72
@ 013   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		EOT   , Dn2 
	.byte		        An2 
	.byte	W24
	.byte	W02
	.byte		N11   , Fs2 , v104
	.byte	W12
	.byte		        An2 , v124
	.byte	W12
@ 014   ----------------------------------------
	.byte		TIE   , Bn2 , v127
	.byte	W96
@ 015   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		EOT   
	.byte	W12
	.byte		N13   , Fs2 , v100
	.byte		N02   , Bn2 
	.byte	W02
	.byte		N10   , Cn3 , v096
	.byte	W12
	.byte		N11   , Fs2 , v112
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        Fs2 , v104
	.byte		N11   , An2 
	.byte	W12
	.byte		        Dn2 , v084
	.byte		N11   , Fs2 
	.byte	W12
@ 016   ----------------------------------------
	.byte		N32   , Dn2 , v108
	.byte		N32   , An2 
	.byte	W36
	.byte		N22   , Fs2 
	.byte		N22   , An2 
	.byte	W24
	.byte		N11   , Dn2 
	.byte		N11   , Fs2 
	.byte	W12
	.byte		        Fs2 , v120
	.byte		N11   , An2 
	.byte	W12
	.byte		N32   , Gs2 , v124
	.byte		N32   , Bn2 
	.byte	W12
@ 017   ----------------------------------------
	.byte	W56
	.byte	W02
	.byte		N22   , Fs2 , v116
	.byte		N02   , Bn2 
	.byte	W03
	.byte		N12   , Cn3 , v096
	.byte	W09
	.byte		N10   , Bn2 , v120
	.byte	W11
	.byte		N13   , En2 
	.byte		N13   , An2 
	.byte	W15
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W88
	.byte	W01
	.byte		N03   , Gn2 , v052
	.byte		N03   , Gn3 
	.byte	W04
	.byte		N02   , Gs2 , v080
	.byte		N02   , Gs3 
	.byte	W03
@ 022   ----------------------------------------
mus_minigame_1_022:
	.byte		N10   , An2 , v108
	.byte		N10   , An3 
	.byte	W12
	.byte		N08   , An2 , v127
	.byte		N08   , An3 
	.byte	W84
	.byte	PEND
@ 023   ----------------------------------------
	.byte	W48
	.byte		N12   , Gn2 , v120
	.byte		N12   , Gn3 
	.byte	W24
	.byte		N10   , Fs2 , v124
	.byte		N10   , Fs3 
	.byte	W24
@ 024   ----------------------------------------
	.byte		N11   , En2 , v116
	.byte		N11   , En3 
	.byte	W24
	.byte		        Cn3 
	.byte		N11   , Fs3 
	.byte	W12
	.byte		N64   , Cs3 , v104
	.byte		N64   , Fs3 
	.byte	W60
@ 025   ----------------------------------------
	.byte	W24
	.byte		N05   , Cn3 , v108
	.byte	W06
	.byte		        Cs3 , v096
	.byte	W06
	.byte		        En3 , v076
	.byte	W06
	.byte		        Cn3 , v096
	.byte	W06
	.byte		N11   , Cs3 , v080
	.byte	W12
	.byte		N17   , An2 , v052
	.byte	W18
	.byte		N09   , En2 , v048
	.byte	W11
	.byte		N03   , Gn2 , v052
	.byte		N03   , Gn3 
	.byte	W04
	.byte		N02   , Gs2 , v080
	.byte		N02   , Gs3 
	.byte	W03
@ 026   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_1_022
@ 027   ----------------------------------------
	.byte	W40
	.byte		N07   , Fn2 , v040
	.byte		N07   , Fn3 
	.byte	W03
	.byte		N06   , Fs2 , v060
	.byte		N06   , Fs3 
	.byte	W03
	.byte		N11   , Gn2 , v108
	.byte		N11   , Gn3 
	.byte	W24
	.byte	W02
	.byte		N10   , Fs2 , v120
	.byte		N10   , Fs3 
	.byte	W24
@ 028   ----------------------------------------
	.byte		N09   , En2 , v127
	.byte		N09   , En3 
	.byte	W24
	.byte		N11   , Fs2 , v120
	.byte		N11   , Cn3 
	.byte	W12
	.byte		N22   , Fs2 , v112
	.byte		N22   , Cs3 
	.byte	W24
	.byte		N48   , An2 , v084
	.byte	W36
@ 029   ----------------------------------------
	.byte	W24
	.byte	W01
	.byte		N04   , Gs3 
	.byte	W01
	.byte		N10   , Cs3 , v112
	.byte		N10   , An3 
	.byte	W12
	.byte		N20   , Cs3 
	.byte		N20   , An3 
	.byte	W22
	.byte		N17   , En3 , v108
	.byte		N17   , Gn3 
	.byte	W18
	.byte		N16   , Dn3 , v124
	.byte		N16   , Fs3 
	.byte	W18
@ 030   ----------------------------------------
	.byte		N03   , An2 , v096
	.byte		N03   , Dn3 
	.byte	W04
	.byte		N02   , As2 , v076
	.byte		N02   , Ds3 
	.byte	W02
	.byte		TIE   , Bn2 , v096
	.byte		TIE   , En3 
	.byte	W90
@ 031   ----------------------------------------
	.byte	W24
	.byte	W03
	.byte		EOT   , Bn2 
	.byte		        En3 
	.byte	W06
	.byte		N09   , Bn2 , v080
	.byte		N09   , En3 
	.byte	W10
	.byte		N02   , Cn3 , v064
	.byte		N02   , Fn3 
	.byte	W02
	.byte		N11   , Cs3 , v108
	.byte		N11   , Fs3 
	.byte	W17
	.byte		N16   , An3 
	.byte		N16   , Cs4 
	.byte	W17
	.byte		N15   , Gs3 , v100
	.byte		N15   , Bn3 
	.byte	W17
@ 032   ----------------------------------------
	.byte	W01
	.byte		N32   , Fs3 , v116
	.byte		N32   , Bn3 
	.byte	W32
	.byte	W03
	.byte		N20   , En3 , v084
	.byte		N20   , An3 
	.byte	W24
	.byte	W01
	.byte		N92   , En3 
	.byte		N92   , An3 
	.byte	W32
	.byte	W03
@ 033   ----------------------------------------
	.byte	W72
	.byte		N11   , Cs3 , v100
	.byte		N11   , Fs3 
	.byte	W12
	.byte		        An2 , v060
	.byte		N11   , Cs3 
	.byte	W12
@ 034   ----------------------------------------
	.byte		TIE   , Gs2 , v096
	.byte		TIE   , En3 
	.byte	W96
@ 035   ----------------------------------------
	.byte	W13
	.byte		EOT   , Gs2 
	.byte		        En3 
	.byte	W28
	.byte	W01
	.byte		N04   , Dn3 , v060
	.byte	W04
	.byte		N07   , Ds3 , v056
	.byte	W02
	.byte		N19   , En3 , v104
	.byte	W24
	.byte		N11   , Bn2 , v112
	.byte		N11   , En3 
	.byte	W12
	.byte		        Gs2 , v084
	.byte		N11   , Bn2 
	.byte	W12
@ 036   ----------------------------------------
	.byte		N32   , An2 , v112
	.byte		N32   , Cn3 
	.byte	W36
	.byte		N23   , Fn2 , v100
	.byte		N23   , An2 
	.byte	W24
	.byte		N11   , An2 , v092
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Cn3 , v084
	.byte		N11   , Fn3 
	.byte	W12
	.byte		N09   , Fn3 , v096
	.byte		N09   , An3 
	.byte	W12
@ 037   ----------------------------------------
	.byte		N06   , Bn2 , v108
	.byte		N07   , Gn3 
	.byte	W24
	.byte		N30   , Bn2 
	.byte		N32   , Gn3 
	.byte	W36
	.byte		N11   , Bn2 
	.byte		N11   , Gn3 
	.byte	W12
	.byte		        Cn3 , v112
	.byte		N11   , Gs3 
	.byte	W12
	.byte		N18   , Cs3 , v104
	.byte		N18   , An3 
	.byte	W12
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_minigame_1_B1
mus_minigame_1_B2:
@ 041   ----------------------------------------
	.byte	FINE

@ **************** Track 2 (Midi-Chn.2) ****************

mus_minigame_2:
	.byte	KEYSH , mus_minigame_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 10
	.byte		VOL   , 100*mus_minigame_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 33
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		N14   , An1 , v127
	.byte	W24
	.byte		N16   
	.byte	W20
	.byte		N03   , En1 
	.byte	W04
	.byte		N11   , Fs1 
	.byte	W12
	.byte		N23   , An1 
	.byte	W24
	.byte		N11   , En1 
	.byte	W12
mus_minigame_2_B1:
@ 001   ----------------------------------------
mus_minigame_2_001:
	.byte		N14   , An1 , v127
	.byte	W24
	.byte		N16   
	.byte	W20
	.byte		N03   , En1 
	.byte	W04
	.byte		N11   , Fs1 
	.byte	W12
	.byte		N23   , An1 
	.byte	W24
	.byte		N11   , En1 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_2_001
@ 003   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_2_001
@ 004   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_2_001
@ 005   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_2_001
@ 006   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_2_001
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_2_001
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_2_001
@ 009   ----------------------------------------
mus_minigame_2_009:
	.byte		N14   , An1 , v127
	.byte	W24
	.byte		N16   
	.byte	W20
	.byte		N03   , En1 
	.byte	W04
	.byte		N11   , Fs1 
	.byte	W12
	.byte		N08   , An1 
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
mus_minigame_2_010:
	.byte		N14   , En1 , v127
	.byte	W24
	.byte		N16   
	.byte	W20
	.byte		N03   
	.byte	W04
	.byte		N11   
	.byte	W12
	.byte		N23   , Bn1 
	.byte	W24
	.byte		N11   , En1 
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_2_010
@ 012   ----------------------------------------
	.byte		N14   , Dn1 , v127
	.byte	W24
	.byte		N16   
	.byte	W20
	.byte		N03   
	.byte	W04
	.byte		N11   
	.byte	W12
	.byte		N23   , An1 
	.byte	W24
	.byte		N11   , Dn1 
	.byte	W12
@ 013   ----------------------------------------
	.byte		N14   
	.byte	W24
	.byte		N16   
	.byte	W20
	.byte		N03   
	.byte	W04
	.byte		N11   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_2_010
@ 015   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_2_010
@ 016   ----------------------------------------
	.byte		N14   , Dn1 , v127
	.byte	W24
	.byte		N16   
	.byte	W20
	.byte		N03   
	.byte	W04
	.byte		N11   
	.byte	W12
	.byte		N23   , An1 
	.byte	W24
	.byte		N04   , Dn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
@ 017   ----------------------------------------
	.byte		        En1 
	.byte	W24
	.byte		N22   
	.byte	W72
@ 018   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_2_001
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_2_001
@ 020   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_2_001
@ 021   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_2_001
@ 022   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_2_001
@ 023   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_2_001
@ 024   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_2_001
@ 025   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_2_001
@ 026   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_2_001
@ 027   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_2_001
@ 028   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_2_001
@ 029   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_2_009
@ 030   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_2_010
@ 031   ----------------------------------------
	.byte		N14   , En1 , v127
	.byte	W24
	.byte		N16   
	.byte	W20
	.byte		N03   
	.byte	W04
	.byte		N11   
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 032   ----------------------------------------
	.byte		N14   , Fs1 
	.byte	W24
	.byte		N16   
	.byte	W20
	.byte		N03   
	.byte	W04
	.byte		N11   
	.byte	W12
	.byte		N23   , Cs1 
	.byte	W24
	.byte		N11   , Fs1 
	.byte	W12
@ 033   ----------------------------------------
	.byte		N14   
	.byte	W24
	.byte		N16   
	.byte	W20
	.byte		N03   
	.byte	W04
	.byte		N11   
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 034   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_2_010
@ 035   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_2_010
@ 036   ----------------------------------------
	.byte		N14   , Fn1 , v127
	.byte	W24
	.byte		N16   
	.byte	W20
	.byte		N03   
	.byte	W04
	.byte		N11   
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
@ 037   ----------------------------------------
	.byte		N08   , Gn1 
	.byte	W24
	.byte		N22   
	.byte	W36
	.byte		N06   
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N18   , Gs1 
	.byte	W18
@ 038   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_2_001
@ 039   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_2_001
@ 040   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_2_001
	.byte	GOTO
	 mPtr	mus_minigame_2_B1
mus_minigame_2_B2:
@ 041   ----------------------------------------
	.byte	FINE

@ **************** Track 3 (Midi-Chn.3) ****************

mus_minigame_3:
	.byte	KEYSH , mus_minigame_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 101
	.byte		VOL   , 72*mus_minigame_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 33
	.byte		MOD   , 32
	.byte		MODT  , 2
	.byte		N06   , En3 , v120
	.byte	W24
	.byte		N15   , En3 , v116
	.byte	W18
	.byte		N05   , En3 , v112
	.byte	W06
	.byte		        Fs3 , v108
	.byte	W12
	.byte		N19   , Fs3 , v104
	.byte	W24
	.byte		N11   
	.byte	W12
mus_minigame_3_B1:
@ 001   ----------------------------------------
mus_minigame_3_001:
	.byte		N05   , Gn3 , v092
	.byte	W24
	.byte		N13   , Gn3 , v104
	.byte	W18
	.byte		N05   , Gn3 , v080
	.byte	W06
	.byte		N09   , Fs3 , v084
	.byte	W12
	.byte		N20   , Fs3 , v092
	.byte	W24
	.byte		N11   , Fs3 , v108
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_minigame_3_002:
	.byte		N06   , En3 , v120
	.byte	W24
	.byte		N15   , En3 , v116
	.byte	W18
	.byte		N05   , En3 , v112
	.byte	W06
	.byte		        Fs3 , v108
	.byte	W12
	.byte		N19   , Fs3 , v104
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_3_001
@ 004   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_3_002
@ 005   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_3_001
@ 006   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_3_002
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_3_001
@ 008   ----------------------------------------
mus_minigame_3_008:
	.byte		N06   , En3 , v104
	.byte	W24
	.byte		N12   , En3 , v108
	.byte	W18
	.byte		N05   , En3 , v088
	.byte	W06
	.byte		N06   , Fs3 , v096
	.byte	W12
	.byte		N17   , Fs3 , v088
	.byte	W24
	.byte		N11   , Fs3 , v112
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
mus_minigame_3_009:
	.byte		N07   , Gn3 , v104
	.byte	W24
	.byte		N08   
	.byte	W18
	.byte		N05   , Gn3 , v072
	.byte	W06
	.byte		N08   , Fs3 , v084
	.byte	W12
	.byte		N12   , En3 , v112
	.byte	W12
	.byte		N02   , Cn3 , v060
	.byte	W01
	.byte		        As2 , v072
	.byte	W01
	.byte		        Gs2 , v084
	.byte	W01
	.byte		        Fs2 
	.byte	W03
	.byte		N08   , Ds2 , v072
	.byte	W08
	.byte		N04   , Fs2 , v080
	.byte	W03
	.byte		N03   , Gs2 , v044
	.byte	W02
	.byte		N02   , As2 , v064
	.byte	W03
	.byte		N01   , Cn3 , v044
	.byte	W02
	.byte	PEND
@ 010   ----------------------------------------
	.byte		TIE   , En3 , v112
	.byte	W96
@ 011   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 012   ----------------------------------------
	.byte		N92   , Dn3 , v108
	.byte	W96
@ 013   ----------------------------------------
	.byte		N68   , Fs3 , v096
	.byte	W72
	.byte		N23   , Dn3 , v080
	.byte	W24
@ 014   ----------------------------------------
	.byte		TIE   , En3 , v092
	.byte	W96
@ 015   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 016   ----------------------------------------
	.byte		N92   , Dn3 , v108
	.byte	W96
@ 017   ----------------------------------------
	.byte		N08   , En3 , v112
	.byte	W24
	.byte		N28   , En3 , v127
	.byte	W72
@ 018   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_3_002
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_3_001
@ 020   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_3_002
@ 021   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_3_001
@ 022   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_3_002
@ 023   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_3_001
@ 024   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_3_002
@ 025   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_3_001
@ 026   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_3_002
@ 027   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_3_001
@ 028   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_3_008
@ 029   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_3_009
@ 030   ----------------------------------------
	.byte		TIE   , En3 , v112
	.byte	W96
@ 031   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 032   ----------------------------------------
	.byte		N92   , Fs3 , v108
	.byte	W96
@ 033   ----------------------------------------
	.byte		N68   , Fs3 , v096
	.byte	W72
	.byte		N23   , Cs3 , v080
	.byte	W24
@ 034   ----------------------------------------
	.byte		TIE   , En3 , v092
	.byte	W96
@ 035   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 036   ----------------------------------------
	.byte		N92   , Fn3 , v108
	.byte	W96
@ 037   ----------------------------------------
	.byte		N08   , Gn3 , v112
	.byte	W24
	.byte		N28   , Gn3 , v127
	.byte	W72
@ 038   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_3_002
@ 039   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_3_001
@ 040   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_3_002
	.byte	GOTO
	 mPtr	mus_minigame_3_B1
mus_minigame_3_B2:
@ 041   ----------------------------------------
	.byte	FINE

@ **************** Track 4 (Midi-Chn.4) ****************

mus_minigame_4:
	.byte	KEYSH , mus_minigame_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_minigame_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 33
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		N12   , Cn1 , v127
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		        Cs1 , v127
	.byte	W12
	.byte		        Ds1 , v048
	.byte	W12
	.byte		        Cn1 , v127
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		        Cs1 , v127
	.byte	W12
	.byte		        Ds1 , v048
	.byte	W12
mus_minigame_4_B1:
@ 001   ----------------------------------------
mus_minigame_4_001:
	.byte		N12   , Cn1 , v127
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		        Cs1 , v127
	.byte	W12
	.byte		        Ds1 , v048
	.byte	W12
	.byte		        Cn1 , v127
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		        Cs1 , v127
	.byte	W12
	.byte		        Ds1 , v048
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_4_001
@ 003   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_4_001
@ 004   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_4_001
@ 005   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_4_001
@ 006   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_4_001
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_4_001
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_4_001
@ 009   ----------------------------------------
mus_minigame_4_009:
	.byte		N12   , Cn1 , v127
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		        Cs1 , v127
	.byte	W12
	.byte		        Ds1 , v048
	.byte	W12
	.byte		        Cn1 , v127
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N11   , Cs1 , v127
	.byte	W12
	.byte		N05   
	.byte		N12   , Ds1 , v048
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte	PEND
@ 010   ----------------------------------------
mus_minigame_4_010:
	.byte		N12   , Cn1 , v127
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , En1 , v052
	.byte	W12
	.byte		        Cs1 , v127
	.byte	W12
	.byte		        En1 , v052
	.byte	W12
	.byte		        Cn1 , v127
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , En1 , v052
	.byte	W12
	.byte		        Cs1 , v127
	.byte	W12
	.byte		        En1 , v052
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_4_010
@ 012   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_4_010
@ 013   ----------------------------------------
mus_minigame_4_013:
	.byte		N12   , Cn1 , v127
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , En1 , v052
	.byte	W12
	.byte		        Cs1 , v127
	.byte	W12
	.byte		        En1 , v052
	.byte	W12
	.byte		        Cn1 , v127
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , En1 , v052
	.byte	W12
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N12   , En1 , v052
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_4_010
@ 015   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_4_010
@ 016   ----------------------------------------
mus_minigame_4_016:
	.byte		N12   , Cn1 , v127
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , En1 , v052
	.byte	W12
	.byte		        Cs1 , v127
	.byte	W12
	.byte		        En1 , v052
	.byte	W12
	.byte		        Cn1 , v127
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , En1 , v052
	.byte	W12
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte		N12   , En1 , v052
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte	PEND
@ 017   ----------------------------------------
mus_minigame_4_017:
	.byte		N06   , Cs1 , v127
	.byte		N06   , Dn1 , v048
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Cs1 
	.byte		N24   , En1 , v052
	.byte	W24
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_4_001
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_4_001
@ 020   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_4_001
@ 021   ----------------------------------------
	.byte		N12   , Cn1 , v127
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		        Cs1 , v127
	.byte	W12
	.byte		        Ds1 , v048
	.byte	W12
	.byte		        Cn1 , v127
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N06   , Cs1 , v127
	.byte	W12
	.byte		N06   
	.byte		N12   , Ds1 , v048
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte	W06
@ 022   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_4_001
@ 023   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_4_001
@ 024   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_4_001
@ 025   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_4_001
@ 026   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_4_001
@ 027   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_4_001
@ 028   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_4_001
@ 029   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_4_009
@ 030   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_4_010
@ 031   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_4_010
@ 032   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_4_010
@ 033   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_4_013
@ 034   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_4_010
@ 035   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_4_010
@ 036   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_4_016
@ 037   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_4_017
@ 038   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_4_001
@ 039   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_4_001
@ 040   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_4_001
	.byte	GOTO
	 mPtr	mus_minigame_4_B1
mus_minigame_4_B2:
@ 041   ----------------------------------------
	.byte	FINE

@ **************** Track 5 (Midi-Chn.5) ****************

mus_minigame_5:
	.byte	KEYSH , mus_minigame_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 42
	.byte		VOL   , 64*mus_minigame_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 33
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		N06   , Cs4 , v127
	.byte	W24
	.byte		N15   
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		        Dn4 
	.byte	W12
	.byte		N19   
	.byte	W24
	.byte		N11   
	.byte	W12
mus_minigame_5_B1:
@ 001   ----------------------------------------
mus_minigame_5_001:
	.byte		N05   , En4 , v127
	.byte	W24
	.byte		N13   
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N09   , Dn4 
	.byte	W12
	.byte		N20   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_minigame_5_002:
	.byte		N06   , Cs4 , v127
	.byte	W24
	.byte		N15   
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		        Dn4 
	.byte	W12
	.byte		N19   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_5_001
@ 004   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_5_002
@ 005   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_5_001
@ 006   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_5_002
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_5_001
@ 008   ----------------------------------------
mus_minigame_5_008:
	.byte		N05   , Cs4 , v127
	.byte	W24
	.byte		N10   
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N06   , Dn4 
	.byte	W12
	.byte		N18   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
mus_minigame_5_009:
	.byte		N07   , En4 , v127
	.byte	W24
	.byte		N10   
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N08   , Dn4 
	.byte	W12
	.byte		N12   , Cs4 
	.byte	W36
	.byte	PEND
@ 010   ----------------------------------------
	.byte		TIE   , Bn3 
	.byte	W96
@ 011   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 012   ----------------------------------------
	.byte		N92   , An3 
	.byte	W96
@ 013   ----------------------------------------
	.byte		N68   , Dn4 
	.byte	W72
	.byte		N23   , An3 
	.byte	W24
@ 014   ----------------------------------------
	.byte		TIE   , Bn3 
	.byte	W96
@ 015   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 016   ----------------------------------------
	.byte		N92   , An3 
	.byte	W96
@ 017   ----------------------------------------
mus_minigame_5_017:
	.byte		N07   , Bn3 , v127
	.byte	W24
	.byte		N28   
	.byte	W72
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_5_002
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_5_001
@ 020   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_5_002
@ 021   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_5_001
@ 022   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_5_002
@ 023   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_5_001
@ 024   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_5_002
@ 025   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_5_001
@ 026   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_5_002
@ 027   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_5_001
@ 028   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_5_008
@ 029   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_5_009
@ 030   ----------------------------------------
	.byte		TIE   , Bn3 , v127
	.byte	W96
@ 031   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 032   ----------------------------------------
	.byte		N92   , Cs4 
	.byte	W96
@ 033   ----------------------------------------
	.byte		N68   
	.byte	W72
	.byte		N23   , Fs3 
	.byte	W24
@ 034   ----------------------------------------
	.byte		TIE   , Bn3 
	.byte	W96
@ 035   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 036   ----------------------------------------
	.byte		N92   , An3 
	.byte	W96
@ 037   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_5_017
@ 038   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_5_002
@ 039   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_5_001
@ 040   ----------------------------------------
	.byte	PATT
	 mPtr	mus_minigame_5_002
	.byte	GOTO
	 mPtr	mus_minigame_5_B1
mus_minigame_5_B2:
@ 041   ----------------------------------------
	.byte		N05   , En4 , v127
	.byte	W24
	.byte		N13   
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N09   , Dn4 
	.byte	W12
	.byte		N20   
	.byte	W24
	.byte		N11   
	.byte	W11
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(mus_minigame):
	.byte	5	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_minigame_pri	@ Priority
	.byte	mus_minigame_rev	@ Reverb

mAlignWord
	mPtr	mus_minigame_grp

	mPtr	mus_minigame_1
	mPtr	mus_minigame_2
	mPtr	mus_minigame_3
	mPtr	mus_minigame_4
	mPtr	mus_minigame_5

	.end
