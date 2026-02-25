	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	animCmd_JumpBack_BG;	.scl	3;	.type	32;	.endef
	.seh_proc	animCmd_JumpBack_BG
animCmd_JumpBack_BG:
	.seh_endprologue
	mov	eax, DWORD PTR 4[rcx]
	sub	WORD PTR 36[rdx], ax
	mov	eax, 1
	ret
	.seh_endproc
	.p2align 4
	.def	animCmd_End_BG;	.scl	3;	.type	32;	.endef
	.seh_proc	animCmd_End_BG
animCmd_End_BG:
	.seh_endprologue
	xor	eax, eax
	or	DWORD PTR 32[rdx], 16384
	ret
	.seh_endproc
	.p2align 4
	.def	animCmd_TranslateSprite_BG;	.scl	3;	.type	32;	.endef
	.seh_proc	animCmd_TranslateSprite_BG
animCmd_TranslateSprite_BG:
	.seh_endprologue
	mov	eax, 1
	movd	xmm0, DWORD PTR 38[rdx]
	add	WORD PTR 36[rdx], 2
	movd	xmm1, DWORD PTR 4[rcx]
	paddw	xmm0, xmm1
	movd	DWORD PTR 38[rdx], xmm0
	ret
	.seh_endproc
	.p2align 4
	.def	animCmd_8_BG;	.scl	3;	.type	32;	.endef
	.seh_proc	animCmd_8_BG
animCmd_8_BG:
	.seh_endprologue
	mov	eax, 1
	add	WORD PTR 36[rdx], 3
	ret
	.seh_endproc
	.p2align 4
	.def	animCmd_SetIdAndVariant_BG;	.scl	3;	.type	32;	.endef
	.seh_proc	animCmd_SetIdAndVariant_BG
animCmd_SetIdAndVariant_BG:
	.seh_endprologue
	movzx	eax, WORD PTR 4[rcx]
	add	WORD PTR 36[rdx], 2
	mov	WORD PTR 18[rdx], ax
	mov	BYTE PTR 49[rdx], -1
	movzx	eax, WORD PTR 6[rcx]
	mov	BYTE PTR 48[rdx], al
	mov	eax, -1
	ret
	.seh_endproc
	.p2align 4
	.def	animCmd_10_BG;	.scl	3;	.type	32;	.endef
	.seh_proc	animCmd_10_BG
animCmd_10_BG:
	.seh_endprologue
	mov	eax, 1
	add	WORD PTR 36[rdx], 4
	ret
	.seh_endproc
	.p2align 4
	.def	animCmd_SetSpritePriority_BG;	.scl	3;	.type	32;	.endef
	.seh_proc	animCmd_SetSpritePriority_BG
animCmd_SetSpritePriority_BG:
	.seh_endprologue
	mov	eax, 1
	add	WORD PTR 36[rdx], 2
	ret
	.seh_endproc
	.p2align 4
	.def	animCmd_AddHitbox_BG;	.scl	3;	.type	32;	.endef
	.seh_proc	animCmd_AddHitbox_BG
animCmd_AddHitbox_BG:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	r9d, -2080374782
	mov	edi, DWORD PTR 4[rcx]
	add	WORD PTR 36[rdx], 3
	and	edi, 15
	mov	rbx, rdx
	mov	rsi, rcx
	lea	rdx, 4[rcx]
	mov	ecx, 3
	lea	r8, 56[rbx+rdi*8]
	call	DmaSet
	test	DWORD PTR 8[rsi], 16777215
	jne	.L10
	cmp	BYTE PTR 11[rsi], 0
	jne	.L10
	mov	DWORD PTR 56[rbx+rdi*8], -1
.L11:
	mov	eax, 1
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L10:
	mov	eax, DWORD PTR 32[rbx]
	test	ah, 8
	je	.L12
	lea	rdx, [rbx+rdi*8]
	movzx	ecx, BYTE PTR 63[rdx]
	movzx	r8d, BYTE PTR 61[rdx]
	mov	BYTE PTR 61[rdx], cl
	mov	BYTE PTR 63[rdx], r8b
.L12:
	test	ah, 4
	je	.L11
	lea	rax, [rbx+rdi*8]
	movzx	edx, BYTE PTR 62[rax]
	movzx	ecx, BYTE PTR 60[rax]
	mov	BYTE PTR 60[rax], dl
	mov	BYTE PTR 62[rax], cl
	mov	eax, 1
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.def	animCmd_PlaySoundEffect_BG;	.scl	3;	.type	32;	.endef
	.seh_proc	animCmd_PlaySoundEffect_BG
animCmd_PlaySoundEffect_BG:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	add	WORD PTR 36[rdx], 2
	movzx	ecx, WORD PTR 4[rcx]
	call	m4aSongNumStart
	mov	eax, 1
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.def	animCmd_GetTiles_BG;	.scl	3;	.type	32;	.endef
	.seh_proc	animCmd_GetTiles_BG
animCmd_GetTiles_BG:
	.seh_endprologue
	add	WORD PTR 36[rdx], 3
	mov	rax, rdx
	test	BYTE PTR 34[rdx], 8
	jne	.L21
	mov	edx, DWORD PTR 4[rcx]
	mov	r8, QWORD PTR .refptr.gRefSpriteTables[rip]
	mov	ecx, DWORD PTR 8[rcx]
	mov	r8, QWORD PTR [r8]
	test	edx, edx
	js	.L24
	sal	edx, 5
	sal	ecx, 5
	movsx	rdx, edx
	add	rdx, QWORD PTR 32[r8]
.L23:
	mov	r8, QWORD PTR .refptr.gVramGraphicsCopyQueueIndex[rip]
	mov	WORD PTR 16[rax], cx
	mov	QWORD PTR [rax], rdx
	movdqu	xmm0, XMMWORD PTR [rax]
	movzx	ecx, BYTE PTR [r8]
	mov	rdx, rcx
	lea	r9, [rcx+rcx*2]
	mov	rcx, QWORD PTR .refptr.gVramGraphicsCopyQueueBuffer[rip]
	lea	rcx, [rcx+r9*8]
	movzx	r9d, dl
	add	edx, 1
	movups	XMMWORD PTR [rcx], xmm0
	mov	rax, QWORD PTR 16[rax]
	and	edx, 31
	mov	BYTE PTR [r8], dl
	mov	QWORD PTR 16[rcx], rax
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyQueue[rip]
	mov	QWORD PTR [rax+r9*8], rcx
.L21:
	mov	eax, 1
	ret
	.p2align 4,,10
	.p2align 3
.L24:
	sal	edx, 6
	sal	ecx, 6
	movsx	rdx, edx
	add	rdx, QWORD PTR 40[r8]
	jmp	.L23
	.seh_endproc
	.p2align 4
	.def	animCmd_GetPalette_BG;	.scl	3;	.type	32;	.endef
	.seh_proc	animCmd_GetPalette_BG
animCmd_GetPalette_BG:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	add	WORD PTR 36[rdx], 3
	test	BYTE PTR 34[rdx], 4
	je	.L27
	mov	eax, 1
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L27:
	movzx	eax, BYTE PTR 53[rdx]
	movzx	edx, WORD PTR 10[rcx]
	movzx	r9d, WORD PTR 8[rcx]
	sal	eax, 4
	add	eax, edx
	mov	rdx, QWORD PTR .refptr.gRefSpriteTables[rip]
	sar	r9d
	or	r9d, -2080374784
	mov	r8, QWORD PTR [rdx]
	mov	edx, DWORD PTR 4[rcx]
	mov	rcx, QWORD PTR 24[r8]
	sal	edx, 4
	movsx	rdx, edx
	lea	rdx, [rcx+rdx*2]
	mov	rcx, QWORD PTR .refptr.gBgPalette[rip]
	lea	r8, [rcx+rax*2]
	mov	ecx, 3
	call	DmaSet
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 1
	mov	eax, 1
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.def	animCmd_SetOamOrder_BG;	.scl	3;	.type	32;	.endef
	.seh_proc	animCmd_SetOamOrder_BG
animCmd_SetOamOrder_BG:
	.seh_endprologue
	mov	eax, 1
	add	WORD PTR 36[rdx], 2
	ret
	.seh_endproc
	.p2align 4
	.globl	DrawBackground
	.def	DrawBackground;	.scl	2;	.type	32;	.endef
	.seh_proc	DrawBackground
