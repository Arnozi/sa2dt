	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_invincibility_grp, voicegroup007
	.equ	mus_invincibility_pri, 0
	.equ	mus_invincibility_rev, reverb_set+0
	.equ	mus_invincibility_mvl, 110
	.equ	mus_invincibility_key, 0
	.equ	mus_invincibility_tbs, 1
	.equ	mus_invincibility_exg, 1
	.equ	mus_invincibility_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_invincibility)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_invincibility_1:
	.byte	KEYSH , mus_invincibility_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 250*mus_invincibility_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_invincibility_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 127
	.byte		N11   , Cn1 , v127
	.byte		N92   , Cs2 
	.byte	W24
	.byte		N11   , An1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
mus_invincibility_1_B1:
/* 001   ----------------------------------------
 */	.byte		N12   , Cn1 , v127
	.byte		N23   , Ds1 , v056
	.byte		N92   , Cs2 , v127
	.byte	W24
	.byte		N12   , Cs1 
	.byte		N11   , Dn1 , v056
	.byte	W24
	.byte		N12   , Cn1 , v127
	.byte		N11   , Dn1 , v056
	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte	W12
	.byte		        Cs1 
	.byte		N11   , Dn1 , v056
	.byte	W24
/* 002   ----------------------------------------
 */mus_invincibility_1_002:
	.byte		N12   , Cn1 , v127
	.byte		N11   , Dn1 , v056
	.byte	W24
	.byte		N12   , Cs1 , v127
	.byte		N11   , Dn1 , v056
	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte	W12
	.byte		N11   , Dn1 , v056
	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte	W12
	.byte		        Cs1 
	.byte		N11   , Dn1 , v056
	.byte	W24
	.byte	PEND
/* 003   ----------------------------------------
 */mus_invincibility_1_003:
	.byte		N12   , Cn1 , v127
	.byte		N23   , Ds1 , v056
	.byte	W24
	.byte		N12   , Cs1 , v127
	.byte		N11   , Dn1 , v056
	.byte	W24
	.byte		N12   , Cn1 , v127
	.byte		N11   , Dn1 , v056
	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte	W12
	.byte		        Cs1 
	.byte		N11   , Dn1 , v056
	.byte	W24
	.byte	PEND
/* 004   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_invincibility_1_002
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_invincibility_1_003
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_invincibility_1_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_invincibility_1_003
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_invincibility_1_002
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_invincibility_1_003
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_invincibility_1_002
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_invincibility_1_003
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_invincibility_1_002
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_invincibility_1_003
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_invincibility_1_002
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_invincibility_1_003
/* 016   ----------------------------------------
 */	.byte		N12   , Cn1 , v127
	.byte		N11   , Dn1 , v056
	.byte	W24
	.byte		N12   , Cs1 , v127
	.byte		N11   , Dn1 , v056
	.byte	W12
	.byte		N12   , Cs1 , v127
	.byte	W12
	.byte		N11   , Dn1 , v056
	.byte		N12   , An1 , v127
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Dn1 , v056
	.byte		N12   , Gs1 , v127
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	GOTO
	 mPtr	mus_invincibility_1_B1
mus_invincibility_1_B2:
/* 017   ----------------------------------------
 */	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_invincibility_2:
	.byte	KEYSH , mus_invincibility_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 62
	.byte		VOL   , 119*mus_invincibility_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 0
	.byte	W96
mus_invincibility_2_B1:
/* 001   ----------------------------------------
 */	.byte		N18   , An1 , v104
	.byte	W24
	.byte		N22   , An1 , v108
	.byte	W24
	.byte		N06   , En1 , v104
	.byte	W12
	.byte		N08   , En1 , v112
	.byte	W12
	.byte		N21   , En1 , v108
	.byte	W24
/* 002   ----------------------------------------
 */	.byte		N17   , Gn1 , v120
	.byte	W24
	.byte		N13   , Gn1 , v096
	.byte	W12
	.byte		N19   , Dn1 , v112
	.byte	W24
	.byte		N07   , Dn1 , v096
	.byte	W12
	.byte		N20   , Dn1 , v112
	.byte	W24
/* 003   ----------------------------------------
 */	.byte		N15   , An1 , v108
	.byte	W24
	.byte		N22   , An1 , v092
	.byte	W24
	.byte		N06   , En1 , v108
	.byte	W12
	.byte		N07   , En1 , v100
	.byte	W12
	.byte		N23   , En1 , v108
	.byte	W24
