	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	animCmd_JumpBack;	.scl	3;	.type	32;	.endef
	.seh_proc	animCmd_JumpBack
animCmd_JumpBack:
	.seh_endprologue
	mov	eax, DWORD PTR 4[rcx]
	sub	WORD PTR 36[rdx], ax
	mov	eax, 1
	ret
	.seh_endproc
	.p2align 4
	.def	animCmd_End;	.scl	3;	.type	32;	.endef
	.seh_proc	animCmd_End
animCmd_End:
	.seh_endprologue
	xor	eax, eax
	or	DWORD PTR 32[rdx], 16384
	ret
	.seh_endproc
	.p2align 4
	.def	animCmd_TranslateSprite;	.scl	3;	.type	32;	.endef
	.seh_proc	animCmd_TranslateSprite
animCmd_TranslateSprite:
	.seh_endprologue
	mov	eax, 1
	movd	xmm0, DWORD PTR 38[rdx]
	add	WORD PTR 36[rdx], 2
	movd	xmm1, DWORD PTR 4[rcx]
	paddw	xmm0, xmm1
	movd	DWORD PTR 38[rdx], xmm0
	ret
	.seh_endproc
	.p2align 4
	.def	animCmd_8;	.scl	3;	.type	32;	.endef
	.seh_proc	animCmd_8
animCmd_8:
	.seh_endprologue
	mov	eax, 1
	add	WORD PTR 36[rdx], 3
	ret
	.seh_endproc
	.p2align 4
	.def	animCmd_SetIdAndVariant;	.scl	3;	.type	32;	.endef
	.seh_proc	animCmd_SetIdAndVariant
animCmd_SetIdAndVariant:
	.seh_endprologue
	movzx	eax, WORD PTR 4[rcx]
	add	WORD PTR 36[rdx], 2
	mov	WORD PTR 18[rdx], ax
	mov	BYTE PTR 49[rdx], -1
	movzx	eax, WORD PTR 6[rcx]
	mov	BYTE PTR 48[rdx], al
	mov	eax, -1
	ret
	.seh_endproc
	.p2align 4
	.def	animCmd_10;	.scl	3;	.type	32;	.endef
	.seh_proc	animCmd_10
animCmd_10:
	.seh_endprologue
	mov	eax, 1
	add	WORD PTR 36[rdx], 4
	ret
	.seh_endproc
	.p2align 4
	.def	animCmd_SetSpritePriority;	.scl	3;	.type	32;	.endef
	.seh_proc	animCmd_SetSpritePriority
animCmd_SetSpritePriority:
	.seh_endprologue
	mov	eax, DWORD PTR 32[rdx]
	mov	ecx, DWORD PTR 4[rcx]
	add	WORD PTR 36[rdx], 2
	and	ah, -49
	sal	ecx, 12
	or	eax, ecx
	mov	DWORD PTR 32[rdx], eax
	mov	eax, 1
	ret
	.seh_endproc
	.p2align 4
	.def	animCmd_SetOamOrder;	.scl	3;	.type	32;	.endef
	.seh_proc	animCmd_SetOamOrder
animCmd_SetOamOrder:
	.seh_endprologue
	mov	eax, DWORD PTR 4[rcx]
	add	WORD PTR 36[rdx], 2
	sal	eax, 6
	mov	WORD PTR 42[rdx], ax
	mov	eax, 1
	ret
	.seh_endproc
	.p2align 4
	.def	animCmd_AddHitbox;	.scl	3;	.type	32;	.endef
	.seh_proc	animCmd_AddHitbox
animCmd_AddHitbox:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	r9d, -2080374782
	mov	edi, DWORD PTR 4[rcx]
	add	WORD PTR 36[rdx], 3
	and	edi, 15
	mov	rbx, rdx
	mov	rsi, rcx
	lea	rdx, 4[rcx]
	mov	ecx, 3
	lea	r8, 56[rbx+rdi*8]
	call	DmaSet
	test	DWORD PTR 8[rsi], 16777215
	jne	.L11
	cmp	BYTE PTR 11[rsi], 0
	jne	.L11
	mov	DWORD PTR 56[rbx+rdi*8], -1
.L12:
	mov	eax, 1
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L11:
	mov	eax, DWORD PTR 32[rbx]
	test	ah, 8
	je	.L13
	lea	rdx, [rbx+rdi*8]
	movzx	ecx, BYTE PTR 61[rdx]
	movzx	r8d, BYTE PTR 63[rdx]
	neg	ecx
	neg	r8d
	mov	BYTE PTR 61[rdx], r8b
	mov	BYTE PTR 63[rdx], cl
.L13:
	test	ah, 4
	je	.L12
	lea	rax, [rbx+rdi*8]
	movzx	edx, BYTE PTR 60[rax]
	movzx	ecx, BYTE PTR 62[rax]
	neg	edx
	neg	ecx
	mov	BYTE PTR 60[rax], cl
	mov	BYTE PTR 62[rax], dl
	mov	eax, 1
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.def	animCmd_PlaySoundEffect;	.scl	3;	.type	32;	.endef
	.seh_proc	animCmd_PlaySoundEffect
animCmd_PlaySoundEffect:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	add	WORD PTR 36[rdx], 2
	movzx	ecx, WORD PTR 4[rcx]
	call	m4aSongNumStart
	mov	eax, 1
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.def	animCmd_GetTiles;	.scl	3;	.type	32;	.endef
	.seh_proc	animCmd_GetTiles
animCmd_GetTiles:
	.seh_endprologue
	add	WORD PTR 36[rdx], 3
	mov	rax, rdx
	test	BYTE PTR 34[rdx], 8
	jne	.L22
	mov	edx, DWORD PTR 4[rcx]
	mov	r8, QWORD PTR .refptr.gRefSpriteTables[rip]
	mov	ecx, DWORD PTR 8[rcx]
	mov	r8, QWORD PTR [r8]
	test	edx, edx
	js	.L25
	sal	edx, 5
	sal	ecx, 5
	movsx	rdx, edx
	add	rdx, QWORD PTR 32[r8]
.L24:
	mov	r8, QWORD PTR .refptr.gVramGraphicsCopyQueueIndex[rip]
	mov	WORD PTR 16[rax], cx
	mov	QWORD PTR [rax], rdx
	movdqu	xmm0, XMMWORD PTR [rax]
	movzx	ecx, BYTE PTR [r8]
	mov	rdx, rcx
	lea	r9, [rcx+rcx*2]
	mov	rcx, QWORD PTR .refptr.gVramGraphicsCopyQueueBuffer[rip]
	lea	rcx, [rcx+r9*8]
	movzx	r9d, dl
	add	edx, 1
	movups	XMMWORD PTR [rcx], xmm0
	mov	rax, QWORD PTR 16[rax]
	and	edx, 31
	mov	BYTE PTR [r8], dl
	mov	QWORD PTR 16[rcx], rax
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyQueue[rip]
	mov	QWORD PTR [rax+r9*8], rcx
.L22:
	mov	eax, 1
	ret
	.p2align 4,,10
	.p2align 3
.L25:
	sal	edx, 6
	sal	ecx, 6
	movsx	rdx, edx
	add	rdx, QWORD PTR 40[r8]
	jmp	.L24
	.seh_endproc
	.p2align 4
	.def	animCmd_GetPalette;	.scl	3;	.type	32;	.endef
	.seh_proc	animCmd_GetPalette
