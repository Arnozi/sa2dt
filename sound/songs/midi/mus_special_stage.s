	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_special_stage_grp, voicegroup007
	.equ	mus_special_stage_pri, 0
	.equ	mus_special_stage_rev, reverb_set+0
	.equ	mus_special_stage_mvl, 115
	.equ	mus_special_stage_key, 0
	.equ	mus_special_stage_tbs, 1
	.equ	mus_special_stage_exg, 1
	.equ	mus_special_stage_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_special_stage)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_special_stage_1:
	.byte	KEYSH , mus_special_stage_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 154*mus_special_stage_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 100*mus_special_stage_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		N05   , Dn1 , v048
	.byte		N60   , Cs2 , v127
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte		N06   , Ds2 , v052
	.byte		N24   , Fn2 , v127
	.byte	W12
	.byte		N06   , Dn1 , v048
	.byte		N06   , Ds2 , v088
	.byte		N24   , Fs2 , v127
	.byte	W06
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte		N36   , Cs2 , v127
	.byte		N06   , Ds2 
	.byte	W12
/* 001   ----------------------------------------
 */	.byte		        Dn1 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N06   , Bn2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte		N12   , Bn2 , v127
	.byte	W06
	.byte		        En1 , v048
	.byte	W06
	.byte		N06   , Bn2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte		N06   , As2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte		N12   , As2 , v127
	.byte	W06
	.byte		        En1 , v048
	.byte	W06
	.byte		N06   , As2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte		N06   , An2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte		N06   , An2 , v127
	.byte	W06
	.byte		N12   , En1 , v048
	.byte		N06   , Gs2 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
/* 002   ----------------------------------------
 */	.byte		        Dn1 , v048
	.byte		N60   , Cs2 , v127
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte		N06   , Ds2 , v052
	.byte		N24   , Fn2 , v127
	.byte	W12
	.byte		N06   , Dn1 , v048
	.byte		N06   , Ds2 , v088
	.byte		N24   , Fs2 , v127
	.byte	W06
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte		N36   , Cs2 , v127
	.byte		N06   , Ds2 
	.byte	W12
/* 003   ----------------------------------------
 */	.byte		        Dn1 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , En1 
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v048
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		N12   , En1 , v048
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v048
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
mus_special_stage_1_B1:
/* 004   ----------------------------------------
 */	.byte		N06   , Dn1 , v048
	.byte		N96   , Cs2 , v120
	.byte		N12   , Ds2 , v127
	.byte	W06
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N12   , Ds2 , v127
	.byte		N24   , En2 
	.byte	W06
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N12   , Ds2 , v127
	.byte	W06
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N12   , Ds2 , v127
	.byte		N24   , En2 
	.byte	W06
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
/* 005   ----------------------------------------
 */mus_special_stage_1_005:
	.byte		N06   , Dn1 , v048
	.byte		N12   , Ds2 , v127
	.byte	W06
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N12   , Ds2 , v127
	.byte		N24   , En2 
	.byte	W06
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N12   , Ds2 , v127
	.byte	W06
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N12   , Ds2 , v127
	.byte		N24   , En2 
	.byte	W06
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte	PEND
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 037   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 038   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 040   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 041   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 042   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
/* 043   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_1_005
	.byte	GOTO
	 mPtr	mus_special_stage_1_B1
mus_special_stage_1_B2:
/* 044   ----------------------------------------
 */	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_special_stage_2:
	.byte	KEYSH , mus_special_stage_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 45
	.byte		VOL   , 127*mus_special_stage_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		N56   , As1 , v096
	.byte	W60
	.byte		N11   , As2 , v112
	.byte	W12
	.byte		        Fn2 , v084
	.byte	W12
	.byte		TIE   , As1 , v096
	.byte	W12
/* 001   ----------------------------------------
 */	.byte	W88
	.byte	W01
	.byte		EOT   
	.byte	W07
/* 002   ----------------------------------------
 */	.byte		N56   , As1 , v104
	.byte	W60
	.byte		N11   , As2 
	.byte	W12
	.byte		        Fn2 , v076
	.byte	W12
	.byte		N64   , As1 , v092
	.byte	W12
/* 003   ----------------------------------------
 */	.byte	W60
	.byte		N11   , As1 , v100
	.byte	W12
	.byte		        Cn2 , v072
	.byte	W12
	.byte		        Dn2 , v104
	.byte	W12
mus_special_stage_2_B1:
/* 004   ----------------------------------------
 */mus_special_stage_2_004:
	.byte		N08   , Ds2 , v108
	.byte	W12
	.byte		N07   , Ds2 , v096
	.byte	W12
	.byte		N08   , Ds2 , v092
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Ds2 , v084
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Ds2 , v088
	.byte	W12
	.byte		N06   , Ds2 , v080
	.byte	W12
	.byte	PEND
