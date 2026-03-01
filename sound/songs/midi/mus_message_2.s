	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_message_2_grp, voicegroup013
	.equ	mus_message_2_pri, 0
	.equ	mus_message_2_rev, reverb_set+0
	.equ	mus_message_2_mvl, 105
	.equ	mus_message_2_key, 0
	.equ	mus_message_2_tbs, 1
	.equ	mus_message_2_exg, 1
	.equ	mus_message_2_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_message_2)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

mus_message_2_1:
	.byte	KEYSH , mus_message_2_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 100*mus_message_2_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_message_2_mvl/mxv
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
	.byte		        Cn1 
	.byte		N05   , Ds1 , v076
	.byte	W06
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte		N02   
	.byte		N04   , Dn1 , v076
	.byte	W06
	.byte		N05   , Ds1 
	.byte		N84   , Cs2 , v127
	.byte	W54
@ 001   ----------------------------------------
	.byte	W30
	.byte	FINE

@ **************** Track 2 (Midi-Chn.2) ****************

mus_message_2_2:
	.byte	KEYSH , mus_message_2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 34
	.byte		MOD   , 0
	.byte		BENDR , 0
	.byte		VOL   , 127*mus_message_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W06
	.byte		N04   , Cn1 , v127
	.byte		N04   , En1 
	.byte	W06
	.byte		N03   
	.byte		N04   , Gn1 
	.byte	W06
	.byte		N04   
	.byte		N04   , Cn2 
	.byte	W06
	.byte		N06   
	.byte		N06   , En2 
	.byte	W12
	.byte		N03   , Gn1 
	.byte		N04   , Cn2 
	.byte	W06
	.byte		TIE   , Dn2 
	.byte		TIE   , Fn2 
	.byte	W54
@ 001   ----------------------------------------
	.byte	W48
	.byte		VOL   , 127*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        120*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        112*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        103*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        96*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        88*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        80*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        72*mus_message_2_mvl/mxv
	.byte	W06
@ 002   ----------------------------------------
	.byte		        63*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        56*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        48*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        40*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        32*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        23*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        16*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        8*mus_message_2_mvl/mxv
	.byte	W06
	.byte		EOT   , Dn2 
	.byte		        Fn2 
	.byte	FINE

@ **************** Track 3 (Midi-Chn.3) ****************

mus_message_2_3:
	.byte	KEYSH , mus_message_2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 41
	.byte		VOL   , 127*mus_message_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W06
	.byte		N05   , En2 , v120
	.byte	W06
	.byte		        Gn2 , v108
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N12   , En3 , v127
	.byte	W12
	.byte		N05   , Cn3 , v116
	.byte	W06
	.byte		TIE   , Fn3 , v127
	.byte	W54
@ 001   ----------------------------------------
	.byte	W48
	.byte		VOL   , 127*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        120*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        112*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        103*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        96*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        88*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        80*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        72*mus_message_2_mvl/mxv
	.byte	W06
@ 002   ----------------------------------------
	.byte		        63*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        56*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        48*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        40*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        32*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        23*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        16*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        8*mus_message_2_mvl/mxv
	.byte	W06
	.byte		EOT   
	.byte	FINE

@ **************** Track 4 (Midi-Chn.4) ****************

mus_message_2_4:
	.byte	KEYSH , mus_message_2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 105
	.byte		MOD   , 1
	.byte		BENDR , 0
	.byte		VOL   , 127*mus_message_2_mvl/mxv
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
	.byte		N05   , Gn3 , v080
	.byte	W06
	.byte		N54   , As3 , v048
	.byte	W36
	.byte		N02   , Fn6 , v092
	.byte	W03
	.byte		        As5 
	.byte	W03
	.byte		        Dn6 
	.byte	W03
	.byte		        Gn5 , v080
	.byte	W03
	.byte		        As5 , v092
	.byte	W03
	.byte		        Fn5 
	.byte	W03
