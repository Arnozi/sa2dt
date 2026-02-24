	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_boss_knuckles_grp, voicegroup014
	.equ	mus_boss_knuckles_pri, 0
	.equ	mus_boss_knuckles_rev, reverb_set+0
	.equ	mus_boss_knuckles_mvl, 110
	.equ	mus_boss_knuckles_key, 0
	.equ	mus_boss_knuckles_tbs, 1
	.equ	mus_boss_knuckles_exg, 1
	.equ	mus_boss_knuckles_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_boss_knuckles)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_boss_knuckles_1:
	.byte	KEYSH , mus_boss_knuckles_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 154*mus_boss_knuckles_tbs/2
	.byte		VOICE , 123
	.byte		VOL   , 127*mus_boss_knuckles_mvl/mxv
	.byte	W84
mus_boss_knuckles_1_B1:
	.byte		N12   , En2 , v127
	.byte	W12
/* 001   ----------------------------------------
 */mus_boss_knuckles_1_001:
	.byte		N05   , Fn2 , v127
	.byte	W07
	.byte		        Fs2 
	.byte	W05
	.byte		N12   , Gn2 
	.byte	W13
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N04   , An2 
	.byte	W05
	.byte		N06   , Fn2 
	.byte	W07
	.byte		N05   , Fs2 
	.byte	W05
	.byte		N12   , Gn2 
	.byte	W13
	.byte		N06   , As2 , v032
	.byte	W06
	.byte		N05   , En3 , v076
	.byte	W06
	.byte		        Ds3 , v127
	.byte	W06
	.byte		        Cs3 , v076
	.byte	W05
	.byte		N12   , En2 , v127
	.byte	W12
	.byte	PEND
/* 002   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_1_001
/* 003   ----------------------------------------
 */mus_boss_knuckles_1_003:
	.byte		N05   , Fn2 , v127
	.byte	W07
	.byte		        Fs2 
	.byte	W05
	.byte		N12   , Gn2 
	.byte	W13
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N04   , An2 
	.byte	W05
	.byte		N06   , Fn2 
	.byte	W07
	.byte		N05   , Fs2 
	.byte	W05
	.byte		N12   , Gn2 
	.byte	W13
	.byte		N06   , As2 , v032
	.byte	W06
	.byte		N05   , En3 , v076
	.byte	W06
	.byte		        Ds3 , v127
	.byte	W06
	.byte		        Cs3 , v076
	.byte	W05
	.byte		N11   , Fn3 , v127
	.byte	W12
	.byte	PEND
/* 004   ----------------------------------------
 */mus_boss_knuckles_1_004:
	.byte		N06   , Fs3 , v127
	.byte	W07
	.byte		N05   , Gn3 
	.byte	W05
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N05   , Fn3 
	.byte	W06
	.byte		N06   , An3 , v032
	.byte	W07
	.byte		N04   , Gn3 , v127
	.byte	W05
	.byte		N06   , An3 , v032
	.byte	W07
	.byte		N05   , Fn3 , v076
	.byte	W05
	.byte		N06   , Gs3 , v127
	.byte	W07
	.byte		N04   , Gn3 
	.byte	W05
	.byte		N05   , As3 
	.byte	W06
	.byte		N06   , Bn3 
	.byte	W07
	.byte		N05   , Cn4 
	.byte	W05
	.byte		        Cs4 
	.byte	W06
	.byte		N12   , En2 
	.byte	W12
	.byte	PEND
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_1_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_1_001
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_1_001
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_1_001
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_1_001
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_1_001
/* 011   ----------------------------------------
 */	.byte		N05   , Fn2 , v127
	.byte	W07
	.byte		        Fs2 
	.byte	W05
	.byte		N12   , Gn2 
	.byte	W13
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N04   , An2 
	.byte	W05
	.byte		N06   , Fn2 
	.byte	W07
	.byte		N05   , Fs2 
	.byte	W05
	.byte		N12   , Gn2 
	.byte	W13
	.byte		N06   , As2 , v032
	.byte	W06
	.byte		N05   , En3 , v076
	.byte	W06
	.byte		        Ds3 , v127
	.byte	W06
	.byte		        Cs3 , v076
	.byte	W05
	.byte		N11   , En2 , v127
	.byte	W12
/* 012   ----------------------------------------
 */	.byte		N05   , Fn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N05   , Gs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N02   
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N06   , Gn2 
	.byte	W03
	.byte		N12   , En2 
	.byte	W12
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_1_001
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_1_001
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_1_001
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_1_001
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_1_001
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_1_001
/* 019   ----------------------------------------
 */mus_boss_knuckles_1_019:
	.byte		N05   , Fn2 , v127
	.byte	W07
	.byte		        Fs2 
	.byte	W05
	.byte		N12   , Gn2 
	.byte	W13
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N04   , An2 
	.byte	W05
	.byte		N06   , Fn2 
	.byte	W07
	.byte		N05   , Fs2 
	.byte	W05
	.byte		N12   , Gn2 
	.byte	W13
	.byte		N06   , As2 , v032
	.byte	W06
	.byte		N05   , En3 , v076
	.byte	W06
	.byte		        Ds3 , v127
	.byte	W06
	.byte		        Cs3 , v076
	.byte	W05
	.byte		N07   , Cs3 , v127
	.byte	W07
	.byte		N04   , Bn2 
	.byte	W05
	.byte	PEND
/* 020   ----------------------------------------
 */mus_boss_knuckles_1_020:
	.byte		N06   , As2 , v032
	.byte	W07
	.byte		N05   , Bn2 , v127
	.byte	W05
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W07
	.byte		N05   , Bn2 , v048
	.byte	W05
	.byte		N06   , Cs3 , v127
	.byte	W07
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N06   , Bn2 , v048
	.byte	W06
	.byte		N04   , As2 , v052
	.byte	W05
	.byte		N06   , Bn2 , v048
	.byte	W07
	.byte		N05   , Cn3 , v127
	.byte	W05
	.byte		N12   , En2 
	.byte	W12
	.byte	PEND
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_1_001
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_1_001
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_1_001
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_1_001
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_1_001
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_1_001
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_1_003
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_1_004
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_1_001
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_1_001
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_1_001
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_1_001
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_1_001
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_1_001
/* 035   ----------------------------------------
 */	.byte		N05   , Fn2 , v127
	.byte	W07
	.byte		        Fs2 
	.byte	W05
	.byte		N12   , Gn2 
	.byte	W13
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N04   , An2 
	.byte	W05
	.byte		N06   , Fn2 
	.byte	W07
	.byte		N05   , Fs2 
	.byte	W05
	.byte		N12   , Gn2 
	.byte	W13
	.byte		N06   , As2 , v032
	.byte	W06
	.byte		N05   , En3 , v076
	.byte	W06
	.byte		        Ds3 , v127
	.byte	W06
	.byte		        Cs3 , v076
	.byte	W05
	.byte		N11   , Fs4 , v127
	.byte	W12
/* 036   ----------------------------------------
 */	.byte		N06   , Gn4 
	.byte	W07
	.byte		N05   , Gs4 
	.byte	W05
	.byte		        An4 , v048
	.byte	W07
	.byte		        As4 , v127
	.byte	W05
	.byte		N11   , Bn4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N06   , Gn4 
	.byte	W07
	.byte		N05   , Gs4 
	.byte	W05
	.byte		N06   , An4 , v048
	.byte	W07
	.byte		N05   , As4 , v127
	.byte	W05
	.byte		        Gn4 
	.byte	W06
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N12   , En2 
	.byte	W12
/* 037   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_1_019
/* 038   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_1_020
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_1_003
/* 040   ----------------------------------------
 */	.byte		N06   , Fs3 , v127
	.byte	W07
	.byte		N05   , Gn3 
	.byte	W05
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N05   , Fn3 
	.byte	W06
	.byte		N06   , An3 , v032
	.byte	W07
	.byte		N04   , Gn3 , v127
	.byte	W05
	.byte		N06   , An3 , v032
	.byte	W07
	.byte		N05   , Fn3 , v076
	.byte	W05
	.byte		N06   , Gs3 , v127
	.byte	W07
	.byte		N04   , Gn3 
	.byte	W05
	.byte		N05   , As3 
	.byte	W06
	.byte		N06   , Bn3 
	.byte	W07
	.byte		N05   , Cn4 
	.byte	W05
	.byte		        Cs4 
	.byte	W06
	.byte		N11   , En2 
	.byte	W12
/* 041   ----------------------------------------
 */	.byte		N11   
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N12   , Dn4 
	.byte	W13
	.byte		N09   , Ds4 
	.byte	W10
	.byte		N06   , En4 
	.byte	W07
	.byte		N05   , Fn4 
	.byte	W06
	.byte		N06   , En4 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N06   
	.byte	W07
	.byte		N05   , Fn4 
	.byte	W05
	.byte		N11   , Fs4 
	.byte	W12
/* 042   ----------------------------------------
 */	.byte		N06   , Gn4 
	.byte	W07
	.byte		N05   , Gs4 
	.byte	W05
	.byte		        An4 , v048
	.byte	W07
	.byte		        As4 , v127
	.byte	W05
	.byte		N11   , Bn4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N06   , Gn4 
	.byte	W07
	.byte		N05   , Gs4 
	.byte	W05
	.byte		N06   , An4 , v048
	.byte	W07
	.byte		N05   , As4 , v127
	.byte	W05
	.byte		        Gn4 
	.byte	W06
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N11   , Fn3 
	.byte	W12
/* 043   ----------------------------------------
 */	.byte		N06   , Fs3 
	.byte	W07
	.byte		N05   , Gn3 
	.byte	W05
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N05   , Fn3 
	.byte	W06
	.byte		N06   , An3 , v032
	.byte	W07
	.byte		N04   , Gn3 , v127
	.byte	W05
	.byte		N06   , An3 , v032
	.byte	W07
	.byte		N05   , Fn3 , v076
	.byte	W05
	.byte		N06   , Gs3 , v127
	.byte	W07
	.byte		N04   , Gn3 
	.byte	W05
	.byte		N05   , As3 
	.byte	W06
	.byte		N06   , Bn3 
	.byte	W07
	.byte		N05   , Cn4 
	.byte	W05
	.byte		        Cs4 
	.byte	W06
	.byte		N07   , Cs3 
	.byte	W07
	.byte		N04   , Bn2 
	.byte	W05
/* 044   ----------------------------------------
 */	.byte		N06   , As2 , v032
	.byte	W07
	.byte		N05   , Bn2 , v127
	.byte	W05
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W07
	.byte		N05   , Bn2 , v048
	.byte	W05
	.byte		N06   , Cs3 , v127
	.byte	W07
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N06   , Bn2 , v048
	.byte	W06
	.byte		N04   , As2 , v052
	.byte	W05
	.byte		N06   , Bn2 , v048
	.byte	W07
	.byte		N05   , Cn3 , v127
	.byte	W05
	.byte	GOTO
	 mPtr	mus_boss_knuckles_1_B1
mus_boss_knuckles_1_B2:
	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_boss_knuckles_2:
	.byte	KEYSH , mus_boss_knuckles_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 127
	.byte		VOL   , 127*mus_boss_knuckles_mvl/mxv
	.byte	W84
mus_boss_knuckles_2_B1:
	.byte		N96   , Cs2 , v127
	.byte	W12
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W84
	.byte		N96   
	.byte	W12
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
 */	.byte	W84
	.byte		N96   
	.byte	W12
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
 */	.byte	W84
	.byte		N96   
	.byte	W12
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
 */	.byte	W84
	.byte		N96   
	.byte	W12
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
/* 044   ----------------------------------------
 */	.byte	W84
	.byte	GOTO
	 mPtr	mus_boss_knuckles_2_B1
mus_boss_knuckles_2_B2:
	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_boss_knuckles_3:
	.byte	KEYSH , mus_boss_knuckles_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 103
	.byte		VOL   , 127*mus_boss_knuckles_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W12
	.byte		N68   , Ds1 , v112
	.byte	W72
mus_boss_knuckles_3_B1:
	.byte		N32   , Gs1 , v127
	.byte	W12
/* 001   ----------------------------------------
 */mus_boss_knuckles_3_001:
	.byte	W24
	.byte		N56   , Ds2 , v127
	.byte	W60
	.byte		N32   , Gs1 
	.byte	W12
	.byte	PEND
/* 002   ----------------------------------------
 */	.byte	W24
	.byte		        Ds2 
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N32   , Gs1 
	.byte	W12
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_3_001
/* 004   ----------------------------------------
 */	.byte	W24
	.byte		N32   , Ds2 , v127
	.byte	W36
	.byte		N11   , Ds1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N32   , Gs2 
	.byte	W12
/* 005   ----------------------------------------
 */mus_boss_knuckles_3_005:
	.byte	W24
	.byte		N56   , Ds2 , v127
	.byte	W60
	.byte		N32   , Gn1 
	.byte	W12
	.byte	PEND
/* 006   ----------------------------------------
 */mus_boss_knuckles_3_006:
	.byte	W24
	.byte		N32   , Dn2 , v127
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N32   , Gs1 
	.byte	W12
	.byte	PEND
/* 007   ----------------------------------------
 */mus_boss_knuckles_3_007:
	.byte	W24
	.byte		N56   , Ds2 , v127
	.byte	W60
	.byte		N32   , An1 
	.byte	W12
	.byte	PEND
/* 008   ----------------------------------------
 */mus_boss_knuckles_3_008:
	.byte	W24
	.byte		N32   , En2 , v127
	.byte	W36
	.byte		N11   , An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N32   , Gs1 
	.byte	W12
	.byte	PEND
/* 009   ----------------------------------------
 */mus_boss_knuckles_3_009:
	.byte	W24
	.byte		N56   , Ds2 , v127
	.byte	W60
	.byte		N32   , Dn2 
	.byte	W12
	.byte	PEND
/* 010   ----------------------------------------
 */mus_boss_knuckles_3_010:
	.byte	W24
	.byte		N32   , Gn1 , v127
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N32   , Gs1 
	.byte	W12
	.byte	PEND
