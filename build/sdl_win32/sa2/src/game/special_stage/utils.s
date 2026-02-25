	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	sub_806CA88
	.def	sub_806CA88;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806CA88
sub_806CA88:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 104
	.seh_stackalloc	104
	.seh_endprologue
	mov	edi, DWORD PTR 176[rsp]
	mov	r11d, DWORD PTR 184[rsp]
	mov	r10d, DWORD PTR 192[rsp]
	lea	rax, 32[rsp]
	test	rcx, rcx
	mov	esi, edx
	mov	ebx, r8d
	cmove	rcx, rax
	movzx	eax, WORD PTR 200[rsp]
	mov	r8d, DWORD PTR 208[rsp]
	mov	edx, DWORD PTR 216[rsp]
	sal	eax, 6
	test	sil, sil
	je	.L3
	mov	rbp, QWORD PTR gSpecialStageSubMenuVramPointer[rip]
	test	rbp, rbp
	je	.L8
.L4:
	mov	QWORD PTR 8[rcx], rbp
	xor	ebp, ebp
	mov	WORD PTR 42[rcx], ax
	mov	eax, 4351
	mov	WORD PTR 16[rcx], bp
	mov	WORD PTR 18[rcx], r9w
	mov	DWORD PTR 32[rcx], edi
	mov	WORD PTR 38[rcx], r11w
	mov	WORD PTR 40[rcx], r10w
	mov	DWORD PTR 44[rcx], -65536
	mov	BYTE PTR 48[rcx], r8b
	mov	WORD PTR 49[rcx], ax
	mov	BYTE PTR 53[rcx], dl
	mov	DWORD PTR 56[rcx], -1
	call	UpdateSpriteAnimation
	cmp	sil, 1
	jne	.L1
	sal	ebx, 5
	add	QWORD PTR gSpecialStageSubMenuVramPointer[rip], rbx
.L1:
	add	rsp, 104
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L3:
	mov	rsi, QWORD PTR gSpecialStageVramPointer[rip]
	mov	DWORD PTR 32[rcx], edi
	mov	edi, 4351
	sal	ebx, 5
	mov	WORD PTR 18[rcx], r9w
	mov	QWORD PTR 8[rcx], rsi
	xor	esi, esi
	mov	WORD PTR 16[rcx], si
	mov	WORD PTR 38[rcx], r11w
	mov	WORD PTR 40[rcx], r10w
	mov	WORD PTR 42[rcx], ax
	mov	DWORD PTR 44[rcx], -65536
	mov	BYTE PTR 48[rcx], r8b
	mov	WORD PTR 49[rcx], di
	mov	BYTE PTR 53[rcx], dl
	mov	DWORD PTR 56[rcx], -1
	call	UpdateSpriteAnimation
	add	QWORD PTR gSpecialStageVramPointer[rip], rbx
	mov	QWORD PTR gSpecialStageSubMenuVramPointer[rip], 0
	add	rsp, 104
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	mov	rbp, QWORD PTR gSpecialStageVramPointer[rip]
	mov	QWORD PTR gSpecialStageSubMenuVramPointer[rip], rbp
	jmp	.L4
	.seh_endproc
	.p2align 4
	.globl	SpecialStageCalcEntityScreenPosition
	.def	SpecialStageCalcEntityScreenPosition;	.scl	2;	.type	32;	.endef
	.seh_proc	SpecialStageCalcEntityScreenPosition
