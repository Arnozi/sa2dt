	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_ScreenShake;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_ScreenShake
TaskDestructor_ScreenShake:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	eax, DWORD PTR 16[rax]
	test	al, 64
	je	.L2
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	xor	ecx, ecx
	mov	WORD PTR 104[rdx], cx
.L2:
	test	al, -128
	je	.L1
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	xor	edx, edx
	mov	WORD PTR 106[rax], dx
.L1:
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_ScreenShake
	.def	Task_ScreenShake;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_ScreenShake
Task_ScreenShake:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[rax]
	mov	r9d, DWORD PTR 12[rdx]
	test	r9d, r9d
	je	.L12
	mov	ecx, DWORD PTR [rdx]
	test	ecx, ecx
	jle	.L12
	mov	r10d, DWORD PTR 16[rdx]
	mov	r8d, DWORD PTR 20[rdx]
	test	r10b, 16
	jne	.L39
	mov	r11, QWORD PTR .refptr.gSineTable[rip]
	movsx	rax, r8d
	movzx	eax, WORD PTR [r11+rax*2]
	sar	ax, 6
	cwde
.L15:
	imul	eax, ecx
	mov	r11d, r10d
	and	r11d, 3
	sar	eax, 16
	cmp	r11d, 1
	je	.L16
	mov	ebx, eax
	neg	ebx
	cmovns	ebx, eax
	cmp	r11d, 2
	cmove	eax, ebx
.L18:
	test	r10b, 32
	je	.L19
	mov	r11, QWORD PTR .refptr.gStageTime[rip]
	test	BYTE PTR [r11], 1
	jne	.L20
.L19:
	test	r10b, 64
	je	.L21
	mov	r11, QWORD PTR .refptr.gCamera[rip]
	mov	WORD PTR 104[r11], ax
.L21:
	and	r10d, 128
	je	.L20
	mov	r10, QWORD PTR .refptr.gCamera[rip]
	mov	WORD PTR 106[r10], ax
.L20:
	test	r9d, r9d
	jle	.L23
	sub	r9d, 1
	mov	DWORD PTR 12[rdx], r9d
.L23:
	add	r8d, DWORD PTR 8[rdx]
	sub	ecx, DWORD PTR 4[rdx]
	and	r8d, 1023
	mov	DWORD PTR [rdx], ecx
	mov	DWORD PTR 20[rdx], r8d
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L39:
	mov	r11, QWORD PTR .refptr.gPseudoRandom[rip]
	imul	eax, DWORD PTR [r11], 1663525
	add	eax, 1013904223
	mov	DWORD PTR [r11], eax
	sal	eax, 15
	shr	eax, 23
	sub	eax, 255
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L12:
	mov	rcx, rax
	pop	rbx
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L16:
	mov	r11d, eax
	neg	r11d
	cmovns	eax, r11d
	jmp	.L18
	.seh_endproc
	.p2align 4
	.globl	CreateScreenShake
	.def	CreateScreenShake;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateScreenShake
CreateScreenShake:
	sub	rsp, 120
	.seh_stackalloc	120
	movups	XMMWORD PTR 48[rsp], xmm6
	.seh_savexmm	xmm6, 48
	movups	XMMWORD PTR 64[rsp], xmm7
	.seh_savexmm	xmm7, 64
	movups	XMMWORD PTR 80[rsp], xmm8
	.seh_savexmm	xmm8, 80
	movups	XMMWORD PTR 96[rsp], xmm9
	.seh_savexmm	xmm9, 96
	.seh_endprologue
	lea	rax, TaskDestructor_ScreenShake[rip]
	mov	QWORD PTR 32[rsp], rax
	movd	xmm6, ecx
	movd	xmm8, edx
	movd	xmm9, r9d
	movd	xmm7, r8d
	xor	r9d, r9d
	mov	r8d, 3839
	mov	edx, 24
	lea	rcx, Task_ScreenShake[rip]
	punpckldq	xmm7, xmm9
	call	TaskCreate
	movdqu	xmm0, xmm6
	mov	edx, DWORD PTR 160[rsp]
	mov	rcx, QWORD PTR 24[rax]
	punpckldq	xmm0, xmm8
	punpcklqdq	xmm0, xmm7
	mov	DWORD PTR 20[rcx], 0
	mov	DWORD PTR 16[rcx], edx
	movups	XMMWORD PTR [rcx], xmm0
	movups	xmm6, XMMWORD PTR 48[rsp]
	movups	xmm7, XMMWORD PTR 64[rsp]
	movups	xmm8, XMMWORD PTR 80[rsp]
	movups	xmm9, XMMWORD PTR 96[rsp]
	add	rsp, 120
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
	.section	.rdata$.refptr.gPseudoRandom, "dr"
	.globl	.refptr.gPseudoRandom
	.linkonce	discard
.refptr.gPseudoRandom:
	.quad	gPseudoRandom
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
