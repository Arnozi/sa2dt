	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_time_attack_2_grp, voicegroup022
	.equ	mus_time_attack_2_pri, 0
	.equ	mus_time_attack_2_rev, reverb_set+0
	.equ	mus_time_attack_2_mvl, 110
	.equ	mus_time_attack_2_key, 0
	.equ	mus_time_attack_2_tbs, 1
	.equ	mus_time_attack_2_exg, 1
	.equ	mus_time_attack_2_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_time_attack_2)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_time_attack_2_1:
	.byte	KEYSH , mus_time_attack_2_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 150*mus_time_attack_2_tbs/2
	.byte		VOICE , 67
	.byte		VOL   , 110*mus_time_attack_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
	.byte		N15   , Dn2 , v120
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N12   , Gn2 
	.byte	W18
	.byte		N18   , Fs2 
	.byte	W18
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        En2 
	.byte	W12
	.byte		N18   , Dn2 
	.byte	W06
/* 001   ----------------------------------------
 */	.byte	W96
	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_time_attack_2_2:
	.byte	KEYSH , mus_time_attack_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 127
	.byte		VOL   , 115*mus_time_attack_2_mvl/mxv
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
	.byte		        En2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N04   , An1 
	.byte	W04
	.byte		        Gs1 
	.byte	W04
	.byte		        Gn1 
	.byte	W04
	.byte		N06   , En2 
	.byte	W06
	.byte		N24   , Ds2 
	.byte	W06
/* 001   ----------------------------------------
 */	.byte	W96
	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_time_attack_2_3:
	.byte	KEYSH , mus_time_attack_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 127
	.byte		VOL   , 110*mus_time_attack_2_mvl/mxv
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
	.byte	W18
	.byte		N06   , Dn1 , v060
	.byte	W06
	.byte		        Ds1 , v072
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        En1 , v072
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Ds1 , v072
	.byte	W06
	.byte		N24   , Cs2 , v120
	.byte	W06
/* 001   ----------------------------------------
 */	.byte	W96
	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_time_attack_2_4:
	.byte		VOL   , 127*mus_time_attack_2_mvl/mxv
	.byte	KEYSH , mus_time_attack_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 2
	.byte		PAN   , c_v-30
	.byte		MOD   , 2
	.byte	W24
	.byte		N18   , An4 , v112
	.byte	W18
	.byte		N09   , Gn4 
	.byte	W18
	.byte		N18   , Bn4 
	.byte	W18
	.byte		N09   , An4 
	.byte	W18
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W12
	.byte		N24   , Dn5 
	.byte	W06
/* 001   ----------------------------------------
 */	.byte	W96
	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_time_attack_2_5:
	.byte	KEYSH , mus_time_attack_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 12
	.byte		VOL   , 89*mus_time_attack_2_mvl/mxv
	.byte		PAN   , c_v+30
	.byte		MOD   , 0
	.byte	W24
	.byte		N18   , Fs4 , v112
	.byte	W18
	.byte		N09   , En4 
	.byte	W18
	.byte		N18   , Dn4 
	.byte	W18
	.byte		N09   
	.byte	W18
	.byte		N06   , An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W12
	.byte		N24   , Fs4 
	.byte	W06
/* 001   ----------------------------------------
 */	.byte	W96
	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_time_attack_2_6:
	.byte	KEYSH , mus_time_attack_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 74
	.byte		VOL   , 80*mus_time_attack_2_mvl/mxv
	.byte		BENDR , 4
	.byte		PAN   , c_v+30
	.byte	W24
	.byte		N18   , An2 , v112
	.byte	W18
	.byte		N09   , Gn2 
	.byte	W18
	.byte		N18   , Bn2 
	.byte	W18
	.byte		N09   , An2 
	.byte	W18
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W06
/* 001   ----------------------------------------
 */	.byte	W96
	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_time_attack_2_7:
	.byte	KEYSH , mus_time_attack_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 74
	.byte		VOL   , 80*mus_time_attack_2_mvl/mxv
	.byte		BENDR , 4
	.byte		PAN   , c_v-30
	.byte	W24
	.byte		N18   , Fs2 , v112
	.byte	W18
	.byte		N09   , En2 
	.byte	W18
	.byte		N18   , Dn2 
	.byte	W18
	.byte		N09   
	.byte	W18
	.byte		N06   , An2 
	.byte	W06
	.byte		        Gs2 
	.byte	W12
	.byte		N24   , Fs2 
	.byte	W06
/* 001   ----------------------------------------
 */	.byte	W96
	.byte	FINE

/* **************** Track 8 (Midi-Chn.8) **************** */

mus_time_attack_2_8:
	.byte	KEYSH , mus_time_attack_2_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 80
	.byte		VOL   , 110*mus_time_attack_2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
	.byte		N05   , An1 , v100
	.byte	W03
	.byte		        Bn1 , v080
	.byte	W03
	.byte		        Cn2 , v072
	.byte	W03
	.byte		        Dn2 , v080
	.byte	W03
	.byte		        En2 , v072
	.byte	W03
	.byte		        Fn2 , v080
	.byte	W03
	.byte		        Gn2 , v072
	.byte	W03
	.byte		N18   , An2 , v112
	.byte	W18
	.byte		N09   , Gn2 
	.byte	W18
	.byte		N18   , An2 
	.byte	W18
	.byte		N09   
	.byte	W18
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Gs2 
	.byte	W12
	.byte		N12   , An3 
	.byte	W06
/* 001   ----------------------------------------
 */	.byte	W05
	.byte		N05   , Gn3 , v052
	.byte	W05
	.byte		N03   , Fn3 , v072
	.byte	W02
	.byte		N02   , En3 , v080
	.byte	W02
	.byte		        Dn3 , v088
	.byte	W02
	.byte		        Cn3 , v080
	.byte	W02
	.byte		        Bn2 , v088
	.byte	W02
	.byte		        An2 
	.byte	W02
	.byte		        Gn2 
	.byte	W01
	.byte		        Fn2 , v096
	.byte	W02
	.byte		        En2 
	.byte	W01
	.byte		        Dn2 , v092
	.byte	W02
	.byte		        Cn2 , v088
	.byte	W01
	.byte		        Bn1 , v084
	.byte	W02
	.byte		        An1 , v076
	.byte	W02
	.byte		N01   , Gn1 , v068
	.byte	W60
	.byte	W03
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_time_attack_2):
	.byte	8	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_time_attack_2_pri	/* Priority */
	.byte	mus_time_attack_2_rev	/* Reverb */

mAlignWord
	mPtr	mus_time_attack_2_grp

	mPtr	mus_time_attack_2_1
	mPtr	mus_time_attack_2_2
	mPtr	mus_time_attack_2_3
	mPtr	mus_time_attack_2_4
	mPtr	mus_time_attack_2_5
	mPtr	mus_time_attack_2_6
	mPtr	mus_time_attack_2_7
	mPtr	mus_time_attack_2_8

	.end
