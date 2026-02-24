	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_InteractableTurnAroundBar;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_InteractableTurnAroundBar
TaskDestructor_InteractableTurnAroundBar:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	sub_8073818;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8073818
sub_8073818:
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
	mov	rbp, QWORD PTR .refptr.gCurTask[rip]
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rax]
	lea	rdi, 16[rbx]
	test	BYTE PTR 36[rsi], -128
	jne	.L13
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 80[rbx]
	mov	rcx, rdi
	sub	ax, WORD PTR [rdx]
	mov	WORD PTR 54[rbx], ax
	mov	eax, DWORD PTR 84[rbx]
	sub	ax, WORD PTR 4[rdx]
	mov	WORD PTR 56[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	call	DisplaySprite
	test	BYTE PTR 49[rbx], 64
	jne	.L14
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L14:
	call	Player_ClearMovestate_IsInScriptedSequence
	mov	eax, DWORD PTR 16[rsi]
	sub	eax, DWORD PTR 88[rbx]
	mov	ecx, DWORD PTR 36[rsi]
	mov	edx, DWORD PTR 80[rbx]
	mov	DWORD PTR 16[rsi], eax
	movzx	eax, WORD PTR 24[rsi]
	and	ecx, -4194305
	test	ax, ax
	jle	.L6
	sub	edx, 6
	add	ax, 320
	sal	edx, 8
.L7:
	neg	eax
	mov	DWORD PTR 12[rsi], edx
	mov	edx, -3840
	cmp	ax, dx
	cmovl	eax, edx
	mov	edx, 2304
	cmp	ax, dx
	cmovle	edx, eax
	cmp	BYTE PTR 98[rsi], 0
	je	.L9
	mov	edx, 3840
	cmp	ax, dx
	cmovle	edx, eax
.L9:
	xor	eax, eax
	mov	WORD PTR 24[rsi], dx
	mov	edx, 567
	mov	WORD PTR 22[rsi], ax
	mov	eax, ecx
	mov	rcx, rdi
	lea	rdi, sub_8073600[rip]
	xor	eax, 1
	mov	BYTE PTR 117[rsi], 1
	mov	BYTE PTR 40[rsi], 0
	mov	DWORD PTR 36[rsi], eax
	mov	BYTE PTR 64[rbx], 2
	mov	WORD PTR 34[rbx], dx
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR 0[rbp]
	mov	QWORD PTR 40[rax], rdi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L13:
	call	Player_ClearMovestate_IsInScriptedSequence
	mov	ecx, 567
	and	DWORD PTR 48[rbx], -1025
	mov	WORD PTR 34[rbx], cx
	mov	rcx, rdi
	mov	BYTE PTR 64[rbx], 0
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR 0[rbp]
	lea	rcx, Task_TurnAroundBarMain[rip]
	mov	QWORD PTR 40[rax], rcx
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	add	edx, 6
	sub	ax, 320
	sal	edx, 8
	jmp	.L7
	.seh_endproc
	.p2align 4
	.def	Task_TurnAroundBarMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_TurnAroundBarMain
Task_TurnAroundBarMain:
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
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbp, QWORD PTR .refptr.gCurTask[rip]
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	mov	rax, QWORD PTR 0[rbp]
	mov	r11d, DWORD PTR 36[rsi]
	mov	r10d, DWORD PTR [rdi]
	mov	r9d, DWORD PTR 4[rdi]
	mov	rbx, QWORD PTR 24[rax]
	mov	r12, QWORD PTR [rbx]
	mov	eax, DWORD PTR 80[rbx]
	lea	r13, 16[rbx]
	mov	ecx, DWORD PTR 84[rbx]
	test	r11b, -128
	jne	.L16
	movzx	edx, WORD PTR 13[rsi]
	mov	r8d, eax
	sub	r8d, r10d
	movsx	r8d, r8w
	sub	edx, r10d
	movsx	edx, dx
	lea	r14d, -6[r8]
	cmp	r14d, edx
	jle	.L29
.L16:
	sub	eax, r10d
	lea	edx, 128[rax]
	cmp	dx, 682
	ja	.L18
	sub	ecx, r9d
	lea	edx, 128[rcx]
	cmp	dx, 496
	ja	.L18
	mov	WORD PTR 56[rbx], cx
	mov	rcx, r13
	mov	WORD PTR 54[rbx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L18:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR [r12], al
	mov	rcx, QWORD PTR 0[rbp]
	add	rsp, 40
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
.L29:
	add	r8d, 6
	cmp	edx, r8d
	jg	.L16
	movzx	edx, WORD PTR 17[rsi]
	mov	r14d, ecx
	sub	r14d, r9d
	sub	edx, r9d
	movsx	r8d, r14w
	sub	r8d, 32
	movsx	r15d, dx
	cmp	r8d, r15d
	jg	.L16
	cmp	r14w, dx
	jl	.L16
	movzx	r8d, WORD PTR 24[rsi]
	mov	edx, r8d
	neg	dx
	cmovs	edx, r8d
	cmp	dx, 1023
	jbe	.L16
	and	r11d, 2
	jne	.L16
	call	Player_SetMovestate_IsInScriptedSequence
	mov	edx, DWORD PTR 36[rsi]
	movq	xmm0, QWORD PTR 80[rbx]
	mov	ecx, 567
	mov	eax, edx
	pslld	xmm0, 8
	or	eax, 4194304
	mov	DWORD PTR 36[rsi], eax
	mov	eax, DWORD PTR 84[rbx]
	sal	eax, 8
	sub	eax, DWORD PTR 16[rsi]
	and	edx, 1
	movq	QWORD PTR 12[rsi], xmm0
	mov	DWORD PTR 88[rbx], eax
	mov	eax, 56
	mov	WORD PTR 108[rsi], ax
	mov	WORD PTR 34[rbx], cx
	mov	BYTE PTR 64[rbx], 1
	je	.L17
	or	DWORD PTR 48[rbx], 1024
.L17:
	mov	rcx, r13
	lea	rsi, sub_8073818[rip]
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR 0[rbp]
	mov	ecx, DWORD PTR 84[rbx]
	mov	r10d, DWORD PTR [rdi]
	mov	r9d, DWORD PTR 4[rdi]
	mov	QWORD PTR 40[rax], rsi
	mov	eax, DWORD PTR 80[rbx]
	jmp	.L16
	.seh_endproc
	.p2align 4
	.def	sub_8073600;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_8073600
sub_8073600:
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
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	lea	rsi, 16[rbx]
	test	BYTE PTR 36[rax], -128
	jne	.L36
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 80[rbx]
	mov	rcx, rsi
	sub	ax, WORD PTR [rdx]
	mov	WORD PTR 54[rbx], ax
	mov	eax, DWORD PTR 84[rbx]
	sub	ax, WORD PTR 4[rdx]
	mov	WORD PTR 56[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	mov	eax, DWORD PTR 48[rbx]
	test	ah, 64
	jne	.L37
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L37:
	mov	edx, 567
	and	ah, -5
	mov	BYTE PTR 64[rbx], 0
	mov	rcx, rsi
	mov	WORD PTR 34[rbx], dx
	mov	DWORD PTR 48[rbx], eax
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR [rdi]
	lea	rdx, Task_TurnAroundBarMain[rip]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L36:
	call	Player_ClearMovestate_IsInScriptedSequence
	mov	ecx, 567
	and	DWORD PTR 48[rbx], -1025
	mov	WORD PTR 34[rbx], cx
	mov	rcx, rsi
	mov	BYTE PTR 64[rbx], 0
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR [rdi]
	lea	rcx, Task_TurnAroundBarMain[rip]
	mov	QWORD PTR 40[rax], rcx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_TurnAroundBar
	.def	CreateEntity_TurnAroundBar;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_TurnAroundBar
CreateEntity_TurnAroundBar:
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
	lea	rax, TaskDestructor_InteractableTurnAroundBar[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rbp, rcx
	mov	edi, edx
	mov	esi, r8d
	mov	r12d, r9d
	mov	r8d, 8208
	xor	r9d, r9d
	mov	edx, 96
	lea	rcx, Task_TurnAroundBarMain[rip]
	call	TaskCreate
	mov	edx, r12d
	mov	ecx, 4351
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 8[rbx], di
	movzx	edi, di
	mov	WORD PTR 10[rbx], si
	sal	edi, 5
	movzx	esi, si
	mov	QWORD PTR [rbx], rbp
	movzx	eax, BYTE PTR 0[rbp]
	sal	esi, 5
	mov	WORD PTR 65[rbx], cx
	mov	ecx, 12
	mov	ah, dl
	xor	edx, edx
	mov	DWORD PTR 58[rbx], 1152
	mov	WORD PTR 12[rbx], ax
	xor	eax, eax
	mov	WORD PTR 32[rbx], ax
	mov	WORD PTR 52[rbx], dx
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 8192
	call	VramMalloc
	mov	r8d, 567
	mov	BYTE PTR 64[rbx], 0
	lea	rcx, 16[rbx]
	mov	QWORD PTR 24[rbx], rax
	mov	WORD PTR 34[rbx], r8w
	movzx	eax, BYTE PTR 0[rbp]
	add	eax, edi
	sal	eax, 3
	mov	DWORD PTR 80[rbx], eax
	movzx	eax, BYTE PTR 1[rbp]
	add	eax, esi
	sal	eax, 3
	mov	DWORD PTR 84[rbx], eax
	mov	BYTE PTR 0[rbp], -2
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	Player_ClearMovestate_IsInScriptedSequence;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Player_SetMovestate_IsInScriptedSequence;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
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
