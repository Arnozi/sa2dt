	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_map_move_grp, voicegroup005
	.equ	se_map_move_pri, 20
	.equ	se_map_move_rev, reverb_set+0
	.equ	se_map_move_mvl, 96
	.equ	se_map_move_key, 0
	.equ	se_map_move_tbs, 1
	.equ	se_map_move_exg, 1
	.equ	se_map_move_cmp, 1

	mSectionRodata
	.global	C_DECL(se_map_move)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_map_move_1:
	.byte	KEYSH , se_map_move_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_map_move_tbs/2
	.byte		VOICE , 13
	.byte		VOL   , 127*se_map_move_mvl/mxv
	.byte		LFOS  , 45
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N05   , En5 , v127
	.byte	W01
	.byte		VOL   , 127*se_map_move_mvl/mxv
	.byte	W01
	.byte		        124*se_map_move_mvl/mxv
	.byte	W01
	.byte		        121*se_map_move_mvl/mxv
	.byte	W01
	.byte		        118*se_map_move_mvl/mxv
	.byte	W01
	.byte		        118*se_map_move_mvl/mxv
	.byte	W01
	.byte		        113*se_map_move_mvl/mxv
	.byte		N05   
	.byte	W01
	.byte		VOL   , 109*se_map_move_mvl/mxv
	.byte	W01
	.byte		        106*se_map_move_mvl/mxv
	.byte	W01
	.byte		        104*se_map_move_mvl/mxv
	.byte	W01
	.byte		        101*se_map_move_mvl/mxv
	.byte	W01
	.byte		        98*se_map_move_mvl/mxv
	.byte	W01
	.byte		        94*se_map_move_mvl/mxv
	.byte	W01
	.byte		        92*se_map_move_mvl/mxv
	.byte	W01
	.byte		        89*se_map_move_mvl/mxv
	.byte	W01
	.byte		        86*se_map_move_mvl/mxv
	.byte	W01
	.byte		        83*se_map_move_mvl/mxv
	.byte	W01
	.byte		        80*se_map_move_mvl/mxv
	.byte	W01
	.byte		        79*se_map_move_mvl/mxv
	.byte	W01
	.byte		        75*se_map_move_mvl/mxv
	.byte	W01
	.byte		        72*se_map_move_mvl/mxv
	.byte	W01
	.byte		        68*se_map_move_mvl/mxv
	.byte	W01
	.byte		        65*se_map_move_mvl/mxv
	.byte	W01
	.byte		        64*se_map_move_mvl/mxv
	.byte	W01
	.byte		        60*se_map_move_mvl/mxv
	.byte	W01
	.byte		        57*se_map_move_mvl/mxv
	.byte	W01
	.byte		        53*se_map_move_mvl/mxv
	.byte	W01
	.byte		        47*se_map_move_mvl/mxv
	.byte	W01
	.byte		        45*se_map_move_mvl/mxv
	.byte	W01
	.byte		        44*se_map_move_mvl/mxv
	.byte	W01
	.byte		        43*se_map_move_mvl/mxv
	.byte	W01
	.byte		        42*se_map_move_mvl/mxv
	.byte	W01
	.byte		        40*se_map_move_mvl/mxv
	.byte	W01
	.byte		        39*se_map_move_mvl/mxv
	.byte	W01
	.byte		        38*se_map_move_mvl/mxv
	.byte	W01
	.byte		        36*se_map_move_mvl/mxv
	.byte	W01
	.byte		        34*se_map_move_mvl/mxv
	.byte	W01
	.byte		        34*se_map_move_mvl/mxv
	.byte	W01
	.byte		        31*se_map_move_mvl/mxv
	.byte	W01
	.byte		        30*se_map_move_mvl/mxv
	.byte	W01
	.byte		        30*se_map_move_mvl/mxv
	.byte	W01
	.byte		        27*se_map_move_mvl/mxv
	.byte	W01
	.byte		        26*se_map_move_mvl/mxv
	.byte	W01
	.byte		        24*se_map_move_mvl/mxv
	.byte	W01
	.byte		        23*se_map_move_mvl/mxv
	.byte	W01
	.byte		        22*se_map_move_mvl/mxv
	.byte	W01
	.byte		        20*se_map_move_mvl/mxv
	.byte	W01
	.byte		        19*se_map_move_mvl/mxv
	.byte	W01
	.byte		        18*se_map_move_mvl/mxv
	.byte	W01
	.byte		        15*se_map_move_mvl/mxv
	.byte	W01
	.byte		        15*se_map_move_mvl/mxv
	.byte	W01
	.byte		        14*se_map_move_mvl/mxv
	.byte	W01
	.byte		        11*se_map_move_mvl/mxv
	.byte	W01
	.byte		        10*se_map_move_mvl/mxv
	.byte	W01
	.byte		        10*se_map_move_mvl/mxv
	.byte	W01
	.byte		        7*se_map_move_mvl/mxv
	.byte	W01
	.byte		        6*se_map_move_mvl/mxv
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_map_move):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_map_move_pri	@ Priority
	.byte	se_map_move_rev	@ Reverb

mAlignWord
	mPtr	se_map_move_grp

	mPtr	se_map_move_1

	.end
