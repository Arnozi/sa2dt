	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	RenderKart;	.scl	3;	.type	32;	.endef
	.seh_proc	RenderKart
RenderKart:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	edx, DWORD PTR [rax]
	mov	r9d, DWORD PTR 4[rax]
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	lea	r8, 16[rcx]
	jbe	.L2
	movzx	eax, WORD PTR 125[rcx]
	sub	eax, edx
	movzx	edx, WORD PTR 129[rcx]
	mov	WORD PTR 54[rcx], ax
	sub	edx, r9d
	mov	WORD PTR 56[rcx], dx
	mov	rcx, r8
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L2:
	movzx	eax, WORD PTR 105[rcx]
	sub	eax, edx
	movzx	edx, WORD PTR 109[rcx]
	mov	WORD PTR 54[rcx], ax
	sub	edx, r9d
	mov	WORD PTR 56[rcx], dx
	mov	rcx, r8
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.def	Task_Idle;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Idle
Task_Idle:
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
	mov	rax, QWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	jbe	.L6
	mov	rax, QWORD PTR 124[rbx]
	movd	xmm1, DWORD PTR 116[rbx]
	movd	xmm2, DWORD PTR 120[rbx]
	movd	xmm0, DWORD PTR 104[rbx]
	movd	xmm3, DWORD PTR 108[rbx]
	mov	QWORD PTR 132[rbx], rax
	punpckldq	xmm1, xmm2
	punpckldq	xmm0, xmm3
	punpcklqdq	xmm0, xmm1
	movups	XMMWORD PTR 116[rbx], xmm0
.L6:
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, DWORD PTR [rdi]
	mov	r10d, DWORD PTR 4[rdi]
	mov	r9d, edx
	mov	r8d, r10d
	test	BYTE PTR 36[rsi], -128
	jne	.L7
	mov	rcx, QWORD PTR .refptr.gStageFlags[rip]
	movzx	eax, WORD PTR 88[rbx]
	test	BYTE PTR [rcx], -128
	je	.L8
	cmp	ax, 1
	jbe	.L7
.L15:
	movzx	eax, WORD PTR 105[rbx]
	movzx	ecx, WORD PTR 13[rsi]
	sub	eax, edx
	sub	ecx, edx
	cwde
	movsx	edx, cx
	lea	ecx, -16[rax]
	cmp	ecx, edx
	jg	.L7
	add	eax, 16
	cmp	edx, eax
	jg	.L7
	movzx	eax, WORD PTR 109[rbx]
	movzx	edx, WORD PTR 17[rsi]
	sub	eax, r10d
	sub	edx, r10d
	cwde
	movsx	edx, dx
	lea	ecx, -16[rax]
	cmp	ecx, edx
	jg	.L7
	add	eax, 16
	cmp	edx, eax
	jg	.L7
	mov	ecx, 286
	call	m4aSongNumStart
	mov	eax, 64
	xor	edx, edx
	mov	rcx, rsi
	mov	WORD PTR 108[rsi], ax
	or	DWORD PTR 36[rsi], 4194304
	mov	WORD PTR 24[rsi], dx
	mov	DWORD PTR 20[rsi], 0
	call	Player_TransitionCancelFlyingAndBoost
	mov	rcx, rsi
	mov	edx, 14
	call	Player_HandleSpriteYOffsetChange
	mov	eax, DWORD PTR 36[rsi]
	mov	ecx, 3590
	mov	DWORD PTR 92[rbx], 1
	movzx	r9d, WORD PTR [rdi]
	movzx	r8d, WORD PTR 4[rdi]
	mov	WORD PTR 26[rsi], cx
	mov	edx, eax
	and	eax, -6
	and	edx, -5
	or	edx, 1
	test	WORD PTR 88[rbx], -3
	cmove	eax, edx
	mov	DWORD PTR 36[rsi], eax
	mov	rax, QWORD PTR 0[rbp]
	lea	rsi, Task_Active[rip]
	mov	QWORD PTR 40[rax], rsi
