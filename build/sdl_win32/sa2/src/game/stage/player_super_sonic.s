	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	SuperSonicHandleDirectionalInput;	.scl	3;	.type	32;	.endef
	.seh_proc	SuperSonicHandleDirectionalInput
SuperSonicHandleDirectionalInput:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gInput[rip]
	movzx	r8d, WORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	movzx	eax, WORD PTR [rax]
	mov	edx, r8d
	sal	eax, 16
	or	eax, r8d
	mov	DWORD PTR 28[rcx], eax
	mov	eax, r8d
	and	eax, 64
	test	r8b, 32
	je	.L2
	test	ax, ax
	jne	.L13
	and	edx, 128
	je	.L5
	mov	eax, 384
	mov	WORD PTR 24[rcx], ax
	mov	eax, 12
.L1:
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	test	r8b, 16
	je	.L6
	test	ax, ax
	jne	.L14
	and	edx, 128
	je	.L8
	mov	r9d, 128
	mov	eax, 14
	mov	WORD PTR 24[rcx], r9w
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	test	ax, ax
	jne	.L15
	xor	eax, eax
	and	edx, 128
	je	.L1
	mov	eax, 256
	mov	WORD PTR 24[rcx], ax
	mov	eax, 10
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	mov	r11d, 512
	mov	eax, 6
	mov	WORD PTR 24[rcx], r11w
	ret
	.p2align 4,,10
	.p2align 3
.L13:
	mov	eax, 640
	mov	WORD PTR 24[rcx], ax
	mov	eax, 16
	ret
	.p2align 4,,10
	.p2align 3
.L15:
	mov	edx, 768
	mov	eax, 8
	mov	WORD PTR 24[rcx], dx
	ret
	.p2align 4,,10
	.p2align 3
.L14:
	mov	r10d, 896
	mov	eax, 18
	mov	WORD PTR 24[rcx], r10w
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	xor	r8d, r8d
	mov	eax, 4
	mov	WORD PTR 24[rcx], r8w
	ret
	.seh_endproc
	.p2align 4
	.def	sub_802C358;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_802C358
sub_802C358:
	.seh_endprologue
	mov	rax, rcx
	mov	ecx, DWORD PTR 12[rcx]
	lea	edx, -1[rcx]
	mov	DWORD PTR 12[rax], edx
	test	edx, edx
	jne	.L17
	lea	rcx, sub_802C058[rip]
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	mov	QWORD PTR 40[rax], rcx
	mov	ecx, DWORD PTR [rax]
	mov	DWORD PTR 384[rax], -1
	and	ecx, -3
	mov	WORD PTR 356[rax], r8w
	or	ecx, 1
	mov	WORD PTR 364[rax], r9w
	mov	DWORD PTR [rax], ecx
	mov	ecx, -254
	mov	WORD PTR 368[rax], cx
	mov	DWORD PTR 336[rax], 31129600
	mov	QWORD PTR 16[rax], 0
	mov	WORD PTR 34[rax], r10w
.L18:
	lea	edx, [rdx+rdx*2]
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	movzx	r8d, WORD PTR 24[rax]
	sal	edx, 2
	movq	xmm1, QWORD PTR 4[rax]
	movsx	rdx, edx
	movsx	edx, WORD PTR [r9+rdx*2]
	lea	ecx, [rdx+rdx*2]
	lea	edx, 256[r8]
	movsx	rdx, edx
	sar	ecx, 5
	movsx	edx, WORD PTR [r9+rdx*2]
	mov	WORD PTR 26[rax], cx
	imul	edx, ecx
	movd	xmm0, edx
	movsx	edx, WORD PTR [r9+r8*2]
	imul	edx, ecx
	movd	xmm2, edx
	punpckldq	xmm0, xmm2
	psrad	xmm0, 14
	paddd	xmm0, xmm1
	movq	QWORD PTR 4[rax], xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L17:
	cmp	edx, 8
	jne	.L19
	movzx	r8d, BYTE PTR 35[rax]
	lea	rcx, gAnims_SuperSonic_080D69C8[rip]
	and	DWORD PTR [rax], -129
	mov	BYTE PTR 369[rax], -1
	add	r8, 1
	movzx	r9d, WORD PTR 4[rcx+r8*8]
	movzx	ecx, BYTE PTR 6[rcx+r8*8]
	mov	WORD PTR 338[rax], r9w
	mov	BYTE PTR 368[rax], cl
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L19:
	jle	.L18
	or	DWORD PTR [rax], 128
	jmp	.L18
	.seh_endproc
	.p2align 4
	.def	sub_802C480;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_802C480
sub_802C480:
	.seh_endprologue
	mov	rax, rcx
	mov	ecx, DWORD PTR 12[rcx]
	lea	edx, -1[rcx]
	mov	DWORD PTR 12[rax], edx
	test	edx, edx
	jne	.L21
	lea	rcx, sub_802C058[rip]
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	mov	QWORD PTR 40[rax], rcx
	mov	ecx, DWORD PTR [rax]
	mov	DWORD PTR 336[rax], 31129600
	and	ecx, -5
	mov	WORD PTR 356[rax], r8w
	or	ecx, 1
	mov	WORD PTR 364[rax], r9w
	mov	DWORD PTR [rax], ecx
	mov	ecx, -254
	mov	WORD PTR 368[rax], cx
	mov	QWORD PTR 16[rax], 0
	mov	WORD PTR 34[rax], r10w
.L21:
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	lea	edx, [rdx+rdx*4]
	movzx	r8d, WORD PTR 24[rax]
	mov	DWORD PTR 376[rax], -1
	movsx	rdx, edx
	movq	xmm1, QWORD PTR 4[rax]
	mov	DWORD PTR 384[rax], -1
	movsx	edx, WORD PTR [r9+rdx*2]
	lea	ecx, [rdx+rdx*2]
	lea	edx, 256[r8]
	movsx	rdx, edx
	sar	ecx, 5
	movsx	edx, WORD PTR [r9+rdx*2]
	mov	WORD PTR 26[rax], cx
	imul	edx, ecx
	movd	xmm0, edx
	movsx	edx, WORD PTR [r9+r8*2]
	imul	edx, ecx
	movd	xmm2, edx
	punpckldq	xmm0, xmm2
	psrad	xmm0, 14
	paddd	xmm0, xmm1
	movq	QWORD PTR 4[rax], xmm0
	ret
	.seh_endproc
	.p2align 4
	.def	sub_802C55C;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_802C55C
