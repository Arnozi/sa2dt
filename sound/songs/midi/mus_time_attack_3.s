	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_time_attack_3_grp, voicegroup022
	.equ	mus_time_attack_3_pri, 0
	.equ	mus_time_attack_3_rev, reverb_set+0
	.equ	mus_time_attack_3_mvl, 99
	.equ	mus_time_attack_3_key, 0
	.equ	mus_time_attack_3_tbs, 1
	.equ	mus_time_attack_3_exg, 1
	.equ	mus_time_attack_3_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_time_attack_3)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_time_attack_3_1:
	.byte	KEYSH , mus_time_attack_3_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 150*mus_time_attack_3_tbs/2
	.byte		VOICE , 67
	.byte		VOL   , 122*mus_time_attack_3_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
	.byte		N15   , Dn2 , v120
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N15   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N15   , En2 
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N15   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N15   , Fn2 
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N18   , Gn2 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N09   
	.byte	W12
	.byte		N24   , An2 
	.byte	W06
/* 001   ----------------------------------------
 */	.byte	W96
	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_time_attack_3_2:
	.byte	KEYSH , mus_time_attack_3_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 127
	.byte		VOL   , 127*mus_time_attack_3_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
	.byte		N12   , Ds2 , v120
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N03   , Cn3 , v112
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N04   , As2 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N06   , An2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		N12   , Ds2 , v120
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        En2 , v112
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N18   , Ds2 , v120
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Gs2 , v112
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N04   , Cn3 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		N06   , As2 
	.byte	W06
	.byte		N12   , Ds2 , v120
	.byte	W06
/* 001   ----------------------------------------
 */	.byte	W12
	.byte		N18   
	.byte	W84
	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_time_attack_3_3:
	.byte	KEYSH , mus_time_attack_3_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 127
	.byte		VOL   , 122*mus_time_attack_3_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
	.byte		N12   , Cs2 , v120
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		N18   , Fs2 , v120
	.byte	W60
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		N18   , Cs2 , v120
	.byte	W18
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Ds1 , v072
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W30
	.byte		N18   , Cs2 , v120
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		N12   , Ds1 , v072
	.byte	W12
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		N18   , Fs2 , v120
	.byte	W54
	.byte		        Gn2 
	.byte	W06
/* 001   ----------------------------------------
 */	.byte	W12
	.byte		N24   , Cs2 
	.byte	W84
	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_time_attack_3_4:
	.byte	KEYSH , mus_time_attack_3_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 115
	.byte		VOL   , 77*mus_time_attack_3_mvl/mxv
	.byte	W24
	.byte		N18   , As2 , v112
	.byte	W18
	.byte		N06   , Fn2 
	.byte	W18
	.byte		N42   , Cn2 
	.byte	W60
	.byte		N18   , Fn2 
	.byte	W18
	.byte		N06   , As2 
	.byte	W18
	.byte		N42   , Cn3 
	.byte	W60
	.byte		N15   , Cs3 
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N18   , Ds3 
	.byte	W18
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N15   , Fn3 
	.byte	W06
/* 001   ----------------------------------------
 */	.byte	W12
	.byte		N24   
	.byte	W84
	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_time_attack_3_5:
	.byte	KEYSH , mus_time_attack_3_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 1
	.byte		VOL   , 99*mus_time_attack_3_mvl/mxv
	.byte		PAN   , c_v-30
	.byte		MOD   , 2
	.byte	W24
	.byte		N18   , Dn4 , v100
	.byte	W18
	.byte		N06   , An3 
	.byte	W18
	.byte		N18   , En3 
	.byte	W18
	.byte		N03   , Cn3 , v080
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Cn3 
	.byte	W03
	.byte		N18   , An3 , v100
	.byte	W18
	.byte		N06   , Dn4 
	.byte	W18
	.byte		N18   , En4 
	.byte	W18
	.byte		N03   , An3 , v080
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Fn4 
	.byte	W06
	.byte		N06   , Fn4 , v100
	.byte	W18
	.byte		N18   , Gn4 
	.byte	W18
	.byte		N03   , Gn2 , v080
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        Bn2 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		N09   , An4 
	.byte	W06
/* 001   ----------------------------------------
 */	.byte	W12
	.byte		N30   , An4 , v100
	.byte	W84
	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_time_attack_3_6:
	.byte	KEYSH , mus_time_attack_3_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 12
	.byte		VOL   , 99*mus_time_attack_3_mvl/mxv
	.byte		PAN   , c_v+30
	.byte		MOD   , 0
	.byte	W24
	.byte		N18   , Fs3 , v100
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N18   , Cn3 
	.byte	W18
	.byte		N03   , En3 , v080
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		N18   , Dn3 , v100
	.byte	W18
	.byte		N06   , Fs3 
	.byte	W18
	.byte		N18   , An3 
	.byte	W18
	.byte		N03   , Cs3 , v080
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Cn3 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        An3 
	.byte	W06
	.byte		N06   , An3 , v100
	.byte	W18
	.byte		N18   , Bn3 
	.byte	W18
	.byte		N03   , Bn4 , v080
	.byte	W03
	.byte		        Fs5 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		N09   , An3 
	.byte	W06
