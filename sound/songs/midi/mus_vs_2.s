	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_vs_2_grp, voicegroup023
	.equ	mus_vs_2_pri, 0
	.equ	mus_vs_2_rev, reverb_set+0
	.equ	mus_vs_2_mvl, 105
	.equ	mus_vs_2_key, 0
	.equ	mus_vs_2_tbs, 1
	.equ	mus_vs_2_exg, 1
	.equ	mus_vs_2_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_vs_2)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_vs_2_1:
	.byte	KEYSH , mus_vs_2_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 154*mus_vs_2_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_vs_2_mvl/mxv
	.byte	W48
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
mus_vs_2_1_B1:
/* 001   ----------------------------------------
 */mus_vs_2_1_001:
	.byte		N06   , Dn1 , v048
	.byte		N24   , Ds2 , v127
	.byte	W06
	.byte		N06   , Ds1 , v044
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 , v048
	.byte		N24   , Ds2 , v127
	.byte		N24   , En2 , v112
	.byte	W06
	.byte		N06   , Ds1 , v044
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 , v048
	.byte		N24   , Ds2 , v127
	.byte	W06
	.byte		N06   , Ds1 , v044
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 , v048
	.byte		N24   , Ds2 , v127
	.byte		N24   , En2 , v112
	.byte	W06
	.byte		N06   , Ds1 , v044
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte	PEND
/* 002   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_1_001
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_1_001
/* 004   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_1_001
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_1_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_1_001
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_1_001
/* 008   ----------------------------------------
 */	.byte		N06   , Dn1 , v048
	.byte		N24   , Ds2 , v127
	.byte	W06
	.byte		N06   , Ds1 , v044
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 , v048
	.byte		N24   , Ds2 , v127
	.byte		N24   , En2 , v112
	.byte	W06
	.byte		N06   , Ds1 , v044
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 , v048
	.byte		N12   , Ds2 , v127
	.byte	W06
	.byte		N06   , Ds1 , v044
	.byte	W06
	.byte		N12   , En1 
	.byte		N12   , En2 , v127
	.byte	W12
	.byte		N06   , Dn1 , v048
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Ds1 , v044
	.byte		N11   , Ds2 , v127
	.byte	W06
	.byte		N12   , En1 , v044
	.byte	W06
	.byte		N06   , En2 , v127
	.byte	W06
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_1_001
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_1_001
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_1_001
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_1_001
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_1_001
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_1_001
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_1_001
/* 016   ----------------------------------------
 */	.byte		N06   , Dn1 , v048
	.byte		N24   , Ds2 , v127
	.byte	W06
	.byte		N06   , Ds1 , v044
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 , v048
	.byte		N24   , Ds2 , v127
	.byte		N24   , En2 , v112
	.byte	W06
	.byte		N06   , Ds1 , v044
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 , v048
	.byte		N11   , Ds2 , v127
	.byte	W06
	.byte		N06   , Ds1 , v044
	.byte	W06
	.byte		N12   , En1 
	.byte		N11   , En2 , v127
	.byte	W12
	.byte		N06   , Dn1 , v048
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		N06   , Ds1 , v044
	.byte		N11   , En2 , v127
	.byte	W06
	.byte		N12   , En1 , v044
	.byte	W06
	.byte		N06   , En2 , v127
	.byte	W06
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_1_001
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_1_001
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_1_001
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_1_001
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_1_001
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_1_001
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_1_001
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_1_001
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_1_001
/* 026   ----------------------------------------
 */	.byte		N06   , Dn1 , v048
	.byte		N24   , Ds2 , v127
	.byte	W06
	.byte		N06   , Ds1 , v044
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 , v048
	.byte		N24   , Ds2 , v127
	.byte		N24   , En2 , v112
	.byte	W06
	.byte		N06   , Ds1 , v044
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 , v048
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		        Ds1 , v044
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		N12   , En1 , v044
	.byte		N03   , En2 , v127
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        Dn1 , v048
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Ds1 , v044
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		N12   , En1 , v044
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	GOTO
	 mPtr	mus_vs_2_1_B1
mus_vs_2_1_B2:
/* 027   ----------------------------------------
 */	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_vs_2_2:
	.byte	KEYSH , mus_vs_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 42
	.byte		VOL   , 127*mus_vs_2_mvl/mxv
	.byte	W96
mus_vs_2_2_B1:
/* 001   ----------------------------------------
 */mus_vs_2_2_001:
	.byte		N05   , An1 , v127
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
/* 002   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_2_001
/* 003   ----------------------------------------
 */	.byte		N05   , Fn1 , v127
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N05   
	.byte	W06
/* 004   ----------------------------------------
 */	.byte		        Fn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N23   , Gn1 
	.byte	W24
	.byte		N05   , Gn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N05   
	.byte	W06
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_2_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_2_001
/* 007   ----------------------------------------
 */	.byte		N05   , Dn1 , v127
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N05   
	.byte	W06
/* 008   ----------------------------------------
 */	.byte		        As1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N23   , Cn2 
	.byte	W24
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N05   
	.byte	W06
/* 009   ----------------------------------------
 */mus_vs_2_2_009:
	.byte		N05   , Cs2 , v127
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
/* 010   ----------------------------------------
 */mus_vs_2_2_010:
	.byte		N05   , Ds2 , v127
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
/* 011   ----------------------------------------
 */mus_vs_2_2_011:
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
/* 012   ----------------------------------------
 */	.byte		        Fs2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N05   
	.byte	W06
/* 013   ----------------------------------------
 */	.byte		        Gn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N05   
	.byte	W06
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_2_001
/* 015   ----------------------------------------
 */mus_vs_2_2_015:
	.byte		N05   , As1 , v127
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
/* 016   ----------------------------------------
 */	.byte		        Cn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N05   
	.byte	W06
/* 017   ----------------------------------------
 */	.byte		        Dn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N05   
	.byte	W06
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_2_011
/* 019   ----------------------------------------
 */	.byte		N05   , Fn2 , v127
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N05   
	.byte	W06
