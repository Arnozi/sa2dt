	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	sub_805B454;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_805B454
sub_805B454:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	xor	ecx, ecx
	mov	rax, QWORD PTR [rbx]
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	WORD PTR [rax], cx
	movzx	eax, WORD PTR 316[rdx]
	add	eax, 1
	mov	WORD PTR 316[rdx], ax
	cmp	ax, 4
	ja	.L4
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	mov	rax, QWORD PTR .refptr.gMultiSioEnabled[rip]
	mov	BYTE PTR [rax], 0
	call	MultiSioStop
	xor	ecx, ecx
	call	MultiSioInit
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	mov	DWORD PTR [rax], 553582592
	call	CreateMultiplayerModeSelectScreen
	mov	rcx, QWORD PTR [rbx]
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.globl	StartMultiPakConnect
	.def	StartMultiPakConnect;	.scl	2;	.type	32;	.endef
	.seh_proc	StartMultiPakConnect
StartMultiPakConnect:
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
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
	mov	r8, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	ecx, 3
	mov	r9d, -2063597563
	mov	DWORD PTR [rax], 0
	lea	rbx, 60[rsp]
	mov	DWORD PTR 60[rsp], 0
	mov	rdx, rbx
	call	DmaSet
	mov	r8, QWORD PTR .refptr.gMultiSioRecv[rip]
	mov	rdx, rbx
	mov	r9d, -2063597548
	mov	ecx, 3
	mov	DWORD PTR 60[rsp], 0
	call	DmaSet
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	edx, 4417
	xor	r9d, r9d
	mov	ecx, 5121
	mov	r8d, 8192
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	edx, 344
	mov	WORD PTR [rax], cx
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	lea	rcx, sub_805ADAC[rip]
	mov	QWORD PTR [rax], 0
	mov	QWORD PTR 32[rsp], 0
	call	TaskCreate
	mov	r8d, 1
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .LC2[rip]
	mov	WORD PTR 336[rbx], r8w
	mov	rcx, rbx
	mov	BYTE PTR 319[rbx], 0
	mov	QWORD PTR 322[rbx], 0
	mov	QWORD PTR [rbx], rax
	mov	DWORD PTR 8[rbx], 16383
	call	UpdateScreenFade
	mov	rdi, QWORD PTR .refptr.gLoadedSaveGame[rip]
	xor	r9d, r9d
	xor	r11d, r11d
	mov	rbp, QWORD PTR .refptr.VRAM[rip]
	lea	rax, gUnknown_080D9050[rip]
	mov	r10d, 4351
	mov	rdx, QWORD PTR [rdi]
	lea	rcx, 65536[rbp]
	mov	QWORD PTR 24[rbx], rcx
	movzx	edx, BYTE PTR 6[rdx]
	mov	WORD PTR 32[rbx], r9w
	mov	esi, DWORD PTR [rax+rdx*8]
	mov	WORD PTR 65[rbx], r10w
	mov	WORD PTR 60[rbx], r11w
	sal	esi, 5
	mov	BYTE PTR 69[rbx], 0
	add	rsi, rcx
	movzx	ecx, WORD PTR 4[rax+rdx*8]
	movzx	eax, BYTE PTR 6[rax+rdx*8]
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 56[rbx], 16777240
	mov	BYTE PTR 64[rbx], al
	movabs	rax, 2251799813689344
	mov	WORD PTR 34[rbx], cx
	lea	rcx, 16[rbx]
	mov	QWORD PTR 48[rbx], rax
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR [rdi]
	mov	QWORD PTR 88[rbx], rsi
	xor	r8d, r8d
	mov	rdx, QWORD PTR .refptr.gPressStartTiles[rip]
	xor	r9d, r9d
	mov	r10d, 20
	xor	r11d, r11d
	movzx	ecx, BYTE PTR 6[rax]
	movdqu	xmm0, XMMWORD PTR .LC6[rip]
	mov	WORD PTR 188[rbx], r8w
	mov	WORD PTR 226[rbx], r9w
	mov	eax, DWORD PTR [rdx+rcx*8]
	mov	WORD PTR 268[rbx], r10w
	movups	XMMWORD PTR 252[rbx], xmm0
	sal	eax, 5
	mov	BYTE PTR 133[rbx], 0
	add	rsi, rax
	movzx	eax, WORD PTR 4[rdx+rcx*8]
	mov	DWORD PTR 136[rbx], -1
	mov	DWORD PTR 120[rbx], 16777338
	mov	WORD PTR 98[rbx], ax
	movzx	eax, BYTE PTR 6[rdx+rcx*8]
	xor	edx, edx
	mov	ecx, -248
	mov	WORD PTR 192[rbx], cx
	lea	rcx, 208[rbx]
	mov	BYTE PTR 128[rbx], al
	xor	eax, eax
	mov	WORD PTR 96[rbx], ax
	mov	eax, 4351
	mov	WORD PTR 129[rbx], ax
	movabs	rax, 59954170039373824
	mov	QWORD PTR 112[rbx], rax
	mov	QWORD PTR 176[rbx], rax
	lea	rax, 40960[rbp]
	mov	QWORD PTR 232[rbx], rax
	mov	WORD PTR 124[rbx], dx
	mov	QWORD PTR 152[rbx], rsi
	mov	DWORD PTR 160[rbx], 70385664
	mov	BYTE PTR 194[rbx], 16
	mov	BYTE PTR 197[rbx], 0
	mov	DWORD PTR 200[rbx], -1
	mov	DWORD PTR 184[rbx], 16777426
	mov	QWORD PTR 216[rbx], rbp
	mov	BYTE PTR 270[rbx], 0
	mov	WORD PTR 274[rbx], r11w
	call	DrawBackground
	mov	rax, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	test	BYTE PTR [rax], -128
	jne	.L19
