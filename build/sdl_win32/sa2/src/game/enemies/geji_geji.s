	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	sub_8058480;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8058480
sub_8058480:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 88[rbx]
	add	rsp, 32
	pop	rbx
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	sub_8057F80;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8057F80
sub_8057F80:
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	r15, QWORD PTR 24[rax]
	lea	rax, 16[r15]
	cmp	BYTE PTR 672[r15], 0
	lea	rbp, 80[r15]
	mov	edi, DWORD PTR 156[r15]
	mov	QWORD PTR 48[rsp], rax
	mov	rax, QWORD PTR [r15]
	mov	esi, DWORD PTR 152[r15]
	mov	QWORD PTR 56[rsp], rax
	mov	eax, DWORD PTR 48[r15]
	je	.L4
	test	ah, 8
	je	.L5
	add	edi, 384
	mov	DWORD PTR 156[r15], edi
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L4:
	test	ah, 4
	jne	.L35
	sub	esi, 384
	mov	DWORD PTR 152[r15], esi
.L6:
	add	esi, DWORD PTR 144[r15]
	mov	rbx, QWORD PTR .refptr.gCamera[rip]
	xor	r9d, r9d
	mov	r12d, -13
	add	edi, DWORD PTR 148[r15]
	mov	r13d, esi
	mov	rcx, QWORD PTR 48[rsp]
	sar	r13d, 8
	mov	r14d, edi
	sar	r14d, 8
	mov	eax, r13d
	sub	ax, WORD PTR [rbx]
	mov	edx, r13d
	mov	WORD PTR 54[r15], ax
	mov	eax, r14d
	sub	ax, WORD PTR 4[rbx]
	mov	r8d, r14d
	mov	WORD PTR 56[r15], ax
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L34
.L8:
	movzx	eax, BYTE PTR 674[r15]
	xor	r9d, r9d
	add	eax, r12d
	sub	r12d, 13
	and	eax, 63
	mov	r8d, DWORD PTR 416[r15+rax*4]
	mov	edx, DWORD PTR 160[r15+rax*4]
	mov	eax, r8d
	sub	ax, WORD PTR 4[rbx]
	mov	ecx, edx
	sub	cx, WORD PTR [rbx]
	mov	WORD PTR 120[r15], ax
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	WORD PTR 118[r15], cx
	mov	rcx, rbp
	mov	QWORD PTR 32[rsp], rax
	call	Coll_Player_Enemy
	cmp	r12b, -65
	jne	.L8
	mov	eax, DWORD PTR 144[r15]
	mov	edx, DWORD PTR [rbx]
	sar	eax, 8
	lea	ecx, 554[rdx]
	cmp	eax, ecx
	jg	.L9
	add	edx, -128
	cmp	eax, edx
	jge	.L36
.L9:
	movzx	eax, WORD PTR 54[r15]
	sub	ax, -128
	cmp	ax, 682
	ja	.L11
	movzx	eax, WORD PTR 56[r15]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L10
.L11:
	movzx	eax, BYTE PTR 12[r15]
	mov	rdi, QWORD PTR 56[rsp]
	mov	BYTE PTR [rdi], al
.L34:
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	add	rsp, 72
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
.L35:
	add	esi, 384
	mov	DWORD PTR 152[r15], esi
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L5:
	sub	edi, 384
	mov	DWORD PTR 156[r15], edi
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L36:
	mov	eax, DWORD PTR 148[r15]
	mov	edx, DWORD PTR 4[rbx]
	sar	eax, 8
	lea	ecx, 368[rdx]
	cmp	eax, ecx
	jg	.L9
	add	edx, -128
	cmp	eax, edx
	jl	.L9
	.p2align 4,,10
	.p2align 3
.L10:
	cmp	BYTE PTR 672[r15], 0
	je	.L12
	mov	rdx, QWORD PTR 56[rsp]
	mov	eax, DWORD PTR 156[r15]
	movsx	ecx, BYTE PTR 4[rdx]
	sar	eax, 8
	lea	edx, 0[0+rcx*8]
	cmp	eax, edx
	jg	.L13
	test	BYTE PTR 49[r15], 8
	jne	.L14
