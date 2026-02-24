	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_EntitiesManager;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_EntitiesManager
TaskDestructor_EntitiesManager:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR [rbx]
	call	EwramFree
	mov	rcx, QWORD PTR 8[rbx]
	call	EwramFree
	mov	rcx, QWORD PTR 16[rbx]
	call	EwramFree
	mov	rax, QWORD PTR .refptr.gEntitiesManagerTask[rip]
	mov	QWORD PTR [rax], 0
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	SpawnMapEntities;	.scl	3;	.type	32;	.endef
	.seh_proc	SpawnMapEntities
SpawnMapEntities:
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
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rax], 2
	jne	.L3
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	mov	rsi, QWORD PTR 24[r8]
	cmp	BYTE PTR [rax], 5
	mov	rdx, QWORD PTR [rsi]
	je	.L5
	mov	rax, QWORD PTR 16[rsi]
	add	rax, 12
	mov	QWORD PTR 48[rsp], rax
	mov	rax, QWORD PTR 8[rsi]
	add	rax, 12
	mov	QWORD PTR 40[rsp], rax
.L5:
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	movzx	r11d, WORD PTR 4[rdx]
	lea	rax, 12[rdx]
	movzx	ebx, WORD PTR 8[rdx]
	xor	edx, edx
	movq	xmm0, QWORD PTR [rdi]
	mov	edi, DWORD PTR [rdi]
	mov	ecx, r11d
	mov	DWORD PTR 56[rsp], r11d
	lea	r14d, -128[rdi]
	pshufd	xmm1, xmm0, 0xe5
	movd	r15d, xmm1
	lea	r13d, -128[r15]
	test	r14d, r14d
	cmovs	r14d, edx
	test	r13d, r13d
	cmovs	r13d, edx
	add	edi, 554
	cmovs	edi, edx
	add	r15d, 368
	cmovs	r15d, edx
	sal	ecx, 8
	mov	edx, ebx
	lea	r10d, -1[rcx]
	cmp	r14d, ecx
	cmovnb	r14d, r10d
	sal	edx, 8
	lea	r9d, -1[rdx]
	cmp	r13d, edx
	cmovnb	r13d, r9d
	cmp	edi, ecx
	cmovnb	edi, r10d
	cmp	r15d, edx
	cmovnb	r15d, r9d
	mov	r10d, r13d
	mov	edx, r13d
	sar	r10d, 8
	xor	dl, dl
	mov	DWORD PTR 60[rsp], r10d
	cmp	edx, r15d
	jnb	.L10
	cmp	r10d, ebx
	jnb	.L10
	mov	edx, r14d
	mov	ecx, r14d
	mov	QWORD PTR 120[rsp], rsi
	xor	dl, dl
	sar	ecx, 8
	mov	DWORD PTR 76[rsp], ebx
	cmp	edx, edi
	mov	DWORD PTR 72[rsp], ecx
	setb	r8b
	cmp	ecx, r11d
	setb	dl
	imul	r10d, r11d
	and	r8d, edx
	mov	BYTE PTR 71[rsp], r8b
	mov	ebp, r10d
	.p2align 4,,10
	.p2align 3
.L12:
	mov	r12d, DWORD PTR 60[rsp]
	mov	edx, DWORD PTR 72[rsp]
	mov	r10d, ebp
	sal	r12d, 8
	cmp	BYTE PTR 71[rsp], 0
	je	.L28
	mov	r11d, r15d
	mov	DWORD PTR 64[rsp], ebp
	mov	r15d, r14d
	mov	r14d, r13d
	mov	r13d, r12d
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L96:
	test	ecx, ecx
	jne	.L16
.L19:
	mov	rsi, QWORD PTR 40[rsp]
	mov	ecx, DWORD PTR [rsi+rbp*4]
	test	ecx, ecx
	jne	.L94
.L18:
	mov	rsi, QWORD PTR 48[rsp]
	mov	ecx, DWORD PTR [rsi+rbp*4]
	test	ecx, ecx
	jne	.L95
.L23:
	add	ebx, 256
	add	edx, 1
	cmp	ebx, edi
	jnb	.L93
	mov	ebx, DWORD PTR 56[rsp]
	cmp	edx, ebx
	jnb	.L93
.L26:
	mov	rsi, QWORD PTR .refptr.gGameMode[rip]
	mov	ebx, edx
	mov	ebp, edx
	add	rbp, r10
	sal	ebx, 8
	cmp	BYTE PTR [rsi], 5
	mov	ecx, DWORD PTR [rax+rbp*4]
	jne	.L96
	test	ecx, ecx
	je	.L23
	lea	r12d, -8[rcx]
	add	r12, rax
	movzx	ecx, BYTE PTR [r12]
	cmp	cl, -1
	je	.L23
	xor	esi, esi
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L31:
	movzx	ecx, BYTE PTR 7[r12]
	add	r12, 7
	add	esi, 1
	cmp	cl, -1
	je	.L23
.L32:
	cmp	cl, -2
	jl	.L31
	lea	r8d, [rbx+rcx*8]
	movzx	ecx, BYTE PTR 1[r12]
	cmp	r8d, edi
	lea	r9d, 0[r13+rcx*8]
	setle	cl
	cmp	r15d, r8d
	setle	r8b
	and	ecx, r8d
	cmp	r14d, r9d
	setle	r8b
	test	cl, r8b
	je	.L31
	cmp	r9d, r11d
	jg	.L31
	movzx	ebp, BYTE PTR 2[r12]
	mov	DWORD PTR 80[rsp], edx
	movzx	r9d, sil
	mov	rcx, r12
	mov	QWORD PTR 104[rsp], rax
	lea	rax, gSpriteInits_CollectRingsInteractables[rip]
	mov	r8d, DWORD PTR 60[rsp]
	mov	DWORD PTR 96[rsp], r11d
	mov	QWORD PTR 88[rsp], r10
	call	[QWORD PTR [rax+rbp*8]]
	mov	rax, QWORD PTR 104[rsp]
	mov	r11d, DWORD PTR 96[rsp]
	mov	r10, QWORD PTR 88[rsp]
	mov	edx, DWORD PTR 80[rsp]
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L93:
	mov	ebp, DWORD PTR 64[rsp]
	mov	r12d, r13d
	mov	r13d, r14d
	mov	r14d, r15d
	mov	r15d, r11d
.L28:
	mov	ebx, DWORD PTR 56[rsp]
	add	r12d, 256
	add	DWORD PTR 60[rsp], 1
	mov	edx, DWORD PTR 60[rsp]
	add	ebp, ebx
	cmp	r12d, r15d
	jnb	.L92
	mov	ebx, DWORD PTR 76[rsp]
	cmp	edx, ebx
	jb	.L12
.L92:
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	rsi, QWORD PTR 120[rsp]
	movq	xmm0, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR [rax]
.L10:
	lea	rax, Task_8008DCC[rip]
	mov	BYTE PTR 32[rsi], 0
	movq	QWORD PTR 24[rsi], xmm0
	mov	QWORD PTR 40[r8], rax
.L3:
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
	.p2align 4,,10
	.p2align 3
.L95:
	mov	rsi, QWORD PTR 48[rsp]
	lea	r12d, -8[rcx]
	add	r12, rsi
	movzx	ecx, BYTE PTR [r12]
	cmp	cl, -1
	je	.L23
	xor	esi, esi
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L29:
	movzx	ecx, BYTE PTR 7[r12]
	add	r12, 7
	add	esi, 1
	cmp	cl, -1
	je	.L23
