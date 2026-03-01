	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_293_grp, voicegroup005
	.equ	se_293_pri, 20
	.equ	se_293_rev, reverb_set+0
	.equ	se_293_mvl, 100
	.equ	se_293_key, 0
	.equ	se_293_tbs, 1
	.equ	se_293_exg, 1
	.equ	se_293_cmp, 1

	mSectionRodata
	.global	C_DECL(se_293)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_293_1:
	.byte	KEYSH , se_293_key+0
se_293_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 144*se_293_tbs/2
	.byte		VOICE , 93
	.byte		BENDR , 11
	.byte		LFOS  , 73
	.byte		MODT  , 0
	.byte		VOL   , 127*se_293_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		MOD   , 15
	.byte		BEND  , c_v-12
	.byte		N32   , Cn1 , v127
	.byte	W02
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+27
	.byte	W01
	.byte		        c_v+38
	.byte	W01
	.byte		        c_v+40
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+37
	.byte	W01
	.byte		        c_v+35
	.byte	W01
	.byte		        c_v+33
	.byte	W01
	.byte		        c_v+31
	.byte	W01
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+27
	.byte	W01
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+13
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-18
	.byte		N32   , Gs1 
	.byte	W01
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-42
	.byte	W24
	.byte	GOTO
	 mPtr	se_293_1_B1
se_293_1_B2:
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_293):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_293_pri	@ Priority
	.byte	se_293_rev	@ Reverb

mAlignWord
	mPtr	se_293_grp

	mPtr	se_293_1

	.end
