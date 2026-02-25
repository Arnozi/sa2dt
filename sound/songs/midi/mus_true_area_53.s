	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_true_area_53_grp, voicegroup022
	.equ	mus_true_area_53_pri, 0
	.equ	mus_true_area_53_rev, reverb_set+0
	.equ	mus_true_area_53_mvl, 92
	.equ	mus_true_area_53_key, 0
	.equ	mus_true_area_53_tbs, 1
	.equ	mus_true_area_53_exg, 1
	.equ	mus_true_area_53_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_true_area_53)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_true_area_53_1:
	.byte	KEYSH , mus_true_area_53_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 160*mus_true_area_53_tbs/2
	.byte		VOICE , 67
	.byte		VOL   , 122*mus_true_area_53_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
/* 001   ----------------------------------------
 */mus_true_area_53_1_001:
	.byte		N18   , Dn2 , v120
	.byte	W18
	.byte		N06   , Cs2 
	.byte	W18
	.byte		N18   , Cn2 
	.byte	W18
	.byte		N06   , Bn1 
	.byte	W18
	.byte		        As1 
	.byte	W12
	.byte		N09   , An1 
	.byte	W12
	.byte	PEND
/* 002   ----------------------------------------
 */mus_true_area_53_1_002:
	.byte		N18   , Dn2 , v120
	.byte	W18
	.byte		N06   , Cs2 
	.byte	W18
	.byte		N18   , Cn2 
	.byte	W18
	.byte		N09   , Bn1 
	.byte	W18
	.byte		N06   , As1 
	.byte	W12
	.byte		N09   , An1 
	.byte	W12
	.byte	PEND
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_1_001
/* 004   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_1_002
mus_true_area_53_1_B1:
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_1_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_1_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_1_001
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_1_002
/* 009   ----------------------------------------
 */mus_true_area_53_1_009:
	.byte		N06   , Dn2 , v127
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
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
/* 010   ----------------------------------------
 */mus_true_area_53_1_010:
	.byte		N06   , Dn2 , v127
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
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte	PEND
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_1_009
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_1_010
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_1_009
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_1_010
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_1_009
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_1_010
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_1_009
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_1_010
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_1_009
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_1_010
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_1_009
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_1_010
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_1_009
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_1_010
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_1_009
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_1_010
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_1_009
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_1_010
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_1_009
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_1_010
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_1_009
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_1_010
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_1_001
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_1_002
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_1_001
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_1_002
	.byte	GOTO
	 mPtr	mus_true_area_53_1_B1
mus_true_area_53_1_B2:
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_true_area_53_2:
	.byte	KEYSH , mus_true_area_53_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 127
	.byte		VOL   , 127*mus_true_area_53_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
/* 001   ----------------------------------------
 */mus_true_area_53_2_001:
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
 */mus_true_area_53_2_002:
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
	 mPtr	mus_true_area_53_2_001
/* 004   ----------------------------------------
 */mus_true_area_53_2_004:
	.byte		N18   , Ds2 , v120
	.byte	W24
	.byte		N18   
	.byte	W24
	.byte		N18   
	.byte	W18
	.byte		N06   , Ds2 , v112
	.byte	W06
	.byte		        Bn2 , v120
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	PEND
mus_true_area_53_2_B1:
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_2_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_2_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_2_001
/* 008   ----------------------------------------
 */mus_true_area_53_2_008:
	.byte		N18   , Ds2 , v120
	.byte	W24
	.byte		N18   
	.byte	W24
	.byte		N06   , Cs1 
	.byte	W06
	.byte		        Cs1 , v112
	.byte	W06
	.byte		        Cs1 , v120
	.byte	W06
	.byte		        Cs1 , v100
	.byte	W06
	.byte		        Cs1 , v120
	.byte	W06
	.byte		        Cs1 , v112
	.byte	W06
	.byte		        Cs1 , v116
	.byte	W06
	.byte		        Cs1 , v120
	.byte	W06
	.byte	PEND
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_2_001
/* 010   ----------------------------------------
 */mus_true_area_53_2_010:
	.byte		N18   , Ds2 , v120
	.byte	W24
	.byte		N18   
	.byte	W24
	.byte		N18   
	.byte	W18
	.byte		N06   , Ds2 , v112
	.byte	W06
	.byte		        Cs1 , v120
	.byte	W06
	.byte		        Cs1 , v112
	.byte	W06
	.byte		        Cs1 , v116
	.byte	W06
	.byte		        Cs1 , v120
	.byte	W06
	.byte	PEND
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_2_001
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_2_002
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_2_001
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_2_010
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_2_001
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_2_002
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_2_001
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_2_010
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_2_001
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_2_002
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_2_001
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_2_002
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_2_001
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_2_002
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_2_001
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_2_010
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_2_001
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_2_002
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_2_001
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_2_002
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_2_001
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_2_008
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_2_001
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_2_002
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_2_001
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_2_004
	.byte	GOTO
	 mPtr	mus_true_area_53_2_B1
mus_true_area_53_2_B2:
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_true_area_53_3:
	.byte	KEYSH , mus_true_area_53_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 127
	.byte		VOL   , 122*mus_true_area_53_mvl/mxv
	.byte	W03
/* 001   ----------------------------------------
 */	.byte		N12   , En1 , v072
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
/* 002   ----------------------------------------
 */mus_true_area_53_3_002:
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
	 mPtr	mus_true_area_53_3_002
/* 004   ----------------------------------------
 */mus_true_area_53_3_004:
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
	.byte		        En1 , v052
	.byte	W06
	.byte	PEND
mus_true_area_53_3_B1:
/* 005   ----------------------------------------
 */mus_true_area_53_3_005:
	.byte		N24   , Cs2 , v127
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
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_3_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_3_002
/* 008   ----------------------------------------
 */mus_true_area_53_3_008:
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
	 mPtr	mus_true_area_53_3_005
/* 010   ----------------------------------------
 */mus_true_area_53_3_010:
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
	 mPtr	mus_true_area_53_3_008
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_3_010
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
 */mus_true_area_53_3_017:
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
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_3_002
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_3_002
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
 */mus_true_area_53_3_022:
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
	 mPtr	mus_true_area_53_3_022
