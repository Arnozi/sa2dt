	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_techno_base_note_block_grp, voicegroup005
	.equ	se_techno_base_note_block_pri, 20
	.equ	se_techno_base_note_block_rev, reverb_set+0
	.equ	se_techno_base_note_block_mvl, 100
	.equ	se_techno_base_note_block_key, 0
	.equ	se_techno_base_note_block_tbs, 1
	.equ	se_techno_base_note_block_exg, 1
	.equ	se_techno_base_note_block_cmp, 1

	mSectionRodata
	.global	C_DECL(se_techno_base_note_block)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_techno_base_note_block_1:
	.byte	KEYSH , se_techno_base_note_block_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*se_techno_base_note_block_tbs/2
	.byte		VOICE , 94
	.byte		VOL   , 127*se_techno_base_note_block_mvl/mxv
	.byte		LFOS  , 60
	.byte		BENDR , 15
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N28   , Gs3 , v127
	.byte	W01
	.byte		VOL   , 122*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        119*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        115*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        111*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        107*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        102*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        98*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        94*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        89*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        86*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        82*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        77*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        73*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        69*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        65*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        61*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        56*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        51*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        47*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        44*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        40*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        36*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        32*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        27*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        22*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        22*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        21*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        20*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        18*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        18*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        18*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        17*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        16*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        14*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        14*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        14*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        13*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        12*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        11*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        9*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        9*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        9*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        8*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        7*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        6*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        4*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        4*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        4*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        3*se_techno_base_note_block_mvl/mxv
	.byte	W01
	.byte		        2*se_techno_base_note_block_mvl/mxv
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_techno_base_note_block):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_techno_base_note_block_pri	/* Priority */
	.byte	se_techno_base_note_block_rev	/* Reverb */

mAlignWord
	mPtr	se_techno_base_note_block_grp

	mPtr	se_techno_base_note_block_1

	.end
