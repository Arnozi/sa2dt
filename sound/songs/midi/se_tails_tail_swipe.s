	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_tails_tail_swipe_grp, voicegroup003
	.equ	se_tails_tail_swipe_pri, 20
	.equ	se_tails_tail_swipe_rev, reverb_set+0
	.equ	se_tails_tail_swipe_mvl, 107
	.equ	se_tails_tail_swipe_key, 0
	.equ	se_tails_tail_swipe_tbs, 1
	.equ	se_tails_tail_swipe_exg, 1
	.equ	se_tails_tail_swipe_cmp, 1

	mSectionRodata
	.global	C_DECL(se_tails_tail_swipe)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_tails_tail_swipe_1:
	.byte	KEYSH , se_tails_tail_swipe_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_tails_tail_swipe_tbs/2
	.byte		VOICE , 34
	.byte		VOL   , 127*se_tails_tail_swipe_mvl/mxv
	.byte		LFOS  , 2
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N05   , Dn4 , v092
	.byte	W06
	.byte		N04   , Fs3 
	.byte	W04
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_tails_tail_swipe):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_tails_tail_swipe_pri	@ Priority
	.byte	se_tails_tail_swipe_rev	@ Reverb

mAlignWord
	mPtr	se_tails_tail_swipe_grp

	mPtr	se_tails_tail_swipe_1

	.end
