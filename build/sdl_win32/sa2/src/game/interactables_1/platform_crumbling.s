	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestructor_Interactable019;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestructor_Interactable019
TaskDestructor_Interactable019:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	Task_Interactable_019;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_Interactable_019
Task_Interactable_019:
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
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbp, QWORD PTR .refptr.gCurTask[rip]
	mov	r14, QWORD PTR .refptr.gCamera[rip]
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR 0[rbp]
	mov	rsi, QWORD PTR 24[rax]
	movzx	ebx, WORD PTR 8[rsi]
	movzx	eax, BYTE PTR 12[rsi]
	lea	rdi, 16[rsi]
	mov	r12, QWORD PTR [rsi]
	movzx	r8d, WORD PTR 10[rsi]
	mov	rcx, rdi
	sal	ebx, 5
	add	ebx, eax
	movzx	eax, BYTE PTR 1[r12]
	sal	r8d, 5
	sal	ebx, 3
	add	r8d, eax
	mov	eax, ebx
	sub	ax, WORD PTR [r14]
	movsx	ebx, bx
	sal	r8d, 3
	mov	WORD PTR 54[rsi], ax
	mov	edx, ebx
	mov	eax, r8d
	sub	ax, WORD PTR 4[r14]
	movsx	r13d, r8w
	mov	WORD PTR 56[rsi], ax
	mov	r8d, r13d
	call	Coll_Player_PlatformCrumbling
	test	al, 8
	je	.L4
	mov	rax, QWORD PTR 0[rbp]
	lea	rdx, Task_805E35C[rip]
	mov	QWORD PTR 40[rax], rdx
	xor	edx, edx
	mov	WORD PTR 80[rsi], dx
.L4:
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	jbe	.L5
	cmp	BYTE PTR [r12], -3
	je	.L12
.L5:
	mov	eax, DWORD PTR [r14]
	lea	edx, 554[rax]
	cmp	ebx, edx
	jg	.L6
	add	eax, -128
	cmp	ebx, eax
	jge	.L13
.L6:
	movzx	eax, WORD PTR 54[rsi]
	sub	ax, -128
	cmp	ax, 682
	ja	.L8
	movzx	eax, WORD PTR 56[rsi]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L7
.L8:
	movzx	eax, BYTE PTR 12[rsi]
	mov	BYTE PTR [r12], al
	mov	rcx, QWORD PTR 0[rbp]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L13:
	mov	eax, DWORD PTR 4[r14]
	lea	edx, 368[rax]
	cmp	r13d, edx
	jg	.L6
	add	eax, -128
	cmp	r13d, eax
	jl	.L6
.L7:
	mov	rcx, rdi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L12:
	xor	eax, eax
	lea	rcx, Task_805E480[rip]
	mov	WORD PTR 80[rsi], ax
	mov	rax, QWORD PTR 0[rbp]
	mov	QWORD PTR 40[rax], rcx
	jmp	.L5
	.seh_endproc
	.p2align 4
	.def	Task_805E35C;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_805E35C
Task_805E35C:
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
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbp, QWORD PTR .refptr.gCurTask[rip]
	mov	r14, QWORD PTR .refptr.gCamera[rip]
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR 0[rbp]
	mov	rsi, QWORD PTR 24[rax]
	movzx	ebx, WORD PTR 8[rsi]
	movzx	eax, BYTE PTR 12[rsi]
	lea	rdi, 16[rsi]
	mov	r12, QWORD PTR [rsi]
	movzx	r8d, WORD PTR 10[rsi]
	mov	rcx, rdi
	sal	ebx, 5
	add	ebx, eax
	movzx	eax, BYTE PTR 1[r12]
	sal	r8d, 5
	sal	ebx, 3
	add	r8d, eax
	mov	eax, ebx
	sub	ax, WORD PTR [r14]
	movsx	ebx, bx
	sal	r8d, 3
	mov	WORD PTR 54[rsi], ax
	mov	edx, ebx
	mov	eax, r8d
	sub	ax, WORD PTR 4[r14]
	movsx	r13d, r8w
	mov	WORD PTR 56[rsi], ax
	mov	r8d, r13d
	call	Coll_Player_PlatformCrumbling
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	jbe	.L15
	cmp	BYTE PTR [r12], -3
	je	.L21
