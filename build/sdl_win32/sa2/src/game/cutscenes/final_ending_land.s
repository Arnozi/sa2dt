	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	sub_8093F9C
	.def	sub_8093F9C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8093F9C
sub_8093F9C:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8093F54
	.def	sub_8093F54;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8093F54
sub_8093F54:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rbx]
	mov	rdx, QWORD PTR 24[rax]
	movzx	eax, WORD PTR 1122[rdx]
	test	ax, ax
	je	.L4
	lea	ecx, -1[rax]
	mov	WORD PTR 1122[rdx], cx
	cmp	ax, 61
	je	.L6
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	xor	r8d, r8d
	xor	edx, edx
	mov	ecx, 1
	call	CreateCreditsCutScene
	mov	rcx, QWORD PTR [rbx]
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L6:
	mov	ecx, 44
	add	rsp, 32
	pop	rbx
	jmp	m4aSongNumStart
	.seh_endproc
	.p2align 4
	.globl	CreateFinalEndingLandingCutScene
	.def	CreateFinalEndingLandingCutScene;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateFinalEndingLandingCutScene
CreateFinalEndingLandingCutScene:
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
	movups	XMMWORD PTR 80[rsp], xmm6
	.seh_savexmm	xmm6, 80
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	edx, 4928
	xor	ecx, ecx
	xor	r9d, r9d
	mov	r8d, 12544
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	rdx, QWORD PTR .LC1[rip]
	mov	DWORD PTR [rax], 403086339
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	mov	WORD PTR [rax], cx
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	lea	rcx, sub_8093EDC[rip]
	mov	QWORD PTR [rax], rdx
	lea	rax, sub_8093F9C[rip]
	mov	edx, 1856
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	r12, QWORD PTR .refptr.gSelectedCharacter[rip]
	xor	r9d, r9d
	mov	r14, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	movzx	ecx, BYTE PTR [r12]
	mov	r8, QWORD PTR [rax]
	lea	rbp, 1532[r14]
	lea	rsi, 1792[r14]
	movsx	rax, cl
	lea	r10, 1552[r14]
	movsx	ebx, BYTE PTR 12[r8+rax]
	movzx	eax, BYTE PTR 12[r8+rax]
	mov	BYTE PTR 1112[r14], 0
	mov	r8d, 256
	mov	DWORD PTR 1126[r14], 3276800
	sar	al, 7
	mov	edi, ebx
	mov	WORD PTR 1115[r14], r9w
	sar	ebx, 31
	not	eax
	sar	edi, 31
	and	ebx, 2
	mov	WORD PTR 1110[r14], r8w
	and	eax, 10
	and	edi, 2
	mov	r8, rsi
	mov	BYTE PTR 1114[r14], al
	mov	rax, QWORD PTR .LC3[rip]
	add	edi, 1
	cmp	cl, 1
	sete	BYTE PTR 1113[r14]
	mov	rcx, rbp
	mov	QWORD PTR 1118[r14], rax
	.p2align 4,,10
	.p2align 3
.L9:
	lea	rax, -400[rcx]
	.p2align 4,,10
	.p2align 3
.L10:
	mov	DWORD PTR [rax], 0
	add	rax, 40
	mov	DWORD PTR -20[rax], 0
	cmp	rcx, rax
	jne	.L10
	mov	r9, r8
	sub	r9, rcx
	and	r9d, 4
	je	.L11
	lea	rax, 20[rcx]
	mov	DWORD PTR [rcx], 0
	cmp	r8, rax
	je	.L28
	.p2align 4,,10
	.p2align 3
.L11:
	mov	DWORD PTR [rax], 0
	add	rax, 40
	mov	DWORD PTR -20[rax], 0
	cmp	r8, rax
	jne	.L11
.L28:
	add	rcx, 4
	add	r8, 4
	cmp	r10, rcx
	jne	.L9
	mov	QWORD PTR 1840[r14], 0
	pxor	xmm0, xmm0
	movups	XMMWORD PTR 1792[r14], xmm0
	movdqu	xmm0, XMMWORD PTR .LC4[rip]
	movups	XMMWORD PTR 1808[r14], xmm0
	movdqu	xmm0, XMMWORD PTR .LC5[rip]
	movups	XMMWORD PTR 1824[r14], xmm0
	.p2align 4,,10
	.p2align 3
.L13:
	call	Random
	add	rbp, 20
	and	eax, 127
	mov	DWORD PTR -20[rbp], eax
	cmp	rsi, rbp
	jne	.L13
	mov	rcx, QWORD PTR .LC6[rip]
	mov	rsi, QWORD PTR .refptr.VRAM[rip]
	mov	r15d, 16319
	mov	WORD PTR 1106[r14], r15w
	movzx	ebp, WORD PTR .LC7[rip]
	mov	QWORD PTR 1098[r14], rcx
	movsx	rcx, BYTE PTR [r12]
	lea	rax, 65536[rsi]
	mov	QWORD PTR 1848[r14], rax
	cmp	cl, 1
	je	.L29
