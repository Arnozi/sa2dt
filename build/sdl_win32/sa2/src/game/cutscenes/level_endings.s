	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	sub_808E114;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_808E114
sub_808E114:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rdi, QWORD PTR 24[rax]
	movzx	ecx, WORD PTR 156[rdi]
	mov	rsi, QWORD PTR [rdi]
	lea	rbx, 8[rdi]
	movzx	edx, WORD PTR 148[rdi]
	movzx	eax, WORD PTR 152[rdi]
	cmp	cx, 45
	ja	.L2
	add	edx, eax
	movzx	ecx, BYTE PTR 160[rdi]
	mov	WORD PTR 148[rdi], dx
.L3:
	cmp	ax, 96
	jbe	.L4
	mov	r8d, eax
	sal	r8d, 7
	sub	r8d, eax
	mov	eax, r8d
	sar	eax, 7
	mov	WORD PTR 152[rdi], ax
.L4:
	mov	r10, QWORD PTR .refptr.gCamera[rip]
	mov	r9d, DWORD PTR 12[rsi]
	mov	r8d, DWORD PTR [r10]
	mov	eax, r9d
	mov	r11d, r8d
	sal	r11d, 8
	sub	eax, r11d
	movzx	r11d, dx
	sub	eax, 16383
	cmp	eax, r11d
	jg	.L5
	mov	eax, r8d
	sal	eax, 8
	sub	r9d, eax
	lea	edx, -16384[r9]
	mov	WORD PTR 148[rdi], dx
.L5:
	movzx	edx, dh
	movsx	eax, cl
	movzx	ecx, BYTE PTR 151[rdi]
	add	ecx, DWORD PTR 4[r10]
	add	edx, r8d
	mov	r9d, 8
	mov	r8d, 1
	add	edx, eax
	mov	rax, QWORD PTR .refptr.sub_801EC3C[rip]
	mov	QWORD PTR 32[rsp], rax
	call	sub_801F100
	test	eax, eax
	js	.L14
	movzx	eax, WORD PTR 150[rdi]
	je	.L7
	add	ax, 256
	mov	WORD PTR 150[rdi], ax
.L7:
	movzx	edx, WORD PTR 148[rdi]
	sal	eax, 16
	mov	rcx, rbx
	or	eax, edx
	movd	xmm0, eax
	movsx	ax, BYTE PTR 160[rdi]
	psrlw	xmm0, 8
	movzx	eax, ax
	or	eax, -917504
	movd	xmm1, eax
	paddw	xmm0, xmm1
	movd	DWORD PTR 46[rdi], xmm0
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	call	DisplaySprite
	movzx	eax, WORD PTR 156[rdi]
	cmp	ax, 40
	je	.L15
	cmp	ax, 200
	je	.L16
.L9:
	add	eax, 1
	mov	WORD PTR 156[rdi], ax
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	lea	ecx, 664[0+rcx*8]
	and	ecx, 1016
	movzx	ecx, WORD PTR [r8+rcx*2]
	sar	cx, 6
	movsx	ecx, cx
	lea	r8d, [rcx+rcx*4]
	sar	r8d, 7
	mov	BYTE PTR 160[rdi], r8b
	mov	ecx, r8d
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L16:
	mov	rax, QWORD PTR .refptr.gRingCount[rip]
	movzx	edx, WORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gCourseTime[rip]
	mov	ecx, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gSpecialRingCount[rip]
	movzx	r8d, BYTE PTR [rax]
	call	CreateStageResults
	movzx	eax, WORD PTR 156[rdi]
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L14:
	sal	eax, 8
	add	ax, WORD PTR 150[rdi]
	mov	WORD PTR 150[rdi], ax
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L15:
	mov	edx, 82
	mov	WORD PTR 108[rsi], dx
	jmp	.L9
	.seh_endproc
	.p2align 4
	.def	sub_808DF88;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_808DF88
sub_808DF88:
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
	mov	rbx, QWORD PTR 24[rax]
	movd	xmm1, DWORD PTR 152[rbx]
	movd	xmm0, DWORD PTR 148[rbx]
	lea	rsi, 8[rbx]
	mov	r9, QWORD PTR [rbx]
	movdqu	xmm2, xmm1
	pextrw	r8d, xmm1, 0
	pextrw	ecx, xmm1, 1
	paddw	xmm2, xmm0
	psubw	xmm0, xmm1
	pextrw	r11d, xmm0, 0
	punpcklwd	xmm0, xmm2
	pextrw	eax, xmm2, 1
	pshuflw	xmm0, xmm0, 236
	movd	DWORD PTR 148[rbx], xmm0
	cmp	r8w, 96
	jbe	.L18
	mov	edx, r8d
	sal	edx, 7
	sub	edx, r8d
	sar	edx, 7
	mov	WORD PTR 152[rbx], dx
