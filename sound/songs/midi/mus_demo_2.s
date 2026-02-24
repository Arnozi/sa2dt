	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_demo_2_grp, voicegroup014
	.equ	mus_demo_2_pri, 0
	.equ	mus_demo_2_rev, reverb_set+0
	.equ	mus_demo_2_mvl, 100
	.equ	mus_demo_2_key, 0
	.equ	mus_demo_2_tbs, 1
	.equ	mus_demo_2_exg, 1
	.equ	mus_demo_2_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_demo_2)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_demo_2_1:
	.byte	KEYSH , mus_demo_2_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 110*mus_demo_2_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_demo_2_mvl/mxv
	.byte		N06   , Cn1 , v127
	.byte		N06   , Ds1 , v048
	.byte		N48   , Gn2 , v127
	.byte	W06
	.byte		N06   , Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v032
	.byte		N06   , Ds3 , v127
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , Ds1 , v048
	.byte		N12   , Dn3 , v127
	.byte	W06
	.byte		N06   , Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , Ds1 , v048
	.byte	W06
	.byte		        Cs1 , v092
	.byte		N06   , Dn1 , v040
	.byte		N06   , Ds3 , v127
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v040
	.byte		N06   , Ds3 , v127
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds1 , v048
	.byte		N12   , Dn3 , v127
	.byte	W06
	.byte		N06   , Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
/* 001   ----------------------------------------
 */mus_demo_2_1_001:
	.byte		N06   , Cn1 , v127
	.byte		N06   , Ds1 , v048
	.byte		N06   , Ds3 , v127
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v032
	.byte		N06   , Ds3 , v127
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , Ds1 , v048
	.byte		N12   , Dn3 , v127
	.byte	W06
	.byte		N06   , Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , Ds1 , v048
	.byte	W06
	.byte		        Cs1 
	.byte		N06   , Dn1 , v040
	.byte		N06   , Ds3 , v127
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v040
	.byte		N06   , Ds3 , v127
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds1 , v048
	.byte		N12   , Dn3 , v127
	.byte	W06
	.byte		N06   , Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte	PEND
mus_demo_2_1_B1:
/* 002   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_2_1_001
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_2_1_001
/* 004   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_2_1_001
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_2_1_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_2_1_001
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_2_1_001
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_2_1_001
/* 009   ----------------------------------------
 */	.byte		N06   , Cn1 , v127
	.byte		N06   , Ds1 , v048
	.byte		N06   , Ds3 , v127
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v032
	.byte		N06   , Ds3 , v127
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , Ds1 , v048
	.byte		N12   , Dn3 , v127
	.byte	W06
	.byte		N06   , Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , Ds1 , v048
	.byte	W06
	.byte		        Cs1 , v092
	.byte		N06   , Dn1 , v040
	.byte		N06   , Ds3 , v127
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , Dn1 , v040
	.byte		N06   , Ds3 , v127
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds1 , v048
	.byte		N12   , Dn3 , v127
	.byte	W06
	.byte		N06   , Cs1 , v092
	.byte		N06   , Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Cs1 , v092
	.byte		N06   , Dn1 , v040
	.byte	W06
/* 010   ----------------------------------------
 */mus_demo_2_1_010:
	.byte		N06   , Cn1 , v127
	.byte		N06   , Ds1 , v048
	.byte		N48   , Gn2 , v127
	.byte	W06
	.byte		N06   , Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v032
	.byte		N06   , Ds3 , v127
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , Ds1 , v048
	.byte		N12   , Dn3 , v127
	.byte	W06
	.byte		N06   , Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , Ds1 , v048
	.byte	W06
	.byte		        Cs1 , v092
	.byte		N06   , Dn1 , v040
	.byte		N06   , Ds3 , v127
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v040
	.byte		N06   , Ds3 , v127
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds1 , v048
	.byte		N12   , Dn3 , v127
	.byte	W06
	.byte		N06   , Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte	PEND
