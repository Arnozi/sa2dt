	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_PipeHorn;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_PipeHorn
TaskDestructor_PipeHorn:
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
	jne	.L7
	mov	BYTE PTR 40[rbx], 0
	movzx	edx, WORD PTR 36[rsi]
	mov	rcx, rsi
	mov	rax, QWORD PTR .refptr.gUnknown_08C8793C[rip]
	mov	DWORD PTR 20[rbx], 1
	mov	rdx, QWORD PTR [rax+rdx*8]
	call	IncrementPipeSequence
	test	eax, eax
	je	.L8
.L6:
	mov	rax, QWORD PTR 16[rsi]
	mov	QWORD PTR 12[rbx], rax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	call	Player_ClearMovestate_IsInScriptedSequence
	mov	BYTE PTR 117[rbx], 5
	movzx	eax, WORD PTR 36[rsi]
	lea	rdx, sExitSpeeds[rip]
	and	DWORD PTR 36[rbx], -4194305
	mov	edx, DWORD PTR [rdx+rax*4]
	mov	DWORD PTR 20[rbx], edx
	lea	rdx, sExitRotations[rip]
	movzx	edx, WORD PTR [rdx+rax*2]
	mov	BYTE PTR 40[rbx], dl
	lea	rdx, sExitSounds[rip]
	movzx	ecx, WORD PTR [rdx+rax*2]
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rdi]
	lea	rcx, Task_Idle[rip]
	mov	QWORD PTR 40[rax], rcx
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L7:
	call	Player_ClearMovestate_IsInScriptedSequence
	mov	rax, QWORD PTR [rdi]
	lea	rcx, Task_Idle[rip]
	mov	QWORD PTR 40[rax], rcx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
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
	mov	eax, DWORD PTR 32[rbx]
	mov	edx, DWORD PTR 28[rbx]
	mov	rcx, rbx
	and	DWORD PTR 36[rdi], -2
	lea	r8d, 4[rax]
	sal	edx, 8
	mov	DWORD PTR 20[rdi], 0
	sal	r8d, 8
	call	InitPipeSequence
	mov	ecx, 321
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rsi]
	movzx	r8d, WORD PTR 28[rbx]
	lea	rcx, Task_Active[rip]
	mov	QWORD PTR 40[rax], rcx
	movzx	ecx, WORD PTR 32[rbx]
	jmp	.L10
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_PipeInstrument_Entry
	.def	CreateEntity_PipeInstrument_Entry;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_PipeInstrument_Entry
CreateEntity_PipeInstrument_Entry:
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
	lea	rax, TaskDestructor_PipeHorn[rip]
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
	.align 16
sExitSounds:
	.word	322
	.word	323
	.word	322
	.word	323
	.word	322
	.word	322
	.word	323
	.word	322
	.word	323
	.word	0
	.align 16
sExitRotations:
	.word	192
	.word	192
	.word	192
	.word	192
	.word	224
	.word	192
	.word	192
	.word	192
	.word	192
	.word	-16192
	.word	-16192
	.word	-16160
	.word	-16192
	.word	192
	.align 32
sExitSpeeds:
	.word	0
	.word	-2304
	.word	0
	.word	-3072
	.word	0
	.word	-2304
	.word	0
	.word	-3072
	.word	2304
	.word	-2304
	.word	0
	.word	-2304
	.word	0
	.word	-3072
	.word	0
	.word	-2304
	.word	0
	.word	-3072
	.globl	gPipeHornPipeSequence2
	.align 32
gPipeHornPipeSequence2:
	.word	0
	.word	34
	.word	2048
	.word	0
	.word	0
	.word	170
	.word	24576
	.word	0
	.word	0
	.word	256
	.word	16384
	.word	0
	.word	2
	.word	320
	.long	5120
	.word	0
	.word	292
	.word	0
	.word	14336
	.word	4
	.word	320
	.long	5120
	.word	1
	.word	320
	.long	5120
	.word	0
	.word	170
	.word	0
	.word	-24576
	.word	0
	.word	170
	.word	0
	.word	-24576
	.word	0
	.word	170
	.word	0
	.word	-24576
	.word	0
	.word	227
	.word	0
	.word	-18432
	.word	-1
	.word	-1
	.long	-1
	.globl	gUnknown_080DFDD8
	.align 32
gUnknown_080DFDD8:
	.word	0
	.word	34
	.word	2048
	.word	0
	.word	0
	.word	170
	.word	24576
	.word	0
	.word	0
	.word	256
	.word	16384
	.word	0
	.word	2
	.word	320
	.long	5120
	.word	0
	.word	292
	.word	0
	.word	14336
	.word	4
	.word	320
	.long	5120
	.word	1
	.word	320
	.long	5120
	.word	0
	.word	170
	.word	0
	.word	-24576
	.word	0
	.word	170
	.word	0
	.word	-24576
	.word	0
	.word	227
	.word	0
	.word	-18432
	.word	-1
	.word	-1
	.long	-1
	.globl	gPipeHornPipSequence1
	.align 32
gPipeHornPipSequence1:
	.word	0
	.word	34
	.word	2048
	.word	0
	.word	0
	.word	204
	.word	20480
	.word	0
	.word	2
	.word	320
	.long	5120
	.word	0
	.word	256
	.word	0
	.word	16384
	.word	4
	.word	320
	.long	5120
	.word	0
	.word	157
	.word	20480
	.word	-18944
	.word	0
	.word	157
	.word	20480
	.word	-18944
	.word	-1
	.word	-1
	.long	-1
	.globl	gUnknown_080DFD40
	.align 32
gUnknown_080DFD40:
	.word	0
	.word	34
	.word	2048
	.word	0
	.word	0
	.word	204
	.word	20480
	.word	0
	.word	2
	.word	320
	.long	5120
	.word	0
	.word	256
	.word	0
	.word	16384
	.word	4
	.word	320
	.long	5120
	.word	1
	.word	320
	.long	5120
	.word	0
	.word	170
	.word	0
	.word	-24576
	.word	0
	.word	170
	.word	0
	.word	-24576
	.word	0
	.word	170
	.word	0
	.word	-24576
	.word	0
	.word	409
	.word	0
	.word	-10240
	.word	-1
	.word	-1
	.long	-1
	.globl	gPipeHornPipeSequence0
	.align 32
gPipeHornPipeSequence0:
	.word	0
	.word	34
	.word	2048
	.word	0
	.word	0
	.word	204
	.word	20480
	.word	0
	.word	2
	.word	320
	.long	5120
	.word	0
	.word	256
	.word	0
	.word	16384
	.word	4
	.word	320
	.long	5120
	.word	1
	.word	320
	.long	5120
	.word	0
	.word	170
	.word	0
	.word	-24576
	.word	0
	.word	170
	.word	0
	.word	-24576
	.word	0
	.word	512
	.word	0
	.word	-8192
	.word	-1
	.word	-1
	.long	-1
	.ident	"GCC: (GNU) 13-win32"
	.def	IncrementPipeSequence;	.scl	2;	.type	32;	.endef
	.def	Player_ClearMovestate_IsInScriptedSequence;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr.gUnknown_08C8793C, "dr"
	.globl	.refptr.gUnknown_08C8793C
	.linkonce	discard
.refptr.gUnknown_08C8793C:
	.quad	gUnknown_08C8793C
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
