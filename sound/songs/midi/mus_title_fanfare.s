	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_title_fanfare_grp, voicegroup011
	.equ	mus_title_fanfare_pri, 0
	.equ	mus_title_fanfare_rev, reverb_set+0
	.equ	mus_title_fanfare_mvl, 120
	.equ	mus_title_fanfare_key, 0
	.equ	mus_title_fanfare_tbs, 1
	.equ	mus_title_fanfare_exg, 1
	.equ	mus_title_fanfare_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_title_fanfare)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_title_fanfare_1:
	.byte	KEYSH , mus_title_fanfare_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 122*mus_title_fanfare_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_title_fanfare_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte	W24
	.byte		N06   , Cn1 , v127
	.byte		N12   , En1 , v044
	.byte		N48   , Cs2 , v127
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		        Cn1 
	.byte		N04   , Dn1 , v060
	.byte	W12
	.byte		N06   , Gs1 , v127
	.byte	W06
	.byte		        Cn1 
	.byte		N12   , En1 , v044
	.byte	W12
	.byte		N06   , Cs1 , v127
	.byte	W12
	.byte		        Cn1 
	.byte		N12   , En1 , v044
	.byte	W12
/* 001   ----------------------------------------
 */	.byte		N06   , Cn1 , v127
	.byte		N06   , Dn1 , v052
	.byte	W06
	.byte		N03   , Cs1 , v127
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N06   , Cs1 , v052
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn1 , v052
	.byte		N06   , An1 , v088
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W06
/* 002   ----------------------------------------
 */	.byte		        Cn1 
	.byte		N12   , En1 , v044
	.byte	W12
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte		N12   , En1 , v044
	.byte		N06   , Gs1 , v127
	.byte	W12
	.byte		        Cs1 
	.byte	W06
	.byte		        Cn1 
	.byte		N12   , En1 , v044
	.byte	W12
	.byte		N06   , Cs1 , v127
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Dn1 , v052
	.byte		N30   , Cs2 , v127
	.byte	W24
	.byte		N06   , Dn1 , v052
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
/* 003   ----------------------------------------
 */	.byte		        Cn1 
	.byte		N06   , En1 , v044
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cs1 , v127
	.byte		N06   , En1 , v044
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , Dn1 , v044
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N12   , Dn1 , v060
	.byte	W06
	.byte		N06   , Gs1 , v127
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        En1 , v036
	.byte		N06   , Fs1 , v127
	.byte	W12
	.byte		        Cs1 
	.byte	W06
	.byte		        Cn1 
	.byte		N78   , Cs2 
	.byte	W01
	.byte		N11   , En1 , v076
	.byte	W32
	.byte	W03
/* 004   ----------------------------------------
 */	.byte	W42
	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_title_fanfare_2:
	.byte	KEYSH , mus_title_fanfare_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 0
	.byte		VOL   , 60*mus_title_fanfare_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 13
	.byte		LFOS  , 18
	.byte		LFODL , 20
	.byte		MOD   , 3
	.byte		MODT  , 0
	.byte		BEND  , c_v+0
	.byte	W24
	.byte		N05   , Fn2 , v127
	.byte	W18
	.byte		        Cn3 
	.byte	W18
	.byte		        Ds2 
	.byte	W24
	.byte		N92   , Cn3 
	.byte	W12
/* 001   ----------------------------------------
 */	.byte	W84
	.byte		N06   , Gn2 , v076
	.byte	W06
	.byte		        Gs2 , v088
	.byte	W05
	.byte		BEND  , c_v-60
	.byte	W01
/* 002   ----------------------------------------
 */	.byte		N06   , Cn3 , v092
	.byte	W06
	.byte		N18   , Gn3 
	.byte	W07
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v+0
	.byte	W03
	.byte		N14   , Fn2 , v116
	.byte	W17
	.byte		N05   , Cn3 , v096
	.byte	W17
	.byte		N48   , Fn2 , v104
	.byte	W36
	.byte	W02