.L15:
	movzx	eax, WORD PTR 80[rsi]
	cmp	ax, 30
	jg	.L17
	add	eax, 1
	mov	WORD PTR 80[rsi], ax
.L16:
	mov	eax, DWORD PTR [r14]
	lea	edx, 554[rax]
	cmp	ebx, edx
	jg	.L18
	add	eax, -128
	cmp	ebx, eax
	jl	.L18
	mov	eax, DWORD PTR 4[r14]
	lea	edx, 368[rax]
	cmp	r13d, edx
	jle	.L22
	.p2align 4,,10
	.p2align 3
.L18:
	movzx	eax, WORD PTR 54[rsi]
	sub	ax, -128
	cmp	ax, 682
	ja	.L20
	movzx	eax, WORD PTR 56[rsi]
	sub	ax, -128
	cmp	ax, 496
	jbe	.L19
.L20:
	movzx	eax, BYTE PTR 12[rsi]
	mov	BYTE PTR [r12], al
	mov	rcx, QWORD PTR 0[rbp]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L17:
	xor	eax, eax
	lea	rdx, Task_805E480[rip]
	mov	WORD PTR 80[rsi], ax
	mov	rax, QWORD PTR 0[rbp]
	mov	QWORD PTR 40[rax], rdx
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L22:
	add	eax, -128
	cmp	r13d, eax
	jl	.L18
.L19:
	mov	rcx, rdi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L21:
	mov	rax, QWORD PTR 0[rbp]
	xor	edx, edx
	lea	rcx, Task_805E480[rip]
	mov	WORD PTR 80[rsi], dx
	mov	QWORD PTR 40[rax], rcx
	jmp	.L16
	.seh_endproc
	.p2align 4
	.def	Task_805E480;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_805E480
Task_805E480:
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
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rbp, QWORD PTR .refptr.gCamera[rip]
	mov	r9, QWORD PTR .refptr.gPlayer[rip]
	mov	rax, QWORD PTR [rax]
	mov	r12, QWORD PTR 24[rax]
	movzx	ebx, WORD PTR 8[r12]
	mov	rsi, QWORD PTR [r12]
	lea	rcx, 16[r12]
	movzx	eax, BYTE PTR 12[r12]
	movzx	r8d, WORD PTR 10[r12]
	mov	QWORD PTR 40[rsp], rcx
	sal	ebx, 5
	add	ebx, eax
	movzx	eax, BYTE PTR 1[rsi]
	sal	r8d, 5
	add	WORD PTR 80[r12], 1
	sal	ebx, 3
	add	r8d, eax
	mov	edx, ebx
	mov	eax, DWORD PTR 4[rbp]
	sub	dx, WORD PTR 0[rbp]
	sal	r8d, 3
	mov	WORD PTR 54[r12], dx
	movsx	ebx, bx
	mov	edx, r8d
	lea	edi, 240[rax]
	sub	edx, eax
	sub	edi, r8d
	movsx	r8d, r8w
	mov	WORD PTR 56[r12], dx
	mov	edx, ebx
	mov	WORD PTR 38[rsp], di
	call	Coll_Player_PlatformCrumbling
	mov	eax, DWORD PTR 0[rbp]
	lea	edx, 554[rax]
	cmp	ebx, edx
	jg	.L24
	add	eax, -128
	cmp	ebx, eax
	jge	.L25
.L24:
	movzx	eax, WORD PTR 54[r12]
	sub	ax, -128
	cmp	ax, 682
	ja	.L50
