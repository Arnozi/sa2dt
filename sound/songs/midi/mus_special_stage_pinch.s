	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_special_stage_pinch_grp, voicegroup007
	.equ	mus_special_stage_pinch_pri, 0
	.equ	mus_special_stage_pinch_rev, reverb_set+0
	.equ	mus_special_stage_pinch_mvl, 115
	.equ	mus_special_stage_pinch_key, 0
	.equ	mus_special_stage_pinch_tbs, 1
	.equ	mus_special_stage_pinch_exg, 1
	.equ	mus_special_stage_pinch_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_special_stage_pinch)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_special_stage_pinch_1:
	.byte	KEYSH , mus_special_stage_pinch_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 154*mus_special_stage_pinch_tbs/2
	.byte		VOICE , 45
	.byte		VOL   , 127*mus_special_stage_pinch_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		N08   , As1 , v108
	.byte	W12
	.byte		N07   , As1 , v096
	.byte	W12
	.byte		N08   , As1 , v092
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        As1 , v084
	.byte	W12
	.byte		N10   , As2 
	.byte	W12
	.byte		        Fn2 , v088
	.byte	W12
	.byte		N09   , As1 , v096
	.byte	W12
/* 001   ----------------------------------------
 */	.byte	TEMPO , 156*mus_special_stage_pinch_tbs/2
	.byte		N08   , As1 , v108
	.byte	W12
	.byte		N07   , As1 , v096
	.byte	W12
	.byte		N08   , As1 , v092
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        As1 , v084
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        As1 , v088
	.byte	W12
	.byte		N06   , As1 , v080
	.byte	W12
/* 002   ----------------------------------------
 */	.byte	TEMPO , 158*mus_special_stage_pinch_tbs/2
	.byte		N08   , As1 , v108
	.byte	W12
	.byte		N07   , As1 , v096
	.byte	W12
	.byte		N08   , As1 , v092
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        As1 , v084
	.byte	W12
	.byte		N10   , As2 
	.byte	W12
	.byte		        Fn2 , v088
	.byte	W12
	.byte		N09   , As1 , v096
	.byte	W12
/* 003   ----------------------------------------
 */	.byte	TEMPO , 162*mus_special_stage_pinch_tbs/2
	.byte		N08   , As1 , v108
	.byte	W12
	.byte		N07   , As1 , v096
	.byte	W12
	.byte		N08   , As1 , v092
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        As1 , v084
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        As1 , v088
	.byte	W12
	.byte		N06   , As1 , v080
	.byte	W12
/* 004   ----------------------------------------
 */	.byte	TEMPO , 164*mus_special_stage_pinch_tbs/2
	.byte		N08   , Bn1 , v108
	.byte	W12
	.byte		N07   , Bn1 , v096
	.byte	W12
	.byte		N08   , Bn1 , v092
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Bn1 , v084
	.byte	W12
	.byte		N08   , Bn2 
	.byte	W12
	.byte		        Fs2 , v088
	.byte	W12
	.byte		N09   , Bn1 , v096
	.byte	W12
/* 005   ----------------------------------------
 */	.byte	TEMPO , 168*mus_special_stage_pinch_tbs/2
	.byte		N08   , Bn1 , v108
	.byte	W12
	.byte		N07   , Bn1 , v096
	.byte	W12
	.byte		N08   , Bn1 , v092
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Bn1 , v084
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Bn1 , v088
	.byte	W12
	.byte		N06   , Bn1 , v080
	.byte	W12
/* 006   ----------------------------------------
 */mus_special_stage_pinch_1_006:
	.byte		N08   , Bn1 , v108
	.byte	W12
	.byte		N07   , Bn1 , v096
	.byte	W12
	.byte		N08   , Bn1 , v092
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Bn1 , v084
	.byte	W12
	.byte		N08   , Bn2 
	.byte	W12
	.byte		        Fs2 , v088
	.byte	W12
	.byte		N09   , Bn1 , v096
	.byte	W12
	.byte	PEND
/* 007   ----------------------------------------
 */mus_special_stage_pinch_1_007:
	.byte		N08   , Bn1 , v108
	.byte	W12
	.byte		N07   , Bn1 , v096
	.byte	W12
	.byte		N08   , Bn1 , v092
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Bn1 , v084
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Bn1 , v088
	.byte	W12
	.byte		N06   , Bn1 , v080
	.byte	W12
	.byte	PEND
