	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_1_up_grp, voicegroup007
	.equ	mus_1_up_pri, 0
	.equ	mus_1_up_rev, reverb_set+0
	.equ	mus_1_up_mvl, 120
	.equ	mus_1_up_key, 0
	.equ	mus_1_up_tbs, 1
	.equ	mus_1_up_exg, 1
	.equ	mus_1_up_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_1_up)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

mus_1_up_1:
	.byte	KEYSH , mus_1_up_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*mus_1_up_tbs/2
	.byte		VOICE , 127
	.byte		BENDR , 127
	.byte		VOL   , 127*mus_1_up_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N08   , Cn1 , v120
	.byte		N48   , Cn2 
	.byte	W44
	.byte	W02
	.byte		VOL   , 0*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        3*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        6*mus_1_up_mvl/mxv
	.byte		N48   , Bn1 
	.byte	W01
	.byte		VOL   , 8*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        11*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        13*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        16*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        18*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        21*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        24*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        26*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        29*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        31*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        34*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        36*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        39*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        41*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        44*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        46*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        49*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        52*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        54*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        57*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        59*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        62*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        64*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        67*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        69*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        72*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        74*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        77*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        80*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        82*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        85*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        87*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        90*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        92*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        95*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        97*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        100*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        102*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        105*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        107*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        110*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        113*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        115*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        118*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        120*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        123*mus_1_up_mvl/mxv
	.byte	W01
	.byte		        125*mus_1_up_mvl/mxv
	.byte	W01
@ 001   ----------------------------------------
	.byte	W16
	.byte		N04   , As1 
	.byte	W04
	.byte		N04   
	.byte	W20
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N48   , Cn2 
	.byte	W48
@ 002   ----------------------------------------
	.byte	FINE

@ **************** Track 2 (Midi-Chn.2) ****************

mus_1_up_2:
	.byte	KEYSH , mus_1_up_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 74
	.byte		BENDR , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 60*mus_1_up_mvl/mxv
	.byte	W12
	.byte		N06   , An2 , v127
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Dn3 , v120
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N06   
	.byte		N06   , An3 
	.byte	W06
	.byte		        An3 , v124
	.byte		N06   , Dn4 
	.byte	W12
	.byte		N18   , An3 , v120
	.byte		N18   , Cn4 
	.byte	W18
	.byte		        Gn3 , v124
	.byte		N18   , Bn3 
	.byte	W18
	.byte		N11   , En3 
	.byte		N11   , Gn3 
	.byte	W12
@ 001   ----------------------------------------
	.byte		N48   , Fs3 , v120
	.byte		N48   , An3 
	.byte	W48
	.byte	FINE

@ **************** Track 3 (Midi-Chn.3) ****************

mus_1_up_3:
	.byte	KEYSH , mus_1_up_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 80
	.byte		BENDR , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 80*mus_1_up_mvl/mxv
	.byte		N12   , An2 , v127
	.byte	W48
	.byte		N18   , Gn3 
	.byte	W18
	.byte		        Dn3 
	.byte	W18
	.byte		N11   , Gn2 
	.byte	W12
@ 001   ----------------------------------------
	.byte		N48   , An2 
	.byte	W48
	.byte	FINE

@ **************** Track 4 (Midi-Chn.4) ****************

mus_1_up_4:
	.byte	KEYSH , mus_1_up_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 90
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 127*mus_1_up_mvl/mxv
	.byte		LFOS  , 10
	.byte		LFODL , 0
	.byte		BENDR , 2
	.byte		N24   , Cn3 , v127
	.byte	W84
	.byte		N03   , Gn2 
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
@ 001   ----------------------------------------
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N24   , Cn3 
	.byte	W24
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(mus_1_up):
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_1_up_pri	@ Priority
	.byte	mus_1_up_rev	@ Reverb

mAlignWord
	mPtr	mus_1_up_grp

	mPtr	mus_1_up_1
	mPtr	mus_1_up_2
	mPtr	mus_1_up_3
	mPtr	mus_1_up_4

	.end
