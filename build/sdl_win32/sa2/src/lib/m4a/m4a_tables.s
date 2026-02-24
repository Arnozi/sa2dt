	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.globl	gXcmdTable
	.section .rdata,"dr"
	.align 32
gXcmdTable:
	.quad	MP2K_event_xxx
	.quad	MP2K_event_xwave
	.quad	MP2K_event_xtype
	.quad	MP2K_event_xxx
	.quad	MP2K_event_xatta
	.quad	MP2K_event_xdeca
	.quad	MP2K_event_xsust
	.quad	MP2K_event_xrele
	.quad	MP2K_event_xiecv
	.quad	MP2K_event_xiecl
	.quad	MP2K_event_xleng
	.quad	MP2K_event_xswee
	.globl	gClockTable
	.align 32
gClockTable:
	.ascii "\0\1\2\3\4\5\6\7\10\11\12\13\14\15\16\17\20\21\22\23\24\25\26\27\30\34\36 $(*,0468<@BDHLNPTXZ\\`"
	.globl	gCgb3Vol
	.align 16
gCgb3Vol:
	.ascii "\0\0````@@@@\200\200\200\200  "
	.globl	gNoiseTable
	.align 32
gNoiseTable:
	.ascii "\327\326\325\324\307\306\305\304\267\266\265\264\247\246\245\244\227\226\225\224\207\206\205\204wvutgfedWVUTGFED7654'&%$\27\26\25\24\7\6\5\4\3\2\1\0"
	.globl	gCgbFreqTable
	.align 16
gCgbFreqTable:
	.word	-2004
	.word	-1891
	.word	-1785
	.word	-1685
	.word	-1591
	.word	-1501
	.word	-1417
	.word	-1337
	.word	-1262
	.word	-1192
	.word	-1125
	.word	-1062
	.globl	gCgbScaleTable
	.align 32
gCgbScaleTable:
	.ascii "\0\1\2\3\4\5\6\7\10\11\12\13\20\21\22\23\24\25\26\27\30\31\32\33 !\"#$%&'()*+0123456789:;@ABCDEFGHIJKPQRSTUVWXYZ[`abcdefghijkpqrstuvwxyz{\200\201\202\203\204\205\206\207\210\211\212\213\220\221\222\223\224\225\226\227\230\231\232\233\240\241\242\243\244\245\246\247\250\251\252\253"
	.globl	gPcmSamplesPerVBlankTable
	.align 16
gPcmSamplesPerVBlankTable:
	.word	96
	.word	132
	.word	176
	.word	224
	.word	264
	.word	304
	.word	352
	.word	448
	.word	528
	.word	608
	.word	672
	.word	704
	.globl	gFreqTable
	.align 32
gFreqTable:
	.long	-2147483648
	.long	-2019787625
	.long	-1884498402
	.long	-1741164462
	.long	-1589307444
	.long	-1428420536
	.long	-1257966796
	.long	-1077377349
	.long	-886049494
	.long	-683344693
	.long	-468586438
	.long	-241057991
	.globl	gScaleTable
	.align 32
gScaleTable:
	.ascii "\340\341\342\343\344\345\346\347\350\351\352\353\320\321\322\323\324\325\326\327\330\331\332\333\300\301\302\303\304\305\306\307\310\311\312\313\260\261\262\263\264\265\266\267\270\271\272\273\240\241\242\243\244\245\246\247\250\251\252\253\220\221\222\223\224\225\226\227\230\231\232\233\200\201\202\203\204\205\206\207\210\211\212\213pqrstuvwxyz{`abcdefghijkPQRSTUVWXYZ[@ABCDEFGHIJK0123456789:; !\"#$%&'()*+\20\21\22\23\24\25\26\27\30\31\32\33\0\1\2\3\4\5\6\7\10\11\12\13"
	.globl	gMPlayJumpTableTemplate
	.align 32
