	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	RLUnCompVram
	.def	RLUnCompVram;	.scl	2;	.type	32;	.endef
	.seh_proc	RLUnCompVram
RLUnCompVram:
	.seh_endprologue
	jmp	Platform_RLDecompressUnsafe
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	Platform_RLDecompressUnsafe;	.scl	2;	.type	32;	.endef
