	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_special_ring_grp, voicegroup005
	.equ	se_special_ring_pri, 40
	.equ	se_special_ring_rev, reverb_set+0
	.equ	se_special_ring_mvl, 100
	.equ	se_special_ring_key, 0
	.equ	se_special_ring_tbs, 1
	.equ	se_special_ring_exg, 1
	.equ	se_special_ring_cmp, 1

	mSectionRodata
	.global	C_DECL(se_special_ring)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_special_ring_1:
	.byte	KEYSH , se_special_ring_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_special_ring_tbs/2
	.byte		VOICE , 98
	.byte		VOL   , 127*se_special_ring_mvl/mxv
	.byte		BENDR , 12
	.byte		LFOS  , 103
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 100
	.byte		N60   , Cs7 , v127
	.byte	W60
	.byte	W02
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_special_ring):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_special_ring_pri	@ Priority
	.byte	se_special_ring_rev	@ Reverb

mAlignWord
	mPtr	se_special_ring_grp

	mPtr	se_special_ring_1

	.end
