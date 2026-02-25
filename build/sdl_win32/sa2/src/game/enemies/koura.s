	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	sub_8054224;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8054224
sub_8054224:
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
	mov	rbp, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rax]
	movzx	r8d, BYTE PTR 104[rbx]
	mov	r13, QWORD PTR [rbx]
	lea	r12, 16[rbx]
	mov	edx, DWORD PTR 88[rbx]
	mov	ecx, DWORD PTR 92[rbx]
	cmp	r8b, 2
	ja	.L2
	movsx	r9d, WORD PTR 106[rbx]
	add	r9d, DWORD PTR 96[rbx]
	mov	DWORD PTR 96[rbx], r9d
	cmp	r8b, 2
	je	.L40
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	add	ecx, DWORD PTR 100[rbx]
	add	edx, r9d
	mov	QWORD PTR 32[rsp], 0
	sar	edx, 8
	sar	ecx, 8
	mov	r9d, 8
	mov	QWORD PTR 40[rsp], rax
	call	sub_801F07C
	test	eax, eax
	js	.L41
.L6:
	mov	r8d, DWORD PTR 100[rbx]
	mov	r9d, DWORD PTR 96[rbx]
	test	eax, eax
	jle	.L37
	sal	eax, 8
	add	r8d, eax
	mov	DWORD PTR 100[rbx], r8d
.L37:
	mov	edx, DWORD PTR 88[rbx]
	mov	ecx, DWORD PTR 92[rbx]
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L2:
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	movsx	r8d, WORD PTR 108[rbx]
	add	r8d, DWORD PTR 100[rbx]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR 100[rbx], r8d
	lea	eax, [rax+rax*4]
	sal	eax, 2
	and	eax, 1020
	movsx	r9d, WORD PTR [r9+rax*2]
	sar	r9d, 4
	mov	DWORD PTR 96[rbx], r9d
.L5:
	lea	esi, [r9+rdx]
	mov	r14, QWORD PTR .refptr.gCamera[rip]
	lea	edi, [r8+rcx]
	mov	r15, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, esi
	mov	r8d, edi
	sar	edx, 8
	sar	r8d, 8
	mov	eax, edx
	sub	ax, WORD PTR [r14]
	mov	WORD PTR 54[rbx], ax
	mov	eax, r8d
	sub	ax, WORD PTR 4[r14]
	cmp	WORD PTR 22[r15], 0
	mov	WORD PTR 56[rbx], ax
	jle	.L7
	test	BYTE PTR 36[r15], 2
	jne	.L42
.L7:
	xor	r9d, r9d
	mov	rcx, r12
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L38
.L8:
	mov	eax, DWORD PTR 88[rbx]
	mov	edx, DWORD PTR [r14]
	sar	eax, 8
	lea	ecx, 554[rdx]
	cmp	eax, ecx
	jle	.L43
.L10:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L12
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L11
.L12:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR 0[r13], al
.L38:
	mov	rcx, QWORD PTR 0[rbp]
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
.L43:
	add	edx, -128
	cmp	eax, edx
	jl	.L10
	mov	eax, DWORD PTR 92[rbx]
	mov	edx, DWORD PTR 4[r14]
	sar	eax, 8
	lea	ecx, 368[rdx]
	cmp	eax, ecx
	jg	.L10
	add	edx, -128
	cmp	eax, edx
	jl	.L10
	.p2align 4,,10
	.p2align 3
.L11:
	movzx	r8d, BYTE PTR 104[rbx]
	cmp	r8b, 2
	ja	.L13
	mov	eax, DWORD PTR 96[rbx]
	movsx	r9d, BYTE PTR 3[r13]
	sar	eax, 8
	lea	edx, 0[0+r9*8]
	cmp	eax, edx
	jg	.L14
	movzx	edx, WORD PTR 106[rbx]
	test	dx, dx
	js	.L44
