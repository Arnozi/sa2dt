	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_extra_ending_grp, voicegroup022
	.equ	mus_extra_ending_pri, 0
	.equ	mus_extra_ending_rev, reverb_set+0
	.equ	mus_extra_ending_mvl, 98
	.equ	mus_extra_ending_key, 0
	.equ	mus_extra_ending_tbs, 1
	.equ	mus_extra_ending_exg, 1
	.equ	mus_extra_ending_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_extra_ending)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_extra_ending_1:
	.byte	KEYSH , mus_extra_ending_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 178*mus_extra_ending_tbs/2
	.byte		VOICE , 67
	.byte		VOL   , 112*mus_extra_ending_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
/* 001   ----------------------------------------
 */mus_extra_ending_1_001:
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte	PEND
/* 002   ----------------------------------------
 */mus_extra_ending_1_002:
	.byte		N06   , An1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte	PEND
/* 003   ----------------------------------------
 */mus_extra_ending_1_003:
	.byte		N06   , As1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
/* 004   ----------------------------------------
 */mus_extra_ending_1_004:
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte	PEND
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_1_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_1_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_1_003
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_1_004
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_1_001
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_1_002
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_1_003
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_1_004
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_1_001
/* 014   ----------------------------------------
 */	.byte		N06   , As1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        As1 
	.byte	W06
/* 015   ----------------------------------------
 */	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
/* 016   ----------------------------------------
 */	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
/* 017   ----------------------------------------
 */	.byte	TEMPO , 178*mus_extra_ending_tbs/2
	.byte		        An1 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	TEMPO , 180*mus_extra_ending_tbs/2
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	TEMPO , 180*mus_extra_ending_tbs/2
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	TEMPO , 182*mus_extra_ending_tbs/2
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N06   
	.byte	W06
/* 018   ----------------------------------------
 */	.byte	TEMPO , 182*mus_extra_ending_tbs/2
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	TEMPO , 184*mus_extra_ending_tbs/2
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
/* 019   ----------------------------------------
 */	.byte	TEMPO , 184*mus_extra_ending_tbs/2
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	TEMPO , 186*mus_extra_ending_tbs/2
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N06   
	.byte	W06
/* 020   ----------------------------------------
 */	.byte	TEMPO , 186*mus_extra_ending_tbs/2
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	TEMPO , 188*mus_extra_ending_tbs/2
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
/* 021   ----------------------------------------
 */	.byte	TEMPO , 188*mus_extra_ending_tbs/2
	.byte		        Bn1 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	TEMPO , 190*mus_extra_ending_tbs/2
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
/* 022   ----------------------------------------
 */	.byte	TEMPO , 190*mus_extra_ending_tbs/2
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	TEMPO , 192*mus_extra_ending_tbs/2
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
/* 023   ----------------------------------------
 */	.byte	TEMPO , 192*mus_extra_ending_tbs/2
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	TEMPO , 194*mus_extra_ending_tbs/2
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
/* 024   ----------------------------------------
 */	.byte	TEMPO , 194*mus_extra_ending_tbs/2
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
/* 025   ----------------------------------------
 */	.byte		TIE   , Cn3 
	.byte	W24
	.byte		VOL   , 111*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        108*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        105*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        105*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        103*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        102*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        100*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        99*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        98*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        96*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        95*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        93*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        91*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        91*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        89*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        87*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        86*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        85*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        83*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        82*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        81*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        80*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        78*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        77*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        76*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        74*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        73*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        72*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        72*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        69*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        68*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        67*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        67*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        65*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        64*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        63*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        61*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        60*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        59*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        58*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        58*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        56*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        55*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        54*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        52*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        52*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        51*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        50*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        48*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        48*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        47*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        46*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        45*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        43*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        43*mus_extra_ending_mvl/mxv
	.byte	W03
	.byte		        42*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        41*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        39*mus_extra_ending_mvl/mxv
	.byte	W01
/* 026   ----------------------------------------
 */	.byte		        38*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        38*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        37*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        35*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        34*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        33*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        33*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        32*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        30*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        29*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        29*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        28*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        26*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        25*mus_extra_ending_mvl/mxv
	.byte	W03
	.byte		        24*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        24*mus_extra_ending_mvl/mxv
	.byte	W03
	.byte		        23*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        21*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        20*mus_extra_ending_mvl/mxv
	.byte	W03
	.byte		        19*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        19*mus_extra_ending_mvl/mxv
	.byte	W03
	.byte		        17*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        16*mus_extra_ending_mvl/mxv
	.byte	W03
	.byte		        15*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        15*mus_extra_ending_mvl/mxv
	.byte	W03
	.byte		        13*mus_extra_ending_mvl/mxv
	.byte	W03
	.byte		        12*mus_extra_ending_mvl/mxv
	.byte	W04
	.byte		        11*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        10*mus_extra_ending_mvl/mxv
	.byte	W05
	.byte		        10*mus_extra_ending_mvl/mxv
	.byte	W04
	.byte		        8*mus_extra_ending_mvl/mxv
	.byte	W05
	.byte		        7*mus_extra_ending_mvl/mxv
	.byte	W07
	.byte		        6*mus_extra_ending_mvl/mxv
	.byte	W17
	.byte		EOT   
/* 027   ----------------------------------------
 */	.byte	W48
	.byte	TEMPO , 144*mus_extra_ending_tbs/2
	.byte	W48