.L30:
	cmp	cl, -2
	jl	.L29
	lea	r8d, [rbx+rcx*8]
	movzx	ecx, BYTE PTR 1[r12]
	cmp	r8d, edi
	lea	r9d, 0[r13+rcx*8]
	setle	cl
	cmp	r15d, r8d
	setle	r8b
	and	ecx, r8d
	cmp	r14d, r9d
	setle	r8b
	test	cl, r8b
	je	.L29
	cmp	r9d, r11d
	jg	.L29
	movzx	ebp, BYTE PTR 2[r12]
	mov	DWORD PTR 80[rsp], edx
	movzx	r9d, sil
	mov	rcx, r12
	mov	QWORD PTR 104[rsp], rax
	lea	rax, gSpriteInits_Enemies[rip]
	mov	r8d, DWORD PTR 60[rsp]
	mov	DWORD PTR 96[rsp], r11d
	mov	QWORD PTR 88[rsp], r10
	call	[QWORD PTR [rax+rbp*8]]
	mov	rax, QWORD PTR 104[rsp]
	mov	r11d, DWORD PTR 96[rsp]
	mov	r10, QWORD PTR 88[rsp]
	mov	edx, DWORD PTR 80[rsp]
	jmp	.L29
	.p2align 4,,10
	.p2align 3
.L94:
	lea	esi, -8[rcx]
	mov	rcx, QWORD PTR 40[rsp]
	add	rsi, rcx
	movzx	ecx, BYTE PTR [rsi]
	cmp	cl, -1
	je	.L18
	xor	r12d, r12d
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L24:
	movzx	ecx, BYTE PTR 3[rsi]
	add	rsi, 3
	add	r12d, 1
	cmp	cl, -1
	je	.L18
.L25:
	cmp	cl, -2
	jl	.L24
	lea	r9d, [rbx+rcx*8]
	movzx	ecx, BYTE PTR 1[rsi]
	cmp	r9d, edi
	lea	r8d, 0[r13+rcx*8]
	setle	cl
	cmp	r15d, r9d
	setle	r9b
	and	ecx, r9d
	cmp	r14d, r8d
	setle	r9b
	test	cl, r9b
	je	.L24
	cmp	r8d, r11d
	jg	.L24
	mov	r8d, DWORD PTR 60[rsp]
	movzx	r9d, r12b
	mov	rcx, rsi
	mov	DWORD PTR 80[rsp], edx
	mov	QWORD PTR 104[rsp], rax
	mov	DWORD PTR 96[rsp], r11d
	mov	QWORD PTR 88[rsp], r10
	call	CreateEntity_ItemBox
	mov	rax, QWORD PTR 104[rsp]
	mov	r11d, DWORD PTR 96[rsp]
	mov	r10, QWORD PTR 88[rsp]
	mov	edx, DWORD PTR 80[rsp]
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L16:
	lea	esi, -8[rcx]
	add	rsi, rax
	movzx	ecx, BYTE PTR [rsi]
	cmp	cl, -1
	je	.L19
	movzx	r8d, cl
	xor	r12d, r12d
	mov	rcx, rsi
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L20:
	movzx	r8d, BYTE PTR 7[rcx]
	add	rcx, 7
	add	r12d, 1
	cmp	r8b, -1
	je	.L19
.L21:
	cmp	r8b, -2
	jl	.L20
	lea	esi, [rbx+r8*8]
	movzx	r8d, BYTE PTR 1[rcx]
	cmp	esi, edi
	lea	r9d, 0[r13+r8*8]
	setle	r8b
	cmp	r15d, esi
	setle	sil
	and	r8d, esi
	cmp	r14d, r9d
	setle	sil
	test	r8b, sil
	je	.L20
	cmp	r9d, r11d
	jg	.L20
	movzx	esi, BYTE PTR 2[rcx]
	mov	QWORD PTR 112[rsp], rax
	lea	rax, gSpriteInits_Interactables[rip]
	movzx	r9d, r12b
	mov	DWORD PTR 104[rsp], r11d
	mov	r8d, DWORD PTR 60[rsp]
	mov	QWORD PTR 96[rsp], r10
	mov	DWORD PTR 88[rsp], edx
	mov	QWORD PTR 80[rsp], rcx
	call	[QWORD PTR [rax+rsi*8]]
	mov	rax, QWORD PTR 112[rsp]
	mov	r11d, DWORD PTR 104[rsp]
	mov	r10, QWORD PTR 96[rsp]
	mov	edx, DWORD PTR 88[rsp]
	mov	rcx, QWORD PTR 80[rsp]
	jmp	.L20
	.seh_endproc
	.p2align 4
	.def	Task_8008DCC;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_8008DCC
Task_8008DCC:
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
	sub	rsp, 152
	.seh_stackalloc	152
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rax], 2
	jne	.L97
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	cmp	BYTE PTR 32[rax], 0
	mov	QWORD PTR 80[rsp], rax
	jne	.L100
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	rdi, QWORD PTR 80[rsp]
	mov	eax, DWORD PTR [rax]
	mov	edx, DWORD PTR 24[rdi]
	mov	r8d, eax
	sub	r8d, edx
	mov	ecx, r8d
	neg	ecx
	cmovs	ecx, r8d
	cmp	ecx, 248
	jg	.L100
	mov	rsi, QWORD PTR .refptr.gCamera[rip]
	mov	ebp, DWORD PTR 4[rsi]
	mov	esi, DWORD PTR 28[rdi]
	mov	r8d, ebp
	mov	DWORD PTR 52[rsp], esi
	sub	r8d, esi
	mov	ecx, r8d
	neg	ecx
	cmovs	ecx, r8d
	cmp	ecx, 208
	jg	.L100
	mov	rsi, QWORD PTR .refptr.gGameMode[rip]
	mov	r11, QWORD PTR [rdi]
	cmp	BYTE PTR [rsi], 5
	je	.L101
	mov	rsi, QWORD PTR 16[rdi]
	mov	rdi, QWORD PTR 8[rdi]
	add	rsi, 12
	add	rdi, 12
	mov	QWORD PTR 40[rsp], rsi
	mov	QWORD PTR 32[rsp], rdi
.L101:
	lea	rdi, 12[r11]
	lea	esi, 554[rax]
	movzx	r10d, WORD PTR 4[r11]
	mov	QWORD PTR 64[rsp], rdi
	movzx	edi, WORD PTR 8[r11]
	lea	r14d, 554[rdx]
	mov	DWORD PTR 72[rsp], esi
	mov	DWORD PTR 76[rsp], edi
	lea	edi, -128[rax]
	cmp	eax, edx
	jg	.L103
	lea	esi, -128[rdx]
	mov	r14d, edi
.L103:
	mov	ebx, DWORD PTR 52[rsp]
	lea	r13d, -128[rbp]
	lea	ecx, 368[rbp]
	cmp	ebp, ebx
	jg	.L266
	mov	ebx, DWORD PTR 52[rsp]
	mov	r12d, r13d
	add	ebx, -128
	mov	DWORD PTR 56[rsp], ebx
