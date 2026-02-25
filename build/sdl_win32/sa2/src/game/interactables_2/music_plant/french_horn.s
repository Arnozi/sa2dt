	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_FrenchHorn;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_FrenchHorn
TaskDestructor_FrenchHorn:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.def	Task_Active;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Active
Task_Active:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rsi, QWORD PTR 24[rax]
	test	BYTE PTR 36[rbx], -128
	je	.L4
	call	Player_ClearMovestate_IsInScriptedSequence
	mov	rax, QWORD PTR [rdi]
	lea	rcx, Task_Idle[rip]
	mov	QWORD PTR 40[rax], rcx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	mov	BYTE PTR 40[rbx], 32
	movzx	edx, WORD PTR 36[rsi]
	mov	rcx, rsi
	mov	rax, QWORD PTR .refptr.gUnknown_08C87960[rip]
	mov	DWORD PTR 20[rbx], 65537
	mov	rdx, QWORD PTR [rax+rdx*8]
	call	IncrementPipeSequence
	test	eax, eax
	je	.L7
	mov	rax, QWORD PTR 16[rsi]
	mov	QWORD PTR 12[rbx], rax
.L8:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	call	Player_ClearMovestate_IsInScriptedSequence
	mov	BYTE PTR 117[rbx], 5
	movzx	eax, WORD PTR 36[rsi]
	lea	rdx, sExitSpeeds[rip]
	mov	ecx, 320
	and	DWORD PTR 36[rbx], -4194305
	mov	edx, DWORD PTR [rdx+rax*4]
	mov	DWORD PTR 20[rbx], edx
	lea	rdx, sExitRotation[rip]
	movzx	eax, WORD PTR [rdx+rax*2]
	mov	BYTE PTR 40[rbx], al
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rdi]
	lea	rcx, Task_Idle[rip]
	mov	QWORD PTR 40[rax], rcx
	mov	rax, QWORD PTR 16[rsi]
	mov	QWORD PTR 12[rbx], rax
	jmp	.L8
	.seh_endproc
	.p2align 4
	.def	Task_Idle;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Idle
Task_Idle:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rdi, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	eax, DWORD PTR 28[rbx]
	mov	edx, DWORD PTR 32[rbx]
	mov	r8d, eax
	mov	ecx, edx
	test	BYTE PTR 36[rdi], -128
	jne	.L10
	sub	ax, WORD PTR 13[rdi]
	sub	dx, WORD PTR 17[rdi]
	cwde
	movsx	edx, dx
	imul	eax, eax
	imul	edx, edx
	add	eax, edx
	cmp	eax, 400
	jle	.L13
.L10:
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, 128
	mov	edi, eax
	sub	di, WORD PTR [rdx]
	mov	r9d, DWORD PTR 4[rdx]
	mov	edx, edi
	add	edx, r8d
	cmp	dx, 682
	ja	.L11
	sub	eax, r9d
	add	eax, ecx
	cmp	ax, 496
	ja	.L11
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L11:
	mov	rax, QWORD PTR 40[rbx]
	movzx	edx, BYTE PTR 48[rbx]
	mov	BYTE PTR [rax], dl
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L13:
	call	Player_SetMovestate_IsInScriptedSequence
	mov	eax, 4
	mov	ecx, 109
	or	DWORD PTR 36[rdi], 4194304
	mov	WORD PTR 108[rdi], ax
	call	m4aSongNumStart
	mov	edx, DWORD PTR 28[rbx]
	mov	r8d, DWORD PTR 32[rbx]
	mov	rcx, rbx
	and	DWORD PTR 36[rdi], -2
	sal	r8d, 8
	sal	edx, 8
	mov	DWORD PTR 20[rdi], 0
	call	InitPipeSequence
	mov	ecx, 319
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rsi]
	movzx	r8d, WORD PTR 28[rbx]
	lea	rcx, Task_Active[rip]
	mov	QWORD PTR 40[rax], rcx
	movzx	ecx, WORD PTR 32[rbx]
	jmp	.L10
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_FrenchHorn_Entry
	.def	CreateEntity_FrenchHorn_Entry;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_FrenchHorn_Entry
