	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_506_grp, voicegroup010
	.equ	mus_506_pri, 0
	.equ	mus_506_rev, reverb_set+0
	.equ	mus_506_mvl, 110
	.equ	mus_506_key, 0
	.equ	mus_506_tbs, 1
	.equ	mus_506_exg, 1
	.equ	mus_506_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_506)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

mus_506_1:
	.byte	KEYSH , mus_506_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 126*mus_506_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 118*mus_506_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
	.byte		N04   , Cs1 , v127
	.byte	W06
	.byte		N04   
	.byte	W12
	.byte		N17   
	.byte		N52   , Cs2 
	.byte	W30
	.byte		N04   , Cn1 
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		N14   , Cs1 
	.byte	W06
@ 001   ----------------------------------------
	.byte	W24
	.byte		N04   , Gs1 
	.byte	W04
	.byte		        Gn1 
	.byte	W04
	.byte		        Gn1 , v088
	.byte	W04
	.byte		        Gn1 , v092
	.byte	W04
	.byte		        Fs1 , v112
	.byte	W04
	.byte		        Fn1 , v092
	.byte	W04
	.byte		N64   , Cn1 , v127
	.byte		N64   , Cs2 
	.byte	W48
@ 002   ----------------------------------------
	.byte	W24
	.byte		        Cn1 
	.byte		N64   , Cs2 
	.byte	W64
	.byte	W01
	.byte	FINE

@ **************** Track 2 (Midi-Chn.2) ****************

mus_506_2:
	.byte	KEYSH , mus_506_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 74
	.byte		VOL   , 111*mus_506_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
	.byte		N06   , Gs2 , v127
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N24   , Cn3 
	.byte	W30
	.byte		N06   , As2 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N24   , Cs3 
	.byte	W06
@ 001   ----------------------------------------
	.byte	W48
	.byte		N72   , Gs3 , v120
	.byte	W48
@ 002   ----------------------------------------
	.byte	W24
	.byte	FINE

@ **************** Track 3 (Midi-Chn.3) ****************

mus_506_3:
	.byte	KEYSH , mus_506_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 74
	.byte		VOL   , 111*mus_506_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N24   , Gs2 
	.byte	W30
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N24   , As2 
	.byte	W06
@ 001   ----------------------------------------
	.byte	W48
	.byte		N72   , Ds3 
	.byte	W48
@ 002   ----------------------------------------
	.byte	W24
	.byte	FINE

@ **************** Track 4 (Midi-Chn.4) ****************

mus_506_4:
	.byte	KEYSH , mus_506_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 106
	.byte		VOL   , 61*mus_506_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
	.byte		N06   , Ds4 , v092
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N24   , Cn4 
	.byte	W30
	.byte		N06   , As3 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W06
@ 001   ----------------------------------------
	.byte	W48
	.byte		N72   , Ds3 
	.byte	W48
@ 002   ----------------------------------------
	.byte	W24
	.byte	FINE

@ **************** Track 5 (Midi-Chn.5) ****************

mus_506_5:
	.byte	KEYSH , mus_506_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 80
	.byte		VOL   , 127*mus_506_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N03   , Fn1 , v072
	.byte	W01
	.byte		N04   , Gn1 , v096
	.byte	W02
	.byte		N03   , An1 , v104
	.byte	W02
	.byte		        Bn1 , v108
	.byte	W01
	.byte		        Cn2 
	.byte	W02
	.byte		        Dn2 
	.byte	W02
	.byte		        En2 
	.byte	W02
	.byte		        Fn2 , v116
	.byte	W01
	.byte		        Gn2 , v108
	.byte	W02
	.byte		        An2 , v116
	.byte	W02
	.byte		        Bn2 
	.byte	W02
	.byte		        Cn3 , v120
	.byte	W02
	.byte		        Dn3 , v116
	.byte	W03
	.byte		N44   , Ds3 , v127
	.byte	W48
	.byte		N40   , Cs3 
	.byte	W24
@ 001   ----------------------------------------
	.byte	W15
	.byte		N06   , Bn2 
	.byte	W01
	.byte		N04   , An2 
	.byte	W03
	.byte		N03   , Gn2 
	.byte	W02
	.byte		        Fs2 
	.byte	W02
	.byte		        En2 
	.byte	W02
	.byte		        Dn2 
	.byte	W01
	.byte		        Cs2 
	.byte	W02
	.byte		        Bn1 
	.byte	W02
	.byte		N04   , An1 
	.byte	W04
	.byte		N03   , Gn1 
	.byte	W14
	.byte		N60   , Ds3 
	.byte	W48
@ 002   ----------------------------------------
	.byte	W15
	.byte	FINE

@ **************** Track 6 (Midi-Chn.6) ****************

mus_506_6:
	.byte	KEYSH , mus_506_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 105
	.byte		VOL   , 78*mus_506_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
	.byte		N06   , Cn3 , v092
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N24   , Gs2 
	.byte	W30
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N24   , As2 
	.byte	W06
@ 001   ----------------------------------------
	.byte	W48
	.byte		N72   , Cn3 
	.byte	W48
@ 002   ----------------------------------------
	.byte	W24
	.byte	FINE

@ **************** Track 7 (Midi-Chn.7) ****************

mus_506_7:
	.byte	KEYSH , mus_506_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 107
	.byte		VOL   , 111*mus_506_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		        Ds2 
	.byte	W12
	.byte		N24   , Gs2 
	.byte	W30
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Fs2 
	.byte	W12
	.byte		N24   , As2 
	.byte	W06
@ 001   ----------------------------------------
	.byte	W48
	.byte		N72   , Gs2 
	.byte	W48
@ 002   ----------------------------------------
	.byte	W24
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(mus_506):
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_506_pri	@ Priority
	.byte	mus_506_rev	@ Reverb

mAlignWord
	mPtr	mus_506_grp

	mPtr	mus_506_1
	mPtr	mus_506_2
	mPtr	mus_506_3
	mPtr	mus_506_4
	mPtr	mus_506_5
	mPtr	mus_506_6
	mPtr	mus_506_7

	.end
