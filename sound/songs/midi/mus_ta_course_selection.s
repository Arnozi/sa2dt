	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_ta_course_selection_grp, voicegroup010
	.equ	mus_ta_course_selection_pri, 0
	.equ	mus_ta_course_selection_rev, reverb_set+0
	.equ	mus_ta_course_selection_mvl, 108
	.equ	mus_ta_course_selection_key, 0
	.equ	mus_ta_course_selection_tbs, 1
	.equ	mus_ta_course_selection_exg, 1
	.equ	mus_ta_course_selection_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_ta_course_selection)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_ta_course_selection_1:
	.byte	KEYSH , mus_ta_course_selection_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*mus_ta_course_selection_tbs/2
	.byte	W24
	.byte		VOICE , 62
	.byte		VOL   , 96*mus_ta_course_selection_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
	.byte		N04   , As2 , v127
	.byte	W18
	.byte		N04   
	.byte	W18
	.byte		N56   , Gs2 
	.byte	W12
/* 001   ----------------------------------------
 */mus_ta_course_selection_1_001:
	.byte	W48
	.byte		N05   , Gn2 , v127
	.byte	W18
	.byte		N04   
	.byte	W18
	.byte		N48   , Gs2 
	.byte	W12
	.byte	PEND
/* 002   ----------------------------------------
 */mus_ta_course_selection_1_002:
	.byte	W48
	.byte		N05   , As2 , v127
	.byte	W18
	.byte		N04   
	.byte	W18
	.byte		N54   , Gs2 
	.byte	W12
	.byte	PEND
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ta_course_selection_1_001
/* 004   ----------------------------------------
 */	.byte	W48
mus_ta_course_selection_1_B1:
	.byte	W48
/* 005   ----------------------------------------
 */	.byte	W60
	.byte		N08   , Ds3 , v072
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N11   , Cn4 , v080
	.byte	W06
	.byte		N10   , Ds4 , v092
	.byte	W06
	.byte		N08   , Gs4 , v100
	.byte	W06
	.byte		N09   , Cn5 , v108
	.byte	W06
/* 006   ----------------------------------------
 */	.byte		N08   , Ds5 , v116
	.byte	W06
	.byte		N07   , Gs5 , v120
	.byte	W06
	.byte		        Cn6 , v127
	.byte	W06
	.byte		        Gs5 , v124
	.byte	W06
	.byte		N06   , Ds5 , v116
	.byte	W06
	.byte		N05   , Cn5 , v112
	.byte	W06
	.byte		N07   , Gs4 , v104
	.byte	W06
	.byte		N08   , Ds4 , v100
	.byte	W06
	.byte		N40   , Cs4 , v092
	.byte	W48
/* 007   ----------------------------------------
 */	.byte	W66
	.byte		N08   , Gs3 , v072
	.byte	W06
	.byte		N11   , Cn4 , v080
	.byte	W06
	.byte		N10   , Ds4 , v092
	.byte	W06
	.byte		N08   , Gs4 , v100
	.byte	W06
	.byte		N09   , Cn5 , v108
	.byte	W06
/* 008   ----------------------------------------
 */	.byte		N08   , Ds5 , v116
	.byte	W06
	.byte		N07   , Gs5 , v120
	.byte	W06
	.byte		        Cn6 , v127
	.byte	W06
	.byte		        Gs5 , v124
	.byte	W06
	.byte		N06   , Ds5 , v116
	.byte	W06
	.byte		N05   , Cn5 , v112
	.byte	W06
	.byte		N13   , Gs4 , v104
	.byte	W12
	.byte		N04   , As2 , v127
	.byte	W18
	.byte		N04   
	.byte	W18
	.byte		N56   , Gs2 
	.byte	W12
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ta_course_selection_1_001
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ta_course_selection_1_002
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ta_course_selection_1_001
/* 012   ----------------------------------------
 */	.byte	W48
	.byte	GOTO
	 mPtr	mus_ta_course_selection_1_B1
