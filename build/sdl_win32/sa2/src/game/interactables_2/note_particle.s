	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_8080EF8;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_8080EF8
TaskDestructor_8080EF8:
	.seh_endprologue
	mov	rdx, QWORD PTR 24[rcx]
	movzx	eax, BYTE PTR 88[rdx]
	lea	rcx, [rax+rax*4]
	lea	rax, gUnknown_080E0140[rip]
	cmp	WORD PTR 6[rax+rcx*2], 0
	jne	.L4
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	mov	rcx, QWORD PTR 8[rdx]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	Task_8080DB8;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_8080DB8
Task_8080DB8:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rcx]
	movzx	eax, WORD PTR 86[rbx]
	sub	eax, 1
	mov	WORD PTR 86[rbx], ax
	cmp	ax, -1
	je	.L8
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	movsx	edx, WORD PTR 80[rbx]
	add	edx, DWORD PTR 72[rbx]
	mov	ecx, DWORD PTR 64[rbx]
	sub	cx, WORD PTR [r8]
	movsx	eax, WORD PTR 82[rbx]
	mov	DWORD PTR 72[rbx], edx
	sar	edx, 8
	add	eax, DWORD PTR 76[rbx]
	add	edx, ecx
	mov	rcx, rbx
	mov	DWORD PTR 76[rbx], eax
	sar	eax, 8
	mov	WORD PTR 38[rbx], dx
	mov	edx, DWORD PTR 68[rbx]
	sub	dx, WORD PTR 4[r8]
	add	eax, edx
	mov	WORD PTR 40[rbx], ax
	call	UpdateSpriteAnimation
	movzx	eax, WORD PTR 84[rbx]
	test	ax, ax
	je	.L9
	sub	eax, 1
	mov	WORD PTR 84[rbx], ax
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L8:
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.def	Task_8080E54;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_8080E54
Task_8080E54:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rcx]
	movzx	eax, WORD PTR 86[rbx]
	sub	eax, 1
	mov	WORD PTR 86[rbx], ax
	cmp	ax, -1
	je	.L13
	movsx	eax, WORD PTR 82[rbx]
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	movsx	edx, WORD PTR 80[rbx]
	add	edx, DWORD PTR 72[rbx]
	mov	ecx, eax
	mov	DWORD PTR 72[rbx], edx
	sar	edx, 8
	add	eax, DWORD PTR 76[rbx]
	add	ecx, 42
	mov	DWORD PTR 76[rbx], eax
	sar	eax, 8
	mov	WORD PTR 82[rbx], cx
	mov	ecx, DWORD PTR 64[rbx]
	sub	cx, WORD PTR [r8]
	add	edx, ecx
	mov	rcx, rbx
	mov	WORD PTR 38[rbx], dx
	mov	edx, DWORD PTR 68[rbx]
	sub	dx, WORD PTR 4[r8]
	add	eax, edx
	mov	WORD PTR 40[rbx], ax
	call	UpdateSpriteAnimation
	movzx	eax, WORD PTR 84[rbx]
	test	ax, ax
	je	.L14
	sub	eax, 1
	mov	WORD PTR 84[rbx], ax
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L14:
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L13:
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.globl	CreateAngledNoteParticle
	.def	CreateAngledNoteParticle;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateAngledNoteParticle
CreateAngledNoteParticle:
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
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	lea	rax, TaskDestructor_8080EF8[rip]
	mov	r12d, DWORD PTR 168[rsp]
	mov	esi, DWORD PTR 176[rsp]
	mov	r15d, DWORD PTR 160[rsp]
	movzx	r12d, r12b
	mov	QWORD PTR 32[rsp], rax
	mov	edi, r9d
	mov	r14d, ecx
	mov	r13d, edx
	mov	ebp, r8d
	xor	r9d, r9d
	mov	edx, 96
	mov	r8d, 8208
	lea	rcx, Task_8080DB8[rip]
	call	TaskCreate
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	movsx	ecx, r15w
	lea	edx, 256[0+r12*4]
	mov	rbx, QWORD PTR 24[rax]
	movsx	rax, edx
	sub	edx, 256
	movzx	eax, WORD PTR [r8+rax*2]
	movsx	rdx, edx
	mov	BYTE PTR 88[rbx], sil
	movzx	esi, sil
	sar	ax, 6
	mov	WORD PTR 86[rbx], di
	lea	rdi, gUnknown_080E0140[rip]
	cwde
	mov	DWORD PTR 64[rbx], r14d
	imul	eax, ecx
	mov	DWORD PTR 68[rbx], r13d
	mov	QWORD PTR 72[rbx], 0
	mov	WORD PTR 84[rbx], bp
	sar	eax, 8
	mov	DWORD PTR 42[rbx], 384
	mov	WORD PTR 80[rbx], ax
	movzx	eax, WORD PTR [r8+rdx*2]
	xor	edx, edx
	mov	WORD PTR 36[rbx], dx
	sar	ax, 6
	mov	BYTE PTR 53[rbx], 0
	cwde
	mov	DWORD PTR 56[rbx], -1
	imul	eax, ecx
	mov	ecx, 4351
	mov	WORD PTR 49[rbx], cx
	sar	eax, 8
	mov	WORD PTR 82[rbx], ax
	xor	eax, eax
	mov	WORD PTR 16[rbx], ax
	lea	rax, [rsi+rsi*4]
	lea	rax, [rdi+rax*2]
	movzx	edx, WORD PTR 8[rax]
	sal	edx, 12
	cmp	WORD PTR 6[rax], 0
	mov	DWORD PTR 32[rbx], edx
	jne	.L18
	movzx	eax, WORD PTR 4[rax]
	mov	rdx, QWORD PTR .refptr.VRAM[rip]
	sal	eax, 5
	cdqe
	lea	rax, 65536[rax+rdx]
