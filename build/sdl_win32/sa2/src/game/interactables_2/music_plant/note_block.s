	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_NoteBlock;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_NoteBlock
TaskDestructor_NoteBlock:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.def	Task_Idle;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Idle
Task_Idle:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	ecx, DWORD PTR 80[rbx]
	mov	edx, DWORD PTR 84[rbx]
	test	BYTE PTR 36[rax], -128
	jne	.L4
	cmp	BYTE PTR 95[rbx], 0
	jne	.L15
.L4:
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	r8d, ecx
	mov	r9d, DWORD PTR [rax]
	mov	eax, DWORD PTR 4[rax]
	sub	r8d, r9d
	sub	r8d, -128
	cmp	r8d, 682
	ja	.L6
	mov	r8d, edx
	sub	r8d, eax
	sub	r8d, -128
	cmp	r8d, 496
	ja	.L6
	sal	eax, 16
	movd	xmm0, DWORD PTR 88[rbx]
	movzx	r9d, r9w
	sal	edx, 16
	or	eax, r9d
	movzx	ecx, cx
	psraw	xmm0, 8
	movd	xmm1, eax
	or	edx, ecx
	cmp	BYTE PTR 95[rbx], 0
	psubw	xmm0, xmm1
	movd	xmm2, edx
	paddw	xmm0, xmm2
	movd	DWORD PTR 54[rbx], xmm0
	jne	.L16
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	mov	rax, QWORD PTR [rbx]
	movzx	edx, BYTE PTR 12[rbx]
	mov	BYTE PTR [rax], dl
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L15:
	mov	r8d, DWORD PTR 12[rax]
	mov	r9d, DWORD PTR 16[rax]
	sar	r8d, 8
	sar	r9d, 8
	add	r8d, 16
	add	r9d, 24
	sub	r8d, ecx
	cmp	r8w, 32
	ja	.L4
	sub	r9d, edx
	cmp	r9w, 24
	ja	.L4
	movzx	r8d, BYTE PTR 92[rbx]
	lea	rdi, sBounceSpeeds[rip]
	mov	BYTE PTR 93[rbx], -64
	mov	BYTE PTR 117[rax], 5
	movzx	r8d, WORD PTR [rdi+r8*2]
	mov	DWORD PTR 108[rax], -65479
	mov	BYTE PTR 94[rbx], 0
	mov	r9d, r8d
	neg	r9d
	mov	WORD PTR 22[rax], r9w
	movsx	eax, r8w
	sar	r8w, 3
	mov	r9d, 30
	lea	eax, [rax+rax*2]
	movsx	r8d, r8w
	mov	DWORD PTR 48[rsp], 0
	sal	eax, 14
	mov	DWORD PTR 32[rsp], r8d
	mov	r8d, 5
	neg	eax
	sar	eax, 16
	mov	DWORD PTR 40[rsp], eax
	call	CreateNoteParticle
	movzx	eax, BYTE PTR 92[rbx]
	mov	r10d, DWORD PTR 84[rbx]
	mov	r9d, 30
	mov	ecx, DWORD PTR 80[rbx]
	mov	DWORD PTR 48[rsp], 1
	mov	r8d, 5
	movsx	eax, WORD PTR [rdi+rax*2]
	lea	edx, [rax+rax*2]
	neg	eax
	sal	edx, 14
	sar	eax, 3
	neg	edx
	mov	DWORD PTR 32[rsp], eax
	sar	edx, 16
	mov	DWORD PTR 40[rsp], edx
	mov	edx, r10d
	call	CreateNoteParticle
	movzx	eax, BYTE PTR 95[rbx]
	sub	eax, 1
	mov	BYTE PTR 95[rbx], al
	cmp	al, 1
	je	.L17
.L5:
	movzx	edx, BYTE PTR 92[rbx]
	lea	rax, sSfxGlockenspiel[rip]
	lea	rdi, Task_Bounce[rip]
	movzx	ecx, WORD PTR [rax+rdx*2]
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rsi]
	mov	ecx, DWORD PTR 80[rbx]
	mov	edx, DWORD PTR 84[rbx]
	mov	QWORD PTR 40[rax], rdi
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L16:
	or	DWORD PTR 48[rbx], 1024
	lea	rsi, 16[rbx]
	mov	rcx, rsi
	call	DisplaySprite
	and	DWORD PTR 48[rbx], -1025
	mov	rcx, rsi
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L17:
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	BYTE PTR 64[rbx], 6
	lea	rcx, 16[rbx]
	add	rax, 77952
	mov	QWORD PTR 24[rbx], rax
	mov	eax, 575
	mov	WORD PTR 34[rbx], ax
	call	UpdateSpriteAnimation
	jmp	.L5
	.seh_endproc
	.p2align 4
	.def	Task_Bounce;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Bounce
Task_Bounce:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rcx]
	movzx	eax, BYTE PTR 94[rbx]
	lea	edx, 1[rax]
	mov	BYTE PTR 94[rbx], dl
	movzx	edx, BYTE PTR 95[rbx]
	test	al, al
	je	.L19
	cmp	al, 4
	jne	.L24
	mov	DWORD PTR 88[rbx], 0
	test	dl, dl
	je	.L25
	lea	rax, Task_Idle[rip]
	pxor	xmm1, xmm1
	mov	QWORD PTR 40[rcx], rax
