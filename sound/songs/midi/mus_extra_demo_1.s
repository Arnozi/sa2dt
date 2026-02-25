	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_extra_demo_1_grp, voicegroup022
	.equ	mus_extra_demo_1_pri, 0
	.equ	mus_extra_demo_1_rev, reverb_set+0
	.equ	mus_extra_demo_1_mvl, 94
	.equ	mus_extra_demo_1_key, 0
	.equ	mus_extra_demo_1_tbs, 1
	.equ	mus_extra_demo_1_exg, 1
	.equ	mus_extra_demo_1_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_extra_demo_1)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_extra_demo_1_1:
	.byte	KEYSH , mus_extra_demo_1_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 140*mus_extra_demo_1_tbs/2
	.byte		VOICE , 42
	.byte		VOL   , 127*mus_extra_demo_1_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		LFOS  , 20
	.byte		MODT  , 0
	.byte		N06   , Dn2 , v127
	.byte	W03
mus_extra_demo_1_1_B1:
/* 001   ----------------------------------------
 */mus_extra_demo_1_1_001:
	.byte	W03
	.byte		N06   , Dn3 , v127
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W03
	.byte	PEND
/* 002   ----------------------------------------
 */mus_extra_demo_1_1_002:
	.byte	W03
	.byte		N06   , Dn3 , v127
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W03
	.byte	PEND
/* 003   ----------------------------------------
 */mus_extra_demo_1_1_003:
	.byte	W03
	.byte		N06   , Ds3 , v127
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W03
	.byte	PEND
/* 004   ----------------------------------------
 */mus_extra_demo_1_1_004:
	.byte	W03
	.byte		N06   , Ds3 , v127
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Dn2 
	.byte	W03
	.byte	PEND
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_1_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_1_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_1_003
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_1_004
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_1_001
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_1_002
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_1_003
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_1_004
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_1_001
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_1_002
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_1_003
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_1_004
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_1_001
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_1_002
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_1_003
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_1_004
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_1_001
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_1_002
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_1_003
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_1_004
	.byte	GOTO
	 mPtr	mus_extra_demo_1_1_B1
mus_extra_demo_1_1_B2:
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_1_001
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_1_002
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_1_003
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_1_004
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_1_001
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_1_002
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_1_003
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_1_004
/* 033   ----------------------------------------
 */	.byte	W03
	.byte		N06   , Dn3 , v127
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_extra_demo_1_2:
	.byte	KEYSH , mus_extra_demo_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 127
	.byte		VOL   , 114*mus_extra_demo_1_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N18   , Ds2 , v120
	.byte	W03
mus_extra_demo_1_2_B1:
/* 001   ----------------------------------------
 */mus_extra_demo_1_2_001:
	.byte	W21
	.byte		N18   , Ds2 , v120
	.byte	W24
	.byte		N18   
	.byte	W24
	.byte		N18   
	.byte	W24
	.byte		N18   
	.byte	W03
	.byte	PEND
/* 002   ----------------------------------------
 */mus_extra_demo_1_2_002:
	.byte	W21
	.byte		N18   , Ds2 , v120
	.byte	W24
	.byte		N18   
	.byte	W18
	.byte		N06   , Ds2 , v112
	.byte	W30
	.byte		N18   , Ds2 , v120
	.byte	W03
	.byte	PEND
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_2_001
/* 004   ----------------------------------------
 */mus_extra_demo_1_2_004:
	.byte	W21
	.byte		N18   , Ds2 , v120
	.byte	W24
	.byte		N18   
	.byte	W18
	.byte		N06   , Ds2 , v112
	.byte	W06
	.byte		N12   , Ds2 , v120
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W03
	.byte	PEND
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_2_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_2_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_2_001
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_2_004
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_2_001
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_2_002
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_2_001
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_2_004
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_2_001
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_2_004
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_2_001
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_2_004
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_2_001
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_2_002
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_2_001
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_2_004
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_2_001
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_2_002
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_2_001
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_2_004
	.byte	GOTO
	 mPtr	mus_extra_demo_1_2_B1
