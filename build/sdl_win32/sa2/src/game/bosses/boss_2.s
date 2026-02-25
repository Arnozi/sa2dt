	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	UpdateBomberTankPalette;	.scl	3;	.type	32;	.endef
	.seh_proc	UpdateBomberTankPalette
UpdateBomberTankPalette:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gObjPalette[rip]
	cmp	BYTE PTR 122[rcx], 0
	je	.L2
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	lea	r8, gUnknown_080D7B70[rip]
	mov	eax, DWORD PTR [rax]
	shr	eax
	and	eax, 1
	sal	rax, 5
	add	rax, r8
	movdqu	xmm0, XMMWORD PTR [rax]
	movups	XMMWORD PTR 256[rdx], xmm0
	movdqu	xmm1, XMMWORD PTR 16[rax]
	movups	XMMWORD PTR 272[rdx], xmm1
	movzx	eax, BYTE PTR 128[rcx]
	test	al, al
	je	.L4
.L7:
	sub	eax, 1
	mov	BYTE PTR 128[rcx], al
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	lea	rcx, gUnknown_080D7B70[rip]
	mov	eax, DWORD PTR [rax]
	shr	eax
	and	eax, 1
	sal	rax, 5
	add	rax, rcx
	movdqu	xmm4, XMMWORD PTR [rax]
	movups	XMMWORD PTR 416[rdx], xmm4
	movdqu	xmm5, XMMWORD PTR 16[rax]
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 2
	movups	XMMWORD PTR 432[rdx], xmm5
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	movdqu	xmm2, XMMWORD PTR gUnknown_080D7B70[rip+32]
	movdqu	xmm3, XMMWORD PTR gUnknown_080D7B70[rip+48]
	movups	XMMWORD PTR 256[rdx], xmm2
	movups	XMMWORD PTR 272[rdx], xmm3
	movzx	eax, BYTE PTR 128[rcx]
	test	al, al
	jne	.L7
.L4:
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	movdqu	xmm0, XMMWORD PTR gUnknown_080D7B70[rip+32]
	movdqu	xmm1, XMMWORD PTR gUnknown_080D7B70[rip+48]
	or	DWORD PTR [rax], 2
	movups	XMMWORD PTR 416[rdx], xmm0
	movups	XMMWORD PTR 432[rdx], xmm1
	ret
	.seh_endproc
	.p2align 4
	.def	TaskDestructor_EggBomberTankMain;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_EggBomberTankMain
