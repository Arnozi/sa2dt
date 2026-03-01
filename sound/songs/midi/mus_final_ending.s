	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_final_ending_grp, voicegroup020
	.equ	mus_final_ending_pri, 0
	.equ	mus_final_ending_rev, reverb_set+0
	.equ	mus_final_ending_mvl, 100
	.equ	mus_final_ending_key, 0
	.equ	mus_final_ending_tbs, 1
	.equ	mus_final_ending_exg, 1
	.equ	mus_final_ending_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_final_ending)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

mus_final_ending_1:
	.byte	KEYSH , mus_final_ending_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 144*mus_final_ending_tbs/2
	.byte		VOICE , 22
	.byte		VOL   , 127*mus_final_ending_mvl/mxv
	.byte		LFOS  , 84
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 78
	.byte	W02
	.byte		N12   , Gs1 , v084
	.byte		N12   , Dn2 
	.byte	W09
	.byte		N14   , Bn1 
	.byte		N14   , Fn2 
	.byte	W11
	.byte		        Gs1 
	.byte		N14   , Dn2 
	.byte	W10
	.byte		N16   , Bn1 
	.byte		N16   , Fn2 
	.byte	W13
	.byte		N20   , Gs1 
	.byte		N20   , Dn2 
	.byte	W12
	.byte		N15   , Bn1 , v060
	.byte		N15   , Fn2 
	.byte	W14
	.byte		N30   , Gs1 , v084
	.byte		N30   , Dn2 
	.byte	W13
	.byte		N22   , Bn1 , v068
	.byte		N22   , Fn2 
	.byte	W12
@ 001   ----------------------------------------
	.byte	W11
	.byte		N13   , Gs1 , v084
	.byte		N13   , Dn2 
	.byte	W11
	.byte		N19   , Bn1 , v088
	.byte		N19   , Fn2 
	.byte	W18
	.byte		N13   , Gs1 , v076
	.byte		N13   , Dn2 
	.byte	W08
@ 002   ----------------------------------------
	.byte	W02
	.byte		N11   , Bn1 , v088
	.byte		N11   , Fn2 
	.byte	W10
	.byte		N16   , Gs1 , v076
	.byte		N16   , Dn2 
	.byte	W11
	.byte		N14   , Bn1 , v048
	.byte		N14   , Fn2 
	.byte	W13
	.byte		N12   , Gs1 , v084
	.byte		N12   , Dn2 
	.byte	W09
	.byte		N14   , Bn1 
	.byte		N14   , Fn2 
	.byte	W03
@ 003   ----------------------------------------
	.byte	W08
	.byte		        Gs1 
	.byte		N14   , Dn2 
	.byte	W11
	.byte		        Bn1 , v076
	.byte		N14   , Fn2 
	.byte	W12
	.byte		N15   , Gs1 , v084
	.byte		N15   , Dn2 
	.byte	W11
	.byte		N18   , Bn1 , v060
	.byte		N18   , Fn2 
	.byte	W06
@ 004   ----------------------------------------
	.byte	W10
	.byte		N14   , Gs1 , v084
	.byte		N14   , Dn2 
	.byte	W11
	.byte		N23   , Bn1 , v096
	.byte		N23   , Fn2 
	.byte	W15
	.byte		N16   , Gs1 , v056
	.byte		N16   , Dn2 
	.byte	W12
@ 005   ----------------------------------------
	.byte	W02
	.byte		N12   , Bn1 , v100
	.byte		N12   , Fn2 
	.byte	W11
	.byte		        Gs1 , v088
	.byte		N12   , Dn2 
	.byte	W11
	.byte		N18   , Bn1 , v060
	.byte		N18   , Fn2 
	.byte	W16
	.byte		N14   , Gs1 , v084
	.byte		N14   , Dn2 
	.byte	W08
@ 006   ----------------------------------------
	.byte	W03
	.byte		N23   , Bn1 , v096
	.byte		N23   , Fn2 
	.byte	W15
	.byte		N16   , Gs1 , v056
	.byte		N16   , Dn2 
	.byte	W14
	.byte		N12   , Bn1 , v100
	.byte		N12   , Fn2 
	.byte	W11
	.byte		        Gs1 , v088
	.byte		N12   , Dn2 
	.byte	W05
@ 007   ----------------------------------------
	.byte	W11
	.byte		N14   , Bn1 , v096
	.byte		N14   , Fn2 
	.byte	W02
	.byte		N10   , Gs1 , v084
	.byte		N10   , Dn2 
	.byte	W18
	.byte		        Gs1 , v088
	.byte		N10   , Dn2 
	.byte	W09
	.byte		N15   , Bn1 , v096
	.byte		N15   , Fn2 
	.byte	W08
@ 008   ----------------------------------------
	.byte	W04
	.byte		N03   , Gn1 , v040
	.byte		N03   , Cs2 
	.byte	W04
	.byte		N13   , Gs1 , v052
	.byte		N13   , Dn2 
	.byte	W10
	.byte		N15   , Bn1 , v092
	.byte		N15   , Fn2 
	.byte	W11
	.byte		        Gs1 , v080
	.byte		N15   , Dn2 
	.byte	W13
	.byte		        Bn1 , v072
	.byte		N15   , Fn2 
	.byte	W06
