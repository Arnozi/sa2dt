	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_special_stage_result_grp, voicegroup009
	.equ	mus_special_stage_result_pri, 0
	.equ	mus_special_stage_result_rev, reverb_set+0
	.equ	mus_special_stage_result_mvl, 100
	.equ	mus_special_stage_result_key, 0
	.equ	mus_special_stage_result_tbs, 1
	.equ	mus_special_stage_result_exg, 1
	.equ	mus_special_stage_result_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_special_stage_result)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_special_stage_result_1:
	.byte	KEYSH , mus_special_stage_result_key+0
mus_special_stage_result_1_B1:
/* 000   ----------------------------------------
 */	.byte	TEMPO , 114*mus_special_stage_result_tbs/2
	.byte		VOICE , 54
	.byte		VOL   , 127*mus_special_stage_result_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N08   , Cn2 , v127
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        As1 
	.byte	W08
	.byte		        Cn2 
	.byte	W12
	.byte		N08   
	.byte	W04
	.byte		        Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        As1 
	.byte	W12
/* 001   ----------------------------------------
 */mus_special_stage_result_1_001:
	.byte		N08   , Cn2 , v127
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        As1 
	.byte	W08
	.byte		        Cn2 
	.byte	W12
	.byte		N08   
	.byte	W04
	.byte		        Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte	PEND
/* 002   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_result_1_001
/* 003   ----------------------------------------
 */	.byte		N11   , Cn2 , v127
	.byte	W12
	.byte		N06   , Fn2 
	.byte	W12
	.byte		N08   , En2 
	.byte	W12
	.byte		N04   , As2 
	.byte	W08
	.byte		N05   , An2 
	.byte	W12
	.byte		N04   , Fn2 
	.byte	W04
	.byte		        Ds2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        An1 
	.byte	W12
/* 004   ----------------------------------------
 */	.byte		N11   , Cn2 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N08   , An1 
	.byte	W12
	.byte		N04   , Fn1 
	.byte	W08
	.byte		N05   , Cn2 
	.byte	W12
	.byte		N04   
	.byte	W04
	.byte		        Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
/* 005   ----------------------------------------
 */	.byte		N11   , Cn2 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N08   , An1 
	.byte	W12
	.byte		N04   , Fn1 
	.byte	W08
	.byte		N05   , Cn2 
	.byte	W12
	.byte		N04   
	.byte	W04
	.byte		        Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Fn1 
	.byte	W08
	.byte		N11   , Cn2 
	.byte	W04
/* 006   ----------------------------------------
 */	.byte	W12
	.byte		N06   , Gs1 
	.byte	W12
	.byte		N08   , As1 
	.byte	W12
	.byte		N04   , Cn2 
	.byte	W08
	.byte		N05   , Ds2 
	.byte	W12
	.byte		N04   
	.byte	W04
	.byte		        Gs1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Cn2 
	.byte	W08
	.byte		N11   , Dn2 
	.byte	W04
/* 007   ----------------------------------------
 */	.byte	W12
	.byte		N06   , As1 
	.byte	W12
	.byte		N08   , Cn2 
	.byte	W12
	.byte		N04   , Dn2 
	.byte	W08
	.byte		N05   , Fn2 
	.byte	W12
	.byte		N04   
	.byte	W04
	.byte		        As1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        As1 
	.byte	W08
	.byte		N11   , Ds2 
	.byte	W04
/* 008   ----------------------------------------
 */	.byte	W12
	.byte		N06   , Cn2 
	.byte	W12
	.byte		N08   , Dn2 
	.byte	W12
	.byte		N04   , Ds2 
	.byte	W08
	.byte		N05   , Gs2 
	.byte	W12
	.byte		N04   
	.byte	W04
	.byte		        Cn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Gs2 
	.byte	W08
	.byte		N11   , Gn1 
	.byte	W04
/* 009   ----------------------------------------
 */	.byte	W12
	.byte		N06   , As1 
	.byte	W12
	.byte		N08   , Dn2 
	.byte	W12
	.byte		N04   , Fn2 
	.byte	W08
	.byte		N05   , Gn2 
	.byte	W12
	.byte		N04   
	.byte	W08
	.byte		N04   
	.byte	W08
	.byte		N04   
	.byte	W24
	.byte	GOTO
	 mPtr	mus_special_stage_result_1_B1
