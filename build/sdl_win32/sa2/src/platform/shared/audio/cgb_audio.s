	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	cgb_audio_init
	.def	cgb_audio_init;	.scl	2;	.type	32;	.endef
	.seh_proc	cgb_audio_init
cgb_audio_init:
	.seh_endprologue
	xor	eax, eax
	pxor	xmm0, xmm0
	mov	DWORD PTR gb[rip+2], 0
	mov	WORD PTR gb[rip], ax
	lea	rax, PU0[rip]
	mov	QWORD PTR PU1Table[rip], rax
	mov	QWORD PTR PU2Table[rip], rax
	mov	eax, DWORD PTR .LC1[rip]
	movups	XMMWORD PTR soundChannelPos[rip], xmm0
	mov	DWORD PTR gb[rip+38], 0
	mov	DWORD PTR soundChannelPos[rip+4], 0x3f800000
	mov	DWORD PTR sampleRate[rip], ecx
	mov	DWORD PTR gb[rip+172], eax
	mov	DWORD PTR lfsrMax[rip], eax
	mov	DWORD PTR ch4Samples[rip], 0x00000000
	movups	XMMWORD PTR gb[rip+6], xmm0
	movups	XMMWORD PTR gb[rip+22], xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	cgb_set_sweep
	.def	cgb_set_sweep;	.scl	2;	.type	32;	.endef
	.seh_proc	cgb_set_sweep
cgb_set_sweep:
	.seh_endprologue
	movzx	eax, cl
	mov	edx, eax
	mov	ecx, eax
	shr	eax, 4
	shr	edx, 3
	sal	ecx, 8
	or	ecx, edx
	sal	ecx, 8
	or	ecx, eax
	sal	ecx, 8
	or	ecx, eax
	mov	eax, DWORD PTR .LC4[rip]
	and	ecx, eax
	mov	DWORD PTR gb[rip+2], ecx
	ret
	.seh_endproc
	.p2align 4
	.globl	cgb_set_wavram
	.def	cgb_set_wavram;	.scl	2;	.type	32;	.endef
	.seh_proc	cgb_set_wavram
cgb_set_wavram:
	sub	rsp, 88
	.seh_stackalloc	88
	movups	XMMWORD PTR [rsp], xmm6
	.seh_savexmm	xmm6, 0
	movups	XMMWORD PTR 16[rsp], xmm7
	.seh_savexmm	xmm7, 16
	movups	XMMWORD PTR 32[rsp], xmm8
	.seh_savexmm	xmm8, 32
	movups	XMMWORD PTR 48[rsp], xmm9
	.seh_savexmm	xmm9, 48
	movups	XMMWORD PTR 64[rsp], xmm10
	.seh_savexmm	xmm10, 64
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	movdqu	xmm3, XMMWORD PTR .LC5[rip]
	movss	xmm7, DWORD PTR .LC7[rip]
	movdqu	xmm1, XMMWORD PTR 156[rax]
	movss	xmm6, DWORD PTR .LC9[rip]
	shufps	xmm7, xmm7, 0
	movdqu	xmm0, xmm1
	pand	xmm1, xmm3
	shufps	xmm6, xmm6, 0
	psrlw	xmm0, 4
	pand	xmm0, xmm3
	movdqu	xmm3, xmm1
	punpckhbw	xmm1, xmm8
	movdqu	xmm2, xmm0
	punpcklbw	xmm3, xmm8
	punpckhbw	xmm0, xmm8
	punpcklbw	xmm2, xmm8
	movdqu	xmm8, xmm3
	punpckhwd	xmm3, xmm9
	cvtdq2ps	xmm3, xmm3
	divps	xmm3, xmm7
	movdqu	xmm5, xmm2
	punpcklwd	xmm8, xmm9
	punpcklwd	xmm5, xmm9
	punpckhwd	xmm2, xmm9
	movdqu	xmm4, xmm0
	cvtdq2ps	xmm8, xmm8
	cvtdq2ps	xmm5, xmm5
	punpcklwd	xmm4, xmm9
	cvtdq2ps	xmm2, xmm2
	punpckhwd	xmm0, xmm9
	cvtdq2ps	xmm4, xmm4
	cvtdq2ps	xmm0, xmm0
	divps	xmm5, xmm7
	addps	xmm3, xmm6
	movups	xmm10, xmm3
	movdqu	xmm3, xmm1
	punpckhwd	xmm1, xmm9
	punpcklwd	xmm3, xmm9
	cvtdq2ps	xmm1, xmm1
	movups	xmm9, XMMWORD PTR 48[rsp]
	cvtdq2ps	xmm3, xmm3
	divps	xmm8, xmm7
	addps	xmm5, xmm6
	divps	xmm2, xmm7
	addps	xmm8, xmm6
	divps	xmm4, xmm7
	addps	xmm2, xmm6
	divps	xmm0, xmm7
	addps	xmm4, xmm6
	divps	xmm3, xmm7
	addps	xmm0, xmm6
	divps	xmm1, xmm7
	movups	xmm7, XMMWORD PTR 16[rsp]
	addps	xmm3, xmm6
	addps	xmm1, xmm6
	movups	xmm6, xmm5
	unpckhps	xmm5, xmm8
	movups	XMMWORD PTR gb[rip+60], xmm5
	movups	xmm5, xmm2
	unpckhps	xmm2, xmm10
	unpcklps	xmm6, xmm8
	movups	XMMWORD PTR gb[rip+92], xmm2
	movups	xmm2, xmm4
	unpcklps	xmm5, xmm10
	movups	xmm8, XMMWORD PTR 32[rsp]
	unpcklps	xmm2, xmm3
	movups	XMMWORD PTR gb[rip+44], xmm6
	movups	xmm10, XMMWORD PTR 64[rsp]
	unpckhps	xmm4, xmm3
	movups	XMMWORD PTR gb[rip+108], xmm2
	movups	xmm6, XMMWORD PTR [rsp]
	movups	xmm2, xmm0
	unpckhps	xmm0, xmm1
	unpcklps	xmm2, xmm1
	movups	XMMWORD PTR gb[rip+76], xmm5
	movups	XMMWORD PTR gb[rip+124], xmm4
	movups	XMMWORD PTR gb[rip+140], xmm2
	movups	XMMWORD PTR gb[rip+156], xmm0
	add	rsp, 88
	ret
	.seh_endproc
	.p2align 4
	.globl	cgb_toggle_length
	.def	cgb_toggle_length;	.scl	2;	.type	32;	.endef
	.seh_proc	cgb_toggle_length
cgb_toggle_length:
	.seh_endprologue
	lea	rax, gb[rip]
	movzx	ecx, cl
	mov	BYTE PTR 22[rax+rcx], dl
	ret
	.seh_endproc
	.p2align 4
	.globl	cgb_set_length
	.def	cgb_set_length;	.scl	2;	.type	32;	.endef
	.seh_proc	cgb_set_length
cgb_set_length:
	.seh_endprologue
	lea	rax, gb[rip]
	movzx	ecx, cl
	mov	BYTE PTR 18[rax+rcx], dl
	mov	BYTE PTR 14[rax+rcx], dl
	ret
	.seh_endproc
	.p2align 4
	.globl	cgb_set_envelope
	.def	cgb_set_envelope;	.scl	2;	.type	32;	.endef
	.seh_proc	cgb_set_envelope
cgb_set_envelope:
	.seh_endprologue
	cmp	cl, 2
	je	.L17
	lea	rax, gb[rip]
	movzx	ecx, cl
	cmp	dl, 7
	mov	r8d, edx
	seta	BYTE PTR 38[rax+rcx]
	shr	r8b, 4
	mov	BYTE PTR 10[rax+rcx], r8b
	mov	BYTE PTR 6[rax+rcx], r8b
	mov	r8d, edx
	and	edx, 7
	shr	r8b, 3
	mov	BYTE PTR 30[rax+rcx], dl
	and	r8d, 1
	mov	BYTE PTR 26[rax+rcx], dl
	mov	BYTE PTR 34[rax+rcx], r8b
.L7:
	ret
	.p2align 4,,10
	.p2align 3
.L17:
	and	edx, -32
	cmp	dl, 64
	je	.L9
	jbe	.L18
	cmp	dl, 96
	je	.L13
	cmp	dl, -128
	jne	.L7
	mov	BYTE PTR gb[rip+12], 3
	mov	BYTE PTR gb[rip+8], 3
	ret
	.p2align 4,,10
	.p2align 3
.L18:
	test	dl, dl
	je	.L19
	mov	BYTE PTR gb[rip+12], 4
	mov	BYTE PTR gb[rip+8], 4
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	mov	BYTE PTR gb[rip+12], 2
	mov	BYTE PTR gb[rip+8], 2
	ret
	.p2align 4,,10
	.p2align 3
.L13:
	mov	BYTE PTR gb[rip+12], 1
	mov	BYTE PTR gb[rip+8], 1
	ret
	.p2align 4,,10
	.p2align 3
.L19:
	mov	BYTE PTR gb[rip+12], 0
	mov	BYTE PTR gb[rip+8], 0
	ret
	.seh_endproc
	.p2align 4
	.globl	cgb_trigger_note
	.def	cgb_trigger_note;	.scl	2;	.type	32;	.endef
	.seh_proc	cgb_trigger_note
cgb_trigger_note:
	.seh_endprologue
	lea	rdx, gb[rip]
	movzx	eax, cl
	movzx	r8d, BYTE PTR 10[rdx+rax]
	mov	BYTE PTR 6[rdx+rax], r8b
	movzx	r8d, BYTE PTR 18[rdx+rax]
	mov	BYTE PTR 14[rdx+rax], r8b
	cmp	cl, 2
	je	.L20
	movzx	r8d, BYTE PTR 30[rdx+rax]
	mov	BYTE PTR 26[rdx+rax], r8b
	cmp	cl, 3
	je	.L24
.L20:
	ret
	.p2align 4,,10
	.p2align 3
.L24:
	mov	DWORD PTR gb[rip+172], 8421376
	ret
	.seh_endproc
	.p2align 4
	.globl	cgb_audio_generate
	.def	cgb_audio_generate;	.scl	2;	.type	32;	.endef
	.seh_proc	cgb_audio_generate
