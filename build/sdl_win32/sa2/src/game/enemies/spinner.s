	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_EnemySpinner
	.def	Task_EnemySpinner;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_EnemySpinner
Task_EnemySpinner:
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
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	r12d, DWORD PTR 92[rbx]
	mov	edi, DWORD PTR 88[rbx]
	lea	rbp, 16[rbx]
	mov	r13, QWORD PTR [rbx]
	mov	r8d, r12d
	mov	r14d, edi
	sar	r8d, 8
	sar	r14d, 8
	mov	ecx, r8d
	sub	cx, WORD PTR 4[rdx]
	mov	eax, r14d
	sub	ax, WORD PTR [rdx]
	mov	WORD PTR 56[rbx], cx
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	mov	WORD PTR 54[rbx], ax
	test	DWORD PTR 36[rcx], 4194432
	jne	.L2
	mov	rax, QWORD PTR 160[rcx]
	cmp	DWORD PTR 72[rax], -1
	je	.L3
	cmp	DWORD PTR 80[rbx], -1
	je	.L3
	mov	r10d, DWORD PTR 12[rcx]
	movsx	r9d, BYTE PTR 84[rbx]
	movsx	edx, BYTE PTR 76[rax]
	sar	r10d, 8
	add	r9d, r14d
	add	edx, r10d
	cmp	r9d, edx
	jg	.L4
	movsx	r11d, BYTE PTR 86[rbx]
	add	r11d, r14d
	cmp	edx, r11d
	jle	.L5
	cmp	r9d, edx
	je	.L4
	.p2align 4,,10
	.p2align 3
.L3:
	xor	r9d, r9d
	mov	edx, r14d
	mov	rcx, rbp
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L11
	movzx	eax, WORD PTR 54[rbx]
.L2:
	sub	ax, -128
	cmp	ax, 682
	ja	.L9
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L10
.L9:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR 0[r13], al
.L11:
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L10:
	mov	edx, r12d
	xor	dil, dil
	xor	dl, dl
	mov	ecx, edi
	call	Player_UpdateHomingPosition
	mov	rcx, rbp
	call	UpdateSpriteAnimation
	mov	rcx, rbp
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L4:
	movsx	edx, BYTE PTR 78[rax]
	add	edx, r10d
	cmp	r9d, edx
	jg	.L3
.L5:
	mov	r10d, DWORD PTR 16[rcx]
	movsx	r9d, BYTE PTR 85[rbx]
	movsx	edx, BYTE PTR 77[rax]
	sar	r10d, 8
	add	r9d, r8d
	add	edx, r10d
	cmp	r9d, edx
	jg	.L6
	movsx	r11d, BYTE PTR 87[rbx]
	add	r11d, r8d
	cmp	edx, r11d
	jle	.L7
	cmp	r9d, edx
	jne	.L3
	.p2align 4,,10
	.p2align 3
.L6:
	movsx	eax, BYTE PTR 79[rax]
	add	eax, r10d
	cmp	r9d, eax
	jg	.L3
.L7:
	test	BYTE PTR 59[rcx], 2
	jne	.L3
	mov	DWORD PTR 44[rsp], r8d
	call	Coll_DamagePlayer
	mov	r8d, DWORD PTR 44[rsp]
	jmp	.L3
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Spinner
	.def	CreateEntity_Spinner;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Spinner
CreateEntity_Spinner:
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
	mov	r8d, 16448
	xor	r9d, r9d
	mov	edx, 96
	lea	rcx, Task_EnemySpinner[rip]
	call	TaskCreate
	mov	ecx, r12d
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 8[rbx], si
	movzx	esi, si
	mov	WORD PTR 10[rbx], bp
	sal	esi, 5
	movzx	ebp, bp
	mov	QWORD PTR [rbx], rdi
	movzx	eax, BYTE PTR [rdi]
	sal	ebp, 5
	add	esi, eax
	movzx	edx, al
	mov	eax, esi
	mov	dh, cl
	movzx	esi, si
	mov	ecx, 24
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
	mov	DWORD PTR 32[rbx], 33685504
	mov	QWORD PTR 24[rbx], rax
	xor	eax, eax
	mov	WORD PTR 52[rbx], ax
	mov	DWORD PTR 58[rbx], 1152
	mov	WORD PTR 64[rbx], dx
	mov	BYTE PTR 66[rbx], 16
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 80[rbx], -1
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
	.def	Coll_DamagePlayer;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.TaskDestructor_80095E8, "dr"
	.globl	.refptr.TaskDestructor_80095E8
	.linkonce	discard
.refptr.TaskDestructor_80095E8:
	.quad	TaskDestructor_80095E8
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
