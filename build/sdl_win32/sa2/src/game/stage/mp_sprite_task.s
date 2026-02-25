	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_UpdateMpSpriteTaskSprite
	.def	Task_UpdateMpSpriteTaskSprite;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_UpdateMpSpriteTaskSprite
Task_UpdateMpSpriteTaskSprite:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	mov	r8, QWORD PTR [rax]
	mov	r10d, DWORD PTR 36[rdx]
	mov	rcx, QWORD PTR 24[r8]
	test	r10b, -128
	jne	.L26
	movzx	eax, WORD PTR 20[rcx]
	test	al, 8
	je	.L3
	movzx	ebx, WORD PTR 112[rdx]
	cmp	WORD PTR 22[rcx], bx
	jne	.L26
	movzx	ebx, WORD PTR 114[rdx]
	cmp	WORD PTR 24[rcx], bx
	je	.L3
.L26:
	mov	rcx, r8
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L3:
	mov	r9d, DWORD PTR 64[rcx]
	test	r9d, 16384
	jne	.L26
	mov	r8d, eax
	and	r8d, 3
	cmp	r8w, 1
	je	.L6
	cmp	r8w, 2
	je	.L7
	test	r8w, r8w
	je	.L28
.L8:
	test	al, 64
	je	.L13
	mov	edx, r9d
	or	r9d, 1024
	and	dh, -5
	and	r10d, 1
	cmovne	r9d, edx
	mov	DWORD PTR 64[rcx], r9d
.L13:
	test	al, -128
	je	.L15
	mov	eax, DWORD PTR 64[rcx]
	mov	r8, QWORD PTR .refptr.gStageFlags[rip]
	mov	edx, eax
	or	ah, 8
	and	dh, -9
	test	BYTE PTR [r8], -128
	cmove	eax, edx
	mov	DWORD PTR 64[rcx], eax
.L15:
	lea	rbx, 32[rcx]
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L28:
	mov	r8d, eax
	and	r8d, 48
	cmp	r8w, 16
	je	.L9
	cmp	r8w, 32
	jne	.L29
	mov	r8, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [r8], 2
	jbe	.L12
	mov	rdx, QWORD PTR .refptr.REG_BASE[rip]
	mov	r8, QWORD PTR .refptr.gMultiplayerPlayerTasks[rip]
	movzx	edx, BYTE PTR 296[rdx]
	shr	dl, 4
	and	edx, 3
	mov	rdx, QWORD PTR [r8+rdx*8]
	mov	rdx, QWORD PTR 24[rdx]
	movsx	r8d, WORD PTR 96[rdx]
	movsx	edx, WORD PTR 98[rdx]
	mov	DWORD PTR [rcx], r8d
	mov	DWORD PTR 4[rcx], edx
	.p2align 4,,10
	.p2align 3
.L11:
	mov	r11, QWORD PTR .refptr.gCamera[rip]
	sub	r8w, WORD PTR [r11]
	sub	dx, WORD PTR 4[r11]
	mov	WORD PTR 70[rcx], r8w
	mov	WORD PTR 72[rcx], dx
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L7:
	mov	edx, DWORD PTR [rcx]
	mov	WORD PTR 70[rcx], dx
	mov	edx, DWORD PTR 4[rcx]
	mov	WORD PTR 72[rcx], dx
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L6:
	movzx	edx, WORD PTR 4[rcx]
	movzx	r8d, WORD PTR [rcx]
	sal	edx, 16
	or	edx, r8d
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	movd	xmm0, edx
	movd	xmm1, DWORD PTR 82[r8]
	psubw	xmm0, xmm1
	movd	DWORD PTR 70[rcx], xmm0
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L29:
	mov	r8d, DWORD PTR [rcx]
	mov	edx, DWORD PTR 4[rcx]
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L9:
	mov	rdx, QWORD PTR .refptr.gWater[rip]
	mov	r8d, DWORD PTR [rcx]
	movsx	edx, WORD PTR 4[rdx]
	mov	DWORD PTR 4[rcx], edx
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L12:
	mov	r8d, DWORD PTR 12[rdx]
	mov	edx, DWORD PTR 16[rdx]
	sar	r8d, 8
	sar	edx, 8
	mov	DWORD PTR [rcx], r8d
	mov	DWORD PTR 4[rcx], edx
	jmp	.L11
	.seh_endproc
	.p2align 4
	.globl	TaskDestructor_MultiplayerSpriteTask
	.def	TaskDestructor_MultiplayerSpriteTask;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_MultiplayerSpriteTask
