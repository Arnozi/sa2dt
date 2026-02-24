	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	sub_801E4E4
	.def	sub_801E4E4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_801E4E4
sub_801E4E4:
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
	mov	rsi, QWORD PTR 160[rsp]
	mov	r13, QWORD PTR 168[rsp]
	test	rsi, rsi
	lea	rax, 44[rsp]
	lea	r14, 45[rsp]
	mov	r12d, r9d
	mov	ebx, ecx
	cmove	rsi, rax
	mov	edi, edx
	mov	ebp, r8d
	mov	r9, r14
	call	r13
	test	eax, eax
	jne	.L3
	lea	r15d, [rbx+r12]
	mov	edx, edi
	mov	r9, r14
	mov	r8d, ebp
	mov	ecx, r15d
	call	r13
	mov	edx, eax
	test	eax, eax
	jne	.L4
	mov	edx, edi
	lea	ecx, [r15+r12]
	mov	r9, r14
	mov	r8d, ebp
	call	r13
	and	ebx, 7
	mov	edx, eax
	test	eax, eax
	je	.L27
	movzx	eax, BYTE PTR 45[rsp]
	mov	BYTE PTR [rsi], al
	cmp	edx, 8
	je	.L28
	mov	ecx, edx
	lea	eax, 16[rdx+rbx]
	sub	ecx, ebx
	add	ecx, 15
	test	edx, edx
	cmovg	eax, ecx
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L4:
	movzx	eax, BYTE PTR 45[rsp]
	mov	BYTE PTR [rsi], al
	cmp	edx, 8
	je	.L29
	and	ebx, 7
	mov	ecx, edx
	sub	ecx, ebx
	lea	eax, 8[rdx+rbx]
	add	ecx, 7
	test	edx, edx
	cmovg	eax, ecx
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L3:
	movzx	edx, BYTE PTR 45[rsp]
	mov	r15d, ebx
	and	r15d, 7
	mov	BYTE PTR [rsi], dl
	cmp	eax, 8
	je	.L30
	lea	edx, -1[rax]
	lea	ecx, [rax+r15]
	sub	edx, r15d
	test	eax, eax
	mov	eax, ecx
	cmovg	eax, edx
.L1:
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
.L27:
	mov	eax, 24
	sub	eax, ebx
	add	ebx, 17
	test	r12d, r12d
	cmovle	eax, ebx
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L29:
	mov	edx, ebx
	mov	eax, ebx
	not	edx
	and	eax, 7
	and	edx, 7
	test	r12d, r12d
	cmovg	eax, edx
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L30:
	mov	ecx, ebx
	mov	edx, edi
	mov	r9, r14
	mov	r8d, ebp
	sub	ecx, r12d
	call	r13
	mov	edx, eax
	cmp	eax, 8
	je	.L31
	test	eax, eax
	jne	.L21
	mov	edx, r15d
	lea	eax, -8[r15]
	test	r12d, r12d
	not	edx
	cmovg	eax, edx
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L31:
	movzx	eax, BYTE PTR 45[rsp]
	mov	edx, edi
	mov	r9, r14
	mov	r8d, ebp
	mov	BYTE PTR [rsi], al
	lea	eax, [r12+r12]
	sub	ebx, eax
	mov	ecx, ebx
	call	r13
	mov	edx, eax
	cmp	eax, 8
	je	.L32
	test	eax, eax
	jne	.L18
	mov	edx, -9
	lea	eax, -16[r15]
	sub	edx, r15d
	test	r12d, r12d
	cmovg	eax, edx
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L21:
	movzx	eax, BYTE PTR 45[rsp]
	mov	BYTE PTR [rsi], al
	lea	eax, -8[rdx+r15]
	jle	.L1
	sub	edx, r15d
	lea	eax, -9[rdx]
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L32:
	movzx	eax, BYTE PTR 45[rsp]
	mov	edx, -17
	sub	edx, r15d
	test	r12d, r12d
	mov	BYTE PTR [rsi], al
	lea	eax, -24[r15]
	cmovg	eax, edx
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L28:
	mov	eax, 15
	sub	eax, ebx
	add	ebx, 8
	test	r12d, r12d
	cmovle	eax, ebx
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L18:
	movzx	eax, BYTE PTR 45[rsp]
	mov	BYTE PTR [rsi], al
	lea	eax, -16[rdx+r15]
	jle	.L1
	sub	edx, r15d
	lea	eax, -17[rdx]
	jmp	.L1
	.seh_endproc
	.p2align 4
	.globl	sub_801E6D4
	.def	sub_801E6D4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_801E6D4
