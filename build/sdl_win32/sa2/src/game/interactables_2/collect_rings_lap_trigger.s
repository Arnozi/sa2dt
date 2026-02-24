	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_NotifRingBonus;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_NotifRingBonus
TaskDestructor_NotifRingBonus:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 8[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	Task_NotifRingBonus;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_NotifRingBonus
Task_NotifRingBonus:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR [rax]
	mov	rcx, QWORD PTR 24[rdx]
	movzx	eax, WORD PTR 64[rcx]
	sub	eax, 1
	mov	WORD PTR 64[rcx], ax
	cmp	ax, -1
	je	.L5
	mov	DWORD PTR 38[rcx], 4718805
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L5:
	mov	rcx, rdx
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.def	Task_LapTriggerInactive;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_LapTriggerInactive
Task_LapTriggerInactive:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR .refptr.gPlayer[rip]
	mov	rdi, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rdi]
	test	BYTE PTR 36[r8], -128
	je	.L7
	movzx	edx, WORD PTR 26[rax]
	mov	WORD PTR 24[rax], dx
.L7:
	mov	r9, QWORD PTR .refptr.gCamera[rip]
	mov	r10d, DWORD PTR 12[r8]
	movzx	ecx, WORD PTR [rax]
	movsx	r11d, WORD PTR 8[rax]
	sub	cx, WORD PTR [r9]
	mov	edx, r10d
	movq	xmm0, QWORD PTR [r9]
	movsx	ecx, cx
	sar	edx, 8
	sub	dx, WORD PTR [r9]
	mov	ebx, DWORD PTR 4[rax]
	movsx	edx, dx
	add	r11d, ecx
	mov	esi, DWORD PTR 16[r8]
	cmp	r11d, edx
	jg	.L8
	movsx	r11d, WORD PTR 12[rax]
	add	ecx, r11d
	cmp	edx, ecx
	jg	.L8
	mov	edx, esi
	pshufd	xmm4, xmm0, 0xe5
	movd	ecx, xmm4
	sar	edx, 8
	sub	ebx, ecx
	sub	edx, ecx
	movsx	ecx, WORD PTR 10[rax]
	movsx	ebx, bx
	movsx	edx, dx
	add	ecx, ebx
	cmp	ecx, edx
	jg	.L8
	movsx	ecx, WORD PTR 14[rax]
	add	ecx, ebx
	cmp	edx, ecx
	jle	.L23
	.p2align 4,,10
	.p2align 3
.L8:
	mov	DWORD PTR 32[rax], r10d
.L9:
	mov	eax, DWORD PTR 28[rax]
	test	eax, eax
	je	.L6
	cmp	r10d, 61439
	jg	.L11
	cmp	esi, 73727
	jg	.L6
	movq	xmm1, QWORD PTR .LC1[rip]
	mov	eax, 221184
	mov	edx, 368640
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L11:
	cmp	esi, 221184
	jle	.L6
	cmp	r10d, 430080
	jle	.L6
	movq	xmm1, QWORD PTR .LC2[rip]
	mov	eax, -221184
	mov	edx, -368640
.L12:
	movq	xmm2, QWORD PTR 32[r9]
	add	r10d, edx
	add	esi, eax
	mov	DWORD PTR 12[r8], r10d
	movdqu	xmm3, xmm2
	movq	xmm2, QWORD PTR 16[r9]
	mov	DWORD PTR 16[r8], esi
	paddd	xmm3, xmm1
	paddd	xmm2, xmm1
	paddd	xmm1, xmm0
	movq	QWORD PTR 32[r9], xmm3
	movq	QWORD PTR [r9], xmm1
	movq	QWORD PTR 16[r9], xmm2
.L6:
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	lea	rbx, Task_LapTriggerActive[rip]
	mov	QWORD PTR 40[rdi], rbx
	jmp	.L9
	.seh_endproc
	.p2align 4
	.def	Task_LapTriggerActive;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_LapTriggerActive
