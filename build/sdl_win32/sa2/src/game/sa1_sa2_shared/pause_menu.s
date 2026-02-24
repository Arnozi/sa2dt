	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_PauseMenuUpdate
	.def	Task_PauseMenuUpdate;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_PauseMenuUpdate
Task_PauseMenuUpdate:
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
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gReleasedKeys[rip]
	test	BYTE PTR [rax], 1
	je	.L2
	test	BYTE PTR 131[rbx], 2
	je	.L3
	mov	BYTE PTR 131[rbx], 1
.L4:
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	cmp	WORD PTR 4[rax], 0
	jne	.L9
	and	DWORD PTR 96[rbx], -385
	and	DWORD PTR 32[rbx], -385
.L9:
	mov	rax, QWORD PTR .refptr.gRepeatedKeys[rip]
	movzx	edx, BYTE PTR 130[rbx]
	movzx	eax, WORD PTR [rax]
	test	al, 64
	je	.L10
	test	dl, dl
	jne	.L38
	test	al, -128
	jne	.L13
.L17:
	mov	rsi, QWORD PTR .refptr.PLTT[rip]
	mov	r9d, -2147483645
	lea	rbp, 138[rbx]
	mov	ecx, 3
	mov	rdx, rbp
	lea	rdi, 132[rbx]
	lea	r8, 1016[rsi]
	call	DmaSet
	mov	r9d, -2147483645
	mov	rdx, rdi
	lea	r8, 1010[rsi]
	mov	ecx, 3
	call	DmaSet
	mov	rax, QWORD PTR .refptr.gWater[rip]
	cmp	BYTE PTR [rax], 1
	je	.L39
.L18:
	xor	eax, eax
	mov	rcx, rbx
	mov	WORD PTR 128[rbx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L2:
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	movzx	eax, WORD PTR [rax]
	test	al, 8
	jne	.L36
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rdx], 0
	je	.L4
	test	al, 2
	je	.L4
.L36:
	mov	rax, QWORD PTR .refptr.gFlags[rip]
