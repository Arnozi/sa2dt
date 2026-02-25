	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	sub_806EBF4
	.def	sub_806EBF4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806EBF4
sub_806EBF4:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 16[rbx]
	test	rcx, rcx
	je	.L2
	call	EwramFree
.L2:
	mov	rcx, QWORD PTR 24[rbx]
	test	rcx, rcx
	je	.L3
	call	EwramFree
.L3:
	mov	rcx, QWORD PTR 8[rbx]
	test	rcx, rcx
	je	.L1
	add	rsp, 32
	pop	rbx
	jmp	EwramFree
	.p2align 4,,10
	.p2align 3
.L1:
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_806E94C
	.def	sub_806E94C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806E94C
sub_806E94C:
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
	mov	rdx, QWORD PTR .refptr.gUnknown_08C87920[rip]
	mov	rax, QWORD PTR [rcx]
	movzx	eax, BYTE PTR 2176[rax]
	mov	rsi, QWORD PTR [rdx+rax*8]
	lea	rdx, gUnknown_080DF6DC[rip]
	movsx	rax, WORD PTR [rdx+rax*2]
	test	ax, ax
	jle	.L12
	mov	rdi, QWORD PTR .refptr.gSpecialStageVramPointer[rip]
	lea	rbx, 224[rcx]
	lea	rbp, [rsi+rax*4]
	.p2align 4,,10
	.p2align 3
.L14:
	mov	rax, QWORD PTR [rdi]
	xor	edx, edx
	xor	ecx, ecx
	mov	r8d, -1
	add	rsi, 4
	mov	QWORD PTR 8[rbx], rax
	xor	eax, eax
	mov	WORD PTR 16[rbx], ax
	movzx	eax, WORD PTR -4[rsi]
	mov	WORD PTR 44[rbx], cx
	mov	rcx, rbx
	add	rbx, 64
	mov	WORD PTR -46[rbx], ax
	mov	DWORD PTR -32[rbx], 524288
	mov	DWORD PTR -26[rbx], 0
	mov	WORD PTR -22[rbx], dx
	mov	WORD PTR -18[rbx], r8w
	movzx	eax, WORD PTR -2[rsi]
	mov	BYTE PTR -15[rbx], -1
	mov	BYTE PTR -16[rbx], al
	mov	BYTE PTR -14[rbx], 16
	mov	BYTE PTR -11[rbx], 0
	mov	DWORD PTR -8[rbx], -1
	call	UpdateSpriteAnimation_BG
	cmp	rsi, rbp
	jne	.L14
.L12:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_806E7C0
	.def	sub_806E7C0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806E7C0
sub_806E7C0:
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
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	r12, QWORD PTR [rcx]
	movsx	edi, WORD PTR 2196[r12]
	movzx	ebp, BYTE PTR 2200[r12]
	mov	rsi, rcx
	mov	ecx, 960
	mov	ebx, edi
	call	EwramMalloc
	sub	ebx, ebp
	mov	QWORD PTR 24[rsi], rax
	sal	ebx, 16
	movzx	ecx, BYTE PTR 2200[r12]
	mov	r8, rax
	lea	r9, 960[rax]
	neg	ecx
	.p2align 4,,10
	.p2align 3
.L18:
	mov	eax, ecx
	test	ecx, ecx
	je	.L17
	mov	eax, ebx
	cdq
	idiv	ecx
.L17:
	mov	DWORD PTR [r8], eax
	add	r8, 4
	add	ecx, 1
	cmp	r9, r8
	jne	.L18
	mov	ecx, 960
	call	EwramMalloc
	mov	QWORD PTR 16[rsi], rax
	mov	rcx, rax
	lea	r9, 960[rax]
	movzx	r8d, BYTE PTR 2200[r12]
	neg	r8d
	.p2align 4,,10
	.p2align 3
.L20:
	xor	eax, eax
	cmp	edi, ebp
	je	.L19
	mov	eax, r8d
	cdq
	idiv	ebx
