	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_vs_select_pak_mode_grp, voicegroup023
	.equ	mus_vs_select_pak_mode_pri, 0
	.equ	mus_vs_select_pak_mode_rev, reverb_set+0
	.equ	mus_vs_select_pak_mode_mvl, 105
	.equ	mus_vs_select_pak_mode_key, 0
	.equ	mus_vs_select_pak_mode_tbs, 1
	.equ	mus_vs_select_pak_mode_exg, 1
	.equ	mus_vs_select_pak_mode_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_vs_select_pak_mode)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_vs_select_pak_mode_1:
	.byte	KEYSH , mus_vs_select_pak_mode_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 174*mus_vs_select_pak_mode_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_vs_select_pak_mode_mvl/mxv
	.byte		N14   , Ds2 , v124
	.byte	W15
	.byte		N07   , En2 
	.byte	W09
	.byte		N14   
	.byte	W15
	.byte		N08   , Ds2 
	.byte	W09
	.byte		N14   , En2 
	.byte	W15
	.byte		N08   , Ds2 
	.byte	W09
	.byte		N14   , En2 
	.byte	W15
	.byte		N32   , Ds1 , v076
	.byte		N06   , Ds2 , v124
	.byte	W09
/* 001   ----------------------------------------
 */	.byte	W15
	.byte		N08   
	.byte	W09
	.byte		N23   , Ds1 , v076
	.byte		N23   , En2 , v124
	.byte	W24
	.byte		        Ds1 , v076
	.byte	W15
	.byte		N08   , Ds2 , v124
	.byte	W09
	.byte		N23   , Ds1 , v076
	.byte		N15   , En2 , v124
	.byte	W24
/* 002   ----------------------------------------
 */	.byte		N23   , Ds1 , v076
	.byte		N14   , Ds2 , v124
	.byte	W15
	.byte		N08   
	.byte	W09
	.byte		N23   , Ds1 , v076
	.byte		N23   , En2 , v124
	.byte	W24
mus_vs_select_pak_mode_1_B1:
	.byte		N23   , Ds1 , v076
	.byte	W15
	.byte		N08   , Ds2 , v124
	.byte	W09
	.byte		N23   , Ds1 , v076
	.byte		N23   , En2 , v124
	.byte	W24
/* 003   ----------------------------------------
 */mus_vs_select_pak_mode_1_003:
	.byte		N23   , Ds1 , v076
	.byte		N14   , Ds2 , v124
	.byte	W15
	.byte		N08   
	.byte	W09
	.byte		N23   , Ds1 , v076
	.byte		N23   , En2 , v124
	.byte	W24
	.byte		        Ds1 , v076
	.byte	W15
	.byte		N08   , Ds2 , v124
	.byte	W09
	.byte		N23   , Ds1 , v076
	.byte		N23   , En2 , v124
	.byte	W24
	.byte	PEND
/* 004   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_1_003
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_1_003
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_1_003
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_1_003
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_1_003
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_1_003
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_1_003
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_1_003
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_1_003
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_1_003
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_1_003
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_1_003
/* 016   ----------------------------------------
 */	.byte		N23   , Ds1 , v076
	.byte		N14   , Ds2 , v124
	.byte	W15
	.byte		N08   , En2 
	.byte	W09
	.byte		N23   , Ds1 , v076
	.byte		N14   , En2 , v124
	.byte	W15
	.byte		N08   , Ds2 
	.byte	W09
	.byte		N23   , Ds1 , v076
	.byte		N07   , En2 , v124
	.byte	W08
	.byte		N07   
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		N15   , Ds1 , v076
	.byte		N15   , En2 , v124
	.byte	W16
	.byte		N23   , Ds1 , v076
	.byte		N23   , Ds2 , v124
	.byte	W08
/* 017   ----------------------------------------
 */	.byte	W16
	.byte		N07   
	.byte	W08
	.byte		N15   , En2 
	.byte	W16
	.byte		N23   , Ds1 , v076
	.byte		N23   , Ds2 , v124
	.byte	W24
	.byte		N07   , En2 
	.byte	W08
	.byte		N15   , Ds2 
	.byte	W16
	.byte		N07   
	.byte	W08
