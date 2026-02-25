	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_ice_paradise__act_1_grp, voicegroup014
	.equ	mus_ice_paradise__act_1_pri, 0
	.equ	mus_ice_paradise__act_1_rev, reverb_set+0
	.equ	mus_ice_paradise__act_1_mvl, 110
	.equ	mus_ice_paradise__act_1_key, 0
	.equ	mus_ice_paradise__act_1_tbs, 1
	.equ	mus_ice_paradise__act_1_exg, 1
	.equ	mus_ice_paradise__act_1_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_ice_paradise__act_1)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_ice_paradise__act_1_1:
	.byte	KEYSH , mus_ice_paradise__act_1_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 140*mus_ice_paradise__act_1_tbs/2
	.byte		VOICE , 124
	.byte		VOL   , 100*mus_ice_paradise__act_1_mvl/mxv
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
mus_ice_paradise__act_1_1_B1:
/* 004   ----------------------------------------
 */mus_ice_paradise__act_1_1_004:
	.byte	W12
	.byte		N05   , Cs1 , v127
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte	PEND
/* 005   ----------------------------------------
 */mus_ice_paradise__act_1_1_005:
	.byte	W12
	.byte		N05   , Fn2 , v127
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	PEND
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_004
/* 007   ----------------------------------------
 */mus_ice_paradise__act_1_1_007:
	.byte	W12
	.byte		N05   , Fn2 , v127
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        As2 
	.byte	W12
	.byte		N02   , Cn3 
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N05   , Cs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	PEND
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_004
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_005
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_004
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_005
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_004
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_005
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_004
/* 015   ----------------------------------------
 */mus_ice_paradise__act_1_1_015:
	.byte	W12
	.byte		N05   , Fn2 , v127
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N02   , Dn2 
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N05   , Fs3 
	.byte	W06
	.byte	PEND
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_004
/* 017   ----------------------------------------
 */	.byte	W12
	.byte		N05   , Gs2 , v127
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        As2 
	.byte	W18
	.byte		        Cs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W18
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_004
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_005
/* 020   ----------------------------------------
 */	.byte	W12
	.byte		N05   , Cs1 , v127
	.byte	W06
	.byte		        Dn1 
	.byte	W18
	.byte		        Fn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W18
	.byte		        An1 
	.byte	W06
	.byte		        As1 
	.byte	W18
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_005
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_004
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_015
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_004
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_005
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_004
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_007
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_004
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_005
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_004
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_005
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_004
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_005
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_004
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_015
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_004
/* 037   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_005
/* 038   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_004
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_005
/* 040   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_004
/* 041   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_005
/* 042   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_004
/* 043   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_1_007
/* 044   ----------------------------------------
 */	.byte	W96
/* 045   ----------------------------------------
 */	.byte	W96
/* 046   ----------------------------------------
 */	.byte	W96
/* 047   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_ice_paradise__act_1_1_B1
mus_ice_paradise__act_1_1_B2:
/* 048   ----------------------------------------
 */	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_ice_paradise__act_1_2:
	.byte	KEYSH , mus_ice_paradise__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 127
	.byte		VOL   , 127*mus_ice_paradise__act_1_mvl/mxv
	.byte		N05   , Dn1 , v028
	.byte		N68   , Fs2 , v124
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N23   , Ds2 , v124
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N23   , Ds2 , v124
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
/* 001   ----------------------------------------
 */mus_ice_paradise__act_1_2_001:
	.byte		N05   , Dn1 , v028
	.byte		N68   , Gn2 , v124
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N23   , Ds2 , v124
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N23   , Ds2 , v124
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte	PEND
/* 002   ----------------------------------------
 */mus_ice_paradise__act_1_2_002:
	.byte		N05   , Dn1 , v028
	.byte		N68   , Fs2 , v124
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N23   , Ds2 , v124
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N23   , Ds2 , v124
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte	PEND
/* 003   ----------------------------------------
 */mus_ice_paradise__act_1_2_003:
	.byte		N05   , Dn1 , v028
	.byte		N44   , Gn2 , v124
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N23   , Ds2 , v124
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N11   , Ds2 , v124
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte		N02   , En2 , v124
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N05   , Dn1 , v028
	.byte		N05   , En2 , v124
	.byte	W06
	.byte		        Dn1 , v048
	.byte		N05   , Ds2 , v124
	.byte	W06
	.byte		N11   , Ds1 , v048
	.byte		N05   , En2 , v124
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
mus_ice_paradise__act_1_2_B1:
/* 004   ----------------------------------------
 */mus_ice_paradise__act_1_2_004:
	.byte		N05   , Dn1 , v028
	.byte		N11   , Ds2 , v127
	.byte		N92   , Fs2 
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N11   , Ds2 , v127
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N11   , Ds2 , v127
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N11   , Ds2 , v127
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte	PEND
/* 005   ----------------------------------------
 */mus_ice_paradise__act_1_2_005:
	.byte		N05   , Dn1 , v028
	.byte		N11   , Ds2 , v127
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N11   , Ds2 , v127
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N11   , Ds2 , v127
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N11   , Ds2 , v127
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte	PEND
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_005
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_005
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_004
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_005
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_005
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_005
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_005
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_005
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_005
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_005
/* 016   ----------------------------------------
 */	.byte		N05   , Dn1 , v028
	.byte		N11   , Ds2 , v127
	.byte		N32   , Fs2 
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N11   , Ds2 , v127
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N11   , Ds2 , v127
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N11   , Ds2 , v127
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
/* 017   ----------------------------------------
 */	.byte		N05   , Dn1 , v028
	.byte		N11   , Ds2 , v127
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N11   , Ds2 , v127
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N11   , Ds2 , v127
	.byte		N23   , Fs2 
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N11   , Ds2 , v127
	.byte		N23   , Fs2 
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
/* 018   ----------------------------------------
 */mus_ice_paradise__act_1_2_018:
	.byte		N05   , Dn1 , v028
	.byte		N11   , Ds2 , v127
	.byte		N44   , Gn2 
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N11   , Ds2 , v127
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N11   , Ds2 , v127
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N11   , Ds2 , v127
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte	PEND
/* 019   ----------------------------------------
 */	.byte		N05   , Dn1 , v028
	.byte		N11   , Ds2 , v127
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N11   , Ds2 , v127
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N11   , Ds2 , v127
	.byte		N11   , Fs2 
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N11   , Ds2 , v127
	.byte		N23   , Fs2 
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_018
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_005
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_005
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_005
/* 024   ----------------------------------------
 */	.byte		N05   , Dn1 , v028
	.byte		N11   , Ds2 , v127
	.byte		N23   , Gn2 
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N11   , Ds2 , v127
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N11   , Ds2 , v127
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N11   , Ds2 , v127
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_005
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_005
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_005
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_004
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_005
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_005
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_005
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_005
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_005
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_005
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_005
/* 036   ----------------------------------------
 */	.byte		N05   , Dn1 , v028
	.byte		N11   , Ds2 , v127
	.byte		N23   , Fs2 
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N11   , Ds2 , v127
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N11   , Ds2 , v127
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N11   , Ds2 , v127
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
/* 037   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_005
/* 038   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_005
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_005
/* 040   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_005
/* 041   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_005
/* 042   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_005
/* 043   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_005
/* 044   ----------------------------------------
 */	.byte		N05   , Dn1 , v028
	.byte		N23   , Ds2 , v124
	.byte		N68   , Fs2 
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N23   , Ds2 , v124
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   , Dn1 , v028
	.byte		N23   , Ds2 , v124
	.byte	W06
	.byte		N05   , Dn1 , v048
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
/* 045   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_001
/* 046   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_002
/* 047   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_2_003
	.byte	GOTO
	 mPtr	mus_ice_paradise__act_1_2_B1
mus_ice_paradise__act_1_2_B2:
/* 048   ----------------------------------------
 */	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_ice_paradise__act_1_3:
	.byte	KEYSH , mus_ice_paradise__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 49
	.byte		VOL   , 127*mus_ice_paradise__act_1_mvl/mxv
	.byte		N80   , Dn2 , v116
	.byte	W84
	.byte		N05   , Cn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
/* 001   ----------------------------------------
 */	.byte		N92   , Dn3 
	.byte	W96
/* 002   ----------------------------------------
 */mus_ice_paradise__act_1_3_002:
	.byte		N80   , Dn2 , v116
	.byte	W84
	.byte		N05   , Cn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte	PEND
/* 003   ----------------------------------------
 */mus_ice_paradise__act_1_3_003:
	.byte		N44   , Dn3 , v116
	.byte	W48
	.byte		        Dn2 
	.byte	W48
	.byte	PEND
mus_ice_paradise__act_1_3_B1:
/* 004   ----------------------------------------
 */mus_ice_paradise__act_1_3_004:
	.byte		N09   , Gn2 , v127
	.byte	W24
	.byte		N16   
	.byte	W18
	.byte		N05   , Dn2 , v100
	.byte	W06
	.byte		N08   , Gn2 , v127
	.byte	W12
	.byte		N18   , Dn2 , v100
	.byte	W24
	.byte		N10   , En2 , v127
	.byte	W12
	.byte	PEND
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_3_004
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_3_004
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_3_004
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_3_004
/* 009   ----------------------------------------
 */mus_ice_paradise__act_1_3_009:
	.byte		N09   , Gn2 , v127
	.byte	W24
	.byte		N16   
	.byte	W18
	.byte		N05   , Dn2 , v100
	.byte	W06
	.byte		N08   , Gn2 , v127
	.byte	W12
	.byte		N18   , Dn2 , v100
	.byte	W24
	.byte		N10   , Gn2 , v127
	.byte	W12
	.byte	PEND
/* 010   ----------------------------------------
 */mus_ice_paradise__act_1_3_010:
	.byte		N09   , Cn2 , v127
	.byte	W24
	.byte		N16   
	.byte	W18
	.byte		N05   , Gn2 , v100
	.byte	W06
	.byte		N08   , Cn2 , v127
	.byte	W12
	.byte		N18   , Gn2 , v100
	.byte	W24
	.byte		N10   , Cn2 , v127
	.byte	W12
	.byte	PEND
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_3_010
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_3_004
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_3_009
/* 014   ----------------------------------------
 */mus_ice_paradise__act_1_3_014:
	.byte		N09   , Fn2 , v127
	.byte	W24
	.byte		N16   
	.byte	W18
	.byte		N05   , Cn2 , v100
	.byte	W06
	.byte		N08   , Fn2 , v127
	.byte	W12
	.byte		N18   , Cn2 , v100
	.byte	W24
	.byte		N10   , Dn2 , v127
	.byte	W12
	.byte	PEND
/* 015   ----------------------------------------
 */mus_ice_paradise__act_1_3_015:
	.byte		N09   , Fn2 , v127
	.byte	W24
	.byte		N16   
	.byte	W18
	.byte		N05   , Cn2 , v100
	.byte	W06
	.byte		N08   , Fn2 , v127
	.byte	W12
	.byte		N18   , Cn2 , v100
	.byte	W24
	.byte		N10   , Fn2 , v127
	.byte	W12
	.byte	PEND
/* 016   ----------------------------------------
 */mus_ice_paradise__act_1_3_016:
	.byte		N09   , Dn2 , v127
	.byte	W24
	.byte		N16   
	.byte	W18
	.byte		N05   , An2 , v100
	.byte	W06
	.byte		N08   , Dn2 , v127
	.byte	W12
	.byte		N18   , An2 , v100
	.byte	W24
	.byte		N10   , Dn2 , v127
	.byte	W12
	.byte	PEND
