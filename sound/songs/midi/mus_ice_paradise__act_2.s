	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_ice_paradise__act_2_grp, voicegroup014
	.equ	mus_ice_paradise__act_2_pri, 0
	.equ	mus_ice_paradise__act_2_rev, reverb_set+0
	.equ	mus_ice_paradise__act_2_mvl, 110
	.equ	mus_ice_paradise__act_2_key, 0
	.equ	mus_ice_paradise__act_2_tbs, 1
	.equ	mus_ice_paradise__act_2_exg, 1
	.equ	mus_ice_paradise__act_2_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_ice_paradise__act_2)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

mus_ice_paradise__act_2_1:
	.byte	KEYSH , mus_ice_paradise__act_2_key+0
mus_ice_paradise__act_2_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 200*mus_ice_paradise__act_2_tbs/2
	.byte		VOICE , 79
	.byte		VOL   , 100*mus_ice_paradise__act_2_mvl/mxv
	.byte		LFOS  , 26
	.byte		MODT  , 1
	.byte		LFODL , 28
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte		VOICE , 79
	.byte		VOL   , 100*mus_ice_paradise__act_2_mvl/mxv
	.byte		LFOS  , 26
	.byte		MODT  , 1
	.byte		LFODL , 28
	.byte	W96
@ 007   ----------------------------------------
	.byte		MOD   , 54
	.byte	W60
	.byte	W03
	.byte		VOL   , 14*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        16*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        22*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        25*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        27*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        32*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        58*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        64*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        79*mus_ice_paradise__act_2_mvl/mxv
	.byte		N24   , Fs2 , v092
	.byte	W01
	.byte		VOL   , 87*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        97*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        100*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        104*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        104*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        104*mus_ice_paradise__act_2_mvl/mxv
	.byte	W05
	.byte		        107*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        109*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        111*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        116*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
@ 008   ----------------------------------------
	.byte	W01
	.byte		        119*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        124*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		N32   , Fs3 
	.byte	W01
	.byte		VOL   , 127*mus_ice_paradise__act_2_mvl/mxv
	.byte	W36
	.byte		N04   , Dn3 , v072
	.byte	W04
	.byte		N88   , Ds3 , v076
	.byte	W40
	.byte		VOL   , 127*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        125*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        123*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        121*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        119*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        117*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        115*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        110*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
@ 009   ----------------------------------------
	.byte	W01
	.byte		        106*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        104*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        103*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        101*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        99*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        97*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        95*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        91*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        88*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        85*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        78*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        76*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        74*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        72*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        65*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        47*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        44*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        29*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        17*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        0*mus_ice_paradise__act_2_mvl/mxv
	.byte	W08
	.byte		        26*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        28*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        31*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        39*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        65*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        94*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        107*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        122*mus_ice_paradise__act_2_mvl/mxv
	.byte		N22   , Bn2 , v096
	.byte	W01
	.byte		VOL   , 127*mus_ice_paradise__act_2_mvl/mxv
	.byte	W22
	.byte		N23   , As2 , v088
	.byte	W22
@ 010   ----------------------------------------
	.byte	W02
	.byte		TIE   , Gs2 , v076
	.byte	W80
	.byte	W01
	.byte		VOL   , 125*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        123*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        121*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        119*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        118*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        107*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        104*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
@ 011   ----------------------------------------
	.byte		        104*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        102*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        100*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        97*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        97*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        95*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        91*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        86*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        84*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        80*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        78*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        74*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        73*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        69*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        66*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        64*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        62*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        49*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        44*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        29*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        12*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        0*mus_ice_paradise__act_2_mvl/mxv
	.byte	W05
	.byte		EOT   
	.byte	W19
	.byte		VOL   , 22*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        39*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        57*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        72*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        86*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        104*mus_ice_paradise__act_2_mvl/mxv
	.byte		N22   , Fs2 , v088
	.byte	W01
	.byte		VOL   , 112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        124*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        127*mus_ice_paradise__act_2_mvl/mxv
	.byte	W07
	.byte		        126*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        124*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        122*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        119*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        117*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        115*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        118*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
@ 012   ----------------------------------------
	.byte		        127*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		N36   , Fs3 , v092
	.byte	W36
	.byte	W01
	.byte		N04   , Dn3 , v068
	.byte	W05
	.byte		N88   , Ds3 , v064
	.byte	W52
	.byte	W01
@ 013   ----------------------------------------
	.byte	W20
	.byte		VOL   , 126*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        123*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        119*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        117*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        104*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        95*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        80*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        46*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        13*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        0*mus_ice_paradise__act_2_mvl/mxv
	.byte	W15
	.byte		        43*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        64*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		N24   , Bn2 , v100
	.byte	W01
	.byte		VOL   , 106*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        123*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        127*mus_ice_paradise__act_2_mvl/mxv
	.byte	W23
	.byte		N21   , As2 , v076
	.byte	W20
@ 014   ----------------------------------------
	.byte	W02
	.byte		TIE   , An2 , v068
	.byte	W92
	.byte	W02
@ 015   ----------------------------------------
	.byte	W09
	.byte		VOL   , 125*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        123*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        121*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        119*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        115*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        110*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        108*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        106*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        101*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        97*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        87*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        74*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        40*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        20*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        0*mus_ice_paradise__act_2_mvl/mxv
	.byte	W04
	.byte		EOT   
	.byte	W12
	.byte		VOL   , 29*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        39*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        65*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        91*mus_ice_paradise__act_2_mvl/mxv
	.byte		N14   , Bn2 , v092
	.byte	W01
	.byte		VOL   , 118*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        127*mus_ice_paradise__act_2_mvl/mxv
	.byte	W22
	.byte		N14   , Cn3 
	.byte	W22
@ 016   ----------------------------------------
	.byte	W02
	.byte		N32   , Cs3 , v088
	.byte	W36
	.byte	W03
	.byte		N88   , Fs2 , v060
	.byte	W24
	.byte		VOL   , 125*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        123*mus_ice_paradise__act_2_mvl/mxv
	.byte	W04
	.byte		        121*mus_ice_paradise__act_2_mvl/mxv
	.byte	W04
	.byte		        123*mus_ice_paradise__act_2_mvl/mxv
	.byte	W04
	.byte		        125*mus_ice_paradise__act_2_mvl/mxv
	.byte	W05
	.byte		        127*mus_ice_paradise__act_2_mvl/mxv
	.byte	W06
	.byte		        125*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        123*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        121*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        117*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        115*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
@ 017   ----------------------------------------
	.byte	W01
	.byte		        110*mus_ice_paradise__act_2_mvl/mxv
	.byte	W08
	.byte		        108*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        106*mus_ice_paradise__act_2_mvl/mxv
	.byte	W04
	.byte		        103*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        101*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        99*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        97*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        92*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        85*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        77*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        71*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        49*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        29*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        21*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        0*mus_ice_paradise__act_2_mvl/mxv
	.byte	W18
	.byte		        52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        99*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        127*mus_ice_paradise__act_2_mvl/mxv
	.byte		N22   , Fs3 , v088
	.byte	W24
	.byte	W01
	.byte		N19   , Fn3 , v080
	.byte	W22
@ 018   ----------------------------------------
	.byte	W03
	.byte		N32   , En3 , v084
	.byte	W36
	.byte		TIE   , Gs2 , v068
	.byte	W16
	.byte		VOL   , 121*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        119*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        118*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        116*mus_ice_paradise__act_2_mvl/mxv
	.byte	W05
	.byte		        114*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W07
	.byte		        111*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        108*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        106*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        104*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        103*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        101*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        99*mus_ice_paradise__act_2_mvl/mxv
	.byte	W04
	.byte		        97*mus_ice_paradise__act_2_mvl/mxv
	.byte	W05
@ 019   ----------------------------------------
	.byte	W02
	.byte		        97*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        96*mus_ice_paradise__act_2_mvl/mxv
	.byte	W04
	.byte		        94*mus_ice_paradise__act_2_mvl/mxv
	.byte	W04
	.byte		        96*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        94*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        91*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        86*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        84*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        81*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        79*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        81*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        79*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        77*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        74*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        73*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        71*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        14*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        0*mus_ice_paradise__act_2_mvl/mxv
	.byte	W19
	.byte		EOT   
	.byte	W06
	.byte		N20   , As2 , v100
	.byte	W01
	.byte		VOL   , 29*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        49*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        86*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        102*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        109*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        127*mus_ice_paradise__act_2_mvl/mxv
	.byte	W13
	.byte		        125*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
@ 020   ----------------------------------------
	.byte		        127*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		N78   , Bn2 , v076
	.byte	W80
	.byte	W02
	.byte		VOL   , 125*mus_ice_paradise__act_2_mvl/mxv
	.byte	W04
	.byte		        123*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        125*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        127*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		N19   , Gs2 , v084
	.byte	W01
	.byte		VOL   , 125*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
@ 021   ----------------------------------------
	.byte	W03
	.byte		        127*mus_ice_paradise__act_2_mvl/mxv
	.byte	W12
	.byte		N12   , Bn2 , v064
	.byte	W09
	.byte		N15   , Gs2 , v076
	.byte	W14
	.byte		N13   , Fs2 
	.byte	W15
	.byte		VOL   , 125*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        123*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        121*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        116*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        114*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        116*mus_ice_paradise__act_2_mvl/mxv
	.byte		N10   , Fs2 , v060
	.byte	W01
	.byte		VOL   , 118*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        121*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        119*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        121*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        124*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        122*mus_ice_paradise__act_2_mvl/mxv
	.byte		N20   , En2 , v036
	.byte	W01
	.byte		VOL   , 119*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        119*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        117*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        109*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        104*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        102*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        100*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        96*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        91*mus_ice_paradise__act_2_mvl/mxv
	.byte	W07
@ 022   ----------------------------------------
	.byte	W01
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        88*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        86*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        84*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        81*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        78*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        76*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        22*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        14*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        0*mus_ice_paradise__act_2_mvl/mxv
	.byte	W22
	.byte		N10   , Cs2 , v072
	.byte	W10
	.byte		VOL   , 21*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        34*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        40*mus_ice_paradise__act_2_mvl/mxv
	.byte		N10   , En2 , v064
	.byte	W01
	.byte		VOL   , 62*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        70*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        88*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        91*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        95*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        91*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		N10   , Gs2 , v060
	.byte	W01
	.byte		VOL   , 89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        86*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        84*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        86*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        88*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        92*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        97*mus_ice_paradise__act_2_mvl/mxv
	.byte		N11   , Bn2 , v072
	.byte	W01
	.byte		VOL   , 99*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        104*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        104*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        107*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        109*mus_ice_paradise__act_2_mvl/mxv
	.byte	W04
	.byte		N10   , Ds3 , v076
	.byte	W04
	.byte		VOL   , 119*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        122*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        127*mus_ice_paradise__act_2_mvl/mxv
	.byte	W04
@ 023   ----------------------------------------
	.byte	W02
	.byte		N42   , Fs3 , v104
	.byte	W48
	.byte		N17   , Fs3 , v088
	.byte	W21
	.byte		N10   , Fs3 , v100
	.byte	W14
	.byte		N16   , Fs3 , v088
	.byte	W11
@ 024   ----------------------------------------
	.byte	W02
	.byte		N18   , Ds3 , v076
	.byte	W17
	.byte		VOL   , 125*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        123*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		N13   , Fs3 , v056
	.byte	W02
	.byte		VOL   , 125*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        127*mus_ice_paradise__act_2_mvl/mxv
	.byte	W10
	.byte		N08   , Ds3 , v052
	.byte	W05
	.byte		VOL   , 126*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        121*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        119*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        118*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        114*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        108*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        104*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        97*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        95*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        91*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        84*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        80*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        78*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        69*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        63*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        50*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        29*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        22*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        11*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        7*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        0*mus_ice_paradise__act_2_mvl/mxv
	.byte	W30
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W64
	.byte	W01
	.byte		        14*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        19*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        32*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        42*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        47*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        78*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		N20   , Fs2 , v088
	.byte	W01
	.byte		VOL   , 94*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        101*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        106*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        110*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        115*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        117*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        119*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        121*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        122*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        124*mus_ice_paradise__act_2_mvl/mxv
	.byte	W05
	.byte		        127*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
@ 028   ----------------------------------------
	.byte	W01
	.byte		N32   , Fs3 
	.byte	W36
	.byte	W01
	.byte		N02   , Dn3 , v052
	.byte	W03
	.byte		N90   , Ds3 , v072
	.byte	W54
	.byte	W01
@ 029   ----------------------------------------
	.byte	W09
	.byte		VOL   , 126*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        124*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        121*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        119*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        114*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        109*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        106*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        104*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        101*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        99*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        97*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        94*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        92*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        87*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        85*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        78*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        71*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        64*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        57*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        29*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        20*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        18*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        20*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        29*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        36*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        62*mus_ice_paradise__act_2_mvl/mxv
	.byte		N24   , Bn2 , v088
	.byte	W01
	.byte		VOL   , 80*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        97*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        114*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        127*mus_ice_paradise__act_2_mvl/mxv
	.byte	W20
	.byte		N24   , As2 , v072
	.byte	W23
@ 030   ----------------------------------------
	.byte	W02
	.byte		TIE   , Gs2 , v052
	.byte	W84
	.byte		VOL   , 126*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        124*mus_ice_paradise__act_2_mvl/mxv
	.byte	W06
	.byte		        122*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
@ 031   ----------------------------------------
	.byte	W01
	.byte		        118*mus_ice_paradise__act_2_mvl/mxv
	.byte	W08
	.byte		        116*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        114*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        110*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        104*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        103*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        97*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        86*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        80*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        77*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        73*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        71*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        69*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        66*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        58*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        54*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        44*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        35*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        29*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        14*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        7*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        0*mus_ice_paradise__act_2_mvl/mxv
	.byte	W10
	.byte		EOT   
	.byte	W19
	.byte		VOL   , 28*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        41*mus_ice_paradise__act_2_mvl/mxv
	.byte		N23   , Fs2 , v080
	.byte	W02
	.byte		VOL   , 67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        81*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        97*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        107*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        119*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        122*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        125*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        127*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        126*mus_ice_paradise__act_2_mvl/mxv
	.byte	W06
	.byte		        127*mus_ice_paradise__act_2_mvl/mxv
	.byte	W06
@ 032   ----------------------------------------
	.byte	W01
	.byte		N32   , Fs3 , v076
	.byte	W36
	.byte		N92   , Ds3 , v068
	.byte	W56
	.byte	W03
@ 033   ----------------------------------------
	.byte	W05
	.byte		VOL   , 126*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        124*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        126*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        127*mus_ice_paradise__act_2_mvl/mxv
	.byte	W05
	.byte		        126*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        121*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        119*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        118*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        116*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        109*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        106*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        99*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        97*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        87*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        80*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        77*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        65*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        58*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        44*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        40*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        35*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        29*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        28*mus_ice_paradise__act_2_mvl/mxv
	.byte	W04
	.byte		        29*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        31*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        34*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        36*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        40*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        44*mus_ice_paradise__act_2_mvl/mxv
	.byte		N01   , As2 
	.byte	W01
	.byte		N24   , Bn2 , v084
	.byte	W01
	.byte		VOL   , 58*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        69*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        81*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        99*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        110*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        119*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        127*mus_ice_paradise__act_2_mvl/mxv
	.byte	W19
	.byte		N21   , As2 , v076
	.byte	W20
@ 034   ----------------------------------------
	.byte	W02
	.byte		TIE   , An2 , v056
	.byte	W56
	.byte	W03
	.byte		VOL   , 123*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        121*mus_ice_paradise__act_2_mvl/mxv
	.byte	W08
	.byte		        119*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        117*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        114*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        109*mus_ice_paradise__act_2_mvl/mxv
	.byte	W07
	.byte		        104*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        101*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        99*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        91*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W05
	.byte		        88*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        84*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        81*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
@ 035   ----------------------------------------
	.byte		        78*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        76*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        78*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        80*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        78*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        74*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        73*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        71*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        69*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        66*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        50*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        32*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        27*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        12*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        0*mus_ice_paradise__act_2_mvl/mxv
	.byte	W23
	.byte		EOT   
	.byte	W22
	.byte		VOL   , 20*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        26*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        44*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        65*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        94*mus_ice_paradise__act_2_mvl/mxv
	.byte		N13   , Bn2 , v088
	.byte	W01
	.byte		VOL   , 111*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        117*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        127*mus_ice_paradise__act_2_mvl/mxv
	.byte	W11
	.byte		N10   , Cn3 , v068
	.byte	W08
@ 036   ----------------------------------------
	.byte	W03
	.byte		N66   , Cs3 , v084
	.byte	W68
	.byte		N24   , Gs2 , v064
	.byte	W18
	.byte		VOL   , 126*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        121*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        117*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        114*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
@ 037   ----------------------------------------
	.byte		        109*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        106*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        104*mus_ice_paradise__act_2_mvl/mxv
	.byte		N24   , Gn2 , v076
	.byte	W01
	.byte		VOL   , 103*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        99*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        97*mus_ice_paradise__act_2_mvl/mxv
	.byte	W05
	.byte		        96*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        94*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        92*mus_ice_paradise__act_2_mvl/mxv
	.byte	W05
	.byte		        94*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        97*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        109*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        118*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        127*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		N23   , En3 , v052
	.byte	W24
	.byte		N24   , Ds3 , v068
	.byte	W24
	.byte	W01
	.byte		N17   , Cs3 , v080
	.byte	W20
@ 038   ----------------------------------------
	.byte	W02
	.byte		N48   , Cs3 , v096
	.byte	W48
	.byte		N21   , Bn2 , v072
	.byte	W22
	.byte		N11   , As2 , v064
	.byte	W12
	.byte		N66   , Bn2 , v056
	.byte	W12
@ 039   ----------------------------------------
	.byte	W28
	.byte		VOL   , 125*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        119*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        117*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        115*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        111*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        108*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        103*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        101*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        96*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        91*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        86*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        72*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        39*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        17*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        0*mus_ice_paradise__act_2_mvl/mxv
	.byte	W21
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        57*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte		N15   , Gs2 , v064
	.byte	W01
	.byte		VOL   , 93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        100*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        123*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        127*mus_ice_paradise__act_2_mvl/mxv
	.byte	W10
	.byte		        124*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        121*mus_ice_paradise__act_2_mvl/mxv
	.byte		N09   , As2 
	.byte	W02
	.byte		VOL   , 126*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        127*mus_ice_paradise__act_2_mvl/mxv
	.byte	W05
