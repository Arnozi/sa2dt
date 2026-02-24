	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_sky_canyon__act_2_grp, voicegroup013
	.equ	mus_sky_canyon__act_2_pri, 0
	.equ	mus_sky_canyon__act_2_rev, reverb_set+0
	.equ	mus_sky_canyon__act_2_mvl, 110
	.equ	mus_sky_canyon__act_2_key, 0
	.equ	mus_sky_canyon__act_2_tbs, 1
	.equ	mus_sky_canyon__act_2_exg, 1
	.equ	mus_sky_canyon__act_2_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_sky_canyon__act_2)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_sky_canyon__act_2_1:
	.byte	KEYSH , mus_sky_canyon__act_2_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 150*mus_sky_canyon__act_2_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_sky_canyon__act_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		N12   , En1 , v032
	.byte		N06   , Ds2 , v127
	.byte	W18
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N11   , En1 , v048
	.byte	W12
/* 001   ----------------------------------------
 */	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v072
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N10   , En1 , v048
	.byte	W12
/* 002   ----------------------------------------
 */	.byte		N12   , En1 , v032
	.byte		N06   , Ds2 , v127
	.byte	W18
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N11   , En1 , v048
	.byte	W12
/* 003   ----------------------------------------
 */	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v072
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cs1 , v112
	.byte		N03   , Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cs1 , v112
	.byte		N03   , Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cs1 , v112
	.byte		N03   , Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Cs1 , v112
	.byte	W06
	.byte		N06   
	.byte		N10   , En1 , v048
	.byte	W06
	.byte		N06   , Cs1 , v112
	.byte	W06
mus_sky_canyon__act_2_1_B1:
/* 004   ----------------------------------------
 */	.byte		N12   , En1 , v032
	.byte		N06   , Ds2 , v127
	.byte	W18
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N11   , En1 , v048
	.byte	W12
/* 005   ----------------------------------------
 */mus_sky_canyon__act_2_1_005:
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v072
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N10   , En1 , v048
	.byte	W12
	.byte	PEND
/* 006   ----------------------------------------
 */mus_sky_canyon__act_2_1_006:
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N11   , En1 , v048
	.byte	W12
	.byte	PEND
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_1_005
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_1_006
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_1_005
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_1_006
/* 011   ----------------------------------------
 */mus_sky_canyon__act_2_1_011:
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v072
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		        Cs1 
	.byte		N10   , En1 , v048
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte	PEND
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_1_006
/* 013   ----------------------------------------
 */mus_sky_canyon__act_2_1_013:
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v072
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N10   , En1 , v048
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte	PEND
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_1_006
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_1_011
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_1_006
/* 017   ----------------------------------------
 */mus_sky_canyon__act_2_1_017:
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v072
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		        Cs1 
	.byte		N10   , En1 , v048
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte	PEND
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_1_006
/* 019   ----------------------------------------
 */mus_sky_canyon__act_2_1_019:
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v072
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte		N10   , En1 , v048
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte	PEND
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_1_006
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_1_013
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_1_006
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_1_011
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_1_006
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_1_017
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_1_006
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_1_019
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_1_006
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_1_013
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_1_006
/* 031   ----------------------------------------
 */	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v072
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		        Cs1 
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		        Cs1 
	.byte		N10   , En1 , v048
	.byte	W12
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_1_006
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_1_011
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_1_006
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_1_011
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_1_006
/* 037   ----------------------------------------
 */mus_sky_canyon__act_2_1_037:
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v072
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N10   , En1 , v048
	.byte	W12
	.byte	PEND
/* 038   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_1_006
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_1_037
	.byte	GOTO
	 mPtr	mus_sky_canyon__act_2_1_B1
mus_sky_canyon__act_2_1_B2:
/* 040   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_1_006
/* 041   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_1_037
/* 042   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_1_006
/* 043   ----------------------------------------
 */	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v072
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N10   , En1 , v048
	.byte	W10
	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_sky_canyon__act_2_2:
	.byte	KEYSH , mus_sky_canyon__act_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 74
	.byte		VOL   , 104*mus_sky_canyon__act_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 13
	.byte		LFOS  , 18
	.byte		LFODL , 20
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		BEND  , c_v+0
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
mus_sky_canyon__act_2_2_B1:
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
 */mus_sky_canyon__act_2_2_012:
	.byte	W23
	.byte		N14   , En3 , v127
	.byte		N21   , An3 , v120
	.byte	W21
	.byte		N03   , Gn3 , v064
	.byte	W02
	.byte		N02   , Fn3 , v072
	.byte	W02
	.byte		        En3 , v104
	.byte	W02
	.byte		N01   , Dn3 
	.byte	W02
	.byte		N02   , Cn3 , v072
	.byte	W01
	.byte		        Bn2 , v088
	.byte	W02
	.byte		N01   , An2 , v092
	.byte	W02
	.byte		        Gn2 , v100
	.byte	W36
	.byte	W03
	.byte	PEND
/* 013   ----------------------------------------
 */	.byte	W96
/* 014   ----------------------------------------
 */mus_sky_canyon__act_2_2_014:
	.byte	W84
	.byte		N22   , Dn3 , v108
	.byte		N22   , Gn3 
	.byte	W12
	.byte	PEND
/* 015   ----------------------------------------
 */mus_sky_canyon__act_2_2_015:
	.byte	W12
	.byte		N03   , Cs3 , v096
	.byte		N03   , Fs3 , v072
	.byte	W12
	.byte		N12   , Bn2 , v120
	.byte		N12   , En3 , v108
	.byte	W24
	.byte		N03   , Dn3 , v120
	.byte		N03   , Gn3 , v104
	.byte	W12
	.byte		N17   , En3 , v127
	.byte		N17   , An3 
	.byte	W18
	.byte		N02   , Gn3 , v096
	.byte	W01
	.byte		        Fn3 , v104
	.byte	W02
	.byte		        En3 , v116
	.byte	W02
	.byte		        Dn3 
	.byte	W01
	.byte		        Cn3 , v108
	.byte	W01
	.byte		        Bn2 , v116
	.byte	W02
	.byte		        An2 , v108
	.byte	W01
	.byte		N01   , Gn2 , v104
	.byte	W04
	.byte		        En2 , v076
	.byte	W04
	.byte	PEND
/* 016   ----------------------------------------
 */mus_sky_canyon__act_2_2_016:
	.byte	W80
	.byte	W03
	.byte		N32   , En3 , v116
	.byte		N32   , An3 
	.byte	W13
	.byte	PEND
/* 017   ----------------------------------------
 */	.byte	W22
	.byte		N07   , Dn3 , v108
	.byte		N06   , Gn3 , v104
	.byte	W24
	.byte	W01
	.byte		N07   , Dn3 , v108
	.byte		N06   , Fs3 
	.byte	W24
	.byte	W01
	.byte		N07   , Bn2 , v104
	.byte		N06   , En3 , v108
	.byte	W24
/* 018   ----------------------------------------
 */	.byte		N07   , Cs3 , v104
	.byte		N06   , En3 , v108
	.byte	W06
	.byte		N02   , Ds3 , v096
	.byte	W01
	.byte		        Cs3 , v104
	.byte	W02
	.byte		        Cn3 , v116
	.byte	W01
	.byte		        As2 
	.byte	W01
	.byte		        Gs2 , v108
	.byte	W02
	.byte		        Gn2 , v116
	.byte	W01
	.byte		        Fn2 , v108
	.byte	W02
	.byte		N01   , Ds2 , v104
	.byte	W03
	.byte		        Cn2 , v076
	.byte	W52
	.byte	W01
	.byte		N06   , An2 , v127
	.byte		N06   , En3 
	.byte	W12
	.byte		N08   , En2 
	.byte		N08   , An2 
	.byte	W12
