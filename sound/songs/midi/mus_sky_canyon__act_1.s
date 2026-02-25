	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_sky_canyon__act_1_grp, voicegroup013
	.equ	mus_sky_canyon__act_1_pri, 0
	.equ	mus_sky_canyon__act_1_rev, reverb_set+0
	.equ	mus_sky_canyon__act_1_mvl, 110
	.equ	mus_sky_canyon__act_1_key, 0
	.equ	mus_sky_canyon__act_1_tbs, 1
	.equ	mus_sky_canyon__act_1_exg, 1
	.equ	mus_sky_canyon__act_1_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_sky_canyon__act_1)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_sky_canyon__act_1_1:
	.byte	KEYSH , mus_sky_canyon__act_1_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 130*mus_sky_canyon__act_1_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_sky_canyon__act_1_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		N48   , Cs2 , v127
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W24
	.byte		N06   , Gs1 
	.byte	W12
	.byte		        An1 , v088
	.byte	W18
	.byte		        An1 , v127
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W06
/* 002   ----------------------------------------
 */	.byte		N18   , Fn1 
	.byte		N36   , Cs2 
	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W30
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
mus_sky_canyon__act_1_1_B1:
/* 004   ----------------------------------------
 */	.byte		N06   , Cn1 , v127
	.byte		N12   , En1 , v032
	.byte		N48   , Cs2 , v127
	.byte	W18
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N12   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N06   , Cn1 , v108
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte		N11   , En1 , v048
	.byte	W12
/* 005   ----------------------------------------
 */mus_sky_canyon__act_1_1_005:
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N06   , Cn1 , v108
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte		        Cn1 , v108
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		N06   , Cn1 , v108
	.byte		N10   , En1 , v048
	.byte		N30   , Cs2 , v127
	.byte	W12
	.byte	PEND
/* 006   ----------------------------------------
 */mus_sky_canyon__act_1_1_006:
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N06   , Cn1 , v108
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte		N11   , En1 , v048
	.byte	W12
	.byte	PEND
/* 007   ----------------------------------------
 */	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N06   , Cn1 , v108
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte		        Cn1 , v108
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		N06   , Cn1 , v108
	.byte		N10   , En1 , v048
	.byte	W12
/* 008   ----------------------------------------
 */	.byte		N06   , Cn1 , v127
	.byte		N48   , Cs2 
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N06   , Cn1 , v108
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte		N11   , En1 , v048
	.byte	W12
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_1_005
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_1_006
/* 011   ----------------------------------------
 */	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N06   , Cn1 , v108
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte		        Cn1 , v108
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		N06   , Cs1 , v127
	.byte		N10   , En1 , v048
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte	W06
/* 012   ----------------------------------------
 */mus_sky_canyon__act_1_1_012:
	.byte		N06   , Cn1 , v127
	.byte	W12
	.byte		N06   
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N06   , Cn1 , v108
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte		N11   , En1 , v048
	.byte	W12
	.byte	PEND
/* 013   ----------------------------------------
 */mus_sky_canyon__act_1_1_013:
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N06   , Cn1 , v108
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		N06   , Cn1 , v108
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		N06   , Cs1 , v127
	.byte		N10   , En1 , v048
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte	PEND
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_1_006
/* 015   ----------------------------------------
 */mus_sky_canyon__act_1_1_015:
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N06   , Cn1 , v108
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W06
	.byte		N12   , Cs1 , v127
	.byte	W06
	.byte		N06   , Cn1 , v108
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		N06   , Cs1 , v127
	.byte		N10   , En1 , v048
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte	PEND
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_1_012
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_1_013
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_1_006
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_1_015
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_1_012
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_1_013
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_1_006
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_1_015
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_1_012
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_1_013
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_1_006
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_1_015
/* 028   ----------------------------------------
 */	.byte		N06   , Cn1 , v127
	.byte		N48   , Cs2 
	.byte	W12
	.byte		N06   , Cn1 
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N06   , Cn1 , v108
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte		N11   , En1 , v048
	.byte	W12
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_1_013
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_1_006
/* 031   ----------------------------------------
 */	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N06   , Cn1 , v108
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		N12   , Cs1 , v127
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		N12   , Cs1 , v127
	.byte		N10   , En1 , v048
	.byte	W12
/* 032   ----------------------------------------
 */	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte		N72   , Cs2 , v127
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N06   , Cn1 , v108
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N12   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte		N11   , En1 , v048
	.byte	W12
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_1_015
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_1_006
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_1_015
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_1_006
/* 037   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_1_015
/* 038   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_1_006
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_1_015
	.byte	GOTO
	 mPtr	mus_sky_canyon__act_1_1_B1
mus_sky_canyon__act_1_1_B2:
/* 040   ----------------------------------------
 */	.byte		N06   , Cn1 , v127
	.byte		N12   , En1 , v032
	.byte		N48   , Cs2 , v127
	.byte	W18
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N06   , Cn1 , v108
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte		N11   , En1 , v048
	.byte	W12
/* 041   ----------------------------------------
 */	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N06   , Cn1 , v108
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte		        Cn1 , v108
	.byte		N03   , Dn1 , v048
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte		N03   , Dn1 , v072
	.byte	W12
	.byte		N06   , Cn1 , v108
	.byte		N10   , En1 , v048
	.byte		N12   , Cs2 , v127
	.byte	W12
/* 042   ----------------------------------------
 */	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_sky_canyon__act_1_2:
	.byte	KEYSH , mus_sky_canyon__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 74
	.byte		VOL   , 104*mus_sky_canyon__act_1_mvl/mxv
	.byte	PRIO  , 30
	.byte		PAN   , c_v+0
	.byte		BENDR , 13
	.byte		LFOS  , 18
	.byte		LFODL , 20
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		BEND  , c_v+0
	.byte		N56   , En2 , v116
	.byte	W60
	.byte		N08   
	.byte	W24
	.byte		TIE   , Dn2 , v100
	.byte	W12
/* 001   ----------------------------------------
 */	.byte	W92
	.byte	W01
	.byte		EOT   
	.byte	W03
/* 002   ----------------------------------------
 */	.byte		N56   , Cs2 , v104
	.byte	W60
	.byte		N08   , Cs2 , v108
	.byte	W24
	.byte		TIE   , Dn2 , v100
	.byte	W12
/* 003   ----------------------------------------
 */	.byte	W92
	.byte	W01
	.byte		EOT   
	.byte	W03
mus_sky_canyon__act_1_2_B1:
/* 004   ----------------------------------------
 */mus_sky_canyon__act_1_2_004:
	.byte		N13   , An3 , v127
	.byte	W24
	.byte		N11   , Gs3 
	.byte	W18
	.byte		N05   , An3 
	.byte	W06
	.byte		N09   , En3 
	.byte	W12
	.byte		N08   , An3 
	.byte	W24
	.byte		N60   , Gn3 
	.byte	W12
	.byte	PEND
/* 005   ----------------------------------------
 */mus_sky_canyon__act_1_2_005:
	.byte	W60
	.byte		N11   , Dn3 , v127
	.byte	W12
	.byte		N07   , Dn4 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte	PEND
/* 006   ----------------------------------------
 */	.byte	W12
	.byte		N11   , Cs3 
	.byte	W24
	.byte		N03   , Cn3 
	.byte	W12
	.byte		N19   , Cs3 
	.byte	W24
	.byte		N04   , An2 
	.byte	W12
	.byte		N42   , Gn3 
	.byte	W12
/* 007   ----------------------------------------
 */	.byte	W36
	.byte		N04   , Fs3 
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W24
	.byte		N16   
	.byte	W24
/* 008   ----------------------------------------
 */	.byte		N13   , An3 
	.byte	W24
	.byte		N10   
	.byte	W18
	.byte		N03   
	.byte	W06
	.byte		N09   , En3 
	.byte	W12
	.byte		N08   , An3 
	.byte	W24
	.byte		N56   , Bn3 
	.byte	W12