mus_extra_demo_1_2_B2:
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_2_001
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_2_002
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_2_001
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_2_004
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_2_001
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_2_004
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_2_001
/* 032   ----------------------------------------
 */	.byte	W21
	.byte		N18   , Ds2 , v120
	.byte	W24
	.byte		N18   
	.byte	W18
	.byte		N06   , Ds2 , v112
	.byte	W06
	.byte		N12   , Ds2 , v120
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_extra_demo_1_3:
	.byte	KEYSH , mus_extra_demo_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 127
	.byte		VOL   , 109*mus_extra_demo_1_mvl/mxv
	.byte		N24   , Cs2 , v127
	.byte	W03
mus_extra_demo_1_3_B1:
/* 001   ----------------------------------------
 */mus_extra_demo_1_3_001:
	.byte	W09
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
	.byte		N12   , Ds1 , v072
	.byte	W03
	.byte	PEND
/* 002   ----------------------------------------
 */mus_extra_demo_1_3_002:
	.byte	W09
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
	.byte		N11   , Ds1 , v072
	.byte	W03
	.byte	PEND
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_3_001
/* 004   ----------------------------------------
 */mus_extra_demo_1_3_004:
	.byte	W09
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
	.byte		N36   , Fs2 , v120
	.byte	W03
	.byte	PEND
/* 005   ----------------------------------------
 */mus_extra_demo_1_3_005:
	.byte	W09
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
	.byte		        Dn1 , v072
	.byte	W03
	.byte	PEND
/* 006   ----------------------------------------
 */mus_extra_demo_1_3_006:
	.byte	W03
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
	.byte		        Dn1 , v072
	.byte	W03
	.byte	PEND
/* 007   ----------------------------------------
 */mus_extra_demo_1_3_007:
	.byte	W03
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
	.byte	W03
	.byte	PEND
/* 008   ----------------------------------------
 */mus_extra_demo_1_3_008:
	.byte	W03
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
	.byte		N24   , Cs2 , v120
	.byte	W03
	.byte	PEND
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_3_001
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_3_001
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_3_001
/* 012   ----------------------------------------
 */mus_extra_demo_1_3_012:
	.byte	W09
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
	.byte		N24   , Fs2 , v120
	.byte	W03
	.byte	PEND
/* 013   ----------------------------------------
 */mus_extra_demo_1_3_013:
	.byte	W09
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
	.byte		N12   , En1 , v072
	.byte	W03
	.byte	PEND
/* 014   ----------------------------------------
 */mus_extra_demo_1_3_014:
	.byte	W09
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
	.byte		N12   , En1 , v072
	.byte	W03
	.byte	PEND
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_3_014
/* 016   ----------------------------------------
 */	.byte	W09
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
	.byte		N24   , Cs2 , v127
	.byte	W03
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_3_001
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_3_002
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_3_001
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_3_004
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_3_005
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_3_006
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_3_007
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_3_008
	.byte	GOTO
	 mPtr	mus_extra_demo_1_3_B1
mus_extra_demo_1_3_B2:
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_3_001
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_3_001
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_3_001
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_3_012
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_3_013
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_3_014
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_3_014
/* 032   ----------------------------------------
 */	.byte	W09
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
	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_extra_demo_1_4:
	.byte	KEYSH , mus_extra_demo_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 93
	.byte		VOL   , 109*mus_extra_demo_1_mvl/mxv
	.byte		MOD   , 50
	.byte		LFOS  , 40
	.byte		MODT  , 1
	.byte	PRIO  , 10
	.byte		PAN   , c_v+0
	.byte	W03
mus_extra_demo_1_4_B1:
/* 001   ----------------------------------------
 */mus_extra_demo_1_4_001:
	.byte	W09
	.byte		N11   , Fn3 , v124
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N17   , Fn3 , v116
	.byte		N17   , Dn4 
	.byte	W18
	.byte		N11   , Fn3 , v104
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N17   , Fn3 , v096
	.byte		N17   , Dn4 
	.byte	W18
	.byte		        Fn3 , v080
	.byte		N17   , Dn4 
	.byte	W18
	.byte		        Fn3 , v068
	.byte		N17   , Dn4 
	.byte	W09
	.byte	PEND
/* 002   ----------------------------------------
 */mus_extra_demo_1_4_002:
	.byte	W09
	.byte		N17   , Fn3 , v056
	.byte		N17   , Dn4 
	.byte	W18
	.byte		        Fn3 , v044
	.byte		N17   , Dn4 
	.byte	W18
	.byte		        Fn3 , v028
	.byte		N17   , Dn4 
	.byte	W18
	.byte		        Fn3 , v016
	.byte		N17   , Dn4 
	.byte	W18
	.byte		N23   , Fn3 , v004
	.byte		N23   , Dn4 
	.byte	W15
	.byte	PEND