.L14:
	lea	r13, gUnknown_080E17A4[rip]
	xor	r10d, r10d
	xor	r8d, r8d
	mov	edi, edi
	mov	QWORD PTR 200[r14], rax
	add	rax, 2048
	mov	r9d, 4351
	movabs	r15, 59954170039369728
	mov	QWORD PTR 1848[r14], rax
	movzx	eax, WORD PTR 4[r13+rcx*8]
	mov	WORD PTR 236[r14], r10w
	mov	WORD PTR 210[r14], ax
	movzx	eax, BYTE PTR 6[r13+rcx*8]
	lea	rcx, 192[r14]
	mov	WORD PTR 208[r14], r8w
	mov	WORD PTR 241[r14], r9w
	mov	BYTE PTR 240[r14], al
	mov	BYTE PTR 245[r14], 0
	mov	QWORD PTR 224[r14], r15
	mov	DWORD PTR 232[r14], 4259820
	mov	DWORD PTR 248[r14], -1
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR 1848[r14]
	xor	r11d, r11d
	mov	BYTE PTR 309[r14], 0
	mov	WORD PTR 272[r14], r11w
	pinsrw	xmm0, WORD PTR 1118[r14], 0
	pshuflw	xmm0, xmm0, 0
	mov	QWORD PTR 264[r14], rax
	add	rax, 2048
	mov	QWORD PTR 1848[r14], rax
	movsx	eax, BYTE PTR [r12]
	mov	QWORD PTR 288[r14], 96
	mov	DWORD PTR 296[r14], 4194304
	add	eax, 20
	mov	DWORD PTR 312[r14], -1
	cdqe
	movd	DWORD PTR 1090[r14], xmm0
	movzx	ecx, WORD PTR 4[r13+rax*8]
	movzx	eax, BYTE PTR 6[r13+rax*8]
	mov	DWORD PTR 1094[r14], 0
	mov	BYTE PTR 304[r14], al
	mov	eax, 4351
	mov	WORD PTR 305[r14], ax
	xor	eax, eax
	mov	WORD PTR 300[r14], ax
	xor	eax, eax
	mov	WORD PTR 274[r14], cx
	lea	rcx, 256[r14]
	mov	WORD PTR 1088[r14], ax
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR 1848[r14]
	movd	xmm6, DWORD PTR .LC11[rip]
	mov	WORD PTR 880[r14], bp
	mov	BYTE PTR 882[r14], 16
	lea	rcx, 832[r14]
	mov	QWORD PTR 840[r14], rax
	sub	rax, -128
	mov	QWORD PTR 1848[r14], rax
	xor	eax, eax
	mov	BYTE PTR 885[r14], 0
	mov	QWORD PTR 864[r14], 0
	mov	DWORD PTR 872[r14], 12582912
	mov	WORD PTR 876[r14], ax
	mov	DWORD PTR 888[r14], -1
	movd	DWORD PTR 848[r14], xmm6
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR 1848[r14]
	mov	WORD PTR 944[r14], bp
	lea	rcx, 896[r14]
	mov	BYTE PTR 946[r14], 16
	mov	QWORD PTR 904[r14], rax
	sub	rax, -128
	mov	QWORD PTR 1848[r14], rax
	xor	eax, eax
	mov	BYTE PTR 949[r14], 0
	mov	QWORD PTR 928[r14], 0
	mov	DWORD PTR 936[r14], 12582912
	mov	WORD PTR 940[r14], ax
	mov	DWORD PTR 952[r14], -1
	movd	DWORD PTR 912[r14], xmm6
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR 1848[r14]
	xor	edx, edx
	movabs	r9, 8444249301319680
	mov	WORD PTR 1004[r14], dx
	movd	xmm6, DWORD PTR .LC12[rip]
	lea	rcx, 960[r14]
	mov	QWORD PTR 968[r14], rax
	sub	rax, -128
	mov	WORD PTR 1008[r14], bp
	mov	QWORD PTR 992[r14], r9
	mov	QWORD PTR 1848[r14], rax
	mov	BYTE PTR 1010[r14], 16
	mov	BYTE PTR 1013[r14], 0
	mov	DWORD PTR 1000[r14], 12582942
	mov	DWORD PTR 1016[r14], -1
	movd	DWORD PTR 976[r14], xmm6
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR 1848[r14]
	xor	ecx, ecx
	movabs	r9, 8444249301319680
	mov	QWORD PTR 1056[r14], r9
	mov	QWORD PTR 1032[r14], rax
	sub	rax, -128
	mov	WORD PTR 1072[r14], bp
	mov	WORD PTR 1068[r14], cx
	lea	rcx, 1024[r14]
	mov	QWORD PTR 1848[r14], rax
	mov	BYTE PTR 1074[r14], 16
	mov	BYTE PTR 1077[r14], 0
	mov	DWORD PTR 1064[r14], 12582942
	mov	DWORD PTR 1080[r14], -1
	movd	DWORD PTR 1040[r14], xmm6
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR 1848[r14]
	xor	r8d, r8d
	mov	WORD PTR 624[r14], bp
	mov	WORD PTR 620[r14], r8w
	lea	rcx, 576[r14]
	mov	QWORD PTR 584[r14], rax
	add	rax, 512
	mov	QWORD PTR 1848[r14], rax
	mov	DWORD PTR 592[r14], 50462720
	mov	BYTE PTR 626[r14], 16
	mov	BYTE PTR 629[r14], 0
	mov	QWORD PTR 608[r14], 0
	mov	DWORD PTR 616[r14], 30
	mov	DWORD PTR 632[r14], -1
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR 1848[r14]
	xor	r9d, r9d
	mov	WORD PTR 688[r14], bp
	mov	ebp, DWORD PTR .LC14[rip]
	mov	WORD PTR 684[r14], r9w
	lea	rcx, 640[r14]
	mov	QWORD PTR 648[r14], rax
	add	rax, 1536
	mov	DWORD PTR 656[r14], ebp
	mov	QWORD PTR 1848[r14], rax
	mov	BYTE PTR 690[r14], 16
	mov	BYTE PTR 693[r14], 0
	mov	QWORD PTR 672[r14], r15
	mov	DWORD PTR 680[r14], 65516
	mov	DWORD PTR 696[r14], -1
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR 1848[r14]
	xor	r11d, r11d
	mov	r10d, -255
	mov	WORD PTR 752[r14], r10w
	lea	rcx, 704[r14]
	mov	QWORD PTR 712[r14], rax
	add	rax, 832
	mov	WORD PTR 748[r14], r11w
	mov	DWORD PTR 720[r14], ebp
	mov	QWORD PTR 1848[r14], rax
	mov	BYTE PTR 754[r14], 16
	mov	BYTE PTR 757[r14], 0
	mov	QWORD PTR 736[r14], r15
	mov	DWORD PTR 744[r14], 336
	mov	DWORD PTR 760[r14], -1
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR 1848[r14]
	mov	DWORD PTR 784[r14], ebp
	lea	rcx, 768[r14]
	mov	BYTE PTR 818[r14], 16
	lea	rbp, gUnknown_080E179C[rip]
	mov	QWORD PTR 776[r14], rax
	add	rax, 1024
	mov	QWORD PTR 1848[r14], rax
	mov	eax, -254
	mov	WORD PTR 816[r14], ax
	xor	eax, eax
	mov	BYTE PTR 821[r14], 0
	mov	QWORD PTR 800[r14], r15
	mov	DWORD PTR 808[r14], 336
	mov	WORD PTR 812[r14], ax
	mov	DWORD PTR 824[r14], -1
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR 1848[r14]
	mov	BYTE PTR 373[r14], 1
	mov	QWORD PTR 352[r14], r15
	mov	QWORD PTR 328[r14], rax
	add	rax, 5376
	mov	QWORD PTR 1848[r14], rax
	movsx	eax, BYTE PTR [r12]
	mov	DWORD PTR 360[r14], 4194304
	mov	DWORD PTR 376[r14], -1
	add	eax, 25
	cdqe
	movzx	ecx, WORD PTR 4[r13+rax*8]
	movzx	eax, BYTE PTR 6[r13+rax*8]
	mov	BYTE PTR 368[r14], al
	xor	eax, eax
	mov	WORD PTR 336[r14], ax
	mov	eax, 4351
	mov	WORD PTR 369[r14], ax
	xor	eax, eax
	mov	WORD PTR 338[r14], cx
	lea	rcx, 320[r14]
	mov	WORD PTR 364[r14], ax
	call	UpdateSpriteAnimation
	lea	rax, 57344[rsi]
	xor	ecx, ecx
	xor	edx, edx
	mov	QWORD PTR 120[r14], rax
	movzx	eax, WORD PTR 0[rbp+rdi*2]
	mov	WORD PTR 162[r14], cx
	lea	rcx, 96[r14]
	mov	QWORD PTR 104[r14], rsi
	mov	WORD PTR 114[r14], dx
	mov	DWORD PTR 140[r14], 0
	mov	WORD PTR 144[r14], ax
	mov	QWORD PTR 146[r14], 0
	mov	DWORD PTR 154[r14], 2097184
	mov	BYTE PTR 158[r14], 0
	call	DrawBackground
	cmp	ebx, 2
	jne	.L15
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	ecx, 8
	mov	WORD PTR 4[rax], cx
.L15:
	lea	rax, 16384[rsi]
	mov	ebx, ebx
	mov	edx, 1
	add	rsi, 49152
	mov	QWORD PTR 8[r14], rax
	xor	eax, eax
	mov	rcx, r14
	mov	WORD PTR 18[r14], ax
	movzx	eax, WORD PTR 0[rbp+rbx*2]
	mov	WORD PTR 66[r14], dx
	mov	WORD PTR 48[r14], ax
	mov	QWORD PTR 24[r14], rsi
	mov	DWORD PTR 44[r14], 0
	mov	QWORD PTR 50[r14], 0
	mov	DWORD PTR 58[r14], 2097184
	mov	BYTE PTR 62[r14], 0
	call	DrawBackground
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rax]
	movsx	rax, BYTE PTR [r12]
	cmp	BYTE PTR 12[rdx+rax], 0
	js	.L7
	lea	rdx, 48[rsp]
	mov	r9d, -2080374776
	mov	ecx, 3
	mov	r8, QWORD PTR .refptr.gBgPalette[rip]
	movdqu	xmm1, XMMWORD PTR gUnknown_080E1AF4[rip]
	movdqu	xmm2, XMMWORD PTR gUnknown_080E1AF4[rip+16]
	add	r8, 64
	movups	XMMWORD PTR 48[rsp], xmm1
	movups	XMMWORD PTR 64[rsp], xmm2
	call	DmaSet
	nop