.L6:
	mov	r8, QWORD PTR [rdi]
	mov	r10, QWORD PTR .refptr.gMultiplayerUnlockedLevels[rip]
	xor	r9d, r9d
	mov	ecx, 1
	mov	rdx, QWORD PTR .refptr.gMultiplayerUnlockedCharacters[rip]
	movzx	eax, BYTE PTR 19[r8]
	mov	BYTE PTR [r10], 1
	or	eax, 15
	mov	BYTE PTR [rdx], al
	lea	rax, 7[r8]
	add	r8, 12
	.p2align 4,,10
	.p2align 3
.L8:
	movzx	edx, BYTE PTR [rax]
	cmp	cl, dl
	jnb	.L7
	mov	ecx, edx
	mov	r9d, 1
.L7:
	add	rax, 1
	cmp	r8, rax
	jne	.L8
	test	r9b, r9b
	je	.L9
	mov	eax, 27
	cmp	cl, al
	cmova	ecx, eax
	mov	BYTE PTR [r10], cl
.L9:
	mov	BYTE PTR 330[rbx], 0
	mov	BYTE PTR 334[rbx], 0
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L19:
	call	MultiSioStart
	jmp	.L6
	.seh_endproc
	.p2align 4
	.globl	LinkCommunicationError
	.def	LinkCommunicationError;	.scl	2;	.type	32;	.endef
	.seh_proc	LinkCommunicationError
LinkCommunicationError:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	call	m4aMPlayAllStop
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	mov	edx, 64
	and	DWORD PTR [rax], -5
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.gMultiSioEnabled[rip]
	mov	BYTE PTR [rax], 0
	call	MultiSioStop
	xor	ecx, ecx
	call	MultiSioInit
	mov	rax, QWORD PTR .refptr.gTilemapsRef[rip]
	mov	ecx, 1
	mov	rdx, QWORD PTR .refptr.gTilemaps[rip]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR .refptr.gRefSpriteTables[rip]
	mov	rdx, QWORD PTR .refptr.gSpriteTables[rip]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
	mov	DWORD PTR [rax], 0
	add	rsp, 40
	jmp	CreateMultipackOutcomeScreen
	.seh_endproc
	.p2align 4
	.def	sub_805B4C0;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_805B4C0
sub_805B4C0:
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
	mov	rbp, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR 0[rbp]
	cmp	BYTE PTR [r8], 2
	mov	r9, QWORD PTR 24[rax]
	jbe	.L25
	mov	r13, QWORD PTR .refptr.gMultiplayerConnections[rip]
	movzx	ebx, BYTE PTR 0[r13]
	test	bl, 1
	je	.L25
	mov	rax, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	xor	ecx, ecx
	mov	r10d, 1
	mov	r11d, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
.L28:
	mov	edx, r10d
	sal	edx, cl
	test	edx, r11d
	jne	.L26
	movzx	edx, BYTE PTR [rax]
	lea	esi, 1[rdx]
	mov	BYTE PTR [rax], sil
	cmp	dl, -76
	ja	.L85
.L27:
	add	ecx, 1
	cmp	ecx, 4
	je	.L25
	add	rax, 1
	bt	ebx, ecx
	jc	.L28
	.p2align 4,,10
	.p2align 3
.L25:
	mov	rbx, QWORD PTR .refptr.gMultiSioRecv[rip]
	movzx	eax, WORD PTR [rbx]
	movzx	edi, BYTE PTR 2[rbx]
	cmp	ax, 16402
	je	.L87
	cmp	ax, 16400
	je	.L86
	mov	rsi, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	mov	r11d, DWORD PTR [rsi]
	mov	ebp, r11d
	and	ebp, 128
	jne	.L88
.L45:
	lea	rax, 322[r9]
	lea	r10, 326[r9]
	xor	ecx, ecx
