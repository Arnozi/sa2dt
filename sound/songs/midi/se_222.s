	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_222_grp, voicegroup005
	.equ	se_222_pri, 20
	.equ	se_222_rev, reverb_set+0
	.equ	se_222_mvl, 100
	.equ	se_222_key, 0
	.equ	se_222_tbs, 1
	.equ	se_222_exg, 1
	.equ	se_222_cmp, 1

	mSectionRodata
	.global	C_DECL(se_222)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_222_1:
	.byte	KEYSH , se_222_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_222_tbs/2
	.byte		VOICE , 22
	.byte		VOL   , 127*se_222_mvl/mxv
	.byte		MOD   , 6
	.byte		BENDR , 12
	.byte		LFOS  , 103
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-60
	.byte		TIE   , An3 , v127
	.byte	W01
	.byte		BEND  , c_v-50
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-30
	.byte	W03
	.byte		        c_v+1
	.byte	W03
	.byte		        c_v+32
	.byte	W15
se_222_1_B1:
	.byte	W72
@ 001   ----------------------------------------
	.byte	W24
	.byte	GOTO
	 mPtr	se_222_1_B1
se_222_1_B2:
	.byte	W64
	.byte	W01
	.byte		EOT   , An3 
	.byte	W01
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_222):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_222_pri	@ Priority
	.byte	se_222_rev	@ Reverb

mAlignWord
	mPtr	se_222_grp

	mPtr	se_222_1

	.end
