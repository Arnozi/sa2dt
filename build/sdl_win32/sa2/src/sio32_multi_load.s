	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Sio32MultiLoadMain
	.def	Sio32MultiLoadMain;	.scl	2;	.type	32;	.endef
	.seh_proc	Sio32MultiLoadMain
Sio32MultiLoadMain:
	.seh_endprologue
	cmp	BYTE PTR gSio32MultiLoadArea[rip+1], 4
	ja	.L2
	movzx	eax, BYTE PTR gSio32MultiLoadArea[rip+1]
	lea	rdx, .L4[rip]
	movsx	rax, DWORD PTR [rdx+rax*4]
	add	rax, rdx
	jmp	rax
	.section .rdata,"dr"
	.align 4
.L4:
	.long	.L8-.L4
	.long	.L7-.L4
	.long	.L6-.L4
	.long	.L5-.L4
	.long	.L3-.L4
	.text
	.p2align 4,,10
	.p2align 3
.L5:
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	xor	r8d, r8d
	mov	r9d, 1
	mov	r10d, 4096
	mov	WORD PTR 520[rax], r8w
	movzx	edx, WORD PTR 512[rax]
	and	dl, 63
	cmp	BYTE PTR gSio32MultiLoadArea[rip], 0
	mov	WORD PTR 512[rax], dx
	mov	WORD PTR 520[rax], r9w
	mov	WORD PTR 296[rax], r10w
	mov	DWORD PTR 296[rax], 8192
	mov	DWORD PTR 296[rax], 8195
	mov	QWORD PTR 288[rax], 0
	jne	.L44
	mov	edx, 192
	mov	WORD PTR 514[rax], dx
.L26:
	mov	eax, 1
	ret
	.p2align 4,,10
	.p2align 3
.L3:
	movzx	edx, BYTE PTR gSio32MultiLoadArea[rip+2]
	lea	eax, 1[rdx]
	cmp	dl, 2
	ja	.L26
.L9:
	mov	BYTE PTR gSio32MultiLoadArea[rip+2], al
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	cmp	BYTE PTR gSio32MultiLoadArea[rip], 1
	je	.L45
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	edx, 192
	mov	r11d, 4096
	xor	ecx, ecx
	mov	r8d, 1
	mov	WORD PTR 296[rax], r11w
	mov	DWORD PTR 288[rax], 0
	mov	WORD PTR 514[rax], dx
	movzx	edx, WORD PTR 296[rax]
	or	dx, 16512
	mov	WORD PTR 296[rax], dx
	mov	WORD PTR 520[rax], cx
	movzx	edx, WORD PTR 512[rax]
	or	dl, -128
	mov	WORD PTR 512[rax], dx
	mov	WORD PTR 520[rax], r8w
.L13:
	mov	eax, 2
.L25:
	mov	BYTE PTR gSio32MultiLoadArea[rip+1], al
	mov	eax, 1
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L6:
	mov	r10d, DWORD PTR gSio32MultiLoadArea[rip+16]
	xor	r8d, r8d
	mov	eax, 8192
	test	r10d, r10d
	cmovns	r8d, r10d
	cmp	r8d, eax
	cmovg	r8d, eax
	test	rcx, rcx
	je	.L14
	mov	DWORD PTR [rcx], r8d
.L14:
	cmp	BYTE PTR gSio32MultiLoadArea[rip], 1
	je	.L15
	movsx	rcx, DWORD PTR gSio32MultiLoadArea[rip+28]
	cmp	ecx, r8d
	jge	.L20
	lea	eax, 1[rcx]
	sub	r8d, ecx
	mov	r9, QWORD PTR gSio32MultiLoadArea[rip+8]
	mov	edx, DWORD PTR gSio32MultiLoadArea[rip+24]
	cdqe
	lea	rcx, 1[r8+rcx]
	.p2align 4,,10
	.p2align 3
.L19:
	mov	DWORD PTR gSio32MultiLoadArea[rip+28], eax
	add	edx, DWORD PTR -4[r9+rax*4]
	add	rax, 1
	mov	DWORD PTR gSio32MultiLoadArea[rip+24], edx
	cmp	rax, rcx
	jne	.L19
.L20:
	cmp	r10d, 8192
	jle	.L18
	mov	eax, DWORD PTR gSio32MultiLoadArea[rip+24]
	add	eax, DWORD PTR gSio32MultiLoadArea[rip+20]
	mov	DWORD PTR gSio32MultiLoadArea[rip+20], eax
	cmp	eax, -1
	je	.L22
.L40:
	movzx	eax, BYTE PTR gSio32MultiLoadArea[rip+2]
.L23:
	mov	BYTE PTR gSio32MultiLoadArea[rip+1], 3
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L8:
	movzx	eax, BYTE PTR gSio32MultiLoadArea[rip+2]
	test	DWORD PTR gSio32MultiLoadArea[rip], 16711935
	je	.L42
	mov	BYTE PTR gSio32MultiLoadArea[rip+1], 1
.L42:
	add	eax, 1
	jmp	.L9
.L2:
	movzx	eax, BYTE PTR gSio32MultiLoadArea[rip+2]
	add	eax, 1
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L15:
	cmp	r10d, 8192
	jg	.L40