@ 040   ----------------------------------------
	.byte	W01
	.byte		N36   , Bn2 , v088
	.byte	W40
	.byte		N32   , En2 
	.byte	W21
	.byte		VOL   , 125*mus_ice_paradise__act_2_mvl/mxv
	.byte	W04
	.byte		        123*mus_ice_paradise__act_2_mvl/mxv
	.byte	W06
	.byte		        125*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		N21   , Gs2 , v084
	.byte	W01
	.byte		VOL   , 127*mus_ice_paradise__act_2_mvl/mxv
	.byte	W21
	.byte		N36   , Fs2 , v080
	.byte	W01
@ 041   ----------------------------------------
	.byte	W14
	.byte		VOL   , 126*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        124*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        122*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        119*mus_ice_paradise__act_2_mvl/mxv
	.byte	W10
	.byte		        119*mus_ice_paradise__act_2_mvl/mxv
	.byte	W04
	.byte		        117*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        115*mus_ice_paradise__act_2_mvl/mxv
	.byte	W04
	.byte		N44   , An1 , v084
	.byte	W07
	.byte		VOL   , 112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        110*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        108*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        104*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        103*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        101*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        99*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        97*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        94*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        92*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W06
	.byte		        87*mus_ice_paradise__act_2_mvl/mxv
	.byte	W14
	.byte		        85*mus_ice_paradise__act_2_mvl/mxv
	.byte	W04
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W05
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        80*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
@ 042   ----------------------------------------
	.byte	W01
	.byte		        78*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        74*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        73*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        71*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        69*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        65*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        50*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        34*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        0*mus_ice_paradise__act_2_mvl/mxv
	.byte	W32
	.byte		        22*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        39*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        46*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        69*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        74*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        84*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        92*mus_ice_paradise__act_2_mvl/mxv
	.byte		N12   , An2 , v072
	.byte	W01
	.byte		VOL   , 97*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        100*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        103*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        104*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        104*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        99*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        97*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        96*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        94*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		N10   , Bn2 
	.byte	W06
	.byte		VOL   , 101*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        103*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        119*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        121*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        127*mus_ice_paradise__act_2_mvl/mxv
	.byte		N10   , Dn3 , v064
	.byte	W11
	.byte		N09   , En3 , v044
	.byte	W10
@ 043   ----------------------------------------
	.byte	W03
	.byte		N11   , Fn3 , v056
	.byte	W11
	.byte		N18   , Fs3 , v088
	.byte	W19
	.byte		N10   , En3 , v056
	.byte	W11
	.byte		        Dn3 , v072
	.byte	W14
	.byte		        An2 , v048
	.byte	W05
	.byte		VOL   , 123*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        121*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        119*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        116*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        118*mus_ice_paradise__act_2_mvl/mxv
	.byte		N08   , Gn2 , v096
	.byte	W06
	.byte		VOL   , 116*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        114*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        106*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		N11   , Fn2 , v072
	.byte	W01
	.byte		VOL   , 101*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        96*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        91*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W05
	.byte		        96*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        97*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
@ 044   ----------------------------------------
	.byte		        101*mus_ice_paradise__act_2_mvl/mxv
	.byte		N11   , Fs2 , v068
	.byte	W03
	.byte		VOL   , 103*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        106*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        109*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        111*mus_ice_paradise__act_2_mvl/mxv
	.byte	W05
	.byte		        107*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		N72   , Fs2 , v080
	.byte	W07
	.byte		VOL   , 109*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        107*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        104*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        103*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        97*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        87*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        85*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        77*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        74*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        72*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        63*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        56*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        54*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        49*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        46*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        29*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        19*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        17*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        13*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        7*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        4*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        0*mus_ice_paradise__act_2_mvl/mxv
	.byte	W36
	.byte	W01
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte		VOICE , 84
	.byte		VOL   , 127*mus_ice_paradise__act_2_mvl/mxv
	.byte		LFOS  , 26
	.byte		MODT  , 1
	.byte		LFODL , 28
	.byte	W96
@ 055   ----------------------------------------
	.byte	W64
	.byte		N08   , Ds4 , v127
	.byte	W10
	.byte		        En4 , v092
	.byte	W10
	.byte		N09   , Gn4 , v080
	.byte	W07
	.byte		N05   , An4 , v092
	.byte	W05
@ 056   ----------------------------------------
	.byte	W02
	.byte		N10   , En4 , v127
	.byte		N11   , Cn5 , v124
	.byte	W36
	.byte	W02
	.byte		N09   , As4 , v127
	.byte	W08
	.byte		N13   , Gn4 , v100
	.byte	W36
	.byte	W02
	.byte		N12   , Fs4 , v127
	.byte		N12   , Cn5 , v116
	.byte	W10
@ 057   ----------------------------------------
	.byte	W01
	.byte		N09   , Fn4 , v096
	.byte	W15
	.byte		        Ds4 , v112
	.byte	W09
	.byte		N14   , Cn4 , v080
	.byte	W24
	.byte	W03
	.byte		N12   , Fn4 , v127
	.byte	W13
	.byte		N11   , Ds4 , v104
	.byte	W09
	.byte		N09   , Cn4 , v080
	.byte	W13
	.byte		        As3 , v104
	.byte	W09
@ 058   ----------------------------------------
	.byte		N05   , Gs3 , v084
	.byte	W05
	.byte		N16   , An3 , v092
	.byte	W23
	.byte		N14   , Cn4 , v124
	.byte	W16
	.byte		N16   , An3 , v056
	.byte	W28
	.byte	W01
	.byte		N14   , An3 , v096
	.byte	W15
	.byte		N18   , Fn3 , v040
	.byte	W08
@ 059   ----------------------------------------
	.byte	W15
	.byte		N08   , Fn3 , v088
	.byte	W10
	.byte		N30   , Cn3 , v072
	.byte	W68
	.byte	W03
@ 060   ----------------------------------------
	.byte	W24
	.byte		N05   , Gn3 , v108
	.byte	W24
	.byte		N17   , Gn3 , v127
	.byte	W24
	.byte		N14   , An3 , v112
	.byte	W24
@ 061   ----------------------------------------
	.byte		N02   , Gn3 , v080
	.byte		N18   , As3 , v127
	.byte	W24
	.byte		N11   , An3 , v116
	.byte	W15
	.byte		N12   , Gn3 , v084
	.byte	W24
	.byte		N04   , As2 , v028
	.byte	W09
	.byte		N11   , Dn3 , v124
	.byte	W15
	.byte		N03   , Cn3 , v060
	.byte	W09
@ 062   ----------------------------------------
	.byte		N10   , Ds3 , v124
	.byte	W15
	.byte		N11   , Ds3 , v116
	.byte	W09
	.byte		N12   , Dn3 , v088
	.byte	W24
	.byte		N22   , Dn3 , v127
	.byte	W24
	.byte		N11   , Cn3 , v104
	.byte	W15
	.byte		N44   , Fn2 , v092
	.byte	W09
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W16
	.byte		N08   , As2 , v127
	.byte	W11
	.byte		N07   , Bn2 , v076
	.byte	W08
	.byte		        Dn3 , v088
	.byte	W09
	.byte		N05   , En3 
	.byte	W07
	.byte		N14   , Gn3 , v120
	.byte	W24
	.byte		N12   , As3 , v127
	.byte	W15
	.byte		N15   , Bn3 , v120
	.byte	W06
@ 065   ----------------------------------------
	.byte	W16
	.byte		N09   , Bn3 , v116
	.byte	W11
	.byte		        Gn3 , v112
	.byte	W13
	.byte		N06   , Dn3 , v088
	.byte	W10
	.byte		N12   , Cs3 , v127
	.byte		N13   , Gn3 , v124
	.byte	W15
	.byte		N04   , Cn3 , v056
	.byte	W13
	.byte		N08   , As2 , v100
	.byte	W18
@ 066   ----------------------------------------
	.byte		N03   , An2 , v112
	.byte	W15
	.byte		N05   , An2 , v064
	.byte	W09
	.byte		N10   , An2 , v112
	.byte	W15
	.byte		N07   , Cn3 , v080
	.byte	W09
	.byte		N14   , Dn3 , v127
	.byte	W15
	.byte		        Cn3 , v088
	.byte	W32
	.byte	W01
@ 067   ----------------------------------------
	.byte		N11   , Ds3 , v127
	.byte	W15
	.byte		N12   , Ds3 , v124
	.byte	W09
	.byte		N13   , Dn3 , v120
	.byte	W15
	.byte		N18   , Cn3 , v100
	.byte	W56
	.byte	W01
@ 068   ----------------------------------------
	.byte	W48
	.byte	W02
	.byte		N10   , Gn3 , v120
	.byte	W15
	.byte		N07   , As3 , v096
	.byte	W08
	.byte		N12   , Cn4 , v124
	.byte	W23
@ 069   ----------------------------------------
	.byte	W01
	.byte		N11   , Cs4 , v127
	.byte	W14
	.byte		N09   
	.byte	W10
	.byte		N15   , Cn4 , v120
	.byte	W19
	.byte		N04   , Cs3 , v056
	.byte	W07
	.byte		N10   , Cs4 , v127
	.byte	W14
	.byte		        Cs4 , v124
	.byte	W12
	.byte		        Cn4 , v104
	.byte	W12
	.byte		N09   , As3 , v120
	.byte	W07
@ 070   ----------------------------------------
	.byte	W03
	.byte		N11   , An3 , v104
	.byte	W15
	.byte		N07   , Gs3 , v127
	.byte	W19
	.byte		N04   , An3 , v040
	.byte	W04
	.byte		N08   , Cn4 , v096
	.byte	W06
	.byte		N11   , En4 , v116
	.byte	W16
	.byte		N14   , Gn4 , v127
	.byte	W11
	.byte		        Fs4 , v116
	.byte	W22
@ 071   ----------------------------------------
	.byte	W01
	.byte		N11   , Fn4 , v127
	.byte	W17
	.byte		N05   , An3 , v020
	.byte	W07
	.byte		N10   , Cn4 , v100
	.byte	W15
	.byte		        En4 , v127
	.byte	W10
	.byte		        Ds4 , v108
	.byte	W15
	.byte		N04   , Bn3 , v052
	.byte	W09
	.byte		N09   , As3 , v120
	.byte	W15
	.byte		N07   , Gs3 , v112
	.byte	W07
@ 072   ----------------------------------------
	.byte	W03
	.byte		N09   , Gn3 
	.byte	W13
	.byte		N08   
	.byte	W09
	.byte		N14   , An3 
	.byte	W24
	.byte	W01
	.byte		N19   , Cn4 , v127
	.byte	W23
	.byte		N14   , An3 , v120
	.byte	W23
@ 073   ----------------------------------------
	.byte	W01
	.byte		N11   , Ds4 , v127
	.byte		N19   , Gn4 
	.byte	W15
	.byte		N07   , En4 , v088
	.byte	W10
	.byte		N24   , Gn4 , v120
	.byte	W01
	.byte		N12   , Ds4 , v127
	.byte	W14
	.byte		N13   , En4 , v112
	.byte	W54
	.byte	W01
@ 074   ----------------------------------------
	.byte	W36
	.byte	W02
	.byte		N05   , Gn3 , v084
	.byte	W10
	.byte		N10   , Gn4 , v127
	.byte	W15
	.byte		N09   , Gn4 , v124
	.byte	W11
	.byte		N10   , Fs4 , v120
	.byte	W13
	.byte		N09   , Fs4 , v127
	.byte	W09
@ 075   ----------------------------------------
	.byte	W03
	.byte		N08   , Fn4 , v124
	.byte	W12
	.byte		        Fn4 , v120
	.byte	W11
	.byte		N10   , Ds4 
	.byte	W13
	.byte		N17   , En4 , v127
	.byte	W23
	.byte		N07   , Cn4 , v116
	.byte	W10
	.byte		N22   , Gn3 , v108
	.byte	W24
@ 076   ----------------------------------------
	.byte	W48
	.byte	W02
	.byte		N12   , Ds4 , v127
	.byte		N12   , Gn4 
	.byte	W14
	.byte		N07   , En4 , v080
	.byte	W10
	.byte		N11   , Gn4 , v127
	.byte	W01
	.byte		N13   , Ds4 
	.byte	W13
	.byte		N06   , En4 , v108
	.byte	W02
	.byte		N03   , Gn4 , v092
	.byte	W06
@ 077   ----------------------------------------
	.byte	W03
	.byte		N09   , Cn4 , v120
	.byte		N09   , Gn4 , v108
	.byte	W14
	.byte		N12   , Cn4 , v116
	.byte		N13   , Gn4 
	.byte	W32
	.byte	W02
	.byte		N12   , Ds4 , v127
	.byte		N14   , Gn4 , v124
	.byte	W24
	.byte		        Ds4 , v127
	.byte	W02
	.byte		        Gn4 , v084
	.byte	W14
	.byte		N13   , Dn4 , v104
	.byte	W03
	.byte		N10   , Gn4 , v064
	.byte	W02
@ 078   ----------------------------------------
	.byte	W18
	.byte		N08   , Dn4 , v124
	.byte		N15   , Gn4 , v116
	.byte	W09
	.byte		N17   , Cn4 , v100
	.byte	W22
	.byte		N11   , Dn4 , v120
	.byte	W14
	.byte		N07   , Cn4 , v092
	.byte	W10
	.byte		N14   , An3 , v088
	.byte	W23
@ 079   ----------------------------------------
	.byte	W02
	.byte		N17   , Cn4 , v127
	.byte	W21
	.byte		        An3 , v076
	.byte	W22
	.byte		N09   , Fn3 , v084
	.byte	W20
	.byte		        Fn3 , v108
	.byte	W10
	.byte		N16   , Cn3 , v092
	.byte	W21
@ 080   ----------------------------------------
	.byte	W64
	.byte	W01
	.byte		N07   , Cn3 , v116
	.byte	W09
	.byte		N09   , Dn3 , v104
	.byte	W08
	.byte		N06   , Ds3 , v108
	.byte	W08
	.byte		        En3 , v096
	.byte	W06
@ 081   ----------------------------------------
	.byte	W02
	.byte		N14   , Gn3 , v124
	.byte	W24
	.byte	W01
	.byte		N13   , An3 , v127
	.byte	W17
	.byte		N03   , Gn3 , v056
	.byte	W08
	.byte		N10   , As3 , v127
	.byte	W14
	.byte		N14   
	.byte	W09
	.byte		N12   , An3 , v104
	.byte	W15
	.byte		N06   , Gn3 , v084
	.byte	W06
@ 082   ----------------------------------------
	.byte	W03
	.byte		N11   , Gs3 , v112
	.byte	W14
	.byte		N03   , An3 , v076
	.byte	W09
	.byte		N10   , Dn4 , v127
	.byte	W14
	.byte		N08   , Cs4 , v120
	.byte	W11
	.byte		N12   , Cn4 
	.byte	W13
	.byte		N05   , En3 , v080
	.byte	W09
	.byte		N07   , Fn3 , v068
	.byte	W13
	.byte		N10   , As3 , v127
	.byte	W10
@ 083   ----------------------------------------
	.byte	W01
	.byte		N09   , An3 , v096
	.byte	W12
	.byte		N07   , Fn3 , v084
	.byte	W11
	.byte		N10   , Cn3 
	.byte	W14
	.byte		N09   , As2 , v120
	.byte	W09
	.byte		        An2 , v076
	.byte	W14
	.byte		        Gs2 , v120
	.byte	W11
	.byte		        An2 , v096
	.byte	W11
	.byte		N08   , Cn3 , v084
	.byte	W13
@ 084   ----------------------------------------
	.byte	W01
	.byte		N13   , Dn3 , v108
	.byte	W15
	.byte		N09   , En3 , v116
	.byte	W23
	.byte		N12   , Fn3 , v127
	.byte	W10
	.byte		N09   , Ds3 , v116
	.byte	W14
	.byte		N10   , En3 , v092
	.byte	W10
	.byte		        Gs3 , v116
	.byte	W14
	.byte		N07   , Bn3 , v112
	.byte	W09
@ 085   ----------------------------------------
	.byte	W04
	.byte		N11   , En4 , v127
	.byte	W12
	.byte		N07   , Ds4 , v120
	.byte	W11
	.byte		N19   , En4 , v124
	.byte	W24
	.byte		N10   , Dn4 , v127
	.byte	W15
	.byte		N03   , Cn4 , v088
	.byte	W08
	.byte		N11   , Dn4 , v127
	.byte	W14
	.byte		N17   , Cn4 
	.byte	W08
@ 086   ----------------------------------------
	.byte	W14
	.byte		N05   , Bn3 , v100
	.byte	W09
	.byte		N18   , Cn4 , v124
	.byte	W19
	.byte		N03   , Cn3 , v060
	.byte	W07
	.byte		N11   , An3 , v124
	.byte	W14
	.byte		N08   , En3 , v084
	.byte	W09
	.byte		N11   , Dn3 , v108
	.byte	W16
	.byte		N04   , Cn3 , v068
	.byte	W08
@ 087   ----------------------------------------
	.byte		N07   , Dn3 , v096
	.byte	W05
	.byte		N18   , Ds3 , v092
	.byte		N16   , An3 , v064
	.byte	W03
	.byte		N04   , Gn3 , v028
	.byte	W19
	.byte		N19   , Ds3 , v127
	.byte		N18   , An3 , v112
	.byte	W24
	.byte	W01
	.byte		N08   , Dn3 , v120
	.byte	W01
	.byte		N12   , An3 , v096
	.byte	W12
	.byte		N04   , Cn3 , v060
	.byte	W08
	.byte		N19   , An3 , v112
	.byte	W01
	.byte		N14   , Dn3 , v116
	.byte	W22