.L105:
	xor	r8d, r8d
	test	r14d, r14d
	cmovs	r14d, r8d
	test	r13d, r13d
	mov	ebx, r8d
	cmovs	r13d, r8d
	test	esi, esi
	cmovs	esi, r8d
	test	ecx, ecx
	mov	r8d, r10d
	cmovns	ebx, ecx
	sal	r8d, 8
	mov	ecx, DWORD PTR 76[rsp]
	lea	r15d, -1[r8]
	cmp	r14d, r8d
	cmovnb	r14d, r15d
	sal	ecx, 8
	mov	DWORD PTR 88[rsp], r15d
	lea	r9d, -1[rcx]
	cmp	r13d, ecx
	cmovnb	r13d, r9d
	cmp	esi, r8d
	cmovnb	esi, r15d
	cmp	ebx, ecx
	cmovnb	ebx, r9d
	mov	DWORD PTR 96[rsp], ebx
	xor	ebx, ebx
	test	edi, edi
	mov	r15d, ebx
	cmovns	r15d, edi
	test	r12d, r12d
	mov	edi, 0
	cmovs	r12d, ebx
	mov	ebx, DWORD PTR 72[rsp]
	test	ebx, ebx
	cmovns	edi, ebx
	xor	ebx, ebx
	cmp	DWORD PTR 56[rsp], 0
	cmovns	ebx, DWORD PTR 56[rsp]
	cmp	r15d, r8d
	mov	DWORD PTR 92[rsp], ebx
	mov	ebx, DWORD PTR 88[rsp]
	cmovnb	r15d, ebx
	cmp	r12d, ecx
	cmovnb	r12d, r9d
	cmp	edi, r8d
	mov	r8d, DWORD PTR 92[rsp]
	cmovnb	edi, ebx
	cmp	r8d, ecx
	cmovb	r9d, r8d
	cmp	eax, edx
	setne	dl
	cmp	r14d, esi
	setne	al
	mov	DWORD PTR 92[rsp], r9d
	test	dl, al
	je	.L114
	mov	ebx, DWORD PTR 96[rsp]
	cmp	r13d, ebx
	jne	.L267
.L114:
	mov	esi, DWORD PTR 92[rsp]
	cmp	r12d, esi
	setne	dl
	cmp	r15d, edi
	setne	al
	test	dl, al
	je	.L137
	mov	eax, DWORD PTR 52[rsp]
	cmp	ebp, eax
	jne	.L268
.L137:
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	movd	xmm1, ebp
	movd	xmm0, DWORD PTR [rax]
	mov	rax, QWORD PTR 80[rsp]
	punpckldq	xmm0, xmm1
	movq	QWORD PTR 24[rax], xmm0
.L97:
	add	rsp, 152
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
.L100:
	add	rsp, 152
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	SpawnMapEntities
	.p2align 4,,10
	.p2align 3
.L266:
	mov	DWORD PTR 56[rsp], ecx
	lea	r12d, 368[rbx]
	jmp	.L105
.L267:
	mov	eax, r13d
	sar	eax, 8
	movzx	r9d, ax
	mov	edx, eax
	mov	eax, r9d
	sal	eax, 8
	cmp	ebx, eax
	jle	.L114
	mov	ecx, DWORD PTR 76[rsp]
	cmp	r9d, ecx
	jnb	.L114
	mov	r8d, r14d
	mov	DWORD PTR 52[rsp], r10d
	sar	r8d, 8
	mov	DWORD PTR 72[rsp], r9d
	movzx	ecx, r8w
	mov	WORD PTR 120[rsp], r8w
	mov	eax, ecx
	mov	DWORD PTR 104[rsp], r8d
	mov	DWORD PTR 132[rsp], edi
	sal	eax, 8
	mov	DWORD PTR 136[rsp], r12d
	mov	DWORD PTR 100[rsp], ecx
	mov	QWORD PTR 56[rsp], r11
	mov	DWORD PTR 96[rsp], eax
	mov	eax, edx
	mov	DWORD PTR 140[rsp], r15d
	mov	r15d, ebx
	.p2align 4,,10
	.p2align 3
.L136:
	mov	edi, DWORD PTR 96[rsp]
	cmp	esi, edi
	jle	.L118
	mov	edi, DWORD PTR 100[rsp]
	mov	ecx, DWORD PTR 52[rsp]
	cmp	edi, ecx
	jnb	.L118
	mov	edx, DWORD PTR 72[rsp]
	mov	ebx, ecx
	mov	WORD PTR 88[rsp], ax
	movzx	r11d, WORD PTR 120[rsp]
	imul	ebx, edx
	mov	r12d, edx
	movsx	rdx, DWORD PTR 104[rsp]
	sal	r12d, 5
	add	rbx, rdx
	sal	rbx, 2
	jmp	.L135
	.p2align 4,,10
	.p2align 3
.L271:
	test	eax, eax
	jne	.L120
.L123:
	mov	rax, QWORD PTR 32[rsp]
	mov	eax, DWORD PTR [rax+rbx]
	test	eax, eax
	jne	.L269
.L122:
	mov	rax, QWORD PTR 40[rsp]
	mov	eax, DWORD PTR [rax+rbx]
	test	eax, eax
	jne	.L270
.L127:
	add	r11d, 1
	movzx	edi, r11w
	mov	eax, edi
	sal	eax, 8
	cmp	eax, esi
	jge	.L263
	mov	eax, DWORD PTR 52[rsp]
	add	rbx, 4
	cmp	edi, eax
	jnb	.L263
.L135:
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR 56[rsp]
	cmp	BYTE PTR [rdx], 5
	mov	eax, DWORD PTR 12[rax+rbx]
	jne	.L271
	test	eax, eax
	je	.L127
	lea	r8d, -8[rax]
	mov	rax, QWORD PTR 64[rsp]
	add	rax, r8
	movzx	ecx, BYTE PTR [rax]
	cmp	cl, -1
	je	.L127
	mov	r9d, edi
	mov	edx, edi
	xor	ebp, ebp
	sal	r9d, 5
	mov	edi, r9d
	jmp	.L134
	.p2align 4,,10
	.p2align 3
.L133:
	movzx	ecx, BYTE PTR 7[rax]
	add	rax, 7
	add	ebp, 1
	cmp	cl, -1
	je	.L127
.L134:
	cmp	cl, -2
	jl	.L133
	movzx	r8d, BYTE PTR 1[rax]
	add	ecx, edi
	sal	ecx, 3
	add	r8d, r12d
	sal	r8d, 3
	cmp	esi, ecx
	setge	r9b
	cmp	r14d, ecx
	setle	cl
	and	ecx, r9d
	cmp	r13d, r8d
	setle	r9b
	test	cl, r9b
	je	.L133
	cmp	r8d, r15d
	jg	.L133
	movzx	r10d, BYTE PTR 2[rax]
	mov	rcx, rax
	mov	DWORD PTR 124[rsp], edx
	movzx	r9d, bpl
	mov	QWORD PTR 112[rsp], rax
	lea	rax, gSpriteInits_CollectRingsInteractables[rip]
	mov	r8d, DWORD PTR 72[rsp]
	mov	DWORD PTR 128[rsp], r11d
	call	[QWORD PTR [rax+r10*8]]
	mov	r11d, DWORD PTR 128[rsp]
	mov	edx, DWORD PTR 124[rsp]
	mov	rax, QWORD PTR 112[rsp]
	jmp	.L133
	.p2align 4,,10
	.p2align 3
.L270:
	lea	ecx, -8[rax]
	mov	rax, QWORD PTR 40[rsp]
	add	rcx, rax
	movzx	eax, BYTE PTR [rcx]
	cmp	al, -1
	je	.L127
	mov	r10d, edi
	xor	ebp, ebp
	sal	r10d, 5
	jmp	.L132
	.p2align 4,,10
	.p2align 3
.L131:
	movzx	eax, BYTE PTR 7[rcx]
	add	rcx, 7
	add	ebp, 1
	cmp	al, -1
	je	.L127
