	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_244_grp, voicegroup005
	.equ	se_244_pri, 20
	.equ	se_244_rev, reverb_set+0
	.equ	se_244_mvl, 100
	.equ	se_244_key, 0
	.equ	se_244_tbs, 1
	.equ	se_244_exg, 1
	.equ	se_244_cmp, 1

	mSectionRodata
	.global	C_DECL(se_244)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_244_1:
	.byte	KEYSH , se_244_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*se_244_tbs/2
	.byte		VOICE , 46
	.byte		VOL   , 127*se_244_mvl/mxv
	.byte		BENDR , 12
	.byte		LFOS  , 103
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 87
	.byte		BEND  , c_v-33
	.byte		TIE   , Fn3 , v127
	.byte	W01
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		        c_v-31
	.byte	W04
	.byte		        c_v+44
	.byte	W03
	.byte		        c_v-42
	.byte	W03
	.byte		        c_v+49
	.byte	W03
	.byte		        c_v-42
	.byte	W03
	.byte		        c_v+49
	.byte	W03
	.byte		        c_v-42
	.byte	W03
se_244_1_B1:
	.byte		BEND  , c_v+44
	.byte	W03
	.byte		        c_v-37
	.byte	W03
	.byte		        c_v+49
	.byte	W03
	.byte		        c_v-37
	.byte	W03
	.byte		        c_v+26
	.byte	W03
	.byte		        c_v-37
	.byte	W03
	.byte		        c_v+17
	.byte	W03
	.byte		        c_v-33
	.byte	W03
	.byte		        c_v+22
	.byte	W03
	.byte		        c_v-28
	.byte	W03
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-31
	.byte	W04
	.byte		        c_v+44
	.byte	W03
	.byte		        c_v-42
	.byte	W03
	.byte		        c_v+49
	.byte	W03
	.byte		        c_v-42
	.byte	W03
	.byte		        c_v+49
	.byte	W03
	.byte		        c_v-42
	.byte	W03
	.byte		        c_v+44
	.byte	W03
	.byte		        c_v-37
	.byte	W03
	.byte		        c_v+49
	.byte	W03
	.byte		        c_v-37
	.byte	W03
	.byte		        c_v+26
	.byte	W03
	.byte		        c_v-37
	.byte	W03
/* 001   ----------------------------------------
 */	.byte		        c_v+17
	.byte	W03
	.byte		        c_v-33
	.byte	W03
	.byte		        c_v+22
	.byte	W03
	.byte		        c_v-28
	.byte	W15
	.byte	GOTO
	 mPtr	se_244_1_B1
se_244_1_B2:
	.byte	W64
	.byte	W01
	.byte		EOT   , Fn3 
	.byte	W01
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_244):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_244_pri	/* Priority */
	.byte	se_244_rev	/* Reverb */

mAlignWord
	mPtr	se_244_grp

	mPtr	se_244_1

	.end
