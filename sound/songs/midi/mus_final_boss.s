	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_final_boss_grp, voicegroup013
	.equ	mus_final_boss_pri, 0
	.equ	mus_final_boss_rev, reverb_set+0
	.equ	mus_final_boss_mvl, 100
	.equ	mus_final_boss_key, 0
	.equ	mus_final_boss_tbs, 1
	.equ	mus_final_boss_exg, 1
	.equ	mus_final_boss_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_final_boss)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_final_boss_1:
	.byte	KEYSH , mus_final_boss_key+0
mus_final_boss_1_B1:
/* 000   ----------------------------------------
 */	.byte	TEMPO , 134*mus_final_boss_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_final_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		N44   , Cn2 , v100
	.byte		N44   , Ds2 
	.byte	W96
/* 001   ----------------------------------------
 */mus_final_boss_1_001:
	.byte		N11   , Cn2 , v100
	.byte		N11   , Ds2 
	.byte	W12
	.byte		N44   , Cn2 
	.byte		N44   , Ds2 
	.byte	W84
	.byte	PEND
/* 002   ----------------------------------------
 */	.byte		        Cn2 
	.byte		N44   , Ds2 
	.byte	W96
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_001
/* 004   ----------------------------------------
 */mus_final_boss_1_004:
	.byte		N12   , Ds1 , v048
	.byte		N44   , Cn2 , v100
	.byte		N44   , Ds2 
	.byte	W12
	.byte		N06   , Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		N12   , Ds1 , v048
	.byte	W12
	.byte		N06   , Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		N12   , Ds1 , v048
	.byte	W12
	.byte		N06   , Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		N12   , Ds1 , v048
	.byte	W12
	.byte		N06   , Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte	PEND
/* 005   ----------------------------------------
 */mus_final_boss_1_005:
	.byte		N12   , Ds1 , v048
	.byte		N11   , Cn2 , v100
	.byte		N11   , Ds2 
	.byte	W12
	.byte		N06   , Dn1 , v040
	.byte		N44   , Cn2 , v100
	.byte		N44   , Ds2 
	.byte	W06
	.byte		N06   , Dn1 , v028
	.byte	W06
	.byte		N12   , Ds1 , v048
	.byte	W12
	.byte		N06   , Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		N12   , Ds1 , v048
	.byte	W12
	.byte		N06   , Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		N12   , Ds1 , v048
	.byte	W12
	.byte		N06   , Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte	PEND
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_004
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_005
/* 008   ----------------------------------------
 */mus_final_boss_1_008:
	.byte		N06   , Dn1 , v052
	.byte		N06   , Ds2 , v104
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v052
	.byte		N06   , Ds2 , v116
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v052
	.byte		N06   , Ds2 , v108
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v052
	.byte		N06   , Ds2 , v108
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte	PEND
/* 009   ----------------------------------------
 */mus_final_boss_1_009:
	.byte		N06   , Dn1 , v052
	.byte		N06   , Ds2 , v104
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v052
	.byte		N06   , Ds2 , v100
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Ds1 , v052
	.byte		N06   , Ds2 , v108
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v052
	.byte		N06   , Ds2 , v116
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte	PEND
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_008
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_009
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_008
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_009
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_008
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_009
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_008
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_009
/* 018   ----------------------------------------
 */mus_final_boss_1_018:
	.byte		N12   , Ds1 , v048
	.byte		N06   , Ds2 , v104
	.byte	W12
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		N12   , Ds1 , v048
	.byte		N06   , Ds2 , v116
	.byte	W12
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		N12   , Ds1 , v048
	.byte		N06   , Ds2 , v108
	.byte	W12
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		N12   , Ds1 , v048
	.byte		N06   , Ds2 , v108
	.byte	W12
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte	PEND
/* 019   ----------------------------------------
 */mus_final_boss_1_019:
	.byte		N12   , Ds1 , v048
	.byte		N06   , Ds2 , v104
	.byte	W12
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		N12   , Ds1 , v048
	.byte		N06   , Ds2 , v100
	.byte	W12
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Ds1 , v040
	.byte		N06   , Ds2 , v108
	.byte	W06
	.byte		        Ds1 , v040
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
	.byte		N06   , Ds2 , v116
	.byte	W06
	.byte		        Ds1 , v040
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte	PEND
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_018
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_019
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_018
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_019
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_018
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_019
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_018
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_019
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_018
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_019
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_018
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_019
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_018
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_019
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_018
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_019
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_018
/* 037   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_019
/* 038   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_018
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_019
	.byte	GOTO
	 mPtr	mus_final_boss_1_B1
mus_final_boss_1_B2:
/* 040   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_018
/* 041   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_019
/* 042   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_018
/* 043   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_019
/* 044   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_018
/* 045   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_1_019
/* 046   ----------------------------------------
 */	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_final_boss_2:
	.byte	KEYSH , mus_final_boss_key+0
mus_final_boss_2_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 29
	.byte	PRIO  , 30
	.byte		VOL   , 106*mus_final_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 13
	.byte		LFOS  , 18
	.byte		LFODL , 20
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		BEND  , c_v+0
	.byte	W24
	.byte		N19   , Cn2 , v104
	.byte		N18   , Gn2 
	.byte	W24
	.byte		        Cs2 
	.byte		N18   , Gs2 
	.byte	W24
	.byte		N21   , As1 
	.byte		N22   , Fn2 , v108
	.byte	W24
