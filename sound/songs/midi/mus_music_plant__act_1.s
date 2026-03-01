	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_music_plant__act_1_grp, voicegroup022
	.equ	mus_music_plant__act_1_pri, 0
	.equ	mus_music_plant__act_1_rev, reverb_set+0
	.equ	mus_music_plant__act_1_mvl, 94
	.equ	mus_music_plant__act_1_key, 0
	.equ	mus_music_plant__act_1_tbs, 1
	.equ	mus_music_plant__act_1_exg, 1
	.equ	mus_music_plant__act_1_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_music_plant__act_1)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

mus_music_plant__act_1_1:
	.byte	KEYSH , mus_music_plant__act_1_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 126*mus_music_plant__act_1_tbs/2
	.byte		VOICE , 102
	.byte		VOL   , 100*mus_music_plant__act_1_mvl/mxv
	.byte	PRIO  , 20
	.byte	W03
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
mus_music_plant__act_1_1_B1:
@ 006   ----------------------------------------
	.byte	W60
	.byte		N07   , Gn2 , v104
	.byte	W12
	.byte		N05   , An2 , v088
	.byte	W06
	.byte		N03   , As2 , v104
	.byte	W12
	.byte		N04   , En3 
	.byte	W02
	.byte		N36   , Fn3 , v084
	.byte	W04
@ 007   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		N06   , Ds3 , v092
	.byte	W07
	.byte		N07   , Dn3 
	.byte	W13
	.byte		N06   , Dn3 , v100
	.byte	W04
	.byte		N08   , Ds3 , v088
	.byte	W07
	.byte		        Fn3 , v076
	.byte	W06
	.byte		        Ds3 , v088
	.byte	W05
	.byte		N06   , Dn3 , v080
	.byte	W06
	.byte		        Cn3 
	.byte	W07
	.byte		N03   , As2 , v096
	.byte	W07
@ 008   ----------------------------------------
	.byte		        Bn2 
	.byte		N32   , Cn3 , v092
	.byte	W32
	.byte	W03
	.byte		N06   , As2 , v096
	.byte	W06
	.byte		N04   , An2 , v088
	.byte	W12
	.byte		N08   , Gs2 , v100
	.byte	W02
	.byte		N18   , An2 , v076
	.byte	W17
	.byte		N09   , As2 , v088
	.byte	W11
	.byte		N03   , An2 , v080
	.byte	W12
	.byte		N19   , An2 , v100
	.byte	W01
@ 009   ----------------------------------------
	.byte	W18
	.byte		N66   , Gn2 , v080
	.byte	W06
	.byte		VOL   , 98*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        95*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        92*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        90*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        87*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        84*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        83*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        80*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        78*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        75*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        72*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        69*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        68*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        65*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        63*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        60*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        57*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        55*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        53*mus_music_plant__act_1_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-14
	.byte	W04
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-8
	.byte	W01
@ 010   ----------------------------------------
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte	W44
	.byte	W03
	.byte		VOL   , 100*mus_music_plant__act_1_mvl/mxv
	.byte	W07
	.byte		N06   , Gn2 , v096
	.byte	W05
	.byte		N07   , An2 , v084
	.byte	W06
	.byte		N04   , As2 , v104
	.byte	W05
	.byte		N07   , Bn2 , v088
	.byte	W06
	.byte		N09   , Cn3 , v080
	.byte	W06
	.byte		N07   , Dn3 , v076
	.byte	W05
	.byte		N05   , Ds3 , v080
	.byte	W07
	.byte		N06   , En3 , v104
	.byte	W01
@ 011   ----------------------------------------
	.byte	W01
	.byte		N32   , Fn3 , v096
	.byte	W32
	.byte	W02
	.byte		N07   , Ds3 , v104
	.byte	W05
	.byte		N08   , Dn3 , v080
	.byte	W13
	.byte		N06   , Dn3 , v096
	.byte	W05
	.byte		N08   , Ds3 , v088
	.byte	W06
	.byte		        Fn3 , v068
	.byte	W07
	.byte		N09   , Ds3 , v088
	.byte	W05
	.byte		N06   , Dn3 , v080
	.byte	W06
	.byte		        Cn3 , v084
	.byte	W06
	.byte		N05   , As2 , v108
	.byte	W07
	.byte		N04   , Bn2 , v100
	.byte	W01
@ 012   ----------------------------------------
	.byte		N32   , Cn3 , v096
	.byte	W32
	.byte	W03
	.byte		N06   , As2 , v104
	.byte	W05
	.byte		N07   , An2 , v092
	.byte	W15
	.byte		BEND  , c_v-7
	.byte		N17   , An2 , v108
	.byte	W01
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v+0
	.byte	W12
	.byte		N09   , As2 , v088
	.byte	W13
	.byte		N12   , Cn3 , v096
	.byte	W12
@ 013   ----------------------------------------
	.byte		N18   , An2 , v092
	.byte	W18
	.byte		N72   , Gn2 , v096
	.byte	W06
	.byte		VOL   , 98*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        95*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        92*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        90*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        87*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        84*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        83*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        80*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        78*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        75*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        72*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        69*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        68*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        65*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        63*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        60*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        57*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        55*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        53*mus_music_plant__act_1_mvl/mxv
	.byte	W12
@ 014   ----------------------------------------
	.byte	W48
	.byte		        100*mus_music_plant__act_1_mvl/mxv
	.byte	W48
@ 015   ----------------------------------------
	.byte	W10
	.byte		N02   , Fs2 , v088
	.byte	W01
	.byte		N11   , Gn2 , v092
	.byte	W12
	.byte		N03   , En3 , v084
	.byte		N05   , Fn3 , v088
	.byte	W07
	.byte		        Ds3 , v104
	.byte	W11
	.byte		N02   , Dn3 
	.byte	W12
	.byte		N03   , Cn3 
	.byte	W12
	.byte		        As2 
	.byte	W05
	.byte		N09   , An2 , v100
	.byte	W13
	.byte		N07   , As2 , v104
	.byte	W11
	.byte		N02   , Bn2 , v092
	.byte	W01
	.byte		N36   , Cn3 
	.byte	W01
@ 016   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N09   , As2 , v100
	.byte	W06
	.byte		N03   , An2 , v084
	.byte	W12
	.byte		N07   , An2 , v096
	.byte	W06
	.byte		N08   , Cn3 , v084
	.byte	W06
	.byte		N05   , Gn3 , v096
	.byte	W06
	.byte		N03   , En3 , v076
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N07   , Ds3 , v088
	.byte	W06
	.byte		N06   , Dn3 , v076
	.byte	W06
	.byte		N04   , Cn3 , v080
	.byte	W04
	.byte		N02   , Cs3 , v076
	.byte	W02
	.byte		N12   , Dn3 
	.byte	W01
@ 017   ----------------------------------------
	.byte	W11
	.byte		N05   , Ds3 , v100
	.byte	W05
	.byte		N06   , Fn3 , v088
	.byte	W19
	.byte		N13   , As2 , v100
	.byte	W13
	.byte		N07   , Bn2 , v080
	.byte	W06
	.byte		N03   , Cn3 , v088
	.byte	W18
	.byte		        Gs2 
	.byte	W01
	.byte		N11   , An2 , v076
	.byte	W10
	.byte		N06   , As2 , v100
	.byte	W05
	.byte		N05   , Cn3 , v076
	.byte	W07
	.byte		N36   , An2 , v088
	.byte	W01
@ 018   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		N06   , Gn2 , v064
	.byte	W06
	.byte		N48   , Fn2 , v068
	.byte	W56
