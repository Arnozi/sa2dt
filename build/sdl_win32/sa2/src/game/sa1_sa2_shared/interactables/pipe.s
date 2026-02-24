	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	Task_Pipe_Start;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Pipe_Start
Task_Pipe_Start:
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
	mov	r12, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rdi]
	mov	ecx, DWORD PTR 36[r12]
	mov	rax, QWORD PTR 24[rax]
	movzx	ebx, WORD PTR 8[rax]
	movzx	edx, BYTE PTR 12[rax]
	mov	rsi, QWORD PTR [rax]
	movzx	eax, WORD PTR 10[rax]
	sal	ebx, 5
	mov	ebp, edx
	add	ebx, edx
	movzx	edx, BYTE PTR 1[rsi]
	sal	eax, 5
	sal	ebx, 3
	add	eax, edx
	sal	eax, 3
	test	cl, -128
	jne	.L2
	mov	edx, DWORD PTR 12[r12]
	sar	edx, 8
	cmp	edx, ebx
	jge	.L6
.L2:
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	sub	ebx, DWORD PTR [rdx]
	mov	ecx, DWORD PTR 4[rdx]
	sub	ebx, -128
	cmp	ebx, 682
	ja	.L3
	sub	eax, ecx
	sub	eax, -128
	cmp	eax, 496
	jbe	.L1
.L3:
	mov	BYTE PTR [rsi], bpl
	mov	rcx, QWORD PTR [rdi]
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
.L6:
	lea	r8d, 24[rbx]
	cmp	edx, r8d
	jg	.L2
	mov	edx, DWORD PTR 16[r12]
	sar	edx, 8
	cmp	edx, eax
	jl	.L2
	lea	r8d, 24[rax]
	cmp	edx, r8d
	jg	.L2
	and	ecx, 524288
	jne	.L2
	mov	BYTE PTR 117[r12], 25
	movzx	ecx, BYTE PTR 3[rsi]
	movzx	edx, BYTE PTR 4[rsi]
	mov	DWORD PTR 44[rsp], eax
	sal	ecx, 4
	and	ecx, 48
	and	edx, 15
	or	edx, ecx
	mov	BYTE PTR 118[r12], dl
	lea	edx, 12[rbx]
	sal	edx, 8
	mov	DWORD PTR 12[r12], edx
	lea	edx, 12[rax]
	sal	edx, 8
	mov	DWORD PTR 16[r12], edx
	call	Player_SetMovestate_IsInScriptedSequence
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_BGM[rip]
	xor	eax, eax
	mov	edx, 256
	mov	WORD PTR 52[r12], ax
	and	BYTE PTR 59[r12], -17
	call	m4aMPlayTempoControl
	mov	eax, DWORD PTR 44[rsp]
	jmp	.L2
	.seh_endproc
	.p2align 4
	.def	Task_Pipe_End;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Pipe_End
Task_Pipe_End:
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
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rax, QWORD PTR 24[rax]
	movzx	ebx, WORD PTR 8[rax]
	movzx	edx, BYTE PTR 12[rax]
	mov	rsi, QWORD PTR [rax]
	movzx	eax, WORD PTR 10[rax]
	sal	ebx, 5
	mov	ebp, edx
	add	ebx, edx
	movzx	edx, BYTE PTR 1[rsi]
	sal	eax, 5
	sal	ebx, 3
	add	eax, edx
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	sal	eax, 3
	mov	r8d, DWORD PTR 36[rdx]
	test	r8b, -128
	jne	.L8
	mov	ecx, DWORD PTR 12[rdx]
	sar	ecx, 8
	cmp	ecx, ebx
	jge	.L16
.L8:
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	sub	ebx, DWORD PTR [rdx]
	mov	ecx, DWORD PTR 4[rdx]
	sub	ebx, -128
	cmp	ebx, 682
	ja	.L10
	sub	eax, ecx
	sub	eax, -128
	cmp	eax, 496
	jbe	.L7
.L10:
	mov	BYTE PTR [rsi], bpl
	mov	rcx, QWORD PTR [rdi]
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L7:
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L16:
	lea	r9d, 24[rbx]
	cmp	ecx, r9d
	jg	.L8
	mov	ecx, DWORD PTR 16[rdx]
	sar	ecx, 8
	cmp	ecx, eax
	jl	.L8
	lea	r9d, 24[rax]
	cmp	ecx, r9d
	jg	.L8
	test	r8d, 524288
	je	.L8
	and	r8d, -524803
	mov	DWORD PTR 44[rsp], eax
	mov	DWORD PTR 36[rdx], r8d
	mov	r8, QWORD PTR 160[rdx]
	mov	ecx, DWORD PTR 48[r8]
	and	ch, -49
	or	ch, 32
	mov	DWORD PTR 48[r8], ecx
	cmp	BYTE PTR 3[rsi], 0
	setne	BYTE PTR 60[rdx]
	cmp	BYTE PTR 4[rsi], 1
	sbb	ecx, ecx
	and	ecx, 23
	add	ecx, 5
	mov	BYTE PTR 117[rdx], cl
	call	Player_ClearMovestate_IsInScriptedSequence
	mov	eax, DWORD PTR 44[rsp]
	jmp	.L8
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Pipe_Start
	.def	CreateEntity_Pipe_Start;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Pipe_Start
CreateEntity_Pipe_Start:
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
	mov	r8d, 8208
	lea	rcx, Task_Pipe_Start[rip]
	call	TaskCreate
	mov	rax, QWORD PTR 24[rax]
	mov	WORD PTR 8[rax], di
	mov	WORD PTR 10[rax], si
	mov	QWORD PTR [rax], rbx
	movzx	edx, BYTE PTR [rbx]
	mov	BYTE PTR 12[rax], dl
	mov	BYTE PTR [rbx], -2
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Pipe_End
	.def	CreateEntity_Pipe_End;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Pipe_End
CreateEntity_Pipe_End:
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
	mov	r8d, 8208
	lea	rcx, Task_Pipe_End[rip]
	call	TaskCreate
	mov	rax, QWORD PTR 24[rax]
	mov	WORD PTR 8[rax], di
	mov	WORD PTR 10[rax], si
	mov	QWORD PTR [rax], rbx
	movzx	edx, BYTE PTR [rbx]
	mov	BYTE PTR 12[rax], dl
	mov	BYTE PTR [rbx], -2
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Player_SetMovestate_IsInScriptedSequence;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayTempoControl;	.scl	2;	.type	32;	.endef
	.def	Player_ClearMovestate_IsInScriptedSequence;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
	.section	.rdata$.refptr.gMPlayInfo_BGM, "dr"
	.globl	.refptr.gMPlayInfo_BGM
	.linkonce	discard
.refptr.gMPlayInfo_BGM:
	.quad	gMPlayInfo_BGM
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
