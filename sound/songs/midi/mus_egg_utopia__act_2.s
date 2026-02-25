	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_egg_utopia__act_2_grp, voicegroup013
	.equ	mus_egg_utopia__act_2_pri, 0
	.equ	mus_egg_utopia__act_2_rev, reverb_set+0
	.equ	mus_egg_utopia__act_2_mvl, 110
	.equ	mus_egg_utopia__act_2_key, 0
	.equ	mus_egg_utopia__act_2_tbs, 1
	.equ	mus_egg_utopia__act_2_exg, 1
	.equ	mus_egg_utopia__act_2_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_egg_utopia__act_2)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_egg_utopia__act_2_1:
	.byte	KEYSH , mus_egg_utopia__act_2_key+0
mus_egg_utopia__act_2_1_B1:
/* 000   ----------------------------------------
 */	.byte	TEMPO , 160*mus_egg_utopia__act_2_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_egg_utopia__act_2_mvl/mxv
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
/* 001   ----------------------------------------
 */mus_egg_utopia__act_2_1_001:
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
/* 002   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_001
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_001
/* 004   ----------------------------------------
 */mus_egg_utopia__act_2_1_004:
	.byte		N03   , Dn1 , v044
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		N04   , Ds1 , v068
	.byte	W06
	.byte		N03   , Dn1 , v028
	.byte	W06
	.byte		        Dn1 , v044
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		N04   , Ds1 , v068
	.byte	W06
	.byte		N03   , Dn1 , v028
	.byte	W06
	.byte		        Dn1 , v044
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		N04   , Ds1 , v068
	.byte	W06
	.byte		N03   , Dn1 , v028
	.byte	W06
	.byte		        Dn1 , v044
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		N04   , Ds1 , v068
	.byte	W06
	.byte		N03   , Dn1 , v028
	.byte	W06
	.byte	PEND
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_004
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_004
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_004
/* 008   ----------------------------------------
 */mus_egg_utopia__act_2_1_008:
	.byte		N03   , Dn1 , v044
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		N04   , Ds1 , v068
	.byte	W06
	.byte		N03   , Dn1 , v028
	.byte	W06
	.byte		        Dn1 , v044
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		N04   , Dn1 , v068
	.byte	W06
	.byte		N03   , Dn1 , v028
	.byte	W06
	.byte		        Dn1 , v044
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		N04   , Dn1 , v068
	.byte	W06
	.byte		N03   , Dn1 , v028
	.byte	W06
	.byte		        Dn1 , v044
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		N04   , Dn1 , v068
	.byte	W06
	.byte		N03   , Dn1 , v028
	.byte	W06
	.byte	PEND
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_008
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_008
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_008
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_008
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_008
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_008
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_008
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_008
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_008
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_008
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_008
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_008
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_008
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_008
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_008
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_008
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_008
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_008
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_008
/* 028   ----------------------------------------
 */mus_egg_utopia__act_2_1_028:
	.byte		N03   , Ds1 , v076
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Dn1 , v080
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Ds1 , v076
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Dn1 , v080
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Ds1 , v076
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Dn1 , v080
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Ds1 , v076
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Dn1 , v080
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte	PEND
/* 029   ----------------------------------------
 */mus_egg_utopia__act_2_1_029:
	.byte		N03   , Ds1 , v076
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Dn1 , v080
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Ds1 , v076
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Dn1 , v080
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Ds1 , v076
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Dn1 , v080
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Ds1 , v076
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Dn1 , v080
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte	PEND
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_028
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_029
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_028
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_029
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_028
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_029
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_028
/* 037   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_029
/* 038   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_028
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_029
/* 040   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_028
/* 041   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_029
/* 042   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_028
/* 043   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_029
	.byte	GOTO
	 mPtr	mus_egg_utopia__act_2_1_B1
mus_egg_utopia__act_2_1_B2:
/* 044   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_028
/* 045   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_1_029
/* 046   ----------------------------------------
 */	.byte		N03   , Ds1 , v076
	.byte		N03   , Ds2 , v127
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W06
	.byte		        Dn1 , v080
	.byte	W06
	.byte		        Dn1 , v028
	.byte	W03
	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_egg_utopia__act_2_2:
	.byte	KEYSH , mus_egg_utopia__act_2_key+0
