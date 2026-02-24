	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_PaletteLoader_Checkpoint;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_PaletteLoader_Checkpoint
TaskDestructor_PaletteLoader_Checkpoint:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	lea	rdx, sAnimIdsCheckpoint[rip]
	movzx	eax, BYTE PTR [rax]
	sar	al, 2
	movzx	eax, al
	movzx	edx, WORD PTR [rdx+rax*4]
	mov	rax, QWORD PTR .refptr.gAnimations[rip]
	mov	rax, QWORD PTR [rax+rdx*8]
	mov	rax, QWORD PTR [rax]
	cmp	DWORD PTR [rax], -2
	je	.L4
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	mov	rcx, QWORD PTR .refptr.gRefSpriteTables[rip]
	mov	edx, DWORD PTR 8[rax]
	mov	eax, DWORD PTR 4[rax]
	mov	rcx, QWORD PTR [rcx]
	movzx	r9d, dl
	shr	edx, 16
	sal	eax, 4
	shr	r9
	mov	rcx, QWORD PTR 24[rcx]
	or	r9d, -2080374784
	lea	rax, [rcx+rax*2]
	mov	rcx, QWORD PTR .refptr.gBgPalette[rip]
	lea	r8, [rcx+rdx*2]
	mov	rdx, rax
	mov	ecx, 3
	call	DmaSet
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 1
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.def	Task_CheckpointMain_Used;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_CheckpointMain_Used
Task_CheckpointMain_Used:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rbx]
	mov	rcx, QWORD PTR 24[rax]
	mov	r8, QWORD PTR [rcx]
	movzx	edx, WORD PTR 10[rcx]
	movzx	r10d, BYTE PTR 12[rcx]
	movzx	eax, BYTE PTR 1[r8]
	sal	edx, 5
	mov	r9d, r10d
	add	edx, eax
	movzx	eax, WORD PTR 8[rcx]
	sal	edx, 3
	sal	eax, 5
	add	eax, r10d
	mov	r10, QWORD PTR .refptr.gCamera[rip]
	sal	eax, 3
	sub	ax, WORD PTR [r10]
	sub	dx, WORD PTR 4[r10]
	mov	WORD PTR 54[rcx], ax
	sub	ax, -128
	cmp	ax, 682
	mov	WORD PTR 56[rcx], dx
	seta	al
	cmp	dx, -128
	setl	r10b
	or	al, r10b
	jne	.L8
	cmp	dx, 368
	jle	.L5
.L8:
	mov	BYTE PTR [r8], r9b
	mov	rcx, QWORD PTR 80[rcx]
	call	TaskDestroy
	mov	rcx, QWORD PTR [rbx]
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L5:
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	Task_Interactable_Toggle_Checkpoint;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Interactable_Toggle_Checkpoint
Task_Interactable_Toggle_Checkpoint:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r11, QWORD PTR .refptr.gCamera[rip]
	mov	r8, QWORD PTR [rax]
	mov	esi, DWORD PTR 4[r11]
	mov	rdx, QWORD PTR 24[r8]
	movzx	eax, WORD PTR 8[rdx]
	movzx	ecx, BYTE PTR 12[rdx]
	mov	r9, QWORD PTR [rdx]
	movzx	edx, WORD PTR 10[rdx]
	sal	eax, 5
	mov	r10d, ecx
	add	eax, ecx
	mov	ecx, 128
	movzx	ebx, BYTE PTR 1[r9]
	mov	edi, ecx
	sub	di, WORD PTR [r11]
	sal	eax, 3
	mov	r11d, edi
	add	r11d, eax
	cmp	r11w, 682
	ja	.L10
	sal	edx, 5
	sub	ecx, esi
	add	edx, ebx
	lea	edx, [rcx+rdx*8]
	cmp	dx, 496
	jbe	.L11
.L10:
	mov	BYTE PTR [r9], r10b
