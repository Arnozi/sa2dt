	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_leaf_forest__act_1_grp, voicegroup022
	.equ	mus_leaf_forest__act_1_pri, 0
	.equ	mus_leaf_forest__act_1_rev, reverb_set+0
	.equ	mus_leaf_forest__act_1_mvl, 94
	.equ	mus_leaf_forest__act_1_key, 0
	.equ	mus_leaf_forest__act_1_tbs, 1
	.equ	mus_leaf_forest__act_1_exg, 1
	.equ	mus_leaf_forest__act_1_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_leaf_forest__act_1)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_leaf_forest__act_1_1:
	.byte	KEYSH , mus_leaf_forest__act_1_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 154*mus_leaf_forest__act_1_tbs/2
	.byte		VOICE , 45
	.byte		VOL   , 127*mus_leaf_forest__act_1_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
mus_leaf_forest__act_1_1_B1:
/* 001   ----------------------------------------
 */mus_leaf_forest__act_1_1_001:
	.byte		N05   , An1 , v120
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte	PEND
/* 002   ----------------------------------------
 */	.byte		N05   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Dn2 
	.byte	W18
	.byte		N09   , Ds2 
	.byte	W12
	.byte		N05   , An1 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_1_001
/* 004   ----------------------------------------
 */	.byte		N18   , En2 , v100
	.byte	W18
	.byte		        Bn1 
	.byte	W18
	.byte		N24   , Dn2 
	.byte	W24
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N05   , An1 , v120
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_1_001
/* 006   ----------------------------------------
 */	.byte		N05   , An1 , v120
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W18
	.byte		N09   , Ds2 
	.byte	W12
	.byte		N05   , An1 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_1_001
/* 008   ----------------------------------------
 */	.byte		N18   , En2 , v100
	.byte	W18
	.byte		        Bn1 
	.byte	W18
	.byte		N24   , En2 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N05   , En2 , v120
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_1_001
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_1_001
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_1_001
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_1_001
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_1_001
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_1_001
/* 016   ----------------------------------------
 */mus_leaf_forest__act_1_1_016:
	.byte		N05   , En1 , v120
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte	PEND
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_1_016
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_1_001
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_1_001
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_1_001
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_1_001
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_1_001
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_1_001
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_1_016
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_1_016
/* 026   ----------------------------------------
 */mus_leaf_forest__act_1_1_026:
	.byte		N05   , Dn2 , v120
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte	PEND
/* 027   ----------------------------------------
 */	.byte		        Cs2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
/* 028   ----------------------------------------
 */	.byte		        Cn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
/* 029   ----------------------------------------
 */	.byte		        Bn1 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
/* 030   ----------------------------------------
 */	.byte		        As1 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
/* 031   ----------------------------------------
 */mus_leaf_forest__act_1_1_031:
	.byte		N05   , Cn2 , v120
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte	PEND
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_1_026
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_1_031
/* 034   ----------------------------------------
 */mus_leaf_forest__act_1_1_034:
	.byte		N05   , Bn1 , v120
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte	PEND
/* 035   ----------------------------------------
 */	.byte		        As1 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_1_026
/* 037   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_1_031
/* 038   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_1_034
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_1_001
/* 040   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_1_001
/* 041   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_1_001
/* 042   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_1_001
/* 043   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_1_001
/* 044   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_1_001
	.byte	GOTO
	 mPtr	mus_leaf_forest__act_1_1_B1
mus_leaf_forest__act_1_1_B2:
/* 045   ----------------------------------------
 */	.byte	W96
/* 046   ----------------------------------------
 */	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_leaf_forest__act_1_2:
	.byte	KEYSH , mus_leaf_forest__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 127
	.byte		VOL   , 127*mus_leaf_forest__act_1_mvl/mxv
	.byte	W03
mus_leaf_forest__act_1_2_B1:
/* 001   ----------------------------------------
 */mus_leaf_forest__act_1_2_001:
	.byte		N24   , Ds2 , v120
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
/* 002   ----------------------------------------
 */mus_leaf_forest__act_1_2_002:
	.byte		N24   , Ds2 , v120
	.byte	W24
	.byte		N24   
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
	 mPtr	mus_leaf_forest__act_1_2_001
/* 004   ----------------------------------------
 */	.byte		N24   , Ds2 , v120
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N18   
	.byte	W18
	.byte		N06   , Ds2 , v112
	.byte	W06
	.byte		        En2 , v120
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_2_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_2_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_2_001
/* 008   ----------------------------------------
 */	.byte		N24   , Ds2 , v120
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N18   
	.byte	W18
	.byte		N06   , Ds2 , v112
	.byte	W06
	.byte		        An1 , v120
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
/* 009   ----------------------------------------
 */mus_leaf_forest__act_1_2_009:
	.byte		N06   , En2 , v120
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N12   , En2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_2_001
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_2_002
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_2_001
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_2_001
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_2_001
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_2_002
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_2_001
/* 017   ----------------------------------------
 */	.byte		N24   , Ds2 , v120
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N06   , En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 , v112
	.byte	W06
	.byte		        En2 , v120
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
/* 018   ----------------------------------------
 */mus_leaf_forest__act_1_2_018:
	.byte		N24   , Ds2 , v120
	.byte	W24
	.byte		        En2 
	.byte	W24
	.byte		        Ds2 
	.byte	W24
	.byte		        En2 
	.byte	W24
	.byte	PEND
