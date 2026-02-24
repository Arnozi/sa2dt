	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	IdentifyFlash
	.def	IdentifyFlash;	.scl	2;	.type	32;	.endef
	.seh_proc	IdentifyFlash
IdentifyFlash:
	.seh_endprologue
	mov	eax, 1
	ret
	.seh_endproc
	.p2align 4
	.globl	WaitForFlashWrite512K_Common
	.def	WaitForFlashWrite512K_Common;	.scl	2;	.type	32;	.endef
	.seh_proc	WaitForFlashWrite512K_Common
WaitForFlashWrite512K_Common:
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
	mov	r12d, ecx
	movzx	ecx, cl
	mov	rbx, rdx
	mov	r13d, r8d
	mov	edi, r8d
	call	StartFlashTimer
	mov	rsi, QWORD PTR .refptr.PollFlashStatus[rip]
	mov	rbp, QWORD PTR .refptr.gFlashTimeoutFlag[rip]
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L8:
	cmp	BYTE PTR 0[rbp], 0
	jne	.L11
.L4:
	mov	rcx, rbx
	call	[QWORD PTR [rsi]]
	cmp	al, dil
	jne	.L8
.L9:
	xor	r12d, r12d
.L6:
	call	StopFlashTimer
	mov	eax, r12d
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
.L11:
	mov	rcx, rbx
	call	[QWORD PTR [rsi]]
	cmp	al, r13b
	je	.L9
	mov	rax, QWORD PTR .refptr.gFlash[rip]
	mov	rax, QWORD PTR [rax]
	cmp	BYTE PTR 20[rax], -62
	jne	.L7
	mov	rax, QWORD PTR .refptr.FLASH_BASE[rip]
	mov	BYTE PTR 21845[rax], -16
.L7:
	movzx	r12d, r12b
	or	r12w, -16384
	jmp	.L6
	.seh_endproc
	.globl	gSetup512KInfos
	.section .rdata,"dr"
	.align 32
gSetup512KInfos:
	.quad	LE39FW512
	.quad	MN63F805MNP
	.quad	MX29L512
	.quad	DefaultFlash512K
	.ident	"GCC: (GNU) 13-win32"
	.def	StartFlashTimer;	.scl	2;	.type	32;	.endef
	.def	StopFlashTimer;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.FLASH_BASE, "dr"
	.globl	.refptr.FLASH_BASE
	.linkonce	discard
.refptr.FLASH_BASE:
	.quad	FLASH_BASE
	.section	.rdata$.refptr.gFlash, "dr"
	.globl	.refptr.gFlash
	.linkonce	discard
.refptr.gFlash:
	.quad	gFlash
	.section	.rdata$.refptr.PollFlashStatus, "dr"
	.globl	.refptr.PollFlashStatus
	.linkonce	discard
.refptr.PollFlashStatus:
	.quad	PollFlashStatus
	.section	.rdata$.refptr.gFlashTimeoutFlag, "dr"
	.globl	.refptr.gFlashTimeoutFlag
	.linkonce	discard
.refptr.gFlashTimeoutFlag:
	.quad	gFlashTimeoutFlag
