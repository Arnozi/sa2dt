	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	TaskDestructor_SpotLightMain
	.def	TaskDestructor_SpotLightMain;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_SpotLightMain
TaskDestructor_SpotLightMain:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	xor	edx, edx
	xor	ecx, ecx
	pxor	xmm0, xmm0
	and	WORD PTR [rax], -24833
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	mov	WORD PTR [rax], dx
	mov	WORD PTR 4[rax], cx
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	movups	XMMWORD PTR [rax], xmm0
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	and	DWORD PTR [rax], -5
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_SpotLightMain
	.def	Task_SpotLightMain;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_SpotLightMain
Task_SpotLightMain:
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
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	mov	r8, QWORD PTR [rsi]
	movzx	eax, WORD PTR [rax]
	mov	rbx, QWORD PTR 24[r8]
	test	ah, 1
	jne	.L3
	mov	r10, QWORD PTR .refptr.gDispCnt[rip]
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	r9, QWORD PTR [rbx]
	movzx	ecx, WORD PTR [r10]
	mov	edx, DWORD PTR [rax]
	mov	r11, QWORD PTR 24[r9]
	mov	eax, ecx
	and	ax, 256
	test	dl, 7
	jne	.L6
	movzx	edi, BYTE PTR 11[r11]
	test	dil, dil
	je	.L7
	test	ax, ax
	je	.L8
	cmp	dil, 31
	ja	.L9
	add	edi, 1
	mov	BYTE PTR 11[r11], dil
.L9:
	mov	rax, QWORD PTR 8[rbx]
	mov	r11, QWORD PTR 24[rax]
	movzx	eax, BYTE PTR 11[r11]
	cmp	al, 15
	jbe	.L21
	.p2align 4,,10
	.p2align 3
.L11:
	mov	r11, QWORD PTR .refptr.gSineTable[rip]
	and	edx, 511
	mov	eax, DWORD PTR 20[rbx]
	or	ch, 96
	mov	WORD PTR [r10], cx
	mov	ecx, 16193
	movzx	edx, WORD PTR [r11+rdx*2]
	sub	eax, 512
	sar	dx, 6
	movsx	edx, dx
	sub	eax, edx
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	DWORD PTR 20[rbx], eax
	movzx	eax, ah
	mov	WORD PTR [rdx], ax
	movzx	eax, WORD PTR 2[rdx]
	sub	eax, 1
	and	ax, 255
	mov	WORD PTR 2[rdx], ax
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	rdx, QWORD PTR .LC0[rip]
	mov	QWORD PTR 16[rax], rdx
	movzx	eax, WORD PTR 16[rbx]
	mov	edx, 1536
	sub	eax, 64
	cmp	ax, dx
	cmovl	eax, edx
	mov	rdx, QWORD PTR .refptr.gBldRegs[rip]
	mov	WORD PTR 16[rbx], ax
	sar	ax, 8
	mov	WORD PTR 4[rdx], ax
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	WORD PTR [rdx], cx
	test	DWORD PTR 36[rax], 134217856
	je	.L12
	lea	rax, Task_800A8E0[rip]
	mov	QWORD PTR 40[r8], rax
.L3:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	test	ax, ax
	jne	.L11
	cmp	BYTE PTR 11[r11], 0
	je	.L14
	.p2align 4,,10
	.p2align 3
.L8:
	or	ch, 1
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L12:
	mov	rax, QWORD PTR .refptr.gDestroySpotlights[rip]
	cmp	BYTE PTR [rax], 0
	je	.L3
	mov	rcx, r9
	call	TaskDestroy
	mov	rcx, QWORD PTR 8[rbx]
	call	TaskDestroy
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L7:
	test	ax, ax
	jne	.L11
.L14:
	mov	BYTE PTR 11[r11], 4
	mov	rax, QWORD PTR 8[rbx]
	mov	rax, QWORD PTR 24[rax]
	mov	BYTE PTR 11[rax], 4
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L21:
	add	eax, 1
	mov	BYTE PTR 11[r11], al
	jmp	.L11
	.seh_endproc
	.p2align 4
	.globl	Task_800A8E0
	.def	Task_800A8E0;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_800A8E0