/* 009   ----------------------------------------
 */	.byte	W48
	.byte		N11   , Gn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W12
	.byte		N11   , An3 
	.byte	W12
/* 010   ----------------------------------------
 */	.byte	W12
	.byte		N09   
	.byte	W24
	.byte		N11   , En3 
	.byte	W12
	.byte		N04   , An3 
	.byte	W12
	.byte		N21   , En4 
	.byte	W24
	.byte		N66   , Dn4 
	.byte	W12
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
 */	.byte	W24
	.byte	W01
	.byte		N14   , Gs3 
	.byte	W17
	.byte		N02   , Gs3 , v104
	.byte	W18
	.byte		N02   
	.byte	W36
/* 029   ----------------------------------------
 */	.byte	W96
/* 030   ----------------------------------------
 */	.byte	W24
	.byte	W01
	.byte		N14   , Fs3 , v127
	.byte	W17
	.byte		N02   , Fs3 , v104
	.byte	W54
/* 031   ----------------------------------------
 */	.byte	W24
	.byte	W01
	.byte		N14   , Fs3 , v127
	.byte	W17
	.byte		N02   , Fs3 , v104
	.byte	W18
	.byte		N06   , Dn3 , v116
	.byte	W12
	.byte		N05   , Ds3 
	.byte	W11
	.byte		N20   , En3 , v127
	.byte	W13
/* 032   ----------------------------------------
 */	.byte	W06
	.byte		N03   , Dn3 , v056
	.byte	W02
	.byte		N02   , Cn3 , v088
	.byte	W02
	.byte		N03   , Bn2 , v100
	.byte	W02
	.byte		N02   , An2 , v092
	.byte	W02
	.byte		        Gn2 
	.byte	W01
	.byte		        Fs2 , v096
	.byte	W02
	.byte		        En2 , v072
	.byte	W02
	.byte		        Dn2 , v076
	.byte	W03
	.byte		N01   , Cn2 , v100
	.byte	W02
	.byte		        Bn1 , v072
	.byte	W01
	.byte		N14   , Gs3 , v127
	.byte	W17
	.byte		N02   , Gs3 , v104
	.byte	W54
/* 033   ----------------------------------------
 */	.byte	W24
	.byte	W01
	.byte		N16   , Bn3 , v127
	.byte	W14
	.byte		N03   , An3 , v076
	.byte	W02
	.byte		        Gn3 
	.byte	W02
	.byte		N02   , Fn3 , v080
	.byte	W02
	.byte		        En3 , v100
	.byte	W02
	.byte		        Dn3 , v104
	.byte	W01
	.byte		        Cn3 
	.byte	W01
	.byte		        Bn2 , v096
	.byte	W02
	.byte		N01   , An2 , v064
	.byte	W01
	.byte		        Gn2 , v068
	.byte	W44
/* 034   ----------------------------------------
 */	.byte	W24
	.byte	W01
	.byte		N14   , Fs3 , v120
	.byte	W16
	.byte		N02   , Fs3 , v104
	.byte	W18
	.byte		N03   , Fs3 , v116
	.byte	W36
	.byte	W01
/* 035   ----------------------------------------
 */	.byte	W24
	.byte		N18   
	.byte	W32
	.byte	W03
	.byte		N13   , Fs3 , v127
	.byte	W14
	.byte		N02   , Fn3 , v108
	.byte	W01
	.byte		N05   , En3 , v096
	.byte	W04
	.byte		N03   , Dn3 
	.byte	W01
	.byte		        Cn3 , v064
	.byte	W03
	.byte		        Bn2 , v092
	.byte	W02
	.byte		N02   , An2 , v080
	.byte	W02
	.byte		N01   , Gn2 
	.byte	W03
	.byte		        Fn2 , v072
	.byte	W01
	.byte		        En2 , v076
	.byte	W06
/* 036   ----------------------------------------
 */	.byte	W96
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	W96
/* 039   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_sky_canyon__act_1_2_B1
mus_sky_canyon__act_1_2_B2:
/* 040   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_2_004
/* 041   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_2_005
/* 042   ----------------------------------------
 */	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_sky_canyon__act_1_3:
	.byte	KEYSH , mus_sky_canyon__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 2
	.byte		VOL   , 110*mus_sky_canyon__act_1_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 56
	.byte		LFODL , 0
	.byte		MOD   , 0
	.byte		MODT  , 2
	.byte		N40   , An1 , v120
	.byte	W48
	.byte		N12   , An1 , v116
	.byte	W12
	.byte		        En2 , v096
	.byte	W12
	.byte		N06   , An2 , v108
	.byte	W12
	.byte		N22   , An2 , v116
	.byte	W12
/* 001   ----------------------------------------
 */	.byte	W12
	.byte		N09   , En2 , v108
	.byte	W12
	.byte		N32   , An1 , v116
	.byte	W36
	.byte		N20   , En2 
	.byte	W24
	.byte		N08   , En2 , v096
	.byte	W12
/* 002   ----------------------------------------
 */	.byte		N44   , An1 , v116
	.byte	W48
	.byte		N10   , An1 , v104
	.byte	W12
	.byte		N14   , En2 , v100
	.byte	W12
	.byte		N05   , An2 , v108
	.byte	W12
	.byte		N23   , An2 , v120
	.byte	W12
/* 003   ----------------------------------------
 */	.byte	W12
	.byte		N06   , En2 , v108
	.byte	W12
	.byte		N24   , An1 , v127
	.byte	W24
	.byte		N11   , Dn3 , v104
	.byte	W12
	.byte		        Cs3 , v116
	.byte	W12
	.byte		N05   , Bn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N11   , En2 
	.byte	W12
mus_sky_canyon__act_1_3_B1:
/* 004   ----------------------------------------
 */mus_sky_canyon__act_1_3_004:
	.byte		N18   , An1 , v127
	.byte	W24
	.byte		        Gs2 
	.byte	W18
	.byte		N06   , An2 
	.byte	W06
	.byte		N13   , An1 
	.byte	W12
	.byte		N11   , En2 , v124
	.byte	W12
	.byte		N06   , Dn2 , v127
	.byte	W12
	.byte		N17   , Gn1 
	.byte	W12
	.byte	PEND
/* 005   ----------------------------------------
 */mus_sky_canyon__act_1_3_005:
	.byte	W12
	.byte		N05   , Gn1 , v127
	.byte	W12
	.byte		N16   , Dn2 
	.byte	W18
	.byte		N04   , Gn1 
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		N13   
	.byte	W12
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N09   , An1 
	.byte	W12
	.byte	PEND
/* 006   ----------------------------------------
 */mus_sky_canyon__act_1_3_006:
	.byte	W12
	.byte		N13   , An1 , v127
	.byte	W12
	.byte		N18   , Gs2 
	.byte	W18
	.byte		N06   , An2 
	.byte	W06
	.byte		N13   , An1 
	.byte	W12
	.byte		N14   , En2 , v124
	.byte	W12
	.byte		N04   , Dn2 , v127
	.byte	W12
	.byte		N17   , Gn1 
	.byte	W12
	.byte	PEND
/* 007   ----------------------------------------
 */mus_sky_canyon__act_1_3_007:
	.byte	W12
	.byte		N05   , Gn1 , v127
	.byte	W12
	.byte		N16   , Dn2 
	.byte	W18
	.byte		N04   , Gn1 
	.byte	W06
	.byte		N07   
	.byte	W12
	.byte		N13   
	.byte	W12
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N09   , Gn2 
	.byte	W12
	.byte	PEND
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_3_004
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_3_005
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_3_006
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_3_007
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_3_004
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_3_005
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_3_006
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_3_007
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_3_004
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_3_005
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_3_006
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_3_007
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_3_004
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_3_005
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_3_006
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_3_007
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_3_004
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_3_005
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_3_006
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_3_007
/* 028   ----------------------------------------
 */	.byte		N18   , En1 , v127
	.byte	W24
	.byte		        Ds2 
	.byte	W18
	.byte		N06   , En2 
	.byte	W06
	.byte		N13   , En1 
	.byte	W12
	.byte		N11   , Bn1 , v124
	.byte	W12
	.byte		N06   , An1 , v127
	.byte	W12
	.byte		N17   , En1 
	.byte	W12
