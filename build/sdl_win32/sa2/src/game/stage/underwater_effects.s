	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_SpawnAirBubbles;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_SpawnAirBubbles
TaskDestructor_SpawnAirBubbles:
	.seh_endprologue
	sub	BYTE PTR gSmallAirBubbleCount[rip], 1
	ret
	.seh_endproc
	.p2align 4
	.def	Task_DrowningCountdown;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_DrowningCountdown
Task_DrowningCountdown:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r10, QWORD PTR [rax]
	mov	eax, 256
	mov	rbx, QWORD PTR 24[r10]
	movsx	esi, WORD PTR 16[rbx]
	mov	r11d, DWORD PTR 4[rbx]
	mov	edx, DWORD PTR [rbx]
	lea	ecx, 8[0+rsi*8]
	mov	r8d, r11d
	mov	r9d, esi
	sar	edx, 8
	sar	r8d, 8
	cmp	ecx, eax
	cmovg	ecx, eax
	movzx	eax, r8w
	movzx	edi, dx
	sal	rax, 16
	or	rax, rdi
	movzx	edi, cx
	sal	rax, 16
	or	rax, rdi
	sal	rax, 16
	or	rax, rdi
	mov	QWORD PTR 98[rbx], rax
	movzx	eax, WORD PTR 20[rbx]
	test	al, 1
	je	.L4
	mov	edi, ecx
	neg	edi
	mov	WORD PTR 98[rbx], di
.L4:
	test	al, 2
	je	.L5
	neg	ecx
	mov	WORD PTR 100[rbx], cx
.L5:
	add	edx, 32
	cmp	dx, 490
	ja	.L6
	add	r8d, 32
	cmp	r8w, 304
	ja	.L6
	cmp	r9w, 128
	jg	.L6
	cmp	r9w, 64
	jg	.L9
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	lea	eax, 256[0+rsi*4]
	cdqe
	movzx	eax, WORD PTR [rdx+rax*2]
	movsx	edx, WORD PTR 10[rbx]
	sar	ax, 6
	cwde
	neg	eax
	imul	eax, edx
	sar	eax, 8
	add	eax, r11d
	mov	DWORD PTR 4[rbx], eax
.L9:
	mov	rdx, QWORD PTR .refptr.gOamMatrixIndex[rip]
	add	r9d, 1
	lea	rsi, 32[rbx]
	mov	WORD PTR 16[rbx], r9w
	movzx	eax, BYTE PTR [rdx]
	lea	ecx, 1[rax]
	or	eax, 32
	movzx	eax, al
	mov	BYTE PTR [rdx], cl
	mov	rcx, rsi
	or	ah, 32
	mov	DWORD PTR 64[rbx], eax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	lea	rdx, 96[rbx]
	call	TransformSprite
	mov	rcx, rsi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L6:
	mov	rcx, r10
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.def	Task_SpawnAirBubbles;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_SpawnAirBubbles
Task_SpawnAirBubbles:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	mov	r9, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[r9]
	movsx	r8d, WORD PTR 16[rbx]
	movq	xmm0, QWORD PTR [rbx]
	mov	edx, r8d
	pshufd	xmm2, xmm0, 0xe5
	movd	r10d, xmm2
	add	r8d, 1
	lea	rax, 0[0+rdx*4]
	sar	r10d, 8
	sal	r8d, 4
	and	eax, 1020
	mov	r11d, r10d
	movzx	eax, WORD PTR [rcx+rax*2]
	movd	ecx, xmm0
	sar	ax, 4
	cwde
	add	eax, ecx
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	sar	eax, 8
	sub	r11w, WORD PTR 4[rcx]
	sub	ax, WORD PTR [rcx]
	mov	ecx, 256
	cmp	r8d, ecx
	movzx	esi, ax
	cmovg	r8d, ecx
	movzx	ecx, r11w
	sal	rcx, 16
	or	rcx, rsi
	movzx	esi, r8w
	sal	rcx, 16
	or	rcx, rsi
	sal	rcx, 16
	or	rcx, rsi
	mov	QWORD PTR 98[rbx], rcx
	movzx	ecx, WORD PTR 20[rbx]
	test	cl, 1
	je	.L17
	mov	esi, r8d
	neg	esi
	mov	WORD PTR 98[rbx], si
.L17:
	and	ecx, 2
	je	.L18
	neg	r8d
	mov	WORD PTR 100[rbx], r8w
.L18:
	add	eax, 32
	cmp	ax, 490
	ja	.L19
	add	r11d, 32
	cmp	r11w, 304
	ja	.L19
	mov	rax, QWORD PTR .refptr.gWater[rip]
	cmp	BYTE PTR [rax], 1
	je	.L28
