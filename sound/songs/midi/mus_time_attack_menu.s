	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_time_attack_menu_grp, voicegroup013
	.equ	mus_time_attack_menu_pri, 0
	.equ	mus_time_attack_menu_rev, reverb_set+0
	.equ	mus_time_attack_menu_mvl, 110
	.equ	mus_time_attack_menu_key, 0
	.equ	mus_time_attack_menu_tbs, 1
	.equ	mus_time_attack_menu_exg, 1
	.equ	mus_time_attack_menu_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_time_attack_menu)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_time_attack_menu_1:
	.byte	KEYSH , mus_time_attack_menu_key+0
mus_time_attack_menu_1_B1:
/* 000   ----------------------------------------
 */	.byte	TEMPO , 114*mus_time_attack_menu_tbs/2
	.byte		VOICE , 43
	.byte		VOL   , 127*mus_time_attack_menu_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N08   , Fn2 , v127
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W08
	.byte		        Fn2 
	.byte	W12
	.byte		N08   
	.byte	W04
	.byte		        Cn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
/* 001   ----------------------------------------
 */mus_time_attack_menu_1_001:
	.byte		N08   , Fn2 , v127
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W08
	.byte		        Fn2 
	.byte	W12
	.byte		N08   
	.byte	W04
	.byte		        Cn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte	PEND
/* 002   ----------------------------------------
 */mus_time_attack_menu_1_002:
	.byte		N08   , Ds2 , v127
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W08
	.byte		        Ds2 
	.byte	W12
	.byte		N08   
	.byte	W04
	.byte		        As1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte	PEND
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_time_attack_menu_1_002
/* 004   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_time_attack_menu_1_001
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_time_attack_menu_1_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_time_attack_menu_1_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_time_attack_menu_1_002
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_time_attack_menu_1_001
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_time_attack_menu_1_001
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_time_attack_menu_1_002
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_time_attack_menu_1_002
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_time_attack_menu_1_002
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_time_attack_menu_1_002
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_time_attack_menu_1_001
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_time_attack_menu_1_001
	.byte	GOTO
	 mPtr	mus_time_attack_menu_1_B1
mus_time_attack_menu_1_B2:
/* 016   ----------------------------------------
 */	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_time_attack_menu_2:
	.byte	KEYSH , mus_time_attack_menu_key+0
mus_time_attack_menu_2_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 127
	.byte		VOL   , 119*mus_time_attack_menu_mvl/mxv
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
 */mus_time_attack_menu_2_001:
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
	.byte	W08
	.byte		        Cn1 , v108
	.byte	W04
	.byte	PEND
/* 002   ----------------------------------------
 */mus_time_attack_menu_2_002:
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
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_time_attack_menu_2_002
/* 004   ----------------------------------------
 */mus_time_attack_menu_2_004:
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
	.byte	PEND
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_time_attack_menu_2_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_time_attack_menu_2_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_time_attack_menu_2_002
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_time_attack_menu_2_004
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_time_attack_menu_2_001
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_time_attack_menu_2_002
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_time_attack_menu_2_002
/* 012   ----------------------------------------
 */	.byte		N04   , Cn1 , v127
	.byte		N01   , Dn1 , v044
	.byte		N90   , Cs2 , v120
	.byte	W12
	.byte		N08   , Cs1 , v104
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N06   , Cn1 , v116
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N08   , Cs1 , v096
	.byte		N02   , Ds1 , v044
	.byte	W08
	.byte		N04   , Cn1 , v116
	.byte	W04
	.byte		N01   , Dn1 , v044
	.byte	W08
	.byte		N04   , Cn1 , v100
	.byte	W04
	.byte		N08   , Cs1 , v104
	.byte		N02   , Ds1 , v044
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N08   , Cs1 , v108
	.byte		N02   , Ds1 , v044
	.byte	W12
/* 013   ----------------------------------------
 */	.byte		N04   , Cn1 , v127
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N08   , Cs1 , v104
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N06   , Cn1 , v116
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N08   , Cs1 , v096
	.byte		N02   , Ds1 , v044
	.byte	W08
	.byte		N04   , Cn1 , v116
	.byte	W04
	.byte		N01   , Dn1 , v044
	.byte	W08
	.byte		N04   , Cn1 , v100
	.byte	W04
	.byte		N08   , Cs1 , v104
	.byte		N02   , Ds1 , v044
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N08   , Cs1 , v108
	.byte		N02   , Ds1 , v044
	.byte	W08
	.byte		        Cn1 , v108
	.byte	W04
