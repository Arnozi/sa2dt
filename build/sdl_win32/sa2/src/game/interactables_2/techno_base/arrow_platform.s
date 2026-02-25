	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	sub_807A920;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_807A920
sub_807A920:
	.seh_endprologue
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	mov	r9d, 1
	mov	eax, DWORD PTR 144[rcx]
	movsx	edx, WORD PTR 172[rcx]
	sub	ax, WORD PTR [r8]
	cwde
	add	edx, eax
	cmp	edx, -152
	jl	.L1
	movsx	edx, WORD PTR 168[rcx]
	add	eax, edx
	cmp	eax, 578
	jg	.L1
	mov	eax, DWORD PTR 148[rcx]
	movsx	edx, WORD PTR 174[rcx]
	sub	ax, WORD PTR 4[r8]
	cwde
	add	edx, eax
	cmp	edx, -152
	jl	.L1
	movsx	edx, WORD PTR 170[rcx]
	xor	r9d, r9d
	add	eax, edx
	cmp	eax, 392
	setg	r9b
.L1:
	mov	eax, r9d
	ret
	.seh_endproc
	.p2align 4
	.def	sub_807A33C;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_807A33C
sub_807A33C:
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
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	lea	rax, sub_807AB04[rip]
	mov	r13d, DWORD PTR 144[rsp]
	mov	QWORD PTR 32[rsp], rax
	mov	rdi, rcx
	mov	esi, edx
	mov	ebp, r8d
	mov	r12d, r9d
	mov	r8d, 8208
	xor	r9d, r9d
	mov	edx, 216
	lea	rcx, sub_807AA68[rip]
	call	TaskCreate
	movsx	r9d, BYTE PTR 4[rdi]
	movzx	r10d, BYTE PTR 5[rdi]
	mov	ecx, r12d
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, r13b
	movzx	edx, BYTE PTR 6[rdi]
	lea	r9d, 24[0+r9*8]
	mov	WORD PTR 184[rbx], ax
	movsx	eax, BYTE PTR 3[rdi]
	lea	r14d, -24[r9+rdx*8]
	mov	QWORD PTR 176[rbx], 0
	lea	eax, 24[0+rax*8]
	mov	WORD PTR 170[rbx], r9w
	lea	r10d, -24[rax+r10*8]
	mov	WORD PTR 168[rbx], ax
	mov	WORD PTR 172[rbx], r10w
	mov	WORD PTR 174[rbx], r14w
	mov	QWORD PTR [rbx], rdi
	mov	WORD PTR 8[rbx], si
	mov	WORD PTR 10[rbx], bp
	movzx	r11d, BYTE PTR [rdi]
	movzx	r8d, r11b
	mov	edx, r8d
	mov	dh, cl
	mov	r8d, edx
	cmp	r13b, 1
	je	.L8
	cmp	r13b, 2
	jne	.L11
	cwde
	movsx	edx, r14w
	sal	eax, 8
	sal	edx, 8
.L10:
	movd	xmm2, edx
	movd	xmm1, eax
	movzx	esi, si
	movzx	ecx, r11b
	punpckldq	xmm1, xmm2
	sal	esi, 5
	mov	DWORD PTR 204[rbx], eax
	movzx	ebp, bp
	movdqu	xmm0, xmm1
	add	esi, ecx
	mov	WORD PTR 12[rbx], r8w
	sal	ebp, 5
	punpcklqdq	xmm0, xmm1
	mov	DWORD PTR 208[rbx], edx
	mov	ecx, 4351
	xor	edx, edx
	lea	eax, 0[0+rsi*8]
	movups	XMMWORD PTR 188[rbx], xmm0
	movd	xmm0, eax
	movzx	eax, BYTE PTR 1[rdi]
	mov	WORD PTR 52[rbx], dx
	mov	WORD PTR 65[rbx], cx
	mov	ecx, 8
	add	eax, ebp
	mov	DWORD PTR 58[rbx], 1216
	sal	eax, 3
	mov	BYTE PTR 69[rbx], 0
	movd	xmm3, eax
	xor	eax, eax
	mov	DWORD PTR 72[rbx], -1
	punpckldq	xmm0, xmm3
	mov	WORD PTR 32[rbx], ax
	mov	DWORD PTR 48[rbx], 8192
	punpcklqdq	xmm0, xmm1
	movups	XMMWORD PTR 144[rbx], xmm0
	call	VramMalloc
	mov	r8d, 595
	mov	BYTE PTR 64[rbx], 2
	lea	rcx, 16[rbx]
	mov	WORD PTR 34[rbx], r8w
	mov	QWORD PTR 24[rbx], rax
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	xor	r9d, r9d
	mov	r10d, -256
	mov	WORD PTR 116[rbx], r9w
	lea	rcx, 80[rbx]
	add	rax, 76928
	mov	DWORD PTR 122[rbx], 1152
	mov	BYTE PTR 130[rbx], 16
	mov	BYTE PTR 133[rbx], 0
	mov	DWORD PTR 136[rbx], -1
	mov	DWORD PTR 112[rbx], 8192
	mov	QWORD PTR 88[rbx], rax
	mov	DWORD PTR 96[rbx], 39256064
	mov	WORD PTR 128[rbx], r10w
	call	UpdateSpriteAnimation
	mov	BYTE PTR [rdi], -2
	add	rsp, 48
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
.L11:
	movsx	eax, r10w
	movsx	edx, r9w
	sal	eax, 8
	sal	edx, 8
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L8:
	cwde
	movsx	edx, r9w
	sal	eax, 8
	sal	edx, 8
	jmp	.L10
	.seh_endproc
	.p2align 4
	.def	sub_807AB04;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_807AB04
