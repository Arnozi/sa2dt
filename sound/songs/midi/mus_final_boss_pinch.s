	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_final_boss_pinch_grp, voicegroup013
	.equ	mus_final_boss_pinch_pri, 0
	.equ	mus_final_boss_pinch_rev, reverb_set+0
	.equ	mus_final_boss_pinch_mvl, 100
	.equ	mus_final_boss_pinch_key, 0
	.equ	mus_final_boss_pinch_tbs, 1
	.equ	mus_final_boss_pinch_exg, 1
	.equ	mus_final_boss_pinch_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_final_boss_pinch)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_final_boss_pinch_1:
	.byte	KEYSH , mus_final_boss_pinch_key+0
mus_final_boss_pinch_1_B1:
/* 000   ----------------------------------------
 */	.byte	TEMPO , 140*mus_final_boss_pinch_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_final_boss_pinch_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		N44   , Cn2 , v100
	.byte		N44   , Ds2 
	.byte	W96
/* 001   ----------------------------------------
 */mus_final_boss_pinch_1_001:
	.byte		N11   , Cn2 , v100
	.byte		N11   , Ds2 
	.byte	W12
	.byte		N44   , Cn2 
	.byte		N44   , Ds2 
	.byte	W84
	.byte	PEND
/* 002   ----------------------------------------
 */	.byte		        Cn2 
	.byte		N44   , Ds2 
	.byte	W96
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_1_001
/* 004   ----------------------------------------
 */	.byte		N44   , Cn2 , v100
	.byte		N44   , Ds2 
	.byte	W96
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_1_001
/* 006   ----------------------------------------
 */	.byte		N44   , Cn2 , v100
	.byte		N44   , Ds2 
	.byte	W96
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_1_001
/* 008   ----------------------------------------
 */	.byte		N44   , Cn2 , v100
	.byte		N44   , Ds2 
	.byte	W96
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_1_001
/* 010   ----------------------------------------
 */	.byte		N44   , Cn2 , v100
	.byte		N44   , Ds2 
	.byte	W96
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_1_001
/* 012   ----------------------------------------
 */mus_final_boss_pinch_1_012:
	.byte		N06   , Dn1 , v052
	.byte		N06   , Ds2 , v104
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Ds1 , v092
	.byte		N06   , Ds2 , v116
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v052
	.byte		N06   , Ds2 , v108
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v052
	.byte		N06   , Ds2 , v108
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte	PEND
/* 013   ----------------------------------------
 */mus_final_boss_pinch_1_013:
	.byte		N06   , Dn1 , v052
	.byte		N06   , Ds2 , v104
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v052
	.byte		N06   , Ds2 , v100
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Ds1 , v052
	.byte		N06   , Ds2 , v108
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v052
	.byte		N06   , Ds2 , v116
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte	PEND
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_1_012
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_1_013
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_1_012
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_1_013
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_1_012
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_1_013
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_1_012
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_1_013
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_1_012
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_1_013
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_1_012
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_1_013
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_1_012
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_1_013
	.byte	GOTO
	 mPtr	mus_final_boss_pinch_1_B1
mus_final_boss_pinch_1_B2:
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_1_012
/* 029   ----------------------------------------
 */	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_final_boss_pinch_2:
	.byte	KEYSH , mus_final_boss_pinch_key+0
mus_final_boss_pinch_2_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 29
	.byte		VOL   , 103*mus_final_boss_pinch_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 13
	.byte		LFOS  , 18
	.byte		LFODL , 20
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		BEND  , c_v+0
	.byte		N72   , Cn1 , v120
	.byte	W24
	.byte		N19   , Cn2 , v104
	.byte		N18   , Gn2 
	.byte	W24
	.byte		        Cs2 
	.byte		N18   , Gs2 
	.byte	W24
	.byte		N21   , As1 
	.byte		N22   , Fn2 , v108
	.byte	W24
