	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_TimeAttackResults;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_TimeAttackResults
TaskDestructor_TimeAttackResults:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 408[rsi]
	lea	rbx, 504[rsi]
	add	rsi, 952
	call	VramFree
	mov	rcx, QWORD PTR -928[rsi]
	call	VramFree
	mov	rcx, QWORD PTR -864[rsi]
	call	VramFree
	mov	rcx, QWORD PTR -800[rsi]
	call	VramFree
	mov	rcx, QWORD PTR -736[rsi]
	call	VramFree
	mov	rcx, QWORD PTR -672[rsi]
	call	VramFree
	mov	rcx, QWORD PTR -608[rsi]
	call	VramFree
	.p2align 4,,10
	.p2align 3
.L2:
	mov	rcx, QWORD PTR [rbx]
	add	rbx, 64
	call	VramFree
	cmp	rsi, rbx
	jne	.L2
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	and	WORD PTR [rax], -513
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	AnimateResults;	.scl	3;	.type	32;	.endef
	.seh_proc	AnimateResults
AnimateResults:
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
	xor	ebx, ebx
	mov	rax, QWORD PTR [rax]
	mov	rsi, QWORD PTR 24[rax]
	mov	edi, DWORD PTR 476[rsi]
	lea	rbp, 400[rsi]
	cmp	edi, 23
	ja	.L11
	cmp	edi, 16
	jbe	.L33
.L7:
	lea	edi, 448[rbx]
	.p2align 4,,10
	.p2align 3
.L8:
	mov	WORD PTR 438[rsi], bx
	mov	rcx, rbp
	add	ebx, 32
	call	DisplaySprite
	cmp	di, bx
	jne	.L8
.L5:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L11:
	mov	WORD PTR 438[rsi], bx
	mov	rcx, rbp
	add	ebx, 32
	call	DisplaySprite
	cmp	bx, 448
	jne	.L11
	cmp	edi, 28
	jbe	.L5
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	lea	rcx, 16[rsi]
	movzx	eax, BYTE PTR [rax]
	and	eax, 3
	cmp	al, 2
	je	.L14
	call	DisplaySprite
	lea	rcx, 80[rsi]
	call	DisplaySprite
	lea	rcx, 144[rsi]
	call	DisplaySprite
.L15:
	cmp	edi, 89
	jbe	.L5
	lea	eax, -90[rdi]
	lea	rcx, 208[rsi]
	cmp	eax, 10
	jbe	.L34
	call	DisplaySprite
	cmp	edi, 119
	jbe	.L5
	lea	eax, -127[rdi]
	cmp	eax, 16
	jle	.L22
	cmp	BYTE PTR 958[rsi], 0
	je	.L22
	movzx	edx, WORD PTR 956[rsi]
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	lea	rbx, 272[rsi]
	mov	eax, edx
	shr	ax, 8
	add	eax, 64
	lea	rax, 0[0+rax*4]
	and	eax, 2044
	movzx	eax, WORD PTR [rcx+rax*2]
	movzx	ecx, WORD PTR 954[rsi]
	add	edx, ecx
	sar	ax, 6
	mov	WORD PTR 956[rsi], dx
	test	dx, dx
	je	.L35
.L19:
	test	ax, ax
	mov	edx, 16
	mov	rcx, rbx
	cmove	eax, edx
	lea	rdx, 944[rsi]
	mov	WORD PTR 946[rsi], ax
	call	TransformSprite
	mov	rcx, rbx
	call	DisplaySprite
	cmp	BYTE PTR 958[rsi], 1
	jne	.L22
	test	dil, 32
	jne	.L36
	.p2align 4,,10
	.p2align 3
.L22:
	sub	edi, 120
	js	.L5
	mov	ebx, edi
	add	rsi, 496
	lea	rbp, sTimeResultDigitAnim[rip]
	lea	rdi, -6[rbx]
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L25:
	sub	rbx, 1
	add	rsi, 64
	test	ebx, ebx
	js	.L5
.L23:
	cmp	ebx, 19
	ja	.L24
	movsx	ax, BYTE PTR 0[rbp+rbx]
	add	WORD PTR 40[rsi], ax
