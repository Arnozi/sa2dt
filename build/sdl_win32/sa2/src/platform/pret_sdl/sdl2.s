	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	alphaBlendColor;	.scl	3;	.type	32;	.endef
	.seh_proc	alphaBlendColor
alphaBlendColor:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	movzx	r10d, WORD PTR 94[rax]
	movzx	r9d, WORD PTR 94[rax]
	shr	r9w, 8
	and	r10d, 31
	and	r9d, 31
	mov	eax, ecx
	mov	r8d, edx
	shr	dx, 5
	shr	ax, 5
	and	edx, 31
	mov	r11d, r8d
	and	eax, 31
	imul	edx, r9d
	imul	eax, r10d
	add	eax, edx
	mov	edx, 31
	shr	eax, 4
	cmp	eax, edx
	cmova	eax, edx
	mov	edx, ecx
	shr	r11w, 10
	shr	dx, 10
	and	r11d, 31
	and	edx, 31
	imul	r11d, r9d
	sal	eax, 5
	imul	edx, r10d
	add	edx, r11d
	mov	r11d, 31
	shr	edx, 4
	cmp	edx, r11d
	cmova	edx, r11d
	and	ecx, 31
	and	r8d, 31
	imul	ecx, r10d
	imul	r8d, r9d
	sal	edx, 10
	or	eax, edx
	lea	edx, [rcx+r8]
	mov	ecx, 31
	shr	edx, 4
	cmp	edx, ecx
	cmova	edx, ecx
	or	eax, edx
	or	ax, -32768
	ret
	.seh_endproc
	.p2align 4
	.def	alphaBrightnessIncrease;	.scl	3;	.type	32;	.endef
	.seh_proc	alphaBrightnessIncrease
alphaBrightnessIncrease:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	movzx	r8d, WORD PTR 96[rax]
	and	r8d, 31
	mov	edx, ecx
	mov	r9d, ecx
	shr	dx, 5
	shr	r9w, 10
	mov	eax, edx
	and	edx, 31
	not	eax
	and	eax, 31
	imul	eax, r8d
	shr	eax, 4
	add	eax, edx
	mov	edx, 31
	cmp	eax, edx
	cmova	eax, edx
	mov	edx, r9d
	and	r9d, 31
	not	edx
	and	edx, 31
	sal	eax, 5
	imul	edx, r8d
	shr	edx, 4
	add	edx, r9d
	mov	r9d, 31
	cmp	edx, r9d
	cmova	edx, r9d
	sal	edx, 10
	or	eax, edx
	mov	edx, ecx
	and	ecx, 31
	not	edx
	and	edx, 31
	imul	edx, r8d
	shr	edx, 4
	add	edx, ecx
	mov	ecx, 31
	cmp	edx, ecx
	cmova	edx, ecx
	or	eax, edx
	or	ax, -32768
	ret
	.seh_endproc
	.p2align 4
	.def	alphaBrightnessDecrease;	.scl	3;	.type	32;	.endef
	.seh_proc	alphaBrightnessDecrease
alphaBrightnessDecrease:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	movzx	edx, WORD PTR 96[rax]
	and	edx, 31
	mov	eax, ecx
	mov	r8d, ecx
	shr	cx, 10
	shr	ax, 5
	and	r8d, 31
	and	ecx, 31
	and	eax, 31
	mov	r9d, eax
	imul	r9d, edx
	shr	r9d, 4
	sub	eax, r9d
	mov	r9d, 31
	cmp	eax, r9d
	cmova	eax, r9d
	mov	r9d, ecx
	imul	r9d, edx
	sal	eax, 5
	shr	r9d, 4
	sub	ecx, r9d
	mov	r9d, 31
	cmp	ecx, r9d
	cmova	ecx, r9d
	imul	edx, r8d
	sal	ecx, 10
	or	eax, ecx
	shr	edx, 4
	mov	ecx, r8d
	sub	ecx, edx
	mov	edx, 31
	cmp	ecx, edx
	cmova	ecx, edx
	or	eax, ecx
	or	ax, -32768
	ret
	.seh_endproc
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
	.p2align 4
	.def	alphaBlendSelectTargetB.constprop.0;	.scl	3;	.type	32;	.endef
	.seh_proc	alphaBlendSelectTargetB.constprop.0
alphaBlendSelectTargetB.constprop.0:
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
	mov	r10, QWORD PTR .refptr.REG_BASE[rip]
	movzx	ebp, BYTE PTR 104[rsp]
	movsx	edi, r8b
	movsx	r8, DWORD PTR 96[rsp]
	mov	r11, rcx
	mov	rbx, rdx
	mov	esi, edi
.L15:
	mov	ecx, esi
	test	bpl, bpl
	je	.L7
	imul	rax, rcx, 426
	lea	rax, 1704[rax+r8]
	movzx	eax, WORD PTR [r11+rax*2]
	test	ax, ax
	js	.L8
.L7:
	movsx	r12d, BYTE PTR 7696[r11+rcx]
	movsx	edx, r9b
	cmp	edx, r12d
	jnb	.L9
	mov	eax, edx
	lea	r9, 7680[rax+rcx*4]
	add	r9, r11
	.p2align 4,,10
	.p2align 3
.L14:
	movsx	rax, BYTE PTR [r9]
	mov	rcx, rax
	imul	rax, rax, 426
	add	rax, r8
	movzx	eax, WORD PTR [r11+rax*2]
	test	ax, ax
	jns	.L10
	movzx	r13d, WORD PTR 92[r10]
	lea	r14d, 8[rcx]
	bt	r13d, r14d
	jnc	.L11
	movzx	r13d, WORD PTR [r10]
	shr	r13w, 8
	and	r13d, 15
	bt	r13d, ecx
	jc	.L8
.L11:
	movzx	eax, WORD PTR [r10]
	shr	ax, 8
	and	eax, 15
	bt	eax, ecx
	jnc	.L10
	cmp	edi, esi
	jne	.L16
.L10:
	add	edx, 1
	add	r9, 1
	cmp	edx, r12d
	jb	.L14
.L9:
	add	esi, 1
	xor	r9d, r9d
	cmp	esi, 4
	jne	.L15
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	movzx	edx, WORD PTR 92[rax]
	xor	eax, eax
	and	dh, 32
	je	.L6
	mov	rax, QWORD PTR .refptr.PLTT[rip]
	movzx	eax, WORD PTR [rax]
	.p2align 4,,10
	.p2align 3
.L8:
	mov	WORD PTR [rbx], ax
	mov	eax, 1
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L16:
	xor	eax, eax
.L6:
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "Video mode %u is unsupported.\12\0"
	.text
	.p2align 4
	.def	printf.constprop.0;	.scl	3;	.type	32;	.endef
	.seh_proc	printf.constprop.0
printf.constprop.0:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	ecx, 1
	lea	rbx, 72[rsp]
	mov	QWORD PTR 72[rsp], rdx
	mov	QWORD PTR 80[rsp], r8
	mov	QWORD PTR 88[rsp], r9
	mov	QWORD PTR 40[rsp], rbx
	call	[QWORD PTR __imp___acrt_iob_func[rip]]
	mov	r8, rbx
	lea	rdx, .LC0[rip]
	mov	rcx, rax
	call	__mingw_vfprintf
	add	rsp, 48
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	RenderBGScanline.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	RenderBGScanline.isra.0
RenderBGScanline.isra.0:
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
	mov	r12, QWORD PTR .refptr.VRAM[rip]
	mov	r10d, ecx
	mov	ecx, edx
	lea	rdx, bgMapSizes[rip]
	mov	eax, r10d
	mov	r11d, r10d
	lea	ebp, 0[0+r10*8]
	and	ax, 128
	shr	r11w, 2
	cmp	ax, 1
	mov	eax, r10d
	sbb	ebx, ebx
	shr	ax, 14
	and	ebp, 129024
	and	eax, 3
	sal	r11, 14
	and	ebx, -4
	movzx	r13d, WORD PTR [rdx+rax*4]
	movzx	edi, WORD PTR 2[rdx+rax*4]
	and	r11d, 49152
	add	ebx, 8
	add	r11, r12
	lea	esi, 0[0+r13*8]
	sal	edi, 3
	and	r10w, 64
	je	.L36
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	movzx	eax, WORD PTR 88[rax]
	shr	ax, 4
	and	eax, 15
	lea	r14d, 1[rax]
	mov	eax, r9d
	cdq
	idiv	r14d
	sub	r9d, edx
.L36:
	and	r8d, 511
	lea	r15d, -1[rdi]
	and	ecx, 511
	sub	esi, 1
	lea	eax, [r8+r9]
	mov	r9d, ecx
	xor	r8d, r8d
	and	r15d, eax
	mov	edi, r15d
	and	r15d, 7
	shr	edi, 3
	imul	edi, r13d
	mov	r13d, 7
	sub	r13d, r15d
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L40:
	sal	r14d, 6
	add	r14d, eax
	lea	eax, [r14+rcx]
	movzx	eax, BYTE PTR [r11+rax]
	test	al, al
	je	.L43
.L61:
	mov	rdx, QWORD PTR .refptr.PLTT[rip]
	movzx	eax, WORD PTR [rdx+rax*2]
	mov	rdx, QWORD PTR 104[rsp]
	or	ax, -32768
	mov	WORD PTR [rdx+r8*2], ax
.L43:
	add	r8, 1
	add	r9d, 1
	cmp	r8, 426
	je	.L62
.L44:
	mov	eax, r9d
	test	r10w, r10w
	je	.L37
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	xor	edx, edx
	movzx	eax, WORD PTR 88[rax]
	and	eax, 15
	lea	ecx, 1[rax]
	mov	eax, r8d
	div	ecx
	mov	eax, r9d
	sub	eax, edx
.L37:
	and	eax, esi
	mov	ecx, 7
	mov	edx, eax
	and	eax, 7
	shr	edx, 3
	sub	ecx, eax
	add	edx, edi
	mov	edx, edx
	lea	rdx, 0[rbp+rdx*2]
	movzx	edx, WORD PTR [rdx+r12]
	mov	r14d, edx
	and	r14d, 1023
	test	dh, 4
	cmovne	eax, ecx
	test	dh, 8
	mov	ecx, r15d
	cmovne	ecx, r13d
	sal	ecx, 3
	cmp	ebx, 4
	jne	.L40
	add	ecx, eax
	sal	r14d, 5
	shr	ecx
	add	ecx, r14d
	mov	ecx, ecx
	movzx	ecx, BYTE PTR [r11+rcx]
	mov	r14d, ecx
	and	ecx, 15
	shr	r14b, 4
	test	al, 1
	cmovne	ecx, r14d
	test	cl, cl
	je	.L43
	shr	dx, 12
	movzx	ecx, cl
	movzx	eax, dx
	sal	eax, 4
	add	eax, ecx
	jmp	.L61
.L62:
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC1:
	.ascii "2-D OBJ Character mapping not supported.\0"
	.text
	.p2align 4
	.def	DrawScanline;	.scl	3;	.type	32;	.endef
	.seh_proc	DrawScanline
DrawScanline:
	push	r15
	.seh_pushreg	r15
	mov	eax, 7912
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
	call	___chkstk_ms
	sub	rsp, rax
	.seh_stackalloc	7912
	.seh_endprologue
	mov	r10, QWORD PTR .refptr.REG_BASE[rip]
	movzx	eax, WORD PTR [r10]
	and	ax, 3
	mov	r9d, eax
	movzx	eax, WORD PTR 92[r10]
	sete	r8b
	mov	rbp, rcx
	mov	ecx, 426
	mov	r11d, edx
	mov	WORD PTR 88[rsp], dx
	shr	ax, 6
	lea	rdi, 192[rsp]
	lea	r15, 7016[rsp]
	movzx	r8d, r8b
	and	eax, 3
	mov	r14, rdi
	mov	WORD PTR 48[rsp], r9w
	add	r8d, 3
	lea	rdx, 3600[rsp]
	mov	WORD PTR 166[rsp], ax
	xor	eax, eax
	movsx	r8, r8d
	mov	QWORD PTR 152[rsp], rdi
	rep stosq
	mov	ecx, 106
	mov	rdi, r15
	mov	DWORD PTR 56[rsp], r11d
	rep stosq
	mov	ecx, 426
	mov	r11, r14
	mov	DWORD PTR [rdi], 0
	mov	rdi, rdx
	xor	edx, edx
	mov	DWORD PTR 7888[rsp], 0
	rep stosq
	lea	rdi, 7868[rsp]
.L65:
	movzx	eax, WORD PTR 8[r10+rdx*2]
	mov	WORD PTR 6816[r11+rdx*2], ax
	and	eax, 3
	mov	BYTE PTR [rdi+rdx], al
	and	eax, 3
	movsx	r14, BYTE PTR 7888[rsp+rax]
	lea	r9, 7904[rsp+rax*4]
	mov	rcx, r14
	mov	BYTE PTR -32[r14+r9], dl
	add	rdx, 1
	add	ecx, 1
	mov	BYTE PTR 7888[rsp+rax], cl
	cmp	r8, rdx
	jne	.L65
	movzx	r9d, WORD PTR 48[rsp]
	mov	r11d, DWORD PTR 56[rsp]
	test	r9w, r9w
	je	.L66
	cmp	r9w, 1
	jne	.L303
	movzx	eax, WORD PTR [r10]
	test	ah, 4
	jne	.L304
.L72:
	movzx	eax, WORD PTR [r10]
	test	ah, 2
	jne	.L305
.L86:
	movzx	eax, WORD PTR [r10]
	test	ah, 1
	jne	.L306
.L71:
	movzx	eax, WORD PTR [r10]
	test	ah, 32
	je	.L160
.L308:
	mov	edx, DWORD PTR 72[r10]
	mov	eax, DWORD PTR 72[r10]
	mov	ebx, DWORD PTR 64[r10]
	mov	esi, DWORD PTR 64[r10]
	shr	eax, 16
	shr	esi, 16
	cmp	r11w, ax
	setnb	r8b
	cmp	dx, ax
	jnb	.L89
	cmp	r11w, dx
	mov	r14d, 1
	setb	al
	or	r8d, eax
.L88:
	movzx	eax, WORD PTR [r10]
	test	ah, 64
	je	.L90
