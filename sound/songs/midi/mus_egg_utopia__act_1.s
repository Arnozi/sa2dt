	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_egg_utopia__act_1_grp, voicegroup013
	.equ	mus_egg_utopia__act_1_pri, 0
	.equ	mus_egg_utopia__act_1_rev, reverb_set+0
	.equ	mus_egg_utopia__act_1_mvl, 110
	.equ	mus_egg_utopia__act_1_key, 0
	.equ	mus_egg_utopia__act_1_tbs, 1
	.equ	mus_egg_utopia__act_1_exg, 1
	.equ	mus_egg_utopia__act_1_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_egg_utopia__act_1)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

mus_egg_utopia__act_1_1:
	.byte	KEYSH , mus_egg_utopia__act_1_key+0
mus_egg_utopia__act_1_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 150*mus_egg_utopia__act_1_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_egg_utopia__act_1_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		N03   , Dn1 , v044
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Dn1 , v044
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Dn1 , v044
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Dn1 , v044
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
@ 001   ----------------------------------------
mus_egg_utopia__act_1_1_001:
	.byte		N03   , Dn1 , v044
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Dn1 , v044
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Dn1 , v044
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Dn1 , v044
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_001
@ 003   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_001
@ 004   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_001
@ 005   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_001
@ 006   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_001
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_001
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_001
@ 009   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_001
@ 010   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_001
@ 011   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_001
@ 012   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_001
@ 013   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_001
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_001
@ 015   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_001
@ 016   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_001
@ 017   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_001
@ 018   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_001
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_001
@ 020   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_001
@ 021   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_001
@ 022   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_001
@ 023   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_001
@ 024   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_001
@ 025   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_001
@ 026   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_001
@ 027   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_001
@ 028   ----------------------------------------
mus_egg_utopia__act_1_1_028:
	.byte		N03   , Dn1 , v044
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Ds1 , v040
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Dn1 , v044
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Ds1 , v040
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Dn1 , v044
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Ds1 , v040
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Dn1 , v044
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Ds1 , v040
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte	PEND
@ 029   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_028
@ 030   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_028
@ 031   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_028
@ 032   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_028
@ 033   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_028
@ 034   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_028
@ 035   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_028
@ 036   ----------------------------------------
mus_egg_utopia__act_1_1_036:
	.byte		N03   , Ds1 , v036
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Ds1 , v036
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Ds1 , v036
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Ds1 , v036
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte	PEND
@ 037   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_036
@ 038   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_036
@ 039   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_036
@ 040   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_036
@ 041   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_036
@ 042   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_036
@ 043   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_036
@ 044   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_036
@ 045   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_036
@ 046   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_036
@ 047   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_036
@ 048   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_036
@ 049   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_036
@ 050   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_036
@ 051   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_036
	.byte	GOTO
	 mPtr	mus_egg_utopia__act_1_1_B1
mus_egg_utopia__act_1_1_B2:
@ 052   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_036
@ 053   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_036
@ 054   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_1_036
@ 055   ----------------------------------------
	.byte		N03   , Ds1 , v036
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Ds1 , v036
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Ds1 , v036
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Ds1 , v036
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Dn1 , v044
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W03
	.byte	FINE

@ **************** Track 2 (Midi-Chn.2) ****************

mus_egg_utopia__act_1_2:
	.byte	KEYSH , mus_egg_utopia__act_1_key+0
mus_egg_utopia__act_1_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 74
	.byte	PRIO  , 30
	.byte		VOL   , 127*mus_egg_utopia__act_1_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 13
	.byte		LFOS  , 18
	.byte		LFODL , 20
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		BEND  , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
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
	.byte		TIE   , Dn2 , v127
	.byte	W96
@ 013   ----------------------------------------
	.byte	W40
	.byte	W01
	.byte		EOT   
	.byte	W07
	.byte		N13   , Gn1 
	.byte	W18
	.byte		N12   , As1 
	.byte	W18
	.byte		N11   , Fn2 
	.byte	W12
@ 014   ----------------------------------------
	.byte		TIE   , En2 
	.byte	W96
@ 015   ----------------------------------------
	.byte	W56
	.byte	W03
	.byte		EOT   
	.byte	W13
	.byte		N20   , Cn2 
	.byte	W24
@ 016   ----------------------------------------
	.byte		TIE   , Dn2 
	.byte	W96
@ 017   ----------------------------------------
	.byte	W40
	.byte	W01
	.byte		EOT   
	.byte	W07
	.byte		N15   
	.byte	W18
	.byte		N11   , Gn2 
	.byte	W18
	.byte		        Fn2 
	.byte	W12
@ 018   ----------------------------------------
	.byte		TIE   , En2 
	.byte	W96
@ 019   ----------------------------------------
	.byte	W92
	.byte		EOT   
	.byte	W03
	.byte		TIE   , Dn3 
	.byte	W01
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W09
	.byte		EOT   
	.byte	W05
	.byte		N15   
	.byte	W18
	.byte		N11   , As2 
	.byte	W16
	.byte		N44   , Fn2 
	.byte	W44
	.byte	W02
	.byte		N56   , En2 
	.byte	W02
@ 022   ----------------------------------------
mus_egg_utopia__act_1_2_022:
	.byte	W60
	.byte	W03
	.byte		N13   , Fn2 , v127
	.byte	W17
	.byte		N11   , Gn2 
	.byte	W16
	.byte	PEND
@ 023   ----------------------------------------
	.byte	W01
	.byte		N84   , Cn3 
	.byte	W92
	.byte	W02
	.byte		TIE   , Dn3 
	.byte	W01
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W09
	.byte		EOT   
	.byte	W05
	.byte		N15   
	.byte	W18
	.byte		N11   , As2 
	.byte	W16
	.byte		N44   , Fn2 
	.byte	W44
	.byte	W02
	.byte		N56   , En2 
	.byte	W02
@ 026   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_2_022
@ 027   ----------------------------------------
	.byte	W01
	.byte		N84   , Cn3 , v127
	.byte	W92
	.byte	W03
@ 028   ----------------------------------------
	.byte		TIE   , Dn2 
	.byte	W96