/* 019   ----------------------------------------
 */mus_sky_canyon__act_2_2_019:
	.byte	W12
	.byte		N06   , Gn2 , v127
	.byte		N06   , Cs3 
	.byte	W12
	.byte		N08   , Dn2 
	.byte		N08   , Gn2 
	.byte	W24
	.byte		N06   , En2 
	.byte		N06   , Bn2 
	.byte	W12
	.byte		N08   , Bn1 
	.byte		N08   , En2 
	.byte	W24
	.byte		N06   
	.byte		N06   , An2 
	.byte	W12
	.byte	PEND
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_2_012
/* 021   ----------------------------------------
 */	.byte	W96
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_2_014
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_2_015
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_2_016
/* 025   ----------------------------------------
 */	.byte	W22
	.byte		N08   , Gn3 , v104
	.byte	W24
	.byte	W01
	.byte		        Fs3 , v108
	.byte	W24
	.byte	W01
	.byte		        En3 
	.byte	W24
/* 026   ----------------------------------------
 */	.byte		N05   , Dn3 , v104
	.byte	W06
	.byte		N02   , Cs3 , v096
	.byte	W01
	.byte		        Bn2 , v104
	.byte	W02
	.byte		        As2 , v116
	.byte	W01
	.byte		        Gs2 
	.byte	W01
	.byte		        Fs2 , v108
	.byte	W02
	.byte		        Fn2 , v116
	.byte	W01
	.byte		        Ds2 , v108
	.byte	W02
	.byte		N01   , Cs2 , v104
	.byte	W03
	.byte		        As1 , v076
	.byte	W52
	.byte	W01
	.byte		N06   , An2 , v127
	.byte		N06   , En3 
	.byte	W12
	.byte		N08   , En2 
	.byte		N08   , An2 
	.byte	W12
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_2_019
/* 028   ----------------------------------------
 */	.byte	W96
/* 029   ----------------------------------------
 */	.byte	W24
	.byte		N23   , Bn2 , v120
	.byte	W24
	.byte		N24   , En3 , v104
	.byte	W24
	.byte	W01
	.byte		N15   , Bn3 
	.byte	W14
	.byte		N06   , An3 , v092
	.byte	W05
	.byte		        Gs3 , v100
	.byte	W04
/* 030   ----------------------------------------
 */	.byte	W01
	.byte		TIE   , Fs3 , v092
	.byte	W92
	.byte	W03
/* 031   ----------------------------------------
 */	.byte	W52
	.byte		EOT   
	.byte	W44
/* 032   ----------------------------------------
 */	.byte	W96
/* 033   ----------------------------------------
 */	.byte	W24
	.byte		N24   , Bn2 , v116
	.byte	W24
	.byte		        En3 , v096
	.byte	W24
	.byte		N18   , Bn3 , v104
	.byte	W16
	.byte		N06   , An3 , v096
	.byte	W04
	.byte		        Gs3 
	.byte	W04
/* 034   ----------------------------------------
 */	.byte		TIE   , Fs3 , v100
	.byte	W96
/* 035   ----------------------------------------
 */	.byte	W20
	.byte		EOT   
	.byte	W03
	.byte		N24   , Fs3 , v088
	.byte	W24
	.byte		N23   , Gs3 , v096
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		N92   , Bn3 
	.byte	W01
/* 036   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		        An3 
	.byte	W01
/* 037   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		        Gs3 
	.byte	W01
/* 038   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		        Fs3 
	.byte	W01
/* 039   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_sky_canyon__act_2_2_B1
mus_sky_canyon__act_2_2_B2:
/* 040   ----------------------------------------
 */	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_sky_canyon__act_2_3:
	.byte	KEYSH , mus_sky_canyon__act_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 2
	.byte		VOL   , 110*mus_sky_canyon__act_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 56
	.byte		LFODL , 0
	.byte		MOD   , 0
	.byte		MODT  , 2
	.byte		N11   , An1 , v127
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , Gn1 
	.byte	W12
/* 001   ----------------------------------------
 */mus_sky_canyon__act_2_3_001:
	.byte	W12
	.byte		N11   , Gn1 , v127
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , An1 
	.byte	W12
	.byte	PEND
/* 002   ----------------------------------------
 */mus_sky_canyon__act_2_3_002:
	.byte	W12
	.byte		N11   , An1 , v127
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , Gn1 
	.byte	W12
	.byte	PEND
/* 003   ----------------------------------------
 */mus_sky_canyon__act_2_3_003:
	.byte	W12
	.byte		N11   , Gn1 , v127
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
mus_sky_canyon__act_2_3_B1:
/* 004   ----------------------------------------
 */mus_sky_canyon__act_2_3_004:
	.byte		N11   , An1 , v127
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , Gn1 
	.byte	W12
	.byte	PEND
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_3_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_3_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_3_003
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_3_004
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_3_001
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_3_002
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_3_003
/* 012   ----------------------------------------
 */mus_sky_canyon__act_2_3_012:
	.byte		N10   , An1 , v127
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N20   , Gn1 
	.byte	W12
	.byte	PEND
/* 013   ----------------------------------------
 */mus_sky_canyon__act_2_3_013:
	.byte	W12
	.byte		N10   , Gn1 , v127
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte	PEND
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_3_012
/* 015   ----------------------------------------
 */mus_sky_canyon__act_2_3_015:
	.byte	W12
	.byte		N10   , Gn1 , v127
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte	PEND
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_3_012
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_3_013
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_3_012
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_3_015
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_3_012
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_3_013
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_3_012
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_3_015
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_3_012
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_3_013
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_3_012
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_3_015
/* 028   ----------------------------------------
 */mus_sky_canyon__act_2_3_028:
	.byte		N11   , En1 , v127
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Bn1 , v124
	.byte	W12
	.byte		        An1 , v127
	.byte	W12
	.byte		N23   , En1 
	.byte	W12
	.byte	PEND
/* 029   ----------------------------------------
 */mus_sky_canyon__act_2_3_029:
	.byte	W12
	.byte		N11   , En2 , v127
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N09   , En2 
	.byte	W12
	.byte	PEND
/* 030   ----------------------------------------
 */mus_sky_canyon__act_2_3_030:
	.byte		N11   , Dn1 , v127
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        An1 , v124
	.byte	W12
	.byte		        Gn1 , v127
	.byte	W12
	.byte		N23   , Dn1 
	.byte	W12
	.byte	PEND
/* 031   ----------------------------------------
 */mus_sky_canyon__act_2_3_031:
	.byte	W12
	.byte		N11   , Dn2 , v127
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N09   , Dn2 
	.byte	W12
	.byte	PEND
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_3_028
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_3_029
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_3_030
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_3_031
/* 036   ----------------------------------------
 */mus_sky_canyon__act_2_3_036:
	.byte		N11   , Bn1 , v127
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Fs2 , v124
	.byte	W12
	.byte		        En2 , v127
	.byte	W12
	.byte		N23   , Bn1 
	.byte	W12
	.byte	PEND
/* 037   ----------------------------------------
 */mus_sky_canyon__act_2_3_037:
	.byte	W12
	.byte		N11   , Bn2 , v127
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		N09   , Bn2 
	.byte	W12
	.byte	PEND
/* 038   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_3_036
/* 039   ----------------------------------------
 */	.byte	W12
	.byte		N11   , Bn2 , v127
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte	GOTO
	 mPtr	mus_sky_canyon__act_2_3_B1
mus_sky_canyon__act_2_3_B2:
/* 040   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_3_036
/* 041   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_3_037
/* 042   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_3_036
/* 043   ----------------------------------------
 */	.byte	W12
	.byte		N11   , Bn2 , v127
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W11
	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_sky_canyon__act_2_4:
	.byte	KEYSH , mus_sky_canyon__act_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 5
	.byte		VOL   , 85*mus_sky_canyon__act_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 56
	.byte		LFODL , 0
	.byte		MOD   , 0
	.byte		MODT  , 2
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
mus_sky_canyon__act_2_4_B1:
/* 004   ----------------------------------------
 */mus_sky_canyon__act_2_4_004:
	.byte		N18   , En4 , v116
	.byte	W24
	.byte		N12   , En4 , v120
	.byte	W24
	.byte		        Cs4 , v108
	.byte	W12
	.byte		N06   , En4 , v100
	.byte	W24
	.byte		N66   , Bn3 , v116
	.byte	W12
	.byte	PEND
/* 005   ----------------------------------------
 */mus_sky_canyon__act_2_4_005:
	.byte	W60
	.byte		N18   , An3 , v076
	.byte	W24
	.byte		N12   , An3 , v096
	.byte	W12
	.byte	PEND
