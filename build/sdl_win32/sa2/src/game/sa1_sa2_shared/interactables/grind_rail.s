	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	Task_GrindRail;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_GrindRail
Task_GrindRail:
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
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	mov	edx, DWORD PTR 16[r9]
	movzx	r10d, WORD PTR [rax]
	movsx	eax, BYTE PTR 27[r9]
	mov	r12d, DWORD PTR 36[r9]
	sar	edx, 8
	mov	ecx, edx
	add	edx, eax
	sub	ecx, eax
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	and	r10w, 128
	cmovne	edx, ecx
	mov	rbx, QWORD PTR [rax]
	mov	r8, QWORD PTR 24[rbx]
	movzx	eax, WORD PTR 8[r8]
	movzx	ecx, BYTE PTR 12[r8]
	mov	r11, QWORD PTR [r8]
	sal	eax, 5
	mov	esi, ecx
	add	eax, ecx
	movzx	ecx, WORD PTR 10[r8]
	movzx	edi, BYTE PTR 1[r11]
	sal	eax, 3
	sal	ecx, 5
	add	ecx, edi
	sal	ecx, 3
	test	r12b, -128
	jne	.L4
	movsx	r13d, BYTE PTR 3[r11]
	movsx	edi, ax
	movzx	ebp, BYTE PTR 13[r8]
	lea	r14d, [rdi+r13*8]
	mov	edi, DWORD PTR 12[r9]
	sar	edi, 8
	cmp	r14d, edi
	jle	.L35
.L5:
	and	ebp, 127
	mov	BYTE PTR 13[r8], bpl
.L4:
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	mov	edx, 128
	mov	edi, edx
	sub	di, WORD PTR [r8]
	mov	r9d, DWORD PTR 4[r8]
	mov	r8d, edi
	add	eax, r8d
	cmp	ax, 682
	ja	.L16
	sub	edx, r9d
	add	edx, ecx
	cmp	dx, 496
	jbe	.L1
.L16:
	mov	rcx, rbx
	mov	BYTE PTR [r11], sil
	add	rsp, 24
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L1:
	add	rsp, 24
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
.L35:
	movzx	r13d, BYTE PTR 5[r11]
	lea	r15d, [r14+r13*8]
	mov	DWORD PTR 8[rsp], r15d
	cmp	edi, r15d
	jg	.L5
	movsx	r14d, cx
	mov	r15d, r14d
	movsx	r14d, BYTE PTR 4[r11]
	mov	DWORD PTR 12[rsp], r15d
	lea	r14d, [r15+r14*8]
	cmp	r14d, edx
	jg	.L5
	movzx	r15d, BYTE PTR 6[r11]
	lea	r14d, [r14+r15*8]
	cmp	r14d, edx
	jl	.L5
	test	r10w, r10w
	je	.L6
	cmp	DWORD PTR 12[rsp], edx
	jg	.L5
.L7:
	cmp	WORD PTR 22[r9], 0
	js	.L5
	test	bpl, bpl
	js	.L5
	mov	r10d, ebp
	sal	r13d, 2
	and	r10d, 1
	test	r12d, 16777216
	je	.L9
	and	r12d, 1
	test	r10b, r10b
	je	.L36
	test	r12d, r12d
	jne	.L5
	mov	edx, DWORD PTR 8[rsp]
	sub	edx, r13d
	cmp	edi, edx
	jg	.L13
.L33:
	mov	r10, QWORD PTR .refptr.gPlayerControls[rip]
	movzx	edx, WORD PTR 100[r9]
	and	dx, WORD PTR [r10]
	je	.L5
	test	bpl, 2
	je	.L5
	mov	edx, 13
.L14:
	mov	BYTE PTR 117[r9], dl
	or	BYTE PTR 13[r8], -128
	mov	r8, QWORD PTR 24[rbx]
	movzx	ebp, BYTE PTR 13[r8]
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L6:
	cmp	DWORD PTR 12[rsp], edx
	jl	.L5
	jmp	.L7
.L9:
	mov	edx, DWORD PTR 8[rsp]
	sub	edx, r13d
	test	r10b, r10b
	jne	.L15
	cmp	edi, edx
	jle	.L5
	mov	r10d, 11
	mov	WORD PTR 117[r9], r10w
	movzx	ebp, BYTE PTR 13[r8]
	jmp	.L5
.L36:
	test	r12d, r12d
	je	.L5
	mov	edx, DWORD PTR 8[rsp]
	sub	edx, r13d
	cmp	edi, edx
	jge	.L33
.L13:
	and	ebp, 2
	setne	dl
	add	edx, 12
	jmp	.L14
.L15:
	cmp	edi, edx
	jge	.L5
	mov	edx, 267
	mov	WORD PTR 117[r9], dx
	movzx	ebp, BYTE PTR 13[r8]
	jmp	.L5
	.seh_endproc
	.p2align 4
	.def	Task_GrindRail_Air;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_GrindRail_Air
