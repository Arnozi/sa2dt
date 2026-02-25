	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	sub_8081FB0
	.def	sub_8081FB0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8081FB0
sub_8081FB0:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	edx, 64
	mov	ecx, -129
	mov	rsi, QWORD PTR .refptr.VRAM[rip]
	mov	r9d, -2063597552
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	rdx, QWORD PTR .LC2[rip]
	lea	r8, 40928[rsi]
	mov	DWORD PTR 4[rax], 1577786380
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	mov	WORD PTR 2[rax], cx
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	lea	rbx, 44[rsp]
	mov	ecx, 3
	mov	DWORD PTR 44[rsp], 0
	mov	QWORD PTR 8[rax], rdx
	mov	rdx, rbx
	call	DmaSet
	mov	r9d, -2063597552
	mov	rdx, rbx
	lea	r8, 53216[rsi]
	mov	ecx, 3
	mov	DWORD PTR 44[rsp], 0
	call	DmaSet
	nop
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8082038
	.def	sub_8082038;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8082038
sub_8082038:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	movdqu	xmm0, XMMWORD PTR .LC5[rip]
	mov	r8d, 25
	mov	r9d, 3
	lea	rdx, 32768[rax]
	add	rax, 61440
	mov	QWORD PTR 8[rcx], rdx
	xor	edx, edx
	mov	WORD PTR 18[rcx], dx
	mov	QWORD PTR 24[rcx], rax
	mov	WORD PTR 60[rcx], r8w
	mov	BYTE PTR 62[rcx], 0
	mov	WORD PTR 66[rcx], r9w
	movups	XMMWORD PTR 44[rcx], xmm0
	jmp	DrawBackground
	.seh_endproc
	.p2align 4
	.globl	sub_8082788
	.def	sub_8082788;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8082788
sub_8082788:
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
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	r13, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	cmp	BYTE PTR [rdx], 2
	mov	eax, DWORD PTR 0[r13]
	jbe	.L7
	mov	rdx, QWORD PTR .refptr.gMultiplayerConnections[rip]
	movzx	r10d, BYTE PTR [rdx]
	mov	edx, r10d
	and	edx, 1
	je	.L7
	mov	rdx, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
	xor	ecx, ecx
	mov	r9d, 1
.L10:
	mov	r8d, r9d
	sal	r8d, cl
	test	r8d, eax
	jne	.L8
	movzx	r8d, BYTE PTR [rdx]
	lea	r11d, 1[r8]
	mov	BYTE PTR [rdx], r11b
	cmp	r8b, -76
	ja	.L39
.L9:
	add	ecx, 1
	cmp	ecx, 4
	je	.L7
	add	rdx, 1
	bt	r10d, ecx
	jc	.L10
	.p2align 4,,10
	.p2align 3
.L7:
	mov	rdx, QWORD PTR .refptr.gCurTask[rip]
	xor	ebx, ebx
	mov	r14d, 1
	xor	r12d, r12d
	lea	ecx, 8[rbx]
	mov	rdi, QWORD PTR .refptr.gMultiplayerRanks[rip]
	mov	rdx, QWORD PTR [rdx]
	mov	rsi, QWORD PTR 24[rdx]
	mov	edx, r14d
	sal	edx, cl
	mov	rbp, rsi
	test	edx, eax
	jne	.L11
.L40:
	imul	eax, ebx, -40
	lea	r15d, 40[r12]
	xor	r9d, r9d
	mov	edx, r12d
	mov	r8d, r15d
	mov	ecx, 3
	add	eax, 240
	mov	DWORD PTR 32[rsp], eax
	call	sub_80078D4
.L12:
	mov	r12d, r15d
	add	rdi, 1
	add	rbp, 72
	cmp	rbx, 3
	je	.L4
	add	rbx, 1
	mov	edx, r14d
	mov	eax, DWORD PTR 0[r13]
	lea	ecx, 8[rbx]
	sal	edx, cl
	test	edx, eax
	je	.L40
.L11:
	movsx	r8d, BYTE PTR [rdi]
	mov	eax, ebx
	xor	r9d, r9d
	mov	ecx, r8d
	lea	r8d, 5[r8+r8*4]
	sub	eax, ecx
	lea	edx, [rcx+rcx*4]
	sal	r8d, 3
	mov	ecx, 3
	lea	eax, [rax+rax*4]
	sal	edx, 3
	movzx	r8d, r8w
	sal	eax, 3
	movzx	edx, dx
	movzx	eax, ax
	mov	DWORD PTR 32[rsp], eax
	call	sub_80078D4
	mov	eax, DWORD PTR 1444[rsi]
	lea	rcx, 192[rbp]
	test	eax, eax
	mov	eax, 213
	mov	WORD PTR 230[rbp], ax
	je	.L13
	movsx	ax, BYTE PTR [rdi]
	mov	QWORD PTR 48[rsp], rcx
	mov	r15d, 52
	lea	eax, [rax+rax*4]
	lea	eax, 20[0+rax*8]
	mov	WORD PTR 232[rbp], ax
	call	UpdateSpriteAnimation
	mov	rcx, QWORD PTR 48[rsp]
	call	DisplaySprite
	mov	rax, QWORD PTR .refptr.gMultiplayerCharacters[rip]
	movsx	rdx, BYTE PTR [rbx+rax]
	sal	rdx, 6
	lea	rcx, [rsi+rdx]
	mov	WORD PTR 1222[rcx], r15w
	movsx	ax, BYTE PTR [rdi]
	lea	eax, [rax+rax*4]
	lea	eax, 20[0+rax*8]
	mov	WORD PTR 1224[rcx], ax
	lea	rcx, 1184[rsi+rdx]
	call	DisplaySprite
	mov	rax, QWORD PTR .refptr.gMultiplayerCharRings[rip]
	movzx	ecx, BYTE PTR [rbx+rax]
	call	Base10DigitsToHexNibbles
	mov	r15d, eax
	shr	ax, 8
	and	eax, 15
	sal	rax, 6
	je	.L14
	lea	rcx, [rsi+rax]
	mov	r11d, 160
	mov	WORD PTR 518[rcx], r11w
	movsx	dx, BYTE PTR [rdi]
	lea	edx, [rdx+rdx*4]
	lea	edx, 20[0+rdx*8]
	mov	WORD PTR 520[rcx], dx
	lea	rcx, 480[rsi+rax]
	call	DisplaySprite
