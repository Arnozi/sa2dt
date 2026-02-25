	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	MultiSioInit
	.def	MultiSioInit;	.scl	2;	.type	32;	.endef
	.seh_proc	MultiSioInit
MultiSioInit:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.REG_BASE[rip]
	mov	r8d, 1
	xor	r9d, r9d
	lea	rbx, gMultiSioArea[rip]
	mov	rdx, rbx
	mov	edi, ecx
	xor	ecx, ecx
	mov	WORD PTR 520[rsi], cx
	movzx	eax, WORD PTR 512[rsi]
	lea	rcx, 44[rsp]
	and	al, 63
	mov	WORD PTR 512[rsi], ax
	mov	WORD PTR 520[rsi], r8w
	mov	r8d, 83886216
	mov	WORD PTR 308[rsi], r9w
	mov	DWORD PTR 296[rsi], 8192
	movzx	eax, WORD PTR 296[rsi]
	or	ax, 16387
	mov	WORD PTR 296[rsi], ax
	mov	DWORD PTR 44[rsp], 0
	call	CpuSet
	lea	rax, 180[rbx]
	mov	rdx, rbx
	mov	BYTE PTR gMultiSioArea[rip+2], dil
	lea	rdi, 152[rbx]
	movq	xmm1, rax
	mov	DWORD PTR gMultiSioArea[rip+20], 13
	lea	r8, 544[rbx]
	movq	xmm0, rdi
	lea	rax, 208[rbx]
	punpcklqdq	xmm0, xmm1
	movups	XMMWORD PTR gMultiSioArea[rip+40], xmm0
.L2:
	lea	rcx, 28[rax]
	mov	QWORD PTR 56[rdx], rax
	add	rdx, 8
	mov	QWORD PTR 80[rdx], rcx
	lea	rcx, 56[rax]
	add	rax, 84
	mov	QWORD PTR 112[rdx], rcx
	cmp	rax, r8
	jne	.L2
	xor	eax, eax
	mov	edx, 1
	mov	WORD PTR 520[rsi], ax
	movzx	eax, WORD PTR 512[rsi]
	or	al, -128
	mov	WORD PTR 512[rsi], ax
	mov	WORD PTR 520[rsi], dx
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	MultiSioSendDataSet
	.def	MultiSioSendDataSet;	.scl	2;	.type	32;	.endef
	.seh_proc	MultiSioSendDataSet
MultiSioSendDataSet:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gSio32MultiLoadArea[rip]
	mov	r8, QWORD PTR gMultiSioArea[rip+40]
	xor	r10d, r10d
	movzx	eax, BYTE PTR 3[rax]
	sal	eax, 5
	and	eax, 32
	and	edx, 1
	mov	r9, rcx
	sal	edx, 4
	or	eax, edx
	movzx	edx, BYTE PTR 1[r8]
	and	edx, -49
	or	eax, edx
	mov	BYTE PTR 1[r8], al
	movzx	ecx, BYTE PTR gMultiSioArea[rip+11]
	and	eax, -80
	movzx	edx, BYTE PTR gMultiSioArea[rip+8]
	mov	BYTE PTR [r8], cl
	movzx	ecx, BYTE PTR gMultiSioArea[rip+2]
	xor	cl, BYTE PTR gMultiSioArea[rip+3]
	and	edx, 64
	mov	WORD PTR 2[r8], r10w
	and	ecx, 15
	or	ecx, edx
	lea	rdx, 4[r8]
	or	eax, ecx
	mov	rcx, r9
	mov	BYTE PTR 1[r8], al
	mov	r8d, 67108869
	call	CpuSet
	mov	rcx, QWORD PTR gMultiSioArea[rip+40]
	pxor	xmm0, xmm0
	pxor	xmm2, xmm2
	mov	rax, rcx
	lea	rdx, 24[rcx]
.L6:
	movq	xmm1, QWORD PTR [rax]
	add	rax, 8
	movdqu	xmm3, xmm1
	punpcklwd	xmm1, xmm2
	punpcklwd	xmm3, xmm2
	pshufd	xmm1, xmm1, 78
	paddd	xmm0, xmm3
	paddd	xmm0, xmm1
	cmp	rdx, rax
	jne	.L6
	movd	edx, xmm0
	pshufd	xmm4, xmm0, 0xe5
	movd	eax, xmm4
	add	eax, edx
	cmp	BYTE PTR gMultiSioArea[rip], 0
	not	eax
	mov	WORD PTR 2[rcx], ax
	jne	.L7
	mov	DWORD PTR gMultiSioArea[rip+20], -1