/* 001   ----------------------------------------
 */mus_final_boss_2_001:
	.byte	W24
	.byte		N18   , Cn2 , v108
	.byte		N17   , Gn2 , v116
	.byte	W24
	.byte		        Cs2 , v108
	.byte		N19   , Gs2 
	.byte	W24
	.byte		N21   , Ds2 , v100
	.byte		N22   , As2 , v116
	.byte	W24
	.byte	PEND
/* 002   ----------------------------------------
 */mus_final_boss_2_002:
	.byte	W24
	.byte		N19   , Cn2 , v104
	.byte		N18   , Gn2 
	.byte	W24
	.byte		        Cs2 
	.byte		N18   , Gs2 
	.byte	W24
	.byte		N21   , As1 
	.byte		N22   , Fn2 , v108
	.byte	W24
	.byte	PEND
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_2_001
/* 004   ----------------------------------------
 */	.byte		N05   , Cn2 , v116
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		TIE   , Gn3 , v108
	.byte	W12
	.byte		N19   , Cn2 , v104
	.byte		N18   , Gn2 
	.byte	W24
	.byte		        Cs2 
	.byte		N18   , Gs2 
	.byte	W24
	.byte		N21   , As1 
	.byte		N22   , Fn2 , v108
	.byte	W24
/* 005   ----------------------------------------
 */	.byte	W24
	.byte		N18   , Cn2 
	.byte		N17   , Gn2 , v116
	.byte	W24
	.byte		        Cs2 , v108
	.byte		N19   , Gs2 
	.byte	W24
	.byte		N21   , Ds2 , v100
	.byte		N22   , As2 , v116
	.byte	W19
	.byte		EOT   , Gn3 
	.byte	W05
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_2_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_2_001
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
 */	.byte	W92
	.byte	W02
	.byte		N92   , Gn1 , v127
	.byte	W02
/* 016   ----------------------------------------
 */	.byte	W92
	.byte	W02
	.byte		N48   , Cn2 
	.byte	W02
/* 017   ----------------------------------------
 */	.byte	W48
	.byte		N36   , As1 
	.byte	W36
	.byte	W01
	.byte		N10   , Gs1 
	.byte	W11
/* 018   ----------------------------------------
 */	.byte		TIE   , Gn1 
	.byte	W96
/* 019   ----------------------------------------
 */	.byte	W88
	.byte	W01
	.byte		EOT   
	.byte	W06
	.byte		N92   , Cn2 
	.byte	W01
/* 020   ----------------------------------------
 */	.byte	W96
/* 021   ----------------------------------------
 */	.byte		        Dn2 
	.byte	W92
	.byte	W03
	.byte		N32   , Ds2 
	.byte	W01
/* 022   ----------------------------------------
 */	.byte	W36
	.byte		N92   , As1 
	.byte	W60
/* 023   ----------------------------------------
 */	.byte	W32
	.byte	W02
	.byte		N13   , An1 
	.byte	W12
	.byte		N36   , As1 
	.byte	W36
	.byte		N11   , Gs1 
	.byte	W12
	.byte		TIE   , Gn1 
	.byte	W02
/* 024   ----------------------------------------
 */	.byte	W96
/* 025   ----------------------------------------
 */	.byte	W76
	.byte	W01
	.byte		EOT   
	.byte	W18
	.byte		N92   , Dn2 
	.byte	W01
/* 026   ----------------------------------------
 */	.byte	W96
/* 027   ----------------------------------------
 */	.byte		N44   , En2 
	.byte	W44
	.byte	W03
	.byte		        Fn2 
	.byte	W48
	.byte	W01
/* 028   ----------------------------------------
 */	.byte		TIE   , An2 
	.byte	W96
/* 029   ----------------------------------------
 */	.byte	W96
/* 030   ----------------------------------------
 */	.byte	W32
	.byte	W01
	.byte		EOT   
	.byte	W02
	.byte		N10   , Gn2 
	.byte	W13
	.byte		N36   , An2 
	.byte	W36
	.byte		N11   , Dn3 
	.byte	W12
/* 031   ----------------------------------------
 */	.byte	W01
	.byte		TIE   , An2 
	.byte	W92
	.byte	W03
/* 032   ----------------------------------------
 */	.byte	W92
	.byte	W01
	.byte		EOT   
	.byte	W03
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
	 mPtr	mus_final_boss_2_B1
mus_final_boss_2_B2:
/* 040   ----------------------------------------
 */	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_final_boss_3:
	.byte	KEYSH , mus_final_boss_key+0
mus_final_boss_3_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 19
	.byte		VOL   , 96*mus_final_boss_mvl/mxv
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
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte	W96
/* 007   ----------------------------------------
 */	.byte	W96
/* 008   ----------------------------------------
 */mus_final_boss_3_008:
	.byte		N17   , Cn3 , v104
	.byte	W18
	.byte		        Gn3 , v116
	.byte	W18
	.byte		        Fs3 , v096
	.byte	W18
	.byte		        Dn3 , v104
	.byte	W18
	.byte		N11   , Ds3 , v096
	.byte	W12
	.byte		        Fn3 , v100
	.byte	W12
	.byte	PEND
