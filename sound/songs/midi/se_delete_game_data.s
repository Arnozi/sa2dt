	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_delete_game_data_grp, voicegroup005
	.equ	se_delete_game_data_pri, 20
	.equ	se_delete_game_data_rev, reverb_set+0
	.equ	se_delete_game_data_mvl, 100
	.equ	se_delete_game_data_key, 0
	.equ	se_delete_game_data_tbs, 1
	.equ	se_delete_game_data_exg, 1
	.equ	se_delete_game_data_cmp, 1

	mSectionRodata
	.global	C_DECL(se_delete_game_data)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_delete_game_data_1:
	.byte	KEYSH , se_delete_game_data_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 162*se_delete_game_data_tbs/2
	.byte		VOICE , 20
	.byte		VOL   , 127*se_delete_game_data_mvl/mxv
	.byte		LFOS  , 51
	.byte		BENDR , 15
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		N24   , Ds4 , v120
	.byte	W24
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_delete_game_data):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_delete_game_data_pri	@ Priority
	.byte	se_delete_game_data_rev	@ Reverb

mAlignWord
	mPtr	se_delete_game_data_grp

	mPtr	se_delete_game_data_1

	.end