.L18:
	cmp	cx, 96
	jbe	.L19
	mov	edx, ecx
	sal	edx, 7
	sub	edx, ecx
	sar	edx, 7
	mov	WORD PTR 154[rbx], dx
.L19:
	mov	r10, QWORD PTR .refptr.gCamera[rip]
	mov	edx, DWORD PTR 12[r9]
	mov	ecx, DWORD PTR [r10]
	mov	r8d, edx
	mov	edi, ecx
	sal	edi, 8
	sub	r8d, edi
	sub	r8d, 7168
	cmp	r11d, r8d
	jge	.L20
	mov	r11d, ecx
	mov	r8d, edx
	sal	r11d, 8
	sub	r8d, r11d
	sub	r8w, 7168
	mov	WORD PTR 148[rbx], r8w
.L20:
	mov	r11d, DWORD PTR 4[r10]
	mov	r9d, DWORD PTR 16[r9]
	movzx	r10d, BYTE PTR 158[rbx]
	mov	edi, r11d
	mov	r8d, r9d
	sal	edi, 8
	sub	r8d, edi
	sub	r8d, 5119
	cmp	r8d, eax
	jle	.L21
	movzx	edx, BYTE PTR 149[rbx]
	shr	ax, 8
	mov	WORD PTR 46[rbx], dx
	test	r10b, r10b
	jne	.L22
.L25:
	mov	WORD PTR 48[rbx], ax
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	movzx	eax, WORD PTR 156[rbx]
	add	eax, 1
	mov	WORD PTR 156[rbx], ax
	cmp	ax, 200
	je	.L28
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L21:
	sal	r11d, 8
	sal	ecx, 8
	sub	r9d, r11d
	sub	edx, ecx
	lea	eax, -5120[r9]
	sub	dx, 7168
	mov	WORD PTR 150[rbx], ax
	mov	WORD PTR 148[rbx], dx
	test	r10b, r10b
	je	.L24
	shr	dx, 8
	shr	ax, 8
	mov	WORD PTR 46[rbx], dx
.L22:
	movzx	edi, BYTE PTR 159[rbx]
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	lea	edx, 4[rdi]
	mov	BYTE PTR 159[rbx], dl
	lea	rdx, 0[0+rdx*4]
	and	edx, 1020
	movzx	edx, WORD PTR [rcx+rdx*2]
	sar	dx, 12
	add	eax, edx
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L28:
	mov	rax, QWORD PTR .refptr.gRingCount[rip]
	movzx	edx, WORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gCourseTime[rip]
	mov	ecx, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gSpecialRingCount[rip]
	movzx	r8d, BYTE PTR [rax]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	CreateStageResults
	.p2align 4,,10
	.p2align 3
.L24:
	mov	rcx, QWORD PTR 16[rbx]
	call	VramFree
	mov	ecx, 36
	call	VramMalloc
	mov	BYTE PTR 56[rbx], 1
	mov	QWORD PTR 16[rbx], rax
	mov	eax, 223
	mov	WORD PTR 26[rbx], ax
	movzx	eax, BYTE PTR 149[rbx]
	mov	BYTE PTR 158[rbx], 1
	mov	WORD PTR 46[rbx], ax
	movzx	eax, BYTE PTR 151[rbx]
	jmp	.L22
	.seh_endproc
	.p2align 4
	.def	sub_808DD9C;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_808DD9C
sub_808DD9C:
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
	mov	rbx, QWORD PTR 24[rax]
	movd	xmm1, DWORD PTR 152[rbx]
	movd	xmm0, DWORD PTR 148[rbx]
	lea	rsi, 8[rbx]
	movzx	eax, WORD PTR 150[rbx]
	mov	rcx, QWORD PTR [rbx]
	movdqu	xmm2, xmm1
	pextrw	r10d, xmm1, 0
	pextrw	edx, xmm1, 1
	movzx	edi, WORD PTR 154[rbx]
	paddw	xmm2, xmm0
	psubw	xmm0, xmm1
	pextrw	r8d, xmm0, 0
	punpcklwd	xmm0, xmm2
	pextrw	r11d, xmm2, 1
	pshuflw	xmm0, xmm0, 236
	movd	DWORD PTR 148[rbx], xmm0
	cmp	r10w, 96
	jbe	.L30
	mov	r9d, r10d
	sal	r9d, 8
	sub	r9d, r10d
	sar	r9d, 8
	mov	WORD PTR 152[rbx], r9w
.L30:
	cmp	dx, 2047
	ja	.L31
	imul	edx, edx, 67
	sar	edx, 6
	mov	WORD PTR 154[rbx], dx