.L15:
	mov	rcx, r8
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L11:
	mov	rcx, QWORD PTR .refptr.gBossIndex[rip]
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	movzx	r9d, BYTE PTR [rcx]
	test	DWORD PTR 36[rdx], 4194432
	jne	.L12
	mov	r10d, DWORD PTR 12[rdx]
	sar	r10d, 8
	cmp	r10d, eax
	jl	.L12
	mov	r10, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	rax, QWORD PTR .refptr.gCheckpointPositions[rip]
	movsx	r10, BYTE PTR [r10]
	mov	r11d, DWORD PTR [rax+r10*8]
	mov	eax, DWORD PTR 4[rax+r10*8]
	mov	WORD PTR 126[rdx], ax
	mov	rax, QWORD PTR .refptr.gCheckpointTime[rip]
	mov	WORD PTR 124[rdx], r11w
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR 128[rdx], eax
	test	r9b, r9b
	jne	.L15
	mov	BYTE PTR [rcx], 1
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L12:
	test	r9b, r9b
	jne	.L15
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.def	TaskDestructor_Checkpoint;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_Checkpoint
TaskDestructor_Checkpoint:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	Task_CheckpointMain_Idle;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_CheckpointMain_Idle
Task_CheckpointMain_Idle:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	r11, QWORD PTR .refptr.gCamera[rip]
	mov	r10, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[r10]
	movzx	edx, WORD PTR 8[rbx]
	movzx	eax, BYTE PTR 12[rbx]
	mov	r8, QWORD PTR [rbx]
	sal	edx, 5
	mov	r9d, eax
	add	edx, eax
	movzx	eax, WORD PTR 10[rbx]
	movzx	ecx, BYTE PTR 1[r8]
	sal	edx, 3
	sal	eax, 5
	add	eax, ecx
	mov	ecx, edx
	sub	cx, WORD PTR [r11]
	mov	WORD PTR 54[rbx], cx
	sub	cx, -128
	sal	eax, 3
	sub	ax, WORD PTR 4[r11]
	cmp	cx, 682
	mov	WORD PTR 56[rbx], ax
	seta	cl
	cmp	ax, -128
	setl	r11b
	or	cl, r11b
	jne	.L22
	cmp	ax, 368
	jle	.L18
.L22:
	mov	BYTE PTR [r8], r9b
	mov	rcx, QWORD PTR 80[rbx]
	call	TaskDestroy
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L18:
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	test	DWORD PTR 36[rax], 4194432
	jne	.L20
	mov	ecx, DWORD PTR 12[rax]
	sar	ecx, 8
	cmp	ecx, edx
	jl	.L20
	mov	rcx, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	rdx, QWORD PTR .refptr.gCheckpointPositions[rip]
	movsx	rcx, BYTE PTR [rcx]
	mov	r8d, DWORD PTR [rdx+rcx*8]
	mov	edx, DWORD PTR 4[rdx+rcx*8]
	mov	WORD PTR 126[rax], dx
	mov	rdx, QWORD PTR .refptr.gCheckpointTime[rip]
	mov	WORD PTR 124[rax], r8w
	mov	edx, DWORD PTR [rdx]
	mov	DWORD PTR 128[rax], edx
	mov	rax, QWORD PTR .refptr.gBossIndex[rip]
	cmp	BYTE PTR [rax], 0
	jne	.L21
	mov	BYTE PTR [rax], 1
.L21:
	mov	eax, 531
	mov	edx, -255
	mov	ecx, 152
	mov	WORD PTR 34[rbx], ax
	lea	rax, Task_StageCheckpointMain_Activated[rip]
	mov	WORD PTR 64[rbx], dx
	mov	QWORD PTR 40[r10], rax
	call	m4aSongNumStart
.L20:
	add	rbx, 16
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.def	Task_StageCheckpointMain_Activated;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_StageCheckpointMain_Activated
Task_StageCheckpointMain_Activated:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rbx]
	mov	rcx, QWORD PTR 24[rax]
	mov	r8, QWORD PTR [rcx]
	movzx	edx, WORD PTR 10[rcx]
	movzx	r10d, BYTE PTR 12[rcx]
	movzx	eax, BYTE PTR 1[r8]
	sal	edx, 5
	mov	r9d, r10d
	add	edx, eax
	movzx	eax, WORD PTR 8[rcx]
	sal	edx, 3
	sal	eax, 5
	add	eax, r10d
	mov	r10, QWORD PTR .refptr.gCamera[rip]
	sal	eax, 3
	sub	ax, WORD PTR [r10]
	sub	dx, WORD PTR 4[r10]
	mov	WORD PTR 54[rcx], ax
	sub	ax, -128
	cmp	ax, 682
	mov	WORD PTR 56[rcx], dx
	seta	al
	cmp	dx, -128
	setl	r10b
	or	al, r10b
	jne	.L27
	cmp	dx, 368
	jle	.L24
.L27:
	mov	BYTE PTR [r8], r9b
	mov	rcx, QWORD PTR 80[rcx]
	call	TaskDestroy
	mov	rcx, QWORD PTR [rbx]
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L24:
	lea	rsi, 16[rcx]
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	test	eax, eax
	jne	.L26
	mov	rax, QWORD PTR [rbx]
	lea	rbx, Task_CheckpointMain_Used[rip]
	mov	QWORD PTR 40[rax], rbx
.L26:
	mov	rcx, rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Checkpoint
	.def	CreateEntity_Checkpoint;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Checkpoint
CreateEntity_Checkpoint:
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
	mov	rax, QWORD PTR .refptr.gBossIndex[rip]
	cmp	BYTE PTR [rax], 0
	lea	rax, TaskDestructor_Checkpoint[rip]
	mov	esi, edx
	mov	edi, r8d
	mov	r12d, r9d
	mov	QWORD PTR 32[rsp], rax
	mov	rbp, rcx
	mov	r9d, 0
	mov	r8d, 8208
	mov	edx, 88
	jne	.L29
	lea	rcx, Task_CheckpointMain_Idle[rip]
	call	TaskCreate
