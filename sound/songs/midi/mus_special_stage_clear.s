	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_special_stage_clear_grp, voicegroup007
	.equ	mus_special_stage_clear_pri, 0
	.equ	mus_special_stage_clear_rev, reverb_set+0
	.equ	mus_special_stage_clear_mvl, 120
	.equ	mus_special_stage_clear_key, 0
	.equ	mus_special_stage_clear_tbs, 1
	.equ	mus_special_stage_clear_exg, 1
	.equ	mus_special_stage_clear_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_special_stage_clear)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

mus_special_stage_clear_1:
	.byte	KEYSH , mus_special_stage_clear_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 118*mus_special_stage_clear_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_special_stage_clear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		N06   , Cn1 , v127
	.byte		N32   , Fn2 
	.byte	W24
	.byte		N06   , Cs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cn1 
	.byte		N05   , Fs2 
	.byte	W06
	.byte		N06   , Cn1 
	.byte		N52   , Gn2 
	.byte	W12
	.byte		N03   , Cs1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
@ 001   ----------------------------------------
	.byte		        Cn1 
	.byte		N17   , En1 , v076
	.byte	W12
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte		        Cn1 
	.byte		N11   , En1 , v076
	.byte	W06
	.byte		N06   , Gs1 , v127
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte		N17   , En1 , v076
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		        Cs1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte		N17   , En1 , v076
	.byte	W12
	.byte		N06   , Cs1 , v127
	.byte	W06
@ 002   ----------------------------------------
	.byte		        Cn1 
	.byte		N17   , En1 , v076
	.byte	W18
	.byte		N06   , Cn1 , v127
	.byte		N05   , Dn1 , v076
	.byte	W06
	.byte	FINE

@ **************** Track 2 (Midi-Chn.2) ****************

mus_special_stage_clear_2:
	.byte	KEYSH , mus_special_stage_clear_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 45
	.byte		VOL   , 127*mus_special_stage_clear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		N40   , Cs3 , v112
	.byte	W42
	.byte		N48   , Bn2 , v104
	.byte	W54
@ 001   ----------------------------------------
	.byte		N10   , As2 , v108
	.byte	W18
	.byte		        As2 , v104
	.byte	W18
	.byte		N36   , An2 , v124
	.byte	W42
	.byte		N17   , Gs2 , v108
	.byte	W18
@ 002   ----------------------------------------
	.byte		        Cs3 , v112
	.byte	W18
	.byte		N08   
	.byte	W08
	.byte	FINE

@ **************** Track 3 (Midi-Chn.3) ****************

mus_special_stage_clear_3:
	.byte	KEYSH , mus_special_stage_clear_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 74
	.byte		VOL   , 127*mus_special_stage_clear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 31
	.byte		LFODL , 22
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		N05   , Cs2 , v112
	.byte		N05   , Fn2 
	.byte	W06
	.byte		N06   , Ds2 , v108
	.byte		N06   , Fs2 
	.byte	W12
	.byte		        Fn2 , v116
	.byte		N06   , Gs2 
	.byte	W12
	.byte		N07   , Cs2 , v100
	.byte		N07   , Fn2 
	.byte	W12
	.byte		N06   , Fn2 , v116
	.byte		N06   , Gs2 
	.byte	W12
	.byte		N05   , Gs1 , v072
	.byte		N05   , Cs2 
	.byte	W06
	.byte		        Cs2 , v088
	.byte		N05   , Fn2 
	.byte	W06
	.byte		        Fn2 , v080
	.byte		N05   , Gs2 
	.byte	W06
	.byte		        Gs2 , v104
	.byte		N05   , Cs3 
	.byte	W06
	.byte		        Cn3 , v096
	.byte		N05   , Ds3 
	.byte	W06
	.byte		        Cs3 , v104
	.byte		N05   , Fn3 
	.byte	W06
	.byte		        Gs2 , v092
	.byte		N05   , Cs3 
	.byte	W06
@ 001   ----------------------------------------
	.byte		        Cs3 , v124
	.byte		N05   , Fs3 
	.byte	W06
	.byte		        Cs3 , v120
	.byte		N05   , Fn3 
	.byte	W12
	.byte		N04   , As2 , v112
	.byte		N04   , Cs3 
	.byte	W12
	.byte		        Gs3 , v080
	.byte	W06
	.byte		N40   , Bn2 , v120
	.byte		N40   , Fs3 
	.byte	W42
	.byte		N17   , Cn3 , v127
	.byte		N17   , Fs3 
	.byte	W18
@ 002   ----------------------------------------
	.byte		        Cs3 , v124
	.byte		N17   , Gs3 
	.byte	W18
	.byte		N09   , Cs3 
	.byte		N09   , Gs3 
	.byte	W09
	.byte	FINE

@ **************** Track 4 (Midi-Chn.4) ****************

mus_special_stage_clear_4:
	.byte	KEYSH , mus_special_stage_clear_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 10
	.byte		VOL   , 70*mus_special_stage_clear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 12
	.byte		LFOS  , 21
	.byte		LFODL , 22
	.byte		MOD   , 3
	.byte		MODT  , 0
	.byte		BEND  , c_v-64
	.byte		N92   , Cs4 , v092
	.byte	W32
	.byte	W03
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-49
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte	W48
	.byte	W03
@ 001   ----------------------------------------
	.byte		N05   , Fs4 , v124
	.byte	W06
	.byte		        Fn4 , v120
	.byte	W12
	.byte		N04   , Cs4 , v112
	.byte	W12
	.byte		        Gs4 , v080
	.byte	W06
	.byte		N40   , Bn4 , v120
	.byte	W42
	.byte		N17   , Cn5 , v127
	.byte	W18
@ 002   ----------------------------------------
	.byte		N16   , Cs5 , v124
	.byte	W18
	.byte		N09   
	.byte	W09
	.byte	FINE

@ **************** Track 5 (Midi-Chn.5) ****************

mus_special_stage_clear_5:
	.byte	KEYSH , mus_special_stage_clear_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 80
	.byte		VOL   , 127*mus_special_stage_clear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 68
	.byte		LFODL , 0
	.byte		MOD   , 31
	.byte		MODT  , 2
	.byte	W96
@ 001   ----------------------------------------
	.byte		N17   , Cs3 , v127
	.byte	W18
	.byte		N03   
	.byte	W18
	.byte		N36   , En3 
	.byte	W42
	.byte		N16   , Ds3 
	.byte	W16
	.byte	FINE

@ **************** Track 6 (Midi-Chn.6) ****************

mus_special_stage_clear_6:
	.byte	KEYSH , mus_special_stage_clear_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 76
	.byte		VOL   , 72*mus_special_stage_clear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 68
	.byte		LFODL , 0
	.byte		MOD   , 30
	.byte		MODT  , 2
	.byte		N36   , Gs3 , v127
	.byte	W42
	.byte		N52   
	.byte	W54
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte		N16   
	.byte	W18
	.byte		N06   
	.byte	W07
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(mus_special_stage_clear):
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_special_stage_clear_pri	@ Priority
	.byte	mus_special_stage_clear_rev	@ Reverb

mAlignWord
	mPtr	mus_special_stage_clear_grp

	mPtr	mus_special_stage_clear_1
	mPtr	mus_special_stage_clear_2
	mPtr	mus_special_stage_clear_3
	mPtr	mus_special_stage_clear_4
	mPtr	mus_special_stage_clear_5
	mPtr	mus_special_stage_clear_6

	.end
