	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	CharacterSelectScreenOnDestroy;	.scl	3;	.type	32;	.endef
	.seh_proc	CharacterSelectScreenOnDestroy
CharacterSelectScreenOnDestroy:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rsi, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 440[rsi]
	lea	rbx, 664[rsi]
	lea	rdi, 984[rsi]
	call	VramFree
	mov	rcx, QWORD PTR 504[rsi]
	call	VramFree
	mov	rcx, QWORD PTR 584[rsi]
	call	VramFree
	mov	rcx, QWORD PTR 312[rsi]
	call	VramFree
	.p2align 4,,10
	.p2align 3
.L2:
	mov	rcx, QWORD PTR [rbx]
	add	rbx, 64
	call	VramFree
	cmp	rbx, rdi
	jne	.L2
	mov	rcx, QWORD PTR 984[rsi]
	call	VramFree
	mov	rcx, QWORD PTR 1064[rsi]
	call	VramFree
	mov	rcx, QWORD PTR 1128[rsi]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	Task_FadeInAndStartRollInAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_FadeInAndStartRollInAnim
Task_FadeInAndStartRollInAnim:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rdx]
	mov	eax, DWORD PTR 1332[rbx]
	add	eax, 1
	cmp	eax, 23
	ja	.L6
	mov	DWORD PTR 1332[rbx], eax
.L7:
	mov	rcx, rbx
	call	UpdateScreenFade
	lea	rcx, 1056[rbx]
	call	DisplaySprite
	lea	rcx, 1120[rbx]
	call	DisplaySprite
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	movd	xmm1, DWORD PTR .LC0[rip]
	movd	xmm2, DWORD PTR .LC1[rip]
	movd	xmm0, DWORD PTR 8[rdx]
	movzx	eax, WORD PTR 2[rdx]
	paddw	xmm0, xmm1
	sub	eax, 1
	and	ax, 255
	mov	WORD PTR 2[rdx], ax
	pand	xmm0, xmm2
	movd	DWORD PTR 8[rdx], xmm0
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	lea	rax, Task_RollInAnim[rip]
	mov	DWORD PTR 1332[rbx], 0
	mov	QWORD PTR 40[rdx], rax
	jmp	.L7
	.seh_endproc
	.p2align 4
	.def	RenderUI;	.scl	3;	.type	32;	.endef
	.seh_proc	RenderUI
RenderUI:
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
	cmp	BYTE PTR 1315[rcx], 0
	mov	rbx, rcx
	je	.L9
	mov	rsi, QWORD PTR .refptr.gSineTable[rip]
	xor	r12d, r12d
	xor	ebp, ebp
	mov	edi, -51
	.p2align 4,,10
	.p2align 3
.L12:
	mov	eax, ebp
	mul	dil
	shr	ax, 10
	neg	eax
	and	eax, -5
	add	eax, ebp
	cmp	BYTE PTR 1313[rbx], al
	jne	.L10
	cmp	BYTE PTR 1316[rbx], 12
	ja	.L11
.L10:
	mov	edx, DWORD PTR 1336[rbx]
	movzx	ecx, al
	movzx	eax, al
	sal	rcx, 6
	sal	rax, 6
	shr	edx, 8
	add	rcx, rbx
	lea	r8d, 2[r12+rdx]
	and	r8d, 1023
	lea	edx, 256[r8]
	movsx	edx, WORD PTR [rsi+rdx*2]
	imul	edx, edx, 92
	sar	edx, 14
	add	edx, 10
	mov	WORD PTR 694[rcx], dx
	movsx	edx, WORD PTR [rsi+r8*2]
	imul	edx, edx, 92
	sar	edx, 14
	add	edx, 80
	mov	WORD PTR 696[rcx], dx
	lea	rcx, 656[rbx+rax]
	call	DisplaySprite
.L11:
	add	ebp, 1
	add	r12d, 102
	cmp	bpl, 10
	jne	.L12
	movzx	eax, BYTE PTR 1317[rbx]
	test	al, al
	jne	.L28
.L17:
	lea	rsi, 368[rbx]
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	cmp	BYTE PTR 1313[rbx], 1
	je	.L29
.L18:
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	jbe	.L19
	movzx	ecx, BYTE PTR 1313[rbx]
	mov	eax, 1
	sal	eax, cl
	and	eax, DWORD PTR 1340[rbx]
	jne	.L30
.L19:
	lea	rcx, 432[rbx]
	lea	rsi, 1056[rbx]
	call	DisplaySprite
	lea	rcx, 304[rbx]
	call	DisplaySprite
	lea	rcx, 496[rbx]
	call	DisplaySprite
	lea	rcx, 576[rbx]
	add	rbx, 1120
	call	DisplaySprite
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L9:
	mov	eax, DWORD PTR 1336[rcx]
	mov	rsi, QWORD PTR .refptr.gSineTable[rip]
	mov	edi, 2
	shr	eax, 8
	add	ax, 816
	and	eax, 1023
	lea	ebp, 4[rax]
	.p2align 4,,10
	.p2align 3
.L16:
	mov	eax, edi
	movzx	edx, BYTE PTR 1313[rbx]
	and	eax, 3
	cmp	edx, eax
	jne	.L14
	cmp	BYTE PTR 1316[rbx], 12
	ja	.L15
.L14:
	mov	ecx, ebp
	mov	edx, eax
	and	ecx, 1023
	sal	rdx, 6
	lea	eax, 256[rcx]
	lea	r8, [rbx+rdx]
	movsx	eax, WORD PTR [rsi+rax*2]
	imul	eax, eax, 92
	sar	eax, 14
	add	eax, 10
	mov	WORD PTR 694[r8], ax
	movsx	eax, WORD PTR [rsi+rcx*2]
	lea	rcx, 656[rbx+rdx]
	imul	eax, eax, 92
	sar	eax, 14
	add	eax, 80
	mov	WORD PTR 696[r8], ax
	call	DisplaySprite
.L15:
	add	edi, 1
	add	ebp, 102
	cmp	edi, 10
	jne	.L16
	movzx	eax, BYTE PTR 1317[rbx]
	test	al, al
	je	.L17
.L28:
	movzx	edi, BYTE PTR 1313[rbx]
	add	eax, 16
	mov	ecx, DWORD PTR .LC2[rip]
	mov	BYTE PTR 1025[rbx], -1
	sal	eax, 4
	lea	rsi, 976[rbx]
	lea	edx, 5[rdi]
	and	eax, 1008
	mov	DWORD PTR 1014[rbx], ecx
	mov	BYTE PTR 1024[rbx], dl
	xor	edx, edx
	mov	WORD PTR 1040[rbx], dx
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	mov	DWORD PTR 1046[rbx], ecx
	movsx	ax, BYTE PTR 1[rdx+rax*2]
	mov	rdx, QWORD PTR .refptr.gOamMatrixIndex[rip]
	add	ax, 192
	movd	xmm0, eax
	movzx	eax, BYTE PTR [rdx]
	pshuflw	xmm0, xmm0, 0
	lea	ecx, 1[rax]
	or	eax, 96
	movd	DWORD PTR 1042[rbx], xmm0
	movzx	eax, al
	mov	BYTE PTR [rdx], cl
	mov	rcx, rsi
	mov	DWORD PTR 1008[rbx], eax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	lea	rdx, 1040[rbx]
	call	TransformSprite
	mov	rcx, rsi
	call	DisplaySprite
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L29:
	lea	rsi, 1184[rbx]
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L30:
	lea	rcx, 1248[rbx]
	call	DisplaySprite
	jmp	.L19
	.seh_endproc
	.p2align 4
	.def	Task_SelectionCompleteFadeOutAndExit;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_SelectionCompleteFadeOutAndExit
Task_SelectionCompleteFadeOutAndExit:
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
	mov	rsi, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR [rdi]
	cmp	BYTE PTR [rsi], 2
	mov	rbx, QWORD PTR 24[rax]
	jbe	.L42
	mov	rax, QWORD PTR .refptr.gMultiplayerConnections[rip]
	movzx	r9d, BYTE PTR [rax]
	test	r9b, 1
	je	.L39
	mov	rax, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	xor	ecx, ecx
	mov	r8d, 1
	mov	r10d, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
.L40:
	mov	edx, r8d
	sal	edx, cl
	test	edx, r10d
	jne	.L37
	movzx	edx, BYTE PTR [rax]
	lea	r11d, 1[rdx]
	mov	BYTE PTR [rax], r11b
	cmp	dl, -76
	ja	.L67
.L38:
	add	ecx, 1
	cmp	ecx, 4
	je	.L39
	add	rax, 1
	bt	r9d, ecx
	jc	.L40
	.p2align 4,,10
	.p2align 3
.L39:
	mov	r8, QWORD PTR .refptr.gMultiSioRecv[rip]
	mov	r10, QWORD PTR .refptr.REG_BASE[rip]
	xor	edx, edx
	mov	DWORD PTR 1340[rbx], 0
.L36:
	movzx	eax, BYTE PTR 296[r10]
	shr	al, 4
	and	eax, 3
	cmp	al, dl
	je	.L41
	bt	r9d, edx
	jnc	.L41
	cmp	WORD PTR [r8], 16416
	jbe	.L41
	movzx	ecx, BYTE PTR 2[r8]
	mov	eax, 1
	sal	eax, cl
	or	DWORD PTR 1340[rbx], eax
	.p2align 4,,10
	.p2align 3
.L41:
	add	rdx, 1
	add	r8, 20
	cmp	rdx, 4
	jne	.L36
.L42:
	mov	eax, DWORD PTR 1332[rbx]
	lea	edx, 1[rax]
	movzx	eax, BYTE PTR 1317[rbx]
	mov	DWORD PTR 1332[rbx], edx
	and	eax, 63
	add	eax, 1
	mov	BYTE PTR 1317[rbx], al
	movzx	eax, BYTE PTR 1318[rbx]
	test	al, al
	je	.L43
	sub	eax, 1
	mov	BYTE PTR 1318[rbx], al
	test	al, al
	jne	.L43
	mov	r8d, 738
	mov	r9d, -256
	mov	WORD PTR 1074[rbx], r8w
	mov	WORD PTR 1104[rbx], r9w
.L43:
	movzx	eax, BYTE PTR 1319[rbx]
	test	al, al
	je	.L45
	sub	eax, 1
	mov	BYTE PTR 1319[rbx], al
	test	al, al
	jne	.L45
	mov	eax, 738
	mov	ecx, -256
	mov	WORD PTR 1138[rbx], ax
	mov	WORD PTR 1168[rbx], cx
.L45:
	movzx	eax, BYTE PTR 1313[rbx]
	lea	rcx, sCharacterChosenAnimLengths[rip]
	movzx	eax, BYTE PTR [rcx+rax]
	cmp	edx, eax
	jb	.L47
	mov	rcx, rbx
	call	UpdateScreenFade
	cmp	al, 1
	je	.L68
.L47:
	mov	rcx, rbx
	call	RenderUI
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	movd	xmm1, DWORD PTR .LC0[rip]
	movd	xmm2, DWORD PTR .LC1[rip]
	movd	xmm0, DWORD PTR 8[rdx]
	movzx	eax, WORD PTR 2[rdx]
	paddw	xmm0, xmm1
	sub	eax, 1
	and	ax, 255
	mov	WORD PTR 2[rdx], ax
	pand	xmm0, xmm2
	movd	DWORD PTR 8[rdx], xmm0
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L37:
	mov	BYTE PTR [rax], 0
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L68:
	mov	rcx, QWORD PTR [rdi]
	call	TaskDestroy
	movzx	eax, BYTE PTR [rsi]
	cmp	al, 2
	ja	.L69
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	movsx	edx, BYTE PTR [rdx]
	mov	ecx, edx
	test	al, al
	jne	.L70
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	movsx	rdx, edx
	mov	rax, QWORD PTR [rax]
	movzx	edx, BYTE PTR 7[rax+rdx]
	cmp	dl, 2
	jbe	.L71
	cmp	BYTE PTR 26[rax], 1
	jne	.L51
	mov	r8d, 2
	test	cl, cl
	je	.L66
.L51:
	xor	r8d, r8d
.L66:
	xor	ecx, ecx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	CreateCourseSelectionScreen
.L71:
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	BYTE PTR [rax], 0
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	GameStageStart
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
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	LinkCommunicationError
.L69:
	xor	ecx, ecx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	CreateMultiplayerResultsScreen
.L70:
	movzx	ecx, al
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	sar	ecx
	movsx	r8d, BYTE PTR [rax]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	CreateTimeAttackLevelSelectScreen
	.seh_endproc
	.p2align 4
	.def	Task_MultiplayerWaitForSelections;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_MultiplayerWaitForSelections
Task_MultiplayerWaitForSelections:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	movd	xmm1, DWORD PTR .LC0[rip]
	movd	xmm2, DWORD PTR .LC1[rip]
	mov	r9, QWORD PTR [rax]
	movzx	eax, WORD PTR 2[rdx]
	movd	xmm0, DWORD PTR 8[rdx]
	sub	eax, 1
	mov	rbx, QWORD PTR 24[r9]
	and	ax, 255
	paddw	xmm0, xmm1
	mov	WORD PTR 2[rdx], ax
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	mov	DWORD PTR 43[rsp], 0
	pand	xmm0, xmm2
	cmp	BYTE PTR [rax], 2
	mov	BYTE PTR 47[rsp], 0
	movd	DWORD PTR 8[rdx], xmm0
	jbe	.L83
	mov	rax, QWORD PTR .refptr.gMultiplayerConnections[rip]
	movzx	r10d, BYTE PTR [rax]
	test	r10b, 1
	je	.L80
	mov	rax, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	xor	ecx, ecx
	mov	r8d, 1
	mov	r11d, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
