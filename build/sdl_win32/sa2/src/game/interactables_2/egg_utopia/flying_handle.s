	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_FlyingHandle;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_FlyingHandle
TaskDestructor_FlyingHandle:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	Render;	.scl	3;	.type	32;	.endef
	.seh_proc	Render
Render:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	edx, DWORD PTR [rax]
	mov	r8d, DWORD PTR 4[rax]
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	lea	rbx, 16[rcx]
	jbe	.L4
	movzx	eax, WORD PTR 137[rcx]
	sub	eax, edx
	movzx	edx, WORD PTR 141[rcx]
	sub	edx, r8d
.L5:
	mov	WORD PTR 56[rcx], dx
	mov	WORD PTR 54[rcx], ax
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L4:
	mov	eax, DWORD PTR 96[rcx]
	add	eax, DWORD PTR 88[rcx]
	sar	eax, 8
	sub	eax, edx
	mov	edx, DWORD PTR 100[rcx]
	add	edx, DWORD PTR 92[rcx]
	sar	edx, 8
	sub	edx, r8d
	jmp	.L5
	.seh_endproc
	.p2align 4
	.def	UpdatePosition;	.scl	3;	.type	32;	.endef
	.seh_proc	UpdatePosition
UpdatePosition:
	.seh_endprologue
	mov	r8d, DWORD PTR 116[rcx]
	mov	r9d, DWORD PTR 84[rcx]
	mov	rax, rcx
	test	r8d, r8d
	je	.L7
	mov	r8d, DWORD PTR 92[rcx]
	movsx	ecx, WORD PTR 106[rcx]
	movzx	edx, WORD PTR 114[rax]
	add	ecx, r9d
	sal	ecx, 8
	cmp	r8d, ecx
	jg	.L8
	test	dx, dx
	js	.L8
	movzx	ecx, BYTE PTR 124[rax]
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	lea	rdx, 0[0+rcx*4]
	add	ecx, 4
	and	edx, 1020
	mov	BYTE PTR 124[rax], cl
	xor	ecx, ecx
	movzx	edx, WORD PTR [r8+rdx*2]
	mov	WORD PTR 114[rax], cx
	sar	dx, 6
	movsx	edx, dx
	sal	edx, 3
	mov	DWORD PTR 100[rax], edx
.L6:
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	movsx	edx, WORD PTR 110[rcx]
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	add	edx, r9d
	sal	edx, 8
	mov	DWORD PTR 92[rcx], edx
	movzx	ecx, BYTE PTR 124[rcx]
	lea	rdx, 0[0+rcx*4]
	add	ecx, 4
	and	edx, 1020
	mov	BYTE PTR 124[rax], cl
	movzx	edx, WORD PTR [r8+rdx*2]
	sar	dx, 6
	movsx	edx, dx
	sal	edx, 3
	mov	DWORD PTR 100[rax], edx
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	add	edx, 16
	mov	r9d, 768
	cmp	dx, r9w
	cmovg	edx, r9d
	mov	WORD PTR 114[rax], dx
	movsx	edx, dx
	sub	r8d, edx
	mov	DWORD PTR 92[rax], r8d
	cmp	ecx, r8d
	jl	.L6
	xor	edx, edx
	mov	DWORD PTR 92[rax], ecx
	mov	WORD PTR 114[rax], dx
	mov	BYTE PTR 124[rax], -128
	ret
	.seh_endproc
	.p2align 4
	.def	UpdatePlayerPos;	.scl	3;	.type	32;	.endef
	.seh_proc	UpdatePlayerPos
UpdatePlayerPos:
	.seh_endprologue
	mov	eax, DWORD PTR 96[rcx]
	mov	edx, DWORD PTR 100[rcx]
	add	eax, DWORD PTR 88[rcx]
	add	edx, DWORD PTR 92[rcx]
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	add	edx, 5120
	lea	r8d, 1024[rax]
	sub	eax, 1024
	test	BYTE PTR 36[rcx], 1
	mov	DWORD PTR 16[rcx], edx
	cmovne	eax, r8d
	mov	DWORD PTR 12[rcx], eax
	ret
	.seh_endproc
	.p2align 4
	.def	IsPlayerTouching.part.0.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	IsPlayerTouching.part.0.isra.0
