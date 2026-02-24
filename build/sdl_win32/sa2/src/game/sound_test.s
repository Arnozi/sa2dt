	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	SoundTestScreenOnDestroy;	.scl	3;	.type	32;	.endef
	.seh_proc	SoundTestScreenOnDestroy
SoundTestScreenOnDestroy:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rax, QWORD PTR [rax]
	mov	BYTE PTR 2296[rax], 0
	ret
	.seh_endproc
	.p2align 4
	.def	SoundTestScreenSetNameDisplay;	.scl	3;	.type	32;	.endef
	.seh_proc	SoundTestScreenSetNameDisplay
SoundTestScreenSetNameDisplay:
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
	mov	rax, QWORD PTR [rax]
	mov	rdi, QWORD PTR 24[rax]
	lea	rax, sSoundNames[rip]
	movzx	esi, cl
	lea	rbx, 1360[rdi]
	add	rdi, 2384
	sal	rsi, 4
	add	rsi, rax
	.p2align 4,,10
	.p2align 3
.L5:
	movzx	eax, BYTE PTR [rsi]
	mov	BYTE PTR 49[rbx], -1
	mov	rcx, rbx
	test	al, al
	lea	edx, -32[rax]
	cmovne	eax, edx
	add	rbx, 64
	add	rsi, 1
	mov	BYTE PTR -16[rbx], al
	call	UpdateSpriteAnimation
	cmp	rbx, rdi
	jne	.L5
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.def	SoundTestScreenSetCreamAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	SoundTestScreenSetCreamAnim
SoundTestScreenSetCreamAnim:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rax]
	cmp	cl, 5
	ja	.L10
	lea	r8, .L12[rip]
	movzx	ecx, cl
	movsx	rdx, DWORD PTR [r8+rcx*4]
	add	rdx, r8
	jmp	rdx
	.section .rdata,"dr"
	.align 4
.L12:
	.long	.L10-.L12
	.long	.L16-.L12
	.long	.L15-.L12
	.long	.L14-.L12
	.long	.L13-.L12
	.long	.L11-.L12
	.text
	.p2align 4,,10
	.p2align 3
.L11:
	lea	rcx, 864[rax]
	mov	edx, -256
	mov	r8d, 971
	mov	QWORD PTR 992[rax], rcx
	mov	WORD PTR 912[rax], dx
	mov	WORD PTR 882[rax], r8w
	jmp	UpdateSpriteAnimation
	.p2align 4,,10
	.p2align 3
.L16:
	lea	rcx, 864[rax]
	mov	edx, -256
	mov	r8d, 973
	mov	QWORD PTR 992[rax], rcx
	mov	WORD PTR 912[rax], dx
	mov	WORD PTR 882[rax], r8w
	jmp	UpdateSpriteAnimation
	.p2align 4,,10
	.p2align 3
.L15:
	and	DWORD PTR 960[rax], -1025
	lea	rcx, 928[rax]
	mov	r11d, 968
	mov	QWORD PTR 992[rax], rcx
	mov	BYTE PTR 976[rax], 0
	mov	WORD PTR 946[rax], r11w
	jmp	UpdateSpriteAnimation
	.p2align 4,,10
	.p2align 3
.L14:
	and	DWORD PTR 960[rax], -1025
	lea	rcx, 928[rax]
	mov	r10d, 968
	mov	QWORD PTR 992[rax], rcx
	mov	BYTE PTR 976[rax], 1
	mov	WORD PTR 946[rax], r10w
	jmp	UpdateSpriteAnimation
	.p2align 4,,10
	.p2align 3
.L13:
	or	DWORD PTR 960[rax], 1024
	lea	rcx, 928[rax]
	mov	r9d, 968
	mov	QWORD PTR 992[rax], rcx
	mov	BYTE PTR 976[rax], 0
	mov	WORD PTR 946[rax], r9w
	jmp	UpdateSpriteAnimation
.L10:
	lea	rcx, 864[rax]
	mov	r9d, -256
	mov	r10d, 970
	mov	QWORD PTR 992[rax], rcx
	mov	WORD PTR 912[rax], r9w
	mov	WORD PTR 882[rax], r10w
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.p2align 4
	.def	Task_SoundTestScreenCleanup;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_SoundTestScreenCleanup
Task_SoundTestScreenCleanup:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	rdx, QWORD PTR .refptr.gProfileScreenNextVramAddress[rip]
	mov	r11, QWORD PTR .refptr.gNumHBlankIntrs[rip]
	add	rax, 65536
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR .refptr.gProfileScreenSubMenuNextVramAddress[rip]
	movzx	r9d, BYTE PTR [r11]
	mov	rdx, QWORD PTR .refptr.gHBlankCallbacks[rip]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	ecx, r9d
	mov	r10, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[r10]
	movzx	eax, BYTE PTR 2477[rax]
	add	eax, 1
	cmp	eax, r9d
	jge	.L19
	mov	rdx, QWORD PTR .refptr.gHBlankCallbacks[rip]
	cdqe
.L20:
	mov	r8, QWORD PTR [rdx+rax*8]
	mov	QWORD PTR -8[rdx+rax*8], r8
	add	rax, 1
	cmp	r9d, eax
	jg	.L20
.L19:
	lea	eax, -1[rcx]
	mov	rcx, r10
	mov	BYTE PTR [r11], al
	movzx	eax, al
	mov	QWORD PTR [rdx+rax*8], 0
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.def	SoundTestScreenRenderUI;	.scl	3;	.type	32;	.endef
	.seh_proc	SoundTestScreenRenderUI