/* 028   ----------------------------------------
 */	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_extra_ending_2:
	.byte	KEYSH , mus_extra_ending_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 127
	.byte		VOL   , 127*mus_extra_ending_mvl/mxv
	.byte	W03
/* 001   ----------------------------------------
 */mus_extra_ending_2_001:
	.byte		N18   , Ds2 , v120
	.byte	W24
	.byte		N18   
	.byte	W24
	.byte		N18   
	.byte	W24
	.byte		N18   
	.byte	W24
	.byte	PEND
/* 002   ----------------------------------------
 */mus_extra_ending_2_002:
	.byte		N18   , Ds2 , v120
	.byte	W24
	.byte		N18   
	.byte	W24
	.byte		N18   
	.byte	W18
	.byte		N06   , Ds2 , v112
	.byte	W06
	.byte		N12   , Ds2 , v120
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_2_001
/* 004   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_2_002
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_2_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_2_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_2_001
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_2_002
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_2_001
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_2_002
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_2_001
/* 012   ----------------------------------------
 */	.byte		N06   , Gs2 , v120
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N04   , As2 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_2_001
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_2_002
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_2_001
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_2_002
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_2_001
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_2_002
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_2_001
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_2_002
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_2_001
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_2_002
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_2_001
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_2_002
/* 025   ----------------------------------------
 */	.byte		N18   , Ds2 , v120
	.byte	W96
/* 026   ----------------------------------------
 */	.byte	W96
/* 027   ----------------------------------------
 */	.byte	W96
/* 028   ----------------------------------------
 */	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_extra_ending_3:
	.byte	KEYSH , mus_extra_ending_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 127
	.byte		VOL   , 122*mus_extra_ending_mvl/mxv
	.byte	W03
/* 001   ----------------------------------------
 */mus_extra_ending_3_001:
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte	PEND
/* 002   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_3_001
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_3_001
/* 004   ----------------------------------------
 */	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        En1 , v052
	.byte	W06
/* 005   ----------------------------------------
 */	.byte		N24   , Cs2 , v127
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_3_001
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_3_001
/* 008   ----------------------------------------
 */	.byte		N11   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_3_001
/* 010   ----------------------------------------
 */	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
/* 011   ----------------------------------------
 */	.byte		N11   , En1 , v072
	.byte	W12
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
/* 012   ----------------------------------------
 */	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
/* 013   ----------------------------------------
 */	.byte		N36   , Cs2 , v120
	.byte	W24
	.byte		N06   , Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
/* 014   ----------------------------------------
 */	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Ds1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Ds1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
/* 015   ----------------------------------------
 */	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
/* 016   ----------------------------------------
 */	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Ds1 , v080
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v080
	.byte	W12
/* 017   ----------------------------------------
 */	.byte		N24   , Cs2 , v120
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_3_001
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_3_001
/* 020   ----------------------------------------
 */	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
/* 021   ----------------------------------------
 */	.byte		N24   , Fs2 , v120
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
/* 022   ----------------------------------------
 */mus_extra_ending_3_022:
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte	PEND
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_3_022
/* 024   ----------------------------------------
 */	.byte		N12   , En1 , v072
	.byte	W12
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
/* 025   ----------------------------------------
 */	.byte		N24   , Cs2 , v120
	.byte	W96
/* 026   ----------------------------------------
 */	.byte	W96
/* 027   ----------------------------------------
 */	.byte	W96
/* 028   ----------------------------------------
 */	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_extra_ending_4:
	.byte	KEYSH , mus_extra_ending_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 2
	.byte		VOL   , 91*mus_extra_ending_mvl/mxv
	.byte		PAN   , c_v-30
	.byte		MOD   , 2
	.byte	W03
/* 001   ----------------------------------------
 */	.byte		N04   , Dn7 , v072
	.byte	W04
	.byte		        Gn6 
	.byte	W04
	.byte		        Dn7 
	.byte	W04
	.byte		        Gn6 
	.byte	W04
	.byte		        Dn7 
	.byte	W04
	.byte		        Gn6 
	.byte	W04
	.byte		        Dn7 
	.byte	W04
	.byte		        Gn6 
	.byte	W04
	.byte		        Dn7 
	.byte	W04
	.byte		        Gn6 
	.byte	W04
	.byte		        Cs7 
	.byte	W04
	.byte		        Gn6 
	.byte	W04
	.byte		        Cs7 
	.byte	W04
	.byte		        Gn6 
	.byte	W04
	.byte		        Cs7 
	.byte	W04
	.byte		        Gn6 
	.byte	W04
	.byte		        Cs7 
	.byte	W04
	.byte		        Gn6 
	.byte	W04
	.byte		        Cn7 
	.byte	W04
	.byte		        Gn6 
	.byte	W04
	.byte		        Cn7 
	.byte	W04
	.byte		        Gn6 
	.byte	W04
	.byte		        Cn7 
	.byte	W04
	.byte		        Gn6 
	.byte	W04
