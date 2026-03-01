	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_goodbye_chao_grp, voicegroup000
	.equ	mus_goodbye_chao_pri, 0
	.equ	mus_goodbye_chao_rev, reverb_set+0
	.equ	mus_goodbye_chao_mvl, 120
	.equ	mus_goodbye_chao_key, 0
	.equ	mus_goodbye_chao_tbs, 1
	.equ	mus_goodbye_chao_exg, 1
	.equ	mus_goodbye_chao_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_goodbye_chao)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

mus_goodbye_chao_1:
	.byte	KEYSH , mus_goodbye_chao_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 80*mus_goodbye_chao_tbs/2
	.byte		VOICE , 72
	.byte		VOL   , 80*mus_goodbye_chao_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 38
	.byte		MOD   , 25
	.byte		MODT  , 2
	.byte		N23   , En3 , v127
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		        Cn3 
	.byte	W24
@ 001   ----------------------------------------
mus_goodbye_chao_1_001:
	.byte		N23   , Dn3 , v127
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
	.byte		        En3 
	.byte	W24
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Bn2 , v120
	.byte	W12
	.byte		N10   , En3 , v127
	.byte	W04
mus_goodbye_chao_1_B1:
	.byte	W08
@ 003   ----------------------------------------
mus_goodbye_chao_1_003:
	.byte		N23   , En3 , v127
	.byte	W24
	.byte		N18   , An2 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
mus_goodbye_chao_1_004:
	.byte		N23   , Cn3 , v127
	.byte	W24
	.byte		N22   , An2 
	.byte	W24
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
	.byte		N54   , An2 
	.byte	W72
@ 006   ----------------------------------------
	.byte		N23   , En3 
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		        Cn3 
	.byte	W24
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_goodbye_chao_1_001
@ 008   ----------------------------------------
	.byte		N23   , En3 , v127
	.byte	W24
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Bn2 , v120
	.byte	W12
	.byte		N10   , En3 , v127
	.byte	W12
@ 009   ----------------------------------------
	.byte	PATT
	 mPtr	mus_goodbye_chao_1_003
@ 010   ----------------------------------------
	.byte	PATT
	 mPtr	mus_goodbye_chao_1_004
@ 011   ----------------------------------------
	.byte		N68   , An2 , v127
	.byte	W72
@ 012   ----------------------------------------
	.byte		N44   
	.byte	W48
	.byte		N23   , Gn2 
	.byte	W24
@ 013   ----------------------------------------
	.byte		TIE   , An2 
	.byte	W72
@ 014   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 015   ----------------------------------------
	.byte	W72
@ 016   ----------------------------------------
	.byte	W72
@ 017   ----------------------------------------
	.byte	W72
@ 018   ----------------------------------------
	.byte	W72
@ 019   ----------------------------------------
	.byte	W72
@ 020   ----------------------------------------
	.byte	W72
@ 021   ----------------------------------------
	.byte	W72
@ 022   ----------------------------------------
	.byte	W72
@ 023   ----------------------------------------
	.byte	W72
@ 024   ----------------------------------------
	.byte	W72
@ 025   ----------------------------------------
	.byte	W72
@ 026   ----------------------------------------
	.byte	W72
@ 027   ----------------------------------------
	.byte	W72
@ 028   ----------------------------------------
	.byte	W72
@ 029   ----------------------------------------
	.byte	W72
@ 030   ----------------------------------------
	.byte	W72
@ 031   ----------------------------------------
	.byte	W72
@ 032   ----------------------------------------
	.byte	W72
@ 033   ----------------------------------------
	.byte	W72
@ 034   ----------------------------------------
	.byte	W72
@ 035   ----------------------------------------
	.byte	W72
@ 036   ----------------------------------------
	.byte	W72
@ 037   ----------------------------------------
	.byte	W72
@ 038   ----------------------------------------
	.byte	W72
@ 039   ----------------------------------------
	.byte	W72
@ 040   ----------------------------------------
	.byte	W72
@ 041   ----------------------------------------
	.byte	W72
@ 042   ----------------------------------------
	.byte	W72
@ 043   ----------------------------------------
	.byte	W72
@ 044   ----------------------------------------
	.byte	W72
@ 045   ----------------------------------------
	.byte	W72
