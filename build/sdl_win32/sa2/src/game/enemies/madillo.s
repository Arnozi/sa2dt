	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	Task_MadilloMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_MadilloMain
Task_MadilloMain:
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
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	r12, QWORD PTR .refptr.sub_801EC3C[rip]
	mov	r9d, 8
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR [rbx]
	mov	edx, DWORD PTR 88[rbx]
	lea	rdi, 16[rbx]
	add	edx, DWORD PTR 80[rbx]
	mov	ecx, DWORD PTR 92[rbx]
	movzx	r8d, BYTE PTR 100[rbx]
	add	ecx, DWORD PTR 84[rbx]
	mov	QWORD PTR 32[rsp], r12
	sar	edx, 8
	sar	ecx, 8
	mov	QWORD PTR 56[rsp], rax
	call	sub_801F100
	test	eax, eax
	js	.L12
.L2:
	mov	r12d, DWORD PTR 92[rbx]
	test	eax, eax
	jle	.L3
	sal	eax, 8
	add	r12d, eax
	mov	DWORD PTR 92[rbx], r12d
.L3:
	mov	r14d, DWORD PTR 88[rbx]
	add	r14d, DWORD PTR 80[rbx]
	xor	r9d, r9d
	mov	rcx, rdi
	mov	r15, QWORD PTR .refptr.gCamera[rip]
	add	r12d, DWORD PTR 84[rbx]
	mov	ebp, r14d
	sar	ebp, 8
	mov	r13d, r12d
	sar	r13d, 8
	mov	eax, ebp
	sub	ax, WORD PTR [r15]
	mov	edx, ebp
	mov	WORD PTR 54[rbx], ax
	mov	eax, r13d
	sub	ax, WORD PTR 4[r15]
	mov	r8d, r13d
	mov	WORD PTR 56[rbx], ax
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L10
	mov	eax, DWORD PTR 80[rbx]
	mov	edx, DWORD PTR [r15]
	sar	eax, 8
	lea	ecx, 554[rdx]
	cmp	eax, ecx
	jle	.L13
.L5:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L7
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L6
.L7:
	movzx	eax, BYTE PTR 12[rbx]
	mov	rdi, QWORD PTR 56[rsp]
	mov	BYTE PTR [rdi], al
.L10:
	mov	rcx, QWORD PTR [rsi]
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
.L13:
	add	edx, -128
	cmp	eax, edx
	jl	.L5
	mov	eax, DWORD PTR 84[rbx]
	mov	edx, DWORD PTR 4[r15]
	sar	eax, 8
	lea	ecx, 368[rdx]
	cmp	eax, ecx
	jg	.L5
	add	edx, -128
	cmp	eax, edx
	jl	.L5
	.p2align 4,,10
	.p2align 3
.L6:
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	sub	r13d, 50
	mov	ecx, r14d
	sal	r13d, 8
	xor	cl, cl
	mov	eax, DWORD PTR 16[rdx]
	cmp	r13d, eax
	jge	.L8
	add	r13d, 25600
	cmp	eax, r13d
	jge	.L8
	mov	eax, DWORD PTR 12[rdx]
	cmp	eax, ecx
	jge	.L9
	lea	edx, -120[rbp]
	sal	edx, 8
	cmp	eax, edx
	jle	.L9
	mov	rax, QWORD PTR 56[rsp]
	mov	edx, DWORD PTR 88[rbx]
	movsx	eax, BYTE PTR 3[rax]
	sar	edx, 8
	sal	eax, 3
	cmp	edx, eax
	jle	.L8
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_8056230[rip]
	mov	r8d, 503
	mov	r9d, -255
	mov	QWORD PTR 40[rax], rsi
	and	DWORD PTR 48[rbx], -1025
	mov	WORD PTR 34[rbx], r8w
	mov	WORD PTR 64[rbx], r9w
