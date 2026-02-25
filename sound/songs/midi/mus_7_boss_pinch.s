	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_7_boss_pinch_grp, voicegroup022
	.equ	mus_7_boss_pinch_pri, 0
	.equ	mus_7_boss_pinch_rev, reverb_set+0
	.equ	mus_7_boss_pinch_mvl, 98
	.equ	mus_7_boss_pinch_key, 0
	.equ	mus_7_boss_pinch_tbs, 1
	.equ	mus_7_boss_pinch_exg, 1
	.equ	mus_7_boss_pinch_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_7_boss_pinch)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_7_boss_pinch_1:
	.byte	KEYSH , mus_7_boss_pinch_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 174*mus_7_boss_pinch_tbs/2
	.byte		VOICE , 68
	.byte		VOL   , 122*mus_7_boss_pinch_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
mus_7_boss_pinch_1_B1:
/* 001   ----------------------------------------
 */mus_7_boss_pinch_1_001:
	.byte		N06   , Bn1 , v127
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
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
/* 002   ----------------------------------------
 */mus_7_boss_pinch_1_002:
	.byte		N06   , Bn1 , v127
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
	.byte	PEND
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_1_001
/* 004   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_1_002
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_1_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_1_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_1_001
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_1_002
/* 009   ----------------------------------------
 */mus_7_boss_pinch_1_009:
	.byte		N06   , Fn2 , v127
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
/* 010   ----------------------------------------
 */mus_7_boss_pinch_1_010:
	.byte		N06   , Fn2 , v127
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte	PEND
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_1_009
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_1_010
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_1_009
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_1_010
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_1_009
/* 016   ----------------------------------------
 */	.byte		N06   , Fn2 , v127
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En2 
	.byte	W06
/* 017   ----------------------------------------
 */mus_7_boss_pinch_1_017:
	.byte		N06   , An1 , v127
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
	.byte	PEND
/* 018   ----------------------------------------
 */mus_7_boss_pinch_1_018:
	.byte		N06   , An1 , v127
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
	.byte	PEND
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_1_017
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_1_018
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_1_001
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_1_002
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_1_001
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_1_002
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_1_001
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_1_002
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_1_001
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_1_002
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_1_001
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_1_002
	.byte	GOTO
	 mPtr	mus_7_boss_pinch_1_B1
mus_7_boss_pinch_1_B2:
/* 031   ----------------------------------------
 */	.byte	W96
/* 032   ----------------------------------------
 */	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_7_boss_pinch_2:
	.byte	KEYSH , mus_7_boss_pinch_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 127
	.byte		VOL   , 127*mus_7_boss_pinch_mvl/mxv
	.byte	W03
mus_7_boss_pinch_2_B1:
/* 001   ----------------------------------------
 */mus_7_boss_pinch_2_001:
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
 */mus_7_boss_pinch_2_002:
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
	 mPtr	mus_7_boss_pinch_2_001
/* 004   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_2_002
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_2_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_2_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_2_001
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_2_002
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_2_001
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_2_002
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_2_001
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_2_002
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_2_001
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_2_002
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_2_001
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_2_002
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_2_001
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_2_002
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_2_001
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_2_002
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_2_001
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_2_002
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_2_001
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_2_002
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_2_001
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_2_002
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_2_001
/* 028   ----------------------------------------
 */	.byte		N18   , Ds2 , v120
	.byte	W24
	.byte		N18   
	.byte	W24
	.byte		N06   
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
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_2_001
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_2_002
	.byte	GOTO
	 mPtr	mus_7_boss_pinch_2_B1
mus_7_boss_pinch_2_B2:
/* 031   ----------------------------------------
 */	.byte	W96
/* 032   ----------------------------------------
 */	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_7_boss_pinch_3:
	.byte	KEYSH , mus_7_boss_pinch_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 127
	.byte		VOL   , 122*mus_7_boss_pinch_mvl/mxv
	.byte	W03
