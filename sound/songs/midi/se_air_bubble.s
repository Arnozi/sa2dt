	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_air_bubble_grp, voicegroup000
	.equ	se_air_bubble_pri, 20
	.equ	se_air_bubble_rev, reverb_set+0
	.equ	se_air_bubble_mvl, 90
	.equ	se_air_bubble_key, 0
	.equ	se_air_bubble_tbs, 1
	.equ	se_air_bubble_exg, 1
	.equ	se_air_bubble_cmp, 1

	mSectionRodata
	.global	C_DECL(se_air_bubble)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_air_bubble_1:
	.byte	KEYSH , se_air_bubble_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*se_air_bubble_tbs/2
	.byte		VOICE , 36
	.byte		VOL   , 127*se_air_bubble_mvl/mxv
	.byte		LFOS  , 2
	.byte		BENDR , 4
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		BEND  , c_v-64
	.byte		N06   , Bn3 , v127
	.byte	W02
	.byte		BEND  , c_v-53
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+51
	.byte	W01
	.byte		        c_v-64
	.byte		N06   , Fs4 
	.byte	W01
	.byte		BEND  , c_v-53
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+51
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_air_bubble):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_air_bubble_pri	/* Priority */
	.byte	se_air_bubble_rev	/* Reverb */

mAlignWord
	mPtr	se_air_bubble_grp

	mPtr	se_air_bubble_1

	.end
