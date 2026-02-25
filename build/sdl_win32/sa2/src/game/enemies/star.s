	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	Task_StarIdle;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_StarIdle
Task_StarIdle:
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
	mov	esi, DWORD PTR 80[rbx]
	mov	edi, DWORD PTR 84[rbx]
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
	jne	.L8
	mov	eax, DWORD PTR 0[rbp]
	lea	edx, 554[rax]
	cmp	esi, edx
	jle	.L10
.L3:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L5
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L4
.L5:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR [r14], al
.L8:
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
.L10:
	add	eax, -128
	cmp	esi, eax
	jl	.L3
	mov	eax, DWORD PTR 4[rbp]
	lea	edx, 368[rax]
	cmp	edi, edx
	jg	.L3
	add	eax, -128
	cmp	edi, eax
	jl	.L3
	.p2align 4,,10
	.p2align 3
.L4:
	movzx	eax, BYTE PTR 88[rbx]
	sub	al, 1
	je	.L6
	mov	BYTE PTR 88[rbx], al
.L7:
	mov	edx, DWORD PTR 84[rbx]
	mov	ecx, DWORD PTR 80[rbx]
	call	Player_UpdateHomingPosition
	mov	rcx, r13
	call	UpdateSpriteAnimation
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
.L6:
	mov	eax, 511
	mov	edx, -255
	mov	BYTE PTR 88[rbx], 20
	mov	WORD PTR 34[rbx], ax
	mov	rax, QWORD PTR [r12]
	mov	WORD PTR 64[rbx], dx
	lea	rdx, Task_StarClose[rip]
	mov	QWORD PTR 40[rax], rdx
	jmp	.L7
	.seh_endproc
	.p2align 4
	.def	Task_StarClose;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_StarClose
Task_StarClose:
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
	mov	rax, QWORD PTR [r12]
	mov	rbx, QWORD PTR 24[rax]
	mov	esi, DWORD PTR 80[rbx]
	mov	edi, DWORD PTR 84[rbx]
	lea	r13, 16[rbx]
	mov	rcx, r13
	mov	r14, QWORD PTR [rbx]
	sar	esi, 8
	sar	edi, 8
	mov	eax, esi
	sub	ax, WORD PTR 0[rbp]
	mov	edx, esi
	mov	r8d, edi
	mov	WORD PTR 54[rbx], ax
	mov	eax, edi
	sub	ax, WORD PTR 4[rbp]
	mov	WORD PTR 56[rbx], ax
	call	Coll_Player_Projectile
	mov	eax, DWORD PTR 0[rbp]
	lea	edx, 554[rax]
	cmp	esi, edx
	jg	.L12
	add	eax, -128
	cmp	esi, eax
	jge	.L17
.L12:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L14
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L13
.L14:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR [r14], al
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
.L17:
	mov	eax, DWORD PTR 4[rbp]
	lea	edx, 368[rax]
	cmp	edi, edx
	jg	.L12
	add	eax, -128
	cmp	edi, eax
	jl	.L12
	.p2align 4,,10
	.p2align 3
.L13:
	movzx	eax, BYTE PTR 88[rbx]
	sub	al, 1
	je	.L15
	mov	BYTE PTR 88[rbx], al
.L16:
	mov	edx, DWORD PTR 84[rbx]
	mov	ecx, DWORD PTR 80[rbx]
	call	Player_UpdateHomingPosition
	mov	rcx, r13
	call	UpdateSpriteAnimation
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
.L15:
	mov	eax, 511
	mov	edx, -254
	mov	BYTE PTR 88[rbx], 120
	mov	WORD PTR 34[rbx], ax
	mov	rax, QWORD PTR [r12]
	mov	WORD PTR 64[rbx], dx
	lea	rdx, Task_StarSpin[rip]
	mov	QWORD PTR 40[rax], rdx
	jmp	.L16
	.seh_endproc
	.p2align 4
	.def	Task_StarSpin;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_StarSpin
Task_StarSpin:
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
	mov	rax, QWORD PTR [r12]
	mov	rbx, QWORD PTR 24[rax]
	mov	esi, DWORD PTR 80[rbx]
	mov	edi, DWORD PTR 84[rbx]
	lea	r13, 16[rbx]
	mov	rcx, r13
	mov	r14, QWORD PTR [rbx]
	sar	esi, 8
	sar	edi, 8
	mov	eax, esi
	sub	ax, WORD PTR 0[rbp]
	mov	edx, esi
	mov	r8d, edi
	mov	WORD PTR 54[rbx], ax
	mov	eax, edi
	sub	ax, WORD PTR 4[rbp]
	mov	WORD PTR 56[rbx], ax
	call	Coll_Player_Projectile
	mov	eax, DWORD PTR 0[rbp]
	lea	edx, 554[rax]
	cmp	esi, edx
	jg	.L19
	add	eax, -128
	cmp	esi, eax
	jge	.L24