/* 002   ----------------------------------------
 */	.byte		        Cn7 
	.byte	W04
	.byte		        Gn6 
	.byte	W04
	.byte		        Cn7 
	.byte	W04
	.byte		        Gn6 
	.byte	W04
	.byte		        Bn6 
	.byte	W04
	.byte		        En6 
	.byte	W04
	.byte		        Bn6 
	.byte	W04
	.byte		        En6 
	.byte	W04
	.byte		        Bn6 
	.byte	W04
	.byte		        En6 
	.byte	W04
	.byte		        Bn6 
	.byte	W04
	.byte		        En6 
	.byte	W04
	.byte		        As6 
	.byte	W04
	.byte		        En6 
	.byte	W04
	.byte		        As6 
	.byte	W04
	.byte		        En6 
	.byte	W04
	.byte		        As6 
	.byte	W04
	.byte		        En6 
	.byte	W04
	.byte		        An6 
	.byte	W04
	.byte		        En6 
	.byte	W04
	.byte		        An6 
	.byte	W04
	.byte		        En6 
	.byte	W04
	.byte		        An6 
	.byte	W04
	.byte		        En6 
	.byte	W04
/* 003   ----------------------------------------
 */	.byte		        Gn6 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Gn6 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Gn6 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Gn6 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Gn6 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Fs6 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Fs6 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Fs6 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Fs6 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Fn6 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Fn6 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Fn6 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
/* 004   ----------------------------------------
 */	.byte		        Fn6 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Fn6 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Ds6 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Ds6 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Ds6 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Ds6 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Cs6 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Cs6 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Cs6 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
/* 005   ----------------------------------------
 */	.byte		        Dn5 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Cs6 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Cs6 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Cs6 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Cs6 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Cs6 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Cn6 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Cn6 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Cn6 
	.byte	W04
/* 006   ----------------------------------------
 */	.byte		        Cn5 
	.byte	W04
	.byte		        Cn6 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Bn5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Bn5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Bn5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Bn5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Bn5 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        As5 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        As5 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        As5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        An5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        An5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        An5 
	.byte	W04
/* 007   ----------------------------------------
 */	.byte		        Gn4 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Fn5 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Fn5 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Fn5 
	.byte	W04
/* 008   ----------------------------------------
 */	.byte		        Fn4 
	.byte	W04
	.byte		        Fn5 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
/* 009   ----------------------------------------
 */	.byte		        Dn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
/* 010   ----------------------------------------
 */	.byte		        Cn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        En4 
	.byte	W04
/* 011   ----------------------------------------
 */	.byte		        Gn4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
/* 012   ----------------------------------------
 */	.byte		        Fn4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
/* 013   ----------------------------------------
 */	.byte		N06   , Gn1 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
/* 014   ----------------------------------------
 */	.byte		        As1 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        As2 
	.byte	W06
/* 015   ----------------------------------------
 */	.byte		        Cn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
/* 016   ----------------------------------------
 */	.byte		        Dn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
/* 017   ----------------------------------------
 */	.byte	W96
/* 018   ----------------------------------------
 */	.byte	W96
/* 019   ----------------------------------------
 */	.byte	W96
/* 020   ----------------------------------------
 */	.byte	W96
/* 021   ----------------------------------------
 */mus_extra_ending_4_021:
	.byte		N06   , Bn3 , v080
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte	PEND
/* 022   ----------------------------------------
 */mus_extra_ending_4_022:
	.byte		N06   , Dn4 , v080
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte	PEND
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_4_021
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_4_022
/* 025   ----------------------------------------
 */	.byte		TIE   , Fs4 , v080
	.byte	W24
	.byte		VOL   , 72*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        69*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        68*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        67*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        67*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        65*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        64*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        63*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        63*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        61*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        60*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        59*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        58*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        58*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        56*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        55*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        54*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        52*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        52*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        51*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        50*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        48*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        48*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        47*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        46*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        45*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        43*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        43*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        42*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        41*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        39*mus_extra_ending_mvl/mxv
	.byte	W03
	.byte		        38*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        38*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        37*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        35*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        34*mus_extra_ending_mvl/mxv
	.byte	W03
	.byte		        33*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        33*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        32*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        30*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        29*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        29*mus_extra_ending_mvl/mxv
	.byte	W03
	.byte		        28*mus_extra_ending_mvl/mxv
	.byte	W02
/* 026   ----------------------------------------
 */	.byte		        26*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        25*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        24*mus_extra_ending_mvl/mxv
	.byte	W03
	.byte		        24*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        23*mus_extra_ending_mvl/mxv
	.byte	W04
	.byte		        21*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        20*mus_extra_ending_mvl/mxv
	.byte	W03
	.byte		        19*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        19*mus_extra_ending_mvl/mxv
	.byte	W04
	.byte		        17*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        16*mus_extra_ending_mvl/mxv
	.byte	W04
	.byte		        15*mus_extra_ending_mvl/mxv
	.byte	W04
	.byte		        15*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        13*mus_extra_ending_mvl/mxv
	.byte	W05
	.byte		        12*mus_extra_ending_mvl/mxv
	.byte	W04
	.byte		        11*mus_extra_ending_mvl/mxv
	.byte	W05
	.byte		        10*mus_extra_ending_mvl/mxv
	.byte	W05
	.byte		        10*mus_extra_ending_mvl/mxv
	.byte	W05
	.byte		        8*mus_extra_ending_mvl/mxv
	.byte	W07
	.byte		        7*mus_extra_ending_mvl/mxv
	.byte	W09
	.byte		        6*mus_extra_ending_mvl/mxv
	.byte	W20
	.byte		EOT   