mus_egg_utopia__act_2_2_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 84
	.byte		VOL   , 127*mus_egg_utopia__act_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 13
	.byte		LFOS  , 18
	.byte		LFODL , 20
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		BEND  , c_v+0
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */mus_egg_utopia__act_2_2_002:
	.byte	W24
	.byte		N11   , As2 , v127
	.byte		N09   , Dn3 , v120
	.byte		N13   , Gn3 , v127
	.byte	W11
	.byte		N04   , Fn3 , v056
	.byte	W03
	.byte		N02   , En3 , v088
	.byte	W03
	.byte		N01   , Dn3 , v096
	.byte	W01
	.byte		        Cn3 , v100
	.byte	W01
	.byte		        Bn2 , v076
	.byte	W02
	.byte		        An2 , v096
	.byte	W02
	.byte		        Gn2 , v092
	.byte	W36
	.byte	W02
	.byte		N12   , An2 , v096
	.byte		N09   , Fs3 , v100
	.byte	W11
	.byte	PEND
/* 003   ----------------------------------------
 */mus_egg_utopia__act_2_2_003:
	.byte	W36
	.byte		N08   , Fn3 , v120
	.byte	W01
	.byte		        Gs2 , v116
	.byte	W32
	.byte	W03
	.byte		N12   , Gn2 , v096
	.byte		N12   , En3 , v104
	.byte	W24
	.byte	PEND
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_2_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_2_003
/* 008   ----------------------------------------
 */	.byte	W96
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */mus_egg_utopia__act_2_2_010:
	.byte	W24
	.byte		N12   , Gn2 , v116
	.byte		N12   , En3 , v120
	.byte	W24
	.byte		        An2 , v108
	.byte		N12   , Fn3 , v120
	.byte	W24
	.byte		        As2 , v116
	.byte		N12   , Gn3 
	.byte	W24
	.byte	PEND
/* 011   ----------------------------------------
 */mus_egg_utopia__act_2_2_011:
	.byte	W24
	.byte		N12   , Gn2 , v108
	.byte		N12   , En3 , v116
	.byte	W24
	.byte		        An2 , v108
	.byte		N12   , Fn3 , v116
	.byte	W24
	.byte		        As2 
	.byte		N12   , Gn3 
	.byte	W24
	.byte	PEND
/* 012   ----------------------------------------
 */	.byte	W96
/* 013   ----------------------------------------
 */	.byte	W96
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_2_010
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_2_011
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
 */	.byte	W48
	.byte	W03
	.byte		N44   , Gn1 , v127
	.byte	W44
	.byte		N48   , Dn2 
	.byte	W01
/* 031   ----------------------------------------
 */	.byte	W48
	.byte	W01
	.byte		N44   , Gn2 
	.byte	W44
	.byte	W01
	.byte		TIE   , Dn3 
	.byte	W02
/* 032   ----------------------------------------
 */	.byte	W96
/* 033   ----------------------------------------
 */	.byte	W23
	.byte		EOT   
	.byte	W72
	.byte	W01
/* 034   ----------------------------------------
 */	.byte	W96
/* 035   ----------------------------------------
 */	.byte	W96
/* 036   ----------------------------------------
 */	.byte	W96
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	W01
	.byte		N48   , As1 
	.byte	W48
	.byte		N92   , Dn2 
	.byte	W44
	.byte	W03
/* 039   ----------------------------------------
 */	.byte	W44
	.byte	W03
	.byte		TIE   , Gn2 
	.byte	W48
	.byte	W01
/* 040   ----------------------------------------
 */	.byte	W92
	.byte	W01
	.byte		EOT   
	.byte	W03
/* 041   ----------------------------------------
 */	.byte	W96
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_egg_utopia__act_2_2_B1
mus_egg_utopia__act_2_2_B2:
/* 044   ----------------------------------------
 */	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_egg_utopia__act_2_3:
	.byte	KEYSH , mus_egg_utopia__act_2_key+0
