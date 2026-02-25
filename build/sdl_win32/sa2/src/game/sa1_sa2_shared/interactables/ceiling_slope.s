	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_Interactable_CeilingSlope
	.def	Task_Interactable_CeilingSlope;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_Interactable_CeilingSlope
Task_Interactable_CeilingSlope:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	mov	r10, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[r10]
	movzx	eax, WORD PTR 8[rdx]
	movzx	ecx, BYTE PTR 12[rdx]
	mov	r9, QWORD PTR [rdx]
	sal	eax, 8
	mov	r11d, ecx
	lea	eax, [rax+rcx*8]
	movzx	ecx, WORD PTR 10[rdx]
	movzx	r8d, BYTE PTR 1[r9]
	sal	ecx, 8
	lea	ecx, [rcx+r8*8]
	movsx	r8d, BYTE PTR 3[r9]
	lea	ebx, [rax+r8*8]
	mov	r8d, DWORD PTR 12[rsi]
	sar	r8d, 8
	cmp	ebx, r8d
	jg	.L2
	movzx	edi, BYTE PTR 5[r9]
	lea	ebx, [rbx+rdi*8]
	cmp	ebx, r8d
	jge	.L12
.L2:
	mov	BYTE PTR 13[rdx], 0
.L5:
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	sub	eax, DWORD PTR [rdx]
	sub	ecx, DWORD PTR 4[rdx]
	sub	eax, -128
	cmp	eax, 682
	ja	.L9
	sub	ecx, -128
	cmp	ecx, 496
	ja	.L9
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L12:
	movsx	r8d, BYTE PTR 4[r9]
	lea	ebx, [rcx+r8*8]
	mov	r8d, DWORD PTR 16[rsi]
	sar	r8d, 8
	cmp	ebx, r8d
	jg	.L2
	movzx	edi, BYTE PTR 6[r9]
	lea	ebx, [rbx+rdi*8]
	cmp	ebx, r8d
	jl	.L2
	mov	r8d, DWORD PTR 36[rsi]
	mov	ebx, r8d
	and	ebx, 262146
	cmp	ebx, 2
	jne	.L5
	cmp	WORD PTR 22[rsi], 0
	jns	.L5
	and	r8d, 268435456
	jne	.L7
	cmp	BYTE PTR 13[rdx], 0
	jne	.L5
	mov	edx, 23
	mov	WORD PTR 117[rsi], dx
	cmp	BYTE PTR 2[r9], 44
	je	.L5
	mov	BYTE PTR 118[rsi], 1
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L9:
	mov	rcx, r10
	mov	BYTE PTR [r9], r11b
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
.L7:
	mov	BYTE PTR 13[rdx], 1
	jmp	.L5
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_CeilingSlope
	.def	CreateEntity_CeilingSlope;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_CeilingSlope
CreateEntity_CeilingSlope:
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
	lea	rcx, Task_Interactable_CeilingSlope[rip]
	call	TaskCreate
	mov	rax, QWORD PTR 24[rax]
	mov	WORD PTR 8[rax], di
	mov	WORD PTR 10[rax], si
	mov	QWORD PTR [rax], rbx
	movzx	edx, BYTE PTR [rbx]
	mov	BYTE PTR 13[rax], 0
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
