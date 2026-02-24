	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_Gohla;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_Gohla
TaskDestructor_Gohla:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 96[rbx]
	add	rsp, 32
	pop	rbx
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	RenderProjectiles;	.scl	3;	.type	32;	.endef
	.seh_proc	RenderProjectiles
RenderProjectiles:
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
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	lea	rbp, 88[rcx]
	mov	r12, rcx
	mov	edi, edx
	mov	esi, r8d
	mov	rcx, rbp
	mov	ebx, r9d
	call	UpdateSpriteAnimation
	movd	xmm1, DWORD PTR .LC0[rip]
	mov	eax, DWORD PTR 120[r12]
	movd	xmm0, DWORD PTR 172[r12]
	movd	xmm2, DWORD PTR .LC1[rip]
	paddw	xmm0, xmm1
	pand	xmm0, xmm2
	pextrw	ecx, xmm0, 1
	pextrw	edx, xmm0, 0
	movd	DWORD PTR 172[r12], xmm0
	and	bh, 4
	je	.L4
	or	ah, 4
.L5:
	mov	DWORD PTR 120[r12], eax
	mov	rbx, QWORD PTR .refptr.gSineTable[rip]
	xor	r13d, r13d
.L8:
	mov	eax, r13d
	sal	eax, 8
	add	edx, eax
	mov	rax, rdx
	and	dx, 512
	and	eax, 1023
	movzx	eax, WORD PTR 512[rbx+rax*2]
	sar	ax, 10
	add	eax, edi
	mov	WORD PTR 126[r12], ax
	lea	eax, 0[r13+r13*2]
	sal	eax, 7
	add	eax, ecx
	mov	rcx, rbp
	and	eax, 1023
	movzx	eax, WORD PTR [rbx+rax*2]
	sar	ax, 13
	add	eax, esi
	cmp	dx, 1
	mov	WORD PTR 128[r12], ax
	sbb	eax, eax
	add	r13d, 1
	and	ax, 128
	add	ax, 1088
	mov	WORD PTR 130[r12], ax
	call	DisplaySprite
	cmp	r13d, 4
	je	.L3
	movzx	edx, WORD PTR 172[r12]
	movzx	ecx, WORD PTR 174[r12]
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L3:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	and	ah, -5
	jmp	.L5
	.seh_endproc
	.p2align 4
	.def	CheckPlayerHit;	.scl	3;	.type	32;	.endef
	.seh_proc	CheckPlayerHit
CheckPlayerHit:
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
	xor	r9d, r9d
	lea	rbx, 16[rcx]
	mov	esi, edx
	mov	edi, r8d
	mov	rcx, rbx
	call	Coll_Player_Enemy_Attack
	mov	edx, eax
	mov	eax, 1
	test	edx, edx
	je	.L13
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L13:
	mov	rbp, QWORD PTR .refptr.gPlayer[rip]
	xor	r9d, r9d
	mov	r8d, edi
	mov	edx, esi
	mov	rcx, rbx
	mov	QWORD PTR 32[rsp], rbp
	call	Coll_Player_Enemy
	mov	QWORD PTR 32[rsp], rbp
	mov	r8d, edi
	mov	edx, esi
	mov	r9d, 1
	mov	rcx, rbx
	call	Coll_Player_Enemy
	xor	eax, eax
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.def	sub_8051928;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8051928
sub_8051928:
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
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	r9d, 8
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	edx, DWORD PTR 160[rbx]
	mov	ecx, DWORD PTR 164[rbx]
	mov	rdi, QWORD PTR [rbx]
	movzx	r8d, BYTE PTR 176[rbx]
	lea	eax, 128[rdx]
	add	edx, -128
	test	BYTE PTR 49[rbx], 4
	cmovne	edx, eax
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	add	ecx, DWORD PTR 156[rbx]
	sar	ecx, 8
	mov	DWORD PTR 160[rbx], edx
	add	edx, DWORD PTR 152[rbx]
	mov	QWORD PTR 40[rsp], rax
	sar	edx, 8
	mov	QWORD PTR 32[rsp], 0
	call	sub_801F07C
	test	eax, eax
	js	.L26
