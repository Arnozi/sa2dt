	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_staff_credits_grp, voicegroup022
	.equ	mus_staff_credits_pri, 0
	.equ	mus_staff_credits_rev, reverb_set+0
	.equ	mus_staff_credits_mvl, 98
	.equ	mus_staff_credits_key, 0
	.equ	mus_staff_credits_tbs, 1
	.equ	mus_staff_credits_exg, 1
	.equ	mus_staff_credits_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_staff_credits)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

mus_staff_credits_1:
	.byte	KEYSH , mus_staff_credits_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 144*mus_staff_credits_tbs/2
	.byte		VOICE , 68
	.byte		VOL   , 112*mus_staff_credits_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
@ 001   ----------------------------------------
	.byte	W48
@ 002   ----------------------------------------
mus_staff_credits_1_002:
	.byte		N06   , En2 , v120
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte		        En2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
@ 004   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_002
@ 005   ----------------------------------------
	.byte		N06   , En2 , v120
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
@ 006   ----------------------------------------
mus_staff_credits_1_006:
	.byte		N06   , Gn2 , v120
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
	.byte		        Gn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_006
@ 009   ----------------------------------------
	.byte		N18   , Gn2 , v120
	.byte	W18
	.byte		N15   , Gs2 
	.byte	W18
	.byte		N18   , An2 
	.byte	W18
	.byte		N15   , As2 
	.byte	W18
	.byte		N72   , Bn2 
	.byte	W24
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	TEMPO , 144*mus_staff_credits_tbs/2
	.byte		N12   , En2 
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N15   
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 012   ----------------------------------------
	.byte	TEMPO , 142*mus_staff_credits_tbs/2
	.byte		N12   , En2 
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N15   
	.byte	W12
	.byte	TEMPO , 142*mus_staff_credits_tbs/2
	.byte	W06
	.byte		N12   
	.byte	W18
	.byte		N06   
	.byte	W12
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
@ 013   ----------------------------------------
	.byte	TEMPO , 140*mus_staff_credits_tbs/2
	.byte		N12   , En2 
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N15   
	.byte	W12
	.byte	TEMPO , 140*mus_staff_credits_tbs/2
	.byte	W06
	.byte		N12   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 014   ----------------------------------------
	.byte		N12   , En2 
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N15   
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		N06   
	.byte	W12
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
@ 015   ----------------------------------------
mus_staff_credits_1_015:
	.byte		N12   , En2 , v120
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N15   
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte	PEND
@ 016   ----------------------------------------
mus_staff_credits_1_016:
	.byte		N12   , Dn2 , v120
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N15   
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		N06   
	.byte	W12
	.byte		        Cn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte	PEND
@ 017   ----------------------------------------
mus_staff_credits_1_017:
	.byte		N12   , Cs2 , v120
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N15   
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte	PEND
@ 018   ----------------------------------------
mus_staff_credits_1_018:
	.byte		N12   , Bn1 , v120
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N15   
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		N06   
	.byte	W12
	.byte		        An1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte	PEND
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_015
@ 020   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_016
@ 021   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_017
@ 022   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_018
@ 023   ----------------------------------------
	.byte		N12   , An2 , v120
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N15   
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        En3 
	.byte	W06
@ 024   ----------------------------------------
	.byte		N12   , An2 
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N15   
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 025   ----------------------------------------
	.byte		N12   , Gs2 
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N15   
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
@ 026   ----------------------------------------
	.byte		N12   , Cs3 
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N15   
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		N06   
	.byte	W12
	.byte		        Bn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
@ 027   ----------------------------------------
	.byte		N12   , Dn3 
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N15   
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
@ 028   ----------------------------------------
	.byte		N12   , Cs3 
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N15   
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 029   ----------------------------------------
	.byte		N12   , Bn2 
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N15   
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
@ 030   ----------------------------------------
	.byte		N12   , Bn2 
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N15   
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		N06   
	.byte	W12
	.byte		        An2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
@ 031   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_015
@ 032   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_016
@ 033   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_017
@ 034   ----------------------------------------
mus_staff_credits_1_034:
	.byte		N12   , Cn2 , v120
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N15   
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		N06   
	.byte	W12
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte	PEND
@ 035   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_015
@ 036   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_016
@ 037   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_017
@ 038   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_018
@ 039   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_015
@ 040   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_016
@ 041   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_017
@ 042   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_034
@ 043   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_015
@ 044   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_016
@ 045   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_017
@ 046   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_018
@ 047   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_015
@ 048   ----------------------------------------
mus_staff_credits_1_048:
	.byte		N12   , Dn2 , v120
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N15   
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte	PEND
@ 049   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_015
@ 050   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_048
@ 051   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_015
@ 052   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_048
@ 053   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_015
@ 054   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_048
@ 055   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_015
@ 056   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_048
@ 057   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_015
@ 058   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_048
@ 059   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_015
@ 060   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_048
@ 061   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_015
@ 062   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_048
@ 063   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_1_015
@ 064   ----------------------------------------
	.byte		N12   , Dn2 , v124
	.byte	W18
	.byte		N06   , Dn2 , v112
	.byte	W18
	.byte		N15   , Dn2 , v104
	.byte	W18
	.byte		N12   , Dn2 , v092
	.byte	W18
	.byte		N06   , Dn2 , v080
	.byte	W12
	.byte		        Dn2 , v076
	.byte	W06
	.byte		        Ds2 , v072
	.byte	W06
@ 065   ----------------------------------------
	.byte		N12   , En2 , v068
	.byte	W18
	.byte		N06   , En2 , v056
	.byte	W18
	.byte		N15   , En2 , v048
	.byte	W18
	.byte		N12   , En2 , v036
	.byte	W18
	.byte		N06   , En2 , v024
	.byte	W06
	.byte		        Bn1 , v020
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 , v016
	.byte	W06
@ 066   ----------------------------------------
	.byte		N12   , Dn2 , v012
	.byte	W12
	.byte	FINE

@ **************** Track 2 (Midi-Chn.2) ****************

mus_staff_credits_2:
	.byte	KEYSH , mus_staff_credits_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_staff_credits_mvl/mxv
	.byte	W03
@ 001   ----------------------------------------
	.byte		N04   , Cs1 , v120
	.byte		N06   , Ds2 
	.byte	W04
	.byte		N04   , Cs1 , v112
	.byte	W04
	.byte		        Cs1 , v120
	.byte	W04
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N12   , Cs1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 002   ----------------------------------------
mus_staff_credits_2_002:
	.byte		N12   , Ds2 , v120
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_staff_credits_2_003:
	.byte		N12   , Ds2 , v120
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_002
@ 005   ----------------------------------------
mus_staff_credits_2_005:
	.byte		N12   , Ds2 , v120
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_002
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_003
@ 008   ----------------------------------------
	.byte		N12   , Ds2 , v120
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N06   , An1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
@ 009   ----------------------------------------
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W18
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W24
@ 010   ----------------------------------------
	.byte		N04   , Cs1 
	.byte		N06   , Ds2 
	.byte	W04
	.byte		N04   , Cs1 , v112
	.byte	W04
	.byte		        Cs1 , v120
	.byte	W04
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N12   , Cs1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 011   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_002
@ 012   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_003
@ 013   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_002
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_005
@ 015   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_002
@ 016   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_003
@ 017   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_002
@ 018   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_005
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_002
@ 020   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_003
@ 021   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_002
@ 022   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_005
@ 023   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_002
@ 024   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_003
@ 025   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_002
@ 026   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_005
@ 027   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_002
@ 028   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_003
@ 029   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_002
@ 030   ----------------------------------------
	.byte		N12   , Ds2 , v120
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N04   
	.byte	W04
	.byte		        Cs1 , v112
	.byte	W04
	.byte		        Cs1 , v120
	.byte	W04
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 031   ----------------------------------------
mus_staff_credits_2_031:
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
@ 032   ----------------------------------------
mus_staff_credits_2_032:
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
@ 033   ----------------------------------------
mus_staff_credits_2_033:
	.byte		N24   , Ds2 , v120
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 034   ----------------------------------------
mus_staff_credits_2_034:
	.byte		N24   , Ds2 , v120
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
	.byte	PEND
@ 035   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_031
@ 036   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_032
@ 037   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_033
@ 038   ----------------------------------------
mus_staff_credits_2_038:
	.byte		N24   , Ds2 , v120
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
	.byte	PEND
