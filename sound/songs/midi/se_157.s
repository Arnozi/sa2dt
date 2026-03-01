	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_157_grp, voicegroup003
	.equ	se_157_pri, 20
	.equ	se_157_rev, reverb_set+0
	.equ	se_157_mvl, 90
	.equ	se_157_key, 0
	.equ	se_157_tbs, 1
	.equ	se_157_exg, 1
	.equ	se_157_cmp, 1

	mSectionRodata
	.global	C_DECL(se_157)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_157_1:
	.byte	KEYSH , se_157_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_157_tbs/2
	.byte		VOICE , 125
	.byte		VOL   , 127*se_157_mvl/mxv
	.byte		LFOS  , 51
	.byte		BENDR , 15
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		MOD   , 60
	.byte		N05   , Fs2 , v127
	.byte	W06
	.byte		VOL   , 118*se_157_mvl/mxv
	.byte		N90   , Gn3 
	.byte	W06
	.byte		VOL   , 109*se_157_mvl/mxv
	.byte	W06
	.byte		        99*se_157_mvl/mxv
	.byte	W06
	.byte		        91*se_157_mvl/mxv
	.byte	W06
	.byte		        82*se_157_mvl/mxv
	.byte	W06
	.byte		        72*se_157_mvl/mxv
	.byte	W06
	.byte		        64*se_157_mvl/mxv
	.byte	W06
	.byte		        54*se_157_mvl/mxv
	.byte	W06
	.byte		        46*se_157_mvl/mxv
	.byte	W06
	.byte		        37*se_157_mvl/mxv
	.byte	W06
	.byte		        27*se_157_mvl/mxv
	.byte	W06
	.byte		        19*se_157_mvl/mxv
	.byte	W06
	.byte		        10*se_157_mvl/mxv
	.byte	W06
	.byte		        0*se_157_mvl/mxv
	.byte	W12
@ 001   ----------------------------------------
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_157):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_157_pri	@ Priority
	.byte	se_157_rev	@ Reverb

mAlignWord
	mPtr	se_157_grp

	mPtr	se_157_1

	.end
