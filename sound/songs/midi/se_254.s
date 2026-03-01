	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_254_grp, voicegroup005
	.equ	se_254_pri, 20
	.equ	se_254_rev, reverb_set+0
	.equ	se_254_mvl, 100
	.equ	se_254_key, 0
	.equ	se_254_tbs, 1
	.equ	se_254_exg, 1
	.equ	se_254_cmp, 1

	mSectionRodata
	.global	C_DECL(se_254)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_254_1:
	.byte	KEYSH , se_254_key+0
se_254_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_254_tbs/2
	.byte		VOICE , 54
	.byte		VOL   , 127*se_254_mvl/mxv
	.byte		BENDR , 15
	.byte		PAN   , c_v+0
	.byte		N01   , An5 , v104
	.byte	W01
	.byte		        En5 , v108
	.byte	W01
	.byte		        Dn5 , v112
	.byte	W01
	.byte		        En5 , v108
	.byte	W01
	.byte		        Dn5 
	.byte	W01
	.byte		        En5 
	.byte	W02
	.byte		        Dn5 , v104
	.byte	W01
	.byte		        En5 , v108
	.byte	W01
	.byte		        Dn5 , v112
	.byte	W01
	.byte		        En5 , v108
	.byte	W01
	.byte		        Dn5 
	.byte	W01
	.byte		        En5 
	.byte	W01
	.byte		        Dn5 , v104
	.byte	W01
	.byte		        En5 , v108
	.byte	W01
	.byte		        Dn5 , v112
	.byte	W01
	.byte		        En5 , v108
	.byte	W01
	.byte		        Dn5 
	.byte	W01
	.byte		        En5 
	.byte	W01
	.byte		        Dn5 , v104
	.byte	W01
	.byte		        En5 , v108
	.byte	W03
	.byte		        Dn6 
	.byte	W02
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W08
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W08
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W03
	.byte	GOTO
	 mPtr	se_254_1_B1
se_254_1_B2:
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_254):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_254_pri	@ Priority
	.byte	se_254_rev	@ Reverb

mAlignWord
	mPtr	se_254_grp

	mPtr	se_254_1

	.end
