	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_hot_crater__act_2_grp, voicegroup022
	.equ	mus_hot_crater__act_2_pri, 0
	.equ	mus_hot_crater__act_2_rev, reverb_set+0
	.equ	mus_hot_crater__act_2_mvl, 94
	.equ	mus_hot_crater__act_2_key, 0
	.equ	mus_hot_crater__act_2_tbs, 1
	.equ	mus_hot_crater__act_2_exg, 1
	.equ	mus_hot_crater__act_2_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_hot_crater__act_2)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_hot_crater__act_2_1:
	.byte	KEYSH , mus_hot_crater__act_2_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 152*mus_hot_crater__act_2_tbs/2
	.byte		VOICE , 65
	.byte		VOL   , 127*mus_hot_crater__act_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
/* 001   ----------------------------------------
 */mus_hot_crater__act_2_1_001:
	.byte		N05   , An1 , v120
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte	PEND
/* 002   ----------------------------------------
 */mus_hot_crater__act_2_1_002:
	.byte		N05   , Gn1 , v120
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte	PEND
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_1_001
/* 004   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_1_002
/* 005   ----------------------------------------
 */mus_hot_crater__act_2_1_005:
	.byte		N05   , An1 , v120
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
mus_hot_crater__act_2_1_B1:
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_1_005
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_1_005
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_1_005
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_1_005
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_1_005
/* 011   ----------------------------------------
 */mus_hot_crater__act_2_1_011:
	.byte		N05   , Gn1 , v120
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_1_011
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_1_005
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_1_005
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_1_005
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_1_005
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_1_005
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_1_005
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_1_011
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_1_011
/* 021   ----------------------------------------
 */mus_hot_crater__act_2_1_021:
	.byte		N05   , Dn2 , v120
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_1_021
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_1_005
/* 024   ----------------------------------------
 */mus_hot_crater__act_2_1_024:
	.byte		N05   , Gs1 , v120
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_1_011
/* 026   ----------------------------------------
 */mus_hot_crater__act_2_1_026:
	.byte		N05   , En2 , v120
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_1_005
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_1_024
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_1_011
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_1_026
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_1_021
/* 032   ----------------------------------------
 */mus_hot_crater__act_2_1_032:
	.byte		N05   , Cs2 , v120
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
/* 033   ----------------------------------------
 */	.byte		        Cn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N05   
	.byte	W06
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_1_005
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_1_021
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_1_032
/* 037   ----------------------------------------
 */	.byte		N05   , Ds2 , v120
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N05   
	.byte	W06
/* 038   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_1_026
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_1_005
/* 040   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_1_002
/* 041   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_1_005
	.byte	GOTO
	 mPtr	mus_hot_crater__act_2_1_B1
mus_hot_crater__act_2_1_B2:
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_hot_crater__act_2_2:
	.byte	KEYSH , mus_hot_crater__act_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 127
	.byte		VOL   , 127*mus_hot_crater__act_2_mvl/mxv
	.byte	W03
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */mus_hot_crater__act_2_2_003:
	.byte		N24   , Ds2 , v120
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
/* 004   ----------------------------------------
 */mus_hot_crater__act_2_2_004:
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
/* 005   ----------------------------------------
 */mus_hot_crater__act_2_2_005:
	.byte		N18   , Ds2 , v120
	.byte	W18
	.byte		N06   , Ds2 , v112
	.byte	W06
	.byte		N24   , En2 , v120
	.byte	W24
	.byte		        Ds2 
	.byte	W24
	.byte		        En2 
	.byte	W24
	.byte	PEND
mus_hot_crater__act_2_2_B1:
/* 006   ----------------------------------------
 */	.byte		N24   , Ds2 , v120
	.byte	W24
	.byte		N18   , En2 
	.byte	W18
	.byte		N06   , Ds2 , v112
	.byte	W06
	.byte		        En2 , v120
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
	.byte		N06   
	.byte	W06
/* 007   ----------------------------------------
 */mus_hot_crater__act_2_2_007:
	.byte		N24   , Ds2 , v120
	.byte	W24
	.byte		N18   , En2 
	.byte	W18
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N06   , Ds2 , v112
	.byte	W06
	.byte		N12   , Ds2 , v120
	.byte	W12
	.byte		N24   , En2 
	.byte	W24
	.byte	PEND
/* 008   ----------------------------------------
 */mus_hot_crater__act_2_2_008:
	.byte		N24   , Ds2 , v120
	.byte	W24
	.byte		N12   , En2 
	.byte	W12
	.byte		N06   , Ds2 , v100
	.byte	W06
	.byte		        En2 , v092
	.byte	W06
	.byte		        Ds2 , v120
	.byte	W06
	.byte		        En2 , v112
	.byte	W06
	.byte		N12   , Ds2 , v100
	.byte	W12
	.byte		N24   , En2 , v120
	.byte	W24
	.byte	PEND
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_2_007
/* 010   ----------------------------------------
 */mus_hot_crater__act_2_2_010:
	.byte		N24   , Ds2 , v120
	.byte	W24
	.byte		N12   , En2 
	.byte	W12
	.byte		N06   , Ds2 , v100
	.byte	W06
	.byte		        En2 , v092
	.byte	W06
	.byte		        Ds2 , v120
	.byte	W06
	.byte		        En2 , v112
	.byte	W06
	.byte		N12   , Ds2 , v100
	.byte	W12
	.byte		        En2 , v120
	.byte	W12
	.byte		        Ds2 , v112
	.byte	W12
	.byte	PEND
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_2_007
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_2_008
/* 013   ----------------------------------------
 */mus_hot_crater__act_2_2_013:
	.byte		N24   , Ds2 , v120
	.byte	W24
	.byte		N18   , En2 
	.byte	W18
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N06   , Ds2 , v112
	.byte	W06
	.byte		N12   , Ds2 , v120
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Ds2 , v112
	.byte	W12
	.byte	PEND
