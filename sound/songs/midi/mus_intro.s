	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_intro_grp, voicegroup021
	.equ	mus_intro_pri, 0
	.equ	mus_intro_rev, reverb_set+0
	.equ	mus_intro_mvl, 120
	.equ	mus_intro_key, 0
	.equ	mus_intro_tbs, 1
	.equ	mus_intro_exg, 1
	.equ	mus_intro_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_intro)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_intro_1:
	.byte	KEYSH , mus_intro_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 130*mus_intro_tbs/2
	.byte	W72
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_intro_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte	W24
/* 001   ----------------------------------------
 */	.byte		N06   , Ds2 , v127
	.byte	W48
	.byte		N06   
	.byte	W24
	.byte		        Dn1 , v056
	.byte	W06
	.byte		        Ds1 , v044
	.byte	W06
	.byte		N12   , En1 , v060
	.byte	W12
/* 002   ----------------------------------------
 */mus_intro_1_002:
	.byte		N06   , Dn1 , v056
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Ds1 , v044
	.byte	W06
	.byte		N12   , En1 , v060
	.byte	W12
	.byte		N06   , Dn1 , v056
	.byte	W06
	.byte		        Ds1 , v044
	.byte	W06
	.byte		N12   , En1 , v060
	.byte	W12
	.byte		N06   , Dn1 , v056
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Ds1 , v044
	.byte	W06
	.byte		N12   , En1 , v060
	.byte	W12
	.byte		N06   , Dn1 , v056
	.byte	W06
	.byte		        Ds1 , v044
	.byte	W06
	.byte		N12   , En1 , v060
	.byte	W12
	.byte	PEND
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_intro_1_002
/* 004   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_intro_1_002
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_intro_1_002
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_intro_1_002
/* 007   ----------------------------------------
 */	.byte		N06   , Dn1 , v056
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Ds1 , v044
	.byte	W06
	.byte		N12   , En1 , v060
	.byte	W12
	.byte		N06   , Dn1 , v056
	.byte	W06
	.byte		N02   , Cs1 , v127
	.byte		N06   , Ds1 , v044
	.byte	W03
	.byte		N02   , Cs1 , v127
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs1 
	.byte		N06   , Ds1 , v044
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W06
	.byte		        Cn1 
	.byte		N12   , En1 , v044
	.byte		N48   , Cs2 , v127
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		        Cn1 
	.byte		N04   , Dn1 , v060
	.byte	W06
/* 008   ----------------------------------------
 */	.byte	W06
	.byte		N06   , Gs1 , v127
	.byte	W06
	.byte		        Cn1 
	.byte		N12   , En1 , v044
	.byte	W12
	.byte		N06   , Cs1 , v127
	.byte	W12
	.byte		        Cn1 
	.byte		N12   , En1 , v044
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte		N06   , Dn1 , v052
	.byte	W06
	.byte		N03   , Cs1 , v127
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N06   , Cs1 , v052
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v052
	.byte		N06   , An1 , v088
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
/* 009   ----------------------------------------
 */	.byte		N06   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W06
	.byte		        Cn1 
	.byte		N12   , En1 , v044
	.byte	W12
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte		N12   , En1 , v044
	.byte		N06   , Gs1 , v127
	.byte	W12
	.byte		        Cs1 
	.byte	W06
	.byte		        Cn1 
	.byte		N12   , En1 , v044
	.byte	W06
/* 010   ----------------------------------------
 */	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Dn1 , v052
	.byte		N30   , Cs2 , v127
	.byte	W24
	.byte		N06   , Dn1 , v052
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , En1 , v044
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cs1 , v127
	.byte		N06   , En1 , v044
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , Dn1 , v044
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N12   , Dn1 , v060
	.byte	W06
	.byte		N06   , Gs1 , v127
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        En1 , v036
	.byte		N06   , Fs1 , v127
	.byte	W06
/* 011   ----------------------------------------
 */	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Cn1 
	.byte		N78   , Cs2 
	.byte	W01
	.byte		N11   , En1 , v076
	.byte	W76
	.byte	W01
	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_intro_2:
	.byte	KEYSH , mus_intro_key+0
/* 000   ----------------------------------------
 */	.byte	W72
	.byte		VOICE , 0
	.byte		VOL   , 60*mus_intro_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 13
	.byte		LFOS  , 18
	.byte		LFODL , 20
	.byte		MOD   , 3
	.byte		MODT  , 0
	.byte		BEND  , c_v+0
	.byte		N06   , Fn2 , v084
	.byte	W06
	.byte		        Fn3 , v072
	.byte	W06
	.byte		        Fn4 , v088
	.byte	W06
	.byte		        Fn3 , v072
	.byte	W06
/* 001   ----------------------------------------
 */mus_intro_2_001:
	.byte		N06   , Fn5 , v072
	.byte	W06
	.byte		        Fn4 , v084
	.byte	W06
	.byte		        Fn3 , v080
	.byte	W06
	.byte		        Fn4 , v096
	.byte	W06
	.byte		        Fn2 , v084
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn4 , v076
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Fn4 , v084
	.byte	W06
	.byte		        Fn3 , v080
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Fn2 , v084
	.byte	W06
	.byte		        Fn3 , v072
	.byte	W06
	.byte		        Fn4 , v088
	.byte	W06
	.byte		        Fn3 , v072
	.byte	W06
	.byte	PEND
/* 002   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_intro_2_001
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_intro_2_001
/* 004   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_intro_2_001
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_intro_2_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_intro_2_001
/* 007   ----------------------------------------
 */	.byte		N06   , Fn5 , v072
	.byte	W06
	.byte		        Fn4 , v084
	.byte	W06
	.byte		        Fn3 , v080
	.byte	W06
	.byte		        Fn4 , v096
	.byte	W06
	.byte		        Fn2 , v084
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn4 , v076
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Fn4 , v084
	.byte	W06
	.byte		        Fn3 , v080
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N05   , Fn2 , v127
	.byte	W18
	.byte		        Cn3 
	.byte	W06
/* 008   ----------------------------------------
 */	.byte	W12
	.byte		        Ds2 
	.byte	W24
	.byte		N92   , Cn3 
	.byte	W60
/* 009   ----------------------------------------
 */	.byte	W36
	.byte		N06   , Gn2 , v076
	.byte	W06
	.byte		        Gs2 , v088
	.byte	W05
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		N06   , Cn3 , v092
	.byte	W06
	.byte		N18   , Gn3 
	.byte	W07
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v+0
	.byte	W03
	.byte		N14   , Fn2 , v116
	.byte	W17
	.byte		N05   , Cn3 , v096
	.byte	W07