/* 003   ----------------------------------------
 */	.byte	W24
	.byte		N06   , Cn3 
	.byte	W17
	.byte		N13   , Cn3 , v127
	.byte	W17
	.byte		N19   , Cn3 , v116
	.byte	W19
	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_title_fanfare_3:
	.byte	KEYSH , mus_title_fanfare_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 2
	.byte		VOL   , 90*mus_title_fanfare_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 56
	.byte		LFODL , 0
	.byte		MOD   , 2
	.byte		MODT  , 2
	.byte	W24
	.byte		N12   , An3 , v116
	.byte	W18
	.byte		N06   , Gn3 , v127
	.byte	W18
	.byte		        As3 , v120
	.byte	W24
	.byte		TIE   , Cn4 , v096
	.byte	W06
	.byte		VOL   , 81*mus_title_fanfare_mvl/mxv
	.byte	W06
/* 001   ----------------------------------------
 */	.byte		        76*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        70*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        65*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        60*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        54*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        47*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        50*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        53*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        56*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        59*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        61*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        64*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        67*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        70*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        72*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        75*mus_title_fanfare_mvl/mxv
	.byte	W06
/* 002   ----------------------------------------
 */	.byte		        78*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		EOT   
	.byte		VOL   , 81*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        84*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        87*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		N15   , As3 , v100
	.byte	W17
	.byte		N04   , As3 , v088
	.byte	W17
	.byte		N48   , As3 , v096
	.byte	W36
	.byte	W02
/* 003   ----------------------------------------
 */	.byte	W24
	.byte		N06   , Fn4 , v104
	.byte	W18
	.byte		N13   , Fn4 , v127
	.byte	W17
	.byte		N19   , Fn4 , v116
	.byte	W19
	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_title_fanfare_4:
	.byte	KEYSH , mus_title_fanfare_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 5
	.byte		VOL   , 90*mus_title_fanfare_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 56
	.byte		LFODL , 0
	.byte		MOD   , 2
	.byte		MODT  , 2
	.byte	W24
	.byte		N12   , Cn3 , v068
	.byte	W18
	.byte		N06   , Cn3 , v064
	.byte	W18
	.byte		        Ds3 
	.byte	W24
	.byte		TIE   , Ds3 , v060
	.byte	W06
	.byte		VOL   , 81*mus_title_fanfare_mvl/mxv
	.byte	W06
/* 001   ----------------------------------------
 */	.byte		        76*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        70*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        65*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        60*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        54*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        47*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        50*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        53*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        56*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        59*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        61*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        64*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        67*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        70*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        72*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        75*mus_title_fanfare_mvl/mxv
	.byte	W06
/* 002   ----------------------------------------
 */	.byte		        78*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		EOT   
	.byte		VOL   , 81*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        84*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		        87*mus_title_fanfare_mvl/mxv
	.byte	W06
	.byte		N14   , Cn3 , v076
	.byte	W17
	.byte		N03   , Fn3 , v056
	.byte	W17
	.byte		N48   , Cn3 , v060
	.byte	W36
	.byte	W02
/* 003   ----------------------------------------
 */	.byte	W23
	.byte		N09   , Cn4 , v068
	.byte	W19
	.byte		N14   
	.byte	W16
	.byte		N20   , Cn4 , v064
	.byte	W21
	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_title_fanfare_5:
	.byte	KEYSH , mus_title_fanfare_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 3
	.byte		VOL   , 127*mus_title_fanfare_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 23
	.byte		LFODL , 22
	.byte		MOD   , 4
	.byte		MODT  , 0
	.byte	W24
	.byte		N12   , Cn3 , v116
	.byte	W18
	.byte		N08   , Cn3 , v108
	.byte	W18
	.byte		N06   , Ds3 , v124
	.byte	W24
	.byte		TIE   , Ds3 , v104
	.byte	W12
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W11
	.byte		EOT   
	.byte	W09
	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_title_fanfare_6:
	.byte	KEYSH , mus_title_fanfare_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 1
	.byte		VOL   , 127*mus_title_fanfare_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 23
	.byte		LFODL , 22
	.byte		MOD   , 2
	.byte		MODT  , 0
	.byte	W24
	.byte		N05   , Fn1 , v108
	.byte	W06
	.byte		N11   , Cn2 
	.byte	W12
	.byte		N17   , Ds2 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W24
	.byte		N32   , Gs1 , v116
	.byte	W12