DrawBackground:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gTilemapsRef[rip]
	movzx	edx, WORD PTR 48[rcx]
	mov	rax, QWORD PTR [rax]
	mov	rsi, QWORD PTR [rax+rdx*8]
	mov	eax, DWORD PTR [rsi]
	mov	rbx, rcx
	mov	DWORD PTR 40[rcx], eax
	mov	rax, QWORD PTR 8[rsi]
	mov	QWORD PTR [rcx], rax
	mov	eax, DWORD PTR 16[rsi]
	mov	WORD PTR 16[rcx], ax
	movzx	eax, WORD PTR 66[rcx]
	test	al, 8
	je	.L36
.L30:
	movzx	edx, WORD PTR 32[rsi]
	mov	rcx, QWORD PTR 24[rsi]
	movzx	r9d, WORD PTR 34[rsi]
	mov	BYTE PTR 62[rbx], dl
	test	al, 16
	je	.L37
.L31:
	mov	rdx, QWORD PTR 40[rsi]
	mov	QWORD PTR 32[rbx], rdx
	test	al, 64
	je	.L32
	mov	rax, QWORD PTR 48[rsi]
	mov	QWORD PTR 80[rbx], rax
	mov	eax, DWORD PTR 56[rsi]
	mov	DWORD PTR 88[rbx], eax
.L32:
	mov	rdx, QWORD PTR .refptr.gBackgroundsCopyQueueIndex[rip]
	mov	rcx, QWORD PTR .refptr.gBackgroundsCopyQueue[rip]
	movzx	r8d, BYTE PTR [rdx]
	mov	rax, r8
	mov	QWORD PTR [rcx+r8*8], rbx
	add	eax, 1
	and	eax, 15
	mov	BYTE PTR [rdx], al
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L36:
	mov	rcx, QWORD PTR .refptr.gVramGraphicsCopyQueueIndex[rip]
	movdqu	xmm0, XMMWORD PTR [rbx]
	movzx	edx, BYTE PTR [rcx]
	mov	rax, rdx
	lea	r8, [rdx+rdx*2]
	mov	rdx, QWORD PTR .refptr.gVramGraphicsCopyQueueBuffer[rip]
	movzx	r9d, al
	add	eax, 1
	lea	rdx, [rdx+r8*8]
	and	eax, 31
	movups	XMMWORD PTR [rdx], xmm0
	mov	r8, QWORD PTR 16[rbx]
	mov	BYTE PTR [rcx], al
	mov	QWORD PTR 16[rdx], r8
	movzx	eax, WORD PTR 66[rbx]
	mov	r8, QWORD PTR .refptr.gVramGraphicsCopyQueue[rip]
	xor	eax, 8
	mov	QWORD PTR [r8+r9*8], rdx
	mov	WORD PTR 66[rbx], ax
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L37:
	mov	rax, QWORD PTR .refptr.gBgPalette[rip]
	movzx	edx, dl
	or	r9d, -2147483648
	lea	r8, [rax+rdx*2]
	mov	rdx, rcx
	mov	ecx, 3
	call	DmaSet
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 1
	movzx	eax, WORD PTR 66[rbx]
	xor	eax, 16
	mov	WORD PTR 66[rbx], ax
	jmp	.L31
	.seh_endproc
	.p2align 4
	.globl	sub_8002B20
	.def	sub_8002B20;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8002B20
sub_8002B20:
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
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueCursor[rip]
	movzx	r13d, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueIndex[rip]
	cmp	r13b, BYTE PTR [rax]
	jne	.L39
	jmp	.L263
	.p2align 4,,10
	.p2align 3
.L289:
	mov	rdi, QWORD PTR .refptr.gDispCnt[rip]
	test	BYTE PTR [rdi], 3
	je	.L42
	shr	dx, 14
	movzx	ecx, dx
	mov	edx, 16
	mov	r8d, edx
	sal	r8d, cl
	test	r10w, r10w
	je	.L43
	mov	DWORD PTR 40[rsp], 1
.L44:
	movd	xmm0, DWORD PTR 68[r14]
	movzx	r12d, WORD PTR 72[r14]
	movzx	edi, WORD PTR 70[r14]
	pextrw	edx, xmm0, 1
	pextrw	ecx, xmm0, 0
	shr	r12w, 3
	mov	WORD PTR 44[rsp], di
	mov	r10d, edx
	mov	r11d, ecx
	test	si, si
	je	.L288
	movd	xmm1, DWORD PTR .LC0[rip]
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	shr	cx, 3
	pand	xmm0, xmm1
	movd	DWORD PTR [rax+rbx*4], xmm0
	cmp	cx, r12w
	jne	.L136
	movzx	eax, WORD PTR 74[r14]
	shr	r10w, 3
	shr	ax, 3
	cmp	r10w, ax
	jne	.L136
	.p2align 4,,10
	.p2align 3
.L69:
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	movzx	eax, WORD PTR 6[rax]
	mov	eax, DWORD PTR 68[r14]
	mov	DWORD PTR 72[r14], eax
.L41:
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueIndex[rip]
	cmp	BYTE PTR [rax], r13b
	je	.L263
.L39:
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	rdi, QWORD PTR .refptr.gBackgroundsCopyQueue[rip]
	movzx	eax, WORD PTR 6[rax]
	movzx	eax, r13b
	add	r13d, 1
	mov	r14, QWORD PTR [rdi+rax*8]
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueCursor[rip]
	and	r13d, 15
	mov	BYTE PTR [rax], r13b
	movzx	eax, WORD PTR 66[r14]
	mov	r10d, eax
	and	r10w, 32
	je	.L40
	mov	edi, DWORD PTR 72[r14]
	cmp	DWORD PTR 68[r14], edi
	je	.L41
.L40:
	mov	rdi, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	rbx, rax
	mov	esi, eax
	movzx	r9d, WORD PTR 40[r14]
	and	ebx, 3
	and	esi, 64
	movzx	edx, WORD PTR [rdi+rbx*2]
	test	al, 2
	jne	.L289
.L42:
	and	dx, 16384
	test	si, si
	je	.L45
	test	dx, dx
	jne	.L46
	test	r10w, r10w
	jne	.L138
	movzx	eax, WORD PTR 52[r14]
	mov	DWORD PTR 44[rsp], 2
	mov	r8d, 64
	movzx	r10d, WORD PTR 50[r14]
	mov	WORD PTR 84[rsp], ax
.L51:
	movzx	ecx, WORD PTR 58[r14]
	test	ecx, ecx
	je	.L69
	movzx	eax, r10w
	mov	ebp, DWORD PTR 44[rsp]
	movzx	r15d, r9w
	xor	ebx, ebx
	mov	DWORD PTR 88[rsp], eax
	movzx	eax, r8w
	mov	r12, r14
	mov	r11d, ebx
	imul	ebp, r15d
	mov	DWORD PTR 72[rsp], eax
	mov	WORD PTR 94[rsp], r8w
	.p2align 4,,10
	.p2align 3
.L79:
	mov	eax, DWORD PTR 88[rsp]
	lea	r8d, [r11+rax]
	xor	eax, eax
	test	r9w, r9w
	je	.L70
	mov	eax, r8d
	cdq
	idiv	r15d
	mov	r8d, edx
.L70:
	mov	ebx, ecx
	mov	edx, r15d
	mov	edi, DWORD PTR 44[rsp]
	movzx	r10d, WORD PTR 60[r12]
	sub	edx, r8d
	sub	ebx, r11d
	cmp	ebx, edx
	mov	r9d, r10d
	cmovg	ebx, edx
	mov	edx, edi
	imul	edx, ebx
	test	r10w, r10w
	je	.L71
	imul	edi, r11d
	add	eax, eax
	mov	DWORD PTR 68[rsp], r8d
	xor	r13d, r13d
	cdqe
	mov	DWORD PTR 80[rsp], r11d
	mov	r14, r12
	mov	QWORD PTR 48[rsp], rax
	movsx	rax, edi
	movzx	edi, WORD PTR 94[rsp]
	mov	DWORD PTR 76[rsp], ebx
	mov	ebx, r15d
	mov	QWORD PTR 56[rsp], rax
	mov	eax, edx
	mov	r15d, r13d
	shr	eax, 31
	lea	esi, [rax+rdx]
	movzx	eax, WORD PTR 84[rsp]
	sar	esi
	mov	DWORD PTR 64[rsp], eax
	or	esi, -2147483648
	.p2align 4,,10
	.p2align 3