@ 019   ----------------------------------------
	.byte	W06
	.byte		N06   , Ds2 , v096
	.byte	W04
	.byte		N09   , Fn2 , v080
	.byte	W07
	.byte		N04   , Gn2 , v076
	.byte	W06
	.byte		N03   , Gs2 , v088
	.byte	W02
	.byte		N05   , An2 , v068
	.byte	W05
	.byte		        Gs2 , v092
	.byte	W04
	.byte		N08   , An2 , v068
	.byte	W07
	.byte		N03   , As2 , v084
	.byte	W06
	.byte		N06   , Cn3 , v088
	.byte	W06
	.byte		N07   , Bn2 , v068
	.byte	W05
	.byte		N06   , Cn3 , v072
	.byte	W06
	.byte		N04   , Dn3 , v084
	.byte	W07
	.byte		N05   , Ds3 , v100
	.byte	W05
	.byte		N08   , Dn3 , v080
	.byte	W06
	.byte		N05   , Ds3 , v092
	.byte	W05
	.byte		N06   , Fn3 
	.byte	W08
	.byte		N04   , Gn3 , v104
	.byte	W01
@ 020   ----------------------------------------
	.byte	W01
	.byte		N10   , Gs3 , v092
	.byte	W10
	.byte		N07   , Gn3 , v076
	.byte	W06
	.byte		N03   , Fn3 , v096
	.byte	W12
	.byte		        Ds3 , v104
	.byte	W13
	.byte		N12   , Dn3 , v108
	.byte	W12
	.byte		N08   , Ds3 , v088
	.byte	W06
	.byte		N06   , Fn3 , v076
	.byte	W06
	.byte		N07   , Bn2 , v080
	.byte	W05
	.byte		N08   , Cn3 , v076
	.byte	W06
	.byte		N05   , Dn3 , v080
	.byte	W06
	.byte		N06   , An2 , v084
	.byte	W06
	.byte		N05   , As2 
	.byte	W05
	.byte		N08   , Cn3 , v076
	.byte	W02
@ 021   ----------------------------------------
	.byte	W04
	.byte		N07   , As2 
	.byte	W06
	.byte		        An2 , v068
	.byte	W06
	.byte		N17   , Gn2 , v076
	.byte	W36
	.byte	W01
	.byte		N04   , Cs3 , v104
	.byte	W02
	.byte		N06   , Dn3 , v088
	.byte	W05
	.byte		        Ds3 , v076
	.byte	W05
	.byte		N07   , Dn3 , v064
	.byte	W06
	.byte		        Cn3 , v076
	.byte	W06
	.byte		N08   , As2 , v088
	.byte	W07
	.byte		N06   , An2 , v080
	.byte	W06
	.byte		N05   , Gs2 , v104
	.byte	W05
	.byte		N03   , An2 , v080
	.byte	W01
@ 022   ----------------------------------------
	.byte	W01
	.byte		N12   , As2 , v112
	.byte	W11
	.byte		N06   , Cn3 , v096
	.byte	W06
	.byte		N03   , Cs3 , v108
	.byte	W12
	.byte		N04   , Dn3 
	.byte	W12
	.byte		        Ds3 , v112
	.byte	W12
	.byte		N01   , En3 , v108
	.byte	W12
	.byte		N02   , En3 , v104
	.byte	W01
	.byte		N24   , Fn3 , v096
	.byte	W28
	.byte	W01
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		N13   , Gn3 , v084
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+0
	.byte	W05
	.byte		N05   , Fn3 , v068
	.byte	W08
	.byte		N06   , Ds3 , v088
	.byte	W05
	.byte		        Dn3 , v068
	.byte	W07
	.byte		N03   , Cn3 , v072
	.byte	W05
	.byte		        Gs2 , v080
	.byte	W02
@ 027   ----------------------------------------
	.byte		N06   , An2 , v096
	.byte	W12
	.byte		        As2 , v104
	.byte	W12
	.byte		N05   , Cn3 , v092
	.byte	W11
	.byte		N06   , Dn3 , v108
	.byte	W06
	.byte		N07   , Ds3 , v080
	.byte	W12
	.byte		N06   , Cn3 , v088
	.byte	W05
	.byte		N07   , Dn3 
	.byte	W06
	.byte		N05   , Ds3 
	.byte	W06
	.byte		N06   , Cs3 
	.byte	W07
	.byte		N05   , Dn3 , v096
	.byte	W06
	.byte		N04   , Ds3 , v088
	.byte	W06
	.byte		N05   , Fn3 , v084
	.byte	W05
	.byte		N03   , Gn3 , v080
	.byte	W02
@ 028   ----------------------------------------
	.byte		N06   , Gs3 , v088
	.byte	W10
	.byte		        Gs3 , v104
	.byte	W13
	.byte		N09   , Gs3 , v096
	.byte	W11
	.byte		N07   , Gn3 , v080
	.byte	W06
	.byte		N06   , Fs3 
	.byte	W14
	.byte		        Fn3 , v088
	.byte	W05
	.byte		N07   , Ds3 
	.byte	W06
	.byte		        Dn3 , v068
	.byte	W07
	.byte		N06   , Cs3 , v072
	.byte	W05
	.byte		        Cn3 , v068
	.byte	W06
	.byte		        As2 , v080
	.byte	W07
	.byte		N03   , An2 , v068
	.byte	W06
@ 029   ----------------------------------------
	.byte		N08   , Gn2 , v076
	.byte	W04
	.byte		        Gs2 , v088
	.byte	W07
	.byte		N20   , Gn3 , v080
	.byte	W23
	.byte		N11   , An2 , v052
	.byte	W06
	.byte		        As2 , v088
	.byte	W05
	.byte		N23   , Fs3 , v044
	.byte	W24
	.byte		N10   , Gn2 , v068
	.byte	W05
	.byte		N08   , Gs2 , v080
	.byte	W07
	.byte		N12   , Fn3 , v072
	.byte	W15
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_music_plant__act_1_1_B1
mus_music_plant__act_1_1_B2:
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	FINE

@ **************** Track 2 (Midi-Chn.2) ****************

mus_music_plant__act_1_2:
	.byte	KEYSH , mus_music_plant__act_1_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 4
	.byte		VOL   , 64*mus_music_plant__act_1_mvl/mxv
	.byte		PAN   , c_v-30
	.byte	W03
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
mus_music_plant__act_1_2_B1:
@ 006   ----------------------------------------
	.byte	W60
	.byte		N07   , Cn5 , v088
	.byte	W12
	.byte		N05   , Dn5 , v080
	.byte	W06
	.byte		N03   , Ds5 , v092
	.byte	W12
	.byte		N04   , An5 
	.byte	W02
	.byte		N36   , As5 , v072
	.byte	W04
@ 007   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		N06   , Gs5 , v080
	.byte	W07
	.byte		N07   , Gn5 
	.byte	W13
	.byte		N06   , Gn5 , v088
	.byte	W04
	.byte		N08   , Gs5 , v076
	.byte	W07
	.byte		        As5 , v068
	.byte	W06
	.byte		        Gs5 , v080
	.byte	W05
	.byte		N06   , Gn5 , v072
	.byte	W06
	.byte		        Fn5 
	.byte	W07
	.byte		N03   , Ds5 , v084
	.byte	W07
@ 008   ----------------------------------------
	.byte		        En5 
	.byte		N32   , Fn5 , v080
	.byte	W32
	.byte	W03
	.byte		N06   , Ds5 , v084
	.byte	W06
	.byte		N04   , Dn5 , v076
	.byte	W12
	.byte		N08   , Cs5 , v088
	.byte	W02
	.byte		N18   , Dn5 , v068
	.byte	W17
	.byte		N09   , Ds5 , v076
	.byte	W11
	.byte		N03   , Dn5 , v072
	.byte	W12
	.byte		N19   , Dn5 , v088
	.byte	W01
