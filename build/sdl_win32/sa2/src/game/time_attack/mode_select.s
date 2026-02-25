	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	Task_FadeInAndStartIntro;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_FadeInAndStartIntro
Task_FadeInAndStartIntro:
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
	lea	rdx, Task_IntroSweepAnim[rip]
	mov	BYTE PTR 460[rsi], 15
	mov	QWORD PTR 40[rax], rdx
.L1:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	TimeAttackModeSelectionScreenOnDestroy;	.scl	3;	.type	32;	.endef
	.seh_proc	TimeAttackModeSelectionScreenOnDestroy
TimeAttackModeSelectionScreenOnDestroy:
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
	.globl	Task_IntroSweepAnim
	.def	Task_IntroSweepAnim;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_IntroSweepAnim
Task_IntroSweepAnim:
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
	mov	BYTE PTR [rax], 4
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	add	rax, 68
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	rdx, QWORD PTR .LC0[rip]
	mov	QWORD PTR 16[rax], rdx
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 4
	call	InitHBlankBgOffsets
	movzx	edx, BYTE PTR 460[rbx]
	mov	ecx, 25600
	lea	edx, [rdx+rdx*4]
	lea	edx, 700[0+rdx*4]
	movzx	edx, dx
	call	ScreenMask_Right_OriginBottom
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	test	BYTE PTR [rax], 1
	je	.L6
	mov	rax, QWORD PTR [rsi]
	lea	rcx, Task_IntroUIAnim[rip]
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
	lea	rcx, Task_IntroUIAnim[rip]
	mov	QWORD PTR 40[rax], rcx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_HandleModeSelectedExit;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_HandleModeSelectedExit
Task_HandleModeSelectedExit:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	cmp	BYTE PTR 461[rax], 1
	mov	eax, 1
	sbb	al, -1
	xor	ecx, ecx
	mov	BYTE PTR [rdx], al
	mov	edx, 65535
	call	TasksDestroyInPriorityRange
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueIndex[rip]
	xor	ecx, ecx
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueCursor[rip]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR .refptr.gBgSpritesCount[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyQueueIndex[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyCursor[rip]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rax, QWORD PTR [rax]
	movzx	edx, BYTE PTR 19[rax]
	and	edx, 16
	add	rsp, 40
	jmp	CreateCharacterSelectionScreen
	.seh_endproc
	.p2align 4
	.def	Task_ScreenMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_ScreenMain
Task_ScreenMain:
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
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rsi, QWORD PTR .refptr.gPressedKeys[rip]
	mov	rbp, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, WORD PTR [rsi]
	test	al, 1
	je	.L12
	cmp	BYTE PTR 461[rbx], 0
	je	.L13
	mov	rax, QWORD PTR 0[rbp]
	cmp	BYTE PTR 18[rax], 0
	je	.L27
.L13:
	mov	rax, QWORD PTR .LC2[rip]
	mov	ecx, 106
	mov	DWORD PTR 456[rbx], 16383
	mov	QWORD PTR 448[rbx], rax
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rdi]
	lea	rdi, Task_FadeOutModeSelected[rip]
	mov	QWORD PTR 40[rax], rdi
.L14:
	mov	rax, QWORD PTR .refptr.gHBlankCopySize[rip]
	mov	rdx, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	mov	ecx, 426
	mov	BYTE PTR [rax], 4
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	add	rax, 68
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	rdx, QWORD PTR .LC0[rip]
	mov	QWORD PTR 16[rax], rdx
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 4
	call	InitHBlankBgOffsets
	mov	edx, 700
	mov	ecx, 25600
	call	ScreenMask_Right_OriginBottom
	test	BYTE PTR [rsi], -64
	jne	.L15
	movzx	edx, BYTE PTR 461[rbx]
.L16:
	mov	rcx, QWORD PTR 0[rbp]
	xor	r8d, r8d
	movzx	eax, BYTE PTR 6[rcx]
	sub	eax, 1
	test	al, al
	cmovs	eax, r8d
	movsx	eax, al
	lea	eax, [rax+rax*4]
	test	dl, dl
	je	.L17
	mov	BYTE PTR 309[rbx], 1
	mov	BYTE PTR 373[rbx], -1
	cmp	BYTE PTR 18[rcx], 0
	je	.L18
	add	eax, 3
	lea	rcx, gUnknown_080E0384[rip]
	cdqe
	movzx	edx, WORD PTR 4[rcx+rax*8]
	movzx	eax, BYTE PTR 6[rcx+rax*8]
.L19:
	mov	BYTE PTR 432[rbx], al
	mov	WORD PTR 402[rbx], dx
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L12:
	test	al, 2
	je	.L14
	mov	rax, QWORD PTR .LC2[rip]
	mov	ecx, 107
	mov	DWORD PTR 456[rbx], 16383
	mov	QWORD PTR 448[rbx], rax
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rdi]
	lea	rdi, Task_FadeOutToTitleScreen[rip]
	mov	QWORD PTR 40[rax], rdi
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L17:
	add	eax, 2
	lea	rdx, gUnknown_080E0384[rip]
	mov	BYTE PTR 309[rbx], 0
	cdqe
	mov	BYTE PTR 373[rbx], 0
	movzx	ecx, WORD PTR 4[rdx+rax*8]
	movzx	eax, BYTE PTR 6[rdx+rax*8]
	mov	WORD PTR 402[rbx], cx
	mov	BYTE PTR 432[rbx], al
