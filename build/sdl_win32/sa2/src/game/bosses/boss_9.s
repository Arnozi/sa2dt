	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	sub_8050DC4
	.def	sub_8050DC4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8050DC4
sub_8050DC4:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8050DC8
	.def	sub_8050DC8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8050DC8
sub_8050DC8:
	.seh_endprologue
	mov	eax, 180
	mov	edx, 718
	mov	r8d, -256
	mov	DWORD PTR 12[rcx], 60
	mov	WORD PTR 10[rcx], ax
	mov	WORD PTR 34[rcx], dx
	mov	WORD PTR 64[rcx], r8w
	mov	DWORD PTR 48[rcx], 4096
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_804DD9C
	.def	sub_804DD9C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804DD9C
sub_804DD9C:
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
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	xor	ebx, ebx
	mov	rsi, rcx
	lea	rbp, 80[rcx]
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L5:
	add	rbx, 1
	add	rbp, 64
	cmp	rbx, 5
	je	.L11
.L6:
	movzx	eax, BYTE PTR 8[rsi+rbx]
	test	al, al
	je	.L5
	sub	eax, 1
	mov	rcx, rbp
	mov	BYTE PTR 8[rsi+rbx], al
	movd	xmm0, DWORD PTR 14[rsi+rbx*4]
	movsx	eax, WORD PTR 14[rsi+rbx*4]
	mov	edx, DWORD PTR 36[rsi+rbx*8]
	movdqu	xmm1, xmm0
	psraw	xmm1, 4
	lea	edx, 1280[rdx+rax]
	pextrw	eax, xmm0, 1
	psubw	xmm0, xmm1
	cwde
	add	eax, DWORD PTR 40[rsi+rbx*8]
	mov	DWORD PTR 36[rsi+rbx*8], edx
	mov	DWORD PTR 40[rsi+rbx*8], eax
	sar	edx, 8
	sar	eax, 8
	sub	dx, WORD PTR [rdi]
	sub	ax, WORD PTR 4[rdi]
	movd	DWORD PTR 14[rsi+rbx*4], xmm0
	add	rbx, 1
	mov	WORD PTR 38[rbp], dx
	mov	WORD PTR 40[rbp], ax
	call	UpdateSpriteAnimation
	mov	rcx, rbp
	add	rbp, 64
	call	DisplaySprite
	cmp	rbx, 5
	jne	.L6
.L11:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_804DFB0
	.def	sub_804DFB0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804DFB0
sub_804DFB0:
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
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	xor	ebx, ebx
	mov	rsi, rcx
	lea	rbp, 152[rcx]
	xor	ecx, ecx
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L15:
	mov	rcx, rbp
	call	DisplaySprite
	mov	ecx, 1
.L13:
	add	rbx, 1
	cmp	rbx, 10
	je	.L18
.L16:
	cmp	BYTE PTR 8[rsi+rbx], 0
	je	.L13
	sub	BYTE PTR 18[rsi+rbx], 1
	jne	.L14
	mov	BYTE PTR 8[rsi+rbx], 0
.L14:
	movzx	eax, WORD PTR 30[rsi+rbx*4]
	movsx	r8d, WORD PTR 28[rsi+rbx*4]
	mov	edx, DWORD PTR 68[rsi+rbx*8]
	add	eax, 32
	mov	WORD PTR 30[rsi+rbx*4], ax
	lea	edx, 1280[r8+rdx]
	cwde
	add	eax, DWORD PTR 72[rsi+rbx*8]
	mov	DWORD PTR 68[rsi+rbx*8], edx
	sar	edx, 8
	mov	DWORD PTR 72[rsi+rbx*8], eax
	sar	eax, 8
	sub	dx, WORD PTR [rdi]
	sub	ax, WORD PTR 4[rdi]
	mov	WORD PTR 190[rsi], dx
	mov	WORD PTR 192[rsi], ax
	test	ecx, ecx
	jne	.L15
	mov	rcx, rbp
	call	UpdateSpriteAnimation
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L18:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_804F108
	.def	sub_804F108;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804F108
sub_804F108:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	cmp	BYTE PTR 12[rax], 0
	jne	.L21
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L21:
	movsx	r8d, WORD PTR 72[rax]
	movsx	edx, WORD PTR 74[rax]
	lea	rbx, 16[rcx]
	mov	r9d, DWORD PTR 164[rax]
	mov	r10, QWORD PTR .refptr.gSineTable[rip]
	sal	r8d, 8
	sal	edx, 8
	add	r8d, DWORD PTR 76[rax]
	add	edx, DWORD PTR 80[rax]
	movzx	eax, WORD PTR 154[rax]
	sar	r9d, 8
	lea	eax, 768[rax+r9]
	mov	r11d, eax
	add	ax, 768
	and	r11d, 1023
	lea	r9d, 256[r11]
	movsx	r9, r9d
	movsx	r9d, WORD PTR [r10+r9*2]
	lea	r9d, [r9+r9*8]
	sar	r9d, 6
	add	r9d, r8d
	movsx	r8d, WORD PTR [r10+r11*2]
	lea	r8d, [r8+r8*8]
	sar	r8d, 6
	add	r8d, edx
	mov	rdx, rax
	and	eax, 1023
	movsx	eax, WORD PTR 512[r10+rax*2]
	and	edx, 1023
	movsx	edx, WORD PTR [r10+rdx*2]
	imul	eax, eax, 38
	imul	edx, edx, 38
	sar	eax, 6
	sar	edx, 6
	add	eax, r9d
	add	edx, r8d
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	sar	eax, 8
	sar	edx, 8
	sub	ax, WORD PTR [r8]
	sub	eax, 6
	mov	WORD PTR 54[rcx], ax
	mov	eax, 5
	sub	ax, WORD PTR 4[r8]
	add	edx, eax
	mov	WORD PTR 56[rcx], dx
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	sub_804F6AC
	.def	sub_804F6AC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804F6AC
sub_804F6AC:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	r10d, edx
	mov	rdx, QWORD PTR 24[rax]
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L24:
	cmp	BYTE PTR 2054[rdx+rax], 0
	je	.L26
	add	rax, 1
	cmp	rax, 16
	jne	.L24
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L26:
	and	r9d, 1023
	mov	rbx, QWORD PTR .refptr.gSineTable[rip]
	movsx	r8d, r8w
	cdqe
	lea	r11d, 256[r9]
	mov	BYTE PTR 2054[rdx+rax], 1
	movsx	r11, r11d
	movsx	r9d, WORD PTR [rbx+r9*2]
	mov	BYTE PTR 2070[rdx+rax], -1
	movsx	r11d, WORD PTR [rbx+r11*2]
	imul	r11d, r8d
	imul	r8d, r9d
	sar	r11d, 14
	mov	WORD PTR 2086[rdx+rax*4], r11w
	sar	r8d, 14
	mov	WORD PTR 2088[rdx+rax*4], r8w
	add	rax, 14
	mov	DWORD PTR 2040[rdx+rax*8], ecx
	mov	ecx, 297
	mov	DWORD PTR 2044[rdx+rax*8], r10d
	pop	rbx
	jmp	m4aSongNumStart
	.seh_endproc
	.p2align 4
	.globl	sub_804F768
	.def	sub_804F768;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804F768
sub_804F768:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	r9d, edx
	mov	r10d, ecx
	mov	rdx, QWORD PTR 24[rax]
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L31:
	cmp	BYTE PTR 2054[rdx+rax], 0
	je	.L33
	add	rax, 1
	cmp	rax, 16
	jne	.L31
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L33:
	movzx	r11d, al
	movzx	ecx, WORD PTR 2052[rdx]
	lea	r11d, [r11+r11*4]
	test	al, 1
	je	.L29
	lea	ecx, [rcx+r11*2]
.L30:
	and	ecx, 1023
	mov	rbx, QWORD PTR .refptr.gSineTable[rip]
	movsx	r8d, r8w
	cdqe
	lea	r11d, 256[rcx]
	mov	BYTE PTR 2054[rdx+rax], 1
	movsx	r11, r11d
	movsx	ecx, WORD PTR [rbx+rcx*2]
	mov	BYTE PTR 2070[rdx+rax], -1
	movsx	r11d, WORD PTR [rbx+r11*2]
	imul	ecx, r8d
	imul	r11d, r8d
	sar	ecx, 14
	sar	r11d, 14
	mov	WORD PTR 2088[rdx+rax*4], cx
	mov	ecx, 243
	mov	WORD PTR 2086[rdx+rax*4], r11w
	add	rax, 14
	mov	DWORD PTR 2040[rdx+rax*8], r10d
	mov	DWORD PTR 2044[rdx+rax*8], r9d
	pop	rbx
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L29:
	add	r11d, r11d
	sub	ecx, r11d
	jmp	.L30
	.seh_endproc
	.p2align 4
	.globl	sub_804F850
	.def	sub_804F850;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804F850
sub_804F850:
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
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	lea	r11, 8[rsp]
	mov	esi, ecx
	mov	edi, edx
	xor	ecx, ecx
	mov	rdx, QWORD PTR 24[rax]
	mov	r8, r11
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L37:
	cmp	BYTE PTR 2054[rdx+rax], 0
	jne	.L35
	add	ecx, 1
	mov	BYTE PTR [r8], al
	lea	r10, 1[r8]
	cmp	cl, 8
	je	.L36
	mov	r8, r10
.L35:
	add	rax, 1
	cmp	rax, 16
	jne	.L37
	cmp	cl, 8
	je	.L36
	add	rsp, 24
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L36:
	cmp	BYTE PTR 15[rsp], 7
	lea	eax, -60[r9]
	jbe	.L47
.L40:
	and	ax, 1023
	mov	rbx, QWORD PTR .refptr.gSineTable[rip]
	mov	r9, r11
	lea	ecx, 256[rax]
	and	eax, 1023
	and	ecx, 2047
	movsx	eax, WORD PTR [rbx+rax*2]
	movzx	r13d, WORD PTR [rbx]
	lea	r8, 512[rbx]
	movsx	ecx, WORD PTR [rbx+rcx*2]
	movzx	r10d, WORD PTR 256[rbx]
	add	rbx, 2560
	lea	ebp, [rax+rax*2]
	lea	r12d, [rcx+rcx*2]
	sar	ebp, 6
	sar	r12d, 6
	.p2align 4,,10
	.p2align 3
.L41:
	movzx	eax, BYTE PTR [r9]
	mov	r11d, r10d
	add	r8, 256
	add	r9, 1
	mov	BYTE PTR 2054[rdx+rax], 1
	mov	BYTE PTR 2070[rdx+rax], -1
	movsx	ecx, WORD PTR -256[r8]
	mov	r10d, ecx
	lea	ecx, [rcx+rcx*2]
	sar	ecx, 8
	add	ecx, r12d
	mov	WORD PTR 2086[rdx+rax*4], cx
	movsx	ecx, r13w
	mov	r13d, r11d
	lea	ecx, [rcx+rcx*2]
	sar	ecx, 8
	add	ecx, ebp
	mov	WORD PTR 2088[rdx+rax*4], cx
	add	rax, 14
	mov	DWORD PTR 2040[rdx+rax*8], esi
	mov	DWORD PTR 2044[rdx+rax*8], edi
	cmp	r8, rbx
	jne	.L41
	mov	ecx, 258
	add	rsp, 24
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L47:
	lea	eax, 60[r9]
	jmp	.L40
	.seh_endproc
	.p2align 4
	.globl	sub_804F9BC
	.def	sub_804F9BC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804F9BC
sub_804F9BC:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	r8d, edx
	mov	r9d, ecx
	mov	rdx, QWORD PTR 24[rax]
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L52:
	cmp	BYTE PTR 2054[rdx+rax], 0
	je	.L54
	add	rax, 1
	cmp	rax, 16
	jne	.L52
	ret
	.p2align 4,,10
	.p2align 3
.L54:
	movzx	r10d, al
	movzx	ecx, WORD PTR 2052[rdx]
	lea	r10d, [r10+r10*2]
	test	al, 1
	je	.L50
	lea	ecx, [rcx+r10*2]
.L51:
	and	ecx, 1023
	mov	r11, QWORD PTR .refptr.gSineTable[rip]
	cdqe
	lea	r10d, 256[rcx]
	mov	BYTE PTR 2054[rdx+rax], 1
	movsx	r10, r10d
	movsx	ecx, WORD PTR [r11+rcx*2]
	mov	BYTE PTR 2070[rdx+rax], -1
	movsx	r10d, WORD PTR [r11+r10*2]
	lea	ecx, [rcx+rcx*8]
	lea	r10d, [r10+r10*8]
	sar	ecx, 7
	sar	r10d, 7
	mov	WORD PTR 2088[rdx+rax*4], cx
	mov	ecx, 277
	mov	WORD PTR 2086[rdx+rax*4], r10w
	add	rax, 14
	mov	DWORD PTR 2040[rdx+rax*8], r9d
	mov	DWORD PTR 2044[rdx+rax*8], r8d
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L50:
	add	r10d, r10d
	sub	ecx, r10d
	jmp	.L51
	.seh_endproc
	.p2align 4
	.globl	sub_804FAA4
	.def	sub_804FAA4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804FAA4
sub_804FAA4:
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
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	lea	rdi, 8[rsp]
	mov	ebx, ecx
	mov	esi, edx
	xor	ecx, ecx
	mov	rdx, QWORD PTR 24[rax]
	mov	r8, rdi
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L58:
	cmp	BYTE PTR 2054[rdx+rax], 0
	jne	.L56
	add	ecx, 1
	mov	BYTE PTR [r8], al
	lea	r10, 1[r8]
	cmp	cl, 8
	je	.L57
	mov	r8, r10
.L56:
	add	rax, 1
	cmp	rax, 16
	jne	.L58
	cmp	cl, 8
	je	.L57
	add	rsp, 16
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
.L57:
	and	r9w, 1023
	cmp	BYTE PTR 15[rsp], 7
	lea	ebp, -70[r9]
	jbe	.L70
.L61:
	and	bp, 1023
	mov	r11, QWORD PTR .refptr.gSineTable[rip]
	mov	r9d, -192
	xor	r8d, r8d
	lea	r10d, 64[rbp]
	mov	r12d, 640
	lea	ebp, 64[rbp+rbp]
	jmp	.L63
	.p2align 4,,10
	.p2align 3
.L72:
	mov	ecx, ebp
	lea	r13d, 192[r9]
	sub	ecx, r10d
.L62:
	movzx	r13d, r13w
	mov	r14d, r12d
	add	r8, 1
	sub	r10d, 16
	and	ecx, 1023
	sub	r14d, r13d
	add	r9d, 48
	lea	r13d, 256[rcx]
	movsx	ecx, WORD PTR [r11+rcx*2]
	movsx	r13, r13d
	movsx	r13d, WORD PTR [r11+r13*2]
	imul	ecx, r14d
	imul	r13d, r14d
	sar	ecx, 14
	mov	WORD PTR 2088[rdx+rax*4], cx
	sar	r13d, 14
	mov	WORD PTR 2086[rdx+rax*4], r13w
	add	rax, 14
	mov	DWORD PTR 2040[rdx+rax*8], ebx
	mov	DWORD PTR 2044[rdx+rax*8], esi
	cmp	r8, 8
	je	.L71
.L63:
	movzx	eax, BYTE PTR [rdi+r8]
	mov	BYTE PTR 2054[rdx+rax], 1
	mov	BYTE PTR 2070[rdx+rax], -1
	cmp	r8, 3
	jbe	.L72
	mov	r13d, r9d
	mov	ecx, r10d
	jmp	.L62
	.p2align 4,,10
	.p2align 3
.L71:
	mov	ecx, 258
	add	rsp, 16
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L70:
	lea	ebp, 70[r9]
	jmp	.L61
	.seh_endproc
	.p2align 4
	.globl	sub_804FC10
	.def	sub_804FC10;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804FC10
sub_804FC10:
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
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r14d, 2
	mov	rax, QWORD PTR [rax]
	mov	edi, edx
	mov	rdx, QWORD PTR 24[rax]
	mov	ebp, ecx
	lea	r13, 8[rsp]
	lea	r15d, -40[r9]
	lea	r12, 16[rsp]
.L74:
	xor	eax, eax
	xor	ecx, ecx
	mov	r8, r13
	.p2align 4,,10
	.p2align 3
.L84:
	cmp	BYTE PTR 2054[rdx+rax], 0
	jne	.L75
.L91:
	add	ecx, 1
	mov	BYTE PTR [r8], al
	lea	r10, 1[r8]
	cmp	cl, 8
	je	.L76
	add	rax, 1
	cmp	rax, 16
	je	.L73
	cmp	BYTE PTR 2054[rdx+rax], 0
	mov	r8, r10
	je	.L91
.L75:
	add	rax, 1
	cmp	rax, 16
	jne	.L84
	cmp	cl, 8
	jne	.L73
.L76:
	cmp	BYTE PTR 15[rsp], 7
	mov	eax, r15d
	ja	.L81
	lea	eax, 40[r9]
.L81:
	and	eax, 1023
	mov	rbx, QWORD PTR .refptr.gSineTable[rip]
	lea	ecx, 256[rax]
	movsx	rcx, ecx
	movsx	r8d, WORD PTR [rbx+rax*2]
	movsx	r10d, WORD PTR [rbx+rcx*2]
	mov	rcx, r13
	mov	r11d, r8d
	sal	r8d, 10
	mov	ebx, r10d
	neg	r11d
	sal	r10d, 10
	neg	ebx
	sal	r11d, 6
	sal	ebx, 6
	.p2align 4,,10
	.p2align 3
.L82:
	movzx	eax, BYTE PTR [rcx]
	mov	esi, r10d
	add	rcx, 1
	add	r10d, ebx
	sar	esi, 14
	mov	BYTE PTR 2054[rdx+rax], 1
	mov	BYTE PTR 2070[rdx+rax], -1
	mov	WORD PTR 2086[rdx+rax*4], si
	mov	esi, r8d
	add	r8d, r11d
	sar	esi, 14
	mov	WORD PTR 2088[rdx+rax*4], si
	add	rax, 14
	mov	DWORD PTR 2040[rdx+rax*8], ebp
	mov	DWORD PTR 2044[rdx+rax*8], edi
	cmp	r12, rcx
	jne	.L82
	cmp	r14b, 1
	je	.L83
	mov	r14d, 1
	jmp	.L74
	.p2align 4,,10
	.p2align 3
.L83:
	mov	ecx, 156
	add	rsp, 24
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	m4aSongNumStart
.L73:
	add	rsp, 24
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_804FD58
	.def	sub_804FD58;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804FD58
sub_804FD58:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	r8d, ecx
	mov	r9d, edx
	mov	rcx, QWORD PTR 24[rax]
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L94:
	cmp	BYTE PTR 2054[rcx+rax], 0
	je	.L96
	add	rax, 1
	cmp	rax, 16
	jne	.L94
	ret
	.p2align 4,,10
	.p2align 3
.L96:
	cdqe
	lea	rdx, gUnknown_080D8EE0[rip]
	mov	r11, QWORD PTR .refptr.gSineTable[rip]
	movzx	edx, BYTE PTR [rdx+rax]
	sub	edx, 2
	sal	edx, 5
	add	dx, WORD PTR 2052[rcx]
	mov	BYTE PTR 2054[rcx+rax], 1
	and	edx, 1023
	mov	BYTE PTR 2070[rcx+rax], -1
	lea	r10d, 256[rdx]
	movsx	edx, WORD PTR [r11+rdx*2]
	movsx	r10, r10d
	movsx	r10d, WORD PTR [r11+r10*2]
	lea	edx, [rdx+rdx*2]
	sar	edx, 6
	lea	r10d, [r10+r10*2]
	mov	WORD PTR 2088[rcx+rax*4], dx
	sar	r10d, 6
	mov	WORD PTR 2086[rcx+rax*4], r10w
	add	rax, 14
	mov	DWORD PTR 2040[rcx+rax*8], r8d
	mov	DWORD PTR 2044[rcx+rax*8], r9d
	mov	ecx, 287
	jmp	m4aSongNumStart
	.seh_endproc
	.p2align 4
	.globl	TaskDestructor_TrueArea53BossGfx
	.def	TaskDestructor_TrueArea53BossGfx;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_TrueArea53BossGfx
TaskDestructor_TrueArea53BossGfx:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rsi, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 2432[rsi]
	test	rcx, rcx
	je	.L98
	call	VramFree
.L98:
	lea	rbx, 2512[rsi]
	lea	rdi, 2864[rsi]
.L100:
	mov	rcx, QWORD PTR [rbx]
	test	rcx, rcx
	je	.L99
	call	VramFree