IsPlayerTouching.part.0.isra.0:
	.seh_endprologue
	lea	eax, [rcx+r8]
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	add	edx, r9d
	sar	eax, 8
	sar	edx, 8
	sub	ax, WORD PTR 13[rcx]
	sub	dx, WORD PTR 17[rcx]
	cwde
	movsx	edx, dx
	imul	edx, edx
	imul	eax, eax
	add	eax, edx
	cmp	eax, 256
	setle	al
	movzx	eax, al
	ret
	.seh_endproc
	.p2align 4
	.def	Task_Idle;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Idle
Task_Idle:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	ja	.L22
.L15:
	mov	r10, QWORD PTR .refptr.gPlayer[rip]
	mov	r11d, DWORD PTR 36[r10]
	test	r11b, -128
	jne	.L16
	movq	xmm1, QWORD PTR 88[rbx]
	movq	xmm0, QWORD PTR 96[rbx]
	pshufd	xmm2, xmm1, 0xe5
	pshufd	xmm3, xmm0, 0xe5
	movd	edx, xmm2
	movd	ecx, xmm1
	movd	r9d, xmm3
	movd	r8d, xmm0
	call	IsPlayerTouching.part.0.isra.0
	test	eax, eax
	je	.L16
	mov	eax, 55
	xor	edx, edx
	paddd	xmm0, xmm1
	mov	rcx, rbx
	or	r11d, 4194304
	mov	WORD PTR 108[r10], ax
	mov	DWORD PTR 36[r10], r11d
	mov	WORD PTR 24[r10], dx
	mov	DWORD PTR 20[r10], 0
	call	UpdatePlayerPos
	mov	ecx, -384
	mov	DWORD PTR 116[rbx], 1
	mov	WORD PTR 114[rbx], cx
	mov	ecx, 291
	mov	QWORD PTR 96[rbx], 0
	mov	BYTE PTR 125[rbx], 30
	movq	QWORD PTR 88[rbx], xmm0
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rsi]
	lea	rcx, Task_ActiveMain[rip]
	mov	QWORD PTR 40[rax], rcx
.L16:
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 80[rbx]
	mov	ecx, DWORD PTR 84[rbx]
	sub	ax, WORD PTR [rdx]
	mov	r8d, DWORD PTR 4[rdx]
	movsx	edx, WORD PTR 108[rbx]
	cwde
	add	edx, eax
	cmp	edx, -128
	jl	.L17
	movsx	edx, WORD PTR 104[rbx]
	add	eax, edx
	cmp	eax, 554
	jg	.L17
	movsx	eax, WORD PTR 110[rbx]
	sub	ecx, r8d
	movsx	ecx, cx
	add	eax, ecx
	cmp	eax, -128
	jl	.L17
	movsx	eax, WORD PTR 106[rbx]
	add	eax, ecx
	cmp	eax, 368
	jg	.L17
	mov	rcx, rbx
	call	UpdatePosition
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	Render
	.p2align 4,,10
	.p2align 3
.L17:
	mov	rax, QWORD PTR [rbx]
	movzx	edx, BYTE PTR 12[rbx]
	mov	BYTE PTR [rax], dl
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L22:
	mov	rax, QWORD PTR 136[rbx]
	movd	xmm1, DWORD PTR 128[rbx]
	movd	xmm4, DWORD PTR 132[rbx]
	mov	QWORD PTR 144[rbx], rax
	mov	eax, DWORD PTR 96[rbx]
	add	eax, DWORD PTR 88[rbx]
	punpckldq	xmm1, xmm4
	movd	xmm0, eax
	mov	eax, DWORD PTR 100[rbx]
	add	eax, DWORD PTR 92[rbx]
	movd	xmm5, eax
	punpckldq	xmm0, xmm5
	punpcklqdq	xmm0, xmm1
	movups	XMMWORD PTR 128[rbx], xmm0
	jmp	.L15
	.seh_endproc
	.p2align 4
	.def	Task_Deactivate;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Deactivate
Task_Deactivate:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r11, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	mov	r10, QWORD PTR 24[r11]
	ja	.L28
