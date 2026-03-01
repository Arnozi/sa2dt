	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_250_grp, voicegroup005
	.equ	se_250_pri, 20
	.equ	se_250_rev, reverb_set+0
	.equ	se_250_mvl, 100
	.equ	se_250_key, 0
	.equ	se_250_tbs, 1
	.equ	se_250_exg, 1
	.equ	se_250_cmp, 1

	mSectionRodata
	.global	C_DECL(se_250)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_250_1:
	.byte	KEYSH , se_250_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_250_tbs/2
	.byte		VOICE , 50
	.byte		VOL   , 127*se_250_mvl/mxv
	.byte		BENDR , 10
	.byte		LFOS  , 17
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 58
	.byte		BEND  , c_v+26
	.byte		N24   , Bn2 , v127
	.byte	W01
	.byte		BEND  , c_v+26
	.byte	W01
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+24
	.byte	W01
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+19
	.byte	W01
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+13
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-10
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_250):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_250_pri	@ Priority
	.byte	se_250_rev	@ Reverb

mAlignWord
	mPtr	se_250_grp

	mPtr	se_250_1

	.end
