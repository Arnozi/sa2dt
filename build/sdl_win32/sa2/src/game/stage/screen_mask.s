	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	sub_802E49C.part.0;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_802E49C.part.0
sub_802E49C.part.0:
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
	sub	rsp, 392
	.seh_stackalloc	392
	.seh_endprologue
	xor	r10d, r10d
	movzx	r8d, dl
	lea	r9, 16[rsp]
	.p2align 4,,10
	.p2align 3
.L2:
	movzx	eax, WORD PTR 2[rcx+r10*4]
	mov	WORD PTR 2[r9+r10*4], ax
	add	r10, 1
	cmp	r8, r10
	jne	.L2
	movzx	eax, dl
	sub	edx, 2
	mov	rcx, r9
	mov	r8, r9
	mov	BYTE PTR 15[rsp], dl
	lea	ebp, -1[rax]
	mov	ebx, edx
	xor	esi, esi
	lea	rdi, 20[rsp]
	.p2align 4,,10
	.p2align 3
.L7:
	cmp	bl, -1
	je	.L35
	movzx	eax, bl
	add	rax, rsi
	lea	r14, [rdi+rax*4]
	mov	rax, r8
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L5:
	mov	WORD PTR [r8], r15w
	mov	WORD PTR 2[r8], r11w
	mov	DWORD PTR 4[rax], r12d
.L4:
	add	rax, 4
	cmp	r14, rax
	je	.L71
.L6:
	movzx	edx, WORD PTR 2[r8]
	movzx	r11d, WORD PTR 6[rax]
	cmp	dx, r11w
	jl	.L4
	movzx	r12d, WORD PTR [r8]
	mov	r15d, edx
	sal	r15d, 16
	mov	r13d, r12d
	or	r12d, r15d
	movzx	r15d, WORD PTR 4[rax]
	cmp	dx, r11w
	jne	.L5
	cmp	r13w, r15w
	jge	.L5
	add	rax, 4
	cmp	r14, rax
	jne	.L6
	.p2align 4,,10
	.p2align 3
.L71:
	add	rsi, 1
	add	r8, 4
	sub	ebx, 1
	cmp	ebp, esi
	jg	.L7
	movzx	edx, BYTE PTR 15[rsp]
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L35:
	movzx	edx, BYTE PTR 15[rsp]
	mov	ebp, 5
.L3:
	movzx	eax, dl
	movsx	ebx, WORD PTR 16[rsp]
	movzx	r8d, WORD PTR 18[rsp]
	lea	r11, 0[0+rax*4]
	mov	rax, r9
	add	rdi, r11
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L10:
	movsx	esi, WORD PTR 4[rax]
	cmp	bx, si
	cmovg	ebx, esi
	add	rax, 4
	cmp	rdi, rax
	je	.L9
.L8:
	cmp	r8w, WORD PTR 6[rax]
	je	.L10
.L9:
	movsx	rax, ebp
	movzx	ebp, WORD PTR 16[rsp+rax*4]
	movzx	r12d, WORD PTR 18[rsp+rax*4]
	lea	rax, [r9+r11]
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L14:
	movzx	esi, WORD PTR [rax]
	cmp	si, bp
	jle	.L12
	mov	r12d, r11d
	mov	ebp, esi
.L12:
	sub	rax, 4
	sub	dl, 1
	je	.L13
.L11:
	movzx	r11d, WORD PTR 2[rax]
	cmp	r11w, r12w
	jge	.L14
.L13:
	movsx	eax, bp
	mov	esi, ebx
	movsx	edi, r12w
	sub	eax, ebx
	sal	esi, 8
	sal	eax, 8
	cmp	r8w, r12w
	je	.L15
	sub	eax, -128
	movsx	edx, r8w
	mov	r11d, edi
	sub	r11d, edx
	cdq
	idiv	r11d
.L15:
	movzx	edx, r8b
	mov	r11d, r8d
	cmp	edi, edx
	jl	.L18
	.p2align 4,,10
	.p2align 3
.L16:
	movsx	r8, edx
	mov	edx, esi
	xor	ebx, ebx
	sar	edx, 8
	test	dx, dx
	cmovs	edx, ebx
	mov	ebx, 426
	cmp	dx, bx
	cmovg	edx, ebx
	add	r11d, 1
	add	esi, eax
	mov	BYTE PTR 144[rsp+r8], dl
	movzx	edx, r11b
	cmp	edi, edx
	jge	.L16
.L18:
	lea	r8, [r9+r10*4]
	xor	edx, edx
	.p2align 4,,10
	.p2align 3
.L17:
	movsx	rax, WORD PTR 2[r9]
	movd	xmm0, DWORD PTR [r9]
	movzx	r10d, BYTE PTR 144[rsp+rax]
	pextrw	eax, xmm0, 0
	cwde
	cmp	r10d, eax
	jg	.L19
	movzx	eax, dl
	add	edx, 1
	movd	DWORD PTR 48[rsp+rax*4], xmm0
.L19:
	add	r9, 4
	cmp	r8, r9
	jne	.L17
	mov	eax, 8
	cmp	dl, al
	cmova	edx, eax
	movzx	r9d, dl
	test	r9d, r9d
	je	.L24
	xor	r10d, r10d
	xor	eax, eax
	lea	r11, 112[rsp]
	.p2align 4,,10
	.p2align 3
.L21:
	lea	edx, [rax+rax]
	add	r10d, 1
	movsx	rdx, edx
	mov	edx, DWORD PTR 48[rsp+rdx*2]
	mov	DWORD PTR [r11+rax*4], edx
	movzx	eax, r10w
	cmp	eax, r9d
	jl	.L21
	lea	ebp, -1[r9]
	cmp	r9d, 1
	je	.L24
	mov	rax, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, QWORD PTR [rax]
	.p2align 4,,10
	.p2align 3