gMPlayJumpTableTemplate:
	.quad	MP2K_event_fine
	.quad	MP2K_event_goto
	.quad	MP2K_event_patt
	.quad	MP2K_event_pend
	.quad	MP2K_event_rept
	.quad	MP2K_event_fine
	.quad	MP2K_event_fine
	.quad	MP2K_event_fine
	.quad	MP2K_event_fine
	.quad	MP2K_event_prio
	.quad	MP2K_event_tempo
	.quad	MP2K_event_keysh
	.quad	MP2K_event_voice
	.quad	MP2K_event_vol
	.quad	MP2K_event_pan
	.quad	MP2K_event_bend
	.quad	MP2K_event_bendr
	.quad	MP2K_event_lfos
	.quad	MP2K_event_lfodl
	.quad	MP2K_event_mod
	.quad	MP2K_event_modt
	.quad	MP2K_event_fine
	.quad	MP2K_event_fine
	.quad	MP2K_event_tune
	.quad	MP2K_event_fine
	.quad	MP2K_event_fine
	.quad	MP2K_event_fine
	.quad	MP2K_event_port
	.quad	MP2K_event_fine
	.quad	MP2K_event_endtie
	.quad	SampleFreqSet
	.quad	TrackStop
	.quad	FadeOutBody
	.quad	TrkVolPitSet
	.quad	MP2KClearChain
	.quad	SoundMainBTM
	.ident	"GCC: (GNU) 13-win32"
	.def	MP2K_event_xxx;	.scl	2;	.type	32;	.endef
	.def	MP2K_event_xwave;	.scl	2;	.type	32;	.endef
	.def	MP2K_event_xtype;	.scl	2;	.type	32;	.endef
	.def	MP2K_event_xatta;	.scl	2;	.type	32;	.endef
	.def	MP2K_event_xdeca;	.scl	2;	.type	32;	.endef
	.def	MP2K_event_xsust;	.scl	2;	.type	32;	.endef
	.def	MP2K_event_xrele;	.scl	2;	.type	32;	.endef
	.def	MP2K_event_xiecv;	.scl	2;	.type	32;	.endef
	.def	MP2K_event_xiecl;	.scl	2;	.type	32;	.endef
	.def	MP2K_event_xleng;	.scl	2;	.type	32;	.endef
	.def	MP2K_event_xswee;	.scl	2;	.type	32;	.endef
	.def	MP2K_event_fine;	.scl	2;	.type	32;	.endef
	.def	MP2K_event_goto;	.scl	2;	.type	32;	.endef
	.def	MP2K_event_patt;	.scl	2;	.type	32;	.endef
	.def	MP2K_event_pend;	.scl	2;	.type	32;	.endef
	.def	MP2K_event_rept;	.scl	2;	.type	32;	.endef
	.def	MP2K_event_prio;	.scl	2;	.type	32;	.endef
	.def	MP2K_event_tempo;	.scl	2;	.type	32;	.endef
	.def	MP2K_event_keysh;	.scl	2;	.type	32;	.endef
	.def	MP2K_event_voice;	.scl	2;	.type	32;	.endef
	.def	MP2K_event_vol;	.scl	2;	.type	32;	.endef
	.def	MP2K_event_pan;	.scl	2;	.type	32;	.endef
	.def	MP2K_event_bend;	.scl	2;	.type	32;	.endef
	.def	MP2K_event_bendr;	.scl	2;	.type	32;	.endef
	.def	MP2K_event_lfos;	.scl	2;	.type	32;	.endef
	.def	MP2K_event_lfodl;	.scl	2;	.type	32;	.endef
	.def	MP2K_event_mod;	.scl	2;	.type	32;	.endef
	.def	MP2K_event_modt;	.scl	2;	.type	32;	.endef
	.def	MP2K_event_tune;	.scl	2;	.type	32;	.endef
	.def	MP2K_event_port;	.scl	2;	.type	32;	.endef
	.def	MP2K_event_endtie;	.scl	2;	.type	32;	.endef
	.def	SampleFreqSet;	.scl	2;	.type	32;	.endef
	.def	TrackStop;	.scl	2;	.type	32;	.endef
	.def	FadeOutBody;	.scl	2;	.type	32;	.endef
	.def	TrkVolPitSet;	.scl	2;	.type	32;	.endef
	.def	MP2KClearChain;	.scl	2;	.type	32;	.endef
	.def	SoundMainBTM;	.scl	2;	.type	32;	.endef