.L47:
	movzx	edx, BYTE PTR [rax]
	lea	r8d, [rdx+rdx]
	sal	edx, 25
	cmp	edx, 1
	mov	BYTE PTR [rax], r8b
	sbb	ecx, -1
	add	rax, 1
	cmp	rax, r10
	jne	.L47
	cmp	ecx, 1
	jle	.L48
	add	ecx, 6
	mov	r12d, 1074
	mov	BYTE PTR 193[r9], -1
	lea	rbp, 144[r9]
	mov	BYTE PTR 192[r9], cl
	mov	rcx, rbp
	mov	WORD PTR 162[r9], r12w
	call	UpdateSpriteAnimation
	mov	rcx, rbp
	call	DisplaySprite
	mov	r11d, DWORD PTR [rsi]
	mov	ebp, r11d
	and	ebp, 128
.L48:
	mov	rdx, QWORD PTR .refptr.gMultiplayerUnlockedCharacters[rip]
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	xor	ecx, ecx
	mov	rax, QWORD PTR [rax]
	mov	cl, BYTE PTR [rdx]
	mov	rdx, QWORD PTR .refptr.gMultiplayerUnlockedLevels[rip]
	mov	r10d, DWORD PTR [rax]
	mov	r9d, DWORD PTR 38[rax]
	mov	ch, BYTE PTR [rdx]
	movzx	r8d, WORD PTR 42[rax]
	test	ebp, ebp
	je	.L49
	mov	rdx, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	esi, 16402
	add	rbx, 20
	mov	WORD PTR 14[rdx], cx
	mov	rcx, QWORD PTR .refptr.gMultiplayerConnections[rip]
	mov	WORD PTR [rdx], si
	mov	BYTE PTR 2[rdx], dil
	mov	DWORD PTR 4[rdx], r10d
	mov	DWORD PTR 8[rdx], r9d
	mov	WORD PTR 12[rdx], r8w
	movzx	r8d, BYTE PTR [rcx]
	mov	ecx, 1
.L56:
	bt	r8d, ecx
	jnc	.L57
	bt	r11d, ecx
	jnc	.L52
	cmp	WORD PTR [rbx], 16401
	je	.L53
.L52:
	mov	ecx, 16401
	mov	WORD PTR [rdx], cx
	mov	ecx, DWORD PTR 32[rax]
	movzx	eax, WORD PTR 36[rax]
	mov	DWORD PTR 8[rdx], ecx
	mov	WORD PTR 12[rdx], ax
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L88:
	movzx	eax, BYTE PTR 335[r9]
	lea	edx, 1[rax]
	mov	BYTE PTR 335[r9], dl
	cmp	al, 60
	jbe	.L45
.L85:
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
	.p2align 4,,10
	.p2align 3
.L26:
	mov	BYTE PTR [rax], 0
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L87:
	mov	r15, QWORD PTR .refptr.REG_BASE[rip]
	movzx	eax, BYTE PTR 296[r15]
	shr	al, 4
	and	eax, 3
	bt	edi, eax
	jnc	.L86
	mov	r14, QWORD PTR .refptr.gMultiplayerNames[rip]
	mov	BYTE PTR [r8], 3
	mov	rdi, rbx
	mov	esi, 3
	mov	r13, QWORD PTR .refptr.gMultiplayerConnections[rip]
	lea	r12, 36[r14]
.L43:
	movzx	eax, BYTE PTR 0[r13]
	bt	eax, esi
	jnc	.L30
.L92:
	mov	edx, esi
	test	esi, esi
	je	.L89
	cmp	WORD PTR 60[rdi], 16401
	je	.L90
.L36:
	movzx	eax, BYTE PTR 296[r15]
	shr	al, 4
	and	eax, 3
	cmp	eax, edx
	jne	.L91
	movzx	eax, BYTE PTR 0[r13]
	sub	rsi, 1
	sub	r12, 12
	sub	rdi, 20
	bt	eax, esi
	jc	.L92
	.p2align 4,,10
	.p2align 3
.L30:
	sub	rsi, 1
	sub	r12, 12
	sub	rdi, 20
	cmp	rsi, -1
	jne	.L43
.L42:
	call	WriteSaveGame
	mov	rcx, QWORD PTR 0[rbp]
	call	TaskDestroy
	xor	ecx, ecx
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	CreateMultipackOutcomeScreen
	.p2align 4,,10
	.p2align 3
.L49:
	mov	rax, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	edx, 16401
	mov	WORD PTR [rax], dx
	mov	BYTE PTR 2[rax], dil
	mov	DWORD PTR 4[rax], r10d
	mov	DWORD PTR 8[rax], r9d
	mov	WORD PTR 12[rax], r8w
	mov	WORD PTR 14[rax], cx
