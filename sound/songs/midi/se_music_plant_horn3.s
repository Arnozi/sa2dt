	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_music_plant_horn3_grp, voicegroup006
	.equ	se_music_plant_horn3_pri, 20
	.equ	se_music_plant_horn3_rev, reverb_set+0
	.equ	se_music_plant_horn3_mvl, 120
	.equ	se_music_plant_horn3_key, 0
	.equ	se_music_plant_horn3_tbs, 1
	.equ	se_music_plant_horn3_exg, 1
	.equ	se_music_plant_horn3_cmp, 1

	mSectionRodata
	.global	C_DECL(se_music_plant_horn3)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_music_plant_horn3_1:
	.byte	KEYSH , se_music_plant_horn3_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 90*se_music_plant_horn3_tbs/2
	.byte		VOICE , 25
	.byte		VOL   , 127*se_music_plant_horn3_mvl/mxv
	.byte		MODT  , 0
	.byte		LFOS  , 22
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		BENDR , 20
	.byte		N02   , Cs3 , v104
	.byte		N06   , Dn3 , v100
	.byte	W05
	.byte		N04   , Cn3 
	.byte	W07
	.byte		N02   , As2 , v116
	.byte	W05
	.byte		N01   , En3 , v127
	.byte		N24   , Fn3 , v120
	.byte	W24
	.byte	W03
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_music_plant_horn3):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_music_plant_horn3_pri	@ Priority
	.byte	se_music_plant_horn3_rev	@ Reverb

mAlignWord
	mPtr	se_music_plant_horn3_grp

	mPtr	se_music_plant_horn3_1

	.end
