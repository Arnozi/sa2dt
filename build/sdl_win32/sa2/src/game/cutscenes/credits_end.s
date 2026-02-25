	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	TaskDestroy_CreditsEndCutScene;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestroy_CreditsEndCutScene
TaskDestroy_CreditsEndCutScene:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.def	Task_CreateCopyrightScreen;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_CreateCopyrightScreen
Task_CreateCopyrightScreen:
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
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	mov	eax, DWORD PTR 500[rbx]
	test	eax, eax
	je	.L4
	sub	eax, 1
	mov	DWORD PTR 500[rbx], eax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	mov	rbp, QWORD PTR .refptr.gDispCnt[rip]
	mov	rsi, QWORD PTR .refptr.VRAM[rip]
	mov	edx, 20
	xor	ecx, ecx
	mov	WORD PTR 156[rbx], dx
	movdqu	xmm0, XMMWORD PTR .LC0[rip]
	movzx	eax, WORD PTR 0[rbp]
	mov	WORD PTR 162[rbx], cx
	lea	rcx, 96[rbx]
	mov	BYTE PTR 158[rbx], 0
	mov	r12, QWORD PTR .refptr.gBgScrollRegs[rip]
	and	ah, -3
	movups	XMMWORD PTR 140[rbx], xmm0
	or	ah, 1
	mov	DWORD PTR [r12], 0
	mov	WORD PTR 0[rbp], ax
	lea	rax, 49152[rsi]
	mov	QWORD PTR 104[rbx], rax
	xor	eax, eax
	mov	WORD PTR 114[rbx], ax
	lea	rax, 45056[rsi]
	mov	QWORD PTR 120[rbx], rax
	call	DrawBackground
	lea	rax, 16384[rsi]
	xor	r8d, r8d
	mov	r9d, 3
	mov	r10d, 2
	add	rsi, 43008
	mov	QWORD PTR 200[rbx], rax
	movdqu	xmm0, XMMWORD PTR .LC2[rip]
	mov	WORD PTR 210[rbx], r8w
	lea	rcx, 192[rbx]
	mov	QWORD PTR 216[rbx], rsi
	mov	WORD PTR 252[rbx], r9w
	mov	BYTE PTR 254[rbx], 0
	mov	WORD PTR 258[rbx], r10w
	movups	XMMWORD PTR 236[rbx], xmm0
	or	WORD PTR 0[rbp], 1024
	mov	DWORD PTR 8[r12], -779091968
	call	DrawBackground
	add	BYTE PTR 495[rbx], 1
	mov	rax, QWORD PTR [rdi]
	lea	rdx, Task_FadeIn[rip]
	mov	BYTE PTR 493[rbx], 2
	mov	DWORD PTR 500[rbx], 270
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.def	Task_HandleGameCompletion;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_HandleGameCompletion
Task_HandleGameCompletion:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rdi, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rsi]
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rdx]
	cmp	BYTE PTR 492[rbx], 1
	je	.L30
	cmp	BYTE PTR 27[rax], 0
	je	.L31
.L25:
	mov	BYTE PTR 497[rbx], 1
	mov	DWORD PTR 500[rbx], 180
.L24:
	lea	rax, Task_FadeOut[rip]
	mov	BYTE PTR 493[rbx], 3
	mov	QWORD PTR 40[rdx], rax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L31:
	mov	BYTE PTR 27[rax], 1
	call	WriteSaveGame
	mov	rdx, QWORD PTR [rsi]
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L30:
	cmp	BYTE PTR 25[rax], 0
	je	.L32
.L8:
	xor	ecx, ecx
	xor	edx, edx
	mov	r9d, 1
	.p2align 4,,10
	.p2align 3
.L10:
	cmp	BYTE PTR 7[rax+rcx], 28
	jbe	.L9
	mov	r8d, r9d
	sal	r8d, cl
	or	edx, r8d
.L9:
	add	rcx, 1
	cmp	rcx, 5
	jne	.L10
	cmp	dl, 14
	jbe	.L11
	cmp	BYTE PTR 12[rax], 0
	jns	.L11
	cmp	BYTE PTR 26[rax], 0
	je	.L33
	.p2align 4,,10
	.p2align 3