/* 020   ----------------------------------------
 */	.byte		        Gn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N05   
	.byte	W06
/* 021   ----------------------------------------
 */	.byte		        Gs1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		N05   
	.byte	W06
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_2_015
/* 023   ----------------------------------------
 */	.byte		N05   , Bn1 , v127
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N05   
	.byte	W06
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_2_009
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_2_010
/* 026   ----------------------------------------
 */	.byte		N05   , Fn2 , v127
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N17   , Gn2 
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	GOTO
	 mPtr	mus_vs_2_2_B1
mus_vs_2_2_B2:
/* 027   ----------------------------------------
 */	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_vs_2_3:
	.byte	KEYSH , mus_vs_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 98
	.byte		VOL   , 120*mus_vs_2_mvl/mxv
	.byte		BENDR , 29
	.byte		BEND  , c_v+63
	.byte		N02   , Gn4 , v076
	.byte	W01
	.byte		BEND  , c_v+62
	.byte	W01
	.byte		N02   , Dn4 , v084
	.byte	W01
	.byte		BEND  , c_v+60
	.byte	W01
	.byte		        c_v+58
	.byte		N02   , Gn4 , v092
	.byte	W02
	.byte		BEND  , c_v+56
	.byte		N02   , Dn4 , v100
	.byte	W01
	.byte		BEND  , c_v+54
	.byte	W01
	.byte		N02   , Gn4 , v108
	.byte	W01
	.byte		BEND  , c_v+52
	.byte	W01
	.byte		        c_v+50
	.byte		N02   , Dn4 , v116
	.byte	W02
	.byte		BEND  , c_v+48
	.byte		N02   , Gn4 , v124
	.byte	W01
	.byte		BEND  , c_v+46
	.byte	W01
	.byte		N02   , Dn4 , v120
	.byte	W01
	.byte		BEND  , c_v+44
	.byte	W01
	.byte		        c_v+42
	.byte		N02   , Gn4 
	.byte	W02
	.byte		BEND  , c_v+40
	.byte		N02   , Dn4 , v116
	.byte	W01
	.byte		BEND  , c_v+38
	.byte	W01
	.byte		N02   , Gn4 , v112
	.byte	W01
	.byte		BEND  , c_v+36
	.byte	W01
	.byte		        c_v+34
	.byte		N02   , Dn4 
	.byte	W02
	.byte		BEND  , c_v+32
	.byte		N02   , Gn4 , v108
	.byte	W01
	.byte		BEND  , c_v+30
	.byte	W01
	.byte		N02   , Dn4 , v104
	.byte	W01
	.byte		BEND  , c_v+28
	.byte	W01
	.byte		        c_v+26
	.byte		N02   , Gn4 
	.byte	W02
	.byte		BEND  , c_v+24
	.byte		N02   , Dn4 , v100
	.byte	W01
	.byte		BEND  , c_v+22
	.byte	W01
	.byte		N02   , Gn4 
	.byte	W01
	.byte		BEND  , c_v+20
	.byte	W01
	.byte		        c_v+18
	.byte		N02   , Dn4 , v096
	.byte	W02
	.byte		BEND  , c_v+16
	.byte		N02   , Gn4 , v092
	.byte	W01
	.byte		BEND  , c_v+14
	.byte	W01
	.byte		N02   , Dn4 
	.byte	W01
	.byte		BEND  , c_v+12
	.byte	W01
	.byte		        c_v+10
	.byte		N02   , Gn4 , v088
	.byte	W02
	.byte		BEND  , c_v+8
	.byte		N02   , Dn4 , v084
	.byte	W01
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		N02   , Gn4 
	.byte	W01
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		        c_v+2
	.byte		N02   , Dn4 , v080
	.byte	W02
	.byte		BEND  , c_v+0
	.byte		N02   , Gn4 
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		N02   , Dn4 , v076
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-6
	.byte		N02   , Gn4 , v072
	.byte	W02
	.byte		BEND  , c_v-8
	.byte		N02   , Dn4 
	.byte	W01
	.byte		BEND  , c_v-10
	.byte	W01
	.byte		N02   , Gn4 , v068
	.byte	W01
	.byte		BEND  , c_v-12
	.byte	W01
	.byte		        c_v-14
	.byte		N02   , Dn4 
	.byte	W02
	.byte		BEND  , c_v-16
	.byte		N02   , Gn4 , v064
	.byte	W01
	.byte		BEND  , c_v-18
	.byte	W01
	.byte		N02   , Dn4 , v060
	.byte	W01
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		        c_v-22
	.byte		N02   , Gn4 
	.byte	W02
	.byte		BEND  , c_v-24
	.byte		N02   , Dn4 , v056
	.byte	W01
	.byte		BEND  , c_v-26
	.byte	W01
	.byte		N02   , Gn4 , v052
	.byte	W01
	.byte		BEND  , c_v-28
	.byte	W01
	.byte		        c_v-30
	.byte		N02   , Dn4 
	.byte	W02
	.byte		BEND  , c_v-32
	.byte		N02   , Gn4 , v048
	.byte	W01
	.byte		BEND  , c_v-34
	.byte	W01
	.byte		N02   , Dn4 
	.byte	W01
	.byte		BEND  , c_v-36
	.byte	W01
	.byte		        c_v-38
	.byte		N02   , Gn4 , v044
	.byte	W02
	.byte		BEND  , c_v-40
	.byte		N02   , Dn4 , v040
	.byte	W01
	.byte		BEND  , c_v-42
	.byte	W01
	.byte		N02   , Gn4 
	.byte	W01
	.byte		BEND  , c_v-44
	.byte	W01
	.byte		        c_v-46
	.byte		N02   , Dn4 , v036
	.byte	W02
	.byte		BEND  , c_v-48
	.byte		N02   , Gn4 
	.byte	W01
	.byte		BEND  , c_v-50
	.byte	W01
	.byte		N02   , Dn4 , v032
	.byte	W01
	.byte		BEND  , c_v-52
	.byte	W01
	.byte		        c_v-54
	.byte		N02   , Gn4 , v028
	.byte	W02
	.byte		BEND  , c_v-56
	.byte		N02   , Dn4 
	.byte	W01
	.byte		BEND  , c_v-58
	.byte	W01
	.byte		N02   , Gn4 , v024
	.byte	W01
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		        c_v-62
	.byte		N02   , Dn4 , v020
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W01
mus_vs_2_3_B1:
/* 001   ----------------------------------------
 */	.byte		VOICE , 98
	.byte		VOL   , 120*mus_vs_2_mvl/mxv
	.byte		BENDR , 29
	.byte		BEND  , c_v+0
	.byte	W60
	.byte		N11   , En3 , v056
	.byte	W12
	.byte		        An3 , v096
	.byte	W12
	.byte		        Cs4 , v108
	.byte	W12
