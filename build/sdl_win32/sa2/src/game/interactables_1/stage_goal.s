	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_StageGoal;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_StageGoal
TaskDestructor_StageGoal:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	Task_StageGoalMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_StageGoalMain
Task_StageGoalMain:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	r11, QWORD PTR .refptr.gCamera[rip]
	mov	rcx, QWORD PTR [rbx]
	mov	rsi, QWORD PTR 24[rcx]
	movzx	edx, WORD PTR 8[rsi]
	movzx	eax, BYTE PTR 12[rsi]
	mov	r9, QWORD PTR [rsi]
	movzx	r8d, WORD PTR 10[rsi]
	sal	edx, 5
	mov	r10d, eax
	add	edx, eax
	movzx	eax, BYTE PTR 1[r9]
	sal	r8d, 5
	sal	edx, 3
	add	r8d, eax
	mov	eax, edx
	sub	ax, WORD PTR [r11]
	sal	r8d, 3
	mov	WORD PTR 54[rsi], ax
	sub	ax, -128
	mov	edi, r8d
	sub	di, WORD PTR 4[r11]
	cmp	ax, 682
	seta	al
	cmp	di, -128
	mov	WORD PTR 56[rsi], di
	mov	r11d, edi
	setl	dil
	or	al, dil
	jne	.L9
	cmp	r11w, 368
	jg	.L9
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	lea	rdi, 16[rsi]
	test	DWORD PTR 36[rax], 4194432
	je	.L10
.L7:
	mov	rcx, rdi
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L9:
	mov	BYTE PTR [r9], r10b
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L10:
	mov	DWORD PTR 40[rsp], 0
	xor	r9d, r9d
	mov	rcx, rdi
	mov	QWORD PTR 32[rsp], rax
	call	Coll_Player_Entity_HitboxN
	cmp	eax, 1
	jne	.L7
	mov	eax, 532
	mov	edx, -256
	mov	WORD PTR 34[rsi], ax
	mov	rax, QWORD PTR [rbx]
	lea	rbx, Task_StageGoalAnimate[rip]
	mov	WORD PTR 64[rsi], dx
	mov	QWORD PTR 40[rax], rbx
	jmp	.L7
	.seh_endproc
	.p2align 4
	.def	Task_StageGoalAnimate;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_StageGoalAnimate
Task_StageGoalAnimate:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR [rax]
	mov	rcx, QWORD PTR 24[r8]
	mov	r9, QWORD PTR [rcx]
	movzx	edx, WORD PTR 10[rcx]
	movzx	r11d, BYTE PTR 12[rcx]
	movzx	eax, BYTE PTR 1[r9]
	sal	edx, 5
	mov	r10d, r11d
	add	edx, eax
	movzx	eax, WORD PTR 8[rcx]
	sal	edx, 3
	sal	eax, 5
	add	eax, r11d
	mov	r11, QWORD PTR .refptr.gCamera[rip]
	sal	eax, 3
	sub	ax, WORD PTR [r11]
	sub	dx, WORD PTR 4[r11]
	mov	WORD PTR 54[rcx], ax
	sub	ax, -128
	cmp	ax, 682
	mov	WORD PTR 56[rcx], dx
	seta	al
	cmp	dx, -128
	setl	r11b
	or	al, r11b
	jne	.L14
	cmp	dx, 368
	jle	.L12
.L14:
	mov	rcx, r8
	mov	BYTE PTR [r9], r10b
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L12:
	lea	rbx, 16[rcx]
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.def	Task_StageGoalToggleMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_StageGoalToggleMain
Task_StageGoalToggleMain:
	push	r15
	.seh_pushreg	r15
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
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rsi]
	mov	ecx, DWORD PTR 12[rdx]
	mov	rax, QWORD PTR 24[rax]
	sar	ecx, 8
	movzx	ebx, WORD PTR 8[rax]
	movzx	ebp, BYTE PTR 12[rax]
	mov	rdi, QWORD PTR [rax]
	movzx	r12d, WORD PTR 10[rax]
	sal	ebx, 5
	movzx	eax, bpl
	add	ebx, eax
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	movzx	r13d, BYTE PTR 1[rdi]
	sal	ebx, 3
	movzx	r8d, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	cmp	r8b, 2
	jbe	.L16
	cmp	ebx, ecx
	jle	.L17
.L18:
	sub	ebx, DWORD PTR [rax]
	mov	edx, DWORD PTR 4[rax]
	sub	ebx, -128
	cmp	ebx, 682
	ja	.L27
	movzx	eax, r12w
	sal	eax, 5
	add	eax, r13d
	sal	eax, 3
	sub	eax, edx
	sub	eax, -128
	cmp	eax, 496
	jbe	.L15