mus_ta_course_selection_1_B2:
	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_ta_course_selection_2:
	.byte	KEYSH , mus_ta_course_selection_key+0
/* 000   ----------------------------------------
 */	.byte	W20
	.byte		VOICE , 80
	.byte		VOL   , 119*mus_ta_course_selection_mvl/mxv
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
	.byte	W03
	.byte		N36   , Fn3 
	.byte	W36
	.byte	W02
	.byte		N56   , Ds3 
	.byte	W12
/* 001   ----------------------------------------
 */mus_ta_course_selection_2_001:
	.byte	W48
	.byte		N36   , As2 , v116
	.byte	W36
	.byte	W02
	.byte		N40   , Ds3 
	.byte	W10
	.byte	PEND
/* 002   ----------------------------------------
 */mus_ta_course_selection_2_002:
	.byte	W30
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
	.byte	W02
	.byte		N56   , Ds3 
	.byte	W11
	.byte	PEND
/* 003   ----------------------------------------
 */mus_ta_course_selection_2_003:
	.byte	W48
	.byte	W01
	.byte		N36   , As2 , v116
	.byte	W36
	.byte	W02
	.byte		N32   , Ds3 
	.byte	W09
	.byte	PEND
/* 004   ----------------------------------------
 */mus_ta_course_selection_2_004:
	.byte	W28
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
	.byte	W04
	.byte	PEND
mus_ta_course_selection_2_B1:
	.byte	W48
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte	W96
/* 007   ----------------------------------------
 */	.byte	W96
/* 008   ----------------------------------------
 */	.byte	W20
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
	.byte	W03
	.byte		N36   , Fn3 
	.byte	W36
	.byte	W02
	.byte		N56   , Ds3 
	.byte	W12
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ta_course_selection_2_001
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ta_course_selection_2_002
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ta_course_selection_2_003
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ta_course_selection_2_004
	.byte	GOTO
	 mPtr	mus_ta_course_selection_2_B1
mus_ta_course_selection_2_B2:
	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_ta_course_selection_3:
	.byte	KEYSH , mus_ta_course_selection_key+0
/* 000   ----------------------------------------
 */	.byte	W24
	.byte		VOICE , 74
	.byte		VOL   , 72*mus_ta_course_selection_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W72
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W48
mus_ta_course_selection_3_B1:
	.byte	W24
	.byte		N12   , Cs3 , v127
	.byte	W18
	.byte		N02   
	.byte	W06
/* 005   ----------------------------------------
 */	.byte		N05   
	.byte	W12
	.byte		N07   
	.byte	W24
	.byte		TIE   , Ds3 
	.byte	W60
/* 006   ----------------------------------------
 */	.byte	W42
	.byte		EOT   
	.byte	W30
	.byte		N02   , Cs3 
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N03   
	.byte	W06
/* 007   ----------------------------------------
 */	.byte		N04   
	.byte	W18
	.byte		N03   
	.byte	W18
	.byte		N84   , Ds3 
	.byte	W60
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
	 mPtr	mus_ta_course_selection_3_B1
mus_ta_course_selection_3_B2:
	.byte	W24
	.byte		N12   , Cs3 , v127
	.byte	W18
	.byte		N02   
	.byte	W06
/* 013   ----------------------------------------
 */	.byte		N05   
	.byte	W12
	.byte		N07   
	.byte	W24
	.byte		N12   , Ds3 
	.byte	W12
	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_ta_course_selection_4:
	.byte	KEYSH , mus_ta_course_selection_key+0
/* 000   ----------------------------------------
 */	.byte	W24
	.byte		VOICE , 22
	.byte		VOL   , 63*mus_ta_course_selection_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
	.byte		N03   , Dn3 , v108
	.byte	W18
	.byte		N03   
	.byte	W18
	.byte		N54   , Cn3 
	.byte	W12
/* 001   ----------------------------------------
 */mus_ta_course_selection_4_001:
	.byte	W48
	.byte		N04   , As2 , v108
	.byte	W18
	.byte		N02   
	.byte	W18
	.byte		N48   , Cn3 
	.byte	W12
	.byte	PEND
