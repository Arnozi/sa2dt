	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_jump__collect_rings_grp, voicegroup000
	.equ	se_jump__collect_rings_pri, 20
	.equ	se_jump__collect_rings_rev, reverb_set+0
	.equ	se_jump__collect_rings_mvl, 75
	.equ	se_jump__collect_rings_key, 0
	.equ	se_jump__collect_rings_tbs, 1
	.equ	se_jump__collect_rings_exg, 1
	.equ	se_jump__collect_rings_cmp, 1

	mSectionRodata
	.global	C_DECL(se_jump__collect_rings)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_jump__collect_rings_1:
	.byte	KEYSH , se_jump__collect_rings_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 150*se_jump__collect_rings_tbs/2
	.byte		VOICE , 12
	.byte		VOL   , 127*se_jump__collect_rings_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 15
	.byte		N04   , Fn3 , v112
	.byte	W04
	.byte		BEND  , c_v-64
	.byte		N20   , Bn4 , v120
	.byte	W01
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+13
	.byte	W01
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+22
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_jump__collect_rings):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_jump__collect_rings_pri	/* Priority */
	.byte	se_jump__collect_rings_rev	/* Reverb */

mAlignWord
	mPtr	se_jump__collect_rings_grp

	mPtr	se_jump__collect_rings_1

	.end
