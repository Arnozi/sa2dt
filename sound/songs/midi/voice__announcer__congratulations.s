	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	voice__announcer__congratulations_grp, voicegroup005
	.equ	voice__announcer__congratulations_pri, 20
	.equ	voice__announcer__congratulations_rev, reverb_set+0
	.equ	voice__announcer__congratulations_mvl, 127
	.equ	voice__announcer__congratulations_key, 0
	.equ	voice__announcer__congratulations_tbs, 1
	.equ	voice__announcer__congratulations_exg, 1
	.equ	voice__announcer__congratulations_cmp, 1

	mSectionRodata
	.global	C_DECL(voice__announcer__congratulations)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

voice__announcer__congratulations_1:
	.byte	KEYSH , voice__announcer__congratulations_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 74*voice__announcer__congratulations_tbs/2
	.byte		VOICE , 12
	.byte		VOL   , 127*voice__announcer__congratulations_mvl/mxv
	.byte		N84   , Cn3 , v127
	.byte	W84
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(voice__announcer__congratulations):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	voice__announcer__congratulations_pri	@ Priority
	.byte	voice__announcer__congratulations_rev	@ Reverb

mAlignWord
	mPtr	voice__announcer__congratulations_grp

	mPtr	voice__announcer__congratulations_1

	.end