cgb_audio_generate:
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
	sub	rsp, 120
	.seh_stackalloc	120
	movups	XMMWORD PTR 32[rsp], xmm6
	.seh_savexmm	xmm6, 32
	movups	XMMWORD PTR 48[rsp], xmm7
	.seh_savexmm	xmm7, 48
	movups	XMMWORD PTR 64[rsp], xmm8
	.seh_savexmm	xmm8, 64
	movups	XMMWORD PTR 80[rsp], xmm9
	.seh_savexmm	xmm9, 80
	movups	XMMWORD PTR 96[rsp], xmm10
	.seh_savexmm	xmm10, 96
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	edx, ecx
	movzx	ecx, BYTE PTR 110[rax]
	and	ecx, -64
	cmp	cl, -128
	je	.L26
	ja	.L27
	test	cl, cl
	lea	r8, PU0[rip]
	lea	rcx, PU1[rip]
	cmove	rcx, r8
	mov	QWORD PTR PU1Table[rip], rcx
.L31:
	movzx	ecx, BYTE PTR 116[rax]
	and	ecx, -64
	cmp	cl, -128
	je	.L32
.L182:
	ja	.L33
	test	cl, cl
	lea	r8, PU0[rip]
	lea	rcx, PU1[rip]
	cmove	rcx, r8
	mov	QWORD PTR PU2Table[rip], rcx
.L37:
	test	dx, dx
	je	.L25
	mov	r11d, DWORD PTR sampleRate[rip]
	movzx	edx, dx
	xor	r13d, r13d
	xor	r12d, r12d
	movzx	esi, BYTE PTR gb[rip+3]
	pxor	xmm7, xmm7
	lea	r15, gb[rip]
	mov	r8d, DWORD PTR apuFrame[rip]
	mov	ecx, r11d
	movzx	r10d, BYTE PTR apuCycle[rip]
	movss	xmm0, DWORD PTR soundChannelPos[rip]
	lea	rbx, 176[r15+rdx*8]
	mov	BYTE PTR 22[rsp], sil
	shr	ecx, 5
	movzx	esi, BYTE PTR gb[rip+39]
	mov	edi, r13d
	cvtsi2ss	xmm7, ecx
	movss	xmm1, DWORD PTR soundChannelPos[rip+4]
	movss	xmm2, DWORD PTR soundChannelPos[rip+8]
	lea	rdx, 176[r15]
	mov	BYTE PTR 21[rsp], sil
	movzx	esi, BYTE PTR gb[rip+41]
	lea	r9, freqTable[rip]
	movzx	ebp, BYTE PTR gb[rip+38]
	movss	xmm6, DWORD PTR ch4Samples[rip]
	movss	xmm3, DWORD PTR .LC10[rip]
	mov	r13d, esi
	.p2align 4,,10
	.p2align 3
.L96:
	add	r8d, 512
	cmp	r8d, r11d
	jb	.L40
	add	r10d, 1
	test	r10b, 1
	je	.L41
	mov	ecx, r10d
	not	ecx
	and	ecx, 7
	je	.L172
.L43:
	mov	ecx, r10d
	and	ecx, 3
	cmp	cl, 2
	je	.L49
.L57:
	sub	r8d, r11d
	mov	r12d, 1
.L40:
	movzx	ecx, WORD PTR 112[rax]
	and	ecx, 2047
	movss	xmm4, DWORD PTR [r9+rcx*4]
	movzx	ecx, WORD PTR 120[rax]
	divss	xmm4, xmm7
	and	ecx, 2047
	addss	xmm0, xmm4
	movss	xmm4, DWORD PTR [r9+rcx*4]
	movzx	ecx, WORD PTR 128[rax]
	divss	xmm4, xmm7
	and	ecx, 2047
	comiss	xmm0, DWORD PTR .LC10[rip]
	addss	xmm1, xmm4
	movss	xmm4, DWORD PTR [r9+rcx*4]
	divss	xmm4, xmm7
	addss	xmm2, xmm4
	jb	.L166
	.p2align 4,,10
	.p2align 3
.L65:
	subss	xmm0, xmm3
	comiss	xmm0, DWORD PTR .LC10[rip]
	jnb	.L65
	comiss	xmm1, DWORD PTR .LC10[rip]
	jb	.L167
	.p2align 4,,10
	.p2align 3
.L68:
	subss	xmm1, xmm3
.L166:
	comiss	xmm1, DWORD PTR .LC10[rip]
	jnb	.L68
	comiss	xmm2, DWORD PTR .LC10[rip]
	jb	.L173
	.p2align 4,,10
	.p2align 3
.L71:
	subss	xmm2, xmm3
.L167:
	comiss	xmm2, DWORD PTR .LC10[rip]
	jnb	.L71
.L173:
	movzx	ecx, BYTE PTR 144[rax]
	pxor	xmm8, xmm8
	movups	xmm4, xmm8
	test	cl, cl
	js	.L174
.L72:
	unpcklps	xmm4, xmm8
	add	rdx, 8
	movlps	QWORD PTR -8[rdx], xmm4
	cmp	rdx, rbx
	jne	.L96
	unpcklps	xmm0, xmm1
	mov	DWORD PTR apuFrame[rip], r8d
	mov	r13d, edi
	movlps	QWORD PTR soundChannelPos[rip], xmm0
	movss	DWORD PTR soundChannelPos[rip+8], xmm2
	test	r12b, r12b
	je	.L97
	mov	BYTE PTR apuCycle[rip], r10b
.L97:
	test	r13b, r13b
	je	.L25
	movss	DWORD PTR ch4Samples[rip], xmm6
.L25:
	movups	xmm6, XMMWORD PTR 32[rsp]
	movups	xmm7, XMMWORD PTR 48[rsp]
	movups	xmm8, XMMWORD PTR 64[rsp]
	movups	xmm9, XMMWORD PTR 80[rsp]
	movups	xmm10, XMMWORD PTR 96[rsp]
	add	rsp, 120
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
.L174:
	test	bpl, bpl
	je	.L101
	movzx	ecx, BYTE PTR 144[rax]
	and	ecx, 1
	je	.L101
	movzx	ecx, BYTE PTR 141[rax]
	and	ecx, 16
	je	.L74
	cvttss2si	ecx, xmm0
	mov	rsi, QWORD PTR PU1Table[rip]
	pxor	xmm5, xmm5
	movsx	rcx, ecx
	movsx	ecx, WORD PTR [rsi+rcx*2]
	movzx	esi, BYTE PTR gb[rip+6]
	imul	ecx, esi
	cvtsi2ss	xmm5, ecx
	divss	xmm5, DWORD PTR .LC11[rip]
	addss	xmm4, xmm5
.L74:
	movzx	ecx, BYTE PTR 141[rax]
	pxor	xmm8, xmm8
	and	ecx, 1
	jne	.L175
	.p2align 4,,10
	.p2align 3
.L73:
	cmp	BYTE PTR 21[rsp], 0
	je	.L75
	movzx	ecx, BYTE PTR 144[rax]
	and	ecx, 2
	je	.L75
	movzx	ecx, BYTE PTR 141[rax]
	and	ecx, 32
	je	.L76
	cvttss2si	ecx, xmm1
	mov	rsi, QWORD PTR PU2Table[rip]
	pxor	xmm5, xmm5
	movsx	rcx, ecx
	movsx	ecx, WORD PTR [rsi+rcx*2]
	movzx	esi, BYTE PTR gb[rip+7]
	imul	ecx, esi
	cvtsi2ss	xmm5, ecx
	divss	xmm5, DWORD PTR .LC11[rip]
	addss	xmm4, xmm5
.L76:
	movzx	ecx, BYTE PTR 141[rax]
	and	ecx, 2
	jne	.L176
	.p2align 4,,10
	.p2align 3
.L75:
	movzx	ecx, BYTE PTR 124[rax]
	movss	xmm5, DWORD PTR .LC12[rip]
	test	cl, cl
	js	.L177
.L77:
	test	r13b, r13b
	je	.L168
	movzx	ecx, BYTE PTR 144[rax]
	and	ecx, 8
	jne	.L80
.L168:
	mulss	xmm4, xmm5
	mulss	xmm8, xmm5
	jmp	.L72
	.p2align 4,,10
	.p2align 3
.L101:
	pxor	xmm8, xmm8
	movups	xmm4, xmm8
	jmp	.L73
	.p2align 4,,10
	.p2align 3
.L49:
	cmp	BYTE PTR 22[rsp], 0
	je	.L57
	movzx	ecx, BYTE PTR gb[rip+5]
	test	cl, cl
	je	.L57
	movzx	esi, BYTE PTR gb[rip+2]
	lea	r12d, -1[rsi]
	mov	BYTE PTR gb[rip+2], r12b
	test	r12b, r12b
	jne	.L57
	movzx	esi, WORD PTR 112[rax]
	and	si, 2047
	movzx	r14d, si
	sar	r14d, cl
	cmp	BYTE PTR gb[rip+4], 0
	je	.L58
	sub	esi, r14d
	mov	ecx, esi
	cmp	si, 2047
	ja	.L59
.L165:
	mov	WORD PTR [r15], cx
	mov	r12d, ecx
	movzx	ecx, ch
.L60:
	mov	BYTE PTR 112[rax], r12b
	movzx	esi, BYTE PTR 113[rax]
	and	esi, -8
	mov	BYTE PTR 113[rax], sil
	movzx	esi, BYTE PTR 113[rax]
	add	ecx, esi
	movzx	esi, BYTE PTR 22[rsp]
	mov	BYTE PTR 113[rax], cl
	mov	BYTE PTR gb[rip+2], sil
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L177:
	movzx	ecx, BYTE PTR 144[rax]
	and	ecx, 4
	je	.L77
	movzx	ecx, BYTE PTR 141[rax]
	and	ecx, 64
	je	.L78
	movzx	ecx, BYTE PTR gb[rip+8]
	pxor	xmm9, xmm9
	cvtsi2ss	xmm9, ecx
	cvttss2si	ecx, xmm2
	movsx	rcx, ecx
	mulss	xmm9, DWORD PTR 44[r15+rcx*4]
	mulss	xmm9, xmm5
	addss	xmm4, xmm9
