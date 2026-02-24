	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_boss_pinch_grp, voicegroup014
	.equ	mus_boss_pinch_pri, 0
	.equ	mus_boss_pinch_rev, reverb_set+0
	.equ	mus_boss_pinch_mvl, 110
	.equ	mus_boss_pinch_key, 0
	.equ	mus_boss_pinch_tbs, 1
	.equ	mus_boss_pinch_exg, 1
	.equ	mus_boss_pinch_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_boss_pinch)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_boss_pinch_1:
	.byte	KEYSH , mus_boss_pinch_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 150*mus_boss_pinch_tbs/2
	.byte		VOICE , 126
	.byte		VOL   , 100*mus_boss_pinch_mvl/mxv
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
mus_boss_pinch_1_B1:
/* 002   ----------------------------------------
 */mus_boss_pinch_1_002:
	.byte		N06   , Gs3 , v127
	.byte	W07
	.byte		N05   , An3 
	.byte	W05
	.byte		N06   , As3 
	.byte	W07
	.byte		N05   , Bn3 
	.byte	W05
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W07
	.byte		N05   , Dn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N06   , Fn4 
	.byte	W06
	.byte		N05   , Fs4 
	.byte	W05
	.byte		N06   , Gn4 
	.byte	W07
	.byte		N05   , Gs4 
	.byte	W05
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte	PEND
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_1_002
/* 004   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_1_002
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_1_002
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_1_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_1_002
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_1_002
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_1_002
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_1_002
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_1_002
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_1_002
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_1_002
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_1_002
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_1_002
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_1_002
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_1_002
	.byte	GOTO
	 mPtr	mus_boss_pinch_1_B1
mus_boss_pinch_1_B2:
/* 018   ----------------------------------------
 */	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_boss_pinch_2:
	.byte	KEYSH , mus_boss_pinch_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 0
	.byte		VOL   , 127*mus_boss_pinch_mvl/mxv
	.byte		BENDR , 13
	.byte		LFOS  , 26
	.byte		MODT  , 0
	.byte		MOD   , 8
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
mus_boss_pinch_2_B1:
/* 002   ----------------------------------------
 */mus_boss_pinch_2_002:
	.byte		VOL   , 2*mus_boss_pinch_mvl/mxv
	.byte		BEND  , c_v-60
	.byte		TIE   , Cn4 , v080
	.byte	W01
	.byte		VOL   , 7*mus_boss_pinch_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_pinch_mvl/mxv
	.byte	W01
	.byte		        18*mus_boss_pinch_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_pinch_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_pinch_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_pinch_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_pinch_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_pinch_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_pinch_mvl/mxv
	.byte	W01
	.byte		        58*mus_boss_pinch_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_pinch_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_pinch_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_pinch_mvl/mxv
	.byte	W01
	.byte		        80*mus_boss_pinch_mvl/mxv
	.byte	W72
	.byte		BEND  , c_v-60
	.byte	W02
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-51
	.byte	W02
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-41
	.byte	W02
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-31
	.byte	W01
	.byte	PEND
/* 003   ----------------------------------------
 */mus_boss_pinch_2_003:
	.byte	W01
	.byte		BEND  , c_v-26
	.byte	W01
	.byte		        c_v-21
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-12
	.byte	W02
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v+0
	.byte	W68
	.byte		        c_v+0
	.byte	W04
	.byte		        c_v-1
	.byte	W04
	.byte		        c_v-2
	.byte	W03
	.byte		        c_v-3
	.byte	W04
	.byte		        c_v-4
	.byte	W03
	.byte		        c_v-5
	.byte	W01
	.byte	PEND
/* 004   ----------------------------------------
 */mus_boss_pinch_2_004:
	.byte	W03
	.byte		BEND  , c_v-6
	.byte	W72
	.byte	W02
	.byte		        c_v-6
	.byte	W02
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-12
	.byte	W02
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-19
	.byte	W02
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-25
	.byte	W02
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-32
	.byte	W02
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-38
	.byte	W02
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte	PEND
/* 005   ----------------------------------------
 */mus_boss_pinch_2_005:
	.byte	W01
	.byte		BEND  , c_v-48
	.byte	W01
	.byte		        c_v-52
	.byte	W02
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-58
	.byte	W02
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-64
	.byte	W88
	.byte	PEND
	.byte		EOT   , Cn4 
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_2_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_2_003
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_2_004
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_2_005
	.byte		EOT   , Cn4 
