	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	Task_GappedLoopForwardsMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_GappedLoopForwardsMain
Task_GappedLoopForwardsMain:
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
	mov	rbp, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR 0[rbp]
	mov	r13, QWORD PTR 24[rcx]
	movzx	ebx, WORD PTR 8[r13]
	movzx	eax, BYTE PTR 12[r13]
	mov	rdi, QWORD PTR 0[r13]
	sal	ebx, 5
	mov	r12d, eax
	add	ebx, eax
	movzx	eax, WORD PTR 10[r13]
	movzx	edx, BYTE PTR 1[rdi]
	sal	ebx, 3
	sal	eax, 5
	add	eax, edx
	lea	esi, 0[0+rax*8]
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, DWORD PTR 36[rax]
	test	dl, -128
	jne	.L2
	mov	r9d, DWORD PTR 12[rax]
	mov	r8d, r9d
	sar	r8d, 8
	cmp	r8d, ebx
	jge	.L6
.L2:
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	sub	ebx, DWORD PTR [rax]
	mov	edx, DWORD PTR 4[rax]
	sub	ebx, -128
	cmp	ebx, 682
	ja	.L3
	mov	eax, esi
	sub	eax, edx
	sub	eax, -128
	cmp	eax, 496
	jbe	.L1
.L3:
	mov	BYTE PTR [rdi], r12b
	mov	rcx, QWORD PTR 0[rbp]
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L1:
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
.L6:
	movzx	r10d, BYTE PTR 5[rdi]
	lea	r10d, [rbx+r10*8]
	cmp	r8d, r10d
	jg	.L2
	mov	r8d, DWORD PTR 16[rax]
	mov	r10d, r8d
	sar	r10d, 8
	cmp	r10d, esi
	jl	.L2
	movzx	r11d, BYTE PTR 6[rdi]
	lea	r11d, [rsi+r11*8]
	cmp	r10d, r11d
	jg	.L2
	cmp	WORD PTR 24[rax], 768
	jle	.L2
	test	dl, 3
	jne	.L2
	lea	r11, Task_JumpSequenceForwards[rip]
	sub	r9d, DWORD PTR 16[r13]
	sub	r8d, DWORD PTR 20[r13]
	or	edx, 4194304
	mov	QWORD PTR 40[rcx], r11
	sar	r9d, 8
	sar	r8d, 8
	mov	DWORD PTR 36[rax], edx
	movsx	ecx, r8w
	movsx	edx, r9w
	call	sub_8004418
	mov	WORD PTR 24[r13], ax
	mov	eax, -8
	mov	WORD PTR 26[r13], ax
	jmp	.L2
	.seh_endproc
	.p2align 4
	.def	Task_JumpSequenceForwards;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_JumpSequenceForwards
Task_JumpSequenceForwards:
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
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r11, QWORD PTR .refptr.gPlayer[rip]
	mov	rcx, QWORD PTR [rax]
	mov	ebx, DWORD PTR 36[r11]
	mov	rdi, QWORD PTR 24[rcx]
	mov	r8, QWORD PTR [rdi]
	movzx	r9d, BYTE PTR 12[rdi]
	movzx	edx, WORD PTR 8[rdi]
	movzx	r10d, WORD PTR 10[rdi]
	test	bl, -128
	jne	.L12
	sal	edx, 5
	movzx	eax, r9b
	movzx	ebp, WORD PTR 24[rdi]
	movzx	esi, BYTE PTR 1[r8]
	add	edx, eax
	movzx	eax, WORD PTR 26[rdi]
	sal	edx, 3
	add	ebp, eax
	and	bp, 1023
	movzx	r13d, bp
	mov	WORD PTR 24[rdi], bp
	add	BYTE PTR 40[r11], al
	mov	eax, 768
	movq	xmm1, QWORD PTR 16[rdi]
	lea	r14d, -768[r13]
	sub	eax, r13d
	sar	r14d, 4
	mov	r12d, eax
	sar	r12d, 4
	test	eax, eax
	lea	eax, 256[r13]
	cmovs	r12d, r14d
	mov	r14, QWORD PTR .refptr.gSineTable[rip]
	cdqe
	movsx	eax, WORD PTR [r14+rax*2]
	movsx	r12d, r12b
	add	r12d, 135
	imul	eax, eax, 135
	movd	xmm0, eax
	movsx	eax, WORD PTR [r14+r13*2]
	imul	eax, r12d
	movd	xmm2, eax
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	punpckldq	xmm0, xmm2
	psrad	xmm0, 6
	mov	edi, DWORD PTR 4[rax]
	sub	edx, DWORD PTR [rax]
	paddd	xmm0, xmm1
	movq	QWORD PTR 12[r11], xmm0
	cmp	bp, 586
	jbe	.L14