mus_7_boss_pinch_3_B1:
/* 001   ----------------------------------------
 */mus_7_boss_pinch_3_001:
	.byte		N24   , Cs2 , v120
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
 */mus_7_boss_pinch_3_002:
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
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_3_002
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
	 mPtr	mus_7_boss_pinch_3_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_3_002
/* 008   ----------------------------------------
 */mus_7_boss_pinch_3_008:
	.byte		N11   , Ds1 , v072
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
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_3_002
/* 010   ----------------------------------------
 */mus_7_boss_pinch_3_010:
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
	.byte		        En1 , v080
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Ds1 , v072
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Ds1 , v072
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte	PEND
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_3_008
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_3_010
/* 013   ----------------------------------------
 */	.byte		N36   , Fs2 , v120
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
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_3_001
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_3_002
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_3_002
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
 */mus_7_boss_pinch_3_022:
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
	 mPtr	mus_7_boss_pinch_3_022
/* 024   ----------------------------------------
 */mus_7_boss_pinch_3_024:
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
	.byte	PEND
/* 025   ----------------------------------------
 */	.byte		N24   , Fs2 , v120
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
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_3_022
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_3_022
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_3_024
/* 029   ----------------------------------------
 */	.byte		N24   , Cs2 , v120
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
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_3_024
	.byte	GOTO
	 mPtr	mus_7_boss_pinch_3_B1
mus_7_boss_pinch_3_B2:
/* 031   ----------------------------------------
 */	.byte	W96
/* 032   ----------------------------------------
 */	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_7_boss_pinch_4:
	.byte	KEYSH , mus_7_boss_pinch_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 2
	.byte		VOL   , 61*mus_7_boss_pinch_mvl/mxv
	.byte		PAN   , c_v-30
	.byte		MOD   , 2
	.byte	W03
mus_7_boss_pinch_4_B1:
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
 */mus_7_boss_pinch_4_009:
	.byte		N06   , Fn3 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte	PEND
/* 010   ----------------------------------------
 */mus_7_boss_pinch_4_010:
	.byte		N06   , En3 , v100
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte	PEND
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_4_009
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_4_010
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_4_009
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_4_010
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_4_009
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_4_010
/* 017   ----------------------------------------
 */	.byte		N04   , An3 , v080
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
	.byte		        An3 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Gs4 
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
/* 018   ----------------------------------------
 */	.byte		        Gn3 
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
	.byte		        En3 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        En4 
	.byte	W04
/* 019   ----------------------------------------
 */mus_7_boss_pinch_4_019:
	.byte		N04   , An4 , v080
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Gs4 
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
	.byte	PEND
/* 020   ----------------------------------------
 */mus_7_boss_pinch_4_020:
	.byte		N04   , Gn4 , v080
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Cn5 
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
	.byte	PEND
/* 021   ----------------------------------------
 */mus_7_boss_pinch_4_021:
	.byte		N04   , Bn4 , v080
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
	.byte	PEND
/* 022   ----------------------------------------
 */mus_7_boss_pinch_4_022:
	.byte		N04   , An4 , v080
	.byte	W04
	.byte		        An5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Gs5 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Gs5 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Gs5 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Gs5 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Gs5 
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
	.byte	PEND
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_4_019
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_4_020
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_4_021
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_4_022
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_4_019
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_4_020
/* 029   ----------------------------------------
 */	.byte	W96
/* 030   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_7_boss_pinch_4_B1
mus_7_boss_pinch_4_B2:
/* 031   ----------------------------------------
 */	.byte	W96
/* 032   ----------------------------------------
 */	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_7_boss_pinch_5:
	.byte	KEYSH , mus_7_boss_pinch_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 12
	.byte		VOL   , 102*mus_7_boss_pinch_mvl/mxv
	.byte		PAN   , c_v+30
	.byte		MOD   , 0
	.byte	W03
