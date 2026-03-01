	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_stage_result_counter_grp, voicegroup000
	.equ	se_stage_result_counter_pri, 20
	.equ	se_stage_result_counter_rev, reverb_set+0
	.equ	se_stage_result_counter_mvl, 90
	.equ	se_stage_result_counter_key, 0
	.equ	se_stage_result_counter_tbs, 1
	.equ	se_stage_result_counter_exg, 1
	.equ	se_stage_result_counter_cmp, 1

	mSectionRodata
	.global	C_DECL(se_stage_result_counter)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_stage_result_counter_1:
	.byte	KEYSH , se_stage_result_counter_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 180*se_stage_result_counter_tbs/2
	.byte		VOICE , 1
	.byte		VOL   , 127*se_stage_result_counter_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 15
	.byte		N04   , Fs6 , v112
	.byte	W04
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_stage_result_counter):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_stage_result_counter_pri	@ Priority
	.byte	se_stage_result_counter_rev	@ Reverb

mAlignWord
	mPtr	se_stage_result_counter_grp

	mPtr	se_stage_result_counter_1

	.end
