	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_time_up_grp, voicegroup003
	.equ	se_time_up_pri, 20
	.equ	se_time_up_rev, reverb_set+0
	.equ	se_time_up_mvl, 89
	.equ	se_time_up_key, 0
	.equ	se_time_up_tbs, 1
	.equ	se_time_up_exg, 1
	.equ	se_time_up_cmp, 1

	mSectionRodata
	.global	C_DECL(se_time_up)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_time_up_1:
	.byte	KEYSH , se_time_up_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 150*se_time_up_tbs/2
	.byte		VOICE , 39
	.byte		MOD   , 29
	.byte		VOL   , 127*se_time_up_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 15
	.byte		BEND  , c_v+31
	.byte		N96   , Dn4 , v116
	.byte	W03
	.byte		BEND  , c_v+29
	.byte	W03
	.byte		        c_v+27
	.byte	W03
	.byte		        c_v+25
	.byte	W03
	.byte		        c_v+23
	.byte	W03
	.byte		        c_v+21
	.byte	W03
	.byte		        c_v+19
	.byte	W03
	.byte		        c_v+17
	.byte	W03
	.byte		        c_v+15
	.byte	W03
	.byte		        c_v+13
	.byte	W03
	.byte		        c_v+11
	.byte	W03
	.byte		        c_v+9
	.byte	W03
	.byte		        c_v+7
	.byte	W03
	.byte		        c_v+5
	.byte	W03
	.byte		        c_v+3
	.byte	W03
	.byte		        c_v+1
	.byte	W03
	.byte		        c_v-1
	.byte	W03
	.byte		        c_v-3
	.byte	W03
	.byte		        c_v-5
	.byte	W03
	.byte		        c_v-7
	.byte	W03
	.byte		        c_v-9
	.byte	W03
	.byte		        c_v-11
	.byte	W03
	.byte		        c_v-13
	.byte	W03
	.byte		        c_v-15
	.byte	W03
	.byte		        c_v-17
	.byte	W03
	.byte		        c_v-19
	.byte	W03
	.byte		        c_v-21
	.byte	W03
	.byte		        c_v-23
	.byte	W03
	.byte		        c_v-25
	.byte	W03
	.byte		        c_v-27
	.byte	W03
	.byte		        c_v-29
	.byte	W03
	.byte		        c_v-31
	.byte	W03
/* 001   ----------------------------------------
 */	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_time_up):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_time_up_pri	/* Priority */
	.byte	se_time_up_rev	/* Reverb */

mAlignWord
	mPtr	se_time_up_grp

	mPtr	se_time_up_1

	.end
