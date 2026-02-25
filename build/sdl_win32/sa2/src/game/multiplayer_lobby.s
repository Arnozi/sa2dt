	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	MultiplayerLobbyScreenOnDestroy;	.scl	3;	.type	32;	.endef
	.seh_proc	MultiplayerLobbyScreenOnDestroy
MultiplayerLobbyScreenOnDestroy:
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
	mov	rcx, QWORD PTR 136[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 200[rbx]
	add	rsp, 32
	pop	rbx
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	RenderUI;	.scl	3;	.type	32;	.endef
	.seh_proc	RenderUI
RenderUI:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	UpdateSpriteAnimation
	test	eax, eax
	jne	.L4
	cmp	BYTE PTR 365[rbx], 0
	jne	.L16
.L5:
	movzx	eax, BYTE PTR 48[rbx]
	cmp	al, 6
	je	.L17
	cmp	al, 4
	jne	.L4
	mov	BYTE PTR 48[rbx], 5
	.p2align 4,,10
	.p2align 3
.L4:
	mov	rcx, rbx
	call	DisplaySprite
	lea	rcx, 64[rbx]
	call	DisplaySprite
	movzx	eax, BYTE PTR 365[rbx]
	lea	rcx, 128[rbx]
	test	al, al
	jne	.L10
	movzx	edx, BYTE PTR 368[rbx]
	lea	r8, sShakeAnimPositions[rip]
	movsx	dx, BYTE PTR [r8+rdx]
	add	edx, 44
.L7:
	mov	WORD PTR 166[rbx], dx
	mov	edx, 190
	mov	BYTE PTR 181[rbx], al
	mov	WORD PTR 168[rbx], dx
	call	DisplaySprite
	movzx	edx, BYTE PTR 365[rbx]
	mov	eax, 378
	lea	rcx, 192[rbx]
	test	dl, dl
	je	.L8
	movzx	eax, BYTE PTR 368[rbx]
	lea	rdx, sShakeAnimPositions[rip]
	movsx	ax, BYTE PTR [rdx+rax]
	mov	edx, 15
	add	ax, 192
.L8:
	mov	WORD PTR 230[rbx], ax
	mov	eax, 190
	mov	WORD PTR 232[rbx], ax
	mov	BYTE PTR 245[rbx], dl
	call	DisplaySprite
	movzx	eax, BYTE PTR 368[rbx]
	test	al, al
	je	.L3
	sub	eax, 1
	mov	BYTE PTR 368[rbx], al
.L3:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L10:
	mov	eax, 1
	mov	edx, 75
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L16:
	cmp	WORD PTR 18[rbx], 1103
	jne	.L5
	mov	BYTE PTR 48[rbx], 1
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L17:
	mov	BYTE PTR 48[rbx], 3
	jmp	.L4
	.seh_endproc
	.p2align 4
	.def	Task_FadeInOrHandleExit;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_FadeInOrHandleExit
Task_FadeInOrHandleExit:
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
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	jbe	.L22
	mov	rax, QWORD PTR .refptr.gMultiplayerConnections[rip]
	movzx	r10d, BYTE PTR [rax]
	test	r10b, 1
	je	.L22
	mov	rax, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	xor	ecx, ecx
	mov	r8d, 1
	mov	r9d, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
.L25:
	mov	edx, r8d
	sal	edx, cl
	test	edx, r9d
	jne	.L23
	movzx	edx, BYTE PTR [rax]
	lea	r11d, 1[rdx]
	mov	BYTE PTR [rax], r11b
	cmp	dl, -76
	ja	.L47
.L24:
	add	ecx, 1
	cmp	ecx, 4
	je	.L22
	add	rax, 1
	bt	r10d, ecx
	jc	.L25
	.p2align 4,,10
	.p2align 3
.L22:
	cmp	BYTE PTR 364[rbx], 0
	je	.L48
	mov	rax, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	test	BYTE PTR [rax], -128
	je	.L26
	mov	rax, QWORD PTR .refptr.gMultiSioSend[rip]
	movzx	edx, BYTE PTR 365[rbx]
	mov	ecx, 16547
	mov	BYTE PTR 3[rax], 0
	mov	BYTE PTR 2[rax], dl
	mov	WORD PTR [rax], cx
.L26:
	movzx	eax, WORD PTR 366[rbx]
	test	ax, ax
	je	.L49
.L27:
	sub	eax, 1
	mov	edx, 120
	cmp	ax, dx
	cmova	eax, edx
	mov	WORD PTR 366[rbx], ax
.L29:
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	RenderUI
	.p2align 4,,10
	.p2align 3
.L48:
	mov	rax, QWORD PTR .refptr.gMultiSioSend[rip]
	movzx	edx, BYTE PTR 365[rbx]
	mov	BYTE PTR 2[rax], dl
	mov	edx, 16544
	mov	BYTE PTR 3[rax], 0
	mov	WORD PTR [rax], dx
	movzx	eax, WORD PTR 366[rbx]
	test	ax, ax
	jne	.L27
.L49:
	lea	rcx, 352[rbx]
	call	UpdateScreenFade
	cmp	al, 1
	jne	.L29
	cmp	BYTE PTR 364[rbx], 0
	mov	rcx, QWORD PTR [rsi]
	jne	.L50
	lea	rax, ScreenMain[rip]
	mov	QWORD PTR 40[rcx], rax
	mov	BYTE PTR 364[rbx], 1
	jmp	.L29
	.p2align 4,,10
	.p2align 3
.L23:
	mov	BYTE PTR [rax], 0
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L47:
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
	jmp	LinkCommunicationError
	.p2align 4,,10
	.p2align 3
.L50:
	call	TaskDestroy
	cmp	BYTE PTR 365[rbx], 0
	je	.L31
	mov	rax, QWORD PTR .refptr.gMultiSioEnabled[rip]
	mov	BYTE PTR [rax], 0
	call	MultiSioStop
	xor	ecx, ecx
	call	MultiSioInit
	call	CreateTitleScreenAndSkipIntro
	mov	rax, QWORD PTR .refptr.gMultiplayerPlayerTasks[rip]
	pxor	xmm0, xmm0
	movups	XMMWORD PTR [rax], xmm0
	movups	XMMWORD PTR 16[rax], xmm0
	mov	rax, QWORD PTR .refptr.gMultiplayerCharacters[rip]
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gMultiplayerRanks[rip]
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
	mov	DWORD PTR [rax], 0
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
.L31:
	mov	rax, QWORD PTR .refptr.gMultiplayerUnlockedCharacters[rip]
	xor	ecx, ecx
	movzx	edx, BYTE PTR [rax]
	and	edx, 16
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	CreateCharacterSelectionScreen
	.seh_endproc
	.p2align 4
	.def	Task_ListenForExit;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_ListenForExit
Task_ListenForExit:
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
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	mov	r10, QWORD PTR [rsi]
	cmp	BYTE PTR [rax], 2
	mov	rbx, QWORD PTR 24[r10]
	jbe	.L52
	mov	rax, QWORD PTR .refptr.gMultiplayerConnections[rip]
	movzx	r11d, BYTE PTR [rax]
	test	r11b, 1
	je	.L52
	mov	rax, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	xor	ecx, ecx
	mov	r8d, 1
	mov	r9d, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
.L55:
	mov	edx, r8d
	sal	edx, cl
	test	edx, r9d
	jne	.L53
	movzx	edx, BYTE PTR [rax]
	lea	edi, 1[rdx]
	mov	BYTE PTR [rax], dil
	cmp	dl, -76
	ja	.L67
.L54:
	add	ecx, 1
	cmp	ecx, 4
	je	.L52
	add	rax, 1
	bt	r11d, ecx
	jc	.L55
	.p2align 4,,10
	.p2align 3
.L52:
	mov	rax, QWORD PTR .refptr.gMultiSioRecv[rip]
	movzx	eax, WORD PTR [rax]
	lea	edx, -16544[rax]
	cmp	dx, 3
	jbe	.L56
	test	ax, ax
	jne	.L68
.L56:
	cmp	ax, 16547
	je	.L69
.L57:
	mov	rax, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	rcx, rbx
	mov	DWORD PTR [rax], 16546
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	RenderUI
	.p2align 4,,10
	.p2align 3
.L53:
	mov	BYTE PTR [rax], 0
	jmp	.L54
	.p2align 4,,10
	.p2align 3
.L68:
	mov	rcx, r10
	call	TaskDestroy
	nop
.L66:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	LinkCommunicationError
	.p2align 4,,10
	.p2align 3
.L69:
	cmp	BYTE PTR 365[rbx], 0
	jne	.L70
	xor	eax, eax
	mov	edx, 512
	xor	ecx, ecx
	mov	DWORD PTR 354[rbx], 1
	mov	WORD PTR 366[rbx], ax
	lea	rax, Task_FadeInOrHandleExit[rip]
	mov	WORD PTR 358[rbx], dx
	mov	WORD PTR 362[rbx], cx
	mov	QWORD PTR 40[r10], rax
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L70:
	xor	r8d, r8d
	mov	r9d, 256
	mov	r10d, 120
	mov	DWORD PTR 354[rbx], 1
	mov	WORD PTR 362[rbx], r8w
	mov	ecx, 64
	mov	edi, -256
	mov	WORD PTR 358[rbx], r9w
	mov	WORD PTR 366[rbx], r10w
	call	m4aSongNumStop
	mov	ecx, 412
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rsi]
	mov	r11d, 1103
	lea	rsi, Task_FadeInOrHandleExit[rip]
	mov	WORD PTR 18[rbx], r11w
	mov	WORD PTR 48[rbx], di
	mov	QWORD PTR 40[rax], rsi
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L67:
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
	jmp	.L66
	.seh_endproc
	.p2align 4
	.def	ScreenMain;	.scl	3;	.type	32;	.endef
	.seh_proc	ScreenMain