.L31:
	mov	r9, QWORD PTR .refptr.gCamera[rip]
	mov	r10d, DWORD PTR 12[rcx]
	mov	ebp, DWORD PTR [r9]
	mov	edx, r10d
	mov	r12d, ebp
	sal	r12d, 8
	sub	edx, r12d
	sub	edx, 5120
	cmp	r8d, edx
	jge	.L32
	mov	r8d, ebp
	mov	edx, r10d
	sal	r8d, 8
	sub	edx, r8d
	sub	dx, 5120
	mov	WORD PTR 148[rbx], dx
.L32:
	mov	edx, DWORD PTR 4[r9]
	mov	r8d, DWORD PTR 16[rcx]
	movzx	r9d, BYTE PTR 158[rbx]
	mov	r13d, edx
	mov	r12d, r8d
	sal	r13d, 8
	sub	r12d, r13d
	sub	r12d, 2559
	cmp	r12d, r11d
	jg	.L33
	sal	edx, 16
	movzx	ebp, bp
	movzx	r10d, r10w
	sal	r8d, 16
	or	edx, ebp
	movd	xmm0, DWORD PTR .LC0[rip]
	or	r8d, r10d
	movd	xmm1, edx
	movd	xmm3, r8d
	psllw	xmm1, 8
	psubw	xmm0, xmm1
	paddw	xmm0, xmm3
	movd	DWORD PTR 148[rbx], xmm0
	test	r9b, r9b
	je	.L38
	cmp	r9b, 1
	je	.L35
.L36:
	psrlw	xmm0, 8
	mov	rcx, rsi
	movd	DWORD PTR 46[rbx], xmm0
	movd	DWORD PTR 142[rbx], xmm0
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	lea	rsi, 72[rbx]
	call	DisplaySprite
	mov	eax, DWORD PTR 46[rbx]
	mov	rcx, rsi
	mov	DWORD PTR 110[rbx], eax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	movzx	eax, WORD PTR 156[rbx]
	add	eax, 1
	mov	WORD PTR 156[rbx], ax
	cmp	ax, 200
	je	.L39
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
.L33:
	movzx	edx, WORD PTR 148[rbx]
	add	eax, edi
	sal	eax, 16
	or	eax, edx
	movd	xmm0, eax
	cmp	r9b, 1
	jne	.L36
.L35:
	movzx	eax, BYTE PTR 40[rcx]
	sal	eax, 2
	mov	WORD PTR 136[rbx], ax
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L39:
	mov	rax, QWORD PTR .refptr.gRingCount[rip]
	movzx	edx, WORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gCourseTime[rip]
	mov	ecx, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gSpecialRingCount[rip]
	movzx	r8d, BYTE PTR [rax]
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	CreateStageResults
	.p2align 4,,10
	.p2align 3
.L38:
	mov	eax, 82
	mov	WORD PTR 108[rcx], ax
	mov	rcx, QWORD PTR 16[rbx]
	call	VramFree
	mov	ecx, 25
	call	VramMalloc
	mov	ecx, 467
	mov	edx, 130
	mov	BYTE PTR 158[rbx], 1
	mov	QWORD PTR 16[rbx], rax
	movzx	eax, WORD PTR .LC1[rip]
	mov	WORD PTR 90[rbx], cx
	mov	rcx, QWORD PTR [rbx]
	mov	WORD PTR 26[rbx], dx
	movd	xmm0, DWORD PTR 148[rbx]
	mov	WORD PTR 56[rbx], ax
	mov	WORD PTR 120[rbx], ax
	movzx	eax, BYTE PTR 40[rcx]
	sal	eax, 2
	mov	WORD PTR 136[rbx], ax
	jmp	.L36
	.seh_endproc
	.p2align 4
	.globl	sub_808E890
	.def	sub_808E890;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808E890
