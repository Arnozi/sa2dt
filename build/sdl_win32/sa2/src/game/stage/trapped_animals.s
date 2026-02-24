	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	CreateBouncingAnimal;	.scl	3;	.type	32;	.endef
	.seh_proc	CreateBouncingAnimal
CreateBouncingAnimal:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	xor	r9d, r9d
	mov	r8d, 8192
	mov	edx, 80
	mov	QWORD PTR 32[rsp], 0
	mov	rbx, rcx
	lea	rcx, Task_BouncingAnimal[rip]
	call	TaskCreate
	mov	ecx, DWORD PTR 12[rbx]
	xor	r9d, r9d
	xor	r10d, r10d
	mov	rax, QWORD PTR 24[rax]
	mov	r11d, 4351
	mov	edx, ecx
	sal	edx, 8
	mov	DWORD PTR 64[rax], edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 38[rax], cx
	mov	rcx, QWORD PTR .refptr.VRAM[rip]
	mov	r8d, edx
	mov	WORD PTR 40[rax], dx
	sal	r8d, 8
	mov	DWORD PTR 72[rax], -67108863
	mov	DWORD PTR 68[rax], r8d
	mov	r8d, 10752
	mov	WORD PTR 76[rax], r8w
	mov	edx, DWORD PTR [rbx]
	mov	WORD PTR 16[rax], r9w
	sal	edx, 5
	movsx	rdx, edx
	lea	rdx, 65536[rdx+rcx]
	mov	QWORD PTR 8[rax], rdx
	mov	edx, DWORD PTR 4[rbx]
	mov	WORD PTR 18[rax], dx
	mov	edx, DWORD PTR 8[rbx]
	mov	WORD PTR 36[rax], r10w
	mov	BYTE PTR 48[rax], dl
	mov	DWORD PTR 42[rax], 1088
	mov	WORD PTR 49[rax], r11w
	mov	BYTE PTR 53[rax], 0
	mov	DWORD PTR 32[rax], 8192
	add	rsp, 48
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	CreateFlyingAnimal;	.scl	3;	.type	32;	.endef
	.seh_proc	CreateFlyingAnimal
CreateFlyingAnimal:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	xor	r9d, r9d
	mov	r8d, 8192
	mov	edx, 80
	mov	QWORD PTR 32[rsp], 0
	mov	rbx, rcx
	lea	rcx, Task_FlyingAnimal[rip]
	call	TaskCreate
	mov	edx, DWORD PTR 16[rbx]
	mov	ecx, DWORD PTR 12[rbx]
	xor	r9d, r9d
	movq	xmm0, QWORD PTR 12[rbx]
	mov	rax, QWORD PTR 24[rax]
	mov	r8d, 576
	xor	r10d, r10d
	mov	r11d, 4351
	pslld	xmm0, 8
	mov	BYTE PTR 74[rax], 1
	movq	QWORD PTR 64[rax], xmm0
	mov	WORD PTR 40[rax], dx
	mov	edx, DWORD PTR [rbx]
	mov	WORD PTR 38[rax], cx
	mov	rcx, QWORD PTR .refptr.VRAM[rip]
	sal	edx, 5
	mov	WORD PTR 72[rax], r8w
	movsx	rdx, edx
	mov	WORD PTR 16[rax], r9w
	lea	rdx, 65536[rdx+rcx]
	mov	QWORD PTR 8[rax], rdx
	mov	edx, DWORD PTR 4[rbx]
	mov	WORD PTR 18[rax], dx
	mov	edx, DWORD PTR 8[rbx]
	mov	WORD PTR 36[rax], r10w
	mov	BYTE PTR 48[rax], dl
	mov	DWORD PTR 42[rax], 1088
	mov	WORD PTR 49[rax], r11w
	mov	BYTE PTR 53[rax], 0
	mov	DWORD PTR 32[rax], 8192
	add	rsp, 48
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	CreateStaticAnimal;	.scl	3;	.type	32;	.endef
	.seh_proc	CreateStaticAnimal