Task_800A8E0:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	edx, DWORD PTR [rax]
	mov	r8, QWORD PTR [rbx]
	mov	ecx, edx
	and	ecx, 1
	jne	.L30
	mov	r10, QWORD PTR 24[r8]
	mov	r9, QWORD PTR 8[rbx]
	movzx	eax, BYTE PTR 11[r10]
	mov	r9, QWORD PTR 24[r9]
	test	al, al
	je	.L25
	sub	eax, 2
	xor	ecx, ecx
	mov	BYTE PTR 11[r10], al
	cmp	al, 4
	setbe	cl
.L25:
	movzx	eax, BYTE PTR 11[r9]
	test	al, al
	jne	.L31
.L23:
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	and	edx, 511
	mov	eax, DWORD PTR 20[rbx]
	movzx	edx, WORD PTR [r9+rdx*2]
	sub	eax, 512
	sar	dx, 6
	movsx	edx, dx
	sub	eax, edx
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	DWORD PTR 20[rbx], eax
	movzx	eax, ah
	mov	WORD PTR [rdx], ax
	movzx	eax, WORD PTR 2[rdx]
	sub	eax, 1
	and	ax, 255
	mov	WORD PTR 2[rdx], ax
	test	ecx, ecx
	jne	.L32
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L30:
	xor	ecx, ecx
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L31:
	sub	eax, 1
	cmp	al, 2
	mov	BYTE PTR 11[r9], al
	mov	eax, 1
	cmovbe	ecx, eax
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L32:
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	rcx, r8
	and	WORD PTR [rax], -257
	call	TaskDestroy
	mov	rcx, QWORD PTR 8[rbx]
	call	TaskDestroy
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.globl	CreateSpotLightBeams
	.def	CreateSpotLightBeams;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateSpotLightBeams
CreateSpotLightBeams:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	lea	rax, TaskDestructor_SpotLightMain[rip]
	xor	r9d, r9d
	mov	edx, 24
	mov	r8d, 8192
	lea	rcx, Task_SpotLightMain[rip]
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	rbx, QWORD PTR 24[rax]
	mov	eax, 1536
	mov	WORD PTR 16[rbx], ax
	mov	DWORD PTR 20[rbx], 0
	call	CreateSpotlightBeamTask
	movabs	rdx, 16892896651247616
	mov	QWORD PTR [rbx], rax
	mov	rax, QWORD PTR 24[rax]
	mov	QWORD PTR [rax], rdx
	mov	DWORD PTR 8[rax], 131272
	call	CreateSpotlightBeamTask
	movabs	rdx, 56298293878063104
	mov	QWORD PTR 8[rbx], rax
	mov	rax, QWORD PTR 24[rax]
	mov	QWORD PTR [rax], rdx
	mov	DWORD PTR 8[rax], 196848
	mov	eax, 1
	add	rsp, 48
	pop	rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	16191
	.long	30
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	CreateSpotlightBeamTask;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gDestroySpotlights, "dr"
	.globl	.refptr.gDestroySpotlights
	.linkonce	discard
.refptr.gDestroySpotlights:
	.quad	gDestroySpotlights
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gBgScrollRegs, "dr"
	.globl	.refptr.gBgScrollRegs
	.linkonce	discard
.refptr.gBgScrollRegs:
	.quad	gBgScrollRegs
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
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
	.section	.rdata$.refptr.gWinRegs, "dr"
	.globl	.refptr.gWinRegs
	.linkonce	discard
.refptr.gWinRegs:
	.quad	gWinRegs
	.section	.rdata$.refptr.gBldRegs, "dr"
	.globl	.refptr.gBldRegs
	.linkonce	discard
.refptr.gBldRegs:
	.quad	gBldRegs
	.section	.rdata$.refptr.gDispCnt, "dr"
	.globl	.refptr.gDispCnt
	.linkonce	discard
.refptr.gDispCnt:
	.quad	gDispCnt