@ 039   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_031
@ 040   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_032
@ 041   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_033
@ 042   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_034
@ 043   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_031
@ 044   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_032
@ 045   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_033
@ 046   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_038
@ 047   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_002
@ 048   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_003
@ 049   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_002
@ 050   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_005
@ 051   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_002
@ 052   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_003
@ 053   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_002
@ 054   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_005
@ 055   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_002
@ 056   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_003
@ 057   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_002
@ 058   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_005
@ 059   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_002
@ 060   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_003
@ 061   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_002
@ 062   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_005
@ 063   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_2_002
@ 064   ----------------------------------------
	.byte		N12   , Ds2 , v120
	.byte	W12
	.byte		        Ds2 , v112
	.byte	W12
	.byte		        Cs1 , v104
	.byte	W12
	.byte		N06   , Ds2 , v100
	.byte	W06
	.byte		        Cs1 , v096
	.byte	W06
	.byte		        Ds2 , v092
	.byte	W06
	.byte		        Cs1 , v088
	.byte	W06
	.byte		N12   , Ds2 , v084
	.byte	W12
	.byte		        Cs1 , v080
	.byte	W12
	.byte		N06   , Ds2 , v072
	.byte	W06
	.byte		        Cs1 , v068
	.byte	W06
@ 065   ----------------------------------------
	.byte		N12   , Ds2 , v064
	.byte	W12
	.byte		        Ds2 , v056
	.byte	W12
	.byte		        Cs1 , v052
	.byte	W12
	.byte		N06   , Ds2 , v044
	.byte	W06
	.byte		        Cs1 , v040
	.byte	W06
	.byte		        Ds2 , v036
	.byte	W06
	.byte		        Cs1 , v032
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        Cs1 , v024
	.byte	W12
	.byte		        Ds2 , v016
	.byte	W12
@ 066   ----------------------------------------
	.byte		        Ds2 , v008
	.byte	W12
	.byte	FINE

@ **************** Track 3 (Midi-Chn.3) ****************

mus_staff_credits_3:
	.byte	KEYSH , mus_staff_credits_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 127
	.byte		VOL   , 122*mus_staff_credits_mvl/mxv
	.byte	W03
@ 001   ----------------------------------------
	.byte	W48
@ 002   ----------------------------------------
	.byte		N36   , Cs2 , v120
	.byte	W06
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
@ 003   ----------------------------------------
mus_staff_credits_3_003:
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
	.byte		        Ds1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte	PEND
@ 004   ----------------------------------------
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
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
@ 005   ----------------------------------------
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
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Ds1 , v052
	.byte	W06
@ 006   ----------------------------------------
	.byte		N36   , Gn2 , v120
	.byte	W06
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
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_003
@ 008   ----------------------------------------
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
	.byte	W30
@ 009   ----------------------------------------
	.byte		N24   , Gn2 , v120
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		N24   , Fs2 , v120
	.byte	W12
	.byte		N06   , Dn1 , v052
	.byte	W06
	.byte		N24   , Cs2 , v120
	.byte	W12
	.byte		N06   , Ds1 , v072
	.byte	W06
	.byte		N24   , Gn2 , v120
	.byte	W12
	.byte		N06   , Dn1 , v052
	.byte	W06
	.byte		N24   , Cs2 , v120
	.byte	W24
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
mus_staff_credits_3_011:
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
@ 012   ----------------------------------------
mus_staff_credits_3_012:
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
@ 013   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_012
@ 014   ----------------------------------------
mus_staff_credits_3_014:
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
@ 015   ----------------------------------------
mus_staff_credits_3_015:
	.byte		N24   , Fs2 , v127
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
@ 016   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_012
@ 017   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_012
@ 018   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_014
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_011
@ 020   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_012
@ 021   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_012
@ 022   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_014
@ 023   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_015
@ 024   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_012
@ 025   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_012
@ 026   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_014
@ 027   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_011
@ 028   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_012
@ 029   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_012
@ 030   ----------------------------------------
	.byte		N24   , Fs2 , v127
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
@ 031   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_011
@ 032   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_012
@ 033   ----------------------------------------
mus_staff_credits_3_033:
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
	.byte		        Ds1 , v072
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
@ 034   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_012
@ 035   ----------------------------------------
mus_staff_credits_3_035:
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
@ 036   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_012
@ 037   ----------------------------------------
mus_staff_credits_3_037:
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
	.byte		        Ds1 , v068
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
@ 038   ----------------------------------------
mus_staff_credits_3_038:
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
	.byte	W54
	.byte	PEND
@ 039   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_011
@ 040   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_012
@ 041   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_033
@ 042   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_012
@ 043   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_035
@ 044   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_012
@ 045   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_037
@ 046   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_038
@ 047   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_011
@ 048   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_012
@ 049   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_012
@ 050   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_014
@ 051   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_015
@ 052   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_012
@ 053   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_012
@ 054   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_014
@ 055   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_011
@ 056   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_012
@ 057   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_012
@ 058   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_014
@ 059   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_015
@ 060   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_012
@ 061   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_012
@ 062   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_014
@ 063   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_3_015
@ 064   ----------------------------------------
	.byte		N12   , Ds1 , v064
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds1 , v056
	.byte	W12
	.byte		N06   , Dn1 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds1 , v048
	.byte	W12
	.byte		N06   , Dn1 , v044
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds1 , v040
	.byte	W12
	.byte		N06   , Dn1 , v036
	.byte	W06
	.byte		N06   
	.byte	W06
@ 065   ----------------------------------------
	.byte		N12   , Ds1 , v032
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N06   , Dn1 , v024
	.byte	W06
	.byte		        Dn1 , v020
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N06   , Dn1 , v016
	.byte	W06
	.byte		        Dn1 , v012
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N06   , Dn1 , v008
	.byte	W06
	.byte		        Dn1 , v004
	.byte	W06
@ 066   ----------------------------------------
	.byte		N11   , Ds1 
	.byte	W11
	.byte	FINE

@ **************** Track 4 (Midi-Chn.4) ****************

mus_staff_credits_4:
	.byte	KEYSH , mus_staff_credits_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 91*mus_staff_credits_mvl/mxv
	.byte		PAN   , c_v-30
	.byte		MOD   , 2
	.byte	W03
@ 001   ----------------------------------------
	.byte	W48
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte		VOL   , 72*mus_staff_credits_mvl/mxv
	.byte	W24
	.byte		N04   , Bn2 , v080
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Gs5 
	.byte	W04
	.byte		        Bn5 
	.byte	W04
	.byte		        Gs5 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte		VOL   , 72*mus_staff_credits_mvl/mxv
	.byte	W24
	.byte		N04   , Dn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Bn5 
	.byte	W04
	.byte		        Dn6 
	.byte	W04
	.byte		        Bn5 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
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
	.byte		        Cs3 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Cs2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Cs2 
	.byte	W04
	.byte		        An1 
	.byte	W04
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
mus_staff_credits_4_015:
	.byte		N18   , Bn2 , v072
	.byte	W18
	.byte		        Cs3 
	.byte	W18
	.byte		        Ds3 
	.byte	W18
	.byte		        En3 
	.byte	W18
	.byte		N06   , Ds3 
	.byte	W12
	.byte		N12   , Cs3 
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
mus_staff_credits_4_016:
	.byte		N18   , An2 , v072
	.byte	W18
	.byte		        Bn2 
	.byte	W18
	.byte		        Cs3 
	.byte	W18
	.byte		        Dn3 
	.byte	W18
	.byte		N06   , Cs3 
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
mus_staff_credits_4_017:
	.byte		N18   , Cs3 , v072
	.byte	W18
	.byte		        Ds3 
	.byte	W18
	.byte		        En3 
	.byte	W18
	.byte		        Fs3 
	.byte	W18
	.byte		N06   , En3 
	.byte	W12
	.byte		N12   , Ds3 
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_4_015
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_4_015
@ 020   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_4_016
@ 021   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_4_017
@ 022   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_4_015
@ 023   ----------------------------------------
	.byte		N18   , En2 , v072
	.byte	W18
	.byte		        Fs2 
	.byte	W18
	.byte		        Gs2 
	.byte	W18
	.byte		        An2 
	.byte	W18
	.byte		N06   , Gs2 
	.byte	W12
	.byte		N12   , Fs2 
	.byte	W12
@ 024   ----------------------------------------
	.byte		N18   , Ds2 
	.byte	W18
	.byte		        En2 
	.byte	W18
	.byte		        Fs2 
	.byte	W18
	.byte		        Gs2 
	.byte	W18
	.byte		N06   , Fs2 
	.byte	W12
	.byte		N12   , En2 
	.byte	W12