.L14:
	mov	eax, r15d
	shr	ax, 4
	and	eax, 15
	sal	rax, 6
	lea	rcx, 480[rsi+rax]
	cmp	r15w, 255
	ja	.L21
	test	rax, rax
	je	.L15
.L21:
	add	rax, rsi
	mov	r10d, 171
	mov	WORD PTR 518[rax], r10w
	movsx	dx, BYTE PTR [rdi]
	lea	edx, [rdx+rdx*4]
	lea	edx, 20[0+rdx*8]
	mov	WORD PTR 520[rax], dx
	call	DisplaySprite
.L15:
	and	r15d, 15
	mov	r9d, 182
	sal	r15, 6
	lea	rdx, [rsi+r15]
	lea	rcx, 480[rsi+r15]
	mov	WORD PTR 518[rdx], r9w
	movsx	ax, BYTE PTR [rdi]
	lea	r15d, 40[r12]
	lea	eax, [rax+rax*4]
	lea	eax, 20[0+rax*8]
	mov	WORD PTR 520[rdx], ax
	call	DisplaySprite
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L13:
	lea	r15d, [rbx+rbx*4]
	mov	QWORD PTR 48[rsp], rcx
	lea	r15d, 20[0+r15*8]
	mov	WORD PTR 232[rbp], r15w
	call	UpdateSpriteAnimation
	mov	rcx, QWORD PTR 48[rsp]
	call	DisplaySprite
	mov	rax, QWORD PTR .refptr.gMPRingCollectWins[rip]
	movzx	ecx, BYTE PTR [rbx+rax]
	cmp	cl, 99
	jbe	.L41
	mov	r8d, 672
	mov	r10d, 864
	mov	edx, 3
	mov	r9d, 6
.L38:
	sal	r9, 6
	mov	QWORD PTR 56[rsp], r8
	mov	r8d, 160
	lea	rcx, [rsi+r10]
	lea	rax, [rsi+r9]
	mov	DWORD PTR 48[rsp], edx
	mov	WORD PTR 518[rax], r8w
	mov	WORD PTR 520[rax], r15w
	call	DisplaySprite
	mov	r8, QWORD PTR 56[rsp]
	movsx	rdx, DWORD PTR 48[rsp]
.L18:
	sal	rdx, 6
	lea	rcx, [rsi+r8]
	lea	rax, [rsi+rdx]
	mov	edx, 171
	mov	WORD PTR 520[rax], r15w
	mov	WORD PTR 518[rax], dx
	call	DisplaySprite
	mov	ecx, 197
	mov	WORD PTR 1160[rsi], r15w
	lea	r15d, 40[r12]
	mov	WORD PTR 1158[rsi], cx
	lea	rcx, 1120[rsi]
	call	DisplaySprite
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L4:
	add	rsp, 72
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
.L8:
	mov	BYTE PTR [rdx], 0
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L41:
	call	Base10DigitsToHexNibbles
	mov	r11d, eax
	mov	edx, eax
	and	eax, 15
	shr	r11w, 4
	sal	rax, 6
	and	edx, 15
	movzx	r9d, r11w
	movzx	r11d, r11w
	lea	r8, 480[rax]
	sal	r11, 6
	lea	r10, 480[r11]
	test	r11, r11
	jne	.L38
	jmp	.L18
.L39:
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
	add	rsp, 72
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
	.globl	Task_8082630
	.def	Task_8082630;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_8082630
Task_8082630:
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
	add	WORD PTR 1440[rbx], 32
	call	sub_8082788
	movzx	eax, WORD PTR 1440[rbx]
	cmp	ax, 4096
	ja	.L43
	shr	ax, 8
