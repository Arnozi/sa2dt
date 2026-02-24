	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_Platform_Square;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_Platform_Square
TaskDestructor_Platform_Square:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	Task_Platform_Square;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Platform_Square
Task_Platform_Square:
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	movzx	edx, BYTE PTR [rax]
	mov	r15, QWORD PTR [rbx]
	lea	r13, 16[rbx]
	cmp	dl, 2
	jbe	.L4
	mov	rax, QWORD PTR 108[rbx]
	movdqu	xmm1, XMMWORD PTR 100[rbx]
	movdqu	xmm0, XMMWORD PTR 84[rbx]
	mov	QWORD PTR 116[rbx], rax
	shufps	xmm0, xmm1, 68
	movups	XMMWORD PTR 100[rbx], xmm0
.L4:
	movzx	r8d, WORD PTR 92[rbx]
	xor	eax, eax
	test	r8w, r8w
	je	.L5
	mov	r9, QWORD PTR .refptr.gStageTime[rip]
	movzx	eax, WORD PTR 80[rbx]
	mov	ecx, DWORD PTR 84[rbx]
	add	eax, DWORD PTR [r9]
	movzx	eax, al
	imul	eax, r8d
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	and	eax, 1023
	movsx	eax, WORD PTR [r8+rax*2]
	movzx	r8d, BYTE PTR 5[r15]
	sal	r8d, 11
	imul	eax, r8d
	sar	eax, 14
	mov	DWORD PTR 84[rbx], eax
	sub	eax, ecx
.L5:
	movzx	r9d, WORD PTR 94[rbx]
	mov	DWORD PTR 48[rsp], 0
	test	r9w, r9w
	je	.L6
	mov	r10, QWORD PTR .refptr.gStageTime[rip]
	movzx	ecx, WORD PTR 80[rbx]
	mov	r8d, DWORD PTR 88[rbx]
	add	ecx, DWORD PTR [r10]
	movzx	ecx, cl
	imul	ecx, r9d
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	and	ecx, 1023
	movsx	ecx, WORD PTR [r9+rcx*2]
	movzx	r9d, BYTE PTR 6[r15]
	sal	r9d, 11
	imul	ecx, r9d
	sar	ecx, 14
	mov	DWORD PTR 88[rbx], ecx
	sub	ecx, r8d
	mov	DWORD PTR 48[rsp], ecx
.L6:
	movzx	esi, WORD PTR 8[rbx]
	movzx	ecx, BYTE PTR 12[rbx]
	movzx	edi, WORD PTR 10[rbx]
	mov	r12, QWORD PTR .refptr.gCamera[rip]
	sal	esi, 5
	add	esi, ecx
	movzx	ecx, BYTE PTR 1[r15]
	sal	edi, 5
	mov	r8d, DWORD PTR 4[r12]
	sal	esi, 3
	add	edi, ecx
	mov	ecx, DWORD PTR [r12]
	sal	edi, 3
	cmp	dl, 2
	mov	edx, esi
	jbe	.L7
	add	dx, WORD PTR 109[rbx]
	sub	edx, ecx
	movzx	ecx, WORD PTR 113[rbx]
	add	ecx, edi
	sub	ecx, r8d
.L8:
	mov	rbp, QWORD PTR .refptr.gPlayer[rip]
	mov	WORD PTR 56[rbx], cx
	mov	WORD PTR 54[rbx], dx
	mov	r14d, DWORD PTR 36[rbp]
	test	r14b, 8
	je	.L9
	cmp	QWORD PTR 64[rbp], r13
	je	.L70
.L9:
	movsx	esi, si
	test	r14d, 4194304
	je	.L71
.L19:
	sub	esi, DWORD PTR [r12]
	sub	esi, -128
	cmp	esi, 682
	ja	.L42
	movsx	edi, di
	sub	edi, DWORD PTR 4[r12]
	sub	edi, -128
	cmp	edi, 496
	jbe	.L43
.L42:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR [r15], al
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	add	rsp, 72
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
.L7:
	add	dx, WORD PTR 85[rbx]
	sub	edx, ecx
	movzx	ecx, WORD PTR 89[rbx]
	add	ecx, edi
	sub	ecx, r8d
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L71:
	mov	eax, DWORD PTR 88[rbx]
	mov	edx, DWORD PTR 84[rbx]
	movsx	ecx, di
	sub	BYTE PTR 77[rbx], 3
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	sar	eax, 8
	sar	edx, 8
	mov	DWORD PTR 52[rsp], ecx
	lea	r8d, [rax+rcx]
	add	edx, esi
	mov	rcx, r13
	call	Coll_Player_Platform
	mov	r10d, eax
	test	eax, 196608
	je	.L21
	cmp	BYTE PTR 141[rbp], 3
	je	.L72
