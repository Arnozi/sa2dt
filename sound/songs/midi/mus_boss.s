	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_boss_grp, voicegroup014
	.equ	mus_boss_pri, 0
	.equ	mus_boss_rev, reverb_set+0
	.equ	mus_boss_mvl, 110
	.equ	mus_boss_key, 0
	.equ	mus_boss_tbs, 1
	.equ	mus_boss_exg, 1
	.equ	mus_boss_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_boss)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_boss_1:
	.byte	KEYSH , mus_boss_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 124*mus_boss_tbs/2
	.byte		VOICE , 1
	.byte		VOL   , 40*mus_boss_mvl/mxv
	.byte	W84
	.byte	W03
	.byte		N03   , Cn4 , v127
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
/* 001   ----------------------------------------
 */	.byte		        Ds4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
mus_boss_1_B1:
/* 002   ----------------------------------------
 */	.byte		N12   , Gn4 , v127
	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W42
	.byte		N04   , Gn2 , v048
	.byte	W04
	.byte		        Cn3 , v052
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Gn2 , v056
	.byte	W04
	.byte		        Cn3 , v060
	.byte	W04
	.byte		        Dn3 , v064
	.byte	W04
	.byte		        Gn3 , v068
	.byte	W04
	.byte		        Cn4 , v072
	.byte	W04
	.byte		        Dn4 , v076
	.byte	W04
	.byte		        Gn3 , v080
	.byte	W04
	.byte		        Cn4 , v084
	.byte	W04
	.byte		        Dn4 , v088
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Cn5 , v092
	.byte	W02
/* 004   ----------------------------------------
 */	.byte	W02
	.byte		        Dn5 , v096
	.byte	W04
	.byte		        Gn4 , v100
	.byte	W04
	.byte		        Cn5 , v104
	.byte	W04
	.byte		        Dn5 , v108
	.byte	W04
	.byte		        Gn5 , v112
	.byte	W04
	.byte		        Cn5 , v116
	.byte	W04
	.byte		        Dn5 , v120
	.byte	W04
	.byte		        Gn5 , v112
	.byte	W04
	.byte		        Cn6 
	.byte	W04
	.byte		        Dn6 , v108
	.byte	W04
	.byte		        Cn6 
	.byte	W04
	.byte		        Gn5 , v104
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Dn5 , v100
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Gn4 , v096
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn4 , v092
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Gn4 , v088
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Cn4 , v084
	.byte	W04
	.byte		        Dn4 
	.byte	W02
/* 005   ----------------------------------------
 */	.byte	W02
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn4 , v080
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Gn3 , v076
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Dn4 , v072
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Gn3 , v068
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Gn2 , v064
	.byte	W56
	.byte	W02
/* 006   ----------------------------------------
 */mus_boss_1_006:
	.byte		N17   , Fs3 , v127
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N40   
	.byte	W42
	.byte		N05   , Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte	PEND
/* 007   ----------------------------------------
 */mus_boss_1_007:
	.byte		N17   , Dn3 , v127
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N40   
	.byte	W42
	.byte		N05   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte	PEND
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_1_006
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_1_007
/* 010   ----------------------------------------
 */	.byte		N17   , Fs3 , v127
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N40   
	.byte	W42
	.byte		N05   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
/* 011   ----------------------------------------
 */	.byte		N17   , Ds3 
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N44   
	.byte	W48
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
/* 012   ----------------------------------------
 */	.byte		N32   , Dn3 
	.byte	W36
	.byte		N52   , As2 
	.byte	W54
	.byte		N04   , Gn2 , v048
	.byte	W04
	.byte		        Cn3 , v052
	.byte	W02
/* 013   ----------------------------------------
 */	.byte	W02
	.byte		        Dn3 
	.byte	W04
	.byte		        Gn2 , v056
	.byte	W04
	.byte		        Cn3 , v060
	.byte	W04
	.byte		        Dn3 , v064
	.byte	W04
	.byte		        Gn3 , v068
	.byte	W04
	.byte		        Cn4 , v072
	.byte	W04
	.byte		        Dn4 , v076
	.byte	W04
	.byte		        Gn3 , v080
	.byte	W04
	.byte		        Cn4 , v084
	.byte	W04
	.byte		        Dn4 , v088
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Cn5 , v092
	.byte	W04
	.byte		        Dn5 , v096
	.byte	W04
	.byte		        Gn4 , v100
	.byte	W04
	.byte		        Cn5 , v104
	.byte	W04
	.byte		        Dn5 , v108
	.byte	W04
	.byte		        Gn5 , v112
	.byte	W04
	.byte		        Cn5 , v116
	.byte	W04
	.byte		        Dn5 , v120
	.byte	W04
	.byte		        Gn5 , v112
	.byte	W04
	.byte		        Cn6 
	.byte	W04
	.byte		        Dn6 , v108
	.byte	W04
	.byte		        Cn6 
	.byte	W04
	.byte		N01   , Gn5 , v104
	.byte	W02
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_1_006
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_1_007
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_1_006
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_1_007
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_1_006
/* 019   ----------------------------------------
 */	.byte		N17   , Dn3 , v127
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N44   
	.byte	W48
	.byte		N05   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
/* 020   ----------------------------------------
 */	.byte		N32   , Dn3 
	.byte	W36
	.byte		N52   , As2 
	.byte	W54
	.byte		N04   , Gn2 , v028
	.byte	W04
	.byte		        Cn3 , v032
	.byte	W02
/* 021   ----------------------------------------
 */	.byte	W02
	.byte		        Dn3 
	.byte	W04
	.byte		        Gn2 , v036
	.byte	W04
	.byte		        Cn3 , v040
	.byte	W04
	.byte		        Dn3 , v044
	.byte	W04
	.byte		        Gn3 , v048
	.byte	W04
	.byte		        Cn4 , v052
	.byte	W04
	.byte		        Dn4 , v056
	.byte	W04
	.byte		        Gn3 , v060
	.byte	W04
	.byte		        Cn4 , v064
	.byte	W04
	.byte		        Dn4 , v068
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Cn5 , v072
	.byte	W04
	.byte		        Dn5 , v076
	.byte	W04
	.byte		        Gn4 , v080
	.byte	W04
	.byte		        Cn5 , v084
	.byte	W04
	.byte		        Dn5 , v088
	.byte	W04
	.byte		        Gn5 , v092
	.byte	W04
	.byte		        Cn5 , v096
	.byte	W04
	.byte		        Dn5 , v100
	.byte	W04
	.byte		        Gn5 , v092
	.byte	W04
	.byte		        Cn6 
	.byte	W04
	.byte		        Dn6 , v088
	.byte	W04
	.byte		        Cn6 
	.byte	W04
	.byte		        Gn5 , v084
	.byte	W02
/* 022   ----------------------------------------
 */	.byte	W02
	.byte		        Dn5 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Dn5 , v080
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Gn4 , v076
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn4 , v072
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Gn4 , v068
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Cn4 , v064
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn4 , v060
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Gn3 , v056
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Dn4 , v052
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Gn3 , v048
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Gn2 , v044
	.byte	W10
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
	.byte	GOTO
	 mPtr	mus_boss_1_B1