/* 019   ----------------------------------------
 */mus_leaf_forest__act_1_2_019:
	.byte		N24   , Ds2 , v120
	.byte	W24
	.byte		        En2 
	.byte	W24
	.byte		N18   , Ds2 
	.byte	W18
	.byte		N06   , Ds2 , v112
	.byte	W06
	.byte		N12   , En2 , v120
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte	PEND
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_2_018
/* 021   ----------------------------------------
 */	.byte		N24   , Ds2 , v120
	.byte	W24
	.byte		        En2 
	.byte	W24
	.byte		N18   , Ds2 
	.byte	W18
	.byte		N06   , Ds2 , v112
	.byte	W06
	.byte		N12   , En2 , v120
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_2_018
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_2_019
/* 024   ----------------------------------------
 */	.byte		N24   , Ds2 , v120
	.byte	W24
	.byte		        En2 
	.byte	W24
	.byte		N18   , Ds2 
	.byte	W18
	.byte		N06   , Ds2 , v112
	.byte	W06
	.byte		        An1 , v120
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
/* 025   ----------------------------------------
 */	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 , v112
	.byte	W06
	.byte		        En2 , v120
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        An1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 , v112
	.byte	W06
	.byte		        En2 , v120
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
/* 026   ----------------------------------------
 */mus_leaf_forest__act_1_2_026:
	.byte		N24   , Ds2 , v120
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte	PEND
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_2_002
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_2_001
/* 029   ----------------------------------------
 */	.byte		N24   , Ds2 , v120
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N18   
	.byte	W18
	.byte		N06   , En2 , v112
	.byte	W06
	.byte		N12   , Ds2 , v120
	.byte	W12
	.byte		N12   
	.byte	W12
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_2_026
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_2_002
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_2_001
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_2_002
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_2_001
/* 035   ----------------------------------------
 */	.byte		N24   , Ds2 , v120
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N06   , En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 , v112
	.byte	W06
	.byte		        An1 , v120
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_2_018
/* 037   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_2_019
/* 038   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_2_018
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_2_019
/* 040   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_2_009
/* 041   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_2_001
/* 042   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_2_002
/* 043   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_2_001
/* 044   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_2_002
	.byte	GOTO
	 mPtr	mus_leaf_forest__act_1_2_B1
mus_leaf_forest__act_1_2_B2:
/* 045   ----------------------------------------
 */	.byte	W96
/* 046   ----------------------------------------
 */	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_leaf_forest__act_1_3:
	.byte	KEYSH , mus_leaf_forest__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 127
	.byte		VOL   , 127*mus_leaf_forest__act_1_mvl/mxv
	.byte	W03
mus_leaf_forest__act_1_3_B1:
/* 001   ----------------------------------------
 */	.byte		N11   , Ds1 , v072
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
 */mus_leaf_forest__act_1_3_002:
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
	 mPtr	mus_leaf_forest__act_1_3_002
/* 004   ----------------------------------------
 */mus_leaf_forest__act_1_3_004:
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
	.byte	W30
	.byte	PEND
/* 005   ----------------------------------------
 */mus_leaf_forest__act_1_3_005:
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
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_3_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_3_002
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_3_004
/* 009   ----------------------------------------
 */	.byte		N24   , Cs2 , v120
	.byte	W96
/* 010   ----------------------------------------
 */	.byte		N36   
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
/* 011   ----------------------------------------
 */mus_leaf_forest__act_1_3_011:
	.byte		N06   , Dn1 , v072
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
	.byte	PEND
/* 012   ----------------------------------------
 */mus_leaf_forest__act_1_3_012:
	.byte		N06   , Dn1 , v072
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
	.byte	PEND
/* 013   ----------------------------------------
 */mus_leaf_forest__act_1_3_013:
	.byte		N06   , Dn1 , v072
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
	.byte	PEND
/* 014   ----------------------------------------
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
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_3_011
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_3_012
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_3_013
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_3_005
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_3_002
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
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_3_002
/* 022   ----------------------------------------
 */	.byte		N24   , Fs2 , v120
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
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_3_002
/* 024   ----------------------------------------
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
	.byte	W30
/* 025   ----------------------------------------
 */	.byte		N18   , Fs2 , v120
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
	.byte		N24   , Cs2 , v120
	.byte	W54
/* 026   ----------------------------------------
 */	.byte		        Cs2 , v127
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
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_3_002
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_3_002
/* 029   ----------------------------------------
 */mus_leaf_forest__act_1_3_029:
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
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		N06   , Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte	PEND
/* 030   ----------------------------------------
 */mus_leaf_forest__act_1_3_030:
	.byte		N24   , Gn2 , v127
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
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_3_002
/* 032   ----------------------------------------
 */	.byte		N24   , Cs2 , v127
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
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_3_002
/* 034   ----------------------------------------
 */	.byte		N18   , Fs2 , v116
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
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_3_029
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_3_030
/* 037   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_3_002
/* 038   ----------------------------------------
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
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_3_002
/* 040   ----------------------------------------
 */	.byte	W96
/* 041   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_3_005
/* 042   ----------------------------------------
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
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
	.byte		N12   , En1 , v072
	.byte	W12
/* 043   ----------------------------------------
 */	.byte		N18   , Fs2 , v112
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
/* 044   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_3_002
	.byte	GOTO
	 mPtr	mus_leaf_forest__act_1_3_B1
mus_leaf_forest__act_1_3_B2:
/* 045   ----------------------------------------
 */	.byte	W96
/* 046   ----------------------------------------
 */	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_leaf_forest__act_1_4:
	.byte	KEYSH , mus_leaf_forest__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 115
	.byte		VOL   , 84*mus_leaf_forest__act_1_mvl/mxv
	.byte	PRIO  , 20
	.byte	W03
mus_leaf_forest__act_1_4_B1:
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte		N18   , Cn3 , v112
	.byte	W18
	.byte		        Gn2 
	.byte	W18
	.byte		N24   , As2 
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		N48   , Fn2 
	.byte	W12
