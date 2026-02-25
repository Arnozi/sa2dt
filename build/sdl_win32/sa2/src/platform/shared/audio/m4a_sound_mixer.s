	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	SoundMain
	.def	SoundMain;	.scl	2;	.type	32;	.endef
	.seh_proc	SoundMain
SoundMain:
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
	movups	XMMWORD PTR 48[rsp], xmm6
	.seh_savexmm	xmm6, 48
	.seh_endprologue
	mov	rbp, QWORD PTR SOUND_INFO_PTR[rip]
	cmp	DWORD PTR 0[rbp], 1752395091
	jne	.L1
	movzx	eax, BYTE PTR 12[rbp]
	mov	DWORD PTR 0[rbp], 1752395092
	xor	r12d, r12d
	test	al, al
	je	.L3
	mov	rdx, QWORD PTR .refptr.REG_BASE[rip]
	movzx	edx, WORD PTR 6[rdx]
	lea	r12d, [rax+rdx]
	cmp	edx, 160
	lea	eax, 228[r12]
	cmovb	r12d, eax
.L3:
	mov	rax, QWORD PTR 40[rbp]
	test	rax, rax
	je	.L4
	mov	rcx, QWORD PTR 48[rbp]
	call	rax
.L4:
	call	[QWORD PTR 56[rbp]]
	movzx	ecx, BYTE PTR 4[rbp]
	mov	r9d, DWORD PTR 16[rbp]
	lea	rdx, 1192[rbp]
	mov	r8d, ecx
	cmp	ecx, 1
	jle	.L90
	movzx	eax, BYTE PTR 11[rbp]
	sub	ecx, 1
	mov	WORD PTR 42[rsp], r9w
	movzx	r10d, r9w
	sub	eax, ecx
	imul	eax, r9d
	add	eax, eax
	cdqe
	lea	r13, [rdx+rax*4]
	movzx	eax, BYTE PTR 5[rbp]
	test	al, al
	je	.L7
	cmp	r8b, 2
	jne	.L91
.L11:
	pxor	xmm1, xmm1
	movzx	ecx, WORD PTR 42[rsp]
	cvtsi2ss	xmm1, eax
	mulss	xmm1, DWORD PTR .LC0[rip]
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L12:
	movss	xmm0, DWORD PTR 0[r13+rax*8]
	addss	xmm0, DWORD PTR 4[r13+rax*8]
	addss	xmm0, DWORD PTR [rdx+rax*8]
	addss	xmm0, DWORD PTR 4[rdx+rax*8]
	mulss	xmm0, xmm1
	shufps	xmm0, xmm0, 0xe0
	movlps	QWORD PTR 0[r13+rax*8], xmm0
	add	rax, 1
	cmp	ax, cx
	jb	.L12
.L13:
	movzx	eax, BYTE PTR 6[rbp]
	movss	xmm3, DWORD PTR 24[rbp]
	lea	rdx, 136[rbp]
	test	al, al
	jle	.L18
	sub	eax, 1
	mov	QWORD PTR 32[rsp], r13
	movq	xmm2, QWORD PTR .LC2[rip]
	lea	rcx, [rax+rax*4]
	mov	DWORD PTR 44[rsp], r10d
	lea	rax, [rax+rcx*2]
	lea	r15, 224[rbp+rax*8]
	movzx	eax, WORD PTR 42[rsp]
	lea	rdi, 0[r13+rax*8]
	.p2align 4,,10
	.p2align 3
.L50:
	test	r12d, r12d
	je	.L16
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	movzx	eax, WORD PTR 6[rax]
	lea	ecx, 228[rax]
	cmp	ax, 160
	cmovb	eax, ecx
	movzx	eax, ax
	cmp	eax, r12d
	jnb	.L85
.L16:
	movzx	eax, BYTE PTR [rdx]
	test	al, -57
	je	.L19
	mov	rbx, QWORD PTR 40[rdx]
	test	al, al
	js	.L20
	movzx	r9d, BYTE PTR 9[rdx]
	test	al, 4
	je	.L21
	sub	BYTE PTR 12[rdx], 1
	je	.L46
.L22:
	movzx	r8d, r9b
.L87:
	mov	r9d, DWORD PTR 24[rdx]
	mov	r10, QWORD PTR 48[rdx]
	and	eax, 16
.L25:
	movzx	ecx, BYTE PTR 7[rbp]
	movzx	r13d, BYTE PTR 2[rdx]
	movzx	esi, BYTE PTR 3[rdx]
	add	ecx, 1
	imul	ecx, r8d
	shr	ecx, 4
	movzx	ecx, cl
	imul	r13d, ecx
	imul	esi, ecx
	xor	ecx, ecx
	mov	r8d, r13d
	mov	r11d, esi
	shr	r8d, 8
	shr	r11d, 8
	mov	BYTE PTR 10[rdx], r8b
	mov	BYTE PTR 11[rdx], r11b
	test	al, al
	je	.L35
	mov	ecx, DWORD PTR 8[rbx]
	mov	rax, rcx
	lea	r14, 16[rbx+rcx]
	mov	ecx, DWORD PTR 12[rbx]
	sub	ecx, eax
.L35:
	mov	eax, r9d
	test	BYTE PTR 1[rdx], 7
	je	.L36
	cmp	WORD PTR 42[rsp], 0
	je	.L88
	mov	r9, QWORD PTR 32[rsp]
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L93:
	test	ecx, ecx
	je	.L46
	add	r9, 8
	mov	r10, r14
	mov	eax, ecx
	cmp	r9, rdi
	je	.L92
.L40:
	movsx	ebx, BYTE PTR [r10]
	mov	esi, r11d
	movq	xmm1, QWORD PTR [r9]
	imul	esi, ebx
	imul	ebx, r8d
	movd	xmm0, esi
	movd	xmm6, ebx
	punpckldq	xmm0, xmm6
	cvtdq2ps	xmm0, xmm0
	mulps	xmm0, xmm2
	addps	xmm0, xmm1
	movlps	QWORD PTR [r9], xmm0
	sub	eax, 1
	je	.L93
	add	r9, 8
	add	r10, 1
	cmp	r9, rdi
	jne	.L40
.L92:
	mov	r9d, eax
.L88:
	mov	DWORD PTR 24[rdx], r9d
	mov	QWORD PTR 48[rdx], r10
	.p2align 4,,10
	.p2align 3
.L19:
	add	rdx, 88
	cmp	rdx, r15
	jne	.L50
.L85:
	mov	r10d, DWORD PTR 44[rsp]
.L18:
	mov	DWORD PTR 0[rbp], 1752395091
	movups	xmm6, XMMWORD PTR 48[rsp]
	mov	ecx, r10d
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	cgb_audio_generate
	.p2align 4,,10
	.p2align 3