/* 009   ----------------------------------------
 */mus_final_boss_3_009:
	.byte		N17   , Cn3 , v100
	.byte	W18
	.byte		        Gn3 , v116
	.byte	W18
	.byte		        Fs3 , v080
	.byte	W18
	.byte		        Dn3 , v116
	.byte	W18
	.byte		N11   , Ds3 , v096
	.byte	W12
	.byte		N48   , Fn3 
	.byte	W12
	.byte	PEND
/* 010   ----------------------------------------
 */	.byte	W96
/* 011   ----------------------------------------
 */	.byte	W96
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_3_008
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_3_009
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
	 mPtr	mus_final_boss_3_008
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_3_009
/* 026   ----------------------------------------
 */	.byte		N48   , Dn3 , v096
	.byte	W96
/* 027   ----------------------------------------
 */	.byte	W96
/* 028   ----------------------------------------
 */	.byte		N17   , Dn3 , v104
	.byte	W18
	.byte		        An3 , v116
	.byte	W18
	.byte		        Gs3 , v096
	.byte	W18
	.byte		        En3 , v104
	.byte	W18
	.byte		N11   , Fn3 , v096
	.byte	W12
	.byte		        Gn3 , v100
	.byte	W12
/* 029   ----------------------------------------
 */	.byte		N17   , Dn3 
	.byte	W18
	.byte		        An3 , v116
	.byte	W18
	.byte		        Gs3 , v080
	.byte	W18
	.byte		        En3 , v116
	.byte	W18
	.byte		N11   , Fn3 , v096
	.byte	W12
	.byte		N48   , Gn3 
	.byte	W12
/* 030   ----------------------------------------
 */	.byte	W96
/* 031   ----------------------------------------
 */	.byte	W96
/* 032   ----------------------------------------
 */	.byte	W96
/* 033   ----------------------------------------
 */	.byte	W96
/* 034   ----------------------------------------
 */mus_final_boss_3_034:
	.byte	W12
	.byte		N17   , Dn4 , v116
	.byte	W18
	.byte		        Cs4 
	.byte	W18
	.byte		        Cn4 
	.byte	W18
	.byte		        As3 
	.byte	W18
	.byte		N23   , Gn3 , v104
	.byte	W12
	.byte	PEND
/* 035   ----------------------------------------
 */mus_final_boss_3_035:
	.byte	W12
	.byte		N17   , Dn4 , v120
	.byte	W18
	.byte		        Cs4 , v116
	.byte	W18
	.byte		        Cn4 
	.byte	W18
	.byte		        As3 , v100
	.byte	W18
	.byte		N68   , Gn3 , v116
	.byte	W12
	.byte	PEND
/* 036   ----------------------------------------
 */	.byte	W96
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_3_034
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_3_035
	.byte	GOTO
	 mPtr	mus_final_boss_3_B1
mus_final_boss_3_B2:
/* 040   ----------------------------------------
 */	.byte	W56
	.byte	W01
	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_final_boss_4:
	.byte	KEYSH , mus_final_boss_key+0
mus_final_boss_4_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 12
	.byte		VOL   , 110*mus_final_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 56
	.byte		LFODL , 0
	.byte		MOD   , 0
	.byte		MODT  , 2
	.byte		N72   , Cn2 , v120
	.byte	W96
/* 001   ----------------------------------------
 */mus_final_boss_4_001:
	.byte		N06   , Cn2 , v127
	.byte	W12
	.byte		N60   , Cn2 , v120
	.byte	W84
	.byte	PEND