.L14:
	movzx	edx, BYTE PTR 5[r13]
	xor	sil, sil
	mov	ecx, esi
	add	edx, r9d
	sal	edx, 3
	cmp	eax, edx
	jl	.L16
	movzx	eax, WORD PTR 106[rbx]
	test	ax, ax
	jle	.L16
	mov	rdx, QWORD PTR 0[rbp]
	cmp	r8b, 2
	lea	rsi, sub_805462C[rip]
	mov	r8d, 492
	mov	QWORD PTR 40[rdx], rsi
	sete	dl
	neg	eax
	add	edx, 5
	mov	WORD PTR 34[rbx], r8w
	mov	BYTE PTR 64[rbx], dl
	mov	BYTE PTR 65[rbx], -1
	mov	WORD PTR 106[rbx], ax
.L16:
	xor	dil, dil
	mov	edx, edi
	call	Player_UpdateHomingPosition
	mov	rcx, r12
	call	UpdateSpriteAnimation
	mov	rcx, r12
	add	rsp, 56
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
.L42:
	mov	r9, r15
	mov	rcx, r12
	call	Coll_Player_Entity_Intersection
	cmp	eax, 524288
	jne	.L8
	mov	rax, QWORD PTR 0[rbp]
	mov	esi, 492
	mov	rcx, r12
	mov	r10d, 14
	lea	rdi, sub_8054904[rip]
	mov	WORD PTR 117[r15], r10w
	mov	r11d, -896
	mov	QWORD PTR 40[rax], rdi
	and	DWORD PTR 36[r15], -257
	cmp	BYTE PTR 104[rbx], 2
	sbb	eax, eax
	mov	WORD PTR 34[rbx], si
	and	eax, -2
	mov	BYTE PTR 65[rbx], -1
	add	eax, 4
	mov	WORD PTR 22[r15], r11w
	mov	BYTE PTR 64[rbx], al
	call	UpdateSpriteAnimation
	mov	rcx, r12
	call	DisplaySprite
	mov	ecx, 153
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L40:
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	mov	eax, DWORD PTR [rax]
	lea	eax, [rax+rax*4]
	sal	eax, 2
	and	eax, 1020
	movsx	r8d, WORD PTR [r8+rax*2]
	sar	r8d, 4
	mov	DWORD PTR 100[rbx], r8d
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L13:
	mov	eax, DWORD PTR 100[rbx]
	movsx	ecx, BYTE PTR 4[r13]
	sar	eax, 8
	lea	edx, 0[0+rcx*8]
	cmp	eax, edx
	jg	.L20
	movzx	edx, WORD PTR 108[rbx]
	test	dx, dx
	js	.L45
.L20:
	movzx	edx, BYTE PTR 6[r13]
	add	edx, ecx
	sal	edx, 3
	cmp	eax, edx
	jl	.L21
	movzx	eax, WORD PTR 108[rbx]
	test	ax, ax
	jle	.L21
	neg	eax
	mov	WORD PTR 108[rbx], ax
.L21:
	xor	sil, sil
	mov	eax, DWORD PTR 12[r15]
	mov	ecx, esi
	test	BYTE PTR 49[rbx], 4
	jne	.L46
	cmp	eax, ecx
	jle	.L16
.L23:
	mov	rax, QWORD PTR 0[rbp]
	lea	rsi, sub_805462C[rip]
	mov	edx, -250
	mov	QWORD PTR 40[rax], rsi
	mov	eax, 492
	mov	WORD PTR 34[rbx], ax
	mov	WORD PTR 64[rbx], dx
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L41:
	sal	eax, 8
	add	eax, DWORD PTR 100[rbx]
	mov	edx, DWORD PTR 96[rbx]
	mov	r9d, 8
	add	edx, DWORD PTR 88[rbx]
	movzx	r8d, BYTE PTR 104[rbx]
	mov	DWORD PTR 100[rbx], eax
	add	eax, DWORD PTR 92[rbx]
	sar	edx, 8
	sar	eax, 8
	mov	ecx, eax
	mov	rax, QWORD PTR .refptr.sub_801EC3C[rip]
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F100
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L46:
	cmp	eax, ecx
	jl	.L23
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L44:
	mov	rax, QWORD PTR 0[rbp]
	cmp	r8b, 2
	lea	rcx, sub_805462C[rip]
	mov	r9d, 492
	mov	QWORD PTR 40[rax], rcx
	sete	al
	neg	edx
	xor	sil, sil
	add	eax, 5
	mov	WORD PTR 34[rbx], r9w
	mov	ecx, esi
	mov	BYTE PTR 64[rbx], al
	mov	BYTE PTR 65[rbx], -1
	mov	WORD PTR 106[rbx], dx
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L45:
	neg	edx
	mov	WORD PTR 108[rbx], dx
	jmp	.L21
	.seh_endproc
	.p2align 4
	.def	sub_805462C;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_805462C
