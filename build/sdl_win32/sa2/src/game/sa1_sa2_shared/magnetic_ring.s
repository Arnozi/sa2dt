	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_MagneticRing
	.def	Task_MagneticRing;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_MagneticRing
Task_MagneticRing:
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
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rdi, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rsi]
	movzx	edx, WORD PTR 13[rdi]
	movzx	ecx, WORD PTR 17[rdi]
	mov	rbx, QWORD PTR 24[rax]
	sub	dx, WORD PTR 38[rbx]
	sub	cx, WORD PTR 40[rbx]
	movsx	edx, dx
	movsx	ecx, cx
	call	sub_8004418
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	movzx	ecx, WORD PTR 64[rbx]
	movsx	rax, ax
	movd	xmm0, DWORD PTR 38[rbx]
	lea	edx, 256[rax]
	add	ecx, 64
	movsx	eax, WORD PTR [r8+rax*2]
	movsx	rdx, edx
	mov	WORD PTR 64[rbx], cx
	movsx	ecx, cx
	movsx	edx, WORD PTR [r8+rdx*2]
	imul	eax, ecx
	mov	r8, QWORD PTR .refptr.gPlayerBodyPSI[rip]
	imul	edx, ecx
	sar	eax, 22
	sal	eax, 16
	sar	edx, 22
	movzx	edx, dx
	or	eax, edx
	mov	edx, DWORD PTR 12[rdi]
	movd	xmm6, eax
	paddw	xmm6, xmm0
	sar	edx, 8
	movd	DWORD PTR 38[rbx], xmm6
	pextrw	ecx, xmm6, 0
	movsx	eax, BYTE PTR 76[r8]
	movsx	ecx, cx
	lea	r9d, -8[rcx]
	add	eax, edx
	cmp	r9d, eax
	jg	.L2
	lea	r10d, 8[rcx]
	cmp	eax, r10d
	jg	.L2
.L3:
	mov	r9d, DWORD PTR 16[rdi]
	movsx	eax, BYTE PTR 77[r8]
	pextrw	edx, xmm6, 1
	movsx	edx, dx
	sar	r9d, 8
	lea	r10d, -16[rdx]
	add	eax, r9d
	cmp	edx, eax
	jl	.L12
	cmp	r10d, eax
	jle	.L5
.L12:
	lea	r11d, -15[rdx]
	cmp	eax, r11d
	jge	.L4
	movsx	eax, BYTE PTR 79[r8]
	add	eax, r9d
	cmp	r10d, eax
	jg	.L4
.L5:
	test	BYTE PTR 36[rdi], -128
	jne	.L7
	mov	r10, QWORD PTR .refptr.gRingCount[rip]
	mov	r8, QWORD PTR .refptr.gGameMode[rip]
	movzx	eax, WORD PTR [r10]
	movzx	r11d, BYTE PTR [r8]
	mov	r8, QWORD PTR .refptr.gCurrentLevel[rip]
	lea	r9d, 1[rax]
	cmp	BYTE PTR [r8], 29
	mov	WORD PTR [r10], r9w
	je	.L8
	mov	r8d, r9d
	shr	ax, 2
	shr	r8w, 2
	movzx	eax, ax
	movzx	r8d, r8w
	imul	eax, eax, 5243
	imul	r8d, r8d, 5243
	shr	eax, 17
	shr	r8d, 17
	cmp	r8w, ax
	je	.L8
	test	r11b, r11b
	jne	.L8
	mov	r8, QWORD PTR .refptr.gNumLives[rip]
	movzx	r9d, BYTE PTR [r8]
	mov	eax, r9d
	add	eax, 1
	cmp	r9w, 255
	mov	r9d, -1
	cmove	eax, r9d
	mov	BYTE PTR [r8], al
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 3[rax], 16
.L10:
	call	CreateCollectRingEffect
.L7:
	mov	rcx, QWORD PTR [rsi]
	movups	xmm6, XMMWORD PTR 32[rsp]
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L2:
	lea	r10d, -7[rcx]
	cmp	eax, r10d
	jge	.L4
	movsx	eax, BYTE PTR 78[r8]
	add	eax, edx
	cmp	r9d, eax
	jle	.L3
.L4:
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	movdqu	xmm0, xmm6
	mov	rcx, rbx
	movzx	eax, WORD PTR 4[rdx]
	movzx	edx, WORD PTR [rdx]
	sal	eax, 16
	or	eax, edx
	movd	xmm1, eax
	psubw	xmm0, xmm1
	movd	DWORD PTR 38[rbx], xmm0
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	call	DisplaySprite
	movd	DWORD PTR 38[rbx], xmm6
	movups	xmm6, XMMWORD PTR 32[rsp]
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	cmp	r9w, 255
	jbe	.L10
	cmp	r11b, 5
	jne	.L10
	mov	eax, 255
	mov	WORD PTR [r10], ax
	jmp	.L10
	.seh_endproc
	.p2align 4
	.globl	CreateMagneticRing
	.def	CreateMagneticRing;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateMagneticRing
CreateMagneticRing:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	xor	r9d, r9d
	mov	r8d, 8192
	mov	QWORD PTR 32[rsp], 0
	mov	esi, ecx
	mov	ebx, edx
	lea	rcx, Task_MagneticRing[rip]
	mov	edx, 72
	call	TaskCreate
	xor	edx, edx
	xor	ecx, ecx
	mov	r8d, -256
	mov	rax, QWORD PTR 24[rax]
	mov	WORD PTR 40[rax], bx
	mov	rbx, QWORD PTR .refptr.VRAM[rip]
	mov	WORD PTR 64[rax], dx
	lea	rdx, 73472[rbx]
	mov	WORD PTR 38[rax], si
	mov	QWORD PTR 8[rax], rdx
	mov	DWORD PTR 16[rax], 47579136
	mov	WORD PTR 36[rax], cx
	mov	DWORD PTR 42[rax], 960
	mov	WORD PTR 48[rax], r8w
	mov	BYTE PTR 50[rax], 16
	mov	BYTE PTR 53[rax], 0
	mov	DWORD PTR 32[rax], 794624
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	sub_8004418;	.scl	2;	.type	32;	.endef
	.def	CreateCollectRingEffect;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr.gMusicManagerState, "dr"
	.globl	.refptr.gMusicManagerState
	.linkonce	discard
.refptr.gMusicManagerState:
	.quad	gMusicManagerState
	.section	.rdata$.refptr.gNumLives, "dr"
	.globl	.refptr.gNumLives
	.linkonce	discard
.refptr.gNumLives:
	.quad	gNumLives
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gRingCount, "dr"
	.globl	.refptr.gRingCount
	.linkonce	discard
.refptr.gRingCount:
	.quad	gRingCount
	.section	.rdata$.refptr.gPlayerBodyPSI, "dr"
	.globl	.refptr.gPlayerBodyPSI
	.linkonce	discard
.refptr.gPlayerBodyPSI:
	.quad	gPlayerBodyPSI
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
