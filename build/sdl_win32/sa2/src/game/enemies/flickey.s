	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_Flickey;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_Flickey
TaskDestructor_Flickey:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 104[rbx]
	add	rsp, 32
	pop	rbx
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	Flickey_RenderIronBalls;	.scl	3;	.type	32;	.endef
	.seh_proc	Flickey_RenderIronBalls
Flickey_RenderIronBalls:
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
	mov	esi, 16
	lea	rdi, 96[rcx]
	mov	rbx, rcx
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	mov	rbp, QWORD PTR .refptr.gCamera[rip]
.L4:
	movzx	eax, BYTE PTR 712[rbx]
	mov	rcx, rdi
	sub	eax, esi
	add	esi, 16
	and	eax, 63
	add	rax, 24
	mov	edx, DWORD PTR 8[rbx+rax*8]
	mov	eax, DWORD PTR 12[rbx+rax*8]
	sub	dx, WORD PTR 0[rbp]
	sub	ax, WORD PTR 4[rbp]
	mov	WORD PTR 134[rbx], dx
	mov	WORD PTR 136[rbx], ax
	call	DisplaySprite
	mov	rcx, rdi
	xor	DWORD PTR 128[rbx], 1024
	call	DisplaySprite
	cmp	sil, 64
	jne	.L4
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.def	sub_80591FC;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_80591FC
sub_80591FC:
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
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	r14, QWORD PTR 24[rcx]
	sub	BYTE PTR 196[r14], 1
	je	.L19
	lea	rbx, 96[r14]
	lea	r13, 200[r14]
	mov	rcx, rbx
	lea	rbp, 224[r14]
	call	UpdateSpriteAnimation
	mov	rdi, QWORD PTR .refptr.sub_801EE64[rip]
	mov	rsi, QWORD PTR .refptr.gCamera[rip]
	mov	r12, QWORD PTR .refptr.gStageTime[rip]
.L11:
	mov	eax, DWORD PTR 28[r13]
	movd	xmm0, DWORD PTR 24[r13]
	mov	r9d, 8
	mov	r8d, 1
	movq	xmm1, QWORD PTR 0[r13]
	add	eax, 48
	movd	xmm2, eax
	mov	DWORD PTR 28[r13], eax
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	movq	QWORD PTR 0[r13], xmm0
	movd	edx, xmm0
	pshufd	xmm3, xmm0, 0xe5
	movd	ecx, xmm3
	mov	QWORD PTR 40[rsp], rdi
	sar	edx, 8
	sar	ecx, 8
	mov	QWORD PTR 32[rsp], 0
	call	sub_801F07C
	test	eax, eax
	jns	.L8
	sal	eax, 8
	neg	DWORD PTR 28[r13]
	add	DWORD PTR 4[r13], eax
.L8:
	movzx	eax, BYTE PTR 196[r14]
	cmp	al, 45
	ja	.L9
	test	BYTE PTR [r12], 2
	je	.L10
	cmp	al, 45
	jne	.L9
.L10:
	add	r13, 8
	cmp	r13, rbp
	jne	.L11