.L309:
	mov	edx, DWORD PTR 76[r10]
	mov	eax, DWORD PTR 76[r10]
	mov	r12d, DWORD PTR 68[r10]
	mov	ecx, DWORD PTR 68[r10]
	shr	eax, 16
	shr	ecx, 16
	cmp	r11w, ax
	mov	r13d, ecx
	setnb	cl
	cmp	dx, ax
	jnb	.L91
	cmp	r11w, dx
	setb	al
	or	ecx, eax
	movzx	eax, WORD PTR [r10]
	test	ax, ax
	js	.L162
.L93:
	mov	r9, QWORD PTR 152[rsp]
	xor	eax, eax
	jmp	.L105
	.p2align 4,,10
	.p2align 3
.L307:
	cmp	ax, r13w
	setnb	dl
	cmp	ax, r12w
	setb	r11b
	mov	edi, edx
	or	edi, r11d
	and	edx, r11d
	cmp	r12w, r13w
	cmovb	edx, edi
	test	dl, dl
	je	.L101
	mov	edx, DWORD PTR 80[r10]
	shr	edx, 8
	and	edx, 63
.L104:
	mov	WORD PTR 6824[r9+rax*2], dx
	add	rax, 1
	cmp	rax, 426
	je	.L100
.L105:
	test	r8b, r8b
	jne	.L99
.L96:
	test	cl, cl
	jne	.L307
.L101:
	mov	edx, DWORD PTR 84[r10]
	and	edx, 63
	or	edx, 64
	jmp	.L104
.L303:
	movzx	edx, r9w
	lea	rcx, .LC0[rip]
	mov	DWORD PTR 48[rsp], r11d
	call	printf.constprop.0
	mov	r10, QWORD PTR .refptr.REG_BASE[rip]
	mov	r11d, DWORD PTR 48[rsp]
	movzx	eax, WORD PTR [r10]
	test	ah, 32
	jne	.L308
.L160:
	movzx	eax, WORD PTR [r10]
	xor	r8d, r8d
	xor	r14d, r14d
	test	ah, 64
	jne	.L309
.L90:
	movzx	eax, WORD PTR [r10]
	xor	ecx, ecx
	test	ax, ax
	jns	.L95
	jmp	.L92
	.p2align 4,,10
	.p2align 3
.L99:
	cmp	ax, si
	setnb	dl
	cmp	ax, bx
	setb	r11b
	mov	edi, edx
	or	edi, r11d
	and	edx, r11d
	cmp	bx, si
	cmovb	edx, edi
	test	dl, dl
	je	.L96
	mov	edx, DWORD PTR 80[r10]
	and	edx, 63
	mov	WORD PTR 6824[r9+rax*2], dx
	add	rax, 1
	cmp	rax, 426
	jne	.L99
.L100:
	movzx	eax, WORD PTR [r10]
	mov	r14d, 1
	test	ah, 16
	jne	.L106
.L111:
	lea	rax, 190[rsp]
	mov	ebx, 3
	movzx	r13d, WORD PTR 166[rsp]
	mov	r11, QWORD PTR 152[rsp]
	mov	QWORD PTR 72[rsp], rax
	mov	rdi, rbx
	lea	r12, 6156[rsp]
	lea	rsi, 7888[rsp]
	mov	rbx, r15
.L107:
	movzx	eax, BYTE PTR [rsi+rdi]
	sub	al, 1
	js	.L145
	mov	DWORD PTR 68[rsp], edi
	movzx	eax, al
	lea	rdx, [r11+rdi*4]
	mov	r15, r11
	mov	QWORD PTR 96[rsp], r12
	mov	QWORD PTR 104[rsp], rdi
	mov	QWORD PTR 112[rsp], rsi
	mov	QWORD PTR 120[rsp], rbx
	jmp	.L144
	.p2align 4,,10
	.p2align 3
.L311:
	sub	rax, 1
	test	al, al
	js	.L310
.L144:
	movsx	r8d, BYTE PTR 7680[rdx+rax]
	movzx	r9d, WORD PTR [r10]
	shr	r9w, 8
	mov	ecx, r8d
	and	r9d, 15
	bt	r9d, r8d
	jnc	.L311
	movsx	rdi, r8b
	mov	r12d, 1
	mov	DWORD PTR 48[rsp], r8d
	xor	ebx, ebx
	imul	rdi, rdi, 852
	sal	r12d, cl
	lea	ecx, 1[rax]
	mov	QWORD PTR 80[rsp], rdx
	movsx	ecx, cl
	mov	QWORD PTR 88[rsp], rax
	mov	DWORD PTR 56[rsp], ecx
	add	rdi, r15
	jmp	.L153
	.p2align 4,,10
	.p2align 3
.L314:
	test	r13w, r13w
	je	.L148
	movzx	eax, WORD PTR 92[r10]
	test	eax, r12d
	je	.L148
.L149:
	xor	eax, eax
	mov	WORD PTR 190[rsp], ax
	cmp	r13w, 2
	je	.L150
	cmp	r13w, 3
	je	.L151
	movzx	eax, WORD PTR 92[r10]
	mov	DWORD PTR 32[rsp], ebx
	mov	rcx, r15
	mov	r9d, DWORD PTR 56[rsp]
	mov	r8d, DWORD PTR 68[rsp]
	shr	ax, 12
	mov	rdx, QWORD PTR 72[rsp]
	and	eax, 1
	mov	DWORD PTR 40[rsp], eax
	call	alphaBlendSelectTargetB.constprop.0
	mov	r10, QWORD PTR .refptr.REG_BASE[rip]
	test	al, al
	jne	.L312
	.p2align 4,,10
	.p2align 3
.L148:
	mov	WORD PTR 0[rbp+rbx*2], si
.L146:
	add	rbx, 1
	cmp	rbx, 426
	je	.L313
.L153:
	movzx	esi, WORD PTR [rdi+rbx*2]
	test	si, si
	jns	.L146
	test	r14b, r14b
	je	.L314
	movzx	edx, WORD PTR 6824[r15+rbx*2]
	mov	eax, edx
	test	edx, r12d
	je	.L146
	test	r13w, r13w
	je	.L148
	movzx	edx, WORD PTR 92[r10]
	test	al, 32
	je	.L148
	mov	eax, DWORD PTR 48[rsp]
	bt	edx, eax
	jnc	.L148
	jmp	.L149
.L91:
	cmp	r11w, dx
	setb	al
	and	ecx, eax
	movzx	eax, WORD PTR [r10]
	test	ax, ax
	jns	.L93
.L162:
	mov	r14d, 1
.L92:
	movzx	eax, WORD PTR [r10]
	test	ah, 16
	jne	.L93
.L95:
	test	r14b, r14b
	jne	.L93
	movzx	eax, WORD PTR [r10]
	test	ah, 16
	je	.L111
.L106:
	movzx	eax, WORD PTR 92[r10]
	shr	ax, 6
	and	eax, 3
	mov	WORD PTR 150[rsp], ax
	movzx	eax, WORD PTR [r10]
	test	al, 64
	je	.L315
.L108:
	mov	rax, QWORD PTR .refptr.PLTT[rip]
	mov	rdi, QWORD PTR .refptr.OAM[rip]
	mov	BYTE PTR 165[rsp], r14b
	mov	QWORD PTR 7984[rsp], rbp
	add	rax, 512
	mov	QWORD PTR 168[rsp], r15
	lea	r12, 1524[rdi]
	mov	QWORD PTR 136[rsp], rax
	jmp	.L110
	.p2align 4,,10
	.p2align 3
.L318:
	lea	r9, 0[0+r11*4]
	and	r9d, 124
	lea	r9, [r9+r9*2]
	sal	r9, 2
	movzx	ebx, WORD PTR 10[r9+rdi]
	mov	WORD PTR 56[rsp], bx
	movzx	ebx, WORD PTR 22[r9+rdi]
	mov	WORD PTR 72[rsp], bx
	movzx	ebx, WORD PTR 34[r9+rdi]
	mov	WORD PTR 68[rsp], bx
	movzx	ebx, WORD PTR 46[r9+rdi]
	mov	WORD PTR 80[rsp], bx
	test	edx, edx
	je	.L112
	lea	eax, [r14+r14]
	mov	DWORD PTR 48[rsp], eax
	lea	eax, [r15+r15]
.L112:
	movzx	r9d, WORD PTR 88[rsp]
	cmp	r8d, r9d
	jg	.L113
	add	r8d, eax
	add	eax, r8d
	cmp	r9d, eax
	jl	.L316
.L113:
	lea	rax, -12[r12]
	cmp	rdi, r12
	je	.L317
	mov	r12, rax
.L110:
	movzx	ecx, BYTE PTR 4[r12]
	mov	edx, ecx
	mov	r13d, ecx
	and	edx, 3
	sar	edx
	and	r13d, 1
	jne	.L109
	test	dl, 1
	jne	.L113
.L109:
	movzx	r11d, BYTE PTR 5[r12]
	mov	r8d, ecx
	shr	r8b, 6
	mov	eax, r11d
	movzx	r8d, r8b
	shr	al, 5
	sal	r8d, 2
	and	eax, 3
	or	eax, r8d
	mov	r8, QWORD PTR .refptr.gOamShapesSizes[rip]
	cdqe
	movzx	esi, BYTE PTR [r8+rax*2]
	movzx	ebp, BYTE PTR 1[r8+rax*2]
	movsx	r8d, WORD PTR 2[r12]
	mov	r14d, esi
	mov	r15d, ebp
	shr	r14d
	shr	r15d
	mov	DWORD PTR 48[rsp], r14d
	mov	eax, r15d
	test	r13b, r13b
	jne	.L318
	mov	r9d, 256
	xor	ebx, ebx
	xor	edx, edx
	mov	WORD PTR 80[rsp], r9w
	mov	r9d, 256
	mov	WORD PTR 68[rsp], bx
	mov	WORD PTR 72[rsp], dx
	mov	WORD PTR 56[rsp], r9w
	jmp	.L112
	.p2align 4,,10
	.p2align 3
.L151:
	movzx	ecx, si
	call	alphaBrightnessDecrease
	mov	esi, eax
	jmp	.L148
	.p2align 4,,10
	.p2align 3
.L150:
	movzx	ecx, si
	call	alphaBrightnessIncrease
	mov	esi, eax
	jmp	.L148
.L313:
	mov	rax, QWORD PTR 88[rsp]
	mov	rdx, QWORD PTR 80[rsp]
	sub	rax, 1
	test	al, al
	jns	.L144
.L310:
	mov	r12, QWORD PTR 96[rsp]
	mov	rdi, QWORD PTR 104[rsp]
	mov	r11, r15
	mov	rsi, QWORD PTR 112[rsp]
	mov	rbx, QWORD PTR 120[rsp]
.L145:
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L142:
	movzx	edx, WORD PTR [r12+rax]
	test	dx, dx
	jns	.L155
	test	r14b, r14b
	je	.L156
	test	BYTE PTR [rbx+rax], 16
	je	.L155
.L156:
	mov	WORD PTR 0[rbp+rax], dx
.L155:
	add	rax, 2
	cmp	rax, 852
	jne	.L142
	sub	rdi, 1
	sub	r12, 852
	cmp	rdi, -1
	jne	.L107
	add	rsp, 7912
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
.L312:
	movzx	edx, WORD PTR 190[rsp]
	movzx	ecx, si
	call	alphaBlendColor
	mov	r10, QWORD PTR .refptr.REG_BASE[rip]
	mov	esi, eax
	jmp	.L148
.L66:
	mov	QWORD PTR 48[rsp], r15
	movzx	r9d, WORD PTR 88[rsp]
	mov	edi, 3
	mov	r15d, r11d
	lea	r14, 2748[rsp]
	jmp	.L70
.L69:
	sub	rdi, 1
	sub	r14, 852
	cmp	rdi, -1
	je	.L319
.L70:
	movzx	eax, WORD PTR [r10]
	shr	ax, 8
	and	eax, 15
	bt	eax, edi
	jnc	.L69
	mov	rax, QWORD PTR 152[rsp]
	movzx	r8d, WORD PTR 18[r10+rdi*4]
	mov	DWORD PTR 56[rsp], r9d
	movzx	edx, WORD PTR 16[r10+rdi*4]
	movzx	ecx, WORD PTR 6816[rax+rdi*2]
	mov	QWORD PTR 32[rsp], r14
	call	RenderBGScanline.isra.0
	mov	r10, QWORD PTR .refptr.REG_BASE[rip]
	mov	r9d, DWORD PTR 56[rsp]
	jmp	.L69
.L316:
	mov	eax, r9d
	sub	eax, r8d
	test	cl, 16
	je	.L115
	movzx	ebx, WORD PTR 88[r10]
	mov	eax, r9d
	cdq
	shr	bx, 12
	add	ebx, 1
	movzx	ebx, bx
	idiv	ebx
	sub	r9d, edx
	mov	eax, r9d
	sub	eax, r8d
.L115:
	mov	edx, ecx
	mov	ebx, DWORD PTR 48[rsp]
	shr	dl, 5
	and	edx, 1
	neg	ebx
	mov	BYTE PTR 120[rsp], dl
	test	r13b, r13b
	jne	.L166
	and	r11d, 31
	mov	edx, r11d
	shr	dl, 3
	and	edx, 1
	mov	DWORD PTR 104[rsp], edx
	xor	edx, edx
	cmp	r11b, 15
	seta	dl
	mov	DWORD PTR 96[rsp], edx
.L116:
	movzx	edx, BYTE PTR 9[r12]
	and	ecx, 12
	mov	BYTE PTR 149[rsp], cl
	shr	dl, 2
	and	edx, 3
	imul	rdx, rdx, 852
	lea	rcx, 3408[rdx]
	movsx	edx, WORD PTR [r12]
	mov	QWORD PTR 128[rsp], rcx
	mov	ecx, DWORD PTR 48[rsp]
	lea	r11d, [rdx+rcx]
	movsx	edx, WORD PTR 72[rsp]
	imul	edx, eax
	mov	DWORD PTR 72[rsp], edx
	movsx	edx, WORD PTR 80[rsp]
	imul	edx, eax
	mov	eax, esi
	shr	eax, 3
	mov	DWORD PTR 112[rsp], eax
	mov	eax, r11d
	mov	r11d, r15d
	mov	r15d, r14d
	mov	DWORD PTR 80[rsp], edx
	mov	r14d, eax
	jmp	.L140
	.p2align 4,,10
	.p2align 3