.L1:
	movups	xmm6, XMMWORD PTR 48[rsp]
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
.L90:
	movzx	eax, BYTE PTR 5[rbp]
	mov	WORD PTR 42[rsp], r9w
	movzx	r10d, r9w
	mov	r13, rdx
	test	al, al
	jne	.L6
.L7:
	test	r10d, r10d
	je	.L13
	movsx	rcx, r10d
	mov	rax, r13
	lea	rdx, 0[r13+rcx*8]
	and	ecx, 1
	je	.L14
	lea	rax, 8[r13]
	mov	QWORD PTR 0[r13], 0
	cmp	rax, rdx
	je	.L13
	.p2align 4,,10
	.p2align 3
.L14:
	mov	QWORD PTR [rax], 0
	add	rax, 16
	mov	QWORD PTR -8[rax], 0
	cmp	rax, rdx
	jne	.L14
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L21:
	test	al, 64
	je	.L23
	movzx	r8d, BYTE PTR 7[rdx]
	movzx	ecx, BYTE PTR 12[rdx]
	imul	r8d, r9d
	shr	r8d, 8
	mov	BYTE PTR 9[rdx], r8b
	cmp	cl, r8b
	jb	.L87
	test	cl, cl
	jne	.L31
	.p2align 4,,10
	.p2align 3
.L46:
	mov	BYTE PTR [rdx], 0
	add	rdx, 88
	cmp	rdx, r15
	jne	.L50
	jmp	.L85
	.p2align 4,,10
	.p2align 3
.L20:
	and	eax, 64
	jne	.L46
	mov	BYTE PTR [rdx], 3
	mov	r9d, DWORD PTR 12[rbx]
	lea	r10, 16[rbx]
	cmp	WORD PTR 2[rbx], 16383
	movzx	r8d, BYTE PTR 4[rdx]
	mov	QWORD PTR 48[rdx], r10
	mov	DWORD PTR 24[rdx], r9d
	mov	DWORD PTR 28[rdx], 0x00000000
	jbe	.L34
	mov	BYTE PTR [rdx], 19
	mov	eax, 16
.L34:
	mov	BYTE PTR 9[rdx], r8b
	movzx	r8d, r8b
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L36:
	mov	r8d, DWORD PTR 32[rdx]
	pxor	xmm6, xmm6
	movsx	r11w, BYTE PTR [r10]
	lea	rbx, 1[r10]
	movss	xmm1, DWORD PTR 28[rdx]
	cvtsi2ss	xmm6, r8
	movsx	r8w, BYTE PTR 1[r10]
	sub	r8d, r11d
	cmp	WORD PTR 42[rsp], 0
	mulss	xmm6, xmm3
	je	.L43
	movd	xmm5, esi
	movd	xmm4, r13d
	mov	r10, QWORD PTR 32[rsp]
	punpckldq	xmm5, xmm4
	psrld	xmm5, 8
	cvtdq2ps	xmm5, xmm5
	jmp	.L49
	.p2align 4,,10
	.p2align 3
.L45:
	lea	r8d, -1[rsi]
	mov	esi, esi
	movsx	r11w, BYTE PTR [rbx+r8]
	add	rbx, rsi
	movsx	r8w, BYTE PTR [rbx]
	sub	r8d, r11d
.L44:
	add	r10, 8
	cmp	r10, rdi
	je	.L94
.L49:
	movsx	r9d, r8w
	pxor	xmm0, xmm0
	pxor	xmm4, xmm4
	cvtsi2ss	xmm0, r9d
	movsx	r9d, r11w
	cvtsi2ss	xmm4, r9d
	mov	r9d, eax
	mulss	xmm0, xmm1
	addss	xmm1, xmm6
	cvttss2si	rsi, xmm1
	addss	xmm0, xmm4
	movq	xmm4, QWORD PTR [r10]
	shufps	xmm0, xmm0, 0xe0
	mulps	xmm0, xmm5
	mulps	xmm0, xmm2
	addps	xmm0, xmm4
	movlps	QWORD PTR [r10], xmm0
	test	esi, esi
	je	.L44
	cvttss2si	r8d, xmm1
	pxor	xmm0, xmm0
	sub	eax, esi
	mov	r9d, eax
	cvtsi2ss	xmm0, r8d
	subss	xmm1, xmm0
	test	eax, eax
	jg	.L45
	test	ecx, ecx
	je	.L46
	mov	r8d, eax
	add	eax, ecx
	neg	r8d
	test	eax, eax
	jg	.L47
	.p2align 4,,10
	.p2align 3
.L48:
	add	eax, ecx
	sub	r8d, ecx
	test	eax, eax
	jle	.L48
.L47:
	lea	ebx, 1[r8]
	mov	r9d, r8d
	add	r10, 8
	add	rbx, r14
	movsx	r11w, BYTE PTR [r14+r9]
	mov	r9d, eax
	movsx	r8w, BYTE PTR [rbx]
	sub	r8d, r11d
	cmp	r10, rdi
	jne	.L49
	.p2align 4,,10
	.p2align 3
.L94:
	lea	r10, -1[rbx]
.L43:
	mov	DWORD PTR 24[rdx], r9d
	mov	QWORD PTR 48[rdx], r10
	movss	DWORD PTR 28[rdx], xmm1
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L23:
	mov	ecx, eax
	and	ecx, 3
	cmp	cl, 2
	je	.L27
	cmp	cl, 3
	jne	.L22
.L28:
	movzx	r10d, BYTE PTR 4[rdx]
	movzx	ecx, r9b
	add	ecx, r10d
	mov	r8d, r10d
	cmp	cx, 255
	jbe	.L32
	sub	eax, 1
	mov	r9d, DWORD PTR 24[rdx]
	mov	r10, QWORD PTR 48[rdx]
	mov	BYTE PTR 9[rdx], -1
	mov	BYTE PTR [rdx], al
	mov	r8d, 255
	and	eax, 16
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L27:
	movzx	r8d, BYTE PTR 5[rdx]
	movzx	ecx, BYTE PTR 6[rdx]
	imul	r8d, r9d
	shr	r8d, 8
	mov	BYTE PTR 9[rdx], r8b
	cmp	cl, r8b
	jb	.L87
	test	cl, cl
	jne	.L30
	cmp	BYTE PTR 12[rdx], 0
	je	.L46
	.p2align 4,,10
	.p2align 3
.L31:
	mov	ecx, eax
	mov	r9d, DWORD PTR 24[rdx]
	mov	r10, QWORD PTR 48[rdx]
	and	eax, 16
	or	ecx, 4
	mov	BYTE PTR [rdx], cl
	jmp	.L25