.L23:
	movsx	r11, edx
	add	edx, 1
	movsx	ebx, WORD PTR 114[rsp+r11*4]
	movsx	rdx, edx
	movzx	r12d, WORD PTR 114[rsp+rdx*4]
	movsx	edx, WORD PTR 112[rsp+rdx*4]
	lea	eax, [rbx+rbx]
	mov	r9d, ebx
	cdqe
	lea	r10, [rdi+rax*2]
	movsx	eax, WORD PTR 112[rsp+r11*4]
	mov	r11d, eax
	sub	eax, edx
	sal	r11d, 8
	sal	eax, 8
	cmp	bx, r12w
	je	.L25
	movsx	edx, r12w
	sub	ebx, edx
	cdq
	idiv	ebx
	cmp	r9w, r12w
	jg	.L26
	.p2align 4,,10
	.p2align 3
.L25:
	mov	edx, r11d
	mov	ebx, 426
	sar	edx, 8
	movzx	edx, dx
	cmp	edx, ebx
	cmovg	edx, ebx
	add	r9d, 1
	add	r10, 4
	add	r11d, eax
	mov	WORD PTR -4[r10], dx
	cmp	r12w, r9w
	jge	.L25
.L26:
	add	esi, 1
	movsx	edx, si
	cmp	edx, ebp
	jl	.L23
.L24:
	xor	edx, edx
	.p2align 4,,10
	.p2align 3
.L28:
	movsx	rax, WORD PTR 2[rcx]
	movd	xmm0, DWORD PTR [rcx]
	movzx	r9d, BYTE PTR 144[rsp+rax]
	pextrw	eax, xmm0, 0
	cwde
	cmp	r9d, eax
	jl	.L27
	movzx	eax, dl
	add	edx, 1
	movd	DWORD PTR 80[rsp+rax*4], xmm0
.L27:
	add	rcx, 4
	cmp	r8, rcx
	jne	.L28
	mov	eax, 8
	movzx	edx, dl
	lea	r11, 112[rsp]
	cmp	dx, ax
	cmova	edx, eax
	xor	r8d, r8d
	xor	eax, eax
	movzx	ecx, dx
	test	ecx, ecx
	je	.L1
	.p2align 4,,10
	.p2align 3
.L29:
	lea	edx, [rax+rax]
	add	r8d, 1
	movsx	rdx, edx
	mov	edx, DWORD PTR 80[rsp+rdx*2]
	mov	DWORD PTR [r11+rax*4], edx
	movsx	rax, r8w
	cmp	ecx, eax
	jg	.L29
	lea	edi, -1[rcx]
	cmp	ecx, 1
	je	.L1
	mov	rax, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	xor	ebx, ebx
	xor	edx, edx
	mov	rsi, QWORD PTR [rax]
	.p2align 4,,10
	.p2align 3
.L33:
	movsx	r9, edx
	add	edx, 1
	movsx	r10d, WORD PTR 114[rsp+r9*4]
	movsx	rdx, edx
	movsx	ebp, WORD PTR 114[rsp+rdx*4]
	movsx	edx, WORD PTR 112[rsp+rdx*4]
	lea	eax, [r10+r10]
	mov	ecx, r10d
	cdqe
	mov	r11d, ebp
	lea	r8, [rsi+rax*2]
	movsx	eax, WORD PTR 112[rsp+r9*4]
	mov	r9d, eax
	sub	eax, edx
	sal	r9d, 8
	sal	eax, 8
	sub	r10d, ebp
	je	.L31
	cdq
	idiv	r10d
.L31:
	cmp	cx, r11w
	jg	.L34
	.p2align 4,,10
	.p2align 3
.L32:
	mov	edx, r9d
	xor	r10d, r10d
	sar	edx, 8
	test	dx, dx
	cmovs	edx, r10d
	mov	r10d, 426
	cmp	dx, r10w
	cmovg	edx, r10d
	add	ecx, 1
	add	r8, 4
	add	r9d, eax
	mov	WORD PTR -2[r8], dx
	cmp	r11w, cx
	jge	.L32
.L34:
	add	ebx, 1
	movsx	edx, bx
	cmp	edi, edx
	jg	.L33
.L1:
	add	rsp, 392
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
	.globl	ScreenMask_Lower_OriginLeft
	.def	ScreenMask_Lower_OriginLeft;	.scl	2;	.type	32;	.endef
	.seh_proc	ScreenMask_Lower_OriginLeft
ScreenMask_Lower_OriginLeft:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	mov	r8d, edx
	mov	rdx, QWORD PTR [rax]
	mov	r9d, ecx
	test	rdx, rdx
	je	.L72
	mov	eax, r8d
	and	ax, 1023
	lea	ecx, -256[rax]
	cmp	cx, 512
	jbe	.L72
	movzx	r10d, r9w
	lea	ecx, [r10+r10]
	movsx	rcx, ecx
	lea	rcx, [rdx+rcx*2]
	test	r8d, 1022
	jne	.L75
	mov	r8d, 240
	sub	r8d, r10d
	test	r8d, r8d
	jle	.L72
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L76:
	mov	edx, 426
	add	eax, 1
	add	rcx, 4
	mov	WORD PTR -2[rcx], dx
	movsx	edx, ax
	cmp	edx, r8d
	jl	.L76
.L72:
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L75:
	movzx	edx, ax
	mov	r10, QWORD PTR .refptr.gSineTable[rip]
	lea	eax, 256[rdx]
	cdqe
	movsx	r11d, WORD PTR [r10+rax*2]
	movzx	r10d, WORD PTR [r10+rdx*2]
	mov	edx, 256
	mov	eax, r11d
	sal	eax, 4
	sub	eax, r11d
	sar	eax, 2
	je	.L77
	xor	edx, edx
	sar	r10w, 6
	je	.L77
	cdq
	movsx	r10d, r10w
	idiv	r10d
	mov	edx, eax
	neg	edx
	cmovs	edx, eax
