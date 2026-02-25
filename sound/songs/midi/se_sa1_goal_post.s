	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_sa1_goal_post_grp, voicegroup003
	.equ	se_sa1_goal_post_pri, 20
	.equ	se_sa1_goal_post_rev, reverb_set+0
	.equ	se_sa1_goal_post_mvl, 120
	.equ	se_sa1_goal_post_key, 0
	.equ	se_sa1_goal_post_tbs, 1
	.equ	se_sa1_goal_post_exg, 1
	.equ	se_sa1_goal_post_cmp, 1

	mSectionRodata
	.global	C_DECL(se_sa1_goal_post)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_sa1_goal_post_1:
	.byte	KEYSH , se_sa1_goal_post_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 150*se_sa1_goal_post_tbs/2
	.byte		VOICE , 4
	.byte		VOL   , 127*se_sa1_goal_post_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 6
	.byte		TIE   , Cn3 , v127
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W12
	.byte		EOT   
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_sa1_goal_post):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_sa1_goal_post_pri	/* Priority */
	.byte	se_sa1_goal_post_rev	/* Reverb */

mAlignWord
	mPtr	se_sa1_goal_post_grp

	mPtr	se_sa1_goal_post_1

	.end
