	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	sub_808D8A0
	.def	sub_808D8A0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808D8A0
sub_808D8A0:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 576
	.seh_stackalloc	576
	movups	XMMWORD PTR 544[rsp], xmm6
	.seh_savexmm	xmm6, 544
	movups	XMMWORD PTR 560[rsp], xmm7
	.seh_savexmm	xmm7, 560
	.seh_endprologue
	movdqu	xmm2, XMMWORD PTR .LC0[rip]
	pxor	xmm3, xmm3
	movzx	r8d, BYTE PTR 1[rcx]
	mov	rbx, rcx
	movsx	cx, BYTE PTR 6[rcx]
	movsx	dx, BYTE PTR 7[rbx]
	movsx	ax, BYTE PTR 8[rbx]
	imul	ecx, r8d
	imul	eax, r8d
	imul	edx, r8d
	movd	xmm6, ecx
	lea	rcx, 32[rsp]
	movd	xmm4, eax
	punpcklwd	xmm6, xmm6
	xor	eax, eax
	movd	xmm5, edx
	punpcklwd	xmm4, xmm4
	pshufd	xmm6, xmm6, 0
	punpcklwd	xmm5, xmm5
	pshufd	xmm4, xmm4, 0
	pshufd	xmm5, xmm5, 0
	.p2align 4,,10
	.p2align 3
.L2:
	movdqu	xmm1, XMMWORD PTR 12[rbx+rax]
	movdqu	xmm0, xmm1
	movdqu	xmm7, xmm1
	pand	xmm1, xmm2
	psrlw	xmm0, 10
	psrlw	xmm7, 5
	paddw	xmm1, xmm6
	pand	xmm0, xmm2
	pand	xmm7, xmm2
	pmaxsw	xmm1, xmm3
	paddw	xmm0, xmm4
	paddw	xmm7, xmm5
	pmaxsw	xmm0, xmm3
	pmaxsw	xmm7, xmm3
	pminsw	xmm0, xmm2
	pminsw	xmm7, xmm2
	psllw	xmm0, 10
	psllw	xmm7, 5
	pminsw	xmm1, xmm2
	por	xmm0, xmm7
	por	xmm0, xmm1
	movups	XMMWORD PTR [rcx+rax], xmm0
	add	rax, 16
	cmp	rax, 512
	jne	.L2
	mov	rdx, QWORD PTR .refptr.PLTT[rip]
	mov	r8d, 128
	call	CpuFastSet
	movzx	eax, WORD PTR 2[rbx]
	add	ax, WORD PTR 4[rbx]
	mov	WORD PTR 4[rbx], ax
	mov	BYTE PTR 1[rbx], ah
	movups	xmm6, XMMWORD PTR 544[rsp]
	movups	xmm7, XMMWORD PTR 560[rsp]
	add	rsp, 576
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_808D988
	.def	sub_808D988;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808D988
sub_808D988:
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
	.seh_endprologue
	mov	rbx, QWORD PTR gBgPaletteEffects[rip]
	movzx	eax, BYTE PTR 31[rbx]
	mov	esi, ecx
	movzx	edx, cx
	movsx	ecx, WORD PTR 64[rbx]
	add	eax, ecx
	cmp	edx, eax
	je	.L16
.L7:
	cmp	si, 239
	jne	.L5
	xor	eax, eax
	mov	BYTE PTR 2[rbx], 0
	mov	WORD PTR 27[rbx], ax
	mov	BYTE PTR 29[rbx], 0
	mov	BYTE PTR 31[rbx], 0
.L5:
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L16:
	cmp	BYTE PTR [rbx], 0
	mov	rdi, QWORD PTR .refptr.PLTT[rip]
	je	.L17
.L8:
	movzx	eax, BYTE PTR 1[rbx]
	sal	eax, 3
	cmp	BYTE PTR 2[rbx], 0
	cdqe
	lea	r10, [rdi+rax*2]
	je	.L18
	movsx	r11w, BYTE PTR 27[rbx]
	movsx	r9w, BYTE PTR 28[rbx]
	xor	edx, edx
	lea	rcx, 32[rsp]
	movsx	r8w, BYTE PTR 29[rbx]
	.p2align 4,,10
	.p2align 3
.L11:
	movzx	eax, WORD PTR 32[rbx+rdx]
	mov	r12d, 31
	mov	edi, eax
	mov	ebp, eax
	sar	edi, 5
	and	edi, 31
	add	edi, r9d
	cmp	di, r12w
	cmovg	edi, r12d
	sar	eax, 10
	and	eax, 31
	add	eax, r8d
	sal	edi, 5
	cmp	ax, r12w
	cmovg	eax, r12d
	sal	eax, 10
	or	edi, eax
	mov	eax, ebp
	mov	ebp, 31
	and	eax, 31
	add	eax, r11d
	cmp	ax, bp
	cmovg	eax, ebp
	or	edi, eax
	mov	WORD PTR [rcx+rdx], di
	add	rdx, 2
	cmp	rdx, 32
	jne	.L11
	mov	r8d, 1
	mov	rdx, r10
	call	CpuFastSet