/* 010   ----------------------------------------
 */	.byte	W10
	.byte		N48   , Fn2 , v104
	.byte	W60
	.byte	W02
	.byte		N06   , Cn3 
	.byte	W17
	.byte		N13   , Cn3 , v127
	.byte	W07
/* 011   ----------------------------------------
 */	.byte	W10
	.byte		N19   , Cn3 , v116
	.byte	W19
	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_intro_3:
	.byte	KEYSH , mus_intro_key+0
/* 000   ----------------------------------------
 */	.byte	W72
	.byte		VOICE , 2
	.byte		VOL   , 90*mus_intro_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 56
	.byte		LFODL , 0
	.byte		MOD   , 2
	.byte		MODT  , 2
	.byte	W24
/* 001   ----------------------------------------
 */	.byte	W72
	.byte		VOL   , 54*mus_intro_mvl/mxv
	.byte		N76   , An2 , v116
	.byte		N76   , Cn3 
	.byte		N76   , Fn3 
	.byte	W18
	.byte		VOL   , 54*mus_intro_mvl/mxv
	.byte	W06
/* 002   ----------------------------------------
 */	.byte	W04
	.byte		        56*mus_intro_mvl/mxv
	.byte	W09
	.byte		        57*mus_intro_mvl/mxv
	.byte	W10
	.byte		        58*mus_intro_mvl/mxv
	.byte	W09
	.byte		        59*mus_intro_mvl/mxv
	.byte	W09
	.byte		        60*mus_intro_mvl/mxv
	.byte	W10
	.byte		        61*mus_intro_mvl/mxv
	.byte	W09
	.byte		        62*mus_intro_mvl/mxv
	.byte		N05   , An2 , v104
	.byte		N05   , Cn3 
	.byte		N05   , Fn3 
	.byte	W06
	.byte		N04   , An2 , v100
	.byte		N04   , Cn3 
	.byte		N04   , Fn3 
	.byte	W04
	.byte		VOL   , 63*mus_intro_mvl/mxv
	.byte	W02
	.byte		N72   , Gn2 , v112
	.byte		N72   , As2 
	.byte		N72   , Ds3 
	.byte	W07
	.byte		VOL   , 64*mus_intro_mvl/mxv
	.byte	W10
	.byte		        65*mus_intro_mvl/mxv
	.byte	W07
/* 003   ----------------------------------------
 */	.byte	W02
	.byte		        66*mus_intro_mvl/mxv
	.byte	W09
	.byte		        67*mus_intro_mvl/mxv
	.byte	W10
	.byte		        68*mus_intro_mvl/mxv
	.byte	W09
	.byte		        69*mus_intro_mvl/mxv
	.byte	W10
	.byte		        70*mus_intro_mvl/mxv
	.byte	W09
	.byte		        71*mus_intro_mvl/mxv
	.byte	W10
	.byte		        72*mus_intro_mvl/mxv
	.byte	W01
	.byte		N05   , Gn2 
	.byte		N05   , As2 
	.byte		N05   , Ds3 
	.byte	W06
	.byte		N06   , Gn2 , v076
	.byte		N06   , As2 
	.byte		N06   , Ds3 
	.byte	W02
	.byte		VOL   , 72*mus_intro_mvl/mxv
	.byte	W04
	.byte		N78   , An2 , v104
	.byte		N78   , Cn3 
	.byte		N78   , Fn3 
	.byte	W05
	.byte		VOL   , 74*mus_intro_mvl/mxv
	.byte	W10
	.byte		        75*mus_intro_mvl/mxv
	.byte	W09
/* 004   ----------------------------------------
 */	.byte		        76*mus_intro_mvl/mxv
	.byte	W10
	.byte		        77*mus_intro_mvl/mxv
	.byte	W09
	.byte		        78*mus_intro_mvl/mxv
	.byte	W10
	.byte		        79*mus_intro_mvl/mxv
	.byte	W09
	.byte		        80*mus_intro_mvl/mxv
	.byte	W09
	.byte		        81*mus_intro_mvl/mxv
	.byte	W09
	.byte		N03   , Gn2 , v108
	.byte		N03   , As2 
	.byte		N03   , Ds3 
	.byte	W01
	.byte		VOL   , 82*mus_intro_mvl/mxv
	.byte	W07
	.byte		N03   , An2 
	.byte		N03   , Cn3 
	.byte		N03   , Fn3 
	.byte	W02
	.byte		VOL   , 83*mus_intro_mvl/mxv
	.byte	W06
	.byte		N76   , As2 , v112
	.byte		N76   , Ds3 
	.byte		N76   , Gn3 
	.byte	W04
	.byte		VOL   , 84*mus_intro_mvl/mxv
	.byte	W09
	.byte		        85*mus_intro_mvl/mxv
	.byte	W10
	.byte		        86*mus_intro_mvl/mxv
	.byte	W01
/* 005   ----------------------------------------
 */	.byte	W08
	.byte		        87*mus_intro_mvl/mxv
	.byte	W09
	.byte		        88*mus_intro_mvl/mxv
	.byte	W10
	.byte		        89*mus_intro_mvl/mxv
	.byte	W09
	.byte		        90*mus_intro_mvl/mxv
	.byte	W10
	.byte		        90*mus_intro_mvl/mxv
	.byte	W09
	.byte		        92*mus_intro_mvl/mxv
	.byte	W05
	.byte		N04   , An2 , v088
	.byte		N04   , Cn3 
	.byte		N04   , Fn3 
	.byte	W05
	.byte		VOL   , 93*mus_intro_mvl/mxv
	.byte	W01
	.byte		N05   , As2 , v112
	.byte		N05   , Ds3 
	.byte		N05   , Gn3 
	.byte	W06
	.byte		N78   , Cn3 , v116
	.byte		N78   , Fn3 
	.byte		N78   , An3 
	.byte	W02
	.byte		VOL   , 94*mus_intro_mvl/mxv
	.byte	W09
	.byte		        95*mus_intro_mvl/mxv
	.byte	W10
	.byte		        96*mus_intro_mvl/mxv
	.byte	W03
/* 006   ----------------------------------------
 */	.byte	W06
	.byte		        97*mus_intro_mvl/mxv
	.byte	W10
	.byte		        98*mus_intro_mvl/mxv
	.byte	W09
	.byte		        99*mus_intro_mvl/mxv
	.byte	W01
	.byte		        100*mus_intro_mvl/mxv
	.byte	W32
	.byte	W02
	.byte		N04   , As2 , v092
	.byte		N04   , Ds3 
	.byte		N04   , Gn3 
	.byte	W06
	.byte		        Cn3 , v108
	.byte		N04   , Fn3 
	.byte		N04   , An3 
	.byte	W06
	.byte		N32   , Ds3 , v124
	.byte		N32   , Gn3 
	.byte		N32   , As3 
	.byte	W24
