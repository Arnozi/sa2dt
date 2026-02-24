	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_course_selection_2_grp, voicegroup013
	.equ	mus_course_selection_2_pri, 0
	.equ	mus_course_selection_2_rev, reverb_set+0
	.equ	mus_course_selection_2_mvl, 115
	.equ	mus_course_selection_2_key, 0
	.equ	mus_course_selection_2_tbs, 1
	.equ	mus_course_selection_2_exg, 1
	.equ	mus_course_selection_2_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_course_selection_2)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_course_selection_2_1:
	.byte	KEYSH , mus_course_selection_2_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 124*mus_course_selection_2_tbs/2
	.byte	W24
	.byte		VOICE , 127
	.byte		VOL   , 120*mus_course_selection_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
mus_course_selection_2_1_B1:
	.byte		N15   , Ds2 , v116
	.byte	W01
	.byte		N05   , Dn1 , v048
	.byte	W17
	.byte		N17   , Cs1 , v127
	.byte	W01
	.byte		N03   , Dn1 , v048
	.byte	W05
	.byte		N15   , Ds2 , v108
	.byte	W12
	.byte		N56   , Ds1 , v048
	.byte	W12
/* 001   ----------------------------------------
 */	.byte		N16   , Ds2 , v120
	.byte	W24
	.byte		N11   , Cs1 , v127
	.byte		N15   , Ds2 , v108
	.byte	W18
	.byte		N05   , Cs1 , v127
	.byte	W06
	.byte		N15   , Ds2 , v116
	.byte	W01
	.byte		N05   , Dn1 , v048
	.byte	W17
	.byte		N17   , Cs1 , v127
	.byte	W02
	.byte		N03   , Dn1 , v048
	.byte	W04
	.byte		N15   , Ds2 , v108
	.byte	W12
	.byte		N44   , Ds1 , v048
	.byte	W12
/* 002   ----------------------------------------
 */	.byte		N16   , Ds2 , v120
	.byte	W06
	.byte		N40   , Cs1 , v127
	.byte	W18
	.byte		N04   , An1 
	.byte		N15   , Ds2 , v108
	.byte	W06
	.byte		N02   , Gs1 , v127
	.byte	W06
	.byte		N05   , Gn1 
	.byte	W06
	.byte		N07   
	.byte	W06
	.byte		N15   , Ds2 , v116
	.byte	W01
	.byte		N04   , Dn1 , v048
	.byte	W17
	.byte		N17   , Cs1 , v127
	.byte	W01
	.byte		N04   , Dn1 , v048
	.byte	W05
	.byte		N15   , Ds2 , v108
	.byte	W13
	.byte		N56   , Ds1 , v048
	.byte	W11
/* 003   ----------------------------------------
 */	.byte		N16   , Ds2 , v120
	.byte	W12
	.byte		N32   , Cs1 , v127
	.byte	W12
	.byte		N15   , Ds2 , v108
	.byte	W24
	.byte		        Ds2 , v116
	.byte	W01
	.byte		N04   , Dn1 , v048
	.byte	W17
	.byte		N17   , Cs1 , v127
	.byte	W02
	.byte		N04   , Dn1 , v048
	.byte	W04
	.byte		N15   , Ds2 , v108
	.byte	W11
	.byte		N42   , Ds1 , v048
	.byte	W13
/* 004   ----------------------------------------
 */	.byte		N16   , Ds2 , v120
	.byte	W12
	.byte		N05   , Cs1 , v127
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N23   
	.byte		N15   , Ds2 , v108
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte		N01   
	.byte		N16   , Ds2 , v120
	.byte		TIE   , Gn2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W12
	.byte		N17   , Cs1 , v127
	.byte		N03   , Dn1 , v048
	.byte		N15   , Ds2 , v108
	.byte	W12
	.byte		N02   , Dn1 , v048
	.byte	W06
	.byte		N05   , Cs1 , v127
	.byte	W06