sub_807AB04:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.def	sub_807A99C;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_807A99C
sub_807A99C:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gPlayer[rip]
	test	BYTE PTR 36[rbx], -128
	je	.L14
.L16:
	xor	eax, eax
.L13:
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L14:
	mov	r8d, DWORD PTR 156[rcx]
	mov	edx, DWORD PTR 152[rcx]
	lea	rax, 80[rcx]
	mov	r9, rbx
	sar	r8d, 8
	sar	edx, 8
	add	r8d, DWORD PTR 148[rcx]
	add	edx, DWORD PTR 144[rcx]
	mov	rcx, rax
	call	Coll_Player_Platform
	test	eax, eax
	je	.L16
	test	eax, 65536
	jne	.L26
	test	eax, 262144
	jne	.L27
	test	eax, 524288
	jne	.L28
	test	eax, 131072
	je	.L16
	sal	eax, 8
	cwde
	add	DWORD PTR 16[rbx], eax
	xor	eax, eax
	mov	WORD PTR 22[rbx], ax
	mov	eax, 4
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L27:
	xor	al, al
	xor	r8d, r8d
	xor	r9d, r9d
	or	DWORD PTR 36[rbx], 32
	cwde
	mov	WORD PTR 20[rbx], r8w
	add	DWORD PTR 12[rbx], eax
	mov	eax, 1
	mov	WORD PTR 24[rbx], r9w
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L26:
	sal	eax, 8
	xor	r10d, r10d
	cwde
	mov	WORD PTR 22[rbx], r10w
	add	DWORD PTR 16[rbx], eax
	mov	eax, 2
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L28:
	xor	al, al
	xor	edx, edx
	xor	ecx, ecx
	or	DWORD PTR 36[rbx], 32
	cwde
	mov	WORD PTR 20[rbx], dx
	add	DWORD PTR 12[rbx], eax
	mov	eax, 3
	mov	WORD PTR 24[rbx], cx
	jmp	.L13
	.seh_endproc
	.p2align 4
	.def	sub_807A7F4;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_807A7F4
sub_807A7F4:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	movzx	eax, WORD PTR 148[rcx]
	movzx	edx, WORD PTR 144[rcx]
	sal	eax, 16
	or	eax, edx
	mov	rdx, QWORD PTR .refptr.gCamera[rip]
	movd	xmm0, eax
	mov	rbx, rcx
	movzx	eax, WORD PTR 4[rdx]
	movzx	edx, WORD PTR [rdx]
	sal	eax, 16
	or	eax, edx
	movd	xmm1, eax
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	psubw	xmm0, xmm1
	cmp	BYTE PTR [rax], 2
	jbe	.L30
	movzx	eax, WORD PTR 201[rcx]
	movzx	edx, WORD PTR 197[rcx]
	sal	eax, 16
	or	eax, edx
	movd	xmm2, eax
	paddw	xmm2, xmm0
	movdqu	xmm0, xmm2
