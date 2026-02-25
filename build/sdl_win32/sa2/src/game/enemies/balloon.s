	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_BalloonMain
	.def	Task_BalloonMain;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_BalloonMain
Task_BalloonMain:
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
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	xor	r9d, r9d
	mov	r14, QWORD PTR .refptr.gCamera[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	mov	eax, DWORD PTR 108[rbx]
	lea	rsi, 16[rbx]
	mov	rbp, QWORD PTR [rbx]
	add	eax, 1
	and	eax, 1023
	lea	edx, [rax+rax*4]
	mov	DWORD PTR 108[rbx], eax
	lea	eax, [rax+rax*2]
	and	edx, 1023
	and	eax, 1023
	movsx	ecx, WORD PTR 512[r8+rdx*2]
	movzx	edx, BYTE PTR 112[rbx]
	imul	ecx, edx
	movsx	edx, WORD PTR [r8+rax*2]
	movzx	eax, BYTE PTR 113[rbx]
	imul	edx, eax
	sar	ecx, 6
	mov	DWORD PTR 96[rbx], ecx
	add	ecx, DWORD PTR 88[rbx]
	sar	edx, 6
	mov	eax, ecx
	mov	r13d, ecx
	mov	rcx, rsi
	mov	DWORD PTR 100[rbx], edx
	add	edx, DWORD PTR 92[rbx]
	sar	eax, 8
	mov	r8d, edx
	mov	r12d, edx
	mov	edx, eax
	sub	dx, WORD PTR [r14]
	sar	r8d, 8
	mov	WORD PTR 54[rbx], dx
	mov	edx, r8d
	sub	dx, WORD PTR 4[r14]
	mov	WORD PTR 56[rbx], dx
	mov	edx, eax
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L9
	mov	eax, DWORD PTR 88[rbx]
	mov	edx, DWORD PTR [r14]
	sar	eax, 8
	lea	ecx, 554[rdx]
	cmp	eax, ecx
	jle	.L11
.L3:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L5
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L4
.L5:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR 0[rbp], al
.L9:
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
.L11:
	add	edx, -128
	cmp	eax, edx
	jl	.L3
	mov	eax, DWORD PTR 92[rbx]
	mov	edx, DWORD PTR 4[r14]
	sar	eax, 8
	lea	ecx, 368[rdx]
	cmp	eax, ecx
	jg	.L3
	add	edx, -128
	cmp	eax, edx
	jl	.L3
	.p2align 4,,10
	.p2align 3
.L4:
	mov	eax, DWORD PTR 96[rbx]
	movsx	ecx, BYTE PTR 3[rbp]
	sar	eax, 8
	lea	edx, 0[0+rcx*8]
	cmp	eax, edx
	jle	.L12
	movzx	edx, BYTE PTR 5[rbp]
	add	edx, ecx
	sal	edx, 3
	cmp	eax, edx
	jl	.L7
	mov	DWORD PTR 104[rbx], -128
.L7:
	sub	BYTE PTR 114[rbx], 1
	jne	.L8
	mov	eax, 501
	mov	edx, -255
	mov	WORD PTR 34[rbx], ax
	mov	rax, QWORD PTR [rdi]
	lea	rdi, sub_805879C[rip]
	mov	WORD PTR 64[rbx], dx
	mov	QWORD PTR 40[rax], rdi
.L8:
	mov	edx, r12d
	mov	ecx, r13d
	xor	dl, dl
	xor	cl, cl
	call	Player_UpdateHomingPosition
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	xor	DWORD PTR 48[rbx], 1024
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
.L12:
	mov	DWORD PTR 104[rbx], 128
	jmp	.L7
	.seh_endproc
	.p2align 4
	.globl	sub_805879C
	.def	sub_805879C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_805879C
sub_805879C:
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
	sub	rsp, 96
	.seh_stackalloc	96
	movups	XMMWORD PTR 64[rsp], xmm6
	.seh_savexmm	xmm6, 64
	movups	XMMWORD PTR 80[rsp], xmm7
	.seh_savexmm	xmm7, 80
	.seh_endprologue
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	r12, QWORD PTR .refptr.gCamera[rip]
	xor	r9d, r9d
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	movq	xmm6, QWORD PTR 88[rbx]
	movq	xmm0, QWORD PTR 96[rbx]
	lea	rsi, 16[rbx]
	mov	eax, DWORD PTR 100[rbx]
	mov	edx, DWORD PTR 96[rbx]
	mov	rcx, rsi
	paddd	xmm6, xmm0
	add	eax, DWORD PTR 92[rbx]
	add	edx, DWORD PTR 88[rbx]
	sar	eax, 8
	sar	edx, 8
	sub	ax, WORD PTR 4[r12]
	mov	rbp, QWORD PTR [rbx]
	sub	dx, WORD PTR [r12]
	mov	WORD PTR 56[rbx], ax
	mov	WORD PTR 54[rbx], dx
	movdqu	xmm7, xmm6
	psrad	xmm7, 8
	pshufd	xmm1, xmm7, 0xe5
	movd	edx, xmm7
	movd	r8d, xmm1
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L20
	mov	eax, DWORD PTR 88[rbx]
	mov	edx, DWORD PTR [r12]
	sar	eax, 8
	lea	ecx, 554[rdx]
	cmp	eax, ecx
	jle	.L21
.L15:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L17
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L16
.L17:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR 0[rbp], al
.L20:
	mov	rcx, QWORD PTR [rdi]
	movups	xmm6, XMMWORD PTR 64[rsp]
	movups	xmm7, XMMWORD PTR 80[rsp]
	add	rsp, 96
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L21:
	add	edx, -128
	cmp	eax, edx
	jl	.L15
	mov	eax, DWORD PTR 92[rbx]
	mov	edx, DWORD PTR 4[r12]
	sar	eax, 8
	lea	ecx, 368[rdx]
	cmp	eax, ecx
	jg	.L15
	add	edx, -128
	cmp	eax, edx
	jl	.L15
	.p2align 4,,10
	.p2align 3
.L16:
	movzx	eax, BYTE PTR 114[rbx]
	add	eax, 1
	mov	BYTE PTR 114[rbx], al
	cmp	al, 45
	je	.L22
.L18:
	pshufd	xmm2, xmm6, 0xe5
	movd	ecx, xmm6
	movd	edx, xmm2
	xor	cl, cl
	xor	dl, dl
	call	Player_UpdateHomingPosition
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	test	eax, eax
	jne	.L19
	mov	eax, 501
	mov	edx, -256
	mov	BYTE PTR 114[rbx], 120
	mov	WORD PTR 34[rbx], ax
	mov	rax, QWORD PTR [rdi]
	lea	rdi, Task_BalloonMain[rip]
	mov	WORD PTR 64[rbx], dx
	mov	QWORD PTR 40[rax], rdi
.L19:
	mov	rcx, rsi
	call	DisplaySprite
	xor	DWORD PTR 48[rbx], 1024
	mov	rcx, rsi
	movups	xmm6, XMMWORD PTR 64[rsp]
	movups	xmm7, XMMWORD PTR 80[rsp]
	add	rsp, 96
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L22:
	movq	xmm0, QWORD PTR .LC3[rip]
	lea	rcx, 32[rsp]
	mov	DWORD PTR 32[rsp], 32899075
	mov	BYTE PTR 36[rsp], 0
	paddd	xmm7, xmm0
	mov	DWORD PTR 38[rsp], 33554687
	pslld	xmm7, 8
	movq	QWORD PTR 44[rsp], xmm7
	call	CreateProjectile
	jmp	.L18
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Balloon
	.def	CreateEntity_Balloon;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Balloon
CreateEntity_Balloon:
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
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 1
	mov	rdi, rcx
	mov	esi, edx
	mov	ebp, r8d
	mov	r12d, r9d
	je	.L24
	mov	rax, QWORD PTR .refptr.gDifficultyLevel[rip]
	cmp	BYTE PTR [rax], 1
	je	.L23
.L24:
	mov	rax, QWORD PTR .refptr.TaskDestructor_80095E8[rip]
	xor	r9d, r9d
	mov	r8d, 16448
	mov	edx, 120
	lea	rcx, Task_BalloonMain[rip]
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	ecx, r12d
	movdqu	xmm0, XMMWORD PTR .LC6[rip]
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
	mov	ecx, 10
	sal	eax, 11
	mov	WORD PTR 12[rbx], dx
	mov	DWORD PTR 88[rbx], eax
	movzx	eax, BYTE PTR 1[rdi]
	mov	BYTE PTR 114[rbx], 120
	lea	r8d, [rax+rbp]
	movups	XMMWORD PTR 96[rbx], xmm0
	mov	eax, r8d
	sal	r8d, 16
	sal	eax, 11
	or	r8d, esi
	mov	DWORD PTR 92[rbx], eax
	movzx	eax, BYTE PTR 5[rdi]
	movd	xmm0, r8d
	psllw	xmm0, 3
	sal	eax, 2
	mov	BYTE PTR 112[rbx], al
	movzx	eax, BYTE PTR 6[rdi]
	movd	DWORD PTR 54[rbx], xmm0
	sal	eax, 2
	mov	BYTE PTR 113[rbx], al
	mov	BYTE PTR [rdi], -2
	call	VramMalloc
	mov	edx, -256
	mov	DWORD PTR 32[rbx], 32833536
	mov	QWORD PTR 24[rbx], rax
	xor	eax, eax
	mov	WORD PTR 52[rbx], ax
	mov	DWORD PTR 58[rbx], 1152
	mov	WORD PTR 64[rbx], dx
	mov	BYTE PTR 66[rbx], 16
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 8192
.L23:
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC3:
	.long	1
	.long	20
	.align 16
.LC6:
	.long	0
	.long	0
	.long	128
	.long	0
	.ident	"GCC: (GNU) 13-win32"
	.def	Coll_Player_Enemy_Attack;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Player_UpdateHomingPosition;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	CreateProjectile;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.TaskDestructor_80095E8, "dr"
	.globl	.refptr.TaskDestructor_80095E8
	.linkonce	discard
.refptr.TaskDestructor_80095E8:
	.quad	TaskDestructor_80095E8
	.section	.rdata$.refptr.gDifficultyLevel, "dr"
	.globl	.refptr.gDifficultyLevel
	.linkonce	discard
.refptr.gDifficultyLevel:
	.quad	gDifficultyLevel
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