mus_egg_utopia__act_2_3_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 83
	.byte		VOL   , 110*mus_egg_utopia__act_2_mvl/mxv
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
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
/* 001   ----------------------------------------
 */mus_egg_utopia__act_2_3_001:
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
/* 002   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_001
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_001
/* 004   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_001
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_001
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_001
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_001
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_001
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_001
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_001
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_001
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_001
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_001
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_001
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_001
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_001
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_001
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_001
/* 020   ----------------------------------------
 */mus_egg_utopia__act_2_3_020:
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
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_020
/* 022   ----------------------------------------
 */mus_egg_utopia__act_2_3_022:
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
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_022
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_020
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_020
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_022
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_022
/* 028   ----------------------------------------
 */mus_egg_utopia__act_2_3_028:
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
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_028
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_028
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_028
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_028
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_028
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_028
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_028
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_028
/* 037   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_028
/* 038   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_028
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_028
/* 040   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_028
/* 041   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_028
/* 042   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_028
/* 043   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_028
	.byte	GOTO
	 mPtr	mus_egg_utopia__act_2_3_B1
mus_egg_utopia__act_2_3_B2:
/* 044   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_028
/* 045   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_3_028
/* 046   ----------------------------------------
 */	.byte		N05   , Gn1 , v127
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N05   
	.byte	W05
	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_egg_utopia__act_2_4:
	.byte	KEYSH , mus_egg_utopia__act_2_key+0
mus_egg_utopia__act_2_4_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 85
	.byte		VOL   , 78*mus_egg_utopia__act_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 56
	.byte		LFODL , 0
	.byte		MOD   , 0
	.byte		MODT  , 2
	.byte	W96
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
 */mus_egg_utopia__act_2_4_008:
	.byte		N05   , Gn0 , v127
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte	PEND
/* 009   ----------------------------------------
 */mus_egg_utopia__act_2_4_009:
	.byte		N05   , Dn2 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte	PEND
/* 010   ----------------------------------------
 */mus_egg_utopia__act_2_4_010:
	.byte		N05   , Gn1 , v127
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte	PEND
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_4_010
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_4_008
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_4_009
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_4_010
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_4_010
/* 016   ----------------------------------------
 */	.byte	W96
/* 017   ----------------------------------------
 */	.byte	W96
/* 018   ----------------------------------------
 */	.byte	W96
/* 019   ----------------------------------------
 */	.byte	W96
/* 020   ----------------------------------------
 */	.byte	W24
	.byte		N05   , As2 , v127
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
/* 021   ----------------------------------------
 */mus_egg_utopia__act_2_4_021:
	.byte		N05   , As3 , v127
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte	PEND
/* 022   ----------------------------------------
 */mus_egg_utopia__act_2_4_022:
	.byte		N05   , As4 , v112
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn3 , v127
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte	PEND
/* 023   ----------------------------------------
 */mus_egg_utopia__act_2_4_023:
	.byte		N05   , Cn4 , v127
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte	PEND
/* 024   ----------------------------------------
 */	.byte		        Cn5 , v112
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As2 , v127
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_4_021
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_4_022
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_4_023
/* 028   ----------------------------------------
 */	.byte		N05   , Cn5 , v104
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W78
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
	.byte	GOTO
	 mPtr	mus_egg_utopia__act_2_4_B1
mus_egg_utopia__act_2_4_B2:
/* 044   ----------------------------------------
 */	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_egg_utopia__act_2_5:
	.byte	KEYSH , mus_egg_utopia__act_2_key+0
mus_egg_utopia__act_2_5_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 81
	.byte	PRIO  , 30
	.byte		MOD   , 4
	.byte		VOL   , 127*mus_egg_utopia__act_2_mvl/mxv
	.byte		PAN   , c_v+63
	.byte		BENDR , 3
	.byte		PAN   , c_v-64
	.byte		LFOS  , 23
	.byte		LFODL , 22
	.byte		MOD   , 4
	.byte		MODT  , 0
	.byte		N04   , Gn1 , v127
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
	.byte		N04   , Gn1 , v088
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
/* 001   ----------------------------------------
 */mus_egg_utopia__act_2_5_001:
	.byte		N04   , Gn1 , v127
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte	PEND
/* 002   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_5_001
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_5_001
/* 004   ----------------------------------------
 */	.byte		MOD   , 4
	.byte		PAN   , c_v+63
	.byte		N04   , Gn1 , v127
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
	.byte		N04   , Gn1 , v088
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
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_5_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_5_001
/* 007   ----------------------------------------
 */	.byte		N04   , Gn1 , v127
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N04   
	.byte	W04
	.byte		PAN   , c_v+0
	.byte		N02   , Cs4 
	.byte	W02
/* 008   ----------------------------------------
 */mus_egg_utopia__act_2_5_008:
	.byte	W01
	.byte		N22   , Dn4 , v127
	.byte	W22
	.byte		N09   , Cn4 
	.byte	W10
	.byte		N24   , Dn4 
	.byte	W24
	.byte	W03
	.byte		N10   , Cn4 
	.byte	W10
	.byte		N68   , Dn4 
	.byte	W24
	.byte	W02
	.byte	PEND
