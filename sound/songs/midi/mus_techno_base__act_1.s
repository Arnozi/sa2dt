	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_techno_base__act_1_grp, voicegroup014
	.equ	mus_techno_base__act_1_pri, 0
	.equ	mus_techno_base__act_1_rev, reverb_set+0
	.equ	mus_techno_base__act_1_mvl, 110
	.equ	mus_techno_base__act_1_key, 0
	.equ	mus_techno_base__act_1_tbs, 1
	.equ	mus_techno_base__act_1_exg, 1
	.equ	mus_techno_base__act_1_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_techno_base__act_1)
	mAlignWord

/* **************** Track 1 (Midi-Chn.1) **************** */

mus_techno_base__act_1_1:
	.byte	KEYSH , mus_techno_base__act_1_key+0
mus_techno_base__act_1_1_B1:
/* 000   ----------------------------------------
 */	.byte	TEMPO , 154*mus_techno_base__act_1_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_techno_base__act_1_mvl/mxv
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte		N92   , Gn2 , v127
	.byte	W96
/* 007   ----------------------------------------
 */	.byte	W96
/* 008   ----------------------------------------
 */	.byte	W96
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */	.byte	W96
/* 011   ----------------------------------------
 */	.byte	W96
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
/* 017   ----------------------------------------
 */	.byte	W96
/* 018   ----------------------------------------
 */	.byte	W96
/* 019   ----------------------------------------
 */	.byte	W96
/* 020   ----------------------------------------
 */	.byte	W96
/* 021   ----------------------------------------
 */	.byte	W96
/* 022   ----------------------------------------
 */	.byte		N92   
	.byte	W96
/* 023   ----------------------------------------
 */	.byte	W96
/* 024   ----------------------------------------
 */	.byte	W96
/* 025   ----------------------------------------
 */	.byte	W96
/* 026   ----------------------------------------
 */	.byte	W96
/* 027   ----------------------------------------
 */	.byte	W96
/* 028   ----------------------------------------
 */	.byte	W96
/* 029   ----------------------------------------
 */	.byte	W96
/* 030   ----------------------------------------
 */	.byte		N92   
	.byte	W96
/* 031   ----------------------------------------
 */	.byte	W96
/* 032   ----------------------------------------
 */	.byte	W96
/* 033   ----------------------------------------
 */	.byte	W96
/* 034   ----------------------------------------
 */	.byte	W96
/* 035   ----------------------------------------
 */	.byte	W96
/* 036   ----------------------------------------
 */	.byte	W96
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	W96
/* 039   ----------------------------------------
 */	.byte	W96
/* 040   ----------------------------------------
 */	.byte	W96
/* 041   ----------------------------------------
 */	.byte	W96
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte	W96
/* 044   ----------------------------------------
 */	.byte	W96
/* 045   ----------------------------------------
 */	.byte	W96
/* 046   ----------------------------------------
 */	.byte		N92   
	.byte	W96
/* 047   ----------------------------------------
 */	.byte	W96
/* 048   ----------------------------------------
 */	.byte	W96
/* 049   ----------------------------------------
 */	.byte	W96
/* 050   ----------------------------------------
 */	.byte	W96
/* 051   ----------------------------------------
 */	.byte	W96
/* 052   ----------------------------------------
 */	.byte	W96
/* 053   ----------------------------------------
 */	.byte	W96
/* 054   ----------------------------------------
 */	.byte	W96
/* 055   ----------------------------------------
 */	.byte	W96
/* 056   ----------------------------------------
 */	.byte	W96
/* 057   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_techno_base__act_1_1_B1
mus_techno_base__act_1_1_B2:
/* 058   ----------------------------------------
 */	.byte	FINE

/* **************** Track 2 (Midi-Chn.2) **************** */

mus_techno_base__act_1_2:
	.byte	KEYSH , mus_techno_base__act_1_key+0
mus_techno_base__act_1_2_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 126
	.byte		VOL   , 100*mus_techno_base__act_1_mvl/mxv
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W36
	.byte		N02   , Fn7 , v120
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   , As6 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N02   , Fn7 
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
/* 006   ----------------------------------------
 */mus_techno_base__act_1_2_006:
	.byte		N07   , Ds6 , v127
	.byte	W07
	.byte		N04   , En6 
	.byte	W05
	.byte		N07   , Fn6 
	.byte	W08
	.byte		N03   , Fs6 
	.byte	W04
	.byte		N11   , Gn6 
	.byte	W12
	.byte		N07   , Gs6 
	.byte	W07
	.byte		N04   , An6 
	.byte	W05
	.byte		N07   , As6 
	.byte	W07
	.byte		N04   , Bn6 
	.byte	W05
	.byte		N07   , Cn7 
	.byte	W07
	.byte		N04   , Cs7 
	.byte	W05
	.byte		N06   , Dn7 
	.byte	W06
	.byte		N05   , Ds7 
	.byte	W06
	.byte		N07   , En7 
	.byte	W07
	.byte		N04   , Fn7 
	.byte	W05
	.byte	PEND
/* 007   ----------------------------------------
 */mus_techno_base__act_1_2_007:
	.byte		N06   , Fs7 , v127
	.byte	W07
	.byte		N04   , Gn7 
	.byte	W05
	.byte		N07   , Gs7 
	.byte	W07
	.byte		N04   , An7 
	.byte	W05
	.byte		N06   , As7 
	.byte	W06
	.byte		N04   , Bn7 
	.byte	W06
	.byte		N06   , Cn8 
	.byte	W07
	.byte		N04   , Cs8 
	.byte	W05
	.byte		N07   , Dn8 
	.byte	W07
	.byte		N04   , Ds8 
	.byte	W05
	.byte		N07   , En8 
	.byte	W07
	.byte		N04   , Fn8 
	.byte	W05
	.byte		N11   , Fs8 
	.byte	W12
	.byte		N06   , En7 
	.byte	W06
	.byte		N05   , Fs8 
	.byte	W06
	.byte	PEND
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_006
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_007
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_006
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_007
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_006
/* 013   ----------------------------------------
 */	.byte		N06   , Fs7 , v127
	.byte	W07
	.byte		N04   , Gn7 
	.byte	W05
	.byte		N07   , Gs7 
	.byte	W07
	.byte		N04   , An7 
	.byte	W05
	.byte		N06   , As7 
	.byte	W06
	.byte		N04   , Bn7 
	.byte	W06
	.byte		N06   , Cn8 
	.byte	W07
	.byte		N04   , Cs8 
	.byte	W05
	.byte		N05   , Fn7 
	.byte	W06
	.byte		        Fs7 
	.byte	W06
	.byte		N02   , Fn7 
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N05   , Fs7 
	.byte	W06
	.byte		N02   , Fn7 
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N06   
	.byte	W06
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_006
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_007
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_006
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_007
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_006
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_007
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_006
/* 021   ----------------------------------------
 */	.byte		N06   , Fs7 , v127
	.byte	W07
	.byte		N04   , Gn7 
	.byte	W05
	.byte		N07   , Gs7 
	.byte	W07
	.byte		N04   , An7 
	.byte	W05
	.byte		N06   , As7 
	.byte	W06
	.byte		N04   , Bn7 
	.byte	W06
	.byte		N06   , Cn8 
	.byte	W07
	.byte		N04   , Cs8 
	.byte	W05
	.byte		N05   , Fn7 
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		        Fs7 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N02   , Fn7 
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N06   , Fs7 
	.byte	W06
/* 022   ----------------------------------------
 */	.byte	W96
/* 023   ----------------------------------------
 */	.byte	W96
/* 024   ----------------------------------------
 */	.byte	W96
/* 025   ----------------------------------------
 */	.byte	W96
/* 026   ----------------------------------------
 */	.byte	W96
/* 027   ----------------------------------------
 */	.byte	W96
/* 028   ----------------------------------------
 */	.byte	W96
/* 029   ----------------------------------------
 */	.byte		N05   , Fn7 
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   , Fs7 
	.byte	W06
	.byte		        Fn7 
	.byte	W06
	.byte		        Fs7 
	.byte	W06
	.byte		N11   , Fn7 
	.byte	W12
	.byte		N05   , Fs7 
	.byte	W06
	.byte		N02   , Fn7 
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N02   , Fs7 
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N05   , Fn7 
	.byte	W06
	.byte		N05   
	.byte	W06
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_006
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_007
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_006
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_007
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_006
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_007
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_006
/* 037   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_007
/* 038   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_006
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_007
/* 040   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_006
/* 041   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_007
/* 042   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_006
/* 043   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_007
/* 044   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_006
/* 045   ----------------------------------------
 */	.byte		N06   , Fs7 , v127
	.byte	W07
	.byte		N04   , Gn7 
	.byte	W05
	.byte		N07   , Gs7 
	.byte	W07
	.byte		N04   , An7 
	.byte	W05
	.byte		N06   , As7 
	.byte	W06
	.byte		N04   , Bn7 
	.byte	W06
	.byte		N05   , Fn7 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N06   , Fs7 
	.byte	W06
	.byte		N04   , Fn7 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fs7 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N02   , Fn7 
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N06   
	.byte	W06
	.byte		N04   
	.byte	W06
/* 046   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_006
/* 047   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_007
/* 048   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_006
/* 049   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_007
/* 050   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_006
/* 051   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_007
/* 052   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_006
/* 053   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_007
/* 054   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_006
/* 055   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_2_007
/* 056   ----------------------------------------
 */	.byte		N07   , Ds6 , v127
	.byte	W07
	.byte		N04   , En6 
	.byte	W05
	.byte		N07   , Fn6 
	.byte	W08
	.byte		N03   , Fs6 
	.byte	W04
	.byte		N11   , Gn6 
	.byte	W12
	.byte		N07   , Gs6 
	.byte	W07
	.byte		N04   , An6 
	.byte	W05
	.byte		N07   , As6 
	.byte	W07
	.byte		N04   , Bn6 
	.byte	W05
	.byte		N05   , Fn7 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte		N17   
	.byte	W06
/* 057   ----------------------------------------
 */	.byte	W12
	.byte		N05   , Fs7 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fn7 
	.byte	W06
	.byte		        Fs7 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fn7 
	.byte	W06
	.byte		        Fs7 
	.byte	W06
	.byte		        Fn7 
	.byte	W06
	.byte		        Fs7 
	.byte	W06
	.byte		        Fn7 
	.byte	W06
	.byte		N02   , Fs7 
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	GOTO
	 mPtr	mus_techno_base__act_1_2_B1
mus_techno_base__act_1_2_B2:
/* 058   ----------------------------------------
 */	.byte	FINE

/* **************** Track 3 (Midi-Chn.3) **************** */

mus_techno_base__act_1_3:
	.byte	KEYSH , mus_techno_base__act_1_key+0
mus_techno_base__act_1_3_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 125
	.byte		VOL   , 59*mus_techno_base__act_1_mvl/mxv
	.byte		PAN   , c_v-16
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */mus_techno_base__act_1_3_006:
	.byte		N17   , Ds3 , v127
	.byte	W18
	.byte		N11   , En3 
	.byte	W12
	.byte		N08   , Fn3 
	.byte	W08
	.byte		N09   , Fs3 
	.byte	W10
	.byte		N17   , Gn3 
	.byte	W18
	.byte		        Gs3 
	.byte	W18
	.byte		N11   , An3 
	.byte	W12
	.byte	PEND
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 022   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 023   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 037   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 038   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 040   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 041   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 042   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 043   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 044   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 045   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_3_006
/* 046   ----------------------------------------
 */	.byte	W96
/* 047   ----------------------------------------
 */	.byte	W96
/* 048   ----------------------------------------
 */	.byte	W96
/* 049   ----------------------------------------
 */	.byte	W96
/* 050   ----------------------------------------
 */	.byte	W96
/* 051   ----------------------------------------
 */	.byte	W96
/* 052   ----------------------------------------
 */	.byte	W96
/* 053   ----------------------------------------
 */	.byte	W96
/* 054   ----------------------------------------
 */	.byte	W96
/* 055   ----------------------------------------
 */	.byte	W96
/* 056   ----------------------------------------
 */	.byte	W96
/* 057   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_techno_base__act_1_3_B1
mus_techno_base__act_1_3_B2:
/* 058   ----------------------------------------
 */	.byte	FINE

/* **************** Track 4 (Midi-Chn.4) **************** */

mus_techno_base__act_1_4:
	.byte	KEYSH , mus_techno_base__act_1_key+0
mus_techno_base__act_1_4_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 125
	.byte		VOL   , 127*mus_techno_base__act_1_mvl/mxv
	.byte		PAN   , c_v+16
	.byte		N05   , Gs6 , v092
	.byte	W05
	.byte		        An6 
	.byte	W06
	.byte		        As6 
	.byte	W07
	.byte		N06   , Bn6 
	.byte	W06
	.byte		N05   , Cn7 
	.byte	W06
	.byte		        Cs7 
	.byte	W06
	.byte		N06   , Dn7 
	.byte	W06
	.byte		N05   , Ds7 
	.byte	W06
	.byte		        En7 
	.byte	W06
	.byte		N06   , Fn7 
	.byte	W06
	.byte		        Fs7 
	.byte	W06
	.byte		N05   , Gn7 
	.byte	W06
	.byte		        Gs7 
	.byte	W06
	.byte		        An7 
	.byte	W06
	.byte		        As7 
	.byte	W05
	.byte		N06   , Bn7 
	.byte	W07
/* 001   ----------------------------------------
 */mus_techno_base__act_1_4_001:
	.byte		N05   , Gs6 , v092
	.byte	W05
	.byte		        An6 
	.byte	W06
	.byte		        As6 
	.byte	W07
	.byte		N06   , Bn6 
	.byte	W06
	.byte		N05   , Cn7 
	.byte	W06
	.byte		        Cs7 
	.byte	W06
	.byte		N06   , Dn7 
	.byte	W06
	.byte		N05   , Ds7 
	.byte	W06
	.byte		        En7 
	.byte	W06
	.byte		N06   , Fn7 
	.byte	W06
	.byte		        Fs7 
	.byte	W06
	.byte		N05   , Gn7 
	.byte	W06
	.byte		        Gs7 
	.byte	W06
	.byte		        An7 
	.byte	W06
	.byte		        As7 
	.byte	W05
	.byte		N06   , Bn7 
	.byte	W07
	.byte	PEND