/* 011   ----------------------------------------
 */mus_boss_knuckles_3_011:
	.byte	W24
	.byte		N56   , Ds2 , v127
	.byte	W60
	.byte		N32   , Gs2 
	.byte	W12
	.byte	PEND
/* 012   ----------------------------------------
 */	.byte	W24
	.byte		        Ds2 
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		N32   
	.byte	W12
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_3_005
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_3_006
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_3_007
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_3_008
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_3_009
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_3_010
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_3_011
/* 020   ----------------------------------------
 */	.byte	W24
	.byte		N23   , Ds2 , v127
	.byte	W24
	.byte		N11   , Gs1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N32   , Bn1 
	.byte	W12
/* 021   ----------------------------------------
 */mus_boss_knuckles_3_021:
	.byte	W24
	.byte		N56   , Fs2 , v127
	.byte	W60
	.byte		N32   , As1 
	.byte	W12
	.byte	PEND
/* 022   ----------------------------------------
 */mus_boss_knuckles_3_022:
	.byte	W24
	.byte		N32   , Fn2 , v127
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N32   , Bn1 
	.byte	W12
	.byte	PEND
/* 023   ----------------------------------------
 */mus_boss_knuckles_3_023:
	.byte	W24
	.byte		N56   , Fs2 , v127
	.byte	W60
	.byte		N32   , Cn2 
	.byte	W12
	.byte	PEND
/* 024   ----------------------------------------
 */mus_boss_knuckles_3_024:
	.byte	W24
	.byte		N32   , Gn2 , v127
	.byte	W36
	.byte		N11   , Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N32   , Bn1 
	.byte	W12
	.byte	PEND
/* 025   ----------------------------------------
 */mus_boss_knuckles_3_025:
	.byte	W24
	.byte		N56   , Fs2 , v127
	.byte	W60
	.byte		N32   , Fn2 
	.byte	W12
	.byte	PEND
/* 026   ----------------------------------------
 */mus_boss_knuckles_3_026:
	.byte	W24
	.byte		N32   , As1 , v127
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N32   , Bn1 
	.byte	W12
	.byte	PEND
/* 027   ----------------------------------------
 */mus_boss_knuckles_3_027:
	.byte	W24
	.byte		N56   , Fs2 , v127
	.byte	W60
	.byte		N32   , Bn2 
	.byte	W12
	.byte	PEND
/* 028   ----------------------------------------
 */	.byte	W24
	.byte		        Fs2 
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N32   , Bn1 
	.byte	W12
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_3_021
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_3_022
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_3_023
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_3_024
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_3_025
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_3_026
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_3_027
/* 036   ----------------------------------------
 */	.byte	W24
	.byte		N32   , Fs2 , v127
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N16   , Gn2 
	.byte	W12
/* 037   ----------------------------------------
 */	.byte	W24
	.byte		N22   , Gn1 
	.byte	W72
/* 038   ----------------------------------------
 */	.byte	W84
	.byte		N18   , Gn2 
	.byte	W12
/* 039   ----------------------------------------
 */	.byte	W24
	.byte		N22   , Gn1 
	.byte	W72
/* 040   ----------------------------------------
 */	.byte	W84
	.byte		N18   , Cs2 
	.byte	W12
/* 041   ----------------------------------------
 */	.byte	W24
	.byte		N19   , Cs1 
	.byte	W72
/* 042   ----------------------------------------
 */	.byte	W84
	.byte		N18   , Cs2 
	.byte	W12
/* 043   ----------------------------------------
 */	.byte	W24
	.byte		N17   , Cs1 
	.byte	W72
/* 044   ----------------------------------------
 */	.byte	W12
	.byte		N44   , Ds2 
	.byte	W48
	.byte		N23   , Ds1 
	.byte	W24
	.byte	GOTO
	 mPtr	mus_boss_knuckles_3_B1
mus_boss_knuckles_3_B2:
	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_boss_knuckles_4:
	.byte	KEYSH , mus_boss_knuckles_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 100
	.byte		VOL   , 127*mus_boss_knuckles_mvl/mxv
	.byte		BENDR , 8
	.byte	W84
mus_boss_knuckles_4_B1:
	.byte	W12
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W84
	.byte		VOL   , 104*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        103*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte		N06   , En3 , v116
	.byte	W01
	.byte		VOL   , 97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_knuckles_mvl/mxv
	.byte	W01
/* 005   ----------------------------------------
 */mus_boss_knuckles_4_005:
	.byte		VOL   , 93*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        88*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte		N06   , En3 , v116
	.byte	W01
	.byte		VOL   , 80*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        78*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        58*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        28*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        24*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        21*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        18*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        16*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        13*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        11*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        12*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        13*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        16*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_knuckles_mvl/mxv
	.byte		N06   , Ds3 
	.byte	W01
	.byte		VOL   , 21*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        24*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte	PEND
/* 006   ----------------------------------------
 */mus_boss_knuckles_4_006:
	.byte		VOL   , 26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte		N06   , Ds3 , v116
	.byte	W01
	.byte		VOL   , 41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        80*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 81*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        93*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        103*mus_boss_knuckles_mvl/mxv
	.byte	W15
	.byte		        104*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        103*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte		N06   , En3 
	.byte	W01
	.byte		VOL   , 97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte	PEND
/* 007   ----------------------------------------
 */mus_boss_knuckles_4_007:
	.byte		VOL   , 93*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        88*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte		N06   , En3 , v116
	.byte	W01
	.byte		VOL   , 80*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        78*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        58*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        28*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        24*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        21*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        18*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        16*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        13*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        11*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        12*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        13*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        16*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_knuckles_mvl/mxv
	.byte		N06   , Fn3 
	.byte	W01
	.byte		VOL   , 21*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        24*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte	PEND
/* 008   ----------------------------------------
 */mus_boss_knuckles_4_008:
	.byte		VOL   , 26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte		N06   , Fn3 , v116
	.byte	W01
	.byte		VOL   , 41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        80*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 81*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        93*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        103*mus_boss_knuckles_mvl/mxv
	.byte	W15
	.byte		        104*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        103*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte		N06   , En3 
	.byte	W01
	.byte		VOL   , 97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte	PEND
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_4_005
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_4_006
/* 011   ----------------------------------------
 */mus_boss_knuckles_4_011:
	.byte		VOL   , 93*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        88*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte		N06   , En3 , v116
	.byte	W01
	.byte		VOL   , 80*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        78*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        58*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        28*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        24*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        21*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        18*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        16*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        13*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        11*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        12*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        13*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        16*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        21*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        24*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte	PEND
/* 012   ----------------------------------------
 */	.byte		        26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        80*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        93*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        103*mus_boss_knuckles_mvl/mxv
	.byte	W15
	.byte		        104*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        103*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_knuckles_mvl/mxv
	.byte	W01
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_4_005
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_4_006
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_4_007
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_4_008
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_4_005
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_4_006
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_4_011
/* 020   ----------------------------------------
 */mus_boss_knuckles_4_020:
	.byte		VOL   , 26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        80*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        93*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        103*mus_boss_knuckles_mvl/mxv
	.byte	W15
	.byte		        104*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        103*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte		N06   , Gn3 , v116
	.byte	W01
	.byte		VOL   , 97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte	PEND
/* 021   ----------------------------------------
 */mus_boss_knuckles_4_021:
	.byte		VOL   , 93*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        88*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte		N06   , Gn3 , v116
	.byte	W01
	.byte		VOL   , 80*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        78*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        58*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        28*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        24*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        21*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        18*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        16*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        13*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        11*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        12*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        13*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        16*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_knuckles_mvl/mxv
	.byte		N06   , Fs3 
	.byte	W01
	.byte		VOL   , 21*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        24*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte	PEND
/* 022   ----------------------------------------
 */mus_boss_knuckles_4_022:
	.byte		VOL   , 26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte		N06   , Fs3 , v116
	.byte	W01
	.byte		VOL   , 41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        80*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 81*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        93*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        103*mus_boss_knuckles_mvl/mxv
	.byte	W15
	.byte		        104*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        103*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte		N06   , Gn3 
	.byte	W01
	.byte		VOL   , 97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte	PEND
/* 023   ----------------------------------------
 */mus_boss_knuckles_4_023:
	.byte		VOL   , 93*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        88*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte		N06   , Gn3 , v116
	.byte	W01
	.byte		VOL   , 80*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        78*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        58*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        28*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        24*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        21*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        18*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        16*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        13*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        11*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        12*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        13*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        16*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_knuckles_mvl/mxv
	.byte		N06   , Gs3 
	.byte	W01
	.byte		VOL   , 21*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        24*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte	PEND
/* 024   ----------------------------------------
 */mus_boss_knuckles_4_024:
	.byte		VOL   , 26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte		N06   , Gs3 , v116
	.byte	W01
	.byte		VOL   , 41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        80*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 81*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        93*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        103*mus_boss_knuckles_mvl/mxv
	.byte	W15
	.byte		        104*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        103*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte		N06   , Gn3 
	.byte	W01
	.byte		VOL   , 97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte	PEND
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_4_021
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_4_022
/* 027   ----------------------------------------
 */mus_boss_knuckles_4_027:
	.byte		VOL   , 93*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        88*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte		N06   , Gn3 , v116
	.byte	W01
	.byte		VOL   , 80*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        78*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        58*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        28*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        24*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        21*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        18*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        16*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        13*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        11*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        12*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        13*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        16*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        21*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        24*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte	PEND
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_4_020
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_4_021
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_4_022
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_4_023
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_4_024
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_4_021
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_4_022
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_4_027
/* 036   ----------------------------------------
 */mus_boss_knuckles_4_036:
	.byte		VOL   , 26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        80*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        93*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        103*mus_boss_knuckles_mvl/mxv
	.byte	W15
	.byte		        104*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        103*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte	PEND
/* 037   ----------------------------------------
 */mus_boss_knuckles_4_037:
	.byte		VOL   , 93*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        88*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        80*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        78*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        58*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        28*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        24*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        21*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        18*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        16*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        13*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        11*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        12*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        13*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        16*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        21*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        24*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte	PEND
/* 038   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_4_036
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_4_037
/* 040   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_4_036
/* 041   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_4_037
/* 042   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_4_036
/* 043   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_4_037
/* 044   ----------------------------------------
 */	.byte		VOL   , 26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        80*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        93*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        103*mus_boss_knuckles_mvl/mxv
	.byte	W15
	.byte	GOTO
	 mPtr	mus_boss_knuckles_4_B1
mus_boss_knuckles_4_B2:
	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_boss_knuckles_5:
	.byte	KEYSH , mus_boss_knuckles_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 101
	.byte		VOL   , 127*mus_boss_knuckles_mvl/mxv
	.byte		BENDR , 8
	.byte	W84
mus_boss_knuckles_5_B1:
	.byte	W12
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W84
	.byte		VOL   , 104*mus_boss_knuckles_mvl/mxv
	.byte		N06   , En3 , v116
	.byte	W02
	.byte		VOL   , 103*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_knuckles_mvl/mxv
	.byte	W01
/* 005   ----------------------------------------
 */mus_boss_knuckles_5_005:
	.byte		VOL   , 93*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        88*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte		N06   , En3 , v116
	.byte	W01
	.byte		VOL   , 86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        80*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        78*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        58*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        28*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        24*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        21*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        18*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        16*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        13*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        11*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        12*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        13*mus_boss_knuckles_mvl/mxv
	.byte		N06   , Ds3 
	.byte	W01
	.byte		VOL   , 14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        16*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        21*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        24*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte	PEND
/* 006   ----------------------------------------
 */mus_boss_knuckles_5_006:
	.byte		VOL   , 26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte		N06   , Ds3 , v116
	.byte	W01
	.byte		VOL   , 34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        80*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        93*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 94*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        103*mus_boss_knuckles_mvl/mxv
	.byte	W15
	.byte		        104*mus_boss_knuckles_mvl/mxv
	.byte		N06   , En3 
	.byte	W02
	.byte		VOL   , 103*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte	PEND
/* 007   ----------------------------------------
 */mus_boss_knuckles_5_007:
	.byte		VOL   , 93*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        88*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte		N06   , En3 , v116
	.byte	W01
	.byte		VOL   , 86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        80*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        78*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        58*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        28*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        24*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        21*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        18*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        16*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        13*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        11*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        12*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        13*mus_boss_knuckles_mvl/mxv
	.byte		N06   , Fn3 
	.byte	W01
	.byte		VOL   , 14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        16*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        21*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        24*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte	PEND
/* 008   ----------------------------------------
 */mus_boss_knuckles_5_008:
	.byte		VOL   , 26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte		N06   , Fn3 , v116
	.byte	W01
	.byte		VOL   , 34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        80*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        93*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 94*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        103*mus_boss_knuckles_mvl/mxv
	.byte	W15
	.byte		        104*mus_boss_knuckles_mvl/mxv
	.byte		N06   , En3 
	.byte	W02
	.byte		VOL   , 103*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte	PEND
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_5_005
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_5_006
/* 011   ----------------------------------------
 */mus_boss_knuckles_5_011:
	.byte		VOL   , 93*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        88*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte		N06   , En3 , v116
	.byte	W01
	.byte		VOL   , 86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        80*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        78*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        58*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        28*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        24*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        21*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        18*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        16*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        13*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        11*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        12*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        13*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        16*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        21*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        24*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte	PEND
/* 012   ----------------------------------------
 */	.byte		        26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        80*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        93*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        103*mus_boss_knuckles_mvl/mxv
	.byte	W15
	.byte		        104*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W02
	.byte		VOL   , 103*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_knuckles_mvl/mxv
	.byte	W01
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_5_005
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_5_006
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_5_007
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_5_008
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_5_005
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_5_006
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_5_011
/* 020   ----------------------------------------
 */mus_boss_knuckles_5_020:
	.byte		VOL   , 26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        80*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        93*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        103*mus_boss_knuckles_mvl/mxv
	.byte	W15
	.byte		        104*mus_boss_knuckles_mvl/mxv
	.byte		N06   , Gn3 , v116
	.byte	W02
	.byte		VOL   , 103*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte	PEND
