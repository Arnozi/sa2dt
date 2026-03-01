	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_music_plant_crash_hit_grp, voicegroup006
	.equ	se_music_plant_crash_hit_pri, 20
	.equ	se_music_plant_crash_hit_rev, reverb_set+0
	.equ	se_music_plant_crash_hit_mvl, 127
	.equ	se_music_plant_crash_hit_key, 0
	.equ	se_music_plant_crash_hit_tbs, 1
	.equ	se_music_plant_crash_hit_exg, 1
	.equ	se_music_plant_crash_hit_cmp, 1

	mSectionRodata
	.global	C_DECL(se_music_plant_crash_hit)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_music_plant_crash_hit_1:
	.byte	KEYSH , se_music_plant_crash_hit_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 90*se_music_plant_crash_hit_tbs/2
	.byte		VOICE , 5
	.byte		VOL   , 127*se_music_plant_crash_hit_mvl/mxv
	.byte		MODT  , 0
	.byte		LFOS  , 22
	.byte		PAN   , c_v+0
	.byte		MOD   , 12
	.byte		BENDR , 20
	.byte		N68   , Cn3 , v127
	.byte	W68
	.byte	W01
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_music_plant_crash_hit):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_music_plant_crash_hit_pri	@ Priority
	.byte	se_music_plant_crash_hit_rev	@ Reverb

mAlignWord
	mPtr	se_music_plant_crash_hit_grp

	mPtr	se_music_plant_crash_hit_1

	.end
