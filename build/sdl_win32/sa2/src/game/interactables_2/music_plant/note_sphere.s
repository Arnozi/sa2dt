	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_Interactable_MusicPlant_Note_Sphere;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_Interactable_MusicPlant_Note_Sphere
TaskDestructor_Interactable_MusicPlant_Note_Sphere:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.def	Task_Idle;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Idle
Task_Idle:
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
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rbp, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	mov	r8d, DWORD PTR 80[rbx]
	mov	edx, DWORD PTR 84[rbx]
	test	BYTE PTR 36[rbp], -128
	jne	.L4
	mov	ecx, DWORD PTR 12[rbp]
	mov	eax, r8d
	mov	r11d, edx
	sar	ecx, 8
	sub	eax, ecx
	mov	r9d, eax
	neg	r9d
	cmovs	r9d, eax
	mov	eax, DWORD PTR 16[rbp]
	sar	eax, 8
	sub	r11d, eax
	mov	r10d, r11d
	neg	r10d
	cmovs	r10d, r11d
	mov	r11d, r9d
	cmp	r10w, r9w
	cmovge	r11d, r10d
	cmp	r11w, 24
	jle	.L8
.L4:
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	lea	ecx, 128[r8]
	lea	r10d, 128[rdx]
	mov	r9d, DWORD PTR [rax]
	mov	eax, DWORD PTR 4[rax]
	sub	ecx, r9d
	cmp	cx, 682
	ja	.L7
	sub	r10d, eax
	cmp	r10w, 496
	ja	.L7
	movd	xmm0, DWORD PTR 88[rbx]
	movzx	r9d, r9w
	sal	eax, 16
	movzx	r8d, r8w
	or	eax, r9d
	sal	edx, 16
	or	DWORD PTR 48[rbx], 1024
	lea	rsi, 16[rbx]
	movd	xmm1, eax
	psraw	xmm0, 8
	or	edx, r8d
	mov	rcx, rsi
	psubw	xmm0, xmm1
	movd	xmm2, edx
	paddw	xmm0, xmm2
	movd	DWORD PTR 54[rbx], xmm0
	call	DisplaySprite
	and	DWORD PTR 48[rbx], -1025
	mov	rcx, rsi
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L7:
	mov	rax, QWORD PTR [rbx]
	movzx	edx, BYTE PTR 12[rbx]
	mov	BYTE PTR [rax], dl
	mov	rcx, QWORD PTR [rdi]
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L8:
	movsx	r9d, r9w
	movsx	r10d, r10w
	imul	r9d, r9d
	imul	r10d, r10d
	add	r9d, r10d
	cmp	r9d, 576
	jg	.L4
	sub	ecx, r8d
	sub	eax, edx
	movsx	r12d, ax
	movsx	esi, cx
	mov	edx, r12d
	mov	ecx, esi
	call	sub_8085530
	movzx	ecx, ax
	mov	eax, r12d
	sal	eax, 14
	cdq
	idiv	ecx
	movsx	r12d, ax
	mov	eax, esi
	sal	eax, 14
	cdq
	idiv	ecx
	mov	edx, r12d
	movsx	ecx, ax
	call	ArcTan2
	movzx	r13d, WORD PTR 22[rbp]
	movzx	esi, WORD PTR 20[rbp]
	shr	ax, 8
	neg	r13d
	neg	esi
	mov	BYTE PTR 93[rbx], al
	mov	r12d, eax
	movsx	r13d, r13w
	movsx	esi, si
	mov	edx, r13d
	mov	ecx, esi
	call	sub_8085530
	movzx	ecx, ax
	mov	eax, r13d
	sal	eax, 8
	cdq
	idiv	ecx
	sal	eax, 6
	movsx	r13d, ax
	mov	eax, esi
	lea	rsi, sNoteSphereVelocities[rip]
	sal	eax, 8
	cdq
	idiv	ecx
	mov	edx, r13d
	sal	eax, 6
	movsx	ecx, ax
	call	ArcTan2
	movzx	edx, r12w
	mov	r8d, 8
	mov	r13d, eax
	movzx	ecx, ah
	call	sub_808558C
	shr	r13w, 8
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	movzx	edx, BYTE PTR 92[rbx]
	lea	eax, 0[r13+rax*2]
	mov	BYTE PTR 117[rbp], 5
	mov	r11d, DWORD PTR 84[rbx]
	movzx	eax, al
	movsx	ecx, WORD PTR [rsi+rdx*2]
	mov	r10d, DWORD PTR 80[rbx]
	mov	BYTE PTR 93[rbx], r12b
	lea	r8d, 256[0+rax*4]
	mov	BYTE PTR 94[rbx], 0
	movsx	rax, r8d
	sub	r8d, 256
	mov	edx, ecx
	movzx	eax, WORD PTR [r9+rax*2]
	movsx	r8, r8d
	sar	ax, 6
	cwde
	imul	eax, ecx
	sar	eax, 8
	mov	WORD PTR 20[rbp], ax
	movzx	eax, WORD PTR [r9+r8*2]
	mov	r9d, 30
	mov	r8d, 5
	sar	ax, 6
	cwde
	imul	eax, ecx
	sar	eax, 8
	mov	WORD PTR 22[rbp], ax
	mov	eax, DWORD PTR 36[rbp]
	and	eax, -259
	sar	dx, 3
	or	eax, 2
	movsx	edx, dx
	mov	DWORD PTR 36[rbp], eax
	lea	eax, [rcx+rcx*2]
	mov	ecx, r10d
	sal	eax, 14
	mov	DWORD PTR 32[rsp], edx
	mov	edx, r11d
	neg	eax
	mov	DWORD PTR 48[rsp], 0
	sar	eax, 16
	mov	DWORD PTR 40[rsp], eax
	call	CreateNoteParticle
	movzx	eax, BYTE PTR 92[rbx]
	mov	r10d, DWORD PTR 84[rbx]
	mov	r8d, 5
	mov	ecx, DWORD PTR 80[rbx]
	mov	DWORD PTR 48[rsp], 1
	mov	r9d, 30
	movsx	eax, WORD PTR [rsi+rax*2]
	lea	rsi, Task_Vibrate[rip]
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
	movzx	edx, BYTE PTR 92[rbx]
	lea	rax, sNoteSphereSfx[rip]
	movzx	ecx, WORD PTR [rax+rdx*2]
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rdi]
	mov	r8d, DWORD PTR 80[rbx]
	mov	edx, DWORD PTR 84[rbx]
	mov	QWORD PTR 40[rax], rsi
	jmp	.L4
	.seh_endproc
	.p2align 4
	.def	Task_Vibrate;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Vibrate
