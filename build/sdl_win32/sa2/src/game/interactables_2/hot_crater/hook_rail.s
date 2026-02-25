	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	sub_8072FD4;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8072FD4
sub_8072FD4:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.def	sub_8072FD8;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8072FD8
sub_8072FD8:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	cmp	BYTE PTR 16[rcx], 0
	mov	r8d, DWORD PTR [rcx]
	movd	xmm0, DWORD PTR 16[rdx]
	jne	.L4
	movsx	eax, WORD PTR 8[rcx]
	add	eax, r8d
	mov	r8d, 109
	sal	eax, 8
.L5:
	mov	DWORD PTR 12[rdx], eax
	movd	xmm1, eax
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	punpckldq	xmm1, xmm0
	mov	rax, QWORD PTR [rax]
	movq	QWORD PTR 20[rcx], xmm1
	mov	BYTE PTR 40[rdx], r8b
	lea	rdx, sub_8072C90[rip]
	mov	QWORD PTR 40[rax], rdx
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	movsx	eax, WORD PTR 12[rcx]
	add	eax, r8d
	mov	r8d, 19
	sal	eax, 8
	jmp	.L5
	.seh_endproc
	.p2align 4
	.def	sub_80731D4;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_80731D4
sub_80731D4:
	.seh_endprologue
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	movzx	eax, BYTE PTR 40[rcx]
	movsx	r8d, WORD PTR 24[rcx]
	lea	edx, 256[0+rax*4]
	movsx	rax, edx
	sub	edx, 256
	movzx	eax, WORD PTR [r9+rax*2]
	movsx	rdx, edx
	sar	ax, 6
	cwde
	imul	eax, r8d
	sar	eax, 8
	mov	WORD PTR 20[rcx], ax
	movzx	eax, WORD PTR [r9+rdx*2]
	sar	ax, 6
	cwde
	imul	eax, r8d
	sar	eax, 8
	mov	WORD PTR 22[rcx], ax
	ret
	.seh_endproc
	.p2align 4
	.def	sub_8072DCC;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8072DCC
sub_8072DCC:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	mov	eax, 55
	mov	WORD PTR 108[rbx], ax
	or	DWORD PTR 36[rbx], 4194304
	mov	rsi, rcx
	mov	rcx, rbx
	call	Player_TransitionCancelFlyingAndBoost
	mov	edx, 14
	mov	rcx, rbx
	call	Player_HandleSpriteYOffsetChange
	mov	edx, 3590
	mov	WORD PTR 26[rbx], dx
	mov	eax, DWORD PTR 4[rsi]
	mov	edx, DWORD PTR 36[rbx]
	mov	DWORD PTR 28[rsi], 0
	add	eax, 20
	sal	eax, 8
	mov	DWORD PTR 16[rbx], eax
	cmp	BYTE PTR 16[rsi], 0
	jne	.L8
	and	edx, -5
	movzx	eax, WORD PTR 20[rbx]
	or	edx, 1
	mov	DWORD PTR 36[rbx], edx
	mov	edx, -256
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, -128
.L9:
	mov	ecx, 283
	mov	WORD PTR 24[rbx], ax
	lea	rsi, sub_8072BB8[rip]
	mov	BYTE PTR 40[rbx], dl
	call	m4aSongNumStart
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	and	edx, -6
	movzx	eax, WORD PTR 20[rbx]
	mov	DWORD PTR 36[rbx], edx
	mov	edx, 256
	cmp	ax, dx
	cmovl	eax, edx
	xor	edx, edx
	jmp	.L9
	.seh_endproc
	.p2align 4
	.def	IsPlayerTouching.part.0;	.scl	3;	.type	32;	.endef
	.seh_proc	IsPlayerTouching.part.0