@ 025   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_4_015
@ 026   ----------------------------------------
	.byte		N18   , Gs3 , v072
	.byte	W18
	.byte		        Fs3 
	.byte	W18
	.byte		        Fn3 
	.byte	W18
	.byte		        Ds3 
	.byte	W18
	.byte		N06   , Cs3 
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
@ 027   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_4_016
@ 028   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_4_016
@ 029   ----------------------------------------
	.byte		N18   , Fs2 , v072
	.byte	W18
	.byte		        Gs2 
	.byte	W18
	.byte		        An2 
	.byte	W18
	.byte		        Bn2 
	.byte	W18
	.byte		N06   , An2 
	.byte	W12
	.byte		N12   , Gs2 
	.byte	W12
@ 030   ----------------------------------------
	.byte		N18   , Cs3 
	.byte	W18
	.byte		        Ds3 
	.byte	W18
	.byte		        En3 
	.byte	W18
	.byte		        Ds3 
	.byte	W18
	.byte		N06   , En3 
	.byte	W12
	.byte		N12   , Fs3 
	.byte	W12
@ 031   ----------------------------------------
mus_staff_credits_4_031:
	.byte		N04   , En5 , v080
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte	PEND
@ 032   ----------------------------------------
mus_staff_credits_4_032:
	.byte		N04   , An1 , v080
	.byte	W04
	.byte		        Dn2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Dn2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte	PEND
@ 033   ----------------------------------------
mus_staff_credits_4_033:
	.byte		N04   , En5 , v080
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
	.byte		        Cs3 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte	PEND
@ 034   ----------------------------------------
mus_staff_credits_4_034:
	.byte		N04   , Cn2 , v080
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Cn3 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Cn3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Cn3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte	PEND
@ 035   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_4_031
@ 036   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_4_032
@ 037   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_4_033
@ 038   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_4_034
@ 039   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_4_031
@ 040   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_4_032
@ 041   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_4_033
@ 042   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_4_034
@ 043   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_4_031
@ 044   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_4_032
@ 045   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_4_033
@ 046   ----------------------------------------
	.byte		N04   , Ds2 , v080
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W05
	.byte		N01   , As3 , v120
	.byte	W01
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 052   ----------------------------------------
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N11   , Gs2 
	.byte	W11
	.byte		N01   , Bn2 
	.byte	W01
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
@ 053   ----------------------------------------
	.byte		        Fs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N11   , Ds3 
	.byte	W11
	.byte		N01   , Fn3 
	.byte	W01
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N05   , Bn3 
	.byte	W05
	.byte		N01   , Cn4 
	.byte	W01
@ 054   ----------------------------------------
	.byte		N04   , Cs4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
@ 055   ----------------------------------------
	.byte		        En2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Fn1 
	.byte	W11
	.byte		N01   
	.byte	W01
	.byte		N06   , Fs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        As1 
	.byte	W11
	.byte		N01   
	.byte	W01
	.byte		N06   , Bn1 
	.byte	W06
@ 056   ----------------------------------------
	.byte	W06
	.byte		        Cs2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W11
	.byte		N01   
	.byte	W01
	.byte		N06   , En2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		N05   , An2 
	.byte	W05
	.byte		N01   , As2 
	.byte	W01
@ 057   ----------------------------------------
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        An3 
	.byte	W06
@ 058   ----------------------------------------
	.byte		N04   , Bn3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Cs3 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Gs2 
	.byte	W04
@ 059   ----------------------------------------
	.byte		N01   , Gn2 
	.byte	W01
	.byte		N32   , Gs2 
	.byte	W32
	.byte	W03
	.byte		N24   , Fs2 
	.byte	W24
	.byte		N04   , Gs2 
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		N72   , Dn2 
	.byte	W24
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte		N01   , Gn4 , v080
	.byte	W01
	.byte		N18   , Gs4 
	.byte	W18
	.byte		        An4 
	.byte	W18
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N18   , An4 
	.byte	W18
	.byte		        Gs4 
	.byte	W18
	.byte		N11   , An4 
	.byte	W11
@ 064   ----------------------------------------
	.byte		N01   , Gs4 , v068
	.byte	W01
	.byte		N18   , An4 
	.byte	W18
	.byte		        Gs4 , v060
	.byte	W18
	.byte		N12   , An4 , v052
	.byte	W12
	.byte		N18   , Fs4 , v044
	.byte	W18
	.byte		        Gs4 , v036
	.byte	W18
	.byte		N12   , An4 , v028
	.byte	W11
@ 065   ----------------------------------------
	.byte	W24
	.byte		N01   , As4 , v008
	.byte	W01
	.byte		N72   , Bn4 
	.byte	W68
	.byte	W03
@ 066   ----------------------------------------
	.byte	W01
	.byte	FINE

@ **************** Track 5 (Midi-Chn.5) ****************

mus_staff_credits_5:
	.byte	KEYSH , mus_staff_credits_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 12
	.byte		VOL   , 91*mus_staff_credits_mvl/mxv
	.byte		PAN   , c_v+30
	.byte		MOD   , 0
	.byte	W03
@ 001   ----------------------------------------
	.byte	W48
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte		VOL   , 72*mus_staff_credits_mvl/mxv
	.byte	W24
	.byte		N04   , En2 , v080
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte		VOL   , 72*mus_staff_credits_mvl/mxv
	.byte	W24
	.byte		N04   , Gn2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
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
	.byte		        Cs3 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        En2 
	.byte	W04
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
mus_staff_credits_5_015:
	.byte		N18   , Gs2 , v072
	.byte	W18
	.byte		        An2 
	.byte	W18
	.byte		        Bn2 
	.byte	W18
	.byte		        Cs3 
	.byte	W18
	.byte		N06   , Bn2 
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
mus_staff_credits_5_016:
	.byte		N18   , Fs2 , v072
	.byte	W18
	.byte		        Gs2 
	.byte	W18
	.byte		        An2 
	.byte	W18
	.byte		        Bn2 
	.byte	W18
	.byte		N06   , An2 
	.byte	W12
	.byte		N12   , Gs2 
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
mus_staff_credits_5_017:
	.byte		N18   , An2 , v072
	.byte	W18
	.byte		        Bn2 
	.byte	W18
	.byte		        Cs3 
	.byte	W18
	.byte		        Ds3 
	.byte	W18
	.byte		N06   , Cs3 
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_5_015
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_5_015
@ 020   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_5_016
@ 021   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_5_017
@ 022   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_5_015
@ 023   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_5_015
@ 024   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_5_016
@ 025   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_5_015
@ 026   ----------------------------------------
	.byte		N18   , Fs3 , v072
	.byte	W18
	.byte		        Ds3 
	.byte	W18
	.byte		        Cs3 
	.byte	W18
	.byte		        Cn3 
	.byte	W18
	.byte		N06   , As2 
	.byte	W12
	.byte		N12   , Gs2 
	.byte	W12
@ 027   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_5_016
@ 028   ----------------------------------------
	.byte		N18   , En2 , v072
	.byte	W18
	.byte		        Gs2 
	.byte	W18
	.byte		        An2 
	.byte	W18
	.byte		        Bn2 
	.byte	W18
	.byte		N06   , An2 
	.byte	W12
	.byte		N12   , Fs2 
	.byte	W12
@ 029   ----------------------------------------
	.byte		N18   , Ds2 
	.byte	W18
	.byte		        En2 
	.byte	W18
	.byte		        Fs2 
	.byte	W18
	.byte		        Gs2 
	.byte	W18
	.byte		N06   , Fs2 
	.byte	W12
	.byte		N12   , En2 
	.byte	W12
@ 030   ----------------------------------------
	.byte		N18   , An2 
	.byte	W18
	.byte		        Bn2 
	.byte	W18
	.byte		        Cs3 
	.byte	W18
	.byte		        Bn2 
	.byte	W18
	.byte		N06   , Cs3 
	.byte	W12
	.byte		N12   , Ds3 
	.byte	W12
@ 031   ----------------------------------------
mus_staff_credits_5_031:
	.byte		N04   , Bn4 , v080
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Bn1 
	.byte	W04
	.byte	PEND
@ 032   ----------------------------------------
mus_staff_credits_5_032:
	.byte		N04   , Dn2 , v080
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte	PEND
@ 033   ----------------------------------------
mus_staff_credits_5_033:
	.byte		N04   , Cs5 , v080
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
	.byte		        Cs3 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Cs2 
	.byte	W04
	.byte	PEND