.L20:
	add	rsp, 48
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
.L9:
	movzx	eax, WORD PTR 1[r13]
	sub	ax, WORD PTR [rsi]
	mov	rcx, rbx
	add	r13, 8
	mov	WORD PTR 134[r14], ax
	movzx	eax, WORD PTR -3[r13]
	sub	ax, WORD PTR 4[rsi]
	mov	WORD PTR 136[r14], ax
	call	DisplaySprite
	mov	rcx, rbx
	xor	DWORD PTR 128[r14], 1024
	call	DisplaySprite
	cmp	r13, rbp
	jne	.L11
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L19:
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.def	Task_FlickeyMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_FlickeyMain
Task_FlickeyMain:
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
	sub	rsp, 136
	.seh_stackalloc	136
	movups	XMMWORD PTR 96[rsp], xmm6
	.seh_savexmm	xmm6, 96
	movups	XMMWORD PTR 112[rsp], xmm7
	.seh_savexmm	xmm7, 112
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8d, 1
	mov	r9d, 8
	mov	rax, QWORD PTR [rax]
	mov	r14, QWORD PTR 24[rax]
	movzx	eax, WORD PTR 194[r14]
	mov	edi, DWORD PTR 184[r14]
	movq	xmm1, QWORD PTR 184[r14]
	mov	r15, QWORD PTR [r14]
	lea	ebx, 32[rax]
	movsx	eax, WORD PTR 192[r14]
	mov	WORD PTR 194[r14], bx
	movsx	ebx, bx
	movd	xmm2, ebx
	movd	xmm0, eax
	add	edi, eax
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	punpckldq	xmm0, xmm2
	add	ebx, DWORD PTR 188[r14]
	add	edi, DWORD PTR 176[r14]
	paddd	xmm0, xmm1
	add	ebx, DWORD PTR 180[r14]
	sar	edi, 8
	movq	xmm1, QWORD PTR 176[r14]
	sar	ebx, 8
	movq	QWORD PTR 184[r14], xmm0
	movdqu	xmm6, xmm0
	paddd	xmm6, xmm1
	mov	QWORD PTR 40[rsp], rax
	mov	QWORD PTR 32[rsp], 0
	movdqu	xmm7, xmm6
	psrad	xmm7, 8
	pshufd	xmm3, xmm7, 0xe5
	movd	r12d, xmm7
	movd	r13d, xmm3
	mov	edx, r12d
	mov	ecx, r13d
	call	sub_801F07C
	movzx	r8d, BYTE PTR 712[r14]
	mov	rsi, QWORD PTR .refptr.gCamera[rip]
	mov	ebp, eax
	mov	ecx, DWORD PTR [rsi]
	mov	edx, DWORD PTR 4[rsi]
	mov	rax, r8
	add	eax, 1
	sub	edi, ecx
	sub	ebx, edx
	and	eax, 63
	mov	WORD PTR 54[r14], di
	mov	edi, 16
	mov	WORD PTR 56[r14], bx
	lea	rbx, 96[r14]
	movq	QWORD PTR 200[r14+r8*8], xmm7
	mov	BYTE PTR 712[r14], al
.L23:
	sub	eax, edi
	add	edi, 16
	and	eax, 63
	add	rax, 24
	mov	r9d, DWORD PTR 8[r14+rax*8]
	mov	r8d, r9d
	sub	r8d, ecx
	mov	rcx, rbx
	mov	WORD PTR 134[r14], r8w
	mov	r8d, DWORD PTR 12[r14+rax*8]
	mov	eax, r8d
	sub	eax, edx
	mov	edx, r9d
	mov	WORD PTR 136[r14], ax
	call	Coll_Player_Projectile
	cmp	dil, 64
	je	.L22
	movzx	eax, BYTE PTR 712[r14]
	mov	ecx, DWORD PTR [rsi]
	mov	edx, DWORD PTR 4[rsi]
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L22:
	lea	rdi, 16[r14]
	xor	r9d, r9d
	mov	r8d, r13d
	mov	edx, r12d
	mov	rcx, rdi
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L39
	test	ebp, ebp
	js	.L40
	cmp	WORD PTR 194[r14], 0
	jle	.L34
	cmp	BYTE PTR 64[r14], 1
	jne	.L34
	mov	eax, 507
	mov	edx, -254
	mov	WORD PTR 34[r14], ax
	mov	WORD PTR 64[r14], dx
.L34:
	mov	eax, DWORD PTR 176[r14]
	mov	edx, DWORD PTR [rsi]
	sar	eax, 8
	lea	ecx, 554[rdx]
	cmp	eax, ecx
	jg	.L31
	add	edx, -128
	cmp	eax, edx
	jge	.L41