.L24:
	mov	rcx, rsi
	call	DisplaySprite
	cmp	rdi, rbx
	jne	.L25
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L33:
	lea	eax, 0[0+rdi*4]
	sub	edi, eax
	lea	ebx, 384[0+rdi*8]
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L14:
	call	DisplaySprite
	lea	rcx, 80[rsi]
	call	DisplaySprite
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L34:
	mov	eax, 100
	sub	eax, edi
	sal	eax, 4
	add	ax, 133
	mov	WORD PTR 246[rsi], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	DisplaySprite
.L35:
	xor	edx, edx
	cmp	cx, 2048
	sete	dl
	sal	edx, 10
	mov	WORD PTR 954[rsi], dx
	jmp	.L19
.L36:
	lea	rcx, 336[rsi]
	call	DisplaySprite
	jmp	.L22
	.seh_endproc
	.p2align 4
	.def	Task_AnimateResults;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_AnimateResults
Task_AnimateResults:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rax, QWORD PTR 24[rax]
	mov	edx, DWORD PTR 476[rax]
	lea	ebx, 1[rdx]
	mov	DWORD PTR 476[rax], ebx
	call	StageResults_AnimateSeparator
	call	StageResults_AnimateTitle
	call	AnimateResults
	cmp	ebx, 160
	jbe	.L37
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	test	BYTE PTR [rax], 9
	jne	.L40
	cmp	ebx, 600
	jbe	.L37
.L40:
	mov	rax, QWORD PTR [rsi]
	lea	rcx, Task_HandleExit[rip]
	mov	QWORD PTR 40[rax], rcx
.L37:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_HandleExit;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_HandleExit
Task_HandleExit:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rcx, QWORD PTR 24[rax]
	call	UpdateScreenFade
	cmp	al, 1
	je	.L46
	call	StageResults_AnimateSeparator
	call	StageResults_AnimateTitle
	nop
	add	rsp, 40
	jmp	AnimateResults
	.p2align 4,,10
	.p2align 3
.L46:
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
	jmp	CreateTimeAttackLobbyScreen
	.seh_endproc
	.p2align 4
	.globl	CreateTimeAttackResults
	.def	CreateTimeAttackResults;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateTimeAttackResults
CreateTimeAttackResults:
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
	mov	r13, QWORD PTR .refptr.gLoadedSaveGame[rip]
	xor	r9d, r9d
	mov	r8d, 49408
	mov	rdx, QWORD PTR .refptr.gRingCount[rip]
	mov	rax, QWORD PTR 0[r13]
	movsx	edx, WORD PTR [rdx]
	add	DWORD PTR 880[rax], edx
	lea	rax, TaskDestructor_TimeAttackResults[rip]
	mov	edx, 960
	mov	QWORD PTR 32[rsp], rax
	mov	r12d, ecx
	lea	rcx, Task_AnimateResults[rip]
	call	TaskCreate
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .LC2[rip]
	mov	DWORD PTR 476[rbx], 0
	mov	DWORD PTR 954[rbx], 1073743872
	mov	QWORD PTR [rbx], rax
	mov	DWORD PTR 8[rbx], 16383
	cmp	r12d, 35999
	jbe	.L48
	mov	DWORD PTR 464[rbx], r12d
	mov	eax, DWORD PTR .LC0[rip]
	mov	ecx, 9
.L49:
	mov	DWORD PTR 489[rbx], eax
	mov	r14d, DWORD PTR .LC4[rip]
	lea	rsi, 504[rbx]
	mov	edi, 165
	mov	BYTE PTR 493[rbx], cl
	movzx	ebp, WORD PTR .LC5[rip]
	.p2align 4,,10
	.p2align 3