/* 005   ----------------------------------------
 */	.byte		VOL   , 83*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        80*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        79*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        76*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        75*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        72*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        69*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        69*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        67*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        65*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        63*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        60*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        59*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        57*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        55*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        53*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        50*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        49*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        46*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        45*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        44*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        41*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        40*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        37*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        34*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        33*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        32*mus_leaf_forest__act_1_mvl/mxv
	.byte	W60
/* 006   ----------------------------------------
 */	.byte		        84*mus_leaf_forest__act_1_mvl/mxv
	.byte	W96
/* 007   ----------------------------------------
 */	.byte	W96
/* 008   ----------------------------------------
 */	.byte	W96
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */mus_leaf_forest__act_1_4_010:
	.byte		N18   , As2 , v112
	.byte	W18
	.byte		        An2 
	.byte	W18
	.byte		N36   , Fn2 
	.byte	W48
	.byte		N12   , Ds3 
	.byte	W12
	.byte	PEND
/* 011   ----------------------------------------
 */mus_leaf_forest__act_1_4_011:
	.byte		N36   , Ds3 , v112
	.byte	W36
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N36   
	.byte	W36
	.byte		N12   , As2 
	.byte	W12
	.byte	PEND
/* 012   ----------------------------------------
 */mus_leaf_forest__act_1_4_012:
	.byte		N18   , As2 , v112
	.byte	W18
	.byte		        Bn2 
	.byte	W18
	.byte		N96   , Cn3 
	.byte	W60
	.byte	PEND
/* 013   ----------------------------------------
 */	.byte	W96
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_4_010
/* 015   ----------------------------------------
 */mus_leaf_forest__act_1_4_015:
	.byte		N36   , Ds3 , v112
	.byte	W36
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N36   
	.byte	W36
	.byte		N12   , Fn3 
	.byte	W12
	.byte	PEND
/* 016   ----------------------------------------
 */	.byte		N36   
	.byte	W36
	.byte		N96   , En3 
	.byte	W60
/* 017   ----------------------------------------
 */	.byte	W96
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_4_010
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_4_011
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_4_012
/* 021   ----------------------------------------
 */	.byte	W96
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_4_010
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_4_015
/* 024   ----------------------------------------
 */	.byte		N18   , Fn3 , v112
	.byte	W18
	.byte		        Fs3 
	.byte	W18
	.byte		N96   , Gn3 
	.byte	W36
	.byte		VOL   , 83*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        80*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        79*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        78*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        75*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        75*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        72*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        69*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        69*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        67*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        65*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        64*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
/* 025   ----------------------------------------
 */	.byte		        61*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        60*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        59*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        57*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        55*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        53*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        52*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        50*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        49*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        46*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        45*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        44*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        41*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        40*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        38*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        36*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        34*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        33*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        32*mus_leaf_forest__act_1_mvl/mxv
	.byte	W36
	.byte		        84*mus_leaf_forest__act_1_mvl/mxv
	.byte	W24
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
 */	.byte		N90   , Fn2 , v092
	.byte	W88
	.byte	W01
	.byte		N02   , Gn2 , v056
	.byte	W02
	.byte		        An2 , v072
	.byte	W01
	.byte		        Bn2 , v080
	.byte	W01
	.byte		N01   , Cn3 , v084
	.byte	W01
	.byte		N02   , Dn3 
	.byte	W01
	.byte		N04   , En3 , v092
	.byte	W01
/* 044   ----------------------------------------
 */	.byte	W01
	.byte		N92   , Fn3 , v072
	.byte	W92
	.byte	W03
	.byte	GOTO
	 mPtr	mus_leaf_forest__act_1_4_B1
mus_leaf_forest__act_1_4_B2:
/* 045   ----------------------------------------
 */	.byte	W96
/* 046   ----------------------------------------
 */	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_leaf_forest__act_1_5:
	.byte	KEYSH , mus_leaf_forest__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 2
	.byte		VOL   , 53*mus_leaf_forest__act_1_mvl/mxv
	.byte		PAN   , c_v-30
	.byte	W03
mus_leaf_forest__act_1_5_B1:
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte		N06   , Bn1 , v112
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N06   
	.byte	W06
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N06   
	.byte	W06
/* 007   ----------------------------------------
 */	.byte	W96
/* 008   ----------------------------------------
 */	.byte		N04   , En6 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Gs5 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Gs5 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Gs5 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Bn5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Gs5 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
/* 009   ----------------------------------------
 */	.byte		        Gs4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
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
 */	.byte		N06   , An2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		N06   
	.byte	W06
/* 017   ----------------------------------------
 */	.byte		        Bn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte	W06
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
 */	.byte		N04   , An5 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        An2 
	.byte	W04
/* 027   ----------------------------------------
 */	.byte	W96
/* 028   ----------------------------------------
 */	.byte		        An5 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Cn3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Cn3 
	.byte	W04
	.byte		        An2 
	.byte	W04
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
 */	.byte		N06   , As3 , v100
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        As4 
	.byte	W12
	.byte		        As3 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn6 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
/* 036   ----------------------------------------
 */	.byte	W96
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	W96
/* 039   ----------------------------------------
 */	.byte	W96
/* 040   ----------------------------------------
 */	.byte		N04   , En5 , v092
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Cs3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Cs3 
	.byte	W04
/* 041   ----------------------------------------
 */	.byte	W96
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte	W96
/* 044   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_leaf_forest__act_1_5_B1
mus_leaf_forest__act_1_5_B2:
/* 045   ----------------------------------------
 */	.byte	W96
/* 046   ----------------------------------------
 */	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_leaf_forest__act_1_6:
	.byte	KEYSH , mus_leaf_forest__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 11
	.byte		VOL   , 106*mus_leaf_forest__act_1_mvl/mxv
	.byte		PAN   , c_v+30
	.byte	W03