SoundTestScreenRenderUI:
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
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	movd	xmm1, DWORD PTR .LC1[rip]
	mov	rcx, QWORD PTR .refptr.gNumHBlankCallbacks[rip]
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	movd	xmm0, DWORD PTR [rdx]
	mov	rax, QWORD PTR [rax]
	paddw	xmm0, xmm1
	mov	r14, QWORD PTR 24[rax]
	movd	DWORD PTR [rdx], xmm0
	movzx	edx, BYTE PTR [rcx]
	lea	rax, 288[r14]
	mov	rbx, QWORD PTR 992[r14]
	mov	QWORD PTR 40[rsp], rax
	lea	rax, 352[r14]
	lea	r15, 1128[r14]
	lea	r9d, 1[rdx]
	mov	BYTE PTR 2477[r14], dl
	lea	rdi, 1000[r14]
	mov	BYTE PTR [rcx], r9b
	mov	rcx, QWORD PTR .refptr.gHBlankCallbacks[rip]
	lea	rsi, 544[r14]
	lea	r12, 608[r14]
	mov	r9, QWORD PTR .refptr.BgPaletteEffectGradient[rip]
	mov	QWORD PTR 48[rsp], rax
	lea	rax, 1064[r14]
	lea	r13, 2400[r14]
	mov	QWORD PTR 56[rsp], rax
	lea	rbp, 1256[r14]
	mov	QWORD PTR [rcx+rdx*8], r9
	mov	rdx, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rdx], 8
.L27:
	mov	ecx, 136
	mov	WORD PTR 40[r15], cx
	movzx	ecx, BYTE PTR 0[r13]
	test	cl, cl
	je	.L25
	movsx	r9, cl
	jle	.L26
	lea	r10, sDigitTransitionAnim[rip]
	sub	ecx, 1
	movzx	r9d, BYTE PTR [r10+r9]
	add	r9w, 136
	mov	WORD PTR 40[r15], r9w
	mov	BYTE PTR 0[r13], cl
.L25:
	mov	rcx, r15
	add	r15, 64
	add	r13, 1
	call	DisplaySprite
	cmp	rbp, r15
	jne	.L27
	mov	rcx, QWORD PTR 48[rsp]
	call	DisplaySprite
	lea	rcx, 416[r14]
	call	DisplaySprite
	mov	rcx, QWORD PTR 56[rsp]
	call	DisplaySprite
	mov	rcx, QWORD PTR 40[rsp]
	call	DisplaySprite
	mov	rcx, rdi
	call	DisplaySprite
	mov	rcx, rdi
	or	DWORD PTR 1032[r14], 1024
	call	DisplaySprite
	movzx	r11d, BYTE PTR 2397[r14]
	and	DWORD PTR 1032[r14], -1025
	cmp	r11b, 1
	je	.L55
	xor	eax, eax
	mov	BYTE PTR 2406[r14], 0
	mov	WORD PTR 2404[r14], ax
.L37:
	mov	r13, r12
	lea	rdi, 1320[r14]
	xor	ebp, ebp
.L39:
	cmp	WORD PTR 18[rbx], 970
	je	.L38
	mov	WORD PTR [rdi], bp
	movzx	eax, WORD PTR 2404[r14]
	add	ax, 256
	movd	xmm0, eax
	pshuflw	xmm0, xmm0, 0
	movd	DWORD PTR 2[rdi], xmm0
.L38:
	mov	rdx, rdi
	mov	rcx, r13
	add	bp, 256
	add	r13, 64
	call	TransformSprite
	add	rdi, 10
	cmp	bp, 1024
	jne	.L39
	movzx	ecx, BYTE PTR 2406[r14]
	mov	eax, 64
	mov	rdi, QWORD PTR .refptr.gSineTable[rip]
	sub	eax, ecx
	mov	edx, ecx
	sal	eax, 2
	cdqe
	movsx	cx, BYTE PTR 1[rdi+rax*2]
	movzx	eax, WORD PTR 2404[r14]
	sub	eax, ecx
	test	dl, dl
	je	.L40
	sub	edx, 1
	mov	BYTE PTR 2406[r14], dl
.L40:
	xor	edx, edx
	test	ax, ax
	mov	rcx, r12
	cmovs	eax, edx
	mov	WORD PTR 2404[r14], ax
	call	DisplaySprite
	lea	rcx, 672[r14]
	call	DisplaySprite
	lea	rcx, 736[r14]
	call	DisplaySprite
	lea	rcx, 800[r14]
	call	DisplaySprite
	mov	rcx, rbx
	call	DisplaySprite
	movzx	eax, BYTE PTR 2396[r14]
	mov	rcx, rsi
	and	eax, 15
	add	eax, 16
	sal	eax, 4
	cdqe
	movzx	eax, WORD PTR [rdi+rax*2]
	sar	ax, 6
	cwde
	lea	eax, [rax+rax*4]
	sar	eax, 7
	add	ax, 140
	mov	WORD PTR 582[r14], ax
	call	DisplaySprite
	movzx	eax, BYTE PTR 2396[r14]
	mov	rcx, rsi
	or	DWORD PTR 576[r14], 1024
	and	eax, 15
	add	eax, 16
	sal	eax, 4
	cdqe
	movzx	eax, WORD PTR [rdi+rax*2]
	sar	ax, 6
	cwde
	lea	edx, [rax+rax*4]
	mov	eax, 104
	sar	edx, 7
	sub	eax, edx
	mov	WORD PTR 582[r14], ax
	call	DisplaySprite
	add	BYTE PTR 2396[r14], 1
	and	DWORD PTR 576[r14], -1025
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
	.p2align 4,,10
	.p2align 3
.L26:
	neg	r9d
	lea	r10, sDigitTransitionAnim[rip]
	add	ecx, 1
	movsx	r9, r9d
	movzx	r10d, BYTE PTR [r10+r9]
	mov	r9d, 136
	sub	r9d, r10d
	mov	WORD PTR 40[r15], r9w
	mov	BYTE PTR 0[r13], cl
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L55:
	mov	rcx, QWORD PTR .refptr.REG_BASE[rip]
	movzx	edx, BYTE PTR 2407[r14]
	movsx	eax, WORD PTR 110[rcx]
	shr	eax, 12
	and	eax, 15
	cmp	edx, eax
	je	.L41
	mov	BYTE PTR 2406[r14], 32
	mov	BYTE PTR 2407[r14], al
	mov	eax, 32
.L29:
	cmp	BYTE PTR 2408[r14], 0
	jne	.L56
.L30:
	movsx	edx, WORD PTR 126[rcx]
	movzx	r9d, BYTE PTR 2409[r14]
	shr	edx, 12
	and	edx, 15
	cmp	r9d, edx
	je	.L31
	mov	BYTE PTR 2406[r14], 32
	add	eax, 32
	add	r11d, 1
	mov	BYTE PTR 2409[r14], dl
