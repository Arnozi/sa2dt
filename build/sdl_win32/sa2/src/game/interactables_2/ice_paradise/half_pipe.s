	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	PlayerWithinHalfPipe;	.scl	3;	.type	32;	.endef
	.seh_proc	PlayerWithinHalfPipe
PlayerWithinHalfPipe:
	.seh_endprologue
	mov	r10, QWORD PTR .refptr.gCamera[rip]
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	xor	r11d, r11d
	movzx	edx, WORD PTR [rcx]
	movsx	r8d, WORD PTR 12[rcx]
	sub	dx, WORD PTR [r10]
	movzx	eax, WORD PTR 13[r9]
	movsx	edx, dx
	sub	ax, WORD PTR [r10]
	cwde
	add	r8d, edx
	cmp	r8d, eax
	jg	.L1
	movsx	r8d, WORD PTR 16[rcx]
	add	edx, r8d
	cmp	eax, edx
	jg	.L1
	mov	r8d, DWORD PTR 4[r10]
	movzx	edx, WORD PTR 4[rcx]
	movzx	eax, WORD PTR 17[r9]
	sub	edx, r8d
	sub	eax, r8d
	movsx	r8d, WORD PTR 14[rcx]
	movsx	edx, dx
	cwde
	add	r8d, edx
	cmp	r8d, eax
	jg	.L1
	movsx	ecx, WORD PTR 18[rcx]
	xor	r11d, r11d
	add	edx, ecx
	cmp	eax, edx
	setle	r11b
.L1:
	mov	eax, r11d
	ret
	.seh_endproc
	.p2align 4
	.def	TaskDestructor_HalfPipe;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_HalfPipe
TaskDestructor_HalfPipe:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.def	Task_HalfPipeMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_HalfPipeMain
Task_HalfPipeMain:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdi, QWORD PTR .refptr.gPlayer[rip]
	mov	rsi, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rsi]
	test	BYTE PTR 36[rdi], -126
	je	.L23
.L9:
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR [rbx]
	mov	ecx, DWORD PTR 4[rbx]
	sub	ax, WORD PTR [rdx]
	mov	r8d, DWORD PTR 4[rdx]
	movsx	edx, WORD PTR 16[rbx]
	cwde
	add	edx, eax
	cmp	edx, -128
	jl	.L14
	movsx	edx, WORD PTR 12[rbx]
	add	eax, edx
	cmp	eax, 554
	jg	.L14
	movsx	eax, WORD PTR 18[rbx]
	sub	ecx, r8d
	movsx	ecx, cx
	add	eax, ecx
	cmp	eax, -128
	jl	.L14
	movsx	eax, WORD PTR 14[rbx]
	add	eax, ecx
	cmp	eax, 368
	jg	.L14
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L14:
	mov	rax, QWORD PTR 24[rbx]
	movzx	edx, BYTE PTR 32[rbx]
	mov	rcx, rsi
	mov	BYTE PTR [rax], dl
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L23:
	movzx	eax, WORD PTR 108[rdi]
	cmp	ax, 4
	je	.L16
	cmp	ax, 9
	jne	.L9
.L16:
	movzx	eax, WORD PTR 20[rbx]
	test	ax, ax
	je	.L11
	cmp	ax, 1
	jne	.L13
	cmp	WORD PTR 20[rdi], -575
	jge	.L9
.L13:
	mov	rcx, rbx
	call	PlayerWithinHalfPipe
	test	eax, eax
	je	.L9
	mov	eax, DWORD PTR 16[rdi]
	mov	DWORD PTR 8[rbx], eax
	lea	rax, Task_HalfPipeSequenceMain[rip]
	mov	QWORD PTR 40[rsi], rax
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L11:
	cmp	WORD PTR 20[rdi], 575
	jg	.L13
	jmp	.L9
	.seh_endproc
	.p2align 4
	.def	Task_HalfPipeSequenceMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_HalfPipeSequenceMain