/* 014   ----------------------------------------
 */	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N08   , Cs1 , v104
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N06   , Cn1 , v116
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N08   , Cs1 , v096
	.byte		N02   , Ds1 , v044
	.byte	W08
	.byte		N04   , Cn1 , v116
	.byte	W04
	.byte		N01   , Dn1 , v044
	.byte	W08
	.byte		N04   , Cn1 , v100
	.byte	W04
	.byte		N08   , Cs1 , v104
	.byte		N02   , Ds1 , v044
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N08   , Cs1 , v108
	.byte		N02   , Ds1 , v044
	.byte	W08
	.byte		        Cn1 , v108
	.byte	W04
/* 015   ----------------------------------------
 */	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N08   , Cs1 , v104
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N06   , Cn1 , v116
	.byte		N01   , Dn1 , v044
	.byte	W12
	.byte		N08   , Cs1 , v096
	.byte		N02   , Ds1 , v044
	.byte	W08
	.byte		N04   , Cn1 , v116
	.byte	W04
	.byte		N01   , Dn1 , v044
	.byte	W08
	.byte		N04   , Cn1 , v100
	.byte	W04
	.byte		N08   , Cs1 , v104
	.byte		N02   , Ds1 , v044
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N01   , Dn1 , v044
	.byte	W04
	.byte		N07   , Cs1 , v108
	.byte	W08
	.byte		N03   
	.byte		N02   , Ds1 , v044
	.byte	W04
	.byte		N03   , Cs1 , v108
	.byte	W04
	.byte		N02   , Cn1 
	.byte		N04   , Cs1 
	.byte	W04
	.byte	GOTO
	 mPtr	mus_time_attack_menu_2_B1
mus_time_attack_menu_2_B2:
/* 016   ----------------------------------------
 */	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_time_attack_menu_3:
	.byte	KEYSH , mus_time_attack_menu_key+0
mus_time_attack_menu_3_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 45
	.byte		VOL   , 127*mus_time_attack_menu_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N32   , Gn3 , v116
	.byte	W32
	.byte	W03
	.byte		N02   , Gs3 , v080
	.byte	W03
	.byte		N32   , An3 , v100
	.byte	W32
	.byte		N68   , Fn3 , v116
	.byte	W24
	.byte	W02
/* 001   ----------------------------------------
 */	.byte	W44
	.byte	W02
	.byte		N21   , Fn3 , v104
	.byte	W24
	.byte		N23   , Ds3 , v108
	.byte	W24
	.byte	W01
	.byte		N20   , Dn3 , v104
	.byte	W01
/* 002   ----------------------------------------
 */	.byte	W19
	.byte		N06   , Ds3 , v127
	.byte	W17
	.byte		TIE   , As2 , v116
	.byte	W60
/* 003   ----------------------------------------
 */	.byte	W76
	.byte	W01
	.byte		EOT   
	.byte	W18
	.byte		N01   , Gn3 , v092
	.byte	W01
/* 004   ----------------------------------------
 */	.byte		N32   
	.byte	W32
	.byte	W02
	.byte		N03   , Gs3 , v096
	.byte	W03
	.byte		N30   , An3 , v088
	.byte	W32
	.byte	W02
	.byte		N68   , Fn3 , v104
	.byte	W24
	.byte	W01
/* 005   ----------------------------------------
 */	.byte	W48
	.byte	W01
	.byte		N21   , Fn3 , v108
	.byte	W22
	.byte		N24   , Ds3 , v104
	.byte	W24
	.byte	W01
/* 006   ----------------------------------------
 */	.byte		N18   , Dn3 , v108
	.byte	W18
	.byte		N16   , Ds3 , v096
	.byte	W17
	.byte		TIE   , As3 , v100
	.byte	W60
	.byte	W01
/* 007   ----------------------------------------
 */	.byte	W88
	.byte	W01
	.byte		EOT   
	.byte	W06
	.byte		TIE   , Fn3 , v104
	.byte	W01
/* 008   ----------------------------------------
 */	.byte	W96
/* 009   ----------------------------------------
 */	.byte	W18
	.byte		EOT   
	.byte	W05
	.byte		N24   , Gn3 , v116
	.byte	W24
	.byte		N23   , An3 , v096
	.byte	W23
	.byte		N24   , Fn3 , v100
	.byte	W24
	.byte	W02