/* 027   ----------------------------------------
 */	.byte	W96
/* 028   ----------------------------------------
 */	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_extra_ending_5:
	.byte	KEYSH , mus_extra_ending_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 12
	.byte		VOL   , 91*mus_extra_ending_mvl/mxv
	.byte		PAN   , c_v+30
	.byte		MOD   , 0
	.byte	W03
/* 001   ----------------------------------------
 */	.byte		N04   , Dn6 , v072
	.byte	W04
	.byte		        Dn7 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Dn7 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Dn7 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Dn7 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Cs7 
	.byte	W04
	.byte		        Cs6 
	.byte	W04
	.byte		        Cs7 
	.byte	W04
	.byte		        Cs6 
	.byte	W04
	.byte		        Cs7 
	.byte	W04
	.byte		        Cs6 
	.byte	W04
	.byte		        Cs7 
	.byte	W04
	.byte		        Cs6 
	.byte	W04
	.byte		        Cs7 
	.byte	W04
	.byte		        Cn6 
	.byte	W04
	.byte		        Cn7 
	.byte	W04
	.byte		        Cn6 
	.byte	W04
	.byte		        Cn7 
	.byte	W04
	.byte		        Cn6 
	.byte	W04
	.byte		        Cn7 
	.byte	W04
/* 002   ----------------------------------------
 */	.byte		        Cn6 
	.byte	W04
	.byte		        Cn7 
	.byte	W04
	.byte		        Cn6 
	.byte	W04
	.byte		        Bn6 
	.byte	W04
	.byte		        Bn5 
	.byte	W04
	.byte		        Bn6 
	.byte	W04
	.byte		        Bn5 
	.byte	W04
	.byte		        Bn6 
	.byte	W04
	.byte		        Bn5 
	.byte	W04
	.byte		        Bn6 
	.byte	W04
	.byte		        Bn5 
	.byte	W04
	.byte		        Bn6 
	.byte	W04
	.byte		        As5 
	.byte	W04
	.byte		        As6 
	.byte	W04
	.byte		        As5 
	.byte	W04
	.byte		        As6 
	.byte	W04
	.byte		        As5 
	.byte	W04
	.byte		        As6 
	.byte	W04
	.byte		        An5 
	.byte	W04
	.byte		        An6 
	.byte	W04
	.byte		        An5 
	.byte	W04
	.byte		        An6 
	.byte	W04
	.byte		        An5 
	.byte	W04
	.byte		        An6 
	.byte	W04
/* 003   ----------------------------------------
 */	.byte		        Gn5 
	.byte	W04
	.byte		        Gn6 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Gn6 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Gn6 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Gn6 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Fs6 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Fs6 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Fs6 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Fs6 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Fs6 
	.byte	W04
	.byte		        Fn5 
	.byte	W04
	.byte		        Fn6 
	.byte	W04
	.byte		        Fn5 
	.byte	W04
	.byte		        Fn6 
	.byte	W04
	.byte		        Fn5 
	.byte	W04
	.byte		        Fn6 
	.byte	W04
/* 004   ----------------------------------------
 */	.byte		        Fn5 
	.byte	W04
	.byte		        Fn6 
	.byte	W04
	.byte		        Fn5 
	.byte	W04
	.byte		        Ds6 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Ds6 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Ds6 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Ds6 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Ds6 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Cs6 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Cs6 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Cs6 
	.byte	W04
/* 005   ----------------------------------------
 */	.byte		        Dn6 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Cs6 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Cs6 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Cs6 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Cs6 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Cn6 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Cn6 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Cn6 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
/* 006   ----------------------------------------
 */	.byte		        Cn6 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Cn6 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Bn5 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Bn5 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Bn5 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Bn5 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        As5 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        As5 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        As5 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        An5 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        An5 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        An5 
	.byte	W04
	.byte		        En5 
	.byte	W04
/* 007   ----------------------------------------
 */	.byte		        Gn5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Fn5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Fn5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Fn5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
/* 008   ----------------------------------------
 */	.byte		        Fn5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Fn5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
/* 009   ----------------------------------------
 */	.byte		        Dn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
/* 010   ----------------------------------------
 */	.byte		        Cn4 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        An4 
	.byte	W04
/* 011   ----------------------------------------
 */	.byte		        Gn3 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
/* 012   ----------------------------------------
 */	.byte		        Fn3 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Cs3 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Cs3 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Cs3 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
/* 013   ----------------------------------------
 */	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
/* 014   ----------------------------------------
 */	.byte		        As2 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        As3 
	.byte	W06
/* 015   ----------------------------------------
 */	.byte		        Cn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
/* 016   ----------------------------------------
 */	.byte		        Dn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
/* 017   ----------------------------------------
 */	.byte	W96
/* 018   ----------------------------------------
 */	.byte	W96
/* 019   ----------------------------------------
 */	.byte	W96
/* 020   ----------------------------------------
 */	.byte	W96