/* 029   ----------------------------------------
 */mus_sky_canyon__act_1_3_029:
	.byte	W12
	.byte		N05   , En1 , v127
	.byte	W12
	.byte		N16   , Bn1 
	.byte	W18
	.byte		N04   , En1 
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		N13   
	.byte	W12
	.byte		N12   , Bn1 
	.byte	W12
	.byte		N09   , En1 
	.byte	W12
	.byte	PEND
/* 030   ----------------------------------------
 */mus_sky_canyon__act_1_3_030:
	.byte	W12
	.byte		N13   , Dn1 , v127
	.byte	W12
	.byte		N18   , Cs2 
	.byte	W18
	.byte		N06   , Dn2 
	.byte	W06
	.byte		N13   , Dn1 
	.byte	W12
	.byte		N14   , An1 , v124
	.byte	W12
	.byte		N04   , Gn1 , v127
	.byte	W12
	.byte		N17   , Dn1 
	.byte	W12
	.byte	PEND
/* 031   ----------------------------------------
 */	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N16   , An1 
	.byte	W18
	.byte		N04   , Dn1 
	.byte	W06
	.byte		N07   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N19   , En1 
	.byte	W12
/* 032   ----------------------------------------
 */	.byte	W24
	.byte		N18   , Ds2 
	.byte	W18
	.byte		N06   , En2 
	.byte	W06
	.byte		N13   , En1 
	.byte	W12
	.byte		N11   , Bn1 , v124
	.byte	W12
	.byte		N06   , An1 , v127
	.byte	W12
	.byte		N17   , En1 
	.byte	W12
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_3_029
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_3_030
/* 035   ----------------------------------------
 */	.byte	W12
	.byte		N05   , Dn1 , v127
	.byte	W12
	.byte		N16   , An1 
	.byte	W18
	.byte		N04   , Dn1 
	.byte	W06
	.byte		N07   
	.byte	W12
	.byte		N13   
	.byte	W12
	.byte		N12   , An1 
	.byte	W12
	.byte		N09   , Dn2 
	.byte	W12
/* 036   ----------------------------------------
 */	.byte		N18   , Bn1 
	.byte	W24
	.byte		        As2 
	.byte	W18
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N13   , Bn1 
	.byte	W12
	.byte		N11   , Fs2 , v124
	.byte	W12
	.byte		N06   , En2 , v127
	.byte	W12
	.byte		N17   , Bn1 
	.byte	W12
/* 037   ----------------------------------------
 */	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N16   , Fs2 
	.byte	W18
	.byte		N04   , Bn1 
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		N13   
	.byte	W12
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N09   , Bn1 
	.byte	W12
/* 038   ----------------------------------------
 */	.byte	W12
	.byte		N13   
	.byte	W12
	.byte		N18   , As2 
	.byte	W18
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N13   , Bn1 
	.byte	W12
	.byte		N14   , Fs2 , v124
	.byte	W12
	.byte		N04   , En2 , v127
	.byte	W12
	.byte		N17   , Bn1 
	.byte	W12
/* 039   ----------------------------------------
 */	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte	GOTO
	 mPtr	mus_sky_canyon__act_1_3_B1
mus_sky_canyon__act_1_3_B2:
/* 040   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_3_004
/* 041   ----------------------------------------
 */	.byte	W12
	.byte		N05   , Gn1 , v127
	.byte	W12
	.byte		N16   , Dn2 
	.byte	W18
	.byte		N04   , Gn1 
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		N13   
	.byte	W12
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N09   , An1 
	.byte	W09
	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_sky_canyon__act_1_4:
	.byte	KEYSH , mus_sky_canyon__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 5
	.byte		VOL   , 85*mus_sky_canyon__act_1_mvl/mxv
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
mus_sky_canyon__act_1_4_B1:
/* 004   ----------------------------------------
 */mus_sky_canyon__act_1_4_004:
	.byte		N12   , An3 , v120
	.byte	W24
	.byte		        An3 , v108
	.byte	W24
	.byte		        En3 , v092
	.byte	W12
	.byte		N06   , An3 , v120
	.byte	W24
	.byte		N66   , Gn3 , v104
	.byte	W12
	.byte	PEND
/* 005   ----------------------------------------
 */mus_sky_canyon__act_1_4_005:
	.byte	W60
	.byte		N18   , Gn3 , v080
	.byte	W24
	.byte		N12   , En3 , v108
	.byte	W12
	.byte	PEND
/* 006   ----------------------------------------
 */mus_sky_canyon__act_1_4_006:
	.byte	W12
	.byte		N12   , Cs3 , v108
	.byte	W24
	.byte		N30   , En3 , v100
	.byte	W36
	.byte		N06   , An2 , v080
	.byte	W12
	.byte		N42   , Gn3 , v108
	.byte	W12
	.byte	PEND
/* 007   ----------------------------------------
 */	.byte	W36
	.byte		N06   , Fs3 , v064
	.byte	W12
	.byte		        Dn3 , v076
	.byte	W12
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_4_004
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_4_005
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_4_006
/* 011   ----------------------------------------
 */	.byte	W36
	.byte		N06   , Fs3 , v064
	.byte	W12
	.byte		        Dn3 , v076
	.byte	W24
	.byte		N12   
	.byte	W24
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
 */	.byte	W24
	.byte		N23   , Bn2 , v120
	.byte	W24
	.byte		N24   , En3 , v104
	.byte	W24
	.byte	W01
	.byte		N15   , Bn3 
	.byte	W14
	.byte		N06   , An3 , v092
	.byte	W05
	.byte		        Gs3 , v100
	.byte	W04
/* 030   ----------------------------------------
 */	.byte	W01
	.byte		TIE   , Fs3 , v092
	.byte	W92
	.byte	W03
/* 031   ----------------------------------------
 */	.byte	W52
	.byte		EOT   
	.byte	W44
/* 032   ----------------------------------------
 */	.byte	W96
/* 033   ----------------------------------------
 */	.byte	W24
	.byte		N24   , Bn2 , v116
	.byte	W24
	.byte		        En3 , v096
	.byte	W24
	.byte		N18   , Bn3 , v104
	.byte	W16
	.byte		N06   , An3 , v096
	.byte	W04
	.byte		        Gs3 
	.byte	W04
/* 034   ----------------------------------------
 */	.byte		TIE   , Fs3 , v100
	.byte	W96
/* 035   ----------------------------------------
 */	.byte	W20
	.byte		EOT   
	.byte	W03
	.byte		N24   , Fs3 , v088
	.byte	W24
	.byte		N23   , Gs3 , v096
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		N92   , Bn3 
	.byte	W01
/* 036   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		        An3 
	.byte	W01
/* 037   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		        Gs3 
	.byte	W01
/* 038   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		        Fs3 
	.byte	W01
/* 039   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_sky_canyon__act_1_4_B1
mus_sky_canyon__act_1_4_B2:
/* 040   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_4_004
/* 041   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_4_005
/* 042   ----------------------------------------
 */	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_sky_canyon__act_1_5:
	.byte	KEYSH , mus_sky_canyon__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 6
	.byte		VOL   , 85*mus_sky_canyon__act_1_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 23
	.byte		LFODL , 22
	.byte		MOD   , 4
	.byte		MODT  , 0
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
mus_sky_canyon__act_1_5_B1:
/* 004   ----------------------------------------
 */mus_sky_canyon__act_1_5_004:
	.byte		N18   , En4 , v116
	.byte	W24
	.byte		N12   , En4 , v120
	.byte	W24
	.byte		        Cs4 , v108
	.byte	W12
	.byte		N06   , En4 , v100
	.byte	W24
	.byte		N66   , Bn3 , v116
	.byte	W12
	.byte	PEND