/* 010   ----------------------------------------
 */mus_boss_pinch_2_010:
	.byte		VOL   , 2*mus_boss_pinch_mvl/mxv
	.byte		BEND  , c_v-60
	.byte		TIE   , Ds4 , v080
	.byte	W01
	.byte		VOL   , 7*mus_boss_pinch_mvl/mxv
	.byte	W01
	.byte		        14*mus_boss_pinch_mvl/mxv
	.byte	W01
	.byte		        18*mus_boss_pinch_mvl/mxv
	.byte	W01
	.byte		        25*mus_boss_pinch_mvl/mxv
	.byte	W01
	.byte		        31*mus_boss_pinch_mvl/mxv
	.byte	W01
	.byte		        35*mus_boss_pinch_mvl/mxv
	.byte	W01
	.byte		        41*mus_boss_pinch_mvl/mxv
	.byte	W01
	.byte		        47*mus_boss_pinch_mvl/mxv
	.byte	W01
	.byte		        52*mus_boss_pinch_mvl/mxv
	.byte	W01
	.byte		        58*mus_boss_pinch_mvl/mxv
	.byte	W01
	.byte		        64*mus_boss_pinch_mvl/mxv
	.byte	W01
	.byte		        67*mus_boss_pinch_mvl/mxv
	.byte	W01
	.byte		        74*mus_boss_pinch_mvl/mxv
	.byte	W01
	.byte		        80*mus_boss_pinch_mvl/mxv
	.byte	W72
	.byte		BEND  , c_v-60
	.byte	W02
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-51
	.byte	W02
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-41
	.byte	W02
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-31
	.byte	W01
	.byte	PEND
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_2_003
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_2_004
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_2_005
	.byte		EOT   , Ds4 
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_2_010
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_2_003
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_2_004
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_2_005
	.byte		EOT   , Ds4 
	.byte	GOTO
	 mPtr	mus_boss_pinch_2_B1
mus_boss_pinch_2_B2:
/* 018   ----------------------------------------
 */	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_boss_pinch_3:
	.byte	KEYSH , mus_boss_pinch_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 49
	.byte		VOL   , 127*mus_boss_pinch_mvl/mxv
	.byte		BENDR , 59
	.byte		N08   , Fs1 , v127
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N06   , Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N07   , Cs2 
	.byte	W06
	.byte		N05   , Fs2 
	.byte	W06
/* 001   ----------------------------------------
 */	.byte		N08   , Fs1 
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N06   , Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N07   , Cs2 
	.byte	W06
	.byte		N05   , Fs2 
	.byte	W06
mus_boss_pinch_3_B1:
/* 002   ----------------------------------------
 */mus_boss_pinch_3_002:
	.byte		N08   , Gs1 , v127
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N06   , Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N07   , Ds2 
	.byte	W06
	.byte		N05   , Gs2 
	.byte	W06
	.byte	PEND
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_3_002
/* 004   ----------------------------------------
 */mus_boss_pinch_3_004:
	.byte		N08   , Gn1 , v127
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N06   , Gn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N07   , Dn2 
	.byte	W06
	.byte		N05   , Gn2 
	.byte	W06
	.byte	PEND
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_3_004
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_3_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_3_002
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_3_004
/* 009   ----------------------------------------
 */	.byte		N08   , Gn1 , v127
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N06   , Gn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W18
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
/* 010   ----------------------------------------
 */mus_boss_pinch_3_010:
	.byte		N08   , Bn1 , v127
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N07   , Fs2 
	.byte	W06
	.byte		N05   , Bn2 
	.byte	W06
	.byte	PEND
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_3_010
/* 012   ----------------------------------------
 */mus_boss_pinch_3_012:
	.byte		N08   , As1 , v127
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N06   , As2 
	.byte	W12
	.byte		        As1 
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N07   , Fn2 
	.byte	W06
	.byte		N05   , As2 
	.byte	W06
	.byte	PEND
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_3_012
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_3_010
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_3_010
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_3_012
/* 017   ----------------------------------------
 */	.byte		N08   , As1 , v127
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N06   , As2 
	.byte	W12
	.byte		        As1 
	.byte	W18
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte	GOTO
	 mPtr	mus_boss_pinch_3_B1