TaskDestructor_EggBomberTankMain:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 112[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 144[rbx]
	call	VramFree
	mov	rax, QWORD PTR .refptr.gActiveBossTask[rip]
	mov	QWORD PTR [rax], 0
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	CreateBomberTankBomb;	.scl	3;	.type	32;	.endef
	.seh_proc	CreateBomberTankBomb
CreateBomberTankBomb:
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
	movups	XMMWORD PTR 48[rsp], xmm6
	.seh_savexmm	xmm6, 48
	.seh_endprologue
	mov	r14d, DWORD PTR 160[rsp]
	mov	r13d, DWORD PTR 168[rsp]
	movzx	r14d, r14w
	movd	xmm1, r8d
	mov	rbp, rcx
	mov	r12d, r9d
	mov	edi, edx
	mov	QWORD PTR 32[rsp], 0
	movd	xmm6, edx
	mov	esi, r8d
	mov	edx, 88
	lea	rcx, Task_EggBomberTankBombExplosion[rip]
	xor	r9d, r9d
	mov	r8d, 24832
	punpckldq	xmm6, xmm1
	call	TaskCreate
	movzx	edx, r12w
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	movq	xmm0, QWORD PTR [rax]
	lea	eax, 256[rdx]
	mov	BYTE PTR 12[rbx], r13b
	cdqe
	mov	QWORD PTR 16[rbx], rbp
	movsx	eax, WORD PTR [rcx+rax*2]
	pslld	xmm0, 8
	psubd	xmm6, xmm0
	imul	eax, r14d
	movq	QWORD PTR [rbx], xmm6
	sar	eax, 14
	mov	WORD PTR 8[rbx], ax
	movsx	eax, WORD PTR [rcx+rdx*2]
	imul	eax, r14d
	sar	eax, 13
	mov	WORD PTR 10[rbx], ax
	cmp	r12w, 512
	jbe	.L10
	mov	ecx, 245
	call	m4aSongNumStart
.L11:
	mov	rax, QWORD PTR 112[rbp]
	sar	edi, 8
	sar	esi, 8
	mov	edx, -256
	mov	WORD PTR 62[rbx], di
	mov	QWORD PTR 32[rbx], rax
	xor	eax, eax
	mov	WORD PTR 64[rbx], si
	mov	DWORD PTR 40[rbx], 42401792
	mov	WORD PTR 60[rbx], ax
	mov	DWORD PTR 66[rbx], 1600
	mov	WORD PTR 72[rbx], dx
	mov	BYTE PTR 74[rbx], 16
	mov	BYTE PTR 77[rbx], 0
	mov	DWORD PTR 80[rbx], -1
	mov	DWORD PTR 56[rbx], 8192
	movups	xmm6, XMMWORD PTR 48[rsp]
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
.L10:
	mov	ecx, 244
	call	m4aSongNumStart
	jmp	.L11
	.seh_endproc
	.p2align 4
	.def	Task_EggBomberTankBombDestroy;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_EggBomberTankBombDestroy
Task_EggBomberTankBombDestroy:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.def	UpdatePosition;	.scl	3;	.type	32;	.endef
	.seh_proc	UpdatePosition
UpdatePosition:
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
	mov	r9d, 8
	mov	r8d, 1
	movzx	eax, WORD PTR 10[rcx]
	movsx	edi, WORD PTR 8[rcx]
	movq	xmm1, QWORD PTR [rcx]
	add	eax, 64
	movd	xmm0, edi
	mov	rdi, QWORD PTR .refptr.sub_801EE64[rip]
	mov	WORD PTR 10[rcx], ax
	cwde
	mov	rsi, rcx
	movd	xmm4, eax
	punpckldq	xmm0, xmm4
	paddd	xmm0, xmm1
	movq	QWORD PTR [rcx], xmm0
	movd	edx, xmm0
	pshufd	xmm5, xmm0, 0xe5
	movd	ecx, xmm5
	mov	QWORD PTR 40[rsp], rdi
	sar	edx, 8
	sar	ecx, 8
	mov	QWORD PTR 32[rsp], 0
	call	sub_801E4E4
	test	eax, eax
	jns	.L14
	sub	WORD PTR 8[rsi], 16
	sal	eax, 8
	xor	edx, edx
	add	DWORD PTR 4[rsi], eax
	movzx	eax, WORD PTR 8[rsi]
	test	ax, ax
	cmovs	eax, edx
	movsx	edx, WORD PTR 10[rsi]
	imul	edx, edx, -90
	mov	WORD PTR 8[rsi], ax
	movsx	rax, edx
	sar	edx, 31
	imul	rax, rax, 1374389535
	sar	rax, 37
	sub	eax, edx
	mov	WORD PTR 10[rsi], ax
.L14:
	mov	rbp, rsi
	xor	r12d, r12d
.L15:
	mov	r13, rbp
	mov	rbx, rsi
	xor	r14d, r14d
.L17:
	movzx	eax, WORD PTR 62[rbx]
	movsx	ecx, WORD PTR 60[rbx]
	mov	r9d, 8
	mov	r8d, 1
	movq	xmm1, QWORD PTR 12[r13]
	add	eax, 64
	movd	xmm0, ecx
	mov	WORD PTR 62[rbx], ax
	cwde
	movd	xmm2, eax
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	movq	QWORD PTR 12[r13], xmm0
	pshufd	xmm3, xmm0, 0xe5
	movd	ecx, xmm3
	movd	edx, xmm0
	mov	QWORD PTR 40[rsp], rdi
	sar	ecx, 8
	sar	edx, 8
	mov	QWORD PTR 32[rsp], 0
	sub	ecx, 8
	call	sub_801E4E4
	test	eax, eax
	jns	.L16
	movsx	edx, WORD PTR 62[rbx]
	sal	eax, 8
	add	DWORD PTR 16[r13], eax
	sub	WORD PTR 60[rbx], 32
	imul	edx, edx, -80
	movsx	rax, edx
	sar	edx, 31
	imul	rax, rax, 1374389535
	sar	rax, 37
	sub	eax, edx
	mov	WORD PTR 62[rbx], ax
.L16:
	add	r14d, 1
	add	rbx, 4
	add	r13, 8
	cmp	r14b, 3
	jne	.L17
	add	rsi, 12
	add	rbp, 24
	cmp	r12b, 3
	je	.L13
	mov	r12d, 3
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L13:
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
	.seh_endproc
	.p2align 4
	.def	RenderEscapeBomberTank;	.scl	3;	.type	32;	.endef
	.seh_proc	RenderEscapeBomberTank
RenderEscapeBomberTank:
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
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	movzx	eax, WORD PTR 1[rcx]
	sub	ax, WORD PTR [rdi]
	mov	WORD PTR 174[rcx], ax
	mov	eax, 4
	sub	ax, WORD PTR 4[rdi]
	mov	rbx, rcx
	add	ax, WORD PTR 5[rcx]
	lea	rbp, 136[rcx]
	mov	esi, edx
	mov	WORD PTR 176[rcx], ax
	mov	rcx, rbp
	call	UpdateSpriteAnimation
	mov	rcx, rbp
	lea	rbp, 208[rbx]
	call	DisplaySprite
	movzx	eax, WORD PTR 1[rbx]
	sub	ax, WORD PTR [rdi]
	mov	rcx, rbp
	mov	WORD PTR 246[rbx], ax
	mov	eax, 9
	sub	ax, WORD PTR 4[rdi]
	add	ax, WORD PTR 5[rbx]
	mov	WORD PTR 248[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rbp
	call	DisplaySprite
	test	sil, sil
	jne	.L26
.L21:
	lea	rbp, 12[rbx]
	lea	rsi, 36[rbx]
	mov	r13d, -18
	lea	r12, 272[rbx]
	mov	rcx, r12
	call	UpdateSpriteAnimation
.L22:
	movzx	eax, WORD PTR 1[rbp]
	sub	ax, WORD PTR [rdi]
	mov	rcx, r12
	add	rbp, 8
	mov	WORD PTR 310[rbx], ax
	mov	eax, r13d
	sub	ax, WORD PTR 4[rdi]
	add	ax, WORD PTR -3[rbp]
	mov	WORD PTR 312[rbx], ax
	call	DisplaySprite
	cmp	rsi, rbp
	jne	.L22
	lea	rbp, 336[rbx]
	lea	r13, 60[rbx]
	mov	r12d, -18
	mov	rcx, rbp
	call	UpdateSpriteAnimation
.L23:
	movzx	eax, WORD PTR 1[rsi]
	sub	ax, WORD PTR [rdi]
	mov	rcx, rbp
	add	rsi, 8
	mov	WORD PTR 374[rbx], ax
	mov	eax, r12d
	sub	ax, WORD PTR 4[rdi]
	add	ax, WORD PTR -3[rsi]
	mov	WORD PTR 376[rbx], ax
	call	DisplaySprite
	cmp	r13, rsi
	jne	.L23
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L26:
	movzx	eax, WORD PTR 1[rbx]
	sub	ax, WORD PTR [rdi]
	lea	rsi, 480[rbx]
	sub	eax, 1
	mov	rcx, rsi
	mov	WORD PTR 518[rbx], ax
	mov	eax, -42
	sub	ax, WORD PTR 4[rdi]
	add	ax, WORD PTR 5[rbx]
	mov	WORD PTR 520[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	jmp	.L21
	.seh_endproc
	.p2align 4
	.def	CreateDestructionExplosions;	.scl	3;	.type	32;	.endef
	.seh_proc	CreateDestructionExplosions
CreateDestructionExplosions:
	sub	rsp, 88
	.seh_stackalloc	88
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	rdx, rcx
	test	BYTE PTR [rax], 7
	jne	.L28
	mov	eax, 259
	sub	eax, DWORD PTR 104[rcx]
	movzx	ecx, BYTE PTR 126[rcx]
	shr	eax, 5
	cmp	ecx, eax
	jb	.L34
.L27:
	add	rsp, 88
	ret
	.p2align 4,,10
	.p2align 3
.L28:
	mov	rcx, QWORD PTR .refptr.gPseudoRandom[rip]
	imul	eax, DWORD PTR [rcx], 1663525
	add	eax, 1013904223
	mov	r9d, eax
	mov	DWORD PTR [rcx], eax
	and	r9d, 5
	jne	.L27
	mov	r8d, 259
	movzx	r10d, BYTE PTR 124[rdx]
	sub	r8d, DWORD PTR 104[rdx]
	shr	r8d, 5
	cmp	r10d, r8d
	jnb	.L27
	movzx	r11d, BYTE PTR 125[rdx]
	lea	r8d, 1[r11]
	cmp	r8b, 5
	ja	.L33
	movzx	r9d, r8b
.L32:
	imul	eax, eax, 1663525
	mov	BYTE PTR 125[rdx], r8b
	mov	r8d, DWORD PTR [rdx]
	movsx	r9, r9d
	mov	r10, QWORD PTR .refptr.gCamera[rip]
	add	rdx, 124
	mov	DWORD PTR 40[rsp], 1
	sar	r8d, 8
	add	eax, 1013904223
	sub	r8d, DWORD PTR [r10]
	mov	r11d, eax
	imul	eax, eax, 1663525
	and	r11d, 63
	lea	r8d, -32[r8+r11]
	mov	r11, QWORD PTR .refptr.gTileInfoBossScrews[rip]
	mov	DWORD PTR 56[rsp], r8d
	mov	r8d, DWORD PTR -120[rdx]
	add	eax, 1013904223
	sar	r8d, 8
	sub	r8d, DWORD PTR 4[r10]
	mov	r10d, eax
	imul	eax, eax, 1663525
	and	r10d, 63
	lea	r8d, -32[r8+r10]
	mov	r10d, 1536
	mov	DWORD PTR 60[rsp], r8d
	mov	r8d, 64
	add	eax, 1013904223
	mov	WORD PTR 64[rsp], r8w
	mov	r8, QWORD PTR .refptr.VRAM[rip]
	mov	DWORD PTR [rcx], eax
	and	ax, 1023
	mov	WORD PTR 48[rsp], ax
	lea	rax, [r9+r9*2]
	lea	rax, [r11+rax*4]
	mov	WORD PTR 50[rsp], r10w
	mov	ecx, DWORD PTR [rax]
	sal	ecx, 5
	lea	rcx, 65536[rcx+r8]
	mov	QWORD PTR 32[rsp], rcx
	mov	ecx, DWORD PTR 4[rax]
	mov	eax, DWORD PTR 8[rax]
	mov	WORD PTR 44[rsp], cx
	lea	rcx, 32[rsp]
	mov	WORD PTR 46[rsp], ax
	call	CreateBossParticleWithExplosionUpdate
	nop
	add	rsp, 88
	ret
	.p2align 4,,10
	.p2align 3
.L34:
	mov	r10, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	ecx, DWORD PTR [rdx]
	add	rdx, 126
	mov	DWORD PTR 40[rsp], 1
	mov	r9, QWORD PTR .refptr.gCamera[rip]
	imul	eax, DWORD PTR [r10], 1663525
	sar	ecx, 8
	sub	ecx, DWORD PTR [r9]
	add	eax, 1013904223
	imul	r8d, eax, 34
	imul	eax, eax, 1663525
	and	r8d, 62
	add	eax, 1013904223
	lea	ecx, -52[rcx+r8]
	mov	DWORD PTR [r10], eax
	imul	eax, eax, 52
	mov	DWORD PTR 56[rsp], ecx
	mov	ecx, DWORD PTR -122[rdx]
	and	eax, 60
	sar	ecx, 8
	sub	ecx, DWORD PTR 4[r9]
	lea	eax, -48[rcx+rax]
	lea	rcx, 32[rsp]
	mov	DWORD PTR 60[rsp], eax
	xor	eax, eax
	mov	WORD PTR 64[rsp], ax
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	add	rax, 76160
	mov	QWORD PTR 32[rsp], rax
	mov	rax, QWORD PTR .LC2[rip]
	mov	QWORD PTR 44[rsp], rax
	call	CreateBossParticleWithExplosionUpdate
	nop
	add	rsp, 88
	ret
	.p2align 4,,10
	.p2align 3
.L33:
	xor	r8d, r8d
	jmp	.L32
	.seh_endproc
	.p2align 4
	.def	Task_TransitionToEscapeSequence;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_TransitionToEscapeSequence
Task_TransitionToEscapeSequence:
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
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	mov	rax, QWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rax]
	mov	esi, DWORD PTR [rbx]
	mov	rcx, rbx
	sar	esi, 8
	sub	esi, DWORD PTR [rdi]
	call	UpdatePosition
	mov	edx, 1
	mov	rcx, rbx
	call	RenderEscapeBomberTank
	mov	rcx, rbx
	call	UpdateBomberTankPalette
	mov	rcx, rbx
	call	CreateDestructionExplosions
	mov	rdx, QWORD PTR .refptr.gPseudoRandom[rip]
	imul	eax, DWORD PTR [rdx], 1663525
	add	eax, 1013904223
	mov	DWORD PTR [rdx], eax
	mov	rdx, QWORD PTR .refptr.gStageTime[rip]
	add	eax, DWORD PTR [rdx]
	imul	eax, eax, -252645135
	add	eax, 126322567
	cmp	eax, 252645134
	jbe	.L38
	cmp	esi, 49
	jle	.L39
.L35:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L38:
	mov	ecx, 144
	call	m4aSongNumStart
	cmp	esi, 49
	jg	.L35
.L39:
	mov	edx, -33
	mov	ecx, -4
	sub	dx, WORD PTR 4[rdi]
	sub	cx, WORD PTR [rdi]
	add	dx, WORD PTR 5[rbx]
	add	cx, WORD PTR 1[rbx]
	mov	r8d, 8192
	movsx	edx, dx
	movsx	ecx, cx
	lea	rdi, Task_WaitForBossOffScreen[rip]
	call	CreateEggmobileEscapeSequence
	mov	rax, QWORD PTR 0[rbp]
	mov	QWORD PTR 40[rax], rdi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.def	Task_WaitForBossOffScreen;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_WaitForBossOffScreen
Task_WaitForBossOffScreen:
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
	mov	rax, QWORD PTR [rdi]
	mov	rsi, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	ebx, DWORD PTR [rsi]
	mov	rcx, rsi
	sar	ebx, 8
	sub	ebx, DWORD PTR [rax]
	call	UpdatePosition
	xor	edx, edx
	mov	rcx, rsi
	call	RenderEscapeBomberTank
	mov	rcx, rsi
	call	UpdateBomberTankPalette
	mov	rcx, rsi
	call	CreateDestructionExplosions
	mov	rdx, QWORD PTR .refptr.gPseudoRandom[rip]
	imul	eax, DWORD PTR [rdx], 1663525
	add	eax, 1013904223
	mov	DWORD PTR [rdx], eax
	mov	rdx, QWORD PTR .refptr.gStageTime[rip]
	add	eax, DWORD PTR [rdx]
	imul	eax, eax, -991146299
	add	eax, 165191049
	cmp	eax, 330382098
	jbe	.L43
	cmp	ebx, -200
	jl	.L44
.L40:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L43:
	mov	ecx, 144
	call	m4aSongNumStart
	cmp	ebx, -200
	jge	.L40
.L44:
	mov	r8d, 1
	mov	edx, 140
	mov	ecx, -20
	call	sub_802EF68
	mov	rcx, QWORD PTR [rdi]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.def	UpdateWheelPositions;	.scl	3;	.type	32;	.endef
	.seh_proc	UpdateWheelPositions
UpdateWheelPositions:
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
	mov	rdi, QWORD PTR .refptr.sub_801EC3C[rip]
	xor	ebx, ebx
	xor	r12d, r12d
	lea	rbp, sBodyWheelPositionsX[rip]
	mov	rsi, rcx
.L46:
	mov	ecx, DWORD PTR 16[rsi+rbx*8]
	mov	edx, DWORD PTR [rsi]
	mov	QWORD PTR 32[rsp], rdi
	mov	r9d, 8
	movsx	eax, BYTE PTR 0[rbp+rbx]
	mov	r8d, 1
	sar	ecx, 8
	sar	edx, 8
	add	ecx, 18
	add	edx, eax
	add	r12d, ecx
	call	sub_801F100
	sal	eax, 8
	add	DWORD PTR 16[rsi+rbx*8], eax
	add	rbx, 1
	cmp	rbx, 3
	jne	.L46
	movsx	rax, r12d
	sar	r12d, 31
	imul	rax, rax, 1431655766
	shr	rax, 32
	sub	eax, r12d
	sal	eax, 8
	sub	eax, 4608
	mov	DWORD PTR 4[rsi], eax
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.def	RenderCannon;	.scl	3;	.type	32;	.endef
	.seh_proc	RenderCannon
RenderCannon:
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
	.seh_endprologue
	movzx	esi, BYTE PTR 127[rcx]
	mov	rbx, rcx
	test	sil, sil
	je	.L48
	movzx	esi, BYTE PTR 121[rcx]
	test	sil, sil
	je	.L60
	xor	esi, esi
.L48:
	mov	eax, esi
	add	rsp, 104
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L60:
	movzx	eax, WORD PTR 96[rcx]
	movsx	edi, WORD PTR 92[rcx]
	mov	r9d, 8
	mov	r8d, 1
	movq	xmm1, QWORD PTR 84[rcx]
	add	eax, 82
	movd	xmm0, edi
	and	ax, 1023
	mov	WORD PTR 96[rcx], ax
	movzx	eax, WORD PTR 94[rcx]
	add	eax, 64
	mov	WORD PTR 94[rcx], ax
	cwde
	movd	xmm3, eax
	mov	rax, QWORD PTR .refptr.sub_801EC3C[rip]
	punpckldq	xmm0, xmm3
	paddd	xmm0, xmm1
	movq	QWORD PTR 84[rcx], xmm0
	pshufd	xmm4, xmm0, 0xe5
	movd	ecx, xmm4
	movd	edx, xmm0
	mov	QWORD PTR 32[rsp], rax
	sar	ecx, 8
	sar	edx, 8
	add	ecx, 24
	call	sub_801F100
	test	eax, eax
	js	.L61
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	r13, QWORD PTR .refptr.gCamera[rip]
	test	BYTE PTR [rax], 3
	je	.L62
.L52:
	movzx	ecx, WORD PTR 85[rbx]
	movzx	edx, WORD PTR 89[rbx]
	mov	DWORD PTR 466[rbx], 16777472
	lea	rdi, 400[rbx]
	mov	r8, QWORD PTR .refptr.gOamMatrixIndex[rip]
	sub	cx, WORD PTR 0[r13]
	sub	dx, WORD PTR 4[r13]
	mov	WORD PTR 438[rbx], cx
	movzx	eax, BYTE PTR [r8]
	mov	WORD PTR 440[rbx], dx
	mov	WORD PTR 470[rbx], cx
	mov	rcx, rdi
	lea	r9d, 1[rax]
	or	eax, 8288
	mov	WORD PTR 472[rbx], dx
	mov	DWORD PTR 432[rbx], eax
	movzx	eax, WORD PTR 96[rbx]
	mov	BYTE PTR [r8], r9b
	mov	WORD PTR 464[rbx], ax
	call	UpdateSpriteAnimation
	lea	rdx, 464[rbx]
	mov	rcx, rdi
	call	TransformSprite
	mov	rcx, rdi
	call	DisplaySprite
	mov	eax, esi
	add	rsp, 104
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L62:
	xor	eax, eax
	movq	xmm0, QWORD PTR 84[rbx]
	movq	xmm1, QWORD PTR 0[r13]
	lea	rdx, 126[rbx]
	mov	WORD PTR 80[rsp], ax
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	lea	rcx, 48[rsp]
	psrad	xmm0, 8
	mov	DWORD PTR 56[rsp], 0
	add	rax, 76160
	psubd	xmm0, xmm1
	mov	QWORD PTR 48[rsp], rax
	mov	rax, QWORD PTR .LC4[rip]
	movq	QWORD PTR 72[rsp], xmm0
	mov	QWORD PTR 60[rsp], rax
	call	CreateBossParticleWithExplosionUpdate
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L61:
	mov	ecx, 143
	lea	rsi, sExplositionPositions[rip]
	lea	rbp, 126[rbx]
	call	m4aSongNumStart
	xor	edx, edx
	mov	BYTE PTR 127[rbx], 0
	lea	r12, 10[rsi]
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	WORD PTR 80[rsp], dx
	lea	rdi, 48[rsp]
	mov	DWORD PTR 56[rsp], 0
	mov	r13, QWORD PTR .refptr.gCamera[rip]
	add	rax, 76160
	mov	QWORD PTR 48[rsp], rax
	mov	rax, QWORD PTR .LC2[rip]
	mov	QWORD PTR 60[rsp], rax
	.p2align 4,,10
	.p2align 3
.L51:
	movq	xmm0, QWORD PTR 84[rbx]
	movsx	eax, BYTE PTR [rsi]
	mov	rdx, rbp
	mov	rcx, rdi
	movq	xmm1, QWORD PTR 0[r13]
	add	rsi, 2
	psrad	xmm0, 8
	psubd	xmm0, xmm1
	movd	xmm1, eax
	movsx	eax, BYTE PTR -1[rsi]
	movd	xmm2, eax
	punpckldq	xmm1, xmm2
	paddd	xmm0, xmm1
	movq	QWORD PTR 72[rsp], xmm0
	call	CreateBossParticleWithExplosionUpdate
	cmp	r12, rsi
	jne	.L51
	mov	esi, 1
	jmp	.L52
	.seh_endproc
	.p2align 4
	.def	RenderEggBomberTank;	.scl	3;	.type	32;	.endef
	.seh_proc	RenderEggBomberTank
RenderEggBomberTank:
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
	mov	rsi, QWORD PTR .refptr.gCamera[rip]
	xor	r13d, r13d
	mov	r12d, 4
	movzx	eax, WORD PTR 1[rcx]
	sub	ax, WORD PTR [rsi]
	mov	WORD PTR 174[rcx], ax
	mov	eax, 4
	sub	ax, WORD PTR 4[rsi]
	mov	rbx, rcx
	add	ax, WORD PTR 5[rcx]
	lea	rdi, 136[rcx]
	lea	rbp, 272[rbx]
	mov	WORD PTR 176[rcx], ax
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	lea	rdi, 208[rbx]
	call	DisplaySprite
	movzx	eax, WORD PTR 1[rbx]
	sub	ax, WORD PTR [rsi]
	mov	rcx, rdi
	mov	WORD PTR 246[rbx], ax
	mov	eax, 9
	sub	ax, WORD PTR 4[rsi]
	add	ax, WORD PTR 5[rbx]
	mov	WORD PTR 248[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	lea	rdi, 480[rbx]
	call	DisplaySprite
	movzx	eax, WORD PTR 1[rbx]
	sub	ax, WORD PTR [rsi]
	mov	rcx, rdi
	sub	eax, 1
	mov	WORD PTR 518[rbx], ax
	mov	eax, -42
	sub	ax, WORD PTR 4[rsi]
	add	ax, WORD PTR 5[rbx]
	mov	WORD PTR 520[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	lea	rdi, sBodyWheelPositionsX[rip]
	call	DisplaySprite
	mov	rcx, rbp
	call	UpdateSpriteAnimation
.L64:
	movsx	dx, BYTE PTR [rdi+r13]
	movzx	eax, WORD PTR 1[rbx]
	mov	rcx, rbp
	sub	ax, WORD PTR [rsi]
	add	eax, edx
	mov	WORD PTR 310[rbx], ax
	mov	eax, r12d
	sub	ax, WORD PTR 4[rsi]
	add	ax, WORD PTR 17[rbx+r13*8]
	add	r13, 1
	mov	WORD PTR 312[rbx], ax
	call	DisplaySprite
	cmp	r13, 3
	jne	.L64
	lea	rbp, 336[rbx]
	xor	r14d, r14d
	mov	r13d, -12
	mov	r12d, 4
	mov	rcx, rbp
	call	UpdateSpriteAnimation
.L65:
	movsx	dx, BYTE PTR [rdi+r14]
	mov	eax, r13d
	sub	ax, WORD PTR [rsi]
	mov	rcx, rbp
	add	ax, WORD PTR 1[rbx]
	add	eax, edx
	mov	WORD PTR 374[rbx], ax
	mov	eax, r12d
	sub	ax, WORD PTR 4[rsi]
	add	ax, WORD PTR 17[rbx+r14*8]
	add	r14, 1
	mov	WORD PTR 376[rbx], ax
	call	DisplaySprite
	cmp	r14, 3
	jne	.L65
	movzx	r12d, BYTE PTR 121[rbx]
	test	r12b, r12b
	je	.L63
	mov	eax, DWORD PTR [rbx]
	mov	ecx, DWORD PTR 4[rbx]
	lea	rdi, 400[rbx]
	lea	rbp, 464[rbx]
	movzx	r8d, WORD PTR 96[rbx]
	test	eax, eax
	lea	edx, 255[rax]
	cmovns	edx, eax
	lea	eax, 255[rcx]
	sar	edx, 8
	sub	dx, WORD PTR [rsi]
	sub	edx, 8
	test	ecx, ecx
	cmovns	eax, ecx
	mov	WORD PTR 438[rbx], dx
	sar	eax, 8
	sub	ax, WORD PTR 4[rsi]
	sub	eax, 22
	cmp	BYTE PTR 448[rbx], 1
	mov	WORD PTR 440[rbx], ax
	je	.L73
.L67:
	mov	r9, QWORD PTR .refptr.gOamMatrixIndex[rip]
	mov	WORD PTR 464[rbx], r8w
	mov	WORD PTR 470[rbx], dx
	movzx	ecx, BYTE PTR [r9]
	mov	WORD PTR 472[rbx], ax
	mov	DWORD PTR 466[rbx], 16777472
	lea	r10d, 1[rcx]
	or	ecx, 8288
	mov	DWORD PTR 432[rbx], ecx
	mov	rcx, rdi
	mov	BYTE PTR [r9], r10b
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	mov	rdx, rbp
	test	eax, eax
	sete	r12b
	call	TransformSprite
	mov	rcx, rdi
	call	DisplaySprite
.L63:
	mov	eax, r12d
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
.L73:
	movsx	r9, r8w
	mov	rsi, QWORD PTR .refptr.gSineTable[rip]
	mov	r11d, DWORD PTR 104[rbx]
	lea	ecx, 256[r9]
	movsx	rcx, ecx
	movsx	ecx, WORD PTR [rsi+rcx*2]
	imul	ecx, r11d
	movsx	r10, ecx
	sar	ecx, 31
	imul	r10, r10, 351843721
	sar	r10, 43
	sub	ecx, r10d
	add	edx, ecx
	movsx	ecx, WORD PTR [rsi+r9*2]
	mov	WORD PTR 438[rbx], dx
	imul	ecx, r11d
	movsx	r9, ecx
	sar	ecx, 31
	imul	r9, r9, 351843721
	sar	r9, 43
	sub	ecx, r9d
	add	eax, ecx
	mov	WORD PTR 440[rbx], ax
	jmp	.L67
	.seh_endproc
	.p2align 4
	.def	Task_BombExplosionMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_BombExplosionMain
Task_BombExplosionMain:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, DWORD PTR [rbx]
	mov	r8d, DWORD PTR 4[rbx]
	lea	rsi, 24[rbx]
	test	BYTE PTR 36[rax], -128
	jne	.L75
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	add	edx, DWORD PTR 56[rcx]
	add	r8d, DWORD PTR 60[rcx]
	mov	DWORD PTR [rbx], edx
	mov	DWORD PTR 4[rbx], r8d
.L75:
	mov	rcx, QWORD PTR 16[rbx]
	mov	WORD PTR 62[rbx], dx
	mov	WORD PTR 64[rbx], r8w
	cmp	BYTE PTR 120[rcx], 0
	jne	.L80
.L77:
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	test	eax, eax
	jne	.L79
	mov	rax, QWORD PTR [rdi]
	lea	rdi, Task_EggBomberTankBombDestroy[rip]
	mov	QWORD PTR 40[rax], rdi
.L79:
	mov	rcx, rsi
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L80:
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	xor	r9d, r9d
	add	r8d, DWORD PTR 4[rcx]
	add	edx, DWORD PTR [rcx]
	mov	QWORD PTR 32[rsp], rax
	mov	rcx, rsi
	call	Coll_Player_Enemy
	cmp	eax, 1
	jne	.L77
	mov	rax, QWORD PTR 16[rbx]
	cmp	BYTE PTR 122[rax], 0
	jne	.L77
	mov	edx, 629
	mov	ecx, -255
	mov	BYTE PTR 123[rax], 30
	mov	WORD PTR 498[rax], dx
	mov	WORD PTR 528[rax], cx
	jmp	.L77
	.seh_endproc
	.p2align 4
	.def	HandleCannonCollision;	.scl	3;	.type	32;	.endef
	.seh_proc	HandleCannonCollision
HandleCannonCollision:
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
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	mov	rdi, QWORD PTR .refptr.gPlayer[rip]
	movsx	rdx, WORD PTR 96[rcx]
	mov	r12d, DWORD PTR 12[rdi]
	mov	r14d, DWORD PTR 16[rdi]
	lea	eax, 256[rdx]
	movsx	edx, WORD PTR [r8+rdx*2]
	cdqe
	mov	rbx, rcx
	movsx	eax, WORD PTR [r8+rax*2]
	lea	edx, [rdx+rdx*4]
	mov	r9d, DWORD PTR [rbx]
	lea	ecx, [rax+rax*4]
	sar	ecx, 3
	lea	eax, 255[r9]
	test	r9d, r9d
	cmovns	eax, r9d
	xor	al, al
	lea	esi, -2048[rcx+rax]
	mov	ecx, DWORD PTR 4[rbx]
	test	ecx, ecx
	lea	eax, 255[rcx]
	cmovns	eax, ecx
	sar	edx, 3
	mov	ecx, esi
	xor	al, al
	lea	ebp, -5632[rax+rdx]
	mov	edx, ebp
	call	Player_UpdateHomingPosition
	movzx	r13d, BYTE PTR 128[rbx]
	test	r13b, r13b
	jne	.L82
	mov	edx, esi
	mov	eax, ebp
	sub	edx, r12d
	sub	eax, r14d
	sar	edx, 8
	sar	eax, 8
	imul	eax, eax
	imul	edx, edx
	add	eax, edx
	cmp	eax, 599
	jg	.L83
	mov	rax, QWORD PTR 160[rdi]
	test	BYTE PTR 36[rdi], -128
	jne	.L84
	cmp	DWORD PTR 80[rax], -1
	je	.L84
	movzx	eax, BYTE PTR 121[rbx]
	test	al, al
	je	.L87
	sub	eax, 1
	mov	BYTE PTR 121[rbx], al
.L87:
	test	BYTE PTR 120[rbx], 1
	jne	.L104
	mov	ecx, 235
	call	m4aSongNumStart
.L89:
	cmp	BYTE PTR 121[rbx], 0
	mov	rcx, rdi
	sete	r13b
	call	Coll_Player_Enemy_AdjustSpeed
	mov	BYTE PTR 128[rbx], 30
.L83:
	mov	rax, QWORD PTR .refptr.gCheese[rip]
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L81
	cmp	DWORD PTR 96[rax], -1
	je	.L81
	sub	esi, DWORD PTR [rax]
	sub	ebp, DWORD PTR 4[rax]
	sar	esi, 8
	sar	ebp, 8
	imul	ebp, ebp
	imul	esi, esi
	add	ebp, esi
	cmp	ebp, 899
	jg	.L81
	movzx	eax, BYTE PTR 121[rbx]
	test	al, al
	je	.L90
	sub	eax, 1
	mov	BYTE PTR 121[rbx], al
.L90:
	test	BYTE PTR 120[rbx], 1
	je	.L91
	mov	ecx, 143
	call	m4aSongNumStart
.L92:
	cmp	BYTE PTR 121[rbx], 0
	mov	eax, 1
	cmove	r13d, eax
	mov	rax, QWORD PTR .refptr.gCheeseTarget[rip]
	mov	rax, QWORD PTR 8[rax]
	mov	BYTE PTR 61[rax], 0
	mov	BYTE PTR 128[rbx], 30
.L81:
	mov	eax, r13d
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
.L104:
	mov	ecx, 143
	call	m4aSongNumStart
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L84:
	mov	rcx, rdi
	call	Coll_DamagePlayer
.L82:
	xor	r13d, r13d
	jmp	.L81
	.p2align 4,,10
	.p2align 3
.L91:
	mov	ecx, 235
	call	m4aSongNumStart
	jmp	.L92
	.seh_endproc
	.p2align 4
	.def	HandleCannonBombTrigger;	.scl	3;	.type	32;	.endef
	.seh_proc	HandleCannonBombTrigger
HandleCannonBombTrigger:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rbx, rcx
	call	HandleCannonCollision
	test	al, al
	jne	.L110
	mov	eax, DWORD PTR 104[rbx]
	test	eax, eax
	je	.L111
	sub	eax, 1
	mov	DWORD PTR 104[rbx], eax
.L105:
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L111:
	mov	eax, DWORD PTR [rbx]
	movsx	r8, WORD PTR 96[rbx]
	mov	DWORD PTR 104[rbx], 12
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	test	eax, eax
	lea	ecx, 255[rax]
	cmovns	ecx, eax
	mov	eax, DWORD PTR 4[rbx]
	xor	cl, cl
	lea	edx, 255[rax]
	test	eax, eax
	cmovns	edx, eax
	lea	eax, 256[r8]
	cdqe
	movsx	eax, WORD PTR [r9+rax*2]
	xor	dl, dl
	imul	eax, eax, 50
	sar	eax, 6
	lea	esi, -2048[rcx+rax]
	movsx	eax, WORD PTR [r9+r8*2]
	lea	rcx, Task_BomberTankCannonReload[rip]
	imul	eax, eax, 50
	sar	eax, 6
	lea	edi, -5632[rdx+rax]
	mov	eax, 646
	mov	edx, -255
	mov	WORD PTR 418[rbx], ax
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	WORD PTR 448[rbx], dx
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rax], rcx
	mov	ecx, 241
	call	m4aSongNumStart
	mov	rdx, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	r8d, edi
	mov	rcx, rbx
	imul	eax, DWORD PTR [rdx], 1663525
	add	eax, 1013904223
	mov	DWORD PTR [rdx], eax
	and	eax, 15
	lea	rdx, sExplosionTimes[rip]
	movzx	eax, BYTE PTR [rdx+rax]
	mov	DWORD PTR 32[rsp], 64
	mov	edx, esi
	mov	DWORD PTR 40[rsp], eax
	movzx	r9d, WORD PTR 96[rbx]
	call	CreateBomberTankBomb
	nop
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L110:
	movq	xmm0, QWORD PTR [rbx]
	pxor	xmm2, xmm2
	movsx	rdx, WORD PTR 96[rbx]
	movq	xmm1, QWORD PTR .LC8[rip]
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	pcmpgtd	xmm2, xmm0
	lea	eax, 256[rdx]
	cdqe
	movsx	r8d, WORD PTR [rcx+rax*2]
	movsx	ecx, WORD PTR [rcx+rdx*2]
	pand	xmm2, xmm1
	paddd	xmm0, xmm2
	mov	eax, r8d
	mov	edx, ecx
	movq	xmm2, QWORD PTR .LC9[rip]
	sal	eax, 4
	sal	edx, 4
	sub	eax, r8d
	sub	edx, ecx
	mov	r8d, -254
	mov	ecx, 646
	psrad	xmm0, 8
	sar	edx, 5
	mov	WORD PTR 418[rbx], cx
	mov	rcx, rbx
	paddd	xmm0, xmm2
	sar	eax, 5
	movd	xmm3, edx
	mov	WORD PTR 448[rbx], r8w
	movd	xmm1, eax
	punpckldq	xmm1, xmm3
	pslld	xmm0, 8
	paddd	xmm0, xmm1
	movq	QWORD PTR 84[rbx], xmm0
	call	RenderCannon
	movzx	eax, WORD PTR .LC6[rip]
	mov	r9d, 641
	mov	r10d, 642
	mov	WORD PTR 154[rbx], r9w
	mov	WORD PTR 184[rbx], ax
	mov	WORD PTR 256[rbx], ax
	mov	rax, QWORD PTR .refptr.gLevelScore[rip]
	mov	WORD PTR 226[rbx], r10w
	mov	ecx, DWORD PTR [rax]
	lea	edx, 500[rcx]
	mov	DWORD PTR [rax], edx
	movsx	rax, edx
	sar	edx, 31
	imul	rax, rax, 351843721
	sar	rax, 44
	sub	eax, edx
	movsx	rdx, ecx
	sar	ecx, 31
	imul	rdx, rdx, 351843721
	sar	rdx, 44
	sub	edx, ecx
	cmp	eax, edx
	je	.L107
	mov	rcx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rcx], 0
	je	.L112
.L107:
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rax], 28
	je	.L105
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 17
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L112:
	mov	rcx, QWORD PTR .refptr.gNumLives[rip]
	sub	eax, edx
	movzx	edx, BYTE PTR [rcx]
	add	eax, edx
	mov	edx, 255
	cmp	ax, dx
	cmova	eax, edx
	mov	BYTE PTR [rcx], al
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 3[rax], 16
	jmp	.L107
	.seh_endproc
	.p2align 4
	.def	HandleCannonlessBombTrigger;	.scl	3;	.type	32;	.endef
	.seh_proc	HandleCannonlessBombTrigger
HandleCannonlessBombTrigger:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rbx, rcx
	call	RenderCannon
	mov	edx, DWORD PTR 104[rbx]
	mov	eax, 150
	cmp	edx, eax
	cmovbe	eax, edx
	sub	eax, 1
	test	edx, edx
	je	.L116
	mov	DWORD PTR 104[rbx], eax
	add	rsp, 48
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L116:
	mov	rdx, QWORD PTR .refptr.gPseudoRandom[rip]
	lea	r8, sExplosionTimes[rip]
	mov	ecx, DWORD PTR 4[rbx]
	mov	r9d, 512
	imul	eax, DWORD PTR [rdx], 1663525
	add	eax, 1013904223
	mov	DWORD PTR [rdx], eax
	and	eax, 15
	mov	edx, DWORD PTR [rbx]
	movzx	eax, BYTE PTR [r8+rax]
	mov	DWORD PTR 32[rsp], 8
	lea	r8d, -5632[rcx]
	mov	rcx, rbx
	sub	edx, 2048
	mov	DWORD PTR 40[rsp], eax
	call	CreateBomberTankBomb
	mov	eax, 113
	mov	DWORD PTR 104[rbx], eax
	add	rsp, 48
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	UpdatePilotAnimation;	.scl	3;	.type	32;	.endef
	.seh_proc	UpdatePilotAnimation
UpdatePilotAnimation:
	.seh_endprologue
	movzx	eax, BYTE PTR 122[rcx]
	test	al, al
	je	.L118
	sub	eax, 1
	mov	BYTE PTR 123[rcx], 0
	mov	BYTE PTR 122[rcx], al
	test	al, al
	jne	.L117
	cmp	BYTE PTR 120[rcx], 0
	mov	edx, 3
	mov	r8d, 648
	mov	BYTE PTR 529[rcx], -1
	cmove	eax, edx
	mov	WORD PTR 498[rcx], r8w
	mov	BYTE PTR 528[rcx], al
.L117:
	ret
	.p2align 4,,10
	.p2align 3
.L118:
	movzx	eax, BYTE PTR 123[rcx]
	test	al, al
	je	.L117
	sub	eax, 1
	mov	BYTE PTR 123[rcx], al
	test	al, al
	jne	.L117
	mov	eax, 648
	mov	edx, -256
	mov	WORD PTR 498[rcx], ax
	mov	WORD PTR 528[rcx], dx
	ret
	.seh_endproc
	.p2align 4
	.def	Task_StartBossDestruction;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_StartBossDestruction
Task_StartBossDestruction:
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
	movsx	eax, WORD PTR 8[rbx]
	add	DWORD PTR [rbx], eax
	mov	rcx, rbx
	call	UpdateWheelPositions
	mov	rcx, rbx
	call	UpdatePilotAnimation
	call	RenderEggBomberTank
	mov	rcx, rbx
	call	UpdateBomberTankPalette
	mov	rcx, rbx
	call	CreateDestructionExplosions
	mov	rdx, QWORD PTR .refptr.gPseudoRandom[rip]
	imul	eax, DWORD PTR [rdx], 1663525
	add	eax, 1013904223
	mov	DWORD PTR [rdx], eax
	mov	rdx, QWORD PTR .refptr.gStageTime[rip]
	add	eax, DWORD PTR [rdx]
	imul	eax, eax, 1022611261
	add	eax, 102261126
	cmp	eax, 204522252
	jbe	.L131
	sub	DWORD PTR 104[rbx], 1
	je	.L132
.L126:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L131:
	mov	ecx, 144
	call	m4aSongNumStart
	sub	DWORD PTR 104[rbx], 1
	jne	.L126
.L132:
	mov	eax, -768
	movdqu	xmm2, XMMWORD PTR 16[rbx]
	mov	r9d, DWORD PTR [rbx]
	mov	DWORD PTR 68[rbx], -83885312
	mov	WORD PTR 10[rbx], ax
	movdqu	xmm0, XMMWORD PTR [rbx]
	lea	rcx, gUnknown_080D7B4E[rip]
	lea	r8, sBodyWheelPositionsX[rip]
	movd	xmm3, DWORD PTR 32[rbx]
	mov	rax, QWORD PTR .LC13[rip]
	movq	xmm1, QWORD PTR .LC14[rip]
	shufps	xmm0, xmm2, 128
	pshufd	xmm0, xmm0, 216
	paddd	xmm0, XMMWORD PTR .LC12[rip]
	mov	QWORD PTR 60[rbx], rax
	xor	eax, eax
	movups	XMMWORD PTR 12[rbx], xmm0
	movd	xmm0, DWORD PTR [rbx]
	punpckldq	xmm0, xmm3
	paddd	xmm0, xmm1
	movq	QWORD PTR 28[rbx], xmm0
.L129:
	movsx	edx, BYTE PTR [r8+rax]
	add	rcx, 4
	sub	edx, 12
	sal	edx, 8
	add	edx, r9d
	mov	DWORD PTR 36[rbx+rax*8], edx
	mov	edx, DWORD PTR 16[rbx+rax*8]
	add	edx, 1024
	mov	DWORD PTR 40[rbx+rax*8], edx
	mov	edx, DWORD PTR 8[rcx]
	mov	DWORD PTR 72[rbx+rax*4], edx
	add	rax, 1
	cmp	rax, 3
	jne	.L129
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_TransitionToEscapeSequence[rip]
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	CreateBombExplosion.constprop.0.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	CreateBombExplosion.constprop.0.isra.0
CreateBombExplosion.constprop.0.isra.0:
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
	movups	XMMWORD PTR 48[rsp], xmm6
	.seh_savexmm	xmm6, 48
	.seh_endprologue
	movd	xmm1, r8d
	mov	rbp, rcx
	mov	esi, edx
	mov	ebx, r8d
	mov	QWORD PTR 32[rsp], 0
	mov	rdi, r9
	movd	xmm6, edx
	xor	r9d, r9d
	mov	r8d, 25088
	mov	edx, 88
	lea	rcx, Task_BombExplosionMain[rip]
	punpckldq	xmm6, xmm1
	call	TaskCreate
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	xor	ecx, ecx
	mov	r8d, -256
	mov	rax, QWORD PTR 24[rax]
	movq	xmm0, QWORD PTR [rdx]
	movzx	edx, WORD PTR 144[rsp]
	mov	DWORD PTR 8[rax], 0
	psubd	xmm6, xmm0
	mov	WORD PTR 42[rax], dx
	xor	edx, edx
	mov	QWORD PTR 16[rax], rbp
	mov	WORD PTR 62[rax], si
	mov	WORD PTR 64[rax], bx
	mov	QWORD PTR 32[rax], rdi
	mov	WORD PTR 40[rax], dx
	mov	WORD PTR 60[rax], cx
	mov	DWORD PTR 66[rax], 1600
	mov	WORD PTR 72[rax], r8w
	mov	BYTE PTR 74[rax], 16
	mov	BYTE PTR 77[rax], 0
	mov	DWORD PTR 80[rax], -1
	mov	DWORD PTR 56[rax], 8192
	movq	QWORD PTR [rax], xmm6
	movups	xmm6, XMMWORD PTR 48[rsp]
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.def	Task_EggBomberTankBombExplosion;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_EggBomberTankBombExplosion
Task_EggBomberTankBombExplosion:
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
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, WORD PTR 10[rbx]
	movsx	edi, WORD PTR 8[rbx]
	lea	rbp, 24[rbx]
	movq	xmm3, QWORD PTR [rbx]
	add	eax, 32
	movd	xmm2, edi
	mov	rdi, QWORD PTR .refptr.gPlayer[rip]
	mov	WORD PTR 10[rbx], ax
	cwde
	movd	xmm4, eax
	punpckldq	xmm2, xmm4
	test	BYTE PTR 36[rdi], -128
	je	.L135
	paddd	xmm2, xmm3
	mov	r12, QWORD PTR .refptr.gCamera[rip]
	movdqu	xmm0, xmm2
.L136:
	movq	QWORD PTR [rbx], xmm0
	pshufd	xmm5, xmm0, 0xe5
	movd	eax, xmm5
	mov	ecx, DWORD PTR 4[r12]
	sar	eax, 8
	movd	edx, xmm0
	mov	r9d, 8
	mov	r8d, 1
	lea	ecx, 12[rax+rcx]
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	sar	edx, 8
	add	edx, DWORD PTR [r12]
	mov	QWORD PTR 40[rsp], rax
	lea	rax, 63[rsp]
	mov	QWORD PTR 32[rsp], rax
	call	sub_801E4E4
	mov	r13d, eax
	test	ax, ax
	js	.L137
	mov	r8d, DWORD PTR 4[rbx]
.L138:
	mov	edx, DWORD PTR [rbx]
	mov	rax, QWORD PTR 16[rbx]
	sar	r8d, 8
	mov	WORD PTR 64[rbx], r8w
	sar	edx, 8
	mov	WORD PTR 62[rbx], dx
	cmp	BYTE PTR 120[rax], 0
	jne	.L149
.L139:
	sub	BYTE PTR 12[rbx], 1
	je	.L141
	mov	rax, QWORD PTR 16[rbx]
	cmp	BYTE PTR 120[rax], 0
	jne	.L142
.L141:
	cmp	r13w, 15
	jg	.L150
.L143:
	mov	ecx, 243
	movsx	r13d, r13w
	call	m4aSongNumStart
	mov	eax, DWORD PTR 4[rbx]
	mov	edx, DWORD PTR [rbx]
	mov	r9, QWORD PTR 32[rbx]
	mov	rcx, QWORD PTR 16[rbx]
	sar	eax, 8
	sar	edx, 8
	add	edx, DWORD PTR [r12]
	lea	r8d, 15[rax+r13]
	mov	eax, 639
	add	r8d, DWORD PTR 4[r12]
	add	r9, 1856
	mov	WORD PTR 32[rsp], ax
	call	CreateBombExplosion.constprop.0.isra.0
.L144:
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_EggBomberTankBombDestroy[rip]
	mov	QWORD PTR 40[rax], rsi
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
.L135:
	mov	r12, QWORD PTR .refptr.gCamera[rip]
	movq	xmm1, QWORD PTR 56[r12]
	pslld	xmm1, 8
	movdqu	xmm0, xmm1
	movdqu	xmm1, xmm2
	psubd	xmm1, xmm0
	paddd	xmm0, xmm2
	movss	xmm0, xmm1
	movdqu	xmm1, xmm3
	psubd	xmm1, xmm0
	paddd	xmm0, xmm3
	movss	xmm0, xmm1
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L150:
	mov	ecx, 242
	call	m4aSongNumStart
	mov	r8d, DWORD PTR 4[rbx]
	mov	edx, DWORD PTR [rbx]
	mov	r9d, 638
	mov	rax, QWORD PTR 32[rbx]
	mov	rcx, QWORD PTR 16[rbx]
	sar	r8d, 8
	sar	edx, 8
	add	r8d, DWORD PTR 4[r12]
	add	edx, DWORD PTR [r12]
	mov	WORD PTR 32[rsp], r9w
	lea	r9, 288[rax]
	call	CreateBombExplosion.constprop.0.isra.0
	jmp	.L144
	.p2align 4,,10
	.p2align 3
.L137:
	movsx	r8d, ax
	movsx	eax, WORD PTR 10[rbx]
	sal	r8d, 8
	add	r8d, DWORD PTR 4[rbx]
	neg	eax
	mov	DWORD PTR 4[rbx], r8d
	sal	eax, 3
	movsx	rdx, eax
	sar	eax, 31
	imul	rdx, rdx, 1717986919
	sar	rdx, 34
	sub	edx, eax
	mov	WORD PTR 10[rbx], dx
	jmp	.L138
	.p2align 4,,10
	.p2align 3
.L149:
	add	r8d, DWORD PTR 4[r12]
	add	edx, DWORD PTR [r12]
	xor	r9d, r9d
	mov	rcx, rbp
	mov	QWORD PTR 32[rsp], rdi
	call	Coll_Player_Enemy
	cmp	eax, 1
	jne	.L139
	mov	rax, QWORD PTR 16[rbx]
	cmp	BYTE PTR 122[rax], 0
	jne	.L140
	mov	r10d, 629
	mov	r11d, -255
	mov	BYTE PTR 123[rax], 30
	mov	WORD PTR 498[rax], r10w
	mov	WORD PTR 528[rax], r11w
.L140:
	mov	BYTE PTR 12[rbx], 0
	cmp	r13w, 15
	jle	.L143
	jmp	.L150
	.p2align 4,,10
	.p2align 3
.L142:
	mov	rcx, rbp
	call	UpdateSpriteAnimation
	mov	rcx, rbp
	call	DisplaySprite
	nop
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
	.def	Task_EggBomberTankIntro;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_EggBomberTankIntro
Task_EggBomberTankIntro:
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
	movsx	eax, WORD PTR 8[rbx]
	mov	rcx, rbx
	add	eax, 1024
	add	DWORD PTR [rbx], eax
	call	UpdateWheelPositions
	mov	eax, DWORD PTR 100[rbx]
	cmp	BYTE PTR 121[rbx], 0
	lea	edx, 1[rax]
	mov	DWORD PTR 100[rbx], edx
	je	.L152
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	lea	eax, [rax+rax*4]
	and	eax, 1023
	movsx	eax, WORD PTR [rdx+rax*2]
	mov	edx, eax
	imul	eax, eax, 10923
	sar	dx, 15
	sar	eax, 21
	sub	eax, edx
	add	ax, 512
	mov	WORD PTR 96[rbx], ax
.L152:
	mov	rcx, rbx
	call	UpdatePilotAnimation
	call	RenderEggBomberTank
	mov	eax, DWORD PTR 132[rbx]
	add	eax, 1
	cmp	eax, 89
	ja	.L153
	mov	DWORD PTR 132[rbx], eax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L153:
	mov	DWORD PTR 132[rbx], 0
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_BomberTankMain[rip]
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEggBomberTank
	.def	CreateEggBomberTank;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEggBomberTank
CreateEggBomberTank:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	or	DWORD PTR 36[rax], 2097152
	call	sub_8039ED4
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	xor	r9d, r9d
	mov	r8d, 16384
	lea	rcx, Task_EggBomberTankIntro[rip]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	DWORD PTR [rax], edx
	lea	rax, TaskDestructor_EggBomberTankMain[rip]
	mov	edx, 544
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	rdx, QWORD PTR .refptr.gDifficultyLevel[rip]
	mov	rbx, QWORD PTR 24[rax]
	mov	rdi, rax
	movzx	eax, WORD PTR .LC18[rip]
	cmp	BYTE PTR [rdx], 0
	je	.L156
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	movzx	eax, WORD PTR .LC17[rip]
	cmp	BYTE PTR [rdx], 2
	je	.L161
.L156:
	mov	rcx, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	WORD PTR 120[rbx], ax
	mov	edx, 122880
	cmp	BYTE PTR [rcx], 28
	jne	.L157
	shr	ah
	mov	edx, 1613824
	shr	al
	mov	WORD PTR 120[rbx], ax
.L157:
	xor	eax, eax
	mov	DWORD PTR [rbx], edx
	mov	edx, 256
	movdqu	xmm0, XMMWORD PTR .LC21[rip]
	mov	WORD PTR 96[rbx], ax
	mov	ecx, 239
	movabs	rax, 644245094400
	mov	QWORD PTR 100[rbx], rax
	movabs	rax, 5497558182400
	mov	QWORD PTR 4[rbx], rax
	mov	rax, QWORD PTR .LC22[rip]
	mov	WORD PTR 126[rbx], dx
	mov	QWORD PTR 84[rbx], 0
	mov	DWORD PTR 92[rbx], -67108736
	mov	DWORD PTR 122[rbx], 0
	mov	BYTE PTR 128[rbx], 0
	mov	DWORD PTR 132[rbx], 0
	mov	QWORD PTR 28[rbx], rax
	movups	XMMWORD PTR 12[rbx], xmm0
	call	VramMalloc
	mov	ecx, 99
	mov	DWORD PTR 174[rbx], 0
	mov	QWORD PTR 112[rbx], rax
	mov	rsi, rax
	call	VramMalloc
	xor	ecx, ecx
	xor	r8d, r8d
	xor	r9d, r9d
	mov	QWORD PTR 144[rbx], rax
	xor	r10d, r10d
	xor	r11d, r11d
	lea	rdx, 2880[rsi]
	movzx	eax, WORD PTR .LC1[rip]
	mov	QWORD PTR 216[rbx], rdx
	lea	rdx, 4320[rsi]
	mov	WORD PTR 172[rbx], cx
	movabs	rcx, 450359962737049600
	mov	QWORD PTR 280[rbx], rdx
	lea	rdx, 4832[rsi]
	mov	WORD PTR 184[rbx], ax
	mov	WORD PTR 256[rbx], ax
	mov	WORD PTR 252[rbx], r8w
	mov	WORD PTR 320[rbx], ax
	mov	QWORD PTR 344[rbx], rdx
	lea	rdx, 5344[rsi]
	add	rsi, 7392
	mov	WORD PTR 384[rbx], ax
	mov	DWORD PTR 152[rbx], 42008576
	mov	DWORD PTR 178[rbx], 1472
	mov	BYTE PTR 186[rbx], 16
	mov	BYTE PTR 189[rbx], 0
	mov	DWORD PTR 192[rbx], -1
	mov	DWORD PTR 168[rbx], 8192
	mov	DWORD PTR 224[rbx], 42074112
	mov	BYTE PTR 258[rbx], 16
	mov	BYTE PTR 261[rbx], 0
	mov	DWORD PTR 264[rbx], -1
	mov	QWORD PTR 240[rbx], 8192
	mov	DWORD PTR 248[rbx], 109051904
	mov	DWORD PTR 288[rbx], 42205184
	mov	BYTE PTR 322[rbx], 16
	mov	BYTE PTR 325[rbx], 0
	mov	DWORD PTR 328[rbx], -1
	mov	QWORD PTR 304[rbx], 8192
	mov	DWORD PTR 312[rbx], 92274688
	mov	WORD PTR 316[rbx], r9w
	mov	DWORD PTR 352[rbx], 42270720
	mov	BYTE PTR 386[rbx], 16
	mov	BYTE PTR 389[rbx], 0
	mov	QWORD PTR 436[rbx], rcx
	mov	rcx, QWORD PTR .refptr.gOamMatrixIndex[rip]
	mov	QWORD PTR 408[rbx], rdx
	movzx	edx, BYTE PTR [rcx]
	mov	WORD PTR 448[rbx], ax
	mov	WORD PTR 528[rbx], ax
	mov	rax, QWORD PTR .refptr.gActiveBossTask[rip]
	lea	r8d, 1[rdx]
	mov	QWORD PTR 488[rbx], rsi
	xor	esi, esi
	or	edx, 8288
	mov	DWORD PTR 392[rbx], -1
	mov	QWORD PTR 368[rbx], 8192
	mov	DWORD PTR 376[rbx], 113246208
	mov	WORD PTR 380[rbx], r10w
	mov	DWORD PTR 416[rbx], 42336256
	mov	WORD PTR 444[rbx], r11w
	mov	BYTE PTR 450[rbx], 16
	mov	BYTE PTR 453[rbx], 0
	mov	DWORD PTR 456[rbx], -1
	mov	BYTE PTR [rcx], r8b
	mov	DWORD PTR 432[rbx], edx
	mov	DWORD PTR 496[rbx], 42467328
	mov	BYTE PTR 530[rbx], 16
	mov	BYTE PTR 533[rbx], 0
	mov	DWORD PTR 536[rbx], -1
	mov	QWORD PTR 512[rbx], 8192
	mov	DWORD PTR 520[rbx], 109051904
	mov	WORD PTR 524[rbx], si
	mov	QWORD PTR [rax], rdi
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L161:
	movzx	eax, WORD PTR .LC18[rip]
	jmp	.L156
	.seh_endproc
	.p2align 4
	.globl	HandleBossHit
	.def	HandleBossHit;	.scl	2;	.type	32;	.endef
	.seh_proc	HandleBossHit
HandleBossHit:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	cmp	BYTE PTR 122[rcx], 0
	mov	rbx, rcx
	jne	.L163
	movzx	eax, BYTE PTR 120[rcx]
	mov	edx, 1
	test	al, al
	je	.L162
	sub	eax, 1
	mov	BYTE PTR 120[rcx], al
	test	al, 1
	jne	.L171
	mov	ecx, 235
	call	m4aSongNumStart
.L166:
	mov	eax, 648
	cmp	BYTE PTR 120[rbx], 0
	mov	BYTE PTR 122[rbx], 30
	mov	WORD PTR 498[rbx], ax
	jne	.L167
	mov	rax, QWORD PTR .refptr.gLevelScore[rip]
	mov	BYTE PTR 528[rbx], 3
	mov	ecx, DWORD PTR [rax]
	lea	edx, 1000[rcx]
	mov	DWORD PTR [rax], edx
	movsx	rax, edx
	sar	edx, 31
	imul	rax, rax, 351843721
	sar	rax, 44
	sub	eax, edx
	movsx	rdx, ecx
	sar	ecx, 31
	imul	rdx, rdx, 351843721
	sar	rdx, 44
	sub	edx, ecx
	cmp	eax, edx
	je	.L168
	mov	rcx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rcx], 0
	jne	.L168
	mov	rcx, QWORD PTR .refptr.gNumLives[rip]
	sub	eax, edx
	movzx	edx, BYTE PTR [rcx]
	add	eax, edx
	mov	edx, 255
	cmp	ax, dx
	cmova	eax, edx
	mov	BYTE PTR [rcx], al
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 3[rax], 16
	.p2align 4,,10
	.p2align 3
