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
.LC0:
	.ascii "Destination buffer overflow.\12\0"
	.align 8
.LC1:
	.ascii "Fatal error while decompressing LZ file.\12\0"
	.text
	.p2align 4
	.globl	LZDecompress
	.def	LZDecompress;	.scl	2;	.type	32;	.endef
	.seh_proc	LZDecompress
LZDecompress:
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
	mov	r13, rcx
	mov	rbp, r8
	cmp	edx, 3
	jle	.L35
	movzx	r15d, BYTE PTR 3[rcx]
	movzx	eax, BYTE PTR 2[rcx]
	mov	DWORD PTR 136[rsp], edx
	sal	eax, 8
	sal	r15d, 16
	or	r15d, eax
	movzx	eax, BYTE PTR 1[rcx]
	or	r15d, eax
	movsx	rcx, r15d
	call	malloc
	mov	r10d, DWORD PTR 136[rsp]
	test	rax, rax
	je	.L35
	cmp	r10d, 4
	je	.L35
	mov	rdi, rbp
	xor	ebx, ebx
	mov	esi, 4
	mov	rbp, rax
	mov	r14, r13
	.p2align 4,,10
	.p2align 3
.L12:
	movsx	rax, esi
	mov	r13d, 8
	mov	r8, rdi
	add	esi, 1
	movzx	r12d, BYTE PTR [r14+rax]
	mov	rdi, r14
	mov	r14d, r13d
	mov	r13d, r12d
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L5:
	cmp	r10d, esi
	jle	.L35
	cmp	r15d, ebx
	jle	.L35
	movsx	rdx, esi
	movsx	rax, ebx
	add	esi, 1
	add	ebx, 1
	movzx	edx, BYTE PTR [rdi+rdx]
	mov	BYTE PTR 0[rbp+rax], dl
.L8:
	cmp	ebx, r15d
	je	.L33
.L37:
	add	r13d, r13d
	sub	r14d, 1
	je	.L36
.L11:
	test	r13b, r13b
	jns	.L5
	lea	eax, 1[rsi]
	cmp	eax, r10d
	jge	.L35
	movsx	rdx, esi
	mov	r9d, ebx
	add	esi, 2
	movzx	eax, BYTE PTR [rdi+rdx]
	movzx	edx, BYTE PTR 1[rdi+rdx]
	mov	r12d, eax
	sal	eax, 8
	shr	r12b, 4
	and	eax, 3840
	add	r12d, 3
	or	eax, edx
	movzx	r12d, r12b
	add	eax, 1
	lea	ecx, [r12+rbx]
	sub	r9d, eax
	cmp	ecx, r15d
	jg	.L6
	test	r9d, r9d
	js	.L35
.L7:
	movsx	r9, r9d
	movsx	r12, r12d
	movsx	rbx, ebx
	lea	rax, 0[rbp+r9]
	add	r12, rax
	.p2align 4,,10
	.p2align 3
.L9:
	movzx	r11d, BYTE PTR [rax]
	mov	rdx, rax
	add	rax, 1
	sub	rdx, r9
	mov	BYTE PTR [rdx+rbx], r11b
	cmp	r12, rax
	jne	.L9
	mov	ebx, ecx
	cmp	ebx, r15d
	jne	.L37
.L33:
	mov	rax, rbp
	mov	DWORD PTR [r8], ebx
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
.L36:
	mov	r14, rdi
	mov	rdi, r8
	cmp	esi, r10d
	jl	.L12
.L35:
	mov	rax, QWORD PTR __imp___acrt_iob_func[rip]
.L4:
	mov	ecx, 2
	call	rax
	lea	rdx, .LC1[rip]
	mov	rcx, rax
	call	fprintf
	mov	ecx, 1
	call	exit
	.p2align 4,,10
	.p2align 3
.L6:
	mov	rax, QWORD PTR __imp___acrt_iob_func[rip]
	mov	DWORD PTR 36[rsp], r9d
	mov	r12d, r15d
	mov	ecx, 2
	mov	QWORD PTR 144[rsp], r8
	sub	r12d, ebx
	mov	DWORD PTR 136[rsp], r10d
	mov	QWORD PTR 40[rsp], rax
	call	[QWORD PTR __imp___acrt_iob_func[rip]]
	lea	rdx, .LC0[rip]
	mov	rcx, rax
	call	fprintf
	mov	r9d, DWORD PTR 36[rsp]
	test	r9d, r9d
	js	.L32
	test	r12d, r12d
	mov	r10d, DWORD PTR 136[rsp]
	mov	r8, QWORD PTR 144[rsp]
	jle	.L8
	lea	ecx, [r12+rbx]
	jmp	.L7