/* 002   ----------------------------------------
 */	.byte		N32   , Dn4 , v116
	.byte	W36
	.byte		N23   , Cs4 , v104
	.byte	W24
	.byte		N11   , An3 , v088
	.byte	W12
	.byte		        Bn3 , v084
	.byte	W12
	.byte		N78   , Cn4 , v096
	.byte	W12
/* 003   ----------------------------------------
 */	.byte	W84
	.byte		N11   , An3 , v056
	.byte	W12
/* 004   ----------------------------------------
 */	.byte		        Cn4 , v104
	.byte	W12
	.byte		        Bn3 , v084
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N23   , Bn3 , v096
	.byte	W24
	.byte		        Gn3 , v088
	.byte	W24
	.byte		N56   , An3 
	.byte	W12
/* 005   ----------------------------------------
 */	.byte	W60
	.byte		N11   , En3 , v060
	.byte	W12
	.byte		        An3 , v096
	.byte	W12
	.byte		        Cs4 , v112
	.byte	W12
/* 006   ----------------------------------------
 */	.byte		N32   , Dn4 , v108
	.byte	W36
	.byte		N23   , Cs4 , v104
	.byte	W24
	.byte		N11   , An3 , v088
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N84   , Cn4 , v096
	.byte	W12
/* 007   ----------------------------------------
 */	.byte	W84
	.byte		N11   , An3 , v080
	.byte	W12
/* 008   ----------------------------------------
 */	.byte		        Cn4 , v104
	.byte	W12
	.byte		        Gs3 , v096
	.byte	W12
	.byte		        Ds3 , v076
	.byte	W12
	.byte		N22   , Dn4 , v100
	.byte	W24
	.byte		N11   , As3 , v088
	.byte	W12
	.byte		VOICE , 91
	.byte		VOL   , 120*mus_vs_2_mvl/mxv
	.byte		BENDR , 29
	.byte		N20   , Fn3 , v076
	.byte	W24
/* 009   ----------------------------------------
 */	.byte		N11   , En4 , v100
	.byte	W12
	.byte		        Ds4 , v096
	.byte	W12
	.byte		        Cs4 , v100
	.byte	W12
	.byte		N23   , Ds4 , v104
	.byte	W24
	.byte		        Bn3 , v088
	.byte	W24
	.byte		        Fs3 , v096
	.byte	W12
/* 010   ----------------------------------------
 */	.byte	W12
	.byte		        Bn3 , v088
	.byte	W24
	.byte		N40   , Gs3 , v080
	.byte	W48
	.byte		N11   , Bn2 , v044
	.byte	W12
/* 011   ----------------------------------------
 */	.byte		N23   , Gs3 , v104
	.byte	W24
	.byte		N11   , Fs3 , v080
	.byte	W12
	.byte		N23   , En3 , v084
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		N66   , Fs3 , v092
	.byte	W12
/* 012   ----------------------------------------
 */	.byte	W60
	.byte		N11   , Fs3 , v068
	.byte	W12
	.byte		        Bn3 , v076
	.byte	W12
	.byte		        Cs4 , v104
	.byte	W12
/* 013   ----------------------------------------
 */	.byte		N23   , Dn4 , v108
	.byte	W24
	.byte		N11   , Cs4 , v088
	.byte	W12
	.byte		N23   , Bn3 , v060
	.byte	W24
	.byte		        Dn4 , v096
	.byte	W24
	.byte		        Cs4 , v092
	.byte	W12
/* 014   ----------------------------------------
 */	.byte	W12
	.byte		        An3 , v076
	.byte	W24
	.byte		N40   , En3 , v048
	.byte	W48
	.byte		N10   
	.byte	W12
/* 015   ----------------------------------------
 */	.byte		N23   , Fn3 , v076
	.byte	W24
	.byte		N11   , As3 , v080
	.byte	W12
	.byte		N23   , Dn4 , v092
	.byte	W24
	.byte		N22   , Fn4 , v088
	.byte	W24
	.byte		N11   , Fn4 , v116
	.byte	W12
/* 016   ----------------------------------------
 */	.byte		N23   , En4 , v100
	.byte	W24
	.byte		N11   , Fn4 , v104
	.byte	W12
	.byte		N56   , Gn4 , v096
	.byte	W60
/* 017   ----------------------------------------
 */	.byte		VOICE , 98
	.byte		VOL   , 120*mus_vs_2_mvl/mxv
	.byte		BENDR , 29
	.byte		N11   , Fn4 , v100
	.byte	W12
	.byte		        En4 , v096
	.byte	W12
	.byte		        Dn4 , v100
	.byte	W12
	.byte		N23   , En4 , v104
	.byte	W24
	.byte		        Cn4 , v088
	.byte	W24
	.byte		        Gn3 , v096
	.byte	W12
/* 018   ----------------------------------------
 */	.byte	W12
	.byte		        Cn4 , v088
	.byte	W24
	.byte		N40   , An3 , v080
	.byte	W48
	.byte		N11   , Cn3 , v044
	.byte	W12