.L321:
	movzx	eax, WORD PTR 88[r10]
	xor	edx, edx
	shr	ax, 8
	and	eax, 15
	lea	r9d, 1[rax]
	mov	eax, r13d
	div	r9d
	mov	eax, DWORD PTR 72[rsp]
	mov	r9d, edx
	mov	edx, ebx
	sub	edx, r9d
	imul	r8d, edx
	imul	edx, ecx
	mov	ecx, DWORD PTR 80[rsp]
	add	eax, r8d
	add	edx, ecx
	sar	eax, 8
	sar	edx, 8
	add	eax, r15d
	add	edx, r11d
.L119:
	cmp	eax, esi
	jnb	.L117
	cmp	edx, ebp
	jnb	.L117
	mov	r8d, DWORD PTR 104[rsp]
	lea	ecx, -1[rsi]
	lea	r9d, -1[rbp]
	sub	ecx, eax
	test	r8d, r8d
	cmovne	eax, ecx
	mov	ecx, DWORD PTR 96[rsp]
	sub	r9d, edx
	test	ecx, ecx
	mov	ecx, eax
	cmove	r9d, edx
	sar	ecx, 31
	shr	ecx, 29
	mov	r8d, r9d
	lea	edx, [rax+rcx]
	sar	r8d, 31
	and	edx, 7
	shr	r8d, 29
	sub	edx, ecx
	lea	ecx, [r9+r8]
	and	ecx, 7
	sub	ecx, r8d
	test	eax, eax
	lea	r8d, 7[rax]
	cmovns	r8d, eax
	lea	eax, 7[r9]
	sar	r8d, 3
	test	r9d, r9d
	cmovns	eax, r9d
	movzx	r9d, WORD PTR [r10]
	sar	eax, 3
	and	r9d, 64
	mov	r9d, 16
	cmovne	r9d, DWORD PTR 112[rsp]
	imul	eax, r9d
	add	eax, r8d
	movzx	r8d, WORD PTR 8[r12]
	and	r8d, 1023
	cmp	BYTE PTR 120[rsp], 0
	jne	.L123
	add	eax, r8d
	lea	ecx, [rcx+rax*8]
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	lea	eax, [rax+rcx*4]
	mov	rcx, QWORD PTR .refptr.VRAM[rip]
	cdqe
	movzx	ecx, BYTE PTR 65536[rax+rcx]
	mov	eax, ecx
	and	eax, 15
	and	edx, 1
	je	.L125
	mov	eax, ecx
	shr	ax, 4
.L125:
	movzx	edx, BYTE PTR 9[r12]
	mov	rcx, QWORD PTR .refptr.PLTT[rip]
	and	edx, 240
	lea	rdx, 512[rcx+rdx*2]
.L126:
	test	ax, ax
	je	.L117
	movzx	eax, ax
	cmp	BYTE PTR 149[rsp], 8
	movzx	eax, WORD PTR [rdx+rax*2]
	mov	WORD PTR 146[rsp], ax
	je	.L320
	cmp	BYTE PTR 165[rsp], 0
	je	.L128
	mov	eax, r13d
	test	BYTE PTR 7016[rsp+rax*2], 32
	jne	.L128
	cmp	WORD PTR 150[rsp], 1
	jne	.L133
	movzx	eax, WORD PTR 92[r10]
.L133:
	cmp	BYTE PTR 149[rsp], 4
	je	.L131
	movzx	eax, WORD PTR 92[r10]
.L134:
	movzx	edx, WORD PTR 146[rsp]
	mov	rcx, QWORD PTR 128[rsp]
	movsx	r13, r13d
	lea	rax, 7904[rsp+r13*2]
	or	dx, -32768
	mov	WORD PTR -7712[rcx+rax], dx
	.p2align 4,,10
	.p2align 3
.L117:
	add	ebx, 1
	cmp	DWORD PTR 48[rsp], ebx
	jl	.L113
.L140:
	lea	r13d, [r14+rbx]
	cmp	r13d, 425
	ja	.L117
	movsx	r8d, WORD PTR 56[rsp]
	movsx	ecx, WORD PTR 68[rsp]
	test	BYTE PTR 4[r12], 16
	jne	.L321
	imul	r8d, ebx
	mov	eax, DWORD PTR 72[rsp]
	mov	edx, DWORD PTR 80[rsp]
	imul	ecx, ebx
	add	eax, r8d
	add	edx, ecx
	sar	eax, 8
	sar	edx, 8
	add	eax, r15d
	add	edx, r11d
	jmp	.L119
	.p2align 4,,10
	.p2align 3
.L123:
	lea	eax, [r8+rax*2]
	lea	eax, [rcx+rax*4]
	mov	rcx, QWORD PTR .refptr.VRAM[rip]
	lea	eax, [rdx+rax*8]
	mov	rdx, QWORD PTR 136[rsp]
	cdqe
	movzx	eax, BYTE PTR 65536[rax+rcx]
	jmp	.L126
.L128:
	cmp	WORD PTR 150[rsp], 1
	je	.L322
	cmp	BYTE PTR 149[rsp], 4
	je	.L131
	movzx	eax, WORD PTR 92[r10]
	test	al, 16
	je	.L134
	movzx	eax, WORD PTR 150[rsp]
	cmp	ax, 2
	je	.L138
	cmp	ax, 3
	jne	.L134
	movzx	ecx, WORD PTR 146[rsp]
	call	alphaBrightnessDecrease
	mov	WORD PTR 146[rsp], ax
	jmp	.L134
.L322:
	movzx	eax, WORD PTR 92[r10]
	test	al, 16
	je	.L133
.L131:
	movzx	r8d, BYTE PTR 9[r12]
	mov	DWORD PTR 40[rsp], 0
	xor	edx, edx
	xor	r9d, r9d
	mov	DWORD PTR 32[rsp], r13d
	mov	rcx, QWORD PTR 152[rsp]
	shr	r8b, 2
	mov	WORD PTR 190[rsp], dx
	lea	rdx, 190[rsp]
	and	r8d, 3
	mov	DWORD PTR 160[rsp], r11d
	call	alphaBlendSelectTargetB.constprop.0
	mov	r10, QWORD PTR .refptr.REG_BASE[rip]
	mov	r11d, DWORD PTR 160[rsp]
	test	al, al
	je	.L134
	movzx	ecx, WORD PTR 146[rsp]
	movzx	edx, WORD PTR 190[rsp]
	call	alphaBlendColor
	mov	r10, QWORD PTR .refptr.REG_BASE[rip]
	mov	r11d, DWORD PTR 160[rsp]
	mov	WORD PTR 146[rsp], ax
	jmp	.L134
.L166:
	mov	DWORD PTR 104[rsp], 0
	mov	DWORD PTR 96[rsp], 0
	jmp	.L116
.L320:
	lea	rdx, 3408[r13]
	test	BYTE PTR 7016[rsp+r13*2], 64
	je	.L117
	mov	eax, DWORD PTR 84[r10]
	shr	eax, 8
	and	eax, 63
	mov	WORD PTR 200[rsp+rdx*2], ax
	jmp	.L117
.L317:
	mov	rbp, QWORD PTR 7984[rsp]
	mov	r15, QWORD PTR 168[rsp]
	movzx	r14d, BYTE PTR 165[rsp]
	jmp	.L111
.L319:
	mov	r11d, r15d
	mov	r15, QWORD PTR 48[rsp]
	jmp	.L71
.L89:
	cmp	r11w, dx
	mov	r14d, 1
	setb	al
	and	r8d, eax
	jmp	.L88
.L138:
	movzx	ecx, WORD PTR 146[rsp]
	call	alphaBrightnessIncrease
	mov	WORD PTR 146[rsp], ax
	jmp	.L134
.L304:
	movzx	r9d, WORD PTR 7012[rsp]
	mov	eax, DWORD PTR 44[r10]
	movzx	ecx, r11w
	mov	eax, DWORD PTR 40[r10]
	mov	WORD PTR 190[rsp], r9w
	movzx	edx, WORD PTR 190[rsp]
	movzx	eax, WORD PTR 190[rsp]
	movzx	r8d, WORD PTR 190[rsp]
	mov	r8, QWORD PTR .refptr.VRAM[rip]
	shr	dx, 2
	shr	ax, 8
	sal	rdx, 14
	sal	rax, 11
	and	edx, 49152
	and	eax, 63488
	lea	rdi, [rdx+r8]
	add	rax, r8
	mov	QWORD PTR 48[rsp], rdi
	mov	QWORD PTR 56[rsp], rax
	mov	eax, r9d
	and	ax, 64
	mov	WORD PTR 96[rsp], ax
	je	.L73
	movzx	eax, WORD PTR 88[r10]
	shr	ax, 4
	and	eax, 15
	lea	r8d, 1[rax]
	mov	eax, ecx
	cdq
	idiv	r8d
	sub	ecx, edx
.L73:
	movzx	eax, WORD PTR 32[r10]
	movsx	r8d, WORD PTR 34[r10]
	mov	WORD PTR 80[rsp], ax
	movzx	eax, WORD PTR 36[r10]
	mov	WORD PTR 104[rsp], ax
	movzx	eax, WORD PTR 38[r10]
	mov	WORD PTR 112[rsp], ax
	movzx	eax, WORD PTR 190[rsp]
	shr	ax, 14
	sub	eax, 1
	cmp	al, 2
	ja	.L159
	movzx	eax, al
	lea	rdx, CSWTCH.183[rip]
	mov	eax, DWORD PTR [rdx+rax*4]
	mov	DWORD PTR 72[rsp], eax
	lea	r14d, -1[rax]
.L74:
	mov	eax, r9d
	mov	edx, DWORD PTR 40[r10]
	mov	edi, DWORD PTR 44[r10]
	shr	ax, 14
	movsx	r9d, WORD PTR 112[rsp]
	add	eax, 4
	movzx	eax, ax
	mov	DWORD PTR 68[rsp], eax
	mov	eax, edx
	or	eax, -268435456
	test	edx, 134217728
	cmovne	edx, eax
	mov	eax, edi
	or	eax, -268435456
	test	edi, 134217728
	cmovne	edi, eax
	imul	r8d, ecx
	movzx	eax, WORD PTR 190[rsp]
	imul	r9d, ecx
	add	r8d, edx
	movsx	edx, WORD PTR 80[rsp]
	add	r9d, edi
	movsx	edi, WORD PTR 104[rsp]
	mov	ecx, edx
	mov	DWORD PTR 80[rsp], edi
	test	ah, 32
	je	.L77
	mov	WORD PTR 72[rsp], bx
	mov	rbx, QWORD PTR 48[rsp]
	lea	rax, 2748[rsp]
	lea	rdi, 1896[rsp]
	mov	WORD PTR 104[rsp], si
	mov	rsi, QWORD PTR 56[rsp]
	mov	DWORD PTR 48[rsp], r11d
	mov	ecx, DWORD PTR 68[rsp]
	mov	QWORD PTR 56[rsp], r15
	mov	WORD PTR 120[rsp], r12w
	mov	r12d, DWORD PTR 80[rsp]
	mov	WORD PTR 112[rsp], r13w
	mov	r13, rax
	mov	QWORD PTR 7984[rsp], rbp
	mov	ebp, edx
	.p2align 4,,10
	.p2align 3
.L79:
	mov	eax, r9d
	mov	r11d, r8d
	sar	eax, 8
	sar	r11d, 8
	and	eax, r14d
	and	r11d, r14d
	mov	edx, eax
	mov	r15d, r11d
	sal	eax, 3
	and	r11d, 7
	sar	edx, 3
	sar	r15d, 3
	and	eax, 56
	sal	edx, cl
	add	edx, r15d
	movsx	rdx, edx
	movzx	edx, BYTE PTR [rsi+rdx]
	sal	edx, 6
	add	eax, edx
	add	eax, r11d
	cdqe
	movzx	eax, BYTE PTR [rbx+rax]
	test	al, al
	je	.L78
	mov	rdx, QWORD PTR .refptr.PLTT[rip]
	movzx	eax, WORD PTR [rdx+rax*2]
	or	ax, -32768
	mov	WORD PTR [rdi], ax
.L78:
	add	rdi, 2
	add	r8d, ebp
	add	r9d, r12d
	cmp	r13, rdi
	jne	.L79
	movzx	ebx, WORD PTR 72[rsp]
	movzx	esi, WORD PTR 104[rsp]
	movzx	r13d, WORD PTR 112[rsp]
	movzx	r12d, WORD PTR 120[rsp]
	mov	rbp, QWORD PTR 7984[rsp]
	mov	r11d, DWORD PTR 48[rsp]
	mov	r15, QWORD PTR 56[rsp]
.L84:
	cmp	WORD PTR 96[rsp], 0
	je	.L72
	movzx	eax, WORD PTR 88[r10]
	test	al, 15
	je	.L72
	mov	r8, QWORD PTR 152[rsp]
	xor	ecx, ecx
.L85:
	movzx	eax, WORD PTR 88[r10]
	and	eax, 15
	lea	r9d, 1[rax]
	mov	eax, ecx
	cdq
	idiv	r9d
	mov	eax, ecx
	sub	eax, edx
	cdqe
	movzx	eax, WORD PTR 1896[rsp+rax*2]
	mov	WORD PTR 1704[r8+rcx*2], ax
	add	rcx, 1
	cmp	rcx, 426
	jne	.L85
	jmp	.L72
.L315:
	lea	rcx, .LC1[rip]
	call	puts
	mov	r10, QWORD PTR .refptr.REG_BASE[rip]
	jmp	.L108
.L306:
	movzx	r8d, WORD PTR 18[r10]
	mov	rax, QWORD PTR 152[rsp]
	movzx	r9d, r11w
	mov	DWORD PTR 48[rsp], r11d
	movzx	edx, WORD PTR 16[r10]
	movzx	ecx, WORD PTR 7008[rsp]
	mov	QWORD PTR 32[rsp], rax
	call	RenderBGScanline.isra.0
	mov	r11d, DWORD PTR 48[rsp]
	mov	r10, QWORD PTR .refptr.REG_BASE[rip]
	jmp	.L71
