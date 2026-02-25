	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_8061914
	.def	Task_8061914;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_8061914
Task_8061914:
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
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	mov	r8, QWORD PTR [rax]
	mov	esi, DWORD PTR 36[rbx]
	mov	r10, QWORD PTR 24[r8]
	movzx	eax, WORD PTR 8[r10]
	movzx	edx, BYTE PTR 12[r10]
	mov	rcx, QWORD PTR [r10]
	sal	eax, 5
	mov	r9d, edx
	add	eax, edx
	movzx	edx, WORD PTR 10[r10]
	movzx	r11d, BYTE PTR 1[rcx]
	sal	eax, 3
	sal	edx, 5
	add	edx, r11d
	lea	r11d, 0[0+rdx*8]
	test	sil, -128
	jne	.L2
	mov	r13d, DWORD PTR 12[rbx]
	movsx	edi, BYTE PTR 3[rcx]
	mov	ebp, r13d
	lea	r12d, [rax+rdi*8]
	movzx	edi, BYTE PTR 13[r10]
	sar	ebp, 8
	cmp	r12d, ebp
	jg	.L3
	movzx	r14d, BYTE PTR 5[rcx]
	lea	r12d, [r12+r14*8]
	cmp	ebp, r12d
	jg	.L3
	movsx	r12d, BYTE PTR 4[rcx]
	lea	r14d, [r11+r12*8]
	mov	r12d, DWORD PTR 16[rbx]
	sar	r12d, 8
	cmp	r14d, r12d
	jg	.L3
	movzx	r15d, BYTE PTR 6[rcx]
	lea	r14d, [r14+r15*8]
	cmp	r12d, r14d
	jg	.L3
	cmp	ebp, eax
	jg	.L12
	cmp	WORD PTR 24[rbx], 1024
	jle	.L3
	and	esi, 2
	jne	.L3
	movzx	edx, WORD PTR 102[rbx]
	mov	rbx, QWORD PTR .refptr.gPlayerControls[rip]
	and	dx, WORD PTR [rbx]
	jne	.L3
	or	edi, 1
	mov	BYTE PTR 13[r10], dil
	.p2align 4,,10
	.p2align 3
.L2:
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	sub	eax, DWORD PTR [rdx]
	mov	r10d, DWORD PTR 4[rdx]
	sub	eax, -128
	cmp	eax, 682
	ja	.L6
	mov	eax, r11d
	sub	eax, r10d
	sub	eax, -128
	cmp	eax, 496
	jbe	.L1
.L6:
	mov	BYTE PTR [rcx], r9b
	mov	rcx, r8
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
.L3:
	and	edi, -2
	mov	BYTE PTR 13[r10], dil
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L12:
	test	dil, 1
	je	.L3
	movsx	r10d, WORD PTR 24[rbx]
	sub	ebp, eax
	sal	edx, 11
	mov	BYTE PTR 117[rbx], 27
	mov	rsi, QWORD PTR .refptr.gSineTable[rip]
	add	r10d, r13d
	mov	DWORD PTR 12[rbx], r10d
	imul	r10d, ebp, 930
	sar	r10d, 8
	add	r10d, 256
	and	r10d, 1023
	movzx	r10d, WORD PTR [rsi+r10*2]
	lea	rsi, sub_8061AB0[rip]
	mov	QWORD PTR 40[r8], rsi
	sar	r10w, 6
	movsx	r10d, r10w
	lea	r10d, [r10+r10*2]
	lea	edx, -7168[rdx+r10*8]
	mov	DWORD PTR 16[rbx], edx
	xor	edx, edx
	mov	WORD PTR 22[rbx], dx
	jmp	.L2
	.seh_endproc
	.p2align 4
	.globl	Task_8061F60
	.def	Task_8061F60;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_8061F60