/* 021   ----------------------------------------
 */mus_boss_knuckles_5_021:
	.byte		VOL   , 93*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        88*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte		N06   , Gn3 , v116
	.byte	W01
	.byte		VOL   , 86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        80*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        78*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        58*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        28*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        24*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        21*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        18*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        16*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        13*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        11*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        12*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        13*mus_boss_knuckles_mvl/mxv
	.byte		N06   , Fs3 
	.byte	W01
	.byte		VOL   , 14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        16*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        21*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        24*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte	PEND
/* 022   ----------------------------------------
 */mus_boss_knuckles_5_022:
	.byte		VOL   , 26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte		N06   , Fs3 , v116
	.byte	W01
	.byte		VOL   , 34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        80*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        93*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 94*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        103*mus_boss_knuckles_mvl/mxv
	.byte	W15
	.byte		        104*mus_boss_knuckles_mvl/mxv
	.byte		N06   , Gn3 
	.byte	W02
	.byte		VOL   , 103*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte	PEND
/* 023   ----------------------------------------
 */mus_boss_knuckles_5_023:
	.byte		VOL   , 93*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        88*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte		N06   , Gn3 , v116
	.byte	W01
	.byte		VOL   , 86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        80*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        78*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        58*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        28*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        24*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        21*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        18*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        16*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        13*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        11*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        12*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        13*mus_boss_knuckles_mvl/mxv
	.byte		N06   , Gs3 
	.byte	W01
	.byte		VOL   , 14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        16*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        21*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        24*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte	PEND
/* 024   ----------------------------------------
 */mus_boss_knuckles_5_024:
	.byte		VOL   , 26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte		N06   , Gs3 , v116
	.byte	W01
	.byte		VOL   , 34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        80*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        93*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 94*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        103*mus_boss_knuckles_mvl/mxv
	.byte	W15
	.byte		        104*mus_boss_knuckles_mvl/mxv
	.byte		N06   , Gn3 
	.byte	W02
	.byte		VOL   , 103*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte	PEND
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_5_021
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_5_022
/* 027   ----------------------------------------
 */mus_boss_knuckles_5_027:
	.byte		VOL   , 93*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        88*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte		N06   , Gn3 , v116
	.byte	W01
	.byte		VOL   , 86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        80*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        78*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        58*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte		N06   
	.byte	W01
	.byte		VOL   , 32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        28*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        24*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        21*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        18*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        16*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        13*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        11*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        12*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        13*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        16*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        21*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        24*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte	PEND
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_5_020
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_5_021
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_5_022
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_5_023
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_5_024
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_5_021
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_5_022
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_5_027
/* 036   ----------------------------------------
 */mus_boss_knuckles_5_036:
	.byte		VOL   , 26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        80*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        93*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        103*mus_boss_knuckles_mvl/mxv
	.byte	W15
	.byte		        104*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        103*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte	PEND
/* 037   ----------------------------------------
 */mus_boss_knuckles_5_037:
	.byte		VOL   , 93*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        88*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        80*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        78*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        58*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        28*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        24*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        21*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        18*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        16*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        13*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        11*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        12*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        13*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        16*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        21*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        24*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte	PEND
/* 038   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_5_036
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_5_037
/* 040   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_5_036
/* 041   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_5_037
/* 042   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_5_036
/* 043   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_5_037
/* 044   ----------------------------------------
 */	.byte		VOL   , 26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        80*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        93*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        103*mus_boss_knuckles_mvl/mxv
	.byte	W15
	.byte	GOTO
	 mPtr	mus_boss_knuckles_5_B1
mus_boss_knuckles_5_B2:
	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_boss_knuckles_6:
	.byte	KEYSH , mus_boss_knuckles_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 82
	.byte		VOL   , 80*mus_boss_knuckles_mvl/mxv
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		LFOS  , 32
	.byte	PRIO  , 40
	.byte	W84
mus_boss_knuckles_6_B1:
	.byte	W12
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W36
	.byte		MOD   , 1
	.byte	W01
	.byte		        4
	.byte	W02
	.byte		        8
	.byte	W01
	.byte		        12
	.byte	W01
	.byte		        14
	.byte	W03
	.byte		        9
	.byte	W01
	.byte		        4
	.byte	W01
	.byte		        0
	.byte	W36
	.byte	W02
	.byte		N68   , Ds3 , v092
	.byte	W12
/* 005   ----------------------------------------
 */	.byte	W14
	.byte		MOD   , 1
	.byte	W07
	.byte		        2
	.byte	W02
	.byte		        3
	.byte	W09
	.byte		        4
	.byte	W11
	.byte		        5
	.byte	W11
	.byte		        4
	.byte	W02
	.byte		        3
	.byte	W01
	.byte		        2
	.byte	W02
	.byte		        1
	.byte	W01
	.byte		        0
	.byte		N11   , Bn2 , v084
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N66   , Dn3 , v100
	.byte	W12
/* 006   ----------------------------------------
 */	.byte	W13
	.byte		MOD   , 1
	.byte	W08
	.byte		        2
	.byte	W03
	.byte		        3
	.byte	W04
	.byte		        4
	.byte	W07
	.byte		        5
	.byte	W07
	.byte		        6
	.byte	W13
	.byte		        5
	.byte	W02
	.byte		        4
	.byte	W01
	.byte		        2
	.byte	W01
	.byte		        0
	.byte	W01
	.byte		N23   , Dn3 , v116
	.byte	W24
	.byte		N68   , Ds3 , v100
	.byte	W12
/* 007   ----------------------------------------
 */	.byte	W06
	.byte		MOD   , 1
	.byte	W06
	.byte		        2
	.byte	W03
	.byte		        3
	.byte	W04
	.byte		        4
	.byte	W12
	.byte		        5
	.byte	W04
	.byte		        6
	.byte	W16
	.byte		        4
	.byte	W01
	.byte		        2
	.byte	W01
	.byte		        0
	.byte	W07
	.byte		N11   , Dn3 , v108
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N68   , En3 
	.byte	W12
/* 008   ----------------------------------------
 */	.byte	W11
	.byte		MOD   , 1
	.byte	W02
	.byte		        2
	.byte	W02
	.byte		        3
	.byte	W08
	.byte		        4
	.byte	W04
	.byte		        5
	.byte	W10
	.byte		        6
	.byte	W05
	.byte		        7
	.byte	W08
	.byte		        5
	.byte	W01
	.byte		        3
	.byte	W01
	.byte		        0
	.byte	W08
	.byte		N23   , En3 , v124
	.byte	W24
	.byte		N66   , Ds3 , v108
	.byte	W12
/* 009   ----------------------------------------
 */	.byte	W14
	.byte		MOD   , 1
	.byte	W03
	.byte		        2
	.byte	W03
	.byte		        3
	.byte	W02
	.byte		        4
	.byte	W07
	.byte		        5
	.byte	W07
	.byte		        6
	.byte	W09
	.byte		        7
	.byte	W12
	.byte		        5
	.byte	W01
	.byte		        3
	.byte	W01
	.byte		        0
	.byte	W01
	.byte		N11   , Bn2 , v096
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N64   , Dn3 , v104
	.byte	W12
/* 010   ----------------------------------------
 */	.byte	W04
	.byte		MOD   , 1
	.byte	W03
	.byte		        2
	.byte	W04
	.byte		        3
	.byte	W05
	.byte		        4
	.byte	W06
	.byte		        5
	.byte	W08
	.byte		        6
	.byte	W05
	.byte		        7
	.byte	W16
	.byte		        5
	.byte	W01
	.byte		        0
	.byte	W08
	.byte		N23   
	.byte	W24
	.byte		TIE   , Ds3 , v084
	.byte	W12
/* 011   ----------------------------------------
 */mus_boss_knuckles_6_011:
	.byte	W08
	.byte		MOD   , 1
	.byte	W24
	.byte	W03
	.byte		        2
	.byte	W06
	.byte		        3
	.byte	W19
	.byte		        4
	.byte	W14
	.byte		        5
	.byte	W08
	.byte		        6
	.byte	W14
	.byte	PEND
/* 012   ----------------------------------------
 */mus_boss_knuckles_6_012:
	.byte	W01
	.byte		MOD   , 7
	.byte	W10
	.byte		        8
	.byte	W32
	.byte	W02
	.byte		        7
	.byte	W01
	.byte		        6
	.byte	W02
	.byte		        5
	.byte	W02
	.byte		        4
	.byte	W03
	.byte		        3
	.byte	W01
	.byte		        2
	.byte	W03
	.byte		        0
	.byte	W15
	.byte	PEND
	.byte		EOT   , Ds3 
	.byte	W12
	.byte		N56   , Ds3 , v112
	.byte	W12
/* 013   ----------------------------------------
 */	.byte	W22
	.byte		MOD   , 1
	.byte	W04
	.byte		        2
	.byte	W02
	.byte		        4
	.byte	W03
	.byte		        5
	.byte	W14
	.byte		        6
	.byte	W03
	.byte		N11   , Gs2 , v084
	.byte	W03
	.byte		MOD   , 7
	.byte	W09
	.byte		        8
	.byte		N11   , Bn2 
	.byte	W07
	.byte		MOD   , 7
	.byte	W01
	.byte		        5
	.byte	W01
	.byte		        3
	.byte	W02
	.byte		        0
	.byte	W01
	.byte		N11   , Ds3 , v104
	.byte	W12
	.byte		N64   , Dn3 , v108
	.byte	W12
/* 014   ----------------------------------------
 */	.byte	W14
	.byte		MOD   , 1
	.byte	W02
	.byte		        3
	.byte	W01
	.byte		        4
	.byte	W04
	.byte		        5
	.byte	W03
	.byte		        6
	.byte	W03
	.byte		        7
	.byte	W08
	.byte		        8
	.byte	W04
	.byte		        9
	.byte	W04
	.byte		        10
	.byte	W02
	.byte		        11
	.byte	W05
	.byte		        12
	.byte	W07
	.byte		        9
	.byte	W01
	.byte		        6
	.byte	W01
	.byte		        3
	.byte	W01
	.byte		N23   , Dn3 , v116
	.byte	W01
	.byte		MOD   , 0
	.byte	W23
	.byte		N68   , Ds3 , v108
	.byte	W12
/* 015   ----------------------------------------
 */	.byte	W02
	.byte		MOD   , 1
	.byte	W02
	.byte		        2
	.byte	W02
	.byte		        3
	.byte	W02
	.byte		        4
	.byte	W07
	.byte		        6
	.byte	W04
	.byte		        7
	.byte	W02
	.byte		        8
	.byte	W04
	.byte		        9
	.byte	W06
	.byte		        10
	.byte	W02
	.byte		        11
	.byte	W03
	.byte		        12
	.byte	W09
	.byte		        9
	.byte	W02
	.byte		        7
	.byte	W01
	.byte		        5
	.byte	W01
	.byte		        2
	.byte	W01
	.byte		        0
	.byte	W10
	.byte		N11   , Dn3 , v104
	.byte	W12
	.byte		        Ds3 , v100
	.byte	W12
	.byte		N32   , Fs3 , v112
	.byte	W12
/* 016   ----------------------------------------
 */	.byte	W06
	.byte		MOD   , 1
	.byte	W01
	.byte		        2
	.byte	W02
	.byte		        3
	.byte	W01
	.byte		        4
	.byte	W03
	.byte		        5
	.byte	W02
	.byte		        7
	.byte	W03
	.byte		        8
	.byte	W03
	.byte		        9
	.byte	W03
	.byte		N32   , Fn3 , v104
	.byte	W07
	.byte		MOD   , 6
	.byte	W01
	.byte		        3
	.byte	W02
	.byte		        0
	.byte	W24
	.byte	W02
	.byte		N23   , En3 
	.byte	W24
	.byte		N56   , Ds3 
	.byte	W12
/* 017   ----------------------------------------
 */	.byte	W10
	.byte		MOD   , 2
	.byte	W02
	.byte		        3
	.byte	W01
	.byte		        4
	.byte	W03
	.byte		        5
	.byte	W05
	.byte		        7
	.byte	W04
	.byte		        8
	.byte	W05
	.byte		        9
	.byte	W03
	.byte		        10
	.byte	W04
	.byte		        11
	.byte	W03
	.byte		        12
	.byte	W08
	.byte		N11   , Gs2 , v068
	.byte	W03
	.byte		MOD   , 10
	.byte	W02
	.byte		        6
	.byte	W01
	.byte		        3
	.byte	W01
	.byte		        0
	.byte	W05
	.byte		N11   , Bn2 , v080
	.byte	W12
	.byte		        Ds3 , v108
	.byte	W12
	.byte		N66   , Dn3 , v100
	.byte	W12
/* 018   ----------------------------------------
 */	.byte	W03
	.byte		MOD   , 1
	.byte	W04
	.byte		        2
	.byte	W03
	.byte		        4
	.byte	W02
	.byte		        5
	.byte	W03
	.byte		        6
	.byte	W01
	.byte		        7
	.byte	W05
	.byte		        8
	.byte	W04
	.byte		        9
	.byte	W04
	.byte		        10
	.byte	W03
	.byte		        11
	.byte	W15
	.byte		        12
	.byte	W02
	.byte		        9
	.byte	W02
	.byte		        6
	.byte	W01
	.byte		        3
	.byte	W01
	.byte		        0
	.byte	W07
	.byte		N23   , Dn3 , v112
	.byte	W24
	.byte		TIE   , Ds3 , v096
	.byte	W12
/* 019   ----------------------------------------
 */mus_boss_knuckles_6_019:
	.byte	W24
	.byte	W01
	.byte		MOD   , 1
	.byte	W04
	.byte		        2
	.byte	W04
	.byte		        3
	.byte	W09
	.byte		        4
	.byte	W05
	.byte		        5
	.byte	W08
	.byte		        6
	.byte	W07
	.byte		        7
	.byte	W14
	.byte		        8
	.byte	W13
	.byte		        9
	.byte	W07
	.byte	PEND
/* 020   ----------------------------------------
 */mus_boss_knuckles_6_020:
	.byte	W54
	.byte		MOD   , 8
	.byte	W03
	.byte		        7
	.byte	W01
	.byte		        4
	.byte	W01
	.byte	PEND
	.byte		EOT   , Ds3 
	.byte		MOD   , 0
	.byte	W24
	.byte	W01
	.byte		N68   , Fs3 , v092
	.byte	W12