/* 003   ----------------------------------------
 */mus_extra_demo_1_4_003:
	.byte	W09
	.byte		N11   , Gn3 , v124
	.byte		N11   , Ds4 
	.byte	W12
	.byte		N17   , Gn3 , v116
	.byte		N17   , Ds4 
	.byte	W18
	.byte		N11   , Gn3 , v104
	.byte		N11   , Ds4 
	.byte	W12
	.byte		N17   , Gn3 , v096
	.byte		N17   , Ds4 
	.byte	W18
	.byte		        Gn3 , v080
	.byte		N17   , Ds4 
	.byte	W18
	.byte		        Gn3 , v068
	.byte		N17   , Ds4 
	.byte	W09
	.byte	PEND
/* 004   ----------------------------------------
 */mus_extra_demo_1_4_004:
	.byte	W09
	.byte		N17   , Gn3 , v056
	.byte		N17   , Ds4 
	.byte	W18
	.byte		        Gn3 , v044
	.byte		N17   , Ds4 
	.byte	W18
	.byte		        Gn3 , v028
	.byte		N17   , Ds4 
	.byte	W18
	.byte		        Gn3 , v016
	.byte		N17   , Ds4 
	.byte	W18
	.byte		N11   , Gn3 , v004
	.byte		N11   , Ds4 
	.byte	W09
	.byte		VOICE , 93
	.byte		VOL   , 109*mus_extra_demo_1_mvl/mxv
	.byte		MOD   , 2
	.byte		LFOS  , 40
	.byte		MODT  , 1
	.byte	PRIO  , 10
	.byte		PAN   , c_v+0
	.byte	W06
	.byte	PEND
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_4_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_4_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_4_003
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_4_004
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_4_001
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_4_002
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_4_003
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_4_004
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_4_001
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_4_002
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_4_003
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_4_004
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_4_001
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_4_002
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_4_003
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_4_004
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_4_001
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_4_002
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_4_003
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_4_004
	.byte	GOTO
	 mPtr	mus_extra_demo_1_4_B1
mus_extra_demo_1_4_B2:
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_4_001
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_4_002
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_4_003
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_4_004
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_4_001
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_4_002
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_4_003
/* 032   ----------------------------------------
 */	.byte	W09
	.byte		N17   , Gn3 , v056
	.byte		N17   , Ds4 
	.byte	W18
	.byte		        Gn3 , v044
	.byte		N17   , Ds4 
	.byte	W18
	.byte		        Gn3 , v028
	.byte		N17   , Ds4 
	.byte	W18
	.byte		        Gn3 , v016
	.byte		N17   , Ds4 
	.byte	W18
	.byte		N11   , Gn3 , v004
	.byte		N11   , Ds4 
	.byte	W09
	.byte		VOICE , 93
	.byte		VOL   , 109*mus_extra_demo_1_mvl/mxv
	.byte		MOD   , 2
	.byte		LFOS  , 40
	.byte		MODT  , 1
	.byte	PRIO  , 10
	.byte		PAN   , c_v+0
	.byte	W02
	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_extra_demo_1_5:
	.byte	KEYSH , mus_extra_demo_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 2
	.byte		VOL   , 49*mus_extra_demo_1_mvl/mxv
	.byte		PAN   , c_v-30
	.byte		MOD   , 2
	.byte		LFOS  , 20
	.byte		MODT  , 0
	.byte	W03
mus_extra_demo_1_5_B1:
/* 001   ----------------------------------------
 */	.byte		VOL   , 49*mus_extra_demo_1_mvl/mxv
	.byte		PAN   , c_v-30
	.byte	W09
	.byte		N11   , Dn5 , v124
	.byte	W12
	.byte		N17   , Dn5 , v116
	.byte	W18
	.byte		N11   , Dn5 , v104
	.byte	W12
	.byte		N17   , Dn5 , v096
	.byte	W18
	.byte		        Dn5 , v080
	.byte	W18
	.byte		        Dn5 , v068
	.byte	W09
/* 002   ----------------------------------------
 */mus_extra_demo_1_5_002:
	.byte	W09
	.byte		N17   , Dn5 , v056
	.byte	W18
	.byte		        Dn5 , v044
	.byte	W18
	.byte		        Dn5 , v028
	.byte	W18
	.byte		        Dn5 , v016
	.byte	W18
	.byte		N23   , Dn5 , v004
	.byte	W15
	.byte	PEND