.L18:
	movzx	eax, BYTE PTR gSio32MultiLoadArea[rip+2]
	cmp	al, -116
	jne	.L42
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L44:
	mov	DWORD PTR 268[rax], 0
	mov	ecx, 192
	mov	WORD PTR 514[rax], cx
	mov	eax, 4
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L45:
	movzx	eax, BYTE PTR gSio32MultiLoadArea[rip+2]
	cmp	al, 5
	jbe	.L42
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	r9d, 192
	xor	r10d, r10d
	mov	r11d, 1
	mov	DWORD PTR 288[rax], 0
	mov	WORD PTR 514[rax], r9w
	movzx	edx, WORD PTR 296[rax]
	or	dl, -128
	mov	WORD PTR 296[rax], dx
	mov	DWORD PTR 268[rax], 12645144
	mov	WORD PTR 520[rax], r10w
	movzx	edx, WORD PTR 512[rax]
	or	edx, 64
	mov	WORD PTR 512[rax], dx
	mov	WORD PTR 520[rax], r11w
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L22:
	mov	BYTE PTR gSio32MultiLoadArea[rip+3], 1
	movzx	eax, BYTE PTR gSio32MultiLoadArea[rip+2]
	jmp	.L23
	.seh_endproc
	.p2align 4
	.globl	Sio32MultiLoadIntr
	.def	Sio32MultiLoadIntr;	.scl	2;	.type	32;	.endef
	.seh_proc	Sio32MultiLoadIntr
Sio32MultiLoadIntr:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.REG_BASE[rip]
	cmp	BYTE PTR gSio32MultiLoadArea[rip], 1
	movsx	rax, DWORD PTR gSio32MultiLoadArea[rip+16]
	mov	r8d, DWORD PTR 288[rdx]
	je	.L62
	movzx	ecx, WORD PTR 296[rdx]
	or	cl, -128
	mov	WORD PTR 296[rdx], cx
	test	eax, eax
	js	.L63
	cmp	eax, 8191
	jg	.L56
	mov	rdx, QWORD PTR gSio32MultiLoadArea[rip+8]
	mov	DWORD PTR [rdx+rax*4], r8d
	mov	eax, DWORD PTR gSio32MultiLoadArea[rip+16]
	cmp	eax, 8194
	jg	.L46
.L57:
	add	eax, 1
	mov	DWORD PTR gSio32MultiLoadArea[rip+16], eax
.L46:
	ret
	.p2align 4,,10
	.p2align 3
.L63:
	cmp	r8d, -16843010
	je	.L57
	ret
	.p2align 4,,10
	.p2align 3
.L62:
	xor	ecx, ecx
	mov	WORD PTR 270[rdx], cx
	test	eax, eax
	js	.L64
	cmp	eax, 8191
	jle	.L65
	mov	ecx, DWORD PTR gSio32MultiLoadArea[rip+20]
	mov	DWORD PTR 288[rdx], ecx
	cmp	eax, 8194
	jg	.L46
	add	eax, 1
.L52:
	mov	DWORD PTR gSio32MultiLoadArea[rip+16], eax
	movzx	eax, WORD PTR 296[rdx]
	or	al, -128
	mov	WORD PTR 296[rdx], ax
	mov	eax, 192
	mov	WORD PTR 270[rdx], ax
	ret
	.p2align 4,,10
	.p2align 3
.L56:
	mov	DWORD PTR gSio32MultiLoadArea[rip+20], r8d
	cmp	eax, 8194
	jg	.L46
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L65:
	mov	rcx, QWORD PTR gSio32MultiLoadArea[rip+8]
	movsx	r8, eax
	add	eax, 1
	mov	ecx, DWORD PTR [rcx+r8*4]
	mov	DWORD PTR 288[rdx], ecx
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L64:
	mov	DWORD PTR 288[rdx], -16843010
	add	eax, 1
	jmp	.L52
	.seh_endproc
	.p2align 4
	.globl	Sio32MultiLoadInit
	.def	Sio32MultiLoadInit;	.scl	2;	.type	32;	.endef
	.seh_proc	Sio32MultiLoadInit
Sio32MultiLoadInit:
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
	mov	edi, ecx
	xor	ecx, ecx
	mov	rbx, rdx
	mov	WORD PTR 520[rsi], cx
	movzx	eax, WORD PTR 512[rsi]
	lea	rcx, 44[rsp]
	lea	rdx, gSio32MultiLoadArea[rip]
	and	al, 63
	mov	WORD PTR 512[rsi], ax
	mov	WORD PTR 520[rsi], r8w
	mov	r8d, 83886088
	mov	DWORD PTR 44[rsp], 0
	call	CpuSet
	mov	QWORD PTR gSio32MultiLoadArea[rip+8], rbx
	mov	DWORD PTR 296[rsi], 8195
	mov	DWORD PTR gSio32MultiLoadArea[rip+16], -1
	test	edi, edi
	je	.L66
	mov	BYTE PTR gSio32MultiLoadArea[rip], 1
	mov	rdx, rbx
	pxor	xmm0, xmm0
	lea	rax, 32768[rbx]
	mov	DWORD PTR 268[rsi], 0
	.p2align 4,,10
	.p2align 3
.L68:
	movdqu	xmm2, XMMWORD PTR [rdx]
	add	rdx, 16
	paddd	xmm0, xmm2
	cmp	rax, rdx
	jne	.L68
	movdqu	xmm1, xmm0
	mov	edx, 4097
	psrldq	xmm1, 8
	paddd	xmm0, xmm1
	movdqu	xmm1, xmm0
	psrldq	xmm1, 4
	paddd	xmm0, xmm1
	movd	eax, xmm0
	not	eax
	mov	DWORD PTR gSio32MultiLoadArea[rip+20], eax
	mov	eax, 4096
	mov	WORD PTR 296[rsi], ax
	mov	WORD PTR 296[rsi], dx
.L66:
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.globl	gSio32MultiLoadArea
	.bss
	.align 32
gSio32MultiLoadArea:
	.space 32
	.ident	"GCC: (GNU) 13-win32"
	.def	CpuSet;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