Task_LapTriggerActive:
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
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rdi, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	r10, QWORD PTR [rsi]
	mov	r9d, DWORD PTR 12[rdi]
	mov	ebp, DWORD PTR [rax]
	mov	r12d, DWORD PTR 4[rax]
	mov	rbx, QWORD PTR 24[r10]
	mov	eax, r9d
	mov	r11d, DWORD PTR 16[rdi]
	sar	eax, 8
	mov	edx, DWORD PTR [rbx]
	movsx	ecx, WORD PTR 8[rbx]
	sub	eax, ebp
	cwde
	mov	r13d, DWORD PTR 4[rbx]
	mov	r8d, edx
	sub	r8d, ebp
	movsx	ebp, WORD PTR 12[rbx]
	movsx	r8d, r8w
	lea	r14d, [r8+rcx]
	cmp	r14d, eax
	jg	.L25
	add	r8d, ebp
	cmp	eax, r8d
	jg	.L25
	movsx	eax, WORD PTR 10[rbx]
	sub	r13d, r12d
	sar	r11d, 8
	movsx	r13d, r13w
	sub	r11d, r12d
	movsx	r11d, r11w
	add	eax, r13d
	cmp	eax, r11d
	jg	.L25
	movsx	eax, WORD PTR 14[rbx]
	add	eax, r13d
	cmp	r11d, eax
	jg	.L25
	add	rsp, 48
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
.L25:
	add	ecx, edx
	mov	eax, DWORD PTR 32[rbx]
	add	edx, ebp
	sal	ecx, 8
	sal	edx, 8
	cmp	eax, ecx
	jge	.L27
	cmp	r9d, edx
	jle	.L27
	mov	ebp, DWORD PTR 28[rbx]
	test	ebp, ebp
	je	.L28
	movzx	eax, WORD PTR 24[rbx]
	add	eax, 1
	mov	WORD PTR 24[rbx], ax
	cmp	ax, WORD PTR 26[rbx]
	jle	.L38
	mov	r13, QWORD PTR .refptr.gCheckpointTime[rip]
	mov	WORD PTR 26[rbx], ax
	mov	edx, 5
	mov	r12d, DWORD PTR 0[r13]
	sub	r12w, WORD PTR 20[rbx]
	cmp	r12w, 1800
	ja	.L31
	cmp	r12w, 1201
	sbb	edx, edx
	and	edx, 5
	add	edx, 10
.L31:
	mov	r8, QWORD PTR .refptr.gRingCount[rip]
	mov	rcx, QWORD PTR .refptr.gGameMode[rip]
	movzx	eax, WORD PTR [r8]
	movzx	r9d, BYTE PTR [rcx]
	mov	rcx, QWORD PTR .refptr.gCurrentLevel[rip]
	add	edx, eax
	cmp	BYTE PTR [rcx], 29
	mov	WORD PTR [r8], dx
	je	.L32
	mov	ecx, edx
	shr	ax, 2
	shr	cx, 2
	movzx	eax, ax
	movzx	ecx, cx
	imul	eax, eax, 5243
	imul	ecx, ecx, 5243
	shr	eax, 17
	shr	ecx, 17
	cmp	cx, ax
	je	.L32
	test	r9b, r9b
	jne	.L32
	mov	rdx, QWORD PTR .refptr.gNumLives[rip]
	movzx	eax, BYTE PTR [rdx]
	cmp	al, -1
	setne	cl
	add	eax, ecx
	mov	BYTE PTR [rdx], al
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 3[rax], 16
.L34:
	mov	ecx, 411
	movzx	r12d, r12w
	call	m4aSongNumStart
	lea	rax, TaskDestructor_NotifRingBonus[rip]
	xor	r9d, r9d
	mov	r8d, 8208
	mov	QWORD PTR 32[rsp], rax
	mov	edx, 72
	lea	rcx, Task_NotifRingBonus[rip]
	call	TaskCreate
	mov	r9d, 4351
	xor	r8d, r8d
	xor	ecx, ecx
	mov	rbp, QWORD PTR 24[rax]
	mov	edx, 120
	mov	WORD PTR 49[rbp], r9w
	mov	WORD PTR 64[rbp], dx
	mov	WORD PTR 16[rbp], cx
	mov	ecx, 26
	mov	WORD PTR 36[rbp], r8w
	mov	DWORD PTR 42[rbp], 64
	mov	BYTE PTR 53[rbp], 0
	mov	DWORD PTR 56[rbp], -1
	mov	DWORD PTR 32[rbp], 4096
	call	VramMalloc
	mov	r10d, 735
	mov	BYTE PTR 48[rbp], 0
	mov	rcx, rbp
	mov	WORD PTR 18[rbp], r10w
	mov	QWORD PTR 8[rbp], rax
	call	UpdateSpriteAnimation
	mov	eax, DWORD PTR 0[r13]
	mov	r9d, DWORD PTR 12[rdi]
	mov	r10, QWORD PTR [rsi]
	mov	DWORD PTR 20[rbx], eax
	mov	rax, QWORD PTR .refptr.gCollectRingsLastLapTime[rip]
	mov	DWORD PTR [rax], r12d
	.p2align 4,,10
	.p2align 3