/* 021   ----------------------------------------
 */mus_extra_ending_5_021:
	.byte		N06   , Bn2 , v080
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte	PEND
/* 022   ----------------------------------------
 */mus_extra_ending_5_022:
	.byte		N06   , Dn3 , v080
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte	PEND
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_5_021
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_5_022
/* 025   ----------------------------------------
 */	.byte		TIE   , An3 , v080
	.byte	W24
	.byte		VOL   , 72*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        69*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        68*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        67*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        67*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        65*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        64*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        63*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        63*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        61*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        60*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        59*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        58*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        58*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        56*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        55*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        54*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        52*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        52*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        51*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        50*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        48*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        48*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        47*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        46*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        45*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        43*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        43*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        42*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        41*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        39*mus_extra_ending_mvl/mxv
	.byte	W03
	.byte		        38*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        38*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        37*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        35*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        34*mus_extra_ending_mvl/mxv
	.byte	W03
	.byte		        33*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        33*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        32*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        30*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        29*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        29*mus_extra_ending_mvl/mxv
	.byte	W03
	.byte		        28*mus_extra_ending_mvl/mxv
	.byte	W02
/* 026   ----------------------------------------
 */	.byte		        26*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        25*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        24*mus_extra_ending_mvl/mxv
	.byte	W03
	.byte		        24*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        23*mus_extra_ending_mvl/mxv
	.byte	W04
	.byte		        21*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        20*mus_extra_ending_mvl/mxv
	.byte	W03
	.byte		        19*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        19*mus_extra_ending_mvl/mxv
	.byte	W04
	.byte		        17*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        16*mus_extra_ending_mvl/mxv
	.byte	W04
	.byte		        15*mus_extra_ending_mvl/mxv
	.byte	W04
	.byte		        15*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        13*mus_extra_ending_mvl/mxv
	.byte	W05
	.byte		        12*mus_extra_ending_mvl/mxv
	.byte	W04
	.byte		        11*mus_extra_ending_mvl/mxv
	.byte	W05
	.byte		        10*mus_extra_ending_mvl/mxv
	.byte	W05
	.byte		        10*mus_extra_ending_mvl/mxv
	.byte	W05
	.byte		        8*mus_extra_ending_mvl/mxv
	.byte	W07
	.byte		        7*mus_extra_ending_mvl/mxv
	.byte	W09
	.byte		        6*mus_extra_ending_mvl/mxv
	.byte	W20
	.byte		EOT   
/* 027   ----------------------------------------
 */	.byte	W96
/* 028   ----------------------------------------
 */	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_extra_ending_6:
	.byte	KEYSH , mus_extra_ending_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 96
	.byte		PAN   , c_v+0
	.byte		VOL   , 122*mus_extra_ending_mvl/mxv
	.byte	W03
/* 001   ----------------------------------------
 */mus_extra_ending_6_001:
	.byte		N18   , Gn2 , v127
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N18   , As2 
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N12   
	.byte	W06
	.byte		N18   , Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte	PEND
/* 002   ----------------------------------------
 */mus_extra_ending_6_002:
	.byte		N18   , An2 , v127
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W06
	.byte		N18   , Cn3 
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte		N12   
	.byte	W06
	.byte		N18   , Ds3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte	PEND
/* 003   ----------------------------------------
 */mus_extra_ending_6_003:
	.byte		N18   , As2 , v127
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N12   , Ds3 
	.byte	W06
	.byte		N18   , Dn3 
	.byte	W12
	.byte		N12   , As2 
	.byte	W12
	.byte		N12   
	.byte	W06
	.byte		N18   , Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte	PEND
/* 004   ----------------------------------------
 */mus_extra_ending_6_004:
	.byte		N18   , Cn3 , v127
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N18   , Ds3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N18   , As2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte	PEND
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_6_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_6_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_6_003
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_6_004
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_6_001
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_6_002
/* 011   ----------------------------------------
 */	.byte		N18   , As2 , v127
	.byte	W96
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
 */mus_extra_ending_6_017:
	.byte		N36   , An3 , v112
	.byte	W36
	.byte		        As3 
	.byte	W36
	.byte		        Cn4 
	.byte	W24
	.byte	PEND
/* 018   ----------------------------------------
 */mus_extra_ending_6_018:
	.byte	W12
	.byte		N36   , Fs3 , v112
	.byte	W36
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte	PEND
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_6_017
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_6_018
/* 021   ----------------------------------------
 */mus_extra_ending_6_021:
	.byte		N36   , Bn3 , v112
	.byte	W36
	.byte		        Cn4 
	.byte	W36
	.byte		        Dn4 
	.byte	W24
	.byte	PEND
/* 022   ----------------------------------------
 */	.byte	W12
	.byte		        Gs3 
	.byte	W36
	.byte		N24   , An3 
	.byte	W24
	.byte		        As3 
	.byte	W24
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_6_021
/* 024   ----------------------------------------
 */	.byte	W12
	.byte		N36   , Dn4 , v112
	.byte	W36
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
/* 025   ----------------------------------------
 */	.byte		N96   , Ds4 
	.byte	W96
/* 026   ----------------------------------------
 */	.byte	W96
/* 027   ----------------------------------------
 */	.byte	W96
/* 028   ----------------------------------------
 */	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_extra_ending_7:
	.byte	KEYSH , mus_extra_ending_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 117
	.byte		VOL   , 122*mus_extra_ending_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	PRIO  , 15
	.byte	W03
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
 */mus_extra_ending_7_017:
	.byte		N36   , An2 , v112
	.byte	W36
	.byte		        As2 
	.byte	W36
	.byte		        Cn3 
	.byte	W24
	.byte	PEND