ScreenMain:
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
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	mov	r11, QWORD PTR [rdi]
	cmp	BYTE PTR [rax], 2
	mov	rbx, QWORD PTR 24[r11]
	jbe	.L75
	mov	rax, QWORD PTR .refptr.gMultiplayerConnections[rip]
	movzx	r10d, BYTE PTR [rax]
	test	r10b, 1
	je	.L75
	mov	rax, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	xor	ecx, ecx
	mov	r8d, 1
	mov	r9d, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
.L78:
	mov	edx, r8d
	sal	edx, cl
	test	edx, r9d
	jne	.L76
	movzx	edx, BYTE PTR [rax]
	lea	esi, 1[rdx]
	mov	BYTE PTR [rax], sil
	cmp	dl, -76
	ja	.L116
.L77:
	add	ecx, 1
	cmp	ecx, 4
	je	.L75
	add	rax, 1
	bt	r10d, ecx
	jc	.L78
	.p2align 4,,10
	.p2align 3
.L75:
	mov	rsi, QWORD PTR .refptr.gMultiSioRecv[rip]
	movzx	eax, WORD PTR [rsi]
	lea	edx, -16544[rax]
	test	ax, ax
	je	.L73
	cmp	dx, 3
	ja	.L117
.L73:
	mov	r12, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	test	BYTE PTR [r12], -128
	je	.L79
	mov	rbp, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	eax, 16544
	mov	BYTE PTR 3[rbp], 0
	mov	WORD PTR 0[rbp], ax