/* 007   ----------------------------------------
 */	.byte	W12
	.byte		N04   , Cn3 , v084
	.byte		N04   , Fn3 
	.byte		N04   , An3 
	.byte	W06
	.byte		N05   , Ds3 , v116
	.byte		N05   , Gn3 
	.byte		N05   , As3 
	.byte	W06
	.byte		N44   , Fn3 
	.byte		N44   , An3 
	.byte		N44   , Cn4 
	.byte	W48
	.byte		VOL   , 90*mus_intro_mvl/mxv
	.byte		N12   , An3 
	.byte	W18
	.byte		N06   , Gn3 , v127
	.byte	W06
/* 008   ----------------------------------------
 */	.byte	W12
	.byte		        As3 , v120
	.byte	W24
	.byte		TIE   , Cn4 , v096
	.byte	W06
	.byte		VOL   , 81*mus_intro_mvl/mxv
	.byte	W06
	.byte		        76*mus_intro_mvl/mxv
	.byte	W06
	.byte		        70*mus_intro_mvl/mxv
	.byte	W06
	.byte		        65*mus_intro_mvl/mxv
	.byte	W06
	.byte		        60*mus_intro_mvl/mxv
	.byte	W06
	.byte		        54*mus_intro_mvl/mxv
	.byte	W06
	.byte		        47*mus_intro_mvl/mxv
	.byte	W06
	.byte		        50*mus_intro_mvl/mxv
	.byte	W06
	.byte		        53*mus_intro_mvl/mxv
	.byte	W06
/* 009   ----------------------------------------
 */	.byte		        56*mus_intro_mvl/mxv
	.byte	W06
	.byte		        59*mus_intro_mvl/mxv
	.byte	W06
	.byte		        61*mus_intro_mvl/mxv
	.byte	W06
	.byte		        64*mus_intro_mvl/mxv
	.byte	W06
	.byte		        67*mus_intro_mvl/mxv
	.byte	W06
	.byte		        70*mus_intro_mvl/mxv
	.byte	W06
	.byte		        72*mus_intro_mvl/mxv
	.byte	W06
	.byte		        75*mus_intro_mvl/mxv
	.byte	W06
	.byte		        78*mus_intro_mvl/mxv
	.byte	W06
	.byte		EOT   
	.byte		VOL   , 81*mus_intro_mvl/mxv
	.byte	W06
	.byte		        84*mus_intro_mvl/mxv
	.byte	W06
	.byte		        87*mus_intro_mvl/mxv
	.byte	W06
	.byte		N15   , As3 , v100
	.byte	W17
	.byte		N04   , As3 , v088
	.byte	W07
/* 010   ----------------------------------------
 */	.byte	W10
	.byte		N48   , As3 , v096
	.byte	W60
	.byte	W02
	.byte		N06   , Fn4 , v104
	.byte	W18
	.byte		N13   , Fn4 , v127
	.byte	W06
/* 011   ----------------------------------------
 */	.byte	W11
	.byte		N19   , Fn4 , v116
	.byte	W19
	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_intro_4:
	.byte	KEYSH , mus_intro_key+0
/* 000   ----------------------------------------
 */	.byte	W72
	.byte		VOICE , 5
	.byte		VOL   , 90*mus_intro_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 56
	.byte		LFODL , 0
	.byte		MOD   , 2
	.byte		MODT  , 2
	.byte		BENDR , 24
	.byte	W24
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W24
	.byte		VOL   , 0*mus_intro_mvl/mxv
	.byte		BEND  , c_v-64
	.byte		TIE   , Fn5 , v120
	.byte	W36
	.byte		VOL   , 0*mus_intro_mvl/mxv
	.byte	W03
	.byte		        0*mus_intro_mvl/mxv
	.byte	W01
	.byte		        2*mus_intro_mvl/mxv
	.byte	W01
	.byte		        3*mus_intro_mvl/mxv
	.byte	W01
	.byte		        4*mus_intro_mvl/mxv
	.byte	W01
	.byte		        5*mus_intro_mvl/mxv
	.byte	W01
	.byte		        6*mus_intro_mvl/mxv
	.byte	W01
	.byte		        7*mus_intro_mvl/mxv
	.byte	W01
	.byte		        8*mus_intro_mvl/mxv
	.byte	W01
	.byte		        9*mus_intro_mvl/mxv
	.byte	W01
	.byte		        10*mus_intro_mvl/mxv
	.byte	W02
	.byte		        11*mus_intro_mvl/mxv
	.byte	W01
	.byte		        12*mus_intro_mvl/mxv
	.byte	W01
	.byte		        13*mus_intro_mvl/mxv
	.byte	W01
	.byte		        14*mus_intro_mvl/mxv
	.byte	W01
	.byte		        15*mus_intro_mvl/mxv
	.byte	W01
	.byte		        16*mus_intro_mvl/mxv
	.byte	W01
	.byte		        17*mus_intro_mvl/mxv
	.byte	W01
	.byte		        18*mus_intro_mvl/mxv
	.byte	W01
	.byte		        18*mus_intro_mvl/mxv
	.byte	W01
	.byte		        20*mus_intro_mvl/mxv
	.byte	W02
	.byte		        21*mus_intro_mvl/mxv
	.byte	W01
	.byte		        22*mus_intro_mvl/mxv
	.byte	W01
	.byte		        23*mus_intro_mvl/mxv
	.byte	W01
	.byte		        24*mus_intro_mvl/mxv
	.byte	W01
	.byte		        25*mus_intro_mvl/mxv
	.byte	W01
	.byte		        26*mus_intro_mvl/mxv
	.byte	W01
	.byte		        27*mus_intro_mvl/mxv
	.byte	W01
	.byte		        28*mus_intro_mvl/mxv
	.byte	W01
	.byte		        29*mus_intro_mvl/mxv
	.byte	W01
	.byte		        30*mus_intro_mvl/mxv
	.byte	W02