/* 001   ----------------------------------------
 */mus_final_boss_pinch_2_001:
	.byte		N10   , Cn1 , v127
	.byte	W12
	.byte		N66   , Cn1 , v120
	.byte	W12
	.byte		N18   , Cn2 , v108
	.byte		N17   , Gn2 , v116
	.byte	W24
	.byte		        Cs2 , v108
	.byte		N19   , Gs2 
	.byte	W24
	.byte		N21   , Ds2 , v100
	.byte		N22   , As2 , v116
	.byte	W24
	.byte	PEND
/* 002   ----------------------------------------
 */	.byte		N72   , Cn1 , v120
	.byte	W24
	.byte		N19   , Cn2 , v104
	.byte		N18   , Gn2 
	.byte	W24
	.byte		        Cs2 
	.byte		N18   , Gs2 
	.byte	W24
	.byte		N21   , As1 
	.byte		N22   , Fn2 , v108
	.byte	W24
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_2_001
/* 004   ----------------------------------------
 */mus_final_boss_pinch_2_004:
	.byte	W24
	.byte		N19   , Dn2 , v104
	.byte		N18   , An2 
	.byte	W24
	.byte		        Ds2 
	.byte		N18   , As2 
	.byte	W24
	.byte		N21   , Cn2 
	.byte		N22   , Gn2 , v108
	.byte	W24
	.byte	PEND
/* 005   ----------------------------------------
 */mus_final_boss_pinch_2_005:
	.byte	W24
	.byte		N18   , Dn2 , v108
	.byte		N17   , An2 , v116
	.byte	W24
	.byte		        Ds2 , v108
	.byte		N19   , As2 
	.byte	W24
	.byte		N21   , Fn2 , v100
	.byte		N22   , Cn3 , v116
	.byte	W24
	.byte	PEND
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_2_004
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_2_005
/* 008   ----------------------------------------
 */mus_final_boss_pinch_2_008:
	.byte	W24
	.byte		N19   , En2 , v104
	.byte		N18   , Bn2 
	.byte	W24
	.byte		        Fn2 
	.byte		N18   , Cn3 
	.byte	W24
	.byte		N21   , Dn2 
	.byte		N22   , An2 , v108
	.byte	W24
	.byte	PEND
/* 009   ----------------------------------------
 */mus_final_boss_pinch_2_009:
	.byte	W24
	.byte		N18   , En2 , v108
	.byte		N17   , Bn2 , v116
	.byte	W24
	.byte		        Fn2 , v108
	.byte		N19   , Cn3 
	.byte	W24
	.byte		N21   , Gn2 , v100
	.byte		N22   , Dn3 , v116
	.byte	W24
	.byte	PEND
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_2_008
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_2_009
/* 012   ----------------------------------------
 */	.byte		N92   , Dn1 , v127
	.byte		N92   , An1 
	.byte	W96
/* 013   ----------------------------------------
 */	.byte		        Cs1 
	.byte		N92   , Gs1 
	.byte	W96
/* 014   ----------------------------------------
 */	.byte		        Cn1 
	.byte		N92   , Gn1 
	.byte	W96
/* 015   ----------------------------------------
 */	.byte		        Bn0 
	.byte		N92   , Fs1 
	.byte	W96
/* 016   ----------------------------------------
 */	.byte		        Dn1 
	.byte		N92   , An1 
	.byte	W96
/* 017   ----------------------------------------
 */	.byte		        Cs1 
	.byte		N92   , Gs1 
	.byte	W96
/* 018   ----------------------------------------
 */	.byte		        Cn1 
	.byte		N92   , Gn1 
	.byte	W96
/* 019   ----------------------------------------
 */	.byte		        Bn0 
	.byte		N92   , Fs1 
	.byte	W96
/* 020   ----------------------------------------
 */	.byte		        Dn1 
	.byte		N92   , An1 
	.byte	W96
/* 021   ----------------------------------------
 */	.byte		        Cs1 
	.byte		N92   , Gs1 
	.byte	W96
/* 022   ----------------------------------------
 */	.byte		        Cn1 
	.byte		N92   , Gn1 
	.byte	W96
