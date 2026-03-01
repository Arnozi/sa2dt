	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_sonic_insta_shield_grp, voicegroup000
	.equ	se_sonic_insta_shield_pri, 20
	.equ	se_sonic_insta_shield_rev, reverb_set+0
	.equ	se_sonic_insta_shield_mvl, 75
	.equ	se_sonic_insta_shield_key, 0
	.equ	se_sonic_insta_shield_tbs, 1
	.equ	se_sonic_insta_shield_exg, 1
	.equ	se_sonic_insta_shield_cmp, 1

	mSectionRodata
	.global	C_DECL(se_sonic_insta_shield)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_sonic_insta_shield_1:
	.byte	KEYSH , se_sonic_insta_shield_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_sonic_insta_shield_tbs/2
	.byte		VOICE , 51
	.byte		VOL   , 127*se_sonic_insta_shield_mvl/mxv
	.byte		BENDR , 26
	.byte		LFOS  , 127
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+47
	.byte		N05   , Fn1 , v127
	.byte	W01
	.byte		VOL   , 122*se_sonic_insta_shield_mvl/mxv
	.byte		BEND  , c_v+46
	.byte	W01
	.byte		VOL   , 119*se_sonic_insta_shield_mvl/mxv
	.byte		BEND  , c_v+44
	.byte	W01
	.byte		VOL   , 114*se_sonic_insta_shield_mvl/mxv
	.byte		BEND  , c_v+42
	.byte	W01
	.byte		VOL   , 111*se_sonic_insta_shield_mvl/mxv
	.byte		BEND  , c_v+41
	.byte		N15   , Ds2 
	.byte	W01
	.byte		VOL   , 105*se_sonic_insta_shield_mvl/mxv
	.byte		BEND  , c_v+39
	.byte	W01
	.byte		VOL   , 102*se_sonic_insta_shield_mvl/mxv
	.byte		BEND  , c_v+37
	.byte	W01
	.byte		VOL   , 97*se_sonic_insta_shield_mvl/mxv
	.byte		BEND  , c_v+36
	.byte	W01
	.byte		VOL   , 94*se_sonic_insta_shield_mvl/mxv
	.byte		BEND  , c_v+34
	.byte	W01
	.byte		VOL   , 89*se_sonic_insta_shield_mvl/mxv
	.byte		BEND  , c_v+32
	.byte	W01
	.byte		VOL   , 85*se_sonic_insta_shield_mvl/mxv
	.byte		BEND  , c_v+30
	.byte	W01
	.byte		VOL   , 80*se_sonic_insta_shield_mvl/mxv
	.byte		BEND  , c_v+29
	.byte	W01
	.byte		VOL   , 77*se_sonic_insta_shield_mvl/mxv
	.byte		BEND  , c_v+27
	.byte	W01
	.byte		VOL   , 72*se_sonic_insta_shield_mvl/mxv
	.byte		BEND  , c_v+25
	.byte	W01
	.byte		VOL   , 68*se_sonic_insta_shield_mvl/mxv
	.byte		BEND  , c_v+24
	.byte	W01
	.byte		VOL   , 63*se_sonic_insta_shield_mvl/mxv
	.byte		BEND  , c_v+22
	.byte	W01
	.byte		VOL   , 60*se_sonic_insta_shield_mvl/mxv
	.byte		BEND  , c_v+20
	.byte	W01
	.byte		VOL   , 56*se_sonic_insta_shield_mvl/mxv
	.byte		BEND  , c_v+18
	.byte	W01
	.byte		VOL   , 51*se_sonic_insta_shield_mvl/mxv
	.byte		BEND  , c_v+17
	.byte	W01
	.byte		VOL   , 46*se_sonic_insta_shield_mvl/mxv
	.byte		BEND  , c_v+15
	.byte	W01
	.byte		VOL   , 43*se_sonic_insta_shield_mvl/mxv
	.byte		BEND  , c_v+13
	.byte	W01
	.byte		VOL   , 39*se_sonic_insta_shield_mvl/mxv
	.byte		BEND  , c_v+12
	.byte	W01
	.byte		VOL   , 34*se_sonic_insta_shield_mvl/mxv
	.byte		BEND  , c_v+10
	.byte	W01
	.byte		VOL   , 29*se_sonic_insta_shield_mvl/mxv
	.byte		BEND  , c_v+8
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+3
	.byte	W01
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-5
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_sonic_insta_shield):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_sonic_insta_shield_pri	@ Priority
	.byte	se_sonic_insta_shield_rev	@ Reverb

mAlignWord
	mPtr	se_sonic_insta_shield_grp

	mPtr	se_sonic_insta_shield_1

	.end