.L77:
	mov	eax, DWORD PTR 64[rsp]
	movzx	r8d, WORD PTR 42[r14]
	lea	edx, [r15+rax]
	xor	eax, eax
	test	r8w, r8w
	je	.L72
	mov	eax, edx
	cdq
	idiv	r8d
.L72:
	movzx	r12d, WORD PTR 88[r14]
	imul	r12d, eax
	mov	rax, QWORD PTR 48[rsp]
	add	rax, QWORD PTR 80[r14]
	mov	ecx, r8d
	sub	ecx, edx
	imul	edx, ebx
	add	r12d, r12d
	movsx	r12, r12d
	movzx	eax, WORD PTR [rax+r12]
	movzx	r12d, WORD PTR 56[r14]
	imul	eax, ebx
	mov	ebx, DWORD PTR 68[rsp]
	add	ebx, edx
	imul	eax, r8d
	add	ebx, eax
	mov	eax, DWORD PTR 44[rsp]
	imul	ebx, eax
	movzx	eax, WORD PTR 54[r14]
	add	rbx, QWORD PTR 32[r14]
	add	r12, rax
	mov	rax, QWORD PTR 56[rsp]
	add	r12, rax
	mov	eax, DWORD PTR 72[rsp]
	imul	eax, r15d
	add	r15d, ecx
	cdqe
	add	r12, rax
	add	r12, QWORD PTR 24[r14]
	cmp	ecx, r9d
	cmovg	ecx, r9d
	sub	r9d, ecx
	mov	r13d, ecx
	test	ecx, ecx
	je	.L76
	mov	DWORD PTR 40[rsp], r9d
	.p2align 4,,10
	.p2align 3
.L75:
	mov	r8, r12
	mov	rdx, rbx
	mov	r9d, esi
	mov	ecx, 3
	call	DmaSet
	add	r12, rdi
	add	rbx, rbp
	sub	r13d, 1
	jne	.L75
	mov	r9d, DWORD PTR 40[rsp]
.L76:
	movzx	eax, WORD PTR 60[r14]
	cmp	eax, r15d
	jle	.L290
	movzx	ebx, WORD PTR 40[r14]
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L290:
	mov	ebx, DWORD PTR 76[rsp]
	mov	r11d, DWORD PTR 80[rsp]
	mov	r12, r14
	movzx	ecx, WORD PTR 58[r14]
.L71:
	add	r11d, ebx
	cmp	ecx, r11d
	jle	.L291
	movzx	r15d, WORD PTR 40[r12]
	mov	r9d, r15d
	jmp	.L79
.L45:
	test	dx, dx
	jne	.L49
	test	r10w, r10w
	jne	.L138
	movzx	edi, WORD PTR 52[r14]
	movzx	r10d, WORD PTR 50[r14]
	mov	r8d, 64
	mov	WORD PTR 84[rsp], di
	mov	edi, 2
.L50:
	movzx	ebx, WORD PTR 56[r14]
	movzx	edx, r8w
	mov	ebp, eax
	movzx	ecx, WORD PTR 84[rsp]
	mov	r12, QWORD PTR 32[r14]
	and	bp, 128
	imul	ebx, edx
	movzx	edx, WORD PTR 54[r14]
	imul	edx, edi
	movsx	rbx, ebx
	movsx	rdx, edx
	add	rbx, rdx
	movzx	edx, WORD PTR 60[r14]
	add	rbx, QWORD PTR 24[r14]
	lea	esi, -1[rdx]
	test	ah, 1
	je	.L52
	movzx	eax, WORD PTR 58[r14]
	mov	r11d, eax
	lea	eax, -1[r10+rax]
	test	bp, bp
	je	.L53
	movzx	r10d, dx
	imul	eax, edi
	lea	r10d, -1[rcx+r10]
	imul	r10d, r9d
	cdqe
	imul	r10d, edi
	add	r10, rax
	add	r10, r12
	test	dx, dx
	je	.L69
	imul	r9d, edi
	movzx	r8d, r8w
	neg	r9
.L55:
	mov	rcx, r10
	xor	eax, eax
	test	r11w, r11w
	je	.L59
	.p2align 4,,10
	.p2align 3
.L56:
	movzx	edx, WORD PTR [rcx]
	sub	rcx, 2
	xor	dh, 12
	mov	WORD PTR [rbx+rax*2], dx
	add	rax, 1
	cmp	ax, WORD PTR 58[r14]
	jb	.L56
.L59:
	sub	esi, 1
	add	rbx, r8
	add	r10, r9
	cmp	si, -1
	je	.L69
	movzx	r11d, WORD PTR 58[r14]
	jmp	.L55
.L52:
	imul	r10d, edi
	movsx	r10, r10d
	test	bp, bp
	je	.L64
	movzx	eax, dx
	lea	ecx, -1[rcx+rax]
	imul	ecx, r9d
	imul	ecx, edi
	add	rcx, r10
	add	rcx, r12
	test	dx, dx
	je	.L69
	imul	r9d, edi
	movzx	r8d, r8w
	movsx	r9, r9d
	neg	r9
.L66:
	xor	eax, eax
	cmp	WORD PTR 58[r14], 0
	je	.L67
	.p2align 4,,10
	.p2align 3
.L65:
	movzx	edx, WORD PTR [rcx+rax*2]
	xor	dh, 8
	mov	WORD PTR [rbx+rax*2], dx
	add	rax, 1
	cmp	ax, WORD PTR 58[r14]
	jb	.L65
.L67:
	sub	esi, 1
	add	rbx, r8
	add	rcx, r9
	cmp	si, -1
	jne	.L66
	jmp	.L69
.L49:
	test	r10w, r10w
	jne	.L286
	movzx	edi, WORD PTR 52[r14]
	movzx	r10d, WORD PTR 50[r14]
	mov	r8d, 128
	mov	WORD PTR 84[rsp], di
	mov	edi, 2
	jmp	.L50
.L46:
	test	r10w, r10w
	jne	.L286
	movzx	eax, WORD PTR 52[r14]
	mov	DWORD PTR 44[rsp], 2
	mov	r8d, 128
	movzx	r10d, WORD PTR 50[r14]
	mov	WORD PTR 84[rsp], ax
	jmp	.L51
.L286:
	mov	DWORD PTR 40[rsp], 2
	mov	r8d, 128
	jmp	.L44
.L138:
	mov	DWORD PTR 40[rsp], 2
	mov	r8d, 64
	jmp	.L44
.L43:
	movzx	edi, WORD PTR 52[r14]
	movzx	r10d, WORD PTR 50[r14]
	mov	WORD PTR 84[rsp], di
	test	si, si
	jne	.L139
	mov	edi, 1
	jmp	.L50
.L263:
	mov	eax, 1
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
.L288:
	movzx	r15d, r9w
	lea	ebp, 0[0+r15*8]
	cmp	ecx, ebp
	jl	.L81
	lea	edi, 0[0+r9*8]
	sub	ecx, edi
	.p2align 4,,10
	.p2align 3
.L82:
	movzx	esi, cx
	mov	r11d, ecx
	sub	ecx, edi
	cmp	esi, ebp
	jge	.L82
	mov	WORD PTR 68[r14], r11w
.L81:
	movzx	esi, WORD PTR 42[r14]
	mov	ebp, r11d
	mov	edi, r11d
	and	ebp, 7
	shr	di, 3
	mov	ecx, esi
	sal	esi, 3
	cmp	edx, esi
	jl	.L83
	sal	ecx, 3
	sub	edx, ecx
	.p2align 4,,10
	.p2align 3
.L84:
	movzx	r11d, dx
	mov	r10d, edx
	sub	edx, ecx
	cmp	r11d, esi
	jge	.L84
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	ecx, r10d
	mov	WORD PTR 70[r14], r10w
	and	ecx, 7
	mov	WORD PTR [rdx+rbx*4], bp
	mov	WORD PTR 2[rdx+rbx*4], cx
	mov	edx, r10d
	shr	dx, 3
	cmp	di, r12w
	je	.L86