Task_GrindRail_Air:
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
	mov	r9, QWORD PTR [rax]
	mov	rcx, QWORD PTR 24[r9]
	movzx	eax, WORD PTR 8[rcx]
	movzx	edx, BYTE PTR 12[rcx]
	mov	r8, QWORD PTR [rcx]
	sal	eax, 5
	mov	r10d, edx
	add	eax, edx
	movzx	edx, WORD PTR 10[rcx]
	movzx	r11d, BYTE PTR 1[r8]
	sal	eax, 3
	sal	edx, 5
	add	edx, r11d
	mov	r11, QWORD PTR .refptr.gPlayer[rip]
	sal	edx, 3
	mov	esi, DWORD PTR 36[r11]
	test	sil, -128
	jne	.L38
	movsx	edi, BYTE PTR 3[r8]
	movsx	ebx, ax
	lea	edi, [rbx+rdi*8]
	mov	ebx, DWORD PTR 12[r11]
	sar	ebx, 8
	cmp	edi, ebx
	jle	.L65
.L38:
	mov	r11, QWORD PTR .refptr.gCamera[rip]
	mov	ecx, 128
	mov	esi, ecx
	sub	si, WORD PTR [r11]
	mov	ebx, DWORD PTR 4[r11]
	mov	r11d, esi
	add	eax, r11d
	cmp	ax, 682
	ja	.L44
	sub	ecx, ebx
	add	ecx, edx
	cmp	cx, 496
	jbe	.L37
.L44:
	mov	rcx, r9
	mov	BYTE PTR [r8], r10b
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
.L37:
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
	.p2align 4,,10
	.p2align 3
.L65:
	movzx	ebp, BYTE PTR 5[r8]
	sal	ebp, 3
	lea	r12d, [rdi+rbp]
	cmp	ebx, r12d
	jg	.L38
	movsx	r13d, BYTE PTR 4[r8]
	movsx	r12d, dx
	lea	r13d, [r12+r13*8]
	mov	r12d, DWORD PTR 16[r11]
	sar	r12d, 8
	cmp	r13d, r12d
	jg	.L38
	movzx	r14d, BYTE PTR 6[r8]
	lea	r13d, 0[r13+r14*8]
	cmp	r12d, r13d
	jg	.L38
	test	esi, 16777216
	je	.L38
	movzx	r12d, BYTE PTR 13[rcx]
	and	esi, 1
	test	r12b, 1
	je	.L39
	test	esi, esi
	je	.L38
	sar	ebp
	lea	ecx, 0[rbp+rdi]
	cmp	ebx, ecx
	jge	.L64
.L40:
	and	r12d, 2
	jne	.L41
	mov	BYTE PTR 117[r11], 12
	jmp	.L38
.L39:
	test	esi, esi
	jne	.L38
	sar	ebp
	lea	ecx, 0[rbp+rdi]
	cmp	ebx, ecx
	jg	.L40
.L64:
	mov	rbx, QWORD PTR .refptr.gPlayerControls[rip]
	movzx	ecx, WORD PTR 100[r11]
	and	cx, WORD PTR [rbx]
	je	.L38
	and	r12d, 2
	je	.L38
.L41:
	mov	BYTE PTR 117[r11], 13
	jmp	.L38
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_GrindRail_StartAir
	.def	CreateEntity_GrindRail_StartAir;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_GrindRail_StartAir
CreateEntity_GrindRail_StartAir:
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
	mov	rbx, rcx
	mov	edi, edx
	mov	esi, r8d
	mov	edx, 16
	mov	r8d, 8208
	lea	rcx, Task_GrindRail[rip]
	call	TaskCreate
	mov	rax, QWORD PTR 24[rax]
	mov	BYTE PTR 13[rax], 2
	mov	WORD PTR 8[rax], di
	mov	WORD PTR 10[rax], si
	mov	QWORD PTR [rax], rbx
	movzx	edx, BYTE PTR [rbx]
	mov	BYTE PTR 12[rax], dl
	mov	BYTE PTR [rbx], -2
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_GrindRail_End_ForcedJump
	.def	CreateEntity_GrindRail_End_ForcedJump;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_GrindRail_End_ForcedJump
CreateEntity_GrindRail_End_ForcedJump:
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
	mov	rbx, rcx
	mov	edi, edx
	mov	esi, r8d
	mov	edx, 16
	mov	r8d, 8208
	lea	rcx, Task_GrindRail[rip]
	call	TaskCreate
	mov	rax, QWORD PTR 24[rax]
	mov	BYTE PTR 13[rax], 3
	mov	WORD PTR 8[rax], di
	mov	WORD PTR 10[rax], si
	mov	QWORD PTR [rax], rbx
	movzx	edx, BYTE PTR [rbx]
	mov	BYTE PTR 12[rax], dl
	mov	BYTE PTR [rbx], -2
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_GrindRail_Start
	.def	CreateEntity_GrindRail_Start;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_GrindRail_Start
