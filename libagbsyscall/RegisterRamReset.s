	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	RegisterRamReset
	.def	RegisterRamReset;	.scl	2;	.type	32;	.endef
	.seh_proc	RegisterRamReset
RegisterRamReset:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.REG_BASE[rip]
	mov	eax, 128
	mov	WORD PTR [rsi], ax
	mov	ebx, ecx
	test	cl, 1
	jne	.L28
	test	bl, 2
	jne	.L29
.L3:
	test	bl, 4
	jne	.L30
.L4:
	test	bl, 8
	jne	.L31
.L5:
	test	bl, 16
	jne	.L32
.L6:
	test	bl, 32
	jne	.L33
.L7:
	and	ebx, 64
	jne	.L34
.L1:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L28:
	mov	rcx, QWORD PTR .refptr.EWRAM_START[rip]
	xor	edx, edx
	mov	r8d, 262144
	call	memset
	test	bl, 2
	je	.L3
.L29:
	mov	rcx, QWORD PTR .refptr.IWRAM_START[rip]
	xor	edx, edx
	mov	r8d, 32256
	call	memset
	test	bl, 4
	je	.L4
.L30:
	mov	rcx, QWORD PTR .refptr.PLTT[rip]
	xor	eax, eax
	lea	rdi, 8[rcx]
	mov	QWORD PTR [rcx], 0
	mov	QWORD PTR 1016[rcx], 0
	and	rdi, -8
	sub	rcx, rdi
	add	ecx, 1024
	shr	ecx, 3
	rep stosq
	test	bl, 8
	je	.L5
.L31:
	mov	rcx, QWORD PTR .refptr.VRAM[rip]
	xor	edx, edx
	mov	r8d, 122880
	call	memset
	test	bl, 16
	je	.L6
.L32:
	mov	rcx, QWORD PTR .refptr.OAM[rip]
	xor	eax, eax
	lea	rdi, 8[rcx]
	mov	QWORD PTR [rcx], 0
	mov	QWORD PTR 1528[rcx], 0
	and	rdi, -8
	sub	rcx, rdi
	add	ecx, 1536
	shr	ecx, 3
	rep stosq
	test	bl, 32
	je	.L7
.L33:
	movzx	r8d, WORD PTR 294[rsi]
	movzx	eax, WORD PTR 296[rsi]
	xor	edx, edx
	movzx	ecx, WORD PTR 296[rsi]
	add	r8d, 1
	sub	r8d, eax
	movsx	r8, r8d
	call	memset
	and	ebx, 64
	je	.L1
.L34:
	mov	r8d, DWORD PTR 176[rsi]
	movzx	eax, WORD PTR 108[rsi]
	xor	edx, edx
	movzx	ecx, WORD PTR 108[rsi]
	add	r8d, 1
	sub	r8d, eax
	movsx	r8, r8d
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	memset
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	memset;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.OAM, "dr"
	.globl	.refptr.OAM
	.linkonce	discard
.refptr.OAM:
	.quad	OAM
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.PLTT, "dr"
	.globl	.refptr.PLTT
	.linkonce	discard
.refptr.PLTT:
	.quad	PLTT
	.section	.rdata$.refptr.IWRAM_START, "dr"
	.globl	.refptr.IWRAM_START
	.linkonce	discard
.refptr.IWRAM_START:
	.quad	IWRAM_START
	.section	.rdata$.refptr.EWRAM_START, "dr"
	.globl	.refptr.EWRAM_START
	.linkonce	discard
.refptr.EWRAM_START:
	.quad	EWRAM_START
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