.L81:
	mov	edx, r8d
	sal	edx, cl
	test	edx, r11d
	jne	.L78
	movzx	edx, BYTE PTR [rax]
	lea	esi, 1[rdx]
	mov	BYTE PTR [rax], sil
	cmp	dl, -76
	ja	.L117
.L79:
	add	ecx, 1
	cmp	ecx, 4
	je	.L80
	add	rax, 1
	bt	r10d, ecx
	jc	.L81
	.p2align 4,,10
	.p2align 3
.L80:
	mov	r8, QWORD PTR .refptr.gMultiSioRecv[rip]
	mov	r11, QWORD PTR .refptr.REG_BASE[rip]
	xor	edx, edx
	mov	DWORD PTR 1340[rbx], 0
.L77:
	movzx	eax, BYTE PTR 296[r11]
	shr	al, 4
	and	eax, 3
	cmp	eax, edx
	je	.L82
	bt	r10d, edx
	jnc	.L82
	cmp	WORD PTR [r8], 16416
	jbe	.L82
	movzx	ecx, BYTE PTR 2[r8]
	mov	eax, 1
	sal	eax, cl
	or	DWORD PTR 1340[rbx], eax
	.p2align 4,,10
	.p2align 3
.L82:
	add	edx, 1
	add	r8, 20
	cmp	edx, 4
	jne	.L77
.L83:
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	test	BYTE PTR [rax], 2
	jne	.L118
	mov	rdx, QWORD PTR .refptr.gMultiSioRecv[rip]
	mov	rax, QWORD PTR .refptr.gMultiplayerConnections[rip]
	cmp	WORD PTR [rdx], 16418
	movzx	r10d, BYTE PTR [rax]
	je	.L119
	movzx	esi, BYTE PTR 1313[rbx]
	mov	r11, QWORD PTR .refptr.REG_BASE[rip]
	mov	r8, rdx
	xor	eax, eax
.L89:
	bt	r10d, eax
	jnc	.L88
	movzx	ecx, BYTE PTR 296[r11]
	shr	cl, 4
	and	ecx, 3
	cmp	ecx, eax
	je	.L88
	cmp	WORD PTR [r8], 16417
	je	.L120
.L88:
	add	eax, 1
	add	r8, 20
	cmp	eax, 4
	jne	.L89
	mov	rax, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	test	BYTE PTR [rax], -128
	je	.L90
	mov	r9, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	r8d, 16418
	xor	eax, eax
	mov	WORD PTR [r9], r8w
	mov	BYTE PTR 2[r9], sil
.L95:
	bt	r10d, eax
	jnc	.L91
	cmp	WORD PTR [rdx], 16417
	jne	.L94
	movzx	r8d, BYTE PTR 2[rdx]
	movzx	esi, BYTE PTR 43[rsp+r8]
	lea	ecx, 1[rsi]
	mov	BYTE PTR 43[rsp+r8], cl
	cmp	cl, 1
	ja	.L94
.L91:
	add	eax, 1
	add	rdx, 20
	cmp	eax, 4
	jne	.L95
	mov	rcx, rbx
	add	rsp, 56
	pop	rbx
	pop	rsi
	jmp	RenderUI
	.p2align 4,,10
	.p2align 3
.L90:
	mov	rax, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	edx, 16417
	mov	WORD PTR [rax], dx
	mov	BYTE PTR 2[rax], sil
.L93:
	mov	rcx, rbx
	add	rsp, 56
	pop	rbx
	pop	rsi
	jmp	RenderUI
	.p2align 4,,10
	.p2align 3
.L78:
	mov	BYTE PTR [rax], 0
	jmp	.L79
	.p2align 4,,10
	.p2align 3
.L120:
	cmp	BYTE PTR 2[r8], sil
	jne	.L88
	movzx	ecx, BYTE PTR 296[r11]
	shr	cl, 4
	and	ecx, 3
	cmp	eax, ecx
	jnb	.L88
	lea	rax, Task_CharacterSelectMain[rip]
	mov	ecx, 107
	mov	QWORD PTR 40[r9], rax
	call	m4aSongNumStart
	movzx	edx, BYTE PTR 1313[rbx]
	lea	rax, sCharacterSpriteAssets[rip]
	mov	BYTE PTR 1320[rbx], 0
	mov	BYTE PTR 417[rbx], -1
	movzx	ecx, WORD PTR [rax+rdx*4]
	movzx	eax, WORD PTR 2[rax+rdx*4]
	mov	WORD PTR 386[rbx], cx
	lea	rcx, 368[rbx]
	mov	BYTE PTR 416[rbx], al
	call	UpdateSpriteAnimation
	mov	r9d, 736
	mov	r10d, -246
	lea	rcx, 1184[rbx]
	mov	WORD PTR 1202[rbx], r9w
	mov	WORD PTR 1232[rbx], r10w
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR .refptr.gMultiSioSend[rip]
	movzx	edx, BYTE PTR 1313[rbx]
	mov	r11d, 16416
	mov	WORD PTR [rax], r11w
	mov	BYTE PTR 2[rax], dl
	jmp	.L93
	.p2align 4,,10
	.p2align 3
.L118:
	lea	rax, Task_CharacterSelectMain[rip]
	mov	BYTE PTR 1320[rbx], 0
	mov	QWORD PTR 40[r9], rax
	movzx	edx, BYTE PTR 1313[rbx]
	lea	rax, sCharacterSpriteAssets[rip]
	mov	BYTE PTR 417[rbx], -1
	movzx	ecx, WORD PTR [rax+rdx*4]
	movzx	eax, WORD PTR 2[rax+rdx*4]
	mov	BYTE PTR 416[rbx], al
	mov	eax, 736
	mov	WORD PTR 1202[rbx], ax
	mov	eax, -246
	mov	WORD PTR 386[rbx], cx
	mov	rcx, rbx
	mov	WORD PTR 1232[rbx], ax
	call	RenderUI
	mov	edx, 16416
	mov	ecx, 107
	mov	rax, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	WORD PTR [rax], dx
	movzx	edx, BYTE PTR 1313[rbx]
	mov	BYTE PTR 2[rax], dl
	add	rsp, 56
	pop	rbx
	pop	rsi
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L119:
	mov	r8, QWORD PTR .refptr.gMultiplayerCharacters[rip]
	xor	eax, eax
.L86:
	bt	r10d, eax
	jnc	.L85
	movzx	ecx, BYTE PTR 2[rdx]
	mov	BYTE PTR [rax+r8], cl
.L85:
	add	rax, 1
	add	rdx, 20
	cmp	rax, 4
	jne	.L86
	mov	rax, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	test	BYTE PTR [rax], -128
	jne	.L87
	mov	rax, QWORD PTR .refptr.gMultiSioSend[rip]
	movzx	edx, BYTE PTR 1313[rbx]
	mov	esi, 16418
	mov	WORD PTR [rax], si
	mov	BYTE PTR 2[rax], dl
.L87:
	lea	rax, Task_MultiplayerVerifySelections[rip]
	mov	rcx, rbx
	mov	BYTE PTR 1324[rbx], 0
	mov	QWORD PTR 40[r9], rax
	add	rsp, 56
	pop	rbx
	pop	rsi
	jmp	RenderUI
	.p2align 4,,10
	.p2align 3
.L94:
	mov	ecx, 16417
	mov	WORD PTR [r9], cx
	jmp	.L93
.L117:
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
	add	rsp, 56
	pop	rbx
	pop	rsi
	jmp	LinkCommunicationError
	.seh_endproc
	.p2align 4
	.def	Task_MultiplayerVerifySelections;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_MultiplayerVerifySelections
Task_MultiplayerVerifySelections:
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
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR .refptr.gMultiplayerConnections[rip]
	mov	rdi, QWORD PTR [rbx]
	cmp	BYTE PTR [rdx], 2
	movzx	r8d, BYTE PTR [rax]
	mov	r11, QWORD PTR 24[rdi]
	jbe	.L124
	test	r8b, 1
	je	.L124
	mov	rax, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	xor	ecx, ecx
	mov	r9d, 1
	mov	r10d, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
.L127:
	mov	edx, r9d
	sal	edx, cl
	test	edx, r10d
	jne	.L125
	movzx	edx, BYTE PTR [rax]
	lea	esi, 1[rdx]
	mov	BYTE PTR [rax], sil
	cmp	dl, -76
	ja	.L166
.L126:
	add	ecx, 1
	cmp	ecx, 4
	je	.L124
	add	rax, 1
	bt	r8d, ecx
	jc	.L127
	.p2align 4,,10
	.p2align 3
.L124:
	mov	r10, QWORD PTR .refptr.gMultiSioRecv[rip]
	xor	ecx, ecx
	xor	eax, eax
	mov	esi, 1
	mov	r9, r10
	mov	rdx, r10
.L123:
	bt	r8d, eax
	jnc	.L128
	cmp	WORD PTR [rdx], 16417
	cmovbe	ecx, esi
.L128:
	add	eax, 1
	add	rdx, 20
	cmp	eax, 4
	jne	.L123
	test	cl, cl
	jne	.L167
	movzx	eax, WORD PTR [r10]
	mov	BYTE PTR 1324[r11], 0
	cmp	ax, 16419
	je	.L168
	cmp	ax, 16417
	je	.L169
	mov	rdx, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	movzx	eax, BYTE PTR 1313[r11]
	test	BYTE PTR [rdx], -128
	je	.L137
	mov	rdx, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	ecx, 16419
	mov	r10, QWORD PTR .refptr.gMultiplayerCharacters[rip]
	mov	WORD PTR [rdx], cx
	mov	BYTE PTR 2[rdx], al
	xor	eax, eax
.L141:
	test	eax, eax
	je	.L138
	bt	r8d, eax
	jnc	.L138
	movzx	ecx, BYTE PTR 2[r9]
	cmp	WORD PTR [r9], 16418
	mov	BYTE PTR [rax+r10], cl
	jne	.L170
.L138:
	add	rax, 1
	add	r9, 20
	cmp	rax, 4
	jne	.L141
.L140:
	mov	rcx, r11
	call	RenderUI
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	movd	xmm1, DWORD PTR .LC0[rip]
	movd	xmm2, DWORD PTR .LC1[rip]
	movd	xmm0, DWORD PTR 8[rdx]
	movzx	eax, WORD PTR 2[rdx]
	paddw	xmm0, xmm1
	sub	eax, 1
	and	ax, 255
	mov	WORD PTR 2[rdx], ax
	pand	xmm0, xmm2
	movd	DWORD PTR 8[rdx], xmm0
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L125:
	mov	BYTE PTR [rax], 0
	jmp	.L126
	.p2align 4,,10
	.p2align 3
.L167:
	movzx	eax, BYTE PTR 1324[r11]
	test	al, al
	je	.L130
	add	eax, eax
	mov	BYTE PTR 1324[r11], al
	test	al, al
	jns	.L131
	mov	rax, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	r9d, 16417
	mov	WORD PTR [rax], r9w
	lea	rax, Task_MultiplayerWaitForSelections[rip]
	mov	QWORD PTR 40[rdi], rax
	jmp	.L131
	.p2align 4,,10
	.p2align 3
.L137:
	mov	rcx, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	BYTE PTR 2[r10], al
	mov	edx, 16418
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	WORD PTR [rcx], dx
	mov	rdx, QWORD PTR [rax]
	movzx	r8d, BYTE PTR 8[rdx]
	movzx	eax, BYTE PTR 7[rdx]
	cmp	al, r8b
	cmovb	eax, r8d
	movzx	r8d, BYTE PTR 9[rdx]
	cmp	al, r8b
	cmovb	eax, r8d
	movzx	r8d, BYTE PTR 10[rdx]
	movzx	edx, BYTE PTR 11[rdx]
	cmp	al, r8b
	cmovb	eax, r8d
	cmp	al, dl
	cmovb	eax, edx
	mov	BYTE PTR 3[rcx], al
	jmp	.L140
	.p2align 4,,10
	.p2align 3
.L130:
	mov	BYTE PTR 1324[r11], 1
.L131:
	mov	rcx, r11
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	RenderUI
	.p2align 4,,10
	.p2align 3
.L169:
	mov	rax, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	r8d, 16416
	mov	WORD PTR [rax], r8w
	lea	rax, Task_MultiplayerWaitForSelections[rip]
	mov	QWORD PTR 40[rdi], rax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L168:
	mov	rax, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	mov	edx, DWORD PTR [rax]
	xor	eax, eax
	and	edx, 128
.L134:
	bt	r8d, eax
	jnc	.L133
	test	edx, edx
	jne	.L133
	movzx	r10d, BYTE PTR 2[r9]
	mov	rcx, QWORD PTR .refptr.gMultiplayerCharacters[rip]
	mov	BYTE PTR [rax+rcx], r10b
.L133:
	add	rax, 1
	add	r9, 20
	cmp	rax, 4
	jne	.L134
	mov	rcx, r11
	call	RenderUI
	mov	rax, QWORD PTR [rbx]
	lea	rbx, Task_SelectionCompleteFadeOutAndExit[rip]
	mov	QWORD PTR 40[rax], rbx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