.L11:
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	movsx	rax, BYTE PTR [rax]
	cmp	al, 4
	je	.L12
	mov	rdx, QWORD PTR [rdi]
	cmp	BYTE PTR 12[rdx+rax], 0
	js	.L34
	mov	eax, 16383
	mov	BYTE PTR 497[rbx], 0
	mov	rdx, QWORD PTR [rsi]
	mov	WORD PTR 488[rbx], ax
	mov	DWORD PTR 500[rbx], 105
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L34:
	mov	BYTE PTR 21[rdx+rax], 1
	movd	xmm0, DWORD PTR 21[rdx]
	pxor	xmm1, xmm1
	pcmpeqb	xmm0, xmm1
	movd	xmm1, DWORD PTR .LC4[rip]
	pandn	xmm0, xmm1
	pxor	xmm1, xmm1
	movd	eax, xmm0
	movd	xmm0, eax
	psadbw	xmm0, xmm1
	movd	eax, xmm0
	cmp	al, 1
	je	.L35
	cmp	al, 2
	je	.L17
	cmp	al, 3
	jne	.L36
	cmp	BYTE PTR 18[rdx], 0
	jne	.L12
	mov	BYTE PTR 18[rdx], 1
	.p2align 4,,10
	.p2align 3
.L20:
	call	WriteSaveGame
	mov	edx, 16383
	mov	BYTE PTR 497[rbx], 0
	mov	WORD PTR 488[rbx], dx
	mov	rdx, QWORD PTR [rsi]
	mov	DWORD PTR 500[rbx], 105
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L12:
	mov	BYTE PTR 497[rbx], 1
	mov	rdx, QWORD PTR [rsi]
	mov	DWORD PTR 500[rbx], 180
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L32:
	mov	BYTE PTR 25[rax], 1
	call	WriteSaveGame
	mov	rax, QWORD PTR [rdi]
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L17:
	cmp	BYTE PTR 17[rdx], 0
	jne	.L12
	mov	BYTE PTR 17[rdx], 1
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L33:
	mov	BYTE PTR 26[rax], 1
	call	WriteSaveGame
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L35:
	cmp	BYTE PTR 20[rdx], 0
	jne	.L12
	mov	BYTE PTR 20[rdx], 1
	jmp	.L20
.L36:
	jbe	.L20
	movzx	ecx, BYTE PTR 19[rdx]
	cmp	cl, 15
	ja	.L12
	cmp	al, 4
	jne	.L20
	or	ecx, 16
	mov	BYTE PTR 19[rdx], cl
	jmp	.L20
	.seh_endproc
	.p2align 4
	.def	Task_SequenceEnd;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_SequenceEnd
Task_SequenceEnd:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rbx]
	mov	rdx, QWORD PTR 24[rax]
	mov	eax, DWORD PTR 500[rdx]
	test	eax, eax
	jne	.L42
	movzx	eax, BYTE PTR 497[rdx]
	test	al, al
	je	.L43
	cmp	al, 1
	je	.L44
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L43:
	call	CreateMissingChaosEmaraldsCutScene
.L41:
	mov	rcx, QWORD PTR [rbx]
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L42:
	sub	eax, 1
	mov	DWORD PTR 500[rdx], eax
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L44:
	call	CreateTitleScreen
	jmp	.L41
	.seh_endproc
	.p2align 4
	.def	RenderExtraEndingElements.part.0;	.scl	3;	.type	32;	.endef
	.seh_proc	RenderExtraEndingElements.part.0
RenderExtraEndingElements.part.0:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	movzx	eax, WORD PTR 504[rcx]
	mov	rbx, rcx
	test	ax, ax
	jg	.L50
	lea	edx, 14[rax]
	sub	eax, 1
	cmp	dx, 15
	mov	edx, 30
	cmovnb	eax, edx
	cmp	BYTE PTR 495[rbx], 11
	mov	WORD PTR 504[rbx], ax
	je	.L51
