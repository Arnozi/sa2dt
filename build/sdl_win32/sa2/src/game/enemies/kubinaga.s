	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	sub_8052F70;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8052F70
sub_8052F70:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 88[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 152[rbx]
	add	rsp, 32
	pop	rbx
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	sub_80524D0;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_80524D0
sub_80524D0:
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
	mov	r12, QWORD PTR .refptr.gCurTask[rip]
	mov	rbp, QWORD PTR .refptr.gCamera[rip]
	xor	r9d, r9d
	mov	rax, QWORD PTR [r12]
	mov	rbx, QWORD PTR 24[rax]
	mov	esi, DWORD PTR 220[rbx]
	mov	edi, DWORD PTR 224[rbx]
	lea	r13, 16[rbx]
	mov	rcx, r13
	mov	r14, QWORD PTR [rbx]
	sar	esi, 8
	sar	edi, 8
	mov	eax, esi
	sub	ax, WORD PTR 0[rbp]
	mov	r8d, edi
	mov	edx, esi
	mov	WORD PTR 54[rbx], ax
	mov	eax, edi
	sub	ax, WORD PTR 4[rbp]
	mov	WORD PTR 56[rbx], ax
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L14
	mov	eax, DWORD PTR 0[rbp]
	lea	edx, 554[rax]
	cmp	esi, edx
	jle	.L16
.L5:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L7
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L6
.L7:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR [r14], al
.L14:
	mov	rcx, QWORD PTR [r12]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L16:
	add	eax, -128
	cmp	esi, eax
	jl	.L5
	mov	eax, DWORD PTR 4[rbp]
	lea	edx, 368[rax]
	cmp	edi, edx
	jg	.L5
	add	eax, -128
	cmp	edi, eax
	jl	.L5
	.p2align 4,,10
	.p2align 3
.L6:
	mov	edx, DWORD PTR 224[rbx]
	mov	ecx, DWORD PTR 220[rbx]
	call	Player_UpdateHomingPosition
	movzx	eax, WORD PTR 236[rbx]
	test	ax, ax
	je	.L8
	sub	eax, 1
	mov	WORD PTR 236[rbx], ax
.L9:
	mov	rcx, r13
	call	DisplaySprite
	cmp	BYTE PTR 64[rbx], 0
	jne	.L13
	xor	DWORD PTR 48[rbx], 1024
.L15:
	mov	rcx, r13
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L8:
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	mov	eax, DWORD PTR 220[rbx]
	mov	edx, DWORD PTR 12[rcx]
	lea	r8d, -30719[rax]
	cmp	r8d, edx
	jg	.L9
	add	eax, 30719
	cmp	edx, eax
	jg	.L9
	mov	r8d, DWORD PTR 224[rbx]
	mov	eax, DWORD PTR 16[rcx]
	lea	ecx, -25599[r8]
	cmp	ecx, eax
	jg	.L9
	add	r8d, 25599
	cmp	eax, r8d
	jg	.L9
	movzx	r8d, BYTE PTR 244[rbx]
	sar	edx, 8
	xor	ecx, ecx
	sar	eax, 8
	mov	WORD PTR 242[rbx], cx
	test	r8b, r8b
	je	.L17
	sub	eax, edi
	and	r8d, 1
	movsx	ecx, ax
	je	.L12
	add	edx, 10
	sub	edx, esi
	movsx	edx, dx
	call	sub_8004418
.L11:
	mov	WORD PTR 238[rbx], ax
	mov	rax, QWORD PTR 220[rbx]
	lea	rdx, sub_80526C8[rip]
	mov	QWORD PTR 228[rbx], rax
	mov	rax, QWORD PTR [r12]
	mov	QWORD PTR 40[rax], rdx
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L13:
	xor	DWORD PTR 48[rbx], 2048
	jmp	.L15
.L17:
	add	eax, 10
	sub	edx, esi
	sub	eax, edi
	movsx	edx, dx
	movsx	ecx, ax
	call	sub_8004418
	jmp	.L11
.L12:
	sub	edx, 10
	sub	edx, esi
	movsx	edx, dx
	call	sub_8004418
	jmp	.L11
	.seh_endproc
	.p2align 4
	.def	sub_8052CC8;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8052CC8
sub_8052CC8:
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
	mov	rdi, QWORD PTR .refptr.gSineTable[rip]
	mov	r12, QWORD PTR .refptr.gCamera[rip]
	movzx	edx, WORD PTR 238[rcx]
	lea	rax, 80[rcx]
	mov	rbx, rcx
	lea	r13, 144[rcx]
	movsx	r8d, WORD PTR 242[rbx]
	mov	QWORD PTR 48[rsp], rax
	lea	rax, 208[rcx]
	mov	QWORD PTR 56[rsp], rax
	lea	eax, 256[rdx]
	movsx	ecx, WORD PTR [rdi+rdx*2]
	cdqe
	mov	edx, r8d
	imul	r8d, r8d, 18725
	movsx	eax, WORD PTR [rdi+rax*2]
	mov	r9d, edx
	lea	r15d, 0[0+rcx*8]
	sar	r9w, 15
	sub	r15d, ecx
	lea	r14d, 0[0+rax*8]
	sar	r15d, 5
	sar	r8d, 26
	sub	r14d, eax
	sub	r8d, r9d
	sar	r14d, 5
	test	r8b, r8b
	je	.L19
	mov	r12, QWORD PTR .refptr.gCamera[rip]
	mov	BYTE PTR 47[rsp], r8b
	xor	esi, esi
	mov	ebp, r14d
	mov	rax, r12
	mov	r12d, r15d
	mov	rdi, rax
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L35:
	mov	eax, -10
	sub	eax, r10d
	add	eax, r8d
.L21:
	mov	WORD PTR 184[rbx], ax
	mov	rcx, r13
	add	ebp, r14d
	add	r12d, r15d
	call	Coll_Player_Projectile
	mov	rcx, r13
	call	DisplaySprite
	cmp	sil, BYTE PTR 47[rsp]
	je	.L34
.L24:
	mov	edx, DWORD PTR 220[rbx]
	mov	r8d, DWORD PTR 224[rbx]
	add	esi, 1
	movzx	ecx, BYTE PTR 244[rbx]
	mov	r10d, DWORD PTR 4[rdi]
	add	edx, ebp
	add	r8d, r12d
	sar	edx, 8
	sar	r8d, 8
	mov	eax, edx
	sub	ax, WORD PTR [rdi]
	mov	WORD PTR 182[rbx], ax
	test	cl, cl
	je	.L35
	lea	r11d, 10[rax]
	sub	eax, 10
	and	ecx, 1
	cmovne	eax, r11d
	mov	WORD PTR 182[rbx], ax
	mov	eax, r8d
	sub	eax, r10d
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L34:
	movzx	ecx, WORD PTR 238[rbx]
	mov	r12, rdi
	mov	rdi, QWORD PTR .refptr.gSineTable[rip]
	movzx	edx, WORD PTR 242[rbx]
	lea	eax, 256[rcx]
	movsx	ecx, WORD PTR [rdi+rcx*2]
	cdqe
	movsx	eax, WORD PTR [rdi+rax*2]
.L19:
	sar	dx, 8
	movzx	r9d, BYTE PTR 244[rbx]
	movq	xmm1, QWORD PTR 220[rbx]
	movsx	edx, dx
	imul	eax, edx
	imul	edx, ecx
	movd	xmm0, eax
	movd	xmm2, edx
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	punpckldq	xmm0, xmm2
	psrad	xmm0, 6
	mov	eax, DWORD PTR 12[rdx]
	mov	edx, DWORD PTR 16[rdx]
	paddd	xmm0, xmm1
	sar	eax, 8
	sar	edx, 8
	movd	edi, xmm0
	pshufd	xmm3, xmm0, 0xe5
	movd	esi, xmm3
	movq	QWORD PTR 228[rbx], xmm0
	sar	edi, 8
	sar	esi, 8
	mov	r8d, edi
	sub	r8w, WORD PTR [r12]
	mov	WORD PTR 118[rbx], r8w
	test	r9b, r9b
	je	.L36
	sub	edx, esi
	and	r9d, 1
	movsx	ecx, dx
	jne	.L37
	lea	edx, -10[rax]
	sub	r8d, 10
	mov	eax, edx
	mov	WORD PTR 118[rbx], r8w
	sub	eax, edi
	movsx	edx, ax
	call	sub_8004418
.L28:
	mov	WORD PTR 208[rbx], ax
	mov	eax, esi
	sub	ax, WORD PTR 4[r12]
	mov	WORD PTR 120[rbx], ax
.L26:
	mov	rcx, QWORD PTR 48[rsp]
	mov	edx, edi
	mov	r8d, esi
	call	Coll_Player_Projectile
	mov	eax, DWORD PTR 118[rbx]
	xor	edx, edx
	mov	DWORD PTR 210[rbx], 16777472
	mov	DWORD PTR 214[rbx], eax
	movzx	eax, WORD PTR 208[rbx]
	lea	ecx, -256[rax]
	mov	WORD PTR 240[rbx], ax
	cmp	cx, 512
	ja	.L29
	xor	ah, 2
	mov	edx, 1
	mov	WORD PTR 208[rbx], ax
.L29:
	mov	BYTE PTR 128[rbx], dl
	mov	rdx, QWORD PTR .refptr.gOamMatrixIndex[rip]
	mov	eax, 488
	mov	WORD PTR 98[rbx], ax
	mov	rsi, QWORD PTR 48[rsp]
	movzx	eax, BYTE PTR [rdx]
	mov	BYTE PTR 129[rbx], -1
	lea	ecx, 1[rax]
	or	eax, 8288
	mov	DWORD PTR 112[rbx], eax
	mov	BYTE PTR [rdx], cl
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rdx, QWORD PTR 56[rsp]
	mov	rcx, rsi
	call	TransformSprite
	mov	rcx, rsi
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L37:
	add	r8d, 10
	lea	edx, 10[rax]
	mov	eax, edx
	mov	WORD PTR 118[rbx], r8w
	sub	eax, edi
	movsx	edx, ax
	call	sub_8004418
	jmp	.L28
	.p2align 4,,10
	.p2align 3
.L36:
	mov	ecx, esi
	sub	cx, WORD PTR 4[r12]
	sub	eax, edi
	add	edx, 10
	sub	ecx, 10
	cwde
	sub	edx, esi
	mov	WORD PTR 120[rbx], cx
	movsx	ecx, dx
	mov	edx, eax
	call	sub_8004418
	mov	WORD PTR 208[rbx], ax
	jmp	.L26
	.seh_endproc
	.p2align 4
	.def	sub_80526C8;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_80526C8
sub_80526C8:
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
	mov	r12, QWORD PTR .refptr.gCurTask[rip]
	mov	rbp, QWORD PTR .refptr.gCamera[rip]
	xor	r9d, r9d
	mov	rax, QWORD PTR [r12]
	mov	edx, DWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rax]
	mov	esi, DWORD PTR 220[rbx]
	lea	r13, 16[rbx]
	mov	r15, QWORD PTR [rbx]
	mov	edi, DWORD PTR 224[rbx]
	mov	r10d, DWORD PTR 228[rbx]
	sar	esi, 8
	mov	r14d, DWORD PTR 232[rbx]
	add	WORD PTR 242[rbx], 512
	sar	edi, 8
	mov	eax, esi
	sar	r10d, 8
	sub	eax, edx
	mov	ecx, edi
	movzx	edx, dx
	mov	r8d, edi
	mov	WORD PTR 54[rbx], ax
	mov	eax, DWORD PTR 4[rbp]
	movd	xmm1, r10d
	pshuflw	xmm0, xmm1, 0
	mov	DWORD PTR 44[rsp], r10d
	sub	ecx, eax
	sal	eax, 16
	or	eax, edx
	mov	WORD PTR 56[rbx], cx
	mov	edx, esi
	mov	rcx, r13
	movd	xmm2, eax
	psubw	xmm0, xmm2
	movd	DWORD PTR 118[rbx], xmm0
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L48
	mov	r8d, r14d
	mov	edx, DWORD PTR 44[rsp]
	xor	r9d, r9d
	lea	rcx, 80[rbx]
	sar	r8d, 8
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L48
	mov	eax, DWORD PTR 0[rbp]
	lea	edx, 554[rax]
	cmp	esi, edx
	jle	.L49
