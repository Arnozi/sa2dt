	.include "asm/macros/c_decl.inc"
	.include "asm/macros/portable.inc"
	.include "sound/MPlayDef.s"

	.equ	mus_xx__final_zone_grp, voicegroup014
	.equ	mus_xx__final_zone_pri, 0
	.equ	mus_xx__final_zone_rev, reverb_set+0
	.equ	mus_xx__final_zone_mvl, 110
	.equ	mus_xx__final_zone_key, 0
	.equ	mus_xx__final_zone_tbs, 1
	.equ	mus_xx__final_zone_exg, 1
	.equ	mus_xx__final_zone_cmp, 1

	mSectionRodata
	.global	C_DECL(mus_xx__final_zone)
	mAlignWord

@ **************** Track 1 (Midi-Chn.1) ****************

mus_xx__final_zone_1:
	.byte	KEYSH , mus_xx__final_zone_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 154*mus_xx__final_zone_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 127*mus_xx__final_zone_mvl/mxv
	.byte		N06   , Dn1 , v044
	.byte		N24   , Ds2 , v127
	.byte	W06
	.byte		N06   , Dn1 , v044
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N24   , Ds2 , v127
	.byte	W06
	.byte		N06   , Dn1 , v044
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N24   , Ds2 , v127
	.byte	W06
	.byte		N06   , Dn1 , v044
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N24   , Ds2 , v127
	.byte	W06
	.byte		N06   , Dn1 , v044
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
mus_xx__final_zone_1_B1:
@ 001   ----------------------------------------
mus_xx__final_zone_1_001:
	.byte		N06   , Dn1 , v044
	.byte		N24   , Ds2 , v127
	.byte	W06
	.byte		N06   , Dn1 , v044
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N24   , Ds2 , v127
	.byte	W06
	.byte		N06   , Dn1 , v044
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N24   , Ds2 , v127
	.byte	W06
	.byte		N06   , Dn1 , v044
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte		N24   , Ds2 , v127
	.byte	W06
	.byte		N06   , Dn1 , v044
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 003   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 004   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 005   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 006   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 009   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 010   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 011   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 012   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 013   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 015   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 016   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 017   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 018   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 020   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 021   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 022   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 023   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 024   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 025   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 026   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 027   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 028   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 029   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 030   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 031   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 032   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 033   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 034   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 035   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 036   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 037   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 038   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 039   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 040   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 041   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 042   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 043   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 044   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 045   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_1_001
@ 046   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_xx__final_zone_1_B1
mus_xx__final_zone_1_B2:
@ 047   ----------------------------------------
	.byte	FINE

@ **************** Track 2 (Midi-Chn.2) ****************

mus_xx__final_zone_2:
	.byte	KEYSH , mus_xx__final_zone_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 127*mus_xx__final_zone_mvl/mxv
	.byte	W96
mus_xx__final_zone_2_B1:
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
mus_xx__final_zone_2_005:
	.byte		N03   , Gs2 , v020
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        Ds3 , v024
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        Ds3 , v028
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Cs4 , v032
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Cs4 , v036
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Gs3 , v040
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Gs4 , v044
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Ds4 , v048
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Ds4 , v052
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Cs5 , v056
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Cs5 , v060
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        Gs5 , v064
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Gs4 , v060
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte	PEND
@ 006   ----------------------------------------
mus_xx__final_zone_2_006:
	.byte		N03   , Cs5 , v060
	.byte	W03
	.byte		        Gs4 , v056
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Gs4 , v052
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Gs4 , v048
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Gs3 , v044
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Cs4 , v040
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Cs4 , v036
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Cs3 , v032
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Cs3 , v028
	.byte	W03
	.byte		        Gs2 
	.byte	W30
	.byte	PEND
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_2_005
@ 016   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_2_006
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
mus_xx__final_zone_2_025:
	.byte		N03   , As2 , v020
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Fn3 , v024
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Fn3 , v028
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Ds4 , v032
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Ds4 , v036
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        As3 , v040
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        As4 , v044
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Fn4 , v048
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        Fn4 , v052
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte		        Ds5 , v056
	.byte	W03
	.byte		        Fn5 
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte		        Ds5 , v060
	.byte	W03
	.byte		        Fn5 
	.byte	W03
	.byte		        As5 , v064
	.byte	W03
	.byte		        Fn5 
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        As4 , v060
	.byte	W03
	.byte		        Fn5 
	.byte	W03
	.byte	PEND