.L77:
	and	r8d, 512
	jne	.L78
	cmp	r9w, 239
	jg	.L72
	mov	eax, 240
	mov	r11d, 426
	xor	r10d, r10d
	sub	eax, r9d
	mov	r9d, 109056
	movzx	eax, ax
	lea	rbx, [rcx+rax*4]
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L80:
	add	eax, edx
	mov	r8d, eax
	sar	r8d, 8
	cmp	r8w, 427
	cmovnb	r8d, r11d
	cmovnb	edx, r10d
	cmovnb	eax, r9d
	add	rcx, 4
	mov	WORD PTR -2[rcx], r8w
	cmp	rcx, rbx
	jne	.L80
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L78:
	test	r9w, r9w
	js	.L72
	movzx	r9d, r9w
	xor	eax, eax
	mov	r11d, 426
	xor	r10d, r10d
	not	r9
	lea	rbx, [rcx+r9*4]
	mov	r9d, 109056
	.p2align 4,,10
	.p2align 3
.L82:
	add	eax, edx
	mov	r8d, eax
	sar	r8d, 8
	cmp	r8w, 427
	cmovnb	r8d, r11d
	cmovnb	edx, r10d
	cmovnb	eax, r9d
	sub	rcx, 4
	mov	WORD PTR 4[rcx], r8w
	cmp	rbx, rcx
	jne	.L82
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	ScreenMask_Upper_OriginLeft
	.def	ScreenMask_Upper_OriginLeft;	.scl	2;	.type	32;	.endef
	.seh_proc	ScreenMask_Upper_OriginLeft
ScreenMask_Upper_OriginLeft:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	eax, edx
	mov	r9d, edx
	mov	r8d, ecx
	and	ax, 1023
	lea	edx, -256[rax]
	cmp	dx, 512
	jbe	.L90
	mov	rdx, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	lea	rcx, 0[0+r8*4]
	and	ecx, 262140
	add	rcx, QWORD PTR [rdx]
	test	r9d, 1022
	jne	.L92
	test	r8w, r8w
	jle	.L90
	movzx	r8d, r8w
	mov	rdx, rcx
	neg	r8
	lea	rax, [rcx+r8*4]
	sub	rdx, rax
	and	edx, 4
	je	.L94
	mov	edx, 426
	sub	rcx, 4
	mov	WORD PTR 2[rcx], dx
	cmp	rax, rcx
	je	.L90
	.p2align 4,,10
	.p2align 3
.L94:
	mov	r8d, 426
	mov	r9d, 426
	sub	rcx, 8
	mov	WORD PTR 6[rcx], r8w
	mov	WORD PTR 2[rcx], r9w
	cmp	rax, rcx
	jne	.L94
.L90:
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L92:
	movzx	edx, ax
	mov	r10, QWORD PTR .refptr.gSineTable[rip]
	lea	eax, 256[rdx]
	cdqe
	movzx	edx, WORD PTR [r10+rdx*2]
	movsx	r11d, WORD PTR [r10+rax*2]
	mov	eax, r11d
	sal	eax, 4
	sub	eax, r11d
	sar	eax, 2
	sar	dx, 6
	je	.L101
	test	eax, eax
	jne	.L116
.L101:
	xor	eax, eax
.L95:
	and	r9d, 512
	jne	.L96
	test	r8w, r8w
	js	.L90
	movzx	r8d, r8w
	lea	r9, -2[rcx]
	xor	edx, edx
	mov	r11d, 426
	sal	r8, 2
	xor	r10d, r10d
	sub	rcx, r8
	mov	r8d, 109056
	lea	rbx, -6[rcx]
	.p2align 4,,10
	.p2align 3
.L98:
	add	edx, eax
	mov	ecx, edx
	sar	ecx, 8
	cmp	cx, 427
	cmovnb	ecx, r11d
	cmovnb	eax, r10d
	cmovnb	edx, r8d
	sub	r9, 4
	mov	WORD PTR 4[r9], cx
	cmp	rbx, r9
	jne	.L98
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L96:
	cmp	r8w, 239
	jg	.L90
	mov	edx, 240
	mov	r11d, 426
	xor	r10d, r10d
	mov	r9d, 109056
	sub	edx, r8d
	movzx	edx, dx
	lea	rbx, [rcx+rdx*4]
	xor	edx, edx
	.p2align 4,,10
	.p2align 3
.L100:
	add	edx, eax
	mov	r8d, edx
	sar	r8d, 8
	cmp	r8w, 427
	cmovnb	r8d, r11d
	cmovnb	eax, r10d
	cmovnb	edx, r9d
	add	rcx, 4
	mov	WORD PTR -4[rcx], r8w
	cmp	rbx, rcx
	jne	.L100
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L116:
	movsx	r10d, dx
	cdq
	idiv	r10d
	mov	edx, eax
	neg	edx
	cmovns	eax, edx
	jmp	.L95
	.seh_endproc
	.p2align 4
	.globl	ScreenMask_Lower_OriginRight
	.def	ScreenMask_Lower_OriginRight;	.scl	2;	.type	32;	.endef
	.seh_proc	ScreenMask_Lower_OriginRight