/* 023   ----------------------------------------
 */	.byte		        Bn0 
	.byte		N92   , Fs1 
	.byte	W96
/* 024   ----------------------------------------
 */	.byte		        Dn1 
	.byte		N92   , An1 
	.byte	W96
/* 025   ----------------------------------------
 */	.byte		        Cs1 
	.byte		N92   , Gs1 
	.byte	W96
/* 026   ----------------------------------------
 */	.byte		        Cn1 
	.byte		N92   , Gn1 
	.byte	W96
/* 027   ----------------------------------------
 */	.byte		        Bn0 
	.byte		N92   , Fs1 
	.byte	W96
	.byte	GOTO
	 mPtr	mus_final_boss_pinch_2_B1
mus_final_boss_pinch_2_B2:
/* 028   ----------------------------------------
 */	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_final_boss_pinch_3:
	.byte	KEYSH , mus_final_boss_pinch_key+0
mus_final_boss_pinch_3_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 20
	.byte		VOL   , 110*mus_final_boss_pinch_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 56
	.byte		LFODL , 0
	.byte		MOD   , 0
	.byte		MODT  , 2
	.byte		N64   , Cn2 , v120
	.byte	W96
/* 001   ----------------------------------------
 */mus_final_boss_pinch_3_001:
	.byte		N08   , Cn2 , v127
	.byte	W12
	.byte		N56   , Cn2 , v120
	.byte	W84
	.byte	PEND
/* 002   ----------------------------------------
 */	.byte		N64   
	.byte	W96
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_3_001
/* 004   ----------------------------------------
 */	.byte		N64   , Dn2 , v120
	.byte	W96
/* 005   ----------------------------------------
 */mus_final_boss_pinch_3_005:
	.byte		N08   , Dn2 , v127
	.byte	W12
	.byte		N56   , Dn2 , v120
	.byte	W84
	.byte	PEND
/* 006   ----------------------------------------
 */	.byte		N64   
	.byte	W96
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_3_005
/* 008   ----------------------------------------
 */	.byte		N64   , En2 , v120
	.byte	W96
/* 009   ----------------------------------------
 */mus_final_boss_pinch_3_009:
	.byte		N08   , En2 , v127
	.byte	W12
	.byte		N56   , En2 , v120
	.byte	W84
	.byte	PEND
/* 010   ----------------------------------------
 */	.byte		N64   
	.byte	W96
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_3_009
/* 012   ----------------------------------------
 */mus_final_boss_pinch_3_012:
	.byte		N05   , Dn2 , v100
	.byte	W06
	.byte		        Dn3 , v096
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn2 , v100
	.byte	W06
	.byte		        Dn2 , v096
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn2 , v100
	.byte	W06
	.byte		        Dn2 , v096
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn2 , v100
	.byte	W06
	.byte		        Dn2 , v096
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
/* 013   ----------------------------------------
 */mus_final_boss_pinch_3_013:
	.byte		N05   , Cs2 , v100
	.byte	W06
	.byte		        Cs2 , v096
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs2 , v100
	.byte	W06
	.byte		        Cs2 , v096
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs2 , v100
	.byte	W06
	.byte		        Cs2 , v096
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs2 , v100
	.byte	W06
	.byte		        Cs2 , v096
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
/* 014   ----------------------------------------
 */mus_final_boss_pinch_3_014:
	.byte		N05   , Cn2 , v100
	.byte	W06
	.byte		        Cn2 , v096
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cn2 , v100
	.byte	W06
	.byte		        Cn2 , v096
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cn2 , v100
	.byte	W06
	.byte		        Cn2 , v096
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cn2 , v100
	.byte	W06
	.byte		        Cn2 , v096
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
/* 015   ----------------------------------------
 */mus_final_boss_pinch_3_015:
	.byte		N05   , Bn1 , v100
	.byte	W06
	.byte		        Bn1 , v096
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Bn1 , v100
	.byte	W06
	.byte		        Bn1 , v096
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Bn1 , v100
	.byte	W06
	.byte		        Bn1 , v096
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Bn1 , v100
	.byte	W06
	.byte		        Bn1 , v096
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_3_012
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_3_013
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_3_014
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_3_015
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_3_012
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_3_013
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_3_014
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_3_015
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_3_012
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_3_013
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_3_014
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_3_015
	.byte	GOTO
	 mPtr	mus_final_boss_pinch_3_B1