IsPlayerTouching.part.0:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r10, QWORD PTR .refptr.gCamera[rip]
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	xor	r11d, r11d
	movzx	esi, WORD PTR [rcx]
	movsx	r8d, WORD PTR 8[rcx]
	sub	si, WORD PTR [r10]
	movzx	edi, WORD PTR 13[r9]
	movsx	edx, si
	sub	di, WORD PTR [r10]
	lea	ebx, [rdx+r8]
	mov	rax, rcx
	movsx	ecx, di
	cmp	ebx, ecx
	jg	.L10
	movsx	ebx, WORD PTR 12[rax]
	add	edx, ebx
	cmp	ecx, edx
	jg	.L10
	mov	r10d, DWORD PTR 4[r10]
	movzx	ecx, WORD PTR 4[rax]
	movzx	edx, WORD PTR 17[r9]
	movsx	r9d, WORD PTR 10[rax]
	sub	ecx, r10d
	movsx	ecx, cx
	sub	edx, r10d
	movsx	edx, dx
	add	r9d, ecx
	cmp	r9d, edx
	jg	.L10
	movsx	eax, WORD PTR 14[rax]
	add	eax, ecx
	cmp	edx, eax
	jg	.L10
	add	r8d, ebx
	xor	r11d, r11d
	sar	r8d
	lea	eax, [rsi+r8]
	cmp	di, ax
	setge	r11b
	add	r11d, 1
.L10:
	mov	eax, r11d
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.def	sub_8072BB8;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8072BB8
sub_8072BB8:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	r10, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rbx]
	mov	r11, QWORD PTR 24[rax]
	mov	eax, DWORD PTR 36[r10]
	test	al, -128
	jne	.L28
	cmp	WORD PTR 48[r10], 120
	je	.L29
	mov	rcx, QWORD PTR .refptr.gPlayerControls[rip]
	movzx	edx, WORD PTR 102[r10]
	and	dx, WORD PTR [rcx]
	je	.L21
	and	eax, -4194305
	mov	BYTE PTR 117[r10], 3
	mov	DWORD PTR 36[r10], eax
.L25:
	mov	ecx, 283
	call	m4aSongNumStop
	mov	rax, QWORD PTR [rbx]
	lea	rbx, sub_8073320[rip]
	mov	QWORD PTR 40[rax], rbx
.L17:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L21:
	call	sub_80731D4
	movsx	eax, WORD PTR 20[r10]
	movq	xmm1, QWORD PTR 12[r10]
	mov	edx, 2304
	movzx	ecx, WORD PTR 24[r10]
	movd	xmm0, eax
	movsx	eax, WORD PTR 22[r10]
	cmp	cx, dx
	movd	xmm2, eax
	cmovle	edx, ecx
	cmp	BYTE PTR 98[r10], 0
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	movd	eax, xmm0
	movq	QWORD PTR 12[r10], xmm0
	je	.L23
	mov	edx, 3840
	cmp	cx, dx
	cmovle	edx, ecx
.L23:
	mov	WORD PTR 24[r10], dx
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	sar	eax, 8
	mov	ecx, DWORD PTR [rdx]
	movzx	edx, WORD PTR [r11]
	sub	eax, ecx
	sub	edx, ecx
	cmp	BYTE PTR 16[r11], 0
	cwde
	movsx	edx, dx
	je	.L30
	movsx	ecx, WORD PTR 12[r11]
	add	edx, ecx
	cmp	edx, eax
	jge	.L17
.L26:
	mov	rcx, r11
	add	rsp, 32
	pop	rbx
	jmp	sub_8072FD8
	.p2align 4,,10
	.p2align 3
.L28:
	mov	ecx, 283
	call	m4aSongNumStop
	mov	rax, QWORD PTR [rbx]
	lea	rbx, sub_8072F38[rip]
	mov	QWORD PTR 40[rax], rbx
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L30:
	movsx	ecx, WORD PTR 8[r11]
	add	edx, ecx
	cmp	edx, eax
	jg	.L26
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L29:
	and	eax, -4194305
	mov	DWORD PTR 36[r10], eax
	jmp	.L25
	.seh_endproc
	.p2align 4
	.def	sub_8072C90;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8072C90
sub_8072C90:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	r10, QWORD PTR .refptr.gPlayer[rip]
	mov	rcx, QWORD PTR [rbx]
	mov	eax, DWORD PTR 36[r10]
	mov	r11, QWORD PTR 24[rcx]
	test	al, -128
	jne	.L46
	cmp	WORD PTR 48[r10], 120
	je	.L47
	mov	r8, QWORD PTR .refptr.gPlayerControls[rip]
	movzx	edx, WORD PTR 102[r10]
	and	dx, WORD PTR [r8]
	jne	.L48
	movzx	eax, BYTE PTR 40[r10]
	cmp	al, 109
	je	.L36
	cmp	al, 19
	je	.L36
	lea	rax, sub_8072F38[rip]
	mov	QWORD PTR 40[rcx], rax
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L48:
	and	eax, -4194305
	mov	BYTE PTR 117[r10], 3
	mov	DWORD PTR 36[r10], eax
