	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	VerifyEraseSector_Core;	.scl	3;	.type	32;	.endef
	.seh_proc	VerifyEraseSector_Core
VerifyEraseSector_Core:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gFlash[rip]
	mov	rax, QWORD PTR [rax]
	mov	eax, DWORD PTR 4[rax]
	test	eax, eax
	jne	.L3
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L9:
	sub	eax, 1
	je	.L1
.L3:
	add	rcx, 1
	cmp	BYTE PTR -1[rcx], -1
	je	.L9
.L1:
	ret
	.seh_endproc
	.p2align 4
	.def	VerifyEraseSector;	.scl	3;	.type	32;	.endef
	.seh_proc	VerifyEraseSector
VerifyEraseSector:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	call	rdx
	neg	eax
	sbb	ax, ax
	and	ax, -32764
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	EraseFlashChip_LE
	.def	EraseFlashChip_LE;	.scl	2;	.type	32;	.endef
	.seh_proc	EraseFlashChip_LE
EraseFlashChip_LE:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 104
	.seh_stackalloc	104
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.REG_BASE[rip]
	mov	rdx, QWORD PTR .refptr.gFlash[rip]
	mov	rbx, QWORD PTR .refptr.FLASH_BASE[rip]
	movzx	eax, WORD PTR 516[rsi]
	mov	rdx, QWORD PTR [rdx]
	and	eax, -4
	or	ax, WORD PTR 16[rdx]
	mov	WORD PTR 516[rsi], ax
	lea	rcx, 32[rsp]
	mov	BYTE PTR 21845[rbx], -86
	mov	BYTE PTR 10922[rbx], 85
	mov	BYTE PTR 21845[rbx], -128
	mov	BYTE PTR 21845[rbx], -86
	mov	BYTE PTR 10922[rbx], 85
	mov	BYTE PTR 21845[rbx], 16
	call	SetReadFlash1
	mov	rax, QWORD PTR .refptr.WaitForFlashWrite[rip]
	mov	rdx, rbx
	mov	r8d, 255
	mov	ecx, 3
	call	[QWORD PTR [rax]]
	movzx	edx, WORD PTR 516[rsi]
	or	edx, 3
	mov	WORD PTR 516[rsi], dx
	add	rsp, 104
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	EraseFlashSector_LE.part.0;	.scl	3;	.type	32;	.endef
	.seh_proc	EraseFlashSector_LE.part.0
EraseFlashSector_LE.part.0:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 104
	.seh_stackalloc	104
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.REG_BASE[rip]
	mov	rdx, QWORD PTR .refptr.gFlash[rip]
	movzx	eax, WORD PTR 516[rsi]
	mov	rdx, QWORD PTR [rdx]
	and	eax, -4
	or	ax, WORD PTR 16[rdx]
	mov	WORD PTR 516[rsi], ax
	mov	rax, QWORD PTR .refptr.FLASH_BASE[rip]
	movzx	ebx, cx
	movzx	ecx, BYTE PTR 8[rdx]
	mov	BYTE PTR 21845[rax], -86
	sal	ebx, cl
	mov	BYTE PTR 10922[rax], 85
	lea	rcx, 32[rsp]
	movsx	rbx, ebx
	mov	BYTE PTR 21845[rax], -128
	add	rbx, rax
	mov	BYTE PTR 21845[rax], -86
	mov	BYTE PTR 10922[rax], 85
	mov	BYTE PTR [rbx], 48
	call	SetReadFlash1
	mov	rax, QWORD PTR .refptr.WaitForFlashWrite[rip]
	mov	rdx, rbx
	mov	r8d, 255
	mov	ecx, 2
	call	[QWORD PTR [rax]]
	movzx	edx, WORD PTR 516[rsi]
	or	edx, 3
	mov	WORD PTR 516[rsi], dx
	add	rsp, 104
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	EraseFlashSector_LE
	.def	EraseFlashSector_LE;	.scl	2;	.type	32;	.endef
	.seh_proc	EraseFlashSector_LE
EraseFlashSector_LE:
	.seh_endprologue
	cmp	cx, 15
	ja	.L16
	movzx	ecx, cx
	jmp	EraseFlashSector_LE.part.0
	.p2align 4,,10
	.p2align 3
.L16:
	mov	eax, -32513
	ret
	.seh_endproc
	.p2align 4
	.globl	ProgramFlashSector_LE
	.def	ProgramFlashSector_LE;	.scl	2;	.type	32;	.endef
	.seh_proc	ProgramFlashSector_LE
ProgramFlashSector_LE:
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
	add	rsp, -128
	.seh_stackalloc	128
	.seh_endprologue
	mov	eax, -32513
	mov	rsi, rdx
	cmp	cx, 15
	ja	.L17
	mov	r13, QWORD PTR .refptr.gFlash[rip]
	movzx	ebp, cx
	mov	rdi, QWORD PTR .refptr.FLASH_BASE[rip]
	lea	rdx, VerifyEraseSector[rip]
	mov	ebx, ebp
	mov	rax, QWORD PTR 0[r13]
	movzx	ecx, BYTE PTR 8[rax]
	sal	ebx, cl
	lea	rcx, VerifyEraseSector_Core[rip]
	mov	rax, rcx
	movsx	rbx, ebx
	sub	rdx, rcx
	add	rbx, rdi
	xor	rax, 1
	mov	ecx, edx
	test	dx, dx
	je	.L19
	lea	r8, 32[rsp]
	add	ecx, eax
	sub	r8, rax
	.p2align 4,,10
	.p2align 3
