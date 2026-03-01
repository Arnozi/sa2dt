	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_chaos_emerald_grp, voicegroup009
	.equ	mus_chaos_emerald_pri, 0
	.equ	mus_chaos_emerald_rev, reverb_set+0
	.equ	mus_chaos_emerald_mvl, 85
	.equ	mus_chaos_emerald_key, 0
	.equ	mus_chaos_emerald_tbs, 1
	.equ	mus_chaos_emerald_exg, 1
	.equ	mus_chaos_emerald_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_chaos_emerald)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

mus_chaos_emerald_1:
	.byte	KEYSH , mus_chaos_emerald_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 114*mus_chaos_emerald_tbs/2
	.byte		VOICE , 77
	.byte		MOD   , 1
	.byte		BENDR , 0
	.byte		VOL   , 127*mus_chaos_emerald_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N04   , En4 , v116
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		N12   , En5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N52   , Gn5 
	.byte	W54
@ 001   ----------------------------------------
	.byte	FINE

@ **************** Track 2 (Midi-Chn.2) ****************

mus_chaos_emerald_2:
	.byte	KEYSH , mus_chaos_emerald_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 34
	.byte		MOD   , 0
	.byte		BENDR , 0
	.byte		VOL   , 127*mus_chaos_emerald_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N04   , En3 , v080
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N12   , En4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N52   , Gn4 
	.byte	W54
@ 001   ----------------------------------------
	.byte	FINE

@ **************** Track 3 (Midi-Chn.3) ****************

mus_chaos_emerald_3:
	.byte	KEYSH , mus_chaos_emerald_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 35
	.byte		MOD   , 1
	.byte		BENDR , 0
	.byte		VOL   , 127*mus_chaos_emerald_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N05   , Cn3 , v116
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N11   , Cn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N52   , Dn4 
	.byte	W54
@ 001   ----------------------------------------
	.byte	FINE

@ **************** Track 4 (Midi-Chn.4) ****************

mus_chaos_emerald_4:
	.byte	KEYSH , mus_chaos_emerald_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
	.byte		MOD   , 1
	.byte		BENDR , 0
	.byte		VOL   , 127*mus_chaos_emerald_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N05   , En3 , v116
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   , Gn3 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N52   , Cn4 
	.byte	W54
@ 001   ----------------------------------------
	.byte	FINE

@ **************** Track 5 (Midi-Chn.5) ****************

mus_chaos_emerald_5:
	.byte	KEYSH , mus_chaos_emerald_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 61
	.byte		MOD   , 1
	.byte		BENDR , 0
	.byte		VOL   , 127*mus_chaos_emerald_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N05   , Cn3 , v116
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   , En3 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N52   , Gn3 
	.byte	W54
@ 001   ----------------------------------------
	.byte	FINE

@ **************** Track 6 (Midi-Chn.6) ****************

mus_chaos_emerald_6:
	.byte	KEYSH , mus_chaos_emerald_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 62
	.byte		MOD   , 1
	.byte		BENDR , 0
	.byte		VOL   , 127*mus_chaos_emerald_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N05   , Gn2 , v116
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N52   , En3 
	.byte	W54
@ 001   ----------------------------------------
	.byte	FINE

@ **************** Track 7 (Midi-Chn.7) ****************

mus_chaos_emerald_7:
	.byte	KEYSH , mus_chaos_emerald_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 63
	.byte		MOD   , 1
	.byte		BENDR , 0
	.byte		VOL   , 113*mus_chaos_emerald_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W42
	.byte		N05   , Gn4 , v108
	.byte	W06
	.byte		        Fn4 , v104
	.byte	W06
	.byte		        En4 , v100
	.byte	W06
	.byte		        Dn4 , v096
	.byte	W06
	.byte		        Gn4 , v092
	.byte	W06
	.byte		        Fn4 , v084
	.byte	W06
	.byte		        En4 , v080
	.byte	W06
	.byte		        Dn4 , v076
	.byte	W06
	.byte		        Gn4 , v072
	.byte	W06
@ 001   ----------------------------------------
	.byte		        Fn4 , v068
	.byte	W06
	.byte		        En4 , v060
	.byte	W06
	.byte		        Dn4 , v056
	.byte	W06
	.byte		        Gn4 , v052
	.byte	W06
	.byte		        Fn4 , v048
	.byte	W06
	.byte		        En4 , v040
	.byte	W06
	.byte		        Dn4 , v036
	.byte	W06
	.byte		        Gn4 , v032
	.byte	W06
	.byte		        Fn4 , v028
	.byte	W06
	.byte		        En4 , v024
	.byte	W06
	.byte		        Dn4 , v016
	.byte	W05
	.byte	FINE

@ **************** Track 8 (Midi-Chn.8) ****************

mus_chaos_emerald_8:
	.byte	KEYSH , mus_chaos_emerald_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 64
	.byte		MOD   , 1
	.byte		BENDR , 0
	.byte		VOL   , 111*mus_chaos_emerald_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W44
	.byte		N05   , Gn4 , v108
	.byte	W06
	.byte		        Fn4 , v104
	.byte	W06
	.byte		        En4 , v100
	.byte	W06
	.byte		        Dn4 , v096
	.byte	W06
	.byte		        Gn4 , v088
	.byte	W06
	.byte		        Fn4 , v084
	.byte	W06
	.byte		        En4 , v080
	.byte	W06
	.byte		        Dn4 , v076
	.byte	W06
	.byte		        Gn4 , v072
	.byte	W04
@ 001   ----------------------------------------
	.byte	W02
	.byte		        Fn4 , v064
	.byte	W06
	.byte		        En4 , v060
	.byte	W06
	.byte		        Dn4 , v056
	.byte	W06
	.byte		        Gn4 , v052
	.byte	W06
	.byte		        Fn4 , v048
	.byte	W06
	.byte		        En4 , v044
	.byte	W06
	.byte		        Dn4 , v036
	.byte	W06
	.byte		        Gn4 , v032
	.byte	W06
	.byte		        Fn4 , v028
	.byte	W06
	.byte		        En4 , v024
	.byte	W06
	.byte		        Dn4 , v020
	.byte	W05
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(mus_chaos_emerald):
	.byte	8	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_chaos_emerald_pri	@ Priority
	.byte	mus_chaos_emerald_rev	@ Reverb

mAlignWord
	mPtr	mus_chaos_emerald_grp

	mPtr	mus_chaos_emerald_1
	mPtr	mus_chaos_emerald_2
	mPtr	mus_chaos_emerald_3
	mPtr	mus_chaos_emerald_4
	mPtr	mus_chaos_emerald_5
	mPtr	mus_chaos_emerald_6
	mPtr	mus_chaos_emerald_7
	mPtr	mus_chaos_emerald_8

	.end