mus_boss_1_B2:
/* 038   ----------------------------------------
 */	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_boss_2:
	.byte	KEYSH , mus_boss_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 88
	.byte		VOL   , 70*mus_boss_mvl/mxv
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
mus_boss_2_B1:
/* 002   ----------------------------------------
 */mus_boss_2_002:
	.byte		N12   , Ds3 , v127
	.byte	W12
	.byte		N03   , Ds3 , v056
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   , Ds3 , v127
	.byte	W12
	.byte		N03   , Ds3 , v056
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   , Cs3 , v127
	.byte	W12
	.byte		N03   , Cs3 , v056
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte	PEND
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_2_002
/* 004   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_2_002
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_2_002
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_2_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_2_002
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_2_002
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_2_002
/* 010   ----------------------------------------
 */mus_boss_2_010:
	.byte		N12   , En3 , v127
	.byte	W12
	.byte		N03   , En3 , v056
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   , En3 , v127
	.byte	W12
	.byte		N03   , En3 , v056
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   , Dn3 , v127
	.byte	W12
	.byte		N03   , Dn3 , v056
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte	PEND
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_2_010
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_2_002
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_2_002
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_2_002
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_2_002
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_2_002
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_2_002
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_2_010
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_2_010
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_2_002
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_2_002
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
 */	.byte	PATT
	 mPtr	mus_boss_2_002
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_2_002
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_2_002
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_2_002
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_2_010
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_2_010
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_2_010
/* 037   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_2_010
	.byte	GOTO
	 mPtr	mus_boss_2_B1
mus_boss_2_B2:
/* 038   ----------------------------------------
 */	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_boss_3:
	.byte	KEYSH , mus_boss_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 49
	.byte		VOL   , 100*mus_boss_mvl/mxv
	.byte		BENDR , 59
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
mus_boss_3_B1:
/* 002   ----------------------------------------
 */mus_boss_3_002:
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		        Dn2 , v116
	.byte	W06
	.byte		        Gn2 , v112
	.byte	W06
	.byte		        Dn3 , v104
	.byte	W06
	.byte		        Gn3 , v116
	.byte	W06
	.byte		        Gn1 , v127
	.byte	W06
	.byte		        Dn2 , v116
	.byte	W06
	.byte		        Gn2 , v112
	.byte	W06
	.byte		        Dn3 , v104
	.byte	W06
	.byte		        Gn3 , v116
	.byte	W06
	.byte		        Gn1 , v127
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 , v124
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn3 , v127
	.byte	W06
	.byte	PEND
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_3_002
/* 004   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_3_002
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_3_002
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_3_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_3_002
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_3_002
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_3_002
/* 010   ----------------------------------------
 */mus_boss_3_010:
	.byte		N06   , Gs1 , v127
	.byte	W06
	.byte		        Ds2 , v116
	.byte	W06
	.byte		        Gs2 , v112
	.byte	W06
	.byte		        Ds3 , v104
	.byte	W06
	.byte		        Gs3 , v116
	.byte	W06
	.byte		        Gs1 , v127
	.byte	W06
	.byte		        Ds2 , v116
	.byte	W06
	.byte		        Gs2 , v112
	.byte	W06
	.byte		        Ds3 , v104
	.byte	W06
	.byte		        Gs3 , v116
	.byte	W06
	.byte		        Gs1 , v127
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs1 , v124
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Fs3 , v127
	.byte	W06
	.byte	PEND
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_3_010
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_3_002
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_3_002
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_3_002
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_3_002
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_3_002
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_3_002
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_3_010
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_3_010
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_3_002
/* 021   ----------------------------------------
 */	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		        Dn2 , v116
	.byte	W06
	.byte		        Gn2 , v112
	.byte	W06
	.byte		        Dn3 , v104
	.byte	W06
	.byte		        Gn3 , v116
	.byte	W06
	.byte		        Gn1 , v127
	.byte	W06
	.byte		        Dn2 , v116
	.byte	W06
	.byte		        Gn2 , v112
	.byte	W06
	.byte		        Dn3 , v104
	.byte	W06
	.byte		        Gn3 , v116
	.byte	W06
	.byte		        Gn1 , v127
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn2 , v124
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        En2 , v127
	.byte	W06
/* 022   ----------------------------------------
 */mus_boss_3_022:
	.byte		N06   , Ds1 , v127
	.byte	W06
	.byte		        As1 , v116
	.byte	W06
	.byte		        Ds2 , v112
	.byte	W06
	.byte		        As2 , v104
	.byte	W06
	.byte		        Ds3 , v116
	.byte	W06
	.byte		        Ds1 , v127
	.byte	W06
	.byte		        As1 , v116
	.byte	W06
	.byte		        Ds2 , v112
	.byte	W06
	.byte		        As2 , v104
	.byte	W06
	.byte		        Ds3 , v116
	.byte	W06
	.byte		        Ds1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 , v124
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Cs3 , v127
	.byte	W06
	.byte	PEND
/* 023   ----------------------------------------
 */mus_boss_3_023:
	.byte		N06   , Ds1 , v127
	.byte	W06
	.byte		        As1 , v116
	.byte	W06
	.byte		        Ds2 , v112
	.byte	W06
	.byte		        As2 , v104
	.byte	W06
	.byte		        Ds3 , v116
	.byte	W06
	.byte		        Ds1 , v127
	.byte	W06
	.byte		        As1 , v116
	.byte	W06
	.byte		        Ds2 , v112
	.byte	W06
	.byte		        As2 , v104
	.byte	W06
	.byte		        Ds3 , v116
	.byte	W06
	.byte		        Ds1 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds2 , v124
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Dn2 , v127
	.byte	W06
	.byte	PEND
/* 024   ----------------------------------------
 */mus_boss_3_024:
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte		        Gs1 , v116
	.byte	W06
	.byte		        Cs2 , v112
	.byte	W06
	.byte		        Gs2 , v104
	.byte	W06
	.byte		        Cs3 , v116
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
	.byte		        Gs1 , v116
	.byte	W06
	.byte		        Cs2 , v112
	.byte	W06
	.byte		        Gs2 , v104
	.byte	W06
	.byte		        Cs3 , v116
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs1 , v124
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn2 , v127
	.byte	W06
	.byte	PEND
/* 025   ----------------------------------------
 */	.byte		        Cs1 
	.byte	W06
	.byte		        Gs1 , v116
	.byte	W06
	.byte		        Cs2 , v112
	.byte	W06
	.byte		        Gs2 , v104
	.byte	W06
	.byte		        Cs3 , v116
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
	.byte		        Gs1 , v116
	.byte	W06
	.byte		        Cs2 , v112
	.byte	W06
	.byte		        Gs2 , v104
	.byte	W06
	.byte		        Cs3 , v116
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs2 , v124
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 , v127
	.byte	W06
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_3_022
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_3_023
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_3_024
/* 029   ----------------------------------------
 */	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte		        Gs1 , v116
	.byte	W06
	.byte		        Cs2 , v112
	.byte	W06
	.byte		        Gs2 , v104
	.byte	W06
	.byte		        Cs3 , v116
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
	.byte		        Gs1 , v116
	.byte	W06
	.byte		        Cs2 , v112
	.byte	W06
	.byte		        Gs2 , v104
	.byte	W06
	.byte		        Cs3 , v116
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs2 , v124
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Cn2 , v127
	.byte	W06
/* 030   ----------------------------------------
 */mus_boss_3_030:
	.byte		N12   , Bn1 , v127
	.byte	W18
	.byte		N12   
	.byte	W66
	.byte		        An1 
	.byte	W12
	.byte	PEND
/* 031   ----------------------------------------
 */mus_boss_3_031:
	.byte		N12   , Bn1 , v127
	.byte	W18
	.byte		N12   
	.byte	W78
	.byte	PEND
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_3_030
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_3_031
/* 034   ----------------------------------------
 */mus_boss_3_034:
	.byte		N12   , Cn2 , v127
	.byte	W18
	.byte		N12   
	.byte	W66
	.byte		        As1 
	.byte	W12
	.byte	PEND
/* 035   ----------------------------------------
 */	.byte		        Cn2 
	.byte	W18
	.byte		N12   
	.byte	W78
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_3_034
/* 037   ----------------------------------------
 */	.byte		N12   , Cn2 , v127
	.byte	W18
	.byte		N05   , Cn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N23   , Fs1 
	.byte	W24
	.byte		N05   , En2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N23   , Fs2 
	.byte	W24
	.byte	GOTO
	 mPtr	mus_boss_3_B1
mus_boss_3_B2:
/* 038   ----------------------------------------
 */	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_boss_4:
	.byte	KEYSH , mus_boss_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 93
	.byte		VOL   , 127*mus_boss_mvl/mxv
	.byte		MOD   , 0
	.byte		LFOS  , 86
	.byte		BENDR , 53
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
mus_boss_4_B1:
/* 002   ----------------------------------------
 */	.byte		N24   , Gn1 , v127
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
 */	.byte	W84
	.byte		N11   , Fn1 
	.byte	W12
/* 014   ----------------------------------------
 */	.byte		N24   , Gn1 
	.byte	W96
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
 */mus_boss_4_030:
	.byte		N12   , Gn2 , v127
	.byte	W18
	.byte		N12   
	.byte	W66
	.byte		        Fn2 
	.byte	W12
	.byte	PEND
/* 031   ----------------------------------------
 */mus_boss_4_031:
	.byte		N12   , Gn2 , v127
	.byte	W18
	.byte		N12   
	.byte	W78
	.byte	PEND
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_4_030
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_4_031
/* 034   ----------------------------------------
 */mus_boss_4_034:
	.byte		N12   , Gs2 , v127
	.byte	W18
	.byte		N12   
	.byte	W66
	.byte		        Fs2 
	.byte	W12
	.byte	PEND
