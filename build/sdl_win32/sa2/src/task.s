	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskMainDummy1;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskMainDummy1
TaskMainDummy1:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.def	TaskMainDummy3;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskMainDummy3
TaskMainDummy3:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.def	TaskMainDummy2;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskMainDummy2
TaskMainDummy2:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	TasksInit
	.def	TasksInit;	.scl	2;	.type	32;	.endef
	.seh_proc	TasksInit
TasksInit:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rbx, QWORD PTR .refptr.gNumTasks[rip]
	mov	ecx, 3
	mov	r8, QWORD PTR .refptr.gTasks[rip]
	mov	r9d, -2063595264
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gNextTask[rip]
	mov	DWORD PTR [rbx], 0
	mov	QWORD PTR [rax], 0
	lea	rdx, 44[rsp]
	mov	DWORD PTR 44[rsp], 0
	call	DmaSet
	mov	rax, QWORD PTR .refptr.gTasks[rip]
	mov	r8, QWORD PTR .refptr.gTaskPtrs[rip]
	lea	rcx, 9216[rax]
	mov	rdx, r8
	.p2align 4,,10
	.p2align 3
.L6:
	mov	QWORD PTR [rdx], rax
	add	rax, 72
	add	rdx, 8
	cmp	rcx, rax
	jne	.L6
	mov	eax, DWORD PTR [rbx]
	cmp	eax, 127
	jg	.L8
	movsx	rdx, eax
	lea	ecx, 1[rax]
	mov	rdx, QWORD PTR [r8+rdx*8]
	mov	DWORD PTR [rbx], ecx
	test	rdx, rdx
	je	.L8
	lea	r10, TaskMainDummy1[rip]
	pxor	xmm0, xmm0
	mov	DWORD PTR 56[rdx], 0
	mov	QWORD PTR 40[rdx], r10
	movups	XMMWORD PTR [rdx], xmm0
	cmp	ecx, 128
	je	.L19
	add	eax, 2
	movsx	rcx, ecx
	mov	DWORD PTR [rbx], eax
	mov	rax, QWORD PTR [r8+rcx*8]
	mov	QWORD PTR 16[rdx], rax
	test	rax, rax
	je	.L8
	mov	QWORD PTR 8[rax], rdx
	mov	rdx, QWORD PTR .refptr.iwram_end[rip]
	lea	rbx, TaskMainDummy2[rip]
	mov	QWORD PTR [rax], 0
	mov	QWORD PTR 16[rax], 0
	mov	rdx, QWORD PTR [rdx]
	mov	QWORD PTR 40[rax], rbx
	mov	DWORD PTR 56[rax], 65535
	mov	rax, QWORD PTR .refptr.gEmptyTask[rip]
	movups	XMMWORD PTR [rax], xmm0
	mov	QWORD PTR 24[rax], rdx
	mov	edx, 17416
	mov	QWORD PTR 16[rax], 0
	mov	rax, QWORD PTR .refptr.gIwramHeap[rip]
	mov	QWORD PTR [rax], 0
	mov	WORD PTR 8[rax], dx
	mov	eax, 1
	add	rsp, 48
	pop	rbx
	ret
.L19:
	mov	QWORD PTR 16[rdx], 0
.L8:
	xor	eax, eax
	add	rsp, 48
	pop	rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC5:
	.ascii "src/task.c\0"
.LC6:
	.ascii "result != NULL\0"
	.text
	.p2align 4
	.globl	TaskCreate
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskCreate
TaskCreate:
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
	mov	edi, edx
	mov	rdx, QWORD PTR .refptr.gNumTasks[rip]
	mov	esi, r8d
	movsx	rax, DWORD PTR [rdx]
	cmp	eax, 127
	jg	.L23
	mov	rbp, QWORD PTR .refptr.gTaskPtrs[rip]
	lea	r10d, 1[rax]
	mov	DWORD PTR [rdx], r10d
	mov	rbx, QWORD PTR 0[rbp+rax*8]
	test	rbx, rbx
	je	.L23
	mov	rax, QWORD PTR 112[rsp]
	mov	QWORD PTR 40[rbx], rcx
	mov	WORD PTR 56[rbx], r8w
	mov	QWORD PTR 48[rbx], rax
	mov	WORD PTR 58[rbx], r9w
	mov	BYTE PTR 61[rbx], 0
	mov	DWORD PTR 62[rbx], 0
	test	di, di
	je	.L30
	movzx	ecx, di
	call	Platform_malloc
	test	rax, rax
	je	.L38
	movzx	edi, di
.L24:
	mov	QWORD PTR 24[rbx], rax
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	DWORD PTR 32[rbx], edi
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR [rbx], rax
	mov	rcx, QWORD PTR 0[rbp]
	mov	rax, QWORD PTR 16[rcx]
	test	rax, rax
	jne	.L28
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L27:
	mov	rdx, QWORD PTR 16[rax]
	mov	rcx, rax
	test	rdx, rdx
	je	.L20
	mov	rax, rdx
