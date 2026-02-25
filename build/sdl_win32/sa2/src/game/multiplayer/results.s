	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	sub_805C504;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_805C504
sub_805C504:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	mov	rcx, QWORD PTR .refptr.gGameMode[rip]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gMultiplayerConnections[rip]
	cmp	BYTE PTR [rcx], 2
	movzx	r11d, BYTE PTR [rax]
	jbe	.L4
	test	r11b, 1
	je	.L4
	mov	rax, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	xor	ecx, ecx
	mov	r9d, 1
	mov	r10d, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
.L7:
	mov	r8d, r9d
	sal	r8d, cl
	test	r8d, r10d
	jne	.L5
	movzx	r8d, BYTE PTR [rax]
	lea	ebx, 1[r8]
	mov	BYTE PTR [rax], bl
	cmp	r8b, -76
	ja	.L30
.L6:
	add	ecx, 1
	cmp	ecx, 4
	je	.L4
	add	rax, 1
	bt	r11d, ecx
	jc	.L7
	.p2align 4,,10
	.p2align 3
.L4:
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	mov	ebx, 64
	xor	r10d, r10d
	mov	rax, QWORD PTR [rax]
	mov	rcx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 4
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	add	rax, 30
	mov	QWORD PTR [r8], rax
	mov	rax, QWORD PTR .refptr.gHBlankCopySize[rip]
	mov	r8, QWORD PTR .refptr.gMultiplayerCharacters[rip]
	mov	BYTE PTR [rax], 2
	movzx	eax, BYTE PTR 708[rcx]
	lea	rcx, 128[rdx]
	movd	xmm0, eax
	punpcklwd	xmm0, xmm0
	pshufd	xmm0, xmm0, 0
	movups	XMMWORD PTR [rdx], xmm0
	movups	XMMWORD PTR 16[rdx], xmm0
	movups	XMMWORD PTR 32[rdx], xmm0
	movups	XMMWORD PTR 48[rdx], xmm0
.L3:
	bt	r11d, r10d
	lea	r9d, -32[rbx]
	lea	rdx, -64[rcx]
	jnc	.L31
.L8:
	test	r10b, 1
	jne	.L11
	.p2align 4,,10
	.p2align 3
.L10:
	movsx	eax, BYTE PTR [r8]
	add	rdx, 2
	add	eax, 1
	sal	eax, 5
	sub	eax, r9d
	mov	WORD PTR -2[rdx], ax
	cmp	rdx, rcx
	jne	.L10
	add	r10d, 1
	add	ebx, 32
	add	rcx, 64
	add	r8, 1
	bt	r11d, r10d
	lea	r9d, -32[rbx]
	lea	rdx, -64[rcx]
	jc	.L8
.L31:
	mov	eax, 224
	sub	eax, ebx
	movd	xmm0, eax
	punpcklwd	xmm0, xmm0
	pshufd	xmm0, xmm0, 0
	movups	XMMWORD PTR -64[rcx], xmm0
	movups	XMMWORD PTR -48[rcx], xmm0
	movups	XMMWORD PTR -32[rcx], xmm0
	movups	XMMWORD PTR -16[rcx], xmm0
.L9:
	add	r10d, 1
	cmp	r10d, 4
	je	.L32
	add	ebx, 32
	add	rcx, 64
	add	r8, 1
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L11:
	movsx	eax, BYTE PTR [r8]
	add	rdx, 2
	add	eax, 1
	sal	eax, 5
	sub	eax, r9d
	mov	WORD PTR -2[rdx], ax
	cmp	rdx, rcx
	jne	.L11
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L32:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	mov	BYTE PTR [rax], 0
	jmp	.L6
.L30:
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
	jmp	LinkCommunicationError
	.seh_endproc
	.p2align 4
	.def	sub_805C3D0;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_805C3D0
