	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	sub_805D118;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_805D118
sub_805D118:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	mov	rdx, QWORD PTR [rax]
	movzx	eax, WORD PTR 1092[rcx]
	movd	xmm1, DWORD PTR 1088[rcx]
	add	eax, 1
	lea	r11, 640[rdx]
	and	ax, 1023
	mov	WORD PTR 1092[rcx], ax
	mov	r8, rax
	add	rax, 256
	and	eax, 2047
	and	r8d, 1023
	movzx	eax, WORD PTR [r9+rax*2]
	movzx	r8d, WORD PTR [r9+r8*2]
	sal	eax, 16
	or	eax, r8d
	movd	xmm0, eax
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	psraw	xmm0, 4
	or	DWORD PTR [rax], 4
	paddw	xmm0, xmm1
	mov	rax, QWORD PTR .refptr.gHBlankCopySize[rip]
	mov	BYTE PTR [rax], 4
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	movd	DWORD PTR 1088[rcx], xmm0
	mov	rcx, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	movdqu	xmm1, xmm0
	add	rax, 28
	psraw	xmm1, 8
	mov	QWORD PTR [rcx], rax
	mov	rax, QWORD PTR .refptr.gFrameCount[rip]
	mov	r8d, DWORD PTR [rax]
	mov	r10d, r8d
	sub	r10d, edx
	.p2align 4,,10
	.p2align 3
.L2:
	mov	eax, r8d
	lea	ecx, [r10+rdx]
	add	rdx, 4
	add	r8d, 2
	and	eax, 1023
	and	ecx, 1023
	movzx	eax, WORD PTR 512[r9+rax*2]
	movzx	ecx, WORD PTR [r9+rcx*2]
	sal	eax, 16
	or	eax, ecx
	movd	xmm0, eax
	psraw	xmm0, 11
	paddw	xmm0, xmm1
	movd	DWORD PTR -4[rdx], xmm0
	cmp	r11, rdx
	jne	.L2
	ret
	.seh_endproc
	.p2align 4
	.def	sub_805D610;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_805D610
sub_805D610:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	call	TaskDestroy
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	xor	r8d, r8d
	xor	ecx, ecx
	and	DWORD PTR [rax], -5
	mov	rax, QWORD PTR .refptr.gMultiplayerUnlockedLevels[rip]
	movzx	edx, BYTE PTR [rax]
	add	rsp, 40
	jmp	CreateCourseSelectionScreen
	.seh_endproc
	.p2align 4
	.def	sub_805D1F8;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_805D1F8
sub_805D1F8:
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rsi, QWORD PTR 24[rax]
	cmp	BYTE PTR 1103[rsi], 0
	jne	.L7
	mov	rax, QWORD PTR .refptr.gRepeatedKeys[rip]
	movzx	eax, WORD PTR [rax]
	test	al, 16
	je	.L8
	cmp	BYTE PTR 1102[rsi], 0
	je	.L77
.L9:
	mov	BYTE PTR 1102[rsi], 1
.L7:
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	mov	r12, QWORD PTR .refptr.gMultiplayerConnections[rip]
	cmp	BYTE PTR [rax], 2
	jbe	.L14
	movzx	r10d, BYTE PTR [r12]
	test	r10b, 1
	je	.L14
	mov	rax, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	xor	ecx, ecx
	mov	r8d, 1
	mov	r9d, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
.L17:
	mov	edx, r8d
	sal	edx, cl
	test	edx, r9d
	jne	.L15
	movzx	edx, BYTE PTR [rax]
	lea	r11d, 1[rdx]
	mov	BYTE PTR [rax], r11b
	cmp	dl, -76
	ja	.L76
.L16:
	add	ecx, 1
	cmp	ecx, 4
	je	.L14
	add	rax, 1
	bt	r10d, ecx
	jc	.L17
	.p2align 4,,10
	.p2align 3
.L14:
	mov	DWORD PTR 358[rsi], 1835221
	lea	rcx, 320[rsi]
	call	DisplaySprite
	movzx	r14d, BYTE PTR [r12]
	and	r14d, 1
	je	.L78
	mov	BYTE PTR 46[rsp], 0
	mov	rbp, rsi
	mov	r15d, 64
	xor	ebx, ebx
	mov	BYTE PTR 47[rsp], 0
	mov	rdi, QWORD PTR .refptr.gMultiSioRecv[rip]
.L28:
	mov	r13d, ebx
	add	ebx, 1
	test	r13d, r13d
	je	.L79
	movzx	eax, WORD PTR [rdi]
	lea	ecx, -16448[rax]
	cmp	cx, 1
	jbe	.L19
