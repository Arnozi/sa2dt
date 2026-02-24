	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	fprintf;	.scl	3;	.type	32;	.endef
	.seh_proc	fprintf
fprintf:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	QWORD PTR 80[rsp], r8
	lea	r8, 80[rsp]
	mov	QWORD PTR 88[rsp], r9
	mov	QWORD PTR 40[rsp], r8
	call	__mingw_vfprintf
	add	rsp, 56
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "Fatal error while decompressing RL file.\12\0"
	.text
	.p2align 4
	.globl	RLDecompress
	.def	RLDecompress;	.scl	2;	.type	32;	.endef
	.seh_proc	RLDecompress
RLDecompress:
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
	mov	rbp, rcx
	mov	r12d, edx
	mov	r13, r8
	cmp	edx, 3
	jle	.L4
	movzx	ebx, BYTE PTR 3[rcx]
	movzx	eax, BYTE PTR 2[rcx]
	sal	ebx, 16
	sal	eax, 8
	or	ebx, eax
	movzx	eax, BYTE PTR 1[rcx]
	or	ebx, eax
	movsx	rcx, ebx
	call	malloc
	mov	r9, rax
	test	rax, rax
	je	.L4
	xor	r8d, r8d
	mov	esi, 4
	movabs	r10, 72340172838076673
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L5:
	add	eax, 1
	movzx	r14d, al
	lea	edx, [r14+r8]
	cmp	edx, ebx
	jg	.L4
	movsx	r8, r8d
	movsx	rsi, r11d
	movzx	eax, al
	add	r8, r9
	add	rsi, rbp
	cmp	eax, 8
	jnb	.L11
	test	al, 4
	jne	.L28
	test	eax, eax
	je	.L12
	movzx	ecx, BYTE PTR [rsi]
	mov	BYTE PTR [r8], cl
	test	al, 2
	jne	.L29
.L12:
	mov	r8d, edx
	lea	esi, [r11+r14]
	cmp	r8d, ebx
	je	.L30
.L15:
	cmp	esi, r12d
	jge	.L4
	movsx	rax, esi
	lea	r11d, 1[rsi]
	movzx	eax, BYTE PTR 0[rbp+rax]
	test	al, al
	jns	.L5
	and	eax, 127
	movsx	r11, r11d
	add	esi, 2
	lea	edx, 3[rax]
	movzx	eax, BYTE PTR 0[rbp+r11]
	movzx	r11d, dl
	lea	ecx, [r11+r8]
	cmp	ecx, ebx
	jg	.L4
	movsx	rcx, r8d
	imul	rax, r10
	movzx	edx, dl
	add	rcx, r9
	cmp	edx, 8
	jnb	.L6
	test	dl, 4
	jne	.L31
	test	edx, edx
	je	.L7
	mov	BYTE PTR [rcx], al
	test	dl, 2
	jne	.L32
.L7:
	add	r8d, r11d
	cmp	r8d, ebx
	jne	.L15
.L30:
	mov	rax, r9
	mov	DWORD PTR 0[r13], r8d
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
.L11:
	mov	rcx, QWORD PTR [rsi]
	lea	rdi, 8[r8]
	and	rdi, -8
	mov	QWORD PTR [r8], rcx
	mov	rcx, QWORD PTR -8[rax+rsi]
	mov	QWORD PTR -8[r8+rax], rcx
	sub	r8, rdi
	lea	ecx, [rax+r8]
	sub	rsi, r8
	mov	eax, ecx
	shr	eax, 3
	mov	ecx, eax
	rep movsq
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L6:
	lea	rdi, 8[rcx]
	mov	QWORD PTR [rcx], rax
	and	rdi, -8
	mov	QWORD PTR -8[rdx+rcx], rax
	sub	rcx, rdi
	add	ecx, edx
	mov	edx, ecx
	shr	edx, 3
	mov	ecx, edx
	rep stosq
	jmp	.L7
.L28:
	mov	ecx, DWORD PTR [rsi]
	mov	DWORD PTR [r8], ecx
	mov	ecx, DWORD PTR -4[rax+rsi]
	mov	DWORD PTR -4[r8+rax], ecx
	jmp	.L12
.L31:
	mov	DWORD PTR [rcx], eax
	mov	DWORD PTR -4[rdx+rcx], eax
	jmp	.L7
.L29:
	movzx	ecx, WORD PTR -2[rax+rsi]
	mov	WORD PTR -2[r8+rax], cx
	jmp	.L12
.L32:
	mov	WORD PTR -2[rdx+rcx], ax
	jmp	.L7