.L305:
	movzx	r8d, WORD PTR 22[r10]
	lea	rax, 1044[rsp]
	movzx	r9d, r11w
	movzx	edx, WORD PTR 20[r10]
	mov	QWORD PTR 32[rsp], rax
	movzx	ecx, WORD PTR 7010[rsp]
	mov	DWORD PTR 48[rsp], r11d
	call	RenderBGScanline.isra.0
	mov	r10, QWORD PTR .refptr.REG_BASE[rip]
	mov	r11d, DWORD PTR 48[rsp]
	jmp	.L86
.L77:
	mov	WORD PTR 104[rsp], bx
	lea	rdx, 1896[rsp]
	mov	edi, ecx
	lea	r14, 2748[rsp]
	mov	WORD PTR 112[rsp], si
	mov	WORD PTR 120[rsp], r13w
	mov	r13d, DWORD PTR 80[rsp]
	mov	DWORD PTR 80[rsp], r11d
	mov	r11d, DWORD PTR 72[rsp]
	.p2align 4,,10
	.p2align 3
.L83:
	mov	ebx, r8d
	mov	eax, r9d
	mov	ecx, r8d
	sar	ebx, 8
	sar	eax, 8
	or	ecx, r9d
	js	.L82
	cmp	ebx, eax
	mov	ecx, eax
	cmovge	ecx, ebx
	cmp	r11d, ecx
	jle	.L82
	movzx	ecx, BYTE PTR 68[rsp]
	mov	esi, r9d
	sal	eax, 3
	and	ebx, 7
	sar	esi, 11
	and	eax, 56
	sal	esi, cl
	mov	ecx, r8d
	sar	ecx, 11
	add	esi, ecx
	movsx	rcx, esi
	mov	rsi, QWORD PTR 56[rsp]
	movzx	ecx, BYTE PTR [rsi+rcx]
	sal	ecx, 6
	add	eax, ecx
	mov	rcx, QWORD PTR 48[rsp]
	add	eax, ebx
	cdqe
	movzx	eax, BYTE PTR [rcx+rax]
	test	al, al
	je	.L82
	mov	rcx, QWORD PTR .refptr.PLTT[rip]
	movzx	eax, WORD PTR [rcx+rax*2]
	or	ax, -32768
	mov	WORD PTR [rdx], ax
	.p2align 4,,10
	.p2align 3
.L82:
	add	rdx, 2
	add	r8d, edi
	add	r9d, r13d
	cmp	r14, rdx
	jne	.L83
	movzx	ebx, WORD PTR 104[rsp]
	movzx	esi, WORD PTR 112[rsp]
	movzx	r13d, WORD PTR 120[rsp]
	mov	r11d, DWORD PTR 80[rsp]
	jmp	.L84
.L159:
	mov	DWORD PTR 72[rsp], 128
	mov	r14d, 127
	jmp	.L74
	.seh_endproc
	.p2align 4
	.globl	DoSoftReset
	.def	DoSoftReset;	.scl	2;	.type	32;	.endef
	.seh_proc	DoSoftReset
DoSoftReset:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	Platform_malloc
	.def	Platform_malloc;	.scl	2;	.type	32;	.endef
	.seh_proc	Platform_malloc
Platform_malloc:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	[QWORD PTR __imp_GetProcessHeap[rip]]
	mov	r8, rbx
	mov	edx, 12
	mov	rcx, rax
	add	rsp, 32
	pop	rbx
	rex.W jmp	[QWORD PTR __imp_HeapAlloc[rip]]
	.seh_endproc
	.p2align 4
	.globl	Platform_free
	.def	Platform_free;	.scl	2;	.type	32;	.endef
	.seh_proc	Platform_free
Platform_free:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	[QWORD PTR __imp_GetProcessHeap[rip]]
	mov	r8, rbx
	xor	edx, edx
	mov	rcx, rax
	add	rsp, 32
	pop	rbx
	rex.W jmp	[QWORD PTR __imp_HeapFree[rip]]
	.seh_endproc
	.p2align 4
	.globl	Platform_StoreSaveFile
	.def	Platform_StoreSaveFile;	.scl	2;	.type	32;	.endef
	.seh_proc	Platform_StoreSaveFile
Platform_StoreSaveFile:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rcx, QWORD PTR sSaveFile[rip]
	test	rcx, rcx
	je	.L326
	xor	r8d, r8d
	xor	edx, edx
	call	fseek
	mov	r8d, 2097152
	mov	edx, 1
	mov	r9, QWORD PTR sSaveFile[rip]
	mov	rcx, QWORD PTR .refptr.FLASH_BASE[rip]
	add	rsp, 40
	jmp	fwrite
	.p2align 4,,10
	.p2align 3
.L326:
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	Platform_QueueAudio
	.def	Platform_QueueAudio;	.scl	2;	.type	32;	.endef
	.seh_proc	Platform_QueueAudio
Platform_QueueAudio:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	cmp	BYTE PTR headless[rip], 0
	mov	rsi, rcx
	mov	ebx, edx
	je	.L331
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L331:
	mov	ecx, 1
	call	SDL_GetQueuedAudioSize
	mov	edx, eax
	lea	eax, [rbx+rbx*4]
	add	eax, eax
	cmp	eax, edx
	jb	.L332
.L330:
	mov	r8d, ebx
	mov	rdx, rsi
	mov	ecx, 1
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	SDL_QueueAudio
	.p2align 4,,10
	.p2align 3
.L332:
	mov	ecx, 1
	call	SDL_ClearQueuedAudio
	jmp	.L330
	.seh_endproc
	.p2align 4
	.globl	ProcessSDLEvents
	.def	ProcessSDLEvents;	.scl	2;	.type	32;	.endef
	.seh_proc	ProcessSDLEvents
ProcessSDLEvents:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 96
	.seh_stackalloc	96
	.seh_endprologue
	lea	rbx, 32[rsp]
	.p2align 4,,10
	.p2align 3
.L334:
	mov	rcx, rbx
	call	SDL_PollEvent
	test	eax, eax
	je	.L388
.L379:
	mov	eax, DWORD PTR 32[rsp]
	mov	edx, DWORD PTR 52[rsp]
	movzx	ecx, WORD PTR 56[rsp]
	cmp	eax, 768
	je	.L335
	ja	.L336
	cmp	eax, 256
	je	.L337
	cmp	eax, 512
	jne	.L334
	cmp	BYTE PTR 44[rsp], 6
	jne	.L334
	mov	eax, edx
	mov	r8d, 2290649225
	mov	ecx, DWORD PTR 48[rsp]
	imul	rax, r8
	shr	rax, 39
	cmp	ecx, 425
	ja	.L389
	cmp	edx, 239
	ja	.L380
	mov	DWORD PTR videoScale[rip], 1
.L378:
	mov	rcx, rbx
	mov	BYTE PTR videoScaleChanged[rip], 1
	call	SDL_PollEvent
	test	eax, eax
	jne	.L379
.L388:
	add	rsp, 96
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L336:
	cmp	eax, 769
	jne	.L334
	cmp	edx, 120
	jg	.L341
	cmp	edx, 91
	jle	.L390
	sub	edx, 92
	cmp	edx, 28
	ja	.L334
	lea	rcx, .L346[rip]
	movsx	rax, DWORD PTR [rcx+rdx*4]
	add	rax, rcx
	jmp	rax
	.section .rdata,"dr"
	.align 4
.L346:
	.long	.L350-.L346
	.long	.L334-.L346
	.long	.L334-.L346
	.long	.L334-.L346
	.long	.L334-.L346
	.long	.L334-.L346
	.long	.L334-.L346
	.long	.L349-.L346
	.long	.L348-.L346
	.long	.L334-.L346
	.long	.L334-.L346
	.long	.L334-.L346
	.long	.L334-.L346
	.long	.L334-.L346
	.long	.L334-.L346
	.long	.L334-.L346
	.long	.L334-.L346
	.long	.L334-.L346
	.long	.L334-.L346
	.long	.L334-.L346
	.long	.L334-.L346
	.long	.L334-.L346
	.long	.L334-.L346
	.long	.L347-.L346
	.long	.L334-.L346
	.long	.L334-.L346
	.long	.L334-.L346
	.long	.L334-.L346
	.long	.L345-.L346
	.text
	.p2align 4,,10
	.p2align 3
.L337:
	mov	BYTE PTR isRunning[rip], 0
	jmp	.L334
	.p2align 4,,10
	.p2align 3
.L335:
	cmp	edx, 13
	je	.L391
	cmp	edx, 120
	jg	.L360
	cmp	edx, 91
	jle	.L392
	sub	edx, 92
	cmp	edx, 28
	ja	.L334
	lea	r8, .L370[rip]
	movsx	rax, DWORD PTR [r8+rdx*4]
	add	rax, r8
	jmp	rax
	.section .rdata,"dr"
	.align 4
.L370:
	.long	.L375-.L370
	.long	.L334-.L370
	.long	.L334-.L370
	.long	.L334-.L370
	.long	.L334-.L370
	.long	.L334-.L370
	.long	.L334-.L370
	.long	.L374-.L370
	.long	.L373-.L370
	.long	.L334-.L370
	.long	.L334-.L370
	.long	.L334-.L370
	.long	.L334-.L370
	.long	.L334-.L370
	.long	.L334-.L370
	.long	.L334-.L370
	.long	.L334-.L370
	.long	.L334-.L370
	.long	.L334-.L370
	.long	.L334-.L370
	.long	.L372-.L370
	.long	.L334-.L370
	.long	.L334-.L370
	.long	.L371-.L370
	.long	.L334-.L370
	.long	.L334-.L370
	.long	.L334-.L370
	.long	.L334-.L370
	.long	.L369-.L370
	.text
	.p2align 4,,10
	.p2align 3
.L341:
	cmp	edx, 1073741905
	je	.L351
	jg	.L352
	cmp	edx, 1073741903
	je	.L353
	cmp	edx, 1073741904
	jne	.L334
	and	WORD PTR keys[rip], -33
	jmp	.L334
	.p2align 4,,10
	.p2align 3
.L391:
	and	ch, 3
	je	.L357
	mov	eax, DWORD PTR fullScreenFlags[rip]
	mov	rcx, QWORD PTR sdlWindow[rip]
	lea	rdx, sdlDispMode[rip]
	xor	eax, 4097
	mov	DWORD PTR fullScreenFlags[rip], eax
	test	eax, 4097
	jne	.L393
	call	SDL_SetWindowDisplayMode
	mov	eax, DWORD PTR preFullscreenVideoScale[rip]
	mov	DWORD PTR videoScale[rip], eax
.L359:
	mov	edx, DWORD PTR fullScreenFlags[rip]
	mov	rcx, QWORD PTR sdlWindow[rip]
	call	SDL_SetWindowFullscreen
	mov	r8d, DWORD PTR videoScale[rip]
	mov	rcx, QWORD PTR sdlWindow[rip]
	imul	edx, r8d, 426
	imul	r8d, r8d, 240
	call	SDL_SetWindowSize
	mov	BYTE PTR videoScaleChanged[rip], 0
	jmp	.L334
	.p2align 4,,10
	.p2align 3
.L389:
	mov	edx, 2581013211
	imul	rcx, rdx
	shr	rcx, 40
	mov	DWORD PTR videoScale[rip], ecx
	cmp	ecx, eax
	jnb	.L378
.L380:
	mov	DWORD PTR videoScale[rip], eax
	jmp	.L378
	.p2align 4,,10
	.p2align 3
.L360:
	sub	edx, 1073741891
	cmp	edx, 15
	ja	.L334
	lea	rcx, .L364[rip]
	movsx	rax, DWORD PTR [rcx+rdx*4]
	add	rax, rcx
	jmp	rax
	.section .rdata,"dr"
	.align 4
.L364:
	.long	.L368-.L364
	.long	.L334-.L364
	.long	.L334-.L364
	.long	.L334-.L364
	.long	.L334-.L364
	.long	.L334-.L364
	.long	.L334-.L364
	.long	.L334-.L364
	.long	.L334-.L364
	.long	.L334-.L364
	.long	.L334-.L364
	.long	.L334-.L364
	.long	.L367-.L364
	.long	.L366-.L364
	.long	.L365-.L364
	.long	.L363-.L364
	.text
	.p2align 4,,10
	.p2align 3
.L390:
	cmp	edx, 13
	je	.L343
	cmp	edx, 32
	jne	.L334
	cmp	BYTE PTR speedUp[rip], 0
	je	.L334
	mov	rax, QWORD PTR .LC2[rip]
	mov	ecx, 1
	mov	BYTE PTR speedUp[rip], 0
	mov	QWORD PTR timeScale[rip], rax
	call	SDL_ClearQueuedAudio
	xor	ecx, ecx
	call	SDL_PauseAudio
	jmp	.L334
	.p2align 4,,10
	.p2align 3
.L357:
	or	WORD PTR keys[rip], 8
	jmp	.L334
	.p2align 4,,10
	.p2align 3
.L393:
	call	SDL_GetWindowDisplayMode
	mov	eax, DWORD PTR videoScale[rip]
	mov	DWORD PTR preFullscreenVideoScale[rip], eax
	jmp	.L359
	.p2align 4,,10
	.p2align 3
.L353:
	and	WORD PTR keys[rip], -17
	jmp	.L334
	.p2align 4,,10
	.p2align 3
.L351:
	and	WORD PTR keys[rip], -129
	jmp	.L334
	.p2align 4,,10
	.p2align 3
.L392:
	cmp	edx, 32
	jne	.L334
	cmp	BYTE PTR speedUp[rip], 0
	jne	.L334
	mov	rax, QWORD PTR .LC3[rip]
	mov	ecx, 1
	mov	BYTE PTR speedUp[rip], 1
	mov	QWORD PTR timeScale[rip], rax
	call	SDL_PauseAudio
	jmp	.L334
.L367:
	or	WORD PTR keys[rip], 16
	jmp	.L334
.L368:
	mov	BYTE PTR paused[rip], 1
	mov	BYTE PTR stepOneFrame[rip], 1
	jmp	.L334
.L363:
	or	WORD PTR keys[rip], 64
	jmp	.L334
.L365:
	or	WORD PTR keys[rip], 128
	jmp	.L334
.L366:
	or	WORD PTR keys[rip], 32
	jmp	.L334