sub_801E6D4:
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
	mov	rbp, QWORD PTR 176[rsp]
	mov	r13, QWORD PTR 184[rsp]
	test	rbp, rbp
	lea	rax, 60[rsp]
	lea	r14, 61[rsp]
	mov	r12d, r9d
	mov	ebx, ecx
	cmove	rbp, rax
	mov	esi, edx
	mov	edi, r8d
	mov	r9, r14
	call	r13
	test	eax, eax
	jne	.L35
	lea	r15d, [rbx+r12]
	mov	edx, esi
	mov	r9, r14
	mov	r8d, edi
	mov	ecx, r15d
	call	r13
	mov	edx, eax
	test	eax, eax
	jne	.L36
	lea	ecx, [r15+r12]
	mov	edx, esi
	mov	r9, r14
	mov	r8d, edi
	call	r13
	mov	r15d, ebx
	mov	edx, eax
	and	r15d, 7
	test	eax, eax
	jne	.L37
	lea	r10d, [r12+r12*2]
	mov	edx, esi
	mov	r9, r14
	mov	r8d, edi
	mov	DWORD PTR 44[rsp], r10d
	lea	ecx, [rbx+r10]
	call	r13
	mov	edx, eax
	test	eax, eax
	jne	.L38
	mov	r10d, DWORD PTR 44[rsp]
	mov	edx, esi
	mov	r9, r14
	mov	r8d, edi
	add	r10d, r12d
	mov	DWORD PTR 44[rsp], r10d
	lea	ecx, [rbx+r10]
	call	r13
	mov	edx, eax
	test	eax, eax
	jne	.L39
	mov	r10d, DWORD PTR 44[rsp]
	mov	edx, esi
	mov	r9, r14
	mov	r8d, edi
	add	r10d, r12d
	lea	ecx, [r10+rbx]
	call	r13
	mov	edx, eax
	test	eax, eax
	jne	.L40
	mov	edx, 48
	lea	eax, 41[r15]
	sub	edx, r15d
	test	r12d, r12d
	cmovg	eax, edx
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L36:
	movzx	eax, BYTE PTR 61[rsp]
	mov	BYTE PTR 0[rbp], al
	cmp	edx, 8
	je	.L87
	and	ebx, 7
	mov	ecx, edx
	sub	ecx, ebx
	lea	eax, 8[rdx+rbx]
	add	ecx, 7
	test	edx, edx
	cmovg	eax, ecx
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L35:
	movzx	edx, BYTE PTR 61[rsp]
	mov	BYTE PTR 0[rbp], dl
	cmp	eax, 8
	je	.L88
	and	ebx, 7
	lea	edx, -1[rax]
	lea	ecx, [rax+rbx]
	sub	edx, ebx
	test	eax, eax
	mov	eax, ecx
	cmovg	eax, edx
.L33:
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
.L37:
	movzx	eax, BYTE PTR 61[rsp]
	mov	BYTE PTR 0[rbp], al
	cmp	edx, 8
	je	.L89
	mov	ecx, edx
	lea	eax, 16[rdx+r15]
	sub	ecx, r15d
	add	ecx, 15
	test	edx, edx
	cmovg	eax, ecx
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L87:
	mov	edx, ebx
	mov	eax, ebx
	not	edx
	and	eax, 7
	and	edx, 7
	test	r12d, r12d
	cmovg	eax, edx
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L88:
	mov	ecx, ebx
	mov	edx, esi
	mov	r9, r14
	mov	r8d, edi
	sub	ecx, r12d
	call	r13
	mov	edx, eax
	cmp	eax, 8
	je	.L90
	test	eax, eax
	jne	.L82
	mov	edx, ebx
	mov	eax, ebx
	and	edx, 7
	or	eax, -8
	test	r12d, r12d
	not	edx
	cmovg	eax, edx
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L38:
	movzx	eax, BYTE PTR 61[rsp]
	mov	BYTE PTR 0[rbp], al
	cmp	edx, 8
	je	.L91
	mov	ecx, edx
	lea	eax, 24[rdx+r15]
	sub	ecx, r15d
	add	ecx, 23
	test	edx, edx
	cmovg	eax, ecx
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L90:
	mov	r10d, r12d
	movzx	eax, BYTE PTR 61[rsp]
	mov	edx, esi
	mov	r9, r14
	neg	r10d
	mov	r8d, edi
	mov	r15d, ebx
	sub	r10d, r12d
	mov	BYTE PTR 0[rbp], al
	and	r15d, 7
	mov	DWORD PTR 44[rsp], r10d
	lea	ecx, [rbx+r10]
	call	r13
	mov	r10d, DWORD PTR 44[rsp]
	cmp	eax, 8
	mov	edx, eax
	je	.L92
	test	eax, eax
	jne	.L79
	lea	eax, -16[r15]
	test	r12d, r12d
	jle	.L33