.L21:
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
.L91:
	mov	rax, QWORD PTR .refptr.gMultiplayerIds[rip]
	mov	rdx, r12
	sub	rdi, 20
	sub	r12, 12
	mov	ecx, DWORD PTR [rax+rsi*4]
	sub	rsi, 1
	call	InsertMultiplayerProfile
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L57:
	bt	r11d, ecx
	jc	.L52
.L53:
	add	ecx, 1
	add	rbx, 20
	cmp	ecx, 4
	je	.L21
	jmp	.L56
	.p2align 4,,10
	.p2align 3
.L90:
	mov	rax, QWORD PTR .refptr.gMultiplayerIds[rip]
	mov	ecx, DWORD PTR 64[rdi]
	cmp	DWORD PTR [rax+rsi*4], ecx
	je	.L93
	mov	eax, -1
	mov	WORD PTR [r12], ax
.L38:
	mov	rax, QWORD PTR .refptr.gMultiplayerUnlockedCharacters[rip]
	movzx	ecx, BYTE PTR 74[rdi]
	or	BYTE PTR [rax], cl
	mov	rax, QWORD PTR .refptr.gMultiplayerUnlockedLevels[rip]
	movzx	ecx, BYTE PTR 75[rdi]
	cmp	BYTE PTR [rax], cl
	jnb	.L36
	mov	BYTE PTR [rax], cl
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L86:
	mov	rax, QWORD PTR .refptr.gMultiSioEnabled[rip]
	xor	r13d, r13d
	mov	BYTE PTR [rax], 0
	call	MultiSioStop
	xor	ecx, ecx
	call	MultiSioInit
	mov	rax, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	WORD PTR [rax], r13w
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	mov	DWORD PTR [rax], 553582592
	jmp	.L85
	.p2align 4,,10
	.p2align 3
.L89:
	mov	rcx, QWORD PTR .refptr.gMultiplayerIds[rip]
	mov	eax, DWORD PTR 4[rbx]
	cmp	DWORD PTR [rcx], eax
	je	.L94
	mov	eax, -1
	mov	WORD PTR [r14], ax
.L33:
	mov	rax, QWORD PTR .refptr.gMultiplayerUnlockedCharacters[rip]
	movzx	edx, BYTE PTR 14[rbx]
	or	BYTE PTR [rax], dl
	mov	rax, QWORD PTR .refptr.gMultiplayerUnlockedLevels[rip]
	movzx	edx, BYTE PTR 15[rbx]
	cmp	BYTE PTR [rax], dl
	jnb	.L34
	mov	BYTE PTR [rax], dl
.L34:
	movzx	eax, BYTE PTR 296[r15]
	test	al, 48
	je	.L42
	mov	ecx, DWORD PTR [rcx+rsi*4]
	mov	rdx, r12
	call	InsertMultiplayerProfile
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L94:
	mov	eax, DWORD PTR 8[rbx]
	mov	DWORD PTR 6[r14], eax
	movzx	eax, WORD PTR 12[rbx]
	mov	WORD PTR 10[r14], ax
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L93:
	mov	eax, DWORD PTR 68[rdi]
	mov	DWORD PTR 6[r12], eax
	movzx	eax, WORD PTR 72[rdi]
	mov	WORD PTR 10[r12], ax
	jmp	.L38
	.seh_endproc
	.p2align 4
	.def	sub_805ADAC;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_805ADAC
sub_805ADAC:
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	mov	rcx, rbx
	call	UpdateScreenFade
	mov	rax, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	mov	esi, DWORD PTR [rax]
	mov	eax, esi
	and	eax, 129
	mov	DWORD PTR 48[rsp], eax
	jne	.L96
	test	esi, 256
	jne	.L97
.L105:
	test	esi, 4096
	jne	.L98
	mov	rax, QWORD PTR .refptr.gMultiSioRecv[rip]
	movzx	r9d, WORD PTR [rax]
.L183:
	mov	r15, QWORD PTR .refptr.REG_BASE[rip]
.L100:
	mov	BYTE PTR 337[rbx], 0
.L107:
	mov	rdi, QWORD PTR .refptr.gMultiplayerUnlockedCharacters[rip]
	mov	BYTE PTR 53[rsp], 0
	xor	ecx, ecx
	xor	ebp, ebp
	mov	BYTE PTR 34[rsp], 0
	mov	r8, rax
	xor	r13d, r13d
	xor	r12d, r12d
	mov	rdx, QWORD PTR .refptr.gMultiplayerUnlockedLevels[rip]
	movzx	r14d, BYTE PTR [rdi]
	mov	BYTE PTR 35[rsp], 1
	lea	r11, 288[r15]
	mov	r10, QWORD PTR .refptr.gMultiplayerNames[rip]
	mov	BYTE PTR 52[rsp], 0
	movzx	edi, BYTE PTR [rdx]
	mov	DWORD PTR 36[rsp], 0
	mov	QWORD PTR 72[rsp], r10
	mov	BYTE PTR 33[rsp], dil
	mov	QWORD PTR 64[rsp], r10
	mov	QWORD PTR 40[rsp], rax
	mov	WORD PTR 54[rsp], r9w
	mov	QWORD PTR 56[rsp], rax
