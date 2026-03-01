	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	song0016_grp, voicegroup000
	.equ	song0016_pri, 20
	.equ	song0016_rev, reverb_set+0
	.equ	song0016_mvl, 90
	.equ	song0016_key, 0
	.equ	song0016_tbs, 1
	.equ	song0016_exg, 1
	.equ	song0016_cmp, 1

	mSectionRodata
	.global	C_DECL(song0016)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

song0016_1:
	.byte	KEYSH , song0016_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*song0016_tbs/2
	.byte		VOICE , 2
	.byte		VOL   , 127*song0016_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 6
	.byte		LFOS  , 73
	.byte		MOD   , 0
	.byte		N02   , Dn6 , v084
	.byte	W02
	.byte		        As5 , v127
	.byte	W02
	.byte		        Fs5 , v116
	.byte	W02
	.byte		        En5 , v072
	.byte	W12
	.byte		        Dn6 , v084
	.byte	W02
	.byte		        As5 , v127
	.byte	W02
	.byte		        Fs5 , v116
	.byte	W02
	.byte		        En5 , v072
	.byte	W12
	.byte		        Dn6 , v084
	.byte	W02
	.byte		        As5 , v127
	.byte	W02
	.byte		        Fs5 , v116
	.byte	W02
	.byte		        En5 , v072
	.byte	W12
	.byte		        Dn6 , v084
	.byte	W02
	.byte		        As5 , v127
	.byte	W02
	.byte		        Fs5 , v116
	.byte	W02
	.byte		        En5 , v072
	.byte	W02
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(song0016):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song0016_pri	@ Priority
	.byte	song0016_rev	@ Reverb

mAlignWord
	mPtr	song0016_grp

	mPtr	song0016_1

	.end