Task_8061F60:
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
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	mov	r8, QWORD PTR [rax]
	mov	esi, DWORD PTR 36[rbx]
	mov	r10, QWORD PTR 24[r8]
	movzx	eax, WORD PTR 8[r10]
	movzx	edx, BYTE PTR 12[r10]
	mov	rcx, QWORD PTR [r10]
	sal	eax, 5
	mov	r9d, edx
	add	eax, edx
	movzx	edx, WORD PTR 10[r10]
	movzx	r11d, BYTE PTR 1[rcx]
	sal	eax, 3
	sal	edx, 5
	add	edx, r11d
	lea	r11d, 0[0+rdx*8]
	test	sil, -128
	jne	.L14
	mov	r13d, DWORD PTR 12[rbx]
	movsx	edi, BYTE PTR 3[rcx]
	mov	ebp, r13d
	lea	r12d, [rax+rdi*8]
	movzx	edi, BYTE PTR 13[r10]
	sar	ebp, 8
	cmp	r12d, ebp
	jg	.L15
	movzx	r14d, BYTE PTR 5[rcx]
	lea	r12d, [r12+r14*8]
	cmp	ebp, r12d
	jg	.L15
	movsx	r12d, BYTE PTR 4[rcx]
	lea	r14d, [r11+r12*8]
	mov	r12d, DWORD PTR 16[rbx]
	sar	r12d, 8
	cmp	r14d, r12d
	jg	.L15
	movzx	r15d, BYTE PTR 6[rcx]
	lea	r14d, [r14+r15*8]
	cmp	r12d, r14d
	jg	.L15
	cmp	ebp, eax
	jl	.L23
	cmp	WORD PTR 24[rbx], -1024
	jge	.L15
	and	esi, 2
	jne	.L15
	movzx	edx, WORD PTR 102[rbx]
	mov	rbx, QWORD PTR .refptr.gPlayerControls[rip]
	and	dx, WORD PTR [rbx]
	jne	.L15
	or	edi, 1
	mov	BYTE PTR 13[r10], dil
	.p2align 4,,10
	.p2align 3
.L14:
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	sub	eax, DWORD PTR [rdx]
	mov	r10d, DWORD PTR 4[rdx]
	sub	eax, -128
	cmp	eax, 682
	ja	.L18
	mov	eax, r11d
	sub	eax, r10d
	sub	eax, -128
	cmp	eax, 496
	jbe	.L13
.L18:
	mov	BYTE PTR [rcx], r9b
	mov	rcx, r8
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
.L15:
	and	edi, -2
	mov	BYTE PTR 13[r10], dil
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L23:
	test	dil, 1
	je	.L15
	movsx	r10d, WORD PTR 24[rbx]
	sub	ebp, eax
	sal	edx, 11
	mov	BYTE PTR 117[rbx], 27
	mov	rsi, QWORD PTR .refptr.gSineTable[rip]
	add	r10d, r13d
	mov	DWORD PTR 12[rbx], r10d
	imul	r10d, ebp, 930
	sar	r10d, 8
	add	r10d, 256
	and	r10d, 1023
	movzx	r10d, WORD PTR [rsi+r10*2]
	lea	rsi, Task_8062100[rip]
	mov	QWORD PTR 40[r8], rsi
	sar	r10w, 6
	movsx	r10d, r10w
	lea	r10d, [r10+r10*2]
	lea	edx, -7168[rdx+r10*8]
	mov	DWORD PTR 16[rbx], edx
	xor	edx, edx
	mov	WORD PTR 22[rbx], dx
	jmp	.L14
	.seh_endproc
	.p2align 4
	.globl	sub_8061AB0
	.def	sub_8061AB0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8061AB0
sub_8061AB0:
	push	r14
	.seh_pushreg	r14
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	mov	r9, QWORD PTR [rax]
	mov	r8, QWORD PTR 24[r9]
	movzx	eax, WORD PTR 8[r8]
	movzx	r10d, BYTE PTR 12[r8]
	mov	rdx, QWORD PTR [r8]
	sal	eax, 5
	mov	ecx, r10d
	add	eax, r10d
	movzx	r10d, WORD PTR 10[r8]
	movzx	r11d, BYTE PTR 1[rdx]
	sal	eax, 3
	sal	r10d, 5
	add	r10d, r11d
	mov	r11d, DWORD PTR 36[rbx]
	test	r11b, -128
	jne	.L32
	mov	ecx, DWORD PTR 12[rbx]
	mov	r14, QWORD PTR .refptr.gSineTable[rip]
	sal	r10d, 11
	movsx	esi, WORD PTR 24[rbx]
	mov	edx, ecx
	sar	edx, 8
	add	ecx, esi
	mov	edi, esi
	sub	edx, eax
	mov	DWORD PTR 12[rbx], ecx
	sar	ecx, 8
	imul	edx, edx, 930
	sub	ecx, eax
	sar	edx, 8
	add	edx, 256
	mov	ebp, edx
	and	edx, 1023
	movzx	edx, WORD PTR [r14+rdx*2]
	xor	r14d, r14d
	and	ebp, 1023
	mov	WORD PTR 22[rbx], r14w
	sar	dx, 6
	movsx	edx, dx
	lea	edx, [rdx+rdx*2]
	lea	edx, -7168[r10+rdx*8]
	mov	DWORD PTR 16[rbx], edx
	cmp	ecx, 140
	jle	.L26
	add	eax, 140
	sal	eax, 8
	and	r11d, 4
	mov	DWORD PTR 12[rbx], eax
	je	.L33
