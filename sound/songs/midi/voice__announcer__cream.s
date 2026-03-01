	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	voice__announcer__cream_grp, voicegroup005
	.equ	voice__announcer__cream_pri, 20
	.equ	voice__announcer__cream_rev, reverb_set+0
	.equ	voice__announcer__cream_mvl, 127
	.equ	voice__announcer__cream_key, 0
	.equ	voice__announcer__cream_tbs, 1
	.equ	voice__announcer__cream_exg, 1
	.equ	voice__announcer__cream_cmp, 1

	mSectionRodata
	.global	C_DECL(voice__announcer__cream)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

voice__announcer__cream_1:
	.byte	KEYSH , voice__announcer__cream_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 74*voice__announcer__cream_tbs/2
	.byte		VOICE , 6
	.byte		VOL   , 127*voice__announcer__cream_mvl/mxv
	.byte		N84   , Cn3 , v127
	.byte	W84
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(voice__announcer__cream):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	voice__announcer__cream_pri	@ Priority
	.byte	voice__announcer__cream_rev	@ Reverb

mAlignWord
	mPtr	voice__announcer__cream_grp

	mPtr	voice__announcer__cream_1

	.end