/* 017   ----------------------------------------
 */	.byte		N09   
	.byte	W24
	.byte		N16   
	.byte	W18
	.byte		N05   , An2 , v100
	.byte	W06
	.byte		N23   , Dn2 , v127
	.byte	W24
	.byte		        Cs2 
	.byte	W24
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_3_010
/* 019   ----------------------------------------
 */	.byte		N09   , Cn2 , v127
	.byte	W24
	.byte		N16   
	.byte	W18
	.byte		N05   , Gn2 , v100
	.byte	W06
	.byte		N11   , Cn2 , v127
	.byte	W12
	.byte		N05   , Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
/* 020   ----------------------------------------
 */	.byte		N09   , As1 
	.byte	W24
	.byte		N16   
	.byte	W18
	.byte		N05   , Fn2 , v100
	.byte	W06
	.byte		N08   , As1 , v127
	.byte	W12
	.byte		N18   , Fn2 , v100
	.byte	W24
	.byte		N10   , Cn3 , v127
	.byte	W12
/* 021   ----------------------------------------
 */	.byte		N09   , As2 
	.byte	W24
	.byte		N16   
	.byte	W18
	.byte		N05   , Fn2 , v100
	.byte	W06
	.byte		N08   , As2 , v127
	.byte	W12
	.byte		N18   , Fn2 , v100
	.byte	W24
	.byte		N10   , As2 , v127
	.byte	W12
/* 022   ----------------------------------------
 */	.byte		N09   , An2 
	.byte	W24
	.byte		N16   
	.byte	W18
	.byte		N05   , En2 , v100
	.byte	W06
	.byte		N08   , An2 , v127
	.byte	W12
	.byte		N18   , En2 , v100
	.byte	W24
	.byte		N10   , Ds2 , v127
	.byte	W12
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_3_016
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_3_004
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_3_004
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_3_004
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_3_004
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_3_004
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_3_009
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_3_010
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_3_010
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_3_004
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_3_009
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_3_014
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_3_015
/* 036   ----------------------------------------
 */	.byte		N09   , Fs2 , v127
	.byte	W24
	.byte		N16   
	.byte	W18
	.byte		N05   , Cs2 , v100
	.byte	W06
	.byte		N08   , Fs2 , v127
	.byte	W12
	.byte		N18   , Cs2 , v100
	.byte	W24
	.byte		N10   , Fs2 , v127
	.byte	W12
/* 037   ----------------------------------------
 */	.byte		N09   , Bn1 
	.byte	W24
	.byte		N16   
	.byte	W18
	.byte		N05   , Fs2 , v100
	.byte	W06
	.byte		N08   , Bn2 , v127
	.byte	W12
	.byte		N18   , Fs2 , v100
	.byte	W24
	.byte		N10   , Bn1 , v127
	.byte	W12
/* 038   ----------------------------------------
 */mus_ice_paradise__act_1_3_038:
	.byte		N09   , En2 , v127
	.byte	W24
	.byte		N16   
	.byte	W18
	.byte		N05   , Bn1 , v100
	.byte	W06
	.byte		N08   , En2 , v127
	.byte	W12
	.byte		N18   , Bn1 , v100
	.byte	W24
	.byte		N10   , En2 , v127
	.byte	W12
	.byte	PEND
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_3_038
/* 040   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_3_015
/* 041   ----------------------------------------
 */	.byte		N09   , As1 , v127
	.byte	W24
	.byte		N16   
	.byte	W18
	.byte		N05   , Fn2 , v100
	.byte	W06
	.byte		N08   , As2 , v127
	.byte	W12
	.byte		N18   , Fn2 , v100
	.byte	W24
	.byte		N10   , As1 , v127
	.byte	W12
/* 042   ----------------------------------------
 */	.byte		N09   , Ds2 
	.byte	W24
	.byte		N16   
	.byte	W18
	.byte		N05   , As1 , v100
	.byte	W06
	.byte		N08   , Ds2 , v127
	.byte	W12
	.byte		N18   , As1 , v100
	.byte	W24
	.byte		N10   , Ds2 , v127
	.byte	W12
/* 043   ----------------------------------------
 */	.byte		N09   , Gs1 
	.byte	W24
	.byte		N16   
	.byte	W18
	.byte		N05   , Ds2 , v100
	.byte	W06
	.byte		N08   , Gs2 , v127
	.byte	W12
	.byte		N18   , Ds2 , v100
	.byte	W24
	.byte		N10   , Gs1 , v127
	.byte	W12
/* 044   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_3_002
/* 045   ----------------------------------------
 */	.byte		N92   , Dn3 , v116
	.byte	W96
/* 046   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_3_002
/* 047   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_3_003
	.byte	GOTO
	 mPtr	mus_ice_paradise__act_1_3_B1
mus_ice_paradise__act_1_3_B2:
/* 048   ----------------------------------------
 */	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_ice_paradise__act_1_4:
	.byte	KEYSH , mus_ice_paradise__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 66
	.byte		VOL   , 89*mus_ice_paradise__act_1_mvl/mxv
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
mus_ice_paradise__act_1_4_B1:
/* 004   ----------------------------------------
 */mus_ice_paradise__act_1_4_004:
	.byte	W48
	.byte		N08   , Fn2 , v127
	.byte	W12
	.byte		N20   
	.byte	W24
	.byte		N09   
	.byte	W12
	.byte	PEND
/* 005   ----------------------------------------
 */mus_ice_paradise__act_1_4_005:
	.byte		N05   , Gn2 , v127
	.byte	W24
	.byte		N14   
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		        Fn2 
	.byte	W12
	.byte		N19   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte	PEND
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_4_004
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_4_005
/* 008   ----------------------------------------
 */mus_ice_paradise__act_1_4_008:
	.byte	W42
	.byte		N05   , Cn2 , v064
	.byte	W12
	.byte		N05   
	.byte	W30
	.byte		N04   
	.byte	W12
	.byte	PEND
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_4_008
/* 010   ----------------------------------------
 */mus_ice_paradise__act_1_4_010:
	.byte		N07   , Fn2 , v127
	.byte	W24
	.byte		N16   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N23   
	.byte	W36
	.byte	PEND
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_4_010
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_4_008
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_4_008
/* 014   ----------------------------------------
 */	.byte	W96
/* 015   ----------------------------------------
 */	.byte	W96
/* 016   ----------------------------------------
 */	.byte		N07   , Gn2 , v127
	.byte	W24
	.byte		N16   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N23   
	.byte	W36
/* 017   ----------------------------------------
 */	.byte		N07   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N02   , Bn1 , v064
	.byte	W03
	.byte		        Cs2 , v080
	.byte	W03
	.byte		        Ds2 , v096
	.byte	W03
	.byte		        Fn2 , v112
	.byte	W03
	.byte		N23   , Gn2 , v127
	.byte	W24
	.byte		        Fs2 
	.byte	W24
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_4_010
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_4_010
/* 020   ----------------------------------------
 */mus_ice_paradise__act_1_4_020:
	.byte	W42
	.byte		N05   , Fn2 , v064
	.byte	W12
	.byte		N05   
	.byte	W30
	.byte		N04   
	.byte	W12
	.byte	PEND
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_4_020
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_4_010
/* 023   ----------------------------------------
 */	.byte		N07   , Fn2 , v127
	.byte	W24
	.byte		N16   
	.byte	W24
	.byte		N05   , Gn2 
	.byte	W12
	.byte		N23   
	.byte	W36
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_4_004
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_4_005
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_4_004
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_4_005
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_4_008
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_4_008
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_4_010
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_4_010
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_4_008
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_4_008
/* 034   ----------------------------------------
 */	.byte	W96
/* 035   ----------------------------------------
 */	.byte	W96
/* 036   ----------------------------------------
 */	.byte	W42
	.byte		N05   , Dn2 , v064
	.byte	W12
	.byte		N05   
	.byte	W30
	.byte		N04   
	.byte	W12
/* 037   ----------------------------------------
 */	.byte	W42
	.byte		N05   , En2 
	.byte	W12
	.byte		N05   
	.byte	W30
	.byte		N04   
	.byte	W12
/* 038   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_4_008
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_4_008
/* 040   ----------------------------------------
 */	.byte	W96
/* 041   ----------------------------------------
 */	.byte	W96
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte		N07   , Bn1 , v108
	.byte	W24
	.byte		N16   
	.byte	W18
	.byte		N05   , Bn1 , v036
	.byte	W06
	.byte		        Bn1 , v108
	.byte	W12
	.byte		N23   
	.byte	W30
	.byte		N05   , Bn1 , v036
	.byte	W06
/* 044   ----------------------------------------
 */	.byte	W96
/* 045   ----------------------------------------
 */	.byte	W96
/* 046   ----------------------------------------
 */	.byte	W96
/* 047   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_ice_paradise__act_1_4_B1
mus_ice_paradise__act_1_4_B2:
/* 048   ----------------------------------------
 */	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_ice_paradise__act_1_5:
	.byte	KEYSH , mus_ice_paradise__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 67
	.byte		VOL   , 89*mus_ice_paradise__act_1_mvl/mxv
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
mus_ice_paradise__act_1_5_B1:
/* 004   ----------------------------------------
 */mus_ice_paradise__act_1_5_004:
	.byte		N03   , En2 , v127
	.byte	W24
	.byte		N12   
	.byte	W18
	.byte		N03   
	.byte	W54
	.byte	PEND
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_5_004
/* 007   ----------------------------------------
 */	.byte	W96
/* 008   ----------------------------------------
 */mus_ice_paradise__act_1_5_008:
	.byte		N07   , En2 , v127
	.byte	W24
	.byte		N16   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N23   
	.byte	W36
	.byte	PEND
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_5_008
/* 010   ----------------------------------------
 */	.byte	W96
/* 011   ----------------------------------------
 */	.byte	W96
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_5_008
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_5_008
/* 014   ----------------------------------------
 */mus_ice_paradise__act_1_5_014:
	.byte	W42
	.byte		N05   , Dn2 , v064
	.byte	W12
	.byte		N05   
	.byte	W30
	.byte		N04   
	.byte	W12
	.byte	PEND
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_5_014
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
	 mPtr	mus_ice_paradise__act_1_5_004
/* 025   ----------------------------------------
 */	.byte	W96
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_5_004
/* 027   ----------------------------------------
 */	.byte	W96
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_5_008
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_5_008
/* 030   ----------------------------------------
 */	.byte	W96
/* 031   ----------------------------------------
 */	.byte	W96
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_5_008
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_5_008
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_5_014
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_5_014
/* 036   ----------------------------------------
 */	.byte		N07   , Fs2 , v127
	.byte	W24
	.byte		N16   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N23   
	.byte	W36
/* 037   ----------------------------------------
 */	.byte		N07   , Gs2 
	.byte	W24
	.byte		N16   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N23   
	.byte	W36
/* 038   ----------------------------------------
 */mus_ice_paradise__act_1_5_038:
	.byte		N07   , An2 , v127
	.byte	W24
	.byte		N16   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N23   
	.byte	W36
	.byte	PEND
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_5_038
/* 040   ----------------------------------------
 */	.byte		N07   , An2 , v127
	.byte	W24
	.byte		N16   
	.byte	W18
	.byte		N05   , Dn2 , v064
	.byte	W06
	.byte		        An2 , v127
	.byte	W06
	.byte		        Dn2 , v064
	.byte	W06
	.byte		N23   , An2 , v127
	.byte	W24
	.byte		N04   , Dn2 , v064
	.byte	W12
/* 041   ----------------------------------------
 */	.byte		N07   , Gn2 , v127
	.byte	W24
	.byte		N16   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N23   
	.byte	W36