.L349:
	and	WORD PTR keys[rip], -2
	jmp	.L334
.L350:
	and	WORD PTR keys[rip], -5
	jmp	.L334
.L347:
	and	WORD PTR keys[rip], -513
	jmp	.L334
.L348:
	and	WORD PTR keys[rip], -257
	jmp	.L334
.L345:
	and	WORD PTR keys[rip], -3
	jmp	.L334
.L375:
	or	WORD PTR keys[rip], 4
	jmp	.L334
.L373:
	or	WORD PTR keys[rip], 256
	jmp	.L334
.L374:
	or	WORD PTR keys[rip], 1
	jmp	.L334
.L369:
	or	WORD PTR keys[rip], 2
	jmp	.L334
.L371:
	or	WORD PTR keys[rip], 512
	jmp	.L334
.L372:
	and	ecx, 192
	je	.L334
	xor	BYTE PTR paused[rip], 1
	jmp	.L334
	.p2align 4,,10
	.p2align 3
.L352:
	cmp	edx, 1073741906
	jne	.L334
	and	WORD PTR keys[rip], -65
	jmp	.L334
	.p2align 4,,10
	.p2align 3
.L343:
	and	WORD PTR keys[rip], -9
	jmp	.L334
	.seh_endproc
	.p2align 4
	.globl	Platform_GetKeyInput
	.def	Platform_GetKeyInput;	.scl	2;	.type	32;	.endef
	.seh_proc	Platform_GetKeyInput
Platform_GetKeyInput:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	call	GetXInputKeys
	mov	ebx, eax
	shr	eax, 16
	mov	BYTE PTR speedUp[rip], al
	and	BYTE PTR speedUp[rip], 1
	test	al, 1
	je	.L395
	mov	rax, QWORD PTR .LC3[rip]
	mov	ecx, 1
	mov	QWORD PTR timeScale[rip], rax
	call	SDL_PauseAudio
.L396:
	mov	eax, ebx
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L395:
	mov	rax, QWORD PTR .LC2[rip]
	xor	ecx, ecx
	mov	QWORD PTR timeScale[rip], rax
	call	SDL_PauseAudio
	movzx	eax, WORD PTR keys[rip]
	test	ebx, ebx
	jne	.L396
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC4:
	.ascii "Attempted to CpuSet to NULL\12\0"
	.text
	.p2align 4
	.globl	CpuSet
	.def	CpuSet;	.scl	2;	.type	32;	.endef
	.seh_proc	CpuSet
CpuSet:
	.seh_endprologue
	mov	rax, rdx
	test	rdx, rdx
	je	.L438
	mov	r9d, r8d
	mov	edx, r8d
	and	r9d, 2097151
	and	edx, 16777216
	and	r8d, 67108864
	je	.L403
	test	edx, edx
	jne	.L404
	mov	r10d, r9d
	xor	edx, edx
	test	r9d, r9d
	je	.L401
	.p2align 4,,10
	.p2align 3
.L409:
	mov	r8d, DWORD PTR [rcx+rdx*4]
	mov	DWORD PTR [rax+rdx*4], r8d
	add	rdx, 1
	cmp	rdx, r10
	jne	.L409
.L401:
	ret
	.p2align 4,,10
	.p2align 3
.L403:
	test	edx, edx
	jne	.L410
	mov	r10d, r9d
	xor	edx, edx
	test	r9d, r9d
	je	.L401
	.p2align 4,,10
	.p2align 3
.L413:
	movzx	r8d, WORD PTR [rcx+rdx*2]
	mov	WORD PTR [rax+rdx*2], r8w
	add	rdx, 1
	cmp	rdx, r10
	jne	.L413
	ret
	.p2align 4,,10
	.p2align 3
.L410:
	movzx	edx, WORD PTR [rcx]
	test	r9d, r9d
	je	.L401
	lea	rcx, [rax+r9*2]
	and	r9d, 1
	je	.L412
	mov	WORD PTR [rax], dx
	add	rax, 2
	cmp	rcx, rax
	je	.L401
	.p2align 4,,10
	.p2align 3
.L412:
	mov	WORD PTR [rax], dx
	add	rax, 4
	mov	WORD PTR -2[rax], dx
	cmp	rcx, rax
	je	.L401
	mov	WORD PTR [rax], dx
	add	rax, 4
	mov	WORD PTR -2[rax], dx
	cmp	rcx, rax
	jne	.L412
	jmp	.L401
	.p2align 4,,10
	.p2align 3
.L404:
	mov	edx, DWORD PTR [rcx]
	test	r9d, r9d
	je	.L401
	lea	rcx, [rax+r9*4]
	and	r9d, 1
	je	.L408
	mov	DWORD PTR [rax], edx
	add	rax, 4
	cmp	rcx, rax
	je	.L401
	.p2align 4,,10
	.p2align 3
.L408:
	mov	DWORD PTR [rax], edx
	add	rax, 8
	mov	DWORD PTR -4[rax], edx
	cmp	rcx, rax
	je	.L401
	mov	DWORD PTR [rax], edx
	add	rax, 8
	mov	DWORD PTR -4[rax], edx
	cmp	rcx, rax
	jne	.L408
	jmp	.L401
	.p2align 4,,10
	.p2align 3
.L438:
	lea	rcx, .LC4[rip]
	jmp	puts
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC5:
	.ascii "Attempted to CpuFastSet to NULL\12\0"
	.text
	.p2align 4
	.globl	CpuFastSet
	.def	CpuFastSet;	.scl	2;	.type	32;	.endef
	.seh_proc	CpuFastSet
CpuFastSet:
	.seh_endprologue
	mov	r9, rcx
	test	rdx, rdx
	je	.L455
	mov	eax, r8d
	and	eax, 2097151
	and	r8d, 16777216
	je	.L456
	movd	xmm0, DWORD PTR [rcx]
	test	eax, eax
	je	.L439
	sub	eax, 1
	pshufd	xmm0, xmm0, 0
	shr	eax, 3
	add	eax, 1
	sal	rax, 5
	add	rax, rdx
	.p2align 4,,10
	.p2align 3
.L444:
	movups	XMMWORD PTR [rdx], xmm0
	add	rdx, 32
	movups	XMMWORD PTR -16[rdx], xmm0
	cmp	rax, rdx
	jne	.L444
.L439:
	ret
	.p2align 4,,10
	.p2align 3
.L456:
	test	eax, eax
	je	.L439
	lea	r8d, -1[rax]
	mov	eax, r8d
	shr	eax, 3
	lea	r8d, 1[rax]
	sal	r8, 5
	add	r8, rcx
	.p2align 4,,10
	.p2align 3
.L443:
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L445:
	mov	ecx, DWORD PTR [r9+rax]
	mov	DWORD PTR [rdx+rax], ecx
	add	rax, 4
	cmp	rax, 32
	jne	.L445
	add	r9, 32
	add	rdx, 32
	cmp	r8, r9
	jne	.L443
	ret
.L455:
	lea	rcx, .LC5[rip]
	jmp	puts
	.seh_endproc
	.section .rdata,"dr"
.LC6:
	.ascii "Destination buffer overflow.\12\0"
	.align 8
.LC7:
	.ascii "Fatal error while decompressing LZ file.\12\0"
	.text
	.p2align 4
	.globl	LZ77UnCompVram
	.def	LZ77UnCompVram;	.scl	2;	.type	32;	.endef
	.seh_proc	LZ77UnCompVram
LZ77UnCompVram:
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
	xor	ebx, ebx
	mov	edi, 4
	movzx	r14d, BYTE PTR 3[rcx]
	movzx	eax, BYTE PTR 2[rcx]
	sal	r14d, 16
	sal	eax, 8
	or	r14d, eax
	movzx	eax, BYTE PTR 1[rcx]
	mov	r15, rcx
	mov	rbp, rdx
	or	r14d, eax
.L466:
	movsx	rax, edi
	mov	r13d, 8
	add	edi, 1
	movzx	r12d, BYTE PTR [r15+rax]
	jmp	.L465
	.p2align 4,,10
	.p2align 3
.L458:
	cmp	r14d, ebx
	jle	.L460
	movsx	rax, edi
	add	edi, 1
	movzx	edx, BYTE PTR [r15+rax]
	movsx	rax, ebx
	add	ebx, 1
	mov	BYTE PTR 0[rbp+rax], dl
.L462:
	cmp	ebx, r14d
	je	.L457
.L469:
	add	r12d, r12d
	sub	r13d, 1
	je	.L466
.L465:
	test	r12b, r12b
	jns	.L458
	movsx	rdx, edi
	mov	r10d, ebx
	add	edi, 2
	movzx	eax, BYTE PTR [r15+rdx]
	movzx	edx, BYTE PTR 1[r15+rdx]
	mov	esi, eax
	sal	eax, 8
	shr	sil, 4
	and	eax, 3840
	add	esi, 3
	or	eax, edx
	movzx	esi, sil
	add	eax, 1
	lea	r11d, [rsi+rbx]
	sub	r10d, eax
	cmp	r11d, r14d
	jg	.L459
	test	r10d, r10d
	js	.L460
.L461:
	movsx	r10, r10d
	movsx	r8, esi
	movsx	rbx, ebx
	lea	rax, 0[rbp+r10]
	add	r8, rax
	.p2align 4,,10
	.p2align 3
.L463:
	movzx	ecx, BYTE PTR [rax]
	mov	rdx, rax
	add	rax, 1
	sub	rdx, r10
	mov	BYTE PTR [rdx+rbx], cl
	cmp	rax, r8
	jne	.L463
	mov	ebx, r11d
	cmp	ebx, r14d
	jne	.L469
.L457:
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
.L459:
	lea	rcx, .LC6[rip]
	mov	DWORD PTR 44[rsp], r10d
	mov	esi, r14d
	call	puts
	mov	r10d, DWORD PTR 44[rsp]
	sub	esi, ebx
	test	r10d, r10d
	js	.L460
	test	esi, esi
	jle	.L462
	lea	r11d, [rsi+rbx]
	jmp	.L461
	.p2align 4,,10
	.p2align 3
.L460:
	lea	rcx, .LC7[rip]
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	puts
	.seh_endproc
	.p2align 4
	.globl	LZ77UnCompWram
	.def	LZ77UnCompWram;	.scl	2;	.type	32;	.endef
	.seh_proc	LZ77UnCompWram
LZ77UnCompWram:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r8, rdx
	mov	edx, DWORD PTR [rcx]
	lea	rax, 4[rcx]
	shr	edx, 8
	je	.L470
.L471:
	movzx	r10d, BYTE PTR [rax]
	movzx	ecx, BYTE PTR 1[rax]
	test	r10b, r10b
	jne	.L472
	mov	BYTE PTR [r8], cl
	add	rax, 2
	cmp	edx, 1
	je	.L470
	lea	ecx, -1[rdx]
	add	r8, 1
	sub	edx, 8
	.p2align 4,,10
	.p2align 3
.L474:
	cmp	edx, ecx
	je	.L471
	mov	rdi, r8
	mov	rsi, rax
	movsb
	mov	rax, rsi
	mov	r8, rdi
	sub	ecx, 1
	jne	.L474
.L470:
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L472:
	add	rax, 1
	mov	r11d, 8
.L479:
	movzx	ecx, BYTE PTR [rax]
	lea	rdi, 1[r8]
	lea	r9d, -1[rdx]
	test	r10b, r10b
	js	.L501
	mov	BYTE PTR [r8], cl
	add	rax, 1
	cmp	edx, 1
	je	.L470
	mov	edx, r9d
	mov	r8, rdi
.L478:
	add	r10d, r10d
	sub	r11d, 1
	jne	.L479
	test	edx, edx
	jg	.L471
	jmp	.L470
	.p2align 4,,10
	.p2align 3
.L501:
	movzx	ecx, WORD PTR [rax]
	rol	cx, 8
	mov	ebx, ecx
	and	ecx, 4095
	not	rcx
	shr	bx, 12
	add	rcx, r8
	lea	rsi, 1[rcx]
	movzx	ecx, BYTE PTR [rcx]
	mov	BYTE PTR [r8], cl
	test	r9d, r9d
	je	.L470
	sub	edx, 3
	movzx	ebx, bx
	sub	edx, ebx
	jmp	.L476
	.p2align 4,,10
	.p2align 3
.L477:
	movsb
	sub	r9d, 1
	je	.L470
.L476:
	cmp	edx, r9d
	jne	.L477
	add	rax, 2
	mov	r8, rdi
	jmp	.L478
	.seh_endproc
	.p2align 4
	.globl	RLUnCompWram
	.def	RLUnCompWram;	.scl	2;	.type	32;	.endef
	.seh_proc	RLUnCompWram
RLUnCompWram:
	.seh_endprologue
	mov	eax, DWORD PTR [rcx]
	shr	eax, 8
	lea	r9, 4[rcx]
	je	.L502
	.p2align 4,,10
	.p2align 3
.L510:
	movzx	r8d, BYTE PTR [r9]
	movzx	r10d, BYTE PTR 1[r9]
	test	r8b, r8b
	js	.L517
	lea	rcx, 1[r9]
	lea	r9, 2[r9+r8]
	jmp	.L509
	.p2align 4,,10
	.p2align 3
.L518:
	test	eax, eax
	je	.L502
.L509:
	movzx	r8d, BYTE PTR [rcx]
	add	rcx, 1
	sub	eax, 1
	add	rdx, 1
	mov	BYTE PTR -1[rdx], r8b
	cmp	r9, rcx
	jne	.L518
	test	eax, eax
	jg	.L510
.L502:
	ret
	.p2align 4,,10
	.p2align 3
.L517:
	and	r8d, 127
	lea	ecx, 3[r8]
	movzx	ecx, cl
	add	rcx, rdx
	jmp	.L506
	.p2align 4,,10
	.p2align 3
.L519:
	test	eax, eax
	je	.L502
.L506:
	mov	BYTE PTR [rdx], r10b
	add	rdx, 1
	sub	eax, 1
	cmp	rcx, rdx
	jne	.L519
	add	r9, 2
	test	eax, eax
	jg	.L510
	jmp	.L502
	.seh_endproc
	.p2align 4
	.globl	RLUnCompVram
	.def	RLUnCompVram;	.scl	2;	.type	32;	.endef
	.seh_proc	RLUnCompVram
