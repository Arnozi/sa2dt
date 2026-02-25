	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_vs_3_grp, voicegroup023
	.equ	mus_vs_3_pri, 0
	.equ	mus_vs_3_rev, reverb_set+0
	.equ	mus_vs_3_mvl, 105
	.equ	mus_vs_3_key, 0
	.equ	mus_vs_3_tbs, 1
	.equ	mus_vs_3_exg, 1
	.equ	mus_vs_3_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_vs_3)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_vs_3_1:
	.byte	KEYSH , mus_vs_3_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*mus_vs_3_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_vs_3_mvl/mxv
	.byte		N11   , Ds1 , v100
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v100
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		N11   , Ds1 , v100
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		        Dn1 , v100
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N28   , Ds1 
	.byte		N06   , Ds2 
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v060
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v036
	.byte	W06
	.byte		        Ds2 , v127
	.byte	W06
/* 001   ----------------------------------------
 */	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v036
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v036
	.byte	W06
	.byte		        Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v060
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Dn1 , v036
	.byte	W06
	.byte		        Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v060
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Dn1 , v036
	.byte	W12
/* 002   ----------------------------------------
 */	.byte		N05   , Ds1 , v100
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v036
	.byte	W06
	.byte		        En2 , v127
	.byte	W06
	.byte		N32   , Ds1 
	.byte		N06   , Ds2 
	.byte	W32
	.byte	W03
	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_vs_3_2:
	.byte	KEYSH , mus_vs_3_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 90
	.byte		VOL   , 127*mus_vs_3_mvl/mxv
	.byte		N17   , Bn2 , v127
	.byte	W18
	.byte		N23   , Dn3 
	.byte	W24
	.byte		N40   , Cs3 
	.byte	W42
	.byte		N05   , Cs3 , v112
	.byte	W06
	.byte		        Gs2 , v100
	.byte	W06
/* 001   ----------------------------------------
 */	.byte		N44   , Cs2 , v116
	.byte	W48
	.byte		N23   , Cs3 , v120
	.byte	W24
	.byte		        Cs2 , v112
	.byte	W24
/* 002   ----------------------------------------
 */	.byte		N06   , Cs3 
	.byte	W12
	.byte		N05   , Cs3 , v096
	.byte	W06
	.byte		TIE   , Ds3 , v124
	.byte	W78
/* 003   ----------------------------------------
 */	.byte	W24
	.byte	W02
	.byte		EOT   
	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_vs_3_3:
	.byte	KEYSH , mus_vs_3_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 100
	.byte		VOL   , 90*mus_vs_3_mvl/mxv
	.byte		BENDR , 59
	.byte		N17   , An3 , v072
	.byte	W18
	.byte		N23   , Cn4 , v080
	.byte	W24
	.byte		TIE   , Bn3 , v076
	.byte	W15
	.byte		VOL   , 75*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        53*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        39*mus_vs_3_mvl/mxv
	.byte	W06
	.byte		        40*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        40*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        42*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        44*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        45*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        46*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        46*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        49*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        50*mus_vs_3_mvl/mxv
	.byte	W03
/* 001   ----------------------------------------
 */	.byte		        51*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        51*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        53*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        55*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        56*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        57*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        57*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        60*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        61*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        62*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        63*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        65*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        66*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        67*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        68*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        69*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        71*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        72*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        73*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        74*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        75*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        77*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        78*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        79*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        80*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        82*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        83*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        84*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        86*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        86*mus_vs_3_mvl/mxv
	.byte	W02
	.byte		EOT   
	.byte	W01
	.byte		VOL   , 88*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        90*mus_vs_3_mvl/mxv
	.byte	W03
/* 002   ----------------------------------------
 */	.byte		N08   , Bn3 , v088
	.byte	W12
	.byte		N05   , Bn3 , v068
	.byte	W06
	.byte		TIE   , Cs4 
	.byte	W66
	.byte		VOL   , 86*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        82*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        77*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        72*mus_vs_3_mvl/mxv
	.byte	W03
/* 003   ----------------------------------------
 */	.byte		        67*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        63*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        57*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        53*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        48*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        43*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        38*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        34*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        28*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        23*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        19*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        14*mus_vs_3_mvl/mxv
	.byte	W02
	.byte		EOT   
	.byte	W01
	.byte		VOL   , 9*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        5*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        0*mus_vs_3_mvl/mxv
	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_vs_3_4:
	.byte	KEYSH , mus_vs_3_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 101
	.byte		VOL   , 90*mus_vs_3_mvl/mxv
	.byte		MOD   , 0
	.byte		LFOS  , 86
	.byte		BENDR , 53
	.byte		N17   , Cs3 , v072
	.byte	W18
	.byte		N23   , En3 , v080
	.byte	W24
	.byte		TIE   , Ds3 , v076
	.byte	W15
	.byte		VOL   , 75*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        53*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        39*mus_vs_3_mvl/mxv
	.byte	W06
	.byte		        40*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        40*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        42*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        44*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        45*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        46*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        46*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        49*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        50*mus_vs_3_mvl/mxv
	.byte	W03
/* 001   ----------------------------------------
 */	.byte		        51*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        51*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        53*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        55*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        56*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        57*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        57*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        60*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        61*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        62*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        63*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        65*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        66*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        67*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        68*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        69*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        71*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        72*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        73*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        74*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        75*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        77*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        78*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        79*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        80*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        82*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        83*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        84*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        86*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        86*mus_vs_3_mvl/mxv
	.byte	W02
	.byte		EOT   
	.byte	W01
	.byte		VOL   , 88*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        90*mus_vs_3_mvl/mxv
	.byte	W03