/* 035   ----------------------------------------
 */mus_boss_4_035:
	.byte		N12   , Gs2 , v127
	.byte	W18
	.byte		N12   
	.byte	W78
	.byte	PEND
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_4_034
/* 037   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_4_035
	.byte	GOTO
	 mPtr	mus_boss_4_B1
mus_boss_4_B2:
/* 038   ----------------------------------------
 */	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_boss_5:
	.byte	KEYSH , mus_boss_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 98
	.byte		VOL   , 127*mus_boss_mvl/mxv
	.byte		MOD   , 0
	.byte		LFOS  , 58
	.byte		MODT  , 1
	.byte		TIE   , En3 , v096
	.byte	W01
	.byte		VOL   , 110*mus_boss_mvl/mxv
	.byte	W23
	.byte		TIE   , As3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		        Ds4 
	.byte	W06
	.byte		VOL   , 110*mus_boss_mvl/mxv
	.byte	W01
	.byte		        103*mus_boss_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_mvl/mxv
	.byte	W01
	.byte		        78*mus_boss_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_mvl/mxv
	.byte	W03
	.byte		        41*mus_boss_mvl/mxv
	.byte	W02
	.byte		        42*mus_boss_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_mvl/mxv
	.byte	W01
/* 001   ----------------------------------------
 */	.byte		MOD   , 50
	.byte		VOL   , 44*mus_boss_mvl/mxv
	.byte	W02
	.byte		        44*mus_boss_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_mvl/mxv
	.byte	W02
	.byte		        47*mus_boss_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_mvl/mxv
	.byte	W02
	.byte		        50*mus_boss_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_mvl/mxv
	.byte	W02
	.byte		        52*mus_boss_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_mvl/mxv
	.byte	W02
	.byte		        55*mus_boss_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_mvl/mxv
	.byte	W02
	.byte		        57*mus_boss_mvl/mxv
	.byte	W01
	.byte		        58*mus_boss_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_mvl/mxv
	.byte	W02
	.byte		        59*mus_boss_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_mvl/mxv
	.byte	W02
	.byte		        62*mus_boss_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_mvl/mxv
	.byte	W02
	.byte		        65*mus_boss_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_mvl/mxv
	.byte	W02
	.byte		        67*mus_boss_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_mvl/mxv
	.byte	W02
	.byte		        70*mus_boss_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_mvl/mxv
	.byte	W02
	.byte		        72*mus_boss_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_mvl/mxv
	.byte	W02
	.byte		        74*mus_boss_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_mvl/mxv
	.byte	W02
	.byte		        77*mus_boss_mvl/mxv
	.byte	W01
	.byte		MOD   , 0
	.byte		VOL   , 78*mus_boss_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_mvl/mxv
	.byte	W02
	.byte		        80*mus_boss_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_mvl/mxv
	.byte	W02
	.byte		        82*mus_boss_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_mvl/mxv
	.byte	W02
	.byte		        85*mus_boss_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_mvl/mxv
	.byte	W02
	.byte		        87*mus_boss_mvl/mxv
	.byte	W01
	.byte		        88*mus_boss_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_mvl/mxv
	.byte	W02
	.byte		        89*mus_boss_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_mvl/mxv
	.byte	W02
	.byte		        92*mus_boss_mvl/mxv
	.byte	W01
	.byte		        93*mus_boss_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_mvl/mxv
	.byte	W02
	.byte		        95*mus_boss_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_mvl/mxv
	.byte	W02
	.byte		        97*mus_boss_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_mvl/mxv
	.byte	W02
	.byte		EOT   , En3 
	.byte		        Gn3 
	.byte		        As3 
	.byte		        Ds4 
	.byte		VOL   , 100*mus_boss_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_mvl/mxv
	.byte		N04   , Dn3 , v112
	.byte		N04   , Ds4 
	.byte	W03
	.byte		VOL   , 102*mus_boss_mvl/mxv
	.byte	W01
	.byte		        103*mus_boss_mvl/mxv
	.byte		N04   , Cn3 
	.byte		N04   , En4 
	.byte	W02
	.byte		VOL   , 104*mus_boss_mvl/mxv
	.byte	W01
	.byte		        104*mus_boss_mvl/mxv
	.byte	W01
	.byte		N04   , As2 , v120
	.byte		N04   , Fn4 
	.byte	W01
	.byte		VOL   , 106*mus_boss_mvl/mxv
	.byte	W01
	.byte		        107*mus_boss_mvl/mxv
	.byte	W01
	.byte		        108*mus_boss_mvl/mxv
	.byte	W01
	.byte		N04   , An2 , v112
	.byte		N04   , Fs4 
	.byte	W01
	.byte		VOL   , 110*mus_boss_mvl/mxv
	.byte	W03
mus_boss_5_B1:
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */mus_boss_5_006:
	.byte		N17   , Dn3 , v116
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N40   
	.byte	W42
	.byte		N05   , Cs3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte	PEND
/* 007   ----------------------------------------
 */mus_boss_5_007:
	.byte		N17   , As2 , v116
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N40   
	.byte	W42
	.byte		N05   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte	PEND
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_5_006
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_5_007
/* 010   ----------------------------------------
 */mus_boss_5_010:
	.byte		N17   , Ds3 , v116
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N40   
	.byte	W42
	.byte		N05   , Cs3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte	PEND
/* 011   ----------------------------------------
 */mus_boss_5_011:
	.byte		N17   , As2 , v116
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N44   
	.byte	W48
	.byte		N05   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte	PEND
/* 012   ----------------------------------------
 */mus_boss_5_012:
	.byte		N32   , As2 , v116
	.byte	W36
	.byte		N60   , Fs2 
	.byte	W60
	.byte	PEND
/* 013   ----------------------------------------
 */	.byte	W96
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_5_006
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_5_007
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_5_006
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_5_007
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_5_010
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_5_011
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_5_012
/* 021   ----------------------------------------
 */	.byte	W96
/* 022   ----------------------------------------
 */mus_boss_5_022:
	.byte		TIE   , En3 , v096
	.byte	W01
	.byte		VOL   , 110*mus_boss_mvl/mxv
	.byte	W23
	.byte		TIE   , As3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		        Ds4 
	.byte	W06
	.byte		VOL   , 110*mus_boss_mvl/mxv
	.byte	W01
	.byte		        103*mus_boss_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_mvl/mxv
	.byte	W01
	.byte		        78*mus_boss_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_mvl/mxv
	.byte	W03
	.byte		        41*mus_boss_mvl/mxv
	.byte	W02
	.byte		        42*mus_boss_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_mvl/mxv
	.byte	W01
	.byte	PEND
/* 023   ----------------------------------------
 */mus_boss_5_023:
	.byte		MOD   , 50
	.byte		VOL   , 44*mus_boss_mvl/mxv
	.byte	W02
	.byte		        44*mus_boss_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_mvl/mxv
	.byte	W02
	.byte		        47*mus_boss_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_mvl/mxv
	.byte	W02
	.byte		        50*mus_boss_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_mvl/mxv
	.byte	W02
	.byte		        52*mus_boss_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_mvl/mxv
	.byte	W02
	.byte		        55*mus_boss_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_mvl/mxv
	.byte	W02
	.byte		        57*mus_boss_mvl/mxv
	.byte	W01
	.byte		        58*mus_boss_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_mvl/mxv
	.byte	W02
	.byte		        59*mus_boss_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_mvl/mxv
	.byte	W02
	.byte		        62*mus_boss_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_mvl/mxv
	.byte	W02
	.byte		        65*mus_boss_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_mvl/mxv
	.byte	W02
	.byte		        67*mus_boss_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_mvl/mxv
	.byte	W02
	.byte		        70*mus_boss_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_mvl/mxv
	.byte	W02
	.byte		        72*mus_boss_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_mvl/mxv
	.byte	W02
	.byte		        74*mus_boss_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_mvl/mxv
	.byte	W02
	.byte		        77*mus_boss_mvl/mxv
	.byte	W01
	.byte		MOD   , 0
	.byte		VOL   , 78*mus_boss_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_mvl/mxv
	.byte	W02
	.byte		        80*mus_boss_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_mvl/mxv
	.byte	W02
	.byte		        82*mus_boss_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_mvl/mxv
	.byte	W02
	.byte		        85*mus_boss_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_mvl/mxv
	.byte	W02
	.byte		        87*mus_boss_mvl/mxv
	.byte	W01
	.byte		        88*mus_boss_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_mvl/mxv
	.byte	W02
	.byte		        89*mus_boss_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_mvl/mxv
	.byte	W02
	.byte		        92*mus_boss_mvl/mxv
	.byte	W01
	.byte		        93*mus_boss_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_mvl/mxv
	.byte	W02
	.byte		        95*mus_boss_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_mvl/mxv
	.byte	W02
	.byte		        97*mus_boss_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_mvl/mxv
	.byte	W02
	.byte		        100*mus_boss_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_mvl/mxv
	.byte	W03
	.byte		        102*mus_boss_mvl/mxv
	.byte	W01
	.byte		        103*mus_boss_mvl/mxv
	.byte	W02
	.byte		        104*mus_boss_mvl/mxv
	.byte	W01
	.byte		        104*mus_boss_mvl/mxv
	.byte	W02
	.byte		        106*mus_boss_mvl/mxv
	.byte	W01
	.byte		        107*mus_boss_mvl/mxv
	.byte	W01
	.byte		        108*mus_boss_mvl/mxv
	.byte	W02
	.byte		        110*mus_boss_mvl/mxv
	.byte	W01
	.byte	PEND
	.byte		EOT   , En3 
	.byte		        Gn3 
	.byte		        As3 
	.byte		        Ds4 
	.byte	W02
