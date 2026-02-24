	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_InteractableTecBaseLightBridge;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_InteractableTecBaseLightBridge
TaskDestructor_InteractableTecBaseLightBridge:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 144[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	RenderBridge;	.scl	3;	.type	32;	.endef
	.seh_proc	RenderBridge
RenderBridge:
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
	movups	XMMWORD PTR 32[rsp], xmm6
	.seh_savexmm	xmm6, 32
	.seh_endprologue
	movzx	eax, BYTE PTR 136[rcx]
	mov	rsi, rcx
	test	al, al
	je	.L4
	cmp	al, 1
	jne	.L3
	mov	rdx, QWORD PTR .refptr.gStageTime[rip]
	mov	eax, DWORD PTR 132[rcx]
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	mov	ebx, DWORD PTR [rdx]
	mov	edx, DWORD PTR 128[rsi]
	sub	eax, DWORD PTR 4[rcx]
	sub	edx, DWORD PTR [rcx]
	shr	ebx
	add	eax, 4
	movzx	edx, dx
	mov	edi, ebx
	sal	eax, 16
	and	ebx, 1
	or	eax, edx
	neg	rbx
	and	edi, 1
	movd	xmm6, eax
	and	ebx, 6
	lea	rax, sCurvedBridgePositions[rip]
	add	rbx, rax
	.p2align 4,,10
	.p2align 3
.L10:
	movd	xmm0, DWORD PTR [rbx]
	movsx	rax, WORD PTR 4[rbx]
	add	edi, 2
	add	rbx, 12
	paddw	xmm0, xmm6
	sal	rax, 6
	mov	rcx, rax
	add	rcx, rsi
	movd	DWORD PTR 38[rsi+rax], xmm0
	call	DisplaySprite
	cmp	dil, 11
	jbe	.L10
.L3:
	movups	xmm6, XMMWORD PTR 32[rsp]
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	ebp, DWORD PTR 128[rcx]
	lea	r13, 64[rcx]
	mov	r12d, DWORD PTR 132[rcx]
	sub	ebp, DWORD PTR [rdx]
	sub	r12w, WORD PTR 4[rdx]
	mov	rdx, QWORD PTR .refptr.gStageTime[rip]
	lea	eax, -112[rbp]
	add	ebp, 112
	mov	ebx, eax
	mov	edi, DWORD PTR [rdx]
	mov	edx, 246
	shr	edi
	and	edi, 1
	cmp	bp, dx
	cmovg	ebp, edx
	cmp	ax, bp
	jle	.L7
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L8:
	add	ebx, 12
	add	edi, 1
	cmp	bx, bp
	jg	.L3
.L7:
	cmp	bx, 5
	jle	.L8
	test	dil, 1
	je	.L8
	mov	WORD PTR 102[rsi], bx
	mov	rcx, r13
	mov	WORD PTR 104[rsi], r12w
	call	DisplaySprite
	jmp	.L8
	.seh_endproc
	.p2align 4
	.def	IsPlayerWithinRange.part.0.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	IsPlayerWithinRange.part.0.isra.0
IsPlayerWithinRange.part.0.isra.0:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	lea	r10, sWithinRangeDimensions[rip]
	mov	eax, DWORD PTR [rdi]
	movzx	r11d, WORD PTR 13[rbx]
	sub	r11d, eax
	movzx	r8d, r8b
	mov	r9d, edx
	sub	ecx, eax
	movzx	edx, WORD PTR [r10+r8*8]
	movsx	eax, cx
	add	eax, edx
	mov	esi, edx
	xor	edx, edx
	cmp	r11w, ax
	jl	.L20
	mov	edx, DWORD PTR 4[rdi]
	movzx	ecx, WORD PTR 17[rbx]
	cwde
	movzx	ebx, WORD PTR 2[r10+r8*8]
	sub	r9d, edx
	sub	ecx, edx
	movsx	r9d, r9w
	movzx	edx, bx
	add	r9d, edx
	movzx	edx, WORD PTR 4[r10+r8*8]
	sub	edx, esi
	movsx	edx, dx
	add	eax, edx
	movsx	edx, r11w
	cmp	eax, edx
	jl	.L23
	cmp	cx, r9w
	jge	.L30
.L23:
	xor	edx, edx
.L20:
	mov	eax, edx
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L30:
	movzx	eax, WORD PTR 6[r10+r8*8]
	movsx	r9d, r9w
	movsx	ecx, cx
	xor	edx, edx
	sub	eax, ebx
	cwde
	add	eax, r9d
	cmp	eax, ecx
	setge	dl
	mov	eax, edx
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_LightBridgeInactive;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_LightBridgeInactive
Task_LightBridgeInactive:
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
	mov	r14, QWORD PTR .refptr.gPlayer[rip]
	mov	r13, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[r13]
	mov	esi, DWORD PTR 128[rbx]
	mov	r12d, DWORD PTR 132[rbx]
	movzx	ebp, BYTE PTR 136[rbx]
	test	BYTE PTR 36[r14], -128
	jne	.L32
	mov	r8d, ebp
	mov	edx, r12d
	mov	ecx, esi
	call	IsPlayerWithinRange.part.0.isra.0
	test	eax, eax
	je	.L32
	movzx	eax, BYTE PTR 60[r14]
	mov	BYTE PTR 138[rbx], al
	lea	rax, Task_LightBridgeActive[rip]
	mov	QWORD PTR 40[r13], rax
	movzx	ebp, BYTE PTR 136[rbx]
.L32:
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	lea	rcx, sOutOfRangeDimensions[rip]
	movzx	r8d, bpl
	movsx	edx, WORD PTR 4[rcx+r8*8]
	sub	esi, DWORD PTR [rax]
	mov	r9d, DWORD PTR 4[rax]
	movsx	eax, si
	add	edx, eax
	cmp	edx, -128
	jl	.L33
	movsx	edx, WORD PTR [rcx+r8*8]
	add	eax, edx
	cmp	eax, 554
	jg	.L33
	mov	eax, r12d
	movsx	edx, WORD PTR 6[rcx+r8*8]
	sub	eax, r9d
	cwde
	add	edx, eax
	cmp	edx, -128
	jl	.L33
	movsx	edx, WORD PTR 2[rcx+r8*8]
	add	eax, edx
	cmp	eax, 368
	jg	.L33
	lea	rdx, sSoundDurations[rip]
	mov	rcx, QWORD PTR .refptr.gStageTime[rip]
	movzx	eax, BYTE PTR 140[rbx]
	movzx	r9d, WORD PTR [rdx+r8*4]
	add	eax, DWORD PTR [rcx]
	movzx	ecx, WORD PTR 2[rdx+r8*4]
	movzx	edx, r9w
	add	ecx, edx
	xor	edx, edx
	div	ecx
	movzx	eax, BYTE PTR 139[rbx]
	cmp	dx, r9w
	setb	BYTE PTR 137[rbx]
	jb	.L45
	test	al, al
	jne	.L46
	add	rsp, 32
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
.L33:
	mov	ecx, 295
	call	m4aSongNumStop
	mov	rax, QWORD PTR 152[rbx]
	movzx	edx, BYTE PTR 160[rbx]
	mov	BYTE PTR [rax], dl
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
.L45:
	test	al, al
	je	.L36
.L40:
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	jmp	RenderBridge
	.p2align 4,,10
	.p2align 3
.L46:
	mov	ecx, 295
	call	m4aSongNumStop
	xor	eax, eax
.L37:
	cmp	BYTE PTR 137[rbx], 0
	mov	BYTE PTR 139[rbx], al
	jne	.L40
	add	rsp, 32
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
.L36:
	mov	ecx, 295
	call	m4aSongNumStart
	mov	eax, 1
	jmp	.L37
	.seh_endproc
	.p2align 4
	.def	Task_LightBridgeActive;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_LightBridgeActive
Task_LightBridgeActive:
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rbp, QWORD PTR .refptr.gPlayer[rip]
	mov	r12, QWORD PTR [rax]
	movzx	eax, BYTE PTR 60[rbp]
	mov	rbx, QWORD PTR 24[r12]
	movzx	edx, BYTE PTR 137[rbx]
	test	BYTE PTR 36[rbp], -128
	jne	.L48
	mov	ecx, eax
	movzx	edi, BYTE PTR 136[rbx]
	or	eax, 1
	and	ecx, -2
	test	dl, dl
	mov	edx, DWORD PTR 132[rbx]
	mov	esi, ecx
	mov	ecx, DWORD PTR 128[rbx]
	mov	r8d, edi
	cmove	esi, eax
	mov	BYTE PTR 60[rbp], sil
	call	IsPlayerWithinRange.part.0.isra.0
	test	eax, eax
	je	.L63
.L54:
	lea	rdx, sSoundDurations[rip]
	mov	rcx, QWORD PTR .refptr.gStageTime[rip]
	movzx	r8d, dil
	movzx	eax, BYTE PTR 140[rbx]
	movzx	r9d, WORD PTR [rdx+r8*4]
	add	eax, DWORD PTR [rcx]
	movzx	ecx, WORD PTR 2[rdx+r8*4]
	movzx	edx, r9w
	add	ecx, edx
	xor	edx, edx
	div	ecx
	movzx	eax, BYTE PTR 139[rbx]
	cmp	dx, r9w
	setb	BYTE PTR 137[rbx]
	jb	.L64
	test	al, al
	jne	.L65
.L47:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L65:
	mov	ecx, 295
	call	m4aSongNumStop
	xor	eax, eax
.L57:
	cmp	BYTE PTR 137[rbx], 0
	mov	BYTE PTR 139[rbx], al
	je	.L47
.L60:
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	RenderBridge
	.p2align 4,,10
	.p2align 3
.L48:
	lea	rdx, Task_LightBridgeInactive[rip]
	or	eax, 1
	mov	QWORD PTR 40[r12], rdx
	movzx	edi, BYTE PTR 136[rbx]
.L53:
	mov	BYTE PTR 60[rbp], al
	mov	QWORD PTR 40[r12], rdx
	jmp	.L54
	.p2align 4,,10
	.p2align 3
.L64:
	test	al, al
	jne	.L60
	mov	ecx, 295
	call	m4aSongNumStart
	mov	eax, 1
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L63:
	mov	eax, esi
	lea	rdx, Task_LightBridgeInactive[rip]
	or	eax, 1
	jmp	.L53
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_LightBridge
	.def	CreateEntity_LightBridge;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_LightBridge
CreateEntity_LightBridge:
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
	lea	rax, TaskDestructor_InteractableTecBaseLightBridge[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	r12, rcx
	mov	ebp, r9d
	mov	esi, edx
	xor	r9d, r9d
	mov	edi, r8d
	mov	edx, 168
	movzx	esi, si
	mov	r8d, 8208
	lea	rcx, Task_LightBridgeInactive[rip]
	sal	esi, 5
	movzx	edi, di
	call	TaskCreate
	sal	edi, 5
	mov	ecx, 4
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, BYTE PTR 3[r12]
	mov	BYTE PTR 136[rbx], al
	movzx	eax, BYTE PTR 4[r12]
	mov	BYTE PTR 137[rbx], 0
	mov	BYTE PTR 140[rbx], al
	mov	BYTE PTR 139[rbx], 0
	movzx	eax, BYTE PTR [r12]
	add	esi, eax
	mov	edx, eax
	sal	esi, 3
	mov	DWORD PTR 128[rbx], esi
	movzx	eax, BYTE PTR 1[r12]
	mov	QWORD PTR 152[rbx], r12
	add	eax, edi
	sal	eax, 3
	mov	DWORD PTR 132[rbx], eax
	movzx	eax, dl
	mov	edx, ebp
	mov	ah, dl
	mov	WORD PTR 160[rbx], ax
	call	VramMalloc
	mov	edi, DWORD PTR .LC0[rip]
	mov	BYTE PTR 50[rbx], 16
	mov	rcx, rbx
	mov	edx, -256
	mov	rsi, rax
	mov	BYTE PTR 53[rbx], 0
	mov	QWORD PTR 144[rbx], rax
	xor	eax, eax
	mov	WORD PTR 48[rbx], dx
	mov	QWORD PTR 8[rbx], rsi
	add	rsi, 64
	mov	WORD PTR 36[rbx], ax
	mov	DWORD PTR 42[rbx], 1152
	mov	DWORD PTR 56[rbx], -1
	mov	DWORD PTR 32[rbx], 8192
	mov	DWORD PTR 16[rbx], edi
	call	UpdateSpriteAnimation
	xor	ecx, ecx
	mov	r8d, -255
	mov	DWORD PTR 80[rbx], edi
	mov	WORD PTR 100[rbx], cx
	lea	rcx, 64[rbx]
	mov	DWORD PTR 106[rbx], 1152
	mov	BYTE PTR 114[rbx], 16
	mov	BYTE PTR 117[rbx], 0
	mov	DWORD PTR 120[rbx], -1
	mov	DWORD PTR 96[rbx], 8192
	mov	WORD PTR 112[rbx], r8w
	mov	QWORD PTR 72[rbx], rsi
	call	UpdateSpriteAnimation
	mov	BYTE PTR [r12], -2
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
sCurvedBridgePositions:
	.word	0
	.word	0
	.word	1
	.word	11
	.word	-2
	.word	1
	.word	23
	.word	-5
	.word	1
	.word	35
	.word	-9
	.word	1
	.word	48
	.word	-15
	.word	1
	.word	58
	.word	-23
	.word	1
	.word	68
	.word	-34
	.word	0
	.word	76
	.word	-44
	.word	0
	.word	83
	.word	-58
	.word	0
	.word	88
	.word	-69
	.word	0
	.word	91
	.word	-81
	.word	0
	.word	92
	.word	-92
	.word	0
	.align 8
sSoundDurations:
	.word	180
	.word	60
	.word	180
	.word	60
	.align 16
sWithinRangeDimensions:
	.word	-120
	.word	-32
	.word	120
	.word	-4
	.word	0
	.word	-96
	.word	96
	.word	0
	.align 16
sOutOfRangeDimensions:
	.word	-120
	.word	0
	.word	120
	.word	0
	.word	0
	.word	-96
	.word	96
	.word	0
	.align 4
.LC0:
	.word	0
	.word	601
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStop;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
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
