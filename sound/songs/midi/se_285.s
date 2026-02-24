	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_285_grp, voicegroup005
	.equ	se_285_pri, 20
	.equ	se_285_rev, reverb_set+0
	.equ	se_285_mvl, 100
	.equ	se_285_key, 0
	.equ	se_285_tbs, 1
	.equ	se_285_exg, 1
	.equ	se_285_cmp, 1

	mSectionRodata
	.global	C_DECL(se_285)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_285_1:
	.byte	KEYSH , se_285_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*se_285_tbs/2
	.byte		VOICE , 85
	.byte		VOL   , 127*se_285_mvl/mxv
	.byte		MODT  , 0
	.byte		LFOS  , 22
	.byte		PAN   , c_v+0
	.byte		MOD   , 49
	.byte		BENDR , 20
	.byte		BEND  , c_v-64
	.byte		TIE   , Dn4 , v080
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W01
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-60
	.byte	W01
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-49
	.byte	W01
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-32
	.byte	W01
se_285_1_B1:
	.byte		BEND  , c_v-30
	.byte	W01
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W52
/* 001   ----------------------------------------
 */	.byte	W72
	.byte	GOTO
	 mPtr	se_285_1_B1
se_285_1_B2:
	.byte	W24
	.byte		EOT   , Dn4 
/* 002   ----------------------------------------
 */	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_285):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_285_pri	/* Priority */
	.byte	se_285_rev	/* Reverb */

mAlignWord
	mPtr	se_285_grp

	mPtr	se_285_1

	.end