sub_808E890:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 16[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 80[rbx]
	test	rcx, rcx
	je	.L40
	add	rsp, 32
	pop	rbx
	jmp	VramFree
	.p2align 4,,10
	.p2align 3
.L40:
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_808E63C
	.def	sub_808E63C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808E63C
sub_808E63C:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	xor	r9d, r9d
	mov	edx, 256
	mov	r8d, 256
	xor	ecx, ecx
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gBgAffineRegs[rip]
	mov	DWORD PTR 48[rsp], 0
	mov	QWORD PTR 56[rsp], rax
	mov	DWORD PTR 40[rsp], 0
	mov	DWORD PTR 32[rsp], 0
	call	sub_8003EE4
	movzx	eax, WORD PTR 400[rbx]
	cmp	ax, 300
	ja	.L43
	add	eax, 1
	mov	WORD PTR 400[rbx], ax
	add	rsp, 72
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L43:
	mov	DWORD PTR 384[rbx], 65537
	xor	eax, eax
	xor	edx, edx
	mov	WORD PTR 400[rbx], ax
	mov	rax, QWORD PTR [rsi]
	mov	WORD PTR 388[rbx], dx
	lea	rdx, sub_808E6B0[rip]
	mov	DWORD PTR 392[rbx], 16383
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 72
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_808E424
	.def	sub_808E424;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808E424
sub_808E424:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	cmp	WORD PTR 400[rbx], 0
	jne	.L46
	movzx	eax, BYTE PTR 402[rbx]
	mov	edx, 1
	mov	WORD PTR 400[rbx], dx
	cmp	al, 1
	je	.L47
	test	al, -3
	je	.L49
.L46:
	mov	rax, QWORD PTR .refptr.gBgAffineRegs[rip]
	xor	ecx, ecx
	xor	r9d, r9d
	mov	DWORD PTR 48[rsp], 0
	mov	DWORD PTR 40[rsp], 0
	mov	r8d, 256
	mov	edx, 256
	mov	QWORD PTR 56[rsp], rax
	mov	DWORD PTR 32[rsp], 0
	call	sub_8003EE4
	lea	rcx, 384[rbx]
	call	UpdateScreenFade
	cmp	al, 1
	jne	.L45
	xor	eax, eax
	lea	rdx, sub_808E4C8[rip]
	mov	WORD PTR 400[rbx], ax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdx
.L45:
	add	rsp, 72
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L47:
	mov	ecx, 46
	call	m4aSongNumStart
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L49:
	mov	ecx, 45
	call	m4aSongNumStart
	jmp	.L46
	.seh_endproc
	.p2align 4
	.globl	sub_808E6B0
	.def	sub_808E6B0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808E6B0
sub_808E6B0:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	xor	ecx, ecx
	xor	r9d, r9d
	mov	r8d, 256
	mov	edx, 256
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gBgAffineRegs[rip]
	mov	DWORD PTR 48[rsp], 0
	mov	QWORD PTR 56[rsp], rax
	mov	DWORD PTR 40[rsp], 0
	mov	DWORD PTR 32[rsp], 0
	call	sub_8003EE4
	lea	rcx, 384[rbx]
	call	UpdateScreenFade
	cmp	al, 1
	je	.L54
	add	rsp, 72
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L54:
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	r8, QWORD PTR [rdx]
	mov	rdx, QWORD PTR .refptr.gSelectedCharacter[rip]
	movsx	eax, BYTE PTR [rax]
	movsx	rdx, BYTE PTR [rdx]
	mov	ecx, eax
	movzx	edx, BYTE PTR 7[r8+rdx]
	cmp	eax, edx
	jge	.L55
	movzx	ecx, al
	mov	r8d, 4
	call	CreateCourseSelectionScreen
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 72
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L55:
	mov	r8d, 1
	call	CreateCourseSelectionScreen
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 72
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.globl	CreateStageResultsCutscene
	.def	CreateStageResultsCutscene;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateStageResultsCutscene
CreateStageResultsCutscene:
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
	sub	rsp, 120
	.seh_stackalloc	120
	.seh_endprologue
	mov	rax, QWORD PTR gUnknown_080E1208[rip+16]
	xor	r9d, r9d
	mov	edx, 168
	movdqu	xmm0, XMMWORD PTR gUnknown_080E1208[rip]
	mov	r8d, 20480
	lea	r13, sAnimsCharacterRescued[rip]
	mov	QWORD PTR 96[rsp], rax
	movzx	edi, cl
	movzx	ebp, cl
	mov	esi, ecx
	mov	rax, QWORD PTR gUnknown_080E1214[rip]
	movups	XMMWORD PTR 80[rsp], xmm0
	mov	rcx, QWORD PTR 80[rsp+rdi*8]
	mov	QWORD PTR 56[rsp], rax
	mov	eax, DWORD PTR gUnknown_080E1214[rip+8]
	mov	DWORD PTR 64[rsp], eax
	mov	rax, QWORD PTR gUnknown_080E1220[rip]
	mov	QWORD PTR 68[rsp], rax
	mov	eax, DWORD PTR gUnknown_080E1220[rip+8]
	mov	DWORD PTR 76[rsp], eax
	mov	eax, DWORD PTR gUnknown_080E122C[rip]
	mov	DWORD PTR 50[rsp], eax
	movzx	eax, WORD PTR gUnknown_080E122C[rip+4]
	mov	WORD PTR 54[rsp], ax
	lea	rax, sub_808E890[rip]
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	lea	edx, [rbp+rbp]
	lea	ecx, 1[rdx]
	mov	rbx, QWORD PTR 24[rax]
	movsx	r8, edx
	add	ebp, edx
	movsx	rcx, ecx
	movzx	r9d, WORD PTR 68[rsp+r8*2]
	movzx	eax, WORD PTR 68[rsp+rcx*2]
	movzx	ecx, WORD PTR 56[rsp+rcx*2]
	mov	BYTE PTR 160[rbx], 0
	lea	r12, 8[rbx]
	mov	DWORD PTR 156[rbx], 0
	sal	rax, 16
	or	rax, r9
	sal	rax, 16
	or	rax, rcx
	movzx	ecx, WORD PTR 56[rsp+r8*2]
	sal	rax, 16
	or	rax, rcx
	mov	QWORD PTR 148[rbx], rax
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	QWORD PTR [rbx], rax
	movsx	rax, ebp
	mov	ecx, DWORD PTR 0[r13+rax*4]
	call	VramMalloc
	xor	ecx, ecx
	mov	r8d, 4351
	mov	QWORD PTR 16[rbx], rax
	lea	eax, 1[rbp]
	add	ebp, 2
	cdqe
	movsx	rbp, ebp
	mov	WORD PTR 24[rbx], cx
	mov	eax, DWORD PTR 0[r13+rax*4]
	mov	WORD PTR 57[rbx], r8w
	mov	WORD PTR 26[rbx], ax
	mov	eax, DWORD PTR 0[r13+rbp*4]
	mov	BYTE PTR 56[rbx], al
	movabs	rax, 2748779069440
	mov	QWORD PTR 46[rbx], rax
	movzx	eax, WORD PTR 50[rsp+rdi*2]
	mov	BYTE PTR 61[rbx], al
	cmp	sil, 2
	je	.L57
	mov	DWORD PTR 40[rbx], 1024
	mov	rcx, r12
	call	UpdateSpriteAnimation
	mov	QWORD PTR 80[rbx], 0
	test	sil, sil
	jne	.L59
	mov	ecx, 6
	call	VramMalloc
	mov	edx, -256
	mov	DWORD PTR 88[rbx], 30670848
	lea	rcx, 72[rbx]
	mov	QWORD PTR 80[rbx], rax
	movabs	rax, 2473901162496
	mov	WORD PTR 120[rbx], dx
	mov	QWORD PTR 110[rbx], rax
	mov	BYTE PTR 122[rbx], 16
	mov	BYTE PTR 125[rbx], 0
	mov	DWORD PTR 104[rbx], 1024
	call	UpdateSpriteAnimation
	mov	ecx, 236
	call	m4aSongNumStart
.L59:
	mov	rax, QWORD PTR .LC6[rip]
	mov	QWORD PTR 136[rbx], rax
	xor	eax, eax
	mov	WORD PTR 144[rbx], ax
	add	rsp, 120
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L57:
	mov	DWORD PTR 40[rbx], 0
	mov	rcx, r12
	call	UpdateSpriteAnimation
	mov	QWORD PTR 80[rbx], 0
	jmp	.L59
	.seh_endproc
	.p2align 4
	.globl	sub_808E35C
	.def	sub_808E35C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808E35C
sub_808E35C:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rsi, QWORD PTR .refptr.VRAM[rip]
	xor	edx, edx
	mov	rax, QWORD PTR [rax]
	movzx	eax, BYTE PTR 6[rax]
	mov	DWORD PTR 236[rcx], 0
	sub	eax, 1
	mov	rbx, rcx
	test	al, al
	cmovs	eax, edx
	lea	rdx, 16384[rsi]
	mov	QWORD PTR 200[rcx], rdx
	xor	edx, edx
	mov	WORD PTR 210[rcx], dx
	movsx	eax, al
	lea	rdx, 59392[rsi]
	mov	QWORD PTR 216[rcx], rdx
	movzx	edx, WORD PTR 398[rcx]
	mov	ecx, eax
	sal	ecx, 4
	mov	BYTE PTR 254[rbx], 0
	mov	QWORD PTR 242[rbx], 0
	sub	ecx, eax
	mov	DWORD PTR 250[rbx], 327710
	lea	eax, [rdx+rcx]
	lea	rdx, sTilemapsCharacterDialogue[rip]
	mov	ecx, 1
	cdqe
	mov	WORD PTR 258[rbx], cx
	lea	rcx, 192[rbx]
	movzx	eax, WORD PTR [rdx+rax*2]
	mov	WORD PTR 240[rbx], ax
	call	DrawBackground
	xor	r8d, r8d
	mov	rcx, rbx
	mov	BYTE PTR 62[rbx], 0
	lea	rax, 32768[rsi]
	mov	r9d, 2
	mov	WORD PTR 18[rbx], r8w
	movzx	edx, WORD PTR 396[rbx]
	mov	QWORD PTR 8[rbx], rax
	lea	rax, sTilemapsCharacterSlides[rip]
	add	rsi, 61440
	movzx	eax, WORD PTR [rax+rdx*2]
	mov	QWORD PTR 24[rbx], rsi
	mov	DWORD PTR 44[rbx], 0
	mov	WORD PTR 48[rbx], ax
	mov	QWORD PTR 50[rbx], 0
	mov	DWORD PTR 58[rbx], 1310750
	mov	WORD PTR 66[rbx], r9w
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DrawBackground
	.seh_endproc
	.p2align 4
	.globl	sub_808E274
	.def	sub_808E274;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808E274
sub_808E274:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 80
	.seh_stackalloc	80
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	edx, 5696
	mov	r8, QWORD PTR .refptr.VRAM[rip]
	mov	r9d, -2063581184
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	DWORD PTR [rax], 486874112
	mov	rbx, rcx
	mov	ecx, 24074
	lea	rdx, 76[rsp]
	mov	DWORD PTR 76[rsp], 0
	mov	WORD PTR 4[rax], cx
	mov	ecx, 3
	call	DmaSet
	mov	rdx, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	xor	r9d, r9d
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	mov	rcx, QWORD PTR .LC8[rip]
	mov	r8d, -256
	mov	WORD PTR [rdx], r8w
	mov	r8d, 256
	mov	QWORD PTR [rax], rcx
	xor	ecx, ecx
	mov	DWORD PTR 8[rax], 553582592
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	BYTE PTR 2[rdx], 0
	mov	rdx, QWORD PTR .LC10[rip]
	mov	DWORD PTR 8[rax], 0
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR .refptr.gBgAffineRegs[rip]
	mov	edx, 256
	mov	DWORD PTR 48[rsp], 0
	mov	QWORD PTR 56[rsp], rax
	mov	DWORD PTR 40[rsp], 0
	mov	DWORD PTR 32[rsp], 0
	call	sub_8003EE4
	mov	rcx, rbx
	call	sub_808E35C
	mov	rax, QWORD PTR .LC11[rip]
	lea	rcx, 384[rbx]
	mov	DWORD PTR 392[rbx], 16383
	mov	QWORD PTR 384[rbx], rax
	add	rsp, 80
	pop	rbx
	jmp	UpdateScreenFade
	.seh_endproc
	.p2align 4
	.globl	sub_808E4C8
	.def	sub_808E4C8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808E4C8
sub_808E4C8:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	xor	r9d, r9d
	mov	edx, 256
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	r8d, 256
	xor	ecx, ecx
	mov	rax, QWORD PTR [rax]
	movzx	esi, BYTE PTR 6[rax]
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gBgAffineRegs[rip]
	mov	DWORD PTR 48[rsp], 0
	mov	DWORD PTR 40[rsp], 0
	mov	QWORD PTR 56[rsp], rax
	mov	DWORD PTR 32[rsp], 0
	call	sub_8003EE4
	movzx	eax, WORD PTR 400[rbx]
	cmp	ax, 340
	ja	.L63
	add	eax, 1
	mov	WORD PTR 400[rbx], ax
.L64:
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	test	BYTE PTR [rax], 8
	je	.L62
	cmp	WORD PTR 400[rbx], 8
	jbe	.L62
	mov	eax, 340
	mov	WORD PTR 400[rbx], ax
.L62:
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L63:
	movzx	edx, WORD PTR 396[rbx]
	xor	r10d, r10d
	movzx	eax, WORD PTR 398[rbx]
	mov	WORD PTR 400[rbx], r10w
	mov	ecx, edx
	not	ecx
	and	ecx, 3
	je	.L70
	add	eax, 1
	add	edx, 1
	lea	rsi, sub_808E4C8[rip]
	mov	rcx, rbx
	mov	WORD PTR 398[rbx], ax
	mov	WORD PTR 396[rbx], dx
	call	sub_808E35C
	mov	rax, QWORD PTR [rdi]
	mov	QWORD PTR 40[rax], rsi
	jmp	.L64
	.p2align 4,,10
	.p2align 3
.L70:
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	ecx, -36
	sub	esi, 1
	xor	r8d, r8d
	mov	r9d, 16
	mov	WORD PTR 114[rbx], r8w
	mov	WORD PTR 2[rdx], cx
	lea	rcx, 96[rbx]
	mov	rdx, QWORD PTR .refptr.VRAM[rip]
	mov	WORD PTR 162[rbx], r9w
	mov	QWORD PTR 104[rbx], rdx
	add	rdx, 57344
	mov	QWORD PTR 120[rbx], rdx
	xor	edx, edx
	test	sil, sil
	cmovs	esi, edx
	mov	DWORD PTR 140[rbx], 0
	mov	QWORD PTR 146[rbx], 0
	movsx	esi, sil
	mov	BYTE PTR 158[rbx], 0
	mov	DWORD PTR 154[rbx], 327710
	mov	edx, esi
	sal	edx, 4
	sub	edx, esi
	lea	eax, 1[rdx+rax]
	lea	rdx, sTilemapsCharacterDialogue[rip]
	cdqe
	movzx	eax, WORD PTR [rdx+rax*2]
	mov	WORD PTR 144[rbx], ax
	call	DrawBackground
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	ecx, 410
	or	WORD PTR [rax], 256
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rdi]
	lea	rdi, sub_808E63C[rip]
	mov	QWORD PTR 40[rax], rdi
	jmp	.L64
	.seh_endproc
	.p2align 4
	.globl	CreateCharacterUnlockCutScene
	.def	CreateCharacterUnlockCutScene;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateCharacterUnlockCutScene
CreateCharacterUnlockCutScene:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	xor	r9d, r9d
	mov	r8d, 4096
	mov	edx, 408
	mov	QWORD PTR 32[rsp], 0
	mov	ebx, ecx
	lea	rcx, sub_808E424[rip]
	call	TaskCreate
	movd	xmm1, DWORD PTR .LC13[rip]
	mov	rcx, QWORD PTR 24[rax]
	movzx	eax, bl
	movd	xmm0, eax
	xor	eax, eax
	pshuflw	xmm0, xmm0, 0
	mov	WORD PTR 400[rcx], ax
	pmullw	xmm0, xmm1
	mov	BYTE PTR 402[rcx], bl
	movd	DWORD PTR 396[rcx], xmm0
	add	rsp, 48
	pop	rbx
	jmp	sub_808E274
	.seh_endproc
	.p2align 4
	.globl	CreateCreamUnlockCutScene
	.def	CreateCreamUnlockCutScene;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateCreamUnlockCutScene
CreateCreamUnlockCutScene:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	xor	r9d, r9d
	mov	r8d, 4096
	mov	edx, 408
	lea	rcx, sub_808E424[rip]
	mov	QWORD PTR 32[rsp], 0
	call	TaskCreate
	mov	rcx, QWORD PTR 24[rax]
	xor	eax, eax
	mov	DWORD PTR 396[rcx], 0
	mov	WORD PTR 400[rcx], ax
	add	rsp, 56
	jmp	sub_808E274
	.seh_endproc
	.p2align 4
	.globl	CreateTailsUnlockCutScene
	.def	CreateTailsUnlockCutScene;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateTailsUnlockCutScene
CreateTailsUnlockCutScene:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	xor	r9d, r9d
	mov	r8d, 4096
	mov	edx, 408
	lea	rcx, sub_808E424[rip]
	mov	QWORD PTR 32[rsp], 0
	call	TaskCreate
	mov	rcx, QWORD PTR 24[rax]
	xor	eax, eax
	mov	DWORD PTR 396[rcx], 655368
	mov	WORD PTR 400[rcx], ax
	add	rsp, 56
	jmp	sub_808E274
	.seh_endproc
	.p2align 4
	.globl	CreateKnucklesUnlockCutScene
	.def	CreateKnucklesUnlockCutScene;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateKnucklesUnlockCutScene
CreateKnucklesUnlockCutScene:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	xor	r9d, r9d
	mov	r8d, 4096
	mov	edx, 408
	lea	rcx, sub_808E424[rip]
	mov	QWORD PTR 32[rsp], 0
	call	TaskCreate
	mov	rcx, QWORD PTR 24[rax]
	xor	eax, eax
	mov	DWORD PTR 396[rcx], 327684
	mov	WORD PTR 400[rcx], ax
	add	rsp, 56
	jmp	sub_808E274
	.seh_endproc
	.section .rdata,"dr"
	.align 2
gUnknown_080E122C:
	.word	0
	.word	5
	.word	4
	.align 8