@ 034   ----------------------------------------
mus_staff_credits_5_034:
	.byte		N04   , An1 , v080
	.byte	W04
	.byte		        Cn2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        Cn2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        En2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Cn3 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Cn3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Cn3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Cn4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte	PEND
@ 035   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_5_031
@ 036   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_5_032
@ 037   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_5_033
@ 038   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_5_034
@ 039   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_5_031
@ 040   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_5_032
@ 041   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_5_033
@ 042   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_5_034
@ 043   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_5_031
@ 044   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_5_032
@ 045   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_5_033
@ 046   ----------------------------------------
	.byte		N04   , Bn1 , v080
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Ds2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W05
	.byte		N01   , Gn4 , v120
	.byte	W01
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		N12   , En4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N06   , En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 052   ----------------------------------------
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N11   , En3 
	.byte	W11
	.byte		N01   , Gs3 
	.byte	W01
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
@ 053   ----------------------------------------
	.byte		        Ds3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N11   , Bn3 
	.byte	W11
	.byte		N01   , Dn4 
	.byte	W01
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		N05   , Gs4 
	.byte	W05
	.byte		N01   
	.byte	W01
@ 054   ----------------------------------------
	.byte		N04   , An4 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		N06   , En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
@ 055   ----------------------------------------
	.byte		        En3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fn2 
	.byte	W11
	.byte		N01   
	.byte	W01
	.byte		N06   , Fs2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        As2 
	.byte	W11
	.byte		N01   
	.byte	W01
	.byte		N06   , Bn2 
	.byte	W06
@ 056   ----------------------------------------
	.byte	W06
	.byte		        Cs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W11
	.byte		N01   
	.byte	W01
	.byte		N06   , En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N05   , An3 
	.byte	W05
	.byte		N01   , As3 
	.byte	W01
@ 057   ----------------------------------------
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        En4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        An4 
	.byte	W06
@ 058   ----------------------------------------
	.byte		N04   , Bn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
@ 059   ----------------------------------------
	.byte		N01   , Ds3 
	.byte	W01
	.byte		N32   , En3 
	.byte	W32
	.byte	W03
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N04   , En3 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		N72   , Bn2 
	.byte	W24
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte		N01   , Ds4 , v072
	.byte	W01
	.byte		N18   , En4 
	.byte	W18
	.byte		        Fs4 
	.byte	W18
	.byte		N12   , En4 
	.byte	W12
	.byte		N18   , Fs4 
	.byte	W18
	.byte		        En4 
	.byte	W18
	.byte		N11   , Fs4 
	.byte	W11
@ 064   ----------------------------------------
	.byte		N01   , Fn4 , v064
	.byte	W01
	.byte		N18   , Fs4 
	.byte	W18
	.byte		        En4 , v056
	.byte	W18
	.byte		N12   , Fs4 , v048
	.byte	W12
	.byte		N18   , Dn4 , v040
	.byte	W18
	.byte		        En4 , v032
	.byte	W18
	.byte		N12   , Fs4 , v024
	.byte	W11
@ 065   ----------------------------------------
	.byte	W24
	.byte		N01   , Gn4 , v004
	.byte	W01
	.byte		N72   , Gs4 
	.byte	W68
	.byte	W03
@ 066   ----------------------------------------
	.byte	W01
	.byte	FINE

@ **************** Track 6 (Midi-Chn.6) ****************

mus_staff_credits_6:
	.byte	KEYSH , mus_staff_credits_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 125
	.byte		PAN   , c_v+0
	.byte		VOL   , 122*mus_staff_credits_mvl/mxv
	.byte	W03
@ 001   ----------------------------------------
	.byte	W48
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte		N84   , Cn4 , v112
	.byte	W92
	.byte	W02
	.byte		VOICE , 124
	.byte	W02
@ 024   ----------------------------------------
	.byte		N84   , Bn3 , v100
	.byte	W96
@ 025   ----------------------------------------
	.byte		N84   
	.byte	W92
	.byte	W02
	.byte		VOICE , 123
	.byte	W02
@ 026   ----------------------------------------
	.byte		N72   , En3 
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte		VOICE , 124
	.byte	W96
@ 031   ----------------------------------------
	.byte	W18
	.byte		N06   , En3 , v112
	.byte	W18
	.byte		N48   
	.byte	W54
	.byte		VOICE , 123
	.byte	W06
@ 032   ----------------------------------------
mus_staff_credits_6_032:
	.byte		N18   , Fn3 , v112
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N48   
	.byte	W54
	.byte		VOICE , 125
	.byte	W06
	.byte	PEND
@ 033   ----------------------------------------
mus_staff_credits_6_033:
	.byte		N18   , Fn3 , v112
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N48   
	.byte	W54
	.byte		VOICE , 126
	.byte	W06
	.byte	PEND
@ 034   ----------------------------------------
	.byte		N18   , Cn4 
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N44   
	.byte	W54
	.byte		VOICE , 124
	.byte	W06
@ 035   ----------------------------------------
mus_staff_credits_6_035:
	.byte		N18   , En3 , v100
	.byte	W18
	.byte		N06   , En3 , v112
	.byte	W18
	.byte		N48   
	.byte	W60
	.byte	PEND
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte		N18   , En3 , v100
	.byte	W18
	.byte		N06   , En3 , v112
	.byte	W18
	.byte		N48   
	.byte	W54
	.byte		VOICE , 123
	.byte	W06
@ 040   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_6_032
@ 041   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_6_033
@ 042   ----------------------------------------
	.byte		N18   , Cn4 , v112
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N48   
	.byte	W54
	.byte		VOICE , 124
	.byte	W06
@ 043   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_6_035
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
mus_staff_credits_6_047:
	.byte	W06
	.byte		N06   , En3 , v100
	.byte	W18
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		N03   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N02   , En3 , v080
	.byte	W06
	.byte	PEND
@ 048   ----------------------------------------
mus_staff_credits_6_048:
	.byte	W06
	.byte		N06   , Dn3 , v100
	.byte	W18
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		N03   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N05   , Ds3 
	.byte	W06
	.byte	PEND
@ 049   ----------------------------------------
mus_staff_credits_6_049:
	.byte	W06
	.byte		N06   , En3 , v100
	.byte	W18
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W18
	.byte		N03   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N02   , Ds3 , v080
	.byte	W06
	.byte	PEND
@ 050   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_6_048
@ 051   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_6_047
@ 052   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_6_048
@ 053   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_6_049
@ 054   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_6_048
@ 055   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_6_047
@ 056   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_6_048
@ 057   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_6_049
@ 058   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_6_048
@ 059   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_6_047
@ 060   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_6_048
@ 061   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_6_049
@ 062   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_6_048
@ 063   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_6_047
@ 064   ----------------------------------------
	.byte	W06
	.byte		N06   , Dn3 , v104
	.byte	W18
	.byte		        Dn3 , v096
	.byte	W24
	.byte		        Dn3 , v080
	.byte	W18
	.byte		N03   , Dn3 , v072
	.byte	W18
	.byte		N06   , Dn3 , v060
	.byte	W06
	.byte		N05   , Ds3 , v056
	.byte	W06
@ 065   ----------------------------------------
	.byte	W06
	.byte		N06   , En3 , v048
	.byte	W18
	.byte		        En3 , v040
	.byte	W24
	.byte		        En3 , v024
	.byte	W18
	.byte		N03   , En3 , v012
	.byte	W18
	.byte		N06   , En3 , v004
	.byte	W06
	.byte		N02   , Ds3 
	.byte	W02
	.byte	FINE

@ **************** Track 7 (Midi-Chn.7) ****************

mus_staff_credits_7:
	.byte	KEYSH , mus_staff_credits_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 78
	.byte		VOL   , 102*mus_staff_credits_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
@ 001   ----------------------------------------
	.byte	W48
@ 002   ----------------------------------------
mus_staff_credits_7_002:
	.byte	W24
	.byte		N09   , An3 , v120
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_staff_credits_7_003:
	.byte		N12   , An3 , v120
	.byte	W18
	.byte		N60   , Bn3 
	.byte	W78
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_7_002
@ 005   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_7_003
@ 006   ----------------------------------------
mus_staff_credits_7_006:
	.byte	W24
	.byte		N09   , Cn4 , v120
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
	.byte		N12   
	.byte	W18
	.byte		N60   , Dn4 
	.byte	W78
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_7_006
@ 009   ----------------------------------------
	.byte		N18   , Cn4 , v120
	.byte	W18
	.byte		        Cs4 
	.byte	W18
	.byte		        Dn4 
	.byte	W18
	.byte		        Ds4 
	.byte	W18
	.byte		N72   , En4 
	.byte	W24
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte		VOL   , 72*mus_staff_credits_mvl/mxv
	.byte	W96