.L25:
	mov	rax, QWORD PTR .refptr.gRefSpriteTables[rip]
	movzx	r8d, WORD PTR 34[r12]
	xor	ebx, ebx
	xor	r14d, r14d
	mov	rax, QWORD PTR [rax]
	mov	rcx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR 40[r12]
	movzx	eax, BYTE PTR 1[rax]
	lea	rdx, [rax+rax*4]
	mov	rax, QWORD PTR [rcx+r8*8]
	lea	rbp, [rax+rdx*2]
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	lea	rsi, 65536[rax]
.L26:
	xor	edi, edi
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L54:
	test	r14b, r14b
	jne	.L28
	cmp	ax, 1
	jne	.L28
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	mov	ecx, DWORD PTR 36[rdx]
	test	cl, 8
	je	.L29
	mov	r10, QWORD PTR 40[rsp]
	cmp	QWORD PTR 64[rdx], r10
	je	.L51
.L29:
	mov	rdx, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rdx]
	lea	rdx, Task_805E6A4[rip]
	mov	QWORD PTR 40[rcx], rdx
.L28:
	movzx	eax, ax
	imul	eax, eax
	imul	eax, eax, 42
	sar	eax, 8
	mov	r15d, eax
	cmp	WORD PTR 38[rsp], ax
	jl	.L52
.L27:
	movzx	ecx, WORD PTR 58[r12]
	sar	ecx, 6
	and	ecx, 31
	call	OamMalloc
	mov	rcx, QWORD PTR .refptr.iwram_end[rip]
	cmp	QWORD PTR [rcx], rax
	je	.L23
	movzx	ecx, WORD PTR 56[r12]
	movzx	r11d, WORD PTR 54[r12]
	mov	BYTE PTR 4[rax], 0
	add	ecx, ebx
	add	ecx, r15d
	lea	r15d, [r11+rdi]
	mov	WORD PTR 2[rax], cx
	mov	ecx, DWORD PTR 48[r12]
	test	ch, 4
	je	.L32
	sub	r11d, 8
	mov	r15d, r11d
	movzx	r11d, BYTE PTR 5[rax]
	sub	r15d, edi
	and	r11d, -32
	or	r11d, 8
	mov	BYTE PTR 5[rax], r11b
.L32:
	mov	r11, QWORD PTR 24[r12]
	shr	ecx, 12
	mov	WORD PTR [rax], r15w
	add	edi, 8
	and	ecx, 3
	add	r14d, 1
	sub	r11, rsi
	sal	ecx, 10
	shr	r11, 5
	lea	edx, 0[r13+r11]
	and	dx, 1023
	or	edx, ecx
	movzx	ecx, WORD PTR 8[rax]
	and	cx, -4096
	or	edx, ecx
	mov	WORD PTR 8[rax], dx
	movzx	ecx, BYTE PTR 69[r12]
	movzx	edx, WORD PTR 4[rbp]
	add	edx, ecx
	movzx	ecx, BYTE PTR 9[rax]
	sar	edx, 12
	sal	edx, 4
	and	ecx, 15
	or	edx, ecx
	mov	BYTE PTR 9[rax], dl
	cmp	di, 64
	je	.L53
.L33:
	movzx	eax, WORD PTR 80[r12]
	movzx	r13d, r14b
	lea	eax, -31[r13+rax]
	test	ax, ax
	jg	.L54
	xor	r15d, r15d
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L53:
	add	ebx, 8
	cmp	bx, 32
	jne	.L26
.L23:
	add	rsp, 56
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
.L51:
	and	ecx, -11
	or	ecx, 2
	mov	DWORD PTR 36[rdx], ecx
	jmp	.L29
	.p2align 4,,10
	.p2align 3
.L52:
	test	r14b, r14b
	jne	.L23
.L49:
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	add	rsp, 56
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
.L50:
	movzx	eax, BYTE PTR 12[r12]
	mov	BYTE PTR [rsi], al
	jmp	.L49
	.seh_endproc
	.p2align 4
	.def	Task_805E6A4;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_805E6A4