.L27:
	lea	rax, Task_8061C70[rip]
	mov	QWORD PTR 40[r9], rax
.L24:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r14
	ret
	.p2align 4,,10
	.p2align 3
.L26:
	cmp	esi, DWORD PTR 16[r8]
	jl	.L34
	movzx	eax, WORD PTR 102[rbx]
	mov	rdx, QWORD PTR .refptr.gPlayerControls[rip]
	mov	esi, eax
	and	si, WORD PTR [rdx]
	je	.L30
	mov	ecx, 50
	mov	r8d, -1248
	lea	rax, Task_8061914[rip]
	mov	BYTE PTR 117[rbx], 5
	mov	WORD PTR 108[rbx], cx
	mov	WORD PTR 20[rbx], di
	mov	WORD PTR 22[rbx], r8w
	mov	QWORD PTR 40[r9], rax
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L32:
	mov	BYTE PTR [rdx], cl
	mov	rcx, r9
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r14
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L33:
	mov	r11d, 48
	mov	WORD PTR 108[rbx], r11w
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L34:
	mov	r10d, 50
	lea	rax, Task_8061914[rip]
	mov	BYTE PTR 117[rbx], 5
	mov	WORD PTR 108[rbx], r10w
	mov	WORD PTR 20[rbx], si
	mov	QWORD PTR 40[r9], rax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r14
	ret
	.p2align 4,,10
	.p2align 3
.L30:
	and	r11d, 4
	jne	.L24
	test	al, -128
	jne	.L35
	movsx	rdx, BYTE PTR 141[rbx]
	mov	rax, QWORD PTR .refptr.gPlayerCharacterIdleAnims[rip]
	sub	ebp, 282
	and	ebp, 1023
	movzx	eax, WORD PTR [rax+rdx*2]
	add	eax, 68
	mov	WORD PTR 112[rbx], ax
	mov	eax, 2924233053
	imul	rbp, rax
	shr	rbp, 38
	mov	WORD PTR 114[rbx], bp
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L35:
	mov	eax, 4
	mov	rcx, rbx
	mov	edx, 9
	mov	WORD PTR 108[rbx], ax
	call	Player_HandleSpriteYOffsetChange
	or	DWORD PTR 36[rbx], 4
	mov	edx, 2310
	mov	ecx, 109
	mov	WORD PTR 26[rbx], dx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r14
	jmp	m4aSongNumStart
	.seh_endproc
	.p2align 4
	.globl	Task_8061C70
	.def	Task_8061C70;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_8061C70
Task_8061C70:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	mov	rcx, QWORD PTR [rax]
	mov	r8, QWORD PTR 24[rcx]
	movzx	eax, WORD PTR 8[r8]
	movzx	edx, BYTE PTR 12[r8]
	mov	r9, QWORD PTR [r8]
	sal	eax, 5
	mov	r11d, edx
	add	eax, edx
	movzx	edx, WORD PTR 10[r8]
	movzx	r10d, BYTE PTR 1[r9]
	sal	eax, 3
	sal	edx, 5
	add	edx, r10d
	mov	r10d, DWORD PTR 36[rbx]
	sal	edx, 3
	test	r10b, -128
	jne	.L46
	movzx	r11d, WORD PTR 24[rbx]
	add	eax, 140
	mov	WORD PTR 22[rbx], 0
	sal	eax, 8
	lea	r9d, 1[r11]
	mov	DWORD PTR 12[rbx], eax
	mov	eax, DWORD PTR 16[rbx]
	movsx	r11d, r9w
	mov	WORD PTR 24[rbx], r9w
	add	eax, r11d
	mov	DWORD PTR 16[rbx], eax
	sar	eax, 8
	sub	eax, edx
	cmp	eax, 190
	jle	.L38
	add	edx, 190
	sal	edx, 8
	and	r10d, 4
	mov	DWORD PTR 16[rbx], edx
	je	.L47