/* 002   ----------------------------------------
 */	.byte		N72   
	.byte	W96
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_4_001
/* 004   ----------------------------------------
 */	.byte		N72   , Cn2 , v120
	.byte	W96
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_4_001
/* 006   ----------------------------------------
 */	.byte		N72   , Cn2 , v120
	.byte	W96
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_4_001
/* 008   ----------------------------------------
 */mus_final_boss_4_008:
	.byte		N05   , Cn2 , v100
	.byte	W06
	.byte		        Cn2 , v096
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cn2 , v100
	.byte	W06
	.byte		        Cn2 , v096
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cn2 , v100
	.byte	W06
	.byte		        Cn2 , v096
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 , v100
	.byte	W06
	.byte		        Gn2 , v096
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_4_008
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_4_008
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_4_008
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_4_008
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_4_008
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_4_008
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_4_008
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_4_008
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_4_008
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_4_008
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_4_008
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_4_008
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_4_008
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_4_008
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_4_008
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_4_008
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_4_008
/* 026   ----------------------------------------
 */mus_final_boss_4_026:
	.byte		N05   , Dn2 , v100
	.byte	W06
	.byte		        Dn2 , v096
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn2 , v100
	.byte	W06
	.byte		        Dn2 , v096
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn2 , v100
	.byte	W06
	.byte		        Dn2 , v096
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An2 , v100
	.byte	W06
	.byte		        An2 , v096
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_4_026
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_4_026
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_4_026
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_4_026
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_4_026
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_4_026
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_4_026
/* 034   ----------------------------------------
 */mus_final_boss_4_034:
	.byte		N05   , Gn2 , v127
	.byte	W06
	.byte		        Gn2 , v088
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 , v127
	.byte	W06
	.byte		        Gn2 , v088
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 , v127
	.byte	W06
	.byte		        Gn2 , v088
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 , v127
	.byte	W06
	.byte		        Gn2 , v088
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
/* 035   ----------------------------------------
 */mus_final_boss_4_035:
	.byte		N05   , Ds2 , v127
	.byte	W06
	.byte		        Ds2 , v088
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Ds2 , v127
	.byte	W06
	.byte		        Ds2 , v088
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fn2 , v127
	.byte	W06
	.byte		        Fn2 , v088
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fn2 , v127
	.byte	W06
	.byte		        Fn2 , v088
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_4_034
/* 037   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_4_034
/* 038   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_4_034
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_4_035
	.byte	GOTO
	 mPtr	mus_final_boss_4_B1
mus_final_boss_4_B2:
/* 040   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_4_034
/* 041   ----------------------------------------
 */	.byte		N05   , Gn2 , v127
	.byte	W06
	.byte		        Gn2 , v088
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 , v127
	.byte	W06
	.byte		        Gn2 , v088
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 , v127
	.byte	W06
	.byte		        Gn2 , v088
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 , v127
	.byte	W06
	.byte		        Gn2 , v088
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W05
	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_final_boss_5:
	.byte	KEYSH , mus_final_boss_key+0
mus_final_boss_5_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 21
	.byte		VOL   , 65*mus_final_boss_mvl/mxv
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
 */mus_final_boss_5_036:
	.byte	W48
	.byte		N06   , Dn4 , v100
	.byte	W06
	.byte		        An4 , v096
	.byte	W06
	.byte		        Dn5 , v092
	.byte	W12
	.byte		        Dn4 , v084
	.byte	W06
	.byte		        An4 , v080
	.byte	W06
	.byte		        Dn5 , v076
	.byte	W12
	.byte	PEND
/* 037   ----------------------------------------
 */	.byte		        Dn4 , v068
	.byte	W06
	.byte		        An4 , v064
	.byte	W06
	.byte		        Dn5 , v060
	.byte	W12
	.byte		        Dn4 , v048
	.byte	W06
	.byte		        An4 , v044
	.byte	W06
	.byte		        Dn5 , v040
	.byte	W12
	.byte		        Dn4 , v032
	.byte	W06
	.byte		        An4 , v028
	.byte	W06
	.byte		        Dn5 , v024
	.byte	W12
	.byte		        Dn4 , v016
	.byte	W06
	.byte		        An4 , v012
	.byte	W06
	.byte		        Dn5 , v008
	.byte	W12
/* 038   ----------------------------------------
 */	.byte	W96
/* 039   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_final_boss_5_B1
mus_final_boss_5_B2:
/* 040   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_5_036
/* 041   ----------------------------------------
 */	.byte		N06   , Dn4 , v068
	.byte	W06
	.byte		        An4 , v064
	.byte	W06
	.byte		        Dn5 , v060
	.byte	W12
	.byte		        Dn4 , v048
	.byte	W06
	.byte		        An4 , v044
	.byte	W06
	.byte		        Dn5 , v040
	.byte	W12
	.byte		        Dn4 , v032
	.byte	W06
	.byte		        An4 , v028
	.byte	W06
	.byte		        Dn5 , v024
	.byte	W12
	.byte		        Dn4 , v016
	.byte	W06
	.byte		        An4 , v012
	.byte	W06
	.byte		        Dn5 , v008
	.byte	W06
	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_final_boss_6:
	.byte	KEYSH , mus_final_boss_key+0
mus_final_boss_6_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 22
	.byte		VOL   , 55*mus_final_boss_mvl/mxv
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
 */mus_final_boss_6_036:
	.byte	W54
	.byte		N06   , Dn4 , v100
	.byte	W06
	.byte		        An4 , v096
	.byte	W06
	.byte		        Dn5 , v092
	.byte	W12
	.byte		        Dn4 , v084
	.byte	W06
	.byte		        An4 , v080
	.byte	W06
	.byte		        Dn5 , v076
	.byte	W06
	.byte	PEND
/* 037   ----------------------------------------
 */mus_final_boss_6_037:
	.byte	W06
	.byte		N06   , Dn4 , v068
	.byte	W06
	.byte		        An4 , v064
	.byte	W06
	.byte		        Dn5 , v060
	.byte	W12
	.byte		        Dn4 , v048
	.byte	W06
	.byte		        An4 , v044
	.byte	W06
	.byte		        Dn5 , v040
	.byte	W12
	.byte		        Dn4 , v032
	.byte	W06
	.byte		        An4 , v028
	.byte	W06
	.byte		        Dn5 , v024
	.byte	W12
	.byte		        Dn4 , v016
	.byte	W06
	.byte		        An4 , v012
	.byte	W06
	.byte		        Dn5 , v008
	.byte	W06
	.byte	PEND
/* 038   ----------------------------------------
 */	.byte	W96