mus_boss_pinch_3_B2:
/* 018   ----------------------------------------
 */	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_boss_pinch_4:
	.byte	KEYSH , mus_boss_pinch_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 93
	.byte		VOL   , 100*mus_boss_pinch_mvl/mxv
	.byte		MOD   , 0
	.byte		LFOS  , 86
	.byte		BENDR , 53
	.byte		N24   , Fs2 , v127
	.byte		N24   , Fs3 , v116
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W54
	.byte		N06   , Fs2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Gn2 
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , An3 
	.byte	W12
	.byte		        As2 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Bn3 
	.byte	W06
mus_boss_pinch_4_B1:
/* 002   ----------------------------------------
 */	.byte		N12   , Cn3 , v116
	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W72
	.byte		        Bn2 , v127
	.byte	W24
/* 006   ----------------------------------------
 */	.byte		        Cn3 
	.byte	W96
/* 007   ----------------------------------------
 */	.byte	W96
/* 008   ----------------------------------------
 */	.byte	W96
/* 009   ----------------------------------------
 */	.byte	W72
	.byte		        Dn3 
	.byte	W24
/* 010   ----------------------------------------
 */	.byte		        Ds3 
	.byte	W96
/* 011   ----------------------------------------
 */	.byte	W96
/* 012   ----------------------------------------
 */	.byte	W96
/* 013   ----------------------------------------
 */	.byte	W72
	.byte		        Dn3 
	.byte	W24
/* 014   ----------------------------------------
 */	.byte		        Ds3 
	.byte	W96
/* 015   ----------------------------------------
 */	.byte	W96
/* 016   ----------------------------------------
 */	.byte	W96
/* 017   ----------------------------------------
 */	.byte	W72
	.byte		        Bn2 
	.byte	W24
	.byte	GOTO
	 mPtr	mus_boss_pinch_4_B1
mus_boss_pinch_4_B2:
/* 018   ----------------------------------------
 */	.byte		N12   , Cn3 , v127
	.byte	W12
	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_boss_pinch_5:
	.byte	KEYSH , mus_boss_pinch_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 84
	.byte		VOL   , 127*mus_boss_pinch_mvl/mxv
	.byte		MOD   , 0
	.byte		LFOS  , 58
	.byte		MODT  , 1
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
mus_boss_pinch_5_B1:
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */mus_boss_pinch_5_003:
	.byte	W48
	.byte		N23   , Cn3 , v127
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte	PEND
/* 004   ----------------------------------------
 */	.byte		N92   , Bn3 
	.byte	W96
/* 005   ----------------------------------------
 */	.byte		        Gn3 
	.byte	W96
/* 006   ----------------------------------------
 */	.byte	W96
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_5_003
/* 008   ----------------------------------------
 */	.byte		N80   , Bn3 , v127
	.byte	W84
	.byte		N05   
	.byte	W06
	.byte		        Cn4 
	.byte	W06
/* 009   ----------------------------------------
 */	.byte		N84   , Dn4 
	.byte	W96
/* 010   ----------------------------------------
 */	.byte	W96
/* 011   ----------------------------------------
 */mus_boss_pinch_5_011:
	.byte	W48
	.byte		N23   , Ds3 , v127
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte	PEND
/* 012   ----------------------------------------
 */	.byte		N92   , Dn4 
	.byte	W96
/* 013   ----------------------------------------
 */	.byte		N90   , As3 
	.byte	W96
/* 014   ----------------------------------------
 */	.byte	W96
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_5_011
/* 016   ----------------------------------------
 */	.byte		N80   , Dn4 , v127
	.byte	W84
	.byte		N05   
	.byte	W06
	.byte		        Ds4 
	.byte	W06
/* 017   ----------------------------------------
 */	.byte		N80   , Fn4 
	.byte	W96
	.byte	GOTO
	 mPtr	mus_boss_pinch_5_B1
mus_boss_pinch_5_B2:
/* 018   ----------------------------------------
 */	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_boss_pinch_6:
	.byte	KEYSH , mus_boss_pinch_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 127
	.byte		VOL   , 127*mus_boss_pinch_mvl/mxv
	.byte		N06   , Dn1 , v044
	.byte	W12
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W12
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W12
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W12
	.byte		N12   , En1 
	.byte	W12