.L19:
	mov	rcx, r9
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L28:
	movsx	eax, WORD PTR 4[rax]
	test	ax, ax
	js	.L19
	sub	r10d, 2
	cmp	r10d, eax
	jle	.L19
	cmp	dx, 480
	jg	.L19
	movsx	ecx, WORD PTR 8[rbx]
	add	edx, 1
	lea	rsi, 32[rbx]
	mov	WORD PTR 16[rbx], dx
	mov	rdx, QWORD PTR .refptr.gOamMatrixIndex[rip]
	mov	eax, ecx
	movd	xmm1, ecx
	movsx	ecx, WORD PTR 10[rbx]
	movd	xmm3, ecx
	mov	ecx, eax
	sar	cx, 3
	punpckldq	xmm1, xmm3
	sub	eax, ecx
	paddd	xmm0, xmm1
	mov	WORD PTR 8[rbx], ax
	movzx	eax, BYTE PTR [rdx]
	lea	ecx, 1[rax]
	or	eax, 32
	movq	QWORD PTR [rbx], xmm0
	movzx	eax, al
	mov	BYTE PTR [rdx], cl
	mov	rcx, rsi
	or	ah, 32
	mov	DWORD PTR 64[rbx], eax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	lea	rdx, 96[rbx]
	call	TransformSprite
	mov	rcx, rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	SpawnDrowningCountdownNum
	.def	SpawnDrowningCountdownNum;	.scl	2;	.type	32;	.endef
	.seh_proc	SpawnDrowningCountdownNum
SpawnDrowningCountdownNum:
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
	mov	rax, QWORD PTR .refptr.TaskDestructor_MultiplayerSpriteTask[rip]
	xor	r8d, r8d
	xor	r9d, r9d
	mov	QWORD PTR 40[rsp], rax
	lea	rax, Task_DrowningCountdown[rip]
	mov	rdi, rcx
	mov	ebp, edx
	mov	QWORD PTR 32[rsp], rax
	xor	edx, edx
	xor	ecx, ecx
	call	CreateMultiplayerSpriteTask
	movq	xmm1, QWORD PTR 12[rdi]
	mov	ecx, 4
	mov	rbx, QWORD PTR 24[rax]
	mov	rsi, rax
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR 4[rax]
	mov	DWORD PTR 8[rbx], 18874368
	sal	edx, 8
	sal	eax, 8
	movd	xmm2, eax
	movd	xmm0, edx
	xor	eax, eax
	punpckldq	xmm0, xmm2
	mov	WORD PTR 16[rbx], ax
	psubd	xmm1, xmm0
	movq	QWORD PTR [rbx], xmm1
	movzx	eax, BYTE PTR 104[rdi]
	mov	BYTE PTR 26[rbx], al
	call	VramMalloc
	mov	edx, 870
	xor	r8d, r8d
	mov	ecx, 576
	mov	QWORD PTR 40[rbx], rax
	mov	eax, 5
	sub	eax, ebp
	mov	WORD PTR 50[rbx], dx
	mov	BYTE PTR 80[rbx], al
	mov	rax, rsi
	mov	WORD PTR 74[rbx], cx
	mov	DWORD PTR 64[rbx], 8192
	mov	WORD PTR 96[rbx], r8w
	mov	QWORD PTR 98[rbx], 0
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.globl	SpawnAirBubbles
	.def	SpawnAirBubbles;	.scl	2;	.type	32;	.endef
	.seh_proc	SpawnAirBubbles
SpawnAirBubbles:
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
	xor	eax, eax
	mov	esi, edx
	movzx	edx, BYTE PTR gSmallAirBubbleCount[rip]
	mov	edi, ecx
	mov	ebp, r8d
	mov	ebx, r9d
	cmp	dl, 11
	jg	.L30
	lea	rax, TaskDestructor_SpawnAirBubbles[rip]
	add	edx, 1
	xor	r9d, r9d
	xor	r8d, r8d
	mov	QWORD PTR 40[rsp], rax
	lea	rax, Task_SpawnAirBubbles[rip]
	xor	ecx, ecx
	mov	QWORD PTR 32[rsp], rax
	mov	BYTE PTR gSmallAirBubbleCount[rip], dl
	xor	edx, edx
	call	CreateMultiplayerSpriteTask
	mov	r11d, -128
	mov	rdx, QWORD PTR 24[rax]
	mov	DWORD PTR 4[rdx], esi
	xor	esi, esi
	mov	DWORD PTR [rdx], edi
	mov	WORD PTR 8[rdx], bp
	mov	WORD PTR 10[rdx], r11w
	mov	WORD PTR 16[rdx], si
	mov	DWORD PTR 18[rdx], 256
	test	ebx, ebx
	je	.L35
	mov	rsi, QWORD PTR .refptr.VRAM[rip]
	mov	r8, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	r9d, 854
	mov	BYTE PTR 80[rdx], 0
	mov	WORD PTR 50[rdx], r9w
	lea	rcx, 76480[rsi]
	mov	QWORD PTR 40[rdx], rcx
	imul	ecx, DWORD PTR [r8], 1663525
	add	ecx, 1013904223
	mov	DWORD PTR [r8], ecx
	shr	ecx, 16
	and	ecx, 3
	mov	WORD PTR 20[rdx], cx
