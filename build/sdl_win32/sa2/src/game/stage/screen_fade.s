	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	UpdateScreenFade
	.def	UpdateScreenFade;	.scl	2;	.type	32;	.endef
	.seh_proc	UpdateScreenFade
UpdateScreenFade:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gWinRegs[rip]
	mov	r11, QWORD PTR .refptr.gDispCnt[rip]
	mov	r8d, DWORD PTR 20[rdx]
	movzx	ebx, WORD PTR 2[rcx]
	movzx	r10d, WORD PTR [r11]
	mov	r9d, DWORD PTR 16[rdx]
	or	r8d, 31
	mov	rax, rcx
	movzx	ecx, WORD PTR 4[rcx]
	cmp	WORD PTR [rax], 0
	movd	xmm0, DWORD PTR 8[rax]
	je	.L2
	or	r10w, 16384
	mov	DWORD PTR 4[rdx], 426
	or	r9d, 16128
	mov	WORD PTR [r11], r10w
	mov	DWORD PTR 12[rdx], 240
.L3:
	mov	DWORD PTR 16[rdx], r9d
	mov	r9, QWORD PTR .refptr.gBldRegs[rip]
	mov	DWORD PTR 20[rdx], r8d
	mov	edx, ecx
	mov	r8d, 32
	sar	dx, 8
	movd	DWORD PTR [r9], xmm0
	sub	r8d, edx
	and	ebx, 1
	cmove	edx, r8d
	mov	r8d, edx
	shr	r8w
	cmp	dx, 32
	mov	edx, 16
	cmovb	edx, r8d
	add	cx, WORD PTR 6[rax]
	mov	WORD PTR 4[r9], dx
	mov	edx, ecx
	xor	ecx, ecx
	cmp	dx, 8191
	jle	.L6
	mov	edx, 8192
	mov	ecx, 1
.L6:
	mov	WORD PTR 4[rax], dx
	mov	eax, ecx
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	or	r10w, 8192
	mov	DWORD PTR [rdx], 426
	or	r9d, 63
	mov	WORD PTR [r11], r10w
	mov	DWORD PTR 8[rdx], 240
	jmp	.L3
	.seh_endproc
	.ident	"GCC: (GNU) 13-win32"
	.section	.rdata$.refptr.gBldRegs, "dr"
	.globl	.refptr.gBldRegs
	.linkonce	discard
.refptr.gBldRegs:
	.quad	gBldRegs
	.section	.rdata$.refptr.gWinRegs, "dr"
	.globl	.refptr.gWinRegs
	.linkonce	discard
.refptr.gWinRegs:
	.quad	gWinRegs
	.section	.rdata$.refptr.gDispCnt, "dr"
	.globl	.refptr.gDispCnt
	.linkonce	discard
.refptr.gDispCnt:
	.quad	gDispCnt