.L7:
	movzx	eax, WORD PTR 80[rbx]
	movsx	edx, WORD PTR 100[rbx]
	mov	ecx, DWORD PTR 84[rbx]
	sub	eax, r9d
	cwde
	add	edx, eax
	cmp	edx, -128
	jl	.L12
	movsx	edx, WORD PTR 96[rbx]
	add	eax, edx
	cmp	eax, 554
	jg	.L12
	movsx	eax, WORD PTR 102[rbx]
	sub	ecx, r8d
	movsx	ecx, cx
	add	eax, ecx
	cmp	eax, -128
	jl	.L12
	movsx	eax, WORD PTR 98[rbx]
	add	eax, ecx
	cmp	eax, 368
	jg	.L12
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	RenderKart
	.p2align 4,,10
	.p2align 3
.L12:
	mov	rax, QWORD PTR [rbx]
	movzx	edx, BYTE PTR 12[rbx]
	mov	BYTE PTR [rax], dl
	mov	rcx, QWORD PTR 0[rbp]
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L8:
	sub	eax, 2
	cmp	ax, 1
	ja	.L15
	jmp	.L7
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
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR [rdi]
	cmp	BYTE PTR [rdx], 2
	mov	rbx, QWORD PTR 24[rax]
	mov	eax, DWORD PTR 104[rbx]
	jbe	.L17
	mov	rdx, QWORD PTR 124[rbx]
	movd	xmm1, DWORD PTR 116[rbx]
	movd	xmm0, eax
	movd	xmm2, DWORD PTR 120[rbx]
	movd	xmm3, DWORD PTR 108[rbx]
	mov	QWORD PTR 132[rbx], rdx
	punpckldq	xmm1, xmm2
	punpckldq	xmm0, xmm3
	punpcklqdq	xmm0, xmm1
	movups	XMMWORD PTR 116[rbx], xmm0
.L17:
	movzx	ecx, WORD PTR 88[rbx]
	mov	r8d, DWORD PTR 80[rbx]
	test	cx, -3
	jne	.L18
	lea	edx, -3840[rax]
	movsx	eax, WORD PTR 96[rbx]
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	mov	DWORD PTR 104[rbx], edx
	add	eax, r8d
	sal	eax, 8
	cmp	edx, eax
	jle	.L19
.L20:
	mov	eax, DWORD PTR 36[rsi]
	test	al, -128
	jne	.L51
	mov	edx, DWORD PTR 92[rbx]
	test	edx, edx
	je	.L29
	movzx	edx, WORD PTR 88[rbx]
	cmp	dx, 2
	je	.L30
	ja	.L31
	test	dx, dx
	je	.L52
	movq	xmm1, QWORD PTR .LC5[rip]
	movq	xmm0, QWORD PTR 104[rbx]
	paddd	xmm0, xmm1
	movq	QWORD PTR 12[rsi], xmm0
	.p2align 4,,10
	.p2align 3
.L29:
	cmp	WORD PTR 48[rsi], 120
	je	.L36
	mov	rcx, QWORD PTR .refptr.gPlayerControls[rip]
	movzx	edx, WORD PTR 102[rsi]
	and	dx, WORD PTR [rcx]
	je	.L35
	and	eax, -4194305
	mov	rcx, rbx
	mov	BYTE PTR 117[rsi], 3
	mov	DWORD PTR 36[rsi], eax
	mov	DWORD PTR 92[rbx], 0
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	RenderKart
	.p2align 4,,10
	.p2align 3
.L36:
	and	eax, -4194305
	mov	DWORD PTR 36[rsi], eax
.L51:
	mov	DWORD PTR 92[rbx], 0
.L35:
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	RenderKart
	.p2align 4,,10
	.p2align 3
.L18:
	lea	edx, 3840[rax]
	movsx	eax, WORD PTR 100[rbx]
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	mov	DWORD PTR 104[rbx], edx
	add	eax, r8d
	sal	eax, 8
	cmp	edx, eax
	jl	.L20
