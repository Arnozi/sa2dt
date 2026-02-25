	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	sub_8005C54
	.def	sub_8005C54;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8005C54
sub_8005C54:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8005FB4
	.def	sub_8005FB4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8005FB4
sub_8005FB4:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8006228
	.def	sub_8006228;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8006228
sub_8006228:
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
	.seh_endprologue
	mov	r14d, DWORD PTR 104[rsp]
	mov	edi, DWORD PTR 112[rsp]
	mov	ebp, edx
	mov	r10d, edx
	mov	rdx, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rdx], 4
	mov	rdx, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	mov	rdx, QWORD PTR [rdx]
	cmp	cl, 1
	jbe	.L5
	test	cl, 1
	jne	.L30
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	r15d, 8
	mov	r11d, 8
	add	rax, 64
.L6:
	mov	rcx, QWORD PTR .refptr.gHBlankCopySize[rip]
	movzx	r9d, r9b
	movzx	ebp, bpl
	movzx	r14d, r14b
	mov	r13d, r9d
	mov	esi, r14d
	mov	BYTE PTR [rcx], r11b
	mov	rcx, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	sub	r13d, ebp
	mov	QWORD PTR [rcx], rax
	mov	ecx, r13d
	movzx	eax, r8b
	movzx	r8d, r8b
	neg	cx
	cmovs	ecx, r13d
	sub	esi, eax
	mov	r12d, esi
	neg	r12w
	lea	ebx, [rcx+rcx]
	cmovs	r12d, esi
	imul	r8d, r15d
	lea	esi, [r12+r12]
	movsx	r8, r8d
	add	rdx, r8
	cmp	r12w, cx
	jnb	.L7
	mov	eax, ebp
	movzx	edi, dil
	movzx	ecx, cx
	sub	eax, r9d
	test	r13w, r13w
	jle	.L8
	mov	WORD PTR 2[rdx], di
	xor	r8d, r8d
	add	r10d, 1
	.p2align 4,,10
	.p2align 3
.L10:
	lea	ebp, [r10+r8]
	add	ax, si
	js	.L9
	movzx	r9d, bpl
	sub	eax, ebx
	mov	WORD PTR [rdx], r9w
	add	rdx, r11
	mov	WORD PTR 2[rdx], di
.L9:
	add	r8d, 1
	movsx	r9d, r8w
	cmp	r9d, ecx
	jl	.L10
	movzx	ebp, bpl
	mov	WORD PTR [rdx], bp
.L4:
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
.L30:
	add	rdx, 8
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	r15d, 8
	mov	r11d, 8
	add	rax, 64
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L7:
	sub	eax, r14d
	movzx	r9d, r12w
	test	r13w, r13w
	jle	.L31
	test	r12w, r12w
	je	.L4
	add	r11d, 1
	movzx	edi, dil
	xor	r8d, r8d
	movzx	r11d, r11b
	.p2align 4,,10
	.p2align 3
.L18:
	movzx	ecx, r10b
	mov	WORD PTR 2[rdx], di
	add	ecx, 1
	mov	WORD PTR [rdx], cx
	add	ax, bx
	js	.L17
	add	r10d, 1
	sub	eax, esi
.L17:
	add	r8d, 1
	add	rdx, r11
	movsx	ecx, r8w
	cmp	ecx, r9d
	jl	.L18
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
.L5:
	test	cl, cl
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	jne	.L22
	add	rax, 64
	mov	r15d, 4
	mov	r11d, 4
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L31:
	test	r12w, r12w
	je	.L4
	add	r11d, 1
	movzx	edi, dil
	xor	r8d, r8d
	movzx	r11d, r11b
	.p2align 4,,10
	.p2align 3
.L20:
	movzx	ecx, r10b
	mov	WORD PTR 2[rdx], di
	add	ecx, 1
	mov	WORD PTR [rdx], cx
	add	ax, bx
	js	.L19
	sub	r10d, 1
	sub	eax, esi
.L19:
	add	r8d, 1
	add	rdx, r11
	movsx	ecx, r8w
	cmp	ecx, r9d
	jl	.L20
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
	mov	WORD PTR [rdx], bp
	xor	r8d, r8d
	add	rdx, 2
	sub	r11, 1
	sub	r10d, 1
	.p2align 4,,10
	.p2align 3
.L13:
	add	ax, si
	js	.L12
	mov	r9d, r10d
	mov	WORD PTR [rdx], di
	add	rdx, r11
	sub	eax, ebx
	sub	r9d, r8d
	add	rdx, 2
	movzx	r9d, r9b
	mov	WORD PTR -2[rdx], r9w
.L12:
	add	r8d, 1
	movsx	r9d, r8w
	cmp	r9d, ecx
	jl	.L13
	mov	WORD PTR [rdx], di
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
.L22:
	add	rax, 68
	mov	r15d, 4
	mov	r11d, 4
	jmp	.L6
	.seh_endproc
	.p2align 4
	.globl	sub_80064A8
	.def	sub_80064A8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80064A8
sub_80064A8:
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
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 4
	mov	rax, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	mov	r14d, DWORD PTR 104[rsp]
	mov	edi, DWORD PTR 112[rsp]
	mov	r15, QWORD PTR [rax]
	mov	r10d, ecx
	mov	ebp, edx
	mov	ecx, edx
	cmp	r10b, 1
	jbe	.L33
	and	r10d, 1
	jne	.L58
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	edx, 8
	mov	r10d, 8
	add	rax, 64
