	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_InitObjects
	.def	Task_InitObjects;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_InitObjects
Task_InitObjects:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 80
	.seh_stackalloc	80
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	r9d, 882
	mov	r8d, 4
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	movabs	rax, 72340172838076673
	lea	rdi, 3056[rbx]
	mov	edx, ebx
	mov	QWORD PTR 3048[rbx], rax
	and	rdi, -8
	mov	QWORD PTR 3363[rbx], rax
	sub	edx, edi
	lea	ecx, 3371[rdx]
	xor	edx, edx
	shr	ecx, 3
	rep stosq
	xor	eax, eax
	lea	rcx, 8[rbx]
	mov	WORD PTR 3374[rbx], ax
	mov	DWORD PTR 72[rsp], 0
	mov	DWORD PTR 64[rsp], 1
	mov	DWORD PTR 56[rsp], 14
	mov	DWORD PTR 48[rsp], 20
	mov	DWORD PTR 40[rsp], 20
	mov	DWORD PTR 32[rsp], 12288
	call	sub_806CA88
	mov	DWORD PTR 72[rsp], 0
	xor	edx, edx
	lea	rcx, 72[rbx]
	mov	DWORD PTR 64[rsp], 0
	mov	r9d, 882
	mov	r8d, 16
	mov	DWORD PTR 56[rsp], 14
	mov	DWORD PTR 48[rsp], 20
	mov	DWORD PTR 40[rsp], 20
	mov	DWORD PTR 32[rsp], 12288
	call	sub_806CA88
	mov	DWORD PTR 72[rsp], 0
	xor	edx, edx
	lea	rcx, 136[rbx]
	mov	DWORD PTR 64[rsp], 1
	mov	r9d, 884
	mov	r8d, 4
	mov	DWORD PTR 56[rsp], 15
	mov	DWORD PTR 48[rsp], 30
	mov	DWORD PTR 40[rsp], 20
	mov	DWORD PTR 32[rsp], 12288
	call	sub_806CA88
	mov	DWORD PTR 72[rsp], 0
	xor	edx, edx
	lea	rcx, 200[rbx]
	mov	DWORD PTR 64[rsp], 6
	mov	r9d, 882
	mov	r8d, 4
	mov	DWORD PTR 56[rsp], 14
	mov	DWORD PTR 48[rsp], 20
	mov	DWORD PTR 40[rsp], 20
	mov	DWORD PTR 32[rsp], 12288
	call	sub_806CA88
	mov	DWORD PTR 72[rsp], 0
	xor	edx, edx
	lea	rcx, 264[rbx]
	mov	DWORD PTR 64[rsp], 5
	mov	r9d, 882
	mov	r8d, 4
	mov	DWORD PTR 56[rsp], 14
	mov	DWORD PTR 48[rsp], 20
	mov	DWORD PTR 40[rsp], 20
	mov	DWORD PTR 32[rsp], 12288
	call	sub_806CA88
	mov	DWORD PTR 72[rsp], 0
	xor	edx, edx
	lea	rcx, 328[rbx]
	mov	DWORD PTR 64[rsp], 0
	mov	r9d, 891
	mov	r8d, 4
	mov	DWORD PTR 56[rsp], 14
	mov	DWORD PTR 48[rsp], 20
	mov	DWORD PTR 40[rsp], 20
	mov	DWORD PTR 32[rsp], 12288
	call	sub_806CA88
	mov	DWORD PTR 72[rsp], 0
	xor	edx, edx
	lea	rcx, 392[rbx]
	mov	DWORD PTR 64[rsp], 1
	mov	r9d, 891
	mov	r8d, 4
	mov	DWORD PTR 56[rsp], 14
	mov	DWORD PTR 48[rsp], 20
	mov	DWORD PTR 40[rsp], 20
	mov	DWORD PTR 32[rsp], 12288
	call	sub_806CA88
	mov	DWORD PTR 72[rsp], 0
	xor	edx, edx
	lea	rcx, 456[rbx]
	mov	DWORD PTR 64[rsp], 2
	mov	r9d, 891
	mov	r8d, 4
	mov	DWORD PTR 56[rsp], 14
	mov	DWORD PTR 48[rsp], 20
	mov	DWORD PTR 40[rsp], 20
	mov	DWORD PTR 32[rsp], 12288
	call	sub_806CA88
	mov	DWORD PTR 72[rsp], 0
	xor	edx, edx
	lea	rcx, 520[rbx]
	mov	DWORD PTR 64[rsp], 3
	mov	r9d, 891
	mov	r8d, 4
	mov	DWORD PTR 56[rsp], 14
	mov	DWORD PTR 48[rsp], 20
	mov	DWORD PTR 40[rsp], 20
	mov	DWORD PTR 32[rsp], 12288
	call	sub_806CA88
	mov	rax, QWORD PTR [rsi]
	lea	rsi, sub_806DB48[rip]
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 80
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	SpecialStageHandleCollectRings
	.def	SpecialStageHandleCollectRings;	.scl	2;	.type	32;	.endef
	.seh_proc	SpecialStageHandleCollectRings