/* 005   ----------------------------------------
 */mus_course_selection_2_1_005:
	.byte		N02   , Dn1 , v048
	.byte		N15   , Ds2 , v116
	.byte	W12
	.byte		N02   , Dn1 , v048
	.byte	W12
	.byte		N11   , Cs1 , v127
	.byte		N12   , Ds1 , v048
	.byte		N15   , Ds2 , v108
	.byte	W12
	.byte		N04   , Dn1 , v048
	.byte	W12
	.byte		N03   
	.byte		N16   , Ds2 , v120
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W12
	.byte		N17   , Cs1 , v127
	.byte		N03   , Dn1 , v048
	.byte		N15   , Ds2 , v108
	.byte	W12
	.byte		N02   , Dn1 , v048
	.byte	W06
	.byte		N05   , Cs1 , v127
	.byte	W03
	.byte	PEND
	.byte		EOT   , Gn2 
	.byte	W03
/* 006   ----------------------------------------
 */mus_course_selection_2_1_006:
	.byte		N02   , Dn1 , v048
	.byte		N15   , Ds2 , v116
	.byte	W06
	.byte		N05   , Cs1 , v127
	.byte	W06
	.byte		N02   , Dn1 , v048
	.byte	W12
	.byte		N23   , Cs1 , v127
	.byte		N12   , Ds1 , v048
	.byte		N15   , Ds2 , v108
	.byte	W12
	.byte		N04   , Dn1 , v048
	.byte	W12
	.byte		N03   
	.byte		N16   , Ds2 , v120
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W12
	.byte		N17   , Cs1 , v127
	.byte		N03   , Dn1 , v048
	.byte		N15   , Ds2 , v108
	.byte	W12
	.byte		N02   , Dn1 , v048
	.byte	W06
	.byte		N05   , Cs1 , v127
	.byte	W06
	.byte	PEND
/* 007   ----------------------------------------
 */mus_course_selection_2_1_007:
	.byte		N02   , Dn1 , v048
	.byte		N15   , Ds2 , v116
	.byte	W12
	.byte		N02   , Dn1 , v048
	.byte	W12
	.byte		N11   , Cs1 , v127
	.byte		N12   , Ds1 , v048
	.byte		N15   , Ds2 , v108
	.byte	W12
	.byte		N04   , Dn1 , v048
	.byte	W12
	.byte		N03   
	.byte		N16   , Ds2 , v120
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W12
	.byte		N17   , Cs1 , v127
	.byte		N03   , Dn1 , v048
	.byte		N15   , Ds2 , v108
	.byte	W12
	.byte		N02   , Dn1 , v048
	.byte	W06
	.byte		N05   , Cs1 , v127
	.byte	W06
	.byte	PEND
/* 008   ----------------------------------------
 */	.byte		N02   , Dn1 , v048
	.byte		N15   , Ds2 , v116
	.byte	W06
	.byte		N11   , Cs1 , v127
	.byte	W06
	.byte		N02   , Dn1 , v048
	.byte	W12
	.byte		N15   , Cs1 , v127
	.byte		N12   , Ds1 , v048
	.byte		N15   , Ds2 , v108
	.byte	W12
	.byte		N04   , Dn1 , v048
	.byte	W12
	.byte		N01   
	.byte		N16   , Ds2 , v120
	.byte		TIE   , Gn2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W12
	.byte		N17   , Cs1 , v127
	.byte		N03   , Dn1 , v048
	.byte		N15   , Ds2 , v108
	.byte	W12
	.byte		N02   , Dn1 , v048
	.byte	W06
	.byte		N05   , Cs1 , v127
	.byte	W06
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_2_1_005
	.byte		EOT   , Gn2 
	.byte	W03
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_2_1_006
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_2_1_007
/* 012   ----------------------------------------
 */	.byte		N02   , Dn1 , v048
	.byte		N15   , Ds2 , v116
	.byte	W06
	.byte		N11   , Cs1 , v127
	.byte	W06
	.byte		N02   , Dn1 , v048
	.byte	W12
	.byte		N15   , Cs1 , v127
	.byte		N12   , Ds1 , v048
	.byte		N15   , Ds2 , v108
	.byte	W12
	.byte		N04   , Dn1 , v048
	.byte	W12
	.byte	GOTO
	 mPtr	mus_course_selection_2_1_B1
mus_course_selection_2_1_B2:
	.byte		N16   , Ds2 , v120
	.byte	W24
	.byte		N15   , Ds2 , v108
	.byte	W15
	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_course_selection_2_2:
	.byte	KEYSH , mus_course_selection_2_key+0
/* 000   ----------------------------------------
 */	.byte	W24
	.byte		VOICE , 57
	.byte		VOL   , 105*mus_course_selection_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
