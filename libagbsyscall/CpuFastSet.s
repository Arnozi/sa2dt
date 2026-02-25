	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "libagbsyscall.c\0"
.LC1:
	.ascii "((uintptr_t)src & 0x3) == 0\0"
	.text
	.p2align 4
	.globl	CpuFastSet
	.def	CpuFastSet;	.scl	2;	.type	32;	.endef
	.seh_proc	CpuFastSet
CpuFastSet:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	test	cl, 3
	jne	.L12
	mov	eax, r8d
	and	eax, 2097151
	add	eax, 7
	and	eax, 4194296
	and	r8d, 16777216
	lea	rax, [rdx+rax*4]
	je	.L10
	movd	xmm3, DWORD PTR [rcx]
	pshufd	xmm0, xmm3, 0
	cmp	rdx, rax
	jnb	.L1
	.p2align 4,,10
	.p2align 3
.L6:
	movups	XMMWORD PTR [rdx], xmm0
	add	rdx, 32
	movups	XMMWORD PTR -16[rdx], xmm0
	cmp	rdx, rax
	jb	.L6
.L1:
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	movdqu	xmm1, XMMWORD PTR [rcx]
	add	rdx, 32
	add	rcx, 32
	movups	XMMWORD PTR -32[rdx], xmm1
	movdqu	xmm2, XMMWORD PTR -16[rcx]
	movups	XMMWORD PTR -16[rdx], xmm2
.L10:
	cmp	rdx, rax
	jb	.L4
	add	rsp, 40
	ret
.L12:
	mov	r8d, 59
	lea	rdx, .LC0[rip]
	lea	rcx, .LC1[rip]
	call	[QWORD PTR __imp__assert[rip]]
	nop
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