/* 009   ----------------------------------------
 */mus_egg_utopia__act_2_5_009:
	.byte	W48
	.byte		N11   , Gn3 , v127
	.byte	W12
	.byte		        As3 
	.byte	W10
	.byte		N02   , En4 
	.byte	W02
	.byte		N11   , Fn4 
	.byte	W12
	.byte		TIE   , En4 
	.byte	W12
	.byte	PEND
/* 010   ----------------------------------------
 */	.byte	W96
/* 011   ----------------------------------------
 */	.byte	W68
	.byte	W02
	.byte		EOT   
	.byte	W24
	.byte		N02   , Cs4 
	.byte	W02
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_5_008
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_5_009
/* 014   ----------------------------------------
 */	.byte	W96
/* 015   ----------------------------------------
 */	.byte	W68
	.byte	W02
	.byte		EOT   , En4 
	.byte	W24
	.byte	W02
/* 016   ----------------------------------------
 */mus_egg_utopia__act_2_5_016:
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_5_016
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_5_016
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_5_016
/* 020   ----------------------------------------
 */mus_egg_utopia__act_2_5_020:
	.byte	W24
	.byte		N24   , Fn3 , v127
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte	PEND
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_5_020
/* 022   ----------------------------------------
 */mus_egg_utopia__act_2_5_022:
	.byte	W24
	.byte		N24   , Gn3 , v127
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte	PEND
/* 023   ----------------------------------------
 */	.byte	W96
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_5_020
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_5_020
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_5_022
/* 027   ----------------------------------------
 */	.byte	W96
/* 028   ----------------------------------------
 */mus_egg_utopia__act_2_5_028:
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
/* 029   ----------------------------------------
 */	.byte	W96
/* 030   ----------------------------------------
 */	.byte		PAN   , c_v+63
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
/* 031   ----------------------------------------
 */	.byte	W96
/* 032   ----------------------------------------
 */	.byte	W96
/* 033   ----------------------------------------
 */	.byte		MOD   , 8
	.byte	W24
	.byte		N36   , An3 
	.byte	W36
	.byte	W03
	.byte		        Bn3 
	.byte	W32
	.byte	W01
/* 034   ----------------------------------------
 */	.byte	W02
	.byte		N21   , Cn4 
	.byte	W21
	.byte		N15   , Fn4 
	.byte	W16
	.byte		N60   , Cn4 , v100
	.byte	W56
	.byte	W01
/* 035   ----------------------------------------
 */	.byte	W02
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
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_5_028
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	W96
/* 039   ----------------------------------------
 */	.byte	W96
/* 040   ----------------------------------------
 */	.byte		PAN   , c_v+63
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
	.byte	W05
	.byte		N01   , Dn4 , v127
	.byte	W01
/* 041   ----------------------------------------
 */	.byte		N44   
	.byte	W44
	.byte	W03
	.byte		        As3 
	.byte	W44
	.byte	W03
	.byte		N03   , Gs3 
	.byte	W02
/* 042   ----------------------------------------
 */	.byte	W01
	.byte		N44   , An3 
	.byte	W44
	.byte	W03
	.byte		N01   , Ds3 
	.byte	W01
	.byte		N48   , Fn3 
	.byte	W44
	.byte	W03
/* 043   ----------------------------------------
 */	.byte	W02
	.byte		N92   , Dn3 
	.byte	W92
	.byte	W02
	.byte	GOTO
	 mPtr	mus_egg_utopia__act_2_5_B1
mus_egg_utopia__act_2_5_B2:
/* 044   ----------------------------------------
 */	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_egg_utopia__act_2_6:
	.byte	KEYSH , mus_egg_utopia__act_2_key+0
mus_egg_utopia__act_2_6_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 56
	.byte		MOD   , 4
	.byte		VOL   , 127*mus_egg_utopia__act_2_mvl/mxv
	.byte		PAN   , c_v+63
	.byte		BENDR , 13
	.byte		PAN   , c_v+0
	.byte		LFOS  , 18
	.byte		LFODL , 20
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		BEND  , c_v+0
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
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte		MOD   , 4
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
 */	.byte		VOL   , 127*mus_egg_utopia__act_2_mvl/mxv
	.byte	W96
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
 */mus_egg_utopia__act_2_6_028:
	.byte		MOD   , 4
	.byte		PAN   , c_v+63
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
	.byte		PAN   , c_v-64
	.byte		N05   , Gn1 , v048
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn4 , v044
	.byte	W06
	.byte		        Gn4 , v048
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte	PEND
/* 029   ----------------------------------------
 */	.byte	W96
