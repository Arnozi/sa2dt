	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	sub_80492B8;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_80492B8
sub_80492B8:
	.seh_endprologue
	lea	r8, gUnknown_080D814A[rip]
	movzx	eax, BYTE PTR 24[rcx]
	mov	rdx, rax
	movsx	ax, BYTE PTR [r8+rax]
	add	ax, WORD PTR 14[rcx]
	mov	WORD PTR 14[rcx], ax
	test	dl, dl
	je	.L8
	cmp	ax, -704
	jl	.L5
.L6:
	cwde
	movd	xmm0, eax
.L4:
	movsx	eax, WORD PTR 12[rcx]
	add	DWORD PTR 16[rcx], 1280
	movd	xmm1, eax
	punpckldq	xmm1, xmm0
	movq	xmm0, QWORD PTR 4[rcx]
	paddd	xmm0, xmm1
	movq	QWORD PTR 4[rcx], xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	cmp	ax, 704
	jle	.L6
	mov	edx, 704
	mov	eax, 704
	mov	WORD PTR 14[rcx], dx
	movd	xmm0, eax
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L5:
	mov	eax, -704
	mov	WORD PTR 14[rcx], ax
	mov	eax, -704
	movd	xmm0, eax
	jmp	.L4
	.seh_endproc
	.p2align 4
	.def	sub_80493F8;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_80493F8
sub_80493F8:
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
	mov	rbp, rcx
	mov	edi, r9d
	mov	esi, edx
	mov	ebx, r8d
	xor	r9d, r9d
	mov	r8d, 24832
	mov	QWORD PTR 32[rsp], 0
	mov	edx, 88
	lea	rcx, sub_80494EC[rip]
	call	TaskCreate
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	mov	edx, esi
	sar	esi, 8
	mov	rax, QWORD PTR 24[rax]
	mov	ecx, DWORD PTR [r8]
	mov	BYTE PTR 12[rax], dil
	sal	ecx, 8
	mov	DWORD PTR 8[rax], 1280
	sub	edx, ecx
	mov	ecx, ebx
	sar	ebx, 8
	mov	QWORD PTR 16[rax], rbp
	add	edx, 1280
	mov	WORD PTR 62[rax], si
	mov	DWORD PTR [rax], edx
	mov	edx, DWORD PTR 4[r8]
	mov	WORD PTR 64[rax], bx
	sal	edx, 8
	sub	ecx, edx
	mov	rdx, QWORD PTR 624[rbp]
	mov	DWORD PTR 40[rax], 45744128
	mov	DWORD PTR 4[rax], ecx
	mov	ecx, -256
	mov	QWORD PTR 32[rax], rdx
	xor	edx, edx
	cmp	dil, 1
	mov	WORD PTR 60[rax], dx
	sbb	edx, edx
	and	edx, -2048
	mov	DWORD PTR 66[rax], 1792
	add	edx, 14336
	mov	WORD PTR 72[rax], cx
	mov	BYTE PTR 74[rax], 16
	mov	BYTE PTR 77[rax], 0
	mov	DWORD PTR 80[rax], -1
	mov	DWORD PTR 56[rax], edx
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.def	sub_80494EC;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_80494EC
sub_80494EC:
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
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rbp, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, WORD PTR 10[rbx]
	movzx	edi, BYTE PTR 12[rbx]
	movsx	ecx, WORD PTR 8[rbx]
	movq	xmm0, QWORD PTR [rbx]
	lea	edx, 32[rax]
	sub	eax, 32
	test	dil, dil
	cmove	eax, edx
	movd	xmm2, ecx
	mov	WORD PTR 10[rbx], ax
	cwde
	movd	xmm3, eax
	punpckldq	xmm2, xmm3
	test	BYTE PTR 36[rbp], -128
	je	.L15
	paddd	xmm0, xmm2
	mov	r12, QWORD PTR .refptr.gCamera[rip]
.L16:
	mov	r8, QWORD PTR .refptr.sub_801EE64[rip]
	cmp	dil, 1
	movd	edx, xmm0
	pshufd	xmm4, xmm0, 0xe5
	movd	ecx, xmm4
	sbb	eax, eax
	movq	QWORD PTR [rbx], xmm0
	sar	edx, 8
	sar	ecx, 8
	add	edx, DWORD PTR [r12]
	add	ecx, DWORD PTR 4[r12]
	and	eax, 16
	mov	QWORD PTR 40[rsp], r8
	lea	r9d, -8[rax]
	mov	r8d, 1
	mov	QWORD PTR 32[rsp], 0
	call	sub_801E4E4
	test	eax, eax
	js	.L27
	mov	edx, DWORD PTR [rbx]
	mov	r8d, DWORD PTR 4[rbx]
	lea	rsi, 24[rbx]
	mov	rax, QWORD PTR 16[rbx]
	sar	edx, 8
	sar	r8d, 8
	mov	WORD PTR 62[rbx], dx
	mov	WORD PTR 64[rbx], r8w
	cmp	BYTE PTR 20[rax], 0
	jne	.L28
.L23:
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L15:
	mov	r12, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 56[r12]
	sal	eax, 8
	movd	xmm1, eax
	mov	eax, DWORD PTR 60[r12]
	sal	eax, 8
	movd	xmm5, eax
	punpckldq	xmm1, xmm5
	paddd	xmm1, xmm2
	paddd	xmm0, xmm1
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L28:
	add	r8d, DWORD PTR 4[r12]
	add	edx, DWORD PTR [r12]
	xor	r9d, r9d
	mov	rcx, rsi
	mov	QWORD PTR 32[rsp], rbp
	call	Coll_Player_Enemy
	cmp	eax, 1
	jne	.L23
	mov	rax, QWORD PTR 16[rbx]
	cmp	BYTE PTR 22[rax], 0
	jne	.L23
	mov	edx, 694
	mov	ecx, -255
	mov	BYTE PTR 21[rax], 30
	mov	WORD PTR 130[rax], dx
	mov	WORD PTR 160[rax], cx
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L27:
	movsx	edx, WORD PTR 8[rbx]
	xor	r8d, r8d
	mov	BYTE PTR 13[rbx], 61
	mov	WORD PTR 10[rbx], r8w
	add	edx, edx
	add	DWORD PTR [rbx], edx
	mov	edx, eax
	sal	eax, 8
	neg	edx
	sal	edx, 8
	test	dil, dil
	lea	rdi, sub_8049658[rip]
	cmovne	eax, edx
	add	DWORD PTR 4[rbx], eax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdi
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.def	Task_80497E0;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_80497E0
Task_80497E0:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	mov	r9, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[r9]
	mov	edx, DWORD PTR [rbx]
	movsx	r11d, WORD PTR 8[rbx]
	lea	rsi, 24[rbx]
	mov	r8d, DWORD PTR 4[rbx]
	movsx	r10d, WORD PTR 10[rbx]
	test	BYTE PTR 36[rcx], -128
	je	.L30
	add	edx, r11d
	add	r8d, r10d
	sub	BYTE PTR 13[rbx], 1
	mov	DWORD PTR 4[rbx], r8d
	mov	DWORD PTR [rbx], edx
	je	.L36
.L32:
	mov	rax, QWORD PTR 16[rbx]
	sar	edx, 8
	sar	r8d, 8
	mov	WORD PTR 62[rbx], dx
	mov	WORD PTR 64[rbx], r8w
	cmp	BYTE PTR 20[rax], 0
	jne	.L37
.L34:
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L30:
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 56[rdi]
	sal	eax, 8
	add	eax, r11d
	add	edx, eax
	mov	eax, DWORD PTR 60[rdi]
	mov	DWORD PTR [rbx], edx
	sal	eax, 8
	add	eax, r10d
	add	r8d, eax
	sub	BYTE PTR 13[rbx], 1
	mov	DWORD PTR 4[rbx], r8d
	jne	.L32
.L36:
	mov	rcx, r9
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L37:
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	xor	r9d, r9d
	add	r8d, DWORD PTR 4[rax]
	add	edx, DWORD PTR [rax]
	mov	QWORD PTR 32[rsp], rcx
	mov	rcx, rsi
	call	Coll_Player_Enemy
	cmp	eax, 1
	jne	.L34
	mov	rax, QWORD PTR 16[rbx]
	cmp	BYTE PTR 22[rax], 0
	jne	.L34
	mov	edx, 694
	mov	ecx, -255
	mov	BYTE PTR 21[rax], 30
	mov	WORD PTR 130[rax], dx
	mov	WORD PTR 160[rax], cx
	jmp	.L34
	.seh_endproc
	.p2align 4
	.def	sub_8048F44;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8048F44
sub_8048F44:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	and	WORD PTR [rax], -257
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	and	WORD PTR [rax], -129
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.def	sub_8049658;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8049658
sub_8049658:
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rcx]
	movsx	eax, WORD PTR 8[rbx]
	movq	xmm0, QWORD PTR [rbx]
	movd	xmm2, eax
	movsx	eax, WORD PTR 10[rbx]
	movd	xmm3, eax
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	punpckldq	xmm2, xmm3
	test	BYTE PTR 36[rax], -128
	je	.L40
	paddd	xmm0, xmm2