@ 026   ----------------------------------------
mus_xx__final_zone_2_026:
	.byte		N03   , Ds5 , v060
	.byte	W03
	.byte		        As4 , v056
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        As4 , v052
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        As4 , v048
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        As3 , v044
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Ds4 , v040
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Ds4 , v036
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Ds3 , v032
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Ds3 , v028
	.byte	W03
	.byte		        As2 
	.byte	W30
	.byte	PEND
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_2_025
@ 036   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_2_026
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_xx__final_zone_2_B1
mus_xx__final_zone_2_B2:
@ 047   ----------------------------------------
	.byte	FINE

@ **************** Track 3 (Midi-Chn.3) ****************

mus_xx__final_zone_3:
	.byte	KEYSH , mus_xx__final_zone_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 43
	.byte		VOL   , 127*mus_xx__final_zone_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N06   , Fs1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En2 
	.byte	W12
	.byte		        Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        En2 
	.byte	W06
mus_xx__final_zone_3_B1:
@ 001   ----------------------------------------
mus_xx__final_zone_3_001:
	.byte		N06   , Fs1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En2 
	.byte	W12
	.byte		        Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_001
@ 003   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_001
@ 004   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_001
@ 005   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_001
@ 006   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_001
@ 007   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_001
@ 008   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_001
@ 009   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_001
@ 010   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_001
@ 011   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_001
@ 012   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_001
@ 013   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_001
@ 014   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_001
@ 015   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_001
@ 016   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_001
@ 017   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_001
@ 018   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_001
@ 019   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_001
@ 020   ----------------------------------------
mus_xx__final_zone_3_020:
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte	PEND
@ 021   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_020
@ 022   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_020
@ 023   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_020
@ 024   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_020
@ 025   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_020
@ 026   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_020
@ 027   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_020
@ 028   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_020
@ 029   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_020
@ 030   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_020
@ 031   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_020
@ 032   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_020
@ 033   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_020
@ 034   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_020
@ 035   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_020
@ 036   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_020
@ 037   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_020
@ 038   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_020
@ 039   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_020
@ 040   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_020
@ 041   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_020
@ 042   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_020
@ 043   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_020
@ 044   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_020
@ 045   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_3_020
@ 046   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_xx__final_zone_3_B1
mus_xx__final_zone_3_B2:
@ 047   ----------------------------------------
	.byte	FINE

@ **************** Track 4 (Midi-Chn.4) ****************

mus_xx__final_zone_4:
	.byte	KEYSH , mus_xx__final_zone_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 100
	.byte		VOL   , 127*mus_xx__final_zone_mvl/mxv
	.byte		BENDR , 8
	.byte	W96
mus_xx__final_zone_4_B1:
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W22
	.byte		N04   , Dn2 , v044
	.byte	W02
	.byte		N10   , Gs2 , v064
	.byte	W15
	.byte		N07   , Dn2 , v044
	.byte	W05
	.byte		N09   , Gs2 , v080
	.byte	W14
	.byte		N08   , Dn2 
	.byte	W05
	.byte		N10   , Gs2 , v112
	.byte	W16
	.byte		N06   , Dn2 , v092
	.byte	W03
	.byte		N09   , Gs2 , v112
	.byte	W14
@ 012   ----------------------------------------
	.byte	W01
	.byte		N07   , Dn2 , v072
	.byte	W06
	.byte		N06   , Gs2 , v088
	.byte	W15
	.byte		N07   , Dn2 , v068
	.byte	W04
	.byte		N09   , Gs2 
	.byte	W14
	.byte		N08   , Dn2 , v064
	.byte	W06
	.byte		N09   , Gs2 , v060
	.byte	W17
	.byte		N06   , Dn2 , v056
	.byte	W01
	.byte		N11   , Gs2 , v036
	.byte	W17
	.byte		N07   , Dn2 , v060
	.byte	W06
	.byte		N08   , Gs2 , v044
	.byte	W09