.L166:
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
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	LinkCommunicationError
.L170:
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	test	BYTE PTR [rax], 2
	sete	al
	movzx	eax, al
	add	ax, 16417
	mov	WORD PTR [rdx], ax
	jmp	.L140
	.seh_endproc
	.p2align 4
	.def	RenderCarouselScrollAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	RenderCarouselScrollAnim
RenderCarouselScrollAnim:
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
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	movzx	eax, BYTE PTR 1316[rcx]
	mov	r14, rcx
	movzx	ecx, BYTE PTR 1313[rcx]
	cmp	al, 7
	jbe	.L172
	cmp	al, 11
	jbe	.L198
	xor	edi, edi
	mov	r12d, 8
	xor	esi, esi
.L207:
	lea	rax, 368[r14]
	mov	r13, QWORD PTR .refptr.gGameMode[rip]
	mov	QWORD PTR 32[rsp], rax
	lea	rax, 432[r14]
	mov	QWORD PTR 40[rsp], rax
.L174:
	cmp	BYTE PTR 1315[r14], 0
	je	.L179
.L212:
	mov	rbx, QWORD PTR .refptr.gSineTable[rip]
	xor	r15d, r15d
	mov	ebp, -51
	.p2align 4,,10
	.p2align 3
.L182:
	mov	eax, r15d
	mul	bpl
	shr	ax, 10
	neg	eax
	and	eax, -5
	add	eax, r15d
	cmp	al, cl
	jne	.L180
	cmp	BYTE PTR 1316[r14], 12
	ja	.L181
.L180:
	mov	ecx, DWORD PTR 1336[r14]
	imul	r9d, r15d, 102
	shr	ecx, 8
	lea	r10d, 2[rcx+r9]
	movzx	r9d, al
	movzx	eax, al
	sal	r9, 6
	and	r10d, 1023
	sal	rax, 6
	lea	ecx, 256[r10]
	add	r9, r14
	movsx	ecx, WORD PTR [rbx+rcx*2]
	imul	ecx, ecx, 92
	sar	ecx, 14
	add	ecx, 10
	mov	WORD PTR 694[r9], cx
	movsx	ecx, WORD PTR [rbx+r10*2]
	imul	ecx, ecx, 92
	sar	ecx, 14
	add	ecx, 80
	mov	WORD PTR 696[r9], cx
	lea	rcx, 656[r14+rax]
	call	DisplaySprite
	movzx	ecx, BYTE PTR 1313[r14]
.L181:
	add	r15d, 1
	cmp	r15d, 10
	jne	.L182
	cmp	BYTE PTR 1316[r14], 9
	ja	.L208
.L187:
	movzx	ebp, WORD PTR 1326[r14]
	test	sil, sil
	je	.L188
.L213:
	lea	eax, 16[rsi]
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	mov	ebx, 128
	movzx	esi, sil
	sal	rax, 4
	lea	esi, [rsi+rsi*8]
	and	eax, 4080
	movzx	eax, WORD PTR [rdx+rax*2]
	sar	ax, 7
	sub	ebx, eax
	lea	ebx, 0[rbp+rbx*2]
	lea	ebp, 0[rbp+rsi*2]
	mov	eax, ebx
.L189:
	movzx	edx, BYTE PTR 1322[r14]
	mov	r9d, 130
	mov	WORD PTR 406[r14], ax
	mov	WORD PTR 408[r14], r9w
	mov	eax, DWORD PTR 400[r14]
	movzx	r9d, cl
	bt	edx, ecx
	jc	.L190
	cmp	BYTE PTR 0[r13], 2
	ja	.L190
	lea	rdx, sCharacterSilhouettes[rip]
	or	eax, 262144
	movzx	edx, BYTE PTR [rdx+r9]
.L191:
	mov	BYTE PTR 421[r14], dl
	mov	rcx, QWORD PTR 32[rsp]
	mov	DWORD PTR 400[r14], eax
	call	DisplaySprite
	cmp	BYTE PTR 1313[r14], 1
	je	.L209
.L192:
	cmp	BYTE PTR 0[r13], 2
	jbe	.L195
	movzx	ecx, BYTE PTR 1313[r14]
	mov	eax, 1
	sal	eax, cl
	and	eax, DWORD PTR 1340[r14]
	jne	.L210
.L195:
	add	di, WORD PTR 1328[r14]
	mov	eax, 144
	mov	rcx, QWORD PTR 40[rsp]
	mov	WORD PTR 470[r14], di
	lea	rdi, 496[r14]
	mov	WORD PTR 472[r14], ax
	call	DisplaySprite
	lea	rcx, 304[r14]
	mov	DWORD PTR 342[r14], 1049002
	call	DisplaySprite
	mov	esi, DWORD PTR .LC11[rip]
	mov	DWORD PTR 534[r14], esi
	cmp	r12w, 8
	je	.L196
	mov	ebx, 8
	mov	rcx, rdi
	mov	rbp, QWORD PTR .refptr.gOamMatrixIndex[rip]
	mov	DWORD PTR 560[r14], 16777216
	mov	DWORD PTR 566[r14], 5177384
	sub	ebx, r12d
	mov	eax, ebx
	sal	eax, 4
	sub	ebx, eax
	movzx	eax, BYTE PTR 0[rbp]
	lea	ebx, 256[rbx+rbx]
	lea	edx, 1[rax]
	or	eax, 32
	mov	WORD PTR 564[r14], bx
	movzx	eax, al
	mov	BYTE PTR 0[rbp], dl
	mov	DWORD PTR 528[r14], eax
	call	UpdateSpriteAnimation
	lea	rdx, 560[r14]
	mov	rcx, rdi
	call	TransformSprite
	mov	rcx, rdi
	lea	rdi, 576[r14]
	call	DisplaySprite
	movzx	eax, BYTE PTR 0[rbp]
	mov	DWORD PTR 614[r14], esi
	mov	rcx, rdi
	mov	DWORD PTR 640[r14], 16777216
	lea	edx, 1[rax]
	or	eax, 32
	mov	WORD PTR 644[r14], bx
	movzx	eax, al
	mov	BYTE PTR 0[rbp], dl
	mov	DWORD PTR 646[r14], 5177384
	mov	DWORD PTR 608[r14], eax
	call	UpdateSpriteAnimation
	lea	rdx, 640[r14]
	mov	rcx, rdi
	call	TransformSprite
.L197:
	lea	rbx, 1056[r14]
	mov	rcx, rdi
	call	DisplaySprite
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	lea	rbx, 1120[r14]
	call	DisplaySprite
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L172:
	mov	esi, 8
	movzx	r12d, al
	sub	esi, eax
	cmp	al, 3
	ja	.L173
	test	al, al
	jne	.L199
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	lea	rsi, 368[r14]
	mov	r13, QWORD PTR .refptr.gGameMode[rip]
	movzx	ebx, cl
	mov	QWORD PTR 32[rsp], rsi
	movzx	esi, cl
	mov	rdx, QWORD PTR [rdx]
	movzx	edi, BYTE PTR 6[rdx]
	lea	rdx, sCharacterSpriteAssets[rip]
	mov	BYTE PTR 417[r14], -1
	movzx	r9d, WORD PTR [rdx+rsi*4]
	movzx	edx, WORD PTR 2[rdx+rsi*4]
	mov	WORD PTR 386[r14], r9w
	movzx	r9d, BYTE PTR 1322[r14]
	mov	BYTE PTR 416[r14], dl
	mov	edx, DWORD PTR 400[r14]
	bt	r9d, ecx
	jnc	.L206
.L176:
	and	edx, -262145
.L177:
	mov	DWORD PTR 400[r14], edx
	mov	rcx, QWORD PTR 32[rsp]
	mov	BYTE PTR 421[r14], al
	call	UpdateSpriteAnimation
	movzx	edx, BYTE PTR 1322[r14]
	movzx	eax, BYTE PTR 1313[r14]
	bt	edx, eax
	jc	.L178
	cmp	BYTE PTR 0[r13], 2
	jbe	.L211
.L178:
	sub	edi, 1
	mov	edx, 0
	mov	eax, 6
	mov	BYTE PTR 481[r14], -1
	test	dil, dil
	mov	edi, 160
	cmovle	eax, edx
	lea	rdx, sCharacterNameSubTextAssets[rip]
	xor	r12d, r12d
	add	eax, ebx
	cdqe
	movzx	ecx, WORD PTR [rdx+rax*4]
	movzx	eax, WORD PTR 2[rdx+rax*4]
	mov	WORD PTR 450[r14], cx
	mov	BYTE PTR 480[r14], al
	lea	rax, 432[r14]
	mov	rcx, rax
	mov	QWORD PTR 40[rsp], rax
	call	UpdateSpriteAnimation
	lea	rax, sCharacterTitleLeftSideAssets[rip]
	cmp	BYTE PTR 1315[r14], 0
	mov	BYTE PTR 545[r14], -1
	movzx	edx, WORD PTR [rax+rsi*4]
	movzx	eax, WORD PTR 2[rax+rsi*4]
	mov	BYTE PTR 625[r14], -1
	movzx	ecx, BYTE PTR 1313[r14]
	mov	BYTE PTR 544[r14], al
	lea	rax, sCharacteTitleRightSideAssets[rip]
	mov	WORD PTR 514[r14], dx
	movzx	edx, WORD PTR [rax+rsi*4]
	movzx	eax, WORD PTR 2[rax+rsi*4]
	mov	esi, 8
	mov	WORD PTR 594[r14], dx
	mov	BYTE PTR 624[r14], al
	jne	.L212
.L179:
	mov	eax, DWORD PTR 1336[r14]
	mov	rbx, QWORD PTR .refptr.gSineTable[rip]
	mov	ebp, 2
	shr	eax, 8
	add	ax, 816
	and	eax, 1023
	lea	r15d, 4[rax]
	.p2align 4,,10
	.p2align 3
.L186:
	mov	eax, ebp
	movzx	edx, cl
	and	eax, 3
	cmp	eax, edx
	jne	.L184
	cmp	BYTE PTR 1316[r14], 12
	ja	.L185
.L184:
	mov	r10d, r15d
	sal	rax, 6
	and	r10d, 1023
	lea	rcx, [r14+rax]
	lea	edx, 256[r10]
	movsx	edx, WORD PTR [rbx+rdx*2]
	imul	edx, edx, 92
	sar	edx, 14
	add	edx, 10
	mov	WORD PTR 694[rcx], dx
	movsx	edx, WORD PTR [rbx+r10*2]
	imul	edx, edx, 92
	sar	edx, 14
	add	edx, 80
	mov	WORD PTR 696[rcx], dx
	lea	rcx, 656[r14+rax]
	call	DisplaySprite
	movzx	ecx, BYTE PTR 1313[r14]
.L185:
	add	ebp, 1
	add	r15d, 102
	cmp	ebp, 10
	jne	.L186
	cmp	BYTE PTR 1316[r14], 9
	jbe	.L187
.L208:
	movzx	eax, BYTE PTR 1317[r14]
	add	ecx, 5
	mov	edx, DWORD PTR .LC2[rip]
	xor	r10d, r10d
	mov	BYTE PTR 1024[r14], cl
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	lea	rbx, 976[r14]
	add	eax, 16
	mov	DWORD PTR 1014[r14], edx
	sal	eax, 4
	mov	DWORD PTR 1046[r14], edx
	mov	rdx, QWORD PTR .refptr.gOamMatrixIndex[rip]
	and	eax, 1008
	mov	WORD PTR 1040[r14], r10w
	movsx	ax, BYTE PTR 1[rcx+rax*2]
	mov	BYTE PTR 1025[r14], -1
	add	ax, 192
	movd	xmm0, eax
	movzx	eax, BYTE PTR [rdx]
	pshuflw	xmm0, xmm0, 0
	movd	DWORD PTR 1042[r14], xmm0
	lea	ecx, 1[rax]
	or	eax, 96
	movzx	eax, al
	mov	BYTE PTR [rdx], cl
	mov	rcx, rbx
	mov	DWORD PTR 1008[r14], eax
	call	UpdateSpriteAnimation
	lea	rdx, 1040[r14]
	mov	rcx, rbx
	call	TransformSprite
	mov	rcx, rbx
	call	DisplaySprite
	movzx	ecx, BYTE PTR 1313[r14]
	movzx	ebp, WORD PTR 1326[r14]
	test	sil, sil
	jne	.L213
.L188:
	mov	eax, ebp
	mov	ebx, ebp
	jmp	.L189
	.p2align 4,,10
	.p2align 3
.L206:
	cmp	BYTE PTR 0[r13], 2
	ja	.L176
	lea	rax, sCharacterSilhouettes[rip]
	or	edx, 262144
	movzx	eax, BYTE PTR [rax+rsi]
	jmp	.L177
	.p2align 4,,10
	.p2align 3
.L198:
	mov	r12d, 8
	xor	esi, esi
.L173:
	mov	edi, 12
	sub	edi, eax
	movzx	edi, dil
	lea	edi, [rdi+rdi*4]
	sal	edi, 2
	jmp	.L207
	.p2align 4,,10
	.p2align 3
.L190:
	and	eax, -262145
	xor	edx, edx
	jmp	.L191
	.p2align 4,,10
	.p2align 3
.L196:
	mov	DWORD PTR 528[r14], 0
	mov	rcx, rdi
	lea	rdi, 576[r14]
	call	DisplaySprite
	mov	DWORD PTR 614[r14], esi
	mov	DWORD PTR 608[r14], 0
	jmp	.L197
	.p2align 4,,10
	.p2align 3