mus_final_boss_pinch_3_B2:
/* 028   ----------------------------------------
 */	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_final_boss_pinch_4:
	.byte	KEYSH , mus_final_boss_pinch_key+0
mus_final_boss_pinch_4_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 26
	.byte		VOL   , 89*mus_final_boss_pinch_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 56
	.byte		LFODL , 0
	.byte		MOD   , 0
	.byte		MODT  , 2
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
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
 */	.byte	W96
/* 012   ----------------------------------------
 */	.byte	W96
/* 013   ----------------------------------------
 */	.byte	W96
/* 014   ----------------------------------------
 */mus_final_boss_pinch_4_014:
	.byte	W48
	.byte		N06   , An3 , v120
	.byte	W06
	.byte		        An4 , v104
	.byte	W06
	.byte		        An3 , v080
	.byte	W06
	.byte		        Dn4 , v092
	.byte	W06
	.byte		        An3 , v104
	.byte	W06
	.byte		        An3 , v096
	.byte	W06
	.byte		        An3 , v100
	.byte	W12
	.byte	PEND
/* 015   ----------------------------------------
 */	.byte	W96
/* 016   ----------------------------------------
 */	.byte	W96
/* 017   ----------------------------------------
 */	.byte	W96
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_4_014
/* 019   ----------------------------------------
 */	.byte	W96
/* 020   ----------------------------------------
 */	.byte	W96
/* 021   ----------------------------------------
 */	.byte	W96
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_4_014
/* 023   ----------------------------------------
 */	.byte	W96
/* 024   ----------------------------------------
 */	.byte	W96
/* 025   ----------------------------------------
 */	.byte	W96
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_4_014
/* 027   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_final_boss_pinch_4_B1
mus_final_boss_pinch_4_B2:
/* 028   ----------------------------------------
 */	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_final_boss_pinch_5:
	.byte	KEYSH , mus_final_boss_pinch_key+0
mus_final_boss_pinch_5_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 19
	.byte	PRIO  , 30
	.byte		VOL   , 96*mus_final_boss_pinch_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 13
	.byte		LFOS  , 18
	.byte		LFODL , 20
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		BEND  , c_v+0
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
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
 */	.byte	W96
/* 012   ----------------------------------------
 */	.byte	W96
/* 013   ----------------------------------------
 */	.byte	W96
/* 014   ----------------------------------------
 */	.byte	W96
/* 015   ----------------------------------------
 */	.byte	W96
/* 016   ----------------------------------------
 */	.byte	W96
/* 017   ----------------------------------------
 */	.byte	W96
/* 018   ----------------------------------------
 */	.byte	W96
/* 019   ----------------------------------------
 */	.byte	W96
/* 020   ----------------------------------------
 */mus_final_boss_pinch_5_020:
	.byte		N24   , An3 , v127
	.byte	W24
	.byte		        En4 , v116
	.byte	W24
	.byte		        Dn4 , v100
	.byte	W24
	.byte		        An3 , v104
	.byte	W24
	.byte	PEND
/* 021   ----------------------------------------
 */mus_final_boss_pinch_5_021:
	.byte		N24   , Gs3 , v104
	.byte	W24
	.byte		        Ds4 , v116
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		        Gs3 , v092
	.byte	W24
	.byte	PEND
/* 022   ----------------------------------------
 */mus_final_boss_pinch_5_022:
	.byte		N24   , Gn3 , v096
	.byte	W24
	.byte		        Dn4 , v116
	.byte	W24
	.byte		        Cn4 , v100
	.byte	W24
	.byte		        Gn3 , v096
	.byte	W24
	.byte	PEND
