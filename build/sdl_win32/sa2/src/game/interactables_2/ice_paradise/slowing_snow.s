	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_SlowingSnow;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_SlowingSnow
TaskDestructor_SlowingSnow:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.def	Task_SlowingSnow;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_SlowingSnow
Task_SlowingSnow:
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	rbp, QWORD PTR .refptr.gPlayer[rip]
	mov	r8, QWORD PTR [rax]
	mov	r9d, DWORD PTR [rdx]
	mov	r12d, DWORD PTR 4[rdx]
	mov	rax, QWORD PTR 24[r8]
	movzx	edx, WORD PTR 8[rax]
	movzx	r11d, WORD PTR 12[rax]
	movsx	r10d, WORD PTR 4[rax]
	movzx	esi, WORD PTR [rax]
	sub	edx, r9d
	movzx	ebx, WORD PTR 2[rax]
	movzx	edi, WORD PTR 6[rax]
	sub	r11d, r12d
	movsx	edx, dx
	lea	ecx, [r10+rdx]
	test	BYTE PTR 36[rbp], -126
	je	.L7
.L4:
	cmp	ecx, -128
	jl	.L5
	movsx	ecx, si
	add	edx, ecx
	cmp	edx, 554
	jg	.L5
	movsx	ecx, r11w
	movsx	edx, di
	add	edx, ecx
	cmp	edx, -128
	jl	.L5
	movsx	edx, bx
	add	edx, ecx
	cmp	edx, 368
	jg	.L5
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	mov	rdx, QWORD PTR 16[rax]
	movzx	eax, BYTE PTR 24[rax]
	mov	rcx, r8
	mov	BYTE PTR [rdx], al
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L7:
	movzx	r10d, WORD PTR 13[rbp]
	sub	r10d, r9d
	movsx	r9d, r10w
	movsx	r10d, si
	add	r10d, edx
	cmp	r10d, r9d
	jg	.L4
	cmp	r9d, ecx
	jg	.L4
	movzx	r9d, WORD PTR 17[rbp]
	movsx	r13d, r11w
	movsx	r10d, bx
	add	r10d, r13d
	sub	r9d, r12d
	movsx	r9d, r9w
	cmp	r10d, r9d
	jg	.L4
	movsx	r10d, di
	add	r10d, r13d
	cmp	r9d, r10d
	jg	.L4
	movsx	ecx, WORD PTR 24[rbp]
	imul	ecx, ecx, 243
	sar	ecx, 8
	mov	WORD PTR 24[rbp], cx
	movsx	r9d, WORD PTR 4[rax]
	movzx	esi, WORD PTR [rax]
	movzx	ebx, WORD PTR 2[rax]
	movzx	edi, WORD PTR 6[rax]
	lea	ecx, [r9+rdx]
	jmp	.L4
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_SlowingSnow
	.def	CreateEntity_SlowingSnow;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_SlowingSnow
CreateEntity_SlowingSnow:
	push	r14
	.seh_pushreg	r14
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	lea	rax, TaskDestructor_SlowingSnow[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rbp, rcx
	mov	r14d, edx
	mov	edi, r9d
	mov	esi, r8d
	xor	r9d, r9d
	mov	r8d, 8208
	mov	ebx, edi
	mov	edx, 32
	lea	rcx, Task_SlowingSnow[rip]
	movzx	esi, si
	call	TaskCreate
	movsx	r8w, BYTE PTR 4[rbp]
	movsx	cx, BYTE PTR 3[rbp]
	sal	esi, 5
	mov	rdx, QWORD PTR 24[rax]
	movzx	eax, BYTE PTR 6[rbp]
	movzx	r9d, BYTE PTR 5[rbp]
	sal	r8d, 3
	sal	ecx, 3
	lea	eax, [r8+rax*8]
	movzx	r8d, r8w
	mov	QWORD PTR 16[rdx], rbp
	lea	r9d, [rcx+r9*8]
	movzx	eax, ax
	movzx	ecx, cx
	movzx	r9d, r9w
	sal	rax, 16
	or	rax, r9
	sal	rax, 16
	or	rax, r8
	sal	rax, 16
	or	rax, rcx
	mov	QWORD PTR [rdx], rax
	movzx	eax, BYTE PTR 0[rbp]
	movzx	ecx, al
	mov	ch, bl
	movzx	ebx, r14w
	sal	ebx, 5
	mov	WORD PTR 24[rdx], cx
	add	ebx, eax
	sal	ebx, 3
	mov	DWORD PTR 8[rdx], ebx
	movzx	eax, BYTE PTR 1[rbp]
	add	esi, eax
	sal	esi, 3
	mov	DWORD PTR 12[rdx], esi
	mov	BYTE PTR 0[rbp], -2
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r14
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