sub_802C55C:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	call	SuperSonicHandleDirectionalInput
	imul	edx, DWORD PTR 16[rcx], -110
	test	edx, edx
	lea	eax, 127[rdx]
	cmovns	eax, edx
	imul	edx, DWORD PTR 20[rcx], -110
	sar	eax, 7
	mov	DWORD PTR 16[rcx], eax
	test	edx, edx
	lea	eax, 127[rdx]
	cmovns	eax, edx
	sar	eax, 7
	mov	DWORD PTR 20[rcx], eax
	mov	eax, DWORD PTR 12[rcx]
	lea	edx, -1[rax]
	mov	DWORD PTR 12[rcx], edx
	test	edx, edx
	jne	.L23
	lea	rax, sub_802C058[rip]
	xor	edx, edx
	xor	r8d, r8d
	xor	r9d, r9d
	mov	QWORD PTR 40[rcx], rax
	mov	eax, DWORD PTR [rcx]
	mov	DWORD PTR 336[rcx], 31129600
	and	eax, -9
	mov	WORD PTR 356[rcx], dx
	or	eax, 1
	mov	WORD PTR 364[rcx], r8w
	mov	DWORD PTR [rcx], eax
	mov	eax, -254
	mov	WORD PTR 368[rcx], ax
	mov	QWORD PTR 16[rcx], 0
	mov	WORD PTR 34[rcx], r9w
.L22:
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	test	BYTE PTR 30[rcx], -13
	je	.L22
	sub	eax, 5
	cmp	edx, 4
	mov	edx, 1
	cmovle	eax, edx
	mov	DWORD PTR 12[rcx], eax
	movzx	eax, BYTE PTR 34[rcx]
	add	eax, 1
	cmp	al, 4
	jle	.L30
	mov	r8, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	BYTE PTR 34[rcx], 0
	imul	eax, DWORD PTR [r8], 1663525
	add	eax, 1013904223
	mov	edx, eax
	imul	eax, eax, 1663525
	and	edx, 4095
	sub	edx, 2047
	add	eax, 1013904223
	mov	DWORD PTR 16[rcx], edx
	mov	DWORD PTR [r8], eax
	and	eax, 4095
	sub	eax, 2047
	mov	DWORD PTR 20[rcx], eax
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L30:
	mov	BYTE PTR 34[rcx], al
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.def	sub_802C8A0;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_802C8A0
sub_802C8A0:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 4[rdx]
	mov	edx, DWORD PTR [rdx]
	mov	r9d, DWORD PTR 4[rcx]
	and	DWORD PTR [rcx], -5
	add	edx, 502
	add	eax, 120
	sal	edx, 8
	sal	eax, 8
	sub	edx, r9d
	movsx	r8, edx
	sar	edx, 31
	imul	r8, r8, 1374389535
	sar	r8, 37
	sub	r8d, edx
	lea	edx, [r8+r9]
	mov	r8d, DWORD PTR 8[rcx]
	mov	DWORD PTR 4[rcx], edx
	sub	eax, r8d
	movsx	rdx, eax
	sar	eax, 31
	imul	rdx, rdx, 1374389535
	sar	rdx, 37
	sub	edx, eax
	lea	eax, [rdx+r8]
	mov	DWORD PTR 8[rcx], eax
	ret
	.seh_endproc
	.p2align 4
	.def	sub_802C8EC;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_802C8EC
sub_802C8EC:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	movzx	eax, WORD PTR 26[rcx]
	add	eax, 32
	mov	WORD PTR 26[rcx], ax
	cwde
	add	eax, DWORD PTR 8[rcx]
	mov	DWORD PTR 8[rcx], eax
	sar	eax, 8
	sub	eax, DWORD PTR 4[rdx]
	mov	DWORD PTR 352[rcx], 8192
	cmp	eax, 240
	jle	.L32
	mov	BYTE PTR 305[rcx], 1
.L32:
	ret
	.seh_endproc
	.p2align 4
	.def	sub_802C92C;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_802C92C
sub_802C92C:
	.seh_endprologue
	sub	DWORD PTR 12[rcx], 1
	jne	.L35
	lea	rax, sub_802C988[rip]
	or	DWORD PTR [rcx], 64
	mov	QWORD PTR 40[rcx], rax
	mov	DWORD PTR 12[rcx], 100
.L35:
	movzx	edx, WORD PTR 24[rcx]
	mov	eax, 256
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	mov	WORD PTR 26[rcx], ax
	movq	xmm1, QWORD PTR 4[rcx]
	lea	eax, 256[rdx]
	cdqe
	movsx	eax, WORD PTR [r8+rax*2]
	sar	eax, 6
	movd	xmm0, eax
	movsx	eax, WORD PTR [r8+rdx*2]
	sar	eax, 6
	movd	xmm2, eax
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	movq	QWORD PTR 4[rcx], xmm0
	ret
	.seh_endproc
	.p2align 4
	.def	sub_802C058;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_802C058
sub_802C058:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	DWORD PTR 384[rcx], -1
	mov	rbx, rcx
	call	SuperSonicHandleDirectionalInput
	movzx	edi, al
	movzx	eax, WORD PTR 26[rcx]
	mov	esi, edi
	test	edi, edi
	je	.L37
	mov	edx, eax
	neg	dx
	cmovs	edx, eax
	mov	eax, 640
	add	edx, 64
	cmp	dx, ax
	cmovg	edx, eax
	movzx	eax, WORD PTR 28[rcx]
	mov	WORD PTR 26[rcx], dx
	movzx	ecx, BYTE PTR 368[rcx]
	test	al, 64
	je	.L38
	cmp	cl, 1
	je	.L39
	mov	eax, -255
	mov	QWORD PTR 16[rbx], 0
	mov	WORD PTR 368[rbx], ax
	xor	eax, eax
	mov	WORD PTR 356[rbx], ax
	xor	eax, eax
	mov	WORD PTR 364[rbx], ax
	mov	eax, 256
	mov	DWORD PTR 336[rbx], 31129600
	mov	WORD PTR 34[rbx], ax