/* 002   ----------------------------------------
 */mus_ta_course_selection_4_002:
	.byte	W48
	.byte		N03   , Dn3 , v108
	.byte	W18
	.byte		N04   
	.byte	W18
	.byte		N52   , Cn3 
	.byte	W12
	.byte	PEND
/* 003   ----------------------------------------
 */mus_ta_course_selection_4_003:
	.byte	W48
	.byte		N05   , As2 , v108
	.byte	W18
	.byte		N03   
	.byte	W18
	.byte		N44   , Cn3 
	.byte	W12
	.byte	PEND
/* 004   ----------------------------------------
 */	.byte	W48
mus_ta_course_selection_4_B1:
	.byte	W24
	.byte		N12   , Fs2 , v108
	.byte	W18
	.byte		N02   , Fs2 , v100
	.byte	W06
/* 005   ----------------------------------------
 */	.byte		N05   , Fs2 , v108
	.byte	W12
	.byte		N05   
	.byte	W24
	.byte		TIE   , Gs2 
	.byte	W60
/* 006   ----------------------------------------
 */	.byte	W40
	.byte	W01
	.byte		EOT   
	.byte	W30
	.byte	W01
	.byte		N02   , Fs2 
	.byte	W06
	.byte		        Fs2 , v100
	.byte	W06
	.byte		N03   , Fs2 , v104
	.byte	W06
	.byte		N02   , Fs2 , v108
	.byte	W06
/* 007   ----------------------------------------
 */	.byte		N03   
	.byte	W18
	.byte		N03   
	.byte	W18
	.byte		N84   , Gs2 
	.byte	W60
/* 008   ----------------------------------------
 */	.byte	W48
	.byte		N03   , Dn3 
	.byte	W18
	.byte		N03   
	.byte	W18
	.byte		N54   , Cn3 
	.byte	W12
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ta_course_selection_4_001
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ta_course_selection_4_002
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ta_course_selection_4_003
/* 012   ----------------------------------------
 */	.byte	W48
	.byte	GOTO
	 mPtr	mus_ta_course_selection_4_B1
mus_ta_course_selection_4_B2:
	.byte	W24
	.byte		N12   , Fs2 , v108
	.byte	W18
	.byte		N02   , Fs2 , v100
	.byte	W06
/* 013   ----------------------------------------
 */	.byte		N05   , Fs2 , v108
	.byte	W12
	.byte		N05   
	.byte	W24
	.byte		N12   , Gs2 
	.byte	W12
	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_ta_course_selection_5:
	.byte	KEYSH , mus_ta_course_selection_key+0
/* 000   ----------------------------------------
 */	.byte	W24
	.byte		VOICE , 74
	.byte		VOL   , 89*mus_ta_course_selection_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
	.byte		N04   , Fn3 , v127
	.byte	W18
	.byte		N04   
	.byte	W18
	.byte		N56   , Ds3 
	.byte	W12
/* 001   ----------------------------------------
 */mus_ta_course_selection_5_001:
	.byte	W48
	.byte		N05   , Ds3 , v127
	.byte	W18
	.byte		N05   
	.byte	W18
	.byte		N48   
	.byte	W12
	.byte	PEND
/* 002   ----------------------------------------
 */mus_ta_course_selection_5_002:
	.byte	W48
	.byte		N04   , Fn3 , v127
	.byte	W18
	.byte		N04   
	.byte	W18
	.byte		N56   , Ds3 
	.byte	W12
	.byte	PEND
/* 003   ----------------------------------------
 */mus_ta_course_selection_5_003:
	.byte	W48
	.byte		N06   , Ds3 , v120
	.byte	W18
	.byte		N04   , Ds3 , v124
	.byte	W18
	.byte		N48   , Ds3 , v127
	.byte	W12
	.byte	PEND
/* 004   ----------------------------------------
 */	.byte	W48
mus_ta_course_selection_5_B1:
	.byte	W24
	.byte		N12   , As2 , v127
	.byte	W18
	.byte		N02   
	.byte	W06