/* 005   ----------------------------------------
 */mus_sky_canyon__act_1_5_005:
	.byte	W60
	.byte		N18   , An3 , v076
	.byte	W24
	.byte		N12   , An3 , v096
	.byte	W12
	.byte	PEND
/* 006   ----------------------------------------
 */mus_sky_canyon__act_1_5_006:
	.byte	W12
	.byte		N12   , An3 , v108
	.byte	W24
	.byte		N30   , Cs4 , v076
	.byte	W36
	.byte		N06   , En3 , v092
	.byte	W12
	.byte		N42   , Bn3 , v104
	.byte	W12
	.byte	PEND
/* 007   ----------------------------------------
 */mus_sky_canyon__act_1_5_007:
	.byte	W36
	.byte		N06   , Dn4 , v088
	.byte	W12
	.byte		        Bn3 , v096
	.byte	W24
	.byte		N18   , Bn3 , v116
	.byte	W24
	.byte	PEND
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_5_004
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_5_005
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_5_006
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_5_007
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
	 mPtr	mus_sky_canyon__act_1_5_B1
mus_sky_canyon__act_1_5_B2:
/* 040   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_5_004
/* 041   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_5_005
/* 042   ----------------------------------------
 */	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_sky_canyon__act_1_6:
	.byte	KEYSH , mus_sky_canyon__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 9
	.byte		VOL   , 114*mus_sky_canyon__act_1_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 13
	.byte		LFOS  , 18
	.byte		LFODL , 20
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		BEND  , c_v+0
	.byte		N56   , En3 , v116
	.byte	W60
	.byte		N11   
	.byte	W24
	.byte		TIE   , Dn3 , v100
	.byte	W12
/* 001   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
/* 002   ----------------------------------------
 */	.byte		N56   , En3 , v104
	.byte	W60
	.byte		N11   , En3 , v108
	.byte	W24
	.byte		TIE   , Dn3 , v100
	.byte	W12
/* 003   ----------------------------------------
 */	.byte	W92
	.byte	W01
	.byte		EOT   
	.byte	W03
mus_sky_canyon__act_1_6_B1:
/* 004   ----------------------------------------
 */	.byte		N21   , En3 , v127
	.byte	W20
	.byte		N02   , Dn3 , v092
	.byte	W01
	.byte		        Cn3 , v100
	.byte	W02
	.byte		N01   , Bn2 , v116
	.byte	W02
	.byte		        An2 , v108
	.byte	W01
	.byte		        Gn2 
	.byte	W01
	.byte		        Fs2 , v116
	.byte	W01
	.byte		        En2 , v104
	.byte	W01
	.byte		        Dn2 
	.byte	W02
	.byte		        Cn2 , v068
	.byte	W01
	.byte		        Bn1 , v100
	.byte	W64
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte	W96
/* 007   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		N21   , En3 , v127
	.byte	W01
/* 008   ----------------------------------------
 */	.byte	W20
	.byte		N02   , Dn3 , v092
	.byte	W01
	.byte		        Cn3 , v100
	.byte	W02
	.byte		N01   , Bn2 , v116
	.byte	W02
	.byte		        An2 , v108
	.byte	W01
	.byte		        Gn2 
	.byte	W01
	.byte		        Fs2 , v116
	.byte	W01
	.byte		        En2 , v104
	.byte	W01
	.byte		        Dn2 
	.byte	W02
	.byte		        Cn2 , v068
	.byte	W01
	.byte		        Bn1 , v100
	.byte	W64
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */	.byte	W96
/* 011   ----------------------------------------
 */	.byte	W96
/* 012   ----------------------------------------
 */mus_sky_canyon__act_1_6_012:
	.byte	W24
	.byte		N16   , En3 , v127
	.byte	W18
	.byte		N02   , En3 , v100
	.byte	W18
	.byte		N04   , En3 , v108
	.byte	W36
	.byte	PEND
/* 013   ----------------------------------------
 */mus_sky_canyon__act_1_6_013:
	.byte	W24
	.byte		N15   , Dn3 , v120
	.byte	W18
	.byte		N02   , Dn3 , v096
	.byte	W54
	.byte	PEND
/* 014   ----------------------------------------
 */mus_sky_canyon__act_1_6_014:
	.byte	W24
	.byte		N14   , En3 , v127
	.byte	W18
	.byte		N02   , En3 , v104
	.byte	W18
	.byte		N05   , En3 , v127
	.byte	W36
	.byte	PEND
/* 015   ----------------------------------------
 */mus_sky_canyon__act_1_6_015:
	.byte	W24
	.byte		N14   , Dn3 , v127
	.byte	W18
	.byte		N04   , Dn3 , v108
	.byte	W54
	.byte	PEND
/* 016   ----------------------------------------
 */mus_sky_canyon__act_1_6_016:
	.byte	W24
	.byte		N14   , En3 , v127
	.byte	W18
	.byte		N03   , En3 , v120
	.byte	W18
	.byte		        En3 , v116
	.byte	W36
	.byte	PEND
/* 017   ----------------------------------------
 */mus_sky_canyon__act_1_6_017:
	.byte	W24
	.byte		N15   , Dn3 , v127
	.byte	W18
	.byte		N03   , Dn3 , v116
	.byte	W54
	.byte	PEND
/* 018   ----------------------------------------
 */mus_sky_canyon__act_1_6_018:
	.byte	W24
	.byte		N13   , En3 , v116
	.byte	W18
	.byte		N03   
	.byte	W18
	.byte		N04   , En3 , v120
	.byte	W36
	.byte	PEND
/* 019   ----------------------------------------
 */mus_sky_canyon__act_1_6_019:
	.byte	W24
	.byte		N14   , Dn3 , v127
	.byte	W18
	.byte		N03   , Dn3 , v108
	.byte	W54
	.byte	PEND
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_6_012
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_6_013
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_6_014
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_6_015
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_6_016
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_6_017
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_6_018
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_6_019
/* 028   ----------------------------------------
 */	.byte	W24
	.byte		N15   , Bn2 , v116
	.byte	W18
	.byte		N03   , Bn2 , v096
	.byte	W18
	.byte		N04   , Bn2 , v127
	.byte	W36
/* 029   ----------------------------------------
 */	.byte	W24
	.byte		N15   
	.byte	W18
	.byte		N02   , Bn2 , v100
	.byte	W18
	.byte		N11   , Bn2 , v120
	.byte	W12
	.byte		N10   , As2 , v100
	.byte	W12
	.byte		N06   , An2 , v120
	.byte	W12
/* 030   ----------------------------------------
 */	.byte	W24
	.byte		N13   , An2 , v127
	.byte	W18
	.byte		N03   , An2 , v116
	.byte	W54
/* 031   ----------------------------------------
 */	.byte	W24
	.byte		N13   , An2 , v127
	.byte	W18
	.byte		N04   , An2 , v104
	.byte	W18
	.byte		N07   , An2 , v108
	.byte	W12
	.byte		N10   , As2 
	.byte	W12
	.byte		N09   , Bn2 , v100
	.byte	W12
/* 032   ----------------------------------------
 */	.byte	W24
	.byte		N16   , Bn2 , v127
	.byte	W18
	.byte		N03   , Bn2 , v116
	.byte	W54
/* 033   ----------------------------------------
 */	.byte	W24
	.byte		N15   , Bn2 , v127
	.byte	W18
	.byte		N03   , Bn2 , v108
	.byte	W18
	.byte		N12   , Bn2 , v127
	.byte	W12
	.byte		        As2 , v116
	.byte	W12
	.byte		N09   , An2 
	.byte	W12
/* 034   ----------------------------------------
 */	.byte	W24
	.byte		N14   , An2 , v127
	.byte	W18
	.byte		N03   , An2 , v120
	.byte	W18
	.byte		N03   
	.byte	W36
