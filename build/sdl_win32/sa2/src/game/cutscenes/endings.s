	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	sub_808E9F8
	.def	sub_808E9F8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808E9F8
sub_808E9F8:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_808E9AC
	.def	sub_808E9AC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808E9AC
sub_808E9AC:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rbx]
	mov	rdx, QWORD PTR 24[rax]
	movzx	eax, WORD PTR 110[rdx]
	test	ax, ax
	je	.L4
	sub	eax, 1
	mov	WORD PTR 110[rdx], ax
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	cmp	BYTE PTR [rax], 30
	je	.L9
	call	CreateFinalEndingFallCutScene
	mov	rcx, QWORD PTR [rbx]
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L9:
	call	CreateExtraEndingFallCutScene
	mov	rcx, QWORD PTR [rbx]
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.globl	StartEndingCutscenes
	.def	StartEndingCutscenes;	.scl	2;	.type	32;	.endef
	.seh_proc	StartEndingCutscenes
StartEndingCutscenes:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	lea	rax, sub_808E9F8[rip]
	xor	r9d, r9d
	mov	edx, 116
	mov	r8d, 12544
	lea	rcx, sub_808E9AC[rip]
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	rax, QWORD PTR 24[rax]
	mov	DWORD PTR 108[rax], 11796480
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_808E8F8
	.def	sub_808E8F8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808E8F8
sub_808E8F8:
	.seh_endprologue
	mov	r9, rcx
	mov	eax, edx
	cmp	WORD PTR [rcx], dx
	je	.L14
	mov	WORD PTR [r9], dx
	ret
	.p2align 4,,10
	.p2align 3
.L14:
	mov	rcx, QWORD PTR .refptr.gPseudoRandom[rip]
	movzx	r8d, r8b
	imul	edx, DWORD PTR [rcx], 1663525
	add	edx, 1013904223
	mov	DWORD PTR [rcx], edx
	movzx	r10d, dx
	shr	dx, 8
	je	.L13
	mov	ecx, 16
	sub	ecx, r8d
	sar	r10d, cl
	lea	edx, [rax+r10]
	mov	WORD PTR [r9], dx
	ret
	.p2align 4,,10
	.p2align 3
.L13:
	mov	ecx, 8
	mov	edx, eax
	sub	ecx, r8d
	sar	r10d, cl
	sub	edx, r10d
	mov	WORD PTR [r9], dx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_808E95C
	.def	sub_808E95C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808E95C
sub_808E95C:
	.seh_endprologue
	mov	rax, rcx
	cmp	DWORD PTR [rcx], edx
	je	.L18
	mov	DWORD PTR [rax], edx
	ret
	.p2align 4,,10
	.p2align 3
.L18:
	mov	rcx, QWORD PTR .refptr.gPseudoRandom[rip]
	imul	edx, DWORD PTR [rcx], 1663525
	add	edx, 1013904223
	mov	DWORD PTR [rcx], edx
	movzx	r9d, dx
	shr	dx, 8
	je	.L17
	mov	ecx, 8
	mov	edx, DWORD PTR [rax]
	sub	ecx, r8d
	sar	r9d, cl
	add	edx, r9d
	mov	DWORD PTR [rax], edx
	ret
	.p2align 4,,10
	.p2align 3
.L17:
	mov	edx, DWORD PTR [rax]
	sub	edx, r9d
	mov	DWORD PTR [rax], edx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_808E9FC
	.def	sub_808E9FC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808E9FC
sub_808E9FC:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	r8, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	mov	rcx, QWORD PTR 24[rdx]
	movsx	rax, BYTE PTR [rax]
	cmp	BYTE PTR 7[r8+rax], 29
	seta	al
	add	eax, 1
	mov	BYTE PTR 109[rcx], al
	lea	rax, sub_808E9AC[rip]
	mov	QWORD PTR 40[rdx], rax
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	CreateFinalEndingFallCutScene;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	CreateExtraEndingFallCutScene;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gSelectedCharacter, "dr"
	.globl	.refptr.gSelectedCharacter
	.linkonce	discard
.refptr.gSelectedCharacter:
	.quad	gSelectedCharacter
	.section	.rdata$.refptr.gLoadedSaveGame, "dr"
	.globl	.refptr.gLoadedSaveGame
	.linkonce	discard
.refptr.gLoadedSaveGame:
	.quad	gLoadedSaveGame
	.section	.rdata$.refptr.gPseudoRandom, "dr"
	.globl	.refptr.gPseudoRandom
	.linkonce	discard
.refptr.gPseudoRandom:
	.quad	gPseudoRandom
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
