	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_GravityToggle;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_GravityToggle
TaskDestructor_GravityToggle:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.def	CreateEntity_Toggle_Gravity;	.scl	3;	.type	32;	.endef
	.seh_proc	CreateEntity_Toggle_Gravity
CreateEntity_Toggle_Gravity:
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
	lea	rax, TaskDestructor_GravityToggle[rip]
	mov	r12d, DWORD PTR 128[rsp]
	movzx	r12d, r12b
	mov	QWORD PTR 32[rsp], rax
	mov	rsi, rcx
	mov	ebx, r9d
	mov	edi, edx
	xor	r9d, r9d
	mov	ebp, r8d
	mov	edx, 56
	movzx	edi, di
	mov	r8d, 8208
	lea	rcx, Task_GravityToggleNoAliveCheck[rip]
	sal	edi, 5
	movzx	ebp, bp
	call	TaskCreate
	movsx	r11w, BYTE PTR 4[rsi]
	movzx	r9d, BYTE PTR 6[rsi]
	sal	ebp, 5
	mov	rdx, QWORD PTR 24[rax]
	movsx	r8w, BYTE PTR 3[rsi]
	movzx	r10d, BYTE PTR 5[rsi]
	sal	r11d, 3
	sal	r9d, 3
	mov	WORD PTR 20[rdx], r12w
	movzx	eax, BYTE PTR [rsi]
	sal	r8d, 3
	sal	r10d, 3
	add	edi, eax
	mov	ecx, eax
	sal	edi, 3
	mov	DWORD PTR [rdx], edi
	movzx	eax, BYTE PTR 1[rsi]
	lea	edi, [r8+r10]
	movzx	r8d, r8w
	movzx	edi, di
	mov	WORD PTR 16[rdx], r10w
	add	ebp, eax
	lea	eax, [r11+r9]
	movzx	r11d, r11w
	mov	QWORD PTR 40[rdx], rsi
	movzx	eax, ax
	sal	ebp, 3
	mov	WORD PTR 18[rdx], r9w
	sal	rax, 16
	mov	DWORD PTR 4[rdx], ebp
	or	rax, rdi
	sal	rax, 16
	or	rax, r11
	sal	rax, 16
	or	rax, r8
	mov	QWORD PTR 8[rdx], rax
	movzx	eax, cl
	mov	ah, bl
	mov	WORD PTR 48[rdx], ax
	mov	BYTE PTR [rsi], -2
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.def	AlivePlayerIsInToggle.part.0;	.scl	3;	.type	32;	.endef
	.seh_proc	AlivePlayerIsInToggle.part.0
AlivePlayerIsInToggle.part.0:
	.seh_endprologue
	mov	r10, QWORD PTR .refptr.gCamera[rip]
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	xor	r8d, r8d
	movzx	eax, WORD PTR 8[rcx]
	sub	ax, WORD PTR [r10]
	add	ax, WORD PTR [rcx]
	mov	rdx, rcx
	movzx	ecx, WORD PTR 13[r9]
	sub	cx, WORD PTR [r10]
	cmp	ax, cx
	jg	.L4
	mov	r10d, DWORD PTR 4[r10]
	movzx	r8d, WORD PTR 10[rdx]
	cwde
	movsx	ecx, cx
	movzx	r9d, WORD PTR 17[r9]
	sub	r8d, r10d
	add	r8w, WORD PTR 4[rdx]
	sub	r9d, r10d
	movsx	r10d, WORD PTR 16[rdx]
	add	eax, r10d
	cmp	eax, ecx
	jl	.L7
	cmp	r8w, r9w
	jle	.L14
.L7:
	xor	r8d, r8d
.L4:
	mov	eax, r8d
	ret
	.p2align 4,,10
	.p2align 3
.L14:
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
	.def	Task_GravityToggleNoAliveCheck;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_GravityToggleNoAliveCheck
Task_GravityToggleNoAliveCheck:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	mov	rbx, QWORD PTR [rax]
	mov	r11, QWORD PTR 24[rbx]
	test	BYTE PTR 36[rsi], -128
	jne	.L16
	mov	rcx, r11
	call	AlivePlayerIsInToggle.part.0
	test	eax, eax
	je	.L16
	mov	eax, DWORD PTR 20[rsi]
	mov	DWORD PTR 24[r11], eax
	lea	rax, Task_GravityToggle[rip]
	mov	QWORD PTR 40[rbx], rax