.L28:
	cmp	si, WORD PTR 56[rax]
	jnb	.L27
	movq	xmm0, rcx
	mov	QWORD PTR 8[rax], rbx
	mov	rax, rbx
	movhps	xmm0, QWORD PTR 16[rcx]
	movups	XMMWORD PTR 8[rbx], xmm0
	mov	QWORD PTR 16[rcx], rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	mov	rbx, QWORD PTR .refptr.gEmptyTask[rip]
.L20:
	mov	rax, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L30:
	xor	eax, eax
	xor	edi, edi
	jmp	.L24
.L38:
	mov	r8d, 258
	lea	rdx, .LC5[rip]
	lea	rcx, .LC6[rip]
	call	[QWORD PTR __imp__assert[rip]]
	nop
	.seh_endproc
	.p2align 4
	.globl	TaskDestroy
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestroy
TaskDestroy:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	test	BYTE PTR 58[rcx], 2
	jne	.L39
	mov	rax, QWORD PTR 16[rcx]
	mov	rdx, QWORD PTR 8[rcx]
	test	rax, rax
	je	.L39
	test	rdx, rdx
	je	.L39
	mov	r8, QWORD PTR 48[rcx]
	test	r8, r8
	je	.L41
	call	r8
	mov	rax, QWORD PTR 16[rbx]
	mov	rdx, QWORD PTR 8[rbx]
.L41:
	mov	rcx, QWORD PTR .refptr.gNextTask[rip]
	cmp	rbx, QWORD PTR [rcx]
	je	.L58
.L42:
	mov	rcx, QWORD PTR 24[rbx]
	mov	QWORD PTR 16[rdx], rax
	mov	QWORD PTR 8[rax], rdx
	test	rcx, rcx
	je	.L44
	mov	r8d, DWORD PTR 32[rbx]
	xor	edx, edx
	call	memset
	mov	rcx, QWORD PTR 24[rbx]
	test	rcx, rcx
	je	.L44
	call	Platform_free
.L44:
	mov	rdx, QWORD PTR .refptr.gNumTasks[rip]
	pxor	xmm0, xmm0
	mov	eax, DWORD PTR [rdx]
	sub	eax, 1
	mov	DWORD PTR [rdx], eax
	mov	rdx, QWORD PTR .refptr.gTaskPtrs[rip]
	cdqe
	mov	QWORD PTR [rdx+rax*8], rbx
	lea	rax, TaskMainDummy3[rip]
	mov	QWORD PTR 40[rbx], rax
	mov	DWORD PTR 56[rbx], 0
	mov	QWORD PTR 24[rbx], 0
	mov	BYTE PTR 61[rbx], 0
	mov	DWORD PTR 62[rbx], 0
	movups	XMMWORD PTR [rbx], xmm0
.L39:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L58:
	mov	QWORD PTR [rcx], rax
	jmp	.L42
	.seh_endproc
	.p2align 4
	.globl	TasksExec
	.def	TasksExec;	.scl	2;	.type	32;	.endef
	.seh_proc	TasksExec
TasksExec:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gTaskPtrs[rip]
	mov	rdx, QWORD PTR .refptr.gFlags[rip]
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rbx, QWORD PTR .refptr.gNextTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	edx, DWORD PTR [rdx]
	mov	QWORD PTR [rsi], rax
	and	dh, 8
	jne	.L60
	mov	rdi, QWORD PTR .refptr.gExecSoundMain[rip]
	jmp	.L79
	.p2align 4,,10
	.p2align 3
.L81:
	call	[QWORD PTR 40[rax]]
	mov	rax, QWORD PTR [rbx]
	cmp	BYTE PTR [rdi], 0
	mov	QWORD PTR [rsi], rax
	jne	.L80
.L79:
	test	rax, rax
	je	.L65
.L64:
	mov	rdx, QWORD PTR 16[rax]
	mov	QWORD PTR [rbx], rdx
	test	BYTE PTR 58[rax], 1
	je	.L81
	mov	rax, rdx
	cmp	BYTE PTR [rdi], 0
	mov	QWORD PTR [rsi], rax
	je	.L79
.L80:
	call	m4aSoundMain
	mov	rax, QWORD PTR [rsi]
	mov	BYTE PTR [rdi], 0
	test	rax, rax
	jne	.L64
.L65:
	mov	QWORD PTR [rsi], 0
	mov	QWORD PTR [rbx], 0
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L60:
	test	rax, rax
	je	.L65
	mov	rdi, QWORD PTR .refptr.gExecSoundMain[rip]
	jmp	.L68
	.p2align 4,,10
	.p2align 3
