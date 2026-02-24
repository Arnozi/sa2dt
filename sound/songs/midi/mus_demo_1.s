	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_demo_1_grp, voicegroup014
	.equ	mus_demo_1_pri, 0
	.equ	mus_demo_1_rev, reverb_set+0
	.equ	mus_demo_1_mvl, 100
	.equ	mus_demo_1_key, 0
	.equ	mus_demo_1_tbs, 1
	.equ	mus_demo_1_exg, 1
	.equ	mus_demo_1_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_demo_1)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_demo_1_1:
	.byte	KEYSH , mus_demo_1_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*mus_demo_1_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_demo_1_mvl/mxv
	.byte		N06   , Cn1 , v127
	.byte		N18   , En1 , v048
	.byte	W12
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte		        Cn1 
	.byte		N18   , En1 , v048
	.byte	W12
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte		N18   , En1 , v048
	.byte	W12
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte		        Cn1 
	.byte		N18   , En1 , v048
	.byte	W12
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte	W06
/* 001   ----------------------------------------
 */	.byte		N06   
	.byte		N18   , En1 , v048
	.byte	W12
	.byte		N06   , Gs1 , v127
	.byte	W06
	.byte		        Cn1 
	.byte		N18   , En1 , v048
	.byte	W12
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte		        Cn1 
	.byte		N18   , En1 , v048
	.byte	W24
	.byte		N06   , Cs1 , v127
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , En1 , v048
	.byte	W12
mus_demo_1_1_B1:
/* 002   ----------------------------------------
 */	.byte		N12   , Cn1 , v127
	.byte		N05   , Ds1 , v060
	.byte		N48   , Gn2 , v127
	.byte	W06
	.byte		N05   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v044
	.byte	W12
	.byte		N12   , Cs1 , v127
	.byte		N11   , Ds1 , v060
	.byte	W12
	.byte		        Dn1 
	.byte	W06
	.byte		N05   , Cs1 , v127
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N11   , Ds1 , v060
	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte		N11   , Dn1 , v060
	.byte	W12
	.byte		N12   , Cs1 , v127
	.byte		N11   , Ds1 , v060
	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte		N17   , En1 , v060
	.byte	W12
/* 003   ----------------------------------------
 */mus_demo_1_1_003:
	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte		N05   , Dn1 , v044
	.byte	W12
	.byte		N12   , Cs1 , v127
	.byte		N05   , Ds1 , v060
	.byte	W12
	.byte		        Dn1 , v044
	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte		N05   , Ds1 , v060
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N12   , Cn1 , v127
	.byte		N05   , Dn1 , v044
	.byte	W12
	.byte		N12   , Cs1 , v127
	.byte		N05   , Ds1 , v060
	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte		N05   , Dn1 , v044
	.byte	W12
	.byte	PEND
/* 004   ----------------------------------------
 */mus_demo_1_1_004:
	.byte		N12   , Cn1 , v127
	.byte		N05   , Ds1 , v060
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Dn1 , v044
	.byte	W12
	.byte		N12   , Cs1 , v127
	.byte		N11   , Ds1 , v060
	.byte	W12
	.byte		        Dn1 
	.byte	W06
	.byte		N05   , Cs1 , v127
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N11   , Ds1 , v060
	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte		N11   , Dn1 , v060
	.byte	W12
	.byte		N12   , Cs1 , v127
	.byte		N11   , Ds1 , v060
	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte		N17   , En1 , v060
	.byte	W12
	.byte	PEND
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_1_1_003
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_1_1_004
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_1_1_003
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_1_1_004
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_1_1_003
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_1_1_004
/* 011   ----------------------------------------
 */	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte		N05   , Dn1 , v044
	.byte	W12
	.byte		N12   , Cs1 , v127
	.byte		N11   , Ds1 , v044
	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte		N05   , Dn1 , v044
	.byte	W12
	.byte		N06   , Cs1 , v127
	.byte		N11   , Ds1 , v060
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte		        Cn1 
	.byte		N05   , Dn1 , v044
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		        Cs1 
	.byte		N11   , Ds1 , v064
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		N06   
	.byte		N05   , Dn1 , v044
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte	W06
/* 012   ----------------------------------------
 */	.byte		N12   , Cn1 
	.byte		N11   , En1 , v060
	.byte		N48   , Gn2 , v127
	.byte	W12
	.byte		N11   , Ds1 , v044
	.byte	W12
	.byte		N12   , Cs1 , v127
	.byte		N11   , En1 , v060
	.byte	W12
	.byte		        Ds1 , v044
	.byte	W06
	.byte		N05   , Cs1 , v127
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N11   , En1 , v060
	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte		N11   , Ds1 , v044
	.byte	W12
	.byte		N12   , Cs1 , v127
	.byte		N11   , Ds1 , v044
	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte		N23   , En1 , v060
	.byte	W12
/* 013   ----------------------------------------
 */mus_demo_1_1_013:
	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte		N11   , Ds1 , v044
	.byte	W12
	.byte		N12   , Cs1 , v127
	.byte		N11   , En1 , v060
	.byte	W12
	.byte		        Ds1 , v044
	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte		N11   , En1 , v060
	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte		N11   , Ds1 , v044
	.byte	W12
	.byte		N12   , Cs1 , v127
	.byte		N11   , En1 , v060
	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte		N11   , Ds1 , v044
	.byte	W12
	.byte	PEND
/* 014   ----------------------------------------
 */mus_demo_1_1_014:
	.byte		N12   , Cn1 , v127
	.byte		N11   , En1 , v060
	.byte	W12
	.byte		        Ds1 , v044
	.byte	W12
	.byte		N12   , Cs1 , v127
	.byte		N11   , En1 , v060
	.byte	W12
	.byte		        Ds1 , v044
	.byte	W06
	.byte		N05   , Cs1 , v127
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N11   , En1 , v060
	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte		N11   , Ds1 , v044
	.byte	W12
	.byte		N12   , Cs1 , v127
	.byte		N11   , Ds1 , v044
	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte		N23   , En1 , v060
	.byte	W12
	.byte	PEND