.L45:
	mov	ecx, 283
	call	m4aSongNumStop
	mov	rax, QWORD PTR [rbx]
	lea	rbx, sub_8073320[rip]
	mov	QWORD PTR 40[rax], rbx
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L46:
	mov	ecx, 283
	call	m4aSongNumStop
	mov	rax, QWORD PTR [rbx]
	lea	rcx, sub_8072F38[rip]
	mov	QWORD PTR 40[rax], rcx
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L47:
	and	eax, -4194305
	mov	DWORD PTR 36[r10], eax
	jmp	.L45
	.p2align 4,,10
	.p2align 3
.L36:
	call	sub_80731D4
	movsx	eax, WORD PTR 20[r10]
	add	eax, DWORD PTR 28[r11]
	mov	edx, eax
	mov	DWORD PTR 28[r11], eax
	movd	xmm0, eax
	movq	xmm1, QWORD PTR 20[r11]
	neg	edx
	cmovs	edx, eax
	movzx	eax, WORD PTR 24[r10]
	sar	edx
	movd	xmm2, edx
	lea	edx, 21[rax]
	mov	eax, 2304
	punpckldq	xmm0, xmm2
	cmp	dx, ax
	paddd	xmm0, xmm1
	cmovle	eax, edx
	cmp	BYTE PTR 98[r10], 0
	movq	QWORD PTR 12[r10], xmm0
	je	.L38
	mov	eax, 3840
	cmp	dx, ax
	cmovle	eax, edx
.L38:
	mov	WORD PTR 24[r10], ax
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	sub_8073320;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8073320
sub_8073320:
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
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	test	BYTE PTR 36[rax], -128
	jne	.L54
	mov	rcx, rbx
	call	IsPlayerTouching.part.0
	test	eax, eax
	je	.L55
.L52:
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, 128
	mov	ecx, DWORD PTR 4[rbx]
	mov	r9d, eax
	mov	r8d, DWORD PTR 4[rdx]
	sub	r9w, WORD PTR [rdx]
	movzx	edx, WORD PTR [rbx]
	add	edx, r9d
	cmp	dx, 682
	ja	.L53
	sub	eax, r8d
	add	eax, ecx
	cmp	ax, 496
	ja	.L53
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L53:
	mov	rax, QWORD PTR 32[rbx]
	movzx	edx, BYTE PTR 40[rbx]
	mov	BYTE PTR [rax], dl
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L55:
	mov	ecx, 283
	call	m4aSongNumStop
	mov	rax, QWORD PTR [rsi]
	lea	rcx, sub_8072F38[rip]
	mov	QWORD PTR 40[rax], rcx
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L54:
	mov	ecx, 283
	call	m4aSongNumStop
	mov	rax, QWORD PTR [rsi]
	lea	rsi, sub_8072F38[rip]
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	sub_8072D40;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8072D40
sub_8072D40:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	r10, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rbx]
	mov	r11d, DWORD PTR 36[r10]
	mov	rsi, QWORD PTR 24[rax]
	test	r11b, -128
	jne	.L66
	cmp	WORD PTR 48[r10], 120
	je	.L68
	mov	rdx, QWORD PTR .refptr.gPlayerControls[rip]
	movzx	eax, WORD PTR 102[r10]
	and	ax, WORD PTR [rdx]
	je	.L60
	and	r11d, -4194305
	mov	BYTE PTR 117[r10], 3
	mov	DWORD PTR 36[r10], r11d
.L66:
	mov	ecx, 283
	lea	rsi, sub_8072F8C[rip]
	call	m4aSongNumStop
	mov	rax, QWORD PTR [rbx]
	mov	QWORD PTR 40[rax], rsi
.L56:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L60:
	call	sub_80731D4
	movsx	eax, WORD PTR 20[r10]
	movq	xmm1, QWORD PTR 12[r10]
	mov	edx, 2304
	movzx	ecx, WORD PTR 24[r10]
	movd	xmm0, eax
	movsx	eax, WORD PTR 22[r10]
	cmp	cx, dx
	movd	xmm2, eax
	cmovle	edx, ecx
	cmp	BYTE PTR 98[r10], 0
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	movd	eax, xmm0
	movq	QWORD PTR 12[r10], xmm0
	je	.L62
	mov	edx, 3840
	cmp	cx, dx
	cmovle	edx, ecx
