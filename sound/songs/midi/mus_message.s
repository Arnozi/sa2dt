	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_message_grp, voicegroup013
	.equ	mus_message_pri, 0
	.equ	mus_message_rev, reverb_set+0
	.equ	mus_message_mvl, 105
	.equ	mus_message_key, 0
	.equ	mus_message_tbs, 1
	.equ	mus_message_exg, 1
	.equ	mus_message_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_message)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_message_1:
	.byte	KEYSH , mus_message_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 80*mus_message_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_message_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W06
	.byte		N05   , An1 , v127
	.byte	W06
	.byte		N04   , Dn1 , v076
	.byte		N05   , Gn1 , v127
	.byte	W06
	.byte		N04   , Dn1 , v076
	.byte		N08   , Fs1 , v127
	.byte	W06
	.byte	TEMPO , 76*mus_message_tbs/2
	.byte		        Cn1 
	.byte		N05   , Ds1 , v076
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte	TEMPO , 72*mus_message_tbs/2
	.byte		N02   
	.byte		N04   , Dn1 , v076
	.byte	W06
	.byte		N05   , Ds1 
	.byte	W06
	.byte		N84   , Cs2 , v127
	.byte	W48
/* 001   ----------------------------------------
 */	.byte	W36
	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_message_2:
	.byte	KEYSH , mus_message_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 86
	.byte		MOD   , 0
	.byte		BENDR , 0
	.byte		VOL   , 127*mus_message_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W06
	.byte		N05   , Cn2 , v127
	.byte		N04   , En2 
	.byte	W06
	.byte		N05   
	.byte		N04   , Gn2 
	.byte	W06
	.byte		N05   
	.byte		N04   , Cn3 
	.byte	W06
	.byte		N05   
	.byte		N05   , En3 
	.byte	W12
	.byte		N09   , Gn2 
	.byte		N09   , Cn3 
	.byte	W12
	.byte		VOL   , 45*mus_message_mvl/mxv
	.byte		TIE   , Ds2 
	.byte		TIE   , Fs3 
	.byte	W06
	.byte		VOL   , 51*mus_message_mvl/mxv
	.byte	W06
	.byte		        57*mus_message_mvl/mxv
	.byte	W06
	.byte		        63*mus_message_mvl/mxv
	.byte	W06
	.byte		        69*mus_message_mvl/mxv
	.byte	W06
	.byte		        75*mus_message_mvl/mxv
	.byte	W06
	.byte		        80*mus_message_mvl/mxv
	.byte	W06
	.byte		        86*mus_message_mvl/mxv
	.byte	W06
/* 001   ----------------------------------------
 */	.byte		        92*mus_message_mvl/mxv
	.byte	W06
	.byte		        98*mus_message_mvl/mxv
	.byte	W06
	.byte		        103*mus_message_mvl/mxv
	.byte	W06
	.byte		        109*mus_message_mvl/mxv
	.byte	W06
	.byte		        115*mus_message_mvl/mxv
	.byte	W24
	.byte		        127*mus_message_mvl/mxv
	.byte	W06
	.byte		        120*mus_message_mvl/mxv
	.byte	W06
	.byte		        112*mus_message_mvl/mxv
	.byte	W06
	.byte		        103*mus_message_mvl/mxv
	.byte	W06
	.byte		        96*mus_message_mvl/mxv
	.byte	W06
	.byte		        88*mus_message_mvl/mxv
	.byte	W06
	.byte		        80*mus_message_mvl/mxv
	.byte	W06
	.byte		        72*mus_message_mvl/mxv
	.byte	W06
/* 002   ----------------------------------------
 */	.byte		        63*mus_message_mvl/mxv
	.byte	W06
	.byte		        56*mus_message_mvl/mxv
	.byte	W06
	.byte		        48*mus_message_mvl/mxv
	.byte	W06
	.byte		        40*mus_message_mvl/mxv
	.byte	W06
	.byte		        32*mus_message_mvl/mxv
	.byte	W06
	.byte		        23*mus_message_mvl/mxv
	.byte	W06
	.byte		        8*mus_message_mvl/mxv
	.byte	W06
	.byte		        0*mus_message_mvl/mxv
	.byte	W30
	.byte		EOT   , Ds2 
	.byte		        Fs3 
	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_message_3:
	.byte	KEYSH , mus_message_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 41
	.byte		VOL   , 103*mus_message_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W06
	.byte		N05   , Gn2 , v120
	.byte	W06
	.byte		        Cn3 , v108
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N07   , Gn3 , v127
	.byte	W12
	.byte		N08   , En3 , v116
	.byte	W12
	.byte		TIE   , An3 , v127
	.byte	W48