.L5:
	and	DWORD PTR [rax], -1025
	mov	rax, QWORD PTR .refptr.gMPlayTable[rip]
	mov	rcx, QWORD PTR [rax]
	call	m4aMPlayContinue
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L3:
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	movzx	edx, WORD PTR [rax]
	test	dl, 8
	jne	.L36
	cmp	BYTE PTR 130[rbx], 0
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	je	.L5
	mov	ecx, DWORD PTR [rax]
	mov	r8, QWORD PTR .refptr.gGameMode[rip]
	and	ch, -5
	cmp	BYTE PTR [r8], 0
	je	.L40
	and	edx, 2
	jne	.L5
	mov	DWORD PTR [rax], ecx
	mov	ecx, 106
	call	m4aSongNumStart
	mov	edx, 65535
	xor	ecx, ecx
	call	TasksDestroyInPriorityRange
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueIndex[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueCursor[rip]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR .refptr.gBgSpritesCount[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyQueueIndex[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyCursor[rip]
	mov	BYTE PTR [rax], dl
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	CreateTimeAttackLobbyScreen
	.p2align 4,,10
	.p2align 3
.L10:
	test	al, -128
	je	.L12
	test	dl, dl
	je	.L13
.L16:
	mov	rsi, QWORD PTR .refptr.PLTT[rip]
	mov	r9d, -2147483645
	lea	rbp, 138[rbx]
	mov	ecx, 3
	mov	rdx, rbp
	lea	rdi, 132[rbx]
	lea	r8, 1010[rsi]
	call	DmaSet
	mov	r9d, -2147483645
	mov	rdx, rdi
	lea	r8, 1016[rsi]
	mov	ecx, 3
	call	DmaSet
	mov	rax, QWORD PTR .refptr.gWater[rip]
	cmp	BYTE PTR [rax], 1
	jne	.L18
	mov	rax, QWORD PTR 16[rax]
	mov	rdx, rbp
	mov	r9d, -2147483645
	mov	ecx, 3
	mov	rsi, QWORD PTR 24[rax]
	lea	r8, 498[rsi]
	call	DmaSet
	mov	r9d, -2147483645
	mov	rdx, rdi
	lea	r8, 504[rsi]
	mov	ecx, 3
	call	DmaSet
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L38:
	mov	BYTE PTR 130[rbx], 0
	mov	ecx, 108
	call	m4aSongNumStart
	movzx	edx, BYTE PTR 130[rbx]
.L12:
	test	dl, dl
	je	.L17
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L13:
	mov	BYTE PTR 130[rbx], 1
	mov	ecx, 108
	call	m4aSongNumStart
	movzx	edx, BYTE PTR 130[rbx]
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L39:
	mov	rax, QWORD PTR 16[rax]
	mov	rdx, rbp
	mov	r9d, -2147483645
	mov	ecx, 3
	mov	rsi, QWORD PTR 24[rax]
	lea	r8, 504[rsi]
	call	DmaSet
	mov	r9d, -2147483645
	mov	rdx, rdi
	lea	r8, 498[rsi]
	mov	ecx, 3
	call	DmaSet
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L40:
	mov	DWORD PTR [rax], ecx
	mov	ecx, 106
	call	m4aSongNumStart
	mov	edx, 65535
	xor	ecx, ecx
	call	TasksDestroyInPriorityRange
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueIndex[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueCursor[rip]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR .refptr.gBgSpritesCount[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyQueueIndex[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyCursor[rip]
	mov	BYTE PTR [rax], dl
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	CreateTitleScreenAndSkipIntro
	.seh_endproc
	.p2align 4
	.globl	Task_PauseMenuInit
	.def	Task_PauseMenuInit;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_PauseMenuInit
Task_PauseMenuInit:
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
	mov	rbp, QWORD PTR .refptr.gCurTask[rip]
	mov	rsi, QWORD PTR .refptr.gMPlayTable[rip]
	xor	ebx, ebx
	mov	rax, QWORD PTR 0[rbp]
	mov	r12, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gSongTable[rip]
	movzx	edi, WORD PTR 2280[rax]
.L43:
	cmp	edi, ebx
	je	.L42
	mov	rcx, QWORD PTR [rsi]
	call	MPlayStop
.L42:
	add	ebx, 1
	add	rsi, 24
	cmp	ebx, 4
	jne	.L43
	mov	ecx, 142
	lea	rdi, Task_PauseMenuUpdate[rip]
	call	m4aSongNumStart
	mov	r9d, -2147483645
	mov	ecx, 3
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	mov	rbx, QWORD PTR .refptr.gObjPalette[rip]
	lea	r8, 132[r12]
	or	DWORD PTR [rax], 1024
	lea	rdx, 498[rbx]
	call	DmaSet
	mov	r9d, -2147483645
	mov	ecx, 3
	lea	r8, 138[r12]
	lea	rdx, 504[rbx]
	call	DmaSet
	mov	rax, QWORD PTR 0[rbp]
	mov	QWORD PTR 40[rax], rdi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.globl	TaskDestructor_PauseMenu
	.def	TaskDestructor_PauseMenu;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_PauseMenu
TaskDestructor_PauseMenu:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 8[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.globl	CreatePauseMenu
	.def	CreatePauseMenu;	.scl	2;	.type	32;	.endef
	.seh_proc	CreatePauseMenu
CreatePauseMenu:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	mov	rax, QWORD PTR [rax]
	movzx	eax, BYTE PTR 6[rax]
	test	BYTE PTR [rdx], 32
	je	.L50
.L46:
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L50:
	sub	eax, 1
	xor	edx, edx
	lea	rdi, sAnimInfoPauseMenu[rip]
	test	al, al
	cmovs	eax, edx
	movsx	rbx, al
	mov	ecx, DWORD PTR [rdi+rbx*8]
	call	VramMalloc
	mov	rsi, rax
	mov	rax, QWORD PTR .refptr.ewram_end[rip]
	cmp	QWORD PTR [rax], rsi
	je	.L46
	lea	rax, TaskDestructor_PauseMenu[rip]
	mov	r9d, 4
	mov	r8d, 65534
	mov	edx, 144
	mov	QWORD PTR 32[rsp], rax
	lea	rcx, Task_PauseMenuInit[rip]
	call	TaskCreate
	xor	edx, edx
	mov	r8d, 4351
	xor	r9d, r9d
	mov	rcx, QWORD PTR 24[rax]
	xor	eax, eax
	mov	WORD PTR 128[rcx], ax
	mov	rax, QWORD PTR .refptr.gInput[rip]
	mov	BYTE PTR 130[rcx], 0
	movzx	eax, WORD PTR [rax]
	mov	QWORD PTR 8[rcx], rsi
	mov	WORD PTR 16[rcx], dx
	and	eax, 1
	mov	WORD PTR 49[rcx], r8w
	add	eax, 1
	mov	BYTE PTR 53[rcx], 0
	mov	BYTE PTR 131[rcx], al
	movzx	eax, WORD PTR 4[rdi+rbx*8]
	mov	DWORD PTR 40[rcx], 4194424
	mov	WORD PTR 18[rcx], ax
	movzx	eax, BYTE PTR 6[rdi+rbx*8]
	mov	WORD PTR 44[rcx], r9w
	mov	BYTE PTR 48[rcx], al
	movabs	rax, 59954170039369728
	mov	QWORD PTR 32[rcx], rax
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.p2align 4
	.globl	sub_800AE58
	.def	sub_800AE58;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_800AE58
sub_800AE58:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.Tileset_zone_1_act_1_fg[rip]
	mov	r8, QWORD PTR .refptr.VRAM[rip]
	mov	ecx, 3
	mov	r9d, -2147483488
	lea	rdx, 1024[rax]
	add	r8, 97984
	call	DmaSet
	mov	rax, QWORD PTR .refptr.gObjPalette[rip]
	mov	edx, 32767
	mov	WORD PTR 2[rax], dx
	mov	rdx, QWORD PTR .refptr.gFlags[rip]
	mov	eax, DWORD PTR [rdx]
	and	ah, -5
	or	eax, 2
	mov	DWORD PTR [rdx], eax
	add	rsp, 40
	ret
	.seh_endproc
	.globl	sAnimInfoPauseMenu
	.section .rdata,"dr"
	.align 32
sAnimInfoPauseMenu:
	.long	40
	.word	1066
	.byte	0
	.space 1
	.long	40
	.word	1067
	.byte	0
	.space 1
	.long	40
	.word	1068
	.byte	0
	.space 1
	.long	40
	.word	1069
	.byte	0
	.space 1
	.long	40
	.word	1070
	.byte	0
	.space 1
	.long	40
	.word	1071
	.byte	0
	.space 1
	.ident	"GCC: (GNU) 13-win32"
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayContinue;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TasksDestroyInPriorityRange;	.scl	2;	.type	32;	.endef
	.def	CreateTimeAttackLobbyScreen;	.scl	2;	.type	32;	.endef
	.def	CreateTitleScreenAndSkipIntro;	.scl	2;	.type	32;	.endef
	.def	MPlayStop;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.Tileset_zone_1_act_1_fg, "dr"
	.globl	.refptr.Tileset_zone_1_act_1_fg
	.linkonce	discard
.refptr.Tileset_zone_1_act_1_fg:
	.quad	Tileset_zone_1_act_1_fg
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gInput, "dr"
	.globl	.refptr.gInput
	.linkonce	discard
.refptr.gInput:
	.quad	gInput
	.section	.rdata$.refptr.ewram_end, "dr"
	.globl	.refptr.ewram_end
	.linkonce	discard
.refptr.ewram_end:
	.quad	ewram_end
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
	.section	.rdata$.refptr.gLoadedSaveGame, "dr"
	.globl	.refptr.gLoadedSaveGame
	.linkonce	discard
.refptr.gLoadedSaveGame:
	.quad	gLoadedSaveGame
	.section	.rdata$.refptr.gObjPalette, "dr"
	.globl	.refptr.gObjPalette
	.linkonce	discard
.refptr.gObjPalette:
	.quad	gObjPalette
	.section	.rdata$.refptr.gSongTable, "dr"
	.globl	.refptr.gSongTable
	.linkonce	discard
.refptr.gSongTable:
	.quad	gSongTable
	.section	.rdata$.refptr.gWater, "dr"
	.globl	.refptr.gWater
	.linkonce	discard
.refptr.gWater:
	.quad	gWater
	.section	.rdata$.refptr.PLTT, "dr"
	.globl	.refptr.PLTT
	.linkonce	discard
.refptr.PLTT:
	.quad	PLTT
	.section	.rdata$.refptr.gRepeatedKeys, "dr"
	.globl	.refptr.gRepeatedKeys
	.linkonce	discard
.refptr.gRepeatedKeys:
	.quad	gRepeatedKeys
	.section	.rdata$.refptr.gBldRegs, "dr"
	.globl	.refptr.gBldRegs
	.linkonce	discard
.refptr.gBldRegs:
	.quad	gBldRegs
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
	.section	.rdata$.refptr.gMPlayTable, "dr"
	.globl	.refptr.gMPlayTable
	.linkonce	discard
.refptr.gMPlayTable:
	.quad	gMPlayTable
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gPressedKeys, "dr"
	.globl	.refptr.gPressedKeys
	.linkonce	discard
.refptr.gPressedKeys:
	.quad	gPressedKeys
	.section	.rdata$.refptr.gReleasedKeys, "dr"
	.globl	.refptr.gReleasedKeys
	.linkonce	discard
.refptr.gReleasedKeys:
	.quad	gReleasedKeys
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