@ 029   ----------------------------------------
	.byte	W40
	.byte	W01
	.byte		EOT   
	.byte	W07
	.byte		N13   , Gn1 
	.byte	W18
	.byte		N12   , As1 
	.byte	W18
	.byte		N11   , Fn2 
	.byte	W12
@ 030   ----------------------------------------
	.byte		TIE   , En2 
	.byte	W96
@ 031   ----------------------------------------
	.byte	W56
	.byte	W03
	.byte		EOT   
	.byte	W13
	.byte		N20   , Cn2 
	.byte	W24
@ 032   ----------------------------------------
	.byte		TIE   , Dn2 
	.byte	W96
@ 033   ----------------------------------------
	.byte	W40
	.byte	W01
	.byte		EOT   
	.byte	W07
	.byte		N15   
	.byte	W18
	.byte		N11   , Gn2 
	.byte	W18
	.byte		        Fn2 
	.byte	W12
@ 034   ----------------------------------------
	.byte		TIE   , En2 
	.byte	W96
@ 035   ----------------------------------------
	.byte	W92
	.byte		EOT   
	.byte	W04
@ 036   ----------------------------------------
	.byte		N90   , Dn2 
	.byte		N92   , Gn2 
	.byte	W92
	.byte	W03
	.byte		        Cs2 
	.byte		N92   , Fs2 
	.byte	W01
@ 037   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte		TIE   , Fn2 
	.byte	W01
	.byte		        Cn2 
	.byte	W02
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W84
	.byte		EOT   
	.byte	W01
	.byte		EOT   , Fn2 
	.byte	W11
@ 040   ----------------------------------------
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W18
	.byte		        Cn2 
	.byte		N12   , Fn2 
	.byte	W17
	.byte		TIE   , Dn2 
	.byte		TIE   , Gn2 
	.byte	W60
	.byte	W01
@ 041   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		EOT   , Dn2 
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		N92   
	.byte		N96   , Gn2 
	.byte	W01
@ 044   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		N92   , Cs2 
	.byte		N92   , Fs2 
	.byte	W01
@ 045   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		TIE   , Cn2 
	.byte		TIE   , Fn2 
	.byte	W01
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W84
	.byte	W03
	.byte		EOT   , Cn2 
	.byte		        Fn2 
	.byte	W09
@ 048   ----------------------------------------
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W18
	.byte		        Cn2 
	.byte		N12   , Fn2 
	.byte	W18
	.byte		TIE   , Dn2 
	.byte		TIE   , Gn2 
	.byte	W60
@ 049   ----------------------------------------
	.byte	W84
	.byte	W02
	.byte		EOT   , Dn2 
	.byte		        Gn2 
	.byte	W10
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_egg_utopia__act_1_2_B1
mus_egg_utopia__act_1_2_B2:
@ 052   ----------------------------------------
	.byte	FINE

@ **************** Track 3 (Midi-Chn.3) ****************

mus_egg_utopia__act_1_3:
	.byte	KEYSH , mus_egg_utopia__act_1_key+0
mus_egg_utopia__act_1_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 74
	.byte		VOL   , 127*mus_egg_utopia__act_1_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 13
	.byte		LFOS  , 18
	.byte		LFODL , 20
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		BEND  , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_egg_utopia__act_1_3_004:
	.byte		N03   , As2 , v104
	.byte		N03   , Dn3 
	.byte	W06
	.byte		        As2 , v100
	.byte		N03   , Dn3 
	.byte	W06
	.byte		        As2 , v080
	.byte		N03   , Dn3 
	.byte	W12
	.byte		        As2 , v104
	.byte		N03   , Dn3 
	.byte	W06
	.byte		        As2 , v100
	.byte		N03   , Dn3 
	.byte	W06
	.byte		        As2 , v080
	.byte		N03   , Dn3 
	.byte	W12
	.byte		        As2 , v104
	.byte		N03   , Dn3 
	.byte	W06
	.byte		        As2 , v100
	.byte		N03   , Dn3 
	.byte	W06
	.byte		        As2 , v080
	.byte		N03   , Dn3 
	.byte	W12
	.byte		        As2 , v104
	.byte		N03   , Dn3 
	.byte	W06
	.byte		        As2 , v100
	.byte		N03   , Dn3 
	.byte	W06
	.byte		        As2 , v080
	.byte		N03   , Dn3 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
mus_egg_utopia__act_1_3_006:
	.byte		N03   , Cn3 , v104
	.byte		N03   , En3 
	.byte	W06
	.byte		        Cn3 , v100
	.byte		N03   , En3 
	.byte	W06
	.byte		        Cn3 , v080
	.byte		N03   , En3 
	.byte	W12
	.byte		        Cn3 , v104
	.byte		N03   , En3 
	.byte	W06
	.byte		        Cn3 , v100
	.byte		N03   , En3 
	.byte	W06
	.byte		        Cn3 , v080
	.byte		N03   , En3 
	.byte	W12
	.byte		        Cn3 , v104
	.byte		N03   , En3 
	.byte	W06
	.byte		        Cn3 , v100
	.byte		N03   , En3 
	.byte	W06
	.byte		        Cn3 , v080
	.byte		N03   , En3 
	.byte	W12
	.byte		        Cn3 , v104
	.byte		N03   , En3 
	.byte	W06
	.byte		        Cn3 , v100
	.byte		N03   , En3 
	.byte	W06
	.byte		        Cn3 , v080
	.byte		N03   , En3 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_3_004
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_3_006
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_3_004
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_3_006
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_3_004
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_3_006
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
	.byte	GOTO
	 mPtr	mus_egg_utopia__act_1_3_B1
mus_egg_utopia__act_1_3_B2:
@ 052   ----------------------------------------
	.byte	FINE

@ **************** Track 4 (Midi-Chn.4) ****************

mus_egg_utopia__act_1_4:
	.byte	KEYSH , mus_egg_utopia__act_1_key+0