/* 001   ----------------------------------------
 */	.byte	W48
	.byte		VOL   , 127*mus_message_mvl/mxv
	.byte	W06
	.byte		        120*mus_message_mvl/mxv
	.byte	W06
	.byte		        112*mus_message_mvl/mxv
	.byte	W06
	.byte		        103*mus_message_mvl/mxv
	.byte	W06
	.byte		        96*mus_message_mvl/mxv
	.byte	W06
	.byte		        88*mus_message_mvl/mxv
	.byte	W06
	.byte		        80*mus_message_mvl/mxv
	.byte	W06
	.byte		        72*mus_message_mvl/mxv
	.byte	W06
/* 002   ----------------------------------------
 */	.byte		        63*mus_message_mvl/mxv
	.byte	W06
	.byte		        56*mus_message_mvl/mxv
	.byte	W06
	.byte		        48*mus_message_mvl/mxv
	.byte	W06
	.byte		        40*mus_message_mvl/mxv
	.byte	W06
	.byte		        32*mus_message_mvl/mxv
	.byte	W06
	.byte		        23*mus_message_mvl/mxv
	.byte	W06
	.byte		        8*mus_message_mvl/mxv
	.byte	W06
	.byte		        0*mus_message_mvl/mxv
	.byte	W30
	.byte		EOT   
	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_message_4:
	.byte	KEYSH , mus_message_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 105
	.byte		MOD   , 0
	.byte		BENDR , 0
	.byte		VOL   , 115*mus_message_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W06
	.byte		N05   , Cn3 , v088
	.byte	W06
	.byte		        En3 , v076
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N06   , Cn4 , v096
	.byte	W12
	.byte		N08   , Gn3 , v080
	.byte	W12
	.byte		N54   , Fs3 , v048
	.byte	W28
	.byte		N02   , Fs6 , v092
	.byte	W03
	.byte		        Cn6 
	.byte	W03
	.byte		        Ds6 
	.byte	W03
	.byte		        An5 , v080
	.byte	W03
	.byte		        Cn6 , v092
	.byte	W03
	.byte		        Fs5 
	.byte	W03
	.byte		        An5 , v080
	.byte	W02
/* 001   ----------------------------------------
 */	.byte	W01
	.byte		        Ds5 , v092
	.byte	W03
	.byte		        Fs5 
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        An4 , v080
	.byte	W03
	.byte		        Cn5 , v092
	.byte	W03
	.byte		        Fs4 , v080
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Ds4 , v092
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        An3 , v080
	.byte	W03
	.byte		        Cn4 , v092
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        An3 , v080
	.byte	W02
	.byte		VOL   , 127*mus_message_mvl/mxv
	.byte	W01
	.byte		N02   , Ds3 , v092
	.byte	W03
	.byte		        Fs3 
	.byte	W02
	.byte		VOL   , 120*mus_message_mvl/mxv
	.byte	W01
	.byte		N02   , An3 , v080
	.byte	W03
	.byte		        Ds3 , v092
	.byte	W02
	.byte		VOL   , 112*mus_message_mvl/mxv
	.byte	W01
	.byte		N02   , Fs3 
	.byte	W03
	.byte		        Cn3 
	.byte	W02
	.byte		VOL   , 103*mus_message_mvl/mxv
	.byte	W01
	.byte		N02   , Ds3 
	.byte	W03
	.byte		        An2 , v080
	.byte	W02
	.byte		VOL   , 96*mus_message_mvl/mxv
	.byte	W01
	.byte		N02   , Cn3 , v092
	.byte	W03
	.byte		        An2 , v080
	.byte	W02
	.byte		VOL   , 88*mus_message_mvl/mxv
	.byte	W01
	.byte		N02   , Cn3 , v092
	.byte	W03
	.byte		        Fs2 , v080
	.byte	W02
	.byte		VOL   , 80*mus_message_mvl/mxv
	.byte	W01
	.byte		N02   , An2 
	.byte	W03
	.byte		        Ds2 , v092
	.byte	W02
	.byte		VOL   , 72*mus_message_mvl/mxv
	.byte	W01
	.byte		N02   , Fs2 
	.byte	W03
	.byte		        Cn2 
	.byte	W02