.L91:
	mov	rdx, r13
.L6:
	lea	ecx, [r10+r10]
	mov	r13, rdx
	movsx	rcx, ecx
	lea	rdx, [rdx+rcx*4]
	jmp	.L11
.L30:
	sub	eax, 1
	mov	BYTE PTR 9[rdx], cl
	mov	r9d, DWORD PTR 24[rdx]
	movzx	r8d, cl
	mov	BYTE PTR [rdx], al
	mov	r10, QWORD PTR 48[rdx]
	and	eax, 16
	jmp	.L25
.L32:
	add	r8d, r9d
	mov	r10, QWORD PTR 48[rdx]
	mov	r9d, DWORD PTR 24[rdx]
	and	eax, 16
	jmp	.L34
	.seh_endproc
	.p2align 4
	.globl	umul3232H32
	.def	umul3232H32;	.scl	2;	.type	32;	.endef
	.seh_proc	umul3232H32
umul3232H32:
	.seh_endprologue
	mov	ecx, ecx
	mov	eax, edx
	imul	rax, rcx
	shr	rax, 32
	ret
	.seh_endproc
	.p2align 4
	.globl	SoundMainBTM
	.def	SoundMainBTM;	.scl	2;	.type	32;	.endef
	.seh_proc	SoundMainBTM
SoundMainBTM:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	r8d, 83886100
	mov	rdx, rcx
	lea	rcx, 44[rsp]
	mov	DWORD PTR 44[rsp], 0
	call	CpuSet
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	MP2KClearChain
	.def	MP2KClearChain;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2KClearChain
MP2KClearChain:
	.seh_endprologue
	mov	r8, QWORD PTR 56[rcx]
	test	r8, r8
	je	.L97
	mov	rdx, QWORD PTR 64[rcx]
	mov	rax, QWORD PTR 72[rcx]
	test	rdx, rdx
	je	.L99
	mov	QWORD PTR 72[rdx], rax
.L100:
	test	rax, rax
	je	.L101
	mov	QWORD PTR 64[rax], rdx
.L101:
	mov	QWORD PTR 56[rcx], 0
.L97:
	ret
	.p2align 4,,10
	.p2align 3
.L99:
	mov	QWORD PTR 32[r8], rax
	jmp	.L100
	.seh_endproc
	.p2align 4
	.globl	MPlayJumpTableCopy
	.def	MPlayJumpTableCopy;	.scl	2;	.type	32;	.endef
	.seh_proc	MPlayJumpTableCopy
MPlayJumpTableCopy:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gMPlayJumpTableTemplate[rip]
	mov	rax, QWORD PTR [rsi]
	lea	rdi, 8[rcx]
	mov	QWORD PTR [rcx], rax
	mov	rax, QWORD PTR 280[rsi]
	and	rdi, -8
	mov	QWORD PTR 280[rcx], rax
	sub	rcx, rdi
	sub	rsi, rcx
	add	ecx, 288
	shr	ecx, 3
	rep movsq
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_fine
	.def	MP2K_event_fine;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_fine
MP2K_event_fine:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, QWORD PTR 32[rdx]
	mov	rsi, rdx
	test	rbx, rbx
	je	.L110
	.p2align 4,,10
	.p2align 3
.L112:
	movzx	eax, BYTE PTR [rbx]
	test	al, -57
	je	.L111
	or	eax, 64
	mov	BYTE PTR [rbx], al
.L111:
	mov	rcx, rbx
	call	ClearChain
	mov	rbx, QWORD PTR 72[rbx]
	test	rbx, rbx
	jne	.L112
.L110:
	mov	BYTE PTR [rsi], 0
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_goto
	.def	MP2K_event_goto;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_goto
MP2K_event_goto:
	.seh_endprologue
	xor	eax, eax
	mov	r9, QWORD PTR 80[rdx]
	lea	rcx, 7[r9]
	.p2align 4,,10
	.p2align 3
.L121:
	movzx	r8d, BYTE PTR [rcx]
	sub	rcx, 1
	or	rax, r8
	sal	rax, 8
	cmp	r9, rcx
	jne	.L121
	movzx	ecx, BYTE PTR [r9]
	or	rax, rcx
	mov	QWORD PTR 80[rdx], rax
	ret
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_patt
	.def	MP2K_event_patt;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_patt
MP2K_event_patt:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	movzx	eax, BYTE PTR 2[rdx]
	mov	rsi, rdx
	cmp	al, 2
	ja	.L124
	mov	r8, QWORD PTR 80[rdx]
	movzx	edx, al
	add	eax, 1
	lea	rcx, 8[r8]
	mov	QWORD PTR 88[rsi+rdx*8], rcx
	lea	rdx, 7[r8]
	mov	BYTE PTR 2[rsi], al
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L125:
	movzx	ecx, BYTE PTR [rdx]
	sub	rdx, 1
	or	rax, rcx
	sal	rax, 8
	cmp	r8, rdx
	jne	.L125
	movzx	edx, BYTE PTR [r8]
	or	rax, rdx
	mov	QWORD PTR 80[rsi], rax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L124:
	mov	rbx, QWORD PTR 32[rdx]
	test	rbx, rbx
	je	.L127
	.p2align 4,,10
	.p2align 3
.L129:
	movzx	eax, BYTE PTR [rbx]
	test	al, -57
	je	.L128
	or	eax, 64
	mov	BYTE PTR [rbx], al
.L128:
	mov	rcx, rbx
	call	ClearChain
	mov	rbx, QWORD PTR 72[rbx]
	test	rbx, rbx
	jne	.L129
.L127:
	mov	BYTE PTR [rsi], 0
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_pend
	.def	MP2K_event_pend;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_pend
MP2K_event_pend:
	.seh_endprologue
	movzx	eax, BYTE PTR 2[rdx]
	test	al, al
	je	.L138
	sub	eax, 1
	mov	BYTE PTR 2[rdx], al
	movzx	eax, al
	mov	rax, QWORD PTR 88[rdx+rax*8]
	mov	QWORD PTR 80[rdx], rax
.L138:
	ret
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_rept
	.def	MP2K_event_rept;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_rept
MP2K_event_rept:
	.seh_endprologue
	mov	r8, QWORD PTR 80[rdx]
	cmp	BYTE PTR [r8], 0
	lea	r9, 1[r8]
	je	.L152
	movzx	eax, BYTE PTR 3[rdx]
	mov	QWORD PTR 80[rdx], r9
	add	eax, 1
	mov	BYTE PTR 3[rdx], al
	cmp	al, BYTE PTR [r8]
	jb	.L153
	add	r8, 10
	mov	BYTE PTR 3[rdx], 0
	mov	QWORD PTR 80[rdx], r8
	ret
	.p2align 4,,10
	.p2align 3