@ 009   ----------------------------------------
	.byte	W18
	.byte		N66   , Cn5 , v072
	.byte	W06
	.byte		VOL   , 61*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        59*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        56*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        55*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        50*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        49*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        46*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        44*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        41*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        40*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        36*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        34*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        32*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        29*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        26*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        25*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        21*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        19*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        17*mus_music_plant__act_1_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-14
	.byte	W04
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-8
	.byte	W01
@ 010   ----------------------------------------
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte	W44
	.byte	W03
	.byte		VOL   , 65*mus_music_plant__act_1_mvl/mxv
	.byte	W07
	.byte		N06   , Cn5 , v084
	.byte	W05
	.byte		N07   , Dn5 , v076
	.byte	W06
	.byte		N04   , Ds5 , v088
	.byte	W05
	.byte		N07   , En5 , v080
	.byte	W06
	.byte		N09   , Fn5 , v072
	.byte	W06
	.byte		N07   , Gn5 , v068
	.byte	W05
	.byte		N05   , Gs5 , v072
	.byte	W07
	.byte		N06   , An5 , v092
	.byte	W01
@ 011   ----------------------------------------
	.byte	W01
	.byte		N32   , As5 , v084
	.byte	W32
	.byte	W02
	.byte		N07   , Gs5 , v092
	.byte	W05
	.byte		N08   , Gn5 , v072
	.byte	W13
	.byte		N06   , Gn5 , v084
	.byte	W05
	.byte		N08   , Gs5 , v076
	.byte	W06
	.byte		        As5 , v060
	.byte	W07
	.byte		N09   , Gs5 , v076
	.byte	W05
	.byte		N06   , Gn5 , v068
	.byte	W06
	.byte		        Fn5 , v072
	.byte	W06
	.byte		N05   , Ds5 , v096
	.byte	W07
	.byte		N04   , En5 , v088
	.byte	W01
@ 012   ----------------------------------------
	.byte		N32   , Fn5 , v084
	.byte	W32
	.byte	W03
	.byte		N06   , Ds5 , v092
	.byte	W05
	.byte		N07   , Dn5 , v080
	.byte	W15
	.byte		BEND  , c_v-7
	.byte		N17   , Dn5 , v096
	.byte	W01
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v+0
	.byte	W12
	.byte		N09   , Ds5 , v080
	.byte	W13
	.byte		N12   , Fn5 , v084
	.byte	W12
@ 013   ----------------------------------------
	.byte		N18   , Dn5 , v080
	.byte	W18
	.byte		N72   , Cn5 , v084
	.byte	W06
	.byte		VOL   , 61*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        59*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        56*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        55*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        50*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        49*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        46*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        44*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        41*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        40*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        36*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        34*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        32*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        29*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        26*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        25*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        21*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        19*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        17*mus_music_plant__act_1_mvl/mxv
	.byte	W12
@ 014   ----------------------------------------
	.byte	W48
	.byte		        65*mus_music_plant__act_1_mvl/mxv
	.byte	W48
@ 015   ----------------------------------------
	.byte	W10
	.byte		N02   , Bn4 , v076
	.byte	W01
	.byte		N11   , Cn5 , v080
	.byte	W12
	.byte		N05   , As5 
	.byte	W07
	.byte		        Gs5 , v092
	.byte	W11
	.byte		N02   , Gn5 , v088
	.byte	W12
	.byte		N03   , Fn5 , v092
	.byte	W12
	.byte		        Ds5 , v088
	.byte	W05
	.byte		N09   , Dn5 
	.byte	W13
	.byte		N07   , Ds5 , v092
	.byte	W11
	.byte		N02   , En5 , v080
	.byte	W01
	.byte		N36   , Fn5 
	.byte	W01
@ 016   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N09   , Ds5 , v088
	.byte	W06
	.byte		N03   , Dn5 , v076
	.byte	W12
	.byte		N07   , Dn5 , v084
	.byte	W06
	.byte		N08   , Fn5 , v076
	.byte	W06
	.byte		N05   , Cn6 , v084
	.byte	W06
	.byte		N03   , An5 , v068
	.byte		N06   , As5 
	.byte	W06
	.byte		N07   , Gs5 , v080
	.byte	W06
	.byte		N06   , Gn5 , v068
	.byte	W06
	.byte		N04   , Fn5 
	.byte	W04
	.byte		N02   , Fs5 
	.byte	W02
	.byte		N12   , Gn5 
	.byte	W01
@ 017   ----------------------------------------
	.byte	W11
	.byte		N05   , Gs5 , v088
	.byte	W05
	.byte		N06   , As5 , v080
	.byte	W19
	.byte		N13   , Ds5 , v088
	.byte	W13
	.byte		N07   , En5 , v072
	.byte	W06
	.byte		N03   , Fn5 , v076
	.byte	W18
	.byte		        Cs5 
	.byte	W01
	.byte		N11   , Dn5 , v068
	.byte	W10
	.byte		N06   , Ds5 , v088
	.byte	W05
	.byte		N05   , Fn5 , v068
	.byte	W07
	.byte		N36   , Dn5 , v080
	.byte	W01
@ 018   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		N06   , Cn5 , v056
	.byte	W06
	.byte		N48   , As4 , v060
	.byte	W56
@ 019   ----------------------------------------
	.byte	W06
	.byte		N06   , Gs4 , v084
	.byte	W04
	.byte		N09   , As4 , v072
	.byte	W07
	.byte		N04   , Cn5 , v064
	.byte	W06
	.byte		N03   , Cs5 , v080
	.byte	W02
	.byte		N05   , Dn5 , v060
	.byte	W05
	.byte		        Cs5 , v080
	.byte	W04
	.byte		N08   , Dn5 , v060
	.byte	W07
	.byte		N03   , Ds5 , v072
	.byte	W06
	.byte		N06   , Fn5 , v080
	.byte	W06
	.byte		N07   , En5 , v060
	.byte	W05
	.byte		N06   , Fn5 , v064
	.byte	W06
	.byte		N04   , Gn5 , v072
	.byte	W07
	.byte		N05   , Gs5 , v088
	.byte	W05
	.byte		N08   , Gn5 , v068
	.byte	W06
	.byte		N05   , Gs5 , v080
	.byte	W05
	.byte		N06   , As5 
	.byte	W08
	.byte		N04   , Cn6 , v088
	.byte	W01
@ 020   ----------------------------------------
	.byte	W01
	.byte		N10   , Cs6 , v080
	.byte	W10
	.byte		N07   , Cn6 , v068
	.byte	W06
	.byte		N03   , As5 , v084
	.byte	W12
	.byte		        Gs5 , v092
	.byte	W13
	.byte		N12   , Gn5 , v096
	.byte	W12
	.byte		N08   , Gs5 , v076
	.byte	W06
	.byte		N06   , As5 , v064
	.byte	W06
	.byte		N07   , En5 , v068
	.byte	W05
	.byte		N08   , Fn5 
	.byte	W06
	.byte		N05   , Gn5 , v072
	.byte	W06
	.byte		N06   , Dn5 , v076
	.byte	W06
	.byte		N05   , Ds5 
	.byte	W05
	.byte		N08   , Fn5 , v068
	.byte	W02