.L41:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L43
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L42
.L43:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR [r15], al
.L48:
	mov	rcx, QWORD PTR [r12]
	add	rsp, 56
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
.L49:
	add	eax, -128
	cmp	esi, eax
	jl	.L41
	mov	eax, DWORD PTR 4[rbp]
	lea	edx, 368[rax]
	cmp	edi, edx
	jg	.L41
	add	eax, -128
	cmp	edi, eax
	jl	.L41
	.p2align 4,,10
	.p2align 3
.L42:
	mov	edx, DWORD PTR 224[rbx]
	mov	ecx, DWORD PTR 220[rbx]
	call	Player_UpdateHomingPosition
	cmp	WORD PTR 242[rbx], 17407
	jle	.L44
	mov	eax, 32
	mov	edx, 17408
	lea	rdi, sub_80528AC[rip]
	mov	WORD PTR 236[rbx], ax
	mov	rax, QWORD PTR [r12]
	mov	WORD PTR 242[rbx], dx
	mov	QWORD PTR 40[rax], rdi
.L44:
	mov	rcx, r13
	call	DisplaySprite
	cmp	BYTE PTR 64[rbx], 0
	je	.L50
	xor	DWORD PTR 48[rbx], 2048
	mov	rcx, r13
	call	DisplaySprite