.L39:
	test	BYTE PTR 30[rbx], 3
	jne	.L48
	movzx	ecx, WORD PTR 24[rbx]
	mov	r8d, DWORD PTR 4[rbx]
	lea	eax, 256[rcx]
.L47:
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	cdqe
	movsx	edx, dx
	movsx	eax, WORD PTR [r9+rax*2]
	imul	eax, edx
	sar	eax, 14
	add	eax, r8d
	mov	DWORD PTR 4[rbx], eax
	movsx	eax, WORD PTR [r9+rcx*2]
	imul	eax, edx
	sar	eax, 14
	add	DWORD PTR 8[rbx], eax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L38:
	test	al, -128
	je	.L40
	cmp	cl, 3
	je	.L39
	mov	r9d, -253
	xor	r10d, r10d
	xor	r11d, r11d
	mov	eax, 512
	mov	WORD PTR 368[rbx], r9w
	mov	DWORD PTR 336[rbx], 31129600
	mov	WORD PTR 356[rbx], r10w
	mov	WORD PTR 364[rbx], r11w
	mov	QWORD PTR 16[rbx], 0
	mov	WORD PTR 34[rbx], ax
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L37:
	test	ax, ax
	js	.L62
	jne	.L63
.L43:
	cmp	BYTE PTR 368[rbx], 2
	je	.L45
	xor	eax, eax
	mov	edi, -254
	mov	DWORD PTR 336[rbx], 31129600
	mov	WORD PTR 356[rbx], ax
	xor	eax, eax
	mov	WORD PTR 364[rbx], ax
	xor	eax, eax
	mov	WORD PTR 368[rbx], di
	mov	QWORD PTR 16[rbx], 0
	mov	WORD PTR 34[rbx], ax
.L45:
	mov	eax, DWORD PTR 4[rbx]
	lea	r8d, -128[rax]
	mov	DWORD PTR 4[rbx], r8d
	test	BYTE PTR 30[rbx], 3
	jne	.L46
	movzx	ecx, WORD PTR 24[rbx]
	movzx	edx, WORD PTR 26[rbx]
	lea	eax, 256[rcx]
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L62:
	add	eax, 64
	mov	WORD PTR 26[rcx], ax
	test	ax, ax
	jns	.L42
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L63:
	sub	eax, 64
	mov	WORD PTR 26[rcx], ax
	test	ax, ax
	jg	.L43
.L42:
	mov	DWORD PTR 24[rbx], 0
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L40:
	cmp	cl, 2
	je	.L39
	mov	eax, -254
	xor	ecx, ecx
	xor	r8d, r8d
	mov	DWORD PTR 336[rbx], 31129600
	mov	WORD PTR 368[rbx], ax
	xor	eax, eax
	mov	WORD PTR 356[rbx], ax
	mov	WORD PTR 364[rbx], cx
	mov	QWORD PTR 16[rbx], 0
	mov	WORD PTR 34[rbx], r8w
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L48:
	lea	rax, sub_802C358[rip]
	mov	DWORD PTR 12[rbx], 20
	mov	ecx, 112
	mov	edi, edi
	mov	QWORD PTR 40[rbx], rax
	mov	eax, DWORD PTR [rbx]
	and	eax, -2
	or	al, -126
	mov	DWORD PTR [rbx], eax
	call	m4aSongNumStart
	movzx	ecx, WORD PTR 24[rbx]
	mov	BYTE PTR 35[rbx], sil
	xor	r10d, r10d
	lea	rax, gAnims_SuperSonic_080D69C8[rip]
	xor	r11d, r11d
	xor	esi, esi
	mov	BYTE PTR 34[rbx], 0
	movzx	edx, WORD PTR 4[rax+rdi*8]
	movzx	eax, BYTE PTR 6[rax+rdi*8]
	mov	BYTE PTR 369[rbx], -1
	mov	WORD PTR 336[rbx], r10w
	mov	r8d, DWORD PTR 4[rbx]
	mov	WORD PTR 338[rbx], dx
	movzx	edx, WORD PTR 26[rbx]
	mov	BYTE PTR 368[rbx], al
	lea	eax, 256[rcx]
	mov	WORD PTR 356[rbx], r11w
	mov	WORD PTR 364[rbx], si
	mov	QWORD PTR 16[rbx], 0
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L46:
	lea	rax, sub_802C358[rip]
	mov	DWORD PTR 12[rbx], 20
	mov	ecx, 112
	mov	QWORD PTR 40[rbx], rax
	mov	eax, DWORD PTR [rbx]
	and	eax, -2
	or	al, -126
	mov	DWORD PTR [rbx], eax
	call	m4aSongNumStart
	xor	eax, eax
	mov	edx, -252
	xor	ecx, ecx
	xor	r8d, r8d
	mov	r9d, 1024
	mov	WORD PTR 24[rbx], ax
	mov	eax, 256
	mov	WORD PTR 368[rbx], dx
	movzx	edx, WORD PTR 26[rbx]
	mov	WORD PTR 356[rbx], cx
	xor	ecx, ecx
	mov	WORD PTR 364[rbx], r8w
	mov	r8d, DWORD PTR 4[rbx]
	mov	DWORD PTR 336[rbx], 31129600
	mov	QWORD PTR 16[rbx], 0
	mov	WORD PTR 34[rbx], r9w
	jmp	.L47
	.seh_endproc
	.p2align 4
	.def	sub_802BE1C;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_802BE1C
sub_802BE1C:
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
	mov	eax, DWORD PTR [rcx]
	mov	rbx, rcx
	test	al, 64
	jne	.L64
	mov	edx, eax
	and	edx, 130
	cmp	edx, 128
	je	.L87
	mov	r8d, eax
	and	r8d, 4
	je	.L70
	mov	r12, QWORD PTR .refptr.gStageTime[rip]
	test	BYTE PTR [r12], 4
	jne	.L64
	mov	r8d, 4
