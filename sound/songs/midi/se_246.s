	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_246_grp, voicegroup005
	.equ	se_246_pri, 20
	.equ	se_246_rev, reverb_set+0
	.equ	se_246_mvl, 100
	.equ	se_246_key, 0
	.equ	se_246_tbs, 1
	.equ	se_246_exg, 1
	.equ	se_246_cmp, 1

	mSectionRodata
	.global	C_DECL(se_246)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_246_1:
	.byte	KEYSH , se_246_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*se_246_tbs/2
	.byte		VOICE , 46
	.byte		VOL   , 127*se_246_mvl/mxv
	.byte		LFOS  , 90
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 49
	.byte		N04   , An3 , v127
	.byte	W04
se_246_1_B1:
	.byte		N92   , Dn3 , v120
	.byte	W09
	.byte		VOL   , 122*se_246_mvl/mxv
	.byte	W01
	.byte		        117*se_246_mvl/mxv
	.byte	W01
	.byte		        112*se_246_mvl/mxv
	.byte	W01
	.byte		        106*se_246_mvl/mxv
	.byte	W01
	.byte		        101*se_246_mvl/mxv
	.byte	W01
	.byte		        96*se_246_mvl/mxv
	.byte	W01
	.byte		        89*se_246_mvl/mxv
	.byte	W01
	.byte		        84*se_246_mvl/mxv
	.byte	W01
	.byte		        79*se_246_mvl/mxv
	.byte	W01
	.byte		        75*se_246_mvl/mxv
	.byte	W01
	.byte		        69*se_246_mvl/mxv
	.byte	W01
	.byte	GOTO
	 mPtr	se_246_1_B1
se_246_1_B2:
	.byte		VOL   , 64*se_246_mvl/mxv
	.byte	W01
	.byte		        59*se_246_mvl/mxv
	.byte	W01
	.byte		        53*se_246_mvl/mxv
	.byte	W01
	.byte		        47*se_246_mvl/mxv
	.byte	W01
	.byte		        42*se_246_mvl/mxv
	.byte	W01
	.byte		        37*se_246_mvl/mxv
	.byte	W01
	.byte		        32*se_246_mvl/mxv
	.byte	W01
	.byte		        27*se_246_mvl/mxv
	.byte	W01
	.byte		        22*se_246_mvl/mxv
	.byte	W01
	.byte		        16*se_246_mvl/mxv
	.byte	W01
	.byte		        11*se_246_mvl/mxv
	.byte	W01
	.byte		        6*se_246_mvl/mxv
	.byte	W60
	.byte	W01
/* 001   ----------------------------------------
 */	.byte	W02
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_246):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_246_pri	/* Priority */
	.byte	se_246_rev	/* Reverb */

mAlignWord
	mPtr	se_246_grp

	mPtr	se_246_1

	.end
