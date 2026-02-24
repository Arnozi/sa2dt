	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	FlashTimerIntr
	.def	FlashTimerIntr;	.scl	2;	.type	32;	.endef
	.seh_proc	FlashTimerIntr
FlashTimerIntr:
	.seh_endprologue
	movzx	eax, WORD PTR sTimerCount[rip]
	test	ax, ax
	je	.L1
	sub	eax, 1
	mov	WORD PTR sTimerCount[rip], ax
	test	ax, ax
	jne	.L1
	mov	BYTE PTR gFlashTimeoutFlag[rip], 1
.L1:
	ret
	.seh_endproc
	.p2align 4
	.globl	ReadFlash1
	.def	ReadFlash1;	.scl	2;	.type	32;	.endef
	.seh_proc	ReadFlash1
ReadFlash1:
	.seh_endprologue
	movzx	eax, BYTE PTR [rcx]
	ret
	.seh_endproc
	.p2align 4
	.globl	SetReadFlash1
	.def	SetReadFlash1;	.scl	2;	.type	32;	.endef
	.seh_proc	SetReadFlash1
SetReadFlash1:
	.seh_endprologue
	lea	r8, ReadFlash1[rip]
	lea	rdx, SetReadFlash1[rip]
	sub	rdx, r8
	sar	rdx
	lea	rax, 1[rcx]
	mov	QWORD PTR PollFlashStatus[rip], rax
	mov	rax, r8
	xor	rax, 1
	test	dx, dx
	je	.L7
	sub	edx, 1
	sub	rcx, rax
	movzx	edx, dx
	lea	r8, 2[rax+rdx*2]
	.p2align 4,,10
	.p2align 3
.L9:
	mov	rdx, rax
	add	rax, 2
	movzx	edx, WORD PTR [rdx]
	mov	WORD PTR -2[rax+rcx], dx
	cmp	rax, r8
	jne	.L9
.L7:
	ret
	.seh_endproc
	.p2align 4
	.globl	ReadFlash_Core
	.def	ReadFlash_Core;	.scl	2;	.type	32;	.endef
	.seh_proc	ReadFlash_Core
ReadFlash_Core:
	.seh_endprologue
	lea	r9d, -1[r8]
	test	r8d, r8d
	je	.L11
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L13:
	movzx	r8d, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdx+rax], r8b
	mov	r8, rax
	add	rax, 1
	cmp	r8, r9
	jne	.L13
.L11:
	ret
	.seh_endproc
	.p2align 4
	.globl	ReadFlash
	.def	ReadFlash;	.scl	2;	.type	32;	.endef
	.seh_proc	ReadFlash
ReadFlash:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	add	rsp, -128
	.seh_stackalloc	128
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.FLASH_BASE[rip]
	mov	eax, ecx
	mov	r10d, ecx
	mov	rcx, QWORD PTR .refptr.REG_BASE[rip]
	mov	r11d, edx
	mov	rbx, r8
	mov	r8d, r9d
	mov	r9, QWORD PTR gFlash[rip]
	movzx	edx, WORD PTR 516[rcx]
	or	edx, 3
	cmp	DWORD PTR [r9], 131072
	mov	WORD PTR 516[rcx], dx
	jne	.L19
	mov	edx, eax
	mov	BYTE PTR 21845[rsi], -86
	and	r10d, 15
	shr	dx, 4
	mov	BYTE PTR 10922[rsi], 85
	mov	BYTE PTR 21845[rsi], -80
	mov	BYTE PTR [rsi], dl
.L19:
	lea	rcx, ReadFlash_Core[rip]
	lea	rdx, ReadFlash[rip]
	sub	rdx, rcx
	mov	rax, rcx
	sar	rdx
	xor	rax, 1
	test	dx, dx
	je	.L20
	sub	edx, 1
	mov	rcx, rsp
	movzx	edx, dx
	sub	rcx, rax
	lea	rdi, 2[rax+rdx*2]
	.p2align 4,,10
	.p2align 3
.L21:
	mov	rdx, rax
	add	rax, 2
	movzx	edx, WORD PTR [rdx]
	mov	WORD PTR -2[rax+rcx], dx
	cmp	rax, rdi
	jne	.L21
.L20:
	movzx	ecx, BYTE PTR 8[r9]
	movzx	r10d, r10w
	lea	rax, 1[rsp]
	mov	rdx, rbx
	sal	r10d, cl
	movsx	r10, r10d
	add	r10, r11
	lea	rcx, [rsi+r10]
	sub	rsp, -128
	pop	rbx
	pop	rsi
	pop	rdi
	rex.W jmp	rax
	.seh_endproc
	.p2align 4
	.globl	VerifyFlashSector_Core
	.def	VerifyFlashSector_Core;	.scl	2;	.type	32;	.endef
	.seh_proc	VerifyFlashSector_Core