.L153:
	lea	rcx, 8[r8]
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L148:
	movzx	r10d, BYTE PTR [rcx]
	sub	rcx, 1
	or	rax, r10
	sal	rax, 8
	cmp	r9, rcx
	jne	.L148
	movzx	r8d, BYTE PTR 1[r8]
	or	r8, rax
.L154:
	mov	QWORD PTR 80[rdx], r8
	ret
	.p2align 4,,10
	.p2align 3
.L152:
	mov	QWORD PTR 80[rdx], r9
	lea	rcx, 8[r8]
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L145:
	movzx	r10d, BYTE PTR [rcx]
	sub	rcx, 1
	or	rax, r10
	sal	rax, 8
	cmp	r9, rcx
	jne	.L145
	movzx	r8d, BYTE PTR 1[r8]
	or	r8, rax
	jmp	.L154
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_prio
	.def	MP2K_event_prio;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_prio
MP2K_event_prio:
	.seh_endprologue
	mov	rax, QWORD PTR 80[rdx]
	lea	rcx, 1[rax]
	mov	QWORD PTR 80[rdx], rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR 29[rdx], al
	ret
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_tempo
	.def	MP2K_event_tempo;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_tempo
MP2K_event_tempo:
	.seh_endprologue
	mov	rax, QWORD PTR 80[rdx]
	lea	r8, 1[rax]
	mov	QWORD PTR 80[rdx], r8
	movzx	eax, BYTE PTR [rax]
	movzx	edx, WORD PTR 42[rcx]
	add	eax, eax
	mov	WORD PTR 40[rcx], ax
	movzx	eax, ax
	imul	eax, edx
	sar	eax, 8
	mov	WORD PTR 44[rcx], ax
	ret
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_keysh
	.def	MP2K_event_keysh;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_keysh
MP2K_event_keysh:
	.seh_endprologue
	mov	rax, QWORD PTR 80[rdx]
	lea	rcx, 1[rax]
	mov	QWORD PTR 80[rdx], rcx
	movzx	eax, BYTE PTR [rax]
	or	BYTE PTR [rdx], 12
	mov	BYTE PTR 10[rdx], al
	ret
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_voice
	.def	MP2K_event_voice;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_voice
MP2K_event_voice:
	.seh_endprologue
	mov	rax, QWORD PTR 80[rdx]
	lea	r8, 1[rax]
	mov	QWORD PTR 80[rdx], r8
	movzx	eax, BYTE PTR [rax]
	mov	r8, QWORD PTR 64[rcx]
	lea	rax, [rax+rax*2]
	lea	rax, [r8+rax*8]
	movdqu	xmm0, XMMWORD PTR [rax]
	movups	XMMWORD PTR 40[rdx], xmm0
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR 56[rdx], rax
	ret
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_vol
	.def	MP2K_event_vol;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_vol
MP2K_event_vol:
	.seh_endprologue
	mov	rax, QWORD PTR 80[rdx]
	lea	rcx, 1[rax]
	mov	QWORD PTR 80[rdx], rcx
	movzx	eax, BYTE PTR [rax]
	or	BYTE PTR [rdx], 3
	mov	BYTE PTR 18[rdx], al
	ret
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_pan
	.def	MP2K_event_pan;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_pan
MP2K_event_pan:
	.seh_endprologue
	mov	rax, QWORD PTR 80[rdx]
	lea	rcx, 1[rax]
	mov	QWORD PTR 80[rdx], rcx
	movzx	eax, BYTE PTR [rax]
	or	BYTE PTR [rdx], 3
	sub	eax, 64
	mov	BYTE PTR 20[rdx], al
	ret
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_bend
	.def	MP2K_event_bend;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_bend
MP2K_event_bend:
	.seh_endprologue
	mov	rax, QWORD PTR 80[rdx]
	lea	rcx, 1[rax]
	mov	QWORD PTR 80[rdx], rcx
	movzx	eax, BYTE PTR [rax]
	or	BYTE PTR [rdx], 12
	sub	eax, 64
	mov	BYTE PTR 14[rdx], al
	ret
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_bendr
	.def	MP2K_event_bendr;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_bendr
MP2K_event_bendr:
	.seh_endprologue
	mov	rax, QWORD PTR 80[rdx]
	lea	rcx, 1[rax]
	mov	QWORD PTR 80[rdx], rcx
	movzx	eax, BYTE PTR [rax]
	or	BYTE PTR [rdx], 12
	mov	BYTE PTR 15[rdx], al
	ret
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_lfodl
	.def	MP2K_event_lfodl;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_lfodl
MP2K_event_lfodl:
	.seh_endprologue
	mov	rax, QWORD PTR 80[rdx]
	lea	rcx, 1[rax]
	mov	QWORD PTR 80[rdx], rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR 27[rdx], al
	ret
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_modt
	.def	MP2K_event_modt;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_modt
MP2K_event_modt:
	.seh_endprologue
	mov	rax, QWORD PTR 80[rdx]
	lea	rcx, 1[rax]
	mov	QWORD PTR 80[rdx], rcx
	movzx	eax, BYTE PTR [rax]
	cmp	BYTE PTR 24[rdx], al
	je	.L164
	or	BYTE PTR [rdx], 15
	mov	BYTE PTR 24[rdx], al
.L164:
	ret
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_tune
	.def	MP2K_event_tune;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_tune
MP2K_event_tune:
	.seh_endprologue
	mov	rax, QWORD PTR 80[rdx]
	lea	rcx, 1[rax]
	mov	QWORD PTR 80[rdx], rcx
	movzx	eax, BYTE PTR [rax]
	or	BYTE PTR [rdx], 12
	sub	eax, 64
	mov	BYTE PTR 12[rdx], al
	ret
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_port
	.def	MP2K_event_port;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_port
MP2K_event_port:
	.seh_endprologue
	mov	r8, QWORD PTR .refptr.REG_BASE[rip]
	mov	rax, QWORD PTR 80[rdx]
	lea	rcx, 1[rax]
	mov	QWORD PTR 80[rdx], rcx
	movzx	ecx, BYTE PTR [rax]
	lea	rcx, 108[r8+rcx]
	lea	r8, 2[rax]
	mov	QWORD PTR 80[rdx], r8
	movzx	eax, BYTE PTR 1[rax]
	mov	BYTE PTR [rcx], al
	ret
	.seh_endproc
	.p2align 4
	.globl	MP2KPlayerMain
	.def	MP2KPlayerMain;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2KPlayerMain