/* 019   ----------------------------------------
 */	.byte		N23   , An3 , v104
	.byte	W24
	.byte		N11   , Gn3 , v080
	.byte	W12
	.byte		N23   , Fn3 , v084
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		N66   , Gn3 , v092
	.byte	W12
/* 020   ----------------------------------------
 */	.byte	W60
	.byte		N11   , Gn3 , v068
	.byte	W12
	.byte		        Cn4 , v076
	.byte	W12
	.byte		        Dn4 , v104
	.byte	W12
/* 021   ----------------------------------------
 */	.byte		N23   , Ds4 , v108
	.byte	W24
	.byte		N11   , Dn4 , v088
	.byte	W12
	.byte		N23   , Cn4 , v060
	.byte	W24
	.byte		        Ds4 , v096
	.byte	W24
	.byte		        Dn4 , v092
	.byte	W12
/* 022   ----------------------------------------
 */	.byte	W12
	.byte		        As3 , v076
	.byte	W24
	.byte		N40   , Fn3 , v048
	.byte	W48
	.byte		N10   
	.byte	W12
/* 023   ----------------------------------------
 */	.byte		N23   , Fs3 , v076
	.byte	W24
	.byte		N11   , Bn3 , v080
	.byte	W12
	.byte		N23   , Ds4 , v092
	.byte	W24
	.byte		N22   , Fs4 , v088
	.byte	W24
	.byte		N11   , Fs4 , v116
	.byte	W12
/* 024   ----------------------------------------
 */	.byte		N23   , Fn4 , v100
	.byte	W24
	.byte		N11   , Fs4 , v104
	.byte	W12
	.byte		N56   , Gs4 , v096
	.byte	W60
/* 025   ----------------------------------------
 */	.byte		        Gn4 
	.byte	W72
	.byte		N11   , Gn4 , v104
	.byte	W12
	.byte		        Gs4 
	.byte	W12
/* 026   ----------------------------------------
 */	.byte		BEND  , c_v+63
	.byte		N02   , Gn4 , v076
	.byte	W01
	.byte		BEND  , c_v+62
	.byte	W01
	.byte		N02   , Dn4 , v084
	.byte	W01
	.byte		BEND  , c_v+60
	.byte	W01
	.byte		        c_v+58
	.byte		N02   , Gn4 , v092
	.byte	W02
	.byte		BEND  , c_v+56
	.byte		N02   , Dn4 , v100
	.byte	W01
	.byte		BEND  , c_v+54
	.byte	W01
	.byte		N02   , Gn4 , v108
	.byte	W01
	.byte		BEND  , c_v+52
	.byte	W01
	.byte		        c_v+50
	.byte		N02   , Dn4 , v116
	.byte	W02
	.byte		BEND  , c_v+48
	.byte		N02   , Gn4 , v124
	.byte	W01
	.byte		BEND  , c_v+46
	.byte	W01
	.byte		N02   , Dn4 , v120
	.byte	W01
	.byte		BEND  , c_v+44
	.byte	W01
	.byte		        c_v+42
	.byte		N02   , Gn4 
	.byte	W02
	.byte		BEND  , c_v+40
	.byte		N02   , Dn4 , v116
	.byte	W01
	.byte		BEND  , c_v+38
	.byte	W01
	.byte		N02   , Gn4 , v112
	.byte	W01
	.byte		BEND  , c_v+36
	.byte	W01
	.byte		        c_v+34
	.byte		N02   , Dn4 
	.byte	W02
	.byte		BEND  , c_v+32
	.byte		N02   , Gn4 , v108
	.byte	W01
	.byte		BEND  , c_v+30
	.byte	W01
	.byte		N02   , Dn4 , v104
	.byte	W01
	.byte		BEND  , c_v+28
	.byte	W01
	.byte		        c_v+26
	.byte		N02   , Gn4 
	.byte	W02
	.byte		BEND  , c_v+24
	.byte		N02   , Dn4 , v100
	.byte	W01
	.byte		BEND  , c_v+22
	.byte	W01
	.byte		N02   , Gn4 
	.byte	W01
	.byte		BEND  , c_v+20
	.byte	W01
	.byte		        c_v+18
	.byte		N02   , Dn4 , v096
	.byte	W02
	.byte		BEND  , c_v+16
	.byte		N02   , Gn4 , v092
	.byte	W01
	.byte		BEND  , c_v+14
	.byte	W01
	.byte		N02   , Dn4 
	.byte	W01
	.byte		BEND  , c_v+12
	.byte	W01
	.byte		        c_v+10
	.byte		N02   , Gn4 , v088
	.byte	W02
	.byte		BEND  , c_v+8
	.byte		N02   , Dn4 , v084
	.byte	W01
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		N02   , Gn4 
	.byte	W01
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		        c_v+2
	.byte		N02   , Dn4 , v080
	.byte	W02
	.byte		BEND  , c_v+0
	.byte		N02   , Gn4 
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		N02   , Dn4 , v076
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v-6
	.byte		N02   , Gn4 , v072
	.byte	W02
	.byte		BEND  , c_v-8
	.byte		N02   , Dn4 
	.byte	W01
	.byte		BEND  , c_v-10
	.byte	W01
	.byte		N02   , Gn4 , v068
	.byte	W01
	.byte		BEND  , c_v-12
	.byte	W01
	.byte		        c_v-14
	.byte		N02   , Dn4 
	.byte	W02
	.byte		BEND  , c_v-16
	.byte		N02   , Gn4 , v064
	.byte	W01
	.byte		BEND  , c_v-18
	.byte	W01
	.byte		N02   , Dn4 , v060
	.byte	W01
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		        c_v-22
	.byte		N02   , Gn4 
	.byte	W02
	.byte		BEND  , c_v-24
	.byte		N02   , Dn4 , v056
	.byte	W01
	.byte		BEND  , c_v-26
	.byte	W01
	.byte		N02   , Gn4 , v052
	.byte	W01
	.byte		BEND  , c_v-28
	.byte	W01
	.byte		        c_v-30
	.byte		N02   , Dn4 
	.byte	W02
	.byte		BEND  , c_v-32
	.byte		N02   , Gn4 , v048
	.byte	W01
	.byte		BEND  , c_v-34
	.byte	W01
	.byte		N02   , Dn4 
	.byte	W01
	.byte		BEND  , c_v-36
	.byte	W01
	.byte		        c_v-38
	.byte		N02   , Gn4 , v044
	.byte	W02
	.byte		BEND  , c_v-40
	.byte		N02   , Dn4 , v040
	.byte	W01
	.byte		BEND  , c_v-42
	.byte	W01
	.byte		N02   , Gn4 
	.byte	W01
	.byte		BEND  , c_v-44
	.byte	W01
	.byte		        c_v-46
	.byte		N02   , Dn4 , v036
	.byte	W02
	.byte		BEND  , c_v-48
	.byte		N02   , Gn4 
	.byte	W01
	.byte		BEND  , c_v-50
	.byte	W01
	.byte		N02   , Dn4 , v032
	.byte	W01
	.byte		BEND  , c_v-52
	.byte	W01
	.byte		        c_v-54
	.byte		N02   , Gn4 , v028
	.byte	W02
	.byte		BEND  , c_v-56
	.byte		N02   , Dn4 
	.byte	W01
	.byte		BEND  , c_v-58
	.byte	W01
	.byte		N02   , Gn4 , v024
	.byte	W01
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		        c_v-62
	.byte		N02   , Dn4 , v020
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W01
	.byte	GOTO
	 mPtr	mus_vs_2_3_B1