/* 018   ----------------------------------------
 */	.byte		N23   , Ds1 , v076
	.byte		N15   , Ds2 , v124
	.byte	W16
	.byte		N07   
	.byte	W08
	.byte		N15   , En2 
	.byte	W16
	.byte		N23   , Ds1 , v076
	.byte		N23   , Ds2 , v124
	.byte	W24
	.byte		N07   , En2 
	.byte	W08
	.byte		N15   
	.byte	W16
	.byte		N23   , Ds1 , v076
	.byte		N07   , Ds2 , v124
	.byte	W08
/* 019   ----------------------------------------
 */	.byte	W24
	.byte		N23   , Ds1 , v076
	.byte	W24
	.byte		N07   , Dn1 , v040
	.byte	W24
	.byte		N23   , Ds1 , v076
	.byte	W24
/* 020   ----------------------------------------
 */	.byte		N07   , Dn1 , v040
	.byte	W24
	.byte		N23   , Ds1 , v076
	.byte	W24
	.byte		N07   , En2 , v124
	.byte	W08
	.byte		N07   
	.byte	W08
	.byte		        Ds2 
	.byte	W08
	.byte		        En2 
	.byte	W16
	.byte		N23   , Ds1 , v076
	.byte		N14   , Ds2 , v124
	.byte	W08
/* 021   ----------------------------------------
 */	.byte	W15
	.byte		N08   
	.byte	W09
	.byte		N23   , Ds1 , v076
	.byte		N23   , En2 , v124
	.byte	W24
	.byte		        Ds1 , v076
	.byte	W15
	.byte		N08   , Ds2 , v124
	.byte	W09
	.byte		N23   , Ds1 , v076
	.byte		N23   , En2 , v124
	.byte	W24
/* 022   ----------------------------------------
 */	.byte		        Ds1 , v076
	.byte		N23   , Ds2 , v124
	.byte	W24
	.byte		        Ds1 , v076
	.byte		N23   , En2 , v124
	.byte	W24
	.byte	GOTO
	 mPtr	mus_vs_select_pak_mode_1_B1
mus_vs_select_pak_mode_1_B2:
	.byte		N23   , Ds1 , v076
	.byte		N14   , Ds2 , v124
	.byte	W15
	.byte		N08   , En2 
	.byte	W09
	.byte		N23   , Ds1 , v076
	.byte		N14   , En2 , v124
	.byte	W15
	.byte		N08   , Ds2 
	.byte	W09
/* 023   ----------------------------------------
 */	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_vs_select_pak_mode_2:
	.byte	KEYSH , mus_vs_select_pak_mode_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 44
	.byte		VOL   , 127*mus_vs_select_pak_mode_mvl/mxv
	.byte	W16
	.byte		N07   , As1 , v088
	.byte	W08
	.byte		N10   , Ds2 
	.byte	W16
	.byte		N07   , Gs2 , v108
	.byte	W08
	.byte		N11   , Fn2 , v084
	.byte	W16
	.byte		N07   , Gs2 , v096
	.byte	W08
	.byte		N11   , Cs3 
	.byte	W16
	.byte		N20   , Ds2 , v127
	.byte	W08
/* 001   ----------------------------------------
 */mus_vs_select_pak_mode_2_001:
	.byte	W16
	.byte		N08   , Ds2 , v127
	.byte	W08
	.byte		N10   , Ds3 
	.byte	W16
	.byte		N07   , Ds2 
	.byte	W08
	.byte		N13   
	.byte	W16
	.byte		N07   , Ds3 
	.byte	W08
	.byte		N08   , Ds2 
	.byte	W16
	.byte		N07   
	.byte	W08
	.byte	PEND
/* 002   ----------------------------------------
 */mus_vs_select_pak_mode_2_002:
	.byte		N11   , Ds3 , v127
	.byte	W16
	.byte		N07   , Ds2 
	.byte	W08
	.byte		N10   
	.byte	W16
	.byte		N07   , Ds3 
	.byte	W08
	.byte	PEND