Task_Vibrate:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rdx]
	movzx	eax, BYTE PTR 94[rbx]
	lea	ecx, 1[rax]
	mov	BYTE PTR 94[rbx], cl
	cmp	al, 4
	je	.L10
	cmp	al, 6
	je	.L11
	test	al, al
	je	.L12
	movd	xmm1, DWORD PTR 88[rbx]
	psraw	xmm1, 8
.L13:
	movzx	eax, WORD PTR 84[rbx]
	movzx	edx, WORD PTR 80[rbx]
	lea	rsi, 16[rbx]
	or	DWORD PTR 48[rbx], 1024
	mov	rcx, rsi
	sal	eax, 16
	or	eax, edx
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	movd	xmm0, eax
	movzx	eax, WORD PTR 4[rdx]
	movzx	edx, WORD PTR [rdx]
	sal	eax, 16
	or	eax, edx
	movd	xmm2, eax
	psubw	xmm0, xmm2
	paddw	xmm0, xmm1
	movd	DWORD PTR 54[rbx], xmm0
	call	DisplaySprite
	and	DWORD PTR 48[rbx], -1025
	mov	rcx, rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L11:
	lea	rax, Task_Idle[rip]
	mov	DWORD PTR 88[rbx], 0
	pxor	xmm1, xmm1
	mov	QWORD PTR 40[rdx], rax
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L10:
	movzx	eax, BYTE PTR 93[rbx]
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	pxor	xmm1, xmm1
	lea	eax, 256[0+rax*4]
	movsx	rcx, eax
	sub	eax, 256
	cdqe
	movzx	eax, WORD PTR [rdx+rax*2]
	movzx	edx, WORD PTR [rdx+rcx*2]
	sal	eax, 16
	or	eax, edx
	movd	xmm0, eax
	psraw	xmm0, 6
	psubw	xmm1, xmm0
	psllw	xmm1, 2
	movdqu	xmm0, xmm1
	psraw	xmm1, 8
	movd	DWORD PTR 88[rbx], xmm0
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L12:
	movzx	eax, BYTE PTR 93[rbx]
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	lea	eax, 256[0+rax*4]
	movsx	rcx, eax
	sub	eax, 256
	cdqe
	movzx	eax, WORD PTR [rdx+rax*2]
	movzx	edx, WORD PTR [rdx+rcx*2]
	sal	eax, 16
	or	eax, edx
	movd	xmm0, eax
	psraw	xmm0, 6
	psllw	xmm0, 3
	movdqu	xmm1, xmm0
	movd	DWORD PTR 88[rbx], xmm0
	psraw	xmm1, 8
	jmp	.L13
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_NoteSphere
	.def	CreateEntity_NoteSphere;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_NoteSphere
CreateEntity_NoteSphere:
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
	lea	rax, TaskDestructor_Interactable_MusicPlant_Note_Sphere[rip]
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
	movzx	r10d, BYTE PTR 3[rdi]
	mov	edx, ebp
	mov	r9, QWORD PTR .refptr.VRAM[rip]
	mov	rcx, QWORD PTR 24[rax]
	mov	WORD PTR 8[rcx], bx
	movzx	ebx, bx
	add	rcx, 16
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
	lea	rax, sNoteSphereAnimInfo[rip]
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
	.section .rdata,"dr"
	.align 16
sNoteSphereSfx:
	.word	305
	.word	306
	.word	307
	.word	308
	.word	309
	.word	310
	.word	311
	.word	312
	.align 16
sNoteSphereVelocities:
	.word	1152
	.word	1280
	.word	1408
	.word	1536
	.word	1664
	.word	1792
	.word	1920
	.word	2048
	.align 32
sNoteSphereAnimInfo:
	.word	575
	.word	7
	.word	392
	.word	575
	.word	8
	.word	398
	.word	575
	.word	9
	.word	404
	.word	575
	.word	10
	.word	410
	.word	575
	.word	11
	.word	416
	.word	575
	.word	12
	.word	422
	.word	575
	.word	13
	.word	428
	.word	575
	.word	14
	.word	434
	.ident	"GCC: (GNU) 13-win32"
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	sub_8085530;	.scl	2;	.type	32;	.endef
	.def	ArcTan2;	.scl	2;	.type	32;	.endef
	.def	sub_808558C;	.scl	2;	.type	32;	.endef
	.def	CreateNoteParticle;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
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