/* 005   ----------------------------------------
 */mus_special_stage_2_005:
	.byte		N07   , Ds2 , v080
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Ds2 , v084
	.byte	W12
	.byte		        Ds2 , v080
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		N06   , Ds2 , v088
	.byte	W12
	.byte		N07   , Ds2 , v084
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte	PEND
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_2_004
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_2_005
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_2_004
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_2_005
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_2_004
/* 011   ----------------------------------------
 */mus_special_stage_2_011:
	.byte		N07   , Ds2 , v080
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Ds2 , v084
	.byte	W12
	.byte		        Ds2 , v080
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		N06   , Ds2 , v088
	.byte	W12
	.byte		N07   , Dn2 , v084
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte	PEND
/* 012   ----------------------------------------
 */mus_special_stage_2_012:
	.byte		N08   , Cn2 , v108
	.byte	W12
	.byte		N07   , Cn2 , v096
	.byte	W12
	.byte		N08   , Cn2 , v092
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Cn2 , v084
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Cn2 , v088
	.byte	W12
	.byte		N06   , Cn2 , v080
	.byte	W12
	.byte	PEND
/* 013   ----------------------------------------
 */mus_special_stage_2_013:
	.byte		N07   , Cn2 , v080
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Cn2 , v084
	.byte	W12
	.byte		        Cn2 , v080
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		N06   , Cn2 , v088
	.byte	W12
	.byte		N07   , Cn2 , v084
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte	PEND
/* 014   ----------------------------------------
 */mus_special_stage_2_014:
	.byte		N08   , Cs2 , v108
	.byte	W12
	.byte		N07   , Cs2 , v096
	.byte	W12
	.byte		N08   , Cs2 , v092
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Cs2 , v084
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Cs2 , v088
	.byte	W12
	.byte		N06   , Cs2 , v080
	.byte	W12
	.byte	PEND
/* 015   ----------------------------------------
 */mus_special_stage_2_015:
	.byte		N07   , Cs2 , v080
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Cs2 , v084
	.byte	W12
	.byte		        Cs2 , v080
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		N06   , Cs2 , v088
	.byte	W12
	.byte		N07   , Cs2 , v084
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte	PEND
/* 016   ----------------------------------------
 */mus_special_stage_2_016:
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
/* 017   ----------------------------------------
 */mus_special_stage_2_017:
	.byte		N07   , Bn1 , v080
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Bn1 , v084
	.byte	W12
	.byte		        Bn1 , v080
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		N06   , Bn1 , v088
	.byte	W12
	.byte		N07   , Bn1 , v084
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte	PEND
/* 018   ----------------------------------------
 */mus_special_stage_2_018:
	.byte		N08   , Gs2 , v108
	.byte	W12
	.byte		N07   , Gs2 , v096
	.byte	W12
	.byte		N08   , Gs2 , v092
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Gs2 , v084
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Gs2 , v088
	.byte	W12
	.byte		N06   , Gs2 , v080
	.byte	W12
	.byte	PEND
/* 019   ----------------------------------------
 */	.byte		N07   , Cs2 
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Ds2 , v084
	.byte	W12
	.byte		        Cs2 , v080
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		N06   , Cs2 , v088
	.byte	W12
	.byte		N07   , Dn2 , v084
	.byte	W12
	.byte		N19   , Ds2 
	.byte	W12
/* 020   ----------------------------------------
 */	.byte	W12
	.byte		N07   , Ds2 , v096
	.byte	W12
	.byte		N08   , Ds2 , v092
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Ds2 , v084
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Ds2 , v088
	.byte	W12
	.byte		N06   , Ds2 , v080
	.byte	W12
/* 021   ----------------------------------------
 */	.byte		N07   , Ds2 , v096
	.byte	W12
	.byte		N08   , Ds2 , v092
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Ds2 , v084
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Ds2 , v088
	.byte	W12
	.byte		N06   , Ds2 , v080
	.byte	W12
	.byte		N06   
	.byte	W12
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_2_004
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_2_005
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_2_004
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_2_005
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_2_004
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_2_011
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_2_012
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_2_013
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_2_014
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_2_015
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_2_016
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_2_017
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_2_018
/* 035   ----------------------------------------
 */	.byte		N07   , Cs2 , v080
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Ds2 , v084
	.byte	W12
	.byte		        Cs2 , v080
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N06   , Cs2 , v088
	.byte	W12
	.byte		N07   , Gs2 , v084
	.byte	W12
	.byte		        Cs2 
	.byte	W12
/* 036   ----------------------------------------
 */	.byte		        Dn2 , v096
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		N08   , Dn2 , v092
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Dn2 , v084
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Dn2 , v088
	.byte	W12
	.byte		N06   , Dn2 , v080
	.byte	W12
/* 037   ----------------------------------------
 */	.byte		N07   , Dn2 , v096
	.byte	W12
	.byte		N08   , Dn2 , v092
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Dn2 , v084
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Dn2 , v088
	.byte	W12
	.byte		N06   , Dn2 , v080
	.byte	W12
	.byte		N06   
	.byte	W12
/* 038   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_2_004
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_2_005
/* 040   ----------------------------------------
 */	.byte		N08   , Fs2 , v108
	.byte	W12
	.byte		N07   , Fs2 , v096
	.byte	W12
	.byte		N08   , Fs2 , v092
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Fs2 , v084
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Fs2 , v088
	.byte	W12
	.byte		N06   , Fs2 , v080
	.byte	W12
/* 041   ----------------------------------------
 */	.byte		N07   
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Fs2 , v084
	.byte	W12
	.byte		        Fs2 , v080
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		N06   , Fs2 , v088
	.byte	W12
	.byte		N07   , Fs2 , v084
	.byte	W12
	.byte		N07   
	.byte	W12
