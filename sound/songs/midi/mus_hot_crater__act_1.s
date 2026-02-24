	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_hot_crater__act_1_grp, voicegroup022
	.equ	mus_hot_crater__act_1_pri, 0
	.equ	mus_hot_crater__act_1_rev, reverb_set+0
	.equ	mus_hot_crater__act_1_mvl, 94
	.equ	mus_hot_crater__act_1_key, 0
	.equ	mus_hot_crater__act_1_tbs, 1
	.equ	mus_hot_crater__act_1_exg, 1
	.equ	mus_hot_crater__act_1_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_hot_crater__act_1)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_hot_crater__act_1_1:
	.byte	KEYSH , mus_hot_crater__act_1_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 156*mus_hot_crater__act_1_tbs/2
	.byte		VOICE , 68
	.byte		VOL   , 127*mus_hot_crater__act_1_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
/* 001   ----------------------------------------
 */mus_hot_crater__act_1_1_001:
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
/* 002   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_1_001
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_1_001
/* 004   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_1_001
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_1_001
mus_hot_crater__act_1_1_B1:
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_1_001
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_1_001
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_1_001
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_1_001
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_1_001
/* 011   ----------------------------------------
 */mus_hot_crater__act_1_1_011:
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
	 mPtr	mus_hot_crater__act_1_1_011
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_1_001
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_1_001
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_1_001
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_1_001
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_1_001
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_1_001
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_1_011
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_1_011
/* 021   ----------------------------------------
 */mus_hot_crater__act_1_1_021:
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
	 mPtr	mus_hot_crater__act_1_1_021
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_1_001
/* 024   ----------------------------------------
 */mus_hot_crater__act_1_1_024:
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
	 mPtr	mus_hot_crater__act_1_1_011
/* 026   ----------------------------------------
 */mus_hot_crater__act_1_1_026:
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
	 mPtr	mus_hot_crater__act_1_1_001
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_1_024
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_1_011
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_1_026
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_1_021
/* 032   ----------------------------------------
 */mus_hot_crater__act_1_1_032:
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
	 mPtr	mus_hot_crater__act_1_1_001
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_1_021
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_1_032
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
	 mPtr	mus_hot_crater__act_1_1_026
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_1_001
	.byte	GOTO
	 mPtr	mus_hot_crater__act_1_1_B1
mus_hot_crater__act_1_1_B2:
/* 040   ----------------------------------------
 */	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_hot_crater__act_1_2:
	.byte	KEYSH , mus_hot_crater__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 127
	.byte		VOL   , 127*mus_hot_crater__act_1_mvl/mxv
	.byte	W03
/* 001   ----------------------------------------
 */mus_hot_crater__act_1_2_001:
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
 */mus_hot_crater__act_1_2_002:
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
 */mus_hot_crater__act_1_2_003:
	.byte		N24   , Ds2 , v120
	.byte	W24
	.byte		        En2 
	.byte	W24
	.byte		        Ds2 
	.byte	W24
	.byte		        En2 
	.byte	W24
	.byte	PEND
/* 004   ----------------------------------------
 */mus_hot_crater__act_1_2_004:
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
/* 005   ----------------------------------------
 */	.byte		N18   
	.byte	W18
	.byte		N06   , Ds2 , v112
	.byte	W06
	.byte		N24   , En2 , v120
	.byte	W24
	.byte		        Ds2 
	.byte	W24
	.byte		        En2 
	.byte	W24
mus_hot_crater__act_1_2_B1:
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_2_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_2_001
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_2_002
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_2_001
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_2_002
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_2_001
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_2_002
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_2_001
/* 014   ----------------------------------------
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
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_2_003
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_2_004
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_2_003
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_2_004
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_2_003
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_2_004
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_2_003
/* 022   ----------------------------------------
 */	.byte		N24   , Ds2 , v120
	.byte	W24
	.byte		        En2 
	.byte	W24
	.byte		N06   
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
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_2_001
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_2_002
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_2_001
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_2_002
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_2_001
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_2_002
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_2_001
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
	 mPtr	mus_hot_crater__act_1_2_001
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_2_002
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_2_001
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_2_002
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_2_001
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_2_002
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
	.byte	W30
	.byte		N06   , Ds2 , v112
	.byte	W06
	.byte		N12   , Ds2 , v120
	.byte	W12
	.byte		N12   
	.byte	W12
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_2_001
	.byte	GOTO
	 mPtr	mus_hot_crater__act_1_2_B1