.L80:
	mov	eax, -9
	sub	eax, r15d
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L82:
	and	ebx, 7
	movzx	eax, BYTE PTR 61[rsp]
	mov	ecx, edx
	sub	ecx, ebx
	sub	ecx, 9
	mov	BYTE PTR 0[rbp], al
	test	edx, edx
	lea	eax, -8[rdx+rbx]
	cmovg	eax, ecx
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L39:
	movzx	eax, BYTE PTR 61[rsp]
	mov	BYTE PTR 0[rbp], al
	cmp	edx, 8
	je	.L93
	mov	ecx, edx
	lea	eax, 32[rdx+r15]
	sub	ecx, r15d
	add	ecx, 31
	test	edx, edx
	cmovg	eax, ecx
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L91:
	mov	edx, 23
	lea	eax, 16[r15]
	sub	edx, r15d
	test	r12d, r12d
	cmovg	eax, edx
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L92:
	movzx	eax, BYTE PTR 61[rsp]
	sub	r10d, r12d
	mov	edx, esi
	mov	r9, r14
	mov	DWORD PTR 44[rsp], r10d
	lea	ecx, [rbx+r10]
	mov	r8d, edi
	mov	BYTE PTR 0[rbp], al
	call	r13
	mov	r10d, DWORD PTR 44[rsp]
	cmp	eax, 8
	mov	edx, eax
	je	.L94
	test	eax, eax
	jne	.L75
.L76:
	lea	eax, -16[r15]
	test	r12d, r12d
	jg	.L80
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L89:
	mov	edx, 15
	lea	eax, 8[r15]
	sub	edx, r15d
	test	r12d, r12d
	cmovg	eax, edx
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L79:
	movzx	eax, BYTE PTR 61[rsp]
	mov	BYTE PTR 0[rbp], al
	lea	eax, -16[rdx+r15]
	jle	.L33
.L81:
	sub	edx, r15d
	lea	eax, -17[rdx]
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L40:
	movzx	eax, BYTE PTR 61[rsp]
	mov	BYTE PTR 0[rbp], al
	cmp	edx, 8
	je	.L95
	mov	ecx, edx
	lea	eax, 40[rdx+r15]
	sub	ecx, r15d
	add	ecx, 39
	test	edx, edx
	cmovg	eax, ecx
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L93:
	mov	edx, 31
	lea	eax, 24[r15]
	sub	edx, r15d
	test	r12d, r12d
	cmovg	eax, edx
	jmp	.L33
.L94:
	movzx	eax, BYTE PTR 61[rsp]
	sub	r10d, r12d
	mov	edx, esi
	mov	r9, r14
	mov	DWORD PTR 44[rsp], r10d
	lea	ecx, [rbx+r10]
	mov	r8d, edi
	mov	BYTE PTR 0[rbp], al
	call	r13
	mov	r10d, DWORD PTR 44[rsp]
	cmp	eax, 8
	mov	edx, eax
	je	.L96
	test	eax, eax
	jne	.L72
	mov	edx, -17
	lea	eax, -24[r15]
	sub	edx, r15d
	test	r12d, r12d
	cmovg	eax, edx
	jmp	.L33
.L75:
	movzx	eax, BYTE PTR 61[rsp]
	mov	BYTE PTR 0[rbp], al
	lea	eax, -16[rdx+r15]
	jg	.L81
	jmp	.L33
.L95:
	mov	edx, 39
	lea	eax, 32[r15]
	sub	edx, r15d
	test	r12d, r12d
	cmovg	eax, edx
	jmp	.L33