/* 006   ----------------------------------------
 */mus_sky_canyon__act_2_4_006:
	.byte	W12
	.byte		N12   , An3 , v108
	.byte	W24
	.byte		N30   , Cs4 , v076
	.byte	W36
	.byte		N06   , En3 , v092
	.byte	W12
	.byte		N32   , Bn3 , v104
	.byte	W12
	.byte	PEND
/* 007   ----------------------------------------
 */mus_sky_canyon__act_2_4_007:
	.byte	W24
	.byte		N06   , Gn3 , v092
	.byte	W12
	.byte		N36   , Dn4 , v104
	.byte	W60
	.byte	PEND
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_4_004
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_4_005
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_4_006
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_4_007
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
 */	.byte	W96
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	W96
/* 039   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_sky_canyon__act_2_4_B1
mus_sky_canyon__act_2_4_B2:
/* 040   ----------------------------------------
 */	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_sky_canyon__act_2_5:
	.byte	KEYSH , mus_sky_canyon__act_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 6
	.byte		VOL   , 85*mus_sky_canyon__act_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 23
	.byte		LFODL , 22
	.byte		MOD   , 4
	.byte		MODT  , 0
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
mus_sky_canyon__act_2_5_B1:
/* 004   ----------------------------------------
 */mus_sky_canyon__act_2_5_004:
	.byte		N12   , An3 , v120
	.byte	W24
	.byte		        An3 , v108
	.byte	W24
	.byte		        En3 , v092
	.byte	W12
	.byte		N06   , An3 , v120
	.byte	W24
	.byte		N66   , Gn3 , v104
	.byte	W12
	.byte	PEND
/* 005   ----------------------------------------
 */mus_sky_canyon__act_2_5_005:
	.byte	W60
	.byte		N18   , Gn3 , v080
	.byte	W24
	.byte		N12   , En3 , v108
	.byte	W12
	.byte	PEND
/* 006   ----------------------------------------
 */mus_sky_canyon__act_2_5_006:
	.byte	W12
	.byte		N12   , Cs3 , v108
	.byte	W24
	.byte		N30   , En3 , v100
	.byte	W36
	.byte		N06   , An2 , v080
	.byte	W12
	.byte		N32   , Gn3 , v108
	.byte	W12
	.byte	PEND
/* 007   ----------------------------------------
 */mus_sky_canyon__act_2_5_007:
	.byte	W24
	.byte		N06   , En3 , v080
	.byte	W12
	.byte		N36   , Gn3 , v108
	.byte	W60
	.byte	PEND
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_5_004
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_5_005
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_5_006
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_5_007
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
 */	.byte	W96
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	W96
/* 039   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_sky_canyon__act_2_5_B1
mus_sky_canyon__act_2_5_B2:
/* 040   ----------------------------------------
 */	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_sky_canyon__act_2_6:
	.byte	KEYSH , mus_sky_canyon__act_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 4
	.byte	PRIO  , 30
	.byte		VOL   , 59*mus_sky_canyon__act_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 23
	.byte		LFODL , 22
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
mus_sky_canyon__act_2_6_B1:
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
 */mus_sky_canyon__act_2_6_012:
	.byte	W24
	.byte		N11   , Cs4 , v127
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W12
	.byte		N10   , En4 
	.byte	W12
	.byte		N19   , An3 
	.byte	W24
	.byte		N30   , Bn3 
	.byte	W12
	.byte	PEND
/* 013   ----------------------------------------
 */	.byte	W96
/* 014   ----------------------------------------
 */	.byte	W24
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N09   , An3 
	.byte	W12
	.byte		N11   , Cs4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N06   , En4 
	.byte	W12
	.byte		N20   , Gn4 
	.byte	W12
/* 015   ----------------------------------------
 */mus_sky_canyon__act_2_6_015:
	.byte	W12
	.byte		N06   , Fs4 , v127
	.byte	W12
	.byte		N08   , En4 
	.byte	W72
	.byte	PEND
/* 016   ----------------------------------------
 */mus_sky_canyon__act_2_6_016:
	.byte	W24
	.byte		N10   , Cs4 , v127
	.byte	W12
	.byte		N08   , Dn4 
	.byte	W12
	.byte		N11   , En4 
	.byte	W12
	.byte		N16   , An3 
	.byte	W24
	.byte		N20   , Bn3 
	.byte	W12
	.byte	PEND
/* 017   ----------------------------------------
 */mus_sky_canyon__act_2_6_017:
	.byte	W24
	.byte		N18   , Gn3 , v127
	.byte	W24
	.byte		N16   , Bn3 
	.byte	W24
	.byte		N17   , Dn4 
	.byte	W24
	.byte	PEND
/* 018   ----------------------------------------
 */mus_sky_canyon__act_2_6_018:
	.byte		N28   , Cs4 , v127
	.byte	W36
	.byte		N19   , Dn4 
	.byte	W36
	.byte		N10   , En4 
	.byte	W12
	.byte		N19   , An3 
	.byte	W12
	.byte	PEND
/* 019   ----------------------------------------
 */mus_sky_canyon__act_2_6_019:
	.byte	W12
	.byte		N09   , Cs4 , v127
	.byte	W12
	.byte		N19   , Gn3 
	.byte	W72
	.byte	PEND
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_6_012
/* 021   ----------------------------------------
 */	.byte	W96
/* 022   ----------------------------------------
 */	.byte	W24
	.byte		N12   , Cs4 , v127
	.byte	W12
	.byte		N09   , An3 
	.byte	W12
	.byte		N11   , Cs4 
	.byte	W12
	.byte		N14   , Dn4 
	.byte	W12
	.byte		N06   , En4 
	.byte	W12
	.byte		N20   , Gn4 
	.byte	W12
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_6_015
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_6_016
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_6_017
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_6_018
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_6_019
/* 028   ----------------------------------------
 */	.byte		N05   , Bn4 , v064
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gs3 , v032
	.byte	W06
	.byte		        En5 , v064
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gs3 , v032
	.byte	W06
	.byte		        En5 , v064
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gs3 , v032
	.byte	W06
	.byte		        En5 , v064
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gs3 , v032
	.byte	W06
	.byte		        En5 , v064
	.byte	W06
/* 029   ----------------------------------------
 */	.byte		        Bn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gs3 , v032
	.byte	W06
	.byte		        En5 , v064
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gs3 , v032
	.byte	W06
	.byte		        En5 , v064
	.byte	W54
/* 030   ----------------------------------------
 */	.byte		        An3 , v076
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn4 , v068
	.byte	W06
	.byte		        An3 , v076
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn4 , v068
	.byte	W06
	.byte		        An3 , v076
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn4 , v068
	.byte	W06
	.byte		        An3 , v076
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn4 , v068
	.byte	W06
/* 031   ----------------------------------------
 */	.byte		        An3 , v076
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn4 , v068
	.byte	W06
	.byte		        An3 , v076
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn4 , v068
	.byte	W54
/* 032   ----------------------------------------
 */	.byte		        En3 , v064
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
/* 033   ----------------------------------------
 */	.byte		        En3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn4 
	.byte	W54
/* 034   ----------------------------------------
 */	.byte		        Dn3 , v068
	.byte	W06
	.byte		        An2 , v076
	.byte	W06
	.byte		        Dn5 , v068
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        An2 , v076
	.byte	W06
	.byte		        Dn5 , v068
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        An2 , v076
	.byte	W06
	.byte		        Dn5 , v068
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        An2 , v076
	.byte	W06
	.byte		        Dn5 , v068
	.byte	W06
	.byte		        Dn4 
	.byte	W06
/* 035   ----------------------------------------
 */	.byte		        Dn3 
	.byte	W06
	.byte		        An2 , v076
	.byte	W06
	.byte		        Dn5 , v068
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        An2 , v076
	.byte	W06
	.byte		        Dn5 , v068
	.byte	W06
	.byte		        Dn4 
	.byte	W54