mus_special_stage_pinch_1_B1:
/* 008   ----------------------------------------
 */mus_special_stage_pinch_1_008:
	.byte		N08   , As1 , v108
	.byte	W12
	.byte		N07   , As1 , v096
	.byte	W12
	.byte		N08   , As1 , v092
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        As1 , v084
	.byte	W12
	.byte		N10   , As2 
	.byte	W12
	.byte		        Fn2 , v088
	.byte	W12
	.byte		N09   , As1 , v096
	.byte	W12
	.byte	PEND
/* 009   ----------------------------------------
 */mus_special_stage_pinch_1_009:
	.byte		N08   , As1 , v108
	.byte	W12
	.byte		N07   , As1 , v096
	.byte	W12
	.byte		N08   , As1 , v092
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        As1 , v084
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        As1 , v088
	.byte	W12
	.byte		N06   , As1 , v080
	.byte	W12
	.byte	PEND
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_pinch_1_008
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_pinch_1_009
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_pinch_1_006
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_pinch_1_007
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_pinch_1_006
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_pinch_1_007
	.byte	GOTO
	 mPtr	mus_special_stage_pinch_1_B1
mus_special_stage_pinch_1_B2:
/* 016   ----------------------------------------
 */	.byte		N06   , Bn1 , v080
	.byte	W06
	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_special_stage_pinch_2:
	.byte	KEYSH , mus_special_stage_pinch_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 127
	.byte		VOL   , 100*mus_special_stage_pinch_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		N05   , Dn1 , v048
	.byte		N60   , Cs2 , v127
	.byte		N06   , Ds2 
	.byte	W06
	.byte		N01   , Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte		N24   , Fn2 , v127
	.byte	W12
	.byte		N06   , Dn1 , v048
	.byte		N06   , Ds2 , v127
	.byte		N24   , Fs2 
	.byte	W06
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte		N36   , Cs2 , v127
	.byte	W12
/* 001   ----------------------------------------
 */mus_special_stage_pinch_2_001:
	.byte		N06   , Dn1 , v048
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N06   , Ds2 , v127
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Dn1 , v048
	.byte		N12   , Bn2 , v127
	.byte	W06
	.byte		        En1 , v048
	.byte	W06
	.byte		N06   , Bn2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte		N06   , Ds2 , v127
	.byte		N06   , As2 
	.byte	W06
	.byte		        Dn1 , v048
	.byte		N12   , As2 , v127
	.byte	W06
	.byte		        En1 , v048
	.byte	W06
	.byte		N06   , As2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte		N06   , Ds2 , v127
	.byte		N06   , An2 
	.byte	W06
	.byte		        Dn1 , v048
	.byte		N06   , An2 , v127
	.byte	W06
	.byte		N12   , En1 , v048
	.byte		N06   , Gs2 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
/* 002   ----------------------------------------
 */mus_special_stage_pinch_2_002:
	.byte		N06   , Dn1 , v048
	.byte		N60   , Cs2 , v127
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte		N24   , Fn2 , v127
	.byte	W12
	.byte		N06   , Dn1 , v048
	.byte		N06   , Ds2 , v127
	.byte		N24   , Fs2 
	.byte	W06
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte		N36   , Cs2 , v127
	.byte	W12
	.byte	PEND
/* 003   ----------------------------------------
 */mus_special_stage_pinch_2_003:
	.byte		N06   , Dn1 , v048
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte	PEND
/* 004   ----------------------------------------
 */mus_special_stage_pinch_2_004:
	.byte		N05   , Dn1 , v048
	.byte		N60   , Cs2 , v127
	.byte		N06   , Ds2 
	.byte	W06
	.byte		N01   , Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte		N24   , Fn2 , v127
	.byte	W12
	.byte		N06   , Dn1 , v048
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte		N36   , Cs2 , v127
	.byte	W12
	.byte	PEND
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_pinch_2_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_pinch_2_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_pinch_2_003
mus_special_stage_pinch_2_B1:
/* 008   ----------------------------------------
 */	.byte		N05   , Dn1 , v048
	.byte		N60   , Cs2 , v127
	.byte		N06   , Ds2 
	.byte	W06
	.byte		N01   , Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte		N24   , Fn2 , v127
	.byte	W12
	.byte		N06   , Dn1 , v048
	.byte		N06   , Ds2 , v127
	.byte		N24   , Fs2 
	.byte	W06
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte		N36   , Cs2 , v127
	.byte	W12
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_pinch_2_001
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_pinch_2_002
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_pinch_2_003
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_pinch_2_004
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_pinch_2_001
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_pinch_2_002
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_pinch_2_003
	.byte	GOTO
	 mPtr	mus_special_stage_pinch_2_B1