/* 035   ----------------------------------------
 */	.byte	W24
	.byte		N14   , An2 , v127
	.byte	W18
	.byte		N03   , An2 , v108
	.byte	W18
	.byte		N03   
	.byte	W36
/* 036   ----------------------------------------
 */	.byte	W96
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	W96
/* 039   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_sky_canyon__act_1_6_B1
mus_sky_canyon__act_1_6_B2:
/* 040   ----------------------------------------
 */	.byte		N21   , En3 , v127
	.byte	W20
	.byte		N02   , Dn3 , v092
	.byte	W01
	.byte		        Cn3 , v100
	.byte	W02
	.byte		N01   , Bn2 , v116
	.byte	W02
	.byte		        An2 , v108
	.byte	W01
	.byte		        Gn2 
	.byte	W01
	.byte		        Fs2 , v116
	.byte	W01
	.byte		        En2 , v104
	.byte	W01
	.byte		        Dn2 
	.byte	W02
	.byte		        Cn2 , v068
	.byte	W01
	.byte		        Bn1 , v100
	.byte	W01
	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_sky_canyon__act_1_7:
	.byte	KEYSH , mus_sky_canyon__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 4
	.byte	PRIO  , 30
	.byte		VOL   , 59*mus_sky_canyon__act_1_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 23
	.byte		LFODL , 22
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
mus_sky_canyon__act_1_7_B1:
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
 */mus_sky_canyon__act_1_7_012:
	.byte	W24
	.byte		N14   , Cs4 , v127
	.byte	W18
	.byte		N06   , Dn4 
	.byte	W06
	.byte		N10   , En4 
	.byte	W12
	.byte		N19   , An3 
	.byte	W24
	.byte		N30   , Bn3 
	.byte	W12
	.byte	PEND
/* 013   ----------------------------------------
 */	.byte	W96
/* 014   ----------------------------------------
 */mus_sky_canyon__act_1_7_014:
	.byte	W24
	.byte		N12   , Cs4 , v127
	.byte	W18
	.byte		N09   , An3 
	.byte	W06
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N14   , Dn4 
	.byte	W12
	.byte		N06   , En4 
	.byte	W12
	.byte		N20   , Gn4 
	.byte	W12
	.byte	PEND
/* 015   ----------------------------------------
 */mus_sky_canyon__act_1_7_015:
	.byte	W12
	.byte		N06   , Fs4 , v127
	.byte	W12
	.byte		N08   , En4 
	.byte	W72
	.byte	PEND
/* 016   ----------------------------------------
 */mus_sky_canyon__act_1_7_016:
	.byte	W24
	.byte		N10   , Cs4 , v127
	.byte	W18
	.byte		N08   , Dn4 
	.byte	W06
	.byte		N11   , En4 
	.byte	W12
	.byte		N16   , An3 
	.byte	W24
	.byte		N20   , Bn3 
	.byte	W12
	.byte	PEND
/* 017   ----------------------------------------
 */mus_sky_canyon__act_1_7_017:
	.byte	W24
	.byte		N18   , Gn3 , v127
	.byte	W24
	.byte		N16   , Bn3 
	.byte	W24
	.byte		N17   , Dn4 
	.byte	W24
	.byte	PEND
/* 018   ----------------------------------------
 */mus_sky_canyon__act_1_7_018:
	.byte		N28   , Cs4 , v127
	.byte	W36
	.byte		N19   , Dn4 
	.byte	W36
	.byte		N10   , En4 
	.byte	W12
	.byte		N19   , An3 
	.byte	W12
	.byte	PEND
/* 019   ----------------------------------------
 */mus_sky_canyon__act_1_7_019:
	.byte	W12
	.byte		N09   , Cs4 , v127
	.byte	W12
	.byte		N19   , Gn3 
	.byte	W72
	.byte	PEND
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_7_012
/* 021   ----------------------------------------
 */	.byte	W96
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_7_014
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_7_015
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_7_016
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_7_017
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_7_018
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_7_019
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
	.byte	GOTO
	 mPtr	mus_sky_canyon__act_1_7_B1
mus_sky_canyon__act_1_7_B2:
/* 040   ----------------------------------------
 */	.byte	FINE

/* **************** Track 8 (Midi-Chn.8) **************** */

mus_sky_canyon__act_1_8:
	.byte	KEYSH , mus_sky_canyon__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 0
	.byte		VOL   , 80*mus_sky_canyon__act_1_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 23
	.byte		LFODL , 22
	.byte		MOD   , 4
	.byte		MODT  , 0
	.byte		N05   , An2 , v108
	.byte	W06
	.byte		PAN   , c_v-61
	.byte		N05   , Cs3 , v104
	.byte	W06
	.byte		PAN   , c_v-57
	.byte		N05   , En3 , v108
	.byte	W06
	.byte		PAN   , c_v-53
	.byte		N05   , An3 
	.byte	W06
	.byte		PAN   , c_v-49
	.byte		N05   , Cs4 , v104
	.byte	W06
	.byte		PAN   , c_v-45
	.byte		N05   , En4 , v108
	.byte	W06
	.byte		PAN   , c_v-41
	.byte		N05   , An4 
	.byte	W06
	.byte		PAN   , c_v-37
	.byte		N05   , Cs5 , v104
	.byte	W06
	.byte		PAN   , c_v-33
	.byte		N05   , En5 , v108
	.byte	W06
	.byte		PAN   , c_v-29
	.byte		N05   , An5 
	.byte	W06
	.byte		PAN   , c_v-25
	.byte		N05   , En5 
	.byte	W06
	.byte		PAN   , c_v-21
	.byte		N05   , Cs5 , v104
	.byte	W06
	.byte		PAN   , c_v-17
	.byte		N05   , An4 , v108
	.byte	W06
	.byte		PAN   , c_v-13
	.byte		N05   , En4 
	.byte	W06
	.byte		PAN   , c_v-9
	.byte		N05   , Cs4 , v104
	.byte	W06
	.byte		PAN   , c_v-5
	.byte		N05   , An3 
	.byte	W06
/* 001   ----------------------------------------
 */	.byte		PAN   , c_v-1
	.byte		N05   , Gn2 , v096
	.byte	W06
	.byte		PAN   , c_v+3
	.byte		N05   , Bn2 , v104
	.byte	W06
	.byte		PAN   , c_v+7
	.byte		N05   , Dn3 
	.byte	W06
	.byte		PAN   , c_v+11
	.byte		N05   , Gn3 , v096
	.byte	W06
	.byte		PAN   , c_v+15
	.byte		N05   , Bn3 , v104
	.byte	W06
	.byte		PAN   , c_v+19
	.byte		N05   , Dn4 
	.byte	W06
	.byte		PAN   , c_v+23
	.byte		N05   , Gn4 , v096
	.byte	W06
	.byte		PAN   , c_v+27
	.byte		N05   , Bn4 , v104
	.byte	W06
	.byte		PAN   , c_v+31
	.byte		N05   , Dn5 
	.byte	W06
	.byte		PAN   , c_v+35
	.byte		N05   , Gn5 , v096
	.byte	W06
	.byte		PAN   , c_v+39
	.byte		N05   , Bn5 , v104
	.byte	W06
	.byte		PAN   , c_v+43
	.byte		N05   , Gn5 , v096
	.byte	W06
	.byte		PAN   , c_v+47
	.byte		N05   , Dn5 , v104
	.byte	W06
	.byte		PAN   , c_v+51
	.byte		N05   , Bn4 
	.byte	W06
	.byte		PAN   , c_v+55
	.byte		N05   , Gn4 , v096
	.byte	W06
	.byte		PAN   , c_v+59
	.byte		N05   , Dn4 
	.byte	W06
