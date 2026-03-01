	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_ice_paradise_slide_grp, voicegroup005
	.equ	se_ice_paradise_slide_pri, 20
	.equ	se_ice_paradise_slide_rev, reverb_set+0
	.equ	se_ice_paradise_slide_mvl, 90
	.equ	se_ice_paradise_slide_key, 0
	.equ	se_ice_paradise_slide_tbs, 1
	.equ	se_ice_paradise_slide_exg, 1
	.equ	se_ice_paradise_slide_cmp, 1

	mSectionRodata
	.global	C_DECL(se_ice_paradise_slide)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_ice_paradise_slide_1:
	.byte	KEYSH , se_ice_paradise_slide_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 132*se_ice_paradise_slide_tbs/2
	.byte		VOICE , 92
	.byte		MOD   , 43
	.byte		VOL   , 127*se_ice_paradise_slide_mvl/mxv
	.byte		BENDR , 15
	.byte		PAN   , c_v+0
	.byte		N01   , Cn7 , v104
	.byte	W01
	.byte		        Gs6 , v108
	.byte	W01
	.byte		        Cn7 , v112
	.byte	W01
	.byte		BEND  , c_v+16
	.byte		N01   , Gs6 , v108
	.byte	W01
	.byte		        Cn7 
	.byte	W01
	.byte		        Gs6 
	.byte	W01
	.byte		BEND  , c_v+15
	.byte		N01   , Cn7 , v104
	.byte	W01
	.byte		        Gs6 , v108
	.byte	W01
	.byte		        Cn7 , v112
	.byte	W01
	.byte		BEND  , c_v+14
	.byte		N01   , Gs6 , v108
	.byte	W01
	.byte		        Cn7 
	.byte	W01
	.byte		        Gs6 
	.byte	W01
	.byte		BEND  , c_v+13
	.byte		N01   , Cn7 , v104
	.byte	W01
	.byte		        Gs6 , v108
	.byte	W01
	.byte		        Cn7 , v112
	.byte	W01
	.byte		BEND  , c_v+12
	.byte		N01   , Gs6 , v108
	.byte	W01
	.byte		        Cn7 , v104
	.byte	W01
	.byte		        Gs6 , v108
	.byte	W01
	.byte		BEND  , c_v+10
	.byte		N01   , Cn7 , v112
	.byte	W01
	.byte		        Gs6 , v108
	.byte	W01
	.byte		        Cn7 
	.byte	W01
	.byte		BEND  , c_v+9
	.byte		N01   , Gs6 
	.byte	W01
	.byte		        Cn7 , v104
	.byte	W01
	.byte		        Gs6 , v108
	.byte	W01
	.byte		BEND  , c_v+8
	.byte		N01   , Cn7 , v112
	.byte	W01
	.byte		        Gs6 , v108
	.byte	W01
	.byte		        Cn7 
	.byte	W01
	.byte		BEND  , c_v+7
	.byte		N01   , Gs6 
	.byte	W01
	.byte		        Cn7 , v104
	.byte	W01
	.byte		        Gs6 , v108
	.byte	W01
	.byte		BEND  , c_v+6
	.byte		N01   , Cn7 , v112
	.byte	W01
	.byte		        Gs6 , v108
	.byte	W01
	.byte		        Cn7 , v104
	.byte	W01
	.byte		BEND  , c_v+5
	.byte		N01   , Gs6 , v108
	.byte	W01
	.byte		        Cn7 , v112
	.byte	W01
	.byte		        Gs6 , v108
	.byte	W01
	.byte		BEND  , c_v+3
	.byte		N01   , Cn7 
	.byte	W01
	.byte		        Gs6 
	.byte	W01
	.byte		        Cn7 , v104
	.byte	W01
	.byte		BEND  , c_v+2
	.byte		N01   , Gs6 , v108
	.byte	W01
	.byte		        Cn7 , v112
	.byte	W01
	.byte		        Gs6 , v108
	.byte	W01
	.byte		BEND  , c_v+1
	.byte		N01   , Cn7 
	.byte	W01
	.byte		        Gs6 
	.byte	W01
	.byte		        Cn7 , v104
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N01   , Gs6 , v108
	.byte	W01
	.byte		        Cn7 , v112
	.byte	W01
	.byte		        Gs6 , v108
	.byte	W01
	.byte		BEND  , c_v-1
	.byte		N01   , Cn7 , v104
	.byte	W01
	.byte		        Gs6 , v108
	.byte	W01
	.byte		        Cn7 , v112
	.byte	W01
	.byte		BEND  , c_v-2
	.byte		N01   , Gs6 , v108
	.byte	W01
	.byte		        Cn7 
	.byte	W01
	.byte		        Gs6 
	.byte	W01
	.byte		BEND  , c_v-4
	.byte		N01   , Cn7 , v104
	.byte	W01
	.byte		        Gs6 , v108
	.byte	W01
	.byte		        Cn7 , v112
	.byte	W01
	.byte		BEND  , c_v-5
	.byte		N01   , Gs6 , v108
	.byte	W01
	.byte		        Cn7 
	.byte	W01
	.byte		        Gs6 
	.byte	W01
	.byte		BEND  , c_v-6
	.byte		N01   , Cn7 , v104
	.byte	W01
	.byte		        Gs6 , v108
	.byte	W01
	.byte		        Cn7 , v112
	.byte	W01
	.byte		BEND  , c_v-7
	.byte		N01   , Gs6 , v108
	.byte	W03
	.byte		BEND  , c_v-8
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_ice_paradise_slide):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_ice_paradise_slide_pri	@ Priority
	.byte	se_ice_paradise_slide_rev	@ Reverb

mAlignWord
	mPtr	se_ice_paradise_slide_grp

	mPtr	se_ice_paradise_slide_1

	.end
