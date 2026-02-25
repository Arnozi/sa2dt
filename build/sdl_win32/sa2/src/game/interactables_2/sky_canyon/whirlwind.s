	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	TaskDestructor_Interactable086
	.def	TaskDestructor_Interactable086;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_Interactable086
TaskDestructor_Interactable086:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 784[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.globl	sub_807C9C0
	.def	sub_807C9C0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_807C9C0
sub_807C9C0:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, 44
	xor	r9d, r9d
	mov	r8d, 128
	mov	WORD PTR 108[rax], dx
	movzx	edx, WORD PTR 22[rax]
	movq	xmm1, QWORD PTR 12[rax]
	or	DWORD PTR 36[rax], 4194304
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	WORD PTR 518[rcx], dx
	mov	edx, DWORD PTR 748[rcx]
	mov	rax, QWORD PTR [rax]
	mov	BYTE PTR 514[rcx], 64
	sal	edx, 8
	mov	WORD PTR 516[rcx], r8w
	movd	xmm0, edx
	mov	edx, DWORD PTR 752[rcx]
	mov	WORD PTR 512[rcx], r9w
	mov	QWORD PTR 528[rcx], 0
	sal	edx, 8
	movd	xmm2, edx
	lea	rdx, Task_807D0C4[rip]
	punpckldq	xmm0, xmm2
	psubd	xmm0, xmm1
	movq	QWORD PTR 520[rcx], xmm0
	mov	QWORD PTR 40[rax], rdx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_807CC28
	.def	sub_807CC28;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_807CC28
sub_807CC28:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	r9d, 8
	mov	eax, DWORD PTR 524[rcx]
	neg	eax
	cdq
	mov	rbx, rcx
	movzx	ecx, WORD PTR 756[rcx]
	idiv	ecx
	movzx	edx, WORD PTR 758[rbx]
	movzx	ecx, WORD PTR 760[rbx]
	mov	r8d, eax
	call	sub_80855C0
	movzx	r8d, BYTE PTR 514[rbx]
	mov	edx, eax
	mov	rax, QWORD PTR .refptr.gSineTable[rip]
	shr	edx
	mov	rcx, r8
	movzx	eax, WORD PTR 512[rax+r8*8]
	movsx	edx, dx
	sar	ax, 6
	cwde
	imul	eax, edx
	lea	eax, [rax+rax*2]
	sal	eax, 6
	sar	eax, 8
	mov	DWORD PTR 528[rbx], eax
	movzx	eax, WORD PTR 512[rbx]
	mov	edx, eax
	sub	eax, -128
	cmp	ax, 1536
	ja	.L6
	sub	dx, -128
	movzx	eax, ah
.L5:
	add	ecx, eax
	mov	WORD PTR 512[rbx], dx
	mov	BYTE PTR 514[rbx], cl
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	mov	eax, 6
	mov	edx, 1536
	jmp	.L5
	.seh_endproc
	.p2align 4
	.globl	sub_807CA64
	.def	sub_807CA64;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_807CA64
sub_807CA64:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	eax, DWORD PTR 752[rcx]
	mov	rbx, rcx
	lea	ecx, -16[rax]
	movzx	edx, WORD PTR 518[rbx]
	sal	ecx, 8
	test	dx, dx
	jle	.L17
	mov	eax, 1536
	mov	r8d, -64
	cmp	dx, ax
	cmovg	edx, eax
	movsx	eax, dx
	neg	eax
	sar	eax, 4
	cmp	eax, r8d
	cmovg	eax, r8d
	xor	edi, edi
	add	edx, eax
.L9:
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	mov	WORD PTR 518[rbx], dx
	movsx	edx, dx
	movzx	eax, WORD PTR 516[rbx]
	add	edx, DWORD PTR 16[rsi]
	cmp	edx, ecx
	cmovg	edx, ecx
	mov	ecx, 768
	mov	DWORD PTR 16[rsi], edx
	lea	edx, 64[rax]
	cmp	dx, cx
	cmovg	edx, ecx
	mov	ecx, DWORD PTR 520[rbx]
	mov	WORD PTR 516[rbx], dx
	test	ecx, ecx
	jle	.L10
	movsx	edx, dx
	sub	ecx, edx
	js	.L15
.L16:
	mov	DWORD PTR 520[rbx], ecx
	xor	eax, eax
.L12:
	mov	edx, DWORD PTR 748[rbx]
	sal	edx, 8
	add	edx, ecx
	add	edx, DWORD PTR 528[rbx]
	mov	DWORD PTR 12[rsi], edx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L10:
	je	.L14
	movsx	edx, dx
	add	ecx, edx
	test	ecx, ecx
	jle	.L16
.L15:
	mov	DWORD PTR 520[rbx], 0
	xor	eax, eax
	xor	ecx, ecx
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L17:
	sub	edx, 64
	mov	eax, -768
	mov	edi, 1
	cmp	dx, ax
	cmovl	edx, eax
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L14:
	mov	rcx, rbx
	call	sub_807CC28
	mov	eax, edi
	mov	ecx, DWORD PTR 520[rbx]
	and	eax, 1
	jmp	.L12
	.seh_endproc
	.p2align 4
	.globl	sub_807CB78
	.def	sub_807CB78;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_807CB78
sub_807CB78:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, 1
	movsx	eax, WORD PTR 742[rcx]
	add	eax, DWORD PTR 732[rcx]
	sal	eax, 8
	mov	rbx, rcx
	cmp	DWORD PTR 16[rsi], eax
	jg	.L21
.L19:
	movq	xmm1, QWORD PTR 520[rbx]
	mov	eax, DWORD PTR 748[rbx]
	sal	eax, 8
	movd	xmm0, eax
	mov	eax, DWORD PTR 752[rbx]
	sal	eax, 8
	movd	xmm2, eax
	mov	eax, edx
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	movq	xmm1, QWORD PTR 528[rbx]
	paddd	xmm0, xmm1
	movq	QWORD PTR 12[rsi], xmm0
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L21:
	movzx	eax, WORD PTR 518[rcx]
	mov	edx, -768
	sub	eax, 16
	cmp	ax, dx
	cmovl	eax, edx
	mov	WORD PTR 518[rcx], ax
	cwde
	add	DWORD PTR 524[rcx], eax
	call	sub_807CC28
	xor	edx, edx
	jmp	.L19
	.seh_endproc
	.p2align 4
	.globl	sub_807CCBC
	.def	sub_807CCBC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_807CCBC
sub_807CCBC:
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
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	xor	r13d, r13d
	lea	rbp, gUnknown_080E0136[rip]
	test	BYTE PTR [rax], 15
	sete	r13b
	mov	rsi, rcx
	lea	rcx, 536[rcx]
	call	UpdateSpriteAnimation
	lea	rcx, 600[rsi]
	mov	rbx, rsi
	lea	rdi, 512[rsi]
	call	UpdateSpriteAnimation
	lea	rcx, 664[rsi]
	call	UpdateSpriteAnimation
	mov	r12, QWORD PTR .refptr.gSineTable[rip]
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L40:
	sub	eax, r9d
	sar	ecx, 5
	mov	DWORD PTR 24[rbx], eax
	movzx	eax, WORD PTR 758[rsi]
	imul	eax, ecx
	movzx	ecx, WORD PTR 760[rsi]
	sal	eax, 8
	sar	eax, 16
	cmp	eax, ecx
	cmovl	eax, ecx
	movzx	ecx, BYTE PTR 8[rbx]
	mov	r8, rcx
	sal	eax, 16
	movzx	ecx, WORD PTR 512[r12+rcx*8]
	sar	eax, 17
	sar	cx, 6
	movsx	ecx, cx
	imul	eax, ecx
	mov	DWORD PTR 20[rbx], eax
	mov	eax, 32
	sub	eax, edx
	mov	edx, 2
	sar	eax, 2
	cmp	ax, 1
	jle	.L27
	cmp	ax, 9
	mov	edx, 8
	cmovl	edx, eax
.L27:
	add	r8d, edx
	mov	BYTE PTR 8[rbx], r8b
.L24:
	add	rbx, 32
	cmp	rdi, rbx
	je	.L38
.L30:
	cmp	QWORD PTR [rbx], 0
	je	.L39
.L23:
	mov	r9d, DWORD PTR 16[rbx]
	mov	edx, 512
	mov	eax, r9d
	mov	ecx, r9d
	neg	eax
	cmovs	eax, r9d
	sar	eax, 4
	cmp	ax, dx
	cmovg	eax, edx
	mov	edx, 64
	cmp	ax, dx
	cmovl	eax, edx
	cwde
	sub	ecx, eax
	mov	edx, ecx
	mov	DWORD PTR 16[rbx], ecx
	sar	edx, 8
	test	ecx, ecx
	jg	.L40
	movzx	ecx, WORD PTR 756[rsi]
	neg	edx
	cmp	edx, ecx
	jl	.L41
	mov	QWORD PTR [rbx], 0
	add	rbx, 32
	cmp	rdi, rbx
	jne	.L30
.L38:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L39:
	test	r13d, r13d
	je	.L24
	call	Random
	and	eax, 7
	movzx	eax, BYTE PTR 0[rbp+rax]
	sal	rax, 6
	lea	rax, 536[rsi+rax]
	mov	QWORD PTR [rbx], rax
	call	Random
	cmp	WORD PTR 736[rsi], 0
	mov	DWORD PTR 12[rbx], 0
	mov	BYTE PTR 8[rbx], al
	mov	eax, 8192
	jne	.L42
.L25:
	mov	DWORD PTR 16[rbx], eax
	xor	r13d, r13d
	mov	DWORD PTR 20[rbx], 0
	mov	DWORD PTR 24[rbx], 0
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L41:
	movzx	edx, BYTE PTR 8[rbx]
	sub	eax, r9d
	mov	r9d, 8
	sal	edx, 2
	movsx	rdx, edx
	movzx	edx, WORD PTR [r12+rdx*2]
	sar	dx, 6
	movsx	edx, dx
	sal	edx, 2
	mov	DWORD PTR 24[rbx], edx
	cdq
	idiv	ecx
	movzx	edx, WORD PTR 758[rsi]
	movzx	ecx, WORD PTR 760[rsi]
	mov	r8d, eax
	call	sub_80855C0
	movzx	ecx, BYTE PTR 8[rbx]
	shr	eax
	lea	rdx, 0[0+rcx*4]
	cwde
	add	ecx, 8
	and	edx, 1020
	mov	BYTE PTR 8[rbx], cl
	movzx	edx, WORD PTR [r12+rdx*2]
	sar	dx, 6
	movsx	edx, dx
	imul	edx, eax
	mov	DWORD PTR 20[rbx], edx
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L42:
	call	Random
	and	eax, 7
	neg	eax
	sal	eax, 8
	jmp	.L25
	.seh_endproc
	.p2align 4
	.globl	sub_807CE94
	.def	sub_807CE94;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_807CE94
sub_807CE94:
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
	mov	rsi, QWORD PTR .refptr.gCamera[rip]
	mov	r12d, 8192
	mov	ebp, 12288
	mov	r13, rcx
	mov	rbx, rcx
	lea	rdi, 512[rcx]
	.p2align 4,,10
	.p2align 3
.L47:
	mov	rcx, QWORD PTR [rbx]
	test	rcx, rcx
	je	.L44
	mov	eax, DWORD PTR 20[rbx]
	add	eax, DWORD PTR 12[rbx]
	sar	eax, 8
	add	eax, DWORD PTR 748[r13]
	sub	eax, DWORD PTR [rsi]
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 38[rcx], ax
	mov	eax, DWORD PTR 24[rbx]
	add	eax, edx
	sar	eax, 8
	add	eax, DWORD PTR 752[r13]
	sub	eax, DWORD PTR 4[rsi]
	cmp	BYTE PTR 8[rbx], 124
	mov	WORD PTR 40[rcx], ax
	sbb	eax, eax
	and	ax, -768
	add	ax, 1152
	cmp	edx, -4095
	mov	WORD PTR 42[rcx], ax
	mov	eax, ebp
	cmovl	eax, r12d
	mov	DWORD PTR 32[rcx], eax
	call	DisplaySprite
.L44:
	add	rbx, 32
	cmp	rdi, rbx
	jne	.L47
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_807D0C4
	.def	Task_807D0C4;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_807D0C4
Task_807D0C4:
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
	mov	rdi, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	test	BYTE PTR 36[rdi], -128
	je	.L55
	lea	rdx, Task_807D06C[rip]
	mov	QWORD PTR 40[rax], rdx
.L56:
	mov	rcx, rbx
	call	sub_807CCBC
	mov	rcx, rbx
	call	sub_807CE94
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	cmp	BYTE PTR [rax], 0
	je	.L61
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L55:
	mov	rcx, rbx
	call	sub_807CA64
	test	eax, eax
	je	.L56
	mov	edx, DWORD PTR 752[rbx]
	mov	eax, DWORD PTR 16[rdi]
	mov	DWORD PTR 520[rbx], 0
	sal	edx, 8
	sub	eax, edx
	lea	rdx, Task_807D268[rip]
	mov	DWORD PTR 524[rbx], eax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdx
	jmp	.L56
	.p2align 4,,10
	.p2align 3
.L61:
	mov	ecx, 285
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	m4aSongNumStartOrContinue
	.seh_endproc
	.p2align 4
	.globl	Task_807D268
	.def	Task_807D268;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_807D268
Task_807D268:
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
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	test	BYTE PTR 36[rsi], -128
	je	.L63
.L69:
	lea	rdx, Task_807D06C[rip]
	mov	QWORD PTR 40[rax], rdx
.L64:
	mov	rcx, rbx
	call	sub_807CCBC
	mov	rcx, rbx
	call	sub_807CE94
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	cmp	BYTE PTR [rax], 0
	je	.L70
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L63:
	mov	rcx, rbx
	call	sub_807CB78
	test	eax, eax
	je	.L64
	and	DWORD PTR 36[rsi], -4194305
	mov	rax, QWORD PTR [rdi]
	mov	BYTE PTR 117[rsi], 7
	mov	DWORD PTR 20[rsi], -134217728
	jmp	.L69
	.p2align 4,,10
	.p2align 3
.L70:
	mov	ecx, 285
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	m4aSongNumStartOrContinue
	.seh_endproc
	.p2align 4
	.globl	sub_807CF2C
	.def	sub_807CF2C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_807CF2C
sub_807CF2C:
	.seh_endprologue
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	mov	r9d, 1
	mov	eax, DWORD PTR 728[rcx]
	movsx	edx, WORD PTR 744[rcx]
	sub	ax, WORD PTR [r8]
	cwde
	add	edx, eax
	cmp	edx, -128
	jl	.L71
	movsx	edx, WORD PTR 740[rcx]
	add	eax, edx
	cmp	eax, 554
	jg	.L71
	mov	eax, DWORD PTR 732[rcx]
	movsx	edx, WORD PTR 746[rcx]
	sub	ax, WORD PTR 4[r8]
	cwde
	add	edx, eax
	cmp	edx, -128
	jl	.L71
	movsx	edx, WORD PTR 742[rcx]
	xor	r9d, r9d
	add	eax, edx
	cmp	eax, 368
	setg	r9b
.L71:
	mov	eax, r9d
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_807CFB4
	.def	sub_807CFB4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_807CFB4
sub_807CFB4:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	test	BYTE PTR 36[rdx], -128
	jne	.L79
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	ebx, DWORD PTR 12[rdx]
	movzx	edx, WORD PTR 17[rdx]
	movzx	r9d, WORD PTR 756[rcx]
	mov	r8d, DWORD PTR 4[rax]
	mov	edi, DWORD PTR [rax]
	movzx	eax, WORD PTR 752[rcx]
	mov	esi, DWORD PTR 748[rcx]
	sub	edx, r8d
	sub	eax, r8d
	movsx	edx, dx
	cwde
	mov	r8d, eax
	sub	r8d, r9d
	cmp	edx, r8d
	jl	.L79
	cmp	eax, edx
	jge	.L86
.L79:
	xor	eax, eax
.L76:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L86:
	sub	eax, edx
	sub	esi, edi
	sar	ebx, 8
	sal	eax, 8
	movsx	esi, si
	sub	ebx, edi
	cdq
	movsx	ebx, bx
	idiv	r9d
	movzx	edx, WORD PTR 758[rcx]
	movzx	ecx, WORD PTR 760[rcx]
	mov	r9d, 8
	mov	r8d, eax
	call	sub_80855C0
	mov	edx, eax
	shr	dx
	movzx	edx, dx
	sub	esi, edx
	cmp	ebx, esi
	jl	.L79
	movzx	eax, ax
	add	eax, esi
	cmp	ebx, eax
	setle	al
	movzx	eax, al
	jmp	.L76
	.seh_endproc
	.p2align 4
	.def	Task_807D06C;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_807D06C
Task_807D06C:
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
	mov	rcx, rbx
	call	sub_807CFB4
	test	eax, eax
	jne	.L94
.L88:
	mov	rcx, rbx
	call	sub_807CF2C
	test	eax, eax
	je	.L89
	mov	ecx, 285
	call	m4aSongNumStop
	mov	rax, QWORD PTR 768[rbx]
	movzx	edx, BYTE PTR 776[rbx]
	mov	BYTE PTR [rax], dl
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L89:
	call	sub_807CCBC
	mov	rcx, rbx
	call	sub_807CE94
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	cmp	BYTE PTR [rax], 0
	je	.L95
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L94:
	mov	ecx, 285
	call	m4aSongNumStart
	mov	rcx, rbx
	call	sub_807C9C0
	jmp	.L88
	.p2align 4,,10
	.p2align 3
.L95:
	mov	ecx, 285
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	m4aSongNumStartOrContinue
	.seh_endproc
	.p2align 4
	.globl	sub_807D130
	.def	sub_807D130;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_807D130
sub_807D130:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	edx, DWORD PTR 752[rcx]
	mov	eax, DWORD PTR 16[rax]
	sal	edx, 8
	sub	eax, edx
	lea	rdx, Task_807D268[rip]
	mov	DWORD PTR 524[rcx], eax
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	DWORD PTR 520[rcx], 0
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rax], rdx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_807D16C
	.def	sub_807D16C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_807D16C