mus_course_selection_2_2_B1:
	.byte	W48
/* 001   ----------------------------------------
 */mus_course_selection_2_2_001:
	.byte		N06   , Ds2 , v096
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        As5 
	.byte	W54
	.byte	PEND
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_2_2_001
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
 */	.byte	W48
	.byte	GOTO
	 mPtr	mus_course_selection_2_2_B1
mus_course_selection_2_2_B2:
	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_course_selection_2_3:
	.byte	KEYSH , mus_course_selection_2_key+0
/* 000   ----------------------------------------
 */	.byte	W24
	.byte		VOICE , 52
	.byte		VOL   , 112*mus_course_selection_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
mus_course_selection_2_3_B1:
	.byte		N16   , As1 , v116
	.byte	W18
	.byte		N15   , Fn2 
	.byte	W18
	.byte		N23   , As2 , v120
	.byte	W12
/* 001   ----------------------------------------
 */	.byte	W12
	.byte		N11   , As1 
	.byte	W12
	.byte		        As2 , v100
	.byte	W12
	.byte		N07   , As1 , v104
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N14   , As1 , v120
	.byte	W18
	.byte		        As1 , v116
	.byte	W18
	.byte		N22   , As2 
	.byte	W12
/* 002   ----------------------------------------
 */	.byte	W12
	.byte		N11   , As1 , v108
	.byte	W12
	.byte		        As2 , v104
	.byte	W12
	.byte		N03   , As1 , v116
	.byte	W06
	.byte		N06   , As2 , v108
	.byte	W06
	.byte		N13   , As1 , v116
	.byte	W18
	.byte		N15   , Fn2 
	.byte	W18
	.byte		N24   , As2 , v108
	.byte	W12
/* 003   ----------------------------------------
 */	.byte	W12
	.byte		N10   , As1 , v116
	.byte	W12
	.byte		N11   , As2 , v104
	.byte	W12
	.byte		N06   , As1 , v096
	.byte	W12
	.byte		N14   , As1 , v120
	.byte	W18
	.byte		N12   , Fn2 , v116
	.byte	W18
	.byte		N22   , As2 
	.byte	W12
/* 004   ----------------------------------------
 */	.byte	W12
	.byte		N03   , As1 , v108
	.byte	W12
	.byte		N11   , As2 , v127
	.byte	W12
	.byte		N05   , As1 , v108
	.byte	W06
	.byte		N03   , As2 
	.byte	W06
	.byte		N06   , Fs1 
	.byte	W06
	.byte		        Fs1 , v104
	.byte	W06
	.byte		        Fs1 , v108
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Cs2 , v104
	.byte	W06
	.byte		        Fs1 , v108
	.byte	W06
	.byte		N06   
	.byte	W06
/* 005   ----------------------------------------
 */mus_course_selection_2_3_005:
	.byte		N06   , Fs2 , v108
	.byte	W06
	.byte		        Fs2 , v104
	.byte	W06
	.byte		        Fs1 , v108
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Cs2 , v104
	.byte	W06
	.byte		        Fs1 , v108
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs1 , v104
	.byte	W06
	.byte		        Fs1 , v108
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Cs2 , v104
	.byte	W06
	.byte		        Fs1 , v108
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_2_3_005
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_2_3_005
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_2_3_005
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_2_3_005
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_2_3_005
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_2_3_005
/* 012   ----------------------------------------
 */	.byte		N06   , Fs2 , v108
	.byte	W06
	.byte		        Fs2 , v104
	.byte	W06
	.byte		        Fs1 , v108
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Cs2 , v104
	.byte	W06
	.byte		        Fs1 , v108
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	GOTO
	 mPtr	mus_course_selection_2_3_B1
mus_course_selection_2_3_B2:
	.byte		N06   , Fs1 , v108
	.byte	W06
	.byte		        Fs1 , v104
	.byte	W06
	.byte		        Fs1 , v108
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Cs2 , v104
	.byte	W06
	.byte		        Fs1 , v108
	.byte	W06
	.byte		N06   
	.byte	W06
/* 013   ----------------------------------------
 */	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_course_selection_2_4:
	.byte	KEYSH , mus_course_selection_2_key+0
/* 000   ----------------------------------------
 */	.byte	W24
	.byte		VOICE , 36
	.byte		VOL   , 112*mus_course_selection_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