.L17:
	mov	edx, DWORD PTR 164[rbx]
	test	eax, eax
	jle	.L18
	sal	eax, 8
	add	edx, eax
	mov	DWORD PTR 164[rbx], edx
.L18:
	mov	r12d, DWORD PTR 160[rbx]
	add	r12d, DWORD PTR 152[rbx]
	mov	rcx, rbx
	add	edx, DWORD PTR 156[rbx]
	mov	r13, QWORD PTR .refptr.gCamera[rip]
	mov	eax, r12d
	sar	eax, 8
	mov	r8d, edx
	mov	ebp, edx
	sar	r8d, 8
	mov	edx, eax
	sub	dx, WORD PTR 0[r13]
	mov	WORD PTR 54[rbx], dx
	mov	edx, r8d
	sub	dx, WORD PTR 4[r13]
	mov	WORD PTR 56[rbx], dx
	mov	edx, eax
	call	CheckPlayerHit
	test	al, al
	jne	.L25
	mov	eax, DWORD PTR 152[rbx]
	mov	edx, DWORD PTR 0[r13]
	sar	eax, 8
	lea	ecx, 554[rdx]
	cmp	eax, ecx
	jle	.L27
.L20:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L22
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L21
.L22:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR [rdi], al
.L25:
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L27:
	add	edx, -128
	cmp	eax, edx
	jl	.L20
	mov	eax, DWORD PTR 156[rbx]
	mov	edx, DWORD PTR 4[r13]
	sar	eax, 8
	lea	ecx, 368[rdx]
	cmp	eax, ecx
	jg	.L20
	add	edx, -128
	cmp	eax, edx
	jl	.L20
	.p2align 4,,10
	.p2align 3
.L21:
	mov	eax, DWORD PTR 160[rbx]
	movsx	ecx, BYTE PTR 3[rdi]
	sar	eax, 8
	lea	edx, 0[0+rcx*8]
	cmp	eax, edx
	jg	.L28
.L23:
	mov	rax, QWORD PTR [rsi]
	lea	rdi, sub_8051AF0[rip]
	mov	edx, -255
	mov	QWORD PTR 40[rax], rdi
	mov	eax, 483
	mov	WORD PTR 34[rbx], ax
	mov	WORD PTR 64[rbx], dx
.L24:
	mov	edx, ebp
	mov	ecx, r12d
	lea	rsi, 16[rbx]
	xor	dl, dl
	xor	cl, cl
	call	Player_UpdateHomingPosition
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	movzx	eax, WORD PTR 56[rbx]
	movsx	edx, WORD PTR 54[rbx]
	mov	rcx, rbx
	mov	r9d, DWORD PTR 48[rbx]
	lea	r8d, -4[rax]
	movsx	r8d, r8w
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	RenderProjectiles
	.p2align 4,,10
	.p2align 3
.L26:
	sal	eax, 8
	add	eax, DWORD PTR 164[rbx]
	mov	edx, DWORD PTR 160[rbx]
	mov	r9d, 8
	mov	DWORD PTR 164[rbx], eax
	add	eax, DWORD PTR 156[rbx]
	sar	eax, 8
	add	edx, DWORD PTR 152[rbx]
	movzx	r8d, BYTE PTR 176[rbx]
	mov	ecx, eax
	mov	rax, QWORD PTR .refptr.sub_801EC3C[rip]
	sar	edx, 8
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F100
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L28:
	movzx	edx, BYTE PTR 5[rdi]
	add	edx, ecx
	sal	edx, 3
	cmp	eax, edx
	jl	.L24
	jmp	.L23
	.seh_endproc
	.p2align 4
	.def	sub_8051AF0;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8051AF0
