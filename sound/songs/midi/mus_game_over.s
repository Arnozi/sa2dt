	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_game_over_grp, voicegroup007
	.equ	mus_game_over_pri, 0
	.equ	mus_game_over_rev, reverb_set+0
	.equ	mus_game_over_mvl, 110
	.equ	mus_game_over_key, 0
	.equ	mus_game_over_tbs, 1
	.equ	mus_game_over_exg, 1
	.equ	mus_game_over_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_game_over)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_game_over_1:
	.byte	KEYSH , mus_game_over_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*mus_game_over_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_game_over_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 127
	.byte	W24
	.byte		N06   , Fn1 , v104
	.byte	W24
	.byte		N08   , Dn2 , v096
	.byte	W16
	.byte		N07   , Dn2 , v112
	.byte	W08
	.byte		N06   , Fn1 , v104
	.byte	W24
/* 001   ----------------------------------------
 */	.byte		N08   , Dn2 , v116
	.byte	W16
	.byte		N08   
	.byte	W08
	.byte		N11   , Fn1 , v108
	.byte	W40
	.byte		N12   , Dn2 , v116
	.byte	W32
/* 002   ----------------------------------------
 */	.byte		N10   , Dn2 , v112
	.byte	W24
	.byte		N10   
	.byte	W10
	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_game_over_2:
	.byte	KEYSH , mus_game_over_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 82
	.byte		VOL   , 64*mus_game_over_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		LFOS  , 27
	.byte		MODT  , 0
	.byte		LFODL , 0
	.byte	W48
	.byte		N06   , Fs2 , v112
	.byte	W16
	.byte		N09   , Fs2 , v104
	.byte	W08
	.byte		N08   , As2 , v120
	.byte	W16
	.byte		        Cs3 , v112
	.byte	W08
/* 001   ----------------------------------------
 */	.byte		N09   , Fs3 , v096
	.byte	W24
	.byte		N36   , En3 , v127
	.byte	W20
	.byte		MOD   , 4
	.byte	W01
	.byte		        7
	.byte	W01
	.byte		        9
	.byte	W01
	.byte		        10
	.byte	W01
	.byte		        14
	.byte	W02
	.byte		        16
	.byte	W01
	.byte		        17
	.byte	W01
	.byte		        18
	.byte	W05
	.byte		        16
	.byte	W01
	.byte		        14
	.byte	W01
	.byte		        12
	.byte	W01
	.byte		        10
	.byte	W01
	.byte		        7
	.byte	W01
	.byte		        0
	.byte	W02
	.byte		N30   , Ds3 , v108
	.byte	W23
	.byte		MOD   , 5
	.byte	W02
	.byte		        6
	.byte	W04
	.byte		        7
	.byte	W02
	.byte		        8
	.byte	W01
/* 002   ----------------------------------------
 */	.byte		        9
	.byte		N23   , Bn2 , v112
	.byte	W02
	.byte		MOD   , 10
	.byte	W05
	.byte		        9
	.byte	W01
	.byte		        4
	.byte	W01
	.byte		        0
	.byte	W15
	.byte		TIE   , An2 , v124
	.byte	W42
	.byte		MOD   , 1
	.byte	W01
	.byte		        7
	.byte	W02
	.byte		        9
	.byte	W03
	.byte		        10
	.byte	W05
	.byte		        11
	.byte	W01
	.byte		        12
	.byte	W02
	.byte		        13
	.byte	W01
	.byte		        14
	.byte	W01
	.byte		        16
	.byte	W01
	.byte		        17
	.byte	W01
	.byte		        18
	.byte	W01
	.byte		        19
	.byte	W04
	.byte		        20
	.byte	W02
	.byte		        21
	.byte	W01
	.byte		        22
	.byte	W04
/* 003   ----------------------------------------
 */	.byte		        23
	.byte	W36
	.byte		EOT   
	.byte	W44
	.byte	W03
	.byte		MOD   , 21
	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_game_over_3:
	.byte	KEYSH , mus_game_over_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 62
	.byte		VOL   , 100*mus_game_over_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 0
	.byte		N07   , Cs1 , v112
	.byte	W08
	.byte		        Ds1 , v124
	.byte	W08
	.byte		        Fn1 , v120
	.byte	W08
	.byte		N09   , Fs1 , v116
	.byte	W40
	.byte		N07   , Fs1 , v112
	.byte	W08
	.byte		N12   , Cs1 
	.byte	W24