mus_egg_utopia__act_1_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 73
	.byte		VOL   , 110*mus_egg_utopia__act_1_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 56
	.byte		LFODL , 0
	.byte		MOD   , 0
	.byte		MODT  , 2
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        As1 
	.byte	W12
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
@ 001   ----------------------------------------
mus_egg_utopia__act_1_4_001:
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        As1 
	.byte	W12
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_001
@ 003   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_001
@ 004   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_001
@ 005   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_001
@ 006   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_001
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_001
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_001
@ 009   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_001
@ 010   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_001
@ 011   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_001
@ 012   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_001
@ 013   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_001
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_001
@ 015   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_001
@ 016   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_001
@ 017   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_001
@ 018   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_001
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_001
@ 020   ----------------------------------------
mus_egg_utopia__act_1_4_020:
	.byte		N06   , As1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W12
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W12
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte	PEND
@ 021   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_020
@ 022   ----------------------------------------
mus_egg_utopia__act_1_4_022:
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En2 
	.byte	W12
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte	PEND
@ 023   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_022
@ 024   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_020
@ 025   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_020
@ 026   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_022
@ 027   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_022
@ 028   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_001
@ 029   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_001
@ 030   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_001
@ 031   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_001
@ 032   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_001
@ 033   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_001
@ 034   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_001
@ 035   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_001
@ 036   ----------------------------------------
mus_egg_utopia__act_1_4_036:
	.byte		N05   , Gn1 , v127
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 037   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_036
@ 038   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_036
@ 039   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_036
@ 040   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_036
@ 041   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_036
@ 042   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_036
@ 043   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_036
@ 044   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_036
@ 045   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_036
@ 046   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_036
@ 047   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_036
@ 048   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_036
@ 049   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_036
@ 050   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_036
@ 051   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_036
	.byte	GOTO
	 mPtr	mus_egg_utopia__act_1_4_B1
mus_egg_utopia__act_1_4_B2:
@ 052   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_036
@ 053   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_036
@ 054   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_036
@ 055   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_4_036
@ 056   ----------------------------------------
	.byte	FINE

@ **************** Track 5 (Midi-Chn.5) ****************

mus_egg_utopia__act_1_5:
	.byte	KEYSH , mus_egg_utopia__act_1_key+0
mus_egg_utopia__act_1_5_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 71
	.byte		VOL   , 127*mus_egg_utopia__act_1_mvl/mxv
	.byte		PAN   , c_v+63
	.byte		BENDR , 3
	.byte		LFOS  , 23
	.byte		LFODL , 22
	.byte		MOD   , 4
	.byte		MODT  , 0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_egg_utopia__act_1_5_004:
	.byte		VOL   , 127*mus_egg_utopia__act_1_mvl/mxv
	.byte		TIE   , Dn3 , v100
	.byte	W06
	.byte		VOL   , 125*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        114*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        103*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        92*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        81*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        70*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        58*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        61*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        65*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        67*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        72*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        74*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        79*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        82*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        86*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
mus_egg_utopia__act_1_5_005:
	.byte		VOL   , 89*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        93*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        97*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        100*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        104*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        107*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        111*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        114*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        118*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        121*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        125*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        127*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        127*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        127*mus_egg_utopia__act_1_mvl/mxv
	.byte	W18
	.byte	PEND
	.byte		EOT   , Dn3 
@ 006   ----------------------------------------
mus_egg_utopia__act_1_5_006:
	.byte		VOL   , 122*mus_egg_utopia__act_1_mvl/mxv
	.byte		TIE   , En3 , v100
	.byte	W06
	.byte		VOL   , 119*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        117*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        115*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        112*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        109*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        107*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        104*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        101*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        99*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        96*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        93*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        91*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        88*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        85*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        82*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte	PEND
@ 007   ----------------------------------------
mus_egg_utopia__act_1_5_007:
	.byte		VOL   , 80*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        78*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        74*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        72*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        70*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        67*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        64*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        62*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        59*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        56*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        54*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        51*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        48*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        46*mus_egg_utopia__act_1_mvl/mxv
	.byte	W18
	.byte	PEND
	.byte		EOT   , En3 
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_5_004
@ 009   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_5_005
	.byte		EOT   , Dn3 
@ 010   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_5_006
@ 011   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_5_007
	.byte		EOT   , En3 
@ 012   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_5_004
@ 013   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_5_005
	.byte		EOT   , Dn3 
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_5_006
@ 015   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_5_007
	.byte		EOT   , En3 
@ 016   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_5_004
@ 017   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_5_005
	.byte		EOT   , Dn3 
@ 018   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_5_006
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_5_007
	.byte		EOT   , En3 
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
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_5_004
@ 029   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_5_005
	.byte		EOT   , Dn3 
@ 030   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_5_006
@ 031   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_5_007
	.byte		EOT   , En3 
@ 032   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_5_004
@ 033   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_5_005
	.byte		EOT   , Dn3 
@ 034   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_5_006
@ 035   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_5_007
	.byte		EOT   , En3 
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W48
	.byte	W03
	.byte		N44   , Gn2 , v127
	.byte	W44
	.byte		N48   , Dn3 
	.byte	W01
@ 039   ----------------------------------------
	.byte	W48
	.byte	W01
	.byte		N44   , Gn3 
	.byte	W44
	.byte	W01
	.byte		TIE   , Dn4 
	.byte	W02
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W24
	.byte		EOT   
	.byte		N36   , An3 
	.byte	W36
	.byte	W03
	.byte		N32   , Bn3 
	.byte	W32
	.byte	W01
@ 042   ----------------------------------------
	.byte	W02
	.byte		N20   , Cn4 
	.byte	W21
	.byte		N15   , Fn4 
	.byte	W16
	.byte		N56   , Cn4 , v100
	.byte	W56
	.byte	W01
@ 043   ----------------------------------------
	.byte	W02
	.byte		N03   , Bn3 , v127
	.byte	W04
	.byte		N06   , Cn4 
	.byte	W07
	.byte		N36   , An3 
	.byte	W36
	.byte	W01
	.byte		N03   , Gn3 
	.byte	W04
	.byte		N06   , An3 
	.byte	W06
	.byte		N36   , Fn3 
	.byte	W36
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W01
	.byte		N48   , As2 
	.byte	W48
	.byte		N96   , Dn3 
	.byte	W44
	.byte	W03
@ 047   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N44   , Gn3 
	.byte	W48
	.byte	W01
@ 048   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		        Dn4 
	.byte	W01
@ 049   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		        As3 
	.byte	W44
	.byte	W03
	.byte		N03   , Gs3 
	.byte	W02
