	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_Ramp;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_Ramp
TaskDestructor_Ramp:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	Task_Ramp;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Ramp
Task_Ramp:
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
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	r14, QWORD PTR .refptr.gCurTask[rip]
	mov	rbp, QWORD PTR .refptr.gCamera[rip]
	mov	r12, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [r14]
	mov	ecx, DWORD PTR 0[rbp]
	mov	rdi, QWORD PTR 24[rax]
	movzx	ebx, WORD PTR 8[rdi]
	movzx	eax, BYTE PTR 12[rdi]
	lea	r15, 16[rdi]
	mov	r13, QWORD PTR [rdi]
	movzx	esi, WORD PTR 10[rdi]
	sal	ebx, 5
	add	ebx, eax
	movzx	eax, BYTE PTR 1[r13]
	sal	esi, 5
	sal	ebx, 3
	add	esi, eax
	mov	eax, ebx
	movsx	ebx, bx
	sub	eax, ecx
	sal	esi, 3
	mov	WORD PTR 54[rdi], ax
	mov	eax, esi
	sub	ax, WORD PTR 4[rbp]
	mov	WORD PTR 56[rdi], ax
	mov	eax, DWORD PTR 36[r12]
	test	eax, 4194304
	jne	.L4
	movsx	r8d, si
	mov	DWORD PTR 40[rsp], r8d
	test	al, 8
	je	.L5
	mov	rax, QWORD PTR 64[r12]
	mov	r9, r12
	mov	edx, ebx
	mov	rcx, r15
	mov	QWORD PTR 32[rsp], rax
	call	Coll_Player_Interactable
	test	eax, eax
	jne	.L31
	mov	ecx, DWORD PTR 0[rbp]
	cmp	QWORD PTR 32[rsp], r15
	jne	.L4
	mov	eax, DWORD PTR 12[r12]
	movzx	edx, WORD PTR 80[rdi]
	movsx	r8d, WORD PTR 54[rdi]
	sar	eax, 8
	test	dl, 2
	jne	.L43
	cmp	eax, r8d
	jle	.L26
.L24:
	test	BYTE PTR 36[r12], 2
	je	.L44
	.p2align 4,,10
	.p2align 3
.L4:
	sub	ebx, ecx
	sub	ebx, -128
	cmp	ebx, 682
	ja	.L29
	movsx	esi, si
	sub	esi, DWORD PTR 4[rbp]
	sub	esi, -128
	cmp	esi, 496
	jbe	.L30
.L29:
	movzx	eax, BYTE PTR 12[rdi]
	mov	BYTE PTR 0[r13], al
	mov	rcx, QWORD PTR [r14]
	add	rsp, 56
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
.L5:
	mov	r8d, DWORD PTR 40[rsp]
	mov	r9, r12
	mov	edx, ebx
	mov	rcx, r15
	call	Coll_Player_Interactable
	test	eax, eax
	je	.L42
.L31:
	movzx	r9d, WORD PTR 80[rdi]
	mov	edx, r9d
	and	edx, 2
	test	eax, 524288
	je	.L7
	test	dx, dx
	je	.L8
	cmp	WORD PTR 20[r12], 0
	js	.L42
.L9:
	xor	al, al
	xor	edx, edx
	cwde
	add	DWORD PTR 12[r12], eax
	xor	eax, eax
	mov	WORD PTR 20[r12], ax
	mov	WORD PTR 24[r12], dx
.L42:
	mov	ecx, DWORD PTR 0[rbp]
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L30:
	mov	rcx, r15
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L7:
	test	eax, 262144
	je	.L12
	test	dx, dx
	jne	.L42
.L13:
	cmp	WORD PTR 20[r12], 0
	jle	.L9
.L14:
	movsx	edx, BYTE PTR 76[rdi]
	mov	r8d, DWORD PTR 12[r12]
	movsx	eax, BYTE PTR 78[rdi]
	mov	r10d, DWORD PTR 36[r12]
	lea	ecx, [rdx+rbx]
	sar	r8d, 8
	sub	r8d, ecx
	mov	ecx, DWORD PTR 0[rbp]
	test	r8d, r8d
	jle	.L15
	sub	eax, edx
	mov	DWORD PTR 32[rsp], eax
	cmp	eax, r8d
	jl	.L45
	mov	eax, DWORD PTR 16[r12]
	movsx	edx, BYTE PTR 27[r12]
	mov	DWORD PTR 44[rsp], eax
	sar	eax, 8
	add	eax, edx
	mov	edx, DWORD PTR 40[rsp]
	sub	eax, edx
	mov	DWORD PTR 40[rsp], eax
	mov	r11d, eax
	mov	eax, r8d
	sal	eax, 8
	cdq
	idiv	DWORD PTR 32[rsp]
	movsx	edx, BYTE PTR 77[rdi]
	imul	eax, edx
	sar	eax, 8
	cmp	r11d, eax
	jl	.L19
	test	r10b, 2
	jne	.L20
	cmp	WORD PTR 24[r12], 1024
	jle	.L20
	mov	r11, QWORD PTR .refptr.gPlayerControls[rip]
	movzx	edx, WORD PTR 102[r12]
	and	dx, WORD PTR [r11]
	je	.L20
	mov	eax, DWORD PTR 32[rsp]
	and	r9d, 1
	mov	BYTE PTR 117[r12], 22
	lea	r9d, [r9+r9*2]
	sar	eax
	cmp	eax, r8d
	jle	.L21
	add	r9d, 1
	mov	BYTE PTR 118[r12], r9b
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L12:
	test	dx, dx
	jne	.L42
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L8:
	test	eax, 262144
	jne	.L13
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L43:
	cmp	eax, r8d
	jl	.L24
	jle	.L4