/* 002   ----------------------------------------
 */	.byte		PAN   , c_v+63
	.byte		N05   , An2 , v108
	.byte	W06
	.byte		PAN   , c_v+60
	.byte		N05   , Cs3 , v104
	.byte	W06
	.byte		PAN   , c_v+56
	.byte		N05   , En3 , v108
	.byte	W06
	.byte		PAN   , c_v+52
	.byte		N05   , An3 
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N05   , Cs4 , v104
	.byte	W06
	.byte		PAN   , c_v+44
	.byte		N05   , En4 , v108
	.byte	W06
	.byte		PAN   , c_v+40
	.byte		N05   , An4 
	.byte	W06
	.byte		PAN   , c_v+36
	.byte		N05   , Cs5 , v104
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N05   , En5 , v108
	.byte	W06
	.byte		PAN   , c_v+28
	.byte		N05   , An5 
	.byte	W06
	.byte		PAN   , c_v+24
	.byte		N05   , En5 
	.byte	W06
	.byte		PAN   , c_v+20
	.byte		N05   , Cs5 , v104
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		N05   , An4 , v108
	.byte	W06
	.byte		PAN   , c_v+12
	.byte		N05   , En4 
	.byte	W06
	.byte		PAN   , c_v+8
	.byte		N05   , Cs4 , v104
	.byte	W06
	.byte		PAN   , c_v+4
	.byte		N05   , An3 
	.byte	W06
/* 003   ----------------------------------------
 */	.byte		PAN   , c_v+0
	.byte		N05   , Gn2 , v096
	.byte	W06
	.byte		PAN   , c_v-4
	.byte		N05   , Bn2 , v104
	.byte	W06
	.byte		PAN   , c_v-8
	.byte		N05   , Dn3 
	.byte	W06
	.byte		PAN   , c_v-12
	.byte		N05   , Gn3 , v096
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		N05   , Bn3 , v104
	.byte	W06
	.byte		PAN   , c_v-20
	.byte		N05   , Dn4 
	.byte	W06
	.byte		PAN   , c_v-24
	.byte		N05   , Gn4 , v096
	.byte	W06
	.byte		PAN   , c_v-28
	.byte		N05   , Bn4 , v104
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N05   , Dn5 
	.byte	W06
	.byte		PAN   , c_v-36
	.byte		N05   , Gn5 , v096
	.byte	W06
	.byte		PAN   , c_v-40
	.byte		N05   , Bn5 , v104
	.byte	W06
	.byte		PAN   , c_v-44
	.byte		N05   , Gn5 , v096
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N05   , Dn5 , v104
	.byte	W06
	.byte		PAN   , c_v-52
	.byte		N05   , Bn4 
	.byte	W06
	.byte		PAN   , c_v-56
	.byte		N05   , Gn4 , v096
	.byte	W06
	.byte		PAN   , c_v-60
	.byte		N05   , Dn4 
	.byte	W06
mus_sky_canyon__act_1_8_B1:
/* 004   ----------------------------------------
 */	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte	W96
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
 */mus_sky_canyon__act_1_8_012:
	.byte	W24
	.byte		N14   , Cs4 , v127
	.byte	W18
	.byte		N06   , Dn4 
	.byte	W06
	.byte		N10   , En4 
	.byte	W12
	.byte		N19   , An3 
	.byte	W24
	.byte		N30   , Bn3 
	.byte	W12
	.byte	PEND
/* 013   ----------------------------------------
 */	.byte	W96
/* 014   ----------------------------------------
 */mus_sky_canyon__act_1_8_014:
	.byte	W24
	.byte		N12   , Cs4 , v127
	.byte	W18
	.byte		N09   , An3 
	.byte	W06
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N14   , Dn4 
	.byte	W12
	.byte		N06   , En4 
	.byte	W12
	.byte		N20   , Gn4 
	.byte	W12
	.byte	PEND
/* 015   ----------------------------------------
 */mus_sky_canyon__act_1_8_015:
	.byte	W12
	.byte		N06   , Fs4 , v127
	.byte	W12
	.byte		N08   , En4 
	.byte	W72
	.byte	PEND
/* 016   ----------------------------------------
 */mus_sky_canyon__act_1_8_016:
	.byte	W24
	.byte		N10   , Cs4 , v127
	.byte	W18
	.byte		N08   , Dn4 
	.byte	W06
	.byte		N11   , En4 
	.byte	W12
	.byte		N16   , An3 
	.byte	W24
	.byte		N20   , Bn3 
	.byte	W12
	.byte	PEND
/* 017   ----------------------------------------
 */mus_sky_canyon__act_1_8_017:
	.byte	W24
	.byte		N18   , Gn3 , v127
	.byte	W24
	.byte		N16   , Bn3 
	.byte	W24
	.byte		N17   , Dn4 
	.byte	W24
	.byte	PEND
/* 018   ----------------------------------------
 */mus_sky_canyon__act_1_8_018:
	.byte		N28   , Cs4 , v127
	.byte	W36
	.byte		N19   , Dn4 
	.byte	W36
	.byte		N10   , En4 
	.byte	W12
	.byte		N19   , An3 
	.byte	W12
	.byte	PEND
/* 019   ----------------------------------------
 */mus_sky_canyon__act_1_8_019:
	.byte	W12
	.byte		N09   , Cs4 , v127
	.byte	W12
	.byte		N19   , Gn3 
	.byte	W72
	.byte	PEND
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_8_012
/* 021   ----------------------------------------
 */	.byte	W96
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_8_014
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_8_015
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_8_016
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_8_017
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_8_018
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_8_019
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
	.byte	GOTO
	 mPtr	mus_sky_canyon__act_1_8_B1
mus_sky_canyon__act_1_8_B2:
/* 040   ----------------------------------------
 */	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte	FINE

/* **************** Track 9 (Midi-Chn.9) **************** */

mus_sky_canyon__act_1_9:
	.byte	KEYSH , mus_sky_canyon__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 1
	.byte		VOL   , 80*mus_sky_canyon__act_1_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 56
	.byte		LFODL , 0
	.byte		MOD   , 0
	.byte		MODT  , 2
	.byte	W06
	.byte		PAN   , c_v+60
	.byte	W03
	.byte		BEND  , c_v+2
	.byte		N05   , An2 , v084
	.byte	W03
	.byte		PAN   , c_v+56
	.byte	W03
	.byte		N05   , Cs3 , v080
	.byte	W03
	.byte		PAN   , c_v+52
	.byte	W03
	.byte		N05   , En3 , v084
	.byte	W03
	.byte		PAN   , c_v+48
	.byte	W03
	.byte		N05   , An3 
	.byte	W03
	.byte		PAN   , c_v+44
	.byte	W03
	.byte		N05   , Cs4 , v080
	.byte	W03
	.byte		PAN   , c_v+40
	.byte	W03
	.byte		N05   , En4 , v084
	.byte	W03
	.byte		PAN   , c_v+36
	.byte	W03
	.byte		N05   , An4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte	W03
	.byte		N05   , Cs5 , v080
	.byte	W03
	.byte		PAN   , c_v+28
	.byte	W03
	.byte		N05   , En5 , v084
	.byte	W03
	.byte		PAN   , c_v+24
	.byte	W03
	.byte		N05   , An5 
	.byte	W03
	.byte		PAN   , c_v+20
	.byte	W03
	.byte		N05   , En5 
	.byte	W03
	.byte		PAN   , c_v+16
	.byte	W03
	.byte		N05   , Cs5 , v080
	.byte	W03
	.byte		PAN   , c_v+12
	.byte	W03
	.byte		N05   , An4 , v084
	.byte	W03
	.byte		PAN   , c_v+8
	.byte	W03
	.byte		N05   , En4 
	.byte	W03
	.byte		PAN   , c_v+4
	.byte	W03
	.byte		N05   , Cs4 , v080
	.byte	W03