/* 004   ----------------------------------------
 */	.byte		N18   , Gn1 , v112
	.byte	W24
	.byte		N14   , Gn1 , v096
	.byte	W12
	.byte		N18   , Dn1 , v104
	.byte	W24
	.byte		N08   , Dn1 , v096
	.byte	W12
	.byte		N22   , Dn1 , v116
	.byte	W24
/* 005   ----------------------------------------
 */	.byte		N18   , An1 , v104
	.byte	W24
	.byte		N20   , An1 , v096
	.byte	W24
	.byte		N08   , En1 
	.byte	W12
	.byte		        En1 , v112
	.byte	W12
	.byte		N22   , En1 , v116
	.byte	W24
/* 006   ----------------------------------------
 */	.byte		N16   , Gn1 , v120
	.byte	W24
	.byte		N14   , Gn1 , v104
	.byte	W12
	.byte		N19   , Dn1 
	.byte	W24
	.byte		N08   
	.byte	W12
	.byte		N17   , Dn1 , v112
	.byte	W24
/* 007   ----------------------------------------
 */	.byte		N16   , Cn1 , v100
	.byte	W24
	.byte		N24   , Cn1 , v096
	.byte	W24
	.byte		N07   , Gn1 , v104
	.byte	W12
	.byte		N10   , Gn1 , v112
	.byte	W12
	.byte		N18   , Cn1 , v096
	.byte	W24
/* 008   ----------------------------------------
 */	.byte		N19   , Dn1 , v112
	.byte	W24
	.byte		N13   
	.byte	W12
	.byte		N14   , An1 , v104
	.byte	W24
	.byte		N11   , An1 , v084
	.byte	W12
	.byte		N22   , Dn1 , v108
	.byte	W24
/* 009   ----------------------------------------
 */	.byte		N21   , Ds1 , v112
	.byte	W24
	.byte		N08   , Ds1 , v100
	.byte	W12
	.byte		        Ds1 , v096
	.byte	W12
	.byte		        Ds1 , v048
	.byte	W12
	.byte		N07   , Ds1 , v100
	.byte	W12
	.byte		N08   , Ds1 , v096
	.byte	W12
	.byte		N07   , Ds1 , v108
	.byte	W12
/* 010   ----------------------------------------
 */	.byte		        Ds1 , v104
	.byte	W12
	.byte		N08   , Ds1 , v112
	.byte	W12
	.byte		N07   , Ds1 , v104
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		        Ds1 , v112
	.byte	W12
	.byte		N07   , Ds1 , v080
	.byte	W12
	.byte		N09   , Ds1 , v104
	.byte	W12
/* 011   ----------------------------------------
 */	.byte		        Fn1 
	.byte	W12
	.byte		N07   , Fn1 , v112
	.byte	W12
	.byte		N06   , Fn1 , v100
	.byte	W12
	.byte		N07   , Fn1 , v096
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		N06   , Fn1 , v108
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		N08   , Fn1 , v084
	.byte	W12
/* 012   ----------------------------------------
 */	.byte		N07   , Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v096
	.byte	W12
	.byte		        Fn1 , v104
	.byte	W12
	.byte		N06   , Fn1 , v108
	.byte	W12
	.byte		N07   , Fn1 , v104
	.byte	W12
	.byte		N06   , Fn1 , v100
	.byte	W12
	.byte		N07   , Fn1 , v104
	.byte	W12
	.byte		N11   , Fn1 , v092
	.byte	W12
/* 013   ----------------------------------------
 */	.byte		N09   , Fs1 , v108
	.byte	W12
	.byte		N08   , Fs1 , v112
	.byte	W12
	.byte		        Fs1 , v116
	.byte	W12
	.byte		N07   , Fs1 , v112
	.byte	W12
	.byte		        Fs1 , v116
	.byte	W12
	.byte		N06   , Fs1 , v092
	.byte	W12
	.byte		N07   , Fs1 , v104
	.byte	W12
	.byte		        Fs1 , v112
	.byte	W12
/* 014   ----------------------------------------
 */	.byte		        Fs1 , v104
	.byte	W12
	.byte		N08   
	.byte	W12
	.byte		N07   , Fs1 , v108
	.byte	W12
	.byte		        Fs1 , v092
	.byte	W12
	.byte		        Fs1 , v108
	.byte	W12
	.byte		        Fs1 , v084
	.byte	W12
	.byte		N05   , Fs1 , v080
	.byte	W12
	.byte		N10   , Fs1 , v108
	.byte	W12