/* 005   ----------------------------------------
 */	.byte		        31*mus_intro_mvl/mxv
	.byte	W01
	.byte		        32*mus_intro_mvl/mxv
	.byte	W01
	.byte		        33*mus_intro_mvl/mxv
	.byte	W01
	.byte		        34*mus_intro_mvl/mxv
	.byte	W01
	.byte		        35*mus_intro_mvl/mxv
	.byte	W01
	.byte		        36*mus_intro_mvl/mxv
	.byte	W01
	.byte		        36*mus_intro_mvl/mxv
	.byte	W01
	.byte		        38*mus_intro_mvl/mxv
	.byte	W01
	.byte		        39*mus_intro_mvl/mxv
	.byte	W01
	.byte		        40*mus_intro_mvl/mxv
	.byte	W02
	.byte		        41*mus_intro_mvl/mxv
	.byte	W01
	.byte		        42*mus_intro_mvl/mxv
	.byte	W01
	.byte		        43*mus_intro_mvl/mxv
	.byte	W01
	.byte		        44*mus_intro_mvl/mxv
	.byte	W01
	.byte		        45*mus_intro_mvl/mxv
	.byte	W01
	.byte		        46*mus_intro_mvl/mxv
	.byte	W01
	.byte		        47*mus_intro_mvl/mxv
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		VOL   , 48*mus_intro_mvl/mxv
	.byte	W01
	.byte		        49*mus_intro_mvl/mxv
	.byte		BEND  , c_v-62
	.byte	W01
	.byte		VOL   , 50*mus_intro_mvl/mxv
	.byte		BEND  , c_v-60
	.byte	W02
	.byte		VOL   , 51*mus_intro_mvl/mxv
	.byte		BEND  , c_v-58
	.byte	W01
	.byte		VOL   , 52*mus_intro_mvl/mxv
	.byte		BEND  , c_v-56
	.byte	W01
	.byte		VOL   , 53*mus_intro_mvl/mxv
	.byte	W01
	.byte		        54*mus_intro_mvl/mxv
	.byte		BEND  , c_v-54
	.byte	W01
	.byte		VOL   , 54*mus_intro_mvl/mxv
	.byte		BEND  , c_v-52
	.byte	W01
	.byte		VOL   , 56*mus_intro_mvl/mxv
	.byte	W01
	.byte		        57*mus_intro_mvl/mxv
	.byte		BEND  , c_v-50
	.byte	W01
	.byte		VOL   , 58*mus_intro_mvl/mxv
	.byte		BEND  , c_v-48
	.byte	W01
	.byte		VOL   , 59*mus_intro_mvl/mxv
	.byte	W01
	.byte		        60*mus_intro_mvl/mxv
	.byte		BEND  , c_v-46
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		VOL   , 61*mus_intro_mvl/mxv
	.byte	W01
	.byte		        62*mus_intro_mvl/mxv
	.byte		BEND  , c_v-42
	.byte	W01
	.byte		VOL   , 63*mus_intro_mvl/mxv
	.byte		BEND  , c_v-40
	.byte	W01
	.byte		VOL   , 64*mus_intro_mvl/mxv
	.byte	W01
	.byte		        65*mus_intro_mvl/mxv
	.byte		BEND  , c_v-38
	.byte	W01
	.byte		VOL   , 66*mus_intro_mvl/mxv
	.byte		BEND  , c_v-36
	.byte	W01
	.byte		VOL   , 67*mus_intro_mvl/mxv
	.byte	W01
	.byte		        68*mus_intro_mvl/mxv
	.byte		BEND  , c_v-33
	.byte	W01
	.byte		VOL   , 69*mus_intro_mvl/mxv
	.byte		BEND  , c_v-31
	.byte	W02
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-27
	.byte	W02
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-23
	.byte	W02
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-19
	.byte	W02
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-15
	.byte	W02
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-11
	.byte	W02
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-7
	.byte	W02
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v+0
	.byte	W04
	.byte		VOL   , 68*mus_intro_mvl/mxv
	.byte	W01
	.byte		        67*mus_intro_mvl/mxv
	.byte	W02
	.byte		        66*mus_intro_mvl/mxv
	.byte	W01
	.byte		        65*mus_intro_mvl/mxv
	.byte	W01
	.byte		        64*mus_intro_mvl/mxv
	.byte	W02
	.byte		        63*mus_intro_mvl/mxv
	.byte	W01
	.byte		        62*mus_intro_mvl/mxv
	.byte	W01
	.byte		        61*mus_intro_mvl/mxv
	.byte	W02
	.byte		        60*mus_intro_mvl/mxv
	.byte	W01
	.byte		        59*mus_intro_mvl/mxv
	.byte	W02
	.byte		        58*mus_intro_mvl/mxv
	.byte	W01
	.byte		        57*mus_intro_mvl/mxv
	.byte	W01
	.byte		        56*mus_intro_mvl/mxv
	.byte	W02
	.byte		        54*mus_intro_mvl/mxv
	.byte	W01
	.byte		        54*mus_intro_mvl/mxv
	.byte	W01
	.byte		        53*mus_intro_mvl/mxv
	.byte	W02
	.byte		        52*mus_intro_mvl/mxv
	.byte	W01
	.byte		        51*mus_intro_mvl/mxv
	.byte	W02
	.byte		        50*mus_intro_mvl/mxv
	.byte	W01
	.byte		        49*mus_intro_mvl/mxv
	.byte	W01
	.byte		        48*mus_intro_mvl/mxv
	.byte	W01
/* 006   ----------------------------------------
 */	.byte	W01
	.byte		        47*mus_intro_mvl/mxv
	.byte	W01
	.byte		        46*mus_intro_mvl/mxv
	.byte	W01
	.byte		        45*mus_intro_mvl/mxv
	.byte	W02
	.byte		        44*mus_intro_mvl/mxv
	.byte	W01
	.byte		        43*mus_intro_mvl/mxv
	.byte	W02
	.byte		        42*mus_intro_mvl/mxv
	.byte	W01
	.byte		        41*mus_intro_mvl/mxv
	.byte	W01
	.byte		        40*mus_intro_mvl/mxv
	.byte	W02
	.byte		        39*mus_intro_mvl/mxv
	.byte	W01
	.byte		        38*mus_intro_mvl/mxv
	.byte	W01
	.byte		        36*mus_intro_mvl/mxv
	.byte	W02
	.byte		        36*mus_intro_mvl/mxv
	.byte	W01
	.byte		        35*mus_intro_mvl/mxv
	.byte	W02
	.byte		        34*mus_intro_mvl/mxv
	.byte	W01
	.byte		        33*mus_intro_mvl/mxv
	.byte	W01
	.byte		        32*mus_intro_mvl/mxv
	.byte	W02
	.byte		        31*mus_intro_mvl/mxv
	.byte	W01
	.byte		        30*mus_intro_mvl/mxv
	.byte	W01
	.byte		        29*mus_intro_mvl/mxv
	.byte	W02
	.byte		        28*mus_intro_mvl/mxv
	.byte	W01
	.byte		        27*mus_intro_mvl/mxv
	.byte	W02
	.byte		        26*mus_intro_mvl/mxv
	.byte	W01
	.byte		        25*mus_intro_mvl/mxv
	.byte	W01
	.byte		        24*mus_intro_mvl/mxv
	.byte	W01
	.byte		        22*mus_intro_mvl/mxv
	.byte	W01
	.byte		        20*mus_intro_mvl/mxv
	.byte	W01
	.byte		        16*mus_intro_mvl/mxv
	.byte	W01
	.byte		        13*mus_intro_mvl/mxv
	.byte	W01
	.byte		        10*mus_intro_mvl/mxv
	.byte	W01
	.byte		        7*mus_intro_mvl/mxv
	.byte	W01
	.byte		        3*mus_intro_mvl/mxv
	.byte	W01
	.byte		        0*mus_intro_mvl/mxv
	.byte	W56