/* 024   ----------------------------------------
 */	.byte		N12   , En1 , v072
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
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_3_005
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_3_002
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_3_002
/* 028   ----------------------------------------
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
/* 029   ----------------------------------------
 */	.byte		N24   , Gn2 , v127
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
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_3_002
/* 031   ----------------------------------------
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
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
/* 032   ----------------------------------------
 */	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		        Ds1 , v080
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
	.byte		N12   
	.byte	W12
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_3_017
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_3_002
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_3_002
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_3_004
	.byte	GOTO
	 mPtr	mus_true_area_53_3_B1
mus_true_area_53_3_B2:
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_true_area_53_4:
	.byte	KEYSH , mus_true_area_53_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 86
	.byte		VOL   , 122*mus_true_area_53_mvl/mxv
	.byte		MOD   , 50
	.byte		LFOS  , 40
	.byte		MODT  , 1
	.byte	PRIO  , 10
	.byte		PAN   , c_v-30
	.byte	W03
/* 001   ----------------------------------------
 */mus_true_area_53_4_001:
	.byte		N18   , Dn3 , v120
	.byte	W18
	.byte		N06   , Cs3 
	.byte	W18
	.byte		N18   , Cn3 
	.byte	W18
	.byte		N06   , Bn2 
	.byte	W18
	.byte		        As2 
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
	.byte	PEND
/* 002   ----------------------------------------
 */mus_true_area_53_4_002:
	.byte		N18   , Dn3 , v120
	.byte	W18
	.byte		N06   , Cs3 
	.byte	W18
	.byte		N18   , Cn3 
	.byte	W18
	.byte		N09   , Bn2 
	.byte	W18
	.byte		N06   , As2 
	.byte	W12
	.byte		N09   , An2 
	.byte	W11
	.byte		PAN   , c_v+30
	.byte	W01
	.byte	PEND
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_4_001
/* 004   ----------------------------------------
 */mus_true_area_53_4_004:
	.byte		N18   , Dn3 , v120
	.byte	W18
	.byte		N06   , Cs3 
	.byte	W18
	.byte		N18   , Cn3 
	.byte	W18
	.byte		N09   , Bn2 
	.byte	W18
	.byte		N06   , As2 
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
	.byte	PEND
mus_true_area_53_4_B1:
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_4_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_4_004
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_4_001
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_4_004
/* 009   ----------------------------------------
 */mus_true_area_53_4_009:
	.byte		TIE   , Dn4 , v120
	.byte	W08
	.byte		MOD   , 51
	.byte	W04
	.byte		        52
	.byte	W04
	.byte		        53
	.byte	W05
	.byte		        54
	.byte	W04
	.byte		        55
	.byte	W04
	.byte		        56
	.byte	W04
	.byte		        57
	.byte	W04
	.byte		        58
	.byte	W05
	.byte		        59
	.byte	W04
	.byte		        60
	.byte	W04
	.byte		        61
	.byte	W04
	.byte		        62
	.byte	W04
	.byte		        63
	.byte	W05
	.byte		        64
	.byte	W04
	.byte		        65
	.byte	W04
	.byte		        66
	.byte	W04
	.byte		        67
	.byte	W04
	.byte		        68
	.byte	W05
	.byte		        69
	.byte	W04
	.byte		        70
	.byte	W04
	.byte		        71
	.byte	W04
	.byte	PEND
/* 010   ----------------------------------------
 */mus_true_area_53_4_010:
	.byte		MOD   , 72
	.byte	W04
	.byte		        73
	.byte	W05
	.byte		        74
	.byte	W04
	.byte		        75
	.byte	W04
	.byte		        76
	.byte	W04
	.byte		        77
	.byte	W04
	.byte		        78
	.byte	W05
	.byte		        79
	.byte	W04
	.byte		        80
	.byte	W04
	.byte		        81
	.byte	W04
	.byte		        82
	.byte	W04
	.byte		        83
	.byte	W05
	.byte		        84
	.byte	W04
	.byte		        85
	.byte	W04
	.byte		        86
	.byte	W04
	.byte		        87
	.byte	W04
	.byte		        88
	.byte	W05
	.byte	PEND
	.byte		EOT   , Dn4 
	.byte		MOD   , 50
	.byte		N06   , Fn4 , v120
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
/* 011   ----------------------------------------
 */mus_true_area_53_4_011:
	.byte		TIE   , Ds4 , v120
	.byte	W08
	.byte		MOD   , 51
	.byte	W04
	.byte		        52
	.byte	W04
	.byte		        53
	.byte	W05
	.byte		        54
	.byte	W04
	.byte		        55
	.byte	W04
	.byte		        56
	.byte	W04
	.byte		        57
	.byte	W04
	.byte		        58
	.byte	W05
	.byte		        59
	.byte	W04
	.byte		        60
	.byte	W04
	.byte		        61
	.byte	W04
	.byte		        62
	.byte	W04
	.byte		        63
	.byte	W05
	.byte		        64
	.byte	W04
	.byte		        65
	.byte	W04
	.byte		        66
	.byte	W04
	.byte		        67
	.byte	W04
	.byte		        68
	.byte	W05
	.byte		        69
	.byte	W04
	.byte		        70
	.byte	W04
	.byte		        71
	.byte	W04
	.byte	PEND
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_4_010
	.byte		EOT   , Ds4 
	.byte		MOD   , 50
	.byte		N06   , Fn4 , v120
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_4_009
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_4_010
	.byte		EOT   , Dn4 
	.byte		MOD   , 50
	.byte		N06   , Fn4 , v120
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_4_011
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_4_010
	.byte		EOT   , Ds4 
	.byte		MOD   , 50
	.byte		N12   , Fn4 , v120
	.byte	W12
	.byte		        Gn4 
	.byte	W12
