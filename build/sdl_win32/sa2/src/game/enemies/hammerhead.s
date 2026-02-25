	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_Hammerhead;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_Hammerhead
TaskDestructor_Hammerhead:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rbx]
	call	VramFree
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, DWORD PTR 36[rax]
	test	dl, 8
	je	.L1
	add	rbx, 16
	cmp	QWORD PTR 64[rax], rbx
	je	.L7
.L1:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	and	edx, -9
	mov	QWORD PTR 64[rax], 0
	mov	DWORD PTR 36[rax], edx
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	Task_Hammerhead;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Hammerhead
Task_Hammerhead:
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
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	movzx	r8d, BYTE PTR [rax]
	mov	rbp, QWORD PTR [rbx]
	lea	rsi, 16[rbx]
	mov	r9d, DWORD PTR 92[rbx]
	cmp	r8b, 2
	jbe	.L9
	mov	eax, DWORD PTR 104[rbx]
	movd	xmm1, DWORD PTR 100[rbx]
	movd	xmm0, r9d
	mov	DWORD PTR 108[rbx], eax
	punpckldq	xmm0, xmm1
	movq	QWORD PTR 100[rbx], xmm0
.L9:
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	movzx	r14d, WORD PTR 8[rbx]
	movzx	r12d, WORD PTR 10[rbx]
	mov	eax, DWORD PTR [rax]
	mov	r13, QWORD PTR .refptr.gCamera[rip]
	sal	r14d, 5
	sal	r12d, 5
	lea	eax, [rax+rax*2]
	shr	eax
	add	ax, WORD PTR 88[rbx]
	movzx	eax, al
	imul	ax, WORD PTR 96[rbx]
	and	eax, 511
	or	ah, 2
	movsx	eax, WORD PTR [rdx+rax*2]
	mov	edx, DWORD PTR 4[r13]
	mov	r11d, eax
	sal	r11d, 4
	sub	r11d, eax
	movzx	eax, BYTE PTR 12[rbx]
	mov	r10d, r11d
	sar	r10d, 3
	add	r14d, eax
	mov	DWORD PTR 92[rbx], r10d
	movzx	eax, BYTE PTR 1[rbp]
	sal	r14d, 3
	add	r12d, eax
	mov	eax, r14d
	sub	ax, WORD PTR 0[r13]
	mov	WORD PTR 54[rbx], ax
	sal	r12d, 3
	cmp	r8b, 2
	jbe	.L10
	movzx	eax, WORD PTR 109[rbx]
	sub	eax, edx
	add	eax, r12d
.L11:
	mov	r15, QWORD PTR .refptr.gPlayer[rip]
	mov	WORD PTR 56[rbx], ax
	mov	eax, DWORD PTR 36[r15]
	test	al, 8
	je	.L12
	cmp	QWORD PTR 64[r15], rsi
	je	.L24
.L12:
	test	eax, 4194304
	je	.L25
.L13:
	sar	r10d, 8
	mov	r9d, 1
	mov	edx, r14d
	mov	rcx, rsi
	lea	r8d, [r10+r12]
	call	Coll_Player_Enemy_Attack
	cmp	eax, 1
	je	.L23
	movzx	eax, WORD PTR 54[rbx]
	sub	r14d, DWORD PTR 0[r13]
	sub	r12d, DWORD PTR 4[r13]
	sub	ax, -128
	cmp	ax, 682
	jbe	.L26
	lea	eax, 128[r14]
	cmp	eax, 682
	ja	.L18
.L27:
	lea	eax, 256[r12]
	cmp	eax, 752
	ja	.L18
.L17:
	mov	edx, DWORD PTR 92[rbx]
	sal	r12d, 8
	mov	ecx, r14d
	sal	ecx, 8
	add	edx, r12d
	call	Player_UpdateHomingPosition
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	add	rsp, 40
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
.L18:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR 0[rbp], al
.L23:
	mov	rcx, QWORD PTR [rdi]
	add	rsp, 40
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
.L26:
	movzx	eax, WORD PTR 56[rbx]
	add	ax, 256
	cmp	ax, 752
	jbe	.L17
	lea	eax, 128[r14]
	cmp	eax, 682
	jbe	.L27
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L10:
	mov	eax, r9d
	sar	eax, 8
	sub	eax, edx
	add	eax, r12d
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L25:
	sar	r11d, 11
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, r14d
	mov	rcx, rsi
	lea	r8d, [r11+r12]
	call	Coll_Player_Platform
	test	eax, 65536
	je	.L22
	sal	eax, 24
	sar	eax, 16
	add	DWORD PTR 16[r15], eax
.L22:
	mov	r10d, DWORD PTR 92[rbx]
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L24:
	mov	ecx, DWORD PTR 16[r15]
	mov	edx, r10d
	sub	edx, r9d
	lea	edx, 256[rcx+rdx]
	mov	DWORD PTR 16[r15], edx
	jmp	.L12
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Hammerhead
	.def	CreateEntity_Hammerhead;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Hammerhead
CreateEntity_Hammerhead:
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
	lea	rax, TaskDestructor_Hammerhead[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rbp, rcx
	mov	esi, edx
	mov	edi, r8d
	mov	r12d, r9d
	mov	r8d, 16448
	xor	r9d, r9d
	mov	edx, 112
	lea	rcx, Task_Hammerhead[rip]
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
	mov	DWORD PTR 92[rbx], 0
	movzx	edx, al
	add	esi, eax
	mov	dh, cl
	sal	esi, 3
	mov	ecx, 36
	mov	WORD PTR 12[rbx], dx
	mov	edx, DWORD PTR 104[rbx]
	mov	DWORD PTR 108[rbx], edx
	mov	edx, DWORD PTR 100[rbx]
	mov	DWORD PTR 100[rbx], 0
	mov	DWORD PTR 104[rbx], edx
	mov	edx, 4
	mov	WORD PTR 96[rbx], dx
	movzx	edx, BYTE PTR 6[rbp]
	mov	WORD PTR 54[rbx], si
	mov	WORD PTR 88[rbx], dx
	movzx	eax, BYTE PTR 1[rbp]
	add	eax, edi
	sal	eax, 3
	mov	WORD PTR 56[rbx], ax
	mov	BYTE PTR 0[rbp], -2
	call	VramMalloc
	xor	ecx, ecx
	mov	BYTE PTR 66[rbx], 16
	mov	r8d, -256
	mov	QWORD PTR 24[rbx], rax
	mov	DWORD PTR 32[rbx], 32702464
	mov	WORD PTR 52[rbx], cx
	mov	DWORD PTR 58[rbx], 1152
	mov	WORD PTR 64[rbx], r8w
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
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Enemy_Attack;	.scl	2;	.type	32;	.endef
	.def	Player_UpdateHomingPosition;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Platform;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
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
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