SpecialStageCalcEntityScreenPosition:
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
	mov	r12, QWORD PTR 8[r8]
	mov	r11, rcx
	mov	r10, rdx
	test	r12, r12
	je	.L21
	movzx	eax, WORD PTR 2152[r8]
	mov	rdx, QWORD PTR .refptr.gSineTable[rip]
	mov	edi, DWORD PTR 2144[r8]
	sub	edi, DWORD PTR 4[r10]
	neg	eax
	mov	esi, DWORD PTR 2140[r8]
	sar	edi, 8
	sub	esi, DWORD PTR [r10]
	mov	rcx, rax
	sar	esi, 8
	mov	eax, edi
	movzx	r13d, BYTE PTR 2201[r8]
	and	ecx, 1023
	movsx	ebx, WORD PTR [rdx+rcx*2]
	movsx	ebp, WORD PTR 512[rdx+rcx*2]
	sal	ebx, 2
	sar	ebp, 6
	mov	r9d, ebx
	imul	eax, ebp
	neg	r9d
	sar	r9d, 8
	imul	r9d, esi
	add	r9d, eax
	sar	r9d
	cmp	r9d, DWORD PTR 2136[r8]
	jle	.L21
	movsx	rax, r13d
	cmp	r9d, DWORD PTR 224[r8+rax*8]
	jge	.L21
	movzx	eax, BYTE PTR 2202[r8]
	movzx	edx, BYTE PTR 2203[r8]
	.p2align 4,,10
	.p2align 3
.L28:
	test	ax, ax
	je	.L11
.L31:
	cmp	dx, 239
	jg	.L29
	movsx	rcx, dx
	cmp	r13d, ecx
	jg	.L30
	cmp	DWORD PTR 224[r8+rcx*8], r9d
	jg	.L30
	jge	.L20
	.p2align 4,,10
	.p2align 3
.L29:
	sar	ax
	sub	edx, eax
	test	ax, ax
	jne	.L31
.L11:
	movsx	rax, dx
	sar	ebx, 8
	imul	ebp, esi
	mov	eax, DWORD PTR 220[r8+rax*8]
	imul	ebx, edi
	sar	eax
	lea	r8d, [rax+rax*8]
	lea	r9d, [rbx+rbp]
	mov	eax, r8d
	sar	r9d, 2
	neg	eax
	sar	r8d, 3
	sar	eax, 3
	cmp	r9d, eax
	jle	.L21
	cmp	r9d, r8d
	jge	.L21
	mov	rax, QWORD PTR 24[r12]
	movsx	rcx, dx
	mov	WORD PTR 10[r11], dx
	mov	rax, QWORD PTR 24[rax]
	mov	ebx, DWORD PTR [rax+rcx*4]
	movsx	eax, WORD PTR 18[r10]
	mov	ecx, edx
	sub	cx, WORD PTR 14[r10]
	sal	eax, 16
	cdq
	idiv	ebx
	sub	ecx, eax
	imul	eax, r9d, 228
	mov	WORD PTR 4[r11], cx
	cdq
	idiv	r8d
	mov	edx, 213
	sub	edx, eax
	mov	eax, DWORD PTR 8[r10]
	mov	WORD PTR 8[r11], dx
	sub	dx, WORD PTR 12[r10]
	mov	WORD PTR 2[r11], dx
	xor	edx, edx
	test	eax, eax
	je	.L17
	sal	eax, 3
	cdq
	idiv	ebx
	lea	edx, [rax+rax*8]
	sar	edx, 2
.L17:
	sar	ebx, 8
	mov	eax, 1
	mov	WORD PTR 6[r11], dx
	mov	WORD PTR 12[r11], bx
	mov	WORD PTR 18[r11], bx
	mov	DWORD PTR 14[r11], 0
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L21:
	xor	eax, eax
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L30:
	sar	ax
	add	edx, eax
	jmp	.L28
.L20:
	mov	edx, eax
	jmp	.L11
	.seh_endproc
	.p2align 4
	.globl	sub_806CD68
	.def	sub_806CD68;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806CD68