/* 021   ----------------------------------------
 */	.byte	W14
	.byte		MOD   , 1
	.byte	W07
	.byte		        2
	.byte	W02
	.byte		        3
	.byte	W09
	.byte		        4
	.byte	W11
	.byte		        5
	.byte	W11
	.byte		        4
	.byte	W02
	.byte		        3
	.byte	W01
	.byte		        2
	.byte	W02
	.byte		        1
	.byte	W01
	.byte		        0
	.byte		N11   , Dn3 , v084
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N66   , Fn3 , v100
	.byte	W12
/* 022   ----------------------------------------
 */	.byte	W13
	.byte		MOD   , 1
	.byte	W08
	.byte		        2
	.byte	W03
	.byte		        3
	.byte	W04
	.byte		        4
	.byte	W07
	.byte		        5
	.byte	W07
	.byte		        6
	.byte	W13
	.byte		        5
	.byte	W02
	.byte		        4
	.byte	W01
	.byte		        2
	.byte	W01
	.byte		        0
	.byte	W01
	.byte		N23   , Fn3 , v116
	.byte	W24
	.byte		N68   , Fs3 , v100
	.byte	W12
/* 023   ----------------------------------------
 */	.byte	W06
	.byte		MOD   , 1
	.byte	W06
	.byte		        2
	.byte	W03
	.byte		        3
	.byte	W04
	.byte		        4
	.byte	W12
	.byte		        5
	.byte	W04
	.byte		        6
	.byte	W16
	.byte		        4
	.byte	W01
	.byte		        2
	.byte	W01
	.byte		        0
	.byte	W07
	.byte		N11   , Fn3 , v108
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N68   , Gn3 
	.byte	W12
/* 024   ----------------------------------------
 */	.byte	W11
	.byte		MOD   , 1
	.byte	W02
	.byte		        2
	.byte	W02
	.byte		        3
	.byte	W08
	.byte		        4
	.byte	W04
	.byte		        5
	.byte	W10
	.byte		        6
	.byte	W05
	.byte		        7
	.byte	W08
	.byte		        5
	.byte	W01
	.byte		        3
	.byte	W01
	.byte		        0
	.byte	W08
	.byte		N23   , Gn3 , v124
	.byte	W24
	.byte		N66   , Fs3 , v108
	.byte	W12
/* 025   ----------------------------------------
 */	.byte	W14
	.byte		MOD   , 1
	.byte	W03
	.byte		        2
	.byte	W03
	.byte		        3
	.byte	W02
	.byte		        4
	.byte	W07
	.byte		        5
	.byte	W07
	.byte		        6
	.byte	W09
	.byte		        7
	.byte	W12
	.byte		        5
	.byte	W01
	.byte		        3
	.byte	W01
	.byte		        0
	.byte	W01
	.byte		N11   , Dn3 , v096
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N64   , Fn3 , v104
	.byte	W12
/* 026   ----------------------------------------
 */	.byte	W04
	.byte		MOD   , 1
	.byte	W03
	.byte		        2
	.byte	W04
	.byte		        3
	.byte	W05
	.byte		        4
	.byte	W06
	.byte		        5
	.byte	W08
	.byte		        6
	.byte	W05
	.byte		        7
	.byte	W16
	.byte		        5
	.byte	W01
	.byte		        0
	.byte	W08
	.byte		N23   
	.byte	W24
	.byte		TIE   , Fs3 , v084
	.byte	W12
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_6_011
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_6_012
	.byte		EOT   , Fs3 
	.byte	W12
	.byte		N56   , Fs3 , v112
	.byte	W12
/* 029   ----------------------------------------
 */	.byte	W22
	.byte		MOD   , 1
	.byte	W04
	.byte		        2
	.byte	W02
	.byte		        4
	.byte	W03
	.byte		        5
	.byte	W14
	.byte		        6
	.byte	W03
	.byte		N11   , Bn2 , v084
	.byte	W03
	.byte		MOD   , 7
	.byte	W09
	.byte		        8
	.byte		N11   , Dn3 
	.byte	W07
	.byte		MOD   , 7
	.byte	W01
	.byte		        5
	.byte	W01
	.byte		        3
	.byte	W02
	.byte		        0
	.byte	W01
	.byte		N11   , Fs3 , v104
	.byte	W12
	.byte		N64   , Fn3 , v108
	.byte	W12
/* 030   ----------------------------------------
 */	.byte	W14
	.byte		MOD   , 1
	.byte	W02
	.byte		        3
	.byte	W01
	.byte		        4
	.byte	W04
	.byte		        5
	.byte	W03
	.byte		        6
	.byte	W03
	.byte		        7
	.byte	W08
	.byte		        8
	.byte	W04
	.byte		        9
	.byte	W04
	.byte		        10
	.byte	W02
	.byte		        11
	.byte	W05
	.byte		        12
	.byte	W07
	.byte		        9
	.byte	W01
	.byte		        6
	.byte	W01
	.byte		        3
	.byte	W01
	.byte		N23   , Fn3 , v116
	.byte	W01
	.byte		MOD   , 0
	.byte	W23
	.byte		N68   , Fs3 , v108
	.byte	W12
/* 031   ----------------------------------------
 */	.byte	W02
	.byte		MOD   , 1
	.byte	W02
	.byte		        2
	.byte	W02
	.byte		        3
	.byte	W02
	.byte		        4
	.byte	W07
	.byte		        6
	.byte	W04
	.byte		        7
	.byte	W02
	.byte		        8
	.byte	W04
	.byte		        9
	.byte	W06
	.byte		        10
	.byte	W02
	.byte		        11
	.byte	W03
	.byte		        12
	.byte	W09
	.byte		        9
	.byte	W02
	.byte		        7
	.byte	W01
	.byte		        5
	.byte	W01
	.byte		        2
	.byte	W01
	.byte		        0
	.byte	W10
	.byte		N11   , Fn3 , v104
	.byte	W12
	.byte		        Fs3 , v100
	.byte	W12
	.byte		N32   , An3 , v112
	.byte	W12
/* 032   ----------------------------------------
 */	.byte	W06
	.byte		MOD   , 1
	.byte	W01
	.byte		        2
	.byte	W02
	.byte		        3
	.byte	W01
	.byte		        4
	.byte	W03
	.byte		        5
	.byte	W02
	.byte		        7
	.byte	W03
	.byte		        8
	.byte	W03
	.byte		        9
	.byte	W03
	.byte		N32   , Gs3 , v104
	.byte	W07
	.byte		MOD   , 6
	.byte	W01
	.byte		        3
	.byte	W02
	.byte		        0
	.byte	W24
	.byte	W02
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N56   , Fs3 
	.byte	W12
/* 033   ----------------------------------------
 */	.byte	W10
	.byte		MOD   , 2
	.byte	W02
	.byte		        3
	.byte	W01
	.byte		        4
	.byte	W03
	.byte		        5
	.byte	W05
	.byte		        7
	.byte	W04
	.byte		        8
	.byte	W05
	.byte		        9
	.byte	W03
	.byte		        10
	.byte	W04
	.byte		        11
	.byte	W03
	.byte		        12
	.byte	W08
	.byte		N11   , Bn2 , v068
	.byte	W03
	.byte		MOD   , 10
	.byte	W02
	.byte		        6
	.byte	W01
	.byte		        3
	.byte	W01
	.byte		        0
	.byte	W05
	.byte		N11   , Dn3 , v080
	.byte	W12
	.byte		        Fs3 , v108
	.byte	W12
	.byte		N66   , Fn3 , v100
	.byte	W12
/* 034   ----------------------------------------
 */	.byte	W03
	.byte		MOD   , 1
	.byte	W04
	.byte		        2
	.byte	W03
	.byte		        4
	.byte	W02
	.byte		        5
	.byte	W03
	.byte		        6
	.byte	W01
	.byte		        7
	.byte	W05
	.byte		        8
	.byte	W04
	.byte		        9
	.byte	W04
	.byte		        10
	.byte	W03
	.byte		        11
	.byte	W15
	.byte		        12
	.byte	W02
	.byte		        9
	.byte	W02
	.byte		        6
	.byte	W01
	.byte		        3
	.byte	W01
	.byte		        0
	.byte	W07
	.byte		N23   , Fn3 , v112
	.byte	W24
	.byte		TIE   , Fs3 , v096
	.byte	W12
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_6_019
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_6_020
	.byte		EOT   , Fs3 
	.byte		MOD   , 0
	.byte	W36
	.byte	W01
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
/* 044   ----------------------------------------
 */	.byte	W84
	.byte	GOTO
	 mPtr	mus_boss_knuckles_6_B1
mus_boss_knuckles_6_B2:
	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_boss_knuckles_7:
	.byte	KEYSH , mus_boss_knuckles_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 2
	.byte		VOL   , 59*mus_boss_knuckles_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W12
	.byte		N03   , Ds2 , v040
	.byte	W03
	.byte		        Fn2 , v044
	.byte	W03
	.byte		        Gn2 , v048
	.byte	W03
	.byte		        As2 
	.byte	W03
	.byte		        Ds3 , v052
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Gn3 , v056
	.byte	W03
	.byte		        Fn3 , v060
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Fn3 , v064
	.byte	W03
	.byte		        Gn3 , v068
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Ds4 , v072
	.byte	W03
	.byte		        Fn4 , v076
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Fn4 , v080
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Fn4 , v084
	.byte	W03
	.byte		        Gn4 , v088
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte		        Ds5 , v092
	.byte	W03
	.byte		        Fn5 , v096
	.byte	W03
	.byte		        Gn5 
	.byte	W03
	.byte		        As5 , v100
	.byte	W03
mus_boss_knuckles_7_B1:
	.byte		N03   , Gs5 , v092
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        Bn4 , v088
	.byte	W03
	.byte		        As4 
	.byte	W03
/* 001   ----------------------------------------
 */	.byte		        Gs4 
	.byte	W03
	.byte		        Ds4 , v084
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        As4 , v080
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Bn3 , v076
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Gs4 , v072
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        As3 , v068
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Ds3 , v064
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Gs3 , v060
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Bn2 , v056
	.byte	W03
	.byte		        As2 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Ds3 , v052
	.byte	W03
	.byte		        Bn2 
	.byte	W03
	.byte		        As2 , v048
	.byte	W03
	.byte		        Gs2 
	.byte	W03
	.byte		        Ds2 
	.byte	W03
	.byte		        Bn2 , v044
	.byte	W03
	.byte		        As2 
	.byte	W03
	.byte		        Gs2 , v040
	.byte	W03
	.byte		        Ds2 
	.byte	W03
	.byte		        Bn1 
	.byte	W03
	.byte		        As1 , v036
	.byte	W03
/* 002   ----------------------------------------
 */	.byte		        Gs1 
	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W84
	.byte		N68   , Gs3 , v092
	.byte	W12
/* 005   ----------------------------------------
 */	.byte	W14
	.byte		MOD   , 1
	.byte	W07
	.byte		        2
	.byte	W02
	.byte		        3
	.byte	W09
	.byte		        4
	.byte	W11
	.byte		        5
	.byte	W11
	.byte		        4
	.byte	W02
	.byte		        3
	.byte	W01
	.byte		        2
	.byte	W02
	.byte		        1
	.byte	W01
	.byte		        0
	.byte		N11   , Ds3 , v084
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N66   , Gn3 , v100
	.byte	W12
/* 006   ----------------------------------------
 */	.byte	W13
	.byte		MOD   , 1
	.byte	W08
	.byte		        2
	.byte	W03
	.byte		        3
	.byte	W04
	.byte		        4
	.byte	W07
	.byte		        5
	.byte	W07
	.byte		        6
	.byte	W13
	.byte		        5
	.byte	W02
	.byte		        4
	.byte	W01
	.byte		        2
	.byte	W01
	.byte		        0
	.byte	W01
	.byte		N23   , Gn3 , v116
	.byte	W24
	.byte		N68   , Gs3 , v100
	.byte	W12
/* 007   ----------------------------------------
 */	.byte	W06
	.byte		MOD   , 1
	.byte	W06
	.byte		        2
	.byte	W03
	.byte		        3
	.byte	W04
	.byte		        4
	.byte	W12
	.byte		        5
	.byte	W04
	.byte		        6
	.byte	W16
	.byte		        4
	.byte	W01
	.byte		        2
	.byte	W01
	.byte		        0
	.byte	W07
	.byte		N11   , Gn3 , v108
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N68   , An3 
	.byte	W12
/* 008   ----------------------------------------
 */	.byte	W11
	.byte		MOD   , 1
	.byte	W02
	.byte		        2
	.byte	W02
	.byte		        3
	.byte	W08
	.byte		        4
	.byte	W04
	.byte		        5
	.byte	W10
	.byte		        6
	.byte	W05
	.byte		        7
	.byte	W08
	.byte		        5
	.byte	W01
	.byte		        3
	.byte	W01
	.byte		        0
	.byte	W08
	.byte		N23   , An3 , v124
	.byte	W24
	.byte		N66   , Gs3 , v108
	.byte	W12
/* 009   ----------------------------------------
 */	.byte	W14
	.byte		MOD   , 1
	.byte	W03
	.byte		        2
	.byte	W03
	.byte		        3
	.byte	W02
	.byte		        4
	.byte	W07
	.byte		        5
	.byte	W07
	.byte		        6
	.byte	W09
	.byte		        7
	.byte	W12
	.byte		        5
	.byte	W01
	.byte		        3
	.byte	W01
	.byte		        0
	.byte	W01
	.byte		N11   , Ds3 , v096
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N64   , Gn3 , v104
	.byte	W12
/* 010   ----------------------------------------
 */	.byte	W04
	.byte		MOD   , 1
	.byte	W03
	.byte		        2
	.byte	W04
	.byte		        3
	.byte	W05
	.byte		        4
	.byte	W06
	.byte		        5
	.byte	W08
	.byte		        6
	.byte	W05
	.byte		        7
	.byte	W16
	.byte		        5
	.byte	W01
	.byte		        0
	.byte	W08
	.byte		N23   
	.byte	W24
	.byte		TIE   , Gs3 , v084
	.byte	W12
