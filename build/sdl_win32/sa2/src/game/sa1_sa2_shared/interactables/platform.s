	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_Platform;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_Platform
TaskDestructor_Platform:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	Task_PlatformMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_PlatformMain
Task_PlatformMain:
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
	mov	r12, QWORD PTR .refptr.gCurTask[rip]
	xor	r8d, r8d
	mov	rax, QWORD PTR [r12]
	mov	rsi, QWORD PTR 24[rax]
	movzx	ecx, WORD PTR 92[rsi]
	mov	rdi, QWORD PTR [rsi]
	lea	r13, 16[rsi]
	mov	edx, DWORD PTR 84[rsi]
	test	cx, cx
	je	.L4
	mov	r8, QWORD PTR .refptr.gStageTime[rip]
	movzx	eax, WORD PTR 80[rsi]
	add	eax, DWORD PTR [r8]
	movzx	eax, al
	imul	eax, ecx
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	and	eax, 1023
	movsx	eax, WORD PTR [rcx+rax*2]
	movzx	ecx, BYTE PTR 5[rdi]
	sal	ecx, 11
	imul	eax, ecx
	sar	eax, 14
	mov	DWORD PTR 84[rsi], eax
	mov	r8d, eax
	sub	r8d, edx
	mov	edx, eax
.L4:
	movzx	r10d, WORD PTR 94[rsi]
	mov	r9d, DWORD PTR 88[rsi]
	xor	ecx, ecx
	test	r10w, r10w
	je	.L5
	mov	rcx, QWORD PTR .refptr.gStageTime[rip]
	movzx	eax, WORD PTR 80[rsi]
	add	eax, DWORD PTR [rcx]
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	movzx	eax, al
	imul	eax, r10d
	and	eax, 1023
	movsx	eax, WORD PTR [rcx+rax*2]
	movzx	ecx, BYTE PTR 6[rdi]
	sal	ecx, 11
	imul	eax, ecx
	sar	eax, 14
	mov	DWORD PTR 88[rsi], eax
	mov	ecx, eax
	sub	ecx, r9d
	mov	r9d, eax
.L5:
	movzx	eax, WORD PTR 8[rsi]
	movzx	r10d, BYTE PTR 12[rsi]
	sar	edx, 8
	movzx	r15d, WORD PTR 10[rsi]
	mov	r14, QWORD PTR .refptr.gCamera[rip]
	sal	eax, 5
	mov	rbp, QWORD PTR .refptr.gPlayer[rip]
	add	eax, r10d
	movzx	r10d, BYTE PTR 1[rdi]
	sal	r15d, 5
	sal	eax, 3
	add	r15d, r10d
	mov	r10d, DWORD PTR [r14]
	mov	r11d, eax
	sal	r15d, 3
	sub	r11d, r10d
	add	r11d, edx
	mov	WORD PTR 54[rsi], r11w
	mov	r11d, r9d
	mov	r9d, r15d
	sub	r9w, WORD PTR 4[r14]
	sar	r11d, 8
	add	r9d, r11d
	mov	WORD PTR 56[rsi], r9w
	mov	r9d, DWORD PTR 36[rbp]
	test	r9b, 8
	je	.L6
	cmp	QWORD PTR 64[rbp], r13
	je	.L33
.L6:
	and	r9d, 4194304
	movsx	ebx, ax
	je	.L34
.L8:
	mov	eax, ebx
	sub	eax, r10d
	sub	eax, -128
	cmp	eax, 682
	ja	.L10
	movsx	eax, r15w
	sub	eax, DWORD PTR 4[r14]
	sub	eax, -128
	cmp	eax, 496
	jbe	.L11
.L10:
	movzx	eax, BYTE PTR 12[rsi]
	mov	BYTE PTR [rdi], al
	mov	rcx, QWORD PTR [r12]
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
.L34:
	movsx	eax, r15w
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	add	edx, ebx
	mov	rcx, r13
	lea	r8d, [rax+r11]
	call	Coll_Player_Platform
	test	eax, 65536
	je	.L32
	sal	eax, 8
	cwde
	add	DWORD PTR 16[rbp], eax