/* 018   ----------------------------------------
 */mus_extra_ending_7_018:
	.byte	W12
	.byte		N36   , Fs2 , v112
	.byte	W36
	.byte		N24   , Gn2 
	.byte	W24
	.byte		        Gs2 
	.byte	W24
	.byte	PEND
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_7_017
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_7_018
/* 021   ----------------------------------------
 */mus_extra_ending_7_021:
	.byte		N36   , Bn2 , v112
	.byte	W36
	.byte		        Cn3 
	.byte	W36
	.byte		        Dn3 
	.byte	W24
	.byte	PEND
/* 022   ----------------------------------------
 */	.byte	W12
	.byte		        Gs2 
	.byte	W36
	.byte		N24   , An2 
	.byte	W24
	.byte		        As2 
	.byte	W24
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_7_021
/* 024   ----------------------------------------
 */	.byte	W12
	.byte		N36   , Dn3 , v112
	.byte	W36
	.byte		N24   , Cs3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
/* 025   ----------------------------------------
 */	.byte		N96   , Ds3 
	.byte	W96
/* 026   ----------------------------------------
 */	.byte	W96
/* 027   ----------------------------------------
 */	.byte	W96
/* 028   ----------------------------------------
 */	.byte	FINE

/* **************** Track 8 (Midi-Chn.8) **************** */

mus_extra_ending_8:
	.byte	KEYSH , mus_extra_ending_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 89
	.byte		VOL   , 122*mus_extra_ending_mvl/mxv
	.byte		BENDR , 12
	.byte	W03
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte		PAN   , c_v+30
	.byte	W96
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
 */	.byte	W11
	.byte		        c_v-30
	.byte	W01
	.byte		N12   , As3 , v100
	.byte	W23
	.byte		PAN   , c_v+30
	.byte	W01
	.byte		N24   , Cs4 
	.byte	W23
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		N12   , Cn4 
	.byte	W11
	.byte		PAN   , c_v+30
	.byte	W01
	.byte		N12   , Gs3 
	.byte	W11
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		N12   , Fn3 
	.byte	W12
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
/* 028   ----------------------------------------
 */	.byte	FINE

/* **************** Track 9 (Midi-Chn.9) **************** */

mus_extra_ending_9:
	.byte	KEYSH , mus_extra_ending_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 106
	.byte		VOL   , 81*mus_extra_ending_mvl/mxv
	.byte		PAN   , c_v-30
	.byte	W03
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
 */mus_extra_ending_9_007:
	.byte		N36   , Dn4 , v100
	.byte	W36
	.byte		        Cs4 
	.byte	W36
	.byte		        Cn4 
	.byte	W24
	.byte	PEND
/* 008   ----------------------------------------
 */mus_extra_ending_9_008:
	.byte	W12
	.byte		N36   , Bn3 , v100
	.byte	W36
	.byte		N24   , As3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte	PEND
/* 009   ----------------------------------------
 */	.byte		N36   , Gn3 
	.byte	W36
	.byte		        Fs3 
	.byte	W36
	.byte		        Fn3 
	.byte	W24
/* 010   ----------------------------------------
 */	.byte	W12
	.byte		        En4 
	.byte	W36
	.byte		N24   , Ds4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_9_007
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_9_008
/* 013   ----------------------------------------
 */	.byte	W60
	.byte		N24   , Gn2 , v120
	.byte	W24
	.byte		N12   , Gn2 , v112
	.byte	W12
/* 014   ----------------------------------------
 */	.byte		        As2 , v120
	.byte	W60
	.byte		N24   
	.byte	W24
	.byte		N12   , As2 , v112
	.byte	W12
/* 015   ----------------------------------------
 */	.byte		        Cn3 , v120
	.byte	W60
	.byte		N24   
	.byte	W24
	.byte		N12   , Cn3 , v112
	.byte	W12
/* 016   ----------------------------------------
 */	.byte		        Dn3 , v120
	.byte	W96
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
/* 028   ----------------------------------------
 */	.byte	FINE

/* **************** Track 10 (Midi-Chn.10) **************** */

mus_extra_ending_10:
	.byte	KEYSH , mus_extra_ending_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 106
	.byte		VOL   , 81*mus_extra_ending_mvl/mxv
	.byte		PAN   , c_v+30
	.byte		MOD   , 0
	.byte	W03
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */mus_extra_ending_10_005:
	.byte		N36   , Dn4 , v100
	.byte	W36
	.byte		        Cs4 
	.byte	W36
	.byte		        Cn4 
	.byte	W24
	.byte	PEND
/* 006   ----------------------------------------
 */mus_extra_ending_10_006:
	.byte	W12
	.byte		N36   , Bn3 , v100
	.byte	W36
	.byte		N24   , As3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte	PEND
/* 007   ----------------------------------------
 */mus_extra_ending_10_007:
	.byte		N36   , Gn3 , v100
	.byte	W36
	.byte		        Fs3 
	.byte	W36
	.byte		        Fn3 
	.byte	W24
	.byte	PEND
/* 008   ----------------------------------------
 */mus_extra_ending_10_008:
	.byte	W12
	.byte		N36   , Ds3 , v100
	.byte	W36
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte	PEND
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_10_005
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_10_006
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_10_007
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_ending_10_008
/* 013   ----------------------------------------
 */	.byte	W60
	.byte		N24   , Dn3 , v120
	.byte	W24
	.byte		N12   , Dn3 , v112
	.byte	W12