mus_vs_select_pak_mode_2_B1:
	.byte		N10   , Ds2 , v127
	.byte	W16
	.byte		N07   , Ds3 
	.byte	W08
	.byte		N08   , Ds2 
	.byte	W16
	.byte		N20   
	.byte	W08
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_2_001
/* 004   ----------------------------------------
 */mus_vs_select_pak_mode_2_004:
	.byte		N11   , Ds3 , v127
	.byte	W16
	.byte		N07   , Ds2 
	.byte	W08
	.byte		N10   
	.byte	W16
	.byte		N07   , Ds3 
	.byte	W08
	.byte		N10   , Ds2 
	.byte	W16
	.byte		N07   , Ds3 
	.byte	W08
	.byte		N08   , Ds2 
	.byte	W16
	.byte		N20   
	.byte	W08
	.byte	PEND
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_2_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_2_004
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_2_001
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_2_004
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_2_001
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_2_004
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_2_001
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_2_004
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_2_001
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_2_004
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_2_001
/* 016   ----------------------------------------
 */	.byte		N11   , Ds3 , v127
	.byte	W16
	.byte		N07   , Ds2 
	.byte	W08
	.byte		N10   
	.byte	W16
	.byte		N07   , Ds3 
	.byte	W08
	.byte		N09   , Ds2 
	.byte	W16
	.byte		N07   
	.byte	W08
	.byte		N14   , Fn2 
	.byte	W16
	.byte		N21   , Fs2 
	.byte	W08
/* 017   ----------------------------------------
 */	.byte	W16
	.byte		N07   , Cs2 
	.byte	W08
	.byte		N12   , Fs2 
	.byte	W16
	.byte		N28   , Gs2 
	.byte	W32
	.byte		N13   
	.byte	W24
/* 018   ----------------------------------------
 */	.byte		        An2 
	.byte	W16
	.byte		N07   , En2 
	.byte	W08
	.byte		N15   , An2 
	.byte	W16
	.byte		N24   , Bn2 
	.byte	W32
	.byte		N14   
	.byte	W16
	.byte		N60   , Cs3 
	.byte	W08
/* 019   ----------------------------------------
 */	.byte	W64
	.byte		N07   
	.byte	W08
	.byte		N14   , Gs2 
	.byte	W16
	.byte		N42   , Cs2 
	.byte	W08
/* 020   ----------------------------------------
 */	.byte	W48
	.byte		N11   , Cs3 
	.byte	W16
	.byte		N07   , Gs2 
	.byte	W08
	.byte		N11   , Cs2 
	.byte	W16
	.byte		N17   , Ds2 
	.byte	W08
/* 021   ----------------------------------------
 */	.byte	W16
	.byte		N11   
	.byte	W08
	.byte		N10   , Ds3 
	.byte	W16
	.byte		N07   , Ds2 
	.byte	W08
	.byte		N13   
	.byte	W16
	.byte		N07   , Ds3 
	.byte	W08
	.byte		N08   , Ds2 
	.byte	W16
	.byte		N07   
	.byte	W08
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_2_002
	.byte	GOTO
	 mPtr	mus_vs_select_pak_mode_2_B1
mus_vs_select_pak_mode_2_B2:
	.byte		N10   , Ds2 , v127
	.byte	W16
	.byte		N07   , Ds3 
	.byte	W08
	.byte		N08   , Ds2 
	.byte	W16
	.byte		N20   
	.byte	W08
/* 023   ----------------------------------------
 */	.byte	W16
	.byte		N08   
	.byte	W08
	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_vs_select_pak_mode_3:
	.byte	KEYSH , mus_vs_select_pak_mode_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 103
	.byte		VOL   , 100*mus_vs_select_pak_mode_mvl/mxv
	.byte		BENDR , 59
	.byte	W88
	.byte		TIE   , Ds3 , v112
	.byte	W08
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W20
	.byte		EOT   
	.byte	W28
mus_vs_select_pak_mode_3_B1:
	.byte		N36   , Ds3 , v127
	.byte	W40
	.byte		TIE   , Cs3 , v116
	.byte	W08
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W36
	.byte	W03
	.byte		EOT   
	.byte	W09
	.byte		N36   , Cs3 , v124
	.byte	W40
	.byte		TIE   , Ds3 , v116
	.byte	W08
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte	W40
	.byte		EOT   
	.byte	W08
	.byte		N36   , Ds3 , v120
	.byte	W40
	.byte		TIE   , Cs3 , v124
	.byte	W08