SpecialStageHandleCollectRings:
	.seh_endprologue
	mov	r9d, 999
	add	WORD PTR 2156[rcx], dx
	movzx	eax, WORD PTR 2156[rcx]
	cmp	ax, r9w
	cmovg	eax, r9d
	mov	r8d, edx
	mov	WORD PTR 2156[rcx], ax
	test	dx, dx
	jle	.L3
	movzx	edx, BYTE PTR 2185[rcx]
	movzx	r9d, WORD PTR .LC0[rip]
	xor	eax, eax
.L11:
	add	edx, 1
	cmp	dl, 9
	jle	.L5
.L10:
	movzx	edx, BYTE PTR 2184[rcx]
	add	edx, 1
	cmp	dl, 9
	jle	.L15
	movzx	edx, BYTE PTR 2183[rcx]
	mov	BYTE PTR 2184[rcx], 0
	add	edx, 1
	cmp	dl, 9
	jle	.L16
	add	eax, 1
	mov	WORD PTR 2183[rcx], r9w
	cmp	r8w, ax
	jne	.L10
	mov	edx, 9
	mov	BYTE PTR 2185[rcx], dl
.L3:
	ret
	.p2align 4,,10
	.p2align 3
.L15:
	add	eax, 1
	mov	BYTE PTR 2184[rcx], dl
	cmp	r8w, ax
	je	.L17
.L12:
	mov	edx, 1
.L5:
	add	eax, 1
	cmp	r8w, ax
	jne	.L11
	mov	BYTE PTR 2185[rcx], dl
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L16:
	add	eax, 1
	mov	BYTE PTR 2183[rcx], dl
	cmp	r8w, ax
	jne	.L12
.L17:
	xor	edx, edx
	mov	BYTE PTR 2185[rcx], dl
	jmp	.L3
	.seh_endproc
	.p2align 4
	.globl	SpecialStageHandleLoseRings
	.def	SpecialStageHandleLoseRings;	.scl	2;	.type	32;	.endef
	.seh_proc	SpecialStageHandleLoseRings
SpecialStageHandleLoseRings:
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
	movups	XMMWORD PTR 48[rsp], xmm6
	.seh_savexmm	xmm6, 48
	.seh_endprologue
	mov	rax, QWORD PTR 16[rcx]
	movzx	r8d, WORD PTR 2156[rcx]
	mov	rbp, QWORD PTR 24[rax]
	mov	rax, QWORD PTR 24[rcx]
	mov	esi, edx
	mov	rax, QWORD PTR 24[rax]
	mov	r9d, edx
	mov	edx, 8
	cmp	r8w, dx
	mov	edi, edx
	mov	r15, rcx
	movq	xmm6, QWORD PTR 236[rax]
	movzx	r13d, WORD PTR 244[rax]
	cmovle	edi, r8d
	test	r8w, r8w
	jle	.L31
	mov	QWORD PTR 32[rsp], rbp
	xor	r14d, r14d
	mov	r12, QWORD PTR .refptr.gSineTable[rip]
	lea	rbx, 2888[rbp]
	mov	WORD PTR 40[rsp], r8w
	mov	WORD PTR 42[rsp], si
	mov	DWORD PTR 44[rsp], esi
	mov	esi, r14d
	.p2align 4,,10
	.p2align 3
.L20:
	mov	WORD PTR 8[rbx], r13w
	add	esi, 1
	add	rbx, 20
	movq	QWORD PTR -20[rbx], xmm6
	call	Random
	mov	r14d, eax
	call	Random
	and	r14d, 1023
	and	eax, 127
	mov	ecx, eax
	add	ecx, 64
	movzx	ebp, cx
	call	Random
	lea	r10d, 256[r14]
	movsx	r8, r14d
	mov	edx, -128
	movsx	r8d, WORD PTR [r12+r8*2]
	movsx	r10, r10d
	and	ax, 1023
	mov	WORD PTR -4[rbx], dx
	movsx	r10d, WORD PTR [r12+r10*2]
	or	ah, 4
	mov	ecx, r8d
	mov	WORD PTR -6[rbx], ax
	movzx	eax, WORD PTR .LC1[rip]
	imul	r10d, ebp
	imul	ecx, ebp
	mov	WORD PTR -2[rbx], ax
	sar	r10d, 14
	sar	ecx, 14
	mov	WORD PTR -8[rbx], r10w
	mov	WORD PTR -10[rbx], cx
	cmp	di, si
	jg	.L20
	movzx	r8d, WORD PTR 40[rsp]
	mov	rbp, QWORD PTR 32[rsp]
	movzx	r9d, WORD PTR 42[rsp]
	mov	esi, DWORD PTR 44[rsp]
	movzx	r10d, WORD PTR 2156[r15]
	cmp	r8w, 7
	jg	.L21
.L19:
	mov	ecx, 7
	movsx	r8, di
	sub	ecx, edi
	lea	rax, [r8+r8*4]
	movzx	edx, cx
	lea	rax, 2906[rbp+rax*4]
	add	rdx, r8
	lea	rdx, [rdx+rdx*4]
	lea	rdx, 2926[rbp+rdx*4]
	mov	rcx, rdx
	sub	rcx, rax
	and	ecx, 4
	je	.L22
	mov	BYTE PTR [rax], 0
	add	rax, 20
	cmp	rdx, rax
	je	.L21
	.p2align 4,,10
	.p2align 3