mus_special_stage_result_1_B2:
/* 010   ----------------------------------------
 */	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_special_stage_result_2:
	.byte	KEYSH , mus_special_stage_result_key+0
mus_special_stage_result_2_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 64
	.byte		VOL   , 103*mus_special_stage_result_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte		N04   , Cn3 , v116
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Fn5 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
/* 004   ----------------------------------------
 */	.byte		        As4 , v120
	.byte	W04
	.byte		        Fn4 , v116
	.byte	W04
	.byte		        Dn4 , v112
	.byte	W04
	.byte		        As3 , v108
	.byte	W04
	.byte		        Fn3 , v104
	.byte	W04
	.byte		        Dn3 , v100
	.byte	W04
	.byte		        As4 , v092
	.byte	W04
	.byte		        Fn4 , v088
	.byte	W04
	.byte		        Dn4 , v084
	.byte	W04
	.byte		        As3 , v080
	.byte	W04
	.byte		        Fn3 , v076
	.byte	W04
	.byte		        Dn3 , v072
	.byte	W04
	.byte		        As4 , v068
	.byte	W04
	.byte		        Fn4 , v064
	.byte	W04
	.byte		        Dn4 , v060
	.byte	W04
	.byte		        As3 , v056
	.byte	W04
	.byte		        Fn3 , v052
	.byte	W04
	.byte		        Dn3 , v048
	.byte	W04
	.byte		        As4 , v044
	.byte	W04
	.byte		        Fn4 , v040
	.byte	W04
	.byte		        Dn4 , v036
	.byte	W04
	.byte		        As3 , v032
	.byte	W04
	.byte		        Fn3 , v028
	.byte	W04
	.byte		        Dn3 , v024
	.byte	W04
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte	W48
	.byte		        Gs1 , v116
	.byte	W04
	.byte		        As1 
	.byte	W04
	.byte		        Cn2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        Cn3 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
/* 007   ----------------------------------------
 */	.byte	W48
	.byte		        As1 
	.byte	W04
	.byte		        Cn2 
	.byte	W04
	.byte		        Dn2 
	.byte	W04
	.byte		        Fn2 
	.byte	W04
	.byte		        As2 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
/* 008   ----------------------------------------
 */	.byte	W48
	.byte		        Cn2 
	.byte	W04
	.byte		        Dn2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        Cn3 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
/* 009   ----------------------------------------
 */	.byte	W56
	.byte		        Gn4 
	.byte	W08
	.byte		N04   
	.byte	W08
	.byte		N04   
	.byte	W24
	.byte	GOTO
	 mPtr	mus_special_stage_result_2_B1
mus_special_stage_result_2_B2:
/* 010   ----------------------------------------
 */	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_special_stage_result_3:
	.byte	KEYSH , mus_special_stage_result_key+0
mus_special_stage_result_3_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 62
	.byte		VOL   , 103*mus_special_stage_result_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N14   , Gn2 , v100
	.byte		N15   , Cn3 , v116
	.byte		N14   , En3 , v108
	.byte	W20
	.byte		N72   , Fn2 
	.byte		N72   , As2 , v116
	.byte		N72   , Dn3 , v100
	.byte	W76
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte		N08   , Fn2 , v104
	.byte		N10   , As2 , v100
	.byte		N11   , Dn3 
	.byte	W20
	.byte		N72   , Gn2 
	.byte		N72   , Cn3 
	.byte		N72   , En3 , v108
	.byte	W76
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte		N05   , Gn2 , v104
	.byte		N04   , Cn3 , v108
	.byte		N05   , En3 , v116
	.byte	W20
	.byte		N72   , Fn2 
	.byte		N72   , As2 , v104
	.byte		N72   , Dn3 , v100
	.byte	W76
/* 005   ----------------------------------------
 */	.byte	W92
	.byte		N12   , Fn2 , v108
	.byte		N15   , As2 , v116
	.byte		N13   , Dn3 , v108
	.byte	W04