/* 030   ----------------------------------------
 */	.byte		MOD   , 4
	.byte		PAN   , c_v+63
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
	.byte	W54
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
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_6_028
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	W96
/* 039   ----------------------------------------
 */	.byte	W96
/* 040   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_6_028
/* 041   ----------------------------------------
 */	.byte	W96
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_egg_utopia__act_2_6_B1
mus_egg_utopia__act_2_6_B2:
/* 044   ----------------------------------------
 */	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_egg_utopia__act_2_7:
	.byte	KEYSH , mus_egg_utopia__act_2_key+0
mus_egg_utopia__act_2_7_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 82
	.byte		VOL   , 119*mus_egg_utopia__act_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */mus_egg_utopia__act_2_7_002:
	.byte		N02   , Gn2 , v127
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
/* 003   ----------------------------------------
 */mus_egg_utopia__act_2_7_003:
	.byte		N02   , Gn2 , v127
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte	PEND
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_7_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_7_003
/* 008   ----------------------------------------
 */mus_egg_utopia__act_2_7_008:
	.byte		N05   , Gn1 , v100
	.byte	W06
	.byte		        As1 , v088
	.byte	W06
	.byte		        Dn2 , v092
	.byte	W06
	.byte		        Gn2 , v100
	.byte	W06
	.byte		        As2 , v088
	.byte	W06
	.byte		        Dn3 , v092
	.byte	W06
	.byte		        Gn3 , v100
	.byte	W06
	.byte		        As3 , v088
	.byte	W06
	.byte		        Dn4 , v092
	.byte	W06
	.byte		        Gn4 , v100
	.byte	W06
	.byte		        As4 , v088
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn4 , v100
	.byte	W06
	.byte		        Dn4 , v092
	.byte	W06
	.byte		        As3 , v088
	.byte	W06
	.byte		        Gn3 , v100
	.byte	W06
	.byte	PEND
/* 009   ----------------------------------------
 */mus_egg_utopia__act_2_7_009:
	.byte		N05   , Dn3 , v092
	.byte	W06
	.byte		        As2 , v088
	.byte	W06
	.byte		        Gn2 , v100
	.byte	W06
	.byte		        Dn2 , v092
	.byte	W06
	.byte		        As1 , v088
	.byte	W06
	.byte		        Gn1 , v100
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As1 , v088
	.byte	W06
	.byte		        Dn2 , v092
	.byte	W06
	.byte		        Gn2 , v100
	.byte	W06
	.byte		        As2 , v088
	.byte	W06
	.byte		        Dn3 , v092
	.byte	W06
	.byte		        Gn3 , v100
	.byte	W06
	.byte		        As3 , v088
	.byte	W06
	.byte		        Dn4 , v092
	.byte	W06
	.byte		        Gn4 , v100
	.byte	W06
	.byte	PEND
/* 010   ----------------------------------------
 */mus_egg_utopia__act_2_7_010:
	.byte		N05   , Gn2 , v092
	.byte	W06
	.byte		        Cn3 , v088
	.byte	W06
	.byte		        Gn2 , v092
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 , v088
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cn6 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Cn6 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn4 , v092
	.byte	W06
	.byte		        En4 , v088
	.byte	W06
	.byte	PEND
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_7_010
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_7_008
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_7_009
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_7_010
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_7_010
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
	.byte	GOTO
	 mPtr	mus_egg_utopia__act_2_7_B1
mus_egg_utopia__act_2_7_B2:
/* 044   ----------------------------------------
 */	.byte	FINE

/* **************** Track 8 (Midi-Chn.8) **************** */

mus_egg_utopia__act_2_8:
	.byte	KEYSH , mus_egg_utopia__act_2_key+0