.L22:
	mov	BYTE PTR [rax], 0
	add	rax, 40
	mov	BYTE PTR -20[rax], 0
	cmp	rdx, rax
	jne	.L22
.L21:
	mov	eax, r10d
	xor	edx, edx
	sub	eax, esi
	test	ax, ax
	cmovs	eax, edx
	mov	WORD PTR 2156[r15], ax
	test	si, si
	jle	.L18
	movzx	eax, BYTE PTR 2185[r15]
.L30:
	sub	al, 1
	jns	.L24
.L29:
	movzx	eax, BYTE PTR 2184[r15]
	sub	al, 1
	jns	.L43
	movzx	eax, BYTE PTR 2183[r15]
	mov	BYTE PTR 2184[r15], 9
	sub	al, 1
	jns	.L44
	xor	eax, eax
	mov	WORD PTR 2183[r15], ax
	sub	r9w, 1
	jne	.L29
	xor	eax, eax
.L26:
	mov	BYTE PTR 2185[r15], al
.L18:
	movups	xmm6, XMMWORD PTR 48[rsp]
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
.L43:
	mov	BYTE PTR 2184[r15], al
	sub	r9w, 1
	je	.L45
.L32:
	mov	eax, 8
.L24:
	sub	r9w, 1
	jne	.L30
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L44:
	mov	BYTE PTR 2183[r15], al
	sub	r9w, 1
	jne	.L32
.L45:
	mov	eax, 9
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L31:
	mov	r10d, r8d
	xor	edi, edi
	jmp	.L19
	.seh_endproc
	.p2align 4
	.globl	HandleCollectableCollision
	.def	HandleCollectableCollision;	.scl	2;	.type	32;	.endef
	.seh_proc	HandleCollectableCollision
HandleCollectableCollision:
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rsi, QWORD PTR 24[rax]
	mov	r12, QWORD PTR [rsi]
	movzx	r8d, BYTE PTR 2176[r12]
	mov	rax, QWORD PTR 24[r12]
	mov	rbp, QWORD PTR 24[rax]
	mov	ecx, DWORD PTR 236[rbp]
	mov	eax, DWORD PTR 240[rbp]
	movzx	edi, WORD PTR 244[rbp]
	mov	edx, ecx
	mov	r13d, eax
	sar	ecx, 23
	sar	eax, 23
	sar	edx, 16
	lea	ecx, [rax+rcx*8]
	sar	di, 4
	sar	r13d, 16
	lea	r14d, -4[rdx]
	mov	rax, QWORD PTR .refptr.gUnknown_08C878E8[rip]
	movsx	edi, di
	lea	r15d, 4[rdx]
	mov	rax, QWORD PTR [rax+r8*8]
	mov	rbx, QWORD PTR [rax+rcx*8]
	movsx	rax, WORD PTR [rbx]
	cmp	ax, -1
	jne	.L47
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L48:
	movsx	rax, WORD PTR 8[rbx]
	add	rbx, 8
	cmp	ax, -1
	je	.L46
.L47:
	cmp	BYTE PTR 3048[rsi+rax], 1
	jne	.L48
	movsx	eax, WORD PTR 2[rbx]
	cmp	r14d, eax
	jg	.L48
	cmp	eax, r15d
	jg	.L48
	movsx	eax, WORD PTR 4[rbx]
	lea	edx, -4[r13]
	cmp	edx, eax
	jg	.L48
	lea	edx, 4[r13]
	cmp	eax, edx
	jg	.L48
	movsx	ax, BYTE PTR 6[rbx]
	lea	edx, -12[rdi]
	sal	eax, 4
	cwde
	cmp	eax, edx
	jl	.L48
	lea	edx, 20[rdi]
	cmp	eax, edx
	jg	.L48
	cmp	BYTE PTR 7[rbx], 0
	movzx	r10d, WORD PTR 260[rbp]
	jne	.L49
	movsx	edx, r10w
	mov	rcx, r12
	call	SpecialStageHandleCollectRings
.L50:
	cmp	r10w, 8
	jle	.L51
	movzx	eax, WORD PTR 260[rbp]
.L52:
	cmp	r10w, ax
	je	.L53
	mov	ecx, 274
	call	m4aSongNumStart
.L54:
	movsx	rax, WORD PTR [rbx]
	mov	BYTE PTR 3048[rsi+rax], 3
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L46:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
.L49:
	lea	edx, [r10+r10*4]
	mov	rcx, r12
	movsx	edx, dx
	call	SpecialStageHandleCollectRings
	jmp	.L50
.L51:
	mov	eax, 60
	mov	WORD PTR 256[rbp], ax
	movzx	eax, WORD PTR 258[rbp]
	lea	edx, 1[rax]
	movsx	eax, dx
	mov	WORD PTR 258[rbp], dx
	sar	dx, 15
	imul	eax, eax, 10923
	shr	eax, 16
	sub	eax, edx
	add	eax, 1
	mov	WORD PTR 260[rbp], ax
	jmp	.L52
.L53:
	mov	ecx, 117
	call	m4aSongNumStart
	jmp	.L54
	.seh_endproc
	.p2align 4
	.globl	sub_806DE10
	.def	sub_806DE10;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806DE10