.L31:
	mov	eax, DWORD PTR 176[rbx]
	movd	DWORD PTR 54[rbx], xmm0
	test	eax, eax
	je	.L32
	movzx	eax, WORD PTR 184[rbx]
	cmp	ax, 1
	je	.L33
	cmp	ax, 2
	je	.L34
	test	ax, ax
	jne	.L35
.L32:
	and	DWORD PTR 48[rbx], -3073
.L36:
	lea	rsi, 16[rbx]
	mov	rcx, rsi
	call	DisplaySprite
	or	DWORD PTR 48[rbx], 2048
	mov	rcx, rsi
	call	DisplaySprite
	movd	xmm0, DWORD PTR 54[rbx]
.L35:
	lea	rcx, 80[rbx]
	movd	DWORD PTR 118[rbx], xmm0
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L30:
	movzx	eax, WORD PTR 157[rcx]
	movzx	edx, WORD PTR 153[rcx]
	sal	eax, 16
	or	eax, edx
	movd	xmm3, eax
	paddw	xmm3, xmm0
	movdqu	xmm0, xmm3
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L34:
	and	DWORD PTR 48[rbx], -3073
	lea	rsi, 16[rbx]
	mov	rcx, rsi
	call	DisplaySprite
	or	DWORD PTR 48[rbx], 1024
	mov	rcx, rsi
	call	DisplaySprite
	movd	xmm0, DWORD PTR 54[rbx]
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L33:
	mov	eax, DWORD PTR 48[rbx]
	and	ah, -9
	or	ah, 4
	mov	DWORD PTR 48[rbx], eax
	jmp	.L36
	.seh_endproc
	.p2align 4
	.def	sub_807AA68;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_807AA68
sub_807AA68:
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
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	jbe	.L38
	mov	rax, QWORD PTR 196[rbx]
	movdqu	xmm3, XMMWORD PTR 184[rbx]
	movdqu	xmm0, XMMWORD PTR 152[rbx]
	mov	QWORD PTR 204[rbx], rax
	shufps	xmm0, xmm3, 148
	movups	XMMWORD PTR 188[rbx], xmm0
.L38:
	mov	rcx, rbx
	call	sub_807A99C
	cmp	eax, 2
	je	.L44
.L39:
	mov	rcx, rbx
	call	sub_807A920
	test	eax, eax
	je	.L43
	mov	rax, QWORD PTR [rbx]
	movzx	edx, BYTE PTR 12[rbx]
	mov	BYTE PTR [rax], dl
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L43:
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	sub_807A7F4
	.p2align 4,,10
	.p2align 3
.L44:
	mov	edx, DWORD PTR 144[rbx]
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	xor	ecx, ecx
	xor	r8d, r8d
	movq	xmm2, QWORD PTR 152[rbx]
	mov	DWORD PTR 180[rbx], 1
	sal	edx, 8
	movq	xmm1, QWORD PTR 12[rax]
	mov	BYTE PTR 117[rax], 1
	movd	xmm0, edx
	mov	edx, DWORD PTR 148[rbx]
	mov	WORD PTR 108[rax], cx
	mov	DWORD PTR 20[rax], 0
	sal	edx, 8
	mov	WORD PTR 24[rax], r8w
	movd	xmm4, edx
	mov	BYTE PTR 40[rax], 0
	movzx	eax, WORD PTR 184[rbx]
	punpckldq	xmm0, xmm4
	paddd	xmm0, xmm2
	psubd	xmm1, xmm0
	movq	QWORD PTR 160[rbx], xmm1
	cmp	ax, 1
	je	.L40
	cmp	ax, 2
	je	.L41
	test	ax, ax
	jne	.L42
.L40:
	mov	edx, 595
	mov	BYTE PTR 64[rbx], 0
	mov	WORD PTR 34[rbx], dx
.L42:
	mov	DWORD PTR 176[rbx], 1
	mov	ecx, 296
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rsi]
	lea	rdx, sub_807A560[rip]
	mov	QWORD PTR 40[rax], rdx
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L41:
	mov	eax, 595
	mov	BYTE PTR 64[rbx], 1
	mov	WORD PTR 34[rbx], ax
	jmp	.L42
	.seh_endproc
	.p2align 4
	.def	sub_807A560;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_807A560