/* 006   ----------------------------------------
 */	.byte	W12
	.byte		N72   , Ds2 
	.byte		N72   , Gs2 , v100
	.byte		N72   , Cn3 
	.byte	W80
	.byte		N10   , Ds2 
	.byte		N16   , Gs2 
	.byte		N16   , Cn3 
	.byte	W04
/* 007   ----------------------------------------
 */	.byte	W12
	.byte		N72   , Fn2 , v116
	.byte		N72   , As2 , v100
	.byte		N72   , Dn3 
	.byte	W80
	.byte		N12   , Fn2 
	.byte		N13   , As2 
	.byte		N12   , Dn3 
	.byte	W04
/* 008   ----------------------------------------
 */	.byte	W12
	.byte		N72   , Gs2 
	.byte		N72   , Cn3 , v108
	.byte		N72   , Ds3 , v100
	.byte	W80
	.byte		N09   , Gs2 , v108
	.byte		N09   , Cn3 , v100
	.byte		N11   , Ds3 
	.byte	W04
/* 009   ----------------------------------------
 */	.byte	W12
	.byte		N40   , Gn2 
	.byte		N40   , As2 
	.byte		N40   , Dn3 
	.byte		N42   , Fn3 , v108
	.byte	W44
	.byte		N05   , Gn2 , v116
	.byte		N05   , As2 , v104
	.byte		N05   , Dn3 , v108
	.byte		N06   , Fn3 , v104
	.byte	W08
	.byte		N05   , Gn2 , v108
	.byte		N05   , As2 , v104
	.byte		N05   , Dn3 , v108
	.byte		N06   , Fn3 , v100
	.byte	W08
	.byte		N07   , Gn2 , v116
	.byte		N06   , As2 , v104
	.byte		N06   , Dn3 , v116
	.byte		N07   , Fn3 , v104
	.byte	W24
	.byte	GOTO
	 mPtr	mus_special_stage_result_3_B1
mus_special_stage_result_3_B2:
/* 010   ----------------------------------------
 */	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_special_stage_result_4:
	.byte	KEYSH , mus_special_stage_result_key+0
mus_special_stage_result_4_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 55
	.byte		VOL   , 82*mus_special_stage_result_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W48
	.byte		N52   , Gn2 , v108
	.byte	W48
/* 001   ----------------------------------------
 */mus_special_stage_result_4_001:
	.byte		N48   , Cn3 , v096
	.byte	W44
	.byte	W02
	.byte		N04   , Fs3 , v076
	.byte	W02
	.byte		N24   , Gn3 , v104
	.byte	W22
	.byte		N04   , Bn3 , v076
	.byte	W02
	.byte		N24   , Cn4 , v088
	.byte	W24
	.byte	PEND
/* 002   ----------------------------------------
 */	.byte		N23   , Gn3 , v104
	.byte	W20
	.byte		N78   , Cn3 , v108
	.byte	W76
/* 003   ----------------------------------------
 */	.byte		N44   , As2 
	.byte	W48
	.byte		        An2 
	.byte	W48
/* 004   ----------------------------------------
 */	.byte	W48
	.byte		N52   , Gn2 
	.byte	W48
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_result_4_001
/* 006   ----------------------------------------
 */	.byte	W40
	.byte	W01
	.byte		N04   , Gn3 , v096
	.byte	W03
	.byte		N15   , Gs3 
	.byte	W15
	.byte		N12   , Gn3 , v108
	.byte	W12
	.byte		N10   , Fn3 , v104
	.byte	W08
	.byte		N08   , Ds3 
	.byte	W09
	.byte		N09   , Cn3 , v127
	.byte	W08
/* 007   ----------------------------------------
 */	.byte	W32
	.byte	W02
	.byte		N05   , Gs3 , v080
	.byte	W02
	.byte		N23   , As3 
	.byte	W23
	.byte		N13   , Gs3 , v096
	.byte	W12
	.byte		N08   , Gn3 , v088
	.byte	W08
	.byte		        Fn3 , v080
	.byte	W08
	.byte		N05   , Dn3 , v100
	.byte	W09