/* 015   ----------------------------------------
 */	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte		N11   , Ds1 , v044
	.byte	W12
	.byte		N12   , Cs1 , v127
	.byte		N11   , En1 , v060
	.byte	W12
	.byte		        Ds1 , v044
	.byte	W12
	.byte		N06   , Cs1 , v127
	.byte		N11   , En1 , v060
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N11   , Ds1 , v044
	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte		N11   , En1 , v060
	.byte	W12
	.byte		N12   , Cs1 , v127
	.byte		N48   , Gn2 
	.byte	W12
/* 016   ----------------------------------------
 */	.byte	W12
	.byte		N11   , Ds1 , v044
	.byte	W12
	.byte		N12   , Cs1 , v127
	.byte		N11   , En1 , v060
	.byte	W12
	.byte		        Ds1 , v044
	.byte	W06
	.byte		N05   , Cs1 , v127
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N11   , En1 , v060
	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte		N11   , Ds1 , v044
	.byte	W12
	.byte		N12   , Cs1 , v127
	.byte		N11   , Ds1 , v044
	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte		N23   , En1 , v060
	.byte	W12
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_1_1_013
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_demo_1_1_014
/* 019   ----------------------------------------
 */	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte		N11   , Ds1 , v044
	.byte	W12
	.byte		N12   , Cs1 , v127
	.byte		N11   , En1 , v060
	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte		N11   , Ds1 , v044
	.byte	W12
	.byte		N12   , Cs1 , v127
	.byte		N11   , Ds1 , v060
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte		N11   , Ds1 , v044
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		N06   
	.byte		N11   , Ds1 , v060
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte		N12   , Cn1 
	.byte		N11   , Ds1 , v044
	.byte	W12
	.byte	GOTO
	 mPtr	mus_demo_1_1_B1
mus_demo_1_1_B2:
/* 020   ----------------------------------------
 */	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_demo_1_2:
	.byte	KEYSH , mus_demo_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 79
	.byte		VOL   , 100*mus_demo_1_mvl/mxv
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
mus_demo_1_2_B1:
/* 002   ----------------------------------------
 */	.byte	W42
	.byte		VOL   , 20*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        28*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        42*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        51*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        59*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        63*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        69*mus_demo_1_mvl/mxv
	.byte		N05   , Fn2 , v084
	.byte	W01
	.byte		VOL   , 74*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        79*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        83*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        84*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		N05   , Gn2 , v096
	.byte	W01
	.byte		VOL   , 87*mus_demo_1_mvl/mxv
	.byte	W03
	.byte		        89*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        89*mus_demo_1_mvl/mxv
	.byte		N07   , As2 , v104
	.byte	W01
	.byte		VOL   , 94*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        97*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        98*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        101*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        105*mus_demo_1_mvl/mxv
	.byte	W07
	.byte		N11   
	.byte	W07
	.byte		VOL   , 103*mus_demo_1_mvl/mxv
	.byte	W05
	.byte		N05   , Cn3 , v096
	.byte	W01
	.byte		VOL   , 105*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        108*mus_demo_1_mvl/mxv
	.byte	W05
	.byte		        110*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        108*mus_demo_1_mvl/mxv
	.byte	W03
	.byte		N03   , Cs3 , v092
	.byte	W01
/* 003   ----------------------------------------
 */	.byte		VOL   , 106*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		N42   , Dn3 , v100
	.byte	W05
	.byte		VOL   , 105*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        103*mus_demo_1_mvl/mxv
	.byte	W06
	.byte		        105*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        106*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        108*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        112*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        114*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        116*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        117*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        120*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        125*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        127*mus_demo_1_mvl/mxv
	.byte	W21
	.byte		N05   , Cs3 , v108
	.byte	W06
	.byte		N06   , Dn3 , v076
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N11   , Ds3 , v100
	.byte	W12
	.byte		N07   , Dn3 , v072
	.byte	W12
/* 004   ----------------------------------------
 */	.byte		N11   , As2 , v096
	.byte	W12
	.byte		N05   , Fn2 
	.byte	W13
	.byte		VOL   , 126*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        124*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        120*mus_demo_1_mvl/mxv
	.byte	W04
	.byte		        119*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        117*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        115*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        112*mus_demo_1_mvl/mxv
	.byte		N20   , Fn2 , v060
	.byte	W01
	.byte		VOL   , 112*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        110*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        108*mus_demo_1_mvl/mxv
	.byte	W05
	.byte		        106*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        105*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        103*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        101*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        97*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        96*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        94*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        92*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        89*mus_demo_1_mvl/mxv
	.byte	W03
	.byte		        89*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		N11   
	.byte	W01
	.byte		VOL   , 89*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        93*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        93*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        91*mus_demo_1_mvl/mxv
	.byte	W07
	.byte		        89*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        91*mus_demo_1_mvl/mxv
	.byte		N11   , An2 , v084
	.byte	W01
	.byte		VOL   , 93*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        94*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        97*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        98*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        100*mus_demo_1_mvl/mxv
	.byte	W07
	.byte		N23   , Cn3 , v092
	.byte	W05
	.byte		VOL   , 98*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        100*mus_demo_1_mvl/mxv
	.byte	W03
	.byte		        97*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        94*mus_demo_1_mvl/mxv
	.byte	W01
/* 005   ----------------------------------------
 */	.byte		        94*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        96*mus_demo_1_mvl/mxv
	.byte	W04
	.byte		        97*mus_demo_1_mvl/mxv
	.byte	W04
	.byte		        96*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        94*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		N11   , An2 , v076
	.byte	W01
	.byte		VOL   , 92*mus_demo_1_mvl/mxv
	.byte	W05
	.byte		        89*mus_demo_1_mvl/mxv
	.byte	W06
	.byte		N11   , Cn3 
	.byte	W05
	.byte		VOL   , 89*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        84*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        81*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        77*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        75*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        70*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        67*mus_demo_1_mvl/mxv
	.byte		N23   , Bn2 , v088
	.byte	W03
	.byte		VOL   , 69*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        70*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        73*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        75*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        75*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        78*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        79*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        82*mus_demo_1_mvl/mxv
	.byte	W04
	.byte		        79*mus_demo_1_mvl/mxv
	.byte	W03
	.byte		        82*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        83*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        84*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        87*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        89*mus_demo_1_mvl/mxv
	.byte		N11   , Cn3 , v084
	.byte	W02
	.byte		VOL   , 89*mus_demo_1_mvl/mxv
	.byte	W05
	.byte		        89*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        87*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        89*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        89*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		N11   , Dn3 , v108
	.byte	W04
	.byte		VOL   , 92*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        94*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        96*mus_demo_1_mvl/mxv
	.byte	W04
	.byte		N56   , Ds3 
	.byte	W04
	.byte		VOL   , 97*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        98*mus_demo_1_mvl/mxv
	.byte	W03
	.byte		        101*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        103*mus_demo_1_mvl/mxv
	.byte	W03