mus_course_selection_2_4_B1:
	.byte	W48
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W72
	.byte		N24   , As3 , v127
	.byte	W23
	.byte		        Fs3 
	.byte	W01
/* 005   ----------------------------------------
 */	.byte	W24
	.byte		        Fn3 , v124
	.byte	W23
	.byte		        Ds3 , v127
	.byte	W24
	.byte	W02
	.byte		N11   , Cs3 , v120
	.byte	W11
	.byte		N36   , Cn3 , v124
	.byte	W12
/* 006   ----------------------------------------
 */	.byte	W24
	.byte		N12   , Cs3 , v120
	.byte	W11
	.byte		N66   , Fs3 , v124
	.byte	W60
	.byte	W01
/* 007   ----------------------------------------
 */	.byte	W10
	.byte		N11   , Fs3 , v127
	.byte	W12
	.byte		N13   , Fn3 
	.byte	W12
	.byte		N24   , Ds3 
	.byte	W24
	.byte		N11   , Cs3 , v124
	.byte	W11
	.byte		N68   , Cn3 , v127
	.byte	W24
	.byte	W03
/* 008   ----------------------------------------
 */	.byte	W72
	.byte		N24   , As3 
	.byte	W24
/* 009   ----------------------------------------
 */	.byte		        Fs3 , v120
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		        Ds3 , v127
	.byte	W24
	.byte	W01
	.byte		N11   , Cs3 , v116
	.byte	W11
	.byte		N36   , Cn3 , v124
	.byte	W12
/* 010   ----------------------------------------
 */	.byte	W24
	.byte		N11   , Cs3 , v112
	.byte	W11
	.byte		N72   , Fs3 , v104
	.byte	W60
	.byte	W01
/* 011   ----------------------------------------
 */	.byte	W12
	.byte		N12   , Gs3 , v127
	.byte	W10
	.byte		N11   , As3 , v120
	.byte	W11
	.byte		TIE   , Cn4 , v096
	.byte	W60
	.byte	W03
/* 012   ----------------------------------------
 */	.byte	W36
	.byte		EOT   
	.byte	W12
	.byte	GOTO
	 mPtr	mus_course_selection_2_4_B1
mus_course_selection_2_4_B2:
	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_course_selection_2_5:
	.byte	KEYSH , mus_course_selection_2_key+0
/* 000   ----------------------------------------
 */	.byte	W24
	.byte		VOICE , 66
	.byte		VOL   , 79*mus_course_selection_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
mus_course_selection_2_5_B1:
	.byte	W48
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
 */	.byte	W48
	.byte		N06   , Ds2 , v096
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
/* 012   ----------------------------------------
 */	.byte		        Ds3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte	GOTO
	 mPtr	mus_course_selection_2_5_B1
mus_course_selection_2_5_B2:
	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_course_selection_2_6:
	.byte		VOL   , 127*mus_course_selection_2_mvl/mxv
	.byte	KEYSH , mus_course_selection_2_key+0
/* 000   ----------------------------------------
 */	.byte	W20
	.byte		N03   , As1 , v072
	.byte	W01
	.byte		N04   , Cn2 , v096
	.byte	W02
	.byte		N03   , Dn2 , v104
	.byte	W01
	.byte		VOICE , 53
	.byte		VOL   , 60*mus_course_selection_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N03   , En2 , v108
	.byte	W02
	.byte		        Fn2 
	.byte	W02
	.byte		        Gn2 
	.byte	W02
	.byte		        An2 
	.byte	W01
	.byte		        As2 , v116
	.byte	W02
	.byte		        Cn3 , v108
	.byte	W02
	.byte		        Dn3 , v116
	.byte	W01
	.byte		        En3 
	.byte	W02
	.byte		        Fn3 , v120
	.byte	W02
	.byte		        Gn3 , v116
	.byte	W02
	.byte		N04   , An3 
	.byte	W05
mus_course_selection_2_6_B1:
	.byte		N32   , As3 , v116
	.byte	W36
	.byte		N56   , Gs3 
	.byte	W12
/* 001   ----------------------------------------
 */	.byte	W48
	.byte		N32   , Gn3 
	.byte	W36
	.byte		N40   , Gs3 
	.byte	W12