ScreenMask_Lower_OriginRight:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	esi, edx
	mov	r10d, edx
	and	edx, 1023
	mov	r9d, ecx
	lea	eax, -257[rdx]
	mov	r11d, ecx
	and	si, 1023
	sal	eax, 16
	cmp	eax, 33423360
	ja	.L117
	mov	rax, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	movzx	ebx, cx
	sub	si, 512
	mov	r8, QWORD PTR [rax]
	lea	eax, [rbx+rbx]
	cdqe
	lea	rcx, [r8+rax*2]
	cmp	si, 1
	jbe	.L142
	mov	rdi, QWORD PTR .refptr.gSineTable[rip]
	lea	eax, 256[rdx]
	cdqe
	movsx	eax, WORD PTR [rdi+rax*2]
	movzx	edx, WORD PTR [rdi+rdx*2]
	mov	esi, eax
	sal	esi, 4
	sub	esi, eax
	mov	eax, 256
	sar	esi, 2
	je	.L122
	mov	eax, edx
	sar	ax, 6
	mov	edx, eax
	neg	dx
	cmovs	edx, eax
	xor	eax, eax
	test	dx, dx
	je	.L122
	mov	eax, esi
	neg	eax
	cmovs	eax, esi
	movzx	esi, dx
	cdq
	idiv	esi
.L122:
	and	r10d, 512
	jne	.L123
	cmp	r9w, 239
	jg	.L117
	mov	edx, 240
	mov	r11d, 426
	sub	edx, r9d
	movzx	edx, dx
	lea	r10, [rcx+rdx*4]
	xor	edx, edx
	jmp	.L125
	.p2align 4,,10
	.p2align 3
.L143:
	mov	r9d, r11d
	add	rcx, 4
	sub	r9d, r8d
	mov	WORD PTR -4[rcx], r9w
	cmp	rcx, r10
	je	.L117
.L125:
	add	edx, eax
	mov	r8d, edx
	sar	r8d, 8
	cmp	r8w, 426
	jbe	.L143
	xor	r9d, r9d
	add	rcx, 4
	xor	eax, eax
	mov	edx, 109056
	mov	WORD PTR -4[rcx], r9w
	cmp	rcx, r10
	jne	.L125
.L117:
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L142:
	mov	r8d, 240
	sub	r8d, ebx
	test	r8d, r8d
	jle	.L117
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L121:
	add	eax, 1
	mov	r11d, 426
	add	rcx, 4
	movsx	edx, ax
	mov	WORD PTR -2[rcx], r11w
	cmp	edx, r8d
	jl	.L121
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L123:
	lea	rdx, 960[r8]
	mov	r8d, 240
	cmp	ebx, 239
	jg	.L144
	.p2align 4,,10
	.p2align 3
.L126:
	mov	r10d, 426
	sub	r8d, 1
	sub	rdx, 4
	mov	WORD PTR 2[rdx], r10w
	cmp	r11w, r8w
	jb	.L126
.L127:
	movzx	r9d, r9w
	lea	rdx, -2[rcx]
	mov	r11d, 426
	sal	r9, 2
	sub	rcx, r9
	lea	r10, -6[rcx]
	xor	ecx, ecx
	jmp	.L129
	.p2align 4,,10
	.p2align 3
.L145:
	mov	r9d, r11d
	sub	r9d, r8d
.L128:
	mov	WORD PTR [rdx], r9w
	sub	rdx, 4
	cmp	rdx, r10
	je	.L117
.L129:
	add	ecx, eax
	mov	r8d, ecx
	sar	r8d, 8
	cmp	r8w, 426
	jbe	.L145
	xor	r9d, r9d
	xor	eax, eax
	mov	ecx, 109056
	jmp	.L128
.L144:
	test	r9w, r9w
	js	.L117
	jmp	.L127
	.seh_endproc
	.p2align 4
	.globl	ScreenMask_Upper_OriginRight
	.def	ScreenMask_Upper_OriginRight;	.scl	2;	.type	32;	.endef
	.seh_proc	ScreenMask_Upper_OriginRight
ScreenMask_Upper_OriginRight:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r11d, edx
	mov	r10d, edx
	and	edx, 1023
	mov	r8d, ecx
	lea	eax, -257[rdx]
	and	r11w, 1023
	sal	eax, 16
	cmp	eax, 33423360
	ja	.L146
	mov	rax, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	sub	r11w, 512
	movzx	r9d, r8w
	mov	rcx, QWORD PTR [rax]
	cmp	r11w, 1
	jbe	.L168
	mov	rbx, QWORD PTR .refptr.gSineTable[rip]
	lea	eax, 256[rdx]
	cdqe
	movsx	eax, WORD PTR [rbx+rax*2]
	movzx	edx, WORD PTR [rbx+rdx*2]
	mov	r11d, eax
	sal	r11d, 4
	sub	r11d, eax
	mov	eax, 256
	sar	r11d, 2
	je	.L151
	mov	eax, edx
	sar	ax, 6
	mov	edx, eax
	neg	dx
	cmovs	edx, eax
	xor	eax, eax
	test	dx, dx
	je	.L151
	mov	eax, r11d
	neg	eax
	cmovs	eax, r11d
	movzx	r11d, dx
	cdq
	idiv	r11d
.L151:
	and	r10d, 512
	je	.L169
	add	r9d, r9d
	movsx	r9, r9d
	lea	rdx, [rcx+r9*2]
	test	r8w, r8w
	js	.L146
	movzx	r8d, r8w
	xor	ecx, ecx
	mov	r11d, 426
	not	r8
	lea	r10, [rdx+r8*4]
	jmp	.L158
	.p2align 4,,10
	.p2align 3
.L170:
	mov	r9d, r11d
	sub	rdx, 4
	sub	r9d, r8d
	mov	WORD PTR 4[rdx], r9w
	cmp	r10, rdx
	je	.L146
.L158:
	add	ecx, eax
	mov	r8d, ecx
	sar	r8d, 8
	cmp	r8w, 426
	jbe	.L170
	xor	r9d, r9d
	sub	rdx, 4
	xor	eax, eax
	mov	ecx, 109056
	mov	WORD PTR 4[rdx], r9w
	cmp	r10, rdx
	jne	.L158
