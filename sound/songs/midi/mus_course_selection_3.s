	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_course_selection_3_grp, voicegroup013
	.equ	mus_course_selection_3_pri, 0
	.equ	mus_course_selection_3_rev, reverb_set+0
	.equ	mus_course_selection_3_mvl, 108
	.equ	mus_course_selection_3_key, 0
	.equ	mus_course_selection_3_tbs, 1
	.equ	mus_course_selection_3_exg, 1
	.equ	mus_course_selection_3_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_course_selection_3)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_course_selection_3_1:
	.byte	KEYSH , mus_course_selection_3_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*mus_course_selection_3_tbs/2
	.byte	W24
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_course_selection_3_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
mus_course_selection_3_1_B1:
	.byte		N17   , Cn1 , v127
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
 */	.byte	W12
	.byte		N11   , Cn1 , v127
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N05   , Cn1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N17   , Cn1 
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
/* 002   ----------------------------------------
 */	.byte	W06
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
	.byte	W11
/* 003   ----------------------------------------
 */	.byte	W12
	.byte		N32   , Cs1 , v127
	.byte	W36
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
/* 004   ----------------------------------------
 */	.byte	W12
	.byte		N05   , Cs1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N23   
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W07
	.byte		N04   
	.byte	W05
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
 */mus_course_selection_3_1_005:
	.byte		N11   , Cn1 , v127
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
	.byte	PEND
	.byte		EOT   , Gn2 
	.byte	W03
/* 006   ----------------------------------------
 */mus_course_selection_3_1_006:
	.byte		N05   , Cn1 , v127
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
	.byte	PEND
/* 007   ----------------------------------------
 */mus_course_selection_3_1_007:
	.byte		N11   , Cn1 , v127
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
	.byte	PEND
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
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_3_1_005
	.byte		EOT   , Gn2 
	.byte	W03
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_3_1_006
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_3_1_007
/* 012   ----------------------------------------
 */	.byte		N05   , Cn1 , v127
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
	.byte	GOTO
	 mPtr	mus_course_selection_3_1_B1
mus_course_selection_3_1_B2:
	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_course_selection_3_2:
	.byte	KEYSH , mus_course_selection_3_key+0
/* 000   ----------------------------------------
 */	.byte	W24
	.byte		VOICE , 57
	.byte		VOL   , 112*mus_course_selection_3_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
mus_course_selection_3_2_B1:
	.byte	W48
/* 001   ----------------------------------------
 */mus_course_selection_3_2_001:
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
	 mPtr	mus_course_selection_3_2_001
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
	 mPtr	mus_course_selection_3_2_B1
mus_course_selection_3_2_B2:
	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_course_selection_3_3:
	.byte	KEYSH , mus_course_selection_3_key+0
/* 000   ----------------------------------------
 */	.byte	W24
	.byte		VOICE , 52
	.byte		VOL   , 119*mus_course_selection_3_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
mus_course_selection_3_3_B1:
	.byte		N13   , As1 , v127
	.byte	W18
	.byte		N15   , Fn2 
	.byte	W18
	.byte		N23   , As2 
	.byte	W12
/* 001   ----------------------------------------
 */	.byte	W12
	.byte		N11   , Fn2 
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
/* 002   ----------------------------------------
 */	.byte	W12
	.byte		N10   , Fn2 
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
/* 003   ----------------------------------------
 */	.byte	W12
	.byte		N11   , Fn2 
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
/* 004   ----------------------------------------
 */	.byte	W12
	.byte		N11   , Fn2 
	.byte	W12
	.byte		N14   , As2 
	.byte	W12
	.byte		N10   , Fn2 
	.byte	W12
	.byte		N15   , Fs2 
	.byte	W18
	.byte		N04   
	.byte	W06
	.byte		N13   , Fn2 
	.byte	W12
	.byte		N10   , Fs2 
	.byte	W12
/* 005   ----------------------------------------
 */mus_course_selection_3_3_005:
	.byte	W12
	.byte		N10   , Cs2 , v127
	.byte	W24
	.byte		N19   , Gs2 
	.byte	W24
	.byte		N09   
	.byte	W12
	.byte		N17   , Cs3 
	.byte	W18
	.byte		N06   , Cn3 
	.byte	W06
	.byte	PEND
/* 006   ----------------------------------------
 */mus_course_selection_3_3_006:
	.byte		N07   , As2 , v127
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
	.byte	PEND
/* 007   ----------------------------------------
 */mus_course_selection_3_3_007:
	.byte	W12
	.byte		N10   , Cs2 , v127
	.byte	W12
	.byte		N04   , Fs2 
	.byte	W12
	.byte		N17   , Gs2 
	.byte	W24
	.byte		N16   
	.byte	W24
	.byte		N15   , As2 
	.byte	W12
	.byte	PEND