.L4:
	mov	ecx, 2
	call	[QWORD PTR __imp___acrt_iob_func[rip]]
	lea	rdx, .LC0[rip]
	mov	rcx, rax
	call	fprintf
	mov	ecx, 1
	call	exit
	nop
	.seh_endproc
	.p2align 4
	.globl	RLDecompressUnsafe
	.def	RLDecompressUnsafe;	.scl	2;	.type	32;	.endef
	.seh_proc	RLDecompressUnsafe
RLDecompressUnsafe:
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
	movzx	r10d, BYTE PTR 3[rcx]
	movzx	eax, BYTE PTR 2[rcx]
	sal	r10d, 16
	sal	eax, 8
	or	r10d, eax
	movzx	eax, BYTE PTR 1[rcx]
	mov	r11, rcx
	mov	rbx, rdx
	mov	rsi, r8
	or	r10d, eax
	test	rdx, rdx
	je	.L34
	xor	r9d, r9d
	mov	ebp, 4
	movabs	r8, 72340172838076673
	.p2align 4,,10
	.p2align 3
.L42:
	movsx	r12, ebp
	lea	edi, 1[rbp]
	add	r12, r11
	movzx	edx, BYTE PTR [r12]
	test	dl, dl
	js	.L52
	add	edx, 1
	movzx	edx, dl
	lea	eax, [r9+rdx]
	cmp	eax, r10d
	jg	.L34
	movsx	rbp, r9d
	xor	eax, eax
	add	rbp, rbx
	.p2align 4,,10
	.p2align 3
.L41:
	movzx	ecx, BYTE PTR 1[r12+rax]
	mov	BYTE PTR 0[rbp+rax], cl
	add	rax, 1
	cmp	edx, eax
	jg	.L41
	lea	ebp, [rdi+rdx]
	add	r9d, edx
.L40:
	cmp	r9d, r10d
	jne	.L42
	mov	DWORD PTR [rsi], r9d
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L52:
	and	edx, 127
	movsx	rdi, edi
	add	ebp, 2
	add	edx, 3
	movzx	eax, BYTE PTR [r11+rdi]
	movzx	r12d, dl
	lea	ecx, [r12+r9]
	cmp	ecx, r10d
	jg	.L34
	movsx	rcx, r9d
	imul	rax, r8
	movzx	edx, dl
	add	rcx, rbx
	cmp	edx, 8
	jnb	.L36
	test	dl, 4
	jne	.L53
	test	edx, edx
	je	.L37
	mov	BYTE PTR [rcx], al
	test	dl, 2
	jne	.L54
.L37:
	add	r9d, r12d
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L36:
	lea	rdi, 8[rcx]
	mov	QWORD PTR [rcx], rax
	and	rdi, -8
	mov	QWORD PTR -8[rdx+rcx], rax
	sub	rcx, rdi
	add	ecx, edx
	shr	ecx, 3
	rep stosq
	jmp	.L37
.L53:
	mov	DWORD PTR [rcx], eax
	mov	DWORD PTR -4[rdx+rcx], eax
	jmp	.L37
.L54:
	mov	WORD PTR -2[rdx+rcx], ax
	jmp	.L37
.L34:
	mov	ecx, 2
	call	[QWORD PTR __imp___acrt_iob_func[rip]]
	lea	rdx, .LC0[rip]
	mov	rcx, rax
	call	fprintf
	mov	ecx, 1
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC1:
	.ascii "Fatal error while compressing RL file.\12\0"
	.text
	.p2align 4
	.globl	RLCompress
	.def	RLCompress;	.scl	2;	.type	32;	.endef
	.seh_proc	RLCompress
RLCompress:
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
	mov	rbp, rcx
	mov	ebx, edx
	mov	r12, r8
	test	edx, edx
	jle	.L56
	lea	ecx, 7[rdx+rdx]
	and	ecx, -4
	movsx	rcx, ecx
	call	malloc
	mov	r8, rax
	test	rax, rax
	je	.L56
	mov	BYTE PTR [rax], 48
	mov	r11d, 4
	mov	WORD PTR 1[rax], bx
	mov	eax, ebx
	sar	eax, 16
	mov	BYTE PTR 3[r8], al
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L72:
	cmp	eax, ebx
	jge	.L57
	movsx	rsi, eax
	xor	r10d, r10d
	add	rsi, rbp
	mov	rdx, rsi
	jmp	.L60
	.p2align 4,,10
	.p2align 3
.L58:
	add	eax, 1
	add	r10d, 1
	cmp	ebx, eax
	setg	r9b
	cmp	r10d, 127
	setle	cl
	add	rdx, 1
	and	r9b, cl
	je	.L61