@ 021   ----------------------------------------
	.byte	W04
	.byte		N07   , Ds5 
	.byte	W06
	.byte		        Dn5 , v060
	.byte	W06
	.byte		N17   , Cn5 , v068
	.byte	W36
	.byte	W01
	.byte		N04   , Fs5 , v092
	.byte	W02
	.byte		N06   , Gn5 , v076
	.byte	W05
	.byte		        Gs5 , v068
	.byte	W05
	.byte		N07   , Gn5 , v056
	.byte	W06
	.byte		        Fn5 , v064
	.byte	W06
	.byte		N08   , Ds5 , v080
	.byte	W07
	.byte		N06   , Dn5 , v072
	.byte	W06
	.byte		N05   , Cs5 , v092
	.byte	W05
	.byte		N03   , Dn5 , v072
	.byte	W01
@ 022   ----------------------------------------
	.byte	W01
	.byte		N12   , Ds5 , v096
	.byte	W11
	.byte		N06   , Fn5 , v084
	.byte	W06
	.byte		N03   , Fs5 , v096
	.byte	W12
	.byte		N04   , Gn5 
	.byte	W12
	.byte		        Gs5 
	.byte	W12
	.byte		N01   , An5 
	.byte	W12
	.byte		N02   , An5 , v088
	.byte	W01
	.byte		N24   , As5 , v084
	.byte	W28
	.byte	W01
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		N13   , Cn6 , v076
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+0
	.byte	W05
	.byte		N05   , As5 , v060
	.byte	W08
	.byte		N06   , Gs5 , v076
	.byte	W05
	.byte		        Gn5 , v060
	.byte	W07
	.byte		N03   , Fn5 , v064
	.byte	W05
	.byte		        Cs5 , v072
	.byte	W02
@ 027   ----------------------------------------
	.byte		N06   , Dn5 , v084
	.byte	W12
	.byte		        Ds5 , v088
	.byte	W12
	.byte		N05   , Fn5 , v080
	.byte	W11
	.byte		N06   , Gn5 , v092
	.byte	W06
	.byte		N07   , Gs5 , v072
	.byte	W12
	.byte		N06   , Fn5 , v076
	.byte	W05
	.byte		N07   , Gn5 , v080
	.byte	W06
	.byte		N05   , Gs5 , v076
	.byte	W06
	.byte		N06   , Fs5 
	.byte	W07
	.byte		N05   , Gn5 , v084
	.byte	W06
	.byte		N04   , Gs5 , v080
	.byte	W06
	.byte		N05   , As5 , v076
	.byte	W05
	.byte		N03   , Cn6 , v068
	.byte	W02
@ 028   ----------------------------------------
	.byte		N06   , Cs6 , v076
	.byte	W10
	.byte		        Cs6 , v088
	.byte	W13
	.byte		N09   , Cs6 , v084
	.byte	W11
	.byte		N07   , Cn6 , v068
	.byte	W06
	.byte		N06   , Bn5 , v072
	.byte	W14
	.byte		        As5 , v080
	.byte	W05
	.byte		N07   , Gs5 , v076
	.byte	W06
	.byte		        Gn5 , v060
	.byte	W07
	.byte		N06   , Fs5 , v064
	.byte	W05
	.byte		        Fn5 , v060
	.byte	W06
	.byte		        Ds5 , v072
	.byte	W07
	.byte		N03   , Dn5 , v060
	.byte	W06
@ 029   ----------------------------------------
	.byte		N08   , Cn5 , v068
	.byte	W04
	.byte		        Cs5 , v076
	.byte	W07
	.byte		N20   , Cn6 , v072
	.byte	W23
	.byte		N11   , Dn5 , v044
	.byte	W06
	.byte		        Ds5 , v076
	.byte	W05
	.byte		N23   , Bn5 , v036
	.byte	W24
	.byte		N10   , Cn5 , v060
	.byte	W05
	.byte		N08   , Cs5 , v068
	.byte	W07
	.byte		N12   , As5 , v064
	.byte	W15
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_music_plant__act_1_2_B1
mus_music_plant__act_1_2_B2:
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	FINE

@ **************** Track 3 (Midi-Chn.3) ****************

mus_music_plant__act_1_3:
	.byte	KEYSH , mus_music_plant__act_1_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 12
	.byte		VOL   , 42*mus_music_plant__act_1_mvl/mxv
	.byte		PAN   , c_v+30
	.byte	W03
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
mus_music_plant__act_1_3_B1:
@ 006   ----------------------------------------
	.byte	W60
	.byte	W03
	.byte		N07   , Cn5 , v088
	.byte	W12
	.byte		N05   , Dn5 , v080
	.byte	W06
	.byte		N03   , Ds5 , v092
	.byte	W13
	.byte		N04   , An5 
	.byte	W02
@ 007   ----------------------------------------
	.byte	W01
	.byte		N36   , As5 , v072
	.byte	W36
	.byte	W02
	.byte		N06   , Gs5 , v080
	.byte	W05
	.byte		N07   , Gn5 
	.byte	W13
	.byte		N06   , Gn5 , v088
	.byte	W04
	.byte		N08   , Gs5 , v076
	.byte	W07
	.byte		        As5 , v068
	.byte	W06
	.byte		        Gs5 , v080
	.byte	W05
	.byte		N06   , Gn5 , v072
	.byte	W06
	.byte		        Fn5 
	.byte	W07
	.byte		N03   , Ds5 , v084
	.byte	W04
@ 008   ----------------------------------------
	.byte	W03
	.byte		        En5 
	.byte		N32   , Fn5 , v080
	.byte	W32
	.byte	W03
	.byte		N06   , Ds5 , v084
	.byte	W06
	.byte		N04   , Dn5 , v076
	.byte	W13
	.byte		N08   , Cs5 , v088
	.byte	W01
	.byte		N18   , Dn5 , v068
	.byte	W18
	.byte		N09   , Ds5 , v076
	.byte	W10
	.byte		N03   , Dn5 , v072
	.byte	W10
@ 009   ----------------------------------------
	.byte	W02
	.byte		N19   , Dn5 , v088
	.byte	W19
	.byte		N66   , Cn5 , v072
	.byte	W03
	.byte		VOL   , 40*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        37*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        34*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        33*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        30*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        28*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        25*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        22*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        19*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        18*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        15*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        13*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        10*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        7*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        5*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        3*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        0*mus_music_plant__act_1_mvl/mxv
	.byte	W12
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-14
	.byte	W03
@ 010   ----------------------------------------
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte	W44
	.byte		VOL   , 44*mus_music_plant__act_1_mvl/mxv
	.byte	W10
	.byte		N06   , Cn5 , v084
	.byte	W05
	.byte		N07   , Dn5 , v076
	.byte	W06
	.byte		N04   , Ds5 , v088
	.byte	W05
	.byte		N07   , En5 , v080
	.byte	W06
	.byte		N09   , Fn5 , v072
	.byte	W06
	.byte		N07   , Gn5 , v068
	.byte	W05
	.byte		N05   , Gs5 , v072
	.byte	W05
@ 011   ----------------------------------------
	.byte	W02
	.byte		N06   , An5 , v092
	.byte	W02
	.byte		N32   , As5 , v084
	.byte	W32
	.byte	W02
	.byte		N07   , Gs5 , v092
	.byte	W05
	.byte		N08   , Gn5 , v072
	.byte	W13
	.byte		N06   , Gn5 , v084
	.byte	W05
	.byte		N08   , Gs5 , v076
	.byte	W06
	.byte		        As5 , v060
	.byte	W07
	.byte		N09   , Gs5 , v076
	.byte	W05
	.byte		N06   , Gn5 , v068
	.byte	W06
	.byte		        Fn5 , v072
	.byte	W06
	.byte		N05   , Ds5 , v096
	.byte	W05