/* 006   ----------------------------------------
 */	.byte		        105*mus_demo_1_mvl/mxv
	.byte	W09
	.byte		        103*mus_demo_1_mvl/mxv
	.byte	W03
	.byte		        105*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        106*mus_demo_1_mvl/mxv
	.byte	W04
	.byte		        105*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        103*mus_demo_1_mvl/mxv
	.byte	W03
	.byte		        101*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        98*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        97*mus_demo_1_mvl/mxv
	.byte	W05
	.byte		        96*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        91*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        88*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        79*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        67*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        53*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        37*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        8*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        0*mus_demo_1_mvl/mxv
	.byte	W10
	.byte		        26*mus_demo_1_mvl/mxv
	.byte		N11   , Dn3 , v104
	.byte	W01
	.byte		VOL   , 70*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        101*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        127*mus_demo_1_mvl/mxv
	.byte	W06
	.byte		        122*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        120*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        117*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        115*mus_demo_1_mvl/mxv
	.byte		N11   , Ds3 , v080
	.byte	W01
	.byte		VOL   , 112*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        115*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        117*mus_demo_1_mvl/mxv
	.byte	W05
	.byte		        115*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        117*mus_demo_1_mvl/mxv
	.byte		N11   , Dn3 
	.byte	W02
	.byte		VOL   , 119*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        120*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        122*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        124*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        127*mus_demo_1_mvl/mxv
	.byte	W06
	.byte		N23   , Ds3 , v092
	.byte	W09
	.byte		VOL   , 124*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        122*mus_demo_1_mvl/mxv
	.byte	W02
/* 007   ----------------------------------------
 */	.byte	W01
	.byte		        124*mus_demo_1_mvl/mxv
	.byte	W05
	.byte		        126*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        124*mus_demo_1_mvl/mxv
	.byte	W04
	.byte		N11   , Dn3 , v076
	.byte	W02
	.byte		VOL   , 122*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        120*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        119*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        117*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        115*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        112*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		N32   , Cn3 , v052
	.byte	W01
	.byte		VOL   , 110*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        108*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        106*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        108*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        112*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        112*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        115*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        117*mus_demo_1_mvl/mxv
	.byte	W03
	.byte		        115*mus_demo_1_mvl/mxv
	.byte	W09
	.byte		        112*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        112*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        110*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        108*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        106*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        101*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        92*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        61*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        26*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        0*mus_demo_1_mvl/mxv
	.byte	W03
	.byte		N11   , Cn3 , v088
	.byte	W12
	.byte		VOL   , 37*mus_demo_1_mvl/mxv
	.byte		N11   , Dn3 , v108
	.byte	W01
	.byte		VOL   , 78*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        105*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        127*mus_demo_1_mvl/mxv
	.byte	W09
	.byte		N11   , Ds3 , v088
	.byte	W12
/* 008   ----------------------------------------
 */	.byte		N23   , En3 , v096
	.byte	W24
	.byte		N11   , Gn3 , v104
	.byte	W12
	.byte		N32   , Fn3 , v100
	.byte	W32
	.byte	W01
	.byte		VOL   , 124*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        121*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        117*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        112*mus_demo_1_mvl/mxv
	.byte		N11   , Dn3 , v068
	.byte	W01
	.byte		VOL   , 108*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        107*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        105*mus_demo_1_mvl/mxv
	.byte	W03
	.byte		        107*mus_demo_1_mvl/mxv
	.byte	W03
	.byte		        114*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        122*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        127*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		N09   , An3 , v108
	.byte	W12
/* 009   ----------------------------------------
 */	.byte		VOL   , 82*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        51*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        31*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        23*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        22*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        26*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        32*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        40*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        51*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        63*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        79*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        94*mus_demo_1_mvl/mxv
	.byte		N11   , Gn3 , v076
	.byte	W01
	.byte		VOL   , 114*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        127*mus_demo_1_mvl/mxv
	.byte	W10
	.byte		N09   , An3 , v108
	.byte	W12
	.byte		N32   , Gn3 , v076
	.byte	W32
	.byte	W01
	.byte		VOL   , 112*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        68*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        3*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        0*mus_demo_1_mvl/mxv
	.byte	W09
	.byte		        17*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        45*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        69*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        105*mus_demo_1_mvl/mxv
	.byte		N05   , Fs3 , v096
	.byte	W01
	.byte		VOL   , 127*mus_demo_1_mvl/mxv
	.byte	W05
	.byte		N05   , Gn3 , v092
	.byte	W06
/* 010   ----------------------------------------
 */	.byte		N10   , As3 , v116
	.byte	W17
	.byte		VOL   , 122*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        117*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        112*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        112*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        110*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        108*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		N17   , Gn3 , v112
	.byte	W01
	.byte		VOL   , 110*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        120*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        127*mus_demo_1_mvl/mxv
	.byte	W09
	.byte		        124*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        120*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        117*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        112*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        111*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        106*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        102*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        100*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        97*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        94*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        97*mus_demo_1_mvl/mxv
	.byte		N12   , Ds3 , v108
	.byte	W01
	.byte		VOL   , 102*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        103*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        107*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        108*mus_demo_1_mvl/mxv
	.byte	W03
	.byte		        107*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        105*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        103*mus_demo_1_mvl/mxv
	.byte	W03
	.byte		N11   , Dn3 , v092
	.byte	W01
	.byte		VOL   , 105*mus_demo_1_mvl/mxv
	.byte	W04
	.byte		        103*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        102*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        100*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        98*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        97*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		N12   , Cn3 , v080
	.byte	W05
	.byte		VOL   , 94*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        93*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        91*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        97*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        103*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        116*mus_demo_1_mvl/mxv
	.byte		N22   , Fn3 , v100
	.byte	W01
	.byte		VOL   , 126*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        127*mus_demo_1_mvl/mxv
	.byte	W10