mus_special_stage_pinch_2_B2:
/* 016   ----------------------------------------
 */	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_special_stage_pinch_3:
	.byte	KEYSH , mus_special_stage_pinch_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 80
	.byte		VOL   , 127*mus_special_stage_pinch_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 55
	.byte		LFODL , 0
	.byte		MOD   , 35
	.byte		MODT  , 2
	.byte	PRIO  , 30
	.byte		N84   , Fn3 , v116
	.byte	W84
	.byte		TIE   , Ds3 
	.byte	W12
/* 001   ----------------------------------------
 */	.byte	W96
	.byte		EOT   
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */mus_special_stage_pinch_3_004:
	.byte		N84   , Fs3 , v116
	.byte	W84
	.byte		TIE   , En3 
	.byte	W12
	.byte	PEND
/* 005   ----------------------------------------
 */	.byte	W96
	.byte		EOT   
/* 006   ----------------------------------------
 */	.byte	W96
/* 007   ----------------------------------------
 */	.byte	W96
mus_special_stage_pinch_3_B1:
/* 008   ----------------------------------------
 */	.byte		N84   , Fn3 , v116
	.byte	W84
	.byte		TIE   , Ds3 
	.byte	W12
/* 009   ----------------------------------------
 */	.byte	W96
	.byte		EOT   
/* 010   ----------------------------------------
 */	.byte	W96
/* 011   ----------------------------------------
 */	.byte	W96
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_pinch_3_004
/* 013   ----------------------------------------
 */	.byte	W96
	.byte		EOT   , En3 
/* 014   ----------------------------------------
 */	.byte	W96
/* 015   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_special_stage_pinch_3_B1
mus_special_stage_pinch_3_B2:
/* 016   ----------------------------------------
 */	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_special_stage_pinch_4:
	.byte	KEYSH , mus_special_stage_pinch_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 12
	.byte		VOL   , 45*mus_special_stage_pinch_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 23
	.byte		LFODL , 22
	.byte		MOD   , 4
	.byte		MODT  , 0
	.byte		N04   , As1 , v120
	.byte	W04
	.byte		        Cn2 , v104
	.byte	W04
	.byte		        Dn2 , v100
	.byte	W04
	.byte		        Fn2 
	.byte	W04
	.byte		        Gn2 , v096
	.byte	W04
	.byte		        As2 , v092
	.byte	W04
	.byte		        Cn3 
	.byte	W04
	.byte		        Dn3 , v104
	.byte	W04
	.byte		        Fn3 , v096
	.byte	W04
	.byte		        Gn3 , v104
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        Cn4 , v096
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Fn4 , v100
	.byte	W04
	.byte		        Gn4 , v104
	.byte	W04
	.byte		        As4 , v096
	.byte	W04
	.byte		        Cn5 , v092
	.byte	W04
	.byte		        Dn5 , v096
	.byte	W04
	.byte		        Fn5 , v092
	.byte	W04
	.byte		        Gn5 , v104
	.byte	W04
	.byte		        As5 , v116
	.byte	W04
	.byte		        Gs5 , v100
	.byte	W04
	.byte		        Cn6 , v096
	.byte	W04
	.byte		        As5 , v104
	.byte	W04
/* 001   ----------------------------------------
 */mus_special_stage_pinch_4_001:
	.byte		N04   , Gs5 , v100
	.byte	W04
	.byte		        Fn5 , v096
	.byte	W04
	.byte		        Ds5 , v104
	.byte	W04
	.byte		        Cn5 , v092
	.byte	W04
	.byte		        As4 , v084
	.byte	W04
	.byte		        Gs4 , v112
	.byte	W04
	.byte		        Fn4 , v092
	.byte	W04
	.byte		        Ds4 , v096
	.byte	W04
	.byte		        Cn4 , v092
	.byte	W04
	.byte		        As3 , v104
	.byte	W04
	.byte		        Gs3 , v100
	.byte	W04
	.byte		        Fn3 , v104
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Cn3 , v092
	.byte	W04
	.byte		        As2 , v108
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        Fn2 , v092
	.byte	W04
	.byte		        Ds2 , v108
	.byte	W04
	.byte		        Cn2 , v104
	.byte	W04
	.byte		        As1 , v120
	.byte	W04
	.byte		        Gs1 , v108
	.byte	W04
	.byte		        As1 
	.byte	W04
	.byte		        Cn2 , v096
	.byte	W04
	.byte		        As1 , v116
	.byte	W04
	.byte	PEND
