	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_cream_flying_grp, voicegroup005
	.equ	se_cream_flying_pri, 20
	.equ	se_cream_flying_rev, reverb_set+0
	.equ	se_cream_flying_mvl, 100
	.equ	se_cream_flying_key, 0
	.equ	se_cream_flying_tbs, 1
	.equ	se_cream_flying_exg, 1
	.equ	se_cream_flying_cmp, 1

	mSectionRodata
	.global	C_DECL(se_cream_flying)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_cream_flying_1:
	.byte	KEYSH , se_cream_flying_key+0
se_cream_flying_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 122*se_cream_flying_tbs/2
	.byte		VOICE , 27
	.byte		VOL   , 127*se_cream_flying_mvl/mxv
	.byte		BENDR , 10
	.byte		LFOS  , 17
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		BEND  , c_v-51
	.byte		N05   , Ds3 , v127
	.byte	W01
	.byte		BEND  , c_v-47
	.byte	W01
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-28
	.byte	W01
	.byte		        c_v-23
	.byte		N05   
	.byte	W01
	.byte		BEND  , c_v-18
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v+6
	.byte		N05   
	.byte	W01
	.byte		BEND  , c_v+11
	.byte	W01
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+30
	.byte	W01
	.byte		        c_v+35
	.byte	W01
	.byte		        c_v+32
	.byte	W01
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+19
	.byte	W01
	.byte	GOTO
	 mPtr	se_cream_flying_1_B1
se_cream_flying_1_B2:
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		        c_v+13
	.byte	W01
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-32
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_cream_flying):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_cream_flying_pri	@ Priority
	.byte	se_cream_flying_rev	@ Reverb

mAlignWord
	mPtr	se_cream_flying_grp

	mPtr	se_cream_flying_1

	.end