.L39:
	lea	rax, Task_8061DA4[rip]
	mov	QWORD PTR 40[rcx], rax
.L36:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L38:
	cmp	r11d, DWORD PTR 16[r8]
	jl	.L48
	movzx	eax, WORD PTR 102[rbx]
	mov	rdx, QWORD PTR .refptr.gPlayerControls[rip]
	mov	r9d, eax
	and	r9w, WORD PTR [rdx]
	je	.L42
	mov	r8d, 50
	lea	rax, Task_8061914[rip]
	mov	BYTE PTR 117[rbx], 5
	mov	WORD PTR 108[rbx], r8w
	mov	DWORD PTR 20[rbx], -81788928
	mov	QWORD PTR 40[rcx], rax
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L46:
	mov	BYTE PTR [r9], r11b
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L47:
	mov	eax, 47
	mov	WORD PTR 108[rbx], ax
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L48:
	mov	r10d, 50
	xor	r11d, r11d
	lea	rax, Task_8061914[rip]
	mov	BYTE PTR 117[rbx], 5
	mov	WORD PTR 108[rbx], r10w
	mov	WORD PTR 20[rbx], r11w
	mov	WORD PTR 22[rbx], r9w
	mov	QWORD PTR 40[rcx], rax
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L42:
	and	r10d, 4
	jne	.L36
	test	al, -128
	je	.L36
	mov	eax, 4
	mov	rcx, rbx
	mov	edx, 9
	mov	WORD PTR 108[rbx], ax
	call	Player_HandleSpriteYOffsetChange
	or	DWORD PTR 36[rbx], 4
	mov	edx, 2310
	mov	ecx, 109
	mov	WORD PTR 26[rbx], dx
	add	rsp, 32
	pop	rbx
	jmp	m4aSongNumStart
	.seh_endproc
	.p2align 4
	.globl	Task_8061DA4
	.def	Task_8061DA4;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_8061DA4
Task_8061DA4:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	mov	r8, QWORD PTR [rax]
	mov	r10d, DWORD PTR 36[rbx]
	mov	rcx, QWORD PTR 24[r8]
	movzx	eax, WORD PTR 8[rcx]
	movzx	edx, BYTE PTR 12[rcx]
	mov	r11, QWORD PTR [rcx]
	movzx	r9d, WORD PTR 10[rcx]
	sal	eax, 5
	mov	edi, edx
	add	eax, edx
	movzx	esi, BYTE PTR 1[r11]
	lea	edx, 0[0+rax*8]
	test	r10b, -128
	jne	.L58
	mov	r11d, DWORD PTR 12[rbx]
	mov	eax, r11d
	sar	eax, 8
	sub	eax, edx
	cmp	eax, 424
	jg	.L59
	imul	eax, eax, 930
	movsx	edx, WORD PTR 24[rbx]
	sal	r9d, 5
	add	r9d, esi
	add	r11d, edx
	mov	esi, edx
	sar	eax, 8
	mov	DWORD PTR 12[rbx], r11d
	mov	r11, QWORD PTR .refptr.gSineTable[rip]
	add	eax, 768
	mov	edi, eax
	and	eax, 1023
	movzx	eax, WORD PTR [r11+rax*2]
	and	edi, 1023
	sar	ax, 6
	cwde
	lea	r11d, [rax+rax*2]
	lea	eax, 190[0+r9*8]
	sal	eax, 8
	lea	eax, -7168[rax+r11*8]
	xor	r11d, r11d
	mov	DWORD PTR 16[rbx], eax
	mov	WORD PTR 22[rbx], r11w
	cmp	edx, DWORD PTR 16[rcx]
	jge	.L54
	mov	r10d, 50
	lea	rax, Task_8061914[rip]
	mov	BYTE PTR 117[rbx], 5
	mov	WORD PTR 108[rbx], r10w
	mov	WORD PTR 20[rbx], dx
	mov	QWORD PTR 40[r8], rax