@ 046   ----------------------------------------
	.byte	W72
@ 047   ----------------------------------------
	.byte	W72
@ 048   ----------------------------------------
	.byte	W72
@ 049   ----------------------------------------
	.byte	W72
@ 050   ----------------------------------------
	.byte	W64
	.byte	GOTO
	 mPtr	mus_goodbye_chao_1_B1
mus_goodbye_chao_1_B2:
	.byte	FINE

@ **************** Track 2 (Midi-Chn.2) ****************

mus_goodbye_chao_2:
	.byte	KEYSH , mus_goodbye_chao_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 54
	.byte		VOL   , 75*mus_goodbye_chao_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 33
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		N11   , An1 , v112
	.byte	W12
	.byte		        En2 , v100
	.byte	W12
	.byte		N44   , An2 , v092
	.byte	W48
@ 001   ----------------------------------------
mus_goodbye_chao_2_001:
	.byte		N11   , An1 , v104
	.byte	W12
	.byte		        Fn2 , v108
	.byte	W12
	.byte		N44   , An2 , v100
	.byte	W48
	.byte	PEND
@ 002   ----------------------------------------
	.byte		N11   , An1 , v108
	.byte	W12
	.byte		        En2 , v092
	.byte	W12
	.byte		N23   , An2 , v104
	.byte	W24
	.byte		        Gn1 , v124
	.byte	W16
mus_goodbye_chao_2_B1:
	.byte	W08
@ 003   ----------------------------------------
mus_goodbye_chao_2_003:
	.byte		N11   , Fn1 , v124
	.byte	W12
	.byte		        Cn2 , v116
	.byte	W12
	.byte		N23   , Fn2 , v084
	.byte	W24
	.byte		N11   , Fn1 , v096
	.byte	W12
	.byte		        En1 , v112
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
mus_goodbye_chao_2_004:
	.byte		N11   , Dn1 , v116
	.byte	W12
	.byte		        An1 , v120
	.byte	W12
	.byte		N23   , Fn2 , v088
	.byte	W24
	.byte		        En1 , v124
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
	.byte		N11   , An1 , v120
	.byte	W12
	.byte		        En2 , v112
	.byte	W12
	.byte		N40   , An2 , v096
	.byte	W48
@ 006   ----------------------------------------
	.byte		N11   , An1 , v112
	.byte	W12
	.byte		        En2 , v100
	.byte	W12
	.byte		N44   , An2 , v092
	.byte	W48
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_goodbye_chao_2_001
@ 008   ----------------------------------------
	.byte		N11   , An1 , v108
	.byte	W12
	.byte		        En2 , v092
	.byte	W12
	.byte		N23   , An2 , v104
	.byte	W24
	.byte		        Gn1 , v124
	.byte	W24
@ 009   ----------------------------------------
	.byte	PATT
	 mPtr	mus_goodbye_chao_2_003
@ 010   ----------------------------------------
	.byte	PATT
	 mPtr	mus_goodbye_chao_2_004
@ 011   ----------------------------------------
	.byte		N11   , Fn1 , v120
	.byte	W12
	.byte		        Cn2 , v112
	.byte	W12
	.byte		N44   , Fn2 , v096
	.byte	W48
@ 012   ----------------------------------------
	.byte		N11   , Gn1 , v120
	.byte	W12
	.byte		        Dn2 , v112
	.byte	W12
	.byte		N23   , Gn2 , v096
	.byte	W24
	.byte		        Gn1 
	.byte	W24
@ 013   ----------------------------------------
	.byte		N11   , An1 , v120
	.byte	W12
	.byte		        En2 , v112
	.byte	W12
	.byte		N23   , An2 , v096
	.byte	W24
	.byte		        En2 
	.byte	W24
@ 014   ----------------------------------------
	.byte		N64   , An1 
	.byte	W72
@ 015   ----------------------------------------
	.byte	W72
@ 016   ----------------------------------------
	.byte	W72
@ 017   ----------------------------------------
	.byte	W72
@ 018   ----------------------------------------
	.byte	W72
@ 019   ----------------------------------------
	.byte	W72
@ 020   ----------------------------------------
	.byte	W72
@ 021   ----------------------------------------
	.byte	W72