/* 001   ----------------------------------------
 */	.byte		PAN   , c_v+0
	.byte	W03
	.byte		N05   , An3 
	.byte	W03
	.byte		PAN   , c_v-4
	.byte	W03
	.byte		N05   , Gn2 , v072
	.byte	W03
	.byte		PAN   , c_v-8
	.byte	W03
	.byte		N05   , Bn2 , v080
	.byte	W03
	.byte		PAN   , c_v-12
	.byte	W03
	.byte		N05   , Dn3 
	.byte	W03
	.byte		PAN   , c_v-16
	.byte	W03
	.byte		N05   , Gn3 , v072
	.byte	W03
	.byte		PAN   , c_v-20
	.byte	W03
	.byte		N05   , Bn3 , v080
	.byte	W03
	.byte		PAN   , c_v-24
	.byte	W03
	.byte		N05   , Dn4 
	.byte	W03
	.byte		PAN   , c_v-28
	.byte	W03
	.byte		N05   , Gn4 , v072
	.byte	W03
	.byte		PAN   , c_v-32
	.byte	W03
	.byte		N05   , Bn4 , v080
	.byte	W03
	.byte		PAN   , c_v-36
	.byte	W03
	.byte		N05   , Dn5 
	.byte	W03
	.byte		PAN   , c_v-40
	.byte	W03
	.byte		N05   , Gn5 , v072
	.byte	W03
	.byte		PAN   , c_v-44
	.byte	W03
	.byte		N05   , Bn5 , v080
	.byte	W03
	.byte		PAN   , c_v-48
	.byte	W03
	.byte		N05   , Gn5 , v072
	.byte	W03
	.byte		PAN   , c_v-52
	.byte	W03
	.byte		N05   , Dn5 , v080
	.byte	W03
	.byte		PAN   , c_v-56
	.byte	W03
	.byte		N05   , Bn4 
	.byte	W03
	.byte		PAN   , c_v-60
	.byte	W03
	.byte		N05   , Gn4 , v072
	.byte	W03
/* 002   ----------------------------------------
 */	.byte		PAN   , c_v-64
	.byte	W03
	.byte		N05   , Dn4 
	.byte	W03
	.byte		PAN   , c_v-60
	.byte	W03
	.byte		N05   , An2 , v084
	.byte	W03
	.byte		PAN   , c_v-56
	.byte	W03
	.byte		N05   , Cs3 , v080
	.byte	W03
	.byte		PAN   , c_v-52
	.byte	W03
	.byte		N05   , En3 , v084
	.byte	W03
	.byte		PAN   , c_v-48
	.byte	W03
	.byte		N05   , An3 
	.byte	W03
	.byte		PAN   , c_v-44
	.byte	W03
	.byte		N05   , Cs4 , v080
	.byte	W03
	.byte		PAN   , c_v-40
	.byte	W03
	.byte		N05   , En4 , v084
	.byte	W03
	.byte		PAN   , c_v-36
	.byte	W03
	.byte		N05   , An4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte	W03
	.byte		N05   , Cs5 , v080
	.byte	W03
	.byte		PAN   , c_v-28
	.byte	W03
	.byte		N05   , En5 , v084
	.byte	W03
	.byte		PAN   , c_v-24
	.byte	W03
	.byte		N05   , An5 
	.byte	W03
	.byte		PAN   , c_v-19
	.byte	W03
	.byte		N05   , En5 
	.byte	W03
	.byte		PAN   , c_v-15
	.byte	W03
	.byte		N05   , Cs5 , v080
	.byte	W03
	.byte		PAN   , c_v-11
	.byte	W03
	.byte		N05   , An4 , v084
	.byte	W03
	.byte		PAN   , c_v-7
	.byte	W03
	.byte		N05   , En4 
	.byte	W03
	.byte		PAN   , c_v-3
	.byte	W03
	.byte		N05   , Cs4 , v080
	.byte	W03
/* 003   ----------------------------------------
 */	.byte		PAN   , c_v+1
	.byte	W03
	.byte		N05   , An3 
	.byte	W03
	.byte		PAN   , c_v+5
	.byte	W03
	.byte		N05   , Gn2 , v072
	.byte	W03
	.byte		PAN   , c_v+9
	.byte	W03
	.byte		N05   , Bn2 , v080
	.byte	W03
	.byte		PAN   , c_v+13
	.byte	W03
	.byte		N05   , Dn3 
	.byte	W03
	.byte		PAN   , c_v+17
	.byte	W03
	.byte		N05   , Gn3 , v072
	.byte	W03
	.byte		PAN   , c_v+22
	.byte	W03
	.byte		N05   , Bn3 , v080
	.byte	W03
	.byte		PAN   , c_v+26
	.byte	W03
	.byte		N05   , Dn4 
	.byte	W03
	.byte		PAN   , c_v+30
	.byte	W03
	.byte		N05   , Gn4 , v072
	.byte	W03
	.byte		PAN   , c_v+34
	.byte	W03
	.byte		N05   , Bn4 , v080
	.byte	W03
	.byte		PAN   , c_v+38
	.byte	W03
	.byte		N05   , Dn5 
	.byte	W03
	.byte		PAN   , c_v+42
	.byte	W03
	.byte		N05   , Gn5 , v072
	.byte	W03
	.byte		PAN   , c_v+46
	.byte	W03
	.byte		N05   , Bn5 , v080
	.byte	W03
	.byte		PAN   , c_v+50
	.byte	W03
	.byte		N05   , Gn5 , v072
	.byte	W03
	.byte		PAN   , c_v+54
	.byte	W03
	.byte		N05   , Dn5 , v080
	.byte	W03
	.byte		PAN   , c_v+58
	.byte	W03
	.byte		N05   , Bn4 
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W03
	.byte		N05   , Gn4 , v072
	.byte	W03
mus_sky_canyon__act_1_9_B1:
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
 */	.byte		VOICE , 1
	.byte		VOL   , 80*mus_sky_canyon__act_1_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 56
	.byte		LFODL , 0
	.byte		MOD   , 0
	.byte		MODT  , 2
	.byte	W96
/* 020   ----------------------------------------
 */	.byte		TIE   , An2 , v127
	.byte	W96
/* 021   ----------------------------------------
 */	.byte	W02
	.byte		N88   , Gn2 , v104
	.byte	W01
	.byte		EOT   , An2 
	.byte	W92
	.byte	W01
/* 022   ----------------------------------------
 */	.byte	W01
	.byte		N88   
	.byte	W92
	.byte	W03
/* 023   ----------------------------------------
 */	.byte	W01
	.byte		N90   , Bn2 , v116
	.byte	W92
	.byte	W03
/* 024   ----------------------------------------
 */	.byte	W01
	.byte		N84   , An2 , v108
	.byte	W92
	.byte	W03
/* 025   ----------------------------------------
 */	.byte		N92   , Gn2 , v104
	.byte	W96
/* 026   ----------------------------------------
 */	.byte	W01
	.byte		N90   , An2 , v108
	.byte	W92
	.byte	W03
/* 027   ----------------------------------------
 */	.byte		N72   , Gn2 
	.byte	W96
/* 028   ----------------------------------------
 */	.byte	W96
/* 029   ----------------------------------------
 */	.byte	W32
	.byte	W01
	.byte		N23   , Bn2 , v120
	.byte	W24
	.byte		N24   , En3 , v104
	.byte	W24
	.byte	W01
	.byte		N15   , Bn3 
	.byte	W14
/* 030   ----------------------------------------
 */	.byte		N06   , An3 , v092
	.byte	W05
	.byte		        Gs3 , v100
	.byte	W05
	.byte		TIE   , Fs3 , v092
	.byte	W84
	.byte	W02
/* 031   ----------------------------------------
 */	.byte	W60
	.byte	W01
	.byte		EOT   
	.byte	W32
	.byte	W03
/* 032   ----------------------------------------
 */	.byte	W96
/* 033   ----------------------------------------
 */	.byte	W32
	.byte	W01
	.byte		N24   , Bn2 , v116
	.byte	W24
	.byte		        En3 , v096
	.byte	W24
	.byte		N18   , Bn3 , v104
	.byte	W15