.L46:
	mov	rcx, rbx
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	sub_8052CC8
	.p2align 4,,10
	.p2align 3
.L50:
	xor	DWORD PTR 48[rbx], 1024
	mov	rcx, r13
	call	DisplaySprite
	jmp	.L46
	.seh_endproc
	.p2align 4
	.def	sub_80528AC;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_80528AC
sub_80528AC:
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
	mov	r12, QWORD PTR .refptr.gCurTask[rip]
	mov	r14, QWORD PTR .refptr.gCamera[rip]
	xor	r9d, r9d
	mov	rax, QWORD PTR [r12]
	mov	ecx, DWORD PTR [r14]
	mov	rbx, QWORD PTR 24[rax]
	mov	esi, DWORD PTR 220[rbx]
	mov	rax, QWORD PTR [rbx]
	lea	r13, 16[rbx]
	mov	edi, DWORD PTR 224[rbx]
	mov	r15d, DWORD PTR 232[rbx]
	sar	esi, 8
	mov	QWORD PTR 40[rsp], rax
	mov	ebp, DWORD PTR 228[rbx]
	sar	edi, 8
	mov	eax, esi
	sar	r15d, 8
	sub	eax, ecx
	mov	edx, edi
	sar	ebp, 8
	movzx	ecx, cx
	mov	WORD PTR 54[rbx], ax
	mov	eax, DWORD PTR 4[r14]
	movzx	r8d, bp
	sub	edx, eax
	sal	eax, 16
	mov	WORD PTR 56[rbx], dx
	mov	edx, r15d
	or	eax, ecx
	mov	rcx, r13
	sal	edx, 16
	movd	xmm1, eax
	or	edx, r8d
	mov	r8d, edi
	movd	xmm0, edx
	mov	edx, esi
	psubw	xmm0, xmm1
	movd	DWORD PTR 118[rbx], xmm0
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L66
	xor	r9d, r9d
	lea	rcx, 80[rbx]
	mov	r8d, r15d
	mov	edx, ebp
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L66
	mov	eax, DWORD PTR [r14]
	lea	edx, 554[rax]
	cmp	esi, edx
	jle	.L67