/* 007   ----------------------------------------
 */	.byte	W96
/* 008   ----------------------------------------
 */	.byte	W36
	.byte	W03
	.byte		EOT   
	.byte	W09
	.byte		N36   , Cs3 , v120
	.byte	W40
	.byte		TIE   , Ds3 , v116
	.byte	W08
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */	.byte	W42
	.byte		EOT   
	.byte	W06
	.byte		N23   , Ds3 , v112
	.byte	W24
	.byte		N15   , Ds3 , v108
	.byte	W16
	.byte		TIE   , Cs3 , v124
	.byte	W08
/* 011   ----------------------------------------
 */	.byte	W96
/* 012   ----------------------------------------
 */	.byte	W42
	.byte		EOT   
	.byte	W06
	.byte		N23   , Cs3 , v108
	.byte	W24
	.byte		N15   , Gs3 , v116
	.byte	W16
	.byte		TIE   , Ds3 , v124
	.byte	W08
/* 013   ----------------------------------------
 */	.byte	W96
/* 014   ----------------------------------------
 */	.byte	W40
	.byte		EOT   
	.byte	W08
	.byte		N23   , Ds3 , v116
	.byte	W48
/* 015   ----------------------------------------
 */	.byte	W96
/* 016   ----------------------------------------
 */	.byte	W48
	.byte		        Cs3 , v127
	.byte	W24
	.byte		N15   , Cs3 , v116
	.byte	W16
	.byte		N30   , Fs3 , v124
	.byte	W08
/* 017   ----------------------------------------
 */	.byte	W24
	.byte		N15   
	.byte	W16
	.byte		N30   , Gs3 
	.byte	W32
	.byte		N23   , Gs3 , v116
	.byte	W24
/* 018   ----------------------------------------
 */	.byte		        An3 , v124
	.byte	W24
	.byte		N15   
	.byte	W16
	.byte		N30   
	.byte	W32
	.byte		N15   , An3 , v116
	.byte	W16
	.byte		N68   , Bn3 
	.byte	W08
/* 019   ----------------------------------------
 */	.byte	W64
	.byte		N14   
	.byte	W32
/* 020   ----------------------------------------
 */	.byte	W48
	.byte		N16   , Cs3 
	.byte	W24
	.byte		N12   
	.byte	W16
	.byte		TIE   , Ds3 
	.byte	W08
/* 021   ----------------------------------------
 */	.byte	W96
/* 022   ----------------------------------------
 */	.byte	W44
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte	GOTO
	 mPtr	mus_vs_select_pak_mode_3_B1
mus_vs_select_pak_mode_3_B2:
	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_vs_select_pak_mode_4:
	.byte	KEYSH , mus_vs_select_pak_mode_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 104
	.byte		VOL   , 100*mus_vs_select_pak_mode_mvl/mxv
	.byte		MOD   , 0
	.byte		LFOS  , 86
	.byte		BENDR , 53
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W48
mus_vs_select_pak_mode_4_B1:
	.byte	W48
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte	W88
	.byte		TIE   , Fn3 , v124
	.byte	W08
/* 007   ----------------------------------------
 */	.byte	W96
/* 008   ----------------------------------------
 */	.byte	W36
	.byte	W03
	.byte		EOT   
	.byte	W09
	.byte		N36   , Fn3 , v120
	.byte	W40
	.byte		TIE   , Gn3 , v116
	.byte	W08
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */	.byte	W42
	.byte		EOT   
	.byte	W30
	.byte		N15   , Gn3 , v108
	.byte	W16
	.byte		TIE   , Fn3 , v124
	.byte	W08
/* 011   ----------------------------------------
 */	.byte	W96
/* 012   ----------------------------------------
 */	.byte	W42
	.byte		EOT   
	.byte	W06
	.byte		N23   , Fn3 , v108
	.byte	W40
	.byte		TIE   , Gn3 , v124
	.byte	W08
/* 013   ----------------------------------------
 */	.byte	W96