.L20:
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	lea	rdx, sub_8058264[rip]
	mov	BYTE PTR 673[r15], 60
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rax], rdx
.L15:
	xor	dil, dil
	xor	sil, sil
	mov	edx, edi
	mov	ecx, esi
	mov	esi, -13
	call	Player_UpdateHomingPosition
	mov	rdi, QWORD PTR 48[rsp]
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	call	DisplaySprite
	mov	rcx, rbp
	call	UpdateSpriteAnimation
.L18:
	movzx	eax, BYTE PTR 674[r15]
	mov	rcx, rbp
	add	eax, esi
	sub	esi, 13
	and	eax, 63
	mov	edx, DWORD PTR 160[r15+rax*4]
	mov	eax, DWORD PTR 416[r15+rax*4]
	sub	dx, WORD PTR [rbx]
	sub	ax, WORD PTR 4[rbx]
	mov	WORD PTR 118[r15], dx
	mov	WORD PTR 120[r15], ax
	call	DisplaySprite
	cmp	sil, -65
	jne	.L18
	movzx	eax, BYTE PTR 674[r15]
	add	eax, 1
	and	eax, 63
	mov	BYTE PTR 674[r15], al
	and	eax, 63
	mov	DWORD PTR 160[r15+rax*4], r13d
	mov	DWORD PTR 416[r15+rax*4], r14d
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
.L12:
	mov	rdx, QWORD PTR 56[rsp]
	mov	eax, DWORD PTR 152[r15]
	movsx	ecx, BYTE PTR 3[rdx]
	sar	eax, 8
	lea	edx, 0[0+rcx*8]
	cmp	eax, edx
	jg	.L16
	test	BYTE PTR 49[r15], 4
	je	.L20
	mov	rdx, QWORD PTR 56[rsp]
	movzx	edx, BYTE PTR 5[rdx]
	add	edx, ecx
	sal	edx, 3
	cmp	eax, edx
	jl	.L15
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L16:
	mov	rdx, QWORD PTR 56[rsp]
	movzx	edx, BYTE PTR 5[rdx]
	add	edx, ecx
	sal	edx, 3
	cmp	eax, edx
	jl	.L15
	test	BYTE PTR 49[r15], 4
	je	.L15
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L13:
	mov	rdx, QWORD PTR 56[rsp]
	movzx	edx, BYTE PTR 6[rdx]
	add	edx, ecx
	sal	edx, 3
	cmp	eax, edx
	jl	.L15
	test	BYTE PTR 49[r15], 8
	je	.L15
	jmp	.L20
.L14:
	mov	rdx, QWORD PTR 56[rsp]
	movzx	edx, BYTE PTR 6[rdx]
	add	edx, ecx
	sal	edx, 3
	cmp	eax, edx
	jl	.L15
	jmp	.L20
	.seh_endproc
	.p2align 4
	.def	sub_8058264;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8058264
sub_8058264:
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
	mov	r13, QWORD PTR .refptr.gCurTask[rip]
	mov	rsi, QWORD PTR .refptr.gCamera[rip]
	xor	r9d, r9d
	mov	rax, QWORD PTR 0[r13]
	mov	rbx, QWORD PTR 24[rax]
	movzx	edx, BYTE PTR 674[rbx]
	mov	rax, QWORD PTR [rbx]
	lea	r14, 16[rbx]
	mov	edi, DWORD PTR 152[rbx]
	mov	r10d, DWORD PTR 156[rbx]
	mov	rcx, r14
	mov	QWORD PTR 40[rsp], rax
	mov	eax, DWORD PTR 160[rbx+rdx*4]
	sub	ax, WORD PTR [rsi]
	add	r10d, DWORD PTR 148[rbx]
	add	edi, DWORD PTR 144[rbx]
	mov	WORD PTR 54[rbx], ax
	mov	ebp, r10d
	mov	r15d, r10d
	mov	eax, DWORD PTR 416[rbx+rdx*4]
	sub	ax, WORD PTR 4[rsi]
	mov	r12d, edi
	sar	ebp, 8
	mov	WORD PTR 56[rbx], ax
	sar	r12d, 8
	mov	r8d, ebp
	mov	edx, r12d
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L48
	mov	eax, DWORD PTR 144[rbx]
	mov	edx, DWORD PTR [rsi]
	sar	eax, 8
	lea	ecx, 554[rdx]
	cmp	eax, ecx
	jle	.L49
