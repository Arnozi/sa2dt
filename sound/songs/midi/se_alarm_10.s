	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_alarm_10_grp, voicegroup003
	.equ	se_alarm_10_pri, 20
	.equ	se_alarm_10_rev, reverb_set+0
	.equ	se_alarm_10_mvl, 120
	.equ	se_alarm_10_key, 0
	.equ	se_alarm_10_tbs, 1
	.equ	se_alarm_10_exg, 1
	.equ	se_alarm_10_cmp, 1

	mSectionRodata
	.global	C_DECL(se_alarm_10)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_alarm_10_1:
	.byte	KEYSH , se_alarm_10_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 150*se_alarm_10_tbs/2
	.byte		VOICE , 38
	.byte		VOL   , 127*se_alarm_10_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 15
	.byte		N12   , En5 , v100
	.byte	W12
	.byte		        Bn4 , v092
	.byte	W12
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_alarm_10):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_alarm_10_pri	/* Priority */
	.byte	se_alarm_10_rev	/* Reverb */

mAlignWord
	mPtr	se_alarm_10_grp

	mPtr	se_alarm_10_1

	.end
