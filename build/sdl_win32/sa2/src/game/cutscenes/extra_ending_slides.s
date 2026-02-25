	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	sub_8091608
	.def	sub_8091608;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8091608
sub_8091608:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[rcx]
	movzx	eax, WORD PTR 108[rdx]
	test	ax, ax
	je	.L2
	sub	eax, 1
	mov	WORD PTR 108[rdx], ax
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	mov	eax, 240
	mov	WORD PTR 108[rdx], ax
	lea	rax, sub_80915CC[rip]
	mov	QWORD PTR 40[rcx], rax
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8091680
	.def	sub_8091680;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8091680
sub_8091680:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8091590
	.def	sub_8091590;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8091590
sub_8091590:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	edx, 2
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 98[rbx], dx
	lea	rcx, 96[rbx]
	call	UpdateScreenFade
	cmp	al, 1
	jne	.L6
	xor	eax, eax
	lea	rdx, sub_8091608[rip]
	mov	WORD PTR 100[rbx], ax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdx
.L6:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80915CC
	.def	sub_80915CC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80915CC
sub_80915CC:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	edx, 1
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 98[rbx], dx
	lea	rcx, 96[rbx]
	call	UpdateScreenFade
	cmp	al, 1
	jne	.L8
	xor	eax, eax
	lea	rdx, sub_8091638[rip]
	mov	WORD PTR 100[rbx], ax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdx
.L8:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8091638
	.def	sub_8091638;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8091638
sub_8091638:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rbx]
	mov	rdx, QWORD PTR 24[rax]
	movzx	eax, WORD PTR 108[rdx]
	test	ax, ax
	je	.L11
	sub	eax, 1
	mov	WORD PTR 108[rdx], ax
	cmp	ax, 60
	je	.L13
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L11:
	xor	r8d, r8d
	xor	edx, edx
	mov	ecx, 2
	call	CreateCreditsCutScene
	mov	rcx, QWORD PTR [rbx]
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L13:
	mov	ecx, 44
	add	rsp, 32
	pop	rbx
	jmp	m4aSongNumStart
	.seh_endproc
	.p2align 4
	.globl	CreateExtraEndingSlidesCutScene
	.def	CreateExtraEndingSlidesCutScene;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateExtraEndingSlidesCutScene
CreateExtraEndingSlidesCutScene:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	edx, 4416
	xor	r9d, r9d
	mov	ecx, 23552
	mov	r8d, 12544
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	edx, 112
	mov	WORD PTR [rax], cx
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	lea	rcx, sub_8091590[rip]
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	mov	DWORD PTR [rax], 553582592
	lea	rax, sub_8091680[rip]
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	movdqu	xmm0, XMMWORD PTR .LC3[rip]
	xor	r9d, r9d
	mov	r8d, 240
	mov	rcx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .LC1[rip]
	mov	r10d, 20
	xor	r11d, r11d
	mov	QWORD PTR 96[rcx], rax
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	WORD PTR 108[rcx], r8w
	mov	QWORD PTR 8[rcx], rax
	add	rax, 57344
	mov	DWORD PTR 104[rcx], 16383
	mov	WORD PTR 18[rcx], r9w
	mov	QWORD PTR 24[rcx], rax
	mov	WORD PTR 60[rcx], r10w
	mov	BYTE PTR 62[rcx], 0
	mov	WORD PTR 66[rcx], r11w
	movups	XMMWORD PTR 44[rcx], xmm0
	add	rsp, 56
	jmp	DrawBackground
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC1:
	.word	1
	.word	1
	.word	0
	.word	128
	.align 16
.LC3:
	.word	0
	.word	0
	.word	210
	.word	0
	.word	0
	.word	0
	.word	0
	.word	30
	.ident	"GCC: (GNU) 13-win32"
	.def	UpdateScreenFade;	.scl	2;	.type	32;	.endef
	.def	CreateCreditsCutScene;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	DrawBackground;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gBgSprites_Unknown2, "dr"
	.globl	.refptr.gBgSprites_Unknown2
	.linkonce	discard
.refptr.gBgSprites_Unknown2:
	.quad	gBgSprites_Unknown2
	.section	.rdata$.refptr.gBgSprites_Unknown1, "dr"
	.globl	.refptr.gBgSprites_Unknown1
	.linkonce	discard
.refptr.gBgSprites_Unknown1:
	.quad	gBgSprites_Unknown1
	.section	.rdata$.refptr.gBgScrollRegs, "dr"
	.globl	.refptr.gBgScrollRegs
	.linkonce	discard
.refptr.gBgScrollRegs:
	.quad	gBgScrollRegs
	.section	.rdata$.refptr.gBgCntRegs, "dr"
	.globl	.refptr.gBgCntRegs
	.linkonce	discard
.refptr.gBgCntRegs:
	.quad	gBgCntRegs
	.section	.rdata$.refptr.gDispCnt, "dr"
	.globl	.refptr.gDispCnt
	.linkonce	discard
.refptr.gDispCnt:
	.quad	gDispCnt
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
