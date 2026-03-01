	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_msgbox_grp, voicegroup000
	.equ	se_msgbox_pri, 20
	.equ	se_msgbox_rev, reverb_set+0
	.equ	se_msgbox_mvl, 100
	.equ	se_msgbox_key, 0
	.equ	se_msgbox_tbs, 1
	.equ	se_msgbox_exg, 1
	.equ	se_msgbox_cmp, 1

	mSectionRodata
	.global	C_DECL(se_msgbox)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_msgbox_1:
	.byte	KEYSH , se_msgbox_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_msgbox_tbs/2
	.byte		VOICE , 60
	.byte		VOL   , 127*se_msgbox_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 6
	.byte		N08   , Gn5 , v127
	.byte	W09
	.byte		N24   , Ds5 
	.byte	W24
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_msgbox):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_msgbox_pri	@ Priority
	.byte	se_msgbox_rev	@ Reverb

mAlignWord
	mPtr	se_msgbox_grp

	mPtr	se_msgbox_1

	.end