/* 011   ----------------------------------------
 */mus_demo_2_1_011:
	.byte		N06   , Cn1 , v127
	.byte		N06   , Ds1 , v048
	.byte		N06   , Ds3 , v127
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v032
	.byte		N06   , Ds3 , v127
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , Ds1 , v048
	.byte		N12   , Dn3 , v127
	.byte	W06
	.byte		N06   , Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , Ds1 , v048
	.byte	W06
	.byte		        Cs1 , v092
	.byte		N06   , Dn1 , v040
	.byte		N06   , Ds3 , v127
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v040
	.byte		N06   , Ds3 , v127
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Ds1 , v048
	.byte		N12   , Dn3 , v127
	.byte	W06
	.byte		N06   , Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte	PEND
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_2_1_011
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_2_1_011
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_2_1_011
/* 015   ----------------------------------------
 */	.byte		N06   , Cn1 , v127
	.byte		N06   , Ds1 , v048
	.byte		N06   , Ds3 , v127
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		N06   
	.byte		N12   , Dn3 
	.byte	W24
	.byte		N06   , Cn1 
	.byte		N06   , Ds1 , v048
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_2_1_010
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_2_1_011
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_2_1_011
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_2_1_011
	.byte	GOTO
	 mPtr	mus_demo_2_1_B1
mus_demo_2_1_B2:
/* 020   ----------------------------------------
 */	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_demo_2_2:
	.byte	KEYSH , mus_demo_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 79
	.byte		VOL   , 110*mus_demo_2_mvl/mxv
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		N05   , Bn2 , v108
	.byte	W01
mus_demo_2_2_B1:
/* 002   ----------------------------------------
 */	.byte	W05
	.byte		N05   , As2 , v108
	.byte	W06
	.byte		        Bn2 , v088
	.byte	W06
	.byte		        As2 , v100
	.byte	W06
	.byte		N06   , Bn2 , v084
	.byte	W06
	.byte		N05   , As2 , v104
	.byte	W06
	.byte		        Bn2 , v084
	.byte	W05
	.byte		        As2 , v088
	.byte	W06
	.byte		N06   , Bn2 , v080
	.byte	W07
	.byte		N05   , As2 , v096
	.byte	W06
	.byte		        Bn2 , v084
	.byte	W06
	.byte		        As2 , v092
	.byte	W05
	.byte		N06   , Bn2 , v076
	.byte	W07
	.byte		N04   , As2 , v108
	.byte	W05
	.byte		N06   , Bn2 , v072
	.byte	W07
	.byte		        As2 , v096
	.byte	W06
	.byte		N11   , Bn2 , v092
	.byte	W01
/* 003   ----------------------------------------
 */	.byte	W11
	.byte		N05   , Dn3 , v120
	.byte	W72
	.byte	W01
	.byte		        Dn2 , v100
	.byte	W12
/* 004   ----------------------------------------
 */	.byte		        Bn2 , v108
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		N68   , Gn2 , v084
	.byte	W72
	.byte		N07   , Dn2 , v092
	.byte	W12
/* 005   ----------------------------------------
 */	.byte		N05   , Ds2 , v096
	.byte	W06
	.byte		        En2 , v084
	.byte	W06
	.byte		N60   , Gn2 
	.byte	W84
/* 006   ----------------------------------------
 */	.byte		N05   , Bn2 , v104
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Bn2 , v084
	.byte	W06
	.byte		        As2 , v100
	.byte	W06
	.byte		        Bn2 , v084
	.byte	W06
	.byte		        As2 , v100
	.byte	W06
	.byte		        Bn2 , v076
	.byte	W06
	.byte		        As2 , v092
	.byte	W06
	.byte		        Bn2 , v084
	.byte	W06
	.byte		        As2 , v088
	.byte	W06
	.byte		        Bn2 , v080
	.byte	W06
	.byte		        As2 , v104
	.byte	W06
	.byte		        Bn2 , v080
	.byte	W06
	.byte		        As2 , v084
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
/* 007   ----------------------------------------
 */	.byte		N11   , Bn2 
	.byte	W12
	.byte		N08   , Dn3 , v108
	.byte	W36
	.byte	W02
	.byte	W02
	.byte	W02
	.byte	W02
	.byte	W04
	.byte	W24
	.byte		N05   , Dn2 , v072
	.byte	W12
