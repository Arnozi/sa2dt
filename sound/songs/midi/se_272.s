	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_272_grp, voicegroup005
	.equ	se_272_pri, 20
	.equ	se_272_rev, reverb_set+0
	.equ	se_272_mvl, 100
	.equ	se_272_key, 0
	.equ	se_272_tbs, 1
	.equ	se_272_exg, 1
	.equ	se_272_cmp, 1

	mSectionRodata
	.global	C_DECL(se_272)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_272_1:
	.byte	KEYSH , se_272_key+0
se_272_1_B1:
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*se_272_tbs/2
	.byte		VOICE , 72
	.byte		VOL   , 23*se_272_mvl/mxv
	.byte		LFOS  , 84
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 38
	.byte		N48   , Bn2 , v127
	.byte	W01
	.byte		VOL   , 74*se_272_mvl/mxv
	.byte	W01
	.byte		        127*se_272_mvl/mxv
	.byte	W01
	.byte		        127*se_272_mvl/mxv
	.byte	W01
	.byte		        127*se_272_mvl/mxv
	.byte	W01
	.byte		        127*se_272_mvl/mxv
	.byte	W01
	.byte		        127*se_272_mvl/mxv
	.byte	W01
	.byte		        127*se_272_mvl/mxv
	.byte	W01
	.byte		        127*se_272_mvl/mxv
	.byte	W01
	.byte		        127*se_272_mvl/mxv
	.byte	W01
	.byte		        127*se_272_mvl/mxv
	.byte	W01
	.byte		        127*se_272_mvl/mxv
	.byte	W01
	.byte		        127*se_272_mvl/mxv
	.byte	W01
	.byte		        127*se_272_mvl/mxv
	.byte	W01
	.byte		        127*se_272_mvl/mxv
	.byte	W01
	.byte		        127*se_272_mvl/mxv
	.byte	W01
	.byte		        127*se_272_mvl/mxv
	.byte	W01
	.byte		        127*se_272_mvl/mxv
	.byte	W01
	.byte		        127*se_272_mvl/mxv
	.byte	W01
	.byte		        120*se_272_mvl/mxv
	.byte	W01
	.byte		        112*se_272_mvl/mxv
	.byte	W01
	.byte		        103*se_272_mvl/mxv
	.byte	W01
	.byte		        96*se_272_mvl/mxv
	.byte	W01
	.byte		        88*se_272_mvl/mxv
	.byte	W01
	.byte		        79*se_272_mvl/mxv
	.byte	W01
	.byte		        72*se_272_mvl/mxv
	.byte	W01
	.byte		        64*se_272_mvl/mxv
	.byte	W01
	.byte		        56*se_272_mvl/mxv
	.byte	W01
	.byte		        47*se_272_mvl/mxv
	.byte	W01
	.byte		        36*se_272_mvl/mxv
	.byte	W01
	.byte		        32*se_272_mvl/mxv
	.byte	W01
	.byte		        27*se_272_mvl/mxv
	.byte	W01
	.byte		        23*se_272_mvl/mxv
	.byte	W01
	.byte		        18*se_272_mvl/mxv
	.byte	W01
	.byte		        14*se_272_mvl/mxv
	.byte	W01
	.byte		        9*se_272_mvl/mxv
	.byte	W01
	.byte		        4*se_272_mvl/mxv
	.byte	W12
	.byte	GOTO
	 mPtr	se_272_1_B1
se_272_1_B2:
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_272):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_272_pri	/* Priority */
	.byte	se_272_rev	/* Reverb */

mAlignWord
	mPtr	se_272_grp

	mPtr	se_272_1

	.end