.L96:
	movzx	eax, BYTE PTR 61[rsp]
	sub	r10d, r12d
	mov	r9, r14
	mov	r8d, edi
	mov	DWORD PTR 44[rsp], r10d
	lea	ecx, [rbx+r10]
	mov	edx, esi
	mov	BYTE PTR 0[rbp], al
	call	r13
	mov	r10d, DWORD PTR 44[rsp]
	cmp	eax, 8
	je	.L97
	test	eax, eax
	jne	.L69
	lea	eax, -32[r15]
	test	r12d, r12d
	jle	.L33
	mov	eax, -25
	sub	eax, r15d
	jmp	.L33
.L72:
	movzx	eax, BYTE PTR 61[rsp]
	mov	BYTE PTR 0[rbp], al
	lea	eax, -24[rdx+r15]
	jle	.L33
	sub	edx, r15d
	lea	eax, -25[rdx]
	jmp	.L33
.L97:
	movzx	eax, BYTE PTR 61[rsp]
	sub	r10d, r12d
	mov	r9, r14
	mov	r8d, edi
	lea	ecx, [r10+rbx]
	mov	edx, esi
	mov	BYTE PTR 0[rbp], al
	call	r13
	cmp	eax, 8
	je	.L98
	test	eax, eax
	jne	.L66
	lea	eax, -40[r15]
	test	r12d, r12d
	jle	.L33
	mov	eax, -33
	sub	eax, r15d
	jmp	.L33
.L69:
	movzx	edx, BYTE PTR 61[rsp]
	mov	BYTE PTR 0[rbp], dl
	jle	.L71
	sub	eax, r15d
	sub	eax, 33
	jmp	.L33
.L66:
	movzx	edx, BYTE PTR 61[rsp]
	mov	BYTE PTR 0[rbp], dl
	jle	.L68
	sub	eax, r15d
	sub	eax, 41
	jmp	.L33
.L98:
	movzx	eax, BYTE PTR 61[rsp]
	mov	BYTE PTR 0[rbp], al
	lea	eax, -48[r15]
	test	r12d, r12d
	jle	.L33
	mov	eax, -41
	sub	eax, r15d
	jmp	.L33
.L71:
	lea	eax, -32[rax+r15]
	jmp	.L33
.L68:
	lea	eax, -40[rax+r15]
	jmp	.L33
	.seh_endproc
	.p2align 4
	.globl	sub_801EF94
	.def	sub_801EF94;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_801EF94
sub_801EF94:
	.seh_endprologue
	mov	r9d, ecx
	mov	eax, edx
	sar	r9d, 3
	cmp	DWORD PTR gUnknown_3000410[rip], r9d
	je	.L104
	movsx	rdx, r9d
	sar	ecx, 31
	mov	DWORD PTR gUnknown_3000410[rip], r9d
	imul	rdx, rdx, 715827883
	sar	rdx, 33
	sub	edx, ecx
	lea	r10d, 0[0+rdx*4]
	mov	ecx, edx
	mov	DWORD PTR gUnknown_3000410[rip+4], edx
	sub	ecx, r10d
	lea	r10d, [r9+rcx*4]
	mov	r9d, eax
	sar	r9d, 3
	cmp	DWORD PTR gUnknown_3000420[rip], r9d
	mov	DWORD PTR gUnknown_3000410[rip+8], r10d
	je	.L105
.L102:
	movsx	rcx, r9d
	sar	eax, 31
	mov	DWORD PTR gUnknown_3000420[rip], r9d
	imul	rcx, rcx, 715827883
	sar	rcx, 33
	sub	ecx, eax
	lea	r11d, 0[0+rcx*4]
	mov	eax, ecx
	mov	DWORD PTR gUnknown_3000420[rip+4], ecx
	sub	eax, r11d
	lea	r11d, [r9+rax*4]
	mov	DWORD PTR gUnknown_3000420[rip+8], r11d