@ 022   ----------------------------------------
	.byte	W72
@ 023   ----------------------------------------
	.byte	W72
@ 024   ----------------------------------------
	.byte	W72
@ 025   ----------------------------------------
	.byte	W72
@ 026   ----------------------------------------
	.byte	W72
@ 027   ----------------------------------------
	.byte	W72
@ 028   ----------------------------------------
	.byte	W72
@ 029   ----------------------------------------
	.byte	W72
@ 030   ----------------------------------------
	.byte	W72
@ 031   ----------------------------------------
	.byte	W72
@ 032   ----------------------------------------
	.byte	W72
@ 033   ----------------------------------------
	.byte	W72
@ 034   ----------------------------------------
	.byte	W72
@ 035   ----------------------------------------
	.byte	W72
@ 036   ----------------------------------------
	.byte	W72
@ 037   ----------------------------------------
	.byte	W72
@ 038   ----------------------------------------
	.byte	W72
@ 039   ----------------------------------------
	.byte	W72
@ 040   ----------------------------------------
	.byte	W72
@ 041   ----------------------------------------
	.byte	W72
@ 042   ----------------------------------------
	.byte	W72
@ 043   ----------------------------------------
	.byte	W72
@ 044   ----------------------------------------
	.byte	W72
@ 045   ----------------------------------------
	.byte	W72
@ 046   ----------------------------------------
	.byte	W72
@ 047   ----------------------------------------
	.byte	W72
@ 048   ----------------------------------------
	.byte	W72
@ 049   ----------------------------------------
	.byte	W72
@ 050   ----------------------------------------
	.byte	W64
	.byte	GOTO
	 mPtr	mus_goodbye_chao_2_B1
mus_goodbye_chao_2_B2:
	.byte	FINE

@ **************** Track 3 (Midi-Chn.3) ****************

mus_goodbye_chao_3:
	.byte	KEYSH , mus_goodbye_chao_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 55
	.byte		VOL   , 127*mus_goodbye_chao_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 33
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		N11   , Cn2 , v127
	.byte	W02
	.byte		        En2 
	.byte	W02
	.byte		        An2 
	.byte	W08
	.byte		        An1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N11   
	.byte	W02
	.byte		        An2 
	.byte	W02
	.byte		        Cn3 
	.byte	W08
	.byte		        En2 
	.byte	W12
@ 001   ----------------------------------------
mus_goodbye_chao_3_001:
	.byte		N11   , Dn2 , v127
	.byte	W02
	.byte		        Fn2 
	.byte	W02
	.byte		        An2 
	.byte	W08
	.byte		        An1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte		        Cn2 
	.byte	W02
	.byte		        En2 
	.byte	W02
	.byte		        An2 
	.byte	W08
	.byte		        An1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N11   
	.byte	W02
	.byte		        Gn2 
	.byte	W02
	.byte		        Bn2 
	.byte	W08
	.byte		        En2 
	.byte	W04
mus_goodbye_chao_3_B1:
	.byte	W08
@ 003   ----------------------------------------
mus_goodbye_chao_3_003:
	.byte		N11   , Cn2 , v127
	.byte	W02
	.byte		        En2 
	.byte	W02
	.byte		        An2 
	.byte	W08
	.byte		        An1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N11   
	.byte	W02
	.byte		        An2 
	.byte	W02
	.byte		        Cn3 
	.byte	W08
	.byte		        Fn2 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
mus_goodbye_chao_3_004:
	.byte		N11   , Dn2 , v127
	.byte	W02
	.byte		        Fn2 
	.byte	W02
	.byte		        An2 
	.byte	W08
	.byte		        An1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        En2 
	.byte	W02
	.byte		        Gn2 
	.byte	W02
	.byte		        Bn2 
	.byte	W08
	.byte		        En2 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
	.byte		        Cn2 
	.byte	W02
	.byte		        En2 
	.byte	W02
	.byte		        An2 
	.byte	W08
	.byte		        An1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 006   ----------------------------------------
	.byte		        Cn2 
	.byte	W02
	.byte		        En2 
	.byte	W02
	.byte		        An2 
	.byte	W08
	.byte		        An1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N11   
	.byte	W02
	.byte		        An2 
	.byte	W02
	.byte		        Cn3 
	.byte	W08
	.byte		        En2 
	.byte	W12
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_goodbye_chao_3_001
@ 008   ----------------------------------------
	.byte		N11   , Cn2 , v127
	.byte	W02
	.byte		        En2 
	.byte	W02
	.byte		        An2 
	.byte	W08
	.byte		        An1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N11   
	.byte	W02
	.byte		        Gn2 
	.byte	W02
	.byte		        Bn2 
	.byte	W08
	.byte		        En2 
	.byte	W12
