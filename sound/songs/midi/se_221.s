	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_221_grp, voicegroup005
	.equ	se_221_pri, 20
	.equ	se_221_rev, reverb_set+0
	.equ	se_221_mvl, 100
	.equ	se_221_key, 0
	.equ	se_221_tbs, 1
	.equ	se_221_exg, 1
	.equ	se_221_cmp, 1

	mSectionRodata
	.global	C_DECL(se_221)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_221_1:
	.byte	KEYSH , se_221_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 74*se_221_tbs/2
	.byte		VOICE , 21
	.byte		VOL   , 127*se_221_mvl/mxv
	.byte		BENDR , 18
	.byte		LFOS  , 30
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 60
	.byte		BEND  , c_v+63
	.byte		N30   , Fn4 , v127
	.byte	W01
	.byte		VOL   , 127*se_221_mvl/mxv
	.byte		BEND  , c_v+32
	.byte	W01
	.byte		VOL   , 127*se_221_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 127*se_221_mvl/mxv
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		VOL   , 122*se_221_mvl/mxv
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		VOL   , 117*se_221_mvl/mxv
	.byte		BEND  , c_v-33
	.byte	W01
	.byte		VOL   , 111*se_221_mvl/mxv
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		VOL   , 106*se_221_mvl/mxv
	.byte		BEND  , c_v+31
	.byte	W01
	.byte		VOL   , 101*se_221_mvl/mxv
	.byte		BEND  , c_v+63
	.byte	W01
	.byte		VOL   , 94*se_221_mvl/mxv
	.byte		BEND  , c_v+56
	.byte	W01
	.byte		VOL   , 89*se_221_mvl/mxv
	.byte		BEND  , c_v+49
	.byte	W01
	.byte		VOL   , 84*se_221_mvl/mxv
	.byte		BEND  , c_v+42
	.byte	W01
	.byte		VOL   , 79*se_221_mvl/mxv
	.byte		BEND  , c_v+35
	.byte	W01
	.byte		VOL   , 74*se_221_mvl/mxv
	.byte		BEND  , c_v+28
	.byte	W01
	.byte		VOL   , 69*se_221_mvl/mxv
	.byte		BEND  , c_v+21
	.byte	W01
	.byte		VOL   , 63*se_221_mvl/mxv
	.byte		BEND  , c_v+14
	.byte	W01
	.byte		VOL   , 58*se_221_mvl/mxv
	.byte		BEND  , c_v+7
	.byte	W01
	.byte		VOL   , 53*se_221_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 47*se_221_mvl/mxv
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		VOL   , 42*se_221_mvl/mxv
	.byte		BEND  , c_v-14
	.byte	W01
	.byte		VOL   , 31*se_221_mvl/mxv
	.byte		BEND  , c_v-21
	.byte	W01
	.byte		VOL   , 23*se_221_mvl/mxv
	.byte		BEND  , c_v-28
	.byte	W01
	.byte		VOL   , 16*se_221_mvl/mxv
	.byte		BEND  , c_v-35
	.byte	W01
	.byte		VOL   , 8*se_221_mvl/mxv
	.byte		BEND  , c_v-42
	.byte	W01
	.byte		VOL   , 0*se_221_mvl/mxv
	.byte		BEND  , c_v-49
	.byte	W01
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-64
	.byte	W05
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_221):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_221_pri	/* Priority */
	.byte	se_221_rev	/* Reverb */

mAlignWord
	mPtr	se_221_grp

	mPtr	se_221_1

	.end
