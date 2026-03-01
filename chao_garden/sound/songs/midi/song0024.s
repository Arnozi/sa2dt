	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	song0024_grp, voicegroup000
	.equ	song0024_pri, 20
	.equ	song0024_rev, reverb_set+0
	.equ	song0024_mvl, 95
	.equ	song0024_key, 0
	.equ	song0024_tbs, 1
	.equ	song0024_exg, 1
	.equ	song0024_cmp, 1

	mSectionRodata
	.global	C_DECL(song0024)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

song0024_1:
	.byte	KEYSH , song0024_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*song0024_tbs/2
	.byte		VOICE , 60
	.byte		VOL   , 127*song0024_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		N02   , Cn4 , v100
	.byte	W02
	.byte		        Dn4 , v096
	.byte	W02
	.byte		        En4 , v108
	.byte	W02
	.byte		        Gn4 , v116
	.byte	W02
	.byte		        Cn5 , v096
	.byte	W02
	.byte		        En4 , v104
	.byte	W02
	.byte		        Gn4 , v112
	.byte	W02
	.byte		        An4 , v100
	.byte	W02
	.byte		        Cn5 , v096
	.byte	W02
	.byte		        En5 , v088
	.byte	W02
	.byte		        Gn5 , v104
	.byte	W02
	.byte		        Cn5 
	.byte	W02
	.byte		        En5 , v096
	.byte	W02
	.byte		        Gn5 
	.byte	W02
	.byte		N16   , Cn6 , v112
	.byte	W16
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(song0024):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song0024_pri	@ Priority
	.byte	song0024_rev	@ Reverb

mAlignWord
	mPtr	song0024_grp

	mPtr	song0024_1

	.end