/* 042   ----------------------------------------
 */	.byte		N07   
	.byte	W24
	.byte		N16   
	.byte	W18
	.byte		N05   , Cn2 , v064
	.byte	W06
	.byte		        Gn2 , v127
	.byte	W06
	.byte		        Cn2 , v064
	.byte	W06
	.byte		N23   , Gn2 , v127
	.byte	W24
	.byte		N04   , Cn2 , v064
	.byte	W12
/* 043   ----------------------------------------
 */	.byte	W96
/* 044   ----------------------------------------
 */	.byte	W96
/* 045   ----------------------------------------
 */	.byte	W96
/* 046   ----------------------------------------
 */	.byte	W96
/* 047   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_ice_paradise__act_1_5_B1
mus_ice_paradise__act_1_5_B2:
/* 048   ----------------------------------------
 */	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_ice_paradise__act_1_6:
	.byte	KEYSH , mus_ice_paradise__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 68
	.byte		VOL   , 80*mus_ice_paradise__act_1_mvl/mxv
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
mus_ice_paradise__act_1_6_B1:
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
 */mus_ice_paradise__act_1_6_010:
	.byte	W42
	.byte		N05   , Gn2 , v064
	.byte	W12
	.byte		N05   
	.byte	W30
	.byte		N04   
	.byte	W12
	.byte	PEND
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_6_010
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_6_010
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_6_010
/* 014   ----------------------------------------
 */mus_ice_paradise__act_1_6_014:
	.byte		N07   , Cn3 , v100
	.byte	W24
	.byte		N16   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N23   
	.byte	W36
	.byte	PEND
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_6_014
/* 016   ----------------------------------------
 */	.byte	W42
	.byte		N05   , An2 , v064
	.byte	W12
	.byte		N05   
	.byte	W30
	.byte		N04   
	.byte	W12
/* 017   ----------------------------------------
 */	.byte	W96
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_6_010
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_6_010
/* 020   ----------------------------------------
 */mus_ice_paradise__act_1_6_020:
	.byte		N07   , Dn3 , v127
	.byte	W24
	.byte		N16   
	.byte	W18
	.byte		N05   , Gn2 , v064
	.byte	W06
	.byte		        Dn3 , v127
	.byte	W06
	.byte		        Gn2 , v064
	.byte	W06
	.byte		N23   , Dn3 , v127
	.byte	W24
	.byte		N04   , Gn2 , v064
	.byte	W12
	.byte	PEND
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_6_020
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_6_010
/* 023   ----------------------------------------
 */	.byte	W42
	.byte		N05   , Gn2 , v064
	.byte	W12
	.byte		        An2 
	.byte	W30
	.byte		N04   
	.byte	W12
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
	 mPtr	mus_ice_paradise__act_1_6_010
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_6_010
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_6_010
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_6_010
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_6_014
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_6_014
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
 */	.byte	W42
	.byte		N05   , Fn2 , v064
	.byte	W12
	.byte		N05   
	.byte	W30
	.byte		N04   
	.byte	W12
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte		N07   , Cn3 , v108
	.byte	W24
	.byte		N16   
	.byte	W18
	.byte		N05   , Cn3 , v036
	.byte	W06
	.byte		        Cn3 , v108
	.byte	W12
	.byte		N23   
	.byte	W30
	.byte		N05   , Cn3 , v036
	.byte	W06
/* 044   ----------------------------------------
 */	.byte	W96
/* 045   ----------------------------------------
 */	.byte	W96
/* 046   ----------------------------------------
 */	.byte	W96
/* 047   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_ice_paradise__act_1_6_B1
mus_ice_paradise__act_1_6_B2:
/* 048   ----------------------------------------
 */	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_ice_paradise__act_1_7:
	.byte	KEYSH , mus_ice_paradise__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 78
	.byte		VOL   , 127*mus_ice_paradise__act_1_mvl/mxv
	.byte	W24
	.byte		N23   , Bn3 , v104
	.byte	W24
	.byte		        Gn3 , v120
	.byte	W24
	.byte		        An3 , v116
	.byte	W24
/* 001   ----------------------------------------
 */mus_ice_paradise__act_1_7_001:
	.byte		N23   , En3 , v096
	.byte	W24
	.byte		        Gn3 , v116
	.byte	W24
	.byte		        Dn3 , v108
	.byte	W24
	.byte		        An2 , v092
	.byte	W24
	.byte	PEND
/* 002   ----------------------------------------
 */mus_ice_paradise__act_1_7_002:
	.byte		N23   , Dn2 , v056
	.byte	W24
	.byte		        Dn3 , v076
	.byte	W24
	.byte		        Dn2 , v052
	.byte	W24
	.byte		        Dn3 , v064
	.byte	W24
	.byte	PEND
/* 003   ----------------------------------------
 */mus_ice_paradise__act_1_7_003:
	.byte		N23   , Dn2 , v064
	.byte	W24
	.byte		        Dn3 , v072
	.byte	W24
	.byte		        Dn4 , v076
	.byte	W24
	.byte		N24   , Dn3 , v080
	.byte	W24
	.byte	PEND
mus_ice_paradise__act_1_7_B1:
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
 */	.byte	W24
	.byte		N23   , Gn3 , v127
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte		        Dn3 , v124
	.byte	W24
/* 025   ----------------------------------------
 */	.byte		        Gn2 , v112
	.byte	W24
	.byte		        Bn2 , v100
	.byte	W24
	.byte		        Dn2 , v088
	.byte	W24
	.byte		        Gn2 , v076
	.byte	W24
/* 026   ----------------------------------------
 */	.byte		        Bn1 , v064
	.byte	W24
	.byte		N17   , Dn2 , v052
	.byte	W72
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
 */	.byte	W04
	.byte		N44   , En2 , v108
	.byte	W44
	.byte	W02
	.byte		        En3 , v100
	.byte	W44
	.byte	W02
/* 037   ----------------------------------------
 */	.byte	W01
	.byte		        Ds3 , v120
	.byte	W44
	.byte	W03
	.byte		N48   , Bn3 , v104
	.byte	W48
/* 038   ----------------------------------------
 */	.byte	W01
	.byte		N44   , Bn2 
	.byte	W48
	.byte		        En3 , v112
	.byte	W44
	.byte	W03
/* 039   ----------------------------------------
 */	.byte		        Gn3 , v116
	.byte	W48
	.byte	W01
	.byte		        Bn2 , v108
	.byte	W44
	.byte	W03
/* 040   ----------------------------------------
 */	.byte	W01
	.byte		N90   , Fn3 , v096
	.byte	W92
	.byte	W03
/* 041   ----------------------------------------
 */	.byte	W96
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte	W96
/* 044   ----------------------------------------
 */	.byte	W24
	.byte		N23   , Bn3 , v104
	.byte	W24
	.byte		        Gn3 , v120
	.byte	W24
	.byte		        An3 , v116
	.byte	W24
/* 045   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_7_001
/* 046   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_7_002
/* 047   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_7_003
	.byte	GOTO
	 mPtr	mus_ice_paradise__act_1_7_B1
mus_ice_paradise__act_1_7_B2:
/* 048   ----------------------------------------
 */	.byte	W02
	.byte	FINE

/* **************** Track 8 (Midi-Chn.8) **************** */

mus_ice_paradise__act_1_8:
	.byte	KEYSH , mus_ice_paradise__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 65
	.byte		VOL   , 100*mus_ice_paradise__act_1_mvl/mxv
	.byte		N11   , Gn3 , v080
	.byte		N11   , Bn3 
	.byte	W12
	.byte		        Dn3 
	.byte		N11   , Gn3 
	.byte	W12
	.byte		        Gn3 , v076
	.byte		N11   , Bn3 
	.byte	W12
	.byte		        Dn3 
	.byte		N11   , Gn3 
	.byte	W12
	.byte		        Fs3 , v072
	.byte		N11   , An3 
	.byte	W12
	.byte		        Dn3 
	.byte		N11   , Fs3 
	.byte	W12
	.byte		        Fs3 , v068
	.byte		N11   , An3 
	.byte	W12
	.byte		        Dn3 
	.byte		N11   , Fs3 
	.byte	W12
/* 001   ----------------------------------------
 */mus_ice_paradise__act_1_8_001:
	.byte		N11   , En3 , v064
	.byte		N11   , Gn3 
	.byte	W12
	.byte		        Cn3 
	.byte		N11   , En3 
	.byte	W12
	.byte		        En3 , v060
	.byte		N11   , Gn3 
	.byte	W12
	.byte		        Cn3 
	.byte		N11   , En3 
	.byte	W12
	.byte		        Dn3 , v056
	.byte		N11   , Fs3 
	.byte	W12
	.byte		        An2 
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        Dn3 , v052
	.byte		N11   , Fs3 
	.byte	W12
	.byte		        An2 
	.byte		N11   , Dn3 
	.byte	W12
	.byte	PEND
/* 002   ----------------------------------------
 */mus_ice_paradise__act_1_8_002:
	.byte		N11   , En3 , v048
	.byte		N11   , Gn3 
	.byte	W12
	.byte		        Bn2 , v052
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        En3 , v060
	.byte		N11   , Gn3 
	.byte	W12
	.byte		        Bn2 , v064
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        Fs3 , v072
	.byte		N11   , An3 
	.byte	W12
	.byte		        An2 , v076
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        Fs3 , v084
	.byte		N11   , An3 
	.byte	W12
	.byte		        An2 , v092
	.byte		N11   , Dn3 
	.byte	W12
	.byte	PEND
/* 003   ----------------------------------------
 */mus_ice_paradise__act_1_8_003:
	.byte		N11   , Fs3 , v092
	.byte	W12
	.byte		        Dn3 , v088
	.byte	W12
	.byte		        Fs3 , v084
	.byte	W12
	.byte		        Dn3 , v076
	.byte	W12
	.byte		        An3 , v072
	.byte	W12
	.byte		        Fs3 , v068
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        Fs3 , v056
	.byte	W12
	.byte	PEND
mus_ice_paradise__act_1_8_B1:
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
 */	.byte		N23   , Dn4 , v100
	.byte	W24
	.byte		        Gn3 , v096
	.byte	W24
	.byte		        Bn3 , v092
	.byte	W24
	.byte		        Dn3 , v076
	.byte	W24
/* 030   ----------------------------------------
 */	.byte		N68   , Gn2 , v080
	.byte	W96
/* 031   ----------------------------------------
 */	.byte	W96
/* 032   ----------------------------------------
 */	.byte	W96
/* 033   ----------------------------------------
 */	.byte		N23   , Dn4 , v108
	.byte	W24
	.byte		        Gn3 , v100
	.byte	W24
	.byte		        Bn3 , v096
	.byte	W24
	.byte		        Dn3 
	.byte	W24
/* 034   ----------------------------------------
 */	.byte		N80   , An2 
	.byte	W96
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
 */	.byte		N11   , Gn3 , v080
	.byte		N11   , Bn3 
	.byte	W12
	.byte		        Dn3 
	.byte		N11   , Gn3 
	.byte	W12
	.byte		        Gn3 , v076
	.byte		N11   , Bn3 
	.byte	W12
	.byte		        Dn3 
	.byte		N11   , Gn3 
	.byte	W12
	.byte		        Fs3 , v072
	.byte		N11   , An3 
	.byte	W12
	.byte		        Dn3 
	.byte		N11   , Fs3 
	.byte	W12
	.byte		        Fs3 , v068
	.byte		N11   , An3 
	.byte	W12
	.byte		        Dn3 
	.byte		N11   , Fs3 
	.byte	W12
/* 045   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_8_001
/* 046   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_8_002
/* 047   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_8_003
	.byte	GOTO
	 mPtr	mus_ice_paradise__act_1_8_B1
mus_ice_paradise__act_1_8_B2:
/* 048   ----------------------------------------
 */	.byte	FINE

