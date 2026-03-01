	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_return_grp, voicegroup000
	.equ	se_return_pri, 20
	.equ	se_return_rev, reverb_set+0
	.equ	se_return_mvl, 90
	.equ	se_return_key, 0
	.equ	se_return_tbs, 1
	.equ	se_return_exg, 1
	.equ	se_return_cmp, 1

	mSectionRodata
	.global	C_DECL(se_return)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_return_1:
	.byte	KEYSH , se_return_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_return_tbs/2
	.byte		VOICE , 3
	.byte		VOL   , 127*se_return_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 15
	.byte		N04   , En4 , v096
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Fs3 , v100
	.byte	W04
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_return):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_return_pri	@ Priority
	.byte	se_return_rev	@ Reverb

mAlignWord
	mPtr	se_return_grp

	mPtr	se_return_1

	.end