/* 042   ----------------------------------------
 */	.byte		N08   , As2 , v108
	.byte	W12
	.byte		N07   , As2 , v096
	.byte	W12
	.byte		N08   , As2 , v092
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        As2 , v084
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        As2 , v088
	.byte	W12
	.byte		N06   , As2 , v080
	.byte	W12
/* 043   ----------------------------------------
 */	.byte		N07   , As1 
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		        Cn2 , v084
	.byte	W12
	.byte		        As1 , v080
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N06   , As1 , v088
	.byte	W12
	.byte		N07   , Fn2 , v084
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte	GOTO
	 mPtr	mus_special_stage_2_B1
mus_special_stage_2_B2:
/* 044   ----------------------------------------
 */	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_special_stage_3:
	.byte	KEYSH , mus_special_stage_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 80
	.byte		VOL   , 127*mus_special_stage_mvl/mxv
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
mus_special_stage_3_B1:
/* 004   ----------------------------------------
 */	.byte		N54   , As2 , v100
	.byte	W60
	.byte		N11   
	.byte	W24
	.byte		N56   , As2 , v108
	.byte	W12
/* 005   ----------------------------------------
 */	.byte	W48
	.byte		N40   , As2 , v127
	.byte	W48
/* 006   ----------------------------------------
 */	.byte	W96
/* 007   ----------------------------------------
 */	.byte	W96
/* 008   ----------------------------------------
 */	.byte	W96
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */	.byte		N92   , As2 , v100
	.byte	W96
/* 011   ----------------------------------------
 */mus_special_stage_3_011:
	.byte		N44   , As2 , v092
	.byte	W48
	.byte		N22   , As2 , v104
	.byte	W48
	.byte	PEND
/* 012   ----------------------------------------
 */	.byte		N92   
	.byte	W96
/* 013   ----------------------------------------
 */mus_special_stage_3_013:
	.byte		N30   , As2 , v108
	.byte	W36
	.byte		N19   , As2 , v088
	.byte	W24
	.byte		N32   , As2 , v100
	.byte	W36
	.byte	PEND
/* 014   ----------------------------------------
 */	.byte		TIE   , Gs2 , v108
	.byte	W96
/* 015   ----------------------------------------
 */	.byte	W06
	.byte		EOT   
	.byte	W06
	.byte		N12   
	.byte	W24
	.byte		N32   , Gs2 , v096
	.byte	W36
	.byte		N11   , Gs2 , v100
	.byte	W12
	.byte		        Gn2 
	.byte	W12
/* 016   ----------------------------------------
 */	.byte		N90   , Fs2 , v108
	.byte	W96
/* 017   ----------------------------------------
 */mus_special_stage_3_017:
	.byte		N30   , Fs2 , v096
	.byte	W36
	.byte		N15   , Fs2 , v088
	.byte	W24
	.byte		N30   , Fs2 , v096
	.byte	W36
	.byte	PEND
/* 018   ----------------------------------------
 */mus_special_stage_3_018:
	.byte		N68   , Fs2 , v116
	.byte	W72
	.byte		N23   , Fs2 , v112
	.byte	W24
	.byte	PEND
/* 019   ----------------------------------------
 */	.byte		N56   , Gs2 , v120
	.byte	W60
	.byte		N11   , Gs2 , v112
	.byte	W12
	.byte		        An2 , v116
	.byte	W12
	.byte		TIE   , As2 , v100
	.byte	W12
/* 020   ----------------------------------------
 */	.byte	W92
	.byte		EOT   
	.byte	W04
/* 021   ----------------------------------------
 */	.byte	W12
	.byte		N15   , As2 , v108
	.byte	W24
	.byte		N56   , As2 , v127
	.byte	W60
/* 022   ----------------------------------------
 */	.byte	W96
/* 023   ----------------------------------------
 */	.byte	W96
/* 024   ----------------------------------------
 */	.byte	W96
/* 025   ----------------------------------------
 */	.byte	W96
/* 026   ----------------------------------------
 */	.byte		N92   , As2 , v100
	.byte	W96
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_3_011
/* 028   ----------------------------------------
 */	.byte		N92   , As2 , v104
	.byte	W96
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_3_013
/* 030   ----------------------------------------
 */	.byte		TIE   , Gs2 , v108
	.byte	W96
/* 031   ----------------------------------------
 */	.byte	W06
	.byte		EOT   
	.byte	W06
	.byte		N12   
	.byte	W24
	.byte		N32   , Gs2 , v096
	.byte	W36
	.byte		N11   , Gs2 , v100
	.byte	W12
	.byte		        Gn2 
	.byte	W12
/* 032   ----------------------------------------
 */	.byte		N90   , Fs2 , v108
	.byte	W96
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_3_017
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_3_018
/* 035   ----------------------------------------
 */	.byte		N32   , Gs2 , v120
	.byte	W36
	.byte		N11   , Gs2 , v112
	.byte	W24
	.byte		N32   , Gs2 , v116
	.byte	W36
/* 036   ----------------------------------------
 */	.byte		N54   , Cn3 , v088
	.byte	W60
	.byte		N09   , Cn3 , v092
	.byte	W24
	.byte		N44   , Cn3 , v088
	.byte	W12
/* 037   ----------------------------------------
 */	.byte	W36
	.byte		N52   , Cn3 , v108
	.byte	W54
	.byte		N05   , Bn2 , v072
	.byte	W06
