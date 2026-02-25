	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_SlidyIce
	.def	Task_SlidyIce;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_SlidyIce
Task_SlidyIce:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[r8]
	movzx	eax, WORD PTR 8[rdx]
	movzx	r10d, BYTE PTR 12[rdx]
	mov	rcx, QWORD PTR [rdx]
	movzx	edx, WORD PTR 10[rdx]
	sal	eax, 5
	mov	r9d, r10d
	add	eax, r10d
	movzx	r10d, BYTE PTR 1[rcx]
	sal	edx, 5
	sal	eax, 3
	add	edx, r10d
	mov	r10, QWORD PTR .refptr.gPlayer[rip]
	sal	edx, 3
	mov	ebx, DWORD PTR 36[r10]
	test	bl, -128
	jne	.L2
	movsx	r11d, BYTE PTR 3[rcx]
	lea	esi, [rax+r11*8]
	mov	r11d, DWORD PTR 12[r10]
	sar	r11d, 8
	cmp	r11d, esi
	jge	.L6
.L2:
	mov	r10, QWORD PTR .refptr.gCamera[rip]
	sub	eax, DWORD PTR [r10]
	mov	r11d, DWORD PTR 4[r10]
	sub	eax, -128
	cmp	eax, 682
	ja	.L3
	sub	edx, r11d
	sub	edx, -128
	cmp	edx, 496
	jbe	.L1
.L3:
	mov	BYTE PTR [rcx], r9b
	mov	rcx, r8
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L1:
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	movzx	edi, BYTE PTR 5[rcx]
	lea	esi, [rsi+rdi*8]
	cmp	r11d, esi
	jg	.L2
	movsx	r11d, BYTE PTR 4[rcx]
	lea	esi, [rdx+r11*8]
	mov	r11d, DWORD PTR 16[r10]
	sar	r11d, 8
	cmp	r11d, esi
	jl	.L2
	movzx	edi, BYTE PTR 6[rcx]
	lea	esi, [rsi+rdi*8]
	cmp	r11d, esi
	jg	.L2
	or	bh, 8
	mov	DWORD PTR 36[r10], ebx
	jmp	.L2
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_SlidyIce
	.def	CreateEntity_SlidyIce;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_SlidyIce
CreateEntity_SlidyIce:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	xor	r9d, r9d
	mov	QWORD PTR 32[rsp], 0
	mov	rbx, rcx
	mov	edi, edx
	mov	esi, r8d
	mov	edx, 16
	mov	r8d, 8208
	lea	rcx, Task_SlidyIce[rip]
	call	TaskCreate
	mov	rax, QWORD PTR 24[rax]
	mov	WORD PTR 8[rax], di
	mov	WORD PTR 10[rax], si
	mov	QWORD PTR [rax], rbx
	movzx	edx, BYTE PTR [rbx]
	mov	BYTE PTR 12[rax], dl
	mov	BYTE PTR [rbx], -2
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