.L22:
	mov	eax, r10d
	sal	eax, 8
	movsx	r11d, ax
	mov	eax, DWORD PTR 16[rbp]
	add	eax, r11d
	mov	DWORD PTR 16[rbp], eax
	test	r10d, 131072
	je	.L24
	cmp	WORD PTR 22[rbp], 0
	jle	.L73
.L25:
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rdx], -128
	jne	.L74
.L26:
	movsx	ecx, BYTE PTR 27[rbp]
	sar	eax, 8
	mov	edx, DWORD PTR 12[rbp]
	mov	r9d, 8
	movzx	r8d, BYTE PTR 60[rbp]
	mov	DWORD PTR 60[rsp], r10d
	add	ecx, eax
	mov	rax, QWORD PTR .refptr.sub_801EC3C[rip]
	sar	edx, 8
	mov	DWORD PTR 56[rsp], r11d
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F100
	mov	r11d, DWORD PTR 56[rsp]
	mov	r10d, DWORD PTR 60[rsp]
	test	eax, eax
	jns	.L24
	mov	eax, DWORD PTR 48[rsp]
	test	eax, eax
	jle	.L24
	xor	r9d, r9d
	xor	eax, eax
	or	DWORD PTR 36[rbp], 128
	mov	WORD PTR 24[rbp], r9w
	mov	WORD PTR 20[rbp], ax
.L24:
	test	r10d, 65536
	je	.L21
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	mov	eax, DWORD PTR 16[rbp]
	test	BYTE PTR [rdx], -128
	je	.L29
	sub	eax, r11d
	add	BYTE PTR 76[rbx], 16
	mov	edx, DWORD PTR 84[rbx]
	mov	r9, rbp
	sub	BYTE PTR 78[rbx], 16
	mov	ecx, DWORD PTR 52[rsp]
	mov	DWORD PTR 16[rbp], eax
	mov	eax, DWORD PTR 88[rbx]
	sar	edx, 8
	add	edx, esi
	mov	DWORD PTR 60[rsp], r10d
	sar	eax, 8
	mov	DWORD PTR 56[rsp], r11d
	lea	r8d, [rax+rcx]
	mov	rcx, r13
	call	Coll_Player_Platform
	mov	edx, DWORD PTR 16[rbp]
	mov	r11d, DWORD PTR 56[rsp]
	mov	DWORD PTR 36[rbp], r14d
	sub	BYTE PTR 76[rbx], 16
	mov	r10d, DWORD PTR 60[rsp]
	add	BYTE PTR 78[rbx], 16
	lea	ecx, [r11+rdx]
	test	eax, 786432
	mov	DWORD PTR 16[rbp], ecx
	je	.L30
	mov	r8d, eax
	and	r8w, -256
	js	.L75
	je	.L32
	mov	r9d, DWORD PTR 12[rbp]
	movsx	r8d, r8w
	lea	r8d, 4096[r8+r9]
	mov	DWORD PTR 12[rbp], r8d
.L32:
	xor	r14d, r14d
	xor	r8d, r8d
	mov	WORD PTR 20[rbp], r14w
	mov	WORD PTR 24[rbp], r8w
.L30:
	test	eax, 65536
	jne	.L76
	mov	DWORD PTR 16[rbp], edx
	.p2align 4,,10
	.p2align 3
.L21:
	test	r10d, 786432
	je	.L37
	test	BYTE PTR 36[rbp], 8
	jne	.L37
	cmp	QWORD PTR 64[rbp], r13
	je	.L37
	mov	eax, r10d
	xor	r9d, r9d
	xor	r11d, r11d
	xor	al, al
	mov	WORD PTR 20[rbp], r9w
	cwde
	add	eax, DWORD PTR 12[rbp]
	mov	WORD PTR 24[rbp], r11w
	mov	DWORD PTR 12[rbp], eax
	test	r10d, 262144
	jne	.L77
.L40:
	and	r10d, 524288
	jne	.L78
	.p2align 4,,10
	.p2align 3