sub_805C3D0:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, WORD PTR 704[rbx]
	add	ax, 512
	mov	WORD PTR 704[rbx], ax
	cmp	ax, 4096
	jbe	.L34
	mov	eax, 4096
	mov	edx, 16
	xor	ecx, ecx
	mov	WORD PTR 704[rbx], ax
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	mov	WORD PTR 4[rax], dx
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	mov	edx, 65535
	and	DWORD PTR [rax], -5
	call	TasksDestroyInPriorityRange
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueIndex[rip]
	cmp	BYTE PTR 707[rbx], 1
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueCursor[rip]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR .refptr.gBgSpritesCount[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyQueueIndex[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyCursor[rip]
	mov	BYTE PTR [rax], dl
	je	.L38
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	movzx	eax, BYTE PTR [rax]
	cmp	al, 3
	je	.L39
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rcx, QWORD PTR [rdx]
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	movsx	rdx, BYTE PTR [rdx]
	movzx	edx, BYTE PTR 7[rcx+rdx]
	or	al, dl
	je	.L40
.L37:
	xor	r8d, r8d
	xor	ecx, ecx
	add	rsp, 32
	pop	rbx
	jmp	CreateCourseSelectionScreen
	.p2align 4,,10
	.p2align 3
.L34:
	call	sub_805C504
	movzx	edx, BYTE PTR 705[rbx]
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	mov	WORD PTR 4[rax], dx
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L38:
	add	rsp, 32
	pop	rbx
	jmp	CreateMultiplayerLobbyScreen
	.p2align 4,,10
	.p2align 3
.L39:
	mov	rax, QWORD PTR .refptr.gMultiplayerUnlockedLevels[rip]
	movzx	edx, BYTE PTR [rax]
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L40:
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	BYTE PTR [rax], 0
	add	rsp, 32
	pop	rbx
	jmp	GameStageStart
	.seh_endproc
	.p2align 4
	.def	sub_805C30C;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_805C30C
sub_805C30C:
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
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rbx]
	mov	rsi, QWORD PTR 24[rax]
	movzx	eax, WORD PTR 704[rsi]
	cmp	BYTE PTR 707[rsi], 1
	lea	edx, 1[rax]
	mov	WORD PTR 704[rsi], dx
	je	.L65
	cmp	ax, 60
	jbe	.L43
.L44:
	xor	eax, eax
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_BGM[rip]
	mov	edx, 255
	lea	rdi, sub_805C3D0[rip]
	mov	WORD PTR 704[rsi], ax
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	mov	WORD PTR [rax], dx
	xor	edx, edx
	call	m4aMPlayFadeOut
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_SE1[rip]
	xor	edx, edx
	call	m4aMPlayFadeOut
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_SE2[rip]
	xor	edx, edx
	call	m4aMPlayFadeOut
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_SE3[rip]
	xor	edx, edx
	call	m4aMPlayFadeOut
	mov	rax, QWORD PTR [rbx]
	mov	QWORD PTR 40[rax], rdi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	sub_805C3D0
	.p2align 4,,10
	.p2align 3
.L65:
	cmp	ax, 300
	ja	.L44
.L43:
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	rbp, QWORD PTR .refptr.gMultiplayerConnections[rip]
	cmp	BYTE PTR [rdx], 2
	movzx	eax, BYTE PTR 0[rbp]
	jbe	.L47
	test	al, 1
	je	.L47
	mov	rdx, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	xor	ecx, ecx
	mov	r9d, 1
	mov	r10d, DWORD PTR [rdx]
	mov	rdx, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
.L51:
	mov	r8d, r9d
	sal	r8d, cl
	test	r8d, r10d
	jne	.L48
	movzx	r8d, BYTE PTR [rdx]
	lea	r11d, 1[r8]
	mov	BYTE PTR [rdx], r11b
	cmp	r8b, -76
	ja	.L66
.L49:
	add	ecx, 1
	cmp	ecx, 4
	je	.L47
	add	rdx, 1
	bt	eax, ecx
	jc	.L51
	.p2align 4,,10
	.p2align 3
.L47:
	xor	ebx, ebx
	lea	rdi, 192[rsi]
	bt	eax, ebx
	jc	.L67
	.p2align 4,,10
	.p2align 3
.L53:
	add	ebx, 1
	add	rdi, 64
	cmp	ebx, 4
	je	.L50
.L68:
	movzx	eax, BYTE PTR 0[rbp]
	bt	eax, ebx
	jnc	.L53
.L67:
	lea	rcx, 256[rdi]
	call	DisplaySprite
	cmp	BYTE PTR 707[rsi], 1
	jne	.L53
	mov	rcx, rdi
	add	ebx, 1
	add	rdi, 64
	call	DisplaySprite
	cmp	ebx, 4
	jne	.L68
.L50:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	sub_805C504
	.p2align 4,,10
	.p2align 3
.L48:
	mov	BYTE PTR [rdx], 0
	jmp	.L49
.L66:
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
	call	LinkCommunicationError
	jmp	.L50
	.seh_endproc
	.p2align 4
	.def	sub_805C0F0;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_805C0F0
sub_805C0F0:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	mov	r8, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	or	WORD PTR [rax], 6144
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	jbe	.L73
	mov	rax, QWORD PTR .refptr.gMultiplayerConnections[rip]
	movzx	r11d, BYTE PTR [rax]
	test	r11b, 1
	je	.L73
	mov	rax, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	xor	ecx, ecx
	mov	r9d, 1
	mov	r10d, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
.L76:
	mov	edx, r9d
	sal	edx, cl
	test	edx, r10d
	jne	.L74
	movzx	edx, BYTE PTR [rax]
	lea	ebx, 1[rdx]
	mov	BYTE PTR [rax], bl
	cmp	dl, -76
	ja	.L102
.L75:
	add	ecx, 1
	cmp	ecx, 4
	je	.L73
	add	rax, 1
	bt	r11d, ecx
	jc	.L76
	.p2align 4,,10
	.p2align 3
.L73:
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rdx]
	movzx	edi, WORD PTR 704[rax]
	lea	r10d, 1024[rdi]
	mov	WORD PTR 704[rax], r10w
	cmp	r10w, -4096
	ja	.L103
	mov	rdx, QWORD PTR .refptr.gFlags[rip]
	mov	rdi, QWORD PTR .refptr.REG_BASE[rip]
	shr	r10w, 8
	mov	rcx, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	or	DWORD PTR [rdx], 4
	lea	rdx, 28[rdi]
	mov	QWORD PTR [rcx], rdx
	mov	rdx, QWORD PTR .refptr.gHBlankCopySize[rip]
	movzx	ecx, BYTE PTR 708[rax]
	mov	rax, r8
	mov	BYTE PTR [rdx], 4
	lea	rdx, 128[r8]