.L209:
	mov	r8d, 130
	mov	WORD PTR 1222[r14], bp
	mov	eax, DWORD PTR 1216[r14]
	lea	rcx, 1184[r14]
	mov	WORD PTR 1224[r14], r8w
	test	BYTE PTR 1322[r14], 2
	jne	.L193
	cmp	BYTE PTR 0[r13], 2
	ja	.L193
	or	eax, 262144
	mov	edx, 3
	jmp	.L194
	.p2align 4,,10
	.p2align 3
.L193:
	and	eax, -262145
	xor	edx, edx
.L194:
	mov	BYTE PTR 1237[r14], dl
	mov	DWORD PTR 1216[r14], eax
	call	DisplaySprite
	jmp	.L192
	.p2align 4,,10
	.p2align 3
.L210:
	mov	edx, 130
	mov	WORD PTR 1286[r14], bx
	lea	rcx, 1248[r14]
	mov	WORD PTR 1288[r14], dx
	call	DisplaySprite
	jmp	.L195
	.p2align 4,,10
	.p2align 3
.L211:
	mov	r11d, 741
	mov	ebx, -251
	mov	esi, 739
	mov	edi, -246
	mov	WORD PTR 450[r14], r11w
	lea	rax, 432[r14]
	mov	ebp, 739
	mov	r12d, -245
	mov	WORD PTR 480[r14], bx
	mov	rcx, rax
	mov	QWORD PTR 40[rsp], rax
	call	UpdateSpriteAnimation
	mov	WORD PTR 514[r14], si
	movzx	ecx, BYTE PTR 1313[r14]
	mov	esi, 8
	mov	WORD PTR 544[r14], di
	mov	edi, 160
	mov	WORD PTR 624[r14], r12w
	xor	r12d, r12d
	mov	WORD PTR 594[r14], bp
	jmp	.L174
.L199:
	mov	edi, 160
	jmp	.L207
	.seh_endproc
	.p2align 4
	.def	Task_CharacterSelectMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_CharacterSelectMain
Task_CharacterSelectMain:
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
	mov	rdi, QWORD PTR .refptr.gGameMode[rip]
	mov	rdx, QWORD PTR [rsi]
	movzx	r11d, BYTE PTR [rdi]
	mov	rbx, QWORD PTR 24[rdx]
	movzx	eax, BYTE PTR 1317[rbx]
	and	eax, 63
	add	eax, 1
	mov	BYTE PTR 1317[rbx], al
	cmp	r11b, 2
	jbe	.L215
	mov	rax, QWORD PTR .refptr.gMultiplayerConnections[rip]
	movzx	r9d, BYTE PTR [rax]
	test	r9b, 1
	je	.L222
	mov	rax, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	xor	ecx, ecx
	mov	r8d, 1
	mov	r10d, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
.L223:
	mov	edx, r8d
	sal	edx, cl
	test	edx, r10d
	jne	.L220
	movzx	edx, BYTE PTR [rax]
	lea	ebp, 1[rdx]
	mov	BYTE PTR [rax], bpl
	cmp	dl, -76
	ja	.L264
.L221:
	add	ecx, 1
	cmp	ecx, 4
	je	.L222
	add	rax, 1
	bt	r9d, ecx
	jc	.L223
	.p2align 4,,10
	.p2align 3
.L222:
	mov	r8, QWORD PTR .refptr.gMultiSioRecv[rip]
	mov	r10, QWORD PTR .refptr.REG_BASE[rip]
	xor	edx, edx
	mov	DWORD PTR 1340[rbx], 0
.L217:
	movzx	eax, BYTE PTR 296[r10]
	shr	al, 4
	and	eax, 3
	cmp	al, dl
	je	.L224
	bt	r9d, edx
	jnc	.L224
	cmp	WORD PTR [r8], 16416
	jbe	.L224
	movzx	ecx, BYTE PTR 2[r8]
	mov	eax, 1
	sal	eax, cl
	or	DWORD PTR 1340[rbx], eax
	.p2align 4,,10
	.p2align 3
.L224:
	add	rdx, 1
	add	r8, 20
	cmp	rdx, 4
	jne	.L217
	cmp	BYTE PTR 1320[rbx], 0
	je	.L228
.L268:
	movzx	eax, BYTE PTR 1313[rbx]
	lea	rcx, sCharacterSelectedSpriteAssets[rip]
	mov	ebp, 736
	mov	BYTE PTR 417[rbx], -1
	mov	WORD PTR 1202[rbx], bp
	movzx	r8d, WORD PTR [rcx+rax*4]
	movzx	ecx, WORD PTR 2[rcx+rax*4]
	mov	BYTE PTR 416[rbx], cl
	mov	ecx, -245
	mov	WORD PTR 1232[rbx], cx
	mov	rcx, QWORD PTR .refptr.gSelectedCharacter[rip]
	mov	WORD PTR 386[rbx], r8w
	mov	BYTE PTR [rcx], al
.L263:
	mov	rdx, QWORD PTR .LC12[rip]
	mov	DWORD PTR 8[rbx], 255
	mov	DWORD PTR 1332[rbx], 0
	mov	QWORD PTR [rbx], rdx
	lea	rdx, gCharacterAnnouncements[rip]
	movzx	ecx, WORD PTR [rdx+rax*2]
	call	m4aSongNumStart
	cmp	BYTE PTR [rdi], 2
	mov	rax, QWORD PTR [rsi]
	ja	.L265
	lea	rsi, Task_SelectionCompleteFadeOutAndExit[rip]
	mov	QWORD PTR 40[rax], rsi
.L241:
	mov	rcx, rbx
	call	RenderUI
	jmp	.L231
	.p2align 4,,10
	.p2align 3
.L215:
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	movzx	ecx, BYTE PTR 1321[rbx]
	test	BYTE PTR [rax], 2
	jne	.L266
	test	cl, cl
	jne	.L267
	cmp	BYTE PTR 1320[rbx], 0
	jne	.L268
.L228:
	mov	rax, QWORD PTR .refptr.gInput[rip]
	movzx	eax, WORD PTR [rax]
	test	al, 96
	je	.L232
	test	DWORD PTR 1312[rbx], -16711936
	je	.L269
.L233:
	movzx	edx, BYTE PTR 1315[rbx]
	xor	eax, eax
	movzx	r8d, BYTE PTR 1313[rbx]
	mov	BYTE PTR 1318[rbx], 12
	lea	r9, 10[rdx+rdx*4]
	lea	rdx, gUnknown_080D7282[rip]
	mov	rcx, r8
	add	rdx, r9
	mov	al, BYTE PTR [rdx+r8]
	mov	ah, cl
	mov	WORD PTR 1313[rbx], ax
.L261:
	xor	ecx, ecx
	mov	r8d, 738
	mov	r9d, -255
	mov	DWORD PTR 1332[rbx], 0
	mov	WORD PTR 1316[rbx], cx
	mov	ecx, 103
	mov	BYTE PTR 1323[rbx], 0
	mov	WORD PTR 1074[rbx], r8w
	mov	WORD PTR 1104[rbx], r9w
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_HandleCarouselScrollUp[rip]
	mov	QWORD PTR 40[rax], rsi
.L242:
	mov	rcx, rbx
	call	RenderCarouselScrollAnim
.L231:
	cmp	BYTE PTR [rdi], 2
	jbe	.L246
	mov	rax, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	edx, 16416
	mov	WORD PTR [rax], dx
	movzx	edx, BYTE PTR 1313[rbx]
	mov	BYTE PTR 2[rax], dl
.L246:
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	movd	xmm1, DWORD PTR .LC0[rip]
	movd	xmm2, DWORD PTR .LC1[rip]
	movd	xmm0, DWORD PTR 8[rdx]
	movzx	eax, WORD PTR 2[rdx]
	paddw	xmm0, xmm1
	sub	eax, 1
	and	ax, 255
	mov	WORD PTR 2[rdx], ax
	pand	xmm0, xmm2
	movd	DWORD PTR 8[rdx], xmm0
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L220:
	mov	BYTE PTR [rax], 0
	jmp	.L221
	.p2align 4,,10
	.p2align 3
.L232:
	test	al, -112
	jne	.L270
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	movzx	eax, WORD PTR [rax]
	and	eax, 1
	cmp	r11b, 2
	jbe	.L271
	movzx	edx, BYTE PTR 1313[rbx]
	mov	r8d, 1
	mov	ecx, edx
	sal	r8d, cl
	and	r8d, DWORD PTR 1340[rbx]
	test	ax, ax
	jne	.L272
	test	r8d, r8d
	je	.L242
.L239:
	cmp	BYTE PTR 1323[rbx], 0
	movzx	r8d, BYTE PTR 1315[rbx]
	jne	.L273
	test	DWORD PTR 1312[rbx], -16711936
	jne	.L245
	mov	DWORD PTR 1336[rbx], 157696
.L245:
	movsx	rax, edx
	lea	edx, 2[r8]
	xor	r9d, r9d
	mov	BYTE PTR 1318[rbx], 12
	movsx	rdx, edx
	lea	r8, [rdx+rdx*4]
	lea	rdx, gUnknown_080D7282[rip]
	add	rdx, r8
	mov	r9b, BYTE PTR [rdx+rax]
	mov	eax, r9d
	mov	ah, cl
	mov	WORD PTR 1313[rbx], ax
	jmp	.L261
	.p2align 4,,10
	.p2align 3
.L266:
	mov	rax, QWORD PTR .LC12[rip]
	mov	DWORD PTR 8[rbx], 255
	mov	QWORD PTR [rbx], rax
	lea	rax, Task_FadeOutAndExitToPrevious[rip]
	mov	QWORD PTR 40[rdx], rax
	test	cl, cl
	jne	.L227
	mov	ecx, 107
	call	m4aSongNumStart
.L227:
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	RenderCarouselScrollAnim
	.p2align 4,,10
	.p2align 3
.L265:
	lea	rsi, Task_MultiplayerWaitForSelections[rip]
	mov	QWORD PTR 40[rax], rsi
	jmp	.L241
	.p2align 4,,10
	.p2align 3
.L269:
	mov	DWORD PTR 1336[rbx], 157696
	jmp	.L233
	.p2align 4,,10
	.p2align 3
.L270:
	movzx	edx, BYTE PTR 1315[rbx]
	movzx	r8d, BYTE PTR 1313[rbx]
	xor	eax, eax
	mov	r10d, 738
	mov	r11d, -255
	mov	BYTE PTR 1319[rbx], 12
	lea	r9, [rdx+rdx*4]
	lea	rdx, gUnknown_080D7282[rip]
	mov	rcx, r8
	mov	DWORD PTR 1332[rbx], 0
	add	rdx, r9
	xor	r9d, r9d
	mov	BYTE PTR 1323[rbx], 1
	mov	al, BYTE PTR [rdx+r8]
	mov	WORD PTR 1316[rbx], r9w
	mov	WORD PTR 1138[rbx], r10w
	mov	ah, cl
	mov	WORD PTR 1168[rbx], r11w
	mov	ecx, 103
	mov	WORD PTR 1313[rbx], ax
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_HandleCarouselScrollDown[rip]
	mov	rcx, rbx
	mov	QWORD PTR 40[rax], rsi
	call	RenderCarouselScrollAnim
	jmp	.L231
	.p2align 4,,10
	.p2align 3
.L267:
	mov	rax, QWORD PTR .LC12[rip]
	mov	rcx, rbx
	mov	DWORD PTR 8[rbx], 255
	mov	QWORD PTR [rbx], rax
	lea	rax, Task_FadeOutAndExitToPrevious[rip]
	mov	QWORD PTR 40[rdx], rax
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	RenderCarouselScrollAnim
	.p2align 4,,10
	.p2align 3
.L271:
	test	ax, ax
	je	.L242
	movzx	edx, BYTE PTR 1313[rbx]
	movzx	eax, BYTE PTR 1322[rbx]
	bt	eax, edx
	mov	ecx, edx
	jnc	.L242
.L237:
	lea	r8, sCharacterSelectedSpriteAssets[rip]
	movsx	rax, edx
	mov	BYTE PTR 417[rbx], -1
	movzx	edx, WORD PTR [r8+rax*4]
	mov	WORD PTR 386[rbx], dx
	movzx	edx, WORD PTR 2[r8+rax*4]
	mov	r8d, -245
	mov	WORD PTR 1232[rbx], r8w
	mov	BYTE PTR 416[rbx], dl
	mov	edx, 736
	mov	WORD PTR 1202[rbx], dx
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	mov	BYTE PTR [rdx], cl
	jmp	.L263
	.p2align 4,,10
	.p2align 3
.L272:
	test	r8d, r8d
	jne	.L239
	jmp	.L237
	.p2align 4,,10
	.p2align 3
.L264:
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
	jmp	LinkCommunicationError
.L273:
	movsx	rax, edx
	lea	r8, [r8+r8*4]
	xor	r9d, r9d
	xor	r10d, r10d
	lea	rdx, gUnknown_080D7282[rip]
	mov	r11d, 738
	mov	ebp, -255
	mov	BYTE PTR 1319[rbx], 12
	add	rdx, r8
	mov	WORD PTR 1316[rbx], r10w
	mov	r9b, BYTE PTR [rdx+rax]
	mov	WORD PTR 1138[rbx], r11w
	mov	DWORD PTR 1332[rbx], 0
	mov	eax, r9d
	mov	WORD PTR 1168[rbx], bp
	mov	ah, cl
	mov	ecx, 103
	mov	WORD PTR 1313[rbx], ax
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_HandleCarouselScrollDown[rip]
	mov	QWORD PTR 40[rax], rsi
	jmp	.L242
	.seh_endproc
	.p2align 4
	.def	Task_HandleCarouselScrollDown;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_HandleCarouselScrollDown
