	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	sub_8057348;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8057348
sub_8057348:
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
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rbp, QWORD PTR [rbx]
	movzx	eax, BYTE PTR 102[rbx]
	lea	rdi, 16[rbx]
	mov	edx, DWORD PTR 88[rbx]
	test	BYTE PTR 49[rbx], 4
	je	.L2
	lea	ecx, 512[rdx]
	sub	edx, -128
	test	al, al
	cmovne	edx, ecx
.L4:
	mov	ecx, DWORD PTR 92[rbx]
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	mov	DWORD PTR 88[rbx], edx
	add	ecx, DWORD PTR 84[rbx]
	add	edx, DWORD PTR 80[rbx]
	sar	edx, 8
	sar	ecx, 8
	cmp	BYTE PTR 101[rbx], 0
	movzx	r8d, BYTE PTR 100[rbx]
	mov	QWORD PTR 40[rsp], rax
	mov	QWORD PTR 32[rsp], 0
	je	.L6
	mov	r9d, -8
	call	sub_801F07C
	test	eax, eax
	js	.L32
.L7:
	mov	r12d, DWORD PTR 92[rbx]
	test	eax, eax
	jle	.L8
	sal	eax, 8
	sub	r12d, eax
	mov	DWORD PTR 92[rbx], r12d
.L8:
	mov	r13d, DWORD PTR 88[rbx]
	add	r12d, DWORD PTR 84[rbx]
	add	r13d, DWORD PTR 80[rbx]
	sar	r12d, 8
	sar	r13d, 8
	add	r12d, 8
	add	r13d, 8
.L9:
	mov	r14, QWORD PTR .refptr.gCamera[rip]
	mov	eax, r13d
	xor	r9d, r9d
	mov	r8d, r12d
	mov	edx, r13d
	mov	rcx, rdi
	sub	ax, WORD PTR [r14]
	mov	WORD PTR 54[rbx], ax
	mov	eax, r12d
	sub	ax, WORD PTR 4[r14]
	mov	WORD PTR 56[rbx], ax
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L30
	mov	eax, DWORD PTR 80[rbx]
	mov	edx, DWORD PTR [r14]
	sar	eax, 8
	lea	ecx, 554[rdx]
	cmp	eax, ecx
	jg	.L13
	add	edx, -128
	cmp	eax, edx
	jge	.L33
.L13:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L15
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L14
.L15:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR 0[rbp], al
.L30:
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 48
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
.L6:
	mov	r9d, 8
	call	sub_801F07C
	test	eax, eax
	js	.L34
.L10:
	mov	r12d, DWORD PTR 92[rbx]
	test	eax, eax
	jle	.L11
	sal	eax, 8
	add	r12d, eax
	mov	DWORD PTR 92[rbx], r12d
.L11:
	mov	r13d, DWORD PTR 88[rbx]
	add	r12d, DWORD PTR 84[rbx]
	add	r13d, DWORD PTR 80[rbx]
	sar	r12d, 8
	sar	r13d, 8
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L2:
	lea	ecx, -512[rdx]
	add	edx, -128
	test	al, al
	cmovne	edx, ecx
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L33:
	mov	eax, DWORD PTR 84[rbx]
	mov	edx, DWORD PTR 4[r14]
	sar	eax, 8
	lea	ecx, 368[rdx]
	cmp	eax, ecx
	jg	.L13
	add	edx, -128
	cmp	eax, edx
	jl	.L13
	.p2align 4,,10
	.p2align 3
.L14:
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	ecx, r13d
	movsx	edx, BYTE PTR 3[rbp]
	sal	ecx, 8
	mov	r8d, DWORD PTR 12[rax]
	mov	eax, DWORD PTR 88[rbx]
	sar	eax, 8
	test	BYTE PTR 49[rbx], 4
	je	.L16
	cmp	r8d, ecx
	jle	.L18
	add	r13d, 100
	sal	r13d, 8
	cmp	r13d, r8d
	jg	.L35
.L18:
	movzx	r8d, BYTE PTR 5[rbp]
	add	edx, r8d
	sal	edx, 3
	cmp	edx, eax
	jle	.L29
.L23:
	mov	edx, r12d
	sal	edx, 8
	call	Player_UpdateHomingPosition
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	add	rsp, 48
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
.L16:
	sal	edx, 3
	cmp	r8d, ecx
	jge	.L27
	sub	r13d, 100
	sal	r13d, 8
	cmp	r13d, r8d
	jl	.L36
.L27:
	cmp	edx, eax
	jl	.L23
