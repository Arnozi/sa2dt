	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_msgbox_select_grp, voicegroup000
	.equ	se_msgbox_select_pri, 20
	.equ	se_msgbox_select_rev, reverb_set+0
	.equ	se_msgbox_select_mvl, 85
	.equ	se_msgbox_select_key, 0
	.equ	se_msgbox_select_tbs, 1
	.equ	se_msgbox_select_exg, 1
	.equ	se_msgbox_select_cmp, 1

	mSectionRodata
	.global	C_DECL(se_msgbox_select)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_msgbox_select_1:
	.byte	KEYSH , se_msgbox_select_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_msgbox_select_tbs/2
	.byte		VOICE , 2
	.byte		VOL   , 127*se_msgbox_select_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 10
	.byte		N04   , Fn4 , v127
	.byte	W04
	.byte		        Cn4 , v104
	.byte	W04
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_msgbox_select):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_msgbox_select_pri	@ Priority
	.byte	se_msgbox_select_rev	@ Reverb

mAlignWord
	mPtr	se_msgbox_select_grp

	mPtr	se_msgbox_select_1

	.end