.L54:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L56
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L55
.L56:
	movzx	eax, BYTE PTR 12[rbx]
	mov	rdi, QWORD PTR 40[rsp]
	mov	BYTE PTR [rdi], al
.L66:
	mov	rcx, QWORD PTR [r12]
	add	rsp, 88
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
.L67:
	add	eax, -128
	cmp	esi, eax
	jl	.L54
	mov	eax, DWORD PTR 4[r14]
	lea	edx, 368[rax]
	cmp	edi, edx
	jg	.L54
	add	eax, -128
	cmp	edi, eax
	jl	.L54
	.p2align 4,,10
	.p2align 3
.L55:
	mov	edx, DWORD PTR 224[rbx]
	mov	ecx, DWORD PTR 220[rbx]
	call	Player_UpdateHomingPosition
	movzx	eax, WORD PTR 236[rbx]
	test	ax, ax
	jne	.L68
	mov	rax, QWORD PTR [r12]
	lea	rsi, sub_8052AEC[rip]
	mov	QWORD PTR 40[rax], rsi
.L58:
	mov	rcx, r13
	call	DisplaySprite
	cmp	BYTE PTR 64[rbx], 0
	jne	.L63
	xor	DWORD PTR 48[rbx], 1024
	mov	rcx, r13
	call	DisplaySprite