/* 014   ----------------------------------------
 */	.byte		        Fn3 , v120
	.byte	W60
	.byte		N24   , As3 
	.byte	W24
	.byte		N12   , As3 , v112
	.byte	W12
/* 015   ----------------------------------------
 */	.byte		        Cn4 , v120
	.byte	W60
	.byte		N24   
	.byte	W24
	.byte		N12   , Cn4 , v112
	.byte	W12
/* 016   ----------------------------------------
 */	.byte		        An3 , v120
	.byte	W96
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
/* 028   ----------------------------------------
 */	.byte	FINE

/* **************** Track 11 (Midi-Chn.11) **************** */

mus_extra_ending_11:
	.byte	KEYSH , mus_extra_ending_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 103
	.byte		VOL   , 107*mus_extra_ending_mvl/mxv
	.byte		BENDR , 3
	.byte		PAN   , c_v+0
	.byte	W03
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
 */	.byte		N06   , Cn3 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W01
	.byte		BEND  , c_v+21
	.byte	W01
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+63
	.byte	W06
	.byte		        c_v+62
	.byte	W01
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+0
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W01
	.byte		BEND  , c_v+21
	.byte	W01
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+63
	.byte	W06
	.byte		        c_v+62
	.byte	W01
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+0
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N12   , Cn3 
	.byte	W01
	.byte		BEND  , c_v+21
	.byte	W01
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+63
	.byte	W06
	.byte		        c_v+62
	.byte	W01
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+0
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
/* 012   ----------------------------------------
 */	.byte		        Cn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		BEND  , c_v-64
	.byte		N24   , Gn3 
	.byte	W01
	.byte		BEND  , c_v-43
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v+0
	.byte	W21
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N12   , Cn3 
	.byte	W01
	.byte		BEND  , c_v+21
	.byte	W01
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+63
	.byte	W06
	.byte		        c_v+62
	.byte	W01
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+0
	.byte		N06   
	.byte	W06
	.byte		N05   , As2 
	.byte	W05
	.byte		BEND  , c_v-64
	.byte	W01
/* 013   ----------------------------------------
 */	.byte		TIE   , Gn3 
	.byte	W01
	.byte		BEND  , c_v-54
	.byte	W01
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v+0
	.byte	W90
/* 014   ----------------------------------------
 */	.byte	W60
	.byte		EOT   
	.byte		BEND  , c_v+0
	.byte		N28   
	.byte	W01
	.byte		BEND  , c_v+21
	.byte	W01
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+63
	.byte	W18
	.byte		        c_v+63
	.byte	W01
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+0
	.byte	W05
	.byte		        c_v-64
	.byte	W01
	.byte		N24   , Cn4 
	.byte	W01
	.byte		BEND  , c_v-54
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-13
	.byte	W01
/* 015   ----------------------------------------
 */	.byte		        c_v+0
	.byte	W18
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N12   , As3 
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+13
	.byte	W01
	.byte		        c_v+27
	.byte	W01
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N06   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N12   , As3 
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+13
	.byte	W01
	.byte		        c_v+27
	.byte	W01
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N06   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
/* 016   ----------------------------------------
 */	.byte		N12   , As3 
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+13
	.byte	W01
	.byte		        c_v+27
	.byte	W01
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N06   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N12   , Fn3 
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-44
	.byte	W05
	.byte		        c_v+0
	.byte	W01
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N12   , Ds3 
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-64
	.byte	W05
	.byte		        c_v+0
	.byte	W01
	.byte		N06   , As2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N12   , Cn3 
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-44
	.byte	W05
	.byte		        c_v+0
	.byte	W01
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
/* 017   ----------------------------------------
 */	.byte		BEND  , c_v-48
	.byte		N36   , Dn3 , v092
	.byte	W01
	.byte		BEND  , c_v-37
	.byte	W02
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-13
	.byte	W02
	.byte		        c_v+0
	.byte	W30
	.byte		N36   , Ds3 , v080
	.byte	W36
	.byte		        Fn3 , v084
	.byte	W24
/* 018   ----------------------------------------
 */	.byte	W12
	.byte		        Bn2 
	.byte	W36
	.byte		N24   , Cn3 
	.byte	W24
	.byte		        Cs3 
	.byte	W24
/* 019   ----------------------------------------
 */	.byte		BEND  , c_v-48
	.byte		N36   , Dn3 
	.byte	W01
	.byte		BEND  , c_v-37
	.byte	W02
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-13
	.byte	W02
	.byte		        c_v+0
	.byte	W30
	.byte		N36   , Ds3 
	.byte	W36
	.byte		        Fn3 
	.byte	W24
/* 020   ----------------------------------------
 */	.byte	W12
	.byte		        Bn2 , v088
	.byte	W36
	.byte		N24   , Cn3 
	.byte	W24
	.byte		        Cs3 
	.byte	W24
/* 021   ----------------------------------------
 */	.byte		BEND  , c_v-48
	.byte		N36   , En3 
	.byte	W01
	.byte		BEND  , c_v-37
	.byte	W02
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-13
	.byte	W02
	.byte		        c_v+0
	.byte	W30
	.byte		N36   , Fn3 
	.byte	W36
	.byte		        Gn3 
	.byte	W24