.L62:
	mov	WORD PTR 24[r10], dx
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	sar	eax, 8
	mov	r9d, DWORD PTR 4[rsi]
	mov	ecx, DWORD PTR [rdx]
	mov	r8d, DWORD PTR 4[rdx]
	movzx	edx, WORD PTR [rsi]
	sub	eax, ecx
	sub	edx, ecx
	movsx	ecx, WORD PTR 8[rsi]
	cwde
	movsx	edx, dx
	add	ecx, edx
	cmp	ecx, eax
	jg	.L63
	movsx	ecx, WORD PTR 12[rsi]
	add	edx, ecx
	cmp	eax, edx
	jg	.L63
	pshufd	xmm3, xmm0, 0xe5
	movd	eax, xmm3
	movsx	edx, WORD PTR 10[rsi]
	sub	r9d, r8d
	sar	eax, 8
	movsx	r9d, r9w
	sub	eax, r8d
	add	edx, r9d
	cwde
	cmp	edx, eax
	jle	.L69
	.p2align 4,,10
	.p2align 3
.L63:
	mov	eax, 14
	mov	edx, 109
	mov	BYTE PTR 117[r10], 5
	and	r11d, -4194305
	mov	WORD PTR 108[r10], ax
	cmp	BYTE PTR 40[r10], -128
	mov	eax, 19
	cmove	eax, edx
	mov	DWORD PTR 36[r10], r11d
	mov	BYTE PTR 40[r10], al
	call	sub_80731D4
.L67:
	mov	ecx, 283
	call	m4aSongNumStop
	mov	rax, QWORD PTR [rbx]
	lea	rbx, sub_8072F8C[rip]
	mov	QWORD PTR 40[rax], rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L68:
	and	r11d, -4194305
	mov	DWORD PTR 36[r10], r11d
	jmp	.L67
	.p2align 4,,10
	.p2align 3
.L69:
	movsx	edx, WORD PTR 14[rsi]
	add	edx, r9d
	cmp	eax, edx
	jle	.L56
	jmp	.L63
	.seh_endproc
	.p2align 4
	.def	sub_8072F38;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8072F38
sub_8072F38:
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
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	test	BYTE PTR 36[rax], -128
	jne	.L71
	mov	rcx, rbx
	call	IsPlayerTouching.part.0
	test	ax, ax
	je	.L71
	cmp	BYTE PTR 16[rbx], 0
	jne	.L72
	cmp	ax, 1
	je	.L75
.L71:
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, 128
	mov	ecx, DWORD PTR 4[rbx]
	mov	r9d, eax
	mov	r8d, DWORD PTR 4[rdx]
	sub	r9w, WORD PTR [rdx]
	movzx	edx, WORD PTR [rbx]
	add	edx, r9d
	cmp	dx, 682
	ja	.L73
	sub	eax, r8d
	add	eax, ecx
	cmp	ax, 496
	ja	.L73
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L73:
	mov	rax, QWORD PTR 32[rbx]
	movzx	edx, BYTE PTR 40[rbx]
	mov	BYTE PTR [rax], dl
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L72:
	cmp	ax, 2
	jne	.L71
.L75:
	mov	rcx, rbx
	call	sub_8072DCC
	jmp	.L71
	.seh_endproc
	.p2align 4
	.def	sub_8072F8C;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8072F8C
sub_8072F8C:
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
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	mov	rdi, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rdi]
	test	BYTE PTR 36[rsi], -128
	jne	.L77
	mov	rcx, rbx
	call	IsPlayerTouching.part.0
	test	eax, eax
	je	.L77
	cmp	WORD PTR 108[rsi], 55
	je	.L83
.L77:
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, 128
	mov	ecx, DWORD PTR 4[rbx]
	mov	esi, eax
	mov	r8d, DWORD PTR 4[rdx]
	sub	si, WORD PTR [rdx]
	movzx	edx, WORD PTR [rbx]
	add	edx, esi
	cmp	dx, 682
	ja	.L78
	sub	eax, r8d
	add	eax, ecx
	cmp	ax, 496
	ja	.L78
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L78:
	mov	rax, QWORD PTR 32[rbx]
	movzx	edx, BYTE PTR 40[rbx]
	mov	rcx, rdi
	mov	BYTE PTR [rax], dl
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L83:
	mov	eax, DWORD PTR 4[rbx]
	add	eax, 20
	sal	eax, 8
	cmp	BYTE PTR 40[rsi], 109
	mov	DWORD PTR 16[rsi], eax
	sete	al
	sal	eax, 7
	mov	BYTE PTR 40[rsi], al
	lea	rax, sub_8072D40[rip]
	mov	QWORD PTR 40[rdi], rax
	jmp	.L77
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_HookRail
	.def	CreateEntity_HookRail;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_HookRail