/* 023   ----------------------------------------
 */mus_final_boss_pinch_5_023:
	.byte		N24   , Fs3 , v096
	.byte	W24
	.byte		        Cn4 , v080
	.byte	W24
	.byte		        Bn3 , v116
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte	PEND
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_5_020
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_5_021
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_5_022
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_5_023
	.byte	GOTO
	 mPtr	mus_final_boss_pinch_5_B1
mus_final_boss_pinch_5_B2:
/* 028   ----------------------------------------
 */	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_final_boss_pinch_6:
	.byte	KEYSH , mus_final_boss_pinch_key+0
mus_final_boss_pinch_6_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 28
	.byte	PRIO  , 30
	.byte		VOL   , 96*mus_final_boss_pinch_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 23
	.byte		LFODL , 22
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte		N05   , Dn2 , v116
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		TIE   , An3 , v108
	.byte	W84
/* 005   ----------------------------------------
 */	.byte	W90
	.byte	W01
	.byte		EOT   
	.byte	W05
/* 006   ----------------------------------------
 */	.byte	W96
/* 007   ----------------------------------------
 */	.byte	W96
/* 008   ----------------------------------------
 */mus_final_boss_pinch_6_008:
	.byte		N05   , En2 , v116
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		TIE   , Bn3 , v108
	.byte	W84
	.byte	PEND
/* 009   ----------------------------------------
 */	.byte	W90
	.byte	W01
	.byte		EOT   
	.byte	W05
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_6_008
/* 011   ----------------------------------------
 */	.byte	W90
	.byte	W01
	.byte		EOT   , Bn3 
	.byte	W05
/* 012   ----------------------------------------
 */mus_final_boss_pinch_6_012:
	.byte	W24
	.byte		N13   , An1 , v127
	.byte	W19
	.byte		N03   
	.byte	W05
	.byte		N14   , Dn2 
	.byte	W20
	.byte		N02   
	.byte	W04
	.byte		N12   , An2 
	.byte	W20
	.byte		N01   
	.byte	W04
	.byte	PEND
/* 013   ----------------------------------------
 */mus_final_boss_pinch_6_013:
	.byte		N68   , Fn2 , v127
	.byte	W68
	.byte	W03
	.byte		N03   , Gs2 
	.byte	W06
	.byte		N04   , An2 
	.byte	W06
	.byte		N15   , Bn2 
	.byte	W13
	.byte	PEND
/* 014   ----------------------------------------
 */	.byte	W96
/* 015   ----------------------------------------
 */	.byte	W96
/* 016   ----------------------------------------
 */mus_final_boss_pinch_6_016:
	.byte	W24
	.byte		N13   , An2 , v127
	.byte	W19
	.byte		N03   
	.byte	W05
	.byte		N14   , Dn3 
	.byte	W20
	.byte		N02   
	.byte	W04
	.byte		N12   , An3 
	.byte	W20
	.byte		N01   
	.byte	W04
	.byte	PEND
/* 017   ----------------------------------------
 */mus_final_boss_pinch_6_017:
	.byte		N68   , Fn3 , v127
	.byte	W68
	.byte	W03
	.byte		N03   , Gs3 
	.byte	W06
	.byte		N04   , An3 
	.byte	W06
	.byte		N15   , Bn3 
	.byte	W13
	.byte	PEND
/* 018   ----------------------------------------
 */	.byte	W96
/* 019   ----------------------------------------
 */	.byte	W96
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_6_012
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_6_013
/* 022   ----------------------------------------
 */	.byte	W96
/* 023   ----------------------------------------
 */	.byte	W96
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_6_016
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_6_017
/* 026   ----------------------------------------
 */	.byte	W96
/* 027   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_final_boss_pinch_6_B1
mus_final_boss_pinch_6_B2:
/* 028   ----------------------------------------
 */	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_final_boss_pinch_7:
	.byte	KEYSH , mus_final_boss_pinch_key+0