.L116:
	movzx	edi, BYTE PTR 326[rbx+rcx]
	movzx	eax, BYTE PTR 322[rbx+rcx]
	lea	r9d, [rdi+rdi]
	add	eax, eax
	mov	edi, 1
	mov	BYTE PTR 322[rbx+rcx], al
	sal	edi, cl
	mov	BYTE PTR 326[rbx+rcx], r9b
	movzx	edx, BYTE PTR 296[r15]
	shr	dl, 4
	and	edx, 3
	cmp	edx, ecx
	je	.L108
	test	edi, esi
	je	.L109
	cmp	WORD PTR [r8], 16399
	ja	.L108
	mov	BYTE PTR 35[rsp], 0
	movzx	edx, WORD PTR [r11]
	mov	ebp, 1
.L113:
	mov	r13d, 1
	test	al, al
	jne	.L144
.L115:
	add	rcx, 1
	add	r11, 2
	add	r8, 20
	add	r10, 12
	cmp	rcx, 4
	jne	.L116
	cmp	BYTE PTR 53[rsp], 0
	mov	rdi, QWORD PTR 40[rsp]
	movzx	r9d, WORD PTR 54[rsp]
	mov	rax, QWORD PTR 56[rsp]
	je	.L117
	mov	rdx, QWORD PTR .refptr.gMultiplayerUnlockedLevels[rip]
	movzx	ecx, BYTE PTR 33[rsp]
	mov	BYTE PTR [rdx], cl
.L117:
	cmp	BYTE PTR 34[rsp], 0
	je	.L118
	mov	rcx, QWORD PTR .refptr.gMultiplayerUnlockedCharacters[rip]
	mov	BYTE PTR [rcx], r14b
.L118:
	test	r12d, r12d
	mov	edx, 1
	cmove	r12d, edx
	cmp	BYTE PTR 334[rbx], 0
	jne	.L120
	cmp	DWORD PTR 48[rsp], 1
	je	.L186
	mov	BYTE PTR 334[rbx], 1
.L120:
	test	bpl, bpl
	jne	.L124
	cmp	r9w, 16401
	je	.L187
.L124:
	cmp	r9w, 16402
	ja	.L185
.L123:
	mov	rdi, QWORD PTR .refptr.gPressedKeys[rip]
	test	BYTE PTR [rdi], 2
	jne	.L188
	and	esi, 128
	je	.L136
	cmp	r12d, 1
	jle	.L138
	test	BYTE PTR 35[rsp], 1
	je	.L136
	lea	rsi, 80[rbx]
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
.L137:
	mov	r8d, 1074
	add	r12d, 6
	mov	BYTE PTR 193[rbx], -1
	lea	rsi, 144[rbx]
	mov	WORD PTR 162[rbx], r8w
	mov	rcx, rsi
	mov	BYTE PTR 192[rbx], r12b
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
.L138:
	lea	rcx, 16[rbx]
	call	DisplaySprite
	mov	rax, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	test	BYTE PTR [rax], -128
	je	.L139
	and	ebp, 1
	jne	.L140
	cmp	DWORD PTR 36[rsp], 1
	jle	.L140
	test	BYTE PTR [rdi], 8
	jne	.L141
	cmp	BYTE PTR 330[rbx], 0
	jne	.L141
	.p2align 4,,10
	.p2align 3
.L142:
	mov	rax, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	edx, 16400
	mov	rsi, QWORD PTR .refptr.gMultiplayerUnlockedCharacters[rip]
	mov	WORD PTR [rax], dx
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	mov	ecx, DWORD PTR [rdx]
	mov	DWORD PTR 4[rax], ecx
	mov	ecx, DWORD PTR 32[rdx]
	movzx	edx, WORD PTR 36[rdx]
	mov	DWORD PTR 8[rax], ecx
	mov	WORD PTR 12[rax], dx
	xor	edx, edx
	mov	dl, BYTE PTR [rsi]
	mov	rsi, QWORD PTR .refptr.gMultiplayerUnlockedLevels[rip]
	mov	dh, BYTE PTR [rsi]
	mov	WORD PTR 14[rax], dx
.L95:
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
.L97:
	test	esi, 4096
	je	.L189
.L98:
	movzx	eax, BYTE PTR 337[rbx]
	add	eax, 1
	mov	BYTE PTR 337[rbx], al
	cmp	al, 8
	ja	.L185
	mov	rax, QWORD PTR .refptr.gMultiSioRecv[rip]
	mov	r15, QWORD PTR .refptr.REG_BASE[rip]
	movzx	r9d, WORD PTR [rax]
	jmp	.L107
	.p2align 4,,10
	.p2align 3