RLUnCompVram:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rax, rdx
	mov	edx, DWORD PTR [rcx]
	lea	r10, 4[rcx]
	shr	edx, 8
	mov	r11d, edx
	neg	r11d
	and	r11d, 3
	test	edx, edx
	je	.L521
	xor	r9d, r9d
	.p2align 4,,10
	.p2align 3
.L530:
	movzx	ecx, BYTE PTR [r10]
	movzx	r8d, BYTE PTR 1[r10]
	test	cl, cl
	js	.L548
	lea	r8, 1[r10]
	lea	r10, 2[r10+rcx]
	jmp	.L529
	.p2align 4,,10
	.p2align 3
.L549:
	sal	ecx, 8
	or	r9d, ecx
	mov	rcx, rax
	add	rax, 1
	xor	rcx, 1
	mov	WORD PTR [rcx], r9w
	cmp	r10, r8
	je	.L528
.L550:
	test	edx, edx
	je	.L521
.L529:
	movzx	ecx, BYTE PTR [r8]
	sub	edx, 1
	add	r8, 1
	test	al, 1
	jne	.L549
	mov	r9d, ecx
	add	rax, 1
	cmp	r10, r8
	jne	.L550
.L528:
	test	edx, edx
	jg	.L530
	.p2align 4,,10
	.p2align 3
.L521:
	test	al, 1
	je	.L531
	sub	r11d, 1
	add	rax, 1
.L531:
	test	r11d, r11d
	jle	.L520
	sub	r11d, 1
	shr	r11d
	lea	edx, 1[r11]
	add	rdx, rdx
	mov	r8d, edx
	test	edx, edx
	je	.L520
	xor	edx, edx
.L533:
	mov	ecx, edx
	add	edx, 1
	mov	BYTE PTR [rax+rcx], 0
	cmp	edx, r8d
	jb	.L533
.L520:
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L548:
	and	ecx, 127
	mov	esi, r8d
	add	ecx, 3
	sal	esi, 8
	movzx	ecx, cl
	add	rcx, rax
	jmp	.L525
	.p2align 4,,10
	.p2align 3
.L551:
	mov	rbx, rax
	or	r9d, esi
	add	rax, 1
	xor	rbx, 1
	mov	WORD PTR [rbx], r9w
	cmp	rax, rcx
	je	.L524
.L552:
	test	edx, edx
	je	.L521
.L525:
	sub	edx, 1
	test	al, 1
	jne	.L551
	add	rax, 1
	mov	r9d, r8d
	cmp	rax, rcx
	jne	.L552
.L524:
	add	r10, 2
	test	edx, edx
	jg	.L530
	jmp	.L521
	.seh_endproc
	.p2align 4
	.globl	BgAffineSet
	.def	BgAffineSet;	.scl	2;	.type	32;	.endef
	.seh_proc	BgAffineSet
BgAffineSet:
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
	test	r8d, r8d
	jle	.L553
	movsx	r8, r8d
	lea	r13, sineTable[rip]
	sal	r8, 4
	lea	r12, [rdx+r8]
	.p2align 4,,10
	.p2align 3
.L555:
	movzx	r8d, BYTE PTR 17[rcx]
	mov	esi, DWORD PTR [rcx]
	add	rdx, 16
	add	rcx, 20
	movsx	r10d, WORD PTR -8[rcx]
	movsx	ebp, WORD PTR -12[rcx]
	lea	eax, 64[r8]
	movsx	r9d, WORD PTR 0[r13+r8*2]
	movsx	r8d, WORD PTR -6[rcx]
	movzx	eax, al
	mov	r11d, r10d
	movsx	edi, WORD PTR -10[rcx]
	mov	ebx, DWORD PTR -16[rcx]
	movsx	eax, WORD PTR 0[r13+rax*2]
	imul	r10d, r9d
	imul	r9d, r8d
	imul	r8d, eax
	imul	r11d, eax
	sar	r10d, 14
	sar	r9d, 14
	mov	r14d, r10d
	movsx	r10d, r10w
	sar	r8d, 14
	imul	r10d, edi
	movzx	r15d, r9w
	neg	r14d
	movzx	eax, r8w
	sar	r11d, 14
	movzx	r14d, r14w
	movsx	r9d, r9w
	sal	rax, 16
	imul	r9d, ebp
	movsx	r8d, r8w
	or	rax, r15
	imul	r8d, edi
	sal	rax, 16
	or	rax, r14
	movzx	r14d, r11w
	movsx	r11d, r11w
	sub	ebx, r9d
	imul	r11d, ebp
	sal	rax, 16
	sub	ebx, r8d
	or	rax, r14
	mov	DWORD PTR -4[rdx], ebx
	mov	QWORD PTR -16[rdx], rax
	sub	esi, r11d
	add	esi, r10d
	mov	DWORD PTR -8[rdx], esi
	cmp	r12, rdx
	jne	.L555
.L553:
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.seh_endproc
	.p2align 4
	.globl	ObjAffineSet
	.def	ObjAffineSet;	.scl	2;	.type	32;	.endef
	.seh_proc	ObjAffineSet
ObjAffineSet:
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
	mov	r10, rdx
	test	r8d, r8d
	jle	.L557
	movsx	r8, r8d
	movsx	r9, r9d
	lea	r11, sineTable[rip]
	lea	rax, [r8+r8*2]
	lea	rsi, [r9+r9*2]
	lea	rdi, [rcx+rax*2]
	lea	rbx, 0[0+r9*4]
	.p2align 4,,10
	.p2align 3
.L559:
	movzx	eax, BYTE PTR 5[rcx]
	add	rcx, 6
	lea	edx, 64[rax]
	movsx	r8d, WORD PTR [r11+rax*2]
	movsx	eax, WORD PTR -6[rcx]
	movzx	edx, dl
	movsx	ebp, WORD PTR [r11+rdx*2]
	movsx	edx, WORD PTR -4[rcx]
	mov	r12d, eax
	imul	eax, r8d
	imul	r12d, ebp
	imul	r8d, edx
	sar	eax, 14
	imul	edx, ebp
	neg	eax
	sar	r12d, 14
	sar	r8d, 14
	mov	WORD PTR [r10], r12w
	sar	edx, 14
	mov	WORD PTR [r10+r9], ax
	mov	WORD PTR [r10+r9*2], r8w
	mov	WORD PTR [r10+rsi], dx
	add	r10, rbx
	cmp	rdi, rcx
	jne	.L559
.L557:
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.globl	SoftReset
	.def	SoftReset;	.scl	2;	.type	32;	.endef
	.seh_proc	SoftReset
SoftReset:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	SoftResetExram
	.def	SoftResetExram;	.scl	2;	.type	32;	.endef
	.seh_proc	SoftResetExram
SoftResetExram:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	memsetu16
	.def	memsetu16;	.scl	2;	.type	32;	.endef
	.seh_proc	memsetu16
memsetu16:
	.seh_endprologue
	mov	eax, edx
	test	r8, r8
	je	.L565
	lea	r9, [rcx+r8*2]
	and	r8d, 1
	je	.L566
	add	rcx, 2
	mov	WORD PTR -2[rcx], dx
	cmp	r9, rcx
	je	.L565
	.p2align 4,,10
	.p2align 3
.L566:
	mov	WORD PTR [rcx], ax
	add	rcx, 4
	mov	WORD PTR -2[rcx], ax
	cmp	r9, rcx
	jne	.L566
.L565:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	VDraw
	.def	VDraw;	.scl	2;	.type	32;	.endef
	.seh_proc	VDraw
VDraw:
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
	lea	r12, gameImage[rip]
	mov	r8d, 204480
	xor	edx, edx
	lea	r13, scanlines.0[rip]
	xor	esi, esi
	mov	r15, rcx
	mov	rcx, r12
	call	memset
	mov	rbx, QWORD PTR .refptr.REG_BASE[rip]
	mov	rdi, QWORD PTR .refptr.PLTT[rip]
	mov	rcx, r13
	mov	rbp, QWORD PTR .refptr.gIntrTable[rip]
	movzx	eax, WORD PTR 92[rbx]
	.p2align 4,,10
	.p2align 3
.L582:
	mov	WORD PTR 6[rbx], si
	movzx	eax, WORD PTR 4[rbx]
	movzx	edx, WORD PTR 6[rbx]
	shr	ax, 8
	cmp	ax, dx
	je	.L593
.L578:
	movzx	eax, WORD PTR [rdi]
	lea	r14, 852[rcx]
	movd	xmm1, eax
	mov	rax, rcx
	pshuflw	xmm0, xmm1, 0
.L580:
	movd	DWORD PTR [rax], xmm0
	add	rax, 12
	movd	DWORD PTR -8[rax], xmm0
	movd	DWORD PTR -4[rax], xmm0
	cmp	r14, rax
	jne	.L580
	mov	edx, esi
	call	DrawScanline
	movzx	eax, WORD PTR 4[rbx]
	mov	ecx, 2
	or	eax, 2
	mov	WORD PTR 4[rbx], ax
	call	RunDMAs
	movzx	eax, WORD PTR 4[rbx]
	test	al, 16
	je	.L581
	call	[QWORD PTR 16[rbp]]
.L581:
	movzx	eax, WORD PTR 4[rbx]
	add	esi, 1
	and	eax, -3
	mov	WORD PTR 4[rbx], ax
	movzx	eax, WORD PTR 4[rbx]
	and	eax, -5
	mov	WORD PTR 4[rbx], ax
	cmp	esi, 240
	je	.L594
	mov	rcx, r14
	jmp	.L582
.L593:
	movzx	eax, WORD PTR 4[rbx]
	or	eax, 4
	mov	WORD PTR 4[rbx], ax
	movzx	eax, WORD PTR 4[rbx]
	test	al, 32
	je	.L578
	mov	QWORD PTR 40[rsp], rcx
	call	[QWORD PTR 24[rbp]]
	mov	rcx, QWORD PTR 40[rsp]
	jmp	.L578
.L594:
	mov	rdx, r13
	mov	rcx, r12
	mov	r8d, 204480
	call	memcpy
	mov	r9d, 852
	xor	edx, edx
	mov	rcx, r15
	lea	r8, gameImage[rip]
	call	SDL_UpdateTexture
	mov	eax, 241
	mov	WORD PTR 6[rbx], ax
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
	.seh_endproc
	.section .rdata,"dr"
.LC8:
	.ascii "HEADLESS\0"
.LC9:
	.ascii "true\0"
.LC10:
	.ascii "SIO_PARENT\0"
.LC11:
	.ascii "r+b\0"
.LC12:
	.ascii "sa2.sav\0"
.LC13:
	.ascii "w+b\0"
	.align 8
.LC14:
	.ascii "SDL could not initialize! SDL_Error: %s\12\0"
.LC15:
	.ascii "sa2.sdl_win32\0"
	.align 8
.LC16:
	.ascii "Window could not be created! SDL_Error: %s\12\0"
	.align 8
.LC17:
	.ascii "Renderer could not be created! SDL_Error: %s\12\0"
.LC18:
	.ascii "0\0"
.LC19:
	.ascii "SDL_RENDER_SCALE_QUALITY\0"
	.align 8
.LC20:
	.ascii "Texture could not be created! SDL_Error: %s\12\0"
.LC21:
	.ascii "Failed to open audio: %s\0"
	.align 8
.LC22:
	.ascii "We didn't get Float32 audio format.\0"
	.text
	.p2align 4
	.globl	SDL_main
	.def	SDL_main;	.scl	2;	.type	32;	.endef
	.seh_proc	SDL_main
SDL_main:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 88
	.seh_stackalloc	88
	.seh_endprologue
	lea	rcx, .LC8[rip]
	call	getenv
	mov	rcx, rax
	test	rax, rax
	je	.L596
	lea	rdx, .LC9[rip]
	call	strcmp
	test	eax, eax
	je	.L621
.L596:
	lea	rcx, .LC10[rip]
	call	getenv
	mov	rsi, QWORD PTR .refptr.REG_BASE[rip]
	mov	rcx, rax
	test	rax, rax
	je	.L597
	lea	rdx, .LC9[rip]
	call	strcmp
	mov	rsi, QWORD PTR .refptr.REG_BASE[rip]
	test	eax, eax
	je	.L622
.L597:
	lea	rbx, .LC12[rip]
	lea	rdx, .LC11[rip]
	mov	rcx, rbx
	call	fopen
	mov	QWORD PTR sSaveFile[rip], rax
	mov	rcx, rax
	test	rax, rax
	je	.L623
.L598:
	xor	edx, edx
	mov	r8d, 2
	call	fseek
	mov	rcx, QWORD PTR sSaveFile[rip]
	call	ftell
	mov	rcx, QWORD PTR sSaveFile[rip]
	xor	r8d, r8d
	xor	edx, edx
	mov	ebx, eax
	call	fseek
	mov	eax, 2097152
	mov	edx, 1
	mov	r9, QWORD PTR sSaveFile[rip]
	cmp	ebx, eax
	cmova	ebx, eax
	movsx	r8, ebx
	mov	rbx, QWORD PTR .refptr.FLASH_BASE[rip]
	mov	rcx, rbx
	call	fread
	cmp	eax, 2097151
	ja	.L603
	movsx	rcx, eax
	mov	r8d, 2097152
	mov	edx, 255
	add	rcx, rbx
	sub	r8d, eax
	call	memset