mus_7_boss_pinch_5_B1:
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
 */mus_7_boss_pinch_5_009:
	.byte		N06   , Fn3 , v080
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte	PEND
/* 010   ----------------------------------------
 */mus_7_boss_pinch_5_010:
	.byte		N06   , En3 , v080
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte	PEND
/* 011   ----------------------------------------
 */mus_7_boss_pinch_5_011:
	.byte		N12   , Fn3 , v080
	.byte	W12
	.byte		        Fn4 
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		        Ds4 
	.byte	W12
	.byte	PEND
/* 012   ----------------------------------------
 */mus_7_boss_pinch_5_012:
	.byte	W12
	.byte		N12   , As3 , v080
	.byte	W24
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte	PEND
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_5_009
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_5_010
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_5_011
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_5_012
/* 017   ----------------------------------------
 */	.byte		N04   , An4 , v080
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
	.byte		        An4 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Ds4 
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
/* 018   ----------------------------------------
 */	.byte		        Gn4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
/* 019   ----------------------------------------
 */	.byte		        An5 
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
	.byte		        An4 
	.byte	W04
	.byte		        An5 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Gs5 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Gs5 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Gs5 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Gs5 
	.byte	W04
	.byte		        Gs4 
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
/* 020   ----------------------------------------
 */	.byte		        Gn5 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Gn5 
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
	.byte		        Fs4 
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
	.byte		        Fn4 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        En4 
	.byte	W04
/* 021   ----------------------------------------
 */mus_7_boss_pinch_5_021:
	.byte		N04   , Bn4 , v080
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Fn5 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        Fn5 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        Fn5 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        Fn5 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        Fn5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte	PEND
/* 022   ----------------------------------------
 */mus_7_boss_pinch_5_022:
	.byte		N04   , An4 , v080
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        Gs4 
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
	.byte		        Fs4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte	PEND
/* 023   ----------------------------------------
 */mus_7_boss_pinch_5_023:
	.byte		N04   , Bn3 , v080
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
	.byte	PEND
/* 024   ----------------------------------------
 */mus_7_boss_pinch_5_024:
	.byte		N04   , An3 , v080
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Gs4 
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
	.byte	PEND
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_5_021
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_5_022
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_5_023
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_5_024
/* 029   ----------------------------------------
 */	.byte	W96
/* 030   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_7_boss_pinch_5_B1
mus_7_boss_pinch_5_B2:
/* 031   ----------------------------------------
 */	.byte	W96
/* 032   ----------------------------------------
 */	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_7_boss_pinch_6:
	.byte	KEYSH , mus_7_boss_pinch_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 96
	.byte		PAN   , c_v+0
	.byte		VOL   , 122*mus_7_boss_pinch_mvl/mxv
	.byte	W03
mus_7_boss_pinch_6_B1:
/* 001   ----------------------------------------
 */mus_7_boss_pinch_6_001:
	.byte		N36   , Dn3 , v112
	.byte	W36
	.byte		        Ds3 
	.byte	W36
	.byte		        Fn3 
	.byte	W24
	.byte	PEND
/* 002   ----------------------------------------
 */mus_7_boss_pinch_6_002:
	.byte	W12
	.byte		N36   , Gs3 , v112
	.byte	W36
	.byte		N24   , An3 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte	PEND
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_6_001
/* 004   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_6_002
/* 005   ----------------------------------------
 */mus_7_boss_pinch_6_005:
	.byte		N36   , Dn3 , v100
	.byte	W36
	.byte		        Ds3 
	.byte	W36
	.byte		        Fn3 
	.byte	W24
	.byte	PEND
/* 006   ----------------------------------------
 */mus_7_boss_pinch_6_006:
	.byte	W12
	.byte		N36   , Gs3 , v100
	.byte	W36
	.byte		N24   , An3 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte	PEND
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_6_005
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_6_006
/* 009   ----------------------------------------
 */	.byte		N48   , Fn3 , v112
	.byte	W96
/* 010   ----------------------------------------
 */mus_7_boss_pinch_6_010:
	.byte	W60
	.byte		N18   , Fn3 , v112
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte	PEND
/* 011   ----------------------------------------
 */	.byte		N48   
	.byte	W96