.L21:
	xor	r14d, r14d
.L25:
	cmp	ebx, 4
	je	.L27
.L20:
	movzx	eax, BYTE PTR [r12]
	add	rdi, 20
	add	rbp, 64
	add	r15d, 24
	bt	eax, ebx
	jc	.L28
	.p2align 4,,10
	.p2align 3
.L27:
	test	r14b, r14b
	je	.L29
	cmp	BYTE PTR 46[rsp], 0
	je	.L13
	cmp	BYTE PTR 47[rsp], 0
	jne	.L30
.L13:
	mov	BYTE PTR 1103[rsi], 0
.L29:
	mov	rcx, rsi
	call	sub_805D118
	mov	rdi, QWORD PTR .refptr.gPressedKeys[rip]
	movzx	edx, WORD PTR [rdi]
	test	dl, 2
	jne	.L80
	mov	r8, QWORD PTR .refptr.gInput[rip]
	movzx	ecx, BYTE PTR 1103[rsi]
	movzx	eax, BYTE PTR 1102[rsi]
	test	BYTE PTR [r8], 48
	jne	.L37
	and	edx, 1
	je	.L37
	test	al, al
	jne	.L43
	movzx	r15d, BYTE PTR 47[rsp]
	sub	ebx, 1
	cmp	ebx, r15d
	je	.L37
.L44:
	test	cl, cl
	jne	.L45
.L40:
	mov	ecx, 106
	call	m4aSongNumStart
	movzx	eax, BYTE PTR 1102[rsi]
.L45:
	mov	rdx, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	r8d, 16449
	mov	BYTE PTR 1103[rsi], 1
	mov	WORD PTR [rdx], r8w
	mov	BYTE PTR 2[rdx], al
.L46:
	movzx	r9d, BYTE PTR [r12]
	test	r9b, 1
	je	.L6
	mov	rcx, QWORD PTR .refptr.gMultiSioRecv[rip]
	mov	r8, QWORD PTR .refptr.REG_BASE[rip]
	xor	edx, edx
.L48:
	movzx	eax, BYTE PTR 296[r8]
	shr	al, 4
	and	eax, 3
	cmp	eax, edx
	je	.L47
	cmp	WORD PTR [rcx], 16449
	ja	.L76
.L47:
	add	edx, 1
	cmp	edx, 4
	je	.L6
	add	rcx, 20
	bt	r9d, edx
	jc	.L48
.L6:
	add	rsp, 56
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
.L43:
	cmp	al, 1
	je	.L42
	.p2align 4,,10
	.p2align 3
.L37:
	test	cl, cl
	jne	.L45
.L36:
	mov	rdx, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	ecx, 16448
	mov	WORD PTR [rdx], cx
	mov	BYTE PTR 2[rdx], al
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L79:
	lea	rcx, 576[rsi]
	call	UpdateSpriteAnimation
	movzx	eax, WORD PTR [rdi]
	lea	ecx, -16448[rax]
	cmp	cx, 1
	ja	.L81
.L19:
	cmp	ax, 16449
	je	.L22
	movzx	eax, BYTE PTR 2[rdi]
	lea	rcx, gUnknown_080D92B8[rip]
	mov	WORD PTR 40[rbp], r15w
	movzx	eax, BYTE PTR [rcx+rax]
	mov	rcx, rbp
	mov	WORD PTR 38[rbp], ax
	call	DisplaySprite
	movzx	eax, BYTE PTR 2[rdi]
	lea	rcx, gUnknown_080D92BA[rip]
	mov	WORD PTR 616[rsi], r15w
	lea	r9, 576[rsi]
	mov	r10, rax
	movzx	eax, BYTE PTR [rcx+rax]
	mov	ecx, r13d
	mov	WORD PTR 614[rsi], ax
	mov	eax, 16
	sal	eax, cl
	mov	ecx, DWORD PTR 608[rsi]
	test	r10b, r10b
	je	.L82
	or	ch, 4
	or	al, BYTE PTR [r12]
.L24:
	mov	DWORD PTR 608[rsi], ecx
	mov	rcx, r9
	mov	BYTE PTR [r12], al
	call	DisplaySprite
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L15:
	mov	BYTE PTR [rax], 0
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L82:
	not	eax
	and	ch, -5
	and	al, BYTE PTR [r12]
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L81:
	xor	r14d, r14d
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L8:
	test	al, 32
	je	.L7
	cmp	BYTE PTR 1102[rsi], 1
	je	.L83
