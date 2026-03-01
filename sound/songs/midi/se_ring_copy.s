	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_ring_copy_grp, voicegroup003
	.equ	se_ring_copy_pri, 20
	.equ	se_ring_copy_rev, reverb_set+0
	.equ	se_ring_copy_mvl, 100
	.equ	se_ring_copy_key, 0
	.equ	se_ring_copy_tbs, 1
	.equ	se_ring_copy_exg, 1
	.equ	se_ring_copy_cmp, 1

	mSectionRodata
	.global	C_DECL(se_ring_copy)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_ring_copy_1:
	.byte	KEYSH , se_ring_copy_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_ring_copy_tbs/2
	.byte		VOICE , 2
	.byte		VOL   , 127*se_ring_copy_mvl/mxv
	.byte		N48   , Cn3 , v127
	.byte	W48
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_ring_copy):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_ring_copy_pri	@ Priority
	.byte	se_ring_copy_rev	@ Reverb

mAlignWord
	mPtr	se_ring_copy_grp

	mPtr	se_ring_copy_1

	.end