@ 009   ----------------------------------------
	.byte	W06
	.byte		N16   , Gs1 , v076
	.byte		N16   , Dn2 
	.byte	W01
	.byte		VOL   , 127*mus_final_ending_mvl/mxv
	.byte	W04
	.byte		        126*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        125*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        124*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        122*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		N17   , Bn1 , v088
	.byte		N17   , Fn2 
	.byte	W01
	.byte		VOL   , 122*mus_final_ending_mvl/mxv
	.byte	W03
	.byte		        121*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        120*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        119*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        117*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        117*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		N16   , Gs1 , v056
	.byte		N16   , Dn2 
	.byte	W01
	.byte		VOL   , 116*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        115*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        114*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        112*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        112*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        111*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        110*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		N11   , Bn1 , v096
	.byte		N11   , Fn2 
	.byte	W01
	.byte		VOL   , 108*mus_final_ending_mvl/mxv
	.byte	W02
@ 010   ----------------------------------------
	.byte	W01
	.byte		        108*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        107*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        106*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        105*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		N08   , As1 , v088
	.byte		N08   , En2 
	.byte	W01
	.byte		VOL   , 103*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        103*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        102*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        101*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        100*mus_final_ending_mvl/mxv
	.byte		N13   , Gs1 , v080
	.byte		N13   , Dn2 
	.byte	W02
	.byte		VOL   , 98*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        98*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        97*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        96*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        94*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		N13   , Bn1 , v092
	.byte		N13   , Fn2 
	.byte	W01
	.byte		VOL   , 94*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        93*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        92*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        91*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        89*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        89*mus_final_ending_mvl/mxv
	.byte		N11   , Gs1 , v084
	.byte		N11   , Dn2 
	.byte	W02
	.byte		VOL   , 88*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        87*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        86*mus_final_ending_mvl/mxv
	.byte	W02
@ 011   ----------------------------------------
	.byte	TEMPO , 144*mus_final_ending_tbs/2
	.byte		        84*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        84*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		N15   , Bn1 
	.byte		N15   , Fn2 
	.byte	W01
	.byte		VOL   , 83*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        82*mus_final_ending_mvl/mxv
	.byte	W03
	.byte		        81*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        79*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        79*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		N14   , Gs1 , v076
	.byte		N14   , Dn2 
	.byte	W01
	.byte		VOL   , 78*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        77*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        75*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        75*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        74*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        73*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        72*mus_final_ending_mvl/mxv
	.byte		N14   , Bn1 , v080
	.byte		N14   , Fn2 
	.byte	W01
	.byte		VOL   , 70*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        70*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        69*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        68*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        67*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        65*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        65*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        64*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        63*mus_final_ending_mvl/mxv
	.byte		N14   , Gs1 , v068
	.byte		N14   , Dn2 
	.byte	W02
	.byte		VOL   , 61*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        61*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        60*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        59*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        58*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        56*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        56*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        55*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        54*mus_final_ending_mvl/mxv
	.byte		N12   , Bn1 , v076
	.byte		N12   , Fn2 
	.byte	W01
@ 012   ----------------------------------------
	.byte		VOL   , 53*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        51*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        51*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        50*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        49*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        47*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        47*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        46*mus_final_ending_mvl/mxv
	.byte		N14   , Gs1 , v084
	.byte		N14   , Dn2 
	.byte	W01
	.byte		VOL   , 45*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        44*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        42*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        42*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        41*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        40*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        39*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        37*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		N12   , Bn1 , v076
	.byte		N12   , Fn2 
	.byte	W01
	.byte		VOL   , 37*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        36*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        35*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        34*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        32*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        32*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        31*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        30*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        28*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        28*mus_final_ending_mvl/mxv
	.byte		N10   , Fs1 , v084
	.byte		N10   , Cn2 
	.byte	W02
	.byte		VOL   , 27*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        26*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        25*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        23*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        23*mus_final_ending_mvl/mxv
	.byte		N13   , Gs1 , v068
	.byte		N13   , Dn2 
	.byte	W02
	.byte		VOL   , 22*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        21*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        20*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        18*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        18*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        17*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        16*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        14*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        14*mus_final_ending_mvl/mxv
	.byte	W01
@ 013   ----------------------------------------
	.byte	TEMPO , 142*mus_final_ending_tbs/2
	.byte		        13*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		N09   , Fs1 , v084
	.byte		N09   , Cn2 
	.byte	W01
	.byte		VOL   , 12*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        11*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        9*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        9*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        8*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		N10   , Gs1 , v072
	.byte		N10   , Dn2 
	.byte	W01
	.byte		VOL   , 7*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        6*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        4*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        4*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        3*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        2*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        0*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        6*mus_final_ending_mvl/mxv
	.byte		TIE   , Gn1 , v100
	.byte	W01
	.byte		VOL   , 18*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        37*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        56*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        69*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        88*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        107*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        120*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        127*mus_final_ending_mvl/mxv
	.byte	W24
@ 014   ----------------------------------------
	.byte	TEMPO , 142*mus_final_ending_tbs/2
	.byte	W48