.L19:
	mov	DWORD PTR [rcx], eax
	add	rcx, 4
	add	r8d, 1
	cmp	r9, rcx
	jne	.L20
	movzx	edx, BYTE PTR 2201[r12]
	movsx	r8d, WORD PTR 2198[r12]
	lea	rcx, 220[r12+rdx*8]
	cmp	dl, -17
	ja	.L24
	movsx	r9d, WORD PTR 2194[r12]
	mov	r10, QWORD PTR 24[rsi]
	movsx	r11d, WORD PTR 2196[r12]
	neg	r9d
	.p2align 4,,10
	.p2align 3
.L23:
	mov	ebx, DWORD PTR [r10+rdx*4]
	mov	eax, r9d
	add	rcx, 8
	imul	ebx, r8d
	sar	ebx, 8
	imul	eax, ebx
	add	eax, eax
	neg	eax
	sar	eax, 8
	imul	eax, r8d
	mov	DWORD PTR -8[rcx], eax
	mov	eax, edx
	add	rdx, 1
	sub	eax, r11d
	imul	eax, ebx
	sal	eax, 2
	neg	eax
	sar	eax, 8
	imul	eax, r8d
	mov	DWORD PTR -4[rcx], eax
	cmp	dx, 239
	jle	.L23
.L24:
	mov	ecx, 3840
	call	EwramMalloc
	mov	rdx, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	mov	QWORD PTR 8[rsi], rax
	mov	QWORD PTR [rdx], rax
	mov	rdx, QWORD PTR .refptr.gBgOffsetsPrimary[rip]
	mov	QWORD PTR [rdx], rax
	mov	rdx, QWORD PTR .refptr.gBgOffsetsSecondary[rip]
	mov	QWORD PTR [rdx], rax
	xor	edx, edx
	.p2align 4,,10
	.p2align 3
.L22:
	mov	edi, 16777216
	add	rax, 16
	movabs	rbp, 72057594054705152
	mov	QWORD PTR -16[rax], rdi
	mov	WORD PTR -12[rax], dx
	add	dx, 256
	mov	QWORD PTR -8[rax], rbp
	cmp	dx, -4096
	jne	.L22
	mov	rcx, rsi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	sub_806E94C
	.seh_endproc
	.p2align 4
	.globl	CreateSpecialStageWorld
	.def	CreateSpecialStageWorld;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateSpecialStageWorld
CreateSpecialStageWorld:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 112
	.seh_stackalloc	112
	.seh_endprologue
	mov	rax, QWORD PTR .LC0[rip]
	mov	edx, 165
	xor	r9d, r9d
	mov	r8d, 32768
	mov	QWORD PTR 80[rsp], rax
	mov	eax, 166
	mov	rsi, rcx
	lea	rcx, sub_806EA04[rip]
	mov	WORD PTR 92[rsp], ax
	mov	rax, QWORD PTR .LC2[rip]
	mov	WORD PTR 108[rsp], dx
	mov	edx, 928
	mov	QWORD PTR 96[rsp], rax
	lea	rax, sub_806EBF4[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	DWORD PTR 88[rsp], 10748066
	mov	DWORD PTR 104[rsp], 10682529
	call	TaskCreate
	mov	r8d, 16
	mov	edx, 1
	mov	rbx, QWORD PTR 24[rax]
	mov	rdi, rax
	mov	QWORD PTR [rbx], rsi
	lea	rcx, 32[rbx]
	mov	QWORD PTR 8[rbx], 0
	mov	QWORD PTR 16[rbx], 0
	mov	QWORD PTR 24[rbx], 0
	movzx	eax, BYTE PTR 2176[rsi]
	mov	DWORD PTR 72[rsp], 0
	mov	DWORD PTR 64[rsp], 0
	mov	DWORD PTR 56[rsp], 2
	mov	DWORD PTR 48[rsp], 0
	mov	DWORD PTR 40[rsp], 128
	mov	DWORD PTR 32[rsp], 128
	movzx	r9d, BYTE PTR 96[rsp+rax*2]
	call	SpecialStageDrawBackground
	movzx	eax, BYTE PTR 2176[rsi]
	mov	DWORD PTR 72[rsp], 0
	lea	rcx, 128[rbx]
	mov	DWORD PTR 64[rsp], 0
	mov	r8d, 7
	xor	edx, edx
	mov	DWORD PTR 56[rsp], 1
	mov	DWORD PTR 48[rsp], 0
	mov	DWORD PTR 40[rsp], 32
	mov	DWORD PTR 32[rsp], 32
	movzx	r9d, BYTE PTR 80[rsp+rax*2]
	call	SpecialStageDrawBackground
	mov	rcx, rbx
	call	sub_806E7C0
	mov	rax, rdi
	add	rsp, 112
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_806EB74
	.def	sub_806EB74;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806EB74
sub_806EB74:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	lea	rdx, gUnknown_080DF6DC[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR [rbx]
	movzx	ecx, BYTE PTR 2176[rax]
	movsx	rsi, WORD PTR [rdx+rcx*2]
	movzx	edx, BYTE PTR 2152[rax]
	mov	rcx, QWORD PTR .refptr.gBgScrollRegs[rip]
	neg	edx
	cmp	BYTE PTR 2178[rax], 1
	mov	WORD PTR 4[rcx], dx
	mov	edx, 48
	mov	WORD PTR 6[rcx], dx
	je	.L34
	test	si, si
	jle	.L34
	add	rbx, 224
	sal	rsi, 6
	add	rsi, rbx
	.p2align 4,,10
	.p2align 3
.L36:
	mov	rcx, rbx
	call	UpdateSpriteAnimation_BG
	mov	rcx, rbx
	add	rbx, 64
	call	DisplaySprite_BG
	cmp	rbx, rsi
	jne	.L36
.L34:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_806EA04
	.def	sub_806EA04;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806EA04
sub_806EA04:
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
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR .refptr.gHBlankCopyTarget[rip]
	mov	rcx, QWORD PTR .refptr.gSineTable[rip]
	mov	rax, QWORD PTR [rax]
	mov	r10, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gHBlankCopySize[rip]
	mov	BYTE PTR [rax], 16
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	mov	r8, QWORD PTR [r10]
	add	rax, 32
	movzx	r9d, WORD PTR 2152[r8]
	mov	QWORD PTR [rdx], rax
	mov	rdx, QWORD PTR 8[r10]
	mov	rax, QWORD PTR .refptr.gBgOffsetsHBlankPrimary[rip]
	movsx	r11d, WORD PTR [rcx+r9*2]
	movsx	ebx, WORD PTR 2198[r8]
	mov	QWORD PTR [rax], rdx
	mov	rax, r9
	add	eax, 256
	sal	r11d, 2
	cdqe
	movsx	r9d, WORD PTR [rcx+rax*2]
	movzx	ecx, BYTE PTR 2201[r8]
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	mov	rsi, rcx
	sal	r9d, 2
	sal	rsi, 4
	or	DWORD PTR [rax], 4
	add	rdx, rsi
	cmp	cl, -17
	ja	.L41
	mov	rsi, QWORD PTR 24[r10]
	mov	r10d, r11d
	neg	r10d
	.p2align 4,,10
	.p2align 3
.L40:
	mov	eax, DWORD PTR [rsi+rcx*4]
	movsx	edi, WORD PTR 2194[r8]
	add	rdx, 16
	movsx	r13d, WORD PTR 2196[r8]
	imul	eax, ebx
	neg	edi
	mov	r12d, eax
	sar	eax, 16
	sar	r12d, 8
	imul	edi, r12d
	mov	ebp, edi
	mov	edi, ecx
	add	rcx, 1
	sub	edi, r13d
	xor	r13d, r13d
	imul	edi, r12d
	mov	r12d, eax
	mov	WORD PTR -10[rdx], r13w
	imul	eax, r10d
	imul	r12d, r9d
	add	edi, edi
	sar	eax, 16
	mov	WORD PTR -12[rdx], ax
	mov	eax, edi
	mov	edi, ebp
	sar	r12d, 16
	sar	edi, 16
	sar	eax, 16
	mov	WORD PTR -16[rdx], r12w
	xor	r12d, r12d
	mov	ebp, edi
	imul	edi, r10d
	mov	WORD PTR -14[rdx], r12w
	imul	ebp, r9d
	movd	xmm3, edi
	movd	xmm0, ebp
	mov	ebp, eax
	imul	ebp, r9d
	imul	eax, r11d
	movd	xmm2, ebp
	movd	xmm1, eax
	punpckldq	xmm0, xmm2
	punpckldq	xmm1, xmm3
	paddd	xmm0, xmm1
	movq	xmm1, QWORD PTR 2140[r8]
	paddd	xmm0, xmm1
	psrad	xmm0, 8
	movq	QWORD PTR -8[rdx], xmm0
	cmp	cx, 239
	jle	.L40
.L41:
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	sub_806EB74
	.seh_endproc
	.globl	gUnknown_080DF6EC
	.section .rdata,"dr"
	.align 32
gUnknown_080DF6EC:
	.word	909
	.word	0
	.word	915
	.word	0
	.word	916
	.word	0
	.word	917
	.word	0
	.word	918
	.word	0
	.word	919
	.word	0
	.word	920
	.word	0
	.word	921
	.word	0
	.word	935
	.word	0
	.word	936
	.word	0
	.word	937
	.word	0
	.word	938
	.word	0
	.word	939
	.word	0
	.word	922
	.word	0
	.word	923
	.word	0
	.word	924
	.word	0
	.word	925
	.word	0
	.word	926
	.word	0
	.word	927
	.word	0
	.word	928
	.word	0
	.word	929
	.word	0
	.word	930
	.word	0
	.word	931
	.word	0
	.word	932
	.word	0
	.word	933
	.word	0
	.word	934
	.word	0
	.word	910
	.word	0
	.word	911
	.word	0
	.word	912
	.word	0
	.word	913
	.word	0
	.word	914
	.word	0
	.align 4
gUnknown_080DF6DC:
	.word	1
	.word	7
	.word	5
	.word	1
	.word	7
	.word	5
	.word	5
	.space 2
	.align 8
.LC0:
	.word	154
	.word	156
	.word	158
	.word	160
	.align 8
.LC2:
	.word	153
	.word	155
	.word	157
	.word	159
	.ident	"GCC: (GNU) 13-win32"
	.def	EwramFree;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation_BG;	.scl	2;	.type	32;	.endef
	.def	EwramMalloc;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	SpecialStageDrawBackground;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite_BG;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
	.section	.rdata$.refptr.gHBlankCopyTarget, "dr"
	.globl	.refptr.gHBlankCopyTarget
	.linkonce	discard
.refptr.gHBlankCopyTarget:
	.quad	gHBlankCopyTarget
	.section	.rdata$.refptr.gHBlankCopySize, "dr"
	.globl	.refptr.gHBlankCopySize
	.linkonce	discard
.refptr.gHBlankCopySize:
	.quad	gHBlankCopySize
	.section	.rdata$.refptr.gBgScrollRegs, "dr"
	.globl	.refptr.gBgScrollRegs
	.linkonce	discard
.refptr.gBgScrollRegs:
	.quad	gBgScrollRegs
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
	.section	.rdata$.refptr.gBgOffsetsSecondary, "dr"
	.globl	.refptr.gBgOffsetsSecondary
	.linkonce	discard
.refptr.gBgOffsetsSecondary:
	.quad	gBgOffsetsSecondary
	.section	.rdata$.refptr.gBgOffsetsPrimary, "dr"
	.globl	.refptr.gBgOffsetsPrimary
	.linkonce	discard
.refptr.gBgOffsetsPrimary:
	.quad	gBgOffsetsPrimary
	.section	.rdata$.refptr.gBgOffsetsHBlankPrimary, "dr"
	.globl	.refptr.gBgOffsetsHBlankPrimary
	.linkonce	discard
.refptr.gBgOffsetsHBlankPrimary:
	.quad	gBgOffsetsHBlankPrimary
	.section	.rdata$.refptr.gSpecialStageVramPointer, "dr"
	.globl	.refptr.gSpecialStageVramPointer
	.linkonce	discard
.refptr.gSpecialStageVramPointer:
	.quad	gSpecialStageVramPointer
	.section	.rdata$.refptr.gUnknown_08C87920, "dr"
	.globl	.refptr.gUnknown_08C87920
	.linkonce	discard
.refptr.gUnknown_08C87920:
	.quad	gUnknown_08C87920