/* 015   ----------------------------------------
 */	.byte		N09   , Gs1 , v104
	.byte	W12
	.byte		N07   , Gs1 , v112
	.byte	W12
	.byte		        Gs1 , v108
	.byte	W12
	.byte		        Gs1 , v116
	.byte	W12
	.byte		N08   , Gs1 , v112
	.byte	W12
	.byte		N07   , Gs1 , v108
	.byte	W12
	.byte		N08   , Gs1 , v092
	.byte	W12
	.byte		N06   , Gs1 , v112
	.byte	W12
/* 016   ----------------------------------------
 */	.byte		N07   , Gs1 , v104
	.byte	W12
	.byte		        Gs1 , v108
	.byte	W12
	.byte		N08   , Gs1 , v100
	.byte	W12
	.byte		N07   , Gs1 , v092
	.byte	W12
	.byte		        Gs1 , v104
	.byte	W12
	.byte		N08   , Gs1 , v100
	.byte	W12
	.byte		N07   , Gs1 , v108
	.byte	W12
	.byte		N09   , Gs1 , v120
	.byte	W12
	.byte	GOTO
	 mPtr	mus_invincibility_2_B1
mus_invincibility_2_B2:
/* 017   ----------------------------------------
 */	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_invincibility_3:
	.byte	KEYSH , mus_invincibility_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 75
	.byte		VOL   , 35*mus_invincibility_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 0
	.byte	W96
mus_invincibility_3_B1:
/* 001   ----------------------------------------
 */mus_invincibility_3_001:
	.byte	W24
	.byte		N11   , An3 , v127
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N23   , An4 
	.byte	W24
	.byte	PEND
/* 002   ----------------------------------------
 */mus_invincibility_3_002:
	.byte		N32   , Gn4 , v127
	.byte	W36
	.byte		        Fs4 
	.byte	W36
	.byte		N23   , Dn4 
	.byte	W24
	.byte	PEND
/* 003   ----------------------------------------
 */	.byte		TIE   , En4 
	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W68
	.byte	W01
	.byte		EOT   
	.byte	W24
	.byte	W03
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_invincibility_3_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_invincibility_3_002
/* 007   ----------------------------------------
 */	.byte		N92   , En4 , v127
	.byte	W96
/* 008   ----------------------------------------
 */	.byte		N56   , Fs4 
	.byte	W60
	.byte		N11   , En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		TIE   , Gn4 
	.byte	W12
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */	.byte	W56
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		TIE   , An4 
	.byte	W12
/* 011   ----------------------------------------
 */	.byte	W96
/* 012   ----------------------------------------
 */	.byte	W56
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N11   , Gn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		TIE   , As4 
	.byte	W12
/* 013   ----------------------------------------
 */	.byte	W96
/* 014   ----------------------------------------
 */	.byte	W56
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N11   , An4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		TIE   , Cn5 
	.byte	W12
/* 015   ----------------------------------------
 */	.byte	W96
/* 016   ----------------------------------------
 */	.byte	W13
	.byte		EOT   
	.byte	W80
	.byte	W03
	.byte	GOTO
	 mPtr	mus_invincibility_3_B1
mus_invincibility_3_B2:
/* 017   ----------------------------------------
 */	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_invincibility_4:
	.byte	KEYSH , mus_invincibility_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 2
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 48*mus_invincibility_mvl/mxv
	.byte		LFOS  , 10
	.byte		LFODL , 0
	.byte		BENDR , 2
	.byte	W96
mus_invincibility_4_B1:
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
 */	.byte		N04   , Ds2 , v100
	.byte	W04
	.byte		        Fn2 
	.byte	W04
	.byte		        Gn2 , v104
	.byte	W04
	.byte		        As2 
	.byte	W04
	.byte		        Ds3 , v108
	.byte	W04
	.byte		        Fn3 , v096
	.byte	W04
	.byte		        Gn3 , v100
	.byte	W04
	.byte		        Fn3 , v096
	.byte	W04
	.byte		        Ds3 , v084
	.byte	W04
	.byte		        As2 , v096
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Fn3 , v088
	.byte	W04
	.byte		        Gn3 , v084
	.byte	W04
	.byte		        As3 , v112
	.byte	W04
	.byte		        Ds4 , v096
	.byte	W04
	.byte		        Fn4 , v100
	.byte	W04
	.byte		        Gn4 , v108
	.byte	W04
	.byte		        Fn4 , v100
	.byte	W04
	.byte		        Ds4 , v092
	.byte	W04
	.byte		        Fn4 , v096
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        As4 , v108
	.byte	W04
	.byte		        Ds5 , v104
	.byte	W04
	.byte		        Gn5 , v100
	.byte	W04