Task_HandleCarouselScrollDown:
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
	mov	rdi, QWORD PTR .refptr.gGameMode[rip]
	movzx	r8d, BYTE PTR [rdi]
	cmp	r8b, 2
	jbe	.L278
	mov	rax, QWORD PTR .refptr.gMultiplayerConnections[rip]
	movzx	r11d, BYTE PTR [rax]
	test	r11b, 1
	je	.L278
	mov	rax, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	xor	ecx, ecx
	mov	r9d, 1
	mov	r10d, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
.L281:
	mov	edx, r9d
	sal	edx, cl
	test	edx, r10d
	jne	.L279
	movzx	edx, BYTE PTR [rax]
	lea	ebx, 1[rdx]
	mov	BYTE PTR [rax], bl
	cmp	dl, -76
	ja	.L307
.L280:
	add	ecx, 1
	cmp	ecx, 4
	je	.L278
	add	rax, 1
	bt	r11d, ecx
	jc	.L281
	.p2align 4,,10
	.p2align 3
.L278:
	mov	rbp, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rax]
	mov	eax, DWORD PTR 1332[rbx]
	add	BYTE PTR 1316[rbx], 1
	lea	esi, 1[rax]
	movzx	eax, BYTE PTR 1319[rbx]
	mov	DWORD PTR 1332[rbx], esi
	test	al, al
	je	.L282
	sub	eax, 1
	mov	BYTE PTR 1319[rbx], al
	test	al, al
	jne	.L282
	mov	ecx, 738
	mov	r9d, -256
	mov	WORD PTR 1138[rbx], cx
	mov	WORD PTR 1168[rbx], r9w
.L282:
	mov	eax, esi
	lea	rdx, sCourselScrollAnimVelocities[rip]
	movzx	edx, WORD PTR [rdx+rax*2]
	mov	eax, DWORD PTR 1336[rbx]
	sub	eax, edx
	and	eax, 262143
	mov	DWORD PTR 1336[rbx], eax
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	movzx	eax, WORD PTR [rax]
	mov	edx, eax
	and	edx, 1
	cmp	r8b, 2
	ja	.L283
	test	dx, dx
	je	.L284
	movzx	ecx, BYTE PTR 1322[rbx]
	movzx	edx, BYTE PTR 1313[rbx]
	bt	ecx, edx
	jnc	.L284
	mov	BYTE PTR 1320[rbx], 1
	.p2align 4,,10
	.p2align 3
.L286:
	cmp	esi, 9
	jbe	.L288
	cmp	BYTE PTR 1313[rbx], 0
	mov	DWORD PTR 1332[rbx], 0
	jne	.L289
	mov	DWORD PTR 1336[rbx], 0
.L289:
	mov	rax, QWORD PTR 0[rbp]
	lea	rsi, Task_CarouselScrollCompleteAnim[rip]
	mov	QWORD PTR 40[rax], rsi
.L288:
	mov	rcx, rbx
	call	RenderCarouselScrollAnim
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	movd	xmm1, DWORD PTR .LC0[rip]
	movd	xmm2, DWORD PTR .LC1[rip]
	movd	xmm0, DWORD PTR 8[rdx]
	movzx	eax, WORD PTR 2[rdx]
	paddw	xmm0, xmm1
	sub	eax, 1
	and	ax, 255
	cmp	BYTE PTR [rdi], 2
	mov	WORD PTR 2[rdx], ax
	pand	xmm0, xmm2
	movd	DWORD PTR 8[rdx], xmm0
	jbe	.L274
	mov	rax, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	edx, 16416
	mov	WORD PTR [rax], dx
	movzx	edx, BYTE PTR 1313[rbx]
	mov	BYTE PTR 2[rax], dl
.L274:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L283:
	test	dx, dx
	je	.L286
	movzx	ecx, BYTE PTR 1313[rbx]
	mov	eax, 1
	sal	eax, cl
	and	eax, DWORD PTR 1340[rbx]
	jne	.L286
	mov	BYTE PTR 1320[rbx], 1
	jmp	.L286
	.p2align 4,,10
	.p2align 3
.L284:
	test	al, 2
	je	.L286
	cmp	BYTE PTR 1321[rbx], 0
	je	.L308
.L287:
	mov	BYTE PTR 1321[rbx], 1
	jmp	.L286
	.p2align 4,,10
	.p2align 3
.L279:
	mov	BYTE PTR [rax], 0
	jmp	.L280
	.p2align 4,,10
	.p2align 3
.L308:
	mov	ecx, 107
	call	m4aSongNumStart
	jmp	.L287
	.p2align 4,,10
	.p2align 3
.L307:
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
	jmp	LinkCommunicationError
	.seh_endproc
	.p2align 4
	.def	Task_CarouselScrollCompleteAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_CarouselScrollCompleteAnim
Task_CarouselScrollCompleteAnim:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[r8]
	mov	edx, DWORD PTR 1332[rax]
	movzx	ecx, BYTE PTR 1318[rax]
	add	BYTE PTR 1316[rax], 1
	add	edx, 1
	mov	DWORD PTR 1332[rax], edx
	test	cl, cl
	je	.L311
	sub	ecx, 1
	mov	BYTE PTR 1318[rax], cl
	test	cl, cl
	je	.L326
.L311:
	movzx	ecx, BYTE PTR 1319[rax]
	test	cl, cl
	je	.L314
	sub	ecx, 1
	mov	BYTE PTR 1319[rax], cl
	test	cl, cl
	je	.L327
.L314:
	mov	rcx, QWORD PTR .refptr.gPressedKeys[rip]
	mov	r9, QWORD PTR .refptr.gGameMode[rip]
	movzx	ecx, WORD PTR [rcx]
	and	ecx, 1
	cmp	BYTE PTR [r9], 2
	jbe	.L328
	test	cx, cx
	jne	.L329
.L317:
	cmp	edx, 5
	jbe	.L319
	lea	rdx, Task_CharacterSelectMain[rip]
	add	BYTE PTR 1317[rax], 1
	mov	QWORD PTR 40[r8], rdx
.L319:
	mov	rcx, rax
	call	RenderCarouselScrollAnim
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	movd	xmm1, DWORD PTR .LC0[rip]
	movd	xmm2, DWORD PTR .LC1[rip]
	movd	xmm0, DWORD PTR 8[rdx]
	movzx	eax, WORD PTR 2[rdx]
	paddw	xmm0, xmm1
	sub	eax, 1
	and	ax, 255
	mov	WORD PTR 2[rdx], ax
	pand	xmm0, xmm2
	movd	DWORD PTR 8[rdx], xmm0
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L328:
	test	cx, cx
	je	.L317
	movzx	r9d, BYTE PTR 1322[rax]
	movzx	ecx, BYTE PTR 1313[rax]
	bt	r9d, ecx
	jnc	.L317
	mov	BYTE PTR 1320[rax], 1
	jmp	.L317
	.p2align 4,,10
	.p2align 3
.L327:
	mov	ecx, 738
	mov	r9d, -256
	mov	WORD PTR 1138[rax], cx
	mov	WORD PTR 1168[rax], r9w
	jmp	.L314
	.p2align 4,,10
	.p2align 3
.L326:
	mov	r10d, 738
	mov	r11d, -256
	mov	WORD PTR 1074[rax], r10w
	mov	WORD PTR 1104[rax], r11w
	jmp	.L311
	.p2align 4,,10
	.p2align 3
.L329:
	movzx	ecx, BYTE PTR 1313[rax]
	mov	r9d, 1
	sal	r9d, cl
	and	r9d, DWORD PTR 1340[rax]
	jne	.L317
	mov	BYTE PTR 1320[rax], 1
	jmp	.L317
	.seh_endproc
	.p2align 4
	.def	Task_HandleCarouselScrollUp;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_HandleCarouselScrollUp
Task_HandleCarouselScrollUp:
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
	mov	rdi, QWORD PTR .refptr.gGameMode[rip]
	movzx	r8d, BYTE PTR [rdi]
	cmp	r8b, 2
	jbe	.L334
	mov	rax, QWORD PTR .refptr.gMultiplayerConnections[rip]
	movzx	r11d, BYTE PTR [rax]
	test	r11b, 1
	je	.L334
	mov	rax, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	xor	ecx, ecx
	mov	r9d, 1
	mov	r10d, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
.L337:
	mov	edx, r9d
	sal	edx, cl
	test	edx, r10d
	jne	.L335
	movzx	edx, BYTE PTR [rax]
	lea	ebx, 1[rdx]
	mov	BYTE PTR [rax], bl
	cmp	dl, -76
	ja	.L363
.L336:
	add	ecx, 1
	cmp	ecx, 4
	je	.L334
	add	rax, 1
	bt	r11d, ecx
	jc	.L337
	.p2align 4,,10
	.p2align 3
.L334:
	mov	rbp, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rax]
	mov	eax, DWORD PTR 1332[rbx]
	add	BYTE PTR 1316[rbx], 1
	lea	esi, 1[rax]
	movzx	eax, BYTE PTR 1318[rbx]
	mov	DWORD PTR 1332[rbx], esi
	test	al, al
	je	.L338
	sub	eax, 1
	mov	BYTE PTR 1318[rbx], al
	test	al, al
	jne	.L338
	mov	ecx, 738
	mov	r9d, -256
	mov	WORD PTR 1074[rbx], cx
	mov	WORD PTR 1104[rbx], r9w
.L338:
	lea	rdx, sCourselScrollAnimVelocities[rip]
	mov	eax, esi
	movzx	eax, WORD PTR [rdx+rax*2]
	add	eax, DWORD PTR 1336[rbx]
	and	eax, 262143
	mov	DWORD PTR 1336[rbx], eax
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	movzx	eax, WORD PTR [rax]
	mov	edx, eax
	and	edx, 1
	cmp	r8b, 2
	ja	.L339
	test	dx, dx
	je	.L340
	movzx	ecx, BYTE PTR 1322[rbx]
	movzx	edx, BYTE PTR 1313[rbx]
	bt	ecx, edx
	jnc	.L340
	mov	BYTE PTR 1320[rbx], 1
	.p2align 4,,10
	.p2align 3
.L342:
	cmp	esi, 9
	jbe	.L344
	cmp	BYTE PTR 1313[rbx], 0
	mov	DWORD PTR 1332[rbx], 0
	jne	.L345
	mov	DWORD PTR 1336[rbx], 0
.L345:
	mov	rax, QWORD PTR 0[rbp]
	lea	rsi, Task_CarouselScrollCompleteAnim[rip]
	mov	QWORD PTR 40[rax], rsi
.L344:
	mov	rcx, rbx
	call	RenderCarouselScrollAnim
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	movd	xmm1, DWORD PTR .LC0[rip]
	movd	xmm2, DWORD PTR .LC1[rip]
	movd	xmm0, DWORD PTR 8[rdx]
	movzx	eax, WORD PTR 2[rdx]
	paddw	xmm0, xmm1
	sub	eax, 1
	and	ax, 255
	cmp	BYTE PTR [rdi], 2
	mov	WORD PTR 2[rdx], ax
	pand	xmm0, xmm2
	movd	DWORD PTR 8[rdx], xmm0
	jbe	.L330
	mov	rax, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	edx, 16416
	mov	WORD PTR [rax], dx
	movzx	edx, BYTE PTR 1313[rbx]
	mov	BYTE PTR 2[rax], dl
.L330:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L339:
	test	dx, dx
	je	.L342
	movzx	ecx, BYTE PTR 1313[rbx]
	mov	eax, 1
	sal	eax, cl
	and	eax, DWORD PTR 1340[rbx]
	jne	.L342
	mov	BYTE PTR 1320[rbx], 1
	jmp	.L342
	.p2align 4,,10
	.p2align 3
.L340:
	test	al, 2
	je	.L342
	cmp	BYTE PTR 1321[rbx], 0
	je	.L364
.L343:
	mov	BYTE PTR 1321[rbx], 1
	jmp	.L342
	.p2align 4,,10
	.p2align 3
.L335:
	mov	BYTE PTR [rax], 0
	jmp	.L336
	.p2align 4,,10
	.p2align 3
.L364:
	mov	ecx, 107
	call	m4aSongNumStart
	jmp	.L343
	.p2align 4,,10
	.p2align 3
.L363:
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
	jmp	LinkCommunicationError
	.seh_endproc
	.p2align 4
	.def	RenderTransitionInUIAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	RenderTransitionInUIAnim
RenderTransitionInUIAnim:
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
	cmp	BYTE PTR 1315[rcx], 0
	movzx	edx, BYTE PTR 1313[rcx]
	mov	rbx, rcx
	je	.L366
	mov	rsi, QWORD PTR .refptr.gSineTable[rip]
	xor	ebp, ebp
	mov	edi, -51
	.p2align 4,,10
	.p2align 3
.L369:
	mov	eax, ebp
	mul	dil
	shr	ax, 10
	neg	eax
	and	eax, -5
	add	eax, ebp
	cmp	al, dl
	jne	.L367
	cmp	BYTE PTR 1316[rbx], 16
	je	.L368
