	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_toy_trumpet_grp, voicegroup000
	.equ	se_toy_trumpet_pri, 20
	.equ	se_toy_trumpet_rev, reverb_set+0
	.equ	se_toy_trumpet_mvl, 105
	.equ	se_toy_trumpet_key, 0
	.equ	se_toy_trumpet_tbs, 1
	.equ	se_toy_trumpet_exg, 1
	.equ	se_toy_trumpet_cmp, 1

	mSectionRodata
	.global	C_DECL(se_toy_trumpet)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_toy_trumpet_1:
	.byte	KEYSH , se_toy_trumpet_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_toy_trumpet_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 95*se_toy_trumpet_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 33
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		VOL   , 127*se_toy_trumpet_mvl/mxv
	.byte		N08   , En4 , v112
	.byte	W16
	.byte		        Fs4 , v124
	.byte	W12
	.byte		N16   , Fs4 , v116
	.byte	W04
	.byte		MOD   , 2
	.byte	W24
	.byte		N40   , Gs4 , v112
	.byte	W40
@ 001   ----------------------------------------
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_toy_trumpet):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_toy_trumpet_pri	@ Priority
	.byte	se_toy_trumpet_rev	@ Reverb

mAlignWord
	mPtr	se_toy_trumpet_grp

	mPtr	se_toy_trumpet_1

	.end