/* 008   ----------------------------------------
 */	.byte	W32
	.byte	W02
	.byte		N04   , As3 , v092
	.byte	W02
	.byte		N23   , Cn4 , v100
	.byte	W24
	.byte		N12   , Gs3 , v108
	.byte	W11
	.byte		N08   , Gn3 , v092
	.byte	W08
	.byte		N09   , Fn3 , v080
	.byte	W09
	.byte		N08   , Ds3 , v108
	.byte	W08
/* 009   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_special_stage_result_4_B1
mus_special_stage_result_4_B2:
/* 010   ----------------------------------------
 */	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_special_stage_result_5:
	.byte	KEYSH , mus_special_stage_result_key+0
mus_special_stage_result_5_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 56
	.byte		VOL   , 61*mus_special_stage_result_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N14   , En4 , v116
	.byte	W20
	.byte		TIE   , Dn4 
	.byte	W76
/* 001   ----------------------------------------
 */	.byte	W92
	.byte		EOT   
	.byte	W04
/* 002   ----------------------------------------
 */	.byte		N11   
	.byte	W20
	.byte		TIE   , En4 
	.byte	W76
/* 003   ----------------------------------------
 */	.byte	W88
	.byte		EOT   
	.byte	W08
/* 004   ----------------------------------------
 */	.byte		N05   
	.byte	W20
	.byte		TIE   , Dn4 
	.byte	W76
/* 005   ----------------------------------------
 */	.byte	W84
	.byte	W03
	.byte		EOT   
	.byte	W05
	.byte		N13   
	.byte	W04
/* 006   ----------------------------------------
 */	.byte	W12
	.byte		N72   , Cn4 
	.byte	W80
	.byte		N16   
	.byte	W04
/* 007   ----------------------------------------
 */	.byte	W12
	.byte		N72   , Dn4 
	.byte	W80
	.byte		N12   
	.byte	W04
/* 008   ----------------------------------------
 */	.byte	W12
	.byte		N76   , Ds4 
	.byte	W80
	.byte		N11   
	.byte	W04
/* 009   ----------------------------------------
 */	.byte	W12
	.byte		N42   , Fn4 
	.byte	W44
	.byte		N06   
	.byte	W08
	.byte		N06   
	.byte	W08
	.byte		N07   
	.byte	W24
	.byte	GOTO
	 mPtr	mus_special_stage_result_5_B1
mus_special_stage_result_5_B2:
/* 010   ----------------------------------------
 */	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_special_stage_result_6:
	.byte	KEYSH , mus_special_stage_result_key+0
mus_special_stage_result_6_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 127
	.byte		VOL   , 120*mus_special_stage_result_mvl/mxv
	.byte		N04   , Cn1 , v127
	.byte		N01   , Dn1 , v044
	.byte		N90   , Cs2 , v120
	.byte	W12
	.byte		N03   , Cs1 , v104
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N06   , Cn1 , v116
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N04   , Cs1 , v096
	.byte		N02   , Ds1 , v044
	.byte	W08
	.byte		N04   , Cn1 , v116
	.byte	W04
	.byte		N01   , Dn1 , v044
	.byte	W08
	.byte		N04   , Cn1 , v100
	.byte	W04
	.byte		N06   , Cs1 , v104
	.byte		N02   , Ds1 , v044
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N10   , Cs1 , v108
	.byte		N02   , Ds1 , v044
	.byte	W12
/* 001   ----------------------------------------
 */mus_special_stage_result_6_001:
	.byte		N04   , Cn1 , v127
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N03   , Cs1 , v104
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N06   , Cn1 , v116
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N04   , Cs1 , v096
	.byte		N02   , Ds1 , v044
	.byte	W08
	.byte		N04   , Cn1 , v116
	.byte	W04
	.byte		N01   , Dn1 , v044
	.byte	W08
	.byte		N04   , Cn1 , v100
	.byte	W04
	.byte		N06   , Cs1 , v104
	.byte		N02   , Ds1 , v044
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N10   , Cs1 , v108
	.byte		N02   , Ds1 , v044
	.byte	W12
	.byte	PEND
