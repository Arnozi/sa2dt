	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_DemoManagerFadeout
	.def	Task_DemoManagerFadeout;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_DemoManagerFadeout
Task_DemoManagerFadeout:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[rcx]
	movzx	eax, WORD PTR 128[rdx]
	add	eax, 64
	mov	WORD PTR 128[rdx], ax
	mov	r8d, eax
	mov	rdx, QWORD PTR .refptr.gBldRegs[rip]
	shr	r8w, 8
	mov	WORD PTR 4[rdx], r8w
	cmp	ax, 4095
	jbe	.L1
	lea	rax, Task_DemoManagerEndFadeout[rip]
	mov	QWORD PTR 40[rcx], rax
.L1:
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_DemoManagerMusicFadeout
	.def	Task_DemoManagerMusicFadeout;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_DemoManagerMusicFadeout
Task_DemoManagerMusicFadeout:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_BGM[rip]
	mov	edx, 65535
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	movzx	r8d, WORD PTR [rbx]
	call	m4aMPlayVolumeControl
	movzx	r8d, WORD PTR [rbx]
	mov	edx, 65535
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_SE1[rip]
	call	m4aMPlayVolumeControl
	movzx	r8d, WORD PTR [rbx]
	mov	edx, 65535
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_SE2[rip]
	call	m4aMPlayVolumeControl
	movzx	r8d, WORD PTR [rbx]
	mov	edx, 65535
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_SE3[rip]
	call	m4aMPlayVolumeControl
	movzx	eax, WORD PTR [rbx]
	mov	edx, 0
	sub	ax, WORD PTR 2[rbx]
	cmovs	eax, edx
	mov	WORD PTR [rbx], ax
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_DemoManagerEndFadeout
	.def	Task_DemoManagerEndFadeout;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_DemoManagerEndFadeout