/* 011   ----------------------------------------
 */	.byte	W02
	.byte		        126*mus_demo_1_mvl/mxv
	.byte	W04
	.byte		        124*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        121*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        117*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        116*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        112*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        111*mus_demo_1_mvl/mxv
	.byte		N05   , Fn2 , v092
	.byte	W01
	.byte		VOL   , 105*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        103*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        102*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        100*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        98*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        94*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        92*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        87*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        83*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        81*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        79*mus_demo_1_mvl/mxv
	.byte		N05   , Fn2 , v080
	.byte	W02
	.byte		VOL   , 82*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        84*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        92*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        96*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        98*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        103*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        98*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        97*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        96*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		N05   , Fn2 , v052
	.byte	W03
	.byte		VOL   , 97*mus_demo_1_mvl/mxv
	.byte	W05
	.byte		        94*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        92*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        94*mus_demo_1_mvl/mxv
	.byte		N06   , Fn2 , v068
	.byte	W01
	.byte		VOL   , 96*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        98*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        103*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        105*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        106*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        105*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        103*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        101*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        98*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		N08   , Fn2 , v080
	.byte	W01
	.byte		VOL   , 98*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        100*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        102*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        103*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        102*mus_demo_1_mvl/mxv
	.byte	W03
	.byte		        100*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        98*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        100*mus_demo_1_mvl/mxv
	.byte		N06   , Fn2 , v084
	.byte	W01
	.byte		VOL   , 102*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        103*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        107*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        108*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        112*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        114*mus_demo_1_mvl/mxv
	.byte		N06   , Gn2 , v096
	.byte	W02
	.byte		VOL   , 117*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        120*mus_demo_1_mvl/mxv
	.byte	W02
	.byte		        121*mus_demo_1_mvl/mxv
	.byte		N05   , As2 , v124
	.byte	W01
	.byte		VOL   , 120*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        121*mus_demo_1_mvl/mxv
	.byte	W03
	.byte		        121*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        120*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        117*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        114*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        110*mus_demo_1_mvl/mxv
	.byte	W03
/* 012   ----------------------------------------
 */	.byte		N14   , As2 , v120
	.byte	W01
	.byte		VOL   , 119*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        126*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        127*mus_demo_1_mvl/mxv
	.byte	W09
	.byte		        117*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        96*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        70*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        50*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        37*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        22*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        9*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        0*mus_demo_1_mvl/mxv
	.byte	W76
	.byte	W01
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
	.byte	GOTO
	 mPtr	mus_demo_1_2_B1
mus_demo_1_2_B2:
/* 020   ----------------------------------------
 */	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_demo_1_3:
	.byte	KEYSH , mus_demo_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 49
	.byte		VOL   , 127*mus_demo_1_mvl/mxv
	.byte		BENDR , 59
	.byte		N13   , Cn2 , v127
	.byte	W18
	.byte		N24   
	.byte	W30
	.byte		N14   , Dn2 
	.byte	W18
	.byte		N23   
	.byte	W30
/* 001   ----------------------------------------
 */	.byte		N15   , Ds2 
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N23   , Fn2 
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N04   , Cn2 
	.byte	W06
	.byte		N10   , Fn1 
	.byte	W12
mus_demo_1_3_B1:
/* 002   ----------------------------------------
 */	.byte		N15   , As1 , v127
	.byte	W24
	.byte		N10   , As2 
	.byte	W18
	.byte		N07   , As1 
	.byte	W06
	.byte		N08   , Dn2 
	.byte	W12
	.byte		N15   
	.byte	W24
	.byte		N21   , Ds2 
	.byte	W12
/* 003   ----------------------------------------
 */	.byte	W12
	.byte		N18   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N11   , Fn2 
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W12
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N08   , Ds2 
	.byte	W12
/* 004   ----------------------------------------
 */	.byte		N19   , Dn2 
	.byte	W24
	.byte		N14   
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N08   , An2 
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N18   , Gn2 
	.byte	W12
/* 005   ----------------------------------------
 */	.byte	W12
	.byte		N14   
	.byte	W24
	.byte		N04   , Dn2 
	.byte	W12
	.byte		N05   , Gn1 
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N04   , Bn1 
	.byte	W06
	.byte		N05   , Cn2 
	.byte	W06
	.byte		N11   , Dn2 
	.byte	W12
/* 006   ----------------------------------------
 */	.byte		N17   , Cn2 
	.byte	W24
	.byte		        Cn3 
	.byte	W18
	.byte		N05   , Gn2 
	.byte	W06
	.byte		N11   , Cn2 
	.byte	W12
	.byte		N07   , Dn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N19   , Fn2 
	.byte	W12
/* 007   ----------------------------------------
 */	.byte	W12
	.byte		N21   
	.byte	W24
	.byte		N03   , Cn2 
	.byte	W12
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N04   , Cn2 
	.byte	W12
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N10   , Ds2 
	.byte	W12
/* 008   ----------------------------------------
 */	.byte		N17   , Dn2 
	.byte	W24
	.byte		N13   
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N08   , An2 
	.byte	W12
	.byte		N05   , Dn2 
	.byte	W12
	.byte		N11   , An2 
	.byte	W12
	.byte		N19   , Gn2 
	.byte	W12
/* 009   ----------------------------------------
 */	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N20   , Gn1 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N05   , Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N10   , Dn2 
	.byte	W12
/* 010   ----------------------------------------
 */	.byte		N16   , Cn2 
	.byte	W24
	.byte		N12   
	.byte	W18
	.byte		N04   , Gn2 
	.byte	W06
	.byte		N08   , Cn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N05   , Ds2 
	.byte	W12
	.byte		N19   , Fn2 
	.byte	W12