/* 002   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_result_6_001
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_result_6_001
/* 004   ----------------------------------------
 */	.byte		N04   , Cn1 , v127
	.byte		N01   , Dn1 , v044
	.byte		N90   , Cs2 , v120
	.byte	W12
	.byte		N03   , Cs1 , v104
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N06   , Cn1 , v116
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N04   , Cs1 , v096
	.byte		N02   , Ds1 , v044
	.byte	W08
	.byte		N04   , Cn1 , v116
	.byte	W04
	.byte		N01   , Dn1 , v044
	.byte	W08
	.byte		N04   , Cn1 , v100
	.byte	W04
	.byte		N06   , Cs1 , v104
	.byte		N02   , Ds1 , v044
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N10   , Cs1 , v108
	.byte		N02   , Ds1 , v044
	.byte	W12
/* 005   ----------------------------------------
 */	.byte		N04   , Cn1 , v127
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N03   , Cs1 , v104
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N06   , Cn1 , v116
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N04   , Cs1 , v096
	.byte		N02   , Ds1 , v044
	.byte	W08
	.byte		N04   , Cn1 , v116
	.byte	W04
	.byte		N01   , Dn1 , v044
	.byte	W08
	.byte		N04   , Cn1 , v100
	.byte	W04
	.byte		N06   , Cs1 , v104
	.byte		N02   , Ds1 , v044
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N10   , Cs1 , v108
	.byte		N02   , Ds1 , v044
	.byte	W08
	.byte		        Cn1 , v108
	.byte		N90   , Cs2 , v120
	.byte	W04
/* 006   ----------------------------------------
 */mus_special_stage_result_6_006:
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N03   , Cs1 , v104
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N06   , Cn1 , v116
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N04   , Cs1 , v096
	.byte		N02   , Ds1 , v044
	.byte	W08
	.byte		N04   , Cn1 , v116
	.byte	W04
	.byte		N01   , Dn1 , v044
	.byte	W08
	.byte		N04   , Cn1 , v100
	.byte	W04
	.byte		N06   , Cs1 , v104
	.byte		N02   , Ds1 , v044
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N10   , Cs1 , v108
	.byte		N02   , Ds1 , v044
	.byte	W08
	.byte		        Cn1 , v108
	.byte	W04
	.byte	PEND
/* 007   ----------------------------------------
 */	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N03   , Cs1 , v104
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N06   , Cn1 , v116
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N04   , Cs1 , v096
	.byte		N02   , Ds1 , v044
	.byte	W08
	.byte		N04   , Cn1 , v116
	.byte	W04
	.byte		N01   , Dn1 , v044
	.byte	W08
	.byte		N04   , Cn1 , v100
	.byte	W04
	.byte		N06   , Cs1 , v104
	.byte		N02   , Ds1 , v044
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N10   , Cs1 , v108
	.byte		N02   , Ds1 , v044
	.byte	W08
	.byte		        Cn1 , v108
	.byte		N90   , Cs2 , v120
	.byte	W04
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_result_6_006
/* 009   ----------------------------------------
 */	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N03   , Cs1 , v104
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N06   , Cn1 , v116
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N04   , Cs1 , v096
	.byte		N02   , Ds1 , v044
	.byte	W08
	.byte		N04   , Cn1 , v116
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N06   , Cs1 , v104
	.byte		N01   , Dn1 , v044
	.byte	W08
	.byte		N06   , Cs1 , v104
	.byte		N01   , Dn1 , v044
	.byte	W08
	.byte		N10   , Cs1 , v108
	.byte		N01   , Dn1 , v044
	.byte	W24
	.byte	GOTO
	 mPtr	mus_special_stage_result_6_B1
mus_special_stage_result_6_B2:
/* 010   ----------------------------------------
 */	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_special_stage_result):
	.byte	6	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_special_stage_result_pri	/* Priority */
	.byte	mus_special_stage_result_rev	/* Reverb */

mAlignWord
	mPtr	mus_special_stage_result_grp

	mPtr	mus_special_stage_result_1
	mPtr	mus_special_stage_result_2
	mPtr	mus_special_stage_result_3
	mPtr	mus_special_stage_result_4
	mPtr	mus_special_stage_result_5
	mPtr	mus_special_stage_result_6

	.end
