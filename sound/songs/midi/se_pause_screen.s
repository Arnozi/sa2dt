	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_pause_screen_grp, voicegroup003
	.equ	se_pause_screen_pri, 20
	.equ	se_pause_screen_rev, reverb_set+0
	.equ	se_pause_screen_mvl, 110
	.equ	se_pause_screen_key, 0
	.equ	se_pause_screen_tbs, 1
	.equ	se_pause_screen_exg, 1
	.equ	se_pause_screen_cmp, 1

	mSectionRodata
	.global	C_DECL(se_pause_screen)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_pause_screen_1:
	.byte	KEYSH , se_pause_screen_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_pause_screen_tbs/2
	.byte		VOICE , 25
	.byte		MOD   , 3
	.byte		VOL   , 127*se_pause_screen_mvl/mxv
	.byte		PAN   , c_v-1
	.byte		BENDR , 1
	.byte		N03   , Cs4 , v127
	.byte	W03
	.byte		        Fs4 , v116
	.byte	W03
	.byte		        Gs4 , v120
	.byte	W03
	.byte		N44   , Cs5 , v127
	.byte	W44
	.byte	W01
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_pause_screen):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_pause_screen_pri	@ Priority
	.byte	se_pause_screen_rev	@ Reverb

mAlignWord
	mPtr	se_pause_screen_grp

	mPtr	se_pause_screen_1

	.end