.L603:
	mov	ecx, -32768
	mov	r8d, 1023
	cmp	BYTE PTR headless[rip], 0
	mov	WORD PTR 308[rsi], cx
	mov	WORD PTR 304[rsi], r8w
	jne	.L624
	mov	ecx, 560
	call	SDL_Init
	test	eax, eax
	js	.L625
	mov	r9d, DWORD PTR videoScale[rip]
	mov	DWORD PTR 40[rsp], 36
	mov	edx, 805240832
	lea	rcx, .LC15[rip]
	mov	r8d, 805240832
	imul	eax, r9d, 240
	imul	r9d, r9d, 426
	mov	DWORD PTR 32[rsp], eax
	call	SDL_CreateWindow
	mov	QWORD PTR sdlWindow[rip], rax
	mov	rcx, rax
	test	rax, rax
	je	.L626
	mov	r8d, 4
	mov	edx, -1
	call	SDL_CreateRenderer
	mov	QWORD PTR sdlRenderer[rip], rax
	mov	rcx, rax
	test	rax, rax
	je	.L627
	mov	DWORD PTR 32[rsp], 255
	xor	r9d, r9d
	xor	r8d, r8d
	xor	edx, edx
	call	SDL_SetRenderDrawColor
	mov	rcx, QWORD PTR sdlRenderer[rip]
	call	SDL_RenderClear
	lea	rdx, .LC18[rip]
	lea	rcx, .LC19[rip]
	call	SDL_SetHint
	mov	r8d, 240
	mov	edx, 426
	mov	rcx, QWORD PTR sdlRenderer[rip]
	call	SDL_RenderSetLogicalSize
	mov	r9d, 426
	mov	edx, 359862274
	mov	DWORD PTR 32[rsp], 240
	mov	rcx, QWORD PTR sdlRenderer[rip]
	mov	r8d, 1
	call	SDL_CreateTexture
	mov	QWORD PTR sdlTexture[rip], rax
	test	rax, rax
	je	.L628
	lea	rbx, 48[rsp]
	xor	edx, edx
	mov	r8d, 32
	mov	rcx, rbx
	call	SDL_memset
	mov	edx, 800
	mov	eax, -32480
	mov	ecx, 48000
	mov	WORD PTR 56[rsp], dx
	mov	DWORD PTR 48[rsp], 48000
	mov	WORD PTR 52[rsp], ax
	mov	BYTE PTR 54[rsp], 2
	call	cgb_audio_init
	xor	edx, edx
	mov	rcx, rbx
	call	SDL_OpenAudio
	test	eax, eax
	js	.L629
	cmp	WORD PTR 52[rsp], -32480
	je	.L612
	lea	rcx, .LC22[rip]
	call	SDL_Log
.L612:
	xor	ecx, ecx
	call	SDL_PauseAudio
.L611:
	mov	rcx, QWORD PTR sdlTexture[rip]
	call	VDraw
	call	AgbMain
	xor	eax, eax
	add	rsp, 88
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L622:
	movzx	eax, BYTE PTR 296[rsi]
	and	eax, -49
	mov	BYTE PTR 296[rsi], al
	movzx	eax, BYTE PTR 296[rsi]
	or	eax, 4
	mov	BYTE PTR 296[rsi], al
	movzx	eax, BYTE PTR 296[rsi]
	or	eax, 8
	mov	BYTE PTR 296[rsi], al
	movzx	eax, BYTE PTR 296[rsi]
	and	eax, 127
	mov	BYTE PTR 296[rsi], al
	jmp	.L597
	.p2align 4,,10
	.p2align 3
.L621:
	mov	BYTE PTR headless[rip], 1
	jmp	.L596
	.p2align 4,,10
	.p2align 3
.L624:
	mov	ecx, 48000
	call	cgb_audio_init
	call	AgbMain
.L604:
	mov	eax, 1
	add	rsp, 88
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L625:
	call	SDL_GetError
	mov	ecx, 2
	mov	rbx, rax
	call	[QWORD PTR __imp___acrt_iob_func[rip]]
	mov	r8, rbx
	lea	rdx, .LC14[rip]
	mov	rcx, rax
	call	fprintf
	jmp	.L604
.L629:
	call	SDL_GetError
	lea	rcx, .LC21[rip]
	mov	rdx, rax
	call	SDL_Log
	jmp	.L611
	.p2align 4,,10
	.p2align 3
.L623:
	mov	rcx, rbx
	lea	rdx, .LC13[rip]
	call	fopen
	mov	QWORD PTR sSaveFile[rip], rax
	mov	rcx, rax
	jmp	.L598
.L626:
	call	SDL_GetError
	mov	ecx, 2
	mov	rbx, rax
	call	[QWORD PTR __imp___acrt_iob_func[rip]]
	mov	r8, rbx
	lea	rdx, .LC16[rip]
	mov	rcx, rax
	call	fprintf
	jmp	.L604
.L627:
	call	SDL_GetError
	mov	ecx, 2
	mov	rbx, rax
	call	[QWORD PTR __imp___acrt_iob_func[rip]]
	mov	r8, rbx
	lea	rdx, .LC17[rip]
	mov	rcx, rax
	call	fprintf
	jmp	.L604
.L628:
	call	SDL_GetError
	mov	ecx, 2
	mov	rbx, rax
	call	[QWORD PTR __imp___acrt_iob_func[rip]]
	mov	r8, rbx
	lea	rdx, .LC20[rip]
	mov	rcx, rax
	call	fprintf
	jmp	.L604
	.seh_endproc
	.p2align 4
	.globl	VBlankIntrWait
	.def	VBlankIntrWait;	.scl	2;	.type	32;	.endef
	.seh_proc	VBlankIntrWait
VBlankIntrWait:
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
	movups	XMMWORD PTR 32[rsp], xmm6
	.seh_savexmm	xmm6, 32
	movups	XMMWORD PTR 48[rsp], xmm7
	.seh_savexmm	xmm7, 48
	movups	XMMWORD PTR 64[rsp], xmm8
	.seh_savexmm	xmm8, 64
	.seh_endprologue
	cmp	BYTE PTR headless[rip], 0
	jne	.L631
	movzx	ebp, BYTE PTR isRunning[rip]
	mov	rbx, QWORD PTR .refptr.REG_BASE[rip]
	mov	rdi, QWORD PTR .refptr.gIntrTable[rip]
	test	bpl, bpl
	je	.L659
.L632:
	call	ProcessSDLEvents
	cmp	BYTE PTR paused[rip], 0
	je	.L637
	cmp	BYTE PTR stepOneFrame[rip], 0
	jne	.L637
.L638:
	mov	rcx, QWORD PTR sdlRenderer[rip]
	call	SDL_RenderClear
	mov	rdx, QWORD PTR sdlTexture[rip]
	xor	r9d, r9d
	xor	r8d, r8d
	mov	rcx, QWORD PTR sdlRenderer[rip]
	call	SDL_RenderCopy
	cmp	BYTE PTR videoScaleChanged[rip], 0
	jne	.L674
.L658:
	mov	rcx, QWORD PTR sdlRenderer[rip]
	call	SDL_RenderPresent
	cmp	BYTE PTR isRunning[rip], 0
	jne	.L632
.L659:
	mov	rcx, QWORD PTR sSaveFile[rip]
	test	rcx, rcx
	je	.L634
	call	fclose
.L634:
	mov	rcx, QWORD PTR sdlWindow[rip]
	call	SDL_DestroyWindow
	call	SDL_Quit
	xor	ecx, ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L637:
	cmp	BYTE PTR newFrameRequested[rip], 0
	movsd	xmm6, QWORD PTR fixedTimestep[rip]
	divsd	xmm6, QWORD PTR timeScale[rip]
	je	.L675
	mov	BYTE PTR newFrameRequested[rip], 0
	movsd	xmm0, QWORD PTR accumulator[rip]
.L646:
	comisd	xmm0, xmm6
	movsd	xmm7, QWORD PTR .LC3[rip]
	movsd	xmm8, QWORD PTR .LC2[rip]
	jb	.L647
	.p2align 4,,10
	.p2align 3
.L655:
	call	GetXInputKeys
	mov	esi, eax
	shr	eax, 16
	mov	BYTE PTR speedUp[rip], al
	and	BYTE PTR speedUp[rip], 1
	test	al, 1
	je	.L649
	mov	ecx, 1
	movsd	QWORD PTR timeScale[rip], xmm7
	call	SDL_PauseAudio
.L650:
	mov	eax, esi
	xor	ax, 1023
	mov	WORD PTR 304[rbx], ax
	test	bpl, bpl
	je	.L653
.L676:
	mov	rcx, QWORD PTR sdlTexture[rip]
	call	VDraw
	movzx	eax, WORD PTR 4[rbx]
	mov	ecx, 1
	or	eax, 1
	mov	WORD PTR 4[rbx], ax
	call	RunDMAs
	movzx	eax, WORD PTR 4[rbx]
	test	al, 8
	je	.L654
	call	[QWORD PTR 8[rdi]]
.L654:
	movsd	xmm0, QWORD PTR accumulator[rip]
	movzx	eax, WORD PTR 4[rbx]
	xor	ebp, ebp
	subsd	xmm0, xmm6
	and	eax, -2
	mov	WORD PTR 4[rbx], ax
	comisd	xmm0, xmm6
	movsd	QWORD PTR accumulator[rip], xmm0
	jnb	.L655
.L647:
	cmp	BYTE PTR paused[rip], 0
	je	.L638
	cmp	BYTE PTR stepOneFrame[rip], 0
	je	.L638
	mov	BYTE PTR stepOneFrame[rip], 0
	jmp	.L638
	.p2align 4,,10
	.p2align 3
.L649:
	movsd	QWORD PTR timeScale[rip], xmm8
	xor	ecx, ecx
	call	SDL_PauseAudio
	movzx	eax, WORD PTR keys[rip]
	test	esi, esi
	jne	.L650
	xor	ax, 1023
	mov	WORD PTR 304[rbx], ax
	test	bpl, bpl
	jne	.L676
.L653:
	mov	BYTE PTR newFrameRequested[rip], 1
.L630:
	movups	xmm6, XMMWORD PTR 32[rsp]
	movups	xmm7, XMMWORD PTR 48[rsp]
	movups	xmm8, XMMWORD PTR 64[rsp]
	add	rsp, 88
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L674:
	mov	r8d, DWORD PTR videoScale[rip]
	mov	rcx, QWORD PTR sdlWindow[rip]
	imul	edx, r8d, 426
	imul	r8d, r8d, 240
	call	SDL_SetWindowSize
	mov	BYTE PTR videoScaleChanged[rip], 0
	jmp	.L658
	.p2align 4,,10
	.p2align 3
.L675:
	call	SDL_GetPerformanceCounter
	test	rax, rax
	js	.L640
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, rax
.L641:
	cmp	BYTE PTR stepOneFrame[rip], 0
	movsd	QWORD PTR curGameTime[rip], xmm1
	movupd	xmm0, xmm6
	je	.L677
.L642:
	addsd	xmm0, QWORD PTR accumulator[rip]
	movsd	QWORD PTR lastGameTime[rip], xmm1
	movsd	QWORD PTR accumulator[rip], xmm0
	jmp	.L646
	.p2align 4,,10
	.p2align 3
.L631:
	mov	rbx, QWORD PTR .refptr.REG_BASE[rip]
	mov	eax, 241
	mov	ecx, 1
	mov	WORD PTR 6[rbx], ax
	movzx	eax, WORD PTR 4[rbx]
	or	eax, 1
	mov	WORD PTR 4[rbx], ax
	call	RunDMAs
	movzx	eax, WORD PTR 4[rbx]
	test	al, 8
	je	.L635
	mov	rax, QWORD PTR .refptr.gIntrTable[rip]
	call	[QWORD PTR 8[rax]]
.L635:
	movzx	eax, WORD PTR 4[rbx]
	and	eax, -2
	mov	WORD PTR 4[rbx], ax
	jmp	.L630
	.p2align 4,,10
	.p2align 3
.L640:
	mov	rdx, rax
	and	eax, 1
	pxor	xmm1, xmm1
	shr	rdx
	or	rdx, rax
	cvtsi2sd	xmm1, rdx
	addsd	xmm1, xmm1
	jmp	.L641
	.p2align 4,,10
	.p2align 3
.L677:
	subsd	xmm1, QWORD PTR lastGameTime[rip]
	movupd	xmm7, xmm1
	call	SDL_GetPerformanceFrequency
	test	rax, rax
	js	.L643
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, rax
.L644:
	divsd	xmm7, xmm1
	movsd	xmm2, QWORD PTR .LC3[rip]
	movsd	xmm1, QWORD PTR curGameTime[rip]
	mulsd	xmm2, xmm6
	comisd	xmm7, xmm2
	movupd	xmm0, xmm7
	jbe	.L642
	movupd	xmm0, xmm2
	jmp	.L642
.L643:
	mov	rdx, rax
	and	eax, 1
	pxor	xmm1, xmm1
	shr	rdx
	or	rdx, rax
	cvtsi2sd	xmm1, rdx
	addsd	xmm1, xmm1
	jmp	.L644
	.seh_endproc
	.p2align 4
	.globl	BinToBcd
	.def	BinToBcd;	.scl	2;	.type	32;	.endef
	.seh_proc	BinToBcd
BinToBcd:
	.seh_endprologue
	xor	r10d, r10d
	mov	r9d, 1
	mov	r11d, -51
	.p2align 4,,10
	.p2align 3
.L679:
	mov	eax, ecx
	mul	r11b
	shr	ax, 11
	mov	edx, eax
	mov	eax, ecx
	lea	r8d, [rdx+rdx*4]
	add	r8d, r8d
	sub	eax, r8d
	imul	eax, r9d
	sal	r9d, 4
	or	r10d, eax
	mov	eax, ecx
	mov	ecx, edx
	cmp	al, 9
	ja	.L679
	mov	eax, r10d
	ret
	.seh_endproc
	.p2align 4
	.globl	ArcTan
	.def	ArcTan;	.scl	2;	.type	32;	.endef
	.seh_proc	ArcTan
ArcTan:
	.seh_endprologue
	movsx	ecx, cx
	mov	edx, ecx
	imul	edx, ecx
	sar	edx, 14
	imul	eax, edx, -169
	mov	r8d, edx
	neg	r8d
	sar	eax, 14
	add	eax, 912
	imul	eax, r8d
	sar	eax, 14
	add	eax, 2332
	imul	eax, r8d
	sar	eax, 14
	add	eax, 4022
	imul	eax, r8d
	sar	eax, 14
	add	eax, 5802
	imul	eax, r8d
	sar	eax, 14
	add	eax, 8321
	imul	eax, r8d
	sar	eax, 14
	add	eax, 13905
	imul	eax, r8d
	sar	eax, 14
	add	eax, 41721
	imul	eax, ecx
	shr	eax, 16
	ret
	.seh_endproc
	.p2align 4
	.globl	ArcTan2
	.def	ArcTan2;	.scl	2;	.type	32;	.endef
	.seh_proc	ArcTan2