@ 050   ----------------------------------------
	.byte	W01
	.byte		N44   , An3 
	.byte	W44
	.byte	W03
	.byte		N01   , Ds3 
	.byte	W01
	.byte		N48   , Fn3 
	.byte	W44
	.byte	W03
@ 051   ----------------------------------------
	.byte	W02
	.byte		N92   , Dn3 
	.byte	W92
	.byte	W02
	.byte	GOTO
	 mPtr	mus_egg_utopia__act_1_5_B1
mus_egg_utopia__act_1_5_B2:
@ 052   ----------------------------------------
	.byte	FINE

@ **************** Track 6 (Midi-Chn.6) ****************

mus_egg_utopia__act_1_6:
	.byte	KEYSH , mus_egg_utopia__act_1_key+0
mus_egg_utopia__act_1_6_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 72
	.byte		MOD   , 4
	.byte		VOL   , 127*mus_egg_utopia__act_1_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		BENDR , 3
	.byte		LFOS  , 23
	.byte		MOD   , 4
	.byte		LFODL , 22
	.byte		MODT  , 0
	.byte		N05   , Gn1 , v127
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn4 , v124
	.byte	W06
	.byte		        Gn4 , v127
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N05   , Gn1 , v088
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn4 , v084
	.byte	W06
	.byte		        Gn4 , v088
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte		PAN   , c_v+63
	.byte		N05   , Gn1 , v127
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn4 , v124
	.byte	W06
	.byte		        Gn4 , v127
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N05   , Gn1 , v088
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn4 , v084
	.byte	W06
	.byte		        Gn4 , v088
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_egg_utopia__act_1_6_004:
	.byte		VOL   , 127*mus_egg_utopia__act_1_mvl/mxv
	.byte		TIE   , As2 , v092
	.byte	W06
	.byte		VOL   , 125*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        114*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        103*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        92*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        81*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        70*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        58*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        61*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        65*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        67*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        72*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        74*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        79*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        82*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        86*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
mus_egg_utopia__act_1_6_005:
	.byte		VOL   , 89*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        93*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        97*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        100*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        104*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        107*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        111*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        114*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        118*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        121*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        125*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        127*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        127*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        127*mus_egg_utopia__act_1_mvl/mxv
	.byte	W18
	.byte	PEND
	.byte		EOT   , As2 
@ 006   ----------------------------------------
mus_egg_utopia__act_1_6_006:
	.byte		VOL   , 122*mus_egg_utopia__act_1_mvl/mxv
	.byte		TIE   , Cn3 , v092
	.byte	W06
	.byte		VOL   , 119*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        117*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        115*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        112*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        109*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        107*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        104*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        101*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        99*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        96*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        93*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        91*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        88*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        85*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        82*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte	PEND
@ 007   ----------------------------------------
mus_egg_utopia__act_1_6_007:
	.byte		VOL   , 80*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        78*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        74*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        72*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        70*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        67*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        64*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        62*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        59*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        56*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        54*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        51*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        48*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        46*mus_egg_utopia__act_1_mvl/mxv
	.byte	W18
	.byte	PEND
	.byte		EOT   , Cn3 
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_6_004
@ 009   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_6_005
	.byte		EOT   , As2 
@ 010   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_6_006
@ 011   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_6_007
	.byte		EOT   , Cn3 
@ 012   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_6_004
@ 013   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_6_005
	.byte		EOT   , As2 
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_6_006
@ 015   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_6_007
	.byte		EOT   , Cn3 
@ 016   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_6_004
@ 017   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_6_005
	.byte		EOT   , As2 
@ 018   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_6_006
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_6_007
	.byte		EOT   , Cn3 
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
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_6_004
@ 029   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_6_005
	.byte		EOT   , As2 
@ 030   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_6_006
@ 031   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_6_007
	.byte		EOT   , Cn3 
@ 032   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_6_004
@ 033   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_6_005
	.byte		EOT   , As2 
@ 034   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_6_006
@ 035   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_6_007
	.byte		EOT   , Cn3 
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
	.byte		MOD   , 8
	.byte	W24
	.byte		N36   , An3 , v127
	.byte	W36
	.byte	W03
	.byte		        Bn3 
	.byte	W32
	.byte	W01
@ 042   ----------------------------------------
	.byte	W02
	.byte		N21   , Cn4 
	.byte	W21
	.byte		N15   , Fn4 
	.byte	W16
	.byte		N60   , Cn4 , v100
	.byte	W56
	.byte	W01
@ 043   ----------------------------------------
	.byte	W02
	.byte		N05   , Bn3 , v127
	.byte	W04
	.byte		N08   , Cn4 
	.byte	W07
	.byte		N36   , An3 
	.byte	W36
	.byte	W01
	.byte		N05   , Gn3 
	.byte	W04
	.byte		N08   , An3 
	.byte	W06
	.byte		N32   , Fn3 
	.byte	W36
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		N01   , Dn4 
	.byte	W01
@ 049   ----------------------------------------
	.byte		N44   
	.byte	W44
	.byte	W03
	.byte		        As3 
	.byte	W44
	.byte	W03
	.byte		N03   , Gs3 
	.byte	W02
@ 050   ----------------------------------------
	.byte	W01
	.byte		N44   , An3 
	.byte	W44
	.byte	W03
	.byte		N01   , Ds3 
	.byte	W01
	.byte		N48   , Fn3 
	.byte	W44
	.byte	W03
@ 051   ----------------------------------------
	.byte	W02
	.byte		N92   , Dn3 
	.byte	W92
	.byte	W02
	.byte	GOTO
	 mPtr	mus_egg_utopia__act_1_6_B1
mus_egg_utopia__act_1_6_B2:
@ 052   ----------------------------------------
	.byte	FINE

@ **************** Track 7 (Midi-Chn.7) ****************

mus_egg_utopia__act_1_7:
	.byte	KEYSH , mus_egg_utopia__act_1_key+0
mus_egg_utopia__act_1_7_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 76
	.byte		VOL   , 127*mus_egg_utopia__act_1_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 13
	.byte		LFOS  , 18
	.byte		LFODL , 20
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		BEND  , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_egg_utopia__act_1_7_004:
	.byte		VOL   , 127*mus_egg_utopia__act_1_mvl/mxv
	.byte		TIE   , As2 , v080
	.byte		TIE   , Dn3 , v088
	.byte	W06
	.byte		VOL   , 125*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        114*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        103*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        92*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        81*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        70*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        58*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        61*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        65*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        67*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        72*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        74*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        79*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        82*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        86*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
