	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	song0028_grp, voicegroup000
	.equ	song0028_pri, 20
	.equ	song0028_rev, reverb_set+0
	.equ	song0028_mvl, 105
	.equ	song0028_key, 0
	.equ	song0028_tbs, 1
	.equ	song0028_exg, 1
	.equ	song0028_cmp, 1

	mSectionRodata
	.global	C_DECL(song0028)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

song0028_1:
	.byte	KEYSH , song0028_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*song0028_tbs/2
	.byte		VOICE , 1
	.byte		VOL   , 127*song0028_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		N04   , Gs2 , v116
	.byte	W04
	.byte		N24   , Dn2 , v108
	.byte	W24
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(song0028):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song0028_pri	@ Priority
	.byte	song0028_rev	@ Reverb

mAlignWord
	mPtr	song0028_grp

	mPtr	song0028_1

	.end
