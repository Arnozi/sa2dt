	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	WavesBackgroundAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	WavesBackgroundAnim
WavesBackgroundAnim:
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
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.REG_BASE[rip]
	lea	r11, ResetWavesPalette[rip]
	mov	ebp, 109056
	movzx	eax, WORD PTR 296[rdx]
	movzx	esi, WORD PTR 5756[rcx]
	and	ah, -65
	mov	r8d, esi
	mov	WORD PTR 296[rdx], ax
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	rbx, rcx
	lea	ecx, -2[rsi]
	or	WORD PTR [rax], 16384
	sal	ecx, 16
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	movzx	edi, WORD PTR 5758[rbx]
	or	cl, -16
	mov	DWORD PTR 12[rax], ecx
	mov	rcx, QWORD PTR .refptr.gNumVBlankCallbacks[rip]
	or	DWORD PTR 16[rax], 16128
	and	DWORD PTR 20[rax], 19
	sub	di, 768
	mov	DWORD PTR 4[rax], 426
	mov	eax, 7680
	cmovs	edi, eax
	movzx	eax, BYTE PTR [rcx]
	sub	r8d, 2
	add	rdx, 32
	lea	r9d, 1[rax]
	mov	WORD PTR 5758[rbx], di
	movsx	edi, di
	mov	BYTE PTR [rcx], r9b
	mov	rcx, QWORD PTR .refptr.gVBlankCallbacks[rip]
	mov	QWORD PTR [rcx+rax*8], r11
	mov	rcx, QWORD PTR .refptr.gFlags[rip]
	xor	r11d, r11d
	mov	WORD PTR 944[rbx], r8w
	mov	r8, QWORD PTR .refptr.gNumHBlankCallbacks[rip]
	or	DWORD PTR [rcx], 28
	xor	ecx, ecx
	movzx	eax, BYTE PTR [r8]
	lea	r9d, 1[rax]
	mov	BYTE PTR [r8], r9b
	mov	r8, QWORD PTR .refptr.gHBlankCallbacks[rip]
	mov	r9, QWORD PTR .refptr.BgPaletteEffectGradient[rip]
	mov	QWORD PTR [r8+rax*8], r9
	mov	rax, QWORD PTR .refptr.gHBlankCopySize[rip]
	mov	r8d, 512
	mov	r9d, esi
	sub	r8d, esi
	neg	r9d
	mov	BYTE PTR [rax], 16
	mov	rax, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	sal	r8d, 8
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	lea	rdx, 1432[rbx]
	mov	QWORD PTR [rax], rdx
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L11:
	mov	eax, r9d
	movzx	r12d, WORD PTR 5272[rbx+rax*2]
	movzx	r10d, WORD PTR 952[rbx+rax*2]
	mov	eax, ebp
	mov	DWORD PTR -12[rdx], 0
	imul	r12d, r12d, 109056
	mov	DWORD PTR -16[rdx], r10d
	sar	r12d, 8
	sub	eax, r12d
	mov	r12d, r11d
	sar	eax
	sal	r12d, 8
	imul	eax, r10d
	imul	r12d, r10d
	sar	eax, 8
	mov	r10d, r12d
	neg	eax
	sar	r10d, 8
	cmp	r12d, 2064128
	jle	.L4
	mov	r10d, edi
	mov	r11d, 1
.L6:
	add	ecx, 1
	mov	DWORD PTR -8[rdx], eax
	add	r9d, 1
	add	r8d, 256
	mov	DWORD PTR -4[rdx], r10d
	cmp	ecx, 240
	je	.L10
.L7:
	add	rdx, 16
	cmp	ecx, esi
	jnb	.L11
	mov	QWORD PTR -16[rdx], 0
	mov	r10d, r8d
	xor	eax, eax
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L4:
	add	r10d, edi
	add	r11d, 1
	jmp	.L6