@ 001   ----------------------------------------
	.byte		        Gn5 , v080
	.byte	W03
	.byte		        Dn5 , v092
	.byte	W03
	.byte		        Fn5 
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        Gn4 , v080
	.byte	W03
	.byte		        As4 , v092
	.byte	W03
	.byte		        Fn4 , v080
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Dn4 , v092
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Gn3 , v080
	.byte	W03
	.byte		        As3 , v092
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		VOL   , 127*mus_message_2_mvl/mxv
	.byte		N02   , Gn3 , v080
	.byte	W03
	.byte		        Dn3 , v092
	.byte	W03
	.byte		VOL   , 120*mus_message_2_mvl/mxv
	.byte		N02   , Fn3 
	.byte	W03
	.byte		        Gn3 , v080
	.byte	W03
	.byte		VOL   , 112*mus_message_2_mvl/mxv
	.byte		N02   , Dn3 , v092
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		VOL   , 103*mus_message_2_mvl/mxv
	.byte		N02   , As2 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		VOL   , 96*mus_message_2_mvl/mxv
	.byte		N02   , Gn2 , v080
	.byte	W03
	.byte		        As2 , v092
	.byte	W03
	.byte		VOL   , 88*mus_message_2_mvl/mxv
	.byte		N02   , Gn2 , v080
	.byte	W03
	.byte		        As2 , v092
	.byte	W03
	.byte		VOL   , 80*mus_message_2_mvl/mxv
	.byte		N02   , Fn2 , v080
	.byte	W03
	.byte		        Gn2 
	.byte	W03
	.byte		VOL   , 72*mus_message_2_mvl/mxv
	.byte		N02   , Dn2 , v092
	.byte	W03
	.byte		        Fn2 
	.byte	W03
@ 002   ----------------------------------------
	.byte		VOL   , 63*mus_message_2_mvl/mxv
	.byte		N02   , As1 
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		VOL   , 56*mus_message_2_mvl/mxv
	.byte		N02   , Gn1 , v080
	.byte	W03
	.byte		        As1 , v092
	.byte	W03
	.byte		VOL   , 48*mus_message_2_mvl/mxv
	.byte		N02   , Fn1 
	.byte	W03
	.byte		        Gn1 , v080
	.byte	W03
	.byte		VOL   , 40*mus_message_2_mvl/mxv
	.byte		N02   , Dn1 , v092
	.byte	W03
	.byte		        Fn1 
	.byte	W03
	.byte		VOL   , 32*mus_message_2_mvl/mxv
	.byte		N02   , Gn1 , v080
	.byte	W03
	.byte		        Dn1 , v092
	.byte	W03
	.byte		VOL   , 23*mus_message_2_mvl/mxv
	.byte		N02   , Fn1 
	.byte	W03
	.byte		        As0 
	.byte	W03
	.byte		VOL   , 16*mus_message_2_mvl/mxv
	.byte		N02   , Dn1 
	.byte	W03
	.byte		        Gn0 , v080
	.byte	W03
	.byte		VOL   , 8*mus_message_2_mvl/mxv
	.byte		N02   , As0 , v092
	.byte	W02
	.byte	FINE

@ **************** Track 5 (Midi-Chn.5) ****************

mus_message_2_5:
	.byte	KEYSH , mus_message_2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 107
	.byte		MOD   , 1
	.byte		BENDR , 0
	.byte		VOL   , 127*mus_message_2_mvl/mxv
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
	.byte		        Cn3 , v096
	.byte	W06
	.byte		TIE   , Gn2 , v116
	.byte	W54
@ 001   ----------------------------------------
	.byte	W48
	.byte		VOL   , 127*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        120*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        112*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        103*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        96*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        88*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        80*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        72*mus_message_2_mvl/mxv
	.byte	W06
@ 002   ----------------------------------------
	.byte		        63*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        56*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        48*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        40*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        32*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        23*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        16*mus_message_2_mvl/mxv
	.byte	W06
	.byte		        8*mus_message_2_mvl/mxv
	.byte	W06
	.byte		EOT   
	.byte	FINE

@ **************** Track 6 (Midi-Chn.6) ****************

