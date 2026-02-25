	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	Task_MultipackOutcomeScreen;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_MultipackOutcomeScreen
Task_MultipackOutcomeScreen:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	lea	rsi, 224[rbx]
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	cmp	BYTE PTR 627[rbx], 0
	jne	.L2
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	movzx	eax, BYTE PTR 630[rbx]
	lea	rsi, 288[rbx]
	mov	rdx, QWORD PTR [rdx]
	movzx	ecx, BYTE PTR 6[rdx]
	lea	rdx, sCommMessages[rip]
	lea	rdx, 56[rdx+rcx*8]
	movzx	ecx, WORD PTR 4[rdx]
	mov	WORD PTR 306[rbx], cx
	movzx	edx, BYTE PTR 6[rdx]
	lea	eax, -2[rax+rdx]
.L11:
	mov	BYTE PTR 336[rbx], al
	mov	rcx, rsi
	mov	BYTE PTR 337[rbx], -1
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	lea	rsi, 352[rbx]
	call	DisplaySprite
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	movzx	eax, WORD PTR 624[rbx]
	test	ax, ax
	jne	.L13
	mov	rdx, QWORD PTR .refptr.gBldRegs[rip]
	movzx	eax, WORD PTR 4[rdx]
	cmp	ax, 16
	je	.L6
	add	eax, 1
	mov	WORD PTR 4[rdx], ax