/* 002   ----------------------------------------
 */	.byte		VOL   , 63*mus_message_mvl/mxv
	.byte	W01
	.byte		N02   , Ds2 
	.byte	W03
	.byte		        An1 , v080
	.byte	W02
	.byte		VOL   , 56*mus_message_mvl/mxv
	.byte	W01
	.byte		N02   , Cn2 , v092
	.byte	W03
	.byte		        Fs1 
	.byte	W02
	.byte		VOL   , 48*mus_message_mvl/mxv
	.byte	W01
	.byte		N02   , An1 , v080
	.byte	W03
	.byte		        Ds1 , v092
	.byte	W02
	.byte		VOL   , 40*mus_message_mvl/mxv
	.byte	W01
	.byte		N02   , Fs1 
	.byte	W03
	.byte		        An1 , v080
	.byte	W02
	.byte		VOL   , 32*mus_message_mvl/mxv
	.byte	W01
	.byte		N02   , Ds1 , v092
	.byte	W03
	.byte		        Fs1 
	.byte	W02
	.byte		VOL   , 23*mus_message_mvl/mxv
	.byte	W01
	.byte		N02   , Cn1 
	.byte	W03
	.byte		        Ds1 
	.byte	W02
	.byte		VOL   , 8*mus_message_mvl/mxv
	.byte	W01
	.byte		N02   , An0 , v080
	.byte	W03
	.byte		        Cn1 , v092
	.byte	W02
	.byte		VOL   , 0*mus_message_mvl/mxv
	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_message_5:
	.byte	KEYSH , mus_message_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 107
	.byte		MOD   , 1
	.byte		BENDR , 0
	.byte		VOL   , 127*mus_message_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W06
	.byte		N06   , Cn2 , v108
	.byte	W06
	.byte		        Gn2 , v104
	.byte	W06
	.byte		        Cn3 , v108
	.byte	W06
	.byte		        En3 , v096
	.byte	W06
	.byte		        En2 , v092
	.byte	W06
	.byte		N09   , Cn3 , v096
	.byte	W12
	.byte		TIE   , An2 , v116
	.byte	W48
/* 001   ----------------------------------------
 */	.byte	W48
	.byte		VOL   , 108*mus_message_mvl/mxv
	.byte	W06
	.byte		        101*mus_message_mvl/mxv
	.byte	W06
	.byte		        92*mus_message_mvl/mxv
	.byte	W06
	.byte		        85*mus_message_mvl/mxv
	.byte	W06
	.byte		        78*mus_message_mvl/mxv
	.byte	W06
	.byte		        69*mus_message_mvl/mxv
	.byte	W06
	.byte		        62*mus_message_mvl/mxv
	.byte	W06
	.byte		        54*mus_message_mvl/mxv
	.byte	W06
/* 002   ----------------------------------------
 */	.byte		        46*mus_message_mvl/mxv
	.byte	W06
	.byte		        39*mus_message_mvl/mxv
	.byte	W06
	.byte		        31*mus_message_mvl/mxv
	.byte	W06
	.byte		        23*mus_message_mvl/mxv
	.byte	W06
	.byte		        16*mus_message_mvl/mxv
	.byte	W06
	.byte		        8*mus_message_mvl/mxv
	.byte	W06
	.byte		        7*mus_message_mvl/mxv
	.byte	W36
	.byte		EOT   
	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_message_6:
	.byte	KEYSH , mus_message_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 64
	.byte		MOD   , 0
	.byte		BENDR , 0
	.byte		VOL   , 115*mus_message_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W72
	.byte		N02   , Fs5 , v127
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        An4 , v124
	.byte	W03
	.byte		        Cn5 , v127
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        An4 , v124
	.byte	W03
	.byte		        Ds4 , v127
	.byte	W03
