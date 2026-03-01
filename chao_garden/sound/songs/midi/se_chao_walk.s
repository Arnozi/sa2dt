	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_chao_walk_grp, voicegroup000
	.equ	se_chao_walk_pri, 20
	.equ	se_chao_walk_rev, reverb_set+0
	.equ	se_chao_walk_mvl, 80
	.equ	se_chao_walk_key, 0
	.equ	se_chao_walk_tbs, 1
	.equ	se_chao_walk_exg, 1
	.equ	se_chao_walk_cmp, 1

	mSectionRodata
	.global	C_DECL(se_chao_walk)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_chao_walk_1:
	.byte	KEYSH , se_chao_walk_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_chao_walk_tbs/2
	.byte		VOICE , 3
	.byte		VOL   , 127*se_chao_walk_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 7
	.byte		BEND  , c_v+9
	.byte		N07   , As4 , v104
	.byte	W01
	.byte		BEND  , c_v-14
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+24
	.byte	W01
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+63
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_chao_walk):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_chao_walk_pri	@ Priority
	.byte	se_chao_walk_rev	@ Reverb

mAlignWord
	mPtr	se_chao_walk_grp

	mPtr	se_chao_walk_1

	.end