.L70:
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	and	eax, 512
	movzx	edx, WORD PTR 17[rbx]
	lea	rsi, 320[rbx]
	add	dx, WORD PTR 5[rbx]
	sub	dx, WORD PTR [rdi]
	mov	WORD PTR 358[rbx], dx
	movzx	edx, WORD PTR 21[rbx]
	add	dx, WORD PTR 9[rbx]
	sub	dx, WORD PTR 4[rdi]
	neg	eax
	sbb	ecx, ecx
	mov	WORD PTR 360[rbx], dx
	and	ecx, 12288
	mov	eax, ecx
	or	ah, 4
	test	r8d, r8d
	je	.L73
	mov	rax, QWORD PTR .refptr.gOamMatrixIndex[rip]
	movzx	edx, BYTE PTR [rax]
	lea	r8d, 1[rdx]
	mov	BYTE PTR [rax], r8b
	movzx	eax, dl
	or	eax, ecx
	or	eax, 96
.L73:
	mov	DWORD PTR 352[rbx], eax
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	test	BYTE PTR [rbx], 4
	je	.L74
	mov	eax, DWORD PTR 12[rbx]
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	mov	rcx, rsi
	mov	DWORD PTR 394[rbx], 16777472
	lea	eax, [rax+rax*4]
	sal	eax, 2
	and	eax, 1020
	movzx	eax, WORD PTR 512[rdx+rax*2]
	lea	rdx, 392[rbx]
	sar	ax, 4
	and	ax, 1023
	mov	WORD PTR 392[rbx], ax
	mov	eax, DWORD PTR 358[rbx]
	mov	DWORD PTR 398[rbx], eax
	call	TransformSprite
	mov	rcx, rsi
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
.L74:
	mov	rcx, rsi
	call	DisplaySprite
	mov	eax, DWORD PTR [rbx]
	mov	edx, eax
	and	edx, 130
	cmp	edx, 128
	je	.L64
	test	eax, 536
	jne	.L64
	mov	r12, QWORD PTR .refptr.gStageTime[rip]
	mov	r13d, 3
	mov	ebp, 2
.L76:
	mov	eax, DWORD PTR [r12]
	cdq
	idiv	ebp
	test	edx, edx
	je	.L88
.L75:
	add	ebp, 1
	add	r13d, 3
	cmp	ebp, 5
	jne	.L76
.L64:
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
.L87:
	mov	r12, QWORD PTR .refptr.gStageTime[rip]
	mov	r8d, eax
	and	r8d, 4
	test	BYTE PTR [r12], 4
	je	.L70
	jmp	.L64
	.p2align 4,,10
	.p2align 3
.L88:
	movzx	eax, BYTE PTR 304[rbx]
	mov	rcx, rsi
	sub	eax, r13d
	and	eax, 31
	add	rax, 6
	movzx	edx, WORD PTR 1[rbx+rax*8]
	movzx	eax, WORD PTR 5[rbx+rax*8]
	sub	dx, WORD PTR [rdi]
	sub	ax, WORD PTR 4[rdi]
	mov	WORD PTR 358[rbx], dx
	mov	WORD PTR 360[rbx], ax
	call	DisplaySprite
	jmp	.L75
	.seh_endproc
	.p2align 4
	.def	sub_802C828;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_802C828
sub_802C828:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	movzx	edx, WORD PTR [rdx]
	mov	rax, rcx
	and	dh, 1
	jne	.L89
	sub	DWORD PTR 12[rcx], 1
	jne	.L91
	mov	edx, DWORD PTR [rax]
	lea	rcx, sub_802C058[rip]
	mov	QWORD PTR 40[rax], rcx
	and	edx, -33
	or	edx, 1
	mov	DWORD PTR [rax], edx
.L91:
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	mov	r9d, DWORD PTR 4[rax]
	mov	ecx, DWORD PTR 4[r8]
	lea	edx, 90[rcx]
	mov	ecx, edx
	mov	edx, DWORD PTR [r8]
	sal	ecx, 8
	add	edx, 80
	sal	edx, 8
	sub	edx, r9d
	lea	r8d, [rdx+rdx*2]
	movsx	rdx, r8d
	sar	r8d, 31
	imul	rdx, rdx, 1374389535
	sar	rdx, 37
	sub	edx, r8d
	mov	r8d, DWORD PTR 8[rax]
	add	edx, r9d
	sub	ecx, r8d
	mov	DWORD PTR 4[rax], edx
	lea	ecx, [rcx+rcx*2]
	movsx	rdx, ecx
	sar	ecx, 31
	imul	rdx, rdx, 1374389535
	sar	rdx, 37
	sub	edx, ecx
	add	edx, r8d
	mov	DWORD PTR 8[rax], edx
.L89:
	ret
	.seh_endproc
	.p2align 4
	.globl	SuperSonicInit
	.def	SuperSonicInit;	.scl	2;	.type	32;	.endef
	.seh_proc	SuperSonicInit
SuperSonicInit:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	xor	ecx, ecx
	xor	edx, edx
	pxor	xmm0, xmm0
	mov	r8d, 50
	xor	r9d, r9d
	mov	WORD PTR 58[rax], cx
	movabs	rcx, 2199023256064
	mov	WORD PTR 8[rax], dx
	mov	rdx, QWORD PTR .refptr.gRingCount[rip]
	mov	QWORD PTR 20[rax], rcx
	lea	rcx, Task_802BC10[rip]
	movups	XMMWORD PTR 72[rax], xmm0
	mov	QWORD PTR 36[rax], 0
	mov	QWORD PTR 46[rax], 0
	mov	DWORD PTR 54[rax], 0
	mov	BYTE PTR 60[rax], 0
	mov	QWORD PTR 64[rax], 0
	mov	QWORD PTR 88[rax], 0
	mov	QWORD PTR 96[rax], 0
	mov	QWORD PTR 104[rax], 0
	mov	QWORD PTR 112[rax], 0
	mov	QWORD PTR 120[rax], 0
	mov	QWORD PTR 128[rax], 0
	mov	QWORD PTR 136[rax], 0
	mov	BYTE PTR 144[rax], 0
	mov	QWORD PTR 12[rax], 0
	mov	rax, QWORD PTR .refptr.gCourseTime[rip]
	mov	WORD PTR [rdx], r8w
	mov	r8d, 16448
	mov	edx, 416
	mov	DWORD PTR [rax], 0
	mov	QWORD PTR 32[rsp], 0
	call	TaskCreate
	lea	rdx, sub_802C828[rip]
	xor	r9d, r9d
	movabs	rcx, 659706976665632
	mov	QWORD PTR sSuperSonicTask[rip], rax
	mov	rax, QWORD PTR 24[rax]
	xor	r10d, r10d
	mov	r11d, -254
	mov	QWORD PTR [rax], rcx
	movabs	rcx, 1288490262528
	mov	QWORD PTR 40[rax], rdx
	mov	rdx, QWORD PTR .refptr.gPressedKeys[rip]
	mov	QWORD PTR 8[rax], rcx
	mov	rcx, QWORD PTR .refptr.gInput[rip]
	movzx	edx, WORD PTR [rdx]
	mov	WORD PTR 32[rax], r9w
	movzx	ecx, WORD PTR [rcx]
	mov	QWORD PTR 16[rax], 0
	sal	edx, 16
	mov	DWORD PTR 24[rax], 0
	or	edx, ecx
	mov	BYTE PTR 34[rax], 0
	mov	rcx, QWORD PTR .refptr.VRAM[rip]
	mov	DWORD PTR 28[rax], edx
	lea	rdx, 65536[rcx]
	mov	WORD PTR 304[rax], r10w
	mov	QWORD PTR 328[rax], rdx
	xor	edx, edx
	mov	DWORD PTR 336[rax], 31129600
	mov	WORD PTR 368[rax], r11w
	mov	BYTE PTR 370[rax], 16
	mov	BYTE PTR 373[rax], 0
	mov	DWORD PTR 376[rax], -1
	mov	DWORD PTR 384[rax], -1
	mov	QWORD PTR 352[rax], 5120
	mov	DWORD PTR 360[rax], 33554432
	mov	WORD PTR 364[rax], dx
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_802B81C
	.def	sub_802B81C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_802B81C
