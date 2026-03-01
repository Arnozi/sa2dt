	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	song0021_grp, voicegroup000
	.equ	song0021_pri, 20
	.equ	song0021_rev, reverb_set+0
	.equ	song0021_mvl, 95
	.equ	song0021_key, 0
	.equ	song0021_tbs, 1
	.equ	song0021_exg, 1
	.equ	song0021_cmp, 1

	mSectionRodata
	.global	C_DECL(song0021)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

song0021_1:
	.byte	KEYSH , song0021_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*song0021_tbs/2
	.byte		VOICE , 2
	.byte		VOL   , 127*song0021_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		N04   , En5 , v096
	.byte	W04
	.byte		        Gs5 , v112
	.byte	W04
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(song0021):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song0021_pri	@ Priority
	.byte	song0021_rev	@ Reverb

mAlignWord
	mPtr	song0021_grp

	mPtr	song0021_1

	.end