.L34:
	mov	r11, QWORD PTR .refptr.gHBlankCopySize[rip]
	movzx	r9d, r9b
	movzx	ebp, bpl
	movzx	r14d, r14b
	mov	r13d, r9d
	mov	ebx, r14d
	sub	r13d, ebp
	mov	BYTE PTR [r11], r10b
	mov	r11, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	mov	esi, r13d
	neg	si
	mov	QWORD PTR [r11], rax
	movzx	eax, r8b
	movzx	r8d, r8b
	cmovs	esi, r13d
	sub	ebx, eax
	mov	r12d, ebx
	neg	r12w
	lea	r11d, [rsi+rsi]
	cmovs	r12d, ebx
	imul	edx, r8d
	lea	ebx, [r12+r12]
	movsx	rdx, edx
	add	rdx, r15
	cmp	r12w, si
	jnb	.L35
	mov	eax, ebp
	movzx	edi, dil
	movzx	esi, si
	sub	eax, r9d
	test	r13w, r13w
	jle	.L36
	mov	WORD PTR 2[rdx], bp
	xor	r8d, r8d
	add	ecx, 1
	.p2align 4,,10
	.p2align 3
.L38:
	add	ax, bx
	js	.L37
	lea	r9d, [rcx+r8]
	mov	WORD PTR [rdx], di
	add	rdx, r10
	sub	eax, r11d
	movzx	r9d, r9b
	mov	WORD PTR 2[rdx], r9w
.L37:
	add	r8d, 1
	movsx	r9d, r8w
	cmp	esi, r9d
	jg	.L38
	mov	WORD PTR [rdx], di
.L32:
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
.L58:
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	add	r15, 8
	mov	edx, 8
	mov	r10d, 8
	add	rax, 64
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L35:
	sub	eax, r14d
	movzx	r9d, r12w
	test	r13w, r13w
	jle	.L59
	test	r12w, r12w
	je	.L32
	add	r10d, 1
	movzx	edi, dil
	xor	r8d, r8d
	movzx	r10d, r10b
	.p2align 4,,10
	.p2align 3
.L46:
	movzx	esi, cl
	mov	WORD PTR [rdx], di
	mov	WORD PTR 2[rdx], si
	add	ax, r11w
	js	.L45
	add	ecx, 1
	sub	eax, ebx
.L45:
	add	r8d, 1
	add	rdx, r10
	movsx	esi, r8w
	cmp	esi, r9d
	jl	.L46
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
.L33:
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	test	r10b, r10b
	jne	.L50
	add	rax, 64
	mov	edx, 4
	mov	r10d, 4
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L59:
	test	r12w, r12w
	je	.L32
	add	r10d, 1
	movzx	edi, dil
	xor	r8d, r8d
	movzx	r10d, r10b
	.p2align 4,,10
	.p2align 3
.L48:
	movzx	esi, cl
	mov	WORD PTR [rdx], di
	mov	WORD PTR 2[rdx], si
	add	ax, r11w
	js	.L47
	sub	ecx, 1
	sub	eax, ebx
.L47:
	add	r8d, 1
	add	rdx, r10
	movsx	esi, r8w
	cmp	r9d, esi
	jg	.L48
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
.L36:
	mov	WORD PTR [rdx], di
	xor	r8d, r8d
	add	rdx, 2
	sub	ecx, 1
	sub	r10, 1
	.p2align 4,,10
	.p2align 3
.L41:
	mov	ebp, ecx
	sub	ebp, r8d
	add	ax, bx
	js	.L40
	movzx	r9d, bpl
	sub	eax, r11d
	mov	WORD PTR [rdx], r9w
	add	rdx, r10
	mov	WORD PTR [rdx], di
	add	rdx, 2
.L40:
	add	r8d, 1
	movsx	r9d, r8w
	cmp	esi, r9d
	jg	.L41
	movzx	ebp, bpl
	mov	WORD PTR [rdx], bp
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
.L50:
	add	rax, 68
	mov	edx, 4
	mov	r10d, 4
	jmp	.L34
	.seh_endproc
	.p2align 4
	.globl	sub_800672C
	.def	sub_800672C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_800672C
sub_800672C:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8006DB4
	.def	sub_8006DB4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8006DB4
sub_8006DB4:
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
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 4
	mov	rax, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	mov	r11, QWORD PTR [rax]
	mov	QWORD PTR 120[rsp], rdx
	cmp	cl, 1
	jbe	.L62
	and	ecx, 1
	jne	.L160
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	BYTE PTR 25[rsp], 8
	mov	ecx, 8
	add	rax, 64
