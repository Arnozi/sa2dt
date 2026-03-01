	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_sonic_midair_somersault_grp, voicegroup003
	.equ	se_sonic_midair_somersault_pri, 20
	.equ	se_sonic_midair_somersault_rev, reverb_set+0
	.equ	se_sonic_midair_somersault_mvl, 120
	.equ	se_sonic_midair_somersault_key, 0
	.equ	se_sonic_midair_somersault_tbs, 1
	.equ	se_sonic_midair_somersault_exg, 1
	.equ	se_sonic_midair_somersault_cmp, 1

	mSectionRodata
	.global	C_DECL(se_sonic_midair_somersault)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_sonic_midair_somersault_1:
	.byte	KEYSH , se_sonic_midair_somersault_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_sonic_midair_somersault_tbs/2
	.byte		VOICE , 16
	.byte		MOD   , 127
	.byte		VOL   , 127*se_sonic_midair_somersault_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 20
	.byte		BEND  , c_v-60
	.byte		N04   , As3 , v112
	.byte	W01
	.byte		BEND  , c_v-62
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-15
	.byte	W01
	.byte		MOD   , 19
	.byte		BEND  , c_v-18
	.byte		N06   , Fs3 , v080
	.byte	W01
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-57
	.byte	W01
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_sonic_midair_somersault):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_sonic_midair_somersault_pri	@ Priority
	.byte	se_sonic_midair_somersault_rev	@ Reverb

mAlignWord
	mPtr	se_sonic_midair_somersault_grp

	mPtr	se_sonic_midair_somersault_1

	.end