@ 088   ----------------------------------------
	.byte	W03
	.byte		N12   , Cn3 , v108
	.byte	W17
	.byte		N06   , An2 , v032
	.byte	W30
	.byte		        Dn3 , v112
	.byte	W08
	.byte		N07   , Cn3 , v072
	.byte	W08
	.byte		N08   , Dn3 , v060
	.byte	W07
	.byte		N06   , Ds3 , v108
	.byte	W07
	.byte		N07   , Dn3 , v076
	.byte	W08
	.byte		N08   , Ds3 , v072
	.byte	W08
@ 089   ----------------------------------------
	.byte		N07   , Fn3 , v084
	.byte	W08
	.byte		N10   , Ds3 , v068
	.byte	W08
	.byte		        Fn3 , v060
	.byte	W08
	.byte		N07   , Gn3 , v108
	.byte	W07
	.byte		N08   , Fn3 , v096
	.byte	W10
	.byte		N09   , Gn3 , v100
	.byte	W07
	.byte		N07   , As3 , v120
	.byte	W09
	.byte		N06   , Gn3 , v068
	.byte	W08
	.byte		N08   , As3 , v084
	.byte	W07
	.byte		N07   , Cn4 , v096
	.byte	W08
	.byte		N12   , As3 , v080
	.byte	W08
	.byte		N13   , Cn4 , v096
	.byte	W08
@ 090   ----------------------------------------
	.byte	W01
	.byte		N09   , Dn4 , v124
	.byte	W24
	.byte	W01
	.byte		N11   , Ds4 , v127
	.byte	W14
	.byte		N07   , Fn4 , v096
	.byte	W09
	.byte		N09   , Fs4 , v124
	.byte	W14
	.byte		N10   , As4 , v127
	.byte	W11
	.byte		N09   , An4 , v120
	.byte	W13
	.byte		N10   , Gs4 , v127
	.byte	W09
@ 091   ----------------------------------------
	.byte	W02
	.byte		N07   , Gn4 , v100
	.byte	W13
	.byte		N12   , Fs4 , v127
	.byte	W10
	.byte		N08   , Fn4 , v096
	.byte	W13
	.byte		N12   , Ds4 , v127
	.byte	W13
	.byte		N07   , Bn3 , v068
	.byte	W12
	.byte		N11   , As3 , v127
	.byte	W10
	.byte		N09   , Gs3 , v104
	.byte	W13
	.byte		        Fs3 , v100
	.byte	W10
	.byte	GOTO
	 mPtr	mus_ice_paradise__act_2_1_B1
mus_ice_paradise__act_2_1_B2:
@ 092   ----------------------------------------
	.byte	FINE

@ **************** Track 2 (Midi-Chn.2) ****************

mus_ice_paradise__act_2_2:
	.byte	KEYSH , mus_ice_paradise__act_2_key+0
mus_ice_paradise__act_2_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_ice_paradise__act_2_mvl/mxv
	.byte		N23   , Cn1 , v127
	.byte		N36   , Ds1 , v060
	.byte	W24
	.byte		N15   , Cs1 , v127
	.byte	W16
	.byte		N23   , Cn1 
	.byte		N16   , Ds1 , v060
	.byte	W24
	.byte		N07   , Gn1 , v127
	.byte	W08
	.byte		N23   , Fs1 
	.byte	W24
@ 001   ----------------------------------------
mus_ice_paradise__act_2_2_001:
	.byte		N23   , Cn1 , v127
	.byte		N36   , Ds1 , v060
	.byte	W24
	.byte		N15   , Cs1 , v127
	.byte	W16
	.byte		N23   , Cn1 
	.byte		N16   , Ds1 , v060
	.byte	W24
	.byte		N07   , Cs1 , v127
	.byte	W08
	.byte		N23   
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
mus_ice_paradise__act_2_2_002:
	.byte		N23   , Cn1 , v127
	.byte		N36   , Ds1 , v060
	.byte	W24
	.byte		N15   , Cs1 , v127
	.byte	W16
	.byte		N23   , Cn1 
	.byte		N16   , Ds1 , v060
	.byte	W24
	.byte		N07   , Cs1 , v127
	.byte	W08
	.byte		N15   
	.byte	W16
	.byte		N23   , Cn1 
	.byte		N36   , Ds1 , v060
	.byte	W08
	.byte	PEND
@ 003   ----------------------------------------
mus_ice_paradise__act_2_2_003:
	.byte	W16
	.byte		N07   , Cs1 , v127
	.byte	W08
	.byte		N15   
	.byte	W16
	.byte		N07   , Gs1 
	.byte	W08
	.byte		        Cn1 
	.byte	W08
	.byte		        Cs1 , v060
	.byte	W08
	.byte		        Cs1 , v100
	.byte	W08
	.byte		        Cs1 , v127
	.byte		N08   , Dn1 , v048
	.byte	W16
	.byte		N07   , Gn1 , v100
	.byte	W08
	.byte	PEND
@ 004   ----------------------------------------
mus_ice_paradise__act_2_2_004:
	.byte		N08   , Cn1 , v127
	.byte		N96   , Cs2 
	.byte	W16
	.byte		N08   , Dn1 , v048
	.byte	W08
	.byte		        Cs1 , v127
	.byte		N08   , Ds1 , v064
	.byte		N24   , Fs3 , v092
	.byte	W16
	.byte		N08   , Dn1 , v048
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N08   , Dn1 , v048
	.byte	W16
	.byte		N08   
	.byte	W08
	.byte		        Cs1 , v127
	.byte		N08   , Ds1 , v064
	.byte		N24   , Fs3 , v092
	.byte	W16
	.byte		N08   , Cn1 , v127
	.byte		N23   , Ds1 , v068
	.byte	W08
	.byte	PEND
@ 005   ----------------------------------------
mus_ice_paradise__act_2_2_005:
	.byte	W16
	.byte		N08   , Cn1 , v127
	.byte		N08   , Dn1 , v048
	.byte	W08
	.byte		        Cs1 , v127
	.byte		N08   , Ds1 , v064
	.byte		N24   , Fs3 , v092
	.byte	W16
	.byte		N08   , Dn1 , v048
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N08   , Dn1 , v048
	.byte	W16
	.byte		N08   
	.byte	W08
	.byte		        Cs1 , v127
	.byte		N08   , Ds1 , v064
	.byte		N24   , Fs3 , v092
	.byte	W16
	.byte		N08   , Dn1 , v048
	.byte	W08
	.byte	PEND
@ 006   ----------------------------------------
mus_ice_paradise__act_2_2_006:
	.byte		N08   , Cn1 , v127
	.byte		N08   , Dn1 , v048
	.byte	W16
	.byte		N08   
	.byte	W08
	.byte		        Cs1 , v127
	.byte		N08   , Ds1 , v064
	.byte		N24   , Fs3 , v092
	.byte	W16
	.byte		N08   , Dn1 , v048
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N08   , Dn1 , v048
	.byte	W16
	.byte		N08   
	.byte	W08
	.byte		        Cs1 , v127
	.byte		N08   , Ds1 , v064
	.byte		N24   , Fs3 , v092
	.byte	W16
	.byte		N08   , Cn1 , v127
	.byte		N23   , Ds1 , v068
	.byte	W08
	.byte	PEND
@ 007   ----------------------------------------
mus_ice_paradise__act_2_2_007:
	.byte	W16
	.byte		N08   , Cn1 , v127
	.byte		N08   , Dn1 , v048
	.byte	W08
	.byte		        Cs1 , v127
	.byte		N08   , Ds1 , v064
	.byte		N24   , Fs3 , v092
	.byte	W16
	.byte		N08   , Dn1 , v048
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N08   , Dn1 , v048
	.byte	W16
	.byte		        Cs1 , v127
	.byte		N08   , Dn1 , v048
	.byte	W08
	.byte		        Cs1 , v127
	.byte		N08   , Ds1 , v064
	.byte		N24   , Fs3 , v092
	.byte	W16
	.byte		N08   , Dn1 , v048
	.byte	W08
	.byte	PEND
@ 008   ----------------------------------------
mus_ice_paradise__act_2_2_008:
	.byte		N08   , Cn1 , v127
	.byte		N08   , Dn1 , v048
	.byte		N96   , Cs2 , v127
	.byte	W16
	.byte		N08   , Dn1 , v048
	.byte	W08
	.byte		        Cs1 , v127
	.byte		N08   , Ds1 , v064
	.byte		N24   , Fs3 , v092
	.byte	W16
	.byte		N08   , Dn1 , v048
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N08   , Dn1 , v048
	.byte	W16
	.byte		N08   
	.byte	W08
	.byte		        Cs1 , v127
	.byte		N08   , Ds1 , v064
	.byte		N24   , Fs3 , v092
	.byte	W16
	.byte		N08   , Cn1 , v127
	.byte		N23   , Ds1 , v068
	.byte	W08
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_005
@ 010   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_006
@ 011   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_005
@ 012   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_006
@ 013   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_005
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_006
@ 015   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_005
@ 016   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_008
@ 017   ----------------------------------------
mus_ice_paradise__act_2_2_017:
	.byte	W16
	.byte		N08   , Cn1 , v127
	.byte		N08   , Dn1 , v048
	.byte	W08
	.byte		        Cs1 , v127
	.byte		N08   , Ds1 , v064
	.byte		N24   , Fs3 , v092
	.byte	W16
	.byte		N08   , Dn1 , v048
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N15   , Ds1 , v084
	.byte	W16
	.byte		N08   , Cs1 , v127
	.byte		N08   , Dn1 , v048
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N15   , Ds1 , v084
	.byte		N24   , Fs3 , v092
	.byte	W16
	.byte		N08   , Cs1 , v127
	.byte	W08
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_008
@ 019   ----------------------------------------
mus_ice_paradise__act_2_2_019:
	.byte	W16
	.byte		N08   , Cn1 , v127
	.byte		N08   , Dn1 , v048
	.byte	W08
	.byte		        Cs1 , v127
	.byte		N08   , Ds1 , v064
	.byte		N24   , Fs3 , v092
	.byte	W16
	.byte		N08   , Dn1 , v048
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N15   , Ds1 , v084
	.byte	W16
	.byte		N08   , Cs1 , v127
	.byte		N08   , Dn1 , v048
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N24   , Fs3 , v092
	.byte	W08
	.byte		N08   , Cs1 , v056
	.byte	W08
	.byte		        Cs1 , v127
	.byte	W08
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_006
@ 021   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_005
@ 022   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_006
@ 023   ----------------------------------------
mus_ice_paradise__act_2_2_023:
	.byte	W16
	.byte		N08   , Cn1 , v127
	.byte		N08   , Dn1 , v048
	.byte	W08
	.byte		        Cs1 , v127
	.byte		N08   , Ds1 , v064
	.byte		N24   , Fs3 , v092
	.byte	W16
	.byte		N08   , Dn1 , v048
	.byte	W08
	.byte		        Cn1 , v127
	.byte		N08   , Dn1 , v048
	.byte	W16
	.byte		N07   , Cs1 , v127
	.byte		N08   , Dn1 , v048
	.byte	W08
	.byte		N07   , Cs1 , v127
	.byte		N08   , Ds1 , v064
	.byte		N24   , Fs3 , v092
	.byte	W08
	.byte		N07   , Cs1 , v127
	.byte	W08
	.byte		N08   
	.byte		N08   , Dn1 , v048
	.byte	W08
	.byte	PEND
@ 024   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_008
@ 025   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_005
@ 026   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_006
@ 027   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_007
@ 028   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_008
@ 029   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_005
@ 030   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_006
@ 031   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_005
@ 032   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_006
@ 033   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_005
@ 034   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_006
@ 035   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_007
@ 036   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_008
@ 037   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_005
@ 038   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_008
@ 039   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_005
@ 040   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_008
@ 041   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_005
@ 042   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_006
@ 043   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_007
@ 044   ----------------------------------------
	.byte		N23   , Cn1 , v127
	.byte		N36   , Ds1 , v060
	.byte	W24
	.byte		N15   , Cs1 , v127
	.byte	W16
	.byte		N23   , Cn1 
	.byte		N16   , Ds1 , v060
	.byte	W24
	.byte		N07   , Gn1 , v127
	.byte	W08
	.byte		N23   , Fs1 
	.byte	W24
@ 045   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_001
@ 046   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_002
@ 047   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_003
@ 048   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_004
@ 049   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_005
@ 050   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_006
@ 051   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_007
@ 052   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_008
@ 053   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_005
@ 054   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_006
@ 055   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_023
@ 056   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_008
@ 057   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_005
@ 058   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_006
@ 059   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_005
@ 060   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_006
@ 061   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_005
@ 062   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_006
@ 063   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_005
@ 064   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_008
@ 065   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_017
@ 066   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_008
@ 067   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_019
@ 068   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_006
@ 069   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_005
@ 070   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_006
@ 071   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_023
@ 072   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_008
@ 073   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_005
@ 074   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_006
@ 075   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_007
@ 076   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_008
@ 077   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_005
@ 078   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_006
@ 079   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_005
@ 080   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_006
@ 081   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_005
@ 082   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_006
@ 083   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_007
@ 084   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_008
@ 085   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_005
@ 086   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_008
@ 087   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_005
@ 088   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_008
@ 089   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_005
@ 090   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_006
@ 091   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_2_007
	.byte	GOTO
	 mPtr	mus_ice_paradise__act_2_2_B1
mus_ice_paradise__act_2_2_B2:
@ 092   ----------------------------------------
	.byte	FINE

@ **************** Track 3 (Midi-Chn.3) ****************

mus_ice_paradise__act_2_3:
	.byte	KEYSH , mus_ice_paradise__act_2_key+0
mus_ice_paradise__act_2_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 49
	.byte		VOL   , 127*mus_ice_paradise__act_2_mvl/mxv
	.byte		N30   , Fs2 , v127
	.byte	W36
	.byte	W03
	.byte		N52   
	.byte	W56
	.byte	W01
@ 001   ----------------------------------------
mus_ice_paradise__act_2_3_001:
	.byte		N28   , Fs3 , v127
	.byte	W36
	.byte	W03
	.byte		N44   
	.byte	W56
	.byte	W01
	.byte	PEND
@ 002   ----------------------------------------
mus_ice_paradise__act_2_3_002:
	.byte		N30   , Fs2 , v127
	.byte	W36
	.byte	W03
	.byte		N19   
	.byte	W24
	.byte		N14   , Cs3 
	.byte	W24
	.byte		N36   , Fs3 
	.byte	W09
	.byte	PEND
@ 003   ----------------------------------------
mus_ice_paradise__act_2_3_003:
	.byte	W36
	.byte	W03
	.byte		N54   , Fs2 , v127
	.byte	W56
	.byte	W01
	.byte	PEND
@ 004   ----------------------------------------
mus_ice_paradise__act_2_3_004:
	.byte		N10   , Bn1 , v127
	.byte	W24
	.byte		N14   
	.byte	W24
	.byte		N14   
	.byte	W15
	.byte		N08   , Fs1 
	.byte	W09
	.byte		N14   , Gs1 
	.byte	W15
	.byte		N17   , Bn1 
	.byte	W09
	.byte	PEND
@ 005   ----------------------------------------
mus_ice_paradise__act_2_3_005:
	.byte	W15
	.byte		N08   , Bn1 , v127
	.byte	W09
	.byte		N14   , Fs1 
	.byte	W15
	.byte		N08   , Gs1 
	.byte	W09
	.byte		N23   , Bn1 
	.byte	W24
	.byte		        Fs2 
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_004
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_005
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_004
@ 009   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_005
@ 010   ----------------------------------------
mus_ice_paradise__act_2_3_010:
	.byte		N10   , En2 , v127
	.byte	W24
	.byte		N14   
	.byte	W24
	.byte		N14   
	.byte	W15
	.byte		N08   , Bn1 
	.byte	W09
	.byte		N14   , Cs2 
	.byte	W15
	.byte		N17   , En2 
	.byte	W09
	.byte	PEND
@ 011   ----------------------------------------
mus_ice_paradise__act_2_3_011:
	.byte	W15
	.byte		N08   , En2 , v127
	.byte	W09
	.byte		N14   , Bn1 
	.byte	W15
	.byte		N08   , Cs2 
	.byte	W09
	.byte		N23   , En2 
	.byte	W24
	.byte		        Fs2 
	.byte	W24
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_004
@ 013   ----------------------------------------
mus_ice_paradise__act_2_3_013:
	.byte	W15
	.byte		N08   , Bn1 , v127
	.byte	W09
	.byte		N14   , Fs1 
	.byte	W15
	.byte		N08   , Gs1 
	.byte	W09
	.byte		N23   , Bn1 
	.byte	W24
	.byte		        As1 
	.byte	W24
	.byte	PEND
@ 014   ----------------------------------------
mus_ice_paradise__act_2_3_014:
	.byte		N10   , An1 , v127
	.byte	W24
	.byte		N14   
	.byte	W24
	.byte		N14   
	.byte	W15
	.byte		N08   , En1 
	.byte	W09
	.byte		N14   , Fs1 
	.byte	W15
	.byte		N17   , An1 
	.byte	W09
	.byte	PEND
@ 015   ----------------------------------------
	.byte	W15
	.byte		N08   
	.byte	W09
	.byte		N14   , En1 
	.byte	W15
	.byte		N08   , Fs1 
	.byte	W09
	.byte		N23   , An1 
	.byte	W24
	.byte		        En2 
	.byte	W24
@ 016   ----------------------------------------
	.byte		N10   , Fs2 
	.byte	W24
	.byte		N14   
	.byte	W24
	.byte		N14   
	.byte	W15
	.byte		N08   , Cs2 
	.byte	W09
	.byte		N14   , Ds2 
	.byte	W15
	.byte		N17   , Fs2 
	.byte	W09
@ 017   ----------------------------------------
	.byte	W15
	.byte		N08   
	.byte	W09
	.byte		N14   , Cs2 
	.byte	W15
	.byte		N08   , Ds2 
	.byte	W09
	.byte		N23   , Fs2 
	.byte	W24
	.byte		        Fn2 
	.byte	W24