sub_805462C:
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
	mov	rbp, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rax]
	movzx	r8d, BYTE PTR 104[rbx]
	mov	r13, QWORD PTR [rbx]
	lea	r12, 16[rbx]
	mov	r10d, DWORD PTR 88[rbx]
	mov	ecx, DWORD PTR 92[rbx]
	cmp	r8b, 1
	jbe	.L74
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	mov	eax, DWORD PTR [rax]
	lea	eax, [rax+rax*4]
	sal	eax, 2
	and	eax, 1020
	movsx	r9d, WORD PTR [rdx+rax*2]
	sar	r9d, 4
	cmp	r8b, 2
	je	.L75
	mov	DWORD PTR 96[rbx], r9d
	mov	esi, DWORD PTR 100[rbx]
.L50:
	lea	edi, [r9+r10]
	mov	r14, QWORD PTR .refptr.gCamera[rip]
	add	esi, ecx
	mov	r15, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, edi
	mov	r8d, esi
	sar	edx, 8
	sar	r8d, 8
	mov	eax, edx
	sub	ax, WORD PTR [r14]
	mov	WORD PTR 54[rbx], ax
	mov	eax, r8d
	sub	ax, WORD PTR 4[r14]
	cmp	WORD PTR 22[r15], 0
	mov	WORD PTR 56[rbx], ax
	jle	.L52
	test	BYTE PTR 36[r15], 2
	jne	.L76
.L52:
	xor	r9d, r9d
	mov	rcx, r12
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L73
.L53:
	mov	eax, DWORD PTR 88[rbx]
	mov	edx, DWORD PTR [r14]
	sar	eax, 8
	lea	ecx, 554[rdx]
	cmp	eax, ecx
	jg	.L57
	add	edx, -128
	cmp	eax, edx
	jge	.L77
.L57:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L59
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L58
.L59:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR 0[r13], al
.L73:
	mov	rcx, QWORD PTR 0[rbp]
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
.L75:
	mov	DWORD PTR 100[rbx], r9d
	mov	esi, r9d
	mov	r9d, DWORD PTR 96[rbx]
	jmp	.L50
	.p2align 4,,10
	.p2align 3
.L77:
	mov	eax, DWORD PTR 92[rbx]
	mov	edx, DWORD PTR 4[r14]
	sar	eax, 8
	lea	ecx, 368[rdx]
	cmp	eax, ecx
	jg	.L57
	add	edx, -128
	cmp	eax, edx
	jl	.L57
	.p2align 4,,10
	.p2align 3
.L58:
	xor	sil, sil
	xor	dil, dil
	mov	ecx, edi
	mov	edx, esi
	call	Player_UpdateHomingPosition
	mov	rcx, r12
	call	UpdateSpriteAnimation
	test	eax, eax
	jne	.L60
	mov	edx, DWORD PTR 48[rbx]
	lea	rdi, sub_8054224[rip]
	mov	BYTE PTR 65[rbx], -1
	mov	ecx, edx
	mov	eax, edx
	and	ch, -5
	or	ah, 4
	and	dh, 4
	cmovne	eax, ecx
	lea	rdx, gUnknown_080D8F38[rip]
	mov	DWORD PTR 48[rbx], eax
	movzx	eax, BYTE PTR 104[rbx]
	and	eax, 2
	movzx	ecx, WORD PTR [rdx+rax*4]
	movzx	eax, WORD PTR 2[rdx+rax*4]
	mov	BYTE PTR 64[rbx], al
	mov	rax, QWORD PTR 0[rbp]
	mov	WORD PTR 34[rbx], cx
	mov	QWORD PTR 40[rax], rdi
