	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_music_plant_exit_horn_grp, voicegroup006
	.equ	se_music_plant_exit_horn_pri, 20
	.equ	se_music_plant_exit_horn_rev, reverb_set+0
	.equ	se_music_plant_exit_horn_mvl, 120
	.equ	se_music_plant_exit_horn_key, 0
	.equ	se_music_plant_exit_horn_tbs, 1
	.equ	se_music_plant_exit_horn_exg, 1
	.equ	se_music_plant_exit_horn_cmp, 1

	mSectionRodata
	.global	C_DECL(se_music_plant_exit_horn)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_music_plant_exit_horn_1:
	.byte	KEYSH , se_music_plant_exit_horn_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 76*se_music_plant_exit_horn_tbs/2
	.byte		VOICE , 22
	.byte		VOL   , 127*se_music_plant_exit_horn_mvl/mxv
	.byte		MODT  , 0
	.byte		LFOS  , 22
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		BENDR , 20
	.byte		N02   , Fn2 , v127
	.byte	W03
	.byte		N02   
	.byte	W04
	.byte		N03   
	.byte	W05
	.byte		N36   , As2 
	.byte	W36
	.byte	W01
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_music_plant_exit_horn):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_music_plant_exit_horn_pri	@ Priority
	.byte	se_music_plant_exit_horn_rev	@ Reverb

mAlignWord
	mPtr	se_music_plant_exit_horn_grp

	mPtr	se_music_plant_exit_horn_1

	.end
