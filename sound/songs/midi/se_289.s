	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_289_grp, voicegroup005
	.equ	se_289_pri, 20
	.equ	se_289_rev, reverb_set+0
	.equ	se_289_mvl, 100
	.equ	se_289_key, 0
	.equ	se_289_tbs, 1
	.equ	se_289_exg, 1
	.equ	se_289_cmp, 1

	mSectionRodata
	.global	C_DECL(se_289)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_289_1:
	.byte	KEYSH , se_289_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_289_tbs/2
	.byte		VOICE , 89
	.byte		VOL   , 127*se_289_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 10
	.byte		LFOS  , 13
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		BEND  , c_v+35
	.byte		N18   , Cn3 , v127
	.byte	W01
	.byte		BEND  , c_v+49
	.byte	W02
	.byte		        c_v+58
	.byte	W01
	.byte		        c_v+58
	.byte	W02
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+13
	.byte	W02
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-51
	.byte	W02
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W05
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_289):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_289_pri	@ Priority
	.byte	se_289_rev	@ Reverb

mAlignWord
	mPtr	se_289_grp

	mPtr	se_289_1

	.end