/* 014   ----------------------------------------
 */mus_hot_crater__act_2_2_014:
	.byte		N24   , Ds2 , v120
	.byte	W24
	.byte		N12   , En2 
	.byte	W12
	.byte		N06   , Ds2 , v100
	.byte	W06
	.byte		        En2 , v092
	.byte	W06
	.byte		        En2 , v120
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
	.byte		N06   
	.byte	W06
	.byte	PEND
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_2_007
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_2_008
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_2_007
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_2_010
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_2_007
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_2_008
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_2_013
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_2_014
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_2_003
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_2_004
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_2_003
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_2_004
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_2_003
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_2_004
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_2_003
/* 030   ----------------------------------------
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
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_2_003
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_2_004
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_2_003
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_2_004
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_2_003
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_2_004
/* 037   ----------------------------------------
 */	.byte		N24   , Ds2 , v120
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   , En2 
	.byte	W12
	.byte		N24   , Ds2 
	.byte	W12
/* 038   ----------------------------------------
 */	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , En2 
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
	.byte		N06   
	.byte	W06
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_2_003
/* 040   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_2_004
/* 041   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_2_005
	.byte	GOTO
	 mPtr	mus_hot_crater__act_2_2_B1
mus_hot_crater__act_2_2_B2:
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_hot_crater__act_2_3:
	.byte	KEYSH , mus_hot_crater__act_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 127
	.byte		VOL   , 127*mus_hot_crater__act_2_mvl/mxv
	.byte	W03
/* 001   ----------------------------------------
 */	.byte		N06   , Ds1 , v040
	.byte	W06
	.byte		        Ds1 , v044
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N06   , Ds1 
	.byte	W06
	.byte		        Ds1 , v048
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N06   , Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn1 , v052
	.byte	W12
	.byte		N06   , Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn1 , v056
	.byte	W12
/* 002   ----------------------------------------
 */	.byte		N06   , Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn1 , v060
	.byte	W12
	.byte		N06   , Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N06   , Ds1 , v064
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N06   , Ds1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
/* 003   ----------------------------------------
 */	.byte		        Ds1 , v072
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Ds1 , v076
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Ds1 , v080
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Ds1 , v084
	.byte	W12
	.byte		        Dn1 
	.byte	W12
/* 004   ----------------------------------------
 */	.byte		        Ds1 , v088
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Dn1 , v096
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Dn1 , v100
	.byte	W12
/* 005   ----------------------------------------
 */	.byte		N18   , Fn2 , v120
	.byte	W12
	.byte		N06   , Dn1 , v072
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
mus_hot_crater__act_2_3_B1:
/* 006   ----------------------------------------
 */	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06   
	.byte	W54
/* 007   ----------------------------------------
 */mus_hot_crater__act_2_3_007:
	.byte		N24   , Cs2 , v127
	.byte	W12
	.byte		N06   , Dn1 , v072
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
/* 008   ----------------------------------------
 */mus_hot_crater__act_2_3_008:
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06   
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
	.byte	PEND
/* 009   ----------------------------------------
 */mus_hot_crater__act_2_3_009:
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
/* 010   ----------------------------------------
 */mus_hot_crater__act_2_3_010:
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte	PEND
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_3_009
/* 012   ----------------------------------------
 */	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_3_009
/* 014   ----------------------------------------
 */	.byte		N12   , En1 , v072
	.byte	W12
	.byte		N06   , Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Ds1 
	.byte	W06
	.byte		N06   
	.byte	W54
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_3_007
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_3_008
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_3_009
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_3_010
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_3_009
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_3_008
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_3_009
/* 022   ----------------------------------------
 */	.byte		N12   , En1 , v072
	.byte	W12
	.byte		N06   , Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
/* 023   ----------------------------------------
 */mus_hot_crater__act_2_3_023:
	.byte		N24   , Cs2 , v120
	.byte	W12
	.byte		N12   , Dn1 , v060
	.byte	W12
	.byte		        Ds1 , v064
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En1 , v068
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        En1 , v072
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte	PEND
/* 024   ----------------------------------------
 */mus_hot_crater__act_2_3_024:
	.byte		N12   , En1 , v072
	.byte	W12
	.byte		        Ds1 , v076
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Ds1 , v080
	.byte	W12
	.byte		N06   
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
	.byte	PEND
/* 025   ----------------------------------------
 */mus_hot_crater__act_2_3_025:
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte	PEND
/* 026   ----------------------------------------
 */mus_hot_crater__act_2_3_026:
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N06   , En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte	PEND
/* 027   ----------------------------------------
 */mus_hot_crater__act_2_3_027:
	.byte		N24   , Cs2 , v120
	.byte	W12
	.byte		N12   , Ds1 , v080
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte	PEND
/* 028   ----------------------------------------
 */mus_hot_crater__act_2_3_028:
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N06   
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
	.byte	PEND
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_3_025
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_3_026
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_3_023
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_3_024
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_3_025
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_3_026
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_3_027
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_3_028
/* 037   ----------------------------------------
 */	.byte		N12   , En1 , v080
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N24   , Cs2 , v120
	.byte	W12
/* 038   ----------------------------------------
 */	.byte	W12
	.byte		N12   , Ds1 , v080
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N06   , En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
/* 039   ----------------------------------------
 */	.byte		N24   , Cs2 , v127
	.byte	W96