CreateEntity_GrindRail_Start:
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
	mov	rbx, rcx
	mov	edi, edx
	mov	esi, r8d
	mov	edx, 16
	mov	r8d, 8208
	lea	rcx, Task_GrindRail[rip]
	call	TaskCreate
	mov	rax, QWORD PTR 24[rax]
	mov	BYTE PTR 13[rax], 0
	mov	WORD PTR 8[rax], di
	mov	WORD PTR 10[rax], si
	mov	QWORD PTR [rax], rbx
	movzx	edx, BYTE PTR [rbx]
	mov	BYTE PTR 12[rax], dl
	mov	BYTE PTR [rbx], -2
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_GrindRail_EndGround
	.def	CreateEntity_GrindRail_EndGround;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_GrindRail_EndGround
CreateEntity_GrindRail_EndGround:
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
	mov	rbx, rcx
	mov	edi, edx
	mov	esi, r8d
	mov	edx, 16
	mov	r8d, 8208
	lea	rcx, Task_GrindRail[rip]
	call	TaskCreate
	mov	rax, QWORD PTR 24[rax]
	mov	BYTE PTR 13[rax], 1
	mov	WORD PTR 8[rax], di
	mov	WORD PTR 10[rax], si
	mov	QWORD PTR [rax], rbx
	movzx	edx, BYTE PTR [rbx]
	mov	BYTE PTR 12[rax], dl
	mov	BYTE PTR [rbx], -2
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_GrindRail_EndAir
	.def	CreateEntity_GrindRail_EndAir;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_GrindRail_EndAir
CreateEntity_GrindRail_EndAir:
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
	mov	rbx, rcx
	mov	edi, edx
	mov	esi, r8d
	mov	edx, 16
	mov	r8d, 8208
	lea	rcx, Task_GrindRail_Air[rip]
	call	TaskCreate
	mov	rax, QWORD PTR 24[rax]
	mov	BYTE PTR 13[rax], 2
	mov	WORD PTR 8[rax], di
	mov	WORD PTR 10[rax], si
	mov	QWORD PTR [rax], rbx
	movzx	edx, BYTE PTR [rbx]
	mov	BYTE PTR 12[rax], dl
	mov	BYTE PTR [rbx], -2
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_GrindRail_EndAir_Left
	.def	CreateEntity_GrindRail_EndAir_Left;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_GrindRail_EndAir_Left
CreateEntity_GrindRail_EndAir_Left:
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
	mov	rbx, rcx
	mov	edi, edx
	mov	esi, r8d
	mov	edx, 16
	mov	r8d, 8208
	lea	rcx, Task_GrindRail_Air[rip]
	call	TaskCreate
	mov	rax, QWORD PTR 24[rax]
	mov	BYTE PTR 13[rax], 3
	mov	WORD PTR 8[rax], di
	mov	WORD PTR 10[rax], si
	mov	QWORD PTR [rax], rbx
	movzx	edx, BYTE PTR [rbx]
	mov	BYTE PTR 12[rax], dl
	mov	BYTE PTR [rbx], -2
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_GrindRail_EndAlternate
	.def	CreateEntity_GrindRail_EndAlternate;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_GrindRail_EndAlternate
CreateEntity_GrindRail_EndAlternate:
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
	mov	rbx, rcx
	mov	edi, edx
	mov	esi, r8d
	mov	edx, 16
	mov	r8d, 8208
	lea	rcx, Task_GrindRail_Air[rip]
	call	TaskCreate
	mov	rax, QWORD PTR 24[rax]
	mov	BYTE PTR 13[rax], 0
	mov	WORD PTR 8[rax], di
	mov	WORD PTR 10[rax], si
	mov	QWORD PTR [rax], rbx
	movzx	edx, BYTE PTR [rbx]
	mov	BYTE PTR 12[rax], dl
	mov	BYTE PTR [rbx], -2
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_GrindRail_EndGround_Left
	.def	CreateEntity_GrindRail_EndGround_Left;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_GrindRail_EndGround_Left
CreateEntity_GrindRail_EndGround_Left:
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
	mov	rbx, rcx
	mov	edi, edx
	mov	esi, r8d
	mov	edx, 16
	mov	r8d, 8208
	lea	rcx, Task_GrindRail_Air[rip]
	call	TaskCreate
	mov	rax, QWORD PTR 24[rax]
	mov	BYTE PTR 13[rax], 1
	mov	WORD PTR 8[rax], di
	mov	WORD PTR 10[rax], si
	mov	QWORD PTR [rax], rbx
	movzx	edx, BYTE PTR [rbx]
	mov	BYTE PTR 12[rax], dl
	mov	BYTE PTR [rbx], -2
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
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
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