.L24:
	movzx	eax, BYTE PTR 125[r10]
	test	al, al
	jne	.L25
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	test	BYTE PTR 36[rax], -128
	je	.L29
	lea	rax, Task_Idle[rip]
	mov	QWORD PTR 40[r11], rax
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L25:
	sub	eax, 1
	mov	BYTE PTR 125[r10], al
.L27:
	mov	rcx, r10
	call	UpdatePosition
	mov	rcx, r10
	add	rsp, 40
	jmp	Render
	.p2align 4,,10
	.p2align 3
.L29:
	mov	edx, DWORD PTR 92[r10]
	mov	ecx, DWORD PTR 88[r10]
	mov	r9d, DWORD PTR 100[r10]
	mov	r8d, DWORD PTR 96[r10]
	call	IsPlayerTouching.part.0.isra.0
	test	eax, eax
	jne	.L27
	lea	rax, Task_Idle[rip]
	mov	QWORD PTR 40[r11], rax
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L28:
	movd	xmm1, DWORD PTR 128[r10]
	mov	rax, QWORD PTR 136[r10]
	movd	xmm2, DWORD PTR 132[r10]
	mov	QWORD PTR 144[r10], rax
	mov	eax, DWORD PTR 96[r10]
	add	eax, DWORD PTR 88[r10]
	punpckldq	xmm1, xmm2
	movd	xmm0, eax
	mov	eax, DWORD PTR 100[r10]
	add	eax, DWORD PTR 92[r10]
	movd	xmm3, eax
	punpckldq	xmm0, xmm3
	punpcklqdq	xmm0, xmm1
	movups	XMMWORD PTR 128[r10], xmm0
	jmp	.L24
	.seh_endproc
	.p2align 4
	.def	Task_ActiveMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_ActiveMain
Task_ActiveMain:
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
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	ja	.L43
.L31:
	mov	ecx, 291
	call	m4aSongNumStartOrContinue
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, DWORD PTR 36[rsi]
	test	dl, -128
	je	.L32
	mov	rax, QWORD PTR [rdi]
	lea	rdx, Task_Idle[rip]
	mov	QWORD PTR 40[rax], rdx
.L33:
	movzx	eax, BYTE PTR 125[rbx]
	test	al, al
	jne	.L35
.L37:
	mov	rcx, rbx
	call	UpdatePosition
	mov	rcx, rbx
	call	UpdatePlayerPos
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	Render
	.p2align 4,,10
	.p2align 3
.L32:
	cmp	WORD PTR 48[rsi], 120
	je	.L44
	movzx	eax, BYTE PTR 125[rbx]
	test	al, al
	je	.L45
.L35:
	sub	eax, 1
	mov	BYTE PTR 125[rbx], al
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L43:
	mov	rax, QWORD PTR 136[rbx]
	movd	xmm1, DWORD PTR 128[rbx]
	movd	xmm2, DWORD PTR 132[rbx]
	mov	QWORD PTR 144[rbx], rax
	mov	eax, DWORD PTR 96[rbx]
	add	eax, DWORD PTR 88[rbx]
	punpckldq	xmm1, xmm2
	movd	xmm0, eax
	mov	eax, DWORD PTR 100[rbx]
	add	eax, DWORD PTR 92[rbx]
	movd	xmm3, eax
	punpckldq	xmm0, xmm3
	punpcklqdq	xmm0, xmm1
	movups	XMMWORD PTR 128[rbx], xmm0
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L45:
	mov	rcx, QWORD PTR .refptr.gPlayerControls[rip]
	movzx	eax, WORD PTR 102[rsi]
	and	ax, WORD PTR [rcx]
	je	.L37
	movzx	eax, WORD PTR 100[rsi]
	and	edx, -4194305
	mov	rcx, rsi
	mov	DWORD PTR 36[rsi], edx
	shr	ax, 5
	and	eax, 1
	mov	DWORD PTR 120[rbx], eax
	call	Player_TransitionCancelFlyingAndBoost
	mov	edx, 14
	mov	rcx, rsi
	call	Player_HandleSpriteYOffsetChange
	and	DWORD PTR 36[rsi], -5
	movabs	rax, 1010495166391255040
	mov	BYTE PTR 117[rsi], 3
	mov	QWORD PTR 20[rsi], rax