/* 024   ----------------------------------------
 */	.byte		TIE   , Dn3 , v096
	.byte	W01
	.byte		VOL   , 110*mus_boss_mvl/mxv
	.byte	W23
	.byte		TIE   , Gs3 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		        Cs4 
	.byte	W06
	.byte		VOL   , 110*mus_boss_mvl/mxv
	.byte	W01
	.byte		        103*mus_boss_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_mvl/mxv
	.byte	W01
	.byte		        78*mus_boss_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_mvl/mxv
	.byte	W03
	.byte		        41*mus_boss_mvl/mxv
	.byte	W02
	.byte		        42*mus_boss_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_mvl/mxv
	.byte	W01
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_5_023
	.byte		EOT   , Dn3 
	.byte		        Fn3 
	.byte		        Gs3 
	.byte		        Cs4 
	.byte	W02
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_5_022
/* 027   ----------------------------------------
 */	.byte		MOD   , 50
	.byte		VOL   , 44*mus_boss_mvl/mxv
	.byte	W02
	.byte		        44*mus_boss_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_mvl/mxv
	.byte	W02
	.byte		        47*mus_boss_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_mvl/mxv
	.byte	W02
	.byte		        50*mus_boss_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_mvl/mxv
	.byte	W02
	.byte		        52*mus_boss_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_mvl/mxv
	.byte	W02
	.byte		        55*mus_boss_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_mvl/mxv
	.byte	W02
	.byte		        57*mus_boss_mvl/mxv
	.byte	W01
	.byte		        58*mus_boss_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_mvl/mxv
	.byte	W02
	.byte		        59*mus_boss_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_mvl/mxv
	.byte	W02
	.byte		        62*mus_boss_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_mvl/mxv
	.byte	W02
	.byte		        65*mus_boss_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_mvl/mxv
	.byte	W02
	.byte		        67*mus_boss_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_mvl/mxv
	.byte	W02
	.byte		        70*mus_boss_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_mvl/mxv
	.byte	W02
	.byte		        72*mus_boss_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_mvl/mxv
	.byte	W02
	.byte		        74*mus_boss_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_mvl/mxv
	.byte	W02
	.byte		        77*mus_boss_mvl/mxv
	.byte	W01
	.byte		MOD   , 0
	.byte		VOL   , 78*mus_boss_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_mvl/mxv
	.byte	W02
	.byte		        80*mus_boss_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_mvl/mxv
	.byte	W02
	.byte		        82*mus_boss_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_mvl/mxv
	.byte	W02
	.byte		        85*mus_boss_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_mvl/mxv
	.byte	W02
	.byte		        87*mus_boss_mvl/mxv
	.byte	W01
	.byte		        88*mus_boss_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_mvl/mxv
	.byte	W02
	.byte		        89*mus_boss_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_mvl/mxv
	.byte	W02
	.byte		        92*mus_boss_mvl/mxv
	.byte	W01
	.byte		        93*mus_boss_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_mvl/mxv
	.byte	W02
	.byte		        95*mus_boss_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_mvl/mxv
	.byte	W02
	.byte		        97*mus_boss_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_mvl/mxv
	.byte	W02
	.byte		        100*mus_boss_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_mvl/mxv
	.byte	W03
	.byte		EOT   , En3 
	.byte		        Gn3 
	.byte		        As3 
	.byte		        Ds4 
	.byte		VOL   , 102*mus_boss_mvl/mxv
	.byte	W01
	.byte		        103*mus_boss_mvl/mxv
	.byte		N05   , An2 , v096
	.byte		N05   , Ds3 
	.byte		N05   , Fs3 
	.byte		N05   , Dn4 
	.byte	W02
	.byte		VOL   , 104*mus_boss_mvl/mxv
	.byte	W01
	.byte		        104*mus_boss_mvl/mxv
	.byte	W02
	.byte		        106*mus_boss_mvl/mxv
	.byte	W01
	.byte		        107*mus_boss_mvl/mxv
	.byte		N05   , As2 
	.byte		N05   , En3 
	.byte		N05   , Gn3 
	.byte		N05   , Ds4 
	.byte	W01
	.byte		VOL   , 108*mus_boss_mvl/mxv
	.byte	W02
	.byte		        110*mus_boss_mvl/mxv
	.byte	W03
/* 028   ----------------------------------------
 */	.byte		N80   , Bn2 
	.byte		N80   , Fn3 
	.byte		N80   , Gs3 
	.byte		N80   , En4 
	.byte	W01
	.byte		VOL   , 110*mus_boss_mvl/mxv
	.byte	W76
	.byte	W01
	.byte		        110*mus_boss_mvl/mxv
	.byte	W01
	.byte		        103*mus_boss_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_mvl/mxv
	.byte	W01
	.byte		        78*mus_boss_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_mvl/mxv
	.byte		N05   , As2 
	.byte		N05   , En3 
	.byte		N05   , Gn3 
	.byte		N05   , Ds4 
	.byte	W01
	.byte		VOL   , 66*mus_boss_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_mvl/mxv
	.byte	W01
	.byte		N05   , Bn2 
	.byte		N05   , Fn3 
	.byte		N05   , Gs3 
	.byte		N05   , En4 
	.byte	W02
	.byte		VOL   , 41*mus_boss_mvl/mxv
	.byte	W02
	.byte		        42*mus_boss_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_mvl/mxv
	.byte	W01
/* 029   ----------------------------------------
 */	.byte		MOD   , 50
	.byte		VOL   , 44*mus_boss_mvl/mxv
	.byte		N92   , Cn3 
	.byte		N92   , Fs3 
	.byte		N92   , An3 
	.byte		N92   , Fn4 
	.byte	W02
	.byte		VOL   , 44*mus_boss_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_mvl/mxv
	.byte	W02
	.byte		        47*mus_boss_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_mvl/mxv
	.byte	W02
	.byte		        50*mus_boss_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_mvl/mxv
	.byte	W02
	.byte		        52*mus_boss_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_mvl/mxv
	.byte	W02
	.byte		        55*mus_boss_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_mvl/mxv
	.byte	W02
	.byte		        57*mus_boss_mvl/mxv
	.byte	W01
	.byte		        58*mus_boss_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_mvl/mxv
	.byte	W02
	.byte		        59*mus_boss_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_mvl/mxv
	.byte	W02
	.byte		        62*mus_boss_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_mvl/mxv
	.byte	W02
	.byte		        65*mus_boss_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_mvl/mxv
	.byte	W02
	.byte		        67*mus_boss_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_mvl/mxv
	.byte	W02
	.byte		        70*mus_boss_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_mvl/mxv
	.byte	W02
	.byte		        72*mus_boss_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_mvl/mxv
	.byte	W02
	.byte		        74*mus_boss_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_mvl/mxv
	.byte	W02
	.byte		        77*mus_boss_mvl/mxv
	.byte	W01
	.byte		MOD   , 0
	.byte		VOL   , 78*mus_boss_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_mvl/mxv
	.byte	W02
	.byte		        80*mus_boss_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_mvl/mxv
	.byte	W02
	.byte		        82*mus_boss_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_mvl/mxv
	.byte	W02
	.byte		        85*mus_boss_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_mvl/mxv
	.byte	W02
	.byte		        87*mus_boss_mvl/mxv
	.byte	W01
	.byte		        88*mus_boss_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_mvl/mxv
	.byte	W02
	.byte		        89*mus_boss_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_mvl/mxv
	.byte	W02
	.byte		        92*mus_boss_mvl/mxv
	.byte	W01
	.byte		        93*mus_boss_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_mvl/mxv
	.byte	W02
	.byte		        95*mus_boss_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_mvl/mxv
	.byte	W02
	.byte		        97*mus_boss_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_mvl/mxv
	.byte	W02
	.byte		        100*mus_boss_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_mvl/mxv
	.byte	W03
	.byte		        102*mus_boss_mvl/mxv
	.byte	W01
	.byte		        103*mus_boss_mvl/mxv
	.byte	W02
	.byte		        104*mus_boss_mvl/mxv
	.byte	W01
	.byte		        104*mus_boss_mvl/mxv
	.byte	W02
	.byte		        106*mus_boss_mvl/mxv
	.byte	W01
	.byte		        107*mus_boss_mvl/mxv
	.byte	W01
	.byte		        108*mus_boss_mvl/mxv
	.byte	W02
	.byte		        110*mus_boss_mvl/mxv
	.byte	W03
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
	.byte		        110*mus_boss_mvl/mxv
	.byte	W76
	.byte	W01
	.byte		        110*mus_boss_mvl/mxv
	.byte	W01
	.byte		        103*mus_boss_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_mvl/mxv
	.byte	W01
	.byte		        78*mus_boss_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_mvl/mxv
	.byte	W03
	.byte		        41*mus_boss_mvl/mxv
	.byte	W02
	.byte		        42*mus_boss_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_mvl/mxv
	.byte	W01
