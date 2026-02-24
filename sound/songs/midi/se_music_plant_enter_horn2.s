	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_music_plant_enter_horn2_grp, voicegroup006
	.equ	se_music_plant_enter_horn2_pri, 20
	.equ	se_music_plant_enter_horn2_rev, reverb_set+0
	.equ	se_music_plant_enter_horn2_mvl, 120
	.equ	se_music_plant_enter_horn2_key, 0
	.equ	se_music_plant_enter_horn2_tbs, 1
	.equ	se_music_plant_enter_horn2_exg, 1
	.equ	se_music_plant_enter_horn2_cmp, 1

	mSectionRodata
	.global	C_DECL(se_music_plant_enter_horn2)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_music_plant_enter_horn2_1:
	.byte	KEYSH , se_music_plant_enter_horn2_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 76*se_music_plant_enter_horn2_tbs/2
	.byte		VOICE , 25
	.byte		VOL   , 127*se_music_plant_enter_horn2_mvl/mxv
	.byte		MODT  , 0
	.byte		LFOS  , 22
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		BENDR , 20
	.byte		N90   , As2 , v127
	.byte	W90
	.byte	W01
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_music_plant_enter_horn2):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_music_plant_enter_horn2_pri	/* Priority */
	.byte	se_music_plant_enter_horn2_rev	/* Reverb */

mAlignWord
	mPtr	se_music_plant_enter_horn2_grp

	mPtr	se_music_plant_enter_horn2_1

	.end
