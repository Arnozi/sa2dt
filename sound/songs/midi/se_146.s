	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_146_grp, voicegroup003
	.equ	se_146_pri, 20
	.equ	se_146_rev, reverb_set+0
	.equ	se_146_mvl, 64
	.equ	se_146_key, 0
	.equ	se_146_tbs, 1
	.equ	se_146_exg, 1
	.equ	se_146_cmp, 1

	mSectionRodata
	.global	C_DECL(se_146)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_146_1:
	.byte	KEYSH , se_146_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_146_tbs/2
	.byte		VOICE , 31
	.byte		MOD   , 13
	.byte		VOL   , 127*se_146_mvl/mxv
	.byte		LFOS  , 84
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		N42   , Cn3 , v127
	.byte	W03
	.byte		BEND  , c_v-24
	.byte	W03
	.byte		        c_v-10
	.byte	W03
	.byte		        c_v+13
	.byte	W03
	.byte		        c_v+31
	.byte	W03
	.byte		        c_v+40
	.byte	W03
	.byte		        c_v+40
	.byte	W03
	.byte		        c_v+40
	.byte	W03
	.byte		        c_v+40
	.byte	W03
	.byte		        c_v+44
	.byte	W03
	.byte		        c_v+44
	.byte	W03
	.byte		        c_v+44
	.byte	W03
	.byte		        c_v+44
	.byte	W03
	.byte		        c_v+44
	.byte	W03
	.byte		        c_v+31
	.byte	W03
	.byte		        c_v+17
	.byte	W03
	.byte		        c_v+8
	.byte	W03
	.byte		        c_v+4
	.byte	W03
	.byte		        c_v+4
	.byte	W03
	.byte		        c_v+4
	.byte	W03
	.byte		        c_v+4
	.byte	W03
	.byte		        c_v+4
	.byte	W03
	.byte		        c_v-1
	.byte	W03
	.byte		        c_v-15
	.byte	W03
	.byte		        c_v-28
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_146):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_146_pri	@ Priority
	.byte	se_146_rev	@ Reverb

mAlignWord
	mPtr	se_146_grp

	mPtr	se_146_1

	.end