.L38:
	mov	DWORD PTR 32[rbx], r9d
.L36:
	lea	rax, Task_LapTriggerInactive[rip]
	mov	QWORD PTR 40[r10], rax
	add	rsp, 48
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
.L27:
	cmp	r9d, ecx
	jge	.L36
	cmp	eax, edx
	jle	.L36
	mov	eax, DWORD PTR 28[rbx]
	test	eax, eax
	je	.L38
	sub	WORD PTR 24[rbx], 1
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L28:
	mov	rax, QWORD PTR .refptr.gCheckpointTime[rip]
	mov	DWORD PTR 28[rbx], 1
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR 20[rbx], eax
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L32:
	cmp	r9b, 5
	jne	.L34
	cmp	dx, 255
	jbe	.L34
	mov	r11d, 255
	mov	WORD PTR [r8], r11w
	jmp	.L34
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_CollectRingsLapTrigger
	.def	CreateEntity_CollectRingsLapTrigger;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_CollectRingsLapTrigger
CreateEntity_CollectRingsLapTrigger:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	xor	r9d, r9d
	mov	QWORD PTR 32[rsp], 0
	mov	rbx, rcx
	mov	edi, edx
	mov	esi, r8d
	mov	edx, 36
	mov	r8d, 8208
	movzx	edi, di
	movzx	esi, si
	lea	rcx, Task_LapTriggerInactive[rip]
	sal	edi, 5
	sal	esi, 5
	call	TaskCreate
	mov	rcx, QWORD PTR 24[rax]
	mov	QWORD PTR 20[rcx], 0
	movsx	r8w, BYTE PTR 4[rbx]
	mov	DWORD PTR 28[rcx], 0
	movzx	eax, BYTE PTR [rbx]
	movzx	r9d, BYTE PTR 6[rbx]
	movsx	dx, BYTE PTR 3[rbx]
	sal	r8d, 3
	add	eax, edi
	movzx	r10d, BYTE PTR 5[rbx]
	sal	eax, 3
	sal	r9d, 3
	mov	DWORD PTR [rcx], eax
	movzx	eax, BYTE PTR 1[rbx]
	sal	edx, 3
	sal	r10d, 3
	lea	r11d, [rdx+r10]
	movzx	edx, dx
	mov	WORD PTR 16[rcx], r10w
	add	esi, eax
	lea	eax, [r8+r9]
	movzx	r11d, r11w
	movzx	r8d, r8w
	movzx	eax, ax
	sal	esi, 3
	mov	WORD PTR 18[rcx], r9w
	sal	rax, 16
	mov	DWORD PTR 4[rcx], esi
	or	rax, r11
	sal	rax, 16
	or	rax, r8
	sal	rax, 16
	or	rax, rdx
	mov	QWORD PTR 8[rcx], rax
	mov	BYTE PTR [rbx], -2
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC1:
	.long	1440
	.long	864
	.align 8
.LC2:
	.long	-1440
	.long	-864
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gCollectRingsLastLapTime, "dr"
	.globl	.refptr.gCollectRingsLastLapTime
	.linkonce	discard
.refptr.gCollectRingsLastLapTime:
	.quad	gCollectRingsLastLapTime
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
	.section	.rdata$.refptr.gCheckpointTime, "dr"
	.globl	.refptr.gCheckpointTime
	.linkonce	discard
.refptr.gCheckpointTime:
	.quad	gCheckpointTime
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
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