/* 014   ----------------------------------------
 */	.byte	W40
	.byte		EOT   
	.byte	W08
	.byte		N23   , Gn3 , v116
	.byte	W24
	.byte		N15   
	.byte	W16
	.byte		TIE   , Fn3 , v124
	.byte	W08
/* 015   ----------------------------------------
 */	.byte	W96
/* 016   ----------------------------------------
 */	.byte	W28
	.byte	W01
	.byte		EOT   
	.byte	W66
	.byte	W01
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
 */	.byte	W48
	.byte	GOTO
	 mPtr	mus_vs_select_pak_mode_4_B1
mus_vs_select_pak_mode_4_B2:
	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_vs_select_pak_mode_5:
	.byte	KEYSH , mus_vs_select_pak_mode_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 105
	.byte		VOL   , 100*mus_vs_select_pak_mode_mvl/mxv
	.byte	W88
	.byte		TIE   , As2 , v112
	.byte	W08
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W20
	.byte		EOT   
	.byte	W28
mus_vs_select_pak_mode_5_B1:
	.byte		N36   , As2 , v127
	.byte	W40
	.byte		TIE   , Gs2 , v116
	.byte	W08
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W36
	.byte	W03
	.byte		EOT   
	.byte	W09
	.byte		N36   , Gs2 , v124
	.byte	W40
	.byte		TIE   , As2 , v116
	.byte	W08
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte	W40
	.byte		EOT   
	.byte	W08
	.byte		N36   , As2 , v120
	.byte	W48
/* 007   ----------------------------------------
 */	.byte	W96
/* 008   ----------------------------------------
 */	.byte	W96
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */	.byte	W48
	.byte		N23   , As2 , v112
	.byte	W40
	.byte		TIE   , Gs3 , v124
	.byte	W08
/* 011   ----------------------------------------
 */	.byte	W96
/* 012   ----------------------------------------
 */	.byte	W42
	.byte		EOT   
	.byte	W06
	.byte		N23   , Gs3 , v108
	.byte	W24
	.byte		N15   , Ds3 , v116
	.byte	W24
/* 013   ----------------------------------------
 */	.byte	W96
/* 014   ----------------------------------------
 */	.byte	W72
	.byte		        As3 
	.byte	W16
	.byte		TIE   , Gs3 , v124
	.byte	W08
/* 015   ----------------------------------------
 */	.byte	W96
/* 016   ----------------------------------------
 */	.byte	W28
	.byte	W01
	.byte		EOT   
	.byte	W19
	.byte		N14   , Gs3 , v116
	.byte	W24
	.byte		N14   
	.byte	W16
	.byte		N44   , Cs3 , v124
	.byte	W08
/* 017   ----------------------------------------
 */	.byte	W40
	.byte		N30   , Ds3 
	.byte	W32
	.byte		N23   , Ds3 , v116
	.byte	W24
/* 018   ----------------------------------------
 */	.byte		N36   , En3 , v124
	.byte	W40
	.byte		N30   
	.byte	W32
	.byte		N15   , En3 , v116
	.byte	W16
	.byte		N68   , Fs3 
	.byte	W08
/* 019   ----------------------------------------
 */	.byte	W64
	.byte		N14   
	.byte	W24
	.byte		N54   , Cs3 
	.byte		N54   , Gs3 
	.byte	W08
/* 020   ----------------------------------------
 */	.byte	W48
	.byte		N16   
	.byte	W24
	.byte		N12   
	.byte	W16
	.byte		TIE   , As3 
	.byte	W08
/* 021   ----------------------------------------
 */	.byte	W96
/* 022   ----------------------------------------
 */	.byte	W44
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte	GOTO
	 mPtr	mus_vs_select_pak_mode_5_B1