.L31:
	movsx	edx, WORD PTR 132[rcx]
	movzx	ecx, BYTE PTR 2410[r14]
	shr	edx, 12
	and	edx, 15
	cmp	ecx, edx
	je	.L32
	mov	BYTE PTR 2406[r14], 32
	add	eax, 32
	add	r11d, 1
	mov	BYTE PTR 2410[r14], dl
.L32:
	mov	rdi, QWORD PTR .refptr.gSoundInfo[rip]
	movzx	ebp, WORD PTR 2404[r14]
	lea	rdx, 2412[r14]
	lea	r9, 168[rdi]
	add	rdi, 872
	.p2align 4,,10
	.p2align 3
.L35:
	mov	ecx, DWORD PTR 32[rdx]
	mov	r10d, DWORD PTR [r9]
	cmp	ecx, r10d
	je	.L33
	sub	ecx, r10d
	mov	r13d, ecx
	sub	r13d, DWORD PTR [rdx]
	cmp	r13d, 256
	jbe	.L34
	add	ebp, 32
	mov	BYTE PTR 2406[r14], 32
	add	r11d, 1
	mov	WORD PTR 2404[r14], bp
.L34:
	mov	DWORD PTR [rdx], ecx
	mov	DWORD PTR 32[rdx], r10d
.L33:
	add	r9, 88
	add	rdx, 4
	cmp	rdi, r9
	jne	.L35
	test	r11b, r11b
	je	.L36
	movzx	eax, ax
	movzx	r11d, r11b
	cdq
	idiv	r11d
	add	ebp, eax
	mov	WORD PTR 2404[r14], bp
.L36:
	cmp	bp, 192
	jle	.L37
	mov	edx, 192
	mov	BYTE PTR 2406[r14], 4
	mov	WORD PTR 2404[r14], dx
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L56:
	mov	BYTE PTR 2406[r14], 32
	add	eax, 32
	add	r11d, 1
	mov	BYTE PTR 2408[r14], 0
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L41:
	xor	eax, eax
	xor	r11d, r11d
	jmp	.L29
	.seh_endproc
	.p2align 4
	.def	Task_SoundTestScreenInOutTransition;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_SoundTestScreenInOutTransition
Task_SoundTestScreenInOutTransition:
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
	movzx	eax, BYTE PTR 2384[rbx]
	lea	rcx, 864[rbx]
	add	eax, 1
	cmp	BYTE PTR 2397[rbx], 2
	mov	BYTE PTR 2384[rbx], al
	je	.L66
	cmp	al, 20
	ja	.L67
.L62:
	lea	rcx, 8[rbx]
	call	UpdateScreenFade
	cmp	BYTE PTR 2384[rbx], 60
	jbe	.L60
	cmp	BYTE PTR 2397[rbx], 2
	jne	.L64
	mov	rax, QWORD PTR [rsi]
	lea	rdx, Task_SoundTestScreenCleanup[rip]
	mov	QWORD PTR 40[rax], rdx
.L60:
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	SoundTestScreenRenderUI
	.p2align 4,,10
	.p2align 3
.L64:
	mov	BYTE PTR 2384[rbx], 0
	mov	ecx, 1
	call	SoundTestScreenSetCreamAnim
	mov	rax, QWORD PTR [rsi]
	lea	rdx, Task_SoundTestScreenMain[rip]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	SoundTestScreenRenderUI
	.p2align 4,,10
	.p2align 3
.L67:
	call	UpdateSpriteAnimation
	jmp	.L62
	.p2align 4,,10
	.p2align 3
.L66:
	call	UpdateSpriteAnimation
	cmp	BYTE PTR 2384[rbx], 44
	ja	.L62
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	SoundTestScreenRenderUI
	.seh_endproc
	.p2align 4
	.def	Task_SoundTestScreenMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_SoundTestScreenMain
Task_SoundTestScreenMain:
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
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbp, QWORD PTR .refptr.gCurTask[rip]
	lea	rdi, sSoundsOrder[rip]
	mov	rax, QWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rax, QWORD PTR [rax]
	mov	rcx, QWORD PTR 992[rbx]
	lea	r12, 1064[rbx]
	cmp	BYTE PTR 7[rax], 30
	sbb	esi, esi
	and	esi, -6
	add	esi, 63
	cmp	BYTE PTR 7[rax], 30
	lea	rax, sCompletedGameSoundsOrder[rip]
	cmovnb	rdi, rax
	movzx	eax, BYTE PTR 2397[rbx]
	test	al, al
	je	.L70
	cmp	al, 1
	je	.L71
.L72:
	mov	r14, QWORD PTR .refptr.gRepeatedKeys[rip]
	test	BYTE PTR [r14], -16
	jne	.L79
.L117:
	movzx	eax, BYTE PTR 2397[rbx]
.L80:
	cmp	al, 1
	je	.L119
.L95:
	mov	rsi, QWORD PTR .refptr.gPressedKeys[rip]
	movzx	eax, WORD PTR [rsi]
	test	al, 1
	jne	.L120
.L96:
	test	al, 2
	je	.L118
	cmp	BYTE PTR 2397[rbx], 1
	je	.L121
	xor	ecx, ecx
	call	SoundTestScreenSetCreamAnim
	mov	ecx, 107
	call	m4aSongNumStart
	mov	rax, QWORD PTR .LC5[rip]
	mov	rdx, QWORD PTR 0[rbp]
	mov	DWORD PTR 16[rbx], 255
	mov	BYTE PTR 2384[rbx], 0
	mov	QWORD PTR 8[rbx], rax
	lea	rax, Task_SoundTestScreenInOutTransition[rip]
	mov	DWORD PTR 2388[rbx], 0
	mov	BYTE PTR 2397[rbx], 2
	mov	QWORD PTR 40[rdx], rax
	jmp	.L98
.L121:
	mov	BYTE PTR 2397[rbx], 0
	mov	rcx, r12
	mov	BYTE PTR 1112[rbx], 1
	call	UpdateSpriteAnimation
	call	m4aMPlayAllStop
	mov	BYTE PTR 2384[rbx], 0
	mov	ecx, 5
	mov	DWORD PTR 2388[rbx], 0
	call	SoundTestScreenSetCreamAnim
.L118:
	mov	rdx, QWORD PTR 0[rbp]
