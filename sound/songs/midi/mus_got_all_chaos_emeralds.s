	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_got_all_chaos_emeralds_grp, voicegroup013
	.equ	mus_got_all_chaos_emeralds_pri, 0
	.equ	mus_got_all_chaos_emeralds_rev, reverb_set+0
	.equ	mus_got_all_chaos_emeralds_mvl, 90
	.equ	mus_got_all_chaos_emeralds_key, 0
	.equ	mus_got_all_chaos_emeralds_tbs, 1
	.equ	mus_got_all_chaos_emeralds_exg, 1
	.equ	mus_got_all_chaos_emeralds_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_got_all_chaos_emeralds)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_got_all_chaos_emeralds_1:
	.byte	KEYSH , mus_got_all_chaos_emeralds_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*mus_got_all_chaos_emeralds_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_got_all_chaos_emeralds_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 127
	.byte	W05
	.byte		N01   , An1 , v127
	.byte	W02
	.byte		N04   
	.byte	W05
	.byte		N06   , Gs1 
	.byte	W06
	.byte		N04   , Dn1 , v052
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		N04   , Dn1 , v052
	.byte		N06   , Fs1 , v127
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte		N06   , Dn1 , v052
	.byte	W06
	.byte		        Ds1 , v096
	.byte	W18
	.byte		        Cs1 , v127
	.byte	W06
	.byte		N60   , Cs2 
	.byte	W24
/* 001   ----------------------------------------
 */	.byte	W36
	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_got_all_chaos_emeralds_2:
	.byte	KEYSH , mus_got_all_chaos_emeralds_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 13
	.byte		VOL   , 120*mus_got_all_chaos_emeralds_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 13
	.byte		LFOS  , 18
	.byte		LFODL , 20
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		BEND  , c_v+0
	.byte	W30
	.byte		N03   , Gs3 , v127
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Fs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W05
	.byte		N03   
	.byte	W03
	.byte		N18   , Gs3 
	.byte	W18
	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_got_all_chaos_emeralds_3:
	.byte	KEYSH , mus_got_all_chaos_emeralds_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 13
	.byte		VOL   , 120*mus_got_all_chaos_emeralds_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 13
	.byte		LFOS  , 18
	.byte		LFODL , 20
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		BEND  , c_v+0
	.byte	W30
	.byte		N03   , Ds3 , v127
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Cs3 
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N18   , Ds3 
	.byte	W18
	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_got_all_chaos_emeralds_4:
	.byte	KEYSH , mus_got_all_chaos_emeralds_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 13
	.byte		VOL   , 120*mus_got_all_chaos_emeralds_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 13
	.byte		LFOS  , 18
	.byte		LFODL , 20
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		BEND  , c_v+0
	.byte	W30
	.byte		N05   , Gs1 , v127
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		N11   , As2 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N18   , Ds3 
	.byte	W18
	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_got_all_chaos_emeralds_5:
	.byte	KEYSH , mus_got_all_chaos_emeralds_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 12
	.byte		VOL   , 120*mus_got_all_chaos_emeralds_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 13
	.byte		LFOS  , 18
	.byte		LFODL , 20
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		BEND  , c_v+0
	.byte	W30
	.byte		N03   , Gs2 , v127
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N06   , Fs2 
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N18   , Gs2 
	.byte	W18
	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_got_all_chaos_emeralds_6:
	.byte	KEYSH , mus_got_all_chaos_emeralds_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 30
	.byte		VOL   , 120*mus_got_all_chaos_emeralds_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 13
	.byte		LFOS  , 18
	.byte		LFODL , 20
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		BEND  , c_v+0
	.byte	W16
	.byte		N04   , Gn2 , v064
	.byte	W03
	.byte		        An2 , v036
	.byte	W03
	.byte		N03   , Bn2 , v056
	.byte	W02
	.byte		        Cn3 , v072
	.byte	W03
	.byte		        Dn3 , v076
	.byte	W04
	.byte		N05   , Dn3 , v108
	.byte		N18   , Ds3 , v116
	.byte	W17
	.byte		N06   , Cs3 , v104
	.byte	W12
	.byte		N05   , Cs3 , v127
	.byte	W12
	.byte		N18   , Ds3 
	.byte	W18
	.byte		N05   , Cs3 , v048
	.byte	W06
/* 001   ----------------------------------------
 */	.byte		N01   , As2 
	.byte	W01
	.byte		N02   , Gs2 , v088
	.byte	W02
	.byte		N01   , Fs2 , v072
	.byte	W02
	.byte		        Ds2 , v100
	.byte	W04
	.byte		        Bn1 , v060
	.byte	W01
	.byte		        An1 , v056
	.byte	W01
	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_got_all_chaos_emeralds_7:
	.byte	KEYSH , mus_got_all_chaos_emeralds_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 37
	.byte		VOL   , 120*mus_got_all_chaos_emeralds_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 13
	.byte		LFOS  , 18
	.byte		LFODL , 20
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		BEND  , c_v+0
	.byte	W30
	.byte		N05   , Gs1 , v127
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		N11   , As2 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N18   , Ds3 
	.byte	W18
	.byte	FINE

/* **************** Track 8 (Midi-Chn.8) **************** */

mus_got_all_chaos_emeralds_8:
	.byte	KEYSH , mus_got_all_chaos_emeralds_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 38
	.byte		VOL   , 120*mus_got_all_chaos_emeralds_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 13
	.byte		LFOS  , 18
	.byte		LFODL , 20
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte		BEND  , c_v+0
	.byte	W30
	.byte		N03   , Cn3 , v092
	.byte	W06
	.byte		        Cn3 , v072
	.byte	W06
	.byte		        Cn3 , v064
	.byte	W06
	.byte		        As2 , v096
	.byte	W12
	.byte		        As2 , v064
	.byte	W06
	.byte		        As2 , v068
	.byte	W06
	.byte		        Cn3 , v100
	.byte	W03
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_got_all_chaos_emeralds):
	.byte	8	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_got_all_chaos_emeralds_pri	/* Priority */
	.byte	mus_got_all_chaos_emeralds_rev	/* Reverb */

mAlignWord
	mPtr	mus_got_all_chaos_emeralds_grp

	mPtr	mus_got_all_chaos_emeralds_1
	mPtr	mus_got_all_chaos_emeralds_2
	mPtr	mus_got_all_chaos_emeralds_3
	mPtr	mus_got_all_chaos_emeralds_4
	mPtr	mus_got_all_chaos_emeralds_5
	mPtr	mus_got_all_chaos_emeralds_6
	mPtr	mus_got_all_chaos_emeralds_7
	mPtr	mus_got_all_chaos_emeralds_8

	.end