/* 017   ----------------------------------------
 */mus_true_area_53_4_017:
	.byte		N36   , An4 , v120
	.byte	W08
	.byte		MOD   , 51
	.byte	W04
	.byte		        52
	.byte	W04
	.byte		        53
	.byte	W05
	.byte		        54
	.byte	W04
	.byte		        55
	.byte	W04
	.byte		        56
	.byte	W04
	.byte		        57
	.byte	W03
	.byte		N06   , Gn4 
	.byte	W01
	.byte		MOD   , 58
	.byte	W05
	.byte		        59
	.byte		N06   , Fn4 
	.byte	W04
	.byte		MOD   , 60
	.byte	W02
	.byte		TIE   , Dn4 
	.byte	W02
	.byte		MOD   , 61
	.byte	W04
	.byte		        62
	.byte	W04
	.byte		        63
	.byte	W05
	.byte		        64
	.byte	W04
	.byte		        65
	.byte	W04
	.byte		        66
	.byte	W04
	.byte		        67
	.byte	W04
	.byte		        68
	.byte	W05
	.byte		        69
	.byte	W04
	.byte		        70
	.byte	W04
	.byte		        71
	.byte	W04
	.byte	PEND
/* 018   ----------------------------------------
 */mus_true_area_53_4_018:
	.byte		MOD   , 72
	.byte	W04
	.byte		        73
	.byte	W05
	.byte		        74
	.byte	W04
	.byte		        75
	.byte	W04
	.byte		        76
	.byte	W04
	.byte		        77
	.byte	W04
	.byte		        78
	.byte	W05
	.byte		        79
	.byte	W04
	.byte		        80
	.byte	W04
	.byte		        81
	.byte	W04
	.byte		        82
	.byte	W04
	.byte		        83
	.byte	W05
	.byte		        84
	.byte	W04
	.byte		        85
	.byte	W04
	.byte		        86
	.byte	W04
	.byte		        87
	.byte	W04
	.byte		        88
	.byte	W05
	.byte		        50
	.byte	W24
	.byte	PEND
	.byte		EOT   , Dn4 
/* 019   ----------------------------------------
 */mus_true_area_53_4_019:
	.byte		N84   , Ds4 , v120
	.byte	W08
	.byte		MOD   , 51
	.byte	W04
	.byte		        52
	.byte	W04
	.byte		        53
	.byte	W05
	.byte		        54
	.byte	W04
	.byte		        55
	.byte	W04
	.byte		        56
	.byte	W04
	.byte		        57
	.byte	W04
	.byte		        58
	.byte	W05
	.byte		        59
	.byte	W04
	.byte		        60
	.byte	W04
	.byte		        61
	.byte	W04
	.byte		        62
	.byte	W04
	.byte		        63
	.byte	W05
	.byte		        64
	.byte	W04
	.byte		        65
	.byte	W04
	.byte		        66
	.byte	W04
	.byte		        67
	.byte	W04
	.byte		        68
	.byte	W05
	.byte		        69
	.byte		N06   , En4 
	.byte	W04
	.byte		MOD   , 70
	.byte	W02
	.byte		N06   , Fn4 
	.byte	W02
	.byte		MOD   , 71
	.byte	W04
	.byte	PEND
/* 020   ----------------------------------------
 */	.byte		        72
	.byte		N48   , Gn4 
	.byte	W04
	.byte		MOD   , 73
	.byte	W05
	.byte		        74
	.byte	W04
	.byte		        75
	.byte	W04
	.byte		        76
	.byte	W04
	.byte		        77
	.byte	W04
	.byte		        78
	.byte	W05
	.byte		        79
	.byte	W04
	.byte		        80
	.byte	W04
	.byte		        81
	.byte	W04
	.byte		        82
	.byte	W04
	.byte		        83
	.byte	W02
	.byte		N48   , As4 
	.byte	W03
	.byte		MOD   , 84
	.byte	W04
	.byte		        85
	.byte	W04
	.byte		        86
	.byte	W04
	.byte		        87
	.byte	W04
	.byte		        88
	.byte	W05
	.byte		        50
	.byte	W24
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_4_017
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_4_018
	.byte		EOT   , Dn4 
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_4_019
/* 024   ----------------------------------------
 */	.byte		MOD   , 72
	.byte		N48   , Gn4 , v120
	.byte	W04
	.byte		MOD   , 73
	.byte	W05
	.byte		        74
	.byte	W04
	.byte		        75
	.byte	W04
	.byte		        76
	.byte	W04
	.byte		        77
	.byte	W04
	.byte		        78
	.byte	W05
	.byte		        79
	.byte	W04
	.byte		        80
	.byte	W04
	.byte		        81
	.byte	W04
	.byte		        82
	.byte	W04
	.byte		        83
	.byte	W02
	.byte		N48   , Ds5 
	.byte	W03
	.byte		MOD   , 84
	.byte	W04
	.byte		        85
	.byte	W04
	.byte		        86
	.byte	W04
	.byte		        87
	.byte	W04
	.byte		        88
	.byte	W05
	.byte		        50
	.byte	W24
/* 025   ----------------------------------------
 */	.byte		TIE   , Dn5 
	.byte	W06
	.byte		MOD   , 51
	.byte	W06
	.byte		        52
	.byte	W07
	.byte		        53
	.byte	W06
	.byte		        54
	.byte	W07
	.byte		        55
	.byte	W06
	.byte		        56
	.byte	W06
	.byte		        57
	.byte	W07
	.byte		        58
	.byte	W06
	.byte		        59
	.byte	W07
	.byte		        60
	.byte	W06
	.byte		        61
	.byte	W06
	.byte		        62
	.byte	W07
	.byte		        63
	.byte	W06
	.byte		        64
	.byte	W07
/* 026   ----------------------------------------
 */	.byte		        65
	.byte	W06
	.byte		        66
	.byte	W06
	.byte		        67
	.byte	W07
	.byte		        68
	.byte	W06
	.byte		        69
	.byte	W07
	.byte		        70
	.byte	W06
	.byte		        71
	.byte	W06
	.byte		        72
	.byte	W07
	.byte		        73
	.byte	W06
	.byte		        74
	.byte	W07
	.byte		        75
	.byte	W06
	.byte		        76
	.byte	W06
	.byte		        77
	.byte	W07
	.byte		        78
	.byte	W06
	.byte		        79
	.byte	W07
	.byte		EOT   
