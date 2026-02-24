	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_148_grp, voicegroup003
	.equ	se_148_pri, 20
	.equ	se_148_rev, reverb_set+0
	.equ	se_148_mvl, 120
	.equ	se_148_key, 0
	.equ	se_148_tbs, 1
	.equ	se_148_exg, 1
	.equ	se_148_cmp, 1

	mSectionRodata
	.global	C_DECL(se_148)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_148_1:
	.byte	KEYSH , se_148_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 300*se_148_tbs/2
	.byte		VOICE , 9
	.byte		MOD   , 78
	.byte		VOL   , 127*se_148_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 4
	.byte		N03   , An2 , v127
	.byte	W03
	.byte		        Cn3 , v120
	.byte	W03
	.byte		        Ds3 , v112
	.byte	W03
	.byte		        Cs3 , v104
	.byte	W03
	.byte		        En3 , v096
	.byte	W03
	.byte		        Gn3 , v088
	.byte	W03
	.byte		        Fn3 , v076
	.byte	W03
	.byte		        Gs3 , v068
	.byte	W03
	.byte		        Bn3 , v060
	.byte	W03
	.byte		        An3 , v052
	.byte	W03
	.byte		        Cn4 , v044
	.byte	W03
	.byte		        Ds4 , v036
	.byte	W03
	.byte		        Cs4 , v024
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Gn4 , v016
	.byte	W03
	.byte		        Fn4 , v012
	.byte	W03
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_148):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_148_pri	/* Priority */
	.byte	se_148_rev	/* Reverb */

mAlignWord
	mPtr	se_148_grp

	mPtr	se_148_1

	.end