/* 008   ----------------------------------------
 */	.byte		        As2 , v084
	.byte	W06
	.byte		        An2 , v092
	.byte	W06
	.byte		N66   , Gn2 , v084
	.byte	W72
	.byte		N05   , Dn2 , v096
	.byte	W11
	.byte		N02   , Ds2 , v080
	.byte	W01
/* 009   ----------------------------------------
 */	.byte	W02
	.byte		N11   , En2 
	.byte	W11
	.byte		N56   , Gn2 
	.byte	W68
	.byte	W03
	.byte		N05   , Dn2 , v112
	.byte	W06
	.byte		        Ds2 , v116
	.byte	W06
/* 010   ----------------------------------------
 */	.byte		N11   , En2 , v108
	.byte	W12
	.byte		N03   , Gn2 
	.byte	W12
	.byte		N11   , An2 , v116
	.byte	W12
	.byte		N05   , Gn2 , v084
	.byte	W06
	.byte		N07   , Bn2 , v104
	.byte	W12
	.byte		N05   , Bn2 , v092
	.byte	W12
	.byte		        Gn2 , v088
	.byte	W06
	.byte		N11   , An2 , v112
	.byte	W12
	.byte		        Gn2 
	.byte	W12
/* 011   ----------------------------------------
 */	.byte		        Ds2 , v108
	.byte	W12
	.byte		N08   , Gn2 , v096
	.byte	W12
	.byte		N11   , An2 , v104
	.byte	W12
	.byte		N05   , Gn2 , v096
	.byte	W06
	.byte		        As2 , v116
	.byte	W12
	.byte		N07   , As2 , v112
	.byte	W12
	.byte		N05   , Gn2 , v084
	.byte	W06
	.byte		N09   , An2 , v108
	.byte	W12
	.byte		N07   , Gn2 , v096
	.byte	W07
	.byte		N01   , As2 , v076
	.byte	W02
	.byte		N12   , Bn2 , v100
	.byte	W03
/* 012   ----------------------------------------
 */	.byte	W09
	.byte		N64   , Dn3 , v108
	.byte	W72
	.byte	W01
	.byte		N06   , Dn3 , v084
	.byte	W07
	.byte		N05   , Ds3 , v088
	.byte	W05
	.byte		N12   , En3 
	.byte	W02
/* 013   ----------------------------------------
 */	.byte	W12
	.byte		N04   , En2 , v052
	.byte	W22
	.byte		N40   
	.byte	W48
	.byte	W02
	.byte		N05   , En2 , v056
	.byte	W06
	.byte		        Gn2 , v064
	.byte	W06
/* 014   ----------------------------------------
 */	.byte		N07   , An2 , v084
	.byte	W12
	.byte		        An2 , v080
	.byte	W12
	.byte		N09   , An2 , v092
	.byte	W12
	.byte		N06   , Gn2 , v072
	.byte	W03
	.byte		        As2 , v080
	.byte	W05
	.byte		        Bn2 , v084
	.byte	W10
	.byte		N10   , Bn2 , v080
	.byte	W12
	.byte		N05   , Gn2 , v084
	.byte	W06
	.byte		N11   , An2 
	.byte	W11
	.byte		N09   , Gn2 
	.byte	W09
	.byte		N05   , As2 , v056
	.byte	W02
	.byte		N10   , Bn2 , v092
	.byte	W02
/* 015   ----------------------------------------
 */	.byte	W84
	.byte	W01
	.byte		N13   , Dn2 , v076
	.byte	W11
/* 016   ----------------------------------------
 */	.byte	W02
	.byte		N07   , En2 , v080
	.byte	W08
	.byte		N05   , Gn2 , v084
	.byte	W10
	.byte		N92   , Gn2 , v076
	.byte	W76
/* 017   ----------------------------------------
 */	.byte	W96
/* 018   ----------------------------------------
 */	.byte	W96