/* 002   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_001
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_001
/* 004   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_001
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_001
/* 006   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_001
/* 007   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_001
/* 008   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_001
/* 009   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_001
/* 010   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_001
/* 011   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_001
/* 012   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_001
/* 013   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_001
/* 014   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_001
/* 015   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_001
/* 016   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_001
/* 017   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_001
/* 018   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_001
/* 019   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_001
/* 020   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_001
/* 021   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_001
/* 022   ----------------------------------------
 */mus_techno_base__act_1_4_022:
	.byte		VOL   , 127*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Gs6 , v127
	.byte	W03
	.byte		VOL   , 126*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , An6 
	.byte	W01
	.byte		VOL   , 124*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        122*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , As6 
	.byte	W01
	.byte		VOL   , 119*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        118*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        116*mus_techno_base__act_1_mvl/mxv
	.byte		N06   , Bn6 
	.byte	W03
	.byte		VOL   , 114*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        112*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Cn7 
	.byte	W03
	.byte		VOL   , 110*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        108*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Cs7 
	.byte	W03
	.byte		VOL   , 106*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        104*mus_techno_base__act_1_mvl/mxv
	.byte		N06   , Dn7 
	.byte	W03
	.byte		VOL   , 102*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        100*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Ds7 
	.byte	W03
	.byte		VOL   , 97*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        96*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , En7 
	.byte	W03
	.byte		VOL   , 94*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        92*mus_techno_base__act_1_mvl/mxv
	.byte		N06   , Fn7 
	.byte	W03
	.byte		VOL   , 89*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        88*mus_techno_base__act_1_mvl/mxv
	.byte		N06   , Fs7 
	.byte	W03
	.byte		VOL   , 86*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        84*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Gn7 
	.byte	W03
	.byte		VOL   , 82*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        80*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Gs7 
	.byte	W03
	.byte		VOL   , 78*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        76*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , An7 
	.byte	W03
	.byte		VOL   , 74*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        72*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , As7 
	.byte	W03
	.byte		VOL   , 70*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Bn7 
	.byte	W01
	.byte		VOL   , 67*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        66*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte	PEND
/* 023   ----------------------------------------
 */mus_techno_base__act_1_4_023:
	.byte		VOL   , 64*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Gs6 , v127
	.byte	W03
	.byte		VOL   , 62*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , An6 
	.byte	W01
	.byte		VOL   , 59*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        58*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , As6 
	.byte	W01
	.byte		VOL   , 56*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        54*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        52*mus_techno_base__act_1_mvl/mxv
	.byte		N06   , Bn6 
	.byte	W03
	.byte		VOL   , 50*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        48*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Cn7 
	.byte	W03
	.byte		VOL   , 46*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        44*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Cs7 
	.byte	W03
	.byte		VOL   , 42*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        40*mus_techno_base__act_1_mvl/mxv
	.byte		N06   , Dn7 
	.byte	W03
	.byte		VOL   , 37*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        36*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Ds7 
	.byte	W03
	.byte		VOL   , 34*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        32*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , En7 
	.byte	W03
	.byte		VOL   , 29*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        28*mus_techno_base__act_1_mvl/mxv
	.byte		N06   , Fn7 
	.byte	W03
	.byte		VOL   , 26*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        24*mus_techno_base__act_1_mvl/mxv
	.byte		N06   , Fs7 
	.byte	W03
	.byte		VOL   , 22*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        20*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Gn7 
	.byte	W03
	.byte		VOL   , 18*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        16*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Gs7 
	.byte	W03
	.byte		VOL   , 14*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        12*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , An7 
	.byte	W03
	.byte		VOL   , 10*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        7*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , As7 
	.byte	W03
	.byte		VOL   , 6*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Bn7 
	.byte	W01
	.byte		VOL   , 4*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        2*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte	PEND
/* 024   ----------------------------------------
 */mus_techno_base__act_1_4_024:
	.byte		VOL   , 0*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , As3 , v127
	.byte	W03
	.byte		VOL   , 0*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Bn3 
	.byte	W01
	.byte		VOL   , 3*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        5*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Cn4 
	.byte	W01
	.byte		VOL   , 7*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        9*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Cs4 
	.byte	W01
	.byte		VOL   , 11*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        13*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Dn4 
	.byte	W01
	.byte		VOL   , 14*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        17*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        19*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Ds4 
	.byte	W03
	.byte		VOL   , 22*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , En4 
	.byte	W01
	.byte		VOL   , 24*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        26*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        28*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Fn4 
	.byte	W03
	.byte		VOL   , 29*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        32*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Fs4 
	.byte	W03
	.byte		VOL   , 34*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Gn4 
	.byte	W01
	.byte		VOL   , 36*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        37*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Gs4 
	.byte	W01
	.byte		VOL   , 40*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        42*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , An4 
	.byte	W01
	.byte		VOL   , 44*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        46*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , As4 
	.byte	W01
	.byte		VOL   , 48*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        50*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        52*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Bn4 
	.byte	W03
	.byte		VOL   , 54*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Cn5 
	.byte	W01
	.byte		VOL   , 56*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        58*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Cs5 
	.byte	W01
	.byte		VOL   , 59*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        61*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		N01   , Dn5 
	.byte	W02
	.byte	PEND
/* 025   ----------------------------------------
 */mus_techno_base__act_1_4_025:
	.byte		VOL   , 63*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , As3 , v127
	.byte	W03
	.byte		VOL   , 65*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Bn3 
	.byte	W01
	.byte		VOL   , 67*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        69*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Cn4 
	.byte	W01
	.byte		VOL   , 71*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        73*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Cs4 
	.byte	W01
	.byte		VOL   , 74*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        77*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Dn4 
	.byte	W01
	.byte		VOL   , 80*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        82*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        84*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Ds4 
	.byte	W03
	.byte		VOL   , 86*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , En4 
	.byte	W01
	.byte		VOL   , 88*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        89*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        92*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Fn4 
	.byte	W03
	.byte		VOL   , 94*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        96*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Fs4 
	.byte	W03
	.byte		VOL   , 97*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Gn4 
	.byte	W01
	.byte		VOL   , 100*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        102*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Gs4 
	.byte	W01
	.byte		VOL   , 104*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        106*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , An4 
	.byte	W01
	.byte		VOL   , 108*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        110*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , As4 
	.byte	W01
	.byte		VOL   , 112*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        114*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        116*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Bn4 
	.byte	W03
	.byte		VOL   , 118*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Cn5 
	.byte	W01
	.byte		VOL   , 119*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        121*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Cs5 
	.byte	W01
	.byte		VOL   , 123*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        125*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		N01   , Dn5 
	.byte	W02
	.byte	PEND
/* 026   ----------------------------------------
 */mus_techno_base__act_1_4_026:
	.byte		VOL   , 127*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , As3 , v127
	.byte	W03
	.byte		VOL   , 126*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Bn3 
	.byte	W01
	.byte		VOL   , 124*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        122*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Cn4 
	.byte	W01
	.byte		VOL   , 119*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        118*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Cs4 
	.byte	W01
	.byte		VOL   , 116*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        114*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Dn4 
	.byte	W01
	.byte		VOL   , 112*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        110*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        108*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Ds4 
	.byte	W03
	.byte		VOL   , 106*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , En4 
	.byte	W01
	.byte		VOL   , 104*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        102*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        100*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Fn4 
	.byte	W03
	.byte		VOL   , 97*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        96*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Fs4 
	.byte	W03
	.byte		VOL   , 94*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Gn4 
	.byte	W01
	.byte		VOL   , 92*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        89*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Gs4 
	.byte	W01
	.byte		VOL   , 88*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        86*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , An4 
	.byte	W01
	.byte		VOL   , 84*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        82*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , As4 
	.byte	W01
	.byte		VOL   , 80*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        78*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        76*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Bn4 
	.byte	W03
	.byte		VOL   , 74*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Cn5 
	.byte	W01
	.byte		VOL   , 72*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        70*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Cs5 
	.byte	W01
	.byte		VOL   , 67*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        66*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		N01   , Dn5 
	.byte	W02
	.byte	PEND
/* 027   ----------------------------------------
 */mus_techno_base__act_1_4_027:
	.byte		VOL   , 64*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , As3 , v127
	.byte	W03
	.byte		VOL   , 62*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Bn3 
	.byte	W01
	.byte		VOL   , 59*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        58*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Cn4 
	.byte	W01
	.byte		VOL   , 56*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        54*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Cs4 
	.byte	W01
	.byte		VOL   , 52*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        50*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Dn4 
	.byte	W01
	.byte		VOL   , 48*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        46*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        44*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Ds4 
	.byte	W03
	.byte		VOL   , 42*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , En4 
	.byte	W01
	.byte		VOL   , 40*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        37*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        36*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Fn4 
	.byte	W03
	.byte		VOL   , 34*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        32*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Fs4 
	.byte	W03
	.byte		VOL   , 29*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Gn4 
	.byte	W01
	.byte		VOL   , 28*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        26*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Gs4 
	.byte	W01
	.byte		VOL   , 24*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        22*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , An4 
	.byte	W01
	.byte		VOL   , 20*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        18*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , As4 
	.byte	W01
	.byte		VOL   , 16*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        14*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        12*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Bn4 
	.byte	W03
	.byte		VOL   , 10*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Cn5 
	.byte	W01
	.byte		VOL   , 7*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        6*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Cs5 
	.byte	W01
	.byte		VOL   , 4*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        2*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		N01   , Dn5 
	.byte	W02
	.byte	PEND
/* 028   ----------------------------------------
 */mus_techno_base__act_1_4_028:
	.byte		VOL   , 0*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Gs6 , v092
	.byte	W03
	.byte		VOL   , 0*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , An6 
	.byte	W01
	.byte		VOL   , 3*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        5*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , As6 
	.byte	W01
	.byte		VOL   , 7*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        9*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        11*mus_techno_base__act_1_mvl/mxv
	.byte		N06   , Bn6 
	.byte	W03
	.byte		VOL   , 13*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        14*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Cn7 
	.byte	W03
	.byte		VOL   , 17*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        19*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Cs7 
	.byte	W03
	.byte		VOL   , 22*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        24*mus_techno_base__act_1_mvl/mxv
	.byte		N06   , Dn7 
	.byte	W03
	.byte		VOL   , 26*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        28*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Ds7 
	.byte	W03
	.byte		VOL   , 29*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        32*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , En7 
	.byte	W03
	.byte		VOL   , 34*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        36*mus_techno_base__act_1_mvl/mxv
	.byte		N06   , Fn7 
	.byte	W03
	.byte		VOL   , 37*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        40*mus_techno_base__act_1_mvl/mxv
	.byte		N06   , Fs7 
	.byte	W03
	.byte		VOL   , 42*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        44*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Gn7 
	.byte	W03
	.byte		VOL   , 46*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        48*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Gs7 
	.byte	W03
	.byte		VOL   , 50*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        52*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , An7 
	.byte	W03
	.byte		VOL   , 54*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        56*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , As7 
	.byte	W03
	.byte		VOL   , 58*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Bn7 
	.byte	W01
	.byte		VOL   , 59*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        61*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte	PEND
/* 029   ----------------------------------------
 */mus_techno_base__act_1_4_029:
	.byte		VOL   , 63*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Gs6 , v092
	.byte	W03
	.byte		VOL   , 65*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , An6 
	.byte	W01
	.byte		VOL   , 67*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        69*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , As6 
	.byte	W01
	.byte		VOL   , 71*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        73*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        74*mus_techno_base__act_1_mvl/mxv
	.byte		N06   , Bn6 
	.byte	W03
	.byte		VOL   , 77*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        80*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Cn7 
	.byte	W03
	.byte		VOL   , 82*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        84*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Cs7 
	.byte	W03
	.byte		VOL   , 86*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        88*mus_techno_base__act_1_mvl/mxv
	.byte		N06   , Dn7 
	.byte	W03
	.byte		VOL   , 89*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        92*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Ds7 
	.byte	W03
	.byte		VOL   , 94*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        96*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , En7 
	.byte	W03
	.byte		VOL   , 97*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        100*mus_techno_base__act_1_mvl/mxv
	.byte		N06   , Fn7 
	.byte	W03
	.byte		VOL   , 102*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        104*mus_techno_base__act_1_mvl/mxv
	.byte		N06   , Fs7 
	.byte	W03
	.byte		VOL   , 106*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        108*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Gn7 
	.byte	W03
	.byte		VOL   , 110*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        112*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Gs7 
	.byte	W03
	.byte		VOL   , 114*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        116*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , An7 
	.byte	W03
	.byte		VOL   , 118*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        119*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , As7 
	.byte	W03
	.byte		VOL   , 121*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Bn7 
	.byte	W01
	.byte		VOL   , 123*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        125*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte	PEND
/* 030   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_022
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_023
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_024
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_025
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_026
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_027
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_028
/* 037   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_029
/* 038   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_022
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_023
/* 040   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_024
/* 041   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_025
/* 042   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_026
/* 043   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_027
/* 044   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_028
/* 045   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_4_029
/* 046   ----------------------------------------
 */	.byte		VOL   , 127*mus_techno_base__act_1_mvl/mxv
	.byte	W96
/* 047   ----------------------------------------
 */	.byte	W96
/* 048   ----------------------------------------
 */	.byte	W96
/* 049   ----------------------------------------
 */	.byte	W96
/* 050   ----------------------------------------
 */	.byte	W96
/* 051   ----------------------------------------
 */	.byte	W96
/* 052   ----------------------------------------
 */	.byte	W96
