	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_KyuraMain
	.def	Task_KyuraMain;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_KyuraMain
Task_KyuraMain:
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
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	xor	r9d, r9d
	mov	r14, QWORD PTR .refptr.gCamera[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR [rbx]
	mov	esi, DWORD PTR 92[rbx]
	lea	rbp, 16[rbx]
	mov	QWORD PTR 40[rsp], rax
	mov	eax, DWORD PTR 104[rbx]
	lea	edx, [rax+rax*4]
	lea	eax, [rax+rax*2]
	and	edx, 1023
	and	eax, 1023
	movsx	ecx, WORD PTR 512[r8+rdx*2]
	movzx	edx, BYTE PTR 108[rbx]
	imul	ecx, edx
	movsx	edx, WORD PTR [r8+rax*2]
	movzx	eax, BYTE PTR 109[rbx]
	imul	edx, eax
	sar	ecx, 6
	mov	DWORD PTR 96[rbx], ecx
	add	ecx, DWORD PTR 88[rbx]
	sar	edx, 6
	mov	r12d, ecx
	mov	r13d, ecx
	mov	rcx, rbp
	add	esi, edx
	sar	r12d, 8
	mov	DWORD PTR 100[rbx], edx
	mov	r15d, esi
	mov	eax, r12d
	sub	ax, WORD PTR [r14]
	mov	edx, r12d
	sar	r15d, 8
	mov	WORD PTR 54[rbx], ax
	mov	eax, r15d
	sub	ax, WORD PTR 4[r14]
	mov	r8d, r15d
	mov	WORD PTR 56[rbx], ax
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L10
	mov	eax, DWORD PTR 88[rbx]
	mov	edx, DWORD PTR [r14]
	sar	eax, 8
	lea	ecx, 554[rdx]
	cmp	eax, ecx
	jle	.L12
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
	mov	rsi, QWORD PTR 40[rsp]
	mov	BYTE PTR [rsi], al
.L10:
	mov	rcx, QWORD PTR [rdi]
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
.L12:
	add	edx, -128
	cmp	eax, edx
	jl	.L3
	mov	eax, DWORD PTR 92[rbx]
	mov	edx, DWORD PTR 4[r14]
	sar	eax, 8
	lea	ecx, 368[rdx]
	cmp	eax, ecx
	jg	.L3
	add	edx, -128
	cmp	eax, edx
	jl	.L3
	.p2align 4,,10
	.p2align 3
.L4:
	movzx	eax, BYTE PTR 110[rbx]
	sub	al, 1
	jne	.L13
	movzx	eax, BYTE PTR 111[rbx]
	mov	BYTE PTR 110[rbx], 4
	lea	edx, -1[rax]
	cmp	al, 1
	je	.L8
	mov	BYTE PTR 111[rbx], dl
.L9:
	mov	rax, QWORD PTR [rdi]
	lea	rdi, Task_KyuraRecover[rip]
	mov	QWORD PTR 40[rax], rdi
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L13:
	mov	BYTE PTR 110[rbx], al
.L7:
	xor	sil, sil
	mov	ecx, r13d
	mov	edx, esi
	xor	cl, cl
	call	Player_UpdateHomingPosition
	mov	rcx, rbp
	call	UpdateSpriteAnimation
	mov	rcx, rbp
	add	rsp, 88
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
.L8:
	mov	rdx, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	BYTE PTR 111[rbx], 12
	lea	r10d, 1[r12]
	add	r15d, 20
	sal	r10d, 8
	sal	r15d, 8
	lea	rcx, 48[rsp]
	mov	DWORD PTR 48[rsp], 33423363
	imul	eax, DWORD PTR [rdx], 1663525
	mov	DWORD PTR 60[rsp], r10d
	mov	DWORD PTR 64[rsp], r15d
	add	eax, 1013904223
	mov	DWORD PTR [rdx], eax
	mov	edx, 256
	and	eax, 1
	mov	WORD PTR 54[rsp], dx
	mov	edx, 2
	sub	edx, eax
	mov	BYTE PTR 52[rsp], al
	mov	eax, edx
	sal	eax, 8
	mov	WORD PTR 56[rsp], ax
	call	CreateProjectile
	jmp	.L9
	.seh_endproc
	.p2align 4
	.globl	Task_KyuraRecover
	.def	Task_KyuraRecover;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_KyuraRecover
Task_KyuraRecover:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rcx]
	movzx	edx, BYTE PTR 110[rax]
	lea	rbx, 16[rax]
	sub	dl, 1
	je	.L15
	mov	BYTE PTR 110[rax], dl
.L16:
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L15:
	mov	edx, DWORD PTR 104[rax]
	mov	BYTE PTR 110[rax], 8
	add	edx, 8
	and	edx, 1023
	mov	DWORD PTR 104[rax], edx
	lea	rax, Task_KyuraMain[rip]
	mov	QWORD PTR 40[rcx], rax
	jmp	.L16
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Kyura
	.def	CreateEntity_Kyura;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Kyura
CreateEntity_Kyura:
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
	mov	rdi, rcx
	mov	esi, edx
	mov	ebp, r8d
	mov	r12d, r9d
	mov	r8d, 16448
	xor	r9d, r9d
	mov	edx, 112
	lea	rcx, Task_KyuraMain[rip]
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
	add	esi, eax
	movzx	edx, al
	mov	dh, cl
	sal	esi, 11
	mov	ecx, 24
	mov	WORD PTR 12[rbx], dx
	mov	DWORD PTR 88[rbx], esi
	movzx	eax, BYTE PTR 1[rdi]
	mov	QWORD PTR 96[rbx], 0
	add	eax, ebp
	mov	DWORD PTR 104[rbx], 0
	sal	eax, 11
	mov	DWORD PTR 92[rbx], eax
	movzx	eax, BYTE PTR 5[rdi]
	sal	eax, 2
	mov	BYTE PTR 108[rbx], al
	movzx	eax, BYTE PTR 6[rdi]
	mov	DWORD PTR 54[rbx], 0
	sal	eax, 2
	mov	BYTE PTR 109[rbx], al
	mov	eax, 3080
	mov	WORD PTR 110[rbx], ax
	mov	BYTE PTR [rdi], -2
	call	VramMalloc
	xor	edx, edx
	mov	ecx, -256
	mov	BYTE PTR 66[rbx], 16
	mov	QWORD PTR 24[rbx], rax
	mov	DWORD PTR 32[rbx], 33357824
	mov	WORD PTR 52[rbx], dx
	mov	DWORD PTR 58[rbx], 1152
	mov	WORD PTR 64[rbx], cx
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
	.def	CreateProjectile;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.TaskDestructor_80095E8, "dr"
	.globl	.refptr.TaskDestructor_80095E8
	.linkonce	discard
.refptr.TaskDestructor_80095E8:
	.quad	TaskDestructor_80095E8
	.section	.rdata$.refptr.gPseudoRandom, "dr"
	.globl	.refptr.gPseudoRandom
	.linkonce	discard
.refptr.gPseudoRandom:
	.quad	gPseudoRandom
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
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
