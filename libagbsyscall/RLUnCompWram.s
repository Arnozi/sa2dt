	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	RLUnCompWram
	.def	RLUnCompWram;	.scl	2;	.type	32;	.endef
	.seh_proc	RLUnCompWram
RLUnCompWram:
	.seh_endprologue
	jmp	Platform_RLDecompressUnsafe
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	Platform_RLDecompressUnsafe;	.scl	2;	.type	32;	.endef
