	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_vs_lobby_grp, voicegroup023
	.equ	mus_vs_lobby_pri, 0
	.equ	mus_vs_lobby_rev, reverb_set+0
	.equ	mus_vs_lobby_mvl, 105
	.equ	mus_vs_lobby_key, 0
	.equ	mus_vs_lobby_tbs, 1
	.equ	mus_vs_lobby_exg, 1
	.equ	mus_vs_lobby_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_vs_lobby)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

mus_vs_lobby_1:
	.byte	KEYSH , mus_vs_lobby_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 100*mus_vs_lobby_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_vs_lobby_mvl/mxv
	.byte	W24
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
@ 001   ----------------------------------------
mus_vs_lobby_1_001:
	.byte		N06   , Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_1_001
@ 003   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_1_001
@ 004   ----------------------------------------
mus_vs_lobby_1_004:
	.byte		N06   , Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte	PEND
mus_vs_lobby_1_B1:
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
@ 005   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_1_001
@ 006   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_1_001
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_1_001
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_1_001
@ 009   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_1_001
@ 010   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_1_001
@ 011   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_1_001
@ 012   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_1_001
@ 013   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_1_001
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_1_001
@ 015   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_1_001
@ 016   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_1_001
@ 017   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_1_001
@ 018   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_1_001
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_1_001
@ 020   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_1_004
	.byte	GOTO
	 mPtr	mus_vs_lobby_1_B1
mus_vs_lobby_1_B2:
	.byte	FINE

@ **************** Track 2 (Midi-Chn.2) ****************

mus_vs_lobby_2:
	.byte	KEYSH , mus_vs_lobby_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 44
	.byte		VOL   , 127*mus_vs_lobby_mvl/mxv
	.byte		N24   , Fn2 , v120
	.byte	W24
	.byte		N03   , As2 , v124
	.byte	W12
	.byte		        As2 , v112
	.byte	W12
	.byte		        As2 , v104
	.byte	W12
	.byte		        As2 , v092
	.byte	W12
	.byte		        As2 , v084
	.byte	W12
	.byte		        As2 , v072
	.byte	W12
@ 001   ----------------------------------------
mus_vs_lobby_2_001:
	.byte		N03   , As2 , v064
	.byte	W12
	.byte		N02   , As2 , v052
	.byte	W12
	.byte		N03   , As1 , v124
	.byte	W12
	.byte		        As1 , v112
	.byte	W12
	.byte		        As1 , v104
	.byte	W12
	.byte		        As1 , v092
	.byte	W12
	.byte		        As1 , v084
	.byte	W12
	.byte		        As1 , v072
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_vs_lobby_2_002:
	.byte		N03   , As1 , v064
	.byte	W12
	.byte		N02   , As1 , v052
	.byte	W12
	.byte		N03   , As2 , v124
	.byte	W12
	.byte		        As2 , v112
	.byte	W12
	.byte		        As2 , v104
	.byte	W12
	.byte		        As2 , v092
	.byte	W12
	.byte		        As2 , v084
	.byte	W12
	.byte		        As2 , v072
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_2_001
@ 004   ----------------------------------------
mus_vs_lobby_2_004:
	.byte		N03   , As1 , v064
	.byte	W12
	.byte		N02   , As1 , v052
	.byte	W12
	.byte	PEND
mus_vs_lobby_2_B1:
	.byte		N03   , As2 , v124
	.byte	W12
	.byte		        As2 , v112
	.byte	W12
	.byte		        As2 , v104
	.byte	W12
	.byte		        As2 , v092
	.byte	W12
	.byte		        As2 , v084
	.byte	W12
	.byte		        As2 , v072
	.byte	W12
@ 005   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_2_001
@ 006   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_2_002
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_2_001
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_2_002
@ 009   ----------------------------------------
	.byte		N03   , As2 , v064
	.byte	W12
	.byte		N02   , As2 , v052
	.byte	W12
	.byte		N03   , As1 , v124
	.byte	W12
	.byte		        As1 , v112
	.byte	W12
	.byte		        As1 , v104
	.byte	W12
	.byte		        As1 , v092
	.byte	W12
	.byte		        As1 , v084
	.byte	W12
	.byte		        Bn1 , v072
	.byte	W12