.L60:
	mov	rcx, r12
	add	rsp, 56
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
.L74:
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	mov	edx, DWORD PTR 96[rbx]
	mov	r9d, 8
	add	ecx, DWORD PTR 100[rbx]
	mov	QWORD PTR 32[rsp], 0
	mov	QWORD PTR 40[rsp], rax
	add	edx, r10d
	sar	ecx, 8
	sar	edx, 8
	call	sub_801F07C
	test	eax, eax
	js	.L78
.L49:
	mov	esi, DWORD PTR 100[rbx]
	mov	r9d, DWORD PTR 96[rbx]
	test	eax, eax
	jle	.L72
	sal	eax, 8
	add	esi, eax
	mov	DWORD PTR 100[rbx], esi
.L72:
	mov	r10d, DWORD PTR 88[rbx]
	mov	ecx, DWORD PTR 92[rbx]
	jmp	.L50
	.p2align 4,,10
	.p2align 3
.L76:
	mov	r9, r15
	mov	rcx, r12
	call	Coll_Player_Entity_Intersection
	cmp	eax, 524288
	jne	.L53
	mov	eax, 14
	mov	edx, -896
	and	DWORD PTR 36[r15], -257
	mov	WORD PTR 117[r15], ax
	lea	rdi, sub_8054904[rip]
	mov	WORD PTR 22[r15], dx
	mov	edx, DWORD PTR 48[rbx]
	mov	ecx, edx
	mov	eax, edx
	and	ch, -5
	or	ah, 4
	and	dh, 4
	cmovne	eax, ecx
	mov	ecx, 492
	mov	DWORD PTR 48[rbx], eax
	mov	rax, QWORD PTR 0[rbp]
	mov	QWORD PTR 40[rax], rdi
	cmp	BYTE PTR 104[rbx], 2
	sbb	eax, eax
	mov	WORD PTR 34[rbx], cx
	mov	rcx, r12
	and	eax, -2
	mov	BYTE PTR 65[rbx], -1
	add	eax, 4
	mov	BYTE PTR 64[rbx], al
	call	UpdateSpriteAnimation
	mov	rcx, r12
	call	DisplaySprite
	mov	ecx, 153
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L78:
	sal	eax, 8
	add	eax, DWORD PTR 100[rbx]
	mov	edx, DWORD PTR 96[rbx]
	mov	r9d, 8
	add	edx, DWORD PTR 88[rbx]
	movzx	r8d, BYTE PTR 104[rbx]
	mov	DWORD PTR 100[rbx], eax
	add	eax, DWORD PTR 92[rbx]
	sar	edx, 8
	sar	eax, 8
	mov	ecx, eax
	mov	rax, QWORD PTR .refptr.sub_801EC3C[rip]
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F100
	jmp	.L49
	.seh_endproc
	.p2align 4
	.def	sub_8054904;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8054904
sub_8054904:
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
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	movzx	r10d, BYTE PTR 104[rbx]
	mov	rdi, QWORD PTR [rbx]
	mov	r8d, DWORD PTR 88[rbx]
	mov	r11d, DWORD PTR 92[rbx]
	cmp	r10b, 1
	jbe	.L95
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	mov	eax, DWORD PTR [rax]
	lea	eax, [rax+rax*4]
	sal	eax, 2
	and	eax, 1020
	movsx	r9d, WORD PTR [rdx+rax*2]
	sar	r9d, 4
	cmp	r10b, 2
	je	.L96
	mov	DWORD PTR 96[rbx], r9d
	mov	edx, DWORD PTR 100[rbx]
.L82:
	lea	ecx, [r8+r9]
	mov	r9, QWORD PTR .refptr.gCamera[rip]
	add	edx, r11d
	sar	r8d, 8
	mov	eax, ecx
	mov	r10d, DWORD PTR [r9]
	mov	ebp, DWORD PTR 4[r9]
	mov	r9d, edx
	sar	eax, 8
	sar	r9d, 8
	sub	eax, r10d
	sub	r9d, ebp
	lea	r12d, 554[r10]
	mov	WORD PTR 54[rbx], ax
	mov	WORD PTR 56[rbx], r9w
	cmp	r8d, r12d
	jg	.L84
	add	r10d, -128
	cmp	r8d, r10d
	jl	.L84
	sar	r11d, 8
	lea	r8d, 368[rbp]
	cmp	r11d, r8d
	jle	.L97
	.p2align 4,,10
	.p2align 3