sub_806CD68:
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
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rsi, QWORD PTR 24[rcx]
	movsx	ebp, WORD PTR 38[rcx]
	movsx	r12d, WORD PTR 40[rcx]
	movzx	edi, WORD PTR 2[rsi]
	mov	BYTE PTR 52[rcx], dil
	movzx	eax, WORD PTR 4[rsi]
	mov	r13, rcx
	shr	ax
	movzx	eax, ax
	sub	ebp, eax
	movzx	eax, WORD PTR 6[rsi]
	mov	DWORD PTR 40[rsp], ebp
	shr	ax
	movzx	eax, ax
	sub	r12d, eax
	test	di, di
	jle	.L32
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	r15, QWORD PTR .refptr.gRefSpriteTables[rip]
	xor	r14d, r14d
	add	rax, 65536
	mov	QWORD PTR 32[rsp], rax
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L37:
	test	r14d, r14d
	jne	.L34
	mov	rax, QWORD PTR .refptr.gOamFreeIndex[rip]
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR 47[rsp], al
	sub	eax, 1
	mov	BYTE PTR 51[r13], al
.L34:
	movzx	eax, BYTE PTR 1[rsi]
	mov	ecx, 3
	mov	r9d, -2147483643
	mov	r8, rbp
	add	eax, r14d
	add	r14d, 1
	cdqe
	lea	rax, [rax+rax*4]
	lea	rdx, [rbx+rax*2]
	call	DmaSet
	mov	edx, DWORD PTR 32[r13]
	movzx	eax, WORD PTR 40[rsp]
	mov	rbx, QWORD PTR 32[rsp]
	add	WORD PTR 0[rbp], ax
	mov	rax, QWORD PTR 8[r13]
	mov	ecx, edx
	shr	edx, 12
	add	WORD PTR 2[rbp], r12w
	and	ecx, 31
	and	edx, 3
	sal	rcx, 8
	sub	rax, rbx
	sal	rdx, 42
	shr	rax, 5
	add	ax, WORD PTR 8[rbp]
	or	rcx, 3
	and	eax, 1023
	sal	rax, 32
	or	rax, rcx
	or	rax, rdx
	movzx	edx, BYTE PTR 9[rbp]
	shr	dl, 4
	add	dl, BYTE PTR 53[r13]
	and	edx, 15
	sal	rdx, 44
	or	rax, rdx
	movabs	rdx, -281470681751300
	and	rdx, QWORD PTR 4[rbp]
	or	rax, rdx
	mov	QWORD PTR 4[rbp], rax
	cmp	di, r14w
	jle	.L32
.L35:
	mov	rax, QWORD PTR [r15]
	movzx	ecx, WORD PTR 42[r13]
	movzx	edx, WORD PTR 18[r13]
	mov	rax, QWORD PTR 16[rax]
	sar	ecx, 6
	and	ecx, 31
	mov	rbx, QWORD PTR [rax+rdx*8]
	call	OamMalloc
	mov	rbp, rax
	mov	rax, QWORD PTR .refptr.iwram_end[rip]
	cmp	QWORD PTR [rax], rbp
	jne	.L37
.L32:
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.seh_endproc
	.p2align 4
	.globl	InitSpecialStageScreenVram
	.def	InitSpecialStageScreenVram;	.scl	2;	.type	32;	.endef
	.seh_proc	InitSpecialStageScreenVram