MP2KPlayerMain:
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
	cmp	DWORD PTR 72[rcx], 1752395091
	mov	rbx, rcx
	jne	.L168
	mov	rax, QWORD PTR 80[rcx]
	mov	DWORD PTR 72[rcx], 1752395092
	mov	rdi, QWORD PTR SOUND_INFO_PTR[rip]
	test	rax, rax
	je	.L170
	mov	rcx, QWORD PTR 88[rcx]
	call	rax
.L170:
	mov	edx, DWORD PTR 8[rbx]
	test	edx, edx
	js	.L172
	mov	rcx, rbx
	call	FadeOutBody
	mov	eax, DWORD PTR 8[rbx]
	test	eax, eax
	js	.L172
	movzx	eax, WORD PTR 44[rbx]
	add	ax, WORD PTR 46[rbx]
	mov	WORD PTR 46[rbx], ax
	cmp	ax, 149
	jbe	.L174
	movzx	edx, BYTE PTR 12[rbx]
	mov	rbp, QWORD PTR .refptr.gClockTable[rip]
	.p2align 4,,10
	.p2align 3
.L175:
	test	dl, dl
	je	.L253
	xor	esi, esi
	xor	r12d, r12d
	lea	r13, 44[rsp]
	jmp	.L198
	.p2align 4,,10
	.p2align 3
.L176:
	add	rsi, 1
	movzx	eax, dl
	cmp	esi, eax
	jnb	.L254
.L198:
	lea	r14, 0[0+rsi*8]
	sub	r14, rsi
	sal	r14, 4
	add	r14, QWORD PTR 56[rbx]
	movzx	eax, BYTE PTR [r14]
	test	al, al
	jns	.L176
	mov	r15, QWORD PTR 32[r14]
	test	r15, r15
	jne	.L182
	jmp	.L177
	.p2align 4,,10
	.p2align 3
.L178:
	movzx	eax, BYTE PTR 16[r15]
	test	al, al
	je	.L179
	sub	eax, 1
	mov	BYTE PTR 16[r15], al
	test	al, al
	jne	.L179
	or	edx, 64
	mov	BYTE PTR [r15], dl
.L179:
	mov	r15, QWORD PTR 72[r15]
	test	r15, r15
	je	.L255
.L182:
	movzx	edx, BYTE PTR [r15]
	test	dl, -57
	jne	.L178
	mov	rcx, r15
	call	ClearChain
	mov	r15, QWORD PTR 72[r15]
	test	r15, r15
	jne	.L182
.L255:
	movzx	eax, BYTE PTR [r14]
.L177:
	test	al, 64
	jne	.L256
	.p2align 4,,10
	.p2align 3
.L183:
	movzx	eax, BYTE PTR 1[r14]
.L252:
	test	al, al
	jne	.L184
.L257:
	mov	rax, QWORD PTR 80[r14]
	movzx	ecx, BYTE PTR [rax]
	test	cl, cl
	js	.L185
	movzx	ecx, BYTE PTR 7[r14]
	cmp	cl, -50
	jbe	.L187
.L186:
	add	ecx, 49
	mov	r8, r14
	mov	rdx, rbx
	movzx	ecx, cl
	call	[QWORD PTR 88[rdi]]
	movzx	eax, BYTE PTR 1[r14]
	test	al, al
	je	.L257
.L184:
	sub	eax, 1
	mov	BYTE PTR 1[r14], al
	movzx	eax, BYTE PTR 25[r14]
	test	al, al
	jne	.L258
.L193:
	mov	ecx, esi
	movzx	edx, BYTE PTR 12[rbx]
	mov	eax, 1
	add	rsi, 1
	sal	eax, cl
	or	r12d, eax
	movzx	eax, dl
	cmp	esi, eax
	jb	.L198
	.p2align 4,,10
	.p2align 3
.L254:
	add	DWORD PTR 16[rbx], 1
	test	r12w, r12w
	je	.L200
	movzx	eax, WORD PTR 46[rbx]
	movzx	r12d, r12w
	mov	DWORD PTR 8[rbx], r12d
	sub	ax, 150
	mov	WORD PTR 46[rbx], ax
	cmp	ax, 149
	ja	.L175
.L174:
	xor	r14d, r14d
	xor	r13d, r13d
	mov	r12d, 127
	jmp	.L214
	.p2align 4,,10
	.p2align 3
.L203:
	movzx	eax, BYTE PTR 12[rbx]
	add	r13d, 1
	add	r14, 112
	cmp	r13d, eax
	jnb	.L172
.L214:
	mov	rbp, QWORD PTR 56[rbx]
	add	rbp, r14
	movzx	eax, BYTE PTR 0[rbp]
	test	al, al
	jns	.L203
	test	al, 15
	je	.L203
	mov	rdx, rbp
	mov	rcx, rbx
	call	TrkVolPitSet
	mov	rsi, QWORD PTR 32[rbp]
	test	rsi, rsi
	jne	.L204
	jmp	.L213
	.p2align 4,,10
	.p2align 3
.L207:
	test	cl, cl
	je	.L206
	movsx	ecx, BYTE PTR 8[rbp]
	movzx	edx, BYTE PTR 8[rsi]
	add	edx, ecx
	mov	ecx, 0
	cmovs	edx, ecx
	test	al, al
	je	.L212
.L210:
	movzx	r8d, BYTE PTR 9[rbp]
	movzx	edx, dl
	movzx	ecx, al
	call	[QWORD PTR 72[rdi]]
	or	BYTE PTR 29[rsi], 2
	mov	DWORD PTR 32[rsi], eax
.L206:
	mov	rsi, QWORD PTR 72[rsi]
	test	rsi, rsi
	je	.L213
.L204:
	test	BYTE PTR [rsi], -57
	je	.L259
	movzx	edx, BYTE PTR 0[rbp]
	movzx	eax, BYTE PTR 1[rsi]
	mov	ecx, edx
	and	eax, 7
	and	ecx, 12
	and	edx, 3
	je	.L207
	movzx	r10d, BYTE PTR 20[rsi]
	movzx	r9d, BYTE PTR 18[rsi]
	movzx	r11d, BYTE PTR 16[rbp]
	movzx	r8d, BYTE PTR 17[rbp]
	lea	edx, -128[r10]
	movzx	edx, dl
	imul	edx, r9d
	imul	edx, r11d
	mov	r11d, 255
	sar	edx, 14
	cmp	edx, r11d
	cmovg	edx, r11d
	mov	BYTE PTR 2[rsi], dl
	mov	edx, r12d
	sub	edx, r10d
	movzx	edx, dl
	imul	edx, r9d
	imul	edx, r8d
	mov	r8d, 255
	sar	edx, 14
	cmp	edx, r8d
	cmovg	edx, r8d
	mov	BYTE PTR 3[rsi], dl
	test	al, al
	je	.L208
	or	BYTE PTR 29[rsi], 1
	test	cl, cl
	je	.L206
	movsx	ecx, BYTE PTR 8[rbp]
	movzx	edx, BYTE PTR 8[rsi]
	add	edx, ecx
	mov	ecx, 0
	cmovs	edx, ecx
	jmp	.L210
