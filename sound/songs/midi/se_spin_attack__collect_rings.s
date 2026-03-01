	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_spin_attack__collect_rings_grp, voicegroup003
	.equ	se_spin_attack__collect_rings_pri, 20
	.equ	se_spin_attack__collect_rings_rev, reverb_set+0
	.equ	se_spin_attack__collect_rings_mvl, 110
	.equ	se_spin_attack__collect_rings_key, 0
	.equ	se_spin_attack__collect_rings_tbs, 1
	.equ	se_spin_attack__collect_rings_exg, 1
	.equ	se_spin_attack__collect_rings_cmp, 1

	mSectionRodata
	.global	C_DECL(se_spin_attack__collect_rings)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

se_spin_attack__collect_rings_1:
	.byte	KEYSH , se_spin_attack__collect_rings_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_spin_attack__collect_rings_tbs/2
	.byte		VOICE , 70
	.byte		VOL   , 127*se_spin_attack__collect_rings_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 16
	.byte		BEND  , c_v-37
	.byte		N96   , Ds4 , v112
	.byte	W01
	.byte		BEND  , c_v-40
	.byte	W02
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-46
	.byte	W02
	.byte		        c_v-50
	.byte	W01
	.byte		        c_v-53
	.byte	W02
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-60
	.byte	W02
	.byte		        c_v-64
	.byte	W03
	.byte		        c_v-62
	.byte	W03
	.byte		        c_v-60
	.byte	W03
	.byte		        c_v-58
	.byte	W03
	.byte		        c_v-56
	.byte	W03
	.byte		        c_v-53
	.byte	W03
	.byte		        c_v-51
	.byte	W03
	.byte		        c_v-49
	.byte	W03
	.byte		        c_v-47
	.byte	W03
	.byte		        c_v-45
	.byte	W03
	.byte		        c_v-42
	.byte	W03
	.byte		        c_v-40
	.byte	W03
	.byte		        c_v-38
	.byte	W03
	.byte		        c_v-36
	.byte	W03
	.byte		        c_v-34
	.byte	W03
	.byte		        c_v-31
	.byte	W03
	.byte		        c_v-29
	.byte	W03
	.byte		        c_v-27
	.byte	W03
	.byte		        c_v-25
	.byte	W03
	.byte		        c_v-23
	.byte	W03
	.byte		        c_v-20
	.byte	W03
	.byte		        c_v-18
	.byte	W03
	.byte		        c_v-16
	.byte	W03
	.byte		        c_v-14
	.byte	W03
	.byte		        c_v-12
	.byte	W03
	.byte		        c_v-9
	.byte	W03
	.byte		        c_v-7
	.byte	W03
	.byte		        c_v-5
	.byte	W03
@ 001   ----------------------------------------
	.byte		        c_v-3
	.byte	W03
	.byte		        c_v-1
	.byte	W03
	.byte		        c_v+2
	.byte	W03
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+27
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(se_spin_attack__collect_rings):
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_spin_attack__collect_rings_pri	@ Priority
	.byte	se_spin_attack__collect_rings_rev	@ Reverb

mAlignWord
	mPtr	se_spin_attack__collect_rings_grp

	mPtr	se_spin_attack__collect_rings_1

	.end
