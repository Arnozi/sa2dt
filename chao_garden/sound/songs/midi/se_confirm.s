	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_confirm_grp, voicegroup000
	.equ	se_confirm_pri, 20
	.equ	se_confirm_rev, reverb_set+0
	.equ	se_confirm_mvl, 70
	.equ	se_confirm_key, 0
	.equ	se_confirm_tbs, 1
	.equ	se_confirm_exg, 1
	.equ	se_confirm_cmp, 1

	mSectionRodata
	.global	C_DECL(se_confirm)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_confirm_1:
	.byte	KEYSH , se_confirm_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_confirm_tbs/2
	.byte		VOICE , 60
	.byte		VOL   , 127*se_confirm_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 6
	.byte		BEND  , c_v+37
	.byte		N01   , Dn3 , v036
	.byte	W01
	.byte		BEND  , c_v+11
	.byte		N01   , En3 , v048
	.byte	W01
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		        c_v-64
	.byte		N01   , Fs3 , v060
	.byte	W01
	.byte		BEND  , c_v-55
	.byte		N01   , An3 , v072
	.byte	W01
	.byte		BEND  , c_v-36
	.byte	W01
	.byte		        c_v-26
	.byte		N01   , Dn4 , v084
	.byte	W01
	.byte		BEND  , c_v-16
	.byte		N01   , An3 , v092
	.byte	W01
	.byte		BEND  , c_v+3
	.byte	W01
	.byte		        c_v+12
	.byte		N01   , Dn4 , v104
	.byte	W01
	.byte		BEND  , c_v+22
	.byte		N01   , Fs4 , v116
	.byte	W01
	.byte		BEND  , c_v+41
	.byte	W01
	.byte		        c_v+51
	.byte		N01   , An4 , v127
	.byte	W01
	.byte		BEND  , c_v+63
	.byte		N24   , Dn5 
	.byte	W24
	.byte	W03
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_confirm):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_confirm_pri	@ Priority
	.byte	se_confirm_rev	@ Reverb

mAlignWord
	mPtr	se_confirm_grp

	mPtr	se_confirm_1

	.end