/* 027   ----------------------------------------
 */	.byte		MOD   , 80
	.byte		N96   , Ds5 
	.byte	W06
	.byte		MOD   , 81
	.byte	W06
	.byte		        82
	.byte	W07
	.byte		        83
	.byte	W06
	.byte		        84
	.byte	W07
	.byte		        85
	.byte	W06
	.byte		        86
	.byte	W06
	.byte		        87
	.byte	W07
	.byte		        88
	.byte	W06
	.byte		        89
	.byte	W07
	.byte		        90
	.byte	W06
	.byte		        91
	.byte	W06
	.byte		        92
	.byte	W07
	.byte		        93
	.byte	W06
	.byte		        94
	.byte	W07
/* 028   ----------------------------------------
 */	.byte		        95
	.byte		N48   , As5 
	.byte	W06
	.byte		MOD   , 96
	.byte	W06
	.byte		        97
	.byte	W07
	.byte		        98
	.byte	W06
	.byte		        99
	.byte	W07
	.byte		        100
	.byte	W06
	.byte		        101
	.byte	W06
	.byte		        102
	.byte	W04
	.byte		N48   , Gn5 
	.byte	W03
	.byte		MOD   , 103
	.byte	W06
	.byte		        104
	.byte	W07
	.byte		        105
	.byte	W06
	.byte		        106
	.byte	W06
	.byte		        107
	.byte	W07
	.byte		        108
	.byte	W06
	.byte		        109
	.byte	W07
/* 029   ----------------------------------------
 */	.byte		TIE   , Dn5 
	.byte	W96
/* 030   ----------------------------------------
 */	.byte	W96
	.byte		EOT   
/* 031   ----------------------------------------
 */	.byte		N84   , Ds5 
	.byte	W84
	.byte		N04   , En5 
	.byte	W04
	.byte		        Fn5 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
/* 032   ----------------------------------------
 */	.byte		N48   , Gn5 
	.byte	W48
	.byte		        Ds6 
	.byte	W48
/* 033   ----------------------------------------
 */	.byte		N24   , Dn6 
	.byte	W96
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_4_002
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_4_001
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_4_004
	.byte	GOTO
	 mPtr	mus_true_area_53_4_B1
mus_true_area_53_4_B2:
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_true_area_53_5:
	.byte	KEYSH , mus_true_area_53_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 85
	.byte		VOL   , 99*mus_true_area_53_mvl/mxv
	.byte		MOD   , 50
	.byte		LFOS  , 40
	.byte		MODT  , 1
	.byte	PRIO  , 5
	.byte		PAN   , c_v-30
	.byte	W03
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */mus_true_area_53_5_003:
	.byte		N18   , Dn3 , v112
	.byte	W18
	.byte		N06   , Cs3 
	.byte	W18
	.byte		N18   , Cn3 
	.byte	W18
	.byte		N06   , Bn2 
	.byte	W18
	.byte		        As2 
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
	.byte	PEND
/* 004   ----------------------------------------
 */mus_true_area_53_5_004:
	.byte		N18   , Dn3 , v112
	.byte	W18
	.byte		N06   , Cs3 
	.byte	W18
	.byte		N18   , Cn3 
	.byte	W18
	.byte		N09   , Bn2 
	.byte	W18
	.byte		N06   , As2 
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
	.byte	PEND
mus_true_area_53_5_B1:
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_5_003
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_5_004
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_5_003
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_5_004
/* 009   ----------------------------------------
 */mus_true_area_53_5_009:
	.byte		TIE   , Dn4 , v100
	.byte	W08
	.byte		MOD   , 51
	.byte	W04
	.byte		        52
	.byte	W04
	.byte		        53
	.byte	W05
	.byte		        54
	.byte	W04
	.byte		        55
	.byte	W04
	.byte		        56
	.byte	W04
	.byte		        57
	.byte	W04
	.byte		        58
	.byte	W05
	.byte		        59
	.byte	W04
	.byte		        60
	.byte	W04
	.byte		        61
	.byte	W04
	.byte		        62
	.byte	W04
	.byte		        63
	.byte	W05
	.byte		        64
	.byte	W04
	.byte		        65
	.byte	W04
	.byte		        66
	.byte	W04
	.byte		        67
	.byte	W04
	.byte		        68
	.byte	W05
	.byte		        69
	.byte	W04
	.byte		        70
	.byte	W04
	.byte		        71
	.byte	W04
	.byte	PEND
/* 010   ----------------------------------------
 */mus_true_area_53_5_010:
	.byte		MOD   , 72
	.byte	W04
	.byte		        73
	.byte	W05
	.byte		        74
	.byte	W04
	.byte		        75
	.byte	W04
	.byte		        76
	.byte	W04
	.byte		        77
	.byte	W04
	.byte		        78
	.byte	W05
	.byte		        79
	.byte	W04
	.byte		        80
	.byte	W04
	.byte		        81
	.byte	W04
	.byte		        82
	.byte	W04
	.byte		        83
	.byte	W05
	.byte		        84
	.byte	W04
	.byte		        85
	.byte	W04
	.byte		        86
	.byte	W04
	.byte		        87
	.byte	W04
	.byte		        88
	.byte	W05
	.byte	PEND
	.byte		EOT   , Dn4 
	.byte		MOD   , 50
	.byte		N06   , Fn4 , v100
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
/* 011   ----------------------------------------
 */mus_true_area_53_5_011:
	.byte		TIE   , Ds4 , v100
	.byte	W08
	.byte		MOD   , 51
	.byte	W04
	.byte		        52
	.byte	W04
	.byte		        53
	.byte	W05
	.byte		        54
	.byte	W04
	.byte		        55
	.byte	W04
	.byte		        56
	.byte	W04
	.byte		        57
	.byte	W04
	.byte		        58
	.byte	W05
	.byte		        59
	.byte	W04
	.byte		        60
	.byte	W04
	.byte		        61
	.byte	W04
	.byte		        62
	.byte	W04
	.byte		        63
	.byte	W05
	.byte		        64
	.byte	W04
	.byte		        65
	.byte	W04
	.byte		        66
	.byte	W04
	.byte		        67
	.byte	W04
	.byte		        68
	.byte	W05
	.byte		        69
	.byte	W04
	.byte		        70
	.byte	W04
	.byte		        71
	.byte	W04
	.byte	PEND
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_5_010
	.byte		EOT   , Ds4 
	.byte		MOD   , 50
	.byte		N06   , Fn4 , v100
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_5_009
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_5_010
	.byte		EOT   , Dn4 
	.byte		MOD   , 50
	.byte		N06   , Fn4 , v100
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_5_011
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_5_010
	.byte		EOT   , Ds4 
	.byte		MOD   , 50
	.byte		N12   , Fn4 , v100
	.byte	W12
	.byte		        Gn4 
	.byte	W12