animCmd_GetPalette:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	add	WORD PTR 36[rdx], 3
	test	BYTE PTR 34[rdx], 4
	je	.L28
	mov	eax, 1
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L28:
	movzx	eax, BYTE PTR 53[rdx]
	movzx	edx, WORD PTR 10[rcx]
	movzx	r9d, WORD PTR 8[rcx]
	sal	eax, 4
	add	eax, edx
	mov	rdx, QWORD PTR .refptr.gRefSpriteTables[rip]
	sar	r9d
	or	r9d, -2080374784
	mov	r8, QWORD PTR [rdx]
	mov	edx, DWORD PTR 4[rcx]
	mov	rcx, QWORD PTR 24[r8]
	sal	edx, 4
	lea	rdx, [rcx+rdx*2]
	mov	rcx, QWORD PTR .refptr.gObjPalette[rip]
	lea	r8, [rcx+rax*2]
	mov	ecx, 3
	call	DmaSet
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 2
	mov	eax, 1
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8004418
	.def	sub_8004418;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8004418
sub_8004418:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	movabs	rax, 289645473436925953
	mov	r11d, edx
	mov	QWORD PTR 8[rsp], rax
	mov	r9d, ecx
	mov	r10d, edx
	or	r11w, cx
	mov	eax, -1
	je	.L29
	xor	r8d, r8d
	test	cx, cx
	jle	.L50
	test	dx, dx
	jle	.L32
.L52:
	cmp	r9w, dx
	jge	.L51
	add	r8d, 1
	sal	r9d, 7
.L37:
	movsx	eax, r9w
	movsx	r10d, r10w
	cdq
	idiv	r10d
.L36:
	movzx	r8d, r8b
	mov	ecx, 128
	movzx	edx, BYTE PTR 8[rsp+r8]
	sub	ecx, eax
	test	dl, 1
	cmovne	eax, ecx
	sal	edx, 7
	add	eax, edx
	and	ax, 1023
.L29:
	add	rsp, 24
	ret
	.p2align 4,,10
	.p2align 3
.L32:
	mov	r10d, edx
	neg	r10d
	cmp	r9w, r10w
	jl	.L35
	sal	r10d, 7
	add	r8d, 2
	mov	eax, r10d
	test	r9w, r9w
	je	.L36
	mov	edx, r10d
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L50:
	neg	r9d
	mov	r8d, 4
	test	dx, dx
	jg	.L52
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L51:
	sal	edx, 7
.L34:
	movsx	eax, dx
	movsx	r9d, r9w
	cdq
	idiv	r9d
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L35:
	mov	eax, r9d
	add	r8d, 3
	sal	eax, 7
	test	r10w, r10w
	je	.L36
	mov	r9d, eax
	jmp	.L37
	.seh_endproc
	.p2align 4
	.globl	numToASCII
	.def	numToASCII;	.scl	2;	.type	32;	.endef
	.seh_proc	numToASCII
numToASCII:
	.seh_endprologue
	mov	rax, rcx
	lea	r11, 4[rcx]
.L56:
	mov	r9d, edx
	shr	r9w, 12
	cmp	r9w, 10
	lea	r10d, 87[r9]
	lea	r8d, 48[r9]
	cmovnb	r8d, r10d
	add	rax, 1
	sal	edx, 4
	mov	BYTE PTR -1[rax], r8b
	cmp	r11, rax
	jne	.L56
	mov	BYTE PTR 4[rcx], 0
	ret
	.seh_endproc
	.p2align 4
	.globl	Base10DigitsToHexNibbles
	.def	Base10DigitsToHexNibbles;	.scl	2;	.type	32;	.endef
	.seh_proc	Base10DigitsToHexNibbles
Base10DigitsToHexNibbles:
	.seh_endprologue
	xor	r8d, r8d
	mov	r10d, -10
	mov	edx, ecx
	xor	ecx, ecx
.L59:
	movzx	edx, dx
	mov	eax, r10d
	mov	r9d, edx
	imul	edx, edx, 52429
	shr	edx, 19
	imul	eax, edx
	add	eax, r9d
	movzx	eax, al
	sal	eax, cl
	add	ecx, 4
	or	r8d, eax
	cmp	ecx, 16
	jne	.L59
	movzx	eax, r8w
	ret
	.seh_endproc
	.p2align 4
	.globl	UpdateSpriteAnimation
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.seh_proc	UpdateSpriteAnimation
UpdateSpriteAnimation:
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
	movzx	r8d, BYTE PTR 48[rcx]
	movzx	r9d, WORD PTR 18[rcx]
	mov	eax, DWORD PTR 32[rcx]
	mov	rbx, rcx
	cmp	BYTE PTR 49[rcx], r8b
	je	.L77
.L62:
	xor	r10d, r10d
	and	ah, -65
	mov	BYTE PTR 49[rbx], r8b
	xor	edx, edx
	mov	WORD PTR 46[rbx], r9w
	xor	ecx, ecx
	mov	WORD PTR 44[rbx], r10w
	mov	DWORD PTR 32[rbx], eax
	mov	WORD PTR 16[rbx], dx
	xor	edx, edx
	mov	WORD PTR 36[rbx], cx
	xor	ecx, ecx
