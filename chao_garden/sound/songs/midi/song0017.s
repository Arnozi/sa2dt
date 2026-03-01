	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	song0017_grp, voicegroup000
	.equ	song0017_pri, 20
	.equ	song0017_rev, reverb_set+0
	.equ	song0017_mvl, 68
	.equ	song0017_key, 0
	.equ	song0017_tbs, 1
	.equ	song0017_exg, 1
	.equ	song0017_cmp, 1

	mSectionRodata
	.global	C_DECL(song0017)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

song0017_1:
	.byte	KEYSH , song0017_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*song0017_tbs/2
	.byte		VOICE , 62
	.byte		VOL   , 127*song0017_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 6
	.byte		N04   , Fn4 , v120
	.byte	W08
	.byte		        Cn5 
	.byte	W04
	.byte		        Fs5 
	.byte	W04
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(song0017):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song0017_pri	@ Priority
	.byte	song0017_rev	@ Reverb

mAlignWord
	mPtr	song0017_grp

	mPtr	song0017_1

	.end
