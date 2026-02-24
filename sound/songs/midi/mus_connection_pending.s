	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_connection_pending_grp, voicegroup010
	.equ	mus_connection_pending_pri, 0
	.equ	mus_connection_pending_rev, reverb_set+0
	.equ	mus_connection_pending_mvl, 110
	.equ	mus_connection_pending_key, 0
	.equ	mus_connection_pending_tbs, 1
	.equ	mus_connection_pending_exg, 1
	.equ	mus_connection_pending_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_connection_pending)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_connection_pending_1:
	.byte	KEYSH , mus_connection_pending_key+0
/* 000   ----------------------------------------
 */	.byte	TEMPO , 126*mus_connection_pending_tbs/2
	.byte		VOICE , 18
	.byte		VOL   , 110*mus_connection_pending_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
mus_connection_pending_1_B1:
/* 004   ----------------------------------------
 */	.byte		MOD   , 0
	.byte		N06   , Dn4 , v127
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        An4 
	.byte	W12
/* 005   ----------------------------------------
 */	.byte		        Cn5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N24   , Cn5 
	.byte	W24
	.byte		N06   , Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
/* 006   ----------------------------------------
 */mus_connection_pending_1_006:
	.byte		N06   , Dn4 , v127
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte	PEND
/* 007   ----------------------------------------
 */	.byte		        Cn5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N06   
	.byte	W60
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_1_006
/* 009   ----------------------------------------
 */	.byte		N06   , Cn5 , v127
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N18   , Cn5 
	.byte	W24
	.byte		N06   , Bn4 
	.byte	W12
	.byte		N12   , An4 
	.byte	W24
/* 010   ----------------------------------------
 */	.byte		N06   , Gn4 
	.byte	W12
	.byte		N06   
	.byte	W24
	.byte		N18   
	.byte	W24
	.byte		N06   , Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
/* 011   ----------------------------------------
 */	.byte	W23
	.byte		MOD   , 2
	.byte	W01
	.byte		N42   , Dn5 , v096
	.byte	W72
/* 012   ----------------------------------------
 */	.byte	W96
/* 013   ----------------------------------------
 */	.byte	W96
/* 014   ----------------------------------------
 */	.byte	W96
/* 015   ----------------------------------------
 */	.byte	W96
/* 016   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_connection_pending_1_B1
mus_connection_pending_1_B2:
/* 017   ----------------------------------------
 */	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_connection_pending_2:
	.byte	KEYSH , mus_connection_pending_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 61
	.byte		VOL   , 110*mus_connection_pending_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
mus_connection_pending_2_B1:
/* 004   ----------------------------------------
 */mus_connection_pending_2_004:
	.byte	W24
	.byte		N06   , An3 , v127
	.byte	W48
	.byte		N18   , Gn3 
	.byte	W24
	.byte	PEND
/* 005   ----------------------------------------
 */mus_connection_pending_2_005:
	.byte	W24
	.byte		N06   , An3 , v127
	.byte	W12
	.byte		N06   
	.byte	W36
	.byte		N18   , Gn3 
	.byte	W24
	.byte	PEND
/* 006   ----------------------------------------
 */	.byte	W24
	.byte		N06   , An3 
	.byte	W12
	.byte		N06   
	.byte	W36
	.byte		        Gn3 
	.byte	W24
/* 007   ----------------------------------------
 */	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W60
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_2_005
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_2_005
/* 010   ----------------------------------------
 */	.byte		N06   , Bn3 , v127
	.byte	W12
	.byte		N06   
	.byte	W24
	.byte		N18   
	.byte	W24
	.byte		N06   , Gn3 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        En3 
	.byte	W12
/* 011   ----------------------------------------
 */	.byte	W24
	.byte		N54   , An3 
	.byte	W72
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_2_004
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_2_005
/* 014   ----------------------------------------
 */mus_connection_pending_2_014:
	.byte	W24
	.byte		N06   , An3 , v127
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Gn3 
	.byte	W48
	.byte	PEND
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_2_005
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_2_014
	.byte	GOTO
	 mPtr	mus_connection_pending_2_B1
mus_connection_pending_2_B2:
/* 017   ----------------------------------------
 */	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_connection_pending_3:
	.byte	KEYSH , mus_connection_pending_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 61
	.byte		VOL   , 110*mus_connection_pending_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
mus_connection_pending_3_B1:
/* 004   ----------------------------------------
 */mus_connection_pending_3_004:
	.byte	W24
	.byte		N06   , Fs3 , v127
	.byte	W48
	.byte		N18   , En3 
	.byte	W24
	.byte	PEND