/* 039   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_final_boss_6_B1
mus_final_boss_6_B2:
/* 040   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_6_036
/* 041   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_6_037
/* 042   ----------------------------------------
 */	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_final_boss_7:
	.byte	KEYSH , mus_final_boss_key+0
mus_final_boss_7_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 14
	.byte		VOL   , 79*mus_final_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 23
	.byte		LFODL , 22
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		N72   , Cn2 , v120
	.byte	W96
/* 001   ----------------------------------------
 */mus_final_boss_7_001:
	.byte		N06   , Cn2 , v127
	.byte	W12
	.byte		N60   , Cn2 , v120
	.byte	W84
	.byte	PEND
/* 002   ----------------------------------------
 */	.byte		N72   
	.byte	W96
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_7_001
/* 004   ----------------------------------------
 */	.byte		N72   , Cn2 , v120
	.byte	W96
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_7_001
/* 006   ----------------------------------------
 */	.byte		N72   , Cn2 , v120
	.byte	W96
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_7_001
/* 008   ----------------------------------------
 */	.byte	W96
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */mus_final_boss_7_010:
	.byte		N17   , Cn3 , v104
	.byte	W18
	.byte		        Gn3 , v116
	.byte	W18
	.byte		        Fs3 , v096
	.byte	W18
	.byte		        Dn3 , v104
	.byte	W18
	.byte		N11   , Ds3 , v096
	.byte	W12
	.byte		        Fn3 , v100
	.byte	W12
	.byte	PEND
/* 011   ----------------------------------------
 */mus_final_boss_7_011:
	.byte		N17   , Cn3 , v100
	.byte	W18
	.byte		        Gn3 , v116
	.byte	W18
	.byte		        Fs3 , v080
	.byte	W18
	.byte		        Dn3 , v116
	.byte	W18
	.byte		N11   , Ds3 , v096
	.byte	W12
	.byte		N48   , Fn3 
	.byte	W12
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
 */	.byte	PATT
	 mPtr	mus_final_boss_7_010
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_7_011
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
 */	.byte		N92   , Gn1 , v108
	.byte		N92   , Dn2 
	.byte	W96
/* 035   ----------------------------------------
 */mus_final_boss_7_035:
	.byte		N48   , Gs1 , v076
	.byte		N48   , Ds2 , v088
	.byte	W48
	.byte		        Fn1 , v096
	.byte		N48   , Cn2 , v092
	.byte	W48
	.byte	PEND
/* 036   ----------------------------------------
 */	.byte		N92   , Gn1 , v108
	.byte		N92   , Dn2 
	.byte	W96
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte		        Gn1 
	.byte		N92   , Dn2 
	.byte	W96
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_7_035
	.byte	GOTO
	 mPtr	mus_final_boss_7_B1
mus_final_boss_7_B2:
/* 040   ----------------------------------------
 */	.byte		N92   , Gn1 , v108
	.byte		N92   , Dn2 
	.byte	W92
	.byte	W01
	.byte	FINE

/* **************** Track 8 (Midi-Chn.8) **************** */

mus_final_boss_8:
	.byte	KEYSH , mus_final_boss_key+0
mus_final_boss_8_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 28
	.byte		VOL   , 96*mus_final_boss_mvl/mxv
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
 */mus_final_boss_8_009:
	.byte	W48
	.byte		N05   , Gn4 , v076
	.byte	W06
	.byte		        Cn5 , v068
	.byte	W06
	.byte		        Gn5 , v060
	.byte	W06
	.byte		        Cn6 , v052
	.byte	W06
	.byte		        Gn6 , v044
	.byte	W06
	.byte		        Cn7 , v036
	.byte	W18
	.byte	PEND
/* 010   ----------------------------------------
 */	.byte	W96
/* 011   ----------------------------------------
 */	.byte	W96
/* 012   ----------------------------------------
 */	.byte	W96
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_8_009
/* 014   ----------------------------------------
 */	.byte	W96
/* 015   ----------------------------------------
 */	.byte	W96
/* 016   ----------------------------------------
 */	.byte	W96
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_8_009
/* 018   ----------------------------------------
 */	.byte	W96
/* 019   ----------------------------------------
 */	.byte	W96
/* 020   ----------------------------------------
 */	.byte	W96
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_8_009
/* 022   ----------------------------------------
 */	.byte	W96
/* 023   ----------------------------------------
 */	.byte	W96
/* 024   ----------------------------------------
 */	.byte	W96
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_8_009
/* 026   ----------------------------------------
 */	.byte	W96
/* 027   ----------------------------------------
 */	.byte	W96
/* 028   ----------------------------------------
 */	.byte	W96
/* 029   ----------------------------------------
 */	.byte	W48
	.byte		N05   , An4 , v076
	.byte	W06
	.byte		        Dn5 , v068
	.byte	W06
	.byte		        An5 , v060
	.byte	W06
	.byte		        Dn6 , v052
	.byte	W06
	.byte		        An6 , v044
	.byte	W06
	.byte		        Dn7 , v036
	.byte	W18
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
	 mPtr	mus_final_boss_8_B1
mus_final_boss_8_B2:
/* 040   ----------------------------------------
 */	.byte	FINE