.L146:
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L168:
	test	r8w, r8w
	je	.L146
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L150:
	add	eax, 1
	mov	r11d, 426
	add	rcx, 4
	movsx	edx, ax
	mov	WORD PTR -2[rcx], r11w
	cmp	edx, r9d
	jl	.L150
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L169:
	test	r8w, r8w
	je	.L161
	xor	edx, edx
	.p2align 4,,10
	.p2align 3
.L154:
	mov	r10d, 426
	add	edx, 1
	add	rcx, 4
	mov	WORD PTR -2[rcx], r10w
	movsx	r10d, dx
	cmp	r10d, r9d
	jl	.L154
	mov	r10d, r8d
	cmp	r8w, 239
	jg	.L146
.L153:
	mov	edx, eax
	sar	edx, 8
	mov	r9d, edx
	cmp	edx, 426
	jg	.L146
	mov	edx, 240
	sub	edx, r10d
	mov	r10d, 426
	movzx	edx, dx
	lea	r11, [rcx+rdx*4]
	mov	edx, eax
	jmp	.L155
	.p2align 4,,10
	.p2align 3
.L156:
	add	edx, eax
	mov	r8d, edx
	sar	r8d, 8
	mov	r9d, r8d
	cmp	r8w, 426
	ja	.L146
.L155:
	mov	r8d, r10d
	add	rcx, 4
	sub	r8d, r9d
	mov	WORD PTR -2[rcx], r8w
	cmp	r11, rcx
	jne	.L156
	pop	rbx
	ret
.L161:
	xor	r10d, r10d
	jmp	.L153
	.seh_endproc
	.p2align 4
	.globl	ScreenMask_Right_OriginBottom
	.def	ScreenMask_Right_OriginBottom;	.scl	2;	.type	32;	.endef
	.seh_proc	ScreenMask_Right_OriginBottom
ScreenMask_Right_OriginBottom:
	.seh_endprologue
	and	dx, 1023
	cmp	dx, 512
	jbe	.L171
	movzx	edx, dx
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	lea	eax, 256[rdx]
	cdqe
	movsx	r8d, WORD PTR [r9+rax*2]
	mov	eax, r8d
	sal	eax, 4
	sub	eax, r8d
	sar	eax, 2
	jne	.L184
.L173:
	mov	rdx, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	xor	r11d, r11d
	xor	r10d, r10d
	mov	r9, QWORD PTR [rdx]
	lea	rdx, 956[r9]
	sub	r9, 4
	jmp	.L175
	.p2align 4,,10
	.p2align 3
.L185:
	test	r8d, r8d
	cmovs	r8d, r11d
	cmovs	eax, r10d
	cmovs	ecx, r10d
	sub	rdx, 4
	mov	WORD PTR 4[rdx], r8w
	cmp	r9, rdx
	je	.L171
.L175:
	sub	ecx, eax
	mov	r8d, ecx
	sar	r8d, 8
	cmp	ecx, 109311
	jle	.L185
	mov	r8d, 426
	sub	rdx, 4
	xor	eax, eax
	mov	ecx, 109056
	mov	WORD PTR 4[rdx], r8w
	cmp	r9, rdx
	jne	.L175
.L171:
	ret
.L184:
	movzx	edx, WORD PTR [r9+rdx*2]
	sar	dx, 6
	je	.L177
	movsx	r8d, dx
	cdq
	idiv	r8d
	jmp	.L173
.L177:
	mov	eax, 256
	jmp	.L173
	.seh_endproc
	.p2align 4
	.globl	ScreenMask_Left_OriginBottom
	.def	ScreenMask_Left_OriginBottom;	.scl	2;	.type	32;	.endef
	.seh_proc	ScreenMask_Left_OriginBottom
ScreenMask_Left_OriginBottom:
	.seh_endprologue
	and	dx, 1023
	cmp	dx, 512
	jbe	.L186
	movzx	edx, dx
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	lea	eax, 256[rdx]
	cdqe
	movsx	r8d, WORD PTR [r9+rax*2]
	mov	eax, r8d
	sal	eax, 4
	sub	eax, r8d
	sar	eax, 2
	jne	.L199
.L188:
	mov	rdx, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	xor	r11d, r11d
	xor	r10d, r10d
	mov	r9, QWORD PTR [rdx]
	lea	rdx, 956[r9]
	sub	r9, 4
	jmp	.L190
	.p2align 4,,10
	.p2align 3
.L200:
	test	r8d, r8d
	cmovs	r8d, r11d
	cmovs	eax, r10d
	cmovs	ecx, r10d
	sub	rdx, 4
	mov	WORD PTR 2[rdx], r8w
	cmp	r9, rdx
	je	.L186
.L190:
	sub	ecx, eax
	mov	r8d, ecx
	sar	r8d, 8
	cmp	ecx, 109311
	jle	.L200
	mov	r8d, 426
	sub	rdx, 4
	xor	eax, eax
	mov	ecx, 109056
	mov	WORD PTR 2[rdx], r8w
	cmp	r9, rdx
	jne	.L190
.L186:
	ret
.L199:
	movzx	edx, WORD PTR [r9+rdx*2]
	sar	dx, 6
	je	.L192
	movsx	r8d, dx
	cdq
	idiv	r8d
	jmp	.L188
.L192:
	mov	eax, 256
	jmp	.L188
	.seh_endproc
	.p2align 4
	.globl	ScreenMask_Right_OriginTop
	.def	ScreenMask_Right_OriginTop;	.scl	2;	.type	32;	.endef
	.seh_proc	ScreenMask_Right_OriginTop
ScreenMask_Right_OriginTop:
	.seh_endprologue
	and	dx, 1023
	cmp	dx, 512
	ja	.L201
	movzx	edx, dx
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	lea	eax, 256[rdx]
	cdqe
	movsx	r8d, WORD PTR [r9+rax*2]
	mov	eax, r8d
	sal	eax, 4
	sub	eax, r8d
	sar	eax, 2
	jne	.L214