@ 018   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_010
@ 019   ----------------------------------------
	.byte	W15
	.byte		N08   , En2 , v127
	.byte	W09
	.byte		N14   , Bn1 
	.byte	W15
	.byte		N08   , Cs2 
	.byte	W09
	.byte		N23   , En2 
	.byte	W24
	.byte		        Ds2 
	.byte	W24
@ 020   ----------------------------------------
	.byte		N10   , Dn2 
	.byte	W24
	.byte		N14   
	.byte	W24
	.byte		N14   
	.byte	W15
	.byte		N08   , An1 
	.byte	W09
	.byte		N14   , Bn1 
	.byte	W15
	.byte		N17   , Dn2 
	.byte	W09
@ 021   ----------------------------------------
	.byte	W15
	.byte		N08   
	.byte	W09
	.byte		N14   , An1 
	.byte	W15
	.byte		N08   , Bn1 
	.byte	W09
	.byte		N14   , Dn2 
	.byte	W15
	.byte		N08   , An2 
	.byte	W09
	.byte		N23   , Dn2 
	.byte	W24
@ 022   ----------------------------------------
	.byte		N10   , Cs2 
	.byte	W24
	.byte		N14   
	.byte	W24
	.byte		N14   
	.byte	W15
	.byte		N08   , Ds2 
	.byte	W09
	.byte		N14   , En2 
	.byte	W15
	.byte		N17   , Fs2 
	.byte	W09
@ 023   ----------------------------------------
	.byte	W15
	.byte		N08   
	.byte	W09
	.byte		N14   , Cs2 
	.byte	W24
	.byte		N23   , Fs2 
	.byte	W24
	.byte		        Fs1 
	.byte	W24
@ 024   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_004
@ 025   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_005
@ 026   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_004
@ 027   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_005
@ 028   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_004
@ 029   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_005
@ 030   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_010
@ 031   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_011
@ 032   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_004
@ 033   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_013
@ 034   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_014
@ 035   ----------------------------------------
	.byte	W15
	.byte		N08   , An1 , v127
	.byte	W09
	.byte		N14   , En1 
	.byte	W15
	.byte		N08   , Fs1 
	.byte	W09
	.byte		N23   , An1 
	.byte	W24
	.byte		N23   
	.byte	W24
@ 036   ----------------------------------------
	.byte		N10   , As1 
	.byte	W24
	.byte		N14   
	.byte	W24
	.byte		N14   
	.byte	W15
	.byte		N08   , Bn1 
	.byte	W09
	.byte		N14   , Cs2 
	.byte	W15
	.byte		N17   , Ds2 
	.byte	W09
@ 037   ----------------------------------------
	.byte	W15
	.byte		N08   
	.byte	W09
	.byte		N14   , As1 
	.byte	W24
	.byte		N23   , Ds2 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
@ 038   ----------------------------------------
	.byte		N10   , Gs2 
	.byte	W24
	.byte		N14   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N14   , Ds2 
	.byte	W15
	.byte		N17   , Gs2 
	.byte	W09
@ 039   ----------------------------------------
	.byte	W15
	.byte		N08   
	.byte	W09
	.byte		N23   , Ds2 
	.byte	W24
	.byte		        Gs2 
	.byte	W24
	.byte		        Gs1 
	.byte	W24
@ 040   ----------------------------------------
	.byte		N10   , An1 
	.byte	W24
	.byte		N14   
	.byte	W24
	.byte		N14   
	.byte	W15
	.byte		N08   , Bn1 
	.byte	W09
	.byte		N14   , Cs2 
	.byte	W15
	.byte		N17   , Dn2 
	.byte	W09
@ 041   ----------------------------------------
	.byte	W15
	.byte		N08   
	.byte	W09
	.byte		N14   , An1 
	.byte	W15
	.byte		N08   , Bn1 
	.byte	W09
	.byte		N23   , Dn2 
	.byte	W24
	.byte		        An2 
	.byte	W24
@ 042   ----------------------------------------
	.byte		N10   , Gn2 
	.byte	W24
	.byte		N14   
	.byte	W24
	.byte		N14   
	.byte	W15
	.byte		N08   , Dn2 
	.byte	W09
	.byte		N14   , Gn1 
	.byte	W15
	.byte		N17   , Cn2 
	.byte	W09
@ 043   ----------------------------------------
	.byte	W15
	.byte		N08   
	.byte	W09
	.byte		N14   , Gn1 
	.byte	W15
	.byte		N08   , An1 
	.byte	W09
	.byte		N23   , Cn2 
	.byte	W24
	.byte		        Fn2 
	.byte	W24
@ 044   ----------------------------------------
	.byte		N30   , Fs2 
	.byte	W36
	.byte	W03
	.byte		N52   
	.byte	W56
	.byte	W01
@ 045   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_001
@ 046   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_002
@ 047   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_003
@ 048   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_004
@ 049   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_005
@ 050   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_004
@ 051   ----------------------------------------
	.byte	W15
	.byte		N08   , Bn1 , v127
	.byte	W09
	.byte		N14   , Fs1 
	.byte	W15
	.byte		N08   , Gs1 
	.byte	W09
	.byte		N23   , Bn1 
	.byte	W24
	.byte		N11   , As1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
@ 052   ----------------------------------------
mus_ice_paradise__act_2_3_052:
	.byte		N10   , Cn2 , v127
	.byte	W24
	.byte		N14   
	.byte	W24
	.byte		N14   
	.byte	W15
	.byte		N08   , Gn1 
	.byte	W09
	.byte		N14   , An1 
	.byte	W15
	.byte		N17   , Cn2 
	.byte	W09
	.byte	PEND
@ 053   ----------------------------------------
mus_ice_paradise__act_2_3_053:
	.byte	W15
	.byte		N08   , Cn2 , v127
	.byte	W09
	.byte		N14   , Gn1 
	.byte	W15
	.byte		N08   , An1 
	.byte	W09
	.byte		N23   , Cn2 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte	PEND
@ 054   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_052
@ 055   ----------------------------------------
	.byte	W15
	.byte		N08   , Cn2 , v127
	.byte	W09
	.byte		N14   , Gn1 
	.byte	W15
	.byte		N08   , An1 
	.byte	W09
	.byte		N23   , Cn2 
	.byte	W24
	.byte		        Gn1 
	.byte	W24
@ 056   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_052
@ 057   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_053
@ 058   ----------------------------------------
mus_ice_paradise__act_2_3_058:
	.byte		N10   , Fn2 , v127
	.byte	W24
	.byte		N14   
	.byte	W24
	.byte		N14   
	.byte	W15
	.byte		N08   , Cn2 
	.byte	W09
	.byte		N14   , Dn2 
	.byte	W15
	.byte		N17   , Fn2 
	.byte	W09
	.byte	PEND
@ 059   ----------------------------------------
mus_ice_paradise__act_2_3_059:
	.byte	W15
	.byte		N08   , Fn2 , v127
	.byte	W09
	.byte		N14   , Cn2 
	.byte	W15
	.byte		N08   , Dn2 
	.byte	W09
	.byte		N23   , Fn2 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte	PEND
@ 060   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_052
@ 061   ----------------------------------------
mus_ice_paradise__act_2_3_061:
	.byte	W15
	.byte		N08   , Cn2 , v127
	.byte	W09
	.byte		N14   , Gn1 
	.byte	W15
	.byte		N08   , An1 
	.byte	W09
	.byte		N23   , Cn2 
	.byte	W24
	.byte		        Bn1 
	.byte	W24
	.byte	PEND
@ 062   ----------------------------------------
mus_ice_paradise__act_2_3_062:
	.byte		N10   , As1 , v127
	.byte	W24
	.byte		N14   
	.byte	W24
	.byte		N14   
	.byte	W15
	.byte		N08   , Fn1 
	.byte	W09
	.byte		N14   , Gn1 
	.byte	W15
	.byte		N17   , As1 
	.byte	W09
	.byte	PEND
@ 063   ----------------------------------------
	.byte	W15
	.byte		N08   
	.byte	W09
	.byte		N14   , Fn1 
	.byte	W15
	.byte		N08   , Gn1 
	.byte	W09
	.byte		N23   , As1 
	.byte	W24
	.byte		        Fn2 
	.byte	W24
@ 064   ----------------------------------------
	.byte		N10   , Gn2 
	.byte	W24
	.byte		N14   
	.byte	W24
	.byte		N14   
	.byte	W15
	.byte		N08   , Dn2 
	.byte	W09
	.byte		N14   , En2 
	.byte	W15
	.byte		N17   , Gn2 
	.byte	W09
@ 065   ----------------------------------------
	.byte	W15
	.byte		N08   
	.byte	W09
	.byte		N14   , Dn2 
	.byte	W15
	.byte		N08   , En2 
	.byte	W09
	.byte		N23   , Gn2 
	.byte	W24
	.byte		        Fs2 
	.byte	W24
@ 066   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_058
@ 067   ----------------------------------------
	.byte	W15
	.byte		N08   , Fn2 , v127
	.byte	W09
	.byte		N14   , Cn2 
	.byte	W15
	.byte		N08   , Dn2 
	.byte	W09
	.byte		N23   , Fn2 
	.byte	W24
	.byte		        En2 
	.byte	W24
@ 068   ----------------------------------------
	.byte		N10   , Ds2 
	.byte	W24
	.byte		N14   
	.byte	W24
	.byte		N14   
	.byte	W15
	.byte		N08   , As1 
	.byte	W09
	.byte		N14   , Cn2 
	.byte	W15
	.byte		N17   , Ds2 
	.byte	W09
@ 069   ----------------------------------------
	.byte	W15
	.byte		N08   
	.byte	W09
	.byte		N14   , As1 
	.byte	W15
	.byte		N08   , Cn2 
	.byte	W09
	.byte		N14   , Ds2 
	.byte	W15
	.byte		N08   , As2 
	.byte	W09
	.byte		N23   , Ds2 
	.byte	W24
@ 070   ----------------------------------------
	.byte		N10   , Dn2 
	.byte	W24
	.byte		N14   
	.byte	W24
	.byte		N14   
	.byte	W15
	.byte		N08   , En2 
	.byte	W09
	.byte		N14   , Fn2 
	.byte	W15
	.byte		N17   , Gn2 
	.byte	W09
@ 071   ----------------------------------------
	.byte	W15
	.byte		N08   
	.byte	W09
	.byte		N14   , Dn2 
	.byte	W24
	.byte		N23   , Gn2 
	.byte	W24
	.byte		        Gn1 
	.byte	W24
@ 072   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_052
@ 073   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_053
@ 074   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_052
@ 075   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_053
@ 076   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_052
@ 077   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_053
@ 078   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_058
@ 079   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_059
@ 080   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_052
@ 081   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_061
@ 082   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_3_062
@ 083   ----------------------------------------
	.byte	W15
	.byte		N08   , As1 , v127
	.byte	W09
	.byte		N14   , Fn1 
	.byte	W15
	.byte		N08   , Gn1 
	.byte	W09
	.byte		N23   , As1 
	.byte	W24
	.byte		N23   
	.byte	W24
@ 084   ----------------------------------------
	.byte		N10   , Bn1 
	.byte	W24
	.byte		N14   
	.byte	W24
	.byte		N14   
	.byte	W15
	.byte		N08   , Cn2 
	.byte	W09
	.byte		N14   , Dn2 
	.byte	W15
	.byte		N17   , En2 
	.byte	W09
@ 085   ----------------------------------------
	.byte	W15
	.byte		N08   
	.byte	W09
	.byte		N14   , Bn1 
	.byte	W24
	.byte		N23   , En2 
	.byte	W24
	.byte		        Gs2 
	.byte	W24
@ 086   ----------------------------------------
	.byte		N10   , An2 
	.byte	W24
	.byte		N14   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N14   , En2 
	.byte	W15
	.byte		N17   , An2 
	.byte	W09
@ 087   ----------------------------------------
	.byte	W15
	.byte		N08   
	.byte	W09
	.byte		N23   , En2 
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		        An1 
	.byte	W24
@ 088   ----------------------------------------
	.byte		N10   , As1 
	.byte	W24
	.byte		N14   
	.byte	W24
	.byte		N14   
	.byte	W15
	.byte		N08   , Cn2 
	.byte	W09
	.byte		N14   , Dn2 
	.byte	W15
	.byte		N17   , Ds2 
	.byte	W09
@ 089   ----------------------------------------
	.byte	W15
	.byte		N08   
	.byte	W09
	.byte		N14   , As1 
	.byte	W15
	.byte		N08   , Cn2 
	.byte	W09
	.byte		N23   , Ds2 
	.byte	W24
	.byte		        As2 
	.byte	W24
@ 090   ----------------------------------------
	.byte		N10   , Gs2 
	.byte	W24
	.byte		N14   
	.byte	W24
	.byte		N14   
	.byte	W15
	.byte		N08   , Ds2 
	.byte	W09
	.byte		N14   , Gs1 
	.byte	W15
	.byte		N17   , Cs2 
	.byte	W09
@ 091   ----------------------------------------
	.byte	W15
	.byte		N08   
	.byte	W09
	.byte		N14   , Gs1 
	.byte	W15
	.byte		N08   , As1 
	.byte	W09
	.byte		N23   , Cs2 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte	GOTO
	 mPtr	mus_ice_paradise__act_2_3_B1
mus_ice_paradise__act_2_3_B2:
@ 092   ----------------------------------------
	.byte	FINE

@ **************** Track 4 (Midi-Chn.4) ****************

mus_ice_paradise__act_2_4:
	.byte	KEYSH , mus_ice_paradise__act_2_key+0
mus_ice_paradise__act_2_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 66
	.byte		VOL   , 80*mus_ice_paradise__act_2_mvl/mxv
	.byte		N30   , Bn2 , v127
	.byte	W36
	.byte	W03
	.byte		N48   
	.byte	W56
	.byte	W01
@ 001   ----------------------------------------
mus_ice_paradise__act_2_4_001:
	.byte		N28   , En3 , v127
	.byte	W36
	.byte	W03
	.byte		N48   
	.byte	W56
	.byte	W01
	.byte	PEND
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
mus_ice_paradise__act_2_4_003:
	.byte	W16
	.byte		N02   , Gn3 , v064
	.byte	W02
	.byte		N01   , Fs3 , v076
	.byte	W02
	.byte		N03   , En3 , v100
	.byte	W04
	.byte		        Dn3 , v080
	.byte	W03
	.byte		        Cs3 , v056
	.byte	W03
	.byte		N02   , Bn2 , v084
	.byte	W03
	.byte		N03   , An2 
	.byte	W04
	.byte		N02   , Gn2 , v076
	.byte	W03
	.byte		        Fs2 , v080
	.byte	W02
	.byte		        En2 , v092
	.byte	W03
	.byte		        Dn2 , v080
	.byte	W02
	.byte		N03   , Cs2 , v052
	.byte	W04
	.byte		N01   , Bn1 , v024
	.byte	W02
	.byte		        Gn1 , v056
	.byte	W02
	.byte		        Fs1 , v072
	.byte	W01
	.byte		N09   , An1 , v004
	.byte	W10
	.byte		N02   , Cs2 , v100
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		        En2 , v096
	.byte	W02
	.byte		        Fs2 , v092
	.byte	W03
	.byte		        Gn2 , v084
	.byte	W03
	.byte		N01   , An2 , v088
	.byte	W01
	.byte		        Bn2 , v092
	.byte	W02
	.byte		N02   , Cs3 
	.byte	W03
	.byte		N01   , Dn3 , v096
	.byte	W02
	.byte		N02   , En3 , v120
	.byte	W02
	.byte		N01   , Fs3 
	.byte	W02
	.byte		N02   , Gn3 , v116
	.byte	W02
	.byte		N01   , An3 , v112
	.byte	W02
	.byte	PEND
@ 004   ----------------------------------------
mus_ice_paradise__act_2_4_004:
	.byte		N10   , En3 , v096
	.byte	W24
	.byte		N09   , En3 , v092
	.byte	W24
	.byte		N32   , En3 , v096
	.byte	W36
	.byte	W03
	.byte		N44   
	.byte	W09
	.byte	PEND
@ 005   ----------------------------------------
	.byte	W48
	.byte		N32   , En3 , v088
	.byte	W48
@ 006   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_4_004
@ 007   ----------------------------------------
	.byte	W48
	.byte		N32   , En3 , v088
	.byte	W48
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_4_004
@ 009   ----------------------------------------
	.byte	W48
	.byte		N32   , En3 , v088
	.byte	W48
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_4_004
@ 013   ----------------------------------------
mus_ice_paradise__act_2_4_013:
	.byte	W48
	.byte		N23   , En3 , v088
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte	PEND
@ 014   ----------------------------------------
mus_ice_paradise__act_2_4_014:
	.byte		N10   , Dn3 , v096
	.byte	W24
	.byte		N09   , Dn3 , v092
	.byte	W24
	.byte		N32   , Dn3 , v096
	.byte	W36
	.byte	W03
	.byte		N44   
	.byte	W09
	.byte	PEND
@ 015   ----------------------------------------
	.byte	W48
	.byte		N32   , Dn3 , v088
	.byte	W48
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_4_004
@ 025   ----------------------------------------
	.byte	W48
	.byte		N32   , En3 , v088
	.byte	W48
@ 026   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_4_004
@ 027   ----------------------------------------
	.byte	W48
	.byte		N32   , En3 , v088
	.byte	W48
@ 028   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_4_004
@ 029   ----------------------------------------
	.byte	W48
	.byte		N32   , En3 , v088
	.byte	W48
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_4_004
@ 033   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_4_013
@ 034   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_4_014
@ 035   ----------------------------------------
	.byte	W48
	.byte		N32   , Dn3 , v088
	.byte	W48
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W36
	.byte	W03
	.byte		N24   , Cn3 , v096
	.byte	W56
	.byte	W01
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W72
	.byte		N23   , Cs3 , v100
	.byte	W24
@ 040   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_4_014
@ 041   ----------------------------------------
	.byte	W40
	.byte		N28   , Dn3 , v112
	.byte	W32
	.byte		N19   , Dn3 , v088
	.byte	W24
@ 042   ----------------------------------------
	.byte	W84
	.byte	W03
	.byte		N44   , Ds3 , v096
	.byte	W09
