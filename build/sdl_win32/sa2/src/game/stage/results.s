	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_StageResults;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_StageResults
TaskDestructor_StageResults:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 408[rbx]
	test	rcx, rcx
	je	.L1
	call	VramFree
	mov	rcx, QWORD PTR 24[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 88[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 152[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 216[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 280[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 344[rbx]
	add	rsp, 32
	pop	rbx
	jmp	VramFree
	.p2align 4,,10
	.p2align 3
.L1:
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	AnimateResults;	.scl	3;	.type	32;	.endef
	.seh_proc	AnimateResults
AnimateResults:
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
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rsi, QWORD PTR 24[rax]
	mov	r12d, DWORD PTR 476[rsi]
	mov	ebp, ecx
	mov	r13d, ecx
	cmp	r12d, 23
	ja	.L5
	lea	r13, 400[rsi]
	xor	ebx, ebx
	cmp	r12d, 16
	jbe	.L34
.L6:
	sub	ebx, ebp
	lea	edi, 448[rbx]
	.p2align 4,,10
	.p2align 3
.L7:
	mov	WORD PTR 438[rsi], bx
	mov	rcx, r13
	add	ebx, 32
	call	DisplaySprite
	cmp	bx, di
	jne	.L7
.L4:
	add	rsp, 32
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
.L5:
	mov	ebx, ecx
	mov	edi, 448
	lea	r14, 400[rsi]
	neg	ebx
	sub	edi, ecx
	.p2align 4,,10
	.p2align 3
.L10:
	mov	WORD PTR 438[rsi], bx
	mov	rcx, r14
	add	ebx, 32
	call	DisplaySprite
	cmp	bx, di
	jne	.L10
	cmp	r12d, 28
	jbe	.L4
	mov	r14, QWORD PTR .refptr.gCurrentLevel[rip]
	xor	edi, edi
	lea	rbx, 16[rsi]
	movzx	eax, BYTE PTR [r14]
	and	eax, 3
	cmp	al, 2
	setne	dil
	add	edi, 2
	sal	rdi, 6
	add	rdi, rbx
.L14:
	sub	WORD PTR 38[rbx], r13w
	mov	rcx, rbx
	add	rbx, 64
	call	DisplaySprite
	cmp	rbx, rdi
	jne	.L14
	cmp	r12d, 38
	jbe	.L4
	lea	rcx, 208[rsi]
	cmp	r12d, 55
	ja	.L15
	lea	r13d, [r12+r12*2]
	mov	ebx, 894
	sal	r13d, 2
	sub	ebx, ebp
	sub	ebx, r13d
	mov	WORD PTR 246[rsi], bx
	call	DisplaySprite
	mov	ecx, DWORD PTR 464[rsi]
	xor	r9d, r9d
	lea	edx, 144[rbx]
	movsx	edx, dx
	mov	r8d, 130
	call	StageUI_PrintIntegerAt
	lea	rcx, 272[rsi]
	cmp	r12d, 48
	jbe	.L4
.L20:
	mov	edi, 1014
	sub	edi, ebp
	sub	edi, r13d
	lea	ebx, 144[rdi]
	movsx	ebx, bx
.L19:
	mov	WORD PTR 310[rsi], di
	call	DisplaySprite
	mov	ecx, DWORD PTR 468[rsi]
	xor	r9d, r9d
	mov	edx, ebx
	mov	r8d, 150
	call	StageUI_PrintIntegerAt
	movzx	eax, BYTE PTR [r14]
	mov	edx, eax
	and	edx, 3
	cmp	dl, 2
	setne	dl
	cmp	al, 27
	setle	al
	test	dl, al
	je	.L4
	cmp	r12d, 58
	jbe	.L4
	lea	rcx, 336[rsi]
	mov	ebx, 141
	cmp	r12d, 75
	ja	.L17
	lea	r12d, [r12+r12*2]
	mov	ebx, 1134
	lea	eax, 0[0+r12*4]
	sub	ebx, eax
.L17:
	sub	ebx, ebp
	mov	WORD PTR 374[rsi], bx
	call	DisplaySprite
	lea	edx, 144[rbx]
	xor	r9d, r9d
	mov	ecx, DWORD PTR 472[rsi]
	movsx	edx, dx
	mov	r8d, 170
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	jmp	StageUI_PrintIntegerAt
	.p2align 4,,10
	.p2align 3
.L34:
	lea	eax, 0[0+r12*4]
	mov	ebx, r12d
	sub	ebx, eax
	lea	ebx, 384[0+rbx*8]
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L15:
	mov	edi, 141
	mov	ebx, 285
	sub	edi, ebp
	sub	ebx, ebp
	mov	WORD PTR 246[rsi], di
	movsx	ebx, bx
	call	DisplaySprite
	mov	ecx, DWORD PTR 464[rsi]
	xor	r9d, r9d
	mov	edx, ebx
	mov	r8d, 130
	call	StageUI_PrintIntegerAt
	lea	rcx, 272[rsi]
	cmp	r12d, 65
	ja	.L19
	lea	r13d, [r12+r12*2]
	sal	r13d, 2
	jmp	.L20
	.seh_endproc
	.p2align 4
	.globl	CreateStageResults
	.def	CreateStageResults;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateStageResults
CreateStageResults:
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
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	xor	r9d, r9d
	mov	rax, QWORD PTR [rax]
	mov	esi, edx
	mov	rdx, QWORD PTR .refptr.gRingCount[rip]
	mov	ebp, ecx
	mov	edi, r8d
	lea	rcx, Task_UpdateStageResults[rip]
	mov	r8d, 49408
	movsx	edx, WORD PTR [rdx]
	add	DWORD PTR 880[rax], edx
	lea	rax, TaskDestructor_StageResults[rip]
	mov	edx, 496
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	r13, QWORD PTR .refptr.gPlayer[rip]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .LC0[rip]
	mov	DWORD PTR 476[rbx], 0
	mov	BYTE PTR 488[rbx], 0
	mov	QWORD PTR [rbx], rax
	mov	DWORD PTR 8[rbx], 16383
	test	BYTE PTR 39[r13], 8
	je	.L36
	mov	rax, QWORD PTR .refptr.gSpecialRingCount[rip]
	cmp	BYTE PTR [rax], 6
	ja	.L93
.L36:
	mov	r12, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	eax, BYTE PTR [r12]
	sub	eax, 28
	cmp	al, 1
	jbe	.L94
.L37:
	cmp	ebp, 1799
	ja	.L38
	movzx	eax, si
	mov	ecx, 80000
	mov	DWORD PTR 464[rbx], 80000
	imul	edx, eax, 100
	cmp	dil, 7
	je	.L91
.L39:
	movzx	r8d, dil
	imul	r8d, r8d, 1000
	cmp	edx, r8d
	jb	.L95
.L41:
	cmp	ecx, edx
	jb	.L53
.L88:
	imul	rax, rcx, 1374389535
	shr	rax, 37
.L53:
	mov	DWORD PTR 472[rbx], r8d
	mov	ecx, 4
	lea	rsi, gAnimsGotThroughCharacterNames[rip]
	lea	rbp, 80[rbx]
	mov	DWORD PTR 468[rbx], edx
	mov	DWORD PTR 480[rbx], eax
	mov	DWORD PTR 438[rbx], 7864762
	call	VramMalloc
	mov	edx, -256
	mov	DWORD PTR 416[rbx], 73400320
	lea	rcx, 400[rbx]
	mov	QWORD PTR 408[rbx], rax
	xor	eax, eax
	mov	WORD PTR 448[rbx], dx
	mov	WORD PTR 436[rbx], ax
	mov	DWORD PTR 442[rbx], 320
	mov	BYTE PTR 450[rbx], 16
	mov	BYTE PTR 453[rbx], 0
	mov	DWORD PTR 456[rbx], -1
	mov	DWORD PTR 432[rbx], 0
	call	UpdateSpriteAnimation
	mov	rdi, QWORD PTR .refptr.gSelectedCharacter[rip]
	mov	DWORD PTR 54[rbx], 5308858
	movsx	rax, BYTE PTR [rdi]
	lea	rax, [rax+rax*2]
	movzx	ecx, WORD PTR [rsi+rax*2]
	call	VramMalloc
	xor	r8d, r8d
	mov	r9d, 4351
	xor	ecx, ecx
	mov	QWORD PTR 24[rbx], rax
	movsx	rax, BYTE PTR [rdi]
	mov	WORD PTR 32[rbx], cx
	lea	rcx, 16[rbx]
	lea	rax, [rax+rax*2]
	mov	WORD PTR 52[rbx], r8w
	lea	rax, [rsi+rax*2]
	mov	WORD PTR 65[rbx], r9w
	movzx	edx, WORD PTR 2[rax]
	movzx	eax, WORD PTR 4[rax]
	mov	DWORD PTR 58[rbx], 256
	mov	BYTE PTR 69[rbx], 0
	mov	WORD PTR 34[rbx], dx
	mov	BYTE PTR 64[rbx], al
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 0
	call	UpdateSpriteAnimation
	movsx	esi, BYTE PTR [r12]
	mov	r14d, DWORD PTR .LC7[rip]
	sar	esi
	mov	DWORD PTR 118[rbx], r14d
	and	esi, 1
	mov	eax, esi
	lea	rdx, [rax+rax*2]
	lea	rax, gStageResultsHeadlineTexts[rip]
	lea	rdi, [rax+rdx*2]
	movzx	ecx, WORD PTR [rdi]
	call	VramMalloc
	mov	QWORD PTR 88[rbx], rax
	movzx	eax, WORD PTR 2[rdi]
	mov	WORD PTR 98[rbx], ax
	movzx	eax, WORD PTR 4[rdi]
	mov	BYTE PTR 128[rbx], al
	movzx	eax, BYTE PTR [r12]
	sub	eax, 28
	cmp	al, 1
	ja	.L54
	mov	eax, 1122
	mov	BYTE PTR 128[rbx], 0
	mov	WORD PTR 98[rbx], ax
.L54:
	movzx	edi, WORD PTR .LC8[rip]
	xor	eax, eax
	mov	DWORD PTR 122[rbx], 256
	mov	rcx, rbp
	mov	WORD PTR 96[rbx], ax
	xor	eax, eax
	mov	WORD PTR 116[rbx], ax
	mov	WORD PTR 129[rbx], di
	mov	BYTE PTR 133[rbx], 0
	mov	DWORD PTR 136[rbx], -1
	mov	DWORD PTR 112[rbx], 0
	call	UpdateSpriteAnimation
	movzx	eax, BYTE PTR [r12]
	test	esi, esi
	je	.L55
	sar	al, 2
	add	eax, 2
.L56:
	movzx	eax, al
	mov	DWORD PTR 182[rbx], r14d
	lea	rbp, 144[rbx]
	lea	rdx, [rax+rax*2]
	lea	rax, gAnimsGotThroughZoneAndActNames[rip]
	lea	rsi, [rax+rdx*2]
	movzx	ecx, WORD PTR [rsi]
	call	VramMalloc
	mov	QWORD PTR 152[rbx], rax
	movzx	eax, WORD PTR 2[rsi]
	mov	WORD PTR 162[rbx], ax
	movzx	eax, WORD PTR 4[rsi]
	mov	BYTE PTR 192[rbx], al
	movzx	eax, BYTE PTR [r12]
	cmp	al, 28
	je	.L96
	cmp	al, 29
	jne	.L58
	mov	r14d, 1123
	mov	BYTE PTR 192[rbx], 3
	mov	WORD PTR 162[rbx], r14w
.L58:
	xor	r11d, r11d
	xor	esi, esi
	mov	WORD PTR 193[rbx], di
	mov	rcx, rbp
	mov	WORD PTR 180[rbx], si
	lea	rdi, sStageScoreBonusesTexts[rip]
	lea	rsi, 208[rbx]
	mov	ebp, 114
	mov	WORD PTR 160[rbx], r11w
	mov	DWORD PTR 186[rbx], 256
	mov	BYTE PTR 197[rbx], 0
	mov	DWORD PTR 200[rbx], -1
	mov	DWORD PTR 176[rbx], 0
	call	UpdateSpriteAnimation
.L59:
	mov	edx, 442
	mov	WORD PTR 40[rsi], bp
	add	ebp, 20
	add	rdi, 6
	mov	WORD PTR 38[rsi], dx
	movzx	ecx, WORD PTR -6[rdi]
	call	VramMalloc
	mov	ecx, 256
	xor	r8d, r8d
	xor	r9d, r9d
	mov	QWORD PTR 8[rsi], rax
	movzx	eax, WORD PTR -4[rdi]
	xor	r10d, r10d
	mov	WORD PTR 18[rsi], ax
	movzx	eax, WORD PTR -2[rdi]
	mov	WORD PTR 42[rsi], cx
	mov	rcx, rsi
	add	rsi, 64
	mov	BYTE PTR -16[rsi], al
	mov	WORD PTR -48[rsi], r8w
	mov	WORD PTR -28[rsi], r9w
	mov	WORD PTR -20[rsi], r10w
	mov	BYTE PTR -15[rsi], -1
	mov	BYTE PTR -14[rsi], 16
	mov	BYTE PTR -11[rsi], 0
	mov	DWORD PTR -8[rsi], -1
	mov	DWORD PTR -32[rsi], 0
	call	UpdateSpriteAnimation
	cmp	bp, 174
	jne	.L59
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR [rax], -1
	movzx	eax, BYTE PTR [r12]
	cmp	al, 28
	je	.L97
	cmp	al, 29
	je	.L98
	and	eax, 3
	cmp	al, 2
	je	.L99
	mov	ecx, 401
	call	m4aSongNumStart
.L61:
	movzx	eax, WORD PTR 480[rbx]
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
.L38:
	cmp	ebp, 2999
	ja	.L100
	movzx	eax, si
	mov	ecx, 50000
	mov	DWORD PTR 464[rbx], 50000
	imul	edx, eax, 100
	cmp	dil, 7
	jne	.L39
.L91:
	mov	r8d, 10000
	cmp	edx, 9999
	jle	.L88
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L95:
	cmp	ecx, r8d
	jnb	.L88
.L51:
	mov	eax, r8d
	imul	rax, rax, 1374389535
	shr	rax, 37
	jmp	.L53
	.p2align 4,,10
	.p2align 3
.L93:
	mov	DWORD PTR 6[rbx], 1069482048
	mov	r12, QWORD PTR .refptr.gCurrentLevel[rip]
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L100:
	cmp	ebp, 3599
	jbe	.L43
	cmp	ebp, 5399
	jbe	.L44
	cmp	ebp, 7199
	jbe	.L45
	cmp	ebp, 10799
	jbe	.L46
	cmp	ebp, 14399
	jbe	.L47
	cmp	ebp, 17999
	jbe	.L48
	cmp	ebp, 21599
	jbe	.L49
	mov	DWORD PTR 464[rbx], 0
	movzx	eax, si
	imul	ecx, eax, 100
	mov	edx, ecx
	cmp	dil, 7
	je	.L101
	movzx	r8d, dil
	imul	r8d, r8d, 1000
	cmp	ecx, r8d
	jb	.L51
	xor	ecx, ecx
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L55:
	and	eax, 1
	jmp	.L56
	.p2align 4,,10
	.p2align 3
.L96:
	mov	eax, 1123
	mov	BYTE PTR 192[rbx], 2
	mov	WORD PTR 162[rbx], ax
	jmp	.L58
	.p2align 4,,10
	.p2align 3
.L99:
	mov	ecx, 402
	call	m4aSongNumStart
	cmp	WORD PTR 108[r13], 9
	jne	.L61
	mov	eax, 32
	mov	WORD PTR 108[r13], ax
	jmp	.L61
	.p2align 4,,10
	.p2align 3
.L97:
	mov	ecx, 403
	call	m4aSongNumStart
	jmp	.L61
	.p2align 4,,10
	.p2align 3
.L43:
	movzx	eax, si
	mov	ecx, 10000
	mov	DWORD PTR 464[rbx], 10000
	imul	edx, eax, 100
	cmp	dil, 7
	jne	.L39
	jmp	.L91
	.p2align 4,,10
	.p2align 3
.L94:
	mov	r10d, 16303
	mov	r11d, 8192
	mov	rcx, rbx
	mov	WORD PTR 8[rbx], r10w
	mov	WORD PTR 4[rbx], r11w
	call	UpdateScreenFade
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L98:
	mov	ecx, 404
	call	m4aSongNumStart
	jmp	.L61
	.p2align 4,,10
	.p2align 3
.L44:
	movzx	eax, si
	mov	ecx, 5000
	mov	DWORD PTR 464[rbx], 5000
	imul	edx, eax, 100
	cmp	dil, 7
	jne	.L39
	jmp	.L89
.L45:
	movzx	eax, si
	mov	ecx, 4000
	mov	DWORD PTR 464[rbx], 4000
	imul	edx, eax, 100
	cmp	dil, 7
	jne	.L39
.L89:
	cmp	edx, 9999
	jg	.L52
.L78:
	mov	r8d, 10000
	jmp	.L51
.L49:
	movzx	eax, si
	mov	ecx, 500
	mov	DWORD PTR 464[rbx], 500
	imul	r8d, eax, 100
	mov	edx, r8d
	cmp	dil, 7
	jne	.L39
	cmp	r8d, 9999
	jle	.L78
.L52:
	mov	r8d, 10000
	jmp	.L53
.L46:
	movzx	eax, si
	mov	ecx, 3000
	mov	DWORD PTR 464[rbx], 3000
	imul	edx, eax, 100
	cmp	dil, 7
	jne	.L39
	jmp	.L89
.L47:
	movzx	eax, si
	mov	ecx, 2000
	mov	DWORD PTR 464[rbx], 2000
	imul	edx, eax, 100
	cmp	dil, 7
	jne	.L39
	jmp	.L89
.L48:
	movzx	eax, si
	mov	ecx, 1000
	mov	DWORD PTR 464[rbx], 1000
	imul	edx, eax, 100
	cmp	dil, 7
	jne	.L39
	jmp	.L89
.L101:
	cmp	ecx, 9999
	jle	.L78
	jmp	.L52
	.seh_endproc
	.p2align 4
	.globl	StageResults_AnimateSeparator
	.def	StageResults_AnimateSeparator;	.scl	2;	.type	32;	.endef
	.seh_proc	StageResults_AnimateSeparator
StageResults_AnimateSeparator:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[rax]
	mov	eax, DWORD PTR 476[rdx]
	cmp	eax, 15
	ja	.L103
	mov	ecx, eax
	sal	ecx, 4
	sub	eax, ecx
	mov	ecx, 140
	add	ax, 240
	mov	WORD PTR 440[rdx], cx
	mov	WORD PTR 438[rdx], ax
.L102:
	ret
	.p2align 4,,10
	.p2align 3
.L103:
	cmp	eax, 23
	ja	.L105
	mov	eax, 140
	mov	WORD PTR 440[rdx], ax
	ret
	.p2align 4,,10
	.p2align 3
.L105:
	cmp	eax, 28
	ja	.L102
	sub	WORD PTR 440[rdx], 7
	ret
	.seh_endproc
	.p2align 4
	.globl	StageResults_AnimateTitle
	.def	StageResults_AnimateTitle;	.scl	2;	.type	32;	.endef
	.seh_proc	StageResults_AnimateTitle
StageResults_AnimateTitle:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	edx, DWORD PTR 476[rax]
	cmp	edx, 28
	jbe	.L106
	cmp	edx, 44
	jbe	.L110
	mov	edx, 269
	mov	ecx, 165
	mov	r8d, 96
.L108:
	mov	WORD PTR 54[rax], r8w
	mov	WORD PTR 118[rax], cx
	mov	WORD PTR 182[rax], dx
.L106:
	ret
	.p2align 4,,10
	.p2align 3
.L110:
	sub	edx, 29
	mov	r8d, 426
	mov	ecx, 495
	mov	r9d, edx
	sal	r9d, 4
	sub	r9d, edx
	mov	edx, 599
	sub	r8d, r9d
	sub	ecx, r9d
	sub	edx, r9d
	jmp	.L108
	.seh_endproc
	.p2align 4
	.def	Task_UpdateStageResults;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_UpdateStageResults
Task_UpdateStageResults:
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
	mov	rax, QWORD PTR 0[rbp]
	mov	rsi, QWORD PTR 24[rax]
	mov	eax, DWORD PTR 476[rsi]
	mov	ecx, DWORD PTR 480[rsi]
	lea	ebx, 1[rax]
	lea	eax, 309[rcx]
	mov	edx, ebx
	cmp	eax, ebx
	jnb	.L113
	lea	edx, 310[rcx]
	mov	ebx, edx
.L113:
	mov	rdi, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	DWORD PTR 476[rsi], edx
	movzx	edx, BYTE PTR [rdi]
	cmp	dl, 29
	jne	.L114
	mov	r8, QWORD PTR .refptr.gBldRegs[rip]
	mov	r11d, 16303
	mov	WORD PTR [r8], r11w
.L114:
	cmp	ebx, 149
	jbe	.L116
	mov	r8d, DWORD PTR 468[rsi]
	test	r8d, r8d
	jne	.L178
.L118:
	mov	r8d, DWORD PTR 472[rsi]
	test	r8d, r8d
	je	.L121
	sub	r8d, 100
	mov	DWORD PTR 472[rsi], r8d
	mov	r8, QWORD PTR .refptr.gLevelScore[rip]
	mov	r10d, DWORD PTR [r8]
	lea	r9d, 100[r10]
	mov	DWORD PTR [r8], r9d
	movsx	r8, r9d
	sar	r9d, 31
	imul	r8, r8, 351843721
	sar	r8, 44
	sub	r8d, r9d
	movsx	r9, r10d
	sar	r10d, 31
	imul	r9, r9, 351843721
	sar	r9, 44
	sub	r9d, r10d
	cmp	r8d, r9d
	je	.L121
	mov	r10, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [r10], 0
	jne	.L121
	mov	r11, QWORD PTR .refptr.gNumLives[rip]
	sub	r8d, r9d
	movzx	r9d, BYTE PTR [r11]
	add	r8d, r9d
	mov	r9d, 255
	cmp	r8w, r9w
	cmova	r8d, r9d
	mov	BYTE PTR [r11], r8b
	.p2align 4,,10
	.p2align 3
.L121:
	mov	r8d, DWORD PTR 464[rsi]
	test	r8d, r8d
	je	.L124
	sub	r8d, 100
	mov	DWORD PTR 464[rsi], r8d
	mov	r8, QWORD PTR .refptr.gLevelScore[rip]
	mov	r10d, DWORD PTR [r8]
	lea	r9d, 100[r10]
	mov	DWORD PTR [r8], r9d
	movsx	r8, r9d
	sar	r9d, 31
	imul	r8, r8, 351843721
	sar	r8, 44
	sub	r8d, r9d
	movsx	r9, r10d
	sar	r10d, 31
	imul	r9, r9, 351843721
	sar	r9, 44
	sub	r9d, r10d
	cmp	r8d, r9d
	je	.L124
	mov	r10, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [r10], 0
	jne	.L124
	mov	r11, QWORD PTR .refptr.gNumLives[rip]
	sub	r8d, r9d
	movzx	r9d, BYTE PTR [r11]
	add	r8d, r9d
	mov	r9d, 255
	cmp	r8w, r9w
	cmova	r8d, r9d
	mov	BYTE PTR [r11], r8b
	.p2align 4,,10
	.p2align 3
.L124:
	sub	edx, 28
	cmp	dl, 1
	jbe	.L126
	mov	rdx, QWORD PTR .refptr.gPressedKeys[rip]
	test	BYTE PTR [rdx], 1
	je	.L126
	mov	r12, QWORD PTR .refptr.gLevelScore[rip]
	mov	edx, DWORD PTR 468[rsi]
	mov	r10d, DWORD PTR [r12]
	add	edx, r10d
	movsx	r9, edx
	mov	r8d, edx
	add	edx, DWORD PTR 472[rsi]
	imul	r9, r9, 351843721
	sar	r8d, 31
	mov	r11d, edx
	sar	r11d, 31
	sar	r9, 44
	sub	r9d, r8d
	movsx	r8, r10d
	sar	r10d, 31
	imul	r8, r8, 351843721
	sar	r8, 44
	sub	r8d, r10d
	movsx	r10, edx
	imul	r10, r10, 351843721
	sar	r10, 44
	sub	r10d, r11d
	cmp	r9d, r8d
	je	.L127
	mov	r11, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [r11], 0
	je	.L179
	cmp	r9d, r10d
	je	.L131
	mov	r11d, DWORD PTR 464[rsi]
.L132:
	add	r11d, edx
	mov	DWORD PTR [r12], r11d
.L134:
	mov	DWORD PTR 472[rsi], 0
	add	ecx, 149
	mov	QWORD PTR 464[rsi], 0
	cmp	ebx, ecx
	jnb	.L136
	mov	DWORD PTR 476[rsi], ecx
	mov	ebx, ecx
.L136:
	mov	rdx, QWORD PTR .refptr.gStageTime[rip]
	test	BYTE PTR [rdx], 3
	je	.L156
	.p2align 4,,10
	.p2align 3
.L116:
	cmp	eax, ebx
	jnb	.L140
	movzx	eax, BYTE PTR [rdi]
	cmp	al, 28
	je	.L180
	cmp	al, 29
	jne	.L143
	mov	rax, QWORD PTR .refptr.gMPlayInfo_BGM[rip]
	cmp	WORD PTR 8[rax], 0
	je	.L181
.L142:
	mov	r12, QWORD PTR .refptr.gPlayer[rip]
	mov	eax, DWORD PTR 36[r12]
	test	eax, 134217728
	je	.L140
	mov	rdx, QWORD PTR .refptr.gSpecialRingCount[rip]
	cmp	BYTE PTR [rdx], 6
	ja	.L182
.L140:
	call	StageResults_AnimateSeparator
	call	StageResults_AnimateTitle
	movzx	eax, BYTE PTR [rdi]
	sub	eax, 28
	cmp	al, 1
	ja	.L155
	mov	eax, DWORD PTR 480[rsi]
	lea	edx, 245[rax]
	cmp	edx, ebx
	jnb	.L155
	sub	ebx, eax
	lea	ecx, -245[rbx]
	sal	ecx, 4
	movzx	ecx, cx
	jmp	.L177
	.p2align 4,,10
	.p2align 3
.L155:
	xor	ecx, ecx
.L177:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	AnimateResults
	.p2align 4,,10
	.p2align 3
.L178:
	sub	r8d, 100
	mov	DWORD PTR 468[rsi], r8d
	mov	r8, QWORD PTR .refptr.gLevelScore[rip]
	mov	r10d, DWORD PTR [r8]
	lea	r9d, 100[r10]
	mov	DWORD PTR [r8], r9d
	movsx	r8, r9d
	sar	r9d, 31
	imul	r8, r8, 351843721
	sar	r8, 44
	sub	r8d, r9d
	movsx	r9, r10d
	sar	r10d, 31
	imul	r9, r9, 351843721
	sar	r9, 44
	sub	r9d, r10d
	cmp	r8d, r9d
	je	.L118
	mov	r10, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [r10], 0
	jne	.L118
	mov	r11, QWORD PTR .refptr.gNumLives[rip]
	sub	r8d, r9d
	movzx	r9d, BYTE PTR [r11]
	add	r8d, r9d
	mov	r9d, 255
	cmp	r8w, r9w
	cmova	r8d, r9d
	mov	BYTE PTR [r11], r8b
	jmp	.L118
	.p2align 4,,10
	.p2align 3
.L180:
	mov	rax, QWORD PTR .refptr.gMPlayInfo_BGM[rip]
	cmp	WORD PTR 8[rax], 0
	jne	.L142
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	movsx	rax, BYTE PTR [rax]
	mov	BYTE PTR 7[rdx+rax], 29
	call	WriteSaveGame
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
	jmp	StartEndingCutscenes
	.p2align 4,,10
	.p2align 3
.L126:
	mov	rdx, QWORD PTR .refptr.gStageTime[rip]
	test	BYTE PTR [rdx], 3
	jne	.L116
	mov	r10d, DWORD PTR 468[rsi]
	test	r10d, r10d
	jne	.L138
	mov	r9d, DWORD PTR 472[rsi]
	test	r9d, r9d
	je	.L156
.L138:
	mov	ecx, 140
	call	m4aSongNumStart
	mov	eax, DWORD PTR 480[rsi]
	add	eax, 309
	jmp	.L116
	.p2align 4,,10
	.p2align 3
.L143:
	mov	rcx, rsi
	call	UpdateScreenFade
	cmp	al, 1
	jne	.L142
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	rbx, QWORD PTR .refptr.gBldRegs[rip]
	mov	ecx, 16
	mov	edx, DWORD PTR 36[rax]
	mov	WORD PTR 4[rbx], cx
	mov	ecx, edx
	or	ecx, 1048576
	mov	DWORD PTR 36[rax], ecx
	movzx	eax, BYTE PTR [rdi]
	mov	ecx, eax
	and	ecx, 3
	cmp	cl, 2
	je	.L183
	mov	rcx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	add	eax, 1
	movsx	r10d, al
	mov	BYTE PTR [rdi], al
	mov	r8, QWORD PTR [rcx]
	mov	rcx, QWORD PTR .refptr.gSelectedCharacter[rip]
	movsx	rcx, BYTE PTR [rcx]
	movzx	r9d, BYTE PTR 7[r8+rcx]
	cmp	r10d, r9d
	jg	.L184
.L151:
	and	edx, 134217728
	mov	ecx, 0
	mov	edx, 65535
	je	.L152
	mov	rax, QWORD PTR .refptr.gSpecialRingCount[rip]
	cmp	BYTE PTR [rax], 6
	ja	.L185
.L152:
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
	call	GameStageStart
	jmp	.L176
	.p2align 4,,10
	.p2align 3
.L182:
	mov	rdx, QWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rdx]
	mov	rcx, QWORD PTR 408[rbx]
	test	rcx, rcx
	je	.L153
	call	VramFree
	mov	rcx, QWORD PTR 24[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 88[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 152[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 216[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 280[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 344[rbx]
	call	VramFree
	mov	eax, DWORD PTR 36[r12]
	mov	QWORD PTR 408[rbx], 0
.L153:
	or	eax, 67108864
	mov	DWORD PTR 36[r12], eax
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
.L156:
	mov	r8d, DWORD PTR 464[rsi]
	test	r8d, r8d
	jne	.L138
	cmp	BYTE PTR 488[rsi], 0
	jne	.L116
	mov	BYTE PTR 488[rsi], 1
	mov	ecx, 141
	call	m4aSongNumStart
	mov	eax, DWORD PTR 480[rsi]
	add	eax, 309
	jmp	.L116
	.p2align 4,,10
	.p2align 3
.L127:
	cmp	r9d, r10d
	je	.L131
	mov	r13, QWORD PTR .refptr.gGameMode[rip]
	mov	r8d, DWORD PTR 464[rsi]
	cmp	BYTE PTR 0[r13], 0
	mov	r11d, r8d
	jne	.L132
	mov	r11, QWORD PTR .refptr.gNumLives[rip]
	mov	r14d, r9d
	movzx	r15d, BYTE PTR [r11]
	jmp	.L129
	.p2align 4,,10
	.p2align 3
.L179:
	mov	r11, QWORD PTR .refptr.gNumLives[rip]
	mov	r14d, r9d
	movzx	r15d, BYTE PTR [r11]
	sub	r15d, r8d
	mov	r8d, 255
	add	r15d, r9d
	cmp	r15w, r8w
	cmova	r15d, r8d
	mov	BYTE PTR [r11], r15b
	cmp	r9d, r10d
	je	.L174
	mov	r8d, DWORD PTR 464[rsi]
.L129:
	lea	r9d, [r15+r10]
	mov	r13d, r10d
	sub	r9d, r14d
	mov	r14d, 255
	cmp	r9w, r14w
	cmova	r9d, r14d
	add	edx, r8d
	movsx	r8, edx
	mov	DWORD PTR [r12], edx
	sar	edx, 31
	imul	r8, r8, 351843721
	mov	BYTE PTR [r11], r9b
	sar	r8, 44
	sub	r8d, edx
	cmp	r8d, r10d
	je	.L134
.L133:
	sub	r8d, r13d
	mov	edx, 255
	add	r8d, r9d
	cmp	r8w, dx
	cmova	r8d, edx
	mov	BYTE PTR [r11], r8b
	jmp	.L134
	.p2align 4,,10
	.p2align 3
.L181:
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	xor	ecx, ecx
	mov	BYTE PTR [rdi], 30
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	movsx	rax, BYTE PTR [rax]
	mov	BYTE PTR 7[rdx+rax], 30
	mov	edx, 65535
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
	call	StartEndingCutscenes
	nop
.L176:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	WriteSaveGame
	.p2align 4,,10
	.p2align 3
.L184:
	mov	BYTE PTR 7[r8+rcx], al
	jmp	.L151
	.p2align 4,,10
	.p2align 3
.L131:
	add	edx, DWORD PTR 464[rsi]
	movsx	r8, edx
	mov	DWORD PTR [r12], edx
	sar	edx, 31
	imul	r8, r8, 351843721
	sar	r8, 44
	sub	r8d, edx
	cmp	r8d, r10d
	je	.L134
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rdx], 0
	jne	.L134
	mov	r11, QWORD PTR .refptr.gNumLives[rip]
.L157:
	movzx	r9d, BYTE PTR [r11]
	mov	r13d, r10d
	jmp	.L133
	.p2align 4,,10
	.p2align 3
.L185:
	call	TasksDestroyInPriorityRange
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueIndex[rip]
	mov	ecx, -1
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueCursor[rip]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR .refptr.gBgSpritesCount[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyQueueIndex[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyCursor[rip]
	mov	BYTE PTR [rax], dl
	mov	edx, -1
	call	CreateSpecialStage
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	edx, 16
	movq	xmm1, QWORD PTR .LC9[rip]
	mov	WORD PTR 4[rbx], dx
	or	WORD PTR [rax], 8192
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	movq	xmm0, QWORD PTR 16[rax]
	mov	DWORD PTR [rax], 426
	mov	DWORD PTR 8[rax], 240
	por	xmm0, xmm1
	movq	QWORD PTR 16[rax], xmm0
	mov	eax, 16319
	mov	WORD PTR [rbx], ax
	jmp	.L176
	.p2align 4,,10
	.p2align 3
.L174:
	add	edx, DWORD PTR 464[rsi]
	movsx	r8, edx
	mov	DWORD PTR [r12], edx
	sar	edx, 31
	imul	r8, r8, 351843721
	sar	r8, 44
	sub	r8d, edx
	cmp	r8d, r10d
	jne	.L157
	jmp	.L134
.L183:
	mov	edx, 65535
	xor	ecx, ecx
	call	TasksDestroyInPriorityRange
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueIndex[rip]
	mov	rcx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	r8, QWORD PTR .refptr.gSelectedCharacter[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueCursor[rip]
	mov	rcx, QWORD PTR [rcx]
	movsx	r9, BYTE PTR [r8]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR .refptr.gBgSpritesCount[rip]
	movzx	r10d, BYTE PTR 7[rcx+r9]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyQueueIndex[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyCursor[rip]
	mov	BYTE PTR [rax], dl
	movzx	eax, BYTE PTR [rdi]
	add	eax, 1
	movsx	edx, al
	mov	BYTE PTR [rdi], al
	cmp	edx, r10d
	jle	.L145
	mov	BYTE PTR 7[rcx+r9], al
	test	r9b, r9b
	jne	.L146
	sub	edx, 1
	sar	edx, 2
	cmp	edx, 2
	je	.L147
	cmp	edx, 4
	je	.L148
	test	edx, edx
	jne	.L146
	or	BYTE PTR 19[rcx], 2
	xor	ecx, ecx
	call	CreateCharacterUnlockCutScene
	jmp	.L176
.L145:
	movzx	ecx, al
	mov	r8d, 4
	mov	edx, r10d
	call	CreateCourseSelectionScreen
	jmp	.L176
.L146:
	movzx	ecx, al
	mov	r8d, 1
	mov	edx, ecx
	call	CreateCourseSelectionScreen
	jmp	.L176
.L148:
	or	BYTE PTR 19[rcx], 8
	mov	ecx, 1
	call	CreateCharacterUnlockCutScene
	jmp	.L176
.L147:
	or	BYTE PTR 19[rcx], 4
	mov	ecx, 2
	call	CreateCharacterUnlockCutScene
	jmp	.L176
	.seh_endproc
	.section .rdata,"dr"
	.align 16
sStageScoreBonusesTexts:
	.word	26
	.word	1124
	.word	0
	.word	26
	.word	1124
	.word	1
	.word	26
	.word	1124
	.word	2
	.globl	gAnimsGotThroughZoneAndActNames
	.align 32
gAnimsGotThroughZoneAndActNames:
	.word	14
	.word	1123
	.word	0
	.word	14
	.word	1123
	.word	1
	.word	18
	.word	1123
	.word	4
	.word	18
	.word	1123
	.word	5
	.word	18
	.word	1123
	.word	6
	.word	18
	.word	1123
	.word	7
	.word	18
	.word	1123
	.word	8
	.word	18
	.word	1123
	.word	9
	.word	18
	.word	1123
	.word	10
	.word	16
	.word	1123
	.word	2
	.word	16
	.word	1123
	.word	3
	.globl	gStageResultsHeadlineTexts
	.align 16
gStageResultsHeadlineTexts:
	.word	28
	.word	1122
	.word	0
	.word	36
	.word	1122
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.globl	gAnimsGotThroughCharacterNames
	.align 16
gAnimsGotThroughCharacterNames:
	.word	24
	.word	1121
	.word	0
	.word	27
	.word	1121
	.word	4
	.word	24
	.word	1121
	.word	1
	.word	27
	.word	1121
	.word	2
	.word	18
	.word	1121
	.word	3
	.align 8
.LC0:
	.word	0
	.word	1
	.word	0
	.word	256
	.align 4
.LC7:
	.word	442
	.word	89
	.align 2
.LC8:
	.byte	-1
	.byte	16
	.align 8
.LC9:
	.long	63
	.long	31
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	StageUI_PrintIntegerAt;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	UpdateScreenFade;	.scl	2;	.type	32;	.endef
	.def	WriteSaveGame;	.scl	2;	.type	32;	.endef
	.def	TasksDestroyInPriorityRange;	.scl	2;	.type	32;	.endef
	.def	StartEndingCutscenes;	.scl	2;	.type	32;	.endef
	.def	GameStageStart;	.scl	2;	.type	32;	.endef
	.def	CreateSpecialStage;	.scl	2;	.type	32;	.endef
	.def	CreateCharacterUnlockCutScene;	.scl	2;	.type	32;	.endef
	.def	CreateCourseSelectionScreen;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr.gMPlayInfo_BGM, "dr"
	.globl	.refptr.gMPlayInfo_BGM
	.linkonce	discard
.refptr.gMPlayInfo_BGM:
	.quad	gMPlayInfo_BGM
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
	.section	.rdata$.refptr.gPressedKeys, "dr"
	.globl	.refptr.gPressedKeys
	.linkonce	discard
.refptr.gPressedKeys:
	.quad	gPressedKeys
	.section	.rdata$.refptr.gNumLives, "dr"
	.globl	.refptr.gNumLives
	.linkonce	discard
.refptr.gNumLives:
	.quad	gNumLives
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gLevelScore, "dr"
	.globl	.refptr.gLevelScore
	.linkonce	discard
.refptr.gLevelScore:
	.quad	gLevelScore
	.section	.rdata$.refptr.gBldRegs, "dr"
	.globl	.refptr.gBldRegs
	.linkonce	discard
.refptr.gBldRegs:
	.quad	gBldRegs
	.section	.rdata$.refptr.gMusicManagerState, "dr"
	.globl	.refptr.gMusicManagerState
	.linkonce	discard
.refptr.gMusicManagerState:
	.quad	gMusicManagerState
	.section	.rdata$.refptr.gSelectedCharacter, "dr"
	.globl	.refptr.gSelectedCharacter
	.linkonce	discard
.refptr.gSelectedCharacter:
	.quad	gSelectedCharacter
	.section	.rdata$.refptr.gSpecialRingCount, "dr"
	.globl	.refptr.gSpecialRingCount
	.linkonce	discard
.refptr.gSpecialRingCount:
	.quad	gSpecialRingCount
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gRingCount, "dr"
	.globl	.refptr.gRingCount
	.linkonce	discard
.refptr.gRingCount:
	.quad	gRingCount
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
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