mus_leaf_forest__act_1_6_B1:
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte		N06   , Fs1 , v112
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn3 
	.byte	W06
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds4 
	.byte	W06
/* 007   ----------------------------------------
 */	.byte	W96
/* 008   ----------------------------------------
 */	.byte		N04   , Gs5 
	.byte	W04
	.byte		        Bn5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Bn5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        Gs5 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Gs5 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
/* 009   ----------------------------------------
 */	.byte		        En5 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
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
 */	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn4 
	.byte	W06
/* 017   ----------------------------------------
 */	.byte		        Gs5 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
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
 */	.byte		N04   , An5 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Cs3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Cs3 
	.byte	W04
	.byte		        An2 
	.byte	W04
/* 028   ----------------------------------------
 */	.byte	W96
/* 029   ----------------------------------------
 */	.byte		        Bn2 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Bn5 
	.byte	W04
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
 */	.byte		N06   , As4 , v100
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        As6 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        As5 
	.byte	W12
	.byte		        As4 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cn7 
	.byte	W06
	.byte		        Cn6 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Cn6 
	.byte	W06
/* 036   ----------------------------------------
 */	.byte	W96
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	W96
/* 039   ----------------------------------------
 */	.byte	W96
/* 040   ----------------------------------------
 */	.byte		N04   , Cs5 , v092
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Cs3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Cs3 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Cs3 
	.byte	W04
	.byte		        An2 
	.byte	W04
/* 041   ----------------------------------------
 */	.byte	W96
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte	W96
/* 044   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_leaf_forest__act_1_6_B1
mus_leaf_forest__act_1_6_B2:
/* 045   ----------------------------------------
 */	.byte	W96
/* 046   ----------------------------------------
 */	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_leaf_forest__act_1_7:
	.byte	KEYSH , mus_leaf_forest__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 116
	.byte		PAN   , c_v+0
	.byte		VOL   , 127*mus_leaf_forest__act_1_mvl/mxv
	.byte	W03
mus_leaf_forest__act_1_7_B1:
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
 */	.byte		N96   , Cn3 , v112
	.byte	W96
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
 */	.byte		N72   , As3 
	.byte	W72
	.byte		N24   , Cn4 
	.byte	W24
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
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_leaf_forest__act_1_7_B1
mus_leaf_forest__act_1_7_B2:
/* 045   ----------------------------------------
 */	.byte	W96
/* 046   ----------------------------------------
 */	.byte	FINE

/* **************** Track 8 (Midi-Chn.8) **************** */

mus_leaf_forest__act_1_8:
	.byte	KEYSH , mus_leaf_forest__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 74
	.byte		VOL   , 95*mus_leaf_forest__act_1_mvl/mxv
	.byte		BENDR , 4
	.byte		PAN   , c_v+30
	.byte	W03
mus_leaf_forest__act_1_8_B1:
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
 */	.byte	W60
	.byte		N06   , En3 , v100
	.byte	W12
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W12
	.byte		N24   , En4 
	.byte	W06
/* 008   ----------------------------------------
 */	.byte	W18
	.byte		N18   , Dn4 
	.byte	W18
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N96   , Bn3 
	.byte	W24
	.byte	W01
	.byte		VOL   , 94*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        92*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        91*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        90*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        90*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        88*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        86*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        84*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
/* 009   ----------------------------------------
 */	.byte		        84*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        83*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        82*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        80*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        80*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        78*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        76*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        75*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        75*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        73*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        72*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        69*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        69*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        68*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        67*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        65*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        65*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        64*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        61*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        60*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        60*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        59*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        57*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        56*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        55*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        53*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        52*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        50*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        50*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        49*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        48*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        45*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        45*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        44*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        42*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        41*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        40*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        40*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        37*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        36*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        34*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        34*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        33*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        32*mus_leaf_forest__act_1_mvl/mxv
	.byte	W36
/* 010   ----------------------------------------
 */	.byte		        95*mus_leaf_forest__act_1_mvl/mxv
	.byte	W96
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
 */	.byte	W60
	.byte		N06   , Cs2 
	.byte	W12
	.byte		        En2 
	.byte	W06
	.byte		        Cs2 
	.byte	W12
	.byte		N12   , An2 
	.byte	W06
/* 021   ----------------------------------------
 */	.byte	W12
	.byte		N06   , Gs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gs2 
	.byte	W06
	.byte		N12   , En2 
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N18   , An1 
	.byte	W18
/* 022   ----------------------------------------
 */	.byte	W96
/* 023   ----------------------------------------
 */	.byte	W96
/* 024   ----------------------------------------
 */	.byte	W96
/* 025   ----------------------------------------
 */	.byte	W96
/* 026   ----------------------------------------
 */	.byte		N12   , An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N18   , Dn3 
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
/* 027   ----------------------------------------
 */	.byte		        An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N18   , En3 
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
/* 028   ----------------------------------------
 */	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N24   , En3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		        Bn2 
	.byte	W12
/* 029   ----------------------------------------
 */	.byte	W12
	.byte		        Dn3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		        Dn4 
	.byte	W12
/* 030   ----------------------------------------
 */	.byte	W12
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
/* 031   ----------------------------------------
 */	.byte		        En4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N18   , Gn3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
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
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_leaf_forest__act_1_8_B1
mus_leaf_forest__act_1_8_B2:
/* 045   ----------------------------------------
 */	.byte	W96
/* 046   ----------------------------------------
 */	.byte	FINE

/* **************** Track 9 (Midi-Chn.9) **************** */

mus_leaf_forest__act_1_9:
	.byte	KEYSH , mus_leaf_forest__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 74
	.byte		VOL   , 95*mus_leaf_forest__act_1_mvl/mxv
	.byte		BENDR , 4
	.byte		PAN   , c_v-30
	.byte	W03