/* 037   ----------------------------------------
 */	.byte		MOD   , 50
	.byte		VOL   , 44*mus_boss_mvl/mxv
	.byte	W02
	.byte		        44*mus_boss_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_mvl/mxv
	.byte	W02
	.byte		        47*mus_boss_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_mvl/mxv
	.byte	W02
	.byte		        50*mus_boss_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_mvl/mxv
	.byte	W02
	.byte		        52*mus_boss_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_mvl/mxv
	.byte	W02
	.byte		        55*mus_boss_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_mvl/mxv
	.byte	W02
	.byte		        57*mus_boss_mvl/mxv
	.byte	W01
	.byte		        58*mus_boss_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_mvl/mxv
	.byte	W02
	.byte		        59*mus_boss_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_mvl/mxv
	.byte	W02
	.byte		        62*mus_boss_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_mvl/mxv
	.byte	W02
	.byte		        65*mus_boss_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_mvl/mxv
	.byte	W02
	.byte		        67*mus_boss_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_mvl/mxv
	.byte	W01
	.byte		N60   , Fs2 , v120
	.byte		N60   , Dn3 
	.byte		N60   , An3 
	.byte	W01
	.byte		VOL   , 70*mus_boss_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_mvl/mxv
	.byte	W02
	.byte		        72*mus_boss_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_mvl/mxv
	.byte	W02
	.byte		        74*mus_boss_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_mvl/mxv
	.byte	W02
	.byte		        77*mus_boss_mvl/mxv
	.byte	W01
	.byte		MOD   , 0
	.byte		VOL   , 78*mus_boss_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_mvl/mxv
	.byte	W02
	.byte		        80*mus_boss_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_mvl/mxv
	.byte	W02
	.byte		        82*mus_boss_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_mvl/mxv
	.byte	W02
	.byte		        85*mus_boss_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_mvl/mxv
	.byte	W02
	.byte		        87*mus_boss_mvl/mxv
	.byte	W01
	.byte		        88*mus_boss_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_mvl/mxv
	.byte	W02
	.byte		        89*mus_boss_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_mvl/mxv
	.byte	W02
	.byte		        92*mus_boss_mvl/mxv
	.byte	W01
	.byte		        93*mus_boss_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_mvl/mxv
	.byte	W02
	.byte		        95*mus_boss_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_mvl/mxv
	.byte	W02
	.byte		        97*mus_boss_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_mvl/mxv
	.byte	W02
	.byte		        100*mus_boss_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_mvl/mxv
	.byte	W03
	.byte		        102*mus_boss_mvl/mxv
	.byte	W01
	.byte		        103*mus_boss_mvl/mxv
	.byte	W02
	.byte		        104*mus_boss_mvl/mxv
	.byte	W01
	.byte		        104*mus_boss_mvl/mxv
	.byte	W02
	.byte		        106*mus_boss_mvl/mxv
	.byte	W01
	.byte		        107*mus_boss_mvl/mxv
	.byte	W01
	.byte		        108*mus_boss_mvl/mxv
	.byte	W02
	.byte		        110*mus_boss_mvl/mxv
	.byte	W03
	.byte	GOTO
	 mPtr	mus_boss_5_B1
mus_boss_5_B2:
/* 038   ----------------------------------------
 */	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_boss_6:
	.byte	KEYSH , mus_boss_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 127
	.byte		VOL   , 127*mus_boss_mvl/mxv
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W60
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
mus_boss_6_B1:
/* 002   ----------------------------------------
 */mus_boss_6_002:
	.byte		N06   , Ds1 , v068
	.byte		N48   , Cs2 , v127
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        Dn1 , v056
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v028
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Ds1 , v068
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v056
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v028
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        En1 , v056
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Ds1 , v064
	.byte	W06
	.byte		        Dn1 , v052
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte	PEND
/* 003   ----------------------------------------
 */mus_boss_6_003:
	.byte		N06   , Ds1 , v068
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v056
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v028
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Ds1 , v068
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v056
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v028
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        En1 , v056
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Ds1 , v064
	.byte	W06
	.byte		        Dn1 , v052
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte	PEND
/* 004   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_6_003
/* 005   ----------------------------------------
 */mus_boss_6_005:
	.byte		N06   , Ds1 , v068
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v056
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v028
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Ds1 , v068
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v056
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v028
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v028
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        En1 , v056
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Ds1 , v064
	.byte		N03   , En2 , v127
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N06   , Dn1 , v052
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Dn1 , v060
	.byte		N06   , En2 , v127
	.byte	W06
	.byte	PEND
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_6_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_6_003
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_6_003
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_6_003
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_6_003
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_6_003
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_6_003
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_6_005
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_6_002
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_6_003
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_6_003
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_6_003
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_6_003
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_6_003
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_6_003
/* 021   ----------------------------------------
 */	.byte		N06   , Ds1 , v068
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v056
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v028
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Ds1 , v068
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v056
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v028
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        En1 , v056
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Ds1 , v064
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v052
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Dn1 , v060
	.byte		N06   , En2 , v127
	.byte	W06
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_6_002
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_6_003
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_6_003
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_6_003
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_6_002
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_6_003
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_6_003
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_6_005
/* 030   ----------------------------------------
 */mus_boss_6_030:
	.byte		N06   , Ds1 , v068
	.byte		N48   , Cs2 , v127
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        Dn1 , v056
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v028
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Ds1 , v068
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v056
	.byte	W06
	.byte		        Dn1 , v048
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte		N06   , En2 , v127
	.byte	W12
	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
/* 031   ----------------------------------------
 */mus_boss_6_031:
	.byte		N06   , Ds1 , v068
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v056
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v028
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Ds1 , v068
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v056
	.byte	W12
	.byte		        En2 , v127
	.byte	W06
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
/* 032   ----------------------------------------
 */	.byte		        Ds1 , v068
	.byte		N48   , Cs2 , v127
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        Dn1 , v056
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v028
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Ds1 , v068
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v056
	.byte	W12
	.byte		        En2 , v127
	.byte	W12
	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
/* 033   ----------------------------------------
 */	.byte		        Ds1 , v068
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v056
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v028
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Ds1 , v068
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v056
	.byte	W06
	.byte		        Dn1 , v048
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte		N06   , En2 , v127
	.byte	W12
	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
/* 034   ----------------------------------------
 */	.byte		        Ds1 , v068
	.byte		N48   , Cs2 , v127
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        Dn1 , v056
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v028
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Ds1 , v068
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v056
	.byte	W12
	.byte		        En2 , v127
	.byte	W06
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
/* 035   ----------------------------------------
 */	.byte		        Ds1 , v068
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v056
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v028
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Ds1 , v068
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v056
	.byte	W12
	.byte		        En2 , v127
	.byte	W12
	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_6_030
/* 037   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_6_031
	.byte	GOTO
	 mPtr	mus_boss_6_B1
mus_boss_6_B2:
/* 038   ----------------------------------------
 */	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_boss_7:
	.byte	KEYSH , mus_boss_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 82
	.byte		VOL   , 127*mus_boss_mvl/mxv
	.byte		BENDR , 13
	.byte		LFOS  , 28
	.byte		MODT  , 0
	.byte		MOD   , 0
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
mus_boss_7_B1:
/* 002   ----------------------------------------
 */	.byte		VOL   , 127*mus_boss_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */mus_boss_7_006:
	.byte		MOD   , 0
	.byte		N17   , An3 , v060
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N40   
	.byte	W12
	.byte		MOD   , 6
	.byte	W30
	.byte		N05   
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte	PEND
/* 007   ----------------------------------------
 */mus_boss_7_007:
	.byte		MOD   , 0
	.byte		N17   , Fs3 , v060
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N40   
	.byte	W12
	.byte		MOD   , 6
	.byte	W30
	.byte		N05   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte	PEND
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_7_006
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_7_007
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_7_006
/* 011   ----------------------------------------
 */mus_boss_7_011:
	.byte		MOD   , 0
	.byte		N17   , Fs3 , v060
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N44   
	.byte	W12
	.byte		MOD   , 6
	.byte	W36
	.byte		N05   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte	PEND
/* 012   ----------------------------------------
 */mus_boss_7_012:
	.byte		MOD   , 0
	.byte		N32   , Fs3 , v060
	.byte	W36
	.byte		N60   , Dn3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W48
	.byte	PEND