.L20:
	mov	BYTE PTR 433[rbx], -1
	lea	rcx, 192[rbx]
	call	DisplaySprite
	lea	rcx, 256[rbx]
	call	DisplaySprite
	lea	rcx, 320[rbx]
	call	DisplaySprite
	cmp	BYTE PTR 462[rbx], 0
	jne	.L28
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L18:
	add	eax, 4
	lea	rcx, gUnknown_080E0384[rip]
	cdqe
	movzx	edx, WORD PTR 4[rcx+rax*8]
	movzx	eax, BYTE PTR 6[rcx+rax*8]
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L28:
	add	rbx, 384
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L15:
	mov	ecx, 108
	call	m4aSongNumStart
	movzx	edx, BYTE PTR 461[rbx]
	xor	edx, 1
	mov	BYTE PTR 461[rbx], dl
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L27:
	mov	ecx, 105
	call	m4aSongNumStart
	jmp	.L14
	.seh_endproc
	.p2align 4
	.def	Task_FadeOutToTitleScreen;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_FadeOutToTitleScreen
Task_FadeOutToTitleScreen:
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
	je	.L32
	mov	rax, QWORD PTR .refptr.gHBlankCopySize[rip]
	mov	rdx, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	mov	ecx, 426
	mov	BYTE PTR [rax], 4
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	add	rax, 68
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	rdx, QWORD PTR .LC6[rip]
	mov	QWORD PTR 16[rax], rdx
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 4
	call	InitHBlankBgOffsets
	mov	edx, 700
	mov	ecx, 25600
	call	ScreenMask_Right_OriginBottom
	lea	rcx, 192[rbx]
	call	DisplaySprite
	lea	rcx, 256[rbx]
	call	DisplaySprite
	lea	rcx, 320[rbx]
	call	DisplaySprite
	cmp	BYTE PTR 462[rbx], 0
	jne	.L33
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L33:
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
.L32:
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	and	DWORD PTR [rax], -5
	call	CreateTitleScreenAtSinglePlayerMenu
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.def	Task_FadeOutModeSelected;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_FadeOutModeSelected
Task_FadeOutModeSelected:
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
	je	.L37
	mov	rax, QWORD PTR .refptr.gHBlankCopySize[rip]
	mov	rdx, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	mov	ecx, 426
	mov	BYTE PTR [rax], 4
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	add	rax, 68
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	rdx, QWORD PTR .LC6[rip]
	mov	QWORD PTR 16[rax], rdx
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 4
	call	InitHBlankBgOffsets
	mov	edx, 700
	mov	ecx, 25600
	call	ScreenMask_Right_OriginBottom
	lea	rcx, 192[rbx]
	call	DisplaySprite
	lea	rcx, 256[rbx]
	call	DisplaySprite
	lea	rcx, 320[rbx]
	call	DisplaySprite
	cmp	BYTE PTR 462[rbx], 0
	jne	.L38
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L38:
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
.L37:
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	and	DWORD PTR [rax], -5
	mov	rax, QWORD PTR .refptr.gMultiSioEnabled[rip]
	mov	BYTE PTR [rax], 1
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_HandleModeSelectedExit[rip]
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_IntroUIAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_IntroUIAnim
Task_IntroUIAnim:
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
	jne	.L40
	lea	rax, Task_ScreenMain[rip]
	mov	BYTE PTR 462[rbx], 1
	mov	QWORD PTR 40[rdx], rax
