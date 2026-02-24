	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	VramMalloc
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.seh_proc	VramMalloc
VramMalloc:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gVramHeapMaxTileSlots[rip]
	movzx	ebx, WORD PTR [rax]
	add	ecx, 3
	shr	ecx, 2
	shr	bx, 2
	je	.L2
	mov	rsi, QWORD PTR .refptr.gVramHeapState[rip]
	xor	r8d, r8d
	movzx	edi, bx
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L3:
	lea	r8d, -1[rax+r8]
.L11:
	add	r8d, 1
	cmp	r8w, bx
	jnb	.L2
.L12:
	movzx	r10d, r8w
	movzx	r11d, r8w
	movzx	eax, WORD PTR [rsi+r10*2]
	test	ax, ax
	jne	.L3
	test	ecx, ecx
	je	.L10
	cmp	r11d, edi
	jge	.L2
	movzx	eax, r8w
	mov	r9d, edi
	lea	rdx, [rsi+rax*2]
	sub	r9d, r11d
	xor	eax, eax
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L20:
	add	eax, 1
	cmp	ecx, eax
	je	.L10
	add	rdx, 2
	cmp	r9d, eax
	je	.L2
.L7:
	cmp	WORD PTR [rdx], 0
	je	.L20
	cmp	ecx, eax
	jne	.L11
	.p2align 4,,10
	.p2align 3
.L10:
	mov	rdx, QWORD PTR .refptr.gVramHeapStartAddr[rip]
	sal	r11d, 7
	mov	WORD PTR [rsi+r10*2], cx
	movsx	rax, r11d
	add	rax, QWORD PTR [rdx]
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L2:
	mov	rax, QWORD PTR .refptr.ewram_end[rip]
	mov	rax, QWORD PTR [rax]
.L1:
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	VramResetHeapState
	.def	VramResetHeapState;	.scl	2;	.type	32;	.endef
	.seh_proc	VramResetHeapState
VramResetHeapState:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	r8, QWORD PTR .refptr.gVramHeapState[rip]
	xor	eax, eax
	mov	r9d, -2130705984
	mov	ecx, 3
	lea	rdx, 46[rsp]
	mov	WORD PTR 46[rsp], ax
	call	DmaSet
	nop
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	VramFree
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.seh_proc	VramFree
VramFree:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.ewram_end[rip]
	cmp	QWORD PTR [rax], rcx
	je	.L22
	mov	rax, QWORD PTR .refptr.gVramHeapStartAddr[rip]
	xor	edx, edx
	sub	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gVramHeapState[rip]
	shr	ecx, 7
	movzx	ecx, cx
	mov	WORD PTR [rax+rcx*2], dx
.L22:
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.ewram_end, "dr"
	.globl	.refptr.ewram_end
	.linkonce	discard
.refptr.ewram_end:
	.quad	ewram_end
	.section	.rdata$.refptr.gVramHeapStartAddr, "dr"
	.globl	.refptr.gVramHeapStartAddr
	.linkonce	discard
.refptr.gVramHeapStartAddr:
	.quad	gVramHeapStartAddr
	.section	.rdata$.refptr.gVramHeapState, "dr"
	.globl	.refptr.gVramHeapState
	.linkonce	discard
.refptr.gVramHeapState:
	.quad	gVramHeapState
	.section	.rdata$.refptr.gVramHeapMaxTileSlots, "dr"
	.globl	.refptr.gVramHeapMaxTileSlots
	.linkonce	discard
.refptr.gVramHeapMaxTileSlots:
	.quad	gVramHeapMaxTileSlots