sub_802B81C:
	.seh_endprologue
	mov	rdx, QWORD PTR sSuperSonicTask[rip]
	test	rdx, rdx
	je	.L93
	mov	rax, QWORD PTR 24[rdx]
	lea	rcx, Task_802C7E8[rip]
	xor	r8d, r8d
	mov	r9d, 512
	mov	QWORD PTR 40[rdx], rcx
	lea	rcx, sub_802C8A0[rip]
	mov	edx, -253
	mov	QWORD PTR 40[rax], rcx
	xor	ecx, ecx
	mov	WORD PTR 368[rax], dx
	mov	DWORD PTR 336[rax], 31129600
	mov	WORD PTR 356[rax], cx
	mov	WORD PTR 364[rax], r8w
	mov	QWORD PTR 16[rax], 0
	mov	WORD PTR 34[rax], r9w
.L93:
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_802BA8C
	.def	sub_802BA8C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_802BA8C
sub_802BA8C:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR sSuperSonicTask[rip]
	mov	rbx, QWORD PTR 24[rax]
	call	ExtraBossIsDead
	xor	edx, edx
	cmp	eax, 1
	je	.L98
	mov	eax, DWORD PTR [rbx]
	test	eax, 656
	je	.L103
.L98:
	mov	eax, edx
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L103:
	mov	edx, 512
	and	eax, -76
	xor	r8d, r8d
	xor	r9d, r9d
	or	al, -124
	mov	WORD PTR 24[rbx], dx
	lea	rcx, sub_802C480[rip]
	mov	edx, 1
	mov	QWORD PTR 40[rbx], rcx
	mov	ecx, -256
	mov	DWORD PTR [rbx], eax
	mov	eax, edx
	mov	WORD PTR 368[rbx], cx
	mov	DWORD PTR 336[rbx], 31129600
	mov	WORD PTR 356[rbx], r8w
	mov	WORD PTR 364[rbx], r9w
	mov	QWORD PTR 12[rbx], 48
	mov	DWORD PTR 20[rbx], 0
	mov	DWORD PTR 32[rbx], 50331768
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	sub_802C988;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_802C988
sub_802C988:
	.seh_endprologue
	sub	DWORD PTR 12[rcx], 1
	je	.L106
	ret
	.p2align 4,,10
	.p2align 3
.L106:
	and	DWORD PTR [rcx], -577
	jmp	sub_802BA8C
	.seh_endproc
	.p2align 4
	.globl	sub_802BB54
	.def	sub_802BB54;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_802BB54
sub_802BB54:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR sSuperSonicTask[rip]
	mov	rbx, QWORD PTR 24[rax]
	call	ExtraBossIsDead
	cmp	eax, 1
	je	.L107
	mov	eax, DWORD PTR [rbx]
	test	al, -104
	je	.L112
.L107:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L112:
	and	eax, -4
	lea	rdx, sub_802C55C[rip]
	xor	ecx, ecx
	mov	r8d, 5120
	or	eax, 8
	mov	QWORD PTR 40[rbx], rdx
	xor	edx, edx
	mov	DWORD PTR [rbx], eax
	mov	eax, -256
	mov	WORD PTR 368[rbx], ax
	mov	DWORD PTR 336[rbx], 31195136
	mov	WORD PTR 356[rbx], dx
	mov	WORD PTR 364[rbx], cx
	mov	QWORD PTR 12[rbx], 300
	mov	QWORD PTR 20[rbx], 0
	mov	WORD PTR 34[rbx], r8w
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_802BCCC
	.def	sub_802BCCC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_802BCCC
sub_802BCCC:
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
	movups	XMMWORD PTR 32[rsp], xmm6
	.seh_savexmm	xmm6, 32
	.seh_endprologue
	mov	eax, DWORD PTR [rcx]
	mov	edi, DWORD PTR 4[rcx]
	mov	rbx, rcx
	test	al, 16
	jne	.L114
	add	edi, 1280
	mov	DWORD PTR 4[rcx], edi
.L114:
	movzx	edx, WORD PTR 32[rbx]
	test	dx, dx
	je	.L117
	sub	edx, 1
	mov	WORD PTR 32[rbx], dx
	test	dx, dx
	je	.L117
.L116:
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	movsx	rdx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gUnknown_080D650C[rip]
	mov	eax, DWORD PTR [rax+rdx*8]
	sal	eax, 8
	cmp	eax, edi
	jle	.L126
.L118:
	mov	eax, edi
	lea	rdx, sub_802C8A0[rip]
	cmp	QWORD PTR 40[rbx], rdx
	je	.L120
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	eax, DWORD PTR 16[rax]
	add	eax, 8
	sal	eax, 8
	lea	edx, 77824[rax]
	cmp	edx, edi
	cmovg	edx, edi
	cmp	eax, edi
	cmovle	eax, edx