.L5:
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	xor	ecx, ecx
	cmp	BYTE PTR gMultiSioArea[rip+8], 0
	mov	DWORD PTR gMultiSioArea[rip+20], -1
	mov	WORD PTR 270[rax], cx
	jns	.L5
	mov	edx, 192
	mov	WORD PTR 270[rax], dx
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	MultiSioRecvDataCheck
	.def	MultiSioRecvDataCheck;	.scl	2;	.type	32;	.endef
	.seh_proc	MultiSioRecvDataCheck
MultiSioRecvDataCheck:
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
	movups	XMMWORD PTR 48[rsp], xmm6
	.seh_savexmm	xmm6, 48
	.seh_endprologue
	movdqu	xmm0, XMMWORD PTR gMultiSioArea[rip+120]
	xor	edx, edx
	xor	r12d, r12d
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	r8d, 1
	movdqu	xmm4, XMMWORD PTR gMultiSioArea[rip+88]
	mov	BYTE PTR gMultiSioArea[rip+3], 0
	movdqu	xmm5, XMMWORD PTR gMultiSioArea[rip+104]
	movups	XMMWORD PTR gMultiSioArea[rip+88], xmm0
	movdqu	xmm0, XMMWORD PTR gMultiSioArea[rip+136]
	pxor	xmm6, xmm6
	movups	XMMWORD PTR gMultiSioArea[rip+120], xmm4
	lea	rsi, gMultiSioArea[rip+120]
	movups	XMMWORD PTR gMultiSioArea[rip+136], xmm5
	movups	XMMWORD PTR gMultiSioArea[rip+104], xmm0
	mov	DWORD PTR 36[rsp], 0
	mov	rbx, rcx
	lea	rbp, 44[rsp]
	lea	rdi, 40[rsp]
	mov	WORD PTR 520[rax], dx
	mov	WORD PTR 520[rax], r8w
.L11:
	mov	rdx, QWORD PTR [rsi+r12*8]
	pxor	xmm1, xmm1
	mov	rax, rdx
	lea	rcx, 24[rdx]
.L12:
	movq	xmm0, QWORD PTR [rax]
	add	rax, 8
	movdqu	xmm2, xmm0
	punpcklwd	xmm0, xmm6
	punpcklwd	xmm2, xmm6
	pshufd	xmm0, xmm0, 78
	paddd	xmm1, xmm2
	paddd	xmm1, xmm0
	cmp	rcx, rax
	jne	.L12
	cmp	BYTE PTR 0[rbp+r12], 0
	je	.L13
	movd	ecx, xmm1
	pshufd	xmm3, xmm1, 0xe5
	movd	eax, xmm3
	add	eax, ecx
	cmp	ax, -1
	je	.L29
.L13:
	add	rdx, 4
	mov	rcx, rdi
	add	r12, 1
	add	rbx, 20
	mov	r8d, 83886085
	mov	DWORD PTR 40[rsp], 0
	call	CpuSet
	cmp	r12, 4
	jne	.L11
	movzx	ecx, BYTE PTR gMultiSioArea[rip+2]
	movzx	eax, BYTE PTR gMultiSioArea[rip+3]
	or	ecx, eax
	mov	BYTE PTR gMultiSioArea[rip+2], cl
	test	al, 1
	je	.L15
	cmp	BYTE PTR gMultiSioArea[rip], 8
	mov	r8, QWORD PTR gMultiSioArea[rip+120]
	je	.L30
	movzx	edx, BYTE PTR gMultiSioArea[rip+8]
	movzx	ecx, BYTE PTR 1[r8]
	or	ecx, edx
	and	edx, -65
	and	ecx, 64
	or	edx, ecx
	mov	BYTE PTR gMultiSioArea[rip+8], dl
.L18:
	movzx	ecx, BYTE PTR 1[r8]
	mov	r9d, edx
	and	edx, -33
	shr	r9b, 5
	shr	cl, 4
	or	ecx, r9d
	and	ecx, 1
	sal	ecx, 5
	or	edx, ecx
	mov	BYTE PTR gMultiSioArea[rip+8], dl