.L7:
	movups	xmm6, XMMWORD PTR 80[rsp]
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
.L29:
	mov	QWORD PTR 392[r14], rax
	xor	r8d, r8d
	lea	rax, 66304[rsi]
	lea	rcx, 384[r14]
	mov	QWORD PTR 1848[r14], rax
	xor	r13d, r13d
	movabs	rax, 56294995342131200
	mov	WORD PTR 428[r14], r8w
	mov	WORD PTR 432[r14], bp
	mov	DWORD PTR 400[r14], 51314688
	mov	BYTE PTR 434[r14], 16
	mov	BYTE PTR 437[r14], 1
	mov	QWORD PTR 416[r14], rax
	mov	DWORD PTR 424[r14], 8388708
	mov	DWORD PTR 440[r14], -1
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR 1848[r14]
	xor	r9d, r9d
	xor	r11d, r11d
	mov	r10d, 4351
	mov	WORD PTR 464[r14], r9w
	movabs	rdx, 57139420272263168
	lea	rcx, 288[rax]
	mov	QWORD PTR 456[r14], rax
	add	rax, 1248
	mov	QWORD PTR 520[r14], rcx
	lea	rcx, 512[r14]
	mov	WORD PTR 497[r14], r10w
	mov	BYTE PTR 501[r14], 0
	mov	QWORD PTR 480[r14], rdx
	mov	DWORD PTR 488[r14], 4259820
	mov	WORD PTR 492[r14], r11w
	mov	DWORD PTR 504[r14], -1
	mov	QWORD PTR 1848[r14], rax
	mov	WORD PTR 560[r14], bp
	mov	DWORD PTR 528[r14], 53018624
	mov	BYTE PTR 562[r14], 16
	mov	BYTE PTR 565[r14], 2
	mov	QWORD PTR 544[r14], 0
	mov	DWORD PTR 552[r14], 4194304
	mov	WORD PTR 556[r14], r13w
	mov	DWORD PTR 568[r14], -1
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR 1848[r14]
	movsx	rcx, BYTE PTR [r12]
	jmp	.L14
	.seh_endproc
	.p2align 4
	.globl	sub_80934B8
	.def	sub_80934B8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80934B8
sub_80934B8:
	.seh_endprologue
	movzx	edx, BYTE PTR 1110[rcx]
	mov	r8d, DWORD PTR 1796[rcx]
	mov	rax, rcx
	mov	rcx, rdx
	movzx	r9d, BYTE PTR 1113[rax]
	lea	r9, [rdx+r9*8]
	lea	rdx, gUnknown_080E1944[rip]
	movzx	edx, WORD PTR [rdx+r9*2]
	mov	r9, QWORD PTR .refptr.gBgScrollRegs[rip]
	movsx	r9d, WORD PTR 6[r9]
	sub	edx, r9d
	sal	edx, 8
	cmp	r8d, edx
	jge	.L31
	test	cl, cl
	je	.L48
.L32:
	cmp	cl, 1
	je	.L37
	mov	r8, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [r8], 1
	je	.L49
	cmp	cl, 4
	jne	.L37
.L36:
	movzx	r8d, WORD PTR 1120[rax]
	test	r8b, 1
	je	.L38
	movzx	edx, BYTE PTR 1116[rax]
	cmp	dl, 34
	ja	.L39
	add	edx, 1
	mov	BYTE PTR 1116[rax], dl
.L39:
	movzx	edx, dl
	lea	rcx, gUnknown_080E1B30[rip]
	movq	xmm1, QWORD PTR .LC20[rip]
	movq	xmm0, QWORD PTR [rcx+rdx*8]
	paddd	xmm0, xmm1
	movq	QWORD PTR 1792[rax], xmm0
.L38:
	movzx	ecx, WORD PTR 1118[rax]
	movzx	edx, WORD PTR 1088[rax]
	cmp	r8w, 49
	ja	.L40
	add	ecx, 4
	add	edx, 3
	mov	WORD PTR 1118[rax], cx
	mov	WORD PTR 1088[rax], dx
	cmp	r8w, 1
	jne	.L30
	mov	ecx, 212
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L31:
	test	cl, cl
	jne	.L32
.L37:
	mov	DWORD PTR 1796[rax], edx
	mov	DWORD PTR 1792[rax], 30720
.L30:
	ret
	.p2align 4,,10
	.p2align 3
.L48:
	add	r8d, 800
	mov	DWORD PTR 1792[rax], 30720
	mov	DWORD PTR 1796[rax], r8d
	ret
	.p2align 4,,10
	.p2align 3
.L49:
	cmp	cl, 5
	jne	.L37
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L40:
	add	ecx, 8
	add	edx, 20
	mov	WORD PTR 1118[rax], cx
	mov	WORD PTR 1088[rax], dx
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8093638
	.def	sub_8093638;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8093638
sub_8093638:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	edx, 20
	movzx	eax, BYTE PTR 1114[rcx]
	sub	edx, eax
	test	edx, edx
	jle	.L50
	movsx	rdx, edx
	lea	rax, 1132[rcx]
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	lea	rcx, gUnknown_080E1964[rip]
	lea	rdx, [rdx+rdx*4]
	lea	r9, [rax+rdx*4]
	jmp	.L56
	.p2align 4,,10
	.p2align 3
.L59:
	mov	DWORD PTR 16[rax], 0
	sar	edx, 8
	add	edx, 256
.L53:
	movsx	rdx, edx
	movsx	edx, WORD PTR [r8+rdx*2]
	mov	DWORD PTR [rax], edx
	mov	edx, DWORD PTR 12[rax]
	mov	r10d, DWORD PTR 4[rcx]
	lea	ebx, [rdx+r10*8]
	cmp	ebx, 262143
	jg	.L57
	movzx	edx, bh
	sal	edx, 2
.L55:
	movsx	rdx, edx
	mov	DWORD PTR 12[rax], ebx
	add	rax, 20
	add	rcx, 20
	movzx	edx, WORD PTR [r8+rdx*2]
	sar	dx, 6
	movsx	edx, dx
	sal	edx, 3
	mov	DWORD PTR -16[rax], edx
	cmp	rax, r9
	je	.L50
.L56:
	mov	r10d, DWORD PTR [rcx]
	mov	edx, DWORD PTR 8[rax]
	lea	edx, [rdx+r10*2]
	mov	DWORD PTR 8[rax], edx
	cmp	edx, 131072
	jbe	.L59
	mov	DWORD PTR 16[rax], 1
	cmp	edx, 262143
	jle	.L60
	mov	DWORD PTR 8[rax], 0
	mov	edx, 256
	jmp	.L53
	.p2align 4,,10
	.p2align 3
.L57:
	xor	edx, edx
	xor	ebx, ebx
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L50:
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L60:
	sar	edx, 8
	add	edx, 256
	jmp	.L53
	.seh_endproc
	.p2align 4
	.globl	sub_8093740
	.def	sub_8093740;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8093740
sub_8093740:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	edx, 13
	movzx	r8d, BYTE PTR 1114[rcx]
	shr	r8b
	movzx	r8d, r8b
	sub	edx, r8d
	test	edx, edx
	jle	.L61
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	rsi, QWORD PTR .refptr.gPseudoRandom[rip]
	movsx	rdx, edx
	xor	ebx, ebx
	mov	r8d, 190
	lea	rdx, [rdx+rdx*4]
	mov	r10, QWORD PTR .refptr.gSineTable[rip]
	movsx	eax, WORD PTR 6[rax]
	mov	r9d, DWORD PTR [rsi]
	sub	r8d, eax
	lea	rax, 1532[rcx]
	sal	r8d, 8
	lea	r11, [rax+rdx*4]
	jmp	.L69
	.p2align 4,,10
	.p2align 3