/* 010   ----------------------------------------
 */	.byte	W01
	.byte		N36   , Cn4 , v116
	.byte	W36
	.byte		N05   , As3 , v108
	.byte	W05
	.byte		N07   , An3 , v104
	.byte	W05
	.byte		TIE   , As3 , v092
	.byte	W48
	.byte	W01
/* 011   ----------------------------------------
 */	.byte	W88
	.byte	W01
	.byte		EOT   
	.byte	W04
	.byte		N05   , Cs4 , v100
	.byte	W03
/* 012   ----------------------------------------
 */	.byte	W01
	.byte		TIE   , Dn4 , v108
	.byte	W92
	.byte	W03
/* 013   ----------------------------------------
 */	.byte	W18
	.byte		EOT   
	.byte	W04
	.byte		N21   , Dn4 , v116
	.byte	W24
	.byte		N22   , Cn4 , v092
	.byte	W23
	.byte		N24   , As3 , v116
	.byte	W24
	.byte	W01
	.byte		N16   , An3 , v104
	.byte	W02
/* 014   ----------------------------------------
 */	.byte	W16
	.byte		TIE   , Fn3 , v108
	.byte	W80
/* 015   ----------------------------------------
 */	.byte	W88
	.byte		EOT   
	.byte	W08
	.byte	GOTO
	 mPtr	mus_time_attack_menu_3_B1
mus_time_attack_menu_3_B2:
/* 016   ----------------------------------------
 */	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_time_attack_menu_4:
	.byte	KEYSH , mus_time_attack_menu_key+0
mus_time_attack_menu_4_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 41
	.byte		VOL   , 108*mus_time_attack_menu_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		TIE   , An3 , v104
	.byte	W06
	.byte		VOL   , 96*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        82*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        70*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        57*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        44*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        26*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        31*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        37*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        43*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        48*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        54*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        59*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        65*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        71*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        77*mus_time_attack_menu_mvl/mxv
	.byte	W06
/* 001   ----------------------------------------
 */	.byte		        82*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        88*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        94*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        99*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        104*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        111*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        117*mus_time_attack_menu_mvl/mxv
	.byte	W04
	.byte		EOT   
	.byte	W02
	.byte		VOL   , 119*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		N19   , Fn3 , v088
	.byte	W24
	.byte		N15   , An3 , v116
	.byte	W24
/* 002   ----------------------------------------
 */	.byte		VOL   , 122*mus_time_attack_menu_mvl/mxv
	.byte		N14   , Gn3 
	.byte	W06
	.byte		VOL   , 119*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        116*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        112*mus_time_attack_menu_mvl/mxv
	.byte		TIE   , Ds3 , v072
	.byte	W06
	.byte		VOL   , 109*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        106*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        103*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        100*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        96*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        93*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        89*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        86*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        82*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        80*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        77*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        73*mus_time_attack_menu_mvl/mxv
	.byte	W06
/* 003   ----------------------------------------
 */	.byte		        70*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        67*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        63*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        59*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        57*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        54*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        50*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        47*mus_time_attack_menu_mvl/mxv
	.byte	W44
	.byte		EOT   
	.byte	W10
/* 004   ----------------------------------------
 */	.byte		VOL   , 108*mus_time_attack_menu_mvl/mxv
	.byte		TIE   , An3 , v116
	.byte	W06
	.byte		VOL   , 96*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        82*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        70*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        57*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        44*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        26*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        31*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        37*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        43*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        48*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        54*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        59*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        65*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        71*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        77*mus_time_attack_menu_mvl/mxv
	.byte	W06
/* 005   ----------------------------------------
 */mus_time_attack_menu_4_005:
	.byte		VOL   , 82*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        88*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        94*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        99*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        104*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        111*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        117*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        119*mus_time_attack_menu_mvl/mxv
	.byte	W01
	.byte	PEND
	.byte		EOT   , An3 
	.byte	W05
	.byte		N19   , Fn3 , v096
	.byte	W24
	.byte		N16   , An3 , v108
	.byte	W24
/* 006   ----------------------------------------
 */	.byte		VOL   , 108*mus_time_attack_menu_mvl/mxv
	.byte		N13   , As3 , v092
	.byte	W06
	.byte		VOL   , 106*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        104*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        102*mus_time_attack_menu_mvl/mxv
	.byte		TIE   , Gn3 , v096
	.byte	W06
	.byte		VOL   , 100*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        97*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        96*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        94*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        92*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        89*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        88*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        86*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        84*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        82*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        80*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        78*mus_time_attack_menu_mvl/mxv
	.byte	W06