.L135:
	movzx	r11d, WORD PTR 50[r14]
	movzx	ebp, WORD PTR 52[r14]
	movzx	ecx, r8w
	xor	r12d, r12d
	movzx	ebx, WORD PTR 56[r14]
	mov	WORD PTR 44[rsp], r12w
	lea	esi, [r11+rdi]
	lea	edi, 0[rbp+rdx]
	movzx	edx, WORD PTR 54[r14]
	mov	WORD PTR 48[rsp], di
	mov	edi, DWORD PTR 40[rsp]
	imul	ebx, ecx
	movzx	r13d, si
	imul	edx, edi
	movsx	rbx, ebx
	movsx	rdx, edx
	add	rbx, rdx
	movzx	edx, WORD PTR 58[r14]
	add	rbx, QWORD PTR 24[r14]
	lea	edi, [rdx+r13]
	mov	r10d, edx
	cmp	edi, r15d
	jl	.L87
	lea	edi, 1[rdx]
	sub	edi, r9d
	add	edi, esi
	mov	WORD PTR 44[rsp], di
.L87:
	movzx	esi, WORD PTR 60[r14]
	mov	r9d, eax
	mov	r12, QWORD PTR 32[r14]
	and	r9w, 128
	lea	edi, 1[rsi]
	test	ah, 1
	je	.L88
	lea	eax, -1[r11+rdx]
	mov	r11d, DWORD PTR 40[rsp]
	movzx	edx, bp
	imul	r11d, eax
	test	r9w, r9w
	je	.L89
	movzx	eax, di
	lea	edx, -1[rdx+rax]
	mov	eax, DWORD PTR 40[rsp]
	imul	edx, r15d
	imul	edx, eax
	add	rdx, r11
	test	di, di
	je	.L91
.L90:
	lea	r11, [r12+rdx]
	xor	eax, eax
	test	r10w, r10w
	je	.L94
	.p2align 4,,10
	.p2align 3
.L92:
	movzx	r9d, WORD PTR [r11]
	sub	r11, 2
	xor	r9w, 3072
	mov	WORD PTR [rbx+rax*2], r9w
	add	rax, 1
	cmp	ax, WORD PTR 58[r14]
	jb	.L92
.L94:
	sub	esi, 1
	cmp	si, -1
	je	.L91
	movzx	r10d, WORD PTR 58[r14]
	jmp	.L90
.L99:
	imul	eax, r15d
	mov	r11d, DWORD PTR 40[rsp]
	mov	r9d, r15d
	imul	r9d, r13d
	imul	eax, r11d
	add	rax, r9
	add	r12, rax
	test	di, di
	je	.L91
	mov	edi, r11d
	movsx	eax, WORD PTR 44[rsp]
	mov	DWORD PTR 56[rsp], ecx
	movzx	ebp, r8w
	imul	edi, r15d
	mov	DWORD PTR 68[rsp], r13d
	mov	r13, rbx
	mov	ebx, r11d
	lea	r10d, -1[rax]
	mov	DWORD PTR 72[rsp], r15d
	mov	eax, edx
	mov	r15d, esi
	mov	WORD PTR 64[rsp], r8w
	mov	esi, r10d
	movsx	rdi, edi
	jmp	.L103
.L292:
	movzx	eax, WORD PTR 58[r14]
.L103:
	sub	eax, esi
	mov	r8, r13
	mov	rdx, r12
	mov	ecx, 3
	imul	eax, ebx
	sub	r15d, 1
	add	r13, rbp
	add	r12, rdi
	mov	r9d, eax
	shr	r9d, 31
	add	r9d, eax
	sar	r9d
	or	r9d, -2147483648
	call	DmaSet
	cmp	r15w, -1
	jne	.L292
	mov	ecx, DWORD PTR 56[rsp]
	movzx	r8d, WORD PTR 64[rsp]
	mov	r13d, DWORD PTR 68[rsp]
	mov	r15d, DWORD PTR 72[rsp]
.L91:
	cmp	WORD PTR 44[rsp], 0
	je	.L287
	movzx	eax, WORD PTR 40[r14]
	movzx	ebx, WORD PTR 54[r14]
	movzx	edx, WORD PTR 56[r14]
	mov	edi, DWORD PTR 40[rsp]
	add	ebx, eax
	movzx	esi, WORD PTR 60[r14]
	movzx	r9d, WORD PTR 48[rsp]
	imul	edx, ecx
	sub	ebx, r13d
	movzx	ecx, WORD PTR 66[r14]
	imul	ebx, edi
	lea	r10d, 1[rsi]
	mov	r11d, ecx
	movsx	rdx, edx
	and	r11w, 128
	add	rbx, rdx
	mov	rdx, QWORD PTR 32[r14]
	add	rbx, QWORD PTR 24[r14]
	and	ch, 1
	je	.L105
	movsx	ecx, WORD PTR 44[rsp]
	mov	rbp, QWORD PTR .refptr.gBackgroundsCopyQueueCursor[rip]
	sub	ecx, 1
	movzx	r13d, BYTE PTR 0[rbp]
	imul	ecx, edi
	movsx	rcx, ecx
	test	r11w, r11w
	je	.L106
	movzx	r10d, r10w
	lea	r9d, -1[r9+r10]
	imul	r9d, eax
	imul	r9d, edi
	add	r9, rcx
	add	r9, rdx
	cmp	si, -1
	je	.L69
	imul	edi, r15d
	movzx	r8d, r8w
	mov	r10d, edi
	neg	r10
.L108:
	xor	eax, eax
	cmp	WORD PTR 58[r14], 0
	mov	rcx, r9
	je	.L111
	.p2align 4,,10
	.p2align 3
.L109:
	movzx	edx, WORD PTR [rcx]
	sub	rcx, 2
	xor	dh, 12
	mov	WORD PTR [rbx+rax*2], dx
	add	rax, 1
	cmp	ax, WORD PTR 58[r14]
	jb	.L109
.L111:
	sub	esi, 1
	add	rbx, r8
	add	r9, r10
	cmp	si, -1
	jne	.L108
	jmp	.L69
.L64:
	mov	eax, ecx
	imul	eax, r9d
	imul	eax, edi
	cdqe
	add	rax, r10
	add	r12, rax
	test	dx, dx
	je	.L69
	imul	r9d, edi
	movzx	r13d, r8w
	movsx	rbp, r9d
.L68:
	movzx	r9d, WORD PTR 58[r14]
	mov	r8, rbx
	mov	rdx, r12
	mov	ecx, 3
	sub	esi, 1
	add	rbx, r13
	add	r12, rbp
	imul	r9d, edi
	sar	r9d
	or	r9d, -2147483648
	call	DmaSet
	cmp	si, -1
	jne	.L68
.L287:
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueCursor[rip]
	movzx	r13d, BYTE PTR [rax]
	jmp	.L69
.L88:
	movzx	eax, WORD PTR 48[rsp]
	test	r9w, r9w
	je	.L99
	movzx	edx, di
	mov	r11d, DWORD PTR 40[rsp]
	lea	eax, -1[rax+rdx]
	imul	eax, r15d
	mov	edx, r11d
	imul	edx, r13d
	imul	eax, r11d
	lea	rdx, [rax+rdx*2]
	add	rdx, r12
	test	di, di
	je	.L91
	imul	r11d, r15d
	mov	r9d, r11d
	movzx	r11d, r8w
	neg	r9
.L100:
	xor	eax, eax
	test	r10w, r10w
	je	.L102
	.p2align 4,,10
	.p2align 3
.L101:
	movzx	r10d, WORD PTR [rdx+rax*2]
	xor	r10w, 2048
	mov	WORD PTR [rbx+rax*2], r10w
	add	rax, 1
	cmp	ax, WORD PTR 58[r14]
	jb	.L101
.L102:
	sub	esi, 1
	add	rbx, r11
	add	rdx, r9
	cmp	si, -1
	je	.L91
	movzx	r10d, WORD PTR 58[r14]
	jmp	.L100
.L291:
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueCursor[rip]
	mov	r14, r12
	movzx	r13d, BYTE PTR [rax]
	jmp	.L69
.L136:
	movzx	eax, WORD PTR 50[r14]
	shr	dx, 3
	add	dx, WORD PTR 52[r14]
	add	eax, ecx
	movzx	ecx, WORD PTR 58[r14]
	test	ecx, ecx
	je	.L69
	mov	r10d, DWORD PTR 40[rsp]
	movzx	eax, ax
	movzx	r15d, r9w
	xor	ebx, ebx
	mov	DWORD PTR 84[rsp], eax
	movzx	eax, dx
	mov	r11d, ebx
	mov	ebp, r10d
	mov	DWORD PTR 72[rsp], eax
	imul	ebp, r15d
	mov	WORD PTR 88[rsp], r8w
	.p2align 4,,10
	.p2align 3