/* **************** Track 9 (Midi-Chn.9) **************** */

mus_ice_paradise__act_1_9:
	.byte	KEYSH , mus_ice_paradise__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 2
	.byte		VOL   , 80*mus_ice_paradise__act_1_mvl/mxv
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */mus_ice_paradise__act_1_9_002:
	.byte		N02   , An2 , v004
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Gn3 , v008
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Dn3 , v012
	.byte	W03
	.byte		        Gn3 , v016
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Dn4 , v020
	.byte	W03
	.byte		        Gn3 , v024
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Dn4 , v028
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        An3 , v032
	.byte	W03
	.byte		        Dn4 , v036
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        An4 , v040
	.byte	W03
	.byte		        Dn4 , v044
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        An4 , v048
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        Gn4 , v052
	.byte	W03
	.byte		        An4 , v056
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        Gn5 , v060
	.byte	W03
	.byte		        An4 , v064
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        Gn5 , v068
	.byte	W03
	.byte		        An5 
	.byte	W03
	.byte		        Dn5 , v072
	.byte	W03
	.byte		        Gn5 , v076
	.byte	W03
	.byte		        An5 
	.byte	W03
	.byte		        Dn6 , v080
	.byte	W03
	.byte	PEND
/* 003   ----------------------------------------
 */mus_ice_paradise__act_1_9_003:
	.byte		N02   , An5 , v076
	.byte	W03
	.byte		        Dn6 
	.byte	W03
	.byte		        An5 , v072
	.byte	W03
	.byte		        Fs5 
	.byte	W03
	.byte		        Dn5 , v068
	.byte	W03
	.byte		        Fs5 
	.byte	W03
	.byte		        An5 , v064
	.byte	W03
	.byte		        Fs5 , v060
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        An4 , v056
	.byte	W03
	.byte		        Fs5 
	.byte	W03
	.byte		        Dn5 , v052
	.byte	W03
	.byte		        An4 , v048
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        Dn5 , v044
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Fs4 , v040
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        An4 , v036
	.byte	W03
	.byte		        Fs4 , v032
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        An3 , v028
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        Dn4 , v024
	.byte	W03
	.byte		        An3 , v020
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        Dn4 , v016
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Fs3 , v012
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Fs3 , v008
	.byte	W03
	.byte		        Dn3 , v004
	.byte	W03
	.byte	PEND
mus_ice_paradise__act_1_9_B1:
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
 */	.byte		N02   , Dn3 , v024
	.byte	W03
	.byte		        Gn3 , v032
	.byte	W03
	.byte		        An3 , v040
	.byte	W03
	.byte		        Dn4 , v048
	.byte	W03
	.byte		        Gn4 , v056
	.byte	W03
	.byte		        An4 , v064
	.byte	W03
	.byte		        Dn5 , v072
	.byte	W03
	.byte		        Gn5 , v084
	.byte	W03
	.byte		        An5 , v092
	.byte	W03
	.byte		        Dn6 
	.byte	W03
	.byte		        An5 
	.byte	W03
	.byte		        Gn5 
	.byte	W03
	.byte		        Dn5 , v088
	.byte	W03
	.byte		        Gn5 
	.byte	W03
	.byte		        An5 , v084
	.byte	W03
	.byte		        Gn5 
	.byte	W03
	.byte		        Dn5 , v080
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        Gn5 , v076
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        An4 , v072
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Dn5 , v068
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Gn4 , v064
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Gn4 , v060
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Dn4 , v056
	.byte	W03
/* 025   ----------------------------------------
 */	.byte		        An3 
	.byte	W03
	.byte		        Dn4 , v052
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Fs4 , v048
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Dn4 , v044
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        Dn4 , v040
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        An3 , v036
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        An3 , v032
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        Dn3 , v028
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Fs3 , v024
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        An2 , v020
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Fs3 , v016
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        Fs2 , v012
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        Dn3 , v008
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        Fs2 
	.byte	W03
	.byte		        Dn2 , v004
	.byte	W03
	.byte		        Fs2 
	.byte	W03
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
/* 045   ----------------------------------------
 */	.byte	W96
/* 046   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_9_002
/* 047   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_9_003
	.byte	GOTO
	 mPtr	mus_ice_paradise__act_1_9_B1
mus_ice_paradise__act_1_9_B2:
/* 048   ----------------------------------------
 */	.byte	FINE

/* **************** Track 10 (Midi-Chn.10) **************** */

mus_ice_paradise__act_1_10:
	.byte	KEYSH , mus_ice_paradise__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 10
	.byte		VOL   , 59*mus_ice_paradise__act_1_mvl/mxv
	.byte		BENDR , 12
	.byte		N02   , Dn3 , v032
	.byte	W03
	.byte		        Gn3 , v040
	.byte	W03
	.byte		        An3 , v052
	.byte	W03
	.byte		        Dn4 , v060
	.byte	W03
	.byte		        Gn4 , v068
	.byte	W03
	.byte		        An4 , v076
	.byte	W03
	.byte		        Dn5 , v084
	.byte	W03
	.byte		        Gn5 , v092
	.byte	W03
	.byte		        An5 , v104
	.byte	W03
	.byte		        Dn6 
	.byte	W03
	.byte		        An5 
	.byte	W03
	.byte		        Gn5 , v100
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        Gn5 , v096
	.byte	W03
	.byte		        An5 
	.byte	W03
	.byte		        Gn5 
	.byte	W03
	.byte		        Dn5 , v092
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Dn5 , v088
	.byte	W03
	.byte		        Gn5 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        An4 , v084
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        An4 , v080
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        An4 , v076
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Gn4 , v072
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Gn4 , v068
	.byte	W03
	.byte		        Dn4 
	.byte	W03
/* 001   ----------------------------------------
 */mus_ice_paradise__act_1_10_001:
	.byte		N02   , An3 , v064
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Fs4 , v060
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        An3 , v056
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        Dn4 , v052
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Fs3 , v048
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Dn4 , v044
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        Dn3 , v040
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        An3 , v036
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        Dn3 , v032
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Fs3 , v028
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        An2 , v024
	.byte	W03
	.byte		        Fs2 
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        Dn3 , v020
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        Fs2 , v016
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		        Fs2 , v012
	.byte	W03
	.byte	PEND
/* 002   ----------------------------------------
 */	.byte		VOL   , 0*mus_ice_paradise__act_1_mvl/mxv
	.byte		BEND  , c_v-64
	.byte		TIE   , Dn4 , v080
	.byte	W03
	.byte		VOL   , 6*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        11*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        16*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        21*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        26*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        29*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        35*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        40*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        44*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        50*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        54*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        57*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        63*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        67*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        67*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        70*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        72*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        74*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        74*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        77*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        79*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        81*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        82*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        85*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        87*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        89*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        89*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        92*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        94*mus_ice_paradise__act_1_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		        c_v-61
	.byte	W01
	.byte		VOL   , 96*mus_ice_paradise__act_1_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-57
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		VOL   , 97*mus_ice_paradise__act_1_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-50
	.byte	W01
	.byte		        c_v-46
	.byte	W01
/* 003   ----------------------------------------
 */mus_ice_paradise__act_1_10_003:
	.byte		VOL   , 100*mus_ice_paradise__act_1_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-42
	.byte	W01
	.byte		        c_v-39
	.byte	W01
	.byte		VOL   , 99*mus_ice_paradise__act_1_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-35
	.byte	W01
	.byte		        c_v-31
	.byte	W01
	.byte		VOL   , 97*mus_ice_paradise__act_1_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-28
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		VOL   , 95*mus_ice_paradise__act_1_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		VOL   , 93*mus_ice_paradise__act_1_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-13
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		VOL   , 91*mus_ice_paradise__act_1_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		VOL   , 89*mus_ice_paradise__act_1_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W03
	.byte		VOL   , 87*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        85*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        82*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        81*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        80*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        78*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        76*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        74*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        72*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        70*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        67*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        64*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        59*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        54*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        49*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        44*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        39*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        34*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        29*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        24*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        19*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        14*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        9*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        4*mus_ice_paradise__act_1_mvl/mxv
	.byte	W02
	.byte	PEND
	.byte		EOT   , Dn4 
	.byte	W01
	.byte		VOL   , 0*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
mus_ice_paradise__act_1_10_B1:
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte		VOL   , 100*mus_ice_paradise__act_1_mvl/mxv
	.byte	W96
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
 */	.byte		        0*mus_ice_paradise__act_1_mvl/mxv
	.byte		BEND  , c_v-64
	.byte		TIE   , Dn5 , v060
	.byte	W03
	.byte		VOL   , 6*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        11*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        16*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        21*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        26*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        29*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        35*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        40*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        44*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        50*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        54*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        57*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        63*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        67*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        67*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        70*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        72*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        74*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        74*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        77*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        79*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        81*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        82*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        85*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        87*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        89*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        89*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        92*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        94*mus_ice_paradise__act_1_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		        c_v-59
	.byte	W01
	.byte		VOL   , 96*mus_ice_paradise__act_1_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-53
	.byte	W01
	.byte		        c_v-47
	.byte	W01
	.byte		VOL   , 97*mus_ice_paradise__act_1_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-41
	.byte	W01
	.byte		        c_v-35
	.byte	W01
/* 026   ----------------------------------------
 */	.byte		VOL   , 100*mus_ice_paradise__act_1_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-29
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		VOL   , 99*mus_ice_paradise__act_1_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-18
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		VOL   , 97*mus_ice_paradise__act_1_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		VOL   , 95*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        93*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        91*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        89*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        87*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        85*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        82*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        81*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        80*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        78*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        76*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        74*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        72*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        70*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        67*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        64*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        59*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        54*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        49*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        44*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        39*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        34*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        29*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        24*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        19*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        14*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        9*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        4*mus_ice_paradise__act_1_mvl/mxv
	.byte	W02
	.byte		EOT   
	.byte	W01
	.byte		VOL   , 0*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
/* 027   ----------------------------------------
 */	.byte	W96
/* 028   ----------------------------------------
 */	.byte	W96
/* 029   ----------------------------------------
 */	.byte		VOICE , 10
	.byte		VOL   , 89*mus_ice_paradise__act_1_mvl/mxv
	.byte		BENDR , 12
	.byte	W96
/* 030   ----------------------------------------
 */	.byte	W48
	.byte		N05   , En2 , v024
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        An2 , v028
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        En3 , v032
	.byte	W06
	.byte		        Gn3 , v036
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cn4 , v040
	.byte	W06
/* 031   ----------------------------------------
 */	.byte		        En3 
	.byte	W06
	.byte		        Gn3 , v044
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cn4 , v048
	.byte	W06
	.byte		        En4 , v052
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 , v056
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En4 , v060
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 , v064
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En5 , v068
	.byte	W06
	.byte		        Gn5 , v072
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Cn6 , v076
	.byte	W06
/* 032   ----------------------------------------
 */	.byte		N11   , Bn5 
	.byte	W96
/* 033   ----------------------------------------
 */	.byte	W96
/* 034   ----------------------------------------
 */	.byte	W48
	.byte		N05   , Fn2 , v024
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        An2 , v028
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn3 , v032
	.byte	W06
	.byte		        Gn3 , v036
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cn4 , v040
	.byte	W06
/* 035   ----------------------------------------
 */	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 , v044
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cn4 , v048
	.byte	W06
	.byte		        Fn4 , v052
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 , v056
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn4 , v060
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 , v064
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn5 , v068
	.byte	W06
	.byte		        Gn5 , v072
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Cn6 , v076
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
 */	.byte	W96
/* 041   ----------------------------------------
 */	.byte	W96
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte		VOICE , 10
	.byte		VOL   , 80*mus_ice_paradise__act_1_mvl/mxv
	.byte		BENDR , 12
	.byte	W96