.L103:
	mov	r9, QWORD PTR gRefCollision[rip]
	movsx	r8, r8d
	movzx	eax, WORD PTR 48[r9]
	imul	eax, ecx
	add	eax, edx
	mov	rdx, QWORD PTR 24[r9+r8*8]
	cdqe
	movzx	edx, WORD PTR [rdx+rax*2]
	lea	eax, [r11+r11*2]
	lea	eax, [r10+rax*4]
	add	eax, eax
	mov	ecx, edx
	sal	edx, 5
	sal	ecx, 8
	cdqe
	add	rax, QWORD PTR 16[r9]
	add	rax, rcx
	movzx	eax, WORD PTR [rax+rdx]
	ret
	.p2align 4,,10
	.p2align 3
.L104:
	mov	r9d, eax
	mov	r10d, DWORD PTR gUnknown_3000410[rip+8]
	mov	edx, DWORD PTR gUnknown_3000410[rip+4]
	sar	r9d, 3
	cmp	DWORD PTR gUnknown_3000420[rip], r9d
	jne	.L102
.L105:
	mov	r11d, DWORD PTR gUnknown_3000420[rip+8]
	mov	ecx, DWORD PTR gUnknown_3000420[rip+4]
	jmp	.L103
	.seh_endproc
	.p2align 4
	.globl	sub_801EB44
	.def	sub_801EB44;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_801EB44
sub_801EB44:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rdi, QWORD PTR gRefCollision[rip]
	mov	r9d, ecx
	mov	ebx, r8d
	xor	ecx, ecx
	test	r9d, r9d
	js	.L107
	mov	eax, DWORD PTR 52[rdi]
	mov	ecx, r9d
	sub	eax, 1
	cmp	eax, r9d
	cmovbe	ecx, eax
.L107:
	test	edx, edx
	js	.L118
	mov	eax, DWORD PTR 56[rdi]
	sub	eax, 1
	cmp	eax, edx
	cmovbe	edx, eax
	mov	esi, edx
	and	esi, 7
.L108:
	mov	r8d, ebx
	and	r8d, 1
	call	sub_801EF94
	mov	r8, QWORD PTR [rdi]
	mov	edx, eax
	mov	ecx, eax
	mov	eax, 7
	sub	eax, esi
	and	ecx, 1023
	test	dh, 8
	cmovne	esi, eax
	lea	eax, [rsi+rcx*8]
	cdqe
	movzx	r8d, BYTE PTR [r8+rax]
	mov	eax, r8d
	and	eax, 15
	and	r8d, 8
	jne	.L110
	movsx	eax, al
.L111:
	mov	r8d, edx
	and	r8d, 1024
	and	ebx, 128
	je	.L112
	mov	r9, QWORD PTR 40[rdi]
	shr	ecx, 3
	and	edx, 7
	add	edx, edx
	movzx	ecx, WORD PTR [r9+rcx*2]
	bt	ecx, edx
	jnc	.L112
	xor	eax, eax
.L106:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L112:
	test	r8d, r8d
	je	.L106
	test	eax, -9
	je	.L106
	lea	edx, 8[rax]
	lea	ecx, -8[rax]
	test	eax, eax
	mov	eax, edx
	cmovg	eax, ecx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L110:
	or	eax, -16
	mov	r8d, eax
	movsx	eax, al
	cmp	r8b, -8
	mov	r8d, 8
	cmove	eax, r8d
	jmp	.L111
	.p2align 4,,10
	.p2align 3
.L118:
	xor	esi, esi
	xor	edx, edx
	jmp	.L108
	.seh_endproc
	.p2align 4
	.globl	sub_801EC3C
	.def	sub_801EC3C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_801EC3C
sub_801EC3C:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rsi, QWORD PTR gRefCollision[rip]
	mov	r9d, ecx
	mov	ebx, r8d
	test	edx, edx
	js	.L145
	mov	eax, DWORD PTR 52[rsi]
	mov	ecx, edx
	sub	eax, 1
	cmp	eax, edx
	cmovbe	ecx, eax
	mov	edi, ecx
	and	edi, 7
.L136:
	xor	edx, edx
	test	r9d, r9d
	js	.L137
	mov	eax, DWORD PTR 56[rsi]
	lea	edx, -1[rax]
	cmp	edx, r9d
	cmova	edx, r9d