.L99:
	add	rbx, 88
	cmp	rbx, rdi
	jne	.L100
	mov	rcx, QWORD PTR 248[rsi]
	call	VramFree
	mov	rcx, QWORD PTR 760[rsi]
	call	VramFree
	mov	rcx, QWORD PTR 1272[rsi]
	call	VramFree
	mov	rcx, QWORD PTR 400[rsi]
	call	VramFree
	mov	rcx, QWORD PTR 1760[rsi]
	call	VramFree
	mov	rcx, QWORD PTR 1976[rsi]
	call	VramFree
	mov	rcx, QWORD PTR 2360[rsi]
	call	VramFree
	mov	rcx, QWORD PTR 2288[rsi]
	call	VramFree
	mov	rax, QWORD PTR .refptr.gActiveBossTask[rip]
	mov	QWORD PTR [rax], 0
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_804EC6C
	.def	sub_804EC6C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804EC6C
sub_804EC6C:
	.seh_endprologue
	sub	WORD PTR 12[rcx], 1
	jne	.L109
	mov	BYTE PTR 8[rcx], 0
	ret
	.p2align 4,,10
	.p2align 3
.L109:
	movd	xmm0, DWORD PTR 18[rcx]
	movd	xmm1, DWORD PTR .LC1[rip]
	pmulhw	xmm1, xmm0
	movdqu	xmm2, xmm0
	psraw	xmm2, 15
	psraw	xmm1, 4
	psubw	xmm1, xmm2
	psubw	xmm0, xmm1
	pextrw	edx, xmm0, 1
	pextrw	eax, xmm0, 0
	movd	DWORD PTR 18[rcx], xmm0
	movsx	edx, dx
	add	DWORD PTR 28[rcx], edx
	cwde
	add	eax, DWORD PTR 24[rcx]
	add	eax, 1280
	mov	DWORD PTR 24[rcx], eax
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_804DC60
	.def	Task_804DC60;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_804DC60
Task_804DC60:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[rax]
	sub	WORD PTR 18[rdx], 1
	je	.L113
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L113:
	xor	ecx, ecx
	mov	edx, 65535
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
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	or	WORD PTR [rax], 1024
	call	CreateStageUI
	mov	rax, QWORD PTR .refptr.gRingCount[rip]
	movzx	edx, WORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gCourseTime[rip]
	mov	ecx, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gSpecialRingCount[rip]
	movzx	r8d, BYTE PTR [rax]
	call	CreateStageResults
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	mov	edx, 16319
	mov	WORD PTR [rax], dx
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.def	sub_80508C4.part.0;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_80508C4.part.0
sub_80508C4.part.0:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	r8, QWORD PTR .refptr.gBldRegs[rip]
	or	WORD PTR [rax], -32768
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	or	DWORD PTR 2456[rcx], 256
	mov	DWORD PTR 20[rax], 14133
	mov	eax, 4934
	mov	WORD PTR [r8], ax
	movzx	edx, dx
	lea	eax, [rdx+rdx*2]
	lea	edx, [rdx+rdx*4]
	sar	eax, 8
	sar	edx, 8
	add	eax, 10
	add	edx, 8
	and	eax, 15
	and	edx, 15
	sal	eax, 8
	or	eax, edx
	mov	WORD PTR 2[r8], ax
	mov	WORD PTR 4[r8], ax
	lea	rax, 2536[rcx]
	add	rcx, 2888
.L115:
	or	DWORD PTR [rax], 256
	add	rax, 88
	cmp	rcx, rax
	jne	.L115
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateTrueArea53Boss
	.def	CreateTrueArea53Boss;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateTrueArea53Boss
CreateTrueArea53Boss:
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
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	mov	rbx, QWORD PTR .refptr.gActiveBossTask[rip]
	or	WORD PTR [rax], 32
	mov	rax, QWORD PTR [rbx]
	test	rax, rax
	je	.L129
.L118:
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .LC2[rip]
	movdqu	xmm0, XMMWORD PTR .LC4[rip]
	mov	QWORD PTR [rbx], rax
	movabs	rax, 51539607743
	mov	QWORD PTR 8[rbx], rax
	lea	rax, sub_8050DC8[rip]
	mov	QWORD PTR 1736[rbx], rax
	mov	eax, 200
	mov	WORD PTR 1746[rbx], ax
	lea	rax, sub_8050BD8[rip]
	mov	QWORD PTR 32[rbx], rax
	lea	rax, gUnknown_080D8D3C[rip]
	mov	QWORD PTR 64[rbx], rax
	mov	rax, QWORD PTR .LC3[rip]
	movups	XMMWORD PTR 40[rbx], xmm0
	movdqu	xmm0, XMMWORD PTR .LC5[rip]
	mov	QWORD PTR 76[rbx], rax
	lea	rax, sub_804E4CC[rip]
	mov	QWORD PTR 88[rbx], rax
	lea	rax, gUnknown_080D8BFC[rip]
	mov	QWORD PTR 144[rbx], rax
	xor	eax, eax
	mov	WORD PTR 152[rbx], ax
	mov	rax, QWORD PTR .LC7[rip]
	movups	XMMWORD PTR 96[rbx], xmm0
	movdqu	xmm0, XMMWORD PTR .LC6[rip]
	mov	QWORD PTR 16[rbx], 5242881
	mov	DWORD PTR 24[rbx], 0
	mov	BYTE PTR 1744[rbx], 0
	mov	DWORD PTR 72[rbx], 0
	mov	QWORD PTR 56[rbx], 2621480
	mov	BYTE PTR 172[rbx], 1
	mov	QWORD PTR 164[rbx], 0
	mov	QWORD PTR 136[rbx], 2621480
	mov	DWORD PTR 1840[rbx], 0
	mov	QWORD PTR 128[rbx], rax
	lea	rax, sub_804DFB0[rip]
	movups	XMMWORD PTR 112[rbx], xmm0
	pxor	xmm0, xmm0
	mov	QWORD PTR 1816[rbx], rax
	xor	eax, eax
	movups	XMMWORD PTR 1824[rbx], xmm0
	.p2align 4,,10
	.p2align 3
.L119:
	mov	QWORD PTR 1844[rbx+rax], 0
	mov	QWORD PTR 1884[rbx+rax*2], 0
	mov	QWORD PTR 1892[rbx+rax*2], 0
	add	rax, 8
	cmp	rax, 40
	jne	.L119
	lea	rax, sub_804F768[rip]
	mov	edx, DWORD PTR .LC8[rip]
	lea	rcx, sub_804FF9C[rip]
	pxor	xmm1, xmm1
	movq	xmm2, rax
	movq	xmm0, rcx
	xor	eax, eax
	punpcklqdq	xmm0, xmm2
	mov	DWORD PTR 2048[rbx], edx
	movups	XMMWORD PTR 2032[rbx], xmm0
	pxor	xmm0, xmm0
	movups	XMMWORD PTR 2054[rbx], xmm0
	movups	XMMWORD PTR 2070[rbx], xmm0
	pxor	xmm0, xmm0
.L120:
	movups	XMMWORD PTR 2086[rbx+rax], xmm1
	movups	XMMWORD PTR 2152[rbx+rax*2], xmm0
	movups	XMMWORD PTR 2168[rbx+rax*2], xmm0
	add	rax, 16
	cmp	rax, 64
	jne	.L120
	lea	rax, sub_804E66C[rip]
	mov	ecx, 32
	mov	rsi, rbx
	xor	r15d, r15d
	mov	QWORD PTR 176[rbx], rax
	lea	r12, sub_804DD9C[rip]
	mov	DWORD PTR 184[rbx], edx
	mov	QWORD PTR 188[rbx], 0
	call	VramMalloc
	movzx	r13d, WORD PTR .LC9[rip]
	movd	xmm6, DWORD PTR .LC10[rip]
	movzx	ebp, WORD PTR .LC0[rip]
	mov	r14d, DWORD PTR .LC11[rip]
	mov	rdi, rax
.L122:
	xor	r10d, r10d
	mov	ecx, 16
	mov	BYTE PTR 208[rsi], 0
	mov	WORD PTR 214[rsi], r10w
	mov	DWORD PTR 218[rsi], 0
	mov	QWORD PTR 224[rsi], 0
	mov	DWORD PTR 278[rsi], 0
	call	VramMalloc
	mov	r11d, 1088
	xor	edx, edx
	mov	WORD PTR 288[rsi], r13w
	mov	QWORD PTR 248[rsi], rax
	xor	eax, eax
	mov	WORD PTR 282[rsi], r11w
	mov	BYTE PTR 290[rsi], 16
	mov	BYTE PTR 293[rsi], 6
	mov	DWORD PTR 296[rsi], -1
	mov	DWORD PTR 272[rsi], 8192
	mov	QWORD PTR 312[rsi], r12
	mov	DWORD PTR 320[rsi], 0
	mov	BYTE PTR 324[rsi], 0
	mov	WORD PTR 276[rsi], ax
	xor	eax, eax
	mov	WORD PTR 284[rsi], ax
	mov	rax, rsi
	movd	DWORD PTR 256[rsi], xmm6
	.p2align 4,,10
	.p2align 3
.L121:
	mov	ecx, 1024
	xor	r8d, r8d
	xor	r9d, r9d
	add	rax, 64
	mov	DWORD PTR 326[rsi+rdx*4], 0
	mov	QWORD PTR 348[rsi+rdx*8], 0
	add	rdx, 1
	mov	DWORD PTR 366[rax], 0
	mov	QWORD PTR 336[rax], rdi
	mov	WORD PTR 376[rax], bp
	mov	WORD PTR 370[rax], cx
	mov	DWORD PTR 344[rax], r14d
	mov	WORD PTR 364[rax], r8w
	mov	WORD PTR 372[rax], r9w
	mov	BYTE PTR 378[rax], 16
	mov	BYTE PTR 381[rax], 6
	mov	DWORD PTR 384[rax], -1
	mov	DWORD PTR 360[rax], 8192
	cmp	rdx, 5
	jne	.L121
	add	r15d, 1
	add	rsi, 512
	cmp	r15d, 3
	jne	.L122
	mov	ecx, 90
	xor	r14d, r14d
	mov	DWORD PTR 2462[rbx], 0
	lea	rsi, 2512[rbx]
	lea	rdi, gUnknown_080D88F0[rip]
	mov	r12d, 1280
	call	VramMalloc
	mov	WORD PTR 2472[rbx], bp
	mov	QWORD PTR 2432[rbx], rax
	mov	DWORD PTR 2440[rbx], 46399488
	mov	WORD PTR 2460[rbx], r14w
	mov	DWORD PTR 2466[rbx], 1216
	mov	BYTE PTR 2474[rbx], 16
	mov	BYTE PTR 2477[rbx], 0
	mov	DWORD PTR 2480[rbx], -1
	mov	DWORD PTR 2456[rbx], 8192
.L123:
	mov	DWORD PTR 30[rsi], 0
	mov	ecx, DWORD PTR [rdi]
	xor	r13d, r13d
	add	rsi, 88
	add	rdi, 8
	call	VramMalloc
	xor	r10d, r10d
	xor	r11d, r11d
	mov	QWORD PTR -88[rsi], rax
	movzx	eax, WORD PTR -4[rdi]
	mov	WORD PTR -78[rsi], ax
	movzx	eax, BYTE PTR -2[rdi]
	mov	WORD PTR -54[rsi], r12w
	add	r12d, 64
	mov	BYTE PTR -48[rsi], al
	mov	BYTE PTR -47[rsi], -1
	mov	WORD PTR -80[rsi], r10w
	mov	WORD PTR -60[rsi], r11w
	mov	WORD PTR -52[rsi], r13w
	mov	BYTE PTR -46[rsi], 16
	mov	BYTE PTR -43[rsi], 0
	mov	DWORD PTR -40[rsi], -1
	mov	DWORD PTR -64[rsi], 8448
	cmp	r12w, 1536
	jne	.L123
	mov	DWORD PTR 1790[rbx], 0
	mov	ecx, 16
	call	VramMalloc
	mov	WORD PTR 1800[rbx], bp
	mov	ecx, 4
	mov	QWORD PTR 1760[rbx], rax
	xor	eax, eax
	mov	DWORD PTR 1768[rbx], 47054848
	mov	WORD PTR 1788[rbx], ax
	mov	DWORD PTR 1794[rbx], 1344
	mov	BYTE PTR 1802[rbx], 16
	mov	BYTE PTR 1805[rbx], 0
	mov	DWORD PTR 1808[rbx], -1
	mov	DWORD PTR 1784[rbx], 8192
	mov	DWORD PTR 2006[rbx], 0
	call	VramMalloc
	mov	edx, -248
	xor	ecx, ecx
	mov	DWORD PTR 1984[rbx], 73859072
	mov	WORD PTR 2016[rbx], dx
	mov	WORD PTR 2004[rbx], cx
	mov	ecx, 9
	mov	QWORD PTR 1976[rbx], rax
	mov	DWORD PTR 2010[rbx], 384
	mov	BYTE PTR 2018[rbx], 16
	mov	BYTE PTR 2021[rbx], 0
	mov	DWORD PTR 2024[rbx], -1
	mov	DWORD PTR 2000[rbx], 4096
	mov	DWORD PTR 2318[rbx], 0
	call	VramMalloc
	xor	r8d, r8d
	mov	WORD PTR 2328[rbx], bp
	mov	ecx, 4
	mov	QWORD PTR 2288[rbx], rax
	mov	DWORD PTR 2296[rbx], 46989312
	mov	WORD PTR 2316[rbx], r8w
	mov	DWORD PTR 2322[rbx], 448
	mov	BYTE PTR 2330[rbx], 16
	mov	BYTE PTR 2333[rbx], 0
	mov	DWORD PTR 2336[rbx], -1
	mov	DWORD PTR 2312[rbx], 4096
	mov	DWORD PTR 2390[rbx], 0
	call	VramMalloc
	xor	r9d, r9d
	mov	WORD PTR 2400[rbx], bp
	mov	QWORD PTR 2360[rbx], rax
	mov	DWORD PTR 2368[rbx], 47120384
	mov	WORD PTR 2388[rbx], r9w
	mov	DWORD PTR 2394[rbx], 448
	mov	BYTE PTR 2402[rbx], 16
	mov	BYTE PTR 2405[rbx], 0
	mov	DWORD PTR 2408[rbx], -1
	mov	DWORD PTR 2384[rbx], 4096
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
.L129:
	lea	rax, TaskDestructor_TrueArea53BossGfx[rip]
	xor	r9d, r9d
	mov	r8d, 16384
	mov	edx, 2952
	mov	QWORD PTR 32[rsp], rax
	lea	rcx, Task_TrueArea53BossMain[rip]
	call	TaskCreate
	mov	QWORD PTR [rbx], rax
	jmp	.L118
	.seh_endproc
	.p2align 4
	.globl	SetupEggmanKidnapsVanillaTask
	.def	SetupEggmanKidnapsVanillaTask;	.scl	2;	.type	32;	.endef
	.seh_proc	SetupEggmanKidnapsVanillaTask
SetupEggmanKidnapsVanillaTask:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	lea	rax, TaskDestructor_TrueArea53BossGfx[rip]
	xor	r9d, r9d
	mov	edx, 2952
	mov	r8d, 16384
	lea	rcx, Task_EggmanKidnapsVanilla[rip]
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	rbx, QWORD PTR .refptr.gActiveBossTask[rip]
	mov	QWORD PTR [rbx], rax
	call	CreateTrueArea53Boss
	mov	rax, QWORD PTR [rbx]
	mov	edx, 560
	movdqu	xmm0, XMMWORD PTR .LC4[rip]
	mov	ecx, 20
	lea	rbx, gUnknown_080D8C10[rip]
	mov	r8d, 4929
	mov	rax, QWORD PTR 24[rax]
	mov	WORD PTR 18[rax], dx
	mov	rdx, QWORD PTR .LC21[rip]
	movups	XMMWORD PTR 40[rax], xmm0
	movdqu	xmm0, XMMWORD PTR .LC5[rip]
	mov	QWORD PTR 76[rax], rdx
	mov	rdx, QWORD PTR .LC7[rip]
	movups	XMMWORD PTR 96[rax], xmm0
	movdqu	xmm0, XMMWORD PTR .LC6[rip]
	and	DWORD PTR 140[rax], 4095
	mov	WORD PTR 56[rax], cx
	lea	rcx, sub_8050CBC[rip]
	mov	QWORD PTR 88[rax], rcx
	mov	QWORD PTR 144[rax], rbx
	mov	DWORD PTR 136[rax], 5242960
	mov	QWORD PTR 128[rax], rdx
	movups	XMMWORD PTR 112[rax], xmm0
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	WORD PTR [rax], r8w
	add	rsp, 48
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	TrueArea53BossMove
	.def	TrueArea53BossMove;	.scl	2;	.type	32;	.endef
	.seh_proc	TrueArea53BossMove
TrueArea53BossMove:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gActiveBossTask[rip]
	mov	rax, QWORD PTR [rax]
	movd	xmm1, ecx
	movd	xmm2, edx
	punpckldq	xmm1, xmm2
	test	rax, rax
	je	.L131
	mov	r8, QWORD PTR 24[rax]
	sar	ecx, 8
	sar	edx, 8
	lea	esi, 0[0+rdx*4]
	lea	ebx, 0[0+rcx*4]
	movq	xmm0, QWORD PTR 76[r8]
	lea	r9, 224[r8]
	lea	rax, 348[r8]
	lea	rdi, 1908[r8]
	paddd	xmm0, xmm1
	movq	QWORD PTR 76[r8], xmm0
	movq	xmm0, QWORD PTR 20[r8]
	paddd	xmm0, xmm1
	movq	QWORD PTR 20[r8], xmm0
.L133:
	movq	xmm0, QWORD PTR [r9]
	lea	r10d, [rdx+rsi]
	lea	r11d, [rcx+rbx]
	add	r9, 512
	paddd	xmm0, xmm1
	movq	QWORD PTR -512[r9], xmm0
	add	DWORD PTR [rax], r11d
	add	DWORD PTR 4[rax], r10d
	add	rax, 520
	cmp	rax, rdi
	jne	.L133
	punpcklqdq	xmm1, xmm1
	lea	rax, 1884[r8]
	lea	rdx, 1964[r8]
.L134:
	movdqu	xmm0, XMMWORD PTR [rax]
	add	rax, 16
	paddd	xmm0, xmm1
	movups	XMMWORD PTR -16[rax], xmm0
	cmp	rdx, rax
	jne	.L134
	lea	rax, 2152[r8]
	add	r8, 2280
	.p2align 4,,10
	.p2align 3
.L135:
	movdqu	xmm0, XMMWORD PTR [rax]
	add	rax, 16
	paddd	xmm0, xmm1
	movups	XMMWORD PTR -16[rax], xmm0
	cmp	rax, r8
	jne	.L135
.L131:
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_804D8E0
	.def	sub_804D8E0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804D8E0
sub_804D8E0:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	SuperSonicGetFlags
	test	ah, 2
	jne	.L148
.L141:
	movzx	r8d, WORD PTR .LC0[rip]
	lea	rax, 200[rbx]
	lea	rcx, 1736[rbx]
	lea	rdx, sub_804EC6C[rip]
.L143:
	or	BYTE PTR 8[rax], 4
	cmp	QWORD PTR [rax], rdx
	je	.L142
	mov	r9d, 713
	mov	r10d, 16
	mov	WORD PTR 88[rax], r8w
	mov	WORD PTR 58[rax], r9w
	mov	DWORD PTR 72[rax], 4096
	mov	WORD PTR 12[rax], r10w
.L142:
	add	rax, 512
	cmp	rcx, rax
	jne	.L143
	lea	rax, sub_804E66C[rip]
	xor	edx, edx
	xor	ecx, ecx
	mov	QWORD PTR 176[rbx], rax
	lea	rax, sub_804FF9C[rip]
	mov	QWORD PTR 2032[rbx], rax
	mov	eax, 300
	mov	WORD PTR 2048[rbx], ax
	lea	rax, sub_8050DC8[rip]
	mov	QWORD PTR 1736[rbx], rax
	movsx	eax, WORD PTR 72[rbx]
	mov	WORD PTR 136[rbx], dx
	sal	eax, 8
	add	eax, DWORD PTR 76[rbx]
	mov	WORD PTR 56[rbx], cx
	mov	DWORD PTR 20[rbx], eax
	movsx	eax, WORD PTR 74[rbx]
	sal	eax, 8
	add	eax, DWORD PTR 80[rbx]
	mov	DWORD PTR 24[rbx], eax
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L148:
	call	sub_802BA8C
	jmp	.L141
	.seh_endproc
	.p2align 4
	.globl	sub_804DE5C
	.def	sub_804DE5C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804DE5C
sub_804DE5C:
	.seh_endprologue
	xor	eax, eax
.L152:
	cmp	BYTE PTR 8[r8+rax], 0
	je	.L154
	add	rax, 1
	cmp	rax, 5
	jne	.L152
	ret
	.p2align 4,,10
	.p2align 3
