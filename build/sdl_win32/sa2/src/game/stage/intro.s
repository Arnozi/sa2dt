	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_Dummy;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_Dummy
TaskDestructor_Dummy:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.def	Task_UpdateStageLoadingScreen;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_UpdateStageLoadingScreen
Task_UpdateStageLoadingScreen:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rcx]
	mov	rax, QWORD PTR [rax]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	movsx	r8, BYTE PTR [rax]
	lea	rax, sZoneLoadingCharacterColors[rip]
	movzx	r8d, WORD PTR [rax+r8*2]
	mov	rax, QWORD PTR .refptr.gBgPalette[rip]
	mov	WORD PTR [rax], r8w
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 1
	cmp	edx, 199
	ja	.L5
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.def	Task_802F9F8;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_802F9F8
Task_802F9F8:
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
	mov	r15, QWORD PTR .refptr.gCurTask[rip]
	mov	rdi, QWORD PTR .refptr.gDispCnt[rip]
	mov	rax, QWORD PTR [r15]
	and	WORD PTR [rdi], 8191
	mov	rsi, QWORD PTR 24[rax]
	mov	rbp, QWORD PTR [rsi]
	lea	rcx, 8[rsi]
	mov	edx, DWORD PTR 0[rbp]
	cmp	edx, 149
	jbe	.L7
	sub	edx, 150
	cmp	edx, 15
	ja	.L26
	mov	eax, edx
	sal	eax, 9
.L8:
	mov	WORD PTR 12[rsi], ax
	mov	rax, QWORD PTR .refptr.gCheese[rip]
	mov	r9, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	ja	.L9
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	lea	r8, gUnknown_080D6FF5[rip+240]
	mov	r11, QWORD PTR .refptr.gObjPalette[rip]
	lea	r12, 48[r8]
	movsx	rax, BYTE PTR [rax]
	lea	rbx, [rax+rax*2]
	sal	rbx, 4
	.p2align 4,,10
	.p2align 3
.L11:
	movzx	eax, BYTE PTR -238[r8+rbx]
	movzx	r10d, BYTE PTR -239[r8+rbx]
	imul	eax, edx
	imul	r10d, edx
	shr	eax, 4
	shr	r10d, 4
	sal	eax, 10
	sal	r10d, 5
	or	eax, r10d
	movzx	r10d, BYTE PTR -240[r8+rbx]
	imul	r10d, edx
	shr	r10d, 4
	or	eax, r10d
	mov	WORD PTR [r11], ax
	test	r9, r9
	je	.L10
	movzx	eax, BYTE PTR 2[r8]
	movzx	r10d, BYTE PTR 1[r8]
	imul	eax, edx
	imul	r10d, edx
	shr	eax, 4
	shr	r10d, 4
	sal	eax, 10
	sal	r10d, 5
	or	eax, r10d
	movzx	r10d, BYTE PTR [r8]
	imul	r10d, edx
	shr	r10d, 4
	or	eax, r10d
	mov	WORD PTR 448[r11], ax
.L10:
	add	r8, 3
	add	r11, 2
	cmp	r12, r8
	jne	.L11
.L12:
	mov	r10d, 16335
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	mov	WORD PTR 16[rsi], r10w
	or	DWORD PTR [rax], 2
	call	UpdateScreenFade
	mov	edx, 7999
	mov	ecx, 31
.L19:
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	DWORD PTR 20[rax], ecx
	mov	rcx, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	DWORD PTR 16[rax], edx
	cmp	BYTE PTR [rcx], 29
	je	.L39
	cmp	DWORD PTR 0[rbp], 199
	jbe	.L6
	mov	rdx, QWORD PTR .refptr.gBldRegs[rip]
	xor	r8d, r8d
	movdqu	xmm0, XMMWORD PTR .LC0[rip]
	mov	QWORD PTR 16[rax], 0
	mov	WORD PTR 4[rdx], r8w
	mov	DWORD PTR [rdx], 0
	movzx	edx, WORD PTR [rdi]
	movups	XMMWORD PTR [rax], xmm0
	and	dx, 8191
.L23:
	mov	rcx, QWORD PTR [r15]
	mov	WORD PTR [rdi], dx
	add	rsp, 56
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
.L26:
	mov	eax, 8192
	mov	edx, 16
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L39:
	and	edx, -7
	mov	DWORD PTR 16[rax], edx
	cmp	DWORD PTR 0[rbp], 199
	ja	.L21
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
.L9:
	mov	rax, QWORD PTR .refptr.gMultiplayerConnections[rip]
	mov	QWORD PTR 40[rsp], rsi
	xor	ebx, ebx
	mov	r10d, 16
	mov	r12, QWORD PTR .refptr.gMultiplayerCharacters[rip]
	mov	r11, QWORD PTR .refptr.gObjPalette[rip]
	movzx	r14d, BYTE PTR [rax]
.L14:
	bt	r14d, ebx
	jc	.L13
.L17:
	add	ebx, 1
	add	r10d, 16
	add	r12, 1
	cmp	ebx, 4
	jne	.L14
	mov	rsi, QWORD PTR 40[rsp]
	test	r9, r9
	je	.L12
	mov	rax, QWORD PTR .refptr.gObjPalette[rip]
	lea	r8, gUnknown_080D6FF5[rip+240]
	lea	r10, 48[r8]
	lea	r9, 448[rax]
	.p2align 4,,10
	.p2align 3
.L18:
	movzx	eax, BYTE PTR 2[r8]
	movzx	r11d, BYTE PTR 1[r8]
	add	r8, 3
	add	r9, 2
	imul	eax, edx
	imul	r11d, edx
	shr	eax, 4
	shr	r11d, 4
	sal	eax, 10
	sal	r11d, 5
	or	eax, r11d
	movzx	r11d, BYTE PTR -3[r8]
	imul	r11d, edx
	shr	r11d, 4
	or	eax, r11d
	mov	WORD PTR -2[r9], ax
	cmp	r10, r8
	jne	.L18
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L13:
	movsx	rax, BYTE PTR [r12]
	mov	DWORD PTR 36[rsp], r14d
	mov	esi, ebx
	sal	esi, 4
	lea	r8, [rax+rax*2]
	lea	rax, gUnknown_080D6FF5[rip]
	sal	r8, 4
	add	r8, rax
	.p2align 4,,10
	.p2align 3
.L16:
	movzx	r14d, BYTE PTR 2[r8]
	movzx	eax, BYTE PTR 1[r8]
	mov	r13d, esi
	add	esi, 1
	add	r8, 3
	imul	r14d, edx
	imul	eax, edx
	shr	r14d, 4
	shr	eax, 4
	sal	r14d, 10
	sal	eax, 5
	or	eax, r14d
	movzx	r14d, BYTE PTR -3[r8]
	imul	r14d, edx
	shr	r14d, 4
	or	eax, r14d
	mov	WORD PTR [r11+r13*2], ax
	cmp	r10d, esi
	jne	.L16
	mov	r14d, DWORD PTR 36[rsp]
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L7:
	mov	r9d, 12527
	mov	WORD PTR 16[rsi], r9w
	call	UpdateScreenFade
	mov	edx, 16191
	mov	ecx, 4112
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L21:
	mov	rcx, QWORD PTR .LC1[rip]
	movdqu	xmm0, XMMWORD PTR .LC0[rip]
	movzx	edx, WORD PTR [rdi]
	movups	XMMWORD PTR [rax], xmm0
	mov	QWORD PTR 16[rax], rcx
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	mov	ecx, 32
	and	dh, -103
	mov	DWORD PTR [rax], 67375942
	mov	WORD PTR 4[rax], cx
	jmp	.L23
	.seh_endproc
	.p2align 4
	.def	TaskDestructor_8030474;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_8030474