/* 053   ----------------------------------------
 */	.byte	W96
/* 054   ----------------------------------------
 */	.byte	W96
/* 055   ----------------------------------------
 */	.byte	W96
/* 056   ----------------------------------------
 */	.byte	W96
/* 057   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_techno_base__act_1_4_B1
mus_techno_base__act_1_4_B2:
/* 058   ----------------------------------------
 */	.byte	FINE

/* **************** Track 5 (Midi-Chn.5) **************** */

mus_techno_base__act_1_5:
	.byte	KEYSH , mus_techno_base__act_1_key+0
mus_techno_base__act_1_5_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 125
	.byte		VOL   , 127*mus_techno_base__act_1_mvl/mxv
	.byte		PAN   , c_v+16
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte	W96
/* 007   ----------------------------------------
 */	.byte	W96
/* 008   ----------------------------------------
 */	.byte	W96
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */	.byte	W96
/* 011   ----------------------------------------
 */	.byte	W96
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
/* 017   ----------------------------------------
 */	.byte	W96
/* 018   ----------------------------------------
 */	.byte	W96
/* 019   ----------------------------------------
 */	.byte	W96
/* 020   ----------------------------------------
 */	.byte	W96
/* 021   ----------------------------------------
 */	.byte	W96
/* 022   ----------------------------------------
 */mus_techno_base__act_1_5_022:
	.byte		VOL   , 0*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Ds5 , v127
	.byte	W03
	.byte		VOL   , 0*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        3*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , En5 
	.byte	W03
	.byte		VOL   , 5*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Fn5 
	.byte	W01
	.byte		VOL   , 7*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        9*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        11*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Fs5 
	.byte	W03
	.byte		VOL   , 13*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Gn5 
	.byte	W01
	.byte		VOL   , 14*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        17*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        19*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Gs5 
	.byte	W03
	.byte		VOL   , 21*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        22*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , An5 
	.byte	W03
	.byte		VOL   , 25*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        27*mus_techno_base__act_1_mvl/mxv
	.byte		N06   , As5 
	.byte	W03
	.byte		VOL   , 29*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        31*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Bn5 
	.byte	W03
	.byte		VOL   , 33*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        35*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Cn6 
	.byte	W03
	.byte		VOL   , 37*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        39*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Cs6 
	.byte	W03
	.byte		VOL   , 41*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Dn6 
	.byte	W01
	.byte		VOL   , 43*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        44*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        47*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Ds6 
	.byte	W03
	.byte		VOL   , 49*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        51*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , En6 
	.byte	W03
	.byte		VOL   , 52*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Fn6 
	.byte	W01
	.byte		VOL   , 55*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        57*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Fs6 
	.byte	W01
	.byte		VOL   , 59*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        61*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N01   , Gn6 
	.byte	W01
	.byte	PEND
/* 023   ----------------------------------------
 */mus_techno_base__act_1_5_023:
	.byte		VOL   , 63*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Ds5 , v127
	.byte	W03
	.byte		VOL   , 65*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        67*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , En5 
	.byte	W03
	.byte		VOL   , 69*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Fn5 
	.byte	W01
	.byte		VOL   , 71*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        73*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        74*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Fs5 
	.byte	W03
	.byte		VOL   , 77*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Gn5 
	.byte	W01
	.byte		VOL   , 79*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        81*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        82*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Gs5 
	.byte	W03
	.byte		VOL   , 84*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        86*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , An5 
	.byte	W03
	.byte		VOL   , 88*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        89*mus_techno_base__act_1_mvl/mxv
	.byte		N06   , As5 
	.byte	W03
	.byte		VOL   , 92*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        94*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Bn5 
	.byte	W03
	.byte		VOL   , 96*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        97*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Cn6 
	.byte	W03
	.byte		VOL   , 100*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        102*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Cs6 
	.byte	W03
	.byte		VOL   , 104*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Dn6 
	.byte	W01
	.byte		VOL   , 106*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        108*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        110*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Ds6 
	.byte	W03
	.byte		VOL   , 112*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        114*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , En6 
	.byte	W03
	.byte		VOL   , 116*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Fn6 
	.byte	W01
	.byte		VOL   , 118*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        119*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Fs6 
	.byte	W01
	.byte		VOL   , 122*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        124*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N01   , Gn6 
	.byte	W01
	.byte	PEND
/* 024   ----------------------------------------
 */mus_techno_base__act_1_5_024:
	.byte		VOL   , 127*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Ds5 , v127
	.byte	W03
	.byte		VOL   , 126*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        124*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , En5 
	.byte	W03
	.byte		VOL   , 122*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Fn5 
	.byte	W01
	.byte		VOL   , 119*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        118*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        116*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Fs5 
	.byte	W03
	.byte		VOL   , 114*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Gn5 
	.byte	W01
	.byte		VOL   , 112*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        110*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        108*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Gs5 
	.byte	W03
	.byte		VOL   , 106*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        104*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , An5 
	.byte	W03
	.byte		VOL   , 102*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        100*mus_techno_base__act_1_mvl/mxv
	.byte		N06   , As5 
	.byte	W03
	.byte		VOL   , 97*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        96*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Bn5 
	.byte	W03
	.byte		VOL   , 94*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        92*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Cn6 
	.byte	W03
	.byte		VOL   , 89*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        88*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Cs6 
	.byte	W03
	.byte		VOL   , 86*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Dn6 
	.byte	W01
	.byte		VOL   , 84*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        82*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        80*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Ds6 
	.byte	W03
	.byte		VOL   , 78*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        76*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , En6 
	.byte	W03
	.byte		VOL   , 73*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Fn6 
	.byte	W01
	.byte		VOL   , 71*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        69*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Fs6 
	.byte	W01
	.byte		VOL   , 67*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        66*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N01   , Gn6 
	.byte	W01
	.byte	PEND
/* 025   ----------------------------------------
 */mus_techno_base__act_1_5_025:
	.byte		VOL   , 64*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Ds5 , v127
	.byte	W03
	.byte		VOL   , 62*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        59*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , En5 
	.byte	W03
	.byte		VOL   , 58*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Fn5 
	.byte	W01
	.byte		VOL   , 56*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        54*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        52*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Fs5 
	.byte	W03
	.byte		VOL   , 50*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Gn5 
	.byte	W01
	.byte		VOL   , 48*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        46*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        44*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Gs5 
	.byte	W03
	.byte		VOL   , 42*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        40*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , An5 
	.byte	W03
	.byte		VOL   , 37*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        36*mus_techno_base__act_1_mvl/mxv
	.byte		N06   , As5 
	.byte	W03
	.byte		VOL   , 34*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        32*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Bn5 
	.byte	W03
	.byte		VOL   , 29*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        28*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Cn6 
	.byte	W03
	.byte		VOL   , 26*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        24*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Cs6 
	.byte	W03
	.byte		VOL   , 22*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Dn6 
	.byte	W01
	.byte		VOL   , 20*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        18*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        14*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Ds6 
	.byte	W03
	.byte		VOL   , 13*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        11*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , En6 
	.byte	W03
	.byte		VOL   , 9*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Fn6 
	.byte	W01
	.byte		VOL   , 7*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        6*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Fs6 
	.byte	W01
	.byte		VOL   , 4*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        2*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N01   , Gn6 
	.byte	W01
	.byte	PEND
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_5_022
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_5_023
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_5_024
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_5_025
/* 030   ----------------------------------------
 */	.byte		VOL   , 0*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        0*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        3*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        5*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        7*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        9*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        11*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        13*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        14*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        17*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        19*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        21*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        22*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        25*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        27*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        29*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        31*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Bn5 , v127
	.byte	W03
	.byte		VOL   , 33*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        35*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Cn6 
	.byte	W03
	.byte		VOL   , 37*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        39*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Cs6 
	.byte	W03
	.byte		VOL   , 41*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N06   , Dn6 
	.byte	W01
	.byte		VOL   , 43*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        44*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        47*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , Ds6 
	.byte	W03
	.byte		VOL   , 49*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        51*mus_techno_base__act_1_mvl/mxv
	.byte		N05   , En6 
	.byte	W03
	.byte		VOL   , 52*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Fn6 
	.byte	W01
	.byte		VOL   , 55*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        57*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N05   , Fs6 
	.byte	W01
	.byte		VOL   , 59*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        61*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		N01   , Gn6 
	.byte	W01
/* 031   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_5_023
/* 032   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_5_024
/* 033   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_5_025
/* 034   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_5_022
/* 035   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_5_023
/* 036   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_5_024
/* 037   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_5_025
/* 038   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_5_022
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_5_023
/* 040   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_5_024
/* 041   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_5_025
/* 042   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_5_022
/* 043   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_5_023
/* 044   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_5_024
/* 045   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_5_025
/* 046   ----------------------------------------
 */	.byte		VOL   , 0*mus_techno_base__act_1_mvl/mxv
	.byte	W96
/* 047   ----------------------------------------
 */	.byte	W96
/* 048   ----------------------------------------
 */	.byte	W96
/* 049   ----------------------------------------
 */	.byte	W96
/* 050   ----------------------------------------
 */	.byte	W96
/* 051   ----------------------------------------
 */	.byte	W96
/* 052   ----------------------------------------
 */	.byte	W96
/* 053   ----------------------------------------
 */	.byte	W96
/* 054   ----------------------------------------
 */	.byte	W96
/* 055   ----------------------------------------
 */	.byte	W96
/* 056   ----------------------------------------
 */	.byte	W96
/* 057   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_techno_base__act_1_5_B1
mus_techno_base__act_1_5_B2:
/* 058   ----------------------------------------
 */	.byte	FINE

/* **************** Track 6 (Midi-Chn.6) **************** */

mus_techno_base__act_1_6:
	.byte	KEYSH , mus_techno_base__act_1_key+0
mus_techno_base__act_1_6_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 2
	.byte		VOL   , 127*mus_techno_base__act_1_mvl/mxv
	.byte		BENDR , 8
	.byte	W96
/* 001   ----------------------------------------
 */mus_techno_base__act_1_6_001:
	.byte		VOL   , 127*mus_techno_base__act_1_mvl/mxv
	.byte		N03   , Ds5 , v028
	.byte	W03
	.byte		VOL   , 125*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        123*mus_techno_base__act_1_mvl/mxv
	.byte		N09   
	.byte	W03
	.byte		VOL   , 119*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        118*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        115*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        112*mus_techno_base__act_1_mvl/mxv
	.byte		N03   
	.byte	W03
	.byte		VOL   , 110*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        108*mus_techno_base__act_1_mvl/mxv
	.byte		N09   
	.byte	W03
	.byte		VOL   , 104*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        103*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        100*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        97*mus_techno_base__act_1_mvl/mxv
	.byte		N03   
	.byte	W03
	.byte		VOL   , 96*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        93*mus_techno_base__act_1_mvl/mxv
	.byte		N09   
	.byte	W03
	.byte		VOL   , 91*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        88*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        86*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        82*mus_techno_base__act_1_mvl/mxv
	.byte		N03   
	.byte	W03
	.byte		VOL   , 82*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        80*mus_techno_base__act_1_mvl/mxv
	.byte		N09   
	.byte	W03
	.byte		VOL   , 78*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        74*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        73*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        71*mus_techno_base__act_1_mvl/mxv
	.byte		N03   
	.byte	W03
	.byte		VOL   , 69*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        67*mus_techno_base__act_1_mvl/mxv
	.byte		N09   
	.byte	W03
	.byte		VOL   , 65*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        63*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        59*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        58*mus_techno_base__act_1_mvl/mxv
	.byte		N03   
	.byte	W03
	.byte		VOL   , 56*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte	PEND
/* 002   ----------------------------------------
 */mus_techno_base__act_1_6_002:
	.byte		VOL   , 54*mus_techno_base__act_1_mvl/mxv
	.byte		N09   , Ds5 , v028
	.byte	W03
	.byte		VOL   , 52*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        50*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        48*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        44*mus_techno_base__act_1_mvl/mxv
	.byte		N03   
	.byte	W03
	.byte		VOL   , 43*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        41*mus_techno_base__act_1_mvl/mxv
	.byte		N09   
	.byte	W03
	.byte		VOL   , 39*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        37*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        35*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        33*mus_techno_base__act_1_mvl/mxv
	.byte		N03   
	.byte	W03
	.byte		VOL   , 29*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        28*mus_techno_base__act_1_mvl/mxv
	.byte		N09   
	.byte	W03
	.byte		VOL   , 26*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        24*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        22*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        20*mus_techno_base__act_1_mvl/mxv
	.byte		N03   
	.byte	W03
	.byte		VOL   , 18*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        14*mus_techno_base__act_1_mvl/mxv
	.byte		N09   
	.byte	W03
	.byte		VOL   , 13*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        11*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        9*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        7*mus_techno_base__act_1_mvl/mxv
	.byte		N03   
	.byte	W03
	.byte		VOL   , 5*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        3*mus_techno_base__act_1_mvl/mxv
	.byte		N09   
	.byte	W03
	.byte		VOL   , 0*mus_techno_base__act_1_mvl/mxv
	.byte	W21
	.byte	PEND
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte	W96
/* 007   ----------------------------------------
 */	.byte	W96
/* 008   ----------------------------------------
 */	.byte	W96
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */	.byte	W96
/* 011   ----------------------------------------
 */	.byte	W96
/* 012   ----------------------------------------
 */	.byte	W96
/* 013   ----------------------------------------
 */	.byte		        40*mus_techno_base__act_1_mvl/mxv
	.byte	W96
/* 014   ----------------------------------------
 */	.byte		BEND  , c_v-3
	.byte		N15   , En5 , v012
	.byte	W16
	.byte		        Cn5 , v016
	.byte	W16
	.byte		        An4 , v024
	.byte	W16
	.byte		N11   , En5 , v036
	.byte	W08
	.byte		BEND  , c_v-2
	.byte	W04
	.byte		N11   , Cn5 , v040
	.byte	W12
	.byte		N07   , An4 , v048
	.byte	W08
	.byte		        En5 , v052
	.byte	W08
	.byte		        Cn5 , v060
	.byte	W08