/* 002   ----------------------------------------
 */	.byte	W30
	.byte		N03   , Cs2 , v020
	.byte	W03
	.byte		N01   , Dn2 , v056
	.byte	W01
	.byte		N02   , En2 , v092
	.byte		N03   , Fn2 , v116
	.byte	W01
	.byte		        Gn2 , v108
	.byte	W01
	.byte		        An2 , v116
	.byte	W02
	.byte		        As2 , v108
	.byte	W01
	.byte		        Cn3 , v116
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		N02   , En3 
	.byte	W01
	.byte		        Fn3 , v108
	.byte	W02
	.byte		        Gn3 , v116
	.byte	W01
	.byte		N03   , An3 , v108
	.byte	W02
	.byte		N36   , As3 , v116
	.byte	W36
	.byte	W01
	.byte		N56   , Gs3 
	.byte	W12
/* 003   ----------------------------------------
 */	.byte	W48
	.byte		N32   , Gn3 
	.byte	W36
	.byte		N52   , Gs3 
	.byte	W12
/* 004   ----------------------------------------
 */	.byte	W60
	.byte		N12   , Cs5 , v127
	.byte	W24
	.byte		        Fs4 
	.byte	W12
/* 005   ----------------------------------------
 */mus_course_selection_2_6_005:
	.byte	W12
	.byte		N12   , As4 , v127
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		        Ds4 
	.byte	W12
	.byte	PEND
/* 006   ----------------------------------------
 */mus_course_selection_2_6_006:
	.byte	W12
	.byte		N12   , Gs4 , v127
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		        Cs5 
	.byte	W24
	.byte		        Fs4 
	.byte	W12
	.byte	PEND
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_2_6_005
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_2_6_006
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_2_6_005
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_2_6_006
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_2_6_005
/* 012   ----------------------------------------
 */	.byte	W12
	.byte		N12   , Gs4 , v127
	.byte	W24
	.byte		        Cn4 
	.byte	W12
	.byte	GOTO
	 mPtr	mus_course_selection_2_6_B1
mus_course_selection_2_6_B2:
	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_course_selection_2_7:
	.byte	KEYSH , mus_course_selection_2_key+0
/* 000   ----------------------------------------
 */	.byte	W24
	.byte		VOICE , 51
	.byte		VOL   , 90*mus_course_selection_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
mus_course_selection_2_7_B1:
	.byte	W48
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W60
	.byte		N03   , Cs2 , v116
	.byte		N03   , Fs2 
	.byte	W18
	.byte		        Cs2 , v108
	.byte		N03   , Fs2 , v120
	.byte	W18
/* 005   ----------------------------------------
 */	.byte		N18   , Cs2 , v116
	.byte		N15   , Fs2 
	.byte	W18
	.byte		N18   , As1 , v127
	.byte		N18   , Cs2 , v116
	.byte	W18
	.byte		N03   , Cs2 , v096
	.byte		N03   , Fs2 , v104
	.byte	W12
	.byte		N15   , Ds2 , v116
	.byte		N15   , Gs2 
	.byte	W18
	.byte		N03   , Ds2 , v108
	.byte		N03   , Gs2 , v116
	.byte	W18
	.byte		        Ds2 , v120
	.byte		N03   , Gs2 
	.byte	W12
/* 006   ----------------------------------------
 */	.byte	W60
	.byte		        Cs2 , v116
	.byte		N03   , Fs2 
	.byte	W18
	.byte		        Cs2 
	.byte		N03   , Fs2 
	.byte	W18
/* 007   ----------------------------------------
 */	.byte		N15   , Cs2 
	.byte		N15   , Fs2 , v100
	.byte	W18
	.byte		N18   , As1 , v116
	.byte		N18   , Cs2 , v104
	.byte	W18
	.byte		N03   , Cs2 , v096
	.byte		N03   , Fs2 , v108
	.byte	W12
	.byte		N15   , Ds2 , v116
	.byte		N15   , Gs2 
	.byte	W18
	.byte		N03   , Ds2 , v108
	.byte		N03   , Gs2 
	.byte	W30
/* 008   ----------------------------------------
 */	.byte	W60
	.byte		N04   , Fs2 
	.byte		N04   , As2 , v116
	.byte	W18
	.byte		N03   , Fs2 , v120
	.byte		N03   , As2 , v116
	.byte	W18