@ 064   ----------------------------------------
	.byte	W84
	.byte		N06   , An3 , v068
	.byte	W06
	.byte		N05   , As3 , v064
	.byte	W06
@ 065   ----------------------------------------
	.byte	W06
	.byte		N06   , Bn3 , v056
	.byte	W18
	.byte		        Bn3 , v044
	.byte	W24
	.byte		        Bn3 , v032
	.byte	W18
	.byte		N03   , Bn3 , v020
	.byte	W18
	.byte		N06   , Bn3 , v008
	.byte	W06
	.byte		N02   , As3 , v004
	.byte	W02
	.byte	FINE

@ **************** Track 8 (Midi-Chn.8) ****************

mus_staff_credits_8:
	.byte	KEYSH , mus_staff_credits_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 120
	.byte		VOL   , 81*mus_staff_credits_mvl/mxv
	.byte		BENDR , 4
	.byte		PAN   , c_v+0
	.byte	W03
@ 001   ----------------------------------------
	.byte	W48
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W76
	.byte	W01
	.byte		N02   , As2 , v100
	.byte	W01
	.byte		N06   , Bn2 , v112
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
@ 015   ----------------------------------------
mus_staff_credits_8_015:
	.byte		N36   , Gs3 , v112
	.byte	W36
	.byte		N06   , An3 
	.byte	W06
	.byte		N18   , Bn3 
	.byte	W54
	.byte	PEND
@ 016   ----------------------------------------
	.byte	W11
	.byte		N03   , Gs3 , v100
	.byte	W01
	.byte		N06   , An3 , v112
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        En3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        En3 
	.byte	W11
	.byte		N02   , Gs3 , v100
	.byte	W01
@ 017   ----------------------------------------
	.byte		N24   , An3 , v112
	.byte	W24
	.byte		N23   , Gs3 
	.byte	W23
	.byte		N02   , Ds3 , v100
	.byte	W01
	.byte		N24   , En3 , v112
	.byte	W24
	.byte		        Fs3 
	.byte	W24
@ 018   ----------------------------------------
	.byte		N04   , Cs3 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Cs3 
	.byte	W04
	.byte		N36   , Bn2 
	.byte	W64
	.byte	W01
	.byte		N02   , As2 , v100
	.byte	W01
	.byte		N06   , Bn2 , v112
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_8_015
@ 020   ----------------------------------------
	.byte	W11
	.byte		N03   , Gs3 , v100
	.byte	W01
	.byte		N06   , An3 , v112
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        En3 
	.byte	W11
	.byte		N02   , Gs3 , v100
	.byte	W01
	.byte		N06   , An3 , v112
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 021   ----------------------------------------
	.byte		N04   , Ds4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Ds4 
	.byte	W04
	.byte		N06   , Bn3 
	.byte	W06
	.byte		N05   , Cs4 
	.byte	W05
	.byte		N02   , Gs3 , v100
	.byte	W01
	.byte		N24   , An3 , v112
	.byte	W30
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N05   , Gs3 
	.byte	W05
	.byte		N02   , Gs3 , v100
	.byte	W01
	.byte		N06   , An3 , v112
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
@ 022   ----------------------------------------
	.byte		N04   , Gs3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		N36   , Fs3 
	.byte	W84
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte		PAN   , c_v-30
	.byte	W96
@ 031   ----------------------------------------
	.byte		N36   , Gs2 , v092
	.byte	W36
	.byte		N60   , Gs3 
	.byte	W60
@ 032   ----------------------------------------
	.byte		TIE   , An3 
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 034   ----------------------------------------
mus_staff_credits_8_034:
	.byte		N36   , Cn4 , v092
	.byte	W36
	.byte		        Bn3 
	.byte	W36
	.byte		N12   , An3 
	.byte	W12
	.byte		TIE   , Gs3 
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 036   ----------------------------------------
mus_staff_credits_8_036:
	.byte	W11
	.byte		N02   , Gn3 , v092
	.byte	W01
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N11   
	.byte	W11
	.byte		N02   , Fn3 
	.byte	W01
	.byte		N18   , Fs3 
	.byte	W18
	.byte		        En3 
	.byte	W18
	.byte		N11   , Cs3 
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
	.byte		N24   , En3 
	.byte	W24
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W24
@ 038   ----------------------------------------
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N24   , An3 
	.byte	W24
	.byte		N11   , Bn2 
	.byte	W11
	.byte		N02   , Fn3 
	.byte	W01
	.byte		N18   , Fs3 
	.byte	W18
	.byte		        En3 
	.byte	W18
	.byte		N12   , Ds3 
	.byte	W12
@ 039   ----------------------------------------
	.byte	W36
	.byte		N60   , Gs3 
	.byte	W60
@ 040   ----------------------------------------
	.byte		TIE   , An3 
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 042   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_8_034
@ 043   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gs3 
@ 044   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_8_036
@ 045   ----------------------------------------
	.byte		N24   , An3 , v092
	.byte	W24
	.byte		N12   , En3 
	.byte	W12
	.byte		N24   , As3 
	.byte	W24
	.byte		N11   , En3 
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W24
@ 046   ----------------------------------------
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N11   , Ds3 
	.byte	W11
	.byte		N02   , Fn3 
	.byte	W01
	.byte		N18   , Fs3 
	.byte	W18
	.byte		        En3 
	.byte	W18
	.byte		N12   , Ds3 
	.byte	W12
@ 047   ----------------------------------------
	.byte		TIE   , En3 
	.byte	W24
	.byte		VOL   , 80*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        78*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        77*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        77*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        76*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        74*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        73*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        72*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        72*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        70*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        69*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        68*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        67*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        67*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        65*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        64*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        63*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        63*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        61*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        60*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        59*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        58*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        58*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        56*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        55*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        54*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        52*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        52*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        51*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        50*mus_staff_credits_mvl/mxv
	.byte	W01
@ 048   ----------------------------------------
	.byte	W02
	.byte		        48*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        48*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        47*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        46*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        45*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        43*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        43*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        42*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        41*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        39*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        38*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        38*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        37*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        35*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        34*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        33*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        33*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        32*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        30*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        29*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        29*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        28*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        26*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        25*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        24*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        24*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        23*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        21*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        20*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        19*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        19*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        17*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        16*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        15*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        15*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        13*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        12*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        11*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		EOT   
@ 049   ----------------------------------------
	.byte		VOL   , 10*mus_staff_credits_mvl/mxv
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte		        81*mus_staff_credits_mvl/mxv
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		N01   , Gn3 , v080
	.byte	W01
@ 059   ----------------------------------------
	.byte		N18   , Gs3 
	.byte	W18
	.byte		        An3 
	.byte	W18
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N18   , An3 
	.byte	W18
	.byte		        Gs3 
	.byte	W18
	.byte		N11   , An3 
	.byte	W11
	.byte		N01   , Gs3 
	.byte	W01
@ 060   ----------------------------------------
	.byte		N18   , An3 
	.byte	W18
	.byte		        Gs3 
	.byte	W18
	.byte		N12   , An3 
	.byte	W12
	.byte		N18   , Fs3 
	.byte	W18
	.byte		        Gs3 
	.byte	W18
	.byte		N12   , An3 
	.byte	W12
@ 061   ----------------------------------------
	.byte	W23
	.byte		N01   , As3 
	.byte	W01
	.byte		N72   , Bn3 
	.byte	W72
@ 062   ----------------------------------------
	.byte	W11
	.byte		N01   , As3 
	.byte	W01
	.byte		N18   , Bn3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N18   , Cs4 
	.byte	W18
	.byte		        Bn3 
	.byte	W18
	.byte		N11   
	.byte	W11
	.byte		N01   , As3 
	.byte	W01
@ 063   ----------------------------------------
	.byte		TIE   , Bn3 
	.byte	W30
	.byte		VOL   , 80*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        77*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        77*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        77*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        76*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        74*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        73*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        72*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        72*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        70*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        69*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        68*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        67*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        67*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        65*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        64*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        63*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        63*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        61*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        60*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        59*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        58*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        58*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        56*mus_staff_credits_mvl/mxv
	.byte	W02
@ 064   ----------------------------------------
	.byte	W01
	.byte		        55*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        54*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        52*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        52*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        51*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        50*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        48*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        48*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        47*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        46*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        45*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        43*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        43*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        42*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        41*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        39*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        38*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        38*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        37*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        35*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        34*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        33*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        33*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        32*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        30*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        29*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        29*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        28*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        26*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        25*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        24*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        24*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        23*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        21*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		EOT   