/* 040   ----------------------------------------
 */	.byte		N12   , Ds1 , v044
	.byte	W12
	.byte		        Dn1 , v052
	.byte	W12
	.byte		        Ds1 , v056
	.byte	W12
	.byte		        Dn1 , v064
	.byte	W12
	.byte		        Ds1 , v072
	.byte	W12
	.byte		        Dn1 , v076
	.byte	W12
	.byte		        Ds1 , v084
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
/* 041   ----------------------------------------
 */	.byte		N24   , Fs2 , v120
	.byte	W12
	.byte		N06   , Dn1 , v072
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	GOTO
	 mPtr	mus_hot_crater__act_2_3_B1
mus_hot_crater__act_2_3_B2:
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_hot_crater__act_2_4:
	.byte	KEYSH , mus_hot_crater__act_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 103
	.byte		VOL   , 82*mus_hot_crater__act_2_mvl/mxv
	.byte	PRIO  , 15
	.byte	W03
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
mus_hot_crater__act_2_4_B1:
/* 006   ----------------------------------------
 */mus_hot_crater__act_2_4_006:
	.byte	W92
	.byte	W03
	.byte		BEND  , c_v-48
	.byte	W01
	.byte	PEND
/* 007   ----------------------------------------
 */mus_hot_crater__act_2_4_007:
	.byte		BEND  , c_v-42
	.byte		N12   , An2 , v100
	.byte	W01
	.byte		BEND  , c_v-35
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		TIE   , Fs3 
	.byte	W60
	.byte	PEND
/* 008   ----------------------------------------
 */	.byte	W84
	.byte		EOT   
	.byte	W11
	.byte		BEND  , c_v-48
	.byte	W01
/* 009   ----------------------------------------
 */mus_hot_crater__act_2_4_009:
	.byte		BEND  , c_v-42
	.byte		N12   , An2 , v100
	.byte	W01
	.byte		BEND  , c_v-35
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v+0
	.byte	W06
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N36   , Fs3 
	.byte	W36
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N36   , Fs3 
	.byte	W12
	.byte	PEND
/* 010   ----------------------------------------
 */	.byte	W24
	.byte		N12   , Dn3 
	.byte	W11
	.byte		BEND  , c_v-48
	.byte	W01
	.byte		        c_v-42
	.byte		N24   , An3 
	.byte	W01
	.byte		BEND  , c_v-35
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v+0
	.byte	W18
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
/* 011   ----------------------------------------
 */	.byte		TIE   , En3 
	.byte	W96
/* 012   ----------------------------------------
 */	.byte	W60
	.byte		EOT   
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		TIE   , Fs3 
	.byte	W12
/* 013   ----------------------------------------
 */	.byte	W96
/* 014   ----------------------------------------
 */	.byte	W72
	.byte		EOT   
	.byte	W23
	.byte		BEND  , c_v-48
	.byte	W01
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_4_007
/* 016   ----------------------------------------
 */	.byte	W84
	.byte		EOT   , Fs3 
	.byte	W11
	.byte		BEND  , c_v-48
	.byte	W01
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_4_009
/* 018   ----------------------------------------
 */	.byte	W24
	.byte		N12   , Dn3 , v100
	.byte	W11
	.byte		BEND  , c_v-48
	.byte	W01
	.byte		        c_v-42
	.byte		N24   , An3 
	.byte	W01
	.byte		BEND  , c_v-35
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v+0
	.byte	W18
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W11
	.byte		BEND  , c_v-48
	.byte	W01
/* 019   ----------------------------------------
 */	.byte		        c_v-42
	.byte		TIE   , En3 
	.byte	W01
	.byte		BEND  , c_v-35
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v+0
	.byte	W90
/* 020   ----------------------------------------
 */	.byte	W60
	.byte		EOT   
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		TIE   , Dn3 
	.byte	W12
/* 021   ----------------------------------------
 */	.byte	W96
/* 022   ----------------------------------------
 */	.byte	W48
	.byte		EOT   
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N48   , Fs3 
	.byte	W12
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
	 mPtr	mus_hot_crater__act_2_4_006
/* 031   ----------------------------------------
 */	.byte		BEND  , c_v-42
	.byte		N44   , Gn3 , v100
	.byte	W01
	.byte		BEND  , c_v-35
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v+0
	.byte	W40
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-42
	.byte		N24   
	.byte	W01
	.byte		BEND  , c_v-35
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v+0
	.byte	W04
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-28
	.byte	W02
	.byte		        c_v-32
	.byte	W06
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N56   , Ds3 
	.byte	W12
/* 032   ----------------------------------------
 */	.byte	W48
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		N24   , An3 
	.byte	W09
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-64
	.byte	W08
	.byte		N12   , En3 
	.byte	W12
/* 033   ----------------------------------------
 */	.byte		N24   , Dn3 
	.byte	W24
	.byte		N12   , En3 
	.byte	W12
	.byte		BEND  , c_v-59
	.byte		N24   
	.byte	W01
	.byte		BEND  , c_v-53
	.byte	W01
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v+0
	.byte	W15
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N92   , Gn3 
	.byte	W12
/* 034   ----------------------------------------
 */	.byte	W24
	.byte	W03
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+38
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+51
	.byte	W01
	.byte		        c_v+55
	.byte	W01
	.byte		        c_v+59
	.byte	W01
	.byte		        c_v+63
	.byte	W56
	.byte	W01
/* 035   ----------------------------------------
 */	.byte	W96
/* 036   ----------------------------------------
 */	.byte		        c_v+0
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
	.byte	GOTO
	 mPtr	mus_hot_crater__act_2_4_B1