/* 001   ----------------------------------------
 */	.byte		N06   , Dn1 
	.byte	W12
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W12
	.byte		N12   , En1 
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Dn1 , v044
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , En1 , v044
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v044
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		N03   , En2 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N12   , En1 , v044
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
mus_boss_pinch_6_B1:
/* 002   ----------------------------------------
 */mus_boss_pinch_6_002:
	.byte		N06   , Dn1 , v044
	.byte		N12   , Ds2 , v124
	.byte		N48   , Fs2 
	.byte	W12
	.byte		N12   , En1 , v044
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N12   , Ds2 , v124
	.byte	W12
	.byte		        En1 , v044
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N12   , Ds2 , v124
	.byte	W12
	.byte		        En1 , v044
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N12   , Ds2 , v124
	.byte	W12
	.byte		        En1 , v044
	.byte	W12
	.byte	PEND
/* 003   ----------------------------------------
 */mus_boss_pinch_6_003:
	.byte		N06   , Dn1 , v044
	.byte		N12   , Ds2 , v124
	.byte	W12
	.byte		        En1 , v044
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N12   , Ds2 , v124
	.byte	W12
	.byte		        En1 , v044
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N12   , Ds2 , v124
	.byte	W12
	.byte		        En1 , v044
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N12   , Ds2 , v124
	.byte	W12
	.byte		        En1 , v044
	.byte	W12
	.byte	PEND
/* 004   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_6_003
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_6_003
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_6_003
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_6_003
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_6_003
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_6_003
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_6_002
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_6_003
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_6_003
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_6_003
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_6_003
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_6_003
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_6_003
/* 017   ----------------------------------------
 */	.byte		N06   , Dn1 , v044
	.byte		N12   , Ds2 , v124
	.byte	W12
	.byte		        En1 , v044
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N12   , Ds2 , v124
	.byte	W12
	.byte		        En1 , v044
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N05   , Ds2 , v124
	.byte	W06
	.byte		N06   , En2 
	.byte	W06
	.byte		N12   , En1 , v044
	.byte	W06
	.byte		N06   , Ds2 , v124
	.byte	W06
	.byte		        Dn1 , v044
	.byte		N06   , En2 , v124
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N12   , En1 , v044
	.byte		N06   , En2 , v124
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	GOTO
	 mPtr	mus_boss_pinch_6_B1