.L132:
	cmp	al, -2
	jl	.L131
	movzx	edx, BYTE PTR 1[rcx]
	add	eax, r10d
	sal	eax, 3
	add	edx, r12d
	sal	edx, 3
	cmp	esi, eax
	setge	r8b
	cmp	r14d, eax
	setle	al
	and	eax, r8d
	cmp	r13d, edx
	setle	r8b
	test	al, r8b
	je	.L131
	cmp	edx, r15d
	jg	.L131
	movzx	eax, BYTE PTR 2[rcx]
	mov	DWORD PTR 124[rsp], r10d
	movzx	r9d, bpl
	mov	edx, edi
	mov	DWORD PTR 128[rsp], r11d
	lea	r11, gSpriteInits_Enemies[rip]
	mov	r8d, DWORD PTR 72[rsp]
	mov	QWORD PTR 112[rsp], rcx
	call	[QWORD PTR [r11+rax*8]]
	mov	r10d, DWORD PTR 124[rsp]
	mov	rcx, QWORD PTR 112[rsp]
	mov	r11d, DWORD PTR 128[rsp]
	jmp	.L131
	.p2align 4,,10
	.p2align 3
.L269:
	lea	r10d, -8[rax]
	mov	rax, QWORD PTR 32[rsp]
	add	r10, rax
	movzx	ecx, BYTE PTR [r10]
	cmp	cl, -1
	je	.L122
	mov	eax, edi
	xor	ebp, ebp
	sal	eax, 5
	jmp	.L129
	.p2align 4,,10
	.p2align 3
.L128:
	movzx	ecx, BYTE PTR 3[r10]
	add	r10, 3
	add	ebp, 1
	cmp	cl, -1
	je	.L122
.L129:
	cmp	cl, -2
	jl	.L128
	movzx	edx, BYTE PTR 1[r10]
	add	ecx, eax
	sal	ecx, 3
	add	edx, r12d
	sal	edx, 3
	cmp	esi, ecx
	setge	r8b
	cmp	r14d, ecx
	setle	cl
	and	ecx, r8d
	cmp	r13d, edx
	setle	r8b
	test	cl, r8b
	je	.L128
	cmp	edx, r15d
	jg	.L128
	mov	r8d, DWORD PTR 72[rsp]
	mov	rcx, r10
	movzx	r9d, bpl
	mov	edx, edi
	mov	DWORD PTR 128[rsp], r11d
	mov	DWORD PTR 124[rsp], eax
	mov	QWORD PTR 112[rsp], r10
	call	CreateEntity_ItemBox
	mov	eax, DWORD PTR 124[rsp]
	mov	r10, QWORD PTR 112[rsp]
	mov	r11d, DWORD PTR 128[rsp]
	jmp	.L128
	.p2align 4,,10
	.p2align 3
.L120:
	lea	r8d, -8[rax]
	mov	rax, QWORD PTR 64[rsp]
	add	rax, r8
	movzx	ecx, BYTE PTR [rax]
	cmp	cl, -1
	je	.L123
	mov	edx, edi
	xor	ebp, ebp
	sal	edx, 5
	mov	r10d, edx
	jmp	.L125
	.p2align 4,,10
	.p2align 3
.L124:
	movzx	ecx, BYTE PTR 7[rax]
	add	rax, 7
	add	ebp, 1
	cmp	cl, -1
	je	.L123
.L125:
	cmp	cl, -2
	jl	.L124
	movzx	edx, BYTE PTR 1[rax]
	add	ecx, r10d
	sal	ecx, 3
	add	edx, r12d
	sal	edx, 3
	cmp	esi, ecx
	setge	r8b
	cmp	r14d, ecx
	setle	cl
	and	ecx, r8d
	cmp	r13d, edx
	setle	r8b
	test	cl, r8b
	je	.L124
	cmp	edx, r15d
	jg	.L124
	mov	QWORD PTR 112[rsp], rax
	mov	rcx, rax
	mov	r8d, DWORD PTR 72[rsp]
	mov	edx, edi
	mov	DWORD PTR 128[rsp], r11d
	movzx	r11d, BYTE PTR 2[rax]
	lea	rax, gSpriteInits_Interactables[rip]
	movzx	r9d, bpl
	mov	DWORD PTR 124[rsp], r10d
	call	[QWORD PTR [rax+r11*8]]
	mov	r10d, DWORD PTR 124[rsp]
	mov	rax, QWORD PTR 112[rsp]
	mov	r11d, DWORD PTR 128[rsp]
	jmp	.L124
	.p2align 4,,10
	.p2align 3
.L263:
	movzx	eax, WORD PTR 88[rsp]
.L118:
	add	eax, 1
	movzx	ebx, ax
	mov	edx, ebx
	mov	DWORD PTR 72[rsp], ebx
	sal	edx, 8
	cmp	edx, r15d
	jge	.L264
	mov	ebx, DWORD PTR 76[rsp]
	cmp	DWORD PTR 72[rsp], ebx
	jb	.L136
.L264:
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	r10d, DWORD PTR 52[rsp]
	mov	edi, DWORD PTR 132[rsp]
	mov	r12d, DWORD PTR 136[rsp]
	mov	ebp, DWORD PTR 4[rax]
	mov	rax, QWORD PTR 80[rsp]
	mov	r15d, DWORD PTR 140[rsp]
	mov	r11, QWORD PTR 56[rsp]
	mov	eax, DWORD PTR 28[rax]
	mov	DWORD PTR 52[rsp], eax
	jmp	.L114
.L268:
	mov	eax, r12d
	sar	eax, 8
	movzx	r9d, ax
	mov	r14d, eax
	mov	eax, r9d
	sal	eax, 8
	cmp	esi, eax
	jle	.L137
	mov	eax, DWORD PTR 76[rsp]
	cmp	r9d, eax
	jnb	.L137
	mov	ecx, r15d
	mov	DWORD PTR 52[rsp], r10d
	sar	ecx, 8
	mov	DWORD PTR 72[rsp], r9d
	movzx	edx, cx
	mov	WORD PTR 100[rsp], cx
	mov	eax, edx
	mov	DWORD PTR 120[rsp], ecx
	mov	DWORD PTR 96[rsp], edx
	sal	eax, 8
	mov	QWORD PTR 56[rsp], r11
	mov	DWORD PTR 92[rsp], eax
	mov	eax, r14d
	mov	r14d, esi
	.p2align 4,,10
	.p2align 3
.L159:
	mov	esi, DWORD PTR 92[rsp]
	cmp	edi, esi
	jle	.L141
	mov	esi, DWORD PTR 96[rsp]
	mov	ecx, DWORD PTR 52[rsp]
	cmp	esi, ecx
	jnb	.L141
	mov	edx, DWORD PTR 72[rsp]
	mov	ebx, ecx
	mov	WORD PTR 88[rsp], ax
	movzx	r11d, WORD PTR 100[rsp]
	imul	ebx, edx
	mov	r13d, edx
	movsx	rdx, DWORD PTR 120[rsp]
	sal	r13d, 5
	add	rbx, rdx
	sal	rbx, 2
	jmp	.L158
	.p2align 4,,10
	.p2align 3
.L274:
	test	eax, eax
	jne	.L143
.L146:
	mov	rax, QWORD PTR 32[rsp]
	mov	eax, DWORD PTR [rax+rbx]
	test	eax, eax
	jne	.L272
.L145:
	mov	rax, QWORD PTR 40[rsp]
	mov	eax, DWORD PTR [rax+rbx]
	test	eax, eax
	jne	.L273
.L150:
	add	r11d, 1
	movzx	esi, r11w
	mov	eax, esi
	sal	eax, 8
	cmp	eax, edi
	jge	.L265
	mov	eax, DWORD PTR 52[rsp]
	add	rbx, 4
	cmp	esi, eax
	jnb	.L265