mus_hot_crater__act_2_4_B2:
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_hot_crater__act_2_5:
	.byte	KEYSH , mus_hot_crater__act_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 2
	.byte		VOL   , 64*mus_hot_crater__act_2_mvl/mxv
	.byte		PAN   , c_v-30
	.byte	W03
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte		N04   , An3 , v100
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        An3 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        An3 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        An3 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        An3 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
mus_hot_crater__act_2_5_B1:
/* 006   ----------------------------------------
 */	.byte		N04   , An3 , v100
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        En3 
	.byte	W06
/* 007   ----------------------------------------
 */mus_hot_crater__act_2_5_007:
	.byte		N04   , An4 , v080
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W18
	.byte		N04   
	.byte	W24
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte	PEND
/* 008   ----------------------------------------
 */mus_hot_crater__act_2_5_008:
	.byte	W06
	.byte		N04   , An4 , v080
	.byte	W12
	.byte		N04   
	.byte	W18
	.byte		        An5 
	.byte	W18
	.byte		        An4 
	.byte	W18
	.byte		        An5 
	.byte	W18
	.byte		        An4 
	.byte	W06
	.byte	PEND
/* 009   ----------------------------------------
 */mus_hot_crater__act_2_5_009:
	.byte	W06
	.byte		N04   , An5 , v080
	.byte	W12
	.byte		        An4 
	.byte	W18
	.byte		        An5 
	.byte	W18
	.byte		        An4 
	.byte	W18
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte	PEND
/* 010   ----------------------------------------
 */mus_hot_crater__act_2_5_010:
	.byte		N04   , An4 , v080
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		        An4 
	.byte	W18
	.byte		N04   
	.byte	W18
	.byte		N04   
	.byte	W24
	.byte		N04   
	.byte	W12
	.byte	PEND
/* 011   ----------------------------------------
 */mus_hot_crater__act_2_5_011:
	.byte		N04   , Gn4 , v080
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W18
	.byte		N04   
	.byte	W24
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte	PEND
/* 012   ----------------------------------------
 */mus_hot_crater__act_2_5_012:
	.byte	W06
	.byte		N04   , Gn4 , v080
	.byte	W12
	.byte		N04   
	.byte	W18
	.byte		        Gn5 
	.byte	W18
	.byte		        Gn4 
	.byte	W18
	.byte		        Gn5 
	.byte	W18
	.byte		        Gn4 
	.byte	W06
	.byte	PEND
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_5_009
/* 014   ----------------------------------------
 */	.byte		N04   , En3 , v100
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		N04   
	.byte	W06
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_5_007
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_5_008
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_5_009
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_5_010
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_5_011
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_5_012
/* 021   ----------------------------------------
 */	.byte	W06
	.byte		N04   , Dn6 , v080
	.byte	W12
	.byte		        Dn5 
	.byte	W18
	.byte		        Dn6 
	.byte	W18
	.byte		        Dn5 
	.byte	W18
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
/* 022   ----------------------------------------
 */	.byte		        En4 , v100
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		N04   
	.byte	W06
/* 023   ----------------------------------------
 */	.byte	W96
/* 024   ----------------------------------------
 */	.byte	W96
/* 025   ----------------------------------------
 */	.byte	W96
/* 026   ----------------------------------------
 */	.byte		        Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
/* 027   ----------------------------------------
 */	.byte	W96
/* 028   ----------------------------------------
 */	.byte	W96
/* 029   ----------------------------------------
 */	.byte	W96
/* 030   ----------------------------------------
 */	.byte		        En3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En5 
	.byte	W06
/* 031   ----------------------------------------
 */	.byte	W96
/* 032   ----------------------------------------
 */	.byte	W96
/* 033   ----------------------------------------
 */	.byte	W96
/* 034   ----------------------------------------
 */	.byte		        An4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		        An3 
	.byte	W12
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
 */	.byte		        An3 , v072
	.byte	W12
	.byte		        Dn5 , v076
	.byte	W12
	.byte		        An3 , v080
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        An3 , v084
	.byte	W12
	.byte		        Dn5 , v088
	.byte	W12
	.byte		        An3 
	.byte	W06
	.byte		        Dn5 , v092
	.byte	W06
	.byte		        An3 
	.byte	W12
	.byte		        Dn5 , v096
	.byte	W12
	.byte	GOTO
	 mPtr	mus_hot_crater__act_2_5_B1
mus_hot_crater__act_2_5_B2:
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_hot_crater__act_2_6:
	.byte	KEYSH , mus_hot_crater__act_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 12
	.byte		VOL   , 42*mus_hot_crater__act_2_mvl/mxv
	.byte		PAN   , c_v+30
	.byte	W03
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W06
	.byte		N04   , An3 , v100
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An3 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        An3 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An3 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        An3 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
mus_hot_crater__act_2_6_B1:
/* 006   ----------------------------------------
 */	.byte		N04   , En3 , v100
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An3 
	.byte	W06
/* 007   ----------------------------------------
 */mus_hot_crater__act_2_6_007:
	.byte	W06
	.byte		N04   , An5 , v080
	.byte	W12
	.byte		        An4 
	.byte	W18
	.byte		        An5 
	.byte	W18
	.byte		        An4 
	.byte	W18
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte	PEND
/* 008   ----------------------------------------
 */mus_hot_crater__act_2_6_008:
	.byte		N04   , An4 , v080
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		        An4 
	.byte	W18
	.byte		N04   
	.byte	W18
	.byte		N04   
	.byte	W24
	.byte		N04   
	.byte	W12
	.byte	PEND