sub_807A560:
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
	mov	rbp, QWORD PTR .refptr.gCurTask[rip]
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	xor	r9d, r9d
	mov	rax, QWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	mov	BYTE PTR 117[rsi], 1
	mov	WORD PTR 108[rsi], r9w
	cmp	BYTE PTR [rax], 2
	jbe	.L46
	mov	rax, QWORD PTR 196[rbx]
	movdqu	xmm2, XMMWORD PTR 184[rbx]
	movdqu	xmm0, XMMWORD PTR 152[rbx]
	mov	QWORD PTR 204[rbx], rax
	shufps	xmm0, xmm2, 148
	movups	XMMWORD PTR 188[rbx], xmm0
.L46:
	mov	edx, DWORD PTR 36[rsi]
	movzx	eax, WORD PTR 184[rbx]
	movzx	ecx, WORD PTR 48[rsi]
	mov	r9d, edx
	and	r9d, 128
	cmp	ax, 1
	je	.L47
	cmp	ax, 2
	je	.L48
	test	ax, ax
	je	.L49
	cmp	cx, 120
	je	.L56
	test	r9d, r9d
	jne	.L87
	mov	r8d, DWORD PTR 180[rbx]
	test	r8d, r8d
	jne	.L53
	.p2align 4,,10
	.p2align 3
.L87:
	lea	rdi, 16[rbx]
.L52:
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	sub_807A7F4
	.p2align 4,,10
	.p2align 3
.L48:
	mov	eax, DWORD PTR 156[rbx]
	lea	r8d, -1920[rax]
	movsx	eax, WORD PTR 170[rbx]
	mov	r10d, r8d
	mov	DWORD PTR 156[rbx], r8d
	sar	r10d, 8
	cmp	r10d, eax
	jg	.L97
	sal	eax, 8
	mov	DWORD PTR 156[rbx], eax
	mov	r8d, eax
	cmp	cx, 120
	je	.L66
	test	r9d, r9d
	jne	.L70
	mov	eax, DWORD PTR 180[rbx]
	test	eax, eax
	je	.L70
	mov	eax, DWORD PTR 152[rbx]
	mov	edi, 1
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L47:
	mov	eax, DWORD PTR 152[rbx]
	movsx	r8d, WORD PTR 172[rbx]
	add	eax, 1920
	mov	r10d, eax
	mov	DWORD PTR 152[rbx], eax
	sar	r10d, 8
	cmp	r10d, r8d
	jge	.L60
.L95:
	cmp	cx, 120
	jne	.L98
.L56:
	mov	r10d, DWORD PTR 180[rbx]
	test	r10d, r10d
	je	.L87
	mov	DWORD PTR 180[rbx], 0
	and	edx, -4194305
	mov	DWORD PTR 36[rsi], edx
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L49:
	mov	eax, DWORD PTR 152[rbx]
	movsx	r8d, WORD PTR 168[rbx]
	sub	eax, 1920
	mov	r10d, eax
	mov	DWORD PTR 152[rbx], eax
	sar	r10d, 8
	cmp	r10d, r8d
	jg	.L95
.L60:
	mov	eax, r8d
	sal	eax, 8
	mov	DWORD PTR 152[rbx], eax
	cmp	cx, 120
	je	.L66
	test	r9d, r9d
	jne	.L70
	mov	edi, DWORD PTR 180[rbx]
	test	edi, edi
	jne	.L99
	.p2align 4,,10
	.p2align 3
.L70:
	mov	eax, 595
	mov	BYTE PTR 64[rbx], 2
	lea	rdi, 16[rbx]
	mov	WORD PTR 34[rbx], ax
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	mov	eax, DWORD PTR 36[rsi]
	test	al, -128
	jne	.L69
	mov	r9d, DWORD PTR 180[rbx]
	test	r9d, r9d
	je	.L69
	mov	ecx, eax
	movzx	edx, WORD PTR 184[rbx]
	mov	DWORD PTR 180[rbx], 0
	and	ecx, -4194305
	mov	DWORD PTR 36[rsi], ecx
	cmp	dx, 1
	je	.L73
	cmp	dx, 2
	je	.L74
	test	dx, dx
	jne	.L69
	mov	r8d, -1920
	or	ecx, 1
	mov	BYTE PTR 117[rsi], 1
	mov	WORD PTR 24[rsi], r8w
	mov	DWORD PTR 36[rsi], ecx
	.p2align 4,,10
	.p2align 3