.L15:
	movups	xmm6, XMMWORD PTR 48[rsp]
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
.L29:
	mov	ecx, r12d
	mov	eax, 1
	mov	r8d, 67108869
	sal	eax, cl
	or	BYTE PTR gMultiSioArea[rip+3], al
	movzx	eax, BYTE PTR 1[rdx]
	shr	al, 5
	and	eax, 1
	sal	eax, cl
	lea	rcx, 4[rdx]
	mov	rdx, rbx
	and	eax, 15
	or	BYTE PTR gMultiSioArea[rip+8], al
	call	CpuSet
	mov	rdx, QWORD PTR [rsi+r12*8]
	jmp	.L13
.L30:
	test	al, 3
	je	.L17
	cmp	al, cl
	je	.L31
.L17:
	movzx	edx, BYTE PTR gMultiSioArea[rip+8]
	xor	ecx, edx
	and	ecx, 14
	jne	.L18
	or	edx, 64
	mov	BYTE PTR gMultiSioArea[rip+8], dl
	jmp	.L18
.L31:
	or	BYTE PTR gMultiSioArea[rip+8], 16
	jmp	.L17
	.seh_endproc
	.p2align 4
	.globl	MultiSioMain
	.def	MultiSioMain;	.scl	2;	.type	32;	.endef
	.seh_proc	MultiSioMain
MultiSioMain:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	movzx	eax, BYTE PTR gMultiSioArea[rip+1]
	mov	rsi, rcx
	mov	rcx, QWORD PTR .refptr.REG_BASE[rip]
	mov	ebx, r8d
	mov	r8d, DWORD PTR 296[rcx]
	test	al, al
	je	.L33
	cmp	al, 1
	je	.L34
.L35:
	movzx	edx, BYTE PTR gMultiSioArea[rip+8]
	add	BYTE PTR gMultiSioArea[rip+11], 1
	mov	eax, edx
	mov	ecx, edx
	shr	dl, 6
	shr	al, 4
	shr	cl, 5
	and	edx, 1
	and	eax, 1
	and	ecx, 1
	sal	edx, 6
	sal	ecx, 5
	sal	eax, 4
	or	eax, ecx
	movzx	ecx, BYTE PTR gMultiSioArea[rip+3]
	or	eax, ecx
	or	eax, edx
	movzx	edx, BYTE PTR gMultiSioArea[rip+2]
	sal	edx, 8
	or	eax, edx
	xor	edx, edx
	cmp	BYTE PTR gMultiSioArea[rip], 8
	sete	dl
	sal	edx, 7
	or	eax, edx
	xor	edx, edx
	cmp	BYTE PTR gMultiSioArea[rip+9], 0
	setne	dl
	sal	edx, 12
	or	eax, edx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L33:
	test	r8b, 48
	je	.L40
.L36:
	mov	BYTE PTR gMultiSioArea[rip+1], 1
.L34:
	mov	rcx, rdx
	call	MultiSioRecvDataCheck
	mov	edx, ebx
	mov	rcx, rsi
	call	MultiSioSendDataSet
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L40:
	mov	eax, r8d
	and	eax, -120
	cmp	al, 8
	jne	.L35
	and	r8d, 4
	jne	.L36
	cmp	DWORD PTR gMultiSioArea[rip+20], 13
	jne	.L36
	xor	eax, eax
	mov	r8d, 1
	mov	r9d, 192
	and	BYTE PTR 297[rcx], -65
	mov	WORD PTR 520[rcx], ax
	movzx	eax, WORD PTR 512[rcx]
	or	BYTE PTR 296[rcx], -128
	and	al, 127
	mov	BYTE PTR gMultiSioArea[rip], 8
	mov	WORD PTR 512[rcx], ax
	movzx	eax, WORD PTR 512[rcx]
	or	eax, 64
	mov	WORD PTR 512[rcx], ax
	mov	WORD PTR 520[rcx], r8w
	mov	WORD PTR 514[rcx], r9w
	mov	DWORD PTR 268[rcx], 48060
	jmp	.L36
	.seh_endproc
	.p2align 4
	.globl	MultiSioStart
	.def	MultiSioStart;	.scl	2;	.type	32;	.endef
	.seh_proc	MultiSioStart
MultiSioStart:
	.seh_endprologue
	cmp	BYTE PTR gMultiSioArea[rip], 0
	je	.L41
	or	BYTE PTR gMultiSioArea[rip+8], -128
.L41:
	ret
	.seh_endproc
	.p2align 4
	.globl	MultiSioStop
	.def	MultiSioStop;	.scl	2;	.type	32;	.endef
	.seh_proc	MultiSioStop
