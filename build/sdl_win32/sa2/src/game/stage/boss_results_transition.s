	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_802EE78
	.def	Task_802EE78;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_802EE78
Task_802EE78:
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
	mov	rcx, rbx
	call	UpdateScreenFade
	movzx	eax, BYTE PTR 16[rbx]
	add	eax, 1
	mov	BYTE PTR 16[rbx], al
	cmp	al, 8
	jbe	.L1
	mov	rax, QWORD PTR .LC0[rip]
	mov	QWORD PTR 2[rbx], rax
	xor	eax, eax
	mov	WORD PTR 10[rbx], ax
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	eax, BYTE PTR [rax]
	cmp	al, 26
	je	.L4
	mov	rdx, QWORD PTR .refptr.gFlags[rip]
	and	DWORD PTR [rdx], -5
	cmp	al, 28
	jne	.L4
	movzx	r8d, BYTE PTR 17[rbx]
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	lea	rdx, gUnknown_080D6DE4[rip]
	movzx	eax, WORD PTR [rdx+r8*4]
	movzx	edx, WORD PTR 2[rdx+r8*4]
	mov	r8d, DWORD PTR 12[rcx]
	movq	xmm2, QWORD PTR 12[rcx]
	movd	xmm1, eax
	movd	xmm3, edx
	sar	r8d, 8
	movdqu	xmm0, xmm2
	punpckldq	xmm1, xmm3
	sub	eax, r8d
	mov	r8d, DWORD PTR 16[rcx]
	psrad	xmm0, 8
	sal	eax, 8
	psubd	xmm1, xmm0
	sar	r8d, 8
	movd	xmm0, eax
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	sub	edx, r8d
	sal	edx, 8
	movd	xmm4, edx
	punpckldq	xmm0, xmm4
	paddd	xmm2, xmm0
	movq	QWORD PTR 12[rcx], xmm2
	movq	xmm2, QWORD PTR [rax]
	paddd	xmm2, xmm1
	movq	QWORD PTR [rax], xmm2
	movq	xmm2, QWORD PTR 32[rax]
	paddd	xmm2, xmm1
	movq	QWORD PTR 32[rax], xmm2
	movq	xmm2, QWORD PTR 16[rax]
	paddd	xmm1, xmm2
	movq	QWORD PTR 16[rax], xmm1
	mov	rax, QWORD PTR .refptr.gCheese[rip]
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L6
	movq	xmm1, QWORD PTR [rax]
	paddd	xmm1, xmm0
	movq	QWORD PTR [rax], xmm1
.L6:
	mov	rax, QWORD PTR .refptr.gBossIndex[rip]
	add	BYTE PTR [rax], 1
.L4:
	mov	rax, QWORD PTR [rsi]
	lea	rcx, Task_802F06C[rip]
	mov	QWORD PTR 40[rax], rcx
.L1:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_802F06C
	.def	Task_802F06C;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_802F06C
Task_802F06C:
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
	mov	rcx, rbx
	call	UpdateScreenFade
	movzx	eax, BYTE PTR 16[rbx]
	add	eax, 1
	mov	BYTE PTR 16[rbx], al
	cmp	al, 120
	jbe	.L11
	mov	eax, 60
	lea	rdx, Task_802ED98[rip]
	mov	WORD PTR 6[rbx], ax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdx
.L11:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_802ED98
	.def	Task_802ED98;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_802ED98
Task_802ED98:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rbx]
	mov	rcx, QWORD PTR 24[rax]
	call	UpdateScreenFade
	cmp	al, 1
	je	.L25
.L13:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L25:
	mov	rcx, QWORD PTR [rbx]
	call	TaskDestroy
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	je	.L26
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	eax, BYTE PTR [rax]
	cmp	al, 28
	je	.L13
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L18
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	movzx	ecx, BYTE PTR 7[rdx]
	movsx	edx, al
	cmp	ecx, edx
	jg	.L18
	sar	al, 2
	cmp	al, 2
	je	.L19
	cmp	al, 4
	je	.L20
	test	al, al
	jne	.L18
	xor	ecx, ecx
	add	rsp, 32
	pop	rbx
	jmp	CreateStageResultsCutscene
	.p2align 4,,10
	.p2align 3
.L18:
	mov	rax, QWORD PTR .refptr.gRingCount[rip]
	movzx	edx, WORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gCourseTime[rip]
	mov	ecx, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gSpecialRingCount[rip]
	movzx	r8d, BYTE PTR [rax]
	add	rsp, 32
	pop	rbx
	jmp	CreateStageResults
	.p2align 4,,10
	.p2align 3
.L26:
	mov	rax, QWORD PTR .refptr.gCourseTime[rip]
	mov	ecx, DWORD PTR [rax]
	add	rsp, 32
	pop	rbx
	jmp	CreateTimeAttackResults
	.p2align 4,,10
	.p2align 3
.L19:
	mov	ecx, 1
	add	rsp, 32
	pop	rbx
	jmp	CreateStageResultsCutscene
	.p2align 4,,10
	.p2align 3
.L20:
	mov	ecx, 2
	add	rsp, 32
	pop	rbx
	jmp	CreateStageResultsCutscene
	.seh_endproc
	.p2align 4
	.globl	sub_802EF68
	.def	sub_802EF68;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_802EF68
