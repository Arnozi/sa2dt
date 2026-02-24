	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_CreateEnemyDefeatScore_MoveUp
	.def	Task_CreateEnemyDefeatScore_MoveUp;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_CreateEnemyDefeatScore_MoveUp
Task_CreateEnemyDefeatScore_MoveUp:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	movups	XMMWORD PTR 32[rsp], xmm6
	.seh_savexmm	xmm6, 32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	mov	r8, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[r8]
	movd	xmm6, DWORD PTR 38[rbx]
	movzx	eax, WORD PTR 64[rbx]
	movzx	edi, WORD PTR 38[rbx]
	pextrw	edx, xmm6, 0
	pextrw	esi, xmm6, 1
	sub	dx, WORD PTR [rcx]
	add	eax, 1
	mov	WORD PTR 38[rbx], dx
	mov	edx, esi
	sub	edx, eax
	sub	dx, WORD PTR 4[rcx]
	mov	WORD PTR 64[rbx], ax
	mov	WORD PTR 40[rbx], dx
	cmp	ax, 59
	jle	.L2
	lea	rax, Task_CreateEnemyDefeatScore_Hold[rip]
	mov	rcx, rbx
	mov	QWORD PTR 40[r8], rax
	call	DisplaySprite
	sub	si, WORD PTR 64[rbx]
	xor	eax, eax
	sal	esi, 16
	mov	WORD PTR 64[rbx], ax
	or	esi, edi
	mov	DWORD PTR 38[rbx], esi
	movups	xmm6, XMMWORD PTR 32[rsp]
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	mov	rcx, rbx
	call	DisplaySprite
	movd	DWORD PTR 38[rbx], xmm6
	movups	xmm6, XMMWORD PTR 32[rsp]
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_CreateEnemyDefeatScore_Hold
	.def	Task_CreateEnemyDefeatScore_Hold;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_CreateEnemyDefeatScore_Hold
Task_CreateEnemyDefeatScore_Hold:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	movups	XMMWORD PTR 32[rsp], xmm6
	.seh_savexmm	xmm6, 32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	rcx, QWORD PTR [rax]
	movzx	eax, WORD PTR 4[rdx]
	movzx	edx, WORD PTR [rdx]
	mov	rbx, QWORD PTR 24[rcx]
	sal	eax, 16
	or	eax, edx
	movd	xmm6, DWORD PTR 38[rbx]
	movd	xmm1, eax
	movzx	eax, WORD PTR 64[rbx]
	movdqu	xmm0, xmm6
	add	eax, 1
	psubw	xmm0, xmm1
	mov	WORD PTR 64[rbx], ax
	movd	DWORD PTR 38[rbx], xmm0
	cmp	ax, 30
	jle	.L6
	movups	xmm6, XMMWORD PTR 32[rsp]
	add	rsp, 48
	pop	rbx
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L6:
	mov	rcx, rbx
	call	DisplaySprite
	movd	DWORD PTR 38[rbx], xmm6
	movups	xmm6, XMMWORD PTR 32[rsp]
	add	rsp, 48
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	TaskDestructor_CreateEnemyDefeatScore
	.def	TaskDestructor_CreateEnemyDefeatScore;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_CreateEnemyDefeatScore
TaskDestructor_CreateEnemyDefeatScore:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 8[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.globl	CreateEnemyDefeatScore
	.def	CreateEnemyDefeatScore;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEnemyDefeatScore
CreateEnemyDefeatScore:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	lea	rax, TaskDestructor_CreateEnemyDefeatScore[rip]
	xor	r9d, r9d
	mov	r8d, 8192
	mov	QWORD PTR 32[rsp], rax
	mov	edi, ecx
	mov	esi, edx
	lea	rcx, Task_CreateEnemyDefeatScore_MoveUp[rip]
	mov	edx, 72
	call	TaskCreate
	mov	ecx, 2
	mov	rbx, QWORD PTR 24[rax]
	xor	eax, eax
	mov	WORD PTR 64[rbx], ax
	mov	WORD PTR 38[rbx], di
	mov	WORD PTR 40[rbx], si
	call	VramMalloc
	xor	edx, edx
	xor	ecx, ecx
	mov	DWORD PTR 16[rbx], 47710208
	mov	QWORD PTR 8[rbx], rax
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	xor	r8d, r8d
	mov	r9d, 4351
	mov	WORD PTR 42[rbx], dx
	movzx	eax, BYTE PTR 140[rax]
	mov	WORD PTR 36[rbx], cx
	mov	rcx, rbx
	mov	WORD PTR 44[rbx], r8w
	mov	BYTE PTR 48[rbx], al
	mov	WORD PTR 49[rbx], r9w
	mov	BYTE PTR 53[rbx], 0
	mov	DWORD PTR 32[rbx], 8192
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
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