.L367:
	mov	edx, DWORD PTR 1336[rbx]
	imul	ecx, ebp, 102
	shr	edx, 8
	lea	r8d, 2[rdx+rcx]
	movzx	ecx, al
	movzx	eax, al
	sal	rcx, 6
	and	r8d, 1023
	sal	rax, 6
	lea	edx, 256[r8]
	add	rcx, rbx
	movsx	edx, WORD PTR [rsi+rdx*2]
	imul	edx, edx, 92
	sar	edx, 14
	add	edx, 10
	mov	WORD PTR 694[rcx], dx
	movsx	edx, WORD PTR [rsi+r8*2]
	imul	edx, edx, 92
	sar	edx, 14
	add	edx, 80
	mov	WORD PTR 696[rcx], dx
	lea	rcx, 656[rbx+rax]
	call	DisplaySprite
	movzx	edx, BYTE PTR 1313[rbx]
.L368:
	add	ebp, 1
	cmp	ebp, 10
	jne	.L369
.L370:
	movzx	eax, BYTE PTR 1317[rbx]
	mov	rbp, QWORD PTR .refptr.gOamMatrixIndex[rip]
	add	edx, 5
	xor	r10d, r10d
	mov	ecx, DWORD PTR .LC2[rip]
	mov	BYTE PTR 1024[rbx], dl
	lea	rdi, 976[rbx]
	add	eax, 16
	mov	WORD PTR 1040[rbx], r10w
	sal	eax, 4
	mov	DWORD PTR 1014[rbx], ecx
	and	eax, 1008
	mov	DWORD PTR 1046[rbx], ecx
	mov	rcx, rdi
	movsx	ax, BYTE PTR 1[rsi+rax*2]
	mov	BYTE PTR 1025[rbx], -1
	add	ax, 192
	movd	xmm0, eax
	movzx	eax, BYTE PTR 0[rbp]
	pshuflw	xmm0, xmm0, 0
	lea	edx, 1[rax]
	or	eax, 96
	movd	DWORD PTR 1042[rbx], xmm0
	movzx	eax, al
	mov	BYTE PTR 0[rbp], dl
	mov	DWORD PTR 1008[rbx], eax
	call	UpdateSpriteAnimation
	lea	rdx, 1040[rbx]
	mov	rcx, rdi
	call	TransformSprite
	mov	rcx, rdi
	call	DisplaySprite
	mov	eax, DWORD PTR 1332[rbx]
	mov	edx, 400
	cmp	eax, 7
	jbe	.L374
	mov	edx, -20
	imul	eax, edx
	add	eax, 64
	movzx	eax, al
	lea	edx, 240[rax]
.L374:
	mov	r9d, 16
	mov	WORD PTR 342[rbx], dx
	lea	rcx, 304[rbx]
	mov	WORD PTR 344[rbx], r9w
	call	DisplaySprite
	mov	edx, DWORD PTR 1332[rbx]
	lea	rcx, 368[rbx]
	cmp	edx, 7
	jbe	.L375
	movzx	esi, WORD PTR 1326[rbx]
.L376:
	mov	r8d, 130
	movzx	edx, BYTE PTR 1313[rbx]
	mov	WORD PTR 406[rbx], si
	mov	WORD PTR 408[rbx], r8w
	movzx	r8d, BYTE PTR 1322[rbx]
	mov	eax, DWORD PTR 400[rbx]
	bt	r8d, edx
	jc	.L377
	mov	r8, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [r8], 2
	jbe	.L388
.L377:
	and	eax, -262145
	xor	edx, edx
.L378:
	mov	BYTE PTR 421[rbx], dl
	mov	DWORD PTR 400[rbx], eax
	call	DisplaySprite
	cmp	BYTE PTR 1313[rbx], 1
	je	.L389
.L379:
	mov	edx, DWORD PTR 1332[rbx]
	mov	eax, 160
	cmp	edx, 3
	jbe	.L382
	xor	eax, eax
	cmp	edx, 11
	ja	.L382
	mov	eax, 12
	sub	eax, edx
	movzx	eax, al
	lea	eax, [rax+rax*4]
	sal	eax, 2
.L382:
	add	ax, WORD PTR 1328[rbx]
	lea	rcx, 432[rbx]
	mov	esi, 16
	mov	WORD PTR 470[rbx], ax
	mov	eax, 144
	lea	rdi, 496[rbx]
	mov	WORD PTR 472[rbx], ax
	call	DisplaySprite
	mov	eax, DWORD PTR 1332[rbx]
	mov	r12d, DWORD PTR .LC11[rip]
	mov	rcx, rdi
	mov	DWORD PTR 560[rbx], 16777216
	mov	edx, eax
	mov	DWORD PTR 534[rbx], r12d
	mov	DWORD PTR 566[rbx], 5177384
	sal	edx, 4
	sub	eax, edx
	mov	edx, esi
	sub	edx, eax
	movzx	eax, BYTE PTR 0[rbp]
	mov	WORD PTR 564[rbx], dx
	lea	edx, 1[rax]
	or	eax, 32
	movzx	eax, al
	mov	BYTE PTR 0[rbp], dl
	mov	DWORD PTR 528[rbx], eax
	call	UpdateSpriteAnimation
	lea	rdx, 560[rbx]
	mov	rcx, rdi
	call	TransformSprite
	mov	rcx, rdi
	lea	rdi, 576[rbx]
	call	DisplaySprite
	mov	eax, DWORD PTR 1332[rbx]
	mov	DWORD PTR 614[rbx], r12d
	mov	rcx, rdi
	mov	DWORD PTR 640[rbx], 16777216
	mov	DWORD PTR 646[rbx], 5177384
	mov	edx, eax
	sal	edx, 4
	sub	eax, edx
	sub	esi, eax
	movzx	eax, BYTE PTR 0[rbp]
	mov	WORD PTR 644[rbx], si
	lea	edx, 1[rax]
	or	eax, 32
	movzx	eax, al
	mov	BYTE PTR 0[rbp], dl
	mov	DWORD PTR 608[rbx], eax
	call	UpdateSpriteAnimation
	lea	rdx, 640[rbx]
	mov	rcx, rdi
	call	TransformSprite
	mov	rcx, rdi
	call	DisplaySprite
	lea	rcx, 1056[rbx]
	call	DisplaySprite
	lea	rcx, 1120[rbx]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L375:
	mov	eax, 24
	sub	eax, edx
	sal	rax, 4
	and	eax, 4080
	movzx	eax, WORD PTR [rsi+rax*2]
	mov	esi, 128
	sar	ax, 7
	sub	esi, eax
	movzx	eax, WORD PTR 1326[rbx]
	lea	esi, [rax+rsi*2]
	jmp	.L376
	.p2align 4,,10
	.p2align 3
.L366:
	mov	eax, DWORD PTR 1336[rcx]
	mov	rsi, QWORD PTR .refptr.gSineTable[rip]
	mov	edi, 2
	shr	eax, 8
	add	ax, 816
	and	eax, 1023
	lea	ebp, 4[rax]
	.p2align 4,,10
	.p2align 3
.L373:
	mov	eax, edi
	movzx	ecx, dl
	and	eax, 3
	cmp	eax, ecx
	jne	.L371
	cmp	BYTE PTR 1316[rbx], 12
	ja	.L372
.L371:
	mov	ecx, ebp
	mov	edx, eax
	and	ecx, 1023
	sal	rdx, 6
	lea	eax, 256[rcx]
	lea	r8, [rbx+rdx]
	movsx	eax, WORD PTR [rsi+rax*2]
	imul	eax, eax, 92
	sar	eax, 14
	add	eax, 10
	mov	WORD PTR 694[r8], ax
	movsx	eax, WORD PTR [rsi+rcx*2]
	lea	rcx, 656[rbx+rdx]
	imul	eax, eax, 92
	sar	eax, 14
	add	eax, 80
	mov	WORD PTR 696[r8], ax
	call	DisplaySprite
	movzx	edx, BYTE PTR 1313[rbx]
.L372:
	add	edi, 1
	add	ebp, 102
	cmp	edi, 10
	jne	.L373
	jmp	.L370
	.p2align 4,,10
	.p2align 3
.L388:
	lea	r8, sCharacterSilhouettes[rip]
	or	eax, 262144
	movzx	edx, BYTE PTR [r8+rdx]
	jmp	.L378
	.p2align 4,,10
	.p2align 3
.L389:
	mov	edx, 130
	mov	WORD PTR 1222[rbx], si
	mov	eax, DWORD PTR 1216[rbx]
	lea	rcx, 1184[rbx]
	mov	WORD PTR 1224[rbx], dx
	test	BYTE PTR 1322[rbx], 2
	jne	.L380
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rdx], 2
	ja	.L380
	or	eax, 262144
	mov	edx, 3
	jmp	.L381
	.p2align 4,,10
	.p2align 3
.L380:
	and	eax, -262145
	xor	edx, edx
.L381:
	mov	BYTE PTR 1237[rbx], dl
	mov	DWORD PTR 1216[rbx], eax
	call	DisplaySprite
	jmp	.L379
	.seh_endproc
	.p2align 4
	.def	Task_RollInAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_RollInAnim
Task_RollInAnim:
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rcx]
	mov	edx, DWORD PTR 1332[rbx]
	lea	eax, 1[rdx]
	mov	DWORD PTR 1332[rbx], eax
	cmp	eax, 60
	ja	.L391
	mov	r8, QWORD PTR .refptr.gPressedKeys[rip]
	test	BYTE PTR [r8], 1
	je	.L392
	mov	r8, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [r8], 2
	ja	.L392
.L391:
	movzx	edx, BYTE PTR 1312[rbx]
	add	BYTE PTR 1317[rbx], 1
	imul	edx, edx, -26112
	cmp	BYTE PTR 1315[rbx], 0
	lea	eax, 4[rdx]
	jne	.L416
.L394:
	mov	DWORD PTR 1332[rbx], 0
	and	eax, 262143
	mov	DWORD PTR 1336[rbx], eax
	lea	rax, Task_TransitionInUIAnim[rip]
	mov	QWORD PTR 40[rcx], rax
	mov	rcx, rbx
	call	RenderTransitionInUIAnim
.L395:
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	movd	xmm1, DWORD PTR .LC0[rip]
	movd	xmm2, DWORD PTR .LC1[rip]
	movd	xmm0, DWORD PTR 8[rdx]
	movzx	eax, WORD PTR 2[rdx]
	paddw	xmm0, xmm1
	sub	eax, 1
	and	ax, 255
	mov	WORD PTR 2[rdx], ax
	pand	xmm0, xmm2
	movd	DWORD PTR 8[rdx], xmm0
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L416:
	lea	eax, 2[rdx]
	jmp	.L394
	.p2align 4,,10
	.p2align 3
.L392:
	mov	r12, QWORD PTR .refptr.gSineTable[rip]
	lea	edx, 276[0+rdx*4]
	movsx	ecx, WORD PTR [r12+rdx*2]
	mov	edx, ecx
	imul	ecx, ecx, 21846
	sar	dx, 15
	shr	ecx, 16
	sub	ecx, edx
	mov	edx, DWORD PTR 1336[rbx]
	movsx	ecx, cx
	sub	edx, ecx
	movzx	ecx, BYTE PTR 1312[rbx]
	cmp	BYTE PTR 1315[rbx], 0
	movzx	r8d, cl
	je	.L396
	add	edx, 6
	xor	esi, esi
	mov	edi, -51
	and	edx, 262143
	mov	DWORD PTR 1336[rbx], edx
	jmp	.L397
	.p2align 4,,10
	.p2align 3
.L417:
	cmp	eax, 19
	seta	dl
	cmp	cl, 4
	sete	al
	test	dl, al
	je	.L400
	cmp	sil, 1
	jbe	.L399
.L400:
	add	esi, 1
	cmp	esi, 10
	je	.L404
.L401:
	mov	eax, DWORD PTR 1332[rbx]
	movzx	ecx, BYTE PTR 1312[rbx]
.L397:
	movzx	r9d, cl
	mov	edx, esi
	mov	r8d, esi
	sub	edx, r9d
	lea	edx, [rdx+rdx*4]
	cmp	edx, eax
	jnb	.L417
.L399:
	mov	edx, DWORD PTR 1336[rbx]
	imul	ecx, esi, 102
	mov	eax, r8d
	add	esi, 1
	mul	dil
	shr	edx, 8
	add	edx, ecx
	and	edx, 1023
	shr	ax, 10
	lea	ecx, 256[rdx]
	movsx	edx, WORD PTR [r12+rdx*2]
	neg	eax
	movsx	ecx, WORD PTR [r12+rcx*2]
	and	eax, -5
	imul	edx, edx, 92
	add	eax, r8d
	imul	ecx, ecx, 92
	movzx	r8d, al
	movzx	eax, al
	sal	r8, 6
	sal	rax, 6
	sar	edx, 14
	add	r8, rbx
	sar	ecx, 14
	add	edx, 80
	add	ecx, 10
	mov	WORD PTR 696[r8], dx
	mov	WORD PTR 694[r8], cx
	lea	rcx, 656[rbx+rax]
	call	DisplaySprite
	cmp	esi, 10
	jne	.L401
	.p2align 4,,10
	.p2align 3
.L404:
	lea	rcx, 1056[rbx]
	call	DisplaySprite
	lea	rcx, 1120[rbx]
	call	DisplaySprite
	jmp	.L395
	.p2align 4,,10
	.p2align 3
