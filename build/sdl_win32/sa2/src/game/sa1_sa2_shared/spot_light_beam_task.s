	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	TaskDestructor_SpotlightBeamTask
	.def	TaskDestructor_SpotlightBeamTask;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_SpotlightBeamTask
TaskDestructor_SpotlightBeamTask:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	and	DWORD PTR [rax], -5
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_SpotlightBeamTask
	.def	Task_SpotlightBeamTask;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_SpotlightBeamTask
Task_SpotlightBeamTask:
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rcx, QWORD PTR 24[rax]
	movzx	r10d, BYTE PTR 11[rcx]
	test	r10b, r10b
	je	.L3
	movzx	ebx, WORD PTR [rcx]
	movzx	eax, WORD PTR 4[rcx]
	mov	rbp, QWORD PTR .refptr.gSineTable[rip]
	mov	edx, eax
	add	ax, WORD PTR 2[rcx]
	sub	dx, WORD PTR 2[rcx]
	cmp	bx, 511
	cmovbe	eax, edx
	mov	WORD PTR 4[rcx], ax
	movsx	eax, ah
	add	eax, ebx
	mov	ebx, eax
	mov	WORD PTR 58[rsp], ax
	and	bx, 1023
	movzx	edi, bx
	lea	r14d, [rdi+r10]
	mov	WORD PTR [rcx], di
	mov	r12d, r14d
	and	r12d, 1023
	lea	eax, 256[r12]
	movzx	r11d, WORD PTR 0[rbp+rax*2]
	test	r11w, r11w
	je	.L3
	movsx	esi, WORD PTR 6[rcx]
	mov	edx, r11d
	xor	eax, eax
	sar	dx, 6
	mov	r15d, esi
	je	.L7
	mov	eax, r12d
	movsx	r8d, dx
	movzx	eax, WORD PTR 0[rbp+rax*2]
	sar	ax, 6
	cwde
	sal	eax, 8
	cdq
	idiv	r8d
.L7:
	movsx	r13d, WORD PTR 8[rcx]
	imul	eax, r13d
	mov	edx, esi
	mov	r8d, r13d
	sar	eax, 8
	sub	edx, eax
	mov	WORD PTR 62[rsp], dx
	test	dx, dx
	jle	.L67
	cmp	dx, 425
	jg	.L68
	xor	eax, eax
	xor	r14d, r14d
	mov	WORD PTR 60[rsp], ax
.L12:
	mov	WORD PTR 64[rsp], dx
	mov	edx, r11d
	movzx	r9d, sil
	lea	ebx, -240[r13]
	sal	edx, 16
	mov	WORD PTR 66[rsp], r14w
	mov	r11d, esi
	sar	edx, 22
	je	.L16
	movzx	eax, WORD PTR 0[rbp+r12*2]
	mov	r11d, edx
	sal	eax, 16
	sar	eax, 22
	sal	eax, 8
	cdq
	idiv	r11d
	mov	edx, esi
	imul	eax, ebx
	sub	dl, ah
	mov	r11d, edx
.L16:
	sub	r10d, edi
	movzx	eax, r11b
	mov	r12d, 240
	mov	edx, esi
	mov	edi, r10d
	mov	WORD PTR 68[rsp], ax
	and	edi, 1023
	mov	WORD PTR 70[rsp], r12w
	lea	eax, 256[rdi]
	movzx	r12d, WORD PTR 0[rbp+rax*2]
	sal	r12d, 16
	sar	r12d, 22
	je	.L17
	mov	eax, edi
	movzx	eax, WORD PTR 0[rbp+rax*2]
	sal	eax, 16
	sar	eax, 22
	sal	eax, 8
	cdq
	idiv	r12d
	cwde
	imul	r13d, eax
	imul	ebx, eax
	sar	r13d, 8
	mov	eax, ebx
	mov	ebx, esi
	lea	r15d, [rsi+r13]
	add	bl, ah
	mov	edx, r15d
	movzx	r9d, bl