mus_hot_crater__act_1_2_B2:
/* 040   ----------------------------------------
 */	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_hot_crater__act_1_3:
	.byte	KEYSH , mus_hot_crater__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 127
	.byte		VOL   , 127*mus_hot_crater__act_1_mvl/mxv
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
mus_hot_crater__act_1_3_B1:
/* 006   ----------------------------------------
 */mus_hot_crater__act_1_3_006:
	.byte	W48
	.byte		N06   , En1 , v060
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
/* 007   ----------------------------------------
 */	.byte		N18   , Fs2 , v112
	.byte	W96
/* 008   ----------------------------------------
 */	.byte	W48
	.byte		N06   , Ds1 , v060
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
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_3_006
/* 011   ----------------------------------------
 */	.byte	W96
/* 012   ----------------------------------------
 */	.byte	W96
/* 013   ----------------------------------------
 */	.byte		N12   , Ds1 , v040
	.byte	W12
	.byte		        Dn1 , v048
	.byte	W12
	.byte		        Ds1 , v052
	.byte	W12
	.byte		        Dn1 , v056
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Dn1 , v068
	.byte	W12
	.byte		        Ds1 , v072
	.byte	W12
	.byte		        Dn1 , v076
	.byte	W12
/* 014   ----------------------------------------
 */	.byte		        En1 , v080
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N06   , En1 , v060
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
/* 015   ----------------------------------------
 */	.byte		N24   , Cs2 , v120
	.byte	W12
	.byte		N12   , Dn1 , v060
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
/* 016   ----------------------------------------
 */mus_hot_crater__act_1_3_016:
	.byte		N12   , Ds1 , v060
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N06   , Ds1 
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
/* 017   ----------------------------------------
 */mus_hot_crater__act_1_3_017:
	.byte		N12   , Ds1 , v060
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte	PEND
/* 018   ----------------------------------------
 */mus_hot_crater__act_1_3_018:
	.byte		N12   , Ds1 , v060
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Dn1 
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
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_3_017
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_3_016
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_3_017
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_3_018
/* 023   ----------------------------------------
 */mus_hot_crater__act_1_3_023:
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
 */mus_hot_crater__act_1_3_024:
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
 */mus_hot_crater__act_1_3_025:
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
 */mus_hot_crater__act_1_3_026:
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
 */mus_hot_crater__act_1_3_027:
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
 */mus_hot_crater__act_1_3_028:
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
	 mPtr	mus_hot_crater__act_1_3_025
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_3_026
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_3_023
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_3_024
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_3_025
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_3_026
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_3_027
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_3_028
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
	.byte	GOTO
	 mPtr	mus_hot_crater__act_1_3_B1
mus_hot_crater__act_1_3_B2:
/* 040   ----------------------------------------
 */	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_hot_crater__act_1_4:
	.byte	KEYSH , mus_hot_crater__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 103
	.byte		VOL   , 82*mus_hot_crater__act_1_mvl/mxv
	.byte	PRIO  , 10
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
mus_hot_crater__act_1_4_B1:
/* 006   ----------------------------------------
 */mus_hot_crater__act_1_4_006:
	.byte	W92
	.byte	W03
	.byte		BEND  , c_v-48
	.byte	W01
	.byte	PEND
/* 007   ----------------------------------------
 */mus_hot_crater__act_1_4_007:
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
 */mus_hot_crater__act_1_4_009:
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
	 mPtr	mus_hot_crater__act_1_4_007
/* 016   ----------------------------------------
 */	.byte	W84
	.byte		EOT   , Fs3 
	.byte	W11
	.byte		BEND  , c_v-48
	.byte	W01
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_4_009
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
	 mPtr	mus_hot_crater__act_1_4_006
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
	.byte	GOTO
	 mPtr	mus_hot_crater__act_1_4_B1
mus_hot_crater__act_1_4_B2:
/* 040   ----------------------------------------
 */	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_hot_crater__act_1_5:
	.byte	KEYSH , mus_hot_crater__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 2
	.byte		VOL   , 64*mus_hot_crater__act_1_mvl/mxv
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
 */	.byte		N04   , An4 , v100
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W18
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		        An4 
	.byte	W06
mus_hot_crater__act_1_5_B1:
/* 006   ----------------------------------------
 */mus_hot_crater__act_1_5_006:
	.byte		N04   , En4 , v100
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
	.byte	PEND