/* **************** Track 9 (Midi-Chn.9) **************** */

mus_final_boss_9:
	.byte	KEYSH , mus_final_boss_key+0
mus_final_boss_9_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 23
	.byte		VOL   , 79*mus_final_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 12
	.byte		LFOS  , 23
	.byte		LFODL , 22
	.byte		MOD   , 17
	.byte		MODT  , 0
	.byte		BEND  , c_v+0
	.byte		TIE   , Cn3 , v092
	.byte	W68
	.byte	W03
	.byte		BEND  , c_v+5
	.byte	W02
	.byte		        c_v+10
	.byte	W03
	.byte		        c_v+18
	.byte	W02
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+31
	.byte	W02
	.byte		        c_v+36
	.byte	W02
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+52
	.byte	W02
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+59
	.byte	W02
	.byte		        c_v+63
	.byte	W02
	.byte		        c_v+63
	.byte	W01
/* 001   ----------------------------------------
 */mus_final_boss_9_001:
	.byte	W72
	.byte		BEND  , c_v+63
	.byte	W03
	.byte		        c_v+55
	.byte	W03
	.byte		        c_v+47
	.byte	W03
	.byte		        c_v+39
	.byte	W04
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+24
	.byte	W01
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+14
	.byte	W02
	.byte		        c_v+8
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte	PEND
	.byte		EOT   , Cn3 
	.byte	W01
/* 002   ----------------------------------------
 */mus_final_boss_9_002:
	.byte		BEND  , c_v+0
	.byte		TIE   , Cn3 , v092
	.byte	W68
	.byte	W03
	.byte		BEND  , c_v+5
	.byte	W02
	.byte		        c_v+10
	.byte	W03
	.byte		        c_v+18
	.byte	W02
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+31
	.byte	W02
	.byte		        c_v+36
	.byte	W02
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+52
	.byte	W02
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+59
	.byte	W02
	.byte		        c_v+63
	.byte	W02
	.byte		        c_v+63
	.byte	W01
	.byte	PEND
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_9_001
	.byte		EOT   , Cn3 
	.byte	W01
/* 004   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_9_002
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_9_001
	.byte		EOT   , Cn3 
	.byte	W01
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_9_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_9_001
	.byte		EOT   , Cn3 
	.byte	W01
/* 008   ----------------------------------------
 */mus_final_boss_9_008:
	.byte		N05   , Gn1 , v124
	.byte	W06
	.byte		        Cn2 , v116
	.byte	W06
	.byte		        Gn2 , v108
	.byte	W06
	.byte		        Cn3 , v100
	.byte	W06
	.byte		        Gn3 , v092
	.byte	W06
	.byte		        Cn4 , v084
	.byte	W06
	.byte		        Gn4 , v076
	.byte	W06
	.byte		        Cn5 , v068
	.byte	W06
	.byte		        Gn1 , v124
	.byte		N05   , Gn5 , v060
	.byte	W06
	.byte		        Cn2 , v116
	.byte		N05   , Cn6 , v052
	.byte	W06
	.byte		        Gn2 , v108
	.byte		N05   , Gn6 , v044
	.byte	W06
	.byte		        Cn3 , v100
	.byte		N05   , Cn7 , v036
	.byte	W06
	.byte		        Gn3 , v092
	.byte	W06
	.byte		        Cn4 , v084
	.byte	W06
	.byte		        Gn4 , v076
	.byte	W06
	.byte		        Cn5 , v068
	.byte	W06
	.byte	PEND
/* 009   ----------------------------------------
 */mus_final_boss_9_009:
	.byte		N05   , Gn5 , v060
	.byte	W06
	.byte		        Cn6 , v052
	.byte	W06
	.byte		        Gn6 , v044
	.byte	W06
	.byte		        Cn7 , v036
	.byte	W78
	.byte	PEND
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_9_008
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_9_009
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_9_008
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_9_009
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_9_008
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_9_009
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_9_008
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_9_009
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_9_008
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_9_009
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_9_008
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_9_009
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_9_008
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_9_009
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_9_008
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_9_009
/* 026   ----------------------------------------
 */mus_final_boss_9_026:
	.byte		N05   , An1 , v124
	.byte	W06
	.byte		        Dn2 , v116
	.byte	W06
	.byte		        An2 , v108
	.byte	W06
	.byte		        Dn3 , v100
	.byte	W06
	.byte		        An3 , v092
	.byte	W06
	.byte		        Dn4 , v084
	.byte	W06
	.byte		        An4 , v076
	.byte	W06
	.byte		        Dn5 , v068
	.byte	W06
	.byte		        An1 , v124
	.byte		N05   , An5 , v060
	.byte	W06
	.byte		        Dn2 , v116
	.byte		N05   , Dn6 , v052
	.byte	W06
	.byte		        An2 , v108
	.byte		N05   , An6 , v044
	.byte	W06
	.byte		        Dn3 , v100
	.byte		N05   , Dn7 , v036
	.byte	W06
	.byte		        An3 , v092
	.byte	W06
	.byte		        Dn4 , v084
	.byte	W06
	.byte		        An4 , v076
	.byte	W06
	.byte		        Dn5 , v068
	.byte	W06
	.byte	PEND
