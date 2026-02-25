	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	Task_PenMove;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_PenMove
Task_PenMove:
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
	movzx	eax, BYTE PTR 101[rbx]
	lea	rdi, 16[rbx]
	mov	edx, DWORD PTR 88[rbx]
	test	BYTE PTR 49[rbx], 4
	je	.L2
	lea	ecx, 512[rdx]
	sub	edx, -128
	test	al, al
	cmovne	edx, ecx
.L4:
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	mov	DWORD PTR 88[rbx], edx
	mov	r9d, 8
	add	edx, DWORD PTR 80[rbx]
	mov	ecx, DWORD PTR 92[rbx]
	movzx	r8d, BYTE PTR 100[rbx]
	add	ecx, DWORD PTR 84[rbx]
	mov	QWORD PTR 40[rsp], rax
	sar	edx, 8
	mov	QWORD PTR 32[rsp], 0
	sar	ecx, 8
	call	sub_801F07C
	test	eax, eax
	js	.L29
.L6:
	mov	r8d, DWORD PTR 92[rbx]
	test	eax, eax
	jle	.L7
	sal	eax, 8
	add	r8d, eax
	mov	DWORD PTR 92[rbx], r8d
.L7:
	mov	r14, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 88[rbx]
	xor	r9d, r9d
	mov	rcx, rdi
	add	eax, DWORD PTR 80[rbx]
	add	r8d, DWORD PTR 84[rbx]
	sar	eax, 8
	sar	r8d, 8
	mov	r13d, eax
	sub	ax, WORD PTR [r14]
	mov	r12d, r8d
	mov	WORD PTR 54[rbx], ax
	mov	eax, r8d
	sub	ax, WORD PTR 4[r14]
	mov	edx, r13d
	mov	WORD PTR 56[rbx], ax
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L27
	mov	eax, DWORD PTR 80[rbx]
	mov	edx, DWORD PTR [r14]
	sar	eax, 8
	lea	ecx, 554[rdx]
	cmp	eax, ecx
	jle	.L30
.L9:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L11
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L10
.L11:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR 0[rbp], al
.L27:
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
.L30:
	add	edx, -128
	cmp	eax, edx
	jl	.L9
	mov	eax, DWORD PTR 84[rbx]
	mov	edx, DWORD PTR 4[r14]
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
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, DWORD PTR 88[rbx]
	mov	ecx, r13d
	sal	ecx, 8
	mov	r8d, DWORD PTR 12[rax]
	sar	edx, 8
	movsx	eax, BYTE PTR 3[rbp]
	test	BYTE PTR 49[rbx], 4
	je	.L12
	cmp	r8d, ecx
	jle	.L16
	lea	r9d, 25600[rcx]
	cmp	r9d, r8d
	jle	.L16
	cmp	BYTE PTR 101[rbx], 0
	jne	.L15
	mov	r10d, 500
	mov	r11d, -255
	mov	WORD PTR 34[rbx], r10w
	mov	WORD PTR 64[rbx], r11w
.L15:
	mov	BYTE PTR 101[rbx], 1
.L16:
	movzx	r8d, BYTE PTR 5[rbp]
	add	eax, r8d
	sal	eax, 3
	cmp	eax, edx
	jle	.L26
.L21:
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
.L2:
	lea	ecx, -512[rdx]
	add	edx, -128
	test	al, al
	cmovne	edx, ecx
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L29:
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
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L12:
	sal	eax, 3
	cmp	r8d, ecx
	jge	.L25
	lea	r9d, -25600[rcx]
	cmp	r9d, r8d
	jge	.L25
	cmp	BYTE PTR 101[rbx], 0
	jne	.L19
	mov	r8d, 500
	mov	r9d, -255
	mov	WORD PTR 34[rbx], r8w
	mov	WORD PTR 64[rbx], r9w
.L19:
	mov	BYTE PTR 101[rbx], 1
.L25:
	cmp	eax, edx
	jl	.L21
.L26:
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_PenTurn[rip]
	mov	edx, -254
	mov	QWORD PTR 40[rax], rsi
	mov	eax, 500
	mov	WORD PTR 34[rbx], ax
	mov	WORD PTR 64[rbx], dx
	jmp	.L21
	.seh_endproc
	.p2align 4
	.def	Task_PenTurn;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_PenTurn