.L137:
	mov	r8d, ebx
	and	r8d, 1
	call	sub_801EF94
	mov	r8, QWORD PTR [rsi]
	mov	edx, eax
	mov	ecx, eax
	mov	eax, 7
	sub	eax, edi
	and	ecx, 1023
	test	dh, 4
	cmovne	edi, eax
	lea	eax, [rdi+rcx*8]
	cdqe
	movsx	eax, BYTE PTR [r8+rax]
	mov	r8d, 8
	sar	eax, 4
	cmp	eax, -8
	cmove	eax, r8d
	mov	r8d, edx
	and	r8d, 2048
	and	ebx, 128
	je	.L140
	mov	r9, QWORD PTR 40[rsi]
	shr	ecx, 3
	and	edx, 7
	add	edx, edx
	movzx	ecx, WORD PTR [r9+rcx*2]
	bt	ecx, edx
	jnc	.L140
	xor	eax, eax
.L135:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L140:
	test	r8d, r8d
	je	.L135
	test	eax, -9
	je	.L135
	lea	edx, 8[rax]
	lea	ecx, -8[rax]
	test	eax, eax
	mov	eax, edx
	cmovg	eax, ecx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L145:
	xor	edi, edi
	xor	ecx, ecx
	jmp	.L136
	.seh_endproc
	.p2align 4
	.globl	sub_801ED24
	.def	sub_801ED24;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_801ED24
sub_801ED24:
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
	mov	rsi, QWORD PTR gRefCollision[rip]
	mov	r10d, ecx
	mov	edi, r8d
	mov	rbx, r9
	xor	ecx, ecx
	test	r10d, r10d
	js	.L164
	mov	eax, DWORD PTR 52[rsi]
	mov	ecx, r10d
	sub	eax, 1
	cmp	eax, r10d
	cmovbe	ecx, eax
.L164:
	test	edx, edx
	js	.L184
	mov	eax, DWORD PTR 56[rsi]
	sub	eax, 1
	cmp	eax, edx
	cmovbe	edx, eax
	mov	ebp, edx
	and	ebp, 7
.L165:
	mov	r8d, edi
	and	r8d, 1
	call	sub_801EF94
	mov	ecx, 7
	mov	r8, QWORD PTR [rsi]
	mov	edx, eax
	mov	r9d, eax
	sub	ecx, ebp
	and	edx, 1023
	and	r9d, 2048
	cmovne	ebp, ecx
	lea	ecx, 0[rbp+rdx*8]
	movsx	rcx, ecx
	movzx	r8d, BYTE PTR [r8+rcx]
	mov	ecx, r8d
	and	ecx, 15
	and	r8d, 8
	movsx	r8d, cl
	je	.L168
	or	ecx, -16
	movsx	r8d, cl
	cmp	cl, -8
	mov	ecx, 8
	cmove	r8d, ecx
.L168:
	mov	r11, QWORD PTR 8[rsi]
	mov	r10d, eax
	movsx	rcx, edx
	and	r10d, 1024
	and	edi, 128
	movzx	ecx, BYTE PTR [r11+rcx]
	je	.L169
	mov	r11, QWORD PTR 40[rsi]
	shr	edx, 3
	and	eax, 7
	add	eax, eax
	movzx	edx, WORD PTR [r11+rdx*2]
	bt	edx, eax
	jnc	.L169
	test	r10d, r10d
	je	.L204
	test	r9d, r9d
	je	.L203
	mov	eax, -128
	sub	eax, ecx
	mov	ecx, eax
.L203:
	xor	r8d, r8d
	mov	BYTE PTR [rbx], cl
	mov	eax, r8d
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L169:
	test	r10d, r10d
	je	.L202
	test	r8d, -9
	je	.L173
	test	r8d, r8d
	jle	.L205
	sub	r8d, 8
.L201:
	mov	eax, -128
	mov	edx, ecx
	sub	eax, ecx
	test	r9d, r9d
	cmovne	edx, eax
	mov	ecx, edx
	neg	ecx
.L206:
	mov	eax, r8d
	mov	BYTE PTR [rbx], cl
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L204:
	xor	r8d, r8d
.L202:
	mov	eax, -128
	mov	edx, ecx
	sub	eax, ecx
	test	r9d, r9d
	cmovne	edx, eax
	mov	ecx, edx
.L179:
	mov	eax, r8d
	mov	BYTE PTR [rbx], cl
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L184:
	xor	ebp, ebp
	xor	edx, edx
	jmp	.L165
	.p2align 4,,10
	.p2align 3
.L205:
	add	r8d, 8
	jmp	.L201
	.p2align 4,,10
	.p2align 3