/* 044   ----------------------------------------
 */	.byte		N02   , Dn3 , v032
	.byte	W03
	.byte		        Gn3 , v040
	.byte	W03
	.byte		        An3 , v052
	.byte	W03
	.byte		        Dn4 , v060
	.byte	W03
	.byte		        Gn4 , v068
	.byte	W03
	.byte		        An4 , v076
	.byte	W03
	.byte		        Dn5 , v084
	.byte	W03
	.byte		        Gn5 , v092
	.byte	W03
	.byte		        An5 , v104
	.byte	W03
	.byte		        Dn6 
	.byte	W03
	.byte		        An5 
	.byte	W03
	.byte		        Gn5 , v100
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        Gn5 , v096
	.byte	W03
	.byte		        An5 
	.byte	W03
	.byte		        Gn5 
	.byte	W03
	.byte		        Dn5 , v092
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Dn5 , v088
	.byte	W03
	.byte		        Gn5 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        An4 , v084
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        An4 , v080
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        An4 , v076
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Gn4 , v072
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Gn4 , v068
	.byte	W03
	.byte		        Dn4 
	.byte	W03
/* 045   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_10_001
/* 046   ----------------------------------------
 */	.byte		VOL   , 2*mus_ice_paradise__act_1_mvl/mxv
	.byte		BEND  , c_v-64
	.byte		TIE   , Dn4 , v080
	.byte	W03
	.byte		VOL   , 6*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        11*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        16*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        21*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        26*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        29*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        35*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        40*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        44*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        50*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        54*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        57*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        63*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        67*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        67*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        70*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        72*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        74*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        74*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        77*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        79*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        81*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        82*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        85*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        87*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        89*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        89*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        92*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        94*mus_ice_paradise__act_1_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		        c_v-61
	.byte	W01
	.byte		VOL   , 96*mus_ice_paradise__act_1_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-57
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		VOL   , 97*mus_ice_paradise__act_1_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-50
	.byte	W01
	.byte		        c_v-46
	.byte	W01
/* 047   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_10_003
	.byte		EOT   , Dn4 
	.byte	W01
	.byte		VOL   , 0*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte	GOTO
	 mPtr	mus_ice_paradise__act_1_10_B1
mus_ice_paradise__act_1_10_B2:
/* 048   ----------------------------------------
 */	.byte	FINE

/* **************** Track 11 (Midi-Chn.11) **************** */

mus_ice_paradise__act_1_11:
	.byte	KEYSH , mus_ice_paradise__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 64
	.byte		VOL   , 100*mus_ice_paradise__act_1_mvl/mxv
	.byte		BENDR , 12
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */mus_ice_paradise__act_1_11_003:
	.byte		VOL   , 127*mus_ice_paradise__act_1_mvl/mxv
	.byte	W01
	.byte		N90   , An3 , v120
	.byte	W05
	.byte		VOL   , 109*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        84*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        59*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        52*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        56*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        59*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        63*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        66*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        70*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        73*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        76*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        80*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        82*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        87*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        89*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        93*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        96*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        99*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        103*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        106*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        110*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        112*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        117*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        119*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        123*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        127*mus_ice_paradise__act_1_mvl/mxv
	.byte	W14
	.byte		N16   , Dn4 
	.byte	W01
	.byte	PEND
mus_ice_paradise__act_1_11_B1:
/* 004   ----------------------------------------
 */mus_ice_paradise__act_1_11_004:
	.byte	W13
	.byte		N01   , Cs4 , v040
	.byte	W02
	.byte		        Cn4 , v076
	.byte	W02
	.byte		N02   , As3 , v068
	.byte	W03
	.byte		        Gs3 , v044
	.byte	W02
	.byte		        Fs3 , v056
	.byte	W02
	.byte		        Fn3 
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Cs3 , v024
	.byte	W03
	.byte		N03   , Cn3 , v012
	.byte	W60
	.byte	W03
	.byte	PEND
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
 */	.byte	W84
	.byte		VOL   , 127*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
/* 016   ----------------------------------------
 */	.byte		N11   , An3 , v120
	.byte	W36
	.byte		TIE   
	.byte	W06
	.byte		VOL   , 119*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        86*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        52*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        33*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        36*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        40*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        44*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        47*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        51*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        55*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        58*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        62*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        66*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        69*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        73*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        77*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        80*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        84*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
/* 017   ----------------------------------------
 */	.byte		        87*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        91*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        95*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        97*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        102*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        106*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        108*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        112*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        116*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        119*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        123*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        127*mus_ice_paradise__act_1_mvl/mxv
	.byte	W08
	.byte		EOT   
	.byte	W07
	.byte		N16   
	.byte	W24
	.byte		        Gs3 
	.byte	W24
/* 018   ----------------------------------------
 */	.byte		N11   , Gn3 
	.byte	W36
	.byte		TIE   
	.byte	W06
	.byte		VOL   , 119*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        102*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        85*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        67*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        51*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        34*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        34*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        39*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        43*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        48*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        52*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        56*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        61*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        65*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        69*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        73*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        78*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        82*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
/* 019   ----------------------------------------
 */	.byte		        87*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        91*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        95*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        100*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        103*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        108*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        112*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        117*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        121*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        126*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        127*mus_ice_paradise__act_1_mvl/mxv
	.byte	W11
	.byte		EOT   
	.byte	W07
	.byte		N07   
	.byte	W24
	.byte		N23   
	.byte	W24
/* 020   ----------------------------------------
 */	.byte		N15   , Fn3 
	.byte	W15
	.byte		N01   , En3 , v040
	.byte	W02
	.byte		        Ds3 , v076
	.byte	W02
	.byte		N02   , Cs3 , v068
	.byte	W03
	.byte		        Bn2 , v044
	.byte	W02
	.byte		        An2 , v056
	.byte	W02
	.byte		        Gs2 
	.byte	W03
	.byte		        Fs2 
	.byte	W03
	.byte		        En2 , v024
	.byte	W03
	.byte		N03   , Ds2 , v012
	.byte	W60
	.byte	W01
/* 021   ----------------------------------------
 */	.byte	W96
/* 022   ----------------------------------------
 */	.byte	W96
/* 023   ----------------------------------------
 */	.byte		VOL   , 7*mus_ice_paradise__act_1_mvl/mxv
	.byte		N44   , Gn3 , v120
	.byte	W03
	.byte		VOL   , 18*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        28*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        39*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        49*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        52*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        56*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        59*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        63*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        66*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        70*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        73*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        76*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        80*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        82*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        87*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        89*mus_ice_paradise__act_1_mvl/mxv
	.byte		N44   , An3 
	.byte	W03
	.byte		VOL   , 93*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        96*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        99*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        103*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        106*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        110*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        112*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        117*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        119*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        123*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        127*mus_ice_paradise__act_1_mvl/mxv
	.byte	W14
	.byte		N16   , Dn4 
	.byte	W01
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_11_004
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
 */	.byte		VOL   , 127*mus_ice_paradise__act_1_mvl/mxv
	.byte		N90   , As3 , v120
	.byte	W06
	.byte		VOL   , 109*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        84*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        59*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        52*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        56*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        59*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        63*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        66*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        70*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        73*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        76*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        80*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        82*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        87*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        89*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        93*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        96*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        99*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        103*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        106*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        110*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        112*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        117*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        119*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        123*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        127*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        110*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
/* 043   ----------------------------------------
 */	.byte		        74*mus_ice_paradise__act_1_mvl/mxv
	.byte		N90   , Ds4 
	.byte	W03
	.byte		VOL   , 52*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        54*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        57*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        59*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        63*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        65*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        67*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        71*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        74*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        77*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        80*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        82*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        85*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        88*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        91*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        94*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        97*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        100*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        103*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        104*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        108*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        111*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        114*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        117*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        119*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        123*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        125*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		        127*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
/* 044   ----------------------------------------
 */	.byte		N13   , Dn4 
	.byte	W13
	.byte		N01   , Cs4 , v040
	.byte	W02
	.byte		        Cn4 , v076
	.byte	W02
	.byte		N02   , As3 , v068
	.byte	W03
	.byte		        Gs3 , v044
	.byte	W02
	.byte		        Fs3 , v056
	.byte	W02
	.byte		        Fn3 
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Cs3 , v024
	.byte	W03
	.byte		N03   , Cn3 , v012
	.byte	W60
	.byte	W03
/* 045   ----------------------------------------
 */	.byte	W96
/* 046   ----------------------------------------
 */	.byte	W96
/* 047   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_11_003
	.byte	GOTO
	 mPtr	mus_ice_paradise__act_1_11_B1
mus_ice_paradise__act_1_11_B2:
/* 048   ----------------------------------------
 */	.byte	W13
	.byte		N01   , Cs4 , v040
	.byte	W02
	.byte		        Cn4 , v076
	.byte	W02
	.byte		N02   , As3 , v068
	.byte	W03
	.byte		        Gs3 , v044
	.byte	W02
	.byte		        Fs3 , v056
	.byte	W02
	.byte		        Fn3 
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Cs3 , v024
	.byte	W03
	.byte		N03   , Cn3 , v012
	.byte	W03
	.byte	FINE

/* **************** Track 12 (Midi-Chn.12) **************** */

mus_ice_paradise__act_1_12:
	.byte	KEYSH , mus_ice_paradise__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 102
	.byte		VOL   , 110*mus_ice_paradise__act_1_mvl/mxv
	.byte		BENDR , 12
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
mus_ice_paradise__act_1_12_B1:
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte	W24
	.byte		N03   , Dn4 , v040
	.byte		N03   , Bn4 
	.byte	W06
	.byte		        Dn4 
	.byte		N03   , Bn4 
	.byte	W06
	.byte		        An3 
	.byte		N03   , Fs4 
	.byte	W06
	.byte		        An3 , v036
	.byte		N03   , Fs4 
	.byte	W06
	.byte		        Bn3 
	.byte		N03   , Gn4 
	.byte	W06
	.byte		        Bn3 
	.byte		N03   , Gn4 
	.byte	W06
	.byte		        Fs3 , v032
	.byte		N03   , Dn4 
	.byte	W06
	.byte		        Fs3 
	.byte		N03   , Dn4 
	.byte	W06
	.byte		        Bn3 
	.byte		N03   , Fs4 
	.byte	W06
	.byte		        Bn3 
	.byte		N03   , Fs4 
	.byte	W06
	.byte		        Dn3 , v028
	.byte		N03   , Bn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N03   , Bn3 
	.byte	W06
/* 007   ----------------------------------------
 */	.byte		        Fs3 
	.byte		N03   , Dn4 
	.byte	W06
	.byte		        Fs3 , v024
	.byte		N03   , Dn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N03   , Gn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N03   , Gn3 
	.byte	W06
	.byte		        Dn3 , v020
	.byte		N03   , Bn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N03   , Bn3 
	.byte	W06
	.byte		        Gn2 
	.byte		N03   , Dn3 
	.byte	W06
	.byte		        Gn2 
	.byte		N03   , Dn3 
	.byte	W06
	.byte		        Bn2 , v016
	.byte		N03   , Fs3 
	.byte	W06
	.byte		        Bn2 
	.byte		N03   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N03   , Bn2 
	.byte	W06
	.byte		        Dn2 , v012
	.byte		N03   , Bn2 
	.byte	W18
	.byte		N05   , Gn1 , v004
	.byte	W06
	.byte		N05   
	.byte	W06
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
 */	.byte	W24
	.byte		N03   , Dn4 , v032
	.byte		N03   , Bn4 
	.byte	W06
	.byte		        Dn4 , v028
	.byte		N03   , Bn4 
	.byte	W06
	.byte		        An3 
	.byte		N03   , Fs4 
	.byte	W06
	.byte		        An3 
	.byte		N03   , Fs4 
	.byte	W06
	.byte		        Bn3 
	.byte		N03   , Gn4 
	.byte	W06
	.byte		        Bn3 , v024
	.byte		N03   , Gn4 
	.byte	W06
	.byte		        Fs3 
	.byte		N03   , Dn4 
	.byte	W06
	.byte		        Fs3 
	.byte		N03   , Dn4 
	.byte	W06
	.byte		        Bn3 , v020
	.byte		N03   , Fs4 
	.byte	W06
	.byte		        Bn3 
	.byte		N03   , Fs4 
	.byte	W06
	.byte		        Dn3 
	.byte		N03   , Bn3 
	.byte	W06
	.byte		        Dn3 , v016
	.byte		N03   , Bn3 
	.byte	W06