/* 007   ----------------------------------------
 */	.byte		        76*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        74*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        72*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        70*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        67*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        66*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        64*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        62*mus_time_attack_menu_mvl/mxv
	.byte	W42
	.byte	W01
	.byte		EOT   
	.byte	W11
/* 008   ----------------------------------------
 */	.byte		VOL   , 108*mus_time_attack_menu_mvl/mxv
	.byte		TIE   , Cn4 , v100
	.byte	W06
	.byte		VOL   , 96*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        82*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        70*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        57*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        44*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        26*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        31*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        37*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        43*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        48*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        54*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        59*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        65*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        71*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        77*mus_time_attack_menu_mvl/mxv
	.byte	W06
/* 009   ----------------------------------------
 */	.byte		        82*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        88*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        94*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        99*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        104*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        111*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        117*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        119*mus_time_attack_menu_mvl/mxv
	.byte	W03
	.byte		EOT   
	.byte	W03
	.byte		N18   , An3 , v092
	.byte	W24
	.byte		N17   , Cn4 , v096
	.byte	W24
/* 010   ----------------------------------------
 */	.byte		VOL   , 122*mus_time_attack_menu_mvl/mxv
	.byte		N13   , Ds4 , v108
	.byte	W06
	.byte		VOL   , 119*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        116*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        112*mus_time_attack_menu_mvl/mxv
	.byte		TIE   , As3 , v092
	.byte	W06
	.byte		VOL   , 109*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        106*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        103*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        100*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        96*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        93*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        89*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        86*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        82*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        80*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        77*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        73*mus_time_attack_menu_mvl/mxv
	.byte	W06
/* 011   ----------------------------------------
 */	.byte		        70*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        67*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        63*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        59*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        57*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        54*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        50*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        47*mus_time_attack_menu_mvl/mxv
	.byte	W42
	.byte		EOT   
	.byte	W12
/* 012   ----------------------------------------
 */	.byte		VOL   , 108*mus_time_attack_menu_mvl/mxv
	.byte		TIE   , Gn3 , v096
	.byte	W06
	.byte		VOL   , 96*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        82*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        70*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        57*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        44*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        26*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        31*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        37*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        43*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        48*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        54*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        59*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        65*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        71*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        77*mus_time_attack_menu_mvl/mxv
	.byte	W06
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_time_attack_menu_4_005
	.byte		EOT   , Gn3 
	.byte	W05
	.byte		N21   , Cn4 , v096
	.byte	W24
	.byte		N19   , As3 , v088
	.byte	W24
/* 014   ----------------------------------------
 */	.byte		VOL   , 108*mus_time_attack_menu_mvl/mxv
	.byte		N15   , Cn4 , v092
	.byte	W06
	.byte		VOL   , 106*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        104*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        102*mus_time_attack_menu_mvl/mxv
	.byte		TIE   , An3 , v088
	.byte	W06
	.byte		VOL   , 100*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        97*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        96*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        94*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        92*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        89*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        88*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        86*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        84*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        82*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        80*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        78*mus_time_attack_menu_mvl/mxv
	.byte	W06
/* 015   ----------------------------------------
 */	.byte		        76*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        74*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        72*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        70*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        67*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        66*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        64*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        62*mus_time_attack_menu_mvl/mxv
	.byte	W44
	.byte		EOT   
	.byte	W10
	.byte	GOTO
	 mPtr	mus_time_attack_menu_4_B1
mus_time_attack_menu_4_B2:
/* 016   ----------------------------------------
 */	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_time_attack_menu_5:
	.byte	KEYSH , mus_time_attack_menu_key+0
mus_time_attack_menu_5_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 42
	.byte		VOL   , 108*mus_time_attack_menu_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		TIE   , Fn3 , v100
	.byte	W06
	.byte		VOL   , 96*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        82*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        70*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        57*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        44*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        26*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        31*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        37*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        43*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        48*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        54*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        59*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        65*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        71*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        77*mus_time_attack_menu_mvl/mxv
	.byte	W06