@ 013   ----------------------------------------
	.byte	W04
	.byte		        Dn2 , v036
	.byte	W05
	.byte		N07   , Gs2 , v060
	.byte	W15
	.byte		N04   , Dn2 , v028
	.byte	W05
	.byte		N07   , Gs2 , v040
	.byte	W15
	.byte		N04   , Dn2 , v032
	.byte	W05
	.byte		        Gs2 , v040
	.byte	W12
	.byte		        Dn2 , v044
	.byte	W06
	.byte		N08   , Gs2 
	.byte	W21
	.byte		N07   , Gs2 , v032
	.byte	W08
@ 014   ----------------------------------------
	.byte	W09
	.byte		N05   , Dn2 , v028
	.byte	W84
	.byte	W03
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
mus_xx__final_zone_4_031:
	.byte	W22
	.byte		N05   , En2 , v044
	.byte	W02
	.byte		N11   , As2 , v064
	.byte	W15
	.byte		N08   , En2 , v044
	.byte	W05
	.byte		N10   , As2 , v080
	.byte	W14
	.byte		N09   , En2 
	.byte	W05
	.byte		N11   , As2 , v112
	.byte	W16
	.byte		N06   , En2 , v092
	.byte	W03
	.byte		N09   , As2 , v112
	.byte	W14
	.byte	PEND
@ 032   ----------------------------------------
mus_xx__final_zone_4_032:
	.byte	W01
	.byte		N08   , En2 , v072
	.byte	W06
	.byte		N07   , As2 , v088
	.byte	W15
	.byte		        En2 , v068
	.byte	W04
	.byte		N09   , As2 
	.byte	W14
	.byte		        En2 , v064
	.byte	W06
	.byte		        As2 , v060
	.byte	W17
	.byte		N07   , En2 , v056
	.byte	W01
	.byte		N12   , As2 , v036
	.byte	W17
	.byte		N07   , En2 , v060
	.byte	W06
	.byte		N08   , As2 , v044
	.byte	W09
	.byte	PEND
@ 033   ----------------------------------------
mus_xx__final_zone_4_033:
	.byte	W04
	.byte		N08   , En2 , v036
	.byte	W05
	.byte		        As2 , v060
	.byte	W15
	.byte		N04   , En2 , v028
	.byte	W05
	.byte		N07   , As2 , v040
	.byte	W15
	.byte		N04   , En2 , v032
	.byte	W05
	.byte		N05   , As2 , v040
	.byte	W12
	.byte		N04   , En2 , v044
	.byte	W06
	.byte		N09   , As2 
	.byte	W21
	.byte		N08   , As2 , v032
	.byte	W08
	.byte	PEND
@ 034   ----------------------------------------
mus_xx__final_zone_4_034:
	.byte	W09
	.byte		N05   , En2 , v028
	.byte	W84
	.byte	W03
	.byte	PEND
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_4_031
@ 043   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_4_032
@ 044   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_4_033
@ 045   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_4_034
@ 046   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_xx__final_zone_4_B1
mus_xx__final_zone_4_B2:
@ 047   ----------------------------------------
	.byte	FINE

@ **************** Track 5 (Midi-Chn.5) ****************

mus_xx__final_zone_5:
	.byte	KEYSH , mus_xx__final_zone_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 98
	.byte		VOL   , 100*mus_xx__final_zone_mvl/mxv
	.byte		BENDR , 8
	.byte	W96
mus_xx__final_zone_5_B1:
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte		N68   , Gn2 , v112
	.byte		N68   , Cn3 
	.byte		N68   , Dn3 
	.byte	W72
	.byte		TIE   , Gs2 , v116
	.byte		TIE   , Cs3 
	.byte		TIE   , Ds3 
	.byte	W24
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gs2 
	.byte		        Cs3 
	.byte		        Ds3 
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte		N68   , Gn2 , v108
	.byte		N68   , Cn3 
	.byte		N68   , Dn3 
	.byte	W72
	.byte		N44   , Gs2 , v104
	.byte		N44   , Cs3 
	.byte		N44   , Ds3 
	.byte	W24
@ 008   ----------------------------------------
	.byte	W24
	.byte		N68   , Bn2 , v108
	.byte		N68   , En3 
	.byte		N68   , Fs3 
	.byte	W72