sub_8051AF0:
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
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rbp, QWORD PTR .refptr.sub_801EC3C[rip]
	mov	r9d, 8
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	edx, DWORD PTR 160[rbx]
	mov	ecx, DWORD PTR 164[rbx]
	add	edx, DWORD PTR 152[rbx]
	add	ecx, DWORD PTR 156[rbx]
	mov	rdi, QWORD PTR [rbx]
	movzx	r8d, BYTE PTR 176[rbx]
	mov	QWORD PTR 32[rsp], rbp
	sar	edx, 8
	sar	ecx, 8
	call	sub_801F100
	test	eax, eax
	js	.L40
.L30:
	mov	edx, DWORD PTR 164[rbx]
	test	eax, eax
	jle	.L31
	sal	eax, 8
	add	edx, eax
	mov	DWORD PTR 164[rbx], edx
.L31:
	mov	r12d, DWORD PTR 160[rbx]
	add	r12d, DWORD PTR 152[rbx]
	mov	rcx, rbx
	add	edx, DWORD PTR 156[rbx]
	mov	r13, QWORD PTR .refptr.gCamera[rip]
	mov	eax, r12d
	sar	eax, 8
	mov	r8d, edx
	mov	ebp, edx
	sar	r8d, 8
	mov	edx, eax
	sub	dx, WORD PTR 0[r13]
	mov	WORD PTR 54[rbx], dx
	mov	edx, r8d
	sub	dx, WORD PTR 4[r13]
	mov	WORD PTR 56[rbx], dx
	mov	edx, eax
	call	CheckPlayerHit
	test	al, al
	jne	.L39
	mov	eax, DWORD PTR 152[rbx]
	mov	edx, DWORD PTR 0[r13]
	sar	eax, 8
	lea	ecx, 554[rdx]
	cmp	eax, ecx
	jle	.L41
.L33:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L35
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L34
.L35:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR [rdi], al
.L39:
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L41:
	add	edx, -128
	cmp	eax, edx
	jl	.L33
	mov	eax, DWORD PTR 156[rbx]
	mov	edx, DWORD PTR 4[r13]
	sar	eax, 8
	lea	ecx, 368[rdx]
	cmp	eax, ecx
	jg	.L33
	add	edx, -128
	cmp	eax, edx
	jl	.L33
	.p2align 4,,10
	.p2align 3
.L34:
	mov	edx, ebp
	mov	ecx, r12d
	lea	rdi, 16[rbx]
	xor	cl, cl
	xor	dl, dl
	call	Player_UpdateHomingPosition
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	test	eax, eax
	jne	.L36
	mov	edx, DWORD PTR 48[rbx]
	mov	ecx, edx
	mov	eax, edx
	and	ch, -5
	or	ah, 4
	and	dh, 4
	mov	edx, -256
	cmovne	eax, ecx
	mov	WORD PTR 64[rbx], dx
	mov	DWORD PTR 48[rbx], eax
	mov	eax, 483
	mov	WORD PTR 34[rbx], ax
	mov	rax, QWORD PTR [rsi]
	lea	rsi, sub_8051928[rip]
	mov	QWORD PTR 40[rax], rsi
.L36:
	mov	rcx, rdi
	call	DisplaySprite
	movzx	eax, WORD PTR 56[rbx]
	movsx	edx, WORD PTR 54[rbx]
	mov	rcx, rbx
	mov	r9d, DWORD PTR 48[rbx]
	lea	r8d, -4[rax]
	movsx	r8d, r8w
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	RenderProjectiles
	.p2align 4,,10
	.p2align 3
.L40:
	sal	eax, 8
	add	eax, DWORD PTR 164[rbx]
	mov	edx, DWORD PTR 160[rbx]
	mov	r9d, 8
	mov	DWORD PTR 164[rbx], eax
	add	edx, DWORD PTR 152[rbx]
	add	eax, DWORD PTR 156[rbx]
	movzx	r8d, BYTE PTR 176[rbx]
	mov	QWORD PTR 32[rsp], rbp
	sar	edx, 8
	sar	eax, 8
	mov	ecx, eax
	call	sub_801F100
	jmp	.L30
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Gohla
	.def	CreateEntity_Gohla;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Gohla