/* 011   ----------------------------------------
 */	.byte	W12
	.byte		N04   , Fn1 
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N08   
	.byte	W24
	.byte		N07   
	.byte	W06
	.byte		N06   , Gn1 
	.byte	W06
	.byte		N05   , As1 
	.byte	W12
/* 012   ----------------------------------------
 */	.byte		N14   
	.byte	W24
	.byte		N13   , As2 
	.byte	W18
	.byte		N06   , As1 
	.byte	W06
	.byte		N07   , Dn2 
	.byte	W12
	.byte		N16   
	.byte	W24
	.byte		N19   , Ds2 
	.byte	W12
/* 013   ----------------------------------------
 */	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		N09   , Ds1 
	.byte	W12
	.byte		N19   , Fn1 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N04   , Fn2 
	.byte	W06
	.byte		N05   , Cn2 
	.byte	W06
	.byte		N09   , Fn1 
	.byte	W12
/* 014   ----------------------------------------
 */	.byte		N16   , As1 
	.byte	W24
	.byte		N13   , As2 
	.byte	W18
	.byte		N05   , As1 
	.byte	W06
	.byte		N08   , Dn2 
	.byte	W12
	.byte		N17   
	.byte	W18
	.byte		N02   , Ds2 
	.byte	W06
	.byte		N18   
	.byte	W12
/* 015   ----------------------------------------
 */	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N17   , Fn2 
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N07   , As2 
	.byte	W12
/* 016   ----------------------------------------
 */	.byte		N15   , As1 
	.byte	W24
	.byte		N16   , As2 
	.byte	W18
	.byte		N05   , As1 
	.byte	W06
	.byte		N08   , Dn2 
	.byte	W12
	.byte		N17   
	.byte	W24
	.byte		N21   , Ds2 
	.byte	W12
/* 017   ----------------------------------------
 */	.byte	W12
	.byte		N06   , Ds1 
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N19   , Fn1 
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N07   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N08   , As1 
	.byte	W12
/* 018   ----------------------------------------
 */	.byte		N22   
	.byte	W24
	.byte		N09   , As2 
	.byte	W18
	.byte		N05   , As1 
	.byte	W06
	.byte		N08   , Dn2 
	.byte	W12
	.byte		N06   , Ds2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N22   , Fn2 
	.byte	W12
/* 019   ----------------------------------------
 */	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N07   
	.byte	W24
	.byte		N23   , Fn1 
	.byte	W24
	.byte	GOTO
	 mPtr	mus_demo_1_3_B1
mus_demo_1_3_B2:
/* 020   ----------------------------------------
 */	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_demo_1_4:
	.byte	KEYSH , mus_demo_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 87
	.byte		VOL   , 89*mus_demo_1_mvl/mxv
	.byte		MODT  , 2
	.byte		LFOS  , 48
	.byte		MOD   , 42
	.byte		N13   , Fn2 , v080
	.byte		N13   , As2 
	.byte		N14   , Dn3 , v084
	.byte	W18
	.byte		N24   , Fn2 , v096
	.byte		N28   , As2 , v104
	.byte		N28   , Dn3 , v116
	.byte	W30
	.byte		N14   , Gn2 , v096
	.byte		N15   , Cn3 
	.byte		N14   , En3 
	.byte	W18
	.byte		N23   , Gn2 
	.byte		N23   , Cn3 , v100
	.byte		N24   , En3 , v104
	.byte	W30
/* 001   ----------------------------------------
 */	.byte		N14   , Gs2 , v096
	.byte		N15   , Cs3 , v092
	.byte		N15   , Fn3 , v096
	.byte	W18
	.byte		N05   , Gs2 , v108
	.byte		N06   , Cs3 , v096
	.byte		N06   , Fn3 , v104
	.byte	W18
	.byte		N32   , As2 , v108
	.byte		N32   , Ds3 , v096
	.byte		N32   , Gn3 , v108
	.byte	W36
	.byte		N17   , Cn3 , v096
	.byte		N19   , Fn3 , v100
	.byte		N22   , An3 , v096
	.byte	W24
mus_demo_1_4_B1:
/* 002   ----------------------------------------
 */	.byte		N09   , Gs2 , v072
	.byte		N10   , Dn3 , v064
	.byte	W24
	.byte		N05   , Cs3 , v088
	.byte		N14   , Fn3 , v100
	.byte	W01
	.byte		        Dn3 , v084
	.byte	W17
	.byte		N02   , Dn3 , v108
	.byte		N03   , Fn3 , v096
	.byte	W18
	.byte		N08   , Dn3 
	.byte		N08   , Fn3 
	.byte	W13
	.byte		N02   , Gn2 , v072
	.byte	W12
	.byte		N44   , Gn2 , v076
	.byte		N44   , As2 , v092
	.byte	W11
/* 003   ----------------------------------------
 */	.byte	W36
	.byte	W01
	.byte		N02   , Gn2 , v088
	.byte		N02   , As2 , v096
	.byte	W12
	.byte		N16   , Gn2 , v088
	.byte		N18   , Cs3 , v096
	.byte	W23
	.byte		N08   , Gn2 , v076
	.byte		N12   , Ds3 , v100
	.byte	W11
	.byte		N06   , Gn2 , v056
	.byte	W01
	.byte		N05   , Cs3 
	.byte	W12
/* 004   ----------------------------------------
 */	.byte	W01
	.byte		N24   , Fn2 , v068
	.byte		N24   , An2 , v060
	.byte	W48
	.byte		N02   , Cn3 , v068
	.byte	W01
	.byte		        Fn2 , v044
	.byte		N02   , An2 , v036
	.byte	W11
	.byte		N14   , Fn2 , v084
	.byte		N14   , Cn3 
	.byte	W24
	.byte	W02
	.byte		N30   , Fn2 , v060
	.byte		N30   , An2 
	.byte		N30   , Cn3 , v068
	.byte	W09
/* 005   ----------------------------------------
 */	.byte	W24
	.byte	W01
	.byte		N06   , Fn2 , v096
	.byte		N06   , An2 
	.byte		N10   , Cn3 , v080
	.byte	W13
	.byte		N54   , Bn2 , v088
	.byte	W01
	.byte		N52   , Fn2 , v080
	.byte		N52   , Gs2 
	.byte	W56
	.byte		N21   , Ds3 , v092
	.byte	W01