.L31:
	movzx	eax, WORD PTR 54[r14]
	sub	ax, -128
	cmp	ax, 682
	ja	.L33
	movzx	eax, WORD PTR 56[r14]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L32
.L33:
	movzx	eax, BYTE PTR 12[r14]
	mov	BYTE PTR [r15], al
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	movups	xmm6, XMMWORD PTR 96[rsp]
	movups	xmm7, XMMWORD PTR 112[rsp]
	mov	rcx, QWORD PTR [rax]
	add	rsp, 136
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L40:
	mov	ecx, -1024
	mov	r9d, -255
	add	WORD PTR 56[r14], bp
	mov	edx, DWORD PTR 184[r14]
	mov	WORD PTR 64[r14], r9w
	mov	r8d, 507
	sal	ebp, 8
	mov	WORD PTR 194[r14], cx
	movsx	ecx, BYTE PTR 3[r15]
	sar	edx, 8
	add	DWORD PTR 188[r14], ebp
	lea	eax, 0[0+rcx*8]
	mov	WORD PTR 34[r14], r8w
	cmp	edx, eax
	jg	.L29
	cmp	WORD PTR 192[r14], 0
	jns	.L29
.L38:
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	lea	rbx, sub_8058EDC[rip]
	mov	BYTE PTR 64[r14], 0
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rax], rbx
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L29:
	movzx	eax, BYTE PTR 5[r15]
	add	eax, ecx
	sal	eax, 3
	cmp	edx, eax
	jl	.L34
	cmp	WORD PTR 192[r14], 0
	jg	.L38
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L41:
	mov	eax, DWORD PTR 180[r14]
	mov	edx, DWORD PTR 4[rsi]
	sar	eax, 8
	lea	ecx, 368[rdx]
	cmp	eax, ecx
	jg	.L31
	add	edx, -128
	cmp	eax, edx
	jl	.L31
.L32:
	pshufd	xmm5, xmm6, 0xe5
	movd	ecx, xmm6
	movd	edx, xmm5
	xor	dl, dl
	xor	cl, cl
	call	Player_UpdateHomingPosition
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	call	DisplaySprite
	nop
	movups	xmm6, XMMWORD PTR 96[rsp]
	movups	xmm7, XMMWORD PTR 112[rsp]
	mov	rcx, r14
	add	rsp, 136
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	Flickey_RenderIronBalls
	.p2align 4,,10
	.p2align 3
.L39:
	mov	BYTE PTR 196[r14], 120
	mov	rcx, rbx
	lea	rdi, 48[rsp]
	mov	ebp, 16
	mov	r12, rdi
	call	UpdateSpriteAnimation
.L25:
	movzx	edx, BYTE PTR 712[r14]
	add	r12, 12
	sub	edx, ebp
	add	ebp, 16
	mov	rax, rdx
	add	edx, 63
	and	eax, 63
	and	edx, 63
	add	rax, 24
	movq	xmm0, QWORD PTR 8[r14+rax*8]
	mov	ecx, DWORD PTR 8[r14+rax*8]
	mov	eax, DWORD PTR 12[r14+rax*8]
	sub	cx, WORD PTR [rsi]
	sub	ax, WORD PTR 4[rsi]
	mov	WORD PTR 134[r14], cx
	pshufd	xmm4, xmm0, 0xe5
	mov	rcx, rbx
	mov	WORD PTR 136[r14], ax
	movd	eax, xmm4
	movq	QWORD PTR -12[r12], xmm0
	sub	eax, DWORD PTR 204[r14+rdx*8]
	mov	DWORD PTR -4[r12], eax
	call	DisplaySprite
	cmp	bpl, 64
	jne	.L25
	movsx	r8d, WORD PTR 192[r14]
	mov	ecx, 1