Task_805E6A4:
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
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r10, QWORD PTR .refptr.gCamera[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rsi, QWORD PTR 24[rcx]
	movzx	eax, WORD PTR 8[rsi]
	movzx	edx, BYTE PTR 12[rsi]
	mov	r13, QWORD PTR [rsi]
	sal	eax, 5
	mov	r9d, edx
	add	eax, edx
	movzx	edx, WORD PTR 10[rsi]
	movzx	r8d, BYTE PTR 1[r13]
	sal	eax, 3
	sal	edx, 5
	mov	r11d, eax
	cwde
	add	edx, r8d
	mov	r8d, DWORD PTR 4[r10]
	mov	r10d, DWORD PTR [r10]
	sal	edx, 3
	lea	edi, 240[r8]
	sub	r11d, r10d
	sub	edi, edx
	sub	edx, r8d
	mov	WORD PTR 54[rsi], r11w
	mov	WORD PTR 38[rsp], di
	movzx	edi, WORD PTR 80[rsi]
	mov	WORD PTR 56[rsi], dx
	lea	edx, 554[r10]
	lea	r8d, 1[rdi]
	mov	WORD PTR 80[rsi], r8w
	cmp	eax, edx
	jg	.L56
	add	r10d, -128
	cmp	eax, r10d
	jl	.L56
.L57:
	movzx	r9d, WORD PTR 34[rsi]
	xor	ebp, ebp
	xor	r14d, r14d
	mov	QWORD PTR 40[rsp], r13
	mov	rax, QWORD PTR .refptr.gRefSpriteTables[rip]
	mov	r13d, r14d
	mov	rax, QWORD PTR [rax]
	mov	rcx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR 40[rsi]
	movzx	eax, BYTE PTR 1[rax]
	lea	rdx, [rax+rax*4]
	mov	rax, QWORD PTR [rcx+r9*8]
	lea	r12, [rax+rdx*2]
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	lea	r15, 65536[rax]
	mov	rax, r15
	mov	r15, r12
	mov	r12d, ebp
	mov	rbp, rax
.L58:
	movzx	edi, r13b
	lea	ebx, -31[r8+rdi]
	movsx	ebx, bx
	imul	ebx, ebx
	imul	ebx, ebx, 42
	sar	ebx, 8
	cmp	WORD PTR 38[rsp], bx
	jl	.L70
	xor	r14d, r14d
	jmp	.L59
	.p2align 4,,10
	.p2align 3
.L72:
	sub	r9d, 8
	mov	r10d, 8
	sub	r9d, r14d
.L63:
	movzx	eax, BYTE PTR 5[rdx]
	shr	ecx, 12
	mov	WORD PTR [rdx], r9w
	add	r13d, 1
	and	ecx, 3
	and	eax, -32
	sal	ecx, 10
	or	eax, r10d
	mov	BYTE PTR 5[rdx], al
	mov	rax, QWORD PTR 24[rsi]
	movzx	r8d, BYTE PTR 69[rsi]
	sub	rax, rbp
	shr	rax, 5
	add	eax, edi
	and	ax, 1023
	or	eax, ecx
	movzx	ecx, WORD PTR 4[r15]
	add	ecx, r8d
	sar	ecx, 12
	sal	ecx, 12
	or	eax, ecx
	mov	WORD PTR 8[rdx], ax
	cmp	r14w, 56
	je	.L71
	movzx	ebx, WORD PTR 80[rsi]
	movzx	edi, r13b
	add	r14d, 8
	lea	ebx, -31[rdi+rbx]
	movsx	ebx, bx
	imul	ebx, ebx
	imul	ebx, ebx, 42
	sar	ebx, 8
	cmp	WORD PTR 38[rsp], bx
	jl	.L70
.L59:
	movzx	ecx, WORD PTR 58[rsi]
	sar	ecx, 6
	and	ecx, 31
	call	OamMalloc
	mov	rdx, rax
	mov	rax, QWORD PTR .refptr.iwram_end[rip]
	cmp	QWORD PTR [rax], rdx
	je	.L55
	movzx	eax, WORD PTR 56[rsi]
	mov	ecx, DWORD PTR 48[rsi]
	movzx	r9d, WORD PTR 54[rsi]
	add	eax, r12d
	add	eax, ebx
	mov	WORD PTR 2[rdx], ax
	test	ch, 4
	jne	.L72
	add	r9d, r14d
	xor	r10d, r10d
	jmp	.L63
	.p2align 4,,10
	.p2align 3
.L56:
	sub	r11w, -128
	cmp	r11w, 682
	jbe	.L57
	mov	BYTE PTR 0[r13], r9b
	add	rsp, 56
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
.L71:
	add	r12d, 8
	cmp	r12w, 32
	je	.L55
	movzx	r8d, WORD PTR 80[rsi]
	jmp	.L58
	.p2align 4,,10
	.p2align 3
.L70:
	mov	r14d, r13d
	mov	r13, QWORD PTR 40[rsp]
	test	r14b, r14b
	je	.L73
.L55:
	add	rsp, 56
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
.L73:
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	call	TaskDestroy
	movzx	eax, BYTE PTR 12[rsi]
	mov	BYTE PTR 0[r13], al
	jmp	.L55
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_PlatformCrumbling
	.def	CreateEntity_PlatformCrumbling;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_PlatformCrumbling
CreateEntity_PlatformCrumbling:
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
	lea	rax, TaskDestructor_Interactable019[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rbp, rcx
	mov	esi, edx
	mov	r12d, r8d
	mov	r13d, r9d
	mov	r8d, 8192
	xor	r9d, r9d
	mov	edx, 88
	lea	rcx, Task_Interactable_019[rip]
	call	TaskCreate
	mov	edx, r13d
	mov	ecx, 32
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 8[rbx], si
	movzx	esi, si
	lea	rdi, 16[rbx]
	mov	WORD PTR 10[rbx], r12w
	movzx	r12d, r12w
	sal	esi, 5
	mov	QWORD PTR [rbx], rbp
	movzx	eax, BYTE PTR 0[rbp]
	sal	r12d, 5
	add	esi, 254
	movzx	esi, si
	mov	ah, dl
	mov	WORD PTR 12[rbx], ax
	xor	eax, eax
	mov	BYTE PTR 0[rbp], -2
	mov	WORD PTR 80[rbx], ax
	movzx	r8d, BYTE PTR 1[rbp]
	add	r8d, r12d
	sal	r8d, 16
	or	r8d, esi
	movd	xmm0, r8d
	psllw	xmm0, 3
	movd	DWORD PTR 54[rbx], xmm0
	call	VramMalloc
	lea	rdx, sInt019_AnimationIds[rip]
	xor	ecx, ecx
	mov	r8d, -256
	mov	QWORD PTR 24[rbx], rax
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	DWORD PTR 58[rbx], 1152
	movzx	eax, BYTE PTR [rax]
	mov	WORD PTR 64[rbx], r8w
	mov	BYTE PTR 66[rbx], 16
	and	eax, 1
	mov	BYTE PTR 69[rbx], 0
	movzx	eax, WORD PTR [rdx+rax*2]
	xor	edx, edx
	cmp	BYTE PTR 3[rbp], 1
	mov	WORD PTR 52[rbx], cx
	mov	rcx, rdi
	mov	WORD PTR 32[rbx], dx
	mov	WORD PTR 34[rbx], ax
	sbb	eax, eax
	and	eax, -1024
	add	eax, 9216
	mov	DWORD PTR 48[rbx], eax
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.section .rdata,"dr"
	.align 2
sInt019_AnimationIds:
	.word	539
	.word	539
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_PlatformCrumbling;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	OamMalloc;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.iwram_end, "dr"
	.globl	.refptr.iwram_end
	.linkonce	discard
.refptr.iwram_end:
	.quad	iwram_end
	.section	.rdata$.refptr.gRefSpriteTables, "dr"
	.globl	.refptr.gRefSpriteTables
	.linkonce	discard
.refptr.gRefSpriteTables:
	.quad	gRefSpriteTables
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
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
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