/* 013   ----------------------------------------
 */	.byte	W96
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_7_006
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_7_007
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_7_006
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_7_007
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_7_006
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_7_011
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_7_012
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
 */	.byte		VOL   , 0*mus_boss_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W48
	.byte		VOL   , 0*mus_boss_mvl/mxv
	.byte		TIE   , Gn2 , v092
	.byte	W01
	.byte		VOL   , 3*mus_boss_mvl/mxv
	.byte	W01
	.byte		        6*mus_boss_mvl/mxv
	.byte	W01
	.byte		        7*mus_boss_mvl/mxv
	.byte	W01
	.byte		        11*mus_boss_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_mvl/mxv
	.byte	W01
	.byte		        16*mus_boss_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_mvl/mxv
	.byte	W01
	.byte		        24*mus_boss_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_mvl/mxv
	.byte	W01
	.byte		        58*mus_boss_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 77*mus_boss_mvl/mxv
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		VOL   , 79*mus_boss_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_mvl/mxv
	.byte		BEND  , c_v+12
	.byte	W01
	.byte		VOL   , 85*mus_boss_mvl/mxv
	.byte		BEND  , c_v+18
	.byte	W01
	.byte		VOL   , 87*mus_boss_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_mvl/mxv
	.byte		BEND  , c_v+24
	.byte	W01
	.byte		VOL   , 92*mus_boss_mvl/mxv
	.byte		BEND  , c_v+30
	.byte	W01
	.byte		VOL   , 94*mus_boss_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_mvl/mxv
	.byte		BEND  , c_v+36
	.byte	W01
	.byte		        c_v+42
	.byte	W02
	.byte		        c_v+48
	.byte	W01
	.byte		        c_v+54
	.byte	W01
	.byte		VOL   , 95*mus_boss_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+60
	.byte	W02
	.byte		VOL   , 94*mus_boss_mvl/mxv
	.byte	W03
/* 033   ----------------------------------------
 */	.byte		        93*mus_boss_mvl/mxv
	.byte	W02
	.byte		        92*mus_boss_mvl/mxv
	.byte	W03
	.byte		        91*mus_boss_mvl/mxv
	.byte	W03
	.byte		        89*mus_boss_mvl/mxv
	.byte	W02
	.byte		        89*mus_boss_mvl/mxv
	.byte	W03
	.byte		        88*mus_boss_mvl/mxv
	.byte	W03
	.byte		        87*mus_boss_mvl/mxv
	.byte	W03
	.byte		        86*mus_boss_mvl/mxv
	.byte	W02
	.byte		        85*mus_boss_mvl/mxv
	.byte	W03
	.byte		        84*mus_boss_mvl/mxv
	.byte	W03
	.byte		        82*mus_boss_mvl/mxv
	.byte	W02
	.byte		        82*mus_boss_mvl/mxv
	.byte	W03
	.byte		        81*mus_boss_mvl/mxv
	.byte	W03
	.byte		        80*mus_boss_mvl/mxv
	.byte	W03
	.byte		        78*mus_boss_mvl/mxv
	.byte	W02
	.byte		        77*mus_boss_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_mvl/mxv
	.byte	W02
	.byte		        69*mus_boss_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_mvl/mxv
	.byte	W01
	.byte		        58*mus_boss_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_mvl/mxv
	.byte	W02
	.byte		        56*mus_boss_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_mvl/mxv
	.byte	W02
	.byte		        41*mus_boss_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_mvl/mxv
	.byte	W01
	.byte		        28*mus_boss_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_mvl/mxv
	.byte	W01
	.byte		        11*mus_boss_mvl/mxv
	.byte	W01
	.byte		        7*mus_boss_mvl/mxv
	.byte	W01
	.byte		        6*mus_boss_mvl/mxv
	.byte	W01
	.byte		        3*mus_boss_mvl/mxv
	.byte	W01
	.byte		        0*mus_boss_mvl/mxv
	.byte	W04
	.byte		EOT   
/* 034   ----------------------------------------
 */	.byte	W96
/* 035   ----------------------------------------
 */	.byte	W96
/* 036   ----------------------------------------
 */	.byte		VOL   , 0*mus_boss_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W48
	.byte		VOL   , 0*mus_boss_mvl/mxv
	.byte		N84   , Gs2 
	.byte	W01
	.byte		VOL   , 3*mus_boss_mvl/mxv
	.byte	W01
	.byte		        6*mus_boss_mvl/mxv
	.byte	W01
	.byte		        7*mus_boss_mvl/mxv
	.byte	W01
	.byte		        11*mus_boss_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_mvl/mxv
	.byte	W01
	.byte		        16*mus_boss_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_mvl/mxv
	.byte	W01
	.byte		        24*mus_boss_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_mvl/mxv
	.byte	W01
	.byte		        58*mus_boss_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 77*mus_boss_mvl/mxv
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		VOL   , 79*mus_boss_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_mvl/mxv
	.byte		BEND  , c_v+12
	.byte	W01
	.byte		VOL   , 85*mus_boss_mvl/mxv
	.byte		BEND  , c_v+18
	.byte	W01
	.byte		VOL   , 87*mus_boss_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_mvl/mxv
	.byte		BEND  , c_v+24
	.byte	W01
	.byte		VOL   , 92*mus_boss_mvl/mxv
	.byte		BEND  , c_v+30
	.byte	W01
	.byte		VOL   , 94*mus_boss_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_mvl/mxv
	.byte		BEND  , c_v+36
	.byte	W01
	.byte		        c_v+42
	.byte	W02
	.byte		        c_v+48
	.byte	W01
	.byte		        c_v+54
	.byte	W01
	.byte		VOL   , 95*mus_boss_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+60
	.byte	W02
	.byte		VOL   , 94*mus_boss_mvl/mxv
	.byte	W03
/* 037   ----------------------------------------
 */	.byte		        93*mus_boss_mvl/mxv
	.byte	W02
	.byte		        92*mus_boss_mvl/mxv
	.byte	W03
	.byte		        91*mus_boss_mvl/mxv
	.byte	W03
	.byte		        89*mus_boss_mvl/mxv
	.byte	W02
	.byte		        89*mus_boss_mvl/mxv
	.byte	W03
	.byte		        88*mus_boss_mvl/mxv
	.byte	W03
	.byte		        87*mus_boss_mvl/mxv
	.byte	W03
	.byte		        86*mus_boss_mvl/mxv
	.byte	W02
	.byte		        85*mus_boss_mvl/mxv
	.byte	W03
	.byte		        84*mus_boss_mvl/mxv
	.byte	W03
	.byte		        82*mus_boss_mvl/mxv
	.byte	W02
	.byte		        82*mus_boss_mvl/mxv
	.byte	W03
	.byte		        81*mus_boss_mvl/mxv
	.byte	W03
	.byte		        80*mus_boss_mvl/mxv
	.byte	W01
	.byte		N60   , An2 
	.byte	W02
	.byte		VOL   , 78*mus_boss_mvl/mxv
	.byte	W02
	.byte		        77*mus_boss_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_mvl/mxv
	.byte	W02
	.byte		        69*mus_boss_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_mvl/mxv
	.byte	W01
	.byte		        58*mus_boss_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_mvl/mxv
	.byte	W02
	.byte		        56*mus_boss_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_mvl/mxv
	.byte	W02
	.byte		        41*mus_boss_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_mvl/mxv
	.byte	W01
	.byte		        28*mus_boss_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_mvl/mxv
	.byte	W01
	.byte		        11*mus_boss_mvl/mxv
	.byte	W01
	.byte		        7*mus_boss_mvl/mxv
	.byte	W01
	.byte		        6*mus_boss_mvl/mxv
	.byte	W01
	.byte		        3*mus_boss_mvl/mxv
	.byte	W01
	.byte		        0*mus_boss_mvl/mxv
	.byte	W04
	.byte	GOTO
	 mPtr	mus_boss_7_B1
mus_boss_7_B2:
/* 038   ----------------------------------------
 */	.byte	FINE

/* **************** Track 8 (Midi-Chn.8) **************** */

mus_boss_8:
	.byte	KEYSH , mus_boss_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 12
	.byte		VOL   , 89*mus_boss_mvl/mxv
	.byte		BENDR , 12
	.byte		LFOS  , 38
	.byte		MODT  , 0
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
mus_boss_8_B1:
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W24
	.byte		N04   , Gn2 , v028
	.byte	W04
	.byte		        Cn3 , v032
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Gn2 , v036
	.byte	W04
	.byte		        Cn3 , v040
	.byte	W04
	.byte		        Dn3 , v044
	.byte	W04
	.byte		        Gn3 , v048
	.byte	W04
	.byte		        Cn4 , v052
	.byte	W04
	.byte		        Dn4 , v056
	.byte	W04
	.byte		        Gn3 , v060
	.byte	W04
	.byte		        Cn4 , v064
	.byte	W04
	.byte		        Dn4 , v068
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Cn5 , v072
	.byte	W04
	.byte		        Dn5 , v076
	.byte	W04
	.byte		        Gn4 , v080
	.byte	W04
	.byte		        Cn5 , v084
	.byte	W04
	.byte		        Dn5 , v088
	.byte	W04