.L64:
	mov	rcx, rbx
	add	rsp, 88
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	sub_8052CC8
	.p2align 4,,10
	.p2align 3
.L68:
	lea	edx, -1[rax]
	mov	WORD PTR 236[rbx], dx
	cmp	ax, 17
	jne	.L58
	movzx	eax, WORD PTR 240[rbx]
	mov	edx, DWORD PTR 232[rbx]
	mov	BYTE PTR 52[rsp], 0
	movzx	ecx, BYTE PTR 244[rbx]
	mov	DWORD PTR 48[rsp], 32178177
	mov	WORD PTR 54[rsp], ax
	mov	eax, 320
	mov	WORD PTR 56[rsp], ax
	mov	eax, DWORD PTR 228[rbx]
	test	cl, cl
	jne	.L59
	sub	edx, 2560
.L60:
	lea	rcx, 48[rsp]
	mov	DWORD PTR 60[rsp], eax
	mov	DWORD PTR 64[rsp], edx
	call	CreateProjectile
	jmp	.L58
	.p2align 4,,10
	.p2align 3
.L63:
	xor	DWORD PTR 48[rbx], 2048
	mov	rcx, r13
	call	DisplaySprite
	jmp	.L64
	.p2align 4,,10
	.p2align 3
.L59:
	lea	r8d, 2560[rax]
	sub	eax, 2560
	and	ecx, 1
	cmovne	eax, r8d
	jmp	.L60
	.seh_endproc
	.p2align 4
	.def	sub_8052AEC;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8052AEC