.L120:
	movzx	ecx, BYTE PTR 304[rbx]
	movd	xmm3, DWORD PTR 8[rbx]
	movd	xmm0, eax
	mov	DWORD PTR 4[rbx], eax
	mov	rdx, rcx
	punpckldq	xmm0, xmm3
	add	edx, 1
	movq	QWORD PTR 48[rbx+rcx*8], xmm0
	and	edx, 31
	mov	BYTE PTR 304[rbx], dl
	movups	xmm6, XMMWORD PTR 32[rsp]
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L117:
	and	al, 127
	mov	DWORD PTR [rbx], eax
	jmp	.L116
	.p2align 4,,10
	.p2align 3
.L126:
	mov	rax, QWORD PTR .refptr.gUnknown_080D661C[rip]
	mov	esi, DWORD PTR [rax+rdx*8]
	mov	ebp, DWORD PTR 4[rax+rdx*8]
	movq	xmm6, QWORD PTR [rax+rdx*8]
	sal	esi, 8
	sal	ebp, 8
	mov	edx, ebp
	mov	ecx, esi
	add	edi, esi
	call	TrueArea53BossMove
	movd	xmm1, esi
	movd	xmm4, ebp
	lea	rax, 48[rbx]
	punpckldq	xmm1, xmm4
	lea	rdx, 304[rbx]
	punpcklqdq	xmm1, xmm1
	.p2align 4,,10
	.p2align 3
.L119:
	movdqu	xmm0, XMMWORD PTR [rax]
	add	rax, 16
	paddd	xmm0, xmm1
	movups	XMMWORD PTR -16[rax], xmm0
	cmp	rdx, rax
	jne	.L119
	mov	rax, QWORD PTR .refptr.gBossRingsShallRespawn[rip]
	mov	BYTE PTR [rax], 1
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	movq	xmm0, QWORD PTR 32[rax]
	movq	xmm2, QWORD PTR [rax]
	movdqu	xmm1, xmm0
	movq	xmm0, QWORD PTR 16[rax]
	paddd	xmm2, xmm6
	paddd	xmm1, xmm6
	paddd	xmm0, xmm6
	movq	QWORD PTR [rax], xmm2
	movq	QWORD PTR 32[rax], xmm1
	movq	QWORD PTR 16[rax], xmm0
	jmp	.L118
	.seh_endproc
	.p2align 4
	.def	Task_802BC10;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_802BC10
Task_802BC10:
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
	mov	rcx, rbx
	call	sub_802BCCC
	mov	rcx, rbx
	call	[QWORD PTR 40[rbx]]
	mov	eax, DWORD PTR [rbx]
	test	al, 48
	jne	.L128
	mov	edx, DWORD PTR 8[rbx]
	cmp	edx, 12799
	jg	.L129
	mov	DWORD PTR 8[rbx], 12800
.L130:
	mov	rsi, QWORD PTR .refptr.gStageFlags[rip]
	test	WORD PTR [rsi], 256
	jne	.L131
	mov	rdx, QWORD PTR .refptr.gCourseTime[rip]
	cmp	DWORD PTR [rdx], 35999
	ja	.L150
.L133:
	test	ah, 2
	jne	.L134
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	imul	eax, DWORD PTR [rax], -286331153
	add	eax, 143165576
	ror	eax, 2
	cmp	eax, 71582788
	ja	.L131
	mov	rdx, QWORD PTR .refptr.gRingCount[rip]
	movzx	eax, WORD PTR [rdx]
	test	ax, ax
	je	.L151
	sub	eax, 1
	mov	WORD PTR [rdx], ax
	.p2align 4,,10
	.p2align 3
.L131:
	cmp	BYTE PTR 305[rbx], 0
	je	.L136
