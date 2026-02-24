	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_final_clear_grp, voicegroup008
	.equ	mus_final_clear_pri, 0
	.equ	mus_final_clear_rev, reverb_set+0
	.equ	mus_final_clear_mvl, 110
	.equ	mus_final_clear_key, 0
	.equ	mus_final_clear_tbs, 1
	.equ	mus_final_clear_exg, 1
	.equ	mus_final_clear_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_final_clear)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_final_clear_1:
	.byte	KEYSH , mus_final_clear_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 144*mus_final_clear_tbs/2
	.byte		VOICE , 19
	.byte		VOL   , 85*mus_final_clear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W48
	.byte		N06   , Gs3 , v127
	.byte	W18
	.byte		        As3 
	.byte	W18
	.byte		N54   , Cn4 
	.byte	W12
/* 001   ----------------------------------------
 */	.byte	W48
	.byte		N06   
	.byte	W18
	.byte		        Dn4 
	.byte	W18
	.byte		N48   , Ds4 
	.byte	W12
/* 002   ----------------------------------------
 */	.byte	W48
	.byte		N06   , Fn4 
	.byte	W06
	.byte		TIE   
	.byte	W42
/* 003   ----------------------------------------
 */	.byte	W96
	.byte		EOT   
/* 004   ----------------------------------------
 */	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_final_clear_2:
	.byte	KEYSH , mus_final_clear_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 20
	.byte		VOL   , 81*mus_final_clear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W48
	.byte		N06   , Gs2 , v127
	.byte	W18
	.byte		        As2 
	.byte	W18
	.byte		N54   , Cn3 
	.byte	W12
/* 001   ----------------------------------------
 */	.byte	W48
	.byte		N06   
	.byte	W18
	.byte		        Dn3 
	.byte	W18
	.byte		N48   , Ds3 
	.byte	W12
/* 002   ----------------------------------------
 */	.byte	W48
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_final_clear_3:
	.byte	KEYSH , mus_final_clear_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 21
	.byte		VOL   , 70*mus_final_clear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W48
	.byte		N06   , Ds2 , v127
	.byte	W18
	.byte		        Fn2 
	.byte	W18
	.byte		N54   , Gs2 
	.byte	W12
/* 001   ----------------------------------------
 */	.byte	W48
	.byte		N06   
	.byte	W18
	.byte		        As2 , v120
	.byte	W18
	.byte		N48   , Bn2 , v127
	.byte	W12
/* 002   ----------------------------------------
 */	.byte	W48
	.byte		N06   , Cs3 
	.byte	W06
	.byte		TIE   
	.byte	W42
/* 003   ----------------------------------------
 */	.byte	W96
	.byte		EOT   
/* 004   ----------------------------------------
 */	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_final_clear_4:
	.byte	KEYSH , mus_final_clear_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 22
	.byte		VOL   , 108*mus_final_clear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W48
	.byte		N06   , Cn3 , v127
	.byte	W18
	.byte		        Dn3 
	.byte	W18
	.byte		N54   , Ds3 , v124
	.byte	W12
/* 001   ----------------------------------------
 */	.byte	W48
	.byte		N06   , Ds3 , v127
	.byte	W18
	.byte		        Fn3 
	.byte	W18
	.byte		N48   , Fs3 
	.byte	W12
/* 002   ----------------------------------------
 */	.byte	W48
	.byte		N06   , Gs3 
	.byte	W06
	.byte		TIE   
	.byte	W42
/* 003   ----------------------------------------
 */	.byte	W96
	.byte		EOT   
/* 004   ----------------------------------------
 */	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_final_clear_5:
	.byte	KEYSH , mus_final_clear_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 23
	.byte		VOL   , 110*mus_final_clear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W48
	.byte		N06   , Gs2 , v127
	.byte	W18
	.byte		        Gn2 
	.byte	W18
	.byte		N54   , Fn2 
	.byte	W12
/* 001   ----------------------------------------
 */	.byte	W48
	.byte		N06   
	.byte	W18
	.byte		        Ds2 
	.byte	W18
	.byte		N48   , Cs2 
	.byte	W12
/* 002   ----------------------------------------
 */	.byte	W48
	.byte		N06   , Ds2 
	.byte	W06
	.byte		TIE   
	.byte	W42
/* 003   ----------------------------------------
 */	.byte	W96
	.byte		EOT   
/* 004   ----------------------------------------
 */	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_final_clear_6:
	.byte	KEYSH , mus_final_clear_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 24
	.byte		VOL   , 73*mus_final_clear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W48
	.byte		N03   , Ds2 , v120
	.byte	W03
	.byte		        Fn2 , v127
	.byte	W03
	.byte		        Gs2 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        Fn5 
	.byte	W03
	.byte		        Gs5 
	.byte	W03
	.byte		        Cs6 
	.byte	W03
/* 003   ----------------------------------------
 */	.byte		        Gs5 
	.byte	W03
	.byte		        Fn5 
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        Gs2 
	.byte	W03
	.byte		        Fn2 
	.byte	W04
	.byte		        Cs6 , v072
	.byte	W03
	.byte		        Gs5 
	.byte	W03
	.byte		        Fn5 
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        Gs2 
	.byte	W03
	.byte		        Fn2 
	.byte	W05
	.byte		        Cs6 , v028
	.byte	W03
	.byte		        Gs5 
	.byte	W03