@ 065   ----------------------------------------
	.byte		VOL   , 20*mus_staff_credits_mvl/mxv
	.byte	FINE

@ **************** Track 9 (Midi-Chn.9) ****************

mus_staff_credits_9:
	.byte	KEYSH , mus_staff_credits_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 115
	.byte		VOL   , 91*mus_staff_credits_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		MOD   , 2
	.byte	W03
@ 001   ----------------------------------------
	.byte	W48
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W60
	.byte		N06   , Cn2 , v100
	.byte	W12
	.byte		        En2 
	.byte	W06
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N78   , Gn2 
	.byte	W06
@ 023   ----------------------------------------
	.byte	W84
	.byte		N12   , Cn3 
	.byte	W12
@ 024   ----------------------------------------
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		N12   , Fn2 
	.byte	W18
	.byte		N06   , En2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
@ 025   ----------------------------------------
	.byte		N18   , Gn2 
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N24   
	.byte	W24
	.byte		N06   , Fn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 026   ----------------------------------------
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N48   , Cs2 
	.byte	W84
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte		PAN   , c_v+30
	.byte	W96
@ 031   ----------------------------------------
mus_staff_credits_9_031:
	.byte		N36   , Cn2 , v100
	.byte	W36
	.byte		TIE   , Cn3 
	.byte	W60
	.byte	PEND
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W84
	.byte		EOT   
	.byte	W12
@ 034   ----------------------------------------
mus_staff_credits_9_034:
	.byte	W11
	.byte		N02   , Ds3 , v100
	.byte	W01
	.byte		N24   , En3 
	.byte	W24
	.byte		N12   , Cn3 
	.byte	W11
	.byte		N02   , En3 
	.byte	W01
	.byte		N18   , Fn3 
	.byte	W18
	.byte		        En3 
	.byte	W18
	.byte		TIE   , Cn3 
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 036   ----------------------------------------
	.byte	W11
	.byte		N02   , Bn2 
	.byte	W01
	.byte		N24   , Cn3 
	.byte	W24
	.byte		N11   
	.byte	W11
	.byte		N02   , An2 
	.byte	W01
	.byte		N18   , As2 
	.byte	W18
	.byte		        An2 
	.byte	W18
	.byte		N11   , Fn2 
	.byte	W11
	.byte		N02   , Gs2 
	.byte	W01
@ 037   ----------------------------------------
	.byte		N24   , An2 
	.byte	W24
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N24   , As2 
	.byte	W24
	.byte		N11   , Fn2 
	.byte	W11
	.byte		N02   , As2 
	.byte	W01
	.byte		N24   , Bn2 
	.byte	W24
@ 038   ----------------------------------------
	.byte		N11   , Fn2 
	.byte	W11
	.byte		N02   , Bn2 
	.byte	W01
	.byte		N24   , Cn3 
	.byte	W24
	.byte		N11   , Fn2 
	.byte	W11
	.byte		N02   , En3 
	.byte	W01
	.byte		N18   , Fn3 
	.byte	W18
	.byte		        En3 
	.byte	W18
	.byte		N12   , Bn2 
	.byte	W12
@ 039   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_9_031
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W84
	.byte		EOT   , Cn3 
	.byte	W12
@ 042   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_9_034
@ 043   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn3 
@ 044   ----------------------------------------
	.byte	W11
	.byte		N02   , Bn2 , v100
	.byte	W01
	.byte		N24   , Cn3 
	.byte	W24
	.byte		N11   
	.byte	W11
	.byte		N02   , An2 
	.byte	W01
	.byte		N18   , As2 
	.byte	W18
	.byte		        An2 
	.byte	W18
	.byte		N11   , As2 
	.byte	W11
	.byte		N02   , Bn2 
	.byte	W01
@ 045   ----------------------------------------
	.byte		N24   , Cn3 
	.byte	W24
	.byte		N12   , An2 
	.byte	W12
	.byte		N24   , Cs3 
	.byte	W24
	.byte		N11   , An2 
	.byte	W11
	.byte		N02   , Cs3 
	.byte	W01
	.byte		N24   , Dn3 
	.byte	W24
@ 046   ----------------------------------------
	.byte		N11   , Gn2 
	.byte	W11
	.byte		N02   , Ds3 
	.byte	W01
	.byte		N24   , En3 
	.byte	W24
	.byte		N11   , Gn2 
	.byte	W11
	.byte		N02   , En3 
	.byte	W01
	.byte		N18   , Fn3 
	.byte	W18
	.byte		        En3 
	.byte	W18
	.byte		N12   , Bn2 
	.byte	W12
@ 047   ----------------------------------------
	.byte		TIE   , Cn3 
	.byte	W24
	.byte		VOL   , 90*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        89*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        87*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        86*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        86*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        85*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        83*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        82*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        81*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        81*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        80*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        78*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        77*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        77*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        76*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        74*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        73*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        72*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        72*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        70*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        69*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        68*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        67*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        67*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        65*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        64*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        63*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        63*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        61*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        60*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        59*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        58*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        58*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        56*mus_staff_credits_mvl/mxv
	.byte	W01
@ 048   ----------------------------------------
	.byte	W01
	.byte		        55*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        54*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        52*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        52*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        51*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        50*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        48*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        48*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        47*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        46*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        45*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        43*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        43*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        42*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        41*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        39*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        38*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        38*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        37*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        35*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        34*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        33*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        33*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        32*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        30*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        29*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        29*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        28*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        26*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        25*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        24*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        24*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        23*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        21*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        20*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        19*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        19*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        17*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        16*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        15*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        15*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        13*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        12*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        11*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		EOT   
@ 049   ----------------------------------------
	.byte		VOL   , 10*mus_staff_credits_mvl/mxv
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte		        91*mus_staff_credits_mvl/mxv
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		N01   , Bn1 , v072
	.byte	W01
@ 059   ----------------------------------------
	.byte		N18   , Cn2 
	.byte	W18
	.byte		        Dn2 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N18   , Dn2 
	.byte	W18
	.byte		        Cn2 
	.byte	W18
	.byte		N11   , Dn2 
	.byte	W11
	.byte		N01   , Cs2 
	.byte	W01
@ 060   ----------------------------------------
	.byte		N18   , Dn2 
	.byte	W18
	.byte		        Cn2 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N18   , As1 
	.byte	W18
	.byte		        Cn2 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
@ 061   ----------------------------------------
	.byte	W23
	.byte		N01   , Ds2 
	.byte	W01
	.byte		N72   , En2 
	.byte	W72
@ 062   ----------------------------------------
	.byte	W11
	.byte		N01   , Cs2 
	.byte	W01
	.byte		N18   , Dn2 
	.byte	W24
	.byte		N12   , En2 
	.byte	W12
	.byte		N18   , Fn2 
	.byte	W18
	.byte		        En2 
	.byte	W18
	.byte		N11   
	.byte	W11
	.byte		N01   , Ds2 
	.byte	W01
@ 063   ----------------------------------------
	.byte		TIE   , En2 
	.byte	W30
	.byte		VOL   , 87*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        86*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        86*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        85*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        83*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        82*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        81*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        81*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        80*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        78*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        77*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        77*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        76*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        74*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        73*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        72*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        72*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        70*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        69*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        68*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        67*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        67*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        65*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        64*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        63*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        63*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        61*mus_staff_credits_mvl/mxv
	.byte	W01
@ 064   ----------------------------------------
	.byte	W02
	.byte		        60*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        59*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        58*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        58*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        56*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        55*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        54*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        52*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        52*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        51*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        50*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        48*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        48*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        47*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        46*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        45*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        43*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        43*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        42*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        41*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        39*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        38*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        38*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        37*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        35*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        34*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        33*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        33*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        32*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        30*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        29*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        29*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        28*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        26*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        25*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        24*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		        24*mus_staff_credits_mvl/mxv
	.byte	W03
	.byte		EOT   
@ 065   ----------------------------------------
	.byte		VOL   , 23*mus_staff_credits_mvl/mxv
	.byte	FINE

@ **************** Track 10 (Midi-Chn.10) ****************

mus_staff_credits_10:
	.byte	KEYSH , mus_staff_credits_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 118
	.byte		VOL   , 72*mus_staff_credits_mvl/mxv
	.byte		PAN   , c_v-30
	.byte	W03
