	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_alarm_5_grp, voicegroup003
	.equ	se_alarm_5_pri, 20
	.equ	se_alarm_5_rev, reverb_set+0
	.equ	se_alarm_5_mvl, 120
	.equ	se_alarm_5_key, 0
	.equ	se_alarm_5_tbs, 1
	.equ	se_alarm_5_exg, 1
	.equ	se_alarm_5_cmp, 1

	mSectionRodata
	.global	C_DECL(se_alarm_5)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_alarm_5_1:
	.byte	KEYSH , se_alarm_5_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_alarm_5_tbs/2
	.byte		VOICE , 38
	.byte		VOL   , 127*se_alarm_5_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 15
	.byte		N12   , Bn4 , v100
	.byte	W12
	.byte		        Fs4 , v092
	.byte	W12
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_alarm_5):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_alarm_5_pri	@ Priority
	.byte	se_alarm_5_rev	@ Reverb

mAlignWord
	mPtr	se_alarm_5_grp

	mPtr	se_alarm_5_1

	.end