.L21:
	movzx	eax, WORD PTR 84[rbx]
	movzx	ecx, WORD PTR 80[rbx]
	sal	eax, 16
	or	eax, ecx
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	movd	xmm0, eax
	movzx	eax, WORD PTR 4[rcx]
	movzx	ecx, WORD PTR [rcx]
	sal	eax, 16
	or	eax, ecx
	movd	xmm2, eax
	psubw	xmm0, xmm2
	paddw	xmm0, xmm1
	movd	DWORD PTR 54[rbx], xmm0
	test	dl, dl
	jne	.L26
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L24:
	movd	xmm1, DWORD PTR 88[rbx]
	psraw	xmm1, 8
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L19:
	movzx	eax, BYTE PTR 93[rbx]
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	lea	eax, 256[0+rax*4]
	movsx	r8, eax
	sub	eax, 256
	cdqe
	movzx	eax, WORD PTR [rcx+rax*2]
	movzx	ecx, WORD PTR [rcx+r8*2]
	sal	eax, 16
	or	eax, ecx
	movd	xmm0, eax
	psraw	xmm0, 6
	psllw	xmm0, 2
	movdqu	xmm1, xmm0
	movd	DWORD PTR 88[rbx], xmm0
	psraw	xmm1, 8
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L26:
	or	DWORD PTR 48[rbx], 1024
	lea	rsi, 16[rbx]
	mov	rcx, rsi
	call	DisplaySprite
	and	DWORD PTR 48[rbx], -1025
	mov	rcx, rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L25:
	mov	rax, QWORD PTR [rbx]
	movzx	edx, BYTE PTR 12[rbx]
	mov	BYTE PTR [rax], dl
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_NoteBlock
	.def	CreateEntity_NoteBlock;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_NoteBlock
CreateEntity_NoteBlock:
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
	lea	rax, TaskDestructor_NoteBlock[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rdi, rcx
	mov	ebx, edx
	mov	esi, r8d
	mov	ebp, r9d
	mov	r8d, 8208
	xor	r9d, r9d
	mov	edx, 96
	lea	rcx, Task_Idle[rip]
	call	TaskCreate
	mov	edx, ebp
	mov	r9, QWORD PTR .refptr.VRAM[rip]
	mov	rcx, QWORD PTR 24[rax]
	mov	BYTE PTR 95[rcx], 3
	movzx	r10d, BYTE PTR 3[rdi]
	add	rcx, 16
	mov	WORD PTR -8[rcx], bx
	movzx	ebx, bx
	mov	WORD PTR -6[rcx], si
	sal	ebx, 5
	movzx	esi, si
	mov	DWORD PTR 72[rcx], 0
	sal	esi, 5
	mov	BYTE PTR 76[rcx], r10b
	mov	QWORD PTR -16[rcx], rdi
	movzx	r11d, BYTE PTR [rdi]
	mov	DWORD PTR 42[rcx], 1152
	movzx	r8d, r11b
	mov	BYTE PTR 53[rcx], 0
	mov	eax, r8d
	mov	r8d, 4351
	mov	DWORD PTR 56[rcx], -1
	mov	ah, dl
	mov	WORD PTR 49[rcx], r8w
	xor	edx, edx
	mov	WORD PTR -4[rcx], ax
	xor	eax, eax
	mov	WORD PTR 16[rcx], ax
	movzx	eax, r10b
	lea	r8, [rax+rax*2]
	lea	rax, sAnims[rip]
	mov	WORD PTR 36[rcx], dx
	movzx	edx, r11b
	lea	r8, [rax+r8*2]
	add	ebx, edx
	mov	DWORD PTR 32[rcx], 8192
	movzx	eax, WORD PTR 4[r8]
	sal	ebx, 3
	mov	DWORD PTR 64[rcx], ebx
	sal	eax, 5
	cdqe
	lea	rax, 65536[rax+r9]
	mov	QWORD PTR 8[rcx], rax
	movzx	eax, WORD PTR [r8]
	mov	WORD PTR 18[rcx], ax
	movzx	eax, WORD PTR 2[r8]
	mov	BYTE PTR 48[rcx], al
	movzx	eax, BYTE PTR 1[rdi]
	add	eax, esi
	sal	eax, 3
	mov	DWORD PTR 68[rcx], eax
	mov	BYTE PTR [rdi], -2
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.globl	sSfxGlockenspiel
	.section .rdata,"dr"
	.align 16
sSfxGlockenspiel:
	.word	313
	.word	314
	.word	315
	.word	316
	.word	317
	.word	318
	.word	318
	.word	0
	.align 8
sBounceSpeeds:
	.word	1152
	.word	1248
	.word	1344
	.word	1440
	.word	1536
	.word	1632
	.word	0
	.align 32
sAnims:
	.word	575
	.word	0
	.word	364
	.word	575
	.word	1
	.word	368
	.word	575
	.word	2
	.word	372
	.word	575
	.word	3
	.word	376
	.word	575
	.word	4
	.word	380
	.word	575
	.word	5
	.word	384
	.word	575
	.word	6
	.word	388
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	CreateNoteParticle;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