.L168:
	mov	BYTE PTR 529[rbx], -1
.L163:
	xor	edx, edx
.L162:
	mov	eax, edx
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L171:
	mov	ecx, 143
	call	m4aSongNumStart
	jmp	.L166
	.p2align 4,,10
	.p2align 3
.L167:
	mov	BYTE PTR 528[rbx], 2
	jmp	.L168
	.seh_endproc
	.p2align 4
	.def	CheckBossDestruction.constprop.0;	.scl	3;	.type	32;	.endef
	.seh_proc	CheckBossDestruction.constprop.0
CheckBossDestruction.constprop.0:
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
	mov	esi, 1
	cmp	BYTE PTR 120[rcx], 0
	mov	rbx, rcx
	jne	.L185
.L172:
	mov	eax, esi
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L185:
	mov	rdi, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, DWORD PTR [rcx]
	lea	rbp, 136[rcx]
	mov	r9d, 1
	mov	QWORD PTR 32[rsp], rdi
	mov	r8d, DWORD PTR 4[rcx]
	sar	edx, 8
	mov	rcx, rbp
	sar	r8d, 8
	call	Coll_Player_Enemy
	mov	edx, DWORD PTR [rbx]
	mov	QWORD PTR 32[rsp], rdi
	xor	r9d, r9d
	mov	r8d, DWORD PTR 4[rbx]
	mov	rcx, rbp
	sar	edx, 8
	sar	r8d, 8
	call	Coll_Player_Boss_Attack
	cmp	eax, 1
	jne	.L174
	cmp	BYTE PTR 121[rbx], 0
	je	.L175