/* 005   ----------------------------------------
 */mus_connection_pending_3_005:
	.byte	W24
	.byte		N06   , Fs3 , v127
	.byte	W12
	.byte		N06   
	.byte	W36
	.byte		N18   , En3 
	.byte	W24
	.byte	PEND
/* 006   ----------------------------------------
 */	.byte	W24
	.byte		N06   , Fs3 
	.byte	W12
	.byte		N06   
	.byte	W36
	.byte		        En3 
	.byte	W24
/* 007   ----------------------------------------
 */	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W60
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_3_005
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_3_005
/* 010   ----------------------------------------
 */	.byte		N06   , Dn3 , v127
	.byte	W12
	.byte		N06   
	.byte	W24
	.byte		N18   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Cs3 
	.byte	W12
/* 011   ----------------------------------------
 */	.byte	W24
	.byte		N54   , Fs3 
	.byte	W72
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_3_004
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_3_005
/* 014   ----------------------------------------
 */mus_connection_pending_3_014:
	.byte	W24
	.byte		N06   , Fs3 , v127
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        En3 
	.byte	W48
	.byte	PEND
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_3_005
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_3_014
	.byte	GOTO
	 mPtr	mus_connection_pending_3_B1
mus_connection_pending_3_B2:
/* 017   ----------------------------------------
 */	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_connection_pending_4:
	.byte	KEYSH , mus_connection_pending_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 19
	.byte		VOL   , 59*mus_connection_pending_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
mus_connection_pending_4_B1:
/* 004   ----------------------------------------
 */	.byte		MOD   , 0
	.byte		N06   , Dn4 , v127
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        An4 
	.byte	W12
/* 005   ----------------------------------------
 */	.byte		        Cn5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Cn5 
	.byte	W24
	.byte		        Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
/* 006   ----------------------------------------
 */mus_connection_pending_4_006:
	.byte		N06   , Dn4 , v127
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte	PEND
/* 007   ----------------------------------------
 */	.byte		        Cn5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N06   
	.byte	W60
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_4_006
/* 009   ----------------------------------------
 */	.byte		N06   , Cn5 , v127
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Cn5 
	.byte	W24
	.byte		        Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W24
/* 010   ----------------------------------------
 */	.byte		        Gn4 
	.byte	W12
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
/* 011   ----------------------------------------
 */	.byte	W23
	.byte		MOD   , 3
	.byte	W01
	.byte		N06   , Dn5 
	.byte	W72
/* 012   ----------------------------------------
 */	.byte	W96
/* 013   ----------------------------------------
 */	.byte	W96
/* 014   ----------------------------------------
 */	.byte	W96
/* 015   ----------------------------------------
 */	.byte	W96
/* 016   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_connection_pending_4_B1
mus_connection_pending_4_B2:
/* 017   ----------------------------------------
 */	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_connection_pending_5:
	.byte	KEYSH , mus_connection_pending_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 17
	.byte		VOL   , 77*mus_connection_pending_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N06   , Dn2 , v127
	.byte	W24
	.byte		        Fs2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
/* 001   ----------------------------------------
 */mus_connection_pending_5_001:
	.byte		N06   , Dn2 , v127
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W48
	.byte	PEND
/* 002   ----------------------------------------
 */mus_connection_pending_5_002:
	.byte		N06   , Dn2 , v127
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte	PEND
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_5_001
mus_connection_pending_5_B1:
/* 004   ----------------------------------------
 */mus_connection_pending_5_004:
	.byte		N06   , Dn2 , v127
	.byte	W24
	.byte		        Fs2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte	PEND
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_5_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_5_002
/* 007   ----------------------------------------
 */	.byte		N06   , Cn2 , v127
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W60
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_5_002
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_5_002
/* 010   ----------------------------------------
 */	.byte		N06   , Gn1 , v127
	.byte	W12
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        An1 
	.byte	W12
/* 011   ----------------------------------------
 */	.byte	W24
	.byte		N06   
	.byte	W72
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_5_004
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_5_002
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_5_001
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_5_004
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_5_001
	.byte	GOTO
	 mPtr	mus_connection_pending_5_B1
mus_connection_pending_5_B2:
/* 017   ----------------------------------------
 */	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_connection_pending_6:
	.byte	KEYSH , mus_connection_pending_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 63
	.byte		VOL   , 67*mus_connection_pending_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N06   , Dn3 , v127
	.byte	W24
	.byte		N09   , Fs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N06   , Cn3 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N09   , Bn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