.L10:
	pinsrw	xmm1, WORD PTR 27[rbx], 0
	pinsrw	xmm0, WORD PTR 24[rbx], 0
	paddb	xmm1, xmm0
	mov	rdx, QWORD PTR 8[rbx]
	movd	eax, xmm1
	mov	WORD PTR 27[rbx], ax
	movzx	eax, BYTE PTR 26[rbx]
	add	BYTE PTR 29[rbx], al
	movzx	eax, BYTE PTR 30[rbx]
	add	BYTE PTR 31[rbx], al
	movzx	eax, BYTE PTR 2[rbx]
	add	eax, 1
	mov	BYTE PTR 2[rbx], al
	movzx	eax, al
	cmp	BYTE PTR [rdx+rax], -1
	jne	.L7
	mov	BYTE PTR 2[rbx], 0
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L18:
	lea	rcx, 32[rbx]
	mov	r8d, 1
	mov	rdx, r10
	call	CpuFastSet
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L17:
	lea	rdx, 32[rbx]
	mov	r8d, 1
	mov	rcx, rdi
	call	CpuFastSet
	mov	BYTE PTR [rbx], 1
	jmp	.L8
	.seh_endproc
	.p2align 4
	.globl	sub_808DAC8
	.def	sub_808DAC8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808DAC8
sub_808DAC8:
	.seh_endprologue
	xor	eax, eax
	xor	r10d, r10d
	mov	BYTE PTR [r9], 0
	mov	BYTE PTR 2[r9], 0
	mov	BYTE PTR 1[r9], cl
	mov	WORD PTR 24[r9], ax
	mov	BYTE PTR 26[r9], 0
	mov	WORD PTR 64[r9], r10w
	mov	QWORD PTR 8[r9], rdx
	mov	QWORD PTR 16[r9], r8
	mov	QWORD PTR gBgPaletteEffects[rip], r9
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_808DAEC
	.def	sub_808DAEC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808DAEC
sub_808DAEC:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	xor	eax, eax
	pxor	xmm0, xmm0
	mov	rbx, QWORD PTR 88[rsp]
	mov	BYTE PTR [rbx], 1
	mov	BYTE PTR 2[rbx], 0
	mov	BYTE PTR 24[rbx], dl
	xor	edx, edx
	mov	BYTE PTR 25[rbx], r8b
	mov	r8d, 1
	mov	WORD PTR 64[rbx], dx
	lea	rdx, 32[rbx]
	mov	BYTE PTR 1[rbx], cl
	mov	rcx, QWORD PTR .refptr.PLTT[rip]
	mov	BYTE PTR 26[rbx], r9b
	mov	WORD PTR 27[rbx], ax
	mov	BYTE PTR 29[rbx], 0
	mov	BYTE PTR 31[rbx], 0
	movups	XMMWORD PTR 8[rbx], xmm0
	call	CpuFastSet
	mov	QWORD PTR gBgPaletteEffects[rip], rbx
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	BgPaletteEffectGradient
	.def	BgPaletteEffectGradient;	.scl	2;	.type	32;	.endef
	.seh_proc	BgPaletteEffectGradient
BgPaletteEffectGradient:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR gBgPaletteEffects[rip]
	cmp	cx, 238
	ja	.L24
	movzx	edx, BYTE PTR 2[rbx]
	mov	r8, QWORD PTR 8[rbx]
	movzx	ecx, cx
	mov	rax, rdx
	movzx	edx, BYTE PTR [r8+rdx]
	movsx	r8d, WORD PTR 64[rbx]
	add	edx, r8d
	cmp	ecx, edx
	jge	.L25
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L25:
	movzx	edx, BYTE PTR 1[rbx]
	mov	rcx, QWORD PTR .refptr.PLTT[rip]
	mov	r8d, 1
	sal	edx, 4
	movsx	rdx, edx
	lea	rdx, [rcx+rdx*2]
	mov	rcx, rax
	sal	rcx, 5
	and	ecx, 8160
	add	rcx, QWORD PTR 16[rbx]
	call	CpuFastSet
	add	BYTE PTR 2[rbx], 1
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L24:
	mov	BYTE PTR 2[rbx], 0
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_808DB78
	.def	sub_808DB78;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808DB78
sub_808DB78:
	.seh_endprologue
	xor	ecx, ecx
	xor	r10d, r10d
	mov	eax, edx
	mov	rdx, QWORD PTR 48[rsp]
	mov	WORD PTR [rdx], cx
	mov	rcx, QWORD PTR .refptr.PLTT[rip]
	add	rdx, 12
	mov	BYTE PTR -6[rdx], r8b
	mov	r8d, 128
	mov	WORD PTR -10[rdx], ax
	mov	WORD PTR -8[rdx], r10w
	mov	BYTE PTR -5[rdx], r9b
	mov	eax, DWORD PTR 40[rsp]
	mov	BYTE PTR -4[rdx], al
	jmp	CpuFastSet
	.seh_endproc
	.globl	gBgPaletteEffects
	.bss
	.align 16
gBgPaletteEffects:
	.space 16
	.section .rdata,"dr"
	.align 16
.LC0:
	.word	31
	.word	31
	.word	31
	.word	31
	.word	31
	.word	31
	.word	31
	.word	31
	.ident	"GCC: (GNU) 13-win32"
	.def	CpuFastSet;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.PLTT, "dr"
	.globl	.refptr.PLTT
	.linkonce	discard
.refptr.PLTT:
	.quad	PLTT