/* 008   ----------------------------------------
 */	.byte	W12
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N15   , Fs2 
	.byte	W18
	.byte		N04   
	.byte	W06
	.byte		N13   , Fn2 
	.byte	W12
	.byte		N10   , Fs2 
	.byte	W12
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_3_3_005
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_3_3_006
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_3_3_007
/* 012   ----------------------------------------
 */	.byte	W12
	.byte		N11   , Cn3 , v127
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte	GOTO
	 mPtr	mus_course_selection_3_3_B1
mus_course_selection_3_3_B2:
	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_course_selection_3_4:
	.byte	KEYSH , mus_course_selection_3_key+0
/* 000   ----------------------------------------
 */	.byte	W24
	.byte		VOICE , 36
	.byte		VOL   , 119*mus_course_selection_3_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
mus_course_selection_3_4_B1:
	.byte	W48
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W72
	.byte	W01
	.byte		N23   , As3 , v127
	.byte	W23
/* 005   ----------------------------------------
 */mus_course_selection_3_4_005:
	.byte	W01
	.byte		N23   , Fs3 , v127
	.byte	W24
	.byte		N22   , Fn3 
	.byte	W23
	.byte		N23   , Ds3 
	.byte	W23
	.byte		N24   , Cs3 
	.byte	W24
	.byte	W01
	.byte	PEND
/* 006   ----------------------------------------
 */mus_course_selection_3_4_006:
	.byte		N22   , Cn3 , v127
	.byte	W23
	.byte		N23   , Cs3 
	.byte	W24
	.byte		N56   , Fs3 
	.byte	W48
	.byte	W01
	.byte	PEND
/* 007   ----------------------------------------
 */mus_course_selection_3_4_007:
	.byte	W10
	.byte		N11   , Fs3 , v127
	.byte	W11
	.byte		N12   , Fn3 
	.byte	W13
	.byte		N48   , Ds3 
	.byte	W48
	.byte	W02
	.byte		N21   , Cs3 
	.byte	W12
	.byte	PEND
/* 008   ----------------------------------------
 */	.byte	W10
	.byte		N32   , Cn3 
	.byte	W60
	.byte	W03
	.byte		N23   , As3 
	.byte	W23
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_3_4_005
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_3_4_006
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_3_4_007
/* 012   ----------------------------------------
 */	.byte	W10
	.byte		N32   , Cn3 , v127
	.byte	W36
	.byte	W02
	.byte	GOTO
	 mPtr	mus_course_selection_3_4_B1
mus_course_selection_3_4_B2:
	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_course_selection_3_5:
	.byte	KEYSH , mus_course_selection_3_key+0
/* 000   ----------------------------------------
 */	.byte	W24
	.byte		VOICE , 54
	.byte		VOL   , 64*mus_course_selection_3_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
mus_course_selection_3_5_B1:
	.byte		N17   , As3 , v127
	.byte	W18
	.byte		        Fn4 
	.byte	W18
	.byte		N56   , As4 
	.byte	W12
/* 001   ----------------------------------------
 */mus_course_selection_3_5_001:
	.byte	W48
	.byte		N17   , As3 , v127
	.byte	W18
	.byte		        Fn4 
	.byte	W18
	.byte		N56   , As4 
	.byte	W12
	.byte	PEND
/* 002   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_3_5_001
/* 003   ----------------------------------------
 */	.byte	W48
	.byte		N17   , As3 , v127
	.byte	W18
	.byte		        Fn4 
	.byte	W18
	.byte		N28   , As4 
	.byte	W12
/* 004   ----------------------------------------
 */	.byte	W24
	.byte		N11   , Cs5 
	.byte	W48
	.byte		N13   , Fs3 , v108
	.byte	W16
	.byte		N02   , Fs3 , v080
	.byte	W07
	.byte		N06   , Fs3 , v116
	.byte	W01
/* 005   ----------------------------------------
 */mus_course_selection_3_5_005:
	.byte	W18
	.byte		N05   , Fs3 , v120
	.byte	W18
	.byte		N07   , Gs3 , v116
	.byte	W60
	.byte	PEND