.L37:
	add	BYTE PTR 77[rbx], 3
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L70:
	mov	edx, DWORD PTR 16[rbp]
	mov	r11d, DWORD PTR 48[rsp]
	mov	r8, QWORD PTR .refptr.gStageFlags[rip]
	add	eax, DWORD PTR 12[rbp]
	mov	DWORD PTR 12[rbp], eax
	lea	ecx, -512[r11+rdx]
	test	BYTE PTR [r8], -128
	jne	.L11
	lea	ecx, 256[r11+rdx]
.L11:
	movsx	edx, BYTE PTR 26[rbp]
	sar	eax, 8
	mov	DWORD PTR 16[rbp], ecx
	sar	ecx, 8
	mov	r14, QWORD PTR .refptr.sub_801EC3C[rip]
	movzx	r8d, BYTE PTR 60[rbp]
	mov	r9d, 8
	add	edx, eax
	movsx	eax, BYTE PTR 27[rbp]
	mov	QWORD PTR 32[rsp], r14
	add	ecx, eax
	call	sub_801F100
	test	eax, eax
	js	.L12
	mov	eax, DWORD PTR 16[rbp]
.L13:
	sar	eax, 8
	movsx	ecx, BYTE PTR 26[rbp]
	movzx	r8d, BYTE PTR 60[rbp]
	mov	r9d, 8
	mov	edx, eax
	mov	eax, DWORD PTR 12[rbp]
	sar	eax, 8
	lea	ecx, 2[rax+rcx]
	mov	rax, QWORD PTR .refptr.sub_801EB44[rip]
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F100
	test	eax, eax
	js	.L14
	mov	eax, DWORD PTR 12[rbp]
.L15:
	sar	eax, 8
	mov	edx, DWORD PTR 16[rbp]
	movzx	r8d, BYTE PTR 60[rbp]
	mov	r9d, -8
	lea	ecx, -2[rax]
	movsx	eax, BYTE PTR 26[rbp]
	sar	edx, 8
	sub	ecx, eax
	mov	rax, QWORD PTR .refptr.sub_801EB44[rip]
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F100
	test	eax, eax
	js	.L16
	mov	edx, DWORD PTR 12[rbp]
.L17:
	movsx	eax, BYTE PTR 26[rbp]
	mov	ecx, DWORD PTR 16[rbp]
	sar	edx, 8
	mov	r9d, 8
	movzx	r8d, BYTE PTR 60[rbp]
	sub	edx, eax
	movsx	eax, BYTE PTR 27[rbp]
	mov	QWORD PTR 32[rsp], r14
	sar	ecx, 8
	add	ecx, eax
	call	sub_801F100
	test	eax, eax
	js	.L18
	mov	r14d, DWORD PTR 36[rbp]
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L43:
	mov	rcx, r13
	add	rsp, 72
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
	mov	r14d, DWORD PTR 36[rbp]
	sal	eax, 8
	mov	QWORD PTR 64[rbp], 0
	add	DWORD PTR 16[rbp], eax
	and	r14d, -9
	or	r14d, 2
	mov	DWORD PTR 36[rbp], r14d
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L16:
	mov	edx, DWORD PTR 12[rbp]
	sal	eax, 8
	sub	edx, eax
	mov	DWORD PTR 12[rbp], edx
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L14:
	sal	eax, 8
	add	eax, DWORD PTR 12[rbp]
	mov	DWORD PTR 12[rbp], eax
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L12:
	mov	edx, DWORD PTR 36[rbp]
	sal	eax, 8
	add	eax, DWORD PTR 16[rbp]
	mov	QWORD PTR 64[rbp], 0
	mov	DWORD PTR 16[rbp], eax
	and	edx, -9
	or	edx, 2
	mov	DWORD PTR 36[rbp], edx
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L72:
	movzx	eax, WORD PTR 108[rbp]
	sub	eax, 100
	cmp	ax, 5
	ja	.L22
	mov	BYTE PTR 117[rbp], 4
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L29:
	movsx	r9d, BYTE PTR 27[rbp]
	sar	eax, 8
	xor	edx, edx
	movzx	r8d, BYTE PTR 60[rbp]
	mov	WORD PTR 22[rbp], dx
	mov	edx, DWORD PTR 12[rbp]
	sub	eax, r9d
	mov	r9d, -8
	mov	DWORD PTR 52[rsp], r10d
	mov	ecx, eax
	mov	rax, QWORD PTR .refptr.sub_801EC3C[rip]
	sar	edx, 8
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F100
	test	DWORD PTR 48[rsp], eax
	mov	r10d, DWORD PTR 52[rsp]
	jns	.L21