Task_PenTurn:
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
	mov	r9d, 8
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	mov	edx, DWORD PTR 88[rbx]
	mov	ecx, DWORD PTR 92[rbx]
	lea	rdi, 16[rbx]
	add	edx, DWORD PTR 80[rbx]
	add	ecx, DWORD PTR 84[rbx]
	mov	rbp, QWORD PTR [rbx]
	movzx	r8d, BYTE PTR 100[rbx]
	mov	QWORD PTR 40[rsp], rax
	sar	edx, 8
	mov	QWORD PTR 32[rsp], 0
	sar	ecx, 8
	call	sub_801F07C
	test	eax, eax
	js	.L42
.L32:
	mov	r8d, DWORD PTR 92[rbx]
	test	eax, eax
	jle	.L33
	sal	eax, 8
	add	r8d, eax
	mov	DWORD PTR 92[rbx], r8d
.L33:
	mov	r14, QWORD PTR .refptr.gCamera[rip]
	mov	ecx, DWORD PTR 88[rbx]
	xor	r9d, r9d
	add	ecx, DWORD PTR 80[rbx]
	add	r8d, DWORD PTR 84[rbx]
	sar	ecx, 8
	sar	r8d, 8
	mov	eax, ecx
	sub	ax, WORD PTR [r14]
	mov	r13d, ecx
	mov	edx, ecx
	mov	WORD PTR 54[rbx], ax
	mov	eax, r8d
	sub	ax, WORD PTR 4[r14]
	mov	rcx, rdi
	mov	WORD PTR 56[rbx], ax
	mov	r12d, r8d
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L41
	mov	eax, DWORD PTR 80[rbx]
	mov	edx, DWORD PTR [r14]
	sar	eax, 8
	lea	ecx, 554[rdx]
	cmp	eax, ecx
	jle	.L43
.L35:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L37
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L36
.L37:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR 0[rbp], al
.L41:
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
.L43:
	add	edx, -128
	cmp	eax, edx
	jl	.L35
	mov	eax, DWORD PTR 84[rbx]
	mov	edx, DWORD PTR 4[r14]
	sar	eax, 8
	lea	ecx, 368[rdx]
	cmp	eax, ecx
	jg	.L35
	add	edx, -128
	cmp	eax, edx
	jl	.L35
	.p2align 4,,10
	.p2align 3
.L36:
	mov	edx, r12d
	mov	ecx, r13d
	sal	ecx, 8
	sal	edx, 8
	call	Player_UpdateHomingPosition
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	test	eax, eax
	jne	.L38
	mov	edx, DWORD PTR 48[rbx]
	mov	BYTE PTR 101[rbx], 0
	mov	ecx, edx
	mov	eax, edx
	and	ch, -5
	or	ah, 4
	and	dh, 4
	mov	edx, -256
	cmovne	eax, ecx
	mov	WORD PTR 64[rbx], dx
	mov	DWORD PTR 48[rbx], eax
	mov	eax, 500
	mov	WORD PTR 34[rbx], ax
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_PenMove[rip]
	mov	QWORD PTR 40[rax], rsi
.L38:
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
.L42:
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
	jmp	.L32
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Pen
	.def	CreateEntity_Pen;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Pen
CreateEntity_Pen:
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
	mov	r8d, 16448
	xor	r9d, r9d
	mov	edx, 104
	lea	rcx, Task_PenMove[rip]
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
	and	r8d, 1
	sal	edx, 11
	mov	DWORD PTR 80[rbx], edx
	movzx	ecx, BYTE PTR 1[rsi]
	sar	edx, 8
	mov	DWORD PTR 88[rbx], 0
	add	ecx, edi
	sal	ecx, 11
	mov	DWORD PTR 84[rbx], ecx
	sar	ecx, 8
	mov	QWORD PTR 40[rsp], rax
	mov	QWORD PTR 32[rsp], 0
	call	sub_801F07C
	mov	BYTE PTR 101[rbx], 0
	mov	ecx, 12
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
	mov	DWORD PTR 32[rbx], 32768000
	mov	QWORD PTR 24[rbx], rax
	xor	eax, eax
	mov	WORD PTR 52[rbx], ax
	mov	DWORD PTR 58[rbx], 1152
	mov	WORD PTR 64[rbx], dx
	mov	BYTE PTR 66[rbx], 16
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 8192
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
