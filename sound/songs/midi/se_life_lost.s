	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_life_lost_grp, voicegroup000
	.equ	se_life_lost_pri, 40
	.equ	se_life_lost_rev, reverb_set+0
	.equ	se_life_lost_mvl, 127
	.equ	se_life_lost_key, 0
	.equ	se_life_lost_tbs, 1
	.equ	se_life_lost_exg, 1
	.equ	se_life_lost_cmp, 1

	mSectionRodata
	.global	C_DECL(se_life_lost)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_life_lost_1:
	.byte	KEYSH , se_life_lost_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_life_lost_tbs/2
	.byte		VOICE , 52
	.byte		VOL   , 127*se_life_lost_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 15
	.byte		N06   , Cs1 , v127
	.byte	W07
	.byte		N32   , Cn1 , v112
	.byte	W32
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_life_lost):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_life_lost_pri	@ Priority
	.byte	se_life_lost_rev	@ Reverb

mAlignWord
	mPtr	se_life_lost_grp

	mPtr	se_life_lost_1

	.end