.L8:
	mov	edx, r12d
	xor	dl, dl
	call	Player_UpdateHomingPosition
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	mov	rcx, rdi
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
.L12:
	sal	eax, 8
	add	eax, DWORD PTR 92[rbx]
	mov	edx, DWORD PTR 88[rbx]
	mov	r9d, 8
	add	edx, DWORD PTR 80[rbx]
	movzx	r8d, BYTE PTR 100[rbx]
	mov	DWORD PTR 92[rbx], eax
	add	eax, DWORD PTR 84[rbx]
	mov	QWORD PTR 32[rsp], r12
	sar	edx, 8
	sar	eax, 8
	mov	ecx, eax
	call	sub_801F100
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L9:
	lea	r10d, 120[rbp]
	sal	r10d, 8
	cmp	eax, r10d
	jge	.L8
	mov	r11, QWORD PTR 56[rsp]
	mov	edx, DWORD PTR 88[rbx]
	movsx	eax, BYTE PTR 3[r11]
	movzx	r8d, BYTE PTR 5[r11]
	sar	edx, 8
	add	eax, r8d
	sal	eax, 3
	cmp	edx, eax
	jge	.L8
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_8056230[rip]
	mov	edx, -255
	mov	QWORD PTR 40[rax], rsi
	mov	eax, 503
	or	DWORD PTR 48[rbx], 1024
	mov	WORD PTR 34[rbx], ax
	mov	WORD PTR 64[rbx], dx
	jmp	.L8
	.seh_endproc
	.p2align 4
	.def	Task_80564BC;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_80564BC
Task_80564BC:
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
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	r9d, 8
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	edx, DWORD PTR 88[rbx]
	mov	eax, DWORD PTR 96[rbx]
	lea	rdi, 16[rbx]
	mov	rbp, QWORD PTR [rbx]
	movzx	r8d, BYTE PTR 100[rbx]
	mov	ecx, edx
	add	edx, eax
	sub	ecx, eax
	test	BYTE PTR 49[rbx], 4
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	cmovne	edx, ecx
	mov	ecx, DWORD PTR 92[rbx]
	add	ecx, DWORD PTR 84[rbx]
	sar	ecx, 8
	mov	DWORD PTR 88[rbx], edx
	add	edx, DWORD PTR 80[rbx]
	mov	QWORD PTR 40[rsp], rax
	lea	rax, 60[rsp]
	sar	edx, 8
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F07C
	test	eax, eax
	js	.L28
.L17:
	mov	edx, DWORD PTR 92[rbx]
	test	eax, eax
	jle	.L18
	sal	eax, 8
	add	edx, eax
	mov	DWORD PTR 92[rbx], edx
.L18:
	imul	ecx, DWORD PTR 96[rbx], 90
	mov	r13d, DWORD PTR 88[rbx]
	mov	r14, QWORD PTR .refptr.gCamera[rip]
	movsx	rax, ecx
	sar	ecx, 31
	imul	rax, rax, 1374389535
	sar	rax, 37
	sub	eax, ecx
	lea	ecx, 31[rax]
	cmp	ecx, 62
	mov	ecx, 0
	cmovbe	eax, ecx
	add	r13d, DWORD PTR 80[rbx]
	add	edx, DWORD PTR 84[rbx]
	xor	r9d, r9d
	mov	r8d, edx
	mov	r12d, edx
	mov	rcx, rdi
	mov	DWORD PTR 96[rbx], eax
	mov	eax, r13d
	sar	r8d, 8
	sar	eax, 8
	mov	edx, eax
	sub	dx, WORD PTR [r14]
	mov	WORD PTR 54[rbx], dx
	mov	edx, r8d
	sub	dx, WORD PTR 4[r14]
	mov	WORD PTR 56[rbx], dx
	mov	edx, eax
	call	Coll_Player_Enemy_Attack
	test	eax, eax
	jne	.L27
	mov	eax, DWORD PTR 80[rbx]
	mov	edx, DWORD PTR [r14]
	sar	eax, 8
	lea	ecx, 554[rdx]
	cmp	eax, ecx
	jle	.L29
