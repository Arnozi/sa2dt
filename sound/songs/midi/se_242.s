	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_242_grp, voicegroup005
	.equ	se_242_pri, 20
	.equ	se_242_rev, reverb_set+0
	.equ	se_242_mvl, 100
	.equ	se_242_key, 0
	.equ	se_242_tbs, 1
	.equ	se_242_exg, 1
	.equ	se_242_cmp, 1

	mSectionRodata
	.global	C_DECL(se_242)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_242_1:
	.byte	KEYSH , se_242_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_242_tbs/2
	.byte		VOICE , 42
	.byte		MOD   , 49
	.byte		VOL   , 127*se_242_mvl/mxv
	.byte		BENDR , 26
	.byte		LFOS  , 127
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+63
	.byte		N05   , Gs1 , v127
	.byte	W01
	.byte		VOL   , 125*se_242_mvl/mxv
	.byte		BEND  , c_v+62
	.byte	W01
	.byte		VOL   , 122*se_242_mvl/mxv
	.byte		BEND  , c_v+60
	.byte	W01
	.byte		VOL   , 121*se_242_mvl/mxv
	.byte		BEND  , c_v+58
	.byte	W01
	.byte		VOL   , 119*se_242_mvl/mxv
	.byte		BEND  , c_v+57
	.byte	W01
	.byte		VOL   , 117*se_242_mvl/mxv
	.byte		BEND  , c_v+55
	.byte	W01
	.byte		VOL   , 115*se_242_mvl/mxv
	.byte		BEND  , c_v+53
	.byte		N05   
	.byte	W01
	.byte		VOL   , 112*se_242_mvl/mxv
	.byte		BEND  , c_v+52
	.byte	W01
	.byte		VOL   , 110*se_242_mvl/mxv
	.byte		BEND  , c_v+50
	.byte	W01
	.byte		VOL   , 108*se_242_mvl/mxv
	.byte		BEND  , c_v+48
	.byte	W01
	.byte		VOL   , 106*se_242_mvl/mxv
	.byte		BEND  , c_v+46
	.byte	W01
	.byte		VOL   , 103*se_242_mvl/mxv
	.byte		BEND  , c_v+45
	.byte	W01
	.byte		VOL   , 102*se_242_mvl/mxv
	.byte		BEND  , c_v+43
	.byte		N30   
	.byte	W01
	.byte		VOL   , 100*se_242_mvl/mxv
	.byte		BEND  , c_v+41
	.byte	W01
	.byte		VOL   , 98*se_242_mvl/mxv
	.byte		BEND  , c_v+40
	.byte	W01
	.byte		VOL   , 94*se_242_mvl/mxv
	.byte		BEND  , c_v+38
	.byte	W01
	.byte		VOL   , 93*se_242_mvl/mxv
	.byte		BEND  , c_v+36
	.byte	W01
	.byte		VOL   , 91*se_242_mvl/mxv
	.byte		BEND  , c_v+34
	.byte	W01
	.byte		VOL   , 89*se_242_mvl/mxv
	.byte		BEND  , c_v+33
	.byte	W01
	.byte		VOL   , 87*se_242_mvl/mxv
	.byte		BEND  , c_v+31
	.byte	W01
	.byte		VOL   , 84*se_242_mvl/mxv
	.byte		BEND  , c_v+29
	.byte	W01
	.byte		VOL   , 83*se_242_mvl/mxv
	.byte		BEND  , c_v+28
	.byte	W01
	.byte		VOL   , 81*se_242_mvl/mxv
	.byte		BEND  , c_v+26
	.byte	W01
	.byte		VOL   , 78*se_242_mvl/mxv
	.byte		BEND  , c_v+24
	.byte	W01
	.byte		VOL   , 75*se_242_mvl/mxv
	.byte		BEND  , c_v+22
	.byte	W01
	.byte		VOL   , 68*se_242_mvl/mxv
	.byte		BEND  , c_v+21
	.byte	W01
	.byte		VOL   , 65*se_242_mvl/mxv
	.byte		BEND  , c_v+19
	.byte	W01
	.byte		VOL   , 54*se_242_mvl/mxv
	.byte		BEND  , c_v+17
	.byte	W01
	.byte		VOL   , 50*se_242_mvl/mxv
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		VOL   , 45*se_242_mvl/mxv
	.byte		BEND  , c_v+14
	.byte	W01
	.byte		VOL   , 41*se_242_mvl/mxv
	.byte		BEND  , c_v+12
	.byte	W01
	.byte		VOL   , 36*se_242_mvl/mxv
	.byte		BEND  , c_v+11
	.byte	W01
	.byte		VOL   , 32*se_242_mvl/mxv
	.byte	W01
	.byte		        27*se_242_mvl/mxv
	.byte	W01
	.byte		        23*se_242_mvl/mxv
	.byte	W01
	.byte		        18*se_242_mvl/mxv
	.byte	W01
	.byte		        14*se_242_mvl/mxv
	.byte	W01
	.byte		        9*se_242_mvl/mxv
	.byte	W06
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_242):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_242_pri	@ Priority
	.byte	se_242_rev	@ Reverb

mAlignWord
	mPtr	se_242_grp

	mPtr	se_242_1

	.end