/* 001   ----------------------------------------
 */	.byte	W12
	.byte		N30   , An3 , v100
	.byte	W84
	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_time_attack_3_7:
	.byte	KEYSH , mus_time_attack_3_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 74
	.byte		VOL   , 89*mus_time_attack_3_mvl/mxv
	.byte		BENDR , 4
	.byte		PAN   , c_v+30
	.byte	W24
	.byte		N18   , Dn3 , v112
	.byte	W18
	.byte		N06   , An2 
	.byte	W18
	.byte		N48   , En2 
	.byte	W60
	.byte		N18   , An2 
	.byte	W18
	.byte		N06   , Dn3 
	.byte	W18
	.byte		N48   , En3 
	.byte	W60
	.byte		N15   , Fn3 
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N18   , Gn3 
	.byte	W18
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N15   , An3 
	.byte	W06
/* 001   ----------------------------------------
 */	.byte	W12
	.byte		N30   
	.byte	W84
	.byte	FINE

/* **************** Track 8 (Midi-Chn.8) **************** */

mus_time_attack_3_8:
	.byte	KEYSH , mus_time_attack_3_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 74
	.byte		VOL   , 89*mus_time_attack_3_mvl/mxv
	.byte		BENDR , 4
	.byte		PAN   , c_v-30
	.byte	W24
	.byte		N18   , Fs2 , v112
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N48   , Cn2 
	.byte	W60
	.byte		N18   , Dn2 
	.byte	W18
	.byte		N06   , Fs2 
	.byte	W18
	.byte		N48   , An2 
	.byte	W60
	.byte		N15   
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N18   , Bn2 
	.byte	W18
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N15   , An2 
	.byte	W06
/* 001   ----------------------------------------
 */	.byte	W12
	.byte		N30   
	.byte	W84
	.byte	FINE

/* **************** Track 9 (Midi-Chn.9) **************** */

mus_time_attack_3_9:
	.byte	KEYSH , mus_time_attack_3_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 80
	.byte		VOL   , 122*mus_time_attack_3_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W08
	.byte		N02   , En1 , v092
	.byte		N04   , Fn1 , v100
	.byte	W03
	.byte		N03   , Gn1 , v076
	.byte	W02
	.byte		N02   , An1 , v096
	.byte	W02
	.byte		        Bn1 , v104
	.byte	W01
	.byte		        Cn2 , v108
	.byte	W01
	.byte		        Dn2 , v116
	.byte	W02
	.byte		        En2 
	.byte	W01
	.byte		        Fn2 
	.byte	W02
	.byte		        Gn2 , v108
	.byte	W02
	.byte		N18   , An2 , v112
	.byte	W18
	.byte		N09   
	.byte	W18
	.byte		N48   , Gn2 
	.byte	W60
	.byte		N18   , An2 
	.byte	W18
	.byte		N09   
	.byte	W18
	.byte		N60   , En3 
	.byte	W60
	.byte		N18   , Cn3 
	.byte	W18
	.byte		N09   
	.byte	W18
	.byte		N30   , Dn3 
	.byte	W32
	.byte	W03
	.byte		N02   , Cn2 , v092
	.byte		N04   , Cs2 , v100
	.byte	W03
	.byte		N03   , Ds2 , v076
	.byte	W02
	.byte		N02   , Fn2 , v096
	.byte	W02
	.byte		        Gn2 , v104
	.byte	W01
	.byte		        Gs2 , v108
	.byte	W01
	.byte		        As2 , v116
	.byte	W02
	.byte		        Cn3 
	.byte	W01
	.byte		        Cs3 
	.byte	W02
	.byte		        Ds3 , v108
	.byte	W05
	.byte		N12   , En3 , v112
	.byte	W06
/* 001   ----------------------------------------
 */	.byte	W12
	.byte		N12   
	.byte	W11
	.byte		N05   , Dn3 , v052
	.byte	W05
	.byte		N03   , Cn3 , v072
	.byte	W02
	.byte		N02   , Bn2 , v080
	.byte	W02
	.byte		        An2 , v088
	.byte	W02
	.byte		        Gn2 , v080
	.byte	W02
	.byte		        Fs2 , v088
	.byte	W02
	.byte		        En2 
	.byte	W02
	.byte		        Dn2 
	.byte	W01
	.byte		        Cn2 , v096
	.byte	W02
	.byte		        Bn1 
	.byte	W01
	.byte		        An1 , v092
	.byte	W02
	.byte		        Gn1 , v088
	.byte	W01
	.byte		        Fs1 , v084
	.byte	W02
	.byte		        En1 , v076
	.byte	W02
	.byte		N01   , Dn1 , v068
	.byte	W44
	.byte	W01
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_time_attack_3):
	.byte	9	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_time_attack_3_pri	/* Priority */
	.byte	mus_time_attack_3_rev	/* Reverb */

mAlignWord
	mPtr	mus_time_attack_3_grp

	mPtr	mus_time_attack_3_1
	mPtr	mus_time_attack_3_2
	mPtr	mus_time_attack_3_3
	mPtr	mus_time_attack_3_4
	mPtr	mus_time_attack_3_5
	mPtr	mus_time_attack_3_6
	mPtr	mus_time_attack_3_7
	mPtr	mus_time_attack_3_8
	mPtr	mus_time_attack_3_9

	.end