sub_8052AEC:
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
	mov	r12, QWORD PTR .refptr.gCurTask[rip]
	mov	r14, QWORD PTR .refptr.gCamera[rip]
	xor	r9d, r9d
	mov	rax, QWORD PTR [r12]
	mov	ecx, DWORD PTR [r14]
	mov	rbx, QWORD PTR 24[rax]
	mov	esi, DWORD PTR 220[rbx]
	mov	rax, QWORD PTR [rbx]
	lea	r13, 16[rbx]
	mov	edi, DWORD PTR 224[rbx]
	mov	r15d, DWORD PTR 232[rbx]
	sar	esi, 8
	mov	QWORD PTR 40[rsp], rax
	mov	ebp, DWORD PTR 228[rbx]
	sar	edi, 8
	mov	eax, esi
	sar	r15d, 8
	sub	WORD PTR 242[rbx], 512
	sub	eax, ecx
	mov	edx, edi
	sar	ebp, 8
	movzx	ecx, cx
	mov	WORD PTR 54[rbx], ax
	mov	eax, DWORD PTR 4[r14]
	movzx	r8d, bp
	sub	edx, eax
	sal	eax, 16
	mov	WORD PTR 56[rbx], dx
	mov	edx, r15d
	or	eax, ecx
	mov	rcx, r13
	sal	edx, 16
	movd	xmm1, eax
	or	edx, r8d
	mov	r8d, edi
	movd	xmm0, edx
	mov	edx, esi
	psubw	xmm0, xmm1
	movd	DWORD PTR 118[rbx], xmm0
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L79
	xor	r9d, r9d
	lea	rcx, 80[rbx]
	mov	r8d, r15d
	mov	edx, ebp
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L79
	mov	eax, DWORD PTR [r14]
	lea	edx, 554[rax]
	cmp	esi, edx
	jle	.L80
.L72:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L74
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L73
.L74:
	movzx	eax, BYTE PTR 12[rbx]
	mov	rdi, QWORD PTR 40[rsp]
	mov	BYTE PTR [rdi], al
.L79:
	mov	rcx, QWORD PTR [r12]
	add	rsp, 56
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
.L80:
	add	eax, -128
	cmp	esi, eax
	jl	.L72
	mov	eax, DWORD PTR 4[r14]
	lea	edx, 368[rax]
	cmp	edi, edx
	jg	.L72
	add	eax, -128
	cmp	edi, eax
	jl	.L72
	.p2align 4,,10
	.p2align 3
.L73:
	mov	edx, DWORD PTR 224[rbx]
	mov	ecx, DWORD PTR 220[rbx]
	call	Player_UpdateHomingPosition
	cmp	WORD PTR 242[rbx], 0
	js	.L81
.L75:
	mov	rcx, r13
	call	DisplaySprite
	cmp	BYTE PTR 64[rbx], 0
	je	.L82
	xor	DWORD PTR 48[rbx], 2048
	mov	rcx, r13
	call	DisplaySprite
.L77:
	mov	rcx, rbx
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	sub_8052CC8
	.p2align 4,,10
	.p2align 3
.L82:
	xor	DWORD PTR 48[rbx], 1024
	mov	rcx, r13
	call	DisplaySprite
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L81:
	xor	eax, eax
	mov	edx, 120
	lea	rsi, sub_80524D0[rip]
	mov	WORD PTR 242[rbx], ax
	mov	rax, QWORD PTR [r12]
	mov	WORD PTR 236[rbx], dx
	mov	QWORD PTR 40[rax], rsi
	jmp	.L75
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Kubinaga
	.def	CreateEntity_Kubinaga;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Kubinaga