VerifyFlashSector_Core:
	.seh_endprologue
	mov	r8d, r8d
	add	r8, rcx
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L27:
	add	rcx, 1
	lea	rax, 1[rdx]
	movzx	r9d, BYTE PTR -1[rcx]
	cmp	BYTE PTR [rdx], r9b
	jne	.L29
	mov	rdx, rax
.L25:
	cmp	rcx, r8
	jne	.L27
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L29:
	mov	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	VerifyFlashSector
	.def	VerifyFlashSector;	.scl	2;	.type	32;	.endef
	.seh_proc	VerifyFlashSector
VerifyFlashSector:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 256
	.seh_stackalloc	256
	.seh_endprologue
	mov	r11, QWORD PTR gFlash[rip]
	mov	r10, rdx
	mov	rdx, QWORD PTR .refptr.REG_BASE[rip]
	mov	ebx, ecx
	movzx	eax, WORD PTR 516[rdx]
	or	eax, 3
	cmp	DWORD PTR [r11], 131072
	mov	WORD PTR 516[rdx], ax
	mov	rdx, QWORD PTR .refptr.FLASH_BASE[rip]
	jne	.L31
	mov	eax, ecx
	mov	BYTE PTR 21845[rdx], -86
	and	ebx, 15
	shr	ax, 4
	mov	BYTE PTR 10922[rdx], 85
	mov	BYTE PTR 21845[rdx], -80
	mov	BYTE PTR [rdx], al
.L31:
	lea	r8, VerifyFlashSector_Core[rip]
	lea	rcx, VerifyFlashSector[rip]
	sub	rcx, r8
	mov	rax, r8
	sar	rcx
	xor	rax, 1
	test	cx, cx
	je	.L32
	sub	ecx, 1
	mov	r8, rsp
	movzx	ecx, cx
	sub	r8, rax
	lea	r9, 2[rax+rcx*2]
	.p2align 4,,10
	.p2align 3
.L33:
	mov	rcx, rax
	add	rax, 2
	movzx	ecx, WORD PTR [rcx]
	mov	WORD PTR -2[rax+r8], cx
	cmp	rax, r9
	jne	.L33
.L32:
	movzx	ecx, BYTE PTR 8[r11]
	movzx	ebx, bx
	movzx	r8d, WORD PTR 4[r11]
	lea	rax, 1[rsp]
	sal	ebx, cl
	mov	rcx, r10
	movsx	rbx, ebx
	add	rdx, rbx
	add	rsp, 256
	pop	rbx
	rex.W jmp	rax
	.seh_endproc
	.p2align 4
	.globl	SwitchFlashBank
	.def	SwitchFlashBank;	.scl	2;	.type	32;	.endef
	.seh_proc	SwitchFlashBank
SwitchFlashBank:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.FLASH_BASE[rip]
	mov	BYTE PTR 21845[rax], -86
	mov	BYTE PTR 10922[rax], 85
	mov	BYTE PTR 21845[rax], -80
	mov	BYTE PTR [rax], cl
	ret
	.seh_endproc
	.p2align 4
	.globl	ReadFlashId
	.def	ReadFlashId;	.scl	2;	.type	32;	.endef
	.seh_proc	ReadFlashId
ReadFlashId:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 112
	.seh_stackalloc	112
	.seh_endprologue
	lea	rcx, ReadFlash1[rip]
	lea	rdx, SetReadFlash1[rip]
	sub	rdx, rcx
	mov	rax, rcx
	sar	rdx
	xor	rax, 1
	lea	rbx, 49[rsp]
	mov	QWORD PTR PollFlashStatus[rip], rbx
	test	dx, dx
	je	.L38
	sub	edx, 1
	lea	rcx, 48[rsp]
	movzx	edx, dx
	sub	rcx, rax
	lea	r8, 2[rax+rdx*2]
	.p2align 4,,10
	.p2align 3
.L39:
	mov	rdx, rax
	add	rax, 2
	movzx	edx, WORD PTR [rdx]
	mov	WORD PTR -2[rax+rcx], dx
	cmp	rax, r8
	jne	.L39
.L38:
	mov	rsi, QWORD PTR .refptr.FLASH_BASE[rip]
	mov	ecx, 20000
	mov	BYTE PTR 21845[rsi], -86
	mov	BYTE PTR 10922[rsi], 85
	mov	BYTE PTR 21845[rsi], -112
	mov	WORD PTR 44[rsp], cx
	movzx	eax, WORD PTR 44[rsp]
	test	ax, ax
	je	.L40
	.p2align 4,,10
	.p2align 3