.L26:
	mov	eax, r8d
	movq	xmm0, QWORD PTR [rdi]
	add	rdi, 12
	cdq
	idiv	ecx
	pslld	xmm0, 8
	movq	QWORD PTR 192[r14+rcx*8], xmm0
	mov	DWORD PTR 216[r14+rcx*8], eax
	mov	eax, DWORD PTR -4[rdi]
	sal	eax, 8
	mov	DWORD PTR 220[r14+rcx*8], eax
	add	rcx, 1
	cmp	rcx, 4
	jne	.L26
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	lea	rsi, sub_80591FC[rip]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rax], rsi
	movups	xmm6, XMMWORD PTR 96[rsp]
	movups	xmm7, XMMWORD PTR 112[rsp]
	add	rsp, 136
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
	.def	sub_8058EDC;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8058EDC
sub_8058EDC:
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
	sub	rsp, 104
	.seh_stackalloc	104
	movups	XMMWORD PTR 80[rsp], xmm6
	.seh_savexmm	xmm6, 80
	.seh_endprologue
	mov	rbp, QWORD PTR .refptr.gCurTask[rip]
	mov	rsi, QWORD PTR .refptr.gCamera[rip]
	mov	r15d, 16
	mov	rax, QWORD PTR 0[rbp]
	mov	ecx, DWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	edx, DWORD PTR 184[rbx]
	add	edx, DWORD PTR 176[rbx]
	lea	rdi, 96[rbx]
	sar	edx, 8
	mov	eax, DWORD PTR 188[rbx]
	add	eax, DWORD PTR 180[rbx]
	sub	edx, ecx
	movzx	r8d, BYTE PTR 712[rbx]
	sar	eax, 8
	mov	r14, QWORD PTR [rbx]
	movq	xmm0, QWORD PTR 176[rbx]
	mov	WORD PTR 54[rbx], dx
	movq	xmm6, QWORD PTR 184[rbx]
	mov	edx, DWORD PTR 4[rsi]
	paddd	xmm6, xmm0
	sub	eax, edx
	mov	WORD PTR 56[rbx], ax
	mov	rax, r8
	add	eax, 1
	movdqu	xmm0, xmm6
	and	eax, 63
	psrad	xmm0, 8
	movq	QWORD PTR 200[rbx+r8*8], xmm0
	pshufd	xmm1, xmm0, 0xe5
	movd	r12d, xmm0
	movd	r13d, xmm1
	mov	BYTE PTR 712[rbx], al
.L44:
	sub	eax, r15d
	add	r15d, 16
	and	eax, 63
	add	rax, 24
	mov	r9d, DWORD PTR 8[rbx+rax*8]
	mov	r8d, r9d
	sub	r8d, ecx
	mov	rcx, rdi
	mov	WORD PTR 134[rbx], r8w
	mov	r8d, DWORD PTR 12[rbx+rax*8]
	mov	eax, r8d
	sub	eax, edx
	mov	edx, r9d
	mov	WORD PTR 136[rbx], ax
	call	Coll_Player_Projectile
	cmp	r15b, 64
	je	.L43
	movzx	eax, BYTE PTR 712[rbx]
	mov	ecx, DWORD PTR [rsi]
	mov	edx, DWORD PTR 4[rsi]
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L43:
	lea	r15, 16[rbx]
	xor	r9d, r9d
	mov	r8d, r13d
	mov	edx, r12d
	mov	rcx, r15
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L58
	mov	eax, DWORD PTR 176[rbx]
	mov	edx, DWORD PTR [rsi]
	sar	eax, 8
	lea	ecx, 554[rdx]
	cmp	eax, ecx
	jle	.L59
.L49:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L51
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L50
.L51:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR [r14], al
	mov	rcx, QWORD PTR 0[rbp]
	movups	xmm6, XMMWORD PTR 80[rsp]
	add	rsp, 104
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L59:
	add	edx, -128
	cmp	eax, edx
	jl	.L49
	mov	eax, DWORD PTR 180[rbx]
	mov	edx, DWORD PTR 4[rsi]
	sar	eax, 8
	lea	ecx, 368[rdx]
	cmp	eax, ecx
	jg	.L49
	add	edx, -128
	cmp	eax, edx
	jl	.L49
	.p2align 4,,10
	.p2align 3