/* 017   ----------------------------------------
 */mus_true_area_53_5_017:
	.byte		N36   , An4 , v100
	.byte	W08
	.byte		MOD   , 51
	.byte	W04
	.byte		        52
	.byte	W04
	.byte		        53
	.byte	W05
	.byte		        54
	.byte	W04
	.byte		        55
	.byte	W04
	.byte		        56
	.byte	W04
	.byte		        57
	.byte	W03
	.byte		N06   , Gn4 
	.byte	W01
	.byte		MOD   , 58
	.byte	W05
	.byte		        59
	.byte		N06   , Fn4 
	.byte	W04
	.byte		MOD   , 60
	.byte	W02
	.byte		TIE   , Dn4 
	.byte	W02
	.byte		MOD   , 61
	.byte	W04
	.byte		        62
	.byte	W04
	.byte		        63
	.byte	W05
	.byte		        64
	.byte	W04
	.byte		        65
	.byte	W04
	.byte		        66
	.byte	W04
	.byte		        67
	.byte	W04
	.byte		        68
	.byte	W05
	.byte		        69
	.byte	W04
	.byte		        70
	.byte	W04
	.byte		        71
	.byte	W04
	.byte	PEND
/* 018   ----------------------------------------
 */mus_true_area_53_5_018:
	.byte		MOD   , 72
	.byte	W04
	.byte		        73
	.byte	W05
	.byte		        74
	.byte	W04
	.byte		        75
	.byte	W04
	.byte		        76
	.byte	W04
	.byte		        77
	.byte	W04
	.byte		        78
	.byte	W05
	.byte		        79
	.byte	W04
	.byte		        80
	.byte	W04
	.byte		        81
	.byte	W04
	.byte		        82
	.byte	W04
	.byte		        83
	.byte	W05
	.byte		        84
	.byte	W04
	.byte		        85
	.byte	W04
	.byte		        86
	.byte	W04
	.byte		        87
	.byte	W04
	.byte		        88
	.byte	W05
	.byte		        50
	.byte	W24
	.byte	PEND
	.byte		EOT   , Dn4 
/* 019   ----------------------------------------
 */mus_true_area_53_5_019:
	.byte		N84   , Ds4 , v100
	.byte	W08
	.byte		MOD   , 51
	.byte	W04
	.byte		        52
	.byte	W04
	.byte		        53
	.byte	W05
	.byte		        54
	.byte	W04
	.byte		        55
	.byte	W04
	.byte		        56
	.byte	W04
	.byte		        57
	.byte	W04
	.byte		        58
	.byte	W05
	.byte		        59
	.byte	W04
	.byte		        60
	.byte	W04
	.byte		        61
	.byte	W04
	.byte		        62
	.byte	W04
	.byte		        63
	.byte	W05
	.byte		        64
	.byte	W04
	.byte		        65
	.byte	W04
	.byte		        66
	.byte	W04
	.byte		        67
	.byte	W04
	.byte		        68
	.byte	W05
	.byte		        69
	.byte		N06   , En4 
	.byte	W04
	.byte		MOD   , 70
	.byte	W02
	.byte		N06   , Fn4 
	.byte	W02
	.byte		MOD   , 71
	.byte	W04
	.byte	PEND
/* 020   ----------------------------------------
 */	.byte		        72
	.byte		N48   , Gn4 
	.byte	W04
	.byte		MOD   , 73
	.byte	W05
	.byte		        74
	.byte	W04
	.byte		        75
	.byte	W04
	.byte		        76
	.byte	W04
	.byte		        77
	.byte	W04
	.byte		        78
	.byte	W05
	.byte		        79
	.byte	W04
	.byte		        80
	.byte	W04
	.byte		        81
	.byte	W04
	.byte		        82
	.byte	W04
	.byte		        83
	.byte	W02
	.byte		N48   , As4 
	.byte	W03
	.byte		MOD   , 84
	.byte	W04
	.byte		        85
	.byte	W04
	.byte		        86
	.byte	W04
	.byte		        87
	.byte	W04
	.byte		        88
	.byte	W05
	.byte		        50
	.byte	W24
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_5_017
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_5_018
	.byte		EOT   , Dn4 
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_5_019
/* 024   ----------------------------------------
 */	.byte		MOD   , 72
	.byte		N48   , Gn4 , v100
	.byte	W04
	.byte		MOD   , 73
	.byte	W05
	.byte		        74
	.byte	W04
	.byte		        75
	.byte	W04
	.byte		        76
	.byte	W04
	.byte		        77
	.byte	W04
	.byte		        78
	.byte	W05
	.byte		        79
	.byte	W04
	.byte		        80
	.byte	W04
	.byte		        81
	.byte	W04
	.byte		        82
	.byte	W04
	.byte		        83
	.byte	W02
	.byte		N48   , Ds5 
	.byte	W03
	.byte		MOD   , 84
	.byte	W04
	.byte		        85
	.byte	W04
	.byte		        86
	.byte	W04
	.byte		        87
	.byte	W04
	.byte		        88
	.byte	W05
	.byte		        50
	.byte	W24
/* 025   ----------------------------------------
 */	.byte		TIE   , Dn5 
	.byte	W06
	.byte		MOD   , 51
	.byte	W06
	.byte		        52
	.byte	W07
	.byte		        53
	.byte	W06
	.byte		        54
	.byte	W07
	.byte		        55
	.byte	W06
	.byte		        56
	.byte	W06
	.byte		        57
	.byte	W07
	.byte		        58
	.byte	W06
	.byte		        59
	.byte	W07
	.byte		        60
	.byte	W06
	.byte		        61
	.byte	W06
	.byte		        62
	.byte	W07
	.byte		        63
	.byte	W06
	.byte		        64
	.byte	W07