@ 012   ----------------------------------------
	.byte	W02
	.byte		N04   , En5 , v088
	.byte	W01
	.byte		N32   , Fn5 , v084
	.byte	W32
	.byte	W03
	.byte		N06   , Ds5 , v092
	.byte	W05
	.byte		N07   , Dn5 , v080
	.byte	W15
	.byte		BEND  , c_v-7
	.byte		N17   , Dn5 , v096
	.byte	W01
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v+0
	.byte	W12
	.byte		N09   , Ds5 , v080
	.byte	W13
	.byte		N12   , Fn5 , v084
	.byte	W09
@ 013   ----------------------------------------
	.byte	W03
	.byte		N18   , Dn5 , v080
	.byte	W18
	.byte		N72   , Cn5 , v084
	.byte	W03
	.byte		VOL   , 40*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        37*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        34*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        33*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        30*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        28*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        25*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        22*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        19*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        18*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        15*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        13*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        10*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        7*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        5*mus_music_plant__act_1_mvl/mxv
	.byte	W04
	.byte		        3*mus_music_plant__act_1_mvl/mxv
	.byte	W03
	.byte		        0*mus_music_plant__act_1_mvl/mxv
	.byte	W19
@ 014   ----------------------------------------
	.byte	W48
	.byte		        44*mus_music_plant__act_1_mvl/mxv
	.byte	W48
@ 015   ----------------------------------------
	.byte	W13
	.byte		N02   , Bn4 , v076
	.byte	W01
	.byte		N11   , Cn5 , v080
	.byte	W12
	.byte		N05   , As5 
	.byte	W07
	.byte		        Gs5 , v092
	.byte	W11
	.byte		N02   , Gn5 , v088
	.byte	W12
	.byte		N03   , Fn5 , v092
	.byte	W12
	.byte		        Ds5 , v088
	.byte	W05
	.byte		N09   , Dn5 
	.byte	W13
	.byte		N07   , Ds5 , v092
	.byte	W10
@ 016   ----------------------------------------
	.byte	W01
	.byte		N02   , En5 , v080
	.byte	W01
	.byte		N36   , Fn5 
	.byte	W36
	.byte		N09   , Ds5 , v088
	.byte	W06
	.byte		N03   , Dn5 , v076
	.byte	W12
	.byte		N07   , Dn5 , v084
	.byte	W06
	.byte		N08   , Fn5 , v076
	.byte	W06
	.byte		N05   , Cn6 , v084
	.byte	W06
	.byte		N03   , An5 , v068
	.byte		N06   , As5 
	.byte	W06
	.byte		N07   , Gs5 , v080
	.byte	W06
	.byte		N06   , Gn5 , v068
	.byte	W06
	.byte		N04   , Fn5 
	.byte	W04
@ 017   ----------------------------------------
	.byte		N02   , Fs5 
	.byte	W02
	.byte		N12   , Gn5 
	.byte	W12
	.byte		N05   , Gs5 , v088
	.byte	W05
	.byte		N06   , As5 , v080
	.byte	W19
	.byte		N13   , Ds5 , v088
	.byte	W13
	.byte		N07   , En5 , v072
	.byte	W06
	.byte		N03   , Fn5 , v076
	.byte	W18
	.byte		        Cs5 
	.byte	W01
	.byte		N11   , Dn5 , v068
	.byte	W10
	.byte		N06   , Ds5 , v088
	.byte	W05
	.byte		N05   , Fn5 , v068
	.byte	W05
@ 018   ----------------------------------------
	.byte	W02
	.byte		N36   , Dn5 , v080
	.byte	W32
	.byte	W03
	.byte		N06   , Cn5 , v056
	.byte	W06
	.byte		N48   , As4 , v060
	.byte	W52
	.byte	W01
@ 019   ----------------------------------------
	.byte	W09
	.byte		N06   , Gs4 , v084
	.byte	W04
	.byte		N09   , As4 , v072
	.byte	W07
	.byte		N04   , Cn5 , v064
	.byte	W06
	.byte		N03   , Cs5 , v080
	.byte	W02
	.byte		N05   , Dn5 , v060
	.byte	W05
	.byte		        Cs5 , v080
	.byte	W04
	.byte		N08   , Dn5 , v060
	.byte	W07
	.byte		N03   , Ds5 , v072
	.byte	W06
	.byte		N06   , Fn5 , v080
	.byte	W06
	.byte		N07   , En5 , v060
	.byte	W05
	.byte		N06   , Fn5 , v064
	.byte	W06
	.byte		N04   , Gn5 , v072
	.byte	W07
	.byte		N05   , Gs5 , v088
	.byte	W05
	.byte		N08   , Gn5 , v068
	.byte	W06
	.byte		N05   , Gs5 , v080
	.byte	W05
	.byte		N06   , As5 
	.byte	W06
@ 020   ----------------------------------------
	.byte	W02
	.byte		N04   , Cn6 , v088
	.byte	W02
	.byte		N10   , Cs6 , v080
	.byte	W10
	.byte		N07   , Cn6 , v068
	.byte	W06
	.byte		N03   , As5 , v084
	.byte	W12
	.byte		        Gs5 , v092
	.byte	W13
	.byte		N12   , Gn5 , v096
	.byte	W12
	.byte		N08   , Gs5 , v076
	.byte	W06
	.byte		N06   , As5 , v064
	.byte	W06
	.byte		N07   , En5 , v068
	.byte	W05
	.byte		N08   , Fn5 
	.byte	W06
	.byte		N05   , Gn5 , v072
	.byte	W06
	.byte		N06   , Dn5 , v076
	.byte	W06
	.byte		N05   , Ds5 
	.byte	W04
@ 021   ----------------------------------------
	.byte	W01
	.byte		N08   , Fn5 , v068
	.byte	W06
	.byte		N07   , Ds5 
	.byte	W06
	.byte		        Dn5 , v060
	.byte	W06
	.byte		N17   , Cn5 , v068
	.byte	W36
	.byte	W01
	.byte		N04   , Fs5 , v092
	.byte	W02
	.byte		N06   , Gn5 , v076
	.byte	W05
	.byte		        Gs5 , v068
	.byte	W05
	.byte		N07   , Gn5 , v056
	.byte	W06
	.byte		        Fn5 , v064
	.byte	W06
	.byte		N08   , Ds5 , v080
	.byte	W07
	.byte		N06   , Dn5 , v072
	.byte	W06
	.byte		N05   , Cs5 , v092
	.byte	W03
@ 022   ----------------------------------------
	.byte	W02
	.byte		N03   , Dn5 , v072
	.byte	W02
	.byte		N12   , Ds5 , v096
	.byte	W11
	.byte		N06   , Fn5 , v084
	.byte	W06
	.byte		N03   , Fs5 , v096
	.byte	W12
	.byte		N04   , Gn5 
	.byte	W12
	.byte		        Gs5 
	.byte	W12
	.byte		N01   , An5 
	.byte	W12
	.byte		N02   , An5 , v088
	.byte	W01
	.byte		N24   , As5 , v084
	.byte	W24
	.byte	W02
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W60
	.byte		N13   , Cn6 , v076
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+0
	.byte	W05
	.byte		N05   , As5 , v060
	.byte	W08
	.byte		N06   , Gs5 , v076
	.byte	W05
	.byte		        Gn5 , v060
	.byte	W07
	.byte		N03   , Fn5 , v064
	.byte	W04