/* 036   ----------------------------------------
 */	.byte	W96
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	W96
/* 039   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_sky_canyon__act_2_6_B1
mus_sky_canyon__act_2_6_B2:
/* 040   ----------------------------------------
 */	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_sky_canyon__act_2_7:
	.byte	KEYSH , mus_sky_canyon__act_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 0
	.byte		VOL   , 80*mus_sky_canyon__act_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 23
	.byte		LFODL , 22
	.byte		MOD   , 4
	.byte		MODT  , 0
	.byte		N05   , Cs3 , v104
	.byte	W06
	.byte		PAN   , c_v-61
	.byte		N05   , An3 , v096
	.byte	W06
	.byte		PAN   , c_v-57
	.byte		N05   , Cs3 , v104
	.byte	W06
	.byte		PAN   , c_v-53
	.byte		N05   , En5 , v100
	.byte	W06
	.byte		PAN   , c_v-49
	.byte		N05   , Cs3 , v104
	.byte	W06
	.byte		PAN   , c_v-45
	.byte		N05   , An3 , v096
	.byte	W06
	.byte		PAN   , c_v-41
	.byte		N05   , Cs3 , v104
	.byte	W06
	.byte		PAN   , c_v-37
	.byte		N05   , En5 , v100
	.byte	W06
	.byte		PAN   , c_v-33
	.byte		N05   , Cs3 , v104
	.byte	W06
	.byte		PAN   , c_v-29
	.byte		N05   , An3 , v096
	.byte	W06
	.byte		PAN   , c_v-25
	.byte		N05   , Cs3 , v104
	.byte	W06
	.byte		PAN   , c_v-21
	.byte		N05   , En5 , v100
	.byte	W06
	.byte		PAN   , c_v-17
	.byte		N05   , Cs3 , v104
	.byte	W06
	.byte		PAN   , c_v-13
	.byte		N05   , An3 , v096
	.byte	W06
	.byte		PAN   , c_v-9
	.byte		N05   , Cs3 , v104
	.byte	W06
	.byte		PAN   , c_v-5
	.byte		N05   , En5 , v100
	.byte	W06
/* 001   ----------------------------------------
 */	.byte		PAN   , c_v-1
	.byte		N05   , Bn5 , v088
	.byte	W06
	.byte		PAN   , c_v+3
	.byte		N05   , Dn3 
	.byte	W06
	.byte		PAN   , c_v+7
	.byte		N05   , Bn5 
	.byte	W06
	.byte		PAN   , c_v+11
	.byte		N05   , Gn2 , v108
	.byte	W06
	.byte		PAN   , c_v+15
	.byte		N05   , Bn5 , v088
	.byte	W06
	.byte		PAN   , c_v+19
	.byte		N05   , Dn3 
	.byte	W06
	.byte		PAN   , c_v+23
	.byte		N05   , Bn5 
	.byte	W06
	.byte		PAN   , c_v+27
	.byte		N05   , Gn2 , v108
	.byte	W06
	.byte		PAN   , c_v+31
	.byte		N05   , Bn5 , v088
	.byte	W06
	.byte		PAN   , c_v+35
	.byte		N05   , Dn3 
	.byte	W06
	.byte		PAN   , c_v+39
	.byte		N05   , Bn5 
	.byte	W06
	.byte		PAN   , c_v+43
	.byte		N05   , Gn2 , v108
	.byte	W06
	.byte		PAN   , c_v+47
	.byte		N05   , Bn5 , v088
	.byte	W06
	.byte		PAN   , c_v+51
	.byte		N05   , Dn3 
	.byte	W06
	.byte		PAN   , c_v+55
	.byte		N05   , Bn5 
	.byte	W06
	.byte		PAN   , c_v+59
	.byte		N05   , Gn2 , v108
	.byte	W06
/* 002   ----------------------------------------
 */	.byte		PAN   , c_v+63
	.byte		N05   , En4 , v092
	.byte	W06
	.byte		PAN   , c_v+60
	.byte		N05   , An3 , v108
	.byte	W06
	.byte		PAN   , c_v+56
	.byte		N05   , An2 
	.byte	W06
	.byte		PAN   , c_v+52
	.byte		N05   , Cs3 , v100
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N05   , En4 , v092
	.byte	W06
	.byte		PAN   , c_v+44
	.byte		N05   , An3 , v108
	.byte	W06
	.byte		PAN   , c_v+40
	.byte		N05   , An2 
	.byte	W06
	.byte		PAN   , c_v+36
	.byte		N05   , Cs3 , v100
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N05   , En4 , v092
	.byte	W06
	.byte		PAN   , c_v+28
	.byte		N05   , An3 , v108
	.byte	W06
	.byte		PAN   , c_v+24
	.byte		N05   , An2 
	.byte	W06
	.byte		PAN   , c_v+20
	.byte		N05   , Cs3 , v100
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		N05   , En4 , v092
	.byte	W06
	.byte		PAN   , c_v+12
	.byte		N05   , An3 , v108
	.byte	W06
	.byte		PAN   , c_v+8
	.byte		N05   , An2 
	.byte	W06
	.byte		PAN   , c_v+4
	.byte		N05   , Cs3 , v100
	.byte	W06
/* 003   ----------------------------------------
 */	.byte		PAN   , c_v+0
	.byte		N05   , Gn4 
	.byte	W06
	.byte		PAN   , c_v-4
	.byte		N05   , Bn5 , v096
	.byte	W06
	.byte		PAN   , c_v-8
	.byte		N05   , Gn3 , v100
	.byte	W06
	.byte		PAN   , c_v-12
	.byte		N05   , Bn5 , v096
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		N05   , Gn4 , v100
	.byte	W06
	.byte		PAN   , c_v-20
	.byte		N05   , Bn5 , v096
	.byte	W06
	.byte		PAN   , c_v-24
	.byte		N05   , Gn3 , v100
	.byte	W06
	.byte		PAN   , c_v-28
	.byte		N05   , Bn5 , v096
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N05   , Gn4 , v100
	.byte	W06
	.byte		PAN   , c_v-36
	.byte		N05   , Bn5 , v096
	.byte	W06
	.byte		PAN   , c_v-40
	.byte		N05   , Gn3 , v100
	.byte	W06
	.byte		PAN   , c_v-44
	.byte		N05   , Bn5 , v096
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N05   , Gn4 , v100
	.byte	W06
	.byte		PAN   , c_v-52
	.byte		N05   , Bn5 , v096
	.byte	W06
	.byte		PAN   , c_v-56
	.byte		N05   , Gn3 , v100
	.byte	W06
	.byte		PAN   , c_v-60
	.byte		N05   , Bn5 , v096
	.byte	W06
mus_sky_canyon__act_2_7_B1:
/* 004   ----------------------------------------
 */	.byte		VOL   , 80*mus_sky_canyon__act_2_mvl/mxv
	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte	W96
/* 007   ----------------------------------------
 */	.byte	W72
	.byte		N05   , Dn3 , v092
	.byte	W06
	.byte		        Bn3 , v096
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Dn5 , v092
	.byte	W06
/* 008   ----------------------------------------
 */	.byte	W96
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */	.byte	W96
/* 011   ----------------------------------------
 */	.byte	W48
	.byte		        Gn4 , v100
	.byte	W06
	.byte		        Dn5 , v092
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn4 , v100
	.byte	W06
	.byte		        Dn3 , v092
	.byte	W06
	.byte		        Bn3 , v096
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Dn5 , v092
	.byte	W06
/* 012   ----------------------------------------
 */mus_sky_canyon__act_2_7_012:
	.byte	W24
	.byte		N14   , Cs4 , v127
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W12
	.byte		N10   , En4 
	.byte	W12
	.byte		N19   , An3 
	.byte	W24
	.byte		N30   , Bn3 
	.byte	W12
	.byte	PEND
/* 013   ----------------------------------------
 */	.byte	W96
/* 014   ----------------------------------------
 */mus_sky_canyon__act_2_7_014:
	.byte	W24
	.byte		N12   , Cs4 , v127
	.byte	W12
	.byte		N09   , An3 
	.byte	W12
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N14   , Dn4 
	.byte	W12
	.byte		N06   , En4 
	.byte	W12
	.byte		N20   , Gn4 
	.byte	W12
	.byte	PEND
/* 015   ----------------------------------------
 */mus_sky_canyon__act_2_7_015:
	.byte	W12
	.byte		N06   , Fs4 , v127
	.byte	W12
	.byte		N08   , En4 
	.byte	W72
	.byte	PEND