@ 010   ----------------------------------------
	.byte		        Cn2 , v064
	.byte	W12
	.byte		N20   , Cs2 , v052
	.byte	W24
	.byte		N03   , Cs3 , v112
	.byte	W12
	.byte		        Cs3 , v104
	.byte	W12
	.byte		        Cs3 , v092
	.byte	W12
	.byte		        Cs3 , v084
	.byte	W12
	.byte		        Cs3 , v072
	.byte	W12
@ 011   ----------------------------------------
mus_vs_lobby_2_011:
	.byte		N03   , Cs3 , v064
	.byte	W12
	.byte		N02   , Cs3 , v052
	.byte	W12
	.byte		N03   , Cs2 , v124
	.byte	W12
	.byte		        Cs2 , v112
	.byte	W12
	.byte		        Cs2 , v104
	.byte	W12
	.byte		        Cs2 , v092
	.byte	W12
	.byte		        Cs2 , v084
	.byte	W12
	.byte		        Cs2 , v072
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
mus_vs_lobby_2_012:
	.byte		N03   , Cs2 , v064
	.byte	W12
	.byte		N02   , Cs2 , v052
	.byte	W12
	.byte		N03   , Cs3 , v124
	.byte	W12
	.byte		        Cs3 , v112
	.byte	W12
	.byte		        Cs3 , v104
	.byte	W12
	.byte		        Cs3 , v092
	.byte	W12
	.byte		        Cs3 , v084
	.byte	W12
	.byte		        Cs3 , v072
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_2_011
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_2_012
@ 015   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_2_011
@ 016   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_2_012
@ 017   ----------------------------------------
	.byte		N03   , Cs3 , v064
	.byte	W12
	.byte		N02   , Cs3 , v052
	.byte	W12
	.byte		N03   , Cs2 , v124
	.byte	W12
	.byte		        Cs2 , v112
	.byte	W12
	.byte		        Cs2 , v104
	.byte	W12
	.byte		        Cs2 , v092
	.byte	W12
	.byte		        Cs2 , v084
	.byte	W12
	.byte		        Cn2 , v072
	.byte	W12
@ 018   ----------------------------------------
	.byte		        Bn1 , v064
	.byte	W12
	.byte		N23   , As1 , v052
	.byte	W24
	.byte		N03   , As2 , v112
	.byte	W12
	.byte		        As2 , v104
	.byte	W12
	.byte		        As2 , v092
	.byte	W12
	.byte		        As2 , v084
	.byte	W12
	.byte		        As2 , v072
	.byte	W12
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_2_001
@ 020   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_2_004
	.byte	GOTO
	 mPtr	mus_vs_lobby_2_B1
mus_vs_lobby_2_B2:
	.byte	FINE

@ **************** Track 3 (Midi-Chn.3) ****************

mus_vs_lobby_3:
	.byte	KEYSH , mus_vs_lobby_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 103
	.byte		VOL   , 100*mus_vs_lobby_mvl/mxv
	.byte		BENDR , 59
	.byte		N24   , Fn3 , v120
	.byte	W24
	.byte		N06   , As3 
	.byte	W72
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W24
	.byte		N68   , As2 , v127
	.byte	W72
@ 003   ----------------------------------------
mus_vs_lobby_3_003:
	.byte		N04   , As2 , v127
	.byte	W12
	.byte		N96   , Gs2 
	.byte	W84
	.byte	PEND
@ 004   ----------------------------------------
	.byte	W24
mus_vs_lobby_3_B1:
	.byte		N64   , As2 , v127
	.byte	W72
@ 005   ----------------------------------------
mus_vs_lobby_3_005:
	.byte		N06   , As2 , v108
	.byte	W12
	.byte		N88   , Gs2 , v124
	.byte	W84
	.byte	PEND
