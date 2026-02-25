	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	LZ77UnCompVram
	.def	LZ77UnCompVram;	.scl	2;	.type	32;	.endef
	.seh_proc	LZ77UnCompVram
LZ77UnCompVram:
	.seh_endprologue
	jmp	Platform_LZDecompressUnsafe
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	Platform_LZDecompressUnsafe;	.scl	2;	.type	32;	.endef