.L22:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L24
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L23
.L24:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR 0[rbp], al
.L27:
	mov	rcx, QWORD PTR [rsi]
	call	TaskDestroy
	nop
	add	rsp, 64
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
.L29:
	add	edx, -128
	cmp	eax, edx
	jl	.L22
	mov	eax, DWORD PTR 84[rbx]
	mov	edx, DWORD PTR 4[r14]
	sar	eax, 8
	lea	ecx, 368[rdx]
	cmp	eax, ecx
	jg	.L22
	add	edx, -128
	cmp	eax, edx
	jl	.L22
	.p2align 4,,10
	.p2align 3
.L23:
	mov	edx, r12d
	mov	ecx, r13d
	xor	dl, dl
	xor	cl, cl
	call	Player_UpdateHomingPosition
	sub	BYTE PTR 101[rbx], 1
	jne	.L25
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_MadilloMain[rip]
	mov	BYTE PTR 101[rbx], 120
	mov	edx, -256
	mov	DWORD PTR 96[rbx], -384
	mov	QWORD PTR 40[rax], rsi
	mov	eax, 503
	mov	WORD PTR 34[rbx], ax
	mov	WORD PTR 64[rbx], dx
.L25:
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	call	DisplaySprite
	nop
	add	rsp, 64
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
.L28:
	sal	eax, 8
	add	eax, DWORD PTR 92[rbx]
	mov	edx, DWORD PTR 88[rbx]
	mov	r9d, 8
	add	edx, DWORD PTR 80[rbx]
	movzx	r8d, BYTE PTR 100[rbx]
	mov	DWORD PTR 92[rbx], eax
	add	eax, DWORD PTR 84[rbx]
	sar	edx, 8
	sar	eax, 8
	mov	ecx, eax
	mov	rax, QWORD PTR .refptr.sub_801EC3C[rip]
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F100
	jmp	.L17
	.seh_endproc
	.p2align 4
	.def	Task_8056230;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_8056230
Task_8056230:
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
	sub	rsp, 88
	.seh_stackalloc	88
	.seh_endprologue
	mov	rbp, QWORD PTR .refptr.gCurTask[rip]
	mov	r9d, 8
	mov	rax, QWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rax]
	mov	edx, DWORD PTR 88[rbx]
	mov	eax, DWORD PTR 96[rbx]
	mov	r12, QWORD PTR [rbx]
	movzx	r8d, BYTE PTR 100[rbx]
	mov	ecx, edx
	add	edx, eax
	sub	ecx, eax
	test	BYTE PTR 49[rbx], 4
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	cmovne	edx, ecx
	mov	ecx, DWORD PTR 92[rbx]
	add	ecx, DWORD PTR 84[rbx]
	sar	ecx, 8
	mov	DWORD PTR 88[rbx], edx
	add	edx, DWORD PTR 80[rbx]
	mov	QWORD PTR 40[rsp], rax
	lea	rax, 76[rsp]
	sar	edx, 8
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F07C
	test	eax, eax
	js	.L47
.L33:
	mov	esi, DWORD PTR 92[rbx]
	test	eax, eax
	jle	.L34
	sal	eax, 8
	add	esi, eax
	mov	DWORD PTR 92[rbx], esi
.L34:
	mov	eax, DWORD PTR 80[rbx]
	mov	edi, DWORD PTR 88[rbx]
	mov	r15, QWORD PTR .refptr.gCamera[rip]
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	add	edi, eax
	add	esi, DWORD PTR 84[rbx]
	mov	r11d, edi
	mov	edx, DWORD PTR [r15]
	mov	r8, QWORD PTR 160[r9]
	mov	r14d, esi
	sar	r11d, 8
	sar	r14d, 8
	mov	ecx, r11d
	sub	ecx, edx
	mov	WORD PTR 54[rbx], cx
	mov	ecx, r14d
	sub	cx, WORD PTR 4[r15]
	cmp	DWORD PTR 72[r8], -1
	mov	WORD PTR 56[rbx], cx
	je	.L35
	mov	r13d, DWORD PTR 12[r9]
	movsx	r10d, BYTE PTR 76[rbx]
	movsx	ecx, BYTE PTR 76[r8]
	sar	r13d, 8
	add	r10d, r11d
	add	ecx, r13d
	mov	DWORD PTR 60[rsp], r13d
	cmp	r10d, ecx
	jg	.L36
	movsx	r13d, BYTE PTR 78[rbx]
	add	r11d, r13d
	cmp	ecx, r11d
	jg	.L48
