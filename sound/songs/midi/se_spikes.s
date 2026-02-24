	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	se_spikes_grp, voicegroup000
	.equ	se_spikes_pri, 20
	.equ	se_spikes_rev, reverb_set+0
	.equ	se_spikes_mvl, 90
	.equ	se_spikes_key, 0
	.equ	se_spikes_tbs, 1
	.equ	se_spikes_exg, 1
	.equ	se_spikes_cmp, 1

	mSectionRodata
	.global	C_DECL(se_spikes)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

se_spikes_1:
	.byte	KEYSH , se_spikes_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 150*se_spikes_tbs/2
	.byte		VOICE , 60
	.byte		VOL   , 127*se_spikes_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BENDR , 5
	.byte		N06   , Fn3 , v104
	.byte	W06
	.byte		BEND  , c_v-64
	.byte		N42   , Gs4 , v108
	.byte	W01
	.byte		BEND  , c_v-61
	.byte	W01
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-55
	.byte	W01
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-49
	.byte	W01
	.byte		        c_v-45
	.byte	W01
	.byte		        c_v-42
	.byte	W01
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-36
	.byte	W01
	.byte		        c_v-33
	.byte	W01
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+15
	.byte	W01
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+24
	.byte	W01
	.byte		        c_v+28
	.byte	W02
	.byte		        c_v+34
	.byte	W01
	.byte		        c_v+37
	.byte	W01
	.byte		        c_v+40
	.byte	W01
	.byte		        c_v+43
	.byte	W01
	.byte		        c_v+47
	.byte	W01
	.byte		        c_v+50
	.byte	W01
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+56
	.byte	W01
	.byte		        c_v+59
	.byte	W01
	.byte		        c_v+63
	.byte	W02
	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(se_spikes):
	.byte	1	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	se_spikes_pri	/* Priority */
	.byte	se_spikes_rev	/* Reverb */

mAlignWord
	mPtr	se_spikes_grp

	mPtr	se_spikes_1

	.end