.L33:
	mov	ecx, 576
	xor	r8d, r8d
	mov	QWORD PTR 98[rdx], 0
	mov	WORD PTR 74[rdx], cx
	mov	WORD PTR 96[rdx], r8w
.L30:
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L35:
	mov	rbx, QWORD PTR .refptr.VRAM[rip]
	mov	r10d, 853
	mov	BYTE PTR 80[rdx], 0
	mov	WORD PTR 50[rdx], r10w
	lea	rcx, 76352[rbx]
	mov	QWORD PTR 40[rdx], rcx
	jmp	.L33
	.seh_endproc
	.p2align 4
	.def	Task_SpawnBubblesAfterDrowning;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_SpawnBubblesAfterDrowning
Task_SpawnBubblesAfterDrowning:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rcx]
	mov	rbx, QWORD PTR [rax]
	test	BYTE PTR 36[rbx], -128
	je	.L44
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	test	BYTE PTR [rax], 3
	jne	.L36
	mov	rsi, QWORD PTR .refptr.gPseudoRandom[rip]
	imul	eax, DWORD PTR [rsi], 1663525
	add	eax, 1013904223
	test	ah, 3
	jne	.L45
	imul	eax, eax, 1663525
	add	eax, 1013904223
	mov	edi, eax
	shr	edi, 8
	and	edi, 1
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L46:
	mov	eax, DWORD PTR [rsi]
	xor	edi, edi
.L40:
	imul	eax, eax, 1663525
	mov	ecx, DWORD PTR 16[rbx]
	xor	r8d, r8d
	add	eax, 1013904223
	imul	edx, eax, 1663525
	shr	eax, 8
	and	eax, 2047
	add	edx, 1013904223
	imul	r9d, edx, 1663525
	shr	edx, 8
	and	edx, 2047
	lea	edx, -4096[rdx+rcx]
	mov	ecx, DWORD PTR 12[rbx]
	add	r9d, 1013904223
	mov	DWORD PTR [rsi], r9d
	shr	r9d, 8
	lea	ecx, -1024[rax+rcx]
	and	r9d, 1
	call	SpawnAirBubbles
	test	edi, edi
	jne	.L46
.L36:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L44:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L45:
	mov	DWORD PTR [rsi], eax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	RandomlySpawnAirBubbles
	.def	RandomlySpawnAirBubbles;	.scl	2;	.type	32;	.endef
	.seh_proc	RandomlySpawnAirBubbles
RandomlySpawnAirBubbles:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	test	BYTE PTR [rax], 7
	jne	.L50
	mov	rdx, QWORD PTR .refptr.gPseudoRandom[rip]
	imul	eax, DWORD PTR [rdx], 1663525
	add	eax, 1013904223
	mov	DWORD PTR [rdx], eax
	test	ah, 3
	je	.L52
.L50:
	xor	eax, eax
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L52:
	imul	eax, eax, 1663525
	mov	r10d, DWORD PTR 12[rcx]
	mov	DWORD PTR [rdx], -1133579425
	mov	r9d, 1
	mov	edx, DWORD PTR 16[rcx]
	add	eax, 1013904223
	shr	eax, 8
	and	eax, 15
	mov	r8d, eax
	neg	r8d
	test	BYTE PTR 36[rcx], 1
	cmove	eax, r8d
	movsx	r8d, WORD PTR 20[rcx]
	add	edx, 5
	sub	r10d, eax
	mov	ecx, r10d
	call	SpawnAirBubbles
	mov	eax, 1
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	SpawnBubblesAfterDrowning
	.def	SpawnBubblesAfterDrowning;	.scl	2;	.type	32;	.endef
	.seh_proc	SpawnBubblesAfterDrowning
SpawnBubblesAfterDrowning:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	xor	r9d, r9d
	mov	r8d, 16385
	mov	edx, 8
	mov	QWORD PTR 32[rsp], 0
	mov	rbx, rcx
	lea	rcx, Task_SpawnBubblesAfterDrowning[rip]
	call	TaskCreate
	mov	rdx, QWORD PTR 24[rax]
	mov	QWORD PTR [rdx], rbx
	add	rsp, 48
	pop	rbx
	ret
	.seh_endproc
	.globl	gSmallAirBubbleCount
	.bss
gSmallAirBubbleCount:
	.space 1
	.ident	"GCC: (GNU) 13-win32"
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	TransformSprite;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	CreateMultiplayerSpriteTask;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
	.section	.rdata$.refptr.gPseudoRandom, "dr"
	.globl	.refptr.gPseudoRandom
	.linkonce	discard
.refptr.gPseudoRandom:
	.quad	gPseudoRandom
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.TaskDestructor_MultiplayerSpriteTask, "dr"
	.globl	.refptr.TaskDestructor_MultiplayerSpriteTask
	.linkonce	discard
.refptr.TaskDestructor_MultiplayerSpriteTask:
	.quad	TaskDestructor_MultiplayerSpriteTask
	.section	.rdata$.refptr.gWater, "dr"
	.globl	.refptr.gWater
	.linkonce	discard
.refptr.gWater:
	.quad	gWater
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
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
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