/* 015   ----------------------------------------
 */	.byte		N05   , En5 , v064
	.byte	W06
	.byte		        Cn5 , v068
	.byte	W06
	.byte		        An4 , v072
	.byte	W05
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		N05   , En5 , v076
	.byte	W06
	.byte		N03   , Cn5 , v080
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        En5 , v076
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        An4 , v072
	.byte	W04
	.byte		        En5 , v068
	.byte	W04
	.byte		N02   , Cn5 
	.byte	W03
	.byte		        An4 , v064
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		        Cn5 , v060
	.byte	W03
	.byte		N01   , An4 
	.byte	W02
	.byte		        En5 , v056
	.byte	W02
	.byte		        Cn5 
	.byte	W02
	.byte		        An4 
	.byte	W02
	.byte		        En5 
	.byte	W01
	.byte		        Cn5 , v052
	.byte	W02
	.byte		        An4 
	.byte	W01
	.byte		        En5 
	.byte	W01
	.byte		        Cn5 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N01   , An4 
	.byte	W01
	.byte		        En5 , v048
	.byte	W01
	.byte		        Cn5 
	.byte	W01
	.byte		        An4 
	.byte	W01
	.byte		        En5 
	.byte	W01
	.byte		        Cn5 
	.byte	W01
	.byte		        An4 
	.byte	W01
	.byte		BEND  , c_v+1
	.byte		N01   , En5 , v044
	.byte	W01
	.byte		        Cn5 
	.byte	W01
	.byte		        An4 
	.byte	W01
	.byte		        En5 
	.byte	W01
	.byte		BEND  , c_v+2
	.byte		N01   , Cn5 
	.byte	W01
	.byte		        An4 
	.byte	W01
	.byte		        En5 
	.byte	W01
	.byte		        Cn5 , v040
	.byte	W01
	.byte		BEND  , c_v+3
	.byte		N01   , An4 
	.byte	W01
	.byte		        En5 
	.byte	W01
	.byte		        Cn5 
	.byte	W01
	.byte		        An4 
	.byte	W01
	.byte		BEND  , c_v+4
	.byte		N01   , En5 
	.byte	W01
	.byte		        Cn5 , v036
	.byte	W01
	.byte		        An4 
	.byte	W01
/* 016   ----------------------------------------
 */	.byte		BEND  , c_v+5
	.byte		N01   , En5 
	.byte	W01
	.byte		        Cn5 
	.byte	W01
	.byte		        An4 
	.byte	W01
	.byte		        En5 
	.byte	W01
	.byte		BEND  , c_v+6
	.byte		N01   , Cn5 
	.byte	W01
	.byte		        An4 , v032
	.byte	W01
	.byte		        En5 
	.byte	W01
	.byte		        Cn5 
	.byte	W01
	.byte		BEND  , c_v+7
	.byte		N01   , An4 
	.byte	W01
	.byte		        En5 
	.byte	W01
	.byte		        Cn5 
	.byte	W01
	.byte		        An4 , v028
	.byte	W01
	.byte		BEND  , c_v+8
	.byte		N01   , En5 
	.byte	W01
	.byte		        Cn5 
	.byte	W01
	.byte		        An4 
	.byte	W02
	.byte		BEND  , c_v+10
	.byte	W80
/* 017   ----------------------------------------
 */	.byte	W96
/* 018   ----------------------------------------
 */	.byte		        c_v-3
	.byte		N15   , Dn5 , v012
	.byte	W16
	.byte		        As4 , v016
	.byte	W16
	.byte		        Fn4 , v024
	.byte	W16
	.byte		N11   , Dn5 , v036
	.byte	W08
	.byte		BEND  , c_v-2
	.byte	W04
	.byte		N11   , As4 , v040
	.byte	W12
	.byte		N07   , Fn4 , v048
	.byte	W08
	.byte		        Dn5 , v052
	.byte	W08
	.byte		        As4 , v060
	.byte	W08
/* 019   ----------------------------------------
 */	.byte		N05   , Dn5 , v064
	.byte	W06
	.byte		        As4 , v068
	.byte	W06
	.byte		        Fn4 , v072
	.byte	W05
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		N05   , Dn5 , v076
	.byte	W06
	.byte		N03   , As4 , v080
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Dn5 , v076
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        Fn4 , v072
	.byte	W04
	.byte		        Dn5 , v068
	.byte	W04
	.byte		N02   , As4 
	.byte	W03
	.byte		        Fn4 , v064
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        As4 , v060
	.byte	W03
	.byte		N01   , Fn4 
	.byte	W02
	.byte		        Dn5 , v056
	.byte	W02
	.byte		        As4 
	.byte	W02
	.byte		        Fn4 
	.byte	W02
	.byte		        Dn5 
	.byte	W01
	.byte		        As4 , v052
	.byte	W02
	.byte		        Fn4 
	.byte	W01
	.byte		        Dn5 
	.byte	W01
	.byte		        As4 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N01   , Fn4 
	.byte	W01
	.byte		        Dn5 , v048
	.byte	W01
	.byte		        As4 
	.byte	W01
	.byte		        Fn4 
	.byte	W01
	.byte		        Dn5 
	.byte	W01
	.byte		        As4 
	.byte	W01
	.byte		        Fn4 
	.byte	W01
	.byte		BEND  , c_v+1
	.byte		N01   , Dn5 , v044
	.byte	W01
	.byte		        As4 
	.byte	W01
	.byte		        Fn4 
	.byte	W01
	.byte		        Dn5 
	.byte	W01
	.byte		BEND  , c_v+2
	.byte		N01   , As4 
	.byte	W01
	.byte		        Fn4 
	.byte	W01
	.byte		        Dn5 
	.byte	W01
	.byte		        As4 , v040
	.byte	W01
	.byte		BEND  , c_v+3
	.byte		N01   , Fn4 
	.byte	W01
	.byte		        Dn5 
	.byte	W01
	.byte		        As4 
	.byte	W01
	.byte		        Fn4 
	.byte	W01
	.byte		BEND  , c_v+4
	.byte		N01   , Dn5 
	.byte	W01
	.byte		        As4 , v036
	.byte	W01
	.byte		        Fn4 
	.byte	W01
/* 020   ----------------------------------------
 */	.byte		BEND  , c_v+5
	.byte		N01   , Dn5 
	.byte	W01
	.byte		        As4 
	.byte	W01
	.byte		        Fn4 
	.byte	W01
	.byte		        Dn5 
	.byte	W01
	.byte		BEND  , c_v+6
	.byte		N01   , As4 
	.byte	W01
	.byte		        Fn4 , v032
	.byte	W01
	.byte		        Dn5 
	.byte	W01
	.byte		        As4 
	.byte	W01
	.byte		BEND  , c_v+7
	.byte		N01   , Fn4 
	.byte	W01
	.byte		        Dn5 
	.byte	W01
	.byte		        As4 
	.byte	W01
	.byte		        Fn4 , v028
	.byte	W01
	.byte		BEND  , c_v+8
	.byte		N01   , Dn5 
	.byte	W01
	.byte		        As4 
	.byte	W01
	.byte		        Fn4 
	.byte	W02
	.byte		BEND  , c_v+10
	.byte	W80
/* 021   ----------------------------------------
 */	.byte	W96
/* 022   ----------------------------------------
 */	.byte	W96
/* 023   ----------------------------------------
 */	.byte		        c_v+0
	.byte	W96
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_6_001
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_6_002
/* 026   ----------------------------------------
 */	.byte	W96
/* 027   ----------------------------------------
 */	.byte	W96
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_6_001
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_6_002
/* 030   ----------------------------------------
 */	.byte		VOL   , 70*mus_techno_base__act_1_mvl/mxv
	.byte	W72
	.byte		N02   , En1 , v028
	.byte	W03
	.byte		        Gn1 , v032
	.byte	W03
	.byte		        An1 
	.byte	W03
	.byte		        Cn2 , v036
	.byte	W03
	.byte		        En2 
	.byte	W03
	.byte		        Gn1 , v040
	.byte	W03
	.byte		        An1 
	.byte	W03
	.byte		        Cn2 , v044
	.byte	W03
/* 031   ----------------------------------------
 */mus_techno_base__act_1_6_031:
	.byte		N02   , En2 , v044
	.byte	W03
	.byte		        Gn2 , v048
	.byte	W03
	.byte		        En2 
	.byte	W03
	.byte		        Gn2 , v052
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        Cn3 , v056
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Gn2 
	.byte	W03
	.byte		        An2 , v060
	.byte	W03
	.byte		        Cn3 
	.byte	W03
	.byte		        En3 , v064
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        En3 , v068
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        An3 , v072
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        En4 , v076
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        An3 , v080
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        En4 , v072
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        En4 , v068
	.byte	W03
	.byte		        Gn4 , v064
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Cn5 , v060
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		        Gn4 , v056
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Cn5 , v052
	.byte	W03
	.byte		        En5 , v048
	.byte	W03
	.byte		        Gn5 
	.byte	W03
	.byte	PEND
/* 032   ----------------------------------------
 */mus_techno_base__act_1_6_032:
	.byte		N02   , En5 , v044
	.byte	W03
	.byte		        Gn5 
	.byte	W03
	.byte		        An5 , v040
	.byte	W03
	.byte		        Cn6 , v036
	.byte	W03
	.byte		        En6 
	.byte	W03
	.byte		        Gn5 , v032
	.byte	W03
	.byte		        An5 
	.byte	W03
	.byte		        Cn6 , v028
	.byte	W03
	.byte		        En6 
	.byte	W03
	.byte		        Gn6 , v024
	.byte	W68
	.byte	W01
	.byte	PEND
/* 033   ----------------------------------------
 */	.byte	W96
/* 034   ----------------------------------------
 */	.byte	W48
	.byte		VOL   , 89*mus_techno_base__act_1_mvl/mxv
	.byte	W24
	.byte		N02   , Dn1 , v028
	.byte	W03
	.byte		        Fn1 , v032
	.byte	W03
	.byte		        Gn1 
	.byte	W03
	.byte		        As1 , v036
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		        Fn1 , v040
	.byte	W03
	.byte		        Gn1 
	.byte	W03
	.byte		        As1 , v044
	.byte	W03
/* 035   ----------------------------------------
 */mus_techno_base__act_1_6_035:
	.byte		N02   , Dn2 , v044
	.byte	W03
	.byte		        Fn2 , v048
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		        Fn2 , v052
	.byte	W03
	.byte		        Gn2 
	.byte	W03
	.byte		        As2 , v056
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Fn2 
	.byte	W03
	.byte		        Gn2 , v060
	.byte	W03
	.byte		        As2 
	.byte	W03
	.byte		        Dn3 , v064
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Dn3 , v068
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Gn3 , v072
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Dn4 , v076
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Gn3 , v080
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Dn4 , v072
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Dn4 , v068
	.byte	W03
	.byte		        Fn4 , v064
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        As4 , v060
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        Fn4 , v056
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        As4 , v052
	.byte	W03
	.byte		        Dn5 , v048
	.byte	W03
	.byte		        Fn5 
	.byte	W03
	.byte	PEND
/* 036   ----------------------------------------
 */	.byte		        Dn5 , v044
	.byte	W03
	.byte		        Fn5 
	.byte	W03
	.byte		        Gn5 , v040
	.byte	W03
	.byte		        As5 , v036
	.byte	W03
	.byte		        Dn6 
	.byte	W03
	.byte		        Fn5 , v032
	.byte	W03
	.byte		        Gn5 
	.byte	W03
	.byte		        As5 , v028
	.byte	W03
	.byte		        Dn6 
	.byte	W03
	.byte		        Fn6 , v024
	.byte	W21
	.byte		VOL   , 127*mus_techno_base__act_1_mvl/mxv
	.byte		N03   , Ds5 , v028
	.byte	W03
	.byte		VOL   , 125*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        123*mus_techno_base__act_1_mvl/mxv
	.byte		N09   
	.byte	W03
	.byte		VOL   , 119*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        118*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        115*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        112*mus_techno_base__act_1_mvl/mxv
	.byte		N03   
	.byte	W03
	.byte		VOL   , 110*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        108*mus_techno_base__act_1_mvl/mxv
	.byte		N09   
	.byte	W03
	.byte		VOL   , 104*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        103*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        100*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        97*mus_techno_base__act_1_mvl/mxv
	.byte		N03   
	.byte	W03
	.byte		VOL   , 96*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        93*mus_techno_base__act_1_mvl/mxv
	.byte		N09   
	.byte	W03
	.byte		VOL   , 91*mus_techno_base__act_1_mvl/mxv
	.byte	W03
/* 037   ----------------------------------------
 */	.byte		        88*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        86*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        82*mus_techno_base__act_1_mvl/mxv
	.byte		N03   
	.byte	W03
	.byte		VOL   , 82*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        80*mus_techno_base__act_1_mvl/mxv
	.byte		N09   
	.byte	W03
	.byte		VOL   , 78*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        74*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        73*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        71*mus_techno_base__act_1_mvl/mxv
	.byte		N03   
	.byte	W03
	.byte		VOL   , 69*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        67*mus_techno_base__act_1_mvl/mxv
	.byte		N09   
	.byte	W03
	.byte		VOL   , 65*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        63*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        59*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        58*mus_techno_base__act_1_mvl/mxv
	.byte		N03   
	.byte	W03
	.byte		VOL   , 56*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        54*mus_techno_base__act_1_mvl/mxv
	.byte		N09   
	.byte	W03
	.byte		VOL   , 52*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        50*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        48*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        44*mus_techno_base__act_1_mvl/mxv
	.byte		N03   
	.byte	W03
	.byte		VOL   , 43*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        41*mus_techno_base__act_1_mvl/mxv
	.byte		N09   
	.byte	W03
	.byte		VOL   , 39*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        37*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        35*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        33*mus_techno_base__act_1_mvl/mxv
	.byte		N03   
	.byte	W03
	.byte		VOL   , 29*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        28*mus_techno_base__act_1_mvl/mxv
	.byte		N09   
	.byte	W03
	.byte		VOL   , 26*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        24*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        22*mus_techno_base__act_1_mvl/mxv
	.byte	W03