mus_vs_select_pak_mode_5_B2:
	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_vs_select_pak_mode_6:
	.byte	KEYSH , mus_vs_select_pak_mode_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 97
	.byte		VOL   , 75*mus_vs_select_pak_mode_mvl/mxv
	.byte		BENDR , 12
	.byte	W16
	.byte		N07   , As3 , v088
	.byte	W08
	.byte		N12   , Ds4 , v096
	.byte	W16
	.byte		N07   , Gs4 , v108
	.byte	W08
	.byte		N08   , Fn4 , v084
	.byte	W16
	.byte		N07   , Gs4 , v100
	.byte	W08
	.byte		N12   , Cs5 
	.byte	W16
	.byte		TIE   , Ds5 , v112
	.byte	W08
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W20
	.byte		EOT   
	.byte	W28
mus_vs_select_pak_mode_6_B1:
	.byte		N36   , Gn4 , v127
	.byte	W40
	.byte		TIE   , Fn4 , v116
	.byte	W08
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W36
	.byte	W03
	.byte		EOT   
	.byte	W09
	.byte		N36   , Fn4 , v124
	.byte	W40
	.byte		TIE   , Gn4 , v116
	.byte	W08
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte	W40
	.byte		EOT   
	.byte	W08
	.byte		N36   , Gn4 , v120
	.byte	W40
	.byte		TIE   , Gs4 , v124
	.byte	W08
/* 007   ----------------------------------------
 */	.byte	W96
/* 008   ----------------------------------------
 */	.byte	W36
	.byte	W03
	.byte		EOT   
	.byte	W09
	.byte		N36   , Gs4 , v120
	.byte	W40
	.byte		TIE   , As4 , v116
	.byte	W08
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */	.byte	W42
	.byte		EOT   
	.byte	W06
	.byte		N23   , Gn4 , v112
	.byte	W24
	.byte		N15   , As4 , v108
	.byte	W16
	.byte		TIE   , Gs4 , v124
	.byte	W08
/* 011   ----------------------------------------
 */	.byte	W96
/* 012   ----------------------------------------
 */	.byte	W42
	.byte		EOT   
	.byte	W06
	.byte		N23   , Gs4 , v108
	.byte	W24
	.byte		N15   , Cn5 , v116
	.byte	W16
	.byte		TIE   , As4 , v124
	.byte	W08
/* 013   ----------------------------------------
 */	.byte	W96
/* 014   ----------------------------------------
 */	.byte	W40
	.byte		EOT   
	.byte	W08
	.byte		N23   , As4 , v116
	.byte	W24
	.byte		N15   , Ds5 
	.byte	W16
	.byte		TIE   , Cs5 , v124
	.byte	W08
/* 015   ----------------------------------------
 */	.byte	W96
/* 016   ----------------------------------------
 */	.byte	W28
	.byte	W01
	.byte		EOT   
	.byte	W19
	.byte		N08   , Cs5 , v060
	.byte	W16
	.byte		N07   , Ds5 , v100
	.byte	W08
	.byte		N15   , Fn5 , v116
	.byte	W16
	.byte		N30   , Fs5 , v124
	.byte	W08
/* 017   ----------------------------------------
 */	.byte	W24
	.byte		N15   , Fn5 
	.byte	W16
	.byte		N24   , Ds5 
	.byte	W32
	.byte		N07   , Ds5 , v116
	.byte	W24
/* 018   ----------------------------------------
 */	.byte		N23   , En5 , v124
	.byte	W24
	.byte		N15   , Ds5 
	.byte	W16
	.byte		N24   , Cs5 
	.byte	W32
	.byte		N13   , Cs5 , v116
	.byte	W16
	.byte		N54   , Ds5 
	.byte	W08
/* 019   ----------------------------------------
 */	.byte	W64
	.byte		N14   
	.byte	W24
	.byte		N54   , Cs5 
	.byte	W08
/* 020   ----------------------------------------
 */	.byte	W48
	.byte		N16   
	.byte	W24
	.byte		N12   
	.byte	W16
	.byte		N30   , Ds5 
	.byte	W08
/* 021   ----------------------------------------
 */	.byte	W96
/* 022   ----------------------------------------
 */	.byte	W48
	.byte	GOTO
	 mPtr	mus_vs_select_pak_mode_6_B1
mus_vs_select_pak_mode_6_B2:
	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_vs_select_pak_mode_7:
	.byte	KEYSH , mus_vs_select_pak_mode_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 11
	.byte		VOL   , 90*mus_vs_select_pak_mode_mvl/mxv
	.byte		BENDR , 12
	.byte	W96