/* 016   ----------------------------------------
 */mus_sky_canyon__act_2_7_016:
	.byte	W24
	.byte		N10   , Cs4 , v127
	.byte	W12
	.byte		N08   , Dn4 
	.byte	W12
	.byte		N11   , En4 
	.byte	W12
	.byte		N16   , An3 
	.byte	W24
	.byte		N20   , Bn3 
	.byte	W12
	.byte	PEND
/* 017   ----------------------------------------
 */mus_sky_canyon__act_2_7_017:
	.byte	W24
	.byte		N18   , Gn3 , v127
	.byte	W24
	.byte		N16   , Bn3 
	.byte	W24
	.byte		N17   , Dn4 
	.byte	W24
	.byte	PEND
/* 018   ----------------------------------------
 */mus_sky_canyon__act_2_7_018:
	.byte		N28   , Cs4 , v127
	.byte	W36
	.byte		N19   , Dn4 
	.byte	W36
	.byte		N10   , En4 
	.byte	W12
	.byte		N19   , An3 
	.byte	W12
	.byte	PEND
/* 019   ----------------------------------------
 */	.byte	W12
	.byte		N09   , Cs4 
	.byte	W12
	.byte		N19   , Gn3 
	.byte	W24
	.byte		N05   , Bn4 , v092
	.byte	W06
	.byte		        Bn5 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn3 , v108
	.byte	W06
	.byte		        Bn4 , v092
	.byte	W06
	.byte		        Bn5 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn3 , v108
	.byte	W06
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_7_012
/* 021   ----------------------------------------
 */	.byte	W96
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_7_014
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_7_015
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_7_016
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_7_017
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_7_018
/* 027   ----------------------------------------
 */	.byte	W12
	.byte		N09   , Cs4 , v127
	.byte	W12
	.byte		N19   , Gn3 
	.byte	W72
/* 028   ----------------------------------------
 */	.byte		VOL   , 86*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn2 , v104
	.byte	W06
	.byte		VOL   , 84*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn3 
	.byte	W06
	.byte		VOL   , 81*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Gs5 , v096
	.byte	W06
	.byte		VOL   , 78*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Gs3 
	.byte	W06
	.byte		VOL   , 76*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn2 , v104
	.byte	W06
	.byte		VOL   , 73*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn3 
	.byte	W06
	.byte		VOL   , 70*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Gs5 , v096
	.byte	W06
	.byte		VOL   , 67*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Gs3 
	.byte	W06
	.byte		VOL   , 65*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn2 , v104
	.byte	W06
	.byte		VOL   , 62*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn3 
	.byte	W06
	.byte		VOL   , 59*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Gs5 , v096
	.byte	W06
	.byte		VOL   , 57*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Gs3 
	.byte	W06
	.byte		VOL   , 54*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn2 , v104
	.byte	W06
	.byte		VOL   , 52*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn3 
	.byte	W06
	.byte		VOL   , 49*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Gs5 , v096
	.byte	W06
	.byte		VOL   , 46*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Gs3 
	.byte	W06
/* 029   ----------------------------------------
 */	.byte		VOL   , 43*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn2 , v104
	.byte	W06
	.byte		VOL   , 41*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn3 
	.byte	W06
	.byte		VOL   , 37*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Gs5 , v096
	.byte	W06
	.byte		VOL   , 35*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Gs3 
	.byte	W06
	.byte		VOL   , 33*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn2 , v104
	.byte	W06
	.byte		VOL   , 29*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn3 
	.byte	W06
	.byte		VOL   , 27*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Gs5 , v096
	.byte	W06
	.byte		VOL   , 25*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Gs3 
	.byte	W06
	.byte		VOL   , 22*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        19*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        17*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        14*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        11*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        9*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        6*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        3*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
/* 030   ----------------------------------------
 */	.byte		        86*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An3 , v108
	.byte	W06
	.byte		VOL   , 84*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An5 
	.byte	W06
	.byte		VOL   , 81*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn5 , v104
	.byte	W06
	.byte		VOL   , 78*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An5 , v108
	.byte	W06
	.byte		VOL   , 76*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An3 
	.byte	W06
	.byte		VOL   , 73*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An5 
	.byte	W06
	.byte		VOL   , 70*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn5 , v104
	.byte	W06
	.byte		VOL   , 67*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An5 , v108
	.byte	W06
	.byte		VOL   , 65*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An3 
	.byte	W06
	.byte		VOL   , 62*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An5 
	.byte	W06
	.byte		VOL   , 59*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn5 , v104
	.byte	W06
	.byte		VOL   , 57*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An5 , v108
	.byte	W06
	.byte		VOL   , 54*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An3 
	.byte	W06
	.byte		VOL   , 52*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An5 
	.byte	W06
	.byte		VOL   , 49*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn5 , v104
	.byte	W06
	.byte		VOL   , 46*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An5 , v108
	.byte	W06
/* 031   ----------------------------------------
 */	.byte		VOL   , 43*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An3 
	.byte	W06
	.byte		VOL   , 41*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An5 
	.byte	W06
	.byte		VOL   , 37*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn5 , v104
	.byte	W06
	.byte		VOL   , 35*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An5 , v108
	.byte	W06
	.byte		VOL   , 33*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An3 
	.byte	W06
	.byte		VOL   , 29*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An5 
	.byte	W06
	.byte		VOL   , 27*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn5 , v104
	.byte	W06
	.byte		VOL   , 25*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An5 , v108
	.byte	W06
	.byte		VOL   , 22*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        19*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        17*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        14*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        11*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        9*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        6*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        3*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
/* 032   ----------------------------------------
 */	.byte		        86*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Gs3 , v064
	.byte	W06
	.byte		VOL   , 84*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn3 , v096
	.byte	W06
	.byte		VOL   , 81*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , En4 
	.byte	W06
	.byte		VOL   , 78*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn4 
	.byte	W06
	.byte		VOL   , 76*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Gs5 , v064
	.byte	W06
	.byte		VOL   , 73*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn4 , v096
	.byte	W06
	.byte		VOL   , 70*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn2 
	.byte	W06
	.byte		VOL   , 67*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , En5 
	.byte	W06
	.byte		VOL   , 65*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Gs5 , v064
	.byte	W06
	.byte		VOL   , 62*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , En3 , v096
	.byte	W06
	.byte		VOL   , 59*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Gs5 , v064
	.byte	W06
	.byte		VOL   , 57*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , En4 , v096
	.byte	W06
	.byte		VOL   , 54*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Gs4 , v064
	.byte	W06
	.byte		VOL   , 52*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Gs5 
	.byte	W06
	.byte		VOL   , 49*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn4 , v096
	.byte	W06
	.byte		VOL   , 46*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Gs5 , v064
	.byte	W06
/* 033   ----------------------------------------
 */	.byte		VOL   , 43*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn4 , v096
	.byte	W06
	.byte		VOL   , 41*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Gs4 , v064
	.byte	W06
	.byte		VOL   , 37*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Gs5 
	.byte	W06
	.byte		VOL   , 35*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn4 , v096
	.byte	W06
	.byte		VOL   , 33*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Gs4 , v064
	.byte	W06
	.byte		VOL   , 29*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , En4 , v096
	.byte	W06
	.byte		VOL   , 27*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn2 
	.byte	W06
	.byte		VOL   , 25*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , En5 
	.byte	W06
	.byte		VOL   , 22*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Gs5 , v064
	.byte	W06
	.byte		VOL   , 19*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn2 , v096
	.byte	W06
	.byte		VOL   , 17*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Gs2 , v064
	.byte	W06
	.byte		VOL   , 14*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn5 , v096
	.byte	W06
	.byte		VOL   , 11*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Gs5 , v064
	.byte	W06
	.byte		VOL   , 9*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , En5 , v096
	.byte	W06
	.byte		VOL   , 6*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , En4 
	.byte	W06
	.byte		VOL   , 3*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , En3 
	.byte	W06