.L84:
	sub	ax, -128
	cmp	ax, 682
	seta	al
	cmp	r9w, -128
	setl	r8b
	or	al, r8b
	jne	.L88
	cmp	r9w, 368
	jg	.L88
.L85:
	xor	cl, cl
	xor	dl, dl
	lea	rdi, 16[rbx]
	call	Player_UpdateHomingPosition
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	test	eax, eax
	jne	.L87
	movzx	eax, BYTE PTR 104[rbx]
	lea	rdx, gUnknown_080D8F38[rip]
	mov	BYTE PTR 65[rbx], -1
	and	eax, 2
	movzx	ecx, WORD PTR [rdx+rax*4]
	movzx	eax, WORD PTR 2[rdx+rax*4]
	mov	BYTE PTR 64[rbx], al
	mov	rax, QWORD PTR [rsi]
	lea	rsi, sub_8054224[rip]
	mov	WORD PTR 34[rbx], cx
	mov	QWORD PTR 40[rax], rsi
.L87:
	mov	rcx, rdi
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L96:
	mov	DWORD PTR 100[rbx], r9d
	mov	edx, r9d
	mov	r9d, DWORD PTR 96[rbx]
	jmp	.L82
	.p2align 4,,10
	.p2align 3
.L88:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR [rdi], al
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L95:
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	mov	ecx, DWORD PTR 100[rbx]
	mov	r9d, 8
	add	r8d, DWORD PTR 96[rbx]
	mov	QWORD PTR 32[rsp], 0
	mov	QWORD PTR 40[rsp], rax
	mov	edx, r8d
	add	ecx, r11d
	movzx	r8d, r10b
	sar	edx, 8
	sar	ecx, 8
	call	sub_801F07C
	test	eax, eax
	js	.L98
.L81:
	mov	edx, DWORD PTR 100[rbx]
	mov	r9d, DWORD PTR 96[rbx]
	test	eax, eax
	jle	.L94
	sal	eax, 8
	add	edx, eax
	mov	DWORD PTR 100[rbx], edx
.L94:
	mov	r8d, DWORD PTR 88[rbx]
	mov	r11d, DWORD PTR 92[rbx]
	jmp	.L82
	.p2align 4,,10
	.p2align 3
.L97:
	add	ebp, -128
	cmp	r11d, ebp
	jge	.L85
	jmp	.L84
	.p2align 4,,10
	.p2align 3
.L98:
	sal	eax, 8
	add	eax, DWORD PTR 100[rbx]
	mov	edx, DWORD PTR 96[rbx]
	mov	r9d, 8
	add	edx, DWORD PTR 88[rbx]
	movzx	r8d, BYTE PTR 104[rbx]
	mov	DWORD PTR 100[rbx], eax
	add	eax, DWORD PTR 92[rbx]
	sar	edx, 8
	sar	eax, 8
	mov	ecx, eax
	mov	rax, QWORD PTR .refptr.sub_801EC3C[rip]
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F100
	jmp	.L81
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Koura
	.def	CreateEntity_Koura;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Koura