/* 005   ----------------------------------------
 */	.byte		N04   
	.byte	W12
	.byte		N06   
	.byte	W24
	.byte		TIE   , Cn3 
	.byte	W60
/* 006   ----------------------------------------
 */	.byte	W40
	.byte		EOT   
	.byte	W32
	.byte		N01   , As2 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
/* 007   ----------------------------------------
 */	.byte		N03   
	.byte	W18
	.byte		N03   
	.byte	W18
	.byte		N84   , Cn3 
	.byte	W60
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ta_course_selection_5_002
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ta_course_selection_5_001
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ta_course_selection_5_002
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ta_course_selection_5_003
/* 012   ----------------------------------------
 */	.byte	W48
	.byte	GOTO
	 mPtr	mus_ta_course_selection_5_B1
mus_ta_course_selection_5_B2:
	.byte	W24
	.byte		N12   , As2 , v127
	.byte	W18
	.byte		N02   
	.byte	W06
/* 013   ----------------------------------------
 */	.byte		N04   
	.byte	W12
	.byte		N06   
	.byte	W24
	.byte		N12   , Cn3 
	.byte	W12
	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_ta_course_selection_6:
	.byte	KEYSH , mus_ta_course_selection_key+0
/* 000   ----------------------------------------
 */	.byte	W24
	.byte		VOICE , 24
	.byte		VOL   , 119*mus_ta_course_selection_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
	.byte		N13   , As1 , v127
	.byte	W18
	.byte		N15   , Fn2 
	.byte	W18
	.byte		N23   , As2 
	.byte	W12
/* 001   ----------------------------------------
 */mus_ta_course_selection_6_001:
	.byte	W12
	.byte		N11   , Fn2 , v127
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		N05   , Fn2 
	.byte	W06
	.byte		N06   , As2 
	.byte	W06
	.byte		N17   , As1 
	.byte	W18
	.byte		N16   , Fn2 
	.byte	W18
	.byte		N24   , As2 
	.byte	W12
	.byte	PEND
/* 002   ----------------------------------------
 */mus_ta_course_selection_6_002:
	.byte	W12
	.byte		N10   , Fn2 , v127
	.byte	W12
	.byte		N12   , As2 
	.byte	W12
	.byte		N10   , Fn2 
	.byte	W12
	.byte		N18   , As1 
	.byte	W18
	.byte		        Fn2 
	.byte	W18
	.byte		N23   , As2 
	.byte	W12
	.byte	PEND
/* 003   ----------------------------------------
 */mus_ta_course_selection_6_003:
	.byte	W12
	.byte		N11   , Fn2 , v127
	.byte	W12
	.byte		N10   , As2 
	.byte	W12
	.byte		N04   , Fn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N19   , As1 
	.byte	W18
	.byte		N14   , Fn2 
	.byte	W18
	.byte		N23   , As2 
	.byte	W12
	.byte	PEND
/* 004   ----------------------------------------
 */mus_ta_course_selection_6_004:
	.byte	W12
	.byte		N11   , Fn2 , v127
	.byte	W12
	.byte		N14   , As2 
	.byte	W12
	.byte		N10   , Fn2 
	.byte	W12
	.byte	PEND
mus_ta_course_selection_6_B1:
	.byte		N15   , Fs2 , v127
	.byte	W18
	.byte		N04   
	.byte	W06
	.byte		N13   , Fn2 
	.byte	W12
	.byte		N10   , Fs2 
	.byte	W12
/* 005   ----------------------------------------
 */	.byte	W12
	.byte		        Cs2 
	.byte	W24
	.byte		N19   , Gs2 
	.byte	W24
	.byte		N09   
	.byte	W12
	.byte		N17   , Cs3 
	.byte	W18
	.byte		N06   , Cn3 
	.byte	W06
/* 006   ----------------------------------------
 */	.byte		N07   , As2 
	.byte	W12
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N04   , Gs2 
	.byte	W12
	.byte		N15   , Fs2 
	.byte	W18
	.byte		N04   
	.byte	W06
	.byte		N13   , Fn2 
	.byte	W12
	.byte		N10   , Fs2 
	.byte	W12