Task_HalfPipeSequenceMain:
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	mov	r12, QWORD PTR [rax]
	mov	esi, DWORD PTR 36[rbx]
	mov	rbp, QWORD PTR 24[r12]
	test	sil, -128
	je	.L25
	and	esi, -32769
	lea	rax, Task_HalfPipeMain[rip]
	mov	DWORD PTR 36[rbx], esi
	mov	QWORD PTR 40[r12], rax
.L24:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L25:
	movzx	edi, WORD PTR 20[rbx]
	lea	eax, 511[rdi]
	cmp	ax, 1086
	jbe	.L27
	mov	rdx, QWORD PTR .refptr.gPlayerControls[rip]
	movzx	eax, WORD PTR 102[rbx]
	and	ax, WORD PTR [rdx]
	je	.L28
	mov	BYTE PTR 117[rbx], 3
.L27:
	movzx	eax, WORD PTR 108[rbx]
	and	esi, -32769
	mov	DWORD PTR 36[rbx], esi
	sub	eax, 59
	cmp	ax, 2
	ja	.L30
	mov	r8d, 9
	mov	WORD PTR 108[rbx], r8w
.L30:
	lea	rax, Task_HalfPipeMain[rip]
	mov	QWORD PTR 40[r12], rax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L28:
	mov	rcx, rbp
	call	PlayerWithinHalfPipe
	test	eax, eax
	je	.L27
	mov	ecx, DWORD PTR 12[rbx]
	mov	eax, esi
	movsx	edx, WORD PTR 12[rbp]
	or	ah, -128
	movsx	r8d, WORD PTR 16[rbp]
	sar	ecx, 8
	cmp	WORD PTR 20[rbp], 0
	mov	DWORD PTR 36[rbx], eax
	mov	eax, DWORD PTR 0[rbp]
	jne	.L31
	lea	r9d, [rdx+rax]
	mov	eax, ecx
	sub	eax, r9d
.L32:
	movzx	eax, ax
	sub	r8d, edx
	mov	ecx, DWORD PTR 8[rbp]
	movsx	r9d, WORD PTR 14[rbp]
	sal	eax, 10
	movsx	r10d, WORD PTR 18[rbp]
	cdq
	idiv	r8d
	mov	edx, 1024
	mov	r8d, 256
	cmp	ax, dx
	cmovg	eax, edx
	xor	edx, edx
	test	ax, ax
	cmovs	eax, edx
	mov	edx, edi
	add	ax, 768
	and	ax, 1023
	neg	dx
	cmovs	edx, edi
	movsx	r11d, dx
	cmp	dx, 2560
	jg	.L33
	mov	edx, r11d
	sal	edx, 8
	movsx	r8, edx
	sar	edx, 31
	imul	r8, r8, 1717986919
	sar	r8, 42
	sub	r8d, edx
.L33:
	sub	r10d, r9d
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	and	eax, 1023
	lea	edx, -16[r10]
	movzx	eax, WORD PTR [r9+rax*2]
	sar	edx
	sar	ax, 6
	cwde
	imul	eax, edx
	sal	edx, 8
	add	eax, edx
	mov	edx, esi
	imul	eax, r8d
	and	edx, -3
	or	dh, -128
	mov	DWORD PTR 36[rbx], edx
	sar	eax, 8
	sub	ecx, eax
	mov	DWORD PTR 16[rbx], ecx
	xor	ecx, ecx
	and	esi, 4
	mov	WORD PTR 22[rbx], cx
	jne	.L24
	cdq
	idiv	r10d
	cmp	eax, 31
	jg	.L34
	mov	edx, 9
	mov	WORD PTR 108[rbx], dx
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L31:
	add	eax, r8d
	sub	eax, ecx
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L34:
	cmp	eax, 95
	jg	.L35
	mov	eax, 59
	mov	WORD PTR 108[rbx], ax
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L35:
	cmp	eax, 159
	setg	al
	movzx	eax, al
	add	eax, 60
	mov	WORD PTR 108[rbx], ax
	jmp	.L24
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_HalfPipe_End
	.def	CreateEntity_HalfPipe_End;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_HalfPipe_End