/* 027   ----------------------------------------
 */mus_final_boss_9_027:
	.byte		N05   , An5 , v060
	.byte	W06
	.byte		        Dn6 , v052
	.byte	W06
	.byte		        An6 , v044
	.byte	W06
	.byte		        Dn7 , v036
	.byte	W78
	.byte	PEND
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_9_026
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_9_027
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_9_026
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_9_027
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_9_026
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_9_027
/* 034   ----------------------------------------
 */	.byte		N92   , Gn2 , v108
	.byte	W96
/* 035   ----------------------------------------
 */mus_final_boss_9_035:
	.byte		N48   , Ds3 , v088
	.byte	W48
	.byte		        Fn2 , v096
	.byte	W48
	.byte	PEND
/* 036   ----------------------------------------
 */	.byte		N92   , Gn2 , v108
	.byte	W96
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte		N92   
	.byte	W96
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_9_035
	.byte	GOTO
	 mPtr	mus_final_boss_9_B1
mus_final_boss_9_B2:
/* 040   ----------------------------------------
 */	.byte		N92   , Gn2 , v108
	.byte	W92
	.byte	W01
	.byte	FINE

/* **************** Track 10 (Midi-Chn.10) **************** */

mus_final_boss_10:
	.byte	KEYSH , mus_final_boss_key+0
mus_final_boss_10_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 24
	.byte		VOL   , 79*mus_final_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 12
	.byte		LFOS  , 23
	.byte		LFODL , 22
	.byte		MOD   , 17
	.byte		MODT  , 0
	.byte	W24
	.byte		N18   , Gn3 , v104
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		N22   , Fn3 , v108
	.byte	W24
/* 001   ----------------------------------------
 */mus_final_boss_10_001:
	.byte	W24
	.byte		N17   , Gn3 , v116
	.byte	W24
	.byte		N19   , Gs3 , v108
	.byte	W24
	.byte		N22   , As3 , v116
	.byte	W24
	.byte	PEND
/* 002   ----------------------------------------
 */mus_final_boss_10_002:
	.byte	W24
	.byte		N18   , Gn3 , v104
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		N22   , Fn3 , v108
	.byte	W24
	.byte	PEND
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_001
/* 004   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_002
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_001
/* 008   ----------------------------------------
 */mus_final_boss_10_008:
	.byte		N05   , Cn2 , v100
	.byte	W06
	.byte		        Cn2 , v096
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cn2 , v100
	.byte	W06
	.byte		        Cn2 , v096
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cn2 , v100
	.byte	W06
	.byte		        Cn2 , v096
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 , v100
	.byte	W06
	.byte		        Gn2 , v096
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_008
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_008
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_008
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_008
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_008
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_008
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_008
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_008
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_008
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_008
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_008
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_008
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_008
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_008
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_008
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_008
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_008
/* 026   ----------------------------------------
 */mus_final_boss_10_026:
	.byte		N05   , Dn2 , v100
	.byte	W06
	.byte		        Dn2 , v096
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn2 , v100
	.byte	W06
	.byte		        Dn2 , v096
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn2 , v100
	.byte	W06
	.byte		        Dn2 , v096
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An2 , v100
	.byte	W06
	.byte		        An2 , v096
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_026
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_026
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_026
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_026
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_026
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_026
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_026
/* 034   ----------------------------------------
 */mus_final_boss_10_034:
	.byte		N05   , Gn2 , v127
	.byte	W06
	.byte		        Gn2 , v088
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 , v127
	.byte	W06
	.byte		        Gn2 , v088
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 , v127
	.byte	W06
	.byte		        Gn2 , v088
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 , v127
	.byte	W06
	.byte		        Gn2 , v088
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
/* 035   ----------------------------------------
 */mus_final_boss_10_035:
	.byte		N05   , Ds2 , v127
	.byte	W06
	.byte		        Ds2 , v088
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Ds2 , v127
	.byte	W06
	.byte		        Ds2 , v088
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fn2 , v127
	.byte	W06
	.byte		        Fn2 , v088
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fn2 , v127
	.byte	W06
	.byte		        Fn2 , v088
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_034
/* 037   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_034
/* 038   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_034
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_035
	.byte	GOTO
	 mPtr	mus_final_boss_10_B1
mus_final_boss_10_B2:
/* 040   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_10_034
/* 041   ----------------------------------------
 */	.byte		N05   , Gn2 , v127
	.byte	W06
	.byte		        Gn2 , v088
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 , v127
	.byte	W06
	.byte		        Gn2 , v088
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 , v127
	.byte	W06
	.byte		        Gn2 , v088
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 , v127
	.byte	W06
	.byte		        Gn2 , v088
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W05
	.byte	FINE

/* **************** Track 11 (Midi-Chn.11) **************** */

mus_final_boss_11:
	.byte	KEYSH , mus_final_boss_key+0
mus_final_boss_11_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 25
	.byte		VOL   , 79*mus_final_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 56
	.byte		LFODL , 0
	.byte		MOD   , 0
	.byte		MODT  , 2
	.byte		N92   , Cn2 , v127
	.byte	W96
