	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_timer_grp, voicegroup000
	.equ	se_timer_pri, 20
	.equ	se_timer_rev, reverb_set+0
	.equ	se_timer_mvl, 70
	.equ	se_timer_key, 0
	.equ	se_timer_tbs, 1
	.equ	se_timer_exg, 1
	.equ	se_timer_cmp, 1

	mSectionRodata
	.global	C_DECL(se_timer)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_timer_1:
	.byte	KEYSH , se_timer_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_timer_tbs/2
	.byte		VOICE , 64
	.byte		VOL   , 127*se_timer_mvl/mxv
	.byte		LFOS  , 15
	.byte		BENDR , 15
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N03   , As4 , v127
	.byte	W04
	.byte		N32   
	.byte	W32
	.byte	W03
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_timer):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_timer_pri	@ Priority
	.byte	se_timer_rev	@ Reverb

mAlignWord
	mPtr	se_timer_grp

	mPtr	se_timer_1

	.end