CreateEntity_HookRail:
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
	mov	ebx, DWORD PTR 128[rsp]
	mov	r12d, ecx
	mov	rsi, rdx
	mov	edi, r8d
	mov	ebp, r9d
	cmp	ecx, 1
	ja	.L89
	lea	rax, sub_8072FD4[rip]
	xor	r9d, r9d
	mov	r8d, 8208
	mov	edx, 48
	mov	QWORD PTR 32[rsp], rax
	lea	rcx, sub_8072F38[rip]
	call	TaskCreate
.L88:
	mov	rdx, QWORD PTR 24[rax]
	movzx	edi, di
	movzx	ebp, bp
	sal	edi, 5
	sal	ebp, 5
	mov	BYTE PTR 16[rdx], r12b
	movzx	eax, BYTE PTR [rsi]
	movsx	r9w, BYTE PTR 4[rsi]
	movsx	r8w, BYTE PTR 3[rsi]
	add	edi, eax
	mov	ecx, eax
	movzx	r10d, BYTE PTR 5[rsi]
	sal	edi, 3
	sal	r9d, 3
	mov	DWORD PTR [rdx], edi
	movzx	eax, BYTE PTR 1[rsi]
	sal	r8d, 3
	lea	r10d, [r8+r10*8]
	movzx	r8d, r8w
	add	eax, ebp
	movzx	r10d, r10w
	sal	eax, 3
	mov	DWORD PTR 4[rdx], eax
	movzx	eax, BYTE PTR 6[rsi]
	mov	QWORD PTR 32[rdx], rsi
	lea	eax, [r9+rax*8]
	movzx	r9d, r9w
	movzx	eax, ax
	sal	rax, 16
	or	rax, r10
	sal	rax, 16
	or	rax, r9
	sal	rax, 16
	or	rax, r8
	mov	QWORD PTR 8[rdx], rax
	movzx	eax, cl
	mov	ah, bl
	mov	WORD PTR 40[rdx], ax
.L87:
	mov	BYTE PTR [rsi], -2
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L89:
	cmp	ecx, 2
	jne	.L87
	lea	rax, sub_8072FD4[rip]
	xor	r9d, r9d
	mov	r8d, 8208
	mov	edx, 48
	mov	QWORD PTR 32[rsp], rax
	lea	rcx, sub_8072F8C[rip]
	call	TaskCreate
	jmp	.L88
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_HookRail_Unused
	.def	CreateEntity_HookRail_Unused;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_HookRail_Unused
