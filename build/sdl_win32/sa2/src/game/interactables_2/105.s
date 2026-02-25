	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_Interactable105;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_Interactable105
TaskDestructor_Interactable105:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.def	Task_Interactable105;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Interactable105
Task_Interactable105:
	push	r15
	.seh_pushreg	r15
	push	r14
	.seh_pushreg	r14
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
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rsi, QWORD PTR .refptr.gCamera[rip]
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rdi]
	mov	r8d, DWORD PTR [rsi]
	mov	r11d, DWORD PTR 4[rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	r12d, r8d
	mov	ebp, r11d
	mov	r9d, DWORD PTR [rbx]
	mov	r13d, DWORD PTR 4[rbx]
	mov	eax, r9d
	mov	edx, r13d
	test	BYTE PTR 36[rcx], -128
	jne	.L4
	movzx	r14d, WORD PTR 8[rbx]
	mov	r10d, r14d
	sub	r10d, r8d
	add	r10d, r9d
	movzx	r9d, WORD PTR 13[rcx]
	sub	r9d, r8d
	cmp	r10w, r9w
	jle	.L13
	.p2align 4,,10
	.p2align 3
.L4:
	sub	ax, -128
	sub	eax, r12d
	cmp	ax, 682
	ja	.L5
	sub	dx, -128
	sub	edx, ebp
	cmp	dx, 496
	ja	.L5
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	mov	rax, QWORD PTR 16[rbx]
	movzx	edx, BYTE PTR 24[rbx]
	mov	BYTE PTR [rax], dl
	mov	rcx, QWORD PTR [rdi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L13:
	movzx	r15d, WORD PTR 10[rbx]
	movsx	r10d, r10w
	movsx	r9d, r9w
	mov	r8d, r15d
	sub	r8d, r11d
	add	r13d, r8d
	movzx	r8d, WORD PTR 17[rcx]
	sub	r8d, r11d
	movzx	r11d, WORD PTR 12[rbx]
	sub	r11d, r14d
	movsx	r11d, r11w
	add	r10d, r11d
	cmp	r10d, r9d
	jl	.L4
	cmp	r13w, r8w
	jg	.L4
	movzx	r9d, WORD PTR 14[rbx]
	movsx	r13d, r13w
	movsx	r8d, r8w
	sub	r9d, r15d
	movsx	r9d, r9w
	add	r9d, r13d
	cmp	r9d, r8d
	jl	.L4
	call	Coll_DamagePlayer
	movzx	ebp, WORD PTR 4[rsi]
	movzx	eax, WORD PTR [rbx]
	movzx	r12d, WORD PTR [rsi]
	movzx	edx, WORD PTR 4[rbx]
	jmp	.L4
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Interactable105
	.def	CreateEntity_Interactable105;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Interactable105
CreateEntity_Interactable105:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	lea	rax, TaskDestructor_Interactable105[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rsi, rcx
	mov	ebx, r9d
	mov	edi, edx
	xor	r9d, r9d
	mov	ebp, r8d
	mov	edx, 32
	movzx	edi, di
	mov	r8d, 8176
	lea	rcx, Task_Interactable105[rip]
	sal	edi, 5
	movzx	ebp, bp
	call	TaskCreate
	sal	ebp, 5
	movsx	r9w, BYTE PTR 4[rsi]
	movsx	r8w, BYTE PTR 3[rsi]
	mov	rdx, QWORD PTR 24[rax]
	movzx	eax, BYTE PTR [rsi]
	movzx	r10d, BYTE PTR 5[rsi]
	sal	r9d, 3
	sal	r8d, 3
	add	edi, eax
	mov	ecx, eax
	sal	edi, 3
	lea	r10d, [r8+r10*8]
	movzx	r8d, r8w
	mov	DWORD PTR [rdx], edi
	movzx	eax, BYTE PTR 1[rsi]
	movzx	r10d, r10w
	add	ebp, eax
	movzx	eax, BYTE PTR 6[rsi]
	mov	QWORD PTR 16[rdx], rsi
	sal	ebp, 3
	lea	eax, [r9+rax*8]
	movzx	r9d, r9w
	mov	DWORD PTR 4[rdx], ebp
	movzx	eax, ax
	sal	rax, 16
	or	rax, r10
	sal	rax, 16
	or	rax, r9
	sal	rax, 16
	or	rax, r8
	mov	QWORD PTR 8[rdx], rax
	movzx	eax, cl
	mov	ah, bl
	mov	WORD PTR 24[rdx], ax
	mov	BYTE PTR [rsi], -2
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Coll_DamagePlayer;	.scl	2;	.type	32;	.endef
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