.L158:
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR 56[rsp]
	cmp	BYTE PTR [rdx], 5
	mov	eax, DWORD PTR 12[rax+rbx]
	jne	.L274
	test	eax, eax
	je	.L150
	lea	r8d, -8[rax]
	mov	rax, QWORD PTR 64[rsp]
	add	rax, r8
	movzx	ecx, BYTE PTR [rax]
	cmp	cl, -1
	je	.L150
	mov	r9d, esi
	mov	edx, esi
	xor	ebp, ebp
	sal	r9d, 5
	mov	esi, r9d
	jmp	.L157
	.p2align 4,,10
	.p2align 3
.L156:
	movzx	ecx, BYTE PTR 7[rax]
	add	rax, 7
	add	ebp, 1
	cmp	cl, -1
	je	.L150
.L157:
	cmp	cl, -2
	jl	.L156
	movzx	r8d, BYTE PTR 1[rax]
	add	ecx, esi
	sal	ecx, 3
	add	r8d, r13d
	sal	r8d, 3
	cmp	ecx, edi
	setle	r9b
	cmp	ecx, r15d
	setge	cl
	and	ecx, r9d
	cmp	r8d, r12d
	setge	r9b
	test	cl, r9b
	je	.L156
	cmp	r8d, r14d
	jg	.L156
	movzx	r10d, BYTE PTR 2[rax]
	mov	rcx, rax
	mov	DWORD PTR 112[rsp], edx
	movzx	r9d, bpl
	mov	QWORD PTR 104[rsp], rax
	lea	rax, gSpriteInits_CollectRingsInteractables[rip]
	mov	r8d, DWORD PTR 72[rsp]
	mov	DWORD PTR 124[rsp], r11d
	call	[QWORD PTR [rax+r10*8]]
	mov	r11d, DWORD PTR 124[rsp]
	mov	edx, DWORD PTR 112[rsp]
	mov	rax, QWORD PTR 104[rsp]
	jmp	.L156
	.p2align 4,,10
	.p2align 3
.L273:
	lea	ecx, -8[rax]
	mov	rax, QWORD PTR 40[rsp]
	add	rcx, rax
	movzx	eax, BYTE PTR [rcx]
	cmp	al, -1
	je	.L150
	mov	r10d, esi
	xor	ebp, ebp
	sal	r10d, 5
	jmp	.L155
	.p2align 4,,10
	.p2align 3
.L154:
	movzx	eax, BYTE PTR 7[rcx]
	add	rcx, 7
	add	ebp, 1
	cmp	al, -1
	je	.L150
.L155:
	cmp	al, -2
	jl	.L154
	movzx	edx, BYTE PTR 1[rcx]
	add	eax, r10d
	sal	eax, 3
	add	edx, r13d
	sal	edx, 3
	cmp	eax, edi
	setle	r8b
	cmp	eax, r15d
	setge	al
	and	eax, r8d
	cmp	edx, r12d
	setge	r8b
	test	al, r8b
	je	.L154
	cmp	edx, r14d
	jg	.L154
	movzx	eax, BYTE PTR 2[rcx]
	mov	DWORD PTR 124[rsp], r11d
	movzx	r9d, bpl
	mov	edx, esi
	lea	r11, gSpriteInits_Enemies[rip]
	mov	DWORD PTR 112[rsp], r10d
	mov	r8d, DWORD PTR 72[rsp]
	mov	QWORD PTR 104[rsp], rcx
	call	[QWORD PTR [r11+rax*8]]
	mov	r11d, DWORD PTR 124[rsp]
	mov	r10d, DWORD PTR 112[rsp]
	mov	rcx, QWORD PTR 104[rsp]
	jmp	.L154
	.p2align 4,,10
	.p2align 3
.L272:
	lea	r10d, -8[rax]
	mov	rax, QWORD PTR 32[rsp]
	add	r10, rax
	movzx	ecx, BYTE PTR [r10]
	cmp	cl, -1
	je	.L145
	mov	eax, esi
	xor	ebp, ebp
	sal	eax, 5
	jmp	.L152
	.p2align 4,,10
	.p2align 3
.L151:
	movzx	ecx, BYTE PTR 3[r10]
	add	r10, 3
	add	ebp, 1
	cmp	cl, -1
	je	.L145
.L152:
	cmp	cl, -2
	jl	.L151
	movzx	edx, BYTE PTR 1[r10]
	add	ecx, eax
	sal	ecx, 3
	add	edx, r13d
	sal	edx, 3
	cmp	ecx, edi
	setle	r8b
	cmp	ecx, r15d
	setge	cl
	and	ecx, r8d
	cmp	edx, r12d
	setge	r8b
	test	cl, r8b
	je	.L151
	cmp	edx, r14d
	jg	.L151
	mov	r8d, DWORD PTR 72[rsp]
	mov	rcx, r10
	movzx	r9d, bpl
	mov	edx, esi
	mov	DWORD PTR 124[rsp], r11d
	mov	DWORD PTR 112[rsp], eax
	mov	QWORD PTR 104[rsp], r10
	call	CreateEntity_ItemBox
	mov	r11d, DWORD PTR 124[rsp]
	mov	eax, DWORD PTR 112[rsp]
	mov	r10, QWORD PTR 104[rsp]
	jmp	.L151
	.p2align 4,,10
	.p2align 3
.L143:
	lea	r8d, -8[rax]
	mov	rax, QWORD PTR 64[rsp]
	add	rax, r8
	movzx	ecx, BYTE PTR [rax]
	cmp	cl, -1
	je	.L146
	mov	edx, esi
	xor	ebp, ebp
	sal	edx, 5
	mov	r10d, edx
	jmp	.L148
	.p2align 4,,10
	.p2align 3
.L147:
	movzx	ecx, BYTE PTR 7[rax]
	add	rax, 7
	add	ebp, 1
	cmp	cl, -1
	je	.L146
.L148:
	cmp	cl, -2
	jl	.L147
	movzx	edx, BYTE PTR 1[rax]
	add	ecx, r10d
	sal	ecx, 3
	add	edx, r13d
	sal	edx, 3
	cmp	ecx, edi
	setle	r8b
	cmp	ecx, r15d
	setge	cl
	and	ecx, r8d
	cmp	edx, r12d
	setge	r8b
	test	cl, r8b
	je	.L147
	cmp	edx, r14d
	jg	.L147
	mov	DWORD PTR 124[rsp], r11d
	movzx	r11d, BYTE PTR 2[rax]
	mov	rcx, rax
	mov	edx, esi
	mov	QWORD PTR 104[rsp], rax
	lea	rax, gSpriteInits_Interactables[rip]
	mov	r8d, DWORD PTR 72[rsp]
	movzx	r9d, bpl
	mov	DWORD PTR 112[rsp], r10d
	call	[QWORD PTR [rax+r11*8]]
	mov	r11d, DWORD PTR 124[rsp]
	mov	r10d, DWORD PTR 112[rsp]
	mov	rax, QWORD PTR 104[rsp]
	jmp	.L147
	.p2align 4,,10
	.p2align 3
.L265:
	movzx	eax, WORD PTR 88[rsp]
.L141:
	add	eax, 1
	movzx	esi, ax
	mov	edx, esi
	mov	DWORD PTR 72[rsp], esi
	sal	edx, 8
	cmp	edx, r14d
	jge	.L140
	mov	ebx, DWORD PTR 76[rsp]
	cmp	DWORD PTR 72[rsp], ebx
	jb	.L159
.L140:
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	ebp, DWORD PTR 4[rax]
	jmp	.L137
	.seh_endproc
	.p2align 4
	.globl	CreateStageEntitiesManager
	.def	CreateStageEntitiesManager;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateStageEntitiesManager
CreateStageEntitiesManager:
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
	mov	rsi, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rsi], 5
	je	.L276
	lea	rax, TaskDestructor_EntitiesManager[rip]
	mov	QWORD PTR 32[rsp], rax