.L69:
	xor	r14d, r14d
	xor	eax, eax
	or	DWORD PTR 36[rbp], 128
	mov	WORD PTR 24[rbp], r14w
	mov	WORD PTR 20[rbp], ax
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L74:
	mov	edx, DWORD PTR 36[rbp]
	mov	QWORD PTR 64[rbp], r13
	and	edx, -3
	or	edx, 8
	mov	DWORD PTR 36[rbp], edx
	xor	edx, edx
	mov	WORD PTR 22[rbp], dx
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L73:
	xor	ecx, ecx
	mov	WORD PTR 22[rbp], cx
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L78:
	mov	ecx, DWORD PTR 12[rbp]
	movsx	eax, BYTE PTR 26[rbp]
	mov	r9d, 8
	mov	edx, DWORD PTR 16[rbp]
	movzx	r8d, BYTE PTR 60[rbp]
	sar	ecx, 8
	sub	ecx, 2
	sar	edx, 8
	sub	ecx, eax
	mov	rax, QWORD PTR .refptr.sub_801EB44[rip]
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F100
	test	eax, eax
	jns	.L37
	xor	eax, eax
	xor	edx, edx
	or	DWORD PTR 36[rbp], 128
	mov	WORD PTR 24[rbp], ax
	mov	WORD PTR 20[rbp], dx
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L77:
	movsx	ecx, BYTE PTR 26[rbp]
	sar	eax, 8
	mov	edx, DWORD PTR 16[rbp]
	mov	r9d, -8
	movzx	r8d, BYTE PTR 60[rbp]
	mov	DWORD PTR 48[rsp], r10d
	lea	ecx, 2[rax+rcx]
	mov	rax, QWORD PTR .refptr.sub_801EB44[rip]
	sar	edx, 8
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F100
	mov	r10d, DWORD PTR 48[rsp]
	test	eax, eax
	jns	.L40
	xor	ecx, ecx
	xor	r8d, r8d
	or	DWORD PTR 36[rbp], 128
	mov	WORD PTR 24[rbp], cx
	mov	WORD PTR 20[rbp], r8w
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L76:
	movsx	r9d, BYTE PTR 27[rbp]
	mov	eax, ecx
	mov	edx, DWORD PTR 12[rbp]
	mov	DWORD PTR 56[rsp], r10d
	sar	eax, 8
	movzx	r8d, BYTE PTR 60[rbp]
	mov	DWORD PTR 52[rsp], r11d
	sub	eax, r9d
	sar	edx, 8
	mov	r9d, -8
	mov	ecx, eax
	mov	rax, QWORD PTR .refptr.sub_801EC3C[rip]
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F100
	mov	r11d, DWORD PTR 52[rsp]
	mov	r10d, DWORD PTR 56[rsp]
	test	eax, eax
	js	.L79
	xor	ecx, ecx
	sub	DWORD PTR 16[rbp], r11d
	mov	WORD PTR 24[rbp], cx
	mov	DWORD PTR 20[rbp], 0
	jmp	.L21
.L75:
	mov	r9d, DWORD PTR 12[rbp]
	movsx	r8d, r8w
	lea	r8d, -4096[r8+r9]
	mov	DWORD PTR 12[rbp], r8d
	jmp	.L32
.L79:
	mov	r9d, DWORD PTR 48[rsp]
	test	r9d, r9d
	js	.L69
	xor	r8d, r8d
	sub	DWORD PTR 16[rbp], r11d
	mov	WORD PTR 24[rbp], r8w
	jmp	.L21
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Platform_Square
	.def	CreateEntity_Platform_Square;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Platform_Square