.L19:
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	mov	DWORD PTR 104[rbx], eax
	mov	eax, DWORD PTR 36[rsi]
	test	al, -128
	jne	.L22
	mov	r9d, DWORD PTR 92[rbx]
	test	r9d, r9d
	je	.L22
	and	eax, -4194305
	mov	r8d, 65
	mov	BYTE PTR 117[rsi], 7
	mov	DWORD PTR 36[rsi], eax
	mov	WORD PTR 108[rsi], r8w
	cmp	cx, 2
	je	.L23
	ja	.L24
	test	cx, cx
	je	.L23
.L25:
	mov	DWORD PTR 20[rsi], -50327808
.L26:
	mov	DWORD PTR 92[rbx], 0
	mov	ecx, 287
	call	m4aSongNumStart
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L22:
	mov	ecx, 286
	call	m4aSongNumStop
.L27:
	mov	rax, QWORD PTR [rdi]
	xor	ecx, ecx
	lea	rdi, Task_WaitToReset[rip]
	mov	WORD PTR 112[rbx], cx
	mov	QWORD PTR 40[rax], rdi
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L30:
	movq	xmm1, QWORD PTR .LC6[rip]
	movq	xmm0, QWORD PTR 104[rbx]
	paddd	xmm0, xmm1
	movq	QWORD PTR 12[rsi], xmm0
	jmp	.L29
	.p2align 4,,10
	.p2align 3
.L31:
	cmp	dx, 3
	jne	.L29
	movq	xmm1, QWORD PTR .LC7[rip]
	movq	xmm0, QWORD PTR 104[rbx]
	paddd	xmm0, xmm1
	movq	QWORD PTR 12[rsi], xmm0
	jmp	.L29
	.p2align 4,,10
	.p2align 3
.L52:
	movq	xmm1, QWORD PTR .LC4[rip]
	movq	xmm0, QWORD PTR 104[rbx]
	paddd	xmm0, xmm1
	movq	QWORD PTR 12[rsi], xmm0
	jmp	.L29
	.p2align 4,,10
	.p2align 3
.L23:
	mov	DWORD PTR 20[rsi], -50269952
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L24:
	cmp	cx, 3
	je	.L25
	jmp	.L26
	.seh_endproc
	.p2align 4
	.def	Task_WaitToReset;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_WaitToReset
Task_WaitToReset:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	mov	rcx, QWORD PTR 24[rdx]
	jbe	.L54
	mov	rax, QWORD PTR 124[rcx]
	movd	xmm1, DWORD PTR 116[rcx]
	movd	xmm2, DWORD PTR 120[rcx]
	movd	xmm0, DWORD PTR 104[rcx]
	movd	xmm3, DWORD PTR 108[rcx]
	mov	QWORD PTR 132[rcx], rax
	punpckldq	xmm1, xmm2
	punpckldq	xmm0, xmm3
	punpcklqdq	xmm0, xmm1
	movups	XMMWORD PTR 116[rcx], xmm0
.L54:
	movzx	eax, WORD PTR 112[rcx]
	add	eax, 1
	mov	WORD PTR 112[rcx], ax
	cmp	ax, 60
	jbe	.L55
	lea	rax, Task_807E16C[rip]
	mov	QWORD PTR 40[rdx], rax
.L55:
	jmp	RenderKart
	.seh_endproc
	.p2align 4
	.def	Task_807E16C;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_807E16C
Task_807E16C:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	r8, QWORD PTR [rax]
	cmp	BYTE PTR [rdx], 2
	mov	rcx, QWORD PTR 24[r8]
	mov	eax, DWORD PTR 104[rcx]
	jbe	.L57
	mov	rdx, QWORD PTR 124[rcx]
	movd	xmm1, DWORD PTR 116[rcx]
	movd	xmm0, eax
	movd	xmm2, DWORD PTR 120[rcx]
	movd	xmm3, DWORD PTR 108[rcx]
	mov	QWORD PTR 132[rcx], rdx
	punpckldq	xmm1, xmm2
	punpckldq	xmm0, xmm3
	punpcklqdq	xmm0, xmm1
	movups	XMMWORD PTR 116[rcx], xmm0