/* 003   ----------------------------------------
 */mus_extra_demo_1_5_003:
	.byte	W09
	.byte		N11   , Ds5 , v124
	.byte	W12
	.byte		N17   , Ds5 , v116
	.byte	W18
	.byte		N11   , Ds5 , v104
	.byte	W12
	.byte		N17   , Ds5 , v096
	.byte	W18
	.byte		        Ds5 , v080
	.byte	W18
	.byte		        Ds5 , v068
	.byte	W09
	.byte	PEND
/* 004   ----------------------------------------
 */	.byte	W09
	.byte		        Ds5 , v056
	.byte	W18
	.byte		        Ds5 , v044
	.byte	W18
	.byte		        Ds5 , v028
	.byte	W18
	.byte		        Ds5 , v016
	.byte	W18
	.byte		N05   , Ds5 , v004
	.byte	W12
	.byte		VOL   , 49*mus_extra_demo_1_mvl/mxv
	.byte	W03
/* 005   ----------------------------------------
 */	.byte	W09
	.byte		N11   , Dn5 , v124
	.byte	W12
	.byte		N17   , Dn5 , v116
	.byte	W18
	.byte		N11   , Dn5 , v104
	.byte	W12
	.byte		N17   , Dn5 , v096
	.byte	W18
	.byte		        Dn5 , v080
	.byte	W18
	.byte		        Dn5 , v068
	.byte	W09
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_5_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_5_003
/* 008   ----------------------------------------
 */	.byte	W09
	.byte		N17   , Ds5 , v056
	.byte	W18
	.byte		        Ds5 , v044
	.byte	W18
	.byte		        Ds5 , v028
	.byte	W18
	.byte		        Ds5 , v016
	.byte	W18
	.byte		N05   , Ds5 , v004
	.byte	W12
	.byte		VOL   , 90*mus_extra_demo_1_mvl/mxv
	.byte	W03
/* 009   ----------------------------------------
 */mus_extra_demo_1_5_009:
	.byte	W44
	.byte	W01
	.byte		N06   , Dn5 , v100
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An4 
	.byte	W03
	.byte	PEND
/* 010   ----------------------------------------
 */mus_extra_demo_1_5_010:
	.byte	W03
	.byte		N06   , Fn4 , v100
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds3 , v096
	.byte	W03
	.byte	PEND
/* 011   ----------------------------------------
 */mus_extra_demo_1_5_011:
	.byte	W03
	.byte		N06   , Gn3 , v088
	.byte	W06
	.byte		        Ds3 , v084
	.byte	W06
	.byte		        As2 , v076
	.byte	W06
	.byte		        Ds3 , v068
	.byte	W06
	.byte		        As2 , v060
	.byte	W06
	.byte		        Gn2 , v052
	.byte	W06
	.byte		        As2 , v048
	.byte	W06
	.byte		        Gn2 , v040
	.byte	W06
	.byte		        Ds2 , v032
	.byte	W06
	.byte		        Gn2 , v024
	.byte	W06
	.byte		        Ds2 , v016
	.byte	W06
	.byte		        As1 , v012
	.byte	W24
	.byte	W03
	.byte	PEND
/* 012   ----------------------------------------
 */	.byte	W96
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_5_009
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_5_010
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_5_011
/* 016   ----------------------------------------
 */	.byte	W92
	.byte		VOL   , 113*mus_extra_demo_1_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N04   , Cs3 , v076
	.byte	W04
/* 017   ----------------------------------------
 */	.byte		TIE   , Dn3 , v108
	.byte	W96
/* 018   ----------------------------------------
 */	.byte	W44
	.byte	W02
	.byte		N28   , An2 , v092
	.byte	W01
	.byte		EOT   , Dn3 
	.byte	W23
	.byte		N18   , Gn3 , v096
	.byte	W16
	.byte		N04   , Fs3 , v068
	.byte	W04
	.byte		N06   , Fn3 , v108
	.byte	W04
	.byte		TIE   , Ds3 , v104
	.byte	W02
/* 019   ----------------------------------------
 */	.byte	W96