sub_802EF68:
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
	mov	edi, ecx
	mov	esi, edx
	mov	ebx, r8d
	mov	edx, 18
	mov	r8d, 24704
	lea	rcx, Task_802EE78[rip]
	call	TaskCreate
	mov	rdx, QWORD PTR .LC2[rip]
	mov	ecx, 333
	mov	rax, QWORD PTR 24[rax]
	mov	BYTE PTR 16[rax], 0
	mov	WORD PTR 12[rax], di
	mov	WORD PTR 14[rax], si
	mov	BYTE PTR 17[rax], bl
	mov	QWORD PTR [rax], rdx
	mov	DWORD PTR 8[rax], 191
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	m4aSongNumStart
	.seh_endproc
	.p2align 4
	.globl	InitHBlankBgOffsets
	.def	InitHBlankBgOffsets;	.scl	2;	.type	32;	.endef
	.seh_proc	InitHBlankBgOffsets
InitHBlankBgOffsets:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	mov	r8, QWORD PTR .refptr.gBgOffsetsBuffer[rip]
	mov	r9d, -2063597088
	cmp	QWORD PTR [rax], r8
	movzx	ecx, cx
	lea	rdx, 44[rsp]
	mov	DWORD PTR 44[rsp], ecx
	je	.L31
	add	r8, 1920
.L31:
	mov	ecx, 3
	call	DmaSet
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	SetBgOffsetsInRange
	.def	SetBgOffsetsInRange;	.scl	2;	.type	32;	.endef
	.seh_proc	SetBgOffsetsInRange
SetBgOffsetsInRange:
	.seh_endprologue
	mov	r10, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	movzx	eax, dx
	add	rax, rax
	add	rax, QWORD PTR [r10]
	cmp	dx, r8w
	jnb	.L32
	sub	r8d, 1
	sub	r8d, edx
	movzx	r8d, r8w
	lea	rdx, 2[rax+r8*2]
	and	r8d, 1
	jne	.L34
	add	rax, 2
	mov	WORD PTR -2[rax], cx
	cmp	rax, rdx
	je	.L32
	.p2align 4,,10
	.p2align 3
.L34:
	mov	WORD PTR [rax], cx
	add	rax, 4
	mov	WORD PTR -2[rax], cx
	cmp	rax, rdx
	jne	.L34
.L32:
	ret
	.seh_endproc
	.globl	gUnknown_080D6DE4
	.section .rdata,"dr"
	.align 16
gUnknown_080D6DE4:
	.word	3800
	.word	177
	.word	11864
	.word	145
	.word	16088
	.word	177
	.word	21080
	.word	153
	.word	27000
	.word	150
	.word	-29478
	.word	201
	.word	-25536
	.word	225
	.align 8
.LC0:
	.word	2
	.word	0
	.word	0
	.word	191
	.align 8
.LC2:
	.word	0
	.word	1
	.word	2048
	.word	192
	.ident	"GCC: (GNU) 13-win32"
	.def	UpdateScreenFade;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	CreateStageResultsCutscene;	.scl	2;	.type	32;	.endef
	.def	CreateStageResults;	.scl	2;	.type	32;	.endef
	.def	CreateTimeAttackResults;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gBgOffsetsBuffer, "dr"
	.globl	.refptr.gBgOffsetsBuffer
	.linkonce	discard
.refptr.gBgOffsetsBuffer:
	.quad	gBgOffsetsBuffer
	.section	.rdata$.refptr.gBgOffsetsHBlankPrimary, "dr"
	.globl	.refptr.gBgOffsetsHBlankPrimary
	.linkonce	discard
.refptr.gBgOffsetsHBlankPrimary:
	.quad	gBgOffsetsHBlankPrimary
	.section	.rdata$.refptr.gRingCount, "dr"
	.globl	.refptr.gRingCount
	.linkonce	discard
.refptr.gRingCount:
	.quad	gRingCount
	.section	.rdata$.refptr.gSpecialRingCount, "dr"
	.globl	.refptr.gSpecialRingCount
	.linkonce	discard
.refptr.gSpecialRingCount:
	.quad	gSpecialRingCount
	.section	.rdata$.refptr.gLoadedSaveGame, "dr"
	.globl	.refptr.gLoadedSaveGame
	.linkonce	discard
.refptr.gLoadedSaveGame:
	.quad	gLoadedSaveGame
	.section	.rdata$.refptr.gSelectedCharacter, "dr"
	.globl	.refptr.gSelectedCharacter
	.linkonce	discard
.refptr.gSelectedCharacter:
	.quad	gSelectedCharacter
	.section	.rdata$.refptr.gCourseTime, "dr"
	.globl	.refptr.gCourseTime
	.linkonce	discard
.refptr.gCourseTime:
	.quad	gCourseTime
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gBossIndex, "dr"
	.globl	.refptr.gBossIndex
	.linkonce	discard
.refptr.gBossIndex:
	.quad	gBossIndex
	.section	.rdata$.refptr.gCheese, "dr"
	.globl	.refptr.gCheese
	.linkonce	discard
.refptr.gCheese:
	.quad	gCheese
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
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