.L396:
	lea	edi, 12[rdx]
	mov	esi, 2
	and	edi, 262143
	mov	DWORD PTR 1336[rbx], edi
	shr	edi, 8
	add	di, 816
	mov	ebp, edi
	and	edi, 1023
	and	bp, 1023
	jmp	.L398
	.p2align 4,,10
	.p2align 3
.L402:
	add	esi, 1
	add	edi, 102
	cmp	esi, 11
	je	.L418
.L403:
	mov	eax, DWORD PTR 1332[rbx]
.L398:
	mov	edx, esi
	sub	edx, r8d
	sub	edx, 2
	movsx	edx, dl
	cmp	edx, eax
	jnb	.L402
	mov	ecx, edi
	mov	edx, esi
	add	edi, 102
	and	ecx, 1023
	and	edx, 3
	lea	eax, 256[rcx]
	sal	rdx, 6
	movsx	eax, WORD PTR [r12+rax*2]
	add	rdx, rbx
	imul	eax, eax, 92
	sar	eax, 14
	add	eax, 10
	mov	WORD PTR 694[rdx], ax
	movsx	eax, WORD PTR [r12+rcx*2]
	imul	eax, eax, 92
	sar	eax, 14
	add	eax, 80
	mov	WORD PTR 696[rdx], ax
	mov	eax, esi
	add	esi, 1
	and	eax, 3
	sal	rax, 6
	lea	rcx, 656[rbx+rax]
	call	DisplaySprite
	movzx	r8d, BYTE PTR 1312[rbx]
	cmp	esi, 11
	jne	.L403
.L418:
	lea	eax, -1[r8]
	cmp	al, 2
	ja	.L404
	cmp	DWORD PTR 1332[rbx], 19
	jbe	.L404
	lea	rdi, gUnknown_080D7274[rip]
	cmp	BYTE PTR [rdi+r8], 9
	jbe	.L404
	add	bp, 918
	movzx	ebp, bp
	.p2align 4,,10
	.p2align 3
.L405:
	mov	ecx, ebp
	mov	edx, esi
	add	ebp, 102
	and	ecx, 1023
	and	edx, 3
	lea	eax, 256[rcx]
	sal	rdx, 6
	movsx	eax, WORD PTR [r12+rax*2]
	add	rdx, rbx
	imul	eax, eax, 92
	sar	eax, 14
	add	eax, 10
	mov	WORD PTR 694[rdx], ax
	movsx	eax, WORD PTR [r12+rcx*2]
	imul	eax, eax, 92
	sar	eax, 14
	add	eax, 80
	mov	WORD PTR 696[rdx], ax
	mov	eax, esi
	add	esi, 1
	and	eax, 3
	sal	rax, 6
	lea	rcx, 656[rbx+rax]
	call	DisplaySprite
	movzx	eax, BYTE PTR 1312[rbx]
	lea	edx, -2[rsi]
	cmp	dl, BYTE PTR [rdi+rax]
	jb	.L405
	jmp	.L404
	.seh_endproc
	.p2align 4
	.def	Task_TransitionInUIAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_TransitionInUIAnim
Task_TransitionInUIAnim:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR [rax]
	mov	rcx, QWORD PTR 24[r8]
	mov	eax, DWORD PTR 1332[rcx]
	movzx	edx, BYTE PTR 1317[rcx]
	add	eax, 1
	lea	r9d, 1[rdx]
	mov	DWORD PTR 1332[rcx], eax
	mov	BYTE PTR 1317[rcx], r9b
	cmp	eax, 15
	ja	.L423
	call	RenderTransitionInUIAnim
.L422:
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	movzx	ecx, WORD PTR 2[rax]
	lea	edx, -1[rcx]
	movzx	ecx, WORD PTR 8[rax]
	and	dx, 255
	mov	WORD PTR 2[rax], dx
	lea	edx, -1[rcx]
	movzx	ecx, WORD PTR 10[rax]
	and	dx, 255
	mov	WORD PTR 8[rax], dx
	lea	edx, 1[rcx]
	movzx	edx, dl
	mov	WORD PTR 10[rax], dx
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L423:
	add	edx, 2
	lea	rax, Task_CharacterSelectMain[rip]
	mov	DWORD PTR 1332[rcx], 0
	mov	BYTE PTR 1317[rcx], dl
	mov	QWORD PTR 40[r8], rax
	call	RenderCarouselScrollAnim
	jmp	.L422
	.seh_endproc
	.p2align 4
	.def	Task_FadeOutAndExitToPrevious;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_FadeOutAndExitToPrevious
Task_FadeOutAndExitToPrevious:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	mov	rcx, rbx
	call	UpdateScreenFade
	cmp	al, 1
	je	.L427
	mov	rcx, rbx
	call	RenderCarouselScrollAnim
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	movd	xmm1, DWORD PTR .LC0[rip]
	movd	xmm2, DWORD PTR .LC1[rip]
	movd	xmm0, DWORD PTR 8[rdx]
	movzx	eax, WORD PTR 2[rdx]
	paddw	xmm0, xmm1
	sub	eax, 1
	and	ax, 255
	mov	WORD PTR 2[rdx], ax
	pand	xmm0, xmm2
	movd	DWORD PTR 8[rdx], xmm0
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L427:
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
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 0
	je	.L426
	add	rsp, 32
	pop	rbx
	jmp	CreateTimeAttackModeSelectionScreen
	.p2align 4,,10
	.p2align 3
.L426:
	add	rsp, 32
	pop	rbx
	jmp	CreateTitleScreenAtSinglePlayerMenu
	.seh_endproc
	.p2align 4
	.globl	CreateCharacterSelectionScreen
	.def	CreateCharacterSelectionScreen;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateCharacterSelectionScreen
CreateCharacterSelectionScreen:
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
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	rbp, QWORD PTR .refptr.gLoadedSaveGame[rip]
	xor	r12d, r12d
	xor	r13d, r13d
	mov	rax, QWORD PTR 0[rbp]
	movzx	eax, BYTE PTR 6[rax]
	sub	eax, 1
	mov	esi, ecx
	mov	edi, edx
	test	al, al
	jg	.L439
.L429:
	lea	rbx, 60[rsp]
	mov	r9d, -2063597563
	mov	r8, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	ecx, 3
	mov	rdx, rbx
	mov	DWORD PTR 60[rsp], 0
	mov	r14d, 5952
	call	DmaSet
	mov	r8, QWORD PTR .refptr.gMultiSioRecv[rip]
	mov	rdx, rbx
	mov	r9d, -2063597548
	mov	ecx, 3
	mov	DWORD PTR 60[rsp], 0
	call	DmaSet
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
	mov	ecx, 3
	mov	DWORD PTR [rax], 0
	call	m4aSongNumStart
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	edx, 5383
	xor	r9d, r9d
	lea	rcx, Task_FadeInAndStartRollInAnim[rip]
	mov	r8d, 16640
	mov	WORD PTR [rax], r14w
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	WORD PTR 4[rax], dx
	mov	edx, 1344
	mov	DWORD PTR [rax], 370021379
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	QWORD PTR [rax], 0
	lea	rax, CharacterSelectScreenOnDestroy[rip]
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	xor	ecx, ecx
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR 0[rbp]
	movzx	eax, BYTE PTR 19[rax]
	mov	BYTE PTR 1313[rbx], sil
	mov	DWORD PTR 1316[rbx], 16
	mov	BYTE PTR 1322[rbx], al
	movzx	eax, sil
	mov	DWORD PTR 1332[rbx], 0
	imul	eax, eax, -102
	mov	DWORD PTR 1326[rbx], 10879142
	mov	DWORD PTR 1340[rbx], 0
	mov	WORD PTR 1320[rbx], cx
	mov	BYTE PTR 1323[rbx], 0
	test	dil, dil
	je	.L430
	add	eax, 264
	mov	BYTE PTR 1315[rbx], 1
	and	eax, 1023
	sal	eax, 8
	add	eax, 2
	mov	DWORD PTR 1336[rbx], eax
	cmp	sil, 4
	ja	.L431
.L433:
	mov	BYTE PTR 1312[rbx], sil
.L432:
	mov	rax, QWORD PTR .LC22[rip]
	mov	rcx, rbx
	mov	esi, 2
	xor	edi, edi
	mov	DWORD PTR 8[rbx], 255
	mov	QWORD PTR [rbx], rax
	call	UpdateScreenFade
	mov	rbp, QWORD PTR .refptr.VRAM[rip]
	mov	edx, 1
	movdqu	xmm0, XMMWORD PTR .LC23[rip]
	mov	WORD PTR 274[rbx], dx
	lea	rcx, 208[rbx]
	lea	rax, 49152[rbp]
	mov	BYTE PTR 270[rbx], 0
	mov	QWORD PTR 216[rbx], rax
	xor	eax, eax
	mov	WORD PTR 226[rbx], ax
	lea	rax, 45056[rbp]
	mov	QWORD PTR 232[rbx], rax
	mov	eax, 20
	mov	WORD PTR 268[rbx], ax
	movups	XMMWORD PTR 252[rbx], xmm0
	call	DrawBackground
	mov	r8d, 32
	xor	r9d, r9d
	xor	ecx, ecx
	lea	rax, 40960[rbp]
	movdqu	xmm0, XMMWORD PTR .LC24[rip]
	mov	WORD PTR 34[rbx], cx
	lea	rcx, 16[rbx]
	mov	QWORD PTR 40[rbx], rax
	mov	WORD PTR 76[rbx], r8w
	mov	WORD PTR 82[rbx], r9w
	mov	QWORD PTR 24[rbx], rbp
	mov	BYTE PTR 78[rbx], 0
	movups	XMMWORD PTR 60[rbx], xmm0
	call	DrawBackground
	lea	rax, 16384[rbp]
	xor	r10d, r10d
	mov	r11d, 32
	mov	QWORD PTR 120[rbx], rax
	lea	rax, 43008[rbp]
	lea	rcx, 112[rbx]
	movdqu	xmm0, XMMWORD PTR .LC25[rip]
	mov	WORD PTR 178[rbx], si
	lea	rsi, 656[rbx]
	mov	WORD PTR 130[rbx], r10w
	mov	QWORD PTR 136[rbx], rax
	mov	WORD PTR 172[rbx], r11w
	mov	BYTE PTR 174[rbx], 0
	movups	XMMWORD PTR 156[rbx], xmm0
	call	DrawBackground
	mov	r14d, DWORD PTR .LC26[rip]
	.p2align 4,,10
	.p2align 3
