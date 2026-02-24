	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_spin_dash_release_grp, voicegroup000
	.equ	se_spin_dash_release_pri, 20
	.equ	se_spin_dash_release_rev, reverb_set+0
	.equ	se_spin_dash_release_mvl, 75
	.equ	se_spin_dash_release_key, 0
	.equ	se_spin_dash_release_tbs, 1
	.equ	se_spin_dash_release_exg, 1
	.equ	se_spin_dash_release_cmp, 1

	mSectionRodata
	.global	C_DECL(se_spin_dash_release)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_spin_dash_release_1:
	.byte	KEYSH , se_spin_dash_release_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*se_spin_dash_release_tbs/2
	.byte		VOICE , 51
	.byte		VOL   , 127*se_spin_dash_release_mvl/mxv
	.byte		BENDR , 26
	.byte		LFOS  , 127
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+63
	.byte		N48   , Gs1 , v127
	.byte	W01
	.byte		VOL   , 124*se_spin_dash_release_mvl/mxv
	.byte		BEND  , c_v+62
	.byte	W01
	.byte		VOL   , 122*se_spin_dash_release_mvl/mxv
	.byte		BEND  , c_v+60
	.byte	W01
	.byte		VOL   , 121*se_spin_dash_release_mvl/mxv
	.byte		BEND  , c_v+58
	.byte	W01
	.byte		VOL   , 119*se_spin_dash_release_mvl/mxv
	.byte		BEND  , c_v+57
	.byte	W01
	.byte		VOL   , 117*se_spin_dash_release_mvl/mxv
	.byte		BEND  , c_v+55
	.byte	W01
	.byte		VOL   , 114*se_spin_dash_release_mvl/mxv
	.byte		BEND  , c_v+53
	.byte	W01
	.byte		VOL   , 112*se_spin_dash_release_mvl/mxv
	.byte		BEND  , c_v+52
	.byte	W01
	.byte		VOL   , 109*se_spin_dash_release_mvl/mxv
	.byte		BEND  , c_v+50
	.byte	W01
	.byte		VOL   , 107*se_spin_dash_release_mvl/mxv
	.byte		BEND  , c_v+48
	.byte	W01
	.byte		VOL   , 105*se_spin_dash_release_mvl/mxv
	.byte		BEND  , c_v+46
	.byte	W01
	.byte		VOL   , 104*se_spin_dash_release_mvl/mxv
	.byte		BEND  , c_v+45
	.byte	W01
	.byte		VOL   , 102*se_spin_dash_release_mvl/mxv
	.byte		BEND  , c_v+43
	.byte	W01
	.byte		VOL   , 100*se_spin_dash_release_mvl/mxv
	.byte		BEND  , c_v+41
	.byte	W01
	.byte		VOL   , 97*se_spin_dash_release_mvl/mxv
	.byte		BEND  , c_v+40
	.byte	W01
	.byte		VOL   , 95*se_spin_dash_release_mvl/mxv
	.byte		BEND  , c_v+38
	.byte	W01
	.byte		VOL   , 92*se_spin_dash_release_mvl/mxv
	.byte		BEND  , c_v+36
	.byte	W01
	.byte		VOL   , 90*se_spin_dash_release_mvl/mxv
	.byte		BEND  , c_v+34
	.byte	W01
	.byte		VOL   , 89*se_spin_dash_release_mvl/mxv
	.byte		BEND  , c_v+33
	.byte	W01
	.byte		VOL   , 87*se_spin_dash_release_mvl/mxv
	.byte		BEND  , c_v+31
	.byte	W01
	.byte		VOL   , 85*se_spin_dash_release_mvl/mxv
	.byte		BEND  , c_v+29
	.byte	W01
	.byte		VOL   , 83*se_spin_dash_release_mvl/mxv
	.byte		BEND  , c_v+28
	.byte	W01
	.byte		VOL   , 80*se_spin_dash_release_mvl/mxv
	.byte		BEND  , c_v+26
	.byte	W01
	.byte		VOL   , 78*se_spin_dash_release_mvl/mxv
	.byte		BEND  , c_v+24
	.byte	W01
	.byte		VOL   , 75*se_spin_dash_release_mvl/mxv
	.byte		BEND  , c_v+22
	.byte	W01
	.byte		VOL   , 68*se_spin_dash_release_mvl/mxv
	.byte		BEND  , c_v+21
	.byte	W01
	.byte		VOL   , 65*se_spin_dash_release_mvl/mxv
	.byte		BEND  , c_v+19
	.byte	W01
	.byte		VOL   , 53*se_spin_dash_release_mvl/mxv
	.byte		BEND  , c_v+17
	.byte	W01
	.byte		VOL   , 50*se_spin_dash_release_mvl/mxv
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		VOL   , 45*se_spin_dash_release_mvl/mxv
	.byte		BEND  , c_v+14
	.byte	W01
	.byte		VOL   , 41*se_spin_dash_release_mvl/mxv
	.byte		BEND  , c_v+12
	.byte	W01
	.byte		VOL   , 36*se_spin_dash_release_mvl/mxv
	.byte		BEND  , c_v+11
	.byte	W01
	.byte		VOL   , 31*se_spin_dash_release_mvl/mxv
	.byte	W01
	.byte		        26*se_spin_dash_release_mvl/mxv
	.byte	W01
	.byte		        23*se_spin_dash_release_mvl/mxv
	.byte	W01
	.byte		        17*se_spin_dash_release_mvl/mxv
	.byte	W01
	.byte		        14*se_spin_dash_release_mvl/mxv
	.byte	W01
	.byte		        9*se_spin_dash_release_mvl/mxv
	.byte	W12
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_spin_dash_release):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_spin_dash_release_pri	/* Priority */
	.byte	se_spin_dash_release_rev	/* Reverb */

mAlignWord
	mPtr	se_spin_dash_release_grp

	mPtr	se_spin_dash_release_1

	.end