@ 006   ----------------------------------------
	.byte	W24
	.byte		N68   , As2 , v127
	.byte	W72
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_3_003
@ 008   ----------------------------------------
	.byte	W24
	.byte		N64   , As2 , v127
	.byte	W72
@ 009   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_3_005
@ 010   ----------------------------------------
	.byte	W24
	.byte		N68   , Cs3 , v127
	.byte	W72
@ 011   ----------------------------------------
mus_vs_lobby_3_011:
	.byte		N04   , Cs3 , v127
	.byte	W12
	.byte		N96   , Bn2 
	.byte	W84
	.byte	PEND
@ 012   ----------------------------------------
	.byte	W24
	.byte		N64   , Cs3 
	.byte	W72
@ 013   ----------------------------------------
mus_vs_lobby_3_013:
	.byte		N06   , Cs3 , v108
	.byte	W12
	.byte		N88   , Bn2 , v124
	.byte	W84
	.byte	PEND
@ 014   ----------------------------------------
	.byte	W24
	.byte		N68   , Cs3 , v127
	.byte	W72
@ 015   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_3_011
@ 016   ----------------------------------------
	.byte	W24
	.byte		N64   , Cs3 , v127
	.byte	W72
@ 017   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_3_013
@ 018   ----------------------------------------
	.byte	W24
	.byte		N68   , As2 , v127
	.byte	W72
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_3_003
@ 020   ----------------------------------------
	.byte	W24
	.byte	GOTO
	 mPtr	mus_vs_lobby_3_B1
mus_vs_lobby_3_B2:
	.byte	FINE

@ **************** Track 4 (Midi-Chn.4) ****************

mus_vs_lobby_4:
	.byte	KEYSH , mus_vs_lobby_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 104
	.byte		VOL   , 100*mus_vs_lobby_mvl/mxv
	.byte		MOD   , 0
	.byte		LFOS  , 86
	.byte		BENDR , 53
	.byte		N24   , An3 , v120
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W24
	.byte		N68   , Dn3 , v127
	.byte	W72
@ 003   ----------------------------------------
mus_vs_lobby_4_003:
	.byte		N04   , Dn3 , v127
	.byte	W12
	.byte		N96   , Cn3 
	.byte	W84
	.byte	PEND
@ 004   ----------------------------------------
	.byte	W24
mus_vs_lobby_4_B1:
	.byte	W72
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W24
	.byte		N68   , Dn3 , v127
	.byte	W72
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_4_003
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W24
	.byte		N68   , Fn3 , v127
	.byte	W72
@ 011   ----------------------------------------
mus_vs_lobby_4_011:
	.byte		N04   , Fn3 , v127
	.byte	W12
	.byte		N96   , Ds3 
	.byte	W84
	.byte	PEND
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W24
	.byte		N68   , Fn3 
	.byte	W72
@ 015   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_4_011
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W24
	.byte		N68   , Dn3 , v127
	.byte	W72
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_4_003
@ 020   ----------------------------------------
	.byte	W24
	.byte	GOTO
	 mPtr	mus_vs_lobby_4_B1
mus_vs_lobby_4_B2:
	.byte	FINE

@ **************** Track 5 (Midi-Chn.5) ****************

mus_vs_lobby_5:
	.byte	KEYSH , mus_vs_lobby_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 105
	.byte		VOL   , 100*mus_vs_lobby_mvl/mxv
	.byte	W24
	.byte		N06   , Fn3 , v120
	.byte	W72
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W24
mus_vs_lobby_5_B1:
	.byte		N64   , Fn2 , v127
	.byte	W72
@ 005   ----------------------------------------
mus_vs_lobby_5_005:
	.byte		N06   , Fn2 , v108
	.byte	W12
	.byte		N88   , Ds2 , v124
	.byte	W84
	.byte	PEND
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W24
	.byte		N64   , Fn2 , v127
	.byte	W72