CreateEntity_Koura:
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
	mov	rax, QWORD PTR .refptr.TaskDestructor_80095E8[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rsi, rcx
	mov	ebp, edx
	mov	edi, r8d
	mov	r12d, r9d
	mov	edx, 112
	lea	rcx, sub_8054224[rip]
	xor	r9d, r9d
	mov	r8d, 16560
	call	TaskCreate
	mov	ecx, r12d
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 8[rbx], bp
	mov	WORD PTR 10[rbx], di
	mov	QWORD PTR [rbx], rsi
	movzx	eax, BYTE PTR [rsi]
	movzx	edx, al
	mov	dh, cl
	mov	WORD PTR 12[rbx], dx
	movzx	ecx, BYTE PTR 5[rsi]
	cmp	BYTE PTR 6[rsi], cl
	jnb	.L104
	movzx	edx, BYTE PTR 4[rsi]
	mov	r8d, 1
	cmp	dl, 1
	je	.L101
	test	dl, dl
	setne	r8b
	add	r8d, r8d
.L101:
	mov	r9d, r8d
	mov	ecx, -128
	xor	edx, edx
.L100:
	movzx	ebp, bp
	mov	BYTE PTR 104[rbx], r9b
	movzx	r9d, al
	movzx	edi, di
	sal	ebp, 5
	mov	WORD PTR 108[rbx], dx
	sal	edi, 5
	add	r9d, ebp
	mov	WORD PTR 106[rbx], cx
	mov	edx, r9d
	sal	edx, 11
	mov	DWORD PTR 88[rbx], edx
	movzx	eax, BYTE PTR 1[rsi]
	mov	DWORD PTR 96[rbx], 0
	add	eax, edi
	mov	ecx, eax
	sal	ecx, 11
	mov	DWORD PTR 92[rbx], ecx
	cmp	r8b, 1
	jbe	.L107
	mov	DWORD PTR 100[rbx], 0
.L103:
	movzx	r9d, r9w
	sal	eax, 16
	mov	ecx, 30
	or	eax, r9d
	movd	xmm0, eax
	psllw	xmm0, 3
	movd	DWORD PTR 54[rbx], xmm0
	mov	BYTE PTR [rsi], -2
	call	VramMalloc
	lea	rdx, gUnknown_080D8F38[rip]
	mov	BYTE PTR 69[rbx], 0
	mov	QWORD PTR 24[rbx], rax
	movzx	eax, BYTE PTR 104[rbx]
	mov	DWORD PTR 58[rbx], 1152
	and	eax, 2
	mov	DWORD PTR 72[rbx], -1
	movzx	ecx, WORD PTR [rdx+rax*4]
	movzx	eax, WORD PTR 2[rdx+rax*4]
	xor	edx, edx
	mov	DWORD PTR 48[rbx], 8192
	mov	WORD PTR 52[rbx], dx
	mov	WORD PTR 34[rbx], cx
	mov	ecx, 4351
	mov	BYTE PTR 64[rbx], al
	xor	eax, eax
	mov	WORD PTR 32[rbx], ax
	mov	WORD PTR 65[rbx], cx
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L104:
	mov	r9d, 3
	xor	ecx, ecx
	mov	edx, -128
	mov	r8d, 3
	jmp	.L100
	.p2align 4,,10
	.p2align 3
.L107:
	sar	edx, 8
	mov	r9d, 8
	sar	ecx, 8
	and	r8d, 3
	mov	QWORD PTR 32[rsp], 0
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	mov	QWORD PTR 40[rsp], rax
	call	sub_801F07C
	sal	eax, 8
	mov	DWORD PTR 100[rbx], eax
	movzx	r9d, BYTE PTR [rsi]
	movzx	eax, BYTE PTR 1[rsi]
	add	r9d, ebp
	add	eax, edi
	jmp	.L103
	.seh_endproc
	.section .rdata,"dr"
	.align 16
gUnknown_080D8F38:
	.word	492
	.word	1
	.word	492
	.word	2
	.word	492
	.word	3
	.word	492
	.word	4
	.word	492
	.word	5
	.word	492
	.word	6
	.ident	"GCC: (GNU) 13-win32"
	.def	sub_801F07C;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Enemy_Attack;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Player_UpdateHomingPosition;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Entity_Intersection;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	sub_801F100;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.TaskDestructor_80095E8, "dr"
	.globl	.refptr.TaskDestructor_80095E8
	.linkonce	discard
.refptr.TaskDestructor_80095E8:
	.quad	TaskDestructor_80095E8
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
	.section	.rdata$.refptr.sub_801EC3C, "dr"
	.globl	.refptr.sub_801EC3C
	.linkonce	discard
.refptr.sub_801EC3C:
	.quad	sub_801EC3C
	.section	.rdata$.refptr.sub_801EE64, "dr"
	.globl	.refptr.sub_801EE64
	.linkonce	discard
.refptr.sub_801EE64:
	.quad	sub_801EE64
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