.L184:
	cmp	BYTE PTR 122[rbx], 0
	mov	BYTE PTR 123[rbx], 30
	jne	.L177
	mov	eax, 648
	mov	edx, -255
	mov	WORD PTR 498[rbx], ax
	mov	WORD PTR 528[rbx], dx
.L177:
	mov	rcx, rdi
	call	Coll_DamagePlayer
.L178:
	xor	esi, esi
.L179:
	mov	edx, DWORD PTR 4[rbx]
	mov	ecx, DWORD PTR [rbx]
	call	Player_UpdateHomingPosition
	cmp	BYTE PTR 122[rbx], 0
	jne	.L172
	mov	edx, DWORD PTR [rbx]
	mov	QWORD PTR 32[rsp], rdi
	xor	r9d, r9d
	mov	rcx, rbp
	mov	r8d, DWORD PTR 4[rbx]
	sar	edx, 8
	sar	r8d, 8
	call	Coll_Cheese_Enemy_Attack
	cmp	eax, 1
	jne	.L172
	cmp	BYTE PTR 121[rbx], 0
	jne	.L172
	mov	rcx, rbx
	call	HandleBossHit
	mov	esi, eax
	jmp	.L172
	.p2align 4,,10
	.p2align 3
.L174:
	mov	edx, DWORD PTR [rbx]
	mov	QWORD PTR 32[rsp], rdi
	xor	r9d, r9d
	mov	rcx, rbp
	mov	r8d, DWORD PTR 4[rbx]
	sar	edx, 8
	sar	r8d, 8
	call	Coll_Player_Enemy
	cmp	eax, 1
	jne	.L178
	jmp	.L184
	.p2align 4,,10
	.p2align 3