mus_egg_utopia__act_2_8_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 88
	.byte		VOL   , 119*mus_egg_utopia__act_2_mvl/mxv
	.byte		PAN   , c_v-62
	.byte		MOD   , 0
	.byte	W96
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
 */mus_egg_utopia__act_2_8_018:
	.byte		N06   , Gn1 , v068
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_8_018
/* 020   ----------------------------------------
 */mus_egg_utopia__act_2_8_020:
	.byte		VOL   , 63*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        67*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        71*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        74*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        79*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        82*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        87*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        91*mus_egg_utopia__act_2_mvl/mxv
	.byte		N24   , Fn3 , v060
	.byte	W06
	.byte		VOL   , 95*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        99*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        103*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        107*mus_egg_utopia__act_2_mvl/mxv
	.byte		N24   , Fn4 
	.byte	W06
	.byte		VOL   , 111*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        115*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        119*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        123*mus_egg_utopia__act_2_mvl/mxv
	.byte		N24   , Fn3 , v040
	.byte	W06
	.byte	PEND
/* 021   ----------------------------------------
 */mus_egg_utopia__act_2_8_021:
	.byte		VOL   , 127*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        124*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        119*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        116*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        112*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        109*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        104*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        102*mus_egg_utopia__act_2_mvl/mxv
	.byte		N24   , Fn3 , v068
	.byte	W06
	.byte		VOL   , 97*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        94*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        91*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        87*mus_egg_utopia__act_2_mvl/mxv
	.byte		N24   , Fn4 , v052
	.byte	W06
	.byte		VOL   , 82*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        80*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        76*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        72*mus_egg_utopia__act_2_mvl/mxv
	.byte		N24   , Fn3 , v056
	.byte	W06
	.byte	PEND
/* 022   ----------------------------------------
 */mus_egg_utopia__act_2_8_022:
	.byte		VOL   , 63*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        67*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        71*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        74*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        79*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        82*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        87*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        91*mus_egg_utopia__act_2_mvl/mxv
	.byte		N24   , Gn3 , v056
	.byte	W06
	.byte		VOL   , 95*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        99*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        103*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        107*mus_egg_utopia__act_2_mvl/mxv
	.byte		N24   , Gn4 , v068
	.byte	W06
	.byte		VOL   , 111*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        115*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        119*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        123*mus_egg_utopia__act_2_mvl/mxv
	.byte		N24   , Gn3 
	.byte	W06
	.byte	PEND
/* 023   ----------------------------------------
 */mus_egg_utopia__act_2_8_023:
	.byte		VOL   , 127*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        124*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        119*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        116*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        112*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        109*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        104*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        102*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        97*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        94*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        91*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        87*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        82*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        80*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        76*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte		        72*mus_egg_utopia__act_2_mvl/mxv
	.byte	W06
	.byte	PEND
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_8_020
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_8_021
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_8_022
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_8_023
/* 028   ----------------------------------------
 */mus_egg_utopia__act_2_8_028:
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
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_8_028
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_8_028
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_8_028
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_8_028
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_8_028
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_8_028
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_8_028
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_8_028
/* 037   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_8_028
/* 038   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_8_028
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_8_028
/* 040   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_8_028
/* 041   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_8_028
/* 042   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_8_028
/* 043   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_8_028
	.byte	GOTO
	 mPtr	mus_egg_utopia__act_2_8_B1
mus_egg_utopia__act_2_8_B2:
/* 044   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_8_028
/* 045   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_egg_utopia__act_2_8_028
/* 046   ----------------------------------------
 */	.byte		N05   , Gn1 , v127
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N05   
	.byte	W05
	.byte	FINE

/* **************** Track 9 (Midi-Chn.9) **************** */

mus_egg_utopia__act_2_9:
	.byte	KEYSH , mus_egg_utopia__act_2_key+0
mus_egg_utopia__act_2_9_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 65
	.byte		VOL   , 93*mus_egg_utopia__act_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 56
	.byte		LFODL , 0
	.byte		MOD   , 0
	.byte		MODT  , 2
	.byte	W96
/* 001   ----------------------------------------
 */	.byte		TIE   , Dn3 , v127
	.byte		TIE   , Gn3 
	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W24
	.byte		EOT   , Dn3 
	.byte		        Gn3 
	.byte	W72
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W24
	.byte		N96   , Dn3 
	.byte		N96   , Gn3 
	.byte	W72
/* 006   ----------------------------------------
 */	.byte	W96
/* 007   ----------------------------------------
 */	.byte	W96
/* 008   ----------------------------------------
 */	.byte		N92   , Dn3 , v116
	.byte		N92   , Gn3 , v108
	.byte	W96
/* 009   ----------------------------------------
 */	.byte		        Dn3 , v116
	.byte		N92   , Fn3 , v092
	.byte	W96
/* 010   ----------------------------------------
 */	.byte		TIE   , Cn3 
	.byte		TIE   , En3 , v096
	.byte	W96
