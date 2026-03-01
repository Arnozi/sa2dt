	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	song0027_grp, voicegroup000
	.equ	song0027_pri, 20
	.equ	song0027_rev, reverb_set+0
	.equ	song0027_mvl, 95
	.equ	song0027_key, 0
	.equ	song0027_tbs, 1
	.equ	song0027_exg, 1
	.equ	song0027_cmp, 1

	mSectionRodata
	.global	C_DECL(song0027)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

song0027_1:
	.byte	KEYSH , song0027_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*song0027_tbs/2
	.byte		VOICE , 60
	.byte		VOL   , 127*song0027_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		N04   , Fs5 , v116
	.byte	W04
	.byte		        An5 , v108
	.byte	W04
	.byte		N24   , Dn6 
	.byte	W24
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(song0027):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song0027_pri	@ Priority
	.byte	song0027_rev	@ Reverb

mAlignWord
	mPtr	song0027_grp

	mPtr	song0027_1

	.end