@ 009   ----------------------------------------
	.byte		TIE   , As2 , v104
	.byte		TIE   , Ds3 
	.byte		TIE   , Fn3 
	.byte	W96
@ 010   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte		EOT   , As2 
	.byte		        Ds3 
	.byte		        Fn3 
	.byte	W03
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte		N68   , Gn2 , v108
	.byte		N68   , Cn3 
	.byte		N68   , Dn3 
	.byte	W72
	.byte		TIE   , Gs2 , v112
	.byte		TIE   , Cs3 
	.byte		TIE   , Ds3 
	.byte	W24
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W05
	.byte		EOT   , Gs2 
	.byte		        Cs3 
	.byte		        Ds3 
	.byte	W90
	.byte	W01
@ 017   ----------------------------------------
	.byte		N68   , Gn2 , v108
	.byte		N68   , Cn3 
	.byte		N68   , Dn3 
	.byte	W72
	.byte		        Gs2 , v100
	.byte		N68   , Cs3 
	.byte		N68   , Ds3 
	.byte	W24
@ 018   ----------------------------------------
	.byte	W48
	.byte		        Bn2 , v096
	.byte		N68   , En3 
	.byte		N68   , Fs3 
	.byte	W48
@ 019   ----------------------------------------
	.byte	W24
	.byte		        As2 
	.byte		N68   , Ds3 
	.byte		N68   , Fn3 
	.byte	W72
@ 020   ----------------------------------------
	.byte		TIE   , Cs3 , v100
	.byte		TIE   , Fs3 
	.byte		TIE   , Gs3 
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W02
	.byte		EOT   , Cs3 
	.byte		        Fs3 
	.byte		        Gs3 
	.byte	W92
	.byte	W02
@ 023   ----------------------------------------
	.byte		N68   , Bn2 , v112
	.byte		N68   , En3 
	.byte		N68   , Fs3 
	.byte	W72
	.byte		TIE   , Cn3 , v116
	.byte		TIE   , Fn3 
	.byte		TIE   , Gn3 
	.byte	W24
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn3 
	.byte		        Fn3 
	.byte		        Gn3 
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte		N68   , Bn2 , v108
	.byte		N68   , En3 
	.byte		N68   , Fs3 
	.byte	W72
	.byte		N44   , Cn3 , v104
	.byte		N44   , Fn3 
	.byte		N44   , Gn3 
	.byte	W24
@ 028   ----------------------------------------
	.byte	W24
	.byte		N68   , Ds3 , v108
	.byte		N68   , Gs3 
	.byte		N68   , As3 
	.byte	W72
@ 029   ----------------------------------------
	.byte		TIE   , Dn3 , v104
	.byte		TIE   , Gn3 
	.byte		TIE   , An3 
	.byte	W96
@ 030   ----------------------------------------
	.byte	W92
	.byte	W01
	.byte		EOT   , Dn3 
	.byte		        Gn3 
	.byte		        An3 
	.byte	W03
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte		N68   , Bn2 , v108
	.byte		N68   , En3 
	.byte		N68   , Fs3 
	.byte	W72
	.byte		TIE   , Cn3 , v112
	.byte		TIE   , Fn3 
	.byte		TIE   , Gn3 
	.byte	W24
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W05
	.byte		EOT   , Cn3 
	.byte		        Fn3 
	.byte		        Gn3 
	.byte	W90
	.byte	W01
@ 037   ----------------------------------------
	.byte		N68   , Bn2 , v108
	.byte		N68   , En3 
	.byte		N68   , Fs3 
	.byte	W72
	.byte		        Cn3 , v100
	.byte		N68   , Fn3 
	.byte		N68   , Gn3 
	.byte	W24
@ 038   ----------------------------------------
	.byte	W48
	.byte		        Ds3 , v096
	.byte		N68   , Gs3 
	.byte		N68   , As3 
	.byte	W48
@ 039   ----------------------------------------
	.byte	W24
	.byte		        Dn3 
	.byte		N68   , Gn3 
	.byte		N68   , An3 
	.byte	W72