.L41:
	movzx	eax, WORD PTR 44[rsp]
	sub	eax, 1
	mov	WORD PTR 44[rsp], ax
	movzx	eax, WORD PTR 44[rsp]
	test	ax, ax
	jne	.L41
.L40:
	lea	rcx, 1[rsi]
	call	rbx
	mov	rcx, rsi
	mov	edi, eax
	call	rbx
	mov	edx, 20000
	mov	BYTE PTR 21845[rsi], -86
	sal	edi, 8
	mov	BYTE PTR 10922[rsi], 85
	movzx	eax, al
	mov	BYTE PTR 21845[rsi], -16
	or	eax, edi
	mov	BYTE PTR 21845[rsi], -16
	mov	WORD PTR 46[rsp], dx
	movzx	edx, WORD PTR 46[rsp]
	test	dx, dx
	je	.L37
	.p2align 4,,10
	.p2align 3
.L43:
	movzx	edx, WORD PTR 46[rsp]
	sub	edx, 1
	mov	WORD PTR 46[rsp], dx
	movzx	edx, WORD PTR 46[rsp]
	test	dx, dx
	jne	.L43
.L37:
	add	rsp, 112
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	SetFlashTimerIntr
	.def	SetFlashTimerIntr;	.scl	2;	.type	32;	.endef
	.seh_proc	SetFlashTimerIntr
SetFlashTimerIntr:
	.seh_endprologue
	mov	eax, 1
	cmp	cl, 3
	ja	.L53
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	BYTE PTR sTimerNum[rip], cl
	movzx	ecx, cl
	lea	rax, 256[rax+rcx*4]
	mov	QWORD PTR gTimerReg[rip], rax
	lea	rax, FlashTimerIntr[rip]
	mov	QWORD PTR [rdx], rax
	xor	eax, eax
.L53:
	ret
	.seh_endproc
	.p2align 4
	.globl	StartFlashTimer
	.def	StartFlashTimer;	.scl	2;	.type	32;	.endef
	.seh_proc	StartFlashTimer
StartFlashTimer:
	.seh_endprologue
	mov	rdx, QWORD PTR gFlashMaxTime[rip]
	mov	r8, QWORD PTR gTimerReg[rip]
	mov	BYTE PTR gFlashTimeoutFlag[rip], 0
	movzx	ecx, cl
	lea	eax, [rcx+rcx*2]
	xor	ecx, ecx
	cdqe
	lea	r9, [rdx+rax*2]
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	movzx	edx, WORD PTR 520[rax]
	mov	WORD PTR gSavedIme[rip], dx
	xor	edx, edx
	mov	WORD PTR 520[rax], dx
	mov	edx, 8
	mov	WORD PTR 2[r8], cx
	movzx	ecx, BYTE PTR sTimerNum[rip]
	movzx	r10d, WORD PTR 512[rax]
	sal	edx, cl
	or	r10d, edx
	mov	WORD PTR 512[rax], r10w
	movzx	ecx, WORD PTR [r9]
	mov	WORD PTR sTimerCount[rip], cx
	movzx	ecx, WORD PTR 2[r9]
	mov	WORD PTR [r8], cx
	movzx	ecx, WORD PTR 4[r9]
	mov	WORD PTR 2[r8], cx
	mov	r8d, 1
	mov	WORD PTR 514[rax], dx
	mov	WORD PTR 520[rax], r8w
	ret
	.seh_endproc
	.p2align 4
	.globl	StopFlashTimer
	.def	StopFlashTimer;	.scl	2;	.type	32;	.endef
	.seh_proc	StopFlashTimer
StopFlashTimer:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.REG_BASE[rip]
	xor	eax, eax
	xor	ecx, ecx
	xor	r8d, r8d
	mov	WORD PTR 520[rdx], ax
	mov	rax, QWORD PTR gTimerReg[rip]
	mov	WORD PTR [rax], cx
	movzx	ecx, BYTE PTR sTimerNum[rip]
	mov	WORD PTR 2[rax], r8w
	mov	eax, 8
	movzx	r8d, WORD PTR 512[rdx]
	sal	eax, cl
	not	eax
	and	eax, r8d
	mov	WORD PTR 512[rdx], ax
	movzx	eax, WORD PTR gSavedIme[rip]
	mov	WORD PTR 520[rdx], ax
	ret
	.seh_endproc
	.p2align 4
	.globl	VerifyFlashSectorNBytes
	.def	VerifyFlashSectorNBytes;	.scl	2;	.type	32;	.endef
	.seh_proc	VerifyFlashSectorNBytes