/* 009   ----------------------------------------
 */mus_hot_crater__act_2_6_009:
	.byte		N04   , An4 , v080
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W18
	.byte		N04   
	.byte	W24
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte	PEND
/* 010   ----------------------------------------
 */mus_hot_crater__act_2_6_010:
	.byte	W06
	.byte		N04   , An4 , v080
	.byte	W12
	.byte		N04   
	.byte	W18
	.byte		        An5 
	.byte	W18
	.byte		        An4 
	.byte	W18
	.byte		        An5 
	.byte	W18
	.byte		        An4 
	.byte	W06
	.byte	PEND
/* 011   ----------------------------------------
 */mus_hot_crater__act_2_6_011:
	.byte	W06
	.byte		N04   , Gn5 , v080
	.byte	W12
	.byte		        Gn4 
	.byte	W18
	.byte		        Gn5 
	.byte	W18
	.byte		        Gn4 
	.byte	W18
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte	PEND
/* 012   ----------------------------------------
 */mus_hot_crater__act_2_6_012:
	.byte		N04   , Gn4 , v080
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		        Gn4 
	.byte	W18
	.byte		N04   
	.byte	W18
	.byte		N04   
	.byte	W24
	.byte		N04   
	.byte	W12
	.byte	PEND
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_6_009
/* 014   ----------------------------------------
 */	.byte		N04   , Cs3 , v100
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cs6 
	.byte	W06
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_6_007
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_6_008
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_6_009
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_6_010
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_6_011
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_6_012
/* 021   ----------------------------------------
 */	.byte		N04   , Dn5 , v080
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W18
	.byte		N04   
	.byte	W24
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W06
/* 022   ----------------------------------------
 */	.byte		        Gn4 , v100
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		N04   
	.byte	W06
/* 023   ----------------------------------------
 */	.byte	W96
/* 024   ----------------------------------------
 */	.byte	W96
/* 025   ----------------------------------------
 */	.byte	W96
/* 026   ----------------------------------------
 */	.byte		        En3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
/* 027   ----------------------------------------
 */	.byte	W96
/* 028   ----------------------------------------
 */	.byte	W96
/* 029   ----------------------------------------
 */	.byte	W96
/* 030   ----------------------------------------
 */	.byte		        Bn2 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
/* 031   ----------------------------------------
 */	.byte	W96
/* 032   ----------------------------------------
 */	.byte	W96
/* 033   ----------------------------------------
 */	.byte	W96
/* 034   ----------------------------------------
 */	.byte	W06
	.byte		        An4 
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W06
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
 */	.byte	W06
	.byte		        An3 , v072
	.byte	W06
	.byte		        Bn4 , v076
	.byte	W06
	.byte		        An3 
	.byte	W12
	.byte		        Bn4 , v080
	.byte	W12
	.byte		        An3 , v084
	.byte	W06
	.byte		        Bn4 , v088
	.byte	W06
	.byte		        An3 
	.byte	W12
	.byte		        Bn4 , v092
	.byte	W12
	.byte		        An3 , v096
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An3 , v100
	.byte	W06
	.byte	GOTO
	 mPtr	mus_hot_crater__act_2_6_B1
mus_hot_crater__act_2_6_B2:
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_hot_crater__act_2_7:
	.byte	KEYSH , mus_hot_crater__act_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 80
	.byte		VOL   , 127*mus_hot_crater__act_2_mvl/mxv
	.byte	W03
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
mus_hot_crater__act_2_7_B1:
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
 */	.byte	W64
	.byte		N06   , Dn2 , v072
	.byte	W04
	.byte		        En2 , v076
	.byte	W04
	.byte		        Fn2 , v080
	.byte	W04
	.byte		        Gn2 , v084
	.byte	W04
	.byte		        An2 , v088
	.byte	W04
	.byte		        Bn2 , v092
	.byte	W04
	.byte		        Cn3 , v096
	.byte	W04
	.byte		        Dn3 , v100
	.byte	W04
/* 023   ----------------------------------------
 */	.byte		N96   , En3 , v112
	.byte	W96
/* 024   ----------------------------------------
 */	.byte	W96
/* 025   ----------------------------------------
 */	.byte		        Dn3 
	.byte	W96
/* 026   ----------------------------------------
 */	.byte		N84   , Bn2 
	.byte	W84
	.byte		N04   , An2 , v080
	.byte	W03
	.byte		        Bn2 , v088
	.byte	W03
	.byte		        Cn3 , v092
	.byte	W03
	.byte		        Dn3 , v096
	.byte	W03
/* 027   ----------------------------------------
 */	.byte		N96   , En3 , v112
	.byte	W96
/* 028   ----------------------------------------
 */	.byte	W96
/* 029   ----------------------------------------
 */	.byte		        Dn3 
	.byte	W96
/* 030   ----------------------------------------
 */	.byte		N84   , Bn2 
	.byte	W84
	.byte		N04   , Dn3 , v080
	.byte	W03
	.byte		        En3 , v088
	.byte	W03
	.byte		        Fn3 , v092
	.byte	W03
	.byte		        Gn3 , v096
	.byte	W03
/* 031   ----------------------------------------
 */	.byte		N96   , An3 , v112
	.byte	W96
/* 032   ----------------------------------------
 */	.byte		        En3 
	.byte	W96
/* 033   ----------------------------------------
 */	.byte		        Gn3 
	.byte	W96
/* 034   ----------------------------------------
 */	.byte		N84   , En3 
	.byte	W84
	.byte		N04   , Dn3 , v080
	.byte	W03
	.byte		        En3 , v088
	.byte	W03
	.byte		        Fn3 , v092
	.byte	W03
	.byte		        Gn3 , v096
	.byte	W03
/* 035   ----------------------------------------
 */	.byte		N96   , An3 , v112
	.byte	W96
/* 036   ----------------------------------------
 */	.byte		        En3 
	.byte	W96
/* 037   ----------------------------------------
 */	.byte		N84   , Fs3 
	.byte	W84
	.byte		N18   , Bn2 
	.byte	W12
