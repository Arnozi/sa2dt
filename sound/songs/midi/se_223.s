	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_223_grp, voicegroup005
	.equ	se_223_pri, 20
	.equ	se_223_rev, reverb_set+0
	.equ	se_223_mvl, 100
	.equ	se_223_key, 0
	.equ	se_223_tbs, 1
	.equ	se_223_exg, 1
	.equ	se_223_cmp, 1

	mSectionRodata
	.global	C_DECL(se_223)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_223_1:
	.byte	KEYSH , se_223_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 74*se_223_tbs/2
	.byte		VOICE , 23
	.byte		VOL   , 127*se_223_mvl/mxv
	.byte		LFOS  , 60
	.byte		BENDR , 15
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N28   , Bn2 , v127
	.byte	W01
	.byte		VOL   , 122*se_223_mvl/mxv
	.byte	W01
	.byte		        119*se_223_mvl/mxv
	.byte	W01
	.byte		        115*se_223_mvl/mxv
	.byte	W01
	.byte		        111*se_223_mvl/mxv
	.byte	W01
	.byte		        107*se_223_mvl/mxv
	.byte	W01
	.byte		        102*se_223_mvl/mxv
	.byte	W01
	.byte		        98*se_223_mvl/mxv
	.byte	W01
	.byte		        94*se_223_mvl/mxv
	.byte	W01
	.byte		        89*se_223_mvl/mxv
	.byte	W01
	.byte		        86*se_223_mvl/mxv
	.byte	W01
	.byte		        82*se_223_mvl/mxv
	.byte	W01
	.byte		        77*se_223_mvl/mxv
	.byte	W01
	.byte		        73*se_223_mvl/mxv
	.byte	W01
	.byte		        69*se_223_mvl/mxv
	.byte	W01
	.byte		        65*se_223_mvl/mxv
	.byte	W01
	.byte		        61*se_223_mvl/mxv
	.byte	W01
	.byte		        56*se_223_mvl/mxv
	.byte	W01
	.byte		        51*se_223_mvl/mxv
	.byte	W01
	.byte		        47*se_223_mvl/mxv
	.byte	W01
	.byte		        44*se_223_mvl/mxv
	.byte	W01
	.byte		        40*se_223_mvl/mxv
	.byte	W01
	.byte		        36*se_223_mvl/mxv
	.byte	W01
	.byte		        32*se_223_mvl/mxv
	.byte	W01
	.byte		        27*se_223_mvl/mxv
	.byte	W01
	.byte		        22*se_223_mvl/mxv
	.byte	W01
	.byte		        22*se_223_mvl/mxv
	.byte	W01
	.byte		        21*se_223_mvl/mxv
	.byte	W01
	.byte		        20*se_223_mvl/mxv
	.byte	W01
	.byte		        18*se_223_mvl/mxv
	.byte	W01
	.byte		        18*se_223_mvl/mxv
	.byte	W01
	.byte		        18*se_223_mvl/mxv
	.byte	W01
	.byte		        17*se_223_mvl/mxv
	.byte	W01
	.byte		        16*se_223_mvl/mxv
	.byte	W01
	.byte		        14*se_223_mvl/mxv
	.byte	W01
	.byte		        14*se_223_mvl/mxv
	.byte	W01
	.byte		        14*se_223_mvl/mxv
	.byte	W01
	.byte		        13*se_223_mvl/mxv
	.byte	W01
	.byte		        12*se_223_mvl/mxv
	.byte	W01
	.byte		        11*se_223_mvl/mxv
	.byte	W01
	.byte		        9*se_223_mvl/mxv
	.byte	W01
	.byte		        9*se_223_mvl/mxv
	.byte	W01
	.byte		        9*se_223_mvl/mxv
	.byte	W01
	.byte		        8*se_223_mvl/mxv
	.byte	W01
	.byte		        7*se_223_mvl/mxv
	.byte	W01
	.byte		        6*se_223_mvl/mxv
	.byte	W01
	.byte		        4*se_223_mvl/mxv
	.byte	W01
	.byte		        4*se_223_mvl/mxv
	.byte	W01
	.byte		        4*se_223_mvl/mxv
	.byte	W01
	.byte		        3*se_223_mvl/mxv
	.byte	W01
	.byte		        2*se_223_mvl/mxv
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_223):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_223_pri	@ Priority
	.byte	se_223_rev	@ Reverb

mAlignWord
	mPtr	se_223_grp

	mPtr	se_223_1

	.end