/* 011   ----------------------------------------
 */mus_boss_knuckles_7_011:
	.byte	W08
	.byte		MOD   , 1
	.byte	W24
	.byte	W03
	.byte		        2
	.byte	W06
	.byte		        3
	.byte	W19
	.byte		        4
	.byte	W14
	.byte		        5
	.byte	W08
	.byte		        6
	.byte	W14
	.byte	PEND
/* 012   ----------------------------------------
 */mus_boss_knuckles_7_012:
	.byte	W01
	.byte		MOD   , 7
	.byte	W10
	.byte		        8
	.byte	W32
	.byte	W02
	.byte		        7
	.byte	W01
	.byte		        6
	.byte	W02
	.byte		        5
	.byte	W02
	.byte		        4
	.byte	W03
	.byte		        3
	.byte	W01
	.byte		        2
	.byte	W03
	.byte		        0
	.byte	W15
	.byte	PEND
	.byte		EOT   , Gs3 
	.byte	W12
	.byte		N56   , Gs3 , v112
	.byte	W12
/* 013   ----------------------------------------
 */	.byte	W22
	.byte		MOD   , 1
	.byte	W04
	.byte		        2
	.byte	W02
	.byte		        4
	.byte	W03
	.byte		        5
	.byte	W14
	.byte		        6
	.byte	W03
	.byte		N11   , Bn2 , v084
	.byte	W03
	.byte		MOD   , 7
	.byte	W09
	.byte		        8
	.byte		N11   , Ds3 
	.byte	W07
	.byte		MOD   , 7
	.byte	W01
	.byte		        5
	.byte	W01
	.byte		        3
	.byte	W02
	.byte		        0
	.byte	W01
	.byte		N11   , Gs3 , v104
	.byte	W12
	.byte		N64   , Gn3 , v108
	.byte	W12
/* 014   ----------------------------------------
 */	.byte	W14
	.byte		MOD   , 1
	.byte	W02
	.byte		        3
	.byte	W01
	.byte		        4
	.byte	W04
	.byte		        5
	.byte	W03
	.byte		        6
	.byte	W03
	.byte		        7
	.byte	W08
	.byte		        8
	.byte	W04
	.byte		        9
	.byte	W04
	.byte		        10
	.byte	W02
	.byte		        11
	.byte	W05
	.byte		        12
	.byte	W07
	.byte		        9
	.byte	W01
	.byte		        6
	.byte	W01
	.byte		        3
	.byte	W01
	.byte		N23   , Gn3 , v116
	.byte	W01
	.byte		MOD   , 0
	.byte	W23
	.byte		N68   , Gs3 , v108
	.byte	W12
/* 015   ----------------------------------------
 */	.byte	W02
	.byte		MOD   , 1
	.byte	W02
	.byte		        2
	.byte	W02
	.byte		        3
	.byte	W02
	.byte		        4
	.byte	W07
	.byte		        6
	.byte	W04
	.byte		        7
	.byte	W02
	.byte		        8
	.byte	W04
	.byte		        9
	.byte	W06
	.byte		        10
	.byte	W02
	.byte		        11
	.byte	W03
	.byte		        12
	.byte	W09
	.byte		        9
	.byte	W02
	.byte		        7
	.byte	W01
	.byte		        5
	.byte	W01
	.byte		        2
	.byte	W01
	.byte		        0
	.byte	W10
	.byte		N11   , Gn3 , v104
	.byte	W12
	.byte		        Gs3 , v100
	.byte	W12
	.byte		N32   , Bn3 , v112
	.byte	W12
/* 016   ----------------------------------------
 */	.byte	W06
	.byte		MOD   , 1
	.byte	W01
	.byte		        2
	.byte	W02
	.byte		        3
	.byte	W01
	.byte		        4
	.byte	W03
	.byte		        5
	.byte	W02
	.byte		        7
	.byte	W03
	.byte		        8
	.byte	W03
	.byte		        9
	.byte	W03
	.byte		N32   , As3 , v104
	.byte	W07
	.byte		MOD   , 6
	.byte	W01
	.byte		        3
	.byte	W02
	.byte		        0
	.byte	W24
	.byte	W02
	.byte		N23   , An3 
	.byte	W24
	.byte		N56   , Gs3 
	.byte	W12
/* 017   ----------------------------------------
 */	.byte	W10
	.byte		MOD   , 2
	.byte	W02
	.byte		        3
	.byte	W01
	.byte		        4
	.byte	W03
	.byte		        5
	.byte	W05
	.byte		        7
	.byte	W04
	.byte		        8
	.byte	W05
	.byte		        9
	.byte	W03
	.byte		        10
	.byte	W04
	.byte		        11
	.byte	W03
	.byte		        12
	.byte	W08
	.byte		N11   , Bn2 , v068
	.byte	W03
	.byte		MOD   , 10
	.byte	W02
	.byte		        6
	.byte	W01
	.byte		        3
	.byte	W01
	.byte		        0
	.byte	W05
	.byte		N11   , Ds3 , v080
	.byte	W12
	.byte		        Gs3 , v108
	.byte	W12
	.byte		N66   , Gn3 , v100
	.byte	W12
/* 018   ----------------------------------------
 */	.byte	W03
	.byte		MOD   , 1
	.byte	W04
	.byte		        2
	.byte	W03
	.byte		        4
	.byte	W02
	.byte		        5
	.byte	W03
	.byte		        6
	.byte	W01
	.byte		        7
	.byte	W05
	.byte		        8
	.byte	W04
	.byte		        9
	.byte	W04
	.byte		        10
	.byte	W03
	.byte		        11
	.byte	W15
	.byte		        12
	.byte	W02
	.byte		        9
	.byte	W02
	.byte		        6
	.byte	W01
	.byte		        3
	.byte	W01
	.byte		        0
	.byte	W07
	.byte		N23   , Gn3 , v112
	.byte	W24
	.byte		TIE   , Gs3 , v096
	.byte	W12
/* 019   ----------------------------------------
 */mus_boss_knuckles_7_019:
	.byte	W24
	.byte	W01
	.byte		MOD   , 1
	.byte	W04
	.byte		        2
	.byte	W04
	.byte		        3
	.byte	W09
	.byte		        4
	.byte	W05
	.byte		        5
	.byte	W08
	.byte		        6
	.byte	W07
	.byte		        7
	.byte	W14
	.byte		        8
	.byte	W13
	.byte		        9
	.byte	W07
	.byte	PEND
/* 020   ----------------------------------------
 */mus_boss_knuckles_7_020:
	.byte	W54
	.byte		MOD   , 8
	.byte	W03
	.byte		        7
	.byte	W01
	.byte		        4
	.byte	W01
	.byte	PEND
	.byte		EOT   , Gs3 
	.byte		MOD   , 0
	.byte	W24
	.byte	W01
	.byte		N68   , Bn3 , v092
	.byte	W12
/* 021   ----------------------------------------
 */	.byte	W14
	.byte		MOD   , 1
	.byte	W07
	.byte		        2
	.byte	W02
	.byte		        3
	.byte	W09
	.byte		        4
	.byte	W11
	.byte		        5
	.byte	W11
	.byte		        4
	.byte	W02
	.byte		        3
	.byte	W01
	.byte		        2
	.byte	W02
	.byte		        1
	.byte	W01
	.byte		        0
	.byte		N11   , Fs3 , v084
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N66   , As3 , v100
	.byte	W12
/* 022   ----------------------------------------
 */	.byte	W13
	.byte		MOD   , 1
	.byte	W08
	.byte		        2
	.byte	W03
	.byte		        3
	.byte	W04
	.byte		        4
	.byte	W07
	.byte		        5
	.byte	W07
	.byte		        6
	.byte	W13
	.byte		        5
	.byte	W02
	.byte		        4
	.byte	W01
	.byte		        2
	.byte	W01
	.byte		        0
	.byte	W01
	.byte		N23   , As3 , v116
	.byte	W24
	.byte		N68   , Bn3 , v100
	.byte	W12
/* 023   ----------------------------------------
 */	.byte	W06
	.byte		MOD   , 1
	.byte	W06
	.byte		        2
	.byte	W03
	.byte		        3
	.byte	W04
	.byte		        4
	.byte	W12
	.byte		        5
	.byte	W04
	.byte		        6
	.byte	W16
	.byte		        4
	.byte	W01
	.byte		        2
	.byte	W01
	.byte		        0
	.byte	W07
	.byte		N11   , As3 , v108
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N68   , Cn4 
	.byte	W12
/* 024   ----------------------------------------
 */	.byte	W11
	.byte		MOD   , 1
	.byte	W02
	.byte		        2
	.byte	W02
	.byte		        3
	.byte	W08
	.byte		        4
	.byte	W04
	.byte		        5
	.byte	W10
	.byte		        6
	.byte	W05
	.byte		        7
	.byte	W08
	.byte		        5
	.byte	W01
	.byte		        3
	.byte	W01
	.byte		        0
	.byte	W08
	.byte		N23   , Cn4 , v124
	.byte	W24
	.byte		N66   , Bn3 , v108
	.byte	W12
/* 025   ----------------------------------------
 */	.byte	W14
	.byte		MOD   , 1
	.byte	W03
	.byte		        2
	.byte	W03
	.byte		        3
	.byte	W02
	.byte		        4
	.byte	W07
	.byte		        5
	.byte	W07
	.byte		        6
	.byte	W09
	.byte		        7
	.byte	W12
	.byte		        5
	.byte	W01
	.byte		        3
	.byte	W01
	.byte		        0
	.byte	W01
	.byte		N11   , Fs3 , v096
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N64   , As3 , v104
	.byte	W12
/* 026   ----------------------------------------
 */	.byte	W04
	.byte		MOD   , 1
	.byte	W03
	.byte		        2
	.byte	W04
	.byte		        3
	.byte	W05
	.byte		        4
	.byte	W06
	.byte		        5
	.byte	W08
	.byte		        6
	.byte	W05
	.byte		        7
	.byte	W16
	.byte		        5
	.byte	W01
	.byte		        0
	.byte	W08
	.byte		N23   
	.byte	W24
	.byte		TIE   , Bn3 , v084
	.byte	W12
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_7_011
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_7_012
	.byte		EOT   , Bn3 
	.byte	W12
	.byte		N56   , Bn3 , v112
	.byte	W12
/* 029   ----------------------------------------
 */	.byte	W22
	.byte		MOD   , 1
	.byte	W04
	.byte		        2
	.byte	W02
	.byte		        4
	.byte	W03
	.byte		        5
	.byte	W14
	.byte		        6
	.byte	W03
	.byte		N11   , Dn3 , v084
	.byte	W03
	.byte		MOD   , 7
	.byte	W09
	.byte		        8
	.byte		N11   , Fs3 
	.byte	W07
	.byte		MOD   , 7
	.byte	W01
	.byte		        5
	.byte	W01
	.byte		        3
	.byte	W02
	.byte		        0
	.byte	W01
	.byte		N11   , Bn3 , v104
	.byte	W12
	.byte		N64   , As3 , v108
	.byte	W12
/* 030   ----------------------------------------
 */	.byte	W14
	.byte		MOD   , 1
	.byte	W02
	.byte		        3
	.byte	W01
	.byte		        4
	.byte	W04
	.byte		        5
	.byte	W03
	.byte		        6
	.byte	W03
	.byte		        7
	.byte	W08
	.byte		        8
	.byte	W04
	.byte		        9
	.byte	W04
	.byte		        10
	.byte	W02
	.byte		        11
	.byte	W05
	.byte		        12
	.byte	W07
	.byte		        9
	.byte	W01
	.byte		        6
	.byte	W01
	.byte		        3
	.byte	W01
	.byte		N23   , As3 , v116
	.byte	W01
	.byte		MOD   , 0
	.byte	W23
	.byte		N68   , Bn3 , v108
	.byte	W12
/* 031   ----------------------------------------
 */	.byte	W02
	.byte		MOD   , 1
	.byte	W02
	.byte		        2
	.byte	W02
	.byte		        3
	.byte	W02
	.byte		        4
	.byte	W07
	.byte		        6
	.byte	W04
	.byte		        7
	.byte	W02
	.byte		        8
	.byte	W04
	.byte		        9
	.byte	W06
	.byte		        10
	.byte	W02
	.byte		        11
	.byte	W03
	.byte		        12
	.byte	W09
	.byte		        9
	.byte	W02
	.byte		        7
	.byte	W01
	.byte		        5
	.byte	W01
	.byte		        2
	.byte	W01
	.byte		        0
	.byte	W10
	.byte		N11   , As3 , v104
	.byte	W12
	.byte		        Bn3 , v100
	.byte	W12
	.byte		N32   , Dn4 , v112
	.byte	W12
/* 032   ----------------------------------------
 */	.byte	W06
	.byte		MOD   , 1
	.byte	W01
	.byte		        2
	.byte	W02
	.byte		        3
	.byte	W01
	.byte		        4
	.byte	W03
	.byte		        5
	.byte	W02
	.byte		        7
	.byte	W03
	.byte		        8
	.byte	W03
	.byte		        9
	.byte	W03
	.byte		N32   , Cs4 , v104
	.byte	W07
	.byte		MOD   , 6
	.byte	W01
	.byte		        3
	.byte	W02
	.byte		        0
	.byte	W24
	.byte	W02
	.byte		N23   , Cn4 
	.byte	W24
	.byte		N56   , Bn3 
	.byte	W12
/* 033   ----------------------------------------
 */	.byte	W10
	.byte		MOD   , 2
	.byte	W02
	.byte		        3
	.byte	W01
	.byte		        4
	.byte	W03
	.byte		        5
	.byte	W05
	.byte		        7
	.byte	W04
	.byte		        8
	.byte	W05
	.byte		        9
	.byte	W03
	.byte		        10
	.byte	W04
	.byte		        11
	.byte	W03
	.byte		        12
	.byte	W08
	.byte		N11   , Dn3 , v068
	.byte	W03
	.byte		MOD   , 10
	.byte	W02
	.byte		        6
	.byte	W01
	.byte		        3
	.byte	W01
	.byte		        0
	.byte	W05
	.byte		N11   , Fs3 , v080
	.byte	W12
	.byte		        Bn3 , v108
	.byte	W12
	.byte		N66   , As3 , v100
	.byte	W12