.L434:
	mov	DWORD PTR 38[rsi], 0
	mov	ecx, 16
	call	VramMalloc
	mov	BYTE PTR 48[rsi], dil
	mov	rcx, rsi
	add	edi, 1
	mov	QWORD PTR 8[rsi], rax
	mov	eax, 256
	add	rsi, 64
	mov	WORD PTR -22[rsi], ax
	xor	eax, eax
	mov	WORD PTR -28[rsi], ax
	xor	eax, eax
	mov	DWORD PTR -48[rsi], r14d
	mov	WORD PTR -20[rsi], ax
	mov	BYTE PTR -15[rsi], -1
	mov	BYTE PTR -14[rsi], 16
	mov	BYTE PTR -11[rsi], 0
	mov	DWORD PTR -8[rsi], -1
	mov	DWORD PTR -32[rsi], 0
	call	UpdateSpriteAnimation
	cmp	dil, 5
	jne	.L434
	mov	ecx, 64
	xor	esi, esi
	mov	edi, 4351
	mov	DWORD PTR 1014[rbx], 0
	call	VramMalloc
	xor	r9d, r9d
	mov	r10d, -251
	mov	DWORD PTR 992[rbx], r14d
	mov	WORD PTR 1024[rbx], r10w
	xor	r14d, r14d
	lea	rcx, 976[rbx]
	mov	WORD PTR 1012[rbx], r9w
	mov	QWORD PTR 984[rbx], rax
	mov	DWORD PTR 1018[rbx], 192
	mov	BYTE PTR 1026[rbx], 16
	mov	BYTE PTR 1029[rbx], 0
	mov	DWORD PTR 1032[rbx], -1
	mov	DWORD PTR 1008[rbx], 0
	call	UpdateSpriteAnimation
	mov	ecx, 36
	mov	DWORD PTR 470[rbx], 0
	call	VramMalloc
	lea	rdx, sCharacterNameSubTextAssets[rip]
	xor	r11d, r11d
	mov	WORD PTR 468[rbx], si
	mov	QWORD PTR 440[rbx], rax
	movzx	eax, BYTE PTR 1312[rbx]
	mov	WORD PTR 448[rbx], r11w
	add	eax, r13d
	mov	WORD PTR 481[rbx], di
	xor	r13d, r13d
	cdqe
	mov	DWORD PTR 474[rbx], 256
	movzx	ecx, WORD PTR [rdx+rax*4]
	movzx	eax, WORD PTR 2[rdx+rax*4]
	mov	BYTE PTR 485[rbx], 0
	mov	DWORD PTR 488[rbx], -1
	mov	WORD PTR 450[rbx], cx
	lea	rcx, 432[rbx]
	mov	BYTE PTR 480[rbx], al
	mov	DWORD PTR 464[rbx], 0
	call	UpdateSpriteAnimation
	mov	ecx, 64
	mov	DWORD PTR 534[rbx], 0
	call	VramMalloc
	movzx	edx, BYTE PTR 1312[rbx]
	mov	WORD PTR 512[rbx], r13w
	mov	QWORD PTR 504[rbx], rax
	lea	rax, sCharacterTitleLeftSideAssets[rip]
	movzx	ecx, WORD PTR [rax+rdx*4]
	movzx	eax, WORD PTR 2[rax+rdx*4]
	mov	WORD PTR 532[rbx], r14w
	mov	DWORD PTR 538[rbx], 256
	mov	BYTE PTR 544[rbx], al
	mov	eax, 4351
	mov	WORD PTR 514[rbx], cx
	lea	rcx, 496[rbx]
	mov	WORD PTR 545[rbx], ax
	mov	BYTE PTR 549[rbx], 0
	mov	DWORD PTR 552[rbx], -1
	mov	DWORD PTR 528[rbx], 0
	call	UpdateSpriteAnimation
	mov	ecx, 64
	mov	DWORD PTR 614[rbx], 0
	call	VramMalloc
	movzx	edx, BYTE PTR 1312[rbx]
	mov	DWORD PTR 618[rbx], 256
	mov	QWORD PTR 584[rbx], rax
	lea	rax, sCharacteTitleRightSideAssets[rip]
	movzx	ecx, WORD PTR [rax+rdx*4]
	movzx	eax, WORD PTR 2[rax+rdx*4]
	mov	BYTE PTR 629[rbx], 0
	mov	DWORD PTR 632[rbx], -1
	mov	BYTE PTR 624[rbx], al
	xor	eax, eax
	mov	WORD PTR 592[rbx], ax
	xor	eax, eax
	mov	WORD PTR 612[rbx], ax
	mov	eax, 4351
	mov	WORD PTR 594[rbx], cx
	lea	rcx, 576[rbx]
	mov	WORD PTR 625[rbx], ax
	mov	DWORD PTR 608[rbx], 0
	call	UpdateSpriteAnimation
	mov	ecx, 54
	mov	DWORD PTR 342[rbx], 0
	call	VramMalloc
	mov	ecx, 4351
	mov	DWORD PTR 346[rbx], 256
	mov	QWORD PTR 312[rbx], rax
	lea	rax, sScreenTitleTextAssets[rip]
	movzx	edx, WORD PTR [rax+r12*4]
	movzx	eax, WORD PTR 2[rax+r12*4]
	mov	WORD PTR 353[rbx], cx
	lea	rcx, 304[rbx]
	mov	BYTE PTR 357[rbx], 0
	mov	WORD PTR 322[rbx], dx
	xor	edx, edx
	mov	BYTE PTR 352[rbx], al
	xor	eax, eax
	mov	WORD PTR 340[rbx], dx
	mov	WORD PTR 320[rbx], ax
	mov	DWORD PTR 360[rbx], -1
	mov	DWORD PTR 336[rbx], 0
	call	UpdateSpriteAnimation
	mov	ecx, 24
	mov	DWORD PTR 1094[rbx], 1179665
	call	VramMalloc
	movzx	esi, WORD PTR .LC3[rip]
	xor	r8d, r8d
	mov	edi, DWORD PTR .LC28[rip]
	mov	WORD PTR 1092[rbx], r8w
	lea	rcx, 1056[rbx]
	mov	DWORD PTR 1072[rbx], edi
	mov	WORD PTR 1104[rbx], si
	mov	QWORD PTR 1064[rbx], rax
	mov	DWORD PTR 1098[rbx], 256
	mov	BYTE PTR 1106[rbx], 16
	mov	BYTE PTR 1109[rbx], 0
	mov	DWORD PTR 1112[rbx], -1
	mov	DWORD PTR 1088[rbx], 0
	call	UpdateSpriteAnimation
	mov	ecx, 24
	mov	DWORD PTR 1158[rbx], 9306129
	call	VramMalloc
	xor	r9d, r9d
	mov	DWORD PTR 1136[rbx], edi
	xor	edi, edi
	mov	WORD PTR 1156[rbx], r9w
	lea	rcx, 1120[rbx]
	mov	WORD PTR 1168[rbx], si
	mov	QWORD PTR 1128[rbx], rax
	mov	DWORD PTR 1162[rbx], 256
	mov	BYTE PTR 1170[rbx], 16
	mov	BYTE PTR 1173[rbx], 0
	mov	DWORD PTR 1176[rbx], -1
	mov	DWORD PTR 1152[rbx], 2048
	call	UpdateSpriteAnimation
	xor	r11d, r11d
	mov	r10d, -246
	lea	rax, 66560[rbp]
	mov	WORD PTR 1232[rbx], r10w
	lea	rcx, 1184[rbx]
	mov	WORD PTR 1228[rbx], r11w
	mov	QWORD PTR 1192[rbx], rax
	mov	DWORD PTR 1200[rbx], 48234496
	mov	BYTE PTR 1234[rbx], 16
	mov	BYTE PTR 1237[rbx], 0
	mov	DWORD PTR 1240[rbx], -1
	mov	QWORD PTR 1216[rbx], 0
	mov	DWORD PTR 1224[rbx], 16777216
	call	UpdateSpriteAnimation
	lea	rax, 75136[rbp]
	mov	WORD PTR 1296[rbx], si
	xor	esi, esi
	mov	QWORD PTR 1256[rbx], rax
	lea	rcx, 1248[rbx]
	add	rbp, 69632
	mov	DWORD PTR 1264[rbx], 48627712
	mov	BYTE PTR 1298[rbx], 16
	mov	BYTE PTR 1301[rbx], 0
	mov	DWORD PTR 1304[rbx], -1
	mov	QWORD PTR 1280[rbx], 0
	mov	DWORD PTR 1288[rbx], 4194304
	mov	WORD PTR 1292[rbx], si
	call	UpdateSpriteAnimation
	movzx	edx, BYTE PTR 1312[rbx]
	lea	rax, sCharacterSpriteAssets[rip]
	mov	QWORD PTR 376[rbx], rbp
	xor	r12d, r12d
	mov	ebp, 4351
	mov	WORD PTR 384[rbx], di
	movzx	ecx, WORD PTR [rax+rdx*4]
	movzx	eax, WORD PTR 2[rax+rdx*4]
	mov	WORD PTR 417[rbx], bp
	mov	BYTE PTR 421[rbx], 0
	mov	WORD PTR 386[rbx], cx
	lea	rcx, 368[rbx]
	mov	BYTE PTR 416[rbx], al
	mov	DWORD PTR 424[rbx], -1
	mov	QWORD PTR 400[rbx], 0
	mov	DWORD PTR 408[rbx], 16777216
	mov	WORD PTR 412[rbx], r12w
	call	UpdateSpriteAnimation
	mov	rcx, QWORD PTR .refptr.gObjPalette[rip]
	mov	eax, -16
	.p2align 4,,10
	.p2align 3
.L435:
	movzx	edx, al
	xor	r8d, r8d
	mov	WORD PTR [rcx+rdx*2], r8w
	add	al, 1
	jne	.L435
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 2
	add	rsp, 64
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
.L430:
	add	eax, 366
	mov	BYTE PTR 1315[rbx], 0
	and	eax, 1023
	sal	eax, 8
	add	eax, 4
	mov	DWORD PTR 1336[rbx], eax
	cmp	sil, 3
	jbe	.L433
	mov	BYTE PTR 1312[rbx], 3
	jmp	.L432
	.p2align 4,,10
	.p2align 3
.L431:
	mov	BYTE PTR 1312[rbx], 4
	jmp	.L432
	.p2align 4,,10
	.p2align 3
.L439:
	movzx	r12d, al
	mov	r13d, 6
	jmp	.L429
	.seh_endproc
	.section .rdata,"dr"
sCharacterSilhouettes:
	.ascii "\10\4\7\6\5\3"
sCharacterChosenAnimLengths:
	.ascii "\36\36\36\36\36"
	.align 16
sCourselScrollAnimVelocities:
	.word	0
	.word	1536
	.word	2048
	.word	2560
	.word	3328
	.word	3712
	.word	3584
	.word	3328
	.word	2560
	.word	2048
	.word	1536
	.align 16
gUnknown_080D7282:
	.ascii "\1\2\3\0\0"
	.ascii "\1\2\3\4\0"
	.ascii "\3\0\1\2\0"
	.ascii "\4\0\1\2\3"
	.align 8
gCharacterAnnouncements:
	.word	202
	.word	206
	.word	203
	.word	204
	.word	205
gUnknown_080D7274:
	.ascii "\10\12\12\16"
	.align 16
sScreenTitleTextAssets:
	.word	740
	.word	0
	.word	743
	.word	0
	.word	744
	.word	0
	.word	748
	.word	0
	.word	745
	.word	0
	.word	746
	.word	0
	.align 32
sCharacterNameSubTextAssets:
	.word	741
	.word	0
	.word	741
	.word	1
	.word	741
	.word	2
	.word	741
	.word	3
	.word	741
	.word	4
	.word	741
	.word	5
	.word	747
	.word	0
	.word	747
	.word	1
	.word	747
	.word	2
	.word	747
	.word	3
	.word	747
	.word	4
	.word	741
	.word	5
	.align 16
sCharacterSelectedSpriteAssets:
	.word	736
	.word	1
	.word	736
	.word	3
	.word	736
	.word	5
	.word	736
	.word	7
	.word	736
	.word	9
	.align 16
sCharacterSpriteAssets:
	.word	736
	.word	0
	.word	736
	.word	2
	.word	736
	.word	4
	.word	736
	.word	6
	.word	736
	.word	8
	.align 16
sCharacteTitleRightSideAssets:
	.word	739
	.word	1
	.word	739
	.word	9
	.word	739
	.word	3
	.word	739
	.word	5
	.word	739
	.word	7
	.word	739
	.word	11
	.align 4
sCharacterTitleLeftSideAssets:
	.word	739
	.word	0
	.word	739
	.word	8
	.word	739
	.word	2
	.word	739
	.word	4
	.word	739
	.word	6
	.word	739
	.word	10
	.align 4
.LC0:
	.word	-1
	.word	1
	.align 4
.LC1:
	.word	255
	.word	255
	.align 4
.LC2:
	.word	101
	.word	79
	.align 2
.LC3:
	.byte	0
	.byte	-1
	.align 4
.LC11:
	.word	40
	.word	79
	.align 8
.LC12:
	.word	0
	.word	1
	.word	0
	.word	384
	.align 8
.LC22:
	.word	0
	.word	2
	.word	0
	.word	384
	.align 16
.LC23:
	.word	0
	.word	0
	.word	99
	.word	0
	.word	0
	.word	0
	.word	0
	.word	30
	.align 16
.LC24:
	.word	0
	.word	0
	.word	373
	.word	0
	.word	0
	.word	0
	.word	0
	.word	32
	.align 16
.LC25:
	.word	0
	.word	0
	.word	374
	.word	0
	.word	0
	.word	0
	.word	0
	.word	32
	.align 4
.LC26:
	.word	0
	.word	737
	.align 4
.LC28:
	.word	0
	.word	738
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	UpdateScreenFade;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	TransformSprite;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	CreateCourseSelectionScreen;	.scl	2;	.type	32;	.endef
	.def	GameStageStart;	.scl	2;	.type	32;	.endef
	.def	TasksDestroyInPriorityRange;	.scl	2;	.type	32;	.endef
	.def	LinkCommunicationError;	.scl	2;	.type	32;	.endef
	.def	CreateMultiplayerResultsScreen;	.scl	2;	.type	32;	.endef
	.def	CreateTimeAttackLevelSelectScreen;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	CreateTimeAttackModeSelectionScreen;	.scl	2;	.type	32;	.endef
	.def	CreateTitleScreenAtSinglePlayerMenu;	.scl	2;	.type	32;	.endef
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	DrawBackground;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
	.section	.rdata$.refptr.gObjPalette, "dr"
	.globl	.refptr.gObjPalette
	.linkonce	discard
.refptr.gObjPalette:
	.quad	gObjPalette
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
	.section	.rdata$.refptr.gInput, "dr"
	.globl	.refptr.gInput
	.linkonce	discard
.refptr.gInput:
	.quad	gInput
	.section	.rdata$.refptr.gMultiplayerCharacters, "dr"
	.globl	.refptr.gMultiplayerCharacters
	.linkonce	discard
.refptr.gMultiplayerCharacters:
	.quad	gMultiplayerCharacters
	.section	.rdata$.refptr.gMultiSioSend, "dr"
	.globl	.refptr.gMultiSioSend
	.linkonce	discard
.refptr.gMultiSioSend:
	.quad	gMultiSioSend
	.section	.rdata$.refptr.gPressedKeys, "dr"
	.globl	.refptr.gPressedKeys
	.linkonce	discard
.refptr.gPressedKeys:
	.quad	gPressedKeys
	.section	.rdata$.refptr.gLoadedSaveGame, "dr"
	.globl	.refptr.gLoadedSaveGame
	.linkonce	discard
.refptr.gLoadedSaveGame:
	.quad	gLoadedSaveGame
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
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
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
	.section	.rdata$.refptr.gMultiSioRecv, "dr"
	.globl	.refptr.gMultiSioRecv
	.linkonce	discard
.refptr.gMultiSioRecv:
	.quad	gMultiSioRecv
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
	.section	.rdata$.refptr.gOamMatrixIndex, "dr"
	.globl	.refptr.gOamMatrixIndex
	.linkonce	discard
.refptr.gOamMatrixIndex:
	.quad	gOamMatrixIndex
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
	.section	.rdata$.refptr.gBgScrollRegs, "dr"
	.globl	.refptr.gBgScrollRegs
	.linkonce	discard
.refptr.gBgScrollRegs:
	.quad	gBgScrollRegs
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
