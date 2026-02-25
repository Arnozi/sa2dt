	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	LZ77UnCompWram
	.def	LZ77UnCompWram;	.scl	2;	.type	32;	.endef
	.seh_proc	LZ77UnCompWram
LZ77UnCompWram:
	.seh_endprologue
	jmp	Platform_LZDecompressUnsafe
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	Platform_LZDecompressUnsafe;	.scl	2;	.type	32;	.endef
