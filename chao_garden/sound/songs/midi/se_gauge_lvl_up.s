	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_gauge_lvl_up_grp, voicegroup000
	.equ	se_gauge_lvl_up_pri, 20
	.equ	se_gauge_lvl_up_rev, reverb_set+0
	.equ	se_gauge_lvl_up_mvl, 100
	.equ	se_gauge_lvl_up_key, 0
	.equ	se_gauge_lvl_up_tbs, 1
	.equ	se_gauge_lvl_up_exg, 1
	.equ	se_gauge_lvl_up_cmp, 1

	mSectionRodata
	.global	C_DECL(se_gauge_lvl_up)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_gauge_lvl_up_1:
	.byte	KEYSH , se_gauge_lvl_up_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_gauge_lvl_up_tbs/2
	.byte		VOICE , 60
	.byte		VOL   , 127*se_gauge_lvl_up_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 6
	.byte		N03   , As3 , v088
	.byte	W03
	.byte		        Dn4 , v112
	.byte	W03
	.byte		        Fn4 , v108
	.byte	W03
	.byte		        Dn4 , v112
	.byte	W03
	.byte		        Fn4 , v108
	.byte	W03
	.byte		        As4 , v104
	.byte	W03
	.byte		        Fn4 , v108
	.byte	W03
	.byte		        As4 , v104
	.byte	W03
	.byte		        Dn5 , v108
	.byte	W03
	.byte		        As4 , v096
	.byte	W03
	.byte		        Dn5 , v112
	.byte	W03
	.byte		        Fn5 , v108
	.byte	W03
	.byte		N24   , As5 , v112
	.byte	W24
	.byte	W03
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_gauge_lvl_up):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_gauge_lvl_up_pri	@ Priority
	.byte	se_gauge_lvl_up_rev	@ Reverb

mAlignWord
	mPtr	se_gauge_lvl_up_grp

	mPtr	se_gauge_lvl_up_1

	.end