mus_final_boss_pinch_7_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 23
	.byte		VOL   , 79*mus_final_boss_pinch_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 12
	.byte		LFOS  , 23
	.byte		LFODL , 22
	.byte		MOD   , 17
	.byte		MODT  , 0
	.byte		BEND  , c_v+0
	.byte		TIE   , Cn3 , v088
	.byte	W68
	.byte	W03
	.byte		BEND  , c_v+5
	.byte	W02
	.byte		        c_v+10
	.byte	W03
	.byte		        c_v+18
	.byte	W02
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+31
	.byte	W02
	.byte		        c_v+36
	.byte	W02
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+52
	.byte	W02
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+59
	.byte	W02
	.byte		        c_v+63
	.byte	W02
	.byte		        c_v+63
	.byte	W01
/* 001   ----------------------------------------
 */mus_final_boss_pinch_7_001:
	.byte	W72
	.byte		BEND  , c_v+63
	.byte	W03
	.byte		        c_v+55
	.byte	W03
	.byte		        c_v+47
	.byte	W03
	.byte		        c_v+39
	.byte	W04
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+24
	.byte	W01
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+14
	.byte	W02
	.byte		        c_v+8
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte	PEND
	.byte		EOT   , Cn3 
	.byte	W01
/* 002   ----------------------------------------
 */	.byte		BEND  , c_v+0
	.byte		TIE   , Cn3 , v088
	.byte	W68
	.byte	W03
	.byte		BEND  , c_v+5
	.byte	W02
	.byte		        c_v+10
	.byte	W03
	.byte		        c_v+18
	.byte	W02
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+31
	.byte	W02
	.byte		        c_v+36
	.byte	W02
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+52
	.byte	W02
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+59
	.byte	W02
	.byte		        c_v+63
	.byte	W02
	.byte		        c_v+63
	.byte	W01
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_7_001
	.byte		EOT   , Cn3 
	.byte	W01
/* 004   ----------------------------------------
 */mus_final_boss_pinch_7_004:
	.byte		BEND  , c_v+0
	.byte		TIE   , Dn3 , v088
	.byte	W68
	.byte	W03
	.byte		BEND  , c_v+5
	.byte	W02
	.byte		        c_v+10
	.byte	W03
	.byte		        c_v+18
	.byte	W02
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+31
	.byte	W02
	.byte		        c_v+36
	.byte	W02
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+52
	.byte	W02
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+59
	.byte	W02
	.byte		        c_v+63
	.byte	W02
	.byte		        c_v+63
	.byte	W01
	.byte	PEND
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_7_001
	.byte		EOT   , Dn3 
	.byte	W01
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_7_004
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_7_001
	.byte		EOT   , Dn3 
	.byte	W01
/* 008   ----------------------------------------
 */mus_final_boss_pinch_7_008:
	.byte		BEND  , c_v+0
	.byte		TIE   , En3 , v088
	.byte	W68
	.byte	W03
	.byte		BEND  , c_v+5
	.byte	W02
	.byte		        c_v+10
	.byte	W03
	.byte		        c_v+18
	.byte	W02
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+31
	.byte	W02
	.byte		        c_v+36
	.byte	W02
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+52
	.byte	W02
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+59
	.byte	W02
	.byte		        c_v+63
	.byte	W02
	.byte		        c_v+63
	.byte	W01
	.byte	PEND
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_7_001
	.byte		EOT   , En3 
	.byte	W01
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_7_008
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_7_001
	.byte		EOT   , En3 
	.byte	W01
/* 012   ----------------------------------------
 */mus_final_boss_pinch_7_012:
	.byte		MOD   , 4
	.byte		N92   , An3 , v127
	.byte	W96
	.byte	PEND
/* 013   ----------------------------------------
 */	.byte		        Gs3 
	.byte	W96
/* 014   ----------------------------------------
 */	.byte		        Gn3 
	.byte	W96