/* 007   ----------------------------------------
 */mus_hot_crater__act_1_5_007:
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
 */mus_hot_crater__act_1_5_008:
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
 */mus_hot_crater__act_1_5_009:
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
 */mus_hot_crater__act_1_5_010:
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
 */mus_hot_crater__act_1_5_011:
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
 */mus_hot_crater__act_1_5_012:
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
	 mPtr	mus_hot_crater__act_1_5_009
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_5_006
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_5_007
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_5_008
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_5_009
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_5_010
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_5_011
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_5_012
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
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_5_006
/* 023   ----------------------------------------
 */	.byte	W96
/* 024   ----------------------------------------
 */	.byte	W96
/* 025   ----------------------------------------
 */	.byte	W96
/* 026   ----------------------------------------
 */	.byte		N04   , Gs3 , v100
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
	.byte	GOTO
	 mPtr	mus_hot_crater__act_1_5_B1
mus_hot_crater__act_1_5_B2:
/* 040   ----------------------------------------
 */	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_hot_crater__act_1_6:
	.byte	KEYSH , mus_hot_crater__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 12
	.byte		VOL   , 42*mus_hot_crater__act_1_mvl/mxv
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
	.byte		N04   , An4 , v100
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		        An4 
	.byte	W06
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
mus_hot_crater__act_1_6_B1:
/* 006   ----------------------------------------
 */mus_hot_crater__act_1_6_006:
	.byte		N04   , Gn4 , v100
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
	.byte	PEND
/* 007   ----------------------------------------
 */mus_hot_crater__act_1_6_007:
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
 */mus_hot_crater__act_1_6_008:
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
 */mus_hot_crater__act_1_6_009:
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
 */mus_hot_crater__act_1_6_010:
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
 */mus_hot_crater__act_1_6_011:
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
 */mus_hot_crater__act_1_6_012:
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
	 mPtr	mus_hot_crater__act_1_6_009
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_6_006
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_6_007
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_6_008
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_6_009
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_6_010
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_6_011
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_6_012
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
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_6_006
/* 023   ----------------------------------------
 */	.byte	W96
/* 024   ----------------------------------------
 */	.byte	W96
/* 025   ----------------------------------------
 */	.byte	W96
/* 026   ----------------------------------------
 */	.byte		N04   , En3 , v100
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
	.byte	GOTO
	 mPtr	mus_hot_crater__act_1_6_B1
mus_hot_crater__act_1_6_B2:
/* 040   ----------------------------------------
 */	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_hot_crater__act_1_7:
	.byte	KEYSH , mus_hot_crater__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 80
	.byte		VOL   , 127*mus_hot_crater__act_1_mvl/mxv
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
mus_hot_crater__act_1_7_B1:
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
 */	.byte		        Ds3 
	.byte	W96
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
 */	.byte		        Ds3 
	.byte	W96
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
	.byte	GOTO
	 mPtr	mus_hot_crater__act_1_7_B1
mus_hot_crater__act_1_7_B2:
/* 040   ----------------------------------------
 */	.byte	FINE

/* **************** Track 8 (Midi-Chn.8) **************** */

mus_hot_crater__act_1_8:
	.byte	KEYSH , mus_hot_crater__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 74
	.byte		VOL   , 127*mus_hot_crater__act_1_mvl/mxv
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
/* 005   ----------------------------------------
 */	.byte	W96
mus_hot_crater__act_1_8_B1:
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
 */	.byte	W24
	.byte		N18   , An2 , v112
	.byte	W24
	.byte		N09   , An2 , v100
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
/* 024   ----------------------------------------
 */mus_hot_crater__act_1_8_024:
	.byte	W12
	.byte		N09   , Gs3 , v100
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N09   , Bn3 
	.byte	W12
	.byte		N12   , Dn4 
	.byte	W12
	.byte	PEND
/* 025   ----------------------------------------
 */	.byte	W12
	.byte		N09   
	.byte	W24
	.byte		N09   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N09   , Bn3 
	.byte	W12
	.byte		N60   , En3 
	.byte	W12
/* 026   ----------------------------------------
 */	.byte	W96
/* 027   ----------------------------------------
 */	.byte	W24
	.byte		N18   , An2 
	.byte	W24
	.byte		N09   
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_8_024
/* 029   ----------------------------------------
 */	.byte	W12
	.byte		N09   , Dn4 , v100
	.byte	W24
	.byte		N09   
	.byte	W12
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N72   , En4 
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
 */	.byte	W24
	.byte		N18   , Dn4 
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
	.byte	GOTO
	 mPtr	mus_hot_crater__act_1_8_B1