CreateEntity_Gohla:
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
	je	.L43
	mov	rax, QWORD PTR .refptr.gDifficultyLevel[rip]
	cmp	BYTE PTR [rax], 1
	je	.L42
.L43:
	lea	rax, TaskDestructor_Gohla[rip]
	xor	r9d, r9d
	mov	r8d, 16448
	mov	edx, 184
	mov	QWORD PTR 32[rsp], rax
	lea	rcx, sub_8051928[rip]
	call	TaskCreate
	mov	ecx, r12d
	mov	r9d, 8
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 8[rbx], bp
	movzx	ebp, bp
	mov	WORD PTR 10[rbx], di
	movzx	edi, di
	mov	QWORD PTR [rbx], rsi
	movzx	edx, BYTE PTR [rsi]
	movzx	eax, dl
	mov	ah, cl
	mov	WORD PTR 12[rbx], ax
	cmp	BYTE PTR 4[rsi], 0
	setne	r8b
	sal	ebp, 5
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	add	edx, ebp
	mov	BYTE PTR 176[rbx], r8b
	sal	edi, 5
	and	r8d, 1
	sal	edx, 11
	mov	DWORD PTR 152[rbx], edx
	movzx	ecx, BYTE PTR 1[rsi]
	sar	edx, 8
	mov	DWORD PTR 160[rbx], 0
	add	ecx, edi
	sal	ecx, 11
	mov	DWORD PTR 156[rbx], ecx
	sar	ecx, 8
	mov	QWORD PTR 40[rsp], rax
	mov	QWORD PTR 32[rsp], 0
	call	sub_801F07C
	mov	ecx, 9
	mov	QWORD PTR 168[rbx], 0
	sal	eax, 8
	mov	DWORD PTR 164[rbx], eax
	movzx	eax, BYTE PTR [rsi]
	add	eax, ebp
	sal	eax, 3
	mov	WORD PTR 54[rbx], ax
	movzx	eax, BYTE PTR 1[rsi]
	add	eax, edi
	sal	eax, 3
	mov	WORD PTR 56[rbx], ax
	mov	BYTE PTR [rsi], -2
	call	VramMalloc
	movzx	esi, WORD PTR .LC4[rip]
	mov	DWORD PTR 32[rbx], 31653888
	mov	ecx, 6
	mov	QWORD PTR 24[rbx], rax
	xor	eax, eax
	mov	WORD PTR 52[rbx], ax
	mov	DWORD PTR 58[rbx], 1152
	mov	WORD PTR 64[rbx], si
	mov	BYTE PTR 66[rbx], 16
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 8192
	mov	DWORD PTR 126[rbx], 0
	call	VramMalloc
	xor	edx, edx
	mov	DWORD PTR 104[rbx], 31719424
	mov	QWORD PTR 96[rbx], rax
	mov	WORD PTR 124[rbx], dx
	mov	DWORD PTR 130[rbx], 1088
	mov	WORD PTR 136[rbx], si
	mov	BYTE PTR 138[rbx], 16
	mov	BYTE PTR 141[rbx], 0
	mov	DWORD PTR 144[rbx], -1
	mov	DWORD PTR 120[rbx], 8192
.L42:
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 4
.LC0:
	.word	24
	.word	32
	.align 4
.LC1:
	.word	1023
	.word	1023
	.align 2
.LC4:
	.byte	0
	.byte	-1
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Enemy_Attack;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Enemy;	.scl	2;	.type	32;	.endef
	.def	sub_801F07C;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Player_UpdateHomingPosition;	.scl	2;	.type	32;	.endef
	.def	sub_801F100;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
