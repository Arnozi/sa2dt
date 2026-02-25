	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_Interactable094;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_Interactable094
TaskDestructor_Interactable094:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.def	PoleIsOffScreen;	.scl	3;	.type	32;	.endef
	.seh_proc	PoleIsOffScreen
PoleIsOffScreen:
	.seh_endprologue
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	mov	r9d, 1
	mov	eax, DWORD PTR [rcx]
	movsx	edx, WORD PTR 12[rcx]
	sub	ax, WORD PTR [r8]
	cwde
	add	edx, eax
	cmp	edx, -128
	jl	.L3
	movsx	edx, WORD PTR 8[rcx]
	add	eax, edx
	cmp	eax, 554
	jg	.L3
	mov	eax, DWORD PTR 4[rcx]
	movsx	edx, WORD PTR 14[rcx]
	sub	ax, WORD PTR 4[r8]
	cwde
	add	edx, eax
	cmp	edx, -128
	jl	.L3
	movsx	edx, WORD PTR 10[rcx]
	xor	r9d, r9d
	add	eax, edx
	cmp	eax, 368
	setg	r9b
.L3:
	mov	eax, r9d
	ret
	.seh_endproc
	.p2align 4
	.def	PlayerTouchesPole.part.0;	.scl	3;	.type	32;	.endef
	.seh_proc	PlayerTouchesPole.part.0
PlayerTouchesPole.part.0:
	.seh_endprologue
	mov	r10, QWORD PTR .refptr.gCamera[rip]
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	xor	r8d, r8d
	movzx	eax, WORD PTR 8[rcx]
	add	ax, WORD PTR [rcx]
	sub	ax, WORD PTR [r10]
	mov	rdx, rcx
	movzx	ecx, WORD PTR 13[r9]
	sub	cx, WORD PTR [r10]
	cmp	ax, cx
	jg	.L8
	mov	r10d, DWORD PTR 4[r10]
	movzx	r9d, WORD PTR 17[r9]
	cwde
	movsx	ecx, cx
	movzx	r8d, WORD PTR 10[rdx]
	add	r8w, WORD PTR 4[rdx]
	sub	r8d, r10d
	sub	r9d, r10d
	movsx	r10d, WORD PTR 16[rdx]
	add	eax, r10d
	cmp	eax, ecx
	jl	.L11
	cmp	r8w, r9w
	jle	.L18
.L11:
	xor	r8d, r8d
.L8:
	mov	eax, r8d
	ret
	.p2align 4,,10
	.p2align 3
.L18:
	movsx	eax, WORD PTR 18[rdx]
	movsx	r8d, r8w
	movsx	r9d, r9w
	add	eax, r8d
	xor	r8d, r8d
	cmp	eax, r9d
	setge	r8b
	mov	eax, r8d
	ret
	.seh_endproc
	.p2align 4
	.def	Task_807EC70;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_807EC70
Task_807EC70:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rbx]
	mov	rcx, QWORD PTR 24[rax]
	test	BYTE PTR 36[rdx], -128
	jne	.L22
	call	PlayerTouchesPole.part.0
	test	eax, eax
	je	.L23
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	mov	ecx, 290
	call	m4aSongNumStop
	mov	rax, QWORD PTR [rbx]
	lea	rbx, Task_Pole_NotTouching[rip]
	mov	QWORD PTR 40[rax], rbx
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L22:
	lea	rdx, Task_Pole_NotTouching[rip]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	Task_Pole_NotTouching;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Pole_NotTouching
Task_Pole_NotTouching:
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
	mov	r11, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rdi]
	mov	esi, DWORD PTR 36[r11]
	mov	rbx, QWORD PTR 24[rax]
	test	sil, -128
	jne	.L25
	mov	rcx, rbx
	call	PlayerTouchesPole.part.0
	test	eax, eax
	je	.L25
	mov	eax, DWORD PTR 20[rbx]
	xor	ecx, ecx
	mov	edx, 66
	or	esi, 4194304
	mov	WORD PTR 24[r11], cx
	mov	ecx, 290
	sal	eax, 8
	mov	WORD PTR 108[r11], dx
	mov	DWORD PTR 12[r11], eax
	mov	DWORD PTR 36[r11], esi
	mov	DWORD PTR 20[r11], 0
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rdi]
	lea	rdx, Task_807EA8C[rip]
	mov	QWORD PTR 40[rax], rdx
.L25:
	mov	rcx, rbx
	call	PoleIsOffScreen
	test	eax, eax
	jne	.L30
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L30:
	mov	rax, QWORD PTR 32[rbx]
	movzx	edx, BYTE PTR 40[rbx]
	mov	BYTE PTR [rax], dl
	mov	rcx, QWORD PTR [rdi]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.def	Task_807EA8C;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_807EA8C
Task_807EA8C:
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
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rbx]
	mov	rsi, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, DWORD PTR 36[rax]
	mov	r9d, edx
	and	r9d, 128
	jne	.L51
	cmp	WORD PTR 48[rax], 120
	je	.L52
	mov	ecx, DWORD PTR 16[rax]
	mov	r10, QWORD PTR .refptr.gStageFlags[rip]
	lea	r8d, -256[rcx]
	add	ecx, 256
	test	BYTE PTR [r10], -128
	mov	r10, QWORD PTR .refptr.gPlayerControls[rip]
	cmovne	ecx, r8d
	movzx	r8d, WORD PTR 102[rax]
	and	r8w, WORD PTR [r10]
	mov	DWORD PTR 16[rax], ecx
	je	.L37
	test	BYTE PTR 100[rax], 32
	jne	.L38
	and	edx, -4194306
	mov	ecx, 1280