.L63:
	mov	rdx, QWORD PTR .refptr.gHBlankCopySize[rip]
	movzx	esi, BYTE PTR 25[rsp]
	mov	rdi, QWORD PTR 120[rsp]
	mov	rbx, QWORD PTR 120[rsp]
	mov	BYTE PTR [rdx], sil
	mov	rdx, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR 120[rsp]
	movzx	edx, BYTE PTR 2[rdi]
	movzx	ebp, BYTE PTR [rdi]
	movzx	r14d, BYTE PTR 1[rax]
	movzx	r12d, BYTE PTR 5[rax]
	mov	edi, edx
	movzx	ebx, BYTE PTR 3[rbx]
	cmp	r12b, r14b
	movzx	eax, r14b
	mov	esi, r14d
	mov	r13d, r14d
	cmovbe	eax, r12d
	cmovnb	esi, r12d
	sub	edi, ebp
	mov	WORD PTR 28[rsp], bx
	mov	edx, edi
	mov	WORD PTR 12[rsp], di
	mov	BYTE PTR 16[rsp], al
	imul	eax, ecx
	mov	ecx, ebx
	mov	BYTE PTR 24[rsp], sil
	mov	esi, ebx
	cdqe
	add	r11, rax
	neg	dx
	mov	eax, ebp
	cmovs	edx, edi
	sub	ecx, r14d
	lea	edi, [rdx+rdx]
	mov	edx, ecx
	neg	dx
	mov	WORD PTR 26[rsp], di
	cmovs	edx, ecx
	lea	edi, [rdx+rdx]
	mov	WORD PTR 14[rsp], di
	mov	rdi, QWORD PTR 120[rsp]
	movzx	edx, BYTE PTR 4[rdi]
	movzx	ecx, BYTE PTR 6[rdi]
	movzx	edi, dl
	sub	ecx, edi
	mov	WORD PTR 30[rsp], di
	mov	rdi, QWORD PTR 120[rsp]
	mov	r15d, ecx
	mov	WORD PTR 10[rsp], cx
	movzx	ecx, r12b
	movzx	r10d, BYTE PTR 7[rdi]
	mov	edi, r10d
	mov	ebx, r10d
	mov	r10d, r15d
	neg	r10w
	cmovs	r10d, r15d
	lea	r15d, [r10+r10]
	mov	r10d, edi
	sub	r10d, ecx
	mov	r8d, r10d
	neg	r8w
	cmovns	r10d, r8d
	sub	r14w, WORD PTR 28[rsp]
	sub	ecx, ebx
	add	r10d, r10d
	cmp	r13b, r12b
	jnb	.L111
	movzx	r12d, BYTE PTR 24[rsp]
	cmp	BYTE PTR 16[rsp], r12b
	je	.L111
	movzx	r8d, BYTE PTR 16[rsp]
	movzx	ebx, BYTE PTR 24[rsp]
	cmp	r8b, bl
	jnb	.L109
	mov	BYTE PTR 28[rsp], dl
	mov	esi, r8d
	mov	edx, ebp
	movzx	r12d, BYTE PTR 25[rsp]
	mov	WORD PTR 30[rsp], cx
	movzx	edi, WORD PTR 26[rsp]
	mov	r13d, r9d
	mov	rbx, r11
	movzx	r8d, WORD PTR 14[rsp]
	movzx	ecx, BYTE PTR 24[rsp]
	movzx	ebp, WORD PTR 12[rsp]
	.p2align 4,,10
	.p2align 3
.L73:
	mov	WORD PTR [rbx], r13w
	mov	WORD PTR 2[rbx], dx
	add	r14w, di
	js	.L68
	mov	edx, r14d
	sub	edx, r8d
	test	bp, bp
	jle	.L69
	.p2align 4,,10
	.p2align 3
.L71:
	movzx	r14d, al
	cmp	r14d, r9d
	setl	r14b
	add	eax, r14d
	mov	r14d, edx
	sub	edx, r8d
	test	r14w, r14w
	jns	.L71
.L68:
	add	esi, 1
	add	rbx, r12
	cmp	cl, sil
	je	.L146
	.p2align 4,,10
	.p2align 3
.L162:
	movzx	edx, al
	jmp	.L73
	.p2align 4,,10
	.p2align 3
.L69:
	cmp	al, 1
	mov	r14d, edx
	adc	al, -1
	test	dx, dx
	js	.L68
.L161:
	movzx	r14d, al
	sub	edx, r8d
	cmp	al, 1
	mov	WORD PTR 2[rbx], r14w
	adc	al, -1
	mov	r14d, edx
	test	dx, dx
	jns	.L161
	add	esi, 1
	add	rbx, r12
	cmp	cl, sil
	jne	.L162
.L146:
	movzx	esi, BYTE PTR 24[rsp]
	movzx	edx, BYTE PTR 28[rsp]
	mov	WORD PTR 14[rsp], r8w
	movzx	ecx, WORD PTR 30[rsp]
	lea	ebx, -1[rsi]
	sub	bl, BYTE PTR 16[rsp]
	mov	rsi, QWORD PTR 120[rsp]
	movzx	ebx, bl
	add	rbx, 1
	movzx	edi, BYTE PTR 7[rsi]
	movzx	esi, BYTE PTR 3[rsi]
	imul	rbx, r12
	add	r11, rbx
	jmp	.L67
.L160:
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	BYTE PTR 25[rsp], 8
	add	r11, 4
	mov	ecx, 8
	add	rax, 64
	jmp	.L63
.L111:
	movzx	r8d, BYTE PTR 16[rsp]
	movzx	ebx, BYTE PTR 24[rsp]
	mov	rbp, r11
	movzx	r13d, BYTE PTR 25[rsp]
	mov	r12d, r8d
	cmp	r8b, bl
	jnb	.L163
	movzx	r8d, WORD PTR 14[rsp]
	movzx	edi, WORD PTR 10[rsp]
	movzx	esi, BYTE PTR 24[rsp]
	movzx	ebx, WORD PTR 30[rsp]
	jmp	.L79
	.p2align 4,,10
	.p2align 3
.L74:
	add	r12d, 1
	add	rbp, r13
	cmp	sil, r12b
	je	.L147
.L164:
	movzx	ebx, dl
.L79:
	mov	WORD PTR 0[rbp], bx
	xor	ebx, ebx
	mov	WORD PTR 2[rbp], bx
	add	cx, r15w
	js	.L74
	mov	ebx, ecx
	sub	ebx, r10d
	test	di, di
	jg	.L77
	.p2align 4,,10
	.p2align 3
.L75:
	cmp	dl, 1
	mov	ecx, ebx
	adc	dl, -1
	sub	ebx, r10d
	test	cx, cx
	jns	.L75
	add	r12d, 1
	add	rbp, r13
	cmp	sil, r12b
	jne	.L164
.L147:
	movzx	esi, BYTE PTR 24[rsp]
	mov	WORD PTR 14[rsp], r8w
	lea	ebx, -1[rsi]
	sub	bl, BYTE PTR 16[rsp]
	mov	rsi, QWORD PTR 120[rsp]
	movzx	ebx, bl
	add	rbx, 1
	movzx	edi, BYTE PTR 7[rsi]
	movzx	esi, BYTE PTR 3[rsi]
	imul	rbx, r13
	add	r11, rbx