/* 010   ----------------------------------------
 */	.byte		        As5 , v104
	.byte	W04
	.byte		        Gn5 , v100
	.byte	W04
	.byte		        Fn5 , v080
	.byte	W04
	.byte		        Ds5 , v104
	.byte	W04
	.byte		        As4 , v088
	.byte	W04
	.byte		        Gn4 , v092
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Gn4 , v088
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        Ds5 , v084
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        Gn4 , v100
	.byte	W04
	.byte		        Ds4 , v080
	.byte	W04
	.byte		        As3 , v100
	.byte	W04
	.byte		        Gn3 , v092
	.byte	W04
	.byte		        Fn3 , v084
	.byte	W04
	.byte		        Ds3 , v100
	.byte	W04
	.byte		        Fn3 , v096
	.byte	W04
	.byte		        Gn3 , v100
	.byte	W04
	.byte		        As3 , v108
	.byte	W04
	.byte		        Gn3 , v100
	.byte	W04
	.byte		        Fn3 , v092
	.byte	W04
	.byte		        Ds3 , v104
	.byte	W04
	.byte		        As2 , v112
	.byte	W04
/* 011   ----------------------------------------
 */	.byte		        Fn2 , v100
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        An2 , v104
	.byte	W04
	.byte		        Cn3 
	.byte	W04
	.byte		        Fn3 , v108
	.byte	W04
	.byte		        Gn3 , v096
	.byte	W04
	.byte		        An3 , v100
	.byte	W04
	.byte		        Gn3 , v096
	.byte	W04
	.byte		        Fn3 , v084
	.byte	W04
	.byte		        Cn3 , v096
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        Gn3 , v088
	.byte	W04
	.byte		        An3 , v084
	.byte	W04
	.byte		        Cn4 , v112
	.byte	W04
	.byte		        Fn4 , v096
	.byte	W04
	.byte		        Gn4 , v100
	.byte	W04
	.byte		        An4 , v108
	.byte	W04
	.byte		        Gn4 , v100
	.byte	W04
	.byte		        Fn4 , v092
	.byte	W04
	.byte		        Gn4 , v096
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Cn5 , v108
	.byte	W04
	.byte		        Fn5 , v104
	.byte	W04
	.byte		        An5 , v100
	.byte	W04
/* 012   ----------------------------------------
 */	.byte		        Cn6 , v104
	.byte	W04
	.byte		        An5 , v100
	.byte	W04
	.byte		        Gn5 , v080
	.byte	W04
	.byte		        Fn5 , v104
	.byte	W04
	.byte		        Cn5 , v088
	.byte	W04
	.byte		        An4 , v092
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        An4 , v088
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Fn5 , v084
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        An4 , v100
	.byte	W04
	.byte		        Fn4 , v080
	.byte	W04
	.byte		        Cn4 , v100
	.byte	W04
	.byte		        An3 , v092
	.byte	W04
	.byte		        Gn3 , v084
	.byte	W04
	.byte		        Fn3 , v100
	.byte	W04
	.byte		        Gn3 , v096
	.byte	W04
	.byte		        An3 , v100
	.byte	W04
	.byte		        Cn4 , v108
	.byte	W04
	.byte		        An3 , v100
	.byte	W04
	.byte		        Gn3 , v092
	.byte	W04
	.byte		        Fn3 , v104
	.byte	W04
	.byte		        Cn3 , v112
	.byte	W04
/* 013   ----------------------------------------
 */	.byte		        Fs2 , v100
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        As2 , v104
	.byte	W04
	.byte		        Cs3 
	.byte	W04
	.byte		        Fs3 , v108
	.byte	W04
	.byte		        Gs3 , v096
	.byte	W04
	.byte		        As3 , v100
	.byte	W04
	.byte		        Gs3 , v096
	.byte	W04
	.byte		        Fs3 , v084
	.byte	W04
	.byte		        Cs3 , v096
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Gs3 , v088
	.byte	W04
	.byte		        As3 , v084
	.byte	W04
	.byte		        Cs4 , v112
	.byte	W04
	.byte		        Fs4 , v096
	.byte	W04
	.byte		        Gs4 , v100
	.byte	W04
	.byte		        As4 , v108
	.byte	W04
	.byte		        Gs4 , v100
	.byte	W04
	.byte		        Fs4 , v092
	.byte	W04
	.byte		        Gs4 , v096
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        Cs5 , v108
	.byte	W04
	.byte		        Fs5 , v104
	.byte	W04
	.byte		        As5 , v100
	.byte	W04