.L17:
	mov	QWORD PTR 8[rbx], rax
	lea	rax, [rsi+rsi*4]
	mov	rcx, rbx
	lea	rax, [rdi+rax*2]
	movzx	edx, WORD PTR [rax]
	movzx	eax, WORD PTR 2[rax]
	mov	WORD PTR 18[rbx], dx
	mov	BYTE PTR 48[rbx], al
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	UpdateSpriteAnimation
	.p2align 4,,10
	.p2align 3
.L18:
	movzx	ecx, WORD PTR 4[rax]
	call	VramMalloc
	jmp	.L17
	.seh_endproc
	.p2align 4
	.globl	CreateNoteParticle
	.def	CreateNoteParticle;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateNoteParticle
CreateNoteParticle:
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
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	lea	rax, TaskDestructor_8080EF8[rip]
	mov	esi, DWORD PTR 176[rsp]
	mov	r15d, DWORD PTR 160[rsp]
	mov	r14d, DWORD PTR 168[rsp]
	mov	QWORD PTR 32[rsp], rax
	mov	edi, r9d
	mov	r13d, ecx
	mov	r12d, edx
	mov	ebp, r8d
	xor	r9d, r9d
	mov	edx, 96
	mov	r8d, 8208
	lea	rcx, Task_8080E54[rip]
	call	TaskCreate
	xor	edx, edx
	mov	ecx, 4351
	mov	rbx, QWORD PTR 24[rax]
	xor	eax, eax
	mov	BYTE PTR 88[rbx], sil
	movzx	esi, sil
	mov	WORD PTR 86[rbx], di
	lea	rdi, gUnknown_080E0140[rip]
	mov	WORD PTR 16[rbx], ax
	lea	rax, [rsi+rsi*4]
	lea	rax, [rdi+rax*2]
	mov	WORD PTR 36[rbx], dx
	movzx	edx, WORD PTR 8[rax]
	mov	DWORD PTR 64[rbx], r13d
	mov	DWORD PTR 68[rbx], r12d
	sal	edx, 12
	cmp	WORD PTR 6[rax], 0
	mov	WORD PTR 80[rbx], r15w
	mov	QWORD PTR 72[rbx], 0
	mov	WORD PTR 82[rbx], r14w
	mov	WORD PTR 84[rbx], bp
	mov	DWORD PTR 42[rbx], 384
	mov	WORD PTR 49[rbx], cx
	mov	BYTE PTR 53[rbx], 0
	mov	DWORD PTR 56[rbx], -1
	mov	DWORD PTR 32[rbx], edx
	jne	.L22
	movzx	eax, WORD PTR 4[rax]
	mov	rdx, QWORD PTR .refptr.VRAM[rip]
	sal	eax, 5
	cdqe
	lea	rax, 65536[rax+rdx]
.L21:
	mov	QWORD PTR 8[rbx], rax
	lea	rax, [rsi+rsi*4]
	lea	rax, [rdi+rax*2]
	movzx	edx, WORD PTR [rax]
	movzx	eax, WORD PTR 2[rax]
	mov	WORD PTR 18[rbx], dx
	mov	BYTE PTR 48[rbx], al
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.p2align 4,,10
	.p2align 3
.L22:
	movzx	ecx, WORD PTR 4[rax]
	call	VramMalloc
	jmp	.L21
	.seh_endproc
	.section .rdata,"dr"
	.align 4
gUnknown_080E0140:
	.word	576
	.word	0
	.word	441
	.word	0
	.word	6
	.word	576
	.word	1
	.word	443
	.word	0
	.word	6
	.word	577
	.word	0
	.word	4
	.word	1
	.word	6
	.word	578
	.word	0
	.word	6
	.word	1
	.word	2
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
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
