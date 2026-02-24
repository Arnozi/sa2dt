	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_music_plant_notes_5_grp, voicegroup006
	.equ	se_music_plant_notes_5_pri, 20
	.equ	se_music_plant_notes_5_rev, reverb_set+0
	.equ	se_music_plant_notes_5_mvl, 127
	.equ	se_music_plant_notes_5_key, 0
	.equ	se_music_plant_notes_5_tbs, 1
	.equ	se_music_plant_notes_5_exg, 1
	.equ	se_music_plant_notes_5_cmp, 1

	mSectionRodata
	.global	C_DECL(se_music_plant_notes_5)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_music_plant_notes_5_1:
	.byte	KEYSH , se_music_plant_notes_5_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 90*se_music_plant_notes_5_tbs/2
	.byte		VOICE , 6
	.byte		VOL   , 127*se_music_plant_notes_5_mvl/mxv
	.byte		MODT  , 0
	.byte		LFOS  , 22
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		BENDR , 20
	.byte		N68   , Gn2 , v127
	.byte	W68
	.byte	W01
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_music_plant_notes_5):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_music_plant_notes_5_pri	/* Priority */
	.byte	se_music_plant_notes_5_rev	/* Reverb */

mAlignWord
	mPtr	se_music_plant_notes_5_grp

	mPtr	se_music_plant_notes_5_1

	.end