/* 011   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		EOT   , Cn3 
	.byte		        En3 
	.byte	W01
/* 012   ----------------------------------------
 */	.byte		N92   , Dn3 , v088
	.byte		N92   , Gn3 , v104
	.byte	W96
/* 013   ----------------------------------------
 */	.byte		        Dn3 , v088
	.byte		N92   , Fn3 , v076
	.byte	W96
/* 014   ----------------------------------------
 */	.byte		TIE   , Cn3 , v096
	.byte		TIE   , En3 , v088
	.byte	W96
/* 015   ----------------------------------------
 */	.byte	W96
	.byte		EOT   , Cn3 
	.byte		        En3 
/* 016   ----------------------------------------
 */	.byte	W96
/* 017   ----------------------------------------
 */	.byte	W96
/* 018   ----------------------------------------
 */	.byte		N05   , Gn3 , v108
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
/* 019   ----------------------------------------
 */	.byte		        Dn5 
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
/* 020   ----------------------------------------
 */	.byte		N92   , As2 , v127
	.byte		N92   , As3 
	.byte	W92
	.byte	W02
	.byte		N44   , An2 
	.byte		N44   , An3 
	.byte	W02
/* 021   ----------------------------------------
 */	.byte	W44
	.byte	W02
	.byte		N48   , As2 
	.byte		N48   , As3 
	.byte	W48
	.byte	W01
	.byte		N92   , Cn3 
	.byte		N92   , Cn4 
	.byte	W01
/* 022   ----------------------------------------
 */	.byte	W92
	.byte	W02
	.byte		N44   , Gn2 
	.byte		N44   , Gn3 
	.byte	W02
/* 023   ----------------------------------------
 */	.byte	W44
	.byte	W02
	.byte		N48   , An2 
	.byte		N48   , An3 
	.byte	W48
	.byte	W02
/* 024   ----------------------------------------
 */	.byte		N92   , As2 
	.byte		N92   , As3 
	.byte	W92
	.byte	W03
	.byte		N44   , An2 
	.byte		N44   , An3 
	.byte	W01
/* 025   ----------------------------------------
 */	.byte	W44
	.byte	W02
	.byte		        As2 
	.byte		N44   , As3 
	.byte	W44
	.byte	W03
	.byte		TIE   , Cn3 
	.byte		TIE   , Cn4 
	.byte	W03
/* 026   ----------------------------------------
 */	.byte	W92
	.byte	W02
	.byte		EOT   , Cn3 
	.byte		        Cn4 
	.byte	W01
	.byte		N44   , Dn3 
	.byte		N44   , Dn4 
	.byte	W01
/* 027   ----------------------------------------
 */	.byte	W44
	.byte	W03
	.byte		        En3 
	.byte		N44   , En4 
	.byte	W48
	.byte	W01
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
	.byte	GOTO
	 mPtr	mus_egg_utopia__act_2_9_B1
mus_egg_utopia__act_2_9_B2:
/* 044   ----------------------------------------
 */	.byte	FINE

/* **************** Track 10 (Midi-Chn.10) **************** */

mus_egg_utopia__act_2_10:
	.byte	KEYSH , mus_egg_utopia__act_2_key+0
mus_egg_utopia__act_2_10_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 89
	.byte		VOL   , 80*mus_egg_utopia__act_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 56
	.byte		LFODL , 0
	.byte		MOD   , 0
	.byte		MODT  , 2
	.byte		N92   , Gn2 , v127
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte		N92   
	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte	W96
/* 007   ----------------------------------------
 */	.byte	W96
/* 008   ----------------------------------------
 */	.byte		N92   
	.byte	W96
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */	.byte	W96
/* 011   ----------------------------------------
 */	.byte	W96
/* 012   ----------------------------------------
 */	.byte		N92   
	.byte	W96
/* 013   ----------------------------------------
 */	.byte	W96
/* 014   ----------------------------------------
 */	.byte	W96
/* 015   ----------------------------------------
 */	.byte	W96
/* 016   ----------------------------------------
 */	.byte		N92   
	.byte	W96
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
 */	.byte		N92   
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
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_egg_utopia__act_2_10_B1
mus_egg_utopia__act_2_10_B2:
/* 044   ----------------------------------------
 */	.byte	FINE

/* **************** Track 11 (Midi-Chn.11) **************** */

mus_egg_utopia__act_2_11:
	.byte	KEYSH , mus_egg_utopia__act_2_key+0