/* 001   ----------------------------------------
 */mus_vs_select_pak_mode_7_001:
	.byte		N08   , Ds2 , v028
	.byte	W08
	.byte		        Gn2 , v032
	.byte	W08
	.byte		        As2 , v040
	.byte	W08
	.byte		        Ds3 , v044
	.byte	W08
	.byte		        Gn3 , v048
	.byte	W08
	.byte		        As3 , v052
	.byte	W08
	.byte		        As2 , v060
	.byte	W08
	.byte		        Ds3 , v064
	.byte	W08
	.byte		        Gn3 , v068
	.byte	W08
	.byte		        As3 , v072
	.byte	W08
	.byte		        Ds4 , v080
	.byte	W08
	.byte		        Gn4 , v084
	.byte	W08
	.byte	PEND
/* 002   ----------------------------------------
 */mus_vs_select_pak_mode_7_002:
	.byte		N08   , As4 , v088
	.byte	W08
	.byte		        Gn4 , v080
	.byte	W08
	.byte		        Ds4 , v076
	.byte	W08
	.byte		        Gn4 , v072
	.byte	W08
	.byte		        Ds4 , v068
	.byte	W08
	.byte		        As3 , v064
	.byte	W08
	.byte	PEND
mus_vs_select_pak_mode_7_B1:
	.byte		N08   , Ds4 , v060
	.byte	W08
	.byte		        As3 , v056
	.byte	W08
	.byte		        Gn3 , v052
	.byte	W08
	.byte		        Ds3 , v048
	.byte	W08
	.byte		        As2 , v044
	.byte	W08
	.byte		        Gn2 , v036
	.byte	W08
/* 003   ----------------------------------------
 */mus_vs_select_pak_mode_7_003:
	.byte		N08   , Cs2 , v028
	.byte	W08
	.byte		        Fn2 , v032
	.byte	W08
	.byte		        Gs2 , v040
	.byte	W08
	.byte		        Cs3 , v044
	.byte	W08
	.byte		        Fn3 , v048
	.byte	W08
	.byte		        Gs3 , v052
	.byte	W08
	.byte		        Gs2 , v060
	.byte	W08
	.byte		        Cs3 , v064
	.byte	W08
	.byte		        Fn3 , v068
	.byte	W08
	.byte		        Gs3 , v072
	.byte	W08
	.byte		        Cs4 , v080
	.byte	W08
	.byte		        Fn4 , v084
	.byte	W08
	.byte	PEND
/* 004   ----------------------------------------
 */mus_vs_select_pak_mode_7_004:
	.byte		N08   , Gs4 , v088
	.byte	W08
	.byte		        Fn4 , v080
	.byte	W08
	.byte		        Cs4 , v076
	.byte	W08
	.byte		        Fn4 , v072
	.byte	W08
	.byte		        Cs4 , v068
	.byte	W08
	.byte		        Gs3 , v064
	.byte	W08
	.byte		        Cs4 , v060
	.byte	W08
	.byte		        Gs3 , v056
	.byte	W08
	.byte		        Fn3 , v052
	.byte	W08
	.byte		        Cs3 , v048
	.byte	W08
	.byte		        Gs2 , v044
	.byte	W08
	.byte		        Fn2 , v036
	.byte	W08
	.byte	PEND
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_7_001
/* 006   ----------------------------------------
 */mus_vs_select_pak_mode_7_006:
	.byte		N08   , As4 , v088
	.byte	W08
	.byte		        Gn4 , v080
	.byte	W08
	.byte		        Ds4 , v076
	.byte	W08
	.byte		        Gn4 , v072
	.byte	W08
	.byte		        Ds4 , v068
	.byte	W08
	.byte		        As3 , v064
	.byte	W08
	.byte		        Ds4 , v060
	.byte	W08
	.byte		        As3 , v056
	.byte	W08
	.byte		        Gn3 , v052
	.byte	W08
	.byte		        Ds3 , v048
	.byte	W08
	.byte		        As2 , v044
	.byte	W08
	.byte		        Gn2 , v036
	.byte	W08
	.byte	PEND
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_7_003
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_7_004
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_7_001
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_7_006
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_7_003
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_7_004
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_7_001
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_7_006
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_7_003
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_7_004
/* 017   ----------------------------------------
 */	.byte		N06   , As2 , v092
	.byte	W06
	.byte		        Cs3 , v084
	.byte	W06
	.byte		        Fs3 , v096
	.byte	W06
	.byte		        As3 , v092
	.byte	W06
	.byte		        Cs4 , v088
	.byte	W06
	.byte		        Fs4 , v096
	.byte	W06
	.byte		        Cn3 , v076
	.byte	W06
	.byte		        Ds3 , v084
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 , v076
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gs4 , v088
	.byte	W06
	.byte		        Cn5 , v076
	.byte	W06
	.byte		        Gs4 , v096
	.byte	W06
	.byte		        Ds4 , v084
	.byte	W06
	.byte		        Cn4 
	.byte	W06