/* 034   ----------------------------------------
 */	.byte	W01
	.byte		N06   , An3 , v096
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		TIE   , Fs3 , v100
	.byte	W84
	.byte	W03
/* 035   ----------------------------------------
 */	.byte	W28
	.byte	W01
	.byte		EOT   
	.byte	W03
	.byte		N24   , Fs3 , v088
	.byte	W24
	.byte		N23   , Gs3 , v096
	.byte	W24
	.byte		        An3 
	.byte	W16
/* 036   ----------------------------------------
 */	.byte	W08
	.byte		N92   , Bn3 
	.byte	W88
/* 037   ----------------------------------------
 */	.byte	W08
	.byte		        An3 
	.byte	W88
/* 038   ----------------------------------------
 */	.byte	W08
	.byte		        Gs3 
	.byte	W88
/* 039   ----------------------------------------
 */	.byte	W08
	.byte		N84   , Fs3 
	.byte	W88
	.byte	GOTO
	 mPtr	mus_sky_canyon__act_1_9_B1
mus_sky_canyon__act_1_9_B2:
/* 040   ----------------------------------------
 */	.byte	FINE

/* **************** Track 10 (Midi-Chn.10) **************** */

mus_sky_canyon__act_1_10:
	.byte	KEYSH , mus_sky_canyon__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 8
	.byte		VOL   , 104*mus_sky_canyon__act_1_mvl/mxv
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
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
mus_sky_canyon__act_1_10_B1:
/* 004   ----------------------------------------
 */mus_sky_canyon__act_1_10_004:
	.byte		N12   , An2 , v120
	.byte	W24
	.byte		        An2 , v108
	.byte	W24
	.byte		        En2 , v092
	.byte	W12
	.byte		N06   , An2 , v120
	.byte	W24
	.byte		N66   , Gn2 , v104
	.byte	W12
	.byte	PEND
/* 005   ----------------------------------------
 */mus_sky_canyon__act_1_10_005:
	.byte	W60
	.byte		N18   , Gn2 , v080
	.byte	W24
	.byte		N12   , En2 , v108
	.byte	W12
	.byte	PEND
/* 006   ----------------------------------------
 */mus_sky_canyon__act_1_10_006:
	.byte	W12
	.byte		N12   , Cs2 , v108
	.byte	W24
	.byte		N30   , En2 , v100
	.byte	W36
	.byte		N06   , An1 , v080
	.byte	W12
	.byte		N42   , Gn2 , v108
	.byte	W12
	.byte	PEND
/* 007   ----------------------------------------
 */	.byte	W36
	.byte		N06   , Fs2 , v064
	.byte	W12
	.byte		        Dn2 , v076
	.byte	W12
	.byte		        Bn1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_10_004
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_10_005
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_10_006
/* 011   ----------------------------------------
 */	.byte	W36
	.byte		N06   , Fs2 , v064
	.byte	W12
	.byte		        Dn2 , v076
	.byte	W24
	.byte		N12   
	.byte	W24
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
 */	.byte	W24
	.byte		N23   , Gn2 , v127
	.byte	W24
	.byte		N21   , Bn2 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
/* 022   ----------------------------------------
 */	.byte		N80   , Cs3 
	.byte	W96
/* 023   ----------------------------------------
 */	.byte	W24
	.byte		N19   , Gn2 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
/* 024   ----------------------------------------
 */	.byte		N76   , En3 
	.byte	W96
/* 025   ----------------------------------------
 */	.byte	W24
	.byte		N23   , Gn3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		        En3 
	.byte	W24
/* 026   ----------------------------------------
 */	.byte		N32   , Dn3 
	.byte	W36
	.byte		        Cs3 
	.byte	W36
	.byte		TIE   , An2 
	.byte	W24
/* 027   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		EOT   
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
 */	.byte	W01
	.byte		TIE   , Fs2 
	.byte	W92
	.byte	W03
/* 037   ----------------------------------------
 */	.byte	W44
	.byte	W02
	.byte		N03   , As2 , v060
	.byte	W02
	.byte		EOT   , Fs2 
	.byte	W01
	.byte		N44   , Bn2 , v116
	.byte	W44
	.byte	W03
/* 038   ----------------------------------------
 */	.byte		TIE   , Fs2 , v096
	.byte	W96
/* 039   ----------------------------------------
 */	.byte	W44
	.byte	W01
	.byte		N07   , As2 , v076
	.byte	W04
	.byte		EOT   , Fs2 
	.byte		N44   , Bn2 , v080
	.byte	W44
	.byte	W03
	.byte	GOTO
	 mPtr	mus_sky_canyon__act_1_10_B1
mus_sky_canyon__act_1_10_B2:
/* 040   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_10_004
/* 041   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_sky_canyon__act_1_10_005
/* 042   ----------------------------------------
 */	.byte	FINE

/* **************** Track 11 (Midi-Chn.11) **************** */

mus_sky_canyon__act_1_11:
	.byte	KEYSH , mus_sky_canyon__act_1_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 74
	.byte		VOL   , 104*mus_sky_canyon__act_1_mvl/mxv
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
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
mus_sky_canyon__act_1_11_B1:
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
 */	.byte	W24
	.byte	W01
	.byte		N14   , En3 , v120
	.byte	W17
	.byte		N02   , En3 , v116
	.byte	W18
	.byte		N02   
	.byte	W36
/* 029   ----------------------------------------
 */	.byte	W96
/* 030   ----------------------------------------
 */	.byte	W24
	.byte	W01
	.byte		N14   , Dn3 , v120
	.byte	W17
	.byte		N02   , Dn3 , v116
	.byte	W54
/* 031   ----------------------------------------
 */	.byte	W24
	.byte	W01
	.byte		N14   , Dn3 , v120
	.byte	W17
	.byte		N02   , Dn3 , v116
	.byte	W18
	.byte		N06   , An2 
	.byte	W13
	.byte		N04   , As2 , v104
	.byte	W10
	.byte		N19   , Bn2 , v120
	.byte	W13
/* 032   ----------------------------------------
 */	.byte	W24
	.byte	W01
	.byte		N14   , En3 
	.byte	W17
	.byte		N02   , En3 , v116
	.byte	W54
/* 033   ----------------------------------------
 */	.byte	W24
	.byte		N15   , En3 , v127
	.byte	W72
/* 034   ----------------------------------------
 */	.byte	W24
	.byte	W01
	.byte		N13   , Dn3 , v108
	.byte	W16
	.byte		N02   , Dn3 , v104
	.byte	W19
	.byte		N03   , Dn3 , v108
	.byte	W36
/* 035   ----------------------------------------
 */	.byte	W24
	.byte		N18   , Dn3 , v100
	.byte	W32
	.byte	W03
	.byte		N12   , Dn3 , v116
	.byte	W36
	.byte	W01
/* 036   ----------------------------------------
 */	.byte	W96
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	W96
/* 039   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_sky_canyon__act_1_11_B1
mus_sky_canyon__act_1_11_B2:
/* 040   ----------------------------------------
 */	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_sky_canyon__act_1):
	.byte	11	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_sky_canyon__act_1_pri	/* Priority */
	.byte	mus_sky_canyon__act_1_rev	/* Reverb */

mAlignWord
	mPtr	mus_sky_canyon__act_1_grp

	mPtr	mus_sky_canyon__act_1_1
	mPtr	mus_sky_canyon__act_1_2
	mPtr	mus_sky_canyon__act_1_3
	mPtr	mus_sky_canyon__act_1_4
	mPtr	mus_sky_canyon__act_1_5
	mPtr	mus_sky_canyon__act_1_6
	mPtr	mus_sky_canyon__act_1_7
	mPtr	mus_sky_canyon__act_1_8
	mPtr	mus_sky_canyon__act_1_9
	mPtr	mus_sky_canyon__act_1_10
	mPtr	mus_sky_canyon__act_1_11

	.end