mus_leaf_forest__act_1_9_B1:
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
 */	.byte	W60
	.byte		N06   , En2 , v100
	.byte	W12
	.byte		        Fn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W12
	.byte		N24   , En3 
	.byte	W06
/* 008   ----------------------------------------
 */	.byte	W18
	.byte		N18   , Dn3 
	.byte	W18
	.byte		N24   , Cs3 
	.byte	W24
	.byte		N96   , Bn2 
	.byte	W24
	.byte	W01
	.byte		VOL   , 94*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        92*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        91*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        90*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        90*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        88*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        86*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        84*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
/* 009   ----------------------------------------
 */	.byte		        84*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        83*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        82*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        80*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        80*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        78*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        76*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        75*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        75*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        73*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        72*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        69*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        69*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        68*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        67*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        65*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        65*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        64*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        61*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        60*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        60*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        59*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        57*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        56*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        55*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        53*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        52*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        50*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        50*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        49*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        48*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        45*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        45*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        44*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        42*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        41*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        40*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        40*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        37*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        36*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        34*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        34*mus_leaf_forest__act_1_mvl/mxv
	.byte	W01
	.byte		        33*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        32*mus_leaf_forest__act_1_mvl/mxv
	.byte	W36
/* 010   ----------------------------------------
 */	.byte		        95*mus_leaf_forest__act_1_mvl/mxv
	.byte	W96
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
 */	.byte	W60
	.byte		N06   , Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W06
	.byte		        Cs3 
	.byte	W12
	.byte		N12   , An3 
	.byte	W06
/* 021   ----------------------------------------
 */	.byte	W12
	.byte		N06   , Gs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N18   , An2 
	.byte	W18
/* 022   ----------------------------------------
 */	.byte	W96
/* 023   ----------------------------------------
 */	.byte	W96
/* 024   ----------------------------------------
 */	.byte	W96
/* 025   ----------------------------------------
 */	.byte	W96
/* 026   ----------------------------------------
 */	.byte		N12   
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N18   , Dn2 
	.byte	W24
	.byte		N12   , An2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
/* 027   ----------------------------------------
 */	.byte		        An2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N18   , En2 
	.byte	W24
	.byte		N12   , An2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        En2 
	.byte	W12
/* 028   ----------------------------------------
 */	.byte		N24   , An2 
	.byte	W24
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N24   , En2 
	.byte	W24
	.byte		        Dn2 
	.byte	W24
	.byte		        Bn1 
	.byte	W12
/* 029   ----------------------------------------
 */	.byte	W12
	.byte		        Dn2 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		        Bn2 
	.byte	W36
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
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_leaf_forest__act_1_9_B1
mus_leaf_forest__act_1_9_B2:
/* 045   ----------------------------------------
 */	.byte	W96
/* 046   ----------------------------------------
 */	.byte	FINE

/* **************** Track 10 (Midi-Chn.10) **************** */

mus_leaf_forest__act_1_10:
	.byte	KEYSH , mus_leaf_forest__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 113
	.byte		VOL   , 127*mus_leaf_forest__act_1_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
mus_leaf_forest__act_1_10_B1:
/* 001   ----------------------------------------
 */	.byte		N72   , An2 , v112
	.byte	W72
	.byte		N12   , As2 
	.byte	W12
	.byte		N96   , Bn2 
	.byte	W12
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */mus_leaf_forest__act_1_10_003:
	.byte		N72   , Cn3 , v112
	.byte	W72
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte	PEND
/* 004   ----------------------------------------
 */	.byte		N18   , En3 
	.byte	W36
	.byte		N24   , Dn3 
	.byte	W48
	.byte		N84   , An2 
	.byte	W12
/* 005   ----------------------------------------
 */	.byte	W72
	.byte		N12   , As2 
	.byte	W12
	.byte		N96   , Bn2 
	.byte	W12
/* 006   ----------------------------------------
 */	.byte	W96
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_10_003
/* 008   ----------------------------------------
 */	.byte		N18   , En3 , v112
	.byte	W96
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */	.byte		N96   , An2 
	.byte	W96
/* 011   ----------------------------------------
 */	.byte		N48   , Gn3 
	.byte	W96
/* 012   ----------------------------------------
 */	.byte	W96
/* 013   ----------------------------------------
 */	.byte		N36   , An3 
	.byte	W96
/* 014   ----------------------------------------
 */	.byte	W96
/* 015   ----------------------------------------
 */	.byte		N48   , Gn3 
	.byte	W96
/* 016   ----------------------------------------
 */	.byte	W96
/* 017   ----------------------------------------
 */	.byte	W36
	.byte		N36   , An3 
	.byte	W60
/* 018   ----------------------------------------
 */	.byte		N96   , An2 
	.byte	W96
/* 019   ----------------------------------------
 */	.byte		N48   , Gn3 
	.byte	W96
/* 020   ----------------------------------------
 */	.byte	W96
/* 021   ----------------------------------------
 */	.byte		N36   , An3 
	.byte	W96
/* 022   ----------------------------------------
 */	.byte	W96
/* 023   ----------------------------------------
 */	.byte		N48   , Gn3 
	.byte	W96
/* 024   ----------------------------------------
 */	.byte	W96
/* 025   ----------------------------------------
 */	.byte	W96
/* 026   ----------------------------------------
 */	.byte	W96
/* 027   ----------------------------------------
 */	.byte		N96   , An2 
	.byte	W96
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
 */	.byte		        Gn3 
	.byte	W96
/* 035   ----------------------------------------
 */	.byte	W96
/* 036   ----------------------------------------
 */	.byte	W96
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte		N96   
	.byte	W96