mus_boss_pinch_6_B2:
/* 018   ----------------------------------------
 */	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_boss_pinch_7:
	.byte	KEYSH , mus_boss_pinch_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 68
	.byte		VOL   , 55*mus_boss_pinch_mvl/mxv
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
mus_boss_pinch_7_B1:
/* 002   ----------------------------------------
 */mus_boss_pinch_7_002:
	.byte		N05   , As2 , v120
	.byte	W06
	.byte		        As2 , v068
	.byte	W06
	.byte		        As2 , v072
	.byte	W06
	.byte		N11   , As2 , v120
	.byte	W12
	.byte		N05   , As2 , v048
	.byte	W06
	.byte		        As2 , v108
	.byte	W06
	.byte		        As2 , v072
	.byte	W06
	.byte		        As2 , v068
	.byte	W06
	.byte		N11   , As2 , v120
	.byte	W12
	.byte		N05   , As2 , v068
	.byte	W06
	.byte		        As2 , v120
	.byte	W06
	.byte		        As2 , v068
	.byte	W06
	.byte		        As2 , v108
	.byte	W06
	.byte		        As2 , v048
	.byte	W06
	.byte	PEND
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_7_002
/* 004   ----------------------------------------
 */mus_boss_pinch_7_004:
	.byte		N05   , An2 , v120
	.byte	W06
	.byte		        An2 , v068
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		N11   , An2 , v120
	.byte	W12
	.byte		N05   , An2 , v048
	.byte	W06
	.byte		        An2 , v108
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		        An2 , v068
	.byte	W06
	.byte		N11   , An2 , v120
	.byte	W12
	.byte		N05   , An2 , v068
	.byte	W06
	.byte		        An2 , v120
	.byte	W06
	.byte		        An2 , v068
	.byte	W06
	.byte		        An2 , v108
	.byte	W06
	.byte		        An2 , v048
	.byte	W06
	.byte	PEND
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_7_004
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_7_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_7_002
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_7_004
/* 009   ----------------------------------------
 */	.byte		N05   , An2 , v120
	.byte	W06
	.byte		        An2 , v068
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		N11   , An2 , v120
	.byte	W12
	.byte		N05   , An2 , v048
	.byte	W06
	.byte		        An2 , v108
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		        An2 , v068
	.byte	W06
	.byte		N11   , An2 , v120
	.byte	W12
	.byte		N05   , An2 , v068
	.byte	W06
	.byte		        An2 , v120
	.byte	W06
	.byte		        As2 , v127
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
/* 010   ----------------------------------------
 */mus_boss_pinch_7_010:
	.byte		N05   , Cs3 , v120
	.byte	W06
	.byte		        Cs3 , v068
	.byte	W06
	.byte		        Cs3 , v072
	.byte	W06
	.byte		N11   , Cs3 , v120
	.byte	W12
	.byte		N05   , Cs3 , v048
	.byte	W06
	.byte		        Cs3 , v108
	.byte	W06
	.byte		        Cs3 , v072
	.byte	W06
	.byte		        Cs3 , v068
	.byte	W06
	.byte		N11   , Cs3 , v120
	.byte	W12
	.byte		N05   , Cs3 , v068
	.byte	W06
	.byte		        Cs3 , v120
	.byte	W06
	.byte		        Cs3 , v068
	.byte	W06
	.byte		        Cs3 , v108
	.byte	W06
	.byte		        Cs3 , v048
	.byte	W06
	.byte	PEND
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_7_010
/* 012   ----------------------------------------
 */mus_boss_pinch_7_012:
	.byte		N05   , Cn3 , v120
	.byte	W06
	.byte		        Cn3 , v068
	.byte	W06
	.byte		        Cn3 , v072
	.byte	W06
	.byte		N11   , Cn3 , v120
	.byte	W12
	.byte		N05   , Cn3 , v048
	.byte	W06
	.byte		        Cn3 , v108
	.byte	W06
	.byte		        Cn3 , v072
	.byte	W06
	.byte		        Cn3 , v068
	.byte	W06
	.byte		N11   , Cn3 , v120
	.byte	W12
	.byte		N05   , Cn3 , v068
	.byte	W06
	.byte		        Cn3 , v120
	.byte	W06
	.byte		        Cn3 , v068
	.byte	W06
	.byte		        Cn3 , v108
	.byte	W06
	.byte		        Cn3 , v048
	.byte	W06
	.byte	PEND
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_7_012
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_7_010
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_7_010
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_7_012
/* 017   ----------------------------------------
 */	.byte		N05   , Cn3 , v120
	.byte	W06
	.byte		        Cn3 , v068
	.byte	W06
	.byte		        Cn3 , v072
	.byte	W06
	.byte		N11   , Cn3 , v120
	.byte	W12
	.byte		N05   , Cn3 , v048
	.byte	W06
	.byte		        Cn3 , v108
	.byte	W06
	.byte		        Cn3 , v072
	.byte	W06
	.byte		        Cn3 , v068
	.byte	W06
	.byte		N11   , Cn3 , v120
	.byte	W12
	.byte		N05   , Cn3 , v068
	.byte	W06
	.byte		        Cn3 , v120
	.byte	W06
	.byte		        Cn3 , v068
	.byte	W06
	.byte		        Bn2 , v127
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte	GOTO
	 mPtr	mus_boss_pinch_7_B1
mus_boss_pinch_7_B2:
/* 018   ----------------------------------------
 */	.byte	FINE

/* **************** Track 8 (Midi-Chn.8) **************** */

mus_boss_pinch_8:
	.byte	KEYSH , mus_boss_pinch_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 58
	.byte		VOL   , 89*mus_boss_pinch_mvl/mxv
	.byte		BENDR , 12
	.byte		LFOS  , 38
	.byte		MODT  , 0
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
mus_boss_pinch_8_B1:
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W48
	.byte		N23   , Gs2 , v088
	.byte	W24
	.byte		        Gs3 , v100
	.byte	W24