.L175:
	mov	rcx, rbx
	call	HandleBossHit
	mov	esi, eax
	jmp	.L179
	.seh_endproc
	.p2align 4
	.def	Task_BomberTankCannonReload;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_BomberTankCannonReload
Task_BomberTankCannonReload:
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
	movsx	eax, WORD PTR 8[rbx]
	add	DWORD PTR [rbx], eax
	mov	rcx, rbx
	call	UpdateWheelPositions
	mov	eax, DWORD PTR 104[rbx]
	test	eax, eax
	je	.L187
	sub	eax, 1
	mov	DWORD PTR 104[rbx], eax
.L187:
	mov	rcx, rbx
	call	HandleCannonCollision
	test	al, al
	je	.L189
	mov	eax, DWORD PTR 4[rbx]
	movsx	r8, WORD PTR 96[rbx]
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	test	eax, eax
	lea	edx, 255[rax]
	cmovns	edx, eax
	mov	eax, DWORD PTR [rbx]
	xor	dl, dl
	lea	ecx, 255[rax]
	test	eax, eax
	cmovns	ecx, eax
	lea	eax, 256[r8]
	cdqe
	movsx	r10d, WORD PTR [r9+rax*2]
	xor	cl, cl
	mov	eax, r10d
	sal	eax, 4
	sub	eax, r10d
	mov	r10d, 642
	sar	eax, 5
	mov	WORD PTR 226[rbx], r10w
	lea	eax, -2048[rcx+rax]
	movsx	ecx, WORD PTR [r9+r8*2]
	mov	r8d, -254
	mov	r9d, 641
	mov	DWORD PTR 84[rbx], eax
	mov	eax, ecx
	mov	WORD PTR 448[rbx], r8w
	sal	eax, 4
	mov	WORD PTR 154[rbx], r9w
	sub	eax, ecx
	mov	ecx, 646
	sar	eax, 5
	mov	WORD PTR 418[rbx], cx
	lea	eax, -5632[rdx+rax]
	mov	DWORD PTR 88[rbx], eax
	movzx	eax, WORD PTR .LC6[rip]
	mov	WORD PTR 184[rbx], ax
	mov	WORD PTR 256[rbx], ax
	mov	rax, QWORD PTR .refptr.gLevelScore[rip]
	mov	ecx, DWORD PTR [rax]
	lea	edx, 500[rcx]
	mov	DWORD PTR [rax], edx
	movsx	rax, edx
	sar	edx, 31
	imul	rax, rax, 351843721
	sar	rax, 44
	sub	eax, edx
	movsx	rdx, ecx
	sar	ecx, 31
	imul	rdx, rdx, 351843721
	sar	rdx, 44
	sub	edx, ecx
	cmp	eax, edx
	je	.L190
	mov	rcx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rcx], 0
	jne	.L190
	mov	rcx, QWORD PTR .refptr.gNumLives[rip]
	sub	eax, edx
	movzx	edx, BYTE PTR [rcx]
	add	eax, edx
	mov	edx, 255
	cmp	ax, dx
	cmova	eax, edx
	mov	BYTE PTR [rcx], al
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 3[rax], 16
.L190:
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rax], 28
	je	.L189
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 17
.L189:
	mov	rcx, rbx
	call	RenderCannon
	test	al, al
	je	.L192
	mov	rax, QWORD PTR [rsi]
	lea	rdx, Task_BomberTankMain[rip]
	mov	DWORD PTR 104[rbx], 150
	mov	QWORD PTR 40[rax], rdx