/* 006   ----------------------------------------
 */	.byte		        As2 , v084
	.byte	W01
	.byte		N19   , Gn2 , v048
	.byte	W23
	.byte		N16   , Ds3 , v096
	.byte	W01
	.byte		N05   , Gn2 , v076
	.byte		N08   , As2 , v080
	.byte	W11
	.byte		N03   , Gn2 , v020
	.byte	W07
	.byte		        Gn2 , v076
	.byte		N02   , As2 
	.byte		N02   , Ds3 , v100
	.byte	W19
	.byte		N05   , Ds3 , v088
	.byte	W01
	.byte		N04   , Gn2 , v060
	.byte		N05   , As2 , v080
	.byte	W12
	.byte		N02   , Ds2 , v076
	.byte	W11
	.byte		N20   , Gn2 , v092
	.byte		N20   , As2 , v096
	.byte		N20   , Ds3 , v104
	.byte	W10
/* 007   ----------------------------------------
 */	.byte	W13
	.byte		N02   , Gn2 , v040
	.byte		N02   , As2 , v048
	.byte		N03   , Ds3 , v072
	.byte	W13
	.byte		N02   , Fn2 , v052
	.byte	W10
	.byte		N30   , An2 , v072
	.byte		N30   , Cn3 
	.byte		N30   , Ds3 , v088
	.byte	W32
	.byte	W03
	.byte		N22   , Ds2 , v092
	.byte		N21   , An2 , v072
	.byte		N22   , Cn3 , v076
	.byte	W24
	.byte	W01
/* 008   ----------------------------------------
 */	.byte	W01
	.byte		N52   , Fn2 , v084
	.byte		N52   , An2 , v076
	.byte		N48   , Cn3 
	.byte	W56
	.byte	W02
	.byte		N06   , Fn3 , v088
	.byte	W02
	.byte		N02   , An2 , v076
	.byte		N04   , Cn3 , v060
	.byte	W12
	.byte		N11   , An2 , v076
	.byte		N03   , Cn3 , v068
	.byte		N10   , Fn3 , v084
	.byte	W11
	.byte		N20   , Fn2 , v100
	.byte		N20   , Bn2 , v076
	.byte	W01
	.byte		N21   , Ds3 , v108
	.byte	W11
/* 009   ----------------------------------------
 */	.byte	W12
	.byte		N04   , Fn2 , v084
	.byte		N06   , Ds3 , v096
	.byte	W01
	.byte		        Bn2 , v056
	.byte	W11
	.byte		N03   , Fn2 , v080
	.byte	W13
	.byte		N56   , Fn2 , v096
	.byte		N56   , Bn2 , v084
	.byte		N56   , Dn3 , v100
	.byte	W56
	.byte	W03
/* 010   ----------------------------------------
 */	.byte		N08   , As2 , v076
	.byte	W01
	.byte		        Gn2 , v088
	.byte		N09   , Ds3 , v092
	.byte	W24
	.byte		N13   , Gn2 , v076
	.byte		N14   , As2 , v084
	.byte		N14   , Ds3 , v092
	.byte	W17
	.byte		N03   , As2 , v080
	.byte		N04   , Ds3 , v100
	.byte	W01
	.byte		        Gn2 , v072
	.byte	W16
	.byte		N20   , Ds3 , v084
	.byte	W01
	.byte		N18   , Gn3 , v048
	.byte	W12
	.byte		N03   , Gn2 , v076
	.byte	W13
	.byte		N16   , An2 , v072
	.byte	W01
	.byte		        Ds2 , v076
	.byte		N17   , Fn3 , v056
	.byte	W10
/* 011   ----------------------------------------
 */	.byte	W11
	.byte		N02   , Ds2 , v052
	.byte		N03   , An2 , v068
	.byte		N04   , Fn3 , v096
	.byte	W12
	.byte		        Fn3 , v100
	.byte	W01
	.byte		N02   , Ds2 , v080
	.byte		N02   , An2 , v068
	.byte	W11
	.byte		N08   , Ds2 , v088
	.byte		N07   , An2 , v092
	.byte		N08   , Fn3 , v096
	.byte	W15
	.byte		N02   , Bn2 , v036
	.byte	W02
	.byte		        An2 , v072
	.byte	W02
	.byte		        Gn2 
	.byte	W01
	.byte		        Fn2 , v076
	.byte	W02
	.byte		        En2 , v072
	.byte	W02
	.byte		        Dn2 , v060
	.byte	W02
	.byte		        Cn2 , v048
	.byte	W05
	.byte		        Gn1 , v028
	.byte	W01
	.byte		N05   , Fn1 , v072
	.byte	W04
	.byte		N02   , Gn1 , v028
	.byte	W02
	.byte		        An1 , v084
	.byte	W01
	.byte		N04   , Bn1 , v108
	.byte	W02
	.byte		N05   , Cn2 , v084
	.byte	W03
	.byte		N02   , Dn2 , v032
	.byte	W02
	.byte		N01   , En2 , v076
	.byte	W02
	.byte		N02   , Fn2 , v040
	.byte	W02
	.byte		        Gn2 , v044
	.byte	W02
	.byte		        An2 , v056
	.byte	W01
	.byte		        Bn2 , v064
	.byte	W08
/* 012   ----------------------------------------
 */	.byte	W01
	.byte		N05   , Dn3 , v084
	.byte	W24
	.byte		N13   , As3 , v127
	.byte	W01
	.byte		N14   , Gs2 , v112
	.byte		N13   , Dn3 , v120
	.byte	W16
	.byte		N04   , Dn3 , v104
	.byte		N04   , As3 , v124
	.byte	W01
	.byte		N02   , Gs2 , v096
	.byte	W08
	.byte		N03   , Gs2 , v076
	.byte	W10
	.byte		N15   , Dn3 , v100
	.byte		N11   , Gs3 , v120
	.byte	W02
	.byte		N14   , Gs2 , v088
	.byte	W21
	.byte		N36   , Cs3 , v100
	.byte		N36   , Gn3 , v104
	.byte	W01
	.byte		N19   , Gn2 , v100
	.byte	W11