/* 001   ----------------------------------------
 */mus_connection_pending_6_001:
	.byte		N06   , Dn3 , v127
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N09   , Fs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N06   , Cn3 
	.byte	W48
	.byte	PEND
/* 002   ----------------------------------------
 */mus_connection_pending_6_002:
	.byte		N06   , Dn3 , v127
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N09   , Fs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N06   , Cn3 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N09   , Bn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte	PEND
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_6_001
mus_connection_pending_6_B1:
/* 004   ----------------------------------------
 */mus_connection_pending_6_004:
	.byte		N06   , Dn3 , v127
	.byte	W24
	.byte		N09   , Fs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N06   , Cn3 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N09   , Bn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte	PEND
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_6_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_6_002
/* 007   ----------------------------------------
 */	.byte		N06   , Cn3 , v127
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W60
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_6_002
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_6_002
/* 010   ----------------------------------------
 */	.byte		N06   , Gn2 , v127
	.byte	W12
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        An2 
	.byte	W12
/* 011   ----------------------------------------
 */	.byte	W24
	.byte		N06   
	.byte	W72
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_6_004
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_6_002
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_6_001
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_6_004
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_6_001
	.byte	GOTO
	 mPtr	mus_connection_pending_6_B1
mus_connection_pending_6_B2:
/* 017   ----------------------------------------
 */	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_connection_pending_7:
	.byte		VOL   , 127*mus_connection_pending_mvl/mxv
	.byte	KEYSH , mus_connection_pending_key+0
/* 000   ----------------------------------------
 */	.byte		VOICE , 127
	.byte		PAN   , c_v+0
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W60
	.byte		N04   , Dn1 , v044
	.byte	W12
	.byte		N21   , Ds1 
	.byte	W24
/* 002   ----------------------------------------
 */	.byte		N04   , Dn1 
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W24
	.byte		N04   
	.byte	W24
/* 003   ----------------------------------------
 */	.byte		N04   
	.byte	W24
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W24
	.byte		N10   , Ds1 
	.byte	W24
mus_connection_pending_7_B1:
/* 004   ----------------------------------------
 */	.byte		N04   , Dn1 , v044
	.byte	W24
	.byte		N04   
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		N04   
	.byte	W24
	.byte		N04   
	.byte	W24
/* 005   ----------------------------------------
 */	.byte		N04   
	.byte	W24
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W24
	.byte		N05   
	.byte	W24
/* 006   ----------------------------------------
 */mus_connection_pending_7_006:
	.byte		N04   , Dn1 , v044
	.byte	W24
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W24
	.byte		N04   
	.byte	W24
	.byte	PEND
/* 007   ----------------------------------------
 */	.byte		N04   
	.byte	W24
	.byte		N04   
	.byte	W12
	.byte		N28   , Ds1 
	.byte	W60
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_7_006
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_7_006
/* 010   ----------------------------------------
 */	.byte		N04   , Dn1 , v044
	.byte	W12
	.byte		N04   
	.byte	W24
	.byte		N04   
	.byte	W24
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
/* 011   ----------------------------------------
 */	.byte	W24
	.byte		N48   , Ds1 
	.byte	W72
/* 012   ----------------------------------------
 */	.byte		N04   , Dn1 
	.byte	W24
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W24
	.byte		N23   , Ds1 
	.byte	W24
/* 013   ----------------------------------------
 */mus_connection_pending_7_013:
	.byte		N04   , Dn1 , v044
	.byte	W24
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W24
	.byte		N22   , Ds1 
	.byte	W24
	.byte	PEND
/* 014   ----------------------------------------
 */	.byte		N04   , Dn1 
	.byte	W24
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W48
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_connection_pending_7_013
/* 016   ----------------------------------------
 */	.byte		N04   , Dn1 , v044
	.byte	W24
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		N04   
	.byte	W24
	.byte		N12   , Ds1 
	.byte	W24
	.byte	GOTO
	 mPtr	mus_connection_pending_7_B1
mus_connection_pending_7_B2:
/* 017   ----------------------------------------
 */	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_connection_pending):
	.byte	7	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_connection_pending_pri	/* Priority */
	.byte	mus_connection_pending_rev	/* Reverb */

mAlignWord
	mPtr	mus_connection_pending_grp

	mPtr	mus_connection_pending_1
	mPtr	mus_connection_pending_2
	mPtr	mus_connection_pending_3
	mPtr	mus_connection_pending_4
	mPtr	mus_connection_pending_5
	mPtr	mus_connection_pending_6
	mPtr	mus_connection_pending_7

	.end