TaskDestructor_MultiplayerSpriteTask:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 40[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.globl	CreateMultiplayerSpriteTask
	.def	CreateMultiplayerSpriteTask;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateMultiplayerSpriteTask
CreateMultiplayerSpriteTask:
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
	mov	rax, QWORD PTR 136[rsp]
	mov	QWORD PTR 32[rsp], rax
	mov	edi, ecx
	mov	ebp, r9d
	mov	esi, edx
	mov	ebx, r8d
	xor	r9d, r9d
	mov	r8d, 16385
	movsx	edi, di
	mov	rcx, QWORD PTR 128[rsp]
	mov	edx, 112
	movsx	esi, si
	movzx	ebx, bl
	call	TaskCreate
	mov	ecx, -256
	mov	rdx, QWORD PTR 24[rax]
	mov	DWORD PTR [rdx], edi
	mov	DWORD PTR 4[rdx], esi
	mov	WORD PTR 20[rdx], bx
	mov	BYTE PTR 26[rdx], bpl
	mov	DWORD PTR 22[rdx], 0
	mov	QWORD PTR 40[rdx], 0
	mov	DWORD PTR 48[rdx], 0
	mov	WORD PTR 80[rdx], cx
	mov	DWORD PTR 74[rdx], 0
	mov	BYTE PTR 82[rdx], 16
	mov	BYTE PTR 85[rdx], 0
	mov	DWORD PTR 64[rdx], 0
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateStageGoalBonusPointsAnim
	.def	CreateStageGoalBonusPointsAnim;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateStageGoalBonusPointsAnim
CreateStageGoalBonusPointsAnim:
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
	mov	ebx, r8d
	cmp	r8w, 100
	je	.L33
	cmp	r8w, 200
	je	.L33
	cmp	r8w, 300
	setne	r8b
	cmp	bx, 500
	setne	al
	test	r8b, al
	je	.L36
	xor	esi, esi
	cmp	bx, 800
	jne	.L32
.L36:
	lea	rax, TaskDestructor_MultiplayerSpriteTask[rip]
	movsx	edx, dx
	movsx	ecx, cx
	xor	r9d, r9d
	mov	QWORD PTR 40[rsp], rax
	mov	r8d, 32
	mov	edi, 2
	lea	rax, Task_UpdateMpSpriteTaskSprite[rip]
	mov	QWORD PTR 32[rsp], rax
	call	CreateMultiplayerSpriteTask
	mov	rbp, QWORD PTR 24[rax]
	mov	rsi, rax
	cmp	bx, 300
	je	.L37
	xor	edi, edi
	cmp	bx, 500
	setne	dil
	add	edi, 3
.L37:
	mov	ecx, 36
	movsx	rdi, edi
	call	VramMalloc
	lea	rdx, [rdi+rdi*2]
	mov	DWORD PTR 64[rbp], 8192
	mov	QWORD PTR 40[rbp], rax
	lea	rax, sAnimData_StageGoalScoreBonus[rip]
	lea	rax, [rax+rdx*2]
	movzx	edx, WORD PTR 2[rax]
	movzx	eax, WORD PTR 4[rax]
	mov	BYTE PTR 80[rbp], al
	mov	eax, 512
	mov	WORD PTR 50[rbp], dx
	mov	WORD PTR 74[rbp], ax
.L32:
	mov	rax, rsi
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L33:
	lea	rax, TaskDestructor_MultiplayerSpriteTask[rip]
	xor	r9d, r9d
	movsx	edx, dx
	movsx	ecx, cx
	mov	QWORD PTR 40[rsp], rax
	lea	rax, Task_UpdateMpSpriteTaskSprite[rip]
	mov	r8d, 32
	xor	edi, edi
	mov	QWORD PTR 32[rsp], rax
	call	CreateMultiplayerSpriteTask
	cmp	bx, 100
	mov	rbp, QWORD PTR 24[rax]
	mov	rsi, rax
	setne	dil
	jmp	.L37
	.seh_endproc
	.p2align 4
	.globl	CreateGrindEffect2
	.def	CreateGrindEffect2;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateGrindEffect2
CreateGrindEffect2:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	test	BYTE PTR [rax], 7
	jne	.L52
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	mov	rcx, QWORD PTR .refptr.gStageFlags[rip]
	mov	r10, QWORD PTR .refptr.gSineTable[rip]
	movsx	r8d, BYTE PTR 27[rdx]
	mov	r9d, DWORD PTR 16[rdx]
	mov	eax, r8d
	neg	eax
	test	BYTE PTR [rcx], -128
	mov	ecx, DWORD PTR 12[rdx]
	cmovne	r8d, eax
	movzx	eax, BYTE PTR 40[rdx]
	sar	r9d, 8
	sar	ecx, 8
	sal	eax, 2
	lea	edx, 256[rax]
	cdqe
	movzx	eax, WORD PTR [r10+rax*2]
	movsx	rdx, edx
	movzx	edx, WORD PTR [r10+rdx*2]
	sar	ax, 6
	cwde
	sar	dx, 6
	imul	eax, r8d
	movsx	edx, dx
	imul	edx, r8d
	mov	r8d, 192
	sar	eax, 8
	sub	ecx, eax
	lea	rax, TaskDestructor_MultiplayerSpriteTask[rip]
	sar	edx, 8
	mov	QWORD PTR 40[rsp], rax
	lea	rax, Task_UpdateMpSpriteTaskSprite[rip]
	add	edx, r9d
	movsx	ecx, cx
	mov	QWORD PTR 32[rsp], rax
	movsx	edx, dx
	xor	r9d, r9d
	call	CreateMultiplayerSpriteTask
	mov	ecx, 20
	mov	rbx, QWORD PTR 24[rax]
	call	VramMalloc
	mov	edx, 512
	mov	QWORD PTR 40[rbx], rax
	mov	eax, 849
	mov	WORD PTR 50[rbx], ax
	mov	BYTE PTR 80[rbx], 0
	mov	WORD PTR 74[rbx], dx
	mov	DWORD PTR 64[rbx], 4096
.L52:
	add	rsp, 48
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateGrindfEffect2Sprite
	.def	CreateGrindfEffect2Sprite;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateGrindfEffect2Sprite
CreateGrindfEffect2Sprite:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	lea	rax, TaskDestructor_MultiplayerSpriteTask[rip]
	xor	r9d, r9d
	mov	r8d, 192
	mov	QWORD PTR 40[rsp], rax
	lea	rax, Task_UpdateMpSpriteTaskSprite[rip]
	movsx	edx, dx
	movsx	ecx, cx
	mov	QWORD PTR 32[rsp], rax
	call	CreateMultiplayerSpriteTask
	mov	ecx, 20
	mov	rbx, QWORD PTR 24[rax]
	mov	rsi, rax
	call	VramMalloc
	mov	edx, 512
	mov	QWORD PTR 40[rbx], rax
	mov	eax, 849
	mov	WORD PTR 50[rbx], ax
	mov	rax, rsi
	mov	BYTE PTR 80[rbx], 0
	mov	WORD PTR 74[rbx], dx
	mov	DWORD PTR 64[rbx], 4096
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.globl	sAnimData_StageGoalScoreBonus
	.section .rdata,"dr"
	.align 16
sAnimData_StageGoalScoreBonus:
	.word	36
	.word	871
	.word	1
	.word	36
	.word	871
	.word	2
	.word	36
	.word	871
	.word	3
	.word	36
	.word	871
	.word	4
	.word	36
	.word	871
	.word	5
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
	.section	.rdata$.refptr.gWater, "dr"
	.globl	.refptr.gWater
	.linkonce	discard
.refptr.gWater:
	.quad	gWater
	.section	.rdata$.refptr.gMultiplayerPlayerTasks, "dr"
	.globl	.refptr.gMultiplayerPlayerTasks
	.linkonce	discard
.refptr.gMultiplayerPlayerTasks:
	.quad	gMultiplayerPlayerTasks
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
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