@ 015   ----------------------------------------
	.byte	TEMPO , 140*mus_final_ending_tbs/2
	.byte	W48
@ 016   ----------------------------------------
	.byte	TEMPO , 140*mus_final_ending_tbs/2
	.byte	W48
@ 017   ----------------------------------------
	.byte	W48
@ 018   ----------------------------------------
	.byte	W48
@ 019   ----------------------------------------
	.byte	W13
	.byte		        127*mus_final_ending_mvl/mxv
	.byte	W03
	.byte		        126*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        125*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        124*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        122*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        122*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        121*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        120*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        119*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        117*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        117*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        116*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        115*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        114*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        112*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        112*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        111*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        110*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        108*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        108*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        107*mus_final_ending_mvl/mxv
	.byte	W01
@ 020   ----------------------------------------
	.byte	W01
	.byte		        106*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        105*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        103*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        103*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        102*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        101*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        100*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        98*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        98*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        97*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        96*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        93*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        89*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        86*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        82*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        78*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        75*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        72*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        68*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        65*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        61*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        56*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        55*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        51*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        47*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        44*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        40*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        36*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        32*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        30*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        26*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        23*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        18*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        14*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        12*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        8*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        4*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        2*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        0*mus_final_ending_mvl/mxv
	.byte	W03
@ 021   ----------------------------------------
	.byte	TEMPO , 120*mus_final_ending_tbs/2
	.byte	W12
@ 022   ----------------------------------------
	.byte	W04
	.byte		EOT   
	.byte	W44
@ 023   ----------------------------------------
	.byte	FINE

@ **************** Track 2 (Midi-Chn.2) ****************

mus_final_ending_2:
	.byte	KEYSH , mus_final_ending_key+0
@ 000   ----------------------------------------
	.byte	W96
@ 001   ----------------------------------------
	.byte	W48
@ 002   ----------------------------------------
	.byte	W48
@ 003   ----------------------------------------
	.byte	W48
@ 004   ----------------------------------------
	.byte	W48
@ 005   ----------------------------------------
	.byte	W48
@ 006   ----------------------------------------
	.byte	W48
@ 007   ----------------------------------------
	.byte	W48
@ 008   ----------------------------------------
	.byte	W48
@ 009   ----------------------------------------
	.byte	W48
@ 010   ----------------------------------------
	.byte	W48
@ 011   ----------------------------------------
	.byte	W48
@ 012   ----------------------------------------
	.byte	W48
@ 013   ----------------------------------------
	.byte	W48
@ 014   ----------------------------------------
	.byte	W48
@ 015   ----------------------------------------
	.byte	W48
@ 016   ----------------------------------------
	.byte	W48
@ 017   ----------------------------------------
	.byte	W48
@ 018   ----------------------------------------
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_final_ending_mvl/mxv
	.byte	W48
@ 019   ----------------------------------------
	.byte	W48
@ 020   ----------------------------------------
	.byte	W48
@ 021   ----------------------------------------
	.byte	W12
@ 022   ----------------------------------------
	.byte	W24
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte		N92   , Fs2 
	.byte	W06
@ 023   ----------------------------------------
	.byte	W06
	.byte		N06   , Cs1 
	.byte	W06
	.byte		        Dn1 , v036
	.byte	W06
	.byte		        Ds2 , v127
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v036
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Ds1 , v052
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Ds1 
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Ds1 
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Cs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N06   , Dn1 , v036
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		        Ds2 
	.byte	W06
@ 024   ----------------------------------------
	.byte		N06   
	.byte		N40   , Gn2 
	.byte	W06
	.byte		N06   , Cs1 , v056
	.byte	W06
	.byte		        Cs1 , v127
	.byte		N06   , Dn1 , v036
	.byte	W12
	.byte		        Ds1 , v052
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Dn1 , v036
	.byte		N06   , Fs1 , v127
	.byte	W06
	.byte		        Ds2 
	.byte		N44   , Fs2 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		        Dn1 , v036
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn1 , v036
	.byte		N06   , Fs1 , v127
	.byte	W06
	.byte		        Ds2 
	.byte		N92   , Gn2 
	.byte	W06
@ 025   ----------------------------------------
	.byte	W06
	.byte		N11   , Cs1 
	.byte	W06
	.byte		N06   , Dn1 , v036
	.byte	W06
	.byte		N05   , Cs1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N11   , Gs1 
	.byte	W06
	.byte		N06   , Dn1 , v036
	.byte	W06
	.byte		N05   , Gs1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N11   , Gn1 
	.byte	W06
	.byte		N06   , Dn1 , v036
	.byte	W06
	.byte		N05   , Gn1 , v127
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cs1 
	.byte		N06   , Dn1 , v036
	.byte	W06
	.byte		        Ds2 , v127
	.byte		TIE   , Fs2 
	.byte	W06
@ 026   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	FINE

@ **************** Track 3 (Midi-Chn.3) ****************

mus_final_ending_3:
	.byte	KEYSH , mus_final_ending_key+0
@ 000   ----------------------------------------
	.byte	W96
@ 001   ----------------------------------------
	.byte	W48
@ 002   ----------------------------------------
	.byte	W48
