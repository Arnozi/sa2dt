	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	sub_8074E44;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8074E44
sub_8074E44:
	.seh_endprologue
	mov	rax, rcx
	mov	rcx, QWORD PTR [rcx]
	movzx	r8d, WORD PTR 102[rax]
	test	r8w, r8w
	jne	.L2
	movzx	r8d, WORD PTR 104[rax]
	movd	xmm1, DWORD PTR 88[rax]
	test	r8w, r8w
	jne	.L4
.L7:
	movd	xmm2, DWORD PTR 92[rax]
.L5:
	movzx	edx, WORD PTR 8[rax]
	punpckldq	xmm1, xmm2
	psrad	xmm1, 8
	movd	xmm0, edx
	movzx	edx, WORD PTR 10[rax]
	movd	xmm4, edx
	movzx	edx, BYTE PTR 12[rax]
	punpckldq	xmm0, xmm4
	movd	xmm3, edx
	movzx	edx, BYTE PTR 1[rcx]
	pslld	xmm0, 5
	movd	xmm5, edx
	punpckldq	xmm3, xmm5
	paddd	xmm0, xmm3
	pslld	xmm0, 3
	paddd	xmm0, xmm1
	movq	QWORD PTR 80[rax], xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	mov	r9, QWORD PTR .refptr.gStageTime[rip]
	movzx	edx, WORD PTR 106[rax]
	add	edx, DWORD PTR [r9]
	movzx	edx, dl
	imul	edx, r8d
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	and	edx, 1023
	movsx	edx, WORD PTR [r8+rdx*2]
	movzx	r8d, BYTE PTR 5[rcx]
	imul	edx, r8d
	movzx	r8d, WORD PTR 104[rax]
	sal	edx, 11
	sar	edx, 15
	mov	DWORD PTR 88[rax], edx
	movd	xmm1, edx
	test	r8w, r8w
	je	.L7
.L4:
	mov	r9, QWORD PTR .refptr.gStageTime[rip]
	movzx	edx, WORD PTR 106[rax]
	add	edx, DWORD PTR [r9]
	movzx	edx, dl
	imul	edx, r8d
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	and	edx, 1023
	movsx	edx, WORD PTR [r8+rdx*2]
	movzx	r8d, BYTE PTR 6[rcx]
	imul	edx, r8d
	sal	edx, 11
	sar	edx, 15
	mov	DWORD PTR 92[rax], edx
	movd	xmm2, edx
	jmp	.L5
	.seh_endproc
	.p2align 4
	.def	sub_8074EF4;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8074EF4
sub_8074EF4:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	mov	rbx, rcx
	test	BYTE PTR 36[rsi], -128
	je	.L9
.L11:
	xor	eax, eax
.L8:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	mov	edx, DWORD PTR 80[rcx]
	mov	r8d, DWORD PTR 84[rbx]
	lea	rcx, 16[rcx]
	mov	r9, rsi
	call	Coll_Player_Interactable
	test	eax, eax
	je	.L11
	mov	edx, DWORD PTR 16[rsi]
	mov	ecx, edx
	sar	ecx, 8
	cmp	ecx, DWORD PTR 84[rbx]
	jl	.L29
	test	eax, 65536
	jne	.L30
	test	eax, 131072
	jne	.L31
	test	eax, 262144
	jne	.L32
	test	eax, 524288
	je	.L11
	xor	al, al
	cwde
	add	DWORD PTR 12[rsi], eax
	cmp	WORD PTR 20[rsi], 0
	jle	.L19
.L22:
	xor	eax, eax
	xor	edx, edx
	mov	WORD PTR 20[rsi], ax
	mov	WORD PTR 24[rsi], dx
.L19:
	mov	eax, 1
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L32:
	xor	al, al
	cwde
	add	DWORD PTR 12[rsi], eax
	cmp	WORD PTR 20[rsi], 0
	jns	.L19
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L29:
	movsx	eax, BYTE PTR 77[rbx]
	sal	eax, 8
	add	eax, edx
	cmp	WORD PTR 22[rsi], 0
	mov	DWORD PTR 16[rsi], eax
	jle	.L14