.L32:
	mov	rax, QWORD PTR 40[rsp]
	jmp	.L4
	.seh_endproc
	.p2align 4
	.globl	LZDecompressUnsafe
	.def	LZDecompressUnsafe;	.scl	2;	.type	32;	.endef
	.seh_proc	LZDecompressUnsafe
LZDecompressUnsafe:
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
	movzx	r10d, BYTE PTR 3[rcx]
	movzx	eax, BYTE PTR 2[rcx]
	sal	r10d, 16
	sal	eax, 8
	or	r10d, eax
	movzx	eax, BYTE PTR 1[rcx]
	mov	r15, rcx
	mov	r12, rdx
	or	r10d, eax
	mov	r13d, r10d
	test	rdx, rdx
	je	.L58
	mov	edi, 4
	xor	ebx, ebx
	mov	rsi, r8
	mov	ebp, edi
.L47:
	movsx	rax, ebp
	mov	edi, 8
	add	ebp, 1
	movzx	r14d, BYTE PTR [r15+rax]
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L40:
	cmp	r13d, ebx
	jle	.L58
	movsx	rax, ebp
	add	ebp, 1
	movzx	edx, BYTE PTR [r15+rax]
	movsx	rax, ebx
	add	ebx, 1
	mov	BYTE PTR [r12+rax], dl
.L43:
	cmp	ebx, r13d
	je	.L59
.L45:
	add	r14d, r14d
	sub	edi, 1
	je	.L47
.L46:
	test	r14b, r14b
	jns	.L40
	movsx	rdx, ebp
	mov	r9d, ebx
	add	ebp, 2
	movzx	eax, BYTE PTR [r15+rdx]
	movzx	edx, BYTE PTR 1[r15+rdx]
	mov	r8d, eax
	sal	eax, 8
	shr	r8b, 4
	and	eax, 3840
	add	r8d, 3
	or	eax, edx
	movzx	r8d, r8b
	add	eax, 1
	lea	ecx, [r8+rbx]
	sub	r9d, eax
	cmp	ecx, r13d
	jg	.L41
	test	r9d, r9d
	js	.L58
.L42:
	movsx	r9, r9d
	movsx	rbx, ebx
	lea	rax, [r12+r9]
	add	r8, rax
	.p2align 4,,10
	.p2align 3
.L44:
	movzx	r10d, BYTE PTR [rax]
	mov	rdx, rax
	add	rax, 1
	sub	rdx, r9
	mov	BYTE PTR [rdx+rbx], r10b
	cmp	rax, r8
	jne	.L44
	mov	ebx, ecx
	cmp	ebx, r13d
	jne	.L45
.L59:
	mov	DWORD PTR [rsi], ebx
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
.L41:
	mov	rax, QWORD PTR __imp___acrt_iob_func[rip]
	mov	r8d, r13d
	mov	DWORD PTR 36[rsp], r9d
	mov	ecx, 2
	sub	r8d, ebx
	mov	DWORD PTR 32[rsp], r8d
	mov	QWORD PTR 40[rsp], rax
	call	[QWORD PTR __imp___acrt_iob_func[rip]]
	lea	rdx, .LC0[rip]
	mov	rcx, rax
	call	fprintf
	mov	r9d, DWORD PTR 36[rsp]
	test	r9d, r9d
	js	.L57
	movsx	r8, DWORD PTR 32[rsp]
	test	r8d, r8d
	jle	.L43
	lea	ecx, [r8+rbx]
	jmp	.L42
.L58:
	mov	rdx, QWORD PTR __imp___acrt_iob_func[rip]
.L39:
	mov	ecx, 2
	call	rdx
	lea	rdx, .LC1[rip]
	mov	rcx, rax
	call	fprintf
	mov	ecx, 1
	call	exit
.L57:
	mov	rdx, QWORD PTR 40[rsp]
	jmp	.L39
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC2:
	.ascii "Fatal error while compressing LZ file.\12\0"
	.text
	.p2align 4
	.globl	LZCompress
	.def	LZCompress;	.scl	2;	.type	32;	.endef
	.seh_proc	LZCompress