.L67:
	cmp	dil, sil
	mov	ebp, esi
	movzx	r12d, BYTE PTR 24[rsp]
	cmovbe	ebp, edi
	cmp	r12b, bpl
	jnb	.L110
	mov	QWORD PTR 16[rsp], r11
	movzx	r13d, BYTE PTR 25[rsp]
	mov	rdi, r11
	movzx	esi, WORD PTR 26[rsp]
	movzx	r8d, WORD PTR 14[rsp]
	.p2align 4,,10
	.p2align 3
.L91:
	movzx	r11d, dl
	mov	WORD PTR [rdi], r11w
	movzx	r11d, al
	mov	WORD PTR 2[rdi], r11w
	lea	r11d, [rcx+r15]
	mov	ecx, r11d
	add	r14w, si
	js	.L81
	mov	ebx, r14d
	sub	ebx, r8d
	cmp	WORD PTR 12[rsp], 0
	jle	.L82
	.p2align 4,,10
	.p2align 3
.L84:
	movzx	r14d, al
	cmp	r14d, r9d
	setl	r14b
	add	eax, r14d
	mov	r14d, ebx
	sub	ebx, r8d
	test	r14w, r14w
	jns	.L84
	.p2align 4,,10
	.p2align 3
.L81:
	test	r11w, r11w
	js	.L86
	sub	r11d, r10d
	cmp	WORD PTR 10[rsp], 0
	jg	.L89
	.p2align 4,,10
	.p2align 3
.L87:
	cmp	dl, 1
	mov	ecx, r11d
	adc	dl, -1
	sub	r11d, r10d
	test	cx, cx
	jns	.L87
.L86:
	add	r12d, 1
	add	rdi, r13
	cmp	bpl, r12b
	jne	.L91
	mov	ebx, ebp
	sub	bl, BYTE PTR 24[rsp]
	mov	rsi, QWORD PTR 120[rsp]
	mov	WORD PTR 14[rsp], r8w
	movzx	ebx, bl
	mov	r11, QWORD PTR 16[rsp]
	imul	rbx, r13
	movzx	edi, BYTE PTR 7[rsi]
	movzx	esi, BYTE PTR 3[rsi]
	add	r11, rbx
.L80:
	cmp	dil, sil
	mov	ebx, esi
	cmovnb	ebx, edi
	jnb	.L92
	movzx	esi, BYTE PTR 25[rsp]
	mov	r10d, r9d
	cmp	bpl, bl
	jnb	.L61
	movzx	r12d, WORD PTR 12[rsp]
	movzx	edi, WORD PTR 26[rsp]
	movzx	r8d, WORD PTR 14[rsp]
	.p2align 4,,10
	.p2align 3
.L106:
	movzx	edx, al
	mov	WORD PTR [r11], r10w
	mov	WORD PTR 2[r11], dx
	add	r14w, di
	js	.L101
	mov	edx, r14d
	sub	edx, r8d
	test	r12w, r12w
	jle	.L102
	.p2align 4,,10
	.p2align 3
.L104:
	movzx	ecx, al
	mov	r14d, edx
	cmp	ecx, r9d
	setl	cl
	sub	edx, r8d
	add	eax, ecx
	test	r14w, r14w
	jns	.L104
.L101:
	add	ebp, 1
	add	r11, rsi
	cmp	bl, bpl
	jne	.L106
.L61:
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
.L77:
	movzx	ecx, dl
	cmp	ecx, r9d
	setl	cl
	add	edx, ecx
	mov	ecx, ebx
	test	bx, bx
	js	.L74
	movzx	ecx, dl
	sub	ebx, r10d
	add	ecx, 1
	mov	WORD PTR 0[rbp], cx
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L82:
	cmp	al, 1
	mov	r14d, ebx
	adc	al, -1
	test	bx, bx
	js	.L81
.L165:
	movzx	r14d, al
	sub	ebx, r8d
	cmp	al, 1
	mov	WORD PTR 2[rdi], r14w
	adc	al, -1
	mov	r14d, ebx
	test	bx, bx
	jns	.L165
	jmp	.L81
	.p2align 4,,10
	.p2align 3
.L89:
	movzx	ecx, dl
	cmp	ecx, r9d
	setl	cl
	add	edx, ecx
	mov	ecx, r11d
	test	r11w, r11w
	js	.L86
	movzx	ecx, dl
	sub	r11d, r10d
	add	ecx, 1
	mov	WORD PTR [rdi], cx
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L102:
	cmp	al, 1
	mov	r14d, edx
	adc	al, -1
	test	dx, dx
	js	.L101
.L166:
	movzx	ecx, al
	sub	edx, r8d
	cmp	al, 1
	mov	WORD PTR 2[r11], cx
	adc	al, -1
	mov	r14d, edx
	test	dx, dx
	jns	.L166
	add	ebp, 1
	add	r11, rsi
	cmp	bl, bpl
	jne	.L106
	jmp	.L61
.L92:
	cmp	bpl, bl
	jnb	.L61
	movzx	r8d, BYTE PTR 25[rsp]
	movzx	esi, WORD PTR 10[rsp]
	.p2align 4,,10
	.p2align 3
.L100:
	movzx	eax, dl
	mov	WORD PTR [r11], ax
	xor	eax, eax
	mov	WORD PTR 2[r11], ax
	add	cx, r15w
	js	.L95
	mov	eax, ecx
	sub	eax, r10d
	test	si, si
	jg	.L98
	.p2align 4,,10
	.p2align 3
.L96:
	cmp	dl, 1
	mov	ecx, eax
	adc	dl, -1
	sub	eax, r10d
	test	cx, cx
	jns	.L96
.L95:
	add	ebp, 1
	add	r11, r8
	cmp	bl, bpl
	jne	.L100
	jmp	.L61
	.p2align 4,,10
	.p2align 3
.L98:
	movzx	ecx, dl
	cmp	ecx, r9d
	setl	cl
	add	edx, ecx
	mov	ecx, eax
	test	ax, ax
	js	.L95
	movzx	ecx, dl
	sub	eax, r10d
	add	ecx, 1
	mov	WORD PTR [r11], cx
	jmp	.L98
