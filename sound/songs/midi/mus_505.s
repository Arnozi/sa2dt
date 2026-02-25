	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_505_grp, voicegroup010
	.equ	mus_505_pri, 0
	.equ	mus_505_rev, reverb_set+0
	.equ	mus_505_mvl, 110
	.equ	mus_505_key, 0
	.equ	mus_505_tbs, 1
	.equ	mus_505_exg, 1
	.equ	mus_505_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_505)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_505_1:
	.byte	KEYSH , mus_505_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 110*mus_505_tbs/2
	.byte		VOICE , 63
	.byte		VOL   , 114*mus_505_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W06
	.byte		N12   , Fn2 , v112
	.byte	W12
	.byte		N06   , Fs2 , v108
	.byte	W06
	.byte		        Gs2 , v127
	.byte	W12
	.byte		        As2 , v120
	.byte	W12
	.byte		N30   , Bn2 
	.byte	W30
	.byte		N12   , Bn2 , v127
	.byte	W12
	.byte		N06   , Cs3 , v116
	.byte	W06
/* 001   ----------------------------------------
 */	.byte		        Dn3 , v124
	.byte	W12
	.byte		        En3 , v100
	.byte	W12
	.byte		N30   , Fn3 , v088
	.byte	W30
	.byte		N04   , Fs3 , v108
	.byte	W06
	.byte		N96   
	.byte	W36
/* 002   ----------------------------------------
 */	.byte	W60
	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_505_2:
	.byte	KEYSH , mus_505_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 61
	.byte		VOL   , 104*mus_505_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W06
	.byte		N12   , Cs3 , v120
	.byte	W12
	.byte		N06   , Ds3 , v116
	.byte	W06
	.byte		        En3 , v124
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N30   , Gn3 , v116
	.byte	W30
	.byte		N12   , Gn3 , v096
	.byte	W12
	.byte		N06   , An3 , v108
	.byte	W06
/* 001   ----------------------------------------
 */	.byte		        As3 
	.byte	W12
	.byte		        Cn4 , v100
	.byte	W12
	.byte		N30   , Cs4 
	.byte	W30
	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_505_3:
	.byte	KEYSH , mus_505_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 90
	.byte		VOL   , 106*mus_505_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W08
	.byte		N66   , Cn3 , v120
	.byte	W72
	.byte	W01
	.byte		N56   , Fn2 
	.byte	W15
/* 001   ----------------------------------------
 */	.byte	W56
	.byte		N15   , Cn3 , v127
	.byte	W16
	.byte		N13   , Gn2 
	.byte	W16
	.byte		N12   , Cn3 
	.byte	W08
/* 002   ----------------------------------------
 */	.byte	W08
	.byte		N14   , Gn2 
	.byte	W15
	.byte		N15   , Cn3 
	.byte	W17
	.byte		        Gn2 , v120
	.byte	W18
	.byte		N24   , Cn3 , v127
	.byte	W24
	.byte	W03
	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_505_4:
	.byte	KEYSH , mus_505_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 60
	.byte		VOL   , 106*mus_505_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W54
	.byte		N04   , Dn4 , v108
	.byte	W06
	.byte		N96   
	.byte	W36
/* 002   ----------------------------------------
 */	.byte	W60
	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_505_5:
	.byte	KEYSH , mus_505_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 60
	.byte		VOL   , 111*mus_505_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W06
	.byte		N12   , Gs2 , v127
	.byte	W12
	.byte		N06   , As2 , v092
	.byte	W06
	.byte		        Bn2 , v124
	.byte	W12
	.byte		        Cs3 , v116
	.byte	W12
	.byte		N30   , Dn3 , v124
	.byte	W30
	.byte		N12   , Dn3 , v112
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
/* 001   ----------------------------------------
 */	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 , v096
	.byte	W12
	.byte		N30   , Gs3 , v088
	.byte	W30
	.byte		N04   , An3 , v096
	.byte	W06
	.byte		N96   
	.byte	W36
/* 002   ----------------------------------------
 */	.byte	W60
	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_505_6:
	.byte	KEYSH , mus_505_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 5
	.byte		VOL   , 115*mus_505_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W06
	.byte		N12   , Cs3 , v127
	.byte	W12
	.byte		N06   , Bn2 , v124
	.byte	W06
	.byte		        En2 , v096
	.byte	W12
	.byte		        Ds2 , v127
	.byte	W12
	.byte		N30   , Dn2 
	.byte	W30
	.byte		N12   , Gn2 , v112
	.byte	W12
	.byte		N06   , Fs2 
	.byte	W06