.L44:
	mov	rdx, QWORD PTR .refptr.gBldRegs[rip]
	mov	WORD PTR 4[rdx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L43:
	mov	eax, 4096
	lea	rcx, sub_808267C[rip]
	mov	WORD PTR 1440[rbx], ax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rcx
	mov	eax, 16
	jmp	.L44
	.seh_endproc
	.p2align 4
	.globl	sub_8082AA8
	.def	sub_8082AA8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8082AA8
sub_8082AA8:
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
	call	sub_8082788
	movzx	eax, WORD PTR 1440[rbx]
	cmp	ax, 30
	ja	.L46
	add	eax, 1
	mov	WORD PTR 1440[rbx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L46:
	xor	eax, eax
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_BGM[rip]
	mov	edx, 8
	mov	WORD PTR 1440[rbx], ax
	call	m4aMPlayFadeOut
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_SE1[rip]
	mov	edx, 8
	call	m4aMPlayFadeOut
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_SE2[rip]
	mov	edx, 8
	call	m4aMPlayFadeOut
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_SE3[rip]
	mov	edx, 8
	call	m4aMPlayFadeOut
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	mov	edx, 255
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR [rsi]
	lea	rdx, Task_8082630[rip]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80823FC
	.def	sub_80823FC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80823FC
sub_80823FC:
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
	mov	r12, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rbx, QWORD PTR .refptr.gMultiSioRecv[rip]
	mov	rbp, QWORD PTR .refptr.gMultiplayerConnections[rip]
	mov	eax, DWORD PTR [r12]
	mov	rdx, QWORD PTR [rdi]
	shr	eax, 8
	mov	rsi, QWORD PTR 24[rdx]
	and	eax, 15
	cmp	WORD PTR [rbx], 16402
	mov	BYTE PTR 0[rbp], al
	jne	.L49
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	rcx, QWORD PTR .refptr.gSelectedCharacter[rip]
	movzx	eax, BYTE PTR 296[rax]
	shr	al, 4
	and	eax, 3
	mov	BYTE PTR [rcx], al
	mov	eax, DWORD PTR 1444[rsi]
	test	eax, eax
	jne	.L82
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	xor	r11d, r11d
	lea	rcx, 96[rsi]
	movabs	rbx, 25769803776
	mov	QWORD PTR 140[rsi], rbx
	mov	ebx, 2
	mov	DWORD PTR 8[rax], 0
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	WORD PTR 114[rsi], r11w
	lea	rdx, 49152[rax]
	add	rax, 57344
	mov	BYTE PTR 158[rsi], 0
	mov	QWORD PTR 120[rsi], rax
	mov	rax, QWORD PTR .refptr.gMultiplayerLanguage[rip]
	mov	QWORD PTR 104[rsi], rdx
	cmp	BYTE PTR [rax], 1
	mov	WORD PTR 162[rsi], bx
	setne	al
	xor	ebp, ebp
	movzx	eax, al
	sal	eax, 2
	mov	WORD PTR 148[rsi], ax
	movabs	rax, 1125977216778246
	mov	QWORD PTR 150[rsi], rax
	call	DrawBackground
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	r12d, DWORD PTR 1444[rsi]
	mov	WORD PTR 1440[rsi], bp
	mov	rdx, QWORD PTR [rdi]
	or	WORD PTR [rax], 1024
	test	r12d, r12d
	jne	.L51
	lea	rax, sub_8082AA8[rip]
	mov	QWORD PTR 40[rdx], rax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	sub_8082AA8
	.p2align 4,,10
	.p2align 3
.L82:
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	or	WORD PTR [rax], 1024
	xor	eax, eax
	mov	WORD PTR 1440[rsi], ax
.L51:
	mov	rbx, QWORD PTR 24[rdx]
	lea	rax, Task_8082630[rip]
	mov	rsi, QWORD PTR .refptr.gBldRegs[rip]
	mov	r10d, 255
	mov	QWORD PTR 40[rdx], rax
	add	WORD PTR 1440[rbx], 32
	mov	WORD PTR [rsi], r10w
	call	sub_8082788
	movzx	eax, WORD PTR 1440[rbx]
	cmp	ax, 4096
	ja	.L53
	shr	ax, 8
.L54:
	mov	WORD PTR 4[rsi], ax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L49:
	call	sub_8082788
	mov	r8d, DWORD PTR [r12]
	mov	r11d, r8d
	and	r11d, 128
	jne	.L83
	movzx	edi, BYTE PTR 0[rbp]
	test	dil, 1
	je	.L84
.L64:
	mov	rbp, QWORD PTR .refptr.REG_BASE[rip]
	mov	rdx, rbx
	xor	r9d, r9d
	xor	ebx, ebx
	xor	ecx, ecx
	mov	r10d, 1
.L60:
	mov	eax, r10d
	sal	eax, cl
	test	eax, r8d
	je	.L67
	movzx	eax, BYTE PTR 296[rbp]
	shr	al, 4
	and	eax, 3
	cmp	eax, ecx
	je	.L59
	cmp	WORD PTR [rdx], 16400
	je	.L59
.L58:
	add	ecx, 1
	cmp	ecx, 4
	je	.L57
	add	rdx, 20
	bt	edi, ecx
	jc	.L60
	.p2align 4,,10
	.p2align 3
.L57:
	mov	rax, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	r8d, 16400
	mov	WORD PTR [rax], r8w
	test	r11d, r11d
	je	.L63
	mov	rdx, QWORD PTR .refptr.gMultiplayerLanguage[rip]
	movzx	edx, BYTE PTR [rdx]
	mov	BYTE PTR 3[rax], dl
	mov	rdx, QWORD PTR .refptr.gPressedKeys[rip]
	test	BYTE PTR [rdx], 8
	jne	.L85
.L63:
	cmp	BYTE PTR 1448[rsi], 0
	je	.L48
.L62:
	mov	ecx, 16402
	mov	BYTE PTR 1448[rsi], 1
	mov	WORD PTR [rax], cx
.L48:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L67:
	mov	r9d, 1
	jmp	.L58
	.p2align 4,,10
	.p2align 3
.L59:
	add	ebx, 1
	jmp	.L58
	.p2align 4,,10
	.p2align 3
.L53:
	mov	rax, QWORD PTR [rdi]
	mov	r9d, 4096
	lea	rdi, sub_808267C[rip]
	mov	WORD PTR 1440[rbx], r9w
	mov	QWORD PTR 40[rax], rdi
	mov	eax, 16
	jmp	.L54
	.p2align 4,,10
	.p2align 3
.L85:
	test	r9b, r9b
	jne	.L63
	cmp	ebx, 1
	jg	.L62
	jmp	.L63
	.p2align 4,,10
	.p2align 3
.L83:
	lea	rcx, 1376[rsi]
	call	DisplaySprite
	mov	r8d, DWORD PTR [r12]
	movzx	edi, BYTE PTR 0[rbp]
	mov	r11d, r8d
	mov	r9d, edi
	and	r11d, 128
	and	r9d, 1
	jne	.L64
	xor	ebx, ebx
	jmp	.L57
.L84:
	mov	rax, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	edx, 16400
	mov	WORD PTR [rax], dx
	jmp	.L63
	.seh_endproc
	.p2align 4
	.globl	Task_MultiplayerSinglePakResultsScreenInit
	.def	Task_MultiplayerSinglePakResultsScreenInit;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_MultiplayerSinglePakResultsScreenInit
Task_MultiplayerSinglePakResultsScreenInit:
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
	mov	rbx, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	r8, QWORD PTR .refptr.gMultiplayerConnections[rip]
	mov	edx, DWORD PTR [rbx]
	or	WORD PTR [rax], 6144
	mov	ecx, edx
	shr	ecx, 8
	mov	eax, ecx
	and	eax, 15
	mov	BYTE PTR [r8], al
	mov	r8, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [r8], 2
	jbe	.L90
	and	ecx, 1
	movzx	r8d, al
	je	.L90
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
	xor	ecx, ecx
	mov	r10d, 1
.L93:
	mov	r9d, r10d
	sal	r9d, cl
	test	r9d, edx
	jne	.L91
	movzx	r9d, BYTE PTR [rax]
	lea	r11d, 1[r9]
	mov	BYTE PTR [rax], r11b
	cmp	r9b, -76
	ja	.L123
.L92:
	add	ecx, 1
	cmp	ecx, 4
	je	.L90
	add	rax, 1
	bt	r8d, ecx
	jc	.L93
	.p2align 4,,10
	.p2align 3
.L90:
	mov	rax, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	r10d, 16400
	mov	ecx, edx
	mov	WORD PTR [rax], r10w
	and	ecx, 128
	je	.L89
	mov	r14, QWORD PTR .refptr.gMultiplayerLanguage[rip]
	movzx	r8d, BYTE PTR [r14]
	mov	BYTE PTR 3[rax], r8b
.L89:
	mov	r12, QWORD PTR .refptr.gCurTask[rip]
	xor	r8d, r8d
	xor	r9d, r9d
	mov	rax, QWORD PTR [r12]
	mov	r13, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	mov	WORD PTR [rax], r8w
	mov	WORD PTR 4[rax], r9w
	movzx	eax, WORD PTR 1440[r13]
	lea	r10d, 1[rax]
	mov	WORD PTR 1440[r13], r10w
	cmp	r10w, 240
	ja	.L124
	xor	r14d, r14d
	xor	r12d, r12d
	mov	esi, 1
	mov	ebp, 240
	mov	rdi, QWORD PTR .refptr.gMultiplayerRanks[rip]
.L94:
	movsx	ax, BYTE PTR [r12+rdi]
	lea	ecx, 8[r12]
	mov	r11d, esi
	sal	r11d, cl
	mov	r9d, eax
	and	r9d, 1
	test	r11d, edx
	jne	.L102
	mov	eax, ebp
	lea	r15d, 40[r14]
	sub	eax, r14d
	test	r9b, r9b
	je	.L103
	mov	r9d, 426
	sub	r9d, r10d
.L121:
	mov	DWORD PTR 32[rsp], eax
	mov	edx, r14d
	movzx	r9d, r9w
	mov	r8d, r15d
	mov	ecx, 3
	add	r12, 1
	mov	r14d, r15d
	call	sub_80078D4
	cmp	r12, 4
	je	.L86
.L126:
	mov	edx, DWORD PTR [rbx]
	movzx	r10d, WORD PTR 1440[r13]
	jmp	.L94
	.p2align 4,,10
	.p2align 3
.L124:
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	and	DWORD PTR [rax], -32769
	mov	eax, DWORD PTR 1444[r13]
	test	eax, eax
	je	.L95
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	r14, QWORD PTR .refptr.gMultiplayerLanguage[rip]
	lea	rsi, 1184[r13]
	xor	edi, edi
	lea	rbp, 75008[rax]
.L97:
	xor	eax, eax
	mov	r15d, 256
	mov	QWORD PTR 8[rsi], rbp
	mov	rcx, rsi
	mov	WORD PTR 16[rsi], ax
	xor	eax, eax
	cmp	BYTE PTR [r14], 1
	setne	al
	mov	BYTE PTR 48[rsi], dil
	add	edi, 1
	add	rbp, 384
	add	ax, 1099
	mov	DWORD PTR 38[rsi], 0
	add	rsi, 64
	mov	WORD PTR -46[rsi], ax
	xor	eax, eax
	mov	WORD PTR -28[rsi], ax
	xor	eax, eax
	mov	WORD PTR -22[rsi], r15w
	mov	WORD PTR -20[rsi], ax
	mov	BYTE PTR -15[rsi], -1
	mov	BYTE PTR -14[rsi], 16
	mov	BYTE PTR -11[rsi], 0
	mov	DWORD PTR -32[rsi], 4096
	call	UpdateSpriteAnimation
	cmp	edi, 3
	jne	.L97
	mov	ecx, DWORD PTR [rbx]
	and	ecx, 128
.L95:
	test	ecx, ecx
	je	.L98
	mov	ebx, DWORD PTR 1444[r13]
	lea	rcx, 1376[r13]
	mov	DWORD PTR 1414[r13], 7864533
	test	ebx, ebx
	jne	.L125
	mov	rax, QWORD PTR 1128[r13]
	add	rax, 384
.L100:
	mov	QWORD PTR 1384[r13], rax
	mov	rax, QWORD PTR .refptr.gMultiplayerLanguage[rip]
	xor	edx, edx
	xor	r8d, r8d
	mov	r11d, -256
	mov	WORD PTR 1418[r13], dx
	cmp	BYTE PTR [rax], 1
	mov	WORD PTR 1392[r13], r8w
	setne	al
	xor	r9d, r9d
	xor	r10d, r10d
	mov	WORD PTR 1424[r13], r11w
	movzx	eax, al
	mov	WORD PTR 1412[r13], r9w
	add	ax, 1106
	mov	WORD PTR 1420[r13], r10w
	mov	WORD PTR 1394[r13], ax
	mov	BYTE PTR 1426[r13], 16
	mov	BYTE PTR 1429[r13], 0
	mov	DWORD PTR 1408[r13], 0
	call	UpdateSpriteAnimation
.L98:
	xor	eax, eax
	lea	rbx, sub_80823FC[rip]
	mov	WORD PTR 1440[r13], ax
	mov	rax, QWORD PTR [r12]
	mov	QWORD PTR 40[rax], rbx
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	sub_80823FC
	.p2align 4,,10
	.p2align 3
.L102:
	movsx	r8d, al
	lea	ecx, [r12+r12*4]
	lea	eax, [rax+rax*4]
	lea	edx, [r8+r8*4]
	lea	r8d, 5[r8+r8*4]
	sub	ecx, edx
	sal	r8d, 3
	lea	edx, 0[0+rax*8]
	sal	ecx, 3
	movzx	r8d, r8w
	movzx	edx, dx
	movzx	ecx, cx
	test	r9b, r9b
	je	.L105
	mov	r9d, 426
	sub	r9d, r10d
.L122:
	mov	DWORD PTR 32[rsp], ecx
	movzx	r9d, r9w
	lea	r15d, 40[r14]
	add	r12, 1
	mov	ecx, 3
	mov	r14d, r15d
	call	sub_80078D4
	cmp	r12, 4
	jne	.L126
.L86:
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
.L91:
	mov	BYTE PTR [rax], 0
	jmp	.L92
	.p2align 4,,10
	.p2align 3
.L103:
	lea	r9d, -426[r10]
	jmp	.L121
	.p2align 4,,10
	.p2align 3
.L105:
	lea	r9d, -426[r10]
	jmp	.L122
	.p2align 4,,10
	.p2align 3
.L125:
	mov	rax, QWORD PTR 1320[r13]
	add	rax, 384
	jmp	.L100
	.p2align 4,,10
	.p2align 3
.L123:
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
	.seh_endproc
	.p2align 4
	.globl	InitAndGetResultsScreenObject
	.def	InitAndGetResultsScreenObject;	.scl	2;	.type	32;	.endef
	.seh_proc	InitAndGetResultsScreenObject
InitAndGetResultsScreenObject:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	xor	r9d, r9d
	mov	r8d, 8192
	mov	edx, 1456
	mov	QWORD PTR 32[rsp], 0
	mov	ebx, ecx
	lea	rcx, Task_MultiplayerSinglePakResultsScreenInit[rip]
	movsx	ebx, bx
	call	TaskCreate
	xor	edx, edx
	mov	rax, QWORD PTR 24[rax]
	mov	WORD PTR 1440[rax], dx
	mov	rdx, QWORD PTR .refptr.gFrameCount[rip]
	mov	DWORD PTR 1444[rax], ebx
	mov	edx, DWORD PTR [rdx]
	mov	BYTE PTR 1448[rax], 0
	mov	DWORD PTR 1452[rax], edx
	add	rsp, 48
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8082B80
	.def	sub_8082B80;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8082B80
sub_8082B80:
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
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	r12, QWORD PTR .refptr.gPlayerCharacterIdleAnims[rip]
	xor	esi, esi
	movzx	ebp, WORD PTR .LC7[rip]
	lea	rdi, 65536[rax]
	lea	rbx, 192[rcx]
.L129:
	mov	eax, 120
	movzx	edx, WORD PTR [r12+rsi*2]
	xor	r8d, r8d
	xor	r9d, r9d
	mov	WORD PTR 38[rbx], ax
	lea	eax, [rsi+rsi*4]
	mov	ecx, 1024
	xor	r10d, r10d
	lea	eax, 20[0+rax*8]
	mov	QWORD PTR 8[rbx], rdi
	add	rdi, 2048
	mov	WORD PTR 42[rbx], cx
	mov	rcx, rbx
	add	rbx, 72
	mov	BYTE PTR -19[rbx], sil
	add	rsi, 1
	mov	WORD PTR -32[rbx], ax
	mov	WORD PTR -56[rbx], r8w
	mov	WORD PTR -54[rbx], dx
	mov	WORD PTR -36[rbx], r9w
	mov	WORD PTR -28[rbx], r10w
	mov	WORD PTR -24[rbx], bp
	mov	BYTE PTR -22[rbx], 16
	mov	DWORD PTR -40[rbx], 4096
	call	UpdateSpriteAnimation
	cmp	rsi, 4
	jne	.L129
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8082BF8
	.def	sub_8082BF8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8082BF8
sub_8082BF8:
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
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	ebp, DWORD PTR .LC12[rip]
	xor	esi, esi
	lea	rdi, 73728[rax]
	lea	rbx, 480[rcx]
	.p2align 4,,10
	.p2align 3
.L132:
	mov	eax, 256
	xor	edx, edx
	xor	ecx, ecx
	mov	QWORD PTR 8[rbx], rdi
	mov	BYTE PTR 48[rbx], sil
	add	esi, 1
	sub	rdi, -128
	mov	WORD PTR 44[rbx], cx
	mov	rcx, rbx
	add	rbx, 64
	mov	DWORD PTR -26[rbx], 0
	mov	WORD PTR -22[rbx], ax
	mov	DWORD PTR -48[rbx], ebp
	mov	WORD PTR -28[rbx], dx
	mov	BYTE PTR -15[rbx], -1
	mov	BYTE PTR -14[rbx], 16
	mov	BYTE PTR -11[rbx], 0
	mov	DWORD PTR -32[rbx], 4096
	call	UpdateSpriteAnimation
	cmp	si, 10
	jne	.L132
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8082C58
	.def	sub_8082C58;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8082C58
sub_8082C58:
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
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	ebp, DWORD PTR .LC14[rip]
	xor	esi, esi
	lea	rdi, 75008[rax]
	lea	rbx, 1184[rcx]
.L135:
	mov	eax, 256
	xor	edx, edx
	xor	ecx, ecx
	mov	QWORD PTR 8[rbx], rdi
	mov	BYTE PTR 48[rbx], sil
	add	esi, 1
	add	rdi, 192
	mov	WORD PTR 44[rbx], cx
	mov	rcx, rbx
	add	rbx, 64
	mov	DWORD PTR -26[rbx], 0
	mov	WORD PTR -22[rbx], ax
	mov	DWORD PTR -48[rbx], ebp
	mov	WORD PTR -28[rbx], dx
	mov	BYTE PTR -15[rbx], -1
	mov	BYTE PTR -14[rbx], 16
	mov	BYTE PTR -11[rbx], 0
	mov	DWORD PTR -32[rbx], 4096
	call	UpdateSpriteAnimation
	cmp	si, 3
	jne	.L135
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateMultiplayerSinglePakResultsScreen
	.def	CreateMultiplayerSinglePakResultsScreen;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateMultiplayerSinglePakResultsScreen
CreateMultiplayerSinglePakResultsScreen:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
	pxor	xmm0, xmm0
	xor	r9d, r9d
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	movups	XMMWORD PTR [rax], xmm0
	mov	QWORD PTR 16[rax], 0
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	mov	edi, ecx
	mov	WORD PTR [rax], r9w
	mov	rax, QWORD PTR .refptr.gMultiSioEnabled[rip]
	mov	BYTE PTR [rax], 1
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	and	DWORD PTR [rax], -16385
	call	m4aSoundVSyncOn
	mov	rsi, QWORD PTR .refptr.VRAM[rip]
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	mov	r8d, 8192
	mov	rcx, QWORD PTR .refptr.gCollectRingsBgStageTileset[rip]
	mov	rdx, rsi
	mov	BYTE PTR [rax], 5
	call	CpuFastSet
	mov	rbx, QWORD PTR .refptr.EWRAM_START[rip]
	mov	rcx, QWORD PTR .refptr.gCollectRingsTilemaps[rip]
	mov	r8d, 13312
	lea	rdx, 208896[rbx]
	call	CpuFastSet
	mov	rdx, QWORD PTR 208896[rbx]
	mov	rax, QWORD PTR .refptr.gTilemapsRef[rip]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rax, QWORD PTR [rax]
	movzx	edx, BYTE PTR 6[rax]
	mov	rax, QWORD PTR .refptr.gMultiplayerLanguage[rip]
	mov	BYTE PTR [rax], dl
	call	sub_8081FB0
	xor	r9d, r9d
	mov	QWORD PTR 32[rsp], 0
	mov	r8d, 8192
	mov	edx, 1456
	lea	rcx, Task_MultiplayerSinglePakResultsScreenInit[rip]
	call	TaskCreate
	xor	r10d, r10d
	xor	r11d, r11d
	movdqu	xmm0, XMMWORD PTR .LC5[rip]
	mov	rbx, QWORD PTR 24[rax]
	movsx	eax, di
	mov	DWORD PTR 1444[rbx], eax
	mov	rax, QWORD PTR .refptr.gFrameCount[rip]
	mov	rcx, rbx
	mov	WORD PTR 1440[rbx], r10w
	mov	eax, DWORD PTR [rax]
	mov	WORD PTR 18[rbx], r11w
	mov	BYTE PTR 1448[rbx], 0
	mov	DWORD PTR 1452[rbx], eax
	lea	rax, 32768[rsi]
	mov	QWORD PTR 8[rbx], rax
	lea	rax, 61440[rsi]
	mov	QWORD PTR 24[rbx], rax
	mov	eax, 25
	mov	WORD PTR 60[rbx], ax
	mov	eax, 3
	mov	WORD PTR 66[rbx], ax
	mov	BYTE PTR 62[rbx], 0
	movups	XMMWORD PTR 44[rbx], xmm0
	call	DrawBackground
	mov	rcx, rbx
	call	sub_8082B80
	mov	rcx, rbx
	call	sub_8082BF8
	test	edi, edi
	je	.L138
	mov	rcx, rbx
	call	sub_8082C58
	mov	ecx, 64
	call	m4aSongNumStart
.L139:
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	xor	edx, edx
	mov	DWORD PTR [rax], 0
	mov	WORD PTR 4[rax], dx
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L138:
	xor	r8d, r8d
	mov	ecx, -253
	add	rsi, 77568
	mov	DWORD PTR 1136[rbx], 72024064
	mov	WORD PTR 1168[rbx], cx
	lea	rcx, 1120[rbx]
	mov	QWORD PTR 1128[rbx], rsi
	mov	BYTE PTR 1170[rbx], 16
	mov	BYTE PTR 1173[rbx], 0
	mov	QWORD PTR 1152[rbx], 4096
	mov	DWORD PTR 1160[rbx], 16777216
	mov	WORD PTR 1164[rbx], r8w
	call	UpdateSpriteAnimation
	mov	ecx, 66
	call	m4aSongNumStart
	jmp	.L139
	.seh_endproc
	.p2align 4
	.globl	sub_808267C
	.def	sub_808267C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808267C
sub_808267C:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rbx, QWORD PTR .refptr.gMultiSioRecv[rip]
	mov	rcx, QWORD PTR [rax]
	cmp	WORD PTR [rbx], 16512
	mov	rsi, QWORD PTR 24[rcx]
	je	.L153
	call	sub_8082788
	mov	rcx, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	edx, 16465
	mov	rax, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	mov	WORD PTR [rcx], dx
	mov	BYTE PTR 2[rcx], 0
	test	BYTE PTR [rax], -128
	je	.L140
	mov	rax, QWORD PTR .refptr.gMultiplayerConnections[rip]
	xor	edx, edx
	movzx	r8d, BYTE PTR [rax]
	mov	rax, rbx
.L145:
	bt	r8d, edx
	jnc	.L144
	cmp	WORD PTR [rax], 16465
	jne	.L140
.L144:
	add	edx, 1
	add	rax, 20
	cmp	edx, 4
	jne	.L145
	mov	eax, 16512
	mov	WORD PTR [rcx], ax
	mov	eax, DWORD PTR 1452[rsi]
	mov	DWORD PTR 8[rcx], eax
.L140:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L153:
	mov	rax, QWORD PTR .refptr.gMultiplayerPseudoRandom[rip]
	mov	edx, DWORD PTR 8[rbx]
	mov	r9d, DWORD PTR 1444[rsi]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR .refptr.gMultiplayerCharacters[rip]
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gMultiplayerRanks[rip]
	mov	DWORD PTR [rax], 50462976
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	and	DWORD PTR [rax], -5
	test	r9d, r9d
	je	.L142
	call	TaskDestroy
	xor	ecx, ecx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	CreateMultiplayerSinglePakResultsScreen
	.p2align 4,,10
	.p2align 3
.L142:
	call	TaskDestroy
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	xor	ecx, ecx
	xor	r8d, r8d
	mov	WORD PTR [rax], cx
	mov	WORD PTR 4[rax], r8w
	call	sub_8081200
	nop
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	GameStageStart
	.seh_endproc
	.p2align 4
	.globl	sub_8082CB4
	.def	sub_8082CB4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8082CB4
sub_8082CB4:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	xor	edx, edx
	add	rax, 77568
	mov	QWORD PTR 1128[rcx], rax
	mov	eax, -253
	add	rcx, 1120
	mov	DWORD PTR 16[rcx], 72024064
	mov	WORD PTR 48[rcx], ax
	mov	BYTE PTR 50[rcx], 16
	mov	BYTE PTR 53[rcx], 0
	mov	QWORD PTR 32[rcx], 4096
	mov	DWORD PTR 40[rcx], 16777216
	mov	WORD PTR 44[rcx], dx
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.p2align 4
	.globl	sub_8082CEC
	.def	sub_8082CEC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8082CEC
sub_8082CEC:
	.seh_endprologue
	mov	eax, DWORD PTR 40[rsp]
	mov	WORD PTR 38[rcx], ax
	mov	eax, DWORD PTR 48[rsp]
	mov	QWORD PTR 8[rcx], rdx
	xor	edx, edx
	mov	WORD PTR 40[rcx], ax
	mov	eax, DWORD PTR 56[rsp]
	mov	WORD PTR 18[rcx], r8w
	xor	r8d, r8d
	mov	WORD PTR 42[rcx], ax
	xor	eax, eax
	mov	WORD PTR 16[rcx], ax
	mov	eax, DWORD PTR 64[rsp]
	mov	BYTE PTR 48[rcx], r9b
	mov	r9d, 4351
	mov	BYTE PTR 53[rcx], al
	mov	eax, DWORD PTR 72[rsp]
	mov	WORD PTR 36[rcx], dx
	mov	WORD PTR 44[rcx], r8w
	mov	WORD PTR 49[rcx], r9w
	mov	DWORD PTR 32[rcx], eax
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC2:
	.byte	0
	.byte	0
	.byte	-1
	.byte	32
	.byte	0
	.byte	0
	.byte	-1
	.byte	64
	.align 16
.LC5:
	.word	0
	.word	0
	.word	5
	.word	0
	.word	0
	.word	0
	.word	0
	.word	30
	.align 2
.LC7:
	.byte	0
	.byte	-1
	.align 4
.LC12:
	.word	0
	.word	1105
	.align 4
.LC14:
	.word	0
	.word	1099
	.ident	"GCC: (GNU) 13-win32"
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.def	DrawBackground;	.scl	2;	.type	32;	.endef
	.def	sub_80078D4;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	Base10DigitsToHexNibbles;	.scl	2;	.type	32;	.endef
	.def	TasksDestroyInPriorityRange;	.scl	2;	.type	32;	.endef
	.def	LinkCommunicationError;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayFadeOut;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	m4aSoundVSyncOn;	.scl	2;	.type	32;	.endef
	.def	CpuFastSet;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	sub_8081200;	.scl	2;	.type	32;	.endef
	.def	GameStageStart;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gMultiplayerPseudoRandom, "dr"
	.globl	.refptr.gMultiplayerPseudoRandom
	.linkonce	discard
.refptr.gMultiplayerPseudoRandom:
	.quad	gMultiplayerPseudoRandom
	.section	.rdata$.refptr.gLoadedSaveGame, "dr"
	.globl	.refptr.gLoadedSaveGame
	.linkonce	discard
.refptr.gLoadedSaveGame:
	.quad	gLoadedSaveGame
	.section	.rdata$.refptr.gTilemapsRef, "dr"
	.globl	.refptr.gTilemapsRef
	.linkonce	discard
.refptr.gTilemapsRef:
	.quad	gTilemapsRef
	.section	.rdata$.refptr.gCollectRingsTilemaps, "dr"
	.globl	.refptr.gCollectRingsTilemaps
	.linkonce	discard
.refptr.gCollectRingsTilemaps:
	.quad	gCollectRingsTilemaps
	.section	.rdata$.refptr.EWRAM_START, "dr"
	.globl	.refptr.EWRAM_START
	.linkonce	discard
.refptr.EWRAM_START:
	.quad	EWRAM_START
	.section	.rdata$.refptr.gCollectRingsBgStageTileset, "dr"
	.globl	.refptr.gCollectRingsBgStageTileset
	.linkonce	discard
.refptr.gCollectRingsBgStageTileset:
	.quad	gCollectRingsBgStageTileset
	.section	.rdata$.refptr.gMultiSioEnabled, "dr"
	.globl	.refptr.gMultiSioEnabled
	.linkonce	discard
.refptr.gMultiSioEnabled:
	.quad	gMultiSioEnabled
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
	.section	.rdata$.refptr.gWinRegs, "dr"
	.globl	.refptr.gWinRegs
	.linkonce	discard
.refptr.gWinRegs:
	.quad	gWinRegs
	.section	.rdata$.refptr.gPlayerCharacterIdleAnims, "dr"
	.globl	.refptr.gPlayerCharacterIdleAnims
	.linkonce	discard
.refptr.gPlayerCharacterIdleAnims:
	.quad	gPlayerCharacterIdleAnims
	.section	.rdata$.refptr.gFrameCount, "dr"
	.globl	.refptr.gFrameCount
	.linkonce	discard
.refptr.gFrameCount:
	.quad	gFrameCount
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
	.section	.rdata$.refptr.gPressedKeys, "dr"
	.globl	.refptr.gPressedKeys
	.linkonce	discard
.refptr.gPressedKeys:
	.quad	gPressedKeys
	.section	.rdata$.refptr.gMultiSioSend, "dr"
	.globl	.refptr.gMultiSioSend
	.linkonce	discard
.refptr.gMultiSioSend:
	.quad	gMultiSioSend
	.section	.rdata$.refptr.gMultiplayerLanguage, "dr"
	.globl	.refptr.gMultiplayerLanguage
	.linkonce	discard
.refptr.gMultiplayerLanguage:
	.quad	gMultiplayerLanguage
	.section	.rdata$.refptr.gBgScrollRegs, "dr"
	.globl	.refptr.gBgScrollRegs
	.linkonce	discard
.refptr.gBgScrollRegs:
	.quad	gBgScrollRegs
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
	.section	.rdata$.refptr.gMultiSioRecv, "dr"
	.globl	.refptr.gMultiSioRecv
	.linkonce	discard
.refptr.gMultiSioRecv:
	.quad	gMultiSioRecv
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
	.section	.rdata$.refptr.gMPRingCollectWins, "dr"
	.globl	.refptr.gMPRingCollectWins
	.linkonce	discard
.refptr.gMPRingCollectWins:
	.quad	gMPRingCollectWins
	.section	.rdata$.refptr.gMultiplayerCharRings, "dr"
	.globl	.refptr.gMultiplayerCharRings
	.linkonce	discard
.refptr.gMultiplayerCharRings:
	.quad	gMultiplayerCharRings
	.section	.rdata$.refptr.gMultiplayerCharacters, "dr"
	.globl	.refptr.gMultiplayerCharacters
	.linkonce	discard
.refptr.gMultiplayerCharacters:
	.quad	gMultiplayerCharacters
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
	.section	.rdata$.refptr.gMultiplayerConnections, "dr"
	.globl	.refptr.gMultiplayerConnections
	.linkonce	discard
.refptr.gMultiplayerConnections:
	.quad	gMultiplayerConnections
	.section	.rdata$.refptr.gMultiplayerRanks, "dr"
	.globl	.refptr.gMultiplayerRanks
	.linkonce	discard
.refptr.gMultiplayerRanks:
	.quad	gMultiplayerRanks
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
	.section	.rdata$.refptr.gMultiSioStatusFlags, "dr"
	.globl	.refptr.gMultiSioStatusFlags
	.linkonce	discard
.refptr.gMultiSioStatusFlags:
	.quad	gMultiSioStatusFlags
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
	.section	.rdata$.refptr.gDispCnt, "dr"
	.globl	.refptr.gDispCnt
	.linkonce	discard
.refptr.gDispCnt:
	.quad	gDispCnt