/* 007   ----------------------------------------
 */	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		N04   , Fs2 
	.byte	W12
	.byte		N17   , Gs2 
	.byte	W24
	.byte		N16   
	.byte	W24
	.byte		N15   , As2 
	.byte	W12
/* 008   ----------------------------------------
 */	.byte	W12
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N13   , As1 
	.byte	W18
	.byte		N15   , Fn2 
	.byte	W18
	.byte		N23   , As2 
	.byte	W12
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ta_course_selection_6_001
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ta_course_selection_6_002
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ta_course_selection_6_003
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ta_course_selection_6_004
	.byte	GOTO
	 mPtr	mus_ta_course_selection_6_B1
mus_ta_course_selection_6_B2:
	.byte		N15   , Fs2 , v127
	.byte	W18
	.byte		N04   
	.byte	W06
	.byte		N13   , Fn2 
	.byte	W12
	.byte		N10   , Fs2 
	.byte	W12
/* 013   ----------------------------------------
 */	.byte	W12
	.byte		        Cs2 
	.byte	W24
	.byte		N12   , Gs2 
	.byte	W12
	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_ta_course_selection_7:
	.byte	KEYSH , mus_ta_course_selection_key+0
/* 000   ----------------------------------------
 */	.byte	W24
	.byte		VOICE , 23
	.byte		VOL   , 51*mus_ta_course_selection_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
	.byte		N04   , As3 , v104
	.byte	W18
	.byte		N04   
	.byte	W18
	.byte		N56   , Gs3 
	.byte	W12
/* 001   ----------------------------------------
 */mus_ta_course_selection_7_001:
	.byte	W48
	.byte		N05   , Gn3 , v104
	.byte	W18
	.byte		N04   
	.byte	W18
	.byte		N54   , Gs3 
	.byte	W12
	.byte	PEND
/* 002   ----------------------------------------
 */mus_ta_course_selection_7_002:
	.byte	W48
	.byte		N05   , As3 , v104
	.byte	W18
	.byte		N04   
	.byte	W18
	.byte		N54   , Gs3 
	.byte	W12
	.byte	PEND
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ta_course_selection_7_001
/* 004   ----------------------------------------
 */	.byte	W48
mus_ta_course_selection_7_B1:
	.byte	W24
	.byte		N12   , Cs3 , v127
	.byte	W18
	.byte		N02   
	.byte	W06
/* 005   ----------------------------------------
 */	.byte		N05   
	.byte	W12
	.byte		N07   
	.byte	W24
	.byte		N96   , Ds3 
	.byte	W60
/* 006   ----------------------------------------
 */	.byte	W72
	.byte		N02   , Cs3 
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N03   
	.byte	W06
/* 007   ----------------------------------------
 */	.byte		N04   
	.byte	W18
	.byte		N03   
	.byte	W18
	.byte		N96   , Ds3 
	.byte	W60
/* 008   ----------------------------------------
 */	.byte	W48
	.byte		N04   , As3 , v104
	.byte	W18
	.byte		N04   
	.byte	W18
	.byte		N56   , Gs3 
	.byte	W12
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ta_course_selection_7_001
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ta_course_selection_7_002
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ta_course_selection_7_001
/* 012   ----------------------------------------
 */	.byte	W48
	.byte	GOTO
	 mPtr	mus_ta_course_selection_7_B1
mus_ta_course_selection_7_B2:
	.byte	W24
	.byte		N12   , Cs3 , v127
	.byte	W18
	.byte		N02   
	.byte	W06
/* 013   ----------------------------------------
 */	.byte		N05   
	.byte	W12
	.byte		N07   
	.byte	W24
	.byte		N12   , Ds3 
	.byte	W12
	.byte	FINE

/* **************** Track 8 (Midi-Chn.8) **************** */

mus_ta_course_selection_8:
	.byte	KEYSH , mus_ta_course_selection_key+0