.L283:
	xor	r9d, r9d
	mov	r8d, 8192
	mov	edx, 48
	lea	rcx, Task_8008DCC[rip]
	call	TaskCreate
	cmp	BYTE PTR [rsi], 5
	mov	rbx, QWORD PTR 24[rax]
	mov	rdi, rax
	je	.L278
	mov	rsi, QWORD PTR .refptr.gCurrentLevel[rip]
	lea	r12, gSpritePosData_interactables[rip]
	movsx	rax, BYTE PTR [rsi]
	mov	rax, QWORD PTR [r12+rax*8]
	mov	ecx, DWORD PTR 4[rax]
	and	ecx, 16777215
	call	EwramMalloc
	mov	rbp, rax
	movsx	rax, BYTE PTR [rsi]
	mov	rdx, rbp
	mov	rcx, QWORD PTR [r12+rax*8]
	lea	r12, gSpritePosData_itemboxes[rip]
	call	RLUnCompWram
	movsx	rax, BYTE PTR [rsi]
	mov	QWORD PTR [rbx], rbp
	mov	rax, QWORD PTR [r12+rax*8]
	mov	ecx, DWORD PTR 4[rax]
	and	ecx, 16777215
	call	EwramMalloc
	mov	rbp, rax
	movsx	rax, BYTE PTR [rsi]
	mov	rdx, rbp
	mov	rcx, QWORD PTR [r12+rax*8]
	lea	r12, gSpritePosData_enemies[rip]
	call	RLUnCompWram
	movsx	rax, BYTE PTR [rsi]
	mov	QWORD PTR 8[rbx], rbp
	mov	rax, QWORD PTR [r12+rax*8]
	mov	ecx, DWORD PTR 4[rax]
	and	ecx, 16777215
	call	EwramMalloc
	mov	rbp, rax
	movsx	rax, BYTE PTR [rsi]
	mov	rdx, rbp
	mov	rcx, QWORD PTR [r12+rax*8]
	call	RLUnCompWram
	movsx	rdx, BYTE PTR [rsi]
	lea	rax, gSpriteTileInits_PreStageEntry[rip]
	mov	QWORD PTR 16[rbx], rbp
	mov	QWORD PTR 40[rbx], 0
	mov	rax, QWORD PTR [rax+rdx*8]
	test	rax, rax
	je	.L279
	call	rax
	mov	QWORD PTR 40[rbx], rax
.L279:
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	BYTE PTR 32[rbx], 1
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 24[rbx], rax
	mov	rax, QWORD PTR .refptr.gEntitiesManagerTask[rip]
	mov	QWORD PTR [rax], rdi
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L278:
	mov	rsi, QWORD PTR .refptr.EWRAM_START[rip]
	mov	rcx, QWORD PTR 208908[rsi]
	add	rsi, 258048
	mov	rdx, rsi
	call	RLUnCompWram
	mov	QWORD PTR [rbx], rsi
	jmp	.L279
	.p2align 4,,10
	.p2align 3
.L276:
	mov	QWORD PTR 32[rsp], 0
	jmp	.L283
	.seh_endproc
	.p2align 4
	.globl	CreateEnemyDefeatScoreAndManageLives
	.def	CreateEnemyDefeatScoreAndManageLives;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEnemyDefeatScoreAndManageLives
CreateEnemyDefeatScoreAndManageLives:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	ebx, ecx
	mov	ecx, 138
	mov	esi, edx
	call	m4aSongNumStart
	mov	rdi, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR .refptr.gLevelScore[rip]
	lea	rdx, enemyDefeatScores[rip]
	movsx	r8, BYTE PTR 140[rdi]
	mov	ecx, DWORD PTR [rax]
	movzx	edx, WORD PTR [rdx+r8*2]
	movsx	r8, ecx
	imul	r8, r8, 351843721
	add	edx, ecx
	sar	ecx, 31
	mov	DWORD PTR [rax], edx
	movsx	rax, edx
	sar	edx, 31
	imul	rax, rax, 351843721
	sar	r8, 44
	sub	r8d, ecx
	sar	rax, 44
	sub	eax, edx
	cmp	eax, r8d
	je	.L285
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rdx], 0
	je	.L287
.L285:
	movsx	edx, si
	movsx	ecx, bx
	call	CreateEnemyDefeatScore
	movzx	eax, BYTE PTR 140[rdi]
	cmp	al, 3
	jg	.L284
	add	eax, 1
	mov	BYTE PTR 140[rdi], al
.L284:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L287:
	mov	rcx, QWORD PTR .refptr.gNumLives[rip]
	movzx	edx, BYTE PTR [rcx]
	sub	edx, r8d
	add	eax, edx
	mov	edx, 255
	cmp	ax, dx
	cmova	eax, edx
	mov	BYTE PTR [rcx], al
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	BYTE PTR 3[rax], 16
	jmp	.L285
	.seh_endproc
	.p2align 4
	.globl	TaskDestructor_80095E8
	.def	TaskDestructor_80095E8;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_80095E8
TaskDestructor_80095E8:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rax]
	jmp	VramFree
	.seh_endproc
	.globl	gSpriteTileInits_PreStageEntry
	.section .rdata,"dr"
	.align 32
gSpriteTileInits_PreStageEntry:
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	sub_80807CC
	.quad	sub_80807CC
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.globl	gSpriteInits_CollectRingsInteractables
	.align 32
gSpriteInits_CollectRingsInteractables:
	.quad	CreateEntity_Toggle_PlayerLayer
	.quad	CreateEntity_Toggle_PlayerLayer
	.quad	CreateEntity_Spring_Normal_Up
	.quad	CreateEntity_Spring_Normal_Down
	.quad	CreateEntity_Spring_Normal_Right
	.quad	CreateEntity_Spring_Normal_Left
	.quad	CreateEntity_Spring_Big_UpLeft
	.quad	CreateEntity_Spring_Big_UpRight
	.quad	CreateEntity_Spring_Big_DownLeft
	.quad	CreateEntity_Spring_Big_DownRight
	.quad	CreateEntity_Spring_Small_UpLeft
	.quad	CreateEntity_Spring_Small_UpRight
	.quad	CreateEntity_Ramp
	.quad	CreateEntity_Spikes_Up
	.quad	CreateEntity_Spikes_Up
	.quad	CreateEntity_Spikes_Up
	.quad	CreateEntity_Spikes_Up
	.quad	CreateEntity_Spikes_Up
	.quad	CreateEntity_Spikes_Up
	.quad	CreateEntity_GrindRail_Start
	.quad	CreateEntity_GrindRail_StartAir
	.quad	CreateEntity_GrindRail_EndGround
	.quad	CreateEntity_GrindRail_End_ForcedJump
	.quad	CreateEntity_GrindRail_EndAlternate
	.quad	CreateEntity_GrindRail_EndAir
	.quad	CreateEntity_GrindRail_EndGround_Left
	.quad	CreateEntity_GrindRail_EndAir_Left
	.quad	CreateEntity_MysteryItemBox
	.quad	CreateEntity_CollectRingsLapTrigger
	.globl	enemyDefeatScores
	.align 8
enemyDefeatScores:
	.word	100
	.word	200
	.word	400
	.word	800
	.word	1000
	.globl	gSpriteInits_Enemies
	.align 32