.L78:
	movzx	ecx, BYTE PTR 141[rax]
	and	ecx, 4
	je	.L77
	movzx	ecx, BYTE PTR gb[rip+8]
	pxor	xmm9, xmm9
	cvtsi2ss	xmm9, ecx
	cvttss2si	ecx, xmm2
	movsx	rcx, ecx
	mulss	xmm9, DWORD PTR 44[r15+rcx*4]
	mulss	xmm9, xmm5
	addss	xmm8, xmm9
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L41:
	lea	rcx, gb[rip]
	xor	r12d, r12d
.L47:
	movzx	esi, BYTE PTR 14[rcx]
	test	sil, sil
	je	.L45
	sub	esi, 1
	mov	BYTE PTR 14[rcx], sil
	test	sil, sil
	jne	.L45
	cmp	BYTE PTR 22[rcx], 0
	je	.L45
	movzx	esi, BYTE PTR 144[rax]
	btr	esi, r12d
	mov	BYTE PTR 144[rax], sil
	.p2align 4,,10
	.p2align 3
.L45:
	add	r12, 1
	add	rcx, 1
	cmp	r12, 4
	jne	.L47
	mov	ecx, r10d
	not	ecx
	and	ecx, 7
	jne	.L43
.L172:
	xor	esi, esi
	lea	rcx, gb[rip]
	cmp	sil, 2
	je	.L178
.L50:
	movzx	r12d, BYTE PTR 26[rcx]
	test	r12b, r12b
	je	.L51
	sub	r12d, 1
	mov	BYTE PTR 26[rcx], r12b
	test	r12b, r12b
	jne	.L51
	movzx	r12d, BYTE PTR 6[rcx]
	movzx	r14d, BYTE PTR 34[rcx]
	test	r12b, r12b
	jne	.L179
	test	r14b, r14b
	je	.L51
.L55:
	add	r12d, 1
	mov	BYTE PTR 6[rcx], r12b
	movzx	r12d, BYTE PTR 30[rcx]
	mov	BYTE PTR 26[rcx], r12b
	.p2align 4,,10
	.p2align 3
.L51:
	add	esi, 1
	add	rcx, 1
	cmp	sil, 4
	je	.L43
.L170:
	cmp	sil, 2
	jne	.L50
.L178:
	add	rcx, 1
	mov	esi, 3
	jmp	.L50
.L176:
	cvttss2si	ecx, xmm1
	mov	rsi, QWORD PTR PU2Table[rip]
	pxor	xmm5, xmm5
	movsx	rcx, ecx
	movsx	ecx, WORD PTR [rsi+rcx*2]
	movzx	esi, BYTE PTR gb[rip+7]
	imul	ecx, esi
	cvtsi2ss	xmm5, ecx
	divss	xmm5, DWORD PTR .LC11[rip]
	addss	xmm8, xmm5
	jmp	.L75
.L175:
	cvttss2si	ecx, xmm0
	mov	rsi, QWORD PTR PU1Table[rip]
	pxor	xmm5, xmm5
	movsx	rcx, ecx
	movsx	ecx, WORD PTR [rsi+rcx*2]
	movzx	esi, BYTE PTR gb[rip+6]
	imul	ecx, esi
	cvtsi2ss	xmm5, ecx
	divss	xmm5, DWORD PTR .LC11[rip]
	addss	xmm8, xmm5
	jmp	.L73
.L179:
	test	r14b, r14b
	jne	.L54
	sub	r12d, 1
	add	esi, 1
	add	rcx, 1
	mov	BYTE PTR 5[rcx], r12b
	movzx	r12d, BYTE PTR 29[rcx]
	mov	BYTE PTR 25[rcx], r12b
	cmp	sil, 4
	jne	.L170
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L80:
	movzx	ecx, BYTE PTR 136[rax]
	mov	edi, r11d
	movzx	esi, WORD PTR 136[rax]
	pxor	xmm10, xmm10
	cvtsi2ss	xmm10, rdi
	lea	rdi, freqTableNSE[rip]
	movzx	esi, sil
	shr	cl, 3
	movss	xmm9, DWORD PTR [rdi+rsi*4]
	mov	rsi, rcx
	and	esi, 1
	divss	xmm9, xmm10
	lea	r14, 80[rsi]
	mov	QWORD PTR 8[rsp], rsi
	movzx	ecx, WORD PTR 12[r15+r14*2]
	mov	edi, ecx
	and	edi, 1
	cmp	di, 1
	mov	edi, 1
	sbb	esi, esi
	or	esi, 1
	addss	xmm6, xmm9
	movss	xmm9, DWORD PTR .LC0[rip]
	comiss	xmm6, xmm9
	jb	.L162
	mov	QWORD PTR 24[rsp], rdx
	mov	rdx, QWORD PTR 8[rsp]
	mov	DWORD PTR 16[rsp], r11d
	mov	BYTE PTR 23[rsp], bpl
	jmp	.L91
	.p2align 4,,10
	.p2align 3
.L181:
	test	bp, bp
	jne	.L87
.L88:
	lea	r11, lfsrMax[rip]
	or	cx, WORD PTR [r11+rdx*2]
	mov	WORD PTR 12[r15+r14*2], cx
.L87:
	test	cl, 1
	je	.L89
	subss	xmm6, xmm9
	add	esi, 1
	comiss	xmm6, xmm9
	jb	.L180
.L91:
	mov	r11d, ecx
	shr	cx
	add	edi, 1
	mov	ebp, ecx
	and	r11d, 2
	mov	WORD PTR 12[r15+r14*2], cx
	and	ebp, 2
	test	r11w, r11w
	jne	.L181
	test	bp, bp
	jne	.L88
.L89:
	subss	xmm6, xmm9
	sub	esi, 1
	comiss	xmm6, xmm9
	jnb	.L91
.L180:
	pxor	xmm10, xmm10
	pxor	xmm9, xmm9
	mov	r11d, DWORD PTR 16[rsp]
	movzx	ebp, BYTE PTR 23[rsp]
	cvtsi2ss	xmm10, esi
	mov	rdx, QWORD PTR 24[rsp]
	cvtsi2ss	xmm9, edi
	divss	xmm10, xmm9
.L93:
	movzx	ecx, BYTE PTR 141[rax]
	test	cl, cl
	jns	.L94
	movzx	ecx, BYTE PTR gb[rip+9]
	pxor	xmm9, xmm9
	cvtsi2ss	xmm9, ecx
	mulss	xmm9, xmm10
	divss	xmm9, DWORD PTR .LC11[rip]
	addss	xmm4, xmm9
.L94:
	movzx	ecx, BYTE PTR 141[rax]
	mulss	xmm4, xmm5
	and	ecx, 8
	je	.L169
	movzx	ecx, BYTE PTR gb[rip+9]
	pxor	xmm9, xmm9
	cvtsi2ss	xmm9, ecx
	mulss	xmm9, xmm10
	divss	xmm9, DWORD PTR .LC11[rip]
	addss	xmm8, xmm9
.L169:
	mulss	xmm8, xmm5
	mov	edi, 1
	jmp	.L72
.L33:
	cmp	cl, -64
	jne	.L37
	lea	rsi, PU3[rip]
	mov	QWORD PTR PU2Table[rip], rsi
	jmp	.L37
.L27:
	cmp	cl, -64
	jne	.L31
	movzx	ecx, BYTE PTR 116[rax]
	lea	rsi, PU3[rip]
	mov	QWORD PTR PU1Table[rip], rsi
	and	ecx, -64
	cmp	cl, -128
	jne	.L182
.L32:
	lea	rsi, PU2[rip]
	mov	QWORD PTR PU2Table[rip], rsi
	jmp	.L37
.L26:
	lea	rsi, PU2[rip]
	mov	QWORD PTR PU1Table[rip], rsi
	jmp	.L31
.L54:
	cmp	r12b, 14
	jbe	.L55
	add	esi, 1
	add	rcx, 1
	cmp	sil, 4
	jne	.L170
	jmp	.L43
.L58:
	lea	ecx, [rsi+r14]
	cmp	cx, 2047
	jbe	.L165
	xor	ecx, ecx
	mov	BYTE PTR gb[rip+26], 0
	mov	WORD PTR gb[rip], cx
	xor	ecx, ecx
	mov	BYTE PTR gb[rip+6], 0
	jmp	.L60
.L59:
	xor	esi, esi
	xor	ecx, ecx
	mov	WORD PTR gb[rip], si
	jmp	.L60
.L162:
	pxor	xmm10, xmm10
	cvtsi2ss	xmm10, esi
	jmp	.L93
	.seh_endproc
	.p2align 4
	.globl	cgb_get_buffer
	.def	cgb_get_buffer;	.scl	2;	.type	32;	.endef
	.seh_proc	cgb_get_buffer
cgb_get_buffer:
	.seh_endprologue
	lea	rax, gb[rip+176]
	ret
	.seh_endproc
	.globl	ch4Samples
	.bss
	.align 4
ch4Samples:
	.space 4
.lcomm lfsrMax,4,4
.lcomm sampleRate,4,4
.lcomm apuCycle,1,1
.lcomm apuFrame,4,4
.lcomm PU2Table,8,8
.lcomm PU1Table,8,8
.lcomm soundChannelPos,16,16
.lcomm gb,39432,32
	.globl	freqTableNSE
	.section .rdata,"dr"
	.align 32