.L19:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L21
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L20
.L21:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR [r14], al
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
.L24:
	mov	eax, DWORD PTR 4[rbp]
	lea	edx, 368[rax]
	cmp	edi, edx
	jg	.L19
	add	eax, -128
	cmp	edi, eax
	jl	.L19
	.p2align 4,,10
	.p2align 3
.L20:
	movzx	eax, BYTE PTR 88[rbx]
	sub	al, 1
	je	.L22
	mov	BYTE PTR 88[rbx], al
.L23:
	mov	edx, DWORD PTR 84[rbx]
	mov	ecx, DWORD PTR 80[rbx]
	call	Player_UpdateHomingPosition
	mov	rcx, r13
	call	UpdateSpriteAnimation
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
.L22:
	mov	eax, 511
	mov	edx, -253
	mov	BYTE PTR 88[rbx], 20
	mov	WORD PTR 34[rbx], ax
	mov	rax, QWORD PTR [r12]
	mov	WORD PTR 64[rbx], dx
	lea	rdx, Task_StarOpen[rip]
	mov	QWORD PTR 40[rax], rdx
	jmp	.L23
	.seh_endproc
	.p2align 4
	.def	Task_StarOpen;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_StarOpen
Task_StarOpen:
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
	mov	rax, QWORD PTR [r12]
	mov	rbx, QWORD PTR 24[rax]
	mov	esi, DWORD PTR 80[rbx]
	mov	edi, DWORD PTR 84[rbx]
	lea	r13, 16[rbx]
	mov	rcx, r13
	mov	r14, QWORD PTR [rbx]
	sar	esi, 8
	sar	edi, 8
	mov	eax, esi
	sub	ax, WORD PTR 0[rbp]
	mov	edx, esi
	mov	r8d, edi
	mov	WORD PTR 54[rbx], ax
	mov	eax, edi
	sub	ax, WORD PTR 4[rbp]
	mov	WORD PTR 56[rbx], ax
	call	Coll_Player_Projectile
	mov	eax, DWORD PTR 0[rbp]
	lea	edx, 554[rax]
	cmp	esi, edx
	jg	.L26
	add	eax, -128
	cmp	esi, eax
	jge	.L31
.L26:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L28
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L27
.L28:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR [r14], al
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
.L31:
	mov	eax, DWORD PTR 4[rbp]
	lea	edx, 368[rax]
	cmp	edi, edx
	jg	.L26
	add	eax, -128
	cmp	edi, eax
	jl	.L26
	.p2align 4,,10
	.p2align 3
.L27:
	movzx	eax, BYTE PTR 88[rbx]
	sub	al, 1
	je	.L29
	mov	BYTE PTR 88[rbx], al
.L30:
	mov	edx, DWORD PTR 84[rbx]
	mov	ecx, DWORD PTR 80[rbx]
	call	Player_UpdateHomingPosition
	mov	rcx, r13
	call	UpdateSpriteAnimation
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
.L29:
	mov	eax, 511
	mov	edx, -256
	mov	BYTE PTR 88[rbx], 120
	mov	WORD PTR 34[rbx], ax
	mov	rax, QWORD PTR [r12]
	mov	WORD PTR 64[rbx], dx
	lea	rdx, Task_StarIdle[rip]
	mov	QWORD PTR 40[rax], rdx
	jmp	.L30
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Star
	.def	CreateEntity_Star;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Star
CreateEntity_Star:
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
	mov	rbp, rcx
	mov	esi, edx
	mov	edi, r8d
	mov	r12d, r9d
	mov	r8d, 16464
	xor	r9d, r9d
	mov	edx, 96
	lea	rcx, Task_StarIdle[rip]
	call	TaskCreate
	mov	ecx, r12d
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 8[rbx], si
	movzx	esi, si
	mov	WORD PTR 10[rbx], di
	sal	esi, 5
	movzx	edi, di
	mov	QWORD PTR [rbx], rbp
	movzx	eax, BYTE PTR 0[rbp]
	sal	edi, 5
	add	esi, eax
	movzx	edx, al
	mov	dh, cl
	sal	esi, 11
	mov	ecx, 25
	mov	WORD PTR 12[rbx], dx
	mov	DWORD PTR 80[rbx], esi
	movzx	eax, BYTE PTR 1[rbp]
	mov	BYTE PTR 88[rbx], 120
	add	eax, edi
	mov	DWORD PTR 54[rbx], 0
	sal	eax, 11
	mov	DWORD PTR 84[rbx], eax
	mov	BYTE PTR 0[rbp], -2
	call	VramMalloc
	mov	edx, -256
	mov	DWORD PTR 32[rbx], 33488896
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
	.def	Coll_Player_Enemy_Attack;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Player_UpdateHomingPosition;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Projectile;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.TaskDestructor_80095E8, "dr"
	.globl	.refptr.TaskDestructor_80095E8
	.linkonce	discard
.refptr.TaskDestructor_80095E8:
	.quad	TaskDestructor_80095E8
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