/* 038   ----------------------------------------
 */	.byte		        20*mus_techno_base__act_1_mvl/mxv
	.byte		N03   
	.byte	W03
	.byte		VOL   , 18*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        14*mus_techno_base__act_1_mvl/mxv
	.byte		N09   
	.byte	W03
	.byte		VOL   , 13*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        11*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        9*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        7*mus_techno_base__act_1_mvl/mxv
	.byte		N03   
	.byte	W03
	.byte		VOL   , 5*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        3*mus_techno_base__act_1_mvl/mxv
	.byte		N09   
	.byte	W03
	.byte		VOL   , 0*mus_techno_base__act_1_mvl/mxv
	.byte	W21
	.byte		        89*mus_techno_base__act_1_mvl/mxv
	.byte	W24
	.byte		N02   , En1 
	.byte	W03
	.byte		        Gn1 , v032
	.byte	W03
	.byte		        An1 
	.byte	W03
	.byte		        Cn2 , v036
	.byte	W03
	.byte		        En2 
	.byte	W03
	.byte		        Gn1 , v040
	.byte	W03
	.byte		        An1 
	.byte	W03
	.byte		        Cn2 , v044
	.byte	W03
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_6_031
/* 040   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_6_032
/* 041   ----------------------------------------
 */	.byte	W96
/* 042   ----------------------------------------
 */	.byte		VOL   , 89*mus_techno_base__act_1_mvl/mxv
	.byte	W72
	.byte		N02   , Dn1 , v028
	.byte	W03
	.byte		        Fn1 , v032
	.byte	W03
	.byte		        Gn1 
	.byte	W03
	.byte		        As1 , v036
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		        Fn1 , v040
	.byte	W03
	.byte		        Gn1 
	.byte	W03
	.byte		        As1 , v044
	.byte	W03
/* 043   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_6_035
/* 044   ----------------------------------------
 */	.byte		N02   , Dn5 , v044
	.byte	W03
	.byte		        Fn5 
	.byte	W03
	.byte		        Gn5 , v040
	.byte	W03
	.byte		        As5 , v036
	.byte	W03
	.byte		        Dn6 
	.byte	W03
	.byte		        Fn5 , v032
	.byte	W03
	.byte		        Gn5 
	.byte	W03
	.byte		        As5 , v028
	.byte	W03
	.byte		        Dn6 
	.byte	W03
	.byte		        Fn6 , v024
	.byte	W68
	.byte	W01
/* 045   ----------------------------------------
 */	.byte	W96
/* 046   ----------------------------------------
 */	.byte	W96
/* 047   ----------------------------------------
 */	.byte	W96
/* 048   ----------------------------------------
 */	.byte	W96
/* 049   ----------------------------------------
 */	.byte	W96
/* 050   ----------------------------------------
 */	.byte	W96
/* 051   ----------------------------------------
 */	.byte	W96
/* 052   ----------------------------------------
 */	.byte	W96
/* 053   ----------------------------------------
 */	.byte	W96
/* 054   ----------------------------------------
 */	.byte	W96
/* 055   ----------------------------------------
 */	.byte	W96
/* 056   ----------------------------------------
 */	.byte	W96
/* 057   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_techno_base__act_1_6_B1
mus_techno_base__act_1_6_B2:
/* 058   ----------------------------------------
 */	.byte	FINE

/* **************** Track 7 (Midi-Chn.7) **************** */

mus_techno_base__act_1_7:
	.byte	KEYSH , mus_techno_base__act_1_key+0
mus_techno_base__act_1_7_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 12
	.byte		VOL   , 127*mus_techno_base__act_1_mvl/mxv
	.byte		MOD   , 123
	.byte		VOL   , 127*mus_techno_base__act_1_mvl/mxv
	.byte		LFOS  , 86
	.byte		BENDR , 53
	.byte		VOL   , 127*mus_techno_base__act_1_mvl/mxv
	.byte		MOD   , 123
	.byte		LFOS  , 86
	.byte		BENDR , 53
	.byte		PAN   , c_v-34
	.byte		BEND  , c_v-23
	.byte		TIE   , Cn3 , v072
	.byte	W03
	.byte		BEND  , c_v-21
	.byte	W03
	.byte		        c_v-18
	.byte	W03
	.byte		        c_v-15
	.byte	W03
	.byte		        c_v-12
	.byte	W03
	.byte		        c_v-9
	.byte	W03
	.byte		        c_v-6
	.byte	W03
	.byte		        c_v-3
	.byte	W03
	.byte		        c_v+0
	.byte	W03
	.byte		        c_v+3
	.byte	W03
	.byte		        c_v+6
	.byte	W03
	.byte		        c_v+9
	.byte	W02
	.byte		VOL   , 126*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        123*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+12
	.byte	W01
	.byte		VOL   , 119*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        115*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        112*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+15
	.byte	W01
	.byte		VOL   , 107*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        103*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        100*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+18
	.byte	W01
	.byte		VOL   , 96*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        92*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        89*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+20
	.byte	W01
	.byte		VOL   , 84*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        80*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        77*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+23
	.byte	W01
	.byte		VOL   , 73*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        67*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        66*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+26
	.byte	W01
	.byte		VOL   , 61*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        57*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        54*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+29
	.byte	W01
	.byte		VOL   , 51*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v+32
	.byte	W01
	.byte		VOL   , 50*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        49*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        48*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+35
	.byte	W01
	.byte		VOL   , 47*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		        46*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+38
	.byte	W01
	.byte		VOL   , 44*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        44*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+41
	.byte	W01
	.byte		VOL   , 43*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        42*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        41*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+44
	.byte	W02
	.byte		VOL   , 40*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        39*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+47
	.byte	W01
	.byte		VOL   , 37*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        37*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+50
	.byte	W01
	.byte		VOL   , 36*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        35*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        34*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+53
	.byte	W02
	.byte		VOL   , 33*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        32*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+56
	.byte	W01
	.byte		VOL   , 31*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		        29*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+59
	.byte	W01
	.byte		VOL   , 29*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        28*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        27*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+62
	.byte	W01
	.byte		        c_v+63
	.byte	W01
	.byte		VOL   , 26*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        25*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        24*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		        22*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        22*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        21*mus_techno_base__act_1_mvl/mxv
	.byte	W01
/* 001   ----------------------------------------
 */	.byte	W01
	.byte		        20*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        19*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        18*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        17*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		        16*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        14*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        14*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		        13*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        12*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        11*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		        10*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        9*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        7*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        7*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		        6*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        5*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        4*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		        3*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        2*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        0*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        0*mus_techno_base__act_1_mvl/mxv
	.byte	W68
	.byte	W02
/* 002   ----------------------------------------
 */	.byte	W96
	.byte		EOT   
/* 003   ----------------------------------------
 */	.byte		VOL   , 0*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+63
	.byte		TIE   
	.byte	W01
	.byte		BEND  , c_v+62
	.byte	W01
	.byte		VOL   , 0*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        2*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+60
	.byte	W01
	.byte		VOL   , 3*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+59
	.byte	W01
	.byte		VOL   , 4*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        5*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+57
	.byte	W01
	.byte		VOL   , 6*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+56
	.byte	W01
	.byte		VOL   , 7*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        7*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+54
	.byte	W01
	.byte		VOL   , 9*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+53
	.byte	W02
	.byte		VOL   , 10*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+51
	.byte	W01
	.byte		VOL   , 11*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+49
	.byte	W01
	.byte		VOL   , 12*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        13*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+48
	.byte	W01
	.byte		VOL   , 14*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+46
	.byte	W01
	.byte		VOL   , 14*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        16*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+45
	.byte	W01
	.byte		VOL   , 17*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+43
	.byte	W01
	.byte		VOL   , 18*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        19*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+42
	.byte	W01
	.byte		VOL   , 20*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+40
	.byte	W01
	.byte		VOL   , 21*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        22*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+39
	.byte	W01
	.byte		VOL   , 25*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+37
	.byte	W01
	.byte		VOL   , 27*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        29*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+35
	.byte	W01
	.byte		VOL   , 32*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+34
	.byte	W01
	.byte		VOL   , 35*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        37*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+32
	.byte	W01
	.byte		VOL   , 40*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+31
	.byte	W01
	.byte		VOL   , 42*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        44*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+29
	.byte	W01
	.byte		VOL   , 47*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+28
	.byte	W01
	.byte		VOL   , 50*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        52*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+26
	.byte	W01
	.byte		VOL   , 55*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+25
	.byte	W01
	.byte		VOL   , 57*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        59*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+23
	.byte	W01
	.byte		VOL   , 62*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+21
	.byte	W01
	.byte		VOL   , 65*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        67*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+20
	.byte	W01
	.byte		VOL   , 70*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+18
	.byte	W01
	.byte		VOL   , 72*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        74*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+17
	.byte	W01
	.byte		VOL   , 77*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+15
	.byte	W01
	.byte		VOL   , 80*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        82*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+14
	.byte	W01
	.byte		VOL   , 85*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+12
	.byte	W01
	.byte		VOL   , 87*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        89*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+10
	.byte	W01
	.byte		VOL   , 92*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+9
	.byte	W01
	.byte		VOL   , 95*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        97*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+7
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		VOL   , 96*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        95*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		VOL   , 94*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+3
	.byte	W01
	.byte		VOL   , 92*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        91*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+1
	.byte	W01
	.byte		VOL   , 89*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 88*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        86*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		VOL   , 85*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		VOL   , 84*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        82*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		VOL   , 81*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		VOL   , 79*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        78*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-8
	.byte	W01
	.byte		VOL   , 76*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-10
	.byte	W01
	.byte		VOL   , 74*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        74*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		VOL   , 72*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-13
	.byte	W01
	.byte		VOL   , 71*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        69*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-14
	.byte	W01
	.byte		VOL   , 67*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		VOL   , 66*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        65*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-18
	.byte	W01
	.byte		VOL   , 64*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		VOL   , 62*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        61*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-21
	.byte	W01
	.byte		VOL   , 59*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-22
	.byte	W01
	.byte		VOL   , 58*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        56*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-24
	.byte	W01
	.byte		VOL   , 55*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-25
	.byte	W01
	.byte		VOL   , 54*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        52*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-27
	.byte	W01
	.byte		VOL   , 51*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-28
	.byte	W01
	.byte		VOL   , 50*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        49*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-30
	.byte	W01
	.byte		VOL   , 47*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		VOL   , 44*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        44*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-33
	.byte	W01
	.byte		VOL   , 42*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-35
	.byte	W01
	.byte		VOL   , 41*mus_techno_base__act_1_mvl/mxv
	.byte	W01
/* 004   ----------------------------------------
 */	.byte		        39*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-36
	.byte	W01
	.byte		VOL   , 37*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-38
	.byte	W01
	.byte		VOL   , 36*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        35*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-39
	.byte	W01
	.byte		VOL   , 33*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-41
	.byte	W01
	.byte		VOL   , 32*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        29*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-43
	.byte	W01
	.byte		VOL   , 29*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-44
	.byte	W01
	.byte		VOL   , 27*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        25*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-46
	.byte	W01
	.byte		VOL   , 24*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-47
	.byte	W01
	.byte		VOL   , 22*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        21*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-49
	.byte	W01
	.byte		VOL   , 20*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-50
	.byte	W01
	.byte		VOL   , 19*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        17*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-52
	.byte	W01
	.byte		VOL   , 16*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-53
	.byte	W01
	.byte		VOL   , 14*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        13*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-55
	.byte	W01
	.byte		VOL   , 11*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-57
	.byte	W01
	.byte		VOL   , 10*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        7*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-58
	.byte	W01
	.byte		VOL   , 6*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		VOL   , 5*mus_techno_base__act_1_mvl/mxv
	.byte	W01
	.byte		        3*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-61
	.byte	W01
	.byte		VOL   , 2*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-63
	.byte	W01
	.byte		VOL   , 0*mus_techno_base__act_1_mvl/mxv
	.byte		BEND  , c_v-64
	.byte	W68
	.byte	W02
/* 005   ----------------------------------------
 */	.byte	W96
	.byte		EOT   
/* 006   ----------------------------------------
 */	.byte		VOL   , 89*mus_techno_base__act_1_mvl/mxv
	.byte	W96
/* 007   ----------------------------------------
 */	.byte	W96
/* 008   ----------------------------------------
 */	.byte	W96
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */	.byte	W96
/* 011   ----------------------------------------
 */	.byte	W96
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
/* 017   ----------------------------------------
 */	.byte	W96
/* 018   ----------------------------------------
 */	.byte	W96
/* 019   ----------------------------------------
 */	.byte	W96
/* 020   ----------------------------------------
 */	.byte	W96
/* 021   ----------------------------------------
 */	.byte	W96
/* 022   ----------------------------------------
 */	.byte	W96
/* 023   ----------------------------------------
 */	.byte	W96
/* 024   ----------------------------------------
 */	.byte	W96
/* 025   ----------------------------------------
 */	.byte	W96
/* 026   ----------------------------------------
 */	.byte	W96
/* 027   ----------------------------------------
 */	.byte	W96
/* 028   ----------------------------------------
 */	.byte	W96
/* 029   ----------------------------------------
 */	.byte	W96
/* 030   ----------------------------------------
 */	.byte	W96
/* 031   ----------------------------------------
 */	.byte	W96
/* 032   ----------------------------------------
 */	.byte	W96
/* 033   ----------------------------------------
 */	.byte	W96
/* 034   ----------------------------------------
 */	.byte	W96
/* 035   ----------------------------------------
 */	.byte	W96
/* 036   ----------------------------------------
 */	.byte	W96
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	W96
/* 039   ----------------------------------------
 */	.byte	W96