.L69:
	mov	DWORD PTR 176[rbx], 0
	mov	ecx, 296
	call	m4aSongNumStop
	mov	rax, QWORD PTR 0[rbp]
	lea	rdx, sub_807AABC[rip]
	mov	QWORD PTR 40[rax], rdx
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L98:
	lea	rdi, 16[rbx]
	test	r9d, r9d
	jne	.L52
	mov	ecx, DWORD PTR 180[rbx]
	test	ecx, ecx
	je	.L52
.L85:
	mov	r8d, DWORD PTR 156[rbx]
	xor	edi, edi
.L57:
	or	edx, 4194304
	movd	xmm4, r8d
	mov	rcx, rbx
	movq	xmm1, QWORD PTR 160[rbx]
	mov	DWORD PTR 36[rsi], edx
	mov	edx, DWORD PTR 144[rbx]
	sal	edx, 8
	movd	xmm0, edx
	mov	edx, DWORD PTR 148[rbx]
	sal	edx, 8
	movd	xmm3, edx
	punpckldq	xmm0, xmm3
	paddd	xmm0, xmm1
	movd	xmm1, eax
	punpckldq	xmm1, xmm4
	paddd	xmm0, xmm1
	movq	QWORD PTR 12[rsi], xmm0
	call	sub_807A99C
	test	dil, dil
	jne	.L70
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L97:
	cmp	cx, 120
	je	.L56
	lea	rdi, 16[rbx]
	test	r9d, r9d
	jne	.L52
	mov	eax, DWORD PTR 180[rbx]
	test	eax, eax
	je	.L52
	mov	eax, DWORD PTR 152[rbx]
	xor	edi, edi
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L66:
	mov	r11d, DWORD PTR 180[rbx]
	test	r11d, r11d
	je	.L70
	mov	DWORD PTR 180[rbx], 0
	and	edx, -4194305
	mov	DWORD PTR 36[rsi], edx
	jmp	.L70
	.p2align 4,,10
	.p2align 3
.L53:
	mov	eax, DWORD PTR 152[rbx]
	jmp	.L85
	.p2align 4,,10
	.p2align 3
.L74:
	mov	eax, 14
	mov	WORD PTR 117[rsi], ax
	jmp	.L69
	.p2align 4,,10
	.p2align 3
.L99:
	mov	r8d, DWORD PTR 156[rbx]
	mov	edi, 1
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L73:
	mov	edx, 1920
	and	eax, -4194306
	mov	BYTE PTR 117[rsi], 1
	mov	WORD PTR 24[rsi], dx
	mov	DWORD PTR 36[rsi], eax
	jmp	.L69
	.seh_endproc
	.p2align 4
	.def	sub_807AABC;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_807AABC
sub_807AABC:
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
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	jbe	.L101
	mov	rax, QWORD PTR 196[rbx]
	movdqu	xmm1, XMMWORD PTR 184[rbx]
	movdqu	xmm0, XMMWORD PTR 152[rbx]
	mov	QWORD PTR 204[rbx], rax
	shufps	xmm0, xmm1, 148
	movups	XMMWORD PTR 188[rbx], xmm0
.L101:
	mov	rcx, rbx
	call	sub_807A99C
	mov	rcx, rbx
	call	sub_807A920
	test	eax, eax
	je	.L102
	mov	rax, QWORD PTR [rbx]
	movzx	edx, BYTE PTR 12[rbx]
	mov	BYTE PTR [rax], dl
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L102:
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	sub_807A7F4
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_ArrowPlatform_Left
	.def	CreateEntity_ArrowPlatform_Left;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_ArrowPlatform_Left
CreateEntity_ArrowPlatform_Left:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	DWORD PTR 32[rsp], 0
	movzx	edx, dx
	movzx	r9d, r9b
	movzx	r8d, r8w
	call	sub_807A33C
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_ArrowPlatform_Right
	.def	CreateEntity_ArrowPlatform_Right;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_ArrowPlatform_Right
CreateEntity_ArrowPlatform_Right:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	DWORD PTR 32[rsp], 1
	movzx	edx, dx
	movzx	r9d, r9b
	movzx	r8d, r8w
	call	sub_807A33C
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateEntity_ArrowPlatform_Up
	.def	CreateEntity_ArrowPlatform_Up;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateEntity_ArrowPlatform_Up
CreateEntity_ArrowPlatform_Up:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	DWORD PTR 32[rsp], 2
	movzx	edx, dx
	movzx	r9d, r9b
	movzx	r8d, r8w
	call	sub_807A33C
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	Coll_Player_Platform;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStop;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
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
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
