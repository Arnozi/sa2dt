	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_spin_grp, voicegroup003
	.equ	se_spin_pri, 20
	.equ	se_spin_rev, reverb_set+0
	.equ	se_spin_mvl, 100
	.equ	se_spin_key, 0
	.equ	se_spin_tbs, 1
	.equ	se_spin_exg, 1
	.equ	se_spin_cmp, 1

	mSectionRodata
	.global	C_DECL(se_spin)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_spin_1:
	.byte	KEYSH , se_spin_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_spin_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*se_spin_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 6
	.byte		TIE   , Cn3 , v127
	.byte	W96
@ 001   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_spin):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_spin_pri	@ Priority
	.byte	se_spin_rev	@ Reverb

mAlignWord
	mPtr	se_spin_grp

	mPtr	se_spin_1

	.end