/* 038   ----------------------------------------
 */	.byte		N54   , As2 , v112
	.byte	W60
	.byte		N10   , As2 , v096
	.byte	W24
	.byte		N52   , As2 , v088
	.byte	W12
/* 039   ----------------------------------------
 */	.byte	W48
	.byte		N48   , As2 , v096
	.byte	W48
/* 040   ----------------------------------------
 */	.byte		N54   , Cs3 , v108
	.byte	W60
	.byte		N12   , Cs3 , v080
	.byte	W24
	.byte		N23   , Cs3 , v100
	.byte	W12
/* 041   ----------------------------------------
 */	.byte	W12
	.byte		N30   , Cs3 , v116
	.byte	W36
	.byte		N44   , Cs3 , v120
	.byte	W48
/* 042   ----------------------------------------
 */	.byte		N92   , Ds3 , v108
	.byte	W96
/* 043   ----------------------------------------
 */	.byte		N36   , Fn3 , v116
	.byte	W36
	.byte	W02
	.byte		N02   , En3 , v064
	.byte	W03
	.byte		        Dn3 , v092
	.byte	W02
	.byte		N01   , Cn3 , v084
	.byte	W02
	.byte		        Bn2 , v100
	.byte	W02
	.byte		        An2 
	.byte	W01
	.byte		        Gn2 , v108
	.byte	W02
	.byte		        Fn2 , v084
	.byte	W01
	.byte		        En2 , v100
	.byte	W02
	.byte		        Dn2 , v092
	.byte	W02
	.byte		        Cn2 
	.byte	W02
	.byte		N06   , Bn1 , v100
	.byte	W06
	.byte		N02   , As1 , v064
	.byte	W03
	.byte		N01   , Bn1 , v072
	.byte	W02
	.byte		        Cs2 , v024
	.byte	W02
	.byte		N02   , Ds2 , v032
	.byte	W03
	.byte		N03   , En2 , v016
	.byte	W03
	.byte		N02   , Fs2 , v020
	.byte	W03
	.byte		        Gs2 , v056
	.byte	W02
	.byte		N01   , As2 
	.byte	W02
	.byte		        Bn2 , v080
	.byte	W02
	.byte		        Cs3 , v084
	.byte	W02
	.byte		N02   , Ds3 , v080
	.byte	W03
	.byte		        En3 , v092
	.byte	W06
	.byte	GOTO
	 mPtr	mus_special_stage_3_B1
mus_special_stage_3_B2:
/* 044   ----------------------------------------
 */	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_special_stage_4:
	.byte	KEYSH , mus_special_stage_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 77
	.byte		VOL   , 100*mus_special_stage_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 31
	.byte		LFODL , 22
	.byte		MOD   , 4
	.byte		MODT  , 0
	.byte	PRIO  , 30
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
mus_special_stage_4_B1:
/* 004   ----------------------------------------
 */	.byte		N52   , As3 , v116
	.byte	W60
	.byte		N10   , Gn3 , v092
	.byte	W12
	.byte		N11   , Gs3 , v096
	.byte	W12
	.byte		N24   , As3 , v116
	.byte	W12
/* 005   ----------------------------------------
 */	.byte	W24
	.byte		N23   , As3 , v108
	.byte	W24
	.byte		        Dn4 , v100
	.byte	W24
	.byte		N20   , Ds4 , v108
	.byte	W24
/* 006   ----------------------------------------
 */	.byte		N32   , Ds4 , v112
	.byte	W36
	.byte		N10   , Gs3 , v096
	.byte	W12
	.byte		TIE   , Gs3 , v112
	.byte	W48
/* 007   ----------------------------------------
 */	.byte	W56
	.byte	W03
	.byte		EOT   
	.byte	W36
	.byte	W01
/* 008   ----------------------------------------
 */	.byte		N32   , Ds4 
	.byte	W36
	.byte		N72   , Gs3 , v088
	.byte	W60
/* 009   ----------------------------------------
 */	.byte	W24
	.byte		N23   , Gs3 , v108
	.byte	W24
	.byte		        Ds4 , v100
	.byte	W24
	.byte		        Fn4 , v108
	.byte	W24
/* 010   ----------------------------------------
 */	.byte		TIE   , Gn4 
	.byte	W96
/* 011   ----------------------------------------
 */	.byte	W12
	.byte		EOT   
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		        Fn4 , v096
	.byte	W24
	.byte		        Ds4 
	.byte	W24
/* 012   ----------------------------------------
 */	.byte		N32   , Dn4 , v100
	.byte	W36
	.byte		N11   , Ds4 , v080
	.byte	W12
	.byte		N60   , Cn4 
	.byte	W48
/* 013   ----------------------------------------
 */	.byte	W24
	.byte		N23   , Dn4 , v076
	.byte	W24
	.byte		N21   , Cn4 , v084
	.byte	W24
	.byte		N23   , Gn3 , v076
	.byte	W24
/* 014   ----------------------------------------
 */	.byte		N68   , As3 , v100
	.byte	W72
	.byte		N11   , Gs3 , v076
	.byte	W12
	.byte		N90   , Fn3 , v072
	.byte	W12
/* 015   ----------------------------------------
 */	.byte	W96
/* 016   ----------------------------------------
 */	.byte		N32   , Ds4 , v076
	.byte	W36
	.byte		N07   , Fs3 , v084
	.byte	W12
	.byte		N54   , Fs3 , v080
	.byte	W48
