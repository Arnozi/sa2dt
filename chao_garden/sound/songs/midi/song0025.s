	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	song0025_grp, voicegroup000
	.equ	song0025_pri, 20
	.equ	song0025_rev, reverb_set+0
	.equ	song0025_mvl, 95
	.equ	song0025_key, 0
	.equ	song0025_tbs, 1
	.equ	song0025_exg, 1
	.equ	song0025_cmp, 1

	mSectionRodata
	.global	C_DECL(song0025)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

song0025_1:
	.byte	KEYSH , song0025_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*song0025_tbs/2
	.byte		VOICE , 60
	.byte		VOL   , 127*song0025_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		N02   , Fn5 , v127
	.byte	W02
	.byte		        Bn4 , v120
	.byte	W02
	.byte		        Gs4 , v116
	.byte	W02
	.byte		        Dn5 , v108
	.byte	W02
	.byte		        Fn4 , v100
	.byte	W02
	.byte		        Dn4 , v092
	.byte	W02
	.byte		        Bn4 , v088
	.byte	W02
	.byte		        Fn4 , v080
	.byte	W02
	.byte		        Bn3 , v072
	.byte	W02
	.byte		        Gs4 , v064
	.byte	W02
	.byte		        Dn4 , v060
	.byte	W02
	.byte		        Gs3 , v052
	.byte	W02
	.byte		        Fn4 , v044
	.byte	W02
	.byte		        Fn3 , v036
	.byte	W02
	.byte		        Gs3 , v032
	.byte	W02
	.byte		        Dn3 , v024
	.byte	W02
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(song0025):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song0025_pri	@ Priority
	.byte	song0025_rev	@ Reverb

mAlignWord
	mPtr	song0025_grp

	mPtr	song0025_1

	.end