.L71:
	mov	rax, rcx
	cmp	BYTE PTR [rdi], 0
	mov	QWORD PTR [rsi], rax
	jne	.L82
.L68:
	test	rax, rax
	je	.L65
	movzx	edx, WORD PTR 58[rax]
	mov	rcx, QWORD PTR 16[rax]
	and	edx, 5
	mov	QWORD PTR [rbx], rcx
	cmp	dx, 4
	jne	.L71
	call	[QWORD PTR 40[rax]]
	mov	rax, QWORD PTR [rbx]
	cmp	BYTE PTR [rdi], 0
	mov	QWORD PTR [rsi], rax
	je	.L68
.L82:
	call	m4aSoundMain
	mov	BYTE PTR [rdi], 0
	mov	rax, QWORD PTR [rsi]
	jmp	.L68
	.seh_endproc
	.p2align 4
	.globl	IwramMalloc
	.def	IwramMalloc;	.scl	2;	.type	32;	.endef
	.seh_proc	IwramMalloc
IwramMalloc:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	test	cx, cx
	je	.L85
	movzx	ecx, cx
	call	Platform_malloc
	test	rax, rax
	je	.L86
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L85:
	xor	eax, eax
	add	rsp, 40
	ret
.L86:
	mov	r8d, 258
	lea	rdx, .LC5[rip]
	lea	rcx, .LC6[rip]
	call	[QWORD PTR __imp__assert[rip]]
	nop
	.seh_endproc
	.p2align 4
	.globl	IwramFree
	.def	IwramFree;	.scl	2;	.type	32;	.endef
	.seh_proc	IwramFree
IwramFree:
	.seh_endprologue
	test	rcx, rcx
	je	.L87
	jmp	Platform_free
	.p2align 4,,10
	.p2align 3
.L87:
	ret
	.seh_endproc
	.p2align 4
	.globl	TasksDestroyInPriorityRange
	.def	TasksDestroyInPriorityRange;	.scl	2;	.type	32;	.endef
	.seh_proc	TasksDestroyInPriorityRange
TasksDestroyInPriorityRange:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gTaskPtrs[rip]
	mov	r9, QWORD PTR [rsi]
	mov	r8d, ecx
	mov	edi, edx
	mov	rcx, r9
	test	r9, r9
	jne	.L90
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L91:
	mov	rcx, QWORD PTR 16[rcx]
	test	rcx, rcx
	je	.L89
.L90:
	movzx	eax, WORD PTR 56[rcx]
	cmp	ax, r8w
	jb	.L91
	cmp	ax, dx
	jb	.L94
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L101:
	cmp	WORD PTR 56[rbx], di
	jnb	.L89
	mov	r9, QWORD PTR [rsi]
	mov	rcx, rbx
.L94:
	mov	rbx, QWORD PTR 16[rcx]
	cmp	r9, rcx
	je	.L93
	cmp	QWORD PTR 8[rsi], rcx
	je	.L93
	call	TaskDestroy
.L93:
	test	rbx, rbx
	jne	.L101
.L89:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.def	Platform_malloc;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	Platform_free;	.scl	2;	.type	32;	.endef
	.def	m4aSoundMain;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gExecSoundMain, "dr"
	.globl	.refptr.gExecSoundMain
	.linkonce	discard
.refptr.gExecSoundMain:
	.quad	gExecSoundMain
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
	.section	.rdata$.refptr.gIwramHeap, "dr"
	.globl	.refptr.gIwramHeap
	.linkonce	discard
.refptr.gIwramHeap:
	.quad	gIwramHeap
	.section	.rdata$.refptr.iwram_end, "dr"
	.globl	.refptr.iwram_end
	.linkonce	discard
.refptr.iwram_end:
	.quad	iwram_end
	.section	.rdata$.refptr.gEmptyTask, "dr"
	.globl	.refptr.gEmptyTask
	.linkonce	discard
.refptr.gEmptyTask:
	.quad	gEmptyTask
	.section	.rdata$.refptr.gTaskPtrs, "dr"
	.globl	.refptr.gTaskPtrs
	.linkonce	discard
.refptr.gTaskPtrs:
	.quad	gTaskPtrs
	.section	.rdata$.refptr.gTasks, "dr"
	.globl	.refptr.gTasks
	.linkonce	discard
.refptr.gTasks:
	.quad	gTasks
	.section	.rdata$.refptr.gNumTasks, "dr"
	.globl	.refptr.gNumTasks
	.linkonce	discard
.refptr.gNumTasks:
	.quad	gNumTasks
	.section	.rdata$.refptr.gNextTask, "dr"
	.globl	.refptr.gNextTask
	.linkonce	discard
.refptr.gNextTask:
	.quad	gNextTask
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