/* 040   ----------------------------------------
 */	.byte	W96
/* 041   ----------------------------------------
 */	.byte	W96
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte	W96
/* 044   ----------------------------------------
 */	.byte	W96
/* 045   ----------------------------------------
 */	.byte		VOICE , 12
	.byte		VOL   , 127*mus_techno_base__act_1_mvl/mxv
	.byte		MOD   , 0
	.byte		LFOS  , 86
	.byte		BENDR , 53
	.byte	W96
/* 046   ----------------------------------------
 */mus_techno_base__act_1_7_046:
	.byte		BEND  , c_v+0
	.byte		N05   , Fs1 , v100
	.byte	W18
	.byte		        Cs2 
	.byte	W12
	.byte		BEND  , c_v+0
	.byte		N11   , Cs2 , v104
	.byte	W07
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-11
	.byte	W07
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte		N05   , Fs1 , v100
	.byte	W18
	.byte		N17   , Cs2 
	.byte	W18
	.byte		N11   , Fs1 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+14
	.byte	W04
	.byte	PEND
/* 047   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_7_046
/* 048   ----------------------------------------
 */mus_techno_base__act_1_7_048:
	.byte		BEND  , c_v+0
	.byte		N05   , Fn1 , v100
	.byte	W18
	.byte		        Cn2 
	.byte	W12
	.byte		BEND  , c_v+0
	.byte		N11   , Cn2 , v104
	.byte	W07
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-11
	.byte	W07
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte		N05   , Fn1 , v100
	.byte	W18
	.byte		N17   , Cn2 
	.byte	W18
	.byte		N11   , Fn1 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+14
	.byte	W04
	.byte	PEND
/* 049   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_7_048
/* 050   ----------------------------------------
 */mus_techno_base__act_1_7_050:
	.byte		BEND  , c_v+0
	.byte		N05   , En1 , v100
	.byte	W18
	.byte		        Bn1 
	.byte	W12
	.byte		BEND  , c_v+0
	.byte		N11   , Bn1 , v104
	.byte	W07
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-11
	.byte	W07
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte		N05   , En1 , v100
	.byte	W18
	.byte		N17   , Bn1 
	.byte	W18
	.byte		N11   , En1 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+14
	.byte	W04
	.byte	PEND
/* 051   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_7_050
/* 052   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_7_048
/* 053   ----------------------------------------
 */	.byte		BEND  , c_v+0
	.byte		N05   , Dn1 , v100
	.byte	W18
	.byte		        An1 
	.byte	W12
	.byte		BEND  , c_v+0
	.byte		N11   , An1 , v104
	.byte	W07
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-11
	.byte	W07
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte		N05   , Dn1 , v100
	.byte	W18
	.byte		N17   , An1 
	.byte	W18
	.byte		N11   , Dn1 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+14
	.byte	W04
/* 054   ----------------------------------------
 */mus_techno_base__act_1_7_054:
	.byte		BEND  , c_v+0
	.byte		N05   , As1 , v100
	.byte	W18
	.byte		        Fn2 
	.byte	W12
	.byte		BEND  , c_v+0
	.byte		N11   , Fn2 , v104
	.byte	W07
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-11
	.byte	W07
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte		N05   , As1 , v100
	.byte	W18
	.byte		N17   , Fn2 
	.byte	W18
	.byte		N11   , As1 
	.byte	W05
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+7
	.byte	W01
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+14
	.byte	W04
	.byte	PEND
/* 055   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_7_054
/* 056   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_7_054
/* 057   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_techno_base__act_1_7_B1
mus_techno_base__act_1_7_B2:
/* 058   ----------------------------------------
 */	.byte	FINE

/* **************** Track 8 (Midi-Chn.8) **************** */

mus_techno_base__act_1_8:
	.byte	KEYSH , mus_techno_base__act_1_key+0
mus_techno_base__act_1_8_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 96
	.byte		VOL   , 127*mus_techno_base__act_1_mvl/mxv
	.byte		MOD   , 78
	.byte		LFOS  , 21
	.byte		MODT  , 2
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte		TIE   , Cn4 , v127
	.byte	W96
/* 007   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
/* 008   ----------------------------------------
 */	.byte		TIE   , Bn3 
	.byte	W96
/* 009   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
/* 010   ----------------------------------------
 */	.byte		TIE   , As3 
	.byte	W96
/* 011   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
/* 012   ----------------------------------------
 */	.byte		TIE   , An3 
	.byte	W96
/* 013   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
/* 014   ----------------------------------------
 */	.byte		TIE   , Cn4 
	.byte	W96
/* 015   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
/* 016   ----------------------------------------
 */	.byte		TIE   , Bn3 
	.byte	W96
/* 017   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
/* 018   ----------------------------------------
 */	.byte		TIE   , As3 
	.byte	W96
/* 019   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
/* 020   ----------------------------------------
 */	.byte		TIE   , An3 
	.byte	W96
/* 021   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
/* 022   ----------------------------------------
 */	.byte	W96
/* 023   ----------------------------------------
 */	.byte	W96
/* 024   ----------------------------------------
 */	.byte	W96
/* 025   ----------------------------------------
 */	.byte	W96
/* 026   ----------------------------------------
 */	.byte	W96
/* 027   ----------------------------------------
 */	.byte	W96
/* 028   ----------------------------------------
 */	.byte	W96
/* 029   ----------------------------------------
 */	.byte	W96
/* 030   ----------------------------------------
 */	.byte		TIE   , Cn4 
	.byte	W96
/* 031   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
/* 032   ----------------------------------------
 */	.byte		TIE   , Bn3 
	.byte	W96
/* 033   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
/* 034   ----------------------------------------
 */	.byte		TIE   , As3 
	.byte	W96
/* 035   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
/* 036   ----------------------------------------
 */	.byte		TIE   , An3 
	.byte	W96
/* 037   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
/* 038   ----------------------------------------
 */	.byte		TIE   , Cn4 
	.byte	W96
/* 039   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
/* 040   ----------------------------------------
 */	.byte		TIE   , Bn3 
	.byte	W96
/* 041   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
/* 042   ----------------------------------------
 */	.byte		TIE   , As3 
	.byte	W96
/* 043   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
/* 044   ----------------------------------------
 */	.byte		TIE   , An3 
	.byte	W96
/* 045   ----------------------------------------
 */	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
/* 046   ----------------------------------------
 */	.byte		N32   , Gs3 
	.byte	W36
	.byte		TIE   , En3 , v120
	.byte	W60
/* 047   ----------------------------------------
 */	.byte	W64
	.byte		EOT   
	.byte	W08
	.byte		N14   , Gs3 , v127
	.byte	W24
/* 048   ----------------------------------------
 */	.byte		N32   , Gn3 , v124
	.byte	W36
	.byte		TIE   , Ds3 
	.byte	W60
/* 049   ----------------------------------------
 */	.byte	W88
	.byte		EOT   
	.byte	W08
/* 050   ----------------------------------------
 */	.byte		N76   , Dn3 
	.byte	W78
	.byte		N02   , Ds3 , v112
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
/* 051   ----------------------------------------
 */	.byte		N66   , Dn4 , v120
	.byte	W72
	.byte		N19   , Dn4 , v108
	.byte	W24
/* 052   ----------------------------------------
 */	.byte		N68   , Ds4 , v127
	.byte	W72
	.byte		N23   , Ds4 , v100
	.byte	W24
/* 053   ----------------------------------------
 */	.byte		N76   , En4 , v116
	.byte	W96
/* 054   ----------------------------------------
 */	.byte		TIE   , Fn4 , v120
	.byte	W96
/* 055   ----------------------------------------
 */	.byte	W96
/* 056   ----------------------------------------
 */	.byte	W92
	.byte	W02
	.byte		EOT   
	.byte	W02
/* 057   ----------------------------------------
 */	.byte	W12
	.byte		N05   , Cn4 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		        As3 
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   , Gs3 
	.byte	W12
	.byte	GOTO
	 mPtr	mus_techno_base__act_1_8_B1
mus_techno_base__act_1_8_B2:
/* 058   ----------------------------------------
 */	.byte	FINE

/* **************** Track 9 (Midi-Chn.9) **************** */

mus_techno_base__act_1_9:
	.byte	KEYSH , mus_techno_base__act_1_key+0
mus_techno_base__act_1_9_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 99
	.byte		VOL   , 127*mus_techno_base__act_1_mvl/mxv
	.byte	W06
	.byte		VOICE , 99
	.byte		N05   , Cn3 , v124
	.byte	W18
	.byte		        Cn3 , v060
	.byte	W12
	.byte		VOICE , 100
	.byte	W06
	.byte		N05   , Cn3 , v080
	.byte	W18
	.byte		        Cn3 , v052
	.byte	W06
	.byte		VOICE , 101
	.byte	W12
	.byte		N05   , Cn3 , v060
	.byte	W18
/* 001   ----------------------------------------
 */mus_techno_base__act_1_9_001:
	.byte		N05   , Cn3 , v032
	.byte	W06
	.byte		        Bn2 , v124
	.byte	W06
	.byte		        As2 
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		VOICE , 100
	.byte	W12
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		VOICE , 99
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte	PEND
/* 002   ----------------------------------------
 */mus_techno_base__act_1_9_002:
	.byte	W06
	.byte		VOICE , 99
	.byte		N05   , Cn3 , v124
	.byte	W18
	.byte		        Cn3 , v060
	.byte	W12
	.byte		VOICE , 100
	.byte	W06
	.byte		N05   , Cn3 , v080
	.byte	W18
	.byte		        Cn3 , v052
	.byte	W06
	.byte		VOICE , 101
	.byte	W12
	.byte		N05   , Cn3 , v060
	.byte	W18
	.byte	PEND
/* 003   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_9_001
/* 004   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_9_002
/* 005   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_9_001
/* 006   ----------------------------------------
 */	.byte	W96
/* 007   ----------------------------------------
 */	.byte	W96
/* 008   ----------------------------------------
 */	.byte	W96
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */	.byte	W96
/* 011   ----------------------------------------
 */	.byte	W96
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
/* 017   ----------------------------------------
 */	.byte	W96
/* 018   ----------------------------------------
 */	.byte	W96
/* 019   ----------------------------------------
 */	.byte	W96
/* 020   ----------------------------------------
 */	.byte	W96
/* 021   ----------------------------------------
 */	.byte	W96
/* 022   ----------------------------------------
 */mus_techno_base__act_1_9_022:
	.byte	W06
	.byte		VOICE , 99
	.byte		N05   , Fn2 , v124
	.byte	W18
	.byte		        Fn2 , v060
	.byte	W12
	.byte		VOICE , 100
	.byte	W06
	.byte		N05   , Fn2 , v080
	.byte	W18
	.byte		        Fn2 , v052
	.byte	W06
	.byte		VOICE , 101
	.byte	W12
	.byte		N05   , Fn2 , v060
	.byte	W18
	.byte	PEND
/* 023   ----------------------------------------
 */mus_techno_base__act_1_9_023:
	.byte		N05   , Fn2 , v032
	.byte	W06
	.byte		        En2 , v124
	.byte	W06
	.byte		        Ds2 
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		VOICE , 100
	.byte	W12
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		VOICE , 99
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte	PEND
/* 024   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_9_022
/* 025   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_9_023
/* 026   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_9_022
/* 027   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_9_023
/* 028   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_9_022
/* 029   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_9_023
/* 030   ----------------------------------------
 */	.byte	W96
/* 031   ----------------------------------------
 */	.byte	W96
/* 032   ----------------------------------------
 */	.byte	W96
/* 033   ----------------------------------------
 */	.byte	W96
/* 034   ----------------------------------------
 */	.byte	W96
/* 035   ----------------------------------------
 */	.byte	W96
/* 036   ----------------------------------------
 */	.byte	W96
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	W96
/* 039   ----------------------------------------
 */	.byte	W96
/* 040   ----------------------------------------
 */	.byte	W96
/* 041   ----------------------------------------
 */	.byte	W96
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte	W96
/* 044   ----------------------------------------
 */	.byte	W96
/* 045   ----------------------------------------
 */	.byte	W96
/* 046   ----------------------------------------
 */	.byte	W96
/* 047   ----------------------------------------
 */	.byte	W96
/* 048   ----------------------------------------
 */	.byte	W96
/* 049   ----------------------------------------
 */	.byte	W96
/* 050   ----------------------------------------
 */	.byte	W96
/* 051   ----------------------------------------
 */	.byte	W96
/* 052   ----------------------------------------
 */	.byte	W96
/* 053   ----------------------------------------
 */	.byte	W96
/* 054   ----------------------------------------
 */	.byte	W96
/* 055   ----------------------------------------
 */	.byte	W96
/* 056   ----------------------------------------
 */	.byte	W96
/* 057   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_techno_base__act_1_9_B1
mus_techno_base__act_1_9_B2:
/* 058   ----------------------------------------
 */	.byte	FINE

/* **************** Track 10 (Midi-Chn.10) **************** */

mus_techno_base__act_1_10:
	.byte	KEYSH , mus_techno_base__act_1_key+0
mus_techno_base__act_1_10_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 44
	.byte		VOL   , 127*mus_techno_base__act_1_mvl/mxv
	.byte		PAN   , c_v+23
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte	W96
/* 007   ----------------------------------------
 */	.byte	W96
/* 008   ----------------------------------------
 */	.byte	W96
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */	.byte	W96
/* 011   ----------------------------------------
 */	.byte	W96
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
/* 017   ----------------------------------------
 */	.byte	W96
/* 018   ----------------------------------------
 */	.byte	W96
/* 019   ----------------------------------------
 */	.byte	W96
/* 020   ----------------------------------------
 */	.byte	W96
/* 021   ----------------------------------------
 */	.byte	W96
/* 022   ----------------------------------------
 */	.byte	W96
/* 023   ----------------------------------------
 */	.byte	W96
/* 024   ----------------------------------------
 */	.byte	W96