@ 027   ----------------------------------------
	.byte	W01
	.byte		        Cs5 , v072
	.byte	W02
	.byte		N06   , Dn5 , v084
	.byte	W12
	.byte		        Ds5 , v088
	.byte	W12
	.byte		N05   , Fn5 , v080
	.byte	W11
	.byte		N06   , Gn5 , v092
	.byte	W06
	.byte		N07   , Gs5 , v072
	.byte	W12
	.byte		N06   , Fn5 , v076
	.byte	W05
	.byte		N07   , Gn5 , v080
	.byte	W06
	.byte		N05   , Gs5 , v076
	.byte	W06
	.byte		N06   , Fs5 
	.byte	W07
	.byte		N05   , Gn5 , v084
	.byte	W06
	.byte		N04   , Gs5 , v080
	.byte	W06
	.byte		N05   , As5 , v076
	.byte	W04
@ 028   ----------------------------------------
	.byte	W01
	.byte		N03   , Cn6 , v068
	.byte	W02
	.byte		N06   , Cs6 , v076
	.byte	W10
	.byte		        Cs6 , v088
	.byte	W13
	.byte		N09   , Cs6 , v084
	.byte	W11
	.byte		N07   , Cn6 , v068
	.byte	W06
	.byte		N06   , Bn5 , v072
	.byte	W14
	.byte		        As5 , v080
	.byte	W05
	.byte		N07   , Gs5 , v076
	.byte	W06
	.byte		        Gn5 , v060
	.byte	W07
	.byte		N06   , Fs5 , v064
	.byte	W05
	.byte		        Fn5 , v060
	.byte	W06
	.byte		        Ds5 , v072
	.byte	W07
	.byte		N03   , Dn5 , v060
	.byte	W03
@ 029   ----------------------------------------
	.byte	W03
	.byte		N08   , Cn5 , v068
	.byte	W04
	.byte		        Cs5 , v076
	.byte	W07
	.byte		N20   , Cn6 , v072
	.byte	W23
	.byte		N11   , Dn5 , v044
	.byte	W06
	.byte		        Ds5 , v076
	.byte	W05
	.byte		N23   , Bn5 , v036
	.byte	W24
	.byte		N10   , Cn5 , v060
	.byte	W05
	.byte		N08   , Cs5 , v068
	.byte	W07
	.byte		N12   , As5 , v064
	.byte	W12
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_music_plant__act_1_3_B1
mus_music_plant__act_1_3_B2:
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	FINE

@ **************** Track 4 (Midi-Chn.4) ****************

mus_music_plant__act_1_4:
	.byte	KEYSH , mus_music_plant__act_1_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 54
	.byte		VOL   , 127*mus_music_plant__act_1_mvl/mxv
	.byte	W03
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
mus_music_plant__act_1_4_005:
	.byte		N24   , Cn3 , v120
	.byte	W24
	.byte		N18   , Fn2 
	.byte	W18
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N06   , Cn2 
	.byte	W06
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte	PEND
mus_music_plant__act_1_4_B1:
@ 006   ----------------------------------------
mus_music_plant__act_1_4_006:
	.byte		N24   , As2 , v120
	.byte	W24
	.byte		N18   , Fn2 
	.byte	W18
	.byte		N12   , As1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
mus_music_plant__act_1_4_007:
	.byte		N24   , Cn3 , v120
	.byte	W24
	.byte		N18   , Fn2 
	.byte	W18
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N06   , Cn2 
	.byte	W06
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_4_006
@ 009   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_4_005
@ 010   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_4_006
@ 011   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_4_007
@ 012   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_4_006
@ 013   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_4_005
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_4_006
@ 015   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_4_007
@ 016   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_4_006
@ 017   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_4_005
@ 018   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_4_006
@ 019   ----------------------------------------
	.byte		N24   , Cn3 , v120
	.byte	W24
	.byte		N18   , Fn2 
	.byte	W18
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N06   , Cn2 
	.byte	W06
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
@ 020   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_4_006
@ 021   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_4_007
@ 022   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_4_006
@ 023   ----------------------------------------
mus_music_plant__act_1_4_023:
	.byte		N24   , Cn3 , v120
	.byte	W24
	.byte		N18   , Fn2 
	.byte	W18
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_4_006
@ 025   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_4_023
@ 026   ----------------------------------------
	.byte		N24   , As2 , v120
	.byte	W24
	.byte		N18   , Fn2 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
@ 027   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_4_023
@ 028   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_4_006
@ 029   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_4_023
@ 030   ----------------------------------------
	.byte		N05   , As2 , v120
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N08   
	.byte	W20
	.byte		N08   
	.byte	W08
	.byte		        Bn2 
	.byte	W08
	.byte		N24   , Cn3 
	.byte	W48
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_4_005
	.byte	GOTO
	 mPtr	mus_music_plant__act_1_4_B1
mus_music_plant__act_1_4_B2:
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	FINE

@ **************** Track 5 (Midi-Chn.5) ****************

mus_music_plant__act_1_5:
	.byte	KEYSH , mus_music_plant__act_1_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_music_plant__act_1_mvl/mxv
	.byte	W03
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
mus_music_plant__act_1_5_005:
	.byte		N24   , Ds2 , v112
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte	PEND
mus_music_plant__act_1_5_B1:
@ 006   ----------------------------------------
mus_music_plant__act_1_5_006:
	.byte		N24   , Ds2 , v112
	.byte	W24
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_5_005
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_5_006
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W48
	.byte		N06   , Ds2 , v112
	.byte	W06
	.byte		        Cs1 
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
@ 011   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_5_005
@ 012   ----------------------------------------
mus_music_plant__act_1_5_012:
	.byte		N24   , Ds2 , v112
	.byte	W24
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N06   , Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 013   ----------------------------------------
mus_music_plant__act_1_5_013:
	.byte		N24   , Ds2 , v112
	.byte	W24
	.byte		N18   
	.byte	W18
	.byte		N06   , Cs1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_5_006
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte		N18   , Ds2 , v112
	.byte	W18
	.byte		N06   , Ds2 , v088
	.byte	W78
@ 018   ----------------------------------------
	.byte		N24   , Ds2 , v112
	.byte	W48
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_5_005
@ 020   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_5_012
@ 021   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_5_013
@ 022   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_5_006
@ 023   ----------------------------------------
mus_music_plant__act_1_5_023:
	.byte		N24   , Ds2 , v112
	.byte	W24
	.byte		N18   , Cs1 
	.byte	W18
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
mus_music_plant__act_1_5_024:
	.byte		N24   , Ds2 , v112
	.byte	W24
	.byte		N18   , Cs1 
	.byte	W18
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N06   , Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 025   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_5_013
@ 026   ----------------------------------------
	.byte		N24   , Ds2 , v112
	.byte	W24
	.byte		N12   , Cs1 
	.byte	W12
	.byte		N06   , Ds2 
	.byte	W06
	.byte		N12   , Cs1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N06   , Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 027   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_5_023
@ 028   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_5_024
@ 029   ----------------------------------------
	.byte		N24   , Ds2 , v112
	.byte	W24
	.byte		N18   
	.byte	W18
	.byte		N06   , Cs1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N06   , Gs1 , v120
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 030   ----------------------------------------
	.byte		        An1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N08   , Ds2 
	.byte	W08
	.byte		        Cs1 
	.byte	W08
	.byte		N08   
	.byte	W08
	.byte		N16   , Ds2 
	.byte	W18
	.byte		N06   , Ds2 , v112
	.byte	W06
	.byte		        Gs1 , v120
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 031   ----------------------------------------
	.byte		N24   , Ds2 , v112
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 032   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 033   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_5_005
	.byte	GOTO
	 mPtr	mus_music_plant__act_1_5_B1
mus_music_plant__act_1_5_B2:
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	FINE

@ **************** Track 6 (Midi-Chn.6) ****************