/* 013   ----------------------------------------
 */	.byte	W12
	.byte		N02   , Gn2 , v096
	.byte	W12
	.byte		N05   , Gn2 , v108
	.byte	W11
	.byte		        Cs3 , v112
	.byte		N06   , Gn3 , v108
	.byte	W06
	.byte		N04   , Cn3 , v080
	.byte	W06
	.byte		N06   , Gn3 , v092
	.byte	W01
	.byte		N05   , Cs3 
	.byte	W06
	.byte		N06   , Cn3 , v084
	.byte	W05
	.byte		        Gn3 , v052
	.byte	W01
	.byte		N05   , Cs3 , v092
	.byte	W06
	.byte		N06   , Cn3 , v080
	.byte	W06
	.byte		N05   , Cs3 , v112
	.byte	W01
	.byte		        Gn3 , v104
	.byte	W05
	.byte		N03   , Cn3 , v076
	.byte	W07
	.byte		        As2 , v104
	.byte	W05
	.byte		        Gn2 , v096
	.byte	W05
	.byte		N09   , As2 , v124
	.byte	W01
/* 014   ----------------------------------------
 */	.byte	W11
	.byte		N12   
	.byte	W12
	.byte		N11   , Gn2 , v092
	.byte	W13
	.byte		N05   , Cs3 , v112
	.byte		N19   , Fn3 , v104
	.byte	W03
	.byte		N16   , Dn3 , v068
	.byte	W16
	.byte		N02   , Gn2 , v044
	.byte	W03
	.byte		N05   , Dn3 , v108
	.byte		N05   , Fn3 , v100
	.byte	W14
	.byte		N02   , Gn2 , v032
	.byte	W12
	.byte		N21   , Dn3 , v104
	.byte		N18   , Fn3 
	.byte	W12
/* 015   ----------------------------------------
 */	.byte	W11
	.byte		N05   , Gn2 , v084
	.byte		N05   , Ds3 , v088
	.byte	W13
	.byte		N11   , Ds3 , v108
	.byte	W01
	.byte		N09   , Gn2 , v088
	.byte	W11
	.byte		N06   , Cs3 , v076
	.byte	W02
	.byte		N02   , Gn2 , v068
	.byte		N23   , Dn3 , v096
	.byte	W22
	.byte		N11   , As2 , v108
	.byte	W13
	.byte		N05   , Fn2 , v072
	.byte	W06
	.byte		N06   , Ds2 , v096
	.byte	W05
	.byte		N12   , Cs2 , v104
	.byte	W12
/* 016   ----------------------------------------
 */	.byte	W02
	.byte		N07   , Dn2 , v108
	.byte	W10
	.byte		N12   , Dn2 , v052
	.byte	W12
	.byte		N05   , Cs3 , v112
	.byte		N13   , Fn3 , v108
	.byte	W03
	.byte		N12   , Dn3 , v084
	.byte	W15
	.byte		N05   , Dn3 , v116
	.byte		N04   , Fn3 , v096
	.byte	W08
	.byte		N02   , Gn2 , v076
	.byte	W11
	.byte		N12   , Dn3 
	.byte		N05   , En3 
	.byte		N11   , Fn3 , v096
	.byte	W11
	.byte		N02   , Gn2 , v084
	.byte	W12
	.byte		N19   , Ds3 , v108
	.byte		N19   , Gn3 
	.byte	W12
/* 017   ----------------------------------------
 */	.byte	W11
	.byte		N08   , Ds3 , v084
	.byte	W01
	.byte		N07   , Gn3 , v072
	.byte	W03
	.byte		N03   , As2 , v032
	.byte	W09
	.byte		        As2 , v048
	.byte		N02   , Dn3 , v076
	.byte		N05   , Fs3 , v108
	.byte		N08   , As3 
	.byte	W03
	.byte		N05   , Gn3 , v068
	.byte	W09
	.byte		N24   , Gn3 , v112
	.byte		N22   , As3 , v104
	.byte	W24
	.byte	W01
	.byte		N11   , Fn3 
	.byte		N10   , An3 , v092
	.byte	W12
	.byte		N07   , Ds3 , v104
	.byte	W01
	.byte		N09   , Gn3 , v096
	.byte	W01
	.byte		N03   , As2 , v060
	.byte	W11
	.byte		N32   , Dn3 , v096
	.byte		N32   , Fn3 
	.byte	W10
/* 018   ----------------------------------------
 */	.byte	W24
	.byte	W01
	.byte		N06   , Cs3 , v104
	.byte		N14   , Fn3 , v108
	.byte	W04
	.byte		N11   , Dn3 , v100
	.byte	W14
	.byte		N04   , Fn3 
	.byte	W01
	.byte		N02   , Dn3 , v108
	.byte	W06
	.byte		N01   , Dn2 , v064
	.byte	W10
	.byte		N19   , As2 , v100
	.byte	W01
	.byte		N16   , Fn2 , v060
	.byte		N16   , Dn3 , v084
	.byte	W11
	.byte		N04   , Dn2 , v088
	.byte	W12
	.byte		N17   , Gn2 , v100
	.byte	W01
	.byte		N18   , As2 , v080
	.byte	W11
/* 019   ----------------------------------------
 */	.byte	W12
	.byte		N04   , Gn2 , v096
	.byte		N04   , As2 , v084
	.byte	W12
	.byte		        Gn2 , v100
	.byte		N04   , As2 , v108
	.byte	W12
	.byte		N03   , Gn2 , v112
	.byte	W01
	.byte		        As2 , v088
	.byte	W12
	.byte		N04   , Gn2 , v127
	.byte		N04   , As2 , v116
	.byte	W44
	.byte	W03
	.byte	GOTO
	 mPtr	mus_demo_1_4_B1
mus_demo_1_4_B2:
/* 020   ----------------------------------------
 */	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_demo_1_5:
	.byte	KEYSH , mus_demo_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 64
	.byte		VOL   , 110*mus_demo_1_mvl/mxv
	.byte		N13   , Fn3 , v108
	.byte	W18
	.byte		N28   , Fn3 , v120
	.byte	W30
	.byte		N14   , Gn3 , v127
	.byte	W18
	.byte		N28   , Gn3 , v124
	.byte	W30