.L49:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L54:
	movzx	eax, WORD PTR 102[rbx]
	mov	rdx, QWORD PTR .refptr.gPlayerControls[rip]
	mov	ecx, eax
	and	cx, WORD PTR [rdx]
	jne	.L60
	and	r10d, 4
	jne	.L49
	test	al, -128
	jne	.L61
	movsx	rdx, BYTE PTR 141[rbx]
	mov	rax, QWORD PTR .refptr.gPlayerCharacterIdleAnims[rip]
	sub	edi, 282
	and	edi, 1023
	movzx	eax, WORD PTR [rax+rdx*2]
	add	eax, 68
	mov	WORD PTR 112[rbx], ax
	mov	eax, 2924233053
	imul	rdi, rax
	shr	rdi, 38
	mov	WORD PTR 114[rbx], di
	jmp	.L49
	.p2align 4,,10
	.p2align 3
.L59:
	and	r10d, 4
	setne	al
	add	eax, 1
	mov	BYTE PTR 117[rbx], al
	lea	rax, Task_8061914[rip]
	mov	QWORD PTR 40[r8], rax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L58:
	mov	rcx, r8
	mov	BYTE PTR [r11], dil
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L60:
	mov	ecx, 50
	mov	r9d, -1248
	lea	rax, Task_8061914[rip]
	mov	BYTE PTR 117[rbx], 5
	mov	WORD PTR 108[rbx], cx
	mov	WORD PTR 20[rbx], si
	mov	WORD PTR 22[rbx], r9w
	mov	QWORD PTR 40[r8], rax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L61:
	mov	eax, 4
	mov	rcx, rbx
	mov	edx, 9
	mov	WORD PTR 108[rbx], ax
	call	Player_HandleSpriteYOffsetChange
	or	DWORD PTR 36[rbx], 4
	mov	edx, 2310
	mov	ecx, 109
	mov	WORD PTR 26[rbx], dx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	m4aSongNumStart
	.seh_endproc
	.p2align 4
	.globl	Task_8062100
	.def	Task_8062100;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_8062100
Task_8062100:
	push	r14
	.seh_pushreg	r14
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	mov	r10, QWORD PTR [rax]
	mov	r11d, DWORD PTR 36[rbx]
	mov	r9, QWORD PTR 24[r10]
	mov	r8, QWORD PTR [r9]
	movzx	eax, WORD PTR 8[r9]
	movzx	ecx, WORD PTR 10[r9]
	movzx	edx, BYTE PTR 12[r9]
	movzx	esi, BYTE PTR 1[r8]
	test	r11b, -128
	jne	.L70
	mov	r8d, DWORD PTR 12[rbx]
	sal	eax, 5
	movsx	edi, WORD PTR 24[rbx]
	sal	ecx, 5
	add	eax, edx
	mov	r14, QWORD PTR .refptr.gSineTable[rip]
	add	ecx, esi
	xor	esi, esi
	mov	edx, r8d
	sal	eax, 3
	add	r8d, edi
	mov	WORD PTR 22[rbx], si
	sar	edx, 8
	mov	DWORD PTR 12[rbx], r8d
	sal	ecx, 11
	mov	ebp, edi
	sub	edx, eax
	sar	r8d, 8
	imul	edx, edx, 930
	sub	r8d, eax
	sar	edx, 8
	add	edx, 256
	mov	r12d, edx
	and	edx, 1023
	movzx	edx, WORD PTR [r14+rdx*2]
	and	r12d, 1023
	sar	dx, 6
	movsx	edx, dx
	lea	edx, [rdx+rdx*2]
	lea	edx, -7168[rcx+rdx*8]
	mov	DWORD PTR 16[rbx], edx
	cmp	r8d, -288
	jge	.L64
	sub	eax, 288
	sal	eax, 8
	and	r11d, 4
	mov	DWORD PTR 12[rbx], eax
	je	.L71
.L65:
	lea	rax, Task_80622C8[rip]
	mov	QWORD PTR 40[r10], rax
