	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_boss_clear_grp, voicegroup008
	.equ	mus_boss_clear_pri, 0
	.equ	mus_boss_clear_rev, reverb_set+0
	.equ	mus_boss_clear_mvl, 107
	.equ	mus_boss_clear_key, 0
	.equ	mus_boss_clear_tbs, 1
	.equ	mus_boss_clear_exg, 1
	.equ	mus_boss_clear_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_boss_clear)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

mus_boss_clear_1:
	.byte	KEYSH , mus_boss_clear_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 130*mus_boss_clear_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 113*mus_boss_clear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 127
	.byte	W24
	.byte		N06   , Cn1 , v127
	.byte		N78   , Cs2 , v088
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W12
	.byte		N18   , Cs1 
	.byte	W18
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N18   , Cs1 
	.byte	W18
@ 001   ----------------------------------------
	.byte		N06   , Gs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N05   , Cn1 
	.byte	W06
	.byte		        Cs1 
	.byte		N11   , Cs2 , v088
	.byte	W12
	.byte		        Cs1 , v127
	.byte		N54   , Cs2 , v088
	.byte	W42
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
@ 002   ----------------------------------------
	.byte		N23   , Fs1 
	.byte		N84   , Cs2 , v088
	.byte	W84
	.byte	FINE

@ **************** Track 2 (Midi-Chn.2) ****************

mus_boss_clear_2:
	.byte	KEYSH , mus_boss_clear_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 15
	.byte		MOD   , 2
	.byte		VOL   , 47*mus_boss_clear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 32
	.byte	W24
	.byte		N06   , En4 , v076
	.byte	W06
	.byte		        En4 , v096
	.byte	W12
	.byte		N18   , En4 , v120
	.byte	W18
	.byte		N06   , Dn4 , v092
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N18   , Dn4 , v100
	.byte	W18
@ 001   ----------------------------------------
	.byte		N06   , Gs3 , v088
	.byte	W06
	.byte		        As3 , v108
	.byte	W06
	.byte		        Cn4 , v100
	.byte	W06
	.byte		        Dn4 , v092
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N54   , En4 , v100
	.byte	W54
@ 002   ----------------------------------------
	.byte	FINE

@ **************** Track 3 (Midi-Chn.3) ****************

mus_boss_clear_3:
	.byte	KEYSH , mus_boss_clear_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 16
	.byte		VOL   , 127*mus_boss_clear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 0
	.byte	W12
	.byte		N02   , Cn2 , v112
	.byte	W03
	.byte		N01   , Ds2 
	.byte	W02
	.byte		        Fs2 
	.byte	W02
	.byte		        An2 
	.byte	W02
	.byte		N02   , Cs3 
	.byte	W03
	.byte		N06   , Gn3 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N14   
	.byte	W14
	.byte		N02   , Ds3 
	.byte	W01
	.byte		        Dn3 
	.byte	W01
	.byte		        Cn3 
	.byte	W02
@ 001   ----------------------------------------
	.byte		        Gn2 
	.byte	W01
	.byte		        Fs2 
	.byte	W02
	.byte		        Fn2 
	.byte	W03
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fn3 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N54   , Gn3 
	.byte	W54
@ 002   ----------------------------------------
	.byte	FINE

@ **************** Track 4 (Midi-Chn.4) ****************

mus_boss_clear_4:
	.byte	KEYSH , mus_boss_clear_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 17
	.byte		VOL   , 71*mus_boss_clear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 0
	.byte	W24
	.byte		N06   , Cn3 , v112
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N18   , Cn4 
	.byte	W18
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N18   , Cn4 
	.byte	W18
@ 001   ----------------------------------------
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Gs3 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N54   , Cn3 
	.byte	W54
@ 002   ----------------------------------------
	.byte	FINE

@ **************** Track 5 (Midi-Chn.5) ****************

mus_boss_clear_5:
	.byte	KEYSH , mus_boss_clear_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 17
	.byte		VOL   , 71*mus_boss_clear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 0
	.byte	W24
	.byte		N06   , Cn3 , v112
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N18   , Cn4 
	.byte	W18
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N18   , Cn4 
	.byte	W18
@ 001   ----------------------------------------
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Gs3 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N54   , Cn3 
	.byte	W54
@ 002   ----------------------------------------
	.byte	FINE

@ **************** Track 6 (Midi-Chn.6) ****************

mus_boss_clear_6:
	.byte	KEYSH , mus_boss_clear_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 11
	.byte		MOD   , 2
	.byte		VOL   , 85*mus_boss_clear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 32
	.byte	W24
	.byte		N06   , En4 , v076
	.byte	W06
	.byte		        En4 , v096
	.byte	W12
	.byte		N18   , En4 , v120
	.byte	W18
	.byte		N06   , Dn4 , v092
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N18   , Dn4 , v100
	.byte	W18
@ 001   ----------------------------------------
	.byte		N06   , Gs3 , v088
	.byte	W06
	.byte		        As3 , v108
	.byte	W06
	.byte		        Cn4 , v100
	.byte	W06
	.byte		        Dn4 , v092
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N54   , En4 , v100
	.byte	W54
@ 002   ----------------------------------------
	.byte	FINE

@ **************** Track 7 (Midi-Chn.7) ****************

mus_boss_clear_7:
	.byte	KEYSH , mus_boss_clear_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 11
	.byte		MOD   , 2
	.byte		VOL   , 85*mus_boss_clear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 32
	.byte	W24
	.byte		N03   , Cn3 , v127
	.byte	W06
	.byte		N05   , Cn3 , v108
	.byte	W12
	.byte		N18   , Cn3 , v127
	.byte	W18
	.byte		N02   , As2 , v116
	.byte	W06
	.byte		N04   , As2 , v108
	.byte	W12
	.byte		N15   , As2 , v127
	.byte	W14
	.byte		N03   , An2 , v108
	.byte	W02
	.byte		        Gn2 , v072
	.byte	W02
@ 001   ----------------------------------------
	.byte		N04   , Fn2 , v108
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N52   , En3 
	.byte	W52
	.byte	FINE

@ **************** Track 8 (Midi-Chn.8) ****************

mus_boss_clear_8:
	.byte	KEYSH , mus_boss_clear_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 21
	.byte		MOD   , 2
	.byte		VOL   , 50*mus_boss_clear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 32
	.byte	W24
	.byte		N03   , Cn4 , v127
	.byte	W06
	.byte		N05   , Cn4 , v108
	.byte	W12
	.byte		N18   , Cn4 , v127
	.byte	W18
	.byte		N02   , As3 , v116
	.byte	W06
	.byte		N04   , As3 , v108
	.byte	W12
	.byte		N15   , As3 , v127
	.byte	W14
	.byte		N03   , An3 , v108
	.byte	W02
	.byte		        Gn3 , v072
	.byte	W02
@ 001   ----------------------------------------
	.byte		N04   , Fn3 , v108
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        As3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N52   , En4 
	.byte	W52
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(mus_boss_clear):
	.byte	8	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_boss_clear_pri	@ Priority
	.byte	mus_boss_clear_rev	@ Reverb

mAlignWord
	mPtr	mus_boss_clear_grp

	mPtr	mus_boss_clear_1
	mPtr	mus_boss_clear_2
	mPtr	mus_boss_clear_3
	mPtr	mus_boss_clear_4
	mPtr	mus_boss_clear_5
	mPtr	mus_boss_clear_6
	mPtr	mus_boss_clear_7
	mPtr	mus_boss_clear_8

	.end