mus_vs_2_3_B2:
/* 027   ----------------------------------------
 */	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_vs_2_4:
	.byte	KEYSH , mus_vs_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 100
	.byte		VOL   , 117*mus_vs_2_mvl/mxv
	.byte		MOD   , 0
	.byte		LFOS  , 86
	.byte		BENDR , 53
	.byte	W96
mus_vs_2_4_B1:
/* 001   ----------------------------------------
 */	.byte		N44   , An3 , v080
	.byte	W60
	.byte		N18   , An3 , v096
	.byte	W36
/* 002   ----------------------------------------
 */	.byte	W36
	.byte		N36   , An3 , v080
	.byte	W48
	.byte		N56   , Fn3 , v084
	.byte	W12
/* 003   ----------------------------------------
 */	.byte	W60
	.byte		N15   , Fn3 , v068
	.byte	W36
/* 004   ----------------------------------------
 */	.byte		N11   
	.byte	W24
	.byte		N09   
	.byte	W12
	.byte		N21   , Gn3 
	.byte	W36
	.byte		N07   
	.byte	W12
	.byte		N56   , An3 , v100
	.byte	W12
/* 005   ----------------------------------------
 */	.byte	W60
	.byte		N11   , An3 , v080
	.byte	W36
/* 006   ----------------------------------------
 */	.byte	W36
	.byte		N36   
	.byte	W48
	.byte		N54   , Fn3 , v100
	.byte	W12
/* 007   ----------------------------------------
 */	.byte	W60
	.byte		N15   , Fn3 , v088
	.byte	W36
/* 008   ----------------------------------------
 */	.byte		N11   , Gs3 , v104
	.byte	W24
	.byte		N07   , Gs3 , v068
	.byte	W12
	.byte		N21   , As3 , v092
	.byte	W36
	.byte		N18   , As3 , v068
	.byte	W24
/* 009   ----------------------------------------
 */	.byte		N96   , En3 , v076
	.byte	W96
/* 010   ----------------------------------------
 */	.byte	W96
/* 011   ----------------------------------------
 */	.byte		N96   
	.byte	W96
/* 012   ----------------------------------------
 */	.byte	W48
	.byte		N48   , Fs3 
	.byte	W48
/* 013   ----------------------------------------
 */	.byte		N96   , Gn3 
	.byte	W96
/* 014   ----------------------------------------
 */	.byte		        An3 
	.byte	W96
/* 015   ----------------------------------------
 */	.byte		        As3 
	.byte	W96
/* 016   ----------------------------------------
 */	.byte		        Cn4 
	.byte	W96
/* 017   ----------------------------------------
 */	.byte		        Fn3 
	.byte	W96
/* 018   ----------------------------------------
 */	.byte	W96
/* 019   ----------------------------------------
 */	.byte		N96   
	.byte	W96
/* 020   ----------------------------------------
 */	.byte	W48
	.byte		N48   , Gn3 
	.byte	W48
/* 021   ----------------------------------------
 */	.byte		N96   , Gs3 
	.byte	W96
/* 022   ----------------------------------------
 */	.byte		        As3 
	.byte	W96
/* 023   ----------------------------------------
 */	.byte		        Bn3 
	.byte	W96
/* 024   ----------------------------------------
 */	.byte		        Cs4 
	.byte	W96
/* 025   ----------------------------------------
 */	.byte		N30   , Ds3 
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N30   
	.byte	W36
/* 026   ----------------------------------------
 */	.byte		        Fn3 
	.byte	W36
	.byte		N12   , Gn3 
	.byte	W24
	.byte		N36   
	.byte	W36
	.byte	GOTO
	 mPtr	mus_vs_2_4_B1
mus_vs_2_4_B2:
/* 027   ----------------------------------------
 */	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_vs_2_5:
	.byte	KEYSH , mus_vs_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 101
	.byte		VOL   , 117*mus_vs_2_mvl/mxv
	.byte	W96
mus_vs_2_5_B1:
/* 001   ----------------------------------------
 */mus_vs_2_5_001:
	.byte	W48
	.byte		N14   , Cs3 , v076
	.byte	W36
	.byte		N04   , Cs3 , v060
	.byte	W12
	.byte	PEND