/* 018   ----------------------------------------
 */	.byte		        Cs3 , v092
	.byte	W06
	.byte		        En3 , v084
	.byte	W06
	.byte		        An3 , v096
	.byte	W06
	.byte		        Cs4 , v092
	.byte	W06
	.byte		        En4 , v088
	.byte	W06
	.byte		        An4 , v096
	.byte	W06
	.byte		        Ds3 , v076
	.byte	W06
	.byte		        Fs3 , v084
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Ds4 , v076
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Bn4 , v088
	.byte	W06
	.byte		        Ds5 , v076
	.byte	W06
	.byte		        Bn4 , v096
	.byte	W06
	.byte		        Fs4 , v084
	.byte	W06
	.byte		        Ds4 
	.byte	W06
/* 019   ----------------------------------------
 */	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 , v088
	.byte	W06
	.byte		        Bn3 , v096
	.byte	W06
	.byte		        Ds4 , v084
	.byte	W06
	.byte		        Fs3 , v076
	.byte	W06
	.byte		        Bn3 , v092
	.byte	W06
	.byte		        Ds4 , v072
	.byte	W06
	.byte		        Fs4 , v088
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs4 , v084
	.byte	W06
	.byte		        Bn4 , v092
	.byte	W06
	.byte		        Ds4 , v072
	.byte	W06
	.byte		        Fs4 , v088
	.byte	W06
	.byte		        Bn4 , v084
	.byte	W06
	.byte		        Ds5 , v088
	.byte	W06
/* 020   ----------------------------------------
 */	.byte		        Fn5 , v092
	.byte	W06
	.byte		        Cs5 , v096
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fn4 , v080
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Gs4 , v092
	.byte	W06
	.byte		        Fn4 , v084
	.byte	W06
	.byte		        Cs4 , v092
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs4 , v084
	.byte	W06
	.byte		        Gs3 , v088
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Cs4 , v096
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fn3 , v084
	.byte	W06
	.byte		        Cs3 , v096
	.byte	W06
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_7_001
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_vs_select_pak_mode_7_002
	.byte	GOTO
	 mPtr	mus_vs_select_pak_mode_7_B1
mus_vs_select_pak_mode_7_B2:
	.byte		N08   , Ds4 , v060
	.byte	W08
	.byte		        As3 , v056
	.byte	W08
	.byte		        Gn3 , v052
	.byte	W08
	.byte		        Ds3 , v048
	.byte	W08
	.byte		        As2 , v044
	.byte	W08
	.byte		        Gn2 , v036
	.byte	W08
/* 023   ----------------------------------------
 */	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_vs_select_pak_mode):
	.byte	7	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_vs_select_pak_mode_pri	/* Priority */
	.byte	mus_vs_select_pak_mode_rev	/* Reverb */

mAlignWord
	mPtr	mus_vs_select_pak_mode_grp

	mPtr	mus_vs_select_pak_mode_1
	mPtr	mus_vs_select_pak_mode_2
	mPtr	mus_vs_select_pak_mode_3
	mPtr	mus_vs_select_pak_mode_4
	mPtr	mus_vs_select_pak_mode_5
	mPtr	mus_vs_select_pak_mode_6
	mPtr	mus_vs_select_pak_mode_7

	.end