.L98:
	movzx	eax, WORD PTR 2402[rbx]
	mov	esi, 442
	add	eax, 1
	cmp	ax, 586
	jg	.L103
	sub	esi, eax
.L100:
	mov	WORD PTR 2402[rbx], ax
	mov	rdi, QWORD PTR 24[rdx]
	lea	rbx, 1360[rdi]
	add	rdi, 2384
	.p2align 4,,10
	.p2align 3
.L101:
	mov	eax, 238
	mov	WORD PTR 38[rbx], si
	mov	rcx, rbx
	add	rbx, 64
	mov	WORD PTR -24[rbx], ax
	add	esi, 10
	call	DisplaySprite
	cmp	rbx, rdi
	jne	.L101
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	jmp	SoundTestScreenRenderUI
	.p2align 4,,10
	.p2align 3
.L103:
	xor	eax, eax
	jmp	.L100
	.p2align 4,,10
	.p2align 3
.L71:
	mov	eax, DWORD PTR 2392[rbx]
	add	eax, DWORD PTR 2388[rbx]
	mov	DWORD PTR 2388[rbx], eax
	shr	eax, 16
	mov	BYTE PTR 2384[rbx], al
	call	UpdateSpriteAnimation
	movzx	eax, BYTE PTR 2384[rbx]
	cmp	al, 54
	jbe	.L72
	movzx	edx, BYTE PTR 2398[rbx]
	test	dl, dl
	je	.L122
	cmp	al, 59
	jbe	.L72
	cmp	dl, 1
	je	.L123
	cmp	al, 114
	jbe	.L72
	cmp	dl, 2
	je	.L124
	cmp	al, 119
	jbe	.L72
	cmp	dl, 3
	jne	.L72
	mov	BYTE PTR 2398[rbx], 0
	mov	ecx, 2
	call	SoundTestScreenSetCreamAnim
	mov	BYTE PTR 2384[rbx], 0
	mov	DWORD PTR 2388[rbx], 0
	jmp	.L72
	.p2align 4,,10
	.p2align 3
.L119:
	mov	rax, QWORD PTR .refptr.gMPlayTable[rip]
	mov	rax, QWORD PTR [rax]
	cmp	DWORD PTR 8[rax], -2147483648
	jne	.L95
	mov	BYTE PTR 2397[rbx], 0
	mov	rcx, r12
	mov	BYTE PTR 1112[rbx], 1
	call	UpdateSpriteAnimation
	call	m4aMPlayAllStop
	mov	BYTE PTR 2384[rbx], 0
	mov	ecx, 5
	mov	DWORD PTR 2388[rbx], 0
	call	SoundTestScreenSetCreamAnim
	jmp	.L95
	.p2align 4,,10
	.p2align 3
.L70:
	cmp	WORD PTR 18[rcx], 971
	je	.L125
	call	UpdateSpriteAnimation
	mov	r14, QWORD PTR .refptr.gRepeatedKeys[rip]
	test	BYTE PTR [r14], -16
	je	.L117
.L79:
	mov	ecx, 108
	movzx	r13d, BYTE PTR 2399[rbx]
	call	m4aSongNumStart
	movzx	edx, WORD PTR [r14]
	movzx	eax, BYTE PTR 2399[rbx]
	test	dl, 32
	je	.L82
	sub	eax, 1
	mov	BYTE PTR 2399[rbx], al
.L82:
	test	dl, 16
	je	.L83
	add	eax, 1
	mov	BYTE PTR 2399[rbx], al
.L83:
	test	dl, 64
	je	.L84
	add	eax, 10
	mov	BYTE PTR 2399[rbx], al
.L84:
	and	edx, 128
	je	.L85
	cmp	al, 9
	ja	.L86
	mov	BYTE PTR 2399[rbx], sil
.L87:
	movzx	edx, sil
	mov	ecx, 10
	mov	eax, edx
	div	cl
	mov	edx, eax
	movzx	eax, ah
	mov	r10d, eax
	mov	r8d, edx
	add	edx, 16
	lea	r9d, 16[r10]
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L86:
	sub	eax, 10
	mov	BYTE PTR 2399[rbx], al
.L85:
	test	al, al
	jne	.L88
	mov	eax, -51
	mov	BYTE PTR 2399[rbx], sil
	mul	sil
	mov	r10d, eax
	shr	r10w, 11
	mov	r8d, r10d
	lea	eax, [r8+r8*4]
	lea	edx, 16[r8]
	add	eax, eax
	sub	esi, eax
	mov	r10d, esi
	lea	r9d, 16[r10]
.L89:
	mov	eax, -51
	mul	r13b
	shr	ax, 11
	lea	eax, [rax+rax*4]
	lea	ecx, [rax+rax]
	mov	eax, r13d
	sub	eax, ecx
	cmp	al, r10b
	jnb	.L91
	mov	BYTE PTR 2400[rbx], -7
.L92:
	mov	ecx, -51
	mov	eax, r13d
	mul	cl
	mov	r13d, eax
	mov	eax, ecx
	shr	r13w, 11
	mul	r13b
	shr	ax, 11
	lea	ecx, [rax+rax*4]
	mov	eax, r13d
	add	ecx, ecx
	sub	eax, ecx
	cmp	al, r8b
	jnb	.L93
	mov	BYTE PTR 2401[rbx], -7
.L94:
	mov	BYTE PTR 1176[rbx], r9b
	lea	rcx, 1128[rbx]
	mov	BYTE PTR 1240[rbx], dl
	mov	BYTE PTR 1304[rbx], 16
	call	UpdateSpriteAnimation
	lea	rcx, 1192[rbx]
	call	UpdateSpriteAnimation
	lea	rcx, 1256[rbx]
	call	UpdateSpriteAnimation
	movzx	eax, BYTE PTR 2397[rbx]
	test	al, al
	jne	.L80
	movzx	eax, BYTE PTR 2399[rbx]
	movzx	ecx, BYTE PTR -1[rdi+rax]
	call	SoundTestScreenSetNameDisplay
	jmp	.L117
	.p2align 4,,10
	.p2align 3