.L80:
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	movzx	eax, WORD PTR [rax]
	test	al, 9
	jne	.L118
	test	al, 32
	je	.L90
	mov	DWORD PTR 365[rbx], 117440512
	cmp	BYTE PTR 48[rbx], 3
	je	.L92
	mov	r9d, 1104
	mov	r10d, -250
	mov	WORD PTR 18[rbx], r9w
	mov	WORD PTR 48[rbx], r10w
.L92:
	mov	ecx, 108
	mov	BYTE PTR 3[rbp], 1
	call	m4aSongNumStart
.L82:
	movzx	eax, BYTE PTR 365[rbx]
	mov	BYTE PTR 2[rbp], al
	movzx	eax, WORD PTR [rsi]
	lea	edx, -16544[rax]
	cmp	dx, 3
	jbe	.L94
	test	ax, ax
	je	.L94
	mov	rcx, QWORD PTR [rdi]
	jmp	.L115
	.p2align 4,,10
	.p2align 3
.L76:
	mov	BYTE PTR [rax], 0
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L79:
	cmp	dx, 1
	ja	.L83
	movzx	eax, BYTE PTR 2[rsi]
	cmp	BYTE PTR 3[rsi], 0
	mov	BYTE PTR 365[rbx], al
	jne	.L119
.L83:
	mov	rbp, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	BYTE PTR 3[rbp], 0
	mov	WORD PTR 0[rbp], 16544
	jmp	.L82
	.p2align 4,,10
	.p2align 3