InitSpecialStageScreenVram:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	QWORD PTR gSpecialStageSubMenuVramPointer[rip], 0
	add	rax, 65536
	mov	QWORD PTR gSpecialStageVramPointer[rip], rax
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueIndex[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueCursor[rip]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyQueueIndex[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyCursor[rip]
	mov	BYTE PTR [rax], dl
	ret
	.seh_endproc
	.p2align 4
	.globl	SpecialStageDrawBackground
	.def	SpecialStageDrawBackground;	.scl	2;	.type	32;	.endef
	.seh_proc	SpecialStageDrawBackground
SpecialStageDrawBackground:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	sal	edx, 14
	sal	r8d, 11
	movzx	r9d, r9b
	mov	DWORD PTR 44[rcx], 0
	add	rdx, rax
	add	r8, rax
	mov	eax, DWORD PTR 40[rsp]
	mov	WORD PTR 48[rcx], r9w
	mov	QWORD PTR 8[rcx], rdx
	xor	edx, edx
	mov	WORD PTR 58[rcx], ax
	mov	eax, DWORD PTR 48[rsp]
	mov	QWORD PTR 24[rcx], r8
	xor	r8d, r8d
	mov	WORD PTR 60[rcx], ax
	mov	eax, DWORD PTR 56[rsp]
	mov	WORD PTR 18[rcx], dx
	mov	BYTE PTR 62[rcx], al
	movzx	eax, BYTE PTR 64[rsp]
	mov	QWORD PTR 50[rcx], 0
	mov	WORD PTR 66[rcx], ax
	mov	eax, DWORD PTR 72[rsp]
	mov	WORD PTR 63[rcx], r8w
	mov	WORD PTR 68[rcx], ax
	mov	eax, DWORD PTR 80[rsp]
	mov	WORD PTR 70[rcx], ax
	jmp	DrawBackground
	.seh_endproc
	.p2align 4
	.globl	MaxSpriteSize
	.def	MaxSpriteSize;	.scl	2;	.type	32;	.endef
	.seh_proc	MaxSpriteSize
MaxSpriteSize:
	.seh_endprologue
	xor	eax, eax
	cmp	WORD PTR [rcx], -1
	je	.L40
	.p2align 4,,10
	.p2align 3
.L43:
	movzx	r8d, WORD PTR 4[rcx]
	movsx	r9d, ax
	cmp	r9d, r8d
	cmovl	eax, r8d
	add	rcx, 8
	cmp	WORD PTR [rcx], -1
	jne	.L43
.L40:
	ret
	.seh_endproc
	.globl	gSpecialStageVramPointer
	.bss
	.align 8
gSpecialStageVramPointer:
	.space 8
	.globl	gSpecialStageSubMenuVramPointer
	.align 8
gSpecialStageSubMenuVramPointer:
	.space 8
	.ident	"GCC: (GNU) 13-win32"
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.def	OamMalloc;	.scl	2;	.type	32;	.endef
	.def	DrawBackground;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gVramGraphicsCopyQueueIndex, "dr"
	.globl	.refptr.gVramGraphicsCopyQueueIndex
	.linkonce	discard
.refptr.gVramGraphicsCopyQueueIndex:
	.quad	gVramGraphicsCopyQueueIndex
	.section	.rdata$.refptr.gVramGraphicsCopyCursor, "dr"
	.globl	.refptr.gVramGraphicsCopyCursor
	.linkonce	discard
.refptr.gVramGraphicsCopyCursor:
	.quad	gVramGraphicsCopyCursor
	.section	.rdata$.refptr.gBackgroundsCopyQueueIndex, "dr"
	.globl	.refptr.gBackgroundsCopyQueueIndex
	.linkonce	discard
.refptr.gBackgroundsCopyQueueIndex:
	.quad	gBackgroundsCopyQueueIndex
	.section	.rdata$.refptr.gBackgroundsCopyQueueCursor, "dr"
	.globl	.refptr.gBackgroundsCopyQueueCursor
	.linkonce	discard
.refptr.gBackgroundsCopyQueueCursor:
	.quad	gBackgroundsCopyQueueCursor
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gOamFreeIndex, "dr"
	.globl	.refptr.gOamFreeIndex
	.linkonce	discard
.refptr.gOamFreeIndex:
	.quad	gOamFreeIndex
	.section	.rdata$.refptr.iwram_end, "dr"
	.globl	.refptr.iwram_end
	.linkonce	discard
.refptr.iwram_end:
	.quad	iwram_end
	.section	.rdata$.refptr.gRefSpriteTables, "dr"
	.globl	.refptr.gRefSpriteTables
	.linkonce	discard
.refptr.gRefSpriteTables:
	.quad	gRefSpriteTables
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