/* 012   ----------------------------------------
 */	.byte	W96
/* 013   ----------------------------------------
 */	.byte		N48   
	.byte	W96
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_6_010
/* 015   ----------------------------------------
 */	.byte		N48   , Fn3 , v112
	.byte	W96
/* 016   ----------------------------------------
 */	.byte	W96
/* 017   ----------------------------------------
 */mus_7_boss_pinch_6_017:
	.byte		N36   , An3 , v112
	.byte	W36
	.byte		        As3 
	.byte	W36
	.byte		        Cn4 
	.byte	W24
	.byte	PEND
/* 018   ----------------------------------------
 */mus_7_boss_pinch_6_018:
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
	 mPtr	mus_7_boss_pinch_6_017
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_6_018
/* 021   ----------------------------------------
 */mus_7_boss_pinch_6_021:
	.byte		N36   , Bn3 , v112
	.byte	W36
	.byte		        Cn4 
	.byte	W36
	.byte		        Dn4 
	.byte	W24
	.byte	PEND
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_6_002
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_6_021
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_6_002
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_6_021
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_6_002
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_6_021
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_6_002
/* 029   ----------------------------------------
 */	.byte	W96
/* 030   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_7_boss_pinch_6_B1
mus_7_boss_pinch_6_B2:
/* 031   ----------------------------------------
 */	.byte	W96
/* 032   ----------------------------------------
 */	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_7_boss_pinch_7:
	.byte	KEYSH , mus_7_boss_pinch_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 89
	.byte		VOL   , 122*mus_7_boss_pinch_mvl/mxv
	.byte		BENDR , 12
	.byte	W03
mus_7_boss_pinch_7_B1:
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
 */	.byte		N12   , Fn3 , v100
	.byte	W11
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		N12   , Fn4 
	.byte	W23
	.byte		PAN   , c_v+30
	.byte	W01
	.byte		N12   , En4 
	.byte	W23
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		N12   , Cn4 
	.byte	W23
	.byte		PAN   , c_v+30
	.byte	W01
	.byte		N12   , Ds4 
	.byte	W12
/* 016   ----------------------------------------
 */	.byte	W11
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		N12   , As3 
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
 */	.byte	W92
	.byte	W03
	.byte		PAN   , c_v+30
	.byte	W01
/* 025   ----------------------------------------
 */	.byte		N30   , Bn2 , v108
	.byte	W32
	.byte	W03
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		N30   , Cn3 
	.byte	W32
	.byte	W03
	.byte		PAN   , c_v+30
	.byte	W01
	.byte		N30   , Dn3 
	.byte	W24
/* 026   ----------------------------------------
 */	.byte	W11
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		N30   , En3 
	.byte	W32
	.byte	W03
	.byte		PAN   , c_v+30
	.byte	W01
	.byte		N18   , Fn3 
	.byte	W23
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		N18   , Fs3 
	.byte	W23
	.byte		PAN   , c_v+30
	.byte	W01
/* 027   ----------------------------------------
 */	.byte		N30   , Gn3 
	.byte	W32
	.byte	W03
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		N30   , Gs3 
	.byte	W32
	.byte	W03
	.byte		PAN   , c_v+30
	.byte	W01
	.byte		N30   , As3 
	.byte	W24
/* 028   ----------------------------------------
 */	.byte	W11
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		N30   , Bn3 
	.byte	W32
	.byte	W03
	.byte		PAN   , c_v+30
	.byte	W01
	.byte		N18   , Cn4 
	.byte	W23
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		N18   , Dn4 
	.byte	W24
/* 029   ----------------------------------------
 */	.byte	W96
/* 030   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_7_boss_pinch_7_B1
mus_7_boss_pinch_7_B2:
/* 031   ----------------------------------------
 */	.byte	W96
/* 032   ----------------------------------------
 */	.byte	FINE

/* **************** Track 8 (Midi-Chn.8) **************** */