.L50:
	mov	r15d, 128
	mov	WORD PTR 30[rsi], di
	mov	ecx, 4
	add	edi, 14
	mov	WORD PTR 32[rsi], r15w
	add	rsi, 64
	call	VramMalloc
	mov	DWORD PTR -56[rsi], r14d
	mov	QWORD PTR -64[rsi], rax
	mov	eax, 256
	mov	WORD PTR -30[rsi], ax
	xor	eax, eax
	mov	WORD PTR -36[rsi], ax
	xor	eax, eax
	mov	WORD PTR -28[rsi], ax
	mov	WORD PTR -24[rsi], bp
	mov	BYTE PTR -22[rsi], 16
	mov	BYTE PTR -19[rsi], 0
	mov	DWORD PTR -16[rsi], -1
	mov	DWORD PTR -40[rsi], 0
	cmp	di, 263
	jne	.L50
	movzx	eax, BYTE PTR 489[rbx]
	add	BYTE PTR 544[rbx], al
	lea	rsi, 496[rbx]
	lea	rdi, 944[rbx]
	movzx	eax, BYTE PTR 490[rbx]
	add	BYTE PTR 672[rbx], al
	movzx	eax, BYTE PTR 491[rbx]
	add	BYTE PTR 736[rbx], al
	movzx	eax, BYTE PTR 492[rbx]
	add	BYTE PTR 864[rbx], al
	movzx	eax, BYTE PTR 493[rbx]
	add	BYTE PTR 928[rbx], al
	mov	BYTE PTR 608[rbx], 10
	mov	BYTE PTR 800[rbx], 10
	.p2align 4,,10
	.p2align 3
.L51:
	mov	rcx, rsi
	add	rsi, 64
	call	UpdateSpriteAnimation
	cmp	rdi, rsi
	jne	.L51
	mov	rsi, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	rdi, QWORD PTR .refptr.gSelectedCharacter[rip]
	mov	r8, QWORD PTR 0[r13]
	movsx	eax, BYTE PTR [rsi]
	movzx	r9d, BYTE PTR [rdi]
	cdq
	mov	ecx, eax
	shr	edx, 30
	sar	cl, 2
	add	eax, edx
	movzx	ecx, cl
	and	eax, 3
	sub	eax, edx
	mov	rdx, r9
	sal	rdx, 6
	movzx	eax, al
	sub	rdx, r9
	lea	r10, [rax+rax*2]
	add	rdx, rdx
	lea	rdx, [rdx+r10*2]
	lea	r10, [rcx+rcx*8]
	lea	rdx, [rdx+r10*2]
	add	rdx, r8
	movzx	r13d, WORD PTR 50[rdx]
	movzx	r15d, WORD PTR 52[rdx]
	movzx	r14d, WORD PTR 54[rdx]
	mov	r10d, r13d
	mov	r11d, r15d
	cmp	r12d, r13d
	jb	.L52
	cmp	r12d, r15d
	jb	.L53
	xor	r13d, r13d
	cmp	r12d, r14d
	jb	.L66