.L11:
	sub	edx, -128
	cmp	edx, 682
	ja	.L12
	movzx	eax, r10w
	sal	eax, 5
	add	eax, esi
	sal	eax, 3
	sub	eax, edi
	sub	eax, -128
	cmp	eax, 496
	jbe	.L7
.L12:
	mov	BYTE PTR [r8], r9b
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
.L14:
	and	ebx, -4194305
	lea	rax, Task_GappedLoopForwardsMain[rip]
	mov	DWORD PTR 36[r11], ebx
	mov	QWORD PTR 40[rcx], rax
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L7:
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
	.seh_endproc
	.p2align 4
	.def	Task_GappedLoopReverseMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_GappedLoopReverseMain
Task_GappedLoopReverseMain:
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
	mov	rbp, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR 0[rbp]
	mov	r13, QWORD PTR 24[rcx]
	movzx	ebx, WORD PTR 8[r13]
	movzx	eax, BYTE PTR 12[r13]
	mov	rdi, QWORD PTR 0[r13]
	sal	ebx, 5
	mov	r12d, eax
	add	ebx, eax
	movzx	eax, WORD PTR 10[r13]
	movzx	edx, BYTE PTR 1[rdi]
	sal	ebx, 3
	sal	eax, 5
	add	eax, edx
	lea	esi, 0[0+rax*8]
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, DWORD PTR 36[rax]
	test	dl, -128
	jne	.L16
	movsx	r8d, BYTE PTR 3[rdi]
	mov	r10d, DWORD PTR 12[rax]
	lea	r9d, [rbx+r8*8]
	mov	r8d, r10d
	sar	r8d, 8
	cmp	r8d, r9d
	jge	.L19
.L16:
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	sub	ebx, DWORD PTR [rax]
	mov	edx, DWORD PTR 4[rax]
	sub	ebx, -128
	cmp	ebx, 682
	ja	.L17
	mov	eax, esi
	sub	eax, edx
	sub	eax, -128
	cmp	eax, 496
	jbe	.L15
.L17:
	mov	BYTE PTR [rdi], r12b
	mov	rcx, QWORD PTR 0[rbp]
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L15:
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
.L19:
	movzx	r11d, BYTE PTR 5[rdi]
	lea	r9d, [r9+r11*8]
	cmp	r8d, r9d
	jg	.L16
	mov	r8d, DWORD PTR 16[rax]
	mov	r9d, r8d
	sar	r9d, 8
	cmp	r9d, esi
	jl	.L16
	movzx	r11d, BYTE PTR 6[rdi]
	lea	r11d, [rsi+r11*8]
	cmp	r9d, r11d
	jg	.L16
	cmp	WORD PTR 24[rax], -768
	jge	.L16
	mov	r9d, edx
	and	r9d, 3
	cmp	r9d, 1
	jne	.L16
	lea	r11, Task_JumpSequenceReverse[rip]
	or	edx, 4194304
	mov	QWORD PTR 40[rcx], r11
	mov	ecx, r8d
	sub	ecx, DWORD PTR 20[r13]
	mov	DWORD PTR 36[rax], edx
	mov	edx, r10d
	sub	edx, DWORD PTR 16[r13]
	sar	ecx, 8
	sar	edx, 8
	movsx	ecx, cx
	movsx	edx, dx
	call	sub_8004418
	mov	WORD PTR 24[r13], ax
	mov	eax, 8
	mov	WORD PTR 26[r13], ax
	jmp	.L16
	.seh_endproc
	.p2align 4
	.def	Task_JumpSequenceReverse;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_JumpSequenceReverse