gSpriteInits_Enemies:
	.quad	CreateEntity_Mon
	.quad	CreateEntity_Kiki
	.quad	CreateEntity_Buzzer
	.quad	CreateEntity_Gohla
	.quad	CreateEntity_KuraKura
	.quad	CreateEntity_Kubinaga
	.quad	CreateEntity_PikoPiko
	.quad	CreateEntity_Bell
	.quad	CreateEntity_Yado
	.quad	CreateEntity_Circus
	.quad	CreateEntity_Koura
	.quad	CreateEntity_Madillo
	.quad	CreateEntity_Straw
	.quad	CreateEntity_Hammerhead
	.quad	CreateEntity_Spinner
	.quad	CreateEntity_Mouse
	.quad	CreateEntity_Pen
	.quad	CreateEntity_GejiGeji
	.quad	CreateEntity_Balloon
	.quad	CreateEntity_Flickey
	.quad	CreateEntity_Kyura
	.quad	CreateEntity_Star
	.quad	CreateEntity_BulletBuzzer
	.globl	gSpriteInits_Interactables
	.align 32
gSpriteInits_Interactables:
	.quad	CreateEntity_Toggle_PlayerLayer
	.quad	CreateEntity_Toggle_PlayerLayer
	.quad	CreateEntity_Platform
	.quad	CreateEntity_Spring_Normal_Up
	.quad	CreateEntity_Spring_Normal_Down
	.quad	CreateEntity_Spring_Normal_Right
	.quad	CreateEntity_Spring_Normal_Left
	.quad	CreateEntity_Spring_Big_UpLeft
	.quad	CreateEntity_Spring_Big_UpRight
	.quad	CreateEntity_Spring_Big_DownRight
	.quad	CreateEntity_Spring_Big_DownLeft
	.quad	CreateEntity_Spring_Small_UpRight
	.quad	CreateEntity_Spring_Small_UpLeft
	.quad	CreateEntity_PlatformThin
	.quad	CreateEntity_Decoration
	.quad	CreateEntity_Ramp
	.quad	CreateEntity_Booster
	.quad	CreateEntity_InclineRamp
	.quad	CreateEntity_BouncySpring
	.quad	CreateEntity_PlatformCrumbling
	.quad	CreateEntity_RotatingHandle
	.quad	CreateEntity_GappedLoop_Start
	.quad	CreateEntity_GappedLoop_End
	.quad	CreateEntity_Spikes_Up
	.quad	CreateEntity_Spikes_Down
	.quad	CreateEntity_Spikes_LeftRight
	.quad	CreateEntity_Spikes_LeftRight
	.quad	CreateEntity_Spikes_HidingUp
	.quad	CreateEntity_Spikes_HidingDown
	.quad	CreateEntity_Corkscrew_Start
	.quad	CreateEntity_Corkscrew_End
	.quad	CreateEntity_BouncyBar
	.quad	CreateEntity_GrindRail_Start
	.quad	CreateEntity_GrindRail_StartAir
	.quad	CreateEntity_GrindRail_EndGround
	.quad	CreateEntity_GrindRail_End_ForcedJump
	.quad	CreateEntity_GrindRail_EndAlternate
	.quad	CreateEntity_GrindRail_EndAir
	.quad	CreateEntity_GrindRail_EndGround_Left
	.quad	CreateEntity_GrindRail_EndAir_Left
	.quad	CreateEntity_Corkscrew3D_Start
	.quad	CreateEntity_Corkscrew3D_End
	.quad	CreateEntity_StageGoal
	.quad	CreateEntity_Checkpoint
	.quad	CreateEntity_CeilingSlope
	.quad	CreateEntity_Toggle_Checkpoint
	.quad	CreateEntity_Toggle_StageGoal
	.quad	CreateEntity_WindUpStick
	.quad	CreateEntity_HookRail_Unused
	.quad	CreateEntity_HookRail_Start
	.quad	CreateEntity_HookRail_End
	.quad	CreateEntity_Windmill
	.quad	CreateEntity_TurnAroundBar
	.quad	CreateEntity_Crane
	.quad	CreateEntity_DashRing
	.quad	CreateEntity_FloatingSpring_Up
	.quad	CreateEntity_NoteSphere
	.quad	CreateEntity_NoteBlock
	.quad	CreateEntity_Chord
	.quad	CreateEntity_Keyboard_Vertical
	.quad	CreateEntity_Keyboard_Horizontal_PushLeft
	.quad	CreateEntity_Keyboard_Horizontal_PushRight
	.quad	CreateEntity_GermanFlute
	.quad	CreateEntity_FrenchHorn_Entry
	.quad	CreateEntity_PipeInstrument_Entry
	.quad	CreateEntity_SlowingSnow
	.quad	CreateEntity_FunnelSphere
	.quad	CreateEntity_HalfPipe_End
	.quad	CreateEntity_HalfPipe_Start
	.quad	CreateEntity_BigSnowball
	.quad	CreateEntity_BounceBlock
	.quad	CreateEntity_CeilingSlope
	.quad	CreateEntity_Pipe_Start
	.quad	CreateEntity_Pipe_End
	.quad	CreateEntity_LightBridge
	.quad	CreateEntity_ArrowPlatform_Left
	.quad	CreateEntity_ArrowPlatform_Right
	.quad	CreateEntity_ArrowPlatform_Up
	.quad	CreateEntity_SpikePlatform
	.quad	CreateEntity_FallingPlatform
	.quad	CreateEntity_LightGlobe
	.quad	CreateEntity_Platform_Square
	.quad	CreateEntity_Propeller
	.quad	CreateEntity_SlidyIce
	.quad	CreateEntity_SmallWindmill
	.quad	CreateEntity_PropellerSpring
	.quad	CreateEntity_Whirlwind_A
	.quad	CreateEntity_Fan_Left
	.quad	CreateEntity_Fan_Right
	.quad	CreateEntity_Fan_Left_Periodic
	.quad	CreateEntity_Fan_Right_Periodic
	.quad	CreateEntity_Launcher_Left_GDown
	.quad	CreateEntity_Launcher_Right_GDown
	.quad	CreateEntity_Cannon
	.quad	CreateEntity_Pole
	.quad	CreateEntity_IronBall
	.quad	CreateEntity_FlyingHandle
	.quad	CreateEntity_SpeedingPlatform
	.quad	CreateEntity_Toggle_Gravity__Down
	.quad	CreateEntity_Toggle_Gravity__Up
	.quad	CreateEntity_Toggle_Gravity__Toggle
	.quad	CreateEntity_Launcher_Left_GUp
	.quad	CreateEntity_Launcher_Right_GUp
	.quad	CreateEntity_SpecialRing
	.quad	CreateEntity_Whirlwind_B
	.quad	CreateEntity_Interactable105
	.globl	gSpritePosData_enemies
	.align 32
gSpritePosData_enemies:
	.quad	zone1_act1_enemies
	.quad	zone1_act2_enemies
	.quad	zone1_boss_enemies
	.quad	zone1_act2_enemies
	.quad	zone2_act1_enemies
	.quad	zone2_act2_enemies
	.quad	zone2_boss_enemies
	.quad	zone2_act2_enemies
	.quad	zone3_act1_enemies
	.quad	zone3_act2_enemies
	.quad	zone3_boss_enemies
	.quad	zone3_act2_enemies
	.quad	zone4_act1_enemies
	.quad	zone4_act2_enemies
	.quad	zone4_boss_enemies
	.quad	zone4_act2_enemies
	.quad	zone5_act1_enemies
	.quad	zone5_act2_enemies
	.quad	zone5_boss_enemies
	.quad	zone5_act2_enemies
	.quad	zone6_act1_enemies
	.quad	zone6_act2_enemies
	.quad	zone6_boss_enemies
	.quad	zone6_act2_enemies
	.quad	zone7_act1_enemies
	.quad	zone7_act2_enemies
	.quad	zone7_boss_enemies
	.quad	zone7_act2_enemies
	.quad	zone8_act1_enemies
	.quad	zone8_act2_enemies
	.quad	zone8_boss_enemies
	.quad	0
	.quad	0
	.quad	0
	.globl	gSpritePosData_itemboxes
	.align 32