/* 015   ----------------------------------------
 */	.byte		        Fs3 
	.byte	W96
/* 016   ----------------------------------------
 */	.byte		        An3 
	.byte	W96
/* 017   ----------------------------------------
 */	.byte		        Gs3 
	.byte	W96
/* 018   ----------------------------------------
 */	.byte		        Gn3 
	.byte	W96
/* 019   ----------------------------------------
 */	.byte		        Fs3 
	.byte	W96
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_7_012
/* 021   ----------------------------------------
 */	.byte		N92   , Gs3 , v127
	.byte	W96
/* 022   ----------------------------------------
 */	.byte		        Gn3 
	.byte	W96
/* 023   ----------------------------------------
 */	.byte		        Fs3 
	.byte	W96
/* 024   ----------------------------------------
 */	.byte		        An3 
	.byte	W96
/* 025   ----------------------------------------
 */	.byte		        Gs3 
	.byte	W96
/* 026   ----------------------------------------
 */	.byte		        Gn3 
	.byte	W96
/* 027   ----------------------------------------
 */	.byte		        Fs3 
	.byte	W96
	.byte	GOTO
	 mPtr	mus_final_boss_pinch_7_B1
mus_final_boss_pinch_7_B2:
/* 028   ----------------------------------------
 */	.byte	FINE

/* **************** Track 8 (Midi-Chn.8) **************** */

mus_final_boss_pinch_8:
	.byte	KEYSH , mus_final_boss_pinch_key+0
mus_final_boss_pinch_8_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 24
	.byte		VOL   , 79*mus_final_boss_pinch_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 23
	.byte		LFODL , 22
	.byte		MOD   , 4
	.byte		MODT  , 0
	.byte		N72   , Cn2 , v120
	.byte	W96
/* 001   ----------------------------------------
 */mus_final_boss_pinch_8_001:
	.byte		N10   , Cn2 , v127
	.byte	W12
	.byte		N66   , Cn2 , v120
	.byte	W84
	.byte	PEND
/* 002   ----------------------------------------
 */	.byte		N72   
	.byte	W96
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_8_001
/* 004   ----------------------------------------
 */	.byte		N72   , Dn2 , v120
	.byte	W96
/* 005   ----------------------------------------
 */mus_final_boss_pinch_8_005:
	.byte		N10   , Dn2 , v127
	.byte	W12
	.byte		N66   , Dn2 , v120
	.byte	W84
	.byte	PEND
/* 006   ----------------------------------------
 */	.byte		N72   
	.byte	W96
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_8_005
/* 008   ----------------------------------------
 */	.byte		N72   , En2 , v120
	.byte	W96
/* 009   ----------------------------------------
 */mus_final_boss_pinch_8_009:
	.byte		N10   , En2 , v127
	.byte	W12
	.byte		N66   , En2 , v120
	.byte	W84
	.byte	PEND
/* 010   ----------------------------------------
 */	.byte		N72   
	.byte	W96
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_8_009
/* 012   ----------------------------------------
 */	.byte		N92   , Dn3 , v127
	.byte	W96
/* 013   ----------------------------------------
 */	.byte		        Cs3 
	.byte	W96
/* 014   ----------------------------------------
 */	.byte		        Cn3 
	.byte	W96
/* 015   ----------------------------------------
 */	.byte		        Bn2 
	.byte	W96
/* 016   ----------------------------------------
 */	.byte		        Dn3 
	.byte	W96
/* 017   ----------------------------------------
 */	.byte		        Cs3 
	.byte	W96
/* 018   ----------------------------------------
 */	.byte		        Cn3 
	.byte	W96
/* 019   ----------------------------------------
 */	.byte		        Bn2 
	.byte	W96
/* 020   ----------------------------------------
 */	.byte		        Dn3 
	.byte	W96
/* 021   ----------------------------------------
 */	.byte		        Cs3 
	.byte	W96
/* 022   ----------------------------------------
 */	.byte		        Cn3 
	.byte	W96