sub_806DE10:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR gUnknown_080DF6CC[rip]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	rdx, QWORD PTR [rax]
	mov	QWORD PTR 2[rsp], rcx
	mov	rcx, QWORD PTR gUnknown_080DF6CC[rip+6]
	movzx	edx, BYTE PTR 2176[rdx]
	mov	QWORD PTR 8[rsp], rcx
	movsx	r8, WORD PTR 2[rsp+rdx*2]
	test	r8w, r8w
	jle	.L66
	add	r8, rax
	xor	ecx, ecx
	xor	r9d, r9d
	.p2align 4,,10
	.p2align 3
.L65:
	movzx	edx, BYTE PTR 3048[rax]
	cmp	dl, 2
	jle	.L61
	add	edx, 1
	cmp	dl, 17
	cmovg	edx, r9d
	mov	BYTE PTR 3048[rax], dl
.L61:
	test	cx, cx
	jne	.L64
	xor	ecx, ecx
	cmp	BYTE PTR 3048[rax], 0
	setne	cl
.L64:
	add	rax, 1
	cmp	r8, rax
	jne	.L65
	mov	eax, ecx
	add	rsp, 24
	ret
	.p2align 4,,10
	.p2align 3
.L66:
	xor	ecx, ecx
	mov	eax, ecx
	add	rsp, 24
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_806E038
	.def	sub_806E038;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806E038
sub_806E038:
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
	sub	rsp, 104
	.seh_stackalloc	104
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	r12, QWORD PTR 24[rax]
	movsx	rax, WORD PTR [rdx]
	mov	rbx, rdx
	mov	rdi, r8
	mov	esi, ecx
	cmp	ax, -1
	je	.L69
	mov	r15, QWORD PTR .LC2[rip]
	xor	r13d, r13d
	lea	rbp, 32[rsp]
	lea	r14, 64[rsp]
	jmp	.L78
	.p2align 4,,10
	.p2align 3
.L70:
	movsx	rax, WORD PTR 8[rbx]
	add	rbx, 8
	cmp	ax, -1
	je	.L69
.L78:
	cmp	BYTE PTR 3048[r12+rax], 0
	je	.L70
	movsx	eax, WORD PTR 2[rbx]
	mov	r8, QWORD PTR [r12]
	mov	rdx, rbp
	mov	rcx, r14
	mov	QWORD PTR 44[rsp], r15
	sal	eax, 16
	mov	DWORD PTR 32[rsp], eax
	movsx	eax, WORD PTR 4[rbx]
	sal	eax, 16
	mov	DWORD PTR 36[rsp], eax
	movsx	eax, BYTE PTR 6[rbx]
	sal	eax, 16
	mov	DWORD PTR 40[rsp], eax
	call	SpecialStageCalcEntityScreenPosition
	test	ax, ax
	je	.L70
	cmp	si, 15
	jg	.L89
	movsx	rax, si
	movdqu	xmm0, XMMWORD PTR [r14]
	lea	rax, [rax+rax*4]
	lea	rdx, [rdi+rax*4]
	mov	eax, DWORD PTR 16[r14]
	movups	XMMWORD PTR [rdx], xmm0
	mov	DWORD PTR 16[rdx], eax
	movsx	rax, WORD PTR [rbx]
	movsx	ax, BYTE PTR 3048[r12+rax]
	cmp	al, 2
	jle	.L90
	mov	WORD PTR [rdx], ax
	add	esi, 1
.L91:
	movsx	rax, WORD PTR 8[rbx]
	add	rbx, 8
	cmp	ax, -1
	jne	.L78
.L69:
	mov	eax, esi
	add	rsp, 104
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
.L89:
	lea	r8, 320[rdi]
	mov	rax, rdi
	mov	ecx, 32767
	.p2align 4,,10
	.p2align 3
.L72:
	movzx	edx, WORD PTR 4[rax]
	cmp	cx, dx
	jle	.L75
	mov	ecx, edx
	mov	r13, rax
.L75:
	add	rax, 20
	cmp	r8, rax
	jne	.L72
	cmp	WORD PTR 68[rsp], cx
	jle	.L70
	mov	eax, DWORD PTR 16[r14]
	movdqu	xmm1, XMMWORD PTR [r14]
	mov	DWORD PTR 16[r13], eax
	movups	XMMWORD PTR 0[r13], xmm1
	movsx	rax, WORD PTR [rbx]
	movsx	ax, BYTE PTR 3048[r12+rax]
	cmp	al, 2
	jg	.L88
	movsx	ax, BYTE PTR 7[rbx]
	add	eax, 1
.L88:
	mov	WORD PTR 0[r13], ax
	jmp	.L70
	.p2align 4,,10
	.p2align 3
.L90:
	movsx	ax, BYTE PTR 7[rbx]
	add	esi, 1
	add	eax, 1
	mov	WORD PTR [rdx], ax
	jmp	.L91
	.seh_endproc
	.p2align 4
	.globl	sub_806E1AC
	.def	sub_806E1AC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806E1AC
