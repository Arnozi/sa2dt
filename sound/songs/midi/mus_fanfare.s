	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_fanfare_grp, voicegroup023
	.equ	mus_fanfare_pri, 255
	.equ	mus_fanfare_rev, reverb_set+0
	.equ	mus_fanfare_mvl, 105
	.equ	mus_fanfare_key, 0
	.equ	mus_fanfare_tbs, 1
	.equ	mus_fanfare_exg, 1
	.equ	mus_fanfare_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_fanfare)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_fanfare_1:
	.byte	KEYSH , mus_fanfare_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 164*mus_fanfare_tbs/2
	.byte		VOICE , 127
	.byte	PRIO  , 127
	.byte		VOL   , 0*mus_fanfare_mvl/mxv
	.byte		N18   , En1 , v056
	.byte		N23   , Ds2 , v127
	.byte	W18
	.byte		N06   , En1 , v056
	.byte	W06
	.byte		        Dn1 
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		N06   , En1 , v056
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		N06   , Dn1 , v056
	.byte		N05   , Ds2 , v127
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N17   , En2 
	.byte	W18
	.byte		N18   , Ds1 , v068
	.byte		N24   , Ds2 , v127
	.byte	W24
/* 001   ----------------------------------------
 */	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_fanfare_2:
	.byte	KEYSH , mus_fanfare_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 44
	.byte	PRIO  , 127
	.byte		VOL   , 127*mus_fanfare_mvl/mxv
	.byte		N12   , An2 , v124
	.byte	W12
	.byte		N06   , Cn2 , v004
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 , v096
	.byte	W06
	.byte		        An2 , v124
	.byte	W06
	.byte		        Cn2 , v004
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W06
	.byte		        Cn2 , v004
	.byte	W06
	.byte		        Gn3 , v127
	.byte	W06
	.byte		        Cn2 , v004
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , An2 , v124
	.byte	W12
	.byte		N06   , Cn2 , v004
	.byte	W06
	.byte		N06   
	.byte	W06
/* 001   ----------------------------------------
 */	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_fanfare_3:
	.byte	KEYSH , mus_fanfare_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 101
	.byte	PRIO  , 127
	.byte		VOL   , 127*mus_fanfare_mvl/mxv
	.byte		MOD   , 0
	.byte		LFOS  , 86
	.byte		BENDR , 53
	.byte		N12   , Cs3 , v096
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte		        En3 , v124
	.byte	W42
	.byte		        Cs4 
	.byte	W06
	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_fanfare_4:
	.byte	KEYSH , mus_fanfare_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 102
	.byte	PRIO  , 127
	.byte		VOL   , 127*mus_fanfare_mvl/mxv
	.byte		N12   , En3 , v120
	.byte	W13
	.byte		N01   , Ds3 , v072
	.byte	W02
	.byte		        Cs3 , v084
	.byte	W02
	.byte		        Bn2 , v076
	.byte	W02
	.byte		        An2 , v072
	.byte	W02
	.byte		        Gs2 , v056
	.byte	W02
	.byte		        Fs2 , v044
	.byte	W02
	.byte		N03   , En2 , v028
	.byte	W17
	.byte		N06   , Cs3 , v120
	.byte	W12
	.byte		N06   
	.byte	W18
	.byte		        Cs3 , v127
	.byte	W07
	.byte		N01   , Cn3 , v072
	.byte	W02
	.byte		        As2 , v084
	.byte	W02
	.byte		        Gs2 , v076
	.byte	W02
	.byte		        Fs2 , v072
	.byte	W02
	.byte		        Fn2 , v056
	.byte	W02
	.byte		        Ds2 , v044
	.byte	W02
	.byte		N03   , Cs2 , v028
	.byte	W03
	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_fanfare_5:
	.byte	KEYSH , mus_fanfare_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 95
	.byte	PRIO  , 127
	.byte		VOL   , 90*mus_fanfare_mvl/mxv
	.byte		BENDR , 12
	.byte		N12   , An4 , v096
	.byte	W12
	.byte		N06   , Cn3 , v004
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn3 , v096
	.byte	W06
	.byte		        Cs4 , v124
	.byte	W06
	.byte		        Cn3 , v004
	.byte	W06
	.byte		        En4 , v120
	.byte	W06
	.byte		        Cn3 , v004
	.byte	W06
	.byte		        An4 , v127
	.byte	W06
	.byte		N05   , Cn3 , v004
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Cs5 , v096
	.byte	W12
	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_fanfare_6:
	.byte	KEYSH , mus_fanfare_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 99
	.byte	PRIO  , 127
	.byte		VOL   , 103*mus_fanfare_mvl/mxv
	.byte		BENDR , 12
	.byte		N12   , An4 , v096
	.byte	W12
	.byte		N06   , Cn3 , v004
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En4 , v096
	.byte	W06
	.byte		        Gn4 , v124
	.byte	W06
	.byte		        Cn3 , v004
	.byte	W06
	.byte		        An4 , v120
	.byte	W06
	.byte		        Cn3 , v004
	.byte	W06
	.byte		        Cn5 , v127
	.byte	W06
	.byte		        Cn3 , v004
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , An4 , v127
	.byte	W12
	.byte		N06   , Cn3 , v004
	.byte	W06
	.byte		N06   
	.byte	W06
/* 001   ----------------------------------------
 */	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_fanfare_7:
	.byte	KEYSH , mus_fanfare_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 101
	.byte	PRIO  , 127
	.byte		VOL   , 0*mus_fanfare_mvl/mxv
	.byte		MOD   , 0
	.byte		LFOS  , 86
	.byte		BENDR , 53
	.byte		N06   , Cs3 , v004
	.byte		N06   , Dn3 
	.byte		N06   , Ds3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Dn3 
	.byte		N06   , Ds3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Dn3 
	.byte		N06   , Ds3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Dn3 
	.byte		N06   , Ds3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Dn3 
	.byte		N06   , Ds3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Dn3 
	.byte		N06   , Ds3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Dn3 
	.byte		N06   , Ds3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Dn3 
	.byte		N06   , Ds3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Dn3 
	.byte		N06   , Ds3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Dn3 
	.byte		N06   , Ds3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Dn3 
	.byte		N06   , Ds3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Dn3 
	.byte		N06   , Ds3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Dn3 
	.byte		N06   , Ds3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Dn3 
	.byte		N06   , Ds3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Dn3 
	.byte		N06   , Ds3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Dn3 
	.byte		N06   , Ds3 
	.byte		N06   , En3 
	.byte	W06
/* 001   ----------------------------------------
 */	.byte	FINE

/* **************** Track 8 (Midi-Chn.8) **************** */

mus_fanfare_8:
	.byte	KEYSH , mus_fanfare_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 127
	.byte	PRIO  , 120
	.byte		VOL   , 0*mus_fanfare_mvl/mxv
	.byte		N06   , Dn1 , v004
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
/* 001   ----------------------------------------
 */	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_fanfare):
	.byte	8	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_fanfare_pri	/* Priority */
	.byte	mus_fanfare_rev	/* Reverb */

mAlignWord
	mPtr	mus_fanfare_grp

	mPtr	mus_fanfare_1
	mPtr	mus_fanfare_2
	mPtr	mus_fanfare_3
	mPtr	mus_fanfare_4
	mPtr	mus_fanfare_5
	mPtr	mus_fanfare_6
	mPtr	mus_fanfare_7
	mPtr	mus_fanfare_8

	.end