.L78:
	cmp	edx, -10
	jl	.L72
	mov	ecx, edx
	shr	ecx, 2
	and	ecx, 992
.L67:
	mov	DWORD PTR [rax], edx
	movsx	rdx, ecx
	movzx	ecx, WORD PTR [r10+rdx*2]
	sar	cx, 6
	movsx	edx, cx
	mov	edi, edx
	neg	edi
	test	cx, cx
	mov	ecx, r8d
	cmovs	edx, edi
	add	rax, 20
	sal	edx, 3
	sub	ecx, edx
	mov	DWORD PTR -16[rax], ecx
	cmp	rax, r11
	je	.L77
.L69:
	cmp	DWORD PTR 4[rax], r8d
	je	.L64
	mov	edx, DWORD PTR 16[rax]
	sal	edx, 7
.L65:
	add	edx, DWORD PTR [rax]
	cmp	edx, 65536
	jle	.L78
	mov	edx, -10
	mov	ecx, 992
	jmp	.L67
	.p2align 4,,10
	.p2align 3
.L64:
	imul	r9d, r9d, 1663525
	add	r9d, 1013904223
	js	.L79
	mov	DWORD PTR 16[rax], 1
	mov	edx, 128
	mov	ebx, 1
	jmp	.L65
	.p2align 4,,10
	.p2align 3
.L72:
	mov	edx, 65536
	xor	ecx, ecx
	jmp	.L67
	.p2align 4,,10
	.p2align 3
.L79:
	mov	DWORD PTR 16[rax], -1
	mov	edx, -128
	mov	ebx, 1
	jmp	.L65
	.p2align 4,,10
	.p2align 3
.L77:
	test	bl, bl
	je	.L61
	mov	DWORD PTR [rsi], r9d
.L61:
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8093868
	.def	sub_8093868;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8093868
sub_8093868:
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
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	movsx	eax, BYTE PTR [rax]
	movzx	edx, BYTE PTR 1110[rcx]
	mov	rbx, rcx
	cmp	al, 1
	je	.L130
	cmp	dl, 3
	ja	.L131
	lea	rsi, 192[rcx]
	je	.L132
.L88:
	lea	rcx, gUnknown_080E1C48[rip]
	movzx	edx, BYTE PTR [rcx+rdx]
	add	eax, edx
.L128:
	lea	rdx, gUnknown_080E17A4[rip]
	cdqe
	movzx	ecx, WORD PTR 4[rdx+rax*8]
	movzx	eax, BYTE PTR 6[rdx+rax*8]
	mov	WORD PTR 210[rbx], cx
.L129:
	mov	BYTE PTR 240[rbx], al
	mov	eax, DWORD PTR 1792[rbx]
	sar	eax, 8
	mov	WORD PTR 230[rbx], ax
	mov	eax, DWORD PTR 1796[rbx]
	sar	eax, 8
	mov	WORD PTR 232[rbx], ax
.L84:
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	movzx	edx, BYTE PTR 1110[rbx]
	movsx	eax, BYTE PTR [rax]
	cmp	al, 1
	je	.L133
	cmp	dl, 4
	jbe	.L94
.L87:
	add	eax, 25
	lea	rdx, gUnknown_080E17A4[rip]
	lea	rsi, 320[rbx]
	cdqe
	movzx	ecx, WORD PTR 4[rdx+rax*8]
	movzx	eax, BYTE PTR 6[rdx+rax*8]
	mov	WORD PTR 338[rbx], cx