@ 003   ----------------------------------------
	.byte	W48
@ 004   ----------------------------------------
	.byte	W48
@ 005   ----------------------------------------
	.byte	W48
@ 006   ----------------------------------------
	.byte	W48
@ 007   ----------------------------------------
	.byte	W48
@ 008   ----------------------------------------
	.byte	W48
@ 009   ----------------------------------------
	.byte	W48
@ 010   ----------------------------------------
	.byte	W48
@ 011   ----------------------------------------
	.byte	W48
@ 012   ----------------------------------------
	.byte	W48
@ 013   ----------------------------------------
	.byte	W48
@ 014   ----------------------------------------
	.byte	W48
@ 015   ----------------------------------------
	.byte	W48
@ 016   ----------------------------------------
	.byte	W48
@ 017   ----------------------------------------
	.byte	W48
@ 018   ----------------------------------------
	.byte		VOICE , 49
	.byte		VOL   , 127*mus_final_ending_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W48
@ 019   ----------------------------------------
	.byte	W48
@ 020   ----------------------------------------
	.byte	W48
@ 021   ----------------------------------------
	.byte	W12
@ 022   ----------------------------------------
	.byte	W42
	.byte		N17   , Ds2 , v127
	.byte	W06
@ 023   ----------------------------------------
	.byte	W42
	.byte		N09   , Fn1 
	.byte	W12
	.byte		N07   , Gn1 
	.byte	W12
	.byte		N08   , An1 
	.byte	W30
@ 024   ----------------------------------------
	.byte		N22   , As1 
	.byte	W24
	.byte		N17   
	.byte	W18
	.byte		N24   , Cn2 
	.byte	W30
	.byte		N17   
	.byte	W18
	.byte		N66   , Dn2 
	.byte	W06
@ 025   ----------------------------------------
	.byte	W72
	.byte		N05   , Dn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		TIE   , En2 
	.byte	W06
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W84
	.byte	W03
	.byte		EOT   
	.byte	FINE

@ **************** Track 4 (Midi-Chn.4) ****************

mus_final_ending_4:
	.byte	KEYSH , mus_final_ending_key+0
@ 000   ----------------------------------------
	.byte	W96
@ 001   ----------------------------------------
	.byte	W48
@ 002   ----------------------------------------
	.byte	W48
@ 003   ----------------------------------------
	.byte	W48
@ 004   ----------------------------------------
	.byte	W48
@ 005   ----------------------------------------
	.byte	W48
@ 006   ----------------------------------------
	.byte	W48
@ 007   ----------------------------------------
	.byte	W48
@ 008   ----------------------------------------
	.byte	W48
@ 009   ----------------------------------------
	.byte	W48
@ 010   ----------------------------------------
	.byte	W48
@ 011   ----------------------------------------
	.byte	W48
@ 012   ----------------------------------------
	.byte	W48
@ 013   ----------------------------------------
	.byte	W48
@ 014   ----------------------------------------
	.byte	W48
@ 015   ----------------------------------------
	.byte	W48
@ 016   ----------------------------------------
	.byte	W48
@ 017   ----------------------------------------
	.byte	W48
@ 018   ----------------------------------------
	.byte		VOICE , 74
	.byte		VOL   , 127*mus_final_ending_mvl/mxv
	.byte		BENDR , 8
	.byte		PAN   , c_v+0
	.byte	W48
@ 019   ----------------------------------------
	.byte	W48
@ 020   ----------------------------------------
	.byte	W48
@ 021   ----------------------------------------
	.byte		VOL   , 89*mus_final_ending_mvl/mxv
	.byte	W12
@ 022   ----------------------------------------
	.byte	W24
	.byte		N03   , Fn2 , v048
	.byte		N03   , Fn3 
	.byte	W03
	.byte		        Gn2 , v060
	.byte		N03   , Gn3 
	.byte	W03
	.byte		        Gs2 , v072
	.byte		N03   , Gs3 
	.byte	W03
	.byte		        As2 , v084
	.byte		N03   , As3 
	.byte	W03
	.byte		        Cn3 , v096
	.byte		N03   , Cn4 
	.byte	W03
	.byte		        Dn3 , v104
	.byte		N03   , Dn4 
	.byte	W03
	.byte		N12   , Ds3 , v116
	.byte		N12   , Ds4 
	.byte	W06
@ 023   ----------------------------------------
	.byte	W42
	.byte		N06   , Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W30
@ 024   ----------------------------------------
	.byte		N20   , Gs3 
	.byte	W05
	.byte		VOL   , 89*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        87*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        83*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        79*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        75*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        72*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        68*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        65*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        65*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        67*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        68*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        69*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        70*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        70*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        72*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        73*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        74*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        75*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        75*mus_final_ending_mvl/mxv
	.byte		N17   
	.byte	W01
	.byte		VOL   , 77*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        78*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        79*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        79*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        81*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        82*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        83*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        84*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        84*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        86*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        87*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        88*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        89*mus_final_ending_mvl/mxv
	.byte	W05
	.byte		N24   , As3 
	.byte	W07
	.byte		VOL   , 88*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        84*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        79*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        75*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        73*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        69*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        65*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        65*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        67*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        69*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        70*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        70*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        72*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        73*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        74*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        75*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        77*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        78*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        79*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        79*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        81*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        82*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        83*mus_final_ending_mvl/mxv
	.byte		N17   
	.byte	W01
	.byte		VOL   , 84*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        86*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        87*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        88*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        89*mus_final_ending_mvl/mxv
	.byte	W13
	.byte		N72   , Cn4 
	.byte	W06