/* 034   ----------------------------------------
 */	.byte	W03
	.byte		MOD   , 1
	.byte	W04
	.byte		        2
	.byte	W03
	.byte		        4
	.byte	W02
	.byte		        5
	.byte	W03
	.byte		        6
	.byte	W01
	.byte		        7
	.byte	W05
	.byte		        8
	.byte	W04
	.byte		        9
	.byte	W04
	.byte		        10
	.byte	W03
	.byte		        11
	.byte	W15
	.byte		        12
	.byte	W02
	.byte		        9
	.byte	W02
	.byte		        6
	.byte	W01
	.byte		        3
	.byte	W01
	.byte		        0
	.byte	W07
	.byte		N23   , As3 , v112
	.byte	W24
	.byte		TIE   , Bn3 , v096
	.byte	W12
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_7_019
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_7_020
	.byte		EOT   , Bn3 
	.byte		MOD   , 0
	.byte	W36
	.byte	W01
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
/* 044   ----------------------------------------
 */	.byte	W12
	.byte		N03   , Ds2 , v040
	.byte	W03
	.byte		        Fn2 , v044
	.byte	W03
	.byte		        Gn2 , v048
	.byte	W03
	.byte		        As2 
	.byte	W03
	.byte		        Ds3 , v052
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Gn3 , v056
	.byte	W03
	.byte		        Fn3 , v060
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Fn3 , v064
	.byte	W03
	.byte		        Gn3 , v068
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Ds4 , v072
	.byte	W03
	.byte		        Fn4 , v076
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Fn4 , v080
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Fn4 , v084
	.byte	W03
	.byte		        Gn4 , v088
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte		        Ds5 , v092
	.byte	W03
	.byte		        Fn5 , v096
	.byte	W03
	.byte		        Gn5 
	.byte	W03
	.byte		        As5 , v100
	.byte	W03
	.byte	GOTO
	 mPtr	mus_boss_knuckles_7_B1
mus_boss_knuckles_7_B2:
	.byte	FINE

/* **************** Track 8 (Midi-Chn.8) **************** */

mus_boss_knuckles_8:
	.byte	KEYSH , mus_boss_knuckles_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 63
	.byte		VOL   , 89*mus_boss_knuckles_mvl/mxv
	.byte		N04   , As1 , v096
	.byte	W04
	.byte		        Ds2 , v092
	.byte	W04
	.byte		        Gs2 , v096
	.byte	W04
	.byte		N24   , Gn2 , v120
	.byte	W12
	.byte		N04   , As2 , v084
	.byte	W04
	.byte		        Ds3 , v096
	.byte	W04
	.byte		        Gs3 , v092
	.byte	W04
	.byte		N48   , Gn3 , v112
	.byte	W12
	.byte		N04   , As3 , v104
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Gs4 , v100
	.byte	W04
	.byte		N24   , Gn4 , v124
	.byte	W24
mus_boss_knuckles_8_B1:
	.byte		N18   , Gs3 , v112
	.byte		N18   , Gs4 
	.byte	W12
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
/* 044   ----------------------------------------
 */	.byte		N04   , As1 , v096
	.byte	W04
	.byte		        Ds2 , v092
	.byte	W04
	.byte		        Gs2 , v096
	.byte	W04
	.byte		N24   , Gn2 , v120
	.byte	W12
	.byte		N04   , As2 , v084
	.byte	W04
	.byte		        Ds3 , v096
	.byte	W04
	.byte		        Gs3 , v092
	.byte	W04
	.byte		N48   , Gn3 , v112
	.byte	W12
	.byte		N04   , As3 , v104
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Gs4 , v100
	.byte	W04
	.byte		N24   , Gn4 , v124
	.byte	W24
	.byte	GOTO
	 mPtr	mus_boss_knuckles_8_B1
mus_boss_knuckles_8_B2:
	.byte	FINE

/* **************** Track 9 (Midi-Chn.9) **************** */

mus_boss_knuckles_9:
	.byte	KEYSH , mus_boss_knuckles_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 64
	.byte		VOL   , 127*mus_boss_knuckles_mvl/mxv
	.byte	W84
mus_boss_knuckles_9_B1:
	.byte	W12
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
 */	.byte	W72
	.byte		N04   , An3 , v116
	.byte	W06
	.byte		N03   , An3 , v127
	.byte	W12
	.byte		N04   , An3 , v120
	.byte	W06
/* 029   ----------------------------------------
 */	.byte	W06
	.byte		N16   , An3 , v124
	.byte	W18
	.byte		N05   , An3 , v112
	.byte	W06
	.byte		        An3 , v127
	.byte	W42
	.byte		N03   , An3 , v112
	.byte	W06
	.byte		N04   , An3 , v127
	.byte	W18
/* 030   ----------------------------------------
 */	.byte	W48
	.byte		N03   , Gs3 , v100
	.byte	W06
	.byte		        Gs3 , v124
	.byte	W12
	.byte		N13   , Gs3 , v104
	.byte	W30
/* 031   ----------------------------------------
 */	.byte	W48
	.byte		N04   , An3 , v108
	.byte	W06
	.byte		        An3 , v116
	.byte	W12
	.byte		N06   , An3 , v120
	.byte	W30
/* 032   ----------------------------------------
 */	.byte	W24
	.byte		N05   , As3 , v096
	.byte	W18
	.byte		N03   , As3 , v124
	.byte	W18
	.byte		N22   , As3 , v116
	.byte	W36
/* 033   ----------------------------------------
 */	.byte	W24
	.byte		N04   , An3 
	.byte	W24
	.byte		        An3 , v120
	.byte	W06
	.byte		        An3 , v080
	.byte	W12
	.byte		        An3 , v120
	.byte	W30
/* 034   ----------------------------------------
 */	.byte	W24
	.byte		N03   , Gs3 , v096
	.byte	W36
	.byte		N20   , Gs3 , v116
	.byte	W36
/* 035   ----------------------------------------
 */	.byte	W24
	.byte		N04   , An3 , v108
	.byte	W06
	.byte		        An3 , v124
	.byte	W12
	.byte		        An3 , v108
	.byte	W18
	.byte		N23   , An3 , v116
	.byte	W24
	.byte		N68   , An3 , v120
	.byte	W12
/* 036   ----------------------------------------
 */	.byte	W72
	.byte		N05   , An3 , v116
	.byte	W06
	.byte		        As3 , v112
	.byte	W06
	.byte		N12   , Bn3 , v124
	.byte	W12
/* 037   ----------------------------------------
 */	.byte	W24
	.byte		N13   , Bn3 , v127
	.byte	W72
/* 038   ----------------------------------------
 */	.byte	W84
	.byte		N12   
	.byte	W12
/* 039   ----------------------------------------
 */	.byte	W24
	.byte		N15   
	.byte	W72
/* 040   ----------------------------------------
 */	.byte	W84
	.byte		N14   , Cn4 
	.byte	W12
/* 041   ----------------------------------------
 */	.byte	W24
	.byte		N16   
	.byte	W72
/* 042   ----------------------------------------
 */	.byte	W84
	.byte		N12   
	.byte	W12
/* 043   ----------------------------------------
 */	.byte	W24
	.byte		N17   
	.byte	W72
/* 044   ----------------------------------------
 */	.byte	W12
	.byte		N68   , As2 
	.byte	W72
	.byte	GOTO
	 mPtr	mus_boss_knuckles_9_B1
mus_boss_knuckles_9_B2:
	.byte	FINE

/* **************** Track 10 (Midi-Chn.10) **************** */

mus_boss_knuckles_10:
	.byte	KEYSH , mus_boss_knuckles_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 61
	.byte		VOL   , 127*mus_boss_knuckles_mvl/mxv
	.byte		BENDR , 12
	.byte	W84
mus_boss_knuckles_10_B1:
	.byte	W12
/* 001   ----------------------------------------
 */	.byte	W78
	.byte		VOL   , 0*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		VOL   , 0*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        2*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        3*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        4*mus_boss_knuckles_mvl/mxv
	.byte		TIE   , As1 , v127
	.byte	W01
	.byte		VOL   , 5*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        6*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        7*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        7*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        9*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        10*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        11*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        12*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        13*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
/* 002   ----------------------------------------
 */	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        16*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        18*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        21*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        24*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        28*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        58*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        78*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        80*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        88*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W08
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
/* 003   ----------------------------------------
 */	.byte	W03
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W04
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W05
	.byte		        88*mus_boss_knuckles_mvl/mxv
	.byte	W04
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte	W04
	.byte		        86*mus_boss_knuckles_mvl/mxv
	.byte	W04
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W05
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W04
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W04
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W04
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte	W04
	.byte		        80*mus_boss_knuckles_mvl/mxv
	.byte	W05
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W04
	.byte		        78*mus_boss_knuckles_mvl/mxv
	.byte	W04
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W04
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W05
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W04
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W04
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W04
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W03
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
/* 004   ----------------------------------------
 */	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        58*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        48*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        28*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        27*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        24*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        21*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        18*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        16*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		EOT   
	.byte		VOL   , 13*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        12*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        11*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        10*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        9*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        7*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        7*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        6*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        5*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        4*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        3*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        2*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        0*mus_boss_knuckles_mvl/mxv
	.byte	W20
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
 */	.byte	W84
	.byte		BEND  , c_v-64
	.byte	W12
/* 012   ----------------------------------------
 */	.byte	W19
	.byte		VOL   , 0*mus_boss_knuckles_mvl/mxv
	.byte	W17
	.byte		TIE   , As2 , v112
	.byte	W04
	.byte		VOL   , 0*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        0*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        3*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        5*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        7*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        9*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        11*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        13*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        21*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        28*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		VOL   , 69*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-59
	.byte	W01
	.byte		VOL   , 71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-53
	.byte	W01
	.byte		VOL   , 76*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-47
	.byte	W01
	.byte		VOL   , 78*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        80*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-41
	.byte	W01
	.byte		VOL   , 82*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-35
	.byte	W01
	.byte		VOL   , 84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-29
	.byte	W01
	.byte		VOL   , 89*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-24
	.byte	W01
	.byte		VOL   , 89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-18
	.byte	W01
	.byte		VOL   , 95*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-12
	.byte	W01
	.byte		VOL   , 97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		VOL   , 101*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 103*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        106*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        108*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        109*mus_boss_knuckles_mvl/mxv
	.byte	W02
/* 013   ----------------------------------------
 */mus_boss_knuckles_10_013:
	.byte	W23
	.byte		VOL   , 109*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        107*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        106*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        104*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        104*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        80*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        58*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte	PEND
	.byte		EOT   , As2 
	.byte		VOL   , 37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte		TIE   , An2 , v112
	.byte	W01
	.byte		VOL   , 35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_knuckles_mvl/mxv
	.byte	W01
/* 014   ----------------------------------------
 */mus_boss_knuckles_10_014:
	.byte		VOL   , 50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        58*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        78*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        80*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        88*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        93*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        103*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        104*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        108*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        109*mus_boss_knuckles_mvl/mxv
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-60
	.byte	W01
	.byte		        c_v-64
	.byte	W36
	.byte	W03
	.byte		        c_v-64
	.byte	W03
	.byte		        c_v-62
	.byte	W03
	.byte		        c_v-60
	.byte	W03
	.byte		        c_v-58
	.byte	W07
	.byte	PEND
/* 015   ----------------------------------------
 */mus_boss_knuckles_10_015:
	.byte	W01
	.byte		VOL   , 109*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        108*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        107*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        106*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        104*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        104*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        103*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        94*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        93*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        88*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        80*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        78*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        58*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-58
	.byte	W01
	.byte	PEND
	.byte		EOT   , An2 
	.byte		VOL   , 34*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-61
	.byte		TIE   , Bn2 , v112
	.byte	W01
	.byte		VOL   , 33*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		VOL   , 32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
/* 016   ----------------------------------------
 */mus_boss_knuckles_10_016:
	.byte		VOL   , 49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        93*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        103*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        104*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        107*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        109*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-50
	.byte	W01
	.byte		VOL   , 108*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-40
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		VOL   , 107*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-31
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		VOL   , 106*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-12
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		VOL   , 104*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		VOL   , 104*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        103*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W03
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W03
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        94*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        93*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W03
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        88*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		VOL   , 86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		VOL   , 85*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-4
	.byte	W02
	.byte		VOL   , 82*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-6
	.byte	W02
	.byte		VOL   , 82*mus_boss_knuckles_mvl/mxv
	.byte	W03
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte	PEND
/* 017   ----------------------------------------
 */mus_boss_knuckles_10_017:
	.byte		VOL   , 80*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        78*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W03
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W04
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        58*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        50*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        49*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-6
	.byte	W01
	.byte	PEND
	.byte		EOT   , Bn2 
	.byte		VOL   , 32*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		TIE   , An2 , v112
	.byte	W01
	.byte		VOL   , 31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
/* 018   ----------------------------------------
 */mus_boss_knuckles_10_018:
	.byte		VOL   , 44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        58*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        62*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        80*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        88*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		VOL   , 91*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-15
	.byte	W01
	.byte		VOL   , 92*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-22
	.byte	W01
	.byte		VOL   , 94*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-37
	.byte	W01
	.byte		VOL   , 95*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-45
	.byte	W01
	.byte		VOL   , 96*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-52
	.byte	W01
	.byte		VOL   , 97*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		VOL   , 99*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        103*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        104*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        106*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        108*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        109*mus_boss_knuckles_mvl/mxv
	.byte	W36
	.byte		BEND  , c_v-64
	.byte	W03
	.byte		        c_v-63
	.byte	W03
	.byte		        c_v-61
	.byte	W03
	.byte		        c_v-58
	.byte	W05
	.byte	PEND
