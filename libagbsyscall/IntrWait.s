	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	IntrWait
	.def	IntrWait;	.scl	2;	.type	32;	.endef
	.seh_proc	IntrWait
IntrWait:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	xor	r8d, r8d
	mov	WORD PTR 520[rax], r8w
	test	ecx, ecx
	je	.L2
	movzx	ecx, WORD PTR 512[rax]
	not	edx
	and	edx, ecx
	mov	WORD PTR 512[rax], dx
.L2:
	mov	edx, 1
	mov	WORD PTR 520[rax], dx
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