/* 001   ----------------------------------------
 */	.byte	W24
	.byte		N52   
	.byte	W54
	.byte		N05   , Gs1 , v108
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
/* 002   ----------------------------------------
 */	.byte		        Fs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N14   , As1 
	.byte	W18
	.byte		N05   , Bn1 , v104
	.byte	W18
	.byte		N44   , Cn2 , v116
	.byte	W36
/* 003   ----------------------------------------
 */	.byte	W24
	.byte		N07   , Ds2 , v100
	.byte	W18
	.byte		N12   , En2 , v116
	.byte	W18
	.byte		N15   , Fn2 
	.byte	W15
	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_title_fanfare_7:
	.byte	KEYSH , mus_title_fanfare_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 4
	.byte		VOL   , 80*mus_title_fanfare_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 3
	.byte		LFOS  , 23
	.byte		LFODL , 22
	.byte		MOD   , 0
	.byte		MODT  , 0
	.byte	W14
	.byte		N06   , As2 , v100
	.byte	W02
	.byte		        Cn3 
	.byte	W03
	.byte		        Dn3 
	.byte	W02
	.byte		        Ds3 
	.byte	W03
	.byte		N12   , Fn3 , v120
	.byte	W18
	.byte		N06   , Ds3 , v100
	.byte	W18
	.byte		        Gn3 , v112
	.byte	W24
	.byte		TIE   , Ds3 , v104
	.byte	W12
/* 001   ----------------------------------------
 */	.byte	W96
	.byte		EOT   
/* 002   ----------------------------------------
 */	.byte	W24
	.byte		N14   , Fn3 , v116
	.byte	W17
	.byte		N03   , Fn3 , v096
	.byte	W17
	.byte		N28   , Fn3 , v104
	.byte	W36
	.byte	W01
	.byte		N02   , As2 , v116
	.byte	W01
/* 003   ----------------------------------------
 */	.byte	W02
	.byte		N04   , Cn3 , v100
	.byte	W03
	.byte		N03   , Dn3 , v088
	.byte	W04
	.byte		        Ds3 , v052
	.byte	W04
	.byte		N01   , Fn3 , v040
	.byte	W01
	.byte		        Gn3 
	.byte	W02
	.byte		        Gs3 
	.byte	W02
	.byte		        As3 , v048
	.byte	W02
	.byte		        Cn4 , v032
	.byte	W02
	.byte		        Dn4 , v052
	.byte	W01
	.byte		N09   , Ds3 , v116
	.byte	W01
	.byte		N06   , Fn4 , v104
	.byte	W18
	.byte		N14   , En3 , v116
	.byte		N13   , Fn4 , v127
	.byte	W16
	.byte		N20   , Fn3 , v108
	.byte	W01
	.byte		N19   , Fn4 , v116
	.byte	W20
	.byte		N01   , En4 , v092
	.byte	W01
	.byte		        Ds4 
	.byte	W02
	.byte		        Dn4 
	.byte	W02
	.byte		        Cn4 
	.byte	W03
	.byte		        As3 
	.byte	W02
	.byte		        An3 
	.byte	W03
	.byte		        Fn3 
	.byte	W01
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_title_fanfare):
	.byte	7	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_title_fanfare_pri	/* Priority */
	.byte	mus_title_fanfare_rev	/* Reverb */

mAlignWord
	mPtr	mus_title_fanfare_grp

	mPtr	mus_title_fanfare_1
	mPtr	mus_title_fanfare_2
	mPtr	mus_title_fanfare_3
	mPtr	mus_title_fanfare_4
	mPtr	mus_title_fanfare_5
	mPtr	mus_title_fanfare_6
	mPtr	mus_title_fanfare_7

	.end