.L10:
	mov	BYTE PTR 1102[rsi], 0
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L22:
	mov	rcx, rbp
	call	DisplaySprite
	cmp	WORD PTR 38[rbp], 40
	je	.L84
	add	BYTE PTR 46[rsp], 1
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L80:
	mov	ecx, 107
	call	m4aSongNumStart
	mov	rax, QWORD PTR .refptr.gInput[rip]
	mov	BYTE PTR 1103[rsi], 0
	test	BYTE PTR [rax], 48
	movzx	eax, BYTE PTR 1102[rsi]
	jne	.L36
	test	BYTE PTR [rdi], 1
	je	.L36
	test	al, al
	jne	.L39
	movzx	r15d, BYTE PTR 47[rsp]
	sub	ebx, 1
	cmp	ebx, r15d
	jne	.L40
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L30:
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	lea	rdi, sub_805D610[rip]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rax], rdi
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L77:
	mov	ecx, 108
	call	m4aSongNumStart
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L84:
	add	BYTE PTR 47[rsp], 1
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L76:
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
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	LinkCommunicationError
	.p2align 4,,10
	.p2align 3
.L78:
	mov	BYTE PTR 46[rsp], 0
	xor	ebx, ebx
	mov	BYTE PTR 47[rsp], 0
	jmp	.L13
.L39:
	xor	ecx, ecx
	cmp	al, 1
	jne	.L36
.L42:
	movzx	r13d, BYTE PTR 46[rsp]
	sub	ebx, 1
	mov	eax, 1
	cmp	ebx, r13d
	jne	.L44
	jmp	.L37
.L83:
	mov	ecx, 108
	call	m4aSongNumStart
	jmp	.L10
	.seh_endproc
	.p2align 4
	.def	sub_805D5C8;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_805D5C8
sub_805D5C8:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	movzx	eax, BYTE PTR 296[rax]
	mov	rcx, QWORD PTR 24[rdx]
	shr	al, 4
	mov	BYTE PTR 1103[rcx], 0
	and	eax, 1
	mov	BYTE PTR 1102[rcx], al
	lea	rax, sub_805D1F8[rip]
	mov	QWORD PTR 40[rdx], rax
	jmp	sub_805D1F8
	.seh_endproc
	.p2align 4
	.def	sub_805D644;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_805D644
sub_805D644:
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
	mov	rbp, QWORD PTR .refptr.gMultiplayerConnections[rip]
	mov	edi, 64
	xor	ebx, ebx
	lea	r12, gUnknown_080D92B8[rip]
	mov	rsi, rcx
.L88:
	movzx	eax, BYTE PTR 0[rbp]
	bt	eax, ebx
	jc	.L93
.L87:
	add	ebx, 1
	add	rsi, 64
	add	edi, 24
	cmp	ebx, 4
	jne	.L88
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L93:
	mov	eax, ebx
	mov	WORD PTR 40[rsi], di
	mov	rcx, rsi
	and	eax, 1
	movzx	eax, BYTE PTR [r12+rax]
	mov	WORD PTR 38[rsi], ax
	call	DisplaySprite
	jmp	.L87
	.seh_endproc
	.p2align 4
	.def	sub_805CB34;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_805CB34
sub_805CB34:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	jbe	.L95
	mov	rax, QWORD PTR .refptr.gMultiplayerConnections[rip]
	movzx	r10d, BYTE PTR [rax]
	test	r10b, 1
	je	.L95
	mov	rax, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	xor	ecx, ecx
	mov	r8d, 1
	mov	r9d, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
.L98:
	mov	edx, r8d
	sal	edx, cl
	test	edx, r9d
	jne	.L96
	movzx	edx, BYTE PTR [rax]
	lea	r11d, 1[rdx]
	mov	BYTE PTR [rax], r11b
	cmp	dl, -76
	ja	.L108
.L97:
	add	ecx, 1
	cmp	ecx, 4
	je	.L95
	add	rax, 1
	bt	r10d, ecx
	jc	.L98
	.p2align 4,,10
	.p2align 3