.L95:
	mov	BYTE PTR 368[rbx], al
	mov	eax, DWORD PTR 1792[rbx]
	mov	rcx, rsi
	sar	eax, 8
	mov	WORD PTR 358[rbx], ax
	mov	eax, DWORD PTR 1796[rbx]
	sar	eax, 8
	mov	WORD PTR 360[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	movzx	edx, BYTE PTR 1110[rbx]
.L94:
	test	dl, dl
	je	.L96
	cmp	BYTE PTR 1115[rbx], 0
	je	.L134
.L96:
	movzx	edx, BYTE PTR 1114[rbx]
	mov	eax, edx
	cmp	edx, 20
	jge	.L98
	lea	r14, 1132[rbx]
	lea	rdi, gUnknown_080E1964[rip+12]
	xor	r15d, r15d
	xor	r10d, r10d
	mov	ecx, 526
	mov	r13d, 20
	lea	r12, gUnknown_080E17A4[rip]
	jmp	.L101
	.p2align 4,,10
	.p2align 3
.L135:
	or	dh, 4
.L100:
	sal	rax, 6
	add	r15d, 1
	add	ebp, 1
	add	r14, 20
	add	rax, rbx
	mov	rcx, QWORD PTR .refptr.gBgScrollRegs[rip]
	add	rdi, 20
	mov	DWORD PTR 864[rax], edx
	movzx	edx, WORD PTR -19[r14]
	add	dx, WORD PTR -20[rdi]
	mov	WORD PTR 870[rax], dx
	mov	edx, DWORD PTR -16[rdi]
	sub	dx, WORD PTR 6[rcx]
	add	dx, WORD PTR -15[r14]
	mov	rcx, rsi
	mov	WORD PTR 872[rax], dx
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	movzx	ecx, BYTE PTR 1114[rbx]
	mov	edx, r13d
	sub	edx, ecx
	mov	eax, ecx
	cmp	edx, r15d
	jle	.L98
	and	ebp, 1
	lea	rax, 36[rbp]
	movzx	ecx, WORD PTR 4[r12+rax*8]
	movzx	r10d, BYTE PTR 6[r12+rax*8]
.L101:
	mov	eax, r15d
	mov	ebp, r15d
	and	eax, 1
	lea	rsi, 13[rax]
	mov	eax, r15d
	and	eax, 1
	sal	rsi, 6
	mov	rdx, rax
	add	rsi, rbx
	sal	rdx, 6
	add	rdx, rbx
	mov	WORD PTR 850[rdx], cx
	mov	BYTE PTR 880[rdx], r10b
	mov	r10d, DWORD PTR 16[r14]
	mov	edx, DWORD PTR 864[rdx]
	test	r10d, r10d
	jne	.L135
	and	dh, -5
	jmp	.L100
	.p2align 4,,10
	.p2align 3
.L131:
	cmp	dl, 4
	jne	.L87
.L86:
	mov	eax, DWORD PTR 1796[rbx]
	mov	edx, DWORD PTR 1792[rbx]
	lea	rsi, 256[rbx]
	mov	rcx, rsi
	sar	eax, 8
	sar	edx, 8
	mov	WORD PTR 296[rbx], ax
	movzx	eax, ax
	mov	WORD PTR 294[rbx], dx
	sal	rax, 16
	movzx	edx, dx
	or	rax, rdx
	movzx	edx, WORD PTR 1118[rbx]
	sal	rax, 16
	or	rax, rdx
	sal	rax, 16
	or	rax, rdx
	lea	rdx, 1088[rbx]
	mov	QWORD PTR 1090[rbx], rax
	call	TransformSprite
	jmp	.L84
	.p2align 4,,10
	.p2align 3
.L98:
	shr	al
	movzx	eax, al
	cmp	eax, 13
	jge	.L102
	lea	r14, 1532[rbx]
	xor	r13d, r13d
	xor	r8d, r8d
	mov	ecx, 516
	mov	r12d, 13
	lea	rbp, gUnknown_080E17A4[rip]
	jmp	.L105
	.p2align 4,,10
	.p2align 3
.L136:
	or	dh, 4
.L104:
	sal	rax, 6
	mov	rcx, r15
	add	r13d, 1
	add	esi, 1
	add	rax, rbx
	add	r14, 20
	mov	DWORD PTR 992[rax], edx
	mov	edx, DWORD PTR -20[r14]
	sar	edx, 8
	mov	WORD PTR 998[rax], dx
	mov	edx, DWORD PTR -16[r14]
	sar	edx, 8
	mov	WORD PTR 1000[rax], dx
	call	UpdateSpriteAnimation
	mov	rcx, r15
	call	DisplaySprite
	movzx	eax, BYTE PTR 1114[rbx]
	mov	edx, r12d
	shr	al
	movzx	eax, al
	sub	edx, eax
	cmp	edx, r13d
	jle	.L102
	and	esi, 1
	lea	rax, 38[rsi]
	movzx	ecx, WORD PTR 4[rbp+rax*8]
	movzx	r8d, BYTE PTR 6[rbp+rax*8]
.L105:
	mov	eax, r13d
	mov	esi, r13d
	and	eax, 1
	lea	r15, 15[rax]
	mov	eax, r13d
	and	eax, 1
	sal	r15, 6
	mov	rdx, rax
	add	r15, rbx
	sal	rdx, 6
	add	rdx, rbx
	mov	WORD PTR 978[rdx], cx
	mov	BYTE PTR 1008[rdx], r8b
	mov	r9d, DWORD PTR 16[r14]
	mov	edx, DWORD PTR 992[rdx]
	test	r9d, r9d
	jg	.L136
	and	dh, -5
	jmp	.L104
	.p2align 4,,10
	.p2align 3
.L102:
	movzx	eax, WORD PTR 1128[rbx]
	test	ax, ax
	jg	.L137
	lea	edx, 29[rax]
	sub	eax, 1
	cmp	dx, 30
	mov	edx, 50
	cmovnb	eax, edx
.L107:
	mov	rdi, QWORD PTR .refptr.gSelectedCharacter[rip]
	mov	WORD PTR 1128[rbx], ax
	movzx	eax, BYTE PTR 1110[rbx]
	cmp	BYTE PTR [rdi], 1
	je	.L138
	cmp	al, 4
	jbe	.L80
.L109:
	mov	eax, DWORD PTR 1816[rbx]
	mov	edx, 781
	mov	BYTE PTR 752[rbx], 1
	lea	rsi, 704[rbx]
	mov	WORD PTR 722[rbx], dx
	mov	rcx, rsi
	mov	WORD PTR 742[rbx], ax
	mov	eax, DWORD PTR 1820[rbx]
	sar	eax, 8
	mov	WORD PTR 744[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	lea	rsi, 768[rbx]
	call	DisplaySprite
	mov	eax, DWORD PTR 1824[rbx]
	mov	ecx, 781
	mov	BYTE PTR 816[rbx], 2
	mov	WORD PTR 786[rbx], cx
	mov	rcx, rsi
	mov	WORD PTR 806[rbx], ax
	mov	eax, DWORD PTR 1828[rbx]
	sar	eax, 8
	mov	WORD PTR 808[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rax], 1
	je	.L113
.L80:
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
.L137:
	mov	eax, DWORD PTR 1808[rbx]
	mov	r8d, 781
	mov	BYTE PTR 688[rbx], 0
	lea	rsi, 640[rbx]
	mov	WORD PTR 658[rbx], r8w
	mov	rcx, rsi
	mov	WORD PTR 678[rbx], ax
	mov	eax, DWORD PTR 1812[rbx]
	sar	eax, 8
	mov	WORD PTR 680[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	movzx	eax, WORD PTR 1128[rbx]
	sub	eax, 1
	jmp	.L107
	.p2align 4,,10
	.p2align 3
.L138:
	cmp	al, 5
	ja	.L109
.L113:
	movzx	eax, BYTE PTR 1112[rbx]
	lea	rdx, gUnknown_080E1C55[rip]
	lea	rsi, gUnknown_080E17A4[rip]
	lea	rdi, 384[rbx]
	movzx	eax, BYTE PTR [rdx+rax]
	mov	rcx, rdi
	movzx	edx, WORD PTR 4[rsi+rax*8]
	movzx	eax, BYTE PTR 6[rsi+rax*8]
	mov	BYTE PTR 432[rbx], al
	mov	eax, DWORD PTR 1800[rbx]
	mov	WORD PTR 402[rbx], dx
	mov	WORD PTR 422[rbx], ax
	mov	eax, DWORD PTR 1804[rbx]
	sar	eax, 8
	mov	WORD PTR 424[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	call	DisplaySprite
	movzx	eax, BYTE PTR 1110[rbx]
	cmp	al, 5
	jbe	.L110
	mov	eax, 809
	mov	BYTE PTR 560[rbx], 0
	lea	rdi, 512[rbx]
	mov	WORD PTR 530[rbx], ax
	mov	eax, DWORD PTR 1792[rbx]
	and	DWORD PTR 544[rbx], -1025
	sar	eax, 8
	mov	WORD PTR 550[rbx], ax
	mov	eax, DWORD PTR 1796[rbx]
	sar	eax, 8
	mov	WORD PTR 552[rbx], ax
.L115:
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L130:
	cmp	dl, 4
	ja	.L139
	lea	rsi, 192[rcx]
	cmp	dl, 2
	jbe	.L88
	lea	rcx, gUnknown_080E1C4E[rip]
	lea	rax, gUnknown_080E17A4[rip]
	movzx	edx, BYTE PTR [rcx+rdx]
	movzx	ecx, WORD PTR 4[rax+rdx*8]
	movzx	eax, BYTE PTR 6[rax+rdx*8]
	mov	WORD PTR 210[rbx], cx
	jmp	.L129
	.p2align 4,,10
	.p2align 3
.L133:
	cmp	dl, 5
	jbe	.L94
	jmp	.L83
	.p2align 4,,10
	.p2align 3
.L139:
	cmp	dl, 5
	je	.L86
.L83:
	mov	edi, 808
	lea	rsi, 320[rbx]
	xor	eax, eax
	mov	WORD PTR 338[rbx], di
	jmp	.L95
	.p2align 4,,10
	.p2align 3
.L132:
	add	eax, 15
	jmp	.L128
	.p2align 4,,10
	.p2align 3
.L110:
	add	rax, 43
	lea	rdi, 448[rbx]
	or	DWORD PTR 480[rbx], 1024
	movzx	edx, WORD PTR 4[rsi+rax*8]
	movzx	eax, BYTE PTR 6[rsi+rax*8]
	mov	BYTE PTR 496[rbx], al
	mov	eax, DWORD PTR 1792[rbx]
	mov	WORD PTR 466[rbx], dx
	sar	eax, 8
	sub	eax, 20
	mov	WORD PTR 486[rbx], ax
	mov	eax, DWORD PTR 1796[rbx]
	sar	eax, 8
	sub	eax, 20
	mov	WORD PTR 488[rbx], ax
	jmp	.L115
	.p2align 4,,10
	.p2align 3
.L134:
	movzx	eax, WORD PTR 232[rbx]
	movzx	edx, WORD PTR 230[rbx]
	mov	r11d, 770
	mov	BYTE PTR 624[rbx], 0
	mov	WORD PTR 594[rbx], r11w
	lea	rsi, 576[rbx]
	or	DWORD PTR 608[rbx], 1024
	add	eax, 25
	mov	rcx, rsi
	sal	eax, 16
	or	eax, edx
	mov	DWORD PTR 614[rbx], eax
	call	DisplaySprite
	movzx	eax, WORD PTR 232[rbx]
	movzx	edx, WORD PTR 230[rbx]
	mov	rcx, rsi
	and	DWORD PTR 608[rbx], -1025
	add	eax, 25
	sal	eax, 16
	or	eax, edx
	mov	DWORD PTR 614[rbx], eax
	call	UpdateSpriteAnimation
	cmp	eax, 1
	je	.L97
	mov	BYTE PTR 1115[rbx], 1
.L97:
	mov	rcx, rsi
	call	DisplaySprite
	jmp	.L96
	.seh_endproc
	.p2align 4
	.globl	sub_80932C8
	.def	sub_80932C8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80932C8
sub_80932C8:
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
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	edx, 1
	mov	ecx, 16383
	mov	rbp, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 1100[rbx], dx
	movzx	edx, WORD PTR 2[rbp]
	lea	rdi, 1098[rbx]
	mov	WORD PTR 1106[rbx], cx
	mov	eax, DWORD PTR 1844[rbx]
	cmp	dx, 75
	jg	.L141
	add	eax, 768
	mov	DWORD PTR 1844[rbx], eax
	sar	eax, 8
	mov	WORD PTR 2[rbp], ax
.L143:
	mov	eax, DWORD PTR 1836[rbx]
	add	eax, 384
	cmp	WORD PTR 6[rbp], 65
	mov	DWORD PTR 1836[rbx], eax
	jg	.L144
	sar	eax, 8
	mov	WORD PTR 6[rbp], ax
.L144:
	mov	rcx, rbx
	call	sub_80934B8
	mov	rcx, rbx
	call	sub_8093638
	mov	rcx, rbx
	call	sub_8093740
	movsx	edx, WORD PTR 6[rbp]
	mov	eax, 194
	mov	DWORD PTR 1800[rbx], 120
	sub	eax, edx
	sal	eax, 8
	mov	DWORD PTR 1804[rbx], eax
	movabs	rax, 10995116277880
	mov	QWORD PTR 1808[rbx], rax
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rax], 1
	je	.L145
	cmp	BYTE PTR 1110[rbx], 5
	je	.L146
.L147:
	mov	rcx, rbx
	call	sub_8093868
	mov	rcx, rdi
	call	UpdateScreenFade
	cmp	al, 1
	jne	.L140
	xor	eax, eax
	lea	rdi, sub_8093F54[rip]
	mov	WORD PTR 1102[rbx], ax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdi
.L140:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L141:
	add	eax, 384
	mov	DWORD PTR 1844[rbx], eax
	cmp	dx, 95
	jg	.L143
	sar	eax, 8
	mov	WORD PTR 2[rbp], ax
	jmp	.L143
	.p2align 4,,10
	.p2align 3
.L145:
	cmp	BYTE PTR 1110[rbx], 6
	jne	.L147
.L146:
	mov	DWORD PTR 1816[rbx], 120
	mov	eax, DWORD PTR 1820[rbx]
	cmp	eax, 33280
	jle	.L150
	sub	eax, 768
	mov	DWORD PTR 1820[rbx], eax
.L150:
	mov	DWORD PTR 1824[rbx], 120
	mov	eax, DWORD PTR 1828[rbx]
	cmp	eax, 38400
	jle	.L147
	sub	eax, 768
	mov	DWORD PTR 1828[rbx], eax
	jmp	.L147
	.seh_endproc
	.p2align 4
	.globl	sub_809334C
	.def	sub_809334C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_809334C
sub_809334C:
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
	mov	rsi, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	rax, QWORD PTR [rdi]
	movzx	edx, WORD PTR 2[rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	eax, DWORD PTR 1844[rbx]
	cmp	dx, 75
	jg	.L156
	add	eax, 768
	mov	DWORD PTR 1844[rbx], eax
	sar	eax, 8
	mov	WORD PTR 2[rsi], ax
.L158:
	mov	eax, DWORD PTR 1836[rbx]
	add	eax, 384
	cmp	WORD PTR 6[rsi], 65
	mov	DWORD PTR 1836[rbx], eax
	jg	.L159
	sar	eax, 8
	mov	WORD PTR 6[rsi], ax
.L159:
	mov	rcx, rbx
	call	sub_80934B8
	mov	rcx, rbx
	call	sub_8093638
	mov	rcx, rbx
	call	sub_8093740
	movsx	edx, WORD PTR 6[rsi]
	mov	eax, 194
	mov	DWORD PTR 1800[rbx], 120
	sub	eax, edx
	sal	eax, 8
	mov	DWORD PTR 1804[rbx], eax
	movabs	rax, 10995116277880
	mov	QWORD PTR 1808[rbx], rax
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rax], 1
	je	.L160
	cmp	BYTE PTR 1110[rbx], 5
	je	.L161
.L162:
	mov	rcx, rbx
	call	sub_8093868
	movzx	eax, BYTE PTR 1113[rbx]
	movzx	r8d, BYTE PTR 1110[rbx]
	mov	rcx, rax
	lea	r9, [r8+rax*8]
	lea	rax, gUnknown_080E1944[rip]
	mov	rdx, r8
	movzx	eax, WORD PTR [rax+r9*2]
	movsx	r9d, WORD PTR 6[rsi]
	sub	eax, r9d
	sal	eax, 8
	cmp	DWORD PTR 1796[rbx], eax
	je	.L166
	test	cl, cl
	je	.L187
	cmp	r8b, 4
	jbe	.L155
	cmp	cl, 1
	je	.L170
.L155:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L156:
	add	eax, 384
	mov	DWORD PTR 1844[rbx], eax
	cmp	dx, 95
	jg	.L158
	sar	eax, 8
	mov	WORD PTR 2[rsi], ax
	jmp	.L158
	.p2align 4,,10
	.p2align 3
.L187:
	cmp	r8b, 3
	jbe	.L155
.L168:
	cmp	dl, 5
	ja	.L175
	movzx	eax, WORD PTR 1120[rbx]
	test	ax, ax
	jne	.L176
	lea	rax, gUnknown_080E1B14[rip]
	add	edx, 1
	movzx	eax, WORD PTR [rax+r8*2]
	mov	BYTE PTR 1110[rbx], dl
	mov	WORD PTR 1120[rbx], ax
	jmp	.L155
	.p2align 4,,10
	.p2align 3
.L160:
	cmp	BYTE PTR 1110[rbx], 6
	jne	.L162
.L161:
	mov	DWORD PTR 1816[rbx], 120
	mov	eax, DWORD PTR 1820[rbx]
	cmp	eax, 33280
	jle	.L165
	sub	eax, 768
	mov	DWORD PTR 1820[rbx], eax
.L165:
	mov	DWORD PTR 1824[rbx], 120
	mov	eax, DWORD PTR 1828[rbx]
	cmp	eax, 38400
	jle	.L162
	sub	eax, 768
	mov	DWORD PTR 1828[rbx], eax
	jmp	.L162
	.p2align 4,,10
	.p2align 3
.L166:
	test	cl, cl
	je	.L168
	cmp	cl, 1
	je	.L170
.L175:
	mov	rax, QWORD PTR [rdi]
	lea	rdi, sub_80932C8[rip]
	mov	QWORD PTR 40[rax], rdi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L170:
	cmp	dl, 6
	ja	.L175
	movzx	eax, WORD PTR 1120[rbx]
	test	ax, ax
	je	.L188
.L176:
	sub	eax, 1
	mov	WORD PTR 1120[rbx], ax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L188:
	lea	rax, gUnknown_080E1B14[rip]
	movzx	eax, WORD PTR 14[rax+r8*2]
	mov	WORD PTR 1120[rbx], ax
	lea	eax, 1[rdx]
	mov	BYTE PTR 1110[rbx], al
	cmp	al, 1
	je	.L189
	sub	edx, 2
	cmp	dl, 1
	jbe	.L190
	cmp	al, 4
	jbe	.L155
	mov	BYTE PTR 1112[rbx], 4
	jmp	.L155
	.p2align 4,,10
	.p2align 3
.L189:
	mov	BYTE PTR 1112[rbx], 1
	jmp	.L155
	.p2align 4,,10
	.p2align 3
.L190:
	add	BYTE PTR 1112[rbx], 1
	jmp	.L155
	.seh_endproc
	.p2align 4
	.globl	sub_8093EDC
	.def	sub_8093EDC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8093EDC
sub_8093EDC:
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
	mov	rdi, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	rax, QWORD PTR [rsi]
	movzx	edx, WORD PTR 2[rdi]
	mov	rbx, QWORD PTR 24[rax]
	mov	eax, DWORD PTR 1844[rbx]
	cmp	dx, 75
	jg	.L192
	add	eax, 768
	mov	DWORD PTR 1844[rbx], eax
	sar	eax, 8
	mov	WORD PTR 2[rdi], ax
.L194:
	mov	eax, DWORD PTR 1836[rbx]
	add	eax, 384
	cmp	WORD PTR 6[rdi], 65
	mov	DWORD PTR 1836[rbx], eax
	jg	.L195
	sar	eax, 8
	mov	WORD PTR 6[rdi], ax
.L195:
	mov	rcx, rbx
	call	sub_80934B8
	mov	rcx, rbx
	call	sub_8093638
	mov	rcx, rbx
	call	sub_8093740
	movsx	edx, WORD PTR 6[rdi]
	mov	eax, 194
	mov	DWORD PTR 1800[rbx], 120
	sub	eax, edx
	sal	eax, 8
	mov	DWORD PTR 1804[rbx], eax
	movabs	rax, 10995116277880
	mov	QWORD PTR 1808[rbx], rax
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rax], 1
	je	.L196
	cmp	BYTE PTR 1110[rbx], 5
	je	.L197
.L198:
	mov	rcx, rbx
	call	sub_8093868
	lea	rcx, 1098[rbx]
	call	UpdateScreenFade
	cmp	al, 1
	jne	.L191
	xor	eax, eax
	mov	WORD PTR 1102[rbx], ax
	mov	rax, QWORD PTR [rsi]
	lea	rsi, sub_809334C[rip]
	mov	QWORD PTR 40[rax], rsi
.L191:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L192:
	add	eax, 384
	mov	DWORD PTR 1844[rbx], eax
	cmp	dx, 95
	jg	.L194
	sar	eax, 8
	mov	WORD PTR 2[rdi], ax
	jmp	.L194
	.p2align 4,,10
	.p2align 3
.L196:
	cmp	BYTE PTR 1110[rbx], 6
	jne	.L198
.L197:
	mov	DWORD PTR 1816[rbx], 120
	mov	eax, DWORD PTR 1820[rbx]
	cmp	eax, 33280
	jle	.L201
	sub	eax, 768
	mov	DWORD PTR 1820[rbx], eax
.L201:
	mov	DWORD PTR 1824[rbx], 120
	mov	eax, DWORD PTR 1828[rbx]
	cmp	eax, 38400
	jle	.L198
	sub	eax, 768
	mov	DWORD PTR 1828[rbx], eax
	jmp	.L198
	.seh_endproc
	.p2align 4
	.globl	sub_8093FA0
	.def	sub_8093FA0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8093FA0
sub_8093FA0:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	movzx	r8d, WORD PTR 2[rdx]
	mov	eax, DWORD PTR 1844[rcx]
	cmp	r8w, 75
	jg	.L207
	add	eax, 768
	mov	DWORD PTR 1844[rcx], eax
.L208:
	sar	eax, 8
	mov	WORD PTR 2[rdx], ax
	ret
	.p2align 4,,10
	.p2align 3
.L207:
	add	eax, 384
	mov	DWORD PTR 1844[rcx], eax
	cmp	r8w, 95
	jle	.L208
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8093FF0
	.def	sub_8093FF0;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8093FF0
sub_8093FF0:
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	eax, DWORD PTR 1836[rcx]
	add	eax, 384
	cmp	WORD PTR 6[rdx], 65
	mov	DWORD PTR 1836[rcx], eax
	jg	.L211
	sar	eax, 8
	mov	WORD PTR 6[rdx], ax
.L211:
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_809401C
	.def	sub_809401C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_809401C
sub_809401C:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	movsx	edx, WORD PTR 6[rax]
	mov	eax, 194
	sub	eax, edx
	sal	eax, 8
	mov	DWORD PTR 1800[rcx], 120
	mov	DWORD PTR 1804[rcx], eax
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8094044
	.def	sub_8094044;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8094044
sub_8094044:
	.seh_endprologue
	mov	rax, QWORD PTR .LC21[rip]
	mov	QWORD PTR 1808[rcx], rax
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_8094060
	.def	sub_8094060;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8094060
sub_8094060:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rax], 1
	movzx	edx, BYTE PTR 1110[rcx]
	je	.L216
	cmp	dl, 5
	je	.L217
.L215:
	ret
	.p2align 4,,10
	.p2align 3
.L216:
	cmp	dl, 6
	jne	.L215
.L217:
	mov	DWORD PTR 1816[rcx], 120
	mov	eax, DWORD PTR 1820[rcx]
	cmp	eax, 33280
	jle	.L215
	sub	eax, 768
	mov	DWORD PTR 1820[rcx], eax
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_80940BC
	.def	sub_80940BC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80940BC
sub_80940BC:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rax], 1
	movzx	edx, BYTE PTR 1110[rcx]
	je	.L224
	cmp	dl, 5
	je	.L225
