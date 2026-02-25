	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	SoftReset
	.def	SoftReset;	.scl	2;	.type	32;	.endef
	.seh_proc	SoftReset
SoftReset:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	xor	edx, edx
	mov	WORD PTR 520[rax], dx
	call	RegisterRamReset
	nop
	add	rsp, 40
	jmp	AgbMain
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	RegisterRamReset;	.scl	2;	.type	32;	.endef
	.def	AgbMain;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