/* 002   ----------------------------------------
 */	.byte		N08   , Ds3 , v088
	.byte	W12
	.byte		N05   , Ds3 , v068
	.byte	W06
	.byte		TIE   , Fn3 
	.byte	W66
	.byte		VOL   , 86*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        82*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        77*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        72*mus_vs_3_mvl/mxv
	.byte	W03
/* 003   ----------------------------------------
 */	.byte		        67*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        63*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        57*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        53*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        48*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        43*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        38*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        34*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        28*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        23*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        19*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        14*mus_vs_3_mvl/mxv
	.byte	W02
	.byte		EOT   
	.byte	W01
	.byte		VOL   , 9*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        5*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        0*mus_vs_3_mvl/mxv
	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_vs_3_5:
	.byte	KEYSH , mus_vs_3_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 102
	.byte		VOL   , 90*mus_vs_3_mvl/mxv
	.byte		N17   , En3 , v072
	.byte	W18
	.byte		N23   , Gn3 , v080
	.byte	W24
	.byte		TIE   , Fs3 , v076
	.byte	W15
	.byte		VOL   , 75*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        53*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        39*mus_vs_3_mvl/mxv
	.byte	W06
	.byte		        40*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        40*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        42*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        44*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        45*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        46*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        46*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        49*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        50*mus_vs_3_mvl/mxv
	.byte	W03
/* 001   ----------------------------------------
 */	.byte		        51*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        51*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        53*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        55*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        56*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        57*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        57*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        60*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        61*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        62*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        63*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        65*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        66*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        67*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        68*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        69*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        71*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        72*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        73*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        74*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        75*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        77*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        78*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        79*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        80*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        82*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        83*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        84*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        86*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        86*mus_vs_3_mvl/mxv
	.byte	W02
	.byte		EOT   
	.byte	W01
	.byte		VOL   , 88*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        90*mus_vs_3_mvl/mxv
	.byte	W03
/* 002   ----------------------------------------
 */	.byte		N08   , Fs3 , v088
	.byte	W12
	.byte		N05   , Fs3 , v068
	.byte	W06
	.byte		TIE   , Gs3 
	.byte	W66
	.byte		VOL   , 86*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        82*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        77*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        72*mus_vs_3_mvl/mxv
	.byte	W03
/* 003   ----------------------------------------
 */	.byte		        67*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        63*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        57*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        53*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        48*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        43*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        38*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        34*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        28*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        23*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        19*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        14*mus_vs_3_mvl/mxv
	.byte	W02
	.byte		EOT   
	.byte	W01
	.byte		VOL   , 9*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        5*mus_vs_3_mvl/mxv
	.byte	W03
	.byte		        0*mus_vs_3_mvl/mxv
	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_vs_3_6:
	.byte	KEYSH , mus_vs_3_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 91
	.byte		VOL   , 100*mus_vs_3_mvl/mxv
	.byte		BENDR , 12
	.byte		MOD   , 3
	.byte		N17   , Cs4 , v112
	.byte	W18
	.byte		N23   , En4 , v120
	.byte	W24
	.byte		TIE   , Ds4 , v116
	.byte	W54
/* 001   ----------------------------------------
 */	.byte	W88
	.byte	W01
	.byte		EOT   
	.byte	W07
/* 002   ----------------------------------------
 */	.byte		N08   , Ds4 , v127
	.byte	W12
	.byte		N05   , Ds4 , v108
	.byte	W06
	.byte		TIE   , Fn4 
	.byte	W78
/* 003   ----------------------------------------
 */	.byte	W32
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_vs_3_7:
	.byte	KEYSH , mus_vs_3_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 99
	.byte		VOL   , 90*mus_vs_3_mvl/mxv
	.byte		BENDR , 12
	.byte		N17   , An3 , v112
	.byte	W18
	.byte		N23   , Cn4 , v120
	.byte	W24
	.byte		N28   , Bn3 , v116
	.byte	W30
	.byte		N03   , Fs2 , v036
	.byte	W03
	.byte		        Bn2 
	.byte	W03
	.byte		        Cs3 , v040
	.byte	W03
	.byte		        Ds3 , v044
	.byte	W03
	.byte		        Fs3 , v048
	.byte	W03
	.byte		        Bn3 , v052
	.byte	W03
	.byte		        Cs4 , v056
	.byte	W03
	.byte		        Ds4 , v060
	.byte	W03
/* 001   ----------------------------------------
 */	.byte		        Fs4 , v064
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Ds5 , v072
	.byte	W03
	.byte		        Fs5 , v076
	.byte	W03
	.byte		        Bn5 , v080
	.byte	W03
	.byte		        Fs5 , v068
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        Cs5 , v064
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        Ds5 , v060
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Bn4 , v056
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Bn3 , v052
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        Fs4 , v048
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Cs4 , v044
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        Ds4 , v040
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Bn3 , v036
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Bn2 , v032
	.byte	W03
	.byte		        Fs2 
	.byte	W03
	.byte		        Ds2 , v028
	.byte	W03
	.byte		        Bn1 
	.byte	W03
/* 002   ----------------------------------------
 */	.byte		N08   , Bn3 , v108
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		TIE   , Cs4 
	.byte	W78
/* 003   ----------------------------------------
 */	.byte	W32
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_vs_3):
	.byte	7	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_vs_3_pri	/* Priority */
	.byte	mus_vs_3_rev	/* Reverb */

mAlignWord
	mPtr	mus_vs_3_grp

	mPtr	mus_vs_3_1
	mPtr	mus_vs_3_2
	mPtr	mus_vs_3_3
	mPtr	mus_vs_3_4
	mPtr	mus_vs_3_5
	mPtr	mus_vs_3_6
	mPtr	mus_vs_3_7

	.end