.L223:
	ret
	.p2align 4,,10
	.p2align 3
.L224:
	cmp	dl, 6
	jne	.L223
.L225:
	mov	DWORD PTR 1824[rcx], 120
	mov	eax, DWORD PTR 1828[rcx]
	cmp	eax, 38400
	jle	.L223
	sub	eax, 768
	mov	DWORD PTR 1828[rcx], eax
	ret
	.seh_endproc
	.section .rdata,"dr"
gUnknown_080E1C55:
	.ascii " 2!\"3\0\0"
gUnknown_080E1C4E:
	.ascii "\0\5\17\36\37\24\31"
gUnknown_080E1C48:
	.ascii "\0\5\12\17\24\31"
	.align 32
gUnknown_080E1B30:
	.long	-2086
	.long	-3844
	.long	-2086
	.long	-5244
	.long	-4298
	.long	-6129
	.long	-5976
	.long	-9111
	.long	-5976
	.long	-10536
	.long	-7056
	.long	-12505
	.long	-7524
	.long	-13461
	.long	-7524
	.long	-14975
	.long	-7415
	.long	-16825
	.long	-7415
	.long	-18194
	.long	-6806
	.long	-19801
	.long	-6806
	.long	-20929
	.long	-5806
	.long	-22206
	.long	-5806
	.long	-23029
	.long	-4548
	.long	-23921
	.long	-4548
	.long	-24399
	.long	-3171
	.long	-24898
	.long	-3171
	.long	-25025
	.long	-1815
	.long	-25159
	.long	-1183
	.long	-25045
	.long	-600
	.long	-24788
	.long	-77
	.long	-24406
	.long	375
	.long	-23921
	.long	752
	.long	-23355
	.long	1048
	.long	-22731
	.long	1260
	.long	-22073
	.long	1260
	.long	-21817
	.long	1389
	.long	-21087
	.long	1389
	.long	-20767
	.long	1409
	.long	-19499
	.long	1409
	.long	-18859
	.long	1152
	.long	-17816
	.long	1152
	.long	-16536
	.long	693
	.long	-14573
	.long	0
	.long	-12013
	.align 16