/* 002   ----------------------------------------
 */	.byte		N30   , Bn3 , v076
	.byte	W96
/* 003   ----------------------------------------
 */mus_vs_2_5_003:
	.byte	W48
	.byte		N11   , An2 , v056
	.byte	W36
	.byte		N09   
	.byte	W12
	.byte	PEND
/* 004   ----------------------------------------
 */	.byte	W12
	.byte		N11   , An2 , v060
	.byte	W48
	.byte		N14   , Bn2 
	.byte	W36
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_5_001
/* 006   ----------------------------------------
 */	.byte		N30   , Bn3 , v076
	.byte	W96
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_5_003
/* 008   ----------------------------------------
 */	.byte	W96
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */	.byte		N96   , Ds3 , v076
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
 */	.byte		        En3 
	.byte	W96
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
 */	.byte		N30   , Gn3 , v048
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte		N30   
	.byte	W36
/* 026   ----------------------------------------
 */	.byte		        An3 
	.byte	W36
	.byte		N12   , Bn3 
	.byte	W24
	.byte		N36   
	.byte	W36
	.byte	GOTO
	 mPtr	mus_vs_2_5_B1
mus_vs_2_5_B2:
/* 027   ----------------------------------------
 */	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_vs_2_6:
	.byte	KEYSH , mus_vs_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 102
	.byte		VOL   , 117*mus_vs_2_mvl/mxv
	.byte	W96
mus_vs_2_6_B1:
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
 */	.byte	W12
	.byte		N11   , Ds3 , v080
	.byte	W48
	.byte		        Fn3 , v060
	.byte	W36
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */	.byte	W96
/* 011   ----------------------------------------
 */	.byte	W96
/* 012   ----------------------------------------
 */	.byte		N48   , Fs3 , v076
	.byte	W96
/* 013   ----------------------------------------
 */	.byte		N96   , Dn3 
	.byte	W96
/* 014   ----------------------------------------
 */	.byte		        En3 
	.byte	W96
/* 015   ----------------------------------------
 */	.byte		        Fn3 
	.byte	W96
/* 016   ----------------------------------------
 */	.byte		        Gn3 
	.byte	W96
/* 017   ----------------------------------------
 */	.byte	W96
/* 018   ----------------------------------------
 */	.byte	W96
/* 019   ----------------------------------------
 */	.byte	W96
/* 020   ----------------------------------------
 */	.byte		N48   
	.byte	W96
/* 021   ----------------------------------------
 */	.byte		N96   , Ds3 
	.byte	W96
/* 022   ----------------------------------------
 */	.byte		        Fn3 
	.byte	W96
/* 023   ----------------------------------------
 */	.byte		        Fs3 , v056
	.byte	W96
/* 024   ----------------------------------------
 */	.byte		        Gs3 
	.byte	W96
/* 025   ----------------------------------------
 */	.byte	W96
/* 026   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_vs_2_6_B1
mus_vs_2_6_B2:
/* 027   ----------------------------------------
 */	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_vs_2_7:
	.byte	KEYSH , mus_vs_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 99
	.byte		VOL   , 109*mus_vs_2_mvl/mxv
	.byte	W96
mus_vs_2_7_B1:
/* 001   ----------------------------------------
 */	.byte		MOD   , 0
	.byte		N06   , Cs4 , v056
	.byte	W06
	.byte		        Cs4 , v024
	.byte	W06
	.byte		        En4 , v028
	.byte	W06
	.byte		        Cs4 , v024
	.byte	W06
	.byte		        Cs5 , v052
	.byte	W06
	.byte		        An4 , v040
	.byte	W06
	.byte		        En4 , v028
	.byte	W06
	.byte		        Cs4 , v020
	.byte	W06
	.byte		        En4 , v040
	.byte	W06
	.byte		        An4 , v036
	.byte	W06
	.byte		        Cs5 , v040
	.byte	W06
	.byte		        An4 , v032
	.byte	W06
	.byte		        En5 , v072
	.byte	W06
	.byte		        Cs5 , v060
	.byte	W06
	.byte		        An4 , v020
	.byte	W06
	.byte		        En4 
	.byte	W06
/* 002   ----------------------------------------
 */mus_vs_2_7_002:
	.byte		N06   , Dn4 , v056
	.byte	W06
	.byte		        Dn4 , v024
	.byte	W06
	.byte		        Fs4 , v028
	.byte	W06
	.byte		        Dn4 , v024
	.byte	W06
	.byte		        Dn5 , v052
	.byte	W06
	.byte		        Bn4 , v040
	.byte	W06
	.byte		        Fs4 , v028
	.byte	W06
	.byte		        Dn4 , v020
	.byte	W06
	.byte		        En4 , v040
	.byte	W06
	.byte		        An4 , v036
	.byte	W06
	.byte		        Cs5 , v040
	.byte	W06
	.byte		        An4 , v032
	.byte	W06
	.byte		        En5 , v072
	.byte	W06
	.byte		        Cs5 , v060
	.byte	W06
	.byte		        An4 , v020
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte	PEND
/* 003   ----------------------------------------
 */mus_vs_2_7_003:
	.byte		N06   , An3 , v056
	.byte	W06
	.byte		        An3 , v024
	.byte	W06
	.byte		        Cn4 , v028
	.byte	W06
	.byte		        An3 , v024
	.byte	W06
	.byte		        An4 , v052
	.byte	W06
	.byte		        Fn4 , v040
	.byte	W06
	.byte		        Cn4 , v028
	.byte	W06
	.byte		        An3 , v020
	.byte	W06
	.byte		        Cn4 , v040
	.byte	W06
	.byte		        Fn4 , v036
	.byte	W06
	.byte		        An4 , v040
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte		        Cn5 , v072
	.byte	W06
	.byte		        An4 , v060
	.byte	W06
	.byte		        Fn4 , v020
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte	PEND
/* 004   ----------------------------------------
 */	.byte		        An3 , v048
	.byte	W06
	.byte		        Cn4 , v056
	.byte	W06
	.byte		        Fn4 , v040
	.byte	W06
	.byte		        An4 , v044
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn5 , v032
	.byte	W06
	.byte		        Bn3 , v040
	.byte	W06
	.byte		        Dn4 , v024
	.byte	W06
	.byte		        Gn4 , v048
	.byte	W06
	.byte		        Bn4 , v036
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Bn4 , v040
	.byte	W06
	.byte		        Gn5 , v036
	.byte	W06
	.byte		        Dn5 , v032
	.byte	W06
	.byte		        Bn4 , v036
	.byte	W06
	.byte		        Gn4 
	.byte	W06