MultiSioStop:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	xor	edx, edx
	mov	ecx, 1
	and	BYTE PTR gMultiSioArea[rip+8], 127
	mov	r8d, 8195
	mov	r9d, 192
	mov	WORD PTR 520[rax], dx
	movzx	edx, WORD PTR 512[rax]
	and	dl, 63
	mov	WORD PTR 512[rax], dx
	mov	WORD PTR 520[rax], cx
	mov	WORD PTR 296[rax], r8w
	mov	DWORD PTR 268[rax], 48060
	mov	WORD PTR 514[rax], r9w
	ret
	.seh_endproc
	.p2align 4
	.globl	MultiSioIntr
	.def	MultiSioIntr;	.scl	2;	.type	32;	.endef
	.seh_proc	MultiSioIntr
MultiSioIntr:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.REG_BASE[rip]
	mov	rax, QWORD PTR 288[rbx]
	mov	QWORD PTR 8[rsp], rax
	movzx	eax, BYTE PTR 296[rbx]
	shr	al, 6
	and	eax, 1
	mov	BYTE PTR gMultiSioArea[rip+9], al
	mov	eax, DWORD PTR gMultiSioArea[rip+20]
	cmp	eax, -1
	je	.L68
	test	eax, eax
	js	.L46
	mov	rcx, QWORD PTR gMultiSioArea[rip+48]
	movsx	rdx, eax
	movzx	edx, WORD PTR [rcx+rdx*2]
	mov	WORD PTR 298[rbx], dx
	cmp	eax, 12
	jg	.L49
	.p2align 4,,10
	.p2align 3
.L46:
	add	eax, 1
	mov	DWORD PTR gMultiSioArea[rip+20], eax
.L49:
	lea	rdx, gMultiSioArea[rip]
	xor	eax, eax
	lea	rsi, 8[rsp]
	lea	r9, 24[rdx]
	lea	rdi, 4[rdx]
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L50:
	mov	r10, QWORD PTR 56[rdx]
	movsx	r11, ecx
	mov	WORD PTR [r10+r11*2], r8w
	cmp	ecx, 11
	je	.L58
	cmp	ecx, 12
	jle	.L67
	add	rax, 1
	add	rdx, 8
	cmp	rax, 4
	je	.L69
.L55:
	movzx	r8d, WORD PTR [rsi+rax*2]
	mov	ecx, DWORD PTR [r9+rax*4]
	cmp	r8w, -258
	jne	.L50
	xor	r8d, r8d
	cmp	ecx, 11
	jg	.L57
	mov	r10, QWORD PTR 56[rdx]
	movsx	r8, ecx
	mov	r11d, -258
	mov	WORD PTR [r10+r8*2], r11w
	jne	.L67
.L58:
	mov	rcx, QWORD PTR 88[rdx]
	mov	QWORD PTR 88[rdx], r10
	mov	QWORD PTR 56[rdx], rcx
	mov	BYTE PTR [rdi+rax], 1
	mov	ecx, DWORD PTR [r9+rax*4]
	lea	r8d, 1[rcx]
.L57:
	mov	DWORD PTR [r9+rax*4], r8d
	add	rax, 1
	add	rdx, 8
	cmp	rax, 4
	jne	.L55
.L69:
	cmp	BYTE PTR gMultiSioArea[rip], 8
	jne	.L44
	xor	esi, esi
	mov	edi, 192
	mov	WORD PTR 270[rbx], si
	movzx	eax, WORD PTR 296[rbx]
	or	al, -128
	mov	WORD PTR 296[rbx], ax
	mov	WORD PTR 270[rbx], di
.L44:
	add	rsp, 16
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L68:
	movdqu	xmm0, XMMWORD PTR gMultiSioArea[rip+40]
	mov	edx, -258
	mov	WORD PTR 298[rbx], dx
	shufpd	xmm0, xmm0, 1
	movups	XMMWORD PTR gMultiSioArea[rip+40], xmm0
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L67:
	lea	r8d, 1[rcx]
	jmp	.L57
	.seh_endproc
	.globl	gUnusedMultiSioSpace
	.bss
	.align 8
gUnusedMultiSioSpace:
	.space 8
	.globl	gMultiSioArea
	.align 32
gMultiSioArea:
	.space 544
	.ident	"GCC: (GNU) 13-win32"
	.def	CpuSet;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gSio32MultiLoadArea, "dr"
	.globl	.refptr.gSio32MultiLoadArea
	.linkonce	discard
.refptr.gSio32MultiLoadArea:
	.quad	gSio32MultiLoadArea
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
