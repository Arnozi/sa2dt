	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_Windmill;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_Windmill
TaskDestructor_Windmill:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 88[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 168[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 248[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 328[rbx]
	add	rsp, 32
	pop	rbx
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	Task_WindmillMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_WindmillMain
Task_WindmillMain:
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
	sub	rsp, 88
	.seh_stackalloc	88
	movups	XMMWORD PTR 48[rsp], xmm6
	.seh_savexmm	xmm6, 48
	movups	XMMWORD PTR 64[rsp], xmm7
	.seh_savexmm	xmm7, 64
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rcx]
	mov	r8, QWORD PTR [rbx]
	movzx	edx, WORD PTR 10[rbx]
	movzx	r10d, BYTE PTR 12[rbx]
	movzx	eax, BYTE PTR 1[r8]
	sal	edx, 5
	mov	r9d, r10d
	add	edx, eax
	movzx	eax, WORD PTR 8[rbx]
	sal	edx, 3
	sal	eax, 5
	add	eax, r10d
	mov	r10, QWORD PTR .refptr.gCamera[rip]
	sal	eax, 3
	sub	ax, WORD PTR [r10]
	sub	dx, WORD PTR 4[r10]
	mov	WORD PTR 54[rbx], ax
	sub	ax, -128
	cmp	ax, 682
	mov	WORD PTR 56[rbx], dx
	seta	al
	cmp	dx, -128
	setl	r10b
	or	al, r10b
	jne	.L9
	cmp	dx, 368
	jle	.L4
.L9:
	mov	BYTE PTR [r8], r9b
	movups	xmm6, XMMWORD PTR 48[rsp]
	movups	xmm7, XMMWORD PTR 64[rsp]
	add	rsp, 88
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
.L4:
	lea	rcx, 16[rbx]
	xor	r13d, r13d
	call	DisplaySprite
	lea	rax, 144[rbx]
	movd	xmm7, DWORD PTR 54[rbx]
	mov	r12, QWORD PTR .refptr.gStageTime[rip]
	mov	QWORD PTR 40[rsp], rax
	mov	rdi, QWORD PTR .refptr.gSineTable[rip]
	movd	xmm6, DWORD PTR .LC0[rip]
	mov	rsi, QWORD PTR .refptr.gOamMatrixIndex[rip]
.L6:
	mov	ebp, r13d
	mov	r14, QWORD PTR 40[rsp]
	mov	r15d, 8
	sal	ebp, 6
.L7:
	mov	eax, DWORD PTR [r12]
	lea	rbx, -64[r14]
	movd	DWORD PTR 2[r14], xmm6
	mov	rcx, rbx
	lea	eax, 0[rbp+rax*2]
	mov	edx, eax
	and	eax, 1022
	lea	r8d, 256[rax]
	movsx	eax, WORD PTR [rdi+rax*2]
	and	dx, 1023
	movsx	r8, r8d
	mov	WORD PTR [r14], dx
	movsx	r8d, WORD PTR [rdi+r8*2]
	imul	eax, r15d
	imul	r8d, r15d
	add	r15d, 16
	sar	eax, 14
	sal	eax, 16
	sar	r8d, 14
	movzx	r8d, r8w
	or	eax, r8d
	movd	xmm0, eax
	movzx	eax, BYTE PTR [rsi]
	paddw	xmm0, xmm7
	lea	edx, 1[rax]
	or	eax, 4192
	mov	DWORD PTR -32[r14], eax
	movd	DWORD PTR -26[r14], xmm0
	movd	DWORD PTR 6[r14], xmm0
	mov	BYTE PTR [rsi], dl
	mov	rdx, r14
	add	r14, 80
	call	TransformSprite
	mov	rcx, rbx
	call	DisplaySprite
	cmp	r15d, 72
	jne	.L7
	add	QWORD PTR 40[rsp], 320
	add	r13d, 4
	cmp	r13d, 16
	jne	.L6
	movups	xmm6, XMMWORD PTR 48[rsp]
	movups	xmm7, XMMWORD PTR 64[rsp]
	add	rsp, 88
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Windmill
	.def	CreateEntity_Windmill;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Windmill
CreateEntity_Windmill:
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
	sub	rsp, 80
	.seh_stackalloc	80
	.seh_endprologue
	lea	rax, TaskDestructor_Windmill[rip]
	lea	r13, sWindmillParts[rip+32]
	mov	QWORD PTR 32[rsp], rax
	mov	rdi, rcx
	mov	ebx, edx
	mov	esi, r8d
	mov	r12d, r9d
	mov	r8d, 8208
	xor	r9d, r9d
	mov	edx, 1360
	lea	rcx, Task_WindmillMain[rip]
	lea	r14, 48[rsp]
	call	TaskCreate
	mov	ecx, r12d
	xor	r12d, r12d
	mov	rbp, QWORD PTR 24[rax]
	mov	WORD PTR 10[rbp], si
	movzx	esi, si
	mov	WORD PTR 8[rbp], bx
	sal	esi, 5
	mov	QWORD PTR 0[rbp], rdi
	movzx	edx, BYTE PTR [rdi]
	movzx	eax, dl
	mov	ah, cl
	mov	ecx, 4
	mov	WORD PTR 12[rbp], ax
	movzx	eax, bx
	sal	eax, 5
	add	eax, edx
	sal	eax, 3
	mov	WORD PTR 54[rbp], ax
	movzx	eax, BYTE PTR 1[rdi]
	add	eax, esi
	sal	eax, 3
	mov	WORD PTR 56[rbp], ax
	mov	BYTE PTR [rdi], -2
	call	VramMalloc
	xor	r9d, r9d
	mov	BYTE PTR 66[rbp], 16
	lea	rcx, 16[rbp]
	mov	r10d, -250
	mov	QWORD PTR 24[rbp], rax
	add	rbp, 80
	mov	DWORD PTR -48[rbp], 36765696
	mov	WORD PTR -28[rbp], r9w
	mov	DWORD PTR -22[rbp], 1152
	mov	WORD PTR -16[rbp], r10w
	mov	BYTE PTR -11[rbp], 0
	mov	DWORD PTR -8[rbp], -1
	mov	DWORD PTR -32[rbp], 8192
	call	UpdateSpriteAnimation
.L12:
	lea	rsi, sWindmillParts[rip]
	mov	rdi, r14
	mov	rbx, rbp
.L15:
	mov	DWORD PTR 38[rbx], 0
	test	r12, r12
	je	.L18
	mov	rax, QWORD PTR [rdi]
	mov	QWORD PTR 8[rbx], rax
.L14:
	movzx	eax, WORD PTR 4[rsi]
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	add	rsi, 8
	add	rdi, 8
	mov	WORD PTR 18[rbx], ax
	movzx	eax, BYTE PTR -2[rsi]
	mov	WORD PTR 36[rbx], cx
	mov	rcx, rbx
	add	rbx, 80
	mov	BYTE PTR -32[rbx], al
	mov	eax, 1152
	mov	WORD PTR -38[rbx], ax
	mov	WORD PTR -64[rbx], dx
	mov	WORD PTR -36[rbx], r8w
	mov	BYTE PTR -31[rbx], -1
	mov	BYTE PTR -30[rbx], 16
	mov	BYTE PTR -27[rbx], 0
	mov	DWORD PTR -24[rbx], -1
	mov	DWORD PTR -48[rbx], 0
	call	UpdateSpriteAnimation
	cmp	r13, rsi
	jne	.L15
	add	r12, 1
	add	rbp, 320
	cmp	r12, 4
	jne	.L12
	add	rsp, 80
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
	.p2align 4,,10
	.p2align 3
.L18:
	mov	ecx, DWORD PTR [rsi]
	call	VramMalloc
	mov	QWORD PTR 8[rbx], rax
	mov	QWORD PTR [rdi], rax
	jmp	.L14
	.seh_endproc
	.section .rdata,"dr"
	.align 32
sWindmillParts:
	.long	4
	.word	561
	.byte	3
	.space 1
	.long	4
	.word	561
	.byte	2
	.space 1
	.long	4
	.word	561
	.byte	1
	.space 1
	.long	4
	.word	561
	.byte	0
	.space 1
	.long	4
	.word	561
	.byte	6
	.space 1
	.align 4
.LC0:
	.word	256
	.word	256
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TransformSprite;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gOamMatrixIndex, "dr"
	.globl	.refptr.gOamMatrixIndex
	.linkonce	discard
.refptr.gOamMatrixIndex:
	.quad	gOamMatrixIndex
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
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