.L54:
	mov	BYTE PTR 958[rbx], r13b
	mov	ecx, 4
	mov	DWORD PTR 438[rbx], 7864762
	call	VramMalloc
	mov	WORD PTR 448[rbx], bp
	lea	rcx, 400[rbx]
	mov	QWORD PTR 408[rbx], rax
	xor	eax, eax
	mov	DWORD PTR 416[rbx], 73400320
	mov	WORD PTR 436[rbx], ax
	mov	DWORD PTR 442[rbx], 320
	mov	BYTE PTR 450[rbx], 16
	mov	BYTE PTR 453[rbx], 0
	mov	DWORD PTR 456[rbx], -1
	mov	DWORD PTR 432[rbx], 0
	call	UpdateSpriteAnimation
	movsx	rax, BYTE PTR [rdi]
	mov	r12, QWORD PTR .refptr.gAnimsGotThroughCharacterNames[rip]
	mov	DWORD PTR 54[rbx], 5308858
	lea	rax, [rax+rax*2]
	movzx	ecx, WORD PTR [r12+rax*2]
	call	VramMalloc
	mov	ecx, 4351
	mov	BYTE PTR 69[rbx], 0
	mov	QWORD PTR 24[rbx], rax
	movsx	rax, BYTE PTR [rdi]
	mov	WORD PTR 65[rbx], cx
	lea	rcx, 16[rbx]
	lea	rax, [rax+rax*2]
	mov	DWORD PTR 58[rbx], 256
	lea	rax, [r12+rax*2]
	mov	DWORD PTR 72[rbx], -1
	movzx	edx, WORD PTR 2[rax]
	movzx	eax, WORD PTR 4[rax]
	mov	DWORD PTR 48[rbx], 0
	mov	WORD PTR 34[rbx], dx
	xor	edx, edx
	mov	BYTE PTR 64[rbx], al
	xor	eax, eax
	mov	WORD PTR 52[rbx], dx
	mov	WORD PTR 32[rbx], ax
	call	UpdateSpriteAnimation
	movsx	eax, BYTE PTR [rsi]
	mov	r8, QWORD PTR .refptr.gStageResultsHeadlineTexts[rip]
	mov	r13d, DWORD PTR .LC9[rip]
	sar	eax
	mov	r12d, eax
	and	eax, 1
	mov	DWORD PTR 118[rbx], r13d
	lea	rdi, [rax+rax*2]
	and	r12d, 1
	lea	rdi, [r8+rdi*2]
	movzx	ecx, WORD PTR [rdi]
	call	VramMalloc
	xor	r9d, r9d
	xor	r10d, r10d
	lea	rcx, 80[rbx]
	mov	QWORD PTR 88[rbx], rax
	movzx	eax, WORD PTR 2[rdi]
	mov	r11d, 4351
	mov	WORD PTR 96[rbx], r9w
	mov	WORD PTR 98[rbx], ax
	movzx	eax, WORD PTR 4[rdi]
	mov	WORD PTR 116[rbx], r10w
	mov	BYTE PTR 128[rbx], al
	mov	DWORD PTR 122[rbx], 256
	mov	WORD PTR 129[rbx], r11w
	mov	BYTE PTR 133[rbx], 0
	mov	DWORD PTR 136[rbx], -1
	mov	DWORD PTR 112[rbx], 0
	call	UpdateSpriteAnimation
	movzx	eax, BYTE PTR [rsi]
	test	r12b, r12b
	je	.L56
	sar	al, 2
	add	eax, 2