.L133:
	mov	eax, DWORD PTR 84[rsp]
	lea	edx, [r11+rax]
	xor	eax, eax
	test	r9w, r9w
	je	.L123
	mov	eax, edx
	cdq
	idiv	r15d
.L123:
	movzx	edi, WORD PTR 60[r14]
	mov	DWORD PTR 40[rsp], edi
	mov	ebx, ecx
	mov	r8d, r15d
	sub	r8d, edx
	sub	ebx, r11d
	cmp	ebx, r8d
	cmovg	ebx, r8d
	mov	r8d, ebx
	imul	r8d, r10d
	test	di, di
	je	.L124
	mov	r12d, r11d
	movzx	ecx, WORD PTR 88[rsp]
	cdqe
	mov	DWORD PTR 68[rsp], edx
	imul	r12d, r10d
	mov	QWORD PTR 56[rsp], rax
	mov	r9d, DWORD PTR 40[rsp]
	mov	DWORD PTR 64[rsp], ecx
	movzx	edi, cx
	mov	DWORD PTR 80[rsp], r11d
	movsx	rsi, r12d
	mov	DWORD PTR 44[rsp], r10d
	xor	r12d, r12d
	mov	QWORD PTR 48[rsp], rsi
	mov	esi, r8d
	mov	r13d, r12d
	shr	esi, 31
	mov	DWORD PTR 76[rsp], ebx
	mov	ebx, r15d
	mov	r15, r14
	add	esi, r8d
	sar	esi
	or	esi, -2147483648
	.p2align 4,,10
	.p2align 3
.L131:
	mov	eax, DWORD PTR 72[rsp]
	movzx	r8d, WORD PTR 42[r15]
	lea	edx, 0[r13+rax]
	xor	eax, eax
	test	r8w, r8w
	je	.L125
	mov	eax, edx
	cdq
	idiv	r8d
.L125:
	movzx	r14d, WORD PTR 88[r15]
	imul	r14d, eax
	mov	rax, QWORD PTR 56[rsp]
	mov	ecx, r8d
	sub	ecx, edx
	movsx	r14, r14d
	add	r14, rax
	mov	rax, QWORD PTR 80[r15]
	movzx	eax, WORD PTR [rax+r14*2]
	xor	r14d, r14d
	cmp	eax, 1023
	jg	.L126
	imul	eax, ebx
	imul	eax, r8d
	mov	r14d, eax
.L126:
	imul	edx, ebx
	mov	eax, DWORD PTR 68[rsp]
	lea	ebx, [rdx+rax]
	mov	eax, DWORD PTR 44[rsp]
	add	ebx, r14d
	movzx	r14d, WORD PTR 56[r15]
	imul	ebx, eax
	movzx	eax, WORD PTR 54[r15]
	add	r14, rax
	mov	rax, QWORD PTR 48[rsp]
	movsx	rbx, ebx
	add	rbx, QWORD PTR 32[r15]
	add	r14, rax
	mov	eax, DWORD PTR 64[rsp]
	imul	eax, r13d
	add	r13d, ecx
	cdqe
	add	r14, rax
	add	r14, QWORD PTR 24[r15]
	cmp	ecx, r9d
	cmovg	ecx, r9d
	sub	r9d, ecx
	mov	r12d, ecx
	test	ecx, ecx
	je	.L130
	mov	DWORD PTR 40[rsp], r9d
	.p2align 4,,10
	.p2align 3
.L129:
	mov	r8, r14
	mov	rdx, rbx
	mov	r9d, esi
	mov	ecx, 3
	call	DmaSet
	add	r14, rdi
	add	rbx, rbp
	sub	r12d, 1
	jne	.L129
	mov	r9d, DWORD PTR 40[rsp]
.L130:
	movzx	eax, WORD PTR 60[r15]
	cmp	eax, r13d
	jle	.L293
	movzx	ebx, WORD PTR 40[r15]
	jmp	.L131
	.p2align 4,,10
	.p2align 3
.L293:
	mov	ebx, DWORD PTR 76[rsp]
	mov	r11d, DWORD PTR 80[rsp]
	mov	r14, r15
	mov	r10d, DWORD PTR 44[rsp]
	movzx	ecx, WORD PTR 58[r15]
.L124:
	add	r11d, ebx
	cmp	ecx, r11d
	jle	.L287
	movzx	r15d, WORD PTR 40[r14]
	mov	r9d, r15d
	jmp	.L133
.L53:
	imul	ecx, r9d
	imul	eax, edi
	mov	r10d, ecx
	imul	r10d, edi
	add	r10, rax
	add	r10, r12
	test	dx, dx
	je	.L69
	imul	r9d, edi
	movzx	r8d, r8w
.L60:
	mov	rcx, r10
	xor	eax, eax
	test	r11w, r11w
	je	.L63
	.p2align 4,,10
	.p2align 3
.L61:
	movzx	edx, WORD PTR [rcx]
	sub	rcx, 2
	xor	dh, 4
	mov	WORD PTR [rbx+rax*2], dx
	add	rax, 1
	cmp	ax, WORD PTR 58[r14]
	jb	.L61
.L63:
	sub	esi, 1
	add	rbx, r8
	add	r10, r9
	cmp	si, -1
	je	.L69
	movzx	r11d, WORD PTR 58[r14]
	jmp	.L60
.L105:
	test	r11w, r11w
	je	.L116
	movzx	r10d, r10w
	mov	rdi, QWORD PTR .refptr.gBackgroundsCopyQueueCursor[rip]
	lea	ecx, -1[r9+r10]
	imul	ecx, eax
	mov	eax, DWORD PTR 40[rsp]
	movzx	r13d, BYTE PTR [rdi]
	imul	ecx, eax
	add	rcx, rdx
	cmp	si, -1
	je	.L69
	imul	eax, r15d
	movsx	r9d, WORD PTR 44[rsp]
	movzx	r8d, r8w
	mov	r11d, r9d
	movsx	r10, eax
	neg	r10
.L118:
	xor	eax, eax
	test	r11w, r11w
	jle	.L120
	.p2align 4,,10
	.p2align 3
.L119:
	movzx	edx, WORD PTR [rcx+rax*2]
	xor	dh, 8
	mov	WORD PTR [rbx+rax*2], dx
	add	rax, 1
	cmp	r9d, eax
	jg	.L119
.L120:
	sub	esi, 1
	add	rbx, r8
	add	rcx, r10
	cmp	si, -1
	jne	.L118
	jmp	.L69
.L89:
	mov	eax, DWORD PTR 40[rsp]
	imul	edx, eax
	add	rdx, r11
	test	di, di
	je	.L91
.L95:
	lea	r11, [r12+rdx]
	xor	eax, eax
	test	r10w, r10w
	je	.L98
	.p2align 4,,10
	.p2align 3
.L96:
	movzx	r9d, WORD PTR [r11]
	sub	r11, 2
	xor	r9w, 1024
	mov	WORD PTR [rbx+rax*2], r9w
	add	rax, 1
	cmp	ax, WORD PTR 58[r14]
	jb	.L96
.L98:
	sub	esi, 1
	cmp	si, -1
	je	.L91
	movzx	r10d, WORD PTR 58[r14]
	jmp	.L95
.L116:
	imul	eax, r9d
	mov	ecx, DWORD PTR 40[rsp]
	mov	edi, eax
	imul	edi, ecx
	add	rdi, rdx
	test	r10w, r10w
	je	.L287
	movsx	eax, WORD PTR 44[rsp]
	mov	edx, ecx
	movzx	r13d, r8w
	imul	edx, r15d
	imul	eax, ecx
	movsx	r12, edx
	mov	ebp, eax
	shr	ebp, 31
	add	ebp, eax
	sar	ebp
	or	ebp, -2147483648
.L122:
	mov	r8, rbx
	mov	rdx, rdi
	mov	r9d, ebp
	mov	ecx, 3
	call	DmaSet
	sub	esi, 1
	add	rbx, r13
	add	rdi, r12
	cmp	si, -1
	jne	.L122
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueCursor[rip]
	movzx	r13d, BYTE PTR [rax]
	jmp	.L69
.L106:
	imul	r9d, eax
	mov	eax, DWORD PTR 40[rsp]
	imul	r9d, eax
	add	r9, rcx
	add	r9, rdx
	cmp	si, -1
	je	.L69
	imul	eax, r15d
	movzx	r8d, r8w
	mov	r10d, eax