CreateEntity_FrenchHorn_Entry:
	push	r14
	.seh_pushreg	r14
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
	lea	rax, TaskDestructor_FrenchHorn[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rsi, rcx
	mov	r14d, edx
	mov	ebp, r9d
	mov	edi, r8d
	xor	r9d, r9d
	mov	r8d, 8208
	mov	ebx, ebp
	mov	edx, 56
	lea	rcx, Task_Idle[rip]
	movzx	edi, di
	call	TaskCreate
	movsx	dx, BYTE PTR 3[rsi]
	sal	edi, 5
	mov	rax, QWORD PTR 24[rax]
	mov	WORD PTR 36[rax], dx
	mov	QWORD PTR 40[rax], rsi
	movzx	edx, BYTE PTR [rsi]
	movzx	ecx, dl
	mov	ch, bl
	movzx	ebx, r14w
	sal	ebx, 5
	mov	WORD PTR 48[rax], cx
	add	ebx, edx
	sal	ebx, 3
	mov	DWORD PTR 28[rax], ebx
	movzx	edx, BYTE PTR 1[rsi]
	add	edi, edx
	sal	edi, 3
	mov	DWORD PTR 32[rax], edi
	mov	BYTE PTR [rsi], -2
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r14
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 2
sExitRotation:
	.word	0
	.word	0
	.word	224
	.align 8
sExitSpeeds:
	.word	2304
	.word	0
	.word	3072
	.word	0
	.word	2304
	.word	-2304
	.globl	gFrenchHornPipeSequence2
	.align 32
gFrenchHornPipeSequence2:
	.word	0
	.word	34
	.word	2048
	.word	2048
	.word	0
	.word	120
	.word	24576
	.word	24576
	.word	0
	.word	341
	.word	8192
	.word	8192
	.word	9
	.word	640
	.long	10240
	.word	3
	.word	320
	.long	14336
	.word	5
	.word	320
	.long	14336
	.word	10
	.word	640
	.long	12288
	.word	0
	.word	146
	.word	21504
	.word	-21504
	.word	0
	.word	120
	.word	24576
	.word	-24576
	.word	0
	.word	341
	.word	8192
	.word	-8192
	.word	-1
	.word	-1
	.long	-1
	.globl	gFrenchHornPipeSequence1
	.align 32
gFrenchHornPipeSequence1:
	.word	0
	.word	34
	.word	2048
	.word	2048
	.word	0
	.word	120
	.word	24576
	.word	24576
	.word	0
	.word	341
	.word	8192
	.word	8192
	.word	9
	.word	640
	.word	10240
	.word	0
	.word	3
	.word	320
	.word	14336
	.word	0
	.word	5
	.word	320
	.word	14336
	.word	0
	.word	10
	.word	640
	.word	12288
	.word	0
	.word	0
	.word	146
	.word	21504
	.word	-21504
	.word	0
	.word	120
	.long	24576
	.word	0
	.word	120
	.long	24576
	.word	0
	.word	292
	.long	14336
	.word	-1
	.word	-1
	.long	-1
	.globl	gFrenchHornPipeSequence0
	.align 32
gFrenchHornPipeSequence0:
	.word	0
	.word	34
	.word	2048
	.word	2048
	.word	0
	.word	120
	.word	24576
	.word	24576
	.word	0
	.word	341
	.word	8192
	.word	8192
	.word	9
	.word	640
	.long	10240
	.word	3
	.word	320
	.long	14336
	.word	5
	.word	320
	.long	14336
	.word	10
	.word	640
	.long	12288
	.word	0
	.word	146
	.word	21504
	.word	-21504
	.word	0
	.word	120
	.long	24576
	.word	0
	.word	292
	.long	14336
	.word	-1
	.word	-1
	.long	-1
	.ident	"GCC: (GNU) 13-win32"
	.def	Player_ClearMovestate_IsInScriptedSequence;	.scl	2;	.type	32;	.endef
	.def	IncrementPipeSequence;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Player_SetMovestate_IsInScriptedSequence;	.scl	2;	.type	32;	.endef
	.def	InitPipeSequence;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
	.section	.rdata$.refptr.gUnknown_08C87960, "dr"
	.globl	.refptr.gUnknown_08C87960
	.linkonce	discard
.refptr.gUnknown_08C87960:
	.quad	gUnknown_08C87960
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