Task_JumpSequenceReverse:
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
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r11, QWORD PTR .refptr.gPlayer[rip]
	mov	rcx, QWORD PTR [rax]
	mov	ebx, DWORD PTR 36[r11]
	mov	rdi, QWORD PTR 24[rcx]
	mov	r8, QWORD PTR [rdi]
	movzx	r9d, BYTE PTR 12[rdi]
	movzx	edx, WORD PTR 8[rdi]
	movzx	r10d, WORD PTR 10[rdi]
	test	bl, -128
	jne	.L25
	sal	edx, 5
	movzx	eax, r9b
	movzx	ebp, WORD PTR 24[rdi]
	movzx	esi, BYTE PTR 1[r8]
	add	edx, eax
	movzx	eax, WORD PTR 26[rdi]
	sal	edx, 3
	add	ebp, eax
	and	bp, 1023
	movzx	r13d, bp
	mov	WORD PTR 24[rdi], bp
	add	BYTE PTR 40[r11], al
	mov	eax, 768
	movq	xmm1, QWORD PTR 16[rdi]
	lea	r14d, -768[r13]
	sub	eax, r13d
	sar	r14d, 4
	mov	r12d, eax
	sar	r12d, 4
	test	eax, eax
	lea	eax, 256[r13]
	cmovs	r12d, r14d
	mov	r14, QWORD PTR .refptr.gSineTable[rip]
	cdqe
	movsx	eax, WORD PTR [r14+rax*2]
	movsx	r12d, r12b
	add	r12d, 135
	imul	eax, eax, 135
	movd	xmm0, eax
	movsx	eax, WORD PTR [r14+r13*2]
	imul	eax, r12d
	movd	xmm2, eax
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	punpckldq	xmm0, xmm2
	psrad	xmm0, 6
	mov	edi, DWORD PTR 4[rax]
	sub	edx, DWORD PTR [rax]
	paddd	xmm0, xmm1
	movq	QWORD PTR 12[r11], xmm0
	cmp	bp, 950
	ja	.L27
.L24:
	sub	edx, -128
	cmp	edx, 682
	ja	.L25
	movzx	eax, r10w
	sal	eax, 5
	add	eax, esi
	sal	eax, 3
	sub	eax, edi
	sub	eax, -128
	cmp	eax, 496
	jbe	.L20
.L25:
	mov	BYTE PTR [r8], r9b
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
.L27:
	and	ebx, -4194305
	lea	rax, Task_GappedLoopReverseMain[rip]
	mov	DWORD PTR 36[r11], ebx
	mov	QWORD PTR 40[rcx], rax
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L20:
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_GappedLoop_Start
	.def	CreateEntity_GappedLoop_Start;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_GappedLoop_Start
CreateEntity_GappedLoop_Start:
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
	mov	rdi, rcx
	mov	ebx, edx
	mov	esi, r8d
	mov	edx, 32
	mov	r8d, 8192
	lea	rcx, Task_GappedLoopForwardsMain[rip]
	call	TaskCreate
	mov	rdx, QWORD PTR 24[rax]
	mov	WORD PTR 10[rdx], si
	movzx	esi, si
	mov	WORD PTR 8[rdx], bx
	movd	xmm3, esi
	mov	QWORD PTR [rdx], rdi
	movzx	eax, BYTE PTR [rdi]
	mov	BYTE PTR 12[rdx], al
	movd	xmm0, eax
	movzx	eax, BYTE PTR 1[rdi]
	mov	BYTE PTR [rdi], -2
	movd	xmm2, eax
	movzx	eax, bx
	movd	xmm1, eax
	punpckldq	xmm0, xmm2
	punpckldq	xmm1, xmm3
	pslld	xmm1, 5
	paddd	xmm0, xmm1
	movq	xmm1, QWORD PTR .LC0[rip]
	paddd	xmm0, xmm1
	pslld	xmm0, 11
	movq	QWORD PTR 16[rdx], xmm0
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_GappedLoop_End
	.def	CreateEntity_GappedLoop_End;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_GappedLoop_End
CreateEntity_GappedLoop_End:
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
	mov	rdi, rcx
	mov	ebx, edx
	mov	esi, r8d
	mov	edx, 32
	mov	r8d, 8192
	lea	rcx, Task_GappedLoopReverseMain[rip]
	call	TaskCreate
	mov	rdx, QWORD PTR 24[rax]
	mov	WORD PTR 10[rdx], si
	movzx	esi, si
	mov	WORD PTR 8[rdx], bx
	movd	xmm3, esi
	mov	QWORD PTR [rdx], rdi
	movzx	eax, BYTE PTR [rdi]
	mov	BYTE PTR 12[rdx], al
	movd	xmm0, eax
	movzx	eax, BYTE PTR 1[rdi]
	mov	BYTE PTR [rdi], -2
	movd	xmm2, eax
	movzx	eax, bx
	movd	xmm1, eax
	punpckldq	xmm0, xmm2
	punpckldq	xmm1, xmm3
	pslld	xmm1, 5
	paddd	xmm0, xmm1
	movq	xmm1, QWORD PTR .LC1[rip]
	paddd	xmm0, xmm1
	pslld	xmm0, 11
	movq	QWORD PTR 16[rdx], xmm0
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	-12
	.long	12
	.align 8
.LC1:
	.long	12
	.long	12
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	sub_8004418;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
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
