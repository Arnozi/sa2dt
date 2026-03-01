	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_245_grp, voicegroup005
	.equ	se_245_pri, 20
	.equ	se_245_rev, reverb_set+0
	.equ	se_245_mvl, 100
	.equ	se_245_key, 0
	.equ	se_245_tbs, 1
	.equ	se_245_exg, 1
	.equ	se_245_cmp, 1

	mSectionRodata
	.global	C_DECL(se_245)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_245_1:
	.byte	KEYSH , se_245_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_245_tbs/2
	.byte		VOICE , 39
	.byte		VOL   , 127*se_245_mvl/mxv
	.byte		LFOS  , 60
	.byte		BENDR , 15
	.byte		MOD   , 9
	.byte		PAN   , c_v+0
	.byte		MODT  , 0
	.byte		N02   , As2 , v127
	.byte	W02
	.byte		N01   , An3 
	.byte	W02
	.byte		N09   , Ds3 
	.byte	W09
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_245):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_245_pri	@ Priority
	.byte	se_245_rev	@ Reverb

mAlignWord
	mPtr	se_245_grp

	mPtr	se_245_1

	.end