/* 006   ----------------------------------------
 */mus_course_selection_3_5_006:
	.byte	W72
	.byte		N03   , Fs3 , v108
	.byte	W06
	.byte		N02   , Fs3 , v100
	.byte	W05
	.byte		        Fs3 , v096
	.byte	W05
	.byte		        Fs3 , v080
	.byte	W07
	.byte		N06   , Fs3 , v116
	.byte	W01
	.byte	PEND
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_3_5_005
/* 008   ----------------------------------------
 */	.byte	W72
	.byte		N13   , Fs3 , v108
	.byte	W16
	.byte		N02   , Fs3 , v080
	.byte	W07
	.byte		N06   , Fs3 , v116
	.byte	W01
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_3_5_005
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_3_5_006
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_3_5_005
/* 012   ----------------------------------------
 */	.byte	W48
	.byte	GOTO
	 mPtr	mus_course_selection_3_5_B1
mus_course_selection_3_5_B2:
	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_course_selection_3_6:
	.byte	KEYSH , mus_course_selection_3_key+0
/* 000   ----------------------------------------
 */	.byte	W24
	.byte		VOICE , 53
	.byte		VOL   , 64*mus_course_selection_3_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
mus_course_selection_3_6_B1:
	.byte		N13   , As2 , v127
	.byte	W18
	.byte		N15   , Fn3 
	.byte	W18
	.byte		N44   , As3 
	.byte	W12
/* 001   ----------------------------------------
 */	.byte	W48
	.byte		N17   , As2 
	.byte	W18
	.byte		N16   , Fn3 
	.byte	W18
	.byte		N48   , As3 
	.byte	W12
/* 002   ----------------------------------------
 */	.byte	W48
	.byte		N18   , As2 
	.byte	W18
	.byte		        Fn3 
	.byte	W18
	.byte		N44   , As3 
	.byte	W12
/* 003   ----------------------------------------
 */	.byte	W48
	.byte		N19   , As2 
	.byte	W18
	.byte		N14   , Fn3 
	.byte	W18
	.byte		N28   , As3 
	.byte	W12
/* 004   ----------------------------------------
 */	.byte	W24
	.byte		N11   , Cs4 
	.byte	W48
	.byte		N12   , Cs3 , v104
	.byte	W16
	.byte		N02   , Cs3 , v080
	.byte	W08
/* 005   ----------------------------------------
 */mus_course_selection_3_6_005:
	.byte		N05   , Cs3 , v108
	.byte	W18
	.byte		        Cs3 , v104
	.byte	W18
	.byte		N07   , Ds3 , v116
	.byte	W60
	.byte	PEND
/* 006   ----------------------------------------
 */mus_course_selection_3_6_006:
	.byte	W72
	.byte		N02   , Cs3 , v104
	.byte	W06
	.byte		N01   , Cs3 , v060
	.byte	W05
	.byte		N02   , Cs3 , v096
	.byte	W05
	.byte		        Cs3 , v080
	.byte	W08
	.byte	PEND
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_3_6_005
/* 008   ----------------------------------------
 */	.byte	W72
	.byte		N12   , Cs3 , v104
	.byte	W16
	.byte		N02   , Cs3 , v080
	.byte	W08
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_3_6_005
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_3_6_006
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_3_6_005
/* 012   ----------------------------------------
 */	.byte	W48
	.byte	GOTO
	 mPtr	mus_course_selection_3_6_B1
mus_course_selection_3_6_B2:
	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_course_selection_3_7:
	.byte	KEYSH , mus_course_selection_3_key+0
/* 000   ----------------------------------------
 */	.byte	W24
	.byte		VOICE , 51
	.byte		VOL   , 96*mus_course_selection_3_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
mus_course_selection_3_7_B1:
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
	.byte		N28   , Ds2 
	.byte		N28   , Gs2 
	.byte	W12
/* 004   ----------------------------------------
 */	.byte	W24
	.byte		N18   
	.byte		N18   , Cs3 
	.byte	W48
	.byte		N12   , Cs3 , v104
	.byte		N13   , Fs3 , v108
	.byte	W16
	.byte		N02   , Cs3 , v080
	.byte		N02   , Fs3 
	.byte	W07
	.byte		N06   , Fs3 , v116
	.byte	W01
/* 005   ----------------------------------------
 */mus_course_selection_3_7_005:
	.byte		N05   , Cs3 , v108
	.byte	W18
	.byte		        Cs3 , v104
	.byte		N05   , Fs3 , v120
	.byte	W18
	.byte		N07   , Ds3 , v116
	.byte		N07   , Gs3 
	.byte	W60
	.byte	PEND
