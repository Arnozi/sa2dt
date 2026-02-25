	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_stage_result_counter_done_grp, voicegroup003
	.equ	se_stage_result_counter_done_pri, 20
	.equ	se_stage_result_counter_done_rev, reverb_set+0
	.equ	se_stage_result_counter_done_mvl, 120
	.equ	se_stage_result_counter_done_key, 0
	.equ	se_stage_result_counter_done_tbs, 1
	.equ	se_stage_result_counter_done_exg, 1
	.equ	se_stage_result_counter_done_cmp, 1

	mSectionRodata
	.global	C_DECL(se_stage_result_counter_done)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_stage_result_counter_done_1:
	.byte	KEYSH , se_stage_result_counter_done_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 180*se_stage_result_counter_done_tbs/2
	.byte		VOICE , 1
	.byte		VOL   , 127*se_stage_result_counter_done_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 127
	.byte		TIE   , Cn3 , v127
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W48
	.byte		EOT   
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_stage_result_counter_done):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_stage_result_counter_done_pri	/* Priority */
	.byte	se_stage_result_counter_done_rev	/* Reverb */

mAlignWord
	mPtr	se_stage_result_counter_done_grp

	mPtr	se_stage_result_counter_done_1

	.end