@ 025   ----------------------------------------
	.byte	W02
	.byte		VOL   , 89*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        84*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        82*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        77*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        73*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        70*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        65*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        61*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        59*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        54*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        50*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        47*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        42*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        39*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        40*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        42*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        42*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        44*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        45*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        46*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        47*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        49*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        50*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        51*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        53*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        54*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        55*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        56*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        56*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        59*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        60*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        61*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        61*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        63*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        65*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        65*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        67*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        68*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        69*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        70*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        72*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        73*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        74*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        75*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        77*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        78*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        79*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        81*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        82*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        83*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        84*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        84*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        87*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        88*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        89*mus_final_ending_mvl/mxv
	.byte	W14
	.byte		N17   
	.byte	W18
	.byte		TIE   , Dn4 
	.byte	W04
	.byte		VOL   , 89*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        83*mus_final_ending_mvl/mxv
	.byte	W01
@ 026   ----------------------------------------
	.byte		        79*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        73*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        67*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        63*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        56*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        51*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        47*mus_final_ending_mvl/mxv
	.byte	W04
	.byte		        49*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        50*mus_final_ending_mvl/mxv
	.byte	W03
	.byte		        51*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        51*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        53*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        54*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        55*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        56*mus_final_ending_mvl/mxv
	.byte	W03
	.byte		        56*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        58*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        59*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        60*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        61*mus_final_ending_mvl/mxv
	.byte	W03
	.byte		        61*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        63*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        64*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        65*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        65*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        67*mus_final_ending_mvl/mxv
	.byte	W03
	.byte		        68*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        69*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        70*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        70*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        72*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        73*mus_final_ending_mvl/mxv
	.byte	W03
	.byte		        74*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        75*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        75*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        77*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        78*mus_final_ending_mvl/mxv
	.byte	W03
	.byte		        79*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        79*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        81*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        82*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        83*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        84*mus_final_ending_mvl/mxv
	.byte	W03
	.byte		        84*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        86*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        87*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        88*mus_final_ending_mvl/mxv
	.byte	W01
@ 027   ----------------------------------------
	.byte	W01
	.byte		        89*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        89*mus_final_ending_mvl/mxv
	.byte	W92
	.byte	W02
	.byte		EOT   
@ 028   ----------------------------------------
	.byte	FINE

@ **************** Track 5 (Midi-Chn.5) ****************

mus_final_ending_5:
	.byte	KEYSH , mus_final_ending_key+0
@ 000   ----------------------------------------
	.byte	W96
@ 001   ----------------------------------------
	.byte	W48
@ 002   ----------------------------------------
	.byte	W48
@ 003   ----------------------------------------
	.byte	W48
@ 004   ----------------------------------------
	.byte	W48
@ 005   ----------------------------------------
	.byte	W48
@ 006   ----------------------------------------
	.byte	W48
@ 007   ----------------------------------------
	.byte	W48
@ 008   ----------------------------------------
	.byte	W48
@ 009   ----------------------------------------
	.byte	W48
@ 010   ----------------------------------------
	.byte	W48
@ 011   ----------------------------------------
	.byte	W48
@ 012   ----------------------------------------
	.byte	W48
@ 013   ----------------------------------------
	.byte	W48
@ 014   ----------------------------------------
	.byte	W48
@ 015   ----------------------------------------
	.byte	W48
@ 016   ----------------------------------------
	.byte	W48
@ 017   ----------------------------------------
	.byte	W48
@ 018   ----------------------------------------
	.byte		VOICE , 111
	.byte		VOL   , 83*mus_final_ending_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W48
@ 019   ----------------------------------------
	.byte	W48
@ 020   ----------------------------------------
	.byte	W48
@ 021   ----------------------------------------
	.byte	W12
@ 022   ----------------------------------------
	.byte	W24
	.byte		N03   , Bn1 , v040
	.byte	W01
	.byte		N04   , Cn2 , v044
	.byte	W02
	.byte		        Dn2 , v052
	.byte	W02
	.byte		        En2 , v056
	.byte	W01
	.byte		N03   , Fn2 , v064
	.byte	W01
	.byte		        Gn2 , v068
	.byte	W01
	.byte		N02   , An2 , v072
	.byte	W01
	.byte		        Bn2 , v076
	.byte	W02
	.byte		N01   , Cn3 , v080
	.byte	W01
	.byte		N02   , Dn3 , v088
	.byte	W01
	.byte		N04   , En3 
	.byte	W01
	.byte		N05   , Fn3 , v096
	.byte	W04
	.byte		N14   , Gs3 , v108
	.byte	W06