@ 043   ----------------------------------------
	.byte	W40
	.byte		N28   , Ds3 , v112
	.byte	W32
	.byte		N20   
	.byte	W24
@ 044   ----------------------------------------
	.byte		N30   , Bn2 , v127
	.byte	W36
	.byte	W03
	.byte		N48   
	.byte	W56
	.byte	W01
@ 045   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_4_001
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_4_003
@ 048   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_4_004
@ 049   ----------------------------------------
	.byte	W48
	.byte		N32   , En3 , v088
	.byte	W48
@ 050   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_4_004
@ 051   ----------------------------------------
	.byte	W48
	.byte		N32   , En3 , v088
	.byte	W48
@ 052   ----------------------------------------
mus_ice_paradise__act_2_4_052:
	.byte		N10   , Fn3 , v096
	.byte	W24
	.byte		N09   , Fn3 , v092
	.byte	W24
	.byte		N32   , Fn3 , v096
	.byte	W36
	.byte	W03
	.byte		N44   
	.byte	W09
	.byte	PEND
@ 053   ----------------------------------------
	.byte	W48
	.byte		N32   , Fn3 , v088
	.byte	W48
@ 054   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_4_052
@ 055   ----------------------------------------
	.byte	W48
	.byte		N32   , Fn3 , v088
	.byte	W48
@ 056   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_4_052
@ 057   ----------------------------------------
	.byte	W48
	.byte		N32   , Fn3 , v088
	.byte	W48
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_4_052
@ 061   ----------------------------------------
mus_ice_paradise__act_2_4_061:
	.byte	W48
	.byte		N23   , Fn3 , v088
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte	PEND
@ 062   ----------------------------------------
mus_ice_paradise__act_2_4_062:
	.byte		N10   , Ds3 , v096
	.byte	W24
	.byte		N09   , Ds3 , v092
	.byte	W24
	.byte		N32   , Ds3 , v096
	.byte	W36
	.byte	W03
	.byte		N44   
	.byte	W09
	.byte	PEND
@ 063   ----------------------------------------
	.byte	W48
	.byte		N32   , Ds3 , v088
	.byte	W48
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_4_052
@ 073   ----------------------------------------
	.byte	W48
	.byte		N32   , Fn3 , v088
	.byte	W48
@ 074   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_4_052
@ 075   ----------------------------------------
	.byte	W48
	.byte		N32   , Fn3 , v088
	.byte	W48
@ 076   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_4_052
@ 077   ----------------------------------------
	.byte	W48
	.byte		N32   , Fn3 , v088
	.byte	W48
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_4_052
@ 081   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_4_061
@ 082   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_4_062
@ 083   ----------------------------------------
	.byte	W48
	.byte		N32   , Ds3 , v088
	.byte	W48
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W36
	.byte	W03
	.byte		N24   , Cs3 , v096
	.byte	W56
	.byte	W01
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	W72
	.byte		N23   , Dn3 , v100
	.byte	W24
@ 088   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_4_062
@ 089   ----------------------------------------
	.byte	W40
	.byte		N28   , Ds3 , v112
	.byte	W32
	.byte		N19   , Ds3 , v088
	.byte	W24
@ 090   ----------------------------------------
	.byte	W84
	.byte	W03
	.byte		N44   , En3 , v096
	.byte	W09
@ 091   ----------------------------------------
	.byte	W40
	.byte		N28   , En3 , v112
	.byte	W32
	.byte		N20   
	.byte	W24
	.byte	GOTO
	 mPtr	mus_ice_paradise__act_2_4_B1
mus_ice_paradise__act_2_4_B2:
@ 092   ----------------------------------------
	.byte	FINE

@ **************** Track 5 (Midi-Chn.5) ****************

mus_ice_paradise__act_2_5:
	.byte	KEYSH , mus_ice_paradise__act_2_key+0
mus_ice_paradise__act_2_5_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 67
	.byte		VOL   , 80*mus_ice_paradise__act_2_mvl/mxv
	.byte		N30   , Ds3 , v127
	.byte	W36
	.byte	W03
	.byte		N48   
	.byte	W56
	.byte	W01
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
mus_ice_paradise__act_2_5_002:
	.byte		N30   , Cs3 , v127
	.byte	W36
	.byte	W03
	.byte		N15   
	.byte	W24
	.byte		N10   , Dn3 
	.byte	W24
	.byte		N16   , Ds3 
	.byte	W09
	.byte	PEND
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
mus_ice_paradise__act_2_5_010:
	.byte		N10   , Cs3 , v096
	.byte	W24
	.byte		N09   , Cs3 , v092
	.byte	W24
	.byte		N32   , Cs3 , v096
	.byte	W36
	.byte	W03
	.byte		N44   
	.byte	W09
	.byte	PEND
@ 011   ----------------------------------------
	.byte	W48
	.byte		N32   , Cs3 , v088
	.byte	W48
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte		N10   , Ds3 , v096
	.byte	W24
	.byte		N09   , Ds3 , v092
	.byte	W24
	.byte		N32   , Ds3 , v096
	.byte	W36
	.byte	W03
	.byte		N44   
	.byte	W09
@ 017   ----------------------------------------
	.byte	W48
	.byte		N23   , Ds3 , v088
	.byte	W24
	.byte		        Dn3 
	.byte	W24
@ 018   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_5_010
@ 019   ----------------------------------------
	.byte	W48
	.byte		N23   , Cs3 , v088
	.byte	W24
	.byte		        Cn3 
	.byte	W24
@ 020   ----------------------------------------
	.byte		N10   , Bn2 , v096
	.byte	W24
	.byte		N09   , Bn2 , v092
	.byte	W24
	.byte		N32   , Bn2 , v096
	.byte	W36
	.byte	W03
	.byte		N44   
	.byte	W09
@ 021   ----------------------------------------
	.byte	W48
	.byte		N36   , Bn2 , v088
	.byte	W48
@ 022   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_5_010
@ 023   ----------------------------------------
	.byte	W40
	.byte		N28   , Ds3 , v112
	.byte	W32
	.byte		N19   , Ds3 , v088
	.byte	W24
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_5_010
@ 031   ----------------------------------------
	.byte	W48
	.byte		N32   , Cs3 , v088
	.byte	W48
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte		N10   , Ds3 , v096
	.byte	W24
	.byte		N09   , Ds3 , v092
	.byte	W24
	.byte		N32   , Ds3 , v096
	.byte	W36
	.byte	W03
	.byte		N44   , Cs3 
	.byte	W09
@ 037   ----------------------------------------
	.byte	W72
	.byte		N18   , Cn3 , v104
	.byte	W24
@ 038   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_5_010
@ 039   ----------------------------------------
	.byte	W48
	.byte		N23   , Cs3 , v088
	.byte	W48
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte		N10   , En3 , v096
	.byte	W24
	.byte		N09   , En3 , v092
	.byte	W24
	.byte		N32   , En3 , v096
	.byte	W48
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte		N30   , Ds3 , v127
	.byte	W36
	.byte	W03
	.byte		N48   
	.byte	W56
	.byte	W01
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_5_002
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
mus_ice_paradise__act_2_5_058:
	.byte		N10   , Dn3 , v096
	.byte	W24
	.byte		N09   , Dn3 , v092
	.byte	W24
	.byte		N32   , Dn3 , v096
	.byte	W36
	.byte	W03
	.byte		N44   
	.byte	W09
	.byte	PEND
@ 059   ----------------------------------------
	.byte	W48
	.byte		N32   , Dn3 , v088
	.byte	W48
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte		N10   , En3 , v096
	.byte	W24
	.byte		N09   , En3 , v092
	.byte	W24
	.byte		N32   , En3 , v096
	.byte	W36
	.byte	W03
	.byte		N44   
	.byte	W09
@ 065   ----------------------------------------
	.byte	W48
	.byte		N23   , En3 , v088
	.byte	W24
	.byte		        Ds3 
	.byte	W24
@ 066   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_5_058
@ 067   ----------------------------------------
	.byte	W48
	.byte		N23   , Dn3 , v088
	.byte	W24
	.byte		        Cs3 
	.byte	W24
@ 068   ----------------------------------------
	.byte		N10   , Cn3 , v096
	.byte	W24
	.byte		N09   , Cn3 , v092
	.byte	W24
	.byte		N32   , Cn3 , v096
	.byte	W36
	.byte	W03
	.byte		N44   
	.byte	W09
@ 069   ----------------------------------------
	.byte	W48
	.byte		N36   , Cn3 , v088
	.byte	W48
@ 070   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_5_058
@ 071   ----------------------------------------
	.byte	W40
	.byte		N28   , En3 , v112
	.byte	W32
	.byte		N19   , En3 , v088
	.byte	W24
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_5_058
@ 079   ----------------------------------------
	.byte	W48
	.byte		N32   , Dn3 , v088
	.byte	W48
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte		N10   , En3 , v096
	.byte	W24
	.byte		N09   , En3 , v092
	.byte	W24
	.byte		N32   , En3 , v096
	.byte	W36
	.byte	W03
	.byte		N44   , Dn3 
	.byte	W09
@ 085   ----------------------------------------
	.byte	W72
	.byte		N18   , Cs3 , v104
	.byte	W24
@ 086   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_5_058
@ 087   ----------------------------------------
	.byte	W48
	.byte		N23   , Dn3 , v088
	.byte	W48
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte		N10   , Fn3 , v096
	.byte	W24
	.byte		N09   , Fn3 , v092
	.byte	W24
	.byte		N32   , Fn3 , v096
	.byte	W48
@ 091   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_ice_paradise__act_2_5_B1
mus_ice_paradise__act_2_5_B2:
@ 092   ----------------------------------------
	.byte	FINE

@ **************** Track 6 (Midi-Chn.6) ****************

mus_ice_paradise__act_2_6:
	.byte	KEYSH , mus_ice_paradise__act_2_key+0
mus_ice_paradise__act_2_6_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 68
	.byte		VOL   , 70*mus_ice_paradise__act_2_mvl/mxv
	.byte	W96
@ 001   ----------------------------------------
mus_ice_paradise__act_2_6_001:
	.byte		N30   , Fs3 , v127
	.byte	W36
	.byte	W03
	.byte		N48   
	.byte	W56
	.byte	W01
	.byte	PEND
@ 002   ----------------------------------------
mus_ice_paradise__act_2_6_002:
	.byte		N30   , Bn3 , v127
	.byte	W36
	.byte	W03
	.byte		N15   
	.byte	W24
	.byte		N10   , Cn4 
	.byte	W24
	.byte		N16   , Cs4 
	.byte	W09
	.byte	PEND
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_6_001
@ 046   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_6_002
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte	W96
@ 091   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_ice_paradise__act_2_6_B1
mus_ice_paradise__act_2_6_B2:
@ 092   ----------------------------------------
	.byte	FINE

@ **************** Track 7 (Midi-Chn.7) ****************

mus_ice_paradise__act_2_7:
	.byte	KEYSH , mus_ice_paradise__act_2_key+0
mus_ice_paradise__act_2_7_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 78
	.byte		VOL   , 127*mus_ice_paradise__act_2_mvl/mxv
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W48
	.byte		N44   , Bn3 , v108
	.byte	W48
@ 006   ----------------------------------------
mus_ice_paradise__act_2_7_006:
	.byte		N44   , Fs3 , v112
	.byte	W48
	.byte		        Gs3 , v108
	.byte	W48
	.byte	PEND
@ 007   ----------------------------------------
mus_ice_paradise__act_2_7_007:
	.byte		N44   , Ds3 , v104
	.byte	W48
	.byte		        Fs3 
	.byte	W48
	.byte	PEND
@ 008   ----------------------------------------
	.byte		TIE   , Bn2 , v096
	.byte	W96
@ 009   ----------------------------------------
	.byte	W72
	.byte	W02
	.byte		EOT   
	.byte	W22
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W48
	.byte		N44   , Bn3 , v108
	.byte	W48
@ 026   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_7_006
@ 027   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_7_007
@ 028   ----------------------------------------
	.byte		TIE   , Bn2 , v096
	.byte	W96
@ 029   ----------------------------------------
	.byte	W72
	.byte	W02
	.byte		EOT   
	.byte	W22
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte		N44   , En2 , v100
	.byte	W48
	.byte		        En3 , v096
	.byte	W48
@ 037   ----------------------------------------
	.byte		        Ds3 , v120
	.byte	W48
	.byte		        Gn3 , v108
	.byte	W48
@ 038   ----------------------------------------
	.byte		        Gs3 , v120
	.byte	W48
	.byte		        Ds3 , v108
	.byte	W48
@ 039   ----------------------------------------
	.byte		        Gs3 
	.byte	W48
	.byte		        Bn3 , v096
	.byte	W48
@ 040   ----------------------------------------
	.byte		        Cs4 , v100
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W48
	.byte		        Bn3 , v108
	.byte	W48
@ 050   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_7_006
@ 051   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_7_007
@ 052   ----------------------------------------
	.byte	W48
	.byte		N44   , Cn4 , v108
	.byte	W48
@ 053   ----------------------------------------
mus_ice_paradise__act_2_7_053:
	.byte		N44   , Gn3 , v112
	.byte	W48
	.byte		        An3 , v108
	.byte	W48
	.byte	PEND
@ 054   ----------------------------------------
	.byte		        En3 , v104
	.byte	W48
	.byte		        Gn3 
	.byte	W48
@ 055   ----------------------------------------
	.byte		TIE   , Cn3 , v096
	.byte	W96
@ 056   ----------------------------------------
	.byte	W72
	.byte	W02
	.byte		EOT   
	.byte	W22
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W48
	.byte		N44   , Cn4 , v108
	.byte	W48
@ 074   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_7_053
@ 075   ----------------------------------------
	.byte		N44   , En3 , v104
	.byte	W48
	.byte		        Gn3 
	.byte	W48
@ 076   ----------------------------------------
	.byte		TIE   , Cn3 , v096
	.byte	W96
@ 077   ----------------------------------------
	.byte	W72
	.byte	W02
	.byte		EOT   
	.byte	W22
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte		N44   , Fn2 , v100
	.byte	W48
	.byte		        Fn3 , v096
	.byte	W48
@ 085   ----------------------------------------
	.byte		        En3 , v120
	.byte	W48
	.byte		        Gs3 , v108
	.byte	W48
@ 086   ----------------------------------------
	.byte		        An3 , v120
	.byte	W48
	.byte		        En3 , v108
	.byte	W48
@ 087   ----------------------------------------
	.byte		        An3 
	.byte	W48
	.byte		        Cn4 , v096
	.byte	W48
@ 088   ----------------------------------------
	.byte		        Dn4 , v100
	.byte	W96
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte	W96
@ 091   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_ice_paradise__act_2_7_B1
mus_ice_paradise__act_2_7_B2:
@ 092   ----------------------------------------
	.byte	FINE

@ **************** Track 8 (Midi-Chn.8) ****************

mus_ice_paradise__act_2_8:
	.byte	KEYSH , mus_ice_paradise__act_2_key+0
mus_ice_paradise__act_2_8_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 65
	.byte		VOL   , 100*mus_ice_paradise__act_2_mvl/mxv
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte		N23   , Fs4 , v108
	.byte	W24
	.byte		        Bn3 , v100
	.byte	W24
	.byte		        Ds4 , v104
	.byte	W24
	.byte		        Fs3 , v108
	.byte	W24
@ 030   ----------------------------------------
	.byte		N56   , Bn3 , v096
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte		N23   , Fs4 , v108
	.byte	W24
	.byte		        Bn3 , v100
	.byte	W24
	.byte		        Ds4 , v104
	.byte	W24
	.byte		        Dn4 , v108
	.byte	W24
@ 034   ----------------------------------------
	.byte		N56   , Cs4 , v096
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte		N23   , Gn4 , v108
	.byte	W24
	.byte		        Cn4 , v100
	.byte	W24
	.byte		        En4 , v104
	.byte	W24
	.byte		        Gn3 , v108
	.byte	W24
@ 078   ----------------------------------------
	.byte		N56   , Cn4 , v096
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte		N23   , Gn4 , v108
	.byte	W24
	.byte		        Cn4 , v100
	.byte	W24
	.byte		        En4 , v104
	.byte	W24
	.byte		        Ds4 , v108
	.byte	W24
@ 082   ----------------------------------------
	.byte		N56   , Dn4 , v096
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte	W96
@ 091   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_ice_paradise__act_2_8_B1
mus_ice_paradise__act_2_8_B2:
@ 092   ----------------------------------------
	.byte	FINE

@ **************** Track 9 (Midi-Chn.9) ****************

mus_ice_paradise__act_2_9:
	.byte	KEYSH , mus_ice_paradise__act_2_key+0
mus_ice_paradise__act_2_9_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 59*mus_ice_paradise__act_2_mvl/mxv
	.byte		N30   , Fs3 , v076
	.byte	W36
	.byte	W03
	.byte		N48   , Fs3 , v072
	.byte	W56
	.byte	W01
@ 001   ----------------------------------------
	.byte		N30   , Fs3 , v096
	.byte	W36
	.byte	W03
	.byte		N52   , Fs3 , v080
	.byte	W56
	.byte	W01
@ 002   ----------------------------------------
	.byte		N28   , Gs3 , v092
	.byte	W36
	.byte	W03
	.byte		N15   , Gs3 , v088
	.byte	W24
	.byte		N13   , An3 
	.byte	W24
	.byte		N32   , As3 , v096
	.byte	W09
@ 003   ----------------------------------------
	.byte	W36
	.byte	W03
	.byte		N56   , Cs4 , v100
	.byte	W56
	.byte	W01
@ 004   ----------------------------------------
	.byte		N22   , Ds4 , v092
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W72
	.byte		VOL   , 93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W13
	.byte		TIE   , Fs4 , v036
	.byte	W05
	.byte		VOL   , 93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        84*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        77*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