gUnknown_080E1220:
	.word	208
	.word	288
	.word	224
	.word	288
	.word	256
	.word	0
	.align 8
gUnknown_080E1214:
	.word	-27648
	.word	0
	.word	-18432
	.word	0
	.word	0
	.word	-30720
	.align 16
gUnknown_080E1208:
	.quad	sub_808DD9C
	.quad	sub_808DF88
	.quad	sub_808E114
	.align 32
sAnimsCharacterRescued:
	.long	20
	.long	135
	.long	0
	.long	30
	.long	223
	.long	0
	.long	35
	.long	316
	.long	0
	.align 32
sTilemapsCharacterDialogue:
	.word	270
	.word	271
	.word	272
	.word	273
	.word	274
	.word	304
	.word	305
	.word	306
	.word	307
	.word	308
	.word	338
	.word	339
	.word	340
	.word	341
	.word	342
	.word	275
	.word	276
	.word	277
	.word	278
	.word	279
	.word	309
	.word	310
	.word	311
	.word	312
	.word	313
	.word	343
	.word	344
	.word	345
	.word	346
	.word	347
	.word	285
	.word	286
	.word	287
	.word	288
	.word	289
	.word	319
	.word	320
	.word	321
	.word	322
	.word	323
	.word	353
	.word	354
	.word	355
	.word	356
	.word	357
	.word	280
	.word	281
	.word	282
	.word	283
	.word	284
	.word	314
	.word	315
	.word	316
	.word	317
	.word	318
	.word	348
	.word	349
	.word	350
	.word	351
	.word	352
	.word	295
	.word	296
	.word	297
	.word	298
	.word	299
	.word	329
	.word	330
	.word	331
	.word	332
	.word	333
	.word	363
	.word	364
	.word	365
	.word	366
	.word	367
	.word	290
	.word	291
	.word	292
	.word	293
	.word	294
	.word	324
	.word	325
	.word	326
	.word	327
	.word	328
	.word	358
	.word	359
	.word	360
	.word	361
	.word	362
	.align 16
