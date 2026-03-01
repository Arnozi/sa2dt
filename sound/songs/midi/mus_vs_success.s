	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_vs_success_grp, voicegroup010
	.equ	mus_vs_success_pri, 0
	.equ	mus_vs_success_rev, reverb_set+0
	.equ	mus_vs_success_mvl, 77
	.equ	mus_vs_success_key, 0
	.equ	mus_vs_success_tbs, 1
	.equ	mus_vs_success_exg, 1
	.equ	mus_vs_success_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_vs_success)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

mus_vs_success_1:
	.byte	KEYSH , mus_vs_success_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 76*mus_vs_success_tbs/2
	.byte		VOICE , 108
	.byte		VOL   , 127*mus_vs_success_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N03   , En4 , v092
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        As4 , v076
	.byte	W03
	.byte		        Dn5 , v104
	.byte	W03
	.byte		        Fn5 , v088
	.byte	W03
	.byte		        As5 , v080
	.byte	W03
	.byte		        Cn6 , v088
	.byte	W03
	.byte		        Gn5 , v076
	.byte	W03
	.byte		        En5 , v092
	.byte	W03
	.byte		        Cn5 , v088
	.byte	W03
	.byte		        Gn4 , v096
	.byte	W03
	.byte		N05   , En4 , v092
	.byte	W05
	.byte	FINE

@ **************** Track 2 (Midi-Chn.2) ****************

mus_vs_success_2:
	.byte	KEYSH , mus_vs_success_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 109
	.byte		VOL   , 127*mus_vs_success_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N03   , Cn4 , v096
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Fn4 , v076
	.byte	W03
	.byte		        As4 , v064
	.byte	W03
	.byte		        Dn5 , v096
	.byte	W03
	.byte		        Fn5 , v100
	.byte	W03
	.byte		        En5 , v092
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        Gn4 , v080
	.byte	W03
	.byte		        En4 , v092
	.byte	W03
	.byte		N05   , Cn4 , v096
	.byte	W05
	.byte	FINE

@ **************** Track 3 (Midi-Chn.3) ****************

mus_vs_success_3:
	.byte	KEYSH , mus_vs_success_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 64
	.byte		VOL   , 96*mus_vs_success_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N03   , En3 , v092
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        As3 , v076
	.byte	W03
	.byte		        Dn4 , v104
	.byte	W03
	.byte		        Fn4 , v088
	.byte	W03
	.byte		        As4 , v080
	.byte	W03
	.byte		        Cn5 , v088
	.byte	W03
	.byte		        Gn4 , v076
	.byte	W03
	.byte		        En4 , v092
	.byte	W03
	.byte		        Cn4 , v088
	.byte	W03
	.byte		        Gn3 , v096
	.byte	W03
	.byte		N05   , En3 , v092
	.byte	W05
	.byte	FINE

@ **************** Track 4 (Midi-Chn.4) ****************

mus_vs_success_4:
	.byte	KEYSH , mus_vs_success_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 63
	.byte		VOL   , 76*mus_vs_success_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N03   , Cn3 , v096
	.byte	W03
	.byte		        As2 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Fn3 , v076
	.byte	W03
	.byte		        As3 , v064
	.byte	W03
	.byte		        Dn4 , v096
	.byte	W03
	.byte		        Fn4 , v100
	.byte	W03
	.byte		        En4 , v092
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Gn3 , v080
	.byte	W03
	.byte		        En3 , v092
	.byte	W03
	.byte		N05   , Cn3 , v096
	.byte	W05
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(mus_vs_success):
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_vs_success_pri	@ Priority
	.byte	mus_vs_success_rev	@ Reverb

mAlignWord
	mPtr	mus_vs_success_grp

	mPtr	mus_vs_success_1
	mPtr	mus_vs_success_2
	mPtr	mus_vs_success_3
	mPtr	mus_vs_success_4

	.end
