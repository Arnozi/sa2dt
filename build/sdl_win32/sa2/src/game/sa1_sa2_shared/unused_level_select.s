	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	Task_Poll;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Poll
Task_Poll:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 88
	.seh_stackalloc	88
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rbx]
	mov	rsi, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	movzx	eax, WORD PTR [rax]
	test	al, 9
	jne	.L11
	test	al, 2
	jne	.L12
	mov	rax, QWORD PTR .refptr.gRepeatedKeys[rip]
	movzx	edx, BYTE PTR 10[rsi]
	movzx	eax, WORD PTR [rax]
	test	al, 32
	je	.L5
	sub	edx, 1
	mov	BYTE PTR 10[rsi], dl
.L6:
	lea	rbx, 75[rsp]
	movzx	edx, dl
	mov	rcx, rbx
	call	numToASCII
	mov	rcx, QWORD PTR [rsi]
	mov	QWORD PTR 40[rsp], rbx
	mov	r9d, 14
	mov	DWORD PTR 48[rsp], 0
	mov	rdx, QWORD PTR .refptr.Tileset_DebugAscii[rip]
	mov	r8d, 12
	mov	DWORD PTR 32[rsp], 0
	call	RenderText
	nop
	add	rsp, 88
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L12:
	mov	ecx, 107
	call	m4aSongNumStart
	mov	rcx, QWORD PTR [rbx]
	call	TaskDestroy
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	mov	DWORD PTR [rax], 553582592
	add	rsp, 88
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L11:
	mov	ecx, 106
	lea	rsi, Task_LoadStage[rip]
	call	m4aSongNumStart
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	mov	DWORD PTR [rax], 553582592
	mov	rax, QWORD PTR [rbx]
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 88
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	test	al, 16
	je	.L6
	add	edx, 1
	mov	BYTE PTR 10[rsi], dl
	jmp	.L6
	.seh_endproc
	.section .rdata,"dr"
.LC2:
	.ascii "STAGE\0"
	.text
	.p2align 4
	.def	Task_UnusedLevelSelectInit;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_UnusedLevelSelectInit
Task_UnusedLevelSelectInit:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	edx, 32767
	mov	r9d, 14
	mov	r8d, 6
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gBgPalette[rip]
	mov	WORD PTR 2[rax], dx
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	mov	rcx, QWORD PTR [rbx]
	mov	rdx, QWORD PTR .refptr.Tileset_DebugAscii[rip]
	or	DWORD PTR [rax], 1
	lea	rax, .LC2[rip]
	mov	DWORD PTR 48[rsp], 0
	mov	QWORD PTR 40[rsp], rax
	mov	DWORD PTR 32[rsp], 0
	call	RenderText
	lea	rdx, Task_Poll[rip]
	cdqe
	add	QWORD PTR [rbx], rax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 72
	pop	rbx
	pop	rsi
	jmp	Task_Poll
	.seh_endproc
	.p2align 4
	.def	Task_LoadStage;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_LoadStage
Task_LoadStage:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rcx]
	movzx	ebx, BYTE PTR 10[rax]
	call	TaskDestroy
	test	bl, bl
	je	.L18
	cmp	bl, 34
	jbe	.L19
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L19:
	mov	rax, QWORD PTR .refptr.gActiveBossTask[rip]
	sub	ebx, 1
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	BYTE PTR [rax], bl
.L17:
	call	ApplyGameStageSettings
	mov	edx, -1
	mov	ecx, -1
	add	rsp, 32
	pop	rbx
	jmp	CreateSpecialStage
	.p2align 4,,10
	.p2align 3
.L18:
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	BYTE PTR [rax], 0
	jmp	.L17
	.seh_endproc
	.p2align 4
	.globl	CreateUnusedLevelSelect
	.def	CreateUnusedLevelSelect;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateUnusedLevelSelect
CreateUnusedLevelSelect:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueIndex[rip]
	xor	r9d, r9d
	mov	r8d, 8192
	lea	rcx, Task_UnusedLevelSelectInit[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueCursor[rip]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyQueueIndex[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyCursor[rip]
	mov	BYTE PTR [rax], dl
	mov	edx, 16
	mov	QWORD PTR 32[rsp], 0
	call	TaskCreate
	mov	ecx, 320
	xor	r9d, r9d
	xor	r10d, r10d
	mov	rdx, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
	mov	rax, QWORD PTR 24[rax]
	mov	r8d, 7942
	movdqu	xmm0, XMMWORD PTR .LC3[rip]
	mov	DWORD PTR [rdx], 0
	mov	rdx, QWORD PTR .refptr.gDispCnt[rip]
	mov	WORD PTR 8[rax], r9w
	mov	WORD PTR [rdx], cx
	mov	rdx, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	rcx, QWORD PTR .refptr.VRAM[rip]
	mov	BYTE PTR 10[rax], 0
	mov	WORD PTR [rdx], r8w
	lea	rdx, 16416[rcx]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	mov	DWORD PTR [rax], 0
	mov	WORD PTR 4[rax], r10w
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	movups	XMMWORD PTR [rax], xmm0
	mov	QWORD PTR 16[rax], 0
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	DWORD PTR [rax], 0
	add	rsp, 56
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 16
.LC3:
	.long	27918762
	.long	27918762
	.long	15728880
	.long	15728880
	.ident	"GCC: (GNU) 13-win32"
	.def	numToASCII;	.scl	2;	.type	32;	.endef
	.def	RenderText;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	ApplyGameStageSettings;	.scl	2;	.type	32;	.endef
	.def	CreateSpecialStage;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gBgScrollRegs, "dr"
	.globl	.refptr.gBgScrollRegs
	.linkonce	discard
.refptr.gBgScrollRegs:
	.quad	gBgScrollRegs
	.section	.rdata$.refptr.gWinRegs, "dr"
	.globl	.refptr.gWinRegs
	.linkonce	discard
.refptr.gWinRegs:
	.quad	gWinRegs
	.section	.rdata$.refptr.gBldRegs, "dr"
	.globl	.refptr.gBldRegs
	.linkonce	discard
.refptr.gBldRegs:
	.quad	gBldRegs
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gBgCntRegs, "dr"
	.globl	.refptr.gBgCntRegs
	.linkonce	discard
.refptr.gBgCntRegs:
	.quad	gBgCntRegs
	.section	.rdata$.refptr.gDispCnt, "dr"
	.globl	.refptr.gDispCnt
	.linkonce	discard
.refptr.gDispCnt:
	.quad	gDispCnt
	.section	.rdata$.refptr.gMultiplayerMissingHeartbeats, "dr"
	.globl	.refptr.gMultiplayerMissingHeartbeats
	.linkonce	discard
.refptr.gMultiplayerMissingHeartbeats:
	.quad	gMultiplayerMissingHeartbeats
	.section	.rdata$.refptr.gVramGraphicsCopyQueueIndex, "dr"
	.globl	.refptr.gVramGraphicsCopyQueueIndex
	.linkonce	discard
.refptr.gVramGraphicsCopyQueueIndex:
	.quad	gVramGraphicsCopyQueueIndex
	.section	.rdata$.refptr.gVramGraphicsCopyCursor, "dr"
	.globl	.refptr.gVramGraphicsCopyCursor
	.linkonce	discard
.refptr.gVramGraphicsCopyCursor:
	.quad	gVramGraphicsCopyCursor
	.section	.rdata$.refptr.gBackgroundsCopyQueueIndex, "dr"
	.globl	.refptr.gBackgroundsCopyQueueIndex
	.linkonce	discard
.refptr.gBackgroundsCopyQueueIndex:
	.quad	gBackgroundsCopyQueueIndex
	.section	.rdata$.refptr.gBackgroundsCopyQueueCursor, "dr"
	.globl	.refptr.gBackgroundsCopyQueueCursor
	.linkonce	discard
.refptr.gBackgroundsCopyQueueCursor:
	.quad	gBackgroundsCopyQueueCursor
	.section	.rdata$.refptr.gActiveBossTask, "dr"
	.globl	.refptr.gActiveBossTask
	.linkonce	discard
.refptr.gActiveBossTask:
	.quad	gActiveBossTask
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
	.section	.rdata$.refptr.gBgPalette, "dr"
	.globl	.refptr.gBgPalette
	.linkonce	discard
.refptr.gBgPalette:
	.quad	gBgPalette
	.section	.rdata$.refptr.Tileset_DebugAscii, "dr"
	.globl	.refptr.Tileset_DebugAscii
	.linkonce	discard
.refptr.Tileset_DebugAscii:
	.quad	Tileset_DebugAscii
	.section	.rdata$.refptr.gRepeatedKeys, "dr"
	.globl	.refptr.gRepeatedKeys
	.linkonce	discard
.refptr.gRepeatedKeys:
	.quad	gRepeatedKeys
	.section	.rdata$.refptr.gBgSprites_Unknown2, "dr"
	.globl	.refptr.gBgSprites_Unknown2
	.linkonce	discard
.refptr.gBgSprites_Unknown2:
	.quad	gBgSprites_Unknown2
	.section	.rdata$.refptr.gBgSprites_Unknown1, "dr"
	.globl	.refptr.gBgSprites_Unknown1
	.linkonce	discard
.refptr.gBgSprites_Unknown1:
	.quad	gBgSprites_Unknown1
	.section	.rdata$.refptr.gPressedKeys, "dr"
	.globl	.refptr.gPressedKeys
	.linkonce	discard
.refptr.gPressedKeys:
	.quad	gPressedKeys
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