/* 020   ----------------------------------------
 */	.byte	W68
	.byte	W03
	.byte		N20   , Fn3 , v096
	.byte	W02
	.byte		EOT   , Ds3 
	.byte	W14
	.byte		N07   , En3 , v092
	.byte	W05
	.byte		        Ds3 , v100
	.byte	W04
/* 021   ----------------------------------------
 */	.byte	W02
	.byte		TIE   , Dn3 , v092
	.byte	W92
	.byte	W02
/* 022   ----------------------------------------
 */	.byte	W44
	.byte		N28   , An2 , v088
	.byte	W01
	.byte		EOT   , Dn3 
	.byte	W24
	.byte		N19   , Gn3 , v096
	.byte	W15
	.byte		N04   , Fs3 , v076
	.byte	W04
	.byte		N07   , Fn3 , v108
	.byte	W05
	.byte		TIE   , Ds3 , v088
	.byte	W03
/* 023   ----------------------------------------
 */	.byte	W96
/* 024   ----------------------------------------
 */	.byte	W78
	.byte	W01
	.byte		EOT   
	.byte	W17
	.byte	GOTO
	 mPtr	mus_extra_demo_1_5_B1
mus_extra_demo_1_5_B2:
/* 025   ----------------------------------------
 */	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_extra_demo_1_6:
	.byte	KEYSH , mus_extra_demo_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 12
	.byte		VOL   , 49*mus_extra_demo_1_mvl/mxv
	.byte		PAN   , c_v+30
	.byte		MOD   , 50
	.byte		LFOS  , 40
	.byte		MODT  , 1
	.byte	W03
mus_extra_demo_1_6_B1:
/* 001   ----------------------------------------
 */	.byte		VOL   , 49*mus_extra_demo_1_mvl/mxv
	.byte		PAN   , c_v+30
	.byte	W09
	.byte		N11   , Fn4 , v124
	.byte	W12
	.byte		N17   , Fn4 , v116
	.byte	W18
	.byte		N11   , Fn4 , v104
	.byte	W12
	.byte		N17   , Fn4 , v096
	.byte	W18
	.byte		        Fn4 , v080
	.byte	W18
	.byte		        Fn4 , v068
	.byte	W09
/* 002   ----------------------------------------
 */mus_extra_demo_1_6_002:
	.byte	W09
	.byte		N17   , Fn4 , v056
	.byte	W18
	.byte		        Fn4 , v044
	.byte	W18
	.byte		        Fn4 , v028
	.byte	W18
	.byte		        Fn4 , v016
	.byte	W18
	.byte		N23   , Fn4 , v004
	.byte	W15
	.byte	PEND
/* 003   ----------------------------------------
 */mus_extra_demo_1_6_003:
	.byte	W09
	.byte		N11   , Gn4 , v124
	.byte	W12
	.byte		N17   , Gn4 , v116
	.byte	W18
	.byte		N11   , Gn4 , v104
	.byte	W12
	.byte		N17   , Gn4 , v096
	.byte	W18
	.byte		        Gn4 , v080
	.byte	W18
	.byte		        Gn4 , v068
	.byte	W09
	.byte	PEND
/* 004   ----------------------------------------
 */	.byte	W09
	.byte		        Gn4 , v056
	.byte	W18
	.byte		        Gn4 , v044
	.byte	W18
	.byte		        Gn4 , v028
	.byte	W18
	.byte		        Gn4 , v016
	.byte	W18
	.byte		N05   , Gn4 , v004
	.byte	W12
	.byte		VOL   , 49*mus_extra_demo_1_mvl/mxv
	.byte	W03
/* 005   ----------------------------------------
 */	.byte	W09
	.byte		N11   , Fn4 , v124
	.byte	W12
	.byte		N17   , Fn4 , v116
	.byte	W18
	.byte		N11   , Fn4 , v104
	.byte	W12
	.byte		N17   , Fn4 , v096
	.byte	W18
	.byte		        Fn4 , v080
	.byte	W18
	.byte		        Fn4 , v068
	.byte	W09
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_6_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_6_003
/* 008   ----------------------------------------
 */	.byte	W09
	.byte		N17   , Gn4 , v056
	.byte	W18
	.byte		        Gn4 , v044
	.byte	W18
	.byte		        Gn4 , v028
	.byte	W18
	.byte		        Gn4 , v016
	.byte	W18
	.byte		N05   , Gn4 , v004
	.byte	W15
