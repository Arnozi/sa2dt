	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_151_grp, voicegroup000
	.equ	se_151_pri, 20
	.equ	se_151_rev, reverb_set+0
	.equ	se_151_mvl, 100
	.equ	se_151_key, 0
	.equ	se_151_tbs, 1
	.equ	se_151_exg, 1
	.equ	se_151_cmp, 1

	mSectionRodata
	.global	C_DECL(se_151)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_151_1:
	.byte	KEYSH , se_151_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_151_tbs/2
	.byte		VOICE , 52
	.byte		VOL   , 127*se_151_mvl/mxv
	.byte		LFOS  , 52
	.byte		BENDR , 2
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 10
	.byte		N03   , Cs1 , v096
	.byte	W04
	.byte		N48   , Dn1 , v127
	.byte	W48
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_151):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_151_pri	@ Priority
	.byte	se_151_rev	@ Reverb

mAlignWord
	mPtr	se_151_grp

	mPtr	se_151_1

	.end