.L112:
	xor	eax, eax
	cmp	WORD PTR 58[r14], 0
	mov	rcx, r9
	je	.L115
	.p2align 4,,10
	.p2align 3
.L113:
	movzx	edx, WORD PTR [rcx]
	sub	rcx, 2
	xor	dh, 4
	mov	WORD PTR [rbx+rax*2], dx
	add	rax, 1
	cmp	ax, WORD PTR 58[r14]
	jb	.L113
.L115:
	sub	esi, 1
	add	rbx, r8
	add	r9, r10
	cmp	si, -1
	jne	.L112
	jmp	.L69
.L83:
	movzx	r11d, WORD PTR 44[rsp]
	mov	rcx, QWORD PTR .refptr.gBgScrollRegs[rip]
	shr	dx, 3
	and	r11d, 7
	mov	WORD PTR [rcx+rbx*4], bp
	mov	WORD PTR 2[rcx+rbx*4], r11w
	cmp	di, r12w
	jne	.L135
.L86:
	movzx	ecx, WORD PTR 74[r14]
	mov	edx, r10d
	mov	edi, r12d
	shr	dx, 3
	shr	cx, 3
	cmp	dx, cx
	jne	.L135
	jmp	.L69
	.p2align 4,,10
	.p2align 3
.L139:
	mov	DWORD PTR 44[rsp], 1
	jmp	.L51
	.seh_endproc
	.p2align 4
	.globl	UpdateBgAnimationTiles
	.def	UpdateBgAnimationTiles;	.scl	2;	.type	32;	.endef
	.seh_proc	UpdateBgAnimationTiles
UpdateBgAnimationTiles:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gTilemapsRef[rip]
	mov	rdx, QWORD PTR [rdx]
	mov	rax, rcx
	movzx	ecx, WORD PTR 48[rcx]
	mov	rdx, QWORD PTR [rdx+rcx*8]
	movzx	r8d, BYTE PTR 6[rdx]
	test	r8b, r8b
	je	.L294
	movzx	ecx, BYTE PTR 64[rax]
	add	ecx, 1
	cmp	cl, BYTE PTR 7[rdx]
	jb	.L308
	movzx	ecx, BYTE PTR 63[rax]
	movzx	r10d, WORD PTR 66[rax]
	mov	BYTE PTR 64[rax], 0
	add	ecx, 1
	and	r10w, 512
	mov	BYTE PTR 63[rax], cl
	cmp	cl, r8b
	jnb	.L299
	movzx	r11d, WORD PTR 4[rdx]
	mov	r9d, r11d
	test	r10w, r10w
	jne	.L300
	mov	r8, QWORD PTR 8[rdx]
	test	cl, cl
	je	.L303
	movzx	ecx, cl
	mov	edx, DWORD PTR 16[rdx]
	sub	ecx, 1
	imul	ecx, r11d
	add	rdx, rcx
	add	rdx, r8
.L302:
	mov	r8, QWORD PTR .refptr.gVramGraphicsCopyQueueIndex[rip]
	mov	QWORD PTR [rax], rdx
	mov	WORD PTR 16[rax], r9w
	movdqu	xmm0, XMMWORD PTR [rax]
	movzx	ecx, BYTE PTR [r8]
	mov	rdx, rcx
	lea	r9, [rcx+rcx*2]
	mov	rcx, QWORD PTR .refptr.gVramGraphicsCopyQueueBuffer[rip]
	lea	rcx, [rcx+r9*8]
	movzx	r9d, dl
	add	edx, 1
	movups	XMMWORD PTR [rcx], xmm0
	mov	rax, QWORD PTR 16[rax]
	and	edx, 31
	mov	BYTE PTR [r8], dl
	mov	QWORD PTR 16[rcx], rax
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyQueue[rip]
	mov	QWORD PTR [rax+r9*8], rcx
.L294:
	ret
	.p2align 4,,10
	.p2align 3
.L308:
	mov	BYTE PTR 64[rax], cl
	ret
	.p2align 4,,10
	.p2align 3
.L299:
	mov	BYTE PTR 63[rax], 0
	movzx	r9d, WORD PTR 4[rdx]
	test	r10w, r10w
	jne	.L307
	mov	r8, QWORD PTR 8[rdx]
.L303:
	mov	rdx, r8
	jmp	.L302
	.p2align 4,,10
	.p2align 3
.L300:
	movzx	ecx, cl
	imul	ecx, r11d
.L304:
	mov	edx, DWORD PTR 16[rdx]
	add	rdx, rcx
	add	rdx, QWORD PTR 8[rax]
	jmp	.L302
	.p2align 4,,10
	.p2align 3
.L307:
	xor	ecx, ecx
	jmp	.L304
	.seh_endproc
	.p2align 4
	.globl	UpdateSpriteAnimation_BG
	.def	UpdateSpriteAnimation_BG;	.scl	2;	.type	32;	.endef
	.seh_proc	UpdateSpriteAnimation_BG
UpdateSpriteAnimation_BG:
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
	xor	eax, eax
	mov	edx, DWORD PTR 32[rcx]
	mov	rbx, rcx
	test	dh, 64
	jne	.L309
	movzx	eax, BYTE PTR 48[rcx]
	movzx	r8d, WORD PTR 18[rcx]
	cmp	BYTE PTR 49[rcx], al
	je	.L325
.L311:
	xor	r9d, r9d
	xor	r10d, r10d
	mov	BYTE PTR 49[rbx], al
	xor	ecx, ecx
	mov	WORD PTR 46[rbx], r8w
	and	dh, -65
	mov	WORD PTR 36[rbx], r9w
	mov	WORD PTR 44[rbx], r10w
	mov	WORD PTR 16[rbx], cx
	xor	ecx, ecx
	mov	DWORD PTR 32[rbx], edx
	xor	edx, edx
.L313:
	mov	rdi, QWORD PTR .refptr.gRefSpriteTables[rip]
	mov	r9, QWORD PTR [rdi]
	mov	r9, QWORD PTR [r9]
	mov	r8, QWORD PTR [r9+r8*8]
	mov	rsi, QWORD PTR [r8+rax*8]
	add	rcx, rsi
	mov	eax, DWORD PTR [rcx]
	test	eax, eax
	jns	.L315
	lea	rbp, animCmdTable_BG[rip]
	jmp	.L318
	.p2align 4,,10
	.p2align 3
.L316:
	cmp	eax, -1
	jne	.L309
	mov	rax, QWORD PTR [rdi]
	movzx	ecx, WORD PTR 18[rbx]
	movzx	edx, BYTE PTR 48[rbx]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR [rax+rcx*8]
	mov	rsi, QWORD PTR [rax+rdx*8]
	xor	eax, eax
	xor	edx, edx
	mov	WORD PTR 36[rbx], ax
	mov	rcx, rsi
	mov	eax, DWORD PTR [rcx]
	test	eax, eax
	jns	.L315
.L318:
	not	eax
	mov	rdx, rbx
	cdqe
	call	[QWORD PTR 0[rbp+rax*8]]
	cmp	eax, 1
	jne	.L316
	movzx	eax, WORD PTR 36[rbx]
	lea	rcx, [rsi+rax*4]
	mov	rdx, rax
	mov	eax, DWORD PTR [rcx]
	test	eax, eax
	js	.L318
.L315:
	movzx	r9d, BYTE PTR 50[rbx]
	movzx	r8d, WORD PTR 44[rbx]
	sal	eax, 8
	sal	r9d, 4
	sub	r8d, r9d
	add	eax, r8d
	mov	WORD PTR 44[rbx], ax
	movsx	rax, DWORD PTR 4[rcx]
	mov	rcx, -1
	cmp	eax, -1
	je	.L319
	mov	rcx, QWORD PTR [rdi]
	movzx	r9d, WORD PTR 18[rbx]
	mov	r8, QWORD PTR 8[rcx]
	lea	rcx, [rax+rax*2]
	mov	rax, QWORD PTR [r8+r9*8]
	lea	rcx, [rax+rcx*4]
.L319:
	add	edx, 2
	mov	QWORD PTR 24[rbx], rcx
	mov	eax, 1
	mov	WORD PTR 36[rbx], dx