.L95:
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR .refptr.gBldRegs[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	DWORD PTR [rdx], 135282504
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	DWORD PTR 20[rax], 63
	mov	rbx, QWORD PTR 24[rcx]
	mov	DWORD PTR 8[rax], 240
	movzx	eax, WORD PTR 6[rdx]
	cmp	ax, 239
	jle	.L109
	lea	rax, sub_805CC34[rip]
	mov	QWORD PTR 40[rcx], rax
	mov	eax, 240
.L100:
	mov	rcx, rbx
	mov	WORD PTR 6[rdx], ax
	call	sub_805D118
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	sub_805D644
	.p2align 4,,10
	.p2align 3
.L109:
	add	eax, 4
	jmp	.L100
	.p2align 4,,10
	.p2align 3
.L96:
	mov	BYTE PTR [rax], 0
	jmp	.L97
	.p2align 4,,10
	.p2align 3
.L108:
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
	.def	sub_805CC34;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_805CC34
sub_805CC34:
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
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	rbp, QWORD PTR .refptr.gGameMode[rip]
	mov	rdi, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	or	WORD PTR [rax], 1024
	cmp	BYTE PTR 0[rbp], 2
	mov	edx, DWORD PTR [rdi]
	jbe	.L114
	mov	rax, QWORD PTR .refptr.gMultiplayerConnections[rip]
	movzx	r10d, BYTE PTR [rax]
	test	r10b, 1
	je	.L114
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
	xor	ecx, ecx
	mov	r9d, 1
.L117:
	mov	r8d, r9d
	sal	r8d, cl
	test	r8d, edx
	jne	.L115
	movzx	r8d, BYTE PTR [rax]
	lea	r11d, 1[r8]
	mov	BYTE PTR [rax], r11b
	cmp	r8b, -76
	ja	.L163
.L116:
	add	ecx, 1
	cmp	ecx, 4
	je	.L114
	add	rax, 1
	bt	r10d, ecx
	jc	.L117
	.p2align 4,,10
	.p2align 3
.L114:
	mov	r13, QWORD PTR .refptr.gCurTask[rip]
	and	edx, 128
	mov	rax, QWORD PTR 0[r13]
	mov	rbx, QWORD PTR 24[rax]
	jne	.L112
.L113:
	mov	rsi, QWORD PTR .refptr.REG_BASE[rip]
	mov	r14, QWORD PTR .refptr.gMultiplayerConnections[rip]
	xor	edx, edx
	mov	r12d, 1
.L126:
	movzx	eax, BYTE PTR 296[rsi]
	shr	al, 4
	and	eax, 3
	cmp	al, dl
	je	.L121
	movzx	eax, BYTE PTR [r14]
	bt	eax, edx
	jnc	.L121
	add	r12d, 1
	test	edx, edx
	je	.L164
.L121:
	add	edx, 1
	cmp	edx, 4
	jne	.L126
	test	BYTE PTR [rdi], -128
	jne	.L165
	mov	rax, QWORD PTR .refptr.gMultiSioRecv[rip]
	cmp	WORD PTR [rax], 1
	je	.L166
.L130:
	mov	rcx, rbx
	call	sub_805D118
	mov	rcx, rbx
	call	sub_805D644
	lea	rcx, 256[rbx]
	mov	DWORD PTR 294[rbx], 1835221
	call	DisplaySprite
	cmp	BYTE PTR 1094[rbx], 1
	mov	DWORD PTR 422[rbx], 3407942
	lea	rcx, 384[rbx]
	sbb	al, al
	mov	BYTE PTR 437[rbx], al
	call	DisplaySprite
	cmp	BYTE PTR 1094[rbx], 0
	mov	DWORD PTR 486[rbx], 3408042
	lea	rcx, 448[rbx]
	sete	BYTE PTR 501[rbx]
	call	DisplaySprite
	lea	rcx, 512[rbx]
	mov	DWORD PTR 550[rbx], 3408085
	call	DisplaySprite
	test	BYTE PTR [rdi], -128
	je	.L110
	mov	rax, QWORD PTR .refptr.gMultiSioSend[rip]
	xor	edx, edx
	cmp	BYTE PTR 1095[rbx], 0
	setne	dl
	mov	WORD PTR [rax], dx
	movzx	edx, BYTE PTR 1094[rbx]
	mov	BYTE PTR 2[rax], dl
.L110:
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
.L165:
	mov	rdx, QWORD PTR .refptr.gPressedKeys[rip]
	movzx	eax, BYTE PTR 1095[rbx]
	test	BYTE PTR [rdx], 1
	je	.L128
	test	al, al
	je	.L167
.L129:
	test	r12b, r12b
	je	.L130
	mov	rax, QWORD PTR .refptr.gMultiplayerConnections[rip]
	mov	rcx, QWORD PTR .refptr.gMultiSioRecv[rip]
	movzx	r8d, r12b
	xor	edx, edx
	mov	r9d, 1
	movzx	r10d, BYTE PTR [rax]
.L132:
	movzx	eax, BYTE PTR 296[rsi]
	shr	al, 4
	and	eax, 3
	cmp	al, dl
	je	.L131
	bt	r10d, edx
	jnc	.L131
	cmp	WORD PTR [rcx], 2
	sbb	r9b, -1
.L131:
	add	rdx, 1
	add	rcx, 20
	cmp	rdx, r8
	jne	.L132
	cmp	r9b, r12b
	jne	.L130
	cmp	BYTE PTR 1094[rbx], 0
	je	.L133
.L162:
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	mov	ecx, 7
	mov	r8d, 3
	movdqu	xmm0, XMMWORD PTR .LC6[rip]
	mov	WORD PTR 956[rbx], cx
	lea	rcx, 896[rbx]
	lea	rdi, sub_805D5C8[rip]
	mov	BYTE PTR 2[rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	mov	BYTE PTR 958[rbx], 0
	mov	DWORD PTR 8[rax], 553582592
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	WORD PTR 962[rbx], r8w
	lea	rdx, 32768[rax]
	add	rax, 45056
	movups	XMMWORD PTR 940[rbx], xmm0
	mov	QWORD PTR 904[rbx], rdx
	xor	edx, edx
	mov	QWORD PTR 920[rbx], rax
	mov	WORD PTR 914[rbx], dx
	call	DrawBackground
	mov	rax, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	r9d, 16437
	mov	BYTE PTR 1095[rbx], 0
	mov	BYTE PTR 0[rbp], 4
	mov	WORD PTR [rax], r9w
	mov	rax, QWORD PTR 0[r13]
	mov	QWORD PTR 40[rax], rdi
	jmp	.L110
	.p2align 4,,10
	.p2align 3
.L112:
	cmp	BYTE PTR 1095[rbx], 0
	jne	.L113
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	movzx	eax, WORD PTR [rax]
	test	al, 32
	je	.L118
	cmp	BYTE PTR 1102[rbx], 0
	je	.L168
.L119:
	mov	BYTE PTR 1094[rbx], 1
	jmp	.L113
	.p2align 4,,10
	.p2align 3
.L115:
	mov	BYTE PTR [rax], 0
	jmp	.L116
	.p2align 4,,10
	.p2align 3
.L164:
	mov	r15, QWORD PTR .refptr.gMultiSioRecv[rip]
	movzx	eax, BYTE PTR 2[r15]
	cmp	BYTE PTR 1094[rbx], al
	je	.L124
	mov	ecx, 108
	call	m4aSongNumStart
	movzx	eax, BYTE PTR 2[r15]
	mov	BYTE PTR 1094[rbx], al
.L124:
	mov	edx, 1
	jmp	.L126
	.p2align 4,,10
	.p2align 3
.L128:
	test	al, al
	je	.L130
	jmp	.L129
	.p2align 4,,10
	.p2align 3
.L118:
	test	al, 16
	je	.L113
	cmp	BYTE PTR 1102[rbx], 0
	jne	.L169
.L120:
	mov	BYTE PTR 1094[rbx], 0
	jmp	.L113
	.p2align 4,,10
	.p2align 3
.L167:
	mov	BYTE PTR 1095[rbx], 1
	mov	ecx, 106
	call	m4aSongNumStart
	jmp	.L130
	.p2align 4,,10
	.p2align 3
.L166:
	mov	ecx, 106
	call	m4aSongNumStart
	cmp	BYTE PTR 1094[rbx], 0
	jne	.L162
	mov	ecx, 106
	call	m4aSongNumStart
	mov	rcx, QWORD PTR 0[r13]
	call	TaskDestroy
	xor	r8d, r8d
	xor	ecx, ecx
	mov	BYTE PTR 0[rbp], 3
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	and	DWORD PTR [rax], -5
	mov	rax, QWORD PTR .refptr.gMultiplayerUnlockedLevels[rip]
	movzx	edx, BYTE PTR [rax]
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	CreateCourseSelectionScreen
.L133:
	mov	rcx, QWORD PTR 0[r13]
	call	TaskDestroy
	xor	r8d, r8d
	xor	ecx, ecx
	mov	BYTE PTR 0[rbp], 3
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	and	DWORD PTR [rax], -5
	mov	rax, QWORD PTR .refptr.gMultiplayerUnlockedLevels[rip]
	movzx	edx, BYTE PTR [rax]
	call	CreateCourseSelectionScreen
	mov	rax, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	r10d, 16437
	mov	WORD PTR [rax], r10w
	jmp	.L110
.L169:
	mov	ecx, 108
	call	m4aSongNumStart
	jmp	.L120
.L168:
	mov	ecx, 108
	call	m4aSongNumStart
	jmp	.L119
.L163:
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
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	LinkCommunicationError
	.seh_endproc
	.p2align 4
	.globl	CreateMultiplayerTeamPlayScreen
	.def	CreateMultiplayerTeamPlayScreen;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateMultiplayerTeamPlayScreen
CreateMultiplayerTeamPlayScreen:
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
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	r8, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	r9d, -2063597563
	mov	ecx, 3
	lea	r13, gUnknown_080D92BC[rip]
	mov	rax, QWORD PTR [rax]
	lea	r14, 32[r13]
	movzx	eax, BYTE PTR 6[rax]
	lea	rbx, 60[rsp]
	cmp	eax, 7
	lea	ebp, [rax+rax*4]
	mov	eax, 5
	mov	rdx, rbx
	cmovnb	ebp, eax
	mov	DWORD PTR 60[rsp], 0
	call	DmaSet
	mov	r8, QWORD PTR .refptr.gMultiSioRecv[rip]
	mov	rdx, rbx
	mov	r9d, -2063597548
	mov	ecx, 3
	mov	DWORD PTR 60[rsp], 0
	call	DmaSet
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
	pxor	xmm0, xmm0
	xor	r9d, r9d
	mov	r11d, 6976
	mov	rdx, QWORD PTR .LC11[rip]
	mov	r8d, 12288
	lea	rcx, sub_805CB34[rip]
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	WORD PTR [rax], r11w
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	edx, 1104
	movups	XMMWORD PTR [rax], xmm0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	mov	BYTE PTR 2[rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	mov	DWORD PTR 8[rax], 553582592
	mov	QWORD PTR 32[rsp], 0
	call	TaskCreate
	mov	r12, QWORD PTR .refptr.VRAM[rip]
	mov	rsi, QWORD PTR 24[rax]
	movabs	rax, 281474976710656
	lea	rdi, 65536[r12]
	mov	QWORD PTR 1088[rsi], rax
	mov	rbx, rsi
.L172:
	mov	QWORD PTR 8[rbx], rdi
	mov	ecx, 256
	xor	r8d, r8d
	xor	r9d, r9d
	mov	DWORD PTR 38[rbx], 0
	mov	eax, DWORD PTR 0[r13]
	xor	r10d, r10d
	add	r13, 8
	mov	WORD PTR 42[rbx], cx
	mov	rcx, rbx
	add	rbx, 64
	sal	eax, 5
	mov	WORD PTR -48[rbx], r8w
	add	rdi, rax
	movzx	eax, WORD PTR -4[r13]
	mov	WORD PTR -46[rbx], ax
	movzx	eax, BYTE PTR -2[r13]
	mov	WORD PTR -28[rbx], r9w
	mov	BYTE PTR -16[rbx], al
	mov	WORD PTR -20[rbx], r10w
	mov	BYTE PTR -15[rbx], -1
	mov	BYTE PTR -14[rbx], 16
	mov	BYTE PTR -11[rbx], 0
	mov	DWORD PTR -8[rbx], -1
	mov	DWORD PTR -32[rbx], 4096
	call	UpdateSpriteAnimation
	cmp	r13, r14
	jne	.L172
	lea	rbx, 256[rsi]
	lea	r13, 576[rsi]
	lea	r14, gUnknown_080D92DC[rip]
	.p2align 4,,10
	.p2align 3
.L173:
	mov	edx, ebp
	mov	QWORD PTR 8[rbx], rdi
	mov	rcx, rbx
	add	rbx, 64
	mov	eax, DWORD PTR [r14+rdx*8]
	mov	DWORD PTR -26[rbx], 0
	add	ebp, 1
	mov	BYTE PTR -15[rbx], -1
	sal	eax, 5
	mov	BYTE PTR -14[rbx], 16
	add	rdi, rax
	mov	eax, 192
	mov	BYTE PTR -11[rbx], 0
	mov	WORD PTR -22[rbx], ax
	xor	eax, eax
	mov	WORD PTR -48[rbx], ax
	movzx	eax, WORD PTR 4[r14+rdx*8]
	mov	DWORD PTR -8[rbx], -1
	mov	WORD PTR -46[rbx], ax
	movzx	eax, BYTE PTR 6[r14+rdx*8]
	xor	edx, edx
	mov	WORD PTR -20[rbx], dx
	mov	BYTE PTR -16[rbx], al
	xor	eax, eax
	mov	WORD PTR -28[rbx], ax
	mov	DWORD PTR -32[rbx], 0
	call	UpdateSpriteAnimation
	cmp	r13, rbx
	jne	.L173
	mov	eax, -247
	xor	edx, edx
	mov	r8d, 20
	xor	r9d, r9d
	mov	WORD PTR 624[rsi], ax
	xor	ecx, ecx
	xor	r14d, r14d
	lea	rax, 12288[r12]
	mov	WORD PTR 620[rsi], dx
	movdqu	xmm0, XMMWORD PTR .LC14[rip]
	mov	ebx, 1
	mov	ebp, 10
	mov	WORD PTR 764[rsi], r8w
	mov	r13d, 3
	mov	WORD PTR 770[rsi], r9w
	mov	QWORD PTR 584[rsi], rdi
	xor	edi, edi
	mov	QWORD PTR 712[rsi], r12
	mov	WORD PTR 722[rsi], cx
	lea	rcx, 704[rsi]
	mov	QWORD PTR 728[rsi], rax
	mov	DWORD PTR 592[rsi], 70516736
	mov	BYTE PTR 626[rsi], 16
	mov	BYTE PTR 629[rsi], 0
	mov	DWORD PTR 632[rsi], -1
	mov	QWORD PTR 608[rsi], 0
	mov	DWORD PTR 616[rsi], 12582912
	mov	BYTE PTR 766[rsi], 0
	movups	XMMWORD PTR 748[rsi], xmm0
	call	DrawBackground
	lea	rax, 16384[r12]
	xor	r10d, r10d
	mov	r11d, 40
	mov	QWORD PTR 808[rsi], rax
	lea	rax, 28672[r12]
	movdqu	xmm0, XMMWORD PTR .LC15[rip]
	lea	rcx, 800[rsi]
	mov	WORD PTR 818[rsi], r10w
	mov	QWORD PTR 824[rsi], rax
	mov	WORD PTR 860[rsi], r11w
	mov	BYTE PTR 862[rsi], 0
	mov	WORD PTR 866[rsi], bx
	movups	XMMWORD PTR 844[rsi], xmm0
	call	DrawBackground
	lea	rax, 32768[r12]
	movdqu	xmm0, XMMWORD PTR .LC16[rip]
	mov	WORD PTR 914[rsi], di
	mov	QWORD PTR 904[rsi], rax
	lea	rax, 45056[r12]
	lea	rcx, 896[rsi]
	mov	QWORD PTR 920[rsi], rax
	mov	WORD PTR 956[rsi], bp
	mov	BYTE PTR 958[rsi], 0
	mov	WORD PTR 962[rsi], r13w
	movups	XMMWORD PTR 940[rsi], xmm0
	call	DrawBackground
	lea	rax, 49152[r12]
	movdqu	xmm0, XMMWORD PTR .LC17[rip]
	add	r12, 61440
	mov	QWORD PTR 1000[rsi], rax
	mov	eax, 32
	lea	rcx, 992[rsi]
	mov	WORD PTR 1052[rsi], ax
	mov	eax, 3
	mov	WORD PTR 1010[rsi], r14w
	mov	QWORD PTR 1016[rsi], r12
	mov	BYTE PTR 1054[rsi], 0
	mov	WORD PTR 1058[rsi], ax
	movups	XMMWORD PTR 1036[rsi], xmm0
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	jmp	DrawBackground
	.seh_endproc
	.section .rdata,"dr"
	.align 32
gUnknown_080D92DC:
	.long	46
	.word	1076
	.byte	0
	.space 1
	.long	42
	.word	1076
	.byte	1
	.space 1
	.long	12
	.word	1076
	.byte	2
	.space 1
	.long	18
	.word	1076
	.byte	3
	.space 1
	.long	6
	.word	1076
	.byte	4
	.space 1
	.long	46
	.word	1076
	.byte	0
	.space 1
	.long	42
	.word	1076
	.byte	1
	.space 1
	.long	12
	.word	1076
	.byte	2
	.space 1
	.long	18
	.word	1076
	.byte	3
	.space 1
	.long	6
	.word	1076
	.byte	4
	.space 1
	.long	38
	.word	1084
	.byte	0
	.space 1
	.long	46
	.word	1084
	.byte	1
	.space 1
	.long	14
	.word	1084
	.byte	2
	.space 1
	.long	10
	.word	1084
	.byte	3
	.space 1
	.long	6
	.word	1076
	.byte	4
	.space 1
	.long	57
	.word	1085
	.byte	0
	.space 1
	.long	46
	.word	1085
	.byte	1
	.space 1
	.long	10
	.word	1085
	.byte	2
	.space 1
	.long	14
	.word	1085
	.byte	3
	.space 1
	.long	6
	.word	1076
	.byte	4
	.space 1
	.long	51
	.word	1086
	.byte	0
	.space 1
	.long	72
	.word	1086
	.byte	1
	.space 1
	.long	10
	.word	1086
	.byte	2
	.space 1
	.long	14
	.word	1086
	.byte	3
	.space 1
	.long	6
	.word	1076
	.byte	4
	.space 1
	.long	75
	.word	1087
	.byte	0
	.space 1
	.long	69
	.word	1087
	.byte	1
	.space 1
	.long	9
	.word	1087
	.byte	2
	.space 1
	.long	15
	.word	1087
	.byte	3
	.space 1
	.long	6
	.word	1076
	.byte	4
	.space 1
	.long	72
	.word	1088
	.byte	0
	.space 1
	.long	75
	.word	1088
	.byte	1
	.space 1
	.long	6
	.word	1088
	.byte	2
	.space 1
	.long	10
	.word	1088
	.byte	3
	.space 1
	.long	6
	.word	1076
	.byte	4
	.space 1
	.align 32
gUnknown_080D92BC:
	.long	8
	.word	1076
	.byte	5
	.space 1
	.long	8
	.word	1076
	.byte	6
	.space 1
	.long	8
	.word	1076
	.byte	7
	.space 1
	.long	8
	.word	1076
	.byte	8
	.space 1
gUnknown_080D92BA:
	.ascii "P\237"
gUnknown_080D92B8:
	.ascii "(\256"
	.align 16
.LC6:
	.word	0
	.word	0
	.word	125
	.word	0
	.word	0
	.word	0
	.word	0
	.word	30
	.align 8
.LC11:
	.word	-31229
	.word	-29178
	.word	-27128
	.word	7693
	.align 16
.LC14:
	.word	0
	.word	0
	.word	123
	.word	0
	.word	0
	.word	0
	.word	0
	.word	30
	.align 16
.LC15:
	.word	0
	.word	0
	.word	122
	.word	0
	.word	0
	.word	0
	.word	0
	.word	30
	.align 16
.LC16:
	.word	0
	.word	0
	.word	124
	.word	0
	.word	0
	.word	0
	.word	0
	.word	30
	.align 16
.LC17:
	.word	0
	.word	0
	.word	126
	.word	0
	.word	0
	.word	0
	.word	0
	.word	32
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	CreateCourseSelectionScreen;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	TasksDestroyInPriorityRange;	.scl	2;	.type	32;	.endef
	.def	LinkCommunicationError;	.scl	2;	.type	32;	.endef
	.def	DrawBackground;	.scl	2;	.type	32;	.endef
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr.gDispCnt, "dr"
	.globl	.refptr.gDispCnt
	.linkonce	discard
.refptr.gDispCnt:
	.quad	gDispCnt
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
	.section	.rdata$.refptr.gWinRegs, "dr"
	.globl	.refptr.gWinRegs
	.linkonce	discard
.refptr.gWinRegs:
	.quad	gWinRegs
	.section	.rdata$.refptr.gMultiSioSend, "dr"
	.globl	.refptr.gMultiSioSend
	.linkonce	discard
.refptr.gMultiSioSend:
	.quad	gMultiSioSend
	.section	.rdata$.refptr.gInput, "dr"
	.globl	.refptr.gInput
	.linkonce	discard
.refptr.gInput:
	.quad	gInput
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
	.section	.rdata$.refptr.gRepeatedKeys, "dr"
	.globl	.refptr.gRepeatedKeys
	.linkonce	discard
.refptr.gRepeatedKeys:
	.quad	gRepeatedKeys
	.section	.rdata$.refptr.gMultiplayerUnlockedLevels, "dr"
	.globl	.refptr.gMultiplayerUnlockedLevels
	.linkonce	discard
.refptr.gMultiplayerUnlockedLevels:
	.quad	gMultiplayerUnlockedLevels
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
	.section	.rdata$.refptr.gFrameCount, "dr"
	.globl	.refptr.gFrameCount
	.linkonce	discard
.refptr.gFrameCount:
	.quad	gFrameCount
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
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
	.section	.rdata$.refptr.gBgOffsetsHBlankPrimary, "dr"
	.globl	.refptr.gBgOffsetsHBlankPrimary
	.linkonce	discard
.refptr.gBgOffsetsHBlankPrimary:
	.quad	gBgOffsetsHBlankPrimary
