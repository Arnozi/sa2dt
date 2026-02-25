	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_8060D34
	.def	Task_8060D34;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_8060D34
Task_8060D34:
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
	lea	rsi, sub_8060ED0[rip]
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
	.globl	sub_8061088
	.def	sub_8061088;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8061088
sub_8061088:
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
	lea	rsi, sub_8061228[rip]
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
	.globl	sub_8060ED0
	.def	sub_8060ED0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8060ED0
sub_8060ED0:
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
	mov	r9, QWORD PTR [rax]
	mov	r10d, DWORD PTR 36[rbx]
	mov	r8, QWORD PTR 24[r9]
	movzx	eax, WORD PTR 8[r8]
	movzx	edx, BYTE PTR 12[r8]
	mov	r11, QWORD PTR [r8]
	movzx	ecx, WORD PTR 10[r8]
	sal	eax, 5
	mov	edi, edx
	add	eax, edx
	movzx	esi, BYTE PTR 1[r11]
	lea	edx, 0[0+rax*8]
	test	r10b, -128
	jne	.L33
	mov	r11d, DWORD PTR 12[rbx]
	mov	eax, r11d
	sar	eax, 8
	sub	eax, edx
	cmp	eax, 560
	jg	.L34
	imul	eax, eax, 930
	movsx	edx, WORD PTR 24[rbx]
	sal	ecx, 5
	add	ecx, esi
	add	r11d, edx
	sal	ecx, 11
	mov	edi, edx
	sar	eax, 8
	mov	DWORD PTR 12[rbx], r11d
	mov	r11, QWORD PTR .refptr.gSineTable[rip]
	add	eax, 256
	mov	ebp, eax
	and	eax, 1023
	movzx	eax, WORD PTR [r11+rax*2]
	xor	r11d, r11d
	and	ebp, 1023
	mov	WORD PTR 22[rbx], r11w
	sar	ax, 6
	cwde
	lea	eax, [rax+rax*2]
	lea	eax, -7168[rcx+rax*8]
	mov	DWORD PTR 16[rbx], eax
	cmp	edx, DWORD PTR 20[r8]
	jge	.L29
	mov	r10d, 50
	lea	rax, Task_8060D34[rip]
	mov	BYTE PTR 117[rbx], 5
	mov	WORD PTR 108[rbx], r10w
	mov	WORD PTR 20[rbx], dx
	mov	QWORD PTR 40[r9], rax
.L24:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L29:
	movzx	eax, WORD PTR 102[rbx]
	mov	rdx, QWORD PTR .refptr.gPlayerControls[rip]
	mov	esi, eax
	and	si, WORD PTR [rdx]
	jne	.L35
	and	r10d, 4
	jne	.L24
	test	al, -128
	jne	.L36
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
.L34:
	and	r10d, 4
	setne	al
	add	eax, 1
	mov	BYTE PTR 117[rbx], al
	lea	rax, Task_8060D34[rip]
	mov	QWORD PTR 40[r9], rax
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L33:
	mov	rcx, r9
	mov	BYTE PTR [r11], dil
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L35:
	mov	ecx, 50
	mov	r8d, -1248
	lea	rax, Task_8060D34[rip]
	mov	BYTE PTR 117[rbx], 5
	mov	WORD PTR 108[rbx], cx
	mov	WORD PTR 20[rbx], di
	mov	WORD PTR 22[rbx], r8w
	mov	QWORD PTR 40[r9], rax
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L36:
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
	jmp	m4aSongNumStart
	.seh_endproc
	.p2align 4
	.globl	sub_8061228
	.def	sub_8061228;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8061228