.L253:
	add	DWORD PTR 16[rbx], 1
.L200:
	mov	DWORD PTR 8[rbx], -2147483648
.L172:
	mov	DWORD PTR 72[rbx], 1752395091
.L168:
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
.L187:
	cmp	cl, -80
	ja	.L188
	add	ecx, -128
	movsx	rcx, ecx
	movzx	eax, BYTE PTR 0[rbp+rcx]
	mov	BYTE PTR 1[r14], al
	jmp	.L252
	.p2align 4,,10
	.p2align 3
.L185:
	add	rax, 1
	mov	QWORD PTR 80[r14], rax
	cmp	cl, -68
	jbe	.L187
	mov	BYTE PTR 7[r14], cl
	cmp	cl, -50
	ja	.L186
.L188:
	add	ecx, 79
	mov	rdx, r14
	mov	BYTE PTR 14[rbx], cl
	mov	r8, QWORD PTR 80[rdi]
	movzx	eax, cl
	mov	rcx, rbx
	call	[QWORD PTR [r8+rax*8]]
	cmp	BYTE PTR [r14], 0
	jne	.L183
	jmp	.L193
	.p2align 4,,10
	.p2align 3
.L258:
	movzx	edx, BYTE PTR 23[r14]
	test	dl, dl
	je	.L193
	movzx	ecx, BYTE PTR 28[r14]
	test	cl, cl
	jne	.L260
	add	al, BYTE PTR 26[r14]
	mov	ecx, -128
	mov	r9d, eax
	sub	ecx, eax
	mov	BYTE PTR 26[r14], al
	sub	r9b, 64
	cmovns	eax, ecx
	movsx	eax, al
	imul	edx, eax
	sar	edx, 6
	cmp	BYTE PTR 22[r14], dl
	je	.L193
	cmp	BYTE PTR 24[r14], 0
	movzx	eax, BYTE PTR [r14]
	mov	BYTE PTR 22[r14], dl
	jne	.L197
	or	eax, 12
	mov	BYTE PTR [r14], al
	jmp	.L193
	.p2align 4,,10
	.p2align 3
.L256:
	mov	r8d, 83886100
	mov	rdx, r14
	mov	rcx, r13
	mov	DWORD PTR 44[rsp], 0
	call	CpuSet
	mov	BYTE PTR [r14], -128
	mov	BYTE PTR 15[r14], 2
	mov	BYTE PTR 19[r14], 64
	mov	BYTE PTR 25[r14], 22
	mov	BYTE PTR 40[r14], 1
	jmp	.L183
.L260:
	sub	ecx, 1
	mov	BYTE PTR 28[r14], cl
	jmp	.L193
.L197:
	or	eax, 3
	mov	BYTE PTR [r14], al
	jmp	.L193
.L259:
	mov	rcx, rsi
	call	ClearChain
	mov	rsi, QWORD PTR 72[rsi]
	test	rsi, rsi
	jne	.L204
.L213:
	and	BYTE PTR 0[rbp], -16
	jmp	.L203
.L208:
	test	cl, cl
	je	.L206
	movsx	eax, BYTE PTR 8[rbp]
	movzx	edx, BYTE PTR 8[rsi]
	add	edx, eax
	mov	eax, 0
	cmovs	edx, eax
.L212:
	mov	rcx, QWORD PTR 40[rsi]
	movzx	r8d, BYTE PTR 9[rbp]
	movzx	edx, dl
	call	MidiKeyToFreq
	mov	DWORD PTR 32[rsi], eax
	jmp	.L206
	.seh_endproc
	.p2align 4
	.globl	TrackStop
	.def	TrackStop;	.scl	2;	.type	32;	.endef
	.seh_proc	TrackStop
TrackStop:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	cmp	BYTE PTR [rdx], 0
	mov	rsi, rdx
	js	.L274
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L274:
	mov	rbx, QWORD PTR 32[rdx]
	test	rbx, rbx
	je	.L263
	.p2align 4,,10
	.p2align 3
.L266:
	cmp	BYTE PTR [rbx], 0
	je	.L264
	movzx	ecx, BYTE PTR 1[rbx]
	and	ecx, 7
	je	.L265
	mov	rax, QWORD PTR SOUND_INFO_PTR[rip]
	movzx	ecx, cl
	call	[QWORD PTR 64[rax]]
.L265:
	mov	BYTE PTR [rbx], 0
.L264:
	mov	QWORD PTR 56[rbx], 0
	mov	rbx, QWORD PTR 72[rbx]
	test	rbx, rbx
	jne	.L266
.L263:
	mov	QWORD PTR 32[rsi], 0
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_nxx
	.def	MP2K_event_nxx;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_nxx
MP2K_event_nxx:
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
	mov	rax, QWORD PTR .refptr.gClockTable[rip]
	mov	r14, QWORD PTR SOUND_INFO_PTR[rip]
	movzx	ecx, cl
	mov	r9, rdx
	mov	rsi, r8
	movzx	edx, BYTE PTR [rax+rcx]
	mov	rax, QWORD PTR 80[r8]
	mov	BYTE PTR 4[r8], dl
	cmp	BYTE PTR [rax], 0
	js	.L327
	lea	rcx, 1[rax]
	mov	QWORD PTR 80[r8], rcx
	movzx	r12d, BYTE PTR [rax]
	mov	BYTE PTR 5[r8], r12b
	cmp	BYTE PTR 1[rax], 0
	js	.L277
	lea	rcx, 2[rax]
	mov	QWORD PTR 80[r8], rcx
	movzx	ecx, BYTE PTR 1[rax]
	mov	BYTE PTR 6[r8], cl
	cmp	BYTE PTR 2[rax], 0
	js	.L277
	lea	rcx, 3[rax]
	mov	QWORD PTR 80[r8], rcx
	add	dl, BYTE PTR 2[rax]
	mov	BYTE PTR 4[r8], dl
.L277:
	movzx	eax, BYTE PTR 40[rsi]
	cmp	al, 63
	ja	.L280
	lea	r13, 40[rsi]
	mov	ebp, eax
	xor	r15d, r15d