.L203:
	mov	rdx, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	xor	r11d, r11d
	xor	r9d, r9d
	mov	rdx, QWORD PTR [rdx]
	lea	r10, 960[rdx]
	jmp	.L205
	.p2align 4,,10
	.p2align 3
.L215:
	test	r8d, r8d
	cmovs	r8d, r11d
	cmovs	eax, r9d
	cmovs	ecx, r9d
	add	rdx, 4
	mov	WORD PTR -4[rdx], r8w
	cmp	r10, rdx
	je	.L201
.L205:
	add	ecx, eax
	mov	r8d, ecx
	sar	r8d, 8
	cmp	ecx, 109311
	jle	.L215
	mov	r8d, 426
	add	rdx, 4
	xor	eax, eax
	mov	ecx, 109056
	mov	WORD PTR -4[rdx], r8w
	cmp	r10, rdx
	jne	.L205
.L201:
	ret
.L214:
	movzx	edx, WORD PTR [r9+rdx*2]
	sar	dx, 6
	je	.L207
	movsx	r8d, dx
	cdq
	idiv	r8d
	jmp	.L203
.L207:
	mov	eax, 256
	jmp	.L203
	.seh_endproc
	.p2align 4
	.globl	ScreenMask_Left_OriginTop
	.def	ScreenMask_Left_OriginTop;	.scl	2;	.type	32;	.endef
	.seh_proc	ScreenMask_Left_OriginTop
ScreenMask_Left_OriginTop:
	.seh_endprologue
	and	dx, 1023
	cmp	dx, 512
	ja	.L216
	movzx	edx, dx
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	lea	eax, 256[rdx]
	cdqe
	movsx	r8d, WORD PTR [r9+rax*2]
	mov	eax, r8d
	sal	eax, 4
	sub	eax, r8d
	sar	eax, 2
	jne	.L229
.L218:
	mov	rdx, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	xor	r11d, r11d
	xor	r9d, r9d
	mov	rdx, QWORD PTR [rdx]
	lea	r10, 960[rdx]
	jmp	.L220
	.p2align 4,,10
	.p2align 3
.L230:
	test	r8d, r8d
	cmovs	r8d, r11d
	cmovs	eax, r9d
	cmovs	ecx, r9d
	add	rdx, 4
	mov	WORD PTR -2[rdx], r8w
	cmp	r10, rdx
	je	.L216
.L220:
	add	ecx, eax
	mov	r8d, ecx
	sar	r8d, 8
	cmp	ecx, 109311
	jle	.L230
	mov	r8d, 426
	add	rdx, 4
	xor	eax, eax
	mov	ecx, 109056
	mov	WORD PTR -2[rdx], r8w
	cmp	r10, rdx
	jne	.L220
.L216:
	ret
.L229:
	movzx	edx, WORD PTR [r9+rdx*2]
	sar	dx, 6
	je	.L222
	movsx	r8d, dx
	cdq
	idiv	r8d
	jmp	.L218
.L222:
	mov	eax, 256
	jmp	.L218
	.seh_endproc
	.p2align 4
	.globl	ScreenMask_CreateShape
	.def	ScreenMask_CreateShape;	.scl	2;	.type	32;	.endef
	.seh_proc	ScreenMask_CreateShape
ScreenMask_CreateShape:
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
	sub	rsp, 88
	.seh_stackalloc	88
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gHBlankCopySize[rip]
	mov	BYTE PTR [rax], 4
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	ebp, DWORD PTR 192[rsp]
	mov	ebx, DWORD PTR 200[rsp]
	add	rax, 64
	mov	r15d, edx
	mov	rdx, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	mov	edi, ecx
	mov	r12d, r8d
	mov	esi, r9d
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 4
	lea	eax, -1[r9]
	cmp	ax, 424
	ja	.L232
	cmp	bp, 239
	jg	.L233
	mov	rax, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	mov	r10d, 0
	lea	r13, 48[rsp]
	mov	r8, QWORD PTR .refptr.gBgOffsetsBuffer[rip]
	mov	WORD PTR 48[rsp], r10w
	mov	r9d, -2130705472
	cmp	QWORD PTR [rax], r8
	je	.L319
	add	r8, 1920
.L319:
	mov	rdx, r13
	mov	ecx, 3
	movzx	ebx, bl
	movzx	r12d, r12w
	call	DmaSet
	movzx	ecx, di
	lea	edx, -256[rdi]
	mov	r14, QWORD PTR .refptr.gSineTable[rip]
	and	edx, 1023
	lea	r9d, 256[rcx]
	movzx	r8d, r15w
	lea	eax, 256[rdx]
	movsx	r9, r9d
	movsx	r10d, WORD PTR [r14+rcx*2]
	movsx	edx, WORD PTR [r14+rdx*2]
	movsx	r15d, WORD PTR [r14+r9*2]
	cdqe
	movsx	eax, WORD PTR [r14+rax*2]
	mov	WORD PTR 46[rsp], r10w
	imul	r10d, ebx
	mov	ecx, r15d
	imul	edx, r12d
	imul	r8d, eax
	imul	ecx, ebx
	sar	r10d, 14
	imul	eax, r12d
	add	r10d, ebp
	sar	edx, 15
	sar	r8d, 15
	sar	ecx, 14
	lea	ebx, [r10+r8]
	sub	r10d, r8d
	sar	eax, 15
	add	ecx, esi
	mov	WORD PTR 54[rsp], bx
	mov	r9d, ebx
	lea	r12d, [rax+rsi]
	sub	esi, eax
	mov	eax, r15d
	mov	WORD PTR 50[rsp], r10w
	sal	eax, 4
	lea	r11d, [rcx+r8]
	mov	WORD PTR 56[rsp], r12w
	sub	ecx, r8d
	sub	eax, r15d
	lea	r12d, 0[rbp+rdx]
	sub	ebp, edx
	mov	WORD PTR 52[rsp], r11w
	sar	eax, 2
	mov	WORD PTR 48[rsp], cx
	mov	r8d, r10d
	mov	WORD PTR 58[rsp], r12w
	mov	WORD PTR 60[rsp], si
	mov	WORD PTR 62[rsp], bp
	je	.L236
	movzx	edx, WORD PTR 46[rsp]
	sar	dx, 6
	je	.L275
	movsx	esi, dx
	cdq
	idiv	esi
