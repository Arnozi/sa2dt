	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_252_grp, voicegroup005
	.equ	se_252_pri, 20
	.equ	se_252_rev, reverb_set+0
	.equ	se_252_mvl, 100
	.equ	se_252_key, 0
	.equ	se_252_tbs, 1
	.equ	se_252_exg, 1
	.equ	se_252_cmp, 1

	mSectionRodata
	.global	C_DECL(se_252)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_252_1:
	.byte	KEYSH , se_252_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 150*se_252_tbs/2
	.byte		VOICE , 52
	.byte		VOL   , 127*se_252_mvl/mxv
	.byte		BENDR , 15
	.byte		PAN   , c_v+0
	.byte		N01   , As2 , v104
	.byte	W01
	.byte		        Fn4 , v108
	.byte	W01
	.byte		        As2 , v112
	.byte	W01
	.byte		        Fn4 , v108
	.byte	W01
	.byte		        As2 
	.byte	W01
	.byte		        Fn4 
	.byte	W01
	.byte		        As2 , v104
	.byte	W01
	.byte		        Fn4 , v108
	.byte	W01
	.byte		        As2 , v112
	.byte	W01
	.byte		        Fn4 , v108
	.byte	W01
	.byte		        As2 
	.byte	W01
	.byte		        Fn4 
	.byte	W01
	.byte		        As2 , v104
	.byte	W01
	.byte		        Fn4 , v108
	.byte	W01
	.byte		        As2 , v112
	.byte	W01
	.byte		        Fn4 , v108
	.byte	W01
	.byte		        As2 
	.byte	W01
	.byte		        Fn4 
	.byte	W01
	.byte		        As2 , v104
	.byte	W01
	.byte		        Fn4 , v108
	.byte	W01
	.byte		        As2 , v112
	.byte	W01
	.byte		        Fn4 , v108
	.byte	W01
	.byte		        As2 
	.byte	W01
	.byte		        Fn4 
	.byte	W01
	.byte		        As2 , v104
	.byte	W01
	.byte		        Fn4 , v108
	.byte	W01
	.byte		        As2 , v112
	.byte	W01
	.byte		        Fn4 , v108
	.byte	W01
	.byte		        As2 
	.byte	W01
	.byte		        Fn4 
	.byte	W01
	.byte		        As2 , v104
	.byte	W01
	.byte		        Fn4 , v108
	.byte	W01
	.byte		        As2 , v112
	.byte	W01
	.byte		        Fn4 , v108
	.byte	W01
	.byte		        As2 
	.byte	W01
	.byte		        Fn4 
	.byte	W01
	.byte		        As2 , v104
	.byte	W01
	.byte		        Fn4 , v108
	.byte	W01
	.byte		        As2 , v112
	.byte	W01
	.byte		        Fn4 , v108
	.byte	W01
	.byte		        As2 
	.byte	W01
	.byte		        Fn4 
	.byte	W01
	.byte		        As2 , v104
	.byte	W01
	.byte		        Fn4 , v108
	.byte	W01
	.byte		        As2 , v112
	.byte	W01
	.byte		        Fn4 , v108
	.byte	W01
	.byte		        As2 
	.byte	W01
	.byte		        Fn4 
	.byte	W01
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_252):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_252_pri	/* Priority */
	.byte	se_252_rev	/* Reverb */

mAlignWord
	mPtr	se_252_grp

	mPtr	se_252_1

	.end