.L60:
	lea	ecx, 2[rax]
	cmp	ecx, ebx
	jge	.L58
	movzx	ecx, BYTE PTR [rdx]
	cmp	cl, BYTE PTR 1[rdx]
	jne	.L58
	cmp	cl, BYTE PTR 2[rdx]
	jne	.L58
	test	r10d, r10d
	jne	.L102
.L62:
	movsx	rdx, eax
	mov	ecx, -3
	movzx	r10d, BYTE PTR 0[rbp+rdx]
	cmp	ebx, eax
	jle	.L68
	lea	ecx, 1[rax]
	mov	esi, ebx
	xor	edx, edx
	movsx	rcx, ecx
	sub	esi, eax
	jmp	.L70
	.p2align 4,,10
	.p2align 3
.L71:
	add	edx, 1
	cmp	edx, 130
	je	.L103
	lea	r9, 1[rcx]
	cmp	edx, esi
	je	.L104
	mov	rcx, r9
.L70:
	cmp	BYTE PTR -1[rbp+rcx], r10b
	je	.L71
	lea	ecx, -3[rdx]
	add	eax, edx
	or	ecx, -128
.L68:
	movzx	edx, cl
	mov	ecx, r10d
	movsx	r9, r11d
	add	r11d, 2
	mov	dh, cl
	mov	WORD PTR [r8+r9], dx
.L57:
	cmp	eax, ebx
	jne	.L72
	test	r11b, 3
	je	.L73
	mov	edx, r11d
	movsx	rcx, r11d
	sar	edx, 31
	add	rcx, r8
	shr	edx, 30
	lea	eax, [r11+rdx]
	and	eax, 3
	sub	edx, eax
	add	edx, 4
	je	.L75
	xor	eax, eax
.L74:
	mov	r9d, eax
	add	eax, 1
	mov	BYTE PTR [rcx+r9], 0
	cmp	eax, edx
	jb	.L74
.L75:
	add	r11d, edx
.L73:
	mov	rax, r8
	mov	DWORD PTR [r12], r11d
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
.L102:
	mov	r9d, 1
	.p2align 4,,10
	.p2align 3
.L61:
	lea	r13d, 1[r11]
	lea	edx, -1[r10]
	movsx	r11, r11d
	mov	BYTE PTR [r8+r11], dl
	movsx	rdx, r13d
	add	rdx, r8
	cmp	r10d, 8
	jnb	.L63
	test	r10b, 4
	jne	.L105
	test	r10d, r10d
	je	.L64
	movzx	ecx, BYTE PTR [rsi]
	mov	BYTE PTR [rdx], cl
	test	r10b, 2
	jne	.L106
.L64:
	lea	r11d, 0[r13+r10]
	test	r9b, r9b
	je	.L57
	jmp	.L62
	.p2align 4,,10
	.p2align 3
.L63:
	mov	rcx, QWORD PTR [rsi]
	lea	rdi, 8[rdx]
	and	rdi, -8
	mov	QWORD PTR [rdx], rcx
	mov	ecx, r10d
	mov	r11, QWORD PTR -8[rsi+rcx]
	mov	QWORD PTR -8[rdx+rcx], r11
	sub	rdx, rdi
	lea	r11d, 0[r13+r10]
	sub	rsi, rdx
	add	edx, r10d
	shr	edx, 3
	mov	ecx, edx
	rep movsq
	test	r9b, r9b
	je	.L57
	jmp	.L62
.L104:
	mov	eax, ecx
	lea	ecx, -3[rdx]
	or	ecx, -128
	jmp	.L68
.L103:
	add	eax, 130
	mov	ecx, -1
	jmp	.L68
.L106:
	mov	ecx, r10d
	movzx	r11d, WORD PTR -2[rsi+rcx]
	mov	WORD PTR -2[rdx+rcx], r11w
	jmp	.L64
.L105:
	mov	ecx, DWORD PTR [rsi]
	mov	DWORD PTR [rdx], ecx
	mov	ecx, r10d
	mov	r11d, DWORD PTR -4[rsi+rcx]
	mov	DWORD PTR -4[rdx+rcx], r11d
	lea	r11d, 0[r13+r10]
	test	r9b, r9b
	je	.L57
	jmp	.L62
.L56:
	mov	ecx, 2
	call	[QWORD PTR __imp___acrt_iob_func[rip]]
	lea	rdx, .LC1[rip]
	mov	rcx, rax
	call	fprintf
	mov	ecx, 1
	call	exit
	nop
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