CreateEntity_HookRail_Unused:
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
	lea	rax, sub_8072FD4[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rsi, rcx
	mov	ebx, r9d
	mov	edi, edx
	xor	r9d, r9d
	mov	ebp, r8d
	mov	edx, 48
	movzx	edi, di
	mov	r8d, 8208
	lea	rcx, sub_8072F38[rip]
	sal	edi, 5
	movzx	ebp, bp
	call	TaskCreate
	sal	ebp, 5
	mov	rdx, QWORD PTR 24[rax]
	mov	BYTE PTR 16[rdx], 0
	movzx	eax, BYTE PTR [rsi]
	movsx	r9w, BYTE PTR 4[rsi]
	movsx	r8w, BYTE PTR 3[rsi]
	add	edi, eax
	mov	ecx, eax
	movzx	r10d, BYTE PTR 5[rsi]
	sal	edi, 3
	sal	r9d, 3
	mov	DWORD PTR [rdx], edi
	movzx	eax, BYTE PTR 1[rsi]
	sal	r8d, 3
	lea	r10d, [r8+r10*8]
	movzx	r8d, r8w
	add	ebp, eax
	movzx	eax, BYTE PTR 6[rsi]
	movzx	r10d, r10w
	mov	QWORD PTR 32[rdx], rsi
	sal	ebp, 3
	lea	eax, [r9+rax*8]
	movzx	r9d, r9w
	mov	DWORD PTR 4[rdx], ebp
	movzx	eax, ax
	sal	rax, 16
	or	rax, r10
	sal	rax, 16
	or	rax, r9
	sal	rax, 16
	or	rax, r8
	mov	QWORD PTR 8[rdx], rax
	movzx	eax, cl
	mov	ah, bl
	mov	WORD PTR 40[rdx], ax
	mov	BYTE PTR [rsi], -2
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_HookRail_Start
	.def	CreateEntity_HookRail_Start;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_HookRail_Start
CreateEntity_HookRail_Start:
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
	lea	rax, sub_8072FD4[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rsi, rcx
	mov	ebx, r9d
	mov	edi, edx
	xor	r9d, r9d
	mov	ebp, r8d
	mov	edx, 48
	movzx	edi, di
	mov	r8d, 8208
	lea	rcx, sub_8072F38[rip]
	sal	edi, 5
	movzx	ebp, bp
	call	TaskCreate
	sal	ebp, 5
	mov	rdx, QWORD PTR 24[rax]
	mov	BYTE PTR 16[rdx], 1
	movzx	eax, BYTE PTR [rsi]
	movsx	r9w, BYTE PTR 4[rsi]
	movsx	r8w, BYTE PTR 3[rsi]
	add	edi, eax
	mov	ecx, eax
	movzx	r10d, BYTE PTR 5[rsi]
	sal	edi, 3
	sal	r9d, 3
	mov	DWORD PTR [rdx], edi
	movzx	eax, BYTE PTR 1[rsi]
	sal	r8d, 3
	lea	r10d, [r8+r10*8]
	movzx	r8d, r8w
	add	ebp, eax
	movzx	eax, BYTE PTR 6[rsi]
	movzx	r10d, r10w
	mov	QWORD PTR 32[rdx], rsi
	sal	ebp, 3
	lea	eax, [r9+rax*8]
	movzx	r9d, r9w
	mov	DWORD PTR 4[rdx], ebp
	movzx	eax, ax
	sal	rax, 16
	or	rax, r10
	sal	rax, 16
	or	rax, r9
	sal	rax, 16
	or	rax, r8
	mov	QWORD PTR 8[rdx], rax
	movzx	eax, cl
	mov	ah, bl
	mov	WORD PTR 40[rdx], ax
	mov	BYTE PTR [rsi], -2
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_HookRail_End
	.def	CreateEntity_HookRail_End;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_HookRail_End
CreateEntity_HookRail_End:
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
	lea	rax, sub_8072FD4[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rsi, rcx
	mov	ebx, r9d
	mov	edi, edx
	xor	r9d, r9d
	mov	ebp, r8d
	mov	edx, 48
	movzx	edi, di
	mov	r8d, 8208
	lea	rcx, sub_8072F8C[rip]
	sal	edi, 5
	movzx	ebp, bp
	call	TaskCreate
	sal	ebp, 5
	mov	rdx, QWORD PTR 24[rax]
	mov	BYTE PTR 16[rdx], 2
	movzx	eax, BYTE PTR [rsi]
	movsx	r9w, BYTE PTR 4[rsi]
	movsx	r8w, BYTE PTR 3[rsi]
	add	edi, eax
	mov	ecx, eax
	movzx	r10d, BYTE PTR 5[rsi]
	sal	edi, 3
	sal	r9d, 3
	mov	DWORD PTR [rdx], edi
	movzx	eax, BYTE PTR 1[rsi]
	sal	r8d, 3
	lea	r10d, [r8+r10*8]
	movzx	r8d, r8w
	add	ebp, eax
	movzx	eax, BYTE PTR 6[rsi]
	movzx	r10d, r10w
	mov	QWORD PTR 32[rdx], rsi
	sal	ebp, 3
	lea	eax, [r9+rax*8]
	movzx	r9d, r9w
	mov	DWORD PTR 4[rdx], ebp
	movzx	eax, ax
	sal	rax, 16
	or	rax, r10
	sal	rax, 16
	or	rax, r9
	sal	rax, 16
	or	rax, r8
	mov	QWORD PTR 8[rdx], rax
	movzx	eax, cl
	mov	ah, bl
	mov	WORD PTR 40[rdx], ax
	mov	BYTE PTR [rsi], -2
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	Player_TransitionCancelFlyingAndBoost;	.scl	2;	.type	32;	.endef
	.def	Player_HandleSpriteYOffsetChange;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStop;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gPlayerControls, "dr"
	.globl	.refptr.gPlayerControls
	.linkonce	discard
.refptr.gPlayerControls:
	.quad	gPlayerControls
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