/* 007   ----------------------------------------
 */	.byte	W24
	.byte		EOT   
	.byte	W48
	.byte		VOL   , 90*mus_intro_mvl/mxv
	.byte		N12   , Cn3 , v068
	.byte	W18
	.byte		N06   , Cn3 , v064
	.byte	W06
/* 008   ----------------------------------------
 */	.byte	W12
	.byte		        Ds3 
	.byte	W24
	.byte		TIE   , Ds3 , v060
	.byte	W06
	.byte		VOL   , 81*mus_intro_mvl/mxv
	.byte	W06
	.byte		        76*mus_intro_mvl/mxv
	.byte	W06
	.byte		        70*mus_intro_mvl/mxv
	.byte	W06
	.byte		        65*mus_intro_mvl/mxv
	.byte	W06
	.byte		        60*mus_intro_mvl/mxv
	.byte	W06
	.byte		        54*mus_intro_mvl/mxv
	.byte	W06
	.byte		        47*mus_intro_mvl/mxv
	.byte	W06
	.byte		        50*mus_intro_mvl/mxv
	.byte	W06
	.byte		        53*mus_intro_mvl/mxv
	.byte	W06
/* 009   ----------------------------------------
 */	.byte		        56*mus_intro_mvl/mxv
	.byte	W06
	.byte		        59*mus_intro_mvl/mxv
	.byte	W06
	.byte		        61*mus_intro_mvl/mxv
	.byte	W06
	.byte		        64*mus_intro_mvl/mxv
	.byte	W06
	.byte		        67*mus_intro_mvl/mxv
	.byte	W06
	.byte		        70*mus_intro_mvl/mxv
	.byte	W06
	.byte		        72*mus_intro_mvl/mxv
	.byte	W06
	.byte		        75*mus_intro_mvl/mxv
	.byte	W06
	.byte		        78*mus_intro_mvl/mxv
	.byte	W06
	.byte		EOT   
	.byte		VOL   , 81*mus_intro_mvl/mxv
	.byte	W06
	.byte		        84*mus_intro_mvl/mxv
	.byte	W06
	.byte		        87*mus_intro_mvl/mxv
	.byte	W06
	.byte		N14   , Cn3 , v076
	.byte	W17
	.byte		N03   , Fn3 , v056
	.byte	W07
/* 010   ----------------------------------------
 */	.byte	W10
	.byte		N48   , Cn3 , v060
	.byte	W60
	.byte	W01
	.byte		N09   , Cn4 , v068
	.byte	W19
	.byte		N14   
	.byte	W06
/* 011   ----------------------------------------
 */	.byte	W10
	.byte		N20   , Cn4 , v064
	.byte	W21
	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_intro_5:
	.byte	KEYSH , mus_intro_key+0
/* 000   ----------------------------------------
 */	.byte	W72
	.byte		VOICE , 3
	.byte		VOL   , 127*mus_intro_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 23
	.byte		LFODL , 22
	.byte		MOD   , 4
	.byte		MODT  , 0
	.byte	W24
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
 */	.byte	W72
	.byte		N12   , Cn3 , v116
	.byte	W18
	.byte		N08   , Cn3 , v108
	.byte	W06
/* 008   ----------------------------------------
 */	.byte	W12
	.byte		N06   , Ds3 , v124
	.byte	W24
	.byte		TIE   , Ds3 , v104
	.byte	W60
/* 009   ----------------------------------------
 */	.byte	W56
	.byte	W03
	.byte		EOT   
	.byte	W09
	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_intro_6:
	.byte	KEYSH , mus_intro_key+0
/* 000   ----------------------------------------
 */	.byte	W72
	.byte		VOICE , 1
	.byte		VOL   , 127*mus_intro_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 23
	.byte		LFODL , 22
	.byte		MOD   , 2
	.byte		MODT  , 0
	.byte	W24
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
 */	.byte	W72
	.byte		VOL   , 127*mus_intro_mvl/mxv
	.byte		N05   , Fn1 , v108
	.byte	W06
	.byte		N11   , Cn2 
	.byte	W12
	.byte		N17   , Ds2 
	.byte	W06
/* 008   ----------------------------------------
 */	.byte	W12
	.byte		N12   , Cn2 
	.byte	W24
	.byte		N32   , Gs1 , v116
	.byte	W36
	.byte		N52   
	.byte	W24
/* 009   ----------------------------------------
 */	.byte	W30
	.byte		N05   , Gs1 , v108
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N14   , As1 
	.byte	W18
	.byte		N05   , Bn1 , v104
	.byte	W06
/* 010   ----------------------------------------
 */	.byte	W12
	.byte		N44   , Cn2 , v116
	.byte	W60
	.byte		N07   , Ds2 , v100
	.byte	W18
	.byte		N12   , En2 , v116
	.byte	W06
/* 011   ----------------------------------------
 */	.byte	W12
	.byte		N15   , Fn2 
	.byte	W15
	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_intro_7:
	.byte	KEYSH , mus_intro_key+0
/* 000   ----------------------------------------
 */	.byte	W72
	.byte		VOICE , 4
	.byte		VOL   , 80*mus_intro_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 23
	.byte		LFODL , 22
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte	W24
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
 */	.byte	W60
	.byte	W02
	.byte		N06   , As2 , v100
	.byte	W02
	.byte		        Cn3 
	.byte	W03
	.byte		        Dn3 
	.byte	W02
	.byte		        Ds3 
	.byte	W03
	.byte		N12   , Fn3 , v120
	.byte	W18
	.byte		N06   , Ds3 , v100
	.byte	W06
/* 008   ----------------------------------------
 */	.byte	W12
	.byte		        Gn3 , v112
	.byte	W24
	.byte		TIE   , Ds3 , v104
	.byte	W60
/* 009   ----------------------------------------
 */	.byte	W48
	.byte		EOT   
	.byte	W24
	.byte		N14   , Fn3 , v116
	.byte	W17
	.byte		N03   , Fn3 , v096
	.byte	W07