.L117:
	mov	rcx, r11
.L115:
	call	TaskDestroy
	nop
.L114:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	LinkCommunicationError
	.p2align 4,,10
	.p2align 3
.L118:
	mov	r11d, 16545
	mov	WORD PTR 0[rbp], r11w
	jmp	.L82
	.p2align 4,,10
	.p2align 3
.L94:
	cmp	ax, 16545
	je	.L120
	movzx	eax, WORD PTR 366[rbx]
	add	eax, 1
	mov	WORD PTR 366[rbx], ax
	cmp	ax, 600
	jne	.L99
	mov	BYTE PTR 48[rbx], 1
.L99:
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	RenderUI
	.p2align 4,,10
	.p2align 3
.L120:
	cmp	BYTE PTR 2[rsi], 1
	jbe	.L96
	mov	BYTE PTR 2[rsi], 1
.L96:
	mov	ecx, 106
	call	m4aSongNumStart
	xor	edx, edx
	mov	rax, QWORD PTR [rdi]
	mov	WORD PTR 366[rbx], dx
	test	BYTE PTR [r12], -128
	je	.L97
	lea	rdi, Task_NotifyExit[rip]
	mov	QWORD PTR 40[rax], rdi
.L98:
	mov	eax, 1
	mov	WORD PTR 366[rbx], ax
	jmp	.L99
	.p2align 4,,10
	.p2align 3
.L90:
	test	al, 16
	je	.L82
	mov	DWORD PTR 365[rbx], 117440513
	cmp	BYTE PTR 48[rbx], 5
	je	.L92
	mov	ecx, 1104
	mov	r8d, -252
	mov	WORD PTR 18[rbx], cx
	mov	WORD PTR 48[rbx], r8w
	jmp	.L92
	.p2align 4,,10
	.p2align 3
.L97:
	lea	rdi, Task_ListenForExit[rip]
	mov	QWORD PTR 40[rax], rdi
	jmp	.L98
	.p2align 4,,10
	.p2align 3
.L119:
	xor	r11d, r11d
	mov	BYTE PTR 368[rbx], 7
	mov	ecx, 108
	mov	WORD PTR 366[rbx], r11w
	call	m4aSongNumStart
	cmp	BYTE PTR 365[rbx], 0
	mov	eax, DWORD PTR [r12]
	je	.L84
	cmp	BYTE PTR 48[rbx], 5
	je	.L88
	mov	r9d, 1104
	mov	r10d, -252
	mov	WORD PTR 18[rbx], r9w
	mov	WORD PTR 48[rbx], r10w
.L88:
	mov	rbp, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	edx, 16544
	and	eax, 128
	mov	BYTE PTR 3[rbp], 0
	mov	WORD PTR 0[rbp], dx
	test	eax, eax
	je	.L82
	jmp	.L80
	.p2align 4,,10
	.p2align 3
.L116:
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
	jmp	.L114
.L84:
	cmp	BYTE PTR 48[rbx], 3
	je	.L88
	mov	ecx, 1104
	mov	r8d, -250
	mov	WORD PTR 18[rbx], cx
	mov	WORD PTR 48[rbx], r8w
	jmp	.L88
	.seh_endproc
	.p2align 4
	.def	Task_NotifyExit;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_NotifyExit
Task_NotifyExit:
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
	mov	rax, QWORD PTR .refptr.gMultiplayerConnections[rip]
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	movzx	r9d, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	mov	r10, QWORD PTR [rsi]
	cmp	BYTE PTR [rax], 2
	mov	r8d, r9d
	mov	rbx, QWORD PTR 24[r10]
	jbe	.L124
	test	r9b, 1
	je	.L124
	mov	rax, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	xor	ecx, ecx
	mov	r11d, 1
	mov	edi, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
.L127:
	mov	edx, r11d
	sal	edx, cl
	test	edx, edi
	jne	.L125
	movzx	edx, BYTE PTR [rax]
	lea	ebp, 1[rdx]
	mov	BYTE PTR [rax], bpl
	cmp	dl, -76
	ja	.L147
.L126:
	add	ecx, 1
	cmp	ecx, 4
	je	.L124
	add	rax, 1
	bt	r9d, ecx
	jc	.L127
	.p2align 4,,10
	.p2align 3