/* 025   ----------------------------------------
 */	.byte	W96
/* 026   ----------------------------------------
 */	.byte	W96
/* 027   ----------------------------------------
 */	.byte	W96
/* 028   ----------------------------------------
 */	.byte	W96
/* 029   ----------------------------------------
 */	.byte		VOL   , 59*mus_techno_base__act_1_mvl/mxv
	.byte	W96
/* 030   ----------------------------------------
 */mus_techno_base__act_1_10_030:
	.byte	W48
	.byte		N02   , En2 , v028
	.byte	W03
	.byte		        Gn2 , v032
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        Cn3 , v036
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Gn2 , v040
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        Cn3 , v044
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Gn3 , v048
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Gn3 , v052
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Cn4 , v056
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte	PEND
/* 031   ----------------------------------------
 */mus_techno_base__act_1_10_031:
	.byte		N02   , An3 , v060
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        En4 , v064
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        En4 , v068
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        An4 , v072
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        En5 , v076
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        An4 , v080
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        En5 , v072
	.byte	W03
	.byte		        Gn5 
	.byte	W03
	.byte		        En5 , v068
	.byte	W03
	.byte		        Gn5 , v064
	.byte	W03
	.byte		        An5 
	.byte	W03
	.byte		        Cn6 , v060
	.byte	W03
	.byte		        En6 
	.byte	W03
	.byte		        Gn5 , v056
	.byte	W03
	.byte		        An5 
	.byte	W03
	.byte		        Cn6 , v052
	.byte	W03
	.byte		        En6 , v048
	.byte	W03
	.byte		        Gn6 
	.byte	W03
	.byte		        En6 , v044
	.byte	W03
	.byte		        Gn6 
	.byte	W03
	.byte		        An6 , v040
	.byte	W03
	.byte		        Cn7 , v036
	.byte	W03
	.byte		        En7 
	.byte	W03
	.byte		        Gn6 , v032
	.byte	W03
	.byte		        An6 
	.byte	W03
	.byte		        Cn7 , v028
	.byte	W03
	.byte	PEND
/* 032   ----------------------------------------
 */mus_techno_base__act_1_10_032:
	.byte		N02   , En7 , v028
	.byte	W03
	.byte		        Gn7 , v024
	.byte	W92
	.byte	W01
	.byte	PEND
/* 033   ----------------------------------------
 */	.byte	W96
/* 034   ----------------------------------------
 */mus_techno_base__act_1_10_034:
	.byte	W48
	.byte		N02   , Dn2 , v028
	.byte	W03
	.byte		        Fn2 , v032
	.byte	W03
	.byte		        Gn2 
	.byte	W03
	.byte		        As2 , v036
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Fn2 , v040
	.byte	W03
	.byte		        Gn2 
	.byte	W03
	.byte		        As2 , v044
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Fn3 , v048
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Fn3 , v052
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        As3 , v056
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	PEND
/* 035   ----------------------------------------
 */mus_techno_base__act_1_10_035:
	.byte		N02   , Gn3 , v060
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Dn4 , v064
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Dn4 , v068
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Gn4 , v072
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte		        Dn5 , v076
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Gn4 , v080
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte		        Dn5 , v072
	.byte	W03
	.byte		        Fn5 
	.byte	W03
	.byte		        Dn5 , v068
	.byte	W03
	.byte		        Fn5 , v064
	.byte	W03
	.byte		        Gn5 
	.byte	W03
	.byte		        As5 , v060
	.byte	W03
	.byte		        Dn6 
	.byte	W03
	.byte		        Fn5 , v056
	.byte	W03
	.byte		        Gn5 
	.byte	W03
	.byte		        As5 , v052
	.byte	W03
	.byte		        Dn6 , v048
	.byte	W03
	.byte		        Fn6 
	.byte	W03
	.byte		        Dn6 , v044
	.byte	W03
	.byte		        Fn6 
	.byte	W03
	.byte		        Gn6 , v040
	.byte	W03
	.byte		        As6 , v036
	.byte	W03
	.byte		        Dn7 
	.byte	W03
	.byte		        Fn6 , v032
	.byte	W03
	.byte		        Gn6 
	.byte	W03
	.byte		        As6 , v028
	.byte	W03
	.byte	PEND
/* 036   ----------------------------------------
 */mus_techno_base__act_1_10_036:
	.byte		N02   , Dn7 , v028
	.byte	W03
	.byte		        Fn7 , v024
	.byte	W92
	.byte	W01
	.byte	PEND
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_10_030
/* 039   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_10_031
/* 040   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_10_032
/* 041   ----------------------------------------
 */	.byte	W96
/* 042   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_10_034
/* 043   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_10_035
/* 044   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_10_036
/* 045   ----------------------------------------
 */	.byte	W96
/* 046   ----------------------------------------
 */	.byte		VOL   , 70*mus_techno_base__act_1_mvl/mxv
	.byte		N04   , Fs2 , v127
	.byte	W06
	.byte		        Fs2 , v112
	.byte	W06
	.byte		        Fs3 , v127
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
/* 047   ----------------------------------------
 */	.byte		N04   
	.byte	W06
	.byte		        Fs2 , v112
	.byte	W06
	.byte		        Fs3 , v127
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
/* 048   ----------------------------------------
 */mus_techno_base__act_1_10_048:
	.byte		N04   , Fn2 , v127
	.byte	W06
	.byte		        Fn2 , v112
	.byte	W06
	.byte		        Fn3 , v127
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte	PEND
/* 049   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_10_048
/* 050   ----------------------------------------
 */	.byte		N04   , En2 , v127
	.byte	W06
	.byte		        En2 , v112
	.byte	W06
	.byte		        En3 , v127
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
/* 051   ----------------------------------------
 */	.byte		N04   
	.byte	W06
	.byte		        En2 , v112
	.byte	W06
	.byte		        En3 , v127
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        En1 
	.byte	W06
/* 052   ----------------------------------------
 */	.byte		        Fn1 
	.byte	W06
	.byte		        Fn1 , v112
	.byte	W06
	.byte		        Fn2 , v127
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
/* 053   ----------------------------------------
 */	.byte		        Dn2 
	.byte	W06
	.byte		        Dn2 , v112
	.byte	W06
	.byte		        Dn3 , v127
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
/* 054   ----------------------------------------
 */mus_techno_base__act_1_10_054:
	.byte		N04   , As1 , v127
	.byte	W06
	.byte		        As1 , v112
	.byte	W06
	.byte		        As2 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte	PEND
/* 055   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_10_054
/* 056   ----------------------------------------
 */	.byte		N04   , As1 , v127
	.byte	W06
	.byte		        As1 , v112
	.byte	W06
	.byte		        As2 , v127
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
/* 057   ----------------------------------------
 */	.byte		        As2 
	.byte	W12
	.byte		        Dn2 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N04   
	.byte	W12
	.byte		        Cn2 
	.byte	W06
	.byte		N10   
	.byte	W12
	.byte		N04   , As1 
	.byte	W12
	.byte	GOTO
	 mPtr	mus_techno_base__act_1_10_B1
mus_techno_base__act_1_10_B2:
/* 058   ----------------------------------------
 */	.byte	FINE

/* **************** Track 11 (Midi-Chn.11) **************** */

mus_techno_base__act_1_11:
	.byte	KEYSH , mus_techno_base__act_1_key+0
mus_techno_base__act_1_11_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 14
	.byte		VOL   , 55*mus_techno_base__act_1_mvl/mxv
	.byte		PAN   , c_v-24
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte	W96
/* 007   ----------------------------------------
 */	.byte	W96
/* 008   ----------------------------------------
 */	.byte	W96
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */	.byte	W96
/* 011   ----------------------------------------
 */	.byte	W96
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
/* 017   ----------------------------------------
 */	.byte	W96
/* 018   ----------------------------------------
 */	.byte	W96
/* 019   ----------------------------------------
 */	.byte	W96
/* 020   ----------------------------------------
 */	.byte	W96
/* 021   ----------------------------------------
 */	.byte	W96
/* 022   ----------------------------------------
 */	.byte	W96
/* 023   ----------------------------------------
 */	.byte	W96
/* 024   ----------------------------------------
 */	.byte	W96
/* 025   ----------------------------------------
 */	.byte	W96
/* 026   ----------------------------------------
 */	.byte	W96
/* 027   ----------------------------------------
 */	.byte	W96
/* 028   ----------------------------------------
 */	.byte	W96
/* 029   ----------------------------------------
 */	.byte	W96
/* 030   ----------------------------------------
 */	.byte	W96
/* 031   ----------------------------------------
 */	.byte	W96
/* 032   ----------------------------------------
 */	.byte	W96
/* 033   ----------------------------------------
 */mus_techno_base__act_1_11_033:
	.byte		VOL   , 127*mus_techno_base__act_1_mvl/mxv
	.byte		N23   , Ds5 , v028
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte	PEND
/* 034   ----------------------------------------
 */mus_techno_base__act_1_11_034:
	.byte		TIE   , Dn4 , v028
	.byte	W06
	.byte		VOL   , 126*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        124*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        122*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        119*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        118*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        116*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        112*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        111*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        109*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        107*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        104*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        102*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        100*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        97*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        96*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        93*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        91*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        89*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        87*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        84*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        78*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        72*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        65*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        58*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        52*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        44*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        37*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        32*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        25*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        18*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte	PEND
/* 035   ----------------------------------------
 */	.byte		        12*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		EOT   
	.byte	W01
	.byte		VOL   , 5*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        0*mus_techno_base__act_1_mvl/mxv
	.byte	W90
/* 036   ----------------------------------------
 */	.byte	W96
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	W96
/* 039   ----------------------------------------
 */	.byte	W96
/* 040   ----------------------------------------
 */	.byte	W96
/* 041   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_11_033
/* 042   ----------------------------------------
 */	.byte	PATT
	 mPtr	mus_techno_base__act_1_11_034
/* 043   ----------------------------------------
 */	.byte		VOL   , 12*mus_techno_base__act_1_mvl/mxv
	.byte	W02
	.byte		EOT   , Dn4 
	.byte	W01
	.byte		VOL   , 5*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        0*mus_techno_base__act_1_mvl/mxv
	.byte	W90
/* 044   ----------------------------------------
 */	.byte	W96
/* 045   ----------------------------------------
 */	.byte	W96
/* 046   ----------------------------------------
 */	.byte	W96
/* 047   ----------------------------------------
 */	.byte	W96
/* 048   ----------------------------------------
 */	.byte	W96
/* 049   ----------------------------------------
 */	.byte	W96
/* 050   ----------------------------------------
 */	.byte	W96
/* 051   ----------------------------------------
 */	.byte	W96
/* 052   ----------------------------------------
 */	.byte	W96
/* 053   ----------------------------------------
 */	.byte	W96
/* 054   ----------------------------------------
 */	.byte	W96
/* 055   ----------------------------------------
 */	.byte	W96
/* 056   ----------------------------------------
 */	.byte	W96
/* 057   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_techno_base__act_1_11_B1
mus_techno_base__act_1_11_B2:
/* 058   ----------------------------------------
 */	.byte	FINE

/* **************** Track 12 (Midi-Chn.12) **************** */

mus_techno_base__act_1_12:
	.byte	KEYSH , mus_techno_base__act_1_key+0
mus_techno_base__act_1_12_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 65
	.byte		VOL   , 80*mus_techno_base__act_1_mvl/mxv
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte	W96
/* 007   ----------------------------------------
 */	.byte	W96
/* 008   ----------------------------------------
 */	.byte	W96
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */	.byte	W96
/* 011   ----------------------------------------
 */	.byte	W96
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
/* 017   ----------------------------------------
 */	.byte	W96
/* 018   ----------------------------------------
 */	.byte	W96
/* 019   ----------------------------------------
 */	.byte	W96
/* 020   ----------------------------------------
 */	.byte	W96
/* 021   ----------------------------------------
 */	.byte	W96
/* 022   ----------------------------------------
 */	.byte	W96
/* 023   ----------------------------------------
 */	.byte	W96
/* 024   ----------------------------------------
 */	.byte	W96
/* 025   ----------------------------------------
 */	.byte	W96
/* 026   ----------------------------------------
 */	.byte	W96
/* 027   ----------------------------------------
 */	.byte	W96
/* 028   ----------------------------------------
 */	.byte	W96
/* 029   ----------------------------------------
 */	.byte	W96
/* 030   ----------------------------------------
 */	.byte	W96
/* 031   ----------------------------------------
 */	.byte	W96
/* 032   ----------------------------------------
 */	.byte	W96
/* 033   ----------------------------------------
 */	.byte	W96
/* 034   ----------------------------------------
 */	.byte	W96
/* 035   ----------------------------------------
 */	.byte	W96
/* 036   ----------------------------------------
 */	.byte	W96
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	W96
/* 039   ----------------------------------------
 */	.byte	W96
/* 040   ----------------------------------------
 */	.byte	W96
/* 041   ----------------------------------------
 */	.byte	W96
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte	W96
/* 044   ----------------------------------------
 */	.byte	W96
/* 045   ----------------------------------------
 */	.byte	W96
/* 046   ----------------------------------------
 */	.byte		N32   , Cn4 , v120
	.byte	W36
	.byte		TIE   , Gs3 , v127
	.byte	W60
/* 047   ----------------------------------------
 */	.byte	W48
	.byte	W01
	.byte		EOT   
	.byte	W23
	.byte		N23   , Cn4 , v120
	.byte	W24
/* 048   ----------------------------------------
 */	.byte		N30   , Bn3 , v124
	.byte	W36
	.byte		TIE   , Gn3 , v127
	.byte	W60
/* 049   ----------------------------------------
 */	.byte	W76
	.byte		EOT   
	.byte	W20
/* 050   ----------------------------------------
 */	.byte		TIE   , Fs3 , v124
	.byte	W96
/* 051   ----------------------------------------
 */	.byte	W06
	.byte		EOT   
	.byte	W90