VerifyFlashSectorNBytes:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 264
	.seh_stackalloc	264
	.seh_endprologue
	mov	rbx, QWORD PTR gFlash[rip]
	cmp	DWORD PTR [rbx], 131072
	mov	r11, rdx
	mov	r10d, ecx
	mov	rdx, QWORD PTR .refptr.FLASH_BASE[rip]
	jne	.L59
	mov	eax, ecx
	mov	BYTE PTR 21845[rdx], -86
	and	r10d, 15
	shr	ax, 4
	mov	BYTE PTR 10922[rdx], 85
	mov	BYTE PTR 21845[rdx], -80
	mov	BYTE PTR [rdx], al
.L59:
	mov	rcx, QWORD PTR .refptr.REG_BASE[rip]
	lea	r9, VerifyFlashSector_Core[rip]
	movzx	eax, WORD PTR 516[rcx]
	or	eax, 3
	mov	WORD PTR 516[rcx], ax
	lea	rcx, VerifyFlashSector[rip]
	mov	rax, r9
	sub	rcx, r9
	xor	rax, 1
	sar	rcx
	test	cx, cx
	je	.L60
	sub	ecx, 1
	mov	r9, rsp
	movzx	ecx, cx
	sub	r9, rax
	lea	rsi, 2[rax+rcx*2]
	.p2align 4,,10
	.p2align 3
.L61:
	mov	rcx, rax
	add	rax, 2
	movzx	ecx, WORD PTR [rcx]
	mov	WORD PTR -2[rax+r9], cx
	cmp	rax, rsi
	jne	.L61
.L60:
	movzx	ecx, BYTE PTR 8[rbx]
	movzx	r10d, r10w
	lea	rax, 1[rsp]
	sal	r10d, cl
	mov	rcx, r11
	movsx	r10, r10d
	add	rdx, r10
	add	rsp, 264
	pop	rbx
	pop	rsi
	rex.W jmp	rax
	.seh_endproc
	.p2align 4
	.globl	ProgramFlashSectorAndVerify
	.def	ProgramFlashSectorAndVerify;	.scl	2;	.type	32;	.endef
	.seh_proc	ProgramFlashSectorAndVerify
ProgramFlashSectorAndVerify:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	ebx, 3
	mov	rdi, rdx
	movzx	esi, cx
.L67:
	mov	rdx, rdi
	mov	ecx, esi
	call	[QWORD PTR ProgramFlashSector[rip]]
	movzx	eax, ax
	test	eax, eax
	jne	.L65
	mov	rdx, rdi
	mov	ecx, esi
	call	VerifyFlashSector
	test	eax, eax
	je	.L64
.L65:
	sub	bl, 1
	jne	.L67
.L64:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	ProgramFlashSectorAndVerifyNBytes
	.def	ProgramFlashSectorAndVerifyNBytes;	.scl	2;	.type	32;	.endef
	.seh_proc	ProgramFlashSectorAndVerifyNBytes
ProgramFlashSectorAndVerifyNBytes:
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
	mov	ebx, 3
	mov	rdi, rdx
	mov	ebp, r8d
	movzx	esi, cx
.L75:
	mov	rdx, rdi
	mov	ecx, esi
	call	[QWORD PTR ProgramFlashSector[rip]]
	movzx	eax, ax
	test	eax, eax
	jne	.L73
	mov	r8d, ebp
	mov	rdx, rdi
	mov	ecx, esi
	call	VerifyFlashSectorNBytes
	test	eax, eax
	je	.L72
.L73:
	sub	bl, 1
	jne	.L75
.L72:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.globl	gFlashMaxTime
	.bss
	.align 8
gFlashMaxTime:
	.space 8
	.globl	EraseFlashSector
	.align 8
EraseFlashSector:
	.space 8
	.globl	EraseFlashChip
	.align 8
EraseFlashChip:
	.space 8
	.globl	gFlashNumRemainingBytes
	.align 2
gFlashNumRemainingBytes:
	.space 2
	.globl	gFlash
	.align 8
gFlash:
	.space 8
	.globl	ProgramFlashSector
	.align 8
ProgramFlashSector:
	.space 8
	.globl	WaitForFlashWrite
	.align 8
WaitForFlashWrite:
	.space 8
	.globl	PollFlashStatus
	.align 8
PollFlashStatus:
	.space 8
	.globl	gFlashTimeoutFlag
gFlashTimeoutFlag:
	.space 1
.lcomm gSavedIme,2,2
.lcomm gTimerReg,8,8
.lcomm sTimerCount,2,2
.lcomm sTimerNum,1,1
	.ident	"GCC: (GNU) 13-win32"
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
