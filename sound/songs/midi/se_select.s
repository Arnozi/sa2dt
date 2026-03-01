	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_select_grp, voicegroup000
	.equ	se_select_pri, 20
	.equ	se_select_rev, reverb_set+0
	.equ	se_select_mvl, 90
	.equ	se_select_key, 0
	.equ	se_select_tbs, 1
	.equ	se_select_exg, 1
	.equ	se_select_cmp, 1

	mSectionRodata
	.global	C_DECL(se_select)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_select_1:
	.byte	KEYSH , se_select_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_select_tbs/2
	.byte		VOICE , 3
	.byte		VOL   , 127*se_select_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 15
	.byte		N04   , Fs4 , v127
	.byte	W04
	.byte		        Bn4 , v120
	.byte	W04
	.byte		        En5 , v112
	.byte	W04
	.byte		        An5 , v104
	.byte	W04
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_select):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_select_pri	@ Priority
	.byte	se_select_rev	@ Reverb

mAlignWord
	mPtr	se_select_grp

	mPtr	se_select_1

	.end