@ 023   ----------------------------------------
	.byte	W42
	.byte		N06   , Gs2 , v124
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W30
@ 024   ----------------------------------------
	.byte		N24   , Cs2 
	.byte	W24
	.byte		N17   
	.byte	W18
	.byte		N28   , Ds2 
	.byte	W30
	.byte		N17   
	.byte	W18
	.byte		N78   , Fn2 
	.byte	W06
@ 025   ----------------------------------------
	.byte	W72
	.byte		N17   
	.byte	W18
	.byte		TIE   , Gn2 
	.byte	W06
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 028   ----------------------------------------
	.byte	FINE

@ **************** Track 6 (Midi-Chn.6) ****************

mus_final_ending_6:
	.byte	KEYSH , mus_final_ending_key+0
@ 000   ----------------------------------------
	.byte	W96
@ 001   ----------------------------------------
	.byte	W48
@ 002   ----------------------------------------
	.byte	W48
@ 003   ----------------------------------------
	.byte	W48
@ 004   ----------------------------------------
	.byte	W48
@ 005   ----------------------------------------
	.byte	W48
@ 006   ----------------------------------------
	.byte	W48
@ 007   ----------------------------------------
	.byte	W48
@ 008   ----------------------------------------
	.byte	W48
@ 009   ----------------------------------------
	.byte	W48
@ 010   ----------------------------------------
	.byte	W48
@ 011   ----------------------------------------
	.byte	W48
@ 012   ----------------------------------------
	.byte	W48
@ 013   ----------------------------------------
	.byte	W48
@ 014   ----------------------------------------
	.byte	W48
@ 015   ----------------------------------------
	.byte	W48
@ 016   ----------------------------------------
	.byte	W48
@ 017   ----------------------------------------
	.byte	W48
@ 018   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 50*mus_final_ending_mvl/mxv
	.byte		MOD   , 0
	.byte		PAN   , c_v+0
	.byte	W48
@ 019   ----------------------------------------
	.byte	W48
@ 020   ----------------------------------------
	.byte	W48
@ 021   ----------------------------------------
	.byte	W12
@ 022   ----------------------------------------
	.byte	W42
	.byte		N17   , Ds2 , v127
	.byte	W06
@ 023   ----------------------------------------
	.byte	W42
	.byte		N09   , Fn1 
	.byte	W12
	.byte		N07   , Gn1 
	.byte	W12
	.byte		N08   , An1 
	.byte	W30
@ 024   ----------------------------------------
	.byte		N22   , As1 
	.byte	W24
	.byte		N17   
	.byte	W18
	.byte		N24   , Cn2 
	.byte	W30
	.byte		N17   
	.byte	W18
	.byte		N66   , Dn2 
	.byte	W06
@ 025   ----------------------------------------
	.byte	W72
	.byte		N05   , Dn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		TIE   , En2 
	.byte	W06
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W84
	.byte	W03
	.byte		EOT   
	.byte	FINE

@ **************** Track 7 (Midi-Chn.7) ****************

mus_final_ending_7:
	.byte	KEYSH , mus_final_ending_key+0
@ 000   ----------------------------------------
	.byte	W96
@ 001   ----------------------------------------
	.byte	W48
@ 002   ----------------------------------------
	.byte	W48
@ 003   ----------------------------------------
	.byte	W48
@ 004   ----------------------------------------
	.byte	W48
@ 005   ----------------------------------------
	.byte	W48
@ 006   ----------------------------------------
	.byte	W48
@ 007   ----------------------------------------
	.byte	W48
@ 008   ----------------------------------------
	.byte	W48
@ 009   ----------------------------------------
	.byte	W48
@ 010   ----------------------------------------
	.byte	W48
@ 011   ----------------------------------------
	.byte	W48
@ 012   ----------------------------------------
	.byte	W48
@ 013   ----------------------------------------
	.byte	W48
@ 014   ----------------------------------------
	.byte	W48
@ 015   ----------------------------------------
	.byte	W48
@ 016   ----------------------------------------
	.byte	W48
@ 017   ----------------------------------------
	.byte	W48
@ 018   ----------------------------------------
	.byte		VOICE , 12
	.byte		VOL   , 89*mus_final_ending_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W48
@ 019   ----------------------------------------
	.byte	W48
@ 020   ----------------------------------------
	.byte	W48
@ 021   ----------------------------------------
	.byte	W12
@ 022   ----------------------------------------
	.byte	W42
	.byte		N02   , Ds5 , v092
	.byte	W02
	.byte		        As4 , v088
	.byte	W02
	.byte		        Gn4 , v084
	.byte	W02
@ 023   ----------------------------------------
	.byte		        As4 , v080
	.byte	W02
	.byte		        Gn4 
	.byte	W02
	.byte		        Ds4 , v076
	.byte	W02
	.byte		        Gn4 , v072
	.byte	W02
	.byte		        Ds4 , v068
	.byte	W02
	.byte		        As3 , v064
	.byte	W02
	.byte		        Ds4 , v060
	.byte	W02
	.byte		        As3 , v056
	.byte	W02
	.byte		        Gn3 , v052
	.byte	W02
	.byte		        As3 , v048
	.byte	W02
	.byte		        Gn3 
	.byte	W02
	.byte		        Ds3 , v044
	.byte	W02
	.byte		        Gn3 , v040
	.byte	W02
	.byte		        Ds3 , v036
	.byte	W02
	.byte		        As2 , v032
	.byte	W02
	.byte		        Ds3 , v028
	.byte	W02
	.byte		        As2 , v024
	.byte	W02
	.byte		        Gn2 , v020
	.byte	W60
	.byte	W02