sTilemapsCharacterSlides:
	.word	266
	.word	267
	.word	268
	.word	269
	.word	300
	.word	301
	.word	302
	.word	303
	.word	334
	.word	335
	.word	336
	.word	337
	.align 4
.LC0:
	.word	-5120
	.word	-2560
	.set	.LC1,.LC6+2
	.align 8
.LC6:
	.word	0
	.word	-256
	.word	256
	.word	0
	.align 8
.LC8:
	.byte	0
	.byte	0
	.byte	-1
	.byte	32
	.byte	0
	.byte	0
	.byte	-1
	.byte	32
	.align 8
.LC10:
	.word	0
	.word	0
	.word	0
	.word	-120
	.align 8
.LC11:
	.word	1
	.word	2
	.word	0
	.word	512
	.align 4
.LC13:
	.word	4
	.word	5
	.ident	"GCC: (GNU) 13-win32"
	.def	sub_801F100;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	CreateStageResults;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	sub_8003EE4;	.scl	2;	.type	32;	.endef
	.def	UpdateScreenFade;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	CreateCourseSelectionScreen;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	DrawBackground;	.scl	2;	.type	32;	.endef
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gPressedKeys, "dr"
	.globl	.refptr.gPressedKeys
	.linkonce	discard
.refptr.gPressedKeys:
	.quad	gPressedKeys
	.section	.rdata$.refptr.gBgScrollRegs, "dr"
	.globl	.refptr.gBgScrollRegs
	.linkonce	discard
.refptr.gBgScrollRegs:
	.quad	gBgScrollRegs
	.section	.rdata$.refptr.gBgSprites_Unknown2, "dr"
	.globl	.refptr.gBgSprites_Unknown2
	.linkonce	discard
.refptr.gBgSprites_Unknown2:
	.quad	gBgSprites_Unknown2
	.section	.rdata$.refptr.gBgSprites_Unknown1, "dr"
	.globl	.refptr.gBgSprites_Unknown1
	.linkonce	discard
.refptr.gBgSprites_Unknown1:
	.quad	gBgSprites_Unknown1
	.section	.rdata$.refptr.gBgCntRegs, "dr"
	.globl	.refptr.gBgCntRegs
	.linkonce	discard
.refptr.gBgCntRegs:
	.quad	gBgCntRegs
	.section	.rdata$.refptr.gDispCnt, "dr"
	.globl	.refptr.gDispCnt
	.linkonce	discard
.refptr.gDispCnt:
	.quad	gDispCnt
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gSelectedCharacter, "dr"
	.globl	.refptr.gSelectedCharacter
	.linkonce	discard
.refptr.gSelectedCharacter:
	.quad	gSelectedCharacter
	.section	.rdata$.refptr.gLoadedSaveGame, "dr"
	.globl	.refptr.gLoadedSaveGame
	.linkonce	discard
.refptr.gLoadedSaveGame:
	.quad	gLoadedSaveGame
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.gBgAffineRegs, "dr"
	.globl	.refptr.gBgAffineRegs
	.linkonce	discard
.refptr.gBgAffineRegs:
	.quad	gBgAffineRegs
	.section	.rdata$.refptr.gCourseTime, "dr"
	.globl	.refptr.gCourseTime
	.linkonce	discard
.refptr.gCourseTime:
	.quad	gCourseTime
	.section	.rdata$.refptr.gRingCount, "dr"
	.globl	.refptr.gRingCount
	.linkonce	discard
.refptr.gRingCount:
	.quad	gRingCount
	.section	.rdata$.refptr.gSpecialRingCount, "dr"
	.globl	.refptr.gSpecialRingCount
	.linkonce	discard
.refptr.gSpecialRingCount:
	.quad	gSpecialRingCount
	.section	.rdata$.refptr.sub_801EC3C, "dr"
	.globl	.refptr.sub_801EC3C
	.linkonce	discard
.refptr.sub_801EC3C:
	.quad	sub_801EC3C
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
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