.L57:
	mov	r9d, DWORD PTR 80[rcx]
	test	WORD PTR 88[rcx], -3
	jne	.L58
	lea	edx, 256[rax]
	movsx	eax, WORD PTR 100[rcx]
	mov	DWORD PTR 104[rcx], edx
	add	eax, r9d
	sal	eax, 8
	cmp	edx, eax
	jl	.L60
	mov	DWORD PTR 104[rcx], eax
	lea	rax, Task_Idle[rip]
	mov	QWORD PTR 40[r8], rax
.L60:
	jmp	RenderKart
	.p2align 4,,10
	.p2align 3
.L58:
	lea	edx, -256[rax]
	movsx	eax, WORD PTR 96[rcx]
	mov	DWORD PTR 104[rcx], edx
	add	eax, r9d
	sal	eax, 8
	cmp	edx, eax
	jg	.L60
	mov	DWORD PTR 104[rcx], eax
	lea	rax, Task_Idle[rip]
	mov	QWORD PTR 40[r8], rax
	jmp	.L60
	.seh_endproc
	.p2align 4
	.globl	TaskDestructor_807DF38
	.def	TaskDestructor_807DF38;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_807DF38
TaskDestructor_807DF38:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Launcher
	.def	CreateEntity_Launcher;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Launcher
CreateEntity_Launcher:
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
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	lea	rax, TaskDestructor_807DF38[rip]
	mov	ebp, DWORD PTR 176[rsp]
	mov	QWORD PTR 32[rsp], rax
	mov	rsi, rcx
	mov	r13d, edx
	mov	r12d, r8d
	mov	edi, r9d
	mov	r8d, 8208
	xor	r9d, r9d
	mov	edx, 144
	lea	rcx, Task_Idle[rip]
	call	TaskCreate
	movzx	r8d, r13w
	movsx	dx, BYTE PTR 4[rsi]
	movsx	cx, BYTE PTR 3[rsi]
	mov	rbx, QWORD PTR 24[rax]
	sal	r8d, 5
	movzx	r11d, BYTE PTR 6[rsi]
	movzx	r10d, BYTE PTR 5[rsi]
	sal	edx, 3
	sal	ecx, 3
	mov	WORD PTR 88[rbx], bp
	movzx	eax, BYTE PTR [rsi]
	lea	r11d, [rdx+r11*8]
	lea	r10d, [rcx+r10*8]
	mov	WORD PTR 62[rsp], dx
	add	r8d, eax
	mov	r14d, eax
	movzx	eax, r12w
	movzx	r15d, r10w
	sal	r8d, 3
	sal	eax, 5
	mov	DWORD PTR 80[rbx], r8d
	movzx	r9d, BYTE PTR 1[rsi]
	mov	WORD PTR 8[rbx], r13w
	add	r9d, eax
	movzx	eax, r11w
	mov	WORD PTR 10[rbx], r12w
	sal	rax, 16
	sal	r9d, 3
	mov	QWORD PTR [rbx], rsi
	or	rax, r15
	movzx	r15d, dx
	mov	edx, edi
	mov	DWORD PTR 84[rbx], r9d
	sal	rax, 16
	or	rax, r15
	movzx	r15d, cx
	sal	rax, 16
	or	rax, r15
	mov	QWORD PTR 96[rbx], rax
	movzx	eax, r14b
	mov	ah, dl
	mov	WORD PTR 12[rbx], ax
	cmp	bp, 2
	je	.L64
	ja	.L65
	test	bp, bp
	je	.L75
	movsx	ecx, cx
	movsx	r11d, r11w
	add	ecx, r8d
	lea	edx, [r11+r9]
	sal	ecx, 8
	sal	edx, 8
	mov	DWORD PTR 104[rbx], ecx
	mov	DWORD PTR 108[rbx], edx