/* 009   ----------------------------------------
 */	.byte		N14   , Fs2 , v127
	.byte		N14   , As2 , v108
	.byte	W18
	.byte		N13   , Cs2 , v116
	.byte		N14   , Fs2 , v100
	.byte	W18
	.byte		N03   , Fs2 , v092
	.byte		N03   , As2 , v104
	.byte	W12
	.byte		N13   , Gs2 , v120
	.byte		N13   , Cn3 , v108
	.byte	W18
	.byte		N04   , As2 , v116
	.byte		N04   , Cs3 , v120
	.byte	W18
	.byte		        Gs2 , v127
	.byte		N04   , Cn3 , v120
	.byte	W12
/* 010   ----------------------------------------
 */	.byte	W72
	.byte		N02   , Fs2 , v116
	.byte		N03   , As2 , v120
	.byte	W06
	.byte		        Fs2 , v096
	.byte		N03   , As2 , v104
	.byte	W06
	.byte		        Fs2 , v096
	.byte		N03   , As2 , v100
	.byte	W06
	.byte		        Fs2 , v080
	.byte		N04   , As2 , v092
	.byte	W06
/* 011   ----------------------------------------
 */	.byte		N12   , Fs2 , v120
	.byte		N11   , As2 , v108
	.byte	W18
	.byte		        Cs2 , v120
	.byte		N12   , Fs2 , v116
	.byte	W18
	.byte		N03   , Fs2 , v108
	.byte		N04   , As2 , v104
	.byte	W12
	.byte		N13   , Gs2 , v127
	.byte		N12   , Cn3 , v108
	.byte	W18
	.byte		N06   , As2 , v116
	.byte		N06   , Cs3 
	.byte	W18
	.byte		N18   , Gs2 , v127
	.byte		N18   , Cn3 , v120
	.byte	W12
/* 012   ----------------------------------------
 */	.byte	W48
	.byte	GOTO
	 mPtr	mus_course_selection_2_7_B1
mus_course_selection_2_7_B2:
	.byte	FINE

/* **************** Track 8 (Midi-Chn.8) **************** */

mus_course_selection_2_8:
	.byte	KEYSH , mus_course_selection_2_key+0
/* 000   ----------------------------------------
 */	.byte	W20
	.byte		VOICE , 55
	.byte		VOL   , 112*mus_course_selection_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N03   , Fn1 , v072
	.byte	W01
	.byte		N04   , Gn1 , v096
	.byte	W02
	.byte		N03   , An1 , v104
	.byte	W02
	.byte		        Bn1 , v108
	.byte	W02
	.byte		        Cn2 
	.byte	W02
	.byte		        Dn2 
	.byte	W02
	.byte		        En2 
	.byte	W01
	.byte		        Fn2 , v116
	.byte	W02
	.byte		        Gn2 , v108
	.byte	W02
	.byte		        An2 , v116
	.byte	W01
	.byte		        Bn2 
	.byte	W02
	.byte		        Cn3 , v120
	.byte	W02
	.byte		        Dn3 , v116
	.byte	W02
	.byte		N04   , En3 
	.byte	W05
mus_course_selection_2_8_B1:
	.byte		N32   , Fn3 , v116
	.byte	W36
	.byte		N56   , Ds3 
	.byte	W12
/* 001   ----------------------------------------
 */mus_course_selection_2_8_001:
	.byte	W48
	.byte		N32   , As2 , v116
	.byte	W36
	.byte		N40   , Ds3 
	.byte	W12
	.byte	PEND