/* 038   ----------------------------------------
 */	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W60
/* 039   ----------------------------------------
 */	.byte	W96
/* 040   ----------------------------------------
 */	.byte	W96
/* 041   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_hot_crater__act_2_7_B1
mus_hot_crater__act_2_7_B2:
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte	FINE

/* **************** Track 8 (Midi-Chn.8) **************** */

mus_hot_crater__act_2_8:
	.byte	KEYSH , mus_hot_crater__act_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 74
	.byte		VOL   , 127*mus_hot_crater__act_2_mvl/mxv
	.byte		BENDR , 8
	.byte		PAN   , c_v+20
	.byte	PRIO  , 10
	.byte	W03
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W60
	.byte		N06   , An2 , v100
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gs3 
	.byte	W05
	.byte		N08   , An3 , v064
	.byte	W01
/* 003   ----------------------------------------
 */	.byte	W06
	.byte		N03   , Gn3 , v076
	.byte	W02
	.byte		        Fn3 , v104
	.byte	W02
	.byte		N02   , En3 , v096
	.byte	W01
	.byte		N03   , Dn3 , v076
	.byte	W01
	.byte		        Cn3 , v088
	.byte	W01
	.byte		N04   , Bn2 , v084
	.byte	W02
	.byte		N03   , An2 , v080
	.byte	W02
	.byte		        Gn2 , v072
	.byte	W78
	.byte	W01
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W96
mus_hot_crater__act_2_8_B1:
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
 */mus_hot_crater__act_2_8_023:
	.byte	W24
	.byte		N18   , En3 , v112
	.byte	W24
	.byte		N09   , Dn3 , v100
	.byte	W12
	.byte		N18   , Cs3 
	.byte	W24
	.byte		        Dn3 
	.byte	W12
	.byte	PEND
/* 024   ----------------------------------------
 */mus_hot_crater__act_2_8_024:
	.byte	W12
	.byte		N09   , Dn3 , v100
	.byte	W12
	.byte		        Cs3 
	.byte	W24
	.byte		        Bn2 
	.byte	W12
	.byte		N18   , An2 
	.byte	W24
	.byte		        Dn3 
	.byte	W12
	.byte	PEND
/* 025   ----------------------------------------
 */	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		        Cs3 
	.byte	W24
	.byte		        Bn2 
	.byte	W12
	.byte		N18   , An2 
	.byte	W24
	.byte		N72   , En2 
	.byte	W12
/* 026   ----------------------------------------
 */	.byte	W96
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_8_023
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_8_024
/* 029   ----------------------------------------
 */	.byte	W12
	.byte		N09   , Dn3 , v100
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N72   , En3 
	.byte	W12
/* 030   ----------------------------------------
 */	.byte	W96
/* 031   ----------------------------------------
 */	.byte	W84
	.byte		N21   , Gs2 , v092
	.byte		N21   , Gs3 
	.byte	W12
/* 032   ----------------------------------------
 */	.byte	W12
	.byte		N07   , An2 
	.byte		N07   , An3 
	.byte	W12
	.byte		        An2 
	.byte		N07   , An3 
	.byte	W12
	.byte		        En2 
	.byte		N07   , En3 
	.byte	W12
	.byte		        Gs2 
	.byte		N07   , Gs3 
	.byte	W12
	.byte		        An2 
	.byte		N07   , An3 
	.byte	W36
/* 033   ----------------------------------------
 */	.byte	W96
/* 034   ----------------------------------------
 */	.byte	W96
/* 035   ----------------------------------------
 */	.byte	W24
	.byte		N18   , Dn4 , v100
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N09   , Bn3 
	.byte	W12
	.byte		N48   , An3 
	.byte	W12
/* 036   ----------------------------------------
 */	.byte	W60
	.byte		N12   , En4 
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
/* 037   ----------------------------------------
 */	.byte		N18   , Ds4 
	.byte	W24
	.byte		N09   
	.byte	W12
	.byte		N18   , En4 
	.byte	W24
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N18   , En4 
	.byte	W12
/* 038   ----------------------------------------
 */	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N06   
	.byte	W60
/* 039   ----------------------------------------
 */	.byte	W96
/* 040   ----------------------------------------
 */	.byte	W96
/* 041   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_hot_crater__act_2_8_B1
mus_hot_crater__act_2_8_B2:
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte	FINE

/* **************** Track 9 (Midi-Chn.9) **************** */

mus_hot_crater__act_2_9:
	.byte	KEYSH , mus_hot_crater__act_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 106
	.byte		VOL   , 84*mus_hot_crater__act_2_mvl/mxv
	.byte		BENDR , 12
	.byte		PAN   , c_v+20
	.byte	W03
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */mus_hot_crater__act_2_9_003:
	.byte		N04   , An3 , v100
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte	PEND
/* 004   ----------------------------------------
 */	.byte		        Gn3 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_9_003
mus_hot_crater__act_2_9_B1:
/* 006   ----------------------------------------
 */	.byte		BEND  , c_v+63
	.byte		N96   , An5 , v120
	.byte	W36
	.byte		BEND  , c_v+63
	.byte	W01
	.byte		        c_v+63
	.byte	W01
	.byte		        c_v+63
	.byte	W01
	.byte		        c_v+63
	.byte	W01
	.byte		        c_v+63
	.byte	W01
	.byte		        c_v+62
	.byte	W01
	.byte		        c_v+62
	.byte	W01
	.byte		        c_v+62
	.byte	W01
	.byte		        c_v+61
	.byte	W01
	.byte		        c_v+60
	.byte	W01
	.byte		        c_v+60
	.byte	W01
	.byte		        c_v+59
	.byte	W01
	.byte		        c_v+58
	.byte	W01
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+56
	.byte	W01
	.byte		        c_v+55
	.byte	W01
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+51
	.byte	W01
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+48
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+44
	.byte	W01
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+40
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+37
	.byte	W01
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+31
	.byte	W01
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+13
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-64
	.byte	W01
