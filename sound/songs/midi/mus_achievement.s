	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_achievement_grp, voicegroup007
	.equ	mus_achievement_pri, 0
	.equ	mus_achievement_rev, reverb_set+0
	.equ	mus_achievement_mvl, 115
	.equ	mus_achievement_key, 0
	.equ	mus_achievement_tbs, 1
	.equ	mus_achievement_exg, 1
	.equ	mus_achievement_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_achievement)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

mus_achievement_1:
	.byte	KEYSH , mus_achievement_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 130*mus_achievement_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_achievement_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		N06   , Cn1 , v127
	.byte		N18   , En1 , v068
	.byte	W12
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte		        Cn1 
	.byte		N23   , En1 , v068
	.byte	W12
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte		N05   , Gs1 , v100
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte		N18   , En1 , v068
	.byte	W18
	.byte		N03   , An1 , v127
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		N06   , Cn1 
	.byte	W06
	.byte	FINE

@ **************** Track 2 (Midi-Chn.2) ****************

mus_achievement_2:
	.byte	KEYSH , mus_achievement_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 45
	.byte		VOL   , 127*mus_achievement_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 12
	.byte		BEND  , c_v+0
	.byte		N17   , Ds2 , v112
	.byte	W18
	.byte		N23   , Fn2 , v120
	.byte	W24
	.byte		N52   , Gn2 
	.byte	W17
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-63
	.byte	W28
	.byte	FINE

@ **************** Track 3 (Midi-Chn.3) ****************

mus_achievement_3:
	.byte	KEYSH , mus_achievement_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 87
	.byte		VOL   , 91*mus_achievement_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 56
	.byte		LFODL , 0
	.byte		MOD   , 33
	.byte		MODT  , 2
	.byte		N05   , Ds3 , v096
	.byte		N05   , Gn3 
	.byte	W06
	.byte		        As2 , v112
	.byte	W06
	.byte		        Ds3 , v084
	.byte		N05   , Gn3 , v072
	.byte	W06
	.byte		N11   , Fn3 , v108
	.byte		N11   , An3 , v112
	.byte	W12
	.byte		N05   , Cn3 , v100
	.byte	W06
	.byte		        Fn3 , v108
	.byte		N05   , An3 , v104
	.byte	W06
	.byte	FINE

@ **************** Track 4 (Midi-Chn.4) ****************

mus_achievement_4:
	.byte	KEYSH , mus_achievement_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 74
	.byte		VOL   , 127*mus_achievement_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 31
	.byte		LFODL , 22
	.byte		MOD   , 4
	.byte		MODT  , 0
	.byte		N05   , Gn2 , v112
	.byte	W06
	.byte		        As2 , v108
	.byte	W06
	.byte		        Ds3 , v116
	.byte	W06
	.byte		N11   , Cn3 
	.byte	W12
	.byte		N05   , Fn3 , v108
	.byte	W06
	.byte		        An3 , v120
	.byte	W06
	.byte		N28   , Dn3 , v127
	.byte		N28   , Bn3 
	.byte	W28
	.byte	W01
	.byte	FINE

@ **************** Track 5 (Midi-Chn.5) ****************

mus_achievement_5:
	.byte	KEYSH , mus_achievement_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 80
	.byte		VOL   , 127*mus_achievement_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 23
	.byte		LFODL , 22
	.byte		MOD   , 4
	.byte		MODT  , 0
	.byte	W42
	.byte		N28   , Dn3 , v127
	.byte	W28
	.byte	W01
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(mus_achievement):
	.byte	5	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_achievement_pri	@ Priority
	.byte	mus_achievement_rev	@ Reverb

mAlignWord
	mPtr	mus_achievement_grp

	mPtr	mus_achievement_1
	mPtr	mus_achievement_2
	mPtr	mus_achievement_3
	mPtr	mus_achievement_4
	mPtr	mus_achievement_5

	.end