.L281:
	movzx	eax, BYTE PTR 29[rsi]
	movzx	edi, BYTE PTR 13[r9]
	add	edi, eax
	mov	eax, 255
	cmp	di, ax
	cmova	edi, eax
	and	ebp, 7
	jne	.L328
	movzx	eax, BYTE PTR 6[r14]
	lea	rbx, 136[r14]
	test	al, al
	je	.L275
	lea	rdx, [rax+rax*4]
	mov	r11, rsi
	mov	r8d, edi
	xor	ecx, ecx
	lea	rax, [rax+rdx*2]
	xor	r10d, r10d
	lea	rdx, 136[r14+rax*8]
	jmp	.L291
	.p2align 4,,10
	.p2align 3
.L287:
	test	ecx, ecx
	je	.L288
.L289:
	add	rbx, 88
	cmp	rdx, rbx
	je	.L329
.L291:
	movzx	eax, BYTE PTR [rbx]
	test	al, -57
	je	.L286
	test	al, 64
	je	.L287
	test	ecx, ecx
	jne	.L288
	movzx	r8d, BYTE PTR 19[rbx]
	mov	r11, QWORD PTR 56[rbx]
	mov	r10, rbx
	add	rbx, 88
	mov	ecx, 1
	cmp	rdx, rbx
	jne	.L291
.L329:
	test	r10, r10
	je	.L275
	mov	rbx, r10
.L286:
	mov	rcx, rbx
	mov	QWORD PTR 120[rsp], r9
	call	ClearChain
	mov	rax, QWORD PTR 32[rsi]
	mov	r9, QWORD PTR 120[rsp]
	mov	QWORD PTR 64[rbx], 0
	test	rax, rax
	mov	QWORD PTR 72[rbx], rax
	je	.L292
	mov	QWORD PTR 64[rax], rbx
.L292:
	mov	QWORD PTR 32[rsi], rbx
	mov	QWORD PTR 56[rbx], rsi
	movzx	eax, BYTE PTR 27[rsi]
	mov	BYTE PTR 28[rsi], al
	test	al, al
	jne	.L330
.L293:
	mov	rcx, r9
	mov	rdx, rsi
	call	TrkVolPitSet
	movzx	edx, BYTE PTR 6[rsi]
	movzx	eax, dil
	movzx	ecx, BYTE PTR 5[rsi]
	sal	eax, 8
	or	eax, edx
	sal	eax, 8
	or	eax, ecx
	movzx	ecx, BYTE PTR 4[rsi]
	mov	BYTE PTR 8[rbx], r12b
	sal	eax, 8
	mov	BYTE PTR 20[rbx], r15b
	or	eax, ecx
	mov	DWORD PTR 16[rbx], eax
	movzx	eax, BYTE PTR 0[r13]
	mov	BYTE PTR 1[rbx], al
	mov	rcx, QWORD PTR 8[r13]
	mov	eax, DWORD PTR 16[r13]
	mov	QWORD PTR 40[rbx], rcx
	mov	DWORD PTR 4[rbx], eax
	movzx	eax, WORD PTR 30[rsi]
	mov	WORD PTR 12[rbx], ax
	lea	eax, -128[r15]
	movzx	r9d, BYTE PTR 16[rsi]
	movzx	eax, al
	movzx	r8d, BYTE PTR 17[rsi]
	imul	eax, edx
	imul	eax, r9d
	mov	r9d, 255
	sar	eax, 14
	cmp	eax, r9d
	cmovg	eax, r9d
	mov	BYTE PTR 2[rbx], al
	mov	eax, 127
	sub	eax, r15d
	movzx	eax, al
	imul	eax, edx
	mov	edx, 255
	imul	eax, r8d
	sar	eax, 14
	cmp	eax, edx
	cmovg	eax, edx
	mov	BYTE PTR 3[rbx], al
	movsx	dx, BYTE PTR 8[rsi]
	xor	eax, eax
	movzx	r8d, BYTE PTR 9[rsi]
	add	edx, r12d
	test	dx, dx
	cmovs	edx, eax
	movzx	edx, dl
	test	bpl, bpl
	je	.L294
	movzx	eax, BYTE PTR 2[r13]
	mov	BYTE PTR 30[rbx], al
	movzx	eax, BYTE PTR 3[r13]
	test	al, al
	js	.L302
	test	al, 112
	mov	ecx, 8
	cmove	eax, ecx
.L295:
	mov	BYTE PTR 31[rbx], al
	movzx	ecx, bpl
	call	[QWORD PTR 72[r14]]
	mov	DWORD PTR 32[rbx], eax
.L296:
	mov	BYTE PTR [rbx], -128
	and	BYTE PTR [rsi], -16
.L275:
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
.L280:
	movzx	edx, r12b
	test	al, 64
	je	.L282
	mov	rcx, QWORD PTR 56[rsi]
	movzx	edx, r12b
	movzx	edx, BYTE PTR [rcx+rdx]
.L282:
	lea	rcx, [rdx+rdx*2]
	mov	rdx, QWORD PTR 48[rsi]
	lea	r13, [rdx+rcx*8]
	movzx	ebp, BYTE PTR 0[r13]
	cmp	bpl, 63
	ja	.L275
	xor	r15d, r15d
	test	al, al
	jns	.L281
	movzx	eax, BYTE PTR 3[r13]
	movzx	r12d, BYTE PTR 1[r13]
	test	al, al
	lea	edx, -128[rax+rax]
	cmovs	r15d, edx
	jmp	.L281
	.p2align 4,,10
	.p2align 3
.L328:
	mov	rdx, QWORD PTR 32[r14]
	test	rdx, rdx
	je	.L275
	movzx	eax, bpl
	lea	rcx, [rax+rax*4]
	lea	rax, [rax+rcx*2]
	lea	rbx, -88[rdx+rax*8]
	movzx	eax, BYTE PTR [rbx]
	test	al, -57
	je	.L286
	test	al, 64
	jne	.L286
	movzx	eax, BYTE PTR 19[rbx]
	cmp	di, ax
	jb	.L275
	jne	.L286
	cmp	QWORD PTR 56[rbx], rsi
	jnb	.L286
	jmp	.L275
	.p2align 4,,10
	.p2align 3
.L288:
	movzx	eax, BYTE PTR 19[rbx]
	cmp	ax, r8w
	jnb	.L290
	mov	r11, QWORD PTR 56[rbx]
	mov	r8d, eax
	mov	r10, rbx
	jmp	.L289
	.p2align 4,,10
	.p2align 3
.L290:
	jne	.L289
	mov	rax, QWORD PTR 56[rbx]
	cmp	r11, rax
	jnb	.L331
	mov	r11, rax
	mov	r10, rbx
	jmp	.L289
	.p2align 4,,10
	.p2align 3