/* 014   ----------------------------------------
 */	.byte		        Cs6 , v104
	.byte	W04
	.byte		        As5 , v100
	.byte	W04
	.byte		        Gs5 , v080
	.byte	W04
	.byte		        Fs5 , v104
	.byte	W04
	.byte		        Cs5 , v088
	.byte	W04
	.byte		        As4 , v092
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        As4 , v088
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Fs5 , v084
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        As4 , v100
	.byte	W04
	.byte		        Fs4 , v080
	.byte	W04
	.byte		        Cs4 , v100
	.byte	W04
	.byte		        As3 , v092
	.byte	W04
	.byte		        Gs3 , v084
	.byte	W04
	.byte		        Fs3 , v100
	.byte	W04
	.byte		        Gs3 , v096
	.byte	W04
	.byte		        As3 , v100
	.byte	W04
	.byte		        Cs4 , v108
	.byte	W04
	.byte		        As3 , v100
	.byte	W04
	.byte		        Gs3 , v092
	.byte	W04
	.byte		        Fs3 , v104
	.byte	W04
	.byte		        Cs3 , v112
	.byte	W04
/* 015   ----------------------------------------
 */	.byte		        Gs2 , v100
	.byte	W04
	.byte		        As2 
	.byte	W04
	.byte		        Cn3 , v104
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Gs3 , v108
	.byte	W04
	.byte		        As3 , v096
	.byte	W04
	.byte		        Cn4 , v100
	.byte	W04
	.byte		        As3 , v096
	.byte	W04
	.byte		        Gs3 , v084
	.byte	W04
	.byte		        Ds3 , v096
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        As3 , v088
	.byte	W04
	.byte		        Cn4 , v084
	.byte	W04
	.byte		        Ds4 , v112
	.byte	W04
	.byte		        Gs4 , v096
	.byte	W04
	.byte		        As4 , v100
	.byte	W04
	.byte		        Cn5 , v108
	.byte	W04
	.byte		        As4 , v100
	.byte	W04
	.byte		        Gs4 , v092
	.byte	W04
	.byte		        As4 , v096
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Ds5 , v108
	.byte	W04
	.byte		        Gs5 , v104
	.byte	W04
	.byte		        Cn6 , v100
	.byte	W04
/* 016   ----------------------------------------
 */	.byte		        Ds6 , v104
	.byte	W04
	.byte		        Cn6 , v100
	.byte	W04
	.byte		        As5 , v080
	.byte	W04
	.byte		        Gs5 , v104
	.byte	W04
	.byte		        Ds5 , v088
	.byte	W04
	.byte		        Cn5 , v092
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        Cn5 , v088
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Gs5 , v084
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Cn5 , v100
	.byte	W04
	.byte		        Gs4 , v080
	.byte	W04
	.byte		        Ds4 , v100
	.byte	W04
	.byte		        Cn4 , v092
	.byte	W04
	.byte		        As3 , v084
	.byte	W04
	.byte		        Gs3 , v100
	.byte	W04
	.byte		        As3 , v096
	.byte	W04
	.byte		        Cn4 , v100
	.byte	W04
	.byte		        Ds4 , v108
	.byte	W04
	.byte		        Cn4 , v100
	.byte	W04
	.byte		        As3 , v092
	.byte	W04
	.byte		        Gs3 , v104
	.byte	W04
	.byte		        Ds3 , v112
	.byte	W04
	.byte	GOTO
	 mPtr	mus_invincibility_4_B1
mus_invincibility_4_B2:
/* 017   ----------------------------------------
 */	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_invincibility_5:
	.byte	KEYSH , mus_invincibility_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 80
	.byte		VOL   , 110*mus_invincibility_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 0
	.byte	W30
	.byte	W01
	.byte		N11   , Cn1 , v044
	.byte	W03
	.byte		N12   , Dn1 , v084
	.byte	W06
	.byte		N10   , En1 , v016
	.byte	W05
	.byte		        Fn1 , v080
	.byte	W04
	.byte		        Gn1 , v084
	.byte	W04
	.byte		        An1 , v076
	.byte	W04
	.byte		N09   , Bn1 , v084
	.byte	W04
	.byte		        Cn2 , v088
	.byte	W04
	.byte		N08   , Dn2 , v100
	.byte	W03
	.byte		N09   , En2 , v096
	.byte	W04
	.byte		        Fn2 
	.byte	W04
	.byte		        Gn2 , v100
	.byte	W03
	.byte		N10   , An2 , v096
	.byte	W04
	.byte		        Bn2 , v088
	.byte	W04
	.byte		        Cn3 , v096
	.byte	W04
	.byte		N11   , Dn3 
	.byte	W05