/* 052   ----------------------------------------
 */	.byte		N48   , Gn3 , v127
	.byte	W48
	.byte		N40   , Gn4 , v108
	.byte	W48
/* 053   ----------------------------------------
 */	.byte		N44   , Gs3 , v120
	.byte	W48
	.byte		N36   , Gs4 , v124
	.byte	W48
/* 054   ----------------------------------------
 */	.byte		N44   , An3 , v076
	.byte	W48
	.byte		TIE   , An4 , v080
	.byte	W48
/* 055   ----------------------------------------
 */	.byte	W96
/* 056   ----------------------------------------
 */	.byte	W66
	.byte		EOT   
	.byte	W30
/* 057   ----------------------------------------
 */	.byte	W96
	.byte	GOTO
	 mPtr	mus_techno_base__act_1_12_B1
mus_techno_base__act_1_12_B2:
/* 058   ----------------------------------------
 */	.byte	FINE

/* **************** Track 13 (Midi-Chn.13) **************** */

mus_techno_base__act_1_13:
	.byte	KEYSH , mus_techno_base__act_1_key+0
mus_techno_base__act_1_13_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 98
	.byte		VOL   , 70*mus_techno_base__act_1_mvl/mxv
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte	W96
/* 007   ----------------------------------------
 */	.byte	W96
/* 008   ----------------------------------------
 */	.byte	W96
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */	.byte	W96
/* 011   ----------------------------------------
 */	.byte	W96
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
/* 017   ----------------------------------------
 */	.byte	W96
/* 018   ----------------------------------------
 */	.byte	W96
/* 019   ----------------------------------------
 */	.byte	W96
/* 020   ----------------------------------------
 */	.byte	W96
/* 021   ----------------------------------------
 */	.byte	W96
/* 022   ----------------------------------------
 */	.byte	W96
/* 023   ----------------------------------------
 */	.byte	W96
/* 024   ----------------------------------------
 */	.byte	W96
/* 025   ----------------------------------------
 */	.byte	W96
/* 026   ----------------------------------------
 */	.byte	W96
/* 027   ----------------------------------------
 */	.byte	W96
/* 028   ----------------------------------------
 */	.byte	W96
/* 029   ----------------------------------------
 */	.byte	W96
/* 030   ----------------------------------------
 */	.byte	W96
/* 031   ----------------------------------------
 */	.byte	W96
/* 032   ----------------------------------------
 */	.byte	W96
/* 033   ----------------------------------------
 */	.byte	W96
/* 034   ----------------------------------------
 */	.byte	W96
/* 035   ----------------------------------------
 */	.byte	W96
/* 036   ----------------------------------------
 */	.byte	W96
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	W96
/* 039   ----------------------------------------
 */	.byte	W96
/* 040   ----------------------------------------
 */	.byte	W96
/* 041   ----------------------------------------
 */	.byte	W96
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte	W96
/* 044   ----------------------------------------
 */	.byte	W96
/* 045   ----------------------------------------
 */	.byte	W96
/* 046   ----------------------------------------
 */	.byte	W96
/* 047   ----------------------------------------
 */	.byte	W96
/* 048   ----------------------------------------
 */	.byte	W96
/* 049   ----------------------------------------
 */	.byte	W96
/* 050   ----------------------------------------
 */	.byte	W72
	.byte		N23   , Fs2 , v100
	.byte		N23   , Fs3 
	.byte	W24
/* 051   ----------------------------------------
 */	.byte		        Fs3 , v120
	.byte		N23   , Fs4 
	.byte	W24
	.byte		        Gn3 , v100
	.byte		N23   , Gn4 
	.byte	W24
	.byte		        An3 , v112
	.byte		N23   , An4 
	.byte	W24
	.byte		        Dn3 
	.byte		N23   , Dn4 
	.byte	W24
/* 052   ----------------------------------------
 */	.byte		N80   , Cn3 , v100
	.byte		N80   , Cn4 
	.byte	W84
	.byte		N05   , Dn3 
	.byte		N05   , Dn4 
	.byte	W06
	.byte		        Ds3 
	.byte		N05   , Ds4 
	.byte	W06
/* 053   ----------------------------------------
 */	.byte		N80   , En3 , v112
	.byte		N80   , En4 
	.byte	W84
	.byte		N05   , Ds3 , v100
	.byte		N05   , Ds4 
	.byte	W06
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
/* 054   ----------------------------------------
 */	.byte		TIE   , Fn3 , v112
	.byte		TIE   , Fn4 
	.byte	W96
/* 055   ----------------------------------------
 */	.byte	W96
/* 056   ----------------------------------------
 */	.byte	W96
/* 057   ----------------------------------------
 */	.byte	W04
	.byte		EOT   , Fn3 
	.byte		        Fn4 
	.byte	W92
	.byte	GOTO
	 mPtr	mus_techno_base__act_1_13_B1
mus_techno_base__act_1_13_B2:
/* 058   ----------------------------------------
 */	.byte	FINE

/* **************** Track 14 (Midi-Chn.14) **************** */

mus_techno_base__act_1_14:
	.byte	KEYSH , mus_techno_base__act_1_key+0
mus_techno_base__act_1_14_B1:
/* 000   ----------------------------------------
 */	.byte		VOICE , 64
	.byte		VOL   , 127*mus_techno_base__act_1_mvl/mxv
	.byte	W96
/* 001   ----------------------------------------
 */	.byte	W96
/* 002   ----------------------------------------
 */	.byte	W96
/* 003   ----------------------------------------
 */	.byte	W96
/* 004   ----------------------------------------
 */	.byte	W96
/* 005   ----------------------------------------
 */	.byte	W96
/* 006   ----------------------------------------
 */	.byte	W96
/* 007   ----------------------------------------
 */	.byte	W96
/* 008   ----------------------------------------
 */	.byte	W96
/* 009   ----------------------------------------
 */	.byte	W96
/* 010   ----------------------------------------
 */	.byte	W96
/* 011   ----------------------------------------
 */	.byte	W96
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
/* 017   ----------------------------------------
 */	.byte	W96
/* 018   ----------------------------------------
 */	.byte	W96
/* 019   ----------------------------------------
 */	.byte	W96
/* 020   ----------------------------------------
 */	.byte	W96
/* 021   ----------------------------------------
 */	.byte	W96
/* 022   ----------------------------------------
 */	.byte	W96
/* 023   ----------------------------------------
 */	.byte	W96
/* 024   ----------------------------------------
 */	.byte	W96
/* 025   ----------------------------------------
 */	.byte	W96
/* 026   ----------------------------------------
 */	.byte	W96
/* 027   ----------------------------------------
 */	.byte	W96
/* 028   ----------------------------------------
 */	.byte	W96
/* 029   ----------------------------------------
 */	.byte	W96
/* 030   ----------------------------------------
 */	.byte	W96
/* 031   ----------------------------------------
 */	.byte	W96
/* 032   ----------------------------------------
 */	.byte	W96
/* 033   ----------------------------------------
 */	.byte	W96
/* 034   ----------------------------------------
 */	.byte	W96
/* 035   ----------------------------------------
 */	.byte	W96
/* 036   ----------------------------------------
 */	.byte	W96
/* 037   ----------------------------------------
 */	.byte	W96
/* 038   ----------------------------------------
 */	.byte	W96
/* 039   ----------------------------------------
 */	.byte	W96
/* 040   ----------------------------------------
 */	.byte	W96
/* 041   ----------------------------------------
 */	.byte	W96
/* 042   ----------------------------------------
 */	.byte	W96
/* 043   ----------------------------------------
 */	.byte	W96
/* 044   ----------------------------------------
 */	.byte	W96
/* 045   ----------------------------------------
 */	.byte	W96
/* 046   ----------------------------------------
 */	.byte		        127*mus_techno_base__act_1_mvl/mxv
	.byte	W84
	.byte		TIE   , Bn3 , v112
	.byte	W06
	.byte		VOL   , 115*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        94*mus_techno_base__act_1_mvl/mxv
	.byte	W03
/* 047   ----------------------------------------
 */	.byte		        73*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        52*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        50*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        54*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        58*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        63*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        67*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        71*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        76*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        80*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        84*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        88*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        93*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        97*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        100*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        104*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        109*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        112*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        117*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        122*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        127*mus_techno_base__act_1_mvl/mxv
	.byte	W32
	.byte	W03
	.byte		EOT   
	.byte	W01
/* 048   ----------------------------------------
 */	.byte		VOL   , 127*mus_techno_base__act_1_mvl/mxv
	.byte	W84
	.byte		N80   , As3 
	.byte	W06
	.byte		VOL   , 115*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        94*mus_techno_base__act_1_mvl/mxv
	.byte	W03
/* 049   ----------------------------------------
 */	.byte		        73*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        52*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        50*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        54*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        58*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        63*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        67*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        71*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        76*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        80*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        84*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        88*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        93*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        97*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        100*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        104*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        109*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        112*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        117*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        122*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        127*mus_techno_base__act_1_mvl/mxv
	.byte	W11
	.byte		N22   , As3 , v127
	.byte	W24
	.byte	W01
/* 050   ----------------------------------------
 */	.byte		N18   , An3 
	.byte	W17
	.byte		N06   , Gn3 , v060
	.byte	W04
	.byte		N05   , Fn3 , v052
	.byte	W04
	.byte		N03   , En3 , v076
	.byte	W03
	.byte		N02   , Dn3 , v084
	.byte	W03
	.byte		        Cn3 , v068
	.byte	W03
	.byte		        Bn2 
	.byte	W02
	.byte		        An2 , v084
	.byte	W02
	.byte		        Gn2 , v068
	.byte	W02
	.byte		N03   , Fn2 , v060
	.byte	W02
	.byte		        En2 , v044
	.byte	W54
/* 051   ----------------------------------------
 */	.byte	W96
/* 052   ----------------------------------------
 */	.byte	W24
	.byte	W03
	.byte		VOL   , 54*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        57*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        61*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        64*mus_techno_base__act_1_mvl/mxv
	.byte		N56   , As3 , v112
	.byte	W03
	.byte		VOL   , 67*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        71*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        74*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        78*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        82*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        85*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        89*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        93*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        96*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        100*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        103*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        107*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        110*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        114*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        117*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        121*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        124*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        115*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        94*mus_techno_base__act_1_mvl/mxv
	.byte	W03
/* 053   ----------------------------------------
 */	.byte		        73*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        52*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        48*mus_techno_base__act_1_mvl/mxv
	.byte	W21
	.byte		        49*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        54*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        58*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        62*mus_techno_base__act_1_mvl/mxv
	.byte		N56   , Bn3 
	.byte	W03
	.byte		VOL   , 66*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        70*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        74*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        78*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        82*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        85*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        89*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        93*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        97*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        101*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        104*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        109*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        112*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        117*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        119*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        124*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        127*mus_techno_base__act_1_mvl/mxv
	.byte	W09
/* 054   ----------------------------------------
 */	.byte		TIE   , Cn4 
	.byte	W09
	.byte		VOL   , 110*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        88*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        65*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        42*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        39*mus_techno_base__act_1_mvl/mxv
	.byte	W06
	.byte		        40*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        41*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        42*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        43*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        44*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        46*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        47*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        48*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        49*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        50*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        51*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        52*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        52*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        54*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        56*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        57*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        58*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        59*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        59*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        61*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        62*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        63*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        64*mus_techno_base__act_1_mvl/mxv
	.byte	W03
/* 055   ----------------------------------------
 */	.byte		        66*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        67*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        67*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        69*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        70*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        71*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        72*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        73*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        74*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        76*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        77*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        78*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        79*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        80*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        81*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        82*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        82*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        84*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        86*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        87*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        88*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        89*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        89*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        91*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        92*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        93*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        94*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        96*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        97*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        97*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        99*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        100*mus_techno_base__act_1_mvl/mxv
	.byte	W03
/* 056   ----------------------------------------
 */	.byte		        101*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        102*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        103*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        104*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        106*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        107*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        108*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        109*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        110*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        111*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        112*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        112*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        114*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        116*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        117*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        118*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        119*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        119*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        121*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        122*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        123*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        124*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        126*mus_techno_base__act_1_mvl/mxv
	.byte	W03
	.byte		        127*mus_techno_base__act_1_mvl/mxv
	.byte	W24
	.byte	W02
	.byte		EOT   
	.byte	W01
/* 057   ----------------------------------------
 */	.byte	W12
	.byte		N05   , Gn3 , v108
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W06
	.byte		        Gn3 , v112
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        An3 , v124
	.byte	W12
	.byte		        Fn3 , v116
	.byte	W06
	.byte		N11   , Fn3 , v112
	.byte	W12
	.byte		N05   , Ds3 , v127
	.byte	W12
	.byte	GOTO
	 mPtr	mus_techno_base__act_1_14_B1
mus_techno_base__act_1_14_B2:
/* 058   ----------------------------------------
 */	.byte	FINE

/* ****************************************************** */
	mAlignWord

C_DECL(mus_techno_base__act_1):
	.byte	14	/* NumTrks */
	.byte	0	/* NumBlks */
	.byte	mus_techno_base__act_1_pri	/* Priority */
	.byte	mus_techno_base__act_1_rev	/* Reverb */

mAlignWord
	mPtr	mus_techno_base__act_1_grp

	mPtr	mus_techno_base__act_1_1
	mPtr	mus_techno_base__act_1_2
	mPtr	mus_techno_base__act_1_3
	mPtr	mus_techno_base__act_1_4
	mPtr	mus_techno_base__act_1_5
	mPtr	mus_techno_base__act_1_6
	mPtr	mus_techno_base__act_1_7
	mPtr	mus_techno_base__act_1_8
	mPtr	mus_techno_base__act_1_9
	mPtr	mus_techno_base__act_1_10
	mPtr	mus_techno_base__act_1_11
	mPtr	mus_techno_base__act_1_12
	mPtr	mus_techno_base__act_1_13
	mPtr	mus_techno_base__act_1_14

	.end