@ 001   ----------------------------------------
	.byte	W48
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
mus_staff_credits_10_011:
	.byte		N18   , Bn2 , v092
	.byte	W18
	.byte		        Cs3 
	.byte	W18
	.byte		        Ds3 
	.byte	W18
	.byte		        En3 
	.byte	W18
	.byte		N06   , Ds3 
	.byte	W12
	.byte		N12   , Cs3 
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_10_011
@ 013   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_10_011
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_10_011
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	FINE

@ **************** Track 11 (Midi-Chn.11) ****************

mus_staff_credits_11:
	.byte	KEYSH , mus_staff_credits_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 87
	.byte		VOL   , 61*mus_staff_credits_mvl/mxv
	.byte		PAN   , c_v+30
	.byte	W03
@ 001   ----------------------------------------
	.byte	W48
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
mus_staff_credits_11_011:
	.byte		N18   , Gs2 , v092
	.byte	W18
	.byte		        An2 
	.byte	W18
	.byte		        Bn2 
	.byte	W18
	.byte		        Cs3 
	.byte	W18
	.byte		N06   , Bn2 
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_11_011
@ 013   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_11_011
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_11_011
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte		N01   , Gn3 , v076
	.byte	W01
	.byte		N18   , Gs3 
	.byte	W18
	.byte		        An3 
	.byte	W18
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N18   , An3 
	.byte	W18
	.byte		        Gs3 
	.byte	W18
	.byte		N11   , An3 
	.byte	W11
@ 064   ----------------------------------------
	.byte		N01   , Gs3 , v068
	.byte	W01
	.byte		N18   , An3 
	.byte	W18
	.byte		        Gs3 , v060
	.byte	W18
	.byte		N12   , An3 , v052
	.byte	W12
	.byte		N18   , Fs3 , v044
	.byte	W18
	.byte		        Gs3 , v036
	.byte	W18
	.byte		N12   , An3 , v024
	.byte	W11
@ 065   ----------------------------------------
	.byte	W24
	.byte		N01   , As3 , v008
	.byte	W01
	.byte		N72   , Bn3 , v004
	.byte	W68
	.byte	W03
@ 066   ----------------------------------------
	.byte	W01
	.byte	FINE

@ **************** Track 12 (Midi-Chn.12) ****************

mus_staff_credits_12:
	.byte	KEYSH , mus_staff_credits_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 103
	.byte		VOL   , 107*mus_staff_credits_mvl/mxv
	.byte		BENDR , 3
	.byte		PAN   , c_v+0
	.byte	W03
@ 001   ----------------------------------------
	.byte	W48
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte		VOL   , 107*mus_staff_credits_mvl/mxv
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		BEND  , c_v-64
	.byte	W01
@ 009   ----------------------------------------
	.byte		N18   , Dn3 , v100
	.byte	W01
	.byte		BEND  , c_v-49
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v+0
	.byte	W14
	.byte		N18   , Ds3 
	.byte	W17
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		N18   , En3 
	.byte	W01
	.byte		BEND  , c_v-49
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v+0
	.byte	W14
	.byte		N18   , Fn3 
	.byte	W17
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		N96   , Fs3 
	.byte	W01
	.byte		BEND  , c_v-49
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v+0
	.byte	W20
@ 010   ----------------------------------------
	.byte	W24
	.byte		VOL   , 105*mus_staff_credits_mvl/mxv
	.byte	W05
	.byte		        104*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        103*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        102*mus_staff_credits_mvl/mxv
	.byte	W02
	.byte		        100*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        99*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        98*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        96*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        96*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        94*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        93*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        91*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        90*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        89*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        86*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        85*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        81*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        80*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        77*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        76*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        72*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        70*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        68*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        65*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        63*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        60*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        58*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        55*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        48*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        47*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        43*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        39*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        37*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        33*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        30*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        26*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        24*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        19*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        16*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        8*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        4*mus_staff_credits_mvl/mxv
	.byte	W01
	.byte		        0*mus_staff_credits_mvl/mxv
	.byte	W24
	.byte	W01
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte		        107*mus_staff_credits_mvl/mxv
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		N23   , Cs3 
	.byte	W01
	.byte		BEND  , c_v-49
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v+0
	.byte	W19
	.byte		        c_v-64
	.byte	W01
@ 027   ----------------------------------------
	.byte		N18   , Dn3 
	.byte	W01
	.byte		BEND  , c_v-49
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v+0
	.byte	W14
	.byte		N18   , Cs3 
	.byte	W18
	.byte		N11   , An2 
	.byte	W11
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		N18   , Dn3 
	.byte	W01
	.byte		BEND  , c_v-49
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v+0
	.byte	W14
	.byte		N18   , Cs3 
	.byte	W18
	.byte		N11   , An2 
	.byte	W11
	.byte		BEND  , c_v-64
	.byte	W01
@ 028   ----------------------------------------
	.byte		N18   , Dn3 
	.byte	W01
	.byte		BEND  , c_v-49
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v+0
	.byte	W14
	.byte		N18   , Cs3 
	.byte	W18
	.byte		N12   , An2 
	.byte	W12
	.byte		N18   , Fs2 
	.byte	W18
	.byte		        An2 
	.byte	W18
	.byte		N12   , Bn2 
	.byte	W12
@ 029   ----------------------------------------
	.byte	W23
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		N24   
	.byte	W01
	.byte		BEND  , c_v-49
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v+0
	.byte	W20
	.byte		N12   
	.byte	W12
	.byte		N23   , Cs3 
	.byte	W23
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		N24   , Dn3 
	.byte	W01
	.byte		BEND  , c_v-49
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v+0
	.byte	W08
@ 030   ----------------------------------------
	.byte	W12
	.byte		N32   , En3 
	.byte	W07
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-64
	.byte	W23
	.byte		        c_v+0
	.byte	W01
	.byte		N11   , Dn3 
	.byte	W11
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		N36   , En3 
	.byte	W01
	.byte		BEND  , c_v-49
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v+0
	.byte	W32
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	FINE

@ **************** Track 13 (Midi-Chn.13) ****************

mus_staff_credits_13:
	.byte	KEYSH , mus_staff_credits_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 74
	.byte		VOL   , 102*mus_staff_credits_mvl/mxv
	.byte		PAN   , c_v+30
	.byte	W03
@ 001   ----------------------------------------
	.byte	W48
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W06
	.byte		N06   , En2 , v100
	.byte	W06
	.byte		        Fs2 
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        An2 
	.byte	W12
	.byte		N03   , Bn2 
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		N06   , Gs2 
	.byte	W12
	.byte		        An2 
	.byte	W06
	.byte		N12   , Bn2 
	.byte	W18
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W54
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 051   ----------------------------------------
	.byte		        En4 , v116
	.byte	W03
	.byte		N05   , Dn4 , v072
	.byte	W03
	.byte		N03   , Cn4 , v060
	.byte	W02
	.byte		        Bn3 , v088
	.byte	W01
	.byte		        An3 , v076
	.byte	W02
	.byte		        Gn3 
	.byte	W01
	.byte		        Fn3 
	.byte	W02
	.byte		        En3 
	.byte	W01
	.byte		N02   , Dn3 , v084
	.byte	W03
	.byte	FINE

@ **************** Track 14 (Midi-Chn.14) ****************

mus_staff_credits_14:
	.byte	KEYSH , mus_staff_credits_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 74
	.byte		VOL   , 102*mus_staff_credits_mvl/mxv
	.byte		PAN   , c_v-30
	.byte	W03
@ 001   ----------------------------------------
	.byte	W48
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W06
	.byte		N06   , En3 , v100
	.byte	W06
	.byte		        Fs3 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W12
	.byte		N03   , Bn3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		N06   , Gs3 
	.byte	W12
	.byte		        An3 
	.byte	W06
	.byte		N12   , Bn3 
	.byte	W18
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W54
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
@ 051   ----------------------------------------
	.byte		        En3 , v116
	.byte	W06
	.byte	FINE

@ **************** Track 15 (Midi-Chn.15) ****************

mus_staff_credits_15:
	.byte	KEYSH , mus_staff_credits_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 94
	.byte		VOL   , 102*mus_staff_credits_mvl/mxv
	.byte		PAN   , c_v-30
	.byte	W03
