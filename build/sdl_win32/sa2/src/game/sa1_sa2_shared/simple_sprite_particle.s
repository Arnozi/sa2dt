	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_SimpleSpriteParticleMain
	.def	Task_SimpleSpriteParticleMain;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_SimpleSpriteParticleMain
Task_SimpleSpriteParticleMain:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	mov	rcx, QWORD PTR [rbx]
	mov	rsi, QWORD PTR 24[rcx]
	movzx	eax, WORD PTR 76[rsi]
	movzx	edx, WORD PTR 78[rsi]
	add	ax, WORD PTR 72[rsi]
	add	dx, WORD PTR 74[rsi]
	mov	WORD PTR 72[rsi], ax
	cwde
	add	eax, DWORD PTR 64[rsi]
	mov	WORD PTR 74[rsi], dx
	movsx	edx, dx
	add	edx, DWORD PTR 68[rsi]
	mov	DWORD PTR 64[rsi], eax
	sar	eax, 8
	sub	ax, WORD PTR [r8]
	mov	DWORD PTR 68[rsi], edx
	sar	edx, 8
	sub	dx, WORD PTR 4[r8]
	movzx	r8d, WORD PTR 80[rsi]
	mov	WORD PTR 38[rsi], ax
	mov	WORD PTR 40[rsi], dx
	test	r8w, r8w
	je	.L2
	sub	r8d, 1
	mov	WORD PTR 80[rsi], r8w
.L2:
	add	eax, 32
	cmp	ax, 490
	ja	.L10
	cmp	dx, 272
	jle	.L3
.L10:
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L3:
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	test	eax, eax
	jne	.L5
	cmp	WORD PTR 80[rsi], 0
	je	.L12
.L5:
	mov	rcx, rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L12:
	mov	rcx, QWORD PTR [rbx]
	jmp	.L10
	.seh_endproc
	.p2align 4
	.globl	CreateSimpleSpriteParticle
	.def	CreateSimpleSpriteParticle;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateSimpleSpriteParticle
CreateSimpleSpriteParticle:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rax, QWORD PTR 112[rsp]
	mov	QWORD PTR 32[rsp], rax
	mov	rdi, rdx
	mov	esi, r8d
	mov	ebx, r9d
	movzx	r8d, cx
	xor	r9d, r9d
	mov	edx, 88
	lea	rcx, Task_SimpleSpriteParticleMain[rip]
	call	TaskCreate
	xor	ecx, ecx
	xor	r8d, r8d
	mov	r9d, 4351
	mov	rdx, QWORD PTR 24[rax]
	xor	r10d, r10d
	mov	QWORD PTR 64[rdx], 0
	mov	QWORD PTR 72[rdx], 0
	mov	WORD PTR 80[rdx], cx
	mov	QWORD PTR 8[rdx], rdi
	mov	WORD PTR 16[rdx], r8w
	mov	WORD PTR 18[rdx], si
	mov	BYTE PTR 48[rdx], bl
	mov	WORD PTR 49[rdx], r9w
	mov	BYTE PTR 53[rdx], 0
	mov	DWORD PTR 56[rdx], -1
	mov	QWORD PTR 32[rdx], 0
	mov	DWORD PTR 40[rdx], 0
	mov	WORD PTR 44[rdx], r10w
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	TaskDestructor_800A694
	.def	TaskDestructor_800A694;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_800A694
TaskDestructor_800A694:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 8[rax]
	jmp	VramFree
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
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
