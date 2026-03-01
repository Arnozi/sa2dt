	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_237_grp, voicegroup005
	.equ	se_237_pri, 20
	.equ	se_237_rev, reverb_set+0
	.equ	se_237_mvl, 65
	.equ	se_237_key, 0
	.equ	se_237_tbs, 1
	.equ	se_237_exg, 1
	.equ	se_237_cmp, 1

	mSectionRodata
	.global	C_DECL(se_237)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_237_1:
	.byte	KEYSH , se_237_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_237_tbs/2
	.byte		VOICE , 37
	.byte		VOL   , 127*se_237_mvl/mxv
	.byte		BENDR , 12
	.byte		LFOS  , 103
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 25
	.byte		BEND  , c_v-33
	.byte		TIE   , Dn5 , v127
	.byte	W01
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+18
	.byte	W56
	.byte	W01
se_237_1_B1:
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W72
	.byte	GOTO
	 mPtr	se_237_1_B1
se_237_1_B2:
	.byte	W24
@ 005   ----------------------------------------
	.byte	W01
	.byte		EOT   , Dn5 
	.byte	W01
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_237):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_237_pri	@ Priority
	.byte	se_237_rev	@ Reverb

mAlignWord
	mPtr	se_237_grp

	mPtr	se_237_1

	.end