CreateEntity_HalfPipe_End:
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
	lea	rax, TaskDestructor_HalfPipe[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rsi, rcx
	mov	ebx, r9d
	mov	ebp, edx
	xor	r9d, r9d
	mov	edi, r8d
	mov	edx, 40
	movzx	ebp, bp
	mov	r8d, 8208
	lea	rcx, Task_HalfPipeMain[rip]
	sal	ebp, 5
	movzx	edi, di
	call	TaskCreate
	sal	edi, 5
	movsx	r9w, BYTE PTR 4[rsi]
	movsx	r8w, BYTE PTR 3[rsi]
	mov	rdx, QWORD PTR 24[rax]
	mov	eax, 1
	movzx	r10d, BYTE PTR 5[rsi]
	sal	r9d, 3
	sal	r8d, 3
	mov	WORD PTR 20[rdx], ax
	movzx	eax, BYTE PTR [rsi]
	lea	r10d, [r8+r10*8]
	movzx	r8d, r8w
	movzx	r10d, r10w
	add	ebp, eax
	mov	ecx, eax
	sal	ebp, 3
	mov	DWORD PTR [rdx], ebp
	movzx	eax, BYTE PTR 1[rsi]
	add	edi, eax
	movzx	eax, BYTE PTR 6[rsi]
	mov	QWORD PTR 24[rdx], rsi
	sal	edi, 3
	lea	eax, [r9+rax*8]
	movzx	r9d, r9w
	mov	DWORD PTR 4[rdx], edi
	movzx	eax, ax
	sal	rax, 16
	or	rax, r10
	sal	rax, 16
	or	rax, r9
	sal	rax, 16
	or	rax, r8
	mov	QWORD PTR 12[rdx], rax
	movzx	eax, cl
	mov	ah, bl
	mov	WORD PTR 32[rdx], ax
	mov	BYTE PTR [rsi], -2
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_HalfPipe_Start
	.def	CreateEntity_HalfPipe_Start;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_HalfPipe_Start
CreateEntity_HalfPipe_Start:
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
	lea	rax, TaskDestructor_HalfPipe[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rsi, rcx
	mov	ebx, r9d
	mov	ebp, edx
	xor	r9d, r9d
	mov	edi, r8d
	mov	edx, 40
	movzx	ebp, bp
	mov	r8d, 8208
	lea	rcx, Task_HalfPipeMain[rip]
	sal	ebp, 5
	movzx	edi, di
	call	TaskCreate
	sal	edi, 5
	movsx	r9w, BYTE PTR 4[rsi]
	movsx	r8w, BYTE PTR 3[rsi]
	mov	rdx, QWORD PTR 24[rax]
	xor	eax, eax
	movzx	r10d, BYTE PTR 5[rsi]
	sal	r9d, 3
	sal	r8d, 3
	mov	WORD PTR 20[rdx], ax
	movzx	eax, BYTE PTR [rsi]
	lea	r10d, [r8+r10*8]
	movzx	r8d, r8w
	movzx	r10d, r10w
	add	ebp, eax
	mov	ecx, eax
	sal	ebp, 3
	mov	DWORD PTR [rdx], ebp
	movzx	eax, BYTE PTR 1[rsi]
	add	edi, eax
	movzx	eax, BYTE PTR 6[rsi]
	mov	QWORD PTR 24[rdx], rsi
	sal	edi, 3
	lea	eax, [r9+rax*8]
	movzx	r9d, r9w
	mov	DWORD PTR 4[rdx], edi
	movzx	eax, ax
	sal	rax, 16
	or	rax, r10
	sal	rax, 16
	or	rax, r9
	sal	rax, 16
	or	rax, r8
	mov	QWORD PTR 12[rdx], rax
	movzx	eax, cl
	mov	ah, bl
	mov	WORD PTR 32[rdx], ax
	mov	BYTE PTR [rsi], -2
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
	.section	.rdata$.refptr.gPlayerControls, "dr"
	.globl	.refptr.gPlayerControls
	.linkonce	discard
.refptr.gPlayerControls:
	.quad	gPlayerControls
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
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