.L20:
	mov	rdx, rax
	add	rax, 2
	movzx	edx, WORD PTR [rdx]
	mov	WORD PTR -2[rax+r8], dx
	cmp	cx, ax
	jne	.L20
.L19:
	xor	r12d, r12d
	lea	r14, 33[rsp]
.L21:
	mov	ecx, ebp
	call	EraseFlashSector_LE.part.0
	test	ax, ax
	jne	.L22
	mov	rcx, rbx
	call	r14
	test	eax, eax
	jne	.L31
	cmp	r12b, 1
	mov	r12d, 1
	sbb	r14d, r14d
	and	r14d, -5
	add	r14d, 6
	.p2align 4,,10
	.p2align 3
.L24:
	mov	ecx, ebp
	call	EraseFlashSector_LE.part.0
	mov	eax, r12d
	add	r12d, 1
	cmp	r14b, al
	jne	.L24
	lea	rcx, 32[rsp]
	call	SetReadFlash1
	mov	rbp, QWORD PTR .refptr.REG_BASE[rip]
	mov	rdx, QWORD PTR 0[r13]
	mov	r13, QWORD PTR .refptr.gFlashNumRemainingBytes[rip]
	mov	r12, QWORD PTR .refptr.WaitForFlashWrite[rip]
	movzx	eax, WORD PTR 516[rbp]
	and	eax, -4
	or	ax, WORD PTR 16[rdx]
	mov	WORD PTR 516[rbp], ax
	mov	eax, DWORD PTR 4[rdx]
	mov	WORD PTR 0[r13], ax
	test	ax, ax
	jne	.L25
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L28:
	movzx	eax, WORD PTR 0[r13]
	add	rsi, 1
	add	rbx, 1
	sub	eax, 1
	mov	WORD PTR 0[r13], ax
	test	ax, ax
	je	.L27
.L25:
	mov	BYTE PTR 21845[rdi], -86
	mov	rdx, rbx
	mov	ecx, 1
	mov	BYTE PTR 10922[rdi], 85
	mov	BYTE PTR 21845[rdi], -96
	movzx	r8d, BYTE PTR [rsi]
	mov	BYTE PTR [rbx], r8b
	call	[QWORD PTR [r12]]
	test	ax, ax
	je	.L28
.L26:
	movzx	edx, WORD PTR 516[rbp]
	or	edx, 3
	mov	WORD PTR 516[rbp], dx
.L17:
	sub	rsp, -128
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
.L31:
	mov	eax, -32764
	.p2align 4,,10
	.p2align 3
.L22:
	add	r12d, 1
	cmp	r12b, 81
	jne	.L21
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L27:
	xor	eax, eax
	jmp	.L26
	.seh_endproc
	.p2align 4
	.globl	ProgramByte
	.def	ProgramByte;	.scl	2;	.type	32;	.endef
	.seh_proc	ProgramByte
ProgramByte:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.FLASH_BASE[rip]
	mov	BYTE PTR 21845[rax], -86
	mov	BYTE PTR 10922[rax], 85
	mov	BYTE PTR 21845[rax], -96
	mov	rax, QWORD PTR .refptr.WaitForFlashWrite[rip]
	movzx	r8d, BYTE PTR [rcx]
	mov	ecx, 1
	mov	BYTE PTR [rdx], r8b
	mov	rax, QWORD PTR [rax]
	rex.W jmp	rax
	.seh_endproc
	.globl	LE39FW512
	.section .rdata,"dr"
	.align 32
LE39FW512:
	.quad	ProgramFlashSector_LE
	.quad	EraseFlashChip_LE
	.quad	EraseFlashSector_LE
	.quad	WaitForFlashWrite512K_Common
	.quad	le512kMaxTime
	.long	65536
	.long	4096
	.byte	12
	.space 1
	.word	16
	.word	0
	.space 2
	.word	1
	.word	2
	.byte	-65
	.byte	-44
	.space 2
	.globl	DefaultFlash512K
	.align 32
DefaultFlash512K:
	.quad	ProgramFlashSector_LE
	.quad	EraseFlashChip_LE
	.quad	EraseFlashSector_LE
	.quad	WaitForFlashWrite512K_Common
	.quad	le512kMaxTime
	.long	65536
	.long	4096
	.byte	12
	.space 1
	.word	16
	.word	0
	.space 2
	.word	3
	.word	3
	.byte	0
	.byte	0
	.space 2
	.globl	le512kMaxTime
	.align 16
le512kMaxTime:
	.word	10
	.word	-67
	.word	194
	.word	10
	.word	-67
	.word	194
	.word	40
	.word	-67
	.word	194
	.word	200
	.word	-67
	.word	194
	.ident	"GCC: (GNU) 13-win32"
	.def	SetReadFlash1;	.scl	2;	.type	32;	.endef
	.def	WaitForFlashWrite512K_Common;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gFlashNumRemainingBytes, "dr"
	.globl	.refptr.gFlashNumRemainingBytes
	.linkonce	discard
.refptr.gFlashNumRemainingBytes:
	.quad	gFlashNumRemainingBytes
	.section	.rdata$.refptr.WaitForFlashWrite, "dr"
	.globl	.refptr.WaitForFlashWrite
	.linkonce	discard
.refptr.WaitForFlashWrite:
	.quad	WaitForFlashWrite
	.section	.rdata$.refptr.FLASH_BASE, "dr"
	.globl	.refptr.FLASH_BASE
	.linkonce	discard
.refptr.FLASH_BASE:
	.quad	FLASH_BASE
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