/* 019   ----------------------------------------
 */mus_boss_knuckles_10_019:
	.byte	W24
	.byte		VOL   , 109*mus_boss_knuckles_mvl/mxv
	.byte	W04
	.byte		        108*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        107*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        106*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        104*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        104*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        103*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        102*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        101*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        100*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        96*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        95*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        94*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        93*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        91*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        89*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        88*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        86*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        85*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        84*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        82*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        81*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        80*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        79*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        78*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        77*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        76*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        72*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        71*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        70*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        69*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte	PEND
/* 020   ----------------------------------------
 */mus_boss_knuckles_10_020:
	.byte	W01
	.byte		VOL   , 67*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        66*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        62*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        58*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        56*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        55*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        51*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        28*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        24*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        20*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        18*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        16*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        13*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        12*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        11*mus_boss_knuckles_mvl/mxv
	.byte	W02
	.byte		        9*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        7*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        7*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        6*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        4*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        3*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        2*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        0*mus_boss_knuckles_mvl/mxv
	.byte	W16
	.byte	PEND
	.byte		EOT   , An2 
	.byte	W12
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
 */	.byte	W84
	.byte		BEND  , c_v-64
	.byte	W12
/* 028   ----------------------------------------
 */	.byte	W19
	.byte		VOL   , 0*mus_boss_knuckles_mvl/mxv
	.byte	W17
	.byte		TIE   , Cs3 , v112
	.byte	W04
	.byte		VOL   , 0*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        0*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        3*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        5*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        7*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        9*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        11*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        13*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        17*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        19*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        21*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        22*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        26*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        28*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        29*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        42*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        46*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        50*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        54*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        57*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        59*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        61*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        63*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        65*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		VOL   , 69*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-59
	.byte	W01
	.byte		VOL   , 71*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        73*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-53
	.byte	W01
	.byte		VOL   , 76*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-47
	.byte	W01
	.byte		VOL   , 78*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        80*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-41
	.byte	W01
	.byte		VOL   , 82*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-35
	.byte	W01
	.byte		VOL   , 84*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        87*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-29
	.byte	W01
	.byte		VOL   , 89*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-24
	.byte	W01
	.byte		VOL   , 89*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        92*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-18
	.byte	W01
	.byte		VOL   , 95*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-12
	.byte	W01
	.byte		VOL   , 97*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        99*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		VOL   , 101*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 103*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        106*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        108*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        109*mus_boss_knuckles_mvl/mxv
	.byte	W02
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_10_013
	.byte		EOT   , Cs3 
	.byte		VOL   , 37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte		TIE   , Cn3 , v112
	.byte	W01
	.byte		VOL   , 35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        48*mus_boss_knuckles_mvl/mxv
	.byte	W01
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_10_014
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_10_015
	.byte		EOT   , Cn3 
	.byte		VOL   , 34*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-61
	.byte		TIE   , Dn3 , v112
	.byte	W01
	.byte		VOL   , 33*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		VOL   , 32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_knuckles_mvl/mxv
	.byte	W01
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_10_016
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_10_017
	.byte		EOT   , Dn3 
	.byte		VOL   , 32*mus_boss_knuckles_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		TIE   , Cn3 , v112
	.byte	W01
	.byte		VOL   , 31*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        32*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        33*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        34*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        36*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        37*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        39*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        40*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        43*mus_boss_knuckles_mvl/mxv
	.byte	W01
	.byte		        44*mus_boss_knuckles_mvl/mxv
	.byte	W01
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_10_018
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_10_019
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_knuckles_10_020
	.byte		EOT   , Cn3 
	.byte	W12
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
/* 044   ----------------------------------------
 */	.byte	W84
	.byte	GOTO
	 mPtr	mus_boss_knuckles_10_B1
mus_boss_knuckles_10_B2:
	.byte	FINE

/* **************** Track 11 (Midi-Chn.11) **************** */

mus_boss_knuckles_11:
	.byte	KEYSH , mus_boss_knuckles_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 13
	.byte		VOL   , 95*mus_boss_knuckles_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W18
	.byte		N03   , Ds2 , v004
	.byte	W03
	.byte		        Fn2 
	.byte	W03
	.byte		        Gn2 , v008
	.byte	W03
	.byte		        As2 , v012
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Fn3 , v016
	.byte	W03
	.byte		        Gn3 , v020
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Ds3 , v024
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Gn3 , v028
	.byte	W03
	.byte		        As3 , v032
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Fn4 , v036
	.byte	W03
	.byte		        Gn4 , v040
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Ds4 , v044
	.byte	W03
	.byte		        Fn4 , v048
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        As4 , v052
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        Fn5 , v056
	.byte	W03
mus_boss_knuckles_11_B1:
	.byte		N03   , Gn5 , v060
	.byte	W03
	.byte		        As5 
	.byte	W03
	.byte		        Gs5 , v056
	.byte	W03
	.byte		        Ds5 , v052
	.byte	W03
/* 001   ----------------------------------------
 */	.byte		        Bn4 
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte		        Gs4 , v048
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Bn4 , v044
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Ds4 , v040
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        As3 , v036
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Bn3 , v032
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Gs3 , v028
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Bn3 , v024
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Ds3 , v020
	.byte	W03
	.byte		        Bn2 
	.byte	W03
	.byte		        As2 , v016
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Bn2 , v012
	.byte	W03
	.byte		        As2 
	.byte	W03
	.byte		        Gs2 , v008
	.byte	W03
	.byte		        Ds2 
	.byte	W03
	.byte		        Bn2 
	.byte	W03
	.byte		        As2 , v004
	.byte	W03
	.byte		        Gs2 
	.byte	W03
	.byte		        Ds2 
	.byte	W03
/* 002   ----------------------------------------
 */	.byte		        Bn1 
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte		        Gs1 
	.byte	W90
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
 */	.byte	W84
	.byte		N06   , Gs2 , v036
	.byte	W06
	.byte		        As2 , v040
	.byte	W06
/* 012   ----------------------------------------
 */	.byte		        Bn2 
	.byte	W06
	.byte		        Ds3 , v044
	.byte	W06
	.byte		        Gs3 , v048
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 , v052
	.byte	W06
	.byte		        Ds4 , v056
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 , v060
	.byte	W06
	.byte		        Bn3 , v064
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 , v068
	.byte	W06
	.byte		        As4 , v072
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds5 , v076
	.byte	W06
	.byte		        Gs5 , v080
	.byte	W06
	.byte		        Ds5 , v076
	.byte	W06
/* 013   ----------------------------------------
 */	.byte		        Bn4 , v072
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Bn4 , v068
	.byte	W06
	.byte		        As4 , v064
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 , v060
	.byte	W06
	.byte		        Gs4 , v056
	.byte	W06
	.byte		        Ds4 , v052
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 , v048
	.byte	W06
	.byte		        Bn3 , v044
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 , v040
	.byte	W06
	.byte		        Ds3 , v036
	.byte	W06
	.byte		        Gn2 , v028
	.byte	W06
	.byte		        An2 , v032
	.byte	W06
/* 014   ----------------------------------------
 */	.byte		        As2 , v036
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn3 , v040
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 , v044
	.byte	W06
	.byte		        Dn4 , v048
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 , v052
	.byte	W06
	.byte		        As3 , v056
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 , v060
	.byte	W06
	.byte		        An4 , v064
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Dn5 , v068
	.byte	W06
	.byte		        Ds5 , v064
	.byte	W06
	.byte		        Bn4 , v060
	.byte	W06
/* 015   ----------------------------------------
 */	.byte		        As4 
	.byte	W06
	.byte		        Gs4 , v056
	.byte	W06
	.byte		        As4 , v052
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 , v048
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Ds4 , v044
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 , v040
	.byte	W06
	.byte		        Gs3 , v036
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 , v032
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn2 , v028
	.byte	W06
	.byte		        An2 , v024
	.byte	W06
	.byte		        Bn2 , v028
	.byte	W06
/* 016   ----------------------------------------
 */	.byte		        Cn3 , v032
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 , v036
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 , v040
	.byte	W06
	.byte		        En4 , v044
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 , v048
	.byte	W06
	.byte		        Cn4 , v052
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An4 , v056
	.byte	W06
	.byte		        Bn4 , v060
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En5 , v064
	.byte	W06
	.byte		        Ds5 , v060
	.byte	W06
	.byte		        Bn4 , v056
	.byte	W06
/* 017   ----------------------------------------
 */	.byte		        As4 
	.byte	W06
	.byte		        Gs4 , v052
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 , v048
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 , v044
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 , v040
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 , v036
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gs3 , v032
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn2 , v028
	.byte	W06
	.byte		        Gn2 , v024
	.byte	W06
	.byte		        An2 , v028
	.byte	W06
/* 018   ----------------------------------------
 */	.byte		        As2 
	.byte	W06
	.byte		        Dn3 , v032
	.byte	W06
	.byte		        Gn3 , v036
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 , v040
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 , v044
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 , v048
	.byte	W06
	.byte		        Dn4 , v052
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 , v056
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Dn5 , v060
	.byte	W06
	.byte		        Gs5 , v056
	.byte	W06
	.byte		        Ds5 , v052
	.byte	W06
/* 019   ----------------------------------------
 */	.byte		        Bn4 
	.byte	W06
	.byte		        Gs4 , v048
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 , v044
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn4 , v040
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 , v036
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 , v032
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 , v028
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds4 , v020
	.byte	W06
	.byte		        Bn3 , v024
	.byte	W06
/* 020   ----------------------------------------
 */	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 , v028
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 , v032
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Gs3 , v036
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Gs2 , v040
	.byte	W06
	.byte		N03   , Ds3 , v032
	.byte	W03
	.byte		        En3 , v040
	.byte	W03
	.byte		        Fn3 , v048
	.byte	W03
	.byte		        Fs3 , v056
	.byte	W03
	.byte		        Gn3 , v068
	.byte	W03
	.byte		        Gs3 , v076
	.byte	W03
	.byte		        An3 , v084
	.byte	W03
	.byte		        As3 , v092
	.byte	W03
	.byte		        Bn3 , v100
	.byte	W12
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
 */	.byte	W84
	.byte		N06   , Bn2 , v036
	.byte	W06
	.byte		        Cs3 , v040
	.byte	W06
/* 028   ----------------------------------------
 */	.byte		        Dn3 
	.byte	W06
	.byte		        Fs3 , v044
	.byte	W06
	.byte		        Bn3 , v048
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 , v052
	.byte	W06
	.byte		        Fs4 , v056
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 , v060
	.byte	W06
	.byte		        Dn4 , v064
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Bn4 , v068
	.byte	W06
	.byte		        Cs5 , v072
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Fs5 , v076
	.byte	W06
	.byte		        Bn5 , v080
	.byte	W06
	.byte		        Fs5 , v076
	.byte	W06
/* 029   ----------------------------------------
 */	.byte		        Dn5 , v072
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Dn5 , v068
	.byte	W06
	.byte		        Cs5 , v064
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 , v060
	.byte	W06
	.byte		        Bn4 , v056
	.byte	W06
	.byte		        Fs4 , v052
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 , v048
	.byte	W06
	.byte		        Dn4 , v044
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 , v040
	.byte	W06
	.byte		        Fs3 , v036
	.byte	W06
	.byte		        As2 , v028
	.byte	W06
	.byte		        Cn3 , v032
	.byte	W06
/* 030   ----------------------------------------
 */	.byte		        Cs3 , v036
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        As3 , v040
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 , v044
	.byte	W06
	.byte		        Fn4 , v048
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 , v052
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As4 , v060
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn5 , v068
	.byte	W06
	.byte		        Fs5 , v064
	.byte	W06
	.byte		        Dn5 , v060
	.byte	W06
/* 031   ----------------------------------------
 */	.byte		        Cs5 
	.byte	W06
	.byte		        Bn4 , v056
	.byte	W06
	.byte		        Cs5 , v052
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 , v048
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fs4 , v044
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 , v040
	.byte	W06
	.byte		        Bn3 , v036
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 , v032
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Dn3 , v028
	.byte	W06
	.byte		        Cn3 , v024
	.byte	W06
	.byte		        Dn3 , v028
	.byte	W06
/* 032   ----------------------------------------
 */	.byte		        Ds3 , v032
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 , v036
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Ds4 , v040
	.byte	W06
	.byte		        Gn4 , v044
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 , v048
	.byte	W06
	.byte		        Ds4 , v052
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W06
	.byte		        Dn5 , v060
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Gn5 , v064
	.byte	W06
	.byte		        Fs5 , v060
	.byte	W06
	.byte		        Dn5 , v056
	.byte	W06
/* 033   ----------------------------------------
 */	.byte		        Cs5 
	.byte	W06
	.byte		        Bn4 , v052
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Bn4 , v048
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Dn4 , v044
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Dn4 , v040
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 , v036
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 , v032
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Dn3 , v028
	.byte	W06
	.byte		        As2 , v024
	.byte	W06
	.byte		        Cn3 , v028
	.byte	W06
/* 034   ----------------------------------------
 */	.byte		        Cs3 
	.byte	W06
	.byte		        Fn3 , v032
	.byte	W06
	.byte		        As3 , v036
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 , v040
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As3 , v044
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 , v048
	.byte	W06
	.byte		        Fn4 , v052
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn5 , v060
	.byte	W06
	.byte		        Bn5 , v056
	.byte	W06
	.byte		        Fs5 , v052
	.byte	W06
/* 035   ----------------------------------------
 */	.byte		        Dn5 
	.byte	W06
	.byte		        Bn4 , v048
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Dn5 , v044
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Dn5 , v040
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 , v036
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Bn4 , v032
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Dn4 , v028
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Fs4 , v020
	.byte	W06
	.byte		        Dn4 , v024
	.byte	W06