.L13:
	xor	r8d, r8d
	mov	WORD PTR 22[rsi], r8w
.L14:
	mov	eax, 2
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L31:
	sal	eax, 8
	cwde
	add	eax, edx
	cmp	WORD PTR 22[rsi], 0
	mov	DWORD PTR 16[rsi], eax
	jns	.L19
	xor	ecx, ecx
	mov	WORD PTR 22[rsi], cx
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L30:
	sal	eax, 8
	cwde
	add	eax, edx
	cmp	WORD PTR 22[rsi], 0
	mov	DWORD PTR 16[rsi], eax
	jg	.L13
	jmp	.L14
	.seh_endproc
	.p2align 4
	.def	sub_8075140;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8075140
sub_8075140:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	eax, DWORD PTR 96[rbx]
	test	eax, eax
	jne	.L35
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L35:
	mov	rcx, QWORD PTR 24[rbx]
	call	VramFree
	mov	QWORD PTR 24[rbx], 0
	mov	DWORD PTR 96[rbx], 0
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	sub_8075154;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8075154
sub_8075154:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	BYTE PTR 117[rax], 14
	cmp	WORD PTR 100[rcx], 0
	mov	edx, DWORD PTR 96[rcx]
	mov	rbx, rcx
	je	.L53
	mov	BYTE PTR 118[rax], 3
	test	edx, edx
	je	.L41
.L42:
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	edx, 1
	movzx	eax, BYTE PTR [rax]
	sar	al, 2
	cmp	al, 2
	sete	al
	movzx	eax, al
	lea	eax, 568[rax+rax*2]
.L40:
	mov	BYTE PTR 64[rbx], dl
	lea	rcx, 16[rbx]
	mov	WORD PTR 34[rbx], ax
	call	UpdateSpriteAnimation
	mov	ecx, 153
	call	m4aSongNumStart
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	lea	rdx, sub_80752D8[rip]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L53:
	mov	BYTE PTR 118[rax], 0
	test	edx, edx
	je	.L41
.L39:
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	edx, 3
	movzx	eax, BYTE PTR [rax]
	sar	al, 2
	cmp	al, 2
	sete	al
	movzx	eax, al
	lea	eax, 568[rax+rax*2]
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L41:
	mov	ecx, 28
	call	VramMalloc
	cmp	WORD PTR 100[rbx], 0
	mov	BYTE PTR 65[rbx], -1
	mov	QWORD PTR 24[rbx], rax
	mov	eax, -1
	mov	WORD PTR 62[rbx], ax
	mov	DWORD PTR 96[rbx], 1
	je	.L39
	jmp	.L42
	.seh_endproc
	.p2align 4
	.def	sub_80750A8;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_80750A8
sub_80750A8:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rcx, rbx
	call	sub_8074E44
	mov	r9, QWORD PTR [rbx]
	mov	rsi, QWORD PTR .refptr.gCamera[rip]
	mov	edx, DWORD PTR 80[rbx]
	mov	ecx, DWORD PTR 84[rbx]
	movzx	eax, BYTE PTR 5[r9]
	sub	dx, WORD PTR [rsi]
	movsx	edx, dx
	mov	r10d, DWORD PTR 4[rsi]
	add	eax, 16
	neg	eax
	sal	eax, 3
	cmp	edx, eax
	jl	.L55
	mov	r8d, 426
	sub	r8d, eax
	cmp	edx, r8d
	jg	.L55
	movzx	edx, BYTE PTR 6[r9]
	sub	ecx, r10d
	movsx	ecx, cx
	lea	eax, 16[rdx]
	neg	eax
	sal	eax, 3
	cmp	ecx, eax
	jl	.L55
	lea	eax, 368[0+rdx*8]
	cmp	ecx, eax
	jg	.L55
	mov	r8d, DWORD PTR 96[rbx]
	test	r8d, r8d
	jne	.L57
	mov	ecx, 28
	call	VramMalloc
	mov	edx, -1
	mov	BYTE PTR 65[rbx], -1
	cmp	WORD PTR 100[rbx], 0
	mov	QWORD PTR 24[rbx], rax
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	WORD PTR 62[rbx], dx
	mov	DWORD PTR 96[rbx], 1
	movzx	eax, BYTE PTR [rax]
	je	.L58
	sar	al, 2
	cmp	al, 2
	sete	al
	xor	edx, edx
	movzx	eax, al
	lea	eax, 568[rax+rax*2]
