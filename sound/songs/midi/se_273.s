	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_273_grp, voicegroup005
	.equ	se_273_pri, 20
	.equ	se_273_rev, reverb_set+0
	.equ	se_273_mvl, 100
	.equ	se_273_key, 0
	.equ	se_273_tbs, 1
	.equ	se_273_exg, 1
	.equ	se_273_cmp, 1

	mSectionRodata
	.global	C_DECL(se_273)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_273_1:
	.byte	KEYSH , se_273_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_273_tbs/2
	.byte		VOICE , 73
	.byte		VOL   , 127*se_273_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 20
	.byte		BEND  , c_v-64
	.byte		TIE   , Dn4 , v080
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W01
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-60
	.byte	W01
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-49
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-32
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
	.byte		        c_v-25
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+13
	.byte	W01
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+15
	.byte	W01
se_273_1_B1:
	.byte	W24
@ 001   ----------------------------------------
	.byte	W72
	.byte	GOTO
	 mPtr	se_273_1_B1
se_273_1_B2:
	.byte	W24
	.byte		EOT   , Dn4 
@ 002   ----------------------------------------
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_273):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_273_pri	@ Priority
	.byte	se_273_rev	@ Reverb

mAlignWord
	mPtr	se_273_grp

	mPtr	se_273_1

	.end