/* 039   ----------------------------------------
 */	.byte		N36   
	.byte	W36
	.byte		N60   , An3 
	.byte	W60
/* 040   ----------------------------------------
 */	.byte	W96
/* 041   ----------------------------------------
 */	.byte	W96
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte	W84
	.byte		N24   , An2 
	.byte	W12
/* 044   ----------------------------------------
 */	.byte	W60
	.byte		N36   
	.byte	W36
	.byte	GOTO
	 mPtr	mus_leaf_forest__act_1_10_B1
mus_leaf_forest__act_1_10_B2:
/* 045   ----------------------------------------
 */	.byte	W96
/* 046   ----------------------------------------
 */	.byte	FINE

/* **************** Track 11 (Midi-Chn.11) **************** */

mus_leaf_forest__act_1_11:
	.byte	KEYSH , mus_leaf_forest__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 114
	.byte		VOL   , 127*mus_leaf_forest__act_1_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
mus_leaf_forest__act_1_11_B1:
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W18
	.byte		N18   , Cn3 , v112
	.byte	W78
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte	W96
/* 007   ----------------------------------------
 */	.byte	W96
/* 008   ----------------------------------------
 */	.byte	W18
	.byte		        As3 
	.byte	W18
	.byte		N24   
	.byte	W24
	.byte		N48   , Cn4 
	.byte	W36
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */	.byte	W96
/* 011   ----------------------------------------
 */	.byte	W96
/* 012   ----------------------------------------
 */	.byte		N96   , Fn3 
	.byte	W96
/* 013   ----------------------------------------
 */mus_leaf_forest__act_1_11_013:
	.byte	W36
	.byte		N36   , Fn3 , v112
	.byte	W36
	.byte		N24   , Ds3 
	.byte	W24
	.byte	PEND
/* 014   ----------------------------------------
 */	.byte		N96   , Fn3 
	.byte	W96
/* 015   ----------------------------------------
 */	.byte	W96
/* 016   ----------------------------------------
 */	.byte		N36   , As3 
	.byte	W96
/* 017   ----------------------------------------
 */	.byte	W96
/* 018   ----------------------------------------
 */	.byte	W96
/* 019   ----------------------------------------
 */	.byte	W96
/* 020   ----------------------------------------
 */	.byte		N96   , Fn3 
	.byte	W96
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_leaf_forest__act_1_11_013
/* 022   ----------------------------------------
 */	.byte		N96   , Fn3 , v112
	.byte	W96
/* 023   ----------------------------------------
 */	.byte	W96
/* 024   ----------------------------------------
 */	.byte		N18   , As3 
	.byte	W18
	.byte		        Bn3 
	.byte	W18
	.byte		N60   , Cn4 
	.byte	W60
/* 025   ----------------------------------------
 */	.byte		N36   
	.byte	W72
	.byte		N24   
	.byte	W24
/* 026   ----------------------------------------
 */	.byte		N96   , As2 
	.byte	W96
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
 */	.byte		        Gs3 
	.byte	W96
/* 034   ----------------------------------------
 */	.byte	W96
/* 035   ----------------------------------------
 */	.byte	W96
/* 036   ----------------------------------------
 */	.byte	W96
/* 037   ----------------------------------------
 */	.byte		N96   
	.byte	W96
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
 */	.byte	W12
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , Fn3 
	.byte	W48
/* 044   ----------------------------------------
 */	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn3 
	.byte	W48
	.byte	GOTO
	 mPtr	mus_leaf_forest__act_1_11_B1
mus_leaf_forest__act_1_11_B2:
/* 045   ----------------------------------------
 */	.byte	W96
/* 046   ----------------------------------------
 */	.byte	FINE

/* **************** Track 12 (Midi-Chn.12) **************** */

mus_leaf_forest__act_1_12:
	.byte	KEYSH , mus_leaf_forest__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 112
	.byte		VOL   , 127*mus_leaf_forest__act_1_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
mus_leaf_forest__act_1_12_B1:
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W60
	.byte		N24   , Cn3 , v112
	.byte	W36
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
 */	.byte	W48
	.byte		N48   , Fn3 
	.byte	W48
/* 012   ----------------------------------------
 */	.byte	W96
/* 013   ----------------------------------------
 */	.byte	W96
/* 014   ----------------------------------------
 */	.byte	W96
/* 015   ----------------------------------------
 */	.byte	W48
	.byte		N48   
	.byte	W48
/* 016   ----------------------------------------
 */	.byte	W36
	.byte		N60   , Gn3 
	.byte	W60
/* 017   ----------------------------------------
 */	.byte		N36   
	.byte	W72
	.byte		N24   
	.byte	W24
/* 018   ----------------------------------------
 */	.byte	W96
/* 019   ----------------------------------------
 */	.byte	W48
	.byte		N48   , Fn3 
	.byte	W48
/* 020   ----------------------------------------
 */	.byte	W96
/* 021   ----------------------------------------
 */	.byte	W96
/* 022   ----------------------------------------
 */	.byte	W96
/* 023   ----------------------------------------
 */	.byte	W48
	.byte		N48   
	.byte	W48
/* 024   ----------------------------------------
 */	.byte	W96
/* 025   ----------------------------------------
 */	.byte	W36
	.byte		N36   , Cn4 
	.byte	W60
/* 026   ----------------------------------------
 */	.byte	W96
/* 027   ----------------------------------------
 */	.byte	W96
/* 028   ----------------------------------------
 */	.byte	W96
/* 029   ----------------------------------------
 */	.byte		N96   , As2 
	.byte	W96
/* 030   ----------------------------------------
 */	.byte		        Cs3 
	.byte	W96
/* 031   ----------------------------------------
 */	.byte		        Ds3 
	.byte	W96