/* 004   ----------------------------------------
 */	.byte		N92   , Gn3 , v124
	.byte	W96
/* 005   ----------------------------------------
 */	.byte		        Dn3 , v100
	.byte	W96
/* 006   ----------------------------------------
 */	.byte	W96
/* 007   ----------------------------------------
 */	.byte	W48
	.byte		N23   , Gs2 , v084
	.byte	W24
	.byte		        Gs3 , v088
	.byte	W24
/* 008   ----------------------------------------
 */	.byte		N80   , Gn3 , v127
	.byte	W84
	.byte		N05   , Gn3 , v112
	.byte	W06
	.byte		        An3 , v104
	.byte	W06
/* 009   ----------------------------------------
 */	.byte		N84   , Bn3 , v124
	.byte	W96
/* 010   ----------------------------------------
 */	.byte	W96
/* 011   ----------------------------------------
 */	.byte	W48
	.byte		N23   , Bn2 , v096
	.byte	W24
	.byte		        Bn3 , v100
	.byte	W24
/* 012   ----------------------------------------
 */	.byte		N92   , As3 , v124
	.byte	W96
/* 013   ----------------------------------------
 */	.byte		N90   , Fn3 , v108
	.byte	W96
/* 014   ----------------------------------------
 */	.byte	W96
/* 015   ----------------------------------------
 */	.byte	W48
	.byte		N23   , Bn2 , v088
	.byte	W24
	.byte		        Bn3 
	.byte	W24
/* 016   ----------------------------------------
 */	.byte		N80   , As3 , v124
	.byte	W84
	.byte		N05   , As3 , v084
	.byte	W06
	.byte		        Cn4 , v092
	.byte	W06
/* 017   ----------------------------------------
 */	.byte		N80   , Dn4 , v108
	.byte	W96
	.byte	GOTO
	 mPtr	mus_boss_pinch_8_B1
mus_boss_pinch_8_B2:
/* 018   ----------------------------------------
 */	.byte	FINE

/* **************** Track 9 (Midi-Chn.9) **************** */