mus_invincibility_5_B1:
/* 001   ----------------------------------------
 */	.byte		N66   , En3 , v068
	.byte	W72
	.byte		N21   , En3 , v120
	.byte	W24
/* 002   ----------------------------------------
 */	.byte		N32   , Dn3 , v112
	.byte	W36
	.byte		N11   , Dn3 , v108
	.byte	W24
	.byte		N32   , Dn3 , v112
	.byte	W36
/* 003   ----------------------------------------
 */	.byte		N44   , En3 , v120
	.byte	W48
	.byte		N20   , En3 , v084
	.byte	W24
	.byte		N23   , En3 , v092
	.byte	W24
/* 004   ----------------------------------------
 */	.byte		N28   , Dn3 , v108
	.byte	W36
	.byte		N10   , Dn3 , v112
	.byte	W24
	.byte		N30   
	.byte	W36
/* 005   ----------------------------------------
 */	.byte		N68   , En3 
	.byte	W72
	.byte		N23   , En3 , v096
	.byte	W24
/* 006   ----------------------------------------
 */	.byte		N28   , Dn3 , v120
	.byte	W36
	.byte		N16   , Dn3 , v127
	.byte	W24
	.byte		N32   , Dn3 , v124
	.byte	W36
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
 */	.byte	W30
	.byte	W01
	.byte		N02   , Cn1 , v044
	.byte	W03
	.byte		N06   , Dn1 , v084
	.byte	W06
	.byte		N04   , En1 , v016
	.byte	W05
	.byte		N03   , Fn1 , v080
	.byte	W04
	.byte		N04   , Gn1 , v084
	.byte	W04
	.byte		N03   , An1 , v076
	.byte	W04
	.byte		        Bn1 , v084
	.byte	W04
	.byte		        Cn2 , v088
	.byte	W04
	.byte		        Dn2 , v100
	.byte	W03
	.byte		        En2 , v096
	.byte	W04
	.byte		        Fn2 
	.byte	W04
	.byte		        Gn2 , v100
	.byte	W03
	.byte		        An2 , v096
	.byte	W04
	.byte		        Bn2 , v088
	.byte	W04
	.byte		        Cn3 , v096
	.byte	W04
	.byte		N04   , Dn3 
	.byte	W05
	.byte	GOTO
	 mPtr	mus_invincibility_5_B1
mus_invincibility_5_B2:
/* 017   ----------------------------------------
 */	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_invincibility_6:
	.byte	KEYSH , mus_invincibility_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 76
	.byte		VOL   , 89*mus_invincibility_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 0
	.byte	W96
mus_invincibility_6_B1:
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
 */	.byte		N18   , Gn3 , v100
	.byte	W24
	.byte		N19   , Gn3 , v112
	.byte	W24
	.byte		N07   , Gn3 , v084
	.byte	W12
	.byte		N08   , Gn3 , v096
	.byte	W12
	.byte		N23   , Gn3 , v084
	.byte	W24
/* 008   ----------------------------------------
 */	.byte		N21   , An3 , v112
	.byte	W24
	.byte		N06   , An3 , v100
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   , Gn3 , v104
	.byte	W12
	.byte		        An3 , v112
	.byte	W12
	.byte		N32   , As3 , v124
	.byte	W12
/* 009   ----------------------------------------
 */	.byte	W24
	.byte		N40   , As3 , v127
	.byte	W48
	.byte		N20   , As3 , v104
	.byte	W24
/* 010   ----------------------------------------
 */	.byte		N23   
	.byte	W24
	.byte		N28   , As3 , v124
	.byte	W36
	.byte		N10   , An3 , v060
	.byte	W12
	.byte		N11   , As3 , v104
	.byte	W12
	.byte		N32   , Cn4 , v100
	.byte	W12
/* 011   ----------------------------------------
 */	.byte	W24
	.byte		        Cn4 , v116
	.byte	W36
	.byte		N07   , Cn4 , v076
	.byte	W12
	.byte		N18   , Cn4 , v104
	.byte	W24
/* 012   ----------------------------------------
 */	.byte		N21   , Cn4 , v116
	.byte	W24
	.byte		N06   , Cn4 , v096
	.byte	W12
	.byte		N22   , Cn4 , v120
	.byte	W24
	.byte		N10   , As3 , v100
	.byte	W12
	.byte		N11   , Cn4 , v108
	.byte	W12
	.byte		N32   , Cs4 , v120
	.byte	W12