.L173:
	mov	eax, -128
	mov	edx, ecx
	sub	eax, ecx
	test	r9d, r9d
	cmovne	edx, eax
	mov	ecx, edx
	test	r8d, r8d
	je	.L179
	mov	r8d, 8
	neg	ecx
	jmp	.L206
	.seh_endproc
	.p2align 4
	.globl	sub_801EE64
	.def	sub_801EE64;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_801EE64
sub_801EE64:
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
	mov	rdi, QWORD PTR gRefCollision[rip]
	mov	eax, ecx
	mov	esi, r8d
	mov	rbx, r9
	test	edx, edx
	js	.L226
	mov	ecx, DWORD PTR 52[rdi]
	sub	ecx, 1
	cmp	ecx, edx
	cmova	ecx, edx
	mov	ebp, ecx
	and	ebp, 7
	mov	r12d, ebp
.L208:
	xor	edx, edx
	test	eax, eax
	js	.L209
	mov	edx, DWORD PTR 56[rdi]
	sub	edx, 1
	cmp	edx, eax
	cmova	edx, eax
.L209:
	mov	r8d, esi
	and	r8d, 1
	call	sub_801EF94
	mov	edx, 7
	mov	r8, QWORD PTR [rdi]
	mov	r11, QWORD PTR 8[rdi]
	mov	ecx, eax
	mov	r9d, eax
	sub	edx, r12d
	mov	r10d, eax
	and	ecx, 1023
	and	r9d, 1024
	cmovne	ebp, edx
	lea	edx, 0[rbp+rcx*8]
	movsx	edx, BYTE PTR [r8+rdx]
	mov	r8d, 8
	sar	edx, 4
	cmp	edx, -8
	cmove	edx, r8d
	and	r10d, 2048
	movsx	r8, ecx
	and	esi, 128
	movzx	r8d, BYTE PTR [r11+r8]
	je	.L212
	mov	r11, QWORD PTR 40[rdi]
	shr	ecx, 3
	and	eax, 7
	add	eax, eax
	movzx	ecx, WORD PTR [r11+rcx*2]
	bt	ecx, eax
	jnc	.L212
	test	r10d, r10d
	je	.L245
	test	r9d, r9d
	je	.L244
	neg	r8d
.L244:
	xor	edx, edx
	mov	BYTE PTR [rbx], r8b
	mov	eax, edx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L212:
	test	r10d, r10d
	je	.L215
	test	edx, -9
	je	.L216
	test	edx, edx
	jle	.L246
	mov	eax, r8d
	sub	edx, 8
	neg	eax
	test	r9d, r9d
	cmovne	r8d, eax
.L219:
	mov	eax, -128
	sub	eax, r8d
	mov	r8d, eax
	mov	eax, edx
	mov	BYTE PTR [rbx], r8b
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L215:
	mov	eax, r8d
	neg	eax
	test	r9d, r9d
	cmovne	r8d, eax
.L222:
	mov	eax, edx
	mov	BYTE PTR [rbx], r8b
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L226:
	xor	r12d, r12d
	xor	ecx, ecx
	xor	ebp, ebp
	jmp	.L208
	.p2align 4,,10
	.p2align 3
.L245:
	xor	edx, edx
	mov	eax, r8d
	neg	r8d
	test	r9d, r9d
	cmove	r8d, eax
	mov	eax, edx
	mov	BYTE PTR [rbx], r8b
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L246:
	mov	eax, r8d
	add	edx, 8
	neg	eax
	test	r9d, r9d
	cmovne	r8d, eax
	jmp	.L219
	.p2align 4,,10
	.p2align 3
.L216:
	mov	eax, r8d
	neg	eax
	test	r9d, r9d
	cmovne	r8d, eax
	test	edx, edx
	je	.L222
	mov	edx, 8
	jmp	.L219
	.seh_endproc
	.p2align 4
	.globl	sub_801F044
	.def	sub_801F044;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_801F044
sub_801F044:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	r9d, -2063597565
	lea	r8, gUnknown_3000410[rip]
	mov	ecx, 3
	lea	rbx, 44[rsp]
	mov	DWORD PTR 44[rsp], 0
	mov	rdx, rbx
	call	DmaSet
	mov	r9d, -2063597565
	mov	rdx, rbx
	lea	r8, gUnknown_3000420[rip]
	mov	ecx, 3
	mov	DWORD PTR 44[rsp], 0
	call	DmaSet
	nop
	add	rsp, 48
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_801F07C
	.def	sub_801F07C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_801F07C