.L236:
	movsx	r11d, r11w
	movsx	ecx, cx
	sal	r11d, 8
	sal	ecx, 8
	cmp	di, 511
	ja	.L329
	cmp	bx, 238
	ja	.L278
	add	r11d, eax
	mov	edx, r11d
	sar	edx, 8
	mov	esi, edx
	cmp	dx, 425
	jg	.L279
	test	dx, dx
	jns	.L244
	jmp	.L330
	.p2align 4,,10
	.p2align 3
.L247:
	add	r11d, eax
	mov	edx, r11d
	sar	edx, 8
	mov	esi, edx
	cmp	dx, 425
	jg	.L331
	test	dx, dx
	js	.L332
.L244:
	add	ebx, 1
	cmp	bx, 239
	jne	.L247
	mov	r9d, 239
.L246:
	mov	ebx, r9d
.L320:
	mov	edi, esi
.L242:
	mov	WORD PTR 64[rsp], si
	mov	WORD PTR 66[rsp], r9w
	cmp	r10w, 238
	ja	.L251
	add	ecx, eax
	mov	edx, ecx
	sar	edx, 8
	mov	r9d, edx
	cmp	dx, 425
	jg	.L283
	test	dx, dx
	jns	.L254
	jmp	.L284
	.p2align 4,,10
	.p2align 3
.L256:
	add	ecx, eax
	mov	edx, ecx
	sar	edx, 8
	mov	r9d, edx
	cmp	dx, 425
	jg	.L321
	test	dx, dx
	js	.L322
.L254:
	add	r10d, 1
	cmp	r10w, 239
	jne	.L256
	mov	r8d, 239
	jmp	.L252
	.p2align 4,,10
	.p2align 3
.L232:
	cmp	r15w, 1
	jbe	.L263
	lea	eax, -257[rcx]
	cmp	ax, 510
	ja	.L267
	cmp	r9w, 425
	jle	.L267
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	movzx	eax, cx
	movsx	ebx, bp
	movzx	r12d, cx
	movsx	eax, WORD PTR [rdx+rax*2]
	movsx	edx, r9w
	sub	edx, 426
	imul	eax, edx
	sar	eax, 14
	add	ebx, eax
	lea	eax, -1[rbx]
	cmp	eax, 238
	jbe	.L333
.L267:
	cmp	di, 512
	ja	.L334
	test	bp, bp
	jns	.L231
	movzx	edi, di
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	movsx	ebp, bp
	movsx	esi, si
	lea	eax, 256[rdi]
	sub	ebp, 240
	cdqe
	movsx	eax, WORD PTR [rdx+rax*2]
	imul	eax, ebp
	sar	eax, 14
	add	esi, eax
	lea	eax, -1[rsi]
	cmp	eax, 424
	ja	.L231
	mov	rax, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	mov	r8, QWORD PTR .refptr.gBgOffsetsBuffer[rip]
	lea	rdx, 48[rsp]
	mov	r9d, -2130705472
	cmp	QWORD PTR [rax], r8
	mov	eax, 427
	mov	WORD PTR 48[rsp], ax
	je	.L325
	add	r8, 1920
.L325:
	mov	ecx, 3
	shr	r15w
	call	DmaSet
	mov	eax, esi
	xor	edx, edx
	sub	eax, r15d
	test	ax, ax
	cmovs	eax, edx
	mov	edx, edi
	add	r15d, esi
	movsx	ecx, ax
	sal	ecx, 8
	call	ScreenMask_Left_OriginTop
	mov	eax, 426
	mov	edx, edi
	cmp	r15w, ax
	cmovg	r15d, eax
	xor	eax, eax
	test	r15w, r15w
	cmovs	r15d, eax
	movsx	ecx, r15w
	sal	ecx, 8
	add	rsp, 88
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	ScreenMask_Right_OriginTop
	.p2align 4,,10
	.p2align 3
.L233:
	cmp	r15w, 1
	jbe	.L263
	cmp	cx, 512
	jbe	.L231
.L264:
	movzx	edi, di
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	movsx	ebp, bp
	movsx	esi, si
	lea	eax, 256[rdi]
	sub	ebp, 240
	cdqe
	movsx	eax, WORD PTR [rdx+rax*2]
	imul	eax, ebp
	sar	eax, 14
	add	esi, eax
	lea	eax, -1[rsi]
	cmp	eax, 424
	jbe	.L335
.L231:
	add	rsp, 88
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
.L334:
	cmp	bp, 239
	jle	.L231
	jmp	.L264
	.p2align 4,,10
	.p2align 3
.L263:
	mov	rax, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	mov	r9d, 0
	lea	rdx, 48[rsp]
	mov	r8, QWORD PTR .refptr.gBgOffsetsBuffer[rip]
	mov	WORD PTR 48[rsp], r9w
	mov	r9d, -2130705472
	cmp	QWORD PTR [rax], r8
	je	.L326
	add	r8, 1920
.L326:
	mov	ecx, 3
	call	DmaSet
	jmp	.L231
	.p2align 4,,10
	.p2align 3
.L329:
	test	bx, bx
	jne	.L250
	jmp	.L336
	.p2align 4,,10
	.p2align 3
.L248:
	test	dx, dx
	js	.L337
	sub	bx, 1
	je	.L338
.L250:
	sub	r11d, eax
	mov	edx, r11d
	sar	edx, 8
	mov	edi, edx
	cmp	dx, 425
	jle	.L248
	mov	edi, 426