.L192:
	mov	rcx, rbx
	call	UpdatePilotAnimation
	call	RenderEggBomberTank
	test	al, al
	je	.L193
	cmp	BYTE PTR 121[rbx], 0
	jne	.L208
.L194:
	mov	rax, QWORD PTR [rsi]
	lea	rdx, Task_BomberTankMain[rip]
	mov	DWORD PTR 104[rbx], 150
	mov	QWORD PTR 40[rax], rdx
.L193:
	mov	rcx, rbx
	call	UpdateBomberTankPalette
	mov	rcx, rbx
	call	CheckBossDestruction.constprop.0
	test	al, al
	jne	.L209
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L208:
	mov	eax, 646
	mov	edx, -256
	mov	WORD PTR 418[rbx], ax
	mov	WORD PTR 448[rbx], dx
	jmp	.L194
	.p2align 4,,10
	.p2align 3
.L209:
	call	Player_DisableInputAndBossTimer
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_StartBossDestruction[rip]
	mov	DWORD PTR 104[rbx], 259
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_BomberTankMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_BomberTankMain
Task_BomberTankMain:
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
	movsx	eax, WORD PTR 8[rbx]
	add	DWORD PTR [rbx], eax
	mov	rcx, rbx
	call	UpdateWheelPositions
	mov	eax, DWORD PTR 100[rbx]
	lea	edx, 1[rax]
	mov	DWORD PTR 100[rbx], edx
	movzx	edx, BYTE PTR 121[rbx]
	test	dl, dl
	je	.L211
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	lea	eax, [rax+rax*4]
	and	eax, 1023
	movsx	eax, WORD PTR [rcx+rax*2]
	mov	ecx, eax
	imul	eax, eax, 10923
	sar	cx, 15
	sar	eax, 21
	sub	eax, ecx
	add	ax, 512
	mov	WORD PTR 96[rbx], ax