mus_music_plant__act_1_6:
	.byte	KEYSH , mus_music_plant__act_1_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_music_plant__act_1_mvl/mxv
	.byte	W03
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_music_plant__act_1_6_004:
	.byte	W54
	.byte		N06   , Dn1 , v080
	.byte	W06
	.byte		        Dn1 , v088
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        Dn1 , v096
	.byte	W06
	.byte		        Dn1 , v100
	.byte	W06
	.byte		        Dn1 , v108
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
mus_music_plant__act_1_6_005:
	.byte		N24   , Cs2 , v120
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Ds1 , v060
	.byte	W12
	.byte		N06   , Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte	PEND
mus_music_plant__act_1_6_B1:
@ 006   ----------------------------------------
mus_music_plant__act_1_6_006:
	.byte		N06   , Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W12
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
	.byte	PEND
@ 007   ----------------------------------------
mus_music_plant__act_1_6_007:
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
	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_6_007
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W54
	.byte		N06   , Dn1 , v052
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
@ 011   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_6_005
@ 012   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_6_006
@ 013   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_6_007
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_6_007
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte		N04   , Dn1 , v072
	.byte	W04
	.byte		        Dn1 , v052
	.byte	W04
	.byte		        Dn1 , v060
	.byte	W04
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W78
@ 018   ----------------------------------------
	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , En1 , v060
	.byte	W12
	.byte		N06   , Dn1 
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
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_6_007
@ 020   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_6_006
@ 021   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_6_007
@ 022   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_6_007
@ 023   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_6_005
@ 024   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_6_007
@ 025   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_6_007
@ 026   ----------------------------------------
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
	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
@ 027   ----------------------------------------
	.byte		N24   , Cs2 , v120
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Ds1 , v072
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Ds1 , v072
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
@ 028   ----------------------------------------
	.byte		        Ds1 , v072
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		        Ds1 , v072
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		        Ds1 , v072
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
@ 029   ----------------------------------------
	.byte		N24   , Fs2 , v120
	.byte	W12
	.byte		N06   , Dn1 , v060
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
	.byte	W30
@ 030   ----------------------------------------
	.byte		N24   , Cs2 , v120
	.byte	W36
	.byte		        Fs2 
	.byte	W12
	.byte		        Cs2 
	.byte	W24
	.byte		N06   , Dn1 , v072
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_6_004
@ 033   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_6_005
	.byte	GOTO
	 mPtr	mus_music_plant__act_1_6_B1
mus_music_plant__act_1_6_B2:
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	FINE

@ **************** Track 7 (Midi-Chn.7) ****************

mus_music_plant__act_1_7:
	.byte	KEYSH , mus_music_plant__act_1_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 80
	.byte		VOL   , 127*mus_music_plant__act_1_mvl/mxv
	.byte	W03
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
mus_music_plant__act_1_7_B1:
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
	.byte	W92
	.byte	W02
	.byte		N02   , En2 , v084
	.byte		N04   , Fn2 
	.byte	W02
@ 023   ----------------------------------------
mus_music_plant__act_1_7_023:
	.byte	W02
	.byte		N02   , Gn2 , v020
	.byte	W01
	.byte		        An2 , v056
	.byte	W02
	.byte		        Bn2 , v052
	.byte	W01
	.byte		        Cn3 
	.byte	W02
	.byte		N03   , Dn3 , v036
	.byte	W03
	.byte		N15   , Ds3 , v116
	.byte	W18
	.byte		        Ds3 , v124
	.byte	W17
	.byte		        Ds3 , v104
	.byte	W18
	.byte		N14   , Ds3 , v108
	.byte	W18
	.byte		N13   
	.byte	W13
	.byte		N01   , En2 , v072
	.byte		N03   , Fn2 , v076
	.byte	W01
	.byte	PEND
@ 024   ----------------------------------------
mus_music_plant__act_1_7_024:
	.byte	W01
	.byte		N03   , Gn2 , v032
	.byte	W02
	.byte		        An2 , v048
	.byte	W02
	.byte		        Bn2 , v036
	.byte	W02
	.byte		        Cn3 , v048
	.byte	W01
	.byte		N04   , Dn3 , v056
	.byte	W04
	.byte		N16   , Fn3 , v100
	.byte	W19
	.byte		N11   , Fn3 , v108
	.byte	W14
	.byte		N24   , Fn3 , v112
	.byte	W23
	.byte		N02   , En3 , v036
	.byte	W02
	.byte		        Dn3 , v056
	.byte	W02
	.byte		N01   , Cn3 , v044
	.byte	W01
	.byte		N02   , Bn2 , v036
	.byte	W01
	.byte		N01   , An2 
	.byte	W02
	.byte		        Gn2 , v032
	.byte	W01
	.byte		        Fn2 , v028
	.byte	W02
	.byte		        En2 
	.byte	W17
	.byte	PEND
@ 025   ----------------------------------------
	.byte		        En2 , v076
	.byte	W01
	.byte		N02   , Fn2 , v044
	.byte	W02
	.byte		        Gn2 , v076
	.byte	W01
	.byte		        An2 , v092
	.byte	W02
	.byte		        Bn2 , v072
	.byte	W01
	.byte		N03   , Cn3 , v052
	.byte	W03
	.byte		N02   , Dn3 , v028
	.byte	W01
	.byte		N16   , Ds3 , v108
	.byte	W19
	.byte		N13   , Ds3 , v112
	.byte	W16
	.byte		N16   , Ds3 , v104
	.byte	W18
	.byte		N15   , Ds3 , v108
	.byte	W19
	.byte		N13   , Ds3 , v112
	.byte	W11
	.byte		N03   , Dn2 , v060
	.byte	W01
	.byte		N05   , En2 
	.byte	W01
@ 026   ----------------------------------------
	.byte	W02
	.byte		N04   , Fn2 , v032
	.byte	W02
	.byte		        Gn2 , v024
	.byte	W01
	.byte		        An2 , v032
	.byte	W02
	.byte		        Bn2 , v036
	.byte	W02
	.byte		N03   , Cn3 
	.byte	W02
	.byte		N02   , Dn3 , v024
	.byte	W01
	.byte		N14   , Fn3 , v108
	.byte	W01
	.byte		N01   , En3 , v036
	.byte	W17
	.byte		N10   , Fn3 , v104
	.byte	W14
	.byte		N24   , Fn3 , v100
	.byte	W24
	.byte	W02
	.byte		N02   , En3 , v036
	.byte	W01
	.byte		        Dn3 , v048
	.byte	W01
	.byte		        Cn3 , v056
	.byte	W01
	.byte		        Bn2 
	.byte	W02
	.byte		        An2 
	.byte	W01
	.byte		        Gn2 , v052
	.byte	W01
	.byte		N01   , Fn2 , v040
	.byte	W17
	.byte		N02   , En2 , v084
	.byte		N04   , Fn2 
	.byte	W02
@ 027   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_7_023
@ 028   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_7_024
@ 029   ----------------------------------------
	.byte		N01   , En2 , v076
	.byte	W01
	.byte		N02   , Fn2 , v044
	.byte	W02
	.byte		        Gn2 , v076
	.byte	W01
	.byte		        An2 , v092
	.byte	W02
	.byte		        Bn2 , v072
	.byte	W01
	.byte		N03   , Cn3 , v052
	.byte	W03
	.byte		N02   , Dn3 , v028
	.byte	W01
	.byte		N16   , Ds3 , v108
	.byte	W19
	.byte		N13   , Ds3 , v112
	.byte	W16
	.byte		N16   , Ds3 , v104
	.byte	W18
	.byte		N15   , Ds3 , v108
	.byte	W19
	.byte		N13   , Ds3 , v112
	.byte	W13
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_music_plant__act_1_7_B1
mus_music_plant__act_1_7_B2:
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	FINE