/* 002   ----------------------------------------
 */mus_special_stage_pinch_4_002:
	.byte		N04   , Gn1 , v108
	.byte	W04
	.byte		        As1 , v104
	.byte	W04
	.byte		        Cn2 , v088
	.byte	W04
	.byte		        Ds2 , v096
	.byte	W04
	.byte		        Fn2 
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        As2 , v104
	.byte	W04
	.byte		        Cn3 , v096
	.byte	W04
	.byte		        Ds3 , v100
	.byte	W04
	.byte		        Fn3 , v084
	.byte	W04
	.byte		        Gn3 , v100
	.byte	W04
	.byte		        As3 , v112
	.byte	W04
	.byte		        Cn4 , v096
	.byte	W04
	.byte		        Ds4 , v108
	.byte	W04
	.byte		        Fn4 , v096
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        As4 , v100
	.byte	W04
	.byte		        Cn5 , v096
	.byte	W04
	.byte		        Ds5 , v104
	.byte	W04
	.byte		        Fn5 , v084
	.byte	W04
	.byte		        Gn5 , v096
	.byte	W04
	.byte		        Gs5 , v116
	.byte	W04
	.byte		        As5 , v104
	.byte	W04
	.byte		        Gs5 , v096
	.byte	W04
	.byte	PEND
/* 003   ----------------------------------------
 */mus_special_stage_pinch_4_003:
	.byte		N04   , Fn5 , v088
	.byte	W04
	.byte		        Dn5 , v096
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        As4 , v100
	.byte	W04
	.byte		        Gs4 , v116
	.byte	W04
	.byte		        Fn4 , v096
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Cn4 , v088
	.byte	W04
	.byte		        As3 , v108
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Fn3 , v096
	.byte	W04
	.byte		        Dn3 , v092
	.byte	W04
	.byte		        Cn3 , v084
	.byte	W04
	.byte		        As2 , v092
	.byte	W04
	.byte		        Gs2 , v096
	.byte	W04
	.byte		        Fn2 , v084
	.byte	W04
	.byte		        Dn2 , v096
	.byte	W04
	.byte		        Cn2 
	.byte	W04
	.byte		        As1 , v104
	.byte	W04
	.byte		        Gs1 , v108
	.byte	W04
	.byte		        Fn1 , v096
	.byte	W04
	.byte		        Dn1 , v104
	.byte	W04
	.byte		        As0 , v116
	.byte	W08
	.byte	PEND
/* 004   ----------------------------------------
 */mus_special_stage_pinch_4_004:
	.byte		N04   , Bn1 , v120
	.byte	W04
	.byte		        Cs2 , v104
	.byte	W04
	.byte		        Ds2 , v100
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Gs2 , v096
	.byte	W04
	.byte		        Bn2 , v092
	.byte	W04
	.byte		        Cs3 
	.byte	W04
	.byte		        Ds3 , v104
	.byte	W04
	.byte		        Fs3 , v096
	.byte	W04
	.byte		        Gs3 , v104
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Cs4 , v096
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Fs4 , v100
	.byte	W04
	.byte		        Gs4 , v104
	.byte	W04
	.byte		        Bn4 , v096
	.byte	W04
	.byte		        Cs5 , v092
	.byte	W04
	.byte		        Ds5 , v096
	.byte	W04
	.byte		        Fs5 , v092
	.byte	W04
	.byte		        Gs5 , v104
	.byte	W04
	.byte		        Bn5 , v116
	.byte	W04
	.byte		        An5 , v100
	.byte	W04
	.byte		        Cs6 , v096
	.byte	W04
	.byte		        Bn5 , v104
	.byte	W04
	.byte	PEND