@ 024   ----------------------------------------
	.byte		N03   , Cn3 , v040
	.byte	W03
	.byte		        Ds3 , v044
	.byte	W03
	.byte		        Gs3 , v048
	.byte	W03
	.byte		        Cn4 , v052
	.byte	W03
	.byte		        Gs3 , v056
	.byte	W03
	.byte		        Cn4 , v060
	.byte	W03
	.byte		        Ds4 , v064
	.byte	W03
	.byte		        Gs4 , v068
	.byte	W03
	.byte		        Cn4 , v072
	.byte	W03
	.byte		        Ds4 , v076
	.byte	W03
	.byte		        Gs4 , v080
	.byte	W03
	.byte		        Cn5 , v084
	.byte	W03
	.byte		        Gs4 , v088
	.byte	W03
	.byte		        Cn5 , v092
	.byte	W03
	.byte		        Dn3 , v028
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        As3 , v032
	.byte	W03
	.byte		        Dn4 , v036
	.byte	W03
	.byte		        As3 , v040
	.byte	W03
	.byte		        Dn4 , v044
	.byte	W03
	.byte		        Fn4 , v048
	.byte	W03
	.byte		        As4 , v052
	.byte	W03
	.byte		        Dn4 , v056
	.byte	W03
	.byte		        Fn4 , v060
	.byte	W03
	.byte		        As4 , v064
	.byte	W03
	.byte		        Dn5 , v068
	.byte	W03
	.byte		        As4 , v072
	.byte	W03
	.byte		        Dn5 , v076
	.byte	W03
	.byte		        Fn5 , v080
	.byte	W03
	.byte		        As5 , v084
	.byte	W03
	.byte		        En3 , v020
	.byte	W03
	.byte		        Gn3 , v024
	.byte	W03
@ 025   ----------------------------------------
	.byte		        Cn4 , v028
	.byte	W03
	.byte		        En4 , v032
	.byte	W03
	.byte		        Cn4 , v036
	.byte	W03
	.byte		        En4 , v040
	.byte	W03
	.byte		        Gn4 , v044
	.byte	W03
	.byte		        Cn5 , v048
	.byte	W03
	.byte		        En4 , v052
	.byte	W03
	.byte		        Gn4 , v056
	.byte	W03
	.byte		        Cn5 , v060
	.byte	W03
	.byte		        En5 , v064
	.byte	W03
	.byte		        Cn5 , v068
	.byte	W03
	.byte		        En5 , v072
	.byte	W03
	.byte		        Gn5 , v076
	.byte	W03
	.byte		        Cn6 , v080
	.byte	W03
	.byte		        En6 , v088
	.byte	W03
	.byte		        Cn6 , v084
	.byte	W03
	.byte		        Gn5 
	.byte	W03
	.byte		        En5 , v080
	.byte	W03
	.byte		        Gn5 , v076
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		        Cn5 , v072
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Cn5 , v068
	.byte	W03
	.byte		        Gn4 , v064
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Cn4 , v060
	.byte	W03
	.byte		        En4 , v056
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Gn3 , v052
	.byte	W03
	.byte		        En3 , v048
	.byte	W03
	.byte		        An2 , v028
	.byte	W03
	.byte		        Dn3 
	.byte	W03
@ 026   ----------------------------------------
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        Dn3 , v032
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        An3 , v036
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Dn4 , v040
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        En4 , v044
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        En4 , v048
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Fs4 , v052
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		        Fs5 , v056
	.byte	W03
	.byte		        An5 
	.byte	W03
	.byte		        Fs5 
	.byte	W03
	.byte		        En5 , v060
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        An4 , v056
	.byte	W03
@ 027   ----------------------------------------
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Dn4 , v052
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fs4 , v048
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 , v044
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Dn4 , v040
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Dn4 , v036
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 , v032
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        En3 , v028
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Dn3 , v024
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        En3 , v020
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        An2 , v016
	.byte	W03
	.byte		        Fs2 
	.byte	W03
	.byte		        En2 
	.byte	W03
	.byte		        Dn2 , v012
	.byte	W03
	.byte	FINE

@ **************** Track 8 (Midi-Chn.8) ****************

mus_final_ending_8:
	.byte	KEYSH , mus_final_ending_key+0
@ 000   ----------------------------------------
	.byte	W96
@ 001   ----------------------------------------
	.byte	W48
@ 002   ----------------------------------------
	.byte	W48
@ 003   ----------------------------------------
	.byte	W48
@ 004   ----------------------------------------
	.byte	W48
@ 005   ----------------------------------------
	.byte	W48
@ 006   ----------------------------------------
	.byte	W48
@ 007   ----------------------------------------
	.byte	W48
@ 008   ----------------------------------------
	.byte	W48
@ 009   ----------------------------------------
	.byte	W48
@ 010   ----------------------------------------
	.byte	W48