/* 032   ----------------------------------------
 */	.byte		        Fn3 
	.byte	W96
/* 033   ----------------------------------------
 */	.byte	W96
/* 034   ----------------------------------------
 */	.byte	W96
/* 035   ----------------------------------------
 */	.byte	W96
/* 036   ----------------------------------------
 */	.byte		N96   
	.byte	W96
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
 */	.byte	W60
	.byte		N12   , Cn3 
	.byte	W36
/* 044   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_leaf_forest__act_1_12_B1
mus_leaf_forest__act_1_12_B2:
/* 045   ----------------------------------------
 */	.byte	W96
/* 046   ----------------------------------------
 */	.byte	FINE

/* **************** Track 13 (Midi-Chn.13) **************** */

mus_leaf_forest__act_1_13:
	.byte	KEYSH , mus_leaf_forest__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 103
	.byte		VOL   , 127*mus_leaf_forest__act_1_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
mus_leaf_forest__act_1_13_B1:
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
 */	.byte	W84
	.byte	W02
	.byte		BEND  , c_v-37
	.byte		N23   , Gn3 , v116
	.byte	W01
	.byte		BEND  , c_v-54
	.byte	W01
	.byte		        c_v-49
	.byte	W02
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-22
	.byte	W02
	.byte		        c_v+0
	.byte	W02
/* 030   ----------------------------------------
 */	.byte	W13
	.byte		N10   , Fs3 
	.byte	W11
	.byte		N11   , Gn3 , v092
	.byte	W12
	.byte		N20   , As2 , v124
	.byte	W23
	.byte		N10   , Gn3 , v096
	.byte	W11
	.byte		N12   , Fs3 , v124
	.byte	W12
	.byte		N11   , As2 , v112
	.byte	W12
	.byte		BEND  , c_v-10
	.byte	W01
	.byte		        c_v-15
	.byte		N11   , An3 
	.byte	W01
/* 031   ----------------------------------------
 */	.byte	W01
	.byte		BEND  , c_v-17
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-4
	.byte	W02
	.byte		        c_v+0
	.byte	W06
	.byte		N11   , Gs3 , v120
	.byte	W11
	.byte		N12   , An3 , v100
	.byte	W13
	.byte		N21   , Cn3 , v112
	.byte	W24
	.byte	W01
	.byte		N11   , Cn3 , v116
	.byte	W11
	.byte		N12   , Fn3 , v104
	.byte	W12
	.byte		        An3 , v096
	.byte	W13
/* 032   ----------------------------------------
 */	.byte		TIE   , Bn3 , v104
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-17
	.byte	W02
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-11
	.byte	W02
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v+0
	.byte	W60
	.byte	W03
	.byte		VOL   , 125*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        121*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        117*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        114*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        110*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        105*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        102*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        98*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        94*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        90*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        86*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        82*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
/* 033   ----------------------------------------
 */	.byte		        79*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        75*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        69*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        67*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        63*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        59*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        55*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        50*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        46*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        44*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        40*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        34*mus_leaf_forest__act_1_mvl/mxv
	.byte	W02
	.byte		        32*mus_leaf_forest__act_1_mvl/mxv
	.byte	W21
	.byte		EOT   
	.byte	W48
	.byte	W03
/* 034   ----------------------------------------
 */	.byte		VOL   , 127*mus_leaf_forest__act_1_mvl/mxv
	.byte	W96
/* 035   ----------------------------------------
 */	.byte	W96
/* 036   ----------------------------------------
 */	.byte	W24
	.byte		N24   , Bn2 , v092
	.byte	W24
	.byte		        Cn3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
/* 037   ----------------------------------------
 */	.byte		        Bn2 
	.byte	W24
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W24
	.byte		        Bn2 
	.byte	W22
	.byte		BEND  , c_v-13
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-23
	.byte		N36   , Cn3 , v112
	.byte	W03
	.byte		BEND  , c_v-22
	.byte	W01
	.byte		        c_v-8
	.byte	W02
	.byte		        c_v+0
	.byte	W06
/* 038   ----------------------------------------
 */	.byte	W23
	.byte		N12   , Dn3 
	.byte	W13
	.byte		N24   , Gn3 , v108
	.byte	W23
	.byte		N22   , Fs3 
	.byte	W24
	.byte		TIE   , Gn3 , v112
	.byte	W13
/* 039   ----------------------------------------
 */	.byte	W32
	.byte	W02
	.byte		BEND  , c_v+5
	.byte	W01
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+35
	.byte	W02
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+63
	.byte	W56
	.byte	W01
/* 040   ----------------------------------------
 */	.byte	W72
	.byte		EOT   
	.byte		BEND  , c_v+56
	.byte	W02
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+35
	.byte	W01
	.byte		        c_v+12
	.byte	W02
	.byte		        c_v+0
	.byte	W18
/* 041   ----------------------------------------
 */	.byte	W96
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte	W96
/* 044   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_leaf_forest__act_1_13_B1
mus_leaf_forest__act_1_13_B2:
/* 045   ----------------------------------------
 */	.byte	W96
/* 046   ----------------------------------------
 */	.byte	FINE

/* **************** Track 14 (Midi-Chn.14) **************** */

mus_leaf_forest__act_1_14:
	.byte	KEYSH , mus_leaf_forest__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 78
	.byte		VOL   , 127*mus_leaf_forest__act_1_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
mus_leaf_forest__act_1_14_B1:
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
 */	.byte	W24
	.byte		N24   , Fn3 , v112
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N09   
	.byte	W24
	.byte		N12   , Gn3 
	.byte	W12
/* 031   ----------------------------------------
 */	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N96   , An3 
	.byte	W12
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
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_leaf_forest__act_1_14_B1
mus_leaf_forest__act_1_14_B2:
/* 045   ----------------------------------------
 */	.byte	W96
