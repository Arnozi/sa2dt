	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_256_grp, voicegroup005
	.equ	se_256_pri, 20
	.equ	se_256_rev, reverb_set+0
	.equ	se_256_mvl, 92
	.equ	se_256_key, 0
	.equ	se_256_tbs, 1
	.equ	se_256_exg, 1
	.equ	se_256_cmp, 1

	mSectionRodata
	.global	C_DECL(se_256)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_256_1:
	.byte	KEYSH , se_256_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*se_256_tbs/2
	.byte		VOICE , 56
	.byte		VOL   , 127*se_256_mvl/mxv
	.byte		MOD   , 78
	.byte		PAN   , c_v+0
	.byte		BENDR , 16
	.byte		BEND  , c_v-64
	.byte		N17   , Dn3 , v127
	.byte	W01
	.byte		BEND  , c_v-59
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-49
	.byte	W01
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+31
	.byte		N09   , Ds2 
	.byte	W01
	.byte		BEND  , c_v+36
	.byte	W01
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+57
	.byte	W04
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_256):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_256_pri	/* Priority */
	.byte	se_256_rev	/* Reverb */

mAlignWord
	mPtr	se_256_grp

	mPtr	se_256_1

	.end
