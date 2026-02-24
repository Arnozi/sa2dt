	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	UpdatePosition;	.scl	3;	.type	32;	.endef
	.seh_proc	UpdatePosition
UpdatePosition:
	.seh_endprologue
	mov	rax, rcx
	mov	rcx, QWORD PTR [rcx]
	movzx	r8d, WORD PTR 96[rax]
	test	r8w, r8w
	jne	.L2
	movzx	r8d, WORD PTR 98[rax]
	movd	xmm1, DWORD PTR 88[rax]
	test	r8w, r8w
	jne	.L4
.L7:
	movd	xmm2, DWORD PTR 92[rax]
.L5:
	movzx	edx, WORD PTR 8[rax]
	punpckldq	xmm1, xmm2
	psrad	xmm1, 8
	movd	xmm0, edx
	movzx	edx, WORD PTR 10[rax]
	movd	xmm4, edx
	movzx	edx, BYTE PTR 12[rax]
	punpckldq	xmm0, xmm4
	movd	xmm3, edx
	movzx	edx, BYTE PTR 1[rcx]
	pslld	xmm0, 5
	movd	xmm5, edx
	punpckldq	xmm3, xmm5
	paddd	xmm0, xmm3
	pslld	xmm0, 3
	paddd	xmm0, xmm1
	movq	QWORD PTR 80[rax], xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	mov	r9, QWORD PTR .refptr.gStageTime[rip]
	movzx	edx, WORD PTR 100[rax]
	add	edx, DWORD PTR [r9]
	movzx	edx, dl
	imul	edx, r8d
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	and	edx, 1023
	movsx	edx, WORD PTR [r8+rdx*2]
	movzx	r8d, BYTE PTR 5[rcx]
	imul	edx, r8d
	movzx	r8d, WORD PTR 98[rax]
	sal	edx, 11
	sar	edx, 15
	mov	DWORD PTR 88[rax], edx
	movd	xmm1, edx
	test	r8w, r8w
	je	.L7
.L4:
	mov	r9, QWORD PTR .refptr.gStageTime[rip]
	movzx	edx, WORD PTR 100[rax]
	add	edx, DWORD PTR [r9]
	movzx	edx, dl
	imul	edx, r8d
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	and	edx, 1023
	movsx	edx, WORD PTR [r8+rdx*2]
	movzx	r8d, BYTE PTR 6[rcx]
	imul	edx, r8d
	sal	edx, 11
	sar	edx, 15
	mov	DWORD PTR 92[rax], edx
	movd	xmm2, edx
	jmp	.L5
	.seh_endproc
	.p2align 4
	.def	TaskDestructor_IronBall;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_IronBall
TaskDestructor_IronBall:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	Task_Interactable095Main;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Interactable095Main
Task_Interactable095Main:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rcx, rbx
	call	UpdatePosition
	mov	rdi, QWORD PTR .refptr.gPlayer[rip]
	test	BYTE PTR 36[rdi], -128
	je	.L18
.L11:
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	rcx, QWORD PTR [rbx]
	mov	edx, DWORD PTR 80[rbx]
	mov	r8d, DWORD PTR 84[rbx]
	sub	dx, WORD PTR [rax]
	mov	r11d, DWORD PTR 4[rax]
	movzx	eax, BYTE PTR 5[rcx]
	movsx	r9d, dx
	add	eax, 16
	neg	eax
	sal	eax, 3
	cmp	r9d, eax
	jl	.L13
	mov	r10d, 426
	sub	r10d, eax
	cmp	r9d, r10d
	jg	.L13
	movzx	r10d, BYTE PTR 6[rcx]
	mov	eax, r8d
	sub	eax, r11d
	lea	r8d, 16[r10]
	movsx	r9d, ax
	neg	r8d
	sal	r8d, 3
	cmp	r9d, r8d
	jl	.L13
	lea	r8d, 368[0+r10*8]
	cmp	r9d, r8d
	jg	.L13
	and	DWORD PTR 48[rbx], -1025
	lea	rsi, 16[rbx]
	mov	WORD PTR 54[rbx], dx
	mov	rcx, rsi
	mov	WORD PTR 56[rbx], ax
	call	DisplaySprite
	or	DWORD PTR 48[rbx], 1024
	mov	rcx, rsi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L13:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR [rcx], al
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L18:
	mov	edx, DWORD PTR 80[rbx]
	mov	r8d, DWORD PTR 84[rbx]
	lea	rcx, 16[rbx]
	mov	r9, rdi
	call	Coll_Player_Entity_Intersection
	test	eax, 983040
	je	.L11
	mov	rcx, rdi
	call	Coll_DamagePlayer
	jmp	.L11
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_IronBall
	.def	CreateEntity_IronBall;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_IronBall
CreateEntity_IronBall:
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
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	lea	rax, TaskDestructor_IronBall[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rsi, rcx
	mov	edi, r9d
	mov	r12d, edx
	xor	r9d, r9d
	mov	ebp, r8d
	mov	edx, 104
	mov	r8d, 8208
	lea	rcx, Task_Interactable095Main[rip]
	call	TaskCreate
	mov	edx, edi
	mov	ecx, 4351
	mov	rbx, QWORD PTR 24[rax]
	mov	QWORD PTR 88[rbx], 0
	lea	rdi, 16[rbx]
	mov	QWORD PTR [rbx], rsi
	mov	WORD PTR 8[rbx], r12w
	mov	WORD PTR 10[rbx], bp
	movzx	eax, BYTE PTR [rsi]
	mov	WORD PTR 65[rbx], cx
	mov	ecx, 18
	mov	ah, dl
	xor	edx, edx
	mov	DWORD PTR 58[rbx], 1152
	mov	WORD PTR 12[rbx], ax
	xor	eax, eax
	mov	WORD PTR 52[rbx], dx
	mov	WORD PTR 32[rbx], ax
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 8192
	call	VramMalloc
	mov	r8d, 618
	mov	BYTE PTR 64[rbx], 0
	mov	rcx, rdi
	mov	QWORD PTR 24[rbx], rax
	mov	WORD PTR 34[rbx], r8w
	call	UpdateSpriteAnimation
	movzx	eax, BYTE PTR 5[rsi]
	cmp	BYTE PTR 6[rsi], al
	jnb	.L20
	movsx	ax, BYTE PTR 3[rsi]
	mov	ecx, 4
	xor	edx, edx
	and	ax, 128
.L21:
	mov	WORD PTR 96[rbx], cx
	mov	rcx, rbx
	mov	WORD PTR 98[rbx], dx
	mov	WORD PTR 100[rbx], ax
	call	UpdatePosition
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 80[rbx]
	mov	rcx, rdi
	and	DWORD PTR 48[rbx], -1025
	sub	ax, WORD PTR [rdx]
	mov	WORD PTR 54[rbx], ax
	mov	eax, DWORD PTR 84[rbx]
	sub	ax, WORD PTR 4[rdx]
	mov	WORD PTR 56[rbx], ax
	call	DisplaySprite
	or	DWORD PTR 48[rbx], 1024
	mov	rcx, rdi
	call	DisplaySprite
	mov	BYTE PTR [rsi], -2
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L20:
	movsx	ax, BYTE PTR 4[rsi]
	xor	ecx, ecx
	mov	edx, 4
	and	ax, 128
	jmp	.L21
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Entity_Intersection;	.scl	2;	.type	32;	.endef
	.def	Coll_DamagePlayer;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