CreateStaticAnimal:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	xor	r9d, r9d
	mov	r8d, 8192
	mov	edx, 80
	mov	QWORD PTR 32[rsp], 0
	mov	rbx, rcx
	lea	rcx, Task_StaticAnimalMain[rip]
	call	TaskCreate
	mov	ecx, DWORD PTR 12[rbx]
	mov	rax, QWORD PTR 24[rax]
	mov	edx, ecx
	sal	edx, 8
	mov	DWORD PTR 64[rax], edx
	mov	edx, DWORD PTR 16[rbx]
	mov	BYTE PTR 76[rax], 42
	mov	WORD PTR 40[rax], dx
	mov	r8d, edx
	mov	edx, DWORD PTR [rbx]
	mov	WORD PTR 38[rax], cx
	mov	rcx, QWORD PTR .refptr.VRAM[rip]
	sal	r8d, 8
	sal	edx, 5
	mov	DWORD PTR 68[rax], r8d
	mov	r8d, 4351
	movsx	rdx, edx
	mov	DWORD PTR 72[rax], -67108864
	lea	rdx, 65536[rdx+rcx]
	xor	ecx, ecx
	mov	QWORD PTR 8[rax], rdx
	xor	edx, edx
	mov	WORD PTR 16[rax], dx
	mov	edx, DWORD PTR 4[rbx]
	mov	WORD PTR 18[rax], dx
	mov	edx, DWORD PTR 8[rbx]
	mov	WORD PTR 36[rax], cx
	mov	BYTE PTR 48[rax], dl
	mov	DWORD PTR 42[rax], 1088
	mov	WORD PTR 49[rax], r8w
	mov	BYTE PTR 53[rax], 0
	mov	DWORD PTR 32[rax], 8192
	add	rsp, 48
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	Task_BouncingAnimal;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_BouncingAnimal
Task_BouncingAnimal:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, WORD PTR 74[rbx]
	movsx	esi, WORD PTR 72[rbx]
	movq	xmm1, QWORD PTR 64[rbx]
	add	eax, 48
	movd	xmm0, esi
	mov	WORD PTR 74[rbx], ax
	cwde
	movd	xmm2, eax
	movzx	eax, BYTE PTR 77[rbx]
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	pshufd	xmm3, xmm0, 0xe5
	movd	edx, xmm0
	movd	esi, xmm3
	movq	QWORD PTR 64[rbx], xmm0
	test	al, al
	je	.L6
	sub	eax, 1
	mov	BYTE PTR 77[rbx], al
.L7:
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sar	edx, 8
	mov	eax, esi
	sar	eax, 8
	sub	dx, WORD PTR [rcx]
	sub	ax, WORD PTR 4[rcx]
	mov	WORD PTR 38[rbx], dx
	add	edx, 32
	cmp	dx, 490
	mov	WORD PTR 40[rbx], ax
	seta	dl
	cmp	ax, -32
	setl	cl
	or	dl, cl
	jne	.L12
	cmp	ax, 272
	jle	.L10
.L12:
	mov	rcx, QWORD PTR [rdi]
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L10:
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L6:
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	mov	ecx, esi
	sar	edx, 8
	mov	r9d, 8
	mov	QWORD PTR 32[rsp], 0
	sar	ecx, 8
	mov	r8d, 1
	mov	QWORD PTR 40[rsp], rax
	call	sub_801F07C
	sal	eax, 8
	add	eax, esi
	mov	esi, DWORD PTR 68[rbx]
	cmp	esi, eax
	jl	.L13
	mov	ecx, -1024
	cmp	BYTE PTR 76[rbx], 0
	mov	DWORD PTR 68[rbx], eax
	mov	WORD PTR 74[rbx], cx
	jne	.L9
	mov	edx, -512
	mov	WORD PTR 72[rbx], dx
.L9:
	mov	BYTE PTR 76[rbx], 1
	mov	edx, DWORD PTR 64[rbx]
	mov	esi, eax
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L13:
	mov	edx, DWORD PTR 64[rbx]
	jmp	.L7
	.seh_endproc
	.p2align 4
	.def	Task_FlyingAnimal;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_FlyingAnimal