/* 027   ----------------------------------------
 */	.byte		        Fs3 
	.byte		N03   , Dn4 
	.byte	W06
	.byte		        Fs3 
	.byte		N03   , Dn4 
	.byte	W06
	.byte		        Bn2 
	.byte		N03   , Gn3 
	.byte	W06
	.byte		        Bn2 , v012
	.byte		N03   , Gn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N03   , Bn3 
	.byte	W06
	.byte		        Dn3 
	.byte		N03   , Bn3 
	.byte	W06
	.byte		        Gn2 , v008
	.byte		N03   , Dn3 
	.byte	W06
	.byte		        Gn2 
	.byte		N03   , Dn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N03   , Fs3 
	.byte	W06
	.byte		        Bn2 , v004
	.byte		N03   , Fs3 
	.byte	W06
	.byte		        Dn2 
	.byte		N03   , Bn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N03   , Bn2 
	.byte	W18
	.byte		N05   , Gn1 
	.byte	W06
	.byte		N05   
	.byte	W06
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
/* 045   ----------------------------------------
 */	.byte	W96
/* 046   ----------------------------------------
 */	.byte	W96
/* 047   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_ice_paradise__act_1_12_B1
mus_ice_paradise__act_1_12_B2:
/* 048   ----------------------------------------
 */	.byte	FINE

/* **************** Track 13 (Midi-Chn.13) **************** */

mus_ice_paradise__act_1_13:
	.byte	KEYSH , mus_ice_paradise__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 79
	.byte		VOL   , 100*mus_ice_paradise__act_1_mvl/mxv
	.byte		LFOS  , 26
	.byte		MODT  , 1
	.byte		LFODL , 28
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
mus_ice_paradise__act_1_13_B1:
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte	W96
/* 007   ----------------------------------------
 */	.byte	W72
	.byte		VOL   , 59*mus_ice_paradise__act_1_mvl/mxv
	.byte		N24   , Dn3 , v096
	.byte	W12
	.byte		VOL   , 57*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
/* 008   ----------------------------------------
 */	.byte		        82*mus_ice_paradise__act_1_mvl/mxv
	.byte	W01
	.byte		N36   , Dn4 
	.byte	W11
	.byte		VOL   , 81*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        85*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        82*mus_ice_paradise__act_1_mvl/mxv
	.byte	W02
	.byte		N01   , As3 , v076
	.byte	W02
	.byte		N92   , Bn3 , v084
	.byte	W08
	.byte		MOD   , 4
	.byte		VOL   , 74*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 15
	.byte		VOL   , 82*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 31
	.byte		VOL   , 82*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 46
	.byte		VOL   , 74*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
/* 009   ----------------------------------------
 */	.byte		MOD   , 59
	.byte		VOL   , 66*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 57
	.byte		VOL   , 52*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 43
	.byte		VOL   , 35*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 13*mus_ice_paradise__act_1_mvl/mxv
	.byte	W10
	.byte		N02   , Fs3 , v076
	.byte	W02
	.byte		VOL   , 74*mus_ice_paradise__act_1_mvl/mxv
	.byte	W01
	.byte		N23   , Gn3 , v084
	.byte	W11
	.byte		VOL   , 74*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        89*mus_ice_paradise__act_1_mvl/mxv
	.byte		N24   , Fs3 
	.byte	W12
	.byte		VOL   , 87*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
/* 010   ----------------------------------------
 */	.byte		        94*mus_ice_paradise__act_1_mvl/mxv
	.byte	W01
	.byte		TIE   , En3 , v080
	.byte	W11
	.byte		VOL   , 85*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 6
	.byte		VOL   , 89*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 12
	.byte		VOL   , 94*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 26
	.byte		VOL   , 94*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 36
	.byte		VOL   , 92*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 43
	.byte		VOL   , 82*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        82*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
/* 011   ----------------------------------------
 */	.byte		        66*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 44
	.byte		VOL   , 50*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        52*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 24
	.byte		VOL   , 22*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 0*mus_ice_paradise__act_1_mvl/mxv
	.byte	W08
	.byte		EOT   
	.byte	W16
	.byte		VOL   , 74*mus_ice_paradise__act_1_mvl/mxv
	.byte		N24   , Dn3 , v092
	.byte	W12
	.byte		VOL   , 74*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
/* 012   ----------------------------------------
 */	.byte		        88*mus_ice_paradise__act_1_mvl/mxv
	.byte	W02
	.byte		N36   , Dn4 , v100
	.byte	W10
	.byte		VOL   , 73*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        82*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        87*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		N03   , As3 , v072
	.byte	W03
	.byte		N90   , Bn3 , v088
	.byte	W06
	.byte		MOD   , 3
	.byte		VOL   , 76*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 24
	.byte		VOL   , 78*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 34
	.byte		VOL   , 66*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 43
	.byte		VOL   , 74*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
/* 013   ----------------------------------------
 */	.byte		MOD   , 48
	.byte		VOL   , 59*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 52
	.byte		VOL   , 59*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 54
	.byte		VOL   , 49*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 23
	.byte		VOL   , 0*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 80*mus_ice_paradise__act_1_mvl/mxv
	.byte		N02   , Fs3 , v064
	.byte	W03
	.byte		N22   , Gn3 , v096
	.byte	W09
	.byte		VOL   , 82*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        104*mus_ice_paradise__act_1_mvl/mxv
	.byte	W01
	.byte		N24   , Fs3 , v088
	.byte	W11
	.byte		VOL   , 104*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
/* 014   ----------------------------------------
 */	.byte		        94*mus_ice_paradise__act_1_mvl/mxv
	.byte	W02
	.byte		TIE   , Fn3 , v084
	.byte	W10
	.byte		VOL   , 84*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 13
	.byte		VOL   , 84*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 26
	.byte		VOL   , 79*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 37
	.byte		VOL   , 79*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 46
	.byte		VOL   , 77*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 48
	.byte		VOL   , 74*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 52
	.byte		VOL   , 69*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
/* 015   ----------------------------------------
 */	.byte		MOD   , 55
	.byte		VOL   , 64*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 57
	.byte		VOL   , 59*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 58
	.byte		VOL   , 57*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 27
	.byte		VOL   , 41*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 0*mus_ice_paradise__act_1_mvl/mxv
	.byte	W04
	.byte		EOT   
	.byte	W20
	.byte		VOL   , 82*mus_ice_paradise__act_1_mvl/mxv
	.byte		N11   , Gn3 , v092
	.byte	W12
	.byte		VOL   , 89*mus_ice_paradise__act_1_mvl/mxv
	.byte		N11   , Gs3 , v096
	.byte	W12
/* 016   ----------------------------------------
 */	.byte		VOL   , 112*mus_ice_paradise__act_1_mvl/mxv
	.byte		N32   , An3 , v084
	.byte	W12
	.byte		VOL   , 106*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 5
	.byte		VOL   , 106*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 24
	.byte		VOL   , 93*mus_ice_paradise__act_1_mvl/mxv
	.byte		TIE   , Dn3 , v092
	.byte	W12
	.byte		MOD   , 26
	.byte		VOL   , 89*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        88*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 46
	.byte		VOL   , 79*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 56
	.byte		VOL   , 74*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
/* 017   ----------------------------------------
 */	.byte		MOD   , 50
	.byte		VOL   , 67*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 24
	.byte		VOL   , 63*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 0*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        59*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		EOT   
	.byte	W08
	.byte		N03   , Cs4 , v072
	.byte	W01
	.byte		VOL   , 127*mus_ice_paradise__act_1_mvl/mxv
	.byte	W02
	.byte		N21   , Dn4 , v088
	.byte	W10
	.byte		VOL   , 65*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        127*mus_ice_paradise__act_1_mvl/mxv
	.byte		N23   , Cs4 , v092
	.byte	W12
	.byte		VOL   , 91*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
/* 018   ----------------------------------------
 */	.byte		        116*mus_ice_paradise__act_1_mvl/mxv
	.byte		N32   , Cn4 , v080
	.byte	W12
	.byte		VOL   , 88*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        77*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        93*mus_ice_paradise__act_1_mvl/mxv
	.byte		TIE   , En3 , v076
	.byte	W12
	.byte		MOD   , 4
	.byte		VOL   , 82*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 15
	.byte		VOL   , 86*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 26
	.byte		VOL   , 86*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 45
	.byte		VOL   , 88*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
/* 019   ----------------------------------------
 */	.byte		MOD   , 50
	.byte		VOL   , 79*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 51
	.byte		VOL   , 77*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        67*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 36
	.byte		VOL   , 51*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 0*mus_ice_paradise__act_1_mvl/mxv
	.byte	W02
	.byte		EOT   
	.byte	W22
	.byte		VOL   , 89*mus_ice_paradise__act_1_mvl/mxv
	.byte		N11   , En3 , v080
	.byte	W12
	.byte		VOL   , 85*mus_ice_paradise__act_1_mvl/mxv
	.byte		N11   , Fs3 , v076
	.byte	W12
/* 020   ----------------------------------------
 */	.byte		VOL   , 89*mus_ice_paradise__act_1_mvl/mxv
	.byte		N80   , Gn3 , v088
	.byte	W12
	.byte		VOL   , 87*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        82*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        82*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        78*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        78*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        82*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        82*mus_ice_paradise__act_1_mvl/mxv
	.byte		N66   , En3 , v084
	.byte	W12
/* 021   ----------------------------------------
 */	.byte		VOL   , 80*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 7
	.byte		VOL   , 74*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 47
	.byte		VOL   , 69*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 30
	.byte		VOL   , 37*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 0*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        106*mus_ice_paradise__act_1_mvl/mxv
	.byte		N11   , En3 , v068
	.byte	W12
	.byte		VOL   , 100*mus_ice_paradise__act_1_mvl/mxv
	.byte		N11   , Gn3 , v084
	.byte	W12
	.byte		VOL   , 104*mus_ice_paradise__act_1_mvl/mxv
	.byte		N11   , Bn3 , v068
	.byte	W12
/* 022   ----------------------------------------
 */	.byte		VOL   , 100*mus_ice_paradise__act_1_mvl/mxv
	.byte		N64   , Dn4 , v080
	.byte	W12
	.byte		VOL   , 88*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 27
	.byte		VOL   , 88*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 51
	.byte		VOL   , 81*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 55
	.byte		VOL   , 89*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 56
	.byte		VOL   , 0*mus_ice_paradise__act_1_mvl/mxv
	.byte	W09
	.byte		N03   , Cs4 , v088
	.byte	W03
	.byte		MOD   , 0
	.byte		VOL   , 101*mus_ice_paradise__act_1_mvl/mxv
	.byte		N09   , Dn4 
	.byte	W11
	.byte		N01   , Cs4 , v104
	.byte	W01
	.byte		VOL   , 109*mus_ice_paradise__act_1_mvl/mxv
	.byte		N30   , Dn4 , v056
	.byte	W12