@ 007   ----------------------------------------
mus_ice_paradise__act_2_9_007:
	.byte		VOL   , 67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        57*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        51*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        41*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        31*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        29*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        31*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        32*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        33*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        34*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        35*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        36*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        39*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        40*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        41*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        43*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        44*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        44*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        46*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        47*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        48*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        49*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        50*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        51*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        54*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        56*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        57*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        58*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        61*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        62*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        63*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        64*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        65*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        66*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        70*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        71*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        72*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        73*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        74*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        74*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        76*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        77*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        78*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        79*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        80*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        81*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        84*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        85*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        86*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        87*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        88*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        91*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W32
	.byte	W01
	.byte	PEND
	.byte		EOT   , Fs4 
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
mus_ice_paradise__act_2_9_025:
	.byte		VOICE , 1
	.byte		VOL   , 59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W96
	.byte	PEND
@ 026   ----------------------------------------
	.byte		        93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W13
	.byte		TIE   , Fs4 , v036
	.byte	W05
	.byte		VOL   , 93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        84*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        77*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        57*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        51*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        41*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        31*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        29*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        31*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        32*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        33*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        34*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        35*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        36*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        39*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        40*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        41*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        42*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        43*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        44*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        44*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        46*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        47*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        48*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        49*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        50*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        51*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        54*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        55*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        56*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        57*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        58*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        61*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        62*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        63*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        64*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        65*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        66*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
@ 027   ----------------------------------------
mus_ice_paradise__act_2_9_027:
	.byte	W01
	.byte		VOL   , 67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        69*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        70*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        71*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        72*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        73*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        74*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        74*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        76*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        77*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        78*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        79*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        80*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        81*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        84*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        85*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        86*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        87*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        88*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        91*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        92*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W52
	.byte	PEND
	.byte		EOT   , Fs4 
@ 028   ----------------------------------------
	.byte		VOICE , 56
	.byte		VOL   , 59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W04
	.byte		N36   , Ds4 , v112
	.byte	W32
	.byte	W03
	.byte		N90   , Bn3 
	.byte	W56
	.byte	W01
@ 029   ----------------------------------------
	.byte	W48
	.byte		N23   , Ds4 , v108
	.byte	W24
	.byte		        Cs4 , v116
	.byte	W24
@ 030   ----------------------------------------
	.byte		TIE   , Bn3 , v096
	.byte	W96
@ 031   ----------------------------------------
	.byte	W36
	.byte		EOT   
	.byte	W36
	.byte		N23   , Ds3 , v108
	.byte	W24
@ 032   ----------------------------------------
	.byte		N32   , Ds4 , v112
	.byte	W36
	.byte	W03
	.byte		N92   , Bn3 , v104
	.byte	W56
	.byte	W01
@ 033   ----------------------------------------
	.byte	W48
	.byte		N23   , Ds4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
@ 034   ----------------------------------------
	.byte		TIE   , Cs4 , v120
	.byte	W96
@ 035   ----------------------------------------
	.byte	W30
	.byte	W01
	.byte		EOT   
	.byte	W17
	.byte		VOICE , 1
	.byte		VOL   , 59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W48
@ 036   ----------------------------------------
	.byte		N78   , En3 , v108
	.byte	W84
	.byte		N05   , Fs3 , v080
	.byte	W06
	.byte		        En3 , v072
	.byte	W06
@ 037   ----------------------------------------
	.byte		N42   , Ds3 , v104
	.byte	W48
	.byte		N23   , Ds3 , v092
	.byte	W24
	.byte		        Gn3 , v104
	.byte	W24
@ 038   ----------------------------------------
	.byte		N42   , Gs3 , v084
	.byte	W48
	.byte		N23   , Gs3 , v100
	.byte	W24
	.byte		N14   , Ds3 , v080
	.byte	W15
	.byte		N32   , Gs3 , v096
	.byte	W09
@ 039   ----------------------------------------
	.byte	W24
	.byte		N23   , Ds3 , v100
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		        Bn3 , v096
	.byte	W24
@ 040   ----------------------------------------
	.byte		N36   , Gs3 , v104
	.byte	W36
	.byte	W03
	.byte		N30   , Bn3 , v116
	.byte	W32
	.byte	W01
	.byte		N18   , Gs3 
	.byte	W24
@ 041   ----------------------------------------
	.byte		N32   , An3 , v100
	.byte	W36
	.byte	W03
	.byte		N56   , Cs3 , v112
	.byte	W56
	.byte	W01
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte		N30   , Fs3 , v104
	.byte	W36
	.byte	W03
	.byte		N48   , Fs3 , v100
	.byte	W56
	.byte	W01
@ 045   ----------------------------------------
	.byte		N30   , Fs3 , v124
	.byte	W36
	.byte	W03
	.byte		N52   , Fs3 , v112
	.byte	W56
	.byte	W01
@ 046   ----------------------------------------
	.byte		N28   , Gs3 , v120
	.byte	W36
	.byte	W03
	.byte		N15   , Gs3 , v116
	.byte	W24
	.byte		N13   , An3 , v120
	.byte	W24
	.byte		N32   , As3 , v124
	.byte	W09
@ 047   ----------------------------------------
	.byte	W36
	.byte	W03
	.byte		N56   , Cs4 , v127
	.byte	W56
	.byte	W01
@ 048   ----------------------------------------
	.byte		N22   , Ds4 , v120
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W72
	.byte		VOL   , 93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W13
	.byte		TIE   , Fs4 , v064
	.byte	W05
	.byte		VOL   , 93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        84*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        77*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
@ 051   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_9_007
	.byte		EOT   , Fs4 
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W72
	.byte		VOL   , 93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W13
	.byte		TIE   , Gn4 , v064
	.byte	W05
	.byte		VOL   , 93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        84*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        77*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
@ 055   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_9_007
	.byte		EOT   , Gn4 
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_9_025
@ 074   ----------------------------------------
	.byte		VOL   , 93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W13
	.byte		TIE   , Gn4 , v036
	.byte	W05
	.byte		VOL   , 93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        84*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        77*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        57*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        51*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        41*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        31*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        29*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        31*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        32*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        33*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        34*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        35*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        36*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        39*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        40*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        41*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        42*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        43*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        44*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        44*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        46*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        47*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        48*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        49*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        50*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        51*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        54*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        55*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        56*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        57*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        58*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        61*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        62*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        63*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        64*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        65*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        66*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
@ 075   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_9_027
	.byte		EOT   , Gn4 
@ 076   ----------------------------------------
	.byte		VOICE , 56
	.byte		VOL   , 59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W48
	.byte		VOICE , 1
	.byte		VOL   , 59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W48
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte	W96
@ 091   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_ice_paradise__act_2_9_B1
mus_ice_paradise__act_2_9_B2:
@ 092   ----------------------------------------
	.byte	FINE

@ **************** Track 10 (Midi-Chn.10) ****************

mus_ice_paradise__act_2_10:
	.byte	KEYSH , mus_ice_paradise__act_2_key+0
mus_ice_paradise__act_2_10_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 12
	.byte		VOL   , 74*mus_ice_paradise__act_2_mvl/mxv
	.byte		BENDR , 12
	.byte		N04   , Cs6 , v068
	.byte	W04
	.byte		        As5 , v080
	.byte	W04
	.byte		        Fs5 , v056
	.byte	W04
	.byte		        As5 , v080
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Cs5 , v076
	.byte	W04
	.byte		        Fs5 , v084
	.byte	W04
	.byte		        Cs5 , v064
	.byte	W04
	.byte		        As4 , v096
	.byte	W04
	.byte		        Cs5 , v080
	.byte	W04
	.byte		        As4 , v096
	.byte	W04
	.byte		        Fs4 , v084
	.byte	W04
	.byte		        As4 , v096
	.byte	W04
	.byte		        Fs4 , v088
	.byte	W04
	.byte		        Cs4 , v068
	.byte	W04
	.byte		        Fs4 , v084
	.byte	W04
	.byte		        Cs4 , v076
	.byte	W04
	.byte		        As3 , v088
	.byte	W04
	.byte		        Cs4 , v076
	.byte	W04
	.byte		        As3 , v088
	.byte	W04
	.byte		        Fs3 , v068
	.byte	W04
	.byte		        As3 , v092
	.byte	W04
	.byte		        Fs3 , v084
	.byte	W04
	.byte		        Cs3 , v068
	.byte	W04
@ 001   ----------------------------------------
mus_ice_paradise__act_2_10_001:
	.byte		N04   , Ds6 , v088
	.byte	W04
	.byte		        Bn5 , v092
	.byte	W04
	.byte		        Fs5 , v076
	.byte	W04
	.byte		        Bn5 , v084
	.byte	W04
	.byte		        Fs5 , v076
	.byte	W04
	.byte		        Ds5 , v088
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Bn4 , v076
	.byte	W04
	.byte		        Ds5 , v084
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Fs4 , v068
	.byte	W04
	.byte		        Bn4 , v072
	.byte	W04
	.byte		        Fs4 , v080
	.byte	W04
	.byte		        Ds4 , v088
	.byte	W04
	.byte		        Fs4 , v084
	.byte	W04
	.byte		        Ds4 , v092
	.byte	W04
	.byte		        Bn3 , v080
	.byte	W04
	.byte		        Ds4 , v076
	.byte	W04
	.byte		        Bn3 , v084
	.byte	W04
	.byte		        Fs3 , v072
	.byte	W04
	.byte		        Bn3 , v084
	.byte	W04
	.byte		        Fs3 , v076
	.byte	W04
	.byte		        Ds3 , v084
	.byte	W04
	.byte	PEND
@ 002   ----------------------------------------
mus_ice_paradise__act_2_10_002:
	.byte		N04   , En6 , v084
	.byte	W04
	.byte		        Bn5 
	.byte	W04
	.byte		        Gs5 , v088
	.byte	W04
	.byte		        Bn5 , v084
	.byte	W04
	.byte		        Gs5 , v088
	.byte	W04
	.byte		        En5 , v056
	.byte	W04
	.byte		        Gs5 , v076
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Bn4 , v056
	.byte	W04
	.byte		        En5 , v084
	.byte	W04
	.byte		        Bn4 , v080
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        En4 , v072
	.byte	W04
	.byte		        Gs4 , v080
	.byte	W04
	.byte		        En4 , v076
	.byte	W04
	.byte		        Bn3 , v068
	.byte	W04
	.byte		        En4 , v076
	.byte	W04
	.byte		        Bn3 , v080
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Bn3 , v084
	.byte	W04
	.byte		        Gs3 , v080
	.byte	W04
	.byte		        En3 , v076
	.byte	W04
	.byte	PEND
@ 003   ----------------------------------------
mus_ice_paradise__act_2_10_003:
	.byte		N04   , Cs3 , v072
	.byte	W04
	.byte		        Fs3 , v084
	.byte	W04
	.byte		        As3 , v080
	.byte	W04
	.byte		        Fs3 , v084
	.byte	W04
	.byte		        As3 , v076
	.byte	W04
	.byte		        Cs4 , v084
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Fs4 , v096
	.byte	W04
	.byte		        Cs4 , v080
	.byte	W04
	.byte		        Fs4 , v084
	.byte	W04
	.byte		        As4 , v104
	.byte	W04
	.byte		        Fs4 , v088
	.byte	W04
	.byte		        As4 , v100
	.byte	W04
	.byte		        Cs5 , v076
	.byte	W04
	.byte		        As4 , v084
	.byte	W04
	.byte		        Cs5 , v076
	.byte	W04
	.byte		        Fs5 , v084
	.byte	W04
	.byte		        Cs5 , v056
	.byte	W04
	.byte		        Fs5 , v076
	.byte	W04
	.byte		        As5 , v072
	.byte	W04
	.byte		        Fs5 , v092
	.byte	W04
	.byte		        As5 , v080
	.byte	W04
	.byte		        Cs6 , v088
	.byte	W04
	.byte	PEND
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte		        Fs5 , v096
	.byte	W04
	.byte		        Bn5 
	.byte	W04
	.byte		        Fs5 , v092
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Fs5 , v088
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Bn4 , v084
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Bn4 , v080
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Bn4 , v076
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Ds4 , v072
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Ds4 , v068
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Ds4 , v064
	.byte	W04
	.byte		        Bn3 , v060
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Bn3 , v056
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Ds3 , v052
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Ds3 , v048
	.byte	W04
@ 025   ----------------------------------------
	.byte		        Fs4 , v088
	.byte	W04
	.byte		        Bn4 , v084
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Ds4 , v080
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Ds4 , v076
	.byte	W04
	.byte		        Bn3 , v072
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Bn3 , v068
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Bn3 , v064
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Ds3 , v060
	.byte	W04
	.byte		        Fs3 , v056
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Bn2 , v052
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Bn2 , v048
	.byte	W04
	.byte		        Fs2 , v044
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Fs2 , v040
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Fs2 , v036
	.byte	W04
	.byte		        Ds2 
	.byte	W04
@ 026   ----------------------------------------
	.byte		        Bn2 
	.byte	W04
	.byte		        Ds3 , v040
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Ds3 , v044
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Ds3 , v048
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Bn3 , v052
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Bn3 , v056
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Bn3 , v060
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Fs4 , v064
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Fs4 , v068
	.byte	W04
	.byte		        Bn4 , v072
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Bn4 , v076
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Bn4 , v080
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Fs5 , v084
	.byte	W04
	.byte		        Ds5 
	.byte	W04
@ 027   ----------------------------------------
	.byte		        Bn3 , v036
	.byte	W04
	.byte		        Ds4 , v040
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Ds4 , v044
	.byte	W04
	.byte		        Fs4 , v048
	.byte	W04
	.byte		        Ds4 , v052
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Bn4 , v056
	.byte	W04
	.byte		        Fs4 , v060
	.byte	W04
	.byte		        Bn4 , v064
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Bn4 , v068
	.byte	W04
	.byte		        Ds5 , v072
	.byte	W04
	.byte		        Fs5 , v076
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Fs5 , v080
	.byte	W04
	.byte		        Bn5 , v084
	.byte	W04
	.byte		        Fs5 , v088
	.byte	W04
	.byte		        Bn5 
	.byte	W04
	.byte		        Ds6 , v092
	.byte	W04
	.byte		        Bn5 , v096
	.byte	W04
	.byte		        Ds6 , v100
	.byte	W04
	.byte		        Fs6 
	.byte	W04
	.byte		        Ds6 , v104
	.byte	W04
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte		        Cs6 , v068
	.byte	W04
	.byte		        As5 , v080
	.byte	W04
	.byte		        Fs5 , v056
	.byte	W04
	.byte		        As5 , v080
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Cs5 , v076
	.byte	W04
	.byte		        Fs5 , v084
	.byte	W04
	.byte		        Cs5 , v064
	.byte	W04
	.byte		        As4 , v096
	.byte	W04
	.byte		        Cs5 , v080
	.byte	W04
	.byte		        As4 , v096
	.byte	W04
	.byte		        Fs4 , v084
	.byte	W04
	.byte		        As4 , v096
	.byte	W04
	.byte		        Fs4 , v088
	.byte	W04
	.byte		        Cs4 , v068
	.byte	W04
	.byte		        Fs4 , v084
	.byte	W04
	.byte		        Cs4 , v076
	.byte	W04
	.byte		        As3 , v088
	.byte	W04
	.byte		        Cs4 , v076
	.byte	W04
	.byte		        As3 , v088
	.byte	W04
	.byte		        Fs3 , v068
	.byte	W04
	.byte		        As3 , v092
	.byte	W04
	.byte		        Fs3 , v084
	.byte	W04
	.byte		        Cs3 , v068
	.byte	W04
@ 045   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_10_001
@ 046   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_10_002
@ 047   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_10_003
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte		N04   , Gn5 , v096
	.byte	W04
	.byte		        Cn6 
	.byte	W04
	.byte		        Gn5 , v092
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Gn5 , v088
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Cn5 , v084
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Cn5 , v080
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Cn5 , v076
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        En4 , v072
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        En4 , v068
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        En4 , v064
	.byte	W04
	.byte		        Cn4 , v060
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Cn4 , v056
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        En3 , v052
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        En3 , v048
	.byte	W04
@ 073   ----------------------------------------
	.byte		        Gn4 , v088
	.byte	W04
	.byte		        Cn5 , v084
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        En4 , v080
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        En4 , v076
	.byte	W04
	.byte		        Cn4 , v072
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Cn4 , v068
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Cn4 , v064
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        En3 , v060
	.byte	W04
	.byte		        Gn3 , v056
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Cn3 , v052
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Cn3 , v048
	.byte	W04
	.byte		        Gn2 , v044
	.byte	W04
	.byte		        Cn3 
	.byte	W04
	.byte		        Gn2 , v040
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Gn2 , v036
	.byte	W04
	.byte		        En2 
	.byte	W04
@ 074   ----------------------------------------
	.byte		        Cn3 
	.byte	W04
	.byte		        En3 , v040
	.byte	W04
	.byte		        Cn3 
	.byte	W04
	.byte		        En3 , v044
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        En3 , v048
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Cn4 , v052
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Cn4 , v056
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Cn4 , v060
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Gn4 , v064
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Gn4 , v068
	.byte	W04
	.byte		        Cn5 , v072
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Cn5 , v076
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Cn5 , v080
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Gn5 , v084
	.byte	W04
	.byte		        En5 
	.byte	W04
@ 075   ----------------------------------------
	.byte		        Cn4 , v036
	.byte	W04
	.byte		        En4 , v040
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        En4 , v044
	.byte	W04
	.byte		        Gn4 , v048
	.byte	W04
	.byte		        En4 , v052
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Cn5 , v056
	.byte	W04
	.byte		        Gn4 , v060
	.byte	W04
	.byte		        Cn5 , v064
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Cn5 , v068
	.byte	W04
	.byte		        En5 , v072
	.byte	W04
	.byte		        Gn5 , v076
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Gn5 , v080
	.byte	W04
	.byte		        Cn6 , v084
	.byte	W04
	.byte		        Gn5 , v088
	.byte	W04
	.byte		        Cn6 
	.byte	W04
	.byte		        En6 , v092
	.byte	W04
	.byte		        Cn6 , v096
	.byte	W04
	.byte		        En6 , v100
	.byte	W04
	.byte		        Gn6 
	.byte	W04
	.byte		        En6 , v104
	.byte	W04
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte	W96
@ 091   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_ice_paradise__act_2_10_B1
mus_ice_paradise__act_2_10_B2:
@ 092   ----------------------------------------
	.byte	FINE