.L29:
	mov	rax, QWORD PTR [rsi]
	lea	rsi, sub_8057618[rip]
	mov	edx, -255
	mov	QWORD PTR 40[rax], rsi
	mov	eax, 513
	mov	WORD PTR 34[rbx], ax
	mov	WORD PTR 64[rbx], dx
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L32:
	mov	ecx, DWORD PTR 92[rbx]
	sal	eax, 8
	mov	edx, DWORD PTR 88[rbx]
	mov	r9d, 8
	add	edx, DWORD PTR 80[rbx]
	movzx	r8d, BYTE PTR 100[rbx]
	sub	ecx, eax
	mov	rax, QWORD PTR .refptr.sub_801EC3C[rip]
	sar	edx, 8
	mov	DWORD PTR 92[rbx], ecx
	add	ecx, DWORD PTR 84[rbx]
	mov	QWORD PTR 32[rsp], rax
	sar	ecx, 8
	call	sub_801F100
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L34:
	sal	eax, 8
	add	eax, DWORD PTR 92[rbx]
	mov	edx, DWORD PTR 88[rbx]
	mov	r9d, 8
	add	edx, DWORD PTR 80[rbx]
	movzx	r8d, BYTE PTR 100[rbx]
	mov	DWORD PTR 92[rbx], eax
	add	eax, DWORD PTR 84[rbx]
	sar	edx, 8
	sar	eax, 8
	mov	ecx, eax
	mov	rax, QWORD PTR .refptr.sub_801EC3C[rip]
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F100
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L35:
	mov	BYTE PTR 102[rbx], 1
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L36:
	mov	BYTE PTR 102[rbx], 1
	jmp	.L27
	.seh_endproc
	.p2align 4
	.def	sub_8057618;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8057618
sub_8057618:
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
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	mov	edx, DWORD PTR 88[rbx]
	mov	ecx, DWORD PTR 92[rbx]
	lea	rbp, 16[rbx]
	add	edx, DWORD PTR 80[rbx]
	add	ecx, DWORD PTR 84[rbx]
	sar	edx, 8
	sar	ecx, 8
	cmp	BYTE PTR 101[rbx], 0
	mov	r12, QWORD PTR [rbx]
	movzx	r8d, BYTE PTR 100[rbx]
	mov	QWORD PTR 40[rsp], rax
	mov	QWORD PTR 32[rsp], 0
	je	.L38
	mov	r9d, -8
	call	sub_801F07C
	test	eax, eax
	js	.L52
.L39:
	mov	esi, DWORD PTR 92[rbx]
	test	eax, eax
	jle	.L40
	sal	eax, 8
	sub	esi, eax
	mov	DWORD PTR 92[rbx], esi
.L40:
	mov	ecx, DWORD PTR 88[rbx]
	add	esi, DWORD PTR 84[rbx]
	add	ecx, DWORD PTR 80[rbx]
	sar	esi, 8
	sar	ecx, 8
	add	esi, 8
	lea	r13d, 8[rcx]
.L41:
	mov	r14, QWORD PTR .refptr.gCamera[rip]
	mov	eax, r13d
	xor	r9d, r9d
	mov	r8d, esi
	mov	edx, r13d
	mov	rcx, rbp
	sub	ax, WORD PTR [r14]
	mov	WORD PTR 54[rbx], ax
	mov	eax, esi
	sub	ax, WORD PTR 4[r14]
	mov	WORD PTR 56[rbx], ax
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L51
	mov	eax, DWORD PTR 80[rbx]
	mov	edx, DWORD PTR [r14]
	sar	eax, 8
	lea	ecx, 554[rdx]
	cmp	eax, ecx
	jg	.L45
	add	edx, -128
	cmp	eax, edx
	jge	.L53
.L45:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L47
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L46
.L47:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR [r12], al
.L51:
	mov	rcx, QWORD PTR [rdi]
	add	rsp, 48
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
.L38:
	mov	r9d, 8
	call	sub_801F07C
	test	eax, eax
	js	.L54
.L42:
	mov	esi, DWORD PTR 92[rbx]
	test	eax, eax
	jle	.L43
	sal	eax, 8
	add	esi, eax
	mov	DWORD PTR 92[rbx], esi
.L43:
	mov	ecx, DWORD PTR 88[rbx]
	add	ecx, DWORD PTR 80[rbx]
	sar	ecx, 8
	add	esi, DWORD PTR 84[rbx]
	mov	r13d, ecx
	sar	esi, 8
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L53:
	mov	eax, DWORD PTR 84[rbx]
	mov	edx, DWORD PTR 4[r14]
	sar	eax, 8
	lea	ecx, 368[rdx]
	cmp	eax, ecx
	jg	.L45
	add	edx, -128
	cmp	eax, edx
	jl	.L45
	.p2align 4,,10
	.p2align 3
