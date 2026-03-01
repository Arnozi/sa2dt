	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_menu_cursor_move_grp, voicegroup000
	.equ	se_menu_cursor_move_pri, 20
	.equ	se_menu_cursor_move_rev, reverb_set+0
	.equ	se_menu_cursor_move_mvl, 90
	.equ	se_menu_cursor_move_key, 0
	.equ	se_menu_cursor_move_tbs, 1
	.equ	se_menu_cursor_move_exg, 1
	.equ	se_menu_cursor_move_cmp, 1

	mSectionRodata
	.global	C_DECL(se_menu_cursor_move)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_menu_cursor_move_1:
	.byte	KEYSH , se_menu_cursor_move_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_menu_cursor_move_tbs/2
	.byte		VOICE , 1
	.byte		VOL   , 127*se_menu_cursor_move_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 15
	.byte		N04   , An6 , v112
	.byte	W04
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_menu_cursor_move):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_menu_cursor_move_pri	@ Priority
	.byte	se_menu_cursor_move_rev	@ Reverb

mAlignWord
	mPtr	se_menu_cursor_move_grp

	mPtr	se_menu_cursor_move_1

	.end