.L154:
	mov	r11, QWORD PTR .refptr.gSineTable[rip]
	movzx	r9d, r9w
	pxor	xmm1, xmm1
	cdqe
	lea	r10d, 256[r9]
	movsx	r10, r10d
	movzx	r9d, WORD PTR [r11+r9*2]
	movzx	r10d, WORD PTR [r11+r10*2]
	sal	r9d, 16
	or	r9d, r10d
	movd	xmm0, r9d
	lea	r9, 4[rax]
	psraw	xmm0, 5
	psubw	xmm1, xmm0
	movd	DWORD PTR 14[r8+rax*4], xmm1
	mov	DWORD PTR 4[r8+r9*8], ecx
	mov	DWORD PTR 8[r8+r9*8], edx
	mov	BYTE PTR 8[r8+rax], 16
	sal	rax, 6
	mov	BYTE PTR 129[rax+r8], -1
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_804DEEC
	.def	sub_804DEEC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804DEEC
sub_804DEEC:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	r9d, edx
	mov	r8d, ecx
	mov	rdx, QWORD PTR 24[rax]
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L158:
	cmp	BYTE PTR 1824[rdx+rax], 0
	je	.L160
	add	rax, 1
	cmp	rax, 10
	jne	.L158
	ret
	.p2align 4,,10
	.p2align 3
.L160:
	mov	r11, QWORD PTR .refptr.gPseudoRandom[rip]
	cdqe
	mov	BYTE PTR 1824[rdx+rax], 1
	imul	ecx, DWORD PTR [r11], 1663525
	mov	BYTE PTR 1834[rdx+rax], 60
	add	ecx, 1013904223
	movzx	r10d, cl
	imul	ecx, ecx, 1663525
	sub	r10w, 512
	mov	WORD PTR 1844[rdx+rax*4], r10w
	add	ecx, 1013904223
	mov	DWORD PTR [r11], ecx
	movzx	ecx, cl
	sub	cx, 512
	mov	WORD PTR 1846[rdx+rax*4], cx
	add	rax, 8
	mov	DWORD PTR 1820[rdx+rax*8], r8d
	mov	DWORD PTR 1824[rdx+rax*8], r9d
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_804F47C
	.def	sub_804F47C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804F47C
sub_804F47C:
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
	sub	WORD PTR 10[rcx], 1
	mov	rbx, rcx
	jne	.L162
	lea	rax, sub_8050DC8[rip]
	mov	QWORD PTR [rcx], rax
.L162:
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	cmp	BYTE PTR 12[rax], 0
	jne	.L178