.L30:
	mov	rbx, QWORD PTR 24[rax]
	mov	ecx, r12d
	mov	WORD PTR 8[rbx], si
	movzx	esi, si
	mov	WORD PTR 10[rbx], di
	sal	esi, 5
	movzx	edi, di
	mov	QWORD PTR [rbx], rbp
	movzx	eax, BYTE PTR 0[rbp]
	sal	edi, 5
	add	esi, eax
	movzx	edx, al
	mov	dh, cl
	sal	esi, 3
	mov	ecx, 4
	mov	WORD PTR 12[rbx], dx
	mov	WORD PTR 54[rbx], si
	movzx	eax, BYTE PTR 1[rbp]
	add	eax, edi
	sal	eax, 3
	mov	WORD PTR 56[rbx], ax
	mov	BYTE PTR 0[rbp], -2
	call	VramMalloc
	mov	edx, -256
	mov	DWORD PTR 32[rbx], 34799616
	lea	r9, TaskDestructor_PaletteLoader_Checkpoint[rip]
	mov	QWORD PTR 24[rbx], rax
	xor	eax, eax
	mov	WORD PTR 52[rbx], ax
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	WORD PTR 64[rbx], dx
	lea	rdx, sAnimIdsCheckpoint[rip]
	movzx	eax, BYTE PTR [rax]
	mov	DWORD PTR 58[rbx], 1152
	mov	BYTE PTR 66[rbx], 16
	sar	al, 2
	mov	BYTE PTR 69[rbx], 0
	movzx	eax, al
	mov	DWORD PTR 72[rbx], -1
	movzx	ecx, WORD PTR [rdx+rax*4]
	mov	DWORD PTR 48[rbx], 8192
	movzx	r8d, BYTE PTR 2[rdx+rax*4]
	mov	edx, ecx
	mov	ecx, 8192
	call	CreatePaletteLoaderTask
	mov	QWORD PTR 80[rbx], rax
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L29:
	lea	rcx, Task_CheckpointMain_Used[rip]
	call	TaskCreate
	jmp	.L30
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Toggle_Checkpoint
	.def	CreateEntity_Toggle_Checkpoint;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Toggle_Checkpoint
CreateEntity_Toggle_Checkpoint:
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
	mov	rax, QWORD PTR .refptr.gBossIndex[rip]
	cmp	BYTE PTR [rax], 0
	mov	rbx, rcx
	mov	ebp, edx
	mov	edi, r8d
	mov	esi, r9d
	je	.L33
	mov	BYTE PTR [rbx], -2
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L33:
	xor	r9d, r9d
	mov	r8d, 8208
	mov	QWORD PTR 32[rsp], 0
	mov	edx, 80
	lea	rcx, Task_Interactable_Toggle_Checkpoint[rip]
	call	TaskCreate
	mov	ecx, esi
	mov	rax, QWORD PTR 24[rax]
	mov	WORD PTR 8[rax], bp
	mov	WORD PTR 10[rax], di
	mov	QWORD PTR [rax], rbx
	movzx	edx, BYTE PTR [rbx]
	mov	dh, cl
	mov	WORD PTR 12[rax], dx
	mov	BYTE PTR [rbx], -2
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 32
sAnimIdsCheckpoint:
	.word	898
	.word	0
	.word	899
	.word	0
	.word	903
	.word	0
	.word	902
	.word	0
	.word	904
	.word	0
	.word	947
	.word	0
	.word	905
	.word	0
	.word	899
	.word	0
	.ident	"GCC: (GNU) 13-win32"
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	CreatePaletteLoaderTask;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gCheckpointTime, "dr"
	.globl	.refptr.gCheckpointTime
	.linkonce	discard
.refptr.gCheckpointTime:
	.quad	gCheckpointTime
	.section	.rdata$.refptr.gCheckpointPositions, "dr"
	.globl	.refptr.gCheckpointPositions
	.linkonce	discard
.refptr.gCheckpointPositions:
	.quad	gCheckpointPositions
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gBossIndex, "dr"
	.globl	.refptr.gBossIndex
	.linkonce	discard
.refptr.gBossIndex:
	.quad	gBossIndex
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
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
	.section	.rdata$.refptr.gRefSpriteTables, "dr"
	.globl	.refptr.gRefSpriteTables
	.linkonce	discard
.refptr.gRefSpriteTables:
	.quad	gRefSpriteTables
	.section	.rdata$.refptr.gBgPalette, "dr"
	.globl	.refptr.gBgPalette
	.linkonce	discard
.refptr.gBgPalette:
	.quad	gBgPalette
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.gAnimations, "dr"
	.globl	.refptr.gAnimations
	.linkonce	discard
.refptr.gAnimations:
	.quad	gAnimations