@ 009   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_5_005
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W24
	.byte		N64   , Gs2 , v127
	.byte	W72
@ 013   ----------------------------------------
mus_vs_lobby_5_013:
	.byte		N06   , Gs2 , v108
	.byte	W12
	.byte		N88   , Fs2 , v124
	.byte	W84
	.byte	PEND
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W24
	.byte		N64   , Gs2 , v127
	.byte	W72
@ 017   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_5_013
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W24
	.byte	GOTO
	 mPtr	mus_vs_lobby_5_B1
mus_vs_lobby_5_B2:
	.byte	FINE

@ **************** Track 6 (Midi-Chn.6) ****************

mus_vs_lobby_6:
	.byte	KEYSH , mus_vs_lobby_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 95
	.byte		VOL   , 90*mus_vs_lobby_mvl/mxv
	.byte		BENDR , 12
	.byte	W04
	.byte		N02   , Fn3 , v108
	.byte	W02
	.byte		        Gn3 , v112
	.byte	W02
	.byte		        An3 
	.byte	W02
	.byte		        As3 , v124
	.byte	W02
	.byte		        Cn4 , v112
	.byte	W02
	.byte		        Dn4 , v108
	.byte	W02
	.byte		        Ds4 , v112
	.byte	W02
	.byte		        Fn4 , v108
	.byte	W02
	.byte		        Gn4 , v112
	.byte	W02
	.byte		        An4 , v124
	.byte	W02
	.byte		N10   , As4 
	.byte	W72
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W24
	.byte		N68   , Fn4 , v108
	.byte	W72
@ 003   ----------------------------------------
mus_vs_lobby_6_003:
	.byte		N04   , Fn4 , v096
	.byte	W12
	.byte		N96   , Ds4 , v104
	.byte	W84
	.byte	PEND
@ 004   ----------------------------------------
	.byte	W24
mus_vs_lobby_6_B1:
	.byte		N64   , Dn4 , v100
	.byte	W72
@ 005   ----------------------------------------
mus_vs_lobby_6_005:
	.byte		N06   , Dn4 , v076
	.byte	W12
	.byte		N88   , Cn4 , v096
	.byte	W84
	.byte	PEND
@ 006   ----------------------------------------
	.byte	W24
	.byte		N68   , Fn4 , v108
	.byte	W72
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_6_003
@ 008   ----------------------------------------
	.byte	W24
	.byte		N64   , Dn4 , v100
	.byte	W72
@ 009   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_6_005
@ 010   ----------------------------------------
	.byte	W24
	.byte		N68   , Gs4 , v108
	.byte	W72
@ 011   ----------------------------------------
mus_vs_lobby_6_011:
	.byte		N04   , Gs4 , v096
	.byte	W12
	.byte		N96   , Fs4 , v104
	.byte	W84
	.byte	PEND
@ 012   ----------------------------------------
	.byte	W24
	.byte		N64   , Fn4 , v100
	.byte	W72
@ 013   ----------------------------------------
mus_vs_lobby_6_013:
	.byte		N06   , Fn4 , v076
	.byte	W12
	.byte		N88   , Ds4 , v096
	.byte	W84
	.byte	PEND
@ 014   ----------------------------------------
	.byte	W24
	.byte		N68   , Gs4 , v108
	.byte	W72
@ 015   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_6_011
@ 016   ----------------------------------------
	.byte	W24
	.byte		N64   , Fn4 , v100
	.byte	W72
@ 017   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_6_013
@ 018   ----------------------------------------
	.byte	W24
	.byte		N68   , Fn4 , v108
	.byte	W72
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_6_003
@ 020   ----------------------------------------
	.byte	W24
	.byte	GOTO
	 mPtr	mus_vs_lobby_6_B1
mus_vs_lobby_6_B2:
	.byte	FINE

@ **************** Track 7 (Midi-Chn.7) ****************