sub_806E1AC:
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rdi, QWORD PTR 24[rax]
	mov	rsi, rdx
	movsx	ebp, cx
	movsx	rdx, cx
	or	cx, 4192
	movzx	eax, WORD PTR [rsi]
	sal	rdx, 6
	movsx	ebx, cx
	mov	r13, QWORD PTR [rdi]
	lea	r12, 584[rdi+rdx]
	or	ebx, 786432
	cmp	ax, 2
	jg	.L108
	cmp	WORD PTR 6[rsi], 0
	jne	.L96
	lea	rcx, 8[rdi]
	lea	rdx, 200[rdi]
	cmp	ax, 1
	movsx	r14, ebp
	mov	rax, rcx
	cmovne	rax, rdx
	mov	edx, DWORD PTR 2[rsi]
.L99:
	movdqu	xmm0, XMMWORD PTR [rax]
	movups	XMMWORD PTR [r12], xmm0
	movdqu	xmm1, XMMWORD PTR 16[rax]
	movups	XMMWORD PTR 16[r12], xmm1
	movdqu	xmm2, XMMWORD PTR 32[rax]
	movups	XMMWORD PTR 32[r12], xmm2
	movdqu	xmm3, XMMWORD PTR 48[rax]
	mov	rax, r14
	sal	rax, 6
	movups	XMMWORD PTR 48[r12], xmm3
	mov	DWORD PTR 616[rdi+rax], ebx
	mov	DWORD PTR 622[rdi+rax], edx
	movsx	edx, WORD PTR 4[rsi]
.L107:
	movsx	eax, WORD PTR 2196[r13]
	mov	rcx, r12
	sub	eax, 15
	cmp	edx, eax
	mov	edx, 832
	mov	eax, 384
	cmovl	eax, edx
	sal	r14, 6
	mov	WORD PTR 626[rdi+r14], ax
	call	sub_806CD68
	lea	eax, 0[0+rbp*4]
	movzx	r8d, WORD PTR 12[rsi]
	mov	rcx, QWORD PTR .refptr.gOamBuffer[rip]
	cdqe
	lea	rax, [rax+rax*2]
	sal	rax, 2
	mov	WORD PTR 10[rcx+rax], r8w
	lea	rdx, 10[rcx+rax]
	movzx	eax, WORD PTR 14[rsi]
	mov	WORD PTR 12[rdx], ax
	movzx	eax, WORD PTR 16[rsi]
	mov	WORD PTR 24[rdx], ax
	movzx	eax, WORD PTR 18[rsi]
	mov	WORD PTR 36[rdx], ax
	add	rsp, 32
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
.L96:
	mov	r11d, 120
	mov	r10d, 13
	movsx	r14, ebp
	movdqu	xmm4, XMMWORD PTR 136[rdi]
	lea	rcx, 1608[rdi+rdx]
	mov	r9, r14
	movups	XMMWORD PTR [rcx], xmm4
	movdqu	xmm5, XMMWORD PTR 152[rdi]
	sal	r9, 6
	lea	rdx, [rdi+r9]
	movups	XMMWORD PTR 16[rcx], xmm5
	movdqu	xmm0, XMMWORD PTR 168[rdi]
	movups	XMMWORD PTR 32[rcx], xmm0
	movdqu	xmm1, XMMWORD PTR 184[rdi]
	movups	XMMWORD PTR 48[rcx], xmm1
	movsx	r8d, WORD PTR 4[rsi]
	mov	DWORD PTR 1640[rdx], ebx
	sub	r11d, r8d
	mov	eax, r8d
	sar	r11d, 5
	sub	r10d, r11d
	sar	r10d
	add	eax, r10d
	movzx	r10d, WORD PTR 2[rsi]
	sal	eax, 16
	or	eax, r10d
	mov	DWORD PTR 1646[rdi+r9], eax
	movsx	eax, WORD PTR 2196[r13]
	sub	eax, 15
	cmp	r8d, eax
	mov	r8d, 896
	mov	eax, 448
	cmovl	eax, r8d
	mov	WORD PTR 1650[rdx], ax
	call	sub_806CD68
	cmp	WORD PTR [rsi], 1
	lea	rax, 264[rdi]
	je	.L109
.L102:
	movzx	edx, WORD PTR 4[rsi]
	movzx	ecx, WORD PTR 2[rsi]
	sub	dx, WORD PTR 6[rsi]
	sal	edx, 16
	or	edx, ecx
	jmp	.L99
	.p2align 4,,10
	.p2align 3
.L108:
	sub	eax, 3
	movsx	r14, ebp
	sar	ax, 2
	mov	rcx, r14
	movsx	rax, ax
	sal	rcx, 6
	sal	rax, 6
	lea	rax, 328[rdi+rax]
	movdqu	xmm4, XMMWORD PTR [rax]
	movups	XMMWORD PTR [r12], xmm4
	movdqu	xmm5, XMMWORD PTR 16[rax]
	movups	XMMWORD PTR 16[r12], xmm5
	movdqu	xmm4, XMMWORD PTR 32[rax]
	movups	XMMWORD PTR 32[r12], xmm4
	movdqu	xmm5, XMMWORD PTR 48[rax]
	movups	XMMWORD PTR 48[r12], xmm5
	movsx	edx, WORD PTR 4[rsi]
	movzx	r8d, WORD PTR 2[rsi]
	mov	DWORD PTR 616[rdi+rcx], ebx
	mov	eax, edx
	sub	ax, WORD PTR 6[rsi]
	sal	eax, 16
	or	eax, r8d
	mov	DWORD PTR 622[rdi+rcx], eax
	jmp	.L107
	.p2align 4,,10
	.p2align 3