sub_807D16C:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	cmp	BYTE PTR [rax], 0
	je	.L99
	ret
	.p2align 4,,10
	.p2align 3
.L99:
	mov	ecx, 285
	jmp	m4aSongNumStartOrContinue
	.seh_endproc
	.p2align 4
	.globl	sub_807D188
	.def	sub_807D188;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_807D188
sub_807D188:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	mov	ecx, 285
	call	m4aSongNumStop
	mov	rax, QWORD PTR 768[rbx]
	movzx	edx, BYTE PTR 776[rbx]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.globl	sub_807D1BC
	.def	sub_807D1BC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_807D1BC
sub_807D1BC:
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
	lea	rdi, gUnknown_080E0136[rip]
	mov	rsi, rcx
	mov	rbx, rcx
	lea	rbp, 128[rcx]
.L102:
	call	Random
	add	rbx, 32
	and	eax, 7
	movzx	eax, BYTE PTR [rdi+rax]
	sal	rax, 6
	lea	rax, 536[rsi+rax]
	mov	QWORD PTR -32[rbx], rax
	call	Random
	mov	DWORD PTR -20[rbx], 0
	mov	BYTE PTR -24[rbx], al
	call	Random
	mov	DWORD PTR -12[rbx], 0
	and	eax, 63
	mov	DWORD PTR -8[rbx], 0
	neg	eax
	sal	eax, 8
	mov	DWORD PTR -16[rbx], eax
	cmp	rbp, rbx
	jne	.L102
	mov	rcx, rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	sub_807CCBC
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Whirlwind
	.def	CreateEntity_Whirlwind;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Whirlwind