/* 046   ----------------------------------------
 */	.byte	FINE

/* **************** Track 15 (Midi-Chn.15) **************** */

mus_leaf_forest__act_1_15:
	.byte	KEYSH , mus_leaf_forest__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 94
	.byte		VOL   , 127*mus_leaf_forest__act_1_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
mus_leaf_forest__act_1_15_B1:
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
 */	.byte		N06   , An2 , v100
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En2 
	.byte	W06
/* 014   ----------------------------------------
 */	.byte		N03   , An1 , v112
	.byte	W03
	.byte		N21   , An2 
	.byte	W92
	.byte	W01
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
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_leaf_forest__act_1_15_B1
mus_leaf_forest__act_1_15_B2:
/* 045   ----------------------------------------
 */	.byte	W96
/* 046   ----------------------------------------
 */	.byte	FINE

/* **************** Track 16 (Midi-Chn.16) **************** */

mus_leaf_forest__act_1_16:
	.byte	KEYSH , mus_leaf_forest__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 88
	.byte		VOL   , 127*mus_leaf_forest__act_1_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	PRIO  , 10
	.byte	W03
mus_leaf_forest__act_1_16_B1:
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
 */	.byte	W23
	.byte		N04   , Fn3 , v104
	.byte	W01
	.byte		N24   , Fs3 , v124
	.byte	W23
	.byte		N20   , Gn3 , v116
	.byte	W22
	.byte		N24   , An3 , v120
	.byte	W24
	.byte	W03
/* 033   ----------------------------------------
 */	.byte		        Fs3 , v127
	.byte	W22
	.byte		N13   , Gn3 , v108
	.byte	W14
	.byte		N14   , An3 , v124
	.byte	W23
	.byte		N15   , Fs3 , v127
	.byte	W24
	.byte		N03   , Fs3 , v116
	.byte	W01
	.byte		N32   , Gn3 , v112
	.byte	W12
/* 034   ----------------------------------------
 */	.byte	W21
	.byte		N16   , An3 , v116
	.byte	W14
	.byte		N22   , Gn3 , v112
	.byte	W24
	.byte		N19   , An3 , v100
	.byte	W24
	.byte	W01
	.byte		N05   , An3 , v120
	.byte	W01
	.byte		N32   , As3 , v116
	.byte	W11
/* 035   ----------------------------------------
 */	.byte	W22
	.byte		N14   , An3 , v108
	.byte	W13
	.byte		N16   , Gn3 
	.byte	W24
	.byte	W01
	.byte		N32   , An3 , v116
	.byte	W36
/* 036   ----------------------------------------
 */	.byte	W23
	.byte		N08   , Fn3 , v127
	.byte	W02
	.byte		N23   , Fs3 , v096
	.byte	W23
	.byte		N22   , Gn3 , v108
	.byte	W23
	.byte		N21   , An3 , v124
	.byte	W24
	.byte		N03   , Fn3 , v108
	.byte	W01
/* 037   ----------------------------------------
 */	.byte		N24   , Fs3 , v120
	.byte	W24
	.byte		N13   , Gn3 , v124
	.byte	W11
	.byte		N09   , An3 
	.byte	W24
	.byte		N08   , Fs3 , v127
	.byte	W24
	.byte		N05   
	.byte	W01
	.byte		N28   , Gn3 , v100
	.byte	W12
/* 038   ----------------------------------------
 */	.byte	W22
	.byte		N15   , An3 , v108
	.byte	W13
	.byte		N02   , Cs4 , v127
	.byte	W01
	.byte		N24   , Dn4 , v088
	.byte	W24
	.byte		N18   , Cs4 , v127
	.byte	W24
	.byte		N40   , Dn4 
	.byte	W12
/* 039   ----------------------------------------
 */	.byte	W32
	.byte	W02
	.byte		N06   , Ds4 , v120
	.byte	W01
	.byte		TIE   , En4 , v127
	.byte	W60
	.byte	W01
/* 040   ----------------------------------------
 */	.byte	W72
	.byte		BEND  , c_v-10
	.byte	W01
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		EOT   
	.byte	W01
	.byte		BEND  , c_v-27
	.byte	W01
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-38
	.byte	W02
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-41
	.byte	W13
	.byte		        c_v+0
	.byte	W02
/* 041   ----------------------------------------
 */	.byte	W96
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte	W96
/* 044   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_leaf_forest__act_1_16_B1
mus_leaf_forest__act_1_16_B2:
/* 045   ----------------------------------------
 */	.byte	W96
/* 046   ----------------------------------------
 */	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_leaf_forest__act_1):
	.byte	16	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_leaf_forest__act_1_pri	/* Priority */
	.byte	mus_leaf_forest__act_1_rev	/* Reverb */

mAlignWord
	mPtr	mus_leaf_forest__act_1_grp

	mPtr	mus_leaf_forest__act_1_1
	mPtr	mus_leaf_forest__act_1_2
	mPtr	mus_leaf_forest__act_1_3
	mPtr	mus_leaf_forest__act_1_4
	mPtr	mus_leaf_forest__act_1_5
	mPtr	mus_leaf_forest__act_1_6
	mPtr	mus_leaf_forest__act_1_7
	mPtr	mus_leaf_forest__act_1_8
	mPtr	mus_leaf_forest__act_1_9
	mPtr	mus_leaf_forest__act_1_10
	mPtr	mus_leaf_forest__act_1_11
	mPtr	mus_leaf_forest__act_1_12
	mPtr	mus_leaf_forest__act_1_13
	mPtr	mus_leaf_forest__act_1_14
	mPtr	mus_leaf_forest__act_1_15
	mPtr	mus_leaf_forest__act_1_16

	.end
