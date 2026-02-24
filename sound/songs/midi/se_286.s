	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_286_grp, voicegroup005
	.equ	se_286_pri, 20
	.equ	se_286_rev, reverb_set+0
	.equ	se_286_mvl, 90
	.equ	se_286_key, 0
	.equ	se_286_tbs, 1
	.equ	se_286_exg, 1
	.equ	se_286_cmp, 1

	mSectionRodata
	.global	C_DECL(se_286)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_286_1:
	.byte	KEYSH , se_286_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*se_286_tbs/2
	.byte		VOICE , 86
	.byte		BENDR , 11
	.byte		LFOS  , 73
	.byte		MODT  , 0
	.byte		VOL   , 127*se_286_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		MOD   , 29
	.byte		BEND  , c_v-55
	.byte		TIE   , En3 , v127
	.byte	W01
	.byte		BEND  , c_v-46
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+13
	.byte	W01
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+43
	.byte	W01
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+63
	.byte	W01
	.byte		        c_v+63
	.byte	W01
	.byte		        c_v+63
	.byte	W32
	.byte	W02
se_286_1_B1:
	.byte	W48
/* 001   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	se_286_1_B1
se_286_1_B2:
/* 002   ----------------------------------------
 */	.byte	W22
	.byte		EOT   , En3 
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_286):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_286_pri	/* Priority */
	.byte	se_286_rev	/* Reverb */

mAlignWord
	mPtr	se_286_grp

	mPtr	se_286_1

	.end