/* 013   ----------------------------------------
 */	.byte	W24
	.byte		N21   , Cs4 , v112
	.byte	W24
	.byte		N07   , Cs4 , v096
	.byte	W12
	.byte		N32   , Cs4 , v108
	.byte	W36
/* 014   ----------------------------------------
 */	.byte		        Cs4 , v120
	.byte	W36
	.byte		N22   , Cs4 , v104
	.byte	W24
	.byte		N09   , Cn4 , v096
	.byte	W12
	.byte		N11   , Cs4 , v112
	.byte	W12
	.byte		N32   , Ds4 
	.byte	W12
/* 015   ----------------------------------------
 */	.byte	W24
	.byte		N20   , Ds4 , v120
	.byte	W24
	.byte		N08   , Ds4 , v080
	.byte	W12
	.byte		N24   , Ds4 , v116
	.byte	W36
/* 016   ----------------------------------------
 */	.byte		N28   , Ds4 , v124
	.byte	W96
	.byte	GOTO
	 mPtr	mus_invincibility_6_B1
mus_invincibility_6_B2:
/* 017   ----------------------------------------
 */	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_invincibility_7:
	.byte	KEYSH , mus_invincibility_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 78
	.byte		VOL   , 70*mus_invincibility_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 0
	.byte	W96
mus_invincibility_7_B1:
/* 001   ----------------------------------------
 */	.byte		VOL   , 65*mus_invincibility_mvl/mxv
	.byte	W48
	.byte		N14   , En4 , v120
	.byte	W48
/* 002   ----------------------------------------
 */	.byte		N10   , Dn4 , v108
	.byte	W36
	.byte		N10   
	.byte	W24
	.byte		N09   , Dn4 , v112
	.byte	W36
/* 003   ----------------------------------------
 */	.byte		        En4 
	.byte	W60
	.byte		N08   , En4 , v116
	.byte	W12
	.byte		N07   , En4 , v120
	.byte	W24
/* 004   ----------------------------------------
 */	.byte		N13   , Dn4 , v116
	.byte	W12
	.byte		N14   , Cs4 , v108
	.byte	W12
	.byte		N09   , Dn4 , v104
	.byte	W12
	.byte		N07   , Dn4 , v124
	.byte	W24
	.byte		N10   , Dn4 , v112
	.byte	W12
	.byte		N23   , Ds4 , v120
	.byte	W24
/* 005   ----------------------------------------
 */	.byte		N30   , En4 
	.byte	W36
	.byte		N06   , En4 , v116
	.byte	W60
/* 006   ----------------------------------------
 */	.byte		N09   , Dn4 , v120
	.byte	W36
	.byte		N08   , Dn4 , v116
	.byte	W60
/* 007   ----------------------------------------
 */	.byte		N06   , Gn3 , v112
	.byte	W36
	.byte		N48   , Gn3 , v116
	.byte	W60
/* 008   ----------------------------------------
 */	.byte		N08   , An3 , v120
	.byte	W36
	.byte		N36   
	.byte	W48
	.byte		VOL   , 127*mus_invincibility_mvl/mxv
	.byte		TIE   , As3 , v100
	.byte	W04
	.byte		VOL   , 122*mus_invincibility_mvl/mxv
	.byte	W08
/* 009   ----------------------------------------
 */mus_invincibility_7_009:
	.byte		VOL   , 112*mus_invincibility_mvl/mxv
	.byte	W01
	.byte		        108*mus_invincibility_mvl/mxv
	.byte	W01
	.byte		        108*mus_invincibility_mvl/mxv
	.byte	W01
	.byte		        89*mus_invincibility_mvl/mxv
	.byte	W01
	.byte		        81*mus_invincibility_mvl/mxv
	.byte	W01
	.byte		        72*mus_invincibility_mvl/mxv
	.byte	W01
	.byte		        63*mus_invincibility_mvl/mxv
	.byte	W04
	.byte		        58*mus_invincibility_mvl/mxv
	.byte	W02
	.byte		        49*mus_invincibility_mvl/mxv
	.byte	W03
	.byte		        44*mus_invincibility_mvl/mxv
	.byte	W05
	.byte		        40*mus_invincibility_mvl/mxv
	.byte	W40
	.byte		        44*mus_invincibility_mvl/mxv
	.byte	W03
	.byte		        49*mus_invincibility_mvl/mxv
	.byte	W14
	.byte		        54*mus_invincibility_mvl/mxv
	.byte	W07
	.byte		        58*mus_invincibility_mvl/mxv
	.byte	W03
	.byte		        63*mus_invincibility_mvl/mxv
	.byte	W03
	.byte		        67*mus_invincibility_mvl/mxv
	.byte	W05
	.byte		        72*mus_invincibility_mvl/mxv
	.byte	W01
	.byte	PEND