.L10:
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.def	Task_IntroFadeInSegaLogoAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_IntroFadeInSegaLogoAnim
Task_IntroFadeInSegaLogoAnim:
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
	call	WavesBackgroundAnim
	movzx	eax, WORD PTR 5762[rbx]
	cmp	ax, 15
	ja	.L13
	mov	edx, 16
	mov	rcx, QWORD PTR .refptr.gBldRegs[rip]
	sub	edx, eax
	sal	edx, 8
	or	edx, eax
	add	eax, 1
	mov	WORD PTR 2[rcx], dx
	mov	WORD PTR 5762[rbx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L13:
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	mov	edx, 16
	lea	rcx, Task_IntroShowSegaLogo[rip]
	mov	WORD PTR 2[rax], dx
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rcx
	mov	eax, 1
	mov	WORD PTR 5762[rbx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_IntroFadeOutSegaLogoAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_IntroFadeOutSegaLogoAnim
Task_IntroFadeOutSegaLogoAnim:
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
	call	WavesBackgroundAnim
	movzx	edx, WORD PTR 5762[rbx]
	mov	eax, 8
	mov	rcx, QWORD PTR .refptr.gBldRegs[rip]
	sub	eax, edx
	mov	r8d, edx
	add	eax, eax
	sal	r8d, 9
	or	eax, r8d
	mov	WORD PTR 2[rcx], ax
	cmp	dx, 7
	ja	.L16
	add	edx, 1
	mov	WORD PTR 5762[rbx], dx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L16:
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	edx, 1
	and	WORD PTR [rax], -257
	mov	eax, 4096
	mov	WORD PTR 2[rcx], ax
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	and	DWORD PTR [rax], -32769
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_IntroStartSonicTeamLogoAnim[rip]
	mov	QWORD PTR 40[rax], rsi
	mov	WORD PTR 5762[rbx], dx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_IntroFadeInSonicTeamLogoAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_IntroFadeInSonicTeamLogoAnim
Task_IntroFadeInSonicTeamLogoAnim:
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
	call	WavesBackgroundAnim
	movzx	eax, WORD PTR 5762[rbx]
	cmp	ax, 15
	ja	.L19
	mov	edx, 16
	mov	rcx, QWORD PTR .refptr.gBldRegs[rip]
	sub	edx, eax
	sal	edx, 8
	or	edx, eax
	add	eax, 1
	mov	WORD PTR 2[rcx], dx
	mov	WORD PTR 5762[rbx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L19:
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	mov	edx, 16
	lea	rcx, Task_IntroShowSonicTeamLogo[rip]
	mov	WORD PTR 2[rax], dx
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rcx
	mov	eax, 1
	mov	WORD PTR 5762[rbx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_IntroFadeOutSonicTeamLogoAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_IntroFadeOutSonicTeamLogoAnim
Task_IntroFadeOutSonicTeamLogoAnim:
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
	call	WavesBackgroundAnim
	movzx	edx, WORD PTR 5762[rbx]
	mov	eax, 8
	sub	eax, edx
	mov	ecx, edx
	sal	ecx, 9
	add	eax, eax
	or	eax, ecx
	mov	rcx, QWORD PTR .refptr.gBldRegs[rip]
	mov	WORD PTR 2[rcx], ax
	cmp	dx, 7
	ja	.L22
	add	edx, 1
	mov	WORD PTR 5762[rbx], dx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L22:
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_IntroStartSkyTransition[rip]
	mov	edx, 1
	mov	QWORD PTR 40[rax], rsi
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	WORD PTR 5762[rbx], dx
	and	WORD PTR [rax], -257
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	DWORD PTR [rax], 0
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_IntroShowSegaLogo;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_IntroShowSegaLogo
Task_IntroShowSegaLogo:
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
	call	WavesBackgroundAnim
	movzx	eax, WORD PTR 5762[rbx]
	cmp	ax, 120
	ja	.L25
	add	eax, 1
	mov	WORD PTR 5762[rbx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L25:
	mov	rax, QWORD PTR [rsi]
	lea	rdx, Task_IntroFadeOutSegaLogoAnim[rip]
	mov	QWORD PTR 40[rax], rdx
	mov	eax, 1
	mov	WORD PTR 5762[rbx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_IntroShowSonicTeamLogo;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_IntroShowSonicTeamLogo
Task_IntroShowSonicTeamLogo:
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
	call	WavesBackgroundAnim
	movzx	eax, WORD PTR 5762[rbx]
	cmp	ax, 120
	ja	.L28
	add	eax, 1
	mov	WORD PTR 5762[rbx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L28:
	mov	rax, QWORD PTR [rsi]
	lea	rdx, Task_IntroFadeOutSonicTeamLogoAnim[rip]
	mov	QWORD PTR 40[rax], rdx
	mov	eax, 1
	mov	WORD PTR 5762[rbx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	CreateMenuItemTransition;	.scl	3;	.type	32;	.endef
	.seh_proc	CreateMenuItemTransition
CreateMenuItemTransition:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	xor	r9d, r9d
	mov	r8d, 8192
	mov	QWORD PTR 32[rsp], 0
	test	dl, dl
	mov	rbx, rcx
	mov	edx, 24
	je	.L33
	lea	rcx, Task_MenuItemTransitionInAnim[rip]
	call	TaskCreate
.L32:
	mov	rax, QWORD PTR 24[rax]
	or	DWORD PTR 32[rbx], 128
	movzx	edx, WORD PTR 38[rbx]
	mov	QWORD PTR [rax], rbx
	mov	WORD PTR 22[rax], dx
	mov	BYTE PTR 20[rax], 0
	add	rsp, 48
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L33:
	lea	rcx, Task_MenuItemTransitionOutAnim[rip]
	call	TaskCreate
	jmp	.L32
	.seh_endproc
	.p2align 4
	.def	Task_IntroStartSonicTeamLogoAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_IntroStartSonicTeamLogoAnim
Task_IntroStartSonicTeamLogoAnim:
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
	call	WavesBackgroundAnim
	movzx	eax, WORD PTR 5762[rbx]
	cmp	ax, 1
	je	.L38
.L35:
	cmp	ax, 2
	ja	.L36
	add	eax, 1
	mov	WORD PTR 5762[rbx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L36:
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	lea	rdx, Task_IntroFadeInSonicTeamLogoAnim[rip]
	or	WORD PTR [rax], 256
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdx
	mov	eax, 1
	mov	WORD PTR 5762[rbx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L38:
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	ecx, 30
	mov	r8d, 16
	movdqu	xmm0, XMMWORD PTR .LC0[rip]
	mov	WORD PTR 252[rbx], cx
	lea	rcx, 192[rbx]
	lea	rdx, 16384[rax]
	add	rax, 63488
	mov	BYTE PTR 254[rbx], 0
	mov	QWORD PTR 200[rbx], rdx
	xor	edx, edx
	mov	QWORD PTR 216[rbx], rax
	mov	WORD PTR 210[rbx], dx
	mov	WORD PTR 258[rbx], r8w
	movups	XMMWORD PTR 236[rbx], xmm0
	call	DrawBackground
	movzx	eax, WORD PTR 5762[rbx]
	jmp	.L35
	.seh_endproc
	.p2align 4
	.def	Task_StartTitleScreenDemo;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_StartTitleScreenDemo
Task_StartTitleScreenDemo:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gInputRecorder[rip]
	mov	BYTE PTR 8[rax], 2
	mov	rax, QWORD PTR .refptr.gDemoRecordings[rip]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gInputPlaybackData[rip]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	mov	rdx, QWORD PTR .refptr.gDemoPlayCounter[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	BYTE PTR [rax], 0
	movzx	eax, BYTE PTR [rdx]
	add	eax, 1
	and	eax, 3
	mov	BYTE PTR [rdx], al
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	mov	BYTE PTR [rax], 0
	call	CreateDemoManager
	call	ApplyGameStageSettings
	call	GameStageStart
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	add	rsp, 40
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.def	Task_MenuItemTransitionInAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_MenuItemTransitionInAnim
Task_MenuItemTransitionInAnim:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	r8d, 7
	mov	rax, QWORD PTR [rbx]
	mov	rsi, QWORD PTR 24[rax]
	movzx	r10d, BYTE PTR 20[rsi]
	mov	rdi, QWORD PTR [rsi]
	sub	r8d, r10d
	mov	r9d, r10d
	test	r8d, r8d
	jle	.L44
	lea	rdx, sMenuItemTransitionKeyFrames[rip]
	movsx	r8, r8d
	xor	ecx, ecx
	add	r8, rdx
	.p2align 4,,10
	.p2align 3
.L42:
	movzx	eax, BYTE PTR [rdx]
	add	rdx, 1
	add	eax, ecx
	mov	ecx, eax
	cmp	r8, rdx
	jne	.L42
.L41:
	add	ax, WORD PTR 22[rsi]
	mov	rdx, QWORD PTR .refptr.gBldRegs[rip]
	add	r9d, r9d
	mov	rcx, rdi
	mov	WORD PTR 38[rdi], ax
	mov	eax, 8
	sub	eax, r10d
	sal	eax, 9
	or	eax, r9d
	mov	WORD PTR 2[rdx], ax
	call	DisplaySprite
	movzx	eax, BYTE PTR 20[rsi]
	add	eax, 1
	mov	BYTE PTR 20[rsi], al
	cmp	al, 8
	ja	.L46
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L46:
	movzx	eax, WORD PTR 22[rsi]
	and	DWORD PTR 32[rdi], -129
	mov	rcx, QWORD PTR [rbx]
	mov	WORD PTR 38[rdi], ax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L44:
	xor	eax, eax
	jmp	.L41
	.seh_endproc
	.p2align 4
	.def	Task_MenuItemTransitionOutAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_MenuItemTransitionOutAnim
Task_MenuItemTransitionOutAnim:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	lea	r8, sMenuItemTransitionKeyFrames[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	movzx	ecx, BYTE PTR 20[rbx]
	mov	rdi, QWORD PTR [rbx]
	movzx	eax, cl
	mov	edx, ecx
	movzx	eax, BYTE PTR [r8+rax]
	sub	WORD PTR 38[rdi], ax
	mov	eax, 8
	sal	edx, 9
	sub	eax, ecx
	mov	rcx, rdi
	add	eax, eax
	or	eax, edx
	mov	rdx, QWORD PTR .refptr.gBldRegs[rip]
	mov	WORD PTR 2[rdx], ax
	call	DisplaySprite
	movzx	eax, BYTE PTR 20[rbx]
	add	eax, 1
	mov	BYTE PTR 20[rbx], al
	cmp	al, 8
	ja	.L49
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L49:
	movzx	eax, WORD PTR 22[rbx]
	and	DWORD PTR 32[rdi], -129
	mov	rcx, QWORD PTR [rsi]
	mov	WORD PTR 38[rdi], ax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.def	InitTitleScreenUI;	.scl	3;	.type	32;	.endef
	.seh_proc	InitTitleScreenUI
InitTitleScreenUI:
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
	mov	r13, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rsi, QWORD PTR .refptr.VRAM[rip]
	mov	r15d, 136
	lea	r14, sMenuTiles[rip]
	mov	rax, QWORD PTR 0[r13]
	movsx	r12d, BYTE PTR 6[rax]
	lea	rax, 65536[rsi]
	add	rsi, 68416
	mov	QWORD PTR 296[rcx], rax
	mov	eax, -255
	mov	rdi, rcx
	lea	rcx, 288[rcx]
	mov	WORD PTR 48[rcx], ax
	lea	rbx, 416[rdi]
	movabs	rax, 1099525390626
	mov	DWORD PTR 16[rcx], 54394880
	mov	QWORD PTR 38[rcx], rax
	mov	BYTE PTR 50[rcx], 16
	mov	BYTE PTR 53[rcx], 0
	mov	DWORD PTR 32[rcx], 0
	call	UpdateSpriteAnimation
	lea	rdx, gPressStartTiles[rip]
	movsx	rax, r12b
	mov	QWORD PTR 360[rdi], rsi
	movzx	ecx, WORD PTR 4[rdx+rax*8]
	mov	ebp, DWORD PTR [rdx+rax*8]
	mov	BYTE PTR 405[rdi], 0
	lea	r12d, [r12+r12*2]
	movzx	eax, BYTE PTR 6[rdx+rax*8]
	add	r12d, r12d
	mov	DWORD PTR 384[rdi], 0
	mov	WORD PTR 370[rdi], cx
	sal	ebp, 5
	lea	rcx, 352[rdi]
	mov	BYTE PTR 400[rdi], al
	xor	eax, eax
	add	rbp, rsi
	xor	esi, esi
	mov	WORD PTR 368[rdi], ax
	movabs	rax, 824643551445
	mov	QWORD PTR 390[rdi], rax
	mov	eax, 4351
	mov	WORD PTR 401[rdi], ax
	call	UpdateSpriteAnimation
	.p2align 4,,10
	.p2align 3
.L56:
	lea	edx, [rsi+r12]
	mov	QWORD PTR 8[rbx], rbp
	mov	eax, DWORD PTR [r14+rdx*8]
	mov	BYTE PTR 49[rbx], -1
	sal	eax, 5
	add	rbp, rax
	movzx	eax, WORD PTR 4[r14+rdx*8]
	mov	WORD PTR 18[rbx], ax
	movzx	eax, BYTE PTR 6[r14+rdx*8]
	mov	BYTE PTR 48[rbx], al
	mov	eax, 213
	mov	WORD PTR 38[rbx], ax
	cmp	esi, 1
	jbe	.L57
	mov	rdx, QWORD PTR 0[r13]
	lea	eax, -32[r15]
	cmp	BYTE PTR 20[rdx], 0
	je	.L54
	mov	eax, esi
	sal	eax, 4
	add	eax, 104
.L54:
	xor	edx, edx
	mov	ecx, 192
	xor	r8d, r8d
	mov	WORD PTR 40[rbx], ax
	mov	WORD PTR 42[rbx], cx
	add	esi, 1
	mov	rcx, rbx
	add	r15d, 18
	mov	WORD PTR 16[rbx], dx
	add	rbx, 64
	mov	WORD PTR -20[rbx], r8w
	mov	BYTE PTR -14[rbx], 16
	mov	BYTE PTR -11[rbx], 0
	mov	DWORD PTR -32[rbx], 0
	call	UpdateSpriteAnimation
	cmp	esi, 6
	jne	.L56
	mov	eax, -249
	lea	rcx, 800[rdi]
	mov	QWORD PTR 808[rdi], rbp
	mov	WORD PTR 848[rdi], ax
	movabs	rax, 8246345072853
	mov	DWORD PTR 816[rdi], 56885248
	mov	QWORD PTR 838[rdi], rax
	mov	BYTE PTR 850[rdi], 16
	mov	BYTE PTR 853[rdi], 0
	mov	DWORD PTR 832[rdi], 12288
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	UpdateSpriteAnimation
	.p2align 4,,10
	.p2align 3
.L57:
	xor	r9d, r9d
	mov	r10d, 192
	xor	r11d, r11d
	mov	BYTE PTR 50[rbx], 16
	mov	WORD PTR 40[rbx], r15w
	mov	rcx, rbx
	add	esi, 1
	add	r15d, 18
	mov	WORD PTR 16[rbx], r9w
	add	rbx, 64
	mov	WORD PTR -22[rbx], r10w
	mov	WORD PTR -20[rbx], r11w
	mov	BYTE PTR -11[rbx], 0
	mov	DWORD PTR -32[rbx], 0
	call	UpdateSpriteAnimation
	jmp	.L56
	.seh_endproc
	.p2align 4
	.def	CreateTitleScreenWithoutIntro;	.scl	3;	.type	32;	.endef
	.seh_proc	CreateTitleScreenWithoutIntro
CreateTitleScreenWithoutIntro:
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
	movabs	rax, 9007207844874752
	mov	QWORD PTR 5752[rcx], rax
	xor	eax, eax
	mov	rbx, rcx
	lea	rbp, 864[rcx]
	mov	WORD PTR 5764[rcx], ax
	mov	rax, QWORD PTR .LC6[rip]
	mov	DWORD PTR 5760[rcx], 256
	mov	QWORD PTR 864[rcx], rax
	mov	BYTE PTR 5766[rcx], 0
	mov	DWORD PTR 872[rcx], 16319
	call	InitTitleScreenUI
	mov	edx, 5697
	mov	ecx, 23169
	mov	r12, QWORD PTR .refptr.gDispCnt[rip]
	mov	rdi, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	r8, QWORD PTR .refptr.VRAM[rip]
	mov	r9d, -2063581184
	mov	DWORD PTR 44[rsp], 0
	mov	WORD PTR [r12], dx
	lea	rdx, 44[rsp]
	mov	WORD PTR 4[rdi], cx
	mov	ecx, 3
	mov	DWORD PTR [rdi], -1660281084
	call	DmaSet
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	xor	r9d, r9d
	xor	r8d, r8d
	mov	rcx, QWORD PTR .LC9[rip]
	mov	rsi, QWORD PTR .refptr.VRAM[rip]
	mov	WORD PTR 18[rbx], r9w
	mov	r10d, 6
	mov	DWORD PTR 8[rax], 553582592
	mov	rdx, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	mov	QWORD PTR [rax], rcx
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	rcx, rbx
	mov	QWORD PTR 8[rbx], rsi
	mov	DWORD PTR 4[rax], 33554440
	lea	rax, 53248[rsi]
	mov	QWORD PTR 24[rbx], rax
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	DWORD PTR 44[rbx], 0
	mov	rax, QWORD PTR [rax]
	mov	WORD PTR [rdx], r8w
	mov	BYTE PTR 2[rdx], 0
	cmp	BYTE PTR 6[rax], 2
	mov	WORD PTR 66[rbx], r10w
	sbb	eax, eax
	mov	QWORD PTR 50[rbx], 0
	add	ax, 265
	mov	DWORD PTR 58[rbx], 655386
	mov	WORD PTR 48[rbx], ax
	mov	BYTE PTR 62[rbx], 0
	call	DrawBackground
	movzx	eax, WORD PTR [r12]
	xor	r11d, r11d
	and	WORD PTR 4[rdi], -8193
	xor	edi, edi
	movdqu	xmm0, XMMWORD PTR .LC12[rip]
	mov	BYTE PTR 158[rbx], 0
	lea	rcx, 96[rbx]
	and	ah, -2
	mov	WORD PTR 114[rbx], di
	or	ah, 6
	movups	XMMWORD PTR 140[rbx], xmm0
	mov	WORD PTR [r12], ax
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	mov	r12d, 64
	mov	WORD PTR 156[rbx], r12w
	mov	WORD PTR [rax], r11w
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	and	DWORD PTR [rax], -32769
	lea	rax, 32768[rsi]
	add	rsi, 59392
	mov	QWORD PTR 104[rbx], rax
	mov	eax, 1
	mov	WORD PTR 162[rbx], ax
	mov	QWORD PTR 120[rbx], rsi
	call	DrawBackground
	mov	ecx, 2
	call	m4aSongNumStart
	mov	rcx, rbp
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	UpdateScreenFade
	.seh_endproc
	.p2align 4
	.def	Task_LensFlareAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_LensFlareAnim
Task_LensFlareAnim:
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
	mov	r13, QWORD PTR .refptr.gCurTask[rip]
	mov	rbp, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	rax, QWORD PTR 0[r13]
	sub	WORD PTR 2[rbp], 3
	mov	r14, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	movzx	r8d, BYTE PTR 629[r14]
	mov	DWORD PTR [rax], 520568656
	add	WORD PTR 626[r14], 3
	test	r8b, 1
	jne	.L62
	lea	rbx, 512[r14]
	mov	rsi, r14
	lea	rdi, 608[r14]
	mov	r12, rbx
	jmp	.L64
	.p2align 4,,10
	.p2align 3
.L63:
	movzx	r8d, BYTE PTR 629[r14]
.L64:
	movsx	ecx, WORD PTR -16[rdi]
	mov	r9d, 8
	sal	r8d, 4
	mov	DWORD PTR 32[rsp], 0
	mov	edx, -20
	add	rdi, 2
	call	sub_8085654
	mov	WORD PTR 6[rbx], ax
	movsx	r9d, WORD PTR 626[r14]
	movsx	ecx, WORD PTR -2[rdi]
	movsx	eax, WORD PTR 6[rbp]
	movzx	r8d, BYTE PTR 629[r14]
	mov	DWORD PTR 32[rsp], 0
	lea	edx, -20[r9]
	add	ecx, r9d
	sub	edx, eax
	mov	r9d, 8
	sal	r8d, 4
	sub	ecx, eax
	call	sub_8085654
	mov	rdx, rbx
	mov	rcx, rsi
	add	rbx, 10
	mov	WORD PTR -2[rbx], ax
	call	TransformSprite
	mov	rcx, rsi
	add	rsi, 64
	call	DisplaySprite
	cmp	rsi, r12
	jne	.L63
	movzx	r8d, BYTE PTR 629[r14]
.L62:
	add	r8d, 1
	mov	BYTE PTR 629[r14], r8b
	cmp	r8b, 17
	ja	.L68
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
.L68:
	mov	rax, QWORD PTR 0[r13]
	mov	rsi, QWORD PTR 24[rax]
	lea	rbx, 8[rsi]
	add	rsi, 520
	.p2align 4,,10
	.p2align 3
.L66:
	mov	rcx, QWORD PTR [rbx]
	add	rbx, 64
	call	VramFree
	cmp	rsi, rbx
	jne	.L66
	mov	rcx, QWORD PTR 0[r13]
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.def	ResetWavesPalette;	.scl	3;	.type	32;	.endef
	.seh_proc	ResetWavesPalette
ResetWavesPalette:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.PLTT[rip]
	mov	r8d, 1
	lea	rcx, sWavesBrightnessPalette[rip]
	lea	rdx, 448[rax]
	call	CpuFastSet
	mov	rdx, QWORD PTR .refptr.REG_BASE[rip]
	movzx	eax, WORD PTR 296[rdx]
	or	ah, 64
	mov	WORD PTR 296[rdx], ax
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.def	Task_IntroStartSegaLogoAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_IntroStartSegaLogoAnim
Task_IntroStartSegaLogoAnim:
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
	call	WavesBackgroundAnim
	lea	rcx, 864[rbx]
	call	UpdateScreenFade
	cmp	al, 1
	jne	.L70
	mov	rax, QWORD PTR [rsi]
	lea	rdx, Task_IntroFadeInSegaLogoAnim[rip]
	mov	QWORD PTR 40[rax], rdx
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	mov	DWORD PTR [rax], 268436545
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	or	WORD PTR [rax], 256
.L70:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	CreateBirdAnimation.constprop.0;	.scl	3;	.type	32;	.endef
	.seh_proc	CreateBirdAnimation.constprop.0
CreateBirdAnimation.constprop.0:
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
	mov	QWORD PTR 32[rsp], 0
	mov	edi, ecx
	mov	esi, edx
	mov	ebp, r8d
	mov	edx, 80
	mov	r8d, 8192
	mov	r12d, r9d
	xor	r9d, r9d
	lea	rcx, Task_BirdAnim[rip]
	call	TaskCreate
	mov	ecx, 3
	mov	rbx, QWORD PTR 24[rax]
	call	VramMalloc
	mov	QWORD PTR 8[rbx], rax
	mov	eax, -256
	mov	rcx, rbx
	mov	WORD PTR 38[rbx], di
	movzx	edi, di
	mov	WORD PTR 40[rbx], si
	sal	esi, 16
	mov	WORD PTR 48[rbx], ax
	or	esi, edi
	mov	DWORD PTR 16[rbx], 54460416
	mov	DWORD PTR 42[rbx], 192
	mov	BYTE PTR 50[rbx], 16
	mov	BYTE PTR 53[rbx], 0
	mov	DWORD PTR 32[rbx], 0
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	xor	edx, edx
	xor	ecx, ecx
	movd	xmm0, esi
	mov	WORD PTR 68[rbx], r12w
	mov	eax, DWORD PTR 4[rax]
	psllw	xmm0, 7
	mov	WORD PTR 70[rbx], dx
	mov	WORD PTR 76[rbx], cx
	mov	DWORD PTR 64[rbx], eax
	mov	BYTE PTR 78[rbx], bpl
	movd	DWORD PTR 72[rbx], xmm0
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.def	Task_HandleTitleScreenExit;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_HandleTitleScreenExit
Task_HandleTitleScreenExit:
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
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	lea	rcx, 864[rbx]
	call	UpdateScreenFade
	cmp	al, 1
	jne	.L74
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	mov	rbp, QWORD PTR .refptr.gCurrentLevel[rip]
	xor	edx, edx
	mov	rdi, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR 5766[rbx], 4
	mov	WORD PTR [rax], dx
	mov	BYTE PTR 0[rbp], 0
	mov	BYTE PTR [rdi], 0
	ja	.L75
	movzx	eax, BYTE PTR 5766[rbx]
	lea	rdx, .L77[rip]
	movsx	rax, DWORD PTR [rdx+rax*4]
	add	rax, rdx
	jmp	rax
	.section .rdata,"dr"
	.align 4
.L77:
	.long	.L81-.L77
	.long	.L80-.L77
	.long	.L79-.L77
	.long	.L78-.L77
	.long	.L76-.L77
	.text
	.p2align 4,,10
	.p2align 3
.L78:
	call	CreateUnusedLevelSelect
.L75:
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L74:
	mov	rax, QWORD PTR .refptr.gBgAffineRegs[rip]
	xor	r9d, r9d
	mov	edx, 256
	xor	ecx, ecx
	mov	DWORD PTR 48[rsp], 8
	mov	r8d, 256
	mov	QWORD PTR 56[rsp], rax
	mov	DWORD PTR 40[rsp], 113
	mov	DWORD PTR 32[rsp], 0
	call	sub_8003EE4
	movzx	eax, BYTE PTR 5766[rbx]
	cmp	al, 4
	je	.L91
	lea	rdx, 2[rax]
	sal	rdx, 6
	mov	BYTE PTR 469[rbx+rdx], 1
	movzx	eax, WORD PTR 5762[rbx]
	add	eax, 1
	mov	WORD PTR 5762[rbx], ax
	test	al, 4
	jne	.L92
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L76:
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	mov	BYTE PTR [rax], 3
	call	ApplyGameStageSettings
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rax, QWORD PTR [rax]
	cmp	WORD PTR 32[rax], -1
	je	.L83
	call	CreateMultiplayerModeSelectScreen
	jmp	.L75
	.p2align 4,,10
	.p2align 3
.L81:
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	mov	BYTE PTR [rax], 0
	call	ApplyGameStageSettings
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rax, QWORD PTR [rax]
	test	BYTE PTR 19[rax], 16
	je	.L82
	mov	edx, 1
	xor	ecx, ecx
	call	CreateCharacterSelectionScreen
	jmp	.L75
	.p2align 4,,10
	.p2align 3
.L80:
	call	ApplyGameStageSettings
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	mov	BYTE PTR 0[rbp], 0
	mov	BYTE PTR [rdi], 0
	mov	BYTE PTR [rax], 1
	call	CreateTimeAttackModeSelectionScreen
	jmp	.L75
	.p2align 4,,10
	.p2align 3
.L79:
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	xor	ecx, ecx
	mov	BYTE PTR [rax], 0
	call	CreateOptionsScreen
	jmp	.L75
	.p2align 4,,10
	.p2align 3
.L91:
	movzx	eax, WORD PTR 5762[rbx]
	mov	BYTE PTR 533[rbx], 1
	add	eax, 1
	mov	WORD PTR 5762[rbx], ax
	test	al, 4
	je	.L88
	lea	rcx, 480[rbx]
	call	DisplaySprite
.L88:
	lea	rcx, 288[rbx]
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L92:
	lea	rcx, 416[rbx+rdx]
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L82:
	xor	edx, edx
	xor	ecx, ecx
	call	CreateCharacterSelectionScreen
	jmp	.L75
.L83:
	xor	ecx, ecx
	call	CreateNewProfileNameScreen
	jmp	.L75
	.seh_endproc
	.p2align 4
	.def	Task_BirdAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_BirdAnim
Task_BirdAnim:
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
	movzx	edx, BYTE PTR 76[rbx]
	movzx	eax, WORD PTR 74[rbx]
	test	dl, dl
	je	.L94
	cmp	dl, 1
	je	.L95
.L96:
	add	ax, WORD PTR 70[rbx]
	movzx	edx, WORD PTR 68[rbx]
	mov	rcx, rbx
	add	dx, WORD PTR 72[rbx]
	movd	xmm0, DWORD PTR 64[rbx]
	mov	WORD PTR 74[rbx], ax
	sar	ax, 7
	mov	WORD PTR 72[rbx], dx
	sar	dx, 7
	sal	eax, 16
	movzx	edx, dx
	or	eax, edx
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	movd	xmm2, eax
	movd	xmm1, DWORD PTR 4[rdx]
	psubw	xmm0, xmm1
	paddw	xmm2, xmm0
	movd	DWORD PTR 38[rbx], xmm2
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	call	DisplaySprite
	movzx	eax, WORD PTR 38[rbx]
	add	eax, 64
	cmp	ax, 368
	ja	.L100
.L97:
	movzx	eax, WORD PTR 40[rbx]
	add	eax, 64
	cmp	ax, 308
	ja	.L101
.L98:
	movzx	eax, BYTE PTR 77[rbx]
	add	eax, 1
	mov	BYTE PTR 77[rbx], al
	cmp	al, 15
	jbe	.L93
	movzx	edx, BYTE PTR 78[rbx]
	lea	rcx, sBirdAnimModeSequence[rip]
	mov	BYTE PTR 77[rbx], 0
	mov	rax, rdx
	movzx	edx, BYTE PTR [rcx+rdx]
	add	eax, 1
	mov	BYTE PTR 76[rbx], dl
	mov	BYTE PTR 78[rbx], al
.L93:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L95:
	movzx	edx, BYTE PTR 77[rbx]
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	sal	edx, 4
	movsx	rdx, edx
	movzx	edx, WORD PTR [rcx+rdx*2]
	sar	dx, 10
	sub	eax, edx
	jmp	.L96
	.p2align 4,,10
	.p2align 3
.L94:
	add	eax, 48
	jmp	.L96
	.p2align 4,,10
	.p2align 3
.L101:
	mov	rax, QWORD PTR [rsi]
	mov	rax, QWORD PTR 24[rax]
	mov	rcx, QWORD PTR 8[rax]
	call	VramFree
	mov	rcx, QWORD PTR [rsi]
	call	TaskDestroy
	jmp	.L98
	.p2align 4,,10
	.p2align 3
.L100:
	mov	rax, QWORD PTR [rsi]
	mov	rax, QWORD PTR 24[rax]
	mov	rcx, QWORD PTR 8[rax]
	call	VramFree
	mov	rcx, QWORD PTR [rsi]
	call	TaskDestroy
	jmp	.L97
	.seh_endproc
	.p2align 4
	.def	Task_ShowPressStartMenu;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_ShowPressStartMenu
Task_ShowPressStartMenu:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	lea	rcx, 288[rbx]
	call	DisplaySprite
	mov	rax, QWORD PTR .refptr.gBgAffineRegs[rip]
	xor	ecx, ecx
	mov	DWORD PTR 48[rsp], 8
	mov	DWORD PTR 40[rsp], 113
	xor	r9d, r9d
	mov	edx, 256
	mov	r8d, 256
	mov	QWORD PTR 56[rsp], rax
	mov	DWORD PTR 32[rsp], 0
	call	sub_8003EE4
	lea	rcx, 864[rbx]
	call	UpdateScreenFade
	cmp	al, 1
	je	.L104
	add	rsp, 72
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L104:
	mov	ecx, 201
	call	m4aSongNumStart
	xor	eax, eax
	lea	rdx, Task_PressStartMenuMain[rip]
	mov	WORD PTR 5762[rbx], ax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 72
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	SkipIntro;	.scl	3;	.type	32;	.endef
	.seh_proc	SkipIntro
SkipIntro:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	and	DWORD PTR [rax], -5
	mov	rax, QWORD PTR .LC19[rip]
	mov	DWORD PTR 872[rcx], 16319
	mov	rbx, rcx
	lea	rcx, 864[rcx]
	mov	QWORD PTR [rcx], rax
	call	UpdateScreenFade
	call	m4aMPlayAllStop
	mov	rcx, rbx
	call	InitTitleScreenUI
	mov	rax, QWORD PTR .refptr.gBgAffineRegs[rip]
	xor	r9d, r9d
	mov	DWORD PTR 48[rsp], 8
	mov	DWORD PTR 40[rsp], 113
	mov	r8d, 256
	mov	edx, 256
	xor	ecx, ecx
	mov	QWORD PTR 56[rsp], rax
	mov	DWORD PTR 32[rsp], 0
	call	sub_8003EE4
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	lea	rdx, Task_ShowTitleScreenIntroSkipped[rip]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 64
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	Task_IntroStartSkyTransition;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_IntroStartSkyTransition
Task_IntroStartSkyTransition:
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
	call	WavesBackgroundAnim
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	test	BYTE PTR [rax], 9
	jne	.L110
	movzx	eax, WORD PTR 5762[rbx]
	cmp	ax, 59
	je	.L111
.L108:
	cmp	ax, 140
	ja	.L112
.L109:
	add	eax, 1
	mov	WORD PTR 5762[rbx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L112:
	mov	rax, QWORD PTR [rsi]
	lea	rdx, Task_IntroPanSkyAnim[rip]
	xor	r8d, r8d
	mov	ecx, 124
	mov	r9d, 65503
	mov	QWORD PTR 40[rax], rdx
	xor	eax, eax
	mov	edx, -60
	mov	WORD PTR 5762[rbx], ax
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	or	WORD PTR [rax], 512
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	mov	DWORD PTR [rax], 268436033
	call	CreateBirdAnimation.constprop.0
	mov	r9d, 32
	mov	r8d, 3
	mov	edx, -24
	mov	ecx, 180
	call	CreateBirdAnimation.constprop.0
	movzx	eax, WORD PTR 5762[rbx]
	jmp	.L109
	.p2align 4,,10
	.p2align 3
.L110:
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	SkipIntro
	.p2align 4,,10
	.p2align 3
.L111:
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	ecx, 64
	mov	r8d, 1
	movdqu	xmm0, XMMWORD PTR .LC12[rip]
	mov	WORD PTR 156[rbx], cx
	lea	rcx, 96[rbx]
	lea	rdx, 32768[rax]
	add	rax, 59392
	mov	BYTE PTR 158[rbx], 0
	mov	QWORD PTR 104[rbx], rdx
	xor	edx, edx
	mov	QWORD PTR 120[rbx], rax
	mov	WORD PTR 114[rbx], dx
	mov	WORD PTR 162[rbx], r8w
	movups	XMMWORD PTR 140[rbx], xmm0
	call	DrawBackground
	movzx	eax, WORD PTR 5762[rbx]
	jmp	.L108
	.seh_endproc
	.p2align 4
	.def	Task_IntroPanSkyAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_IntroPanSkyAnim
Task_IntroPanSkyAnim:
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
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	test	BYTE PTR [rax], 9
	jne	.L126
	mov	rsi, QWORD PTR .refptr.gBgScrollRegs[rip]
	movzx	edx, BYTE PTR 5761[rbx]
	movzx	eax, WORD PTR 6[rsi]
	sub	eax, edx
	cmp	ax, 174
	jle	.L115
	mov	WORD PTR 6[rsi], ax
	cmp	ax, 350
	jle	.L123
	add	WORD PTR 5756[rbx], dx
	mov	rcx, rbx
	call	WavesBackgroundAnim
.L117:
	movzx	ecx, BYTE PTR 5760[rbx]
	lea	r8, sPanUpNextVelocityChangeFrame[rip]
	movzx	eax, WORD PTR 5762[rbx]
	mov	rdx, rcx
	movzx	ecx, BYTE PTR [r8+rcx]
	cmp	ax, cx
	je	.L127
	cmp	ax, 60
	jbe	.L125
	cmp	dl, 2
	ja	.L122
.L125:
	add	eax, 1
	mov	WORD PTR 5762[rbx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L115:
	mov	eax, 175
	mov	WORD PTR 6[rsi], ax
.L123:
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	and	WORD PTR [rax], -17409
	jmp	.L117
	.p2align 4,,10
	.p2align 3
.L127:
	movzx	eax, WORD PTR 5760[rbx]
	pinsrw	xmm0, WORD PTR .LC23[rip], 0
	movd	ecx, xmm0
	add	al, cl
	add	ah, ch
	mov	WORD PTR 5760[rbx], ax
.L119:
	mov	eax, 1
	mov	WORD PTR 5762[rbx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L126:
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	SkipIntro
	.p2align 4,,10
	.p2align 3
.L122:
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	xor	edx, edx
	xor	ecx, ecx
	mov	BYTE PTR 62[rbx], 0
	mov	r8d, 16
	mov	rbp, QWORD PTR .refptr.gBldRegs[rip]
	mov	WORD PTR 18[rbx], cx
	mov	r9d, 16
	movdqu	xmm0, XMMWORD PTR .LC25[rip]
	and	WORD PTR 4[rax], -8193
	mov	rcx, rbx
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	mov	WORD PTR 0[rbp], dx
	mov	WORD PTR 60[rbx], r8w
	mov	BYTE PTR [rax], 2
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	mov	WORD PTR 66[rbx], r9w
	mov	DWORD PTR [rax], 538968064
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	movups	XMMWORD PTR 44[rbx], xmm0
	lea	rdx, 16384[rax]
	add	rax, 63488
	mov	QWORD PTR 8[rbx], rdx
	mov	QWORD PTR 24[rbx], rax
	call	DrawBackground
	mov	rax, QWORD PTR [rdi]
	lea	rdi, Task_IntroSkyAnim[rip]
	movabs	rdx, 270582955776
	mov	r10d, 79
	mov	r11d, 16319
	mov	QWORD PTR 40[rax], rdi
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	WORD PTR 2[rsi], r10w
	xor	esi, esi
	or	QWORD PTR 16[rax], rdx
	mov	rdx, QWORD PTR .refptr.REG_BASE[rip]
	mov	DWORD PTR 4[rax], 426
	mov	DWORD PTR 12[rax], 240
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	WORD PTR 0[rbp], r11w
	or	WORD PTR [rax], 16384
	movzx	eax, WORD PTR 296[rdx]
	mov	WORD PTR 4[rbp], si
	or	ah, 64
	mov	WORD PTR 296[rdx], ax
	jmp	.L119
	.seh_endproc
	.p2align 4
	.def	Task_IntroSkyAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_IntroSkyAnim
Task_IntroSkyAnim:
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
	sub	rsp, 104
	.seh_stackalloc	104
	movups	XMMWORD PTR 80[rsp], xmm6
	.seh_savexmm	xmm6, 80
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	r14, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	test	BYTE PTR [rax], 9
	jne	.L145
	movzx	eax, WORD PTR 5762[r14]
	cmp	ax, 2
	je	.L146
.L130:
	test	al, 1
	jne	.L147
.L132:
	cmp	BYTE PTR 5760[r14], 2
	jbe	.L133
	lea	edx, -20[rax]
	cmp	dx, 118
	ja	.L133
	mov	rcx, QWORD PTR .refptr.gDispCnt[rip]
	mov	ebx, 16319
	movzx	edx, WORD PTR [rcx]
	and	dh, -2
	or	dh, 64
	mov	WORD PTR [rcx], dx
	mov	rdx, QWORD PTR .refptr.gWinRegs[rip]
	movabs	rcx, 270582955776
	mov	DWORD PTR 4[rdx], 426
	or	QWORD PTR 16[rdx], rcx
	mov	DWORD PTR 12[rdx], 240
	mov	rdx, QWORD PTR .refptr.gBldRegs[rip]
	mov	WORD PTR [rdx], bx
	cmp	ax, 29
	jbe	.L134
	movzx	ecx, ax
	mov	r8d, 16
	sub	ecx, 30
	sar	ecx, 3
	sub	r8d, ecx
	mov	WORD PTR 4[rdx], r8w
.L137:
	add	eax, 1
	mov	WORD PTR 5762[r14], ax
	movups	xmm6, XMMWORD PTR 80[rsp]
	add	rsp, 104
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
.L133:
	cmp	ax, 138
	jbe	.L137
	mov	r9d, -2063593472
	lea	rdx, 76[rsp]
	mov	r8, QWORD PTR .refptr.VRAM[rip]
	mov	ecx, 3
	mov	DWORD PTR 76[rsp], 0
	lea	rsi, Task_IntroFadeInTitleScreenAnim[rip]
	call	DmaSet
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	mov	edx, DWORD PTR .LC10[rip]
	mov	DWORD PTR 44[r14], 0
	mov	rcx, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	mov	DWORD PTR [rax], edx
	mov	DWORD PTR 8[rax], edx
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	xor	edx, edx
	mov	WORD PTR 18[r14], dx
	mov	QWORD PTR 8[r14], rax
	add	rax, 53248
	mov	QWORD PTR 24[r14], rax
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	BYTE PTR [rcx], 2
	mov	rax, QWORD PTR [rax]
	mov	BYTE PTR 2[rcx], 0
	mov	ecx, 6
	cmp	BYTE PTR 6[rax], 2
	mov	WORD PTR 66[r14], cx
	mov	rcx, r14
	sbb	eax, eax
	mov	QWORD PTR 50[r14], 0
	add	ax, 265
	mov	DWORD PTR 58[r14], 655386
	mov	WORD PTR 48[r14], ax
	mov	BYTE PTR 62[r14], 0
	call	DrawBackground
	xor	r8d, r8d
	xor	r9d, r9d
	mov	rcx, r14
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	rdx, QWORD PTR .refptr.gDispCnt[rip]
	and	WORD PTR 4[rax], -8193
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rax], rsi
	movzx	eax, WORD PTR [rdx]
	mov	WORD PTR 5762[r14], r8w
	and	ah, -2
	or	ah, 4
	mov	WORD PTR [rdx], ax
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	mov	DWORD PTR [rax], 268436036
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	WORD PTR 6[rax], r9w
	call	InitTitleScreenUI
	movzx	eax, WORD PTR 5762[r14]
	jmp	.L137
	.p2align 4,,10
	.p2align 3
.L147:
	mov	rax, QWORD PTR .refptr.gBgAffineRegs[rip]
	xor	r9d, r9d
	mov	edx, 256
	xor	ecx, ecx
	mov	DWORD PTR 48[rsp], 10
	mov	r8d, 256
	mov	QWORD PTR 56[rsp], rax
	mov	DWORD PTR 40[rsp], 0
	mov	DWORD PTR 32[rsp], 0
	call	sub_8003EE4
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	or	WORD PTR [rax], 256
	movzx	eax, WORD PTR 5762[r14]
	jmp	.L132
	.p2align 4,,10
	.p2align 3
.L145:
	movups	xmm6, XMMWORD PTR 80[rsp]
	mov	rcx, r14
	add	rsp, 104
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	SkipIntro
	.p2align 4,,10
	.p2align 3
.L146:
	xor	r9d, r9d
	mov	r8d, 8192
	mov	edx, 632
	xor	edi, edi
	mov	QWORD PTR 32[rsp], 0
	lea	rcx, Task_LensFlareAnim[rip]
	lea	r12, sLensFlareStartPositions[rip]
	lea	r13, sLensFlareSizes[rip]
	lea	rbp, 2[r12]
	call	TaskCreate
	movd	xmm6, DWORD PTR .LC27[rip]
	mov	rsi, QWORD PTR 24[rax]
	mov	r15, rsi
	lea	rbx, 512[rsi]
	.p2align 4,,10
	.p2align 3
.L131:
	mov	ecx, 64
	add	rbx, 10
	call	VramMalloc
	mov	r8d, edi
	movzx	ecx, WORD PTR [r12+rdi*4]
	xor	edx, edx
	mov	QWORD PTR 8[r15], rax
	movzx	eax, WORD PTR 0[r13+rdi*2]
	neg	r8d
	sal	r8d, 6
	mov	BYTE PTR 49[r15], -1
	mov	BYTE PTR 48[r15], al
	movzx	eax, WORD PTR 0[rbp+rdi*4]
	add	r8w, 512
	mov	WORD PTR 592[rsi+rdi*2], cx
	mov	WORD PTR 608[rsi+rdi*2], ax
	sal	rax, 16
	mov	WORD PTR 42[r15], r8w
	mov	r8d, edi
	or	rax, rcx
	add	rdi, 1
	or	r8d, 96
	mov	WORD PTR 44[r15], dx
	sal	rax, 16
	mov	DWORD PTR 32[r15], r8d
	xor	r8d, r8d
	mov	BYTE PTR 50[r15], 16
	mov	BYTE PTR 53[r15], 0
	movd	DWORD PTR 16[r15], xmm6
	mov	WORD PTR -10[rbx], r8w
	lea	r8d, 176[rcx+rcx]
	mov	rcx, r15
	add	r15, 64
	movzx	r8d, r8w
	or	rax, r8
	sal	rax, 16
	or	rax, r8
	mov	QWORD PTR -8[rbx], rax
	call	UpdateSpriteAnimation
	cmp	rdi, 8
	jne	.L131
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	xor	edi, edi
	mov	WORD PTR 628[rsi], di
	mov	eax, DWORD PTR 4[rax]
	mov	DWORD PTR 624[rsi], eax
	movzx	eax, WORD PTR 5762[r14]
	jmp	.L130
	.p2align 4,,10
	.p2align 3
.L134:
	mov	r11d, 16
	mov	WORD PTR 4[rdx], r11w
	cmp	ax, 21
	jne	.L137
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	xor	r10d, r10d
	mov	WORD PTR 6[rdx], r10w
	jmp	.L137
	.seh_endproc
	.p2align 4
	.def	Task_IntroWaitUntilTitleScreenFanfare;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_IntroWaitUntilTitleScreenFanfare
Task_IntroWaitUntilTitleScreenFanfare:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, WORD PTR 5762[rbx]
	cmp	ax, 60
	ja	.L150
.L149:
	add	eax, 1
	xor	r9d, r9d
	mov	r8d, 256
	xor	ecx, ecx
	mov	WORD PTR 5762[rbx], ax
	mov	rax, QWORD PTR .refptr.gBgAffineRegs[rip]
	mov	edx, 256
	mov	DWORD PTR 48[rsp], 8
	mov	QWORD PTR 56[rsp], rax
	mov	DWORD PTR 40[rsp], 113
	mov	DWORD PTR 32[rsp], 0
	call	sub_8003EE4
	nop
	add	rsp, 72
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L150:
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	mov	ecx, 201
	and	DWORD PTR [rax], -5
	xor	eax, eax
	mov	WORD PTR 5762[rbx], ax
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rsi]
	lea	rdx, Task_PressStartMenuMain[rip]
	mov	QWORD PTR 40[rax], rdx
	movzx	eax, WORD PTR 5762[rbx]
	jmp	.L149
	.seh_endproc
	.p2align 4
	.def	Task_JumpToPlayModeMenu;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_JumpToPlayModeMenu
Task_JumpToPlayModeMenu:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, BYTE PTR 5766[rbx]
	lea	rcx, 480[rbx]
	mov	BYTE PTR 533[rbx], al
	call	DisplaySprite
	movzx	eax, BYTE PTR 5766[rbx]
	lea	rcx, 416[rbx]
	xor	eax, 1
	mov	BYTE PTR 469[rbx], al
	call	DisplaySprite
	lea	rcx, 288[rbx]
	call	DisplaySprite
	mov	rax, QWORD PTR .refptr.gBgAffineRegs[rip]
	xor	ecx, ecx
	mov	DWORD PTR 48[rsp], 8
	mov	DWORD PTR 40[rsp], 113
	xor	r9d, r9d
	mov	edx, 256
	mov	r8d, 256
	mov	QWORD PTR 56[rsp], rax
	mov	DWORD PTR 32[rsp], 0
	call	sub_8003EE4
	lea	rcx, 864[rbx]
	call	UpdateScreenFade
	cmp	al, 1
	je	.L153
	add	rsp, 72
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L153:
	mov	ecx, 201
	call	m4aSongNumStart
	xor	eax, eax
	lea	rdx, Task_PlayModeMenuMain[rip]
	mov	WORD PTR 5762[rbx], ax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 72
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_JumpToSinglePlayerMenu;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_JumpToSinglePlayerMenu
Task_JumpToSinglePlayerMenu:
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
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	r12, QWORD PTR .refptr.gCurTask[rip]
	mov	ebp, 3
	mov	rax, QWORD PTR [rax]
	cmp	BYTE PTR 20[rax], 1
	mov	rax, QWORD PTR [r12]
	sbb	bpl, -1
	xor	ebx, ebx
	mov	rdi, QWORD PTR 24[rax]
	lea	rsi, 544[rdi]
.L156:
	cmp	BYTE PTR 5766[rdi], bl
	mov	rcx, rsi
	sete	BYTE PTR 53[rsi]
	add	ebx, 1
	add	rsi, 64
	call	DisplaySprite
	cmp	bl, bpl
	jne	.L156
	mov	rax, QWORD PTR .refptr.gBgAffineRegs[rip]
	xor	ecx, ecx
	xor	r9d, r9d
	mov	DWORD PTR 48[rsp], 8
	mov	DWORD PTR 40[rsp], 113
	mov	r8d, 256
	mov	edx, 256
	mov	QWORD PTR 56[rsp], rax
	mov	DWORD PTR 32[rsp], 0
	call	sub_8003EE4
	lea	rcx, 864[rdi]
	call	UpdateScreenFade
	cmp	al, 1
	je	.L160
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L160:
	mov	ecx, 201
	call	m4aSongNumStart
	xor	eax, eax
	lea	rdx, Task_SinglePlayerMenuMain[rip]
	mov	WORD PTR 5762[rdi], ax
	mov	rax, QWORD PTR [r12]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.def	Task_StartPressedTransitionAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_StartPressedTransitionAnim
Task_StartPressedTransitionAnim:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, WORD PTR 5762[rbx]
	test	al, 4
	jne	.L168
.L162:
	add	eax, 1
	lea	rcx, 288[rbx]
	mov	WORD PTR 5762[rbx], ax
	call	DisplaySprite
	movzx	eax, WORD PTR 5762[rbx]
	cmp	ax, 10
	je	.L169
.L163:
	cmp	ax, 16
	jbe	.L164
	xor	eax, eax
	lea	rdx, Task_PlayModeMenuMain[rip]
	mov	BYTE PTR 5766[rbx], 0
	mov	WORD PTR 5762[rbx], ax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdx
.L164:
	mov	rax, QWORD PTR .refptr.gBgAffineRegs[rip]
	xor	r9d, r9d
	mov	edx, 256
	xor	ecx, ecx
	mov	DWORD PTR 48[rsp], 8
	mov	r8d, 256
	mov	QWORD PTR 56[rsp], rax
	mov	DWORD PTR 40[rsp], 113
	mov	DWORD PTR 32[rsp], 0
	call	sub_8003EE4
	nop
	add	rsp, 72
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L168:
	lea	rcx, 352[rbx]
	call	DisplaySprite
	movzx	eax, WORD PTR 5762[rbx]
	jmp	.L162
	.p2align 4,,10
	.p2align 3
.L169:
	lea	rcx, 416[rbx]
	mov	edx, 1
	call	CreateMenuItemTransition
	lea	rcx, 480[rbx]
	mov	edx, 1
	call	CreateMenuItemTransition
	movzx	eax, WORD PTR 5762[rbx]
	jmp	.L163
	.seh_endproc
	.p2align 4
	.def	Task_IntroFadeInTitleScreenAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_IntroFadeInTitleScreenAnim
Task_IntroFadeInTitleScreenAnim:
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	mov	rcx, QWORD PTR 24[r8]
	test	BYTE PTR [rax], 9
	jne	.L174
	movzx	edx, WORD PTR 5762[rcx]
	mov	eax, 16
	mov	r10, QWORD PTR .refptr.gBldRegs[rip]
	mov	r9d, edx
	shr	r9w, 2
	sub	eax, r9d
	sal	eax, 8
	or	eax, r9d
	mov	WORD PTR 2[r10], ax
	cmp	dx, 64
	ja	.L172
	add	edx, 1
.L173:
	mov	rax, QWORD PTR .refptr.gBgAffineRegs[rip]
	mov	WORD PTR 5762[rcx], dx
	xor	r9d, r9d
	xor	ecx, ecx
	mov	DWORD PTR 48[rsp], 8
	mov	r8d, 256
	mov	edx, 256
	mov	QWORD PTR 56[rsp], rax
	mov	DWORD PTR 40[rsp], 113
	mov	DWORD PTR 32[rsp], 0
	call	sub_8003EE4
	nop
	add	rsp, 72
	ret
	.p2align 4,,10
	.p2align 3
.L172:
	xor	eax, eax
	mov	edx, 1
	mov	WORD PTR [r10], ax
	lea	rax, Task_IntroWaitUntilTitleScreenFanfare[rip]
	mov	QWORD PTR 40[r8], rax
	jmp	.L173
	.p2align 4,,10
	.p2align 3
.L174:
	add	rsp, 72
	jmp	SkipIntro
	.seh_endproc
	.p2align 4
	.def	Task_PressStartMenuMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_PressStartMenuMain
Task_PressStartMenuMain:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, WORD PTR 5762[rbx]
	cmp	ax, 39
	jbe	.L183
.L176:
	add	eax, 1
	xor	edx, edx
	lea	rcx, 288[rbx]
	cmp	ax, 81
	cmovnb	eax, edx
	mov	WORD PTR 5762[rbx], ax
	call	DisplaySprite
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	test	BYTE PTR [rax], 8
	jne	.L184
.L178:
	mov	rax, QWORD PTR .refptr.gBgAffineRegs[rip]
	xor	r9d, r9d
	mov	edx, 256
	xor	ecx, ecx
	mov	DWORD PTR 48[rsp], 8
	mov	r8d, 256
	mov	QWORD PTR 56[rsp], rax
	mov	DWORD PTR 40[rsp], 113
	mov	DWORD PTR 32[rsp], 0
	call	sub_8003EE4
	movzx	eax, WORD PTR 5764[rbx]
	add	eax, 1
	mov	WORD PTR 5764[rbx], ax
	cmp	ax, 900
	jne	.L175
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_StartTitleScreenDemo[rip]
	mov	QWORD PTR 40[rax], rsi
.L175:
	add	rsp, 72
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L184:
	mov	ecx, 106
	call	m4aSongNumStart
	xor	eax, eax
	lea	rdx, Task_StartPressedTransitionAnim[rip]
	mov	BYTE PTR 5766[rbx], 0
	mov	WORD PTR 5762[rbx], ax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdx
	jmp	.L178
	.p2align 4,,10
	.p2align 3
.L183:
	lea	rcx, 352[rbx]
	call	DisplaySprite
	movzx	eax, WORD PTR 5762[rbx]
	jmp	.L176
	.seh_endproc
	.p2align 4
	.def	Task_SinglePlayerSelectedTransitionAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_SinglePlayerSelectedTransitionAnim
Task_SinglePlayerSelectedTransitionAnim:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, WORD PTR 5762[rbx]
	test	al, 4
	jne	.L198
.L186:
	add	eax, 1
	lea	rcx, 288[rbx]
	mov	WORD PTR 5762[rbx], ax
	call	DisplaySprite
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	test	BYTE PTR [rax], 2
	jne	.L199
	movzx	eax, WORD PTR 5762[rbx]
	cmp	ax, 8
	je	.L200
.L188:
	cmp	ax, 12
	jbe	.L190
	xor	eax, eax
	lea	rdx, Task_SinglePlayerMenuMain[rip]
	mov	BYTE PTR 5766[rbx], 0
	mov	WORD PTR 5762[rbx], ax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdx
.L190:
	mov	rax, QWORD PTR .refptr.gBgAffineRegs[rip]
	xor	r9d, r9d
	mov	edx, 256
	xor	ecx, ecx
	mov	DWORD PTR 48[rsp], 8
	mov	r8d, 256
	mov	QWORD PTR 56[rsp], rax
	mov	DWORD PTR 40[rsp], 113
	mov	DWORD PTR 32[rsp], 0
	call	sub_8003EE4
	nop
	add	rsp, 72
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L198:
	lea	rcx, 416[rbx]
	call	DisplaySprite
	movzx	eax, WORD PTR 5762[rbx]
	jmp	.L186
	.p2align 4,,10
	.p2align 3
.L199:
	mov	BYTE PTR 5766[rbx], 0
	mov	ecx, 107
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rsi]
	lea	rdx, Task_PlayModeMenuMain[rip]
	mov	QWORD PTR 40[rax], rdx
	movzx	eax, WORD PTR 5762[rbx]
	cmp	ax, 8
	jne	.L188
.L200:
	lea	rcx, 544[rbx]
	mov	edx, 1
	call	CreateMenuItemTransition
	lea	rcx, 608[rbx]
	mov	edx, 1
	call	CreateMenuItemTransition
	lea	rcx, 672[rbx]
	mov	edx, 1
	call	CreateMenuItemTransition
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rax, QWORD PTR [rax]
	cmp	BYTE PTR 20[rax], 0
	jne	.L189
.L197:
	movzx	eax, WORD PTR 5762[rbx]
	jmp	.L188
	.p2align 4,,10
	.p2align 3
.L189:
	lea	rcx, 736[rbx]
	mov	edx, 1
	call	CreateMenuItemTransition
	jmp	.L197
	.seh_endproc
	.p2align 4
	.def	Task_PlayModeMenuMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_PlayModeMenuMain
Task_PlayModeMenuMain:
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
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	lea	rcx, 288[rbx]
	lea	rbp, 480[rbx]
	call	DisplaySprite
	mov	rax, QWORD PTR .refptr.gBgAffineRegs[rip]
	xor	r9d, r9d
	mov	DWORD PTR 48[rsp], 8
	mov	DWORD PTR 40[rsp], 113
	mov	r8d, 256
	xor	ecx, ecx
	mov	edx, 256
	mov	QWORD PTR 56[rsp], rax
	lea	rdi, 416[rbx]
	mov	DWORD PTR 32[rsp], 0
	call	sub_8003EE4
	movzx	eax, BYTE PTR 5766[rbx]
	mov	rcx, rbp
	mov	BYTE PTR 533[rbx], al
	call	DisplaySprite
	movzx	eax, BYTE PTR 5766[rbx]
	mov	rcx, rdi
	xor	eax, 1
	mov	BYTE PTR 469[rbx], al
	call	DisplaySprite
	mov	rax, QWORD PTR .refptr.gRepeatedKeys[rip]
	test	BYTE PTR [rax], -64
	je	.L202
	cmp	BYTE PTR 5766[rbx], 0
	mov	ecx, 108
	sete	BYTE PTR 5766[rbx]
	call	m4aSongNumStart
.L202:
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	movzx	eax, WORD PTR [rax]
	test	al, 1
	jne	.L212
	test	al, 2
	jne	.L213
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L213:
	xor	eax, eax
	mov	ecx, 107
	mov	WORD PTR 5764[rbx], ax
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rsi]
	lea	rdx, Task_PressStartMenuMain[rip]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L212:
	mov	ecx, 106
	call	m4aSongNumStart
	cmp	BYTE PTR 5766[rbx], 0
	jne	.L204
	mov	edx, 213
	mov	rcx, rbp
	mov	WORD PTR 518[rbx], dx
	xor	edx, edx
	call	CreateMenuItemTransition
	mov	rax, QWORD PTR [rsi]
	xor	ecx, ecx
	lea	rdx, Task_SinglePlayerSelectedTransitionAnim[rip]
	mov	WORD PTR 5762[rbx], cx
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L204:
	xor	edx, edx
	mov	rcx, rdi
	call	CreateMenuItemTransition
	mov	rax, QWORD PTR .LC30[rip]
	lea	rdx, Task_HandleTitleScreenExit[rip]
	mov	BYTE PTR 5766[rbx], 4
	mov	QWORD PTR 866[rbx], rax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.def	Task_ShowTitleScreenIntroSkipped;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_ShowTitleScreenIntroSkipped
Task_ShowTitleScreenIntroSkipped:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 80
	.seh_stackalloc	80
	.seh_endprologue
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR .refptr.VRAM[rip]
	mov	ecx, 3
	mov	r9d, -2063581184
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	lea	rdx, 76[rsp]
	mov	DWORD PTR 76[rsp], 0
	call	DmaSet
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	mov	edx, DWORD PTR .LC10[rip]
	mov	DWORD PTR 44[rbx], 0
	mov	rsi, QWORD PTR .refptr.VRAM[rip]
	mov	rcx, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	mov	DWORD PTR [rax], edx
	mov	DWORD PTR 8[rax], edx
	xor	eax, eax
	mov	edx, 6
	mov	WORD PTR 18[rbx], ax
	lea	rax, 53248[rsi]
	mov	QWORD PTR 24[rbx], rax
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	QWORD PTR 8[rbx], rsi
	mov	rax, QWORD PTR [rax]
	mov	BYTE PTR [rcx], 0
	mov	BYTE PTR 2[rcx], 0
	mov	rcx, rbx
	cmp	BYTE PTR 6[rax], 2
	mov	WORD PTR 66[rbx], dx
	sbb	eax, eax
	mov	QWORD PTR 50[rbx], 0
	add	ax, 265
	mov	DWORD PTR 58[rbx], 655386
	mov	WORD PTR 48[rbx], ax
	mov	BYTE PTR 62[rbx], 0
	call	DrawBackground
	mov	r8d, 64
	mov	r9d, 1
	xor	ecx, ecx
	lea	rax, 32768[rsi]
	add	rsi, 59392
	movdqu	xmm0, XMMWORD PTR .LC12[rip]
	mov	WORD PTR 156[rbx], r8w
	mov	WORD PTR 162[rbx], r9w
	mov	QWORD PTR 104[rbx], rax
	mov	WORD PTR 114[rbx], cx
	lea	rcx, 96[rbx]
	mov	QWORD PTR 120[rbx], rsi
	mov	BYTE PTR 158[rbx], 0
	movups	XMMWORD PTR 140[rbx], xmm0
	call	DrawBackground
	mov	rdx, QWORD PTR .refptr.gDispCnt[rip]
	xor	r10d, r10d
	lea	rcx, 864[rbx]
	movzx	eax, WORD PTR [rdx]
	and	ah, -2
	or	ah, 6
	mov	WORD PTR [rdx], ax
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	DWORD PTR 4[rax], 8
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	and	WORD PTR 4[rax], -8193
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	mov	WORD PTR [rax], r10w
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	and	DWORD PTR [rax], -32769
	call	UpdateScreenFade
	mov	ecx, 2
	call	m4aSongNumStart
	mov	rax, QWORD PTR .refptr.gBgAffineRegs[rip]
	xor	r9d, r9d
	mov	DWORD PTR 48[rsp], 8
	mov	DWORD PTR 40[rsp], 113
	mov	r8d, 256
	mov	edx, 256
	xor	ecx, ecx
	mov	QWORD PTR 56[rsp], rax
	mov	DWORD PTR 32[rsp], 0
	call	sub_8003EE4
	mov	rax, QWORD PTR [rdi]
	mov	rdx, QWORD PTR .refptr.REG_BASE[rip]
	lea	rdi, Task_ShowPressStartMenu[rip]
	mov	QWORD PTR 40[rax], rdi
	movzx	eax, WORD PTR 296[rdx]
	or	ah, 64
	mov	WORD PTR 296[rdx], ax
	add	rsp, 80
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_SinglePlayerMenuMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_SinglePlayerMenuMain
Task_SinglePlayerMenuMain:
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
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	r13, QWORD PTR .refptr.gCurTask[rip]
	mov	ebp, 3
	mov	rax, QWORD PTR [rax]
	cmp	BYTE PTR 20[rax], 1
	mov	rax, QWORD PTR 0[r13]
	sbb	bpl, -1
	xor	ebx, ebx
	mov	rdi, QWORD PTR 24[rax]
	lea	r12, 544[rdi]
	mov	rsi, r12
.L219:
	cmp	BYTE PTR 5766[rdi], bl
	mov	rcx, rsi
	sete	BYTE PTR 53[rsi]
	add	ebx, 1
	add	rsi, 64
	call	DisplaySprite
	cmp	bl, bpl
	jne	.L219
	mov	rax, QWORD PTR .refptr.gBgAffineRegs[rip]
	xor	r9d, r9d
	mov	edx, 256
	xor	ecx, ecx
	mov	DWORD PTR 48[rsp], 8
	mov	r8d, 256
	mov	QWORD PTR 56[rsp], rax
	mov	DWORD PTR 40[rsp], 113
	mov	DWORD PTR 32[rsp], 0
	call	sub_8003EE4
	mov	rax, QWORD PTR .refptr.gRepeatedKeys[rip]
	movzx	eax, WORD PTR [rax]
	test	al, 64
	je	.L220
	movzx	edx, BYTE PTR 5766[rdi]
	lea	eax, -1[rbp]
	lea	ecx, -1[rdx]
	test	dl, dl
	cmovne	eax, ecx
	mov	ecx, 108
	mov	BYTE PTR 5766[rdi], al
	call	m4aSongNumStart
.L223:
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	movzx	eax, WORD PTR [rax]
	test	al, 2
	jne	.L241
.L225:
	test	al, 1
	je	.L217
	cmp	BYTE PTR 5766[rdi], 3
	mov	eax, 16319
	mov	edx, 16383
	mov	DWORD PTR 866[rdi], 1
	cmovne	eax, edx
	xor	ebx, ebx
	mov	WORD PTR 872[rdi], ax
	mov	eax, 256
	mov	WORD PTR 870[rdi], ax
.L229:
	cmp	BYTE PTR 5766[rdi], bl
	je	.L228
	xor	edx, edx
	mov	rcx, r12
	call	CreateMenuItemTransition
.L228:
	add	ebx, 1
	add	r12, 64
	cmp	bl, bpl
	jne	.L229
	mov	ecx, 106
	call	m4aSongNumStart
	mov	rax, QWORD PTR 0[r13]
	lea	rdx, Task_HandleTitleScreenExit[rip]
	mov	QWORD PTR 40[rax], rdx
.L217:
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L220:
	test	al, -128
	je	.L223
	movzx	ecx, BYTE PTR 5766[rdi]
	xor	edx, edx
	cmp	bpl, 3
	setne	dl
	mov	eax, ecx
	add	edx, 2
	add	eax, 1
	cmp	ecx, edx
	mov	edx, 0
	mov	ecx, 108
	cmovge	eax, edx
	mov	BYTE PTR 5766[rdi], al
	call	m4aSongNumStart
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	movzx	eax, WORD PTR [rax]
	test	al, 2
	je	.L225
.L241:
	mov	BYTE PTR 5766[rdi], 0
	mov	ecx, 107
	call	m4aSongNumStart
	mov	rax, QWORD PTR 0[r13]
	lea	rdx, Task_PlayModeMenuMain[rip]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateTitleScreen
	.def	CreateTitleScreen;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateTitleScreen
CreateTitleScreen:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	xor	r9d, r9d
	mov	r8d, 4096
	mov	edx, 5800
	lea	rcx, Task_IntroStartSegaLogoAnim[rip]
	mov	QWORD PTR 32[rsp], 0
	call	TaskCreate
	mov	r8d, 8
	mov	rbx, QWORD PTR 24[rax]
	movabs	rax, 9007207861453312
	mov	QWORD PTR 5752[rbx], rax
	xor	eax, eax
	lea	r9, 5272[rbx]
	mov	DWORD PTR 5760[rbx], 256
	mov	WORD PTR 5764[rbx], ax
	mov	BYTE PTR 5766[rbx], 0
	.p2align 4,,10
	.p2align 3
.L243:
	mov	eax, 65536
	xor	edx, edx
	add	r9, 2
	idiv	r8d
	xor	edx, edx
	add	r8d, 8
	lea	ecx, [rax+rax]
	mov	eax, 65536
	idiv	ecx
	mov	WORD PTR -4322[r9], cx
	mov	WORD PTR -2[r9], ax
	cmp	r8d, 1928
	jne	.L243
	mov	rax, QWORD PTR .LC19[rip]
	mov	edx, 3584
	xor	r9d, r9d
	mov	ecx, 5185
	mov	WORD PTR 880[rbx], dx
	mov	r8d, 31361
	lea	rdx, 880[rbx]
	lea	rsi, sWavesVerticalBrightnessGradiant[rip]
	mov	QWORD PTR 864[rbx], rax
	mov	eax, 2
	movq	xmm0, rsi
	mov	WORD PTR 944[rbx], ax
	lea	rax, sWavesBrightnessPalette[rip]
	movq	xmm1, rax
	mov	rax, QWORD PTR .refptr.gBgPaletteEffects[rip]
	mov	DWORD PTR 872[rbx], 16319
	mov	BYTE PTR 882[rbx], 0
	punpcklqdq	xmm0, xmm1
	mov	QWORD PTR [rax], rdx
	mov	rdx, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	mov	QWORD PTR 8[rax], rbx
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	BYTE PTR 946[rbx], 0
	mov	WORD PTR [rax], cx
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	rcx, QWORD PTR .LC9[rip]
	mov	WORD PTR [rdx], r9w
	mov	r9d, -2063581184
	mov	WORD PTR 4[rax], r8w
	mov	r8, QWORD PTR .refptr.VRAM[rip]
	mov	DWORD PTR [rax], -1660281084
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	movups	XMMWORD PTR 888[rbx], xmm0
	mov	QWORD PTR [rax], rcx
	mov	ecx, 3
	mov	BYTE PTR 2[rdx], 0
	lea	rdx, 60[rsp]
	mov	DWORD PTR 8[rax], 553582592
	mov	DWORD PTR 60[rsp], 0
	call	DmaSet
	mov	rdx, QWORD PTR .LC39[rip]
	mov	rsi, QWORD PTR .refptr.VRAM[rip]
	xor	r10d, r10d
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	r11d, 30
	mov	WORD PTR 210[rbx], r10w
	lea	rcx, 192[rbx]
	mov	WORD PTR 252[rbx], r11w
	movdqu	xmm0, XMMWORD PTR .LC40[rip]
	mov	QWORD PTR [rax], rdx
	mov	DWORD PTR 8[rax], 0
	lea	rax, 16384[rsi]
	mov	QWORD PTR 200[rbx], rax
	lea	rax, 63488[rsi]
	mov	QWORD PTR 216[rbx], rax
	xor	eax, eax
	mov	WORD PTR 258[rbx], ax
	mov	BYTE PTR 254[rbx], 0
	movups	XMMWORD PTR 236[rbx], xmm0
	call	DrawBackground
	xor	eax, eax
	mov	QWORD PTR 8[rbx], rsi
	mov	rcx, rbx
	mov	WORD PTR 18[rbx], ax
	mov	eax, 32
	add	rsi, 53248
	movdqu	xmm0, XMMWORD PTR .LC41[rip]
	mov	WORD PTR 60[rbx], ax
	mov	eax, 6
	mov	WORD PTR 66[rbx], ax
	mov	QWORD PTR 24[rbx], rsi
	mov	BYTE PTR 62[rbx], 0
	movups	XMMWORD PTR 44[rbx], xmm0
	call	DrawBackground
	mov	ecx, 1
	call	m4aSongNumStart
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	lea	rcx, 864[rbx]
	or	DWORD PTR [rax], 32768
	add	rsp, 72
	pop	rbx
	pop	rsi
	jmp	UpdateScreenFade
	.seh_endproc
	.p2align 4
	.globl	CreateTitleScreenAndSkipIntro
	.def	CreateTitleScreenAndSkipIntro;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateTitleScreenAndSkipIntro
CreateTitleScreenAndSkipIntro:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.REG_BASE[rip]
	xor	r9d, r9d
	mov	r8d, 4096
	lea	rcx, Task_ShowPressStartMenu[rip]
	movzx	eax, WORD PTR 296[rdx]
	or	ah, 64
	mov	WORD PTR 296[rdx], ax
	mov	edx, 5800
	mov	QWORD PTR 32[rsp], 0
	call	TaskCreate
	mov	rcx, QWORD PTR 24[rax]
	add	rsp, 56
	jmp	CreateTitleScreenWithoutIntro
	.seh_endproc
	.p2align 4
	.globl	CreateTitleScreenAtPlayModeMenu
	.def	CreateTitleScreenAtPlayModeMenu;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateTitleScreenAtPlayModeMenu
CreateTitleScreenAtPlayModeMenu:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.REG_BASE[rip]
	xor	r9d, r9d
	mov	r8d, 4096
	lea	rcx, Task_JumpToPlayModeMenu[rip]
	movzx	eax, WORD PTR 296[rdx]
	or	ah, 64
	mov	WORD PTR 296[rdx], ax
	mov	edx, 5800
	mov	QWORD PTR 32[rsp], 0
	call	TaskCreate
	mov	rcx, QWORD PTR 24[rax]
	add	rsp, 56
	jmp	CreateTitleScreenWithoutIntro
	.seh_endproc
	.p2align 4
	.globl	CreateTitleScreenAtSinglePlayerMenu
	.def	CreateTitleScreenAtSinglePlayerMenu;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateTitleScreenAtSinglePlayerMenu
CreateTitleScreenAtSinglePlayerMenu:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.REG_BASE[rip]
	xor	r9d, r9d
	mov	r8d, 4096
	lea	rcx, Task_JumpToSinglePlayerMenu[rip]
	movzx	eax, WORD PTR 296[rdx]
	or	ah, 64
	mov	WORD PTR 296[rdx], ax
	mov	edx, 5800
	mov	QWORD PTR 32[rsp], 0
	call	TaskCreate
	mov	rcx, QWORD PTR 24[rax]
	add	rsp, 56
	jmp	CreateTitleScreenWithoutIntro
	.seh_endproc
	.p2align 4
	.globl	sub_808D824
	.def	sub_808D824;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808D824
sub_808D824:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.REG_BASE[rip]
	xor	r9d, r9d
	mov	r8d, 4096
	lea	rcx, Task_ShowPressStartMenu[rip]
	movzx	eax, WORD PTR 296[rdx]
	or	ah, 64
	mov	WORD PTR 296[rdx], ax
	mov	edx, 5800
	mov	QWORD PTR 32[rsp], 0
	call	TaskCreate
	mov	rcx, QWORD PTR 24[rax]
	call	CreateTitleScreenWithoutIntro
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	add	rsp, 56
	jmp	TaskDestroy
	.seh_endproc
	.section .rdata,"dr"
	.align 32
sLensFlareStartPositions:
	.word	20
	.word	10
	.word	36
	.word	26
	.word	52
	.word	42
	.word	68
	.word	58
	.word	92
	.word	82
	.word	124
	.word	114
	.word	148
	.word	138
	.word	180
	.word	170
	.align 16
sLensFlareSizes:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	6
	.align 8
sBirdAnimModeSequence:
	.ascii "\1\1\0\1\0\0\1\1\0\0"
	.align 32
sMenuItemTransitionKeyFrames:
	.ascii "\1\2\3\4\5\6\10\12\13\15\16\20\20\20\20\20\20\20\20\4\4\4\4\4\4\4\4\4\4\3\3\3\3\3\3\3\2\2\2\2\2\1\1\1\1\1\0\1\0\1\0\0\1\0\0\1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
sPanUpNextVelocityChangeFrame:
	.ascii "<\23\12\12\377"
	.align 8
sWavesVerticalBrightnessGradiant:
	.ascii "\0\4\14\25\37"
	.ascii "0Ec\220\360"
	.align 32
sWavesBrightnessPalette:
	.word	0
	.word	32760
	.word	32764
	.word	32766
	.word	32767
	.word	32767
	.word	32767
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	32724
	.word	32761
	.word	32763
	.word	32767
	.word	32767
	.word	32767
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	32625
	.word	32725
	.word	32760
	.word	32765
	.word	32767
	.word	32767
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	32526
	.word	32626
	.word	32757
	.word	32762
	.word	32767
	.word	32767
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	32427
	.word	32527
	.word	32658
	.word	32759
	.word	32767
	.word	32767
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	32329
	.word	32429
	.word	32591
	.word	32757
	.word	32766
	.word	32767
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	32262
	.word	32362
	.word	32493
	.word	32690
	.word	32763
	.word	32767
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	32164
	.word	32296
	.word	32427
	.word	32624
	.word	32729
	.word	32767
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	30082
	.word	30182
	.word	30313
	.word	30510
	.word	31639
	.word	32767
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	32760
	.word	32764
	.word	32766
	.word	32767
	.word	32767
	.word	32767
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	32760
	.word	32764
	.word	32766
	.word	32767
	.word	32767
	.word	32767
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.align 32
sMenuTiles:
	.long	20
	.word	868
	.byte	5
	.space 1
	.long	20
	.word	868
	.byte	6
	.space 1
	.long	20
	.word	868
	.byte	1
	.space 1
	.long	20
	.word	868
	.byte	2
	.space 1
	.long	16
	.word	868
	.byte	3
	.space 1
	.long	28
	.word	868
	.byte	4
	.space 1
	.long	20
	.word	868
	.byte	5
	.space 1
	.long	20
	.word	868
	.byte	6
	.space 1
	.long	20
	.word	868
	.byte	1
	.space 1
	.long	20
	.word	868
	.byte	2
	.space 1
	.long	16
	.word	868
	.byte	3
	.space 1
	.long	28
	.word	868
	.byte	4
	.space 1
	.long	34
	.word	874
	.byte	5
	.space 1
	.long	32
	.word	874
	.byte	6
	.space 1
	.long	30
	.word	874
	.byte	1
	.space 1
	.long	32
	.word	874
	.byte	2
	.space 1
	.long	22
	.word	874
	.byte	3
	.space 1
	.long	44
	.word	874
	.byte	4
	.space 1
	.long	30
	.word	875
	.byte	5
	.space 1
	.long	34
	.word	875
	.byte	6
	.space 1
	.long	26
	.word	875
	.byte	1
	.space 1
	.long	28
	.word	875
	.byte	2
	.space 1
	.long	22
	.word	875
	.byte	3
	.space 1
	.long	46
	.word	875
	.byte	4
	.space 1
	.long	34
	.word	876
	.byte	5
	.space 1
	.long	26
	.word	876
	.byte	6
	.space 1
	.long	26
	.word	876
	.byte	1
	.space 1
	.long	28
	.word	876
	.byte	2
	.space 1
	.long	20
	.word	876
	.byte	3
	.space 1
	.long	44
	.word	876
	.byte	4
	.space 1
	.long	22
	.word	877
	.byte	5
	.space 1
	.long	30
	.word	877
	.byte	6
	.space 1
	.long	30
	.word	877
	.byte	1
	.space 1
	.long	38
	.word	877
	.byte	2
	.space 1
	.long	22
	.word	877
	.byte	3
	.space 1
	.long	38
	.word	877
	.byte	4
	.space 1
	.long	38
	.word	878
	.byte	5
	.space 1
	.long	38
	.word	878
	.byte	6
	.space 1
	.long	26
	.word	878
	.byte	1
	.space 1
	.long	40
	.word	878
	.byte	2
	.space 1
	.long	18
	.word	878
	.byte	3
	.space 1
	.long	38
	.word	878
	.byte	4
	.space 1
	.long	40
	.word	868
	.byte	7
	.space 1
	.globl	gPressStartTiles
	.align 32
gPressStartTiles:
	.long	46
	.word	868
	.byte	0
	.space 1
	.long	46
	.word	868
	.byte	0
	.space 1
	.long	38
	.word	874
	.byte	0
	.space 1
	.long	38
	.word	875
	.byte	0
	.space 1
	.long	46
	.word	876
	.byte	0
	.space 1
	.long	30
	.word	877
	.byte	0
	.space 1
	.long	30
	.word	878
	.byte	0
	.space 1
	.align 16
.LC0:
	.word	0
	.word	0
	.word	97
	.word	0
	.word	0
	.word	0
	.word	0
	.word	53
	.align 8
.LC6:
	.word	1
	.word	2
	.word	0
	.word	512
	.align 8
.LC9:
	.byte	0
	.byte	0
	.byte	-1
	.byte	32
	.byte	0
	.byte	0
	.byte	-1
	.byte	32
	.set	.LC10,.LC9
	.align 16
.LC12:
	.word	0
	.word	0
	.word	261
	.word	0
	.word	0
	.word	0
	.word	0
	.word	32
	.align 8
.LC19:
	.word	1
	.word	2
	.word	0
	.word	256
	.align 2
.LC23:
	.byte	1
	.byte	1
	.align 16
.LC25:
	.word	0
	.word	0
	.word	263
	.word	0
	.word	0
	.word	0
	.word	0
	.word	7
	.align 4
.LC27:
	.word	0
	.word	832
	.align 8
.LC30:
	.word	1
	.word	0
	.word	256
	.word	16383
	.align 8
.LC39:
	.word	0
	.word	0
	.word	8
	.word	512
	.align 16
.LC40:
	.word	0
	.word	0
	.word	96
	.word	0
	.word	0
	.word	0
	.word	0
	.word	53
	.align 16
.LC41:
	.word	0
	.word	0
	.word	262
	.word	0
	.word	0
	.word	0
	.word	0
	.word	32
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	DrawBackground;	.scl	2;	.type	32;	.endef
	.def	CreateDemoManager;	.scl	2;	.type	32;	.endef
	.def	ApplyGameStageSettings;	.scl	2;	.type	32;	.endef
	.def	GameStageStart;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	UpdateScreenFade;	.scl	2;	.type	32;	.endef
	.def	sub_8085654;	.scl	2;	.type	32;	.endef
	.def	TransformSprite;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	CpuFastSet;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	CreateUnusedLevelSelect;	.scl	2;	.type	32;	.endef
	.def	sub_8003EE4;	.scl	2;	.type	32;	.endef
	.def	CreateMultiplayerModeSelectScreen;	.scl	2;	.type	32;	.endef
	.def	CreateCharacterSelectionScreen;	.scl	2;	.type	32;	.endef
	.def	CreateTimeAttackModeSelectionScreen;	.scl	2;	.type	32;	.endef
	.def	CreateOptionsScreen;	.scl	2;	.type	32;	.endef
	.def	CreateNewProfileNameScreen;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayAllStop;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gBgPaletteEffects, "dr"
	.globl	.refptr.gBgPaletteEffects
	.linkonce	discard
.refptr.gBgPaletteEffects:
	.quad	gBgPaletteEffects
	.section	.rdata$.refptr.gRepeatedKeys, "dr"
	.globl	.refptr.gRepeatedKeys
	.linkonce	discard
.refptr.gRepeatedKeys:
	.quad	gRepeatedKeys
	.section	.rdata$.refptr.gPressedKeys, "dr"
	.globl	.refptr.gPressedKeys
	.linkonce	discard
.refptr.gPressedKeys:
	.quad	gPressedKeys
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
	.section	.rdata$.refptr.gBgAffineRegs, "dr"
	.globl	.refptr.gBgAffineRegs
	.linkonce	discard
.refptr.gBgAffineRegs:
	.quad	gBgAffineRegs
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
	.section	.rdata$.refptr.PLTT, "dr"
	.globl	.refptr.PLTT
	.linkonce	discard
.refptr.PLTT:
	.quad	PLTT
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
	.section	.rdata$.refptr.gBgCntRegs, "dr"
	.globl	.refptr.gBgCntRegs
	.linkonce	discard
.refptr.gBgCntRegs:
	.quad	gBgCntRegs
	.section	.rdata$.refptr.gLoadedSaveGame, "dr"
	.globl	.refptr.gLoadedSaveGame
	.linkonce	discard
.refptr.gLoadedSaveGame:
	.quad	gLoadedSaveGame
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gDemoPlayCounter, "dr"
	.globl	.refptr.gDemoPlayCounter
	.linkonce	discard
.refptr.gDemoPlayCounter:
	.quad	gDemoPlayCounter
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.gSelectedCharacter, "dr"
	.globl	.refptr.gSelectedCharacter
	.linkonce	discard
.refptr.gSelectedCharacter:
	.quad	gSelectedCharacter
	.section	.rdata$.refptr.gDemoRecordings, "dr"
	.globl	.refptr.gDemoRecordings
	.linkonce	discard
.refptr.gDemoRecordings:
	.quad	gDemoRecordings
	.section	.rdata$.refptr.gInputPlaybackData, "dr"
	.globl	.refptr.gInputPlaybackData
	.linkonce	discard
.refptr.gInputPlaybackData:
	.quad	gInputPlaybackData
	.section	.rdata$.refptr.gInputRecorder, "dr"
	.globl	.refptr.gInputRecorder
	.linkonce	discard
.refptr.gInputRecorder:
	.quad	gInputRecorder
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
	.section	.rdata$.refptr.gBgOffsetsHBlankPrimary, "dr"
	.globl	.refptr.gBgOffsetsHBlankPrimary
	.linkonce	discard
.refptr.gBgOffsetsHBlankPrimary:
	.quad	gBgOffsetsHBlankPrimary
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
	.section	.rdata$.refptr.BgPaletteEffectGradient, "dr"
	.globl	.refptr.BgPaletteEffectGradient
	.linkonce	discard
.refptr.BgPaletteEffectGradient:
	.quad	BgPaletteEffectGradient
	.section	.rdata$.refptr.gHBlankCallbacks, "dr"
	.globl	.refptr.gHBlankCallbacks
	.linkonce	discard
.refptr.gHBlankCallbacks:
	.quad	gHBlankCallbacks
	.section	.rdata$.refptr.gNumHBlankCallbacks, "dr"
	.globl	.refptr.gNumHBlankCallbacks
	.linkonce	discard
.refptr.gNumHBlankCallbacks:
	.quad	gNumHBlankCallbacks
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
	.section	.rdata$.refptr.gVBlankCallbacks, "dr"
	.globl	.refptr.gVBlankCallbacks
	.linkonce	discard
.refptr.gVBlankCallbacks:
	.quad	gVBlankCallbacks
	.section	.rdata$.refptr.gNumVBlankCallbacks, "dr"
	.globl	.refptr.gNumVBlankCallbacks
	.linkonce	discard
.refptr.gNumVBlankCallbacks:
	.quad	gNumVBlankCallbacks
	.section	.rdata$.refptr.gWinRegs, "dr"
	.globl	.refptr.gWinRegs
	.linkonce	discard
.refptr.gWinRegs:
	.quad	gWinRegs
	.section	.rdata$.refptr.gDispCnt, "dr"
	.globl	.refptr.gDispCnt
	.linkonce	discard
.refptr.gDispCnt:
	.quad	gDispCnt
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