.L17:
	movzx	ebx, WORD PTR 58[rsp]
	movzx	r12d, r9b
	and	bx, 512
	test	dx, dx
	jle	.L69
	cmp	dx, 425
	jle	.L23
	and	r10d, 768
	je	.L24
	lea	eax, -768[rdi]
	and	eax, 1023
.L25:
	lea	edx, 256[rax]
	mov	edi, r8d
	movsx	rdx, edx
	movzx	r10d, WORD PTR 0[rbp+rdx*2]
	sal	r10d, 16
	sar	r10d, 22
	je	.L26
	cdqe
	movzx	eax, WORD PTR 0[rbp+rax*2]
	sal	eax, 16
	sar	eax, 22
	sal	eax, 8
	cdq
	idiv	r10d
	mov	edx, 426
	sub	edx, esi
	cwde
	imul	eax, edx
	sar	eax, 8
	sub	edi, eax
	mov	r8d, edi
.L26:
	mov	eax, 426
	mov	edx, 426
.L22:
	mov	r10d, 240
	mov	WORD PTR 72[rsp], ax
	mov	WORD PTR 74[rsp], di
	mov	WORD PTR 76[rsp], r12w
	mov	WORD PTR 78[rsp], r10w
	test	bx, bx
	jne	.L27
	cmp	r8w, 239
	jg	.L3
	sal	edi, 16
	or	dil, -16
.L39:
	movzx	ecx, BYTE PTR 10[rcx]
	mov	eax, ecx
	and	eax, 1
	cmp	WORD PTR 60[rsp], 239
	jle	.L28
	test	al, al
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	jne	.L70
	mov	DWORD PTR 8[rax], edi
.L30:
	mov	DWORD PTR 40[rsp], 0
	movzx	edx, dl
	movzx	r8d, r8b
	mov	DWORD PTR 32[rsp], 240
	call	sub_8006228
	nop
.L3:
	add	rsp, 88
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.p2align 4,,10
	.p2align 3
.L68:
	and	r14d, 768
	je	.L13
	lea	edx, -768[r12]
	and	edx, 1023
.L14:
	lea	eax, 256[rdx]
	cdqe
	movzx	r9d, WORD PTR 0[rbp+rax*2]
	xor	eax, eax
	sal	r9d, 16
	sar	r9d, 22
	je	.L15
	movsx	rdx, edx
	movzx	eax, WORD PTR 0[rbp+rdx*2]
	sal	eax, 16
	sar	eax, 22
	sal	eax, 8
	cdq
	idiv	r9d
	mov	edx, 426
	sub	edx, esi
	movsx	edx, dx
	cwde
	imul	eax, edx
	sar	eax, 8
.L15:
	mov	r9d, 426
	mov	edx, 426
	mov	WORD PTR 62[rsp], r9w
.L10:
	mov	r14d, r8d
	sub	r14d, eax
	mov	WORD PTR 60[rsp], r14w
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L67:
	and	r14d, 768
	movsx	r9d, si
	jne	.L71
	mov	eax, 512
	mov	WORD PTR 60[rsp], r13w
	mov	r14d, r13d
	sub	eax, r12d
	cdqe
	movzx	edx, WORD PTR 0[rbp+rax*2]
	sar	dx, 6
	je	.L11
	mov	eax, 256
	movsx	r14d, dx
	sub	eax, r12d
	cdqe
	movzx	eax, WORD PTR 0[rbp+rax*2]
	sar	ax, 6
	cwde
	sal	eax, 8
	cdq
	idiv	r14d
	mov	r14d, r13d
	imul	eax, r9d
	sar	eax, 8
	sub	r14d, eax
	mov	WORD PTR 60[rsp], r14w
.L11:
	xor	ebx, ebx
	xor	edx, edx
	mov	WORD PTR 62[rsp], bx
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L69:
	and	r10d, 768
	je	.L19
	lea	eax, -768[rdi]
	and	eax, 1023
.L20:
	lea	edx, 256[rax]
	mov	edi, r8d
	movsx	rdx, edx
	movzx	r10d, WORD PTR 0[rbp+rdx*2]
	sal	r10d, 16
	sar	r10d, 22
	je	.L21
	cdqe
	movzx	eax, WORD PTR 0[rbp+rax*2]
	sal	eax, 16
	sar	eax, 22
	sal	eax, 8
	cdq
	idiv	r10d
	cwde
	imul	eax, esi
	sar	eax, 8
	sub	edi, eax
	mov	r8d, edi