/* 007   ----------------------------------------
 */mus_hot_crater__act_2_9_007:
	.byte		N04   , An4 , v100
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte	PEND
/* 008   ----------------------------------------
 */mus_hot_crater__act_2_9_008:
	.byte		N04   , An4 , v100
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte	PEND
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_9_007
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_9_008
/* 011   ----------------------------------------
 */mus_hot_crater__act_2_9_011:
	.byte		N04   , Gn4 , v100
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte	PEND
/* 012   ----------------------------------------
 */mus_hot_crater__act_2_9_012:
	.byte		N04   , Gn4 , v100
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte	PEND
/* 013   ----------------------------------------
 */	.byte		        An4 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W05
	.byte		BEND  , c_v+63
	.byte	W01
/* 014   ----------------------------------------
 */	.byte		N96   , An5 , v120
	.byte	W36
	.byte		BEND  , c_v+63
	.byte	W01
	.byte		        c_v+63
	.byte	W01
	.byte		        c_v+63
	.byte	W01
	.byte		        c_v+63
	.byte	W01
	.byte		        c_v+63
	.byte	W01
	.byte		        c_v+62
	.byte	W01
	.byte		        c_v+62
	.byte	W01
	.byte		        c_v+62
	.byte	W01
	.byte		        c_v+61
	.byte	W01
	.byte		        c_v+60
	.byte	W01
	.byte		        c_v+60
	.byte	W01
	.byte		        c_v+59
	.byte	W01
	.byte		        c_v+58
	.byte	W01
	.byte		        c_v+57
	.byte	W01
	.byte		        c_v+56
	.byte	W01
	.byte		        c_v+55
	.byte	W01
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+51
	.byte	W01
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+48
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+44
	.byte	W01
	.byte		        c_v+42
	.byte	W01
	.byte		        c_v+40
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+37
	.byte	W01
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+31
	.byte	W01
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+13
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-64
	.byte	W01
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_9_007
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_9_008
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_9_007
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_9_008
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_9_011
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_9_012
/* 021   ----------------------------------------
 */	.byte		N04   , Dn5 , v100
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
/* 022   ----------------------------------------
 */	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_9_007
/* 024   ----------------------------------------
 */mus_hot_crater__act_2_9_024:
	.byte		N04   , Gs4 , v100
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte	PEND
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_9_011
/* 026   ----------------------------------------
 */mus_hot_crater__act_2_9_026:
	.byte		N04   , En5 , v100
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte	PEND
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_9_007
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_9_024
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_9_011
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_9_026
/* 031   ----------------------------------------
 */mus_hot_crater__act_2_9_031:
	.byte		N04   , Dn4 , v100
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte	PEND
/* 032   ----------------------------------------
 */mus_hot_crater__act_2_9_032:
	.byte		N04   , Cs4 , v100
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte	PEND
/* 033   ----------------------------------------
 */	.byte		        Cn4 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_9_008
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_9_031
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_9_032
/* 037   ----------------------------------------
 */	.byte		N04   , Ds4 , v100
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W18
/* 038   ----------------------------------------
 */	.byte		        En4 
	.byte	W06
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
/* 039   ----------------------------------------
 */	.byte	W96
/* 040   ----------------------------------------
 */	.byte		BEND  , c_v+0
	.byte	W96
/* 041   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_9_003
	.byte	GOTO
	 mPtr	mus_hot_crater__act_2_9_B1
mus_hot_crater__act_2_9_B2:
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte	FINE

/* **************** Track 10 (Midi-Chn.10) **************** */

mus_hot_crater__act_2_10:
	.byte	KEYSH , mus_hot_crater__act_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 74
	.byte		VOL   , 127*mus_hot_crater__act_2_mvl/mxv
	.byte		BENDR , 8
	.byte		PAN   , c_v-20
	.byte	PRIO  , 13
	.byte	W03
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W60
	.byte		N06   , An1 , v100
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Gs2 
	.byte	W05
	.byte		N08   , An2 , v064
	.byte	W01
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W96
mus_hot_crater__act_2_10_B1:
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
 */	.byte	W24
	.byte		N18   , Dn3 , v100
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N09   , Bn2 
	.byte	W12
	.byte		N48   , An2 
	.byte	W12
/* 036   ----------------------------------------
 */	.byte	W60
	.byte		N12   , En3 
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
/* 037   ----------------------------------------
 */	.byte		N18   , Ds3 
	.byte	W24
	.byte		N09   
	.byte	W12
	.byte		N18   , En3 
	.byte	W24
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N18   , En3 
	.byte	W12
/* 038   ----------------------------------------
 */	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N06   
	.byte	W60
/* 039   ----------------------------------------
 */	.byte	W96
/* 040   ----------------------------------------
 */	.byte	W96
/* 041   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_hot_crater__act_2_10_B1
mus_hot_crater__act_2_10_B2:
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte	FINE

/* **************** Track 11 (Midi-Chn.11) **************** */

mus_hot_crater__act_2_11:
	.byte	KEYSH , mus_hot_crater__act_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 110
	.byte		VOL   , 127*mus_hot_crater__act_2_mvl/mxv
	.byte		PAN   , c_v-20
	.byte	W03
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */mus_hot_crater__act_2_11_003:
	.byte	W12
	.byte		N06   , Cn3 , v120
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W12
	.byte	PEND
