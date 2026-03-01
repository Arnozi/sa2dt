	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_speech_bubble_grp, voicegroup000
	.equ	se_speech_bubble_pri, 20
	.equ	se_speech_bubble_rev, reverb_set+0
	.equ	se_speech_bubble_mvl, 127
	.equ	se_speech_bubble_key, 0
	.equ	se_speech_bubble_tbs, 1
	.equ	se_speech_bubble_exg, 1
	.equ	se_speech_bubble_cmp, 1

	mSectionRodata
	.global	C_DECL(se_speech_bubble)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_speech_bubble_1:
	.byte	KEYSH , se_speech_bubble_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_speech_bubble_tbs/2
	.byte		VOICE , 65
	.byte		MOD   , 2
	.byte		PAN   , c_v+0
	.byte		BENDR , 10
	.byte		LFOS  , 33
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		VOL   , 127*se_speech_bubble_mvl/mxv
	.byte		BEND  , c_v-64
	.byte		N54   , Dn4 , v127
	.byte	W01
	.byte		BEND  , c_v-61
	.byte	W02
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-54
	.byte	W02
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-48
	.byte	W02
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-41
	.byte	W02
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-34
	.byte	W02
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-27
	.byte	W02
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-20
	.byte	W02
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-14
	.byte	W02
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-7
	.byte	W02
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+7
	.byte	W02
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+13
	.byte	W02
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+20
	.byte	W02
	.byte		        c_v+24
	.byte	W01
	.byte		        c_v+27
	.byte	W02
	.byte		        c_v+30
	.byte	W01
	.byte		        c_v+34
	.byte	W02
	.byte		        c_v+37
	.byte	W01
	.byte		        c_v+41
	.byte	W02
	.byte		        c_v+44
	.byte	W01
	.byte		        c_v+47
	.byte	W02
	.byte		        c_v+51
	.byte	W01
	.byte		        c_v+54
	.byte	W02
	.byte		        c_v+58
	.byte	W01
	.byte		        c_v+61
	.byte	W01
	.byte		        c_v+63
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_speech_bubble):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_speech_bubble_pri	@ Priority
	.byte	se_speech_bubble_rev	@ Reverb

mAlignWord
	mPtr	se_speech_bubble_grp

	mPtr	se_speech_bubble_1

	.end