/* 001   ----------------------------------------
 */	.byte		VOL   , 113*mus_message_mvl/mxv
	.byte		N02   , Fs4 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		VOL   , 106*mus_message_mvl/mxv
	.byte		N02   , Ds4 
	.byte	W03
	.byte		        An3 , v124
	.byte	W03
	.byte		VOL   , 98*mus_message_mvl/mxv
	.byte		N02   , Cn4 , v127
	.byte	W03
	.byte		        Fs3 , v124
	.byte	W03
	.byte		VOL   , 92*mus_message_mvl/mxv
	.byte		N02   , An3 
	.byte	W03
	.byte		        Ds3 , v127
	.byte	W03
	.byte		VOL   , 85*mus_message_mvl/mxv
	.byte		N02   , Fs3 
	.byte	W03
	.byte		        Cn3 
	.byte	W03
	.byte		VOL   , 78*mus_message_mvl/mxv
	.byte		N02   , Ds3 
	.byte	W03
	.byte		        An2 , v124
	.byte	W03
	.byte		VOL   , 71*mus_message_mvl/mxv
	.byte		N02   , Cn3 , v127
	.byte	W03
	.byte		        Fs2 
	.byte	W03
	.byte		VOL   , 63*mus_message_mvl/mxv
	.byte		N02   , An2 , v124
	.byte	W03
	.byte		        Ds2 , v127
	.byte	W03
	.byte		VOL   , 57*mus_message_mvl/mxv
	.byte		N02   , Fs2 
	.byte	W03
	.byte		        An2 , v124
	.byte	W03
	.byte		VOL   , 50*mus_message_mvl/mxv
	.byte		N02   , Ds2 , v127
	.byte	W03
	.byte		        Fs2 
	.byte	W03
	.byte		VOL   , 43*mus_message_mvl/mxv
	.byte		N02   , Cn2 
	.byte	W03
	.byte		        Ds2 
	.byte	W03
	.byte		VOL   , 36*mus_message_mvl/mxv
	.byte		N02   , An1 , v124
	.byte	W03
	.byte		        Cn2 , v127
	.byte	W03
	.byte		VOL   , 28*mus_message_mvl/mxv
	.byte		N02   , An1 , v124
	.byte	W03
	.byte		        Cn2 , v127
	.byte	W03
	.byte		VOL   , 22*mus_message_mvl/mxv
	.byte		N02   , Fs1 , v124
	.byte	W03
	.byte		        An1 
	.byte	W03
	.byte		VOL   , 15*mus_message_mvl/mxv
	.byte		N02   , Ds1 , v127
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte		VOL   , 8*mus_message_mvl/mxv
	.byte		N02   , Cn1 
	.byte	W03
	.byte		        Ds1 
	.byte	W03
/* 002   ----------------------------------------
 */	.byte		        An0 , v124
	.byte	W03
	.byte		        Cn1 , v127
	.byte	W03
	.byte		        Fs0 
	.byte	W03
	.byte		        An0 , v124
	.byte	W03
	.byte		        Ds0 , v127
	.byte	W03
	.byte		        Fs0 
	.byte	W03
	.byte		        An0 , v124
	.byte	W03
	.byte		        Ds0 , v127
	.byte	W03
	.byte		        Fs0 
	.byte	W03
	.byte		        Cn0 
	.byte	W03
	.byte		        Ds0 
	.byte	W03
	.byte		        AnM1, v124
	.byte	W03
	.byte		VOL   , 8*mus_message_mvl/mxv
	.byte		N02   , Cn0 , v127
	.byte	W06
	.byte		VOL   , 0*mus_message_mvl/mxv
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_message):
	.byte	6	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_message_pri	/* Priority */
	.byte	mus_message_rev	/* Reverb */

mAlignWord
	mPtr	mus_message_grp

	mPtr	mus_message_1
	mPtr	mus_message_2
	mPtr	mus_message_3
	mPtr	mus_message_4
	mPtr	mus_message_5
	mPtr	mus_message_6

	.end