Task_DemoManagerEndFadeout:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	xor	r8d, r8d
	mov	edx, 65535
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_BGM[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	add	WORD PTR 130[rbx], 1
	call	m4aMPlayVolumeControl
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_SE1[rip]
	xor	r8d, r8d
	mov	edx, 65535
	call	m4aMPlayVolumeControl
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_SE2[rip]
	xor	r8d, r8d
	mov	edx, 65535
	call	m4aMPlayVolumeControl
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_SE3[rip]
	xor	r8d, r8d
	mov	edx, 65535
	call	m4aMPlayVolumeControl
	cmp	WORD PTR 130[rbx], 47
	ja	.L9
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	movzx	edx, BYTE PTR 133[rbx]
	xor	ecx, ecx
	mov	rax, QWORD PTR [rax]
	mov	BYTE PTR 5[rax], dl
	mov	edx, 65535
	call	TasksDestroyInPriorityRange
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueIndex[rip]
	cmp	BYTE PTR 132[rbx], 0
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueCursor[rip]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR .refptr.gBgSpritesCount[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyQueueIndex[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyCursor[rip]
	mov	BYTE PTR [rax], dl
	jne	.L8
	add	rsp, 32
	pop	rbx
	jmp	CreateTitleScreen
	.p2align 4,,10
	.p2align 3
.L8:
	add	rsp, 32
	pop	rbx
	jmp	CreateTitleScreenAtPlayModeMenu
	.seh_endproc
	.p2align 4
	.globl	TaskDestructor_DemoManagerMain
	.def	TaskDestructor_DemoManagerMain;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_DemoManagerMain
TaskDestructor_DemoManagerMain:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 8[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 72[rbx]
	call	VramFree
	mov	rax, QWORD PTR .refptr.gDestroySpotlights[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	and	WORD PTR [rax], -65
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_DemoManagerMain
	.def	Task_DemoManagerMain;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_DemoManagerMain
Task_DemoManagerMain:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR .refptr.gPhysicalInput[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	test	BYTE PTR [rdx], 8
	jne	.L24
	mov	rdx, QWORD PTR .refptr.gCheckpointTime[rip]
	cmp	DWORD PTR [rdx], 1470
	ja	.L25
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	movzx	eax, WORD PTR [rax]
	test	ah, 1
	jne	.L11
.L26:
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	rsi, QWORD PTR .refptr.gBldRegs[rip]
	test	BYTE PTR [rax], 32
	je	.L15
	mov	edx, DWORD PTR 32[rbx]
	mov	eax, edx
	and	eax, -385
	cmp	WORD PTR 4[rsi], 0
	je	.L17
	mov	eax, edx
	or	al, -128
.L17:
	mov	DWORD PTR 32[rbx], eax
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	call	DisplaySprite
.L15:
	mov	edx, DWORD PTR 96[rbx]
	mov	eax, edx
	and	eax, -385
	cmp	WORD PTR 4[rsi], 0
	je	.L19
	mov	eax, edx
	or	al, -128
.L19:
	lea	rcx, 64[rbx]
	mov	DWORD PTR 96[rbx], eax
	add	rsp, 56
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L25:
	mov	BYTE PTR 132[rbx], 0
.L23:
	mov	rsi, QWORD PTR .refptr.gBldRegs[rip]
	lea	rcx, Task_DemoManagerFadeout[rip]
	xor	edx, edx
	xor	r9d, r9d
	mov	QWORD PTR 40[rax], rcx
	mov	eax, 191
	mov	r8d, 65534
	lea	rcx, Task_DemoManagerMusicFadeout[rip]
	mov	WORD PTR [rsi], ax
	mov	WORD PTR 4[rsi], dx
	mov	rsi, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	edx, 4
	mov	BYTE PTR [rsi], -1
	mov	QWORD PTR 32[rsp], 0
	call	TaskCreate
	mov	rax, QWORD PTR 24[rax]
	mov	DWORD PTR [rax], 262400
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	mov	BYTE PTR [rsi], -1
	movzx	eax, WORD PTR [rax]
	test	ah, 1
	je	.L26
.L11:
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L24:
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	xor	ecx, ecx
	mov	BYTE PTR 132[rbx], 1
	or	DWORD PTR 36[rdx], 2097152
	mov	WORD PTR 100[rdx], cx
	mov	rdx, QWORD PTR .refptr.gDestroySpotlights[rip]
	mov	BYTE PTR [rdx], 1
	jmp	.L23
	.seh_endproc
	.p2align 4
	.globl	CreateDemoManager
	.def	CreateDemoManager;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateDemoManager
CreateDemoManager:
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
	mov	rbp, QWORD PTR .refptr.gLoadedSaveGame[rip]
	xor	r9d, r9d
	mov	edx, 136
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	mov	r8d, 1
	lea	rcx, Task_DemoManagerMain[rip]
	movzx	edi, WORD PTR [rax]
	mov	rax, QWORD PTR 0[rbp]
	movsx	rsi, BYTE PTR 6[rax]
	lea	rax, TaskDestructor_DemoManagerMain[rip]
	and	edi, -64
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR 0[rbp]
	mov	rbp, QWORD PTR .refptr.gPressStartTiles[rip]
	mov	DWORD PTR 128[rbx], 0
	mov	BYTE PTR 132[rbx], 0
	movzx	eax, BYTE PTR 5[rax]
	mov	DWORD PTR 38[rbx], 10027221
	mov	ecx, DWORD PTR 0[rbp+rsi*8]
	mov	BYTE PTR 133[rbx], al
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	or	WORD PTR [rax], 64
	call	VramMalloc
	xor	edx, edx
	mov	ecx, 4351
	mov	BYTE PTR 53[rbx], 0
	mov	QWORD PTR 8[rbx], rax
	xor	eax, eax
	mov	WORD PTR 16[rbx], ax
	movzx	eax, WORD PTR 4[rbp+rsi*8]
	mov	WORD PTR 36[rbx], dx
	mov	WORD PTR 18[rbx], ax
	movzx	eax, BYTE PTR 6[rbp+rsi*8]
	xor	esi, esi
	cmp	dil, 64
	setne	sil
	mov	WORD PTR 49[rbx], cx
	mov	rcx, rbx
	sal	esi, 7
	mov	BYTE PTR 48[rbx], al
	mov	DWORD PTR 42[rbx], 64
	mov	DWORD PTR 32[rbx], esi
	call	UpdateSpriteAnimation
	mov	DWORD PTR 102[rbx], 7864533
	mov	ecx, 28
	call	VramMalloc
	xor	r8d, r8d
	lea	rcx, 64[rbx]
	mov	BYTE PTR 114[rbx], 16
	mov	r9d, -256
	mov	QWORD PTR 72[rbx], rax
	mov	DWORD PTR 80[rbx], 68419584
	mov	WORD PTR 100[rbx], r8w
	mov	WORD PTR 112[rbx], r9w
	mov	BYTE PTR 117[rbx], 0
	mov	DWORD PTR 106[rbx], 64
	mov	DWORD PTR 96[rbx], esi
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.p2align 4
	.globl	CreateMusicFadeoutTask
	.def	CreateMusicFadeoutTask;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateMusicFadeoutTask
CreateMusicFadeoutTask:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	xor	r9d, r9d
	mov	r8d, 65534
	mov	edx, 4
	mov	QWORD PTR 32[rsp], 0
	mov	ebx, ecx
	lea	rcx, Task_DemoManagerMusicFadeout[rip]
	call	TaskCreate
	xor	edx, edx
	mov	rcx, QWORD PTR 24[rax]
	mov	eax, 256
	mov	WORD PTR [rcx], ax
	mov	eax, 256
	div	bx
	mov	WORD PTR 2[rcx], ax
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR [rax], -1
	add	rsp, 48
	pop	rbx
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	m4aMPlayVolumeControl;	.scl	2;	.type	32;	.endef
	.def	TasksDestroyInPriorityRange;	.scl	2;	.type	32;	.endef
	.def	CreateTitleScreen;	.scl	2;	.type	32;	.endef
	.def	CreateTitleScreenAtPlayModeMenu;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gPressStartTiles, "dr"
	.globl	.refptr.gPressStartTiles
	.linkonce	discard
.refptr.gPressStartTiles:
	.quad	gPressStartTiles
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
	.section	.rdata$.refptr.gCheckpointTime, "dr"
	.globl	.refptr.gCheckpointTime
	.linkonce	discard
.refptr.gCheckpointTime:
	.quad	gCheckpointTime
	.section	.rdata$.refptr.gMusicManagerState, "dr"
	.globl	.refptr.gMusicManagerState
	.linkonce	discard
.refptr.gMusicManagerState:
	.quad	gMusicManagerState
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gPhysicalInput, "dr"
	.globl	.refptr.gPhysicalInput
	.linkonce	discard
.refptr.gPhysicalInput:
	.quad	gPhysicalInput
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
	.section	.rdata$.refptr.gDestroySpotlights, "dr"
	.globl	.refptr.gDestroySpotlights
	.linkonce	discard
.refptr.gDestroySpotlights:
	.quad	gDestroySpotlights
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
	.section	.rdata$.refptr.gBgSpritesCount, "dr"
	.globl	.refptr.gBgSpritesCount
	.linkonce	discard
.refptr.gBgSpritesCount:
	.quad	gBgSpritesCount
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
	.section	.rdata$.refptr.gLoadedSaveGame, "dr"
	.globl	.refptr.gLoadedSaveGame
	.linkonce	discard
.refptr.gLoadedSaveGame:
	.quad	gLoadedSaveGame
	.section	.rdata$.refptr.gMPlayInfo_SE3, "dr"
	.globl	.refptr.gMPlayInfo_SE3
	.linkonce	discard
.refptr.gMPlayInfo_SE3:
	.quad	gMPlayInfo_SE3
	.section	.rdata$.refptr.gMPlayInfo_SE2, "dr"
	.globl	.refptr.gMPlayInfo_SE2
	.linkonce	discard
.refptr.gMPlayInfo_SE2:
	.quad	gMPlayInfo_SE2
	.section	.rdata$.refptr.gMPlayInfo_SE1, "dr"
	.globl	.refptr.gMPlayInfo_SE1
	.linkonce	discard
.refptr.gMPlayInfo_SE1:
	.quad	gMPlayInfo_SE1
	.section	.rdata$.refptr.gMPlayInfo_BGM, "dr"
	.globl	.refptr.gMPlayInfo_BGM
	.linkonce	discard
.refptr.gMPlayInfo_BGM:
	.quad	gMPlayInfo_BGM
	.section	.rdata$.refptr.gBldRegs, "dr"
	.globl	.refptr.gBldRegs
	.linkonce	discard
.refptr.gBldRegs:
	.quad	gBldRegs
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
