	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_PikoPiko;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_PikoPiko
TaskDestructor_PikoPiko:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	Task_PikoPiko;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_PikoPiko
Task_PikoPiko:
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
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	r9d, 8
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	movsx	edx, WORD PTR 106[rbx]
	add	edx, DWORD PTR 96[rbx]
	lea	rsi, 16[rbx]
	mov	ecx, DWORD PTR 100[rbx]
	mov	rbp, QWORD PTR [rbx]
	mov	DWORD PTR 96[rbx], edx
	add	ecx, DWORD PTR 92[rbx]
	add	edx, DWORD PTR 88[rbx]
	movzx	r8d, BYTE PTR 104[rbx]
	mov	QWORD PTR 40[rsp], rax
	sar	edx, 8
	sar	ecx, 8
	mov	QWORD PTR 32[rsp], 0
	call	sub_801F07C
	test	eax, eax
	js	.L16
.L4:
	mov	edx, DWORD PTR 100[rbx]
	test	eax, eax
	jle	.L5
	sal	eax, 8
	add	edx, eax
	mov	DWORD PTR 100[rbx], edx
.L5:
	mov	r13d, DWORD PTR 96[rbx]
	add	edx, DWORD PTR 92[rbx]
	mov	r9d, 1
	mov	rcx, rsi
	add	r13d, DWORD PTR 88[rbx]
	mov	r12, QWORD PTR .refptr.gCamera[rip]
	mov	r8d, edx
	mov	r14d, edx
	mov	r15d, r13d
	sar	r8d, 8
	sar	r15d, 8
	mov	DWORD PTR 60[rsp], r8d
	mov	eax, r15d
	sub	ax, WORD PTR [r12]
	mov	edx, r15d
	mov	WORD PTR 54[rbx], ax
	mov	eax, r8d
	sub	ax, WORD PTR 4[r12]
	mov	WORD PTR 56[rbx], ax
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	QWORD PTR 32[rsp], rax
	call	Coll_Player_Enemy
	cmp	eax, 1
	jne	.L17
.L6:
	mov	eax, DWORD PTR 88[rbx]
	mov	edx, DWORD PTR [r12]
	sar	eax, 8
	lea	ecx, 554[rdx]
	cmp	eax, ecx
	jle	.L18
.L7:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L9
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L8
.L9:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR 0[rbp], al
.L15:
	mov	rcx, QWORD PTR [rdi]
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
.L18:
	add	edx, -128
	cmp	eax, edx
	jl	.L7
	mov	eax, DWORD PTR 92[rbx]
	mov	edx, DWORD PTR 4[r12]
	sar	eax, 8
	lea	ecx, 368[rdx]
	cmp	eax, ecx
	jg	.L7
	add	edx, -128
	cmp	eax, edx
	jl	.L7
	.p2align 4,,10
	.p2align 3
.L8:
	mov	eax, DWORD PTR 96[rbx]
	movsx	ecx, BYTE PTR 3[rbp]
	sar	eax, 8
	lea	edx, 0[0+rcx*8]
	cmp	eax, edx
	jg	.L10
	movzx	edx, WORD PTR 106[rbx]
	test	dx, dx
	jns	.L10
	neg	edx
	mov	WORD PTR 106[rbx], dx
.L11:
	mov	edx, r14d
	mov	ecx, r13d
	xor	dl, dl
	xor	cl, cl
	call	Player_UpdateHomingPosition
	mov	rcx, rsi
	call	UpdateSpriteAnimation
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
.L10:
	movzx	edx, BYTE PTR 5[rbp]
	add	edx, ecx
	sal	edx, 3
	cmp	eax, edx
	jl	.L11
	movzx	eax, WORD PTR 106[rbx]
	test	ax, ax
	jle	.L11
	neg	eax
	mov	WORD PTR 106[rbx], ax
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L17:
	mov	r8d, DWORD PTR 60[rsp]
	xor	r9d, r9d
	mov	edx, r15d
	mov	rcx, rsi
	call	Coll_Player_Enemy_Attack
	cmp	eax, 1
	jne	.L6
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L16:
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
	jmp	.L4
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_PikoPiko
	.def	CreateEntity_PikoPiko;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_PikoPiko
CreateEntity_PikoPiko:
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
	je	.L20
	mov	rax, QWORD PTR .refptr.gDifficultyLevel[rip]
	cmp	BYTE PTR [rax], 1
	je	.L19
.L20:
	lea	rax, TaskDestructor_PikoPiko[rip]
	xor	r9d, r9d
	mov	r8d, 16512
	mov	edx, 112
	mov	QWORD PTR 32[rsp], rax
	lea	rcx, Task_PikoPiko[rip]
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
	mov	eax, -256
	setne	r8b
	sal	ebp, 5
	mov	WORD PTR 106[rbx], ax
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	add	edx, ebp
	mov	BYTE PTR 104[rbx], r8b
	sal	edi, 5
	and	r8d, 1
	sal	edx, 11
	mov	DWORD PTR 88[rbx], edx
	movzx	ecx, BYTE PTR 1[rsi]
	sar	edx, 8
	mov	DWORD PTR 96[rbx], 0
	add	ecx, edi
	sal	ecx, 11
	mov	DWORD PTR 92[rbx], ecx
	sar	ecx, 8
	mov	QWORD PTR 40[rsp], rax
	mov	QWORD PTR 32[rsp], 0
	call	sub_801F07C
	mov	ecx, 30
	sal	eax, 8
	mov	DWORD PTR 100[rbx], eax
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
	xor	edx, edx
	mov	ecx, -256
	mov	BYTE PTR 66[rbx], 16
	mov	QWORD PTR 24[rbx], rax
	mov	DWORD PTR 32[rbx], 32374784
	mov	WORD PTR 52[rbx], dx
	mov	DWORD PTR 58[rbx], 1152
	mov	WORD PTR 64[rbx], cx
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 8192
.L19:
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	sub_801F07C;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Enemy;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Player_UpdateHomingPosition;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Enemy_Attack;	.scl	2;	.type	32;	.endef
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