/* 026   ----------------------------------------
 */	.byte		        65
	.byte	W06
	.byte		        66
	.byte	W06
	.byte		        67
	.byte	W07
	.byte		        68
	.byte	W06
	.byte		        69
	.byte	W07
	.byte		        70
	.byte	W06
	.byte		        71
	.byte	W06
	.byte		        72
	.byte	W07
	.byte		        73
	.byte	W06
	.byte		        74
	.byte	W07
	.byte		        75
	.byte	W06
	.byte		        76
	.byte	W06
	.byte		        77
	.byte	W07
	.byte		        78
	.byte	W06
	.byte		        79
	.byte	W07
	.byte		EOT   
/* 027   ----------------------------------------
 */	.byte		TIE   , Ds5 , v112
	.byte	W96
/* 028   ----------------------------------------
 */	.byte	W96
	.byte		EOT   
/* 029   ----------------------------------------
 */	.byte		TIE   , Dn5 , v100
	.byte	W96
/* 030   ----------------------------------------
 */	.byte	W96
	.byte		EOT   
/* 031   ----------------------------------------
 */	.byte		TIE   , Ds5 
	.byte	W96
/* 032   ----------------------------------------
 */	.byte	W96
	.byte		EOT   
/* 033   ----------------------------------------
 */	.byte		N24   , Dn5 
	.byte	W96
/* 034   ----------------------------------------
 */	.byte	W96
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_5_003
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_5_004
	.byte	GOTO
	 mPtr	mus_true_area_53_5_B1
mus_true_area_53_5_B2:
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_true_area_53_6:
	.byte	KEYSH , mus_true_area_53_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 0
	.byte		VOL   , 89*mus_true_area_53_mvl/mxv
	.byte		MOD   , 2
	.byte		LFOS  , 20
	.byte		PAN   , c_v-30
	.byte		MODT  , 0
	.byte	W03
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W96
mus_true_area_53_6_B1:
/* 005   ----------------------------------------
 */	.byte	W12
	.byte		N03   , Dn5 , v112
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
/* 006   ----------------------------------------
 */mus_true_area_53_6_006:
	.byte		N03   , Fn4 , v112
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Cn3 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Cn3 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Cn3 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Bn2 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Bn2 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Bn2 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Fn2 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Fn2 
	.byte	W03
	.byte	PEND
/* 007   ----------------------------------------
 */	.byte		VOICE , 2
	.byte	W12
	.byte		N03   , Dn5 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_6_006
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
 */	.byte	W72
	.byte		N12   , Fn4 , v120
	.byte	W12
	.byte		        Gn4 
	.byte	W12
/* 017   ----------------------------------------
 */mus_true_area_53_6_017:
	.byte		N36   , An4 , v120
	.byte	W36
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn5 , v100
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
	.byte	PEND
/* 018   ----------------------------------------
 */mus_true_area_53_6_018:
	.byte		N06   , An4 , v100
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
	.byte	W06
	.byte	PEND
/* 019   ----------------------------------------
 */mus_true_area_53_6_019:
	.byte		N84   , Ds4 , v120
	.byte	W84
	.byte		N06   , En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte	PEND
/* 020   ----------------------------------------
 */	.byte		N48   , Gn4 
	.byte	W48
	.byte		        As4 
	.byte	W48
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_6_017
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_6_018
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_6_019
/* 024   ----------------------------------------
 */	.byte		N48   , Gn4 , v120
	.byte	W48
	.byte		        Ds5 
	.byte	W48
/* 025   ----------------------------------------
 */mus_true_area_53_6_025:
	.byte		N04   , Dn4 , v100
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        An5 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        An5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        An5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte	PEND
/* 026   ----------------------------------------
 */mus_true_area_53_6_026:
	.byte		N04   , Dn2 , v100
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        An5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        An5 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        An5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte	PEND
/* 027   ----------------------------------------
 */mus_true_area_53_6_027:
	.byte		N04   , Ds4 , v100
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        As5 
	.byte	W04
	.byte		        Ds6 
	.byte	W04
	.byte		        As5 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        As5 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        As2 
	.byte	W04
	.byte	PEND
/* 028   ----------------------------------------
 */mus_true_area_53_6_028:
	.byte		N04   , Ds2 , v100
	.byte	W04
	.byte		        As2 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        As2 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        As5 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        As5 
	.byte	W04
	.byte		        Ds6 
	.byte	W04
	.byte		        As5 
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte	PEND
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_6_025
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_6_026
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_6_027
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_6_028
/* 033   ----------------------------------------
 */	.byte		N03   , Dn6 , v100
	.byte	W03
	.byte		        An5 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        Dn2 
	.byte	W72
/* 034   ----------------------------------------
 */	.byte	W96
/* 035   ----------------------------------------
 */	.byte		VOICE , 0
	.byte	W96
/* 036   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_true_area_53_6_B1
mus_true_area_53_6_B2:
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_true_area_53_7:
	.byte	KEYSH , mus_true_area_53_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 10
	.byte		VOL   , 101*mus_true_area_53_mvl/mxv
	.byte		MOD   , 50
	.byte		LFOS  , 40
	.byte		PAN   , c_v+30
	.byte		MODT  , 1
	.byte	W03
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W96
mus_true_area_53_7_B1:
/* 005   ----------------------------------------
 */	.byte	W12
	.byte		N03   , An3 , v100
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
/* 006   ----------------------------------------
 */mus_true_area_53_7_006:
	.byte		N03   , Dn3 , v100
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Gs2 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Gs2 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Gs2 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Gn2 
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        Gn2 
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        Gn2 
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        Fn2 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Fn2 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Fn2 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte	PEND
/* 007   ----------------------------------------
 */	.byte		VOICE , 12
	.byte	W12
	.byte		N03   , An3 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_7_006
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
 */	.byte	W72
	.byte		N12   , Dn4 , v100
	.byte	W12
	.byte		        Ds4 
	.byte	W12