.L77:
	pxor	xmm0, xmm0
	add	rax, 32
	pinsrw	xmm0, ecx, 1
	punpckldq	xmm0, xmm0
	punpcklqdq	xmm0, xmm0
	movups	XMMWORD PTR -32[rax], xmm0
	movups	XMMWORD PTR -16[rax], xmm0
	cmp	rax, rdx
	jne	.L77
	mov	rax, QWORD PTR .refptr.gMultiplayerConnections[rip]
	lea	rcx, 256[r8]
	xor	ebx, ebx
	mov	r11d, 240
	sub	r11d, r10d
	mov	esi, 64
	sub	r10w, 240
	mov	r8, QWORD PTR .refptr.gMultiplayerCharacters[rip]
	movzx	edi, BYTE PTR [rax]
	lea	rax, -128[rcx]
	lea	r9d, -32[rsi]
	mov	rdx, rax
	bt	edi, ebx
	jnc	.L104
.L78:
	test	bl, 1
	jne	.L83
	.p2align 4,,10
	.p2align 3
.L82:
	mov	WORD PTR [rdx], r10w
	movsx	eax, BYTE PTR [r8]
	add	rdx, 4
	add	eax, 1
	sal	eax, 5
	sub	eax, r9d
	mov	WORD PTR -2[rdx], ax
	cmp	rdx, rcx
	jne	.L82
	add	ebx, 1