.L45:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L50:
	mov	eax, DWORD PTR 520[rbx]
	lea	rsi, 288[rcx]
	mov	ecx, 781
	mov	BYTE PTR 336[rbx], 0
	mov	WORD PTR 306[rbx], cx
	mov	rcx, rsi
	mov	WORD PTR 326[rbx], ax
	mov	eax, DWORD PTR 524[rbx]
	sar	eax, 8
	mov	WORD PTR 328[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	movzx	eax, WORD PTR 504[rbx]
	sub	eax, 1
	cmp	BYTE PTR 495[rbx], 11
	mov	WORD PTR 504[rbx], ax
	jne	.L45
.L51:
	mov	eax, 781
	mov	BYTE PTR 400[rbx], 1
	lea	rsi, 352[rbx]
	mov	WORD PTR 370[rbx], ax
	mov	eax, DWORD PTR 528[rbx]
	mov	rcx, rsi
	mov	WORD PTR 390[rbx], ax
	mov	eax, DWORD PTR 532[rbx]
	sar	eax, 8
	mov	WORD PTR 392[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	lea	rsi, 416[rbx]
	call	DisplaySprite
	mov	eax, DWORD PTR 536[rbx]
	mov	edx, 781
	mov	rcx, rsi
	mov	WORD PTR 434[rbx], dx
	mov	WORD PTR 454[rbx], ax
	mov	eax, DWORD PTR 540[rbx]
	mov	BYTE PTR 464[rbx], 2
	sar	eax, 8
	mov	WORD PTR 456[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.def	Task_SequenceMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_SequenceMain
Task_SequenceMain:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	cmp	BYTE PTR 492[rbx], 2
	je	.L66
.L54:
	mov	eax, DWORD PTR 500[rbx]
	test	eax, eax
	jne	.L67
	movzx	eax, BYTE PTR 493[rbx]
	test	al, al
	jne	.L64
	mov	rax, QWORD PTR [rsi]
	lea	rcx, Task_FadeOut[rip]
	mov	BYTE PTR 493[rbx], 1
	mov	DWORD PTR 500[rbx], 30
	mov	QWORD PTR 40[rax], rcx
.L52:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L64:
	cmp	al, 2
	jne	.L52
	mov	rax, QWORD PTR [rsi]
	lea	rdx, Task_HandleGameCompletion[rip]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L67:
	sub	eax, 1
	mov	DWORD PTR 500[rbx], eax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L66:
	mov	rax, QWORD PTR .LC5[rip]
	mov	QWORD PTR 520[rbx], rax
	movzx	eax, BYTE PTR 495[rbx]
	cmp	al, 11
	je	.L55
	cmp	al, 10
	ja	.L54
	movzx	edx, BYTE PTR 494[rbx]
	test	dl, dl
	je	.L60
	sub	edx, 1
	mov	BYTE PTR 494[rbx], dl
.L65:
	mov	rcx, rbx
	call	RenderExtraEndingElements.part.0
	jmp	.L54
	.p2align 4,,10
	.p2align 3
.L55:
	mov	DWORD PTR 528[rbx], 120
	mov	eax, DWORD PTR 532[rbx]
	cmp	eax, 33280
	jle	.L58
	sub	eax, 768
	mov	DWORD PTR 532[rbx], eax
.L58:
	mov	DWORD PTR 536[rbx], 120
	mov	eax, DWORD PTR 540[rbx]
	cmp	eax, 37888
	jle	.L65
	sub	eax, 768
	mov	DWORD PTR 540[rbx], eax
	jmp	.L65
	.p2align 4,,10
	.p2align 3
.L60:
	mov	rdx, QWORD PTR .refptr.gDispCnt[rip]
	lea	rcx, 96[rbx]
	mov	DWORD PTR 154[rbx], 1310750
	or	WORD PTR [rdx], 256
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	DWORD PTR [rdx], 0
	lea	rdx, sTilemapsCreditsEndSlides[rip]
	movzx	eax, WORD PTR 4[rdx+rax*2]
	mov	WORD PTR 144[rbx], ax
	xor	eax, eax
	mov	WORD PTR 162[rbx], ax
	call	DrawBackground
	movzx	eax, BYTE PTR 495[rbx]
	lea	r8, gUnknown_080E12F0[rip]
	xor	edx, edx
	add	eax, 1
	movzx	ecx, al
	mov	dl, BYTE PTR [r8+rcx]
	mov	dh, al
	mov	WORD PTR 494[rbx], dx
	cmp	al, 9
	je	.L68
.L61:
	cmp	BYTE PTR 492[rbx], 2
	jne	.L54
	cmp	BYTE PTR 495[rbx], 11
	ja	.L54
	jmp	.L65
	.p2align 4,,10
	.p2align 3
.L68:
	mov	ecx, 212
	call	m4aSongNumStart
	jmp	.L61
	.seh_endproc
	.p2align 4
	.def	Task_FadeIn;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_FadeIn
Task_FadeIn:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	edx, 2
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	cmp	BYTE PTR 492[rbx], 2
	mov	WORD PTR 482[rbx], dx
	lea	rdi, 480[rbx]
	je	.L77
.L71:
	mov	rcx, rdi
	call	UpdateScreenFade
	cmp	al, 1
	jne	.L69
	xor	eax, eax
	lea	rdx, Task_SequenceMain[rip]
	mov	WORD PTR 484[rbx], ax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdx
.L69:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L77:
	mov	rax, QWORD PTR .LC5[rip]
	cmp	BYTE PTR 495[rbx], 11
	mov	QWORD PTR 520[rbx], rax
	je	.L78
	ja	.L71
.L74:
	mov	rcx, rbx
	call	RenderExtraEndingElements.part.0
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L78:
	mov	DWORD PTR 528[rbx], 120
	mov	eax, DWORD PTR 532[rbx]
	cmp	eax, 33280
	jle	.L73
	sub	eax, 768
	mov	DWORD PTR 532[rbx], eax
.L73:
	mov	DWORD PTR 536[rbx], 120
	mov	eax, DWORD PTR 540[rbx]
	cmp	eax, 37888
	jle	.L74
	sub	eax, 768
	mov	DWORD PTR 540[rbx], eax
	jmp	.L74
	.seh_endproc
	.p2align 4
	.def	Task_FadeOut;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_FadeOut
Task_FadeOut:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	edx, 1
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	cmp	BYTE PTR 492[rbx], 2
	mov	WORD PTR 482[rbx], dx
	lea	rdi, 480[rbx]
	je	.L88
.L81:
	mov	rcx, rdi
	call	UpdateScreenFade
	cmp	al, 1
	je	.L89
.L79:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L88:
	mov	rax, QWORD PTR .LC5[rip]
	cmp	BYTE PTR 495[rbx], 11
	mov	QWORD PTR 520[rbx], rax
	je	.L90
	ja	.L81
.L84:
	mov	rcx, rbx
	call	RenderExtraEndingElements.part.0
	mov	rcx, rdi
	call	UpdateScreenFade
	cmp	al, 1
	jne	.L79
.L89:
	xor	eax, eax
	cmp	BYTE PTR 493[rbx], 1
	mov	WORD PTR 484[rbx], ax
	mov	rax, QWORD PTR [rsi]
	je	.L91
	lea	rdx, Task_SequenceEnd[rip]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L90:
	mov	DWORD PTR 528[rbx], 120
	mov	eax, DWORD PTR 532[rbx]
	cmp	eax, 33280
	jle	.L83
	sub	eax, 768
	mov	DWORD PTR 532[rbx], eax
.L83:
	mov	DWORD PTR 536[rbx], 120
	mov	eax, DWORD PTR 540[rbx]
	cmp	eax, 37888
	jle	.L84
	sub	eax, 768
	mov	DWORD PTR 540[rbx], eax
	jmp	.L84
	.p2align 4,,10
	.p2align 3
.L91:
	lea	rdx, Task_CreateCopyrightScreen[rip]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateCreditsEndCutScene
	.def	CreateCreditsEndCutScene;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateCreditsEndCutScene
CreateCreditsEndCutScene:
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
	sub	rsp, 88
	.seh_stackalloc	88
	movups	XMMWORD PTR 64[rsp], xmm6
	.seh_savexmm	xmm6, 64
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	rdi, QWORD PTR .refptr.VRAM[rip]
	mov	r8d, 5380
	mov	rbp, QWORD PTR .refptr.gDispCnt[rip]
	mov	r9d, -2063591424
	mov	WORD PTR 4[rax], r8w
	lea	r8, 16384[rdi]
	mov	DWORD PTR [rax], 1417680397
	mov	esi, ecx
	mov	r12d, ecx
	mov	ecx, 4160
	mov	DWORD PTR 60[rsp], 0
	mov	WORD PTR 0[rbp], cx
	lea	rdx, 60[rsp]
	mov	ecx, 3
	call	DmaSet
	mov	rdx, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	xor	r9d, r9d
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	mov	r8d, 12544
	lea	rcx, Task_FadeIn[rip]
	mov	WORD PTR [rdx], r9w
	xor	r9d, r9d
	mov	BYTE PTR 2[rdx], 90
	mov	rdx, QWORD PTR .LC13[rip]
	mov	DWORD PTR 8[rax], 553582592
	mov	QWORD PTR [rax], rdx
	lea	rax, TaskDestroy_CreditsEndCutScene[rip]
	mov	edx, 544
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	xor	r10d, r10d
	movdqu	xmm0, XMMWORD PTR .LC14[rip]
	mov	rbx, QWORD PTR 24[rax]
	movabs	rax, 2161727825684463360
	mov	QWORD PTR 497[rbx], rax
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	BYTE PTR 492[rbx], sil
	mov	rax, QWORD PTR [rax]
	mov	BYTE PTR 493[rbx], 0
	mov	WORD PTR 494[rbx], r10w
	mov	BYTE PTR 505[rbx], 0
	cmp	BYTE PTR 6[rax], 1
	mov	rax, QWORD PTR .LC15[rip]
	setne	BYTE PTR 496[rbx]
	mov	DWORD PTR 488[rbx], 16383
	mov	QWORD PTR 536[rbx], rax
	mov	rax, QWORD PTR .LC16[rip]
	movups	XMMWORD PTR 520[rbx], xmm0
	mov	QWORD PTR 480[rbx], rax
	lea	rax, 65536[rdi]
	mov	QWORD PTR 512[rbx], rax
	cmp	sil, 2
	je	.L95
	cmp	r12b, 1
	je	.L96
.L92:
	movups	xmm6, XMMWORD PTR 64[rsp]
	add	rsp, 88
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
.L95:
	xor	r9d, r9d
	lea	r14, 49152[rdi]
	lea	rsi, 96[rbx]
	xor	ecx, ecx
	mov	r8d, 20
	lea	r13, 45056[rdi]
	mov	WORD PTR 114[rbx], cx
	movdqu	xmm0, XMMWORD PTR .LC18[rip]
	mov	QWORD PTR 104[rbx], r14
	mov	r12, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	rcx, rsi
	movabs	r15, 59954170039369728
	mov	WORD PTR 156[rbx], r8w
	mov	WORD PTR 162[rbx], r9w
	mov	QWORD PTR 120[rbx], r13
	mov	BYTE PTR 158[rbx], 0
	movups	XMMWORD PTR 140[rbx], xmm0
	mov	DWORD PTR [r12], 0
	or	WORD PTR 0[rbp], 256
	call	DrawBackground
	mov	rax, QWORD PTR 512[rbx]
	xor	r11d, r11d
	mov	r10d, -256
	mov	WORD PTR 336[rbx], r10w
	movd	xmm6, DWORD PTR .LC20[rip]
	lea	rcx, 288[rbx]
	mov	QWORD PTR 296[rbx], rax
	add	rax, 1536
	mov	WORD PTR 332[rbx], r11w
	mov	QWORD PTR 512[rbx], rax
	mov	BYTE PTR 338[rbx], 16
	mov	BYTE PTR 341[rbx], 0
	mov	QWORD PTR 320[rbx], r15
	mov	DWORD PTR 328[rbx], 65516
	mov	DWORD PTR 344[rbx], -1
	movd	DWORD PTR 304[rbx], xmm6
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR 512[rbx]
	mov	BYTE PTR 402[rbx], 16
	lea	rcx, 352[rbx]
	mov	BYTE PTR 405[rbx], 0
	mov	QWORD PTR 360[rbx], rax
	add	rax, 832
	mov	QWORD PTR 512[rbx], rax
	mov	eax, -255
	mov	WORD PTR 400[rbx], ax
	xor	eax, eax
	mov	QWORD PTR 384[rbx], r15
	mov	DWORD PTR 392[rbx], 336
	mov	WORD PTR 396[rbx], ax
	mov	DWORD PTR 408[rbx], -1
	movd	DWORD PTR 368[rbx], xmm6
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR 512[rbx]
	mov	BYTE PTR 466[rbx], 16
	lea	rcx, 416[rbx]
	mov	BYTE PTR 469[rbx], 0
	mov	QWORD PTR 424[rbx], rax
	add	rax, 1024
	mov	QWORD PTR 512[rbx], rax
	mov	eax, -254
	mov	WORD PTR 464[rbx], ax
	xor	eax, eax
	mov	QWORD PTR 448[rbx], r15
	mov	DWORD PTR 456[rbx], 336
	mov	WORD PTR 460[rbx], ax
	mov	DWORD PTR 472[rbx], -1
	movd	DWORD PTR 432[rbx], xmm6
	call	UpdateSpriteAnimation
	xor	eax, eax
	mov	QWORD PTR 104[rbx], r14
	mov	rcx, rsi
	movzx	edx, BYTE PTR 495[rbx]
	mov	WORD PTR 114[rbx], ax
	lea	rax, sTilemapsCreditsEndSlides[rip]
	mov	QWORD PTR 120[rbx], r13
	movzx	eax, WORD PTR 4[rax+rdx*2]
	xor	edx, edx
	mov	DWORD PTR 140[rbx], 0
	mov	WORD PTR 162[rbx], dx
	mov	WORD PTR 144[rbx], ax
	mov	QWORD PTR 146[rbx], 0
	mov	DWORD PTR 154[rbx], 1310750
	mov	BYTE PTR 158[rbx], 0
	mov	DWORD PTR [r12], 0
	or	WORD PTR 0[rbp], 256
	call	DrawBackground
	mov	rcx, rsi
	call	UpdateBgAnimationTiles
	movzx	r12d, BYTE PTR 492[rbx]
	cmp	r12b, 1
	jne	.L92
.L96:
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	movzx	edx, BYTE PTR 496[rbx]
	mov	QWORD PTR 8[rbx], rdi
	add	rdi, 40960
	or	WORD PTR 0[rbp], 512
	mov	rcx, rbx
	mov	DWORD PTR 4[rax], 0
	xor	eax, eax
	mov	WORD PTR 18[rbx], ax
	lea	rax, sTilemapsCreditsEndSlides[rip]
	movzx	eax, WORD PTR [rax+rdx*2]
	mov	edx, 5
	mov	QWORD PTR 24[rbx], rdi
	mov	DWORD PTR 44[rbx], 0
	mov	WORD PTR 48[rbx], ax
	mov	QWORD PTR 50[rbx], 0
	mov	DWORD PTR 58[rbx], 1310750
	mov	BYTE PTR 62[rbx], 0
	mov	WORD PTR 66[rbx], dx
	movups	xmm6, XMMWORD PTR 64[rsp]
	add	rsp, 88
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	DrawBackground
	.seh_endproc
	.section .rdata,"dr"
	.align 8
gUnknown_080E12F0:
	.ascii "*\3\3\3\3\3\3\3\14\4\4\0"
	.align 16
sTilemapsCreditsEndSlides:
	.word	232
	.word	233
	.word	216
	.word	217
	.word	218
	.word	219
	.word	220
	.word	221
	.word	222
	.word	223
	.word	224
	.word	225
	.word	226
	.word	260
	.word	259
	.align 16
.LC0:
	.word	0
	.word	0
	.word	260
	.word	0
	.word	0
	.word	0
	.word	0
	.word	30
	.align 16
.LC2:
	.word	0
	.word	0
	.word	259
	.word	0
	.word	0
	.word	0
	.word	0
	.word	30
	.align 4
.LC4:
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.align 8
.LC5:
	.long	120
	.long	2560
	.align 8
.LC13:
	.byte	0
	.byte	0
	.byte	-1
	.byte	32
	.byte	0
	.byte	0
	.byte	-1
	.byte	32
	.align 16
.LC14:
	.long	0
	.long	0
	.long	46080
	.long	46080
	.align 8
.LC15:
	.long	51200
	.long	51200
	.align 8
.LC16:
	.word	1
	.word	2
	.word	0
	.word	256
	.align 16
.LC18:
	.word	0
	.word	0
	.word	216
	.word	0
	.word	0
	.word	0
	.word	0
	.word	30
	.align 4
.LC20:
	.word	0
	.word	781
	.ident	"GCC: (GNU) 13-win32"
	.def	DrawBackground;	.scl	2;	.type	32;	.endef
	.def	WriteSaveGame;	.scl	2;	.type	32;	.endef
	.def	CreateMissingChaosEmaraldsCutScene;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	CreateTitleScreen;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	UpdateScreenFade;	.scl	2;	.type	32;	.endef
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	UpdateBgAnimationTiles;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr.gBgCntRegs, "dr"
	.globl	.refptr.gBgCntRegs
	.linkonce	discard
.refptr.gBgCntRegs:
	.quad	gBgCntRegs
	.section	.rdata$.refptr.gSelectedCharacter, "dr"
	.globl	.refptr.gSelectedCharacter
	.linkonce	discard
.refptr.gSelectedCharacter:
	.quad	gSelectedCharacter
	.section	.rdata$.refptr.gLoadedSaveGame, "dr"
	.globl	.refptr.gLoadedSaveGame
	.linkonce	discard
.refptr.gLoadedSaveGame:
	.quad	gLoadedSaveGame
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gBgScrollRegs, "dr"
	.globl	.refptr.gBgScrollRegs
	.linkonce	discard
.refptr.gBgScrollRegs:
	.quad	gBgScrollRegs
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