.L27:
	mov	BYTE PTR [rdi], bpl
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L16:
	cmp	ebx, ecx
	jg	.L18
	mov	r9d, DWORD PTR 36[rdx]
	test	r9d, 134217728
	jne	.L18
	mov	r10, QWORD PTR .refptr.gStageFlags[rip]
	mov	BYTE PTR 117[rdx], 10
	or	WORD PTR [r10], 33
	mov	r10, QWORD PTR .refptr.gStageGoalX[rip]
	mov	DWORD PTR [r10], ebx
	test	r8b, r8b
	jne	.L18
	and	r9d, 2
	jne	.L18
	movzx	r8d, WORD PTR 24[rdx]
	cmp	r8w, 640
	jle	.L18
	cmp	r8w, 1024
	jle	.L29
	cmp	r8w, 2304
	jle	.L30
	cmp	r8w, 2561
	mov	eax, 800
	mov	r8d, 500
	cmovge	r8d, eax
	mov	r9d, r8d
.L25:
	mov	rax, QWORD PTR .refptr.gLevelScore[rip]
	mov	r10d, DWORD PTR [rax]
	add	r9d, r10d
	mov	DWORD PTR [rax], r9d
	movsx	rax, r9d
	sar	r9d, 31
	imul	rax, rax, 351843721
	sar	rax, 44
	sub	eax, r9d
	movsx	r9, r10d
	sar	r10d, 31
	imul	r9, r9, 351843721
	sar	r9, 44
	sub	r9d, r10d
	cmp	eax, r9d
	je	.L26
	mov	r11, QWORD PTR .refptr.gNumLives[rip]
	movzx	r10d, BYTE PTR [r11]
	sub	r10d, r9d
	mov	r9d, 255
	add	eax, r10d
	cmp	ax, r9w
	cmova	eax, r9d
	mov	BYTE PTR [r11], al
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 3[rax], 16
.L26:
	mov	edx, DWORD PTR 16[rdx]
	sar	edx, 8
	call	CreateStageGoalBonusPointsAnim
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L15:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.p2align 4,,10
	.p2align 3
.L17:
	test	DWORD PTR 36[rdx], 134217736
	jne	.L18
	mov	r8, QWORD PTR .refptr.REG_BASE[rip]
	mov	rcx, QWORD PTR .refptr.gStageGoalX[rip]
	mov	BYTE PTR 117[rdx], 10
	movzx	r9d, BYTE PTR 296[r8]
	mov	DWORD PTR [rcx], ebx
	mov	rcx, QWORD PTR .refptr.gMultiplayerPlayerTasks[rip]
	shr	r9b, 4
	and	r9d, 3
	mov	r9, QWORD PTR [rcx+r9*8]
	mov	r15, QWORD PTR 24[r9]
	xor	r9d, r9d
	and	BYTE PTR 59[rdx], -65
	mov	WORD PTR 54[rdx], r9w
	mov	r14d, DWORD PTR 108[r15]
	and	r14d, 1
	jne	.L18
	mov	rax, rcx
	lea	rcx, 32[rcx]
.L20:
	mov	rdx, QWORD PTR [rax]
	test	rdx, rdx
	je	.L22
	mov	rdx, QWORD PTR 24[rdx]
	mov	edx, DWORD PTR 108[rdx]
	and	edx, 1
	cmp	edx, 1
	sbb	r14d, -1
	add	rax, 8
	cmp	rax, rcx
	jne	.L20
.L22:
	movzx	ecx, BYTE PTR 296[r8]
	movzx	edx, r14b
	shr	cl, 4
	and	ecx, 3
	call	CreateMultiplayerFinishResult
	or	DWORD PTR 108[r15], 1
	test	r14d, r14d
	jne	.L24
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	or	WORD PTR [rax], 4
	mov	rax, QWORD PTR .refptr.gCourseTime[rip]
	mov	DWORD PTR [rax], 3600
.L24:
	call	CreateRoomEvent
	lea	rdx, StageGoalToggle_PlayerReachedGoal[rip]
	mov	BYTE PTR [rax], 7
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdx
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	or	WORD PTR 80[rax], 4
	jmp	.L18
.L29:
	mov	r8d, 200
	mov	r9d, 200
	jmp	.L25
.L30:
	mov	r8d, 300
	mov	r9d, 300
	jmp	.L25
	.seh_endproc
	.p2align 4
	.def	StageGoalToggle_PlayerReachedGoal;	.scl	3;	.type	32;	.endef
	.seh_proc	StageGoalToggle_PlayerReachedGoal
StageGoalToggle_PlayerReachedGoal:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	rdx, QWORD PTR .refptr.gMultiplayerRanks[rip]
	movzx	eax, BYTE PTR 296[rax]
	shr	al, 4
	and	eax, 3
	cmp	BYTE PTR [rdx+rax], -1
	je	.L41
	mov	r8, QWORD PTR .refptr.gMultiplayerPlayerTasks[rip]
	xor	eax, eax
	xor	ecx, ecx
