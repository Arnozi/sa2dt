	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	sub_8089E54
	.def	sub_8089E54;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8089E54
sub_8089E54:
	push	r15
	.seh_pushreg	r15
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
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbp, QWORD PTR .refptr.gCurTask[rip]
	xor	r13d, r13d
	mov	rax, QWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rax]
	mov	rcx, rbx
	lea	r12, 130[rbx]
	call	UpdateSpriteAnimation
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	.p2align 4,,10
	.p2align 3
.L4:
	movd	xmm2, DWORD PTR [r12]
	movd	xmm0, DWORD PTR 64[r12]
	movdqu	xmm1, xmm2
	pextrw	eax, xmm0, 1
	pextrw	edx, xmm0, 0
	psubw	xmm1, xmm0
	test	r13b, 1
	je	.L3
	movdqu	xmm1, xmm0
	paddw	xmm1, xmm2
.L3:
	cwde
	movsx	edx, dx
	movd	DWORD PTR [r12], xmm1
	mov	rcx, rbx
	imul	eax, eax, 200
	psraw	xmm1, 8
	add	r13d, 1
	add	r12, 4
	imul	edx, edx, 200
	sar	eax, 8
	mov	WORD PTR 62[r12], ax
	sar	edx, 8
	movzx	eax, WORD PTR 17[rsi]
	mov	WORD PTR 60[r12], dx
	movzx	edx, WORD PTR 13[rsi]
	sal	eax, 16
	or	eax, edx
	movzx	edx, WORD PTR [rdi]
	movd	xmm0, eax
	movzx	eax, WORD PTR 4[rdi]
	sal	eax, 16
	or	eax, edx
	movd	xmm3, eax
	psubw	xmm0, xmm3
	paddw	xmm0, xmm1
	movd	DWORD PTR 38[rbx], xmm0
	call	DisplaySprite
	cmp	r13d, 8
	jne	.L4
	movzx	eax, WORD PTR 128[rbx]
	lea	edx, 1[rax]
	mov	WORD PTR 128[rbx], dx
	cmp	ax, 8
	ja	.L14
.L1:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.p2align 4,,10
	.p2align 3
.L14:
	mov	edx, DWORD PTR [rdi]
	mov	ecx, DWORD PTR 12[rsi]
	mov	BYTE PTR 48[rbx], 1
	lea	r13, 194[rbx]
	lea	r12, 258[rbx]
	call	SeedRng
	mov	r15d, DWORD PTR .LC0[rip]
	mov	rdi, QWORD PTR .refptr.gSineTable[rip]
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L16:
	call	Random
	lea	r14d, 64[rax]
	movzx	eax, BYTE PTR 40[rsi]
	sub	eax, -128
	movzx	eax, al
.L12:
	lea	eax, 256[0+rax*4]
	movzx	r14d, r14b
	add	r13, 4
	movsx	rdx, eax
	sub	eax, 256
	cdqe
	movzx	edx, WORD PTR [rdi+rdx*2]
	movzx	eax, WORD PTR [rdi+rax*2]
	sar	dx, 6
	sar	ax, 6
	sal	edx, 2
	sal	eax, 2
	mov	WORD PTR 258[rbx], dx
	mov	WORD PTR 260[rbx], ax
	call	Random
	lea	ecx, 256[0+r14*4]
	and	eax, 1023
	lea	edx, 1536[rax]
	movsx	rax, ecx
	sub	ecx, 256
	movzx	eax, WORD PTR [rdi+rax*2]
	movsx	rcx, ecx
	sar	ax, 6
	cwde
	imul	eax, edx
	sar	eax, 8
	mov	WORD PTR -4[r13], ax
	movzx	eax, WORD PTR [rdi+rcx*2]
	sar	ax, 6
	cwde
	imul	eax, edx
	sar	eax, 8
	mov	WORD PTR -2[r13], ax
	cmp	r13, r12
	je	.L15
.L8:
	mov	DWORD PTR 258[rbx], r15d
	test	BYTE PTR 36[rsi], 1
	jne	.L16
	call	Random
	mov	r14d, eax
	movzx	eax, BYTE PTR 40[rsi]
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L15:
	mov	rax, QWORD PTR 0[rbp]
	lea	rsi, sub_808A0A4[rip]
	mov	QWORD PTR 40[rax], rsi
	jmp	.L1
	.seh_endproc
	.p2align 4
	.globl	sub_808A0A4
	.def	sub_808A0A4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808A0A4
sub_808A0A4:
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rcx]
	movzx	eax, WORD PTR 128[rbx]
	lea	r8d, 1[rax]
	mov	WORD PTR 128[rbx], r8w
	cmp	ax, 24
	ja	.L25
	lea	rsi, 130[rbx]
	movd	xmm0, DWORD PTR 258[rbx]
	lea	r9, 194[rbx]
	mov	rdx, rsi
	.p2align 4,,10
	.p2align 3