mus_egg_utopia__act_1_7_005:
	.byte		VOL   , 89*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        93*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        97*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        100*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        104*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        107*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        111*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        114*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        118*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        121*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        125*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        127*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        127*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        127*mus_egg_utopia__act_1_mvl/mxv
	.byte	W18
	.byte	PEND
	.byte		EOT   , As2 
	.byte		        Dn3 
@ 006   ----------------------------------------
mus_egg_utopia__act_1_7_006:
	.byte		VOL   , 122*mus_egg_utopia__act_1_mvl/mxv
	.byte		TIE   , Cn3 , v080
	.byte		TIE   , En3 , v088
	.byte	W06
	.byte		VOL   , 119*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        117*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        115*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        112*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        109*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        107*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        104*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        101*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        99*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        96*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        93*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        91*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        88*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        85*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        82*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte	PEND
@ 007   ----------------------------------------
mus_egg_utopia__act_1_7_007:
	.byte		VOL   , 80*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        78*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        74*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        72*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        70*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        67*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        64*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        62*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        59*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        56*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        54*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        51*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        48*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        46*mus_egg_utopia__act_1_mvl/mxv
	.byte	W18
	.byte	PEND
	.byte		EOT   , Cn3 
	.byte		        En3 
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_7_004
@ 009   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_7_005
	.byte		EOT   , As2 
	.byte		        Dn3 
@ 010   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_7_006
@ 011   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_7_007
	.byte		EOT   , Cn3 
	.byte		        En3 
@ 012   ----------------------------------------
	.byte		VOL   , 127*mus_egg_utopia__act_1_mvl/mxv
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
	.byte		N96   , As2 , v116
	.byte	W92
	.byte	W02
	.byte		N48   , An2 , v104
	.byte	W02
@ 021   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		        As2 
	.byte	W48
	.byte	W01
	.byte		TIE   , Cn3 , v108
	.byte	W01
@ 022   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		N48   , Dn3 
	.byte	W02
	.byte		EOT   , Cn3 
@ 023   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N48   , En3 , v116
	.byte	W48
	.byte	W01
@ 024   ----------------------------------------
	.byte		N96   , As2 , v104
	.byte	W92
	.byte	W03
	.byte		N48   , An2 , v096
	.byte	W01
@ 025   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		N44   , As2 , v108
	.byte	W44
	.byte	W03
	.byte		TIE   , Cn3 , v104
	.byte	W03
@ 026   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		N48   , Dn3 , v108
	.byte	W01
@ 027   ----------------------------------------
	.byte	W01
	.byte		EOT   , Cn3 
	.byte	W44
	.byte	W02
	.byte		N48   , En3 , v104
	.byte	W48
	.byte	W01
@ 028   ----------------------------------------
	.byte	W48
	.byte		N44   , Gn3 , v120
	.byte	W48
@ 029   ----------------------------------------
mus_egg_utopia__act_1_7_029:
	.byte		N44   , An3 , v088
	.byte	W48
	.byte		N92   , As3 , v080
	.byte	W48
	.byte	PEND
@ 030   ----------------------------------------
	.byte	W48
	.byte		N44   , Cn4 , v096
	.byte	W48
@ 031   ----------------------------------------
mus_egg_utopia__act_1_7_031:
	.byte		N44   , Dn4 , v096
	.byte	W48
	.byte		N48   , En4 , v092
	.byte	W48
	.byte	PEND
@ 032   ----------------------------------------
	.byte	W48
	.byte		N44   , Gn3 , v120
	.byte	W48
@ 033   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_7_029
@ 034   ----------------------------------------
	.byte	W48
	.byte		N44   , Cn4 , v096
	.byte	W48
@ 035   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_7_031
@ 036   ----------------------------------------
	.byte		N90   , Dn4 , v092
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W48
	.byte	W03
	.byte		N44   , Gn2 , v127
	.byte	W44
	.byte		N48   , Dn3 
	.byte	W01
@ 039   ----------------------------------------
	.byte	W48
	.byte	W01
	.byte		N44   , Gn3 
	.byte	W44
	.byte	W01
	.byte		TIE   , Dn4 
	.byte	W02
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W22
	.byte		EOT   
	.byte	W02
	.byte		N36   , An3 
	.byte	W36
	.byte	W03
	.byte		        Bn3 
	.byte	W32
	.byte	W01
@ 042   ----------------------------------------
	.byte	W02
	.byte		N21   , Cn4 
	.byte	W21
	.byte		N15   , Fn4 
	.byte	W16
	.byte		N60   , Cn4 , v100
	.byte	W56
	.byte	W01
@ 043   ----------------------------------------
	.byte	W02
	.byte		N05   , Bn3 , v127
	.byte	W04
	.byte		N08   , Cn4 
	.byte	W07
	.byte		N36   , An3 
	.byte	W36
	.byte	W01
	.byte		N05   , Gn3 
	.byte	W04
	.byte		N08   , An3 
	.byte	W06
	.byte		N32   , Fn3 
	.byte	W36
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W01
	.byte		N48   , As2 
	.byte	W48
	.byte		N92   , Dn3 
	.byte	W44
	.byte	W03
@ 047   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		TIE   , Gn3 
	.byte	W48
	.byte	W01
@ 048   ----------------------------------------
	.byte	W80
	.byte	W01
	.byte		EOT   
	.byte	W14
	.byte		N44   , Dn4 
	.byte	W01
@ 049   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		        As3 
	.byte	W44
	.byte	W03
	.byte		N03   , Gs3 
	.byte	W02
@ 050   ----------------------------------------
	.byte	W01
	.byte		N44   , An3 
	.byte	W44
	.byte	W03
	.byte		N01   , Ds3 
	.byte	W01
	.byte		N48   , Fn3 
	.byte	W44
	.byte	W03
@ 051   ----------------------------------------
	.byte	W02
	.byte		N92   , Dn3 
	.byte	W92
	.byte	W02
	.byte	GOTO
	 mPtr	mus_egg_utopia__act_1_7_B1