/* 005   ----------------------------------------
 */mus_special_stage_pinch_4_005:
	.byte		N04   , An5 , v100
	.byte	W04
	.byte		        Fs5 , v096
	.byte	W04
	.byte		        En5 , v104
	.byte	W04
	.byte		        Cs5 , v092
	.byte	W04
	.byte		        Bn4 , v084
	.byte	W04
	.byte		        An4 , v112
	.byte	W04
	.byte		        Fs4 , v092
	.byte	W04
	.byte		        En4 , v096
	.byte	W04
	.byte		        Cs4 , v092
	.byte	W04
	.byte		        Bn3 , v104
	.byte	W04
	.byte		        An3 , v100
	.byte	W04
	.byte		        Fs3 , v104
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Cs3 , v092
	.byte	W04
	.byte		        Bn2 , v108
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Fs2 , v092
	.byte	W04
	.byte		        En2 , v108
	.byte	W04
	.byte		        Cs2 , v104
	.byte	W04
	.byte		        Bn1 , v120
	.byte	W04
	.byte		        An1 , v108
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte		        Cs2 , v096
	.byte	W04
	.byte		        Bn1 , v116
	.byte	W04
	.byte	PEND
/* 006   ----------------------------------------
 */mus_special_stage_pinch_4_006:
	.byte		N04   , Gs1 , v108
	.byte	W04
	.byte		        Bn1 , v104
	.byte	W04
	.byte		        Cs2 , v088
	.byte	W04
	.byte		        En2 , v096
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        Bn2 , v104
	.byte	W04
	.byte		        Cs3 , v096
	.byte	W04
	.byte		        En3 , v100
	.byte	W04
	.byte		        Fs3 , v084
	.byte	W04
	.byte		        Gs3 , v100
	.byte	W04
	.byte		        Bn3 , v112
	.byte	W04
	.byte		        Cs4 , v096
	.byte	W04
	.byte		        En4 , v108
	.byte	W04
	.byte		        Fs4 , v096
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Bn4 , v100
	.byte	W04
	.byte		        Cs5 , v096
	.byte	W04
	.byte		        En5 , v104
	.byte	W04
	.byte		        Fs5 , v084
	.byte	W04
	.byte		        Gs5 , v096
	.byte	W04
	.byte		        An5 , v116
	.byte	W04
	.byte		        Bn5 , v104
	.byte	W04
	.byte		        An5 , v096
	.byte	W04
	.byte	PEND
/* 007   ----------------------------------------
 */mus_special_stage_pinch_4_007:
	.byte		N04   , Fs5 , v088
	.byte	W04
	.byte		        Ds5 , v096
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Bn4 , v100
	.byte	W04
	.byte		        An4 , v116
	.byte	W04
	.byte		        Fs4 , v096
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Cs4 , v088
	.byte	W04
	.byte		        Bn3 , v108
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Fs3 , v096
	.byte	W04
	.byte		        Ds3 , v092
	.byte	W04
	.byte		        Cs3 , v084
	.byte	W04
	.byte		        Bn2 , v092
	.byte	W04
	.byte		        An2 , v096
	.byte	W04
	.byte		        Fs2 , v084
	.byte	W04
	.byte		        Ds2 , v096
	.byte	W04
	.byte		        Cs2 
	.byte	W04
	.byte		        Bn1 , v104
	.byte	W04
	.byte		        An1 , v108
	.byte	W04
	.byte		        Fs1 , v096
	.byte	W04
	.byte		        Ds1 , v104
	.byte	W04
	.byte		        Bn0 , v116
	.byte	W08
	.byte	PEND
mus_special_stage_pinch_4_B1:
/* 008   ----------------------------------------
 */	.byte		N04   , As1 , v120
	.byte	W04
	.byte		        Cn2 , v104
	.byte	W04
	.byte		        Dn2 , v100
	.byte	W04
	.byte		        Fn2 
	.byte	W04
	.byte		        Gn2 , v096
	.byte	W04
	.byte		        As2 , v092
	.byte	W04
	.byte		        Cn3 
	.byte	W04
	.byte		        Dn3 , v104
	.byte	W04
	.byte		        Fn3 , v096
	.byte	W04
	.byte		        Gn3 , v104
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        Cn4 , v096
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Fn4 , v100
	.byte	W04
	.byte		        Gn4 , v104
	.byte	W04
	.byte		        As4 , v096
	.byte	W04
	.byte		        Cn5 , v092
	.byte	W04
	.byte		        Dn5 , v096
	.byte	W04
	.byte		        Fn5 , v092
	.byte	W04
	.byte		        Gn5 , v104
	.byte	W04
	.byte		        As5 , v116
	.byte	W04
	.byte		        Gs5 , v100
	.byte	W04
	.byte		        Cn6 , v096
	.byte	W04
	.byte		        As5 , v104
	.byte	W04
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_pinch_4_001
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_pinch_4_002
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_pinch_4_003
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_pinch_4_004
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_pinch_4_005
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_pinch_4_006
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_pinch_4_007
	.byte	GOTO
	 mPtr	mus_special_stage_pinch_4_B1
