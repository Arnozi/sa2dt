	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_success_grp, voicegroup003
	.equ	se_success_pri, 20
	.equ	se_success_rev, reverb_set+0
	.equ	se_success_mvl, 120
	.equ	se_success_key, 0
	.equ	se_success_tbs, 1
	.equ	se_success_exg, 1
	.equ	se_success_cmp, 1

	mSectionRodata
	.global	C_DECL(se_success)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_success_1:
	.byte	KEYSH , se_success_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_success_tbs/2
	.byte		VOICE , 64
	.byte		VOL   , 127*se_success_mvl/mxv
	.byte		LFOS  , 15
	.byte		BENDR , 15
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N03   , Gn4 , v096
	.byte	W03
	.byte		        Cn5 , v092
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		N12   , En5 
	.byte	W12
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_success):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_success_pri	@ Priority
	.byte	se_success_rev	@ Reverb

mAlignWord
	mPtr	se_success_grp

	mPtr	se_success_1

	.end