.L69:
	mov	DWORD PTR 116[rbx], ecx
	xor	eax, eax
	lea	rdi, 16[rbx]
	mov	DWORD PTR 120[rbx], edx
	mov	DWORD PTR 124[rbx], ecx
	mov	DWORD PTR 128[rbx], edx
	mov	DWORD PTR 132[rbx], ecx
	mov	ecx, 4351
	mov	DWORD PTR 136[rbx], edx
	xor	edx, edx
	mov	WORD PTR 65[rbx], cx
	mov	ecx, 15
	mov	WORD PTR 32[rbx], ax
	mov	WORD PTR 52[rbx], dx
	mov	DWORD PTR 58[rbx], 384
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 8192
	call	VramMalloc
	mov	r8d, 614
	mov	BYTE PTR 64[rbx], 0
	mov	QWORD PTR 24[rbx], rax
	movzx	eax, WORD PTR 88[rbx]
	mov	WORD PTR 34[rbx], r8w
	cmp	ax, 2
	je	.L70
	cmp	ax, 3
	je	.L71
	test	ax, ax
	jne	.L72
	or	DWORD PTR 48[rbx], 1024
.L72:
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	mov	BYTE PTR [rsi], -2
	add	rsp, 72
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
.L75:
	movsx	ecx, r10w
	movsx	edx, r11w
	add	ecx, r8d
	add	edx, r9d
	sal	ecx, 8
	sal	edx, 8
	mov	DWORD PTR 104[rbx], ecx
	mov	DWORD PTR 108[rbx], edx
	jmp	.L69
	.p2align 4,,10
	.p2align 3
.L65:
	movsx	ecx, cx
	add	ecx, r8d
	cmp	bp, 3
	jne	.L76
.L74:
	movsx	edx, WORD PTR 62[rsp]
	sal	ecx, 8
	mov	DWORD PTR 104[rbx], ecx
	add	edx, r9d
	sal	edx, 8
	mov	DWORD PTR 108[rbx], edx
	jmp	.L69
	.p2align 4,,10
	.p2align 3
.L70:
	or	DWORD PTR 48[rbx], 3072
	jmp	.L72
	.p2align 4,,10
	.p2align 3
.L71:
	or	DWORD PTR 48[rbx], 2048
	jmp	.L72
	.p2align 4,,10
	.p2align 3
.L76:
	mov	ecx, DWORD PTR 104[rbx]
	mov	edx, DWORD PTR 108[rbx]
	jmp	.L69
	.p2align 4,,10
	.p2align 3
.L64:
	movsx	r10d, r10w
	lea	ecx, [r10+r8]
	jmp	.L74
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Launcher_Left_GDown
	.def	CreateEntity_Launcher_Left_GDown;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Launcher_Left_GDown
CreateEntity_Launcher_Left_GDown:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	DWORD PTR 32[rsp], 0
	movzx	edx, dx
	movzx	r9d, r9b
	movzx	r8d, r8w
	call	CreateEntity_Launcher
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Launcher_Right_GDown
	.def	CreateEntity_Launcher_Right_GDown;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Launcher_Right_GDown
CreateEntity_Launcher_Right_GDown:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	DWORD PTR 32[rsp], 1
	movzx	edx, dx
	movzx	r9d, r9b
	movzx	r8d, r8w
	call	CreateEntity_Launcher
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Launcher_Left_GUp
	.def	CreateEntity_Launcher_Left_GUp;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Launcher_Left_GUp
CreateEntity_Launcher_Left_GUp:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	DWORD PTR 32[rsp], 2
	movzx	edx, dx
	movzx	r9d, r9b
	movzx	r8d, r8w
	call	CreateEntity_Launcher
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Launcher_Right_GUp
	.def	CreateEntity_Launcher_Right_GUp;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Launcher_Right_GUp
CreateEntity_Launcher_Right_GUp:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	DWORD PTR 32[rsp], 3
	movzx	edx, dx
	movzx	r9d, r9b
	movzx	r8d, r8w
	call	CreateEntity_Launcher
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC4:
	.long	-2048
	.long	-4096
	.align 8
.LC5:
	.long	2048
	.long	-4096
	.align 8
.LC6:
	.long	-2048
	.long	4096
	.align 8
.LC7:
	.long	2048
	.long	4096
	.ident	"GCC: (GNU) 13-win32"
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	Player_TransitionCancelFlyingAndBoost;	.scl	2;	.type	32;	.endef
	.def	Player_HandleSpriteYOffsetChange;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStop;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