.L32:
	mov	r10d, DWORD PTR [r14]
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L33:
	mov	rbx, QWORD PTR .refptr.gStageFlags[rip]
	add	DWORD PTR 12[rbp], r8d
	mov	r8d, DWORD PTR 16[rbp]
	test	BYTE PTR [rbx], -128
	jne	.L7
	lea	ecx, 256[rcx+r8]
	mov	DWORD PTR 16[rbp], ecx
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L11:
	mov	eax, DWORD PTR 36[rbp]
	test	eax, 4194304
	jne	.L12
	movzx	edx, WORD PTR 96[rsi]
	test	al, 8
	je	.L13
	cmp	QWORD PTR 64[rbp], r13
	jne	.L13
	cmp	dx, 256
	je	.L14
	add	edx, 16
	mov	WORD PTR 96[rsi], dx
	.p2align 4,,10
	.p2align 3
.L14:
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	movzx	edx, dx
	movzx	eax, WORD PTR 56[rsi]
	movzx	edx, WORD PTR [rcx+rdx*2]
	mov	ecx, eax
	sar	dx, 12
	sub	ecx, edx
	add	eax, edx
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rdx], -128
	cmovne	eax, ecx
	mov	WORD PTR 56[rsi], ax
.L12:
	mov	rcx, r13
	call	UpdateSpriteAnimation
	mov	rcx, r13
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
.L13:
	test	dx, dx
	je	.L14
	sub	edx, 16
	mov	WORD PTR 96[rsi], dx
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L7:
	lea	ecx, -512[rcx+r8]
	mov	DWORD PTR 16[rbp], ecx
	jmp	.L6
	.seh_endproc
	.p2align 4
	.def	Task_FallingPlatformMain_Idle;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_FallingPlatformMain_Idle
Task_FallingPlatformMain_Idle:
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
	mov	r12, QWORD PTR .refptr.gCurTask[rip]
	mov	rdi, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR [r12]
	cmp	BYTE PTR [rdi], 2
	mov	rbx, QWORD PTR 24[rax]
	mov	r13, QWORD PTR [rbx]
	lea	rbp, 16[rbx]
	jbe	.L36
	movq	xmm0, QWORD PTR 96[rbx]
	movq	xmm1, QWORD PTR 88[rbx]
	movss	xmm0, xmm1
	movq	QWORD PTR 100[rbx], xmm0
.L36:
	movzx	esi, WORD PTR 8[rbx]
	movzx	eax, BYTE PTR 12[rbx]
	mov	rcx, rbp
	movzx	r8d, WORD PTR 10[rbx]
	mov	r15, QWORD PTR .refptr.gCamera[rip]
	sal	esi, 5
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	add	esi, eax
	movzx	eax, BYTE PTR 1[r13]
	sal	r8d, 5
	sal	esi, 3
	add	r8d, eax
	mov	eax, esi
	sub	ax, WORD PTR [r15]
	movsx	esi, si
	sal	r8d, 3
	mov	WORD PTR 54[rbx], ax
	mov	edx, esi
	mov	eax, r8d
	sub	ax, WORD PTR 4[r15]
	movsx	r14d, r8w
	mov	WORD PTR 56[rbx], ax
	mov	r8d, r14d
	call	Coll_Player_Platform
	test	eax, 65536
	je	.L37
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	sal	eax, 8
	lea	rcx, Task_FallingPlatformMain_FallDelay[rip]
	cwde
	add	DWORD PTR 16[rdx], eax
	mov	rax, QWORD PTR [r12]
	mov	edx, 30
	mov	QWORD PTR 40[rax], rcx
	mov	WORD PTR 80[rbx], dx
.L37:
	cmp	BYTE PTR [rdi], 2
	jbe	.L38
	cmp	BYTE PTR 0[r13], -3
	je	.L57
.L38:
	mov	eax, DWORD PTR [r15]
	lea	edx, 554[rax]
	cmp	esi, edx
	jg	.L39
	add	eax, -128
	cmp	esi, eax
	jge	.L58
.L39:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L41
	movzx	eax, WORD PTR 56[rbx]
	lea	edx, 128[rax]
	cmp	dx, 496
	jbe	.L42
.L41:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR 0[r13], al
	mov	rcx, QWORD PTR [r12]
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
.L58:
	mov	eax, DWORD PTR 4[r15]
	lea	edx, 368[rax]
	cmp	r14d, edx
	jg	.L39
	add	eax, -128
	cmp	r14d, eax
	jl	.L39
	movzx	eax, WORD PTR 56[rbx]
.L42:
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	movzx	edx, WORD PTR 96[rbx]
	test	BYTE PTR 36[rcx], 8
	jne	.L59