mus_egg_utopia__act_1_7_B2:
@ 052   ----------------------------------------
	.byte	FINE

@ **************** Track 8 (Midi-Chn.8) ****************

mus_egg_utopia__act_1_8:
	.byte	KEYSH , mus_egg_utopia__act_1_key+0
mus_egg_utopia__act_1_8_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 77
	.byte		VOL   , 119*mus_egg_utopia__act_1_mvl/mxv
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N05   , Gn2 , v127
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gn5 , v124
	.byte	W06
	.byte		        Gn5 , v127
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N05   , Gn2 , v088
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gn5 , v084
	.byte	W06
	.byte		        Gn5 , v088
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
mus_egg_utopia__act_1_8_002:
	.byte		PAN   , c_v+63
	.byte		N05   , Gn2 , v127
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gn5 , v124
	.byte	W06
	.byte		        Gn5 , v127
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N05   , Gn2 , v088
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gn5 , v084
	.byte	W06
	.byte		        Gn5 , v088
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte	PEND
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
	.byte		PAN   , c_v+63
	.byte	W96
@ 020   ----------------------------------------
	.byte		VOL   , 63*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        67*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        71*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        74*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        79*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , As3 , v080
	.byte	W06
	.byte		VOL   , 82*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Fn3 
	.byte	W06
	.byte		VOL   , 87*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , As3 
	.byte	W06
	.byte		VOL   , 91*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Fn3 
	.byte	W06
	.byte		VOL   , 95*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Dn4 
	.byte	W06
	.byte		VOL   , 99*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , As3 
	.byte	W06
	.byte		VOL   , 103*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Dn4 
	.byte	W06
	.byte		VOL   , 107*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , As3 
	.byte	W06
	.byte		VOL   , 111*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Fn4 
	.byte	W06
	.byte		VOL   , 115*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Dn4 
	.byte	W06
	.byte		VOL   , 119*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Fn4 
	.byte	W06
	.byte		VOL   , 123*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Dn4 
	.byte	W06
@ 021   ----------------------------------------
mus_egg_utopia__act_1_8_021:
	.byte		VOL   , 127*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , As4 , v080
	.byte	W06
	.byte		VOL   , 124*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Fn4 
	.byte	W06
	.byte		VOL   , 119*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , As4 
	.byte	W06
	.byte		VOL   , 116*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Fn4 
	.byte	W06
	.byte		VOL   , 112*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Dn5 
	.byte	W06
	.byte		VOL   , 109*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , As4 
	.byte	W06
	.byte		VOL   , 104*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Dn5 
	.byte	W06
	.byte		VOL   , 102*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , As4 
	.byte	W06
	.byte		VOL   , 97*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Fn5 
	.byte	W06
	.byte		VOL   , 94*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Dn5 
	.byte	W06
	.byte		VOL   , 91*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Fn5 
	.byte	W06
	.byte		VOL   , 87*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Dn5 
	.byte	W06
	.byte		VOL   , 82*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , As5 
	.byte	W06
	.byte		VOL   , 80*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Fn5 
	.byte	W06
	.byte		VOL   , 76*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , As5 
	.byte	W06
	.byte		VOL   , 72*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Fn5 
	.byte	W06
	.byte	PEND
@ 022   ----------------------------------------
mus_egg_utopia__act_1_8_022:
	.byte		VOL   , 63*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , As5 , v060
	.byte	W06
	.byte		VOL   , 67*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Fn5 
	.byte	W06
	.byte		VOL   , 71*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , As5 
	.byte	W06
	.byte		VOL   , 74*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Fn5 
	.byte	W06
	.byte		VOL   , 79*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Cn4 , v080
	.byte	W06
	.byte		VOL   , 82*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Gn3 
	.byte	W06
	.byte		VOL   , 87*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Cn4 
	.byte	W06
	.byte		VOL   , 91*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Gn3 
	.byte	W06
	.byte		VOL   , 95*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , En4 
	.byte	W06
	.byte		VOL   , 99*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Cn4 
	.byte	W06
	.byte		VOL   , 103*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , En4 
	.byte	W06
	.byte		VOL   , 107*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Cn4 
	.byte	W06
	.byte		VOL   , 111*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Gn4 
	.byte	W06
	.byte		VOL   , 115*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , En4 
	.byte	W06
	.byte		VOL   , 119*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Gn4 
	.byte	W06
	.byte		VOL   , 123*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , En4 
	.byte	W06
	.byte	PEND
@ 023   ----------------------------------------
mus_egg_utopia__act_1_8_023:
	.byte		VOL   , 127*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Cn5 , v080
	.byte	W06
	.byte		VOL   , 124*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Gn4 
	.byte	W06
	.byte		VOL   , 119*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Cn5 
	.byte	W06
	.byte		VOL   , 116*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Gn4 
	.byte	W06
	.byte		VOL   , 112*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , En5 
	.byte	W06
	.byte		VOL   , 109*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Cn5 
	.byte	W06
	.byte		VOL   , 104*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , En5 
	.byte	W06
	.byte		VOL   , 102*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Cn5 
	.byte	W06
	.byte		VOL   , 97*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Gn5 
	.byte	W06
	.byte		VOL   , 94*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , En5 
	.byte	W06
	.byte		VOL   , 91*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Gn5 
	.byte	W06
	.byte		VOL   , 87*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , En5 
	.byte	W06
	.byte		VOL   , 82*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Cn6 
	.byte	W06
	.byte		VOL   , 80*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Gn5 
	.byte	W06
	.byte		VOL   , 76*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Cn6 
	.byte	W06
	.byte		VOL   , 72*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Gn5 
	.byte	W06
	.byte	PEND
@ 024   ----------------------------------------
	.byte		VOL   , 63*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Cn6 , v056
	.byte	W06
	.byte		VOL   , 67*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Gn5 
	.byte	W06
	.byte		VOL   , 71*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Cn6 
	.byte	W06
	.byte		VOL   , 74*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Gn5 
	.byte	W06
	.byte		VOL   , 79*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , As3 , v080
	.byte	W06
	.byte		VOL   , 82*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Fn3 
	.byte	W06
	.byte		VOL   , 87*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , As3 
	.byte	W06
	.byte		VOL   , 91*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Fn3 
	.byte	W06
	.byte		VOL   , 95*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Dn4 
	.byte	W06
	.byte		VOL   , 99*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , As3 
	.byte	W06
	.byte		VOL   , 103*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Dn4 
	.byte	W06
	.byte		VOL   , 107*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , As3 
	.byte	W06
	.byte		VOL   , 111*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Fn4 
	.byte	W06
	.byte		VOL   , 115*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Dn4 
	.byte	W06
	.byte		VOL   , 119*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Fn4 
	.byte	W06
	.byte		VOL   , 123*mus_egg_utopia__act_1_mvl/mxv
	.byte		N05   , Dn4 
	.byte	W06