Task_FlyingAnimal:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rcx]
	cmp	BYTE PTR 74[rbx], 0
	mov	r11d, DWORD PTR 64[rbx]
	mov	r8d, DWORD PTR 68[rbx]
	movzx	eax, WORD PTR 72[rbx]
	je	.L15
	add	eax, 6
	mov	WORD PTR 72[rbx], ax
	cmp	ax, 640
	jg	.L23
.L18:
	and	eax, 1023
	mov	r10, QWORD PTR .refptr.gSineTable[rip]
	lea	edx, 256[rax]
	movsx	rdx, edx
	movsx	eax, WORD PTR [r10+rax*2]
	movsx	edx, WORD PTR [r10+rdx*2]
	mov	r9d, edx
	imul	edx, edx, 26215
	sar	r9w, 15
	sar	edx, 19
	sub	edx, r9d
	mov	r9d, eax
	imul	eax, eax, 26215
	sar	r9w, 15
	movsx	edx, dx
	sar	edx, 3
	add	edx, r11d
	sar	eax, 19
	mov	DWORD PTR 64[rbx], edx
	sar	edx, 8
	sub	eax, r9d
	cwde
	sar	eax
	add	eax, r8d
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	mov	DWORD PTR 68[rbx], eax
	sar	eax, 8
	sub	ax, WORD PTR 4[r8]
	sub	dx, WORD PTR [r8]
	cmp	ax, -32
	mov	WORD PTR 40[rbx], ax
	setl	r8b
	cmp	ax, 272
	mov	WORD PTR 38[rbx], dx
	setg	al
	or	r8b, al
	jne	.L22
	add	edx, 32
	cmp	dx, 490
	jbe	.L20
.L22:
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L20:
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L23:
	mov	BYTE PTR 74[rbx], 0
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L15:
	sub	eax, 6
	mov	WORD PTR 72[rbx], ax
	cmp	ax, 511
	jg	.L18
	mov	BYTE PTR 74[rbx], 1
	jmp	.L18
	.seh_endproc
	.p2align 4
	.def	Task_StaticAnimalMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_StaticAnimalMain
Task_StaticAnimalMain:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, WORD PTR 74[rbx]
	movsx	esi, WORD PTR 72[rbx]
	movq	xmm1, QWORD PTR 64[rbx]
	add	eax, 48
	movd	xmm0, esi
	mov	WORD PTR 74[rbx], ax
	cwde
	movd	xmm2, eax
	movzx	eax, BYTE PTR 76[rbx]
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	pshufd	xmm3, xmm0, 0xe5
	movd	edx, xmm0
	movd	esi, xmm3
	movq	QWORD PTR 64[rbx], xmm0
	test	al, al
	je	.L25
	sub	eax, 1
	mov	BYTE PTR 76[rbx], al
.L26:
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sar	edx, 8
	mov	eax, esi
	sar	eax, 8
	sub	dx, WORD PTR [rcx]
	sub	ax, WORD PTR 4[rcx]
	mov	WORD PTR 38[rbx], dx
	add	edx, 32
	cmp	dx, 490
	mov	WORD PTR 40[rbx], ax
	seta	dl
	cmp	ax, -32
	setl	cl
	or	dl, cl
	jne	.L30
	cmp	ax, 272
	jle	.L28
.L30:
	mov	rcx, QWORD PTR [rdi]
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L28:
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L25:
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	mov	ecx, esi
	sar	edx, 8
	mov	r9d, 8
	mov	QWORD PTR 32[rsp], 0
	sar	ecx, 8
	mov	r8d, 1
	mov	QWORD PTR 40[rsp], rax
	call	sub_801F07C
	sal	eax, 8
	add	eax, esi
	mov	esi, DWORD PTR 68[rbx]
	cmp	esi, eax
	jl	.L31
	xor	edx, edx
	mov	DWORD PTR 68[rbx], eax
	mov	esi, eax
	mov	WORD PTR 74[rbx], dx
	mov	edx, DWORD PTR 64[rbx]
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L31:
	mov	edx, DWORD PTR 64[rbx]
	jmp	.L26
	.seh_endproc
	.p2align 4
	.globl	CreateTrappedAnimal
	.def	CreateTrappedAnimal;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateTrappedAnimal
CreateTrappedAnimal:
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	r10, QWORD PTR .refptr.gTrappedAnimalVariant[rip]
	lea	r11, sAnimsTrappedAnimals[rip]
	movzx	eax, BYTE PTR [rax]
	sar	al, 2
	mov	r8d, edx
	mov	edx, 6
	mov	r9d, ecx
	movsx	rcx, BYTE PTR [r10]
	cmp	al, dl
	movsx	r9d, r9w
	movsx	r8d, r8w
	cmovg	eax, edx
	mov	rdx, rcx
	movd	xmm2, r9d
	mov	DWORD PTR 48[rsp], r8d
	movsx	rax, al
	lea	rax, [rax+rax*2]
	add	rax, rcx
	sal	rax, 4
	lea	rcx, [r11+rax]
	movd	xmm1, DWORD PTR 8[r11+rax]
	lea	eax, 1[rdx]
	xor	edx, edx
	cmp	al, 3
	movd	xmm3, DWORD PTR 4[rcx]
	movd	xmm0, DWORD PTR [rcx]
	cmovge	eax, edx
	punpckldq	xmm1, xmm2
	movsx	rdx, BYTE PTR 12[rcx]
	punpckldq	xmm0, xmm3
	mov	BYTE PTR [r10], al
	lea	rax, 32[rsp]
	punpcklqdq	xmm0, xmm1
	mov	rcx, rax
	lea	rax, sTrappedAnimalSpawnFunctions[rip]
	movups	XMMWORD PTR 32[rsp], xmm0
	call	[QWORD PTR [rax+rdx*8]]
	nop
	add	rsp, 72
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 16
sTrappedAnimalSpawnFunctions:
	.quad	CreateStaticAnimal
	.quad	CreateFlyingAnimal
	.quad	CreateBouncingAnimal
	.align 32
sAnimsTrappedAnimals:
	.long	192
	.long	523
	.long	0
	.long	0
	.long	196
	.long	528
	.long	0
	.long	0
	.long	200
	.long	527
	.long	0
	.long	2
	.long	192
	.long	519
	.long	0
	.long	0
	.long	196
	.long	525
	.long	0
	.long	2
	.long	200
	.long	526
	.long	0
	.long	1
	.long	192
	.long	518
	.long	0
	.long	0
	.long	196
	.long	517
	.long	0
	.long	2
	.long	200
	.long	520
	.long	0
	.long	1
	.long	192
	.long	523
	.long	0
	.long	0
	.long	196
	.long	515
	.long	0
	.long	0
	.long	200
	.long	521
	.long	0
	.long	2
	.long	192
	.long	529
	.long	0
	.long	0
	.long	196
	.long	518
	.long	0
	.long	0
	.long	200
	.long	516
	.long	0
	.long	2
	.long	192
	.long	519
	.long	0
	.long	0
	.long	196
	.long	524
	.long	0
	.long	2
	.long	200
	.long	522
	.long	0
	.long	2
	.long	192
	.long	523
	.long	0
	.long	0
	.long	196
	.long	528
	.long	0
	.long	0
	.long	200
	.long	527
	.long	0
	.long	2
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	sub_801F07C;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gTrappedAnimalVariant, "dr"
	.globl	.refptr.gTrappedAnimalVariant
	.linkonce	discard
.refptr.gTrappedAnimalVariant:
	.quad	gTrappedAnimalVariant
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
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
	.section	.rdata$.refptr.sub_801EE64, "dr"
	.globl	.refptr.sub_801EE64
	.linkonce	discard
.refptr.sub_801EE64:
	.quad	sub_801EE64
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