.L124:
	mov	rdx, QWORD PTR .refptr.gMultiSioRecv[rip]
	mov	eax, 1
.L123:
	bt	r9d, eax
	jc	.L148
.L128:
	add	rax, 1
	add	rdx, 20
	cmp	rax, 4
	jne	.L123
	movzx	edx, BYTE PTR 365[rbx]
	mov	rax, QWORD PTR .refptr.gMultiSioSend[rip]
	shr	r8b
	cmp	BYTE PTR 369[rbx], r8b
	je	.L149
	mov	BYTE PTR 2[rax], dl
	mov	rcx, rbx
	mov	edx, 16545
	mov	BYTE PTR 3[rax], 0
	mov	WORD PTR [rax], dx
	call	RenderUI
	movzx	eax, WORD PTR 366[rbx]
	add	eax, 1
	mov	WORD PTR 366[rbx], ax
	cmp	ax, 8
	ja	.L150
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L148:
	movzx	ecx, WORD PTR 20[rdx]
	lea	r11d, -16544[rcx]
	cmp	r11w, 3
	jbe	.L129
	test	cx, cx
	jne	.L151
.L129:
	cmp	cx, 16546
	jne	.L128
	lea	ecx, -1[rax]
	mov	r11d, 1
	sal	r11d, cl
	or	BYTE PTR 369[rbx], r11b
	jmp	.L128
	.p2align 4,,10
	.p2align 3
.L151:
	mov	rcx, r10
.L146:
	call	TaskDestroy
	nop
.L145:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	LinkCommunicationError
	.p2align 4,,10
	.p2align 3
.L125:
	mov	BYTE PTR [rax], 0
	jmp	.L126
	.p2align 4,,10
	.p2align 3
.L149:
	mov	ecx, 16547
	mov	BYTE PTR 3[rax], 0
	mov	BYTE PTR 2[rax], dl
	mov	WORD PTR [rax], cx
	test	dl, dl
	jne	.L152
	xor	ecx, ecx
	mov	r8d, 512
	xor	r9d, r9d
	mov	DWORD PTR 354[rbx], 1
	mov	WORD PTR 366[rbx], cx
	lea	rax, Task_FadeInOrHandleExit[rip]
	mov	rcx, rbx
	mov	WORD PTR 358[rbx], r8w
	mov	WORD PTR 362[rbx], r9w
	mov	QWORD PTR 40[r10], rax
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	RenderUI
	.p2align 4,,10
	.p2align 3
.L150:
	mov	rcx, QWORD PTR [rsi]
	jmp	.L146
	.p2align 4,,10
	.p2align 3
.L152:
	xor	r10d, r10d
	mov	r11d, 256
	mov	edi, 120
	mov	DWORD PTR 354[rbx], 1
	mov	WORD PTR 362[rbx], r10w
	mov	ecx, 64
	mov	ebp, 1103
	mov	WORD PTR 358[rbx], r11w
	mov	WORD PTR 366[rbx], di
	lea	rdi, Task_FadeInOrHandleExit[rip]
	call	m4aSongNumStop
	mov	ecx, 412
	call	m4aSongNumStart
	mov	eax, -256
	mov	rcx, rbx
	mov	WORD PTR 18[rbx], bp
	mov	WORD PTR 48[rbx], ax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	RenderUI
.L147:
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
	jmp	.L145
	.seh_endproc
	.p2align 4
	.globl	CreateMultiplayerLobbyScreen
	.def	CreateMultiplayerLobbyScreen;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateMultiplayerLobbyScreen
CreateMultiplayerLobbyScreen:
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
	lea	rax, MultiplayerLobbyScreenOnDestroy[rip]
	xor	r9d, r9d
	mov	edx, 376
	mov	r8d, 4096
	lea	rcx, Task_FadeInOrHandleExit[rip]
	mov	r12d, 20
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	xor	r9d, r9d
	mov	r10d, 4417
	mov	r11d, 7681
	mov	rsi, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rcx, QWORD PTR .LC9[rip]
	movdqu	xmm0, XMMWORD PTR .LC11[rip]
	mov	rax, QWORD PTR [rax]
	mov	WORD PTR 368[rsi], r9w
	mov	DWORD PTR 364[rsi], 0
	mov	rdx, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	movzx	ebx, BYTE PTR 6[rax]
	xor	eax, eax
	mov	WORD PTR 316[rsi], r12w
	mov	BYTE PTR 318[rsi], 0
	sub	ebx, 1
	movups	XMMWORD PTR 300[rsi], xmm0
	test	bl, bl
	mov	BYTE PTR 2[rdx], 0
	cmovs	ebx, eax
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	xor	ebp, ebp
	xor	edi, edi
	mov	WORD PTR 274[rsi], bp
	lea	rbp, 256[rsi]
	mov	WORD PTR [rax], r10w
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	movsx	rbx, bl
	mov	WORD PTR [rdx], di
	mov	WORD PTR [rax], r11w
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	mov	QWORD PTR [rax], rcx
	mov	rcx, rbp
	mov	DWORD PTR 8[rax], 553582592
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	QWORD PTR [rax], 0
	mov	DWORD PTR 8[rax], 0
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	QWORD PTR 264[rsi], rax
	add	rax, 61440
	mov	QWORD PTR 280[rsi], rax
	xor	eax, eax
	mov	WORD PTR 322[rsi], ax
	call	DrawBackground
	mov	ecx, 56
	call	VramMalloc
	mov	DWORD PTR 16[rsi], 72351744
	mov	rcx, rsi
	mov	QWORD PTR 8[rsi], rax
	mov	eax, -253
	mov	WORD PTR 48[rsi], ax
	movabs	rax, 59954170039373824
	mov	QWORD PTR 32[rsi], rax
	xor	eax, eax
	mov	BYTE PTR 50[rsi], 16
	mov	BYTE PTR 53[rsi], 0
	mov	DWORD PTR 40[rsi], 12583102
	mov	WORD PTR 44[rsi], ax
	call	UpdateSpriteAnimation
	lea	rdx, [rbx+rbx*2]
	lea	rbx, 64[rsi]
	mov	r12d, DWORD PTR .LC14[rip]
	lea	rax, sUiText[rip]
	lea	rdi, [rax+rdx*8]
.L154:
	mov	ecx, DWORD PTR [rdi]
	add	rdi, 8
	call	VramMalloc
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	QWORD PTR 8[rbx], rax
	movzx	eax, WORD PTR -4[rdi]
	mov	WORD PTR 18[rbx], ax
	movzx	eax, BYTE PTR -2[rdi]
	mov	WORD PTR 36[rbx], cx
	mov	rcx, rbx
	add	rbx, 64
	mov	BYTE PTR -16[rbx], al
	mov	eax, 256
	mov	BYTE PTR -15[rbx], -1
	mov	DWORD PTR -26[rbx], r12d
	mov	WORD PTR -22[rbx], ax
	mov	WORD PTR -48[rbx], dx
	mov	WORD PTR -20[rbx], r8w
	mov	BYTE PTR -14[rbx], 16
	mov	BYTE PTR -11[rbx], 0
	mov	DWORD PTR -32[rbx], 0
	call	UpdateSpriteAnimation
	cmp	rbp, rbx
	jne	.L154
	mov	rax, QWORD PTR .LC15[rip]
	lea	rcx, 352[rsi]
	mov	DWORD PTR 360[rsi], 16383
	mov	QWORD PTR 352[rsi], rax
	call	UpdateScreenFade
	mov	ecx, 64
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	m4aSongNumStart
	.seh_endproc
	.section .rdata,"dr"
	.align 8
sShakeAnimPositions:
	.ascii "\0\2\4\3\0\376\374\375"
	.align 32
sUiText:
	.long	57
	.word	1074
	.byte	2
	.space 1
	.long	12
	.word	1074
	.byte	17
	.space 1
	.long	18
	.word	1074
	.byte	18
	.space 1
	.long	48
	.word	1079
	.byte	2
	.space 1
	.long	10
	.word	1079
	.byte	6
	.space 1
	.long	10
	.word	1079
	.byte	7
	.space 1
	.long	69
	.word	1080
	.byte	2
	.space 1
	.long	15
	.word	1080
	.byte	6
	.space 1
	.long	21
	.word	1080
	.byte	7
	.space 1
	.long	39
	.word	1081
	.byte	2
	.space 1
	.long	18
	.word	1081
	.byte	6
	.space 1
	.long	18
	.word	1081
	.byte	7
	.space 1
	.long	69
	.word	1082
	.byte	2
	.space 1
	.long	9
	.word	1082
	.byte	6
	.space 1
	.long	15
	.word	1082
	.byte	7
	.space 1
	.long	69
	.word	1083
	.byte	2
	.space 1
	.long	9
	.word	1083
	.byte	6
	.space 1
	.long	15
	.word	1083
	.byte	7
	.space 1
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
	.align 16
