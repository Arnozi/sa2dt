	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	Task_InclineRamp;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_InclineRamp
Task_InclineRamp:
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
	mov	rbp, QWORD PTR .refptr.gCurTask[rip]
	mov	r12, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR 0[rbp]
	mov	ecx, DWORD PTR 36[r12]
	mov	rsi, QWORD PTR 24[rax]
	movzx	ebx, WORD PTR 10[rsi]
	movzx	eax, BYTE PTR 12[rsi]
	mov	rdi, QWORD PTR [rsi]
	sal	ebx, 5
	add	ebx, eax
	movzx	eax, WORD PTR 8[rsi]
	movzx	edx, BYTE PTR 1[rdi]
	sal	ebx, 3
	sal	eax, 5
	add	eax, edx
	sal	eax, 3
	test	cl, -128
	jne	.L2
	mov	edx, DWORD PTR 12[r12]
	movsx	r8d, bx
	sar	edx, 8
	cmp	r8d, edx
	jle	.L7
.L2:
	mov	rcx, QWORD PTR .refptr.gCamera[rip]
	mov	edx, 128
	mov	r10d, edx
	sub	r10w, WORD PTR [rcx]
	mov	r8d, DWORD PTR 4[rcx]
	mov	ecx, r10d
	add	ecx, ebx
	cmp	cx, 682
	ja	.L4
	sub	edx, r8d
	add	edx, eax
	cmp	dx, 496
	jbe	.L1
.L4:
	movzx	eax, BYTE PTR 12[rsi]
	mov	BYTE PTR [rdi], al
	mov	rcx, QWORD PTR 0[rbp]
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L1:
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	movzx	r9d, BYTE PTR 5[rdi]
	lea	r8d, [r8+r9*8]
	cmp	edx, r8d
	jg	.L2
	mov	edx, DWORD PTR 16[r12]
	movsx	r8d, ax
	sar	edx, 8
	cmp	r8d, edx
	jg	.L2
	movzx	r9d, BYTE PTR 6[rdi]
	lea	r8d, [r8+r9*8]
	cmp	edx, r8d
	jg	.L2
	test	cl, 2
	jne	.L2
	cmp	BYTE PTR 13[rsi], 0
	movzx	edx, WORD PTR 20[r12]
	jne	.L3
	cmp	dx, 1024
	jle	.L2
	and	ecx, -269
	mov	edx, 14
	mov	DWORD PTR 44[rsp], eax
	or	ecx, 2
	mov	DWORD PTR 36[r12], ecx
	mov	rcx, r12
	call	Player_HandleSpriteYOffsetChange
	mov	r8d, -768
	mov	rcx, r12
	add	WORD PTR 20[r12], 4352
	mov	WORD PTR 22[r12], r8w
	mov	DWORD PTR 24[r12], 235278592
	call	sub_8023260
	mov	rcx, r12
	call	Player_TransitionCancelFlyingAndBoost
	mov	edx, 14
	mov	rcx, r12
	call	Player_HandleSpriteYOffsetChange
	mov	r9d, 3590
	mov	ecx, 153
	mov	r10d, 39
	mov	WORD PTR 26[r12], r9w
	mov	WORD PTR 108[r12], r10w
	mov	BYTE PTR 117[r12], 7
	call	m4aSongNumStart
	mov	eax, DWORD PTR 44[rsp]
	jmp	.L2
.L3:
	cmp	dx, -1024
	jge	.L2
	and	ecx, -269
	mov	edx, 14
	mov	DWORD PTR 44[rsp], eax
	or	ecx, 2
	mov	DWORD PTR 36[r12], ecx
	mov	rcx, r12
	call	Player_HandleSpriteYOffsetChange
	mov	eax, -768
	mov	rcx, r12
	sub	WORD PTR 20[r12], 4352
	mov	WORD PTR 22[r12], ax
	mov	DWORD PTR 24[r12], 235335424
	call	sub_8023260
	mov	rcx, r12
	call	Player_TransitionCancelFlyingAndBoost
	mov	edx, 14
	mov	rcx, r12
	call	Player_HandleSpriteYOffsetChange
	mov	ecx, 11
	mov	edx, 3590
	mov	BYTE PTR 117[r12], 7
	mov	WORD PTR 108[r12], cx
	mov	ecx, 153
	mov	WORD PTR 26[r12], dx
	call	m4aSongNumStart
	mov	eax, DWORD PTR 44[rsp]
	jmp	.L2
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_InclineRamp
	.def	CreateEntity_InclineRamp;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_InclineRamp
CreateEntity_InclineRamp:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	xor	r9d, r9d
	mov	QWORD PTR 32[rsp], 0
	mov	rbx, rcx
	mov	edi, edx
	mov	esi, r8d
	mov	edx, 16
	mov	r8d, 8192
	lea	rcx, Task_InclineRamp[rip]
	call	TaskCreate
	mov	rax, QWORD PTR 24[rax]
	mov	WORD PTR 10[rax], di
	mov	WORD PTR 8[rax], si
	mov	QWORD PTR [rax], rbx
	movzx	edx, BYTE PTR [rbx]
	mov	dh, BYTE PTR 3[rbx]
	mov	WORD PTR 12[rax], dx
	mov	BYTE PTR [rbx], -2
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Player_HandleSpriteYOffsetChange;	.scl	2;	.type	32;	.endef
	.def	sub_8023260;	.scl	2;	.type	32;	.endef
	.def	Player_TransitionCancelFlyingAndBoost;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
