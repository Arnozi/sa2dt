	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_275_grp, voicegroup005
	.equ	se_275_pri, 20
	.equ	se_275_rev, reverb_set+0
	.equ	se_275_mvl, 100
	.equ	se_275_key, 0
	.equ	se_275_tbs, 1
	.equ	se_275_exg, 1
	.equ	se_275_cmp, 1

	mSectionRodata
	.global	C_DECL(se_275)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_275_1:
	.byte	KEYSH , se_275_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 120*se_275_tbs/2
	.byte		VOICE , 75
	.byte		VOL   , 127*se_275_mvl/mxv
	.byte		LFOS  , 90
	.byte		MODT  , 0
	.byte		PAN   , c_v+0
	.byte		N01   , Ds3 , v127
	.byte		N01   , Gn3 
	.byte	W01
	.byte		        Cn3 , v124
	.byte	W01
	.byte		        Gs2 , v120
	.byte	W02
	.byte		        Cs3 , v112
	.byte		N01   , Fn3 , v116
	.byte	W01
	.byte		        As2 , v108
	.byte	W01
	.byte		        Fs2 , v104
	.byte	W02
	.byte		        Bn2 , v100
	.byte		N01   , Ds3 
	.byte	W01
	.byte		        Gs2 , v096
	.byte	W01
	.byte		        En2 , v092
	.byte	W02
	.byte		        An2 , v084
	.byte		N01   , Cs3 , v088
	.byte	W01
	.byte		        Fs2 , v080
	.byte	W01
	.byte		        Dn2 , v076
	.byte	W02
	.byte		        Gn2 , v072
	.byte		N01   , Bn2 
	.byte	W01
	.byte		        En2 , v068
	.byte	W01
	.byte		        Cn2 , v064
	.byte	W02
	.byte		        Fn2 , v056
	.byte		N01   , An2 , v060
	.byte	W01
	.byte		        Dn2 , v052
	.byte	W01
	.byte		        As1 , v048
	.byte	W02
	.byte		        Ds2 , v044
	.byte		N01   , Gn2 
	.byte	W01
	.byte		        Cn2 , v040
	.byte	W01
	.byte		        Gs1 , v036
	.byte	W02
	.byte		        Cs2 , v028
	.byte		N01   , Fn2 , v032
	.byte	W01
	.byte		        As1 , v024
	.byte	W01
	.byte		        Fs1 , v020
	.byte	W02
	.byte		        Bn1 , v016
	.byte		N01   , Ds2 
	.byte	W01
	.byte		        Gs1 , v012
	.byte	W01
	.byte		        En1 , v008
	.byte	W02
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_275):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_275_pri	/* Priority */
	.byte	se_275_rev	/* Reverb */

mAlignWord
	mPtr	se_275_grp

	mPtr	se_275_1

	.end