.L59:
	mov	WORD PTR 34[rbx], ax
	lea	rcx, 16[rbx]
	mov	BYTE PTR 64[rbx], dl
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	call	sub_8074EF4
	cmp	eax, 2
	jne	.L60
	.p2align 4,,10
	.p2align 3
.L67:
	mov	rcx, rbx
	call	sub_8075154
	jmp	.L60
	.p2align 4,,10
	.p2align 3
.L55:
	mov	ecx, DWORD PTR 96[rbx]
	test	ecx, ecx
	jne	.L66
.L57:
	mov	rcx, rbx
	call	sub_8074EF4
	cmp	eax, 2
	je	.L67
.L60:
	mov	rcx, QWORD PTR [rbx]
	mov	edx, DWORD PTR 80[rbx]
	sub	dx, WORD PTR [rsi]
	mov	r8d, DWORD PTR 84[rbx]
	movzx	r10d, BYTE PTR 5[rcx]
	movsx	r9d, dx
	mov	r11d, DWORD PTR 4[rsi]
	lea	eax, 16[r10]
	neg	eax
	sal	eax, 3
	cmp	r9d, eax
	jl	.L61
	lea	eax, 554[0+r10*8]
	cmp	r9d, eax
	jg	.L61
	movzx	r10d, BYTE PTR 6[rcx]
	mov	eax, r8d
	sub	eax, r11d
	lea	r8d, 16[r10]
	movsx	r9d, ax
	neg	r8d
	sal	r8d, 3
	cmp	r9d, r8d
	jl	.L61
	lea	r8d, 624[0+r10*8]
	cmp	r9d, r8d
	jg	.L61
	mov	WORD PTR 56[rbx], ax
	mov	eax, DWORD PTR 96[rbx]
	mov	WORD PTR 54[rbx], dx
	test	eax, eax
	jne	.L68
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L61:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR [rcx], al
	mov	rcx, QWORD PTR [rdi]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L68:
	lea	rcx, 16[rbx]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L66:
	mov	rcx, QWORD PTR 24[rbx]
	call	VramFree
	mov	QWORD PTR 24[rbx], 0
	mov	DWORD PTR 96[rbx], 0
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L58:
	sar	al, 2
	mov	edx, 2
	cmp	al, 2
	sete	al
	movzx	eax, al
	lea	eax, 568[rax+rax*2]
	jmp	.L59
	.seh_endproc
	.p2align 4
	.def	sub_80752D8;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_80752D8
sub_80752D8:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rcx, rbx
	lea	rsi, 16[rbx]
	call	sub_8074E44
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 80[rbx]
	sub	ax, WORD PTR [rdx]
	mov	WORD PTR 54[rbx], ax
	mov	eax, DWORD PTR 84[rbx]
	sub	ax, WORD PTR 4[rdx]
	mov	WORD PTR 56[rbx], ax
	test	BYTE PTR 49[rbx], 64
	jne	.L70
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	call	sub_8074EF4
	cmp	eax, 2
	je	.L77
.L74:
	mov	rcx, rsi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L70:
	movzx	edx, WORD PTR 100[rbx]
	mov	eax, edx
	xor	eax, 1
	mov	WORD PTR 100[rbx], ax
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	eax, BYTE PTR [rax]
	sar	al, 2
	cmp	al, 2
	sete	al
	movzx	eax, al
	lea	eax, 568[rax+rax*2]
	cmp	dx, 1
	jne	.L78
	mov	edx, 2
