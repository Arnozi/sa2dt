	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	Task_FadeInAndStartEnterAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_FadeInAndStartEnterAnim
Task_FadeInAndStartEnterAnim:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rbx]
	mov	rsi, QWORD PTR 24[rax]
	lea	rcx, 448[rsi]
	call	UpdateScreenFade
	cmp	al, 1
	jne	.L1
	mov	rax, QWORD PTR [rbx]
	lea	rdx, Task_EnterAnimPart1[rip]
	mov	BYTE PTR 460[rsi], 15
	mov	QWORD PTR 40[rax], rdx
.L1:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	MultiplayerModeSelectScreenOnDestroy;	.scl	3;	.type	32;	.endef
	.seh_proc	MultiplayerModeSelectScreenOnDestroy
MultiplayerModeSelectScreenOnDestroy:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 200[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 264[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 328[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 392[rbx]
	add	rsp, 32
	pop	rbx
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	Task_EnterAnimPart1;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_EnterAnimPart1
Task_EnterAnimPart1:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	mov	ecx, 426
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gHBlankCopySize[rip]
	mov	BYTE PTR [rax], 2
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	add	rax, 68
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	rdx, QWORD PTR .LC0[rip]
	mov	QWORD PTR 16[rax], rdx
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 4
	call	InitHBlankBgOffsets
	mov	edx, 16
	mov	ecx, 25600
	movzx	eax, BYTE PTR 460[rbx]
	sub	edx, eax
	lea	edx, [rdx+rdx*4]
	sal	edx, 2
	movzx	edx, dx
	call	ScreenMask_Right_OriginTop
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	test	BYTE PTR [rax], 1
	je	.L6
	mov	rax, QWORD PTR [rsi]
	lea	rcx, Task_EnterAnimPart2[rip]
	mov	QWORD PTR 40[rax], rcx
	mov	BYTE PTR 460[rbx], -1
.L5:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	sub	BYTE PTR 460[rbx], 1
	jne	.L5
	mov	rax, QWORD PTR [rsi]
	lea	rcx, Task_EnterAnimPart2[rip]
	mov	QWORD PTR 40[rax], rcx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_ExitAndInitSelectedPakMode;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_ExitAndInitSelectedPakMode
Task_ExitAndInitSelectedPakMode:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	edx, 65535
	xor	ecx, ecx
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	movzx	ebx, BYTE PTR 461[rax]
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
	jne	.L9
	add	rsp, 32
	pop	rbx
	jmp	StartMultiPakConnect
	.p2align 4,,10
	.p2align 3
.L9:
	add	rsp, 32
	pop	rbx
	jmp	StartSinglePakConnect
	.seh_endproc
	.p2align 4
	.def	Task_ScreenMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_ScreenMain
Task_ScreenMain:
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
	mov	rsi, QWORD PTR .refptr.gPressedKeys[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, WORD PTR [rsi]
	test	al, 1
	jne	.L22
	test	al, 2
	jne	.L23
.L12:
	mov	rax, QWORD PTR .refptr.gHBlankCopySize[rip]
	mov	rdx, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	mov	ecx, 426
	mov	BYTE PTR [rax], 2
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	add	rax, 68
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	rdx, QWORD PTR .LC0[rip]
	mov	QWORD PTR 16[rax], rdx
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 4
	call	InitHBlankBgOffsets
	mov	edx, 320
	mov	ecx, 25600
	call	ScreenMask_Right_OriginTop
	test	BYTE PTR [rsi], -64
	jne	.L13
	movzx	edx, BYTE PTR 461[rbx]
.L14:
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rax, QWORD PTR [rax]
	movzx	eax, BYTE PTR 6[rax]
	sal	eax, 2
	movzx	eax, al
	test	dl, dl
	je	.L15
	mov	BYTE PTR 309[rbx], 1
	add	eax, 3
	mov	BYTE PTR 373[rbx], -1
.L21:
	lea	rdx, sMultiplayerModeSelectScreenText[rip]
	cdqe
	mov	BYTE PTR 433[rbx], -1
	movzx	ecx, WORD PTR 4[rdx+rax*8]
	movzx	eax, BYTE PTR 6[rdx+rax*8]
	mov	WORD PTR 402[rbx], cx
	lea	rcx, 192[rbx]
	mov	BYTE PTR 432[rbx], al
	call	DisplaySprite
	lea	rcx, 256[rbx]
	call	DisplaySprite
	lea	rcx, 320[rbx]
	call	DisplaySprite
	cmp	BYTE PTR 462[rbx], 0
	jne	.L24
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L15:
	mov	BYTE PTR 309[rbx], 0
	add	eax, 2
	mov	BYTE PTR 373[rbx], 0
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L23:
	mov	rax, QWORD PTR .LC2[rip]
	mov	ecx, 107
	mov	DWORD PTR 456[rbx], 16383
	mov	QWORD PTR 448[rbx], rax
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rdi]
	lea	rdi, Task_FadeOutAndExitToTitleScreen[rip]
	mov	QWORD PTR 40[rax], rdi
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L22:
	mov	rax, QWORD PTR .LC2[rip]
	mov	ecx, 106
	mov	DWORD PTR 456[rbx], 16383
	mov	QWORD PTR 448[rbx], rax
	call	m4aSongNumStart
	call	MultiSioStop
	xor	ecx, ecx
	call	MultiSioInit
	mov	rax, QWORD PTR [rdi]
	lea	rdi, Task_FadeOutToSelectedMode[rip]
	mov	QWORD PTR 40[rax], rdi
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L24:
	add	rbx, 384
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L13:
	mov	ecx, 108
	call	m4aSongNumStart
	movzx	edx, BYTE PTR 461[rbx]
	xor	edx, 1
	mov	BYTE PTR 461[rbx], dl
	jmp	.L14
	.seh_endproc
	.p2align 4
	.def	Task_FadeOutAndExitToTitleScreen;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_FadeOutAndExitToTitleScreen
Task_FadeOutAndExitToTitleScreen:
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
	lea	rcx, 448[rbx]
	call	UpdateScreenFade
	cmp	al, 1
	je	.L28
	mov	rax, QWORD PTR .refptr.gHBlankCopySize[rip]
	mov	rdx, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	mov	ecx, 426
	mov	BYTE PTR [rax], 2
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	add	rax, 68
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	rdx, QWORD PTR .LC6[rip]
	mov	QWORD PTR 16[rax], rdx
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 4
	call	InitHBlankBgOffsets
	mov	edx, 320
	mov	ecx, 25600
	call	ScreenMask_Right_OriginTop
	lea	rcx, 192[rbx]
	call	DisplaySprite
	lea	rcx, 256[rbx]
	call	DisplaySprite
	lea	rcx, 320[rbx]
	call	DisplaySprite
	cmp	BYTE PTR 462[rbx], 0
	jne	.L29
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L29:
	add	rbx, 384
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L28:
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	and	DWORD PTR [rax], -5
	call	CreateTitleScreenAtPlayModeMenu
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.def	Task_FadeOutToSelectedMode;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_FadeOutToSelectedMode
Task_FadeOutToSelectedMode:
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
	lea	rcx, 448[rbx]
	call	UpdateScreenFade
	cmp	al, 1
	je	.L33
	mov	rax, QWORD PTR .refptr.gHBlankCopySize[rip]
	mov	rdx, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	mov	ecx, 426
	mov	BYTE PTR [rax], 2
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	add	rax, 68
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	rdx, QWORD PTR .LC6[rip]
	mov	QWORD PTR 16[rax], rdx
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 4
	call	InitHBlankBgOffsets
	mov	edx, 320
	mov	ecx, 25600
	call	ScreenMask_Right_OriginTop
	lea	rcx, 192[rbx]
	call	DisplaySprite
	lea	rcx, 256[rbx]
	call	DisplaySprite
	lea	rcx, 320[rbx]
	call	DisplaySprite
	cmp	BYTE PTR 462[rbx], 0
	jne	.L34
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L34:
	add	rbx, 384
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L33:
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	and	DWORD PTR [rax], -5
	mov	rax, QWORD PTR .refptr.gMultiSioEnabled[rip]
	mov	BYTE PTR [rax], 1
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_ExitAndInitSelectedPakMode[rip]
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_EnterAnimPart2;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_EnterAnimPart2
Task_EnterAnimPart2:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rdx]
	movzx	eax, BYTE PTR 460[rbx]
	add	eax, 1
	mov	BYTE PTR 460[rbx], al
	cmp	al, 32
	jne	.L36
	lea	rax, Task_ScreenMain[rip]
	mov	BYTE PTR 462[rbx], 1
	mov	QWORD PTR 40[rdx], rax
.L36:
	mov	rdx, QWORD PTR .refptr.gPressedKeys[rip]
	mov	eax, 31
	test	BYTE PTR [rdx], 1
	jne	.L37
	movzx	eax, BYTE PTR 460[rbx]
.L37:
	mov	BYTE PTR 460[rbx], al
	mov	rax, QWORD PTR .refptr.gHBlankCopySize[rip]
	mov	ecx, 426
	mov	rdx, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	mov	BYTE PTR [rax], 2
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	add	rax, 68
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	rdx, QWORD PTR .LC0[rip]
	mov	QWORD PTR 16[rax], rdx
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 4
	call	InitHBlankBgOffsets
	mov	edx, 320
	mov	ecx, 25600
	call	ScreenMask_Right_OriginTop
	movzx	eax, BYTE PTR 460[rbx]
	cmp	al, 9
	ja	.L38
	mov	ecx, 10
	lea	eax, [rax+rax*2]
	mov	WORD PTR 232[rbx], cx
	lea	eax, -20[0+rax*4]
	mov	WORD PTR 230[rbx], ax
	mov	eax, -142
.L39:
	mov	edx, 90
	mov	WORD PTR 294[rbx], ax
	mov	eax, -90
	mov	WORD PTR 296[rbx], dx
.L42:
	mov	WORD PTR 358[rbx], ax
	mov	eax, 85
	lea	rcx, 192[rbx]
	mov	WORD PTR 360[rbx], ax
	call	DisplaySprite
	lea	rcx, 256[rbx]
	call	DisplaySprite
	lea	rcx, 320[rbx]
	call	DisplaySprite
	cmp	BYTE PTR 462[rbx], 0
	jne	.L45
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L38:
	mov	DWORD PTR 230[rbx], 655460
	cmp	al, 19
	ja	.L40
	sal	eax, 4
	sub	ax, 426
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L40:
	mov	DWORD PTR 294[rbx], 5898382
	cmp	al, 29
	ja	.L46
	sal	eax, 4
	sub	ax, 410
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L46:
	mov	eax, 70
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L45:
	add	rbx, 384
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	CreateMultiplayerModeSelectScreen
	.def	CreateMultiplayerModeSelectScreen;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateMultiplayerModeSelectScreen
CreateMultiplayerModeSelectScreen:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	r8, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	edx, 4929
	mov	r9d, -2063597563
	mov	ecx, 3
	lea	rsi, sMultiplayerModeSelectScreenText[rip]
	mov	rax, QWORD PTR [rax]
	movzx	ebp, BYTE PTR 6[rax]
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	lea	rbx, 60[rsp]
	mov	WORD PTR [rax], dx
	sal	ebp, 2
	mov	rdx, rbx
	mov	DWORD PTR 60[rsp], 0
	movzx	edi, bpl
	movzx	ebp, bpl
	call	DmaSet
	mov	r8, QWORD PTR .refptr.gMultiSioRecv[rip]
	mov	rdx, rbx
	mov	r9d, -2063597548
	mov	ecx, 3
	mov	DWORD PTR 60[rsp], 0
	call	DmaSet
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	edx, 464
	xor	r9d, r9d
	mov	r8d, 8192
	lea	rcx, Task_FadeInAndStartEnterAnim[rip]
	mov	DWORD PTR [rax], 1443632129
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	QWORD PTR [rax], 0
	lea	rax, MultiplayerModeSelectScreenOnDestroy[rip]
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	xor	ecx, ecx
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .LC11[rip]
	mov	WORD PTR 460[rbx], cx
	lea	rcx, 448[rbx]
	mov	BYTE PTR 462[rbx], 0
	mov	QWORD PTR 448[rbx], rax
	mov	DWORD PTR 456[rbx], 16383
	call	UpdateScreenFade
	mov	ecx, 50
	call	VramMalloc
	xor	r9d, r9d
	mov	r8d, -256
	mov	DWORD PTR 208[rbx], 70320128
	mov	WORD PTR 240[rbx], r8w
	lea	rcx, 192[rbx]
	mov	WORD PTR 236[rbx], r9w
	mov	QWORD PTR 200[rbx], rax
	mov	BYTE PTR 242[rbx], 16
	mov	BYTE PTR 245[rbx], 0
	mov	DWORD PTR 248[rbx], -1
	mov	QWORD PTR 224[rbx], 4096
	mov	DWORD PTR 232[rbx], 16777216
	call	UpdateSpriteAnimation
	mov	ecx, DWORD PTR [rsi+rbp*8]
	call	VramMalloc
	xor	r10d, r10d
	mov	r11d, 4351
	mov	BYTE PTR 309[rbx], 0
	mov	QWORD PTR 264[rbx], rax
	movzx	eax, WORD PTR 4[rsi+rbp*8]
	lea	rcx, 256[rbx]
	mov	WORD PTR 272[rbx], r10w
	mov	WORD PTR 274[rbx], ax
	movzx	eax, BYTE PTR 6[rsi+rbp*8]
	xor	ebp, ebp
	mov	WORD PTR 305[rbx], r11w
	mov	WORD PTR 300[rbx], bp
	lea	ebp, 1[rdi]
	add	edi, 2
	mov	BYTE PTR 304[rbx], al
	movsx	rbp, ebp
	movsx	rdi, edi
	mov	DWORD PTR 312[rbx], -1
	mov	QWORD PTR 288[rbx], 4096
	mov	DWORD PTR 296[rbx], 16777216
	call	UpdateSpriteAnimation
	mov	ecx, DWORD PTR [rsi+rbp*8]
	call	VramMalloc
	mov	BYTE PTR 373[rbx], 0
	lea	rcx, 320[rbx]
	mov	QWORD PTR 328[rbx], rax
	movzx	eax, WORD PTR 4[rsi+rbp*8]
	mov	DWORD PTR 376[rbx], -1
	mov	WORD PTR 338[rbx], ax
	movzx	eax, BYTE PTR 6[rsi+rbp*8]
	mov	QWORD PTR 352[rbx], 4096
	mov	BYTE PTR 368[rbx], al
	xor	eax, eax
	mov	WORD PTR 336[rbx], ax
	mov	eax, 4351
	mov	WORD PTR 369[rbx], ax
	xor	eax, eax
	mov	DWORD PTR 360[rbx], 16777216
	mov	WORD PTR 364[rbx], ax
	call	UpdateSpriteAnimation
	mov	ecx, DWORD PTR [rsi+rdi*8]
	call	VramMalloc
	xor	edx, edx
	mov	r8d, 32
	xor	r9d, r9d
	xor	ecx, ecx
	mov	QWORD PTR 392[rbx], rax
	movzx	eax, WORD PTR 4[rsi+rdi*8]
	mov	WORD PTR 428[rbx], dx
	movdqu	xmm0, XMMWORD PTR .LC14[rip]
	mov	WORD PTR 402[rbx], ax
	movzx	eax, BYTE PTR 6[rsi+rdi*8]
	mov	rsi, QWORD PTR .refptr.VRAM[rip]
	mov	WORD PTR 18[rbx], cx
	mov	rcx, rbx
	mov	BYTE PTR 432[rbx], al
	xor	eax, eax
	mov	WORD PTR 400[rbx], ax
	mov	eax, 4351
	mov	WORD PTR 433[rbx], ax
	movabs	rax, 2251799813685248
	mov	QWORD PTR 416[rbx], rax
	lea	rax, 40960[rsi]
	mov	QWORD PTR 8[rbx], rsi
	mov	QWORD PTR 24[rbx], rax
	mov	WORD PTR 60[rbx], r8w
	mov	WORD PTR 66[rbx], r9w
	mov	BYTE PTR 437[rbx], 0
	mov	DWORD PTR 440[rbx], -1
	mov	DWORD PTR 424[rbx], 16777319
	mov	BYTE PTR 62[rbx], 0
	movups	XMMWORD PTR 44[rbx], xmm0
	call	DrawBackground
	lea	rax, 49152[rsi]
	xor	r10d, r10d
	add	rsi, 45056
	mov	QWORD PTR 120[rbx], rsi
	mov	r11d, 32
	mov	esi, 1
	lea	rcx, 96[rbx]
	movdqu	xmm0, XMMWORD PTR .LC15[rip]
	mov	QWORD PTR 104[rbx], rax
	mov	WORD PTR 114[rbx], r10w
	mov	WORD PTR 156[rbx], r11w
	mov	BYTE PTR 158[rbx], 0
	mov	WORD PTR 162[rbx], si
	movups	XMMWORD PTR 140[rbx], xmm0
	call	DrawBackground
	mov	ecx, 66
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	m4aSongNumStart
	.seh_endproc
	.section .rdata,"dr"
	.align 32
sMultiplayerModeSelectScreenText:
	.long	38
	.word	1073
	.byte	1
	.space 1
	.long	32
	.word	1073
	.byte	2
	.space 1
	.long	168
	.word	1073
	.byte	3
	.space 1
	.long	168
	.word	1073
	.byte	4
	.space 1
	.long	38
	.word	1073
	.byte	1
	.space 1
	.long	32
	.word	1073
	.byte	2
	.space 1
	.long	168
	.word	1073
	.byte	3
	.space 1
	.long	168
	.word	1073
	.byte	4
	.space 1
	.long	36
	.word	1094
	.byte	0
	.space 1
	.long	38
	.word	1094
	.byte	1
	.space 1
	.long	168
	.word	1094
	.byte	2
	.space 1
	.long	168
	.word	1094
	.byte	3
	.space 1
	.long	34
	.word	1095
	.byte	0
	.space 1
	.long	28
	.word	1095
	.byte	1
	.space 1
	.long	168
	.word	1095
	.byte	2
	.space 1
	.long	168
	.word	1095
	.byte	3
	.space 1
	.long	36
	.word	1096
	.byte	0
	.space 1
	.long	32
	.word	1096
	.byte	1
	.space 1
	.long	168
	.word	1096
	.byte	2
	.space 1
	.long	168
	.word	1096
	.byte	3
	.space 1
	.long	36
	.word	1097
	.byte	0
	.space 1
	.long	36
	.word	1097
	.byte	1
	.space 1
	.long	168
	.word	1097
	.byte	2
	.space 1
	.long	168
	.word	1097
	.byte	3
	.space 1
	.long	36
	.word	1098
	.byte	0
	.space 1
	.long	36
	.word	1098
	.byte	1
	.space 1
	.long	168
	.word	1098
	.byte	2
	.space 1
	.long	168
	.word	1098
	.byte	3
	.space 1
	.align 8
.LC0:
	.long	4864
	.long	17
	.align 8
.LC2:
	.word	1
	.word	1
	.word	0
	.word	256
	.align 8
.LC6:
	.long	13056
	.long	49
	.align 8
.LC11:
	.word	1
	.word	2
	.word	0
	.word	256
	.align 16
.LC14:
	.word	0
	.word	0
	.word	110
	.word	0
	.word	0
	.word	0
	.word	0
	.word	32
	.align 16
.LC15:
	.word	0
	.word	0
	.word	111
	.word	0
	.word	0
	.word	0
	.word	0
	.word	32
	.ident	"GCC: (GNU) 13-win32"
	.def	UpdateScreenFade;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	InitHBlankBgOffsets;	.scl	2;	.type	32;	.endef
	.def	ScreenMask_Right_OriginTop;	.scl	2;	.type	32;	.endef
	.def	TasksDestroyInPriorityRange;	.scl	2;	.type	32;	.endef
	.def	StartMultiPakConnect;	.scl	2;	.type	32;	.endef
	.def	StartSinglePakConnect;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	MultiSioStop;	.scl	2;	.type	32;	.endef
	.def	MultiSioInit;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	CreateTitleScreenAtPlayModeMenu;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	DrawBackground;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
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
	.section	.rdata$.refptr.gMultiSioRecv, "dr"
	.globl	.refptr.gMultiSioRecv
	.linkonce	discard
.refptr.gMultiSioRecv:
	.quad	gMultiSioRecv
	.section	.rdata$.refptr.gMultiSioSend, "dr"
	.globl	.refptr.gMultiSioSend
	.linkonce	discard
.refptr.gMultiSioSend:
	.quad	gMultiSioSend
	.section	.rdata$.refptr.gDispCnt, "dr"
	.globl	.refptr.gDispCnt
	.linkonce	discard
.refptr.gDispCnt:
	.quad	gDispCnt
	.section	.rdata$.refptr.gMultiSioEnabled, "dr"
	.globl	.refptr.gMultiSioEnabled
	.linkonce	discard
.refptr.gMultiSioEnabled:
	.quad	gMultiSioEnabled
	.section	.rdata$.refptr.gLoadedSaveGame, "dr"
	.globl	.refptr.gLoadedSaveGame
	.linkonce	discard
.refptr.gLoadedSaveGame:
	.quad	gLoadedSaveGame
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
	.section	.rdata$.refptr.gPressedKeys, "dr"
	.globl	.refptr.gPressedKeys
	.linkonce	discard
.refptr.gPressedKeys:
	.quad	gPressedKeys
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
	.section	.rdata$.refptr.gWinRegs, "dr"
	.globl	.refptr.gWinRegs
	.linkonce	discard
.refptr.gWinRegs:
	.quad	gWinRegs
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
	.section	.rdata$.refptr.gHBlankCopyTarget, "dr"
	.globl	.refptr.gHBlankCopyTarget
	.linkonce	discard
.refptr.gHBlankCopyTarget:
	.quad	gHBlankCopyTarget
	.section	.rdata$.refptr.gHBlankCopySize, "dr"
	.globl	.refptr.gHBlankCopySize
	.linkonce	discard
.refptr.gHBlankCopySize:
	.quad	gHBlankCopySize
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