.L57:
	mov	rcx, QWORD PTR .refptr.gAnimsGotThroughZoneAndActNames[rip]
	movzx	eax, al
	mov	DWORD PTR 182[rbx], r13d
	mov	r13d, 1047
	lea	rdi, [rax+rax*2]
	lea	rdi, [rcx+rdi*2]
	movzx	ecx, WORD PTR [rdi]
	call	VramMalloc
	xor	r8d, r8d
	xor	r9d, r9d
	mov	r10d, 4351
	mov	QWORD PTR 152[rbx], rax
	movzx	eax, WORD PTR 2[rdi]
	lea	rcx, 144[rbx]
	mov	WORD PTR 160[rbx], r8w
	mov	WORD PTR 162[rbx], ax
	movzx	eax, WORD PTR 4[rdi]
	mov	edi, -255
	mov	WORD PTR 180[rbx], r9w
	mov	WORD PTR 193[rbx], r10w
	mov	BYTE PTR 192[rbx], al
	mov	DWORD PTR 186[rbx], 256
	mov	BYTE PTR 197[rbx], 0
	mov	DWORD PTR 200[rbx], -1
	mov	DWORD PTR 176[rbx], 0
	call	UpdateSpriteAnimation
	mov	ecx, 8
	mov	DWORD PTR 246[rbx], 8519813
	call	VramMalloc
	mov	r12d, DWORD PTR .LC11[rip]
	xor	r11d, r11d
	mov	WORD PTR 256[rbx], di
	mov	WORD PTR 244[rbx], r11w
	lea	rcx, 208[rbx]
	lea	rdi, 272[rbx]
	mov	QWORD PTR 216[rbx], rax
	mov	DWORD PTR 224[rbx], r12d
	mov	DWORD PTR 250[rbx], 256
	mov	BYTE PTR 258[rbx], 16
	mov	BYTE PTR 261[rbx], 0
	mov	DWORD PTR 264[rbx], -1
	mov	DWORD PTR 240[rbx], 0
	call	UpdateSpriteAnimation
	mov	ecx, 16
	mov	DWORD PTR 310[rbx], 10485973
	call	VramMalloc
	movzx	edx, BYTE PTR 958[rbx]
	mov	WORD PTR 290[rbx], r13w
	mov	QWORD PTR 280[rbx], rax
	test	dl, dl
	lea	eax, 13[rdx]
	mov	edx, 14
	mov	DWORD PTR 314[rbx], 256
	cmove	eax, edx
	xor	r14d, r14d
	xor	r15d, r15d
	mov	rdx, QWORD PTR .refptr.gOamMatrixIndex[rip]
	mov	WORD PTR 288[rbx], r14w
	mov	BYTE PTR 320[rbx], al
	mov	eax, 4351
	mov	WORD PTR 321[rbx], ax
	movzx	eax, BYTE PTR [rdx]
	mov	WORD PTR 308[rbx], r15w
	lea	ecx, 1[rax]
	or	eax, 32
	mov	BYTE PTR 325[rbx], 0
	movzx	eax, al
	mov	BYTE PTR [rdx], cl
	mov	rcx, rdi
	mov	DWORD PTR 328[rbx], -1
	mov	DWORD PTR 304[rbx], eax
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR .LC14[rip]
	mov	ecx, 22
	mov	DWORD PTR 374[rbx], 12320981
	mov	QWORD PTR 946[rbx], rax
	xor	eax, eax
	mov	WORD PTR 944[rbx], ax
	call	VramMalloc
	mov	DWORD PTR 352[rbx], r12d
	lea	rcx, 336[rbx]
	mov	QWORD PTR 344[rbx], rax
	xor	eax, eax
	mov	WORD PTR 372[rbx], ax
	mov	DWORD PTR 378[rbx], 256
	mov	WORD PTR 384[rbx], bp
	mov	BYTE PTR 386[rbx], 16
	mov	BYTE PTR 389[rbx], 0
	mov	DWORD PTR 392[rbx], -1
	mov	DWORD PTR 368[rbx], 0
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR [rax], -1
	movzx	eax, BYTE PTR [rsi]
	and	eax, 3
	cmp	al, 2
	jne	.L59
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, 32
	mov	WORD PTR 108[rax], dx
.L59:
	cmp	BYTE PTR 958[rbx], 1
	je	.L67
	mov	ecx, 405
	call	m4aSongNumStart
.L61:
	mov	eax, 600
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
.L56:
	and	eax, 1
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L48:
	mov	r8d, 2290649225
	mov	eax, r12d
	mov	r9, QWORD PTR .refptr.gMillisUnpackTable[rip]
	imul	rax, r8
	shr	rax, 37
	imul	edx, eax, 60
	mov	eax, r12d
	sub	eax, edx
	mov	DWORD PTR 464[rbx], edx
	cdqe
	movzx	ecx, BYTE PTR [r9+rax*2]
	movzx	eax, BYTE PTR 1[r9+rax*2]
	lea	ecx, [rcx+rcx*4]
	lea	ecx, [rax+rcx*2]
	mov	eax, edx
	imul	rax, r8
	shr	rax, 37
	movzx	edx, ax
	imul	edx, edx, 34953
	shr	edx, 21
	imul	r8d, edx, -60
	add	r8d, eax
	movzx	eax, dx
	imul	eax, eax, 52429
	shr	eax, 19
	lea	eax, [rax+rax*4]
	add	eax, eax
	sub	edx, eax
	movsx	eax, r8w
	imul	eax, eax, 26215
	mov	r9d, edx
	mov	edx, r8d
	sar	dx, 15
	movzx	r9d, r9b
	sar	eax, 18
	sub	eax, edx
	movzx	edx, cx
	imul	edx, edx, 52429
	mov	r10d, eax
	lea	eax, [r10+r10*4]
	add	eax, eax
	shr	edx, 19
	sub	r8d, eax
	movzx	eax, dl
	movzx	r8d, r8b
	lea	edx, [rdx+rdx*4]
	sal	eax, 8
	add	edx, edx
	or	eax, r8d
	movzx	r8d, r10b
	sub	ecx, edx
	sal	eax, 8
	or	eax, r8d
	sal	eax, 8
	or	eax, r9d
	jmp	.L49