.L109:
	lea	rax, 72[rdi]
	jmp	.L102
	.seh_endproc
	.p2align 4
	.globl	sub_806DEA4
	.def	sub_806DEA4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806DEA4
sub_806DEA4:
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
	sub	rsp, 352
	.seh_stackalloc	352
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	rax, QWORD PTR [rax]
	lea	rsi, 32[rsp]
	mov	rdx, QWORD PTR 24[rax]
	movzx	ecx, BYTE PTR 2176[rax]
	mov	rax, QWORD PTR .refptr.gUnknown_08C878E8[rip]
	mov	rdx, QWORD PTR 24[rdx]
	mov	rbp, QWORD PTR [rax+rcx*8]
	mov	rax, rsi
	.p2align 4,,10
	.p2align 3
.L111:
	xor	ecx, ecx
	xor	r8d, r8d
	add	rax, 40
	lea	rdi, 352[rsp]
	mov	WORD PTR -40[rax], cx
	mov	WORD PTR -20[rax], r8w
	cmp	rax, rdi
	jne	.L111
	mov	r12d, DWORD PTR 236[rdx]
	mov	edi, DWORD PTR 240[rdx]
	xor	ecx, ecx
	mov	r8, rsi
	sar	r12d, 23
	sar	edi, 23
	lea	ebx, 0[0+r12*8]
	lea	r13d, [rbx+rdi]
	movsx	rax, r13w
	mov	rdx, QWORD PTR 0[rbp+rax*8]
	lea	r14, 0[0+rax*8]
	call	sub_806E038
	movsx	ecx, ax
	cmp	edi, 7
	je	.L112
	mov	rdx, QWORD PTR 8[rbp+r14]
	mov	r8, rsi
	call	sub_806E038
	test	edi, edi
	je	.L113
	mov	rdx, QWORD PTR -8[rbp+r14]
	movsx	ecx, ax
	mov	r8, rsi
	call	sub_806E038
	cmp	r12d, 7
	je	.L114
	lea	r14d, 8[r13]
	movsx	ecx, ax
	mov	r8, rsi
	movsx	r14, r14w
	mov	rdx, QWORD PTR 0[rbp+r14*8]
	lea	rbx, 0[0+r14*8]
	call	sub_806E038
	mov	rdx, QWORD PTR 8[rbp+r14*8]
	mov	r8, rsi
	movsx	ecx, ax
	call	sub_806E038
.L123:
	mov	rdx, QWORD PTR -8[rbp+rbx]
	movsx	ecx, ax
	mov	r8, rsi
	call	sub_806E038
	test	r12d, r12d
	je	.L115
.L114:
	lea	ebx, -8[r13]
	movsx	ecx, ax
	mov	r8, rsi
	movsx	rbx, bx
	mov	rdx, QWORD PTR 0[rbp+rbx*8]
	lea	r12, 0[0+rbx*8]
	call	sub_806E038
	cmp	edi, 7
	je	.L116
.L122:
	mov	rdx, QWORD PTR 8[rbp+rbx*8]
	movsx	ecx, ax
	mov	r8, rsi
	call	sub_806E038
	test	edi, edi
	je	.L115
.L116:
	mov	rdx, QWORD PTR -8[rbp+r12]
	movsx	ecx, ax
	mov	r8, rsi
	call	sub_806E038
.L115:
	movsx	edi, ax
	xor	ebx, ebx
	test	ax, ax
	jle	.L110
	.p2align 4,,10
	.p2align 3
.L118:
	mov	rdx, rsi
	mov	ecx, ebx
	add	ebx, 1
	add	rsi, 20
	call	sub_806E1AC
	cmp	ebx, edi
	jne	.L118
.L110:
	add	rsp, 352
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
.L113:
	cmp	r12d, 7
	je	.L141
	lea	edi, 8[rbx]
	movsx	ecx, ax
	mov	r8, rsi
	movsx	rdi, di
	mov	rdx, QWORD PTR 0[rbp+rdi*8]
	call	sub_806E038
	mov	rdx, QWORD PTR 8[rbp+rdi*8]
	mov	r8, rsi
	movsx	ecx, ax
	call	sub_806E038
	test	r12d, r12d
	je	.L115
	sub	ebx, 8
	mov	r8, rsi
	movsx	ecx, ax
	movsx	rbx, bx
	mov	rdx, QWORD PTR 0[rbp+rbx*8]
	call	sub_806E038
	mov	rdx, QWORD PTR 8[rbp+rbx*8]
	mov	r8, rsi
	movsx	ecx, ax
	call	sub_806E038
	jmp	.L115
	.p2align 4,,10
	.p2align 3
.L112:
	mov	rdx, QWORD PTR -8[rbp+r14]
	mov	r8, rsi
	call	sub_806E038
	cmp	r12d, 7
	je	.L114
	lea	edx, 15[rbx]
	movsx	ecx, ax
	mov	r8, rsi
	movsx	rdx, dx
	lea	rbx, 0[0+rdx*8]
	mov	rdx, QWORD PTR 0[rbp+rdx*8]
	call	sub_806E038
	jmp	.L123