@ 025   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_8_021
@ 026   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_8_022
@ 027   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_8_023
@ 028   ----------------------------------------
	.byte		N05   , Cn6 , v052
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Cn6 
	.byte	W06
	.byte		        Gn5 
	.byte	W78
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
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_8_002
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte		PAN   , c_v+63
	.byte		N05   , Gn2 , v127
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gn5 , v124
	.byte	W06
	.byte		        Gn5 , v127
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W54
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
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_8_002
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_8_002
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_egg_utopia__act_1_8_B1
mus_egg_utopia__act_1_8_B2:
@ 052   ----------------------------------------
	.byte	FINE

@ **************** Track 9 (Midi-Chn.9) ****************

mus_egg_utopia__act_1_9:
	.byte	KEYSH , mus_egg_utopia__act_1_key+0
mus_egg_utopia__act_1_9_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 78
	.byte		VOL   , 119*mus_egg_utopia__act_1_mvl/mxv
	.byte		PAN   , c_v-62
	.byte		MOD   , 0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
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
	.byte		VOL   , 63*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        67*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        71*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        74*mus_egg_utopia__act_1_mvl/mxv
	.byte	W06
	.byte		        79*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Fn3 , v080
	.byte	W04
	.byte		VOL   , 82*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Dn3 
	.byte	W04
	.byte		VOL   , 87*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Fn3 
	.byte	W04
	.byte		VOL   , 91*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Dn3 
	.byte	W04
	.byte		VOL   , 95*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , As3 
	.byte	W04
	.byte		VOL   , 99*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Fn3 
	.byte	W04
	.byte		VOL   , 103*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , As3 
	.byte	W04
	.byte		VOL   , 107*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Fn3 
	.byte	W04
	.byte		VOL   , 111*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Dn4 
	.byte	W04
	.byte		VOL   , 115*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , As3 
	.byte	W04
	.byte		VOL   , 119*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Dn4 
	.byte	W04
	.byte		VOL   , 123*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , As3 
	.byte	W04
@ 021   ----------------------------------------
mus_egg_utopia__act_1_9_021:
	.byte		VOL   , 127*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Fn4 , v080
	.byte	W04
	.byte		VOL   , 124*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Dn4 
	.byte	W04
	.byte		VOL   , 119*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Fn4 
	.byte	W04
	.byte		VOL   , 116*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Dn4 
	.byte	W04
	.byte		VOL   , 112*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , As4 
	.byte	W04
	.byte		VOL   , 109*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Fn4 
	.byte	W04
	.byte		VOL   , 104*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , As4 
	.byte	W04
	.byte		VOL   , 102*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Fn4 
	.byte	W04
	.byte		VOL   , 97*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Dn5 
	.byte	W04
	.byte		VOL   , 94*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , As4 
	.byte	W04
	.byte		VOL   , 91*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Dn5 
	.byte	W04
	.byte		VOL   , 87*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , As4 
	.byte	W04
	.byte		VOL   , 82*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Fn5 
	.byte	W04
	.byte		VOL   , 80*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Dn5 
	.byte	W04
	.byte		VOL   , 76*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Fn5 
	.byte	W04
	.byte		VOL   , 72*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Dn5 
	.byte	W04
	.byte	PEND
@ 022   ----------------------------------------
mus_egg_utopia__act_1_9_022:
	.byte		VOL   , 63*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Fn5 , v056
	.byte	W04
	.byte		VOL   , 67*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Dn5 
	.byte	W04
	.byte		VOL   , 71*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Fn5 
	.byte	W04
	.byte		VOL   , 74*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Dn5 
	.byte	W04
	.byte		VOL   , 79*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Gn3 , v080
	.byte	W04
	.byte		VOL   , 82*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , En3 
	.byte	W04
	.byte		VOL   , 87*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Gn3 
	.byte	W04
	.byte		VOL   , 91*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , En3 
	.byte	W04
	.byte		VOL   , 95*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Cn4 
	.byte	W04
	.byte		VOL   , 99*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Gn3 
	.byte	W04
	.byte		VOL   , 103*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Cn4 
	.byte	W04
	.byte		VOL   , 107*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Gn3 
	.byte	W04
	.byte		VOL   , 111*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , En4 
	.byte	W04
	.byte		VOL   , 115*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Cn4 
	.byte	W04
	.byte		VOL   , 119*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , En4 
	.byte	W04
	.byte		VOL   , 123*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Cn4 
	.byte	W04
	.byte	PEND
@ 023   ----------------------------------------
mus_egg_utopia__act_1_9_023:
	.byte		VOL   , 127*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Gn4 , v080
	.byte	W04
	.byte		VOL   , 124*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , En4 
	.byte	W04
	.byte		VOL   , 119*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Gn4 
	.byte	W04
	.byte		VOL   , 116*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , En4 
	.byte	W04
	.byte		VOL   , 112*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Cn5 
	.byte	W04
	.byte		VOL   , 109*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Gn4 
	.byte	W04
	.byte		VOL   , 104*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Cn5 
	.byte	W04
	.byte		VOL   , 102*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Gn4 
	.byte	W04
	.byte		VOL   , 97*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , En5 
	.byte	W04
	.byte		VOL   , 94*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Cn5 
	.byte	W04
	.byte		VOL   , 91*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , En5 
	.byte	W04
	.byte		VOL   , 87*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Cn5 
	.byte	W04
	.byte		VOL   , 82*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Gn5 
	.byte	W04
	.byte		VOL   , 80*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , En5 
	.byte	W04
	.byte		VOL   , 76*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Gn5 
	.byte	W04
	.byte		VOL   , 72*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , En5 
	.byte	W04
	.byte	PEND