/* 036   ----------------------------------------
 */	.byte		        Bn3 
	.byte	W06
	.byte		        Fs3 , v028
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Fs3 , v032
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Bn3 , v036
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Bn2 , v040
	.byte	W06
	.byte		N03   , Fs3 , v032
	.byte	W03
	.byte		        Gn3 , v040
	.byte	W03
	.byte		        Gs3 , v048
	.byte	W03
	.byte		        An3 , v056
	.byte	W03
	.byte		        As3 , v068
	.byte	W03
	.byte		        Bn3 , v076
	.byte	W03
	.byte		        Cn4 , v084
	.byte	W03
	.byte		        Cs4 , v092
	.byte	W03
	.byte		        Dn4 , v100
	.byte	W12
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
/* 044   ----------------------------------------
 */	.byte	W18
	.byte		        Ds2 , v004
	.byte	W03
	.byte		        Fn2 
	.byte	W03
	.byte		        Gn2 , v008
	.byte	W03
	.byte		        As2 , v012
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Fn3 , v016
	.byte	W03
	.byte		        Gn3 , v020
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Ds3 , v024
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Gn3 , v028
	.byte	W03
	.byte		        As3 , v032
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Fn4 , v036
	.byte	W03
	.byte		        Gn4 , v040
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Ds4 , v044
	.byte	W03
	.byte		        Fn4 , v048
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        As4 , v052
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        Fn5 , v056
	.byte	W03
	.byte	GOTO
	 mPtr	mus_boss_knuckles_11_B1
mus_boss_knuckles_11_B2:
	.byte	FINE

/* **************** Track 12 (Midi-Chn.12) **************** */

mus_boss_knuckles_12:
	.byte	KEYSH , mus_boss_knuckles_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 96
	.byte		VOL   , 127*mus_boss_knuckles_mvl/mxv
	.byte	W84
mus_boss_knuckles_12_B1:
	.byte	W12
/* 001   ----------------------------------------
 */	.byte		N07   , Bn2 , v108
	.byte	W24
	.byte		N54   , Bn2 , v088
	.byte	W72
/* 002   ----------------------------------------
 */	.byte		N13   , Bn2 , v100
	.byte	W24
	.byte		N30   , Bn2 , v076
	.byte	W36
	.byte		N06   , Bn2 , v072
	.byte	W12
	.byte		N05   , Bn2 , v044
	.byte	W24
/* 003   ----------------------------------------
 */	.byte		N08   , Bn2 , v108
	.byte	W24
	.byte		N54   , Bn2 , v080
	.byte	W72
/* 004   ----------------------------------------
 */	.byte		N08   , Bn2 , v116
	.byte	W24
	.byte		N32   , Bn2 , v084
	.byte	W36
	.byte		N05   , Bn2 , v076
	.byte	W12
	.byte		        Bn2 , v044
	.byte	W24
/* 005   ----------------------------------------
 */	.byte		N08   , Bn2 , v120
	.byte	W24
	.byte		N48   , Bn2 , v088
	.byte	W72
/* 006   ----------------------------------------
 */	.byte		N10   , As2 , v104
	.byte	W24
	.byte		N30   
	.byte	W36
	.byte		N04   , As2 , v064
	.byte	W12
	.byte		N07   
	.byte	W24
/* 007   ----------------------------------------
 */	.byte		N08   , Bn2 , v112
	.byte	W24
	.byte		N44   , Bn2 , v108
	.byte	W72
/* 008   ----------------------------------------
 */	.byte		N11   , Cn3 , v104
	.byte	W24
	.byte		N30   , Cn3 , v096
	.byte	W36
	.byte		N07   , Cn3 , v084
	.byte	W12
	.byte		N09   , Cn3 , v080
	.byte	W24
/* 009   ----------------------------------------
 */	.byte		N07   , Bn2 , v108
	.byte	W24
	.byte		N52   , Bn2 , v104
	.byte	W72
/* 010   ----------------------------------------
 */	.byte		N09   , As2 , v112
	.byte	W24
	.byte		N30   , As2 , v100
	.byte	W36
	.byte		N08   , As2 , v060
	.byte	W12
	.byte		N07   , As2 , v052
	.byte	W24
/* 011   ----------------------------------------
 */	.byte		N08   , Bn2 , v104
	.byte	W24
	.byte		N54   , Bn2 , v096
	.byte	W72
/* 012   ----------------------------------------
 */	.byte		N08   
	.byte	W24
	.byte		N32   , Bn2 , v108
	.byte	W36
	.byte		N07   , Bn2 , v096
	.byte	W36
/* 013   ----------------------------------------
 */	.byte		        Bn2 , v108
	.byte	W24
	.byte		N56   , Bn2 , v088
	.byte	W72
/* 014   ----------------------------------------
 */	.byte		N11   , As2 , v112
	.byte	W24
	.byte		N30   
	.byte	W36
	.byte		N07   , As2 , v076
	.byte	W12
	.byte		        As2 , v088
	.byte	W24
/* 015   ----------------------------------------
 */	.byte		N06   , Bn2 , v108
	.byte	W24
	.byte		N56   , Bn2 , v116
	.byte	W72
/* 016   ----------------------------------------
 */	.byte		N07   , Cn3 , v127
	.byte	W24
	.byte		N32   , Cn3 , v104
	.byte	W36
	.byte		N07   , Cn3 , v096
	.byte	W12
	.byte		        Cn3 , v076
	.byte	W24
/* 017   ----------------------------------------
 */	.byte		        Bn2 , v100
	.byte	W24
	.byte		N56   , Bn2 , v108
	.byte	W72
/* 018   ----------------------------------------
 */	.byte		N07   , As2 , v096
	.byte	W24
	.byte		N30   
	.byte	W36
	.byte		N08   , As2 , v084
	.byte	W12
	.byte		N06   , As2 , v072
	.byte	W24
/* 019   ----------------------------------------
 */	.byte		N07   , Bn2 , v104
	.byte	W24
	.byte		N56   , Bn2 , v100
	.byte	W72
/* 020   ----------------------------------------
 */	.byte		N07   , Bn2 , v112
	.byte	W24
	.byte		N21   , Bn2 , v100
	.byte	W24
	.byte		N12   , Bn2 , v104
	.byte	W12
	.byte		N11   , Cn3 , v100
	.byte	W12
	.byte		N09   , Cs3 , v104
	.byte	W12
	.byte		N07   , Dn3 , v124
	.byte	W12
/* 021   ----------------------------------------
 */	.byte	W24
	.byte		N52   , Dn3 , v120
	.byte	W72
/* 022   ----------------------------------------
 */	.byte		N06   , Cs3 , v100
	.byte	W24
	.byte		N30   , Cs3 , v116
	.byte	W36
	.byte		N06   , Cs3 , v096
	.byte	W12
	.byte		        Cs3 , v084
	.byte	W24
/* 023   ----------------------------------------
 */	.byte		        Dn3 , v104
	.byte	W24
	.byte		N44   , Dn3 , v116
	.byte	W72
/* 024   ----------------------------------------
 */	.byte		N07   , Ds3 , v112
	.byte	W24
	.byte		N28   
	.byte	W36
	.byte		N07   , Ds3 , v092
	.byte	W12
	.byte		        Ds3 , v096
	.byte	W24
/* 025   ----------------------------------------
 */	.byte		        Dn3 , v108
	.byte	W24
	.byte		N56   , Dn3 , v112
	.byte	W72
/* 026   ----------------------------------------
 */	.byte		N06   , Cs3 , v104
	.byte	W24
	.byte		N24   , Cs3 , v108
	.byte	W36
	.byte		N07   , Cs3 , v080
	.byte	W12
	.byte		        Cs3 , v084
	.byte	W24
/* 027   ----------------------------------------
 */	.byte		N09   , Dn3 , v112
	.byte	W24
	.byte		N56   , Dn3 , v116
	.byte	W72
/* 028   ----------------------------------------
 */	.byte		N08   , Dn3 , v088
	.byte	W24
	.byte		N30   , Dn3 , v104
	.byte	W36
	.byte		N09   , Dn3 , v080
	.byte	W36
/* 029   ----------------------------------------
 */	.byte		N10   , Dn3 , v100
	.byte	W24
	.byte		N52   , Dn3 , v112
	.byte	W72
/* 030   ----------------------------------------
 */	.byte		N07   , Cs3 , v108
	.byte	W24
	.byte		N30   , Cs3 , v104
	.byte	W36
	.byte		N07   , Cs3 , v088
	.byte	W12
	.byte		N06   , Cs3 , v084
	.byte	W24
/* 031   ----------------------------------------
 */	.byte		        Dn3 , v112
	.byte	W24
	.byte		N44   , Dn3 , v104
	.byte	W72
/* 032   ----------------------------------------
 */	.byte		N08   , Ds3 , v112
	.byte	W24
	.byte		N28   , Ds3 , v104
	.byte	W36
	.byte		N08   , Ds3 , v096
	.byte	W12
	.byte		N08   
	.byte	W24
/* 033   ----------------------------------------
 */	.byte		N07   , Dn3 , v112
	.byte	W24
	.byte		N54   , Dn3 , v100
	.byte	W72
/* 034   ----------------------------------------
 */	.byte		N07   , Cs3 , v104
	.byte	W24
	.byte		N28   , Cs3 , v108
	.byte	W36
	.byte		N07   , Cs3 , v084
	.byte	W12
	.byte		N10   
	.byte	W24
/* 035   ----------------------------------------
 */	.byte		N07   , Dn3 , v112
	.byte	W24
	.byte		N56   
	.byte	W72
/* 036   ----------------------------------------
 */	.byte		N09   , Dn3 , v108
	.byte	W24
	.byte		N30   , Dn3 , v120
	.byte	W36
	.byte		N07   , Dn3 , v100
	.byte	W12
	.byte		N06   , Dn3 , v096
	.byte	W12
	.byte		N12   , En3 , v127
	.byte	W12
/* 037   ----------------------------------------
 */	.byte	W24
	.byte		N19   
	.byte	W72
/* 038   ----------------------------------------
 */	.byte	W84
	.byte		N15   
	.byte	W12
/* 039   ----------------------------------------
 */	.byte	W24
	.byte		N16   
	.byte	W72
/* 040   ----------------------------------------
 */	.byte	W84
	.byte		N14   , Fn3 , v124
	.byte	W12
/* 041   ----------------------------------------
 */	.byte	W24
	.byte		N16   , Fn3 , v127
	.byte	W72
/* 042   ----------------------------------------
 */	.byte	W84
	.byte		N15   
	.byte	W12
/* 043   ----------------------------------------
 */	.byte	W24
	.byte		N14   , Fn3 , v124
	.byte	W72
/* 044   ----------------------------------------
 */	.byte	W12
	.byte		N72   , Ds3 , v127
	.byte	W72
	.byte	GOTO
	 mPtr	mus_boss_knuckles_12_B1
mus_boss_knuckles_12_B2:
	.byte	W01
	.byte	FINE

/* **************** Track 13 (Midi-Chn.13) **************** */

mus_boss_knuckles_13:
	.byte	KEYSH , mus_boss_knuckles_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 65
	.byte		VOL   , 89*mus_boss_knuckles_mvl/mxv
	.byte	W84
mus_boss_knuckles_13_B1:
	.byte	W12
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
 */	.byte	W36
	.byte		N44   , Ds3 , v127
	.byte	W48
	.byte		N92   , Ds4 
	.byte	W12
/* 013   ----------------------------------------
 */	.byte	W84
	.byte		N44   , Dn4 
	.byte	W12
/* 014   ----------------------------------------
 */	.byte	W36
	.byte		        Dn3 
	.byte	W48
	.byte		N92   , Ds3 
	.byte	W12
/* 015   ----------------------------------------
 */	.byte	W84
	.byte		N44   , En3 
	.byte	W12
/* 016   ----------------------------------------
 */	.byte	W36
	.byte		        En4 
	.byte	W48
	.byte		N92   , Ds4 
	.byte	W12
/* 017   ----------------------------------------
 */	.byte	W84
	.byte		N44   , Dn3 
	.byte	W12
/* 018   ----------------------------------------
 */	.byte	W36
	.byte		        Dn4 
	.byte	W48
	.byte		N92   , Ds3 
	.byte	W12
/* 019   ----------------------------------------
 */	.byte	W84
	.byte		N44   , Ds4 
	.byte	W12
/* 020   ----------------------------------------
 */	.byte	W36
	.byte		        Ds3 
	.byte	W48
	.byte		N92   , Fs3 
	.byte	W12
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
 */	.byte	W36
	.byte		N44   
	.byte	W48
	.byte		N92   , Fs4 
	.byte	W12
/* 029   ----------------------------------------
 */	.byte	W84
	.byte		N44   , Fn4 
	.byte	W12
/* 030   ----------------------------------------
 */	.byte	W36
	.byte		        Fn3 
	.byte	W48
	.byte		N92   , Fs3 
	.byte	W12
/* 031   ----------------------------------------
 */	.byte	W84
	.byte		N44   , Gn3 
	.byte	W12
/* 032   ----------------------------------------
 */	.byte	W36
	.byte		        Gn4 
	.byte	W48
	.byte		N92   , Fs4 
	.byte	W12
/* 033   ----------------------------------------
 */	.byte	W84
	.byte		N44   , Fn3 
	.byte	W12
/* 034   ----------------------------------------
 */	.byte	W36
	.byte		        Fn4 
	.byte	W48
	.byte		N92   , Fs3 
	.byte	W12
/* 035   ----------------------------------------
 */	.byte	W84
	.byte		N44   , Fs4 
	.byte	W12
/* 036   ----------------------------------------
 */	.byte	W36
	.byte		        Fs3 
	.byte	W60
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
/* 044   ----------------------------------------
 */	.byte	W84
	.byte	GOTO
	 mPtr	mus_boss_knuckles_13_B1
mus_boss_knuckles_13_B2:
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_boss_knuckles):
	.byte	13	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_boss_knuckles_pri	/* Priority */
	.byte	mus_boss_knuckles_rev	/* Reverb */

mAlignWord
	mPtr	mus_boss_knuckles_grp

	mPtr	mus_boss_knuckles_1
	mPtr	mus_boss_knuckles_2
	mPtr	mus_boss_knuckles_3
	mPtr	mus_boss_knuckles_4
	mPtr	mus_boss_knuckles_5
	mPtr	mus_boss_knuckles_6
	mPtr	mus_boss_knuckles_7
	mPtr	mus_boss_knuckles_8
	mPtr	mus_boss_knuckles_9
	mPtr	mus_boss_knuckles_10
	mPtr	mus_boss_knuckles_11
	mPtr	mus_boss_knuckles_12
	mPtr	mus_boss_knuckles_13

	.end