.L327:
	movzx	r12d, BYTE PTR 5[r8]
	jmp	.L277
	.p2align 4,,10
	.p2align 3
.L294:
	call	MidiKeyToFreq
	mov	DWORD PTR 32[rbx], eax
	jmp	.L296
	.p2align 4,,10
	.p2align 3
.L330:
	mov	rcx, rsi
	mov	QWORD PTR 120[rsp], r9
	call	ClearModM
	mov	r9, QWORD PTR 120[rsp]
	jmp	.L293
	.p2align 4,,10
	.p2align 3
.L302:
	mov	eax, 8
	jmp	.L295
	.p2align 4,,10
	.p2align 3
.L331:
	cmp	rax, r11
	cmove	r10, rbx
	jmp	.L289
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_endtie
	.def	MP2K_event_endtie;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_endtie
MP2K_event_endtie:
	.seh_endprologue
	mov	rax, QWORD PTR 80[rdx]
	movzx	ecx, BYTE PTR [rax]
	test	cl, cl
	js	.L333
	add	rax, 1
	mov	BYTE PTR 5[rdx], cl
	mov	QWORD PTR 80[rdx], rax
.L334:
	mov	rax, QWORD PTR 32[rdx]
	test	rax, rax
	je	.L332
	.p2align 4,,10
	.p2align 3
.L337:
	movzx	edx, BYTE PTR [rax]
	test	dl, -125
	je	.L336
	test	dl, 64
	jne	.L336
	cmp	BYTE PTR 17[rax], cl
	je	.L345
.L336:
	mov	rax, QWORD PTR 72[rax]
	test	rax, rax
	jne	.L337
.L332:
	ret
	.p2align 4,,10
	.p2align 3
.L333:
	movzx	ecx, BYTE PTR 5[rdx]
	jmp	.L334
	.p2align 4,,10
	.p2align 3
.L345:
	or	edx, 64
	mov	BYTE PTR [rax], dl
	ret
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_lfos
	.def	MP2K_event_lfos;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_lfos
MP2K_event_lfos:
	.seh_endprologue
	mov	rax, QWORD PTR 80[rdx]
	mov	rcx, rdx
	lea	rdx, 1[rax]
	mov	QWORD PTR 80[rcx], rdx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR 25[rcx], al
	test	al, al
	je	.L348
	ret
	.p2align 4,,10
	.p2align 3
.L348:
	jmp	ClearModM
	.seh_endproc
	.p2align 4
	.globl	MP2K_event_mod
	.def	MP2K_event_mod;	.scl	2;	.type	32;	.endef
	.seh_proc	MP2K_event_mod
MP2K_event_mod:
	.seh_endprologue
	mov	rax, QWORD PTR 80[rdx]
	mov	rcx, rdx
	lea	rdx, 1[rax]
	mov	QWORD PTR 80[rcx], rdx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR 23[rcx], al
	test	al, al
	je	.L351
	ret
	.p2align 4,,10
	.p2align 3
.L351:
	jmp	ClearModM
	.seh_endproc
	.p2align 4
	.globl	m4aSoundVSync
	.def	m4aSoundVSync;	.scl	2;	.type	32;	.endef
	.seh_proc	m4aSoundVSync
m4aSoundVSync:
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
	mov	rbx, QWORD PTR SOUND_INFO_PTR[rip]
	mov	eax, DWORD PTR [rbx]
	sub	eax, 1752395091
	cmp	eax, 1
	jbe	.L371
.L352:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L371:
	mov	ebp, DWORD PTR 16[rbx]
	lea	rsi, 1192[rbx]
	call	cgb_get_buffer
	mov	rcx, rax
	movzx	eax, BYTE PTR 4[rbx]
	lea	edi, [rbp+rbp]
	cmp	eax, 1
	jle	.L355
	movzx	edx, BYTE PTR 11[rbx]
	sub	eax, 1
	sub	edx, eax
	mov	eax, edx
	imul	eax, edi
	cdqe
	lea	rsi, [rsi+rax*4]
.L355:
	test	ebp, ebp
	je	.L361
	xor	eax, eax
	lea	r8, audioBuffer[rip]
	pxor	xmm1, xmm1
	xor	r9d, r9d
	.p2align 4,,10
	.p2align 3
.L359:
	movss	xmm0, DWORD PTR [rsi+rax*4]
	addss	xmm0, DWORD PTR [rcx+rax*4]
	ucomiss	xmm0, xmm1
	movss	DWORD PTR [r8+rax*4], xmm0
	jp	.L363
	je	.L357
.L363:
	mov	r9d, 1
.L357:
	add	rax, 1
	cmp	eax, edi
	jb	.L359
	test	r9b, r9b
	jne	.L372
.L361:
	movzx	eax, BYTE PTR 4[rbx]
	sub	eax, 1
	mov	BYTE PTR 4[rbx], al
	test	al, al
	jg	.L352
	movzx	eax, BYTE PTR 11[rbx]
	mov	BYTE PTR 4[rbx], al
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L372:
	lea	edx, 0[0+rbp*8]
	mov	rcx, r8
	call	Platform_QueueAudio
	jmp	.L361
	.seh_endproc
	.globl	SOUND_INFO_PTR
	.data
	.align 8
SOUND_INFO_PTR:
	.quad	sSoundInfo
.lcomm sSoundInfo,40448,32
.lcomm audioBuffer,19628,32
	.section .rdata,"dr"
	.align 4
.LC0:
	.long	989855744
	.align 8
.LC2:
	.long	939524096
	.long	939524096
	.ident	"GCC: (GNU) 13-win32"
	.def	cgb_audio_generate;	.scl	2;	.type	32;	.endef
	.def	CpuSet;	.scl	2;	.type	32;	.endef
	.def	ClearChain;	.scl	2;	.type	32;	.endef
	.def	FadeOutBody;	.scl	2;	.type	32;	.endef
	.def	TrkVolPitSet;	.scl	2;	.type	32;	.endef
	.def	MidiKeyToFreq;	.scl	2;	.type	32;	.endef
	.def	ClearModM;	.scl	2;	.type	32;	.endef
	.def	cgb_get_buffer;	.scl	2;	.type	32;	.endef
	.def	Platform_QueueAudio;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gClockTable, "dr"
	.globl	.refptr.gClockTable
	.linkonce	discard
.refptr.gClockTable:
	.quad	gClockTable
	.section	.rdata$.refptr.gMPlayJumpTableTemplate, "dr"
	.globl	.refptr.gMPlayJumpTableTemplate
	.linkonce	discard
.refptr.gMPlayJumpTableTemplate:
	.quad	gMPlayJumpTableTemplate
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