.L52:
	mov	WORD PTR 50[rdx], r12w
	mov	r13d, 1
.L55:
	lea	rdx, [rax+rax*2]
	mov	rax, r9
	sal	rax, 6
	sub	rax, r9
	add	rax, rax
	lea	rax, [rax+rdx*2]
	lea	rdx, [rcx+rcx*8]
	lea	rax, [rax+rdx*2]
	add	r8, rax
	mov	WORD PTR 52[r8], r10w
	mov	WORD PTR 54[r8], r11w
	jmp	.L54
	.p2align 4,,10
	.p2align 3
.L67:
	mov	ecx, 406
	call	m4aSongNumStart
	jmp	.L61
.L53:
	mov	r10d, r12d
	mov	r13d, 2
	jmp	.L55
.L66:
	mov	WORD PTR 54[rdx], r12w
	mov	r13d, 3
	jmp	.L54
	.seh_endproc
	.section .rdata,"dr"
	.align 16
sTimeResultDigitAnim:
	.ascii "\3\2\1\0\0\377\376\375\374\374\375\376\1\2\3\0\0\0\0\0"
	.align 4
.LC0:
	.byte	9
	.byte	5
	.byte	9
	.byte	9
	.align 8
.LC2:
	.word	0
	.word	1
	.word	0
	.word	256
	.align 4
.LC4:
	.word	0
	.word	1047
	.align 2
.LC5:
	.byte	0
	.byte	-1
	.align 4
.LC9:
	.word	442
	.word	89
	.align 4
.LC11:
	.word	0
	.word	1072
	.align 8
.LC14:
	.word	0
	.word	256
	.word	213
	.word	160
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TransformSprite;	.scl	2;	.type	32;	.endef
	.def	StageResults_AnimateSeparator;	.scl	2;	.type	32;	.endef
	.def	StageResults_AnimateTitle;	.scl	2;	.type	32;	.endef
	.def	UpdateScreenFade;	.scl	2;	.type	32;	.endef
	.def	WriteSaveGame;	.scl	2;	.type	32;	.endef
	.def	TasksDestroyInPriorityRange;	.scl	2;	.type	32;	.endef
	.def	CreateTimeAttackLobbyScreen;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gMusicManagerState, "dr"
	.globl	.refptr.gMusicManagerState
	.linkonce	discard
.refptr.gMusicManagerState:
	.quad	gMusicManagerState
	.section	.rdata$.refptr.gOamMatrixIndex, "dr"
	.globl	.refptr.gOamMatrixIndex
	.linkonce	discard
.refptr.gOamMatrixIndex:
	.quad	gOamMatrixIndex
	.section	.rdata$.refptr.gAnimsGotThroughZoneAndActNames, "dr"
	.globl	.refptr.gAnimsGotThroughZoneAndActNames
	.linkonce	discard
.refptr.gAnimsGotThroughZoneAndActNames:
	.quad	gAnimsGotThroughZoneAndActNames
	.section	.rdata$.refptr.gStageResultsHeadlineTexts, "dr"
	.globl	.refptr.gStageResultsHeadlineTexts
	.linkonce	discard
.refptr.gStageResultsHeadlineTexts:
	.quad	gStageResultsHeadlineTexts
	.section	.rdata$.refptr.gAnimsGotThroughCharacterNames, "dr"
	.globl	.refptr.gAnimsGotThroughCharacterNames
	.linkonce	discard
.refptr.gAnimsGotThroughCharacterNames:
	.quad	gAnimsGotThroughCharacterNames
	.section	.rdata$.refptr.gSelectedCharacter, "dr"
	.globl	.refptr.gSelectedCharacter
	.linkonce	discard
.refptr.gSelectedCharacter:
	.quad	gSelectedCharacter
	.section	.rdata$.refptr.gMillisUnpackTable, "dr"
	.globl	.refptr.gMillisUnpackTable
	.linkonce	discard
.refptr.gMillisUnpackTable:
	.quad	gMillisUnpackTable
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
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
