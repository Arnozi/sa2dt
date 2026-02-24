	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	Task_Interactable_Booster;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Interactable_Booster
Task_Interactable_Booster:
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
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	mov	r12, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	movzx	edx, WORD PTR 8[rbx]
	movzx	eax, BYTE PTR 12[rbx]
	lea	rbp, 16[rbx]
	mov	rdi, QWORD PTR [rbx]
	movzx	r8d, WORD PTR 10[rbx]
	sal	edx, 5
	add	edx, eax
	movzx	eax, BYTE PTR 1[rdi]
	sal	r8d, 5
	sal	edx, 3
	add	r8d, eax
	mov	eax, edx
	sub	ax, WORD PTR [rcx]
	sal	r8d, 3
	mov	WORD PTR 54[rbx], ax
	mov	r10d, r8d
	sub	r10w, WORD PTR 4[rcx]
	mov	WORD PTR 56[rbx], r10w
	test	BYTE PTR 36[r12], -126
	je	.L29
.L2:
	sub	ax, -128
	cmp	ax, 682
	ja	.L21
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L22
.L21:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR [rdi], al
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L29:
	mov	QWORD PTR 32[rsp], r12
	xor	r9d, r9d
	movsx	edx, dx
	movsx	r8d, r8w
	mov	DWORD PTR 40[rsp], 0
	mov	rcx, rbp
	call	Coll_Player_Entity_HitboxN
	cmp	eax, 1
	je	.L3
.L23:
	movzx	eax, WORD PTR 54[rbx]
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L22:
	mov	rcx, rbp
	call	UpdateSpriteAnimation
	mov	rcx, rbp
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L3:
	mov	rcx, r12
	call	Player_TransitionCancelFlyingAndBoost
	test	BYTE PTR 36[r12], 4
	jne	.L30
	mov	edx, 14
	mov	rcx, r12
	call	Player_HandleSpriteYOffsetChange
	mov	eax, 14
.L5:
	mov	ecx, 155
	mov	BYTE PTR 27[r12], al
	mov	BYTE PTR 26[r12], 6
	call	m4aSongNumStart
	mov	BYTE PTR 106[r12], 0
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	mov	BYTE PTR 98[r12], 1
	mov	edx, DWORD PTR 48[rbx]
	movzx	ecx, WORD PTR 24[r12]
	mov	r8d, edx
	and	r8d, 1024
	test	BYTE PTR [rax], -128
	mov	eax, DWORD PTR 36[r12]
	je	.L6
	and	dh, 8
	jne	.L7
	test	r8d, r8d
	jne	.L18
	or	eax, 1
	mov	DWORD PTR 36[r12], eax
	cmp	cx, -3071
	jl	.L23
	mov	r8d, -3072
	movzx	eax, WORD PTR 54[rbx]
	mov	WORD PTR 24[r12], r8w
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L30:
	mov	edx, 9
	mov	rcx, r12
	call	Player_HandleSpriteYOffsetChange
	mov	eax, 9
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L6:
	and	dh, 8
	je	.L14
	test	r8d, r8d
	jne	.L18
.L26:
	or	eax, 1
	mov	DWORD PTR 36[r12], eax
	movzx	eax, WORD PTR 54[rbx]
	cmp	cx, -3071
	jl	.L2
	mov	edx, -3072
	mov	WORD PTR 24[r12], dx
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L14:
	test	r8d, r8d
	jne	.L26
.L18:
	and	eax, -2
	mov	DWORD PTR 36[r12], eax
	cmp	cx, 3071
	jg	.L23
	mov	eax, 3072
	mov	WORD PTR 24[r12], ax
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L7:
	test	r8d, r8d
	jne	.L26
	and	eax, -2
	mov	DWORD PTR 36[r12], eax
	movzx	eax, WORD PTR 54[rbx]
	cmp	cx, 3071
	jg	.L2
	mov	ecx, 3072
	mov	WORD PTR 24[r12], cx
	jmp	.L2
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Booster
	.def	CreateEntity_Booster;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Booster
CreateEntity_Booster:
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
	mov	r8d, 8192
	xor	r9d, r9d
	mov	edx, 80
	lea	rcx, Task_Interactable_Booster[rip]
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
	mov	dh, cl
	sal	esi, 3
	mov	WORD PTR 12[rbx], dx
	mov	WORD PTR 54[rbx], si
	movzx	eax, BYTE PTR 1[rdi]
	add	eax, ebp
	lea	rbp, sBoosterAnimationData[rip]
	sal	eax, 3
	mov	WORD PTR 56[rbx], ax
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdi], -2
	sar	al, 2
	cmp	al, 5
	movsx	rax, BYTE PTR 3[rdi]
	sete	dl
	movzx	edx, dl
	lea	rsi, [rdx+rdx*2]
	add	rsi, rsi
	add	rax, rsi
	mov	ecx, DWORD PTR 0[rbp+rax*8]
	call	VramMalloc
	mov	ecx, 4351
	xor	edx, edx
	mov	QWORD PTR 24[rbx], rax
	movsx	rax, BYTE PTR 3[rdi]
	mov	DWORD PTR 58[rbx], 1152
	add	rsi, rax
	mov	WORD PTR 65[rbx], cx
	movzx	eax, WORD PTR 4[rbp+rsi*8]
	mov	BYTE PTR 69[rbx], 0
	mov	WORD PTR 52[rbx], dx
	mov	WORD PTR 34[rbx], ax
	movzx	eax, BYTE PTR 6[rbp+rsi*8]
	mov	DWORD PTR 72[rbx], -1
	mov	BYTE PTR 64[rbx], al
	xor	eax, eax
	cmp	BYTE PTR 5[rdi], 1
	mov	WORD PTR 32[rbx], ax
	sbb	eax, eax
	and	eax, -2048
	add	eax, 10240
	mov	DWORD PTR 48[rbx], eax
	cmp	BYTE PTR 4[rdi], 0
	je	.L31
	or	ah, 4
	mov	DWORD PTR 48[rbx], eax
.L31:
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.globl	sBoosterAnimationData
	.section .rdata,"dr"
	.align 32
sBoosterAnimationData:
	.long	8
	.word	540
	.byte	0
	.space 1
	.long	12
	.word	540
	.byte	1
	.space 1
	.long	12
	.word	540
	.byte	2
	.space 1
	.long	16
	.word	540
	.byte	3
	.space 1
	.long	12
	.word	540
	.byte	4
	.space 1
	.long	8
	.word	540
	.byte	5
	.space 1
	.long	8
	.word	606
	.byte	0
	.space 1
	.long	12
	.word	606
	.byte	1
	.space 1
	.long	12
	.word	606
	.byte	2
	.space 1
	.long	16
	.word	606
	.byte	3
	.space 1
	.long	16
	.word	606
	.byte	4
	.space 1
	.long	8
	.word	606
	.byte	5
	.space 1
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Entity_HitboxN;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	Player_TransitionCancelFlyingAndBoost;	.scl	2;	.type	32;	.endef
	.def	Player_HandleSpriteYOffsetChange;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.TaskDestructor_80095E8, "dr"
	.globl	.refptr.TaskDestructor_80095E8
	.linkonce	discard
.refptr.TaskDestructor_80095E8:
	.quad	TaskDestructor_80095E8
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
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