/* 004   ----------------------------------------
 */	.byte		        Gn5 , v092
	.byte	W04
	.byte		        Cn5 , v096
	.byte	W04
	.byte		        Dn5 , v100
	.byte	W04
	.byte		        Gn5 , v092
	.byte	W04
	.byte		        Cn6 
	.byte	W04
	.byte		        Dn6 , v088
	.byte	W04
	.byte		        Cn6 
	.byte	W04
	.byte		        Gn5 , v084
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Dn5 , v080
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Gn4 , v076
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn4 , v072
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Gn4 , v068
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Cn4 , v064
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn4 , v060
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Gn3 , v056
	.byte	W04
/* 005   ----------------------------------------
 */	.byte		        Cn4 
	.byte	W04
	.byte		        Dn4 , v052
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Gn3 , v048
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Gn2 , v044
	.byte	W76
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
 */	.byte	W72
	.byte		        Gn2 , v028
	.byte	W04
	.byte		        Cn3 , v032
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Gn2 , v036
	.byte	W04
	.byte		        Cn3 , v040
	.byte	W04
	.byte		        Dn3 , v044
	.byte	W04
/* 013   ----------------------------------------
 */mus_boss_8_013:
	.byte		N04   , Gn3 , v048
	.byte	W04
	.byte		        Cn4 , v052
	.byte	W04
	.byte		        Dn4 , v056
	.byte	W04
	.byte		        Gn3 , v060
	.byte	W04
	.byte		        Cn4 , v064
	.byte	W04
	.byte		        Dn4 , v068
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Cn5 , v072
	.byte	W04
	.byte		        Dn5 , v076
	.byte	W04
	.byte		        Gn4 , v080
	.byte	W04
	.byte		        Cn5 , v084
	.byte	W04
	.byte		        Dn5 , v088
	.byte	W04
	.byte		        Gn5 , v092
	.byte	W04
	.byte		        Cn5 , v096
	.byte	W04
	.byte		        Dn5 , v100
	.byte	W04
	.byte		        Gn5 , v092
	.byte	W04
	.byte		        Cn6 
	.byte	W04
	.byte		        Dn6 , v088
	.byte	W04
	.byte		        Cn6 
	.byte	W04
	.byte		        Gn5 , v084
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Dn5 , v080
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte	PEND
/* 014   ----------------------------------------
 */	.byte		        Gn4 , v076
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn4 , v072
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Gn4 , v068
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Cn4 , v064
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn4 , v060
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Gn3 , v056
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Dn4 , v052
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Gn3 , v048
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Gn2 , v044
	.byte	W04
	.byte		MOD   , 8
	.byte		VOL   , 29*mus_boss_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		TIE   , Gn3 , v096
	.byte	W01
	.byte		VOL   , 33*mus_boss_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 52*mus_boss_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 62*mus_boss_mvl/mxv
	.byte		BEND  , c_v+3
	.byte	W01
	.byte		VOL   , 64*mus_boss_mvl/mxv
	.byte		BEND  , c_v+11
	.byte	W01
	.byte		VOL   , 67*mus_boss_mvl/mxv
	.byte		BEND  , c_v+15
	.byte	W01
	.byte		VOL   , 69*mus_boss_mvl/mxv
	.byte		BEND  , c_v+19
	.byte	W01
	.byte		VOL   , 71*mus_boss_mvl/mxv
	.byte		BEND  , c_v+26
	.byte	W01
	.byte		VOL   , 73*mus_boss_mvl/mxv
	.byte		BEND  , c_v+30
	.byte	W01
	.byte		VOL   , 76*mus_boss_mvl/mxv
	.byte		BEND  , c_v+34
	.byte	W01
	.byte		VOL   , 78*mus_boss_mvl/mxv
	.byte		BEND  , c_v+41
	.byte	W01
	.byte		VOL   , 81*mus_boss_mvl/mxv
	.byte		BEND  , c_v+45
	.byte	W01
	.byte		VOL   , 82*mus_boss_mvl/mxv
	.byte		BEND  , c_v+49
	.byte	W01
	.byte		VOL   , 86*mus_boss_mvl/mxv
	.byte		BEND  , c_v+57
	.byte	W01
/* 015   ----------------------------------------
 */mus_boss_8_015:
	.byte		VOL   , 88*mus_boss_mvl/mxv
	.byte		BEND  , c_v+60
	.byte	W01
	.byte		VOL   , 89*mus_boss_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_mvl/mxv
	.byte	W01
	.byte		        78*mus_boss_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_mvl/mxv
	.byte	W01
	.byte		        58*mus_boss_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_mvl/mxv
	.byte	W01
	.byte		        78*mus_boss_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_mvl/mxv
	.byte	W01
	.byte		        88*mus_boss_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_mvl/mxv
	.byte	W15
	.byte		BEND  , c_v+60
	.byte	W01
	.byte		        c_v+54
	.byte	W01
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+40
	.byte	W01
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte	PEND
/* 016   ----------------------------------------
 */mus_boss_8_016:
	.byte	W18
	.byte		VOL   , 89*mus_boss_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_mvl/mxv
	.byte	W01
	.byte		        80*mus_boss_mvl/mxv
	.byte	W01
	.byte		        78*mus_boss_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_mvl/mxv
	.byte	W01
	.byte		        58*mus_boss_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_mvl/mxv
	.byte	W01
	.byte		        28*mus_boss_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_mvl/mxv
	.byte	W01
	.byte		        21*mus_boss_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_mvl/mxv
	.byte	W01
	.byte		        18*mus_boss_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_mvl/mxv
	.byte	W01
	.byte		        13*mus_boss_mvl/mxv
	.byte	W01
	.byte		        11*mus_boss_mvl/mxv
	.byte	W01
	.byte		        9*mus_boss_mvl/mxv
	.byte	W01
	.byte		        7*mus_boss_mvl/mxv
	.byte	W01
	.byte		        6*mus_boss_mvl/mxv
	.byte	W01
	.byte		        4*mus_boss_mvl/mxv
	.byte	W01
	.byte		        2*mus_boss_mvl/mxv
	.byte	W01
	.byte		        0*mus_boss_mvl/mxv
	.byte	W03
	.byte	PEND
	.byte		EOT   , Gn3 
	.byte		VOICE , 13
	.byte		VOL   , 29*mus_boss_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		TIE   , Gn3 , v096
	.byte	W01
	.byte		VOL   , 33*mus_boss_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 52*mus_boss_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 62*mus_boss_mvl/mxv
	.byte		BEND  , c_v+3
	.byte	W01
	.byte		VOL   , 64*mus_boss_mvl/mxv
	.byte		BEND  , c_v+11
	.byte	W01
	.byte		VOL   , 67*mus_boss_mvl/mxv
	.byte		BEND  , c_v+15
	.byte	W01
	.byte		VOL   , 69*mus_boss_mvl/mxv
	.byte		BEND  , c_v+19
	.byte	W01
	.byte		VOL   , 71*mus_boss_mvl/mxv
	.byte		BEND  , c_v+26
	.byte	W01
	.byte		VOL   , 73*mus_boss_mvl/mxv
	.byte		BEND  , c_v+30
	.byte	W01
	.byte		VOL   , 76*mus_boss_mvl/mxv
	.byte		BEND  , c_v+34
	.byte	W01
	.byte		VOL   , 78*mus_boss_mvl/mxv
	.byte		BEND  , c_v+41
	.byte	W01
	.byte		VOL   , 81*mus_boss_mvl/mxv
	.byte		BEND  , c_v+45
	.byte	W01
	.byte		VOL   , 82*mus_boss_mvl/mxv
	.byte		BEND  , c_v+49
	.byte	W01
	.byte		VOL   , 86*mus_boss_mvl/mxv
	.byte		BEND  , c_v+57
	.byte	W01
