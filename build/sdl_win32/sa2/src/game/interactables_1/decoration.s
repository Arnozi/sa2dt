	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_Decoration
	.def	Task_Decoration;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_Decoration
Task_Decoration:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r9, QWORD PTR [rax]
	mov	rcx, QWORD PTR 24[r9]
	movzx	eax, WORD PTR 8[rcx]
	movzx	edx, BYTE PTR 12[rcx]
	mov	r10, QWORD PTR [rcx]
	sal	eax, 8
	mov	r11d, edx
	lea	eax, [rax+rdx*8]
	movzx	edx, WORD PTR 10[rcx]
	movzx	r8d, BYTE PTR 1[r10]
	sal	edx, 8
	lea	edx, [rdx+r8*8]
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	sub	eax, DWORD PTR [r8]
	sub	edx, DWORD PTR 4[r8]
	mov	WORD PTR 54[rcx], ax
	sub	ax, -128
	mov	WORD PTR 56[rcx], dx
	cmp	ax, 682
	ja	.L4
	sub	dx, -128
	cmp	dx, 496
	jbe	.L2
.L4:
	mov	rcx, r9
	mov	BYTE PTR [r10], r11b
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L2:
	lea	rbx, 16[rcx]
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	TaskDestructor_Decoration
	.def	TaskDestructor_Decoration;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_Decoration
TaskDestructor_Decoration:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Decoration
	.def	CreateEntity_Decoration;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Decoration
CreateEntity_Decoration:
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
	cmp	BYTE PTR 3[rcx], 0
	mov	rsi, rcx
	mov	r12d, edx
	mov	edi, r8d
	mov	ebp, r9d
	js	.L7
	lea	rax, TaskDestructor_Decoration[rip]
	xor	r9d, r9d
	mov	r8d, 8208
	mov	edx, 80
	mov	QWORD PTR 32[rsp], rax
	lea	rcx, Task_Decoration[rip]
	call	TaskCreate
	mov	ecx, ebp
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 10[rbx], di
	movzx	edi, di
	mov	WORD PTR 8[rbx], r12w
	sal	edi, 5
	mov	QWORD PTR [rbx], rsi
	movzx	edx, BYTE PTR [rsi]
	movzx	eax, dl
	mov	ah, cl
	mov	WORD PTR 12[rbx], ax
	movzx	eax, r12w
	sal	eax, 5
	add	eax, edx
	sal	eax, 3
	mov	WORD PTR 54[rbx], ax
	movzx	eax, BYTE PTR 1[rsi]
	add	eax, edi
	lea	rdi, sDecoTileAnimInfo[rip]
	sal	eax, 3
	mov	WORD PTR 56[rbx], ax
	movsx	rax, BYTE PTR 3[rsi]
	mov	BYTE PTR [rsi], -2
	mov	ecx, DWORD PTR [rdi+rax*8]
	call	VramMalloc
	mov	ecx, 4351
	mov	QWORD PTR 24[rbx], rax
	movsx	rax, BYTE PTR 3[rsi]
	mov	DWORD PTR 58[rbx], 1792
	movzx	edx, WORD PTR 4[rdi+rax*8]
	movzx	eax, BYTE PTR 6[rdi+rax*8]
	mov	WORD PTR 65[rbx], cx
	mov	BYTE PTR 69[rbx], 0
	mov	WORD PTR 34[rbx], dx
	xor	edx, edx
	mov	BYTE PTR 64[rbx], al
	xor	eax, eax
	mov	WORD PTR 32[rbx], ax
	mov	WORD PTR 52[rbx], dx
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 8192
.L7:
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 32
sDecoTileAnimInfo:
	.long	2
	.word	550
	.byte	0
	.space 1
	.long	4
	.word	549
	.byte	0
	.space 1
	.long	2
	.word	548
	.byte	0
	.space 1
	.long	4
	.word	547
	.byte	0
	.space 1
	.long	14
	.word	551
	.byte	0
	.space 1
	.long	0
	.word	552
	.byte	0
	.space 1
	.long	12
	.word	560
	.byte	0
	.space 1
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
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