.L37:
	mov	r11d, DWORD PTR 16[r9]
	movsx	r10d, BYTE PTR 77[rbx]
	movsx	ecx, BYTE PTR 77[r8]
	sar	r11d, 8
	add	r10d, r14d
	add	ecx, r11d
	cmp	r10d, ecx
	jg	.L38
	movsx	r13d, BYTE PTR 79[rbx]
	add	r13d, r14d
	cmp	ecx, r13d
	jle	.L39
	cmp	r10d, ecx
	je	.L38
	.p2align 4,,10
	.p2align 3
.L35:
	sar	eax, 8
	lea	ecx, 554[rdx]
	cmp	eax, ecx
	jg	.L40
	add	edx, -128
	cmp	eax, edx
	jge	.L49
.L40:
	movzx	eax, WORD PTR 54[rbx]
	sub	ax, -128
	cmp	ax, 682
	ja	.L42
	movzx	eax, WORD PTR 56[rbx]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L41
.L42:
	movzx	eax, BYTE PTR 12[rbx]
	mov	BYTE PTR [r12], al
	mov	rcx, QWORD PTR 0[rbp]
	call	TaskDestroy
	nop
.L30:
	add	rsp, 88
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
.L48:
	cmp	r10d, ecx
	jne	.L35
	.p2align 4,,10
	.p2align 3
.L36:
	movsx	ecx, BYTE PTR 78[r8]
	mov	r11d, DWORD PTR 60[rsp]
	add	ecx, r11d
	cmp	r10d, ecx
	jg	.L35
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L49:
	mov	eax, DWORD PTR 84[rbx]
	mov	edx, DWORD PTR 4[r15]
	sar	eax, 8
	lea	ecx, 368[rdx]
	cmp	eax, ecx
	jg	.L40
	add	edx, -128
	cmp	eax, edx
	jl	.L40
	.p2align 4,,10
	.p2align 3
.L41:
	mov	eax, DWORD PTR 88[rbx]
	movsx	ecx, BYTE PTR 3[r12]
	sar	eax, 8
	test	BYTE PTR 49[rbx], 4
	je	.L44
	movzx	edx, BYTE PTR 5[r12]
	add	edx, ecx
	sal	edx, 3
	cmp	edx, eax
	jge	.L46
.L45:
	mov	rax, QWORD PTR 0[rbp]
	lea	rdx, Task_80564BC[rip]
	mov	QWORD PTR 40[rax], rdx
	mov	eax, 503
	mov	edx, -256
	mov	WORD PTR 34[rbx], ax
	mov	WORD PTR 64[rbx], dx
	mov	BYTE PTR 101[rbx], 120
.L46:
	xor	sil, sil
	xor	dil, dil
	add	rbx, 16
	mov	edx, esi
	mov	ecx, edi
	call	Player_UpdateHomingPosition
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	call	DisplaySprite
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L47:
	sal	eax, 8
	add	eax, DWORD PTR 92[rbx]
	mov	edx, DWORD PTR 88[rbx]
	mov	r9d, 8
	add	edx, DWORD PTR 80[rbx]
	movzx	r8d, BYTE PTR 100[rbx]
	mov	DWORD PTR 92[rbx], eax
	add	eax, DWORD PTR 84[rbx]
	sar	edx, 8
	sar	eax, 8
	mov	ecx, eax
	mov	rax, QWORD PTR .refptr.sub_801EC3C[rip]
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F100
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L44:
	sal	ecx, 3
	cmp	ecx, eax
	jle	.L46
	jmp	.L45
	.p2align 4,,10
	.p2align 3