gUnknown_080E1B14:
	.word	18
	.word	80
	.word	150
	.word	70
	.word	300
	.word	0
	.word	0
	.word	18
	.word	30
	.word	112
	.word	88
	.word	70
	.word	300
	.word	0
	.align 32
gUnknown_080E1AF4:
	.word	992
	.word	32400
	.word	1022
	.word	32494
	.word	9081
	.word	14133
	.word	17136
	.word	21128
	.word	23104
	.word	0
	.word	0
	.word	20478
	.word	17328
	.word	22327
	.word	25329
	.word	28298
	.align 32
gUnknown_080E1964:
	.long	298
	.long	96
	.long	1
	.long	50
	.long	170
	.long	384
	.long	32
	.long	2
	.long	180
	.long	130
	.long	480
	.long	64
	.long	0
	.long	60
	.long	115
	.long	608
	.long	32
	.long	3
	.long	130
	.long	140
	.long	576
	.long	64
	.long	1
	.long	190
	.long	120
	.long	224
	.long	64
	.long	0
	.long	50
	.long	155
	.long	256
	.long	128
	.long	0
	.long	180
	.long	140
	.long	416
	.long	96
	.long	1
	.long	80
	.long	120
	.long	224
	.long	32
	.long	2
	.long	70
	.long	150
	.long	544
	.long	96
	.long	1
	.long	70
	.long	140
	.long	352
	.long	32
	.long	2
	.long	50
	.long	160
	.long	320
	.long	96
	.long	1
	.long	170
	.long	128
	.long	224
	.long	32
	.long	2
	.long	100
	.long	130
	.long	416
	.long	96
	.long	1
	.long	160
	.long	170
	.long	256
	.long	32
	.long	2
	.long	180
	.long	150
	.long	416
	.long	96
	.long	1
	.long	70
	.long	140
	.long	352
	.long	32
	.long	2
	.long	50
	.long	160
	.long	256
	.long	96
	.long	1
	.long	170
	.long	128
	.long	224
	.long	32
	.long	2
	.long	100
	.long	130
	.long	544
	.long	96
	.long	1
	.long	160
	.long	170
	.align 32