.L50:
	pshufd	xmm3, xmm6, 0xe5
	movd	ecx, xmm6
	movd	edx, xmm3
	xor	cl, cl
	xor	dl, dl
	call	Player_UpdateHomingPosition
	mov	rcx, r15
	call	UpdateSpriteAnimation
	test	eax, eax
	jne	.L52
	mov	eax, DWORD PTR 48[rbx]
	test	ah, 4
	je	.L53
	and	ah, -5
	mov	edx, -384
.L54:
	mov	DWORD PTR 48[rbx], eax
	mov	eax, 507
	lea	rdi, Task_FlickeyMain[rip]
	mov	WORD PTR 34[rbx], ax
	mov	rax, QWORD PTR 0[rbp]
	mov	WORD PTR 192[rbx], dx
	mov	edx, -255
	mov	WORD PTR 64[rbx], dx
	mov	QWORD PTR 40[rax], rdi
.L52:
	mov	rcx, r15
	call	DisplaySprite
	nop
	movups	xmm6, XMMWORD PTR 80[rsp]
	mov	rcx, rbx
	add	rsp, 104
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	Flickey_RenderIronBalls
	.p2align 4,,10
	.p2align 3
.L58:
	mov	rax, QWORD PTR 0[rbp]
	lea	rcx, sub_80591FC[rip]
	mov	BYTE PTR 196[rbx], 120
	lea	rbp, 32[rsp]
	mov	r13, rbp
	mov	r12d, 16
	mov	QWORD PTR 40[rax], rcx
	mov	rcx, rdi
	call	UpdateSpriteAnimation
.L46:
	movzx	edx, BYTE PTR 712[rbx]
	add	r13, 12
	sub	edx, r12d
	add	r12d, 16
	mov	rax, rdx
	add	edx, 63
	and	eax, 63
	and	edx, 63
	add	rax, 24
	movq	xmm0, QWORD PTR 8[rbx+rax*8]
	mov	ecx, DWORD PTR 8[rbx+rax*8]
	mov	eax, DWORD PTR 12[rbx+rax*8]
	sub	cx, WORD PTR [rsi]
	sub	ax, WORD PTR 4[rsi]
	mov	WORD PTR 134[rbx], cx
	pshufd	xmm2, xmm0, 0xe5
	mov	rcx, rdi
	mov	WORD PTR 136[rbx], ax
	movd	eax, xmm2
	movq	QWORD PTR -12[r13], xmm0
	sub	eax, DWORD PTR 204[rbx+rdx*8]
	mov	DWORD PTR -4[r13], eax
	call	DisplaySprite
	cmp	r12b, 64
	jne	.L46
	movsx	r8d, WORD PTR 192[rbx]
	mov	ecx, 1
.L47:
	mov	eax, r8d
	movq	xmm0, QWORD PTR 0[rbp]
	add	rbp, 12
	cdq
	idiv	ecx
	pslld	xmm0, 8
	movq	QWORD PTR 192[rbx+rcx*8], xmm0
	mov	DWORD PTR 216[rbx+rcx*8], eax
	mov	eax, DWORD PTR -4[rbp]
	sal	eax, 8
	mov	DWORD PTR 220[rbx+rcx*8], eax
	add	rcx, 1
	cmp	rcx, 4
	jne	.L47
	movups	xmm6, XMMWORD PTR 80[rsp]
	add	rsp, 104
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
.L53:
	or	ah, 4
	mov	edx, 384
	jmp	.L54
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Flickey
	.def	CreateEntity_Flickey;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Flickey
CreateEntity_Flickey:
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
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 1
	mov	rsi, rcx
	mov	ebp, edx
	mov	edi, r8d
	mov	r12d, r9d
	je	.L61
	mov	rax, QWORD PTR .refptr.gDifficultyLevel[rip]
	cmp	BYTE PTR [rax], 1
	je	.L60