/* 019   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_demo_2_2_B1
mus_demo_2_2_B2:
/* 020   ----------------------------------------
 */	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_demo_2_3:
	.byte	KEYSH , mus_demo_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 49
	.byte		VOL   , 110*mus_demo_2_mvl/mxv
	.byte		BENDR , 59
	.byte		N05   , Gn2 , v127
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N07   , En2 
	.byte	W06
	.byte		N05   , Gn2 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N08   , En2 
	.byte	W12
/* 001   ----------------------------------------
 */mus_demo_2_3_001:
	.byte		N05   , Gn2 , v127
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N07   , En2 
	.byte	W06
	.byte		N05   , Gn2 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N08   , En2 
	.byte	W12
	.byte	PEND
mus_demo_2_3_B1:
/* 002   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_2_3_001
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_2_3_001
/* 004   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_2_3_001
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_2_3_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_2_3_001
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_2_3_001
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_2_3_001
/* 009   ----------------------------------------
 */	.byte		N05   , Gn2 , v127
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N07   , En2 
	.byte	W06
	.byte		N05   , Gn2 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N08   , Cs2 
	.byte	W12
/* 010   ----------------------------------------
 */	.byte		N05   , Cn2 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N07   , An2 
	.byte	W06
	.byte		N05   , Cn2 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N08   , Cn2 
	.byte	W12
/* 011   ----------------------------------------
 */	.byte		N05   , Cs2 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N07   , An2 
	.byte	W06
	.byte		N05   , Cs2 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N08   , Cs2 
	.byte	W12
/* 012   ----------------------------------------
 */	.byte		N05   , Dn2 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N07   , Bn2 
	.byte	W06
	.byte		N05   , Dn2 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N08   , Ds2 
	.byte	W12
/* 013   ----------------------------------------
 */	.byte		N05   , En2 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N12   , As2 
	.byte	W12
	.byte		N07   , Bn2 
	.byte	W06
	.byte		N05   , En2 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N06   , An2 
	.byte	W06
	.byte		N12   , En2 
	.byte	W12
	.byte		N08   , As2 
	.byte	W12
/* 014   ----------------------------------------
 */	.byte		N05   , An2 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N12   , En2 
	.byte	W12
	.byte		N07   , Gn2 
	.byte	W06
	.byte		N05   , An2 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N08   , Ds2 
	.byte		N08   , An2 
	.byte	W12
/* 015   ----------------------------------------
 */	.byte		        Dn2 
	.byte	W72
	.byte		N20   
	.byte	W24
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_2_3_001
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_2_3_001
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_2_3_001
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_2_3_001
	.byte	GOTO
	 mPtr	mus_demo_2_3_B1
mus_demo_2_3_B2:
/* 020   ----------------------------------------
 */	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_demo_2_4:
	.byte	KEYSH , mus_demo_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 66
	.byte		VOL   , 70*mus_demo_2_mvl/mxv
	.byte		N04   , Cn3 , v096
	.byte	W12
	.byte		        Cn3 , v084
	.byte	W12
	.byte		N14   , Cn3 , v096
	.byte	W18
	.byte		N04   , Cn3 , v084
	.byte	W12
	.byte		N03   , Cn3 , v096
	.byte	W18
	.byte		N21   , Cn3 , v100
	.byte	W24
/* 001   ----------------------------------------
 */mus_demo_2_4_001:
	.byte		N04   , Cn3 , v096
	.byte	W12
	.byte		        Cn3 , v084
	.byte	W12
	.byte		N14   , Cn3 , v096
	.byte	W18
	.byte		N04   , Cn3 , v084
	.byte	W12
	.byte		N03   , Cn3 , v096
	.byte	W18
	.byte		N21   , Cn3 , v100
	.byte	W24
	.byte	PEND