/* 004   ----------------------------------------
 */mus_hot_crater__act_2_11_004:
	.byte	W12
	.byte		N06   , Dn3 , v120
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W12
	.byte	PEND
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_11_003
mus_hot_crater__act_2_11_B1:
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_11_004
/* 007   ----------------------------------------
 */mus_hot_crater__act_2_11_007:
	.byte	W12
	.byte		N06   , Dn3 , v112
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W12
	.byte	PEND
/* 008   ----------------------------------------
 */mus_hot_crater__act_2_11_008:
	.byte	W12
	.byte		N06   , Dn3 , v112
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N05   , Cn3 , v092
	.byte	W05
	.byte		N06   , Cn3 , v080
	.byte	W07
	.byte	PEND
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_11_007
/* 010   ----------------------------------------
 */mus_hot_crater__act_2_11_010:
	.byte	W12
	.byte		N06   , Dn3 , v112
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N05   , Dn3 , v092
	.byte	W05
	.byte		N06   , Dn3 , v080
	.byte	W07
	.byte	PEND
/* 011   ----------------------------------------
 */mus_hot_crater__act_2_11_011:
	.byte	W12
	.byte		N06   , Cn3 , v112
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W12
	.byte	PEND
/* 012   ----------------------------------------
 */	.byte	W12
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N05   , Cn3 , v092
	.byte	W05
	.byte		N06   , Cs3 , v080
	.byte	W07
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_11_007
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_11_010
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_11_007
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_11_008
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_11_007
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_11_010
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_11_011
/* 020   ----------------------------------------
 */	.byte	W12
	.byte		N06   , Cn3 , v112
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N05   , Cn3 , v092
	.byte	W05
	.byte		N06   , Cn3 , v080
	.byte	W07
/* 021   ----------------------------------------
 */	.byte	W12
	.byte		        Gn3 , v112
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W12
/* 022   ----------------------------------------
 */	.byte	W12
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N05   , Gn3 , v092
	.byte	W05
	.byte		N06   , Gn3 , v080
	.byte	W07
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
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_11_003
	.byte	GOTO
	 mPtr	mus_hot_crater__act_2_11_B1
mus_hot_crater__act_2_11_B2:
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte	FINE

/* **************** Track 12 (Midi-Chn.12) **************** */

mus_hot_crater__act_2_12:
	.byte	KEYSH , mus_hot_crater__act_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 92
	.byte		VOL   , 106*mus_hot_crater__act_2_mvl/mxv
	.byte	W03
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
mus_hot_crater__act_2_12_B1:
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
 */	.byte		N96   , Fn3 , v112
	.byte	W96
/* 025   ----------------------------------------
 */	.byte	W96
/* 026   ----------------------------------------
 */	.byte	W96
/* 027   ----------------------------------------
 */	.byte	W96
/* 028   ----------------------------------------
 */	.byte		N96   
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
	.byte	GOTO
	 mPtr	mus_hot_crater__act_2_12_B1
mus_hot_crater__act_2_12_B2:
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte	FINE

/* **************** Track 13 (Midi-Chn.13) **************** */

mus_hot_crater__act_2_13:
	.byte	KEYSH , mus_hot_crater__act_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 88
	.byte		VOL   , 106*mus_hot_crater__act_2_mvl/mxv
	.byte		PAN   , c_v-30
	.byte	W03
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
mus_hot_crater__act_2_13_B1:
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
 */mus_hot_crater__act_2_13_023:
	.byte	W24
	.byte		N18   , En3 , v112
	.byte	W24
	.byte		N09   , Dn3 , v100
	.byte	W12
	.byte		N18   , Cs3 
	.byte	W24
	.byte		        Dn3 
	.byte	W12
	.byte	PEND
/* 024   ----------------------------------------
 */mus_hot_crater__act_2_13_024:
	.byte	W12
	.byte		N09   , Dn3 , v100
	.byte	W12
	.byte		        Cs3 
	.byte	W24
	.byte		        Bn2 
	.byte	W12
	.byte		N18   , An2 
	.byte	W24
	.byte		        Dn3 
	.byte	W12
	.byte	PEND
/* 025   ----------------------------------------
 */	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		        Cs3 
	.byte	W24
	.byte		        Bn2 
	.byte	W12
	.byte		N18   , An2 
	.byte	W24
	.byte		N72   , En2 
	.byte	W12
/* 026   ----------------------------------------
 */	.byte	W96
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_13_023
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_2_13_024
/* 029   ----------------------------------------
 */	.byte	W12
	.byte		N09   , Dn3 , v100
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N09   
	.byte	W12
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N72   , En3 
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
	.byte	GOTO
	 mPtr	mus_hot_crater__act_2_13_B1
mus_hot_crater__act_2_13_B2:
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_hot_crater__act_2):
	.byte	13	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_hot_crater__act_2_pri	/* Priority */
	.byte	mus_hot_crater__act_2_rev	/* Reverb */

mAlignWord
	mPtr	mus_hot_crater__act_2_grp

	mPtr	mus_hot_crater__act_2_1
	mPtr	mus_hot_crater__act_2_2
	mPtr	mus_hot_crater__act_2_3
	mPtr	mus_hot_crater__act_2_4
	mPtr	mus_hot_crater__act_2_5
	mPtr	mus_hot_crater__act_2_6
	mPtr	mus_hot_crater__act_2_7
	mPtr	mus_hot_crater__act_2_8
	mPtr	mus_hot_crater__act_2_9
	mPtr	mus_hot_crater__act_2_10
	mPtr	mus_hot_crater__act_2_11
	mPtr	mus_hot_crater__act_2_12
	mPtr	mus_hot_crater__act_2_13

	.end