/* 023   ----------------------------------------
 */	.byte		        Bn2 
	.byte	W96
/* 024   ----------------------------------------
 */	.byte		        Dn3 
	.byte	W96
/* 025   ----------------------------------------
 */	.byte		        Cs3 
	.byte	W96
/* 026   ----------------------------------------
 */	.byte		        Cn3 
	.byte	W96
/* 027   ----------------------------------------
 */	.byte		        Bn2 
	.byte	W96
	.byte	GOTO
	 mPtr	mus_final_boss_pinch_8_B1
mus_final_boss_pinch_8_B2:
/* 028   ----------------------------------------
 */	.byte	FINE

/* **************** Track 9 (Midi-Chn.9) **************** */

mus_final_boss_pinch_9:
	.byte	KEYSH , mus_final_boss_pinch_key+0
mus_final_boss_pinch_9_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 25
	.byte		VOL   , 79*mus_final_boss_pinch_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 56
	.byte		LFODL , 0
	.byte		MOD   , 0
	.byte		MODT  , 2
	.byte		N92   , Cn2 , v127
	.byte	W96
/* 001   ----------------------------------------
 */mus_final_boss_pinch_9_001:
	.byte		N11   , Cn2 , v127
	.byte	W12
	.byte		N80   
	.byte	W84
	.byte	PEND
/* 002   ----------------------------------------
 */	.byte		N92   
	.byte	W96
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_9_001
/* 004   ----------------------------------------
 */	.byte		N92   , Dn2 , v127
	.byte	W96
/* 005   ----------------------------------------
 */mus_final_boss_pinch_9_005:
	.byte		N11   , Dn2 , v127
	.byte	W12
	.byte		N80   
	.byte	W84
	.byte	PEND
/* 006   ----------------------------------------
 */	.byte		N92   
	.byte	W96
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_9_005
/* 008   ----------------------------------------
 */	.byte		N92   , En2 , v127
	.byte	W96
/* 009   ----------------------------------------
 */mus_final_boss_pinch_9_009:
	.byte		N11   , En2 , v127
	.byte	W12
	.byte		N80   
	.byte	W84
	.byte	PEND
/* 010   ----------------------------------------
 */	.byte		N92   
	.byte	W96
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_pinch_9_009
/* 012   ----------------------------------------
 */	.byte	W96
/* 013   ----------------------------------------
 */	.byte	W96
/* 014   ----------------------------------------
 */	.byte	W96
/* 015   ----------------------------------------
 */	.byte	W96
/* 016   ----------------------------------------
 */	.byte	W96
/* 017   ----------------------------------------
 */	.byte	W96
/* 018   ----------------------------------------
 */	.byte	W96
/* 019   ----------------------------------------
 */	.byte	W96
/* 020   ----------------------------------------
 */	.byte	W96
/* 021   ----------------------------------------
 */	.byte	W96
/* 022   ----------------------------------------
 */	.byte	W96
/* 023   ----------------------------------------
 */	.byte	W96
/* 024   ----------------------------------------
 */	.byte	W96
/* 025   ----------------------------------------
 */	.byte	W96
/* 026   ----------------------------------------
 */	.byte	W96
/* 027   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_final_boss_pinch_9_B1
mus_final_boss_pinch_9_B2:
/* 028   ----------------------------------------
 */	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_final_boss_pinch):
	.byte	9	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_final_boss_pinch_pri	/* Priority */
	.byte	mus_final_boss_pinch_rev	/* Reverb */

mAlignWord
	mPtr	mus_final_boss_pinch_grp

	mPtr	mus_final_boss_pinch_1
	mPtr	mus_final_boss_pinch_2
	mPtr	mus_final_boss_pinch_3
	mPtr	mus_final_boss_pinch_4
	mPtr	mus_final_boss_pinch_5
	mPtr	mus_final_boss_pinch_6
	mPtr	mus_final_boss_pinch_7
	mPtr	mus_final_boss_pinch_8
	mPtr	mus_final_boss_pinch_9

	.end