/* 017   ----------------------------------------
 */	.byte	W24
	.byte		N23   , Fs3 , v100
	.byte	W24
	.byte		N22   , Bn3 , v096
	.byte	W24
	.byte		N23   , Ds4 , v100
	.byte	W24
/* 018   ----------------------------------------
 */	.byte		N56   , Fs4 , v108
	.byte	W60
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N68   , Gs4 , v127
	.byte	W12
/* 019   ----------------------------------------
 */	.byte	W96
/* 020   ----------------------------------------
 */	.byte		N52   , Gn3 , v116
	.byte		N52   , As3 
	.byte	W60
	.byte		N10   , Ds3 , v092
	.byte		N10   , Gn3 
	.byte	W12
	.byte		N11   , Fn3 , v096
	.byte		N11   , Gs3 
	.byte	W12
	.byte		N24   , Gn3 , v116
	.byte		N24   , As3 
	.byte	W12
/* 021   ----------------------------------------
 */	.byte	W24
	.byte		N23   , Gn3 , v108
	.byte		N23   , As3 
	.byte	W24
	.byte		        As3 , v100
	.byte		N23   , Dn4 
	.byte	W24
	.byte		N20   , Gn3 , v108
	.byte		N20   , Ds4 
	.byte	W24
/* 022   ----------------------------------------
 */	.byte		N32   , Gs3 , v112
	.byte		N32   , Ds4 
	.byte	W36
	.byte		N10   , Cn3 , v096
	.byte		N10   , Gs3 
	.byte	W12
	.byte		TIE   , Cn3 , v112
	.byte		TIE   , Gs3 
	.byte	W48
/* 023   ----------------------------------------
 */	.byte	W56
	.byte	W03
	.byte		EOT   , Cn3 
	.byte		        Gs3 
	.byte	W13
	.byte		N23   , Gs3 , v100
	.byte	W24
/* 024   ----------------------------------------
 */	.byte		N32   , Gs3 , v112
	.byte		N32   , Ds4 
	.byte	W36
	.byte		N72   , Bn2 , v088
	.byte		N72   , Gs3 
	.byte	W60
/* 025   ----------------------------------------
 */	.byte	W24
	.byte		N23   , Ds3 , v108
	.byte		N23   , Gs3 
	.byte	W24
	.byte		        Bn3 , v100
	.byte		N23   , Ds4 
	.byte	W24
	.byte		        Dn4 , v108
	.byte		N23   , Fn4 
	.byte	W24
/* 026   ----------------------------------------
 */	.byte		TIE   , Ds4 
	.byte		TIE   , Gn4 
	.byte	W96
/* 027   ----------------------------------------
 */	.byte	W12
	.byte		EOT   , Ds4 
	.byte		        Gn4 
	.byte	W12
	.byte		N23   , As3 
	.byte		N23   , Gn4 
	.byte	W24
	.byte		        Gs3 , v096
	.byte		N23   , Fn4 
	.byte	W24
	.byte		        Gn3 
	.byte		N23   , Ds4 
	.byte	W24
/* 028   ----------------------------------------
 */	.byte		N32   , Fn3 , v100
	.byte		N32   , Dn4 
	.byte	W36
	.byte		N11   , Gn3 , v080
	.byte		N11   , Ds4 
	.byte	W12
	.byte		N60   , Ds3 
	.byte		N60   , Cn4 
	.byte	W48
/* 029   ----------------------------------------
 */	.byte	W24
	.byte		N23   , Fn3 , v076
	.byte		N23   , Dn4 
	.byte	W24
	.byte		N21   , Ds3 , v084
	.byte		N21   , Cn4 
	.byte	W24
	.byte		N23   , Cn3 , v076
	.byte		N23   , Gn3 
	.byte	W24
/* 030   ----------------------------------------
 */	.byte		N68   , Gn3 , v100
	.byte		N68   , As3 
	.byte	W72
	.byte		N11   , Fn3 , v076
	.byte		N11   , Gs3 
	.byte	W12
	.byte		N90   , Cs3 , v072
	.byte		N90   , Fn3 
	.byte	W12
/* 031   ----------------------------------------
 */	.byte	W96
/* 032   ----------------------------------------
 */	.byte		N32   , Fs3 , v076
	.byte		N32   , Ds4 
	.byte	W36
	.byte		N07   , Bn2 , v084
	.byte		N07   , Fs3 
	.byte	W12
	.byte		N54   , Bn2 , v080
	.byte		N54   , Fs3 
	.byte	W48
/* 033   ----------------------------------------
 */	.byte	W24
	.byte		N23   , Ds3 , v100
	.byte		N23   , Fs3 
	.byte	W24
	.byte		N22   , Fs3 , v096
	.byte		N22   , Bn3 
	.byte	W24
	.byte		N23   , Bn3 , v100
	.byte		N23   , Ds4 
	.byte	W24
/* 034   ----------------------------------------
 */	.byte		N56   , Ds4 , v108
	.byte		N56   , Fs4 
	.byte	W60
	.byte		N11   , Cs4 
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte		N11   , Fs4 
	.byte	W12
	.byte		N68   , Fn4 , v127
	.byte		N68   , Gs4 
	.byte	W12