/* 009   ----------------------------------------
 */	.byte	W03
	.byte		VOL   , 90*mus_extra_demo_1_mvl/mxv
	.byte	W48
	.byte		N06   , Dn5 , v072
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W03
/* 010   ----------------------------------------
 */mus_extra_demo_1_6_010:
	.byte	W03
	.byte		N06   , An4 , v072
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fn3 
	.byte	W03
	.byte	PEND
/* 011   ----------------------------------------
 */mus_extra_demo_1_6_011:
	.byte	W03
	.byte		N06   , Ds3 , v068
	.byte	W06
	.byte		        Gn3 , v060
	.byte	W06
	.byte		        Ds3 , v052
	.byte	W06
	.byte		        As2 , v044
	.byte	W06
	.byte		        Ds3 , v040
	.byte	W06
	.byte		        As2 , v032
	.byte	W06
	.byte		        Gn2 , v024
	.byte	W06
	.byte		        As2 , v016
	.byte	W06
	.byte		        Gn2 , v008
	.byte	W06
	.byte		        Ds2 , v004
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        As1 
	.byte	W21
	.byte	PEND
/* 012   ----------------------------------------
 */	.byte	W96
/* 013   ----------------------------------------
 */	.byte	W48
	.byte	W03
	.byte		        Dn5 , v072
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W03
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_6_010
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_6_011
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
	.byte	GOTO
	 mPtr	mus_extra_demo_1_6_B1
mus_extra_demo_1_6_B2:
/* 025   ----------------------------------------
 */	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_extra_demo_1_7:
	.byte	KEYSH , mus_extra_demo_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 72
	.byte		VOL   , 117*mus_extra_demo_1_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N02   , Dn2 , v112
	.byte	W02
mus_extra_demo_1_7_B1:
/* 001   ----------------------------------------
 */mus_extra_demo_1_7_001:
	.byte		N02   , En2 , v116
	.byte	W02
	.byte		        Fn2 , v120
	.byte	W01
	.byte		        Gn2 
	.byte	W02
	.byte		        An2 
	.byte	W01
	.byte		N03   , Bn2 , v112
	.byte	W03
	.byte		N08   , Cn3 , v124
	.byte	W12
	.byte		N14   , Cn3 , v116
	.byte	W18
	.byte		N08   , Cn3 , v104
	.byte	W12
	.byte		N14   , Cn3 , v096
	.byte	W18
	.byte		        Cn3 , v080
	.byte	W18
	.byte		        Cn3 , v068
	.byte	W09
	.byte	PEND
/* 002   ----------------------------------------
 */mus_extra_demo_1_7_002:
	.byte	W09
	.byte		N14   , Cn3 , v056
	.byte	W18
	.byte		        Cn3 , v044
	.byte	W18
	.byte		        Cn3 , v028
	.byte	W18
	.byte		        Cn3 , v016
	.byte	W32
	.byte	W01
	.byte	PEND
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W84
	.byte	W03
	.byte		N04   , An1 , v124
	.byte	W03
	.byte		N03   , Bn1 , v076
	.byte	W02
	.byte		N02   , Cn2 , v080
	.byte	W02
	.byte		        Dn2 , v112
	.byte	W02
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_7_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_7_002
/* 007   ----------------------------------------
 */	.byte	W96
/* 008   ----------------------------------------
 */	.byte	W96
/* 009   ----------------------------------------
 */mus_extra_demo_1_7_009:
	.byte	W03
	.byte		N04   , An1 , v124
	.byte	W03
	.byte		N03   , Bn1 , v076
	.byte	W02
	.byte		N02   , Cn2 , v080
	.byte	W02
	.byte		        Dn2 , v112
	.byte	W02
	.byte		        En2 , v116
	.byte	W02
	.byte		        Fn2 , v120
	.byte	W01
	.byte		        Gn2 
	.byte	W02
	.byte		        An2 
	.byte	W01
	.byte		N03   , Bn2 , v112
	.byte	W03
	.byte		N11   , Cn3 , v124
	.byte	W12
	.byte		N17   , Cn3 , v116
	.byte	W18
	.byte		N11   , Cn3 , v104
	.byte	W12
	.byte		N17   , Cn3 , v096
	.byte	W18
	.byte		        Cn3 , v080
	.byte	W15
	.byte	PEND