/* 023   ----------------------------------------
 */	.byte		VOL   , 86*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        24*mus_ice_paradise__act_1_mvl/mxv
	.byte	W10
	.byte		N02   , Cn4 , v072
	.byte	W02
	.byte		VOL   , 0*mus_ice_paradise__act_1_mvl/mxv
	.byte		N02   , Bn3 , v068
	.byte	W03
	.byte		N03   , An3 , v060
	.byte	W04
	.byte		N02   , Gn3 , v048
	.byte	W02
	.byte		N03   , Fn3 , v024
	.byte	W03
	.byte		        En3 , v008
	.byte	W60
/* 024   ----------------------------------------
 */	.byte	W96
/* 025   ----------------------------------------
 */	.byte	W96
/* 026   ----------------------------------------
 */	.byte		VOL   , 87*mus_ice_paradise__act_1_mvl/mxv
	.byte	W96
/* 027   ----------------------------------------
 */	.byte	W72
	.byte		        104*mus_ice_paradise__act_1_mvl/mxv
	.byte		N24   , Dn3 , v096
	.byte	W12
	.byte		VOL   , 100*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
/* 028   ----------------------------------------
 */	.byte		        104*mus_ice_paradise__act_1_mvl/mxv
	.byte	W01
	.byte		N36   , Dn4 
	.byte	W11
	.byte		VOL   , 106*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        93*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        85*mus_ice_paradise__act_1_mvl/mxv
	.byte	W02
	.byte		N01   , As3 , v076
	.byte	W02
	.byte		N92   , Bn3 , v084
	.byte	W08
	.byte		VOL   , 89*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 23
	.byte		VOL   , 94*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 39
	.byte		VOL   , 85*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 55
	.byte		VOL   , 76*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
/* 029   ----------------------------------------
 */	.byte		MOD   , 63
	.byte		VOL   , 73*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 59
	.byte		VOL   , 62*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 51
	.byte		VOL   , 0*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 19*mus_ice_paradise__act_1_mvl/mxv
	.byte	W10
	.byte		N02   , Fs3 , v076
	.byte	W02
	.byte		VOL   , 78*mus_ice_paradise__act_1_mvl/mxv
	.byte	W01
	.byte		N23   , Gn3 , v084
	.byte	W11
	.byte		VOL   , 94*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        104*mus_ice_paradise__act_1_mvl/mxv
	.byte		N24   , Fs3 
	.byte	W12
	.byte		VOL   , 95*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
/* 030   ----------------------------------------
 */	.byte		        97*mus_ice_paradise__act_1_mvl/mxv
	.byte	W01
	.byte		TIE   , En3 , v080
	.byte	W11
	.byte		MOD   , 10
	.byte		VOL   , 86*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 24
	.byte		VOL   , 91*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 37
	.byte		VOL   , 89*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 46
	.byte		VOL   , 86*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 52
	.byte		VOL   , 79*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 54
	.byte		VOL   , 70*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 53
	.byte		VOL   , 64*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
/* 031   ----------------------------------------
 */	.byte		MOD   , 51
	.byte		VOL   , 59*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 48
	.byte		VOL   , 52*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 37
	.byte		VOL   , 50*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 7
	.byte		VOL   , 22*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 0*mus_ice_paradise__act_1_mvl/mxv
	.byte	W08
	.byte		EOT   
	.byte	W16
	.byte		VOL   , 62*mus_ice_paradise__act_1_mvl/mxv
	.byte		N24   , Dn3 , v092
	.byte	W12
	.byte		VOL   , 67*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
/* 032   ----------------------------------------
 */	.byte		        73*mus_ice_paradise__act_1_mvl/mxv
	.byte	W02
	.byte		N36   , Dn4 , v100
	.byte	W10
	.byte		VOL   , 67*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        67*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 2
	.byte		VOL   , 74*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		N03   , As3 , v072
	.byte	W03
	.byte		N90   , Bn3 , v088
	.byte	W06
	.byte		MOD   , 8
	.byte		VOL   , 69*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 29
	.byte		VOL   , 69*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 41
	.byte		VOL   , 64*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 42
	.byte		VOL   , 62*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
/* 033   ----------------------------------------
 */	.byte		MOD   , 45
	.byte		VOL   , 52*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        48*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        0*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 3
	.byte		VOL   , 13*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 64*mus_ice_paradise__act_1_mvl/mxv
	.byte		N02   , Fs3 , v064
	.byte	W03
	.byte		N22   , Gn3 , v096
	.byte	W09
	.byte		VOL   , 78*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        92*mus_ice_paradise__act_1_mvl/mxv
	.byte	W01
	.byte		N24   , Fs3 , v088
	.byte	W11
	.byte		VOL   , 94*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
/* 034   ----------------------------------------
 */	.byte		        73*mus_ice_paradise__act_1_mvl/mxv
	.byte	W02
	.byte		TIE   , Fn3 , v084
	.byte	W10
	.byte		MOD   , 7
	.byte		VOL   , 67*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 12
	.byte		VOL   , 71*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 20
	.byte		VOL   , 73*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 36
	.byte		VOL   , 69*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 37
	.byte		VOL   , 71*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        66*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        67*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
/* 035   ----------------------------------------
 */	.byte		MOD   , 38
	.byte		VOL   , 59*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 37
	.byte		VOL   , 55*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 13
	.byte		VOL   , 44*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 20*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        0*mus_ice_paradise__act_1_mvl/mxv
	.byte	W04
	.byte		EOT   
	.byte	W20
	.byte		VOL   , 55*mus_ice_paradise__act_1_mvl/mxv
	.byte		N11   , Fs3 , v104
	.byte	W12
	.byte		VOL   , 67*mus_ice_paradise__act_1_mvl/mxv
	.byte		N11   , Gs3 , v100
	.byte	W12
/* 036   ----------------------------------------
 */	.byte		MOD   , 1
	.byte		VOL   , 67*mus_ice_paradise__act_1_mvl/mxv
	.byte		N68   , An3 
	.byte	W12
	.byte		MOD   , 15
	.byte		VOL   , 71*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 26
	.byte		VOL   , 80*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 36
	.byte		VOL   , 76*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 22
	.byte		VOL   , 76*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 80*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        59*mus_ice_paradise__act_1_mvl/mxv
	.byte		N23   , En3 , v080
	.byte	W12
	.byte		VOL   , 64*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
/* 037   ----------------------------------------
 */	.byte		        70*mus_ice_paradise__act_1_mvl/mxv
	.byte		N23   , Ds3 , v096
	.byte	W12
	.byte		VOL   , 58*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        81*mus_ice_paradise__act_1_mvl/mxv
	.byte		N23   , Cn4 , v092
	.byte	W12
	.byte		VOL   , 91*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 5
	.byte		VOL   , 78*mus_ice_paradise__act_1_mvl/mxv
	.byte		N23   , Bn3 , v080
	.byte	W12
	.byte		MOD   , 12
	.byte		VOL   , 76*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 1
	.byte		VOL   , 80*mus_ice_paradise__act_1_mvl/mxv
	.byte		N20   , An3 , v100
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 78*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
/* 038   ----------------------------------------
 */	.byte		        69*mus_ice_paradise__act_1_mvl/mxv
	.byte		N44   , An3 , v112
	.byte	W12
	.byte		VOL   , 82*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        89*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 1
	.byte		VOL   , 88*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        84*mus_ice_paradise__act_1_mvl/mxv
	.byte		N23   , Gn3 , v076
	.byte	W12
	.byte		VOL   , 77*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        79*mus_ice_paradise__act_1_mvl/mxv
	.byte		N11   , Fs3 , v088
	.byte	W12
	.byte		VOL   , 72*mus_ice_paradise__act_1_mvl/mxv
	.byte		N60   , Gn3 , v092
	.byte	W12
/* 039   ----------------------------------------
 */	.byte		MOD   , 20
	.byte		VOL   , 65*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 40
	.byte		VOL   , 65*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 44
	.byte		VOL   , 58*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 45
	.byte		VOL   , 52*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 10
	.byte		VOL   , 0*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte	W12
	.byte		VOL   , 81*mus_ice_paradise__act_1_mvl/mxv
	.byte		N11   , En3 , v072
	.byte	W12
	.byte		VOL   , 87*mus_ice_paradise__act_1_mvl/mxv
	.byte		N11   , Fs3 , v080
	.byte	W12
/* 040   ----------------------------------------
 */	.byte		VOL   , 94*mus_ice_paradise__act_1_mvl/mxv
	.byte		N32   , Gn3 , v100
	.byte	W12
	.byte		VOL   , 87*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        87*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        87*mus_ice_paradise__act_1_mvl/mxv
	.byte		N44   , Cn3 , v068
	.byte	W12
	.byte		VOL   , 80*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        73*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        66*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        102*mus_ice_paradise__act_1_mvl/mxv
	.byte		N11   , En3 , v104
	.byte	W12
/* 041   ----------------------------------------
 */	.byte		VOL   , 97*mus_ice_paradise__act_1_mvl/mxv
	.byte		N32   , Dn3 , v088
	.byte	W12
	.byte		VOL   , 81*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        86*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        82*mus_ice_paradise__act_1_mvl/mxv
	.byte		N56   , Fn2 , v076
	.byte	W12
	.byte		VOL   , 66*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        55*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        52*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
	.byte		        7*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
/* 042   ----------------------------------------
 */	.byte		        0*mus_ice_paradise__act_1_mvl/mxv
	.byte	W24
	.byte		        59*mus_ice_paradise__act_1_mvl/mxv
	.byte		N05   , Fn2 , v068
	.byte	W06
	.byte		        Gn2 , v080
	.byte	W06
	.byte		VOL   , 91*mus_ice_paradise__act_1_mvl/mxv
	.byte		N07   , As2 , v104
	.byte	W12
	.byte		VOL   , 102*mus_ice_paradise__act_1_mvl/mxv
	.byte		N10   , As2 , v100
	.byte	W12
	.byte		VOL   , 104*mus_ice_paradise__act_1_mvl/mxv
	.byte		N05   , Cn3 , v060
	.byte	W06
	.byte		        As2 , v088
	.byte	W06
	.byte		VOL   , 117*mus_ice_paradise__act_1_mvl/mxv
	.byte		N11   , Cn3 , v104
	.byte	W12
	.byte		VOL   , 89*mus_ice_paradise__act_1_mvl/mxv
	.byte		N04   , Dn3 , v072
	.byte	W06
	.byte		N05   , Cn3 , v080
	.byte	W06
/* 043   ----------------------------------------
 */	.byte		VOL   , 103*mus_ice_paradise__act_1_mvl/mxv
	.byte		N10   , Dn3 , v100
	.byte	W12
	.byte		VOL   , 91*mus_ice_paradise__act_1_mvl/mxv
	.byte		N04   , Fn3 , v048
	.byte	W06
	.byte		N02   , Dn3 , v056
	.byte	W06
	.byte		VOL   , 91*mus_ice_paradise__act_1_mvl/mxv
	.byte		N11   , Fn3 , v092
	.byte	W12
	.byte		VOL   , 104*mus_ice_paradise__act_1_mvl/mxv
	.byte		N04   , As3 , v060
	.byte	W06
	.byte		N02   , Fn3 , v056
	.byte	W06
	.byte		VOL   , 93*mus_ice_paradise__act_1_mvl/mxv
	.byte		N11   , As3 , v096
	.byte	W12
	.byte		VOL   , 80*mus_ice_paradise__act_1_mvl/mxv
	.byte		N05   , Cn4 , v092
	.byte	W06
	.byte		N03   , As3 , v072
	.byte	W06
	.byte		VOL   , 85*mus_ice_paradise__act_1_mvl/mxv
	.byte		N11   , Cn4 , v096
	.byte	W12
	.byte		VOL   , 92*mus_ice_paradise__act_1_mvl/mxv
	.byte		N05   , Dn4 , v092
	.byte	W06
	.byte		N03   , En4 , v072
	.byte	W06