ArcTan2:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	test	dx, dx
	jne	.L683
	mov	eax, ecx
	and	ax, -32768
.L682:
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L683:
	test	cx, cx
	jne	.L685
	mov	eax, edx
	and	ax, -32768
	add	ax, 16384
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L685:
	movsx	r8d, cx
	movsx	r9d, dx
	test	dx, dx
	js	.L686
	test	cx, cx
	js	.L687
	cmp	dx, cx
	jg	.L688
.L693:
	mov	eax, r9d
	sal	eax, 14
	cdq
	idiv	r8d
	movsx	ecx, ax
	add	rsp, 40
	jmp	ArcTan
	.p2align 4,,10
	.p2align 3
.L686:
	test	cx, cx
	jle	.L694
	mov	eax, r9d
	neg	eax
	cmp	eax, r8d
	jle	.L693
.L690:
	mov	eax, r8d
	sal	eax, 14
	cdq
	idiv	r9d
	movsx	ecx, ax
	call	ArcTan
	mov	edx, eax
	mov	eax, -16384
	sub	eax, edx
	jmp	.L682
	.p2align 4,,10
	.p2align 3
.L687:
	mov	eax, r8d
	neg	eax
	cmp	eax, r9d
	jge	.L692
.L688:
	mov	eax, r8d
	sal	eax, 14
	cdq
	idiv	r9d
	movsx	ecx, ax
	call	ArcTan
	mov	edx, eax
	mov	eax, 16384
	sub	eax, edx
	jmp	.L682
	.p2align 4,,10
	.p2align 3
.L694:
	cmp	dx, cx
	jle	.L690
.L692:
	mov	eax, r9d
	sal	eax, 14
	cdq
	idiv	r8d
	movsx	ecx, ax
	call	ArcTan
	add	ax, -32768
	jmp	.L682
	.seh_endproc
	.p2align 4
	.globl	Sqrt
	.def	Sqrt;	.scl	2;	.type	32;	.endef
	.seh_proc	Sqrt
Sqrt:
	.seh_endprologue
	xor	eax, eax
	test	ecx, ecx
	je	.L695
	cmp	ecx, 1
	je	.L707
	mov	eax, ecx
	mov	r9d, 1
	.p2align 4,,10
	.p2align 3
.L698:
	shr	eax
	add	r9d, r9d
	cmp	r9d, eax
	jb	.L698
.L697:
	mov	r10d, ecx
	shr	r10d
	.p2align 4,,10
	.p2align 3
.L705:
	mov	eax, r9d
	.p2align 4,,10
	.p2align 3
.L702:
	cmp	r10d, eax
	jnb	.L699
.L701:
	mov	r8d, ecx
	xor	edx, edx
	jmp	.L700
	.p2align 4,,10
	.p2align 3
.L712:
	shr	eax
.L700:
	add	edx, edx
	cmp	r8d, eax
	jb	.L703
	add	edx, 1
	sub	r8d, eax
.L703:
	cmp	eax, r9d
	jne	.L712
	lea	r9d, [rax+rdx]
	shr	r9d
	cmp	r9d, eax
	jb	.L705
.L695:
	ret
	.p2align 4,,10
	.p2align 3
.L699:
	lea	edx, [rax+rax]
	mov	eax, edx
	jne	.L702
	jmp	.L701
.L707:
	mov	r9d, 1
	jmp	.L697
	.seh_endproc
	.p2align 4
	.globl	MultiBoot
	.def	MultiBoot;	.scl	2;	.type	32;	.endef
	.seh_proc	MultiBoot
MultiBoot:
	.seh_endprologue
	xor	eax, eax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
CSWTCH.183:
	.long	256
	.long	512
	.long	1024
.lcomm scanlines.0,204480,32
	.globl	spriteSizes
	.align 8
spriteSizes:
	.ascii "\10\20"
	.ascii "\10 "
	.ascii "\20 "
	.ascii " @"
	.align 16
bgMapSizes:
	.word	32
	.word	32
	.word	64
	.word	32
	.word	32
	.word	64
	.word	64
	.word	64
	.globl	sineTable
	.align 32
sineTable:
	.word	0
	.word	402
	.word	803
	.word	1205
	.word	1605
	.word	2005
	.word	2404
	.word	2801
	.word	3196
	.word	3589
	.word	3980
	.word	4369
	.word	4756
	.word	5139
	.word	5519
	.word	5896
	.word	6269
	.word	6639
	.word	7005
	.word	7366
	.word	7723
	.word	8075
	.word	8423
	.word	8765
	.word	9102
	.word	9434
	.word	9759
	.word	10079
	.word	10393
	.word	10701
	.word	11002
	.word	11297
	.word	11585
	.word	11866
	.word	12139
	.word	12406
	.word	12665
	.word	12916
	.word	13159
	.word	13395
	.word	13622
	.word	13842
	.word	14053
	.word	14255
	.word	14449
	.word	14634
	.word	14810
	.word	14978
	.word	15136
	.word	15286
	.word	15426
	.word	15557
	.word	15678
	.word	15790
	.word	15892
	.word	15985
	.word	16069
	.word	16142
	.word	16206
	.word	16260
	.word	16305
	.word	16339
	.word	16364
	.word	16379
	.word	16384
	.word	16379
	.word	16364
	.word	16339
	.word	16305
	.word	16260
	.word	16206
	.word	16142
	.word	16069
	.word	15985
	.word	15892
	.word	15790
	.word	15678
	.word	15557
	.word	15426
	.word	15286
	.word	15136
	.word	14978
	.word	14810
	.word	14634
	.word	14449
	.word	14255
	.word	14053
	.word	13842
	.word	13622
	.word	13395
	.word	13159
	.word	12916
	.word	12665
	.word	12406
	.word	12139
	.word	11866
	.word	11585
	.word	11297
	.word	11002
	.word	10701
	.word	10393
	.word	10079
	.word	9759
	.word	9434
	.word	9102
	.word	8765
	.word	8423
	.word	8075
	.word	7723
	.word	7366
	.word	7005
	.word	6639
	.word	6269
	.word	5896
	.word	5519
	.word	5139
	.word	4756
	.word	4369
	.word	3980
	.word	3589
	.word	3196
	.word	2801
	.word	2404
	.word	2005
	.word	1605
	.word	1205
	.word	803
	.word	402
	.word	0
	.word	-402
	.word	-803
	.word	-1205
	.word	-1605
	.word	-2005
	.word	-2404
	.word	-2801
	.word	-3196
	.word	-3589
	.word	-3980
	.word	-4369
	.word	-4756
	.word	-5139
	.word	-5519
	.word	-5896
	.word	-6269
	.word	-6639
	.word	-7005
	.word	-7366
	.word	-7723
	.word	-8075
	.word	-8423
	.word	-8765
	.word	-9102
	.word	-9434
	.word	-9759
	.word	-10079
	.word	-10393
	.word	-10701
	.word	-11002
	.word	-11297
	.word	-11585
	.word	-11866
	.word	-12139
	.word	-12406
	.word	-12665
	.word	-12916
	.word	-13159
	.word	-13395
	.word	-13622
	.word	-13842
	.word	-14053
	.word	-14255
	.word	-14449
	.word	-14634
	.word	-14810
	.word	-14978
	.word	-15136
	.word	-15286
	.word	-15426
	.word	-15557
	.word	-15678
	.word	-15790
	.word	-15892
	.word	-15985
	.word	-16069
	.word	-16142
	.word	-16206
	.word	-16260
	.word	-16305
	.word	-16339
	.word	-16364
	.word	-16379
	.word	-16384
	.word	-16379
	.word	-16364
	.word	-16339
	.word	-16305
	.word	-16260
	.word	-16206
	.word	-16142
	.word	-16069
	.word	-15985
	.word	-15892
	.word	-15790
	.word	-15678
	.word	-15557
	.word	-15426
	.word	-15286
	.word	-15136
	.word	-14978
	.word	-14810
	.word	-14634
	.word	-14449
	.word	-14255
	.word	-14053
	.word	-13842
	.word	-13622
	.word	-13395
	.word	-13159
	.word	-12916
	.word	-12665
	.word	-12406
	.word	-12139
	.word	-11866
	.word	-11585
	.word	-11297
	.word	-11002
	.word	-10701
	.word	-10393
	.word	-10079
	.word	-9759
	.word	-9434
	.word	-9102
	.word	-8765
	.word	-8423
	.word	-8075
	.word	-7723
	.word	-7366
	.word	-7005
	.word	-6639
	.word	-6269
	.word	-5896
	.word	-5519
	.word	-5139
	.word	-4756
	.word	-4369
	.word	-3980
	.word	-3589
	.word	-3196
	.word	-2801
	.word	-2404
	.word	-2005
	.word	-1605
	.word	-1205
	.word	-803
	.word	-402
.lcomm sdlDispMode,24,16
	.globl	fullScreenFlags
	.bss
	.align 4
fullScreenFlags:
	.space 4
.lcomm keys,2,2
	.globl	newFrameRequested
newFrameRequested:
	.space 1
.lcomm sSaveFile,8,8
	.globl	accumulator
	.align 8
accumulator:
	.space 8
	.globl	timeScale
	.data
	.align 8
timeScale:
	.long	0
	.long	1072693248
	.globl	fixedTimestep
	.align 8
fixedTimestep:
	.long	286331153
	.long	1066471697
	.globl	curGameTime
	.bss
	.align 8
curGameTime:
	.space 8
	.globl	lastGameTime
	.align 8
lastGameTime:
	.space 8
	.globl	headless
headless:
	.space 1
	.globl	stepOneFrame
stepOneFrame:
	.space 1
	.globl	paused
paused:
	.space 1
	.globl	isRunning
	.data
isRunning:
	.byte	1
	.globl	videoScaleChanged
	.bss
videoScaleChanged:
	.space 1
	.globl	speedUp
speedUp:
	.space 1
	.globl	preFullscreenVideoScale
	.data
	.align 4
preFullscreenVideoScale:
	.long	1
	.globl	videoScale
	.align 4
videoScale:
	.long	1
	.globl	sdlTexture
	.bss
	.align 8
sdlTexture:
	.space 8
	.globl	sdlRenderer
	.align 8
sdlRenderer:
	.space 8
	.globl	sdlWindow
	.align 8
sdlWindow:
	.space 8
	.globl	gameImage
	.align 256
gameImage:
	.space 204480
	.section .rdata,"dr"
	.align 8
.LC2:
	.long	0
	.long	1072693248
	.align 8
.LC3:
	.long	0
	.long	1075052544
	.ident	"GCC: (GNU) 13-win32"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	fseek;	.scl	2;	.type	32;	.endef
	.def	fwrite;	.scl	2;	.type	32;	.endef
	.def	SDL_GetQueuedAudioSize;	.scl	2;	.type	32;	.endef
	.def	SDL_QueueAudio;	.scl	2;	.type	32;	.endef
	.def	SDL_ClearQueuedAudio;	.scl	2;	.type	32;	.endef
	.def	SDL_PollEvent;	.scl	2;	.type	32;	.endef
	.def	SDL_SetWindowDisplayMode;	.scl	2;	.type	32;	.endef
	.def	SDL_SetWindowFullscreen;	.scl	2;	.type	32;	.endef
	.def	SDL_SetWindowSize;	.scl	2;	.type	32;	.endef
	.def	SDL_PauseAudio;	.scl	2;	.type	32;	.endef
	.def	SDL_GetWindowDisplayMode;	.scl	2;	.type	32;	.endef
	.def	GetXInputKeys;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	RunDMAs;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	SDL_UpdateTexture;	.scl	2;	.type	32;	.endef
	.def	getenv;	.scl	2;	.type	32;	.endef
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.def	fopen;	.scl	2;	.type	32;	.endef
	.def	ftell;	.scl	2;	.type	32;	.endef
	.def	fread;	.scl	2;	.type	32;	.endef
	.def	SDL_Init;	.scl	2;	.type	32;	.endef
	.def	SDL_CreateWindow;	.scl	2;	.type	32;	.endef
	.def	SDL_CreateRenderer;	.scl	2;	.type	32;	.endef
	.def	SDL_SetRenderDrawColor;	.scl	2;	.type	32;	.endef
	.def	SDL_RenderClear;	.scl	2;	.type	32;	.endef
	.def	SDL_SetHint;	.scl	2;	.type	32;	.endef
	.def	SDL_RenderSetLogicalSize;	.scl	2;	.type	32;	.endef
	.def	SDL_CreateTexture;	.scl	2;	.type	32;	.endef
	.def	SDL_memset;	.scl	2;	.type	32;	.endef
	.def	cgb_audio_init;	.scl	2;	.type	32;	.endef
	.def	SDL_OpenAudio;	.scl	2;	.type	32;	.endef
	.def	SDL_Log;	.scl	2;	.type	32;	.endef
	.def	AgbMain;	.scl	2;	.type	32;	.endef
	.def	SDL_GetError;	.scl	2;	.type	32;	.endef
	.def	SDL_RenderCopy;	.scl	2;	.type	32;	.endef
	.def	SDL_RenderPresent;	.scl	2;	.type	32;	.endef
	.def	fclose;	.scl	2;	.type	32;	.endef
	.def	SDL_DestroyWindow;	.scl	2;	.type	32;	.endef
	.def	SDL_Quit;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	SDL_GetPerformanceCounter;	.scl	2;	.type	32;	.endef
	.def	SDL_GetPerformanceFrequency;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gIntrTable, "dr"
	.globl	.refptr.gIntrTable
	.linkonce	discard
.refptr.gIntrTable:
	.quad	gIntrTable
	.section	.rdata$.refptr.FLASH_BASE, "dr"
	.globl	.refptr.FLASH_BASE
	.linkonce	discard
.refptr.FLASH_BASE:
	.quad	FLASH_BASE
	.section	.rdata$.refptr.gOamShapesSizes, "dr"
	.globl	.refptr.gOamShapesSizes
	.linkonce	discard
.refptr.gOamShapesSizes:
	.quad	gOamShapesSizes
	.section	.rdata$.refptr.OAM, "dr"
	.globl	.refptr.OAM
	.linkonce	discard
.refptr.OAM:
	.quad	OAM
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.PLTT, "dr"
	.globl	.refptr.PLTT
	.linkonce	discard
.refptr.PLTT:
	.quad	PLTT
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