.L309:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L325:
	cmp	WORD PTR 46[rcx], r8w
	jne	.L311
	movzx	edx, WORD PTR 44[rcx]
	test	dx, dx
	jle	.L314
	movzx	eax, BYTE PTR 50[rcx]
	sal	eax, 4
	sub	edx, eax
	mov	eax, 1
	mov	WORD PTR 44[rcx], dx
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
.L314:
	movzx	ecx, WORD PTR 36[rcx]
	mov	rdx, rcx
	sal	rcx, 2
	jmp	.L313
	.seh_endproc
	.p2align 4
	.globl	DisplaySprite_BG
	.def	DisplaySprite_BG;	.scl	2;	.type	32;	.endef
	.seh_proc	DisplaySprite_BG
DisplaySprite_BG:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gBgSpritesCount[rip]
	mov	r8, QWORD PTR .refptr.gBgSprites[rip]
	movzx	r9d, BYTE PTR [rdx]
	mov	rax, r9
	add	eax, 1
	mov	QWORD PTR [r8+r9*8], rcx
	mov	r8, QWORD PTR 24[rcx]
	mov	BYTE PTR [rdx], al
	cmp	r8, -1
	je	.L326
	mov	r10d, DWORD PTR 32[rcx]
	movsx	r9d, WORD PTR 40[rcx]
	movsx	eax, WORD PTR 8[r8]
	movsx	ecx, WORD PTR 38[rcx]
	mov	edx, r10d
	sub	eax, ecx
	shr	edx, 15
	mov	ecx, eax
	and	edx, 3
	sar	ecx, 31
	shr	ecx, 28
	add	eax, ecx
	and	eax, 15
	sub	eax, ecx
	and	r10d, 65536
	je	.L328
	mov	rcx, QWORD PTR .refptr.gDispCnt[rip]
	test	BYTE PTR [rcx], 3
	je	.L328
	sub	edx, 2
	sal	eax, 8
	sal	rdx, 4
	add	rdx, QWORD PTR .refptr.gBgAffineRegs[rip]
	mov	DWORD PTR 8[rdx], eax
	movsx	eax, WORD PTR 10[r8]
	sub	eax, r9d
	mov	ecx, eax
	sar	ecx, 31
	shr	ecx, 29
	add	eax, ecx
	and	eax, 7
	sub	eax, ecx
	sal	eax, 8
	mov	DWORD PTR 12[rdx], eax
.L326:
	ret
	.p2align 4,,10
	.p2align 3
.L328:
	mov	r10, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	WORD PTR [r10+rdx*4], ax
	movsx	eax, WORD PTR 10[r8]
	sub	eax, r9d
	mov	ecx, eax
	sar	ecx, 31
	shr	ecx, 29
	add	eax, ecx
	and	eax, 7
	sub	eax, ecx
	mov	WORD PTR 2[r10+rdx*4], ax
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80039E4
	.def	sub_80039E4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80039E4
sub_80039E4:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gBgSpritesCount[rip]
	mov	BYTE PTR [rax], 0
	mov	eax, 1
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8003EE4
	.def	sub_8003EE4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8003EE4
sub_8003EE4:
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
	.seh_endprologue
	mov	r13, QWORD PTR .refptr.gSineTable[rip]
	movzx	ebp, WORD PTR 96[rsp]
	movzx	edi, WORD PTR 104[rsp]
	mov	ebx, DWORD PTR 88[rsp]
	mov	r11, QWORD PTR 112[rsp]
	neg	ebp
	neg	edi
	movsx	ebp, bp
	movsx	edi, di
	movzx	r10d, cx
	mov	eax, edx
	lea	edx, 256[r10]
	movsx	rdx, edx
	movzx	r12d, WORD PTR 0[r13+rdx*2]
	sar	r12w, 6
	movsx	r12d, r12w
	test	ax, ax
	je	.L342
	movsx	ecx, ax
	xor	edx, edx
	mov	eax, 65536
	mov	esi, r12d
	idiv	ecx
	cwde
	imul	esi, eax
	sar	esi, 8
	mov	edx, esi
	movsx	esi, si
	imul	esi, ebp
.L340:
	movsx	r10d, WORD PTR 0[r13+r10*2]
	mov	WORD PTR [r11], dx
	mov	ecx, r10d
	sar	cx, 6
	movsx	ecx, cx
	imul	ecx, eax
	sar	ecx, 8
	mov	WORD PTR 2[r11], cx
	test	r8w, r8w
	je	.L343
	movsx	r8d, r8w
	mov	eax, 65536
	xor	edx, edx
	neg	r10d
	idiv	r8d
	sar	r10d, 6
	cwde
	imul	r10d, eax
	imul	r12d, eax
	sar	r10d, 8
	sar	r12d, 8
	mov	edx, r10d
	movsx	r10d, r10w
	mov	eax, r12d
	imul	r10d, ebp
	movsx	r12d, r12w
	imul	r12d, edi
	lea	r8d, [r10+r12]
	movd	xmm1, r8d
.L341:
	movsx	ecx, cx
	mov	WORD PTR 6[r11], ax
	movsx	ebx, bx
	imul	ecx, edi
	movd	xmm2, ebx
	mov	WORD PTR 4[r11], dx
	lea	eax, [rcx+rsi]
	movd	xmm0, eax
	movsx	eax, r9w
	punpckldq	xmm0, xmm1
	movd	xmm1, eax
	punpckldq	xmm1, xmm2
	pslld	xmm1, 8
	paddd	xmm0, xmm1
	movq	QWORD PTR 8[r11], xmm0
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L342:
	xor	esi, esi
	xor	edx, edx
	xor	eax, eax
	jmp	.L340
	.p2align 4,,10
	.p2align 3
.L343:
	pxor	xmm1, xmm1
	xor	eax, eax
	xor	edx, edx
	jmp	.L341
	.seh_endproc
	.p2align 4
	.globl	sub_8004010
	.def	sub_8004010;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8004010
sub_8004010:
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
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	mov	rdi, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	xor	r14d, r14d
	mov	rsi, rax
	mov	QWORD PTR 40[rsp], rax
.L355:
	movzx	ebx, BYTE PTR 1[rsi]
	movzx	edx, BYTE PTR 3[rsi]
	movzx	eax, BYTE PTR [rsi]
	cmp	bl, dl
	je	.L367
.L345:
	mov	rcx, QWORD PTR .refptr.gBgCntRegs[rip]
	movzx	ecx, WORD PTR [rcx+r14*2]
	cmp	r14, 1
	jbe	.L347
	mov	r10, QWORD PTR .refptr.gDispCnt[rip]
	test	BYTE PTR [r10], 3
	je	.L347
	lea	r8, 0[0+rcx*4]
	mov	r11, QWORD PTR .refptr.VRAM[rip]
	movzx	r9d, al
	and	r8d, 64512
	add	r8, r9
	lea	r12, [r11+r8*2]
	cmp	dl, -1
	je	.L348
	mov	r15d, r14d
	lea	r13d, 0[0+r14*4]
	lea	rbp, 60[rsp]
	cmp	bl, dl
	jb	.L352
	jmp	.L350
	.p2align 4,,10
	.p2align 3
.L368:
	movzx	eax, BYTE PTR [rsi]
.L352:
	movzx	ecx, BYTE PTR [rdi]
	mov	edx, ecx
	sal	edx, 8
	add	edx, ecx
	mov	ecx, 3
	mov	WORD PTR 60[rsp], dx
	movzx	edx, al
	mov	eax, r13d
	sub	eax, edx
	mov	rdx, rbp
	add	eax, 1
	mov	r9d, eax
	shr	r9d, 31
	add	r9d, eax
	movzx	eax, bl
	add	ebx, 1
	imul	eax, r15d
	sar	r9d
	or	r9d, -2130706432
	cdqe
	lea	r8, [r12+rax]
	call	DmaSet
	cmp	bl, BYTE PTR 3[rsi]
	jb	.L368
	.p2align 4,,10
	.p2align 3
.L350:
	mov	r9d, -2063597567
	mov	r8, rsi
	mov	rdx, rbp
	mov	ecx, 3
	mov	DWORD PTR 60[rsp], 0
	call	DmaSet
.L346:
	add	r14, 1
	add	rsi, 4
	add	rdi, 1
	cmp	r14, 4
	jne	.L355
	mov	eax, 1
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
.L347:
	mov	rcx, QWORD PTR .refptr.gBgCntRegs[rip]
	lea	rbp, 60[rsp]
	movzx	eax, WORD PTR [rcx+rax*2]
	shr	ax, 14
	sub	eax, 2
	cmp	al, 2
	sbb	eax, eax
	and	eax, 32
	add	eax, 32
	cmp	BYTE PTR 2[rsi], -1
	je	.L350
	cmp	dl, bl
	jb	.L350
	cdqe
	lea	r12, [rax+r14*4]
	mov	rax, QWORD PTR 40[rsp]
	add	r12, rax
	.p2align 4,,10
	.p2align 3
