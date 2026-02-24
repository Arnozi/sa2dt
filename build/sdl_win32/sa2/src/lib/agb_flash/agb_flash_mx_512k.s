	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	ProgramFlashSector_MX
	.def	ProgramFlashSector_MX;	.scl	2;	.type	32;	.endef
	.seh_proc	ProgramFlashSector_MX
ProgramFlashSector_MX:
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
	sub	rsp, 96
	.seh_stackalloc	96
	.seh_endprologue
	mov	r12, QWORD PTR .refptr.gFlash[rip]
	mov	edi, -32513
	mov	rax, QWORD PTR [r12]
	mov	rsi, rdx
	cmp	cx, WORD PTR 10[rax]
	jnb	.L1
	movzx	ebx, cx
	mov	ecx, ebx
	call	EraseFlashSector_LE
	mov	edi, eax
	test	ax, ax
	je	.L11
.L1:
	mov	eax, edi
	add	rsp, 96
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L11:
	lea	rcx, 32[rsp]
	call	SetReadFlash1
	mov	rbp, QWORD PTR .refptr.REG_BASE[rip]
	mov	rdx, QWORD PTR [r12]
	mov	r12, QWORD PTR .refptr.gFlashNumRemainingBytes[rip]
	movzx	eax, WORD PTR 516[rbp]
	and	eax, -4
	or	ax, WORD PTR 16[rdx]
	mov	WORD PTR 516[rbp], ax
	movzx	ecx, BYTE PTR 8[rdx]
	mov	eax, DWORD PTR 4[rdx]
	sal	ebx, cl
	movsx	rbx, ebx
	mov	WORD PTR [r12], ax
	add	rbx, QWORD PTR .refptr.FLASH_BASE[rip]
	test	ax, ax
	jne	.L6
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L12:
	movzx	eax, WORD PTR [r12]
	add	rsi, 1
	add	rbx, 1
	sub	eax, 1
	mov	WORD PTR [r12], ax
	test	ax, ax
	je	.L5
.L6:
	mov	rdx, rbx
	mov	rcx, rsi
	call	ProgramByte
	test	ax, ax
	je	.L12
	mov	edi, eax
.L5:
	movzx	eax, WORD PTR 516[rbp]
	or	eax, 3
	mov	WORD PTR 516[rbp], ax
	mov	eax, edi
	add	rsp, 96
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.globl	MN63F805MNP
	.section .rdata,"dr"
	.align 32
MN63F805MNP:
	.quad	ProgramFlashSector_MX
	.quad	EraseFlashChip_LE
	.quad	EraseFlashSector_LE
	.quad	WaitForFlashWrite512K_Common
	.quad	paMaxTime
	.long	65536
	.long	4096
	.byte	12
	.space 1
	.word	16
	.word	0
	.space 2
	.word	0
	.word	2
	.byte	50
	.byte	27
	.space 2
	.globl	MX29L512
	.align 32
MX29L512:
	.quad	ProgramFlashSector_MX
	.quad	EraseFlashChip_LE
	.quad	EraseFlashSector_LE
	.quad	WaitForFlashWrite512K_Common
	.quad	mx512kMaxTime
	.long	65536
	.long	4096
	.byte	12
	.space 1
	.word	16
	.word	0
	.space 2
	.word	3
	.word	1
	.byte	-62
	.byte	28
	.space 2
	.globl	paMaxTime
	.align 16
paMaxTime:
	.word	10
	.word	-67
	.word	194
	.word	10
	.word	-67
	.word	194
	.word	500
	.word	-67
	.word	194
	.word	500
	.word	-67
	.word	194
	.globl	mx512kMaxTime
	.align 16
mx512kMaxTime:
	.word	10
	.word	-67
	.word	194
	.word	10
	.word	-67
	.word	194
	.word	2000
	.word	-67
	.word	194
	.word	2000
	.word	-67
	.word	194
	.ident	"GCC: (GNU) 13-win32"
	.def	EraseFlashSector_LE;	.scl	2;	.type	32;	.endef
	.def	SetReadFlash1;	.scl	2;	.type	32;	.endef
	.def	ProgramByte;	.scl	2;	.type	32;	.endef
	.def	EraseFlashChip_LE;	.scl	2;	.type	32;	.endef
	.def	WaitForFlashWrite512K_Common;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.FLASH_BASE, "dr"
	.globl	.refptr.FLASH_BASE
	.linkonce	discard
.refptr.FLASH_BASE:
	.quad	FLASH_BASE
	.section	.rdata$.refptr.gFlashNumRemainingBytes, "dr"
	.globl	.refptr.gFlashNumRemainingBytes
	.linkonce	discard
.refptr.gFlashNumRemainingBytes:
	.quad	gFlashNumRemainingBytes
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
	.section	.rdata$.refptr.gFlash, "dr"
	.globl	.refptr.gFlash
	.linkonce	discard
.refptr.gFlash:
	.quad	gFlash