.L42:
	mov	rdx, QWORD PTR [r8+rax*8]
	test	rdx, rdx
	je	.L45
	mov	rdx, QWORD PTR 24[rdx]
	movzx	edx, WORD PTR 100[rdx]
	and	dx, 256
	cmp	dx, 1
	sbb	ecx, -1
	add	rax, 1
	cmp	rax, 4
	jne	.L42
	mov	eax, 4
.L45:
	test	ecx, ecx
	je	.L41
	sub	eax, 1
	cmp	ecx, eax
	jb	.L73
.L47:
	cmp	QWORD PTR [r8], 0
	je	.L49
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	mov	r10, QWORD PTR .refptr.gPlayer[rip]
	lea	rcx, 32[r8]
	xor	r11d, r11d
	movzx	ebx, BYTE PTR [rax]
	mov	r9d, DWORD PTR 36[r10]
.L50:
	mov	rax, QWORD PTR [r8]
	test	rax, rax
	je	.L72
	mov	rdx, QWORD PTR 24[rax]
	mov	eax, DWORD PTR 108[rdx]
	test	al, 1
	jne	.L51
	cmp	bl, 4
	je	.L51
	or	eax, 1
	or	r9d, 2097152
	mov	r11d, 1
	mov	DWORD PTR 108[rdx], eax
.L51:
	add	r8, 8
	cmp	rcx, r8
	jne	.L50
.L72:
	test	r11b, r11b
	je	.L49
	xor	eax, eax
	mov	DWORD PTR 36[r10], r9d
	mov	WORD PTR 100[r10], ax
.L49:
	call	CreateMultiplayerFinishHandler
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L73:
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 4
	je	.L47
.L41:
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_StageGoal
	.def	CreateEntity_StageGoal;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_StageGoal
CreateEntity_StageGoal:
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
	lea	rax, TaskDestructor_StageGoal[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rbp, rcx
	mov	esi, edx
	mov	edi, r8d
	mov	r12d, r9d
	mov	r8d, 8208
	xor	r9d, r9d
	mov	edx, 80
	lea	rcx, Task_StageGoalMain[rip]
	call	TaskCreate
	mov	ecx, r12d
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 8[rbx], si
	movzx	esi, si
	mov	WORD PTR 10[rbx], di
	sal	esi, 5
	movzx	edi, di
	mov	QWORD PTR [rbx], rbp
	movzx	eax, BYTE PTR 0[rbp]
	sal	edi, 5
	add	esi, eax
	movzx	edx, al
	mov	dh, cl
	sal	esi, 3
	mov	ecx, 4
	mov	WORD PTR 12[rbx], dx
	mov	WORD PTR 54[rbx], si
	movzx	eax, BYTE PTR 1[rbp]
	add	eax, edi
	sal	eax, 3
	mov	WORD PTR 56[rbx], ax
	mov	BYTE PTR 0[rbp], -2
	call	VramMalloc
	xor	edx, edx
	lea	rcx, 16[rbx]
	mov	BYTE PTR 66[rbx], 16
	mov	QWORD PTR 24[rbx], rax
	mov	eax, -255
	mov	WORD PTR 64[rbx], ax
	mov	DWORD PTR 32[rbx], 34865152
	mov	WORD PTR 52[rbx], dx
	mov	DWORD PTR 58[rbx], 256
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 4096
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Toggle_StageGoal
	.def	CreateEntity_Toggle_StageGoal;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Toggle_StageGoal
CreateEntity_Toggle_StageGoal:
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
	mov	edx, 16
	mov	r8d, 8208
	lea	rcx, Task_StageGoalToggleMain[rip]
	call	TaskCreate
	mov	rax, QWORD PTR 24[rax]
	mov	WORD PTR 8[rax], di
	mov	WORD PTR 10[rax], si
	mov	QWORD PTR [rax], rbx
	movzx	edx, BYTE PTR [rbx]
	mov	BYTE PTR 12[rax], dl
	mov	BYTE PTR [rbx], -2
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Entity_HitboxN;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	CreateStageGoalBonusPointsAnim;	.scl	2;	.type	32;	.endef
	.def	CreateMultiplayerFinishResult;	.scl	2;	.type	32;	.endef
	.def	CreateRoomEvent;	.scl	2;	.type	32;	.endef
	.def	CreateMultiplayerFinishHandler;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gMultiplayerRanks, "dr"
	.globl	.refptr.gMultiplayerRanks
	.linkonce	discard
.refptr.gMultiplayerRanks:
	.quad	gMultiplayerRanks
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
	.section	.rdata$.refptr.gLevelScore, "dr"
	.globl	.refptr.gLevelScore
	.linkonce	discard
.refptr.gLevelScore:
	.quad	gLevelScore
	.section	.rdata$.refptr.gCourseTime, "dr"
	.globl	.refptr.gCourseTime
	.linkonce	discard
.refptr.gCourseTime:
	.quad	gCourseTime
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
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
	.section	.rdata$.refptr.gStageGoalX, "dr"
	.globl	.refptr.gStageGoalX
	.linkonce	discard
.refptr.gStageGoalX:
	.quad	gStageGoalX
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
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