/* 006   ----------------------------------------
 */mus_course_selection_3_7_006:
	.byte	W72
	.byte		N02   , Cs3 , v104
	.byte		N03   , Fs3 , v108
	.byte	W06
	.byte		N01   , Cs3 , v060
	.byte		N02   , Fs3 , v100
	.byte	W05
	.byte		        Cs3 , v096
	.byte		N02   , Fs3 
	.byte	W05
	.byte		        Cs3 , v080
	.byte		N02   , Fs3 
	.byte	W07
	.byte		N06   , Fs3 , v116
	.byte	W01
	.byte	PEND
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_3_7_005
/* 008   ----------------------------------------
 */	.byte	W72
	.byte		N12   , Cs3 , v104
	.byte		N13   , Fs3 , v108
	.byte	W16
	.byte		N02   , Cs3 , v080
	.byte		N02   , Fs3 
	.byte	W07
	.byte		N06   , Fs3 , v116
	.byte	W01
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_3_7_005
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_3_7_006
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_3_7_005
/* 012   ----------------------------------------
 */	.byte	W48
	.byte	GOTO
	 mPtr	mus_course_selection_3_7_B1
mus_course_selection_3_7_B2:
	.byte	FINE

/* **************** Track 8 (Midi-Chn.8) **************** */

mus_course_selection_3_8:
	.byte	KEYSH , mus_course_selection_3_key+0
/* 000   ----------------------------------------
 */	.byte	W20
	.byte		VOICE , 55
	.byte		VOL   , 119*mus_course_selection_3_mvl/mxv
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
mus_course_selection_3_8_B1:
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
 */	.byte	W24
	.byte		N05   , Gs3 
	.byte	W05
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
	.byte	W52
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
	.byte		N02   , Fn3 
	.byte	W02
	.byte	GOTO
	 mPtr	mus_course_selection_3_8_B1
mus_course_selection_3_8_B2:
	.byte	FINE

/* **************** Track 9 (Midi-Chn.9) **************** */

mus_course_selection_3_9:
	.byte	KEYSH , mus_course_selection_3_key+0
/* 000   ----------------------------------------
 */	.byte		BEND  , c_v+0
	.byte	W24
	.byte		VOICE , 58
	.byte		VOL   , 64*mus_course_selection_3_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
mus_course_selection_3_9_B1:
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
 */mus_course_selection_3_9_005:
	.byte	W60
	.byte		N06   , Ds2 , v127
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
	.byte	PEND
/* 006   ----------------------------------------
 */mus_course_selection_3_9_006:
	.byte		N06   , Ds4 , v127
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W30
	.byte	PEND
/* 007   ----------------------------------------
 */mus_course_selection_3_9_007:
	.byte	W66
	.byte		N06   , Gs2 , v127
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte	PEND
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_3_9_006
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_3_9_005
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_3_9_006
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_3_9_007
/* 012   ----------------------------------------
 */	.byte		N06   , Ds4 , v127
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte	GOTO
	 mPtr	mus_course_selection_3_9_B1
mus_course_selection_3_9_B2:
	.byte	FINE

/* **************** Track 10 (Midi-Chn.10) **************** */

mus_course_selection_3_10:
	.byte	KEYSH , mus_course_selection_3_key+0
/* 000   ----------------------------------------
 */	.byte		BEND  , c_v-1
	.byte	W24
	.byte		VOICE , 59
	.byte		VOL   , 64*mus_course_selection_3_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
mus_course_selection_3_10_B1:
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
 */mus_course_selection_3_10_005:
	.byte	W72
	.byte		N06   , Ds2 , v076
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte	PEND
/* 006   ----------------------------------------
 */mus_course_selection_3_10_006:
	.byte		N06   , Gs3 , v076
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W18
	.byte	PEND
/* 007   ----------------------------------------
 */mus_course_selection_3_10_007:
	.byte	W78
	.byte		N06   , Gs2 , v076
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte	PEND
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_3_10_006
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_3_10_005
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_3_10_006
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_course_selection_3_10_007
/* 012   ----------------------------------------
 */	.byte		N06   , Gs3 , v076
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte	GOTO
	 mPtr	mus_course_selection_3_10_B1
mus_course_selection_3_10_B2:
	.byte		N06   , Gs3 , v076
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_course_selection_3):
	.byte	10	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_course_selection_3_pri	/* Priority */
	.byte	mus_course_selection_3_rev	/* Reverb */

mAlignWord
	mPtr	mus_course_selection_3_grp

	mPtr	mus_course_selection_3_1
	mPtr	mus_course_selection_3_2
	mPtr	mus_course_selection_3_3
	mPtr	mus_course_selection_3_4
	mPtr	mus_course_selection_3_5
	mPtr	mus_course_selection_3_6
	mPtr	mus_course_selection_3_7
	mPtr	mus_course_selection_3_8
	mPtr	mus_course_selection_3_9
	mPtr	mus_course_selection_3_10

	.end