.L62:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r14
	ret
	.p2align 4,,10
	.p2align 3
.L64:
	mov	eax, DWORD PTR 16[r9]
	neg	eax
	cmp	edi, eax
	jg	.L72
	movzx	eax, WORD PTR 102[rbx]
	mov	rdx, QWORD PTR .refptr.gPlayerControls[rip]
	mov	edi, eax
	and	di, WORD PTR [rdx]
	je	.L68
	mov	ecx, 50
	mov	r8d, -1248
	lea	rax, Task_8061F60[rip]
	mov	BYTE PTR 117[rbx], 5
	mov	WORD PTR 108[rbx], cx
	mov	WORD PTR 20[rbx], bp
	mov	WORD PTR 22[rbx], r8w
	mov	QWORD PTR 40[r10], rax
	jmp	.L62
	.p2align 4,,10
	.p2align 3
.L70:
	mov	rcx, r10
	mov	BYTE PTR [r8], dl
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r14
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L71:
	mov	r11d, 49
	mov	WORD PTR 108[rbx], r11w
	jmp	.L65
	.p2align 4,,10
	.p2align 3
.L72:
	mov	r9d, 50
	lea	rax, Task_8061F60[rip]
	mov	BYTE PTR 117[rbx], 5
	mov	WORD PTR 108[rbx], r9w
	mov	WORD PTR 20[rbx], di
	mov	QWORD PTR 40[r10], rax
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r14
	ret
	.p2align 4,,10
	.p2align 3
.L68:
	and	r11d, 4
	jne	.L62
	test	al, -128
	jne	.L73
	movsx	rdx, BYTE PTR 141[rbx]
	mov	rax, QWORD PTR .refptr.gPlayerCharacterIdleAnims[rip]
	sub	r12d, 282
	and	r12d, 1023
	movzx	eax, WORD PTR [rax+rdx*2]
	add	eax, 68
	mov	WORD PTR 112[rbx], ax
	mov	eax, 2924233053
	imul	r12, rax
	shr	r12, 38
	mov	WORD PTR 114[rbx], r12w
	jmp	.L62
	.p2align 4,,10
	.p2align 3
.L73:
	mov	eax, 4
	mov	rcx, rbx
	mov	edx, 9
	mov	WORD PTR 108[rbx], ax
	call	Player_HandleSpriteYOffsetChange
	or	DWORD PTR 36[rbx], 4
	mov	edx, 2310
	mov	ecx, 109
	mov	WORD PTR 26[rbx], dx
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r14
	jmp	m4aSongNumStart
	.seh_endproc
	.p2align 4
	.globl	Task_80622C8
	.def	Task_80622C8;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_80622C8
Task_80622C8:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	mov	r8, QWORD PTR [rax]
	mov	r9d, DWORD PTR 36[rbx]
	mov	rcx, QWORD PTR 24[r8]
	mov	rsi, QWORD PTR [rcx]
	movzx	edx, WORD PTR 8[rcx]
	movzx	eax, WORD PTR 10[rcx]
	movzx	r11d, BYTE PTR 12[rcx]
	movzx	r10d, BYTE PTR 1[rsi]
	test	r9b, -128
	jne	.L84
	sal	edx, 5
	movzx	esi, WORD PTR 24[rbx]
	sal	eax, 5
	add	edx, r11d
	add	eax, r10d
	lea	edx, -288[0+rdx*8]
	lea	r10d, 1[rsi]
	sal	eax, 3
	xor	esi, esi
	sal	edx, 8
	movsx	r11d, r10w
	mov	WORD PTR 24[rbx], r10w
	mov	DWORD PTR 12[rbx], edx
	mov	edx, DWORD PTR 16[rbx]
	mov	WORD PTR 22[rbx], si
	add	edx, r11d
	mov	DWORD PTR 16[rbx], edx
	sar	edx, 8
	sub	edx, eax
	cmp	edx, -255
	jge	.L76
	sub	eax, 255
	sal	eax, 8
	and	r9d, 4
	mov	DWORD PTR 16[rbx], eax
	je	.L85
.L77:
	lea	rax, Task_8062414[rip]
	mov	QWORD PTR 40[r8], rax