.L61:
	lea	rax, TaskDestructor_Flickey[rip]
	mov	edx, 720
	lea	rcx, Task_FlickeyMain[rip]
	xor	r9d, r9d
	mov	QWORD PTR 32[rsp], rax
	mov	r8d, 16448
	call	TaskCreate
	mov	ecx, r12d
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 8[rbx], bp
	movzx	ebp, bp
	mov	WORD PTR 10[rbx], di
	sal	ebp, 5
	movzx	edi, di
	mov	QWORD PTR [rbx], rsi
	movzx	eax, BYTE PTR [rsi]
	sal	edi, 5
	movzx	edx, al
	add	eax, ebp
	mov	dh, cl
	mov	WORD PTR 12[rbx], dx
	mov	edx, eax
	sal	eax, 19
	sal	edx, 11
	sar	eax, 16
	mov	DWORD PTR 176[rbx], edx
	movzx	edx, BYTE PTR 1[rsi]
	movd	xmm0, eax
	lea	rax, 200[rbx]
	mov	QWORD PTR 184[rbx], 0
	add	edx, edi
	mov	BYTE PTR 712[rbx], 0
	mov	DWORD PTR 192[rbx], -67043712
	mov	ecx, edx
	sal	edx, 19
	sar	edx, 16
	sal	ecx, 11
	movd	xmm1, edx
	mov	DWORD PTR 180[rbx], ecx
	lea	rdx, 712[rbx]
	punpckldq	xmm0, xmm1
	punpcklqdq	xmm0, xmm0
	.p2align 4,,10
	.p2align 3
.L63:
	movups	XMMWORD PTR [rax], xmm0
	add	rax, 32
	movups	XMMWORD PTR -16[rax], xmm0
	cmp	rdx, rax
	jne	.L63
	mov	DWORD PTR 54[rbx], 0
	mov	ecx, 20
	mov	BYTE PTR [rsi], -2
	call	VramMalloc
	mov	edx, -255
	mov	DWORD PTR 32[rbx], 33226752
	mov	ecx, 8
	mov	QWORD PTR 24[rbx], rax
	xor	eax, eax
	mov	WORD PTR 52[rbx], ax
	mov	DWORD PTR 58[rbx], 1152
	mov	WORD PTR 64[rbx], dx
	mov	BYTE PTR 66[rbx], 16
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 8192
	movzx	eax, BYTE PTR [rsi]
	add	eax, ebp
	sal	eax, 3
	mov	WORD PTR 134[rbx], ax
	movzx	eax, BYTE PTR 1[rsi]
	add	eax, edi
	sal	eax, 3
	mov	WORD PTR 136[rbx], ax
	call	VramMalloc
	xor	ecx, ecx
	mov	r8d, -256
	mov	DWORD PTR 112[rbx], 33292288
	mov	QWORD PTR 104[rbx], rax
	mov	WORD PTR 132[rbx], cx
	mov	DWORD PTR 138[rbx], 1216
	mov	WORD PTR 144[rbx], r8w
	mov	BYTE PTR 146[rbx], 16
	mov	BYTE PTR 149[rbx], 0
	mov	DWORD PTR 152[rbx], -1
	mov	DWORD PTR 128[rbx], 8192
.L60:
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	sub_801F07C;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Projectile;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Enemy_Attack;	.scl	2;	.type	32;	.endef
	.def	Player_UpdateHomingPosition;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gDifficultyLevel, "dr"
	.globl	.refptr.gDifficultyLevel
	.linkonce	discard
.refptr.gDifficultyLevel:
	.quad	gDifficultyLevel
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
	.section	.rdata$.refptr.sub_801EE64, "dr"
	.globl	.refptr.sub_801EE64
	.linkonce	discard
.refptr.sub_801EE64:
	.quad	sub_801EE64
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