/* 000   ----------------------------------------
 */	.byte	W24
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_ta_course_selection_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
	.byte		N17   , Cn1 , v127
	.byte		N92   , Gn2 
	.byte	W01
	.byte		N05   , Dn1 , v048
	.byte	W17
	.byte		N17   , Cs1 , v127
	.byte	W01
	.byte		N03   , Dn1 , v048
	.byte	W17
	.byte		N23   , Cn1 , v127
	.byte		N56   , Ds1 , v048
	.byte	W12
/* 001   ----------------------------------------
 */mus_ta_course_selection_8_001:
	.byte	W12
	.byte		N11   , Cn1 , v127
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N05   , Cn1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N17   , Cn1 
	.byte		TIE   , Gn2 
	.byte	W01
	.byte		N05   , Dn1 , v048
	.byte	W17
	.byte		N17   , Cs1 , v127
	.byte	W02
	.byte		N03   , Dn1 , v048
	.byte	W16
	.byte		N17   , Cn1 , v127
	.byte		N44   , Ds1 , v048
	.byte	W12
	.byte	PEND
/* 002   ----------------------------------------
 */mus_ta_course_selection_8_002:
	.byte	W06
	.byte		N40   , Cs1 , v127
	.byte	W18
	.byte		N04   , An1 
	.byte	W06
	.byte		N02   , Gs1 
	.byte	W06
	.byte		N05   , Gn1 
	.byte	W06
	.byte		N07   
	.byte	W06
	.byte		N17   , Cn1 
	.byte	W01
	.byte		N04   , Dn1 , v048
	.byte	W17
	.byte		N17   , Cs1 , v127
	.byte	W01
	.byte		N04   , Dn1 , v048
	.byte	W17
	.byte		N23   , Cn1 , v127
	.byte	W01
	.byte		N56   , Ds1 , v048
	.byte	W08
	.byte	PEND
	.byte		EOT   , Gn2 
	.byte	W03
/* 003   ----------------------------------------
 */mus_ta_course_selection_8_003:
	.byte	W12
	.byte		N32   , Cs1 , v127
	.byte	W12
	.byte		TIE   , Gn2 
	.byte	W24
	.byte		N17   , Cn1 
	.byte	W01
	.byte		N04   , Dn1 , v048
	.byte	W17
	.byte		N17   , Cs1 , v127
	.byte	W02
	.byte		N04   , Dn1 , v048
	.byte	W15
	.byte		N42   , Ds1 
	.byte	W01
	.byte		N23   , Cn1 , v127
	.byte	W12
	.byte	PEND
/* 004   ----------------------------------------
 */mus_ta_course_selection_8_004:
	.byte	W12
	.byte		N05   , Cs1 , v127
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N23   
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W07
	.byte		N04   
	.byte	W04
	.byte	PEND
	.byte		EOT   , Gn2 
	.byte	W01
mus_ta_course_selection_8_B1:
	.byte		N23   , Cn1 , v127
	.byte		N01   , Dn1 , v048
	.byte		TIE   , Gn2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W12
	.byte		N17   , Cs1 , v127
	.byte		N03   , Dn1 , v048
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N05   , Cs1 , v127
	.byte	W06
/* 005   ----------------------------------------
 */	.byte		N11   , Cn1 
	.byte		N02   , Dn1 , v048
	.byte	W12
	.byte		N11   , Cn1 , v127
	.byte		N02   , Dn1 , v048
	.byte	W12
	.byte		N11   , Cs1 , v127
	.byte		N12   , Ds1 , v048
	.byte	W12
	.byte		N23   , Cn1 , v127
	.byte		N04   , Dn1 , v048
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		N11   , Cn1 , v127
	.byte		N03   , Dn1 , v048
	.byte	W12
	.byte		N17   , Cs1 , v127
	.byte		N03   , Dn1 , v048
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N05   , Cs1 , v127
	.byte	W03
	.byte		EOT   , Gn2 
	.byte	W03