mus_special_stage_pinch_4_B2:
/* 016   ----------------------------------------
 */	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_special_stage_pinch_5:
	.byte	KEYSH , mus_special_stage_pinch_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 87
	.byte		VOL   , 80*mus_special_stage_pinch_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 55
	.byte		LFODL , 0
	.byte		MOD   , 35
	.byte		MODT  , 2
	.byte	PRIO  , 30
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */mus_special_stage_pinch_5_002:
	.byte		N80   , Dn3 , v080
	.byte		N80   , Fn3 , v100
	.byte		N80   , As3 
	.byte	W84
	.byte		TIE   , Cn3 
	.byte		TIE   , Gs3 , v116
	.byte	W12
	.byte	PEND
/* 003   ----------------------------------------
 */	.byte	W84
	.byte	W03
	.byte		EOT   , Cn3 
	.byte		        Gs3 
	.byte	W09
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */mus_special_stage_pinch_5_006:
	.byte		N80   , Ds3 , v080
	.byte		N80   , Fs3 , v100
	.byte		N80   , Bn3 
	.byte	W84
	.byte		N56   , Cs3 
	.byte		TIE   , An3 , v116
	.byte	W12
	.byte	PEND
/* 007   ----------------------------------------
 */mus_special_stage_pinch_5_007:
	.byte	W44
	.byte	W02
	.byte		N04   , Cn3 , v024
	.byte	W04
	.byte		N03   , As2 , v048
	.byte	W02
	.byte		N02   , Gs2 , v080
	.byte	W02
	.byte		        Fs2 , v064
	.byte	W03
	.byte		        Fn2 
	.byte	W02
	.byte		        Ds2 , v072
	.byte	W02
	.byte		        Cs2 , v092
	.byte	W02
	.byte		        Cn2 , v100
	.byte	W02
	.byte		N01   , As1 , v108
	.byte	W01
	.byte		        Gs1 , v100
	.byte	W03
	.byte		        Fs1 , v044
	.byte	W02
	.byte		N08   , Fn1 , v028
	.byte	W07
	.byte		N02   , Fs1 , v084
	.byte	W02
	.byte		        Gs1 , v092
	.byte	W02
	.byte		        As1 , v084
	.byte	W02
	.byte		        Cn2 , v092
	.byte	W01
	.byte		        Cs2 
	.byte	W02
	.byte		        Ds2 , v064
	.byte	W01
	.byte		        Fn2 , v048
	.byte	W02
	.byte		        Fs2 , v080
	.byte	W02
	.byte		N01   , Gs2 , v072
	.byte	W01
	.byte	PEND
	.byte		EOT   , An3 
	.byte		N02   , As2 , v064
	.byte	W01
	.byte		N01   , Cn3 , v056
	.byte	W02
mus_special_stage_pinch_5_B1:
/* 008   ----------------------------------------
 */	.byte	W96
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_pinch_5_002
/* 011   ----------------------------------------
 */	.byte	W84
	.byte	W03
	.byte		EOT   , Cn3 
	.byte		        Gs3 
	.byte	W09
/* 012   ----------------------------------------
 */	.byte	W96
/* 013   ----------------------------------------
 */	.byte	W96
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_pinch_5_006
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_pinch_5_007
	.byte		EOT   , An3 
	.byte		N02   , As2 , v064
	.byte	W01
	.byte		N01   , Cn3 , v056
	.byte	W02
	.byte	GOTO
	 mPtr	mus_special_stage_pinch_5_B1
mus_special_stage_pinch_5_B2:
/* 016   ----------------------------------------
 */	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_special_stage_pinch):
	.byte	5	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_special_stage_pinch_pri	/* Priority */
	.byte	mus_special_stage_pinch_rev	/* Reverb */

mAlignWord
	mPtr	mus_special_stage_pinch_grp

	mPtr	mus_special_stage_pinch_1
	mPtr	mus_special_stage_pinch_2
	mPtr	mus_special_stage_pinch_3
	mPtr	mus_special_stage_pinch_4
	mPtr	mus_special_stage_pinch_5

	.end
