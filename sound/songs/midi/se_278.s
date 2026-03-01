	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_278_grp, voicegroup005
	.equ	se_278_pri, 20
	.equ	se_278_rev, reverb_set+0
	.equ	se_278_mvl, 100
	.equ	se_278_key, 0
	.equ	se_278_tbs, 1
	.equ	se_278_exg, 1
	.equ	se_278_cmp, 1

	mSectionRodata
	.global	C_DECL(se_278)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_278_1:
	.byte	KEYSH , se_278_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_278_tbs/2
	.byte		VOICE , 78
	.byte		VOL   , 127*se_278_mvl/mxv
	.byte		LFOS  , 90
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 49
	.byte		N04   , Bn4 , v127
	.byte	W04
	.byte		N32   , En4 , v120
	.byte	W09
	.byte		VOL   , 122*se_278_mvl/mxv
	.byte	W01
	.byte		        117*se_278_mvl/mxv
	.byte	W01
	.byte		        112*se_278_mvl/mxv
	.byte	W01
	.byte		        106*se_278_mvl/mxv
	.byte	W01
	.byte		        101*se_278_mvl/mxv
	.byte	W01
	.byte		        96*se_278_mvl/mxv
	.byte	W01
	.byte		        89*se_278_mvl/mxv
	.byte	W01
	.byte		        84*se_278_mvl/mxv
	.byte	W01
	.byte		        79*se_278_mvl/mxv
	.byte	W01
	.byte		        75*se_278_mvl/mxv
	.byte	W01
	.byte		        69*se_278_mvl/mxv
	.byte	W01
	.byte		        64*se_278_mvl/mxv
	.byte	W01
	.byte		        59*se_278_mvl/mxv
	.byte	W01
	.byte		        53*se_278_mvl/mxv
	.byte	W01
	.byte		        47*se_278_mvl/mxv
	.byte	W01
	.byte		        42*se_278_mvl/mxv
	.byte	W01
	.byte		        37*se_278_mvl/mxv
	.byte	W01
	.byte		        32*se_278_mvl/mxv
	.byte	W01
	.byte		        27*se_278_mvl/mxv
	.byte	W01
	.byte		        22*se_278_mvl/mxv
	.byte	W01
	.byte		        16*se_278_mvl/mxv
	.byte	W01
	.byte		        11*se_278_mvl/mxv
	.byte	W01
	.byte		        6*se_278_mvl/mxv
	.byte	W03
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_278):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_278_pri	@ Priority
	.byte	se_278_rev	@ Reverb

mAlignWord
	mPtr	se_278_grp

	mPtr	se_278_1

	.end