gSpritePosData_itemboxes:
	.quad	zone1_act1_itemboxes
	.quad	zone1_act2_itemboxes
	.quad	zone1_boss_itemboxes
	.quad	zone1_act2_itemboxes
	.quad	zone2_act1_itemboxes
	.quad	zone2_act2_itemboxes
	.quad	zone2_boss_itemboxes
	.quad	zone2_act2_itemboxes
	.quad	zone3_act1_itemboxes
	.quad	zone3_act2_itemboxes
	.quad	zone3_boss_itemboxes
	.quad	zone3_act2_itemboxes
	.quad	zone4_act1_itemboxes
	.quad	zone4_act2_itemboxes
	.quad	zone4_boss_itemboxes
	.quad	zone4_act2_itemboxes
	.quad	zone5_act1_itemboxes
	.quad	zone5_act2_itemboxes
	.quad	zone5_boss_itemboxes
	.quad	zone5_act2_itemboxes
	.quad	zone6_act1_itemboxes
	.quad	zone6_act2_itemboxes
	.quad	zone6_boss_itemboxes
	.quad	zone6_act2_itemboxes
	.quad	zone7_act1_itemboxes
	.quad	zone7_act2_itemboxes
	.quad	zone7_boss_itemboxes
	.quad	zone7_act2_itemboxes
	.quad	zone8_act1_itemboxes
	.quad	zone8_act2_itemboxes
	.quad	zone8_boss_itemboxes
	.quad	0
	.quad	0
	.quad	0
	.globl	gSpritePosData_interactables
	.align 32
gSpritePosData_interactables:
	.quad	zone1_act1_interactables
	.quad	zone1_act2_interactables
	.quad	zone1_boss_interactables
	.quad	zone1_act2_interactables
	.quad	zone2_act1_interactables
	.quad	zone2_act2_interactables
	.quad	zone2_boss_interactables
	.quad	zone2_act2_interactables
	.quad	zone3_act1_interactables
	.quad	zone3_act2_interactables
	.quad	zone3_boss_interactables
	.quad	zone3_act2_interactables
	.quad	zone4_act1_interactables
	.quad	zone4_act2_interactables
	.quad	zone4_boss_interactables
	.quad	zone4_act2_interactables
	.quad	zone5_act1_interactables
	.quad	zone5_act2_interactables
	.quad	zone5_boss_interactables
	.quad	zone5_act2_interactables
	.quad	zone6_act1_interactables
	.quad	zone6_act2_interactables
	.quad	zone6_boss_interactables
	.quad	zone6_act2_interactables
	.quad	zone7_act1_interactables
	.quad	zone7_act2_interactables
	.quad	zone7_boss_interactables
	.quad	zone7_act2_interactables
	.quad	zone8_act1_interactables
	.quad	zone8_act2_interactables
	.quad	zone8_boss_interactables
	.quad	0
	.quad	0
	.quad	0
	.ident	"GCC: (GNU) 13-win32"
	.def	EwramFree;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_ItemBox;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	EwramMalloc;	.scl	2;	.type	32;	.endef
	.def	RLUnCompWram;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	CreateEnemyDefeatScore;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	sub_80807CC;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Toggle_PlayerLayer;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Spring_Normal_Up;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Spring_Normal_Down;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Spring_Normal_Right;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Spring_Normal_Left;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Spring_Big_UpLeft;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Spring_Big_UpRight;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Spring_Big_DownLeft;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Spring_Big_DownRight;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Spring_Small_UpLeft;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Spring_Small_UpRight;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Ramp;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Spikes_Up;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_GrindRail_Start;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_GrindRail_StartAir;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_GrindRail_EndGround;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_GrindRail_End_ForcedJump;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_GrindRail_EndAlternate;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_GrindRail_EndAir;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_GrindRail_EndGround_Left;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_GrindRail_EndAir_Left;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_MysteryItemBox;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_CollectRingsLapTrigger;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Mon;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Kiki;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Buzzer;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Gohla;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_KuraKura;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Kubinaga;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_PikoPiko;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Bell;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Yado;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Circus;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Koura;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Madillo;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Straw;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Hammerhead;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Spinner;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Mouse;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Pen;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_GejiGeji;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Balloon;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Flickey;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Kyura;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Star;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_BulletBuzzer;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Platform;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_PlatformThin;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Decoration;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Booster;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_InclineRamp;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_BouncySpring;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_PlatformCrumbling;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_RotatingHandle;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_GappedLoop_Start;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_GappedLoop_End;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Spikes_Down;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Spikes_LeftRight;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Spikes_HidingUp;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Spikes_HidingDown;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Corkscrew_Start;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Corkscrew_End;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_BouncyBar;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Corkscrew3D_Start;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Corkscrew3D_End;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_StageGoal;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Checkpoint;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_CeilingSlope;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Toggle_Checkpoint;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Toggle_StageGoal;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_WindUpStick;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_HookRail_Unused;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_HookRail_Start;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_HookRail_End;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Windmill;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_TurnAroundBar;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Crane;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_DashRing;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_FloatingSpring_Up;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_NoteSphere;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_NoteBlock;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Chord;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Keyboard_Vertical;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Keyboard_Horizontal_PushLeft;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Keyboard_Horizontal_PushRight;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_GermanFlute;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_FrenchHorn_Entry;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_PipeInstrument_Entry;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_SlowingSnow;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_FunnelSphere;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_HalfPipe_End;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_HalfPipe_Start;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_BigSnowball;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_BounceBlock;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Pipe_Start;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Pipe_End;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_LightBridge;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_ArrowPlatform_Left;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_ArrowPlatform_Right;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_ArrowPlatform_Up;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_SpikePlatform;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_FallingPlatform;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_LightGlobe;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Platform_Square;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Propeller;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_SlidyIce;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_SmallWindmill;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_PropellerSpring;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Whirlwind_A;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Fan_Left;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Fan_Right;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Fan_Left_Periodic;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Fan_Right_Periodic;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Launcher_Left_GDown;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Launcher_Right_GDown;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Cannon;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Pole;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_IronBall;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_FlyingHandle;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_SpeedingPlatform;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Toggle_Gravity__Down;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Toggle_Gravity__Up;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Toggle_Gravity__Toggle;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Launcher_Left_GUp;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Launcher_Right_GUp;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_SpecialRing;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Whirlwind_B;	.scl	2;	.type	32;	.endef
	.def	CreateEntity_Interactable105;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gMusicManagerState, "dr"
	.globl	.refptr.gMusicManagerState
	.linkonce	discard
.refptr.gMusicManagerState:
	.quad	gMusicManagerState
	.section	.rdata$.refptr.gNumLives, "dr"
	.globl	.refptr.gNumLives
	.linkonce	discard
.refptr.gNumLives:
	.quad	gNumLives
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gLevelScore, "dr"
	.globl	.refptr.gLevelScore
	.linkonce	discard
.refptr.gLevelScore:
	.quad	gLevelScore
	.section	.rdata$.refptr.EWRAM_START, "dr"
	.globl	.refptr.EWRAM_START
	.linkonce	discard
.refptr.EWRAM_START:
	.quad	EWRAM_START
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
	.section	.rdata$.refptr.gEntitiesManagerTask, "dr"
	.globl	.refptr.gEntitiesManagerTask
	.linkonce	discard
.refptr.gEntitiesManagerTask:
	.quad	gEntitiesManagerTask
