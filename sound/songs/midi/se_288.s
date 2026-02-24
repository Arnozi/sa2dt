	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_288_grp, voicegroup005
	.equ	se_288_pri, 20
	.equ	se_288_rev, reverb_set+0
	.equ	se_288_mvl, 100
	.equ	se_288_key, 0
	.equ	se_288_tbs, 1
	.equ	se_288_exg, 1
	.equ	se_288_cmp, 1

	mSectionRodata
	.global	C_DECL(se_288)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_288_1:
	.byte	KEYSH , se_288_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*se_288_tbs/2
	.byte		VOICE , 88
	.byte		BENDR , 11
	.byte		LFOS  , 73
	.byte		MODT  , 0
	.byte		VOL   , 127*se_288_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		MOD   , 15
	.byte		BEND  , c_v-59
	.byte		TIE   , Dn2 , v127
	.byte	W02
	.byte		BEND  , c_v-52
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+24
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+40
	.byte	W01
	.byte		        c_v+44
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+49
	.byte	W19
se_288_1_B1:
	.byte	W48
/* 001   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	se_288_1_B1
se_288_1_B2:
/* 002   ----------------------------------------
 */	.byte	W22
	.byte		EOT   , Dn2 
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_288):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_288_pri	/* Priority */
	.byte	se_288_rev	/* Reverb */

mAlignWord
	mPtr	se_288_grp

	mPtr	se_288_1

	.end