.L16:
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, 128
	mov	ecx, DWORD PTR 4[r11]
	mov	esi, eax
	mov	r8d, DWORD PTR 4[rdx]
	sub	si, WORD PTR [rdx]
	movzx	edx, WORD PTR [r11]
	add	edx, esi
	cmp	dx, 682
	ja	.L17
	sub	eax, r8d
	add	eax, ecx
	cmp	ax, 496
	ja	.L17
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L17:
	mov	rax, QWORD PTR 40[r11]
	movzx	edx, BYTE PTR 48[r11]
	mov	rcx, rbx
	mov	BYTE PTR [rax], dl
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.globl	ChangeGravityByKind
	.def	ChangeGravityByKind;	.scl	2;	.type	32;	.endef
	.seh_proc	ChangeGravityByKind
ChangeGravityByKind:
	.seh_endprologue
	movzx	eax, WORD PTR 20[rcx]
	cmp	ax, 1
	je	.L23
	cmp	ax, 2
	je	.L24
	test	ax, ax
	jne	.L25
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	and	WORD PTR [rax], -129
.L25:
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	lea	rdx, Task_GravityToggleNoAliveCheck[rip]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rax], rdx
	ret
	.p2align 4,,10
	.p2align 3
.L24:
	cmp	WORD PTR 24[rcx], 0
	jle	.L26
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	cmp	WORD PTR 20[rax], 0
	jle	.L28
.L27:
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	xor	WORD PTR [rax], 128
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L23:
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	or	WORD PTR [rax], 128
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L26:
	je	.L28
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	cmp	WORD PTR 20[rax], 0
	js	.L27
.L28:
	cmp	WORD PTR 26[rcx], 0
	jle	.L29
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	cmp	WORD PTR 22[rax], 0
	jg	.L27
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L29:
	je	.L25
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	cmp	WORD PTR 22[rax], 0
	jns	.L25
	jmp	.L27
	.seh_endproc
	.p2align 4
	.def	Task_GravityToggle;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_GravityToggle
Task_GravityToggle:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	r11, QWORD PTR 24[rbx]
	mov	rcx, r11
	test	BYTE PTR 36[rax], -128
	jne	.L37
	call	AlivePlayerIsInToggle.part.0
	test	eax, eax
	je	.L38
.L39:
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, 128
	mov	ecx, DWORD PTR 4[r11]
	mov	r9d, eax
	mov	r8d, DWORD PTR 4[rdx]
	sub	r9w, WORD PTR [rdx]
	movzx	edx, WORD PTR [r11]
	add	edx, r9d
	cmp	dx, 682
	ja	.L40
	sub	eax, r8d
	add	eax, ecx
	cmp	ax, 496
	ja	.L40
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L40:
	mov	rax, QWORD PTR 40[r11]
	movzx	edx, BYTE PTR 48[r11]
	mov	rcx, rbx
	mov	BYTE PTR [rax], dl
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L37:
	call	ChangeGravityByKind
.L38:
	mov	rcx, r11
	call	ChangeGravityByKind
	jmp	.L39
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Toggle_Gravity__Down
	.def	CreateEntity_Toggle_Gravity__Down;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Toggle_Gravity__Down
CreateEntity_Toggle_Gravity__Down:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	DWORD PTR 32[rsp], 0
	movzx	edx, dx
	movzx	r9d, r9b
	movzx	r8d, r8w
	call	CreateEntity_Toggle_Gravity
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Toggle_Gravity__Up
	.def	CreateEntity_Toggle_Gravity__Up;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Toggle_Gravity__Up
CreateEntity_Toggle_Gravity__Up:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	DWORD PTR 32[rsp], 1
	movzx	edx, dx
	movzx	r9d, r9b
	movzx	r8d, r8w
	call	CreateEntity_Toggle_Gravity
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Toggle_Gravity__Toggle
	.def	CreateEntity_Toggle_Gravity__Toggle;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Toggle_Gravity__Toggle
CreateEntity_Toggle_Gravity__Toggle:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	DWORD PTR 32[rsp], 2
	movzx	edx, dx
	movzx	r9d, r9b
	movzx	r8d, r8w
	call	CreateEntity_Toggle_Gravity
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
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