mus_hot_crater__act_1_8_B2:
/* 040   ----------------------------------------
 */	.byte	FINE

/* **************** Track 9 (Midi-Chn.9) **************** */

mus_hot_crater__act_1_9:
	.byte	KEYSH , mus_hot_crater__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 106
	.byte		VOL   , 84*mus_hot_crater__act_1_mvl/mxv
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
/* 005   ----------------------------------------
 */	.byte		BEND  , c_v+63
	.byte	W96
mus_hot_crater__act_1_9_B1:
/* 006   ----------------------------------------
 */mus_hot_crater__act_1_9_006:
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
	.byte	PEND
/* 007   ----------------------------------------
 */mus_hot_crater__act_1_9_007:
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
 */mus_hot_crater__act_1_9_008:
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
	 mPtr	mus_hot_crater__act_1_9_007
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_9_008
/* 011   ----------------------------------------
 */mus_hot_crater__act_1_9_011:
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
 */mus_hot_crater__act_1_9_012:
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
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_9_006
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_9_007
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_9_008
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_9_007
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_9_008
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_9_011
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_9_012
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
	 mPtr	mus_hot_crater__act_1_9_007
/* 024   ----------------------------------------
 */mus_hot_crater__act_1_9_024:
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
	 mPtr	mus_hot_crater__act_1_9_011
/* 026   ----------------------------------------
 */mus_hot_crater__act_1_9_026:
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
	 mPtr	mus_hot_crater__act_1_9_007
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_9_024
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_9_011
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_9_026
/* 031   ----------------------------------------
 */mus_hot_crater__act_1_9_031:
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
 */mus_hot_crater__act_1_9_032:
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
	 mPtr	mus_hot_crater__act_1_9_008
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_9_031
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_9_032
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
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
/* 038   ----------------------------------------
 */	.byte		        En4 
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
/* 039   ----------------------------------------
 */	.byte		BEND  , c_v+63
	.byte	W96
	.byte	GOTO
	 mPtr	mus_hot_crater__act_1_9_B1
mus_hot_crater__act_1_9_B2:
/* 040   ----------------------------------------
 */	.byte	FINE

/* **************** Track 10 (Midi-Chn.10) **************** */

mus_hot_crater__act_1_10:
	.byte	KEYSH , mus_hot_crater__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 74
	.byte		VOL   , 127*mus_hot_crater__act_1_mvl/mxv
	.byte		PAN   , c_v+0
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
mus_hot_crater__act_1_10_B1:
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
 */	.byte	W24
	.byte		N18   , An1 , v112
	.byte	W24
	.byte		N09   , An1 , v100
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
/* 024   ----------------------------------------
 */mus_hot_crater__act_1_10_024:
	.byte	W12
	.byte		N09   , Gs2 , v100
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N09   , Bn2 
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
	.byte	PEND
/* 025   ----------------------------------------
 */	.byte	W12
	.byte		N09   
	.byte	W24
	.byte		N09   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N09   , Bn2 
	.byte	W12
	.byte		N60   , En2 
	.byte	W12
/* 026   ----------------------------------------
 */	.byte	W96
/* 027   ----------------------------------------
 */	.byte	W24
	.byte		N18   , An1 
	.byte	W24
	.byte		N09   
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_hot_crater__act_1_10_024
/* 029   ----------------------------------------
 */	.byte	W12
	.byte		N09   , Dn3 , v100
	.byte	W24
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
 */	.byte	W24
	.byte		N18   , Dn3 
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
	.byte	GOTO
	 mPtr	mus_hot_crater__act_1_10_B1
mus_hot_crater__act_1_10_B2:
/* 040   ----------------------------------------
 */	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_hot_crater__act_1):
	.byte	10	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_hot_crater__act_1_pri	/* Priority */
	.byte	mus_hot_crater__act_1_rev	/* Reverb */

mAlignWord
	mPtr	mus_hot_crater__act_1_grp

	mPtr	mus_hot_crater__act_1_1
	mPtr	mus_hot_crater__act_1_2
	mPtr	mus_hot_crater__act_1_3
	mPtr	mus_hot_crater__act_1_4
	mPtr	mus_hot_crater__act_1_5
	mPtr	mus_hot_crater__act_1_6
	mPtr	mus_hot_crater__act_1_7
	mPtr	mus_hot_crater__act_1_8
	mPtr	mus_hot_crater__act_1_9
	mPtr	mus_hot_crater__act_1_10

	.end