/* 002   ----------------------------------------
 */	.byte	W30
	.byte		N03   , Gs1 , v020
	.byte	W03
	.byte		N01   , An1 , v056
	.byte	W01
	.byte		N02   , Bn1 , v092
	.byte		N03   , Cn2 , v116
	.byte	W01
	.byte		        Dn2 , v108
	.byte	W01
	.byte		        En2 , v116
	.byte	W02
	.byte		        Fn2 , v108
	.byte	W01
	.byte		        Gn2 , v116
	.byte	W01
	.byte		        An2 
	.byte	W01
	.byte		N02   , Bn2 
	.byte	W01
	.byte		        Cn3 , v108
	.byte	W02
	.byte		        Dn3 , v116
	.byte	W01
	.byte		N03   , En3 , v108
	.byte	W02
	.byte		N36   , Fn3 , v116
	.byte	W36
	.byte	W01
	.byte		N56   , Ds3 
	.byte	W12
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_2_8_001
/* 004   ----------------------------------------
 */	.byte	W28
	.byte	W01
	.byte		N03   , Cs3 , v052
	.byte		N03   , Dn3 , v076
	.byte	W01
	.byte		N04   , Cn3 , v096
	.byte	W02
	.byte		        Bn2 , v092
	.byte	W02
	.byte		        An2 
	.byte	W02
	.byte		        Gn2 , v088
	.byte	W02
	.byte		        En2 , v080
	.byte		N03   , Fs2 , v092
	.byte	W02
	.byte		        Dn2 , v052
	.byte	W03
	.byte		        Bn1 , v060
	.byte	W01
	.byte		N01   , Cn2 , v044
	.byte	W16
	.byte		N06   , Cs3 , v127
	.byte	W24
	.byte		N06   
	.byte	W12
/* 005   ----------------------------------------
 */mus_course_selection_2_8_005:
	.byte	W12
	.byte		N06   , Cs3 , v127
	.byte	W24
	.byte		        Cs3 , v116
	.byte	W24
	.byte		        Ds3 , v127
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte	PEND
/* 006   ----------------------------------------
 */mus_course_selection_2_8_006:
	.byte	W12
	.byte		N06   , Ds3 , v127
	.byte	W24
	.byte		        Ds3 , v124
	.byte	W24
	.byte		        Cs3 , v127
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte	PEND
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_2_8_005
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_2_8_006
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_2_8_005
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_2_8_006
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_2_8_005
/* 012   ----------------------------------------
 */	.byte	W12
	.byte		N06   , Ds3 , v127
	.byte	W08
	.byte		N03   , Fn1 , v072
	.byte	W01
	.byte		N04   , Gn1 , v096
	.byte	W02
	.byte		N03   , An1 , v104
	.byte	W02
	.byte		        Bn1 , v108
	.byte	W02
	.byte		        Cn2 
	.byte	W02
	.byte		        Dn2 
	.byte	W02
	.byte		        En2 
	.byte	W01
	.byte		        Fn2 , v116
	.byte	W02
	.byte		        Gn2 , v108
	.byte	W02
	.byte		        An2 , v116
	.byte		N06   , Ds3 , v124
	.byte	W01
	.byte		N03   , Bn2 , v116
	.byte	W02
	.byte		        Cn3 , v120
	.byte	W02
	.byte		        Dn3 , v116
	.byte	W02
	.byte		N04   , En3 
	.byte	W03
	.byte		N02   , Fn3 
	.byte	W02
	.byte	GOTO
	 mPtr	mus_course_selection_2_8_B1
mus_course_selection_2_8_B2:
	.byte	FINE

/* **************** Track 9 (Midi-Chn.9) **************** */

mus_course_selection_2_9:
	.byte		VOL   , 127*mus_course_selection_2_mvl/mxv
	.byte	KEYSH , mus_course_selection_2_key+0
/* 000   ----------------------------------------
 */	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte	W20
	.byte		N03   , Fn1 , v072
	.byte	W01
	.byte		N04   , Gn1 , v096
	.byte	W02
	.byte		N03   , An1 , v104
	.byte	W01
	.byte		VOICE , 54
	.byte		VOL   , 60*mus_course_selection_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N03   , Bn1 , v108
	.byte	W02
	.byte		        Cn2 
	.byte	W02
	.byte		        Dn2 
	.byte	W02
	.byte		        En2 
	.byte	W01
	.byte		        Fn2 , v116
	.byte	W02
	.byte		        Gn2 , v108
	.byte	W02
	.byte		        An2 , v116
	.byte	W01
	.byte		        Bn2 
	.byte	W02
	.byte		        Cn3 , v120
	.byte	W02
	.byte		        Dn3 , v116
	.byte	W02
	.byte		N04   , En3 
	.byte	W05
mus_course_selection_2_9_B1:
	.byte		N32   , Fn3 , v116
	.byte	W36
	.byte		N56   , Ds3 
	.byte	W12
/* 001   ----------------------------------------
 */	.byte	W48
	.byte		N32   , As2 
	.byte	W36
	.byte		N40   , Ds3 
	.byte	W12