.L211:
	test	dl, dl
	lea	rax, sBossModeTasks[rip]
	mov	rcx, rbx
	sete	dl
	movzx	edx, dl
	call	[QWORD PTR [rax+rdx*8]]
	mov	rcx, rbx
	call	UpdatePilotAnimation
	call	RenderEggBomberTank
	mov	rcx, rbx
	call	UpdateBomberTankPalette
	mov	rcx, rbx
	call	CheckBossDestruction.constprop.0
	test	al, al
	jne	.L219
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L219:
	call	Player_DisableInputAndBossTimer
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_StartBossDestruction[rip]
	mov	DWORD PTR 104[rbx], 259
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	EggBomberTankMove
	.def	EggBomberTankMove;	.scl	2;	.type	32;	.endef
	.seh_proc	EggBomberTankMove
EggBomberTankMove:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gActiveBossTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	movd	xmm0, ecx
	movq	xmm1, QWORD PTR [rax]
	movd	xmm2, edx
	movdqu	xmm3, XMMWORD PTR 12[rax]
	punpckldq	xmm0, xmm2
	paddd	xmm1, xmm0
	movq	QWORD PTR [rax], xmm1
	movdqu	xmm1, xmm0
	punpcklqdq	xmm1, xmm0
	paddd	xmm1, xmm3
	movups	XMMWORD PTR 12[rax], xmm1
	movq	xmm1, QWORD PTR 28[rax]
	paddd	xmm1, xmm0
	movq	QWORD PTR 28[rax], xmm1
	movq	xmm1, QWORD PTR 84[rax]
	paddd	xmm1, xmm0
	movq	QWORD PTR 84[rax], xmm1
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 32
gUnknown_080D7B70:
	.word	27005
	.word	16895
	.word	17150
	.word	22335
	.word	31832
	.word	31960
	.word	32314
	.word	27256
	.word	32633
	.word	32700
	.word	17464
	.word	22842
	.word	26107
	.word	28284
	.word	30461
	.word	32671
	.word	11912
	.word	32257
	.word	32004
	.word	21696
	.word	959
	.word	831
	.word	471
	.word	10655
	.word	155
	.word	78
	.word	29662
	.word	19158
	.word	13840
	.word	9612
	.word	5384
	.word	99
	.align 16