CreateEntity_Kubinaga:
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
	lea	rax, sub_8052F70[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rbp, rcx
	mov	esi, edx
	mov	r12d, r8d
	mov	r13d, r9d
	mov	r8d, 16480
	xor	r9d, r9d
	mov	edx, 248
	lea	rcx, sub_80524D0[rip]
	call	TaskCreate
	xor	r9d, r9d
	mov	ecx, r13d
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 8[rbx], si
	movzx	esi, si
	lea	rdi, 16[rbx]
	mov	WORD PTR 10[rbx], r12w
	sal	esi, 5
	movzx	r12d, r12w
	mov	DWORD PTR 236[rbx], 0
	sal	r12d, 5
	mov	WORD PTR 242[rbx], r9w
	mov	QWORD PTR 228[rbx], 0
	mov	BYTE PTR 244[rbx], 0
	mov	QWORD PTR [rbx], rbp
	movzx	eax, BYTE PTR 0[rbp]
	add	esi, eax
	movzx	edx, al
	mov	eax, esi
	mov	dh, cl
	movzx	esi, si
	mov	ecx, 6
	sal	eax, 11
	mov	WORD PTR 12[rbx], dx
	mov	DWORD PTR 220[rbx], eax
	movzx	eax, BYTE PTR 1[rbp]
	lea	r8d, [rax+r12]
	mov	eax, r8d
	sal	r8d, 16
	or	r8d, esi
	sal	eax, 11
	mov	esi, 4351
	movd	xmm0, r8d
	mov	DWORD PTR 224[rbx], eax
	psllw	xmm0, 3
	movd	DWORD PTR 54[rbx], xmm0
	call	VramMalloc
	lea	rdx, gUnknown_080D8F30[rip]
	xor	r10d, r10d
	xor	r11d, r11d
	mov	QWORD PTR 24[rbx], rax
	movzx	eax, BYTE PTR 3[rbp]
	mov	WORD PTR 32[rbx], r10w
	mov	rcx, rax
	mov	WORD PTR 52[rbx], r11w
	and	ecx, 1
	mov	DWORD PTR 58[rbx], 1152
	movzx	r8d, WORD PTR [rdx+rcx*4]
	movzx	edx, WORD PTR 2[rdx+rcx*4]
	mov	WORD PTR 65[rbx], si
	mov	BYTE PTR 69[rbx], 0
	mov	WORD PTR 34[rbx], r8w
	mov	BYTE PTR 64[rbx], dl
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 8192
	test	al, 1
	je	.L84
	cmp	BYTE PTR 4[rbp], 0
	je	.L85
	mov	BYTE PTR 244[rbx], 1
	mov	DWORD PTR 48[rbx], 9216
.L84:
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	mov	ecx, 4
	mov	DWORD PTR 182[rbx], 0
	call	VramMalloc
	mov	edx, -256
	mov	DWORD PTR 160[rbx], 32047104
	lea	rcx, 144[rbx]
	mov	QWORD PTR 152[rbx], rax
	xor	eax, eax
	mov	WORD PTR 192[rbx], dx
	mov	WORD PTR 180[rbx], ax
	mov	DWORD PTR 186[rbx], 1280
	mov	BYTE PTR 194[rbx], 16
	mov	BYTE PTR 197[rbx], 0
	mov	DWORD PTR 200[rbx], -1
	mov	DWORD PTR 176[rbx], 8192
	call	UpdateSpriteAnimation
	mov	DWORD PTR 118[rbx], 0
	mov	ecx, 16
	call	VramMalloc
	mov	rdx, QWORD PTR .refptr.gOamMatrixIndex[rip]
	xor	ecx, ecx
	mov	r8d, -255
	mov	QWORD PTR 88[rbx], rax
	movzx	eax, BYTE PTR [rdx]
	mov	WORD PTR 116[rbx], cx
	mov	DWORD PTR 96[rbx], 31981568
	lea	ecx, 1[rax]
	or	eax, 8288
	mov	DWORD PTR 122[rbx], 1216
	mov	WORD PTR 128[rbx], r8w
	mov	BYTE PTR 130[rbx], 16
	mov	BYTE PTR 133[rbx], 0
	mov	DWORD PTR 136[rbx], -1
	mov	DWORD PTR 112[rbx], eax
	mov	BYTE PTR [rdx], cl
	lea	rcx, 80[rbx]
	call	UpdateSpriteAnimation
	mov	BYTE PTR 0[rbp], -2
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L85:
	mov	BYTE PTR 244[rbx], 2
	jmp	.L84
	.seh_endproc
	.section .rdata,"dr"
	.align 8
gUnknown_080D8F30:
	.word	490
	.word	0
	.word	490
	.word	1
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Enemy_Attack;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Player_UpdateHomingPosition;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	sub_8004418;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Projectile;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	TransformSprite;	.scl	2;	.type	32;	.endef
	.def	CreateProjectile;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gOamMatrixIndex, "dr"
	.globl	.refptr.gOamMatrixIndex
	.linkonce	discard
.refptr.gOamMatrixIndex:
	.quad	gOamMatrixIndex
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