/* 010   ----------------------------------------
 */	.byte	W10
	.byte		N28   , Fn3 , v104
	.byte	W36
	.byte	W01
	.byte		N02   , As2 , v116
	.byte	W03
	.byte		N04   , Cn3 , v100
	.byte	W03
	.byte		N03   , Dn3 , v088
	.byte	W04
	.byte		        Ds3 , v052
	.byte	W04
	.byte		N01   , Fn3 , v040
	.byte	W01
	.byte		        Gn3 
	.byte	W02
	.byte		        Gs3 
	.byte	W02
	.byte		        As3 , v048
	.byte	W02
	.byte		        Cn4 , v032
	.byte	W02
	.byte		        Dn4 , v052
	.byte	W01
	.byte		N09   , Ds3 , v116
	.byte	W01
	.byte		N06   , Fn4 , v104
	.byte	W18
	.byte		N14   , En3 , v116
	.byte		N13   , Fn4 , v127
	.byte	W06
/* 011   ----------------------------------------
 */	.byte	W10
	.byte		N20   , Fn3 , v108
	.byte	W01
	.byte		N19   , Fn4 , v116
	.byte	W20
	.byte		N01   , En4 , v092
	.byte	W01
	.byte		        Ds4 
	.byte	W02
	.byte		        Dn4 
	.byte	W02
	.byte		        Cn4 
	.byte	W03
	.byte		        As3 
	.byte	W02
	.byte		        An3 
	.byte	W03
	.byte		        Fn3 
	.byte	W01
	.byte	FINE

/* **************** Track 8 (Midi-Chn.8) **************** */

mus_intro_8:
	.byte	KEYSH , mus_intro_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 12
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W72
	.byte		VOL   , 41*mus_intro_mvl/mxv
	.byte		N92   , Fn3 , v088
	.byte	W02
	.byte		VOL   , 42*mus_intro_mvl/mxv
	.byte	W01
	.byte		        43*mus_intro_mvl/mxv
	.byte	W02
	.byte		        44*mus_intro_mvl/mxv
	.byte	W01
	.byte		        45*mus_intro_mvl/mxv
	.byte	W01
	.byte		        46*mus_intro_mvl/mxv
	.byte	W01
	.byte		        47*mus_intro_mvl/mxv
	.byte	W02
	.byte		        48*mus_intro_mvl/mxv
	.byte	W01
	.byte		        49*mus_intro_mvl/mxv
	.byte	W01
	.byte		        50*mus_intro_mvl/mxv
	.byte	W01
	.byte		        51*mus_intro_mvl/mxv
	.byte	W02
	.byte		        52*mus_intro_mvl/mxv
	.byte	W01
	.byte		        53*mus_intro_mvl/mxv
	.byte	W01
	.byte		        54*mus_intro_mvl/mxv
	.byte	W01
	.byte		        54*mus_intro_mvl/mxv
	.byte	W02
	.byte		        56*mus_intro_mvl/mxv
	.byte	W01
	.byte		        57*mus_intro_mvl/mxv
	.byte	W01
	.byte		        58*mus_intro_mvl/mxv
	.byte	W01
	.byte		        59*mus_intro_mvl/mxv
	.byte	W01
/* 003   ----------------------------------------
 */	.byte	W01
	.byte		        60*mus_intro_mvl/mxv
	.byte	W01
	.byte		        61*mus_intro_mvl/mxv
	.byte	W01
	.byte		        62*mus_intro_mvl/mxv
	.byte	W01
	.byte		        63*mus_intro_mvl/mxv
	.byte	W02
	.byte		        64*mus_intro_mvl/mxv
	.byte	W01
	.byte		        65*mus_intro_mvl/mxv
	.byte	W01
	.byte		        66*mus_intro_mvl/mxv
	.byte	W01
	.byte		        67*mus_intro_mvl/mxv
	.byte	W02
	.byte		        68*mus_intro_mvl/mxv
	.byte	W01
	.byte		        69*mus_intro_mvl/mxv
	.byte	W01
	.byte		        70*mus_intro_mvl/mxv
	.byte	W01
	.byte		        71*mus_intro_mvl/mxv
	.byte	W02
	.byte		        72*mus_intro_mvl/mxv
	.byte	W01
	.byte		        72*mus_intro_mvl/mxv
	.byte	W01
	.byte		        74*mus_intro_mvl/mxv
	.byte	W01
	.byte		        75*mus_intro_mvl/mxv
	.byte	W02
	.byte		        76*mus_intro_mvl/mxv
	.byte	W01
	.byte		        77*mus_intro_mvl/mxv
	.byte	W01
	.byte		        78*mus_intro_mvl/mxv
	.byte	W01
	.byte		        79*mus_intro_mvl/mxv
	.byte	W02
	.byte		        80*mus_intro_mvl/mxv
	.byte	W01
	.byte		        81*mus_intro_mvl/mxv
	.byte	W01
	.byte		        82*mus_intro_mvl/mxv
	.byte	W01
	.byte		        83*mus_intro_mvl/mxv
	.byte	W02
	.byte		        84*mus_intro_mvl/mxv
	.byte	W01
	.byte		        85*mus_intro_mvl/mxv
	.byte	W01
	.byte		        86*mus_intro_mvl/mxv
	.byte	W01
	.byte		        87*mus_intro_mvl/mxv
	.byte	W02
	.byte		        88*mus_intro_mvl/mxv
	.byte	W01
	.byte		        89*mus_intro_mvl/mxv
	.byte	W01
	.byte		        90*mus_intro_mvl/mxv
	.byte	W01
	.byte		        90*mus_intro_mvl/mxv
	.byte	W02
	.byte		        92*mus_intro_mvl/mxv
	.byte	W01
	.byte		        93*mus_intro_mvl/mxv
	.byte	W01
	.byte		        94*mus_intro_mvl/mxv
	.byte	W01
	.byte		        95*mus_intro_mvl/mxv
	.byte	W02
	.byte		        96*mus_intro_mvl/mxv
	.byte	W01
	.byte		        97*mus_intro_mvl/mxv
	.byte	W01
	.byte		        98*mus_intro_mvl/mxv
	.byte	W01
	.byte		        99*mus_intro_mvl/mxv
	.byte	W02
	.byte		        100*mus_intro_mvl/mxv
	.byte	W01
	.byte		        101*mus_intro_mvl/mxv
	.byte	W01
	.byte		        102*mus_intro_mvl/mxv
	.byte	W01
	.byte		        103*mus_intro_mvl/mxv
	.byte	W02
	.byte		        104*mus_intro_mvl/mxv
	.byte	W01
	.byte		        105*mus_intro_mvl/mxv
	.byte	W01
	.byte		        106*mus_intro_mvl/mxv
	.byte	W01
	.byte		        107*mus_intro_mvl/mxv
	.byte	W02
	.byte		        108*mus_intro_mvl/mxv
	.byte	W11
	.byte		N92   , Fn3 , v100
	.byte	W24
