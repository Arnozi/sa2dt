	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	Task_BellMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_BellMain
Task_BellMain:
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
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	xor	r9d, r9d
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	edx, DWORD PTR 88[rbx]
	mov	r8d, DWORD PTR 92[rbx]
	lea	rdi, 16[rbx]
	mov	rbp, QWORD PTR [rbx]
	sar	edx, 8
	sar	r8d, 8
	mov	ecx, edx
	sub	cx, WORD PTR [rax]
	mov	WORD PTR 54[rbx], cx
	mov	ecx, r8d
	sub	cx, WORD PTR 4[rax]
	mov	WORD PTR 56[rbx], cx
	mov	rcx, rdi
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L8
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L3
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L4
.L3:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR 0[rbp], al
.L8:
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L4:
	sub	BYTE PTR 96[rbx], 1
	jne	.L5
	mov	rdx, QWORD PTR .refptr.gPseudoRandom[rip]
	imul	eax, DWORD PTR [rdx], 1663525
	add	eax, 1013904223
	mov	DWORD PTR [rdx], eax
	and	eax, 1
	mov	edx, -255
	cmp	eax, 1
	sbb	eax, eax
	and	eax, 56
	add	eax, 124
	mov	BYTE PTR 96[rbx], al
	mov	rax, QWORD PTR [rsi]
	lea	rsi, sub_8054D20[rip]
	mov	QWORD PTR 40[rax], rsi
	mov	eax, 493
	mov	DWORD PTR 72[rbx], -1
	mov	WORD PTR 34[rbx], ax
	mov	WORD PTR 64[rbx], dx
.L5:
	mov	edx, DWORD PTR 92[rbx]
	mov	ecx, DWORD PTR 88[rbx]
	call	Player_UpdateHomingPosition
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.def	sub_8054D20;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8054D20
sub_8054D20:
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
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	edx, DWORD PTR 88[rbx]
	mov	r8d, DWORD PTR 92[rbx]
	lea	rdi, 16[rbx]
	mov	rbp, QWORD PTR [rbx]
	sar	edx, 8
	sar	r8d, 8
	mov	ecx, edx
	sub	cx, WORD PTR [rax]
	mov	WORD PTR 54[rbx], cx
	mov	ecx, r8d
	sub	cx, WORD PTR 4[rax]
	mov	WORD PTR 56[rbx], cx
	mov	rcx, rdi
	call	Coll_Player_Projectile
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L11
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L12
.L11:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR 0[rbp], al
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L12:
	movzx	eax, BYTE PTR 96[rbx]
	sub	al, 1
	je	.L13
	mov	BYTE PTR 96[rbx], al
.L14:
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L13:
	mov	eax, 493
	mov	edx, -256
	mov	BYTE PTR 96[rbx], 120
	mov	WORD PTR 34[rbx], ax
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_BellMain[rip]
	mov	WORD PTR 64[rbx], dx
	mov	DWORD PTR 80[rbx], -1
	mov	QWORD PTR 40[rax], rsi
	jmp	.L14
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Bell
	.def	CreateEntity_Bell;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Bell
CreateEntity_Bell:
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
	mov	rax, QWORD PTR .refptr.TaskDestructor_80095E8[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rdi, rcx
	mov	esi, edx
	mov	ebp, r8d
	mov	r12d, r9d
	mov	r8d, 16512
	xor	r9d, r9d
	mov	edx, 104
	lea	rcx, Task_BellMain[rip]
	call	TaskCreate
	mov	ecx, r12d
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 8[rbx], si
	movzx	esi, si
	mov	WORD PTR 10[rbx], bp
	sal	esi, 5
	movzx	ebp, bp
	mov	BYTE PTR 96[rbx], 120
	sal	ebp, 5
	mov	QWORD PTR [rbx], rdi
	movzx	eax, BYTE PTR [rdi]
	add	esi, eax
	movzx	edx, al
	mov	eax, esi
	mov	dh, cl
	movzx	esi, si
	mov	ecx, 20
	sal	eax, 11
	mov	WORD PTR 12[rbx], dx
	mov	DWORD PTR 88[rbx], eax
	movzx	eax, BYTE PTR 1[rdi]
	lea	r8d, [rax+rbp]
	mov	eax, r8d
	sal	r8d, 16
	or	r8d, esi
	sal	eax, 11
	movd	xmm0, r8d
	mov	DWORD PTR 92[rbx], eax
	psllw	xmm0, 3
	movd	DWORD PTR 54[rbx], xmm0
	mov	BYTE PTR [rdi], -2
	call	VramMalloc
	mov	edx, -256
	mov	DWORD PTR 32[rbx], 32309248
	mov	QWORD PTR 24[rbx], rax
	xor	eax, eax
	mov	WORD PTR 52[rbx], ax
	mov	DWORD PTR 58[rbx], 1152
	mov	WORD PTR 64[rbx], dx
	mov	BYTE PTR 66[rbx], 16
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 8192
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	Coll_Player_Enemy_Attack;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Player_UpdateHomingPosition;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Projectile;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.TaskDestructor_80095E8, "dr"
	.globl	.refptr.TaskDestructor_80095E8
	.linkonce	discard
.refptr.TaskDestructor_80095E8:
	.quad	TaskDestructor_80095E8
	.section	.rdata$.refptr.gPseudoRandom, "dr"
	.globl	.refptr.gPseudoRandom
	.linkonce	discard
.refptr.gPseudoRandom:
	.quad	gPseudoRandom
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