/* 010   ----------------------------------------
 */mus_invincibility_7_010:
	.byte	W06
	.byte		VOL   , 77*mus_invincibility_mvl/mxv
	.byte	W06
	.byte		        81*mus_invincibility_mvl/mxv
	.byte	W03
	.byte		        86*mus_invincibility_mvl/mxv
	.byte	W02
	.byte		        89*mus_invincibility_mvl/mxv
	.byte	W05
	.byte		        95*mus_invincibility_mvl/mxv
	.byte	W06
	.byte		        99*mus_invincibility_mvl/mxv
	.byte	W01
	.byte		        108*mus_invincibility_mvl/mxv
	.byte	W01
	.byte		        117*mus_invincibility_mvl/mxv
	.byte	W05
	.byte		        122*mus_invincibility_mvl/mxv
	.byte	W17
	.byte		        127*mus_invincibility_mvl/mxv
	.byte	W32
	.byte	PEND
	.byte		EOT   , As3 
	.byte		VOL   , 127*mus_invincibility_mvl/mxv
	.byte		TIE   , Cn4 , v100
	.byte	W04
	.byte		VOL   , 122*mus_invincibility_mvl/mxv
	.byte	W08
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_invincibility_7_009
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_invincibility_7_010
	.byte		EOT   , Cn4 
	.byte		VOL   , 127*mus_invincibility_mvl/mxv
	.byte		TIE   , Cs4 , v100
	.byte	W04
	.byte		VOL   , 122*mus_invincibility_mvl/mxv
	.byte	W08
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_invincibility_7_009
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_invincibility_7_010
	.byte		EOT   , Cs4 
	.byte		VOL   , 127*mus_invincibility_mvl/mxv
	.byte		TIE   , Ds4 , v100
	.byte	W04
	.byte		VOL   , 122*mus_invincibility_mvl/mxv
	.byte	W08
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_invincibility_7_009
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_invincibility_7_010
	.byte		EOT   , Ds4 
	.byte	W12
	.byte	GOTO
	 mPtr	mus_invincibility_7_B1
mus_invincibility_7_B2:
/* 017   ----------------------------------------
 */	.byte	FINE

/* **************** Track 8 (Midi-Chn.8) **************** */

mus_invincibility_8:
	.byte	KEYSH , mus_invincibility_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 60
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 59*mus_invincibility_mvl/mxv
	.byte		LFOS  , 10
	.byte		LFODL , 0
	.byte		BENDR , 2
	.byte	W96
mus_invincibility_8_B1:
/* 001   ----------------------------------------
 */mus_invincibility_8_001:
	.byte	W24
	.byte		N11   , Cs4 , v076
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N23   , Cs5 
	.byte	W24
	.byte	PEND
/* 002   ----------------------------------------
 */mus_invincibility_8_002:
	.byte		N32   , Bn4 , v076
	.byte	W36
	.byte		        An4 
	.byte	W36
	.byte		N23   , Fs4 
	.byte	W24
	.byte	PEND
/* 003   ----------------------------------------
 */	.byte		TIE   , An4 
	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W68
	.byte	W01
	.byte		EOT   
	.byte	W24
	.byte	W03
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_invincibility_8_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_invincibility_8_002
/* 007   ----------------------------------------
 */	.byte		N92   , Gn4 , v076
	.byte	W96
/* 008   ----------------------------------------
 */	.byte		N56   , An4 
	.byte	W60
	.byte		N11   , Gn4 
	.byte	W12
	.byte		        An4 
	.byte	W24
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
	.byte	GOTO
	 mPtr	mus_invincibility_8_B1
mus_invincibility_8_B2:
/* 017   ----------------------------------------
 */	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_invincibility):
	.byte	8	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_invincibility_pri	/* Priority */
	.byte	mus_invincibility_rev	/* Reverb */

mAlignWord
	mPtr	mus_invincibility_grp

	mPtr	mus_invincibility_1
	mPtr	mus_invincibility_2
	mPtr	mus_invincibility_3
	mPtr	mus_invincibility_4
	mPtr	mus_invincibility_5
	mPtr	mus_invincibility_6
	mPtr	mus_invincibility_7
	mPtr	mus_invincibility_8

	.end