.L62:
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	test	cl, cl
	jne	.L108
	mov	BYTE PTR 25[rsp], 4
	add	rax, 64
	mov	ecx, 4
	jmp	.L63
.L108:
	mov	BYTE PTR 25[rsp], 4
	add	rax, 68
	mov	ecx, 4
	jmp	.L63
.L110:
	movzx	ebp, BYTE PTR 24[rsp]
	jmp	.L80
.L163:
	mov	BYTE PTR 24[rsp], r8b
	jmp	.L67
.L109:
	movzx	ebx, BYTE PTR 16[rsp]
	mov	BYTE PTR 24[rsp], bl
	jmp	.L67
	.seh_endproc
	.p2align 4
	.globl	sub_800724C
	.def	sub_800724C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_800724C
sub_800724C:
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
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 4
	mov	rax, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	mov	r11, QWORD PTR [rax]
	mov	r14, rdx
	cmp	cl, 1
	jbe	.L168
	and	ecx, 1
	jne	.L219
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	BYTE PTR 17[rsp], 8
	mov	ecx, 8
	add	rax, 64
.L169:
	mov	rdx, QWORD PTR .refptr.gHBlankCopySize[rip]
	movzx	ebx, BYTE PTR 17[rsp]
	movzx	edi, WORD PTR 10[r14]
	movzx	r13d, WORD PTR 2[r14]
	movzx	r8d, WORD PTR [r14]
	movzx	r12d, WORD PTR 4[r14]
	mov	BYTE PTR [rdx], bl
	mov	rdx, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	cmp	di, r13w
	mov	ebx, r13d
	movzx	esi, WORD PTR 6[r14]
	cmovnb	ebx, edi
	mov	QWORD PTR [rdx], rax
	movzx	eax, r13w
	movzx	edx, WORD PTR 14[r14]
	cmovbe	eax, edi
	sub	r12d, r8d
	mov	WORD PTR 20[rsp], si
	mov	WORD PTR 18[rsp], dx
	mov	WORD PTR 14[rsp], ax
	imul	eax, ecx
	mov	ecx, r12d
	cdqe
	add	r11, rax
	neg	cx
	mov	eax, ecx
	mov	ecx, esi
	movzx	esi, WORD PTR 12[r14]
	cmovs	eax, r12d
	sub	ecx, r13d
	mov	r9d, ecx
	lea	r15d, [rax+rax]
	mov	eax, ecx
	movzx	ecx, WORD PTR 8[r14]
	neg	r9w
	cmovs	r9d, eax
	sub	esi, ecx
	mov	ebp, esi
	add	r9d, r9d
	neg	bp
	cmovs	ebp, esi
	sub	edx, edi
	mov	r10d, edx
	add	ebp, ebp
	neg	r10w
	mov	eax, r10d
	cmovs	eax, edx
	mov	edx, r13d
	sub	dx, WORD PTR 20[rsp]
	mov	WORD PTR 22[rsp], dx
	mov	edx, edi
	sub	dx, WORD PTR 18[rsp]
	lea	r10d, [rax+rax]
	cmp	WORD PTR 14[rsp], bx
	je	.L195
	cmp	r13w, di
	jnb	.L195
	movzx	r13d, WORD PTR 14[rsp]
	cmp	r13w, bx
	jnb	.L194
	mov	WORD PTR 18[rsp], si
	movzx	eax, BYTE PTR 17[rsp]
	mov	rdi, r11
	movzx	esi, WORD PTR 22[rsp]
	.p2align 4,,10
	.p2align 3
.L177:
	mov	WORD PTR [rdi], 426
	mov	WORD PTR 2[rdi], r8w
	add	si, r15w
	js	.L174
	sub	esi, r9d
	test	r12w, r12w
	jg	.L176
	jmp	.L175
	.p2align 4,,10
	.p2align 3
.L220:
	sub	esi, r9d
.L176:
	add	r8d, 1
	test	si, si
	jns	.L220
.L174:
	add	r13d, 1
	add	rdi, rax
	cmp	bx, r13w
	jne	.L177
.L224:
	lea	edi, -1[rbx]
	sub	di, WORD PTR 14[rsp]
	mov	WORD PTR 22[rsp], si
	movzx	edi, di
	movzx	esi, WORD PTR 18[rsp]
	add	rdi, 1
.L215:
	imul	rdi, rax
	movzx	eax, WORD PTR 14[r14]
	mov	WORD PTR 18[rsp], ax
	movzx	eax, WORD PTR 6[r14]
	add	r11, rdi
	mov	WORD PTR 20[rsp], ax
.L173:
	movzx	eax, WORD PTR 18[rsp]
	movzx	r14d, WORD PTR 20[rsp]
	movzx	r13d, BYTE PTR 17[rsp]
	cmp	ax, r14w
	cmovbe	r14d, eax
	cmp	bx, r14w
	jnb	.L167
	movzx	eax, WORD PTR 22[rsp]
	.p2align 4,,10
	.p2align 3
.L190:
	lea	edi, [rdx+rbp]
	mov	WORD PTR [r11], cx
	mov	WORD PTR 2[r11], r8w
	mov	edx, edi
	add	ax, r15w
	js	.L183
	sub	eax, r9d
	test	r12w, r12w
	jg	.L186
	jmp	.L184
	.p2align 4,,10
	.p2align 3
.L185:
	sub	eax, r9d
.L186:
	add	r8d, 1
	test	ax, ax
	jns	.L185
	.p2align 4,,10
	.p2align 3
.L183:
	test	di, di
	js	.L187
	sub	edi, r10d
	mov	edx, edi
	test	si, si
	jle	.L188
	jmp	.L221
	.p2align 4,,10
	.p2align 3
.L222:
	sub	edx, r10d
.L188:
	sub	ecx, 1
	test	dx, dx
	jns	.L222