.L21:
	xor	eax, eax
	xor	edx, edx
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L27:
	cmp	WORD PTR 60[rsp], 239
	jg	.L3
	movzx	ecx, BYTE PTR 10[rcx]
	sal	r14d, 16
	or	r14b, -16
	mov	eax, ecx
	and	eax, 1
	cmp	r8w, 239
	jle	.L34
	test	al, al
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	jne	.L72
	mov	DWORD PTR 8[rax], r14d
.L36:
	movzx	edx, BYTE PTR 62[rsp]
	movzx	r8d, BYTE PTR 60[rsp]
	movzx	r9d, r11b
	mov	DWORD PTR 40[rsp], 0
	mov	DWORD PTR 32[rsp], 240
	call	sub_80064A8
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L23:
	xor	eax, eax
	mov	r8d, 240
	mov	WORD PTR 72[rsp], r15w
	mov	WORD PTR 74[rsp], ax
	mov	WORD PTR 76[rsp], r12w
	mov	WORD PTR 78[rsp], r8w
	test	bx, bx
	jne	.L73
	mov	edi, 240
	xor	r8d, r8d
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L19:
	mov	eax, 256
	sub	eax, edi
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L28:
	test	al, al
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	jne	.L74
	mov	DWORD PTR 8[rax], edi
.L38:
	lea	rdx, 64[rsp]
	call	sub_800724C
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L73:
	cmp	WORD PTR 60[rsp], 239
	jg	.L3
	movzx	ecx, BYTE PTR 10[rcx]
	sal	r14d, 16
	or	r14b, -16
	mov	eax, ecx
	and	eax, 1
.L34:
	test	al, al
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	je	.L37
	mov	DWORD PTR 12[rax], r14d
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L13:
	mov	edx, 256
	sub	edx, r12d
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L24:
	mov	eax, 256
	sub	eax, edi
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L71:
	lea	eax, -768[r12]
	and	eax, 1023
	lea	edx, 256[rax]
	movsx	rdx, edx
	movzx	ebx, WORD PTR 0[rbp+rdx*2]
	sar	bx, 6
	mov	WORD PTR 62[rsp], bx
	je	.L42
	movzx	eax, WORD PTR 0[rbp+rax*2]
	movsx	r14d, bx
	sar	ax, 6
	cwde
	sal	eax, 8
	cdq
	idiv	r14d
	xor	r14d, r14d
	xor	edx, edx
	mov	WORD PTR 62[rsp], r14w
	cwde
	imul	eax, r9d
	sar	eax, 8
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L74:
	mov	DWORD PTR 12[rax], edi
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L70:
	mov	DWORD PTR 12[rax], edi
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L42:
	xor	edx, edx
	xor	eax, eax
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L37:
	mov	DWORD PTR 8[rax], r14d
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L72:
	mov	DWORD PTR 12[rax], r14d
	jmp	.L36
	.seh_endproc
	.p2align 4
	.globl	CreateSpotlightBeamTask
	.def	CreateSpotlightBeamTask;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateSpotlightBeamTask
CreateSpotlightBeamTask:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	lea	rax, TaskDestructor_SpotlightBeamTask[rip]
	xor	r9d, r9d
	mov	edx, 12
	mov	r8d, 8192
	lea	rcx, Task_SpotlightBeamTask[rip]
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	movabs	rcx, 33785793302495232
	mov	rdx, QWORD PTR 24[rax]
	mov	QWORD PTR [rdx], rcx
	mov	DWORD PTR 8[rdx], 536871112
	add	rsp, 56
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	sub_8006228;	.scl	2;	.type	32;	.endef
	.def	sub_80064A8;	.scl	2;	.type	32;	.endef
	.def	sub_800724C;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gWinRegs, "dr"
	.globl	.refptr.gWinRegs
	.linkonce	discard
.refptr.gWinRegs:
	.quad	gWinRegs
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
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