/* 001   ----------------------------------------
 */	.byte		        Fn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N30   , Ds2 
	.byte	W30
	.byte		N04   , Dn2 , v124
	.byte	W06
	.byte		N96   
	.byte	W36
/* 002   ----------------------------------------
 */	.byte	W60
	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_505_7:
	.byte	KEYSH , mus_505_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 6
	.byte		VOL   , 91*mus_505_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W06
	.byte		N12   , Fn2 , v112
	.byte	W12
	.byte		N04   , Fs2 , v108
	.byte	W06
	.byte		        Gs2 , v127
	.byte	W12
	.byte		        As2 , v120
	.byte	W12
	.byte		N30   , Bn2 
	.byte	W30
	.byte		N10   , Bn2 , v127
	.byte	W12
	.byte		N04   , Cs3 , v116
	.byte	W06
/* 001   ----------------------------------------
 */	.byte		        Dn3 , v124
	.byte	W12
	.byte		        En3 , v100
	.byte	W12
	.byte		N30   , Fn3 , v088
	.byte	W30
	.byte		N03   , Fs5 , v072
	.byte	W03
	.byte		        Dn5 , v092
	.byte	W03
	.byte		        An4 , v104
	.byte	W03
	.byte		        Fs4 , v096
	.byte	W03
	.byte		        Dn4 , v108
	.byte	W03
	.byte		        An3 , v104
	.byte	W03
	.byte		        An4 , v100
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        Dn4 , v104
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Fs3 , v100
	.byte	W03
	.byte		        Dn3 , v104
	.byte	W03
	.byte		        An3 , v100
	.byte	W03
	.byte		        Fs3 , v092
	.byte	W03
/* 002   ----------------------------------------
 */	.byte		        Dn3 , v116
	.byte	W03
	.byte		        An2 , v108
	.byte	W03
	.byte		        Fs2 , v104
	.byte	W03
	.byte		N09   , Dn2 , v120
	.byte	W09
	.byte	FINE

/* **************** Track 8 (Midi-Chn.8) **************** */

mus_505_8:
	.byte	KEYSH , mus_505_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 7
	.byte		VOL   , 91*mus_505_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W06
	.byte		N12   , Cs3 , v120
	.byte	W12
	.byte		N04   , Ds3 , v116
	.byte	W06
	.byte		        En3 , v124
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N30   , Gn3 , v116
	.byte	W30
	.byte		N10   , Gn3 , v096
	.byte	W12
	.byte		N04   , An3 , v108
	.byte	W06
/* 001   ----------------------------------------
 */	.byte		        As3 
	.byte	W12
	.byte		        Cn4 , v100
	.byte	W12
	.byte		N30   , Cs4 
	.byte	W30
	.byte		N04   , Dn4 , v108
	.byte	W06
	.byte		N96   
	.byte	W36
/* 002   ----------------------------------------
 */	.byte	W60
	.byte	FINE

/* **************** Track 9 (Midi-Chn.9) **************** */

mus_505_9:
	.byte	KEYSH , mus_505_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 127
	.byte		VOL   , 127*mus_505_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W06
	.byte		N72   , Bn1 , v127
	.byte		N72   , Cn2 
	.byte	W72
	.byte		        Bn1 
	.byte		N72   , Cn2 
	.byte	W18
/* 001   ----------------------------------------
 */	.byte	W54
	.byte		N05   , As1 
	.byte		N92   , Cn2 
	.byte	W06
	.byte		N88   , Bn1 , v112
	.byte	W36
/* 002   ----------------------------------------
 */	.byte	W56
	.byte	W02
	.byte		TIE   , As1 , v127
	.byte		TIE   , Cn2 
	.byte	W36
	.byte	W02
/* 003   ----------------------------------------
 */	.byte	W78
	.byte		EOT   , As1 
	.byte		        Cn2 
	.byte	W01
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_505):
	.byte	9	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_505_pri	/* Priority */
	.byte	mus_505_rev	/* Reverb */

mAlignWord
	mPtr	mus_505_grp

	mPtr	mus_505_1
	mPtr	mus_505_2
	mPtr	mus_505_3
	mPtr	mus_505_4
	mPtr	mus_505_5
	mPtr	mus_505_6
	mPtr	mus_505_7
	mPtr	mus_505_8
	mPtr	mus_505_9

	.end