.L73:
	mov	BYTE PTR 64[rbx], dl
	mov	rcx, rsi
	mov	WORD PTR 34[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	mov	rax, QWORD PTR [rdi]
	lea	rdi, sub_80750A8[rip]
	mov	rcx, rbx
	mov	QWORD PTR 40[rax], rdi
	call	sub_8074EF4
	cmp	eax, 2
	jne	.L74
.L77:
	mov	rcx, rbx
	call	sub_8075154
	mov	rcx, rsi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L78:
	xor	edx, edx
	jmp	.L73
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_FloatingSpring_Up
	.def	CreateEntity_FloatingSpring_Up;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_FloatingSpring_Up
CreateEntity_FloatingSpring_Up:
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
	lea	rax, sub_8075140[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rsi, rcx
	mov	r13d, edx
	mov	r12d, r8d
	mov	ebp, r9d
	mov	r8d, 8208
	xor	r9d, r9d
	mov	edx, 112
	lea	rcx, sub_80750A8[rip]
	call	TaskCreate
	mov	edx, ebp
	xor	ecx, ecx
	mov	r8d, 4351
	mov	rbx, QWORD PTR 24[rax]
	xor	eax, eax
	mov	QWORD PTR 88[rbx], 0
	lea	rdi, 16[rbx]
	mov	WORD PTR 100[rbx], ax
	mov	QWORD PTR [rbx], rsi
	mov	WORD PTR 8[rbx], r13w
	mov	WORD PTR 10[rbx], r12w
	movzx	eax, BYTE PTR [rsi]
	mov	WORD PTR 52[rbx], cx
	mov	ecx, 28
	mov	ah, dl
	xor	edx, edx
	mov	DWORD PTR 58[rbx], 1152
	mov	WORD PTR 12[rbx], ax
	mov	WORD PTR 32[rbx], dx
	mov	WORD PTR 65[rbx], r8w
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 8192
	mov	DWORD PTR 96[rbx], 0
	mov	QWORD PTR 24[rbx], 0
	call	VramMalloc
	mov	r9d, -1
	mov	BYTE PTR 65[rbx], -1
	mov	QWORD PTR 24[rbx], rax
	movzx	eax, BYTE PTR 5[rsi]
	mov	WORD PTR 62[rbx], r9w
	mov	DWORD PTR 96[rbx], 1
	cmp	BYTE PTR 6[rsi], al
	jnb	.L80
	movsx	ax, BYTE PTR 3[rsi]
	mov	ecx, 4
	xor	edx, edx
	and	ax, 128
.L81:
	mov	WORD PTR 106[rbx], ax
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	WORD PTR 104[rbx], dx
	movzx	eax, BYTE PTR [rax]
	mov	WORD PTR 102[rbx], cx
	sar	al, 2
	cmp	al, 2
	sete	al
	xor	edx, edx
	cmp	WORD PTR 100[rbx], 0
	movzx	eax, al
	lea	eax, 568[rax+rax*2]
	jne	.L83
	mov	edx, 2
.L83:
	mov	BYTE PTR 64[rbx], dl
	mov	rcx, rdi
	mov	WORD PTR 34[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	call	sub_8074E44
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 80[rbx]
	sub	ax, WORD PTR [rdx]
	mov	WORD PTR 54[rbx], ax
	mov	eax, DWORD PTR 84[rbx]
	sub	ax, WORD PTR 4[rdx]
	mov	WORD PTR 56[rbx], ax
	mov	BYTE PTR [rsi], -2
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
.L80:
	movsx	ax, BYTE PTR 4[rsi]
	xor	ecx, ecx
	mov	edx, 4
	and	ax, 128
	jmp	.L81
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	Coll_Player_Interactable;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
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