@ **************** Track 11 (Midi-Chn.11) ****************

mus_ice_paradise__act_2_11:
	.byte	KEYSH , mus_ice_paradise__act_2_key+0
mus_ice_paradise__act_2_11_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 63
	.byte		VOL   , 127*mus_ice_paradise__act_2_mvl/mxv
	.byte		BENDR , 12
	.byte		VOL   , 127*mus_ice_paradise__act_2_mvl/mxv
	.byte		N30   , As2 , v084
	.byte		N30   , Cs3 
	.byte	W36
	.byte	W03
	.byte		N48   , As2 , v080
	.byte		N48   , Cs3 
	.byte	W07
	.byte		VOL   , 121*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        114*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        104*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        94*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        88*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        91*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        92*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        94*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        95*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        96*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        97*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        97*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        99*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        100*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        101*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        102*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        104*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        104*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        106*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        107*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        108*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        109*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        110*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        111*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        114*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        115*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        116*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        117*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        118*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        119*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        119*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        121*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        122*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        124*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        125*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        126*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        127*mus_ice_paradise__act_2_mvl/mxv
	.byte	W10
@ 001   ----------------------------------------
	.byte		N30   , Bn2 , v104
	.byte		N30   , Ds3 
	.byte	W36
	.byte	W03
	.byte		N52   , Bn2 , v092
	.byte		N52   , Ds3 
	.byte	W07
	.byte		VOL   , 117*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        97*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        84*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        86*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        87*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        88*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        91*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        92*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        94*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        96*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        97*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        97*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        99*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        100*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        101*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        102*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        103*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        104*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        106*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        107*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        108*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        109*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        110*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        111*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        114*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        116*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        117*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        118*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        119*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        119*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        121*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        122*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        123*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        124*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        126*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        127*mus_ice_paradise__act_2_mvl/mxv
	.byte	W09
@ 002   ----------------------------------------
	.byte		N28   , Bn2 , v100
	.byte		N28   , En3 
	.byte	W36
	.byte	W03
	.byte		N15   , Bn2 , v096
	.byte		N15   , En3 
	.byte	W24
	.byte		N13   , Cn3 , v100
	.byte		N13   , Fn3 
	.byte	W24
	.byte		N32   , Cs3 , v104
	.byte		N32   , Fs3 
	.byte	W09
@ 003   ----------------------------------------
	.byte	W36
	.byte	W03
	.byte		N56   , Fs3 , v108
	.byte		N56   , As3 
	.byte	W10
	.byte		VOL   , 108*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        80*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        66*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        69*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        71*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        72*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        74*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        76*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        78*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        79*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        81*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        85*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        86*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        88*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        92*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        95*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        97*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        99*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        100*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        102*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        104*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        106*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        107*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        109*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        111*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        114*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        116*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        118*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        119*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        121*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        123*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        125*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        127*mus_ice_paradise__act_2_mvl/mxv
	.byte	W10
@ 004   ----------------------------------------
	.byte		N22   , Fs3 , v100
	.byte		N22   , Bn3 
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte		VOICE , 64
	.byte		VOL   , 127*mus_ice_paradise__act_2_mvl/mxv
	.byte		BENDR , 12
	.byte	W72
	.byte		VOL   , 93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W13
	.byte		TIE   , Fs4 , v104
	.byte	W05
	.byte		VOL   , 93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        84*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        77*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
@ 007   ----------------------------------------
mus_ice_paradise__act_2_11_007:
	.byte		VOL   , 67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        57*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        51*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        41*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        31*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        29*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        31*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        32*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        33*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        34*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        35*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        36*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        39*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        40*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        41*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        43*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        44*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        44*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        46*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        47*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        48*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        49*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        50*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        51*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        54*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        56*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        57*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        58*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        61*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        62*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        63*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        64*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        65*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        66*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        70*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        71*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        72*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        73*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        74*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        74*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        76*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        77*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        78*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        79*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        80*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        81*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        84*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        85*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        86*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        87*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        88*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        91*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W32
	.byte	W01
	.byte	PEND
	.byte		EOT   , Fs4 
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte		VOL   , 89*mus_ice_paradise__act_2_mvl/mxv
	.byte		TIE   , Cs4 , v127
	.byte	W12
	.byte		VOL   , 87*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        77*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        72*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        62*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        57*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        47*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        42*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        32*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        27*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        24*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        25*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        26*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        27*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        28*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        29*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        29*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        31*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        32*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        33*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        34*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        35*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        36*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        39*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        40*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        41*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        42*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        43*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        44*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        44*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        46*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        47*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        48*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        49*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        50*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        51*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        54*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        55*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        56*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        57*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        58*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        61*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        62*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        63*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        64*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        65*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        66*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        69*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        70*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        71*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        72*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        73*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        74*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        74*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        76*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        77*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        78*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        79*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        80*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        81*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        84*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        85*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
@ 017   ----------------------------------------
mus_ice_paradise__act_2_11_017:
	.byte		VOL   , 86*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        87*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        88*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W36
	.byte	W01
	.byte	PEND
	.byte		EOT   , Cs4 
	.byte	W08
	.byte		N18   , Cs4 , v127
	.byte	W24
	.byte		        Cn4 
	.byte	W24
@ 018   ----------------------------------------
	.byte		TIE   , Bn3 
	.byte	W12
	.byte		VOL   , 84*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        77*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        57*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        50*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        40*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        29*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        26*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        27*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        28*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        29*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        29*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        31*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        32*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        33*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        34*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        35*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        36*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        39*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        40*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        41*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        42*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        43*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        44*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        44*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        46*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        47*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        48*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        49*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        50*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        51*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        54*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        55*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        56*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        57*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        58*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        61*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        62*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        63*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        64*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        65*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        66*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        69*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        70*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        71*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        72*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        73*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        74*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        74*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        76*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
@ 019   ----------------------------------------
mus_ice_paradise__act_2_11_019:
	.byte	W01
	.byte		VOL   , 77*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        78*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        79*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        80*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        81*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        84*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        85*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        86*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        87*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        88*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W20
	.byte	PEND
	.byte		EOT   , Bn3 
	.byte	W08
	.byte		N18   , Bn3 , v127
	.byte	W24
	.byte		        As3 
	.byte	W24
@ 020   ----------------------------------------
	.byte		N24   , An3 
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte		VOL   , 92*mus_ice_paradise__act_2_mvl/mxv
	.byte	W68
	.byte	W03
	.byte		        92*mus_ice_paradise__act_2_mvl/mxv
	.byte	W16
	.byte		TIE   , Cs4 
	.byte	W06
	.byte		VOL   , 92*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        77*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
@ 023   ----------------------------------------
mus_ice_paradise__act_2_11_023:
	.byte		VOL   , 52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        27*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        28*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        29*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        29*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        31*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        32*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        33*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        34*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        35*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        36*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        39*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        40*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        41*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        42*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        43*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        44*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        44*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        46*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        47*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        48*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        49*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        50*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        51*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        54*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        55*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        56*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        57*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        58*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        61*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        62*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        63*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        64*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        65*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        66*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        69*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        70*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        71*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        72*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        73*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        74*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        74*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        76*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        77*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        78*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        79*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        80*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        81*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        84*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        85*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        86*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        87*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        88*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        91*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        92*mus_ice_paradise__act_2_mvl/mxv
	.byte	W24
	.byte	W01
	.byte	PEND
	.byte		EOT   , Cs4 
	.byte	W01
@ 024   ----------------------------------------
	.byte		N32   , Fs3 , v127
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte		VOL   , 93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W13
	.byte		TIE   , Fs4 , v104
	.byte	W05
	.byte		VOL   , 93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        84*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        77*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        57*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        51*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        41*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        31*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        29*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        31*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        32*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        33*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        34*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        35*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        36*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        39*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        40*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        41*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        42*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        43*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        44*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        44*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        46*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        47*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        48*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        49*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        50*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        51*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        54*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        55*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        56*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        57*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        58*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        61*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        62*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        63*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        64*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        65*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        66*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        69*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        70*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        71*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        72*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
@ 027   ----------------------------------------
mus_ice_paradise__act_2_11_027:
	.byte	W01
	.byte		VOL   , 73*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        74*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        74*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        76*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        77*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        78*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        79*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        80*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        81*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        84*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        85*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        86*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        87*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        88*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        91*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        92*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W64
	.byte	W01
	.byte	PEND
	.byte		EOT   , Fs4 
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W84
	.byte	W03
	.byte		N10   , Bn3 , v120
	.byte	W09
@ 031   ----------------------------------------
	.byte	W15
	.byte		N30   
	.byte	W36
	.byte		N23   , Bn3 , v116
	.byte	W23
	.byte		N24   , Cs4 , v124
	.byte	W22
@ 032   ----------------------------------------
	.byte	W02
	.byte		N32   , Fs3 , v127
	.byte	W92
	.byte	W02
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte		VOL   , 93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W84
	.byte	W03
	.byte		TIE   , En4 
	.byte	W04
	.byte		VOL   , 91*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        77*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        69*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
@ 035   ----------------------------------------
mus_ice_paradise__act_2_11_035:
	.byte		VOL   , 55*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        46*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        31*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        32*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        33*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        34*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        36*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        39*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        40*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        41*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        43*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        44*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        44*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        46*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        47*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        49*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        50*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        51*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        54*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        56*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        57*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        58*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        61*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        63*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        64*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        65*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        66*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        69*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        70*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        71*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        72*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        73*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        74*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        76*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        77*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        78*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        79*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        80*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        84*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        85*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        86*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        88*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        91*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W36
	.byte	W02
	.byte	PEND
	.byte		EOT   , En4 
	.byte	W01
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
mus_ice_paradise__act_2_11_043:
	.byte		VOICE , 63
	.byte		VOL   , 127*mus_ice_paradise__act_2_mvl/mxv
	.byte		BENDR , 12
	.byte	W96
	.byte	PEND
@ 044   ----------------------------------------
	.byte		VOL   , 127*mus_ice_paradise__act_2_mvl/mxv
	.byte		N30   , As2 , v104
	.byte		N30   , Cs3 
	.byte	W36
	.byte	W03
	.byte		N48   , As2 , v100
	.byte		N48   , Cs3 
	.byte	W07
	.byte		VOL   , 121*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        114*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        104*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        94*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        88*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        91*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        92*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        94*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        95*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        96*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        97*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        97*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        99*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        100*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        101*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        102*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        104*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        104*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        106*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        107*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        108*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        109*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        110*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        111*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        114*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        115*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        116*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        117*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        118*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        119*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        119*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        121*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        122*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        124*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        125*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        126*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        127*mus_ice_paradise__act_2_mvl/mxv
	.byte	W10
@ 045   ----------------------------------------
	.byte		N30   , Bn2 , v124
	.byte		N30   , Ds3 
	.byte	W36
	.byte	W03
	.byte		N52   , Bn2 , v112
	.byte		N52   , Ds3 
	.byte	W07
	.byte		VOL   , 117*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        97*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        84*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        86*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        87*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        88*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        91*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        92*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        94*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        96*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        97*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        97*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        99*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        100*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        101*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        102*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        103*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        104*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        106*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        107*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        108*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        109*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        110*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        111*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        114*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        116*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        117*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        118*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        119*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        119*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        121*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        122*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        123*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        124*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        126*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        127*mus_ice_paradise__act_2_mvl/mxv
	.byte	W09
@ 046   ----------------------------------------
	.byte		N28   , Bn2 , v120
	.byte		N28   , En3 
	.byte	W36
	.byte	W03
	.byte		N15   , Bn2 , v116
	.byte		N15   , En3 
	.byte	W24
	.byte		N13   , Cn3 , v120
	.byte		N13   , Fn3 
	.byte	W24
	.byte		N32   , Cs3 , v124
	.byte		N32   , Fs3 
	.byte	W09
@ 047   ----------------------------------------
	.byte	W36
	.byte	W03
	.byte		N56   , Fs3 , v127
	.byte		N56   , As3 
	.byte	W10
	.byte		VOL   , 108*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        80*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        66*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        69*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        71*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        72*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        74*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        76*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        78*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        79*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        81*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        85*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        86*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        88*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        89*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        92*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        95*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        97*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        99*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        100*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        102*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        104*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        106*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        107*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        109*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        111*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        112*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        114*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        116*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        118*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        119*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        121*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        123*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        125*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        127*mus_ice_paradise__act_2_mvl/mxv
	.byte	W10
@ 048   ----------------------------------------
	.byte		N22   , Fs3 , v120
	.byte		N22   , Bn3 
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte		VOICE , 64
	.byte		VOL   , 127*mus_ice_paradise__act_2_mvl/mxv
	.byte		BENDR , 12
	.byte	W72
	.byte		VOL   , 93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W13
	.byte		TIE   , Fs4 , v124
	.byte	W05
	.byte		VOL   , 93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        84*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        77*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
@ 051   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_11_007
	.byte		EOT   , Fs4 
@ 052   ----------------------------------------
	.byte		N32   , Gn4 , v124
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W72
	.byte		VOL   , 93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W13
	.byte		TIE   
	.byte	W05
	.byte		VOL   , 93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        84*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        77*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
@ 055   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_11_007
	.byte		EOT   , Gn4 
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte		VOL   , 89*mus_ice_paradise__act_2_mvl/mxv
	.byte		TIE   , Dn4 , v127
	.byte	W12
	.byte		VOL   , 87*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        77*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        72*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        62*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        57*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        47*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        42*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        32*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        27*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        24*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        25*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        26*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        27*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        28*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        29*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        29*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        31*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        32*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        33*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        34*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        35*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        36*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        39*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        40*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        41*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        42*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        43*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        44*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        44*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        46*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        47*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        48*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        49*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        50*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        51*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        54*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        55*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        56*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        57*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        58*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        61*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        62*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        63*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        64*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        65*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        66*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        69*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        70*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        71*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        72*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        73*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        74*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        74*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        76*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        77*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        78*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        79*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        80*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        81*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        84*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        85*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
@ 065   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_11_017
	.byte		EOT   , Dn4 
	.byte	W08
	.byte		N18   , Dn4 , v127
	.byte	W24
	.byte		        Cs4 
	.byte	W24
@ 066   ----------------------------------------
	.byte		TIE   , Cn4 
	.byte	W12
	.byte		VOL   , 84*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        77*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        57*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        50*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        40*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        29*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        26*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        27*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        28*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        29*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        29*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        31*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        32*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        33*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        34*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        35*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        36*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        39*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        40*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        41*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        42*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        43*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        44*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        44*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        46*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        47*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        48*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        49*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        50*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        51*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        54*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        55*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        56*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        57*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        58*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        61*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        62*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        63*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        64*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        65*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        66*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        69*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        70*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        71*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        72*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        73*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        74*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        74*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        76*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
@ 067   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_11_019
	.byte		EOT   , Cn4 
	.byte	W08
	.byte		N18   , Cn4 , v127
	.byte	W24
	.byte		        Bn3 
	.byte	W24
@ 068   ----------------------------------------
	.byte		N24   , As3 
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte		VOL   , 92*mus_ice_paradise__act_2_mvl/mxv
	.byte	W68
	.byte	W03
	.byte		        92*mus_ice_paradise__act_2_mvl/mxv
	.byte	W16
	.byte		TIE   , Dn4 
	.byte	W06
	.byte		VOL   , 92*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        77*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
@ 071   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_11_023
	.byte		EOT   , Dn4 
	.byte	W01
@ 072   ----------------------------------------
	.byte		N32   , Gn3 , v127
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte		VOL   , 93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W13
	.byte		TIE   , Gn4 , v104
	.byte	W05
	.byte		VOL   , 93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        84*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        77*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        57*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        51*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        41*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        31*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        29*mus_ice_paradise__act_2_mvl/mxv
	.byte	W03
	.byte		        31*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        32*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        33*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        34*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        35*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        36*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        37*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        39*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        40*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        41*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        42*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        43*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        44*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        44*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        46*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        47*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        48*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        49*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        50*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        51*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        52*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        54*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        55*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        56*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        57*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        58*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        61*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        62*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        63*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        64*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        65*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        66*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        67*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        69*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        70*mus_ice_paradise__act_2_mvl/mxv
	.byte	W02
	.byte		        71*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        72*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
@ 075   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_11_027
	.byte		EOT   , Gn4 
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	W84
	.byte	W03
	.byte		N10   , Cn4 , v120
	.byte	W09
@ 079   ----------------------------------------
	.byte	W15
	.byte		N30   
	.byte	W36
	.byte		N23   , Cn4 , v116
	.byte	W23
	.byte		N24   , Dn4 , v124
	.byte	W22
@ 080   ----------------------------------------
	.byte	W02
	.byte		N32   , Gn3 , v127
	.byte	W92
	.byte	W02
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte		VOL   , 93*mus_ice_paradise__act_2_mvl/mxv
	.byte	W84
	.byte	W03
	.byte		TIE   , Fn4 
	.byte	W04
	.byte		VOL   , 91*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        82*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        77*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        69*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
	.byte		        59*mus_ice_paradise__act_2_mvl/mxv
	.byte	W01
@ 083   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_11_035
	.byte		EOT   , Fn4 
	.byte	W01
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte	W96
@ 091   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_11_043
	.byte	GOTO
	 mPtr	mus_ice_paradise__act_2_11_B1
mus_ice_paradise__act_2_11_B2:
@ 092   ----------------------------------------
	.byte	FINE

@ **************** Track 12 (Midi-Chn.12) ****************

mus_ice_paradise__act_2_12:
	.byte	KEYSH , mus_ice_paradise__act_2_key+0
mus_ice_paradise__act_2_12_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 110
	.byte		VOL   , 107*mus_ice_paradise__act_2_mvl/mxv
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_ice_paradise__act_2_12_004:
	.byte		N11   , Dn3 , v127
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N23   
	.byte	W48
	.byte	PEND
@ 005   ----------------------------------------
mus_ice_paradise__act_2_12_005:
	.byte	W48
	.byte		N23   , Dn3 , v127
	.byte	W24
	.byte		N02   , Dn3 , v048
	.byte	W15
	.byte		N02   
	.byte	W09
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_004
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_005
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_004
@ 009   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_005
@ 010   ----------------------------------------
mus_ice_paradise__act_2_12_010:
	.byte		N11   , Gn3 , v127
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N23   
	.byte	W48
	.byte	PEND