.L101:
	sub	rcx, -128
	add	esi, 32
	add	r8, 1
	bt	edi, ebx
	lea	rax, -128[rcx]
	lea	r9d, -32[rsi]
	mov	rdx, rax
	jc	.L78
.L104:
	mov	edx, 224
	sub	edx, esi
.L79:
	pxor	xmm0, xmm0
	add	rax, 32
	pinsrw	xmm0, edx, 1
	punpckldq	xmm0, xmm0
	punpcklqdq	xmm0, xmm0
	movups	XMMWORD PTR -32[rax], xmm0
	movups	XMMWORD PTR -16[rax], xmm0
	cmp	rax, rcx
	jne	.L79
.L80:
	add	ebx, 1
	cmp	ebx, 4
	jne	.L101
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L83:
	mov	WORD PTR [rdx], r11w
	movsx	eax, BYTE PTR [r8]
	add	rdx, 4
	add	eax, 1
	sal	eax, 5
	sub	eax, r9d
	mov	WORD PTR -2[rdx], ax
	cmp	rdx, rcx
	jne	.L83
	jmp	.L80
	.p2align 4,,10
	.p2align 3
.L74:
	mov	BYTE PTR [rax], 0
	jmp	.L75
.L103:
	xor	ecx, ecx
	mov	WORD PTR 704[rax], cx
	lea	rax, sub_805C30C[rip]
	mov	QWORD PTR 40[rdx], rax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	sub_805C30C
.L102:
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
	.seh_endproc
	.p2align 4
	.globl	CreateMultiplayerResultsScreen
	.def	CreateMultiplayerResultsScreen;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateMultiplayerResultsScreen
CreateMultiplayerResultsScreen:
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
	sub	rsp, 88
	.seh_stackalloc	88
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	pxor	xmm0, xmm0
	xor	r8d, r8d
	mov	edx, 64
	xor	r9d, r9d
	mov	rsi, QWORD PTR .refptr.VRAM[rip]
	mov	rax, QWORD PTR [rax]
	movzx	ebp, BYTE PTR 6[rax]
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	movups	XMMWORD PTR [rax], xmm0
	mov	QWORD PTR 16[rax], 0
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	DWORD PTR 56[rsp], ecx
	mov	ecx, 24075
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	lea	rdx, 76[rsp]
	mov	DWORD PTR 76[rsp], 0
	mov	WORD PTR 6[rax], cx
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	mov	ecx, 3
	mov	WORD PTR [rax], r8w
	lea	r8, 40928[rsi]
	mov	WORD PTR 4[rax], r9w
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
	mov	r9d, -2063597552
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	mov	BYTE PTR 3[rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	mov	DWORD PTR 12[rax], 1090453504
	call	DmaSet
	mov	edx, 712
	xor	r9d, r9d
	mov	QWORD PTR 32[rsp], 0
	mov	r8d, 8192
	lea	rcx, sub_805C0F0[rip]
	call	TaskCreate
	mov	r12, QWORD PTR .refptr.gMultiplayerConnections[rip]
	xor	r10d, r10d
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, BYTE PTR [r12]
	mov	WORD PTR 704[rbx], r10w
	mov	edx, eax
	and	edx, 1
	je	.L106
	test	al, 2
	je	.L122
	test	al, 4
	je	.L123
	test	al, 8
	je	.L124
	mov	edx, 4
.L106:
	mov	eax, DWORD PTR 56[rsp]
	mov	BYTE PTR 706[rbx], dl
	mov	rcx, rbx
	mov	DWORD PTR 44[rbx], 0
	mov	BYTE PTR 707[rbx], al
	neg	al
	sbb	al, al
	mov	QWORD PTR 50[rbx], 0
	and	eax, -34
	mov	DWORD PTR 58[rbx], 2097182
	mov	BYTE PTR 708[rbx], al
	lea	rax, 32768[rsi]
	mov	QWORD PTR 8[rbx], rax
	xor	eax, eax
	mov	WORD PTR 18[rbx], ax
	lea	rax, 61440[rsi]
	mov	QWORD PTR 24[rbx], rax
	lea	rax, sResultsScreenBgSelectedCharacters[rip]
	movzx	eax, WORD PTR [rax+rbp*2]
	mov	BYTE PTR 62[rbx], 0
	mov	WORD PTR 48[rbx], ax
	mov	eax, 3
	mov	WORD PTR 66[rbx], ax
	call	DrawBackground
	mov	r8, QWORD PTR .refptr.gMultiplayerRanks[rip]
	xor	eax, eax
.L111:
	cmp	BYTE PTR [rax+r8], -1
	je	.L110
	add	rax, 1
	cmp	rax, 4
	jne	.L111
	mov	DWORD PTR 60[rsp], 4
.L112:
	lea	r15, sResultsScreenPlayerCursor[rip+4]
	lea	rdi, 73728[rsi]
	xor	esi, esi
	add	rbx, 192
	mov	r13d, 31
	lea	r14, 2[r15]
.L119:
	movzx	eax, BYTE PTR [r12]
	bt	eax, esi
	jnc	.L113
	mov	eax, 200
	mov	WORD PTR 38[rbx], ax
	lea	eax, 20[r13]
	mov	WORD PTR 40[rbx], ax
	lea	rax, -8192[rdi]
	mov	QWORD PTR 8[rbx], rax
	mov	eax, 1024
	mov	WORD PTR 42[rbx], ax
	xor	eax, eax
	mov	WORD PTR 16[rbx], ax
	movsx	ecx, BYTE PTR [rsi+r8]
	mov	eax, ecx
	cmp	cl, 5
	je	.L139
	cmp	ecx, 4
	je	.L140
	cmp	DWORD PTR 60[rsp], 2
	je	.L117
	mov	rcx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rcx], 4
	je	.L117
	lea	rcx, 0[0+rbp*8]
	lea	r10, gUnknown_080D9100[rip]
	sub	rcx, rbp
	lea	rcx, [r10+rcx*8]
	movzx	r10d, WORD PTR 28[rcx]
	add	al, BYTE PTR 30[rcx]
	mov	WORD PTR 18[rbx], r10w
	jmp	.L115
	.p2align 4,,10
	.p2align 3
.L139:
	lea	rax, 0[0+rbp*8]
	lea	rcx, gUnknown_080D9100[rip]
	sub	rax, rbp
	lea	rax, [rcx+rax*8]
	movzx	ecx, WORD PTR 12[rax]
	movzx	eax, BYTE PTR 14[rax]
	mov	WORD PTR 18[rbx], cx
.L115:
	xor	edx, edx
	mov	BYTE PTR 48[rbx], al
	xor	eax, eax
	mov	rcx, rbx
	mov	WORD PTR 44[rbx], dx
	mov	WORD PTR 36[rbx], ax
	mov	BYTE PTR 49[rbx], -1
	mov	BYTE PTR 50[rbx], 16
	mov	BYTE PTR 53[rbx], 0
	mov	DWORD PTR 32[rbx], 4096
	call	UpdateSpriteAnimation
	movzx	eax, WORD PTR [r15+rsi*8]
	xor	ecx, ecx
	xor	r9d, r9d
	mov	r8d, 1024
	xor	r10d, r10d
	xor	r11d, r11d
	mov	WORD PTR 294[rbx], cx
	mov	WORD PTR 274[rbx], ax
	movzx	eax, BYTE PTR [r14+rsi*8]
	lea	rcx, 256[rbx]
	mov	WORD PTR 298[rbx], r8w
	mov	WORD PTR 296[rbx], r13w
	mov	QWORD PTR 264[rbx], rdi
	mov	WORD PTR 272[rbx], r9w
	mov	BYTE PTR 304[rbx], al
	mov	WORD PTR 292[rbx], r10w
	mov	WORD PTR 300[rbx], r11w
	mov	BYTE PTR 305[rbx], -1
	mov	BYTE PTR 306[rbx], 16
	mov	BYTE PTR 309[rbx], 0
	mov	DWORD PTR 288[rbx], 4096
	call	UpdateSpriteAnimation
	mov	r8, QWORD PTR .refptr.gMultiplayerRanks[rip]