sBossModeTasks:
	.quad	HandleCannonBombTrigger
	.quad	HandleCannonlessBombTrigger
	.align 16
gUnknown_080D7B4E:
	.word	640
	.word	-1024
	.word	704
	.word	-1152
	.word	768
	.word	-1280
	.word	768
	.word	-1024
	.word	704
	.word	-1152
	.word	640
	.word	-1280
	.align 8
sExplositionPositions:
	.ascii "\0\0"
	.ascii "\360\20"
	.ascii "\360\360"
	.ascii "\20\20"
	.ascii "\20\360"
	.align 32
sExplosionTimes:
	.ascii "Z<\36Z<Z<\36\36<Z\36<\36Z\36\0\0\1\0\0\0\0\0\1\0\0\0\0\1\0\0\0\1\0\0\1\0\1\1\0\0\0\0\0\0\0\0"
sBodyWheelPositionsX:
	.ascii "\344\2 "
	.align 2
.LC1:
	.byte	0
	.byte	-1
	.align 8
.LC2:
	.word	619
	.word	0
	.word	1000
	.word	1536
	.align 8
.LC4:
	.word	619
	.word	0
	.word	1000
	.word	512
	.align 2
.LC6:
	.byte	1
	.byte	-1
	.align 8
.LC8:
	.long	255
	.long	255
	.align 8
.LC9:
	.long	-8
	.long	-22
	.align 16
.LC12:
	.long	-7168
	.long	1024
	.long	512
	.long	1024
	.align 8
.LC13:
	.word	640
	.word	-1024
	.word	704
	.word	-1152
	.align 8
.LC14:
	.long	8192
	.long	1024
	.align 2
.LC17:
	.byte	2
	.byte	6
	.align 2
.LC18:
	.byte	4
	.byte	8
	.align 16
.LC21:
	.long	43520
	.long	43520
	.long	43520
	.long	43520
	.set	.LC22,.LC21
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	sub_801E4E4;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	CreateBossParticleWithExplosionUpdate;	.scl	2;	.type	32;	.endef
	.def	CreateEggmobileEscapeSequence;	.scl	2;	.type	32;	.endef
	.def	sub_802EF68;	.scl	2;	.type	32;	.endef
	.def	sub_801F100;	.scl	2;	.type	32;	.endef
	.def	TransformSprite;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Enemy;	.scl	2;	.type	32;	.endef
	.def	Player_UpdateHomingPosition;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Enemy_AdjustSpeed;	.scl	2;	.type	32;	.endef
	.def	Coll_DamagePlayer;	.scl	2;	.type	32;	.endef
	.def	sub_8039ED4;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Boss_Attack;	.scl	2;	.type	32;	.endef
	.def	Coll_Cheese_Enemy_Attack;	.scl	2;	.type	32;	.endef
	.def	Player_DisableInputAndBossTimer;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gDifficultyLevel, "dr"
	.globl	.refptr.gDifficultyLevel
	.linkonce	discard
.refptr.gDifficultyLevel:
	.quad	gDifficultyLevel
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.gMusicManagerState, "dr"
	.globl	.refptr.gMusicManagerState
	.linkonce	discard
.refptr.gMusicManagerState:
	.quad	gMusicManagerState
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
	.section	.rdata$.refptr.gCheeseTarget, "dr"
	.globl	.refptr.gCheeseTarget
	.linkonce	discard
.refptr.gCheeseTarget:
	.quad	gCheeseTarget
	.section	.rdata$.refptr.gCheese, "dr"
	.globl	.refptr.gCheese
	.linkonce	discard
.refptr.gCheese:
	.quad	gCheese
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gOamMatrixIndex, "dr"
	.globl	.refptr.gOamMatrixIndex
	.linkonce	discard
.refptr.gOamMatrixIndex:
	.quad	gOamMatrixIndex
	.section	.rdata$.refptr.sub_801EC3C, "dr"
	.globl	.refptr.sub_801EC3C
	.linkonce	discard
.refptr.sub_801EC3C:
	.quad	sub_801EC3C
	.section	.rdata$.refptr.gTileInfoBossScrews, "dr"
	.globl	.refptr.gTileInfoBossScrews
	.linkonce	discard
.refptr.gTileInfoBossScrews:
	.quad	gTileInfoBossScrews
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gPseudoRandom, "dr"
	.globl	.refptr.gPseudoRandom
	.linkonce	discard
.refptr.gPseudoRandom:
	.quad	gPseudoRandom
	.section	.rdata$.refptr.sub_801EE64, "dr"
	.globl	.refptr.sub_801EE64
	.linkonce	discard
.refptr.sub_801EE64:
	.quad	sub_801EE64
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
	.section	.rdata$.refptr.gActiveBossTask, "dr"
	.globl	.refptr.gActiveBossTask
	.linkonce	discard
.refptr.gActiveBossTask:
	.quad	gActiveBossTask
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
	.section	.rdata$.refptr.gObjPalette, "dr"
	.globl	.refptr.gObjPalette
	.linkonce	discard
.refptr.gObjPalette:
	.quad	gObjPalette