CreateEntity_Whirlwind:
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
	lea	rax, TaskDestructor_Interactable086[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rsi, rcx
	mov	ebp, edx
	mov	r12d, r8d
	mov	edi, r9d
	mov	r8d, 8208
	xor	r9d, r9d
	movzx	r12d, r12w
	mov	edx, 792
	lea	rcx, Task_807D06C[rip]
	sal	r12d, 5
	call	TaskCreate
	movzx	edx, BYTE PTR [rsi]
	movzx	ecx, BYTE PTR 5[rsi]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, bp
	movsx	bp, BYTE PTR 3[rsi]
	sal	eax, 5
	mov	r10d, edx
	movsx	r8w, BYTE PTR 4[rsi]
	sal	ecx, 3
	add	eax, edx
	mov	edx, DWORD PTR 128[rsp]
	movzx	r9d, BYTE PTR 6[rsi]
	sal	ebp, 3
	sal	eax, 3
	sal	r8d, 3
	mov	DWORD PTR 728[rbx], eax
	movzx	r11d, BYTE PTR 1[rsi]
	sal	r9d, 3
	movd	xmm1, eax
	mov	WORD PTR 736[rbx], dx
	lea	edx, 0[rbp+rcx]
	movzx	eax, r10b
	mov	WORD PTR 740[rbx], bp
	movsx	ebp, bp
	add	r11d, r12d
	mov	WORD PTR 744[rbx], dx
	movsx	edx, dx
	sal	r11d, 3
	mov	WORD PTR 742[rbx], r8w
	add	edx, ebp
	add	r8d, r9d
	movd	xmm3, r11d
	sar	edx
	mov	WORD PTR 746[rbx], r8w
	movsx	r8d, r8w
	punpckldq	xmm1, xmm3
	movd	xmm0, edx
	movd	xmm2, r8d
	mov	WORD PTR 758[rbx], cx
	movzx	ecx, cx
	punpckldq	xmm0, xmm2
	shr	ecx, 2
	mov	DWORD PTR 732[rbx], r11d
	lea	rdx, 512[rbx]
	paddd	xmm0, xmm1
	mov	WORD PTR 760[rbx], cx
	mov	ecx, edi
	mov	WORD PTR 756[rbx], r9w
	mov	ah, cl
	mov	QWORD PTR 768[rbx], rsi
	mov	WORD PTR 776[rbx], ax
	mov	rax, rbx
	movq	QWORD PTR 748[rbx], xmm0
	.p2align 4,,10
	.p2align 3
.L105:
	mov	QWORD PTR [rax], 0
	add	rax, 64
	mov	QWORD PTR -32[rax], 0
	cmp	rax, rdx
	jne	.L105
	mov	ecx, 4
	call	VramMalloc
	lea	rdx, 544[rbx]
	lea	r8, gUnknown_080E0124[rip]
	mov	QWORD PTR 784[rbx], rax
	lea	r9, 736[rbx]
.L106:
	xor	ecx, ecx
	xor	r10d, r10d
	xor	r11d, r11d
	mov	QWORD PTR [rdx], rax
	mov	WORD PTR 8[rdx], cx
	add	rdx, 64
	add	r8, 6
	mov	WORD PTR -36[rdx], r10w
	mov	WORD PTR -28[rdx], r11w
	mov	BYTE PTR -23[rdx], -1
	mov	BYTE PTR -22[rdx], 16
	mov	BYTE PTR -19[rdx], 0
	mov	DWORD PTR -16[rdx], -1
	movzx	ecx, WORD PTR -6[r8]
	mov	WORD PTR -54[rdx], cx
	movzx	ecx, WORD PTR -4[r8]
	mov	BYTE PTR -24[rdx], cl
	movzx	ecx, WORD PTR -2[r8]
	sal	ecx, 5
	movsx	rcx, ecx
	add	rax, rcx
	cmp	rdx, r9
	jne	.L106
	mov	rcx, rbx
	call	sub_807D1BC
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
	.globl	CreateEntity_Whirlwind_A
	.def	CreateEntity_Whirlwind_A;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Whirlwind_A
CreateEntity_Whirlwind_A:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	DWORD PTR 32[rsp], 0
	movzx	edx, dx
	movzx	r9d, r9b
	movzx	r8d, r8w
	call	CreateEntity_Whirlwind
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Whirlwind_B
	.def	CreateEntity_Whirlwind_B;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Whirlwind_B
CreateEntity_Whirlwind_B:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	DWORD PTR 32[rsp], 1
	movzx	edx, dx
	movzx	r9d, r9b
	movzx	r8d, r8w
	call	CreateEntity_Whirlwind
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_807D2BC
	.def	sub_807D2BC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_807D2BC
sub_807D2BC:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	lea	rdx, Task_807D06C[rip]
	and	DWORD PTR 36[rax], -4194305
	mov	BYTE PTR 117[rax], 7
	mov	DWORD PTR 20[rax], -134217728
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rax], rdx
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
gUnknown_080E0136:
	.ascii "\0\0\0\0\1\1\1\2"
	.align 16
gUnknown_080E0124:
	.word	588
	.word	2
	.word	1
	.word	588
	.word	1
	.word	1
	.word	588
	.word	0
	.word	2
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	sub_80855C0;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	Random;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStartOrContinue;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStop;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