/* 017   ----------------------------------------
 */mus_true_area_53_7_017:
	.byte		N36   , Fn4 , v100
	.byte	W36
	.byte		N06   , En4 
	.byte	W06
	.byte		        Dn4 
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
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte	PEND
/* 018   ----------------------------------------
 */mus_true_area_53_7_018:
	.byte		N06   , Fn4 , v100
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
	.byte		        Dn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte	PEND
/* 019   ----------------------------------------
 */mus_true_area_53_7_019:
	.byte		N84   , As3 , v100
	.byte	W84
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte	PEND
/* 020   ----------------------------------------
 */mus_true_area_53_7_020:
	.byte		N48   , Ds4 , v100
	.byte	W48
	.byte		N48   
	.byte	W48
	.byte	PEND
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_7_017
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_7_018
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_7_019
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_7_020
/* 025   ----------------------------------------
 */mus_true_area_53_7_025:
	.byte		N04   , An3 , v100
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Fn5 
	.byte	W04
	.byte		        An5 
	.byte	W04
	.byte		        Fn5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Fn5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Fn2 
	.byte	W04
	.byte	PEND
/* 026   ----------------------------------------
 */mus_true_area_53_7_026:
	.byte		N04   , An1 , v100
	.byte	W04
	.byte		        Fn2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Fn2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Fn5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Fn5 
	.byte	W04
	.byte		        An5 
	.byte	W04
	.byte		        Fn5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte	PEND
/* 027   ----------------------------------------
 */mus_true_area_53_7_027:
	.byte		N04   , As3 , v100
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        As5 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        As2 
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte	PEND
/* 028   ----------------------------------------
 */mus_true_area_53_7_028:
	.byte		N04   , As1 , v100
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        As2 
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        As2 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        As2 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        As5 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte	PEND
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_7_025
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_7_026
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_7_027
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_7_028
/* 033   ----------------------------------------
 */	.byte		N03   , An5 , v100
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		        An1 
	.byte	W72
/* 034   ----------------------------------------
 */	.byte	W96
/* 035   ----------------------------------------
 */	.byte		VOICE , 10
	.byte	W96
/* 036   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_true_area_53_7_B1
mus_true_area_53_7_B2:
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	FINE

/* **************** Track 8 (Midi-Chn.8) **************** */

mus_true_area_53_8:
	.byte	KEYSH , mus_true_area_53_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 72
	.byte		VOL   , 122*mus_true_area_53_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W96
mus_true_area_53_8_B1:
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte	W96
/* 007   ----------------------------------------
 */	.byte	W96
/* 008   ----------------------------------------
 */	.byte	W96
/* 009   ----------------------------------------
 */	.byte	W06
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
	.byte		N11   , Cn3 , v120
	.byte	W17
	.byte		N06   , Cn3 , v112
	.byte	W18
	.byte		N09   , Cn3 , v120
	.byte	W18
	.byte		        Cn3 , v112
	.byte	W18
	.byte		N12   , Cn3 , v120
	.byte	W01
/* 010   ----------------------------------------
 */mus_true_area_53_8_010:
	.byte	W17
	.byte		N06   , Cn3 , v112
	.byte	W12
	.byte		        Cn3 , v127
	.byte	W18
	.byte		N12   , Cn3 , v120
	.byte	W18
	.byte		N06   , Cn3 , v112
	.byte	W12
	.byte		N09   
	.byte	W19
	.byte	PEND
/* 011   ----------------------------------------
 */	.byte	W96
/* 012   ----------------------------------------
 */	.byte	W96
/* 013   ----------------------------------------
 */	.byte	W06
	.byte		N04   , An1 , v124
	.byte	W05
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
	.byte	W04
	.byte		N11   , Cn3 
	.byte	W17
	.byte		N06   , Cn3 , v112
	.byte	W18
	.byte		N09   , Cn3 , v120
	.byte	W18
	.byte		        Cn3 , v112
	.byte	W18
	.byte		N12   , Cn3 , v120
	.byte	W01
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_8_010
/* 015   ----------------------------------------
 */	.byte	W96
/* 016   ----------------------------------------
 */	.byte	W96
/* 017   ----------------------------------------
 */mus_true_area_53_8_017:
	.byte	W06
	.byte		N04   , An1 , v124
	.byte	W05
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
	.byte		N11   , Cn3 , v120
	.byte	W17
	.byte		N06   , Cn3 , v112
	.byte	W18
	.byte		N09   , Cn3 , v120
	.byte	W18
	.byte		        Cn3 , v112
	.byte	W18
	.byte		N12   , Cn3 , v120
	.byte	W01
	.byte	PEND
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_8_010
/* 019   ----------------------------------------
 */	.byte	W96
/* 020   ----------------------------------------
 */	.byte	W96
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_8_017
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_8_010
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
	.byte	GOTO
	 mPtr	mus_true_area_53_8_B1
mus_true_area_53_8_B2:
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	FINE

/* **************** Track 9 (Midi-Chn.9) **************** */

mus_true_area_53_9:
	.byte	KEYSH , mus_true_area_53_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 73
	.byte		VOL   , 122*mus_true_area_53_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W96
mus_true_area_53_9_B1:
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
 */mus_true_area_53_9_011:
	.byte	W06
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
	.byte		N11   , Cn3 , v120
	.byte	W17
	.byte		N06   , Cn3 , v112
	.byte	W18
	.byte		N09   , Cn3 , v120
	.byte	W18
	.byte		        Cn3 , v112
	.byte	W18
	.byte		N12   , Cn3 , v120
	.byte	W01
	.byte	PEND
/* 012   ----------------------------------------
 */mus_true_area_53_9_012:
	.byte	W17
	.byte		N06   , Cn3 , v112
	.byte	W12
	.byte		        Cn3 , v127
	.byte	W18
	.byte		N12   , Cn3 , v120
	.byte	W18
	.byte		N06   , Cn3 , v112
	.byte	W12
	.byte		N09   
	.byte	W19
	.byte	PEND
/* 013   ----------------------------------------
 */	.byte	W96