.L113:
	add	rsi, 1
	add	rbx, 64
	add	r13d, 32
	add	rdi, 2048
	cmp	rsi, 4
	jne	.L119
	cmp	BYTE PTR 56[rsp], 0
	jne	.L141
	add	rsp, 88
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
.L117:
	lea	rcx, 0[0+rbp*8]
	lea	r10, gUnknown_080D9100[rip]
	sub	rcx, rbp
	lea	rcx, [r10+rcx*8]
	movzx	r10d, WORD PTR 4[rcx]
	add	al, BYTE PTR 6[rcx]
	mov	WORD PTR 18[rbx], r10w
	jmp	.L115
	.p2align 4,,10
	.p2align 3
.L140:
	lea	rax, 0[0+rbp*8]
	lea	rcx, gUnknown_080D9100[rip]
	sub	rax, rbp
	lea	rax, [rcx+rax*8]
	movzx	ecx, WORD PTR 20[rax]
	movzx	eax, BYTE PTR 22[rax]
	mov	WORD PTR 18[rbx], cx
	jmp	.L115
	.p2align 4,,10
	.p2align 3
.L141:
	mov	ecx, 59
	add	rsp, 88
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L110:
	mov	DWORD PTR 60[rsp], eax
	jmp	.L112
	.p2align 4,,10
	.p2align 3
.L122:
	mov	edx, 1
	jmp	.L106
.L123:
	mov	edx, 2
	jmp	.L106
.L124:
	mov	edx, 3
	jmp	.L106
	.seh_endproc
	.section .rdata,"dr"
	.align 8
sResultsScreenBgSelectedCharacters:
	.word	116
	.word	116
	.word	117
	.word	118
	.word	119
	.word	120
	.word	121
	.align 32
sResultsScreenPlayerCursor:
	.long	0
	.word	1074
	.byte	13
	.space 1
	.long	0
	.word	1074
	.byte	14
	.space 1
	.long	0
	.word	1074
	.byte	15
	.space 1
	.long	0
	.word	1074
	.byte	16
	.space 1
	.align 32