.L120:
	movzx	eax, BYTE PTR 2399[rbx]
	movzx	edx, BYTE PTR -1[rdi+rax]
	lea	rax, sSoundTempos[rip]
	mov	eax, DWORD PTR [rax+rdx*4]
	mov	DWORD PTR 2392[rbx], eax
	shr	eax, 12
	mov	BYTE PTR 978[rbx], al
	call	m4aMPlayAllStop
	movzx	eax, BYTE PTR 2399[rbx]
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_BGM[rip]
	movzx	edx, BYTE PTR -1[rdi+rax]
	lea	rax, sSoundNumberToSongMap[rip]
	movzx	eax, WORD PTR [rax+rdx*2]
	sal	rax, 4
	add	rax, QWORD PTR .refptr.gSongTable[rip]
	mov	rdx, QWORD PTR [rax]
	call	MPlayStart
	mov	edx, 256
	mov	rcx, r12
	mov	BYTE PTR 1112[rbx], 0
	mov	WORD PTR 2396[rbx], dx
	mov	BYTE PTR 2384[rbx], 0
	mov	DWORD PTR 2388[rbx], 0
	mov	BYTE PTR 2398[rbx], 0
	call	UpdateSpriteAnimation
	movzx	eax, BYTE PTR 2399[rbx]
	movzx	ecx, BYTE PTR -1[rdi+rax]
	call	SoundTestScreenSetNameDisplay
	mov	ecx, 2
	call	SoundTestScreenSetCreamAnim
	movzx	eax, WORD PTR [rsi]
	jmp	.L96
.L88:
	cmp	sil, al
	jnb	.L126
	mov	BYTE PTR 2399[rbx], 1
	mov	edx, 16
	mov	r9d, 17
	xor	r8d, r8d
	mov	r10d, 1
	jmp	.L89
.L93:
	cmp	r8b, al
	jnb	.L94
	mov	BYTE PTR 2401[rbx], 7
	jmp	.L94
.L91:
	cmp	r10b, al
	jnb	.L92
	mov	BYTE PTR 2400[rbx], 7
	jmp	.L92
.L125:
	call	UpdateSpriteAnimation
	test	eax, eax
	jne	.L72
	mov	ecx, 1
	call	SoundTestScreenSetCreamAnim
	jmp	.L72
.L122:
	mov	BYTE PTR 2398[rbx], 1
	mov	ecx, 3
	call	SoundTestScreenSetCreamAnim
	jmp	.L72
.L123:
	mov	BYTE PTR 2398[rbx], 2
	mov	ecx, 4
	call	SoundTestScreenSetCreamAnim
	jmp	.L72
.L124:
	mov	BYTE PTR 2398[rbx], 3
	mov	ecx, 3
	call	SoundTestScreenSetCreamAnim
	jmp	.L72
.L126:
	mov	esi, eax
	jmp	.L87
	.seh_endproc
	.p2align 4
	.globl	CreateSoundTestScreen
	.def	CreateSoundTestScreen;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateSoundTestScreen
CreateSoundTestScreen:
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
	sub	rsp, 136
	.seh_stackalloc	136
	movups	XMMWORD PTR 112[rsp], xmm6
	.seh_savexmm	xmm6, 112
	.seh_endprologue
	lea	rax, sBgGradient[rip]
	mov	r9d, 4
	mov	edx, 2480
	movq	xmm6, rax
	lea	rax, SoundTestScreenOnDestroy[rip]
	mov	r8d, 6144
	movhps	xmm6, QWORD PTR .refptr.gBgGradientPalette[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	rsi, rcx
	lea	rcx, Task_SoundTestScreenInOutTransition[rip]
	call	TaskCreate
	mov	rdi, QWORD PTR 24[rax]
	mov	rbx, rax
	call	m4aMPlayAllStop
	mov	rax, QWORD PTR .LC7[rip]
	xor	r8d, r8d
	mov	rdx, QWORD PTR .refptr.gProfileScreenNextVramAddress[rip]
	mov	QWORD PTR [rdi], rsi
	pxor	xmm0, xmm0
	mov	r9d, 4417
	mov	r10d, 1795
	mov	QWORD PTR 2388[rdi], rax
	lea	r12, 24[rdi]
	lea	rax, 864[rdi]
	mov	WORD PTR 2396[rdi], r8w
	mov	r8d, 7
	mov	BYTE PTR 2384[rdi], 0
	mov	QWORD PTR 992[rdi], rax
	mov	QWORD PTR 2399[rdi], 1
	movzx	eax, BYTE PTR 859[rsi]
	movups	XMMWORD PTR 2412[rdi], xmm0
	mov	BYTE PTR 2476[rdi], al
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	movups	XMMWORD PTR 2428[rdi], xmm0
	add	rax, 65536
	movups	XMMWORD PTR 2444[rdi], xmm0
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR .refptr.gProfileScreenSubMenuNextVramAddress[rip]
	xor	edx, edx
	movups	XMMWORD PTR 2460[rdi], xmm0
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	WORD PTR [rax], r9w
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	r9d, 169
	mov	WORD PTR [rax], r10w
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR 24[rbx]
	mov	DWORD PTR 32[rsp], 32
	lea	rcx, 96[rax]
	mov	DWORD PTR 72[rsp], 0
	mov	DWORD PTR 64[rsp], 0
	mov	DWORD PTR 56[rsp], 0
	mov	DWORD PTR 48[rsp], 0
	mov	DWORD PTR 40[rsp], 32
	call	OptionsInitBackground
	mov	rbx, QWORD PTR 24[rbx]
	lea	rdx, sTitleText[rip]
	lea	rax, 1000[rbx]
	lea	rcx, 288[rbx]
	mov	QWORD PTR 88[rsp], rax
	lea	rax, 864[rbx]
	lea	r14, 1128[rbx]
	mov	QWORD PTR 96[rsp], rax
	movsx	eax, BYTE PTR 2476[rbx]
	mov	DWORD PTR 72[rsp], 0
	lea	esi, [rax+rax*2]
	mov	DWORD PTR 56[rsp], 5
	lea	r15d, 2[rsi]
	lea	eax, 1[rsi]
	movsx	rbp, esi
	mov	DWORD PTR 48[rsp], 16
	movsx	r11, r15d
	movsx	r13, eax
	mov	DWORD PTR 40[rsp], 10
	add	esi, esi
	movzx	r8d, BYTE PTR [rdx+r11*4]
	mov	DWORD PTR 32[rsp], 4096
	add	r15d, r15d
	movzx	r9d, WORD PTR [rdx+r13*4]
	mov	QWORD PTR 104[rsp], r11
	movsx	r15, r15d
	mov	DWORD PTR 64[rsp], r8d
	mov	r8d, DWORD PTR [rdx+rbp*4]
	xor	edx, edx
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	xor	edx, edx
	lea	rcx, 352[rbx]
	mov	DWORD PTR 64[rsp], 0
	mov	r9d, 969
	mov	r8d, 96
	mov	DWORD PTR 56[rsp], 6
	mov	DWORD PTR 48[rsp], 0
	mov	DWORD PTR 40[rsp], 0
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	mov	r11, QWORD PTR 104[rsp]
	lea	rdx, sControlsText[rip]
	mov	DWORD PTR 72[rsp], 0
	mov	DWORD PTR 56[rsp], 5
	movzx	r9d, WORD PTR [rdx+r13*4]
	lea	rcx, 416[rbx]
	movzx	r8d, BYTE PTR [rdx+r11*4]
	mov	DWORD PTR 48[rsp], 214
	mov	DWORD PTR 40[rsp], 10
	mov	DWORD PTR 64[rsp], r8d
	mov	r8d, DWORD PTR [rdx+rbp*4]
	xor	edx, edx
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	lea	edx, 3[rsi]
	add	esi, 5
	lea	rax, sBackButtonText[rip]
	movsx	rsi, esi
	movsx	rdx, edx
	mov	DWORD PTR 72[rsp], 0
	movzx	r9d, WORD PTR [rax+r15*4]
	movzx	r8d, BYTE PTR [rax+rsi*4]
	mov	DWORD PTR 56[rsp], 5
	lea	rcx, 1064[rbx]
	xor	esi, esi
	mov	DWORD PTR 48[rsp], 214
	mov	r15d, 126
	mov	DWORD PTR 64[rsp], r8d
	mov	r8d, DWORD PTR [rax+rdx*4]
	xor	edx, edx
	mov	DWORD PTR 40[rsp], 90
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	xor	edx, edx
	lea	rcx, 544[rbx]
	mov	DWORD PTR 64[rsp], 2
	mov	r9d, 965
	mov	r8d, 1
	mov	DWORD PTR 56[rsp], 5
	mov	DWORD PTR 48[rsp], 130
	mov	DWORD PTR 40[rsp], 136
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	xor	edx, edx
	mov	r9d, 1119
	mov	DWORD PTR 64[rsp], 17
	mov	r8d, 2
	mov	rcx, r14
	mov	DWORD PTR 56[rsp], 5
	mov	DWORD PTR 48[rsp], 136
	mov	DWORD PTR 40[rsp], 126
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
.L129:
	add	esi, 1
	add	r14, 64
	sub	r15d, 8
	cmp	si, 3
	je	.L128
	mov	DWORD PTR 72[rsp], 0
	mov	r9d, 1119
	xor	edx, edx
	mov	rcx, r14
	mov	DWORD PTR 64[rsp], 16
	mov	r8d, 2
	mov	DWORD PTR 56[rsp], 5
	mov	DWORD PTR 48[rsp], 136
	mov	DWORD PTR 40[rsp], r15d
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	jmp	.L129
	.p2align 4,,10
	.p2align 3
.L128:
	lea	r14, 608[rbx]
	xor	esi, esi
	.p2align 4,,10
	.p2align 3
.L130:
	mov	eax, esi
	mov	DWORD PTR 72[rsp], 0
	mov	rcx, r14
	xor	edx, edx
	or	ax, 4192
	mov	DWORD PTR 64[rsp], 0
	mov	r9d, 974
	mov	r8d, 64
	cwde
	mov	DWORD PTR 56[rsp], 6
	add	esi, 1
	add	r14, 64
	mov	DWORD PTR 48[rsp], 130
	mov	DWORD PTR 40[rsp], 122
	mov	DWORD PTR 32[rsp], eax
	call	sub_806A568
	cmp	si, 4
	jne	.L130
	mov	rcx, QWORD PTR 88[rsp]
	mov	r9d, 972
	xor	edx, edx
	movabs	rax, 34341046687105024
	mov	QWORD PTR 1320[rbx], rax
	mov	r8d, 20
	movabs	rax, 72058693566333058
	lea	rsi, sSoundNames[rip]
	mov	QWORD PTR 1328[rbx], rax
	lea	rbp, 16[rsi]
	movabs	rax, 72059793069703289
	mov	QWORD PTR 1336[rbx], rax
	movabs	rax, 216173336172495104
	mov	QWORD PTR 1344[rbx], rax
	movabs	rax, 36310795998462208
	mov	QWORD PTR 1352[rbx], rax
	mov	DWORD PTR 72[rsp], 4
	mov	DWORD PTR 64[rsp], 0
	mov	DWORD PTR 56[rsp], 6
	mov	DWORD PTR 48[rsp], 180
	mov	DWORD PTR 40[rsp], 318
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	xor	edx, edx
	mov	rcx, QWORD PTR 96[rsp]
	mov	DWORD PTR 64[rsp], 0
	mov	r9d, 970
	mov	r8d, 64
	mov	DWORD PTR 56[rsp], 5
	mov	DWORD PTR 48[rsp], 156
	mov	DWORD PTR 40[rsp], 318
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	xor	edx, edx
	lea	rcx, 928[rbx]
	mov	DWORD PTR 64[rsp], 0
	mov	r9d, 968
	mov	r8d, 72
	add	rbx, 1360
	mov	DWORD PTR 56[rsp], 5
	mov	DWORD PTR 48[rsp], 156
	mov	DWORD PTR 40[rsp], 318
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	.p2align 4,,10
	.p2align 3
.L131:
	mov	rcx, rbx
	mov	r9d, 1119
	xor	edx, edx
	add	rsi, 1
	mov	DWORD PTR 72[rsp], 0
	movzx	eax, BYTE PTR -1[rsi]
	mov	r8d, 2
	add	rbx, 64
	mov	DWORD PTR 56[rsp], 5
	sub	eax, 32
	mov	DWORD PTR 48[rsp], 0
	movzx	eax, al
	mov	DWORD PTR 40[rsp], 0
	mov	DWORD PTR 64[rsp], eax
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	cmp	rbp, rsi
	jne	.L131
	mov	rax, QWORD PTR .LC8[rip]
	xor	edx, edx
	xor	ecx, ecx
	mov	BYTE PTR 26[rdi], 0
	mov	DWORD PTR 16[rdi], 255
	mov	QWORD PTR 8[rdi], rax
	mov	eax, 257
	mov	WORD PTR 48[rdi], ax
	mov	rax, QWORD PTR .refptr.gBgPaletteEffects[rip]
	mov	BYTE PTR 50[rdi], 1
	mov	WORD PTR 24[rdi], dx
	mov	WORD PTR 88[rdi], cx
	mov	QWORD PTR [rax], r12
	movups	XMMWORD PTR 32[rdi], xmm6
	movups	xmm6, XMMWORD PTR 112[rsp]
	add	rsp, 136
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
	.section .rdata,"dr"
	.align 32
sBackButtonText:
	.long	10
	.long	965
	.long	0
	.long	10
	.long	965
	.long	1
	.long	8
	.long	1034
	.long	0
	.long	8
	.long	1034
	.long	1
	.long	8
	.long	1035
	.long	0
	.long	12
	.long	1035
	.long	1
	.long	8
	.long	1036
	.long	0
	.long	12
	.long	1036
	.long	1
	.long	10
	.long	1037
	.long	0
	.long	10
	.long	1037
	.long	1
	.long	8
	.long	1038
	.long	0
	.long	12
	.long	1038
	.long	1
	.align 32
sControlsText:
	.long	20
	.long	966
	.long	0
	.long	20
	.long	1039
	.long	0
	.long	20
	.long	1040
	.long	0
	.long	20
	.long	1041
	.long	0
	.long	20
	.long	1042
	.long	0
	.long	20
	.long	1043
	.long	0
	.align 32
sTitleText:
	.long	42
	.long	967
	.long	0
	.long	32
	.long	1030
	.long	0
	.long	32
	.long	1030
	.long	0
	.long	26
	.long	1031
	.long	0
	.long	48
	.long	1032
	.long	0
	.long	34
	.long	1033
	.long	0
	.align 8
sBgGradient:
	.ascii "\0\30"
	.ascii "0H`x\220\250\300\330\360"
	.align 8
sDigitTransitionAnim:
	.ascii "\0\1\1\1\2\2\3\4"
	.align 32
sSoundsOrder:
	.ascii "\0\1\2\3\10\11\12\13\14\15\16\17\20\21\22\23\24\25\26\32\33\34\35\36\37 678!\30\31<%&\4)*+,-./0\"$B\6:;\7"
	.ascii "51243>"
	.align 32
sCompletedGameSoundsOrder:
	.ascii "\0\1\2\3\10\11\12\13\14\15\16\17\20\21\22\23\24\25\26\32\33\34\35\36\37 678!\30\31<%&\4)*+,-./0\"$B\6:;\7"
	.ascii "51243>\5'(\27"
	.ascii "9#"
	.align 32
sSoundTempos:
	.long	71680
	.long	71680
	.long	65536
	.long	65792
	.long	68352
	.long	66560
	.long	62464
	.long	61440
	.long	84992
	.long	84992
	.long	86112
	.long	83712
	.long	68986
	.long	68986
	.long	77824
	.long	110592
	.long	72960
	.long	81920
	.long	83968
	.long	88064
	.long	82432
	.long	88064
	.long	84992
	.long	88064
	.long	68896
	.long	78848
	.long	87040
	.long	81920
	.long	83968
	.long	92160
	.long	97024
	.long	73728
	.long	78336
	.long	65536
	.long	69632
	.long	92160
	.long	77824
	.long	65536
	.long	60416
	.long	77312
	.long	78080
	.long	65536
	.long	86016
	.long	90112
	.long	86016
	.long	81920
	.long	107776
	.long	73728
	.long	97280
	.long	85248
	.long	81920
	.long	86016
	.long	69120
	.long	81920
	.long	73728
	.long	77824
	.long	86016
	.long	73728
	.long	73728
	.long	86016
	.long	65536
	.long	65536
	.long	65536
	.long	65536
	.long	73728
	.long	65536
	.long	81920
	.align 32
sSoundNumberToSongMap:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	9
	.word	13
	.word	14
	.word	15
	.word	16
	.word	17
	.word	18
	.word	19
	.word	20
	.word	21
	.word	22
	.word	23
	.word	24
	.word	25
	.word	26
	.word	27
	.word	28
	.word	29
	.word	31
	.word	32
	.word	33
	.word	34
	.word	35
	.word	36
	.word	37
	.word	38
	.word	41
	.word	42
	.word	43
	.word	44
	.word	45
	.word	46
	.word	48
	.word	49
	.word	50
	.word	51
	.word	52
	.word	53
	.word	54
	.word	55
	.word	56
	.word	57
	.word	66
	.word	58
	.word	64
	.word	59
	.word	61
	.word	401
	.word	402
	.word	403
	.word	404
	.word	405
	.word	406
	.word	407
	.word	410
	.word	412
	.word	413
	.word	414
	.word	408
	.word	415
	.word	411
	.align 32
sSoundNames:
	.ascii "OPENING         "
	.ascii "TITLE           "
	.ascii "CHARACTER SELECT"
	.ascii "ZONE SELECT     "
	.ascii "ZONE SELECT 2   "
	.ascii "ZONE SELECT 3   "
	.ascii "TIMEATTACK 1    "
	.ascii "OPTIONS         "
	.ascii "ZONE 1-1        "
	.ascii "ZONE 1-2        "
	.ascii "ZONE 2-1        "
	.ascii "ZONE 2-2        "
	.ascii "ZONE 3-1        "
	.ascii "ZONE 3-2        "
	.ascii "ZONE 4-1        "
	.ascii "ZONE 4-2        "
	.ascii "ZONE 5-1        "
	.ascii "ZONE 5-2        "
	.ascii "ZONE 6-1        "
	.ascii "ZONE 6-2        "
	.ascii "ZONE 7-1        "
	.ascii "ZONE 7-2        "
	.ascii "FINAL ZONE      "
	.ascii "EXTRA ZONE      "
	.ascii "UNRIVAL         "
	.ascii "DROWN           "
	.ascii "BOSS            "
	.ascii "BOSS-PINCH      "
	.ascii "KNUCKLES BOSS   "
	.ascii "7-BOSS          "
	.ascii "7-BOSS-PINCH    "
	.ascii "FINAL BOSS      "
	.ascii "FINAL BOSS-PINCH"
	.ascii "GAME OVER       "
	.ascii "FINAL ENDING    "
	.ascii "EXTRA ENDING    "
	.ascii "STAFF ROLL      "
	.ascii "DEMO 1          "
	.ascii "DEMO 2          "
	.ascii "EXTRA DEMO 1    "
	.ascii "EXTRA DEMO 2    "
	.ascii "IN SP STAGE     "
	.ascii "SP STAGE        "
	.ascii "SP STAGE-PINCH  "
	.ascii "ACHIEVEMENT     "
	.ascii "SP CLEAR        "
	.ascii "SP RESULT 1     "
	.ascii "SP RESULT 2     "
	.ascii "SP RESULT 3     "
	.ascii "VS 1            "
	.ascii "VS 2            "
	.ascii "VS 4            "
	.ascii "VS 3            "
	.ascii "VS WAIT         "
	.ascii "ACT CLEAR       "
	.ascii "BOSS CLEAR      "
	.ascii "FINAL CLEAR     "
	.ascii "EXTRA CLEAR     "
	.ascii "TIMEATTACK 2    "
	.ascii "TIMEATTACK 3    "
	.ascii "1_UP            "
	.ascii "CHARACTER       "
	.ascii "VS END          "
	.ascii "VS WAIT         "
	.ascii "VS WAIT         "
	.ascii "CAOS EMERALD 7  "
	.ascii "MESSAGE         "
	.ascii "FANFARE         "
	.align 4
.LC1:
	.word	2
	.word	1
	.align 8
.LC5:
	.word	0
	.word	1
	.word	0
	.word	256
	.align 8
.LC7:
	.long	0
	.long	65536
	.align 8
.LC8:
	.word	0
	.word	2
	.word	0
	.word	256
	.ident	"GCC: (GNU) 13-win32"
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TransformSprite;	.scl	2;	.type	32;	.endef
	.def	UpdateScreenFade;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayAllStop;	.scl	2;	.type	32;	.endef
	.def	MPlayStart;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	OptionsInitBackground;	.scl	2;	.type	32;	.endef
	.def	sub_806A568;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gBgPaletteEffects, "dr"
	.globl	.refptr.gBgPaletteEffects
	.linkonce	discard
.refptr.gBgPaletteEffects:
	.quad	gBgPaletteEffects
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
	.section	.rdata$.refptr.gBgGradientPalette, "dr"
	.globl	.refptr.gBgGradientPalette
	.linkonce	discard
.refptr.gBgGradientPalette:
	.quad	gBgGradientPalette
	.section	.rdata$.refptr.gMPlayInfo_BGM, "dr"
	.globl	.refptr.gMPlayInfo_BGM
	.linkonce	discard
.refptr.gMPlayInfo_BGM:
	.quad	gMPlayInfo_BGM
	.section	.rdata$.refptr.gSongTable, "dr"
	.globl	.refptr.gSongTable
	.linkonce	discard
.refptr.gSongTable:
	.quad	gSongTable
	.section	.rdata$.refptr.gPressedKeys, "dr"
	.globl	.refptr.gPressedKeys
	.linkonce	discard
.refptr.gPressedKeys:
	.quad	gPressedKeys
	.section	.rdata$.refptr.gMPlayTable, "dr"
	.globl	.refptr.gMPlayTable
	.linkonce	discard
.refptr.gMPlayTable:
	.quad	gMPlayTable
	.section	.rdata$.refptr.gRepeatedKeys, "dr"
	.globl	.refptr.gRepeatedKeys
	.linkonce	discard
.refptr.gRepeatedKeys:
	.quad	gRepeatedKeys
	.section	.rdata$.refptr.gLoadedSaveGame, "dr"
	.globl	.refptr.gLoadedSaveGame
	.linkonce	discard
.refptr.gLoadedSaveGame:
	.quad	gLoadedSaveGame
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
	.section	.rdata$.refptr.gSoundInfo, "dr"
	.globl	.refptr.gSoundInfo
	.linkonce	discard
.refptr.gSoundInfo:
	.quad	gSoundInfo
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
	.section	.rdata$.refptr.BgPaletteEffectGradient, "dr"
	.globl	.refptr.BgPaletteEffectGradient
	.linkonce	discard
.refptr.BgPaletteEffectGradient:
	.quad	BgPaletteEffectGradient
	.section	.rdata$.refptr.gNumHBlankCallbacks, "dr"
	.globl	.refptr.gNumHBlankCallbacks
	.linkonce	discard
.refptr.gNumHBlankCallbacks:
	.quad	gNumHBlankCallbacks
	.section	.rdata$.refptr.gBgScrollRegs, "dr"
	.globl	.refptr.gBgScrollRegs
	.linkonce	discard
.refptr.gBgScrollRegs:
	.quad	gBgScrollRegs
	.section	.rdata$.refptr.gHBlankCallbacks, "dr"
	.globl	.refptr.gHBlankCallbacks
	.linkonce	discard
.refptr.gHBlankCallbacks:
	.quad	gHBlankCallbacks
	.section	.rdata$.refptr.gNumHBlankIntrs, "dr"
	.globl	.refptr.gNumHBlankIntrs
	.linkonce	discard
.refptr.gNumHBlankIntrs:
	.quad	gNumHBlankIntrs
	.section	.rdata$.refptr.gProfileScreenSubMenuNextVramAddress, "dr"
	.globl	.refptr.gProfileScreenSubMenuNextVramAddress
	.linkonce	discard
.refptr.gProfileScreenSubMenuNextVramAddress:
	.quad	gProfileScreenSubMenuNextVramAddress
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gProfileScreenNextVramAddress, "dr"
	.globl	.refptr.gProfileScreenNextVramAddress
	.linkonce	discard
.refptr.gProfileScreenNextVramAddress:
	.quad	gProfileScreenNextVramAddress
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