/* 035   ----------------------------------------
 */	.byte	W60
	.byte		N08   , Ds4 , v100
	.byte		N08   , Gn4 
	.byte	W12
	.byte		N09   , Fn4 , v104
	.byte		N09   , Gs4 
	.byte	W12
	.byte		N40   , Fn4 
	.byte		N40   , An4 
	.byte	W12
/* 036   ----------------------------------------
 */	.byte	W48
	.byte		N24   , Fn3 , v100
	.byte		N24   , Dn4 
	.byte	W48
/* 037   ----------------------------------------
 */	.byte		N36   , An3 , v104
	.byte		N36   , Fn4 
	.byte	W48
	.byte		        Fn4 , v108
	.byte		N36   , Cn5 
	.byte	W48
/* 038   ----------------------------------------
 */	.byte		N23   , Dn4 , v096
	.byte		N23   , As4 
	.byte	W24
	.byte		N11   , Ds4 , v092
	.byte		N11   , Cn5 
	.byte	W12
	.byte		N32   , Dn4 , v076
	.byte		N32   , As4 
	.byte	W36
	.byte		N11   , Cn4 , v088
	.byte		N11   , An4 
	.byte	W12
	.byte		N66   , As3 , v084
	.byte		N66   , Gn4 
	.byte	W12
/* 039   ----------------------------------------
 */	.byte	W96
/* 040   ----------------------------------------
 */	.byte		N44   , Cs4 , v108
	.byte		N44   , As4 
	.byte	W48
	.byte		N40   , Fs3 , v052
	.byte		N40   , Cs4 
	.byte	W48
/* 041   ----------------------------------------
 */	.byte		N44   , As3 , v104
	.byte		N44   , Fs4 
	.byte	W48
	.byte		N40   , Fs4 , v096
	.byte		N40   , Cs5 
	.byte	W48
/* 042   ----------------------------------------
 */	.byte		N78   , Ds4 , v088
	.byte		N78   , Cn5 
	.byte	W96
/* 043   ----------------------------------------
 */	.byte		        Fn4 , v112
	.byte		N78   , Dn5 
	.byte	W96
	.byte	GOTO
	 mPtr	mus_special_stage_4_B1
mus_special_stage_4_B2:
/* 044   ----------------------------------------
 */	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_special_stage_5:
	.byte	KEYSH , mus_special_stage_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 12
	.byte		VOL   , 45*mus_special_stage_mvl/mxv
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
 */	.byte		        Gs5 , v100
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
/* 002   ----------------------------------------
 */	.byte		        Gn1 , v108
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
/* 003   ----------------------------------------
 */	.byte		        Fn5 , v088
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
mus_special_stage_5_B1:
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
 */	.byte	W96
/* 027   ----------------------------------------
 */	.byte	W96
/* 028   ----------------------------------------
 */	.byte	W96
/* 029   ----------------------------------------
 */	.byte	W96
/* 030   ----------------------------------------
 */	.byte	W96
/* 031   ----------------------------------------
 */	.byte	W96
/* 032   ----------------------------------------
 */	.byte	W96
/* 033   ----------------------------------------
 */	.byte	W96
/* 034   ----------------------------------------
 */	.byte	W96
/* 035   ----------------------------------------
 */	.byte	W96
/* 036   ----------------------------------------
 */	.byte		N06   , Dn2 , v112
	.byte	W06
	.byte		        En2 , v084
	.byte	W06
	.byte		        Fn2 , v100
	.byte	W06
	.byte		        An2 , v096
	.byte	W06
	.byte		        Cn3 , v092
	.byte	W06
	.byte		        Dn3 , v096
	.byte	W06
	.byte		        En3 , v092
	.byte	W06
	.byte		        Fn3 , v084
	.byte	W06
	.byte		        An3 , v088
	.byte	W06
	.byte		        Cn4 , v080
	.byte	W06
	.byte		        An3 , v092
	.byte	W06
	.byte		        Fn3 , v096
	.byte	W06
	.byte		        En3 , v100
	.byte	W06
	.byte		        Dn3 , v104
	.byte	W06
	.byte		        En3 , v092
	.byte	W06
	.byte		        Fn3 , v100
	.byte	W06
/* 037   ----------------------------------------
 */	.byte		        An3 , v096
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 , v108
	.byte	W06
	.byte		        Fn4 , v092
	.byte	W06
	.byte		        An4 , v096
	.byte	W06
	.byte		        Cn5 , v084
	.byte	W06
	.byte		        An4 , v096
	.byte	W06
	.byte		        Fn4 , v104
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 , v108
	.byte	W06
	.byte		        En4 , v112
	.byte	W06
	.byte		        Fn4 , v108
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Fn5 , v084
	.byte	W06
/* 038   ----------------------------------------
 */	.byte		        Gn5 , v104
	.byte	W06
	.byte		        Fn5 , v096
	.byte	W06
	.byte		        Ds5 , v104
	.byte	W06
	.byte		        As4 , v100
	.byte	W06
	.byte		        Gn4 , v088
	.byte	W06
	.byte		        Fn4 , v092
	.byte	W06
	.byte		        Ds4 , v080
	.byte	W06
	.byte		        As3 , v100
	.byte	W06
	.byte		        Ds4 , v092
	.byte	W06
	.byte		        Fn4 , v088
	.byte	W06
	.byte		        Gn4 , v096
	.byte	W06
	.byte		        As4 , v104
	.byte	W06
	.byte		        Gn4 , v096
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 , v104
	.byte	W06
	.byte		        As3 , v100
	.byte	W06