mus_demo_2_4_B1:
/* 002   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_2_4_001
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_2_4_001
/* 004   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_2_4_001
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_2_4_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_2_4_001
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_2_4_001
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_2_4_001
/* 009   ----------------------------------------
 */	.byte		N04   , Cn3 , v096
	.byte	W12
	.byte		        Cn3 , v084
	.byte	W12
	.byte		N14   , Cn3 , v096
	.byte	W18
	.byte		N04   , Cn3 , v084
	.byte	W12
	.byte		N03   , Cn3 , v096
	.byte	W18
	.byte		N21   , Cn3 , v100
	.byte	W16
	.byte		N06   , Dn2 , v036
	.byte		N06   , An2 
	.byte	W03
	.byte		N05   , Ds2 , v072
	.byte		N05   , As2 
	.byte	W02
	.byte		N06   , En2 , v096
	.byte		N06   , Bn2 
	.byte	W03
/* 010   ----------------------------------------
 */	.byte		N90   , Fn2 , v092
	.byte		N90   , Cn3 
	.byte	W92
	.byte	W03
	.byte		N92   , Cn3 , v104
	.byte	W01
/* 011   ----------------------------------------
 */	.byte	W92
	.byte	W02
	.byte		        Cn3 , v112
	.byte	W02
/* 012   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		N52   , An2 , v092
	.byte	W01
/* 013   ----------------------------------------
 */	.byte	W54
	.byte		N05   , An2 , v112
	.byte	W11
	.byte		N04   , An2 , v096
	.byte	W06
	.byte		N05   , An2 , v116
	.byte	W07
	.byte		N07   , An2 , v112
	.byte	W10
	.byte		        An2 , v104
	.byte	W08
/* 014   ----------------------------------------
 */	.byte	W96
/* 015   ----------------------------------------
 */	.byte		N09   , Gn2 , v120
	.byte	W96
/* 016   ----------------------------------------
 */	.byte		N52   , Cn3 , v108
	.byte	W54
	.byte	W01
	.byte		N05   , Cn3 , v092
	.byte	W12
	.byte		N03   , Cn3 , v100
	.byte	W07
	.byte		N24   , Cn3 , v116
	.byte	W22
/* 017   ----------------------------------------
 */	.byte	W06
	.byte		N05   , Cn3 , v112
	.byte	W11
	.byte		N03   , Cn3 , v096
	.byte	W06
	.byte		N22   , Cn3 , v112
	.byte	W24
	.byte	W02
	.byte		N04   , Cn3 , v088
	.byte	W13
	.byte		N03   , Cn3 , v104
	.byte	W12
	.byte		N19   , Cn3 , v112
	.byte	W22
/* 018   ----------------------------------------
 */	.byte		N04   , Cn3 , v100
	.byte	W12
	.byte		N02   , Cn3 , v092
	.byte	W12
	.byte		N14   , Cn3 , v096
	.byte	W18
	.byte		N04   , Cn3 , v084
	.byte	W12
	.byte		N03   , Cn3 , v080
	.byte	W17
	.byte		N18   , Cn3 , v096
	.byte	W24
	.byte		N04   , Cn3 , v080
	.byte	W01
/* 019   ----------------------------------------
 */	.byte	W11
	.byte		N04   
	.byte	W12
	.byte		N16   , Cn3 , v088
	.byte	W20
	.byte		N04   , Cn3 , v096
	.byte	W12
	.byte		N03   , Cn3 , v092
	.byte	W18
	.byte		N18   , Cn3 , v104
	.byte	W23
	.byte	GOTO
	 mPtr	mus_demo_2_4_B1
mus_demo_2_4_B2:
/* 020   ----------------------------------------
 */	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_demo_2_5:
	.byte	KEYSH , mus_demo_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 67
	.byte		VOL   , 60*mus_demo_2_mvl/mxv
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
mus_demo_2_5_B1:
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte	W96
/* 007   ----------------------------------------
 */	.byte	W96
/* 008   ----------------------------------------
 */	.byte	W96
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		N92   , Fs2 , v104
	.byte	W01
/* 011   ----------------------------------------
 */	.byte	W96