.L43:
	test	dx, dx
	je	.L44
	sub	edx, 16
	mov	WORD PTR 96[rbx], dx
.L44:
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	movzx	edx, dx
	movzx	edx, WORD PTR [rcx+rdx*2]
	mov	rcx, rbp
	sar	dx, 12
	add	eax, edx
	mov	WORD PTR 56[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rbp
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
.L57:
	xor	eax, eax
	lea	rdi, Task_FallingPlatformMain_Falling[rip]
	mov	WORD PTR 80[rbx], ax
	mov	rax, QWORD PTR [r12]
	mov	QWORD PTR 40[rax], rdi
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L59:
	cmp	QWORD PTR 64[rcx], rbp
	jne	.L43
	cmp	dx, 256
	je	.L44
	add	edx, 16
	mov	WORD PTR 96[rbx], dx
	jmp	.L44
	.seh_endproc
	.p2align 4
	.globl	Task_FallingPlatformMain_Falling
	.def	Task_FallingPlatformMain_Falling;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_FallingPlatformMain_Falling
Task_FallingPlatformMain_Falling:
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
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	movzx	r9d, BYTE PTR [rax]
	mov	rdi, QWORD PTR [rbx]
	lea	rbp, 16[rbx]
	mov	ecx, DWORD PTR 88[rbx]
	cmp	r9b, 2
	jbe	.L61
	movd	xmm2, DWORD PTR 100[rbx]
	movd	xmm0, ecx
	punpckldq	xmm0, xmm2
	movq	QWORD PTR 100[rbx], xmm0
.L61:
	movzx	eax, WORD PTR 94[rbx]
	movzx	edx, WORD PTR 8[rbx]
	mov	r12, QWORD PTR .refptr.gCamera[rip]
	lea	r8d, 42[rax]
	movzx	eax, BYTE PTR 12[rbx]
	sal	edx, 5
	movsx	r10d, r8w
	mov	WORD PTR 94[rbx], r8w
	add	edx, eax
	add	ecx, r10d
	movzx	eax, WORD PTR 10[rbx]
	mov	DWORD PTR 88[rbx], ecx
	movzx	r11d, BYTE PTR 1[rdi]
	sal	edx, 3
	sal	eax, 5
	add	eax, r11d
	mov	r11d, edx
	sub	r11w, WORD PTR [r12]
	mov	r12d, DWORD PTR 4[r12]
	sal	eax, 3
	cmp	r9b, 2
	mov	WORD PTR 54[rbx], r11w
	mov	r9d, eax
	jbe	.L62
	add	r9w, WORD PTR 105[rbx]
	sub	r9d, r12d
.L63:
	mov	r12, QWORD PTR .refptr.gPlayer[rip]
	mov	WORD PTR 56[rbx], r9w
	movzx	r9d, WORD PTR 80[rbx]
	mov	r13d, DWORD PTR 36[r12]
	add	r9d, 1
	mov	WORD PTR 80[rbx], r9w
	test	r13b, 8
	je	.L64
	cmp	QWORD PTR 64[r12], rbp
	je	.L87
.L64:
	cmp	r9w, 31
	jbe	.L88
.L68:
	sub	r11w, -128
	cmp	r11w, 682
	ja	.L70
	movzx	eax, WORD PTR 56[rbx]
	lea	edx, 128[rax]
	cmp	dx, 496
	jbe	.L71
.L70:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR [rdi], al
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L62:
	sub	r9d, r12d
	mov	r12d, ecx
	sar	r12d, 8
	add	r9d, r12d
	jmp	.L63
	.p2align 4,,10
	.p2align 3
.L88:
	sar	ecx, 8
	cwde
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	movsx	edx, dx
	lea	r8d, [rcx+rax]
	mov	rcx, rbp
	call	Coll_Player_Platform
	test	eax, 65536
	je	.L86
	sal	eax, 8
	cwde
	add	DWORD PTR 16[r12], eax
.L86:
	movzx	r11d, WORD PTR 54[rbx]
	jmp	.L68
	.p2align 4,,10
	.p2align 3
.L87:
	cmp	r9w, 32
	jbe	.L65
	and	r13d, -9
	mov	WORD PTR 22[r12], r8w
	or	r13d, 2
	mov	DWORD PTR 36[r12], r13d
	jmp	.L68
	.p2align 4,,10
	.p2align 3
.L71:
	movzx	edx, WORD PTR 96[rbx]
	test	BYTE PTR 36[r12], 8
	je	.L72
	cmp	QWORD PTR 64[r12], rbp
	je	.L89
.L72:
	test	dx, dx
	je	.L73
	sub	edx, 16
	mov	WORD PTR 96[rbx], dx
.L73:
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	movzx	edx, dx
	movzx	edx, WORD PTR [rcx+rdx*2]
	mov	rcx, rbp
	sar	dx, 12
	add	eax, edx
	mov	WORD PTR 56[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rbp
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L65:
	movsx	r8d, WORD PTR 92[rbx]
	add	r10d, 256
	movq	xmm1, QWORD PTR 12[r12]
	movd	xmm3, r10d
	movd	xmm0, r8d
	punpckldq	xmm0, xmm3
	paddd	xmm0, xmm1
	movq	QWORD PTR 12[r12], xmm0
	jmp	.L64
	.p2align 4,,10
	.p2align 3
.L89:
	cmp	dx, 256
	je	.L73
	add	edx, 16
	mov	WORD PTR 96[rbx], dx
	jmp	.L73
	.seh_endproc
	.p2align 4
	.globl	Task_FallingPlatformMain_FallDelay
	.def	Task_FallingPlatformMain_FallDelay;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_FallingPlatformMain_FallDelay
Task_FallingPlatformMain_FallDelay:
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
	mov	r12, QWORD PTR .refptr.gCurTask[rip]
	mov	rdi, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR [r12]
	cmp	BYTE PTR [rdi], 2
	mov	rbx, QWORD PTR 24[rax]
	mov	r13, QWORD PTR [rbx]
	lea	rbp, 16[rbx]
	jbe	.L91
	movq	xmm0, QWORD PTR 96[rbx]
	movq	xmm1, QWORD PTR 88[rbx]
	movss	xmm0, xmm1
	movq	QWORD PTR 100[rbx], xmm0
.L91:
	movzx	esi, WORD PTR 8[rbx]
	movzx	eax, BYTE PTR 12[rbx]
	mov	rcx, rbp
	movzx	r8d, WORD PTR 10[rbx]
	mov	r14, QWORD PTR .refptr.gCamera[rip]
	sal	esi, 5
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	add	esi, eax
	movzx	eax, BYTE PTR 1[r13]
	sal	r8d, 5
	sal	esi, 3
	add	r8d, eax
	mov	eax, esi
	sub	ax, WORD PTR [r14]
	movsx	esi, si
	sal	r8d, 3
	mov	WORD PTR 54[rbx], ax
	mov	edx, esi
	mov	eax, r8d
	sub	ax, WORD PTR 4[r14]
	movsx	r15d, r8w
	mov	WORD PTR 56[rbx], ax
	mov	r8d, r15d
	call	Coll_Player_Platform
	test	eax, 65536
	je	.L92
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	sal	eax, 8
	cwde
	add	DWORD PTR 16[rdx], eax
.L92:
	cmp	BYTE PTR [rdi], 2
	jbe	.L93
	cmp	BYTE PTR 0[r13], -3
	je	.L117
	sub	WORD PTR 80[rbx], 1
	je	.L118
	.p2align 4,,10
	.p2align 3
.L95:
	mov	eax, DWORD PTR [r14]
	lea	edx, 554[rax]
	cmp	esi, edx
	jg	.L97
	add	eax, -128
	cmp	esi, eax
	jge	.L119
.L97:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L99
	movzx	eax, WORD PTR 56[rbx]
	lea	edx, 128[rax]
	cmp	dx, 496
	jbe	.L100
.L99:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR 0[r13], al
	mov	rcx, QWORD PTR [r12]
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
.L93:
	sub	WORD PTR 80[rbx], 1
	jne	.L95
	mov	rax, QWORD PTR [r12]
	lea	rdi, Task_FallingPlatformMain_Falling[rip]
	mov	QWORD PTR 40[rax], rdi
	jmp	.L95
	.p2align 4,,10
	.p2align 3
.L119:
	mov	eax, DWORD PTR 4[r14]
	lea	edx, 368[rax]
	cmp	r15d, edx
	jg	.L97
	add	eax, -128
	cmp	r15d, eax
	jl	.L97
	movzx	eax, WORD PTR 56[rbx]
.L100:
	mov	rcx, QWORD PTR .refptr.gPlayer[rip]
	movzx	edx, WORD PTR 96[rbx]
	test	BYTE PTR 36[rcx], 8
	jne	.L120
.L101:
	test	dx, dx
	je	.L102
	sub	edx, 16
	mov	WORD PTR 96[rbx], dx
.L102:
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	movzx	edx, dx
	movzx	edx, WORD PTR [rcx+rdx*2]
	mov	rcx, rbp
	sar	dx, 12
	add	eax, edx
	mov	WORD PTR 56[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rbp
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
.L117:
	xor	eax, eax
	lea	rdi, Task_FallingPlatformMain_Falling[rip]
	mov	WORD PTR 80[rbx], ax
	mov	rax, QWORD PTR [r12]
	mov	QWORD PTR 40[rax], rdi
	jmp	.L95
	.p2align 4,,10
	.p2align 3
.L118:
	mov	rax, QWORD PTR [r12]
	lea	rdi, Task_FallingPlatformMain_Falling[rip]
	mov	QWORD PTR 40[rax], rdi
	call	CreateRoomEvent
	mov	BYTE PTR [rax], 1
	movzx	edx, WORD PTR 8[rbx]
	mov	BYTE PTR 1[rax], dl
	movzx	edx, WORD PTR 10[rbx]
	mov	BYTE PTR 2[rax], dl
	movzx	edx, BYTE PTR 13[rbx]
	mov	BYTE PTR 4[rax], 1
	mov	BYTE PTR 3[rax], dl
	jmp	.L95
	.p2align 4,,10
	.p2align 3
.L120:
	cmp	QWORD PTR 64[rcx], rbp
	jne	.L101
	cmp	dx, 256
	je	.L102
	add	edx, 16
	mov	WORD PTR 96[rbx], dx
	jmp	.L102
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Platform
	.def	CreateEntity_Platform;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Platform
CreateEntity_Platform:
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
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	lea	rax, TaskDestructor_Platform[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rdi, rcx
	mov	r13d, r9d
	mov	esi, edx
	mov	r12d, r8d
	mov	edx, 112
	xor	r9d, r9d
	mov	r8d, 8208
	lea	rcx, Task_PlatformMain[rip]
	call	TaskCreate
	mov	ecx, r13d
	xor	r13d, r13d
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 8[rbx], si
	lea	rbp, 16[rbx]
	mov	WORD PTR 10[rbx], r12w
	mov	QWORD PTR [rbx], rdi
	movzx	eax, BYTE PTR [rdi]
	mov	QWORD PTR 84[rbx], 0
	movzx	edx, al
	mov	WORD PTR 96[rbx], r13w
	mov	dh, cl
	mov	WORD PTR 12[rbx], dx
	movzx	edx, BYTE PTR 5[rdi]
	cmp	BYTE PTR 6[rdi], dl
	jnb	.L122
	cmp	BYTE PTR 3[rdi], 0
	js	.L123
	xor	r11d, r11d
	mov	DWORD PTR 92[rbx], 4
	mov	WORD PTR 80[rbx], r11w
	jmp	.L124
	.p2align 4,,10
	.p2align 3
.L122:
	cmp	BYTE PTR 4[rdi], 0
	mov	DWORD PTR 92[rbx], 262144
	js	.L125
	xor	r9d, r9d
	mov	WORD PTR 80[rbx], r9w
.L124:
	movzx	r8d, BYTE PTR 1[rdi]
	movzx	esi, si
	movzx	r12d, r12w
	mov	ecx, 18
	sal	esi, 5
	sal	r12d, 5
	add	esi, eax
	add	r8d, r12d
	movzx	esi, si
	sal	r8d, 16
	or	r8d, esi
	movd	xmm0, r8d
	psllw	xmm0, 3
	movd	DWORD PTR 54[rbx], xmm0
	mov	BYTE PTR [rdi], -2
	call	VramMalloc
	mov	ecx, -256
	mov	DWORD PTR 58[rbx], 1152
	mov	QWORD PTR 24[rbx], rax
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	WORD PTR 64[rbx], cx
	mov	rcx, rbp
	movsx	rdx, BYTE PTR [rax]
	lea	rax, sPlatformLevelAnims[rip]
	mov	BYTE PTR 66[rbx], 16
	mov	BYTE PTR 69[rbx], 0
	movzx	eax, WORD PTR [rax+rdx*2]
	xor	edx, edx
	mov	DWORD PTR 72[rbx], -1
	mov	WORD PTR 52[rbx], dx
	mov	WORD PTR 34[rbx], ax
	xor	eax, eax
	mov	WORD PTR 32[rbx], ax
	mov	DWORD PTR 48[rbx], 8192
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	UpdateSpriteAnimation
	.p2align 4,,10
	.p2align 3
.L123:
	mov	r10d, 128
	mov	DWORD PTR 92[rbx], 4
	mov	WORD PTR 80[rbx], r10w
	jmp	.L124
	.p2align 4,,10
	.p2align 3
.L125:
	mov	r8d, 128
	mov	WORD PTR 80[rbx], r8w
	jmp	.L124
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_FallingPlatform
	.def	CreateEntity_FallingPlatform;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_FallingPlatform
CreateEntity_FallingPlatform:
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
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	lea	rax, TaskDestructor_Platform[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	r12, rcx
	mov	esi, edx
	mov	edi, r8d
	mov	r13d, r9d
	mov	r8d, 8208
	xor	r9d, r9d
	mov	edx, 112
	lea	rcx, Task_FallingPlatformMain_Idle[rip]
	call	TaskCreate
	mov	ecx, r13d
	xor	r8d, r8d
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 8[rbx], si
	movzx	esi, si
	lea	rbp, 16[rbx]
	mov	WORD PTR 10[rbx], di
	sal	esi, 5
	movzx	edi, di
	mov	QWORD PTR [rbx], r12
	movzx	eax, BYTE PTR [r12]
	sal	edi, 5
	mov	QWORD PTR 84[rbx], 0
	add	esi, eax
	movzx	edx, al
	mov	WORD PTR 96[rbx], r8w
	mov	dh, cl
	sal	esi, 3
	mov	DWORD PTR 92[rbx], 0
	mov	ecx, 18
	mov	WORD PTR 12[rbx], dx
	mov	WORD PTR 54[rbx], si
	movzx	eax, BYTE PTR 1[r12]
	mov	QWORD PTR 100[rbx], 0
	add	eax, edi
	sal	eax, 3
	mov	WORD PTR 56[rbx], ax
	mov	BYTE PTR [r12], -2
	call	VramMalloc
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	mov	BYTE PTR 64[rbx], 0
	mov	QWORD PTR 24[rbx], rax
	mov	eax, 541
	cmp	BYTE PTR [rdx], 5
	je	.L127
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movsx	rdx, BYTE PTR [rax]
	lea	rax, sPlatformLevelAnims[rip]
	movzx	eax, WORD PTR [rax+rdx*2]
.L127:
	mov	ecx, 4351
	mov	WORD PTR 34[rbx], ax
	xor	edx, edx
	xor	eax, eax
	mov	WORD PTR 65[rbx], cx
	mov	rcx, rbp
	mov	WORD PTR 32[rbx], ax
	mov	WORD PTR 52[rbx], dx
	mov	DWORD PTR 58[rbx], 1152
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 8192
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.p2align 4
	.globl	HandlePlatformOffsetYStorage
	.def	HandlePlatformOffsetYStorage;	.scl	2;	.type	32;	.endef
	.seh_proc	HandlePlatformOffsetYStorage
HandlePlatformOffsetYStorage:
	.seh_endprologue
	movq	xmm0, QWORD PTR 96[rcx]
	movq	xmm1, QWORD PTR 88[rcx]
	movss	xmm0, xmm1
	movq	QWORD PTR 100[rcx], xmm0
	ret
	.seh_endproc
	.globl	sPlatformLevelAnims
	.section .rdata,"dr"
	.align 32
sPlatformLevelAnims:
	.word	541
	.word	541
	.word	541
	.word	541
	.word	566
	.word	566
	.word	566
	.word	566
	.word	574
	.word	574
	.word	574
	.word	574
	.word	581
	.word	581
	.word	581
	.word	581
	.word	593
	.word	593
	.word	593
	.word	593
	.word	597
	.word	597
	.word	597
	.word	597
	.word	617
	.word	617
	.word	617
	.word	617
	.word	541
	.word	541
	.word	541
	.word	541
	.word	541
	.word	541
	.word	541
	.word	541
	.word	541
	.word	541
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Platform;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	CreateRoomEvent;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
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
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
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
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