@ 009   ----------------------------------------
	.byte	PATT
	 mPtr	mus_goodbye_chao_3_003
@ 010   ----------------------------------------
	.byte	PATT
	 mPtr	mus_goodbye_chao_3_004
@ 011   ----------------------------------------
	.byte		N11   , Cn2 , v127
	.byte	W02
	.byte		        Fn2 
	.byte	W02
	.byte		        An2 
	.byte	W08
	.byte		        An1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
@ 012   ----------------------------------------
	.byte		        Dn2 
	.byte	W02
	.byte		        Gn2 
	.byte	W02
	.byte		        Bn2 
	.byte	W08
	.byte		        Bn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W02
	.byte		N09   , Gn2 
	.byte	W02
	.byte		N11   , Bn2 
	.byte	W08
	.byte		        Gn2 
	.byte	W12
@ 013   ----------------------------------------
	.byte		        En2 
	.byte	W02
	.byte		        An2 
	.byte	W02
	.byte		        Cn3 
	.byte	W08
	.byte		        Cn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
@ 014   ----------------------------------------
	.byte		N44   , Cn3 
	.byte	W02
	.byte		        En3 
	.byte	W02
	.byte		        An3 
	.byte	W68
@ 015   ----------------------------------------
	.byte	W72
@ 016   ----------------------------------------
	.byte	W72
@ 017   ----------------------------------------
	.byte	W72
@ 018   ----------------------------------------
	.byte	W72
@ 019   ----------------------------------------
	.byte	W72
@ 020   ----------------------------------------
	.byte	W72
@ 021   ----------------------------------------
	.byte	W72
@ 022   ----------------------------------------
	.byte	W72
@ 023   ----------------------------------------
	.byte	W72
@ 024   ----------------------------------------
	.byte	W72
@ 025   ----------------------------------------
	.byte	W72
@ 026   ----------------------------------------
	.byte	W72
@ 027   ----------------------------------------
	.byte	W72
@ 028   ----------------------------------------
	.byte	W72
@ 029   ----------------------------------------
	.byte	W72
@ 030   ----------------------------------------
	.byte	W72
@ 031   ----------------------------------------
	.byte	W72
@ 032   ----------------------------------------
	.byte	W72
@ 033   ----------------------------------------
	.byte	W72
@ 034   ----------------------------------------
	.byte	W72
@ 035   ----------------------------------------
	.byte	W72
@ 036   ----------------------------------------
	.byte	W72
@ 037   ----------------------------------------
	.byte	W72
@ 038   ----------------------------------------
	.byte	W72
@ 039   ----------------------------------------
	.byte	W72
@ 040   ----------------------------------------
	.byte	W72
@ 041   ----------------------------------------
	.byte	W72
@ 042   ----------------------------------------
	.byte	W72
@ 043   ----------------------------------------
	.byte	W72
@ 044   ----------------------------------------
	.byte	W72
@ 045   ----------------------------------------
	.byte	W72
@ 046   ----------------------------------------
	.byte	W72
@ 047   ----------------------------------------
	.byte	W72
@ 048   ----------------------------------------
	.byte	W72
@ 049   ----------------------------------------
	.byte	W72
@ 050   ----------------------------------------
	.byte	W64
	.byte	GOTO
	 mPtr	mus_goodbye_chao_3_B1
mus_goodbye_chao_3_B2:
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(mus_goodbye_chao):
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_goodbye_chao_pri	@ Priority
	.byte	mus_goodbye_chao_rev	@ Reverb

mAlignWord
	mPtr	mus_goodbye_chao_grp

	mPtr	mus_goodbye_chao_1
	mPtr	mus_goodbye_chao_2
	mPtr	mus_goodbye_chao_3

	.end