/* 034   ----------------------------------------
 */	.byte		VOL   , 86*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn4 , v100
	.byte	W06
	.byte		VOL   , 84*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An5 , v108
	.byte	W06
	.byte		VOL   , 81*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An2 
	.byte	W06
	.byte		VOL   , 78*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An4 
	.byte	W06
	.byte		VOL   , 76*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn5 , v100
	.byte	W06
	.byte		VOL   , 73*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An5 , v108
	.byte	W06
	.byte		VOL   , 70*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An2 
	.byte	W06
	.byte		VOL   , 67*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn5 , v100
	.byte	W06
	.byte		VOL   , 65*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn3 
	.byte	W06
	.byte		VOL   , 62*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn5 
	.byte	W06
	.byte		VOL   , 59*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An3 , v108
	.byte	W06
	.byte		VOL   , 57*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn3 , v100
	.byte	W06
	.byte		VOL   , 54*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn5 
	.byte	W06
	.byte		VOL   , 52*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An3 , v108
	.byte	W06
	.byte		VOL   , 49*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An4 
	.byte	W06
	.byte		VOL   , 46*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn5 , v100
	.byte	W06
/* 035   ----------------------------------------
 */	.byte		VOL   , 43*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An2 , v108
	.byte	W06
	.byte		VOL   , 41*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn3 , v100
	.byte	W06
	.byte		VOL   , 37*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn4 
	.byte	W06
	.byte		VOL   , 35*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An2 , v108
	.byte	W06
	.byte		VOL   , 33*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn4 , v100
	.byte	W06
	.byte		VOL   , 29*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An2 , v108
	.byte	W06
	.byte		VOL   , 27*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn5 , v100
	.byte	W06
	.byte		VOL   , 25*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An5 , v108
	.byte	W06
	.byte		VOL   , 22*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An3 
	.byte	W06
	.byte		VOL   , 19*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn3 , v100
	.byte	W06
	.byte		VOL   , 17*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An4 , v108
	.byte	W06
	.byte		VOL   , 14*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An2 
	.byte	W06
	.byte		VOL   , 11*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn3 , v100
	.byte	W06
	.byte		VOL   , 9*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn4 
	.byte	W06
	.byte		VOL   , 6*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn3 
	.byte	W06
	.byte		VOL   , 3*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn5 
	.byte	W06
/* 036   ----------------------------------------
 */	.byte	W96
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	W96
/* 039   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_sky_canyon__act_2_7_B1
mus_sky_canyon__act_2_7_B2:
/* 040   ----------------------------------------
 */	.byte	FINE

/* **************** Track 8 (Midi-Chn.8) **************** */

mus_sky_canyon__act_2_8:
	.byte	KEYSH , mus_sky_canyon__act_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 1
	.byte		VOL   , 80*mus_sky_canyon__act_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 56
	.byte		LFODL , 0
	.byte		MOD   , 0
	.byte		MODT  , 2
	.byte		N05   , An2 , v096
	.byte	W06
	.byte		PAN   , c_v+60
	.byte		N05   , Cs3 , v104
	.byte	W06
	.byte		PAN   , c_v+56
	.byte		N05   , An4 , v096
	.byte	W06
	.byte		PAN   , c_v+52
	.byte		N05   , En3 , v100
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N05   , An2 , v096
	.byte	W06
	.byte		PAN   , c_v+44
	.byte		N05   , Cs3 , v104
	.byte	W06
	.byte		PAN   , c_v+40
	.byte		N05   , An4 , v096
	.byte	W06
	.byte		PAN   , c_v+36
	.byte		N05   , En3 , v100
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N05   , An2 , v096
	.byte	W06
	.byte		PAN   , c_v+28
	.byte		N05   , Cs3 , v104
	.byte	W06
	.byte		PAN   , c_v+24
	.byte		N05   , An4 , v096
	.byte	W06
	.byte		PAN   , c_v+20
	.byte		N05   , En3 , v100
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		N05   , An2 , v096
	.byte	W06
	.byte		PAN   , c_v+12
	.byte		N05   , Cs3 , v104
	.byte	W06
	.byte		PAN   , c_v+8
	.byte		N05   , An4 , v096
	.byte	W06
	.byte		PAN   , c_v+4
	.byte		N05   , En3 , v100
	.byte	W06
/* 001   ----------------------------------------
 */	.byte		PAN   , c_v+0
	.byte		N05   , Bn5 , v088
	.byte	W06
	.byte		PAN   , c_v-4
	.byte		N05   , Gn4 , v108
	.byte	W06
	.byte		PAN   , c_v-8
	.byte		N05   , Dn3 , v088
	.byte	W06
	.byte		PAN   , c_v-12
	.byte		N05   , Dn5 
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		N05   , Bn5 
	.byte	W06
	.byte		PAN   , c_v-20
	.byte		N05   , Gn4 , v108
	.byte	W06
	.byte		PAN   , c_v-24
	.byte		N05   , Dn3 , v088
	.byte	W06
	.byte		PAN   , c_v-28
	.byte		N05   , Dn5 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N05   , Bn5 
	.byte	W06
	.byte		PAN   , c_v-36
	.byte		N05   , Gn4 , v108
	.byte	W06
	.byte		PAN   , c_v-40
	.byte		N05   , Dn3 , v088
	.byte	W06
	.byte		PAN   , c_v-44
	.byte		N05   , Dn5 
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N05   , Bn5 
	.byte	W06
	.byte		PAN   , c_v-52
	.byte		N05   , Gn4 , v108
	.byte	W06
	.byte		PAN   , c_v-56
	.byte		N05   , Dn3 , v088
	.byte	W06
	.byte		PAN   , c_v-60
	.byte		N05   , Dn5 
	.byte	W06
/* 002   ----------------------------------------
 */	.byte		PAN   , c_v-64
	.byte		N05   , Cs5 , v100
	.byte	W06
	.byte		PAN   , c_v-60
	.byte		N05   , Cs3 
	.byte	W06
	.byte		PAN   , c_v-56
	.byte		N05   , An3 , v108
	.byte	W06
	.byte		PAN   , c_v-52
	.byte		N05   , Cs4 , v100
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N05   , Cs5 
	.byte	W06
	.byte		PAN   , c_v-44
	.byte		N05   , Cs3 
	.byte	W06
	.byte		PAN   , c_v-40
	.byte		N05   , An3 , v108
	.byte	W06
	.byte		PAN   , c_v-36
	.byte		N05   , Cs4 , v100
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N05   , Cs5 
	.byte	W06
	.byte		PAN   , c_v-28
	.byte		N05   , Cs3 
	.byte	W06
	.byte		PAN   , c_v-24
	.byte		N05   , An3 , v108
	.byte	W06
	.byte		PAN   , c_v-19
	.byte		N05   , Cs4 , v100
	.byte	W06
	.byte		PAN   , c_v-15
	.byte		N05   , Cs5 
	.byte	W06
	.byte		PAN   , c_v-11
	.byte		N05   , Cs3 
	.byte	W06
	.byte		PAN   , c_v-7
	.byte		N05   , An3 , v108
	.byte	W06
	.byte		PAN   , c_v-3
	.byte		N05   , Cs4 , v100
	.byte	W06
/* 003   ----------------------------------------
 */	.byte		PAN   , c_v+1
	.byte		N05   , Gn2 
	.byte	W06
	.byte		PAN   , c_v+5
	.byte		N05   , Gn4 
	.byte	W06
	.byte		PAN   , c_v+9
	.byte		N05   , Dn5 , v092
	.byte	W06
	.byte		PAN   , c_v+13
	.byte		N05   , Bn2 , v096
	.byte	W06
	.byte		PAN   , c_v+17
	.byte		N05   , Gn2 , v100
	.byte	W06
	.byte		PAN   , c_v+22
	.byte		N05   , Gn4 
	.byte	W06
	.byte		PAN   , c_v+26
	.byte		N05   , Dn5 , v092
	.byte	W06
	.byte		PAN   , c_v+30
	.byte		N05   , Bn2 , v096
	.byte	W06
	.byte		PAN   , c_v+34
	.byte		N05   , Gn2 , v100
	.byte	W06
	.byte		PAN   , c_v+38
	.byte		N05   , Gn4 
	.byte	W06
	.byte		PAN   , c_v+42
	.byte		N05   , Dn5 , v092
	.byte	W06
	.byte		PAN   , c_v+46
	.byte		N05   , Bn2 , v096
	.byte	W06
	.byte		PAN   , c_v+50
	.byte		N05   , Gn2 , v100
	.byte	W06
	.byte		PAN   , c_v+54
	.byte		N05   , Gn4 
	.byte	W06
	.byte		PAN   , c_v+58
	.byte		N05   , Dn5 , v092
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N05   , Bn2 , v096
	.byte	W06