/* 010   ----------------------------------------
 */mus_extra_demo_1_7_010:
	.byte	W03
	.byte		N17   , Cn3 , v068
	.byte	W18
	.byte		        Cn3 , v056
	.byte	W18
	.byte		        Cn3 , v044
	.byte	W18
	.byte		        Cn3 , v028
	.byte	W18
	.byte		        Cn3 , v016
	.byte	W21
	.byte	PEND
/* 011   ----------------------------------------
 */	.byte	W96
/* 012   ----------------------------------------
 */	.byte	W96
/* 013   ----------------------------------------
 */mus_extra_demo_1_7_013:
	.byte	W03
	.byte		N04   , An1 , v124
	.byte	W03
	.byte		N03   , Bn1 , v076
	.byte	W02
	.byte		N02   , Cn2 , v080
	.byte	W02
	.byte		        Dn2 , v112
	.byte	W02
	.byte		        En2 , v116
	.byte	W02
	.byte		        Fn2 , v120
	.byte	W01
	.byte		        Gn2 
	.byte	W02
	.byte		        An2 
	.byte	W01
	.byte		N03   , Bn2 , v112
	.byte	W03
	.byte		N08   , Cn3 , v124
	.byte	W12
	.byte		N14   , Cn3 , v116
	.byte	W18
	.byte		N08   , Cn3 , v104
	.byte	W12
	.byte		N14   , Cn3 , v096
	.byte	W18
	.byte		        Cn3 , v080
	.byte	W15
	.byte	PEND
/* 014   ----------------------------------------
 */mus_extra_demo_1_7_014:
	.byte	W03
	.byte		N14   , Cn3 , v068
	.byte	W18
	.byte		        Cn3 , v056
	.byte	W18
	.byte		        Cn3 , v044
	.byte	W18
	.byte		        Cn3 , v028
	.byte	W18
	.byte		        Cn3 , v016
	.byte	W21
	.byte	PEND
/* 015   ----------------------------------------
 */	.byte	W96
/* 016   ----------------------------------------
 */	.byte	W96
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_7_013
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_7_014
/* 019   ----------------------------------------
 */	.byte	W96
/* 020   ----------------------------------------
 */	.byte	W96
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_7_009
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_7_010
/* 023   ----------------------------------------
 */	.byte	W96
/* 024   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_extra_demo_1_7_B1
mus_extra_demo_1_7_B2:
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_7_013
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_7_014
/* 027   ----------------------------------------
 */	.byte	W96
/* 028   ----------------------------------------
 */	.byte	W96
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_7_013
/* 030   ----------------------------------------
 */	.byte	W03
	.byte		N14   , Cn3 , v068
	.byte	W18
	.byte		        Cn3 , v056
	.byte	W18
	.byte		        Cn3 , v044
	.byte	W18
	.byte		        Cn3 , v028
	.byte	W18
	.byte		        Cn3 , v016
	.byte	W14
	.byte	FINE

/* **************** Track 8 (Midi-Chn.8) **************** */

mus_extra_demo_1_8:
	.byte	KEYSH , mus_extra_demo_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 73
	.byte		VOL   , 127*mus_extra_demo_1_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
mus_extra_demo_1_8_B1:
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W84
	.byte	W03
	.byte		N04   , An1 , v124
	.byte	W03
	.byte		N03   , Bn1 , v076
	.byte	W02
	.byte		N02   , Cn2 , v080
	.byte	W02
	.byte		        Dn2 , v112
	.byte	W02
/* 003   ----------------------------------------
 */	.byte		        En2 , v116
	.byte	W02
	.byte		        Fn2 , v120
	.byte	W01
	.byte		        Gn2 
	.byte	W02
	.byte		        An2 
	.byte	W01
	.byte		N03   , Bn2 , v112
	.byte	W03
	.byte		N08   , Cn3 , v124
	.byte	W12
	.byte		N14   , Cn3 , v116
	.byte	W18
	.byte		N08   , Cn3 , v104
	.byte	W12
	.byte		N14   , Cn3 , v096
	.byte	W18
	.byte		        Cn3 , v080
	.byte	W18
	.byte		        Cn3 , v068
	.byte	W09