.LC11:
	.word	0
	.word	0
	.word	115
	.word	0
	.word	0
	.word	0
	.word	0
	.word	32
	.align 4
.LC14:
	.word	213
	.word	56
	.align 8
.LC15:
	.word	1
	.word	2
	.word	0
	.word	512
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	UpdateScreenFade;	.scl	2;	.type	32;	.endef
	.def	TasksDestroyInPriorityRange;	.scl	2;	.type	32;	.endef
	.def	LinkCommunicationError;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	MultiSioStop;	.scl	2;	.type	32;	.endef
	.def	MultiSioInit;	.scl	2;	.type	32;	.endef
	.def	CreateTitleScreenAndSkipIntro;	.scl	2;	.type	32;	.endef
	.def	CreateCharacterSelectionScreen;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStop;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	DrawBackground;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr.gDispCnt, "dr"
	.globl	.refptr.gDispCnt
	.linkonce	discard
.refptr.gDispCnt:
	.quad	gDispCnt
	.section	.rdata$.refptr.gLoadedSaveGame, "dr"
	.globl	.refptr.gLoadedSaveGame
	.linkonce	discard
.refptr.gLoadedSaveGame:
	.quad	gLoadedSaveGame
	.section	.rdata$.refptr.gPressedKeys, "dr"
	.globl	.refptr.gPressedKeys
	.linkonce	discard
.refptr.gPressedKeys:
	.quad	gPressedKeys
	.section	.rdata$.refptr.gMultiSioRecv, "dr"
	.globl	.refptr.gMultiSioRecv
	.linkonce	discard
.refptr.gMultiSioRecv:
	.quad	gMultiSioRecv
	.section	.rdata$.refptr.gMultiplayerUnlockedCharacters, "dr"
	.globl	.refptr.gMultiplayerUnlockedCharacters
	.linkonce	discard
.refptr.gMultiplayerUnlockedCharacters:
	.quad	gMultiplayerUnlockedCharacters
	.section	.rdata$.refptr.gMultiplayerRanks, "dr"
	.globl	.refptr.gMultiplayerRanks
	.linkonce	discard
.refptr.gMultiplayerRanks:
	.quad	gMultiplayerRanks
	.section	.rdata$.refptr.gMultiplayerCharacters, "dr"
	.globl	.refptr.gMultiplayerCharacters
	.linkonce	discard
.refptr.gMultiplayerCharacters:
	.quad	gMultiplayerCharacters
	.section	.rdata$.refptr.gMultiplayerPlayerTasks, "dr"
	.globl	.refptr.gMultiplayerPlayerTasks
	.linkonce	discard
.refptr.gMultiplayerPlayerTasks:
	.quad	gMultiplayerPlayerTasks
	.section	.rdata$.refptr.gMultiSioEnabled, "dr"
	.globl	.refptr.gMultiSioEnabled
	.linkonce	discard
.refptr.gMultiSioEnabled:
	.quad	gMultiSioEnabled
	.section	.rdata$.refptr.gMultiSioSend, "dr"
	.globl	.refptr.gMultiSioSend
	.linkonce	discard
.refptr.gMultiSioSend:
	.quad	gMultiSioSend
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
	.section	.rdata$.refptr.gMultiplayerMissingHeartbeats, "dr"
	.globl	.refptr.gMultiplayerMissingHeartbeats
	.linkonce	discard
.refptr.gMultiplayerMissingHeartbeats:
	.quad	gMultiplayerMissingHeartbeats
	.section	.rdata$.refptr.gMultiSioStatusFlags, "dr"
	.globl	.refptr.gMultiSioStatusFlags
	.linkonce	discard
.refptr.gMultiSioStatusFlags:
	.quad	gMultiSioStatusFlags
	.section	.rdata$.refptr.gMultiplayerConnections, "dr"
	.globl	.refptr.gMultiplayerConnections
	.linkonce	discard
.refptr.gMultiplayerConnections:
	.quad	gMultiplayerConnections
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