mus_7_boss_pinch_8:
	.byte	KEYSH , mus_7_boss_pinch_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 106
	.byte		VOL   , 122*mus_7_boss_pinch_mvl/mxv
	.byte		PAN   , c_v-30
	.byte	W03
mus_7_boss_pinch_8_B1:
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
 */	.byte		N36   , Dn4 , v100
	.byte	W36
	.byte		        Cs4 
	.byte	W36
	.byte		        Cn4 
	.byte	W24
/* 008   ----------------------------------------
 */	.byte	W12
	.byte		        Bn3 
	.byte	W36
	.byte		N24   , An3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
/* 009   ----------------------------------------
 */	.byte		N18   , En4 , v104
	.byte	W96
/* 010   ----------------------------------------
 */mus_7_boss_pinch_8_010:
	.byte	W60
	.byte		N18   , En4 , v104
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte	PEND
/* 011   ----------------------------------------
 */	.byte		N18   
	.byte	W96
/* 012   ----------------------------------------
 */	.byte	W96
/* 013   ----------------------------------------
 */	.byte		N18   
	.byte	W96
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_8_010
/* 015   ----------------------------------------
 */	.byte		N18   , En4 , v104
	.byte	W96
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
	.byte	GOTO
	 mPtr	mus_7_boss_pinch_8_B1
mus_7_boss_pinch_8_B2:
/* 031   ----------------------------------------
 */	.byte	W96
/* 032   ----------------------------------------
 */	.byte	FINE

/* **************** Track 9 (Midi-Chn.9) **************** */

mus_7_boss_pinch_9:
	.byte	KEYSH , mus_7_boss_pinch_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 106
	.byte		VOL   , 122*mus_7_boss_pinch_mvl/mxv
	.byte		PAN   , c_v+30
	.byte		MOD   , 0
	.byte	W03
mus_7_boss_pinch_9_B1:
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */mus_7_boss_pinch_9_005:
	.byte		N36   , Dn3 , v100
	.byte	W36
	.byte		        Cs3 
	.byte	W36
	.byte		        Cn3 
	.byte	W24
	.byte	PEND
/* 006   ----------------------------------------
 */mus_7_boss_pinch_9_006:
	.byte	W12
	.byte		N36   , Bn2 , v100
	.byte	W36
	.byte		N24   , An2 
	.byte	W24
	.byte		        Gs2 
	.byte	W24
	.byte	PEND
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_9_005
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_9_006
/* 009   ----------------------------------------
 */	.byte		N18   , Gs3 , v104
	.byte	W96
/* 010   ----------------------------------------
 */mus_7_boss_pinch_9_010:
	.byte	W60
	.byte		N18   , Gs3 , v104
	.byte	W18
	.byte		N18   
	.byte	W18
	.byte	PEND
/* 011   ----------------------------------------
 */	.byte		N18   
	.byte	W96
/* 012   ----------------------------------------
 */	.byte	W96
/* 013   ----------------------------------------
 */	.byte		N18   
	.byte	W96
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_9_010
/* 015   ----------------------------------------
 */	.byte		N18   , Gs3 , v104
	.byte	W96
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
	.byte	GOTO
	 mPtr	mus_7_boss_pinch_9_B1
mus_7_boss_pinch_9_B2:
/* 031   ----------------------------------------
 */	.byte	W96
/* 032   ----------------------------------------
 */	.byte	FINE

/* **************** Track 10 (Midi-Chn.10) **************** */

mus_7_boss_pinch_10:
	.byte	KEYSH , mus_7_boss_pinch_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 103
	.byte		VOL   , 117*mus_7_boss_pinch_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
mus_7_boss_pinch_10_B1:
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
 */	.byte		BEND  , c_v-48
	.byte		N36   , Dn3 , v080
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
	.byte		        Cs3 
	.byte	W36
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        Ds3 , v096
	.byte	W24
/* 025   ----------------------------------------
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
/* 026   ----------------------------------------
 */	.byte	W12
	.byte		        Cs3 
	.byte	W36
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        Ds3 
	.byte	W24