.L39:
	mov	DWORD PTR 28[rsi], r9d
	mov	r8d, 4
	lea	rdi, Task_807EC70[rip]
	mov	WORD PTR 20[rax], cx
	mov	ecx, 290
	mov	DWORD PTR 36[rax], edx
	mov	WORD PTR 108[rax], r8w
	mov	BYTE PTR 117[rax], 5
	call	m4aSongNumStop
	mov	rax, QWORD PTR [rbx]
	mov	QWORD PTR 40[rax], rdi
.L40:
	mov	rcx, rsi
	call	PoleIsOffScreen
	test	eax, eax
	je	.L31
	mov	rax, QWORD PTR 32[rsi]
	movzx	edx, BYTE PTR 40[rsi]
	mov	BYTE PTR [rax], dl
	mov	rcx, QWORD PTR [rbx]
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L37:
	mov	r9, QWORD PTR .refptr.gCamera[rip]
	movzx	r8d, WORD PTR 8[rsi]
	add	r8w, WORD PTR [rsi]
	mov	ebp, DWORD PTR 4[rsi]
	mov	r10d, DWORD PTR [r9]
	mov	edi, DWORD PTR 4[r9]
	movzx	r9d, WORD PTR 13[rax]
	movzx	r11d, WORD PTR 10[rsi]
	sub	r8d, r10d
	sub	r9d, r10d
	cmp	r8w, r9w
	jg	.L41
	movsx	r10d, WORD PTR 16[rsi]
	movsx	r8d, r8w
	add	r11d, ebp
	sar	ecx, 8
	sub	r11d, edi
	sub	ecx, edi
	add	r10d, r8d
	movsx	r8d, r9w
	cmp	r10d, r8d
	jl	.L41
	cmp	r11w, cx
	jle	.L53
	.p2align 4,,10
	.p2align 3
.L41:
	and	edx, -4194305
	mov	ecx, 256
	mov	BYTE PTR 117[rax], 5
	lea	rdi, Task_Pole_NotTouching[rip]
	mov	DWORD PTR 36[rax], edx
	mov	edx, 14
	mov	WORD PTR 22[rax], cx
	mov	ecx, 290
	mov	WORD PTR 108[rax], dx
	call	m4aSongNumStop
	mov	rax, QWORD PTR [rbx]
	mov	QWORD PTR 40[rax], rdi
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L51:
	mov	ecx, 290
	lea	rdi, Task_Pole_NotTouching[rip]
	call	m4aSongNumStop
	mov	rax, QWORD PTR [rbx]
	mov	QWORD PTR 40[rax], rdi
.L31:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L38:
	and	edx, -4194305
	mov	r9d, 1
	mov	ecx, -1280
	or	edx, 1
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L52:
	and	edx, -4194305
	mov	ecx, 290
	lea	rdi, Task_807EC70[rip]
	mov	DWORD PTR 36[rax], edx
	call	m4aSongNumStop
	mov	rax, QWORD PTR [rbx]
	mov	QWORD PTR 40[rax], rdi
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L53:
	movsx	r8d, WORD PTR 18[rsi]
	movsx	r11d, r11w
	movsx	ecx, cx
	add	r8d, r11d
	cmp	r8d, ecx
	jl	.L41
	jmp	.L40
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Pole
	.def	CreateEntity_Pole;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Pole
CreateEntity_Pole:
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
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	lea	rax, TaskDestructor_Interactable094[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rbx, rcx
	mov	edi, edx
	mov	esi, r9d
	mov	ebp, r8d
	xor	r9d, r9d
	mov	r8d, 8208
	mov	edx, 48
	lea	rcx, Task_Pole_NotTouching[rip]
	movzx	ebp, bp
	call	TaskCreate
	movzx	r10d, di
	sal	ebp, 5
	movsx	dx, BYTE PTR 3[rbx]
	mov	r9, QWORD PTR 24[rax]
	movzx	eax, BYTE PTR [rbx]
	sal	r10d, 5
	movzx	r12d, BYTE PTR 5[rbx]
	sal	edx, 3
	add	r10d, eax
	mov	r13d, eax
	movsx	ax, BYTE PTR 4[rbx]
	sal	r10d, 3
	sal	r12d, 3
	mov	DWORD PTR [r9], r10d
	movzx	r8d, BYTE PTR 1[rbx]
	sal	eax, 3
	lea	edi, [rdx+r12]
	movzx	r14d, di
	movsx	edi, di
	add	r8d, ebp
	movzx	ebp, BYTE PTR 6[rbx]
	mov	WORD PTR 16[r9], r12w
	sal	r8d, 3
	mov	QWORD PTR 32[r9], rbx
	sal	ebp, 3
	mov	DWORD PTR 4[r9], r8d
	lea	r11d, [rax+rbp]
	mov	WORD PTR 18[r9], bp
	movzx	ecx, r11w
	movsx	r11d, r11w
	sal	rcx, 16
	or	rcx, r14
	movzx	r14d, ax
	cwde
	sal	rcx, 16
	add	eax, r11d
	or	rcx, r14
	movzx	r14d, dx
	movsx	edx, dx
	sar	eax
	add	edx, edi
	add	eax, r8d
	sal	rcx, 16
	sar	edx
	mov	DWORD PTR 24[r9], eax
	movzx	eax, r13b
	or	rcx, r14
	add	edx, r10d
	mov	QWORD PTR 8[r9], rcx
	mov	DWORD PTR 20[r9], edx
	mov	edx, esi
	mov	ah, dl
	mov	WORD PTR 40[r9], ax
	mov	BYTE PTR [rbx], -2
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	m4aSongNumStop;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gPlayerControls, "dr"
	.globl	.refptr.gPlayerControls
	.linkonce	discard
.refptr.gPlayerControls:
	.quad	gPlayerControls
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