@ 040   ----------------------------------------
	.byte		TIE   , Fn3 , v100
	.byte		TIE   , As3 
	.byte		TIE   , Cn4 
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W02
	.byte		EOT   , Fn3 
	.byte		        As3 
	.byte		        Cn4 
	.byte	W92
	.byte	W02
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_xx__final_zone_5_B1
mus_xx__final_zone_5_B2:
@ 047   ----------------------------------------
	.byte	FINE

@ **************** Track 6 (Midi-Chn.6) ****************

mus_xx__final_zone_6:
	.byte	KEYSH , mus_xx__final_zone_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 12
	.byte		VOL   , 59*mus_xx__final_zone_mvl/mxv
	.byte	W96
mus_xx__final_zone_6_B1:
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
mus_xx__final_zone_6_005:
	.byte	W30
	.byte		N03   , Gs2 , v020
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        Ds3 , v024
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        Ds3 , v028
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Cs4 , v032
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Cs4 , v036
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Gs3 , v040
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Gs4 , v044
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Ds4 , v048
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Ds4 , v052
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte	PEND
@ 006   ----------------------------------------
mus_xx__final_zone_6_006:
	.byte		N03   , Cs5 , v056
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Cs5 , v060
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        Gs5 , v064
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Gs4 , v060
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Gs4 , v056
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Gs4 , v052
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Gs4 , v048
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Gs3 , v044
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Cs4 , v040
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Cs4 , v036
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Cs3 , v032
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Cs3 , v028
	.byte	W03
	.byte	PEND
@ 007   ----------------------------------------
	.byte		        Gs2 
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_6_005
@ 016   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_6_006
@ 017   ----------------------------------------
	.byte		N03   , Gs2 , v028
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
mus_xx__final_zone_6_025:
	.byte	W30
	.byte		N03   , As2 , v020
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Fn3 , v024
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Fn3 , v028
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Ds4 , v032
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Ds4 , v036
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        As3 , v040
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        As4 , v044
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Fn4 , v048
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        Fn4 , v052
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte	PEND
@ 026   ----------------------------------------
mus_xx__final_zone_6_026:
	.byte		N03   , Ds5 , v056
	.byte	W03
	.byte		        Fn5 
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte		        Ds5 , v060
	.byte	W03
	.byte		        Fn5 
	.byte	W03
	.byte		        As5 , v064
	.byte	W03
	.byte		        Fn5 
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        As4 , v060
	.byte	W03
	.byte		        Fn5 
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        As4 , v056
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        As4 , v052
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        As4 , v048
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        As3 , v044
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Ds4 , v040
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Ds4 , v036
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Ds3 , v032
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Ds3 , v028
	.byte	W03
	.byte	PEND
@ 027   ----------------------------------------
	.byte		        As2 
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_6_025
@ 036   ----------------------------------------
	.byte	PATT
	 mPtr	mus_xx__final_zone_6_026
@ 037   ----------------------------------------
	.byte		N03   , As2 , v028
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_xx__final_zone_6_B1
mus_xx__final_zone_6_B2:
@ 047   ----------------------------------------
	.byte	FINE

@ **************** Track 7 (Midi-Chn.7) ****************

mus_xx__final_zone_7:
	.byte	KEYSH , mus_xx__final_zone_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 93
	.byte		VOL   , 127*mus_xx__final_zone_mvl/mxv
	.byte		N24   , Fs2 , v108
	.byte		N24   , Fs3 , v116
	.byte	W96
mus_xx__final_zone_7_B1:
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 mPtr	mus_xx__final_zone_7_B1
mus_xx__final_zone_7_B2:
@ 047   ----------------------------------------
	.byte	FINE

@ ******************************************************
	mAlignWord

C_DECL(mus_xx__final_zone):
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_xx__final_zone_pri	@ Priority
	.byte	mus_xx__final_zone_rev	@ Reverb

mAlignWord
	mPtr	mus_xx__final_zone_grp

	mPtr	mus_xx__final_zone_1
	mPtr	mus_xx__final_zone_2
	mPtr	mus_xx__final_zone_3
	mPtr	mus_xx__final_zone_4
	mPtr	mus_xx__final_zone_5
	mPtr	mus_xx__final_zone_6
	mPtr	mus_xx__final_zone_7

	.end