sub_8061228:
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
	mov	r9, QWORD PTR [rax]
	mov	r10d, DWORD PTR 36[rbx]
	mov	r8, QWORD PTR 24[r9]
	movzx	eax, WORD PTR 8[r8]
	movzx	edx, BYTE PTR 12[r8]
	mov	r11, QWORD PTR [r8]
	movzx	ecx, WORD PTR 10[r8]
	sal	eax, 5
	mov	edi, edx
	add	eax, edx
	movzx	esi, BYTE PTR 1[r11]
	lea	edx, 0[0+rax*8]
	test	r10b, -128
	jne	.L46
	mov	r11d, DWORD PTR 12[rbx]
	mov	eax, r11d
	sar	eax, 8
	sub	eax, edx
	cmp	eax, -560
	jl	.L47
	imul	eax, eax, 930
	movsx	edx, WORD PTR 24[rbx]
	sal	ecx, 5
	add	ecx, esi
	add	r11d, edx
	sal	ecx, 11
	mov	edi, edx
	sar	eax, 8
	mov	DWORD PTR 12[rbx], r11d
	mov	r11, QWORD PTR .refptr.gSineTable[rip]
	add	eax, 256
	mov	ebp, eax
	and	eax, 1023
	movzx	eax, WORD PTR [r11+rax*2]
	xor	r11d, r11d
	and	ebp, 1023
	mov	WORD PTR 22[rbx], r11w
	sar	ax, 6
	cwde
	lea	eax, [rax+rax*2]
	lea	eax, -7168[rcx+rax*8]
	mov	DWORD PTR 16[rbx], eax
	cmp	edx, DWORD PTR 20[r8]
	jle	.L42
	mov	r10d, 50
	lea	rax, sub_8061088[rip]
	mov	BYTE PTR 117[rbx], 5
	mov	WORD PTR 108[rbx], r10w
	mov	WORD PTR 20[rbx], dx
	mov	QWORD PTR 40[r9], rax
.L37:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L42:
	movzx	eax, WORD PTR 102[rbx]
	mov	rdx, QWORD PTR .refptr.gPlayerControls[rip]
	mov	esi, eax
	and	si, WORD PTR [rdx]
	jne	.L48
	and	r10d, 4
	jne	.L37
	test	al, -128
	jne	.L49
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
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L47:
	and	r10d, 4
	setne	al
	add	eax, 1
	mov	BYTE PTR 117[rbx], al
	lea	rax, sub_8061088[rip]
	mov	QWORD PTR 40[r9], rax
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L46:
	mov	rcx, r9
	mov	BYTE PTR [r11], dil
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L48:
	mov	ecx, 50
	mov	r8d, -1248
	lea	rax, sub_8061088[rip]
	mov	BYTE PTR 117[rbx], 5
	mov	WORD PTR 108[rbx], cx
	mov	WORD PTR 20[rbx], di
	mov	WORD PTR 22[rbx], r8w
	mov	QWORD PTR 40[r9], rax
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L49:
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
	jmp	m4aSongNumStart
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Corkscrew_Start
	.def	CreateEntity_Corkscrew_Start;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Corkscrew_Start
CreateEntity_Corkscrew_Start:
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
	lea	rcx, Task_8060D34[rip]
	call	TaskCreate
	mov	rax, QWORD PTR 24[rax]
	mov	WORD PTR 8[rax], di
	mov	WORD PTR 10[rax], si
	mov	QWORD PTR [rax], rbx
	movzx	edx, BYTE PTR [rbx]
	mov	BYTE PTR 12[rax], dl
	mov	BYTE PTR [rbx], -2
	mov	BYTE PTR 13[rax], 0
	mov	DWORD PTR 20[rax], 1024
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_Corkscrew_End
	.def	CreateEntity_Corkscrew_End;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_Corkscrew_End
CreateEntity_Corkscrew_End:
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
	lea	rcx, sub_8061088[rip]
	call	TaskCreate
	mov	rax, QWORD PTR 24[rax]
	mov	WORD PTR 8[rax], di
	mov	WORD PTR 10[rax], si
	mov	QWORD PTR [rax], rbx
	movzx	edx, BYTE PTR [rbx]
	mov	BYTE PTR 12[rax], dl
	mov	BYTE PTR [rbx], -2
	mov	DWORD PTR 20[rax], -1024
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_806148C
	.def	sub_806148C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806148C
sub_806148C:
	.seh_endprologue
	mov	r8d, ecx
	mov	ecx, edx
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	mov	r9d, DWORD PTR 12[rdx]
	mov	eax, r9d
	sar	eax, 8
	sub	eax, r8d
	movsx	r8d, WORD PTR 24[rdx]
	imul	eax, eax, 930
	add	r8d, r9d
	mov	DWORD PTR 12[rdx], r8d
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	sar	eax, 8
	add	eax, 256
	mov	r10d, eax
	and	eax, 1023
	movzx	eax, WORD PTR [r8+rax*2]
	and	r10d, 1023
	sar	ax, 6
	cwde
	lea	r8d, [rax+rax*2]
	mov	eax, ecx
	sal	eax, 8
	lea	eax, -7168[rax+r8*8]
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