mus_boss_pinch_9:
	.byte	KEYSH , mus_boss_pinch_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 66
	.byte		VOL   , 65*mus_boss_pinch_mvl/mxv
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
mus_boss_pinch_9_B1:
/* 002   ----------------------------------------
 */mus_boss_pinch_9_002:
	.byte		N05   , Cs3 , v120
	.byte	W06
	.byte		        Cs3 , v068
	.byte	W06
	.byte		        Cs3 , v072
	.byte	W06
	.byte		N11   , Cs3 , v120
	.byte	W12
	.byte		N05   , Cs3 , v048
	.byte	W06
	.byte		        Cs3 , v108
	.byte	W06
	.byte		        Cs3 , v072
	.byte	W06
	.byte		        Cs3 , v068
	.byte	W06
	.byte		N11   , Cs3 , v120
	.byte	W12
	.byte		N05   , Cs3 , v068
	.byte	W06
	.byte		        Cs3 , v120
	.byte	W06
	.byte		        Cs3 , v068
	.byte	W06
	.byte		        Cs3 , v108
	.byte	W06
	.byte		        Cs3 , v048
	.byte	W06
	.byte	PEND
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_9_002
/* 004   ----------------------------------------
 */mus_boss_pinch_9_004:
	.byte		N05   , Cn3 , v120
	.byte	W06
	.byte		        Cn3 , v068
	.byte	W06
	.byte		        Cn3 , v072
	.byte	W06
	.byte		N11   , Cn3 , v120
	.byte	W12
	.byte		N05   , Cn3 , v048
	.byte	W06
	.byte		        Cn3 , v108
	.byte	W06
	.byte		        Cn3 , v072
	.byte	W06
	.byte		        Cn3 , v068
	.byte	W06
	.byte		N11   , Cn3 , v120
	.byte	W12
	.byte		N05   , Cn3 , v068
	.byte	W06
	.byte		        Cn3 , v120
	.byte	W06
	.byte		        Cn3 , v068
	.byte	W06
	.byte		        Cn3 , v108
	.byte	W06
	.byte		        Cn3 , v048
	.byte	W06
	.byte	PEND
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_9_004
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_9_002
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_9_002
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_9_004
/* 009   ----------------------------------------
 */	.byte		N05   , Cn3 , v120
	.byte	W06
	.byte		        Cn3 , v068
	.byte	W06
	.byte		        Cn3 , v072
	.byte	W06
	.byte		N11   , Cn3 , v120
	.byte	W12
	.byte		N05   , Cn3 , v048
	.byte	W06
	.byte		        Cn3 , v108
	.byte	W06
	.byte		        Cn3 , v072
	.byte	W06
	.byte		        Cn3 , v068
	.byte	W06
	.byte		N11   , Cn3 , v120
	.byte	W12
	.byte		N05   , Cn3 , v068
	.byte	W06
	.byte		        Cn3 , v120
	.byte	W06
	.byte		        Cs3 , v127
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
/* 010   ----------------------------------------
 */mus_boss_pinch_9_010:
	.byte		N05   , En3 , v120
	.byte	W06
	.byte		        En3 , v068
	.byte	W06
	.byte		        En3 , v072
	.byte	W06
	.byte		N11   , En3 , v120
	.byte	W12
	.byte		N05   , En3 , v048
	.byte	W06
	.byte		        En3 , v108
	.byte	W06
	.byte		        En3 , v072
	.byte	W06
	.byte		        En3 , v068
	.byte	W06
	.byte		N11   , En3 , v120
	.byte	W12
	.byte		N05   , En3 , v068
	.byte	W06
	.byte		        En3 , v120
	.byte	W06
	.byte		        En3 , v068
	.byte	W06
	.byte		        En3 , v108
	.byte	W06
	.byte		        En3 , v048
	.byte	W06
	.byte	PEND
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_9_010
/* 012   ----------------------------------------
 */mus_boss_pinch_9_012:
	.byte		N05   , Ds3 , v120
	.byte	W06
	.byte		        Ds3 , v068
	.byte	W06
	.byte		        Ds3 , v072
	.byte	W06
	.byte		N11   , Ds3 , v120
	.byte	W12
	.byte		N05   , Ds3 , v048
	.byte	W06
	.byte		        Ds3 , v108
	.byte	W06
	.byte		        Ds3 , v072
	.byte	W06
	.byte		        Ds3 , v068
	.byte	W06
	.byte		N11   , Ds3 , v120
	.byte	W12
	.byte		N05   , Ds3 , v068
	.byte	W06
	.byte		        Ds3 , v120
	.byte	W06
	.byte		        Ds3 , v068
	.byte	W06
	.byte		        Ds3 , v108
	.byte	W06
	.byte		        Ds3 , v048
	.byte	W06
	.byte	PEND
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_9_012
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_9_010
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_9_010
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_boss_pinch_9_012
/* 017   ----------------------------------------
 */	.byte		N05   , Ds3 , v120
	.byte	W06
	.byte		        Ds3 , v068
	.byte	W06
	.byte		        Ds3 , v072
	.byte	W06
	.byte		N11   , Ds3 , v120
	.byte	W12
	.byte		N05   , Ds3 , v048
	.byte	W06
	.byte		        Ds3 , v108
	.byte	W06
	.byte		        Ds3 , v072
	.byte	W06
	.byte		        Ds3 , v068
	.byte	W06
	.byte		N11   , Ds3 , v120
	.byte	W12
	.byte		N05   , Ds3 , v068
	.byte	W06
	.byte		        Ds3 , v120
	.byte	W06
	.byte		        Ds3 , v068
	.byte	W06
	.byte		        Dn3 , v127
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte	GOTO
	 mPtr	mus_boss_pinch_9_B1
mus_boss_pinch_9_B2:
/* 018   ----------------------------------------
 */	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_boss_pinch):
	.byte	9	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_boss_pinch_pri	/* Priority */
	.byte	mus_boss_pinch_rev	/* Reverb */

mAlignWord
	mPtr	mus_boss_pinch_grp

	mPtr	mus_boss_pinch_1
	mPtr	mus_boss_pinch_2
	mPtr	mus_boss_pinch_3
	mPtr	mus_boss_pinch_4
	mPtr	mus_boss_pinch_5
	mPtr	mus_boss_pinch_6
	mPtr	mus_boss_pinch_7
	mPtr	mus_boss_pinch_8
	mPtr	mus_boss_pinch_9

	.end