gUnknown_080E1944:
	.word	171
	.word	177
	.word	177
	.word	177
	.word	180
	.word	140
	.word	140
	.word	0
	.word	171
	.word	177
	.word	177
	.word	177
	.word	177
	.word	180
	.word	140
	.word	140
	.align 32
gUnknown_080E17A4:
	.long	42
	.word	765
	.byte	0
	.space 1
	.long	24
	.word	766
	.byte	0
	.space 1
	.long	28
	.word	767
	.byte	0
	.space 1
	.long	35
	.word	768
	.byte	0
	.space 1
	.long	24
	.word	769
	.byte	0
	.space 1
	.long	16
	.word	765
	.byte	1
	.space 1
	.long	16
	.word	766
	.byte	1
	.space 1
	.long	24
	.word	767
	.byte	1
	.space 1
	.long	16
	.word	768
	.byte	1
	.space 1
	.long	16
	.word	769
	.byte	1
	.space 1
	.long	20
	.word	0
	.byte	0
	.space 1
	.long	16
	.word	91
	.byte	0
	.space 1
	.long	30
	.word	182
	.byte	0
	.space 1
	.long	20
	.word	273
	.byte	0
	.space 1
	.long	20
	.word	364
	.byte	0
	.space 1
	.long	30
	.word	771
	.byte	0
	.space 1
	.long	20
	.word	772
	.byte	0
	.space 1
	.long	30
	.word	773
	.byte	0
	.space 1
	.long	24
	.word	774
	.byte	0
	.space 1
	.long	24
	.word	775
	.byte	0
	.space 1
	.long	64
	.word	776
	.byte	0
	.space 1
	.long	64
	.word	777
	.byte	0
	.space 1
	.long	64
	.word	778
	.byte	0
	.space 1
	.long	64
	.word	779
	.byte	0
	.space 1
	.long	64
	.word	780
	.byte	0
	.space 1
	.long	168
	.word	804
	.byte	0
	.space 1
	.long	140
	.word	808
	.byte	0
	.space 1
	.long	210
	.word	806
	.byte	0
	.space 1
	.long	192
	.word	805
	.byte	0
	.space 1
	.long	176
	.word	807
	.byte	0
	.space 1
	.long	20
	.word	782
	.byte	0
	.space 1
	.long	20
	.word	782
	.byte	1
	.space 1
	.long	20
	.word	783
	.byte	0
	.space 1
	.long	24
	.word	784
	.byte	0
	.space 1
	.long	24
	.word	784
	.byte	1
	.space 1
	.long	16
	.word	770
	.byte	0
	.space 1
	.long	4
	.word	526
	.byte	0
	.space 1
	.long	4
	.word	517
	.byte	0
	.space 1
	.long	4
	.word	516
	.byte	0
	.space 1
	.long	4
	.word	524
	.byte	0
	.space 1
	.long	48
	.word	781
	.byte	0
	.space 1
	.long	26
	.word	781
	.byte	1
	.space 1
	.long	32
	.word	781
	.byte	2
	.space 1
	.long	9
	.word	457
	.byte	0
	.space 1
	.long	9
	.word	455
	.byte	0
	.space 1
	.long	9
	.word	460
	.byte	0
	.space 1
	.long	9
	.word	465
	.byte	0
	.space 1
	.long	9
	.word	462
	.byte	0
	.space 1
	.long	9
	.word	459
	.byte	0
	.space 1
	.long	30
	.word	809
	.byte	0
	.space 1
	.long	24
	.word	783
	.byte	1
	.space 1
	.long	24
	.word	784
	.byte	2
	.space 1
	.align 8
gUnknown_080E179C:
	.word	205
	.word	206
	.word	207
	.word	208
	.align 8
.LC1:
	.byte	0
	.byte	0
	.byte	-1
	.byte	32
	.byte	0
	.byte	0
	.byte	-1
	.byte	32
	.align 8
.LC3:
	.word	256
	.word	0
	.word	240
	.word	0
	.align 16
.LC4:
	.long	0
	.long	0
	.long	46080
	.long	46080
	.align 16
.LC5:
	.long	51200
	.long	51200
	.long	0
	.long	0
	.align 8
.LC6:
	.word	1
	.word	2
	.word	0
	.word	256
	.align 2
.LC7:
	.byte	0
	.byte	-1
	.align 4
.LC11:
	.word	0
	.word	526
	.align 4
.LC12:
	.word	0
	.word	516
	.align 4
.LC14:
	.word	0
	.word	781
	.align 8
.LC20:
	.long	30720
	.long	33280
	.align 8
.LC21:
	.long	120
	.long	2560
	.ident	"GCC: (GNU) 13-win32"
	.def	CreateCreditsCutScene;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	Random;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DrawBackground;	.scl	2;	.type	32;	.endef
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TransformSprite;	.scl	2;	.type	32;	.endef
	.def	UpdateScreenFade;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gPseudoRandom, "dr"
	.globl	.refptr.gPseudoRandom
	.linkonce	discard
.refptr.gPseudoRandom:
	.quad	gPseudoRandom
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
	.section	.rdata$.refptr.gBgPalette, "dr"
	.globl	.refptr.gBgPalette
	.linkonce	discard
.refptr.gBgPalette:
	.quad	gBgPalette
	.section	.rdata$.refptr.gLoadedSaveGame, "dr"
	.globl	.refptr.gLoadedSaveGame
	.linkonce	discard
.refptr.gLoadedSaveGame:
	.quad	gLoadedSaveGame
	.section	.rdata$.refptr.gSelectedCharacter, "dr"
	.globl	.refptr.gSelectedCharacter
	.linkonce	discard
.refptr.gSelectedCharacter:
	.quad	gSelectedCharacter
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
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