mus_sky_canyon__act_2_8_B1:
/* 004   ----------------------------------------
 */	.byte		VOL   , 80*mus_sky_canyon__act_2_mvl/mxv
	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte	W96
/* 007   ----------------------------------------
 */mus_sky_canyon__act_2_8_007:
	.byte	W48
	.byte		N05   , Gn4 , v100
	.byte	W06
	.byte		        Bn4 , v096
	.byte	W06
	.byte		        Dn3 , v092
	.byte	W06
	.byte		        Gn5 , v100
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn3 , v092
	.byte	W06
	.byte		        Gn3 , v100
	.byte	W06
	.byte		        Dn3 , v092
	.byte	W06
	.byte	PEND
/* 008   ----------------------------------------
 */	.byte	W96
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */	.byte	W96
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_8_007
/* 012   ----------------------------------------
 */	.byte		VOICE , 1
	.byte		VOL   , 80*mus_sky_canyon__act_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 56
	.byte		LFODL , 0
	.byte		MOD   , 0
	.byte		MODT  , 2
	.byte		TIE   , An2 , v127
	.byte	W96
/* 013   ----------------------------------------
 */	.byte	W02
	.byte		N88   , Gn2 , v104
	.byte	W01
	.byte		EOT   , An2 
	.byte	W92
	.byte	W01
/* 014   ----------------------------------------
 */mus_sky_canyon__act_2_8_014:
	.byte	W01
	.byte		N88   , An2 , v104
	.byte	W92
	.byte	W03
	.byte	PEND
/* 015   ----------------------------------------
 */mus_sky_canyon__act_2_8_015:
	.byte	W01
	.byte		N90   , Bn2 , v116
	.byte	W92
	.byte	W03
	.byte	PEND
/* 016   ----------------------------------------
 */mus_sky_canyon__act_2_8_016:
	.byte	W01
	.byte		N84   , An2 , v108
	.byte	W92
	.byte	W03
	.byte	PEND
/* 017   ----------------------------------------
 */	.byte		N92   , Gn2 , v104
	.byte	W96
/* 018   ----------------------------------------
 */mus_sky_canyon__act_2_8_018:
	.byte	W01
	.byte		N90   , An2 , v108
	.byte	W92
	.byte	W03
	.byte	PEND
/* 019   ----------------------------------------
 */	.byte		N72   , Gn2 
	.byte	W48
	.byte		N05   , Gn5 
	.byte	W06
	.byte		        Dn3 , v092
	.byte	W06
	.byte		        Gn5 , v108
	.byte	W06
	.byte		        Dn5 , v092
	.byte	W06
	.byte		        Gn5 , v108
	.byte	W06
	.byte		        Dn3 , v092
	.byte	W06
	.byte		        Gn5 , v108
	.byte	W06
	.byte		        Dn5 , v092
	.byte	W06
/* 020   ----------------------------------------
 */	.byte		TIE   , An2 , v127
	.byte	W96
/* 021   ----------------------------------------
 */	.byte	W02
	.byte		N88   , Gn2 , v104
	.byte	W01
	.byte		EOT   , An2 
	.byte	W92
	.byte	W01
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_8_014
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_8_015
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_8_016
/* 025   ----------------------------------------
 */	.byte		N92   , Gn2 , v104
	.byte	W96
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_8_018
/* 027   ----------------------------------------
 */	.byte		N72   , Gn2 , v108
	.byte	W96
/* 028   ----------------------------------------
 */	.byte		VOL   , 86*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn4 , v096
	.byte	W06
	.byte		VOL   , 84*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , En4 
	.byte	W06
	.byte		VOL   , 81*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Gs3 , v064
	.byte	W06
	.byte		VOL   , 78*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , En5 , v096
	.byte	W06
	.byte		VOL   , 76*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn4 
	.byte	W06
	.byte		VOL   , 73*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , En4 
	.byte	W06
	.byte		VOL   , 70*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Gs3 , v064
	.byte	W06
	.byte		VOL   , 67*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , En5 , v096
	.byte	W06
	.byte		VOL   , 65*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn4 
	.byte	W06
	.byte		VOL   , 62*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , En4 
	.byte	W06
	.byte		VOL   , 59*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Gs3 , v064
	.byte	W06
	.byte		VOL   , 57*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , En5 , v096
	.byte	W06
	.byte		VOL   , 54*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn4 
	.byte	W06
	.byte		VOL   , 52*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , En4 
	.byte	W06
	.byte		VOL   , 49*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Gs3 , v064
	.byte	W06
	.byte		VOL   , 46*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , En5 , v096
	.byte	W06
/* 029   ----------------------------------------
 */	.byte		VOL   , 43*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn4 
	.byte	W06
	.byte		VOL   , 41*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , En4 
	.byte	W06
	.byte		VOL   , 37*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Gs3 , v064
	.byte	W06
	.byte		VOL   , 35*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , En5 , v096
	.byte	W06
	.byte		VOL   , 33*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn4 
	.byte	W06
	.byte		VOL   , 29*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , En4 
	.byte	W06
	.byte		VOL   , 27*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Gs3 , v064
	.byte	W06
	.byte		VOL   , 25*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , En5 , v096
	.byte	W06
	.byte		VOL   , 22*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        19*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        17*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        14*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        11*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        9*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        6*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        3*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
/* 030   ----------------------------------------
 */	.byte		        86*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An3 , v108
	.byte	W06
	.byte		VOL   , 84*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An5 
	.byte	W06
	.byte		VOL   , 81*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An2 
	.byte	W06
	.byte		VOL   , 78*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn4 , v100
	.byte	W06
	.byte		VOL   , 76*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An3 , v108
	.byte	W06
	.byte		VOL   , 73*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An5 
	.byte	W06
	.byte		VOL   , 70*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An2 
	.byte	W06
	.byte		VOL   , 67*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn4 , v100
	.byte	W06
	.byte		VOL   , 65*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An3 , v108
	.byte	W06
	.byte		VOL   , 62*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An5 
	.byte	W06
	.byte		VOL   , 59*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An2 
	.byte	W06
	.byte		VOL   , 57*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn4 , v100
	.byte	W06
	.byte		VOL   , 54*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An3 , v108
	.byte	W06
	.byte		VOL   , 52*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An5 
	.byte	W06
	.byte		VOL   , 49*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An2 
	.byte	W06
	.byte		VOL   , 46*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn4 , v100
	.byte	W06
/* 031   ----------------------------------------
 */	.byte		VOL   , 43*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An3 , v108
	.byte	W06
	.byte		VOL   , 41*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An5 
	.byte	W06
	.byte		VOL   , 37*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An2 
	.byte	W06
	.byte		VOL   , 35*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn4 , v100
	.byte	W06
	.byte		VOL   , 33*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An3 , v108
	.byte	W06
	.byte		VOL   , 29*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An5 
	.byte	W06
	.byte		VOL   , 27*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An2 
	.byte	W06
	.byte		VOL   , 25*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn4 , v100
	.byte	W06
	.byte		VOL   , 22*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        19*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        17*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        14*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        11*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        9*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        6*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        3*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
/* 032   ----------------------------------------
 */	.byte		        86*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , En3 , v096
	.byte	W06
	.byte		VOL   , 84*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn3 
	.byte	W06
	.byte		VOL   , 81*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn2 
	.byte	W06
	.byte		VOL   , 78*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn4 
	.byte	W06
	.byte		VOL   , 76*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , En3 
	.byte	W06
	.byte		VOL   , 73*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn3 
	.byte	W06
	.byte		VOL   , 70*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn2 
	.byte	W06
	.byte		VOL   , 67*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn4 
	.byte	W06
	.byte		VOL   , 65*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , En3 
	.byte	W06
	.byte		VOL   , 62*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn3 
	.byte	W06
	.byte		VOL   , 59*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn2 
	.byte	W06
	.byte		VOL   , 57*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn4 
	.byte	W06
	.byte		VOL   , 54*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , En3 
	.byte	W06
	.byte		VOL   , 52*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn3 
	.byte	W06
	.byte		VOL   , 49*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn2 
	.byte	W06
	.byte		VOL   , 46*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn4 
	.byte	W06