TaskDestructor_8030474:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 16[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	TaskDestructor_803045C;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_803045C
TaskDestructor_803045C:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 592[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	Task_IntroActLettersAnimations;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_IntroActLettersAnimations
Task_IntroActLettersAnimations:
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
	mov	rax, QWORD PTR [rbx]
	mov	eax, DWORD PTR [rax]
	lea	edx, -151[rax]
	cmp	edx, 39
	jbe	.L43
	cmp	eax, 199
	ja	.L61
.L42:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L43:
	lea	r8d, -150[rax]
	mov	ecx, r8d
	cmp	r8d, 13
	ja	.L45
	lea	rdx, sScreenPositions_ZoneLoadingActLetters[rip]
	lea	r9, 46[rbx]
	lea	r11, 16[rdx]
.L46:
	mov	eax, 4
	movzx	r10d, WORD PTR 2[rdx]
	cmp	ecx, eax
	cmovle	eax, ecx
	add	rdx, 4
	sub	ecx, 3
	add	r9, 64
	lea	eax, -32[r10+rax*8]
	movzx	r10d, WORD PTR -4[rdx]
	sal	eax, 16
	or	eax, r10d
	mov	DWORD PTR -64[r9], eax
	cmp	rdx, r11
	jne	.L46
.L47:
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	eax, BYTE PTR [rax]
	mov	edx, eax
	and	edx, 3
	cmp	dl, 2
	je	.L42
	sar	al, 2
	cmp	al, 7
	je	.L42
	xor	esi, esi
	lea	rdi, 8[rbx]
	cmp	esi, r8d
	jb	.L62
	.p2align 4,,10
	.p2align 3
.L49:
	add	rdi, 64
	cmp	esi, 9
	je	.L42
	mov	rax, QWORD PTR [rbx]
	add	esi, 3
	mov	eax, DWORD PTR [rax]
	lea	r8d, -150[rax]
	cmp	esi, r8d
	jnb	.L49
.L62:
	mov	rcx, rdi
	call	DisplaySprite
	jmp	.L49
	.p2align 4,,10
	.p2align 3
.L45:
	cmp	r8d, 17
	ja	.L63
	lea	edx, -163[rax]
	lea	rax, gUnknown_080D7130[rip]
	mov	ecx, 339
	mov	r9d, 360
	movzx	eax, WORD PTR [rax+rdx*2]
	mov	edx, 318
	mov	r10d, 382
	mov	WORD PTR 110[rbx], cx
	mov	WORD PTR 46[rbx], dx
	lea	edx, 177[rax]
	mov	WORD PTR 174[rbx], r9w
	mov	WORD PTR 48[rbx], dx
	lea	edx, 181[rax]
	mov	WORD PTR 112[rbx], dx
	lea	edx, 185[rax]
	add	ax, 189
	mov	WORD PTR 176[rbx], dx
	mov	WORD PTR 238[rbx], r10w
	mov	WORD PTR 240[rbx], ax
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L63:
	mov	DWORD PTR 46[rbx], 11600190
	mov	DWORD PTR 110[rbx], 11862355
	mov	DWORD PTR 174[rbx], 12124520
	mov	DWORD PTR 238[rbx], 12386686
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L61:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.def	Task_IntroZoneNameAndIconAnimations;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_IntroZoneNameAndIconAnimations
Task_IntroZoneNameAndIconAnimations:
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rsi, QWORD PTR 24[rcx]
	mov	rax, QWORD PTR [rsi]
	mov	ebx, DWORD PTR [rax]
	lea	eax, -10[rbx]
	cmp	eax, 124
	jbe	.L65
	cmp	ebx, 199
	ja	.L106
	cmp	ebx, 149
	jbe	.L64
	lea	rdi, 584[rsi]
	cmp	ebx, 150
	je	.L107
	cmp	ebx, 189
	jbe	.L69
	movd	xmm0, DWORD PTR 622[rsi]
	movd	xmm1, DWORD PTR .LC11[rip]
	paddw	xmm0, xmm1
	movd	DWORD PTR 622[rsi], xmm0
.L69:
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	jmp	.L105
	.p2align 4,,10
	.p2align 3
.L65:
	lea	ecx, -9[rbx]
	imul	edx, ecx, 75
	imul	eax, ecx, 123
	mov	r11d, edx
	sal	r11d, 6
	lea	r10d, 0[0+rax*8]
	shr	r11d, 8
	shr	r10d, 8
	cmp	ecx, 12
	ja	.L70
	mov	r9d, 254
	mov	r8d, 161
	sub	edx, 6600
	sub	eax, 10824
	sub	r9d, r11d
	sub	r8d, r10d
.L71:
	mov	ebp, 284
	mov	WORD PTR 622[rsi], r9w
	sal	edx, 6
	mov	r9d, 167
	sal	eax, 3
	mov	WORD PTR 624[rsi], r8w
	mov	edi, ebp
	mov	r12d, r9d
	shr	eax, 8
	shr	edx, 8
	sub	ebp, r11d
	sub	r9d, r10d
	sub	r12d, eax
	sub	edi, edx
	lea	rax, 686[rsi]
	mov	r13d, 54
	lea	r10, 942[rsi]
	mov	r11d, 120
.L73:
	cmp	ecx, 12
	jbe	.L90
	cmp	ecx, 100
	mov	r8d, r13d
	mov	edx, r11d
	cmova	r8d, edi
	cmova	edx, r12d
.L72:
	mov	WORD PTR [rax], r8w
	add	rax, 64
	mov	WORD PTR -62[rax], dx
	cmp	rax, r10
	jne	.L73
	lea	r10d, [rcx+rcx*2]
	mov	r12d, 612
	lea	r11d, [rbx+rbx*4]
	mov	edi, ecx
	add	r10d, r10d
	mov	ebp, 620
	lea	r11d, -112[r11+r11]
	xor	eax, eax
	sub	r12d, r10d
	sub	ebp, r10d
	sub	WORD PTR 878[rsi], 24
	sub	r10d, 22
	lea	rdx, 560[rsi]
	mov	r9d, 389
	mov	r14d, 12
	mov	r13d, 20
	jmp	.L78
	.p2align 4,,10
	.p2align 3
.L109:
	lea	r15d, [rax+rax]
	mov	r8d, -22
	cmp	ecx, r15d
	jb	.L75
	test	al, 1
	jne	.L76
	cmp	edi, 4
	mov	r8d, r13d
	cmovbe	r8d, r11d
	.p2align 4,,10
	.p2align 3
.L75:
	add	eax, 1
	mov	WORD PTR -2[rdx], r9w
	sub	r11d, 20
	sub	r9d, 17
	mov	WORD PTR [rdx], r8w
	sub	r10d, 12
	sub	edi, 2
	sub	rdx, 64
	cmp	eax, 9
	je	.L108
.L78:
	cmp	ecx, 49
	jbe	.L109
	mov	r8d, eax
	and	r8d, 1
	cmp	ecx, 99
	ja	.L77
	cmp	r8d, 1
	sbb	r8d, r8d
	and	r8d, 8
	add	r8d, 12
	jmp	.L75
	.p2align 4,,10
	.p2align 3
.L70:
	cmp	ecx, 100
	ja	.L110
	mov	r9d, 24
	mov	r8d, 114
	sub	edx, 6600
	sub	eax, 10824
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L77:
	test	r8d, r8d
	mov	r8d, ebp
	cmovne	r8d, r12d
	jmp	.L75
	.p2align 4,,10
	.p2align 3
.L90:
	mov	r8d, ebp
	mov	edx, r9d
	jmp	.L72
	.p2align 4,,10
	.p2align 3
.L76:
	cmp	edi, 4
	mov	r8d, r14d
	cmovbe	r8d, r10d
	jmp	.L75
	.p2align 4,,10
	.p2align 3
.L108:
	mov	r8, QWORD PTR .refptr.gOamMatrixIndex[rip]
	mov	edi, 36
	mov	WORD PTR 942[rsi], di
	movzx	eax, BYTE PTR [r8]
	lea	r9d, 1[rax]
	or	eax, 32
	movzx	edx, al
	cmp	ecx, 16
	jbe	.L97
	cmp	ecx, 25
	jbe	.L111
	cmp	ecx, 100
	jbe	.L98
	lea	eax, -100[rcx]
	mov	ecx, 4
	movzx	eax, al
	sub	ecx, eax
	lea	eax, 0[0+rcx*8]
	mov	ecx, eax
	jmp	.L79
	.p2align 4,,10
	.p2align 3
.L97:
	mov	ecx, -48
	mov	eax, -49
.L79:
	mov	r11d, 35
	mov	WORD PTR 944[rsi], cx
	lea	r12, 584[rsi]
	lea	rdi, 648[rsi]
	mov	DWORD PTR 1000[rsi], edx
	mov	rcx, r12
	lea	rbp, 904[rsi]
	mov	WORD PTR 1006[rsi], r11w
	mov	WORD PTR 1008[rsi], ax
	mov	BYTE PTR [r8], r9b
	call	DisplaySprite
.L81:
	mov	BYTE PTR 49[rdi], -1
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	add	rdi, 64
	call	DisplaySprite
	cmp	rdi, rbp
	jne	.L81
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	ja	.L86
	lea	rdi, 8[rsi]
	.p2align 4,,10
	.p2align 3
.L85:
	mov	rcx, rdi
	add	rdi, 64
	call	DisplaySprite
	cmp	r12, rdi
	jne	.L85
.L86:
	cmp	ebx, 29
	jbe	.L84
	cmp	ebx, 30
	je	.L112
.L87:
	mov	rcx, rbp
	call	UpdateSpriteAnimation
.L84:
	mov	rcx, rbp
	lea	rdi, 968[rsi]
	call	DisplaySprite
	lea	eax, [rbx+rbx*2]
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	lea	rdx, 1032[rsi]
	sal	eax, 3
	and	eax, 1016
	movzx	eax, WORD PTR [rcx+rax*2]
	sar	ax, 6
	cmp	ax, 256
	je	.L99
	test	ax, ax
	mov	ecx, 4
	cmove	eax, ecx
.L88:
	mov	WORD PTR 1034[rsi], ax
	mov	eax, DWORD PTR 1006[rsi]
	xor	ecx, ecx
	mov	r8d, 256
	mov	WORD PTR 1032[rsi], cx
	mov	rcx, rdi
	mov	WORD PTR 1036[rsi], r8w
	mov	DWORD PTR 1038[rsi], eax
	call	TransformSprite
.L105:
	mov	rcx, rdi
	add	rsp, 40
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
.L64:
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
.L106:
	add	rsp, 40
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
.L111:
	lea	eax, -16[rcx]
	movzx	ecx, al
	movzx	eax, al
	lea	ecx, -40[0+rcx*8]
	lea	eax, -41[0+rax*8]
	jmp	.L79
	.p2align 4,,10
	.p2align 3
.L110:
	sub	edx, 6600
	sub	eax, 10824
	mov	r9d, 254
	mov	r8d, edx
	lea	edi, 0[0+rax*8]
	sal	r8d, 6
	shr	edi, 8
	shr	r8d, 8
	sub	r9d, r8d
	mov	r8d, 161
	sub	r8d, edi
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L112:
	mov	r9d, 1115
	mov	r10d, -255
	mov	WORD PTR 922[rsi], r9w
	mov	WORD PTR 952[rsi], r10w
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L99:
	mov	eax, 255
	jmp	.L88
	.p2align 4,,10
	.p2align 3
.L98:
	mov	ecx, 32
	mov	eax, 32
	jmp	.L79
	.p2align 4,,10
	.p2align 3
.L107:
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	lea	rax, sColoredTriangle[rip]
	mov	BYTE PTR 637[rsi], 0
	mov	BYTE PTR 633[rsi], -1
	mov	DWORD PTR 622[rsi], 15729066
	movsx	rdx, BYTE PTR [rdx]
	mov	DWORD PTR 616[rsi], 0
	movzx	ecx, WORD PTR 4[rax+rdx*8]
	movzx	eax, BYTE PTR 6[rax+rdx*8]
	mov	WORD PTR 602[rsi], cx
	mov	BYTE PTR 632[rsi], al
	jmp	.L69
	.seh_endproc
	.p2align 4
	.def	Task_IntroColorAnimation;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_IntroColorAnimation
Task_IntroColorAnimation:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r9, QWORD PTR .refptr.gFlags[rip]
	mov	r8, QWORD PTR [rax]
	mov	edx, DWORD PTR [r9]
	mov	rbx, QWORD PTR 24[r8]
	mov	rax, QWORD PTR [rbx]
	mov	eax, DWORD PTR [rax]
	cmp	eax, 1
	jbe	.L125
	mov	r10, QWORD PTR .LC13[rip]
	lea	ecx, -1[rax]
	mov	QWORD PTR 20[rbx], r10
	cmp	ecx, 9
	ja	.L116
	lea	r8d, [rcx+rcx*4]
	mov	r10d, 442
	or	edx, 4
	lea	r8d, [rcx+r8*4]
	add	r8d, r8d
	sub	r10d, r8d
	mov	r8d, 128
	mov	WORD PTR 22[rbx], r10w
	mov	WORD PTR 20[rbx], r8w
	cmp	ecx, 6
	ja	.L117
.L123:
	mov	rax, QWORD PTR .refptr.gHBlankCopySize[rip]
	mov	rcx, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	mov	DWORD PTR [r9], edx
	mov	BYTE PTR [rax], 4
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	add	rax, 64
	mov	QWORD PTR [rcx], rax
	mov	ecx, 426
	call	InitHBlankBgOffsets
.L115:
	movzx	edx, WORD PTR 22[rbx]
	movzx	ecx, WORD PTR 20[rbx]
	call	ScreenMask_Lower_OriginLeft
.L124:
	movzx	edx, WORD PTR 26[rbx]
	movzx	ecx, WORD PTR 24[rbx]
	add	rsp, 32
	pop	rbx
	jmp	ScreenMask_Upper_OriginRight
	.p2align 4,,10
	.p2align 3
.L116:
	cmp	eax, 119
	jbe	.L126
	cmp	eax, 135
	ja	.L120
	lea	ecx, -120[rax]
	mov	r8d, 217
	lea	r10d, [rcx+rcx]
	lea	r11d, [rcx+rcx*8]
	sub	r8d, r10d
	add	r11d, r11d
	mov	r10d, 542
	sub	r10d, r11d
	lea	r11d, -104[rax]
	mov	eax, 32
	sub	eax, ecx
	movzx	ecx, r11w
	sal	eax, 4
	movzx	eax, ax
	sal	rax, 16
	or	rax, rcx
	movzx	ecx, r10w
	sal	rax, 16
	or	rax, rcx
	movzx	ecx, r8w
	sal	rax, 16
	or	rax, rcx
	mov	QWORD PTR 20[rbx], rax
.L122:
	mov	rax, QWORD PTR .refptr.gHBlankCopySize[rip]
	mov	rcx, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	or	edx, 4
	mov	DWORD PTR [r9], edx
	mov	BYTE PTR [rax], 4
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	add	rax, 64
	mov	QWORD PTR [rcx], rax
	mov	ecx, 426
	call	InitHBlankBgOffsets
	movzx	edx, WORD PTR 22[rbx]
	movzx	ecx, WORD PTR 20[rbx]
	call	ScreenMask_Lower_OriginRight
	jmp	.L124
	.p2align 4,,10
	.p2align 3
.L125:
	mov	rax, QWORD PTR .refptr.gHBlankCopySize[rip]
	mov	rcx, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	or	edx, 4
	mov	DWORD PTR [r9], edx
	mov	BYTE PTR [rax], 4
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	add	rax, 64
	mov	QWORD PTR [rcx], rax
	mov	ecx, 426
	call	InitHBlankBgOffsets
	jmp	.L115
	.p2align 4,,10
	.p2align 3
.L117:
	lea	eax, -35[rax+rax*4]
	mov	WORD PTR 24[rbx], ax
	jmp	.L123
	.p2align 4,,10
	.p2align 3
.L126:
	mov	ecx, 16
	mov	DWORD PTR 20[rbx], 35520729
	mov	WORD PTR 24[rbx], cx
	jmp	.L122
	.p2align 4,,10
	.p2align 3
.L120:
	cmp	eax, 149
	ja	.L127
	lea	eax, -408[rax+rax*2]
	mov	ecx, 544
	lea	r8d, [rax+rax]
	sal	eax, 2
	mov	WORD PTR 20[rbx], ax
	sub	ecx, r8d
	xor	eax, eax
	mov	WORD PTR 22[rbx], cx
	mov	WORD PTR 26[rbx], ax
	jmp	.L122
	.p2align 4,,10
	.p2align 3
.L127:
	and	edx, -5
	mov	rcx, r8
	mov	DWORD PTR [r9], edx
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.def	Task_IntroControllerMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_IntroControllerMain
Task_IntroControllerMain:
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
	mov	rbx, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR [rsi]
	movzx	r11d, BYTE PTR [rbx]
	mov	r9, QWORD PTR 24[rax]
	mov	ecx, DWORD PTR [r9]
	lea	eax, 1[rcx]
	cmp	r11b, 2
	ja	.L129
	mov	rdx, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	edx, BYTE PTR [rdx]
	mov	r8d, edx
	and	r8d, 3
	cmp	r8b, 2
	je	.L129
	cmp	dl, 28
	je	.L184
	cmp	dl, 29
	je	.L129
.L131:
	mov	rdx, QWORD PTR .refptr.gPressedKeys[rip]
	test	BYTE PTR [rdx], 3
	je	.L129
	mov	rdi, QWORD PTR .refptr.gPlayerBodyPSI[rip]
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	mov	eax, DWORD PTR 48[rdi]
	movsx	r10, BYTE PTR [rdx]
	and	DWORD PTR 36[rcx], -5242881
	and	eax, -385
	mov	BYTE PTR 4[r9], 1
	mov	DWORD PTR [r9], 200
	mov	DWORD PTR 48[rdi], eax
	lea	rax, sGettingReadyAnimationDuration[rip]
	cmp	BYTE PTR [rax+r10], 0
	jne	.L128
	mov	rax, QWORD PTR .refptr.gBossIndex[rip]
	cmp	BYTE PTR [rax], 0
	je	.L185
.L128:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L184:
	mov	rdx, QWORD PTR .refptr.gFinalBossActive[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L131
	.p2align 4,,10
	.p2align 3
.L129:
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	mov	rdi, QWORD PTR .refptr.gPlayerBodyPSI[rip]
	mov	DWORD PTR [r9], eax
	movsx	r10, BYTE PTR [rdx]
	lea	rdx, sGettingReadyAnimationDuration[rip]
	and	DWORD PTR 48[rdi], -385
	movzx	r8d, BYTE PTR [rdx+r10]
	mov	edx, 200
	sub	edx, r8d
	cmp	eax, 149
	jbe	.L186
	cmp	eax, 151
	je	.L187
	sub	ecx, 149
	mov	r8d, edx
	cmp	ecx, 16
	ja	.L139
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	and	DWORD PTR 36[rcx], -4194305
	cmp	eax, edx
	jne	.L128
	mov	rax, QWORD PTR .refptr.gBossIndex[rip]
	cmp	BYTE PTR [rax], 0
	jne	.L128
.L142:
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	eax, BYTE PTR [rax]
	and	eax, 3
	cmp	al, 2
	je	.L143
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	jmp	.L133
	.p2align 4,,10
	.p2align 3
.L186:
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	mov	r8d, edx
	or	DWORD PTR 36[rcx], 5242880
	cmp	eax, edx
	jne	.L128
	mov	rax, QWORD PTR .refptr.gBossIndex[rip]
	cmp	BYTE PTR [rax], 0
	jne	.L128
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	eax, BYTE PTR [rax]
	and	eax, 3
	cmp	al, 2
	je	.L128
.L133:
	lea	rdx, characterAnimsGettingReady[rip]
	mov	BYTE PTR 116[rcx], 1
	movzx	eax, BYTE PTR 6[rdx+r10*8]
	movzx	edx, WORD PTR 4[rdx+r10*8]
	sal	eax, 16
	or	eax, edx
	mov	rdx, QWORD PTR 160[rcx]
	mov	DWORD PTR 112[rcx], eax
	mov	eax, r8d
	test	rdx, rdx
	je	.L141
.L161:
	mov	rax, QWORD PTR 168[rcx]
	or	DWORD PTR 48[rdx], 262144
	test	rax, rax
	je	.L144
	or	DWORD PTR 48[rax], 262144
.L144:
	cmp	r11b, 2
	ja	.L188
	mov	BYTE PTR 69[rdx], 0
.L146:
	mov	eax, r8d
	jmp	.L141
	.p2align 4,,10
	.p2align 3
.L139:
	cmp	eax, edx
	je	.L189
.L141:
	cmp	eax, 200
	jbe	.L128
	mov	rbp, QWORD PTR .refptr.gStageFlags[rip]
	mov	rcx, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	edx, WORD PTR 0[rbp]
	movzx	ecx, BYTE PTR [rcx]
	mov	eax, edx
	mov	r8d, ecx
	and	ah, -2
	and	r8d, 3
	mov	WORD PTR 0[rbp], ax
	cmp	r8b, 2
	je	.L147
	cmp	cl, 28
	je	.L190
	cmp	cl, 29
	je	.L151
.L150:
	mov	rax, QWORD PTR .refptr.gBossIndex[rip]
	cmp	BYTE PTR [rax], 0
	je	.L191
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	and	dx, -258
	mov	WORD PTR 0[rbp], dx
	and	DWORD PTR 36[rax], -2097153
.L155:
	cmp	BYTE PTR [rbx], 2
	ja	.L192
.L157:
	and	DWORD PTR 48[rdi], -262145
.L158:
	call	CreateStageUI
	mov	rcx, QWORD PTR [rsi]
	call	TaskDestroy
	nop
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	CreateBoostEffectTasks
	.p2align 4,,10
	.p2align 3
.L187:
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	and	DWORD PTR 36[rcx], -1048577
	cmp	edx, 151
	jne	.L128
	mov	rax, QWORD PTR .refptr.gBossIndex[rip]
	cmp	BYTE PTR [rax], 0
	jne	.L128
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	eax, BYTE PTR [rax]
	and	eax, 3
	cmp	al, 2
	je	.L128
	lea	rdx, characterAnimsGettingReady[rip]
	mov	BYTE PTR 116[rcx], 1
	movzx	eax, BYTE PTR 6[rdx+r10*8]
	movzx	edx, WORD PTR 4[rdx+r10*8]
	sal	eax, 16
	or	eax, edx
	mov	rdx, QWORD PTR 160[rcx]
	mov	DWORD PTR 112[rcx], eax
	test	rdx, rdx
	je	.L128
	mov	r8d, 151
	jmp	.L161
	.p2align 4,,10
	.p2align 3
.L147:
	cmp	cl, 28
	je	.L149
	cmp	cl, 29
	je	.L151
	sar	cl, 2
	movzx	ecx, cl
	call	CreateZoneBoss
	movzx	eax, WORD PTR 0[rbp]
.L153:
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	and	eax, -2
	mov	WORD PTR 0[rbp], ax
	and	DWORD PTR 36[rdx], -2097153
	cmp	BYTE PTR [rbx], 2
	jbe	.L157
.L192:
	call	sub_8018818
	jmp	.L158
	.p2align 4,,10
	.p2align 3
.L190:
	mov	rcx, QWORD PTR .refptr.gFinalBossActive[rip]
	cmp	BYTE PTR [rcx], 0
	jne	.L150
.L149:
	mov	rdx, QWORD PTR .refptr.gBossIndex[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L153
	xor	ecx, ecx
	call	CreateZoneBoss
	movzx	eax, WORD PTR 0[rbp]
	jmp	.L153
	.p2align 4,,10
	.p2align 3
.L151:
	mov	ecx, 8
	call	CreateZoneBoss
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	or	WORD PTR [rax], 512
	movzx	eax, WORD PTR 0[rbp]
	jmp	.L153
	.p2align 4,,10
	.p2align 3
.L191:
	movzx	ecx, BYTE PTR 4[r9]
	call	CreateCourseStartCountdown
	jmp	.L155
	.p2align 4,,10
	.p2align 3
.L188:
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	movzx	eax, BYTE PTR 296[rax]
	shr	al, 4
	and	eax, 3
	mov	BYTE PTR 69[rdx], al
	jmp	.L146
.L189:
	mov	rax, QWORD PTR .refptr.gBossIndex[rip]
	cmp	BYTE PTR [rax], 0
	je	.L142
.L143:
	mov	eax, edx
	jmp	.L141
.L185:
	mov	r8d, 200
	jmp	.L133
	.seh_endproc
	.p2align 4
	.def	TaskDestructor_IntroController;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_IntroController
TaskDestructor_IntroController:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rax], 0
	je	.L196
.L194:
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	ja	.L193
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	and	WORD PTR [rax], -33
.L193:
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L196:
	call	InitWaterPalettes
	jmp	.L194
	.seh_endproc
	.p2align 4
	.globl	SetupStageIntro
	.def	SetupStageIntro;	.scl	2;	.type	32;	.endef
	.seh_proc	SetupStageIntro
SetupStageIntro:
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
	movups	XMMWORD PTR 64[rsp], xmm6
	.seh_savexmm	xmm6, 64
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	or	WORD PTR [rax], 257
	mov	rax, QWORD PTR 160[rbx]
	test	rax, rax
	je	.L198
	or	DWORD PTR 48[rax], 262144
.L198:
	mov	rax, QWORD PTR 168[rbx]
	test	rax, rax
	je	.L199
	or	DWORD PTR 48[rax], 262144
.L199:
	mov	rax, QWORD PTR .refptr.gActiveBossTask[rip]
	xor	r9d, r9d
	mov	r8d, 8704
	mov	edx, 8
	lea	rcx, Task_IntroControllerMain[rip]
	lea	rsi, TaskDestructor_Dummy[rip]
	mov	QWORD PTR [rax], 0
	lea	rax, TaskDestructor_IntroController[rip]
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	xor	r9d, r9d
	mov	r8d, 8720
	mov	edx, 32
	mov	rdi, QWORD PTR 24[rax]
	lea	rcx, Task_802F9F8[rip]
	mov	QWORD PTR 48[rsp], rax
	mov	DWORD PTR [rdi], 2
	mov	BYTE PTR 4[rdi], 0
	or	DWORD PTR 36[rbx], 1048576
	mov	QWORD PTR 32[rsp], rsi
	call	TaskCreate
	mov	rcx, QWORD PTR 24[rax]
	mov	QWORD PTR [rcx], rdi
	add	rcx, 8
	mov	QWORD PTR [rcx], 131072
	mov	DWORD PTR 8[rcx], 16383
	call	UpdateScreenFade
	mov	QWORD PTR 32[rsp], rsi
	xor	r9d, r9d
	mov	r8d, 8736
	mov	edx, 32
	lea	rcx, Task_IntroColorAnimation[rip]
	call	TaskCreate
	xor	r9d, r9d
	mov	r8d, 8752
	mov	edx, 1048
	mov	rax, QWORD PTR 24[rax]
	lea	rcx, Task_IntroZoneNameAndIconAnimations[rip]
	mov	QWORD PTR [rax], rdi
	mov	QWORD PTR 20[rax], 0
	lea	rax, TaskDestructor_803045C[rip]
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	rsi, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	r14, QWORD PTR .refptr.gGameMode[rip]
	mov	rbp, QWORD PTR 24[rax]
	movzx	eax, BYTE PTR [rsi]
	mov	QWORD PTR 0[rbp], rdi
	sar	al, 2
	cmp	BYTE PTR [r14], 2
	ja	.L200
	mov	r9, QWORD PTR .refptr.gSelectedCharacter[rip]
	movsx	r10d, al
	lea	r12, zoneLoadingZoneNames[rip]
	lea	r15, zoneLoadingCharacterLogos[rip]
	lea	eax, 0[0+r10*4]
	lea	r13, zoneLoadingIcons[rip]
	movsx	rcx, BYTE PTR [r9]
	movsx	r11, eax
	mov	QWORD PTR 56[rsp], r9
	lea	r11, [r11+r11*2]
	lea	rcx, [rcx+rcx*2]
	movzx	r11d, WORD PTR [r12+r11*2]
	movzx	ecx, WORD PTR [r15+rcx*2]
	add	ecx, r11d
	lea	r11d, 1[rax]
	movsx	r11, r11d
	lea	r11, [r11+r11*2]
	movzx	r11d, WORD PTR [r12+r11*2]
	add	ecx, r11d
	lea	r11d, 2[rax]
	add	eax, 3
	movsx	r11, r11d
	cdqe
	lea	r11, [r11+r11*2]
	lea	rax, [rax+rax*2]
	movzx	r11d, WORD PTR [r12+r11*2]
	movzx	eax, WORD PTR [r12+rax*2]
	add	ecx, r11d
	add	ecx, eax
	movsx	rax, r10d
	lea	rax, [rax+rax*2]
	movzx	eax, WORD PTR 0[r13+rax*2]
	lea	ecx, 117[rcx+rax]
	call	VramMalloc
	mov	r9, QWORD PTR 56[rsp]
	mov	rbx, rax
.L201:
	movsx	rax, BYTE PTR [r9]
	mov	QWORD PTR 592[rbp], rbx
	xor	r8d, r8d
	mov	r10d, 4351
	mov	WORD PTR 600[rbp], r8w
	lea	rcx, 584[rbp]
	lea	rax, [rax+rax*2]
	mov	WORD PTR 633[rbp], r10w
	lea	r9, [r15+rax*2]
	mov	BYTE PTR 637[rbp], 0
	movzx	eax, WORD PTR [r9]
	sal	eax, 5
	cdqe
	add	rbx, rax
	movzx	eax, WORD PTR 2[r9]
	mov	WORD PTR 602[rbp], ax
	movzx	eax, WORD PTR 4[r9]
	xor	r9d, r9d
	cmp	BYTE PTR [r14], 2
	mov	WORD PTR 628[rbp], r9w
	mov	BYTE PTR 632[rbp], al
	movabs	rax, 72057594037927936
	mov	QWORD PTR 620[rbp], rax
	jbe	.L202
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	movzx	eax, BYTE PTR 296[rax]
	shr	al, 4
	and	eax, 3
	mov	BYTE PTR 637[rbp], al
.L202:
	mov	DWORD PTR 640[rbp], -1
	mov	DWORD PTR 616[rbp], 0
	call	UpdateSpriteAnimation
	movzx	r10d, BYTE PTR [rsi]
	lea	rcx, zoneLoadingZoneNames[rip]
	lea	rax, 656[rbp]
	lea	r11, 24[rcx]
	mov	r9d, r10d
	mov	r15d, r10d
	sar	r9b, 2
	and	r15d, 3
	movsx	r9d, r9b
	sal	r9d, 2
	movsx	r9, r9d
	lea	r9, [r9+r9*2]
	lea	r8, [r12+r9*2]
.L206:
	mov	DWORD PTR 30[rax], 0
	mov	QWORD PTR [rax], rbx
	cmp	r10b, 29
	je	.L230
	cmp	r15b, 2
	je	.L231
	movzx	r9d, WORD PTR [r8]
	sal	r9d, 5
	movsx	r9, r9d
	add	rbx, r9
	movzx	r9d, WORD PTR 2[r8]
	mov	WORD PTR 10[rax], r9w
	movzx	r9d, BYTE PTR 4[r8]
.L204:
	mov	edx, 256
	mov	BYTE PTR 40[rax], r9b
	xor	r12d, r12d
	xor	r9d, r9d
	mov	WORD PTR 34[rax], dx
	add	rcx, 6
	xor	edx, edx
	add	rax, 64
	mov	WORD PTR -56[rax], r9w
	add	r8, 6
	mov	WORD PTR -36[rax], r12w
	mov	WORD PTR -28[rax], dx
	mov	BYTE PTR -23[rax], -1
	mov	BYTE PTR -22[rax], 16
	mov	BYTE PTR -19[rax], 0
	mov	DWORD PTR -16[rax], -1
	mov	DWORD PTR -40[rax], 0
	cmp	rcx, r11
	jne	.L206
	mov	r11d, -256
	xor	r12d, r12d
	mov	QWORD PTR 912[rbp], rbx
	lea	rcx, 904[rbp]
	mov	WORD PTR 952[rbp], r11w
	add	rbx, 1152
	mov	DWORD PTR 920[rbp], 73072640
	mov	BYTE PTR 954[rbp], 32
	mov	BYTE PTR 957[rbp], 0
	mov	DWORD PTR 960[rbp], -1
	mov	QWORD PTR 936[rbp], 0
	mov	DWORD PTR 944[rbp], 16777216
	mov	WORD PTR 948[rbp], r12w
	call	UpdateSpriteAnimation
	movzx	r8d, BYTE PTR [rsi]
	mov	DWORD PTR 1006[rbp], 0
	lea	rcx, 968[rbp]
	mov	QWORD PTR 976[rbp], rbx
	mov	eax, r8d
	sar	al, 2
	movsx	rax, al
	lea	rax, [rax+rax*2]
	lea	rax, 0[r13+rax*2]
	movzx	r9d, WORD PTR 2[rax]
	movzx	r15d, WORD PTR [rax]
	movzx	eax, WORD PTR 4[rax]
	mov	WORD PTR 986[rbp], r9w
	mov	BYTE PTR 1016[rbp], al
	cmp	r8b, 29
	jne	.L207
	mov	r10d, 1116
	mov	BYTE PTR 1016[rbp], 8
	mov	WORD PTR 986[rbp], r10w
.L207:
	xor	r8d, r8d
	xor	r9d, r9d
	movzx	r13d, WORD PTR .LC19[rip]
	mov	DWORD PTR 1010[rbp], 256
	mov	WORD PTR 984[rbp], r8w
	mov	r8, QWORD PTR .refptr.gOamMatrixIndex[rip]
	mov	WORD PTR 1004[rbp], r9w
	movzx	eax, BYTE PTR [r8]
	mov	WORD PTR 1017[rbp], r13w
	mov	BYTE PTR 1021[rbp], 0
	mov	DWORD PTR 1024[rbp], -1
	lea	r9d, 1[rax]
	or	eax, 32
	movzx	eax, al
	mov	BYTE PTR [r8], r9b
	mov	DWORD PTR 1000[rbp], eax
	call	UpdateSpriteAnimation
	cmp	BYTE PTR [r14], 2
	movd	xmm6, DWORD PTR .LC20[rip]
	ja	.L211
	sal	r15, 5
	xor	r12d, r12d
	and	r15d, 2097120
	lea	r14, [rbx+r15]
	lea	rbx, 8[rbp]
	lea	r15, sZoneUnlockedIcons[rip+2]
	jmp	.L214
	.p2align 4,,10
	.p2align 3
.L209:
	sar	al, 2
	movsx	eax, al
	cmp	eax, r12d
	je	.L232
.L213:
	movzx	eax, WORD PTR [r15]
	mov	WORD PTR 18[rbx], ax
	movzx	eax, BYTE PTR 2[r15]
.L212:
	mov	BYTE PTR 48[rbx], al
	mov	eax, 256
	mov	rcx, rbx
	add	r15, 6
	mov	WORD PTR 42[rbx], ax
	xor	eax, eax
	add	r12, 1
	add	rbx, 64
	mov	WORD PTR -48[rbx], ax
	xor	eax, eax
	mov	WORD PTR -28[rbx], ax
	xor	eax, eax
	mov	WORD PTR -20[rbx], ax
	mov	BYTE PTR -15[rbx], -1
	mov	BYTE PTR -14[rbx], 16
	mov	BYTE PTR -11[rbx], 0
	mov	DWORD PTR -8[rbx], -1
	mov	DWORD PTR -32[rbx], 0
	call	UpdateSpriteAnimation
	lea	rax, sZoneUnlockedIcons[rip+56]
	cmp	rax, r15
	je	.L211
.L214:
	movzx	eax, BYTE PTR [rsi]
	mov	QWORD PTR 8[rbx], r14
	add	r14, 288
	movd	DWORD PTR 38[rbx], xmm6
	cmp	al, 29
	jne	.L209
	cmp	r12, 8
	jne	.L213
	xor	edx, edx
	mov	rcx, rbx
	mov	BYTE PTR 568[rbp], 0
	mov	DWORD PTR 536[rbp], 73269248
	mov	WORD PTR 556[rbp], dx
	mov	DWORD PTR 562[rbp], 256
	mov	WORD PTR 569[rbp], r13w
	mov	BYTE PTR 573[rbp], 0
	mov	DWORD PTR 576[rbp], -1
	mov	DWORD PTR 552[rbp], 0
	call	UpdateSpriteAnimation
.L211:
	lea	rax, TaskDestructor_8030474[rip]
	xor	r9d, r9d
	mov	edx, 264
	xor	r12d, r12d
	mov	QWORD PTR 32[rsp], rax
	mov	r8d, 8768
	lea	rcx, Task_IntroActLettersAnimations[rip]
	lea	r14, sZoneLoadingActLetters[rip]
	call	TaskCreate
	mov	ecx, 72
	mov	rbp, QWORD PTR 24[rax]
	mov	QWORD PTR 0[rbp], rdi
	lea	rbx, 8[rbp]
	call	VramMalloc
	mov	r15, rax
.L217:
	movd	DWORD PTR 38[rbx], xmm6
	movzx	eax, WORD PTR 2[r14]
	mov	WORD PTR 18[rbx], ax
	movzx	eax, WORD PTR 4[r14]
	mov	BYTE PTR 48[rbx], al
	cmp	r12d, 3
	je	.L233
	mov	ecx, 128
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	mov	QWORD PTR 8[rbx], r15
	add	r12d, 1
	add	r14, 6
	add	r15, 576
	mov	WORD PTR 42[rbx], cx
	mov	rcx, rbx
	add	rbx, 64
	mov	WORD PTR -48[rbx], r8w
	mov	WORD PTR -28[rbx], r9w
	mov	WORD PTR -20[rbx], r10w
	mov	WORD PTR -15[rbx], r13w
	mov	BYTE PTR -11[rbx], 0
	mov	DWORD PTR -8[rbx], -1
	mov	DWORD PTR -32[rbx], 0
	call	UpdateSpriteAnimation
	jmp	.L217
	.p2align 4,,10
	.p2align 3
.L230:
	movzx	r9d, WORD PTR 192[rcx]
	sal	r9d, 5
	movsx	r9, r9d
	add	rbx, r9
	movzx	r9d, WORD PTR 194[rcx]
	mov	WORD PTR 10[rax], r9w
	movzx	r9d, BYTE PTR 196[rcx]
	jmp	.L204
	.p2align 4,,10
	.p2align 3
.L232:
	mov	eax, 1118
	mov	WORD PTR 18[rbx], ax
	xor	eax, eax
	jmp	.L212
	.p2align 4,,10
	.p2align 3
.L233:
	test	BYTE PTR [rsi], 1
	je	.L216
	mov	r11d, 1112
	mov	BYTE PTR 248[rbp], 4
	mov	WORD PTR 218[rbp], r11w
.L216:
	xor	edx, edx
	xor	eax, eax
	mov	QWORD PTR 208[rbp], r15
	mov	rcx, rbx
	mov	WORD PTR 236[rbp], dx
	mov	WORD PTR 216[rbp], ax
	mov	DWORD PTR 242[rbp], 128
	mov	WORD PTR 249[rbp], r13w
	mov	BYTE PTR 253[rbp], 0
	mov	DWORD PTR 256[rbp], -1
	mov	DWORD PTR 232[rbp], 0
	call	UpdateSpriteAnimation
	lea	rax, TaskDestructor_Dummy[rip]
	xor	r9d, r9d
	mov	r8d, 8944
	mov	QWORD PTR 32[rsp], rax
	mov	edx, 32
	lea	rcx, Task_UpdateStageLoadingScreen[rip]
	call	TaskCreate
	mov	rax, QWORD PTR 24[rax]
	mov	QWORD PTR [rax], rdi
	mov	rax, QWORD PTR 48[rsp]
	movups	xmm6, XMMWORD PTR 64[rsp]
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
.L231:
	movzx	r9d, WORD PTR 216[rcx]
	sal	r9d, 5
	movsx	r9, r9d
	add	rbx, r9
	movzx	r9d, WORD PTR 218[rcx]
	mov	WORD PTR 10[rax], r9w
	movzx	r9d, BYTE PTR 220[rcx]
	jmp	.L204
	.p2align 4,,10
	.p2align 3
.L200:
	movsx	ecx, al
	mov	r9, QWORD PTR .refptr.gSelectedCharacter[rip]
	lea	r12, zoneLoadingZoneNames[rip]
	lea	r15, zoneLoadingCharacterLogos[rip]
	lea	eax, 0[0+rcx*4]
	lea	r13, zoneLoadingIcons[rip]
	movsx	rbx, eax
	movsx	r8, BYTE PTR [r9]
	mov	QWORD PTR 56[rsp], r9
	lea	r10, [rbx+rbx*2]
	movzx	ebx, WORD PTR [r12+r10*2]
	lea	r10d, 1[rax]
	lea	r8, [r8+r8*2]
	movsx	r10, r10d
	movzx	r11d, WORD PTR [r15+r8*2]
	lea	r10, [r10+r10*2]
	movzx	r10d, WORD PTR [r12+r10*2]
	add	r11d, ebx
	add	r11d, r10d
	lea	r10d, 2[rax]
	add	eax, 3
	movsx	r10, r10d
	cdqe
	lea	r10, [r10+r10*2]
	lea	rax, [rax+rax*2]
	movzx	r10d, WORD PTR [r12+r10*2]
	movzx	eax, WORD PTR [r12+rax*2]
	add	r10d, r11d
	add	r10d, eax
	movsx	rax, ecx
	lea	rax, [rax+rax*2]
	movzx	eax, WORD PTR 0[r13+rax*2]
	lea	ecx, 36[r10+rax]
	call	VramMalloc
	mov	r9, QWORD PTR 56[rsp]
	mov	rbx, rax
	jmp	.L201
	.seh_endproc
	.globl	gUnknown_080D7130
	.section .rdata,"dr"
	.align 8
gUnknown_080D7130:
	.word	10
	.word	-8
	.word	6
	.word	-4
	.word	2
	.word	0
	.globl	sScreenPositions_ZoneLoadingActLetters
	.align 16
sScreenPositions_ZoneLoadingActLetters:
	.word	318
	.word	177
	.word	339
	.word	181
	.word	360
	.word	185
	.word	382
	.word	189
	.globl	sZoneLoadingCharacterColors
	.align 8
sZoneLoadingCharacterColors:
	.word	31744
	.word	607
	.word	895
	.word	127
	.word	22079
	.align 32
gUnknown_080D6FF5:
	.ascii "\0\27\6"
	.ascii "\26\26\26"
	.ascii "\0\4\23"
	.ascii "\0\10\35"
	.ascii "\0\0\14"
	.ascii "\0\23\0"
	.ascii "\37\37\23"
	.ascii "\37\33\0"
	.ascii "\23\12\2"
	.ascii "\37\25\12"
	.ascii "\25\0\0"
	.ascii "\37\4\4"
	.ascii "\4\4\4"
	.ascii "\37\37\37"
	.ascii "\16\16\16"
	.ascii "\0\23\37"
	.ascii "\0\31\24"
	.ascii "\31\31\31"
	.ascii "\37\13\0"
	.ascii "\37\22\0"
	.ascii "\31\5\0"
	.ascii "\34\13\0"
	.ascii "\23\0\0"
	.ascii "\37\34\27"
	.ascii "\35\30\20"
	.ascii "\23\17\10"
	.ascii "\37\36\0"
	.ascii "\10\21\37"
	.ascii "\2\2\2"
	.ascii "\37\37\37"
	.ascii "\16\16\16"
	.ascii "\37\0\37"
	.ascii "\0\27\6"
	.ascii "\37\0\37"
	.ascii "\35\21\4"
	.ascii "\37\27\4"
	.ascii "\27\12\2"
	.ascii "\25\31\33"
	.ascii "\0\23\37"
	.ascii "\4\10\37"
	.ascii "\23\23\23"
	.ascii "\16\16\16"
	.ascii "\25\0\0"
	.ascii "\37\4\4"
	.ascii "\2\2\2"
	.ascii "\37\37\37"
	.ascii "\37\0\37"
	.ascii "\37\0\37"
	.ascii "\0\26\24"
	.ascii "\26\26\26"
	.ascii "\27\0\0"
	.ascii "\37\4\0"
	.ascii "\16\0\0"
	.ascii "\4\10\37"
	.ascii "\37\37\23"
	.ascii "\37\33\0"
	.ascii "\23\12\0"
	.ascii "\37\25\12"
	.ascii "\0\25\2"
	.ascii "\16\37\0"
	.ascii "\4\4\4"
	.ascii "\37\37\37"
	.ascii "\16\16\16"
	.ascii "\37\23\0"
	.ascii "\0\27\6"
	.ascii "\25\31\33"
	.ascii "\35\10\23"
	.ascii "\37\23\27"
	.ascii "\27\4\12"
	.ascii "\0\25\0"
	.ascii "\16\16\16"
	.ascii "\23\23\23"
	.ascii "\23\12\0"
	.ascii "\37\25\12"
	.ascii "\25\0\0"
	.ascii "\37\0\0"
	.ascii "\0\0\0"
	.ascii "\37\37\37"
	.ascii "\37\37\23"
	.ascii "\37\37\0"
	.ascii "\0\22\13"
	.ascii "\4\6\12"
	.ascii "\0\37\0"
	.ascii "\37\37\37"
	.ascii "\24\37\37"
	.ascii "\20\34\36"
	.ascii "\14\30\31"
	.ascii "\11\24\25"
	.ascii "\0\16\20"
	.ascii "\0\37\0"
	.ascii "\37\26\30"
	.ascii "\37\12\20"
	.ascii "\37\36\0"
	.ascii "\31\30\0"
	.ascii "\23\12\0"
	.ascii "\37\0\0"
sGettingReadyAnimationDuration:
	.ascii "(74(("
	.globl	sColoredTriangle
	.align 32
sColoredTriangle:
	.long	84
	.word	1113
	.byte	0
	.space 1
	.long	84
	.word	1113
	.byte	4
	.space 1
	.long	84
	.word	1113
	.byte	1
	.space 1
	.long	84
	.word	1113
	.byte	2
	.space 1
	.long	84
	.word	1113
	.byte	3
	.space 1
	.align 32
characterAnimsGettingReady:
	.long	0
	.word	30
	.byte	0
	.space 1
	.long	0
	.word	121
	.byte	0
	.space 1
	.long	0
	.word	212
	.byte	0
	.space 1
	.long	0
	.word	303
	.byte	0
	.space 1
	.long	0
	.word	394
	.byte	0
	.space 1
	.align 16
sZoneLoadingActLetters:
	.word	18
	.word	1112
	.word	0
	.word	18
	.word	1112
	.word	1
	.word	18
	.word	1112
	.word	2
	.word	18
	.word	1112
	.word	3
	.word	18
	.word	1112
	.word	4
	.align 32
sZoneUnlockedIcons:
	.word	9
	.word	1118
	.word	1
	.word	9
	.word	1118
	.word	2
	.word	9
	.word	1118
	.word	3
	.word	9
	.word	1118
	.word	4
	.word	9
	.word	1118
	.word	5
	.word	9
	.word	1118
	.word	6
	.word	9
	.word	1118
	.word	7
	.word	9
	.word	1118
	.word	8
	.word	9
	.word	1118
	.word	9
	.word	9
	.word	1118
	.word	0
	.align 32
zoneLoadingIcons:
	.word	64
	.word	1116
	.word	0
	.word	64
	.word	1116
	.word	1
	.word	64
	.word	1116
	.word	2
	.word	64
	.word	1116
	.word	3
	.word	64
	.word	1116
	.word	4
	.word	64
	.word	1116
	.word	5
	.word	64
	.word	1116
	.word	6
	.word	64
	.word	1116
	.word	7
	.word	64
	.word	1116
	.word	8
	.align 32
zoneLoadingZoneNames:
	.word	35
	.word	1117
	.word	0
	.word	20
	.word	1117
	.word	1
	.word	20
	.word	1117
	.word	2
	.word	35
	.word	1117
	.word	3
	.word	35
	.word	1117
	.word	4
	.word	20
	.word	1117
	.word	5
	.word	20
	.word	1117
	.word	6
	.word	35
	.word	1117
	.word	7
	.word	35
	.word	1117
	.word	8
	.word	20
	.word	1117
	.word	9
	.word	20
	.word	1117
	.word	10
	.word	35
	.word	1117
	.word	11
	.word	35
	.word	1117
	.word	12
	.word	20
	.word	1117
	.word	13
	.word	20
	.word	1117
	.word	14
	.word	35
	.word	1117
	.word	15
	.word	35
	.word	1117
	.word	16
	.word	20
	.word	1117
	.word	17
	.word	20
	.word	1117
	.word	18
	.word	35
	.word	1117
	.word	19
	.word	35
	.word	1117
	.word	20
	.word	20
	.word	1117
	.word	21
	.word	20
	.word	1117
	.word	22
	.word	35
	.word	1117
	.word	23
	.word	35
	.word	1117
	.word	24
	.word	20
	.word	1117
	.word	25
	.word	20
	.word	1117
	.word	26
	.word	35
	.word	1117
	.word	27
	.word	35
	.word	1117
	.word	28
	.word	20
	.word	1117
	.word	29
	.word	20
	.word	1117
	.word	30
	.word	35
	.word	1117
	.word	31
	.word	35
	.word	1117
	.word	32
	.word	20
	.word	1117
	.word	33
	.word	20
	.word	1117
	.word	34
	.word	35
	.word	1117
	.word	35
	.word	35
	.word	1117
	.word	36
	.word	20
	.word	1117
	.word	37
	.word	20
	.word	1117
	.word	38
	.word	35
	.word	1117
	.word	39
	.align 16
zoneLoadingCharacterLogos:
	.word	9
	.word	1114
	.word	0
	.word	9
	.word	1114
	.word	3
	.word	9
	.word	1114
	.word	1
	.word	9
	.word	1114
	.word	2
	.word	9
	.word	1114
	.word	4
	.align 16
.LC0:
	.long	27918762
	.long	27918762
	.long	15728880
	.long	15728880
	.align 8
.LC1:
	.long	0
	.long	14133
	.align 4
.LC11:
	.word	4
	.word	4
	.align 8
.LC13:
	.word	240
	.word	0
	.word	0
	.word	512
	.align 2
.LC19:
	.byte	-1
	.byte	16
	.align 4
.LC20:
	.word	0
	.word	-32
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	UpdateScreenFade;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	TransformSprite;	.scl	2;	.type	32;	.endef
	.def	InitHBlankBgOffsets;	.scl	2;	.type	32;	.endef
	.def	ScreenMask_Lower_OriginLeft;	.scl	2;	.type	32;	.endef
	.def	ScreenMask_Upper_OriginRight;	.scl	2;	.type	32;	.endef
	.def	ScreenMask_Lower_OriginRight;	.scl	2;	.type	32;	.endef
	.def	CreateStageUI;	.scl	2;	.type	32;	.endef
	.def	CreateBoostEffectTasks;	.scl	2;	.type	32;	.endef
	.def	CreateZoneBoss;	.scl	2;	.type	32;	.endef
	.def	sub_8018818;	.scl	2;	.type	32;	.endef
	.def	CreateCourseStartCountdown;	.scl	2;	.type	32;	.endef
	.def	InitWaterPalettes;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gActiveBossTask, "dr"
	.globl	.refptr.gActiveBossTask
	.linkonce	discard
.refptr.gActiveBossTask:
	.quad	gActiveBossTask
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
	.section	.rdata$.refptr.gBossIndex, "dr"
	.globl	.refptr.gBossIndex
	.linkonce	discard
.refptr.gBossIndex:
	.quad	gBossIndex
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gPlayerBodyPSI, "dr"
	.globl	.refptr.gPlayerBodyPSI
	.linkonce	discard
.refptr.gPlayerBodyPSI:
	.quad	gPlayerBodyPSI
	.section	.rdata$.refptr.gPressedKeys, "dr"
	.globl	.refptr.gPressedKeys
	.linkonce	discard
.refptr.gPressedKeys:
	.quad	gPressedKeys
	.section	.rdata$.refptr.gFinalBossActive, "dr"
	.globl	.refptr.gFinalBossActive
	.linkonce	discard
.refptr.gFinalBossActive:
	.quad	gFinalBossActive
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
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
	.section	.rdata$.refptr.gOamMatrixIndex, "dr"
	.globl	.refptr.gOamMatrixIndex
	.linkonce	discard
.refptr.gOamMatrixIndex:
	.quad	gOamMatrixIndex
	.section	.rdata$.refptr.gBldRegs, "dr"
	.globl	.refptr.gBldRegs
	.linkonce	discard
.refptr.gBldRegs:
	.quad	gBldRegs
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.gWinRegs, "dr"
	.globl	.refptr.gWinRegs
	.linkonce	discard
.refptr.gWinRegs:
	.quad	gWinRegs
	.section	.rdata$.refptr.gMultiplayerCharacters, "dr"
	.globl	.refptr.gMultiplayerCharacters
	.linkonce	discard
.refptr.gMultiplayerCharacters:
	.quad	gMultiplayerCharacters
	.section	.rdata$.refptr.gMultiplayerConnections, "dr"
	.globl	.refptr.gMultiplayerConnections
	.linkonce	discard
.refptr.gMultiplayerConnections:
	.quad	gMultiplayerConnections
	.section	.rdata$.refptr.gObjPalette, "dr"
	.globl	.refptr.gObjPalette
	.linkonce	discard
.refptr.gObjPalette:
	.quad	gObjPalette
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gCheese, "dr"
	.globl	.refptr.gCheese
	.linkonce	discard
.refptr.gCheese:
	.quad	gCheese
	.section	.rdata$.refptr.gDispCnt, "dr"
	.globl	.refptr.gDispCnt
	.linkonce	discard
.refptr.gDispCnt:
	.quad	gDispCnt
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
	.section	.rdata$.refptr.gSelectedCharacter, "dr"
	.globl	.refptr.gSelectedCharacter
	.linkonce	discard
.refptr.gSelectedCharacter:
	.quad	gSelectedCharacter
	.section	.rdata$.refptr.gBgPalette, "dr"
	.globl	.refptr.gBgPalette
	.linkonce	discard
.refptr.gBgPalette:
	.quad	gBgPalette
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