/* 004   ----------------------------------------
 */	.byte	W28
	.byte		VOL   , 108*mus_intro_mvl/mxv
	.byte	W02
	.byte		        108*mus_intro_mvl/mxv
	.byte	W01
	.byte		        107*mus_intro_mvl/mxv
	.byte	W01
	.byte		        106*mus_intro_mvl/mxv
	.byte	W01
	.byte		        105*mus_intro_mvl/mxv
	.byte	W01
	.byte		        104*mus_intro_mvl/mxv
	.byte	W01
	.byte		        103*mus_intro_mvl/mxv
	.byte	W01
	.byte		        102*mus_intro_mvl/mxv
	.byte	W01
	.byte		        101*mus_intro_mvl/mxv
	.byte	W01
	.byte		        100*mus_intro_mvl/mxv
	.byte	W01
	.byte		        99*mus_intro_mvl/mxv
	.byte	W01
	.byte		        98*mus_intro_mvl/mxv
	.byte	W01
	.byte		        97*mus_intro_mvl/mxv
	.byte	W01
	.byte		        96*mus_intro_mvl/mxv
	.byte	W01
	.byte		        95*mus_intro_mvl/mxv
	.byte	W01
	.byte		        94*mus_intro_mvl/mxv
	.byte	W01
	.byte		        93*mus_intro_mvl/mxv
	.byte	W01
	.byte		        92*mus_intro_mvl/mxv
	.byte	W01
	.byte		        90*mus_intro_mvl/mxv
	.byte	W02
	.byte		        90*mus_intro_mvl/mxv
	.byte	W01
	.byte		        89*mus_intro_mvl/mxv
	.byte	W01
	.byte		        88*mus_intro_mvl/mxv
	.byte	W01
	.byte		        87*mus_intro_mvl/mxv
	.byte	W01
	.byte		        86*mus_intro_mvl/mxv
	.byte	W01
	.byte		        85*mus_intro_mvl/mxv
	.byte	W01
	.byte		        84*mus_intro_mvl/mxv
	.byte	W01
	.byte		        83*mus_intro_mvl/mxv
	.byte	W01
	.byte		        82*mus_intro_mvl/mxv
	.byte	W01
	.byte		        81*mus_intro_mvl/mxv
	.byte	W01
	.byte		        80*mus_intro_mvl/mxv
	.byte	W01
	.byte		        79*mus_intro_mvl/mxv
	.byte	W01
	.byte		        78*mus_intro_mvl/mxv
	.byte	W01
	.byte		        77*mus_intro_mvl/mxv
	.byte	W01
	.byte		        76*mus_intro_mvl/mxv
	.byte	W01
	.byte		        75*mus_intro_mvl/mxv
	.byte	W01
	.byte		        74*mus_intro_mvl/mxv
	.byte	W01
	.byte		        72*mus_intro_mvl/mxv
	.byte	W01
	.byte		        72*mus_intro_mvl/mxv
	.byte	W01
	.byte		        71*mus_intro_mvl/mxv
	.byte	W01
	.byte		        70*mus_intro_mvl/mxv
	.byte	W01
	.byte		        69*mus_intro_mvl/mxv
	.byte	W01
	.byte		        68*mus_intro_mvl/mxv
	.byte	W01
	.byte		        67*mus_intro_mvl/mxv
	.byte	W01
	.byte		        66*mus_intro_mvl/mxv
	.byte	W01
	.byte		        65*mus_intro_mvl/mxv
	.byte	W01
	.byte		        64*mus_intro_mvl/mxv
	.byte	W02
	.byte		        63*mus_intro_mvl/mxv
	.byte	W01
	.byte		        62*mus_intro_mvl/mxv
	.byte	W01
	.byte		        61*mus_intro_mvl/mxv
	.byte	W01
	.byte		        60*mus_intro_mvl/mxv
	.byte	W01
	.byte		        59*mus_intro_mvl/mxv
	.byte	W01
	.byte		        58*mus_intro_mvl/mxv
	.byte	W01
	.byte		        57*mus_intro_mvl/mxv
	.byte	W01
	.byte		        56*mus_intro_mvl/mxv
	.byte	W01
	.byte		        54*mus_intro_mvl/mxv
	.byte	W01
	.byte		        54*mus_intro_mvl/mxv
	.byte	W01
	.byte		        53*mus_intro_mvl/mxv
	.byte	W01
	.byte		        52*mus_intro_mvl/mxv
	.byte	W02
	.byte		        51*mus_intro_mvl/mxv
	.byte	W01
	.byte		        50*mus_intro_mvl/mxv
	.byte	W01
	.byte		        49*mus_intro_mvl/mxv
	.byte	W01
	.byte		        48*mus_intro_mvl/mxv
	.byte	W01
	.byte		        46*mus_intro_mvl/mxv
	.byte	W02