/* 001   ----------------------------------------
 */	.byte		        82*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        88*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        94*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        99*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        104*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        111*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        117*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        119*mus_time_attack_menu_mvl/mxv
	.byte	W01
	.byte		EOT   
	.byte	W05
	.byte		N18   , Cn3 , v104
	.byte	W24
	.byte		        Fn3 , v100
	.byte	W24
/* 002   ----------------------------------------
 */	.byte		VOL   , 122*mus_time_attack_menu_mvl/mxv
	.byte		N15   , Ds3 , v096
	.byte	W06
	.byte		VOL   , 119*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        116*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        112*mus_time_attack_menu_mvl/mxv
	.byte		TIE   , As2 , v108
	.byte	W06
	.byte		VOL   , 109*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        106*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        103*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        100*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        96*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        93*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        89*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        86*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        82*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        80*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        77*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        73*mus_time_attack_menu_mvl/mxv
	.byte	W06
/* 003   ----------------------------------------
 */	.byte		        70*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        67*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        63*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        59*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        57*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        54*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        50*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        47*mus_time_attack_menu_mvl/mxv
	.byte	W42
	.byte	W01
	.byte		EOT   
	.byte	W11
/* 004   ----------------------------------------
 */	.byte		VOL   , 108*mus_time_attack_menu_mvl/mxv
	.byte		TIE   , Fn3 , v096
	.byte	W06
	.byte		VOL   , 96*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        82*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        70*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        57*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        44*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        26*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        31*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        37*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        43*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        48*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        54*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        59*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        65*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        71*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        77*mus_time_attack_menu_mvl/mxv
	.byte	W06
/* 005   ----------------------------------------
 */mus_time_attack_menu_5_005:
	.byte		VOL   , 82*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        88*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        94*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        99*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        104*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        111*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        117*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        119*mus_time_attack_menu_mvl/mxv
	.byte	W02
	.byte	PEND
	.byte		EOT   , Fn3 
	.byte	W04
	.byte		N17   , Cn3 , v116
	.byte	W24
	.byte		N15   , Fn3 , v100
	.byte	W24
/* 006   ----------------------------------------
 */	.byte		VOL   , 108*mus_time_attack_menu_mvl/mxv
	.byte		N11   , Gn3 
	.byte	W06
	.byte		VOL   , 106*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        104*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        102*mus_time_attack_menu_mvl/mxv
	.byte		TIE   , Ds3 , v068
	.byte	W06
	.byte		VOL   , 100*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        97*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        96*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        94*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        92*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        89*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        88*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        86*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        84*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        82*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        80*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        78*mus_time_attack_menu_mvl/mxv
	.byte	W06
/* 007   ----------------------------------------
 */	.byte		        76*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        74*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        72*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        70*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        67*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        66*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        64*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        62*mus_time_attack_menu_mvl/mxv
	.byte	W44
	.byte		EOT   
	.byte	W10
/* 008   ----------------------------------------
 */	.byte		VOL   , 108*mus_time_attack_menu_mvl/mxv
	.byte		TIE   , An3 , v096
	.byte	W06
	.byte		VOL   , 96*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        82*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        70*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        57*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        44*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        26*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        31*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        37*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        43*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        48*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        54*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        59*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        65*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        71*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        77*mus_time_attack_menu_mvl/mxv
	.byte	W06
/* 009   ----------------------------------------
 */	.byte		        82*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        88*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        94*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        99*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        104*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        111*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        117*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        119*mus_time_attack_menu_mvl/mxv
	.byte	W03
	.byte		EOT   
	.byte	W03
	.byte		N16   , Fn3 , v092
	.byte	W24
	.byte		N15   , An3 
	.byte	W24
/* 010   ----------------------------------------
 */	.byte		VOL   , 122*mus_time_attack_menu_mvl/mxv
	.byte		N13   , As3 , v096
	.byte	W06
	.byte		VOL   , 119*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        116*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        112*mus_time_attack_menu_mvl/mxv
	.byte		TIE   , Gn3 , v100
	.byte	W06
	.byte		VOL   , 109*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        106*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        103*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        100*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        96*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        93*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        89*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        86*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        82*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        80*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        77*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        73*mus_time_attack_menu_mvl/mxv
	.byte	W06
/* 011   ----------------------------------------
 */	.byte		        70*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        67*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        63*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        59*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        57*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        54*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        50*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        47*mus_time_attack_menu_mvl/mxv
	.byte	W36
	.byte	W03
	.byte		EOT   
	.byte	W15