/* 033   ----------------------------------------
 */	.byte		VOL   , 43*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , En3 
	.byte	W06
	.byte		VOL   , 41*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn3 
	.byte	W06
	.byte		VOL   , 37*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn2 
	.byte	W06
	.byte		VOL   , 35*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn4 
	.byte	W06
	.byte		VOL   , 33*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , En3 
	.byte	W06
	.byte		VOL   , 29*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn3 
	.byte	W06
	.byte		VOL   , 27*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn2 
	.byte	W06
	.byte		VOL   , 25*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Bn4 
	.byte	W06
	.byte		VOL   , 22*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        19*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        17*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        14*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        11*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        9*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        6*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        3*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
/* 034   ----------------------------------------
 */	.byte		        86*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn3 , v100
	.byte	W06
	.byte		VOL   , 84*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An2 , v108
	.byte	W06
	.byte		VOL   , 81*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn5 , v100
	.byte	W06
	.byte		VOL   , 78*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn4 
	.byte	W06
	.byte		VOL   , 76*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn3 
	.byte	W06
	.byte		VOL   , 73*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An2 , v108
	.byte	W06
	.byte		VOL   , 70*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn5 , v100
	.byte	W06
	.byte		VOL   , 67*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn4 
	.byte	W06
	.byte		VOL   , 65*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn3 
	.byte	W06
	.byte		VOL   , 62*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An2 , v108
	.byte	W06
	.byte		VOL   , 59*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn5 , v100
	.byte	W06
	.byte		VOL   , 57*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn4 
	.byte	W06
	.byte		VOL   , 54*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn3 
	.byte	W06
	.byte		VOL   , 52*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An2 , v108
	.byte	W06
	.byte		VOL   , 49*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn5 , v100
	.byte	W06
	.byte		VOL   , 46*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn4 
	.byte	W06
/* 035   ----------------------------------------
 */	.byte		VOL   , 43*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn3 
	.byte	W06
	.byte		VOL   , 41*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An2 , v108
	.byte	W06
	.byte		VOL   , 37*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn5 , v100
	.byte	W06
	.byte		VOL   , 35*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn4 
	.byte	W06
	.byte		VOL   , 33*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn3 
	.byte	W06
	.byte		VOL   , 29*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , An2 , v108
	.byte	W06
	.byte		VOL   , 27*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn5 , v100
	.byte	W06
	.byte		VOL   , 25*mus_sky_canyon__act_2_mvl/mxv
	.byte		N05   , Dn4 
	.byte	W06
	.byte		VOL   , 22*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        19*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        17*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        14*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        11*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        9*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        6*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
	.byte		        3*mus_sky_canyon__act_2_mvl/mxv
	.byte	W06
/* 036   ----------------------------------------
 */	.byte	W96
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	W96
/* 039   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_sky_canyon__act_2_8_B1
mus_sky_canyon__act_2_8_B2:
/* 040   ----------------------------------------
 */	.byte	FINE

/* **************** Track 9 (Midi-Chn.9) **************** */

mus_sky_canyon__act_2_9:
	.byte	KEYSH , mus_sky_canyon__act_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 8
	.byte		VOL   , 104*mus_sky_canyon__act_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 13
	.byte		LFOS  , 18
	.byte		LFODL , 20
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		BEND  , c_v+0
	.byte		N96   , En2 , v116
	.byte		N96   , Cs3 
	.byte	W96
/* 001   ----------------------------------------
 */	.byte		        Dn2 , v100
	.byte		N96   , Dn3 
	.byte	W96
/* 002   ----------------------------------------
 */	.byte		        Cs2 , v104
	.byte		N96   , An2 
	.byte	W96
/* 003   ----------------------------------------
 */	.byte		        Dn2 , v100
	.byte		N96   , Dn3 
	.byte	W96
mus_sky_canyon__act_2_9_B1:
/* 004   ----------------------------------------
 */mus_sky_canyon__act_2_9_004:
	.byte		N12   , An3 , v120
	.byte		N18   , En4 , v116
	.byte	W24
	.byte		N12   , An3 , v108
	.byte		N12   , En4 , v120
	.byte	W24
	.byte		        En3 , v092
	.byte		N12   , Cs4 , v108
	.byte	W12
	.byte		N06   , An3 , v120
	.byte		N06   , En4 , v100
	.byte	W24
	.byte		N66   , Gn3 , v104
	.byte		N66   , Bn3 , v116
	.byte	W12
	.byte	PEND
/* 005   ----------------------------------------
 */mus_sky_canyon__act_2_9_005:
	.byte	W60
	.byte		N18   , Gn3 , v080
	.byte		N18   , An3 , v076
	.byte	W24
	.byte		N12   , En3 , v108
	.byte		N12   , An3 , v096
	.byte	W12
	.byte	PEND
/* 006   ----------------------------------------
 */mus_sky_canyon__act_2_9_006:
	.byte	W12
	.byte		N12   , Cs3 , v108
	.byte		N12   , An3 
	.byte	W24
	.byte		N30   , En3 , v100
	.byte		N30   , Cs4 , v076
	.byte	W36
	.byte		N06   , An2 , v080
	.byte		N06   , En3 , v092
	.byte	W12
	.byte		N32   , Gn3 , v108
	.byte		N32   , Bn3 , v104
	.byte	W12
	.byte	PEND
/* 007   ----------------------------------------
 */mus_sky_canyon__act_2_9_007:
	.byte	W24
	.byte		N06   , En3 , v080
	.byte		N06   , Gn3 , v092
	.byte	W12
	.byte		N42   , Gn3 , v108
	.byte		N42   , Dn4 , v104
	.byte	W60
	.byte	PEND
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_9_004
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_9_005
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_9_006
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_2_9_007
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
 */	.byte	W24
	.byte		N23   , Gn2 , v127
	.byte	W24
	.byte		N21   , Bn2 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
/* 022   ----------------------------------------
 */	.byte		N80   , Cs3 
	.byte	W96
/* 023   ----------------------------------------
 */	.byte	W24
	.byte		N19   , Gn2 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
/* 024   ----------------------------------------
 */	.byte		N76   , En3 
	.byte	W96
/* 025   ----------------------------------------
 */	.byte	W24
	.byte		N23   , Gn3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		        En3 
	.byte	W24
/* 026   ----------------------------------------
 */	.byte		N32   , Dn3 
	.byte	W36
	.byte		        Cs3 
	.byte	W36
	.byte		TIE   , An2 
	.byte	W24
/* 027   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
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
 */	.byte	W01
	.byte		TIE   , Fs2 
	.byte	W92
	.byte	W03
/* 037   ----------------------------------------
 */	.byte	W44
	.byte	W02
	.byte		N03   , As2 , v060
	.byte	W02
	.byte		EOT   , Fs2 
	.byte	W01
	.byte		N44   , Bn2 , v116
	.byte	W44
	.byte	W03
/* 038   ----------------------------------------
 */	.byte		TIE   , Fs2 , v096
	.byte	W96
/* 039   ----------------------------------------
 */	.byte	W44
	.byte	W01
	.byte		N07   , As2 , v076
	.byte	W04
	.byte		EOT   , Fs2 
	.byte		N44   , Bn2 , v080
	.byte	W44
	.byte	W03
	.byte	GOTO
	 mPtr	mus_sky_canyon__act_2_9_B1
mus_sky_canyon__act_2_9_B2:
/* 040   ----------------------------------------
 */	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_sky_canyon__act_2):
	.byte	9	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_sky_canyon__act_2_pri	/* Priority */
	.byte	mus_sky_canyon__act_2_rev	/* Reverb */

mAlignWord
	mPtr	mus_sky_canyon__act_2_grp

	mPtr	mus_sky_canyon__act_2_1
	mPtr	mus_sky_canyon__act_2_2
	mPtr	mus_sky_canyon__act_2_3
	mPtr	mus_sky_canyon__act_2_4
	mPtr	mus_sky_canyon__act_2_5
	mPtr	mus_sky_canyon__act_2_6
	mPtr	mus_sky_canyon__act_2_7
	mPtr	mus_sky_canyon__act_2_8
	mPtr	mus_sky_canyon__act_2_9

	.end