/* 012   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		N52   , Cs3 , v092
	.byte	W01
/* 013   ----------------------------------------
 */	.byte	W54
	.byte		N05   , Cs3 , v112
	.byte	W11
	.byte		N04   , Cs3 , v096
	.byte	W06
	.byte		N05   , Cs3 , v116
	.byte	W07
	.byte		N07   , Cs3 , v112
	.byte	W10
	.byte		        Cs3 , v104
	.byte	W06
	.byte		N80   , Dn3 , v112
	.byte	W02
/* 014   ----------------------------------------
 */	.byte	W80
	.byte	W03
	.byte		N12   , Dn3 , v108
	.byte	W13
/* 015   ----------------------------------------
 */	.byte		N09   , Bn2 , v120
	.byte	W96
/* 016   ----------------------------------------
 */	.byte	W96
/* 017   ----------------------------------------
 */	.byte	W96
/* 018   ----------------------------------------
 */	.byte	W96
/* 019   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_demo_2_5_B1
mus_demo_2_5_B2:
/* 020   ----------------------------------------
 */	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_demo_2_6:
	.byte	KEYSH , mus_demo_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 68
	.byte		VOL   , 50*mus_demo_2_mvl/mxv
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
mus_demo_2_6_B1:
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte	W96
/* 007   ----------------------------------------
 */	.byte	W96
/* 008   ----------------------------------------
 */	.byte	W96
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */	.byte	W96
/* 011   ----------------------------------------
 */	.byte	W92
	.byte	W02
	.byte		N92   , Dn3 , v112
	.byte	W02
/* 012   ----------------------------------------
 */	.byte	W96
/* 013   ----------------------------------------
 */	.byte	W92
	.byte	W02
	.byte		N80   , En3 
	.byte	W02
/* 014   ----------------------------------------
 */	.byte	W80
	.byte	W03
	.byte		N12   , En3 , v108
	.byte	W13
/* 015   ----------------------------------------
 */	.byte	W96
/* 016   ----------------------------------------
 */	.byte		N54   , Dn3 
	.byte	W54
	.byte	W01
	.byte		N05   , Dn3 , v092
	.byte	W12
	.byte		N03   , Dn3 , v100
	.byte	W07
	.byte		N24   , Dn3 , v116
	.byte	W22
/* 017   ----------------------------------------
 */	.byte	W06
	.byte		N05   , Dn3 , v112
	.byte	W11
	.byte		N03   , Dn3 , v096
	.byte	W06
	.byte		N22   , Dn3 , v112
	.byte	W24
	.byte	W02
	.byte		N04   , Dn3 , v088
	.byte	W13
	.byte		N03   , Dn3 , v104
	.byte	W12
	.byte		N19   , Dn3 , v112
	.byte	W22
/* 018   ----------------------------------------
 */	.byte		N04   , Dn3 , v100
	.byte	W12
	.byte		N02   , Dn3 , v092
	.byte	W12
	.byte		N14   , Dn3 , v096
	.byte	W18
	.byte		N04   , Dn3 , v084
	.byte	W12
	.byte		N03   , Dn3 , v080
	.byte	W17
	.byte		N18   , Dn3 , v096
	.byte	W24
	.byte		N04   , Dn3 , v080
	.byte	W01
/* 019   ----------------------------------------
 */	.byte	W11
	.byte		N04   
	.byte	W12
	.byte		N16   , Dn3 , v088
	.byte	W20
	.byte		N04   , Dn3 , v096
	.byte	W12
	.byte		N03   , Dn3 , v092
	.byte	W18
	.byte		N18   , Dn3 , v104
	.byte	W23
	.byte	GOTO
	 mPtr	mus_demo_2_6_B1
mus_demo_2_6_B2:
/* 020   ----------------------------------------
 */	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_demo_2):
	.byte	6	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_demo_2_pri	/* Priority */
	.byte	mus_demo_2_rev	/* Reverb */

mAlignWord
	mPtr	mus_demo_2_grp

	mPtr	mus_demo_2_1
	mPtr	mus_demo_2_2
	mPtr	mus_demo_2_3
	mPtr	mus_demo_2_4
	mPtr	mus_demo_2_5
	mPtr	mus_demo_2_6

	.end
