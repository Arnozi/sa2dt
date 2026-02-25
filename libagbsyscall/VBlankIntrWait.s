	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	VBlankIntrWait
	.def	VBlankIntrWait;	.scl	2;	.type	32;	.endef
	.seh_proc	VBlankIntrWait
VBlankIntrWait:
	.seh_endprologue
	xor	r8d, r8d
	mov	edx, 1
	mov	ecx, 1
	jmp	IntrWait
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	IntrWait;	.scl	2;	.type	32;	.endef