/* 004   ----------------------------------------
 */	.byte		        Fn5 
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        Gs2 
	.byte	W03
	.byte		        Fn2 
	.byte	W03
	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_final_clear_7:
	.byte	KEYSH , mus_final_clear_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 25
	.byte		VOL   , 29*mus_final_clear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W48
	.byte		N03   , Ds2 , v120
	.byte	W03
	.byte		        Fn2 , v127
	.byte	W03
	.byte		        Gs2 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        Fn5 
	.byte	W03
	.byte		        Gs5 
	.byte	W03
	.byte		        Cs6 
	.byte	W03
/* 003   ----------------------------------------
 */	.byte		        Gs5 
	.byte	W03
	.byte		        Fn5 
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        Gs2 
	.byte	W03
	.byte		        Fn2 
	.byte	W04
	.byte		        Cs6 , v072
	.byte	W03
	.byte		        Gs5 
	.byte	W03
	.byte		        Fn5 
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        Gs2 
	.byte	W03
	.byte		        Fn2 
	.byte	W05
	.byte		        Cs6 , v028
	.byte	W03
	.byte		        Gs5 
	.byte	W03
/* 004   ----------------------------------------
 */	.byte		        Fn5 
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        Gs2 
	.byte	W03
	.byte		        Fn2 
	.byte	W03
	.byte	FINE

/* **************** Track 8 (Midi-Chn.8) **************** */

mus_final_clear_8:
	.byte	KEYSH , mus_final_clear_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 127
	.byte		VOL   , 119*mus_final_clear_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N03   , Cs1 , v120
	.byte	W04
	.byte		        Cs1 , v108
	.byte	W04
	.byte		N24   , Cs1 , v064
	.byte	W04
	.byte		N05   , Gs1 , v100
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn1 , v096
	.byte	W06
	.byte		        Gn1 , v092
	.byte	W06
	.byte		        Fs1 , v108
	.byte	W06
	.byte		        Fs1 , v104
	.byte	W06
	.byte		N17   , Cn1 , v108
	.byte		N72   , Fs2 
	.byte	W18
	.byte		N17   , Cs1 , v104
	.byte	W18
	.byte		N23   , Cn1 , v127
	.byte	W12
/* 001   ----------------------------------------
 */	.byte	W12
	.byte		N05   , Cn1 , v108
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Cs1 , v127
	.byte	W12
	.byte		N05   , Cn1 , v116
	.byte	W06
	.byte		        Cs1 , v096
	.byte	W06
	.byte		N17   , Cn1 , v120
	.byte		N72   , Fs2 , v108
	.byte	W18
	.byte		N17   , Cs1 
	.byte	W18
	.byte		N23   , Cn1 , v116
	.byte	W12
/* 002   ----------------------------------------
 */	.byte	W12
	.byte		N03   , An1 , v120
	.byte	W04
	.byte		N19   
	.byte	W02
	.byte		N23   , Gs1 
	.byte	W06
	.byte		N11   , Cs1 
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N05   , Cs1 , v116
	.byte		N05   , Fs2 , v108
	.byte	W06
	.byte		N76   , Cs1 , v100
	.byte		N72   , Fs2 , v108
	.byte	W42
/* 003   ----------------------------------------
 */	.byte	W36
	.byte		N05   , Cs1 , v100
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N30   , Cn1 
	.byte		TIE   , Fs2 , v108
	.byte	W48
/* 004   ----------------------------------------
 */	.byte	W48
	.byte	W01
	.byte		EOT   
	.byte	FINE

/* **************** Track 9 (Midi-Chn.9) **************** */

mus_final_clear_9:
	.byte		VOL   , 127*mus_final_clear_mvl/mxv
	.byte	KEYSH , mus_final_clear_key+0
/* 000   ----------------------------------------
 */	.byte	W48
	.byte		N09   , Dn1 , v040
	.byte	W18
	.byte		N09   
	.byte	W18
	.byte		N09   
	.byte	W12
/* 001   ----------------------------------------
 */	.byte	W24
	.byte		N21   , Ds1 
	.byte	W24
	.byte		N09   , Dn1 
	.byte	W18
	.byte		N09   
	.byte	W18
	.byte		N09   
	.byte	W12
/* 002   ----------------------------------------
 */	.byte	W24
	.byte		N24   , Ds1 
	.byte	W30
	.byte		N24   
	.byte	W24
	.byte	W03
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_final_clear):
	.byte	9	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_final_clear_pri	/* Priority */
	.byte	mus_final_clear_rev	/* Reverb */

mAlignWord
	mPtr	mus_final_clear_grp

	mPtr	mus_final_clear_1
	mPtr	mus_final_clear_2
	mPtr	mus_final_clear_3
	mPtr	mus_final_clear_4
	mPtr	mus_final_clear_5
	mPtr	mus_final_clear_6
	mPtr	mus_final_clear_7
	mPtr	mus_final_clear_8
	mPtr	mus_final_clear_9

	.end