@ 024   ----------------------------------------
	.byte		VOL   , 63*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Gn5 , v052
	.byte	W04
	.byte		VOL   , 67*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , En5 
	.byte	W04
	.byte		VOL   , 71*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Gn5 
	.byte	W04
	.byte		VOL   , 74*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , En5 
	.byte	W04
	.byte		VOL   , 79*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Fn3 , v080
	.byte	W04
	.byte		VOL   , 82*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Dn3 
	.byte	W04
	.byte		VOL   , 87*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Fn3 
	.byte	W04
	.byte		VOL   , 91*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Dn3 
	.byte	W04
	.byte		VOL   , 95*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , As3 
	.byte	W04
	.byte		VOL   , 99*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Fn3 
	.byte	W04
	.byte		VOL   , 103*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , As3 
	.byte	W04
	.byte		VOL   , 107*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Fn3 
	.byte	W04
	.byte		VOL   , 111*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Dn4 
	.byte	W04
	.byte		VOL   , 115*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , As3 
	.byte	W04
	.byte		VOL   , 119*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Dn4 
	.byte	W04
	.byte		VOL   , 123*mus_egg_utopia__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , As3 
	.byte	W04
@ 025   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_9_021
@ 026   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_9_022
@ 027   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_9_023
@ 028   ----------------------------------------
	.byte	W02
	.byte		N05   , Gn5 , v052
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        En5 
	.byte	W76
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
mus_egg_utopia__act_1_9_036:
	.byte		N05   , Gn1 , v127
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 037   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_9_036
@ 038   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_9_036
@ 039   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_9_036
@ 040   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_9_036
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_9_036
@ 045   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_9_036
@ 046   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_9_036
@ 047   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_9_036
@ 048   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_9_036
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_egg_utopia__act_1_9_B1
mus_egg_utopia__act_1_9_B2:
@ 052   ----------------------------------------
	.byte	FINE

@ **************** Track 10 (Midi-Chn.10) ****************

mus_egg_utopia__act_1_10:
	.byte	KEYSH , mus_egg_utopia__act_1_key+0
mus_egg_utopia__act_1_10_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 75
	.byte		VOL   , 80*mus_egg_utopia__act_1_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 56
	.byte		LFODL , 0
	.byte		MOD   , 0
	.byte		MODT  , 2
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_egg_utopia__act_1_10_004:
	.byte		N05   , Gn2 , v127
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
mus_egg_utopia__act_1_10_005:
	.byte		N05   , Gn3 , v127
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
mus_egg_utopia__act_1_10_006:
	.byte		N05   , Gn2 , v127
	.byte	W06
	.byte		        As2 , v120
	.byte	W06
	.byte		        Gn3 , v112
	.byte	W06
	.byte		        As3 , v104
	.byte	W06
	.byte		        Gn2 , v096
	.byte	W06
	.byte		        As2 , v088
	.byte	W06
	.byte		        Gn3 , v080
	.byte	W06
	.byte		        As3 , v072
	.byte	W06
	.byte		        Gn2 , v064
	.byte	W06
	.byte		        As2 , v060
	.byte	W06
	.byte		        Gn3 , v052
	.byte	W06
	.byte		        As3 , v044
	.byte	W06
	.byte		        Gn2 , v036
	.byte	W06
	.byte		        As2 , v028
	.byte	W06
	.byte		        Gn3 , v020
	.byte	W06
	.byte		        As3 , v012
	.byte	W06
	.byte	PEND
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_10_004
@ 009   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_10_005
@ 010   ----------------------------------------
	.byte	PATT
	 mPtr	mus_egg_utopia__act_1_10_006
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
	.byte		N05   , Gn3 , v108
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		N05   
	.byte	W06
@ 017   ----------------------------------------
	.byte		        Dn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn3 , v104
	.byte	W06
	.byte		        Dn4 , v096
	.byte	W06
	.byte		        Gn4 , v088
	.byte	W06
	.byte		        Dn5 , v076
	.byte	W06
	.byte		        Gn3 , v068
	.byte	W06
	.byte		        Dn4 , v060
	.byte	W06
	.byte		        Gn4 , v048
	.byte	W06
	.byte		        Dn5 , v040
	.byte	W06
	.byte		        Gn3 , v032
	.byte	W06
	.byte		        Dn4 , v020
	.byte	W06
	.byte		        Gn4 , v012
	.byte	W06
	.byte		        Dn5 , v004
	.byte	W06
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
	.byte	GOTO
	 mPtr	mus_egg_utopia__act_1_10_B1
mus_egg_utopia__act_1_10_B2:
@ 052   ----------------------------------------
	.byte	FINE

@ **************** Track 11 (Midi-Chn.11) ****************

mus_egg_utopia__act_1_11:
	.byte	KEYSH , mus_egg_utopia__act_1_key+0
mus_egg_utopia__act_1_11_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 79
	.byte		VOL   , 80*mus_egg_utopia__act_1_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 56
	.byte		LFODL , 0
	.byte		MOD   , 0
	.byte		MODT  , 2
	.byte		N92   , Gn2 , v127
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte		N92   
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte		N92   
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte		N92   
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
	.byte		N92   
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
	.byte		N92   
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
	.byte	GOTO
	 mPtr	mus_egg_utopia__act_1_11_B1
mus_egg_utopia__act_1_11_B2:
@ 052   ----------------------------------------
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(mus_egg_utopia__act_1):
	.byte	11	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_egg_utopia__act_1_pri	@ Priority
	.byte	mus_egg_utopia__act_1_rev	@ Reverb

mAlignWord
	mPtr	mus_egg_utopia__act_1_grp

	mPtr	mus_egg_utopia__act_1_1
	mPtr	mus_egg_utopia__act_1_2
	mPtr	mus_egg_utopia__act_1_3
	mPtr	mus_egg_utopia__act_1_4
	mPtr	mus_egg_utopia__act_1_5
	mPtr	mus_egg_utopia__act_1_6
	mPtr	mus_egg_utopia__act_1_7
	mPtr	mus_egg_utopia__act_1_8
	mPtr	mus_egg_utopia__act_1_9
	mPtr	mus_egg_utopia__act_1_10
	mPtr	mus_egg_utopia__act_1_11

	.end