.L161:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L178:
	movsx	edx, WORD PTR 72[rax]
	movsx	r8d, WORD PTR 74[rax]
	lea	rbp, 16[rbx]
	mov	ecx, DWORD PTR 164[rax]
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	sal	edx, 8
	sal	r8d, 8
	add	edx, DWORD PTR 76[rax]
	add	r8d, DWORD PTR 80[rax]
	movzx	eax, WORD PTR 154[rax]
	sar	ecx, 8
	lea	eax, 768[rax+rcx]
	mov	r10d, eax
	add	ax, 768
	and	r10d, 1023
	and	eax, 1023
	lea	ecx, 256[r10]
	movsx	edi, WORD PTR [r9+rax*2]
	movsx	rcx, ecx
	movsx	ecx, WORD PTR [r9+rcx*2]
	imul	edi, edi, 38
	lea	ecx, [rcx+rcx*8]
	sar	ecx, 6
	sar	edi, 6
	add	ecx, edx
	movsx	edx, WORD PTR [r9+r10*2]
	lea	edx, [rdx+rdx*8]
	sar	edx, 6
	add	edx, r8d
	lea	r8d, 256[rax]
	movsx	r8, r8d
	add	edi, edx
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	movsx	esi, WORD PTR [r9+r8*2]
	imul	esi, esi, 38
	sar	esi, 6
	add	esi, ecx
	mov	rcx, rbp
	mov	eax, esi
	sar	eax, 8
	sub	ax, WORD PTR [rdx]
	mov	WORD PTR 54[rbx], ax
	mov	eax, edi
	sar	eax, 8
	sub	ax, WORD PTR 4[rdx]
	mov	WORD PTR 56[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rbp
	call	DisplaySprite
	movzx	edx, WORD PTR 10[rbx]
	imul	ax, dx, -13107
	ror	ax
	cmp	ax, 6553
	ja	.L161
	cmp	dx, 100
	ja	.L161
	movzx	eax, BYTE PTR 8[rbx]
	test	al, al
	je	.L161
	sub	eax, 1
	mov	ecx, 271
	mov	BYTE PTR 8[rbx], al
	call	m4aSongNumStart
	mov	rdx, QWORD PTR .refptr.gRingCount[rip]
	movzx	eax, WORD PTR [rdx]
	test	ax, ax
	je	.L161
	sub	eax, 1
	lea	ecx, -2048[rsi]
	mov	WORD PTR [rdx], ax
	mov	edx, edi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	sub_804DEEC
	.seh_endproc
	.p2align 4
	.globl	sub_804E8E8
	.def	sub_804E8E8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804E8E8
sub_804E8E8:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	lea	rbx, 64[rcx]
	lea	rsi, 1600[rcx]
.L182:
	test	BYTE PTR -32[rbx], 1
	je	.L180
	cmp	WORD PTR 18[rbx], 716
	jne	.L181
	movzx	eax, WORD PTR -24[rbx]
	lea	rdx, gUnknown_080D8918[rip]
	add	eax, 32
	sar	eax, 6
	and	eax, 15
	movzx	eax, BYTE PTR 6[rdx+rax*8]
	mov	BYTE PTR 48[rbx], al
.L181:
	movzx	eax, WORD PTR -15[rbx]
	sub	ax, WORD PTR [rdi]
	mov	rcx, rbx
	mov	WORD PTR 38[rbx], ax
	movzx	eax, WORD PTR -11[rbx]
	sub	ax, WORD PTR 4[rdi]
	mov	WORD PTR 40[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	call	DisplaySprite
.L180:
	add	rbx, 512
	cmp	rsi, rbx
	jne	.L182
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_804E66C
	.def	sub_804E66C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804E66C
sub_804E66C:
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
	sub	WORD PTR 8[rcx], 1
	mov	rsi, rcx
	jne	.L188
	lea	rax, sub_804E74C[rip]
	mov	QWORD PTR [rcx], rax
	mov	eax, 300
	mov	WORD PTR 8[rcx], ax
.L188:
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	lea	rbx, 24[rsi]
	lea	r12, 1560[rsi]
	mov	ebp, DWORD PTR [rax]
	and	ebp, 3
.L191:
	lea	rdi, 112[rbx]
	mov	rcx, rdi
	call	[QWORD PTR 112[rbx]]
	test	BYTE PTR 8[rbx], 1
	je	.L189
	mov	rax, QWORD PTR [rbx]
	test	ebp, ebp
	jne	.L190
	lea	rdx, sub_804EC6C[rip]
	cmp	rax, rdx
	je	.L190
	movzx	eax, WORD PTR 16[rbx]
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	mov	r8, rdi
	mov	edx, DWORD PTR 28[rbx]
	add	eax, 32
	mov	r9d, eax
	and	eax, 1023
	movsx	eax, WORD PTR [rcx+rax*2]
	and	r9d, 1023
	lea	eax, [rax+rax*4]
	sar	eax, 5
	sub	edx, eax
	lea	eax, 256[r9]
	cdqe
	movsx	eax, WORD PTR [rcx+rax*2]
	mov	ecx, DWORD PTR 24[rbx]
	lea	eax, [rax+rax*4]
	sar	eax, 5
	sub	ecx, eax
	call	sub_804DE5C
	mov	rax, QWORD PTR [rbx]
.L190:
	mov	rcx, rbx
	call	rax
.L189:
	add	rbx, 512
	cmp	rbx, r12
	jne	.L191
	mov	rcx, rsi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	sub_804E8E8
	.seh_endproc
	.p2align 4
	.globl	sub_804E74C
	.def	sub_804E74C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804E74C
sub_804E74C:
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
	movzx	eax, WORD PTR 8[rcx]
	sub	eax, 1
	mov	WORD PTR 8[rcx], ax
	mov	rsi, rcx
	test	ax, ax
	jne	.L197
	lea	rax, sub_804E66C[rip]
	mov	r11d, 600
	mov	QWORD PTR [rcx], rax
	mov	WORD PTR 8[rcx], r11w
.L198:
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	lea	rbx, 24[rsi]
	lea	r12, 1560[rsi]
	mov	ebp, DWORD PTR [rax]
	and	ebp, 3
.L202:
	lea	rdi, 112[rbx]
	mov	rcx, rdi
	call	[QWORD PTR 112[rbx]]
	test	BYTE PTR 8[rbx], 1
	je	.L200
	test	ebp, ebp
	je	.L209
.L201:
	mov	rcx, rbx
	call	[QWORD PTR [rbx]]
.L200:
	add	rbx, 512
	cmp	r12, rbx
	jne	.L202
	mov	rcx, rsi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	sub_804E8E8
	.p2align 4,,10
	.p2align 3
.L197:
	cmp	ax, 270
	je	.L203
	cmp	ax, 210
	je	.L204
	mov	ecx, 2
	cmp	ax, 150
	jne	.L198
.L199:
	sal	rcx, 9
	lea	rdi, sub_804E974[rip]
	mov	edx, 600
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	lea	rax, [rsi+rcx]
	mov	r10d, -244
	mov	QWORD PTR 24[rax], rdi
	mov	WORD PTR 36[rax], dx
	movzx	edx, WORD PTR 10[rsi]
	mov	r8d, edx
	and	r8w, 1023
	mov	WORD PTR 38[rax], r8w
	lea	r8d, 256[rdx]
	movsx	rdx, edx
	movzx	edx, WORD PTR [r9+rdx*2]
	movsx	r8, r8d
	movzx	r8d, WORD PTR [r9+r8*2]
	sal	edx, 16
	or	edx, r8d
	movd	xmm0, edx
	psraw	xmm0, 5
	pextrw	edx, xmm0, 0
	movd	DWORD PTR 42[rsi+rcx], xmm0
	mov	r8d, DWORD PTR 16[rsi]
	movsx	edx, dx
	lea	r9d, [rdx+rdx*2]
	lea	edx, [rdx+r9*4]
	add	edx, DWORD PTR 12[rsi]
	mov	DWORD PTR 56[rax], 128
	mov	DWORD PTR 48[rax], edx
	pextrw	edx, xmm0, 1
	movsx	edx, dx
	mov	BYTE PTR 34[rax], 0
	lea	r9d, [rdx+rdx*2]
	lea	edx, [rdx+r9*4]
	mov	r9d, 716
	add	edx, r8d
	mov	r8d, 1283
	mov	DWORD PTR 52[rax], edx
	mov	WORD PTR 32[rsi+rcx], r8w
	mov	WORD PTR 82[rax], r9w
	mov	WORD PTR 112[rsi+rcx], r10w
	mov	ecx, 266
	mov	DWORD PTR 96[rax], 8192
	mov	BYTE PTR 117[rax], 6
	call	m4aSongNumStart
	jmp	.L198
	.p2align 4,,10
	.p2align 3
.L209:
	movzx	eax, WORD PTR 14[rbx]
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	mov	r8, rdi
	mov	edx, DWORD PTR 28[rbx]
	mov	r9, rax
	movsx	eax, WORD PTR [rcx+rax*2]
	lea	eax, [rax+rax*4]
	sar	eax, 5
	sub	edx, eax
	lea	eax, 256[r9]
	cdqe
	movsx	eax, WORD PTR [rcx+rax*2]
	mov	ecx, DWORD PTR 24[rbx]
	lea	eax, [rax+rax*4]
	sar	eax, 5
	sub	ecx, eax
	call	sub_804DE5C
	jmp	.L201
	.p2align 4,,10
	.p2align 3
.L203:
	xor	ecx, ecx
	jmp	.L199
	.p2align 4,,10
	.p2align 3
.L204:
	mov	ecx, 1
	jmp	.L199
	.seh_endproc
	.p2align 4
	.globl	sub_804ECC4
	.def	sub_804ECC4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804ECC4
sub_804ECC4:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rbx, rcx
	lea	rdx, 44[rsp]
	lea	rcx, 40[rsp]
	call	SuperSonicGetPos
	mov	r8d, DWORD PTR 164[rbx]
	movzx	edx, WORD PTR 154[rbx]
	movsx	ecx, WORD PTR 72[rbx]
	movsx	eax, WORD PTR 74[rbx]
	sar	r8d, 8
	lea	edx, 768[rdx+r8]
	sal	ecx, 8
	add	ecx, DWORD PTR 76[rbx]
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	mov	r9d, edx
	add	dx, 768
	sal	eax, 8
	add	eax, DWORD PTR 80[rbx]
	and	r9d, 1023
	and	edx, 1023
	lea	r10d, 256[r9]
	movsx	r10, r10d
	movsx	r10d, WORD PTR [r8+r10*2]
	lea	r10d, [r10+r10*4]
	sar	r10d, 4
	add	r10d, ecx
	movsx	ecx, WORD PTR [r8+r9*2]
	lea	ecx, [rcx+rcx*4]
	sar	ecx, 4
	add	ecx, eax
	lea	eax, 256[rdx]
	movsx	edx, WORD PTR [r8+rdx*2]
	cdqe
	movsx	eax, WORD PTR [r8+rax*2]
	lea	edx, [rdx+rdx*4]
	sar	edx, 5
	lea	eax, [rax+rax*4]
	add	edx, ecx
	sub	edx, DWORD PTR 44[rsp]
	sar	eax, 5
	sar	edx, 8
	add	eax, r10d
	imul	edx, edx
	sub	eax, DWORD PTR 40[rsp]
	sar	eax, 8
	imul	eax, eax
	add	eax, edx
	cmp	eax, 1599
	jle	.L212
	add	rsp, 48
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L212:
	call	sub_802BA8C
	nop
	add	rsp, 48
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_804ED98
	.def	sub_804ED98;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804ED98
sub_804ED98:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rbx, QWORD PTR .refptr.gSineTable[rip]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	mov	r10d, DWORD PTR 164[rax]
	mov	r8d, ecx
	mov	ecx, edx
	movzx	edx, WORD PTR 154[rax]
	movsx	r9d, WORD PTR 72[rax]
	movsx	r11d, WORD PTR 74[rax]
	sar	r10d, 8
	lea	edx, 768[rdx+r10]
	sal	r9d, 8
	sal	r11d, 8
	add	r9d, DWORD PTR 76[rax]
	add	r11d, DWORD PTR 80[rax]
	mov	eax, edx
	add	dx, 768
	and	eax, 1023
	and	edx, 1023
	lea	r10d, 256[rax]
	movsx	eax, WORD PTR [rbx+rax*2]
	movsx	r10, r10d
	movsx	r10d, WORD PTR [rbx+r10*2]
	lea	r10d, [r10+r10*4]
	sar	r10d, 4
	add	r10d, r9d
	lea	r9d, [rax+rax*4]
	lea	eax, 256[rdx]
	movsx	edx, WORD PTR [rbx+rdx*2]
	cdqe
	sar	r9d, 4
	movsx	eax, WORD PTR [rbx+rax*2]
	lea	edx, [rdx+rdx*4]
	add	r9d, r11d
	sar	edx, 5
	lea	eax, [rax+rax*4]
	add	edx, r9d
	sar	eax, 5
	sar	edx, 8
	add	eax, r10d
	sub	edx, ecx
	sar	eax, 8
	imul	edx, edx
	sub	eax, r8d
	imul	eax, eax
	add	eax, edx
	cmp	eax, 1599
	setle	al
	movzx	eax, al
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_804EB6C
	.def	sub_804EB6C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804EB6C
sub_804EB6C:
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
	sub	WORD PTR 12[rcx], 1
	mov	rbx, rcx
	jne	.L215
	mov	r8d, 713
	mov	r9d, -256
	mov	r10d, 16
	mov	BYTE PTR 93[rcx], 0
	lea	rax, sub_804EC6C[rip]
	mov	WORD PTR 58[rcx], r8w
	mov	WORD PTR 88[rcx], r9w
	mov	QWORD PTR [rcx], rax
	mov	WORD PTR 12[rcx], r10w
.L214:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L215:
	movzx	eax, WORD PTR 14[rcx]
	movq	xmm1, QWORD PTR 24[rcx]
	add	eax, 140
	and	eax, 1023
	movd	xmm2, eax
	movsx	eax, WORD PTR 18[rcx]
	pshuflw	xmm0, xmm2, 0
	add	eax, 1280
	movd	DWORD PTR 14[rcx], xmm0
	movd	xmm0, eax
	movsx	eax, WORD PTR 20[rcx]
	movd	xmm3, eax
	punpckldq	xmm0, xmm3
	paddd	xmm0, xmm1
	movq	QWORD PTR 24[rcx], xmm0
	cmp	BYTE PTR 13[rsi], 0
	jne	.L214
	cmp	BYTE PTR 10[rcx], 0
	jne	.L214
	movd	ecx, xmm0
	pshufd	xmm4, xmm0, 0xe5
	movd	edx, xmm4
	sar	edx, 8
	sar	ecx, 8
	call	sub_804ED98
	test	eax, eax
	je	.L214
	test	BYTE PTR 12[rsi], 1
	jne	.L227
	mov	ecx, 235
	call	m4aSongNumStart
.L220:
	mov	eax, 713
	mov	edx, -256
	mov	ecx, 16
	mov	BYTE PTR 93[rbx], 0
	mov	WORD PTR 58[rbx], ax
	lea	rax, sub_804EC6C[rip]
	mov	WORD PTR 88[rbx], dx
	mov	QWORD PTR [rbx], rax
	mov	WORD PTR 12[rbx], cx
	movzx	eax, BYTE PTR 12[rsi]
	mov	BYTE PTR 13[rsi], 48
	test	al, al
	je	.L214
	sub	eax, 1
	mov	BYTE PTR 12[rsi], al
	jmp	.L214
	.p2align 4,,10
	.p2align 3
.L227:
	mov	ecx, 143
	call	m4aSongNumStart
	jmp	.L220
	.seh_endproc
	.p2align 4
	.globl	sub_804EE84
	.def	sub_804EE84;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804EE84
sub_804EE84:
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
	mov	edi, r8d
	mov	rbp, rcx
	mov	esi, edx
	mov	DWORD PTR 40[rsp], 0
	mov	DWORD PTR 44[rsp], 0
	call	SuperSonicGetSprite
	lea	rdx, 44[rsp]
	lea	rcx, 40[rsp]
	mov	rbx, rax
	call	SuperSonicGetPos
	call	SuperSonicGetFlags
	mov	rdx, QWORD PTR .refptr.gPlayer[rip]
	and	eax, 520
	mov	edx, DWORD PTR 36[rdx]
	and	edx, 128
	or	eax, edx
	jne	.L233
	cmp	DWORD PTR 64[rbp], -1
	je	.L228
	cmp	DWORD PTR 64[rbx], -1
	je	.L228
	mov	r8d, DWORD PTR 40[rsp]
	movsx	ecx, BYTE PTR 68[rbp]
	movsx	edx, BYTE PTR 68[rbx]
	sar	r8d, 8
	add	ecx, esi
	add	edx, r8d
	cmp	ecx, edx
	jle	.L235
.L230:
	movsx	edx, BYTE PTR 70[rbx]
	add	edx, r8d
	cmp	ecx, edx
	jg	.L228
.L231:
	mov	r8d, DWORD PTR 44[rsp]
	movsx	ecx, BYTE PTR 69[rbp]
	movsx	edx, BYTE PTR 69[rbx]
	sar	r8d, 8
	add	ecx, edi
	add	edx, r8d
	cmp	ecx, edx
	jle	.L236
.L232:
	movsx	eax, BYTE PTR 71[rbx]
	add	eax, r8d
	cmp	ecx, eax
	setle	al
	movzx	eax, al
.L228:
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L233:
	xor	eax, eax
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L235:
	movsx	r9d, BYTE PTR 70[rbp]
	add	r9d, esi
	cmp	edx, r9d
	jle	.L231
	cmp	ecx, edx
	jne	.L228
	jmp	.L230
	.p2align 4,,10
	.p2align 3
.L236:
	movsx	r9d, BYTE PTR 71[rbp]
	add	r9d, edi
	cmp	edx, r9d
	jle	.L234
	cmp	ecx, edx
	jne	.L228
	jmp	.L232
	.p2align 4,,10
	.p2align 3
.L234:
	mov	eax, 1
	jmp	.L228
	.seh_endproc
	.p2align 4
	.globl	sub_804EF68
	.def	sub_804EF68;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804EF68
sub_804EF68:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	xor	r11d, r11d
	cmp	DWORD PTR 64[rcx], -1
	mov	rax, rcx
	je	.L237
	cmp	DWORD PTR 56[r9], -1
	je	.L237
	movsx	r10d, BYTE PTR 68[rcx]
	movsx	ecx, BYTE PTR 60[r9]
	add	ecx, DWORD PTR 48[rsp]
	add	r10d, edx
	cmp	r10d, ecx
	jle	.L249
.L239:
	movsx	edx, BYTE PTR 62[r9]
	add	edx, DWORD PTR 48[rsp]
	xor	r11d, r11d
	cmp	r10d, edx
	jg	.L237
.L240:
	movsx	edx, BYTE PTR 69[rax]
	movsx	ecx, BYTE PTR 61[r9]
	add	ecx, DWORD PTR 56[rsp]
	add	edx, r8d
	cmp	edx, ecx
	jg	.L241
	movsx	eax, BYTE PTR 71[rax]
	mov	r11d, 1
	add	eax, r8d
	cmp	ecx, eax
	jle	.L237
	xor	r11d, r11d
	cmp	edx, ecx
	je	.L241
.L237:
	mov	eax, r11d
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L249:
	movsx	ebx, BYTE PTR 70[rax]
	add	edx, ebx
	cmp	ecx, edx
	jle	.L240
	cmp	r10d, ecx
	je	.L239
	mov	eax, r11d
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L241:
	movsx	eax, BYTE PTR 63[r9]
	add	eax, DWORD PTR 56[rsp]
	xor	r11d, r11d
	cmp	edx, eax
	setle	r11b
	mov	eax, r11d
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_804F010
	.def	sub_804F010;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804F010
sub_804F010:
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
	mov	rdi, rcx
	mov	ebp, edx
	mov	r12d, r8d
	mov	ebx, r9d
	mov	DWORD PTR 40[rsp], 0
	mov	DWORD PTR 44[rsp], 0
	call	SuperSonicGetSprite
	lea	rdx, 44[rsp]
	lea	rcx, 40[rsp]
	mov	rsi, rax
	call	SuperSonicGetPos
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	mov	eax, DWORD PTR 36[rax]
	and	eax, 128
	jne	.L255
	movzx	ebx, bl
	lea	rdx, [rdi+rbx*8]
	cmp	DWORD PTR 56[rdx], -1
	je	.L250
	cmp	DWORD PTR 56[rsi], -1
	je	.L250
	mov	r9d, DWORD PTR 40[rsp]
	movsx	r8d, BYTE PTR 60[rdx]
	movsx	ecx, BYTE PTR 60[rsi]
	sar	r9d, 8
	add	r8d, ebp
	add	ecx, r9d
	cmp	r8d, ecx
	jg	.L252
	movsx	r10d, BYTE PTR 62[rdx]
	add	r10d, ebp
	cmp	ecx, r10d
	jg	.L257
.L253:
	mov	r9d, DWORD PTR 44[rsp]
	movsx	ecx, BYTE PTR 61[rdx]
	movsx	r8d, BYTE PTR 61[rsi]
	sar	r9d, 8
	add	ecx, r12d
	add	r8d, r9d
	cmp	ecx, r8d
	jg	.L254
	movsx	edx, BYTE PTR 63[rdx]
	add	edx, r12d
	cmp	r8d, edx
	jle	.L256
	cmp	ecx, r8d
	je	.L254
.L250:
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L255:
	xor	eax, eax
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L257:
	cmp	r8d, ecx
	jne	.L250
	.p2align 4,,10
	.p2align 3
.L252:
	movsx	ecx, BYTE PTR 62[rsi]
	add	ecx, r9d
	cmp	r8d, ecx
	jle	.L253
	jmp	.L250
	.p2align 4,,10
	.p2align 3
.L254:
	movsx	eax, BYTE PTR 63[rsi]
	add	eax, r9d
	cmp	ecx, eax
	setle	al
	movzx	eax, al
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L256:
	mov	eax, 1
	jmp	.L250
	.seh_endproc
	.p2align 4
	.globl	sub_804E974
	.def	sub_804E974;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804E974
sub_804E974:
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
	mov	esi, 1
	mov	rbx, rcx
	lea	rdx, 44[rsp]
	lea	rcx, 40[rsp]
	call	SuperSonicGetPos
	mov	eax, DWORD PTR 40[rsp]
	mov	ecx, DWORD PTR 44[rsp]
	lea	edx, 4096[rax]
	movzx	eax, WORD PTR 12[rbx]
	mov	DWORD PTR 40[rsp], edx
	sub	eax, 1
	mov	WORD PTR 12[rbx], ax
	test	ax, ax
	je	.L259
	cmp	ax, 169
	ja	.L260
	and	BYTE PTR 8[rbx], -3
.L260:
	xor	esi, esi
.L259:
	sub	edx, DWORD PTR 24[rbx]
	sub	ecx, DWORD PTR 28[rbx]
	sar	edx, 8
	sar	ecx, 8
	movsx	edx, dx
	movsx	ecx, cx
	call	sub_8004418
	movzx	edx, BYTE PTR 9[rbx]
	mov	WORD PTR 16[rbx], ax
	test	dl, dl
	je	.L261
	sub	edx, 1
	movzx	eax, WORD PTR 14[rbx]
	mov	BYTE PTR 9[rbx], dl
.L262:
	movd	xmm0, DWORD PTR 18[rbx]
	movd	xmm2, DWORD PTR .LC1[rip]
	and	ax, 1023
	mov	rdi, QWORD PTR .refptr.gSineTable[rip]
	mov	WORD PTR 14[rbx], ax
	movzx	eax, ax
	pmulhw	xmm2, xmm0
	movdqu	xmm3, xmm0
	lea	edx, 256[rax]
	psraw	xmm3, 15
	movzx	eax, WORD PTR [rdi+rax*2]
	movsx	rdx, edx
	movzx	edx, WORD PTR [rdi+rdx*2]
	sal	eax, 16
	or	eax, edx
	psraw	xmm2, 4
	movd	xmm1, eax
	psubw	xmm2, xmm3
	psubw	xmm0, xmm2
	movd	xmm2, DWORD PTR .LC24[rip]
	pmulhw	xmm2, xmm1
	psraw	xmm1, 15
	psraw	xmm2, 7
	psubw	xmm2, xmm1
	movq	xmm1, QWORD PTR 24[rbx]
	paddw	xmm0, xmm2
	pextrw	eax, xmm0, 0
	pextrw	edx, xmm0, 1
	movd	DWORD PTR 18[rbx], xmm0
	cwde
	movsx	edx, dx
	add	eax, 1280
	movd	xmm4, edx
	movd	xmm0, eax
	punpckldq	xmm0, xmm4
	paddd	xmm1, xmm0
	movq	QWORD PTR 24[rbx], xmm1
	call	SuperSonicGetFlags
	test	eax, 520
	je	.L273
.L258:
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L273:
	mov	edx, DWORD PTR 24[rbx]
	mov	r8d, DWORD PTR 28[rbx]
	lea	rbp, 40[rbx]
	mov	rcx, rbp
	sar	edx, 8
	sar	r8d, 8
	call	sub_804EE84
	cmp	eax, 1
	je	.L274
	mov	edx, DWORD PTR 24[rbx]
	mov	r8d, DWORD PTR 28[rbx]
	mov	r9d, 1
	mov	rcx, rbp
	sar	edx, 8
	sar	r8d, 8
	call	sub_804F010
	cmp	eax, 1
	je	.L267
.L270:
	test	esi, esi
	je	.L258
.L268:
	lea	rax, sub_804EC6C[rip]
	mov	edx, 713
	or	BYTE PTR 8[rbx], 4
	mov	ecx, -256
	mov	QWORD PTR [rbx], rax
	mov	eax, 16
	mov	WORD PTR 88[rbx], cx
	mov	ecx, 267
	mov	WORD PTR 12[rbx], ax
	mov	WORD PTR 58[rbx], dx
	mov	DWORD PTR 72[rbx], 4096
	mov	BYTE PTR 93[rbx], 0
	call	m4aSongNumStart
	nop
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L261:
	movzx	ecx, WORD PTR 14[rbx]
	movzx	edx, ax
	mov	r8d, 10
	call	sub_808558C
	test	ax, ax
	movzx	eax, WORD PTR 14[rbx]
	js	.L275
	add	eax, 5
	jmp	.L262
	.p2align 4,,10
	.p2align 3
.L275:
	sub	eax, 5
	jmp	.L262
	.p2align 4,,10
	.p2align 3
.L274:
	lea	rax, sub_804EB6C[rip]
	mov	QWORD PTR [rbx], rax
	call	SuperSonicGetRotation
	mov	DWORD PTR 72[rbx], 4096
	mov	ecx, 268
	movzx	eax, ax
	lea	edx, 256[rax]
	movzx	eax, WORD PTR [rdi+rax*2]
	movsx	rdx, edx
	movzx	edx, WORD PTR [rdi+rdx*2]
	sal	eax, 16
	or	eax, edx
	movd	xmm0, eax
	psraw	xmm0, 4
	movd	DWORD PTR 18[rbx], xmm0
	call	m4aSongNumStart
	nop
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L267:
	call	sub_802BA8C
	cmp	eax, 1
	jne	.L270
	jmp	.L268
	.seh_endproc
	.p2align 4
	.globl	sub_804F1EC
	.def	sub_804F1EC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804F1EC
sub_804F1EC:
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
	mov	rsi, QWORD PTR 24[rax]
	cmp	BYTE PTR 12[rsi], 0
	mov	rbx, rcx
	je	.L276
	sub	WORD PTR 10[rcx], 1
	je	.L288
.L278:
	mov	eax, DWORD PTR 12[rbx]
	mov	ecx, DWORD PTR 164[rsi]
	lea	rdi, 16[rbx]
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	movsx	edx, WORD PTR 72[rsi]
	lea	r13d, 2[rax]
	mov	eax, 464
	movsx	r9d, WORD PTR 74[rsi]
	cmp	r13d, eax
	cmovg	r13d, eax
	movzx	eax, WORD PTR 154[rsi]
	sar	ecx, 8
	sal	edx, 8
	add	edx, DWORD PTR 76[rsi]
	lea	eax, 768[rax+rcx]
	sal	r9d, 8
	add	r9d, DWORD PTR 80[rsi]
	mov	DWORD PTR 12[rbx], r13d
	mov	r10d, eax
	add	ax, 768
	and	r10d, 1023
	and	eax, 1023
	lea	ecx, 256[r10]
	movsx	r12d, WORD PTR [r8+rax*2]
	movsx	rcx, ecx
	movsx	ecx, WORD PTR [r8+rcx*2]
	imul	r12d, r12d, 38
	lea	ecx, [rcx+rcx*8]
	sar	ecx, 6
	sar	r12d, 6
	add	ecx, edx
	movsx	edx, WORD PTR [r8+r10*2]
	lea	edx, [rdx+rdx*8]
	sar	edx, 6
	add	edx, r9d
	lea	r9d, 256[rax]
	movsx	r9, r9d
	add	r12d, edx
	lea	rdx, 60[rsp]
	movsx	ebp, WORD PTR [r8+r9*2]
	imul	ebp, ebp, 38
	sar	ebp, 6
	add	ebp, ecx
	lea	rcx, 56[rsp]
	call	SuperSonicGetPos
	mov	ecx, DWORD PTR 56[rsp]
	mov	r8d, r13d
	mov	r14d, ebp
	lea	edx, 2560[rbp]
	mov	DWORD PTR 32[rsp], 2
	mov	r9d, 10
	sar	r14d, 8
	call	sub_8085698
	mov	DWORD PTR 32[rsp], 2
	mov	ecx, DWORD PTR 60[rsp]
	lea	r8d, 256[r13]
	mov	r9d, 10
	mov	edx, r12d
	mov	DWORD PTR 56[rsp], eax
	mov	r13d, r12d
	sar	r13d, 8
	call	sub_8085698
	mov	ecx, DWORD PTR 56[rsp]
	mov	edx, eax
	mov	DWORD PTR 60[rsp], eax
	call	SuperSonicSetPos
	xor	r9d, r9d
	mov	r8d, r13d
	mov	edx, r14d
	mov	rcx, rdi
	call	sub_804F010
	cmp	eax, 1
	je	.L289
	mov	ecx, 270
	call	m4aSongNumStartOrContinue
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	edx, r14d
	mov	ecx, r13d
	sub	dx, WORD PTR [rax]
	sub	cx, WORD PTR 4[rax]
	mov	WORD PTR 54[rbx], dx
	mov	WORD PTR 56[rbx], cx
	mov	rcx, rdi
	lea	rbx, 240[rsi]
	add	rsi, 1776
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	call	DisplaySprite
.L286:
	test	BYTE PTR -32[rbx], 1
	jne	.L290
.L282:
	add	rbx, 512
	cmp	rsi, rbx
	jne	.L286
.L276:
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
.L290:
	mov	edx, DWORD PTR -16[rbx]
	mov	ecx, DWORD PTR -12[rbx]
	sub	edx, ebp
	sub	ecx, r12d
	sar	edx, 8
	sar	ecx, 8
	movsx	edx, dx
	movsx	ecx, cx
	call	sub_8004418
	sub	ax, 301
	cmp	ax, 422
	jbe	.L283
	cmp	BYTE PTR -30[rbx], 0
	je	.L284
.L283:
	mov	r15d, DWORD PTR -8[rbx]
	mov	ecx, DWORD PTR -16[rbx]
	mov	BYTE PTR -30[rbx], 1
	lea	edx, 5632[rbp]
	mov	r9d, 10
	lea	r8d, 10[r15]
	mov	DWORD PTR -8[rbx], r8d
	mov	DWORD PTR 32[rsp], 2
	call	sub_8085698
	mov	ecx, DWORD PTR -12[rbx]
	mov	edx, r12d
	mov	r9d, 10
	mov	DWORD PTR -16[rbx], eax
	lea	r8d, 170[r15]
	mov	DWORD PTR 32[rsp], 2
	call	sub_8085698
	movsx	edx, WORD PTR -22[rbx]
	mov	DWORD PTR -12[rbx], eax
	imul	edx, edx, 90
	movsx	rax, edx
	sar	edx, 31
	imul	rax, rax, 1374389535
	sar	rax, 37
	sub	eax, edx
	movsx	edx, WORD PTR -20[rbx]
	mov	WORD PTR -22[rbx], ax
	imul	edx, edx, 90
	movsx	rax, edx
	sar	edx, 31
	imul	rax, rax, 1374389535
	sar	rax, 37
	sub	eax, edx
	mov	WORD PTR -20[rbx], ax
.L284:
	lea	eax, 16[r14]
	mov	r8d, DWORD PTR -12[rbx]
	mov	edx, DWORD PTR -16[rbx]
	mov	DWORD PTR 40[rsp], r13d
	mov	DWORD PTR 32[rsp], eax
	mov	r9, rdi
	mov	rcx, rbx
	sar	edx, 8
	sar	r8d, 8
	call	sub_804EF68
	cmp	eax, 1
	jne	.L282
	mov	BYTE PTR -32[rbx], 0
	jmp	.L282
	.p2align 4,,10
	.p2align 3
.L288:
	lea	rax, sub_8050DC8[rip]
	mov	QWORD PTR [rcx], rax
	mov	ecx, 270
	call	m4aSongNumStop
	jmp	.L278
	.p2align 4,,10
	.p2align 3
.L289:
	call	sub_802C798
	lea	rax, sub_804F47C[rip]
	mov	edx, 715
	mov	ecx, -256
	mov	QWORD PTR [rbx], rax
	mov	eax, 120
	mov	WORD PTR 10[rbx], ax
	mov	BYTE PTR 8[rbx], 10
	mov	WORD PTR 34[rbx], dx
	mov	WORD PTR 64[rbx], cx
	mov	DWORD PTR 48[rbx], 8192
	jmp	.L276
	.seh_endproc
	.p2align 4
	.globl	sub_804F5BC
	.def	sub_804F5BC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804F5BC
sub_804F5BC:
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
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	xor	ebx, ebx
	xor	edx, edx
	mov	rsi, rcx
	lea	rbp, 320[rcx]
	jmp	.L298
	.p2align 4,,10
	.p2align 3
.L294:
	mov	rcx, rbp
	call	DisplaySprite
	movsx	eax, WORD PTR 54[rsi+rbx*4]
	mov	edx, DWORD PTR 120[rsi+rbx*8]
	lea	eax, 1280[rdx+rax]
	mov	DWORD PTR 120[rsi+rbx*8], eax
	movsx	eax, WORD PTR 56[rsi+rbx*4]
	add	DWORD PTR 124[rsi+rbx*8], eax
	call	SuperSonicGetFlags
	test	eax, 520
	je	.L300
.L296:
	mov	edx, 1
	.p2align 4,,10
	.p2align 3
.L292:
	add	rbx, 1
	cmp	rbx, 16
	je	.L301
.L298:
	cmp	BYTE PTR 22[rsi+rbx], 0
	je	.L292
	sub	BYTE PTR 38[rsi+rbx], 1
	jne	.L293
	mov	BYTE PTR 22[rsi+rbx], 0
.L293:
	movzx	eax, WORD PTR 121[rsi+rbx*8]
	sub	ax, WORD PTR [rdi]
	mov	WORD PTR 358[rsi], ax
	movzx	eax, WORD PTR 125[rsi+rbx*8]
	sub	ax, WORD PTR 4[rdi]
	mov	WORD PTR 360[rsi], ax
	test	edx, edx
	jne	.L294
	mov	rcx, rbp
	call	UpdateSpriteAnimation
	jmp	.L294
	.p2align 4,,10
	.p2align 3
.L300:
	mov	edx, DWORD PTR 120[rsi+rbx*8]
	mov	r8d, DWORD PTR 124[rsi+rbx*8]
	xor	r9d, r9d
	mov	rcx, rbp
	sar	edx, 8
	sar	r8d, 8
	call	sub_804F010
	cmp	eax, 1
	jne	.L296
	call	sub_802BA8C
	jmp	.L296
	.p2align 4,,10
	.p2align 3
.L301:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_804FE24
	.def	sub_804FE24;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804FE24
sub_804FE24:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, rcx
	mov	rcx, QWORD PTR 24[rax]
	sub	WORD PTR 16[rbx], 1
	jne	.L303
	lea	rax, sub_804FEFC[rip]
	mov	BYTE PTR 369[rbx], -1
	mov	QWORD PTR [rbx], rax
	mov	eax, 101
	mov	WORD PTR 16[rbx], ax
	mov	rax, QWORD PTR .refptr.gPseudoRandom[rip]
	imul	edx, DWORD PTR [rax], 1663525
	add	edx, 1013904223
	mov	DWORD PTR [rax], edx
	mov	eax, 37
	mul	dl
	mov	r9d, eax
	mov	eax, edx
	shr	r9w, 8
	sub	eax, r9d
	shr	al
	mov	r8d, eax
	lea	eax, [r8+r9]
	shr	al, 2
	lea	r8d, 0[0+rax*8]
	sub	r8d, eax
	lea	rax, gUnknown_080D89AC[rip]
	sub	edx, r8d
	movzx	edx, dl
	mov	rax, QWORD PTR [rax+rdx*8]
	lea	rdx, [rdx+rdx*2]
	mov	QWORD PTR 8[rbx], rax
	lea	rax, gUnknown_080D89C8[rip]
	lea	rax, [rax+rdx*4]
	movzx	edx, WORD PTR 4[rax]
	mov	WORD PTR 338[rbx], dx
	movzx	edx, BYTE PTR 6[rax]
	movzx	eax, BYTE PTR 8[rax]
	mov	BYTE PTR 368[rbx], dl
	mov	BYTE PTR 373[rbx], al
.L303:
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	movd	xmm0, DWORD PTR 72[rcx]
	lea	rsi, 248[rbx]
	movzx	eax, WORD PTR 4[rdx]
	movzx	edx, WORD PTR [rdx]
	sal	eax, 16
	or	eax, edx
	movzx	edx, WORD PTR 77[rcx]
	movd	xmm1, eax
	movzx	eax, WORD PTR 81[rcx]
	mov	rcx, rsi
	psubw	xmm0, xmm1
	sal	eax, 16
	or	eax, edx
	movd	xmm2, eax
	paddw	xmm0, xmm2
	movd	DWORD PTR 286[rbx], xmm0
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	sub_804F5BC
	.seh_endproc
	.p2align 4
	.globl	sub_804FEFC
	.def	sub_804FEFC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804FEFC
sub_804FEFC:
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
	mov	rax, QWORD PTR [rax]
	mov	rbp, QWORD PTR 24[rax]
	movzx	eax, WORD PTR 16[rcx]
	sub	eax, 1
	mov	rbx, rcx
	mov	WORD PTR 16[rcx], ax
	test	ax, ax
	jne	.L305
	lea	rax, sub_804FF9C[rip]
	mov	QWORD PTR [rcx], rax
	mov	eax, 280
	mov	WORD PTR 16[rcx], ax
.L306:
	mov	rcx, rbx
	call	sub_804F5BC
	nop
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L305:
	imul	ax, ax, -21845
	ror	ax
	cmp	ax, 10922
	ja	.L306
	lea	rdx, 44[rsp]
	lea	rcx, 40[rsp]
	call	SuperSonicGetPos
	movsx	esi, WORD PTR 72[rbp]
	movsx	edi, WORD PTR 74[rbp]
	mov	edx, DWORD PTR 40[rsp]
	mov	ecx, DWORD PTR 44[rsp]
	sal	esi, 8
	sal	edi, 8
	add	esi, DWORD PTR 76[rbp]
	add	edi, DWORD PTR 80[rbp]
	sub	edx, esi
	sub	ecx, edi
	sar	edx, 8
	sar	ecx, 8
	movsx	edx, dx
	movsx	ecx, cx
	call	sub_8004418
	movzx	edx, WORD PTR 16[rbx]
	mov	ecx, esi
	mov	WORD PTR 18[rbx], ax
	movzx	r9d, ax
	lea	r8d, [rdx+rdx*4]
	mov	edx, edi
	add	r8d, r8d
	neg	r8d
	add	r8w, 1280
	movsx	r8d, r8w
	call	[QWORD PTR 8[rbx]]
	jmp	.L306
	.seh_endproc
	.p2align 4
	.globl	sub_804FF9C
	.def	sub_804FF9C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804FF9C
sub_804FF9C:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rsi, QWORD PTR 24[rax]
	sub	WORD PTR 16[rcx], 1
	mov	rbx, rcx
	je	.L309
	mov	rcx, rbx
	call	sub_804F5BC
	nop
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L309:
	mov	eax, 717
	mov	edx, -256
	mov	WORD PTR 266[rcx], ax
	mov	WORD PTR 296[rcx], dx
	lea	rdx, 44[rsp]
	lea	rcx, 40[rsp]
	call	SuperSonicGetPos
	movsx	eax, WORD PTR 72[rsi]
	mov	edx, DWORD PTR 40[rsp]
	mov	ecx, DWORD PTR 44[rsp]
	sal	eax, 8
	add	eax, DWORD PTR 76[rsi]
	sub	edx, eax
	movsx	eax, WORD PTR 74[rsi]
	sar	edx, 8
	sal	eax, 8
	add	eax, DWORD PTR 80[rsi]
	movsx	edx, dx
	sub	ecx, eax
	sar	ecx, 8
	movsx	ecx, cx
	call	sub_8004418
	mov	ecx, 16
	mov	WORD PTR 20[rbx], ax
	lea	rax, sub_804FE24[rip]
	mov	WORD PTR 16[rbx], cx
	mov	rcx, rbx
	mov	QWORD PTR [rbx], rax
	call	sub_804F5BC
	nop
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8050DF8
	.def	sub_8050DF8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8050DF8
sub_8050DF8:
	.seh_endprologue
	jmp	sub_804F5BC
	.seh_endproc
	.p2align 4
	.globl	sub_8050030
	.def	sub_8050030;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8050030
sub_8050030:
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
	mov	eax, DWORD PTR 52[rcx]
	movzx	ebp, WORD PTR 50[rcx]
	mov	edx, eax
	mov	r12d, eax
	shr	edx, 12
	mov	rdi, rcx
	lea	rsi, 8[rcx]
	lea	rbx, 66[rcx]
	movzx	r8d, WORD PTR 48[rdi]
	lea	ecx, 1[rdx]
	cmp	cl, 7
	seta	r13b
	sub	eax, r8d
	and	r12d, 4095
	shr	eax, 12
	xor	eax, edx
	test	al, 7
	je	.L315
	mov	rdx, QWORD PTR 56[rdi]
	and	ecx, 7
	mov	rax, rsi
	add	rcx, rcx
	lea	r9, 40[rdx]
	.p2align 4,,10
	.p2align 3
.L314:
	mov	r8d, DWORD PTR 2[rax]
	add	rdx, 8
	add	rax, 8
	mov	DWORD PTR -8[rax], r8d
	movzx	r8d, WORD PTR -2[rax]
	mov	WORD PTR -4[rax], r8w
	mov	r8, QWORD PTR -8[rdx]
	movzx	r8d, WORD PTR [r8+rcx]
	mov	WORD PTR -2[rax], r8w
	cmp	rdx, r9
	jne	.L314
.L315:
	lea	r14, 76[rdi]
	.p2align 4,,10
	.p2align 3
.L313:
	mov	rcx, rsi
	mov	edx, r12d
	add	rbx, 2
	add	rsi, 8
	call	sub_80859F4
	mov	WORD PTR -2[rbx], ax
	cmp	rbx, r14
	jne	.L313
	movzx	eax, WORD PTR 48[rdi]
	movzx	edx, bp
	sub	eax, edx
	imul	eax, eax, 250
	sar	eax, 8
	add	ebp, eax
	mov	eax, r13d
	mov	WORD PTR 48[rdi], bp
	add	ebp, DWORD PTR 52[rdi]
	and	ebp, 32767
	mov	DWORD PTR 52[rdi], ebp
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_804E078
	.def	sub_804E078;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804E078
sub_804E078:
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
	mov	rbx, rcx
	call	sub_8050030
	test	al, al
	je	.L319
	mov	ecx, DWORD PTR 52[rbx]
	and	ecx, 4095
	cmp	BYTE PTR 12[rsi], 4
	jbe	.L320
	lea	rax, sub_804E15C[rip]
	mov	r9d, 160
	mov	DWORD PTR 52[rbx], ecx
	mov	QWORD PTR [rbx], rax
	lea	rax, gUnknown_080D8C38[rip]
	mov	QWORD PTR 56[rbx], rax
	mov	WORD PTR 50[rbx], r9w
.L319:
	movzx	ecx, WORD PTR 64[rbx]
	mov	QWORD PTR 76[rbx], 0
	test	cx, cx
	jne	.L329
.L321:
	and	cx, 1023
	mov	WORD PTR 64[rbx], cx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L320:
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	DWORD PTR 52[rbx], ecx
	mov	ecx, 40
	movsx	rdx, DWORD PTR [rax]
	mov	rax, rdx
	imul	rdx, rdx, 1431655766
	mov	r8d, eax
	sar	r8d, 31
	shr	rdx, 32
	sub	edx, r8d
	mov	r8d, 40
	lea	edx, [rdx+rdx*2]
	sub	eax, edx
	lea	rdx, sub_8050BFC[rip]
	mov	QWORD PTR [rbx], rdx
	add	eax, 1
	lea	rdx, gUnknown_080D8C24[rip]
	mov	QWORD PTR 56[rbx], rdx
	movzx	eax, al
	mov	edx, 126
	mov	WORD PTR 50[rbx], dx
	lea	rdx, [rax+rax*2]
	lea	rax, gUnknown_080D8DCC[rip]
	lea	rax, [rax+rdx*8]
	and	DWORD PTR 60[rsi], 4095
	mov	rdx, QWORD PTR [rax]
	mov	QWORD PTR 32[rsi], rdx
	mov	rdx, QWORD PTR 8[rax]
	movzx	eax, WORD PTR 16[rax]
	mov	QWORD PTR 64[rsi], rdx
	mov	WORD PTR 58[rsi], ax
	mov	WORD PTR 48[rbx], cx
	mov	WORD PTR 56[rsi], r8w
	jmp	.L319
	.p2align 4,,10
	.p2align 3
.L329:
	xor	edx, edx
	mov	r8d, 10
	call	sub_808558C
	test	ax, ax
	movzx	eax, WORD PTR 64[rbx]
	lea	ecx, -1[rax]
	js	.L321
	lea	ecx, 1[rax]
	and	cx, 1023
	mov	WORD PTR 64[rbx], cx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_804E15C
	.def	sub_804E15C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804E15C
sub_804E15C:
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rsi, QWORD PTR 24[rax]
	mov	rbx, rcx
	call	sub_8050030
	test	al, al
	jne	.L349
	mov	r8d, DWORD PTR 52[rbx]
	shr	r8d, 12
	cmp	r8b, 2
	jbe	.L330
	movzx	eax, WORD PTR 77[rbx]
	add	ax, WORD PTR 66[rbx]
	lea	rbp, gUnknown_080D89A5[rip]
	and	eax, 1023
	mov	rdi, QWORD PTR .refptr.gSineTable[rip]
	movsx	r9d, WORD PTR 72[rsi]
	lea	ecx, 140[rax]
	sub	eax, 116
	movsx	edx, WORD PTR 74[rsi]
	and	eax, 1023
	sal	r9d, 8
	add	r9d, DWORD PTR 76[rsi]
	lea	r10d, 256[rax]
	sal	edx, 8
	add	edx, DWORD PTR 80[rsi]
	movsx	r10, r10d
	movsx	r10d, WORD PTR [rdi+r10*2]
	sar	r10d, 2
	add	r10d, r9d
	movsx	r9d, WORD PTR [rdi+rax*2]
	sar	r9d, 2
	add	r9d, edx
	mov	edx, 1
.L334:
	movzx	eax, WORD PTR 66[rbx+rdx*2]
	add	eax, ecx
	and	eax, 1023
	mov	ecx, eax
	lea	eax, 256[rax]
	cdqe
	movsx	r12d, WORD PTR [rdi+rax*2]
	movzx	eax, BYTE PTR 0[rbp+rdx]
	add	rdx, 1
	mov	r11d, r12d
	imul	r11d, eax
	sar	r11d, 6
	add	r10d, r11d
	movsx	r11, ecx
	movsx	r11d, WORD PTR [rdi+r11*2]
	imul	eax, r11d
	sar	eax, 6
	add	r9d, eax
	cmp	rdx, 4
	jne	.L334
	movzx	eax, WORD PTR 74[rbx]
	lea	ebp, [r12+r12*8]
	lea	r12d, [r11+r11*8]
	sar	ebp, 5
	sar	r12d, 5
	add	ecx, eax
	add	ebp, r10d
	add	r12d, r9d
	and	ecx, 1023
	mov	r13d, ecx
	cmp	r8b, 5
	jbe	.L335
	mov	rax, QWORD PTR .refptr.gMPlayTable[rip]
	mov	rdx, QWORD PTR 48[rax]
	mov	rax, QWORD PTR .refptr.gSongTable[rip]
	mov	rax, QWORD PTR 4304[rax]
	cmp	QWORD PTR [rdx], rax
	je	.L336
	cmp	r8b, 6
	je	.L350
.L336:
	lea	rdx, 76[rsp]
	lea	rcx, 72[rsp]
	call	SuperSonicGetPos
	movzx	ecx, WORD PTR 64[rbx]
	mov	edx, DWORD PTR 72[rsp]
	add	ecx, r13d
	sub	edx, ebp
	mov	ebx, ecx
	mov	ecx, DWORD PTR 76[rsp]
	sar	edx, 8
	movsx	edx, dx
	and	bx, 1023
	sub	ecx, r12d
	sar	ecx, 8
	movsx	ecx, cx
	call	sub_8004418
	movsx	ecx, bx
	movzx	eax, ax
	lea	edx, 15[rax]
	cmp	edx, ecx
	jl	.L337
	sub	eax, 15
	cmp	ecx, eax
	jge	.L351
.L337:
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	rdx, QWORD PTR .LC25[rip]
	mov	r10d, 26
	or	WORD PTR [rax], 8192
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	DWORD PTR [rax], 240
	mov	QWORD PTR 16[rax], rdx
	mov	edx, 8
	mov	DWORD PTR 8[rax], 426
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	mov	WORD PTR 4[rax], dx
	mov	rdx, QWORD PTR .refptr.gPseudoRandom[rip]
	mov	DWORD PTR [rax], 540607
	imul	eax, DWORD PTR [rdx], 1663525
	add	eax, 1013904223
	mov	DWORD PTR [rdx], eax
	lea	edx, 256[rcx]
	mov	r8d, eax
	movsx	rdx, edx
	sar	r8d, 31
	movsx	r9d, WORD PTR [rdi+rdx*2]
	shr	r8d, 29
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	add	eax, r8d
	imul	r9d, r9d, 30
	and	eax, 7
	sub	eax, r8d
	mov	r8d, eax
	sar	r9d, 6
	add	r9d, ebp
	sar	r9d, 8
	sub	r9w, WORD PTR [rdx]
	neg	r8d
	mov	DWORD PTR 40[rsp], 8
	cmovns	eax, r8d
	movsx	r9d, r9w
	mov	r8d, 16
	sub	r10d, eax
	movsx	rax, ecx
	movsx	eax, WORD PTR [rdi+rax*2]
	movzx	r10d, r10w
	imul	eax, eax, 30
	sar	eax, 6
	add	eax, r12d
	sar	eax, 8
	sub	ax, WORD PTR 4[rdx]
	mov	edx, r10d
	cwde
	mov	DWORD PTR 32[rsp], eax
	call	ScreenMask_CreateShape
	nop
.L330:
	add	rsp, 88
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L349:
	lea	rax, sub_804E078[rip]
	and	DWORD PTR 52[rbx], 4095
	mov	ecx, 40
	xor	r8d, r8d
	mov	QWORD PTR [rbx], rax
	lea	rax, gUnknown_080D8BFC[rip]
	mov	QWORD PTR 56[rbx], rax
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	WORD PTR 50[rbx], cx
	and	WORD PTR [rax], -8193
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	QWORD PTR 16[rax], 0
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	mov	DWORD PTR [rax], 0
	mov	WORD PTR 4[rax], r8w
	add	rsp, 88
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L335:
	lea	r8, 76[rsp]
	lea	rdx, 72[rsp]
	mov	ecx, 8
	call	sub_802C704
	mov	edx, DWORD PTR 72[rsp]
	mov	ecx, DWORD PTR 76[rsp]
	sub	edx, ebp
	sub	ecx, r12d
	sar	edx, 8
	sar	ecx, 8
	movsx	edx, dx
	movsx	ecx, cx
	call	sub_8004418
	movzx	ecx, WORD PTR 64[rbx]
	mov	r8d, 10
	movzx	edx, ax
	add	ecx, r13d
	and	ecx, 1023
	call	sub_808558C
	test	ax, ax
	movzx	eax, WORD PTR 64[rbx]
	js	.L352
	cmp	ax, 511
	jbe	.L353
	add	eax, 4
	and	ax, 1023
.L340:
	mov	WORD PTR 64[rbx], ax
	add	rsp, 88
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L351:
	mov	DWORD PTR 60[rsp], ecx
	call	sub_802BB54
	lea	rax, sub_804F1EC[rip]
	mov	ecx, DWORD PTR 60[rsp]
	mov	QWORD PTR 1736[rsi], rax
	jmp	.L337
	.p2align 4,,10
	.p2align 3
.L353:
	lea	edx, 4[rax]
	cmp	ax, 128
	cmovb	eax, edx
	jmp	.L340
	.p2align 4,,10
	.p2align 3
.L350:
	mov	ecx, 269
	call	m4aSongNumStart
	jmp	.L336
	.p2align 4,,10
	.p2align 3
.L352:
	cmp	ax, 512
	jbe	.L339
	lea	edx, -4[rax]
	and	dx, 1023
	cmp	ax, 896
	cmova	eax, edx
	jmp	.L340
	.p2align 4,,10
	.p2align 3
.L339:
	sub	eax, 4
	and	ax, 1023
	jmp	.L340
	.seh_endproc
	.p2align 4
	.globl	sub_804E4CC
	.def	sub_804E4CC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_804E4CC
sub_804E4CC:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	sub_8050030
	mov	eax, DWORD PTR 52[rbx]
	mov	r11d, eax
	shr	eax, 12
	and	r11d, 4095
	cmp	ax, 4
	je	.L370
	cmp	ax, 3
	je	.L371
	cmp	ax, 2
	jne	.L354
	cmp	r11d, 3584
	jbe	.L354
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	r9d, 4095
	mov	r10, QWORD PTR .refptr.gBgPalette[rip]
	lea	rbx, sRGB_080D8E20[rip]
	sub	r9d, r11d
	mov	r11d, 128
	or	WORD PTR [rax], 512
	movzx	r9d, r9w
.L359:
	lea	r8d, -16[r11]
	mov	rcx, rbx
	.p2align 4,,10
	.p2align 3
.L360:
	movzx	edx, BYTE PTR 1[rcx]
	movzx	eax, BYTE PTR 2[rcx]
	mov	edi, r8d
	add	r8d, 1
	movzx	esi, BYTE PTR [rcx]
	add	rcx, 3
	imul	edx, r9d
	imul	eax, r9d
	imul	esi, r9d
	sar	edx, 9
	sar	eax, 9
	and	edx, 31
	sar	esi, 9
	and	eax, 31
	sal	edx, 5
	sal	eax, 10
	and	esi, 31
	or	eax, edx
	or	eax, esi
	mov	WORD PTR [r10+rdi*2], ax
	cmp	r8d, r11d
	jne	.L360
	add	rbx, 48
	lea	r11d, 16[r8]
	cmp	r8d, 160
	jne	.L359
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 1
.L354:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L370:
	lea	rax, sub_804E078[rip]
	mov	DWORD PTR 52[rbx], r11d
	mov	QWORD PTR [rbx], rax
	lea	rax, gUnknown_080D8BFC[rip]
	mov	QWORD PTR 56[rbx], rax
	mov	eax, 40
	mov	WORD PTR 50[rbx], ax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L371:
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	lea	rcx, sRGB_080D8E20[rip+144]
	xor	r8d, r8d
	mov	r9, QWORD PTR .refptr.gObjPalette[rip]
	mov	r10, QWORD PTR .refptr.gBgPalette[rip]
	lea	rsi, 48[rcx]
	and	WORD PTR [rax], -513
	.p2align 4,,10
	.p2align 3
.L358:
	movzx	edx, BYTE PTR 1[rcx]
	movzx	eax, BYTE PTR 2[rcx]
	add	rcx, 3
	movzx	edi, BYTE PTR -3[rcx]
	imul	edx, r11d
	imul	eax, r11d
	imul	edi, r11d
	sar	edx, 12
	sar	eax, 12
	and	edx, 31
	sar	edi, 12
	and	eax, 31
	sal	edx, 5
	sal	eax, 10
	and	edi, 31
	or	eax, edx
	or	eax, edi
	mov	WORD PTR 256[r8+r9], ax
	mov	WORD PTR [r10+r8], ax
	add	r8, 2
	cmp	rsi, rcx
	jne	.L358
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	mov	BYTE PTR 84[rbx], 0
	or	DWORD PTR [rax], 3
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8050BFC
	.def	sub_8050BFC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8050BFC
sub_8050BFC:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	sub_8050030
	test	al, al
	je	.L373
	lea	rax, sub_8050C50[rip]
	and	DWORD PTR 52[rbx], 4095
	mov	QWORD PTR [rbx], rax
	lea	rax, gUnknown_080D8C24[rip]
	mov	QWORD PTR 56[rbx], rax
	mov	eax, 512
	mov	WORD PTR 50[rbx], ax
.L372:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L373:
	cmp	DWORD PTR 52[rbx], 8191
	jbe	.L372
	mov	ecx, 272
	call	m4aSongNumStartOrContinue
	mov	eax, DWORD PTR 80[rbx]
	sub	eax, 87
	add	DWORD PTR 76[rbx], eax
	mov	DWORD PTR 80[rbx], eax
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8050C50
	.def	sub_8050C50;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8050C50
sub_8050C50:
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
	mov	rbx, rcx
	call	sub_8050030
	movd	xmm1, DWORD PTR 80[rbx]
	mov	eax, 87
	movq	xmm0, QWORD PTR 76[rbx]
	movd	xmm2, eax
	punpckldq	xmm1, xmm2
	paddd	xmm0, xmm1
	pshufd	xmm3, xmm0, 0xe5
	movd	eax, xmm3
	movq	QWORD PTR 76[rbx], xmm0
	test	eax, eax
	je	.L377
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L377:
	lea	rax, sub_804E078[rip]
	mov	edx, 40
	mov	ecx, 272
	mov	DWORD PTR 52[rbx], 0
	mov	QWORD PTR [rbx], rax
	lea	rax, gUnknown_080D8BFC[rip]
	mov	QWORD PTR 56[rbx], rax
	mov	eax, 40
	mov	WORD PTR 50[rbx], ax
	lea	rax, sub_8050BD8[rip]
	and	DWORD PTR 60[rsi], 4095
	mov	QWORD PTR 32[rsi], rax
	lea	rax, gUnknown_080D8D3C[rip]
	mov	QWORD PTR 64[rsi], rax
	mov	WORD PTR 58[rsi], dx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	m4aSongNumStop
	.seh_endproc
	.p2align 4
	.globl	sub_8050CBC
	.def	sub_8050CBC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8050CBC
sub_8050CBC:
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
	mov	rbx, rcx
	call	sub_8050030
	mov	eax, DWORD PTR 52[rbx]
	mov	edx, eax
	shr	edx, 12
	cmp	dl, 2
	ja	.L379
	sub	DWORD PTR 76[rsi], 192
.L378:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L379:
	cmp	dl, 3
	jne	.L378
	and	eax, 4095
	mov	DWORD PTR 52[rbx], eax
	lea	rax, sub_8050D24[rip]
	mov	QWORD PTR [rbx], rax
	lea	rax, gUnknown_080D8C10[rip]
	mov	QWORD PTR 56[rbx], rax
	mov	eax, 80
	mov	WORD PTR 50[rbx], ax
	lea	rax, sub_804F108[rip]
	mov	QWORD PTR 1736[rsi], rax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8050D24
	.def	sub_8050D24;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8050D24
sub_8050D24:
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
	mov	rbx, rcx
	call	sub_8050030
	mov	eax, DWORD PTR 52[rbx]
	mov	edx, eax
	shr	edx, 12
	cmp	dl, 1
	jbe	.L381
	and	eax, 4095
	mov	edx, 100
	mov	DWORD PTR 52[rbx], eax
	lea	rax, sub_8050D9C[rip]
	mov	QWORD PTR [rbx], rax
	lea	rax, gUnknown_080D8C10[rip]
	mov	QWORD PTR 56[rbx], rax
	mov	eax, 80
	mov	WORD PTR 50[rbx], ax
	lea	rax, sub_8050BF0[rip]
	mov	QWORD PTR 32[rsi], rax
	lea	rax, gUnknown_080D8D4C[rip]
	mov	QWORD PTR 64[rsi], rax
	lea	rax, sub_8050DC8[rip]
	and	DWORD PTR 60[rsi], 4095
	mov	WORD PTR 58[rsi], dx
	mov	QWORD PTR 1736[rsi], rax
.L381:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8050D9C
	.def	sub_8050D9C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8050D9C
sub_8050D9C:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	add	DWORD PTR 76[rax], 256
	jmp	sub_8050030
	.seh_endproc
	.p2align 4
	.globl	sub_8050104
	.def	sub_8050104;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8050104
sub_8050104:
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
	mov	eax, DWORD PTR 28[rcx]
	movzx	esi, WORD PTR 26[rcx]
	mov	edx, eax
	mov	ebp, eax
	shr	edx, 12
	mov	rbx, rcx
	lea	r8, 8[rcx]
	lea	ecx, 1[rdx]
	movzx	r9d, WORD PTR 24[rbx]
	cmp	cl, 7
	seta	dil
	and	bp, 4095
	sub	eax, r9d
	shr	eax, 12
	xor	eax, edx
	test	al, 7
	je	.L385
	mov	rdx, QWORD PTR 32[rbx]
	and	ecx, 7
	mov	rax, r8
	add	rcx, rcx
	lea	r10, 16[rdx]
.L386:
	mov	r9d, DWORD PTR 2[rax]
	add	rdx, 8
	add	rax, 8
	mov	DWORD PTR -8[rax], r9d
	movzx	r9d, WORD PTR -2[rax]
	mov	WORD PTR -4[rax], r9w
	mov	r9, QWORD PTR -8[rdx]
	movzx	r9d, WORD PTR [r9+rcx]
	mov	WORD PTR -2[rax], r9w
	cmp	r10, rdx
	jne	.L386
.L385:
	movzx	ebp, bp
	mov	rcx, r8
	mov	edx, ebp
	call	sub_8085968
	mov	edx, ebp
	lea	rcx, 16[rbx]
	mov	WORD PTR 40[rbx], ax
	call	sub_8085968
	movzx	edx, si
	mov	WORD PTR 42[rbx], ax
	movzx	eax, WORD PTR 24[rbx]
	sub	eax, edx
	imul	eax, eax, 250
	sar	eax, 8
	add	esi, eax
	mov	eax, edi
	mov	WORD PTR 24[rbx], si
	add	esi, DWORD PTR 28[rbx]
	and	esi, 32767
	mov	DWORD PTR 28[rbx], esi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8050BD8
	.def	sub_8050BD8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8050BD8
sub_8050BD8:
	.seh_endprologue
	jmp	sub_8050104
	.seh_endproc
	.p2align 4
	.globl	sub_8050BF0
	.def	sub_8050BF0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8050BF0
sub_8050BF0:
	.seh_endprologue
	jmp	sub_8050104
	.seh_endproc
	.p2align 4
	.globl	sub_8050BE4
	.def	sub_8050BE4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8050BE4
sub_8050BE4:
	.seh_endprologue
	jmp	sub_8050104
	.seh_endproc
	.p2align 4
	.globl	sub_80501D4
	.def	sub_80501D4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80501D4
sub_80501D4:
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
	sub	rsp, 120
	.seh_stackalloc	120
	movups	XMMWORD PTR 96[rsp], xmm6
	.seh_savexmm	xmm6, 96
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gStageFlags[rip]
	movzx	eax, WORD PTR [rsi]
	mov	edx, eax
	or	edx, 32
	cmp	BYTE PTR 172[rcx], 0
	mov	WORD PTR [rsi], dx
	mov	rbx, rcx
	jne	.L395
	cmp	BYTE PTR 15[rcx], 0
	je	.L414
	cmp	BYTE PTR 12[rcx], 0
	jne	.L398
.L413:
	mov	rcx, QWORD PTR .refptr.gDispCnt[rip]
	movzx	eax, WORD PTR [rcx]
.L397:
	and	WORD PTR 16[rbx], -2
.L399:
	or	ah, 4
	mov	WORD PTR [rcx], ax
	and	dh, 1
	jne	.L394
.L416:
	movsx	esi, WORD PTR 74[rbx]
	movsx	edi, WORD PTR 72[rbx]
	mov	r9d, 48
	mov	r8d, 256
	mov	r14, QWORD PTR .refptr.gCamera[rip]
	mov	rax, QWORD PTR .refptr.gBgAffineRegs[rip]
	mov	edx, 256
	sal	esi, 8
	add	esi, DWORD PTR 80[rbx]
	sal	edi, 8
	add	edi, DWORD PTR 76[rbx]
	mov	ebp, esi
	mov	r12d, edi
	movzx	ecx, WORD PTR 165[rbx]
	add	cx, WORD PTR 154[rbx]
	sar	ebp, 8
	sub	ebp, DWORD PTR 4[r14]
	sar	r12d, 8
	sub	r12d, DWORD PTR [r14]
	mov	QWORD PTR 56[rsp], rax
	movsx	eax, bp
	mov	r15d, ecx
	and	ecx, 1023
	mov	DWORD PTR 48[rsp], eax
	movsx	eax, r12w
	and	r15w, 1023
	mov	DWORD PTR 40[rsp], eax
	mov	DWORD PTR 32[rsp], 51
	call	sub_8003EE4
	cmp	BYTE PTR 172[rbx], 0
	mov	DWORD PTR 2456[rbx], 0
	mov	DWORD PTR 2536[rbx], 0
	mov	DWORD PTR 2624[rbx], 0
	mov	DWORD PTR 2712[rbx], 0
	mov	DWORD PTR 2800[rbx], 0
	je	.L402
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	mov	rcx, rbx
	mov	eax, DWORD PTR [rax]
	add	eax, eax
	and	eax, 510
	movzx	edx, WORD PTR [rdx+rax*2]
	sar	dx, 6
	movzx	edx, dx
	call	sub_80508C4.part.0
.L402:
	test	BYTE PTR 16[rbx], 1
	jne	.L415
.L403:
	add	r15w, 140
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	mov	QWORD PTR 88[rsp], rbx
	lea	r8, 156[rbx]
	lea	eax, 768[r15]
	movd	xmm6, DWORD PTR .LC28[rip]
	lea	r12, gUnknown_080D89A5[rip]
	and	eax, 1023
	lea	edx, 256[rax]
	movsx	rdx, edx
	movsx	ebp, WORD PTR [rcx+rdx*2]
	sar	ebp, 2
	add	ebp, edi
	movsx	edi, WORD PTR [rcx+rax*2]
	sar	edi, 2
	add	edi, esi
	lea	rsi, 2576[rbx]
.L404:
	movzx	ebx, WORD PTR [r8]
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	lea	r13, -72[rsi]
	mov	QWORD PTR 72[rsp], r8
	mov	r9, QWORD PTR .refptr.gOamMatrixIndex[rip]
	add	r12, 1
	add	ebx, r15d
	mov	r15d, ebx
	and	ebx, 1023
	lea	eax, 256[rbx]
	and	r15w, 1023
	cdqe
	movsx	r10d, WORD PTR [rcx+rax*2]
	movzx	eax, BYTE PTR [r12]
	mov	edx, r10d
	mov	DWORD PTR 80[rsp], r10d
	imul	edx, eax
	sar	edx, 6
	add	ebp, edx
	movsx	rdx, ebx
	movsx	ecx, WORD PTR [rcx+rdx*2]
	imul	eax, ecx
	mov	DWORD PTR 84[rsp], ecx
	mov	ecx, ebp
	sar	ecx, 8
	sub	cx, WORD PTR [r14]
	mov	WORD PTR -34[rsi], cx
	sar	eax, 6
	add	edi, eax
	mov	rax, QWORD PTR .refptr.gOamMatrixIndex[rip]
	mov	edx, edi
	movzx	eax, BYTE PTR [rax]
	sar	edx, 8
	sub	dx, WORD PTR 4[r14]
	mov	WORD PTR 6[rsi], cx
	mov	WORD PTR -32[rsi], dx
	mov	rcx, r13
	lea	r11d, 1[rax]
	or	eax, 8288
	or	DWORD PTR -40[rsi], eax
	mov	WORD PTR 8[rsi], dx
	mov	WORD PTR [rsi], r15w
	movd	DWORD PTR 2[rsi], xmm6
	mov	BYTE PTR [r9], r11b
	call	UpdateSpriteAnimation
	mov	rdx, rsi
	mov	rcx, r13
	add	rsi, 88
	call	TransformSprite
	mov	rcx, r13
	call	DisplaySprite
	mov	r8, QWORD PTR 72[rsp]
	mov	r10d, DWORD PTR 80[rsp]
	lea	rax, gUnknown_080D89A5[rip+3]
	add	r8, 2
	cmp	r12, rax
	jne	.L404
	mov	r9d, ebx
	mov	rbx, QWORD PTR 88[rsp]
	lea	edx, [r10+r10*8]
	sar	edx, 5
	movzx	ecx, WORD PTR 162[rbx]
	movzx	eax, WORD PTR 152[rbx]
	add	edx, ebp
	lea	rsi, 2768[rbx]
	sar	edx, 8
	sub	dx, WORD PTR [r14]
	movd	DWORD PTR 2842[rbx], xmm6
	add	ecx, r9d
	mov	WORD PTR 2806[rbx], dx
	add	ecx, eax
	mov	eax, DWORD PTR 84[rsp]
	mov	WORD PTR 2846[rbx], dx
	and	ecx, 1023
	lea	eax, [rax+rax*8]
	mov	WORD PTR 2840[rbx], cx
	mov	rcx, rsi
	sar	eax, 5
	add	eax, edi
	mov	rdi, QWORD PTR .refptr.gOamMatrixIndex[rip]
	sar	eax, 8
	sub	ax, WORD PTR 4[r14]
	movzx	r8d, BYTE PTR [rdi]
	mov	WORD PTR 2808[rbx], ax
	mov	WORD PTR 2848[rbx], ax
	lea	r9d, 1[r8]
	or	r8d, 8288
	or	DWORD PTR 2800[rbx], r8d
	mov	BYTE PTR [rdi], r9b
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	lea	rdx, 2840[rbx]
	call	TransformSprite
	nop
	movups	xmm6, XMMWORD PTR 96[rsp]
	mov	rcx, rsi
	add	rsp, 120
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
.L395:
	mov	rcx, QWORD PTR .refptr.gDispCnt[rip]
	movzx	eax, WORD PTR [rcx]
	test	BYTE PTR 16[rbx], 1
	je	.L399
	and	ah, -5
	mov	WORD PTR [rcx], ax
	and	dh, 1
	je	.L416
.L394:
	movups	xmm6, XMMWORD PTR 96[rsp]
	add	rsp, 120
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
.L398:
	and	eax, -33
	mov	WORD PTR [rsi], ax
	mov	edx, eax
	jmp	.L413
	.p2align 4,,10
	.p2align 3
.L414:
	mov	rcx, QWORD PTR 2432[rcx]
	call	VramFree
	mov	ecx, 42
	call	VramMalloc
	mov	edx, -256
	mov	rcx, QWORD PTR .refptr.gDispCnt[rip]
	mov	WORD PTR 2472[rbx], dx
	mov	rdx, QWORD PTR .refptr.gWinRegs[rip]
	mov	QWORD PTR 2432[rbx], rax
	mov	eax, 791
	mov	DWORD PTR 20[rdx], 0
	mov	rdx, QWORD PTR .refptr.gBldRegs[rip]
	mov	WORD PTR 2442[rbx], ax
	movzx	eax, WORD PTR [rcx]
	mov	DWORD PTR [rdx], 0
	movzx	edx, WORD PTR [rsi]
	mov	BYTE PTR 15[rbx], 1
	and	ax, 32767
	jmp	.L397
	.p2align 4,,10
	.p2align 3
.L415:
	mov	WORD PTR 2462[rbx], r12w
	lea	r13, 2424[rbx]
	or	DWORD PTR 2456[rbx], 8192
	mov	rcx, r13
	mov	WORD PTR 2464[rbx], bp
	call	UpdateSpriteAnimation
	mov	rcx, r13
	call	DisplaySprite
	jmp	.L403
	.seh_endproc
	.p2align 4
	.globl	sub_80505B8
	.def	sub_80505B8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80505B8
sub_80505B8:
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
	sub	rsp, 120
	.seh_stackalloc	120
	movups	XMMWORD PTR 96[rsp], xmm6
	.seh_savexmm	xmm6, 96
	.seh_endprologue
	cmp	BYTE PTR 172[rcx], 0
	mov	rbx, rcx
	jne	.L418
	mov	rcx, QWORD PTR 2432[rcx]
	test	rcx, rcx
	je	.L419
	call	VramFree
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	QWORD PTR 2432[rbx], 0
	and	WORD PTR [rax], 32767
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	DWORD PTR 20[rax], 0
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	mov	DWORD PTR [rax], 0
.L419:
	and	WORD PTR 16[rbx], -2
.L418:
	movsx	esi, WORD PTR 74[rbx]
	movsx	edi, WORD PTR 72[rbx]
	mov	r9d, 48
	mov	r8d, 256
	mov	r15, QWORD PTR .refptr.gCamera[rip]
	mov	rax, QWORD PTR .refptr.gBgAffineRegs[rip]
	mov	edx, 256
	sal	esi, 8
	add	esi, DWORD PTR 80[rbx]
	sal	edi, 8
	add	edi, DWORD PTR 76[rbx]
	mov	ebp, esi
	mov	r12d, edi
	movzx	ecx, WORD PTR 165[rbx]
	add	cx, WORD PTR 154[rbx]
	sar	ebp, 8
	sub	ebp, DWORD PTR 4[r15]
	sar	r12d, 8
	sub	r12d, DWORD PTR [r15]
	mov	QWORD PTR 56[rsp], rax
	movsx	eax, bp
	mov	r13d, ecx
	and	ecx, 1023
	mov	DWORD PTR 48[rsp], eax
	movsx	eax, r12w
	and	r13w, 1023
	mov	DWORD PTR 40[rsp], eax
	mov	DWORD PTR 32[rsp], 51
	call	sub_8003EE4
	cmp	BYTE PTR 172[rbx], 0
	mov	DWORD PTR 2456[rbx], 0
	mov	DWORD PTR 2536[rbx], 0
	mov	DWORD PTR 2624[rbx], 0
	mov	DWORD PTR 2712[rbx], 0
	mov	DWORD PTR 2800[rbx], 0
	je	.L420
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	edx, 3084
	mov	DWORD PTR 2456[rbx], 256
	or	WORD PTR [rax], -32768
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	DWORD PTR 20[rax], 14133
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	mov	WORD PTR 4[rax], dx
	lea	rdx, 2888[rbx]
	mov	DWORD PTR [rax], 202117958
	lea	rax, 2536[rbx]
.L421:
	or	DWORD PTR [rax], 256
	add	rax, 88
	cmp	rax, rdx
	jne	.L421
.L420:
	test	BYTE PTR 16[rbx], 1
	jne	.L432
.L422:
	add	r13w, 140
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	mov	QWORD PTR 88[rsp], rbx
	lea	r8, 156[rbx]
	lea	eax, 768[r13]
	movd	xmm6, DWORD PTR .LC28[rip]
	lea	r12, gUnknown_080D89A5[rip]
	and	eax, 1023
	lea	edx, 256[rax]
	movsx	rdx, edx
	movsx	ebp, WORD PTR [rcx+rdx*2]
	sar	ebp, 2
	add	ebp, edi
	movsx	edi, WORD PTR [rcx+rax*2]
	sar	edi, 2
	add	edi, esi
	lea	rsi, 2576[rbx]
.L423:
	movzx	ebx, WORD PTR [r8]
	lea	r14, -72[rsi]
	mov	QWORD PTR 72[rsp], r8
	add	r12, 1
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	add	ebx, r13d
	mov	r9, QWORD PTR .refptr.gOamMatrixIndex[rip]
	mov	r13d, ebx
	and	ebx, 1023
	lea	eax, 256[rbx]
	and	r13w, 1023
	cdqe
	movsx	r10d, WORD PTR [rdx+rax*2]
	movzx	eax, BYTE PTR [r12]
	mov	edx, r10d
	mov	DWORD PTR 80[rsp], r10d
	imul	edx, eax
	sar	edx, 6
	add	ebp, edx
	movsx	rdx, ebx
	movsx	ecx, WORD PTR [rcx+rdx*2]
	imul	eax, ecx
	mov	DWORD PTR 84[rsp], ecx
	mov	ecx, ebp
	sar	ecx, 8
	sub	cx, WORD PTR [r15]
	mov	WORD PTR -34[rsi], cx
	sar	eax, 6
	add	edi, eax
	mov	rax, QWORD PTR .refptr.gOamMatrixIndex[rip]
	mov	edx, edi
	movzx	eax, BYTE PTR [rax]
	sar	edx, 8
	sub	dx, WORD PTR 4[r15]
	mov	WORD PTR 6[rsi], cx
	mov	WORD PTR -32[rsi], dx
	mov	rcx, r14
	lea	r11d, 1[rax]
	or	eax, 4192
	or	DWORD PTR -40[rsi], eax
	mov	WORD PTR 8[rsi], dx
	mov	WORD PTR [rsi], r13w
	movd	DWORD PTR 2[rsi], xmm6
	mov	BYTE PTR [r9], r11b
	call	UpdateSpriteAnimation
	mov	rdx, rsi
	mov	rcx, r14
	add	rsi, 88
	call	TransformSprite
	mov	rcx, r14
	call	DisplaySprite
	mov	r8, QWORD PTR 72[rsp]
	mov	r10d, DWORD PTR 80[rsp]
	lea	rax, gUnknown_080D89A5[rip+3]
	add	r8, 2
	cmp	r12, rax
	jne	.L423
	mov	r9d, ebx
	mov	rbx, QWORD PTR 88[rsp]
	lea	edx, [r10+r10*8]
	sar	edx, 5
	movzx	ecx, WORD PTR 162[rbx]
	movzx	eax, WORD PTR 152[rbx]
	add	edx, ebp
	lea	rsi, 2768[rbx]
	sar	edx, 8
	sub	dx, WORD PTR [r15]
	movd	DWORD PTR 2842[rbx], xmm6
	add	ecx, r9d
	mov	WORD PTR 2806[rbx], dx
	add	ecx, eax
	mov	eax, DWORD PTR 84[rsp]
	mov	WORD PTR 2846[rbx], dx
	and	ecx, 1023
	lea	eax, [rax+rax*8]
	mov	WORD PTR 2840[rbx], cx
	mov	rcx, rsi
	sar	eax, 5
	add	eax, edi
	mov	rdi, QWORD PTR .refptr.gOamMatrixIndex[rip]
	sar	eax, 8
	sub	ax, WORD PTR 4[r15]
	movzx	r8d, BYTE PTR [rdi]
	mov	WORD PTR 2808[rbx], ax
	mov	WORD PTR 2848[rbx], ax
	lea	r9d, 1[r8]
	or	r8d, 4192
	or	DWORD PTR 2800[rbx], r8d
	mov	BYTE PTR [rdi], r9b
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	lea	rdx, 2840[rbx]
	call	TransformSprite
	nop
	movups	xmm6, XMMWORD PTR 96[rsp]
	mov	rcx, rsi
	add	rsp, 120
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
.L432:
	mov	WORD PTR 2462[rbx], r12w
	lea	r14, 2424[rbx]
	or	DWORD PTR 2456[rbx], 8192
	mov	rcx, r14
	mov	WORD PTR 2464[rbx], bp
	call	UpdateSpriteAnimation
	mov	rcx, r14
	call	DisplaySprite
	jmp	.L422
	.seh_endproc
	.p2align 4
	.globl	Task_EggmanKidnapsVanilla
	.def	Task_EggmanKidnapsVanilla;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_EggmanKidnapsVanilla
Task_EggmanKidnapsVanilla:
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
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	rbx, QWORD PTR 24[rcx]
	and	WORD PTR [rax], -24577
	sub	WORD PTR 18[rbx], 1
	lea	rdi, 32[rbx]
	lea	rsi, 88[rbx]
	lea	rdx, 1736[rbx]
	je	.L437
	mov	rcx, rdx
	call	[QWORD PTR 1736[rbx]]
	mov	rcx, rdi
	call	[QWORD PTR 32[rbx]]
	mov	rcx, rsi
	call	[QWORD PTR 88[rbx]]
	mov	rcx, rbx
	call	sub_80505B8
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	rdx, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	mov	DWORD PTR 20[rax], 10037
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 4
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	add	rax, 22
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR .refptr.gHBlankCopySize[rip]
	mov	BYTE PTR [rax], 2
	mov	rax, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	mov	eax, DWORD PTR [rax]
	lea	r9, 478[rdx]
	lea	ecx, [rax+rax*4]
	sal	ecx, 3
	.p2align 4,,10
	.p2align 3
.L435:
	mov	eax, ecx
	add	rdx, 2
	add	ecx, 40
	and	eax, 1016
	movzx	eax, WORD PTR [r8+rax*2]
	sar	ax, 12
	add	eax, 44
	mov	WORD PTR -2[rdx], ax
	cmp	rdx, r9
	jne	.L435
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
.L437:
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	and	DWORD PTR [rax], -5
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.globl	sub_80508C4
	.def	sub_80508C4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80508C4
sub_80508C4:
	.seh_endprologue
	test	r8b, r8b
	je	.L438
	movzx	edx, dx
	jmp	sub_80508C4.part.0
	.p2align 4,,10
	.p2align 3
.L438:
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8050958
	.def	sub_8050958;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8050958
sub_8050958:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	movzx	eax, BYTE PTR 13[rcx]
	test	al, al
	je	.L440
	sub	eax, 1
	mov	BYTE PTR 13[rcx], al
	test	al, al
	jne	.L442
	movdqu	xmm0, XMMWORD PTR .LC31[rip]
	mov	rdx, QWORD PTR .refptr.gObjPalette[rip]
	mov	rax, QWORD PTR .refptr.gBgPalette[rip]
	movups	XMMWORD PTR 256[rdx], xmm0
	movups	XMMWORD PTR [rax], xmm0
	movdqu	xmm0, XMMWORD PTR .LC32[rip]
	movups	XMMWORD PTR 272[rdx], xmm0
	movups	XMMWORD PTR 16[rax], xmm0
.L443:
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 3
.L440:
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L442:
	mov	rax, QWORD PTR .refptr.gStageTime[rip]
	lea	r8, gUnknown_080D8EF0[rip]
	mov	edx, DWORD PTR [rax]
	shr	edx
	and	edx, 15
	cmp	BYTE PTR 12[rcx], 3
	movzx	edx, dx
	ja	.L444
	mov	r11, QWORD PTR .refptr.gObjPalette[rip]
	mov	r10, QWORD PTR .refptr.gBgPalette[rip]
	lea	rbx, 32[r8]
	.p2align 4,,10
	.p2align 3
.L445:
	movzx	ecx, WORD PTR [r8]
	mov	eax, edx
	add	r8, 2
	add	edx, 1
	and	eax, 15
	shr	cx, 5
	lea	r9d, 128[rax]
	mov	WORD PTR [r11+r9*2], cx
	mov	WORD PTR [r10+rax*2], cx
	cmp	rbx, r8
	jne	.L445
	jmp	.L443
	.p2align 4,,10
	.p2align 3
.L444:
	mov	r11, QWORD PTR .refptr.gObjPalette[rip]
	mov	r10, QWORD PTR .refptr.gBgPalette[rip]
	lea	rsi, 32[r8]
	.p2align 4,,10
	.p2align 3
.L446:
	movzx	r9d, WORD PTR [r8]
	mov	ecx, edx
	add	r8, 2
	add	edx, 1
	and	ecx, 15
	mov	eax, r9d
	mov	ebx, r9d
	shr	ax, 5
	sal	ebx, 5
	or	eax, ebx
	or	eax, r9d
	lea	r9d, 128[rcx]
	mov	WORD PTR [r11+r9*2], ax
	mov	WORD PTR [r10+rcx*2], ax
	cmp	rsi, r8
	jne	.L446
	jmp	.L443
	.seh_endproc
	.p2align 4
	.globl	Task_TrueArea53BossMain
	.def	Task_TrueArea53BossMain;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_TrueArea53BossMain
Task_TrueArea53BossMain:
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
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	or	WORD PTR [rax], 32
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	ecx, DWORD PTR 164[rbx]
	and	WORD PTR [rax], -24577
	mov	eax, DWORD PTR 76[rbx]
	sar	ecx, 8
	lea	edx, 1280[rax]
	movzx	eax, WORD PTR 154[rbx]
	mov	DWORD PTR 76[rbx], edx
	lea	eax, 860[rax+rcx]
	lea	rcx, 176[rbx]
	and	ax, 1023
	mov	WORD PTR 186[rbx], ax
	movsx	eax, WORD PTR 72[rbx]
	sal	eax, 8
	add	eax, edx
	mov	DWORD PTR 188[rbx], eax
	movsx	eax, WORD PTR 74[rbx]
	sal	eax, 8
	add	eax, DWORD PTR 80[rbx]
	mov	DWORD PTR 192[rbx], eax
	call	[QWORD PTR 176[rbx]]
	lea	rcx, 32[rbx]
	call	[QWORD PTR 32[rbx]]
	lea	rcx, 88[rbx]
	call	[QWORD PTR 88[rbx]]
	mov	rcx, rbx
	call	sub_80501D4
	mov	rcx, rbx
	call	sub_8050958
	movzx	eax, WORD PTR 18[rbx]
	add	DWORD PTR 76[rbx], 256
	sub	eax, 1
	mov	WORD PTR 18[rbx], ax
	test	ax, ax
	jne	.L453
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_804D9DC[rip]
	mov	QWORD PTR 40[rax], rsi
.L452:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L453:
	cmp	ax, 79
	jne	.L452
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	xor	edx, edx
	mov	r8d, 1
	mov	ecx, 20
	mov	WORD PTR 2916[rbx], cx
	movdqu	xmm0, XMMWORD PTR .LC33[rip]
	lea	rcx, 2856[rbx]
	mov	QWORD PTR 2864[rbx], rax
	add	rax, 57344
	mov	QWORD PTR 2880[rbx], rax
	mov	WORD PTR 2874[rbx], dx
	mov	BYTE PTR 2918[rbx], 0
	mov	WORD PTR 2922[rbx], r8w
	movups	XMMWORD PTR 2900[rbx], xmm0
	call	DrawBackground
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	r9d, 7170
	mov	WORD PTR 2[rax], r9w
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_804D9DC
	.def	Task_804D9DC;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_804D9DC
Task_804D9DC:
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
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	and	WORD PTR [rax], -24577
	mov	eax, DWORD PTR 76[rbx]
	mov	ecx, DWORD PTR 164[rbx]
	lea	edx, 1280[rax]
	movzx	eax, WORD PTR 154[rbx]
	sar	ecx, 8
	mov	DWORD PTR 76[rbx], edx
	lea	eax, 860[rax+rcx]
	and	ax, 1023
	mov	WORD PTR 186[rbx], ax
	movsx	eax, WORD PTR 72[rbx]
	sal	eax, 8
	add	eax, edx
	mov	DWORD PTR 188[rbx], eax
	movsx	eax, WORD PTR 74[rbx]
	sal	eax, 8
	add	eax, DWORD PTR 80[rbx]
	cmp	BYTE PTR 12[rbx], 0
	mov	DWORD PTR 192[rbx], eax
	je	.L459
	lea	rcx, 176[rbx]
	call	[QWORD PTR 176[rbx]]
	lea	rcx, 1736[rbx]
	call	[QWORD PTR 1736[rbx]]
	lea	rcx, 1816[rbx]
	call	[QWORD PTR 1816[rbx]]
	lea	rcx, 2032[rbx]
	call	[QWORD PTR 2032[rbx]]
	lea	rcx, 32[rbx]
	call	[QWORD PTR 32[rbx]]
	lea	rcx, 88[rbx]
	call	[QWORD PTR 88[rbx]]
	mov	rcx, rbx
	call	sub_804ECC4
	mov	rcx, rbx
	call	sub_80501D4
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	sub_8050958
	.p2align 4,,10
	.p2align 3
.L459:
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_SE1[rip]
	call	MPlayStop
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_SE2[rip]
	call	MPlayStop
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_SE3[rip]
	call	MPlayStop
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	or	WORD PTR [rax], 35
	call	sub_802B81C
	mov	rcx, rbx
	call	sub_804D8E0
	mov	rcx, rbx
	call	sub_80501D4
	mov	rcx, rbx
	call	sub_8050958
	lea	rax, sub_8050DC4[rip]
	mov	QWORD PTR 176[rbx], rax
	lea	rax, sub_8050DF8[rip]
	mov	QWORD PTR 2032[rbx], rax
	mov	eax, 120
	mov	WORD PTR 18[rbx], ax
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_804DB34[rip]
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_804DB34
	.def	Task_804DB34;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_804DB34
Task_804DB34:
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
	movq	xmm1, QWORD PTR .LC35[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	movq	xmm0, QWORD PTR 76[rbx]
	and	WORD PTR [rax], -24577
	lea	rcx, 176[rbx]
	paddd	xmm0, xmm1
	movq	QWORD PTR 76[rbx], xmm0
	call	[QWORD PTR 176[rbx]]
	lea	rcx, 1816[rbx]
	call	[QWORD PTR 1816[rbx]]
	lea	rcx, 2032[rbx]
	call	[QWORD PTR 2032[rbx]]
	mov	rcx, rbx
	call	sub_80501D4
	mov	rcx, rbx
	call	sub_8050958
	mov	rdi, QWORD PTR .refptr.gStageTime[rip]
	mov	edx, DWORD PTR [rdi]
	imul	eax, edx, -991146299
	add	eax, 165191049
	cmp	eax, 330382098
	jbe	.L465
	and	edx, 3
	je	.L466
.L462:
	mov	ecx, DWORD PTR 20[rbx]
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	lea	rdi, 2424[rbx]
	mov	r10d, DWORD PTR 24[rbx]
	mov	r9d, DWORD PTR [rax]
	mov	r8d, DWORD PTR 4[rax]
	lea	eax, 536[r9]
	sal	eax, 8
	sub	eax, ecx
	movsx	rdx, eax
	sar	eax, 31
	imul	rdx, rdx, 1374389535
	sar	rdx, 36
	sub	edx, eax
	add	edx, ecx
	lea	ecx, 60[r8]
	sal	ecx, 8
	mov	DWORD PTR 20[rbx], edx
	sar	edx, 8
	sub	ecx, r10d
	sub	edx, r9d
	movsx	rax, ecx
	sar	ecx, 31
	mov	WORD PTR 2462[rbx], dx
	imul	rax, rax, 1374389535
	sar	rax, 36
	sub	eax, ecx
	mov	rcx, rdi
	add	eax, r10d
	mov	DWORD PTR 24[rbx], eax
	sar	eax, 8
	sub	eax, r8d
	mov	WORD PTR 2464[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	call	DisplaySprite
	movzx	eax, WORD PTR 18[rbx]
	test	ax, ax
	je	.L463
	sub	eax, 1
	mov	WORD PTR 18[rbx], ax
.L460:
	add	rsp, 80
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L465:
	mov	ecx, 144
	call	m4aSongNumStart
	mov	edx, DWORD PTR [rdi]
	and	edx, 3
	jne	.L462
.L466:
	mov	rcx, QWORD PTR .refptr.gPseudoRandom[rip]
	xor	r8d, r8d
	mov	r9d, 512
	mov	WORD PTR 64[rsp], r8w
	imul	eax, DWORD PTR [rcx], 1663525
	mov	WORD PTR 50[rsp], r9w
	add	eax, 1013904223
	mov	edx, eax
	imul	eax, eax, 1663525
	and	edx, 127
	add	edx, 64
	add	eax, 1013904223
	mov	DWORD PTR 56[rsp], edx
	mov	edx, eax
	imul	eax, eax, 1663525
	and	edx, 127
	add	edx, 16
	add	eax, 1013904223
	mov	DWORD PTR 60[rsp], edx
	lea	rdx, 14[rbx]
	mov	DWORD PTR [rcx], eax
	and	ax, 1023
	lea	rcx, 32[rsp]
	mov	WORD PTR 48[rsp], ax
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	add	rax, 76160
	mov	QWORD PTR 32[rsp], rax
	movabs	rax, 2658584756225
	mov	QWORD PTR 40[rsp], rax
	call	CreateBossParticleWithExplosionUpdate
	jmp	.L462
	.p2align 4,,10
	.p2align 3
.L463:
	mov	rcx, rbx
	call	UpdateScreenFade
	cmp	al, 1
	jne	.L460
	mov	eax, 2
	mov	edx, 16
	mov	WORD PTR 18[rbx], ax
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	mov	WORD PTR 4[rax], dx
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_804DC60[rip]
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 80
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8050B2C
	.def	sub_8050B2C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8050B2C
sub_8050B2C:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gActiveBossTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	r8, rcx
	mov	r9, rdx
	test	rax, rax
	je	.L469
	mov	rdx, QWORD PTR 24[rax]
	mov	r11, QWORD PTR .refptr.gSineTable[rip]
	movsx	eax, WORD PTR 72[rdx]
	movsx	r10d, WORD PTR 74[rdx]
	sal	eax, 8
	sal	r10d, 8
	add	eax, DWORD PTR 76[rdx]
	add	r10d, DWORD PTR 80[rdx]
	movsx	edx, WORD PTR 2048[r11]
	lea	edx, [rdx+rdx*8]
	sar	edx, 6
	add	edx, eax
	movsx	eax, WORD PTR 1536[r11]
	lea	ecx, [rax+rax*8]
	imul	eax, eax, 38
	sar	ecx, 6
	add	ecx, r10d
	sar	eax, 6
	add	eax, edx
	movsx	edx, WORD PTR 1024[r11]
	mov	DWORD PTR [r8], eax
	imul	edx, edx, 38
	sar	edx, 6
	add	edx, ecx
	mov	DWORD PTR [r9], edx
	ret
	.p2align 4,,10
	.p2align 3
.L469:
	xor	eax, eax
	xor	edx, edx
	mov	DWORD PTR [r8], eax
	mov	DWORD PTR [r9], edx
	ret
	.seh_endproc
	.p2align 4
	.globl	ExtraBossIsDead
	.def	ExtraBossIsDead;	.scl	2;	.type	32;	.endef
	.seh_proc	ExtraBossIsDead
ExtraBossIsDead:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gActiveBossTask[rip]
	mov	rdx, QWORD PTR [rax]
	xor	eax, eax
	test	rdx, rdx
	je	.L470
	mov	rax, QWORD PTR 24[rdx]
	cmp	BYTE PTR 12[rax], 0
	sete	al
	movzx	eax, al
.L470:
	ret
	.seh_endproc
	.globl	gUnknown_080D8EF0
	.section .rdata,"dr"
	.align 32
gUnknown_080D8EF0:
	.word	64
	.word	128
	.word	176
	.word	256
	.word	320
	.word	384
	.word	432
	.word	512
	.word	576
	.word	640
	.word	688
	.word	768
	.word	832
	.word	896
	.word	944
	.word	992
	.word	14720
	.word	32767
	.word	7903
	.word	31983
	.word	22603
	.word	2116
	.word	32697
	.word	26356
	.word	19916
	.word	12582
	.word	15368
	.word	4575
	.word	283
	.word	151
	.word	144
	.word	138
	.globl	gUnknown_080D8EE0
	.align 16
gUnknown_080D8EE0:
	.ascii "\0\1\2\3\2\1\0\1\2\3\2\1\0\1\2\3"
	.globl	sRGB_080D8E20
	.align 32
sRGB_080D8E20:
	.ascii "\0\0\0"
	.ascii "\2\2\34"
	.ascii "\6\3\36"
	.ascii "\15\6\37"
	.ascii "\15\11\37"
	.ascii "\16\15\37"
	.ascii "\21\16\37"
	.ascii "\14\23\37"
	.ascii "\14\26\37"
	.ascii "\16\31\37"
	.ascii "\20\33\37"
	.ascii "\23\34\37"
	.ascii "\27\34\37"
	.ascii "\32\34\37"
	.ascii "\33\35\37"
	.ascii "\35\36\37"
	.ascii "\0\0\0"
	.ascii "\2\2\34"
	.ascii "\11\3\35"
	.ascii "\14\6\37"
	.ascii "\21\6\37"
	.ascii "\22\12\37"
	.ascii "\22\15\37"
	.ascii "\16\30\37"
	.ascii "\22\31\37"
	.ascii "\26\32\37"
	.ascii "\31\33\37"
	.ascii "\32\34\37"
	.ascii "\33\34\37"
	.ascii "\34\35\37"
	.ascii "\34\36\37"
	.ascii "\35\36\37"
	.ascii "\0\0\0"
	.ascii "\0\0\0"
	.ascii "\5\4\14"
	.ascii "\6\1\25"
	.ascii "\11\3\35"
	.ascii "\15\11\37"
	.ascii "\14\23\37"
	.ascii "\14\27\37"
	.ascii "\15\32\37"
	.ascii "\20\34\37"
	.ascii "\23\34\37"
	.ascii "\30\34\37"
	.ascii "\32\34\37"
	.ascii "\33\35\37"
	.ascii "\35\36\37"
	.ascii "\36\36\37"
	.ascii "\0\14\16"
	.ascii "\37\37\37"
	.ascii "\37\26\7"
	.ascii "\17\7\37"
	.ascii "\13\2\26"
	.ascii "\4\2\2"
	.ascii "\31\35\37"
	.ascii "\24\27\31"
	.ascii "\14\16\23"
	.ascii "\6\11\14"
	.ascii "\10\0\17"
	.ascii "\37\16\4"
	.ascii "\33\10\0"
	.ascii "\27\4\0"
	.ascii "\20\4\0"
	.ascii "\12\4\0"
	.globl	gUnknown_080D8E14
	.align 16
gUnknown_080D8E14:
	.quad	sub_804E974
	.quad	sub_804EB6C
	.quad	sub_804EC6C
	.globl	gUnknown_080D8DCC
	.align 32
gUnknown_080D8DCC:
	.quad	sub_8050BD8
	.quad	gUnknown_080D8D3C
	.word	40
	.space 6
	.quad	sub_8050BE4
	.quad	gUnknown_080D8D54
	.word	100
	.space 6
	.quad	sub_8050BE4
	.quad	gUnknown_080D8D5C
	.word	100
	.space 6
	.quad	sub_8050BE4
	.quad	gUnknown_080D8D5C
	.word	100
	.space 6
	.quad	sub_8050BF0
	.quad	gUnknown_080D8D44
	.word	20
	.space 6
	.quad	sub_8050BF0
	.quad	gUnknown_080D8D4C
	.word	100
	.space 6
	.globl	gUnknown_080D8D6C
	.align 32
gUnknown_080D8D6C:
	.quad	sub_804E078
	.quad	gUnknown_080D8BFC
	.word	40
	.space 6
	.quad	sub_804E4CC
	.quad	gUnknown_080D8BFC
	.word	40
	.space 6
	.quad	sub_8050BFC
	.quad	gUnknown_080D8C24
	.word	126
	.space 6
	.quad	sub_8050C50
	.quad	gUnknown_080D8C24
	.word	512
	.space 6
	.quad	sub_804E15C
	.quad	gUnknown_080D8C38
	.word	160
	.space 6
	.quad	sub_8050CBC
	.quad	gUnknown_080D8C10
	.word	80
	.space 6
	.quad	sub_8050D24
	.quad	gUnknown_080D8C10
	.word	80
	.space 6
	.quad	sub_8050D9C
	.quad	gUnknown_080D8C10
	.word	80
	.space 6
	.globl	gUnknown_080D8D64
	.align 16
gUnknown_080D8D64:
	.quad	gUnknown_080D8CDC
	.quad	gUnknown_080D8D24
	.globl	gUnknown_080D8D5C
	.align 16
gUnknown_080D8D5C:
	.quad	gUnknown_080D8CDC
	.quad	gUnknown_080D8D0C
	.globl	gUnknown_080D8D54
	.align 16
gUnknown_080D8D54:
	.quad	gUnknown_080D8CDC
	.quad	gUnknown_080D8CF4
	.globl	gUnknown_080D8D4C
	.align 16
gUnknown_080D8D4C:
	.quad	gUnknown_080D8CAC
	.quad	gUnknown_080D8CC4
	.globl	gUnknown_080D8D44
	.align 16
gUnknown_080D8D44:
	.quad	gUnknown_080D8C7C
	.quad	gUnknown_080D8C94
	.globl	gUnknown_080D8D3C
	.align 16
gUnknown_080D8D3C:
	.quad	gUnknown_080D8C4C
	.quad	gUnknown_080D8C64
	.globl	gUnknown_080D8D34
	.align 8
gUnknown_080D8D34:
	.word	20
	.word	10
	.word	-10
	.word	10
	.globl	gUnknown_080D8D2C
	.align 8
gUnknown_080D8D2C:
	.word	50
	.word	50
	.word	40
	.word	30
	.globl	gUnknown_080D8D24
	.align 8
gUnknown_080D8D24:
	.word	10
	.word	20
	.word	30
	.word	40
	.globl	gUnknown_080D8D1C
	.align 8
gUnknown_080D8D1C:
	.word	40
	.word	20
	.word	10
	.word	10
	.globl	gUnknown_080D8D14
	.align 8
gUnknown_080D8D14:
	.word	100
	.word	100
	.word	80
	.word	60
	.globl	gUnknown_080D8D0C
	.align 8
gUnknown_080D8D0C:
	.word	10
	.word	40
	.word	60
	.word	80
	.globl	gUnknown_080D8D04
	.align 8
gUnknown_080D8D04:
	.word	10
	.word	-10
	.word	-10
	.word	10
	.globl	gUnknown_080D8CFC
	.align 8
gUnknown_080D8CFC:
	.word	-20
	.word	-30
	.word	-20
	.word	-10
	.globl	gUnknown_080D8CF4
	.align 8
gUnknown_080D8CF4:
	.word	10
	.word	-10
	.word	10
	.word	-10
	.globl	gUnknown_080D8CEC
	.align 8
gUnknown_080D8CEC:
	.word	-40
	.word	10
	.word	10
	.word	-10
	.globl	gUnknown_080D8CE4
	.align 8
gUnknown_080D8CE4:
	.word	-190
	.word	-190
	.word	-140
	.word	-90
	.globl	gUnknown_080D8CDC
	.align 8
gUnknown_080D8CDC:
	.word	10
	.word	-40
	.word	-90
	.word	-140
	.globl	gUnknown_080D8CD4
	.align 8
gUnknown_080D8CD4:
	.word	-240
	.word	-270
	.word	-300
	.word	-330
	.globl	gUnknown_080D8CCC
	.align 8
gUnknown_080D8CCC:
	.word	-120
	.word	-150
	.word	-180
	.word	-210
	.globl	gUnknown_080D8CC4
	.align 8
gUnknown_080D8CC4:
	.word	10
	.word	30
	.word	30
	.word	-90
	.globl	gUnknown_080D8CBC
	.align 8
gUnknown_080D8CBC:
	.word	-160
	.word	-180
	.word	-200
	.word	-220
	.globl	gUnknown_080D8CB4
	.align 8
gUnknown_080D8CB4:
	.word	-80
	.word	-100
	.word	-120
	.word	-140
	.globl	gUnknown_080D8CAC
	.align 8
gUnknown_080D8CAC:
	.word	0
	.word	-20
	.word	-40
	.word	-60
	.globl	gUnknown_080D8CA4
	.align 8
gUnknown_080D8CA4:
	.word	10
	.word	-10
	.word	-10
	.word	10
	.globl	gUnknown_080D8C9C
	.align 8
gUnknown_080D8C9C:
	.word	10
	.word	-10
	.word	-10
	.word	10
	.globl	gUnknown_080D8C94
	.align 8
gUnknown_080D8C94:
	.word	10
	.word	-10
	.word	-10
	.word	10
	.globl	gUnknown_080D8C8C
	.align 8
gUnknown_080D8C8C:
	.word	10
	.word	-10
	.word	10
	.word	-10
	.globl	gUnknown_080D8C84
	.align 8
gUnknown_080D8C84:
	.word	10
	.word	-10
	.word	10
	.word	-10
	.globl	gUnknown_080D8C7C
	.align 8
gUnknown_080D8C7C:
	.word	10
	.word	-10
	.word	10
	.word	-10
	.globl	gUnknown_080D8C74
	.align 8
gUnknown_080D8C74:
	.word	10
	.word	-10
	.word	-10
	.word	10
	.globl	gUnknown_080D8C6C
	.align 8
gUnknown_080D8C6C:
	.word	10
	.word	-10
	.word	-10
	.word	10
	.globl	gUnknown_080D8C64
	.align 8
gUnknown_080D8C64:
	.word	10
	.word	-10
	.word	-10
	.word	10
	.globl	gUnknown_080D8C5C
	.align 8
gUnknown_080D8C5C:
	.word	10
	.word	-10
	.word	10
	.word	-10
	.globl	gUnknown_080D8C54
	.align 8
gUnknown_080D8C54:
	.word	10
	.word	-10
	.word	10
	.word	-10
	.globl	gUnknown_080D8C4C
	.align 8
gUnknown_080D8C4C:
	.word	10
	.word	-10
	.word	10
	.word	-10
	.globl	gUnknown_080D8C38
	.align 32
gUnknown_080D8C38:
	.quad	gUnknown_080D8B84
	.quad	gUnknown_080D8B9C
	.quad	gUnknown_080D8BB4
	.quad	gUnknown_080D8BCC
	.quad	gUnknown_080D8BE4
	.globl	gUnknown_080D8C24
	.align 32
gUnknown_080D8C24:
	.quad	gUnknown_080D8B0C
	.quad	gUnknown_080D8B24
	.quad	gUnknown_080D8B3C
	.quad	gUnknown_080D8B54
	.quad	gUnknown_080D8B6C
	.globl	gUnknown_080D8C10
	.align 32
gUnknown_080D8C10:
	.quad	gUnknown_080D8A94
	.quad	gUnknown_080D8AAC
	.quad	gUnknown_080D8AC4
	.quad	gUnknown_080D8ADC
	.quad	gUnknown_080D8AF4
	.globl	gUnknown_080D8BFC
	.align 32
gUnknown_080D8BFC:
	.quad	gUnknown_080D8A1C
	.quad	gUnknown_080D8A34
	.quad	gUnknown_080D8A4C
	.quad	gUnknown_080D8A64
	.quad	gUnknown_080D8A7C
	.globl	gUnknown_080D8BE4
	.align 16
gUnknown_080D8BE4:
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.globl	gUnknown_080D8BCC
	.align 16
gUnknown_080D8BCC:
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.globl	gUnknown_080D8BB4
	.align 16
gUnknown_080D8BB4:
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.globl	gUnknown_080D8B9C
	.align 16
gUnknown_080D8B9C:
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.globl	gUnknown_080D8B84
	.align 16
gUnknown_080D8B84:
	.word	2048
	.word	2048
	.word	2048
	.word	2048
	.word	2048
	.word	2048
	.word	2048
	.word	2048
	.word	2048
	.word	2048
	.word	2048
	.word	2048
	.globl	gUnknown_080D8B6C
	.align 16
gUnknown_080D8B6C:
	.word	162
	.word	162
	.word	162
	.word	162
	.word	162
	.word	162
	.word	162
	.word	162
	.word	162
	.word	162
	.word	162
	.word	162
	.globl	gUnknown_080D8B54
	.align 16
gUnknown_080D8B54:
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.globl	gUnknown_080D8B3C
	.align 16
gUnknown_080D8B3C:
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.globl	gUnknown_080D8B24
	.align 16
gUnknown_080D8B24:
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.word	102
	.globl	gUnknown_080D8B0C
	.align 16
gUnknown_080D8B0C:
	.word	2048
	.word	2048
	.word	2048
	.word	2048
	.word	2048
	.word	2048
	.word	2048
	.word	2048
	.word	2048
	.word	2048
	.word	2048
	.word	2048
	.globl	gUnknown_080D8AF4
	.align 16
gUnknown_080D8AF4:
	.word	0
	.word	64
	.word	0
	.word	64
	.word	0
	.word	64
	.word	0
	.word	64
	.word	0
	.word	64
	.word	0
	.word	64
	.globl	gUnknown_080D8ADC
	.align 16
gUnknown_080D8ADC:
	.word	0
	.word	60
	.word	0
	.word	60
	.word	0
	.word	60
	.word	0
	.word	60
	.word	0
	.word	60
	.word	0
	.word	60
	.globl	gUnknown_080D8AC4
	.align 16
gUnknown_080D8AC4:
	.word	0
	.word	64
	.word	0
	.word	64
	.word	0
	.word	64
	.word	0
	.word	64
	.word	0
	.word	64
	.word	0
	.word	64
	.globl	gUnknown_080D8AAC
	.align 16
gUnknown_080D8AAC:
	.word	0
	.word	60
	.word	0
	.word	60
	.word	0
	.word	60
	.word	0
	.word	60
	.word	0
	.word	60
	.word	0
	.word	60
	.globl	gUnknown_080D8A94
	.align 16
gUnknown_080D8A94:
	.word	2028
	.word	2092
	.word	2028
	.word	2092
	.word	2028
	.word	2092
	.word	2028
	.word	2092
	.word	2028
	.word	2092
	.word	2028
	.word	2092
	.globl	gUnknown_080D8A7C
	.align 16
gUnknown_080D8A7C:
	.word	0
	.word	64
	.word	0
	.word	64
	.word	0
	.word	64
	.word	0
	.word	64
	.word	0
	.word	64
	.word	0
	.word	64
	.globl	gUnknown_080D8A64
	.align 16
gUnknown_080D8A64:
	.word	0
	.word	60
	.word	0
	.word	60
	.word	0
	.word	60
	.word	0
	.word	60
	.word	0
	.word	60
	.word	0
	.word	60
	.globl	gUnknown_080D8A4C
	.align 16
gUnknown_080D8A4C:
	.word	0
	.word	64
	.word	0
	.word	64
	.word	0
	.word	64
	.word	0
	.word	64
	.word	0
	.word	64
	.word	0
	.word	64
	.globl	gUnknown_080D8A34
	.align 16
gUnknown_080D8A34:
	.word	0
	.word	60
	.word	0
	.word	60
	.word	0
	.word	60
	.word	0
	.word	60
	.word	0
	.word	60
	.word	0
	.word	60
	.globl	gUnknown_080D8A1C
	.align 16
gUnknown_080D8A1C:
	.word	2028
	.word	2092
	.word	2028
	.word	2092
	.word	2028
	.word	2092
	.word	2028
	.word	2092
	.word	2028
	.word	2092
	.word	2028
	.word	2092
	.globl	gUnknown_080D89C8
	.align 32
gUnknown_080D89C8:
	.long	0
	.word	719
	.byte	0
	.byte	0
	.byte	1
	.space 1
	.word	0
	.long	0
	.word	689
	.byte	0
	.byte	0
	.byte	1
	.space 1
	.word	0
	.long	0
	.word	719
	.byte	0
	.byte	0
	.byte	1
	.space 1
	.word	0
	.long	0
	.word	689
	.byte	0
	.byte	0
	.byte	1
	.space 1
	.word	0
	.long	0
	.word	719
	.byte	0
	.byte	0
	.byte	1
	.space 1
	.word	0
	.long	0
	.word	689
	.byte	0
	.byte	0
	.byte	1
	.space 1
	.word	0
	.long	0
	.word	719
	.byte	0
	.byte	0
	.byte	1
	.space 1
	.word	0
	.globl	gUnknown_080D89AC
	.align 32
gUnknown_080D89AC:
	.quad	sub_804F6AC
	.quad	sub_804F768
	.quad	sub_804F850
	.quad	sub_804F9BC
	.quad	sub_804FAA4
	.quad	sub_804FC10
	.quad	sub_804FD58
	.globl	gUnknown_080D89A5
gUnknown_080D89A5:
	.ascii "\0\24\30\24\22\36"
	.globl	gUnknown_080D89A0
gUnknown_080D89A0:
	.ascii "\0\374\370\364\360"
	.globl	gUnknown_080D8918
	.align 32
gUnknown_080D8918:
	.long	8
	.word	716
	.byte	12
	.space 1
	.long	8
	.word	716
	.byte	11
	.space 1
	.long	16
	.word	716
	.byte	10
	.space 1
	.long	8
	.word	716
	.byte	9
	.space 1
	.long	8
	.word	716
	.byte	8
	.space 1
	.long	12
	.word	716
	.byte	7
	.space 1
	.long	16
	.word	716
	.byte	6
	.space 1
	.long	8
	.word	716
	.byte	5
	.space 1
	.long	8
	.word	716
	.byte	4
	.space 1
	.long	8
	.word	716
	.byte	3
	.space 1
	.long	16
	.word	716
	.byte	2
	.space 1
	.long	8
	.word	716
	.byte	1
	.space 1
	.long	8
	.word	716
	.byte	0
	.space 1
	.long	12
	.word	716
	.byte	15
	.space 1
	.long	16
	.word	716
	.byte	14
	.space 1
	.long	8
	.word	716
	.byte	13
	.space 1
	.long	16
	.word	713
	.byte	0
	.space 1
	.globl	gUnknown_080D88F0
	.align 32
gUnknown_080D88F0:
	.long	64
	.word	709
	.byte	0
	.space 1
	.long	64
	.word	710
	.byte	0
	.space 1
	.long	64
	.word	711
	.byte	0
	.space 1
	.long	64
	.word	712
	.byte	0
	.space 1
	.long	90
	.word	708
	.byte	0
	.space 1
	.align 2
.LC0:
	.byte	0
	.byte	-1
	.align 4
.LC1:
	.word	26215
	.word	26215
	.align 8
.LC2:
	.word	0
	.word	1
	.word	0
	.word	20
	.align 8
.LC3:
	.long	324352
	.long	28672
	.align 16
.LC4:
	.word	10
	.word	-10
	.word	10
	.word	-10
	.word	10
	.word	-10
	.word	-10
	.word	10
	.align 16
.LC5:
	.word	2028
	.word	2092
	.word	2028
	.word	2092
	.word	0
	.word	60
	.word	0
	.word	60
	.align 16
.LC6:
	.word	0
	.word	64
	.word	0
	.word	64
	.word	0
	.word	60
	.word	0
	.word	60
	.set	.LC7,.LC6
	.align 4
.LC8:
	.word	300
	.word	512
	.align 2
.LC9:
	.byte	12
	.byte	-1
	.align 4
.LC10:
	.word	0
	.word	716
	.align 4
.LC11:
	.word	0
	.word	714
	.align 8
.LC21:
	.long	84480
	.long	23040
	.align 4
.LC24:
	.word	9869
	.word	9869
	.align 8
.LC25:
	.long	63
	.long	21
	.align 4
.LC28:
	.word	256
	.word	256
	.align 16
.LC31:
	.word	14720
	.word	32767
	.word	7903
	.word	31983
	.word	22603
	.word	2116
	.word	32697
	.word	26356
	.align 16
.LC32:
	.word	19916
	.word	12582
	.word	15368
	.word	4575
	.word	283
	.word	151
	.word	144
	.word	138
	.align 16
.LC33:
	.word	0
	.word	0
	.word	376
	.word	0
	.word	0
	.word	0
	.word	0
	.word	32
	.align 8
.LC35:
	.long	1216
	.long	64
	.ident	"GCC: (GNU) 13-win32"
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	TasksDestroyInPriorityRange;	.scl	2;	.type	32;	.endef
	.def	CreateStageUI;	.scl	2;	.type	32;	.endef
	.def	CreateStageResults;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	SuperSonicGetFlags;	.scl	2;	.type	32;	.endef
	.def	sub_802BA8C;	.scl	2;	.type	32;	.endef
	.def	SuperSonicGetPos;	.scl	2;	.type	32;	.endef
	.def	SuperSonicGetSprite;	.scl	2;	.type	32;	.endef
	.def	sub_8004418;	.scl	2;	.type	32;	.endef
	.def	sub_808558C;	.scl	2;	.type	32;	.endef
	.def	SuperSonicGetRotation;	.scl	2;	.type	32;	.endef
	.def	sub_8085698;	.scl	2;	.type	32;	.endef
	.def	SuperSonicSetPos;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStartOrContinue;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStop;	.scl	2;	.type	32;	.endef
	.def	sub_802C798;	.scl	2;	.type	32;	.endef
	.def	sub_80859F4;	.scl	2;	.type	32;	.endef
	.def	ScreenMask_CreateShape;	.scl	2;	.type	32;	.endef
	.def	sub_802C704;	.scl	2;	.type	32;	.endef
	.def	sub_802BB54;	.scl	2;	.type	32;	.endef
	.def	sub_8085968;	.scl	2;	.type	32;	.endef
	.def	sub_8003EE4;	.scl	2;	.type	32;	.endef
	.def	TransformSprite;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	DrawBackground;	.scl	2;	.type	32;	.endef
	.def	MPlayStop;	.scl	2;	.type	32;	.endef
	.def	sub_802B81C;	.scl	2;	.type	32;	.endef
	.def	CreateBossParticleWithExplosionUpdate;	.scl	2;	.type	32;	.endef
	.def	UpdateScreenFade;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gMPlayInfo_SE3, "dr"
	.globl	.refptr.gMPlayInfo_SE3
	.linkonce	discard
.refptr.gMPlayInfo_SE3:
	.quad	gMPlayInfo_SE3
	.section	.rdata$.refptr.gMPlayInfo_SE2, "dr"
	.globl	.refptr.gMPlayInfo_SE2
	.linkonce	discard
.refptr.gMPlayInfo_SE2:
	.quad	gMPlayInfo_SE2
	.section	.rdata$.refptr.gMPlayInfo_SE1, "dr"
	.globl	.refptr.gMPlayInfo_SE1
	.linkonce	discard
.refptr.gMPlayInfo_SE1:
	.quad	gMPlayInfo_SE1
	.section	.rdata$.refptr.gBgCntRegs, "dr"
	.globl	.refptr.gBgCntRegs
	.linkonce	discard
.refptr.gBgCntRegs:
	.quad	gBgCntRegs
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gBgOffsetsHBlankPrimary, "dr"
	.globl	.refptr.gBgOffsetsHBlankPrimary
	.linkonce	discard
.refptr.gBgOffsetsHBlankPrimary:
	.quad	gBgOffsetsHBlankPrimary
	.section	.rdata$.refptr.gHBlankCopySize, "dr"
	.globl	.refptr.gHBlankCopySize
	.linkonce	discard
.refptr.gHBlankCopySize:
	.quad	gHBlankCopySize
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
	.section	.rdata$.refptr.gHBlankCopyTarget, "dr"
	.globl	.refptr.gHBlankCopyTarget
	.linkonce	discard
.refptr.gHBlankCopyTarget:
	.quad	gHBlankCopyTarget
	.section	.rdata$.refptr.gOamMatrixIndex, "dr"
	.globl	.refptr.gOamMatrixIndex
	.linkonce	discard
.refptr.gOamMatrixIndex:
	.quad	gOamMatrixIndex
	.section	.rdata$.refptr.gBgAffineRegs, "dr"
	.globl	.refptr.gBgAffineRegs
	.linkonce	discard
.refptr.gBgAffineRegs:
	.quad	gBgAffineRegs
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
	.section	.rdata$.refptr.gBgPalette, "dr"
	.globl	.refptr.gBgPalette
	.linkonce	discard
.refptr.gBgPalette:
	.quad	gBgPalette
	.section	.rdata$.refptr.gObjPalette, "dr"
	.globl	.refptr.gObjPalette
	.linkonce	discard
.refptr.gObjPalette:
	.quad	gObjPalette
	.section	.rdata$.refptr.gSongTable, "dr"
	.globl	.refptr.gSongTable
	.linkonce	discard
.refptr.gSongTable:
	.quad	gSongTable
	.section	.rdata$.refptr.gMPlayTable, "dr"
	.globl	.refptr.gMPlayTable
	.linkonce	discard
.refptr.gMPlayTable:
	.quad	gMPlayTable
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gStageTime, "dr"
	.globl	.refptr.gStageTime
	.linkonce	discard
.refptr.gStageTime:
	.quad	gStageTime
	.section	.rdata$.refptr.gPseudoRandom, "dr"
	.globl	.refptr.gPseudoRandom
	.linkonce	discard
.refptr.gPseudoRandom:
	.quad	gPseudoRandom
	.section	.rdata$.refptr.gWinRegs, "dr"
	.globl	.refptr.gWinRegs
	.linkonce	discard
.refptr.gWinRegs:
	.quad	gWinRegs
	.section	.rdata$.refptr.gDispCnt, "dr"
	.globl	.refptr.gDispCnt
	.linkonce	discard
.refptr.gDispCnt:
	.quad	gDispCnt
	.section	.rdata$.refptr.gBldRegs, "dr"
	.globl	.refptr.gBldRegs
	.linkonce	discard
.refptr.gBldRegs:
	.quad	gBldRegs
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
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
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
	.section	.rdata$.refptr.gActiveBossTask, "dr"
	.globl	.refptr.gActiveBossTask
	.linkonce	discard
.refptr.gActiveBossTask:
	.quad	gActiveBossTask
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
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