.L354:
	movzx	eax, BYTE PTR [rdi]
	mov	r9d, -2130706430
	mov	r8, r12
	mov	rdx, rbp
	mov	ecx, 3
	add	ebx, 1
	mov	WORD PTR 60[rsp], ax
	call	DmaSet
	cmp	BYTE PTR 3[rsi], bl
	jnb	.L354
	jmp	.L350
	.p2align 4,,10
	.p2align 3
.L367:
	cmp	BYTE PTR 2[rsi], al
	jne	.L345
	jmp	.L346
	.p2align 4,,10
	.p2align 3
.L348:
	shr	cx, 14
	not	ebx
	lea	rbp, 60[rsp]
	mov	eax, 16
	movzx	ecx, cx
	movzx	r9d, bl
	sal	eax, cl
	movzx	ecx, BYTE PTR [rdi]
	imul	r9d, eax
	cdqe
	mov	edx, ecx
	lea	r8, [r12+rax]
	sal	edx, 8
	add	edx, ecx
	sar	r9d, 2
	mov	ecx, 3
	mov	WORD PTR 60[rsp], dx
	or	r9d, -2130706432
	mov	rdx, rbp
	call	DmaSet
	jmp	.L350
	.seh_endproc
	.p2align 4
	.globl	RenderText
	.def	RenderText;	.scl	2;	.type	32;	.endef
	.seh_proc	RenderText
RenderText:
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
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	r12d, DWORD PTR 176[rsp]
	mov	rbp, rdx
	sal	r9, 5
	movzx	r8d, r8w
	mov	rdi, rcx
	movzx	edx, BYTE PTR 160[rsp]
	and	r9d, 2097120
	mov	rcx, QWORD PTR .refptr.VRAM[rip]
	add	r9, r8
	movzx	eax, WORD PTR [rax+rdx*2]
	mov	QWORD PTR 40[rsp], rcx
	mov	esi, eax
	sal	eax, 3
	and	eax, 63488
	sal	esi, 12
	lea	r15, [rax+r9*2]
	mov	rax, QWORD PTR 168[rsp]
	and	esi, 49152
	add	rsi, rcx
	movzx	edx, BYTE PTR [rax]
	test	dl, dl
	je	.L372
	sal	r12d, 12
	xor	r13d, r13d
	xor	r14d, r14d
	.p2align 4,,10
	.p2align 3
.L371:
	mov	rbx, r13
	movsx	ecx, dl
	mov	r8d, 8
	sal	rbx, 5
	sal	ecx, 5
	and	ebx, 8160
	movsx	rcx, ecx
	add	rbx, rdi
	add	rcx, rbp
	mov	rdx, rbx
	sub	rbx, rsi
	call	CpuFastSet
	sar	rbx
	mov	rax, QWORD PTR 40[rsp]
	lea	rcx, [r15+r14*2]
	lea	rdx, 15[rbx]
	cmovns	rdx, rbx
	add	r13d, 1
	movzx	r14d, r13b
	sar	rdx, 4
	or	edx, r12d
	mov	WORD PTR [rcx+rax], dx
	mov	rax, QWORD PTR 168[rsp]
	movzx	edx, BYTE PTR [rax+r14]
	test	dl, dl
	jne	.L371
	movzx	eax, r13b
	sal	eax, 5
.L369:
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
.L372:
	xor	eax, eax
	jmp	.L369
	.seh_endproc
	.globl	animCmdTable_BG
	.section .rdata,"dr"
	.align 32
animCmdTable_BG:
	.quad	animCmd_GetTiles_BG
	.quad	animCmd_GetPalette_BG
	.quad	animCmd_JumpBack_BG
	.quad	animCmd_End_BG
	.quad	animCmd_PlaySoundEffect_BG
	.quad	animCmd_AddHitbox_BG
	.quad	animCmd_TranslateSprite_BG
	.quad	animCmd_8_BG
	.quad	animCmd_SetIdAndVariant_BG
	.quad	animCmd_10_BG
	.quad	animCmd_SetSpritePriority_BG
	.quad	animCmd_SetOamOrder_BG
	.align 4
.LC0:
	.word	7
	.word	7
	.ident	"GCC: (GNU) 13-win32"
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	CpuFastSet;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gBgSprites_Unknown1, "dr"
	.globl	.refptr.gBgSprites_Unknown1
	.linkonce	discard
.refptr.gBgSprites_Unknown1:
	.quad	gBgSprites_Unknown1
	.section	.rdata$.refptr.gBgSprites_Unknown2, "dr"
	.globl	.refptr.gBgSprites_Unknown2
	.linkonce	discard
.refptr.gBgSprites_Unknown2:
	.quad	gBgSprites_Unknown2
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
	.section	.rdata$.refptr.gBgAffineRegs, "dr"
	.globl	.refptr.gBgAffineRegs
	.linkonce	discard
.refptr.gBgAffineRegs:
	.quad	gBgAffineRegs
	.section	.rdata$.refptr.gBgSprites, "dr"
	.globl	.refptr.gBgSprites
	.linkonce	discard
.refptr.gBgSprites:
	.quad	gBgSprites
	.section	.rdata$.refptr.gBgSpritesCount, "dr"
	.globl	.refptr.gBgSpritesCount
	.linkonce	discard
.refptr.gBgSpritesCount:
	.quad	gBgSpritesCount
	.section	.rdata$.refptr.gBgScrollRegs, "dr"
	.globl	.refptr.gBgScrollRegs
	.linkonce	discard
.refptr.gBgScrollRegs:
	.quad	gBgScrollRegs
	.section	.rdata$.refptr.gDispCnt, "dr"
	.globl	.refptr.gDispCnt
	.linkonce	discard
.refptr.gDispCnt:
	.quad	gDispCnt
	.section	.rdata$.refptr.gBgCntRegs, "dr"
	.globl	.refptr.gBgCntRegs
	.linkonce	discard
.refptr.gBgCntRegs:
	.quad	gBgCntRegs
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
	.section	.rdata$.refptr.gBackgroundsCopyQueueCursor, "dr"
	.globl	.refptr.gBackgroundsCopyQueueCursor
	.linkonce	discard
.refptr.gBackgroundsCopyQueueCursor:
	.quad	gBackgroundsCopyQueueCursor
	.section	.rdata$.refptr.gBackgroundsCopyQueue, "dr"
	.globl	.refptr.gBackgroundsCopyQueue
	.linkonce	discard
.refptr.gBackgroundsCopyQueue:
	.quad	gBackgroundsCopyQueue
	.section	.rdata$.refptr.gBackgroundsCopyQueueIndex, "dr"
	.globl	.refptr.gBackgroundsCopyQueueIndex
	.linkonce	discard
.refptr.gBackgroundsCopyQueueIndex:
	.quad	gBackgroundsCopyQueueIndex
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
	.section	.rdata$.refptr.gBgPalette, "dr"
	.globl	.refptr.gBgPalette
	.linkonce	discard
.refptr.gBgPalette:
	.quad	gBgPalette
	.section	.rdata$.refptr.gVramGraphicsCopyQueue, "dr"
	.globl	.refptr.gVramGraphicsCopyQueue
	.linkonce	discard
.refptr.gVramGraphicsCopyQueue:
	.quad	gVramGraphicsCopyQueue
	.section	.rdata$.refptr.gVramGraphicsCopyQueueBuffer, "dr"
	.globl	.refptr.gVramGraphicsCopyQueueBuffer
	.linkonce	discard
.refptr.gVramGraphicsCopyQueueBuffer:
	.quad	gVramGraphicsCopyQueueBuffer
	.section	.rdata$.refptr.gVramGraphicsCopyQueueIndex, "dr"
	.globl	.refptr.gVramGraphicsCopyQueueIndex
	.linkonce	discard
.refptr.gVramGraphicsCopyQueueIndex:
	.quad	gVramGraphicsCopyQueueIndex
	.section	.rdata$.refptr.gRefSpriteTables, "dr"
	.globl	.refptr.gRefSpriteTables
	.linkonce	discard
.refptr.gRefSpriteTables:
	.quad	gRefSpriteTables