/* 001   ----------------------------------------
 */mus_final_boss_11_001:
	.byte		N11   , Cn2 , v127
	.byte	W12
	.byte		N80   
	.byte	W84
	.byte	PEND
/* 002   ----------------------------------------
 */	.byte		N92   
	.byte	W96
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_11_001
/* 004   ----------------------------------------
 */	.byte		N92   , Cn2 , v127
	.byte	W96
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_11_001
/* 006   ----------------------------------------
 */	.byte		N92   , Cn2 , v127
	.byte	W96
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_11_001
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
 */	.byte	W96
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	W96
/* 039   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_final_boss_11_B1
mus_final_boss_11_B2:
/* 040   ----------------------------------------
 */	.byte	FINE

/* **************** Track 12 (Midi-Chn.12) **************** */

mus_final_boss_12:
	.byte	KEYSH , mus_final_boss_key+0
mus_final_boss_12_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 36
	.byte		VOL   , 105*mus_final_boss_mvl/mxv
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
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte	W96
/* 007   ----------------------------------------
 */	.byte	W96
/* 008   ----------------------------------------
 */mus_final_boss_12_008:
	.byte		N05   , Gn1 , v124
	.byte	W06
	.byte		        Cn2 , v116
	.byte	W06
	.byte		        Gn2 , v108
	.byte	W06
	.byte		        Cn3 , v100
	.byte	W06
	.byte		        Gn3 , v092
	.byte	W06
	.byte		        Cn4 , v084
	.byte	W06
	.byte		        Gn4 , v076
	.byte	W06
	.byte		        Cn5 , v068
	.byte	W06
	.byte		        Gn5 , v060
	.byte	W06
	.byte		        Cn6 , v052
	.byte	W06
	.byte		        Gn6 , v044
	.byte	W06
	.byte		        Cn7 , v036
	.byte	W30
	.byte	PEND
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_12_008
/* 011   ----------------------------------------
 */	.byte	W96
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_12_008
/* 013   ----------------------------------------
 */	.byte	W96
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_12_008
/* 015   ----------------------------------------
 */	.byte	W96
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_12_008
/* 017   ----------------------------------------
 */	.byte	W96
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_12_008
/* 019   ----------------------------------------
 */	.byte	W96
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_12_008
/* 021   ----------------------------------------
 */	.byte	W96
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_12_008
/* 023   ----------------------------------------
 */	.byte	W96
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_12_008
/* 025   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		N92   , Dn3 , v127
	.byte	W01
/* 026   ----------------------------------------
 */	.byte	W96
/* 027   ----------------------------------------
 */	.byte		N44   , En3 
	.byte	W44
	.byte	W03
	.byte		        Fn3 
	.byte	W48
	.byte	W01
/* 028   ----------------------------------------
 */	.byte		TIE   , An3 
	.byte	W96
/* 029   ----------------------------------------
 */	.byte	W96
/* 030   ----------------------------------------
 */	.byte	W32
	.byte	W01
	.byte		EOT   
	.byte	W02
	.byte		N10   , Gn3 
	.byte	W13
	.byte		N36   , An3 
	.byte	W36
	.byte		N11   , Dn4 
	.byte	W12
/* 031   ----------------------------------------
 */	.byte	W01
	.byte		TIE   , An3 
	.byte	W92
	.byte	W03
/* 032   ----------------------------------------
 */	.byte	W88
	.byte		EOT   
	.byte	W08
/* 033   ----------------------------------------
 */	.byte	W96
/* 034   ----------------------------------------
 */mus_final_boss_12_034:
	.byte	W12
	.byte		N19   , Dn3 , v116
	.byte	W18
	.byte		N16   , Cs3 
	.byte	W17
	.byte		N21   , Cn3 
	.byte	W19
	.byte		N17   , As2 
	.byte	W17
	.byte		N24   , Gn2 , v104
	.byte	W13
	.byte	PEND
/* 035   ----------------------------------------
 */mus_final_boss_12_035:
	.byte	W12
	.byte		N19   , Dn3 , v120
	.byte	W18
	.byte		N17   , Cs3 , v116
	.byte	W18
	.byte		N19   , Cn3 
	.byte	W18
	.byte		        As2 , v100
	.byte	W18
	.byte		N21   , Gn2 , v116
	.byte	W12
	.byte	PEND
/* 036   ----------------------------------------
 */	.byte	W96
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_12_034
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_final_boss_12_035
	.byte	GOTO
	 mPtr	mus_final_boss_12_B1
mus_final_boss_12_B2:
/* 040   ----------------------------------------
 */	.byte	W09
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_final_boss):
	.byte	12	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_final_boss_pri	/* Priority */
	.byte	mus_final_boss_rev	/* Reverb */

mAlignWord
	mPtr	mus_final_boss_grp

	mPtr	mus_final_boss_1
	mPtr	mus_final_boss_2
	mPtr	mus_final_boss_3
	mPtr	mus_final_boss_4
	mPtr	mus_final_boss_5
	mPtr	mus_final_boss_6
	mPtr	mus_final_boss_7
	mPtr	mus_final_boss_8
	mPtr	mus_final_boss_9
	mPtr	mus_final_boss_10
	mPtr	mus_final_boss_11
	mPtr	mus_final_boss_12

	.end