@ 001   ----------------------------------------
	.byte	W48
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte		N04   , En2 , v100
	.byte	W03
	.byte		PAN   , c_v+30
	.byte	W01
	.byte		N04   , Bn2 
	.byte	W03
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		N04   , En3 
	.byte	W03
	.byte		PAN   , c_v+30
	.byte	W01
	.byte		N04   , Bn3 
	.byte	W03
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		N04   , En3 
	.byte	W03
	.byte		PAN   , c_v+30
	.byte	W01
	.byte		N04   , Bn2 
	.byte	W03
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		N04   , En2 
	.byte	W03
	.byte		PAN   , c_v+30
	.byte	W01
	.byte		N04   , An2 
	.byte	W03
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		N04   , En3 
	.byte	W03
	.byte		PAN   , c_v+30
	.byte	W01
	.byte		N04   , An3 
	.byte	W03
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		N04   , En3 
	.byte	W03
	.byte		PAN   , c_v+30
	.byte	W01
	.byte		N04   , An2 
	.byte	W03
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		N04   , En2 
	.byte	W03
	.byte		PAN   , c_v+30
	.byte	W01
	.byte		N04   , Gs2 
	.byte	W03
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		N04   , En3 
	.byte	W03
	.byte		PAN   , c_v+30
	.byte	W01
	.byte		N04   , Gs3 
	.byte	W03
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		N04   , En3 
	.byte	W03
	.byte		PAN   , c_v+30
	.byte	W01
	.byte		N04   , Gs2 
	.byte	W03
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		N04   , En2 
	.byte	W03
	.byte		PAN   , c_v+30
	.byte	W01
	.byte		N04   , En3 
	.byte	W03
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		N04   
	.byte	W03
	.byte		PAN   , c_v+30
	.byte	W01
	.byte		N04   
	.byte	W03
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		N04   , En2 
	.byte	W03
	.byte		PAN   , c_v+30
	.byte	W01
	.byte		N04   
	.byte	W04
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte		PAN   , c_v-30
	.byte	W96
@ 022   ----------------------------------------
	.byte		N03   , En2 , v112
	.byte	W02
	.byte		PAN   , c_v+30
	.byte	W01
	.byte		N21   , En3 
	.byte	W21
	.byte		N03   , Ds2 
	.byte	W02
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		N21   , Ds3 
	.byte	W21
	.byte		N03   , Cs2 
	.byte	W02
	.byte		PAN   , c_v+30
	.byte	W01
	.byte		N21   , Cs3 
	.byte	W21
	.byte		N03   , Cn2 
	.byte	W02
	.byte		PAN   , c_v-30
	.byte	W01
	.byte		N21   , Cn3 
	.byte	W21
@ 023   ----------------------------------------
	.byte		N03   , Bn1 
	.byte	W02
	.byte		PAN   , c_v+30
	.byte	W01
	.byte		N21   , Bn2 
	.byte	W92
	.byte	W01
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	FINE

@ **************** Track 16 (Midi-Chn.16) ****************

mus_staff_credits_16:
	.byte	KEYSH , mus_staff_credits_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 80
	.byte		VOL   , 102*mus_staff_credits_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
@ 001   ----------------------------------------
	.byte	W48
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		N11   , An2 , v104
	.byte	W01
@ 048   ----------------------------------------
mus_staff_credits_16_048:
	.byte	W17
	.byte		N10   , An2 , v108
	.byte	W18
	.byte		N11   , An2 , v100
	.byte	W21
	.byte		N10   , An2 , v104
	.byte	W16
	.byte		N12   , An2 , v096
	.byte	W12
	.byte		N09   , As2 , v112
	.byte	W12
	.byte	PEND
@ 049   ----------------------------------------
	.byte		N02   , Gn1 , v060
	.byte		N04   , An1 , v072
	.byte	W03
	.byte		N02   , Bn1 , v040
	.byte	W02
	.byte		        Cn2 , v076
	.byte	W01
	.byte		        Dn2 , v112
	.byte	W01
	.byte		        En2 , v116
	.byte	W02
	.byte		N03   , Fn2 , v112
	.byte	W02
	.byte		        Gn2 , v108
	.byte	W02
	.byte		        An2 , v104
	.byte	W02
	.byte		        Bn2 , v092
	.byte	W06
	.byte		N16   , Bn2 , v112
	.byte	W20
	.byte		N13   , Bn2 , v116
	.byte	W17
	.byte		N14   , Bn2 , v100
	.byte	W19
	.byte		N12   , Bn2 , v112
	.byte	W18
	.byte		N11   , An2 , v104
	.byte	W01
@ 050   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_16_048
@ 051   ----------------------------------------
mus_staff_credits_16_051:
	.byte	W21
	.byte		N16   , Bn2 , v104
	.byte	W20
	.byte		N13   
	.byte	W17
	.byte		N14   , Bn2 , v092
	.byte	W19
	.byte		N12   , Bn2 , v104
	.byte	W18
	.byte		N11   , An2 , v096
	.byte	W01
	.byte	PEND
@ 052   ----------------------------------------
mus_staff_credits_16_052:
	.byte	W17
	.byte		N10   , An2 , v100
	.byte	W18
	.byte		N11   , An2 , v092
	.byte	W21
	.byte		N10   , An2 , v096
	.byte	W16
	.byte		N12   , An2 , v088
	.byte	W12
	.byte		N09   , As2 , v104
	.byte	W12
	.byte	PEND
@ 053   ----------------------------------------
mus_staff_credits_16_053:
	.byte		N02   , Gn1 , v056
	.byte		N04   , An1 , v068
	.byte	W03
	.byte		N02   , Bn1 , v036
	.byte	W02
	.byte		        Cn2 , v068
	.byte	W01
	.byte		        Dn2 , v104
	.byte	W01
	.byte		        En2 
	.byte	W02
	.byte		N03   , Fn2 
	.byte	W02
	.byte		        Gn2 , v096
	.byte	W02
	.byte		        An2 , v092
	.byte	W02
	.byte		        Bn2 , v084
	.byte	W06
	.byte		N16   , Bn2 , v104
	.byte	W20
	.byte		N13   
	.byte	W17
	.byte		N14   , Bn2 , v092
	.byte	W19
	.byte		N12   , Bn2 , v104
	.byte	W18
	.byte		N11   , An2 , v096
	.byte	W01
	.byte	PEND
@ 054   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_16_052
@ 055   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_16_051
@ 056   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_16_052
@ 057   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_16_053
@ 058   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_16_052
@ 059   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_16_051
@ 060   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_16_052
@ 061   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_16_053
@ 062   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_16_052
@ 063   ----------------------------------------
	.byte	PATT
	 mPtr	mus_staff_credits_16_051
@ 064   ----------------------------------------
	.byte	W17
	.byte		N10   , An2 , v072
	.byte	W18
	.byte		N11   , An2 , v064
	.byte	W21
	.byte		N10   , An2 , v056
	.byte	W16
	.byte		N12   , An2 , v048
	.byte	W12
	.byte		N09   , As2 , v044
	.byte	W12
@ 065   ----------------------------------------
	.byte		N02   , Gn1 , v040
	.byte		N04   , An1 
	.byte	W03
	.byte		N02   , Bn1 , v036
	.byte	W02
	.byte		        Cn2 
	.byte	W01
	.byte		        Dn2 
	.byte	W01
	.byte		        En2 
	.byte	W02
	.byte		N03   , Fn2 
	.byte	W02
	.byte		        Gn2 , v032
	.byte	W02
	.byte		        An2 
	.byte	W02
	.byte		        Bn2 
	.byte	W06
	.byte		N16   , Bn2 , v028
	.byte	W20
	.byte		N13   , Bn2 , v020
	.byte	W17
	.byte		N14   , Bn2 , v012
	.byte	W19
	.byte		N12   , Bn2 , v004
	.byte	W18
	.byte		N11   , An2 
	.byte	W01
@ 066   ----------------------------------------
	.byte	W11
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(mus_staff_credits):
	.byte	16	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_staff_credits_pri	@ Priority
	.byte	mus_staff_credits_rev	@ Reverb

mAlignWord
	mPtr	mus_staff_credits_grp

	mPtr	mus_staff_credits_1
	mPtr	mus_staff_credits_2
	mPtr	mus_staff_credits_3
	mPtr	mus_staff_credits_4
	mPtr	mus_staff_credits_5
	mPtr	mus_staff_credits_6
	mPtr	mus_staff_credits_7
	mPtr	mus_staff_credits_8
	mPtr	mus_staff_credits_9
	mPtr	mus_staff_credits_10
	mPtr	mus_staff_credits_11
	mPtr	mus_staff_credits_12
	mPtr	mus_staff_credits_13
	mPtr	mus_staff_credits_14
	mPtr	mus_staff_credits_15
	mPtr	mus_staff_credits_16

	.end