.L42:
	mov	BYTE PTR 125[rbx], 30
	mov	ecx, 291
	call	m4aSongNumStop
	mov	rax, QWORD PTR [rdi]
	lea	rdi, Task_Deactivate[rip]
	mov	QWORD PTR 40[rax], rdi
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L44:
	and	edx, -4194305
	mov	DWORD PTR 36[rsi], edx
	jmp	.L42
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_FlyingHandle
	.def	CreateEntity_FlyingHandle;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_FlyingHandle
CreateEntity_FlyingHandle:
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
	lea	rax, TaskDestructor_FlyingHandle[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rsi, rcx
	mov	r12d, edx
	mov	ebp, r8d
	mov	edi, r9d
	mov	r8d, 8208
	xor	r9d, r9d
	mov	edx, 152
	lea	rcx, Task_Idle[rip]
	call	TaskCreate
	movzx	r10d, r12w
	mov	rbx, QWORD PTR 24[rax]
	sal	r10d, 5
	mov	BYTE PTR 124[rbx], 0
	mov	QWORD PTR 112[rbx], 0
	movzx	eax, BYTE PTR [rsi]
	movsx	dx, BYTE PTR 3[rsi]
	movzx	r11d, BYTE PTR 5[rsi]
	add	r10d, eax
	mov	r8d, eax
	movzx	eax, bp
	movzx	ecx, BYTE PTR 6[rsi]
	sal	r10d, 3
	sal	eax, 5
	mov	DWORD PTR 80[rbx], r10d
	movzx	r9d, BYTE PTR 1[rsi]
	sal	edx, 3
	lea	r11d, [rdx+r11*8]
	mov	WORD PTR 104[rbx], dx
	add	r9d, eax
	movsx	ax, BYTE PTR 4[rsi]
	mov	WORD PTR 108[rbx], r11w
	movsx	r11d, r11w
	sal	r9d, 3
	mov	QWORD PTR 96[rbx], 0
	sal	eax, 3
	mov	DWORD PTR 84[rbx], r9d
	lea	ecx, [rax+rcx*8]
	mov	WORD PTR 106[rbx], ax
	movsx	eax, dx
	add	eax, r11d
	movsx	edx, cx
	mov	WORD PTR 110[rbx], cx
	movzx	ecx, r8b
	sar	eax
	add	edx, r9d
	mov	WORD PTR 8[rbx], r12w
	add	eax, r10d
	sal	edx, 8
	mov	WORD PTR 10[rbx], bp
	sal	eax, 8
	mov	DWORD PTR 92[rbx], edx
	mov	r11d, eax
	mov	DWORD PTR 88[rbx], eax
	mov	eax, edi
	mov	ch, al
	mov	DWORD PTR 132[rbx], edx
	xor	eax, eax
	mov	WORD PTR 12[rbx], cx
	mov	ecx, 4351
	mov	DWORD PTR 140[rbx], edx
	mov	DWORD PTR 148[rbx], edx
	xor	edx, edx
	mov	DWORD PTR 128[rbx], r11d
	mov	DWORD PTR 136[rbx], r11d
	mov	DWORD PTR 144[rbx], r11d
	mov	WORD PTR 52[rbx], dx
	mov	WORD PTR 32[rbx], ax
	mov	WORD PTR 65[rbx], cx
	mov	ecx, 25
	mov	QWORD PTR [rbx], rsi
	mov	DWORD PTR 58[rbx], 1152
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 8192
	call	VramMalloc
	mov	r8d, 592
	mov	BYTE PTR 64[rbx], 0
	lea	rcx, 16[rbx]
	mov	QWORD PTR 24[rbx], rax
	mov	WORD PTR 34[rbx], r8w
	call	UpdateSpriteAnimation
	mov	BYTE PTR [rsi], -2
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStartOrContinue;	.scl	2;	.type	32;	.endef
	.def	Player_TransitionCancelFlyingAndBoost;	.scl	2;	.type	32;	.endef
	.def	Player_HandleSpriteYOffsetChange;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStop;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gPlayerControls, "dr"
	.globl	.refptr.gPlayerControls
	.linkonce	discard
.refptr.gPlayerControls:
	.quad	gPlayerControls
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
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