sub_801F07C:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rsi, QWORD PTR 112[rsp]
	test	rsi, rsi
	lea	rax, 44[rsp]
	mov	edi, r9d
	lea	r9, 45[rsp]
	mov	ebx, ecx
	cmove	rsi, rax
	call	[QWORD PTR 120[rsp]]
	test	eax, eax
	jne	.L250
	and	ebx, 7
	mov	eax, 8
	sub	eax, ebx
	add	ebx, 1
	test	edi, edi
	cmovle	eax, ebx
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L250:
	movzx	edx, BYTE PTR 45[rsp]
	mov	BYTE PTR [rsi], dl
	cmp	eax, 8
	je	.L257
	and	ebx, 7
	lea	edx, -1[rax]
	sub	edx, ebx
	add	ebx, eax
	test	eax, eax
	mov	eax, edx
	cmovle	eax, ebx
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L257:
	mov	eax, ebx
	or	ebx, -8
	and	eax, 7
	test	edi, edi
	not	eax
	cmovle	eax, ebx
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_801F100
	.def	sub_801F100;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_801F100
sub_801F100:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	ebx, ecx
	mov	esi, r9d
	call	[QWORD PTR 96[rsp]]
	test	eax, eax
	jne	.L259
	and	ebx, 7
	mov	eax, 8
	sub	eax, ebx
	add	ebx, 1
	test	esi, esi
	cmovle	eax, ebx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L259:
	cmp	eax, 8
	je	.L265
	and	ebx, 7
	lea	edx, -1[rax]
	sub	edx, ebx
	add	ebx, eax
	test	eax, eax
	mov	eax, edx
	cmovle	eax, ebx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L265:
	mov	eax, ebx
	or	ebx, -8
	and	eax, 7
	test	esi, esi
	not	eax
	cmovle	eax, ebx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.globl	gCollisionTable
	.section .rdata,"dr"
	.align 32
gCollisionTable:
	.quad	CollHeader_zone_1_act_1_fg
	.quad	CollHeader_zone_1_act_2_fg
	.quad	CollHeader_zone_1_act_boss_fg
	.quad	CollHeader_zone_1_act_dummy_fg
	.quad	CollHeader_zone_2_act_1_fg
	.quad	CollHeader_zone_2_act_2_fg
	.quad	CollHeader_zone_2_act_boss_fg
	.quad	CollHeader_zone_1_act_dummy_fg
	.quad	CollHeader_zone_3_act_1_fg
	.quad	CollHeader_zone_3_act_2_fg
	.quad	CollHeader_zone_3_act_boss_fg
	.quad	CollHeader_zone_1_act_dummy_fg
	.quad	CollHeader_zone_4_act_1_fg
	.quad	CollHeader_zone_4_act_2_fg
	.quad	CollHeader_zone_4_act_boss_fg
	.quad	CollHeader_zone_1_act_dummy_fg
	.quad	CollHeader_zone_5_act_1_fg
	.quad	CollHeader_zone_5_act_2_fg
	.quad	CollHeader_zone_5_act_boss_fg
	.quad	CollHeader_zone_1_act_dummy_fg
	.quad	CollHeader_zone_6_act_1_fg
	.quad	CollHeader_zone_6_act_2_fg
	.quad	CollHeader_zone_6_act_boss_fg
	.quad	CollHeader_zone_1_act_dummy_fg
	.quad	CollHeader_zone_7_act_1_fg
	.quad	CollHeader_zone_7_act_2_fg
	.quad	CollHeader_zone_7_act_boss_fg
	.quad	CollHeader_zone_1_act_dummy_fg
	.quad	CollHeader_zone_final_act_xx_fg
	.quad	CollHeader_zone_final_act_ta53_fg
	.quad	CollHeader_zone_final_act_unused_fg
.lcomm gUnknown_3000420,12,8
.lcomm gUnknown_3000410,12,8
	.globl	gRefCollision
	.bss
	.align 8
gRefCollision:
	.space 8
	.ident	"GCC: (GNU) 13-win32"
	.def	DmaSet;	.scl	2;	.type	32;	.endef