/* 039   ----------------------------------------
 */	.byte		        Gn3 , v092
	.byte	W06
	.byte		        Fn3 , v096
	.byte	W06
	.byte		        Ds3 , v088
	.byte	W06
	.byte		        Fn3 , v092
	.byte	W06
	.byte		        Gn3 , v104
	.byte	W06
	.byte		        As3 , v108
	.byte	W06
	.byte		        Gn3 , v104
	.byte	W06
	.byte		        Fn3 , v092
	.byte	W06
	.byte		        Ds3 , v108
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gn2 , v088
	.byte	W06
	.byte		        As2 , v112
	.byte	W06
	.byte		        Ds3 , v108
	.byte	W06
	.byte		        As2 , v104
	.byte	W06
	.byte		        Gn2 , v096
	.byte	W06
	.byte		        Ds2 , v120
	.byte	W06
/* 040   ----------------------------------------
 */	.byte		        Fs2 , v108
	.byte	W06
	.byte		        Gs2 , v112
	.byte	W06
	.byte		        As2 , v108
	.byte	W06
	.byte		        Cs3 , v112
	.byte	W06
	.byte		        Fs3 , v104
	.byte	W06
	.byte		        Gs3 , v108
	.byte	W06
	.byte		        As3 , v112
	.byte	W06
	.byte		        Cs4 , v108
	.byte	W06
	.byte		        Fs4 , v116
	.byte	W06
	.byte		        Cs4 , v112
	.byte	W06
	.byte		        As3 , v108
	.byte	W06
	.byte		        Gs3 , v112
	.byte	W06
	.byte		        Fs3 , v100
	.byte	W06
	.byte		        Gs3 , v104
	.byte	W06
	.byte		        As3 , v108
	.byte	W06
	.byte		        Cs4 
	.byte	W06
/* 041   ----------------------------------------
 */	.byte		        Fs4 , v104
	.byte	W06
	.byte		        Gs4 , v108
	.byte	W06
	.byte		        As4 , v092
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fs5 , v104
	.byte	W06
	.byte		        Cs5 , v100
	.byte	W06
	.byte		        As4 , v104
	.byte	W06
	.byte		        Gs4 , v096
	.byte	W06
	.byte		        Fs4 , v088
	.byte	W06
	.byte		        Gs4 , v108
	.byte	W06
	.byte		        As4 , v104
	.byte	W06
	.byte		        Cs5 , v100
	.byte	W06
	.byte		        Fs5 , v104
	.byte	W06
	.byte		        Gs5 , v096
	.byte	W06
	.byte		        As5 , v108
	.byte	W06
	.byte		        Cs6 , v112
	.byte	W06
/* 042   ----------------------------------------
 */	.byte		        Cn6 , v096
	.byte	W06
	.byte		        As5 , v108
	.byte	W06
	.byte		        Gs5 , v100
	.byte	W06
	.byte		        Ds5 , v092
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 , v096
	.byte	W06
	.byte		        Gs4 , v104
	.byte	W06
	.byte		        Ds4 , v096
	.byte	W06
	.byte		        Gs4 , v108
	.byte	W06
	.byte		        As4 , v100
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        As4 , v108
	.byte	W06
	.byte		        Gs4 , v100
	.byte	W06
	.byte		        Ds4 , v096
	.byte	W06
	.byte		        Cn4 , v088
	.byte	W06
	.byte		        As3 , v116
	.byte	W06
/* 043   ----------------------------------------
 */	.byte		        As3 , v112
	.byte	W06
	.byte		        Cn4 , v108
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn4 , v100
	.byte	W06
	.byte		        As4 , v112
	.byte	W06
	.byte		        Cn5 , v104
	.byte	W06
	.byte		        Dn5 , v100
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        As5 , v120
	.byte	W06
	.byte		        Fn5 , v096
	.byte	W06
	.byte		        Dn5 , v108
	.byte	W06
	.byte		        As4 , v120
	.byte	W06
	.byte		        Fn4 , v104
	.byte	W06
	.byte		        Dn4 , v108
	.byte	W06
	.byte		        As3 , v120
	.byte	W06
	.byte		        As2 , v108
	.byte	W06
	.byte	GOTO
	 mPtr	mus_special_stage_5_B1
mus_special_stage_5_B2:
/* 044   ----------------------------------------
 */	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_special_stage_6:
	.byte	KEYSH , mus_special_stage_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 76
	.byte		VOL   , 127*mus_special_stage_mvl/mxv
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
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
mus_special_stage_6_B1:
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte		TIE   , Ds3 , v084
	.byte	W96
/* 007   ----------------------------------------
 */	.byte	W09
	.byte		EOT   
	.byte	W03
	.byte		N13   , Ds3 , v108
	.byte	W24
	.byte		N48   , Ds3 , v096
	.byte	W60
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
 */	.byte		TIE   , Ds3 , v084
	.byte	W96
/* 023   ----------------------------------------
 */	.byte	W09
	.byte		EOT   
	.byte	W03
	.byte		N13   , Ds3 , v108
	.byte	W24
	.byte		N48   , Ds3 , v096
	.byte	W60
/* 024   ----------------------------------------
 */	.byte	W96
/* 025   ----------------------------------------
 */	.byte	W96