@ 011   ----------------------------------------
mus_ice_paradise__act_2_12_011:
	.byte	W48
	.byte		N23   , Gn3 , v127
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_004
@ 013   ----------------------------------------
mus_ice_paradise__act_2_12_013:
	.byte	W48
	.byte		N23   , Dn3 , v127
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte	PEND
@ 014   ----------------------------------------
mus_ice_paradise__act_2_12_014:
	.byte		N11   , Cn3 , v127
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N23   
	.byte	W48
	.byte	PEND
@ 015   ----------------------------------------
mus_ice_paradise__act_2_12_015:
	.byte	W48
	.byte		N23   , Cn3 , v127
	.byte	W24
	.byte		N02   , Cn3 , v048
	.byte	W15
	.byte		N02   
	.byte	W09
	.byte	PEND
@ 016   ----------------------------------------
	.byte		N11   , An3 , v127
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N23   
	.byte	W48
@ 017   ----------------------------------------
	.byte	W48
	.byte		N23   
	.byte	W24
	.byte		        Gs3 
	.byte	W24
@ 018   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_010
@ 019   ----------------------------------------
	.byte	W48
	.byte		N23   , Gn3 , v127
	.byte	W24
	.byte		        Fs3 
	.byte	W24
@ 020   ----------------------------------------
mus_ice_paradise__act_2_12_020:
	.byte		N11   , Fn3 , v127
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N23   
	.byte	W48
	.byte	PEND
@ 021   ----------------------------------------
	.byte	W48
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
@ 022   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_010
@ 023   ----------------------------------------
	.byte	W48
	.byte		N23   , An3 , v127
	.byte	W24
	.byte		N23   
	.byte	W24
@ 024   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_004
@ 025   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_005
@ 026   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_004
@ 027   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_005
@ 028   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_004
@ 029   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_005
@ 030   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_010
@ 031   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_011
@ 032   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_004
@ 033   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_013
@ 034   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_014
@ 035   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_015
@ 036   ----------------------------------------
	.byte		N11   , En3 , v127
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N23   
	.byte	W48
@ 037   ----------------------------------------
	.byte	W48
	.byte		        Fs3 
	.byte	W24
	.byte		N02   , Fs3 , v048
	.byte	W15
	.byte		N02   
	.byte	W09
@ 038   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_004
@ 039   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_005
@ 040   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_014
@ 041   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_015
@ 042   ----------------------------------------
	.byte		N11   , As2 , v127
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N23   
	.byte	W48
@ 043   ----------------------------------------
mus_ice_paradise__act_2_12_043:
	.byte	W48
	.byte		N23   , Ds3 , v127
	.byte	W24
	.byte		N02   , Ds3 , v048
	.byte	W15
	.byte		N02   
	.byte	W09
	.byte	PEND
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_004
@ 049   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_005
@ 050   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_004
@ 051   ----------------------------------------
	.byte	W48
	.byte		N23   , Dn3 , v127
	.byte	W24
	.byte		N11   , Cs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 052   ----------------------------------------
mus_ice_paradise__act_2_12_052:
	.byte		N11   , Ds3 , v127
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N23   
	.byte	W48
	.byte	PEND
@ 053   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_043
@ 054   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_052
@ 055   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_043
@ 056   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_052
@ 057   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_043
@ 058   ----------------------------------------
mus_ice_paradise__act_2_12_058:
	.byte		N11   , Gs3 , v127
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N23   
	.byte	W48
	.byte	PEND
@ 059   ----------------------------------------
mus_ice_paradise__act_2_12_059:
	.byte	W48
	.byte		N23   , Gs3 , v127
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte	PEND
@ 060   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_052
@ 061   ----------------------------------------
mus_ice_paradise__act_2_12_061:
	.byte	W48
	.byte		N23   , Ds3 , v127
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte	PEND
@ 062   ----------------------------------------
mus_ice_paradise__act_2_12_062:
	.byte		N11   , Cs3 , v127
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N23   
	.byte	W48
	.byte	PEND
@ 063   ----------------------------------------
mus_ice_paradise__act_2_12_063:
	.byte	W48
	.byte		N23   , Cs3 , v127
	.byte	W24
	.byte		N02   , Cs3 , v048
	.byte	W15
	.byte		N02   
	.byte	W09
	.byte	PEND
@ 064   ----------------------------------------
	.byte		N11   , As3 , v127
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N23   
	.byte	W48
@ 065   ----------------------------------------
	.byte	W48
	.byte		N23   
	.byte	W24
	.byte		        An3 
	.byte	W24
@ 066   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_058
@ 067   ----------------------------------------
	.byte	W48
	.byte		N23   , Gs3 , v127
	.byte	W24
	.byte		        Gn3 
	.byte	W24
@ 068   ----------------------------------------
	.byte		N11   , Fs3 
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N23   
	.byte	W48
@ 069   ----------------------------------------
	.byte	W48
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
@ 070   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_058
@ 071   ----------------------------------------
	.byte	W48
	.byte		N23   , As3 , v127
	.byte	W24
	.byte		N23   
	.byte	W24
@ 072   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_052
@ 073   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_043
@ 074   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_052
@ 075   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_043
@ 076   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_052
@ 077   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_043
@ 078   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_058
@ 079   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_059
@ 080   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_052
@ 081   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_061
@ 082   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_062
@ 083   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_063
@ 084   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_020
@ 085   ----------------------------------------
	.byte	W48
	.byte		N23   , Gn3 , v127
	.byte	W24
	.byte		N02   , Gn3 , v048
	.byte	W15
	.byte		N02   
	.byte	W09
@ 086   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_052
@ 087   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_043
@ 088   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_062
@ 089   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_12_063
@ 090   ----------------------------------------
	.byte		N11   , Bn2 , v127
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N23   
	.byte	W48
@ 091   ----------------------------------------
	.byte	W48
	.byte		        En3 
	.byte	W24
	.byte		N02   , En3 , v048
	.byte	W15
	.byte		N02   
	.byte	W09
	.byte	GOTO
	 mPtr	mus_ice_paradise__act_2_12_B1
mus_ice_paradise__act_2_12_B2:
@ 092   ----------------------------------------
	.byte	FINE

@ **************** Track 13 (Midi-Chn.13) ****************

mus_ice_paradise__act_2_13:
	.byte	KEYSH , mus_ice_paradise__act_2_key+0
mus_ice_paradise__act_2_13_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 111
	.byte		VOL   , 107*mus_ice_paradise__act_2_mvl/mxv
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_ice_paradise__act_2_13_004:
	.byte	W68
	.byte	W03
	.byte		N15   , Dn3 , v127
	.byte	W24
	.byte	W01
	.byte	PEND
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_13_004
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_13_004
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
mus_ice_paradise__act_2_13_010:
	.byte	W68
	.byte	W03
	.byte		N15   , Gn3 , v127
	.byte	W24
	.byte	W01
	.byte	PEND
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_13_004
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
mus_ice_paradise__act_2_13_014:
	.byte	W68
	.byte	W03
	.byte		N15   , Cn3 , v127
	.byte	W24
	.byte	W01
	.byte	PEND
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		        An3 
	.byte	W24
	.byte	W01
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_13_010
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
mus_ice_paradise__act_2_13_020:
	.byte	W68
	.byte	W03
	.byte		N15   , Fn3 , v127
	.byte	W24
	.byte	W01
	.byte	PEND
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_13_010
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_13_004
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_13_004
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_13_004
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_13_010
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_13_004
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_13_014
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		N15   , En3 , v127
	.byte	W24
	.byte	W01
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_13_004
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_13_014
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		N15   , As2 , v127
	.byte	W24
	.byte	W01
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_13_004
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_13_004
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
mus_ice_paradise__act_2_13_052:
	.byte	W68
	.byte	W03
	.byte		N15   , Ds3 , v127
	.byte	W24
	.byte	W01
	.byte	PEND
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_13_052
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_13_052
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
mus_ice_paradise__act_2_13_058:
	.byte	W68
	.byte	W03
	.byte		N15   , Gs3 , v127
	.byte	W24
	.byte	W01
	.byte	PEND
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_13_052
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
mus_ice_paradise__act_2_13_062:
	.byte	W68
	.byte	W03
	.byte		N15   , Cs3 , v127
	.byte	W24
	.byte	W01
	.byte	PEND
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		        As3 
	.byte	W24
	.byte	W01
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_13_058
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		N15   , Fs3 , v127
	.byte	W24
	.byte	W01
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_13_058
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_13_052
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_13_052
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_13_052
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_13_058
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_13_052
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_13_062
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_13_020
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_13_052
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_13_062
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		N15   , Bn2 , v127
	.byte	W24
	.byte	W01
@ 091   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_ice_paradise__act_2_13_B1
mus_ice_paradise__act_2_13_B2:
@ 092   ----------------------------------------
	.byte	FINE

@ **************** Track 14 (Midi-Chn.14) ****************

mus_ice_paradise__act_2_14:
	.byte	KEYSH , mus_ice_paradise__act_2_key+0
mus_ice_paradise__act_2_14_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 112
	.byte		VOL   , 107*mus_ice_paradise__act_2_mvl/mxv
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_ice_paradise__act_2_14_004:
	.byte	W84
	.byte	W03
	.byte		N24   , Dn3 , v127
	.byte	W09
	.byte	PEND
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_14_004
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_14_004
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
mus_ice_paradise__act_2_14_010:
	.byte	W84
	.byte	W03
	.byte		N24   , Gn3 , v127
	.byte	W09
	.byte	PEND
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_14_004
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
mus_ice_paradise__act_2_14_014:
	.byte	W84
	.byte	W03
	.byte		N24   , Cn3 , v127
	.byte	W09
	.byte	PEND
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W84
	.byte	W03
	.byte		        An3 
	.byte	W09
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_14_010
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W84
	.byte	W03
	.byte		N24   , Fn3 , v127
	.byte	W09
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_14_010
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_14_004
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_14_004
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_14_004
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_14_010
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_14_004
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_14_014
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
mus_ice_paradise__act_2_14_036:
	.byte	W84
	.byte	W03
	.byte		N24   , Fs3 , v127
	.byte	W09
	.byte	PEND
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_14_004
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_14_014
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
mus_ice_paradise__act_2_14_042:
	.byte	W84
	.byte	W03
	.byte		N24   , Ds3 , v127
	.byte	W09
	.byte	PEND
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_14_004
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_14_004
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_14_042
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_14_042
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_14_042
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
mus_ice_paradise__act_2_14_058:
	.byte	W84
	.byte	W03
	.byte		N24   , Gs3 , v127
	.byte	W09
	.byte	PEND
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_14_042
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
mus_ice_paradise__act_2_14_062:
	.byte	W84
	.byte	W03
	.byte		N24   , Cs3 , v127
	.byte	W09
	.byte	PEND
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W84
	.byte	W03
	.byte		        As3 
	.byte	W09
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_14_058
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_14_036
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_14_058
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_14_042
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_14_042
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_14_042
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_14_058
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_14_042
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_14_062
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_14_010
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_14_042
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_14_062
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte	W84
	.byte	W03
	.byte		N24   , En3 , v127
	.byte	W09
@ 091   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_ice_paradise__act_2_14_B1
mus_ice_paradise__act_2_14_B2:
@ 092   ----------------------------------------
	.byte	FINE

@ **************** Track 15 (Midi-Chn.15) ****************

mus_ice_paradise__act_2_15:
	.byte	KEYSH , mus_ice_paradise__act_2_key+0
mus_ice_paradise__act_2_15_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 113
	.byte		VOL   , 107*mus_ice_paradise__act_2_mvl/mxv
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
mus_ice_paradise__act_2_15_005:
	.byte	W15
	.byte		N08   , Dn3 , v127
	.byte	W80
	.byte	W01
	.byte	PEND
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_15_005
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_15_005
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
mus_ice_paradise__act_2_15_011:
	.byte	W15
	.byte		N08   , Gn3 , v127
	.byte	W80
	.byte	W01
	.byte	PEND
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_15_005
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
mus_ice_paradise__act_2_15_015:
	.byte	W15
	.byte		N08   , Cn3 , v127
	.byte	W80
	.byte	W01
	.byte	PEND
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W15
	.byte		        An3 
	.byte	W80
	.byte	W01
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_15_011
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W15
	.byte		N08   , Fn3 , v127
	.byte	W80
	.byte	W01
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_15_011
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_15_005
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_15_005
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_15_005
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_15_011
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_15_005
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_15_015
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
mus_ice_paradise__act_2_15_037:
	.byte	W15
	.byte		N08   , Fs3 , v127
	.byte	W80
	.byte	W01
	.byte	PEND
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_15_005
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_15_015
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
mus_ice_paradise__act_2_15_043:
	.byte	W15
	.byte		N08   , Ds3 , v127
	.byte	W80
	.byte	W01
	.byte	PEND
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_15_005
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_15_005
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_15_043
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_15_043
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_15_043
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
mus_ice_paradise__act_2_15_059:
	.byte	W15
	.byte		N08   , Gs3 , v127
	.byte	W80
	.byte	W01
	.byte	PEND
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_15_043
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
mus_ice_paradise__act_2_15_063:
	.byte	W15
	.byte		N08   , Cs3 , v127
	.byte	W80
	.byte	W01
	.byte	PEND
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W15
	.byte		        As3 
	.byte	W80
	.byte	W01
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_15_059
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_15_037
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_15_059
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_15_043
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_15_043
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_15_043
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_15_059
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_15_043
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_15_063
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_15_011
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_15_043
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	PATT
	 mPtr	mus_ice_paradise__act_2_15_063
@ 090   ----------------------------------------
	.byte	W96
@ 091   ----------------------------------------
	.byte	W15
	.byte		N08   , En3 , v127
	.byte	W80
	.byte	W01
	.byte	GOTO
	 mPtr	mus_ice_paradise__act_2_15_B1
mus_ice_paradise__act_2_15_B2:
@ 092   ----------------------------------------
	.byte	FINE

@ **************** Track 16 (Midi-Chn.16) ****************

mus_ice_paradise__act_2_16:
	.byte	KEYSH , mus_ice_paradise__act_2_key+0
mus_ice_paradise__act_2_16_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 114
	.byte		VOL   , 107*mus_ice_paradise__act_2_mvl/mxv
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W24
	.byte		N23   , Dn3 , v127
	.byte	W72
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W24
	.byte		N23   
	.byte	W72
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W24
	.byte		N23   
	.byte	W72
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W24
	.byte		        Gn3 
	.byte	W72
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W24
	.byte		        Dn3 
	.byte	W72
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W24
	.byte		        Cn3 
	.byte	W72
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W24
	.byte		        An3 
	.byte	W72
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W24
	.byte		        Gn3 
	.byte	W72
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W24
	.byte		        Fn3 
	.byte	W72
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W24
	.byte		        Gn3 
	.byte	W72
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W24
	.byte		        Dn3 
	.byte	W72
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W24
	.byte		N23   
	.byte	W72
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W24
	.byte		N23   
	.byte	W72
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W24
	.byte		        Gn3 
	.byte	W72
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W24
	.byte		        Dn3 
	.byte	W72
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W24
	.byte		        Cn3 
	.byte	W72
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W24
	.byte		        Fs3 
	.byte	W72
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W24
	.byte		        Dn3 
	.byte	W72
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W24
	.byte		        Cn3 
	.byte	W72
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W24
	.byte		        Ds3 
	.byte	W72
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W24
	.byte		        Dn3 
	.byte	W72
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W24
	.byte		N23   
	.byte	W72
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W24
	.byte		        Ds3 
	.byte	W72
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W24
	.byte		N23   
	.byte	W72
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W24
	.byte		N23   
	.byte	W72
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W24
	.byte		        Gs3 
	.byte	W72
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W24
	.byte		        Ds3 
	.byte	W72
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W24
	.byte		        Cs3 
	.byte	W72
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W24
	.byte		        As3 
	.byte	W72
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W24
	.byte		        Gs3 
	.byte	W72
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W24
	.byte		        Fs3 
	.byte	W72
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	W24
	.byte		        Gs3 
	.byte	W72
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W24
	.byte		        Ds3 
	.byte	W72
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W24
	.byte		N23   
	.byte	W72
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W24
	.byte		N23   
	.byte	W72
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W24
	.byte		        Gs3 
	.byte	W72
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W24
	.byte		        Ds3 
	.byte	W72
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W24
	.byte		        Cs3 
	.byte	W72
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W24
	.byte		        Gn3 
	.byte	W72
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	W24
	.byte		        Ds3 
	.byte	W72
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W24
	.byte		        Cs3 
	.byte	W72
@ 090   ----------------------------------------
	.byte	W96
@ 091   ----------------------------------------
	.byte	W24
	.byte		        En3 
	.byte	W72
	.byte	GOTO
	 mPtr	mus_ice_paradise__act_2_16_B1
mus_ice_paradise__act_2_16_B2:
@ 092   ----------------------------------------
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(mus_ice_paradise__act_2):
	.byte	16	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_ice_paradise__act_2_pri	@ Priority
	.byte	mus_ice_paradise__act_2_rev	@ Reverb

mAlignWord
	mPtr	mus_ice_paradise__act_2_grp

	mPtr	mus_ice_paradise__act_2_1
	mPtr	mus_ice_paradise__act_2_2
	mPtr	mus_ice_paradise__act_2_3
	mPtr	mus_ice_paradise__act_2_4
	mPtr	mus_ice_paradise__act_2_5
	mPtr	mus_ice_paradise__act_2_6
	mPtr	mus_ice_paradise__act_2_7
	mPtr	mus_ice_paradise__act_2_8
	mPtr	mus_ice_paradise__act_2_9
	mPtr	mus_ice_paradise__act_2_10
	mPtr	mus_ice_paradise__act_2_11
	mPtr	mus_ice_paradise__act_2_12
	mPtr	mus_ice_paradise__act_2_13
	mPtr	mus_ice_paradise__act_2_14
	mPtr	mus_ice_paradise__act_2_15
	mPtr	mus_ice_paradise__act_2_16

	.end