.L108:
	or	eax, 1
	or	BYTE PTR 52[rsp], dil
	mov	rdi, QWORD PTR .refptr.gMultiplayerIds[rip]
	mov	BYTE PTR 322[rbx+rcx], al
	mov	eax, DWORD PTR 4[r8]
	add	DWORD PTR 36[rsp], 1
	test	r13b, r13b
	mov	DWORD PTR [rdi+rcx*4], eax
	mov	eax, DWORD PTR 8[r8]
	cmovne	ebp, r13d
	mov	BYTE PTR 34[rsp], 1
	mov	DWORD PTR [r10], eax
	movzx	eax, WORD PTR 12[r8]
	mov	WORD PTR 4[r10], ax
	movzx	eax, BYTE PTR 15[r8]
	or	r14b, BYTE PTR 14[r8]
	cmp	BYTE PTR 33[rsp], al
	jnb	.L144
	mov	BYTE PTR 33[rsp], al
	mov	BYTE PTR 53[rsp], 1
.L144:
	add	r12d, 1
	jmp	.L115
	.p2align 4,,10
	.p2align 3
.L109:
	movzx	edx, WORD PTR [r11]
	test	dx, dx
	jne	.L114
	or	r9d, 1
	mov	BYTE PTR 326[rbx+rcx], r9b
	test	al, al
	je	.L147
	mov	ebp, 1
	mov	r13d, 1
	jmp	.L144
	.p2align 4,,10
	.p2align 3
.L96:
	mov	r15, QWORD PTR .refptr.REG_BASE[rip]
	movzx	eax, BYTE PTR 296[r15]
	shr	al, 4
	and	eax, 3
	bt	esi, eax
	movzx	eax, BYTE PTR 296[r15]
	jc	.L103
	mov	rcx, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
	shr	al, 4
	and	eax, 3
	movzx	edx, BYTE PTR [rcx+rax]
	lea	r8d, 1[rdx]
	mov	BYTE PTR [rcx+rax], r8b
	cmp	dl, -76
	ja	.L185
.L104:
	test	esi, 256
	je	.L105
	test	esi, 4096
	jne	.L98
	mov	rax, QWORD PTR .refptr.gMultiSioRecv[rip]
	movzx	r9d, WORD PTR [rax]
	test	sil, 1
	jne	.L100
	jmp	.L106
	.p2align 4,,10
	.p2align 3
.L185:
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
	add	rsp, 88
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
.L114:
	movzx	edi, BYTE PTR 35[rsp]
	xor	edx, edx
	test	r9b, r9b
	cmovne	edi, edx
	mov	edx, 1
	cmovne	ebp, edx
	mov	BYTE PTR 35[rsp], dil
	jmp	.L113
	.p2align 4,,10
	.p2align 3
.L136:
	cmp	r12d, 1
	jle	.L138
	jmp	.L137
	.p2align 4,,10
	.p2align 3
.L103:
	mov	rdx, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
	shr	al, 4
	and	eax, 3
	mov	BYTE PTR [rdx+rax], 0
	jmp	.L104
	.p2align 4,,10
	.p2align 3
.L147:
	mov	BYTE PTR 35[rsp], 0
	mov	ebp, 1
	mov	r13d, 1
	jmp	.L115
	.p2align 4,,10
	.p2align 3
.L139:
	cmp	BYTE PTR 330[rbx], 0
	je	.L142
	mov	BYTE PTR 330[rbx], 0
	jmp	.L142
	.p2align 4,,10
	.p2align 3
.L188:
	mov	ecx, 107
	call	m4aSongNumStart
	mov	rax, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	test	BYTE PTR [rax], -128
	je	.L134
	mov	rax, QWORD PTR .refptr.gMultiSioSend[rip]
	xor	r10d, r10d
	xor	r11d, r11d
	lea	rsi, sub_805B454[rip]
	mov	WORD PTR 316[rbx], r11w
	mov	WORD PTR [rax], r10w
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rax], rsi
	jmp	.L95
	.p2align 4,,10
	.p2align 3
.L189:
	mov	rax, QWORD PTR .refptr.gMultiSioRecv[rip]
.L106:
	movzx	r9d, WORD PTR [rax]
	test	r9w, r9w
	jne	.L98
	jmp	.L183
	.p2align 4,,10
	.p2align 3
