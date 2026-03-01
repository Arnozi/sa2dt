	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_sonic_skid_attack_grp, voicegroup003
	.equ	se_sonic_skid_attack_pri, 20
	.equ	se_sonic_skid_attack_rev, reverb_set+0
	.equ	se_sonic_skid_attack_mvl, 120
	.equ	se_sonic_skid_attack_key, 0
	.equ	se_sonic_skid_attack_tbs, 1
	.equ	se_sonic_skid_attack_exg, 1
	.equ	se_sonic_skid_attack_cmp, 1

	mSectionRodata
	.global	C_DECL(se_sonic_skid_attack)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_sonic_skid_attack_1:
	.byte	KEYSH , se_sonic_skid_attack_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_sonic_skid_attack_tbs/2
	.byte		VOICE , 15
	.byte		VOL   , 127*se_sonic_skid_attack_mvl/mxv
	.byte		LFOS  , 45
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 27
	.byte		N17   , Ds3 , v092
	.byte	W17
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_sonic_skid_attack):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_sonic_skid_attack_pri	@ Priority
	.byte	se_sonic_skid_attack_rev	@ Reverb

mAlignWord
	mPtr	se_sonic_skid_attack_grp

	mPtr	se_sonic_skid_attack_1

	.end