/* 006   ----------------------------------------
 */	.byte		N05   , Cn1 
	.byte		N02   , Dn1 , v048
	.byte	W06
	.byte		N05   , Cs1 , v127
	.byte	W06
	.byte		N11   , Cn1 
	.byte		N02   , Dn1 , v048
	.byte	W12
	.byte		N23   , Cs1 , v127
	.byte		N12   , Ds1 , v048
	.byte	W12
	.byte		N04   , Dn1 
	.byte	W12
	.byte		N23   , Cn1 , v127
	.byte		N03   , Dn1 , v048
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		N17   , Cs1 , v127
	.byte		N03   , Dn1 , v048
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N05   , Cs1 , v127
	.byte	W06
/* 007   ----------------------------------------
 */	.byte		N11   , Cn1 
	.byte		N02   , Dn1 , v048
	.byte	W12
	.byte		N11   , Cn1 , v127
	.byte		N02   , Dn1 , v048
	.byte	W12
	.byte		N11   , Cs1 , v127
	.byte		N12   , Ds1 , v048
	.byte	W12
	.byte		N23   , Cn1 , v127
	.byte		N04   , Dn1 , v048
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		N11   , Cn1 , v127
	.byte		N03   , Dn1 , v048
	.byte	W12
	.byte		N17   , Cs1 , v127
	.byte		N03   , Dn1 , v048
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N05   , Cs1 , v127
	.byte	W06
/* 008   ----------------------------------------
 */	.byte		        Cn1 
	.byte		N02   , Dn1 , v048
	.byte	W06
	.byte		N11   , Cs1 , v127
	.byte	W06
	.byte		N02   , Dn1 , v048
	.byte	W06
	.byte		N05   , Cn1 , v127
	.byte	W06
	.byte		N15   , Cs1 
	.byte		N12   , Ds1 , v048
	.byte	W12
	.byte		N04   , Dn1 
	.byte	W12
	.byte		N17   , Cn1 , v127
	.byte		N92   , Gn2 
	.byte	W01
	.byte		N05   , Dn1 , v048
	.byte	W17
	.byte		N17   , Cs1 , v127
	.byte	W01
	.byte		N03   , Dn1 , v048
	.byte	W17
	.byte		N23   , Cn1 , v127
	.byte		N56   , Ds1 , v048
	.byte	W12
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ta_course_selection_8_001
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ta_course_selection_8_002
	.byte		EOT   , Gn2 
	.byte	W03
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ta_course_selection_8_003
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ta_course_selection_8_004
	.byte		EOT   , Gn2 
	.byte	W01
	.byte	GOTO
	 mPtr	mus_ta_course_selection_8_B1
mus_ta_course_selection_8_B2:
	.byte		N23   , Cn1 , v127
	.byte		N01   , Dn1 , v048
	.byte		N96   , Gn2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W12
	.byte		N17   , Cs1 , v127
	.byte		N03   , Dn1 , v048
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N05   , Cs1 , v127
	.byte	W06
/* 013   ----------------------------------------
 */	.byte		N11   , Cn1 
	.byte		N02   , Dn1 , v048
	.byte	W12
	.byte		N11   , Cn1 , v127
	.byte		N02   , Dn1 , v048
	.byte	W12
	.byte		N11   , Cs1 , v127
	.byte		N12   , Ds1 , v048
	.byte	W12
	.byte		        Cn1 , v127
	.byte		N04   , Dn1 , v048
	.byte	W12
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_ta_course_selection):
	.byte	8	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_ta_course_selection_pri	/* Priority */
	.byte	mus_ta_course_selection_rev	/* Reverb */

mAlignWord
	mPtr	mus_ta_course_selection_grp

	mPtr	mus_ta_course_selection_1
	mPtr	mus_ta_course_selection_2
	mPtr	mus_ta_course_selection_3
	mPtr	mus_ta_course_selection_4
	mPtr	mus_ta_course_selection_5
	mPtr	mus_ta_course_selection_6
	mPtr	mus_ta_course_selection_7
	mPtr	mus_ta_course_selection_8

	.end
