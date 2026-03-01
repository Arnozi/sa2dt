	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_cream_cheese_attack_grp, voicegroup005
	.equ	se_cream_cheese_attack_pri, 20
	.equ	se_cream_cheese_attack_rev, reverb_set+0
	.equ	se_cream_cheese_attack_mvl, 100
	.equ	se_cream_cheese_attack_key, 0
	.equ	se_cream_cheese_attack_tbs, 1
	.equ	se_cream_cheese_attack_exg, 1
	.equ	se_cream_cheese_attack_cmp, 1

	mSectionRodata
	.global	C_DECL(se_cream_cheese_attack)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_cream_cheese_attack_1:
	.byte	KEYSH , se_cream_cheese_attack_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 74*se_cream_cheese_attack_tbs/2
	.byte		VOICE , 29
	.byte		VOL   , 127*se_cream_cheese_attack_mvl/mxv
	.byte		N84   , Cn3 , v127
	.byte	W84
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_cream_cheese_attack):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_cream_cheese_attack_pri	@ Priority
	.byte	se_cream_cheese_attack_rev	@ Reverb

mAlignWord
	mPtr	se_cream_cheese_attack_grp

	mPtr	se_cream_cheese_attack_1

	.end