freqTableNSE:
	.long	1224736768
	.long	1216348160
	.long	1207959552
	.long	1202367147
	.long	1199570944
	.long	1196215501
	.long	1193978539
	.long	1192380709
	.long	1224736768
	.long	1216348160
	.long	1207959552
	.long	1202367147
	.long	1199570944
	.long	1196215501
	.long	1193978539
	.long	1192380709
	.long	1216348160
	.long	1207959552
	.long	1199570944
	.long	1193978539
	.long	1191182336
	.long	1187826893
	.long	1185589931
	.long	1183992101
	.long	1216348160
	.long	1207959552
	.long	1199570944
	.long	1193978539
	.long	1191182336
	.long	1187826893
	.long	1185589931
	.long	1183992101
	.long	1207959552
	.long	1199570944
	.long	1191182336
	.long	1185589931
	.long	1182793728
	.long	1179438285
	.long	1177201323
	.long	1175603493
	.long	1207959552
	.long	1199570944
	.long	1191182336
	.long	1185589931
	.long	1182793728
	.long	1179438285
	.long	1177201323
	.long	1175603493
	.long	1199570944
	.long	1191182336
	.long	1182793728
	.long	1177201323
	.long	1174405120
	.long	1171049677
	.long	1168812715
	.long	1167214885
	.long	1199570944
	.long	1191182336
	.long	1182793728
	.long	1177201323
	.long	1174405120
	.long	1171049677
	.long	1168812715
	.long	1167214885
	.long	1191182336
	.long	1182793728
	.long	1174405120
	.long	1168812715
	.long	1166016512
	.long	1162661069
	.long	1160424107
	.long	1158826277
	.long	1191182336
	.long	1182793728
	.long	1174405120
	.long	1168812715
	.long	1166016512
	.long	1162661069
	.long	1160424107
	.long	1158826277
	.long	1182793728
	.long	1174405120
	.long	1166016512
	.long	1160424107
	.long	1157627904
	.long	1154272461
	.long	1152035499
	.long	1150437669
	.long	1182793728
	.long	1174405120
	.long	1166016512
	.long	1160424107
	.long	1157627904
	.long	1154272461
	.long	1152035499
	.long	1150437669
	.long	1174405120
	.long	1166016512
	.long	1157627904
	.long	1152035499
	.long	1149239296
	.long	1145883853
	.long	1143646891
	.long	1142049061
	.long	1174405120
	.long	1166016512
	.long	1157627904
	.long	1152035499
	.long	1149239296
	.long	1145883853
	.long	1143646891
	.long	1142049061
	.long	1166016512
	.long	1157627904
	.long	1149239296
	.long	1143646891
	.long	1140850688
	.long	1137495245
	.long	1135258283
	.long	1133660453
	.long	1166016512
	.long	1157627904
	.long	1149239296
	.long	1143646891
	.long	1140850688
	.long	1137495245
	.long	1135258283
	.long	1133660453
	.long	1157627904
	.long	1149239296
	.long	1140850688
	.long	1135258283
	.long	1132462080
	.long	1129106637
	.long	1126869675
	.long	1125271845
	.long	1157627904
	.long	1149239296
	.long	1140850688
	.long	1135258283
	.long	1132462080
	.long	1129106637
	.long	1126869675
	.long	1125271845
	.long	1149239296
	.long	1140850688
	.long	1132462080
	.long	1126869675
	.long	1124073472
	.long	1120718029
	.long	1118481067
	.long	1116883237
	.long	1149239296
	.long	1140850688
	.long	1132462080
	.long	1126869675
	.long	1124073472
	.long	1120718029
	.long	1118481067
	.long	1116883237
	.long	1140850688
	.long	1132462080
	.long	1124073472
	.long	1118481067
	.long	1115684864
	.long	1112329421
	.long	1110092459
	.long	1108494629
	.long	1140850688
	.long	1132462080
	.long	1124073472
	.long	1118481067
	.long	1115684864
	.long	1112329421
	.long	1110092459
	.long	1108494629
	.long	1132462080
	.long	1124073472
	.long	1115684864
	.long	1110092459
	.long	1107296256
	.long	1103940813
	.long	1101703851
	.long	1100106021
	.long	1132462080
	.long	1124073472
	.long	1115684864
	.long	1110092459
	.long	1107296256
	.long	1103940813
	.long	1101703851
	.long	1100106021
	.long	1124073472
	.long	1115684864
	.long	1107296256
	.long	1101703851
	.long	1098907648
	.long	1095552205
	.long	1093315243
	.long	1091717413
	.long	1124073472
	.long	1115684864
	.long	1107296256
	.long	1101703851
	.long	1098907648
	.long	1095552205
	.long	1093315243
	.long	1091717413
	.long	1115684864
	.long	1107296256
	.long	1098907648
	.long	1093315243
	.long	1090519040
	.long	1087163597
	.long	1084926635
	.long	1083328805
	.long	1115684864
	.long	1107296256
	.long	1098907648
	.long	1093315243
	.long	1090519040
	.long	1087163597
	.long	1084926635
	.long	1083328805
	.long	1107296256
	.long	1098907648
	.long	1090519040
	.long	1084926635
	.long	1082130432
	.long	1078774989
	.long	1076538027
	.long	1074940197
	.long	1107296256
	.long	1098907648
	.long	1090519040
	.long	1084926635
	.long	1082130432
	.long	1078774989
	.long	1076538027
	.long	1074940197
	.long	1098907648
	.long	1090519040
	.long	1082130432
	.long	1076538027
	.long	1073741824
	.long	1070386381
	.long	1068149419
	.long	1066551589
	.long	1098907648
	.long	1090519040
	.long	1082130432
	.long	1076538027
	.long	1073741824
	.long	1070386381
	.long	1068149419
	.long	1066551589
	.globl	freqTable
	.align 32