CreateEntity_Platform_Square:
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
	lea	rax, TaskDestructor_Platform_Square[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rdi, rcx
	mov	r13d, r9d
	mov	esi, edx
	mov	r12d, r8d
	mov	edx, 128
	xor	r9d, r9d
	mov	r8d, 8208
	lea	rcx, Task_Platform_Square[rip]
	call	TaskCreate
	mov	ecx, r13d
	xor	r13d, r13d
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 8[rbx], si
	lea	rbp, 16[rbx]
	mov	WORD PTR 10[rbx], r12w
	mov	QWORD PTR [rbx], rdi
	movzx	edx, BYTE PTR [rdi]
	mov	QWORD PTR 84[rbx], 0
	movzx	eax, dl
	mov	WORD PTR 96[rbx], r13w
	mov	ah, cl
	mov	WORD PTR 12[rbx], ax
	movzx	eax, BYTE PTR 5[rdi]
	cmp	BYTE PTR 6[rdi], al
	jnb	.L81
	cmp	BYTE PTR 3[rdi], 0
	js	.L82
	xor	r11d, r11d
	mov	DWORD PTR 92[rbx], 4
	mov	WORD PTR 80[rbx], r11w
	jmp	.L83
	.p2align 4,,10
	.p2align 3
.L81:
	cmp	BYTE PTR 4[rdi], 0
	mov	DWORD PTR 92[rbx], 262144
	js	.L84
	xor	r9d, r9d
	mov	WORD PTR 80[rbx], r9w
.L83:
	movzx	eax, si
	pxor	xmm0, xmm0
	movzx	r12d, r12w
	mov	QWORD PTR 116[rbx], 0
	sal	eax, 5
	movups	XMMWORD PTR 100[rbx], xmm0
	sal	r12d, 5
	lea	rsi, sAnimsPlatformSquare[rip]
	add	eax, edx
	movzx	edx, BYTE PTR 1[rdi]
	movzx	eax, ax
	add	edx, r12d
	sal	edx, 16
	or	edx, eax
	movd	xmm0, edx
	psllw	xmm0, 3
	movd	DWORD PTR 54[rbx], xmm0
	mov	BYTE PTR [rdi], -2
	mov	rdi, QWORD PTR .refptr.gCurrentLevel[rip]
	movzx	eax, BYTE PTR [rdi]
	sar	al, 2
	movsx	rax, al
	lea	rax, [rax+rax*2]
	movzx	ecx, WORD PTR [rsi+rax*2]
	call	VramMalloc
	mov	ecx, 4351
	mov	BYTE PTR 69[rbx], 0
	mov	QWORD PTR 24[rbx], rax
	movzx	eax, BYTE PTR [rdi]
	mov	WORD PTR 65[rbx], cx
	mov	rcx, rbp
	sar	al, 2
	mov	DWORD PTR 58[rbx], 1152
	movsx	rax, al
	mov	DWORD PTR 72[rbx], -1
	lea	rax, [rax+rax*2]
	mov	DWORD PTR 48[rbx], 8192
	lea	rax, [rsi+rax*2]
	movzx	edx, WORD PTR 2[rax]
	movzx	eax, WORD PTR 4[rax]
	mov	WORD PTR 34[rbx], dx
	xor	edx, edx
	mov	BYTE PTR 64[rbx], al
	xor	eax, eax
	mov	WORD PTR 32[rbx], ax
	mov	WORD PTR 52[rbx], dx
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
.L82:
	mov	r10d, 128
	mov	DWORD PTR 92[rbx], 4
	mov	WORD PTR 80[rbx], r10w
	jmp	.L83
	.p2align 4,,10
	.p2align 3
.L84:
	mov	r8d, 128
	mov	WORD PTR 80[rbx], r8w
	jmp	.L83
	.seh_endproc
	.section .rdata,"dr"
	.align 32
sAnimsPlatformSquare:
	.word	36
	.word	613
	.word	0
	.word	36
	.word	613
	.word	0
	.word	36
	.word	574
	.word	1
	.word	36
	.word	581
	.word	2
	.word	36
	.word	594
	.word	0
	.word	36
	.word	597
	.word	2
	.word	36
	.word	613
	.word	0
	.word	36
	.word	613
	.word	0
	.word	36
	.word	613
	.word	0
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Platform;	.scl	2;	.type	32;	.endef
	.def	sub_801F100;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.sub_801EB44, "dr"
	.globl	.refptr.sub_801EB44
	.linkonce	discard
.refptr.sub_801EB44:
	.quad	sub_801EB44
	.section	.rdata$.refptr.sub_801EC3C, "dr"
	.globl	.refptr.sub_801EC3C
	.linkonce	discard
.refptr.sub_801EC3C:
	.quad	sub_801EC3C
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
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