.L39:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L41
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L40
.L41:
	movzx	eax, BYTE PTR 12[rbx]
	mov	rsi, QWORD PTR 40[rsp]
	mov	BYTE PTR [rsi], al
.L48:
	mov	rcx, QWORD PTR 0[r13]
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
	add	edx, -128
	cmp	eax, edx
	jl	.L39
	mov	eax, DWORD PTR 148[rbx]
	mov	edx, DWORD PTR 4[rsi]
	sar	eax, 8
	lea	ecx, 368[rdx]
	cmp	eax, ecx
	jg	.L39
	add	edx, -128
	cmp	eax, edx
	jl	.L39
	.p2align 4,,10
	.p2align 3
.L40:
	mov	edx, r15d
	mov	ecx, edi
	xor	dl, dl
	xor	cl, cl
	call	Player_UpdateHomingPosition
	sub	BYTE PTR 673[rbx], 1
	jne	.L42
	cmp	BYTE PTR 672[rbx], 0
	mov	eax, DWORD PTR 48[rbx]
	mov	rdx, QWORD PTR 0[r13]
	je	.L43
	test	ah, 8
	je	.L44
	and	ah, -9
	mov	DWORD PTR 48[rbx], eax
	lea	rax, sub_8057F80[rip]
	mov	QWORD PTR 40[rdx], rax
	.p2align 4,,10
	.p2align 3
.L42:
	mov	rcx, r14
	lea	r13, 80[rbx]
	mov	edi, -13
	call	UpdateSpriteAnimation
	mov	rcx, r14
	call	DisplaySprite
	mov	rcx, r13
	call	UpdateSpriteAnimation
.L46:
	movzx	eax, BYTE PTR 674[rbx]
	mov	rcx, r13
	add	eax, edi
	sub	edi, 13
	and	eax, 63
	mov	edx, DWORD PTR 160[rbx+rax*4]
	mov	eax, DWORD PTR 416[rbx+rax*4]
	sub	dx, WORD PTR [rsi]
	sub	ax, WORD PTR 4[rsi]
	mov	WORD PTR 118[rbx], dx
	mov	WORD PTR 120[rbx], ax
	call	DisplaySprite
	cmp	dil, -65
	jne	.L46
	movzx	eax, BYTE PTR 674[rbx]
	add	eax, 1
	and	eax, 63
	mov	BYTE PTR 674[rbx], al
	and	eax, 63
	mov	DWORD PTR 160[rbx+rax*4], r12d
	mov	DWORD PTR 416[rbx+rax*4], ebp
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
.L43:
	test	ah, 4
	je	.L45
	and	ah, -5
	mov	DWORD PTR 48[rbx], eax
	lea	rax, sub_8057F80[rip]
	mov	QWORD PTR 40[rdx], rax
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L45:
	or	ah, 4
	mov	DWORD PTR 48[rbx], eax
	lea	rax, sub_8057F80[rip]
	mov	QWORD PTR 40[rdx], rax
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L44:
	or	ah, 8
	mov	DWORD PTR 48[rbx], eax
	lea	rax, sub_8057F80[rip]
	mov	QWORD PTR 40[rdx], rax
	jmp	.L42
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_GejiGeji
	.def	CreateEntity_GejiGeji;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_GejiGeji