/* 005   ----------------------------------------
 */	.byte		        Cs4 , v056
	.byte	W06
	.byte		        Cs4 , v024
	.byte	W06
	.byte		        En4 , v028
	.byte	W06
	.byte		        Cs4 , v024
	.byte	W06
	.byte		        Cs5 , v052
	.byte	W06
	.byte		        An4 , v040
	.byte	W06
	.byte		        En4 , v028
	.byte	W06
	.byte		        Cs4 , v020
	.byte	W06
	.byte		        En4 , v040
	.byte	W06
	.byte		        An4 , v036
	.byte	W06
	.byte		        Cs5 , v040
	.byte	W06
	.byte		        An4 , v032
	.byte	W06
	.byte		        En5 , v072
	.byte	W06
	.byte		        Cs5 , v060
	.byte	W06
	.byte		        An4 , v020
	.byte	W06
	.byte		        En4 
	.byte	W06
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_7_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_2_7_003
/* 008   ----------------------------------------
 */	.byte		N06   , Cn4 , v024
	.byte	W06
	.byte		        Ds4 , v044
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Gs5 , v060
	.byte	W06
	.byte		        Dn4 , v056
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As4 , v036
	.byte	W06
	.byte		        Dn5 , v044
	.byte	W06
	.byte		        Fn5 , v024
	.byte	W06
	.byte		        As5 , v040
	.byte	W06
	.byte		        Dn6 , v048
	.byte	W06
	.byte		        Fn5 , v044
	.byte	W06
	.byte		        As5 , v060
	.byte	W06
	.byte		        Dn5 , v048
	.byte	W06
/* 009   ----------------------------------------
 */	.byte		MOD   , 2
	.byte		N11   , En5 , v068
	.byte	W12
	.byte		        Ds5 , v064
	.byte	W12
	.byte		        Cs5 , v068
	.byte	W12
	.byte		N23   , Ds5 
	.byte	W24
	.byte		        Bn4 , v064
	.byte	W24
	.byte		        Fs4 
	.byte	W12
/* 010   ----------------------------------------
 */	.byte	W12
	.byte		        Bn4 
	.byte	W24
	.byte		N40   , Gs4 , v060
	.byte	W48
	.byte		N11   , Bn3 , v052
	.byte	W12
/* 011   ----------------------------------------
 */	.byte		N23   , Gs4 , v068
	.byte	W24
	.byte		N11   , Fs4 , v064
	.byte	W12
	.byte		N23   , En4 
	.byte	W24
	.byte		        Gs4 
	.byte	W24
	.byte		N66   , Fs4 
	.byte	W12
/* 012   ----------------------------------------
 */	.byte	W60
	.byte		N11   , Ds4 , v052
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        As4 
	.byte	W12
/* 013   ----------------------------------------
 */	.byte		N23   , Bn4 
	.byte	W24
	.byte		N11   , An4 
	.byte	W12
	.byte		N23   , Gn4 
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		        An4 
	.byte	W12
/* 014   ----------------------------------------
 */	.byte	W12
	.byte		        En4 
	.byte	W24
	.byte		N40   , Cs4 
	.byte	W48
	.byte		N10   
	.byte	W12
/* 015   ----------------------------------------
 */	.byte		N23   , As3 
	.byte	W24
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N23   , Fn4 
	.byte	W24
	.byte		N22   , As4 
	.byte	W24
	.byte		N11   
	.byte	W12
/* 016   ----------------------------------------
 */	.byte		N23   , Gn4 
	.byte	W24
	.byte		N11   , An4 
	.byte	W12
	.byte		N56   , As4 
	.byte	W60
/* 017   ----------------------------------------
 */	.byte		MOD   , 0
	.byte		N06   , Fn2 , v036
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        An2 , v044
	.byte	W06
	.byte		        Dn3 , v056
	.byte	W06
	.byte		        Fn3 , v044
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 , v036
	.byte	W06
	.byte		        Dn4 , v040
	.byte	W06
	.byte		        Fn4 , v036
	.byte	W06
	.byte		        Gn4 , v016
	.byte	W06
	.byte		        An4 , v024
	.byte	W06
	.byte		        Dn5 , v048
	.byte	W06
	.byte		        Fn5 , v016
	.byte	W06
	.byte		        Gn5 , v028
	.byte	W06
	.byte		        An5 , v024
	.byte	W06
	.byte		        Dn6 , v032
	.byte	W06
/* 018   ----------------------------------------
 */	.byte		        Cn6 , v044
	.byte	W06
	.byte		        Gn5 , v048
	.byte	W06
	.byte		        Fn5 , v028
	.byte	W06
	.byte		        En5 , v060
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Gn4 , v048
	.byte	W06
	.byte		        Fn4 , v016
	.byte	W06
	.byte		        En4 , v040
	.byte	W06
	.byte		        Cn4 , v044
	.byte	W06
	.byte		        Gn3 , v060
	.byte	W06
	.byte		        Fn3 , v052
	.byte	W06
	.byte		        En3 , v048
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Gn2 , v052
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        En2 , v056
	.byte	W06