.L141:
	sub	ebx, 8
	movsx	ecx, ax
	mov	r8, rsi
	movsx	rbx, bx
	mov	rdx, QWORD PTR 0[rbp+rbx*8]
	lea	r12, 0[0+rbx*8]
	call	sub_806E038
	jmp	.L122
	.seh_endproc
	.p2align 4
	.globl	sub_806E4FC
	.def	sub_806E4FC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806E4FC
sub_806E4FC:
	.seh_endprologue
	mov	rax, QWORD PTR 16[rcx]
	mov	rcx, QWORD PTR 24[rax]
	lea	rax, 2888[rcx]
	add	rcx, 3048
	jmp	.L148
	.p2align 4,,10
	.p2align 3
.L151:
	mov	WORD PTR 8[rax], r8w
.L146:
	add	dx, WORD PTR 16[rax]
	mov	WORD PTR 14[rax], dx
	movzx	edx, BYTE PTR 19[rax]
	add	edx, 1
	mov	BYTE PTR 19[rax], dl
	cmp	dl, 29
	jbe	.L144
	mov	BYTE PTR 18[rax], 0
.L144:
	add	rax, 20
	cmp	rax, rcx
	je	.L150
.L148:
	cmp	BYTE PTR 18[rax], 0
	je	.L144
	movsx	edx, WORD PTR 10[rax]
	movq	xmm1, QWORD PTR [rax]
	movzx	r8d, WORD PTR 8[rax]
	sal	edx, 8
	movd	xmm0, edx
	movsx	edx, WORD PTR 12[rax]
	sal	edx, 8
	movd	xmm2, edx
	movzx	edx, WORD PTR 14[rax]
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	add	r8d, edx
	movq	QWORD PTR [rax], xmm0
	test	r8w, r8w
	jg	.L151
	xor	r8d, r8d
	neg	edx
	mov	WORD PTR 8[rax], r8w
	jmp	.L146
	.p2align 4,,10
	.p2align 3
.L150:
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_806E584
	.def	sub_806E584;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806E584
sub_806E584:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 104
	.seh_stackalloc	104
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rdi, QWORD PTR 24[rax]
	mov	rax, QWORD PTR [rdx]
	mov	rbp, QWORD PTR [rdi]
	mov	QWORD PTR 32[rsp], rax
	mov	ebx, ecx
	lea	rcx, 64[rsp]
	movsx	eax, WORD PTR 8[rdx]
	lea	rdx, 32[rsp]
	mov	r8, rbp
	sal	eax, 4
	mov	DWORD PTR 40[rsp], eax
	mov	rax, QWORD PTR .LC2[rip]
	mov	QWORD PTR 44[rsp], rax
	call	SpecialStageCalcEntityScreenPosition
	test	ax, ax
	je	.L152
	movsx	rdx, bx
	movdqu	xmm0, XMMWORD PTR 72[rdi]
	movsx	esi, bx
	movsx	ecx, WORD PTR 68[rsp]
	lea	rax, 41[rdx]
	add	esi, 16
	movzx	r9d, WORD PTR 66[rsp]
	movsx	rbx, bx
	sal	rax, 6
	add	rax, rdi
	movups	XMMWORD PTR 8[rax], xmm0
	movdqu	xmm1, XMMWORD PTR 88[rdi]
	movups	XMMWORD PTR 24[rax], xmm1
	movdqu	xmm2, XMMWORD PTR 104[rdi]
	movups	XMMWORD PTR 40[rax], xmm2
	movdqu	xmm3, XMMWORD PTR 120[rdi]
	movups	XMMWORD PTR 56[rax], xmm3
	mov	rax, rdx
	mov	edx, esi
	sal	rax, 6
	or	edx, 790624
	lea	r8, [rdi+rax]
	mov	DWORD PTR 2664[r8], edx
	mov	edx, ecx
	sub	dx, WORD PTR 70[rsp]
	sal	edx, 16
	or	edx, r9d
	mov	DWORD PTR 2670[rdi+rax], edx
	movsx	eax, WORD PTR 2196[rbp]
	mov	edx, 832
	sub	eax, 15
	cmp	eax, ecx
	mov	eax, 384
	cmovg	eax, edx
	sal	rbx, 6
	sal	esi, 2
	lea	rcx, 2632[rdi+rbx]
	mov	WORD PTR 2674[r8], ax
	movsx	rsi, esi
	call	sub_806CD68
	mov	rcx, QWORD PTR .refptr.gOamBuffer[rip]
	movzx	r8d, WORD PTR 76[rsp]
	lea	rax, [rsi+rsi*2]
	sal	rax, 2
	mov	WORD PTR 10[rcx+rax], r8w
	lea	rdx, 10[rcx+rax]
	movzx	eax, WORD PTR 78[rsp]
	mov	WORD PTR 12[rdx], ax
	movzx	eax, WORD PTR 80[rsp]
	mov	WORD PTR 24[rdx], ax
	movzx	eax, WORD PTR 82[rsp]
	mov	WORD PTR 36[rdx], ax
.L152:
	add	rsp, 104
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_806DB48
	.def	sub_806DB48;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806DB48
sub_806DB48:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	mov	rsi, QWORD PTR [rbx]
	cmp	BYTE PTR 2178[rsi], 0
	je	.L167