.L249:
	mov	WORD PTR 64[rsp], di
	mov	WORD PTR 66[rsp], bx
.L239:
	test	r10w, r10w
	je	.L251
	sub	ecx, eax
	mov	edx, ecx
	sar	edx, 8
	mov	r9d, edx
	cmp	dx, 425
	jg	.L283
	test	dx, dx
	jns	.L253
	jmp	.L284
	.p2align 4,,10
	.p2align 3
.L258:
	sub	ecx, eax
	mov	edx, ecx
	sar	edx, 8
	mov	r9d, edx
	cmp	dx, 425
	jg	.L321
	test	dx, dx
	js	.L322
.L253:
	sub	r10w, 1
	jne	.L258
	xor	r8d, r8d
	.p2align 4,,10
	.p2align 3
.L252:
	mov	WORD PTR 68[rsp], r9w
	mov	WORD PTR 70[rsp], r8w
	cmp	bx, r8w
	je	.L259
	cmp	r9w, di
	je	.L259
	test	di, di
	je	.L260
	cmp	di, 426
	jne	.L286
	test	r9w, r9w
	jne	.L260
.L286:
	mov	edi, r9d
	mov	r8d, ebx
.L260:
	mov	edx, 7
	mov	rcx, r13
	mov	WORD PTR 72[rsp], di
	mov	WORD PTR 74[rsp], r8w
	call	sub_802E49C.part.0
	jmp	.L231
	.p2align 4,,10
	.p2align 3
.L275:
	mov	eax, 109056
	jmp	.L236
	.p2align 4,,10
	.p2align 3
.L333:
	mov	ecx, 427
	lea	rdx, 48[rsp]
	mov	rax, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	mov	r8, QWORD PTR .refptr.gBgOffsetsBuffer[rip]
	mov	WORD PTR 48[rsp], cx
	mov	r9d, -2130705472
	cmp	QWORD PTR [rax], r8
	je	.L323
	add	r8, 1920
.L323:
	mov	ecx, 3
	shr	r15w
	call	DmaSet
	mov	ecx, ebx
	xor	eax, eax
	mov	edx, r12d
	sub	ecx, r15d
	test	cx, cx
	cmovs	ecx, eax
	movsx	ecx, cx
	call	ScreenMask_Upper_OriginRight
	lea	ecx, [r15+rbx]
	mov	eax, 240
	mov	edx, r12d
	cmp	cx, ax
	cmovg	ecx, eax
	xor	eax, eax
	test	cx, cx
	cmovs	ecx, eax
	movsx	ecx, cx
	add	rsp, 88
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	ScreenMask_Lower_OriginRight
.L251:
	mov	WORD PTR 68[rsp], di
	mov	WORD PTR 70[rsp], r10w
	.p2align 4,,10
	.p2align 3
.L259:
	mov	edx, 6
	mov	rcx, r13
	call	sub_802E49C.part.0
	jmp	.L231
	.p2align 4,,10
	.p2align 3
.L321:
	mov	r8d, r10d
	mov	r9d, 426
	jmp	.L252
	.p2align 4,,10
	.p2align 3
.L322:
	mov	r8d, r10d
	xor	r9d, r9d
	jmp	.L252
	.p2align 4,,10
	.p2align 3
.L335:
	mov	rax, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	mov	edx, 427
	mov	r8, QWORD PTR .refptr.gBgOffsetsBuffer[rip]
	mov	r9d, -2130705472
	mov	WORD PTR 48[rsp], dx
	lea	rdx, 48[rsp]
	cmp	QWORD PTR [rax], r8
	je	.L324
	add	r8, 1920
.L324:
	mov	ecx, 3
	shr	r15w
	call	DmaSet
	mov	eax, esi
	xor	edx, edx
	sub	eax, r15d
	test	ax, ax
	cmovs	eax, edx
	mov	edx, edi
	add	r15d, esi
	movsx	ecx, ax
	sal	ecx, 8
	call	ScreenMask_Left_OriginBottom
	mov	eax, 426
	mov	edx, edi
	cmp	r15w, ax
	cmovg	r15d, eax
	xor	eax, eax
	test	r15w, r15w
	cmovs	r15d, eax
	movsx	ecx, r15w
	sal	ecx, 8
	add	rsp, 88
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	ScreenMask_Right_OriginBottom
	.p2align 4,,10
	.p2align 3
.L337:
	xor	edi, edi
	jmp	.L249
	.p2align 4,,10
	.p2align 3
.L338:
	xor	ebx, ebx
	jmp	.L249
	.p2align 4,,10
	.p2align 3
.L331:
	mov	r9d, ebx
	mov	esi, 426
	jmp	.L246
	.p2align 4,,10
	.p2align 3
.L332:
	mov	r9d, ebx
	xor	esi, esi
	jmp	.L246
.L283:
	mov	r9d, 426
	jmp	.L252
.L284:
	xor	r9d, r9d
	jmp	.L252
.L278:
	xor	esi, esi
	xor	edi, edi
	jmp	.L242
.L336:
	mov	DWORD PTR 64[rsp], 0
	xor	edi, edi
	jmp	.L239
.L279:
	mov	esi, 426
	jmp	.L320
.L330:
	xor	esi, esi
	jmp	.L320
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gBgOffsetsBuffer, "dr"
	.globl	.refptr.gBgOffsetsBuffer
	.linkonce	discard
.refptr.gBgOffsetsBuffer:
	.quad	gBgOffsetsBuffer
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
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
	.section	.rdata$.refptr.gBgOffsetsHBlankPrimary, "dr"
	.globl	.refptr.gBgOffsetsHBlankPrimary
	.linkonce	discard
.refptr.gBgOffsetsHBlankPrimary:
	.quad	gBgOffsetsHBlankPrimary