mus_vs_lobby_7:
	.byte	KEYSH , mus_vs_lobby_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 13
	.byte		VOL   , 100*mus_vs_lobby_mvl/mxv
	.byte		BENDR , 12
	.byte	W48
	.byte		N03   , Fn2 , v060
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn3 , v056
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn4 , v052
	.byte	W06
	.byte		        Fn5 
	.byte	W06
@ 001   ----------------------------------------
mus_vs_lobby_7_001:
	.byte		N03   , Fn5 , v052
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn4 , v048
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Fn4 , v044
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn4 , v040
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Fn3 , v036
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
mus_vs_lobby_7_002:
	.byte		N03   , Fn2 , v032
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fn2 
	.byte	W36
	.byte		        Fn2 , v060
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn3 , v056
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn4 , v052
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_7_001
@ 004   ----------------------------------------
	.byte		N03   , Fn2 , v032
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fn2 
	.byte	W12
mus_vs_lobby_7_B1:
	.byte	W24
	.byte		N03   , Fn2 , v060
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn3 , v056
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn4 , v052
	.byte	W06
	.byte		        Fn5 
	.byte	W06
@ 005   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_7_001
@ 006   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_7_002
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_7_001
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_7_002
@ 009   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_7_001
@ 010   ----------------------------------------
	.byte		N03   , Fn2 , v032
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fn2 
	.byte	W36
	.byte		        Gs2 , v052
	.byte	W06
	.byte		        Gs3 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gs4 , v044
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gs4 , v040
	.byte	W06
	.byte		        Gs5 
	.byte	W06
@ 011   ----------------------------------------
mus_vs_lobby_7_011:
	.byte		N03   , Gs5 , v040
	.byte	W06
	.byte		        Gs3 , v036
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gs5 , v032
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gs3 , v028
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gs4 , v024
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gs5 , v020
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gs4 , v016
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte	PEND
@ 012   ----------------------------------------
mus_vs_lobby_7_012:
	.byte		N03   , Gs2 , v016
	.byte	W06
	.byte		        Gs4 , v012
	.byte	W06
	.byte		        Gs2 
	.byte	W36
	.byte		        Gs2 , v052
	.byte	W06
	.byte		        Gs3 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gs4 , v044
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gs4 , v040
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte	PEND
@ 013   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_7_011
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_7_012
@ 015   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_7_011
@ 016   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_7_012
@ 017   ----------------------------------------
	.byte	PATT
	 mPtr	mus_vs_lobby_7_011
@ 018   ----------------------------------------
	.byte		N03   , Gs2 , v016
	.byte	W06
	.byte		        Gs4 , v012
	.byte	W06
	.byte		        Gs2 
	.byte	W36
	.byte		        Fn2 , v052
	.byte	W06
	.byte		        Fn3 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fn4 , v044
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn4 , v040
	.byte	W06
	.byte		        Fn5 
	.byte	W06
@ 019   ----------------------------------------
	.byte		N03   
	.byte	W06
	.byte		        Fn3 , v036
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn5 , v032
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fn3 , v028
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn4 , v024
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn5 , v020
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn4 , v016
	.byte	W06
	.byte		        Fn5 
	.byte	W06
@ 020   ----------------------------------------
	.byte		        Fn2 
	.byte	W06
	.byte		        Fn4 , v012
	.byte	W06
	.byte		        Fn2 
	.byte	W12
	.byte	GOTO
	 mPtr	mus_vs_lobby_7_B1
mus_vs_lobby_7_B2:
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(mus_vs_lobby):
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_vs_lobby_pri	@ Priority
	.byte	mus_vs_lobby_rev	@ Reverb

mAlignWord
	mPtr	mus_vs_lobby_grp

	mPtr	mus_vs_lobby_1
	mPtr	mus_vs_lobby_2
	mPtr	mus_vs_lobby_3
	mPtr	mus_vs_lobby_4
	mPtr	mus_vs_lobby_5
	mPtr	mus_vs_lobby_6
	mPtr	mus_vs_lobby_7

	.end