freqTable:
	.long	1107296256
	.long	1107300354
	.long	1107304456
	.long	1107308562
	.long	1107312672
	.long	1107316786
	.long	1107320904
	.long	1107325026
	.long	1107329153
	.long	1107333283
	.long	1107337417
	.long	1107341555
	.long	1107345698
	.long	1107349844
	.long	1107353995
	.long	1107358149
	.long	1107362308
	.long	1107366471
	.long	1107370638
	.long	1107374809
	.long	1107378984
	.long	1107383163
	.long	1107387347
	.long	1107391534
	.long	1107395726
	.long	1107399921
	.long	1107404121
	.long	1107408325
	.long	1107412534
	.long	1107416746
	.long	1107420963
	.long	1107425184
	.long	1107429409
	.long	1107433638
	.long	1107437871
	.long	1107442109
	.long	1107446350
	.long	1107450596
	.long	1107454847
	.long	1107459101
	.long	1107463360
	.long	1107467623
	.long	1107471890
	.long	1107476161
	.long	1107480437
	.long	1107484717
	.long	1107489001
	.long	1107493290
	.long	1107497583
	.long	1107501880
	.long	1107506181
	.long	1107510487
	.long	1107514797
	.long	1107519111
	.long	1107523430
	.long	1107527753
	.long	1107532080
	.long	1107536412
	.long	1107540748
	.long	1107545089
	.long	1107549433
	.long	1107553782
	.long	1107558136
	.long	1107562494
	.long	1107566856
	.long	1107571223
	.long	1107575594
	.long	1107579970
	.long	1107584350
	.long	1107588734
	.long	1107593123
	.long	1107597516
	.long	1107601914
	.long	1107606316
	.long	1107610723
	.long	1107615134
	.long	1107619549
	.long	1107623969
	.long	1107628394
	.long	1107632823
	.long	1107637256
	.long	1107641694
	.long	1107646137
	.long	1107650584
	.long	1107655036
	.long	1107659492
	.long	1107663952
	.long	1107668418
	.long	1107672887
	.long	1107677362
	.long	1107681841
	.long	1107686324
	.long	1107690812
	.long	1107695305
	.long	1107699802
	.long	1107704304
	.long	1107708810
	.long	1107713322
	.long	1107717837
	.long	1107722358
	.long	1107726883
	.long	1107731412
	.long	1107735947
	.long	1107740486
	.long	1107745029
	.long	1107749578
	.long	1107754131
	.long	1107758688
	.long	1107763251
	.long	1107767818
	.long	1107772390
	.long	1107776966
	.long	1107781547
	.long	1107786133
	.long	1107790724
	.long	1107795320
	.long	1107799920
	.long	1107804525
	.long	1107809135
	.long	1107813749
	.long	1107818369
	.long	1107822993
	.long	1107827622
	.long	1107832255
	.long	1107836894
	.long	1107841537
	.long	1107846186
	.long	1107850839
	.long	1107855497
	.long	1107860159
	.long	1107864827
	.long	1107869499
	.long	1107874177
	.long	1107878859
	.long	1107883546
	.long	1107888238
	.long	1107892935
	.long	1107897637
	.long	1107902344
	.long	1107907056
	.long	1107911772
	.long	1107916494
	.long	1107921220
	.long	1107925952
	.long	1107930689
	.long	1107935430
	.long	1107940176
	.long	1107944928
	.long	1107949684
	.long	1107954446
	.long	1107959212
	.long	1107963984
	.long	1107968760
	.long	1107973542
	.long	1107978329
	.long	1107983120
	.long	1107987917
	.long	1107992719
	.long	1107997526
	.long	1108002338
	.long	1108007155
	.long	1108011977
	.long	1108016805
	.long	1108021637
	.long	1108026475
	.long	1108031317
	.long	1108036165
	.long	1108041018
	.long	1108045876
	.long	1108050740
	.long	1108055608
	.long	1108060482
	.long	1108065361
	.long	1108070245
	.long	1108075134
	.long	1108080029
	.long	1108084929
	.long	1108089834
	.long	1108094744
	.long	1108099659
	.long	1108104580
	.long	1108109506
	.long	1108114437
	.long	1108119374
	.long	1108124316
	.long	1108129263
	.long	1108134216
	.long	1108139174
	.long	1108144137
	.long	1108149105
	.long	1108154079
	.long	1108159058
	.long	1108164043
	.long	1108169033
	.long	1108174028
	.long	1108179029
	.long	1108184035
	.long	1108189047
	.long	1108194064
	.long	1108199086
	.long	1108204114
	.long	1108209147
	.long	1108214186
	.long	1108219230
	.long	1108224280
	.long	1108229335
	.long	1108234396
	.long	1108239462
	.long	1108244533
	.long	1108249611
	.long	1108254693
	.long	1108259781
	.long	1108264875
	.long	1108269975
	.long	1108275079
	.long	1108280190
	.long	1108285306
	.long	1108290427
	.long	1108295555
	.long	1108300687
	.long	1108305826
	.long	1108310970
	.long	1108316120
	.long	1108321275
	.long	1108326436
	.long	1108331603
	.long	1108336775
	.long	1108341953
	.long	1108347137
	.long	1108352326
	.long	1108357521
	.long	1108362722
	.long	1108367928
	.long	1108373141
	.long	1108378359
	.long	1108383582
	.long	1108388812
	.long	1108394047
	.long	1108399288
	.long	1108404535
	.long	1108409788
	.long	1108415047
	.long	1108420311
	.long	1108425581
	.long	1108430857
	.long	1108436139
	.long	1108441427
	.long	1108446720
	.long	1108452020
	.long	1108457325
	.long	1108462636
	.long	1108467954
	.long	1108473277
	.long	1108478606
	.long	1108483941
	.long	1108489282
	.long	1108494629
	.long	1108499981
	.long	1108505340
	.long	1108510705
	.long	1108516076
	.long	1108521453
	.long	1108526836
	.long	1108532225
	.long	1108537620
	.long	1108543021
	.long	1108548428
	.long	1108553841
	.long	1108559260
	.long	1108564685
	.long	1108570117
	.long	1108575554
	.long	1108580998
	.long	1108586448
	.long	1108591903
	.long	1108597366
	.long	1108602834
	.long	1108608308
	.long	1108613789
	.long	1108619276
	.long	1108624769
	.long	1108630268
	.long	1108635773
	.long	1108641285
	.long	1108646803
	.long	1108652327
	.long	1108657858
	.long	1108663394
	.long	1108668937
	.long	1108674487
	.long	1108680042
	.long	1108685604
	.long	1108691173
	.long	1108696747
	.long	1108702328
	.long	1108707916
	.long	1108713509
	.long	1108719110
	.long	1108724716
	.long	1108730329
	.long	1108735948
	.long	1108741574
	.long	1108747207
	.long	1108752845
	.long	1108758490
	.long	1108764142
	.long	1108769800
	.long	1108775465
	.long	1108781136
	.long	1108786814
	.long	1108792498
	.long	1108798189
	.long	1108803886
	.long	1108809590
	.long	1108815300
	.long	1108821017
	.long	1108826741
	.long	1108832471
	.long	1108838208
	.long	1108843952
	.long	1108849702
	.long	1108855459
	.long	1108861222
	.long	1108866992
	.long	1108872769
	.long	1108878553
	.long	1108884343
	.long	1108890140
	.long	1108895944
	.long	1108901755
	.long	1108907572
	.long	1108913396
	.long	1108919227
	.long	1108925064
	.long	1108930909
	.long	1108936760
	.long	1108942618
	.long	1108948483
	.long	1108954355
	.long	1108960234
	.long	1108966119
	.long	1108972012
	.long	1108977911
	.long	1108983818
	.long	1108989731
	.long	1108995651
	.long	1109001578
	.long	1109007512
	.long	1109013453
	.long	1109019401
	.long	1109025357
	.long	1109031319
	.long	1109037288
	.long	1109043264
	.long	1109049247
	.long	1109055238
	.long	1109061235
	.long	1109067239
	.long	1109073251
	.long	1109079270
	.long	1109085296
	.long	1109091329
	.long	1109097369
	.long	1109103416
	.long	1109109471
	.long	1109115532
	.long	1109121601
	.long	1109127677
	.long	1109133761
	.long	1109139851
	.long	1109145949
	.long	1109152054
	.long	1109158167
	.long	1109164286
	.long	1109170413
	.long	1109176548
	.long	1109182689
	.long	1109188838
	.long	1109194995
	.long	1109201159
	.long	1109207330
	.long	1109213508
	.long	1109219694
	.long	1109225888
	.long	1109232089
	.long	1109238297
	.long	1109244513
	.long	1109250736
	.long	1109256967
	.long	1109263205
	.long	1109269451
	.long	1109275704
	.long	1109281965
	.long	1109288234
	.long	1109294510
	.long	1109300793
	.long	1109307085
	.long	1109313383
	.long	1109319690
	.long	1109326004
	.long	1109332326
	.long	1109338655
	.long	1109344993
	.long	1109351337
	.long	1109357690
	.long	1109364050
	.long	1109370419
	.long	1109376794
	.long	1109383178
	.long	1109389569
	.long	1109395969
	.long	1109402376
	.long	1109408791
	.long	1109415213
	.long	1109421644
	.long	1109428082
	.long	1109434529
	.long	1109440983
	.long	1109447445
	.long	1109453915
	.long	1109460393
	.long	1109466879
	.long	1109473373
	.long	1109479875
	.long	1109486385
	.long	1109492903
	.long	1109499429
	.long	1109505963
	.long	1109512506
	.long	1109519056
	.long	1109525614
	.long	1109532181
	.long	1109538755
	.long	1109545338
	.long	1109551929
	.long	1109558528
	.long	1109565135
	.long	1109571751
	.long	1109578374
	.long	1109585006
	.long	1109591646
	.long	1109598295
	.long	1109604951
	.long	1109611616
	.long	1109618290
	.long	1109624971
	.long	1109631661
	.long	1109638360
	.long	1109645066
	.long	1109651781
	.long	1109658505
	.long	1109665237
	.long	1109671977
	.long	1109678726
	.long	1109685483
	.long	1109692249
	.long	1109699023
	.long	1109705806
	.long	1109712597
	.long	1109719397
	.long	1109726205
	.long	1109733022
	.long	1109739848
	.long	1109746682
	.long	1109753525
	.long	1109760376
	.long	1109767237
	.long	1109774105
	.long	1109780983
	.long	1109787869
	.long	1109794764
	.long	1109801668
	.long	1109808580
	.long	1109815501
	.long	1109822431
	.long	1109829370
	.long	1109836318
	.long	1109843274
	.long	1109850240
	.long	1109857214
	.long	1109864197
	.long	1109871189
	.long	1109878190
	.long	1109885200
	.long	1109892219
	.long	1109899247
	.long	1109906284
	.long	1109913330
	.long	1109920385
	.long	1109927449
	.long	1109934522
	.long	1109941604
	.long	1109948695
	.long	1109955795
	.long	1109962905
	.long	1109970024
	.long	1109977151
	.long	1109984288
	.long	1109991435
	.long	1109998590
	.long	1110005755
	.long	1110012929
	.long	1110020112
	.long	1110027304
	.long	1110034506
	.long	1110041717
	.long	1110048938
	.long	1110056168
	.long	1110063407
	.long	1110070656
	.long	1110077914
	.long	1110085182
	.long	1110092459
	.long	1110099745
	.long	1110107041
	.long	1110114347
	.long	1110121662
	.long	1110128986
	.long	1110136321
	.long	1110143664
	.long	1110151018
	.long	1110158381
	.long	1110165754
	.long	1110173136
	.long	1110180528
	.long	1110187930
	.long	1110195341
	.long	1110202763
	.long	1110210194
	.long	1110217634
	.long	1110225085
	.long	1110232545
	.long	1110240016
	.long	1110247496
	.long	1110254986
	.long	1110262486
	.long	1110269995
	.long	1110277515
	.long	1110285045
	.long	1110292585
	.long	1110300134
	.long	1110307694
	.long	1110315264
	.long	1110322843
	.long	1110330433
	.long	1110338033
	.long	1110345643
	.long	1110353264
	.long	1110360894
	.long	1110368535
	.long	1110376186
	.long	1110383847
	.long	1110391518
	.long	1110399199
	.long	1110406891
	.long	1110414593
	.long	1110422306
	.long	1110430028
	.long	1110437762
	.long	1110445505
	.long	1110453259
	.long	1110461023
	.long	1110468798
	.long	1110476583
	.long	1110484379
	.long	1110492186
	.long	1110500002
	.long	1110507830
	.long	1110515668
	.long	1110523516
	.long	1110531375
	.long	1110539245
	.long	1110547126
	.long	1110555017
	.long	1110562919
	.long	1110570831
	.long	1110578755
	.long	1110586689
	.long	1110594634
	.long	1110602590
	.long	1110610556
	.long	1110618534
	.long	1110626522
	.long	1110634521
	.long	1110642531
	.long	1110650552
	.long	1110658585
	.long	1110666628
	.long	1110674682
	.long	1110682747
	.long	1110690823
	.long	1110698910
	.long	1110707009
	.long	1110715118
	.long	1110723239
	.long	1110731371
	.long	1110739514
	.long	1110747668
	.long	1110755834
	.long	1110764010
	.long	1110772199
	.long	1110780398
	.long	1110788609
	.long	1110796831
	.long	1110805064
	.long	1110813309
	.long	1110821566
	.long	1110829833
	.long	1110838113
	.long	1110846404
	.long	1110854706
	.long	1110863020
	.long	1110871345
	.long	1110879682
	.long	1110888031
	.long	1110896391
	.long	1110904763
	.long	1110913147
	.long	1110921543
	.long	1110929950
	.long	1110938369
	.long	1110946799
	.long	1110955242
	.long	1110963697
	.long	1110972163
	.long	1110980641
	.long	1110989131
	.long	1110997633
	.long	1111006147
	.long	1111014673
	.long	1111023212
	.long	1111031762
	.long	1111040324
	.long	1111048898
	.long	1111057485
	.long	1111066083
	.long	1111074694
	.long	1111083317
	.long	1111091952
	.long	1111100600
	.long	1111109260
	.long	1111117932
	.long	1111126616
	.long	1111135313
	.long	1111144022
	.long	1111152744
	.long	1111161478
	.long	1111170224
	.long	1111178983
	.long	1111187755
	.long	1111196539
	.long	1111205335
	.long	1111214145
	.long	1111222966
	.long	1111231801
	.long	1111240648
	.long	1111249508
	.long	1111258381
	.long	1111267266
	.long	1111276164
	.long	1111285075
	.long	1111293999
	.long	1111302936
	.long	1111311886
	.long	1111320848
	.long	1111329824
	.long	1111338812
	.long	1111347814
	.long	1111356829
	.long	1111365856
	.long	1111374897
	.long	1111383951
	.long	1111393018
	.long	1111402098
	.long	1111411192
	.long	1111420299
	.long	1111429419
	.long	1111438552
	.long	1111447698
	.long	1111456859
	.long	1111466032
	.long	1111475219
	.long	1111484419
	.long	1111493633
	.long	1111502860
	.long	1111512101
	.long	1111521355
	.long	1111530623
	.long	1111539905
	.long	1111549200
	.long	1111558509
	.long	1111567832
	.long	1111577168
	.long	1111586518
	.long	1111595882
	.long	1111605260
	.long	1111614652
	.long	1111624057
	.long	1111633477
	.long	1111642911
	.long	1111652358
	.long	1111661820
	.long	1111671295
	.long	1111680785
	.long	1111690289
	.long	1111699807
	.long	1111709339
	.long	1111718885
	.long	1111728446
	.long	1111738021
	.long	1111747610
	.long	1111757214
	.long	1111766832
	.long	1111776464
	.long	1111786111
	.long	1111795772
	.long	1111805448
	.long	1111815138
	.long	1111824843
	.long	1111834562
	.long	1111844296
	.long	1111854045
	.long	1111863809
	.long	1111873587
	.long	1111883380
	.long	1111893188
	.long	1111903010
	.long	1111912848
	.long	1111922700
	.long	1111932568
	.long	1111942450
	.long	1111952347
	.long	1111962260
	.long	1111972187
	.long	1111982130
	.long	1111992088
	.long	1112002060
	.long	1112012049
	.long	1112022052
	.long	1112032071
	.long	1112042105
	.long	1112052154
	.long	1112062219
	.long	1112072299
	.long	1112082394
	.long	1112092505
	.long	1112102632
	.long	1112112774
	.long	1112122932
	.long	1112133105
	.long	1112143295
	.long	1112153499
	.long	1112163720
	.long	1112173956
	.long	1112184208
	.long	1112194476
	.long	1112204760
	.long	1112215060
	.long	1112225376
	.long	1112235708
	.long	1112246056
	.long	1112256420
	.long	1112266800
	.long	1112277196
	.long	1112287608
	.long	1112298037
	.long	1112308482
	.long	1112318943
	.long	1112329421
	.long	1112339915
	.long	1112350425
	.long	1112360952
	.long	1112371495
	.long	1112382055
	.long	1112392632
	.long	1112403225
	.long	1112413834
	.long	1112424461
	.long	1112435104
	.long	1112445764
	.long	1112456441
	.long	1112467134
	.long	1112477845
	.long	1112488572
	.long	1112499317
	.long	1112510078
	.long	1112520857
	.long	1112531652
	.long	1112542465
	.long	1112553295
	.long	1112564142
	.long	1112575006
	.long	1112585888
	.long	1112596787
	.long	1112607703
	.long	1112618637
	.long	1112629588
	.long	1112640557
	.long	1112651543
	.long	1112662547
	.long	1112673569
	.long	1112684608
	.long	1112695665
	.long	1112706740
	.long	1112717832
	.long	1112728943
	.long	1112740071
	.long	1112751217
	.long	1112762381
	.long	1112773563
	.long	1112784764
	.long	1112795982
	.long	1112807219
	.long	1112818473
	.long	1112829746
	.long	1112841037
	.long	1112852347
	.long	1112863675
	.long	1112875021
	.long	1112886386
	.long	1112897769
	.long	1112909171
	.long	1112920592
	.long	1112932031
	.long	1112943489
	.long	1112954965
	.long	1112966461
	.long	1112977975
	.long	1112989508
	.long	1113001060
	.long	1113012631
	.long	1113024221
	.long	1113035830
	.long	1113047458
	.long	1113059105
	.long	1113070772
	.long	1113082458
	.long	1113094163
	.long	1113105887
	.long	1113117631
	.long	1113129394
	.long	1113141177
	.long	1113152979
	.long	1113164801
	.long	1113176642
	.long	1113188504
	.long	1113200384
	.long	1113212285
	.long	1113224206
	.long	1113236146
	.long	1113248106
	.long	1113260087
	.long	1113272087
	.long	1113284108
	.long	1113296148
	.long	1113308209
	.long	1113320290
	.long	1113332391
	.long	1113344513
	.long	1113356655
	.long	1113368817
	.long	1113381000
	.long	1113393204
	.long	1113405428
	.long	1113417673
	.long	1113429938
	.long	1113442224
	.long	1113454531
	.long	1113466859
	.long	1113479208
	.long	1113491578
	.long	1113503968
	.long	1113516380
	.long	1113528813
	.long	1113541267
	.long	1113553743
	.long	1113566239
	.long	1113578757
	.long	1113591297
	.long	1113603858
	.long	1113616440
	.long	1113629044
	.long	1113641670
	.long	1113654317
	.long	1113666986
	.long	1113679677
	.long	1113692389
	.long	1113705124
	.long	1113717880
	.long	1113730659
	.long	1113743459
	.long	1113756282
	.long	1113769127
	.long	1113781994
	.long	1113794883
	.long	1113807795
	.long	1113820729
	.long	1113833686
	.long	1113846665
	.long	1113859666
	.long	1113872691
	.long	1113885738
	.long	1113898808
	.long	1113911901
	.long	1113925016
	.long	1113938155
	.long	1113951316
	.long	1113964501
	.long	1113977709
	.long	1113990940
	.long	1114004194
	.long	1114017471
	.long	1114030772
	.long	1114044097
	.long	1114057444
	.long	1114070816
	.long	1114084211
	.long	1114097630
	.long	1114111072
	.long	1114124538
	.long	1114138028
	.long	1114151543
	.long	1114165081
	.long	1114178643
	.long	1114192229
	.long	1114205840
	.long	1114219474
	.long	1114233133
	.long	1114246817
	.long	1114260525
	.long	1114274257
	.long	1114288014
	.long	1114301796
	.long	1114315602
	.long	1114329434
	.long	1114343290
	.long	1114357171
	.long	1114371077
	.long	1114385008
	.long	1114398964
	.long	1114412945
	.long	1114426952
	.long	1114440984
	.long	1114455041
	.long	1114469124
	.long	1114483232
	.long	1114497366
	.long	1114511526
	.long	1114525711
	.long	1114539922
	.long	1114554159
	.long	1114568422
	.long	1114582711
	.long	1114597026
	.long	1114611368
	.long	1114625735
	.long	1114640129
	.long	1114654549
	.long	1114668996
	.long	1114683469
	.long	1114697969
	.long	1114712495
	.long	1114727049
	.long	1114741629
	.long	1114756236
	.long	1114770870
	.long	1114785531
	.long	1114800219
	.long	1114814934
	.long	1114829677
	.long	1114844447
	.long	1114859244
	.long	1114874069
	.long	1114888922
	.long	1114903802
	.long	1114918710
	.long	1114933645
	.long	1114948609
	.long	1114963601
	.long	1114978620
	.long	1114993668
	.long	1115008744
	.long	1115023848
	.long	1115038981
	.long	1115054142
	.long	1115069331
	.long	1115084549
	.long	1115099796
	.long	1115115072
	.long	1115130376
	.long	1115145710
	.long	1115161072
	.long	1115176464
	.long	1115191884
	.long	1115207334
	.long	1115222813
	.long	1115238322
	.long	1115253860
	.long	1115269428
	.long	1115285026
	.long	1115300653
	.long	1115316310
	.long	1115331997
	.long	1115347714
	.long	1115363461
	.long	1115379239
	.long	1115395046
	.long	1115410884
	.long	1115426753
	.long	1115442652
	.long	1115458582
	.long	1115474542
	.long	1115490533
	.long	1115506555
	.long	1115522609
	.long	1115538693
	.long	1115554808
	.long	1115570955
	.long	1115587133
	.long	1115603342
	.long	1115619583
	.long	1115635856
	.long	1115652160
	.long	1115668496
	.long	1115684864
	.long	1115693064
	.long	1115701280
	.long	1115709512
	.long	1115717761
	.long	1115726025
	.long	1115734306
	.long	1115742603
	.long	1115750916
	.long	1115759246
	.long	1115767592
	.long	1115775955
	.long	1115784334
	.long	1115792729
	.long	1115801142
	.long	1115809571
	.long	1115818017
	.long	1115826479
	.long	1115834958
	.long	1115843455
	.long	1115851968
	.long	1115860498
	.long	1115869045
	.long	1115877609
	.long	1115886191
	.long	1115894789
	.long	1115903405
	.long	1115912038
	.long	1115920688
	.long	1115929356
	.long	1115938041
	.long	1115946744
	.long	1115955464
	.long	1115964202
	.long	1115972958
	.long	1115981731
	.long	1115990522
	.long	1115999331
	.long	1116008157
	.long	1116017002
	.long	1116025864
	.long	1116034745
	.long	1116043644
	.long	1116052560
	.long	1116061495
	.long	1116070449
	.long	1116079420
	.long	1116088410
	.long	1116097418
	.long	1116106445
	.long	1116115491
	.long	1116124555
	.long	1116133637
	.long	1116142739
	.long	1116151859
	.long	1116160998
	.long	1116170155
	.long	1116179332
	.long	1116188528
	.long	1116197743
	.long	1116206977
	.long	1116216230
	.long	1116225502
	.long	1116234794
	.long	1116244105
	.long	1116253435
	.long	1116262785
	.long	1116272154
	.long	1116281543
	.long	1116290952
	.long	1116300380
	.long	1116309828
	.long	1116319297
	.long	1116328784
	.long	1116338292
	.long	1116347820
	.long	1116357368
	.long	1116366937
	.long	1116376525
	.long	1116386134
	.long	1116395763
	.long	1116405413
	.long	1116415083
	.long	1116424773
	.long	1116434484
	.long	1116444216
	.long	1116453969
	.long	1116463742
	.long	1116473537
	.long	1116483352
	.long	1116493188
	.long	1116503045
	.long	1116512924
	.long	1116522824
	.long	1116532745
	.long	1116542687
	.long	1116552651
	.long	1116562636
	.long	1116572643
	.long	1116582672
	.long	1116592722
	.long	1116602794
	.long	1116612888
	.long	1116623004
	.long	1116633141
	.long	1116643301
	.long	1116653483
	.long	1116663687
	.long	1116673914
	.long	1116684163
	.long	1116694434
	.long	1116704728
	.long	1116715044
	.long	1116725383
	.long	1116735745
	.long	1116746129
	.long	1116756536
	.long	1116766967
	.long	1116777420
	.long	1116787896
	.long	1116798396
	.long	1116808919
	.long	1116819465
	.long	1116830035
	.long	1116840628
	.long	1116851244
	.long	1116861885
	.long	1116872549
	.long	1116883237
	.long	1116893948
	.long	1116904684
	.long	1116915444
	.long	1116926228
	.long	1116937036
	.long	1116947868
	.long	1116958725
	.long	1116969606
	.long	1116980511
	.long	1116991442
	.long	1117002397
	.long	1117013377
	.long	1117024381
	.long	1117035411
	.long	1117046466
	.long	1117057545
	.long	1117068650
	.long	1117079781
	.long	1117090936
	.long	1117102117
	.long	1117113324
	.long	1117124556
	.long	1117135815
	.long	1117147098
	.long	1117158408
	.long	1117169744
	.long	1117181106
	.long	1117192494
	.long	1117203908
	.long	1117215349
	.long	1117226816
	.long	1117238310
	.long	1117249830
	.long	1117261377
	.long	1117272951
	.long	1117284552
	.long	1117296180
	.long	1117307835
	.long	1117319517
	.long	1117331226
	.long	1117342963
	.long	1117354727
	.long	1117366519
	.long	1117378339
	.long	1117390186
	.long	1117402061
	.long	1117413965
	.long	1117425896
	.long	1117437855
	.long	1117449843
	.long	1117461859
	.long	1117473904
	.long	1117485977
	.long	1117498079
	.long	1117510209
	.long	1117522369
	.long	1117534557
	.long	1117546775
	.long	1117559021
	.long	1117571297
	.long	1117583603
	.long	1117595938
	.long	1117608302
	.long	1117620697
	.long	1117633121
	.long	1117645575
	.long	1117658059
	.long	1117670573
	.long	1117683118
	.long	1117695693
	.long	1117708298
	.long	1117720934
	.long	1117733601
	.long	1117746298
	.long	1117759027
	.long	1117771786
	.long	1117784577
	.long	1117797399
	.long	1117810252
	.long	1117823137
	.long	1117836053
	.long	1117849001
	.long	1117861981
	.long	1117874993
	.long	1117888037
	.long	1117901114
	.long	1117914222
	.long	1117927363
	.long	1117940537
	.long	1117953743
	.long	1117966982
	.long	1117980254
	.long	1117993559
	.long	1118006898
	.long	1118020269
	.long	1118033674
	.long	1118047113
	.long	1118060585
	.long	1118074091
	.long	1118087631
	.long	1118101205
	.long	1118114813
	.long	1118128456
	.long	1118142133
	.long	1118155845
	.long	1118169591
	.long	1118183372
	.long	1118197188
	.long	1118211039
	.long	1118224926
	.long	1118238848
	.long	1118252805
	.long	1118266798
	.long	1118280827
	.long	1118294892
	.long	1118308993
	.long	1118323130
	.long	1118337303
	.long	1118351513
	.long	1118365759
	.long	1118380043
	.long	1118394363
	.long	1118408720
	.long	1118423114
	.long	1118437546
	.long	1118452015
	.long	1118466522
	.long	1118481067
	.long	1118495649
	.long	1118510270
	.long	1118524929
	.long	1118539626
	.long	1118554362
	.long	1118569136
	.long	1118583949
	.long	1118598802
	.long	1118613693
	.long	1118628624
	.long	1118643594
	.long	1118658603
	.long	1118673653
	.long	1118688742
	.long	1118703872
	.long	1118719041
	.long	1118734251
	.long	1118749502
	.long	1118764794
	.long	1118780126
	.long	1118795499
	.long	1118810914
	.long	1118826370
	.long	1118841867
	.long	1118857406
	.long	1118872987
	.long	1118888610
	.long	1118904276
	.long	1118919983
	.long	1118935734
	.long	1118951527
	.long	1118967363
	.long	1118983242
	.long	1118999164
	.long	1119015130
	.long	1119031139
	.long	1119047193
	.long	1119063290
	.long	1119079431
	.long	1119095617
	.long	1119111847
	.long	1119128122
	.long	1119144442
	.long	1119160807
	.long	1119177217
	.long	1119193672
	.long	1119210174
	.long	1119226721
	.long	1119243314
	.long	1119259953
	.long	1119276639
	.long	1119293371
	.long	1119310151
	.long	1119326977
	.long	1119343850
	.long	1119360771
	.long	1119377739
	.long	1119394755
	.long	1119411820
	.long	1119428932
	.long	1119446093
	.long	1119463302
	.long	1119480560
	.long	1119497868
	.long	1119515224
	.long	1119532630
	.long	1119550086
	.long	1119567591
	.long	1119585147
	.long	1119602753
	.long	1119620409
	.long	1119638116
	.long	1119655874
	.long	1119673683
	.long	1119691544
	.long	1119709456
	.long	1119727420
	.long	1119745437
	.long	1119763505
	.long	1119781626
	.long	1119799800
	.long	1119818027
	.long	1119836306
	.long	1119854640
	.long	1119873027
	.long	1119891468
	.long	1119909963
	.long	1119928513
	.long	1119947117
	.long	1119965776
	.long	1119984490
	.long	1120003260
	.long	1120022085
	.long	1120040966
	.long	1120059903
	.long	1120078897
	.long	1120097947
	.long	1120117054
	.long	1120136218
	.long	1120155440
	.long	1120174719
	.long	1120194056
	.long	1120213451
	.long	1120232904
	.long	1120252417
	.long	1120271988
	.long	1120291618
	.long	1120311308
	.long	1120331058
	.long	1120350868
	.long	1120370738
	.long	1120390668
	.long	1120410660
	.long	1120430713
	.long	1120450827
	.long	1120471002
	.long	1120491240
	.long	1120511540
	.long	1120531903
	.long	1120552328
	.long	1120572816
	.long	1120593368
	.long	1120613984
	.long	1120634664
	.long	1120655408
	.long	1120676216
	.long	1120697090
	.long	1120718029
	.long	1120739033
	.long	1120760103
	.long	1120781240
	.long	1120802442
	.long	1120823712
	.long	1120845049
	.long	1120866453
	.long	1120887925
	.long	1120909465
	.long	1120931073
	.long	1120952750
	.long	1120974496
	.long	1120996311
	.long	1121018196
	.long	1121040151
	.long	1121062177
	.long	1121084273
	.long	1121106440
	.long	1121128679
	.long	1121150989
	.long	1121173372
	.long	1121195827
	.long	1121218354
	.long	1121240955
	.long	1121263629
	.long	1121286377
	.long	1121309200
	.long	1121332097
	.long	1121355069
	.long	1121378116
	.long	1121401239
	.long	1121424438
	.long	1121447713
	.long	1121471066
	.long	1121494495
	.long	1121518002
	.long	1121541587
	.long	1121565250
	.long	1121588992
	.long	1121612814
	.long	1121636714
	.long	1121660695
	.long	1121684756
	.long	1121708898
	.long	1121733121
	.long	1121757425
	.long	1121781812
	.long	1121806281
	.long	1121830832
	.long	1121855467
	.long	1121880186
	.long	1121904988
	.long	1121929875
	.long	1121954847
	.long	1121979905
	.long	1122005048
	.long	1122030278
	.long	1122055594
	.long	1122080997
	.long	1122106488
	.long	1122132067
	.long	1122157735
	.long	1122183491
	.long	1122209337
	.long	1122235273
	.long	1122261299
	.long	1122287416
	.long	1122313624
	.long	1122339924
	.long	1122366317
	.long	1122392802
	.long	1122419380
	.long	1122446052
	.long	1122472819
	.long	1122499680
	.long	1122526636
	.long	1122553689
	.long	1122580837
	.long	1122608082
	.long	1122635425
	.long	1122662865
	.long	1122690404
	.long	1122718042
	.long	1122745779
	.long	1122773616
	.long	1122801553
	.long	1122829592
	.long	1122857732
	.long	1122885974
	.long	1122914319
	.long	1122942767
	.long	1122971319
	.long	1122999976
	.long	1123028737
	.long	1123057604
	.long	1123086577
	.long	1123115657
	.long	1123144844
	.long	1123174139
	.long	1123203542
	.long	1123233055
	.long	1123262677
	.long	1123292410
	.long	1123322253
	.long	1123352209
	.long	1123382276
	.long	1123412456
	.long	1123442750
	.long	1123473157
	.long	1123503680
	.long	1123534318
	.long	1123565072
	.long	1123595942
	.long	1123626930
	.long	1123658036
	.long	1123689261
	.long	1123720605
	.long	1123752069
	.long	1123783654
	.long	1123815361
	.long	1123847190
	.long	1123879141
	.long	1123911217
	.long	1123943416
	.long	1123975741
	.long	1124008191
	.long	1124040768
	.long	1124073472
	.long	1124089888
	.long	1124106369
	.long	1124122914
	.long	1124139524
	.long	1124156200
	.long	1124172942
	.long	1124189750
	.long	1124206625
	.long	1124223566
	.long	1124240576
	.long	1124257653
	.long	1124274799
	.long	1124292013
	.long	1124309296
	.long	1124326649
	.long	1124344072
	.long	1124361566
	.long	1124379130
	.long	1124396765
	.long	1124414472
	.long	1124432252
	.long	1124450103
	.long	1124468028
	.long	1124486026
	.long	1124504099
	.long	1124522245
	.long	1124540467
	.long	1124558763
	.long	1124577136
	.long	1124595585
	.long	1124614110
	.long	1124632713
	.long	1124651393
	.long	1124670151
	.long	1124688988
	.long	1124707905
	.long	1124726900
	.long	1124745976
	.long	1124765133
	.long	1124784371
	.long	1124803691
	.long	1124823092
	.long	1124842577
	.long	1124862145
	.long	1124881796
	.long	1124901532
	.long	1124921353
	.long	1124941259
	.long	1124961251
	.long	1124981330
	.long	1125001496
	.long	1125021749
	.long	1125042091
	.long	1125062522
	.long	1125083042
	.long	1125103652
	.long	1125124353
	.long	1125145144
	.long	1125166028
	.long	1125187004
	.long	1125208073
	.long	1125229236
	.long	1125250493
	.long	1125271845
	.long	1125293292
	.long	1125314836
	.long	1125336476
	.long	1125358214
	.long	1125380050
	.long	1125401985
	.long	1125424019
	.long	1125446153
	.long	1125468389
	.long	1125490725
	.long	1125513164
	.long	1125535706
	.long	1125558352
	.long	1125581102
	.long	1125603957
	.long	1125626918
	.long	1125649985
	.long	1125673160
	.long	1125696443
	.long	1125719834
	.long	1125743335
	.long	1125766947
	.long	1125790669
	.long	1125814504
	.long	1125838451
	.long	1125862512
	.long	1125886687
	.long	1125910977
	.long	1125935383
	.long	1125959905
	.long	1125984546
	.long	1126009305
	.long	1126034183
	.long	1126059181
	.long	1126084301
	.long	1126109542
	.long	1126134906
	.long	1126160394
	.long	1126186007
	.long	1126211745
	.long	1126237609
	.long	1126263601
	.long	1126289722
	.long	1126315971
	.long	1126342351
	.long	1126368862
	.long	1126395506
	.long	1126422282
	.long	1126449193
	.long	1126476239
	.long	1126503421
	.long	1126530741
	.long	1126558199
	.long	1126585796
	.long	1126613534
	.long	1126641413
	.long	1126669435
	.long	1126697601
	.long	1126725911
	.long	1126754367
	.long	1126782971
	.long	1126811722
	.long	1126840623
	.long	1126869675
	.long	1126898878
	.long	1126928234
	.long	1126957744
	.long	1126987410
	.long	1127017232
	.long	1127047211
	.long	1127077350
	.long	1127107649
	.long	1127138110
	.long	1127168734
	.long	1127199522
	.long	1127230475
	.long	1127261595
	.long	1127292884
	.long	1127324342
	.long	1127355971
	.long	1127387772
	.long	1127419747
	.long	1127451898
	.long	1127484225
	.long	1127516730
	.long	1127549415
	.long	1127582280
	.long	1127615329
	.long	1127648561
	.long	1127681979
	.long	1127715585
	.long	1127749379
	.long	1127783363
	.long	1127817540
	.long	1127851910
	.long	1127886476
	.long	1127921238
	.long	1127956199
	.long	1127991361
	.long	1128026724
	.long	1128062291
	.long	1128098064
	.long	1128134045
	.long	1128170234
	.long	1128206635
	.long	1128243248
	.long	1128280076
	.long	1128317121
	.long	1128354384
	.long	1128391868
	.long	1128429574
	.long	1128467505
	.long	1128505662
	.long	1128544048
	.long	1128582664
	.long	1128621512
	.long	1128660596
	.long	1128699916
	.long	1128739476
	.long	1128779276
	.long	1128819321
	.long	1128859610
	.long	1128900148
	.long	1128940936
	.long	1128981976
	.long	1129023272
	.long	1129064824
	.long	1129106637
	.long	1129148711
	.long	1129191050
	.long	1129233657
	.long	1129276533
	.long	1129319681
	.long	1129363104
	.long	1129406804
	.long	1129450785
	.long	1129495048
	.long	1129539597
	.long	1129584435
	.long	1129629563
	.long	1129674985
	.long	1129720705
	.long	1129766724
	.long	1129813046
	.long	1129859674
	.long	1129906610
	.long	1129953858
	.long	1130001422
	.long	1130049303
	.long	1130097506
	.long	1130146033
	.long	1130194889
	.long	1130244075
	.long	1130293596
	.long	1130343455
	.long	1130393656
	.long	1130444202
	.long	1130495096
	.long	1130546343
	.long	1130597945
	.long	1130649907
	.long	1130702232
	.long	1130754925
	.long	1130807988
	.long	1130861427
	.long	1130915244
	.long	1130969445
	.long	1131024033
	.long	1131079012
	.long	1131134387
	.long	1131190161
	.long	1131246340
	.long	1131302927
	.long	1131359927
	.long	1131417345
	.long	1131475185
	.long	1131533452
	.long	1131592150
	.long	1131651285
	.long	1131710861
	.long	1131770884
	.long	1131831358
	.long	1131892288
	.long	1131953680
	.long	1132015538
	.long	1132077869
	.long	1132140677
	.long	1132203969
	.long	1132267749
	.long	1132332024
	.long	1132396799
	.long	1132462080
	.long	1132494977
	.long	1132528132
	.long	1132561550
	.long	1132595233
	.long	1132629184
	.long	1132663407
	.long	1132697904
	.long	1132732680
	.long	1132767738
	.long	1132803080
	.long	1132838711
	.long	1132874634
	.long	1132910853
	.long	1132947371
	.long	1132984193
	.long	1133021321
	.long	1133058759
	.long	1133096513
	.long	1133134584
	.long	1133172979
	.long	1133211700
	.long	1133250753
	.long	1133290140
	.long	1133329867
	.long	1133369938
	.long	1133410357
	.long	1133451130
	.long	1133492260
	.long	1133533752
	.long	1133575612
	.long	1133617844
	.long	1133660453
	.long	1133703444
	.long	1133746822
	.long	1133790593
	.long	1133834761
	.long	1133879333
	.long	1133924314
	.long	1133969710
	.long	1134015526
	.long	1134061768
	.long	1134108442
	.long	1134155555
	.long	1134203112
	.long	1134251120
	.long	1134299585
	.long	1134348513
	.long	1134397913
	.long	1134447789
	.long	1134498150
	.long	1134549002
	.long	1134600353
	.long	1134652209
	.long	1134704579
	.long	1134757470
	.long	1134810890
	.long	1134864847
	.long	1134919349
	.long	1134974404
	.long	1135030021
	.long	1135086209
	.long	1135142975
	.long	1135200330
	.long	1135258283
	.long	1135316842
	.long	1135376018
	.long	1135435819
	.long	1135496257
	.long	1135557342
	.long	1135619083
	.long	1135681492
	.long	1135744579
	.long	1135808355
	.long	1135872833
	.long	1135938023
	.long	1136003937
	.long	1136070587
	.long	1136137987
	.long	1136206148
	.long	1136275084
	.long	1136344807
	.long	1136415332
	.long	1136486672
	.long	1136558842
	.long	1136631856
	.long	1136705729
	.long	1136780476
	.long	1136856113
	.long	1136932656
	.long	1137010120
	.long	1137088524
	.long	1137167884
	.long	1137248218
	.long	1137329544
	.long	1137411880
	.long	1137495245
	.long	1137579658
	.long	1137665141
	.long	1137751712
	.long	1137839393
	.long	1137928205
	.long	1138018171
	.long	1138109313
	.long	1138201654
	.long	1138295218
	.long	1138390030
	.long	1138486114
	.long	1138583497
	.long	1138682204
	.long	1138782264
	.long	1138883704
	.long	1138986553
	.long	1139090840
	.long	1139196596
	.long	1139303852
	.long	1139412641
	.long	1139522995
	.long	1139634948
	.long	1139748535
	.long	1139863793
	.long	1139980758
	.long	1140099469
	.long	1140219966
	.long	1140342288
	.long	1140466477
	.long	1140592577
	.long	1140720632
	.long	1140850688
	.long	1140916740
	.long	1140983841
	.long	1141052015
	.long	1141121288
	.long	1141191688
	.long	1141263242
	.long	1141335979
	.long	1141409929
	.long	1141485121
	.long	1141561587
	.long	1141639361
	.long	1141718475
	.long	1141798965
	.long	1141880868
	.long	1141964220
	.long	1142049061
	.long	1142135430
	.long	1142223369
	.long	1142312922
	.long	1142404134
	.long	1142497050
	.long	1142591720
	.long	1142688193
	.long	1142786521
	.long	1142886758
	.long	1142988961
	.long	1143093187
	.long	1143199498
	.long	1143307957
	.long	1143418629
	.long	1143531583
	.long	1143646891
	.long	1143764626
	.long	1143884865
	.long	1144007691
	.long	1144133187
	.long	1144261441
	.long	1144392545
	.long	1144526595
	.long	1144663692
	.long	1144803940
	.long	1144947450
	.long	1145094337
	.long	1145244721
	.long	1145398728
	.long	1145556492
	.long	1145718152
	.long	1145883853
	.long	1146053749
	.long	1146228001
	.long	1146406779
	.long	1146590262
	.long	1146778638
	.long	1146972105
	.long	1147170872
	.long	1147375161
	.long	1147585204
	.long	1147801249
	.long	1148023556
	.long	1148252401
	.long	1148488077
	.long	1148730896
	.long	1148981185
	.long	1149239296
	.long	1149372449
	.long	1149509896
	.long	1149651850
	.long	1149798537
	.long	1149950195
	.long	1150107083
	.long	1150269476
	.long	1150437669
	.long	1150611977
	.long	1150792742
	.long	1150980328
	.long	1151175129
	.long	1151377569
	.long	1151588106
	.long	1151807237
	.long	1152035499
	.long	1152273473
	.long	1152521795
	.long	1152781153
	.long	1153052300
	.long	1153336058
	.long	1153633329
	.long	1153945100
	.long	1154272461
	.long	1154616609
	.long	1154978870
	.long	1155360713
	.long	1155763769
	.long	1156189857
	.long	1156641009
	.long	1157119504
	.long	1157627904
	.long	1157898504
	.long	1158187145
	.long	1158495691
	.long	1158826277
	.long	1159181350
	.long	1159563737
	.long	1159976714
	.long	1160424107
	.long	1160910403
	.long	1161440908
	.long	1162021937
	.long	1162661069
	.long	1163367478
	.long	1164152377
	.long	1165029617
	.long	1166016512
	.long	1166575753
	.long	1167214885
	.long	1167952345
	.long	1168812715
	.long	1169829516
	.long	1171049677
	.long	1172540985
	.long	1174405120
	.long	1175603493
	.long	1177201323
	.long	1179438285
	.long	1182793728
	.long	1185589931
	.long	1191182336
	.long	1199570944
	.globl	WAV
	.data
	.align 32
WAV:
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.globl	PU3
	.section .rdata,"dr"
	.align 32
PU3:
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.globl	PU2
	.align 32
PU2:
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.globl	PU1
	.align 32
PU1:
	.word	1
	.word	1
	.word	1
	.word	1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.globl	PU0
	.align 32
PU0:
	.word	1
	.word	1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	1
	.word	1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.align 4
.LC0:
	.long	1065353216
	.align 4
.LC1:
	.word	-32768
	.word	128
	.align 4
.LC4:
	.byte	7
	.byte	7
	.byte	1
	.byte	7
	.align 16
.LC5:
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.align 4
.LC7:
	.long	1089470464
	.align 4
.LC9:
	.long	-1082130432
	.align 4
.LC10:
	.long	1107296256
	.align 4
.LC11:
	.long	1097859072
	.align 4
.LC12:
	.long	1048576000
	.ident	"GCC: (GNU) 13-win32"
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