LZCompress:
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
	mov	DWORD PTR 168[rsp], r9d
	mov	rbp, rcx
	mov	r12d, edx
	mov	rdi, r8
	test	edx, edx
	jle	.L61
	lea	eax, 7[rdx]
	sar	eax, 3
	lea	ecx, 7[rdx+rax]
	and	ecx, -4
	movsx	rcx, ecx
	call	malloc
	mov	rdx, rax
	test	rax, rax
	je	.L61
	mov	BYTE PTR [rax], 16
	mov	r15d, 4
	xor	esi, esi
	mov	r8, rdx
	mov	WORD PTR 1[rax], r12w
	mov	eax, r12d
	sar	eax, 16
	mov	BYTE PTR 3[rdx], al
	movsx	rax, DWORD PTR 168[rsp]
	mov	QWORD PTR 48[rsp], rax
.L75:
	movsx	rax, r15d
	mov	QWORD PTR 160[rsp], rdi
	add	r15d, 1
	xor	ecx, ecx
	add	rax, r8
	mov	QWORD PTR 56[rsp], rax
	mov	BYTE PTR [rax], 0
	.p2align 4,,10
	.p2align 3
.L62:
	mov	r13d, 4096
	movsx	r10, esi
	cmp	esi, r13d
	cmovle	r13d, esi
	cmp	DWORD PTR 168[rsp], r13d
	jg	.L69
	mov	rax, QWORD PTR 48[rsp]
	mov	DWORD PTR 44[rsp], r15d
	mov	r9, r10
	mov	r11d, r12d
	mov	ebx, DWORD PTR 168[rsp]
	xor	edi, edi
	xor	r14d, r14d
	sub	r11d, esi
	sub	r9, rax
	.p2align 4,,10
	.p2align 3
.L68:
	cmp	r12d, esi
	jle	.L63
	lea	rdx, 0[rbp+r9]
	xor	eax, eax
	jmp	.L64
	.p2align 4,,10
	.p2align 3
.L95:
	add	rdx, 1
	cmp	eax, r11d
	je	.L66
.L64:
	mov	r15, rdx
	sub	r15, r9
	movzx	r15d, BYTE PTR [r15+r10]
	cmp	BYTE PTR [rdx], r15b
	jne	.L66
	add	eax, 1
	cmp	eax, 18
	jne	.L95
	cmp	edi, 17
	jle	.L96
.L63:
	add	ebx, 1
	sub	r9, 1
	cmp	ebx, r13d
	jle	.L68
	mov	r15d, DWORD PTR 44[rsp]
	cmp	edi, 2
	jg	.L97
.L69:
	movzx	edx, BYTE PTR 0[rbp+r10]
	movsx	rax, r15d
	add	esi, 1
	add	r15d, 1
	mov	BYTE PTR [r8+rax], dl
	cmp	esi, r12d
	je	.L98
.L71:
	add	ecx, 1
	cmp	ecx, 8
	jne	.L62
	mov	rdi, QWORD PTR 160[rsp]
	jmp	.L75
	.p2align 4,,10
	.p2align 3
.L66:
	cmp	eax, edi
	jle	.L63
	mov	edi, eax
	mov	r14d, ebx
	jmp	.L63
.L96:
	mov	r15d, DWORD PTR 44[rsp]
.L77:
	mov	rdi, QWORD PTR 56[rsp]
	add	esi, eax
	sub	eax, 3
	sub	ebx, 1
	mov	edx, 128
	sal	eax, 4
	sar	edx, cl
	or	al, bh
	or	BYTE PTR [rdi], dl
	movsx	rdx, r15d
	mov	BYTE PTR [r8+rdx], al
	lea	eax, 1[r15]
	add	r15d, 2
	cdqe
	mov	BYTE PTR [r8+rax], bl
	cmp	esi, r12d
	jne	.L71
.L98:
	mov	rdi, QWORD PTR 160[rsp]
	mov	rdx, r8
	test	r15b, 3
	je	.L72
	mov	eax, r15d
	movsx	r8, r15d
	sar	eax, 31
	add	r8, rdx
	shr	eax, 30
	lea	ecx, [r15+rax]
	and	ecx, 3
	sub	eax, ecx
	add	eax, 4
	je	.L74
	xor	ecx, ecx
.L73:
	mov	r9d, ecx
	add	ecx, 1
	mov	BYTE PTR [r8+r9], 0
	cmp	ecx, eax
	jb	.L73
.L74:
	add	r15d, eax
.L72:
	mov	rax, rdx
	mov	DWORD PTR [rdi], r15d
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
.L97:
	mov	eax, edi
	mov	ebx, r14d
	jmp	.L77
.L61:
	mov	ecx, 2
	call	[QWORD PTR __imp___acrt_iob_func[rip]]
	lea	rdx, .LC2[rip]
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