.L38:
	movsx	ecx, BYTE PTR 79[r8]
	add	ecx, r11d
	cmp	r10d, ecx
	jg	.L35
.L39:
	test	BYTE PTR 59[r9], 2
	jne	.L35
	mov	rcx, r9
	call	Coll_DamagePlayer
	mov	eax, DWORD PTR 80[rbx]
	mov	edx, DWORD PTR [r15]
	jmp	.L35
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Madillo
	.def	CreateEntity_Madillo;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Madillo
CreateEntity_Madillo:
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
	mov	rax, QWORD PTR .refptr.TaskDestructor_80095E8[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rsi, rcx
	mov	ebp, edx
	mov	edi, r8d
	mov	r12d, r9d
	mov	r8d, 16448
	xor	r9d, r9d
	mov	edx, 104
	lea	rcx, Task_MadilloMain[rip]
	call	TaskCreate
	mov	ecx, r12d
	mov	r9d, 8
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 8[rbx], bp
	movzx	ebp, bp
	mov	WORD PTR 10[rbx], di
	movzx	edi, di
	mov	QWORD PTR [rbx], rsi
	movzx	edx, BYTE PTR [rsi]
	movzx	eax, dl
	mov	ah, cl
	mov	WORD PTR 12[rbx], ax
	cmp	BYTE PTR 4[rsi], 0
	setne	r8b
	sal	ebp, 5
	mov	rax, QWORD PTR .refptr.sub_801EE64[rip]
	add	edx, ebp
	mov	BYTE PTR 100[rbx], r8b
	sal	edi, 5
	and	r8d, 1
	sal	edx, 11
	mov	DWORD PTR 80[rbx], edx
	movzx	ecx, BYTE PTR 1[rsi]
	sar	edx, 8
	mov	DWORD PTR 88[rbx], 0
	add	ecx, edi
	sal	ecx, 11
	mov	DWORD PTR 84[rbx], ecx
	sar	ecx, 8
	mov	QWORD PTR 40[rsp], rax
	mov	QWORD PTR 32[rsp], 0
	call	sub_801F07C
	mov	BYTE PTR 101[rbx], 120
	mov	ecx, 16
	sal	eax, 8
	mov	DWORD PTR 96[rbx], -384
	mov	DWORD PTR 92[rbx], eax
	movzx	eax, BYTE PTR [rsi]
	add	eax, ebp
	sal	eax, 3
	mov	WORD PTR 54[rbx], ax
	movzx	eax, BYTE PTR 1[rsi]
	add	eax, edi
	sal	eax, 3
	mov	WORD PTR 56[rbx], ax
	mov	BYTE PTR [rsi], -2
	call	VramMalloc
	mov	edx, -256
	mov	DWORD PTR 32[rbx], 32964608
	mov	QWORD PTR 24[rbx], rax
	xor	eax, eax
	mov	WORD PTR 52[rbx], ax
	mov	DWORD PTR 58[rbx], 1152
	mov	WORD PTR 64[rbx], dx
	mov	BYTE PTR 66[rbx], 16
	mov	BYTE PTR 69[rbx], 0
	mov	DWORD PTR 72[rbx], -1
	mov	DWORD PTR 48[rbx], 8192
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	sub_801F100;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Enemy_Attack;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Player_UpdateHomingPosition;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	sub_801F07C;	.scl	2;	.type	32;	.endef
	.def	Coll_DamagePlayer;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.TaskDestructor_80095E8, "dr"
	.globl	.refptr.TaskDestructor_80095E8
	.linkonce	discard
.refptr.TaskDestructor_80095E8:
	.quad	TaskDestructor_80095E8
	.section	.rdata$.refptr.sub_801EE64, "dr"
	.globl	.refptr.sub_801EE64
	.linkonce	discard
.refptr.sub_801EE64:
	.quad	sub_801EE64
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
	.section	.rdata$.refptr.sub_801EC3C, "dr"
	.globl	.refptr.sub_801EC3C
	.linkonce	discard
.refptr.sub_801EC3C:
	.quad	sub_801EC3C
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