/* 014   ----------------------------------------
 */	.byte	W96
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_9_011
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_9_012
/* 017   ----------------------------------------
 */	.byte	W96
/* 018   ----------------------------------------
 */	.byte	W96
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_9_011
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_9_012
/* 021   ----------------------------------------
 */	.byte	W96
/* 022   ----------------------------------------
 */	.byte	W96
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_9_011
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_9_012
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
	.byte	GOTO
	 mPtr	mus_true_area_53_9_B1
mus_true_area_53_9_B2:
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	FINE

/* **************** Track 10 (Midi-Chn.10) **************** */

mus_true_area_53_10:
	.byte	KEYSH , mus_true_area_53_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 106
	.byte		VOL   , 122*mus_true_area_53_mvl/mxv
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte	W03
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W96
mus_true_area_53_10_B1:
/* 005   ----------------------------------------
 */mus_true_area_53_10_005:
	.byte		N18   , Dn3 , v120
	.byte	W18
	.byte		N06   , Cs3 , v112
	.byte	W18
	.byte		N12   , Cn3 , v120
	.byte	W60
	.byte	PEND
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_10_005
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_10_005
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_10_005
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
 */mus_true_area_53_10_025:
	.byte		N24   , Dn3 , v120
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N03   , Dn3 , v100
	.byte	W06
	.byte		N12   , Dn3 , v120
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N04   , Dn3 , v100
	.byte	W06
	.byte		N06   , Dn3 , v120
	.byte	W06
	.byte		N04   , Dn3 , v100
	.byte	W06
	.byte	PEND
/* 026   ----------------------------------------
 */mus_true_area_53_10_026:
	.byte		N06   , Dn3 , v120
	.byte	W06
	.byte		N04   , Dn3 , v100
	.byte	W06
	.byte		N06   , Dn3 , v120
	.byte	W06
	.byte		N04   , Dn3 , v100
	.byte	W06
	.byte		N12   , Dn3 , v120
	.byte	W12
	.byte		N03   , Dn3 , v100
	.byte	W06
	.byte		N12   , Dn3 , v120
	.byte	W12
	.byte		N03   , Dn3 , v100
	.byte	W06
	.byte		N12   , Dn3 , v120
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N04   , Dn3 , v100
	.byte	W06
	.byte		N06   , Dn3 , v120
	.byte	W06
	.byte		N04   , Dn3 , v100
	.byte	W06
	.byte	PEND
/* 027   ----------------------------------------
 */	.byte	W96
/* 028   ----------------------------------------
 */	.byte	W96
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_10_025
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_true_area_53_10_026
/* 031   ----------------------------------------
 */	.byte	W96
/* 032   ----------------------------------------
 */	.byte		BEND  , c_v+63
	.byte	W96
/* 033   ----------------------------------------
 */	.byte		N24   , Dn3 , v120
	.byte	W02
	.byte		BEND  , c_v+62
	.byte	W02
	.byte		        c_v+57
	.byte	W02
	.byte		        c_v+49
	.byte	W02
	.byte		        c_v+37
	.byte	W02
	.byte		        c_v+23
	.byte	W02
	.byte		        c_v+5
	.byte	W02
	.byte		        c_v-16
	.byte	W02
	.byte		        c_v-41
	.byte	W02
	.byte		        c_v-64
	.byte	W54
	.byte		        c_v+0
	.byte	W24
/* 034   ----------------------------------------
 */	.byte		N18   , Dn3 , v088
	.byte	W18
	.byte		N06   , Cs3 
	.byte	W18
	.byte		N18   , Cn3 
	.byte	W18
	.byte		N09   , Bn2 
	.byte	W18
	.byte		N06   , As2 
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
/* 035   ----------------------------------------
 */	.byte	W96
/* 036   ----------------------------------------
 */	.byte		N18   , Dn3 
	.byte	W18
	.byte		N06   , Cs3 
	.byte	W18
	.byte		N18   , Cn3 
	.byte	W18
	.byte		N09   , Bn2 , v072
	.byte	W18
	.byte		N06   , As2 
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
	.byte	GOTO
	 mPtr	mus_true_area_53_10_B1
mus_true_area_53_10_B2:
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	FINE

/* **************** Track 11 (Midi-Chn.11) **************** */

mus_true_area_53_11:
	.byte	KEYSH , mus_true_area_53_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 118
	.byte		VOL   , 116*mus_true_area_53_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	PRIO  , 20
	.byte	W03
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W96
mus_true_area_53_11_B1:
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
 */	.byte		N96   , Ds3 , v080
	.byte	W96
/* 028   ----------------------------------------
 */	.byte		N48   , As3 
	.byte	W48
	.byte		        Gn3 
	.byte	W48
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
 */	.byte		N18   , Dn3 , v088
	.byte	W18
	.byte		N06   , Cs3 
	.byte	W18
	.byte		N18   , Cn3 
	.byte	W18
	.byte		N09   , Bn2 
	.byte	W18
	.byte		N06   , As2 
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
/* 036   ----------------------------------------
 */	.byte		N18   
	.byte	W18
	.byte		N06   , As2 
	.byte	W18
	.byte		N18   , Bn2 
	.byte	W18
	.byte		N09   , Cn3 
	.byte	W18
	.byte		N06   , Cs3 
	.byte	W12
	.byte		N09   , Dn3 
	.byte	W12
	.byte	GOTO
	 mPtr	mus_true_area_53_11_B1
mus_true_area_53_11_B2:
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_true_area_53):
	.byte	11	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_true_area_53_pri	/* Priority */
	.byte	mus_true_area_53_rev	/* Reverb */

mAlignWord
	mPtr	mus_true_area_53_grp

	mPtr	mus_true_area_53_1
	mPtr	mus_true_area_53_2
	mPtr	mus_true_area_53_3
	mPtr	mus_true_area_53_4
	mPtr	mus_true_area_53_5
	mPtr	mus_true_area_53_6
	mPtr	mus_true_area_53_7
	mPtr	mus_true_area_53_8
	mPtr	mus_true_area_53_9
	mPtr	mus_true_area_53_10
	mPtr	mus_true_area_53_11

	.end
