	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	CpuSet
	.def	CpuSet;	.scl	2;	.type	32;	.endef
	.seh_proc	CpuSet
CpuSet:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	.seh_endprologue
	mov	eax, r8d
	mov	rdi, rdx
	mov	edx, r8d
	mov	rsi, rcx
	and	eax, 2097151
	and	edx, 16777216
	and	r8d, 67108864
	je	.L2
	lea	rax, [rdi+rax*4]
	test	edx, edx
	je	.L16
	cmp	rdi, rax
	jnb	.L1
	.p2align 4,,10
	.p2align 3
.L6:
	mov	edx, DWORD PTR [rsi]
	add	rdi, 4
	mov	DWORD PTR -4[rdi], edx
	cmp	rdi, rax
	jb	.L6
.L1:
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	movsd
.L16:
	cmp	rdi, rax
	jb	.L4
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	lea	rax, [rdi+rax*2]
	test	edx, edx
	je	.L17
	cmp	rdi, rax
	jnb	.L1
	.p2align 4,,10
	.p2align 3
.L9:
	movzx	edx, WORD PTR [rsi]
	add	rdi, 2
	mov	WORD PTR -2[rdi], dx
	cmp	rdi, rax
	jb	.L9
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	movsw
.L17:
	cmp	rdi, rax
	jb	.L8
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