.L187:
	add	ebx, 1
	add	r11, r13
	cmp	r14w, bx
	jne	.L190
.L167:
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
.L175:
	sub	r8d, 1
	test	si, si
	js	.L174
.L223:
	sub	esi, r9d
	mov	WORD PTR 2[rdi], r8w
	sub	r8d, 1
	test	si, si
	jns	.L223
	add	r13d, 1
	add	rdi, rax
	cmp	bx, r13w
	jne	.L177
	jmp	.L224
	.p2align 4,,10
	.p2align 3
.L184:
	sub	r8d, 1
	test	ax, ax
	js	.L183
.L225:
	sub	eax, r9d
	mov	WORD PTR 2[r11], r8w
	sub	r8d, 1
	test	ax, ax
	jns	.L225
	jmp	.L183
.L219:
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	BYTE PTR 17[rsp], 8
	add	r11, 4
	mov	ecx, 8
	add	rax, 64
	jmp	.L169
	.p2align 4,,10
	.p2align 3
.L221:
	mov	edi, ecx
	add	ecx, 1
	test	dx, dx
	js	.L187
.L226:
	add	edi, 2
	sub	edx, r10d
	mov	WORD PTR [r11], di
	mov	edi, ecx
	add	ecx, 1
	test	dx, dx
	jns	.L226
	add	ebx, 1
	add	r11, r13
	cmp	r14w, bx
	jne	.L190
	jmp	.L167
.L195:
	movzx	eax, BYTE PTR 17[rsp]
	mov	rdi, r11
	mov	QWORD PTR 24[rsp], rax
	movzx	eax, WORD PTR 14[rsp]
	mov	r13d, eax
	cmp	ax, bx
	jnb	.L227
	mov	WORD PTR 18[rsp], r12w
	mov	r12, QWORD PTR 24[rsp]
	jmp	.L181
	.p2align 4,,10
	.p2align 3
.L178:
	add	r13d, 1
	add	rdi, r12
	cmp	bx, r13w
	je	.L228
.L181:
	xor	eax, eax
	mov	WORD PTR [rdi], cx
	mov	WORD PTR 2[rdi], ax
	add	dx, bp
	js	.L178
	sub	edx, r10d
	test	si, si
	jle	.L179
	jmp	.L229
	.p2align 4,,10
	.p2align 3
.L230:
	sub	edx, r10d
.L179:
	sub	ecx, 1
	test	dx, dx
	jns	.L230
	add	r13d, 1
	add	rdi, r12
	cmp	bx, r13w
	jne	.L181
.L228:
	lea	edi, -1[rbx]
	sub	di, WORD PTR 14[rsp]
	movzx	r12d, WORD PTR 18[rsp]
	movzx	edi, di
	mov	rax, QWORD PTR 24[rsp]
	add	rdi, 1
	jmp	.L215
	.p2align 4,,10
	.p2align 3
.L229:
	mov	eax, ecx
	add	ecx, 1
	test	dx, dx
	js	.L178
.L231:
	add	eax, 2
	sub	edx, r10d
	mov	WORD PTR [rdi], ax
	mov	eax, ecx
	add	ecx, 1
	test	dx, dx
	jns	.L231
	jmp	.L178
.L168:
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	test	cl, cl
	jne	.L193
	mov	BYTE PTR 17[rsp], 4
	add	rax, 64
	mov	ecx, 4
	jmp	.L169
.L193:
	mov	BYTE PTR 17[rsp], 4
	add	rax, 68
	mov	ecx, 4
	jmp	.L169
.L227:
	mov	ebx, eax
	jmp	.L173
.L194:
	movzx	ebx, WORD PTR 14[rsp]
	jmp	.L173
	.seh_endproc
	.p2align 4
	.globl	sub_80075D0
	.def	sub_80075D0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80075D0
sub_80075D0:
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
	mov	eax, DWORD PTR 136[rsp]
	mov	edi, eax
	imul	edi, eax
	mov	ebx, r9d
	mov	r9, QWORD PTR .refptr.gFlags[rip]
	mov	r11d, ecx
	mov	r10d, edx
	mov	ecx, DWORD PTR 128[rsp]
	mov	esi, r8d
	or	DWORD PTR [r9], 4
	mov	r9, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	mov	r13, QWORD PTR [r9]
	cmp	r11b, 1
	jbe	.L233
	and	r11d, 1
	jne	.L247
	mov	r14, QWORD PTR .refptr.REG_BASE[rip]
	mov	r12d, 8
	mov	r9d, 8
	lea	r11, 64[r14]
.L234:
	mov	rbp, QWORD PTR .refptr.gHBlankCopySize[rip]
	movzx	edx, dl
	mov	BYTE PTR 0[rbp], r12b
	mov	r12, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	mov	QWORD PTR [r12], r11
	movsx	r12d, cx
	movzx	r11d, ax
	mov	r14d, r12d
	sub	r14d, edx
	cmp	r14d, r11d
	jle	.L235
	mov	r10d, ecx
	sub	r10d, eax
	movzx	edx, r10b
.L235:
	movzx	r8d, r8b
	add	eax, ecx
	sub	r8d, r12d
	cmp	r11d, r8d
	cmovl	esi, eax
	mov	eax, r9d
	imul	eax, edx
	cdqe
	add	r13, rax
	cmp	r10b, sil
	jnb	.L232
	movzx	eax, r10b
	sub	esi, r10d
	movzx	edi, di
	mov	r12d, eax
	sub	esi, 1
	sub	r12d, ecx
	movzx	esi, sil
	mov	eax, r12d
	lea	esi, 1[rsi+rax]
	jmp	.L240
	.p2align 4,,10
	.p2align 3
.L248:
	mov	ecx, 426
	cmp	dx, cx
	cmovg	edx, ecx