.L19:
	movd	xmm2, DWORD PTR 64[rdx]
	movd	xmm1, DWORD PTR [rdx]
	pextrw	r10d, xmm0, 1
	add	rdx, 4
	movsx	r10d, r10w
	pextrw	eax, xmm2, 0
	paddw	xmm1, xmm2
	cwde
	imul	eax, eax, 200
	psubw	xmm1, xmm0
	sar	eax, 8
	mov	WORD PTR 60[rdx], ax
	pextrw	eax, xmm2, 1
	cwde
	movd	DWORD PTR -4[rdx], xmm1
	imul	eax, eax, 200
	sar	eax, 8
	mov	WORD PTR 62[rdx], ax
	pextrw	eax, xmm0, 0
	cwde
	mov	ecx, eax
	sal	ecx, 8
	add	ecx, eax
	mov	eax, r10d
	sal	eax, 8
	sar	ecx, 8
	add	eax, r10d
	movzx	ecx, cx
	sar	eax, 8
	sal	eax, 16
	or	eax, ecx
	movd	xmm0, eax
	cmp	r9, rdx
	jne	.L19
	mov	DWORD PTR 258[rbx], eax
	mov	rbp, QWORD PTR .refptr.gPlayer[rip]
	lea	r12, 162[rbx]
	mov	rdi, QWORD PTR .refptr.gCamera[rip]
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L20:
	movd	xmm1, DWORD PTR 32[rsi]
	psraw	xmm1, 8
	paddw	xmm1, xmm0
	movd	DWORD PTR 38[rbx], xmm1
.L21:
	mov	rcx, rbx
	add	rsi, 4
	call	DisplaySprite
	cmp	r12, rsi
	je	.L17
	movzx	r8d, WORD PTR 128[rbx]
.L23:
	movzx	eax, WORD PTR 17[rbp]
	movzx	edx, WORD PTR 13[rbp]
	movzx	ecx, WORD PTR [rdi]
	sal	eax, 16
	or	eax, edx
	movzx	edx, WORD PTR 4[rdi]
	movd	xmm0, eax
	sal	edx, 16
	or	edx, ecx
	and	r8d, 1
	movd	xmm3, edx
	psubw	xmm0, xmm3
	je	.L20
	movd	xmm1, DWORD PTR [rsi]
	mov	rcx, rbx
	psraw	xmm1, 8
	paddw	xmm1, xmm0
	movd	DWORD PTR 38[rbx], xmm1
	call	UpdateSpriteAnimation
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L17:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L25:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.globl	sub_808A234
	.def	sub_808A234;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808A234
sub_808A234:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 8[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 72[rbx]
	add	rsp, 32
	pop	rbx
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.globl	CreateBoostModeParticles
	.def	CreateBoostModeParticles;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateBoostModeParticles
CreateBoostModeParticles:
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
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	lea	rax, sub_808A234[rip]
	xor	r9d, r9d
	mov	edx, 264
	mov	r8d, 20560
	lea	rcx, sub_8089E54[rip]
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	xor	edx, edx
	mov	ecx, 1
	mov	rdi, QWORD PTR 24[rax]
	mov	WORD PTR 128[rdi], dx
	lea	r12, 130[rdi]
	call	VramMalloc
	mov	ebx, DWORD PTR .LC2[rip]
	mov	BYTE PTR 50[rdi], 16
	mov	ecx, -256
	mov	WORD PTR 48[rdi], cx
	mov	rcx, rdi
	add	rdi, 194
	mov	QWORD PTR -186[rdi], rax
	mov	DWORD PTR -178[rdi], ebx
	mov	DWORD PTR -162[rdi], 8192
	mov	DWORD PTR -152[rdi], 512
	mov	BYTE PTR -141[rdi], 0
	call	UpdateSpriteAnimation
	mov	ecx, 1
	call	VramMalloc
	mov	rbp, QWORD PTR .refptr.gPlayer[rip]
	mov	DWORD PTR -114[rdi], ebx
	mov	r8d, -255
	mov	QWORD PTR -122[rdi], rax
	mov	rax, QWORD PTR .refptr.gCamera[rip]
	mov	WORD PTR -82[rdi], r8w
	mov	ecx, DWORD PTR 12[rbp]
	mov	DWORD PTR -98[rdi], 8192
	mov	edx, DWORD PTR [rax]
	mov	DWORD PTR -88[rdi], 512
	mov	BYTE PTR -80[rdi], 16
	mov	BYTE PTR -77[rdi], 0
	call	SeedRng
	mov	rsi, QWORD PTR .refptr.gSineTable[rip]
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L34:
	movzx	edx, BYTE PTR 40[rbp]
	lea	ebx, -64[rdx]
	add	edx, -128
	movzx	edx, dl
.L32:
	lea	r8d, 256[0+rdx*4]
	movzx	ecx, ax
	movzx	ebx, bl
	add	r12, 4
	movsx	rax, r8d
	sub	r8d, 256
	movsx	r8, r8d
	movzx	edx, WORD PTR [rsi+rax*2]
	movzx	eax, WORD PTR [rsi+r8*2]
	sar	dx, 6
	sar	ax, 6
	movsx	edx, dx
	cwde
	imul	edx, ecx
	imul	eax, ecx
	sar	edx, 8
	sar	eax, 8
	mov	WORD PTR -4[r12], dx
	mov	WORD PTR -2[r12], ax
	call	Random
	movzx	edx, WORD PTR 512[rsi+rbx*8]
	and	eax, 1023
	sar	dx, 6
	add	eax, 512
	movsx	edx, dx
	imul	edx, eax
	xor	eax, eax
	mov	WORD PTR 62[r12], ax
	sar	edx, 8
	mov	WORD PTR 60[r12], dx
	cmp	r12, rdi
	je	.L33
.L30:
	call	Random
	and	ax, 2047
	add	ax, 4096
	test	BYTE PTR 36[rbp], 1
	jne	.L34
	movzx	edx, BYTE PTR 40[rbp]
	lea	ebx, 64[rdx]
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L33:
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 4
.LC0:
	.word	128
	.word	0
	.align 4
.LC2:
	.word	0
	.word	873
	.ident	"GCC: (GNU) 13-win32"
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	SeedRng;	.scl	2;	.type	32;	.endef
	.def	Random;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