@ **************** Track 8 (Midi-Chn.8) ****************

mus_music_plant__act_1_8:
	.byte	KEYSH , mus_music_plant__act_1_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 74
	.byte		PAN   , c_v+40
	.byte		VOL   , 106*mus_music_plant__act_1_mvl/mxv
	.byte	W03
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_music_plant__act_1_8_004:
	.byte	W54
	.byte		N06   , Fn2 , v120
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
mus_music_plant__act_1_8_005:
	.byte		N09   , Fn3 , v120
	.byte	W09
	.byte		N02   , En3 , v096
	.byte	W02
	.byte		        Dn3 , v092
	.byte	W02
	.byte		        Cn3 , v104
	.byte	W01
	.byte		        Bn2 , v112
	.byte	W02
	.byte		        An2 , v116
	.byte	W02
	.byte		        Gn2 , v108
	.byte	W01
	.byte		        Fn2 , v112
	.byte	W02
	.byte		N01   , En2 , v084
	.byte	W72
	.byte	W03
	.byte	PEND
mus_music_plant__act_1_8_B1:
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
	.byte	W54
	.byte		N06   , As2 , v108
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 025   ----------------------------------------
	.byte		N09   , As3 
	.byte	W09
	.byte		N02   , An3 , v084
	.byte	W02
	.byte		        Gn3 , v080
	.byte	W02
	.byte		        Fn3 , v092
	.byte	W01
	.byte		        En3 , v100
	.byte	W02
	.byte		        Dn3 , v104
	.byte	W02
	.byte		        Cn3 , v096
	.byte	W01
	.byte		        As2 , v100
	.byte	W02
	.byte		N01   , An2 , v072
	.byte	W72
	.byte	W03
@ 026   ----------------------------------------
	.byte		PAN   , c_v+0
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte		N05   , Fn2 , v120
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N08   
	.byte	W20
	.byte		N08   
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		N24   , Gn2 
	.byte	W48
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_8_004
@ 033   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_8_005
	.byte	GOTO
	 mPtr	mus_music_plant__act_1_8_B1
mus_music_plant__act_1_8_B2:
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	FINE

@ **************** Track 9 (Midi-Chn.9) ****************

mus_music_plant__act_1_9:
	.byte	KEYSH , mus_music_plant__act_1_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 74
	.byte		PAN   , c_v-40
	.byte		VOL   , 106*mus_music_plant__act_1_mvl/mxv
	.byte	W03
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_music_plant__act_1_9_004:
	.byte	W54
	.byte		N06   , An1 , v120
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
mus_music_plant__act_1_9_005:
	.byte		N09   , An2 , v120
	.byte	W09
	.byte		N02   , Gn2 , v096
	.byte	W02
	.byte		        Fn2 , v092
	.byte	W02
	.byte		        En2 , v104
	.byte	W01
	.byte		        Dn2 , v112
	.byte	W02
	.byte		        Cn2 , v116
	.byte	W02
	.byte		        Bn1 , v108
	.byte	W01
	.byte		        An1 , v112
	.byte	W02
	.byte		N01   , Gn1 , v084
	.byte	W72
	.byte	W03
	.byte	PEND
mus_music_plant__act_1_9_B1:
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
	.byte	W54
	.byte		N06   , Dn2 , v108
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 025   ----------------------------------------
	.byte		N09   , Dn3 
	.byte	W09
	.byte		N02   , Cn3 , v084
	.byte	W02
	.byte		        As2 , v080
	.byte	W02
	.byte		        An2 , v092
	.byte	W01
	.byte		        Gn2 , v100
	.byte	W02
	.byte		        Fn2 , v104
	.byte	W02
	.byte		        En2 , v096
	.byte	W01
	.byte		        Dn2 , v100
	.byte	W02
	.byte		N01   , Cn2 , v072
	.byte	W72
	.byte	W03
@ 026   ----------------------------------------
	.byte		PAN   , c_v+0
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte		N05   , As2 , v120
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N08   
	.byte	W20
	.byte		N08   
	.byte	W08
	.byte		        Bn2 
	.byte	W08
	.byte		N24   , Cn3 
	.byte	W48
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_9_004
@ 033   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_9_005
	.byte	GOTO
	 mPtr	mus_music_plant__act_1_9_B1
mus_music_plant__act_1_9_B2:
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	FINE

@ **************** Track 10 (Midi-Chn.10) ****************

mus_music_plant__act_1_10:
	.byte	KEYSH , mus_music_plant__act_1_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 93
	.byte		VOL   , 106*mus_music_plant__act_1_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
@ 001   ----------------------------------------
mus_music_plant__act_1_10_001:
	.byte		N12   , Fn2 , v120
	.byte	W12
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W06
	.byte		        Ds3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_music_plant__act_1_10_002:
	.byte		N12   , Fn2 , v120
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        As2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Fn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_10_001
@ 004   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_10_002
@ 005   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_10_001
mus_music_plant__act_1_10_B1:
@ 006   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_10_002
@ 007   ----------------------------------------
	.byte		VOL   , 84*mus_music_plant__act_1_mvl/mxv
	.byte		N12   , Fn2 , v120
	.byte	W12
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W06
	.byte		        Ds3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_10_002
@ 009   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_10_001
@ 010   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_10_002
@ 011   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_10_001
@ 012   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_10_002
@ 013   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_10_001
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_10_002
@ 015   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_10_001
@ 016   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_10_002
@ 017   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_10_001
@ 018   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_10_002
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_10_001
@ 020   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_10_002
@ 021   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_10_001
@ 022   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_10_002
@ 023   ----------------------------------------
	.byte		VOL   , 106*mus_music_plant__act_1_mvl/mxv
	.byte		N12   , Ds2 , v120
	.byte	W12
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Gs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W06
	.byte		        Cn3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
@ 024   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_10_002
@ 025   ----------------------------------------
	.byte		N12   , Ds2 , v120
	.byte	W12
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Gs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W06
	.byte		        Cn3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
@ 026   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_10_002
@ 027   ----------------------------------------
mus_music_plant__act_1_10_027:
	.byte		N12   , Gs2 , v120
	.byte	W12
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gs2 
	.byte	W06
	.byte		        Ds3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        As2 
	.byte	W06
	.byte		        Fn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 029   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_10_027
@ 030   ----------------------------------------
	.byte		N05   , As2 , v120
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N08   
	.byte	W20
	.byte		N08   
	.byte	W08
	.byte		        Bn2 
	.byte	W08
	.byte		N24   , Cn3 
	.byte	W48
@ 031   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_10_001
@ 032   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_10_002
@ 033   ----------------------------------------
	.byte	PATT
	 mPtr	mus_music_plant__act_1_10_001
	.byte	GOTO
	 mPtr	mus_music_plant__act_1_10_B1
mus_music_plant__act_1_10_B2:
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(mus_music_plant__act_1):
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_music_plant__act_1_pri	@ Priority
	.byte	mus_music_plant__act_1_rev	@ Reverb

mAlignWord
	mPtr	mus_music_plant__act_1_grp

	mPtr	mus_music_plant__act_1_1
	mPtr	mus_music_plant__act_1_2
	mPtr	mus_music_plant__act_1_3
	mPtr	mus_music_plant__act_1_4
	mPtr	mus_music_plant__act_1_5
	mPtr	mus_music_plant__act_1_6
	mPtr	mus_music_plant__act_1_7
	mPtr	mus_music_plant__act_1_8
	mPtr	mus_music_plant__act_1_9
	mPtr	mus_music_plant__act_1_10

	.end
