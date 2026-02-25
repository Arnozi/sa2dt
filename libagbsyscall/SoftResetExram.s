	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	SoftResetExram
	.def	SoftResetExram;	.scl	2;	.type	32;	.endef
	.seh_proc	SoftResetExram
SoftResetExram:
	.seh_endprologue
	jmp	RegisterRamReset
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	RegisterRamReset;	.scl	2;	.type	32;	.endef
