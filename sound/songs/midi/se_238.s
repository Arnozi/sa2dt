	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_238_grp, voicegroup005
	.equ	se_238_pri, 20
	.equ	se_238_rev, reverb_set+0
	.equ	se_238_mvl, 100
	.equ	se_238_key, 0
	.equ	se_238_tbs, 1
	.equ	se_238_exg, 1
	.equ	se_238_cmp, 1

	mSectionRodata
	.global	C_DECL(se_238)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_238_1:
	.byte	KEYSH , se_238_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*se_238_tbs/2
	.byte		VOICE , 38
	.byte		VOL   , 127*se_238_mvl/mxv
	.byte		LFOS  , 2
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N05   , Dn4 , v092
	.byte	W06
	.byte		N10   , Bn2 
	.byte	W10
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_238):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_238_pri	/* Priority */
	.byte	se_238_rev	/* Reverb */

mAlignWord
	mPtr	se_238_grp

	mPtr	se_238_1

	.end