.L46:
	sal	esi, 8
	mov	ecx, r13d
	sal	ecx, 8
	mov	edx, esi
	call	Player_UpdateHomingPosition
	mov	rcx, rbp
	call	UpdateSpriteAnimation
	test	eax, eax
	jne	.L48
	mov	edx, DWORD PTR 48[rbx]
	mov	BYTE PTR 102[rbx], 0
	mov	ecx, edx
	mov	eax, edx
	and	ch, -5
	or	ah, 4
	and	dh, 4
	mov	edx, -256
	cmovne	eax, ecx
	mov	WORD PTR 64[rbx], dx
	mov	DWORD PTR 48[rbx], eax
	mov	eax, 513
	mov	WORD PTR 34[rbx], ax
	mov	rax, QWORD PTR [rdi]
	lea	rdi, sub_8057348[rip]
	mov	QWORD PTR 40[rax], rdi
.L48:
	mov	rcx, rbp
	add	rsp, 48
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
.L52:
	mov	ecx, DWORD PTR 92[rbx]
	sal	eax, 8
	mov	edx, DWORD PTR 88[rbx]
	mov	r9d, 8
	add	edx, DWORD PTR 80[rbx]
	movzx	r8d, BYTE PTR 100[rbx]
	sub	ecx, eax
	mov	rax, QWORD PTR .refptr.sub_801EC3C[rip]
	sar	edx, 8
	mov	DWORD PTR 92[rbx], ecx
	add	ecx, DWORD PTR 84[rbx]
	mov	QWORD PTR 32[rsp], rax
	sar	ecx, 8
	call	sub_801F100
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L54:
	sal	eax, 8
	add	eax, DWORD PTR 92[rbx]
	mov	edx, DWORD PTR 88[rbx]
	mov	r9d, 8
	add	edx, DWORD PTR 80[rbx]
	movzx	r8d, BYTE PTR 100[rbx]
	mov	DWORD PTR 92[rbx], eax
	add	eax, DWORD PTR 84[rbx]
	sar	edx, 8
	sar	eax, 8
	mov	ecx, eax
	mov	rax, QWORD PTR .refptr.sub_801EC3C[rip]
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F100
	jmp	.L42
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Mouse
	.def	CreateEntity_Mouse;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Mouse
CreateEntity_Mouse:
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
	je	.L56
	mov	rax, QWORD PTR .refptr.gDifficultyLevel[rip]
	cmp	BYTE PTR [rax], 1
	je	.L55
.L56:
	mov	rax, QWORD PTR .refptr.TaskDestructor_80095E8[rip]
	xor	r9d, r9d
	mov	r8d, 16448
	mov	edx, 104
	lea	rcx, sub_8057348[rip]
	mov	QWORD PTR 32[rsp], rax
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
	mov	BYTE PTR 100[rbx], r8b
	sal	edi, 5
	sal	edx, 11
	mov	DWORD PTR 80[rbx], edx
	movzx	ecx, BYTE PTR 1[rsi]
	mov	DWORD PTR 88[rbx], 0
	add	ecx, edi
	sal	ecx, 11
	cmp	BYTE PTR 6[rsi], 0
	setne	BYTE PTR 101[rbx]
	sar	edx, 8
	and	r8d, 1
	mov	DWORD PTR 84[rbx], ecx
	sar	ecx, 8
	mov	QWORD PTR 40[rsp], rax
	mov	QWORD PTR 32[rsp], 0
	call	sub_801F07C
	mov	BYTE PTR 102[rbx], 0
	mov	ecx, 15
	sal	eax, 8
	mov	DWORD PTR 96[rbx], 0
	mov	DWORD PTR 92[rbx], eax
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
	mov	edx, -256
	mov	DWORD PTR 32[rbx], 33619968
	mov	QWORD PTR 24[rbx], rax
	xor	eax, eax
	cmp	BYTE PTR 101[rbx], 0
	mov	WORD PTR 52[rbx], ax
	mov	DWORD PTR 58[rbx], 1152
	mov	WORD PTR 64[rbx], dx
	mov	BYTE PTR 66[rbx], 16
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 8192
	je	.L55
	mov	DWORD PTR 48[rbx], 10240
.L55:
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	sub_801F07C;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Enemy_Attack;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Player_UpdateHomingPosition;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	sub_801F100;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.TaskDestructor_80095E8, "dr"
	.globl	.refptr.TaskDestructor_80095E8
	.linkonce	discard
.refptr.TaskDestructor_80095E8:
	.quad	TaskDestructor_80095E8
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
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