/* 044   ----------------------------------------
 */	.byte		VOL   , 88*mus_ice_paradise__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Dn4 , v092
	.byte	W05
	.byte		N07   , En4 , v084
	.byte	W05
	.byte		VOL   , 89*mus_ice_paradise__act_1_mvl/mxv
	.byte	W01
	.byte		N06   , Dn4 , v072
	.byte	W06
	.byte		N05   , En4 , v080
	.byte	W05
	.byte		VOL   , 84*mus_ice_paradise__act_1_mvl/mxv
	.byte	W02
	.byte		N03   , Dn4 
	.byte	W04
	.byte		N04   , En4 
	.byte	W05
	.byte		N03   , Dn4 , v068
	.byte	W01
	.byte		VOL   , 82*mus_ice_paradise__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , En4 , v080
	.byte	W05
	.byte		N03   , Dn4 , v072
	.byte	W04
	.byte		        En4 , v080
	.byte	W01
	.byte		VOL   , 72*mus_ice_paradise__act_1_mvl/mxv
	.byte	W04
	.byte		N04   , Dn4 , v076
	.byte	W04
	.byte		        En4 , v072
	.byte	W04
	.byte		VOL   , 72*mus_ice_paradise__act_1_mvl/mxv
	.byte	W01
	.byte		N04   , Dn4 , v080
	.byte	W04
	.byte		        En4 , v084
	.byte	W06
	.byte		N02   , Dn4 , v080
	.byte	W01
	.byte		VOL   , 63*mus_ice_paradise__act_1_mvl/mxv
	.byte	W02
	.byte		N03   , En4 , v084
	.byte	W05
	.byte		        Dn4 , v068
	.byte	W03
	.byte		N04   , En4 , v076
	.byte	W02
	.byte		VOL   , 59*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		N03   , Dn4 , v068
	.byte	W04
	.byte		N04   , En4 
	.byte	W05
/* 045   ----------------------------------------
 */	.byte		VOL   , 51*mus_ice_paradise__act_1_mvl/mxv
	.byte	W01
	.byte		N03   , Dn4 
	.byte	W03
	.byte		N05   , En4 , v076
	.byte	W06
	.byte		N03   , Dn4 , v068
	.byte	W02
	.byte		VOL   , 49*mus_ice_paradise__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , En4 , v080
	.byte	W05
	.byte		N03   , Dn4 , v068
	.byte	W04
	.byte		N04   , En4 , v084
	.byte	W01
	.byte		VOL   , 42*mus_ice_paradise__act_1_mvl/mxv
	.byte	W04
	.byte		N03   , Dn4 , v068
	.byte	W04
	.byte		N04   , En4 , v076
	.byte	W04
	.byte		VOL   , 44*mus_ice_paradise__act_1_mvl/mxv
	.byte	W01
	.byte		N03   , Dn4 , v068
	.byte	W04
	.byte		        En4 , v080
	.byte	W05
	.byte		N04   , Dn4 , v076
	.byte	W02
	.byte		VOL   , 37*mus_ice_paradise__act_1_mvl/mxv
	.byte	W03
	.byte		N04   , En4 , v072
	.byte	W04
	.byte		N05   , Dn4 , v080
	.byte	W05
	.byte		VOL   , 35*mus_ice_paradise__act_1_mvl/mxv
	.byte		N04   , En4 
	.byte	W05
	.byte		        Dn4 , v088
	.byte	W04
	.byte		        En4 
	.byte	W03
	.byte		VOL   , 29*mus_ice_paradise__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Dn4 , v084
	.byte	W10
	.byte		VOL   , 29*mus_ice_paradise__act_1_mvl/mxv
	.byte	W12
/* 046   ----------------------------------------
 */	.byte		        0*mus_ice_paradise__act_1_mvl/mxv
	.byte	W96
/* 047   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_ice_paradise__act_1_13_B1
mus_ice_paradise__act_1_13_B2:
/* 048   ----------------------------------------
 */	.byte	FINE

/* **************** Track 14 (Midi-Chn.14) **************** */

mus_ice_paradise__act_1_14:
	.byte	KEYSH , mus_ice_paradise__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 56
	.byte		VOL   , 59*mus_ice_paradise__act_1_mvl/mxv
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
mus_ice_paradise__act_1_14_B1:
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte	W96
/* 007   ----------------------------------------
 */	.byte		VOICE , 56
	.byte		VOL   , 59*mus_ice_paradise__act_1_mvl/mxv
	.byte	W72
	.byte		N24   , Dn4 , v104
	.byte	W24
/* 008   ----------------------------------------
 */mus_ice_paradise__act_1_14_008:
	.byte	W01
	.byte		N36   , Bn4 , v104
	.byte	W36
	.byte	W01
	.byte		N01   , Fs4 , v084
	.byte	W02
	.byte		N92   , Gn4 , v096
	.byte	W56
	.byte	PEND
/* 009   ----------------------------------------
 */mus_ice_paradise__act_1_14_009:
	.byte	W44
	.byte	W02
	.byte		N02   , As3 , v084
	.byte	W03
	.byte		N23   , Bn3 , v096
	.byte	W23
	.byte		N24   , An3 
	.byte	W24
	.byte	PEND
/* 010   ----------------------------------------
 */mus_ice_paradise__act_1_14_010:
	.byte	W01
	.byte		TIE   , Gn3 , v092
	.byte	W92
	.byte	W03
	.byte	PEND
/* 011   ----------------------------------------
 */	.byte	W56
	.byte		EOT   
	.byte	W16
	.byte		N24   , Dn4 , v100
	.byte	W24
/* 012   ----------------------------------------
 */mus_ice_paradise__act_1_14_012:
	.byte	W02
	.byte		N36   , Bn4 , v108
	.byte	W36
	.byte	W01
	.byte		N03   , Fs4 , v080
	.byte	W03
	.byte		N90   , Gn4 , v096
	.byte	W54
	.byte	PEND
/* 013   ----------------------------------------
 */mus_ice_paradise__act_1_14_013:
	.byte	W48
	.byte		N02   , As3 , v076
	.byte	W03
	.byte		N22   , Bn3 , v104
	.byte	W22
	.byte		N24   , Dn4 , v100
	.byte	W23
	.byte	PEND
/* 014   ----------------------------------------
 */	.byte	W02
	.byte		TIE   , An3 , v096
	.byte	W92
	.byte	W02
/* 015   ----------------------------------------
 */	.byte	W52
	.byte		EOT   
	.byte	W20
	.byte		N11   , En4 , v100
	.byte	W12
	.byte		        Fn4 , v108
	.byte	W12
/* 016   ----------------------------------------
 */	.byte		N32   , Fs4 , v096
	.byte	W36
	.byte		TIE   , An3 , v100
	.byte	W60
/* 017   ----------------------------------------
 */	.byte	W36
	.byte	W03
	.byte		EOT   
	.byte	W08
	.byte		N03   , Fn4 , v080
	.byte	W03
	.byte		N21   , Fs4 , v096
	.byte	W22
	.byte		N23   , Fn4 , v104
	.byte	W24
/* 018   ----------------------------------------
 */	.byte		N32   , En4 , v088
	.byte	W36
	.byte		TIE   , Cn4 , v084
	.byte	W60
/* 019   ----------------------------------------
 */	.byte	W48
	.byte	W02
	.byte		EOT   
	.byte	W22
	.byte		N11   , Gn3 , v092
	.byte	W12
	.byte		        An3 , v084
	.byte	W12
/* 020   ----------------------------------------
 */	.byte		N80   , As3 , v096
	.byte	W84
	.byte		N66   , Gn3 
	.byte	W12
/* 021   ----------------------------------------
 */	.byte	W60
	.byte		N11   , Cn4 , v080
	.byte	W12
	.byte		        En4 , v096
	.byte	W12
	.byte		        Gn4 , v076
	.byte	W12
/* 022   ----------------------------------------
 */	.byte		N64   , Gn4 , v092
	.byte	W68
	.byte	W01
	.byte		N03   , Fs4 , v100
	.byte	W03
	.byte		N09   , Gn4 , v096
	.byte	W11
	.byte		N01   , Fn4 , v116
	.byte	W01
	.byte		N30   , Fs4 , v068
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
 */	.byte	W72
	.byte		N24   , Dn4 , v104
	.byte	W24
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_14_008
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_14_009
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_14_010
/* 031   ----------------------------------------
 */	.byte	W56
	.byte		EOT   , Gn3 
	.byte	W16
	.byte		N24   , Bn3 , v100
	.byte	W24
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_14_012
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_ice_paradise__act_1_14_013
/* 034   ----------------------------------------
 */	.byte	W02
	.byte		TIE   , Cn4 , v096
	.byte	W92
	.byte	W02
/* 035   ----------------------------------------
 */	.byte		VOICE , 1
	.byte		VOL   , 89*mus_ice_paradise__act_1_mvl/mxv
	.byte	W52
	.byte		EOT   
	.byte	W44
/* 036   ----------------------------------------
 */	.byte		N80   , En3 , v076
	.byte	W84
	.byte		N05   , Fs3 
	.byte	W06
	.byte		        En3 , v084
	.byte	W06
/* 037   ----------------------------------------
 */	.byte		N88   , Ds3 , v092
	.byte	W96
/* 038   ----------------------------------------
 */	.byte		N92   , Dn3 , v080
	.byte	W96
/* 039   ----------------------------------------
 */	.byte		N24   , Bn2 , v048
	.byte	W30
	.byte		N17   , En3 , v080
	.byte	W18
	.byte		N23   , Fs3 , v076
	.byte	W24
	.byte		        Gn3 , v088
	.byte	W24
/* 040   ----------------------------------------
 */	.byte		N32   , Cn4 
	.byte	W36
	.byte		N44   , An3 , v080
	.byte	W48
	.byte		N11   , Cn4 
	.byte	W12
/* 041   ----------------------------------------
 */	.byte		N32   , As3 , v088
	.byte	W36
	.byte		N52   , Fn3 
	.byte	W60
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte	W96
/* 044   ----------------------------------------
 */	.byte	W96
/* 045   ----------------------------------------
 */	.byte	W96
/* 046   ----------------------------------------
 */	.byte	W96
/* 047   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_ice_paradise__act_1_14_B1
mus_ice_paradise__act_1_14_B2:
/* 048   ----------------------------------------
 */	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_ice_paradise__act_1):
	.byte	14	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_ice_paradise__act_1_pri	/* Priority */
	.byte	mus_ice_paradise__act_1_rev	/* Reverb */

mAlignWord
	mPtr	mus_ice_paradise__act_1_grp

	mPtr	mus_ice_paradise__act_1_1
	mPtr	mus_ice_paradise__act_1_2
	mPtr	mus_ice_paradise__act_1_3
	mPtr	mus_ice_paradise__act_1_4
	mPtr	mus_ice_paradise__act_1_5
	mPtr	mus_ice_paradise__act_1_6
	mPtr	mus_ice_paradise__act_1_7
	mPtr	mus_ice_paradise__act_1_8
	mPtr	mus_ice_paradise__act_1_9
	mPtr	mus_ice_paradise__act_1_10
	mPtr	mus_ice_paradise__act_1_11
	mPtr	mus_ice_paradise__act_1_12
	mPtr	mus_ice_paradise__act_1_13
	mPtr	mus_ice_paradise__act_1_14

	.end