/* 012   ----------------------------------------
 */	.byte		VOL   , 108*mus_time_attack_menu_mvl/mxv
	.byte		TIE   , As3 , v060
	.byte	W06
	.byte		VOL   , 96*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        82*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        70*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        57*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        44*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        26*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        31*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        37*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        43*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        48*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        54*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        59*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        65*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        71*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        77*mus_time_attack_menu_mvl/mxv
	.byte	W06
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_time_attack_menu_5_005
	.byte		EOT   , As3 
	.byte	W04
	.byte		N20   , Gn3 , v068
	.byte	W24
	.byte		N18   , Gn3 , v092
	.byte	W24
/* 014   ----------------------------------------
 */	.byte		VOL   , 108*mus_time_attack_menu_mvl/mxv
	.byte		N13   , An3 , v088
	.byte	W06
	.byte		VOL   , 106*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        104*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        102*mus_time_attack_menu_mvl/mxv
	.byte		TIE   , Fn3 , v100
	.byte	W06
	.byte		VOL   , 100*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        97*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        96*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        94*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        92*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        89*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        88*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        86*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        84*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        82*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        80*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        78*mus_time_attack_menu_mvl/mxv
	.byte	W06
/* 015   ----------------------------------------
 */	.byte		        76*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        74*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        72*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        70*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        67*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        66*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        64*mus_time_attack_menu_mvl/mxv
	.byte	W06
	.byte		        62*mus_time_attack_menu_mvl/mxv
	.byte	W44
	.byte	W01
	.byte		EOT   
	.byte	W09
	.byte	GOTO
	 mPtr	mus_time_attack_menu_5_B1
mus_time_attack_menu_5_B2:
/* 016   ----------------------------------------
 */	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_time_attack_menu_6:
	.byte	KEYSH , mus_time_attack_menu_key+0
mus_time_attack_menu_6_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 44
	.byte		VOL   , 104*mus_time_attack_menu_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W56
	.byte	W03
	.byte		N14   , Gn3 , v116
	.byte	W12
	.byte		        An3 
	.byte	W13
	.byte		N23   , Gn4 
	.byte	W12
/* 001   ----------------------------------------
 */mus_time_attack_menu_6_001:
	.byte	W10
	.byte		N16   , Gn3 , v116
	.byte	W14
	.byte		N13   , An3 
	.byte	W12
	.byte		N48   , Fn4 
	.byte	W60
	.byte	PEND
/* 002   ----------------------------------------
 */mus_time_attack_menu_6_002:
	.byte	W56
	.byte	W02
	.byte		N14   , Fn3 , v116
	.byte	W13
	.byte		        Gn3 
	.byte	W13
	.byte		N21   , Ds4 
	.byte	W12
	.byte	PEND
/* 003   ----------------------------------------
 */mus_time_attack_menu_6_003:
	.byte	W11
	.byte		N14   , Fn3 , v116
	.byte	W12
	.byte		N13   , Gn3 
	.byte	W13
	.byte		N36   , Dn4 
	.byte	W60
	.byte	PEND
/* 004   ----------------------------------------
 */mus_time_attack_menu_6_004:
	.byte	W56
	.byte	W03
	.byte		N14   , Gn3 , v116
	.byte	W12
	.byte		        An3 
	.byte	W13
	.byte		N23   , Gn4 
	.byte	W12
	.byte	PEND
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_time_attack_menu_6_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_time_attack_menu_6_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_time_attack_menu_6_003
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_time_attack_menu_6_004
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_time_attack_menu_6_001
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_time_attack_menu_6_002
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_time_attack_menu_6_003
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_time_attack_menu_6_004
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_time_attack_menu_6_001
/* 014   ----------------------------------------
 */	.byte	W96
/* 015   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_time_attack_menu_6_B1
mus_time_attack_menu_6_B2:
/* 016   ----------------------------------------
 */	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_time_attack_menu):
	.byte	6	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_time_attack_menu_pri	/* Priority */
	.byte	mus_time_attack_menu_rev	/* Reverb */

mAlignWord
	mPtr	mus_time_attack_menu_grp

	mPtr	mus_time_attack_menu_1
	mPtr	mus_time_attack_menu_2
	mPtr	mus_time_attack_menu_3
	mPtr	mus_time_attack_menu_4
	mPtr	mus_time_attack_menu_5
	mPtr	mus_time_attack_menu_6

	.end
