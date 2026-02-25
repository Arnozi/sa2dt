	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_226_grp, voicegroup005
	.equ	se_226_pri, 30
	.equ	se_226_rev, reverb_set+0
	.equ	se_226_mvl, 100
	.equ	se_226_key, 0
	.equ	se_226_tbs, 1
	.equ	se_226_exg, 1
	.equ	se_226_cmp, 1

	mSectionRodata
	.global	C_DECL(se_226)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_226_1:
	.byte	KEYSH , se_226_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 74*se_226_tbs/2
	.byte		VOICE , 26
	.byte		VOL   , 127*se_226_mvl/mxv
	.byte		BENDR , 10
	.byte		LFOS  , 17
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 36
	.byte		BEND  , c_v+26
	.byte		N23   , Fs2 , v127
	.byte	W01
	.byte		BEND  , c_v+26
	.byte	W01
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+24
	.byte	W01
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+13
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-10
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_226):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_226_pri	/* Priority */
	.byte	se_226_rev	/* Reverb */

mAlignWord
	mPtr	se_226_grp

	mPtr	se_226_1

	.end