/* 017   ----------------------------------------
 */	.byte		VOL   , 88*mus_boss_mvl/mxv
	.byte		BEND  , c_v+60
	.byte	W01
	.byte		VOL   , 89*mus_boss_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_mvl/mxv
	.byte	W01
	.byte		        78*mus_boss_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_mvl/mxv
	.byte	W01
	.byte		        58*mus_boss_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_mvl/mxv
	.byte	W01
	.byte		        78*mus_boss_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_mvl/mxv
	.byte	W01
	.byte		        88*mus_boss_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_mvl/mxv
	.byte	W15
	.byte		BEND  , c_v+60
	.byte	W01
	.byte		        c_v+54
	.byte	W01
	.byte		        c_v+51
	.byte	W01
	.byte		        c_v+48
	.byte	W01
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+38
	.byte	W01
	.byte		        c_v+35
	.byte	W01
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+13
	.byte	W01
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+5
	.byte	W01
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_8_016
	.byte		EOT   , Gn3 
	.byte		VOICE , 12
	.byte		VOL   , 29*mus_boss_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		TIE   , Gn3 , v096
	.byte	W01
	.byte		VOL   , 33*mus_boss_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 52*mus_boss_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 62*mus_boss_mvl/mxv
	.byte		BEND  , c_v+3
	.byte	W01
	.byte		VOL   , 64*mus_boss_mvl/mxv
	.byte		BEND  , c_v+11
	.byte	W01
	.byte		VOL   , 67*mus_boss_mvl/mxv
	.byte		BEND  , c_v+15
	.byte	W01
	.byte		VOL   , 69*mus_boss_mvl/mxv
	.byte		BEND  , c_v+19
	.byte	W01
	.byte		VOL   , 71*mus_boss_mvl/mxv
	.byte		BEND  , c_v+26
	.byte	W01
	.byte		VOL   , 73*mus_boss_mvl/mxv
	.byte		BEND  , c_v+30
	.byte	W01
	.byte		VOL   , 76*mus_boss_mvl/mxv
	.byte		BEND  , c_v+34
	.byte	W01
	.byte		VOL   , 78*mus_boss_mvl/mxv
	.byte		BEND  , c_v+41
	.byte	W01
	.byte		VOL   , 81*mus_boss_mvl/mxv
	.byte		BEND  , c_v+45
	.byte	W01
	.byte		VOL   , 82*mus_boss_mvl/mxv
	.byte		BEND  , c_v+49
	.byte	W01
	.byte		VOL   , 86*mus_boss_mvl/mxv
	.byte		BEND  , c_v+57
	.byte	W01
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_8_015
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_8_016
	.byte		EOT   , Gn3 
	.byte		VOL   , 89*mus_boss_mvl/mxv
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N04   , Gn2 , v028
	.byte	W04
	.byte		        Cn3 , v032
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Gn2 , v036
	.byte	W04
	.byte		        Cn3 , v040
	.byte	W04
	.byte		        Dn3 , v044
	.byte	W04
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_8_013
/* 022   ----------------------------------------
 */	.byte		N04   , Gn4 , v076
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn4 , v072
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Gn4 , v068
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Cn4 , v064
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn4 , v060
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Gn3 , v056
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Dn4 , v052
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Gn3 , v048
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Gn2 , v044
	.byte	W28
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
 */	.byte		VOICE , 13
	.byte	W24
	.byte		N04   , Gn1 , v032
	.byte	W04
	.byte		        Cs2 , v036
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Gn2 , v040
	.byte	W04
	.byte		        Cs2 
	.byte	W04
	.byte		        Ds2 , v044
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        Cs3 , v048
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        Cs3 , v052
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Gn3 , v056
	.byte	W04
	.byte		        Cs3 
	.byte	W04
	.byte		        Ds3 , v060
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Cs4 , v064
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
/* 031   ----------------------------------------
 */	.byte		        Ds4 , v068
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Cs4 , v072
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Gn4 , v076
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Gn4 , v072
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Ds5 , v068
	.byte	W04
	.byte		        Gn5 , v064
	.byte	W04
	.byte		        Cs5 , v060
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Gn5 , v056
	.byte	W04
	.byte		        Cs6 , v052
	.byte	W08
	.byte		        Gn5 , v048
	.byte	W04
	.byte		        Cs6 , v044
	.byte	W04
	.byte		        Ds6 , v040
	.byte	W04
	.byte		        Gn6 
	.byte	W04
	.byte		        Cs6 , v036
	.byte	W04
	.byte		        Ds6 , v032
	.byte	W04
	.byte		        Gn6 
	.byte	W04
	.byte		        Cs7 , v028
	.byte	W08
/* 032   ----------------------------------------
 */	.byte		VOICE , 12
	.byte	W24
	.byte		N04   , Gn6 , v024
	.byte	W04
	.byte		        Ds6 
	.byte	W04
	.byte		        Cs6 , v028
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Ds6 , v032
	.byte	W04
	.byte		        Cs6 
	.byte	W04
	.byte		        Gn5 , v036
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Gn5 , v040
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Cs5 , v044
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Ds5 , v048
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Gn4 , v052
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Gn4 , v056
	.byte	W04
	.byte		        Ds4 
	.byte	W04
/* 033   ----------------------------------------
 */	.byte		        Cs4 , v060
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Ds4 , v064
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Gn3 , v068
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Gn3 , v064
	.byte	W04
	.byte		        Ds3 , v060
	.byte	W04
	.byte		        Cs3 , v056
	.byte	W04
	.byte		        Gn2 , v052
	.byte	W04
	.byte		        Ds3 , v048
	.byte	W04
	.byte		        Cs3 
	.byte	W04
	.byte		        Gn2 , v044
	.byte	W04
	.byte		        Ds2 , v040
	.byte	W04
	.byte		        Gn2 , v036
	.byte	W04
	.byte		        Ds2 , v032
	.byte	W04
	.byte		        Cs2 , v028
	.byte	W04
	.byte		        Gn1 
	.byte	W04
	.byte		        Ds2 , v024
	.byte	W04
	.byte		        Cs2 , v020
	.byte	W04
	.byte		        Gn1 , v016
	.byte	W04
	.byte		        Ds1 , v012
	.byte	W12
/* 034   ----------------------------------------
 */	.byte		VOICE , 13
	.byte	W24
	.byte		N04   , Gs1 , v032
	.byte	W04
	.byte		        Dn2 , v036
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Gs2 , v040
	.byte	W04
	.byte		        Dn2 
	.byte	W04
	.byte		        En2 , v044
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        Dn3 , v048
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        Dn3 , v052
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Gs3 , v056
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        En3 , v060
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Dn4 , v064
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
/* 035   ----------------------------------------
 */	.byte		        En4 , v068
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Dn4 , v072
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Gs4 , v076
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Gs4 , v072
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        En5 , v068
	.byte	W04
	.byte		        Gs5 , v064
	.byte	W04
	.byte		        Dn5 , v060
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Gs5 , v056
	.byte	W04
	.byte		        Dn6 , v052
	.byte	W08
	.byte		        Gs5 , v048
	.byte	W04
	.byte		        Dn6 , v044
	.byte	W04
	.byte		        En6 , v040
	.byte	W04
	.byte		        Gs6 
	.byte	W04
	.byte		        Dn6 , v036
	.byte	W04
	.byte		        En6 , v032
	.byte	W04
	.byte		        Gs6 
	.byte	W04
	.byte		        Dn7 , v028
	.byte	W08
/* 036   ----------------------------------------
 */	.byte		VOICE , 12
	.byte	W24
	.byte		N04   , Gs6 , v024
	.byte	W04
	.byte		        En6 
	.byte	W04
	.byte		        Dn6 , v028
	.byte	W04
	.byte		        Gs5 
	.byte	W04
	.byte		        En6 , v032
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Gs5 , v036
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Gs5 , v040
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Dn5 , v044
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        En5 , v048
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Gs4 , v052
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Gs4 , v056
	.byte	W04
	.byte		        En4 
	.byte	W04
/* 037   ----------------------------------------
 */	.byte		        Dn4 , v060
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        En4 , v064
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gs3 , v068
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Gs3 , v064
	.byte	W04
	.byte		        En3 , v060
	.byte	W04
	.byte		        Dn3 , v056
	.byte	W04
	.byte		        Gs2 , v052
	.byte	W04
	.byte		        En3 , v048
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Gs2 , v044
	.byte	W04
	.byte		        En2 , v040
	.byte	W04
	.byte		        Gs2 , v036
	.byte	W04
	.byte		        En2 , v032
	.byte	W04
	.byte		        Dn2 , v028
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        En2 , v024
	.byte	W04
	.byte		        Dn2 , v020
	.byte	W04
	.byte		        Gs1 , v016
	.byte	W04
	.byte		        En1 , v012
	.byte	W12
	.byte	GOTO
	 mPtr	mus_boss_8_B1
mus_boss_8_B2:
/* 038   ----------------------------------------
 */	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_boss):
	.byte	8	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_boss_pri	/* Priority */
	.byte	mus_boss_rev	/* Reverb */

mAlignWord
	mPtr	mus_boss_grp

	mPtr	mus_boss_1
	mPtr	mus_boss_2
	mPtr	mus_boss_3
	mPtr	mus_boss_4
	mPtr	mus_boss_5
	mPtr	mus_boss_6
	mPtr	mus_boss_7
	mPtr	mus_boss_8

	.end
