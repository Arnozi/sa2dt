	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "DmaSet with invalid DMA number: dmaNum=%d, src=%p, dest=%p, control=%d\12\0"
	.text
	.p2align 4
	.def	fprintf.constprop.0;	.scl	3;	.type	32;	.endef
	.seh_proc	fprintf.constprop.0
fprintf.constprop.0:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	lea	rdx, .LC0[rip]
	mov	QWORD PTR 80[rsp], r8
	lea	r8, 80[rsp]
	mov	QWORD PTR 88[rsp], r9
	mov	QWORD PTR 40[rsp], r8
	call	__mingw_vfprintf
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	RunDMAs
	.def	RunDMAs;	.scl	2;	.type	32;	.endef
	.seh_proc	RunDMAs
RunDMAs:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r9, QWORD PTR .refptr.REG_BASE[rip]
	lea	rdx, DMAList[rip]
	lea	r8, 220[r9]
	mov	r11d, ecx
	lea	rcx, 252[r9]
	add	r9, 268
.L27:
	mov	r10d, DWORD PTR [rcx]
	movzx	eax, WORD PTR 20[rdx]
	test	r10d, r10d
	js	.L4
.L26:
	and	ax, 32767
	mov	WORD PTR 20[rdx], ax
.L7:
	add	rcx, 4
	add	rdx, 24
	add	r8, 8
	cmp	rcx, r9
	jne	.L27
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	test	ax, ax
	jns	.L7
	mov	r10d, eax
	shr	r10d, 12
	and	r10d, 3
	cmp	r10d, r11d
	jne	.L7
	mov	r10d, DWORD PTR 16[rdx]
	test	r10d, r10d
	je	.L8
	xor	ebx, ebx
	.p2align 4,,10
	.p2align 3
.L25:
	mov	rsi, QWORD PTR [rdx]
	mov	r10, QWORD PTR 8[rdx]
	test	ah, 4
	je	.L9
	mov	eax, DWORD PTR [rsi]
	mov	DWORD PTR [r10], eax
.L10:
	movzx	eax, WORD PTR 20[rdx]
	mov	esi, eax
	mov	r10d, eax
	and	si, 384
	and	r10w, 96
	je	.L66
	cmp	r10w, 32
	je	.L67
	cmp	r10w, 96
	je	.L66
	test	si, si
	jne	.L24
	test	ah, 4
	je	.L14
.L28:
	add	QWORD PTR [rdx], 4
.L22:
	add	ebx, 1
	cmp	ebx, DWORD PTR 16[rdx]
	jb	.L25
.L8:
	test	ah, 2
	je	.L26
	not	eax
	test	al, 96
	jne	.L7
	mov	rax, QWORD PTR [r8]
	mov	QWORD PTR 8[rdx], rax
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L67:
	mov	r10, QWORD PTR 8[rdx]
	test	ah, 4
	jne	.L68
	sub	r10, 2
	mov	QWORD PTR 8[rdx], r10
	test	si, si
	jne	.L58
.L14:
	add	QWORD PTR [rdx], 2
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L66:
	mov	r10, QWORD PTR 8[rdx]
	test	ah, 4
	je	.L20
	add	r10, 4
.L13:
	mov	QWORD PTR 8[rdx], r10
	test	si, si
	je	.L28
.L24:
	cmp	si, 128
	jne	.L22
	test	ah, 4
	je	.L21
	sub	QWORD PTR [rdx], 4
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L9:
	movzx	eax, WORD PTR [rsi]
	mov	WORD PTR [r10], ax
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L20:
	add	r10, 2
	mov	QWORD PTR 8[rdx], r10
	test	si, si
	je	.L14
.L58:
	cmp	si, 128
	jne	.L22
.L21:
	sub	QWORD PTR [rdx], 2
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L68:
	sub	r10, 4
	jmp	.L13
	.seh_endproc
	.p2align 4
	.globl	DmaSet
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.seh_proc	DmaSet
DmaSet:
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
	mov	ebx, ecx
	mov	rbp, rdx
	mov	rdi, r8
	mov	esi, r9d
	cmp	ecx, 3
	jg	.L73
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	movsx	rcx, ecx
	shr	esi, 16
	lea	rdx, 0[0+rcx*8]
	lea	r8, 188[rax+rdx]
	lea	rdx, 220[rax+rdx]
	lea	rax, 252[rax+rcx*4]
	mov	QWORD PTR [r8], rbp
	mov	QWORD PTR [rdx], rdi
	lea	rdx, [rcx+rcx*2]
	xor	ecx, ecx
	mov	DWORD PTR [rax], r9d
	lea	rax, DMAList[rip]
	lea	rax, [rax+rdx*8]
	mov	edx, r9d
	and	edx, 131071
	mov	QWORD PTR [rax], rbp
	mov	QWORD PTR 8[rax], rdi
	mov	DWORD PTR 16[rax], edx
	mov	WORD PTR 20[rax], si
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	RunDMAs
	.p2align 4,,10
	.p2align 3
.L73:
	mov	ecx, 2
	call	[QWORD PTR __imp___acrt_iob_func[rip]]
	mov	DWORD PTR 40[rsp], esi
	mov	r9, rbp
	mov	r8d, ebx
	mov	QWORD PTR 32[rsp], rdi
	mov	rcx, rax
	lea	rdx, .LC0[rip]
	call	fprintf.constprop.0
	nop
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.globl	DmaStop
	.def	DmaStop;	.scl	2;	.type	32;	.endef
	.seh_proc	DmaStop
DmaStop:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	movsx	rcx, ecx
	lea	rdx, 252[rax+rcx*4]
	mov	eax, DWORD PTR [rdx]
	and	eax, 1174405119
	mov	DWORD PTR [rdx], eax
	lea	rax, DMAList[rip]
	lea	rdx, [rcx+rcx*2]
	and	WORD PTR 20[rax+rdx*8], 17919
	ret
	.seh_endproc
	.p2align 4
	.globl	DmaWait
	.def	DmaWait;	.scl	2;	.type	32;	.endef
	.seh_proc	DmaWait
DmaWait:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	movsx	rcx, ecx
	lea	rdx, 252[rax+rcx*4]
	.p2align 4,,10
	.p2align 3
.L76:
	mov	eax, DWORD PTR [rdx]
	test	eax, eax
	js	.L76
	ret
	.seh_endproc
	.globl	DMAList
	.bss
	.align 32
DMAList:
	.space 96
	.ident	"GCC: (GNU) 13-win32"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