.L238:
	mov	WORD PTR 0[r13], dx
	mov	edx, ebx
	sub	edx, eax
	xor	eax, eax
	test	dx, dx
	cmovns	eax, edx
	cmp	dx, 427
	mov	edx, 426
	cmovl	edx, eax
	movzx	eax, BYTE PTR 0[rbp]
	add	r12d, 1
	mov	WORD PTR 2[r13], dx
	add	r13, rax
	cmp	si, r12w
	je	.L232
.L240:
	mov	eax, r12d
	mov	ecx, edi
	imul	eax, r12d
	cwde
	sub	ecx, eax
	call	Sqrt
	mov	edx, eax
	add	dx, bx
	jns	.L248
	xor	edx, edx
	jmp	.L238
	.p2align 4,,10
	.p2align 3
.L247:
	add	r13, 4
	mov	r14, QWORD PTR .refptr.REG_BASE[rip]
	mov	r12d, 8
	mov	r9d, 8
	lea	r11, 64[r14]
	jmp	.L234
	.p2align 4,,10
	.p2align 3
.L232:
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
.L233:
	mov	r14, QWORD PTR .refptr.REG_BASE[rip]
	mov	r12d, 4
	test	r11b, r11b
	jne	.L243
	lea	r11, 64[r14]
	mov	r9d, 4
	jmp	.L234
	.p2align 4,,10
	.p2align 3
.L243:
	lea	r11, 68[r14]
	mov	r9d, 4
	jmp	.L234
	.seh_endproc
	.p2align 4
	.globl	sub_8007738
	.def	sub_8007738;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8007738
sub_8007738:
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
	mov	ebp, DWORD PTR 80[rsp]
	mov	r11d, DWORD PTR 88[rsp]
	mov	esi, DWORD PTR 104[rsp]
	mov	r10d, DWORD PTR 112[rsp]
	mov	edi, DWORD PTR 120[rsp]
	mov	ebx, DWORD PTR 128[rsp]
	mov	eax, edx
	mov	rdx, QWORD PTR .refptr.gFlags[rip]
	mov	r12d, ecx
	movzx	ecx, WORD PTR 96[rsp]
	movzx	r12d, r12b
	or	DWORD PTR [rdx], 4
	mov	rdx, QWORD PTR .refptr.REG_BASE[rip]
	lea	r12, 16[rdx+r12*4]
	mov	rdx, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	mov	QWORD PTR [rdx], r12
	mov	rdx, QWORD PTR .refptr.gHBlankCopySize[rip]
	mov	r12, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	mov	BYTE PTR [rdx], 4
	lea	rdx, 0[0+rax*4]
	and	edx, 262140
	add	rdx, QWORD PTR [r12]
	cmp	ax, r8w
	jnb	.L249
	sub	r8d, 1
	movzx	ebp, bpl
	movzx	esi, sil
	movzx	r11d, r11b
	sub	r8d, eax
	movzx	r10d, r10b
	movzx	r8d, r8w
	lea	r12, 4[rdx+r8*4]
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	.p2align 4,,10
	.p2align 3
.L251:
	mov	rax, r9
	add	rdx, 4
	add	r9d, r11d
	and	eax, 1023
	movsx	eax, WORD PTR [r8+rax*2]
	imul	eax, ebp
	sar	eax, 14
	add	eax, edi
	and	ax, 511
	mov	WORD PTR -4[rdx], ax
	mov	rax, rcx
	add	ecx, r10d
	and	eax, 1023
	movsx	eax, WORD PTR [r8+rax*2]
	imul	eax, esi
	sar	eax, 14
	add	eax, ebx
	and	ax, 511
	mov	WORD PTR -2[rdx], ax
	cmp	rdx, r12
	jne	.L251
.L249:
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8007858
	.def	sub_8007858;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8007858
sub_8007858:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 4
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	movzx	ecx, cl
	mov	r10d, edx
	and	r9w, 511
	lea	rdx, 16[rax+rcx*4]
	mov	rax, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR .refptr.gHBlankCopySize[rip]
	lea	rdx, 0[0+r10*4]
	and	edx, 262140
	mov	BYTE PTR [rax], 4
	mov	rax, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	add	rdx, QWORD PTR [rax]
	movzx	eax, WORD PTR 40[rsp]
	sub	eax, r10d
	and	ax, 511
	cmp	r10w, r8w
	jnb	.L254
	sub	r10d, r8d
	lea	r8d, [r10+rax]
	.p2align 4,,10
	.p2align 3
.L256:
	mov	ecx, eax
	sub	eax, 1
	mov	WORD PTR [rdx], r9w
	add	rdx, 4
	mov	WORD PTR -2[rdx], cx
	cmp	ax, r8w
	jne	.L256
.L254:
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80078D4
	.def	sub_80078D4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80078D4
sub_80078D4:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	r10, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [r10], 4
	mov	r10, QWORD PTR .refptr.REG_BASE[rip]
	movzx	ecx, cl
	mov	eax, edx
	mov	edx, DWORD PTR 96[rsp]
	lea	r10, 16[r10+rcx*4]
	mov	rcx, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	mov	QWORD PTR [rcx], r10
	mov	rcx, QWORD PTR .refptr.gHBlankCopySize[rip]
	mov	BYTE PTR [rcx], 4
	cmp	ax, r8w
	jb	.L260
	add	rsp, 56
	ret
	.p2align 4,,10
	.p2align 3
.L260:
	sal	edx, 16
	and	r9d, 511
	movzx	eax, ax
	and	edx, 33488896
	or	edx, r9d
	movzx	r9d, r8w
	mov	DWORD PTR 44[rsp], edx
	mov	rdx, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	sub	r9d, eax
	add	eax, eax
	cdqe
	or	r9d, -2063597568
	mov	rcx, QWORD PTR [rdx]
	lea	rdx, 44[rsp]
	lea	r8, [rcx+rax*2]
	mov	ecx, 3
	call	DmaSet
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8007958
	.def	sub_8007958;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8007958