.L41:
	movzx	edx, BYTE PTR 13[rbx]
	movq	QWORD PTR [rbx], xmm0
	mov	eax, edx
	sub	eax, 1
	mov	BYTE PTR 13[rbx], al
	test	al, al
	je	.L47
	sub	edx, 1
	and	edx, 3
	je	.L48
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L40:
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	esi, DWORD PTR 56[rax]
	mov	eax, DWORD PTR 60[rax]
	sal	esi, 8
	sal	eax, 8
	movd	xmm1, esi
	movd	xmm4, eax
	punpckldq	xmm1, xmm4
	paddd	xmm1, xmm2
	paddd	xmm0, xmm1
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L48:
	mov	ecx, 144
	call	m4aSongNumStart
	movzx	ebp, BYTE PTR 12[rbx]
	mov	edi, DWORD PTR [rbx]
	xor	r9d, r9d
	mov	r12, QWORD PTR .refptr.gCamera[rip]
	mov	esi, DWORD PTR 4[rbx]
	mov	r8d, 24832
	mov	rbx, QWORD PTR 16[rbx]
	mov	ecx, DWORD PTR [r12]
	mov	edx, DWORD PTR 4[r12]
	mov	QWORD PTR 32[rsp], 0
	sal	ecx, 8
	sal	edx, 8
	add	edi, ecx
	add	esi, edx
	lea	rcx, Task_80497E0[rip]
	mov	edx, 88
	call	TaskCreate
	mov	r8d, DWORD PTR 4[r12]
	mov	edx, DWORD PTR [r12]
	mov	rax, QWORD PTR 24[rax]
	sal	r8d, 8
	sal	edx, 8
	sub	esi, r8d
	sub	edi, edx
	mov	BYTE PTR 13[rax], 46
	mov	edx, esi
	mov	ecx, edi
	mov	DWORD PTR [rax], edi
	sar	edx, 8
	sar	ecx, 8
	mov	DWORD PTR 4[rax], esi
	mov	WORD PTR 64[rax], dx
	mov	rdx, QWORD PTR 624[rbx]
	mov	WORD PTR 62[rax], cx
	mov	ecx, -256
	add	rdx, 192
	mov	DWORD PTR 8[rax], 0
	mov	QWORD PTR 32[rax], rdx
	xor	edx, edx
	cmp	bpl, 1
	mov	WORD PTR 60[rax], dx
	sbb	edx, edx
	and	edx, -2048
	mov	QWORD PTR 16[rax], rbx
	add	edx, 10240
	mov	DWORD PTR 40[rax], 45809664
	mov	DWORD PTR 66[rax], 1792
	mov	WORD PTR 72[rax], cx
	mov	BYTE PTR 74[rax], 16
	mov	BYTE PTR 77[rax], 0
	mov	DWORD PTR 80[rax], -1
	mov	DWORD PTR 56[rax], edx
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L47:
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.def	sub_8048D78;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8048D78
sub_8048D78:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	movzx	eax, BYTE PTR 20[rcx]
	sub	eax, 1
	mov	BYTE PTR 20[rcx], al
	mov	rbx, rcx
	test	al, 1
	je	.L50
	mov	ecx, 143
	call	m4aSongNumStart
.L51:
	movzx	eax, BYTE PTR 20[rbx]
	mov	ecx, 7680
	mov	r8d, 694
	mov	WORD PTR 21[rbx], cx
	mov	WORD PTR 130[rbx], r8w
	test	al, al
	jne	.L52
	mov	rax, QWORD PTR .refptr.gLevelScore[rip]
	mov	BYTE PTR 160[rbx], 3
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
	je	.L62
	mov	rcx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rcx], 0
	je	.L63
.L62:
	mov	BYTE PTR 161[rbx], -1
.L49:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L50:
	mov	ecx, 235
	call	m4aSongNumStart
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L52:
	mov	edx, -254
	mov	WORD PTR 160[rbx], dx
	mov	rdx, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rdx], 28
	je	.L49
	cmp	al, 4
	jne	.L49
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 1[rax], 17
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L63:
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
	jmp	.L62
	.seh_endproc
	.p2align 4
	.def	TaskDestructor_EggFrogMain;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_EggFrogMain