.L40:
	mov	rdx, QWORD PTR .refptr.gPressedKeys[rip]
	mov	eax, 31
	test	BYTE PTR [rdx], 1
	jne	.L41
	movzx	eax, BYTE PTR 460[rbx]
.L41:
	mov	BYTE PTR 460[rbx], al
	mov	rax, QWORD PTR .refptr.gHBlankCopySize[rip]
	mov	ecx, 426
	mov	rdx, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	mov	BYTE PTR [rax], 4
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	add	rax, 68
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	rdx, QWORD PTR .LC0[rip]
	mov	QWORD PTR 16[rax], rdx
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 4
	call	InitHBlankBgOffsets
	mov	edx, 700
	mov	ecx, 25600
	call	ScreenMask_Right_OriginBottom
	movzx	eax, BYTE PTR 460[rbx]
	cmp	al, 9
	ja	.L42
	mov	ecx, 10
	lea	eax, [rax+rax*4]
	mov	WORD PTR 232[rbx], cx
	lea	eax, -50[rax+rax]
	mov	WORD PTR 230[rbx], ax
	mov	eax, -80
.L43:
	mov	edx, 60
	mov	WORD PTR 294[rbx], ax
	mov	eax, -90
	mov	WORD PTR 296[rbx], dx
.L46:
	mov	WORD PTR 358[rbx], ax
	mov	eax, 76
	lea	rcx, 192[rbx]
	mov	WORD PTR 360[rbx], ax
	call	DisplaySprite
	lea	rcx, 256[rbx]
	call	DisplaySprite
	lea	rcx, 320[rbx]
	call	DisplaySprite
	cmp	BYTE PTR 462[rbx], 0
	jne	.L49
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L42:
	mov	DWORD PTR 230[rbx], 655410
	cmp	al, 19
	ja	.L44
	sal	eax, 4
	sub	ax, 250
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L44:
	mov	DWORD PTR 294[rbx], 3932230
	cmp	al, 29
	ja	.L50
	sub	eax, 25
	sal	eax, 4
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L50:
	mov	eax, 80
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L49:
	add	rbx, 384
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	CreateTimeAttackModeSelectionScreen
	.def	CreateTimeAttackModeSelectionScreen;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateTimeAttackModeSelectionScreen
CreateTimeAttackModeSelectionScreen:
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
	mov	rax, QWORD PTR [rax]
	movzx	esi, BYTE PTR 6[rax]
	xor	eax, eax
	sub	esi, 1
	lea	rbx, 60[rsp]
	mov	DWORD PTR 60[rsp], 0
	test	sil, sil
	cmovs	esi, eax
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	WORD PTR [rax], dx
	mov	rdx, rbx
	movsx	esi, sil
	call	DmaSet
	mov	rdx, rbx
	mov	ecx, 3
	lea	edi, [rsi+rsi*4]
	mov	r8, QWORD PTR .refptr.gMultiSioRecv[rip]
	mov	r9d, -2063597548
	lea	rsi, gUnknown_080E0384[rip]
	movsx	rbp, edi
	mov	DWORD PTR 60[rsp], 0
	call	DmaSet
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	edx, 464
	xor	r9d, r9d
	mov	r8d, 8192
	lea	rcx, Task_FadeInAndStartIntro[rip]
	mov	DWORD PTR [rax], 1443632129
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	QWORD PTR [rax], 0
	lea	rax, TimeAttackModeSelectionScreenOnDestroy[rip]
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
	mov	ecx, 108
	call	VramMalloc
	xor	r9d, r9d
	mov	r8d, -256
	mov	DWORD PTR 208[rbx], 69271552
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
	movabs	rax, 28428972647776256
	mov	QWORD PTR 416[rbx], rax
	lea	rax, 40960[rsi]
	mov	QWORD PTR 8[rbx], rsi
	mov	QWORD PTR 24[rbx], rax
	mov	WORD PTR 60[rbx], r8w
	mov	WORD PTR 66[rbx], r9w
	mov	BYTE PTR 437[rbx], 0
	mov	DWORD PTR 440[rbx], -1
	mov	DWORD PTR 424[rbx], 16777399
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
	mov	ecx, 7
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	m4aSongNumStart
	.seh_endproc
	.globl	gUnknown_080E0384
	.section .rdata,"dr"
	.align 32
gUnknown_080E0384:
	.long	12
	.word	1057
	.byte	1
	.space 1
	.long	8
	.word	1057
	.byte	2
	.space 1
	.long	168
	.word	1057
	.byte	3
	.space 1
	.long	168
	.word	1057
	.byte	4
	.space 1
	.long	168
	.word	1057
	.byte	5
	.space 1
	.long	12
	.word	1058
	.byte	3
	.space 1
	.long	12
	.word	1058
	.byte	4
	.space 1
	.long	168
	.word	1058
	.byte	0
	.space 1
	.long	168
	.word	1058
	.byte	1
	.space 1
	.long	168
	.word	1058
	.byte	2
	.space 1
	.long	12
	.word	1058
	.byte	3
	.space 1
	.long	12
	.word	1058
	.byte	4
	.space 1
	.long	168
	.word	1059
	.byte	0
	.space 1
	.long	168
	.word	1059
	.byte	1
	.space 1
	.long	168
	.word	1059
	.byte	2
	.space 1
	.long	12
	.word	1058
	.byte	3
	.space 1
	.long	12
	.word	1058
	.byte	4
	.space 1
	.long	168
	.word	1060
	.byte	0
	.space 1
	.long	168
	.word	1060
	.byte	1
	.space 1
	.long	168
	.word	1060
	.byte	2
	.space 1
	.long	12
	.word	1058
	.byte	3
	.space 1
	.long	12
	.word	1058
	.byte	4
	.space 1
	.long	168
	.word	1061
	.byte	0
	.space 1
	.long	168
	.word	1061
	.byte	1
	.space 1
	.long	168
	.word	1061
	.byte	2
	.space 1
	.long	12
	.word	1058
	.byte	3
	.space 1
	.long	12
	.word	1058
	.byte	4
	.space 1
	.long	168
	.word	1062
	.byte	0
	.space 1
	.long	168
	.word	1062
	.byte	1
	.space 1
	.long	168
	.word	1062
	.byte	2
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
	.word	112
	.word	0
	.word	0
	.word	0
	.word	0
	.word	32
	.ident	"GCC: (GNU) 13-win32"
	.def	UpdateScreenFade;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	InitHBlankBgOffsets;	.scl	2;	.type	32;	.endef
	.def	ScreenMask_Right_OriginBottom;	.scl	2;	.type	32;	.endef
	.def	TasksDestroyInPriorityRange;	.scl	2;	.type	32;	.endef
	.def	CreateCharacterSelectionScreen;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	CreateTitleScreenAtSinglePlayerMenu;	.scl	2;	.type	32;	.endef
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
