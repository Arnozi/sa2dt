	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_Interactable_BouncySpring;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_Interactable_BouncySpring
TaskDestructor_Interactable_BouncySpring:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	Task_Interactable_BouncySpring;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Interactable_BouncySpring
Task_Interactable_BouncySpring:
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
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	mov	r12, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	movzx	edx, WORD PTR 8[rbx]
	movzx	eax, BYTE PTR 12[rbx]
	lea	rsi, 16[rbx]
	mov	rbp, QWORD PTR [rbx]
	movzx	r8d, WORD PTR 10[rbx]
	sal	edx, 5
	add	edx, eax
	movzx	eax, BYTE PTR 1[rbp]
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
	test	DWORD PTR 36[r12], 4194432
	je	.L16
.L4:
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
	mov	rcx, QWORD PTR [rdi]
	add	rsp, 32
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
.L16:
	mov	r9, r12
	mov	rcx, rsi
	movzx	r14d, WORD PTR 22[r12]
	call	Coll_Player_Platform
	test	eax, eax
	je	.L15
	movsx	r13d, r14w
	mov	eax, r14d
	mov	edx, -3072
	mov	rcx, r12
	imul	r13d, r13d, 5243
	sar	ax, 15
	mov	BYTE PTR 58[r12], 3
	sar	r13d, 21
	sub	r13d, eax
	mov	eax, 2
	cmp	r13b, al
	cmova	r13d, eax
	mov	eax, r14d
	sar	ax, 3
	add	eax, r14d
	movzx	r13d, r13b
	neg	eax
	cmp	ax, dx
	cmovge	edx, eax
	cmp	ax, -1919
	mov	eax, -1920
	cmovl	eax, edx
	mov	WORD PTR 22[r12], ax
	call	Player_TransitionCancelFlyingAndBoost
	mov	edx, 14
	mov	rcx, r12
	call	Player_HandleSpriteYOffsetChange
	mov	eax, 3590
	mov	WORD PTR 26[r12], ax
	mov	eax, DWORD PTR 36[r12]
	and	eax, -259
	or	eax, 2
	mov	DWORD PTR 36[r12], eax
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	eax, BYTE PTR [rax]
	sar	al, 2
	cmp	al, 2
	je	.L17
	cmp	al, 5
	je	.L18
	lea	rax, gUnknown_080D948C[rip]
	movzx	edx, WORD PTR 4[rax+r13*8]
	movzx	eax, BYTE PTR 6[rax+r13*8]
	mov	WORD PTR 34[rbx], dx
.L9:
	mov	BYTE PTR 64[rbx], al
	mov	ecx, 170
	mov	BYTE PTR 65[rbx], -1
	mov	BYTE PTR 117[r12], 7
	mov	DWORD PTR 108[r12], -65498
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rdi]
	lea	rcx, Task_805E02C[rip]
	mov	QWORD PTR 40[rax], rcx
.L15:
	movzx	eax, WORD PTR 54[rbx]
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L12:
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	add	rsp, 32
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
.L17:
	lea	rax, gUnknown_080D94A4[rip]
	movzx	edx, WORD PTR 4[rax+r13*8]
	movzx	eax, BYTE PTR 6[rax+r13*8]
	mov	WORD PTR 34[rbx], dx
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L18:
	lea	rax, gUnknown_080D94BC[rip]
	movzx	edx, WORD PTR 4[rax+r13*8]
	movzx	eax, BYTE PTR 6[rax+r13*8]
	mov	WORD PTR 34[rbx], dx
	jmp	.L9
	.seh_endproc
	.p2align 4
	.def	Task_805E02C;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_805E02C
Task_805E02C:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rbx]
	mov	rsi, QWORD PTR 24[rcx]
	mov	r8, QWORD PTR [rsi]
	movzx	edx, WORD PTR 10[rsi]
	movzx	r10d, BYTE PTR 12[rsi]
	movzx	eax, BYTE PTR 1[r8]
	sal	edx, 5
	mov	r9d, r10d
	add	edx, eax
	movzx	eax, WORD PTR 8[rsi]
	sal	edx, 3
	sal	eax, 5
	add	eax, r10d
	mov	r10, QWORD PTR .refptr.gCamera[rip]
	sal	eax, 3
	sub	ax, WORD PTR [r10]
	sub	dx, WORD PTR 4[r10]
	mov	WORD PTR 54[rsi], ax
	sub	ax, -128
	cmp	ax, 682
	mov	WORD PTR 56[rsi], dx
	seta	al
	cmp	dx, -128
	setl	r10b
	or	al, r10b
	jne	.L26
	cmp	dx, 368
	jle	.L20