mus_egg_utopia__act_2_11_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 76
	.byte		VOL   , 122*mus_egg_utopia__act_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 56
	.byte		LFODL , 0
	.byte		MOD   , 0
	.byte		MODT  , 2
	.byte	W96
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
 */	.byte		N90   , Dn2 , v127
	.byte		N92   , Gn2 
	.byte	W92
	.byte	W03
	.byte		        Cs2 
	.byte		N92   , Fs2 
	.byte	W01
/* 029   ----------------------------------------
 */	.byte	W92
	.byte	W01
	.byte		TIE   , Fn2 
	.byte	W01
	.byte		        Cn2 
	.byte	W02
/* 030   ----------------------------------------
 */	.byte	W96
/* 031   ----------------------------------------
 */	.byte	W84
	.byte		EOT   
	.byte	W01
	.byte		EOT   , Fn2 
	.byte	W11
/* 032   ----------------------------------------
 */	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W18
	.byte		        Cn2 
	.byte		N12   , Fn2 
	.byte	W17
	.byte		TIE   , Dn2 
	.byte		TIE   , Gn2 
	.byte	W60
	.byte	W01
/* 033   ----------------------------------------
 */	.byte	W24
	.byte		N36   , An3 
	.byte	W36
	.byte	W03
	.byte		N32   , Bn3 
	.byte	W32
	.byte		EOT   , Gn2 
	.byte	W01
	.byte		        Dn2 
/* 034   ----------------------------------------
 */	.byte	W02
	.byte		N20   , Cn4 
	.byte	W21
	.byte		N15   , Fn4 
	.byte	W16
	.byte		N56   , Cn4 , v100
	.byte	W56
	.byte	W01
/* 035   ----------------------------------------
 */	.byte	W02
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
	.byte	W32
	.byte	W03
	.byte		N92   , Dn2 
	.byte		N96   , Gn2 
	.byte	W01
/* 036   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		N92   , Cs2 
	.byte		N92   , Fs2 
	.byte	W01
/* 037   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		TIE   , Cn2 
	.byte		TIE   , Fn2 
	.byte	W01
/* 038   ----------------------------------------
 */	.byte	W96
/* 039   ----------------------------------------
 */	.byte	W84
	.byte	W03
	.byte		EOT   , Cn2 
	.byte		        Fn2 
	.byte	W09
/* 040   ----------------------------------------
 */	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W18
	.byte		        Cn2 
	.byte		N12   , Fn2 
	.byte	W18
	.byte		TIE   , Dn2 
	.byte		TIE   , Gn2 
	.byte	W56
	.byte	W03
	.byte		N01   , Dn4 
	.byte	W01
/* 041   ----------------------------------------
 */	.byte		N44   
	.byte	W44
	.byte	W03
	.byte		        As3 
	.byte	W36
	.byte	W03
	.byte		EOT   , Dn2 
	.byte		        Gn2 
	.byte	W08
	.byte		N03   , Gs3 
	.byte	W02
/* 042   ----------------------------------------
 */	.byte	W01
	.byte		N44   , An3 
	.byte	W44
	.byte	W03
	.byte		N01   , Ds3 
	.byte	W01
	.byte		N48   , Fn3 
	.byte	W44
	.byte	W03
/* 043   ----------------------------------------
 */	.byte	W02
	.byte		N92   , Dn3 
	.byte	W92
	.byte	W02
	.byte	GOTO
	 mPtr	mus_egg_utopia__act_2_11_B1
mus_egg_utopia__act_2_11_B2:
/* 044   ----------------------------------------
 */	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_egg_utopia__act_2):
	.byte	11	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_egg_utopia__act_2_pri	/* Priority */
	.byte	mus_egg_utopia__act_2_rev	/* Reverb */

mAlignWord
	mPtr	mus_egg_utopia__act_2_grp

	mPtr	mus_egg_utopia__act_2_1
	mPtr	mus_egg_utopia__act_2_2
	mPtr	mus_egg_utopia__act_2_3
	mPtr	mus_egg_utopia__act_2_4
	mPtr	mus_egg_utopia__act_2_5
	mPtr	mus_egg_utopia__act_2_6
	mPtr	mus_egg_utopia__act_2_7
	mPtr	mus_egg_utopia__act_2_8
	mPtr	mus_egg_utopia__act_2_9
	mPtr	mus_egg_utopia__act_2_10
	mPtr	mus_egg_utopia__act_2_11

	.end