/* 002   ----------------------------------------
 */	.byte	W30
	.byte		N03   , Gs1 , v020
	.byte	W03
	.byte		N01   , An1 , v056
	.byte	W01
	.byte		N02   , Bn1 , v092
	.byte		N03   , Cn2 , v116
	.byte	W01
	.byte		        Dn2 , v108
	.byte	W01
	.byte		        En2 , v116
	.byte	W02
	.byte		        Fn2 , v108
	.byte	W01
	.byte		        Gn2 , v116
	.byte	W01
	.byte		        An2 
	.byte	W01
	.byte		N02   , Bn2 
	.byte	W01
	.byte		        Cn3 , v108
	.byte	W02
	.byte		        Dn3 , v116
	.byte	W01
	.byte		N03   , En3 , v108
	.byte	W02
	.byte		N36   , Fn3 , v116
	.byte	W36
	.byte	W01
	.byte		N56   , Ds3 
	.byte	W12
/* 003   ----------------------------------------
 */	.byte	W48
	.byte		N32   , As2 
	.byte	W36
	.byte		N28   , Ds3 
	.byte	W12
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */mus_course_selection_2_9_005:
	.byte	W60
	.byte		N06   , Ds3 , v127
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte	PEND
/* 006   ----------------------------------------
 */mus_course_selection_2_9_006:
	.byte		N06   , Ds5 , v127
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Cn6 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W30
	.byte	PEND
/* 007   ----------------------------------------
 */	.byte	W66
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_2_9_006
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_2_9_005
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_2_9_006
/* 011   ----------------------------------------
 */	.byte	W96
/* 012   ----------------------------------------
 */	.byte	W48
	.byte	GOTO
	 mPtr	mus_course_selection_2_9_B1
mus_course_selection_2_9_B2:
	.byte	FINE

/* **************** Track 10 (Midi-Chn.10) **************** */

mus_course_selection_2_10:
	.byte	KEYSH , mus_course_selection_2_key+0
/* 000   ----------------------------------------
 */	.byte	W24
	.byte		VOICE , 51
	.byte		VOL   , 90*mus_course_selection_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
mus_course_selection_2_10_B1:
	.byte		N04   , Fn2 , v127
	.byte		N04   , As2 
	.byte	W18
	.byte		        Fn2 
	.byte		N04   , As2 
	.byte	W18
	.byte		N56   , Ds2 
	.byte		N56   , Gs2 
	.byte	W12
/* 001   ----------------------------------------
 */	.byte	W48
	.byte		N05   , Ds2 
	.byte		N05   , Gn2 
	.byte	W18
	.byte		N04   , Ds2 
	.byte		N04   , Gn2 
	.byte	W18
	.byte		N48   , Ds2 
	.byte		N48   , Gs2 
	.byte	W12
/* 002   ----------------------------------------
 */	.byte	W48
	.byte		N05   , Fn2 
	.byte		N05   , As2 
	.byte	W18
	.byte		N04   , Fn2 
	.byte		N04   , As2 
	.byte	W18
	.byte		N54   , Ds2 
	.byte		N54   , Gs2 
	.byte	W12
/* 003   ----------------------------------------
 */	.byte	W48
	.byte		N05   , Ds2 
	.byte		N05   , Gn2 
	.byte	W18
	.byte		N04   , Ds2 
	.byte		N04   , Gn2 
	.byte	W18
	.byte		N52   , Ds2 
	.byte		N52   , Gs2 
	.byte	W12
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
 */	.byte	W48
	.byte	GOTO
	 mPtr	mus_course_selection_2_10_B1
mus_course_selection_2_10_B2:
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_course_selection_2):
	.byte	10	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_course_selection_2_pri	/* Priority */
	.byte	mus_course_selection_2_rev	/* Reverb */

mAlignWord
	mPtr	mus_course_selection_2_grp

	mPtr	mus_course_selection_2_1
	mPtr	mus_course_selection_2_2
	mPtr	mus_course_selection_2_3
	mPtr	mus_course_selection_2_4
	mPtr	mus_course_selection_2_5
	mPtr	mus_course_selection_2_6
	mPtr	mus_course_selection_2_7
	mPtr	mus_course_selection_2_8
	mPtr	mus_course_selection_2_9
	mPtr	mus_course_selection_2_10

	.end