.L134:
	mov	rax, QWORD PTR .refptr.gMultiSioEnabled[rip]
	mov	BYTE PTR [rax], 0
	call	MultiSioStop
	xor	ecx, ecx
	call	MultiSioInit
	mov	rax, QWORD PTR .refptr.gMultiSioSend[rip]
	xor	r9d, r9d
	mov	WORD PTR [rax], r9w
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	mov	DWORD PTR [rax], 553582592
	call	CreateMultiplayerModeSelectScreen
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	add	rsp, 88
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L140:
	cmp	BYTE PTR 330[rbx], 0
	je	.L142
	mov	BYTE PTR 330[rbx], 0
	mov	BYTE PTR 336[rbx], 1
	jmp	.L142
	.p2align 4,,10
	.p2align 3
.L141:
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	movzx	esi, BYTE PTR 52[rsp]
	mov	ecx, 16401
	mov	rax, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	rdx, QWORD PTR [rdx]
	mov	BYTE PTR 2[rax], sil
	mov	rsi, QWORD PTR .refptr.gMultiplayerUnlockedCharacters[rip]
	mov	WORD PTR [rax], cx
	mov	ecx, DWORD PTR [rdx]
	mov	DWORD PTR 4[rax], ecx
	mov	ecx, DWORD PTR 304[rbx]
	mov	DWORD PTR 16[rax], ecx
	mov	ecx, DWORD PTR 32[rdx]
	movzx	edx, WORD PTR 36[rdx]
	mov	BYTE PTR 330[rbx], 1
	mov	DWORD PTR 8[rax], ecx
	mov	WORD PTR 12[rax], dx
	xor	edx, edx
	mov	dl, BYTE PTR [rsi]
	mov	rsi, QWORD PTR .refptr.gMultiplayerUnlockedLevels[rip]
	mov	BYTE PTR 336[rbx], 0
	mov	dh, BYTE PTR [rsi]
	mov	WORD PTR 14[rax], dx
	jmp	.L95
	.p2align 4,,10
	.p2align 3
.L186:
	cmp	r9w, 16400
	ja	.L185
	mov	BYTE PTR 334[rbx], 1
	jmp	.L123
	.p2align 4,,10
	.p2align 3
.L187:
	cmp	BYTE PTR 334[rbx], 0
	je	.L123
	mov	ecx, DWORD PTR 16[rax]
	mov	rdx, QWORD PTR .refptr.gMultiplayerPseudoRandom[rip]
	mov	r8, QWORD PTR 64[rsp]
	mov	DWORD PTR [rdx], ecx
	mov	rdx, QWORD PTR .refptr.gMultiplayerConnections[rip]
	movzx	ecx, BYTE PTR 2[rax]
	mov	BYTE PTR [rdx], cl
	xor	edx, edx
.L132:
	bt	ecx, edx
	jnc	.L126
	test	rdx, rdx
	je	.L190
	cmp	WORD PTR [rdi], 16400
	jne	.L126
	mov	r10d, DWORD PTR 4[rdi]
	mov	r9, QWORD PTR .refptr.gMultiplayerIds[rip]
	mov	rsi, QWORD PTR .refptr.gMultiplayerUnlockedCharacters[rip]
	mov	DWORD PTR [r9+rdx*4], r10d
	mov	r9d, DWORD PTR 8[rdi]
	mov	DWORD PTR [r8], r9d
	movzx	r9d, WORD PTR 12[rdi]
	mov	WORD PTR 4[r8], r9w
	movzx	r9d, BYTE PTR 14[rdi]
	or	BYTE PTR [rsi], r9b
	mov	rsi, QWORD PTR .refptr.gMultiplayerUnlockedLevels[rip]
	movzx	r9d, BYTE PTR 15[rdi]
	cmp	BYTE PTR [rsi], r9b
	jnb	.L126
	mov	BYTE PTR [rsi], r9b
	.p2align 4,,10
	.p2align 3
.L126:
	add	rdx, 1
	add	rdi, 20
	add	r8, 12
	cmp	rdx, 4
	jne	.L132
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
	xor	esi, esi
	mov	BYTE PTR 330[rbx], 0
	mov	WORD PTR 316[rbx], si
	lea	rsi, sub_805B4C0[rip]
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	BYTE PTR 335[rbx], 0
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 88
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	sub_805B4C0
.L190:
	mov	rdx, QWORD PTR .refptr.gMultiplayerIds[rip]
	mov	r9d, DWORD PTR 4[rax]
	mov	rsi, QWORD PTR 72[rsp]
	mov	DWORD PTR [rdx], r9d
	mov	edx, DWORD PTR 8[rax]
	mov	DWORD PTR [rsi], edx
	movzx	edx, WORD PTR 12[rax]
	mov	WORD PTR 4[rsi], dx
	mov	rsi, QWORD PTR .refptr.gMultiplayerUnlockedCharacters[rip]
	movzx	edx, BYTE PTR 14[rax]
	or	BYTE PTR [rsi], dl
	mov	rsi, QWORD PTR .refptr.gMultiplayerUnlockedLevels[rip]
	movzx	edx, BYTE PTR 15[rax]
	cmp	BYTE PTR [rsi], dl
	jnb	.L128
	mov	BYTE PTR [rsi], dl
	add	rdi, 20
	add	r8, 12
	mov	edx, 1
	jmp	.L132