@ 011   ----------------------------------------
	.byte	W48
@ 012   ----------------------------------------
	.byte	W48
@ 013   ----------------------------------------
	.byte	W48
@ 014   ----------------------------------------
	.byte	W48
@ 015   ----------------------------------------
	.byte	W48
@ 016   ----------------------------------------
	.byte	W48
@ 017   ----------------------------------------
	.byte	W48
@ 018   ----------------------------------------
	.byte		VOICE , 78
	.byte		VOL   , 127*mus_final_ending_mvl/mxv
	.byte		BENDR , 8
	.byte		PAN   , c_v+0
	.byte	W48
@ 019   ----------------------------------------
	.byte	W48
@ 020   ----------------------------------------
	.byte	W48
@ 021   ----------------------------------------
	.byte		VOL   , 89*mus_final_ending_mvl/mxv
	.byte	W12
@ 022   ----------------------------------------
	.byte	W48
@ 023   ----------------------------------------
	.byte	W42
	.byte		N06   , As2 , v127
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W30
@ 024   ----------------------------------------
	.byte		N20   , Ds3 
	.byte	W05
	.byte		VOL   , 89*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        87*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        83*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        79*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        75*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        72*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        68*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        65*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        65*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        67*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        68*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        69*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        70*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        70*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        72*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        73*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        74*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        75*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        75*mus_final_ending_mvl/mxv
	.byte		N17   
	.byte	W01
	.byte		VOL   , 77*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        78*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        79*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        79*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        81*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        82*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        83*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        84*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        84*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        86*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        87*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        88*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        89*mus_final_ending_mvl/mxv
	.byte	W05
	.byte		N24   , Fn3 
	.byte	W07
	.byte		VOL   , 88*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        84*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        79*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        75*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        73*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        69*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        65*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        65*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        67*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        69*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        70*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        70*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        72*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        73*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        74*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        75*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        77*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        78*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        79*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        79*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        81*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        82*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        83*mus_final_ending_mvl/mxv
	.byte		N17   
	.byte	W01
	.byte		VOL   , 84*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        86*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        87*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        88*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        89*mus_final_ending_mvl/mxv
	.byte	W13
	.byte		N72   , Gn3 
	.byte	W06
@ 025   ----------------------------------------
	.byte	W02
	.byte		VOL   , 89*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        84*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        82*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        77*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        73*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        70*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        65*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        61*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        59*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        54*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        50*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        47*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        42*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        39*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        40*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        42*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        42*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        44*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        45*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        46*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        47*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        49*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        50*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        51*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        53*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        54*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        55*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        56*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        56*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        59*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        60*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        61*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        61*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        63*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        65*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        65*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        67*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        68*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        69*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        70*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        72*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        73*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        74*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        75*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        77*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        78*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        79*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        81*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        82*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        83*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        84*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        84*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        87*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        88*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        89*mus_final_ending_mvl/mxv
	.byte	W14
	.byte		N17   
	.byte	W18
	.byte		TIE   , An3 
	.byte	W04
	.byte		VOL   , 89*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        83*mus_final_ending_mvl/mxv
	.byte	W01
@ 026   ----------------------------------------
	.byte		        79*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        73*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        67*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        63*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        56*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        51*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        47*mus_final_ending_mvl/mxv
	.byte	W04
	.byte		        49*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        50*mus_final_ending_mvl/mxv
	.byte	W03
	.byte		        51*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        51*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        53*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        54*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        55*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        56*mus_final_ending_mvl/mxv
	.byte	W03
	.byte		        56*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        58*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        59*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        60*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        61*mus_final_ending_mvl/mxv
	.byte	W03
	.byte		        61*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        63*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        64*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        65*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        65*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        67*mus_final_ending_mvl/mxv
	.byte	W03
	.byte		        68*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        69*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        70*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        70*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        72*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        73*mus_final_ending_mvl/mxv
	.byte	W03
	.byte		        74*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        75*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        75*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        77*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        78*mus_final_ending_mvl/mxv
	.byte	W03
	.byte		        79*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        79*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        81*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        82*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        83*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        84*mus_final_ending_mvl/mxv
	.byte	W03
	.byte		        84*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        86*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        87*mus_final_ending_mvl/mxv
	.byte	W02
	.byte		        88*mus_final_ending_mvl/mxv
	.byte	W01
@ 027   ----------------------------------------
	.byte	W01
	.byte		        89*mus_final_ending_mvl/mxv
	.byte	W01
	.byte		        89*mus_final_ending_mvl/mxv
	.byte	W92
	.byte	W02
	.byte		EOT   
@ 028   ----------------------------------------
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(mus_final_ending):
	.byte	8	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_final_ending_pri	@ Priority
	.byte	mus_final_ending_rev	@ Reverb

mAlignWord
	mPtr	mus_final_ending_grp

	mPtr	mus_final_ending_1
	mPtr	mus_final_ending_2
	mPtr	mus_final_ending_3
	mPtr	mus_final_ending_4
	mPtr	mus_final_ending_5
	mPtr	mus_final_ending_6
	mPtr	mus_final_ending_7
	mPtr	mus_final_ending_8

	.end
