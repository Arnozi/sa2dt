	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_296_grp, voicegroup005
	.equ	se_296_pri, 20
	.equ	se_296_rev, reverb_set+0
	.equ	se_296_mvl, 100
	.equ	se_296_key, 0
	.equ	se_296_tbs, 1
	.equ	se_296_exg, 1
	.equ	se_296_cmp, 1

	mSectionRodata
	.global	C_DECL(se_296)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_296_1:
	.byte	KEYSH , se_296_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_296_tbs/2
	.byte		VOICE , 96
	.byte		BENDR , 10
	.byte		MOD   , 109
	.byte		LFOS  , 7
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 0*se_296_mvl/mxv
	.byte		TIE   , Gs4 , v127
	.byte	W01
	.byte		VOL   , 16*se_296_mvl/mxv
	.byte	W01
	.byte		        25*se_296_mvl/mxv
	.byte	W01
	.byte		        32*se_296_mvl/mxv
	.byte	W01
	.byte		        42*se_296_mvl/mxv
	.byte	W01
	.byte		        50*se_296_mvl/mxv
	.byte	W01
	.byte		        59*se_296_mvl/mxv
	.byte	W01
	.byte		        67*se_296_mvl/mxv
	.byte	W01
	.byte		        75*se_296_mvl/mxv
	.byte	W01
	.byte		        84*se_296_mvl/mxv
	.byte	W01
	.byte		        93*se_296_mvl/mxv
	.byte	W01
	.byte		        101*se_296_mvl/mxv
	.byte	W01
	.byte		        110*se_296_mvl/mxv
	.byte	W01
	.byte		        117*se_296_mvl/mxv
	.byte	W01
	.byte		        127*se_296_mvl/mxv
	.byte	W10
se_296_1_B1:
	.byte	W72
	.byte	GOTO
	 mPtr	se_296_1_B1
se_296_1_B2:
@ 001   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gs4 
@ 002   ----------------------------------------
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_296):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_296_pri	@ Priority
	.byte	se_296_rev	@ Reverb

mAlignWord
	mPtr	se_296_grp

	mPtr	se_296_1

	.end