/* 022   ----------------------------------------
 */	.byte	W12
	.byte		        Cs3 
	.byte	W36
	.byte		N24   , Dn3 , v092
	.byte	W24
	.byte		        Ds3 
	.byte	W24
/* 023   ----------------------------------------
 */	.byte		BEND  , c_v-48
	.byte		N36   , En3 
	.byte	W01
	.byte		BEND  , c_v-37
	.byte	W02
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-13
	.byte	W02
	.byte		        c_v+0
	.byte	W30
	.byte		N36   , Fn3 
	.byte	W36
	.byte		        Gn3 
	.byte	W24
/* 024   ----------------------------------------
 */	.byte	W12
	.byte		N36   
	.byte	W36
	.byte		N24   , Fs3 
	.byte	W24
	.byte		        Gn3 , v096
	.byte	W24
/* 025   ----------------------------------------
 */	.byte		BEND  , c_v-48
	.byte		TIE   , Gs3 
	.byte	W01
	.byte		BEND  , c_v-37
	.byte	W02
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-13
	.byte	W02
	.byte		        c_v+0
	.byte	W12
	.byte		VOL   , 105*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        104*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        103*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        100*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        100*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        98*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        96*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        95*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        94*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        93*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        91*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        90*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        87*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        86*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        86*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        83*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        82*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        81*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        81*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        78*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        77*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        77*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        76*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        73*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        72*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        72*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        70*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        68*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        67*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        67*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        65*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        64*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        63*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        61*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        60*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        59*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        58*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        58*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        56*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        55*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        54*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        52*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        52*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        51*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        50*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        48*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        48*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        47*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        46*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        45*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        43*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        43*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        42*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        41*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        39*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        38*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        38*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        37*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        35*mus_extra_ending_mvl/mxv
	.byte	W03
	.byte		        34*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        33*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        33*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        32*mus_extra_ending_mvl/mxv
	.byte	W01
/* 026   ----------------------------------------
 */	.byte	W01
	.byte		        30*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        29*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        29*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        28*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        26*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        25*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        24*mus_extra_ending_mvl/mxv
	.byte	W03
	.byte		        24*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        23*mus_extra_ending_mvl/mxv
	.byte	W03
	.byte		        21*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        20*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        19*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        19*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        17*mus_extra_ending_mvl/mxv
	.byte	W01
	.byte		        16*mus_extra_ending_mvl/mxv
	.byte	W03
	.byte		        15*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        15*mus_extra_ending_mvl/mxv
	.byte	W03
	.byte		        13*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        12*mus_extra_ending_mvl/mxv
	.byte	W03
	.byte		        11*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        10*mus_extra_ending_mvl/mxv
	.byte	W03
	.byte		        10*mus_extra_ending_mvl/mxv
	.byte	W02
	.byte		        8*mus_extra_ending_mvl/mxv
	.byte	W03
	.byte		        7*mus_extra_ending_mvl/mxv
	.byte	W03
	.byte		        6*mus_extra_ending_mvl/mxv
	.byte	W04
	.byte		        4*mus_extra_ending_mvl/mxv
	.byte	W04
	.byte		        4*mus_extra_ending_mvl/mxv
	.byte	W03
	.byte		        3*mus_extra_ending_mvl/mxv
	.byte	W04
	.byte		        2*mus_extra_ending_mvl/mxv
	.byte	W06
	.byte		        0*mus_extra_ending_mvl/mxv
	.byte	W08
	.byte		        0*mus_extra_ending_mvl/mxv
	.byte	W16
	.byte		EOT   
/* 027   ----------------------------------------
 */	.byte	W96
/* 028   ----------------------------------------
 */	.byte	FINE

/* **************** Track 12 (Midi-Chn.12) **************** */

mus_extra_ending_12:
	.byte	KEYSH , mus_extra_ending_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 59
	.byte		VOL   , 127*mus_extra_ending_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
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
 */	.byte		N03   , Ds3 , v127
	.byte	W03
	.byte		N24   , En3 
	.byte	W92
	.byte	W01
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
 */	.byte	W54
	.byte		N48   , Fn2 , v080
	.byte	W42
/* 027   ----------------------------------------
 */	.byte	W96
/* 028   ----------------------------------------
 */	.byte	FINE

/* **************** Track 13 (Midi-Chn.13) **************** */

mus_extra_ending_13:
	.byte	KEYSH , mus_extra_ending_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 83
	.byte		VOL   , 112*mus_extra_ending_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
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
 */	.byte	W54
	.byte		N48   , An2 , v100
	.byte	W42
/* 027   ----------------------------------------
 */	.byte	W96
/* 028   ----------------------------------------
 */	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_extra_ending):
	.byte	13	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_extra_ending_pri	/* Priority */
	.byte	mus_extra_ending_rev	/* Reverb */

mAlignWord
	mPtr	mus_extra_ending_grp

	mPtr	mus_extra_ending_1
	mPtr	mus_extra_ending_2
	mPtr	mus_extra_ending_3
	mPtr	mus_extra_ending_4
	mPtr	mus_extra_ending_5
	mPtr	mus_extra_ending_6
	mPtr	mus_extra_ending_7
	mPtr	mus_extra_ending_8
	mPtr	mus_extra_ending_9
	mPtr	mus_extra_ending_10
	mPtr	mus_extra_ending_11
	mPtr	mus_extra_ending_12
	mPtr	mus_extra_ending_13

	.end