/* 019   ----------------------------------------
 */	.byte		        Cn2 , v048
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Gn2 , v040
	.byte	W06
	.byte		        An2 , v068
	.byte	W06
	.byte		        Cn3 , v036
	.byte	W06
	.byte		        Fn3 , v052
	.byte	W06
	.byte		        Gn3 , v032
	.byte	W06
	.byte		        An3 , v036
	.byte	W06
	.byte		        Cn4 , v004
	.byte	W06
	.byte		        Fn4 , v052
	.byte	W06
	.byte		        Gn4 , v020
	.byte	W06
	.byte		        An4 , v036
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn5 , v052
	.byte	W06
	.byte		        Gn5 , v048
	.byte	W06
	.byte		        An5 , v060
	.byte	W06
/* 020   ----------------------------------------
 */	.byte		        Bn5 , v032
	.byte	W06
	.byte		        An5 , v056
	.byte	W06
	.byte		        Gn5 , v032
	.byte	W06
	.byte		        Dn5 , v056
	.byte	W06
	.byte		        Bn4 , v052
	.byte	W06
	.byte		        An4 , v044
	.byte	W06
	.byte		        Gn4 , v060
	.byte	W06
	.byte		        Dn4 , v052
	.byte	W06
	.byte		        Gn4 , v072
	.byte	W06
	.byte		        Dn4 , v068
	.byte	W06
	.byte		        Bn3 , v032
	.byte	W06
	.byte		        Gn3 , v044
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gn3 , v064
	.byte	W06
	.byte		        Dn3 , v028
	.byte	W06
	.byte		        Gn2 , v044
	.byte	W06
/* 021   ----------------------------------------
 */	.byte		        Ds2 , v036
	.byte	W06
	.byte		        Gs2 , v064
	.byte	W06
	.byte		        As2 , v060
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Ds3 , v064
	.byte	W06
	.byte		        Gs3 , v056
	.byte	W06
	.byte		        As3 , v040
	.byte	W06
	.byte		        Cn4 , v056
	.byte	W06
	.byte		        Ds4 , v044
	.byte	W06
	.byte		        Gs4 , v048
	.byte	W06
	.byte		        As4 , v032
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Ds5 , v036
	.byte	W06
	.byte		        Gs5 , v060
	.byte	W06
	.byte		        As5 , v044
	.byte	W06
	.byte		        Cn6 , v052
	.byte	W06
/* 022   ----------------------------------------
 */	.byte		        Dn6 , v056
	.byte	W06
	.byte		        Cn6 , v036
	.byte	W06
	.byte		        As5 , v056
	.byte	W06
	.byte		        Fn5 , v040
	.byte	W06
	.byte		        Dn5 , v052
	.byte	W06
	.byte		        Cn5 , v028
	.byte	W06
	.byte		        As4 , v052
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 , v036
	.byte	W06
	.byte		        As3 , v052
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Dn3 , v064
	.byte	W06
	.byte		        Cn3 , v056
	.byte	W06
	.byte		        As2 , v052
	.byte	W06
	.byte		        Fn2 , v016
	.byte	W06
/* 023   ----------------------------------------
 */	.byte		        Fs2 , v040
	.byte	W06
	.byte		        Bn2 , v044
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 , v060
	.byte	W06
	.byte		        Fs3 , v056
	.byte	W06
	.byte		        Bn3 , v048
	.byte	W06
	.byte		        Cs4 , v044
	.byte	W06
	.byte		        Ds4 , v056
	.byte	W06
	.byte		        Fs4 , v052
	.byte	W06
	.byte		        Bn4 , v016
	.byte	W06
	.byte		        Cs5 , v044
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Fs5 , v056
	.byte	W06
	.byte		        Bn5 , v036
	.byte	W06
	.byte		        Fs5 , v068
	.byte	W06
	.byte		        Ds5 , v056
	.byte	W06
/* 024   ----------------------------------------
 */	.byte		        Gs2 , v040
	.byte	W06
	.byte		        Cs3 , v044
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fn3 , v060
	.byte	W06
	.byte		        Gs3 , v056
	.byte	W06
	.byte		        Cs4 , v048
	.byte	W06
	.byte		        Ds4 , v044
	.byte	W06
	.byte		        Fn4 , v056
	.byte	W06
	.byte		        Gs4 , v052
	.byte	W06
	.byte		        Cs5 , v016
	.byte	W06
	.byte		        Ds5 , v044
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Gs5 , v056
	.byte	W06
	.byte		        Cs6 , v036
	.byte	W06
	.byte		        Gs5 , v068
	.byte	W06
	.byte		        Fn5 , v056
	.byte	W06
/* 025   ----------------------------------------
 */	.byte		        As2 , v040
	.byte	W06
	.byte		        Ds3 , v044
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 , v060
	.byte	W06
	.byte		        As3 , v056
	.byte	W06
	.byte		        Ds4 , v048
	.byte	W06
	.byte		        Fn4 , v044
	.byte	W06
	.byte		        Gn4 , v056
	.byte	W06
	.byte		        As4 , v052
	.byte	W06
	.byte		        Ds5 , v016
	.byte	W06
	.byte		        Fn5 , v044
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        As5 , v056
	.byte	W06
	.byte		        Ds6 , v036
	.byte	W06
	.byte		        As5 , v068
	.byte	W06
	.byte		        Gn5 , v056
	.byte	W06
/* 026   ----------------------------------------
 */	.byte		N32   , An4 , v072
	.byte	W36
	.byte		N52   , Bn4 
	.byte	W60
	.byte	GOTO
	 mPtr	mus_vs_2_7_B1
mus_vs_2_7_B2:
/* 027   ----------------------------------------
 */	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_vs_2):
	.byte	7	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_vs_2_pri	/* Priority */
	.byte	mus_vs_2_rev	/* Reverb */

mAlignWord
	mPtr	mus_vs_2_grp

	mPtr	mus_vs_2_1
	mPtr	mus_vs_2_2
	mPtr	mus_vs_2_3
	mPtr	mus_vs_2_4
	mPtr	mus_vs_2_5
	mPtr	mus_vs_2_6
	mPtr	mus_vs_2_7

	.end