TaskDestructor_EggFrogMain:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 624[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 184[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 248[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 312[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 376[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 440[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 504[rbx]
	call	VramFree
	mov	rax, QWORD PTR .refptr.gActiveBossTask[rip]
	mov	QWORD PTR [rax], 0
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	Render;	.scl	3;	.type	32;	.endef
	.seh_proc	Render
Render:
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
	mov	DWORD PTR 150[rcx], 2621472
	lea	rbx, 112[rcx]
	mov	r14, rcx
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	call	DisplaySprite_BG
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	rbx, QWORD PTR .refptr.gCamera[rip]
	mov	r12d, DWORD PTR 4[r14]
	mov	ebp, DWORD PTR 8[r14]
	mov	ecx, DWORD PTR [rax]
	mov	ebx, DWORD PTR 4[rbx]
	mov	eax, r12d
	mov	r8, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	r9d, ebp
	sar	eax, 8
	mov	DWORD PTR 52[rsp], ebx
	lea	edx, 32[rcx]
	movzx	ebx, WORD PTR 52[rsp]
	sub	edx, eax
	sar	r9d, 8
	sub	eax, ecx
	mov	WORD PTR [r8], dx
	lea	edx, 40[rbx]
	add	eax, 50
	sub	edx, r9d
	cmp	eax, 536
	mov	WORD PTR 2[r8], dx
	mov	rdx, QWORD PTR .refptr.gDispCnt[rip]
	movzx	eax, WORD PTR [rdx]
	jbe	.L66
	and	ah, -2
.L67:
	mov	WORD PTR [rdx], ax
	lea	rdx, 28[r14]
	mov	r8d, r12d
	lea	rax, 496[r14]
	mov	QWORD PTR 56[rsp], rax
	lea	rax, 40[r14]
	mov	r15, QWORD PTR .refptr.gSineTable[rip]
	mov	r12, rdx
	mov	QWORD PTR 72[rsp], rax
	lea	r13, gUnknown_080D8788[rip+7]
.L68:
	movzx	ecx, WORD PTR [r12]
	sar	r8d, 8
	sar	ebp, 8
	xor	edi, edi
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	QWORD PTR 160[rsp], r14
	mov	r14, rdi
	mov	rdi, QWORD PTR 160[rsp]
	sub	r8d, DWORD PTR [rax]
	lea	eax, 256[rcx]
	cdqe
	movsx	eax, WORD PTR [r15+rax*2]
	imul	eax, eax, 23
	sar	eax, 14
	add	r8d, eax
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	DWORD PTR 52[rsp], r8d
	mov	esi, r8d
	sub	ebp, DWORD PTR 4[rax]
	movsx	rax, ecx
	movsx	eax, WORD PTR [r15+rax*2]
	imul	eax, eax, 23
	sar	eax, 14
	add	ebp, eax
	mov	ebx, ebp
.L69:
	movzx	r9d, WORD PTR 2[r12]
	lea	rax, gUnknown_080D8788[rip]
	movzx	edx, BYTE PTR [rax+r14]
	lea	ecx, 256[r9]
	movsx	rcx, ecx
	mov	rax, rdx
	sal	rdx, 6
	movsx	ecx, WORD PTR [r15+rcx*2]
	add	rdx, rdi
	sal	rax, 6
	imul	ecx, r14d
	lea	ecx, [rcx+rcx*4]
	sar	ecx, 13
	add	ecx, esi
	mov	WORD PTR 214[rdx], cx
	movsx	ecx, WORD PTR [r15+r9*2]
	imul	ecx, r14d
	add	r14, 1
	lea	ecx, [rcx+rcx*4]
	sar	ecx, 13
	add	ecx, ebx
	mov	WORD PTR 216[rdx], cx
	lea	rcx, 176[rdi+rax]
	call	DisplaySprite
	cmp	r14, 3
	jne	.L69
	movzx	eax, WORD PTR 2[r12]
	mov	r8d, DWORD PTR 52[rsp]
	mov	r14, rdi
	xor	esi, esi
	lea	ecx, 256[rax]
	movsx	rcx, ecx
	movsx	ebx, WORD PTR [r15+rcx*2]
	movsx	ecx, WORD PTR [r15+rax*2]
	sar	ebx, 9
	sar	ecx, 9
	lea	edi, [rcx+rbp]
	add	ebx, r8d
	mov	WORD PTR 52[rsp], di
	mov	ebp, ebx
	mov	DWORD PTR 68[rsp], edi
	mov	rdi, rsi
	mov	DWORD PTR 64[rsp], ebx
	jmp	.L72
	.p2align 4,,10
	.p2align 3
.L71:
	add	rdi, 1
	cmp	rdi, 7
	je	.L82
.L72:
	movzx	edx, BYTE PTR 0[r13+rdi]
	movzx	ecx, WORD PTR 4[r12]
	sal	rdx, 6
	lea	rbx, [r14+rdx]
	lea	rsi, 176[r14+rdx]
	lea	edx, 256[rcx]
	movsx	rdx, edx
	movsx	edx, WORD PTR [r15+rdx*2]
	imul	edx, edi
	sar	edx, 11
	add	edx, ebp
	mov	WORD PTR 214[rbx], dx
	movsx	edx, WORD PTR [r15+rcx*2]
	mov	rcx, rsi
	imul	edx, edi
	sar	edx, 11
	add	dx, WORD PTR 52[rsp]
	mov	WORD PTR 216[rbx], dx
	call	DisplaySprite
	cmp	BYTE PTR 20[r14], 0
	je	.L71
	mov	eax, DWORD PTR [r14]
	test	eax, eax
	jne	.L71
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	movsx	edx, WORD PTR 214[rbx]
	xor	r9d, r9d
	mov	rcx, rsi
	movsx	r8d, WORD PTR 216[rbx]
	add	rdi, 1
	add	r8d, DWORD PTR 4[rax]
	add	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	QWORD PTR 32[rsp], rax
	call	Coll_Player_Enemy
	cmp	rdi, 7
	jne	.L72
	.p2align 4,,10
	.p2align 3
.L82:
	movzx	eax, WORD PTR 4[r12]
	mov	ebx, DWORD PTR 64[rsp]
	mov	edi, DWORD PTR 68[rsp]
	mov	rsi, QWORD PTR 56[rsp]
	mov	r8, rax
	movsx	eax, WORD PTR [r15+rax*2]
	add	r8d, 256
	movsx	r8, r8d
	imul	eax, eax, 50
	movsx	ecx, WORD PTR [r15+r8*2]
	imul	ecx, ecx, 50
	sar	eax, 14
	add	eax, edi
	mov	WORD PTR 40[rsi], ax
	sar	ecx, 14
	add	ecx, ebx
	mov	WORD PTR 38[rsi], cx
	cmp	BYTE PTR 24[r14], 1
	mov	rcx, rsi
	sbb	eax, eax
	add	r12, 6
	and	eax, -2048
	add	eax, 10240
	mov	DWORD PTR 32[rsi], eax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	add	rsi, 64
	call	DisplaySprite
	mov	rax, QWORD PTR 72[rsp]
	mov	QWORD PTR 56[rsp], rsi
	cmp	r12, rax
	je	.L65
	mov	r8d, DWORD PTR 4[r14]
	mov	ebp, DWORD PTR 8[r14]
	jmp	.L68
	.p2align 4,,10
	.p2align 3
.L65:
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
.L66:
	or	ah, 1
	jmp	.L67
	.seh_endproc
	.p2align 4
	.def	sub_80484C8.part.0;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_80484C8.part.0
sub_80484C8.part.0:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCourseTime[rip]
	movzx	esi, BYTE PTR 24[rcx]
	mov	rbx, rcx
	test	BYTE PTR [rax], 1
	je	.L84
	mov	BYTE PTR 26[rcx], 0
	test	sil, sil
	jne	.L93
.L85:
	mov	eax, DWORD PTR 92[rbx]
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	mov	BYTE PTR 23[rbx], 1
	and	eax, 4095
	test	BYTE PTR [rdx], -128
	jne	.L88
	mov	BYTE PTR 27[rbx], 1
	lea	rdx, gUnknown_080D859C[rip+96]
	xor	esi, esi
.L92:
	mov	DWORD PTR 92[rbx], eax
	mov	QWORD PTR 96[rbx], rdx
	mov	BYTE PTR 24[rbx], sil
	mov	BYTE PTR 25[rbx], 1
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L84:
	mov	rdx, QWORD PTR .refptr.gPseudoRandom[rip]
	imul	eax, DWORD PTR [rdx], 1663525
	add	eax, 1013904223
	mov	DWORD PTR [rdx], eax
	and	eax, 1
	mov	BYTE PTR 26[rcx], al
	test	sil, sil
	jne	.L90
	test	eax, eax
	je	.L85
	mov	ecx, 258
	call	m4aSongNumStart
	mov	eax, DWORD PTR 92[rbx]
	mov	BYTE PTR 27[rbx], 4
	lea	rdx, gUnknown_080D859C[rip+288]
	and	eax, 4095
	jmp	.L92
	.p2align 4,,10
	.p2align 3
.L90:
	test	eax, eax
	jne	.L107
.L93:
	mov	eax, DWORD PTR 92[rbx]
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	mov	BYTE PTR 23[rbx], 1
	and	eax, 4095
	test	BYTE PTR [rdx], -128
	je	.L108
	mov	BYTE PTR 27[rbx], 8
	lea	rdx, gUnknown_080D859C[rip+384]
	mov	esi, 1
	jmp	.L92
	.p2align 4,,10
	.p2align 3
.L88:
	mov	BYTE PTR 27[rbx], 6
	lea	rdx, gUnknown_080D859C[rip+144]
	xor	esi, esi
	jmp	.L92
	.p2align 4,,10
	.p2align 3
.L108:
	mov	BYTE PTR 27[rbx], 13
	lea	rdx, gUnknown_080D859C[rip+576]
	mov	esi, 1
	jmp	.L92
	.p2align 4,,10
	.p2align 3
.L107:
	mov	ecx, 258
	mov	esi, 1
	call	m4aSongNumStart
	mov	eax, DWORD PTR 92[rbx]
	mov	BYTE PTR 27[rbx], 11
	lea	rdx, gUnknown_080D859C[rip+528]
	and	eax, 4095
	jmp	.L92
	.seh_endproc
	.p2align 4
	.def	sub_804931C.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_804931C.isra.0
sub_804931C.isra.0:
	.seh_endprologue
	test	cl, cl
	je	.L110
	mov	eax, ecx
	lea	rcx, gUnknown_080D8796[rip]
	mov	rdx, QWORD PTR .refptr.gBgPalette[rip]
	shr	eax
	and	eax, 1
	sal	rax, 5
	add	rax, rcx
	movdqu	xmm0, XMMWORD PTR [rax]
	movups	XMMWORD PTR 352[rdx], xmm0
	mov	r8, QWORD PTR 16[rax]
	mov	r9, QWORD PTR 24[rax]
	mov	QWORD PTR 368[rdx], r8
	mov	QWORD PTR 376[rdx], r9
.L110:
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 1
	ret
	.seh_endproc
	.p2align 4
	.def	sub_8047E28;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8047E28
sub_8047E28:
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
	mov	r13, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR 0[r13]
	mov	rbx, QWORD PTR 24[rax]
	lea	rax, gUnknown_080D874C[rip]
	movzx	edx, BYTE PTR 27[rbx]
	mov	rcx, rbx
	call	[QWORD PTR [rax+rdx*8]]
	mov	esi, DWORD PTR 4[rbx]
	mov	edi, DWORD PTR 8[rbx]
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	r14d, esi
	mov	r15d, edi
	sar	r14d, 8
	sar	r15d, 8
	mov	edx, r14d
	sub	dx, WORD PTR [rax]
	mov	WORD PTR 150[rbx], dx
	mov	edx, r15d
	sub	dx, WORD PTR 4[rax]
	cmp	BYTE PTR 22[rbx], 0
	mov	WORD PTR 152[rbx], dx
	je	.L147
.L116:
	mov	rcx, rbx
	lea	r14, 28[rbx]
	lea	r12, 40[rbx]
	call	sub_80492B8
	mov	esi, DWORD PTR 4[rbx]
	movzx	eax, BYTE PTR 24[rbx]
	lea	rbp, gUnknown_080D8148[rip]
	mov	r15, QWORD PTR .refptr.gSineTable[rip]
	sar	esi, 8
	cmp	al, 1
	sbb	edi, edi
	and	edi, 16
	sub	edi, 8
.L125:
	movsx	edx, BYTE PTR 0[rbp+rax]
	movzx	eax, WORD PTR [r14]
	mov	r9d, edi
	mov	r8d, 1
	mov	ecx, DWORD PTR 8[rbx]
	movsx	eax, WORD PTR [r15+rax*2]
	sar	ecx, 8
	imul	eax, eax, 23
	add	edx, ecx
	sar	eax, 14
	add	eax, edx
	movzx	edx, WORD PTR 2[r14]
	movsx	edx, WORD PTR [r15+rdx*2]
	sar	edx, 9
	add	eax, edx
	movzx	edx, WORD PTR 4[r14]
	mov	QWORD PTR 32[rsp], 0
	movsx	ecx, WORD PTR [r15+rdx*2]
	mov	edx, esi
	imul	ecx, ecx, 50
	sar	ecx, 14
	add	ecx, eax
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	mov	QWORD PTR 40[rsp], rax
	call	sub_801E4E4
	test	eax, eax
	js	.L148
.L121:
	add	r14, 6
	cmp	r12, r14
	je	.L124
	movzx	eax, BYTE PTR 24[rbx]
	jmp	.L125
	.p2align 4,,10
	.p2align 3
.L124:
	movzx	eax, BYTE PTR 22[rbx]
	test	al, al
	je	.L129
	sub	eax, 1
	mov	BYTE PTR 22[rbx], al
	test	al, al
	je	.L132
.L129:
	movzx	eax, BYTE PTR 21[rbx]
	test	al, al
	je	.L131
	sub	eax, 1
	mov	BYTE PTR 21[rbx], al
	test	al, al
	jne	.L131
.L132:
	cmp	BYTE PTR 20[rbx], 0
	jne	.L130
.L131:
	mov	rcx, rbx
	call	Render
	movzx	ecx, BYTE PTR 22[rbx]
	call	sub_804931C.isra.0
	cmp	BYTE PTR 20[rbx], 0
	je	.L149
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	movzx	eax, WORD PTR 100[rax]
	test	al, 64
	je	.L136
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	or	WORD PTR [rax], 128
.L114:
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
.L148:
	mov	ecx, eax
	mov	edx, DWORD PTR 8[rbx]
	sal	ecx, 8
	cmp	BYTE PTR 24[rbx], 0
	je	.L123
	neg	eax
	sal	eax, 8
	mov	ecx, eax
.L123:
	lea	eax, [rdx+rcx]
	mov	DWORD PTR 8[rbx], eax
	jmp	.L121
	.p2align 4,,10
	.p2align 3
.L136:
	test	al, -128
	je	.L114
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	and	WORD PTR [rax], -129
	jmp	.L114
	.p2align 4,,10
	.p2align 3
.L130:
	mov	edx, 694
	mov	ecx, -256
	mov	WORD PTR 130[rbx], dx
	mov	WORD PTR 160[rbx], cx
	jmp	.L131
	.p2align 4,,10
	.p2align 3
.L149:
	mov	rsi, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rsi], -128
	je	.L134
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	or	DWORD PTR 36[rax], 2
.L134:
	call	Player_DisableInputAndBossTimer
	mov	eax, 1280
	lea	rdi, sub_8047F0C[rip]
	mov	BYTE PTR 24[rbx], 0
	mov	WORD PTR 12[rbx], ax
	mov	rax, QWORD PTR 0[r13]
	mov	BYTE PTR 104[rbx], 0
	and	WORD PTR [rsi], -129
	mov	QWORD PTR 40[rax], rdi
	jmp	.L114
	.p2align 4,,10
	.p2align 3
.L147:
	mov	r12, QWORD PTR .refptr.gPlayer[rip]
	xor	r9d, r9d
	mov	r8d, r15d
	mov	edx, r14d
	lea	rbp, 112[rbx]
	mov	QWORD PTR 32[rsp], r12
	mov	rcx, rbp
	call	Coll_Player_Boss_Attack
	cmp	eax, 1
	je	.L150
	mov	QWORD PTR 32[rsp], r12
	xor	r9d, r9d
	mov	r8d, r15d
	mov	edx, r14d
	mov	rcx, rbp
	call	Coll_Player_Enemy
	cmp	eax, 1
	je	.L151
.L118:
	xor	dil, dil
	xor	sil, sil
	mov	edx, edi
	mov	ecx, esi
	call	Player_UpdateHomingPosition
	cmp	BYTE PTR 22[rbx], 0
	jne	.L116
	mov	QWORD PTR 32[rsp], r12
	xor	r9d, r9d
	mov	r8d, r15d
	mov	edx, r14d
	mov	rcx, rbp
	call	Coll_Cheese_Enemy_Attack
	cmp	eax, 1
	jne	.L116
	mov	rcx, rbx
	call	sub_8048D78
	mov	rax, QWORD PTR .refptr.gCheeseTarget[rip]
	mov	rax, QWORD PTR 8[rax]
	mov	BYTE PTR 61[rax], 0
	jmp	.L116
	.p2align 4,,10
	.p2align 3
.L151:
	cmp	BYTE PTR 22[rbx], 0
	jne	.L118
	mov	r8d, 694
	mov	r9d, -255
	mov	BYTE PTR 21[rbx], 30
	mov	WORD PTR 130[rbx], r8w
	mov	WORD PTR 160[rbx], r9w
	jmp	.L118
	.p2align 4,,10
	.p2align 3
.L150:
	mov	rcx, rbx
	call	sub_8048D78
	jmp	.L118
	.seh_endproc
	.p2align 4
	.def	Task_EggFrogMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_EggFrogMain
Task_EggFrogMain:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	lea	rax, gUnknown_080D874C[rip]
	movzx	edx, BYTE PTR 27[rbx]
	mov	rcx, rbx
	call	[QWORD PTR [rax+rdx*8]]
	mov	rcx, rbx
	mov	r9d, 8
	call	sub_80492B8
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	movzx	eax, WORD PTR 34[rbx]
	mov	edx, DWORD PTR 8[rbx]
	movzx	r8d, WORD PTR 38[rbx]
	movsx	eax, WORD PTR [rcx+rax*2]
	sar	edx, 8
	imul	eax, eax, 23
	sar	eax, 14
	lea	edx, 13[rdx+rax]
	movzx	eax, WORD PTR 36[rbx]
	movsx	eax, WORD PTR [rcx+rax*2]
	movsx	ecx, WORD PTR [rcx+r8*2]
	mov	r8d, 1
	imul	ecx, ecx, 50
	sar	eax, 9
	add	eax, edx
	mov	edx, DWORD PTR 4[rbx]
	mov	QWORD PTR 32[rsp], 0
	sar	ecx, 14
	sar	edx, 8
	add	ecx, eax
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	mov	QWORD PTR 40[rsp], rax
	call	sub_801E4E4
	test	eax, eax
	jns	.L153
	sal	eax, 8
	add	DWORD PTR 8[rbx], eax
.L153:
	movzx	eax, BYTE PTR 22[rbx]
	test	al, al
	je	.L157
	sub	eax, 1
	mov	BYTE PTR 22[rbx], al
	test	al, al
	je	.L160
.L157:
	movzx	eax, BYTE PTR 21[rbx]
	test	al, al
	je	.L159
	sub	eax, 1
	mov	BYTE PTR 21[rbx], al
	test	al, al
	jne	.L159
.L160:
	cmp	BYTE PTR 20[rbx], 0
	jne	.L158
.L159:
	mov	rcx, rbx
	call	Render
	mov	rax, QWORD PTR .refptr.gBgPalette[rip]
	mov	BYTE PTR 22[rbx], 1
	movdqu	xmm0, XMMWORD PTR gUnknown_080D8796[rip]
	movdqu	xmm1, XMMWORD PTR gUnknown_080D8796[rip+16]
	movups	XMMWORD PTR 352[rax], xmm0
	movups	XMMWORD PTR 368[rax], xmm1
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 1
	mov	eax, DWORD PTR [rbx]
	add	eax, 1
	cmp	eax, 299
	ja	.L161
	mov	DWORD PTR [rbx], eax
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L161:
	mov	rax, QWORD PTR [rsi]
	lea	rsi, sub_8047E28[rip]
	mov	DWORD PTR [rbx], 0
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L158:
	mov	eax, 694
	mov	edx, -256
	mov	WORD PTR 130[rbx], ax
	mov	WORD PTR 160[rbx], dx
	jmp	.L159
	.seh_endproc
	.p2align 4
	.def	sub_8047F0C;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8047F0C
sub_8047F0C:
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
	sub	rsp, 104
	.seh_stackalloc	104
	.seh_endprologue
	mov	r14, QWORD PTR .refptr.gCurTask[rip]
	mov	edx, 704
	mov	r12, QWORD PTR .refptr.sub_801EE64[rip]
	mov	r9d, 8
	mov	r8d, 1
	mov	rax, QWORD PTR [r14]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	and	WORD PTR [rax], -129
	movzx	eax, WORD PTR 14[rbx]
	movsx	edi, WORD PTR 12[rbx]
	movq	xmm1, QWORD PTR 4[rbx]
	add	eax, 32
	cmp	ax, dx
	movd	xmm0, edi
	cmovg	eax, edx
	mov	WORD PTR 14[rbx], ax
	cwde
	movd	xmm2, eax
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	movq	QWORD PTR 4[rbx], xmm0
	pshufd	xmm3, xmm0, 0xe5
	movd	ecx, xmm3
	movd	edx, xmm0
	mov	QWORD PTR 40[rsp], r12
	sar	ecx, 8
	sar	edx, 8
	mov	QWORD PTR 32[rsp], 0
	add	ecx, 30
	call	sub_801E4E4
	test	eax, eax
	js	.L167
	mov	eax, DWORD PTR 8[rbx]
.L168:
	mov	ebp, DWORD PTR 4[rbx]
	mov	rdi, QWORD PTR .refptr.gSineTable[rip]
	lea	rsi, 28[rbx]
	lea	r13, 40[rbx]
	sar	ebp, 8
.L178:
	sar	eax, 8
	mov	r9d, 8
	mov	r8d, 1
	mov	edx, eax
	movzx	eax, WORD PTR [rsi]
	movsx	eax, WORD PTR [rdi+rax*2]
	imul	eax, eax, 23
	sar	eax, 14
	add	eax, edx
	movzx	edx, WORD PTR 2[rsi]
	mov	QWORD PTR 40[rsp], r12
	mov	QWORD PTR 32[rsp], 0
	movsx	r15d, WORD PTR [rdi+rdx*2]
	mov	edx, ebp
	sar	r15d, 9
	add	r15d, eax
	lea	ecx, 6[r15]
	call	sub_801E4E4
	test	eax, eax
	movzx	eax, WORD PTR 2[rsi]
	lea	ecx, -256[rax]
	jle	.L169
	lea	edx, -2[rax]
	add	eax, 2
	and	ax, 1023
	cmp	cx, 512
	cmovbe	eax, edx
.L171:
	mov	WORD PTR 2[rsi], ax
	movzx	eax, WORD PTR 4[rsi]
	mov	edx, ebp
	mov	r9d, 8
	mov	QWORD PTR 40[rsp], r12
	mov	r8d, 1
	mov	QWORD PTR 32[rsp], 0
	movsx	eax, WORD PTR [rdi+rax*2]
	imul	eax, eax, 50
	sar	eax, 14
	lea	ecx, 13[r15+rax]
	call	sub_801E4E4
	test	eax, eax
	movzx	eax, WORD PTR 4[rsi]
	lea	ecx, -256[rax]
	lea	edx, -2[rax]
	jle	.L173
	add	eax, 2
	and	ax, 1023
	cmp	cx, 512
	cmovbe	eax, edx
.L175:
	mov	WORD PTR 4[rsi], ax
	add	rsi, 6
	cmp	rsi, r13
	je	.L177
	mov	eax, DWORD PTR 8[rbx]
	jmp	.L178
	.p2align 4,,10
	.p2align 3
.L177:
	movzx	eax, BYTE PTR 22[rbx]
	test	al, al
	je	.L182
	sub	eax, 1
	mov	BYTE PTR 22[rbx], al
	test	al, al
	je	.L185
.L182:
	movzx	eax, BYTE PTR 21[rbx]
	test	al, al
	je	.L184
	sub	eax, 1
	mov	BYTE PTR 21[rbx], al
	test	al, al
	jne	.L184
.L185:
	cmp	BYTE PTR 20[rbx], 0
	jne	.L183
.L184:
	mov	rcx, rbx
	call	Render
	movzx	ecx, BYTE PTR 22[rbx]
	call	sub_804931C.isra.0
	mov	rsi, QWORD PTR .refptr.gStageTime[rip]
	mov	eax, DWORD PTR [rsi]
	imul	edx, eax, -991146299
	add	edx, 165191049
	cmp	edx, 330382098
	jbe	.L198
.L186:
	imul	eax, eax, -1227133513
	movzx	edx, BYTE PTR 105[rbx]
	mov	rsi, QWORD PTR .refptr.gCamera[rip]
	add	eax, 306783378
	cmp	eax, 613566756
	ja	.L187
	mov	rsi, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 4[rbx]
	mov	r8d, DWORD PTR [rsi]
	test	dl, dl
	je	.L199
.L188:
	sar	eax, 8
	sub	eax, DWORD PTR [rsi]
	cmp	eax, -200
	jl	.L192
.L166:
	add	rsp, 104
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
.L173:
	and	dx, 1023
	add	eax, 2
	cmp	cx, 513
	cmovnb	eax, edx
	jmp	.L175
	.p2align 4,,10
	.p2align 3
.L169:
	lea	edx, 2[rax]
	sub	eax, 2
	and	dx, 1023
	cmp	cx, 513
	cmovnb	eax, edx
	jmp	.L171
	.p2align 4,,10
	.p2align 3
.L199:
	mov	rcx, QWORD PTR .refptr.gPseudoRandom[rip]
	sar	eax, 8
	sub	eax, r8d
	imul	edx, DWORD PTR [rcx], 1663525
	add	edx, 1013904223
	mov	r8d, edx
	and	r8d, 63
	lea	eax, -31[rax+r8]
	mov	DWORD PTR 72[rsp], eax
	imul	eax, edx, 1663525
	mov	edx, DWORD PTR 8[rbx]
	sar	edx, 8
	sub	edx, DWORD PTR 4[rsi]
	add	eax, 1013904223
	mov	r8d, eax
	imul	eax, eax, 1663525
	and	r8d, 63
	lea	edx, -31[rdx+r8]
	xor	r8d, r8d
	add	eax, 1013904223
	mov	WORD PTR 80[rsp], r8w
	mov	r8d, eax
	imul	eax, eax, 1663525
	mov	DWORD PTR 76[rsp], edx
	mov	edx, 1000
	and	r8d, 63
	sub	edx, r8d
	add	eax, 1013904223
	mov	WORD PTR 64[rsp], dx
	mov	edx, 1024
	mov	DWORD PTR [rcx], eax
	and	ax, 511
	lea	rcx, 48[rsp]
	sub	edx, eax
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	WORD PTR 66[rsp], dx
	lea	rdx, 104[rbx]
	add	rax, 76160
	mov	QWORD PTR 48[rsp], rax
	movabs	rax, 2658584756224
	mov	QWORD PTR 56[rsp], rax
	call	CreateBossParticleWithExplosionUpdate
.L187:
	mov	eax, DWORD PTR 4[rbx]
	mov	r8d, DWORD PTR [rsi]
	mov	ecx, eax
	sar	ecx, 8
	mov	edx, ecx
	sub	edx, r8d
	cmp	BYTE PTR 105[rbx], 0
	jne	.L188
	cmp	edx, 49
	jg	.L166
	mov	eax, 694
	mov	edx, -252
	mov	BYTE PTR 105[rbx], 1
	sub	ecx, r8d
	mov	WORD PTR 130[rbx], ax
	movsx	ecx, cx
	mov	r8d, 9216
	mov	WORD PTR 160[rbx], dx
	mov	edx, -15
	sub	dx, WORD PTR 4[rsi]
	add	dx, WORD PTR 9[rbx]
	movsx	edx, dx
	call	CreateEggmobileEscapeSequence
	mov	eax, DWORD PTR 4[rbx]
	sar	eax, 8
	sub	eax, DWORD PTR [rsi]
	cmp	eax, -200
	jge	.L166
	cmp	BYTE PTR 105[rbx], 0
	je	.L166
	.p2align 4,,10
	.p2align 3
.L192:
	mov	r8d, 6
	mov	edx, 150
	mov	ecx, -40
	call	sub_802EF68
	mov	rax, QWORD PTR [r14]
	lea	rdi, sub_8048F44[rip]
	mov	QWORD PTR 40[rax], rdi
	jmp	.L166
	.p2align 4,,10
	.p2align 3
.L183:
	mov	r9d, 694
	mov	r10d, -256
	mov	WORD PTR 130[rbx], r9w
	mov	WORD PTR 160[rbx], r10w
	jmp	.L184
	.p2align 4,,10
	.p2align 3
.L167:
	movsx	edx, WORD PTR 14[rbx]
	sal	eax, 8
	add	eax, DWORD PTR 8[rbx]
	mov	DWORD PTR 8[rbx], eax
	lea	ecx, [rdx+rdx*8]
	neg	ecx
	movsx	rdx, ecx
	sar	ecx, 31
	imul	rdx, rdx, 1717986919
	sar	rdx, 34
	sub	edx, ecx
	mov	WORD PTR 14[rbx], dx
	movsx	edx, WORD PTR 12[rbx]
	lea	ecx, [rdx+rdx*8]
	movsx	rdx, ecx
	sar	ecx, 31
	imul	rdx, rdx, 1717986919
	sar	rdx, 34
	sub	edx, ecx
	mov	WORD PTR 12[rbx], dx
	jmp	.L168
	.p2align 4,,10
	.p2align 3
.L198:
	mov	ecx, 144
	call	m4aSongNumStart
	mov	eax, DWORD PTR [rsi]
	jmp	.L186
	.seh_endproc
	.p2align 4
	.globl	CreateEggFrog
	.def	CreateEggFrog;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEggFrog
CreateEggFrog:
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
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	edx, 23053
	or	WORD PTR [rax], 256
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	mov	DWORD PTR [rax], 1090453504
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	or	DWORD PTR 36[rax], 2097152
	call	sub_8039ED4
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	xor	r9d, r9d
	mov	r8d, 16384
	lea	rcx, Task_EggFrogMain[rip]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	DWORD PTR [rax], edx
	mov	rdx, QWORD PTR .refptr.gPlayerBodyPSI[rip]
	mov	eax, DWORD PTR 48[rdx]
	and	ah, -49
	or	ah, 16
	mov	DWORD PTR 48[rdx], eax
	lea	rax, TaskDestructor_EggFrogMain[rip]
	mov	edx, 632
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	rdx, QWORD PTR .refptr.gActiveBossTask[rip]
	mov	rsi, QWORD PTR 24[rax]
	mov	QWORD PTR [rdx], rax
	mov	rdx, QWORD PTR .refptr.gDifficultyLevel[rip]
	mov	eax, 8
	cmp	BYTE PTR [rdx], 0
	je	.L201
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	sete	al
	lea	eax, 6[rax+rax]
.L201:
	mov	rdx, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	BYTE PTR 20[rsi], al
	cmp	BYTE PTR [rdx], 28
	je	.L212
	mov	ecx, 133120
	mov	edx, 35840
	mov	eax, 212480
.L202:
	xor	edi, edi
	xor	ebp, ebp
	xor	r12d, r12d
	xor	r13d, r13d
	mov	DWORD PTR 8[rsi], edx
	lea	r11, gUnknown_080D859C[rip]
	lea	r10, 88[rsi]
	mov	DWORD PTR 16[rsi], eax
	mov	r9, r11
	mov	DWORD PTR 12[rsi], 1280
	mov	WORD PTR 21[rsi], di
	mov	QWORD PTR 28[rsi], 0
	mov	WORD PTR 42[rsi], bp
	mov	WORD PTR 50[rsi], r12w
	mov	BYTE PTR 23[rsi], 0
	mov	BYTE PTR 26[rsi], 0
	mov	DWORD PTR [rsi], 0
	mov	WORD PTR 105[rsi], r13w
	mov	DWORD PTR 4[rsi], ecx
	lea	rcx, 40[rsi]
	.p2align 4,,10
	.p2align 3
.L204:
	mov	r8, QWORD PTR [r9]
	xor	eax, eax
.L203:
	movzx	edx, WORD PTR 2[r8+rax]
	mov	WORD PTR [rcx+rax], dx
	add	rax, 2
	cmp	rax, 8
	jne	.L203
	add	rcx, 8
	add	r9, 8
	cmp	r10, rcx
	jne	.L204
	mov	QWORD PTR 96[rsi], r11
	mov	r10d, 256
	xor	r11d, r11d
	xor	ebx, ebx
	mov	WORD PTR 88[rsi], r10w
	mov	ecx, 39
	mov	ebp, 1728
	lea	rdi, gUnknown_080D8108[rip]
	mov	DWORD PTR 92[rsi], 0
	lea	r12, 40[rdi]
	mov	BYTE PTR 27[rsi], 14
	mov	WORD PTR 24[rsi], r11w
	call	VramMalloc
	movzx	r13d, WORD PTR .LC2[rip]
	mov	DWORD PTR 128[rsi], 45481984
	mov	QWORD PTR 624[rsi], rax
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	WORD PTR 160[rsi], r13w
	add	rax, 49152
	mov	BYTE PTR 162[rsi], 16
	mov	QWORD PTR 120[rsi], rax
	movabs	rax, 9007199255015424
	mov	BYTE PTR 165[rsi], 0
	mov	DWORD PTR 168[rsi], -1
	mov	QWORD PTR 144[rsi], rax
	mov	DWORD PTR 152[rsi], 130023464
	mov	WORD PTR 156[rsi], bx
	lea	rbx, 176[rsi]
	sub	ebp, ebx
	.p2align 4,,10
	.p2align 3
.L205:
	mov	DWORD PTR 38[rbx], 0
	mov	ecx, DWORD PTR 24[rdi]
	add	rdi, 8
	call	VramMalloc
	xor	ecx, ecx
	xor	r8d, r8d
	xor	r9d, r9d
	mov	QWORD PTR 8[rbx], rax
	movzx	eax, WORD PTR 20[rdi]
	mov	WORD PTR 18[rbx], ax
	movzx	eax, BYTE PTR 22[rdi]
	mov	WORD PTR 16[rbx], cx
	mov	rcx, rbx
	mov	BYTE PTR 48[rbx], al
	lea	eax, 0[rbp+rbx]
	add	rbx, 64
	mov	WORD PTR -22[rbx], ax
	mov	WORD PTR -28[rbx], r8w
	mov	WORD PTR -20[rbx], r9w
	mov	BYTE PTR -15[rbx], -1
	mov	BYTE PTR -14[rbx], 16
	mov	BYTE PTR -11[rbx], 0
	mov	DWORD PTR -8[rbx], -1
	mov	DWORD PTR -32[rbx], 8192
	call	UpdateSpriteAnimation
	cmp	r12, rdi
	jne	.L205
	mov	DWORD PTR 534[rsi], 0
	mov	ecx, 12
	call	VramMalloc
	mov	edi, DWORD PTR .LC15[rip]
	mov	DWORD PTR 538[rsi], 1600
	lea	rcx, 496[rsi]
	mov	QWORD PTR 504[rsi], rax
	mov	rbx, rax
	xor	eax, eax
	mov	DWORD PTR 512[rsi], edi
	mov	WORD PTR 532[rsi], ax
	mov	WORD PTR 544[rsi], r13w
	mov	BYTE PTR 546[rsi], 16
	mov	BYTE PTR 549[rsi], 0
	mov	DWORD PTR 552[rsi], -1
	mov	DWORD PTR 528[rsi], 8192
	call	UpdateSpriteAnimation
	xor	edx, edx
	lea	rcx, 560[rsi]
	mov	QWORD PTR 568[rsi], rbx
	mov	DWORD PTR 576[rsi], edi
	mov	WORD PTR 608[rsi], r13w
	mov	BYTE PTR 610[rsi], 16
	mov	BYTE PTR 613[rsi], 0
	mov	DWORD PTR 616[rsi], -1
	mov	QWORD PTR 592[rsi], 8192
	mov	DWORD PTR 600[rsi], 104857600
	mov	WORD PTR 604[rsi], dx
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	UpdateSpriteAnimation
	.p2align 4,,10
	.p2align 3
.L212:
	shr	al
	mov	ecx, 9711104
	mov	edx, 5120
	mov	BYTE PTR 20[rsi], al
	mov	eax, 9800704
	jmp	.L202
	.seh_endproc
	.p2align 4
	.globl	sub_8048C7C
	.def	sub_8048C7C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8048C7C
sub_8048C7C:
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
	lea	rax, gUnknown_080D8710[rip]
	movzx	edx, BYTE PTR 27[rcx]
	movzx	ebp, WORD PTR [rax+rdx*4]
	mov	eax, DWORD PTR 92[rcx]
	mov	rdi, rcx
	lea	r12, 40[rcx]
	lea	rbx, 28[rcx]
	mov	ecx, eax
	shr	ecx, 12
	movzx	r8d, WORD PTR 88[rdi]
	mov	edx, eax
	mov	r13d, eax
	add	ecx, 1
	cmp	cl, 7
	seta	r14b
	sub	edx, r8d
	and	r13d, 4095
	xor	eax, edx
	test	ah, 112
	je	.L217
	mov	rdx, QWORD PTR 96[rdi]
	and	ecx, 7
	mov	rax, r12
	add	rcx, rcx
	lea	r9, 48[rdx]
	.p2align 4,,10
	.p2align 3
.L216:
	mov	r8d, DWORD PTR 2[rax]
	add	rdx, 8
	add	rax, 8
	mov	DWORD PTR -8[rax], r8d
	movzx	r8d, WORD PTR -2[rax]
	mov	WORD PTR -4[rax], r8w
	mov	r8, QWORD PTR -8[rdx]
	movzx	r8d, WORD PTR [r8+rcx]
	mov	WORD PTR -2[rax], r8w
	cmp	rdx, r9
	jne	.L216
.L217:
	mov	rsi, r12
	.p2align 4,,10
	.p2align 3
.L215:
	mov	rcx, rsi
	mov	edx, r13d
	add	rbx, 2
	add	rsi, 8
	call	sub_80859F4
	mov	WORD PTR -2[rbx], ax
	cmp	r12, rbx
	jne	.L215
	movzx	eax, WORD PTR 88[rdi]
	movzx	edx, bp
	sub	eax, edx
	imul	eax, eax, 230
	sar	eax, 8
	add	ebp, eax
	mov	eax, r14d
	mov	WORD PTR 88[rdi], bp
	add	ebp, DWORD PTR 92[rdi]
	and	ebp, 32767
	mov	DWORD PTR 92[rdi], ebp
	add	rsp, 32
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
	.def	sub_80491C4;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_80491C4
sub_80491C4:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	add	DWORD PTR 4[rcx], 768
	mov	rbx, rcx
	call	sub_8048C7C
	test	al, al
	je	.L220
	lea	rax, gUnknown_080D859C[rip+48]
	and	DWORD PTR 92[rbx], 4095
	mov	QWORD PTR 96[rbx], rax
	xor	eax, eax
	mov	BYTE PTR 27[rbx], 0
	mov	WORD PTR 24[rbx], ax
.L220:
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	sub_8049174;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8049174
sub_8049174:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	sub_8048C7C
	cmp	DWORD PTR 92[rbx], 9215
	ja	.L227
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L227:
	mov	edx, DWORD PTR 4[rbx]
	mov	r8d, DWORD PTR 8[rbx]
	xor	r9d, r9d
	mov	rcx, rbx
	call	sub_80493F8
	lea	rax, gUnknown_080D859C[rip+336]
	and	DWORD PTR 92[rbx], 4095
	mov	QWORD PTR 96[rbx], rax
	mov	eax, 1
	mov	BYTE PTR 27[rbx], 7
	mov	WORD PTR 24[rbx], ax
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	sub_804911C;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_804911C
sub_804911C:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	sub_8048C7C
	test	al, al
	mov	eax, DWORD PTR 16[rbx]
	jne	.L230
	cmp	DWORD PTR 4[rbx], eax
	jle	.L231
.L230:
	and	DWORD PTR 92[rbx], 4095
	lea	rdx, gUnknown_080D859C[rip+48]
	mov	QWORD PTR 96[rbx], rdx
	xor	edx, edx
	mov	DWORD PTR 4[rbx], eax
	mov	eax, 1280
	mov	BYTE PTR 27[rbx], 0
	mov	WORD PTR 24[rbx], dx
	mov	WORD PTR 12[rbx], ax
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L231:
	movzx	eax, WORD PTR 12[rbx]
	add	eax, 15
	mov	WORD PTR 12[rbx], ax
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	sub_8048BF0;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8048BF0
sub_8048BF0:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	sub_8048C7C
	test	al, al
	je	.L234
	mov	eax, DWORD PTR 92[rbx]
	mov	r8, QWORD PTR .refptr.gCourseTime[rip]
	mov	ecx, 5
	lea	rdx, gUnknown_080D859C[rip+336]
	and	eax, 4095
	test	BYTE PTR [r8], 3
	jne	.L239
.L235:
	mov	DWORD PTR 92[rbx], eax
	mov	eax, 257
	mov	WORD PTR 24[rbx], ax
	mov	eax, 1280
	mov	BYTE PTR 27[rbx], cl
	mov	QWORD PTR 96[rbx], rdx
	mov	WORD PTR 12[rbx], ax
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L234:
	movzx	eax, WORD PTR 12[rbx]
	sub	eax, 12
	mov	WORD PTR 12[rbx], ax
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L239:
	mov	BYTE PTR 23[rbx], 0
	mov	ecx, 8
	add	rdx, 48
	jmp	.L235
	.seh_endproc
	.p2align 4
	.def	sub_8048B50;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8048B50
sub_8048B50:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	sub_8048C7C
	cmp	BYTE PTR 106[rbx], 0
	jne	.L241
	cmp	DWORD PTR 92[rbx], 13740
	ja	.L246
.L240:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L246:
	mov	ecx, 257
	call	m4aSongNumStart
	mov	BYTE PTR 106[rbx], 1
.L241:
	cmp	DWORD PTR 92[rbx], 17407
	jbe	.L240
	mov	ecx, 257
	call	m4aSongNumStart
	cmp	BYTE PTR 26[rbx], 0
	jne	.L245
	and	DWORD PTR 92[rbx], 4095
	lea	rax, gUnknown_080D859C[rip+48]
	xor	edx, edx
	mov	BYTE PTR 27[rbx], 0
	mov	QWORD PTR 96[rbx], rax
	mov	WORD PTR 24[rbx], dx
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L245:
	and	DWORD PTR 92[rbx], 4095
	lea	rax, gUnknown_080D859C[rip+48]
	mov	QWORD PTR 96[rbx], rax
	mov	eax, 256
	mov	BYTE PTR 27[rbx], 12
	mov	WORD PTR 24[rbx], ax
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	sub_8048AD8;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8048AD8
sub_8048AD8:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	sub_8048C7C
	mov	eax, DWORD PTR 92[rbx]
	cmp	eax, 9215
	jbe	.L248
	and	eax, 4095
	mov	edx, 256
	mov	BYTE PTR 106[rbx], 0
	mov	DWORD PTR 92[rbx], eax
	lea	rax, gUnknown_080D859C[rip+480]
	mov	BYTE PTR 27[rbx], 10
	mov	QWORD PTR 96[rbx], rax
	mov	WORD PTR 24[rbx], dx
.L247:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L248:
	cmp	eax, 8191
	jbe	.L247
	cmp	BYTE PTR 23[rbx], 0
	jne	.L251
	mov	eax, 896
	mov	WORD PTR 14[rbx], ax
.L252:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L251:
	mov	edx, DWORD PTR 4[rbx]
	mov	r8d, DWORD PTR 8[rbx]
	mov	r9d, 1
	mov	rcx, rbx
	call	sub_80493F8
	mov	eax, 896
	mov	BYTE PTR 23[rbx], 0
	mov	WORD PTR 14[rbx], ax
	jmp	.L252
	.seh_endproc
	.p2align 4
	.def	sub_80490C4;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_80490C4
sub_80490C4:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	sub_8048C7C
	cmp	DWORD PTR 92[rbx], 17407
	ja	.L255
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L255:
	mov	eax, 119
	mov	ecx, 256
	mov	WORD PTR 88[rbx], ax
	call	m4aSongNumStart
	lea	rax, gUnknown_080D859C[rip+432]
	and	DWORD PTR 92[rbx], 4095
	mov	edx, 257
	mov	BYTE PTR 27[rbx], 9
	mov	QWORD PTR 96[rbx], rax
	mov	WORD PTR 24[rbx], dx
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	sub_804904C;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_804904C
sub_804904C:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	sub_8048C7C
	cmp	DWORD PTR 92[rbx], 9215
	ja	.L258
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L258:
	mov	edx, DWORD PTR 4[rbx]
	mov	r8d, DWORD PTR 8[rbx]
	mov	r9d, 1
	mov	rcx, rbx
	call	sub_80493F8
	lea	rax, gUnknown_080D859C[rip+48]
	and	DWORD PTR 92[rbx], 4095
	mov	QWORD PTR 96[rbx], rax
	xor	eax, eax
	mov	BYTE PTR 27[rbx], 0
	mov	WORD PTR 24[rbx], ax
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	sub_8048FF4;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8048FF4
sub_8048FF4:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	sub_8048C7C
	test	al, al
	mov	eax, DWORD PTR 16[rbx]
	jne	.L261
	cmp	DWORD PTR 4[rbx], eax
	jle	.L262
.L261:
	and	DWORD PTR 92[rbx], 4095
	lea	rdx, gUnknown_080D859C[rip+336]
	mov	QWORD PTR 96[rbx], rdx
	mov	edx, 1
	mov	DWORD PTR 4[rbx], eax
	mov	eax, 1280
	mov	BYTE PTR 27[rbx], 7
	mov	WORD PTR 24[rbx], dx
	mov	WORD PTR 12[rbx], ax
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L262:
	movzx	eax, WORD PTR 12[rbx]
	add	eax, 15
	mov	WORD PTR 12[rbx], ax
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	sub_8048A4C;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8048A4C
sub_8048A4C:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	sub_8048C7C
	test	al, al
	je	.L265
	mov	eax, DWORD PTR 92[rbx]
	mov	r8, QWORD PTR .refptr.gCourseTime[rip]
	mov	ecx, 12
	lea	rdx, gUnknown_080D859C[rip+48]
	and	eax, 4095
	test	BYTE PTR [r8], 3
	jne	.L270
.L266:
	mov	DWORD PTR 92[rbx], eax
	mov	eax, 256
	mov	WORD PTR 24[rbx], ax
	mov	eax, 1280
	mov	BYTE PTR 27[rbx], cl
	mov	QWORD PTR 96[rbx], rdx
	mov	WORD PTR 12[rbx], ax
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L265:
	movzx	eax, WORD PTR 12[rbx]
	sub	eax, 12
	mov	WORD PTR 12[rbx], ax
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L270:
	mov	BYTE PTR 23[rbx], 0
	mov	ecx, 1
	add	rdx, 48
	jmp	.L266
	.seh_endproc
	.p2align 4
	.def	sub_80489B0;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_80489B0
sub_80489B0:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	sub_8048C7C
	cmp	BYTE PTR 106[rbx], 0
	jne	.L272
	cmp	DWORD PTR 92[rbx], 13740
	ja	.L277
.L271:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L277:
	mov	ecx, 257
	call	m4aSongNumStart
	mov	BYTE PTR 106[rbx], 1
.L272:
	cmp	DWORD PTR 92[rbx], 17407
	jbe	.L271
	mov	ecx, 257
	call	m4aSongNumStart
	cmp	BYTE PTR 26[rbx], 0
	jne	.L276
	lea	rax, gUnknown_080D859C[rip+336]
	and	DWORD PTR 92[rbx], 4095
	mov	edx, 1
	mov	BYTE PTR 27[rbx], 7
	mov	QWORD PTR 96[rbx], rax
	mov	WORD PTR 24[rbx], dx
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L276:
	and	DWORD PTR 92[rbx], 4095
	lea	rax, gUnknown_080D859C[rip+336]
	mov	QWORD PTR 96[rbx], rax
	mov	eax, 257
	mov	BYTE PTR 27[rbx], 5
	mov	WORD PTR 24[rbx], ax
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	sub_804893C;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_804893C
sub_804893C:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	sub_8048C7C
	mov	eax, DWORD PTR 92[rbx]
	cmp	eax, 9215
	jbe	.L279
	and	eax, 4095
	mov	edx, 257
	mov	BYTE PTR 106[rbx], 0
	mov	DWORD PTR 92[rbx], eax
	lea	rax, gUnknown_080D859C[rip+240]
	mov	BYTE PTR 27[rbx], 3
	mov	QWORD PTR 96[rbx], rax
	mov	WORD PTR 24[rbx], dx
.L278:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L279:
	cmp	eax, 8191
	jbe	.L278
	cmp	BYTE PTR 23[rbx], 0
	jne	.L282
	mov	eax, -896
	mov	WORD PTR 14[rbx], ax
.L283:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L282:
	mov	edx, DWORD PTR 4[rbx]
	mov	r8d, DWORD PTR 8[rbx]
	xor	r9d, r9d
	mov	rcx, rbx
	call	sub_80493F8
	mov	eax, -896
	mov	BYTE PTR 23[rbx], 0
	mov	WORD PTR 14[rbx], ax
	jmp	.L283
	.seh_endproc
	.p2align 4
	.def	sub_8048FA4;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8048FA4
sub_8048FA4:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	sub_8048C7C
	cmp	DWORD PTR 92[rbx], 17407
	ja	.L286
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L286:
	mov	eax, 119
	mov	ecx, 256
	mov	WORD PTR 88[rbx], ax
	call	m4aSongNumStart
	lea	rax, gUnknown_080D859C[rip+192]
	and	DWORD PTR 92[rbx], 4095
	mov	edx, 256
	mov	BYTE PTR 27[rbx], 2
	mov	QWORD PTR 96[rbx], rax
	mov	WORD PTR 24[rbx], dx
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	sub_8048F7C;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8048F7C
sub_8048F7C:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	BYTE PTR 25[rcx], 0
	mov	rbx, rcx
	call	sub_8048C7C
	cmp	DWORD PTR 92[rbx], 8191
	jbe	.L287
	cmp	BYTE PTR 25[rbx], 0
	jne	.L287
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	sub_80484C8.part.0
	.p2align 4,,10
	.p2align 3
.L287:
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	sub_804909C;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_804909C
sub_804909C:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	BYTE PTR 25[rcx], 0
	mov	rbx, rcx
	call	sub_8048C7C
	cmp	DWORD PTR 92[rbx], 8191
	jbe	.L289
	cmp	BYTE PTR 25[rbx], 0
	jne	.L289
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	sub_80484C8.part.0
	.p2align 4,,10
	.p2align 3
.L289:
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	EggFrogMove
	.def	EggFrogMove;	.scl	2;	.type	32;	.endef
	.seh_proc	EggFrogMove
EggFrogMove:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gActiveBossTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	movd	xmm1, ecx
	movq	xmm0, QWORD PTR 4[rax]
	movd	xmm2, edx
	add	DWORD PTR 16[rax], ecx
	punpckldq	xmm1, xmm2
	paddd	xmm0, xmm1
	movq	QWORD PTR 4[rax], xmm0
	ret
	.seh_endproc
	.globl	gUnknown_080D8796
	.section .rdata,"dr"
	.align 32
gUnknown_080D8796:
	.word	14720
	.word	32767
	.word	1230
	.word	1334
	.word	19520
	.word	2116
	.word	32763
	.word	26356
	.word	19916
	.word	14665
	.word	10438
	.word	4991
	.word	2686
	.word	17055
	.word	7187
	.word	11293
	.word	25215
	.word	16408
	.word	32572
	.word	32474
	.word	23487
	.word	31678
	.word	16409
	.word	19738
	.word	23100
	.word	25277
	.word	27454
	.word	29848
	.word	31128
	.word	23928
	.word	29691
	.word	27640
	.globl	gUnknown_080D8788
	.align 8
gUnknown_080D8788:
	.ascii "\4\3\3\0\0\0\0"
	.ascii "\4\3\2\1\1\0\0"
	.globl	gUnknown_080D874C
	.align 32
gUnknown_080D874C:
	.quad	sub_8048F7C
	.quad	sub_8048FA4
	.quad	sub_804893C
	.quad	sub_80489B0
	.quad	sub_8048A4C
	.quad	sub_8048FF4
	.quad	sub_804904C
	.quad	sub_804909C
	.quad	sub_80490C4
	.quad	sub_8048AD8
	.quad	sub_8048B50
	.quad	sub_8048BF0
	.quad	sub_804911C
	.quad	sub_8049174
	.quad	sub_80491C4
	.globl	gUnknown_080D8710
	.align 32
gUnknown_080D8710:
	.word	64
	.byte	0
	.byte	0
	.word	128
	.byte	0
	.byte	1
	.word	512
	.byte	0
	.byte	1
	.word	256
	.byte	1
	.byte	1
	.word	256
	.byte	0
	.byte	1
	.word	256
	.byte	1
	.byte	1
	.word	128
	.byte	0
	.byte	1
	.word	64
	.byte	1
	.byte	0
	.word	128
	.byte	1
	.byte	1
	.word	512
	.byte	1
	.byte	1
	.word	256
	.byte	0
	.byte	1
	.word	256
	.byte	1
	.byte	1
	.word	256
	.byte	0
	.byte	1
	.word	128
	.byte	1
	.byte	1
	.word	256
	.byte	0
	.byte	0
	.globl	gUnknown_080D86D4
	.align 32
gUnknown_080D86D4:
	.quad	gUnknown_080D859C+48
	.quad	gUnknown_080D859C+96
	.quad	gUnknown_080D859C+192
	.quad	gUnknown_080D859C+240
	.quad	gUnknown_080D859C+288
	.quad	gUnknown_080D859C+336
	.quad	gUnknown_080D859C+144
	.quad	gUnknown_080D859C+336
	.quad	gUnknown_080D859C+384
	.quad	gUnknown_080D859C+432
	.quad	gUnknown_080D859C+480
	.quad	gUnknown_080D859C+528
	.quad	gUnknown_080D859C+48
	.quad	gUnknown_080D859C+576
	.quad	gUnknown_080D859C
	.globl	gUnknown_080D859C
	.align 32
gUnknown_080D859C:
	.quad	gUnknown_080D814C+960
	.quad	gUnknown_080D814C+984
	.quad	gUnknown_080D814C+1008
	.quad	gUnknown_080D814C+1032
	.quad	gUnknown_080D814C+1056
	.quad	gUnknown_080D814C+1080
	.quad	gUnknown_080D814C
	.quad	gUnknown_080D814C+24
	.quad	gUnknown_080D814C+48
	.quad	gUnknown_080D814C+72
	.quad	gUnknown_080D814C+96
	.quad	gUnknown_080D814C+120
	.quad	gUnknown_080D814C
	.quad	gUnknown_080D814C+336
	.quad	gUnknown_080D814C+360
	.quad	gUnknown_080D814C+72
	.quad	gUnknown_080D814C+384
	.quad	gUnknown_080D814C+408
	.quad	gUnknown_080D814C
	.quad	gUnknown_080D814C+432
	.quad	gUnknown_080D814C+456
	.quad	gUnknown_080D814C+72
	.quad	gUnknown_080D814C+480
	.quad	gUnknown_080D814C+504
	.quad	gUnknown_080D814C
	.quad	gUnknown_080D814C+240
	.quad	gUnknown_080D814C+264
	.quad	gUnknown_080D814C+72
	.quad	gUnknown_080D814C+288
	.quad	gUnknown_080D814C+312
	.quad	gUnknown_080D814C
	.quad	gUnknown_080D814C+528
	.quad	gUnknown_080D814C+552
	.quad	gUnknown_080D814C+72
	.quad	gUnknown_080D814C+576
	.quad	gUnknown_080D814C+600
	.quad	gUnknown_080D814C
	.quad	gUnknown_080D814C+144
	.quad	gUnknown_080D814C+168
	.quad	gUnknown_080D814C+72
	.quad	gUnknown_080D814C+192
	.quad	gUnknown_080D814C+216
	.quad	gUnknown_080D814C
	.quad	gUnknown_080D814C+528
	.quad	gUnknown_080D814C+552
	.quad	gUnknown_080D814C+72
	.quad	gUnknown_080D814C+576
	.quad	gUnknown_080D814C+600
	.quad	gUnknown_080D814C
	.quad	gUnknown_080D814C+672
	.quad	gUnknown_080D814C+696
	.quad	gUnknown_080D814C+72
	.quad	gUnknown_080D814C+720
	.quad	gUnknown_080D814C+744
	.quad	gUnknown_080D814C
	.quad	gUnknown_080D814C+624
	.quad	gUnknown_080D814C+624
	.quad	gUnknown_080D814C+72
	.quad	gUnknown_080D814C+648
	.quad	gUnknown_080D814C+648
	.quad	gUnknown_080D814C
	.quad	gUnknown_080D814C+24
	.quad	gUnknown_080D814C+48
	.quad	gUnknown_080D814C+72
	.quad	gUnknown_080D814C+96
	.quad	gUnknown_080D814C+120
	.quad	gUnknown_080D814C
	.quad	gUnknown_080D814C+768
	.quad	gUnknown_080D814C+792
	.quad	gUnknown_080D814C+72
	.quad	gUnknown_080D814C+816
	.quad	gUnknown_080D814C+840
	.quad	gUnknown_080D814C
	.quad	gUnknown_080D814C+864
	.quad	gUnknown_080D814C+888
	.quad	gUnknown_080D814C+72
	.quad	gUnknown_080D814C+912
	.quad	gUnknown_080D814C+936
	.globl	gUnknown_080D814C
	.align 32
gUnknown_080D814C:
	.word	1029
	.word	1029
	.word	1029
	.word	1029
	.word	1029
	.word	1029
	.word	1029
	.word	1029
	.word	1029
	.word	1029
	.word	1029
	.word	0
	.word	960
	.word	864
	.word	960
	.word	864
	.word	960
	.word	864
	.word	960
	.word	864
	.word	960
	.word	864
	.word	960
	.word	0
	.word	1056
	.word	1400
	.word	1056
	.word	1400
	.word	1056
	.word	1400
	.word	1056
	.word	1400
	.word	1056
	.word	1400
	.word	1056
	.word	0
	.word	512
	.word	512
	.word	512
	.word	512
	.word	512
	.word	512
	.word	512
	.word	512
	.word	512
	.word	512
	.word	512
	.word	0
	.word	576
	.word	676
	.word	576
	.word	676
	.word	576
	.word	676
	.word	576
	.word	676
	.word	576
	.word	676
	.word	576
	.word	0
	.word	480
	.word	136
	.word	480
	.word	136
	.word	480
	.word	136
	.word	480
	.word	136
	.word	480
	.word	136
	.word	480
	.word	0
	.word	960
	.word	960
	.word	960
	.word	960
	.word	960
	.word	960
	.word	960
	.word	960
	.word	960
	.word	960
	.word	960
	.word	0
	.word	1116
	.word	1116
	.word	1116
	.word	1116
	.word	1116
	.word	1116
	.word	1116
	.word	1116
	.word	1116
	.word	1116
	.word	1116
	.word	0
	.word	576
	.word	576
	.word	576
	.word	576
	.word	576
	.word	576
	.word	576
	.word	576
	.word	576
	.word	576
	.word	576
	.word	0
	.word	420
	.word	420
	.word	420
	.word	420
	.word	420
	.word	420
	.word	420
	.word	420
	.word	420
	.word	420
	.word	420
	.word	0
	.word	1280
	.word	1280
	.word	1280
	.word	1280
	.word	1280
	.word	1280
	.word	1280
	.word	1280
	.word	1280
	.word	1280
	.word	1280
	.word	0
	.word	1280
	.word	1280
	.word	1280
	.word	1280
	.word	1280
	.word	1280
	.word	1280
	.word	1280
	.word	1280
	.word	1280
	.word	1280
	.word	0
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	0
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	0
	.word	896
	.word	896
	.word	896
	.word	896
	.word	896
	.word	896
	.word	896
	.word	896
	.word	896
	.word	896
	.word	896
	.word	0
	.word	1333
	.word	1333
	.word	1333
	.word	1333
	.word	1333
	.word	1333
	.word	1333
	.word	1333
	.word	1333
	.word	1333
	.word	1333
	.word	0
	.word	640
	.word	640
	.word	640
	.word	640
	.word	640
	.word	640
	.word	640
	.word	640
	.word	640
	.word	640
	.word	640
	.word	0
	.word	205
	.word	205
	.word	205
	.word	205
	.word	205
	.word	205
	.word	205
	.word	205
	.word	205
	.word	205
	.word	205
	.word	0
	.word	896
	.word	896
	.word	896
	.word	896
	.word	896
	.word	896
	.word	896
	.word	896
	.word	896
	.word	896
	.word	896
	.word	0
	.word	1333
	.word	1333
	.word	1333
	.word	1333
	.word	1333
	.word	1333
	.word	1333
	.word	1333
	.word	1333
	.word	1333
	.word	1333
	.word	0
	.word	640
	.word	640
	.word	640
	.word	640
	.word	640
	.word	640
	.word	640
	.word	640
	.word	640
	.word	640
	.word	640
	.word	0
	.word	205
	.word	205
	.word	205
	.word	205
	.word	205
	.word	205
	.word	205
	.word	205
	.word	205
	.word	205
	.word	205
	.word	0
	.word	1088
	.word	1184
	.word	1088
	.word	1184
	.word	1088
	.word	1184
	.word	1088
	.word	1184
	.word	1088
	.word	1184
	.word	1088
	.word	0
	.word	992
	.word	648
	.word	992
	.word	648
	.word	992
	.word	648
	.word	992
	.word	648
	.word	992
	.word	648
	.word	992
	.word	0
	.word	448
	.word	348
	.word	448
	.word	348
	.word	448
	.word	348
	.word	448
	.word	348
	.word	448
	.word	348
	.word	448
	.word	0
	.word	544
	.word	888
	.word	544
	.word	888
	.word	544
	.word	888
	.word	544
	.word	888
	.word	544
	.word	888
	.word	544
	.word	0
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	0
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	0
	.word	1152
	.word	1152
	.word	1152
	.word	1152
	.word	1152
	.word	1152
	.word	1152
	.word	1152
	.word	1152
	.word	1152
	.word	1152
	.word	0
	.word	715
	.word	715
	.word	715
	.word	715
	.word	715
	.word	715
	.word	715
	.word	715
	.word	715
	.word	715
	.word	715
	.word	0
	.word	384
	.word	384
	.word	384
	.word	384
	.word	384
	.word	384
	.word	384
	.word	384
	.word	384
	.word	384
	.word	384
	.word	0
	.word	819
	.word	819
	.word	819
	.word	819
	.word	819
	.word	819
	.word	819
	.word	819
	.word	819
	.word	819
	.word	819
	.word	0
	.word	1088
	.word	1088
	.word	1088
	.word	1088
	.word	1088
	.word	1088
	.word	1088
	.word	1088
	.word	1088
	.word	1088
	.word	1088
	.word	0
	.word	992
	.word	992
	.word	992
	.word	992
	.word	992
	.word	992
	.word	992
	.word	992
	.word	992
	.word	992
	.word	992
	.word	0
	.word	448
	.word	448
	.word	448
	.word	448
	.word	448
	.word	448
	.word	448
	.word	448
	.word	448
	.word	448
	.word	448
	.word	0
	.word	544
	.word	544
	.word	544
	.word	544
	.word	544
	.word	544
	.word	544
	.word	544
	.word	544
	.word	544
	.word	544
	.word	0
	.word	1152
	.word	1152
	.word	1152
	.word	1152
	.word	1152
	.word	1152
	.word	1152
	.word	1152
	.word	1152
	.word	1152
	.word	1152
	.word	0
	.word	715
	.word	715
	.word	715
	.word	715
	.word	715
	.word	715
	.word	715
	.word	715
	.word	715
	.word	715
	.word	715
	.word	0
	.word	384
	.word	384
	.word	384
	.word	384
	.word	384
	.word	384
	.word	384
	.word	384
	.word	384
	.word	384
	.word	384
	.word	0
	.word	819
	.word	819
	.word	819
	.word	819
	.word	819
	.word	819
	.word	819
	.word	819
	.word	819
	.word	819
	.word	819
	.word	0
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	0
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	0
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	768
	.word	0
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	0
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	0
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	256
	.word	0
	.globl	gUnknown_080D814A
gUnknown_080D814A:
	.ascii " \340"
gUnknown_080D8148:
	.ascii "\15\363"
	.align 32
gUnknown_080D8108:
	.long	12
	.word	697
	.byte	0
	.space 1
	.long	4
	.word	700
	.byte	0
	.space 1
	.long	12
	.word	697
	.byte	0
	.space 1
	.long	4
	.word	700
	.byte	0
	.space 1
	.long	4
	.word	700
	.byte	1
	.space 1
	.long	4
	.word	700
	.byte	2
	.space 1
	.long	4
	.word	700
	.byte	3
	.space 1
	.long	4
	.word	700
	.byte	4
	.space 1
	.align 2
.LC2:
	.byte	0
	.byte	-1
	.align 4
.LC15:
	.word	0
	.word	697
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	sub_801E4E4;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Enemy;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite_BG;	.scl	2;	.type	32;	.endef
	.def	Player_DisableInputAndBossTimer;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Boss_Attack;	.scl	2;	.type	32;	.endef
	.def	Player_UpdateHomingPosition;	.scl	2;	.type	32;	.endef
	.def	Coll_Cheese_Enemy_Attack;	.scl	2;	.type	32;	.endef
	.def	CreateBossParticleWithExplosionUpdate;	.scl	2;	.type	32;	.endef
	.def	CreateEggmobileEscapeSequence;	.scl	2;	.type	32;	.endef
	.def	sub_802EF68;	.scl	2;	.type	32;	.endef
	.def	sub_8039ED4;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	sub_80859F4;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gDifficultyLevel, "dr"
	.globl	.refptr.gDifficultyLevel
	.linkonce	discard
.refptr.gDifficultyLevel:
	.quad	gDifficultyLevel
	.section	.rdata$.refptr.gPlayerBodyPSI, "dr"
	.globl	.refptr.gPlayerBodyPSI
	.linkonce	discard
.refptr.gPlayerBodyPSI:
	.quad	gPlayerBodyPSI
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
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
	.section	.rdata$.refptr.gCheeseTarget, "dr"
	.globl	.refptr.gCheeseTarget
	.linkonce	discard
.refptr.gCheeseTarget:
	.quad	gCheeseTarget
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
	.section	.rdata$.refptr.gBgPalette, "dr"
	.globl	.refptr.gBgPalette
	.linkonce	discard
.refptr.gBgPalette:
	.quad	gBgPalette
	.section	.rdata$.refptr.gPseudoRandom, "dr"
	.globl	.refptr.gPseudoRandom
	.linkonce	discard
.refptr.gPseudoRandom:
	.quad	gPseudoRandom
	.section	.rdata$.refptr.gCourseTime, "dr"
	.globl	.refptr.gCourseTime
	.linkonce	discard
.refptr.gCourseTime:
	.quad	gCourseTime
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
	.section	.rdata$.refptr.gActiveBossTask, "dr"
	.globl	.refptr.gActiveBossTask
	.linkonce	discard
.refptr.gActiveBossTask:
	.quad	gActiveBossTask
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
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
	.section	.rdata$.refptr.gDispCnt, "dr"
	.globl	.refptr.gDispCnt
	.linkonce	discard
.refptr.gDispCnt:
	.quad	gDispCnt
	.section	.rdata$.refptr.sub_801EE64, "dr"
	.globl	.refptr.sub_801EE64
	.linkonce	discard
.refptr.sub_801EE64:
	.quad	sub_801EE64
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