.L152:
	mov	edx, 65535
	xor	ecx, ecx
	call	TasksDestroyInPriorityRange
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueIndex[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueCursor[rip]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR .refptr.gBgSpritesCount[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyQueueIndex[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyCursor[rip]
	mov	BYTE PTR [rax], dl
	mov	rdx, QWORD PTR .refptr.gNumLives[rip]
	movzx	eax, BYTE PTR [rdx]
	test	al, al
	je	.L137
	sub	eax, 1
	mov	BYTE PTR [rdx], al
	test	al, al
	je	.L137
	mov	rax, QWORD PTR .refptr.gCourseTime[rip]
	mov	ecx, 2
	cmp	DWORD PTR [rax], 35999
	ja	.L148
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	GameStageStart
	.p2align 4,,10
	.p2align 3
.L128:
	test	al, 16
	je	.L130
	cmp	BYTE PTR 305[rbx], 0
	jne	.L152
.L136:
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	sub_802BE1C
	.p2align 4,,10
	.p2align 3
.L129:
	cmp	edx, 65024
	jle	.L130
	mov	DWORD PTR 8[rbx], 65024
	jmp	.L130
	.p2align 4,,10
	.p2align 3
.L137:
	mov	ecx, 1
.L148:
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	CreateGameOverScreen
	.p2align 4,,10
	.p2align 3
.L150:
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	cmp	BYTE PTR 5[rdx], 0
	jne	.L133
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	DWORD PTR 336[rbx], 1900544
	mov	DWORD PTR 36[rax], 128
	lea	rax, sub_802C8EC[rip]
	mov	QWORD PTR 40[rbx], rax
	mov	eax, -256
	mov	WORD PTR 368[rbx], ax
	xor	eax, eax
	mov	WORD PTR 356[rbx], ax
	xor	eax, eax
	mov	WORD PTR 364[rbx], ax
	movabs	rax, 1099511627776
	mov	QWORD PTR 20[rbx], rax
	mov	eax, 5376
	mov	DWORD PTR [rbx], 16
	mov	QWORD PTR 12[rbx], 60
	mov	WORD PTR 34[rbx], ax
	jmp	.L131
	.p2align 4,,10
	.p2align 3
.L134:
	call	ExtraBossIsDead
	cmp	eax, 1
	jne	.L131
	lea	rax, sub_802C8A0[rip]
	xor	edx, edx
	xor	ecx, ecx
	or	WORD PTR [rsi], 3
	mov	QWORD PTR 40[rbx], rax
	mov	r8d, 512
	mov	eax, -253
	mov	WORD PTR 368[rbx], ax
	mov	DWORD PTR 336[rbx], 31129600
	mov	WORD PTR 356[rbx], dx
	mov	WORD PTR 364[rbx], cx
	mov	QWORD PTR 16[rbx], 0
	mov	WORD PTR 34[rbx], r8w
	jmp	.L131
	.p2align 4,,10
	.p2align 3
.L151:
	xor	r10d, r10d
	xor	r11d, r11d
	mov	esi, 5376
	mov	ecx, 119
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	r9d, -256
	mov	DWORD PTR 336[rbx], 1900544
	mov	WORD PTR 368[rbx], r9w
	mov	DWORD PTR 36[rax], 128
	lea	rax, sub_802C8EC[rip]
	mov	QWORD PTR 40[rbx], rax
	movabs	rax, 1099511627776
	mov	DWORD PTR [rbx], 16
	mov	WORD PTR 356[rbx], r10w
	mov	WORD PTR 364[rbx], r11w
	mov	QWORD PTR 12[rbx], 60
	mov	QWORD PTR 20[rbx], rax
	mov	WORD PTR 34[rbx], si
	call	m4aSongNumStart
	jmp	.L131
	.seh_endproc
	.p2align 4
	.def	Task_802C7E8;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_802C7E8
Task_802C7E8:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	mov	rcx, rbx
	call	sub_802BCCC
	lea	rax, sub_802C8A0[rip]
	cmp	QWORD PTR 40[rbx], rax
	je	.L154
	mov	QWORD PTR 40[rbx], rax
.L154:
	mov	rcx, rbx
	call	sub_802C8A0
	test	BYTE PTR [rbx], 48
	jne	.L155
	mov	eax, DWORD PTR 8[rbx]
	cmp	eax, 12799
	jg	.L156
	mov	DWORD PTR 8[rbx], 12800
.L155:
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	sub_802BE1C
	.p2align 4,,10
	.p2align 3
.L156:
	cmp	eax, 65024
	jle	.L155
	mov	rcx, rbx
	mov	DWORD PTR 8[rbx], 65024
	add	rsp, 32
	pop	rbx
	jmp	sub_802BE1C
	.seh_endproc
	.p2align 4
	.globl	SuperSonicGetPos
	.def	SuperSonicGetPos;	.scl	2;	.type	32;	.endef
	.seh_proc	SuperSonicGetPos
SuperSonicGetPos:
	.seh_endprologue
	mov	rax, QWORD PTR sSuperSonicTask[rip]
	test	rax, rax
	je	.L158
	mov	rax, QWORD PTR 24[rax]
	mov	r8d, DWORD PTR 4[rax]
	mov	DWORD PTR [rcx], r8d
	mov	ecx, DWORD PTR 8[rax]
	mov	DWORD PTR [rdx], ecx
	mov	eax, DWORD PTR [rax]
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	lea	eax, 0[0+rax*8]
	and	eax, 128
	mov	DWORD PTR 36[rdx], eax
	ret
	.p2align 4,,10
	.p2align 3
.L158:
	mov	DWORD PTR [rcx], 0
	mov	eax, 128
	mov	DWORD PTR [rdx], 0
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	mov	DWORD PTR 36[rdx], eax
	ret
	.seh_endproc
	.p2align 4
	.globl	SuperSonicSetPos
	.def	SuperSonicSetPos;	.scl	2;	.type	32;	.endef
	.seh_proc	SuperSonicSetPos
SuperSonicSetPos:
	.seh_endprologue
	mov	rax, QWORD PTR sSuperSonicTask[rip]
	test	rax, rax
	je	.L160
	mov	rax, QWORD PTR 24[rax]
	test	BYTE PTR [rax], 16
	jne	.L160
	mov	DWORD PTR 4[rax], ecx
	mov	DWORD PTR 8[rax], edx
.L160:
	ret
	.seh_endproc
	.p2align 4
	.globl	SuperSonicGetFlags
	.def	SuperSonicGetFlags;	.scl	2;	.type	32;	.endef
	.seh_proc	SuperSonicGetFlags
SuperSonicGetFlags:
	.seh_endprologue
	mov	rdx, QWORD PTR sSuperSonicTask[rip]
	xor	eax, eax
	test	rdx, rdx
	je	.L165
	mov	rax, QWORD PTR 24[rdx]
	mov	eax, DWORD PTR [rax]
.L165:
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_802C704
	.def	sub_802C704;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_802C704
sub_802C704:
	.seh_endprologue
	mov	rax, QWORD PTR sSuperSonicTask[rip]
	test	rax, rax
	je	.L169
	mov	r9, QWORD PTR 24[rax]
	movzx	eax, BYTE PTR 304[r9]
	sub	eax, ecx
	and	eax, 31
	add	rax, 6
	mov	ecx, DWORD PTR [r9+rax*8]
	mov	DWORD PTR [rdx], ecx
	mov	eax, DWORD PTR 4[r9+rax*8]
	mov	DWORD PTR [r8], eax
.L169:
	ret
	.seh_endproc
	.p2align 4
	.globl	SuperSonicGetSprite
	.def	SuperSonicGetSprite;	.scl	2;	.type	32;	.endef
	.seh_proc	SuperSonicGetSprite
SuperSonicGetSprite:
	.seh_endprologue
	mov	rax, QWORD PTR sSuperSonicTask[rip]
	test	rax, rax
	je	.L174
	mov	rax, QWORD PTR 24[rax]
	add	rax, 320
.L174:
	ret
	.seh_endproc
	.p2align 4
	.globl	SuperSonicGetRotation
	.def	SuperSonicGetRotation;	.scl	2;	.type	32;	.endef
	.seh_proc	SuperSonicGetRotation
SuperSonicGetRotation:
	.seh_endprologue
	mov	rdx, QWORD PTR sSuperSonicTask[rip]
	xor	eax, eax
	test	rdx, rdx
	je	.L179
	mov	rax, QWORD PTR 24[rdx]
	movzx	eax, WORD PTR 24[rax]
	and	ax, 1023
.L179:
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_802C798
	.def	sub_802C798;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_802C798
sub_802C798:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR sSuperSonicTask[rip]
	mov	rbx, QWORD PTR 24[rax]
	call	ExtraBossIsDead
	cmp	eax, 1
	je	.L183
	mov	eax, DWORD PTR [rbx]
	test	al, 16
	jne	.L183
	lea	rdx, sub_802C92C[rip]
	and	eax, -12
	mov	DWORD PTR 12[rbx], 20
	mov	QWORD PTR 40[rbx], rdx
	or	eax, 640
	xor	edx, edx
	mov	WORD PTR 24[rbx], dx
	mov	DWORD PTR [rbx], eax
.L183:
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_802C9E0
	.def	sub_802C9E0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_802C9E0
sub_802C9E0:
	.seh_endprologue
	xor	eax, eax
	ret
	.seh_endproc
	.globl	gAnims_SuperSonic_080D69C8
	.section .rdata,"dr"
	.align 32
gAnims_SuperSonic_080D69C8:
	.long	0
	.word	475
	.byte	2
	.space 1
	.long	0
	.word	475
	.byte	1
	.space 1
	.long	0
	.word	475
	.byte	3
	.space 1
	.long	0
	.word	475
	.byte	0
	.space 1
	.long	0
	.word	475
	.byte	4
	.space 1
	.long	0
	.word	475
	.byte	5
	.space 1
	.long	0
	.word	475
	.byte	12
	.space 1
	.long	0
	.word	475
	.byte	13
	.space 1
	.long	0
	.word	475
	.byte	16
	.space 1
	.long	0
	.word	475
	.byte	17
	.space 1
	.long	0
	.word	475
	.byte	8
	.space 1
	.long	0
	.word	475
	.byte	9
	.space 1
	.long	0
	.word	475
	.byte	10
	.space 1
	.long	0
	.word	475
	.byte	11
	.space 1
	.long	0
	.word	475
	.byte	6
	.space 1
	.long	0
	.word	475
	.byte	7
	.space 1
	.long	0
	.word	475
	.byte	14
	.space 1
	.long	0
	.word	475
	.byte	15
	.space 1
	.long	0
	.word	475
	.byte	18
	.space 1
	.long	0
	.word	475
	.byte	19
	.space 1
	.long	0
	.word	476
	.byte	0
	.space 1
	.long	0
	.word	29
	.byte	0
	.space 1
	.long	0
	.word	475
	.byte	2
	.space 1
	.globl	sSuperSonicTask
	.bss
	.align 8
sSuperSonicTask:
	.space 8
	.ident	"GCC: (GNU) 13-win32"
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	TransformSprite;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	ExtraBossIsDead;	.scl	2;	.type	32;	.endef
	.def	TrueArea53BossMove;	.scl	2;	.type	32;	.endef
	.def	TasksDestroyInPriorityRange;	.scl	2;	.type	32;	.endef
	.def	GameStageStart;	.scl	2;	.type	32;	.endef
	.def	CreateGameOverScreen;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gNumLives, "dr"
	.globl	.refptr.gNumLives
	.linkonce	discard
.refptr.gNumLives:
	.quad	gNumLives
	.section	.rdata$.refptr.gVramGraphicsCopyQueueIndex, "dr"
	.globl	.refptr.gVramGraphicsCopyQueueIndex
	.linkonce	discard
.refptr.gVramGraphicsCopyQueueIndex:
	.quad	gVramGraphicsCopyQueueIndex
	.section	.rdata$.refptr.gVramGraphicsCopyCursor, "dr"
	.globl	.refptr.gVramGraphicsCopyCursor
	.linkonce	discard
.refptr.gVramGraphicsCopyCursor:
	.quad	gVramGraphicsCopyCursor
	.section	.rdata$.refptr.gBgSpritesCount, "dr"
	.globl	.refptr.gBgSpritesCount
	.linkonce	discard
.refptr.gBgSpritesCount:
	.quad	gBgSpritesCount
	.section	.rdata$.refptr.gBackgroundsCopyQueueIndex, "dr"
	.globl	.refptr.gBackgroundsCopyQueueIndex
	.linkonce	discard
.refptr.gBackgroundsCopyQueueIndex:
	.quad	gBackgroundsCopyQueueIndex
	.section	.rdata$.refptr.gBackgroundsCopyQueueCursor, "dr"
	.globl	.refptr.gBackgroundsCopyQueueCursor
	.linkonce	discard
.refptr.gBackgroundsCopyQueueCursor:
	.quad	gBackgroundsCopyQueueCursor
	.section	.rdata$.refptr.gLoadedSaveGame, "dr"
	.globl	.refptr.gLoadedSaveGame
	.linkonce	discard
.refptr.gLoadedSaveGame:
	.quad	gLoadedSaveGame
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
	.section	.rdata$.refptr.gBossRingsShallRespawn, "dr"
	.globl	.refptr.gBossRingsShallRespawn
	.linkonce	discard
.refptr.gBossRingsShallRespawn:
	.quad	gBossRingsShallRespawn
	.section	.rdata$.refptr.gUnknown_080D661C, "dr"
	.globl	.refptr.gUnknown_080D661C
	.linkonce	discard
.refptr.gUnknown_080D661C:
	.quad	gUnknown_080D661C
	.section	.rdata$.refptr.gUnknown_080D650C, "dr"
	.globl	.refptr.gUnknown_080D650C
	.linkonce	discard
.refptr.gUnknown_080D650C:
	.quad	gUnknown_080D650C
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
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
	.section	.rdata$.refptr.gOamMatrixIndex, "dr"
	.globl	.refptr.gOamMatrixIndex
	.linkonce	discard
.refptr.gOamMatrixIndex:
	.quad	gOamMatrixIndex
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
	.section	.rdata$.refptr.gPseudoRandom, "dr"
	.globl	.refptr.gPseudoRandom
	.linkonce	discard
.refptr.gPseudoRandom:
	.quad	gPseudoRandom
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
	.section	.rdata$.refptr.gPressedKeys, "dr"
	.globl	.refptr.gPressedKeys
	.linkonce	discard
.refptr.gPressedKeys:
	.quad	gPressedKeys
	.section	.rdata$.refptr.gInput, "dr"
	.globl	.refptr.gInput
	.linkonce	discard
.refptr.gInput:
	.quad	gInput