.L26:
	mov	BYTE PTR [r8], r9b
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L20:
	lea	rdi, 16[rsi]
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	test	eax, eax
	jne	.L22
	mov	rax, QWORD PTR [rbx]
	lea	rbx, Task_Interactable_BouncySpring[rip]
	mov	edx, 570
	mov	QWORD PTR 40[rax], rbx
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	eax, BYTE PTR [rax]
	sar	al, 2
	cmp	al, 2
	je	.L23
	cmp	al, 5
	mov	edx, 603
	mov	eax, 537
	cmovne	edx, eax
.L23:
	mov	eax, -256
	mov	WORD PTR 34[rsi], dx
	mov	WORD PTR 64[rsi], ax
.L22:
	mov	rcx, rdi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_BouncySpring
	.def	CreateEntity_BouncySpring;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_BouncySpring
CreateEntity_BouncySpring:
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
	lea	rax, TaskDestructor_Interactable_BouncySpring[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rbp, rcx
	mov	esi, edx
	mov	edi, r8d
	mov	r12d, r9d
	mov	edx, 80
	lea	rcx, Task_Interactable_BouncySpring[rip]
	xor	r9d, r9d
	mov	r8d, 8208
	call	TaskCreate
	mov	ecx, r12d
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 8[rbx], si
	movzx	esi, si
	mov	WORD PTR 10[rbx], di
	sal	esi, 5
	movzx	edi, di
	mov	QWORD PTR [rbx], rbp
	movzx	eax, BYTE PTR 0[rbp]
	sal	edi, 5
	movzx	edx, al
	add	esi, eax
	mov	dh, cl
	sal	esi, 3
	mov	WORD PTR 12[rbx], dx
	mov	WORD PTR 54[rbx], si
	movzx	eax, BYTE PTR 1[rbp]
	add	eax, edi
	sal	eax, 3
	mov	WORD PTR 56[rbx], ax
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	BYTE PTR 0[rbp], -2
	movzx	eax, BYTE PTR [rax]
	sar	al, 2
	cmp	al, 2
	je	.L32
	mov	ecx, 24
	cmp	al, 5
	je	.L33
	call	VramMalloc
	mov	edx, 537
.L30:
	mov	QWORD PTR 24[rbx], rax
	mov	ecx, -256
	xor	eax, eax
	mov	WORD PTR 34[rbx], dx
	xor	edx, edx
	mov	WORD PTR 32[rbx], ax
	mov	WORD PTR 52[rbx], dx
	mov	DWORD PTR 58[rbx], 1152
	mov	WORD PTR 64[rbx], cx
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
	.p2align 4,,10
	.p2align 3
.L33:
	call	VramMalloc
	mov	edx, 603
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L32:
	mov	ecx, 16
	call	VramMalloc
	mov	edx, 570
	jmp	.L30
	.seh_endproc
	.section .rdata,"dr"
	.align 16
gUnknown_080D94BC:
	.long	16
	.word	603
	.byte	1
	.space 1
	.long	16
	.word	603
	.byte	2
	.space 1
	.long	24
	.word	603
	.byte	3
	.space 1
	.align 16
gUnknown_080D94A4:
	.long	16
	.word	570
	.byte	1
	.space 1
	.long	16
	.word	570
	.byte	2
	.space 1
	.long	16
	.word	570
	.byte	3
	.space 1
	.align 16
gUnknown_080D948C:
	.long	24
	.word	537
	.byte	1
	.space 1
	.long	24
	.word	537
	.byte	2
	.space 1
	.long	24
	.word	537
	.byte	3
	.space 1
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Platform;	.scl	2;	.type	32;	.endef
	.def	Player_TransitionCancelFlyingAndBoost;	.scl	2;	.type	32;	.endef
	.def	Player_HandleSpriteYOffsetChange;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
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