CreateEntity_GejiGeji:
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
	lea	rax, sub_8058480[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rdi, rcx
	mov	esi, edx
	mov	ebp, r8d
	mov	r12d, r9d
	mov	r8d, 16448
	xor	r9d, r9d
	mov	edx, 680
	lea	rcx, sub_8057F80[rip]
	call	TaskCreate
	mov	ecx, r12d
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 8[rbx], si
	movzx	esi, si
	mov	WORD PTR 10[rbx], bp
	sal	esi, 5
	movzx	ebp, bp
	mov	QWORD PTR [rbx], rdi
	movzx	eax, BYTE PTR [rdi]
	sal	ebp, 5
	movzx	edx, al
	mov	dh, cl
	lea	ecx, [rsi+rax]
	mov	WORD PTR 12[rbx], dx
	mov	edx, ecx
	movzx	esi, BYTE PTR 5[rdi]
	sal	edx, 11
	mov	DWORD PTR 144[rbx], edx
	movzx	eax, BYTE PTR 1[rdi]
	mov	QWORD PTR 152[rbx], 0
	lea	r8d, [rax+rbp]
	mov	eax, r8d
	sal	eax, 11
	cmp	BYTE PTR 6[rdi], sil
	setnb	r9b
	xor	esi, esi
	sar	edx, 8
	mov	DWORD PTR 148[rbx], eax
	mov	BYTE PTR 672[rbx], r9b
	sar	eax, 8
	movd	xmm2, edx
	lea	rdx, 416[rbx]
	mov	WORD PTR 673[rbx], si
	movd	xmm3, eax
	pshufd	xmm1, xmm2, 0
	lea	rax, 160[rbx]
	pshufd	xmm0, xmm3, 0
	.p2align 4,,10
	.p2align 3
.L51:
	movups	XMMWORD PTR [rax], xmm1
	add	rax, 16
	movups	XMMWORD PTR 240[rax], xmm0
	cmp	rdx, rax
	jne	.L51
	movzx	ecx, cx
	sal	r8d, 16
	lea	rsi, gUnknown_080D8F50[rip]
	and	r9d, 1
	or	r8d, ecx
	mov	ecx, DWORD PTR [rsi+r9*8]
	movd	xmm0, r8d
	psllw	xmm0, 3
	movd	DWORD PTR 54[rbx], xmm0
	mov	BYTE PTR [rdi], -2
	call	VramMalloc
	movzx	edx, BYTE PTR 672[rbx]
	mov	r8d, 4351
	mov	DWORD PTR 58[rbx], 1152
	mov	QWORD PTR 24[rbx], rax
	movzx	ecx, WORD PTR 4[rsi+rdx*8]
	mov	rax, rdx
	movzx	edx, BYTE PTR 6[rsi+rdx*8]
	mov	WORD PTR 65[rbx], r8w
	add	eax, 2
	mov	BYTE PTR 69[rbx], 0
	mov	WORD PTR 34[rbx], cx
	xor	ecx, ecx
	cdqe
	mov	BYTE PTR 64[rbx], dl
	xor	edx, edx
	mov	WORD PTR 32[rbx], dx
	mov	WORD PTR 52[rbx], cx
	mov	ecx, DWORD PTR [rsi+rax*8]
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 8192
	mov	DWORD PTR 118[rbx], 0
	call	VramMalloc
	xor	r9d, r9d
	xor	r10d, r10d
	mov	r11d, 4351
	mov	QWORD PTR 88[rbx], rax
	movzx	eax, BYTE PTR 672[rbx]
	mov	WORD PTR 96[rbx], r9w
	add	rax, 2
	mov	WORD PTR 116[rbx], r10w
	movzx	edx, WORD PTR 4[rsi+rax*8]
	movzx	eax, BYTE PTR 6[rsi+rax*8]
	mov	DWORD PTR 122[rbx], 1280
	mov	WORD PTR 129[rbx], r11w
	mov	WORD PTR 98[rbx], dx
	mov	BYTE PTR 128[rbx], al
	mov	BYTE PTR 133[rbx], 0
	mov	DWORD PTR 136[rbx], -1
	mov	DWORD PTR 112[rbx], 8192
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 32
gUnknown_080D8F50:
	.long	9
	.word	512
	.byte	3
	.space 1
	.long	9
	.word	512
	.byte	2
	.space 1
	.long	12
	.word	512
	.byte	1
	.space 1
	.long	12
	.word	512
	.byte	0
	.space 1
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Enemy_Attack;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Enemy;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Player_UpdateHomingPosition;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
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