.L28:
	and	DWORD PTR 36[r12], -9
	mov	QWORD PTR 64[r12], 0
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L45:
	test	r10b, 2
	jne	.L19
	cmp	WORD PTR 24[r12], 1024
	jle	.L19
	and	r9d, 1
	mov	BYTE PTR 117[r12], 22
	lea	r9d, [r9+r9*2]
	mov	BYTE PTR 118[r12], r9b
	.p2align 4,,10
	.p2align 3
.L19:
	mov	eax, r10d
	and	eax, -9
	or	eax, 2
	mov	DWORD PTR 36[r12], eax
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L44:
	cmp	WORD PTR 24[r12], 1024
	jle	.L4
	and	edx, 1
	mov	BYTE PTR 117[r12], 22
	lea	edx, [rdx+rdx*2]
	mov	BYTE PTR 118[r12], dl
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L26:
	jge	.L4
	jmp	.L28
	.p2align 4,,10
	.p2align 3
.L15:
	mov	eax, r10d
	and	eax, -9
	mov	DWORD PTR 36[r12], eax
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L20:
	mov	edx, DWORD PTR 40[rsp]
	mov	BYTE PTR 40[r12], 0
	mov	QWORD PTR 64[r12], r15
	sub	eax, edx
	mov	edx, DWORD PTR 44[rsp]
	sal	eax, 8
	add	eax, edx
	mov	DWORD PTR 16[r12], eax
	mov	eax, r10d
	and	eax, -3
	or	eax, 8
	mov	DWORD PTR 36[r12], eax
	jmp	.L4
.L21:
	add	r9d, 2
	mov	BYTE PTR 118[r12], r9b
	jmp	.L4
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Ramp
	.def	CreateEntity_Ramp;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Ramp
CreateEntity_Ramp:
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
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	lea	rax, TaskDestructor_Ramp[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	r12, rcx
	mov	esi, edx
	mov	edi, r8d
	mov	r13d, r9d
	mov	r8d, 8208
	xor	r9d, r9d
	mov	edx, 88
	lea	rcx, Task_Ramp[rip]
	call	TaskCreate
	mov	ecx, r13d
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 8[rbx], si
	movzx	esi, si
	lea	rbp, 16[rbx]
	mov	WORD PTR 10[rbx], di
	sal	esi, 5
	movzx	edi, di
	mov	QWORD PTR [rbx], r12
	movzx	eax, BYTE PTR [r12]
	sal	edi, 5
	add	esi, eax
	movzx	edx, al
	mov	dh, cl
	sal	esi, 3
	mov	ecx, 20
	mov	WORD PTR 12[rbx], dx
	mov	WORD PTR 54[rbx], si
	movzx	eax, BYTE PTR 1[r12]
	movzx	esi, BYTE PTR 3[r12]
	add	eax, edi
	sal	eax, 3
	mov	WORD PTR 56[rbx], ax
	mov	eax, esi
	and	eax, 3
	mov	BYTE PTR [r12], -2
	mov	WORD PTR 80[rbx], ax
	call	VramMalloc
	mov	edx, 608
	mov	ecx, 4351
	mov	DWORD PTR 58[rbx], 1152
	mov	QWORD PTR 24[rbx], rax
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	WORD PTR 65[rbx], cx
	mov	rcx, rbp
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	sar	al, 2
	cmp	al, 5
	mov	eax, 543
	cmove	eax, edx
	xor	edx, edx
	mov	WORD PTR 52[rbx], dx
	mov	WORD PTR 34[rbx], ax
	mov	eax, esi
	and	esi, 2
	and	eax, 1
	mov	BYTE PTR 64[rbx], al
	xor	eax, eax
	cmp	sil, 1
	mov	WORD PTR 32[rbx], ax
	sbb	eax, eax
	and	eax, -1024
	add	eax, 9728
	mov	DWORD PTR 48[rbx], eax
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Interactable;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.gPlayerControls, "dr"
	.globl	.refptr.gPlayerControls
	.linkonce	discard
.refptr.gPlayerControls:
	.quad	gPlayerControls
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
