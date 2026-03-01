	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_gauge_expands_grp, voicegroup000
	.equ	se_gauge_expands_pri, 20
	.equ	se_gauge_expands_rev, reverb_set+0
	.equ	se_gauge_expands_mvl, 95
	.equ	se_gauge_expands_key, 0
	.equ	se_gauge_expands_tbs, 1
	.equ	se_gauge_expands_exg, 1
	.equ	se_gauge_expands_cmp, 1

	mSectionRodata
	.global	C_DECL(se_gauge_expands)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_gauge_expands_1:
	.byte	KEYSH , se_gauge_expands_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_gauge_expands_tbs/2
	.byte		VOICE , 2
	.byte		VOL   , 127*se_gauge_expands_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		N03   , Dn5 , v116
	.byte	W03
	.byte		        Cn5 , v096
	.byte	W03
	.byte		        Gs4 , v112
	.byte	W03
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_gauge_expands):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_gauge_expands_pri	@ Priority
	.byte	se_gauge_expands_rev	@ Reverb

mAlignWord
	mPtr	se_gauge_expands_grp

	mPtr	se_gauge_expands_1

	.end