/* 005   ----------------------------------------
 */	.byte	W01
	.byte		        47*mus_intro_mvl/mxv
	.byte	W01
	.byte		        48*mus_intro_mvl/mxv
	.byte	W01
	.byte		        49*mus_intro_mvl/mxv
	.byte	W02
	.byte		        50*mus_intro_mvl/mxv
	.byte	W01
	.byte		        51*mus_intro_mvl/mxv
	.byte	W01
	.byte		        52*mus_intro_mvl/mxv
	.byte	W02
	.byte		        53*mus_intro_mvl/mxv
	.byte	W01
	.byte		        54*mus_intro_mvl/mxv
	.byte	W01
	.byte		        54*mus_intro_mvl/mxv
	.byte	W02
	.byte		        56*mus_intro_mvl/mxv
	.byte	W01
	.byte		        57*mus_intro_mvl/mxv
	.byte	W01
	.byte		        58*mus_intro_mvl/mxv
	.byte	W02
	.byte		        59*mus_intro_mvl/mxv
	.byte	W01
	.byte		        60*mus_intro_mvl/mxv
	.byte	W01
	.byte		        61*mus_intro_mvl/mxv
	.byte	W02
	.byte		        62*mus_intro_mvl/mxv
	.byte	W01
	.byte		        63*mus_intro_mvl/mxv
	.byte	W01
	.byte		        64*mus_intro_mvl/mxv
	.byte	W01
	.byte		N48   , Fn2 , v096
	.byte	W01
	.byte		VOL   , 65*mus_intro_mvl/mxv
	.byte	W01
	.byte		        66*mus_intro_mvl/mxv
	.byte	W01
	.byte		        67*mus_intro_mvl/mxv
	.byte	W01
	.byte		        68*mus_intro_mvl/mxv
	.byte	W02
	.byte		        69*mus_intro_mvl/mxv
	.byte	W01
	.byte		        70*mus_intro_mvl/mxv
	.byte	W01
	.byte		        71*mus_intro_mvl/mxv
	.byte	W02
	.byte		        72*mus_intro_mvl/mxv
	.byte	W01
	.byte		        72*mus_intro_mvl/mxv
	.byte	W01
	.byte		        74*mus_intro_mvl/mxv
	.byte	W02
	.byte		        75*mus_intro_mvl/mxv
	.byte	W01
	.byte		        76*mus_intro_mvl/mxv
	.byte	W01
	.byte		        77*mus_intro_mvl/mxv
	.byte	W02
	.byte		        78*mus_intro_mvl/mxv
	.byte	W01
	.byte		        79*mus_intro_mvl/mxv
	.byte	W01
	.byte		        80*mus_intro_mvl/mxv
	.byte	W02
	.byte		        81*mus_intro_mvl/mxv
	.byte	W01
	.byte		        82*mus_intro_mvl/mxv
	.byte	W01
	.byte		        83*mus_intro_mvl/mxv
	.byte	W02
	.byte		        84*mus_intro_mvl/mxv
	.byte	W01
	.byte		        85*mus_intro_mvl/mxv
	.byte	W01
	.byte		        86*mus_intro_mvl/mxv
	.byte	W02
	.byte		        87*mus_intro_mvl/mxv
	.byte	W01
	.byte		        88*mus_intro_mvl/mxv
	.byte	W01
	.byte		        89*mus_intro_mvl/mxv
	.byte	W02
	.byte		        90*mus_intro_mvl/mxv
	.byte	W04
	.byte		        92*mus_intro_mvl/mxv
	.byte	W05
	.byte		        93*mus_intro_mvl/mxv
	.byte	W04
	.byte		        94*mus_intro_mvl/mxv
	.byte	W01
	.byte		N84   , Fn3 , v092
	.byte	W03
	.byte		VOL   , 95*mus_intro_mvl/mxv
	.byte	W05
	.byte		        96*mus_intro_mvl/mxv
	.byte	W04
	.byte		        97*mus_intro_mvl/mxv
	.byte	W04
	.byte		        98*mus_intro_mvl/mxv
	.byte	W05
	.byte		        99*mus_intro_mvl/mxv
	.byte	W03
/* 006   ----------------------------------------
 */	.byte	W01
	.byte		        100*mus_intro_mvl/mxv
	.byte	W05
	.byte		        101*mus_intro_mvl/mxv
	.byte	W48
	.byte	W01
	.byte		        101*mus_intro_mvl/mxv
	.byte	W17
	.byte		N48   , Gn3 , v104
	.byte	W24
/* 007   ----------------------------------------
 */	.byte	W24
	.byte		        An3 , v088
	.byte	W48
	.byte	W02
	.byte	FINE

/* **************** Track 9 (Midi-Chn.9) **************** */

mus_intro_9:
	.byte		VOL   , 127*mus_intro_mvl/mxv
	.byte	KEYSH , mus_intro_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 15
	.byte		BENDR , 16
	.byte		BEND  , c_v-24
	.byte		TIE   , Cn4 , v127
	.byte	W01
	.byte		BEND  , c_v-17
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+35
	.byte	W01
	.byte		        c_v+40
	.byte	W03
	.byte		        c_v+39
	.byte	W03
	.byte		        c_v+38
	.byte	W03
	.byte		        c_v+36
	.byte	W03
	.byte		        c_v+35
	.byte	W03
	.byte		        c_v+34
	.byte	W03
	.byte		        c_v+32
	.byte	W03
	.byte		        c_v+31
	.byte	W03
	.byte		        c_v+29
	.byte	W03
	.byte		        c_v+28
	.byte	W03
	.byte		        c_v+27
	.byte	W03
	.byte		        c_v+25
	.byte	W03
	.byte		        c_v+24
	.byte	W03
	.byte		        c_v+22
	.byte	W03
	.byte		        c_v+21
	.byte	W03
	.byte		        c_v+20
	.byte	W03
	.byte		        c_v+18
	.byte	W03
	.byte		        c_v+17
	.byte	W03
	.byte		        c_v+15
	.byte	W03
	.byte		        c_v+14
	.byte	W03
	.byte		        c_v+13
	.byte	W03
	.byte		        c_v+11
	.byte	W03
	.byte		        c_v+10
	.byte	W03
	.byte		        c_v+8
	.byte	W03
	.byte		        c_v+7
	.byte	W03
	.byte		        c_v+5
	.byte	W03
	.byte		        c_v+4
	.byte	W03
	.byte		        c_v+2
	.byte	W03
	.byte		        c_v+0
	.byte	W03
	.byte		        c_v-2
	.byte	W01
/* 001   ----------------------------------------
 */	.byte	W02
	.byte		        c_v-4
	.byte	W03
	.byte		        c_v-6
	.byte	W03
	.byte		        c_v-7
	.byte	W03
	.byte		        c_v-9
	.byte	W03
	.byte		        c_v-11
	.byte	W03
	.byte		        c_v-13
	.byte	W03
	.byte		        c_v-15
	.byte	W03
	.byte		        c_v-17
	.byte	W03
	.byte		        c_v-18
	.byte	W03
	.byte		        c_v-20
	.byte	W03
	.byte		        c_v-22
	.byte	W03
	.byte		        c_v-24
	.byte	W03
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-27
	.byte	W03
	.byte		        c_v-29
	.byte	W03
	.byte		        c_v-32
	.byte	W03
	.byte		        c_v-34
	.byte	W03
	.byte		        c_v-37
	.byte	W03
	.byte		        c_v-39
	.byte	W03
	.byte		        c_v-42
	.byte	W03
	.byte		        c_v-45
	.byte	W03
	.byte		        c_v-47
	.byte	W03
	.byte		        c_v-50
	.byte	W03
	.byte		        c_v-52
	.byte	W03
	.byte		        c_v-55
	.byte	W03
	.byte		        c_v-57
	.byte	W03
	.byte		        c_v-60
	.byte	W03
	.byte		        c_v-63
	.byte	W01
	.byte		        c_v-64
	.byte	W14
/* 002   ----------------------------------------
 */	.byte	W22
	.byte		EOT   
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_intro):
	.byte	9	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_intro_pri	/* Priority */
	.byte	mus_intro_rev	/* Reverb */

mAlignWord
	mPtr	mus_intro_grp

	mPtr	mus_intro_1
	mPtr	mus_intro_2
	mPtr	mus_intro_3
	mPtr	mus_intro_4
	mPtr	mus_intro_5
	mPtr	mus_intro_6
	mPtr	mus_intro_7
	mPtr	mus_intro_8
	mPtr	mus_intro_9

	.end