.L74:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L76:
	mov	eax, DWORD PTR 16[rcx]
	neg	eax
	cmp	r11d, eax
	jg	.L86
	movzx	eax, WORD PTR 102[rbx]
	mov	rdx, QWORD PTR .refptr.gPlayerControls[rip]
	mov	esi, eax
	and	si, WORD PTR [rdx]
	je	.L80
	mov	ecx, 50
	lea	rax, Task_8061F60[rip]
	mov	BYTE PTR 117[rbx], 5
	mov	WORD PTR 108[rbx], cx
	mov	DWORD PTR 20[rbx], -81788928
	mov	QWORD PTR 40[r8], rax
	jmp	.L74
	.p2align 4,,10
	.p2align 3
.L84:
	mov	rcx, r8
	mov	BYTE PTR [rsi], r11b
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L85:
	mov	esi, 47
	mov	WORD PTR 108[rbx], si
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L86:
	mov	r9d, 50
	xor	r11d, r11d
	lea	rax, Task_8061F60[rip]
	mov	BYTE PTR 117[rbx], 5
	mov	WORD PTR 108[rbx], r9w
	mov	WORD PTR 20[rbx], r11w
	mov	WORD PTR 22[rbx], r10w
	mov	QWORD PTR 40[r8], rax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L80:
	and	r9d, 4
	jne	.L74
	test	al, -128
	je	.L74
	mov	eax, 4
	mov	rcx, rbx
	mov	edx, 9
	mov	WORD PTR 108[rbx], ax
	call	Player_HandleSpriteYOffsetChange
	or	DWORD PTR 36[rbx], 4
	mov	edx, 2310
	mov	ecx, 109
	mov	WORD PTR 26[rbx], dx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	m4aSongNumStart
	.seh_endproc
	.p2align 4
	.globl	Task_8062414
	.def	Task_8062414;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_8062414
Task_8062414:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	mov	r8, QWORD PTR [rax]
	mov	r10d, DWORD PTR 36[rbx]
	mov	rcx, QWORD PTR 24[r8]
	movzx	eax, WORD PTR 8[rcx]
	movzx	edx, BYTE PTR 12[rcx]
	mov	r11, QWORD PTR [rcx]
	movzx	r9d, WORD PTR 10[rcx]
	sal	eax, 5
	mov	edi, edx
	add	eax, edx
	movzx	esi, BYTE PTR 1[r11]
	lea	edx, 0[0+rax*8]
	test	r10b, -128
	jne	.L96
	mov	r11d, DWORD PTR 12[rbx]
	mov	eax, r11d
	sar	eax, 8
	sub	eax, edx
	cmp	eax, -424
	jl	.L97
	imul	eax, eax, 930
	movsx	edx, WORD PTR 24[rbx]
	sal	r9d, 5
	add	r9d, esi
	add	r11d, edx
	mov	esi, edx
	sar	eax, 8
	mov	DWORD PTR 12[rbx], r11d
	mov	r11, QWORD PTR .refptr.gSineTable[rip]
	add	eax, 768
	mov	edi, eax
	and	eax, 1023
	movzx	eax, WORD PTR [r11+rax*2]
	and	edi, 1023
	sar	ax, 6
	cwde
	lea	r11d, [rax+rax*2]
	lea	eax, -195[0+r9*8]
	sal	eax, 8
	lea	eax, -7168[rax+r11*8]
	xor	r11d, r11d
	mov	DWORD PTR 16[rbx], eax
	mov	eax, DWORD PTR 16[rcx]
	mov	WORD PTR 22[rbx], r11w
	neg	eax
	cmp	edx, eax
	jle	.L92
	mov	r10d, 50
	lea	rax, Task_8061F60[rip]
	mov	BYTE PTR 117[rbx], 5
	mov	WORD PTR 108[rbx], r10w
	mov	WORD PTR 20[rbx], dx
	mov	QWORD PTR 40[r8], rax