.L128:
	add	rdi, 20
	add	r8, 12
	mov	edx, 1
	jmp	.L132
	.seh_endproc
	.section .rdata,"dr"
	.align 32
gUnknown_080D9050:
	.long	90
	.word	1074
	.byte	0
	.space 1
	.long	90
	.word	1074
	.byte	0
	.space 1
	.long	84
	.word	1079
	.byte	0
	.space 1
	.long	90
	.word	1080
	.byte	0
	.space 1
	.long	90
	.word	1081
	.byte	0
	.space 1
	.long	90
	.word	1082
	.byte	0
	.space 1
	.long	45
	.word	1083
	.byte	0
	.space 1
	.align 8
.LC2:
	.word	1
	.word	2
	.word	0
	.word	256
	.align 16
.LC6:
	.word	0
	.word	0
	.word	114
	.word	0
	.word	0
	.word	0
	.word	0
	.word	30
	.ident	"GCC: (GNU) 13-win32"
	.def	MultiSioStop;	.scl	2;	.type	32;	.endef
	.def	MultiSioInit;	.scl	2;	.type	32;	.endef
	.def	CreateMultiplayerModeSelectScreen;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	UpdateScreenFade;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DrawBackground;	.scl	2;	.type	32;	.endef
	.def	MultiSioStart;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayAllStop;	.scl	2;	.type	32;	.endef
	.def	CreateMultipackOutcomeScreen;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TasksDestroyInPriorityRange;	.scl	2;	.type	32;	.endef
	.def	WriteSaveGame;	.scl	2;	.type	32;	.endef
	.def	InsertMultiplayerProfile;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gPressedKeys, "dr"
	.globl	.refptr.gPressedKeys
	.linkonce	discard
.refptr.gPressedKeys:
	.quad	gPressedKeys
	.section	.rdata$.refptr.gMultiplayerPseudoRandom, "dr"
	.globl	.refptr.gMultiplayerPseudoRandom
	.linkonce	discard
.refptr.gMultiplayerPseudoRandom:
	.quad	gMultiplayerPseudoRandom
	.section	.rdata$.refptr.gMultiplayerIds, "dr"
	.globl	.refptr.gMultiplayerIds
	.linkonce	discard
.refptr.gMultiplayerIds:
	.quad	gMultiplayerIds
	.section	.rdata$.refptr.gMultiplayerNames, "dr"
	.globl	.refptr.gMultiplayerNames
	.linkonce	discard
.refptr.gMultiplayerNames:
	.quad	gMultiplayerNames
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
	.section	.rdata$.refptr.gSpriteTables, "dr"
	.globl	.refptr.gSpriteTables
	.linkonce	discard
.refptr.gSpriteTables:
	.quad	gSpriteTables
	.section	.rdata$.refptr.gRefSpriteTables, "dr"
	.globl	.refptr.gRefSpriteTables
	.linkonce	discard
.refptr.gRefSpriteTables:
	.quad	gRefSpriteTables
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
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
	.section	.rdata$.refptr.gMultiplayerUnlockedLevels, "dr"
	.globl	.refptr.gMultiplayerUnlockedLevels
	.linkonce	discard
.refptr.gMultiplayerUnlockedLevels:
	.quad	gMultiplayerUnlockedLevels
	.section	.rdata$.refptr.gMultiplayerUnlockedCharacters, "dr"
	.globl	.refptr.gMultiplayerUnlockedCharacters
	.linkonce	discard
.refptr.gMultiplayerUnlockedCharacters:
	.quad	gMultiplayerUnlockedCharacters
	.section	.rdata$.refptr.gMultiSioStatusFlags, "dr"
	.globl	.refptr.gMultiSioStatusFlags
	.linkonce	discard
.refptr.gMultiSioStatusFlags:
	.quad	gMultiSioStatusFlags
	.section	.rdata$.refptr.gPressStartTiles, "dr"
	.globl	.refptr.gPressStartTiles
	.linkonce	discard
.refptr.gPressStartTiles:
	.quad	gPressStartTiles
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
	.section	.rdata$.refptr.gMultiSioRecv, "dr"
	.globl	.refptr.gMultiSioRecv
	.linkonce	discard
.refptr.gMultiSioRecv:
	.quad	gMultiSioRecv
	.section	.rdata$.refptr.gMultiplayerMissingHeartbeats, "dr"
	.globl	.refptr.gMultiplayerMissingHeartbeats
	.linkonce	discard
.refptr.gMultiplayerMissingHeartbeats:
	.quad	gMultiplayerMissingHeartbeats
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
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