.L64:
	mov	rdi, QWORD PTR .refptr.gRefSpriteTables[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR [rax+r9*8]
	mov	rsi, QWORD PTR [rax+r8*8]
	add	rcx, rsi
	mov	eax, DWORD PTR [rcx]
	test	eax, eax
	jns	.L67
	lea	rbp, animCmdTable.0[rip]
	jmp	.L70
	.p2align 4,,10
	.p2align 3
.L68:
	cmp	eax, -1
	jne	.L61
	mov	rax, QWORD PTR [rdi]
	movzx	ecx, WORD PTR 18[rbx]
	movzx	edx, BYTE PTR 48[rbx]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR [rax+rcx*8]
	mov	rsi, QWORD PTR [rax+rdx*8]
	xor	eax, eax
	xor	edx, edx
	mov	WORD PTR 36[rbx], ax
	mov	rcx, rsi
	mov	eax, DWORD PTR [rcx]
	test	eax, eax
	jns	.L67
.L70:
	not	eax
	mov	rdx, rbx
	cdqe
	call	[QWORD PTR 0[rbp+rax*8]]
	cmp	eax, 1
	jne	.L68
	movzx	eax, WORD PTR 36[rbx]
	lea	rcx, [rsi+rax*4]
	mov	rdx, rax
	mov	eax, DWORD PTR [rcx]
	test	eax, eax
	js	.L70
.L67:
	movzx	r9d, BYTE PTR 50[rbx]
	movzx	r8d, WORD PTR 44[rbx]
	sal	eax, 8
	sal	r9d, 4
	sub	r8d, r9d
	add	eax, r8d
	mov	WORD PTR 44[rbx], ax
	movsx	rax, DWORD PTR 4[rcx]
	mov	rcx, -1
	cmp	eax, -1
	je	.L71
	mov	rcx, QWORD PTR [rdi]
	movzx	r9d, WORD PTR 18[rbx]
	mov	r8, QWORD PTR 8[rcx]
	lea	rcx, [rax+rax*2]
	mov	rax, QWORD PTR [r8+r9*8]
	lea	rcx, [rax+rcx*4]
.L71:
	add	edx, 2
	mov	QWORD PTR 24[rbx], rcx
	mov	eax, 1
	mov	WORD PTR 36[rbx], dx
.L61:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L77:
	cmp	WORD PTR 46[rcx], r9w
	jne	.L62
	test	ah, 64
	jne	.L73
	movzx	eax, WORD PTR 44[rcx]
	test	ax, ax
	jle	.L78
	movzx	edx, BYTE PTR 50[rcx]
	sal	edx, 4
	sub	eax, edx
	mov	WORD PTR 44[rcx], ax
	mov	eax, 1
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
.L73:
	xor	eax, eax
	jmp	.L61
.L78:
	movzx	ecx, WORD PTR 36[rcx]
	mov	rdx, rcx
	sal	rcx, 2
	jmp	.L64
	.seh_endproc
	.p2align 4
	.globl	sub_80047A0
	.def	sub_80047A0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80047A0
sub_80047A0:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gOamBuffer[rip]
	xor	r11d, r11d
	lea	r9, 0[0+r9*4]
	and	r9d, 262140
	lea	rax, [r9+r9*2]
	lea	r10, 10[rbx+rax*4]
	test	dx, dx
	je	.L80
	movsx	r11d, dx
	mov	eax, 65536
	xor	edx, edx
	idiv	r11d
	movsx	r11d, ax
.L80:
	movzx	edx, cx
	mov	rsi, QWORD PTR .refptr.gSineTable[rip]
	lea	r9, [r9+r9*2]
	lea	eax, 256[rdx]
	cdqe
	movzx	ecx, WORD PTR [rsi+rax*2]
	sar	cx, 6
	movsx	ecx, cx
	mov	eax, ecx
	imul	eax, r11d
	sar	eax, 8
	mov	WORD PTR 10[rbx+r9*4], ax
	movzx	r9d, WORD PTR [rsi+rdx*2]
	mov	eax, r9d
	sar	ax, 6
	cwde
	imul	eax, r11d
	sar	eax, 8
	mov	WORD PTR 12[r10], ax
	test	r8w, r8w
	je	.L83
	movsx	r8d, r8w
	xor	edx, edx
	mov	eax, 65536
	idiv	r8d
	movsx	edx, r9w
	neg	edx
	sar	edx, 6
	cwde
	imul	edx, eax
	imul	ecx, eax
	sar	edx, 8
	sar	ecx, 8
	mov	WORD PTR 24[r10], dx
	mov	WORD PTR 36[r10], cx
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L83:
	xor	ecx, ecx
	xor	edx, edx
	mov	WORD PTR 24[r10], dx
	mov	WORD PTR 36[r10], cx
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	TransformSprite
	.def	TransformSprite;	.scl	2;	.type	32;	.endef
	.seh_proc	TransformSprite
TransformSprite:
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
	mov	rsi, QWORD PTR 24[rcx]
	mov	r8, rcx
	mov	r11, rdx
	cmp	rsi, -1
	je	.L84
	mov	eax, DWORD PTR 32[rcx]
	mov	r10, QWORD PTR .refptr.gSineTable[rip]
	movzx	r9d, WORD PTR 2[r11]
	movzx	ecx, WORD PTR 4[r11]
	lea	rax, 0[0+rax*4]
	and	eax, 124
	lea	rdx, [rax+rax*2]
	mov	rax, QWORD PTR .refptr.gOamBuffer[rip]
	lea	rdi, 10[rax+rdx*4]
	movzx	eax, WORD PTR [r11]
	and	eax, 1023
	lea	edx, 256[rax]
	movsx	rdx, edx
	movzx	ebx, WORD PTR [r10+rdx*2]
	movzx	r10d, WORD PTR [r10+rax*2]
	sar	bx, 6
	sar	r10w, 6
	movsx	ebx, bx
	movsx	r10d, r10w
	test	r9w, r9w
	jne	.L97
	xor	eax, eax
	xor	edx, edx
.L86:
	mov	r12d, r10d
	mov	WORD PTR [rdi], dx
	mov	WORD PTR 12[rdi], ax
	neg	r12d
	test	cx, cx
	je	.L93
	movsx	ebp, cx
	mov	eax, 65536
	xor	edx, edx
	idiv	ebp
	cwde
	mov	edx, eax
	imul	eax, ebx
	imul	edx, r12d
	sar	eax, 8
	sar	edx, 8
.L87:
	mov	WORD PTR 24[rdi], dx
	mov	WORD PTR 36[rdi], ax
	movzx	ebp, WORD PTR 2[r11]
	movzx	edi, WORD PTR 4[r11]
	movsx	r13d, WORD PTR 8[rsi]
	mov	eax, ebp
	neg	eax
	test	bp, bp
	cmovs	r9d, eax
	mov	eax, edi
	neg	eax
	test	di, di
	cmovs	ecx, eax
	movsx	eax, r9w
	movsx	r9d, WORD PTR 8[r11]
	mov	edx, eax
	imul	eax, r12d
	imul	edx, ebx
	sar	eax, 8
	mov	r12d, eax
	movsx	eax, cx
	sar	edx, 8
	imul	r10d, eax
	movsx	edx, dx
	movsx	r12d, r12w
	imul	eax, ebx
	movsx	ebx, WORD PTR 6[r11]
	movzx	r11d, WORD PTR 4[rsi]
	sar	r10d, 8
	sar	eax, 8
	movsx	r10d, r10w
	mov	ecx, eax
	mov	eax, r11d
	sub	r11d, r13d
	test	bp, bp
	movzx	ebp, WORD PTR 6[rsi]
	movsx	esi, WORD PTR 10[rsi]
	cmovle	r13d, r11d
	movsx	ecx, cx
	mov	r11d, ebp
	sub	ebp, esi
	test	di, di
	mov	edi, r13d
	cmovle	esi, ebp
	shr	ax
	shr	r11w
	movzx	eax, ax
	movzx	r11d, r11w
	sub	edi, eax
	sal	eax, 8
	sub	esi, r11d
	imul	edx, edi
	imul	r12d, esi
	imul	r10d, edi
	imul	ecx, esi
	add	r12d, edx
	mov	edx, eax
	mov	eax, r11d
	sal	eax, 8
	add	edx, r12d
	add	ecx, r10d
	sar	edx, 8
	add	eax, ecx
	sub	ebx, edx
	sar	eax, 8
	mov	WORD PTR 38[r8], bx
	sub	r9d, eax
	mov	WORD PTR 40[r8], r9w
.L84:
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L97:
	movsx	ebp, r9w
	mov	eax, 65536
	xor	edx, edx
	idiv	ebp
	cwde
	mov	edx, eax
	imul	eax, r10d
	imul	edx, ebx
	sar	eax, 8
	sar	edx, 8
	jmp	.L86
	.p2align 4,,10
	.p2align 3
.L93:
	xor	eax, eax
	xor	edx, edx
	jmp	.L87
	.seh_endproc
	.p2align 4
	.globl	UnusedTransform
	.def	UnusedTransform;	.scl	2;	.type	32;	.endef
	.seh_proc	UnusedTransform
UnusedTransform:
	.seh_endprologue
	jmp	TransformSprite
	.seh_endproc
	.p2align 4
	.globl	sub_8004E14
	.def	sub_8004E14;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8004E14
sub_8004E14:
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
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	r13, QWORD PTR 24[rcx]
	mov	rdi, rcx
	mov	rbx, rdx
	cmp	r13, -1
	je	.L99
	mov	eax, DWORD PTR 32[rcx]
	mov	rsi, QWORD PTR .refptr.gOamBuffer[rip]
	movsx	r15d, WORD PTR 2[rbx]
	mov	r10, QWORD PTR .refptr.gSineTable[rip]
	lea	r12, 0[0+rax*4]
	mov	QWORD PTR [rsp], rsi
	and	r12d, 124
	lea	rax, [r12+r12*2]
	lea	r14, 10[rsi+rax*4]
	mov	rax, QWORD PTR .refptr.gUnknown_03001944[rip]
	movzx	ebp, WORD PTR [rax]
	movzx	eax, WORD PTR [rdx]
	mov	rdx, QWORD PTR .refptr.gUnknown_030017F0[rip]
	add	eax, ebp
	movzx	r11d, WORD PTR [rdx]
	mov	rdx, QWORD PTR .refptr.gUnknown_03005394[rip]
	and	eax, 1023
	movzx	esi, WORD PTR [rdx]
	imul	r15d, r11d
	mov	edx, esi
	mov	DWORD PTR 8[rsp], esi
	movsx	esi, WORD PTR 4[rbx]
	sar	r15d, 8
	imul	esi, edx
	lea	edx, 256[rax]
	mov	ecx, r15d
	movsx	rdx, edx
	movzx	r9d, WORD PTR [r10+rdx*2]
	movzx	r10d, WORD PTR [r10+rax*2]
	sar	esi, 8
	sar	r9w, 6
	sar	r10w, 6
	mov	r8d, esi
	movsx	r9d, r9w
	movsx	r10d, r10w
	test	r15w, r15w
	jne	.L113
	xor	eax, eax
	xor	edx, edx
.L101:
	mov	r15, QWORD PTR [rsp]
	lea	r12, [r12+r12*2]
	mov	WORD PTR 10[r15+r12*4], dx
	mov	r12d, r10d
	mov	WORD PTR 12[r14], ax
	neg	r12d
	test	si, si
	je	.L109
	movsx	esi, si
	mov	eax, 65536
	xor	edx, edx
	idiv	esi
	mov	edx, eax
	imul	eax, r9d
	imul	edx, r12d
	sar	eax, 8
	sar	edx, 8
.L102:
	mov	WORD PTR 24[r14], dx
	mov	WORD PTR 36[r14], ax
	movzx	esi, WORD PTR 2[rbx]
	test	si, si
	jns	.L103
	movsx	ecx, si
	neg	ecx
	imul	ecx, r11d
	sar	ecx, 8
.L103:
	movzx	edx, WORD PTR 4[rbx]
	test	dx, dx
	jns	.L104
	mov	eax, DWORD PTR 8[rsp]
	movsx	r8d, dx
	neg	r8d
	imul	r8d, eax
	sar	r8d, 8
.L104:
	movsx	ecx, cx
	mov	r14, QWORD PTR .refptr.gSineTable[rip]
	movsx	r8d, r8w
	mov	eax, ecx
	imul	r12d, ecx
	imul	eax, r9d
	imul	r10d, r8d
	mov	r15d, r12d
	imul	r9d, r8d
	sar	eax, 8
	sar	r15d, 8
	mov	DWORD PTR [rsp], eax
	mov	rax, QWORD PTR .refptr.gUnknown_03005398[rip]
	sar	r10d, 8
	sar	r9d, 8
	movzx	r12d, WORD PTR [rax]
	lea	eax, 256[rbp]
	movsx	rbp, ebp
	cdqe
	movzx	r14d, WORD PTR [r14+rax*2]
	mov	rax, QWORD PTR .refptr.gSineTable[rip]
	imul	ecx, r12d
	imul	r8d, r12d
	movsx	r12d, WORD PTR 8[rbx]
	movzx	eax, WORD PTR [rax+rbp*2]
	sar	r14w, 6
	movsx	ebp, WORD PTR 6[rbx]
	mov	ebx, r11d
	movsx	r14d, r14w
	sar	ecx, 16
	sar	ax, 6
	imul	ebx, r14d
	sar	r8d, 16
	cwde
	imul	r11d, eax
	sal	ebx, 8
	sar	ebx, 24
	neg	r11d
	imul	ebx, ecx
	sal	r11d, 8
	sar	r11d, 24
	imul	ecx, r11d
	sal	ebx, 8
	mov	r11, QWORD PTR .refptr.gUnknown_0300194C[rip]
	movsx	ebx, bx
	imul	ebx, ebp
	movsx	r11d, WORD PTR [r11]
	sal	ecx, 8
	movsx	ecx, cx
	sal	r11d, 8
	imul	ecx, r12d
	add	ecx, ebx
	mov	ebx, DWORD PTR 8[rsp]
	add	ecx, r11d
	imul	eax, ebx
	sar	ecx, 8
	sal	eax, 8
	imul	ebx, r14d
	sar	eax, 24
	imul	eax, r8d
	mov	r11d, ebx
	xor	ebx, ebx
	sal	r11d, 8
	sar	r11d, 24
	sal	eax, 8
	imul	r8d, r11d
	cwde
	xor	r11d, r11d
	imul	eax, ebp
	sal	r8d, 8
	movsx	r8d, r8w
	imul	r8d, r12d
	add	eax, r8d
	mov	r8, QWORD PTR .refptr.gUnknown_03002820[rip]
	movsx	r8d, WORD PTR [r8]
	sal	r8d, 8
	add	eax, r8d
	sar	eax, 8
	test	r13, r13
	je	.L106
	movzx	r8d, WORD PTR 4[r13]
	movzx	ebx, WORD PTR 8[r13]
	movzx	r11d, WORD PTR 10[r13]
	mov	WORD PTR 12[rsp], r8w
	sub	r8d, ebx
	test	si, si
	movzx	esi, WORD PTR 6[r13]
	cmovle	ebx, r8d
	mov	WORD PTR 14[rsp], si
	sub	esi, r11d
	test	dx, dx
	mov	r8d, esi
	cmovle	r11d, r8d
.L106:
	movsx	esi, WORD PTR [rsp]
	movsx	r15d, r15w
	movsx	r10d, r10w
	movsx	r9d, r9w
	movzx	r8d, WORD PTR 12[rsp]
	movzx	edx, WORD PTR 14[rsp]
	shr	r8w
	shr	dx
	sub	ebx, r8d
	sub	r11d, edx
	movzx	r8d, r8w
	movzx	edx, dx
	sal	r8d, 8
	movsx	ebx, bx
	movsx	r11d, r11w
	sal	edx, 8
	imul	esi, ebx
	imul	r15d, r11d
	imul	r10d, ebx
	imul	r9d, r11d
	add	r15d, esi
	add	r8d, r15d
	add	r9d, r10d
	sar	r8d, 8
	add	edx, r9d
	sub	ecx, r8d
	sar	edx, 8
	mov	WORD PTR 38[rdi], cx
	sub	eax, edx
	mov	WORD PTR 40[rdi], ax
.L99:
	add	rsp, 24
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
.L113:
	movsx	r15d, r15w
	mov	eax, 65536
	xor	edx, edx
	idiv	r15d
	mov	edx, eax
	imul	eax, r10d
	imul	edx, r9d
	sar	eax, 8
	sar	edx, 8
	jmp	.L101
	.p2align 4,,10
	.p2align 3
.L109:
	xor	eax, eax
	xor	edx, edx
	jmp	.L102
	.seh_endproc
	.p2align 4
	.globl	OamMalloc
	.def	OamMalloc;	.scl	2;	.type	32;	.endef
	.seh_proc	OamMalloc
OamMalloc:
	.seh_endprologue
	mov	r8, QWORD PTR .refptr.gOamFreeIndex[rip]
	movzx	eax, BYTE PTR [r8]
	test	al, al
	js	.L119
	mov	edx, 31
	mov	r10, QWORD PTR .refptr.gOamMallocOrders_StartIndex[rip]
	mov	r9, QWORD PTR .refptr.gOamMallocBuffer[rip]
	cmp	cl, dl
	cmova	ecx, edx
	movzx	edx, al
	lea	rdx, [rdx+rdx*2]
	movzx	ecx, cl
	mov	BYTE PTR 10[r9+rdx*4], -1
	cmp	BYTE PTR [r10+rcx], -1
	je	.L120
	mov	rdx, QWORD PTR .refptr.gOamMallocOrders_EndIndex[rip]
	movzx	r10d, BYTE PTR [rdx+rcx]
	lea	r10, [r10+r10*2]
	mov	BYTE PTR 10[r9+r10*4], al
.L118:
	mov	BYTE PTR [rdx+rcx], al
	add	eax, 1
	mov	BYTE PTR [r8], al
	movzx	eax, al
	sub	eax, 1
	cdqe
	lea	rax, [rax+rax*2]
	lea	rax, [r9+rax*4]
	ret
	.p2align 4,,10
	.p2align 3
.L120:
	mov	BYTE PTR [r10+rcx], al
	mov	rdx, QWORD PTR .refptr.gOamMallocOrders_EndIndex[rip]
	jmp	.L118
	.p2align 4,,10
	.p2align 3
.L119:
	mov	rax, QWORD PTR .refptr.iwram_end[rip]
	mov	rax, QWORD PTR [rax]
	ret
	.seh_endproc
	.p2align 4
	.globl	DisplaySprite
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.seh_proc	DisplaySprite
DisplaySprite:
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
	mov	rdi, QWORD PTR 24[rcx]
	mov	rsi, rcx
	cmp	rdi, -1
	je	.L121
	movzx	r8d, WORD PTR 2[rdi]
	mov	eax, DWORD PTR 32[rcx]
	movsx	ebp, WORD PTR 38[rcx]
	movsx	r12d, WORD PTR 40[rcx]
	mov	BYTE PTR 52[rcx], r8b
	test	eax, 131072
	je	.L123
	mov	rdx, QWORD PTR .refptr.gSpriteOffset[rip]
	movsx	ecx, WORD PTR [rdx]
	movsx	edx, WORD PTR 2[rdx]
	sub	ebp, ecx
	sub	r12d, edx
.L123:
	movzx	r14d, WORD PTR 4[rdi]
	movzx	r15d, WORD PTR 6[rdi]
	mov	ecx, r14d
	mov	edx, r15d
	test	al, 32
	jne	.L164
	movsx	edx, WORD PTR 10[rdi]
	mov	r9d, r15d
	mov	ecx, r12d
	sub	r9d, edx
	sub	r12d, edx
	movsx	edx, WORD PTR 8[rdi]
	sub	ecx, r9d
	test	ah, 8
	mov	r9d, r14d
	cmovne	r12d, ecx
	sub	r9d, edx
	mov	ecx, ebp
	sub	ebp, edx
	sub	ecx, r9d
	test	ah, 4
	cmovne	ebp, ecx
.L125:
	cmp	ebp, 426
	jg	.L121
	lea	eax, 0[rbp+r14]
	lea	edx, [r15+r12]
	or	eax, edx
	js	.L121
	cmp	r12d, 240
	jg	.L121
	mov	rax, QWORD PTR .refptr.gMosaicReg[rip]
	movzx	eax, WORD PTR [rax]
	movzx	eax, ah
	test	r8w, r8w
	je	.L121
	mov	rbx, QWORD PTR .refptr.VRAM[rip]
	mov	DWORD PTR 40[rsp], r14d
	xor	r13d, r13d
	mov	r14d, eax
	mov	DWORD PTR 44[rsp], r15d
	add	rbx, 65536
	mov	r15, rbx
	jmp	.L137
	.p2align 4,,10
	.p2align 3
.L165:
	or	r9d, 1
	mov	edx, 3
	test	al, 64
	cmovne	r9d, edx
	mov	edx, eax
	and	edx, 31
	movzx	r9d, r9b
	sal	edx, 8
	or	edx, r9d
	movzx	r9d, WORD PTR 4[rbx]
	and	r9w, -7940
	or	edx, r9d
	mov	WORD PTR 4[rbx], dx
.L133:
	test	r14b, r14b
	je	.L135
	test	ah, 2
	je	.L135
	or	BYTE PTR 4[rbx], 16
.L135:
	mov	edx, eax
	shr	eax, 7
	add	ecx, ebp
	add	r8d, r12d
	shr	edx, 12
	and	eax, 3
	mov	WORD PTR [rbx], cx
	and	edx, 3
	sal	rax, 2
	mov	WORD PTR 2[rbx], r8w
	sal	rdx, 42
	or	rdx, rax
	movabs	rax, -13194139533325
	and	rax, QWORD PTR 4[rbx]
	or	rdx, rax
	mov	rax, rdx
	mov	QWORD PTR 4[rbx], rdx
	shr	rax, 32
	and	ax, 1023
	and	edx, 32
	je	.L136
	add	eax, eax
	and	ax, 1023
.L136:
	mov	rdx, QWORD PTR 8[rsi]
	add	r13d, 1
	sub	rdx, r15
	shr	rdx, 5
	add	eax, edx
	movzx	edx, WORD PTR 8[rbx]
	and	ax, 1023
	and	dx, -1024
	or	eax, edx
	mov	WORD PTR 8[rbx], ax
	movzx	eax, r13b
	cmp	ax, WORD PTR 2[rdi]
	jnb	.L121
.L137:
	mov	rax, QWORD PTR .refptr.gRefSpriteTables[rip]
	movzx	ecx, WORD PTR 42[rsi]
	movzx	edx, WORD PTR 18[rsi]
	mov	rax, QWORD PTR [rax]
	sar	ecx, 6
	and	ecx, 31
	mov	rax, QWORD PTR 16[rax]
	mov	r11, QWORD PTR [rax+rdx*8]
	call	OamMalloc
	mov	rbx, rax
	mov	rax, QWORD PTR .refptr.iwram_end[rip]
	cmp	QWORD PTR [rax], rbx
	je	.L121
	test	r13b, r13b
	jne	.L130
	mov	rax, QWORD PTR .refptr.gOamFreeIndex[rip]
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR 39[rsp], al
	sub	eax, 1
	mov	BYTE PTR 51[rsi], al
.L130:
	movzx	eax, BYTE PTR 1[rdi]
	movzx	edx, r13b
	mov	r8, rbx
	mov	ecx, 3
	mov	r9d, -2147483643
	add	eax, edx
	cdqe
	lea	rax, [rax+rax*4]
	lea	rdx, [r11+rax*2]
	call	DmaSet
	movzx	edx, BYTE PTR 4[rbx]
	movzx	eax, BYTE PTR 9[rbx]
	movsx	ecx, WORD PTR [rbx]
	movsx	r8d, WORD PTR 2[rbx]
	mov	r9d, edx
	mov	r10d, eax
	and	edx, -2
	and	eax, 15
	mov	BYTE PTR 4[rbx], dl
	shr	r10b, 4
	add	r10b, BYTE PTR 53[rsi]
	and	r9d, 2
	sal	r10d, 4
	or	eax, r10d
	mov	BYTE PTR 9[rbx], al
	mov	eax, DWORD PTR 32[rsi]
	test	al, 32
	jne	.L165
	shr	dl, 6
	mov	r10d, eax
	movzx	r9d, dl
	movzx	edx, BYTE PTR 5[rbx]
	shr	r10d, 11
	sal	r9d, 2
	shr	dl, 5
	and	edx, 3
	or	edx, r9d
	movzx	r9d, BYTE PTR [rdi]
	mov	r11d, r9d
	shr	r11b
	xor	r10d, r11d
	and	r10d, 1
	je	.L134
	mov	r10d, edx
	lea	r11, gOamShapesSizes[rip]
	xor	BYTE PTR 5[rbx], 16
	movzx	r11d, BYTE PTR 1[r11+r10*2]
	mov	r10d, DWORD PTR 44[rsp]
	sub	r10d, r11d
	sub	r10d, r8d
	mov	r8d, r10d
.L134:
	mov	r10d, eax
	and	r9d, 1
	shr	r10d, 10
	and	r10d, 1
	cmp	r10d, r9d
	je	.L133
	lea	r9, gOamShapesSizes[rip]
	xor	BYTE PTR 5[rbx], 8
	movzx	r9d, BYTE PTR [r9+rdx*2]
	mov	edx, DWORD PTR 40[rsp]
	sub	edx, r9d
	sub	edx, ecx
	mov	ecx, edx
	jmp	.L133
	.p2align 4,,10
	.p2align 3
.L121:
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
	.p2align 4,,10
	.p2align 3
.L164:
	test	al, 64
	je	.L125
	shr	cx
	shr	dx
	add	r14d, r14d
	add	r15d, r15d
	movzx	ecx, cx
	movzx	edx, dx
	sub	ebp, ecx
	sub	r12d, edx
	jmp	.L125
	.seh_endproc
	.p2align 4
	.globl	DisplaySprites
	.def	DisplaySprites;	.scl	2;	.type	32;	.endef
	.seh_proc	DisplaySprites
DisplaySprites:
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
	sub	rsp, 104
	.seh_stackalloc	104
	.seh_endprologue
	mov	rsi, QWORD PTR 24[rcx]
	mov	QWORD PTR 184[rsp], rdx
	mov	rbx, rcx
	mov	BYTE PTR 47[rsp], r8b
	cmp	rsi, -1
	je	.L166
	movzx	r11d, WORD PTR 2[rsi]
	movsx	r10d, WORD PTR 38[rcx]
	movsx	r9d, WORD PTR 40[rcx]
	mov	eax, DWORD PTR 32[rcx]
	mov	DWORD PTR 88[rsp], r10d
	mov	BYTE PTR 52[rcx], r11b
	mov	DWORD PTR 92[rsp], r9d
	test	eax, 131072
	je	.L168
	mov	rcx, QWORD PTR .refptr.gSpriteOffset[rip]
	mov	edx, DWORD PTR 88[rsp]
	movsx	edi, WORD PTR [rcx]
	movsx	ecx, WORD PTR 2[rcx]
	sub	edx, edi
	mov	DWORD PTR 88[rsp], edx
	mov	edx, DWORD PTR 92[rsp]
	sub	edx, ecx
	mov	DWORD PTR 92[rsp], edx
.L168:
	movzx	r12d, WORD PTR 4[rsi]
	movzx	r13d, WORD PTR 6[rsi]
	mov	ecx, r12d
	mov	edx, r13d
	test	al, 32
	je	.L169
	test	al, 64
	jne	.L204
.L171:
	mov	ecx, DWORD PTR 88[rsp]
	mov	edx, DWORD PTR 92[rsp]
	mov	eax, DWORD PTR 88[rsp]
	add	eax, r12d
	js	.L166
	mov	eax, DWORD PTR 88[rsp]
	cmp	eax, 426
	jg	.L166
	mov	eax, DWORD PTR 92[rsp]
	add	eax, r13d
	js	.L166
	mov	eax, DWORD PTR 92[rsp]
	cmp	eax, 240
	jg	.L166
	test	r11w, r11w
	je	.L166
	mov	rax, QWORD PTR 184[rsp]
	sub	ecx, r10d
	sub	edx, r9d
	xor	edi, edi
	movzx	r8d, r8b
	mov	DWORD PTR 48[rsp], ecx
	lea	r14, [rax+r8*4]
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	DWORD PTR 52[rsp], edx
	mov	DWORD PTR 76[rsp], r13d
	add	rax, 65536
	mov	DWORD PTR 72[rsp], r12d
	mov	r12d, edi
	mov	QWORD PTR 56[rsp], rax
.L183:
	mov	rax, QWORD PTR .refptr.gRefSpriteTables[rip]
	movzx	ecx, WORD PTR 42[rbx]
	movzx	edx, WORD PTR 18[rbx]
	mov	rax, QWORD PTR [rax]
	sar	ecx, 6
	and	ecx, 31
	mov	rax, QWORD PTR 16[rax]
	mov	r11, QWORD PTR [rax+rdx*8]
	call	OamMalloc
	mov	rbp, rax
	mov	rax, QWORD PTR .refptr.iwram_end[rip]
	cmp	QWORD PTR [rax], rbp
	je	.L166
	movzx	eax, BYTE PTR 1[rsi]
	movzx	edx, r12b
	mov	r8, rbp
	mov	ecx, 3
	mov	r9d, -2147483643
	add	eax, edx
	cdqe
	lea	rax, [rax+rax*4]
	lea	rdx, [r11+rax*2]
	call	DmaSet
	movzx	r8d, WORD PTR 6[rbp]
	movzx	r9d, WORD PTR 4[rbp]
	movzx	edx, BYTE PTR 53[rbx]
	mov	eax, DWORD PTR 32[rbx]
	mov	r13d, r8d
	movzx	r15d, r9b
	and	r8w, -512
	and	r9w, -512
	sal	edx, 12
	and	r13d, 511
	add	dx, WORD PTR 8[rbp]
	test	al, 32
	je	.L176
	mov	ecx, r9d
	mov	r10d, eax
	or	r9w, 768
	or	ch, 1
	test	al, 64
	cmove	r9d, ecx
	sal	r10d, 9
	mov	ecx, eax
	and	r10w, 15872
	or	r8d, r10d
.L179:
	and	cx, 384
	mov	r10d, DWORD PTR 92[rsp]
	shr	eax, 2
	mov	rdi, QWORD PTR 56[rsp]
	sal	ecx, 3
	and	ax, 3072
	or	ecx, r9d
	mov	r9d, DWORD PTR 88[rsp]
	add	r10d, r15d
	or	eax, edx
	movzx	r10d, r10b
	and	dx, 1023
	add	r9d, r13d
	add	ecx, r10d
	add	edx, eax
	and	r9d, 511
	mov	WORD PTR 4[rbp], cx
	add	r8d, r9d
	and	ch, 32
	cmovne	eax, edx
	mov	rdx, QWORD PTR 8[rbx]
	add	r15w, WORD PTR 52[rsp]
	mov	WORD PTR 6[rbp], r8w
	add	r13w, WORD PTR 48[rsp]
	sub	rdx, rdi
	mov	rdi, QWORD PTR 184[rsp]
	shr	rdx, 5
	add	eax, edx
	cmp	BYTE PTR 47[rsp], 0
	mov	WORD PTR 8[rbp], ax
	je	.L184
	mov	QWORD PTR 64[rsp], rsi
	mov	rsi, rdi
	jmp	.L182
	.p2align 4,,10
	.p2align 3
.L206:
	mov	rdx, rbp
	mov	r9d, -2147483643
	mov	r8, rdi
	add	rsi, 4
	mov	ecx, 3
	call	DmaSet
	movzx	eax, WORD PTR -2[rsi]
	movzx	edx, WORD PTR 6[rdi]
	add	eax, r15d
	and	dx, -512
	mov	BYTE PTR 4[rdi], al
	movzx	eax, WORD PTR -4[rsi]
	add	eax, r13d
	and	ax, 511
	or	eax, edx
	mov	WORD PTR 6[rdi], ax
	cmp	r14, rsi
	je	.L205
.L182:
	movzx	ecx, WORD PTR 42[rbx]
	sar	ecx, 6
	and	ecx, 31
	call	OamMalloc
	mov	rdi, rax
	mov	rax, QWORD PTR .refptr.iwram_end[rip]
	cmp	QWORD PTR [rax], rbp
	jne	.L206
.L166:
	add	rsp, 104
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
.L169:
	movsx	ecx, WORD PTR 10[rsi]
	mov	edx, DWORD PTR 92[rsp]
	test	ah, 8
	jne	.L207
	sub	edx, ecx
	test	ah, 4
	mov	DWORD PTR 92[rsp], edx
	movsx	edx, WORD PTR 8[rsi]
	mov	eax, DWORD PTR 88[rsp]
	je	.L174
.L208:
	mov	ecx, r12d
	sub	ecx, edx
	sub	eax, ecx
	mov	DWORD PTR 88[rsp], eax
	jmp	.L171
	.p2align 4,,10
	.p2align 3
.L204:
	mov	eax, DWORD PTR 88[rsp]
	shr	cx
	shr	dx
	add	r12d, r12d
	movzx	ecx, cx
	movzx	edx, dx
	add	r13d, r13d
	sub	eax, ecx
	mov	DWORD PTR 88[rsp], eax
	mov	eax, DWORD PTR 92[rsp]
	sub	eax, edx
	mov	DWORD PTR 92[rsp], eax
	jmp	.L171
	.p2align 4,,10
	.p2align 3
.L207:
	mov	edi, r13d
	sub	edi, ecx
	sub	edx, edi
	test	ah, 4
	mov	DWORD PTR 92[rsp], edx
	movsx	edx, WORD PTR 8[rsi]
	mov	eax, DWORD PTR 88[rsp]
	jne	.L208
.L174:
	sub	eax, edx
	mov	DWORD PTR 88[rsp], eax
	jmp	.L171
	.p2align 4,,10
	.p2align 3
.L205:
	mov	rsi, QWORD PTR 64[rsp]
.L184:
	add	r12d, 1
	movzx	eax, r12b
	cmp	ax, WORD PTR 2[rsi]
	jb	.L183
	jmp	.L166
	.p2align 4,,10
	.p2align 3
.L176:
	mov	ecx, r9d
	mov	r10d, r8d
	movzx	r11d, BYTE PTR [rsi]
	shr	ecx, 12
	shr	r10w, 14
	and	ecx, 12
	movzx	r10d, r10w
	mov	edi, r11d
	or	r10d, ecx
	mov	ecx, eax
	shr	dil
	shr	ecx, 11
	xor	ecx, edi
	and	ecx, 1
	je	.L180
	mov	ecx, r10d
	lea	rdi, gOamShapesSizes[rip]
	xor	r8w, 8192
	movzx	edi, BYTE PTR 1[rdi+rcx*2]
	mov	ecx, DWORD PTR 76[rsp]
	sub	ecx, edi
	sub	ecx, r15d
	mov	r15d, ecx
.L180:
	mov	edi, eax
	and	r11d, 1
	mov	ecx, eax
	shr	edi, 10
	and	edi, 1
	cmp	edi, r11d
	je	.L179
	lea	r11, gOamShapesSizes[rip]
	xor	r8w, 4096
	movzx	r11d, BYTE PTR [r11+r10*2]
	mov	r10d, DWORD PTR 72[rsp]
	sub	r10d, r11d
	sub	r10d, r13d
	mov	r13d, r10d
	jmp	.L179
	.seh_endproc
	.p2align 4
	.globl	ProcessOamBuffers
	.def	ProcessOamBuffers;	.scl	2;	.type	32;	.endef
	.seh_proc	ProcessOamBuffers
ProcessOamBuffers:
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
	sub	rsp, 72
	.seh_stackalloc	72
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gOamMallocOrders_StartIndex[rip]
	mov	rsi, QWORD PTR .refptr.gOamMallocBuffer[rip]
	xor	r13d, r13d
	mov	rdi, QWORD PTR .refptr.gOamMallocCopiedOrder[rip]
	mov	rbp, rax
	lea	r12, 32[rax]
	mov	QWORD PTR 40[rsp], rax
	mov	rax, QWORD PTR .refptr.gOamBuffer[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	r14, rax
	.p2align 4,,10
	.p2align 3
.L212:
	movzx	ebx, BYTE PTR 0[rbp]
	cmp	bl, -1
	je	.L210
	.p2align 4,,10
	.p2align 3
.L211:
	movsx	r15, bl
	mov	r8, r14
	mov	r9d, -2147483643
	mov	ecx, 3
	lea	rdx, [r15+r15*2]
	add	r14, 12
	lea	rdx, [rsi+rdx*4]
	call	DmaSet
	mov	edx, r13d
	add	r13d, 1
	mov	BYTE PTR [r15+rdi], dl
	lea	rdx, [r15+r15*2]
	movzx	ebx, BYTE PTR 10[rsi+rdx*4]
	cmp	bl, -1
	jne	.L211
.L210:
	add	rbp, 1
	cmp	rbp, r12
	jne	.L212
	mov	rbp, QWORD PTR .refptr.gFlags[rip]
	mov	eax, DWORD PTR 0[rbp]
	test	ah, 8
	je	.L213
	mov	rdi, QWORD PTR .refptr.gOamFreeIndex[rip]
	mov	rbx, QWORD PTR 32[rsp]
	lea	r15, 60[rsp]
	mov	r12, QWORD PTR .refptr.gOamFirstPausedIndex[rip]
	movzx	esi, BYTE PTR [rdi]
	movzx	ecx, sil
	lea	rcx, [rcx+rcx*2]
	lea	rbx, [rbx+rcx*4]
	cmp	sil, BYTE PTR [r12]
	jnb	.L216
	.p2align 4,,10
	.p2align 3
.L215:
	mov	edx, 512
	mov	r8, rbx
	mov	ecx, 3
	add	esi, 1
	mov	WORD PTR 60[rsp], dx
	mov	r9d, -2130706427
	mov	rdx, r15
	add	rbx, 12
	call	DmaSet
	movzx	eax, BYTE PTR [r12]
	cmp	eax, esi
	jg	.L215
.L234:
	mov	eax, DWORD PTR 0[rbp]
.L216:
	mov	BYTE PTR [rdi], 0
	test	ah, 64
	je	.L222
	mov	rdx, QWORD PTR 40[rsp]
	lea	rcx, 56[rsp]
	mov	r8d, 83886088
	mov	DWORD PTR 56[rsp], -1
	call	CpuSet
	mov	rdx, QWORD PTR .refptr.gOamMallocOrders_EndIndex[rip]
	mov	rcx, r15
	mov	r8d, 83886088
	mov	DWORD PTR 60[rsp], -1
	call	CpuSet
	nop
.L209:
	add	rsp, 72
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
.L213:
	test	ah, 4
	je	.L217
	mov	rdi, QWORD PTR .refptr.gOamFreeIndex[rip]
	mov	rcx, QWORD PTR 32[rsp]
	movzx	eax, BYTE PTR [rdi]
	sub	eax, 1
	movsx	rdx, eax
	lea	rdx, [rdx+rdx*2]
	lea	rbx, [rcx+rdx*4]
	cmp	eax, -1
	je	.L235
	mov	eax, eax
	mov	rcx, QWORD PTR 32[rsp]
	mov	rdx, rbx
	lea	rax, [rax+rax*2]
	sal	rax, 2
	lea	rsi, 1524[rcx]
	sub	rdx, rax
	lea	r12, -12[rdx]
.L220:
	mov	r8, rsi
	mov	rdx, rbx
	mov	r9d, -2147483643
	mov	ecx, 3
	call	DmaSet
	sub	rbx, 12
	sub	rsi, 12
	cmp	r12, rbx
	jne	.L220
	mov	r12, QWORD PTR .refptr.gOamFirstPausedIndex[rip]
	mov	eax, -128
	sub	al, BYTE PTR [rdi]
	mov	BYTE PTR [r12], al
	je	.L236
.L219:
	mov	r13, QWORD PTR 32[rsp]
	xor	ebx, ebx
	lea	r15, 60[rsp]
.L221:
	mov	eax, 512
	mov	r8, r13
	mov	rdx, r15
	mov	ecx, 3
	mov	r9d, -2130706427
	mov	WORD PTR 60[rsp], ax
	add	ebx, 1
	add	r13, 12
	call	DmaSet
	movzx	eax, BYTE PTR [r12]
	cmp	eax, ebx
	jg	.L221
	jmp	.L234
.L222:
	mov	r8, QWORD PTR .refptr.gOamMallocOrders_StartIndex[rip]
	mov	rdx, r15
	mov	r9d, -2063597560
	mov	ecx, 3
	mov	DWORD PTR 60[rsp], -1
	call	DmaSet
	mov	r8, QWORD PTR .refptr.gOamMallocOrders_EndIndex[rip]
	mov	r9d, -2063597560
	mov	rdx, r15
	mov	ecx, 3
	mov	DWORD PTR 60[rsp], -1
	call	DmaSet
	jmp	.L209
.L217:
	mov	rdx, QWORD PTR .refptr.gOamFirstPausedIndex[rip]
	mov	rdi, QWORD PTR .refptr.gOamFreeIndex[rip]
	lea	r15, 60[rsp]
	mov	BYTE PTR [rdx], 0
	jmp	.L216
.L236:
	mov	eax, DWORD PTR 0[rbp]
	lea	r15, 60[rsp]
	jmp	.L216
.L235:
	mov	r12, QWORD PTR .refptr.gOamFirstPausedIndex[rip]
	mov	BYTE PTR [r12], -128
	jmp	.L219
	.seh_endproc
	.section .rdata,"dr"
	.align 32
animCmdTable.0:
	.quad	animCmd_GetTiles
	.quad	animCmd_GetPalette
	.quad	animCmd_JumpBack
	.quad	animCmd_End
	.quad	animCmd_PlaySoundEffect
	.quad	animCmd_AddHitbox
	.quad	animCmd_TranslateSprite
	.quad	animCmd_8
	.quad	animCmd_SetIdAndVariant
	.quad	animCmd_10
	.quad	animCmd_SetSpritePriority
	.quad	animCmd_SetOamOrder
	.globl	gOamShapesSizes
	.align 16
gOamShapesSizes:
	.ascii "\10\10"
	.ascii "\20\20"
	.ascii "  "
	.ascii "@@"
	.ascii "\20\10"
	.ascii " \10"
	.ascii " \20"
	.ascii "@ "
	.ascii "\10\20"
	.ascii "\10 "
	.ascii "\20 "
	.ascii " @"
	.ident	"GCC: (GNU) 13-win32"
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	CpuSet;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gOamFirstPausedIndex, "dr"
	.globl	.refptr.gOamFirstPausedIndex
	.linkonce	discard
.refptr.gOamFirstPausedIndex:
	.quad	gOamFirstPausedIndex
	.section	.rdata$.refptr.gOamMallocCopiedOrder, "dr"
	.globl	.refptr.gOamMallocCopiedOrder
	.linkonce	discard
.refptr.gOamMallocCopiedOrder:
	.quad	gOamMallocCopiedOrder
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gMosaicReg, "dr"
	.globl	.refptr.gMosaicReg
	.linkonce	discard
.refptr.gMosaicReg:
	.quad	gMosaicReg
	.section	.rdata$.refptr.gSpriteOffset, "dr"
	.globl	.refptr.gSpriteOffset
	.linkonce	discard
.refptr.gSpriteOffset:
	.quad	gSpriteOffset
	.section	.rdata$.refptr.gOamMallocOrders_EndIndex, "dr"
	.globl	.refptr.gOamMallocOrders_EndIndex
	.linkonce	discard
.refptr.gOamMallocOrders_EndIndex:
	.quad	gOamMallocOrders_EndIndex
	.section	.rdata$.refptr.gOamMallocBuffer, "dr"
	.globl	.refptr.gOamMallocBuffer
	.linkonce	discard
.refptr.gOamMallocBuffer:
	.quad	gOamMallocBuffer
	.section	.rdata$.refptr.gOamMallocOrders_StartIndex, "dr"
	.globl	.refptr.gOamMallocOrders_StartIndex
	.linkonce	discard
.refptr.gOamMallocOrders_StartIndex:
	.quad	gOamMallocOrders_StartIndex
	.section	.rdata$.refptr.iwram_end, "dr"
	.globl	.refptr.iwram_end
	.linkonce	discard
.refptr.iwram_end:
	.quad	iwram_end
	.section	.rdata$.refptr.gOamFreeIndex, "dr"
	.globl	.refptr.gOamFreeIndex
	.linkonce	discard
.refptr.gOamFreeIndex:
	.quad	gOamFreeIndex
	.section	.rdata$.refptr.gUnknown_03002820, "dr"
	.globl	.refptr.gUnknown_03002820
	.linkonce	discard
.refptr.gUnknown_03002820:
	.quad	gUnknown_03002820
	.section	.rdata$.refptr.gUnknown_0300194C, "dr"
	.globl	.refptr.gUnknown_0300194C
	.linkonce	discard
.refptr.gUnknown_0300194C:
	.quad	gUnknown_0300194C
	.section	.rdata$.refptr.gUnknown_03005398, "dr"
	.globl	.refptr.gUnknown_03005398
	.linkonce	discard
.refptr.gUnknown_03005398:
	.quad	gUnknown_03005398
	.section	.rdata$.refptr.gUnknown_03005394, "dr"
	.globl	.refptr.gUnknown_03005394
	.linkonce	discard
.refptr.gUnknown_03005394:
	.quad	gUnknown_03005394
	.section	.rdata$.refptr.gUnknown_030017F0, "dr"
	.globl	.refptr.gUnknown_030017F0
	.linkonce	discard
.refptr.gUnknown_030017F0:
	.quad	gUnknown_030017F0
	.section	.rdata$.refptr.gUnknown_03001944, "dr"
	.globl	.refptr.gUnknown_03001944
	.linkonce	discard
.refptr.gUnknown_03001944:
	.quad	gUnknown_03001944
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
	.section	.rdata$.refptr.gOamBuffer, "dr"
	.globl	.refptr.gOamBuffer
	.linkonce	discard
.refptr.gOamBuffer:
	.quad	gOamBuffer
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
	.section	.rdata$.refptr.gObjPalette, "dr"
	.globl	.refptr.gObjPalette
	.linkonce	discard
.refptr.gObjPalette:
	.quad	gObjPalette
	.section	.rdata$.refptr.gVramGraphicsCopyQueue, "dr"
	.globl	.refptr.gVramGraphicsCopyQueue
	.linkonce	discard
.refptr.gVramGraphicsCopyQueue:
	.quad	gVramGraphicsCopyQueue
	.section	.rdata$.refptr.gVramGraphicsCopyQueueBuffer, "dr"
	.globl	.refptr.gVramGraphicsCopyQueueBuffer
	.linkonce	discard
.refptr.gVramGraphicsCopyQueueBuffer:
	.quad	gVramGraphicsCopyQueueBuffer
	.section	.rdata$.refptr.gVramGraphicsCopyQueueIndex, "dr"
	.globl	.refptr.gVramGraphicsCopyQueueIndex
	.linkonce	discard
.refptr.gVramGraphicsCopyQueueIndex:
	.quad	gVramGraphicsCopyQueueIndex
	.section	.rdata$.refptr.gRefSpriteTables, "dr"
	.globl	.refptr.gRefSpriteTables
	.linkonce	discard
.refptr.gRefSpriteTables:
	.quad	gRefSpriteTables
