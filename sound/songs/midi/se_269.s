	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_269_grp, voicegroup005
	.equ	se_269_pri, 20
	.equ	se_269_rev, reverb_set+0
	.equ	se_269_mvl, 100
	.equ	se_269_key, 0
	.equ	se_269_tbs, 1
	.equ	se_269_exg, 1
	.equ	se_269_cmp, 1

	mSectionRodata
	.global	C_DECL(se_269)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_269_1:
	.byte	KEYSH , se_269_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*se_269_tbs/2
	.byte		VOICE , 69
	.byte		VOL   , 127*se_269_mvl/mxv
	.byte		LFOS  , 30
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 60
	.byte		BEND  , c_v-64
	.byte		N02   , Gn2 , v127
	.byte	W01
	.byte		VOL   , 127*se_269_mvl/mxv
	.byte		BEND  , c_v-59
	.byte	W01
	.byte		VOL   , 127*se_269_mvl/mxv
	.byte		BEND  , c_v-54
	.byte	W01
	.byte		VOL   , 127*se_269_mvl/mxv
	.byte		BEND  , c_v-49
	.byte		N02   , Gs3 
	.byte	W01
	.byte		VOL   , 117*se_269_mvl/mxv
	.byte		BEND  , c_v-43
	.byte	W01
	.byte		VOL   , 112*se_269_mvl/mxv
	.byte		BEND  , c_v-38
	.byte	W01
	.byte		VOL   , 107*se_269_mvl/mxv
	.byte		BEND  , c_v-33
	.byte	W01
	.byte		VOL   , 102*se_269_mvl/mxv
	.byte		BEND  , c_v-27
	.byte		N11   , En4 
	.byte	W01
	.byte		VOL   , 97*se_269_mvl/mxv
	.byte		BEND  , c_v-22
	.byte	W01
	.byte		VOL   , 92*se_269_mvl/mxv
	.byte		BEND  , c_v-17
	.byte	W01
	.byte		VOL   , 87*se_269_mvl/mxv
	.byte		BEND  , c_v-12
	.byte	W01
	.byte		VOL   , 82*se_269_mvl/mxv
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		VOL   , 77*se_269_mvl/mxv
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		VOL   , 72*se_269_mvl/mxv
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		VOL   , 67*se_269_mvl/mxv
	.byte		BEND  , c_v+10
	.byte	W01
	.byte		VOL   , 61*se_269_mvl/mxv
	.byte		BEND  , c_v+15
	.byte	W01
	.byte		VOL   , 56*se_269_mvl/mxv
	.byte		BEND  , c_v+20
	.byte	W01
	.byte		VOL   , 51*se_269_mvl/mxv
	.byte		BEND  , c_v+25
	.byte	W01
	.byte		VOL   , 47*se_269_mvl/mxv
	.byte		BEND  , c_v+31
	.byte	W01
	.byte		VOL   , 42*se_269_mvl/mxv
	.byte		BEND  , c_v+36
	.byte		N36   , Cn4 
	.byte	W01
	.byte		VOL   , 27*se_269_mvl/mxv
	.byte		BEND  , c_v+41
	.byte	W01
	.byte		VOL   , 26*se_269_mvl/mxv
	.byte		BEND  , c_v+47
	.byte	W01
	.byte		VOL   , 25*se_269_mvl/mxv
	.byte		BEND  , c_v+52
	.byte	W01
	.byte		VOL   , 23*se_269_mvl/mxv
	.byte	W01
	.byte		        22*se_269_mvl/mxv
	.byte	W01
	.byte		        20*se_269_mvl/mxv
	.byte	W01
	.byte		        18*se_269_mvl/mxv
	.byte	W01
	.byte		        18*se_269_mvl/mxv
	.byte	W01
	.byte		        16*se_269_mvl/mxv
	.byte	W01
	.byte		        14*se_269_mvl/mxv
	.byte	W01
	.byte		        13*se_269_mvl/mxv
	.byte	W01
	.byte		        12*se_269_mvl/mxv
	.byte	W01
	.byte		        9*se_269_mvl/mxv
	.byte	W01
	.byte		        9*se_269_mvl/mxv
	.byte	W01
	.byte		        8*se_269_mvl/mxv
	.byte	W01
	.byte		        6*se_269_mvl/mxv
	.byte	W01
	.byte		        4*se_269_mvl/mxv
	.byte	W21
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_269):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_269_pri	/* Priority */
	.byte	se_269_rev	/* Reverb */

mAlignWord
	mPtr	se_269_grp

	mPtr	se_269_1

	.end
