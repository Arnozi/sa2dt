	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_shift_grp, voicegroup003
	.equ	se_shift_pri, 20
	.equ	se_shift_rev, reverb_set+0
	.equ	se_shift_mvl, 120
	.equ	se_shift_key, 0
	.equ	se_shift_tbs, 1
	.equ	se_shift_exg, 1
	.equ	se_shift_cmp, 1

	mSectionRodata
	.global	C_DECL(se_shift)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_shift_1:
	.byte	KEYSH , se_shift_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*se_shift_tbs/2
	.byte		VOICE , 119
	.byte		VOL   , 127*se_shift_mvl/mxv
	.byte		LFOS  , 60
	.byte		BENDR , 15
	.byte		PAN   , c_v+0
	.byte		MOD   , 127
	.byte		N08   , Ds6 , v127
	.byte	W01
	.byte		VOL   , 122*se_shift_mvl/mxv
	.byte	W01
	.byte		        117*se_shift_mvl/mxv
	.byte	W01
	.byte		        112*se_shift_mvl/mxv
	.byte	W01
	.byte		        107*se_shift_mvl/mxv
	.byte	W01
	.byte		        102*se_shift_mvl/mxv
	.byte	W01
	.byte		        97*se_shift_mvl/mxv
	.byte	W01
	.byte		        92*se_shift_mvl/mxv
	.byte	W01
	.byte		        86*se_shift_mvl/mxv
	.byte	W01
	.byte		        81*se_shift_mvl/mxv
	.byte	W01
	.byte		        76*se_shift_mvl/mxv
	.byte	W01
	.byte		        71*se_shift_mvl/mxv
	.byte	W01
	.byte		        66*se_shift_mvl/mxv
	.byte	W01
	.byte		        61*se_shift_mvl/mxv
	.byte	W01
	.byte		        56*se_shift_mvl/mxv
	.byte	W01
	.byte		        51*se_shift_mvl/mxv
	.byte	W01
	.byte		        45*se_shift_mvl/mxv
	.byte	W01
	.byte		        40*se_shift_mvl/mxv
	.byte	W01
	.byte		        35*se_shift_mvl/mxv
	.byte	W03
	.byte		        20*se_shift_mvl/mxv
	.byte	W03
	.byte		        4*se_shift_mvl/mxv
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_shift):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_shift_pri	/* Priority */
	.byte	se_shift_rev	/* Reverb */

mAlignWord
	mPtr	se_shift_grp

	mPtr	se_shift_1

	.end
