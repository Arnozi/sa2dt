	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_snore_grp, voicegroup000
	.equ	se_snore_pri, 20
	.equ	se_snore_rev, reverb_set+0
	.equ	se_snore_mvl, 95
	.equ	se_snore_key, 0
	.equ	se_snore_tbs, 1
	.equ	se_snore_exg, 1
	.equ	se_snore_cmp, 1

	mSectionRodata
	.global	C_DECL(se_snore)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_snore_1:
	.byte	KEYSH , se_snore_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_snore_tbs/2
	.byte		VOICE , 61
	.byte		VOL   , 127*se_snore_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		BEND  , c_v+45
	.byte		N56   , As2 , v104
	.byte	W01
	.byte		BEND  , c_v+43
	.byte	W02
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+38
	.byte	W02
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+33
	.byte	W02
	.byte		        c_v+31
	.byte	W01
	.byte		        c_v+29
	.byte	W02
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+24
	.byte	W02
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+19
	.byte	W02
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+14
	.byte	W02
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+9
	.byte	W02
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+5
	.byte	W02
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-5
	.byte	W02
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-10
	.byte	W02
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-15
	.byte	W02
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-19
	.byte	W02
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-24
	.byte	W02
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-29
	.byte	W02
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-34
	.byte	W02
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-39
	.byte	W02
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-43
	.byte	W02
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-48
	.byte	W02
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-53
	.byte	W02
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-58
	.byte	W02
	.byte		        c_v-60
	.byte	W01
	.byte		        c_v-63
	.byte	W01
	.byte		        c_v-64
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_snore):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_snore_pri	@ Priority
	.byte	se_snore_rev	@ Reverb

mAlignWord
	mPtr	se_snore_grp

	mPtr	se_snore_1

	.end