gUnknown_080D9100:
	.long	0
	.word	1077
	.byte	0
	.space 1
	.long	0
	.word	1077
	.byte	1
	.space 1
	.long	0
	.word	1077
	.byte	2
	.space 1
	.long	0
	.word	1077
	.byte	3
	.space 1
	.long	0
	.word	1077
	.byte	4
	.space 1
	.long	0
	.word	1077
	.byte	5
	.space 1
	.long	0
	.word	1077
	.byte	6
	.space 1
	.long	0
	.word	1077
	.byte	0
	.space 1
	.long	0
	.word	1077
	.byte	1
	.space 1
	.long	0
	.word	1077
	.byte	2
	.space 1
	.long	0
	.word	1077
	.byte	3
	.space 1
	.long	0
	.word	1077
	.byte	4
	.space 1
	.long	0
	.word	1077
	.byte	5
	.space 1
	.long	0
	.word	1077
	.byte	6
	.space 1
	.long	0
	.word	1089
	.byte	0
	.space 1
	.long	0
	.word	1089
	.byte	1
	.space 1
	.long	0
	.word	1089
	.byte	2
	.space 1
	.long	0
	.word	1089
	.byte	3
	.space 1
	.long	0
	.word	1089
	.byte	4
	.space 1
	.long	0
	.word	1089
	.byte	5
	.space 1
	.long	0
	.word	1089
	.byte	6
	.space 1
	.long	0
	.word	1090
	.byte	0
	.space 1
	.long	0
	.word	1090
	.byte	1
	.space 1
	.long	0
	.word	1090
	.byte	2
	.space 1
	.long	0
	.word	1089
	.byte	3
	.space 1
	.long	0
	.word	1089
	.byte	4
	.space 1
	.long	0
	.word	1089
	.byte	5
	.space 1
	.long	0
	.word	1089
	.byte	6
	.space 1
	.long	0
	.word	1091
	.byte	0
	.space 1
	.long	0
	.word	1091
	.byte	1
	.space 1
	.long	0
	.word	1091
	.byte	2
	.space 1
	.long	0
	.word	1089
	.byte	3
	.space 1
	.long	0
	.word	1089
	.byte	4
	.space 1
	.long	0
	.word	1089
	.byte	5
	.space 1
	.long	0
	.word	1089
	.byte	6
	.space 1
	.long	0
	.word	1092
	.byte	0
	.space 1
	.long	0
	.word	1092
	.byte	1
	.space 1
	.long	0
	.word	1092
	.byte	2
	.space 1
	.long	0
	.word	1089
	.byte	3
	.space 1
	.long	0
	.word	1089
	.byte	4
	.space 1
	.long	0
	.word	1089
	.byte	5
	.space 1
	.long	0
	.word	1089
	.byte	6
	.space 1
	.long	0
	.word	1093
	.byte	0
	.space 1
	.long	0
	.word	1093
	.byte	1
	.space 1
	.long	0
	.word	1093
	.byte	2
	.space 1
	.long	0
	.word	1089
	.byte	3
	.space 1
	.long	0
	.word	1089
	.byte	4
	.space 1
	.long	0
	.word	1089
	.byte	5
	.space 1
	.long	0
	.word	1089
	.byte	6
	.space 1
	.ident	"GCC: (GNU) 13-win32"
	.def	TasksDestroyInPriorityRange;	.scl	2;	.type	32;	.endef
	.def	LinkCommunicationError;	.scl	2;	.type	32;	.endef
	.def	CreateCourseSelectionScreen;	.scl	2;	.type	32;	.endef
	.def	CreateMultiplayerLobbyScreen;	.scl	2;	.type	32;	.endef
	.def	GameStageStart;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayFadeOut;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	DrawBackground;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gMultiplayerRanks, "dr"
	.globl	.refptr.gMultiplayerRanks
	.linkonce	discard
.refptr.gMultiplayerRanks:
	.quad	gMultiplayerRanks
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
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
	.section	.rdata$.refptr.gLoadedSaveGame, "dr"
	.globl	.refptr.gLoadedSaveGame
	.linkonce	discard
.refptr.gLoadedSaveGame:
	.quad	gLoadedSaveGame
	.section	.rdata$.refptr.gMultiplayerUnlockedLevels, "dr"
	.globl	.refptr.gMultiplayerUnlockedLevels
	.linkonce	discard
.refptr.gMultiplayerUnlockedLevels:
	.quad	gMultiplayerUnlockedLevels
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
	.section	.rdata$.refptr.gMultiplayerCharacters, "dr"
	.globl	.refptr.gMultiplayerCharacters
	.linkonce	discard
.refptr.gMultiplayerCharacters:
	.quad	gMultiplayerCharacters
	.section	.rdata$.refptr.gHBlankCopySize, "dr"
	.globl	.refptr.gHBlankCopySize
	.linkonce	discard
.refptr.gHBlankCopySize:
	.quad	gHBlankCopySize
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
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gMultiplayerConnections, "dr"
	.globl	.refptr.gMultiplayerConnections
	.linkonce	discard
.refptr.gMultiplayerConnections:
	.quad	gMultiplayerConnections
	.section	.rdata$.refptr.gBgOffsetsHBlankPrimary, "dr"
	.globl	.refptr.gBgOffsetsHBlankPrimary
	.linkonce	discard
.refptr.gBgOffsetsHBlankPrimary:
	.quad	gBgOffsetsHBlankPrimary