mus_message_2_6:
	.byte	KEYSH , mus_message_2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 64
	.byte		MOD   , 1
	.byte		BENDR , 0
	.byte		VOL   , 113*mus_message_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W06
	.byte		N03   , En2 , v120
	.byte	W06
	.byte		        Gn2 , v108
	.byte	W06
	.byte		N02   , Cn3 
	.byte	W06
	.byte		N04   , En3 , v127
	.byte	W12
	.byte		N02   , Cn3 , v116
	.byte	W06
	.byte		N30   , Fn3 , v127
	.byte	W30
	.byte		N02   , Fn6 , v092
	.byte	W03
	.byte		        As5 
	.byte	W03
	.byte		        Dn6 
	.byte	W03
	.byte		        Gn5 , v080
	.byte	W03
	.byte		        As5 , v092
	.byte	W03
	.byte		        Fn5 
	.byte	W03
	.byte		        Gn5 , v080
	.byte	W03
	.byte		        Dn5 , v092
	.byte	W03
@ 001   ----------------------------------------
	.byte		VOL   , 113*mus_message_2_mvl/mxv
	.byte		N02   , Fn5 
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte		VOL   , 106*mus_message_2_mvl/mxv
	.byte		N02   , Dn5 
	.byte	W03
	.byte		        Gn4 , v080
	.byte	W03
	.byte		VOL   , 98*mus_message_2_mvl/mxv
	.byte		N02   , As4 , v092
	.byte	W03
	.byte		        Fn4 , v080
	.byte	W03
	.byte		VOL   , 92*mus_message_2_mvl/mxv
	.byte		N02   , Gn4 
	.byte	W03
	.byte		        Dn4 , v092
	.byte	W03
	.byte		VOL   , 85*mus_message_2_mvl/mxv
	.byte		N02   , Fn4 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		VOL   , 78*mus_message_2_mvl/mxv
	.byte		N02   , Dn4 
	.byte	W03
	.byte		        Gn3 , v080
	.byte	W03
	.byte		VOL   , 71*mus_message_2_mvl/mxv
	.byte		N02   , As3 , v092
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		VOL   , 63*mus_message_2_mvl/mxv
	.byte		N02   , Gn3 , v080
	.byte	W03
	.byte		        Dn3 , v092
	.byte	W03
	.byte		VOL   , 57*mus_message_2_mvl/mxv
	.byte		N02   , Fn3 
	.byte	W03
	.byte		        Gn3 , v080
	.byte	W03
	.byte		VOL   , 50*mus_message_2_mvl/mxv
	.byte		N02   , Dn3 , v092
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		VOL   , 43*mus_message_2_mvl/mxv
	.byte		N02   , As2 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		VOL   , 36*mus_message_2_mvl/mxv
	.byte		N02   , Gn2 , v080
	.byte	W03
	.byte		        As2 , v092
	.byte	W03
	.byte		VOL   , 28*mus_message_2_mvl/mxv
	.byte		N02   , Gn2 , v080
	.byte	W03
	.byte		        As2 , v092
	.byte	W03
	.byte		VOL   , 22*mus_message_2_mvl/mxv
	.byte		N02   , Fn2 , v080
	.byte	W03
	.byte		        Gn2 
	.byte	W03
	.byte		VOL   , 15*mus_message_2_mvl/mxv
	.byte		N02   , Dn2 , v092
	.byte	W03
	.byte		        Fn2 
	.byte	W03
	.byte		VOL   , 8*mus_message_2_mvl/mxv
	.byte		N02   , As1 
	.byte	W03
	.byte		        Dn2 
	.byte	W03
@ 002   ----------------------------------------
	.byte		        Gn1 , v080
	.byte	W03
	.byte		        As1 , v092
	.byte	W03
	.byte		        Fn1 
	.byte	W03
	.byte		        Gn1 , v080
	.byte	W03
	.byte		        Dn1 , v092
	.byte	W03
	.byte		        Fn1 
	.byte	W03
	.byte		        Gn1 , v080
	.byte	W03
	.byte		        Dn1 , v092
	.byte	W03
	.byte		        Fn1 
	.byte	W03
	.byte		        As0 
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte		        Gn0 , v080
	.byte	W03
	.byte		        As0 , v092
	.byte	W02
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(mus_message_2):
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_message_2_pri	@ Priority
	.byte	mus_message_2_rev	@ Reverb

mAlignWord
	mPtr	mus_message_2_grp

	mPtr	mus_message_2_1
	mPtr	mus_message_2_2
	mPtr	mus_message_2_3
	mPtr	mus_message_2_4
	mPtr	mus_message_2_5
	mPtr	mus_message_2_6

	.end