/* 001   ----------------------------------------
 */	.byte		N16   , Gs3 
	.byte	W18
	.byte		N07   , Gs3 , v120
	.byte	W18
	.byte		N32   , As3 , v127
	.byte	W36
	.byte		N23   , Cn4 , v124
	.byte	W24
mus_demo_1_5_B1:
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
	.byte	GOTO
	 mPtr	mus_demo_1_5_B1
mus_demo_1_5_B2:
/* 020   ----------------------------------------
 */	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_demo_1_6:
	.byte	KEYSH , mus_demo_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 63
	.byte		VOL   , 110*mus_demo_1_mvl/mxv
	.byte	W96
/* 001   ----------------------------------------
 */	.byte		BEND  , c_v+0
	.byte	W96
mus_demo_1_6_B1:
/* 002   ----------------------------------------
 */mus_demo_1_6_002:
	.byte		N19   , As2 , v127
	.byte		N22   , As3 
	.byte	W20
	.byte		N03   , An2 , v064
	.byte	W04
	.byte		N02   , Gn2 , v048
	.byte	W04
	.byte		        Fn2 , v044
	.byte	W02
	.byte		        En2 , v056
	.byte	W04
	.byte		N01   , Dn2 
	.byte	W03
	.byte		N02   , Cn2 , v036
	.byte	W56
	.byte	W03
	.byte	PEND
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
 */	.byte	PATT
	 mPtr	mus_demo_1_6_002
/* 013   ----------------------------------------
 */	.byte	W24
	.byte		N06   , Fn2 , v112
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Gn2 , v124
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Gn2 , v108
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        As2 , v120
	.byte		N06   , As3 
	.byte	W06
	.byte		        As2 , v108
	.byte		N06   , As3 
	.byte	W06
	.byte		        Gn2 , v112
	.byte		N06   , Gn3 
	.byte	W12
	.byte		N12   , As2 , v124
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fn3 , v112
	.byte		N12   , Dn4 , v116
	.byte		N12   , Fn4 , v112
	.byte	W09
	.byte		BEND  , c_v+8
	.byte	W01
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+33
	.byte	W01
/* 014   ----------------------------------------
 */	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+60
	.byte	W01
	.byte		        c_v+63
	.byte	W02
	.byte		        c_v+62
	.byte	W01
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+0
	.byte	W90
/* 015   ----------------------------------------
 */	.byte		VOL   , 110*mus_demo_1_mvl/mxv
	.byte	W09
	.byte		        110*mus_demo_1_mvl/mxv
	.byte	W03
	.byte		N40   , Fn2 , v120
	.byte		N40   , Fn3 , v127
	.byte	W05
	.byte		VOL   , 102*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        89*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        79*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        67*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        53*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        45*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        36*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        37*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        41*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        44*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        46*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        49*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        51*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        54*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        58*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        61*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        63*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        65*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        69*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        70*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        74*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        78*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        79*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        83*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        86*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        88*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        91*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        94*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        96*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        100*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        103*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        105*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        108*mus_demo_1_mvl/mxv
	.byte	W01
	.byte		        110*mus_demo_1_mvl/mxv
	.byte	W10
	.byte		N11   , Fn2 , v124
	.byte		N11   , Fn3 , v127
	.byte	W12
	.byte		        Gn2 
	.byte		N11   , Gn3 
	.byte	W12
	.byte		N19   , As2 
	.byte		N22   , As3 
	.byte	W12
/* 016   ----------------------------------------
 */	.byte	W08
	.byte		N03   , An2 , v064
	.byte	W04
	.byte		N02   , Gn2 , v048
	.byte	W04
	.byte		        Fn2 , v044
	.byte	W02
	.byte		        En2 , v056
	.byte	W04
	.byte		N01   , Dn2 
	.byte	W03
	.byte		N02   , Cn2 , v036
	.byte	W68
	.byte	W03
/* 017   ----------------------------------------
 */	.byte	W36
	.byte		        Gn2 , v084
	.byte		N04   , As2 , v112
	.byte	W06
	.byte		N03   , Gn2 , v084
	.byte		N02   , As2 , v104
	.byte	W06
	.byte		N03   , Gn2 , v112
	.byte	W06
	.byte		N02   , Cs3 , v116
	.byte		N04   , Gn3 , v120
	.byte	W12
	.byte		N02   , Gn2 , v020
	.byte	W06
	.byte		        Cs3 , v116
	.byte		N04   , Gn3 , v120
	.byte	W06
	.byte		N02   , Cs3 , v116
	.byte		N04   , Gn3 , v120
	.byte	W18
/* 018   ----------------------------------------
 */	.byte	W84
	.byte	W01
	.byte		N18   , As2 , v116
	.byte		N18   , Ds3 
	.byte	W01
	.byte		N16   , Gn2 , v084
	.byte	W10
/* 019   ----------------------------------------
 */	.byte	W12
	.byte		N05   , Gn2 , v092
	.byte		N05   , As2 
	.byte		N05   , Ds3 
	.byte	W12
	.byte		N04   , Gn2 , v100
	.byte		N04   , As2 , v120
	.byte		N06   , Ds3 , v127
	.byte	W12
	.byte		N04   , Gn2 , v104
	.byte		N05   , As2 , v124
	.byte		N06   , Ds3 
	.byte	W12
	.byte		N04   , Gn2 , v112
	.byte		N04   , As2 , v127
	.byte		N05   , Ds3 
	.byte	W24
	.byte		N12   , Fn3 
	.byte	W01
	.byte		N11   , Fn2 , v124
	.byte	W23
	.byte	GOTO
	 mPtr	mus_demo_1_6_B1
mus_demo_1_6_B2:
/* 020   ----------------------------------------
 */	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_demo_1):
	.byte	6	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_demo_1_pri	/* Priority */
	.byte	mus_demo_1_rev	/* Reverb */

mAlignWord
	mPtr	mus_demo_1_grp

	mPtr	mus_demo_1_1
	mPtr	mus_demo_1_2
	mPtr	mus_demo_1_3
	mPtr	mus_demo_1_4
	mPtr	mus_demo_1_5
	mPtr	mus_demo_1_6

	.end