/* 027   ----------------------------------------
 */	.byte		BEND  , c_v-48
	.byte		N36   , En3 , v100
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
/* 028   ----------------------------------------
 */	.byte	W12
	.byte		        Cs3 
	.byte	W36
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        Ds3 
	.byte	W24
/* 029   ----------------------------------------
 */	.byte	W96
/* 030   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_7_boss_pinch_10_B1
mus_7_boss_pinch_10_B2:
/* 031   ----------------------------------------
 */	.byte	W96
/* 032   ----------------------------------------
 */	.byte	FINE

/* **************** Track 11 (Midi-Chn.11) **************** */

mus_7_boss_pinch_11:
	.byte	KEYSH , mus_7_boss_pinch_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 117
	.byte		VOL   , 122*mus_7_boss_pinch_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	PRIO  , 15
	.byte	W03
mus_7_boss_pinch_11_B1:
/* 001   ----------------------------------------
 */mus_7_boss_pinch_11_001:
	.byte		N36   , Dn2 , v112
	.byte	W36
	.byte		        Ds2 
	.byte	W36
	.byte		        Fn2 
	.byte	W24
	.byte	PEND
/* 002   ----------------------------------------
 */mus_7_boss_pinch_11_002:
	.byte	W12
	.byte		N36   , Gs2 , v112
	.byte	W36
	.byte		N24   , An2 
	.byte	W24
	.byte		        As2 
	.byte	W24
	.byte	PEND
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_11_001
/* 004   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_11_002
/* 005   ----------------------------------------
 */mus_7_boss_pinch_11_005:
	.byte		N36   , Dn2 , v100
	.byte	W36
	.byte		        Ds2 
	.byte	W36
	.byte		        Fn2 
	.byte	W24
	.byte	PEND
/* 006   ----------------------------------------
 */mus_7_boss_pinch_11_006:
	.byte	W12
	.byte		N36   , Gs2 , v100
	.byte	W36
	.byte		N24   , An2 
	.byte	W24
	.byte		        As2 
	.byte	W24
	.byte	PEND
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_11_005
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_11_006
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
 */mus_7_boss_pinch_11_017:
	.byte		N36   , An2 , v112
	.byte	W36
	.byte		        As2 
	.byte	W36
	.byte		        Cn3 
	.byte	W24
	.byte	PEND
/* 018   ----------------------------------------
 */mus_7_boss_pinch_11_018:
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
	 mPtr	mus_7_boss_pinch_11_017
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_11_018
/* 021   ----------------------------------------
 */mus_7_boss_pinch_11_021:
	.byte		N36   , Bn2 , v112
	.byte	W36
	.byte		        Cn3 
	.byte	W36
	.byte		        Dn3 
	.byte	W24
	.byte	PEND
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_11_002
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_11_021
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_11_002
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_11_021
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_11_002
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_11_021
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_7_boss_pinch_11_002
/* 029   ----------------------------------------
 */	.byte	W96
/* 030   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_7_boss_pinch_11_B1
mus_7_boss_pinch_11_B2:
/* 031   ----------------------------------------
 */	.byte	W96
/* 032   ----------------------------------------
 */	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_7_boss_pinch):
	.byte	11	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_7_boss_pinch_pri	/* Priority */
	.byte	mus_7_boss_pinch_rev	/* Reverb */

mAlignWord
	mPtr	mus_7_boss_pinch_grp

	mPtr	mus_7_boss_pinch_1
	mPtr	mus_7_boss_pinch_2
	mPtr	mus_7_boss_pinch_3
	mPtr	mus_7_boss_pinch_4
	mPtr	mus_7_boss_pinch_5
	mPtr	mus_7_boss_pinch_6
	mPtr	mus_7_boss_pinch_7
	mPtr	mus_7_boss_pinch_8
	mPtr	mus_7_boss_pinch_9
	mPtr	mus_7_boss_pinch_10
	mPtr	mus_7_boss_pinch_11

	.end