/* 026   ----------------------------------------
 */	.byte	W96
/* 027   ----------------------------------------
 */	.byte	W96
/* 028   ----------------------------------------
 */	.byte	W96
/* 029   ----------------------------------------
 */	.byte	W96
/* 030   ----------------------------------------
 */	.byte	W96
/* 031   ----------------------------------------
 */	.byte	W96
/* 032   ----------------------------------------
 */	.byte	W96
/* 033   ----------------------------------------
 */	.byte	W96
/* 034   ----------------------------------------
 */	.byte	W96
/* 035   ----------------------------------------
 */	.byte	W96
/* 036   ----------------------------------------
 */	.byte	W96
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	W96
/* 039   ----------------------------------------
 */	.byte	W96
/* 040   ----------------------------------------
 */	.byte	W96
/* 041   ----------------------------------------
 */	.byte	W96
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_special_stage_6_B1
mus_special_stage_6_B2:
/* 044   ----------------------------------------
 */	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_special_stage_7:
	.byte	KEYSH , mus_special_stage_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 87
	.byte		VOL   , 80*mus_special_stage_mvl/mxv
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
 */	.byte		N80   , Dn3 , v080
	.byte		N80   , Fn3 , v100
	.byte		N80   , As3 
	.byte	W84
	.byte		N56   , Cn3 
	.byte		N56   , Gs3 , v116
	.byte	W12
/* 003   ----------------------------------------
 */	.byte	W44
	.byte	W02
	.byte		N04   , Bn2 , v024
	.byte	W04
	.byte		N03   , An2 , v048
	.byte	W02
	.byte		N02   , Gn2 , v080
	.byte	W02
	.byte		        Fn2 , v064
	.byte	W03
	.byte		        En2 
	.byte	W02
	.byte		        Dn2 , v072
	.byte	W02
	.byte		        Cn2 , v092
	.byte	W02
	.byte		        Bn1 , v100
	.byte	W02
	.byte		N01   , An1 , v108
	.byte	W01
	.byte		        Gn1 , v100
	.byte	W03
	.byte		        Fn1 , v044
	.byte	W02
	.byte		N08   , En1 , v028
	.byte	W07
	.byte		N02   , Fn1 , v084
	.byte	W02
	.byte		        Gn1 , v092
	.byte	W02
	.byte		        An1 , v084
	.byte	W02
	.byte		        Bn1 , v092
	.byte	W01
	.byte		        Cn2 
	.byte	W02
	.byte		        Dn2 , v064
	.byte	W01
	.byte		        En2 , v048
	.byte	W02
	.byte		        Fn2 , v080
	.byte	W02
	.byte		N01   , Gn2 , v072
	.byte	W01
	.byte		N02   , An2 , v064
	.byte	W01
	.byte		N01   , Bn2 , v056
	.byte	W02
mus_special_stage_7_B1:
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte	W96
/* 007   ----------------------------------------
 */	.byte	W96
/* 008   ----------------------------------------
 */mus_special_stage_7_008:
	.byte		N54   , Bn2 , v084
	.byte		N56   , Gs3 , v100
	.byte	W60
	.byte		N07   , Bn2 , v060
	.byte		N08   , Gs3 , v100
	.byte	W24
	.byte		N54   , Bn2 , v092
	.byte		N56   , Ds3 , v104
	.byte	W12
	.byte	PEND
/* 009   ----------------------------------------
 */mus_special_stage_7_009:
	.byte	W48
	.byte		N48   , Bn2 , v080
	.byte		N48   , Gs3 , v108
	.byte	W48
	.byte	PEND
/* 010   ----------------------------------------
 */	.byte	W96
/* 011   ----------------------------------------
 */mus_special_stage_7_011:
	.byte	W72
	.byte		N23   , Dn3 , v108
	.byte		N23   , Fn3 , v112
	.byte	W24
	.byte	PEND
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
 */	.byte	PATT
	 mPtr	mus_special_stage_7_008
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_7_009
/* 026   ----------------------------------------
 */	.byte	W96
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_special_stage_7_011
/* 028   ----------------------------------------
 */	.byte	W96
/* 029   ----------------------------------------
 */	.byte	W96
/* 030   ----------------------------------------
 */	.byte	W96
/* 031   ----------------------------------------
 */	.byte	W96
/* 032   ----------------------------------------
 */	.byte	W96
/* 033   ----------------------------------------
 */	.byte	W96
/* 034   ----------------------------------------
 */	.byte	W96
/* 035   ----------------------------------------
 */	.byte	W96
/* 036   ----------------------------------------
 */	.byte	W96
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	W96
/* 039   ----------------------------------------
 */	.byte	W96
/* 040   ----------------------------------------
 */	.byte	W96
/* 041   ----------------------------------------
 */	.byte	W96
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_special_stage_7_B1
mus_special_stage_7_B2:
/* 044   ----------------------------------------
 */	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_special_stage):
	.byte	7	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_special_stage_pri	/* Priority */
	.byte	mus_special_stage_rev	/* Reverb */

mAlignWord
	mPtr	mus_special_stage_grp

	mPtr	mus_special_stage_1
	mPtr	mus_special_stage_2
	mPtr	mus_special_stage_3
	mPtr	mus_special_stage_4
	mPtr	mus_special_stage_5
	mPtr	mus_special_stage_6
	mPtr	mus_special_stage_7

	.end
