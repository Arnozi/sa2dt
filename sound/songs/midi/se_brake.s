	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_brake_grp, voicegroup000
	.equ	se_brake_pri, 15
	.equ	se_brake_rev, reverb_set+0
	.equ	se_brake_mvl, 75
	.equ	se_brake_key, 0
	.equ	se_brake_tbs, 1
	.equ	se_brake_exg, 1
	.equ	se_brake_cmp, 1

	mSectionRodata
	.global	C_DECL(se_brake)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_brake_1:
	.byte	KEYSH , se_brake_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_brake_tbs/2
	.byte		VOICE , 2
	.byte		VOL   , 127*se_brake_mvl/mxv
	.byte		BENDR , 15
	.byte		PAN   , c_v+0
	.byte		N01   , Gs4 , v104
	.byte	W01
	.byte		        As4 , v108
	.byte	W01
	.byte		        Gs4 , v112
	.byte	W01
	.byte		        As4 , v108
	.byte	W01
	.byte		        Gs4 
	.byte	W01
	.byte		        As4 
	.byte	W02
	.byte		        Gs4 , v104
	.byte	W01
	.byte		        As4 , v108
	.byte	W01
	.byte		        Gs4 , v112
	.byte	W01
	.byte		        As4 , v108
	.byte	W01
	.byte		        Gs4 
	.byte	W01
	.byte		        As4 
	.byte	W01
	.byte		        Gs4 , v104
	.byte	W01
	.byte		        As4 , v108
	.byte	W01
	.byte		        Gs4 , v112
	.byte	W01
	.byte		        As4 , v108
	.byte	W01
	.byte		        Gs4 
	.byte	W01
	.byte		        As4 
	.byte	W01
	.byte		        Gs4 , v104
	.byte	W01
	.byte		        As4 , v108
	.byte	W01
	.byte		        Gs4 , v112
	.byte	W01
	.byte		        As4 , v108
	.byte	W01
	.byte		        Gs4 
	.byte	W01
	.byte		        As4 
	.byte	W01
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_brake):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_brake_pri	@ Priority
	.byte	se_brake_rev	@ Reverb

mAlignWord
	mPtr	se_brake_grp

	mPtr	se_brake_1

	.end
