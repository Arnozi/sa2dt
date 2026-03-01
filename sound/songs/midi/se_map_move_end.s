	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_map_move_end_grp, voicegroup005
	.equ	se_map_move_end_pri, 20
	.equ	se_map_move_end_rev, reverb_set+0
	.equ	se_map_move_end_mvl, 98
	.equ	se_map_move_end_key, 0
	.equ	se_map_move_end_tbs, 1
	.equ	se_map_move_end_exg, 1
	.equ	se_map_move_end_cmp, 1

	mSectionRodata
	.global	C_DECL(se_map_move_end)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_map_move_end_1:
	.byte	KEYSH , se_map_move_end_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 74*se_map_move_end_tbs/2
	.byte		VOICE , 15
	.byte		VOL   , 127*se_map_move_end_mvl/mxv
	.byte		LFOS  , 48
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 20
	.byte		BEND  , c_v+63
	.byte		N48   , Ds2 , v104
	.byte	W01
	.byte		VOL   , 125*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        121*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        118*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        116*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        113*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        111*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        107*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        104*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        102*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        99*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        96*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        93*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        90*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        87*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        85*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        81*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        78*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        77*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        73*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        70*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        67*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        64*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        63*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        59*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        56*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        52*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        46*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        45*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        43*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        42*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        41*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        39*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        38*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        37*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        35*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        33*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        33*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        30*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        29*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        29*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        26*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        25*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        24*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        23*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        21*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        20*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        19*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        17*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        15*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        15*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        13*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        11*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        10*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        10*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        7*se_map_move_end_mvl/mxv
	.byte	W01
	.byte		        6*se_map_move_end_mvl/mxv
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_map_move_end):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_map_move_end_pri	@ Priority
	.byte	se_map_move_end_rev	@ Reverb

mAlignWord
	mPtr	se_map_move_end_grp

	mPtr	se_map_move_end_1

	.end