/* 001   ----------------------------------------
 */	.byte	W16
	.byte		N07   , Cs1 , v116
	.byte	W08
	.byte		N36   , Gs1 , v127
	.byte	W40
	.byte		N30   , Fs1 , v124
	.byte	W32
/* 002   ----------------------------------------
 */	.byte		N23   , En1 , v127
	.byte	W24
	.byte		TIE   , Ds1 , v124
	.byte	W72
/* 003   ----------------------------------------
 */	.byte	W30
	.byte	W01
	.byte		EOT   
	.byte	W01
	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_game_over_4:
	.byte	KEYSH , mus_game_over_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 81
	.byte		VOL   , 89*mus_game_over_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		LFOS  , 21
	.byte		MODT  , 0
	.byte		LFODL , 0
	.byte	W24
	.byte		N06   , Fs2 , v108
	.byte	W16
	.byte		N08   , Fs2 , v092
	.byte	W08
	.byte		N07   , As2 , v100
	.byte		N06   , Cs3 , v092
	.byte	W16
	.byte		N05   , As2 , v096
	.byte		N06   , Cs3 , v084
	.byte	W08
	.byte		N07   , Cs2 , v108
	.byte	W24
/* 001   ----------------------------------------
 */	.byte		N09   , Fs2 , v112
	.byte		N08   , Cs3 , v104
	.byte	W16
	.byte		N07   , As2 , v112
	.byte		N07   , Cs3 , v104
	.byte	W08
	.byte		N36   , Gs2 , v100
	.byte		N36   , Bn2 , v084
	.byte	W20
	.byte		MOD   , 4
	.byte	W01
	.byte		        7
	.byte	W01
	.byte		        9
	.byte	W01
	.byte		        10
	.byte	W01
	.byte		        14
	.byte	W02
	.byte		        16
	.byte	W01
	.byte		        17
	.byte	W01
	.byte		        18
	.byte	W05
	.byte		        16
	.byte	W01
	.byte		        14
	.byte	W01
	.byte		        12
	.byte	W01
	.byte		        10
	.byte	W01
	.byte		        7
	.byte	W01
	.byte		        0
	.byte	W02
	.byte		N30   , Fs2 , v096
	.byte		N30   , Bn2 , v088
	.byte	W23
	.byte		MOD   , 5
	.byte	W02
	.byte		        6
	.byte	W04
	.byte		        7
	.byte	W02
	.byte		        8
	.byte	W01
/* 002   ----------------------------------------
 */	.byte		        9
	.byte		N23   , En2 , v084
	.byte		N23   , Gs2 , v100
	.byte	W02
	.byte		MOD   , 10
	.byte	W05
	.byte		        9
	.byte	W01
	.byte		        4
	.byte	W01
	.byte		        0
	.byte	W15
	.byte		TIE   , Ds2 , v096
	.byte		TIE   , Gn2 , v080
	.byte	W42
	.byte		MOD   , 1
	.byte	W01
	.byte		        7
	.byte	W02
	.byte		        9
	.byte	W03
	.byte		        10
	.byte	W05
	.byte		        11
	.byte	W01
	.byte		        12
	.byte	W02
	.byte		        13
	.byte	W01
	.byte		        14
	.byte	W01
	.byte		        16
	.byte	W01
	.byte		        17
	.byte	W01
	.byte		        18
	.byte	W01
	.byte		        19
	.byte	W04
	.byte		        20
	.byte	W02
	.byte		        21
	.byte	W01
	.byte		        22
	.byte	W04
/* 003   ----------------------------------------
 */	.byte		        23
	.byte	W32
	.byte	W03
	.byte		EOT   , Ds2 
	.byte	W01
	.byte		        Gn2 
	.byte	W44
	.byte	W03
	.byte		MOD   , 30
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_game_over):
	.byte	4	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_game_over_pri	/* Priority */
	.byte	mus_game_over_rev	/* Reverb */

mAlignWord
	mPtr	mus_game_over_grp

	mPtr	mus_game_over_1
	mPtr	mus_game_over_2
	mPtr	mus_game_over_3
	mPtr	mus_game_over_4

	.end