/* 004   ----------------------------------------
 */	.byte	W09
	.byte		        Cn3 , v056
	.byte	W18
	.byte		        Cn3 , v044
	.byte	W18
	.byte		        Cn3 , v028
	.byte	W18
	.byte		        Cn3 , v016
	.byte	W32
	.byte	W01
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte	W96
/* 007   ----------------------------------------
 */mus_extra_demo_1_8_007:
	.byte	W03
	.byte		N04   , An1 , v124
	.byte	W03
	.byte		N03   , Bn1 , v076
	.byte	W02
	.byte		N02   , Cn2 , v080
	.byte	W02
	.byte		        Dn2 , v112
	.byte	W02
	.byte		        En2 , v116
	.byte	W02
	.byte		        Fn2 , v120
	.byte	W01
	.byte		        Gn2 
	.byte	W02
	.byte		        An2 
	.byte	W01
	.byte		N03   , Bn2 , v112
	.byte	W03
	.byte		N08   , Cn3 , v124
	.byte	W12
	.byte		N14   , Cn3 , v116
	.byte	W18
	.byte		N08   , Cn3 , v104
	.byte	W12
	.byte		N14   , Cn3 , v096
	.byte	W18
	.byte		        Cn3 , v080
	.byte	W15
	.byte	PEND
/* 008   ----------------------------------------
 */mus_extra_demo_1_8_008:
	.byte	W03
	.byte		N14   , Cn3 , v068
	.byte	W18
	.byte		        Cn3 , v056
	.byte	W18
	.byte		        Cn3 , v044
	.byte	W18
	.byte		        Cn3 , v028
	.byte	W18
	.byte		        Cn3 , v016
	.byte	W21
	.byte	PEND
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */	.byte	W96
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_8_007
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_8_008
/* 013   ----------------------------------------
 */	.byte	W96
/* 014   ----------------------------------------
 */	.byte	W96
/* 015   ----------------------------------------
 */mus_extra_demo_1_8_015:
	.byte	W03
	.byte		N04   , An1 , v124
	.byte	W03
	.byte		N03   , Bn1 , v076
	.byte	W02
	.byte		N02   , Cn2 , v080
	.byte	W02
	.byte		        Dn2 , v112
	.byte	W02
	.byte		        En2 , v116
	.byte	W02
	.byte		        Fn2 , v120
	.byte	W01
	.byte		        Gn2 
	.byte	W02
	.byte		        An2 
	.byte	W01
	.byte		N03   , Bn2 , v112
	.byte	W03
	.byte		N11   , Cn3 , v124
	.byte	W12
	.byte		N17   , Cn3 , v116
	.byte	W18
	.byte		N11   , Cn3 , v104
	.byte	W12
	.byte		N17   , Cn3 , v096
	.byte	W18
	.byte		        Cn3 , v080
	.byte	W15
	.byte	PEND
/* 016   ----------------------------------------
 */	.byte	W03
	.byte		        Cn3 , v068
	.byte	W18
	.byte		        Cn3 , v056
	.byte	W18
	.byte		        Cn3 , v044
	.byte	W18
	.byte		        Cn3 , v028
	.byte	W18
	.byte		        Cn3 , v016
	.byte	W21
/* 017   ----------------------------------------
 */	.byte	W96
/* 018   ----------------------------------------
 */	.byte	W96
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_8_007
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_8_008
/* 021   ----------------------------------------
 */	.byte	W96
/* 022   ----------------------------------------
 */	.byte	W96
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_8_007
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_8_008
	.byte	GOTO
	 mPtr	mus_extra_demo_1_8_B1
mus_extra_demo_1_8_B2:
/* 025   ----------------------------------------
 */	.byte	W96
/* 026   ----------------------------------------
 */	.byte	W96
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_extra_demo_1_8_015
/* 028   ----------------------------------------
 */	.byte	W03
	.byte		N17   , Cn3 , v068
	.byte	W18
	.byte		        Cn3 , v056
	.byte	W18
	.byte		        Cn3 , v044
	.byte	W18
	.byte		        Cn3 , v028
	.byte	W18
	.byte		        Cn3 , v016
	.byte	W17
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_extra_demo_1):
	.byte	8	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_extra_demo_1_pri	/* Priority */
	.byte	mus_extra_demo_1_rev	/* Reverb */

mAlignWord
	mPtr	mus_extra_demo_1_grp

	mPtr	mus_extra_demo_1_1
	mPtr	mus_extra_demo_1_2
	mPtr	mus_extra_demo_1_3
	mPtr	mus_extra_demo_1_4
	mPtr	mus_extra_demo_1_5
	mPtr	mus_extra_demo_1_6
	mPtr	mus_extra_demo_1_7
	mPtr	mus_extra_demo_1_8

	.end