sub_8007958:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 4
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	movzx	r11d, BYTE PTR 56[rsp]
	movzx	ebx, WORD PTR 64[rsp]
	movzx	esi, WORD PTR 72[rsp]
	movzx	ecx, cl
	mov	r10d, r9d
	lea	rcx, 16[rax+rcx*4]
	mov	rax, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	mov	QWORD PTR [rax], rcx
	mov	rax, QWORD PTR .refptr.gHBlankCopySize[rip]
	mov	rcx, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	mov	BYTE PTR [rax], 4
	lea	rax, 0[0+rdx*4]
	and	eax, 262140
	add	rax, QWORD PTR [rcx]
	cmp	dx, r8w
	jnb	.L261
	sub	r8d, 1
	sub	r8d, edx
	movzx	r8d, r8w
	lea	rcx, 4[rax+r8*4]
	.p2align 4,,10
	.p2align 3
.L263:
	lea	edx, [r10+rbx]
	movsx	r9w, r11b
	mov	WORD PTR 2[rax], si
	add	rax, 4
	and	dx, 511
	add	r9d, r10d
	neg	r11d
	mov	r10d, r9d
	mov	WORD PTR -4[rax], dx
	neg	r10d
	cmp	rcx, rax
	jne	.L263
.L261:
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8007A08
	.def	sub_8007A08;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8007A08
sub_8007A08:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	mov	esi, DWORD PTR 72[rsp]
	or	DWORD PTR [rax], 4
	mov	rax, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	mov	ebx, esi
	mov	rax, QWORD PTR [rax]
	mov	r10d, edx
	mov	edx, r8d
	cmp	cl, 1
	jbe	.L266
	and	ecx, 1
	jne	.L274
	mov	rdi, QWORD PTR .refptr.REG_BASE[rip]
	mov	ebp, 8
	lea	rcx, 64[rdi]
	mov	edi, 8
.L267:
	mov	r11, QWORD PTR .refptr.gHBlankCopySize[rip]
	mov	BYTE PTR [r11], bpl
	mov	rbp, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	mov	QWORD PTR 0[rbp], rcx
	movzx	ecx, r8b
	imul	ecx, edi
	movsx	rcx, ecx
	add	rax, rcx
	cmp	r8b, sil
	jnb	.L265
	.p2align 4,,10
	.p2align 3
.L268:
	mov	BYTE PTR [rax], r9b
	movzx	ecx, BYTE PTR [r11]
	add	edx, 1
	mov	BYTE PTR 1[rax], r10b
	add	rax, rcx
	cmp	bl, dl
	jne	.L268
.L265:
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L274:
	mov	rdi, QWORD PTR .refptr.REG_BASE[rip]
	add	rax, 2
	mov	ebp, 8
	lea	rcx, 64[rdi]
	mov	edi, 8
	jmp	.L267
	.p2align 4,,10
	.p2align 3
.L266:
	mov	rdi, QWORD PTR .refptr.REG_BASE[rip]
	mov	ebp, 4
	test	cl, cl
	jne	.L271
	lea	rcx, 64[rdi]
	mov	edi, 4
	jmp	.L267
	.p2align 4,,10
	.p2align 3
.L271:
	lea	rcx, 68[rdi]
	mov	edi, 4
	jmp	.L267
	.seh_endproc
	.p2align 4
	.globl	sub_8007AC0
	.def	sub_8007AC0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8007AC0
sub_8007AC0:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 4
	movzx	ecx, cl
	mov	r9d, edx
	mov	rdx, QWORD PTR .refptr.REG_BASE[rip]
	mov	eax, ecx
	sal	rcx, 4
	add	rcx, QWORD PTR .refptr.gBgAffineRegs[rip]
	sal	eax, 4
	movzx	ecx, WORD PTR [rcx]
	sub	eax, 32
	lea	rdx, 32[rdx+rax]
	mov	rax, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR .refptr.gHBlankCopySize[rip]
	movzx	edx, r9w
	mov	BYTE PTR [rax], 2
	mov	rax, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	mov	rax, QWORD PTR [rax]
	lea	rax, [rax+rdx*2]
	cmp	r9w, r8w
	jnb	.L275
	mov	edx, r8d
	sub	r8d, 1
	sub	r8d, r9d
	sub	edx, r9d
	movzx	r8d, r8w
	lea	edx, [rcx+rdx*4]
	lea	rcx, 2[rax+r8*2]
	.p2align 4,,10
	.p2align 3
.L277:
	mov	WORD PTR [rax], dx
	add	rax, 2
	sub	edx, 4
	cmp	rax, rcx
	jne	.L277
.L275:
	ret
	.seh_endproc
	.globl	gUnknown_080984F8
	.section .rdata,"dr"
	.align 32
gUnknown_080984F8:
	.word	9264
	.word	0
	.word	4
	.word	36
	.word	768
	.word	128
	.word	512
	.word	152
	.word	9264
	.word	0
	.word	4
	.word	36
	.word	768
	.word	128
	.word	512
	.word	152
	.word	9264
	.word	0
	.word	4
	.word	36
	.word	768
	.word	128
	.word	512
	.word	152
	.word	9264
	.word	0
	.word	4
	.word	36
	.word	768
	.word	128
	.word	512
	.word	152
	.ident	"GCC: (GNU) 13-win32"
	.def	Sqrt;	.scl	2;	.type	32;	.endef
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gBgAffineRegs, "dr"
	.globl	.refptr.gBgAffineRegs
	.linkonce	discard
.refptr.gBgAffineRegs:
	.quad	gBgAffineRegs
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
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
	.section	.rdata$.refptr.gBgOffsetsHBlankPrimary, "dr"
	.globl	.refptr.gBgOffsetsHBlankPrimary
	.linkonce	discard
.refptr.gBgOffsetsHBlankPrimary:
	.quad	gBgOffsetsHBlankPrimary
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