.L1:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	lea	rsi, 288[rbx]
	mov	rax, QWORD PTR [rax]
	movzx	edx, BYTE PTR 6[rax]
	lea	rax, sCommMessages[rip]
	lea	rax, [rax+rdx*8]
	movzx	edx, WORD PTR 4[rax]
	mov	WORD PTR 306[rbx], dx
	movzx	eax, BYTE PTR 6[rax]
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L13:
	mov	rdx, QWORD PTR .refptr.gBldRegs[rip]
	sub	eax, 1
	mov	WORD PTR 624[rbx], ax
	movzx	eax, WORD PTR 4[rdx]
	test	ax, ax
	je	.L1
	sub	eax, 1
	mov	WORD PTR 4[rdx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	mov	edx, 65535
	xor	ecx, ecx
	movzx	ebx, BYTE PTR 627[rbx]
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
	test	bl, bl
	jne	.L7
	mov	rax, QWORD PTR .refptr.gMultiplayerUnlockedCharacters[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	movzx	ecx, BYTE PTR [rax]
	and	edx, 16
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	CreateCharacterSelectionScreen
	.p2align 4,,10
	.p2align 3
.L7:
	mov	rax, QWORD PTR .refptr.gMultiSioEnabled[rip]
	mov	BYTE PTR [rax], 0
	call	MultiSioStop
	xor	ecx, ecx
	call	MultiSioInit
	mov	rax, QWORD PTR .refptr.gTilemapsRef[rip]
	mov	rdx, QWORD PTR .refptr.gTilemaps[rip]
	mov	QWORD PTR [rax], rdx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	CreateTitleScreenAndSkipIntro
	.seh_endproc
	.p2align 4
	.globl	CreateMultipackOutcomeScreen
	.def	CreateMultipackOutcomeScreen;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateMultipackOutcomeScreen
CreateMultipackOutcomeScreen:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	edx, 2051
	xor	r9d, r9d
	mov	r11d, 12608
	mov	r8d, 16
	mov	WORD PTR [rax], r11w
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	rdx, QWORD PTR .LC1[rip]
	mov	DWORD PTR [rax], 256
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	ebx, ecx
	mov	ecx, 191
	mov	DWORD PTR [rax], 426
	mov	QWORD PTR 16[rax], rdx
	mov	edx, 656
	mov	DWORD PTR 8[rax], 240
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	mov	WORD PTR [rax], cx
	lea	rcx, Task_MultipackOutcomeScreen[rip]
	mov	WORD PTR 4[rax], r8w
	mov	r8d, 8192
	mov	QWORD PTR 32[rsp], 0
	call	TaskCreate
	mov	r9d, 120
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rax, QWORD PTR 24[rax]
	mov	rdx, QWORD PTR .refptr.gMultiplayerConnections[rip]
	mov	BYTE PTR 627[rax], bl
	mov	DWORD PTR 620[rax], 0
	mov	WORD PTR 624[rax], r9w
	movzx	r9d, BYTE PTR [rdx]
.L16:
	mov	edx, r9d
	sar	edx, cl
	add	ecx, 1
	and	edx, 1
	add	r8d, edx
	cmp	ecx, 4
	jne	.L16
	mov	rdx, QWORD PTR .refptr.VRAM[rip]
	xor	r9d, r9d
	xor	r11d, r11d
	mov	BYTE PTR 630[rax], r8b
	xor	r8d, r8d
	mov	WORD PTR 304[rax], r9w
	lea	r10, sBackgroundVariants[rip]
	lea	r9, sBackgroundAnims[rip]
	mov	WORD PTR 396[rax], r8w
	lea	r8, 73728[rdx]
	lea	rcx, 65536[rdx]
	mov	QWORD PTR 296[rax], r8
	movzx	r8d, bl
	movzx	r9d, WORD PTR [r9+r8*2]
	movzx	r8d, BYTE PTR [r10+r8]
	mov	QWORD PTR 360[rax], rcx
	lea	ecx, 6[rbx]
	mov	r10d, 4351
	mov	BYTE PTR 400[rax], cl
	mov	ecx, 4351
	mov	WORD PTR 337[rax], r10w
	lea	r10, 81920[rdx]
	mov	WORD PTR 401[rax], cx
	movabs	rcx, 59954170039377920
	mov	QWORD PTR 232[rax], r10
	xor	r10d, r10d
	mov	QWORD PTR 384[rax], rcx
	mov	WORD PTR 306[rax], r9w
	mov	BYTE PTR 336[rax], r8b
	mov	QWORD PTR 320[rax], rcx
	mov	WORD PTR 332[rax], r11w
	mov	r11d, 4351
	mov	WORD PTR 240[rax], r10w
	xor	r10d, r10d
	mov	WORD PTR 242[rax], r9w
	mov	r9d, 20
	mov	BYTE PTR 272[rax], r8b
	xor	r8d, r8d
	mov	QWORD PTR 256[rax], rcx
	xor	ecx, ecx
	mov	QWORD PTR 8[rax], rdx
	add	rdx, 16384
	mov	WORD PTR 273[rax], r11w
	mov	WORD PTR 268[rax], cx
	mov	rcx, rax
	mov	WORD PTR 18[rax], r8w
	mov	DWORD PTR 368[rax], 70385664
	mov	BYTE PTR 405[rax], 0
	mov	DWORD PTR 392[rax], 62914780
	mov	BYTE PTR 341[rax], 0
	mov	DWORD PTR 328[rax], 62914596
	mov	BYTE PTR 277[rax], 0
	mov	DWORD PTR 264[rax], 62914760
	mov	QWORD PTR 24[rax], rdx
	movdqu	xmm0, XMMWORD PTR .LC3[rip]
	mov	WORD PTR 60[rax], r9w
	mov	WORD PTR 66[rax], r10w
	mov	BYTE PTR 62[rax], 0
	movups	XMMWORD PTR 44[rax], xmm0
	call	DrawBackground
	call	m4aMPlayAllStop
	test	bl, bl
	je	.L17
	mov	ecx, 414
	add	rsp, 48
	pop	rbx
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L17:
	mov	ecx, 413
	add	rsp, 48
	pop	rbx
	jmp	m4aSongNumStart
	.seh_endproc
	.section .rdata,"dr"
	.align 32
sCommMessages:
	.long	51
	.word	1074
	.byte	1
	.space 1
	.long	51
	.word	1074
	.byte	1
	.space 1
	.long	75
	.word	1079
	.byte	1
	.space 1
	.long	75
	.word	1080
	.byte	1
	.space 1
	.long	57
	.word	1081
	.byte	1
	.space 1
	.long	45
	.word	1082
	.byte	1
	.space 1
	.long	51
	.word	1083
	.byte	1
	.space 1
	.long	66
	.word	1074
	.byte	3
	.space 1
	.long	66
	.word	1074
	.byte	3
	.space 1
	.long	68
	.word	1079
	.byte	3
	.space 1
	.long	88
	.word	1080
	.byte	3
	.space 1
	.long	60
	.word	1081
	.byte	3
	.space 1
	.long	68
	.word	1082
	.byte	3
	.space 1
	.long	60
	.word	1083
	.byte	3
	.space 1
sBackgroundVariants:
	.ascii "\0\1"
	.align 2
sBackgroundAnims:
	.word	1075
	.word	1075
	.align 8
.LC1:
	.long	49
	.long	49
	.align 16
.LC3:
	.word	0
	.word	0
	.word	115
	.word	0
	.word	0
	.word	0
	.word	0
	.word	30
	.ident	"GCC: (GNU) 13-win32"
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TasksDestroyInPriorityRange;	.scl	2;	.type	32;	.endef
	.def	CreateCharacterSelectionScreen;	.scl	2;	.type	32;	.endef
	.def	MultiSioStop;	.scl	2;	.type	32;	.endef
	.def	MultiSioInit;	.scl	2;	.type	32;	.endef
	.def	CreateTitleScreenAndSkipIntro;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	DrawBackground;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayAllStop;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gMultiplayerConnections, "dr"
	.globl	.refptr.gMultiplayerConnections
	.linkonce	discard
.refptr.gMultiplayerConnections:
	.quad	gMultiplayerConnections
	.section	.rdata$.refptr.gWinRegs, "dr"
	.globl	.refptr.gWinRegs
	.linkonce	discard
.refptr.gWinRegs:
	.quad	gWinRegs
	.section	.rdata$.refptr.gBgScrollRegs, "dr"
	.globl	.refptr.gBgScrollRegs
	.linkonce	discard
.refptr.gBgScrollRegs:
	.quad	gBgScrollRegs
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
	.section	.rdata$.refptr.gTilemaps, "dr"
	.globl	.refptr.gTilemaps
	.linkonce	discard
.refptr.gTilemaps:
	.quad	gTilemaps
	.section	.rdata$.refptr.gTilemapsRef, "dr"
	.globl	.refptr.gTilemapsRef
	.linkonce	discard
.refptr.gTilemapsRef:
	.quad	gTilemapsRef
	.section	.rdata$.refptr.gMultiSioEnabled, "dr"
	.globl	.refptr.gMultiSioEnabled
	.linkonce	discard
.refptr.gMultiSioEnabled:
	.quad	gMultiSioEnabled
	.section	.rdata$.refptr.gSelectedCharacter, "dr"
	.globl	.refptr.gSelectedCharacter
	.linkonce	discard
.refptr.gSelectedCharacter:
	.quad	gSelectedCharacter
	.section	.rdata$.refptr.gMultiplayerUnlockedCharacters, "dr"
	.globl	.refptr.gMultiplayerUnlockedCharacters
	.linkonce	discard
.refptr.gMultiplayerUnlockedCharacters:
	.quad	gMultiplayerUnlockedCharacters
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
	.section	.rdata$.refptr.gBldRegs, "dr"
	.globl	.refptr.gBldRegs
	.linkonce	discard
.refptr.gBldRegs:
	.quad	gBldRegs
	.section	.rdata$.refptr.gLoadedSaveGame, "dr"
	.globl	.refptr.gLoadedSaveGame
	.linkonce	discard
.refptr.gLoadedSaveGame:
	.quad	gLoadedSaveGame
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