.L161:
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	sub_806DEA4
	.p2align 4,,10
	.p2align 3
.L167:
	lea	rcx, 8[rbx]
	call	UpdateSpriteAnimation
	lea	rcx, 136[rbx]
	call	UpdateSpriteAnimation
	lea	rcx, 72[rbx]
	call	UpdateSpriteAnimation
	lea	rcx, 200[rbx]
	call	UpdateSpriteAnimation
	lea	rcx, 264[rbx]
	call	UpdateSpriteAnimation
	call	HandleCollectableCollision
	call	sub_806DE10
	test	ax, ax
	je	.L168
.L162:
	mov	rcx, rsi
	call	sub_806E4FC
	movzx	eax, WORD PTR 3374[rbx]
	add	eax, 1
	and	eax, 1
	mov	rdx, rax
	mov	WORD PTR 3374[rbx], ax
	and	edx, 1
	lea	rdx, [rdx+rdx*4]
	cmp	BYTE PTR 2906[rbx+rdx*4], 1
	je	.L169
.L163:
	cwde
	lea	edx, 2[rax]
	movsx	rdx, edx
	lea	rdx, [rdx+rdx*4]
	cmp	BYTE PTR 2906[rbx+rdx*4], 1
	lea	rcx, 0[0+rdx*4]
	je	.L170
.L164:
	lea	edx, 4[rax]
	movsx	rdx, edx
	lea	rdx, [rdx+rdx*4]
	cmp	BYTE PTR 2906[rbx+rdx*4], 1
	lea	rcx, 0[0+rdx*4]
	je	.L171
.L165:
	add	eax, 6
	cdqe
	lea	rax, [rax+rax*4]
	cmp	BYTE PTR 2906[rbx+rax*4], 1
	lea	rdx, 0[0+rax*4]
	jne	.L161
	lea	rdx, 2888[rbx+rdx]
	mov	ecx, 3
	call	sub_806E584
	jmp	.L161
	.p2align 4,,10
	.p2align 3
.L168:
	cmp	WORD PTR 2172[rsi], 7
	je	.L162
	mov	eax, 6
	mov	WORD PTR 2172[rsi], ax
	jmp	.L162
	.p2align 4,,10
	.p2align 3
.L171:
	lea	rdx, 2888[rbx+rcx]
	mov	ecx, 2
	call	sub_806E584
	movsx	eax, WORD PTR 3374[rbx]
	jmp	.L165
	.p2align 4,,10
	.p2align 3
.L170:
	lea	rdx, 2888[rbx+rcx]
	mov	ecx, 1
	call	sub_806E584
	movsx	eax, WORD PTR 3374[rbx]
	jmp	.L164
	.p2align 4,,10
	.p2align 3
.L169:
	movzx	eax, ax
	xor	ecx, ecx
	neg	rax
	and	eax, 20
	lea	rdx, 2888[rbx+rax]
	call	sub_806E584
	movzx	eax, WORD PTR 3374[rbx]
	jmp	.L163
	.seh_endproc
	.p2align 4
	.globl	CreateSpecialStageCollectables
	.def	CreateSpecialStageCollectables;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateSpecialStageCollectables
CreateSpecialStageCollectables:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	rax, QWORD PTR gUnknown_080DF6CC[rip]
	xor	r9d, r9d
	mov	edx, 3376
	mov	r8d, 45056
	mov	QWORD PTR 32[rsp], 0
	mov	rbx, rcx
	lea	rcx, Task_InitObjects[rip]
	mov	QWORD PTR 50[rsp], rax
	mov	rax, QWORD PTR gUnknown_080DF6CC[rip+6]
	mov	QWORD PTR 56[rsp], rax
	call	TaskCreate
	mov	rdx, QWORD PTR 24[rax]
	mov	QWORD PTR [rdx], rbx
	movzx	ecx, BYTE PTR 2176[rbx]
	movzx	ecx, WORD PTR 50[rsp+rcx*2]
	mov	WORD PTR 3372[rdx], cx
	xor	ecx, ecx
	mov	WORD PTR 3374[rdx], cx
	add	rsp, 64
	pop	rbx
	ret
	.seh_endproc
	.globl	gUnknown_080DF6CC
	.section .rdata,"dr"
	.align 8
gUnknown_080DF6CC:
	.word	304
	.word	296
	.word	272
	.word	296
	.word	323
	.word	284
	.word	267
	.align 2
.LC0:
	.byte	9
	.byte	9
	.align 2
.LC1:
	.byte	1
	.byte	0
	.align 8
.LC2:
	.word	8
	.word	8
	.word	0
	.word	5
	.ident	"GCC: (GNU) 13-win32"
	.def	sub_806CA88;	.scl	2;	.type	32;	.endef
	.def	Random;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	SpecialStageCalcEntityScreenPosition;	.scl	2;	.type	32;	.endef
	.def	sub_806CD68;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gOamBuffer, "dr"
	.globl	.refptr.gOamBuffer
	.linkonce	discard
.refptr.gOamBuffer:
	.quad	gOamBuffer
	.section	.rdata$.refptr.gUnknown_08C878E8, "dr"
	.globl	.refptr.gUnknown_08C878E8
	.linkonce	discard
.refptr.gUnknown_08C878E8:
	.quad	gUnknown_08C878E8
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