.L87:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L92:
	movzx	eax, WORD PTR 102[rbx]
	mov	rdx, QWORD PTR .refptr.gPlayerControls[rip]
	mov	ecx, eax
	and	cx, WORD PTR [rdx]
	jne	.L98
	and	r10d, 4
	jne	.L87
	test	al, -128
	jne	.L99
	movsx	rdx, BYTE PTR 141[rbx]
	mov	rax, QWORD PTR .refptr.gPlayerCharacterIdleAnims[rip]
	sub	edi, 282
	and	edi, 1023
	movzx	eax, WORD PTR [rax+rdx*2]
	add	eax, 68
	mov	WORD PTR 112[rbx], ax
	mov	eax, 2924233053
	imul	rdi, rax
	shr	rdi, 38
	mov	WORD PTR 114[rbx], di
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L97:
	and	r10d, 4
	setne	al
	add	eax, 1
	mov	BYTE PTR 117[rbx], al
	lea	rax, Task_8061F60[rip]
	mov	QWORD PTR 40[r8], rax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L96:
	mov	rcx, r8
	mov	BYTE PTR [r11], dil
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L98:
	mov	ecx, 50
	mov	r9d, -1248
	lea	rax, Task_8061F60[rip]
	mov	BYTE PTR 117[rbx], 5
	mov	WORD PTR 108[rbx], cx
	mov	WORD PTR 20[rbx], si
	mov	WORD PTR 22[rbx], r9w
	mov	QWORD PTR 40[r8], rax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L99:
	mov	eax, 4
	mov	rcx, rbx
	mov	edx, 9
	mov	WORD PTR 108[rbx], ax
	call	Player_HandleSpriteYOffsetChange
	or	DWORD PTR 36[rbx], 4
	mov	edx, 2310
	mov	ecx, 109
	mov	WORD PTR 26[rbx], dx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	m4aSongNumStart
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Corkscrew3D_Start
	.def	CreateEntity_Corkscrew3D_Start;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Corkscrew3D_Start
CreateEntity_Corkscrew3D_Start:
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
	mov	edx, 24
	mov	r8d, 8192
	lea	rcx, Task_8061914[rip]
	call	TaskCreate
	mov	rax, QWORD PTR 24[rax]
	mov	WORD PTR 8[rax], di
	mov	WORD PTR 10[rax], si
	mov	QWORD PTR [rax], rbx
	movzx	edx, BYTE PTR [rbx]
	mov	BYTE PTR 12[rax], dl
	mov	BYTE PTR [rbx], -2
	mov	BYTE PTR 13[rax], 0
	mov	DWORD PTR 16[rax], 1024
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Corkscrew3D_End
	.def	CreateEntity_Corkscrew3D_End;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Corkscrew3D_End
CreateEntity_Corkscrew3D_End:
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
	mov	edx, 24
	mov	r8d, 8192
	lea	rcx, Task_8061F60[rip]
	call	TaskCreate
	mov	rax, QWORD PTR 24[rax]
	mov	WORD PTR 8[rax], di
	mov	WORD PTR 10[rax], si
	mov	QWORD PTR [rax], rbx
	movzx	edx, BYTE PTR [rbx]
	mov	BYTE PTR 12[rax], dl
	mov	BYTE PTR [rbx], -2
	mov	BYTE PTR 13[rax], 0
	mov	DWORD PTR 16[rax], 1024
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_806267C
	.def	sub_806267C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806267C
sub_806267C:
	.seh_endprologue
	mov	r10d, ecx
	mov	ecx, edx
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	sal	ecx, 8
	mov	r9d, DWORD PTR 12[rdx]
	mov	eax, r9d
	sar	eax, 8
	sub	eax, r10d
	imul	eax, eax, 930
	sar	eax, 8
	add	eax, r8d
	movsx	r8d, WORD PTR 24[rdx]
	mov	r10d, eax
	and	eax, 1023
	add	r8d, r9d
	and	r10d, 1023
	mov	DWORD PTR 12[rdx], r8d
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	movzx	eax, WORD PTR [r8+rax*2]
	sar	ax, 6
	cwde
	lea	eax, [rax+rax*2]
	lea	eax, -7168[rcx+rax*8]
	mov	DWORD PTR 16[rdx], eax
	xor	eax, eax
	mov	WORD PTR 22[rdx], ax
	mov	eax, r10d
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Player_HandleSpriteYOffsetChange;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gPlayerCharacterIdleAnims, "dr"
	.globl	.refptr.gPlayerCharacterIdleAnims
	.linkonce	discard
.refptr.gPlayerCharacterIdleAnims:
	.quad	gPlayerCharacterIdleAnims
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
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
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
