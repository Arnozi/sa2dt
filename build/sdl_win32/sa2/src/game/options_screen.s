	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	ProfileNameScreenInputComplete;	.scl	3;	.type	32;	.endef
	.seh_proc	ProfileNameScreenInputComplete
ProfileNameScreenInputComplete:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r9, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[r9]
	cmp	BYTE PTR 1299[rdx], 0
	jne	.L2
	mov	rax, QWORD PTR 464[rdx]
	mov	r8, QWORD PTR 464[rax]
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L3:
	movzx	ecx, WORD PTR 1284[rdx+rax]
	mov	WORD PTR [r8+rax], cx
	add	rax, 2
	cmp	rax, 12
	jne	.L3
.L2:
	mov	rax, QWORD PTR .LC0[rip]
	mov	DWORD PTR 456[rdx], 255
	mov	QWORD PTR 448[rdx], rax
	lea	rax, ProfileNameScreenFadeOutAndExit[rip]
	mov	QWORD PTR 40[r9], rax
	ret
	.seh_endproc
	.p2align 4
	.def	OptionsScreenTaskDestroyHandler;	.scl	3;	.type	32;	.endef
	.seh_proc	OptionsScreenTaskDestroyHandler
OptionsScreenTaskDestroyHandler:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.def	sub_806BA14;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_806BA14
sub_806BA14:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	rax, QWORD PTR gUnknown_080D95C8[rip]
	mov	QWORD PTR 6[rsp], rax
	movzx	eax, WORD PTR gUnknown_080D95C8[rip+8]
	mov	r9d, ecx
	mov	r8d, edx
	mov	DWORD PTR 2[rsp], -65481
	lea	rcx, 2[rsp]
	mov	WORD PTR 14[rsp], ax
	mov	eax, 55
	cmp	r9w, 1
	je	.L16
.L8:
	movzx	edx, r8w
	.p2align 4,,10
	.p2align 3
.L11:
	cmp	r8w, ax
	jb	.L10
	add	eax, 4
	cmp	edx, eax
	jle	.L14
.L10:
	movzx	eax, WORD PTR 2[rcx]
	add	rcx, 2
	cmp	ax, -1
	jne	.L11
	xor	eax, eax
.L7:
	add	rsp, 24
	ret
	.p2align 4,,10
	.p2align 3
.L16:
	mov	eax, 1
	cmp	dx, 2
	je	.L7
	lea	rcx, 6[rsp]
	mov	eax, 11
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L14:
	mov	eax, 1
	add	rsp, 24
	ret
	.seh_endproc
	.def	sub_806A664_A;	.scl	3;	.type	32;	.endef
	.set	sub_806A664_A,sub_806BA14
	.p2align 4
	.def	sub_806A664;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_806A664
sub_806A664:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	movabs	rax, 69524413752672267
	mov	r10d, edx
	mov	ebx, edx
	mov	r11d, ecx
	movsx	ecx, cx
	movabs	rdx, 72339305254354977
	movzx	esi, r10w
	mov	QWORD PTR 32[rsp], rax
	mov	QWORD PTR 40[rsp], rdx
	mov	edx, esi
	call	sub_806A664_A
	test	ax, ax
	je	.L18
	cmp	r11w, 1
	jne	.L20
	cmp	r10w, 2
	je	.L23
	cmp	r11w, 1
	jne	.L20
	xor	eax, eax
	lea	r8, 32[rsp]
.L22:
	movzx	edx, WORD PTR [r8+rax*4]
	cmp	bx, dx
	jb	.L21
	movzx	ecx, dx
	add	ecx, 4
	cmp	esi, ecx
	jle	.L32
.L21:
	add	rax, 1
	cmp	rax, 4
	jne	.L22
.L18:
	mov	eax, ebx
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L20:
	lea	eax, -55[r10]
	add	r10w, 207
	cmp	ax, 5
	cmovb	ebx, r10d
	mov	eax, ebx
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	mov	ebx, 267
	mov	eax, ebx
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L32:
	cdqe
	mov	ebx, r10d
	sub	ebx, edx
	add	bx, WORD PTR 34[rsp+rax*4]
	jmp	.L18
	.seh_endproc
	.p2align 4
	.def	LanguageScreenHandleLanguageChanged;	.scl	3;	.type	32;	.endef
	.seh_proc	LanguageScreenHandleLanguageChanged
LanguageScreenHandleLanguageChanged:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	lea	rsi, sLanguageScreenNewControlsText[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	movsx	ecx, BYTE PTR 696[rbx]
	movsx	rdx, cl
	mov	eax, ecx
	lea	rdx, [rdx+rdx*2]
	add	rdx, rdx
	add	rsi, rdx
	cmp	BYTE PTR 697[rbx], 1
	je	.L35
	lea	rsi, sLanguageScreenEditControlsText[rip]
	add	rsi, rdx
.L35:
	mov	edx, eax
	sal	edx, 4
	sub	edx, eax
	lea	eax, 40[rdx]
	mov	WORD PTR 552[rbx], ax
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L36:
	mov	rdx, rax
	sal	rdx, 6
	cmp	ecx, eax
	setne	BYTE PTR 181[rbx+rdx]
	add	rax, 1
	cmp	rax, 6
	jne	.L36
	movsx	rcx, ecx
	lea	rax, sLanguageScreenTitles[rip]
	lea	rdx, [rcx+rcx*2]
	mov	rcx, rbx
	lea	rax, [rax+rdx*2]
	movzx	edx, WORD PTR 2[rax]
	movzx	eax, WORD PTR [rax]
	mov	BYTE PTR 48[rbx], dl
	mov	WORD PTR 18[rbx], ax
	call	UpdateSpriteAnimation
	movzx	eax, WORD PTR 2[rsi]
	lea	rcx, 64[rbx]
	mov	BYTE PTR 112[rbx], al
	movzx	eax, WORD PTR [rsi]
	mov	WORD PTR 82[rbx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	UpdateSpriteAnimation
	.seh_endproc
	.p2align 4
	.def	LanguageScreenRenderUI;	.scl	3;	.type	32;	.endef
	.seh_proc	LanguageScreenRenderUI
LanguageScreenRenderUI:
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
	mov	rcx, rdi
	lea	rbx, 128[rdi]
	lea	rsi, 512[rdi]
	call	DisplaySprite
	lea	rcx, 64[rdi]
	call	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L39:
	mov	rcx, rbx
	add	rbx, 64
	call	DisplaySprite
	cmp	rsi, rbx
	jne	.L39
	mov	rcx, rsi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.def	DeleteScreenRenderUI;	.scl	3;	.type	32;	.endef
	.seh_proc	DeleteScreenRenderUI
DeleteScreenRenderUI:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	mov	rcx, rbx
	call	DisplaySprite
	lea	rcx, 64[rbx]
	call	DisplaySprite
	lea	rcx, 128[rbx]
	call	DisplaySprite
	lea	rcx, 192[rbx]
	call	DisplaySprite
	lea	rcx, 256[rbx]
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.def	Task_DeleteScreenConfrimationMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_DeleteScreenConfrimationMain
Task_DeleteScreenConfrimationMain:
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
	mov	rbx, QWORD PTR .refptr.gRepeatedKeys[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rsi, QWORD PTR 24[rax]
	test	BYTE PTR [rbx], 48
	jne	.L54
.L43:
	call	DeleteScreenRenderUI
	test	BYTE PTR [rbx], 48
	jne	.L42
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	movzx	eax, WORD PTR [rax]
	test	al, 1
	jne	.L55
	test	al, 2
	jne	.L56
.L42:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L54:
	mov	ecx, 108
	call	m4aSongNumStart
	cmp	BYTE PTR 440[rsi], 0
	sete	al
	setne	BYTE PTR 245[rsi]
	mov	BYTE PTR 440[rsi], al
	mov	BYTE PTR 181[rsi], al
	sal	eax, 15
	sar	ax, 15
	and	eax, 60
	add	eax, 56
	mov	WORD PTR 294[rsi], ax
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L56:
	mov	ecx, 107
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rdi]
.L53:
	lea	rdx, Task_DeleteScreenHandleExit[rip]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L55:
	mov	ecx, 106
	call	m4aSongNumStart
	cmp	BYTE PTR 440[rsi], 0
	mov	rax, QWORD PTR [rdi]
	jne	.L53
	lea	rdx, Task_DeleteScreenCreateAbsoluteConfirmation[rip]
	mov	QWORD PTR 40[rax], rdx
	jmp	.L42
	.seh_endproc
	.p2align 4
	.def	Task_DeleteScreenHandleExit;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_DeleteScreenHandleExit
Task_DeleteScreenHandleExit:
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
	call	DeleteScreenRenderUI
	mov	rax, QWORD PTR .LC0[rip]
	mov	DWORD PTR 424[rbx], 255
	lea	rcx, 416[rbx]
	mov	QWORD PTR 416[rbx], rax
	call	UpdateScreenFade
	mov	rax, QWORD PTR [rsi]
	lea	rdx, Task_DeleteScreenFadeOutAndExit[rip]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_DeleteScreenCreateAbsoluteConfirmation;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_DeleteScreenCreateAbsoluteConfirmation
Task_DeleteScreenCreateAbsoluteConfirmation:
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
	movsx	rax, BYTE PTR 442[rbx]
	mov	rcx, rbx
	lea	rdx, [rax+rax*2]
	lea	rax, sDeleteScreenAbsoluteConfirmTitleText[rip]
	lea	rax, [rax+rdx*2]
	movzx	edx, WORD PTR 2[rax]
	movzx	eax, WORD PTR [rax]
	mov	BYTE PTR 48[rbx], dl
	mov	WORD PTR 18[rbx], ax
	call	UpdateSpriteAnimation
	mov	eax, 116
	mov	BYTE PTR 440[rbx], 1
	mov	WORD PTR 294[rbx], ax
	mov	BYTE PTR 181[rbx], 1
	mov	BYTE PTR 245[rbx], 0
	call	DeleteScreenRenderUI
	mov	rax, QWORD PTR [rsi]
	lea	rcx, Task_DeleteScreenAbsoluteConfirmMain[rip]
	mov	QWORD PTR 40[rax], rcx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_DeleteScreenAbsoluteConfirmMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_DeleteScreenAbsoluteConfirmMain
Task_DeleteScreenAbsoluteConfirmMain:
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
	mov	rbx, QWORD PTR .refptr.gRepeatedKeys[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rsi, QWORD PTR 24[rax]
	test	BYTE PTR [rbx], 48
	jne	.L72
.L60:
	call	DeleteScreenRenderUI
	test	BYTE PTR [rbx], 48
	jne	.L59
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	movzx	eax, WORD PTR [rax]
	test	al, 1
	jne	.L73
	test	al, 2
	jne	.L74
.L59:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L73:
	cmp	BYTE PTR 440[rsi], 0
	jne	.L63
	mov	BYTE PTR 443[rsi], 1
	mov	ecx, 220
	call	m4aSongNumStart
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L72:
	mov	ecx, 108
	call	m4aSongNumStart
	cmp	BYTE PTR 440[rsi], 0
	sete	al
	setne	BYTE PTR 245[rsi]
	mov	BYTE PTR 440[rsi], al
	mov	BYTE PTR 181[rsi], al
	sal	eax, 15
	sar	ax, 15
	and	eax, 60
	add	eax, 56
	mov	WORD PTR 294[rsi], ax
	jmp	.L60
	.p2align 4,,10
	.p2align 3
.L74:
	mov	ecx, 107
	call	m4aSongNumStart
.L71:
	mov	rax, QWORD PTR [rdi]
	lea	rdx, Task_DeleteScreenHandleExit[rip]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L63:
	mov	ecx, 106
	call	m4aSongNumStart
	jmp	.L71
	.seh_endproc
	.p2align 4
	.def	ProfileNameScreenRenderUI;	.scl	3;	.type	32;	.endef
	.seh_proc	ProfileNameScreenRenderUI
ProfileNameScreenRenderUI:
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rsi, QWORD PTR 24[rax]
	mov	rcx, rsi
	lea	rbp, 472[rsi]
	lea	rdi, 600[rsi]
	call	DisplaySprite
	lea	rcx, 64[rsi]
	lea	rbx, 896[rsi]
	call	DisplaySprite
	lea	rcx, 128[rsi]
	call	DisplaySprite
	lea	rcx, 192[rsi]
	call	DisplaySprite
	movsx	eax, BYTE PTR 826[rsi]
	mov	edx, 954
	mov	WORD PTR 490[rsi], dx
	cmp	al, 10
	jg	.L76
	add	eax, 2
	mov	BYTE PTR 520[rsi], 7
	mov	rcx, rbp
	sal	eax, 4
	mov	WORD PTR 510[rsi], ax
	movsx	ax, BYTE PTR 827[rsi]
	sal	eax, 4
	add	eax, 47
	mov	WORD PTR 512[rsi], ax
	call	UpdateSpriteAnimation
	mov	rcx, rbp
	lea	rbp, 536[rsi]
	call	DisplaySprite
	movsx	dx, BYTE PTR 827[rsi]
	movsx	eax, BYTE PTR 826[rsi]
	lea	r8d, [rdx+rdx*4]
	mov	ecx, eax
	add	ax, WORD PTR 824[rsi]
	lea	r8d, [rdx+r8*2]
	add	eax, r8d
	mov	WORD PTR 1296[rsi], ax
	cmp	ax, 267
	ja	.L91
	mov	r8d, eax
	and	r8w, 256
	cmp	r8w, 1
	sbb	r8d, r8d
	and	r8d, -8
	add	r8w, 963
.L77:
	add	ecx, 2
	sal	edx, 4
	mov	WORD PTR 554[rsi], r8w
	sal	ecx, 4
	add	edx, 47
	mov	BYTE PTR 584[rsi], al
	mov	WORD PTR 574[rsi], cx
	mov	rcx, rbp
	mov	WORD PTR 576[rsi], dx
	call	UpdateSpriteAnimation
	mov	rcx, rbp
	call	DisplaySprite
	jmp	.L79
	.p2align 4,,10
	.p2align 3
.L76:
	mov	eax, 203
	mov	BYTE PTR 520[rsi], 8
	mov	rcx, rbp
	mov	WORD PTR 510[rsi], ax
	movsx	ax, BYTE PTR 827[rsi]
	sal	eax, 4
	add	eax, 39
	mov	WORD PTR 512[rsi], ax
	call	UpdateSpriteAnimation
	mov	rcx, rbp
	call	DisplaySprite
.L79:
	mov	rcx, rdi
	lea	rbp, 664[rsi]
	call	UpdateSpriteAnimation
	mov	rcx, rbp
	call	UpdateSpriteAnimation
	cmp	BYTE PTR 826[rsi], 10
	jg	.L81
	cmp	WORD PTR 1296[rsi], 10
	ja	.L82
.L83:
	mov	rcx, rbp
	call	DisplaySprite
.L81:
	movzx	eax, WORD PTR 1282[rsi]
	cmp	ax, 5
	jbe	.L96
.L85:
	lea	rdi, 1284[rsi]
	add	rsi, 1280
	jmp	.L86
	.p2align 4,,10
	.p2align 3
.L97:
	mov	edx, eax
	and	dx, 256
	cmp	dx, 1
	sbb	edx, edx
	and	edx, -8
	add	dx, 963
.L87:
	mov	WORD PTR 18[rbx], dx
	mov	rcx, rbx
	add	rdi, 2
	mov	BYTE PTR 48[rbx], al
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rbx, 64
	call	DisplaySprite
	cmp	rbx, rsi
	je	.L75
.L86:
	movzx	eax, WORD PTR [rdi]
	cmp	ax, -1
	je	.L75
	cmp	ax, 267
	jbe	.L97
	mov	eax, 17
	mov	edx, 955
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L75:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L91:
	mov	eax, 17
	mov	r8d, 955
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L82:
	mov	rcx, rdi
	call	DisplaySprite
	cmp	WORD PTR 1296[rsi], 230
	jbe	.L83
	movzx	eax, WORD PTR 1282[rsi]
	cmp	ax, 5
	ja	.L85
.L96:
	lea	eax, [rax+rax*2]
	lea	rcx, 832[rsi]
	lea	eax, 161[0+rax*4]
	mov	WORD PTR 870[rsi], ax
	call	DisplaySprite
	jmp	.L85
	.seh_endproc
	.p2align 4
	.def	Task_ProfileNameScreenFadeIn;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_ProfileNameScreenFadeIn
Task_ProfileNameScreenFadeIn:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rbx]
	mov	rsi, QWORD PTR 24[rax]
	call	ProfileNameScreenRenderUI
	lea	rcx, 448[rsi]
	call	UpdateScreenFade
	test	al, al
	je	.L98
	xor	eax, eax
	lea	rdx, Task_ProfileNameScreenMain[rip]
	mov	WORD PTR 1296[rsi], ax
	mov	rax, QWORD PTR [rbx]
	mov	QWORD PTR 40[rax], rdx
.L98:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	TimeRecordsScreenRenderCoursesViewUI;	.scl	3;	.type	32;	.endef
	.seh_proc	TimeRecordsScreenRenderCoursesViewUI
TimeRecordsScreenRenderCoursesViewUI:
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbp, QWORD PTR 24[rax]
	lea	rax, 240[rbp]
	mov	DWORD PTR 40[rsp], ecx
	lea	r13, 112[rbp]
	mov	QWORD PTR 32[rsp], rax
	movzx	eax, BYTE PTR 2432[rbp]
	lea	rbx, 1088[rbp]
	lea	rcx, 896[rbp]
	lea	rdi, 368[rbp]
	lea	rsi, 432[rbp]
	movzx	eax, BYTE PTR 2438[rbp+rax]
	lea	r12, 176[rbp]
	lea	r15, 960[rbp]
	lea	r14, 1024[rbp]
	test	ax, ax
	mov	DWORD PTR 44[rsp], eax
	je	.L104
	call	DisplaySprite
	mov	rcx, r15
	call	DisplaySprite
	mov	rcx, r14
	call	DisplaySprite
	mov	rcx, r13
	call	DisplaySprite
	mov	rcx, r12
	call	DisplaySprite
	cmp	BYTE PTR 2445[rbp], 2
	mov	eax, DWORD PTR 44[rsp]
	je	.L105
	cmp	WORD PTR 40[rsp], 0
	jne	.L106
.L122:
	cmp	BYTE PTR 2437[rbp], 1
	mov	eax, 4
	jbe	.L106
.L107:
	sal	rax, 6
	lea	r12, 432[rbp+rax]
.L110:
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	add	rsi, 64
	call	DisplaySprite
	cmp	rsi, r12
	jne	.L110
.L111:
	cmp	BYTE PTR 2444[rbp], 0
	jne	.L121
	mov	rcx, QWORD PTR 32[rsp]
	call	DisplaySprite
	lea	rcx, 304[rbp]
	call	DisplaySprite
.L112:
	mov	rcx, rdi
	add	rbp, 2432
	call	DisplaySprite
.L113:
	mov	rcx, rbx
	call	DisplaySprite
	lea	rcx, 64[rbx]
	call	DisplaySprite
	lea	rcx, 128[rbx]
	call	DisplaySprite
	lea	rcx, 192[rbx]
	call	DisplaySprite
	lea	rcx, 256[rbx]
	call	DisplaySprite
	lea	rcx, 320[rbx]
	call	DisplaySprite
	lea	rcx, 384[rbx]
	add	rbx, 448
	call	DisplaySprite
	cmp	rbx, rbp
	jne	.L113
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
.L104:
	call	DisplaySprite
	mov	rcx, r15
	call	DisplaySprite
	mov	rcx, r14
	call	DisplaySprite
	mov	rcx, r13
	call	DisplaySprite
	mov	rcx, r12
	call	DisplaySprite
	cmp	BYTE PTR 2445[rbp], 2
	je	.L111
	cmp	WORD PTR 40[rsp], 0
	jne	.L106
	jmp	.L122
	.p2align 4,,10
	.p2align 3
.L121:
	mov	rcx, QWORD PTR 32[rsp]
	call	DisplaySprite
	jmp	.L112
	.p2align 4,,10
	.p2align 3
.L105:
	cmp	ax, 1
	je	.L111
	.p2align 4,,10
	.p2align 3
.L106:
	mov	eax, 2
	jmp	.L107
	.seh_endproc
	.p2align 4
	.def	Task_TimeRecordsScreenCoursesViewFadeIn;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_TimeRecordsScreenCoursesViewFadeIn
Task_TimeRecordsScreenCoursesViewFadeIn:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	xor	ecx, ecx
	mov	rax, QWORD PTR [rbx]
	mov	rsi, QWORD PTR 24[rax]
	call	TimeRecordsScreenRenderCoursesViewUI
	mov	rcx, rsi
	call	UpdateScreenFade
	test	al, al
	je	.L123
	mov	rax, QWORD PTR [rbx]
	lea	rdx, Task_TimeRecordsScreenCoursesViewMain[rip]
	mov	BYTE PTR 2435[rsi], 0
	mov	QWORD PTR 40[rax], rdx
.L123:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_TimeRecordsScreenCoursesViewMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_TimeRecordsScreenCoursesViewMain
Task_TimeRecordsScreenCoursesViewMain:
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
	xor	ecx, ecx
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, BYTE PTR 2432[rbx]
	movzx	esi, BYTE PTR 2438[rbx+rax]
	call	TimeRecordsScreenRenderCoursesViewUI
	mov	rbp, QWORD PTR .refptr.gRepeatedKeys[rip]
	movzx	eax, WORD PTR 0[rbp]
	test	al, 48
	je	.L129
	mov	eax, 27
	cmp	sil, al
	cmova	esi, eax
	mov	eax, 1
	test	sil, sil
	cmove	esi, eax
	cmp	BYTE PTR 2445[rbx], 2
	movzx	r12d, sil
	jne	.L161
	cmp	r12w, 1
	je	.L128
.L161:
	mov	ecx, 108
	call	m4aSongNumStart
	movzx	eax, WORD PTR 0[rbp]
	test	al, 32
	je	.L132
	cmp	BYTE PTR 2444[rbx], 0
	jne	.L133
	cmp	BYTE PTR 2445[rbx], 2
	movzx	eax, BYTE PTR 2434[rbx]
	je	.L186
	test	al, al
	jne	.L139
	mov	BYTE PTR 2434[rbx], 1
.L133:
	movzx	edx, BYTE PTR 2433[rbx]
	lea	eax, -1[rdx]
	test	dl, dl
	mov	edx, 6
	cmove	eax, edx
	lea	rdx, Task_TimeRecordsScreenHandleCourseChange[rip]
	mov	BYTE PTR 2433[rbx], al
	mov	rax, QWORD PTR [rdi]
	mov	QWORD PTR 40[rax], rdx
.L128:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L129:
	cmp	BYTE PTR 2445[rbx], 2
	je	.L151
	test	al, -64
	jne	.L187
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	movzx	eax, WORD PTR [rax]
.L157:
	test	al, 2
	je	.L128
	mov	ecx, 107
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rdi]
	mov	rcx, QWORD PTR .LC0[rip]
	mov	rdx, QWORD PTR 24[rax]
	mov	QWORD PTR [rdx], rcx
	mov	DWORD PTR 8[rdx], 255
	lea	rdx, Task_TimeRecordsScreenFadeToPrevious[rip]
	mov	QWORD PTR 40[rax], rdx
	jmp	.L128
	.p2align 4,,10
	.p2align 3
.L132:
	mov	rdx, QWORD PTR [rdi]
	test	al, 16
	je	.L138
	movzx	eax, BYTE PTR 2444[rbx]
	test	al, al
	jne	.L142
	cmp	BYTE PTR 2445[rbx], 2
	movzx	ecx, BYTE PTR 2434[rbx]
	je	.L188
	test	cl, cl
	je	.L148
	movzx	ecx, BYTE PTR 2433[rbx]
	mov	BYTE PTR 2434[rbx], 0
	lea	r8d, 1[rcx]
	cmp	cl, 6
	cmovb	eax, r8d
	mov	BYTE PTR 2433[rbx], al
	lea	rax, Task_TimeRecordsScreenHandleCourseChange[rip]
	mov	QWORD PTR 40[rdx], rax
	jmp	.L128
	.p2align 4,,10
	.p2align 3
.L187:
	movzx	eax, BYTE PTR 2437[rbx]
	mov	r12d, eax
	sub	ax, 1
	mov	esi, eax
	je	.L128
	mov	ecx, 108
	call	m4aSongNumStart
	movzx	eax, WORD PTR 0[rbp]
	test	al, 64
	jne	.L189
	test	al, -128
	je	.L155
	movzx	ecx, BYTE PTR 2432[rbx]
	movsx	eax, si
	mov	edx, ecx
	add	edx, 1
	cmp	ecx, eax
	mov	eax, 0
	cmovl	eax, edx
	mov	BYTE PTR 2432[rbx], al
.L155:
	mov	rax, QWORD PTR [rdi]
	lea	rdx, Task_TimeRecordsScreenCharacterChangeAnimOut[rip]
	mov	BYTE PTR 2435[rbx], 4
	mov	QWORD PTR 40[rax], rdx
	jmp	.L128
	.p2align 4,,10
	.p2align 3
.L186:
	test	al, al
	je	.L190
.L139:
	sub	eax, 1
	mov	BYTE PTR 2434[rbx], al
.L138:
	mov	rax, QWORD PTR [rdi]
	lea	rdx, Task_TimeRecordsScreenHandleActChange[rip]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L151:
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	movzx	eax, WORD PTR [rax]
	test	al, 1
	je	.L157
	mov	ecx, 106
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rdi]
	mov	rcx, QWORD PTR .LC0[rip]
	mov	rdx, QWORD PTR 24[rax]
	mov	QWORD PTR [rdx], rcx
	mov	DWORD PTR 8[rdx], 255
	lea	rdx, Task_TimeRecordsScreenFadeOutToSelectedCourse[rip]
	mov	QWORD PTR 40[rax], rdx
	jmp	.L128
	.p2align 4,,10
	.p2align 3
.L142:
	movzx	ecx, BYTE PTR 2433[rbx]
	lea	eax, 1[rcx]
	cmp	cl, 6
	mov	ecx, 0
	cmovnb	eax, ecx
	mov	BYTE PTR 2433[rbx], al
	lea	rax, Task_TimeRecordsScreenHandleCourseChange[rip]
	mov	QWORD PTR 40[rdx], rax
	jmp	.L128
	.p2align 4,,10
	.p2align 3
.L148:
	mov	BYTE PTR 2434[rbx], 1
	jmp	.L138
	.p2align 4,,10
	.p2align 3
.L189:
	movzx	edx, BYTE PTR 2432[rbx]
	sub	r12d, 1
	lea	eax, -1[rdx]
	test	dl, dl
	cmove	eax, r12d
	mov	BYTE PTR 2432[rbx], al
	jmp	.L155
	.p2align 4,,10
	.p2align 3
.L190:
	movzx	eax, BYTE PTR 2433[rbx]
	test	al, al
	je	.L136
	sub	eax, 1
	mov	edx, 1
.L137:
	mov	BYTE PTR 2433[rbx], al
	mov	rax, QWORD PTR [rdi]
	lea	rcx, Task_TimeRecordsScreenHandleCourseChange[rip]
	mov	BYTE PTR 2434[rbx], dl
	mov	QWORD PTR 40[rax], rcx
	jmp	.L128
	.p2align 4,,10
	.p2align 3
.L188:
	movzx	r8d, BYTE PTR 2433[rbx]
	sar	r12w, 2
	test	cl, cl
	jne	.L191
	and	esi, 3
	mov	BYTE PTR 2434[rbx], 1
	cmp	sil, 1
	jne	.L147
	movsx	r12d, r12w
	cmp	r8d, r12d
	jl	.L147
	xor	eax, eax
	mov	WORD PTR 2433[rbx], ax
	lea	rax, Task_TimeRecordsScreenHandleCourseChange[rip]
	mov	QWORD PTR 40[rdx], rax
	jmp	.L128
	.p2align 4,,10
	.p2align 3
.L147:
	lea	rax, Task_TimeRecordsScreenHandleActChange[rip]
	mov	QWORD PTR 40[rdx], rax
	jmp	.L128
	.p2align 4,,10
	.p2align 3
.L136:
	mov	eax, r12d
	and	esi, 3
	sar	ax, 2
	cmp	sil, 1
	setne	dl
	jmp	.L137
	.p2align 4,,10
	.p2align 3
.L191:
	cmp	r8b, 5
	ja	.L145
	add	r8d, 1
	movsx	r12d, r12w
	movzx	ecx, r8b
	cmp	ecx, r12d
	cmovle	eax, r8d
.L145:
	mov	BYTE PTR 2433[rbx], al
	lea	rax, Task_TimeRecordsScreenHandleCourseChange[rip]
	mov	BYTE PTR 2434[rbx], 0
	mov	QWORD PTR 40[rdx], rax
	jmp	.L128
	.seh_endproc
	.p2align 4
	.def	Task_TimeRecordsScreenCharacterChangeAnimIn;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_TimeRecordsScreenCharacterChangeAnimIn
Task_TimeRecordsScreenCharacterChangeAnimIn:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rbx]
	mov	rsi, QWORD PTR 24[rax]
	movzx	eax, BYTE PTR 2435[rsi]
	add	eax, 1
	mov	BYTE PTR 2435[rsi], al
	cmp	al, 4
	ja	.L193
	movzx	eax, al
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	lea	eax, [rax+rax*8]
	lea	eax, -426[rax+rax]
	mov	WORD PTR 4[rdx], ax
.L194:
	mov	ecx, 1
	call	TimeRecordsScreenRenderCoursesViewUI
	cmp	BYTE PTR 2435[rsi], 9
	jbe	.L192
	mov	rax, QWORD PTR [rbx]
	lea	rcx, Task_TimeRecordsScreenCourseChangeAnim[rip]
	mov	BYTE PTR 2435[rsi], 0
	mov	QWORD PTR 40[rax], rcx
.L192:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L193:
	cmp	al, 6
	jbe	.L194
	movzx	eax, al
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	lea	eax, -54[rax+rax*8]
	lea	eax, -426[rax+rax]
	mov	WORD PTR 8[rdx], ax
	jmp	.L194
	.seh_endproc
	.p2align 4
	.def	Task_TimeRecordsScreenCourseChangeAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_TimeRecordsScreenCourseChangeAnim
Task_TimeRecordsScreenCourseChangeAnim:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	xor	r8d, r8d
	mov	r10d, 8
	mov	rax, QWORD PTR [rbx]
	mov	rsi, QWORD PTR 24[rax]
	movzx	eax, BYTE PTR 2435[rsi]
	lea	rdx, 1126[rsi]
	lea	ecx, 1[rax]
	mov	BYTE PTR 2435[rsi], cl
	movzx	ecx, cl
.L198:
	lea	eax, -1[rcx]
	cmp	ax, 7
	ja	.L197
	movzx	eax, cx
	mov	r9d, r10d
	sub	r9d, eax
	mov	eax, r9d
	sal	eax, 4
	sub	eax, r9d
	add	eax, eax
	sub	eax, r8d
	lea	r9d, 32[rax]
	mov	WORD PTR 128[rdx], r9w
	lea	r9d, 48[rax]
	mov	WORD PTR [rdx], r9w
	lea	r9d, 96[rax]
	mov	WORD PTR 64[rdx], r9w
	lea	r9d, 64[rax]
	mov	WORD PTR 192[rdx], r9w
	lea	r9d, 80[rax]
	mov	WORD PTR 256[rdx], r9w
	lea	r9d, 112[rax]
	sub	ax, -128
	mov	WORD PTR 320[rdx], r9w
	mov	WORD PTR 384[rdx], ax
.L197:
	sub	r8d, 8
	sub	ecx, 8
	add	rdx, 448
	cmp	r8w, -24
	jne	.L198
	xor	ecx, ecx
	call	TimeRecordsScreenRenderCoursesViewUI
	cmp	BYTE PTR 2435[rsi], 31
	jbe	.L196
	mov	rax, QWORD PTR [rbx]
	lea	rbx, Task_TimeRecordsScreenCoursesViewMain[rip]
	mov	BYTE PTR 2435[rsi], 0
	mov	QWORD PTR 40[rax], rbx
.L196:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	TimeRecordsScreenRenderModeChoiceUI;	.scl	3;	.type	32;	.endef
	.seh_proc	TimeRecordsScreenRenderModeChoiceUI
TimeRecordsScreenRenderModeChoiceUI:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	lea	rcx, 368[rbx]
	lea	rsi, 432[rbx]
	call	DisplaySprite
	lea	rcx, 112[rbx]
	call	DisplaySprite
	lea	rcx, 176[rbx]
	add	rbx, 496
	call	DisplaySprite
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.def	Task_TimeRecordsScreenFadeOutAndExit;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_TimeRecordsScreenFadeOutAndExit
Task_TimeRecordsScreenFadeOutAndExit:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rbx]
	mov	rcx, QWORD PTR 24[rax]
	mov	rsi, QWORD PTR 688[rcx]
	call	UpdateScreenFade
	test	al, al
	je	.L204
	mov	rcx, QWORD PTR [rbx]
	mov	BYTE PTR 475[rsi], 0
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L204:
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TimeRecordsScreenRenderModeChoiceUI
	.seh_endproc
	.p2align 4
	.def	MultiplayerRecordsScreenRenderUI;	.scl	3;	.type	32;	.endef
	.seh_proc	MultiplayerRecordsScreenRenderUI
MultiplayerRecordsScreenRenderUI:
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rsi, QWORD PTR 24[rax]
	lea	rcx, 208[rsi]
	lea	r14, 336[rsi]
	call	DisplaySprite
	lea	rcx, 272[rsi]
	lea	rbp, 400[rsi]
	call	DisplaySprite
	mov	rcx, r14
	lea	rbx, 464[rsi]
	lea	rdi, 848[rsi]
	call	UpdateSpriteAnimation
	mov	rcx, rbp
	lea	r12, 976[rsi]
	lea	r13, 1104[rsi]
	call	UpdateSpriteAnimation
	cmp	BYTE PTR 1266[rsi], 0
	jne	.L221
	mov	rdx, QWORD PTR 1240[rsi]
	mov	eax, 4
.L216:
	cdqe
	imul	rax, rax, 784
	cmp	BYTE PTR 12[rdx+rax], 0
	jne	.L222
	.p2align 4,,10
	.p2align 3
.L210:
	mov	rcx, rbx
	add	rbx, 64
	call	DisplaySprite
	cmp	rdi, rbx
	jne	.L210
	mov	rcx, rdi
	call	DisplaySprite
	lea	rcx, 912[rsi]
	call	DisplaySprite
	mov	rcx, r12
	call	DisplaySprite
	lea	rcx, 1040[rsi]
	call	DisplaySprite
	mov	rcx, r13
	call	DisplaySprite
	lea	rcx, 1168[rsi]
	call	DisplaySprite
	movzx	eax, BYTE PTR 1264[rsi]
	cmp	al, 6
	je	.L223
	movzx	ebx, al
	mov	eax, 5
	imul	rbx, rbx, 784
	add	rbx, QWORD PTR 1240[rsi]
.L212:
	movsx	rdi, ax
	add	rbx, 400
	imul	rdi, rdi, 784
	add	rdi, rbx
	jmp	.L215
	.p2align 4,,10
	.p2align 3
.L213:
	add	rbx, 784
	cmp	rbx, rdi
	je	.L224
.L215:
	cmp	BYTE PTR -388[rbx], 0
	je	.L213
	lea	rsi, -384[rbx]
	.p2align 4,,10
	.p2align 3
.L214:
	mov	rcx, rsi
	add	rsi, 64
	call	DisplaySprite
	cmp	rbx, rsi
	jne	.L214
	mov	rcx, rbx
	call	DisplaySprite
	lea	rcx, 64[rbx]
	call	DisplaySprite
	lea	rcx, 128[rbx]
	call	DisplaySprite
	lea	rcx, 192[rbx]
	call	DisplaySprite
	lea	rcx, 256[rbx]
	call	DisplaySprite
	lea	rcx, 320[rbx]
	add	rbx, 784
	call	DisplaySprite
	cmp	rbx, rdi
	jne	.L215
.L224:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
	.p2align 4,,10
	.p2align 3
.L221:
	mov	rcx, r14
	call	DisplaySprite
	movzx	eax, BYTE PTR 1266[rsi]
	mov	rdx, QWORD PTR 1240[rsi]
	cmp	al, 5
	ja	.L210
	add	eax, 4
	jmp	.L216
	.p2align 4,,10
	.p2align 3
.L223:
	mov	rbx, QWORD PTR 1240[rsi]
	mov	eax, 4
	add	rbx, 4704
	jmp	.L212
	.p2align 4,,10
	.p2align 3
.L222:
	mov	rcx, rbp
	call	DisplaySprite
	jmp	.L210
	.seh_endproc
	.p2align 4
	.def	Task_MultiplayerRecordsScreenMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_MultiplayerRecordsScreenMain
Task_MultiplayerRecordsScreenMain:
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
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rdi, QWORD PTR 1240[rbx]
	call	MultiplayerRecordsScreenRenderUI
	mov	rax, QWORD PTR .refptr.gRepeatedKeys[rip]
	movzx	eax, WORD PTR [rax]
	test	al, -64
	je	.L226
	test	al, 64
	je	.L227
	cmp	BYTE PTR 1266[rbx], 0
	jne	.L238
.L226:
	test	al, 2
	jne	.L239
.L225:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L227:
	test	al, -128
	je	.L226
	movzx	edx, BYTE PTR 1266[rbx]
	cmp	dl, 5
	ja	.L225
	imul	rdx, rdx, 784
	cmp	BYTE PTR 3148[rdi+rdx], 0
	je	.L226
	mov	ecx, 108
	call	m4aSongNumStart
	movzx	eax, BYTE PTR 1266[rbx]
	lea	rcx, Task_MultiplayerRecordsScreenScrollAnim[rip]
	movzx	edx, al
	mov	dh, al
	add	eax, 1
	mov	BYTE PTR 1266[rbx], al
	mov	rax, QWORD PTR [rsi]
	mov	WORD PTR 1264[rbx], dx
	mov	QWORD PTR 40[rax], rcx
	jmp	.L225
	.p2align 4,,10
	.p2align 3
.L239:
	mov	ecx, 107
	lea	rdi, Task_MultiplayerRecordsScreenFadeOutAndExit[rip]
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rsi]
	mov	rcx, QWORD PTR .LC0[rip]
	mov	rdx, QWORD PTR 24[rax]
	mov	QWORD PTR [rdx], rcx
	mov	DWORD PTR 8[rdx], 255
	mov	QWORD PTR 40[rax], rdi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L238:
	mov	ecx, 108
	call	m4aSongNumStart
	movzx	edx, BYTE PTR 1266[rbx]
	lea	ecx, -1[rdx]
	movzx	eax, cl
	mov	BYTE PTR 1266[rbx], cl
	lea	rcx, Task_MultiplayerRecordsScreenScrollAnim[rip]
	mov	ah, dl
	mov	WORD PTR 1264[rbx], ax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rcx
	jmp	.L225
	.seh_endproc
	.p2align 4
	.def	Task_MultiplayerRecordsScreenScrollAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_MultiplayerRecordsScreenScrollAnim
Task_MultiplayerRecordsScreenScrollAnim:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rbx]
	mov	rsi, QWORD PTR 24[rax]
	movzx	eax, BYTE PTR 1248[rsi]
	lea	ecx, 1[rax]
	movzx	eax, BYTE PTR 1266[rsi]
	mov	BYTE PTR 1248[rsi], cl
	movzx	r8d, cl
	cmp	al, BYTE PTR 1265[rsi]
	jnb	.L241
	lea	edx, 72[r8+r8]
.L242:
	cmp	cl, 8
	ja	.L243
	movzx	eax, BYTE PTR 1264[rsi]
	mov	rcx, QWORD PTR 1240[rsi]
	cmp	al, 6
	je	.L245
.L253:
	imul	rax, rax, 784
	mov	r8d, 5
	add	rcx, rax
.L246:
	lea	r8d, [r8+r8*8]
	add	rcx, 400
	lea	r8d, [rdx+r8*2]
	.p2align 4,,10
	.p2align 3
.L248:
	lea	rax, -384[rcx]
.L247:
	mov	WORD PTR 40[rax], dx
	sub	rax, -128
	mov	WORD PTR -24[rax], dx
	cmp	rax, rcx
	jne	.L247
	lea	ecx, 6[rdx]
	add	edx, 18
	mov	WORD PTR 40[rax], cx
	mov	WORD PTR 104[rax], cx
	mov	WORD PTR 168[rax], cx
	mov	WORD PTR 232[rax], cx
	mov	WORD PTR 296[rax], cx
	mov	WORD PTR 360[rax], cx
	lea	rcx, 784[rax]
	cmp	dx, r8w
	jne	.L248
	call	MultiplayerRecordsScreenRenderUI
	cmp	BYTE PTR 1248[rsi], 8
	jbe	.L240
	mov	rax, QWORD PTR [rbx]
	lea	rbx, Task_MultiplayerRecordsScreenMain[rip]
	mov	BYTE PTR 1248[rsi], 0
	mov	QWORD PTR 40[rax], rbx
.L240:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L243:
	mov	BYTE PTR 1264[rsi], al
	mov	rcx, QWORD PTR 1240[rsi]
	mov	edx, 90
	cmp	al, 6
	jne	.L253
.L245:
	add	rcx, 4704
	mov	r8d, 4
	jmp	.L246
	.p2align 4,,10
	.p2align 3
.L241:
	mov	edx, 45
	sub	edx, r8d
	add	edx, edx
	jmp	.L242
	.seh_endproc
	.p2align 4
	.def	PlayerDataMenuRenderUI;	.scl	3;	.type	32;	.endef
	.seh_proc	PlayerDataMenuRenderUI
PlayerDataMenuRenderUI:
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
	mov	rsi, QWORD PTR 24[rax]
	mov	rcx, rsi
	lea	rbx, 128[rsi]
	lea	rdi, 384[rsi]
	call	DisplaySprite
	lea	rcx, 64[rsi]
	call	DisplaySprite
.L255:
	mov	rcx, rbx
	add	rbx, 64
	call	DisplaySprite
	cmp	rdi, rbx
	jne	.L255
	mov	rcx, rdi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.def	Task_PlayerDataMenuOpenAnimWait;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_PlayerDataMenuOpenAnimWait
Task_PlayerDataMenuOpenAnimWait:
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
	mov	rax, QWORD PTR 464[rbx]
	movzx	eax, WORD PTR 864[rax]
	lea	edx, 336[rax]
	mov	WORD PTR 38[rbx], dx
	mov	WORD PTR 102[rbx], dx
	lea	edx, 256[rax]
	add	ax, 254
	mov	WORD PTR 422[rbx], ax
	mov	WORD PTR 166[rbx], dx
	mov	WORD PTR 230[rbx], dx
	mov	WORD PTR 294[rbx], dx
	mov	WORD PTR 358[rbx], dx
	call	PlayerDataMenuRenderUI
	movzx	eax, BYTE PTR 473[rbx]
	add	eax, 1
	cmp	al, 15
	jg	.L258
	mov	BYTE PTR 473[rbx], al
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L258:
	mov	rax, QWORD PTR [rsi]
	lea	rcx, Task_PlayerDataMenuMain[rip]
	mov	BYTE PTR 473[rbx], 0
	mov	QWORD PTR 40[rax], rcx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_PlayerDataMenuMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_PlayerDataMenuMain
Task_PlayerDataMenuMain:
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
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rsi, QWORD PTR .refptr.gRepeatedKeys[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rbp, QWORD PTR 464[rbx]
	test	BYTE PTR [rsi], -64
	jne	.L284
.L261:
	call	PlayerDataMenuRenderUI
	test	BYTE PTR [rsi], -64
	jne	.L260
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	movzx	eax, WORD PTR [rax]
	test	al, 1
	jne	.L285
	test	al, 2
	jne	.L286
.L260:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L285:
	mov	ecx, 106
	call	m4aSongNumStart
	movzx	eax, BYTE PTR 472[rbx]
	cmp	al, 2
	je	.L270
	jg	.L271
	test	al, al
	je	.L272
	cmp	al, 1
	jne	.L260
	mov	rax, QWORD PTR [rdi]
	mov	rcx, QWORD PTR .LC0[rip]
	lea	rdi, Task_PlayerDataMenuFadeOutToTimeRecordsScreen[rip]
	mov	rdx, QWORD PTR 24[rax]
	mov	QWORD PTR 448[rdx], rcx
	mov	DWORD PTR 456[rdx], 255
	mov	QWORD PTR 40[rax], rdi
	jmp	.L260
	.p2align 4,,10
	.p2align 3
.L284:
	mov	ecx, 108
	call	m4aSongNumStart
	movzx	edx, WORD PTR [rsi]
	test	dl, 64
	je	.L262
	movzx	eax, BYTE PTR 472[rbx]
	test	al, al
	je	.L263
	sub	eax, 1
.L282:
	mov	BYTE PTR 472[rbx], al
	movsx	ecx, al
	cbw
	lea	r8d, [rax+rax*8]
	lea	r8d, 46[rax+r8*2]
.L264:
	xor	eax, eax
.L267:
	mov	rdx, rax
	sal	rdx, 6
	cmp	ecx, eax
	setne	BYTE PTR 181[rbx+rdx]
	add	rax, 1
	cmp	rax, 4
	jne	.L267
	mov	WORD PTR 424[rbx], r8w
	jmp	.L261
	.p2align 4,,10
	.p2align 3
.L262:
	and	edx, 128
	movsx	ax, BYTE PTR 472[rbx]
	je	.L265
	cmp	al, 2
	jg	.L266
	add	eax, 1
	jmp	.L282
	.p2align 4,,10
	.p2align 3
.L286:
	mov	ecx, 107
	call	m4aSongNumStart
.L283:
	mov	rax, QWORD PTR [rdi]
	lea	rdi, Task_PlayerDataMenuCloseAnim[rip]
	mov	BYTE PTR 2296[rbp], 0
	mov	QWORD PTR 40[rax], rdi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L265:
	lea	r8d, [rax+rax*8]
	movsx	ecx, al
	lea	r8d, 46[rax+r8*2]
	jmp	.L264
	.p2align 4,,10
	.p2align 3
.L263:
	mov	BYTE PTR 472[rbx], 3
	mov	r8d, 103
	mov	ecx, 3
	jmp	.L264
	.p2align 4,,10
	.p2align 3
.L271:
	cmp	al, 3
	je	.L283
	jmp	.L260
	.p2align 4,,10
	.p2align 3
.L270:
	mov	rax, QWORD PTR [rdi]
	mov	rcx, QWORD PTR .LC0[rip]
	mov	rdx, QWORD PTR 24[rax]
	mov	QWORD PTR 448[rdx], rcx
	lea	rcx, Task_PlayerDataMenuFadeOutToMultiplayerRecordsScreen[rip]
	mov	DWORD PTR 456[rdx], 255
	mov	QWORD PTR 40[rax], rcx
	jmp	.L260
	.p2align 4,,10
	.p2align 3
.L266:
	mov	BYTE PTR 472[rbx], 0
	mov	r8d, 46
	xor	ecx, ecx
	jmp	.L264
	.p2align 4,,10
	.p2align 3
.L272:
	mov	rax, QWORD PTR [rdi]
	mov	rcx, QWORD PTR .LC0[rip]
	mov	rdx, QWORD PTR 24[rax]
	mov	QWORD PTR 448[rdx], rcx
	lea	rcx, Task_PlayerDataMenuFadeOutToProfileNameScreen[rip]
	mov	DWORD PTR 456[rdx], 255
	mov	QWORD PTR 40[rax], rcx
	jmp	.L260
	.seh_endproc
	.p2align 4
	.def	Task_PlayerDataMenuCloseAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_PlayerDataMenuCloseAnim
Task_PlayerDataMenuCloseAnim:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[r8]
	mov	rdx, QWORD PTR 464[rax]
	movzx	edx, WORD PTR 864[rdx]
	lea	ecx, 336[rdx]
	mov	WORD PTR 38[rax], cx
	mov	WORD PTR 102[rax], cx
	lea	ecx, 256[rdx]
	add	dx, 254
	mov	WORD PTR 166[rax], cx
	mov	WORD PTR 230[rax], cx
	mov	WORD PTR 294[rax], cx
	mov	WORD PTR 358[rax], cx
	movzx	ecx, BYTE PTR 473[rax]
	mov	WORD PTR 422[rax], dx
	lea	edx, 1[rcx]
	mov	BYTE PTR 473[rax], dl
	cmp	dl, 14
	jg	.L288
	jmp	PlayerDataMenuRenderUI
	.p2align 4,,10
	.p2align 3
.L288:
	mov	rcx, r8
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.def	DifficultyMenuRenderUI;	.scl	3;	.type	32;	.endef
	.seh_proc	DifficultyMenuRenderUI
DifficultyMenuRenderUI:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	lea	rcx, 8[rbx]
	call	DisplaySprite
	lea	rcx, 72[rbx]
	call	DisplaySprite
	lea	rcx, 136[rbx]
	call	DisplaySprite
	lea	rcx, 200[rbx]
	call	DisplaySprite
	lea	rcx, 264[rbx]
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.def	TimeLimitMenuRenderUI;	.scl	3;	.type	32;	.endef
	.set	TimeLimitMenuRenderUI,DifficultyMenuRenderUI
	.p2align 4
	.def	Task_TimeLimitMenuOpenAnimWait;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_TimeLimitMenuOpenAnimWait
Task_TimeLimitMenuOpenAnimWait:
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
	mov	rax, QWORD PTR [rbx]
	movzx	edx, WORD PTR 864[rax]
	lea	eax, 336[rdx]
	mov	WORD PTR 46[rbx], ax
	mov	WORD PTR 110[rbx], ax
	lea	eax, 274[rdx]
	mov	WORD PTR 174[rbx], ax
	lea	eax, 334[rdx]
	mov	WORD PTR 238[rbx], ax
	mov	eax, 60
	imul	BYTE PTR 328[rbx]
	lea	edx, 272[rdx+rax]
	mov	WORD PTR 302[rbx], dx
	call	TimeLimitMenuRenderUI
	movzx	eax, BYTE PTR 329[rbx]
	add	eax, 1
	cmp	al, 15
	jg	.L291
	mov	BYTE PTR 329[rbx], al
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L291:
	mov	rax, QWORD PTR [rsi]
	lea	rcx, Task_TimeLimitMenuMain[rip]
	mov	BYTE PTR 329[rbx], 0
	mov	QWORD PTR 40[rax], rcx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_TimeLimitMenuMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_TimeLimitMenuMain
Task_TimeLimitMenuMain:
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
	mov	rsi, QWORD PTR .refptr.gRepeatedKeys[rip]
	mov	rax, QWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rax]
	mov	rdi, QWORD PTR [rbx]
	movsx	r12, BYTE PTR 330[rbx]
	test	BYTE PTR [rsi], 48
	jne	.L303
.L294:
	call	TimeLimitMenuRenderUI
	test	BYTE PTR [rsi], 48
	jne	.L293
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	movzx	eax, WORD PTR [rax]
	test	al, 1
	jne	.L304
	test	al, 2
	jne	.L305
.L293:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L304:
	movsx	rax, BYTE PTR 328[rbx]
	lea	rcx, 1768[rdi]
	lea	rdx, [rax+rax*2]
	lea	rax, [r12+r12*2]
	sal	rax, 2
	lea	rdx, [rax+rdx*2]
	lea	rax, sTimeLimitMenuSwitchText[rip]
	add	rax, rdx
	movzx	edx, WORD PTR 2[rax]
	movzx	eax, WORD PTR [rax]
	mov	BYTE PTR 1816[rdi], dl
	mov	WORD PTR 1786[rdi], ax
	call	UpdateSpriteAnimation
	mov	ecx, 106
	call	m4aSongNumStart
	movzx	eax, BYTE PTR 328[rbx]
	lea	rdx, Task_TimeLimitMenuCloseAnim[rip]
	mov	BYTE PTR 2296[rdi], 0
	mov	BYTE PTR 858[rdi], al
	mov	rax, QWORD PTR 0[rbp]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L303:
	mov	ecx, 108
	movzx	r13d, WORD PTR 864[rdi]
	call	m4aSongNumStart
	cmp	BYTE PTR 328[rbx], 0
	sete	al
	setne	BYTE PTR 253[rbx]
	mov	BYTE PTR 328[rbx], al
	mov	BYTE PTR 189[rbx], al
	sal	eax, 15
	sar	ax, 15
	and	eax, 60
	lea	r13d, 272[r13+rax]
	mov	WORD PTR 302[rbx], r13w
	jmp	.L294
	.p2align 4,,10
	.p2align 3
.L305:
	mov	ecx, 107
	call	m4aSongNumStart
	mov	rax, QWORD PTR 0[rbp]
	lea	rcx, Task_TimeLimitMenuCloseAnim[rip]
	mov	BYTE PTR 2296[rdi], 0
	mov	QWORD PTR 40[rax], rcx
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.seh_endproc
	.p2align 4
	.def	Task_DifficultyMenuOpenAnimWait;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_DifficultyMenuOpenAnimWait
Task_DifficultyMenuOpenAnimWait:
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
	mov	rax, QWORD PTR [rbx]
	movzx	edx, WORD PTR 864[rax]
	lea	eax, 336[rdx]
	mov	WORD PTR 46[rbx], ax
	mov	WORD PTR 110[rbx], ax
	lea	eax, 274[rdx]
	mov	WORD PTR 174[rbx], ax
	lea	eax, 334[rdx]
	mov	WORD PTR 238[rbx], ax
	mov	eax, 60
	imul	BYTE PTR 328[rbx]
	lea	edx, 272[rdx+rax]
	mov	WORD PTR 302[rbx], dx
	call	DifficultyMenuRenderUI
	movzx	eax, BYTE PTR 329[rbx]
	add	eax, 1
	cmp	al, 15
	jg	.L307
	mov	BYTE PTR 329[rbx], al
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L307:
	mov	rax, QWORD PTR [rsi]
	lea	rcx, Task_DifficultyMenuMain[rip]
	mov	BYTE PTR 329[rbx], 0
	mov	QWORD PTR 40[rax], rcx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_DifficultyMenuMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_DifficultyMenuMain
Task_DifficultyMenuMain:
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
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rsi, QWORD PTR .refptr.gRepeatedKeys[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rbp, QWORD PTR [rbx]
	movsx	r12, BYTE PTR 330[rbx]
	test	BYTE PTR [rsi], 48
	jne	.L319
.L310:
	call	DifficultyMenuRenderUI
	test	BYTE PTR [rsi], 48
	jne	.L309
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	movzx	eax, WORD PTR [rax]
	test	al, 1
	jne	.L320
	test	al, 2
	jne	.L321
.L309:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L319:
	mov	ecx, 108
	movzx	r13d, WORD PTR 864[rbp]
	call	m4aSongNumStart
	cmp	BYTE PTR 328[rbx], 0
	sete	al
	setne	BYTE PTR 253[rbx]
	mov	BYTE PTR 328[rbx], al
	mov	BYTE PTR 189[rbx], al
	sal	eax, 15
	sar	ax, 15
	and	eax, 60
	lea	r13d, 272[r13+rax]
	mov	WORD PTR 302[rbx], r13w
	jmp	.L310
	.p2align 4,,10
	.p2align 3
.L321:
	mov	ecx, 107
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rdi]
	lea	rdx, Task_DifficultyMenuCloseAnim[rip]
	mov	BYTE PTR 2296[rbp], 0
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L320:
	movsx	rax, BYTE PTR 328[rbx]
	lea	rcx, 1704[rbp]
	lea	rdx, [rax+rax*2]
	lea	rax, [r12+r12*2]
	sal	rax, 2
	lea	rdx, [rax+rdx*2]
	lea	rax, sDifficultyLevelSwitchText[rip]
	add	rax, rdx
	movzx	edx, WORD PTR 2[rax]
	movzx	eax, WORD PTR [rax]
	mov	BYTE PTR 1752[rbp], dl
	mov	WORD PTR 1722[rbp], ax
	call	UpdateSpriteAnimation
	mov	ecx, 106
	call	m4aSongNumStart
	movzx	eax, BYTE PTR 328[rbx]
	lea	rcx, Task_DifficultyMenuCloseAnim[rip]
	mov	BYTE PTR 2296[rbp], 0
	mov	BYTE PTR 857[rbp], al
	mov	rax, QWORD PTR [rdi]
	mov	QWORD PTR 40[rax], rcx
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.seh_endproc
	.p2align 4
	.def	Task_DifficultyMenuCloseAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_DifficultyMenuCloseAnim
Task_DifficultyMenuCloseAnim:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r9, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[r9]
	mov	rax, QWORD PTR [rdx]
	movzx	ecx, WORD PTR 864[rax]
	lea	eax, 336[rcx]
	mov	WORD PTR 46[rdx], ax
	mov	WORD PTR 110[rdx], ax
	lea	eax, 274[rcx]
	mov	WORD PTR 174[rdx], ax
	lea	eax, 334[rcx]
	mov	WORD PTR 238[rdx], ax
	mov	eax, 60
	imul	BYTE PTR 328[rdx]
	lea	ecx, 272[rcx+rax]
	movzx	eax, BYTE PTR 329[rdx]
	mov	WORD PTR 302[rdx], cx
	add	eax, 1
	mov	BYTE PTR 329[rdx], al
	cmp	al, 14
	jg	.L323
	jmp	DifficultyMenuRenderUI
	.p2align 4,,10
	.p2align 3
.L323:
	mov	rcx, r9
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.def	Task_TimeLimitMenuCloseAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_TimeLimitMenuCloseAnim
Task_TimeLimitMenuCloseAnim:
	.seh_endprologue
	jmp	Task_DifficultyMenuCloseAnim
	.seh_endproc
	.p2align 4
	.def	ButtonConfigMenuRenderUI;	.scl	3;	.type	32;	.endef
	.seh_proc	ButtonConfigMenuRenderUI
ButtonConfigMenuRenderUI:
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
	mov	rax, QWORD PTR [rax]
	mov	rsi, QWORD PTR 24[rax]
	lea	rbx, 8[rsi]
	lea	rdi, 392[rsi]
	lea	rbp, 584[rsi]
	lea	r12, 712[rsi]
	.p2align 4,,10
	.p2align 3
.L326:
	mov	rcx, rbx
	add	rbx, 64
	call	DisplaySprite
	cmp	rdi, rbx
	jne	.L326
	mov	rcx, rdi
	call	DisplaySprite
	lea	rcx, 456[rsi]
	call	DisplaySprite
	lea	rcx, 520[rsi]
	add	rsi, 648
	call	DisplaySprite
	mov	rcx, rbp
	call	UpdateSpriteAnimation
	mov	rcx, rbp
	call	DisplaySprite
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	mov	rcx, r12
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.def	Task_ButtonConfigMenuOpenAnimWait;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_ButtonConfigMenuOpenAnimWait
Task_ButtonConfigMenuOpenAnimWait:
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
	mov	rax, QWORD PTR [rbx]
	movzx	eax, WORD PTR 864[rax]
	lea	edx, 336[rax]
	mov	WORD PTR 46[rbx], dx
	mov	WORD PTR 110[rbx], dx
	mov	WORD PTR 174[rbx], dx
	lea	edx, 264[rax]
	mov	WORD PTR 238[rbx], dx
	mov	WORD PTR 302[rbx], dx
	mov	WORD PTR 366[rbx], dx
	lea	edx, 332[rax]
	mov	WORD PTR 430[rbx], dx
	mov	WORD PTR 494[rbx], dx
	mov	WORD PTR 558[rbx], dx
	lea	edx, 252[rax]
	mov	WORD PTR 750[rbx], dx
	lea	edx, 323[rax]
	add	ax, 413
	mov	WORD PTR 686[rbx], ax
	mov	WORD PTR 622[rbx], dx
	call	ButtonConfigMenuRenderUI
	movzx	eax, BYTE PTR 780[rbx]
	add	eax, 1
	cmp	al, 15
	jg	.L329
	mov	BYTE PTR 780[rbx], al
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L329:
	mov	rax, QWORD PTR [rsi]
	lea	rcx, Task_ButtonConfigMenuAButtonMain[rip]
	mov	BYTE PTR 780[rbx], 0
	mov	QWORD PTR 40[rax], rcx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_ButtonMenuConfigCloseAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_ButtonMenuConfigCloseAnim
Task_ButtonMenuConfigCloseAnim:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[r8]
	mov	rdx, QWORD PTR [rax]
	movzx	edx, WORD PTR 864[rdx]
	lea	ecx, 336[rdx]
	mov	WORD PTR 46[rax], cx
	mov	WORD PTR 110[rax], cx
	mov	WORD PTR 174[rax], cx
	lea	ecx, 264[rdx]
	mov	WORD PTR 238[rax], cx
	mov	WORD PTR 302[rax], cx
	mov	WORD PTR 366[rax], cx
	lea	ecx, 332[rdx]
	mov	WORD PTR 430[rax], cx
	mov	WORD PTR 494[rax], cx
	mov	WORD PTR 558[rax], cx
	lea	ecx, 252[rdx]
	mov	WORD PTR 750[rax], cx
	lea	ecx, 323[rdx]
	add	dx, 413
	mov	WORD PTR 686[rax], dx
	movzx	edx, BYTE PTR 780[rax]
	mov	WORD PTR 622[rax], cx
	add	edx, 1
	mov	BYTE PTR 780[rax], dl
	cmp	dl, 14
	jle	.L333
	mov	rcx, r8
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L333:
	jmp	ButtonConfigMenuRenderUI
	.seh_endproc
	.p2align 4
	.def	Task_ButtonConfigMenuHandleAButtonComplete;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_ButtonConfigMenuHandleAButtonComplete
Task_ButtonConfigMenuHandleAButtonComplete:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	edx, 66
	mov	ecx, 77
	mov	r8d, 77
	mov	rax, QWORD PTR [rbx]
	mov	rax, QWORD PTR 24[rax]
	mov	WORD PTR 752[rax], dx
	mov	WORD PTR 624[rax], cx
	mov	WORD PTR 688[rax], r8w
	call	ButtonConfigMenuRenderUI
	mov	rax, QWORD PTR [rbx]
	lea	rdx, Task_ButtonConfigMenuBButtonMain[rip]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	Task_ButtonConfigMenuHandleStartOver;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_ButtonConfigMenuHandleStartOver
Task_ButtonConfigMenuHandleStartOver:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	edx, 42
	mov	ecx, 53
	mov	r8d, 53
	mov	rax, QWORD PTR [rbx]
	mov	rax, QWORD PTR 24[rax]
	mov	WORD PTR 752[rax], dx
	mov	WORD PTR 624[rax], cx
	mov	WORD PTR 688[rax], r8w
	call	ButtonConfigMenuRenderUI
	mov	rax, QWORD PTR [rbx]
	lea	rdx, Task_ButtonConfigMenuAButtonMain[rip]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	Task_ButtonConfigMenuHandleBButtonComplete;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_ButtonConfigMenuHandleBButtonComplete
Task_ButtonConfigMenuHandleBButtonComplete:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	edx, 90
	mov	ecx, 180
	mov	r8d, 180
	mov	rax, QWORD PTR [rbx]
	mov	rax, QWORD PTR 24[rax]
	mov	WORD PTR 752[rax], dx
	mov	WORD PTR 624[rax], cx
	mov	WORD PTR 688[rax], r8w
	call	ButtonConfigMenuRenderUI
	mov	rax, QWORD PTR [rbx]
	lea	rdx, Task_ButtonConfigMenuRShoulderMain[rip]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	OptionsScreenRenderUI;	.scl	3;	.type	32;	.endef
	.seh_proc	OptionsScreenRenderUI
OptionsScreenRenderUI:
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
	xor	ebx, ebx
	mov	rax, QWORD PTR [rax]
	mov	rbp, QWORD PTR 24[rax]
	lea	rcx, 1064[rbp]
	lea	rdi, 1128[rbp]
	lea	r12, 1640[rbp]
	lea	rsi, 1896[rbp]
	call	DisplaySprite
.L340:
	cmp	BYTE PTR 860[rbp], 0
	jne	.L342
	cmp	bx, 5
	jne	.L342
	add	rdi, 64
	mov	ebx, 6
	.p2align 4,,10
	.p2align 3
.L342:
	mov	rcx, rdi
	call	DisplaySprite
	cmp	bx, 3
	jle	.L339
	add	ebx, 1
	add	rdi, 64
	cmp	bx, 8
	jne	.L340
	add	rbp, 2280
	.p2align 4,,10
	.p2align 3
.L343:
	mov	rcx, rsi
	add	rsi, 64
	call	DisplaySprite
	cmp	rbp, rsi
	jne	.L343
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L339:
	mov	rcx, r12
	add	ebx, 1
	add	r12, 64
	add	rdi, 64
	call	DisplaySprite
	jmp	.L342
	.seh_endproc
	.p2align 4
	.def	Task_OptionsScreenSubMenuOpenAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_OptionsScreenSubMenuOpenAnim
Task_OptionsScreenSubMenuOpenAnim:
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
	lea	rax, sSubMenuOpenAnim[rip]
	movsx	rdx, BYTE PTR 2295[rbx]
	movzx	ecx, WORD PTR [rax+rdx*2]
	movsx	rdx, BYTE PTR 2292[rbx]
	mov	r8, rdx
	sal	rdx, 6
	lea	eax, 32[rcx]
	mov	WORD PTR 864[rbx], cx
	add	rdx, rbx
	mov	WORD PTR 1166[rdx], ax
	mov	BYTE PTR 1181[rdx], 0
	cmp	r8b, 3
	jg	.L351
	lea	r9d, 152[rcx]
	mov	BYTE PTR 1693[rdx], 0
	mov	WORD PTR 1678[rdx], r9w
	test	r8b, r8b
	jne	.L351
	lea	rax, 1896[rbx]
	lea	edx, 163[rcx]
	lea	r8, 2280[rbx]
	.p2align 4,,10
	.p2align 3
.L352:
	mov	WORD PTR 38[rax], dx
	add	rax, 64
	add	edx, 10
	mov	BYTE PTR -11[rax], 7
	cmp	rax, r8
	jne	.L352
.L351:
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	eax, -216
	sub	eax, ecx
	mov	WORD PTR 8[rdx], ax
	call	OptionsScreenRenderUI
	movzx	eax, BYTE PTR 2295[rbx]
	add	eax, 1
	mov	BYTE PTR 2295[rbx], al
	cmp	al, 15
	jle	.L347
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_OptionsScreenWaitForSubMenuExit[rip]
	mov	BYTE PTR 2296[rbx], 1
	mov	QWORD PTR 40[rax], rsi
.L347:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_OptionsScreenWaitForSubMenuExit;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_OptionsScreenWaitForSubMenuExit
Task_OptionsScreenWaitForSubMenuExit:
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
	cmp	BYTE PTR 2296[rbx], 1
	jle	.L358
.L354:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L358:
	call	OptionsScreenRenderUI
	cmp	BYTE PTR 2296[rbx], 0
	jne	.L354
	mov	rax, QWORD PTR [rsi]
	lea	rdx, Task_OptionsScreenSubMenuCloseAnim[rip]
	mov	BYTE PTR 2295[rbx], 0
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	ReseedRng;	.scl	3;	.type	32;	.endef
	.seh_proc	ReseedRng
ReseedRng:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	call	Random
	mov	ebx, eax
	call	Random
	sal	ebx, 16
	xor	ecx, ecx
	movzx	eax, ax
	mov	edi, ebx
	or	ebx, eax
	xor	edi, eax
	mov	edx, ebx
	call	SeedRng
	call	Random
	mov	esi, eax
	call	Random
	sal	esi, 16
	mov	ecx, edi
	mov	edx, ebx
	movzx	eax, ax
	xor	esi, eax
	xor	ecx, esi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	SeedRng
	.seh_endproc
	.p2align 4
	.def	LanguageScreenInitRegisters;	.scl	3;	.type	32;	.endef
	.seh_proc	LanguageScreenInitRegisters
LanguageScreenInitRegisters:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	edx, 5952
	mov	r8, QWORD PTR .refptr.VRAM[rip]
	mov	r9d, -2063566848
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	rdx, QWORD PTR .LC9[rip]
	mov	DWORD PTR 4[rax], -603042299
	mov	rbx, rcx
	mov	ecx, 1795
	mov	DWORD PTR 44[rsp], 0
	mov	WORD PTR [rax], cx
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	ecx, 3
	mov	QWORD PTR 8[rax], rdx
	lea	rdx, 44[rsp]
	mov	DWORD PTR [rax], 0
	call	DmaSet
	mov	rax, QWORD PTR .LC10[rip]
	lea	rcx, 672[rbx]
	mov	DWORD PTR 680[rbx], 255
	mov	QWORD PTR 672[rbx], rax
	add	rsp, 48
	pop	rbx
	jmp	UpdateScreenFade
	.seh_endproc
	.p2align 4
	.def	TimeRecordsScreenInitRegisters;	.scl	3;	.type	32;	.endef
	.seh_proc	TimeRecordsScreenInitRegisters
TimeRecordsScreenInitRegisters:
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
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	edx, 5952
	mov	ecx, 24073
	mov	rsi, QWORD PTR .refptr.VRAM[rip]
	movdqu	xmm0, XMMWORD PTR .LC13[rip]
	mov	r9d, -2063597544
	mov	r12, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	mov	rdi, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	ebp, DWORD PTR .LC14[rip]
	lea	r8, 16384[rsi]
	mov	BYTE PTR 1[r12], 0
	mov	WORD PTR 4[rax], cx
	mov	ecx, 3
	mov	DWORD PTR [rax], 1443235587
	lea	rbx, 44[rsp]
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	rdx, rbx
	mov	DWORD PTR 4[rdi], ebp
	movups	XMMWORD PTR [rax], xmm0
	mov	DWORD PTR 44[rsp], 0
	call	DmaSet
	mov	rdx, rbx
	mov	ecx, 3
	mov	DWORD PTR 8[rdi], ebp
	mov	r9d, -2063597544
	lea	r8, 32768[rsi]
	mov	BYTE PTR 2[r12], 0
	mov	DWORD PTR 44[rsp], 0
	call	DmaSet
	nop
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.def	OptionsScreenInitRegisters;	.scl	3;	.type	32;	.endef
	.seh_proc	OptionsScreenInitRegisters
OptionsScreenInitRegisters:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	r8d, 1795
	mov	rbx, rcx
	mov	ecx, 5952
	mov	WORD PTR [rax], cx
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	WORD PTR [rax], r8w
	mov	DWORD PTR 4[rax], -603042299
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	DWORD PTR [rax], 0
	test	dx, dx
	jne	.L366
	mov	rdx, QWORD PTR .LC17[rip]
	mov	r9d, -2063566848
	mov	r8, QWORD PTR .refptr.VRAM[rip]
	mov	ecx, 3
	mov	DWORD PTR 44[rsp], 0
	mov	QWORD PTR 8[rax], rdx
	lea	rdx, 44[rsp]
	call	DmaSet
	mov	rax, QWORD PTR .LC10[rip]
	lea	rcx, 2280[rbx]
	mov	DWORD PTR 2288[rbx], 255
	mov	QWORD PTR 2280[rbx], rax
	add	rsp, 48
	pop	rbx
	jmp	UpdateScreenFade
	.p2align 4,,10
	.p2align 3
.L366:
	mov	rdx, QWORD PTR .LC9[rip]
	mov	r9d, -2063566848
	mov	r8, QWORD PTR .refptr.VRAM[rip]
	mov	ecx, 3
	mov	DWORD PTR 44[rsp], 0
	mov	QWORD PTR 8[rax], rdx
	lea	rdx, 44[rsp]
	call	DmaSet
	nop
	add	rsp, 48
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.def	Task_OptionScreenFadeOutToSoundTest;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_OptionScreenFadeOutToSoundTest
Task_OptionScreenFadeOutToSoundTest:
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
	call	OptionsScreenRenderUI
	lea	rcx, 2280[rbx]
	call	UpdateScreenFade
	test	al, al
	jne	.L372
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L372:
	mov	rcx, rbx
	call	CreateSoundTestScreen
	mov	rax, QWORD PTR [rsi]
	lea	rdx, Task_OptionsScreenWaitForSoundTestExit[rip]
	mov	BYTE PTR 2296[rbx], 1
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	StoreProfileData;	.scl	3;	.type	32;	.endef
	.seh_proc	StoreProfileData
StoreProfileData:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	lea	rdi, 58[rdx]
	and	rdi, -8
	mov	rax, rcx
	mov	rcx, QWORD PTR [rcx]
	lea	rsi, 12[rax]
	mov	QWORD PTR 32[rdx], rcx
	mov	ecx, DWORD PTR 8[rax]
	mov	DWORD PTR 40[rdx], ecx
	mov	r8, QWORD PTR 12[rax]
	lea	rcx, 50[rdx]
	sub	rcx, rdi
	mov	QWORD PTR 50[rdx], r8
	mov	r8, QWORD PTR 634[rax]
	sub	rsi, rcx
	add	ecx, 630
	shr	ecx, 3
	mov	QWORD PTR 672[rdx], r8
	rep movsq
	movdqu	xmm0, XMMWORD PTR 644[rax]
	movups	XMMWORD PTR 680[rdx], xmm0
	mov	ecx, DWORD PTR 660[rax]
	mov	DWORD PTR 696[rdx], ecx
	movzx	ecx, WORD PTR 844[rax]
	mov	WORD PTR 28[rdx], cx
	movzx	ecx, BYTE PTR 846[rax]
	mov	BYTE PTR 30[rdx], cl
	mov	ecx, DWORD PTR 848[rax]
	mov	DWORD PTR 44[rdx], ecx
	movzx	ecx, WORD PTR 852[rax]
	mov	WORD PTR 48[rdx], cx
	movzx	ecx, WORD PTR 857[rax]
	mov	WORD PTR 4[rdx], cx
	movzx	esi, BYTE PTR 859[rax]
	lea	ecx, 1[rsi]
	mov	BYTE PTR 6[rdx], cl
	movzx	eax, WORD PTR 860[rax]
	mov	WORD PTR 17[rdx], ax
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_DeleteScreenFadeOutAndExit;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_DeleteScreenFadeOutAndExit
Task_DeleteScreenFadeOutAndExit:
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
	lea	rcx, 416[rbx]
	call	UpdateScreenFade
	test	al, al
	je	.L378
	cmp	BYTE PTR 443[rbx], 0
	mov	rcx, QWORD PTR 432[rbx]
	jne	.L379
	mov	BYTE PTR 2296[rcx], 2
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L379:
	call	StoreProfileData
	call	NewSaveGame
	mov	rax, QWORD PTR 432[rbx]
	mov	rcx, QWORD PTR [rsi]
	mov	BYTE PTR 2296[rax], 0
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L378:
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DeleteScreenRenderUI
	.seh_endproc
	.p2align 4
	.def	ReadProfileData;	.scl	3;	.type	32;	.endef
	.seh_proc	ReadProfileData
ReadProfileData:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rdx]
	lea	rsi, 50[rdx]
	mov	rax, rcx
	mov	rcx, QWORD PTR 32[rdx]
	lea	rdi, 20[rax]
	mov	QWORD PTR [rax], rcx
	mov	ecx, DWORD PTR 40[rdx]
	and	rdi, -8
	mov	DWORD PTR 8[rax], ecx
	mov	r8, QWORD PTR 50[rdx]
	lea	rcx, 12[rax]
	sub	rcx, rdi
	mov	QWORD PTR 12[rax], r8
	mov	r9, QWORD PTR 672[rdx]
	sub	rsi, rcx
	add	ecx, 630
	shr	ecx, 3
	mov	QWORD PTR 634[rax], r9
	rep movsq
	movdqu	xmm0, XMMWORD PTR 680[rdx]
	movups	XMMWORD PTR 644[rax], xmm0
	movdqu	xmm1, XMMWORD PTR 696[rdx]
	movups	XMMWORD PTR 660[rax], xmm1
	movdqu	xmm2, XMMWORD PTR 712[rdx]
	movups	XMMWORD PTR 676[rax], xmm2
	movdqu	xmm3, XMMWORD PTR 728[rdx]
	movups	XMMWORD PTR 692[rax], xmm3
	movdqu	xmm4, XMMWORD PTR 744[rdx]
	movups	XMMWORD PTR 708[rax], xmm4
	movdqu	xmm5, XMMWORD PTR 760[rdx]
	movups	XMMWORD PTR 724[rax], xmm5
	movdqu	xmm0, XMMWORD PTR 776[rdx]
	movups	XMMWORD PTR 740[rax], xmm0
	movdqu	xmm1, XMMWORD PTR 792[rdx]
	movups	XMMWORD PTR 756[rax], xmm1
	movdqu	xmm2, XMMWORD PTR 808[rdx]
	movups	XMMWORD PTR 772[rax], xmm2
	movdqu	xmm3, XMMWORD PTR 824[rdx]
	movups	XMMWORD PTR 788[rax], xmm3
	movdqu	xmm4, XMMWORD PTR 840[rdx]
	movups	XMMWORD PTR 804[rax], xmm4
	movdqu	xmm5, XMMWORD PTR 856[rdx]
	movups	XMMWORD PTR 820[rax], xmm5
	mov	r8, QWORD PTR 872[rdx]
	mov	QWORD PTR 836[rax], r8
	movzx	ecx, WORD PTR 28[rdx]
	mov	WORD PTR 844[rax], cx
	movzx	ecx, BYTE PTR 30[rdx]
	mov	BYTE PTR 846[rax], cl
	mov	rcx, QWORD PTR 44[rdx]
	mov	QWORD PTR 848[rax], rcx
	movzx	esi, BYTE PTR 6[rdx]
	movzx	ecx, BYTE PTR 17[rdx]
	movzx	r10d, BYTE PTR 5[rdx]
	lea	r8d, -1[rsi]
	movzx	r11d, BYTE PTR 4[rdx]
	movzx	ebx, r8b
	mov	r9d, ecx
	sal	ecx, 8
	or	ecx, ebx
	movzx	ebx, r10b
	sal	ecx, 8
	or	ecx, ebx
	movzx	ebx, r11b
	sal	ecx, 8
	or	ecx, ebx
	mov	DWORD PTR 857[rax], ecx
	movzx	edx, WORD PTR 18[rdx]
	mov	WORD PTR 861[rax], dx
	mov	esi, edx
	xor	edx, edx
.L389:
	cmp	WORD PTR [rax+rdx*2], -1
	je	.L400
	add	rdx, 1
	cmp	rdx, 6
	jne	.L389
.L388:
	cmp	r11b, 1
	jbe	.L390
	mov	BYTE PTR 857[rax], 0
.L390:
	cmp	r10b, 1
	jbe	.L391
	mov	BYTE PTR 858[rax], 0
.L391:
	cmp	r8b, 5
	jbe	.L392
	mov	BYTE PTR 859[rax], 1
.L392:
	cmp	r9b, 1
	jbe	.L393
	mov	BYTE PTR 860[rax], 0
.L393:
	cmp	sil, 1
	jbe	.L380
	mov	BYTE PTR 861[rax], 0
.L380:
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L400:
	mov	ecx, 6
	mov	rbp, -1
	sub	ecx, edx
	movsx	rdx, dx
	movzx	ecx, cx
	lea	rdx, [rax+rdx*2]
	add	rcx, rcx
	cmp	ecx, 8
	jb	.L401
	lea	rdi, 8[rdx]
	mov	QWORD PTR [rdx], -1
	mov	QWORD PTR -8[rcx+rdx], -1
	and	rdi, -8
	sub	rdx, rdi
	add	ecx, edx
	and	ecx, -8
	cmp	ecx, 8
	jb	.L388
	and	ecx, -8
	xor	edx, edx
.L386:
	mov	ebx, edx
	add	edx, 8
	mov	QWORD PTR [rdi+rbx], rbp
	cmp	edx, ecx
	jb	.L386
	jmp	.L388
	.p2align 4,,10
	.p2align 3
.L401:
	test	cl, 4
	jne	.L402
	test	ecx, ecx
	je	.L388
	mov	BYTE PTR [rdx], -1
	test	cl, 2
	je	.L388
	mov	ebx, -1
	mov	WORD PTR -2[rcx+rdx], bx
	jmp	.L388
.L402:
	mov	DWORD PTR [rdx], -1
	mov	DWORD PTR -4[rcx+rdx], -1
	jmp	.L388
	.seh_endproc
	.p2align 4
	.def	ProfileNameScreenFadeOutAndExit;	.scl	3;	.type	32;	.endef
	.seh_proc	ProfileNameScreenFadeOutAndExit
ProfileNameScreenFadeOutAndExit:
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
	lea	rcx, 448[rbx]
	movzx	esi, BYTE PTR 1299[rbx]
	call	UpdateScreenFade
	test	al, al
	je	.L410
	test	si, si
	je	.L411
	cmp	si, 2
	je	.L412
.L406:
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rcx, QWORD PTR [rax]
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L407:
	movzx	edx, WORD PTR 1284[rbx+rax]
	mov	WORD PTR 32[rcx+rax], dx
	add	rax, 2
	cmp	rax, 12
	jne	.L407
	call	WriteSaveGame
	mov	edx, 65535
	xor	ecx, ecx
	call	TasksDestroyInPriorityRange
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueIndex[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueCursor[rip]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR .refptr.gBgSpritesCount[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyQueueIndex[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyCursor[rip]
	mov	BYTE PTR [rax], dl
	cmp	si, 1
	je	.L413
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	CreateTitleScreen
	.p2align 4,,10
	.p2align 3
.L413:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	CreateMultiplayerModeSelectScreen
	.p2align 4,,10
	.p2align 3
.L410:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	ProfileNameScreenRenderUI
	.p2align 4,,10
	.p2align 3
.L411:
	mov	rax, QWORD PTR 464[rbx]
	mov	rcx, QWORD PTR [rdi]
	mov	BYTE PTR 475[rax], 0
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L412:
	call	NewSaveGame
	jmp	.L406
	.seh_endproc
	.p2align 4
	.def	Task_MultiplayerRecordsScreenFadeOutAndExit;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_MultiplayerRecordsScreenFadeOutAndExit
Task_MultiplayerRecordsScreenFadeOutAndExit:
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
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rcx, rbx
	mov	rdi, QWORD PTR 1232[rbx]
	call	UpdateScreenFade
	test	al, al
	je	.L416
	mov	rcx, QWORD PTR 1240[rbx]
	call	EwramFree
	mov	rcx, QWORD PTR [rsi]
	mov	BYTE PTR 475[rdi], 0
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L416:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	MultiplayerRecordsScreenRenderUI
	.seh_endproc
	.p2align 4
	.def	Task_OptionsScreenFadeOutAndExit;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_OptionsScreenFadeOutAndExit
Task_OptionsScreenFadeOutAndExit:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	lea	rcx, 2280[rbx]
	call	UpdateScreenFade
	test	al, al
	je	.L419
	mov	rcx, rbx
	call	StoreProfileData
	call	WriteSaveGame
	mov	edx, 65535
	xor	ecx, ecx
	call	TasksDestroyInPriorityRange
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueIndex[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueCursor[rip]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR .refptr.gBgSpritesCount[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyQueueIndex[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyCursor[rip]
	mov	BYTE PTR [rax], dl
	add	rsp, 32
	pop	rbx
	jmp	CreateTitleScreenAtSinglePlayerMenu
	.p2align 4,,10
	.p2align 3
.L419:
	add	rsp, 32
	pop	rbx
	jmp	OptionsScreenRenderUI
	.seh_endproc
	.p2align 4
	.def	Task_TimeRecordsScreenHandleCharacterChange;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_TimeRecordsScreenHandleCharacterChange
Task_TimeRecordsScreenHandleCharacterChange:
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
	xor	edx, edx
	mov	ecx, 1
	lea	r13, sTimeRecordsCharacterAssets[rip]
	movabs	r12, 85899935744
	mov	rax, QWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, BYTE PTR 2432[rbx]
	cmp	al, -1
	cmove	eax, edx
	movzx	esi, al
	call	TimeRecordsScreenRenderCoursesViewUI
	mov	rdi, QWORD PTR .refptr.VRAM[rip]
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	xor	ecx, ecx
	mov	rdx, QWORD PTR .LC18[rip]
	mov	WORD PTR 774[rbx], cx
	lea	rcx, 704[rbx]
	mov	DWORD PTR 748[rbx], 0
	mov	QWORD PTR 4[rax], rdx
	lea	rax, 16384[rdi]
	xor	edx, edx
	mov	QWORD PTR 712[rbx], rax
	xor	eax, eax
	mov	WORD PTR 722[rbx], ax
	lea	rax, 45056[rdi]
	mov	QWORD PTR 728[rbx], rax
	movzx	eax, BYTE PTR 0[r13+rsi*4]
	mov	WORD PTR 754[rbx], dx
	mov	WORD PTR 752[rbx], ax
	mov	DWORD PTR 756[rbx], 0
	mov	QWORD PTR 760[rbx], r12
	mov	BYTE PTR 768[rbx], 0
	mov	DWORD PTR 770[rbx], 1
	call	DrawBackground
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	lea	rax, 32768[rdi]
	add	rdi, 61440
	mov	WORD PTR 818[rbx], r8w
	lea	rcx, 800[rbx]
	mov	QWORD PTR 808[rbx], rax
	movzx	eax, BYTE PTR 2[r13+rsi*4]
	mov	QWORD PTR 824[rbx], rdi
	mov	WORD PTR 848[rbx], ax
	mov	DWORD PTR 844[rbx], 0
	mov	WORD PTR 850[rbx], r9w
	mov	DWORD PTR 852[rbx], 0
	mov	QWORD PTR 856[rbx], r12
	mov	BYTE PTR 864[rbx], 0
	mov	DWORD PTR 866[rbx], 2
	mov	WORD PTR 870[rbx], r10w
	call	DrawBackground
	mov	rax, QWORD PTR 0[rbp]
	lea	rdx, Task_TimeRecordsScreenCharacterChangeAnimIn[rip]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.seh_endproc
	.p2align 4
	.def	TimeRecordsScreenCreateCoursesViewBackgroundsUI;	.scl	3;	.type	32;	.endef
	.seh_proc	TimeRecordsScreenCreateCoursesViewBackgroundsUI
TimeRecordsScreenCreateCoursesViewBackgroundsUI:
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
	xor	edx, edx
	mov	rdi, QWORD PTR .refptr.VRAM[rip]
	movdqu	xmm0, XMMWORD PTR .LC22[rip]
	lea	r12, sTimeRecordsCharacterAssets[rip]
	movabs	rbp, 85899935744
	movzx	eax, BYTE PTR 2432[rcx]
	cmp	al, -1
	cmove	eax, edx
	xor	edx, edx
	mov	WORD PTR 86[rcx], dx
	mov	rbx, rcx
	lea	rcx, 16[rcx]
	movzx	esi, al
	mov	rax, QWORD PTR .LC10[rip]
	mov	QWORD PTR 8[rcx], rdi
	mov	DWORD PTR -8[rcx], 255
	mov	QWORD PTR -16[rcx], rax
	xor	eax, eax
	mov	WORD PTR 18[rcx], ax
	lea	rax, 14336[rdi]
	mov	QWORD PTR 24[rcx], rax
	mov	DWORD PTR 60[rcx], 20
	mov	BYTE PTR 64[rcx], 0
	mov	DWORD PTR 66[rcx], 0
	movups	XMMWORD PTR 44[rcx], xmm0
	call	DrawBackground
	xor	ecx, ecx
	xor	r8d, r8d
	xor	r9d, r9d
	lea	rax, 16384[rdi]
	mov	WORD PTR 722[rbx], cx
	lea	rcx, 704[rbx]
	mov	QWORD PTR 712[rbx], rax
	lea	rax, 45056[rdi]
	mov	QWORD PTR 728[rbx], rax
	movzx	eax, BYTE PTR [r12+rsi*4]
	mov	DWORD PTR 748[rbx], 0
	mov	WORD PTR 752[rbx], ax
	mov	WORD PTR 754[rbx], r8w
	mov	DWORD PTR 756[rbx], 0
	mov	QWORD PTR 760[rbx], rbp
	mov	BYTE PTR 768[rbx], 0
	mov	DWORD PTR 770[rbx], 1
	mov	WORD PTR 774[rbx], r9w
	call	DrawBackground
	lea	rax, 32768[rdi]
	xor	r10d, r10d
	add	rdi, 61440
	mov	QWORD PTR 808[rbx], rax
	movzx	eax, BYTE PTR 2[r12+rsi*4]
	xor	r11d, r11d
	xor	esi, esi
	lea	rcx, 800[rbx]
	mov	WORD PTR 818[rbx], r10w
	mov	QWORD PTR 824[rbx], rdi
	mov	DWORD PTR 844[rbx], 0
	mov	WORD PTR 848[rbx], ax
	mov	WORD PTR 850[rbx], r11w
	mov	DWORD PTR 852[rbx], 0
	mov	QWORD PTR 856[rbx], rbp
	mov	BYTE PTR 864[rbx], 0
	mov	DWORD PTR 866[rbx], 2
	mov	WORD PTR 870[rbx], si
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	DrawBackground
	.seh_endproc
	.p2align 4
	.def	Task_DeleteScreenFadeIn;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_DeleteScreenFadeIn
Task_DeleteScreenFadeIn:
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
	call	DeleteScreenRenderUI
	add	rbx, 416
	mov	rcx, rbx
	call	UpdateScreenFade
	test	al, al
	je	.L424
	mov	rax, QWORD PTR [rsi]
	lea	rdx, Task_DeleteScreenConfrimationMain[rip]
	mov	QWORD PTR 40[rax], rdx
.L424:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_TimeRecordsScreenChoiceViewFadeIn;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_TimeRecordsScreenChoiceViewFadeIn
Task_TimeRecordsScreenChoiceViewFadeIn:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rbx]
	mov	rsi, QWORD PTR 24[rax]
	call	TimeRecordsScreenRenderModeChoiceUI
	mov	rcx, rsi
	call	UpdateScreenFade
	test	al, al
	je	.L429
	mov	rax, QWORD PTR [rbx]
	lea	rdx, Task_TimeRecordsScreenModeChoiceMain[rip]
	mov	QWORD PTR 40[rax], rdx
.L429:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_TimeRecordsScreenModeChoiceMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_TimeRecordsScreenModeChoiceMain
Task_TimeRecordsScreenModeChoiceMain:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gRepeatedKeys[rip]
	test	BYTE PTR [rbx], 48
	jne	.L445
.L435:
	call	TimeRecordsScreenRenderModeChoiceUI
	test	BYTE PTR [rbx], 48
	jne	.L434
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	movzx	eax, WORD PTR [rax]
	test	al, 1
	jne	.L446
	test	al, 2
	jne	.L447
.L434:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L445:
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	ecx, 108
	mov	rax, QWORD PTR [rax]
	mov	rsi, QWORD PTR 24[rax]
	call	m4aSongNumStart
	cmp	BYTE PTR 2444[rsi], 0
	sete	BYTE PTR 2444[rsi]
	je	.L436
	mov	BYTE PTR 165[rsi], 0
	mov	BYTE PTR 229[rsi], 0
	jmp	.L435
	.p2align 4,,10
	.p2align 3
.L447:
	mov	ecx, 107
	call	m4aSongNumStart
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR .LC0[rip]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[rax]
	mov	QWORD PTR [rdx], rcx
	mov	DWORD PTR 8[rdx], 255
	lea	rdx, Task_TimeRecordsScreenFadeOutAndExit[rip]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L436:
	mov	BYTE PTR 165[rsi], 1
	mov	BYTE PTR 229[rsi], -1
	jmp	.L435
	.p2align 4,,10
	.p2align 3
.L446:
	mov	ecx, 106
	call	m4aSongNumStart
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR .LC0[rip]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[rax]
	mov	QWORD PTR [rdx], rcx
	lea	rcx, TimeRecordsScreenFadeOutToCoursesView[rip]
	mov	DWORD PTR 8[rdx], 255
	mov	QWORD PTR 40[rax], rcx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_MultiplayerRecordsScreenFadeIn;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_MultiplayerRecordsScreenFadeIn
Task_MultiplayerRecordsScreenFadeIn:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rbx]
	mov	rsi, QWORD PTR 24[rax]
	call	MultiplayerRecordsScreenRenderUI
	mov	rcx, rsi
	call	UpdateScreenFade
	test	al, al
	je	.L448
	mov	rax, QWORD PTR [rbx]
	lea	rdx, Task_MultiplayerRecordsScreenMain[rip]
	mov	QWORD PTR 40[rax], rdx
.L448:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_PlayerDataMenuFadeInFromProfileNameScreen;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_PlayerDataMenuFadeInFromProfileNameScreen
Task_PlayerDataMenuFadeInFromProfileNameScreen:
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
	call	PlayerDataMenuRenderUI
	add	rbx, 448
	mov	rcx, rbx
	call	UpdateScreenFade
	test	al, al
	je	.L453
	mov	rax, QWORD PTR [rsi]
	lea	rdx, Task_PlayerDataMenuOpenAnimWait[rip]
	mov	QWORD PTR 40[rax], rdx
.L453:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_OptionsScreenMenuCursorMoveAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_OptionsScreenMenuCursorMoveAnim
Task_OptionsScreenMenuCursorMoveAnim:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	lea	r10, sMenuCursorMoveAnims[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	movsx	r9, BYTE PTR 2295[rbx]
	movsx	rdx, BYTE PTR 2292[rbx]
	movsx	cx, BYTE PTR [r10+r9]
	mov	r8, rdx
	sal	rdx, 6
	add	rdx, rbx
	lea	eax, 32[rcx]
	mov	WORD PTR 864[rbx], cx
	mov	WORD PTR 1166[rdx], ax
	mov	BYTE PTR 1181[rdx], 0
	cmp	r8b, 3
	jg	.L462
	lea	r11d, 152[rcx]
	mov	BYTE PTR 1693[rdx], 0
	mov	WORD PTR 1678[rdx], r11w
	test	r8b, r8b
	jne	.L462
	lea	rax, 1896[rbx]
	lea	edx, 163[rcx]
	lea	r8, 2280[rbx]
	.p2align 4,,10
	.p2align 3
.L463:
	mov	WORD PTR 38[rax], dx
	add	rax, 64
	add	edx, 10
	mov	BYTE PTR -11[rax], 7
	cmp	r8, rax
	jne	.L463
.L462:
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	eax, -216
	sub	eax, ecx
	movsx	rcx, BYTE PTR 2293[rbx]
	mov	WORD PTR 8[rdx], ax
	movsx	dx, BYTE PTR 8[r10+r9]
	mov	r8, rcx
	sal	rcx, 6
	add	rcx, rbx
	lea	eax, 32[rdx]
	mov	WORD PTR 1166[rcx], ax
	mov	BYTE PTR 1181[rcx], 1
	cmp	r8b, 3
	jg	.L461
	lea	r9d, 152[rdx]
	mov	BYTE PTR 1693[rcx], 1
	mov	WORD PTR 1678[rcx], r9w
	test	r8b, r8b
	jne	.L461
	lea	rax, 1896[rbx]
	add	dx, 163
	lea	rcx, 2280[rbx]
	.p2align 4,,10
	.p2align 3
.L466:
	mov	WORD PTR 38[rax], dx
	add	rax, 64
	add	edx, 10
	mov	BYTE PTR -11[rax], 8
	cmp	rcx, rax
	jne	.L466
.L461:
	call	OptionsScreenRenderUI
	movzx	eax, BYTE PTR 2295[rbx]
	add	eax, 1
	mov	BYTE PTR 2295[rbx], al
	cmp	al, 7
	jle	.L458
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_OptionsScreenMain[rip]
	mov	QWORD PTR 40[rax], rsi
.L458:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_LanguageScreenFadeIn;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_LanguageScreenFadeIn
Task_LanguageScreenFadeIn:
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
	call	LanguageScreenRenderUI
	add	rbx, 672
	call	ReseedRng
	mov	rcx, rbx
	call	UpdateScreenFade
	test	al, al
	je	.L469
	mov	rax, QWORD PTR [rsi]
	lea	rdx, Task_LanguageScreenMain[rip]
	mov	QWORD PTR 40[rax], rdx
.L469:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_TimeRecordsScreenFadeOutToSelectedCourse;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_TimeRecordsScreenFadeOutToSelectedCourse
Task_TimeRecordsScreenFadeOutToSelectedCourse:
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
	mov	rcx, rbx
	call	UpdateScreenFade
	test	al, al
	je	.L478
	movzx	eax, BYTE PTR 2433[rbx]
	mov	edx, 2
	sal	eax, 2
	cmp	BYTE PTR 2444[rbx], 0
	jne	.L476
	movzx	edx, BYTE PTR 2434[rbx]
.L476:
	add	eax, edx
	mov	rcx, QWORD PTR 696[rbx]
	mov	rdx, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	BYTE PTR [rdx], al
	call	EwramFree
	mov	rcx, QWORD PTR [rsi]
	call	TaskDestroy
	nop
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	GameStageStart
	.p2align 4,,10
	.p2align 3
.L478:
	xor	ecx, ecx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TimeRecordsScreenRenderCoursesViewUI
	.seh_endproc
	.p2align 4
	.def	ButtonConfigMenuStartOver;	.scl	3;	.type	32;	.endef
	.seh_proc	ButtonConfigMenuStartOver
ButtonConfigMenuStartOver:
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
	mov	r8d, 256
	mov	r9d, 256
	mov	rax, QWORD PTR 0[rbp]
	mov	rax, QWORD PTR 24[rax]
	mov	rdx, QWORD PTR [rax]
	movsx	rcx, BYTE PTR 781[rax]
	mov	WORD PTR 776[rax], r8w
	lea	rbx, 392[rax]
	mov	BYTE PTR 778[rax], 2
	lea	rdi, 584[rax]
	mov	DWORD PTR 848[rdx], 131073
	lea	rcx, [rcx+rcx*8]
	mov	WORD PTR 852[rdx], r9w
	lea	rdx, sButtonConfigActionsText[rip]
	lea	rsi, [rdx+rcx*2]
.L480:
	movzx	eax, WORD PTR [rsi]
	mov	rcx, rbx
	add	rbx, 64
	add	rsi, 6
	mov	WORD PTR -46[rbx], ax
	movzx	eax, WORD PTR -4[rsi]
	mov	BYTE PTR -16[rbx], al
	call	UpdateSpriteAnimation
	cmp	rbx, rdi
	jne	.L480
	mov	rax, QWORD PTR 0[rbp]
	lea	rdi, Task_ButtonConfigMenuHandleStartOver[rip]
	mov	QWORD PTR 40[rax], rdi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.def	Task_ButtonConfigMenuAButtonMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_ButtonConfigMenuAButtonMain
Task_ButtonConfigMenuAButtonMain:
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
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	movsx	rax, BYTE PTR 781[rbx]
	lea	rdx, [rax+rax*8]
	lea	rax, sButtonConfigActionsText[rip]
	lea	rdi, [rax+rdx*2]
	call	ButtonConfigMenuRenderUI
	mov	rbp, QWORD PTR .refptr.gRepeatedKeys[rip]
	test	BYTE PTR 0[rbp], 48
	jne	.L504
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	movzx	eax, WORD PTR [rax]
	test	al, 1
	jne	.L505
	test	al, 2
	jne	.L506
	test	al, 4
	jne	.L507
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L505:
	movzx	edx, BYTE PTR 776[rbx]
	movzx	eax, BYTE PTR 777[rbx]
	cmp	dl, al
	je	.L508
.L488:
	cmp	BYTE PTR 778[rbx], dl
	je	.L509
.L492:
	mov	BYTE PTR 779[rbx], 1
	mov	ecx, 106
	lea	rdi, Task_ButtonConfigMenuHandleAButtonComplete[rip]
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L504:
	mov	ecx, 108
	call	m4aSongNumStart
	test	BYTE PTR 0[rbp], 32
	je	.L484
	movzx	eax, BYTE PTR 776[rbx]
	test	al, al
	je	.L485
	sub	eax, 1
	movzx	edx, al
	lea	rdx, [rdx+rdx*2]
	lea	rdi, [rdi+rdx*2]
.L486:
	mov	BYTE PTR 776[rbx], al
	movzx	eax, WORD PTR [rdi]
	lea	rcx, 392[rbx]
	mov	WORD PTR 410[rbx], ax
	movzx	eax, WORD PTR 2[rdi]
	mov	BYTE PTR 440[rbx], al
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	UpdateSpriteAnimation
	.p2align 4,,10
	.p2align 3
.L506:
	mov	ecx, 107
	lea	rdi, Task_ButtonMenuConfigCloseAnim[rip]
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rbx]
	mov	BYTE PTR 780[rbx], 0
	mov	BYTE PTR 2296[rax], 0
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L484:
	movzx	edx, BYTE PTR 776[rbx]
	xor	eax, eax
	cmp	dl, 1
	ja	.L486
	lea	eax, 1[rdx]
	movzx	edx, al
	lea	rdx, [rdx+rdx*2]
	lea	rdi, [rdi+rdx*2]
	jmp	.L486
	.p2align 4,,10
	.p2align 3
.L509:
	movzx	r9d, BYTE PTR 777[rbx]
	mov	eax, edx
	xor	r8d, r8d
	.p2align 4,,10
	.p2align 3
.L493:
	lea	ecx, 1[rax]
	cmp	al, 2
	movzx	eax, cl
	cmovnb	rax, r8
	mov	BYTE PTR 778[rbx], al
	cmp	al, dl
	je	.L493
	cmp	al, r9b
	je	.L493
	lea	rax, [rax+rax*2]
	lea	rcx, 520[rbx]
	lea	rax, [rdi+rax*2]
	movzx	edx, WORD PTR [rax]
	movzx	eax, WORD PTR 2[rax]
	mov	WORD PTR 538[rbx], dx
	mov	BYTE PTR 568[rbx], al
	call	UpdateSpriteAnimation
	jmp	.L492
	.p2align 4,,10
	.p2align 3
.L508:
	movzx	r9d, BYTE PTR 778[rbx]
	xor	r8d, r8d
	.p2align 4,,10
	.p2align 3
.L489:
	lea	ecx, 1[rax]
	cmp	al, 2
	movzx	eax, cl
	cmovnb	rax, r8
	mov	BYTE PTR 777[rbx], al
	cmp	dl, al
	je	.L489
	cmp	dl, r9b
	je	.L489
	lea	rax, [rax+rax*2]
	lea	rcx, 456[rbx]
	lea	rax, [rdi+rax*2]
	movzx	edx, WORD PTR [rax]
	movzx	eax, WORD PTR 2[rax]
	mov	WORD PTR 474[rbx], dx
	mov	BYTE PTR 504[rbx], al
	call	UpdateSpriteAnimation
	movzx	edx, BYTE PTR 776[rbx]
	jmp	.L488
	.p2align 4,,10
	.p2align 3
.L507:
	mov	ecx, 106
	call	m4aSongNumStart
	nop
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	ButtonConfigMenuStartOver
	.p2align 4,,10
	.p2align 3
.L485:
	add	rdi, 12
	mov	eax, 2
	jmp	.L486
	.seh_endproc
	.p2align 4
	.def	Task_ButtonConfigMenuBButtonMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_ButtonConfigMenuBButtonMain
Task_ButtonConfigMenuBButtonMain:
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
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	movsx	rax, BYTE PTR 781[rbx]
	lea	rdx, [rax+rax*8]
	lea	rax, sButtonConfigActionsText[rip]
	lea	rsi, [rax+rdx*2]
	call	ButtonConfigMenuRenderUI
	mov	rbp, QWORD PTR .refptr.gRepeatedKeys[rip]
	test	BYTE PTR 0[rbp], 48
	jne	.L547
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	movzx	eax, WORD PTR [rax]
	test	al, 1
	jne	.L548
	test	al, 2
	jne	.L549
	test	al, 4
	jne	.L550
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L548:
	movzx	ecx, BYTE PTR 776[rbx]
	movzx	eax, BYTE PTR 778[rbx]
	movzx	r9d, BYTE PTR 777[rbx]
	cmp	cl, al
	je	.L522
	cmp	al, r9b
	je	.L522
.L523:
	mov	BYTE PTR 779[rbx], 2
	mov	ecx, 106
	lea	rsi, Task_ButtonConfigMenuHandleBButtonComplete[rip]
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rdi]
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L547:
	mov	ecx, 108
	call	m4aSongNumStart
	movzx	edx, WORD PTR 0[rbp]
	test	dl, 32
	jne	.L551
	and	edx, 16
	movzx	eax, BYTE PTR 777[rbx]
	je	.L516
	movzx	r8d, BYTE PTR 776[rbx]
	xor	ecx, ecx
	.p2align 4,,10
	.p2align 3
.L518:
	lea	edx, 1[rax]
	cmp	al, 2
	movzx	eax, dl
	cmovnb	rax, rcx
	cmp	r8b, al
	je	.L518
.L546:
	mov	BYTE PTR 777[rbx], al
.L516:
	lea	rax, [rax+rax*2]
	lea	rcx, 456[rbx]
	lea	rax, [rsi+rax*2]
	movzx	edx, WORD PTR [rax]
	movzx	eax, WORD PTR 2[rax]
	mov	WORD PTR 474[rbx], dx
	mov	BYTE PTR 504[rbx], al
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	UpdateSpriteAnimation
	.p2align 4,,10
	.p2align 3
.L549:
	movzx	ecx, BYTE PTR 776[rbx]
	movzx	eax, BYTE PTR 777[rbx]
	movzx	r9d, BYTE PTR 778[rbx]
	cmp	cl, al
	je	.L530
	cmp	al, r9b
	je	.L530
.L531:
	mov	ecx, 107
	lea	rsi, Task_ButtonConfigMenuHandleStartOver[rip]
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rdi]
	mov	BYTE PTR 779[rbx], 0
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L551:
	movzx	eax, BYTE PTR 777[rbx]
	movzx	r8d, BYTE PTR 776[rbx]
	mov	ecx, 2
	.p2align 4,,10
	.p2align 3
.L514:
	lea	edx, -1[rax]
	test	al, al
	movzx	eax, dl
	cmove	rax, rcx
	cmp	r8b, al
	je	.L514
	jmp	.L546
	.p2align 4,,10
	.p2align 3
.L522:
	xor	r8d, r8d
	jmp	.L521
	.p2align 4,,10
	.p2align 3
.L525:
	lea	edx, 1[rax]
	cmp	al, 2
	movzx	eax, dl
	cmovnb	rax, r8
	mov	BYTE PTR 778[rbx], al
.L521:
	cmp	cl, al
	je	.L525
	cmp	al, r9b
	je	.L525
	lea	rax, [rax+rax*2]
	lea	rcx, 520[rbx]
	lea	rax, [rsi+rax*2]
	movzx	edx, WORD PTR [rax]
	movzx	eax, WORD PTR 2[rax]
	mov	WORD PTR 538[rbx], dx
	mov	BYTE PTR 568[rbx], al
	call	UpdateSpriteAnimation
	jmp	.L523
	.p2align 4,,10
	.p2align 3
.L550:
	mov	ecx, 106
	call	m4aSongNumStart
	nop
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	ButtonConfigMenuStartOver
	.p2align 4,,10
	.p2align 3
.L530:
	xor	r8d, r8d
	jmp	.L529
	.p2align 4,,10
	.p2align 3
.L533:
	lea	edx, 1[rax]
	cmp	al, 2
	movzx	eax, dl
	cmovnb	rax, r8
	mov	BYTE PTR 777[rbx], al
.L529:
	cmp	cl, al
	je	.L533
	cmp	al, r9b
	je	.L533
	lea	rax, [rax+rax*2]
	lea	rcx, 456[rbx]
	lea	rax, [rsi+rax*2]
	movzx	edx, WORD PTR [rax]
	movzx	eax, WORD PTR 2[rax]
	mov	WORD PTR 474[rbx], dx
	mov	BYTE PTR 504[rbx], al
	call	UpdateSpriteAnimation
	jmp	.L531
	.seh_endproc
	.p2align 4
	.def	Task_ButtonConfigMenuRShoulderMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_ButtonConfigMenuRShoulderMain
Task_ButtonConfigMenuRShoulderMain:
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
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rdi, QWORD PTR [rbx]
	call	ButtonConfigMenuRenderUI
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	movzx	eax, WORD PTR [rax]
	test	al, 1
	jne	.L568
	test	al, 2
	jne	.L569
	test	al, 4
	jne	.L570
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L570:
	mov	ecx, 106
	call	m4aSongNumStart
	nop
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	ButtonConfigMenuStartOver
	.p2align 4,,10
	.p2align 3
.L568:
	mov	ecx, 106
	call	m4aSongNumStart
	movzx	ecx, BYTE PTR 776[rbx]
	movzx	edx, BYTE PTR 777[rbx]
	movzx	eax, BYTE PTR 778[rbx]
	cmp	cl, 1
	je	.L554
	cmp	cl, 2
	je	.L555
	test	cl, cl
	jne	.L556
	mov	r8d, 1
	mov	WORD PTR 848[rdi], r8w
.L556:
	cmp	dl, 1
	je	.L557
	cmp	dl, 2
	je	.L558
	test	dl, dl
	jne	.L559
	mov	r10d, 2
	mov	WORD PTR 848[rdi], r10w
.L559:
	cmp	al, 1
	je	.L560
	cmp	al, 2
	je	.L561
	test	al, al
	jne	.L562
	mov	ecx, 256
	mov	WORD PTR 848[rdi], cx
.L562:
	mov	rax, QWORD PTR [rbx]
	mov	BYTE PTR 780[rbx], 0
	lea	rdx, Task_ButtonMenuConfigCloseAnim[rip]
	mov	BYTE PTR 2296[rax], 0
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L554:
	mov	ecx, 1
	mov	WORD PTR 850[rdi], cx
	jmp	.L556
	.p2align 4,,10
	.p2align 3
.L569:
	mov	ecx, 107
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rsi]
	lea	rdx, Task_ButtonConfigMenuHandleAButtonComplete[rip]
	mov	BYTE PTR 779[rbx], 0
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L561:
	mov	eax, 256
	mov	WORD PTR 852[rdi], ax
	jmp	.L562
	.p2align 4,,10
	.p2align 3
.L560:
	mov	edx, 256
	mov	WORD PTR 850[rdi], dx
	jmp	.L562
	.p2align 4,,10
	.p2align 3
.L558:
	mov	r8d, 2
	mov	WORD PTR 852[rdi], r8w
	jmp	.L559
	.p2align 4,,10
	.p2align 3
.L557:
	mov	r9d, 2
	mov	WORD PTR 850[rdi], r9w
	jmp	.L559
	.p2align 4,,10
	.p2align 3
.L555:
	mov	r11d, 1
	mov	WORD PTR 852[rdi], r11w
	jmp	.L556
	.seh_endproc
	.p2align 4
	.def	Task_OptionsScreenFadeInFromLanguageScreen;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_OptionsScreenFadeInFromLanguageScreen
Task_OptionsScreenFadeInFromLanguageScreen:
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
	call	OptionsScreenRenderUI
	add	rbx, 2280
	mov	rcx, rbx
	call	UpdateScreenFade
	test	al, al
	je	.L571
	mov	rax, QWORD PTR [rsi]
	lea	rdx, Task_OptionsScreenMain[rip]
	mov	QWORD PTR 40[rax], rdx
.L571:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	TimeRecordsScreenRefreshTimesUI;	.scl	3;	.type	32;	.endef
	.seh_proc	TimeRecordsScreenRefreshTimesUI
TimeRecordsScreenRefreshTimesUI:
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
	mov	rdx, rcx
	mov	ecx, 12
	cmp	BYTE PTR 2444[rdx], 0
	jne	.L577
	movzx	eax, BYTE PTR 2434[rdx]
	lea	rcx, [rax+rax*2]
	add	rcx, rcx
.L577:
	movzx	r8d, BYTE PTR 2432[rdx]
	movzx	eax, BYTE PTR 2433[rdx]
	lea	r9, [rax+rax*8]
	mov	rax, r8
	sal	rax, 6
	sub	rax, r8
	add	rax, rax
	lea	r8, [rax+r9*2]
	add	r8, rcx
	cmp	BYTE PTR 2445[rdx], 2
	je	.L578
	mov	rax, QWORD PTR 688[rdx]
	mov	rax, QWORD PTR 464[rax]
	lea	r8, 12[rax+r8]
.L579:
	mov	r15, r8
	lea	r14, 1216[rdx]
	mov	ebx, 272
	lea	r13, sTimeRecordDigitTiles[rip]
.L581:
	lea	rax, 64[r14]
	mov	QWORD PTR 32[rsp], rax
	lea	rax, 192[r14]
	mov	QWORD PTR 40[rsp], rax
	movzx	eax, WORD PTR [r15]
	cmp	ax, -29537
	ja	.L583
	movzx	ecx, ax
	mov	rdx, QWORD PTR .refptr.gMillisUnpackTable[rip]
	imul	ecx, ecx, 34953
	shr	ecx, 21
	mov	r9d, ecx
	sal	r9d, 4
	sub	r9d, ecx
	mov	ecx, eax
	sal	r9d, 2
	sub	ecx, r9d
	sub	eax, ecx
	movzx	r9d, cx
	movzx	eax, ax
	movzx	esi, BYTE PTR [rdx+r9*2]
	movzx	r9d, BYTE PTR 1[rdx+r9*2]
	imul	eax, eax, 34953
	lea	esi, [rsi+rsi*4]
	lea	esi, [r9+rsi*2]
	shr	eax, 21
	movzx	ecx, ax
	imul	ecx, ecx, 34953
	shr	ecx, 21
	mov	r9d, ecx
	mov	edi, ecx
	and	ecx, 63
	sal	r9d, 4
	sub	edi, r9d
	lea	edi, [rax+rdi*4]
	lea	rax, [rcx+rcx*2]
	lea	rax, 0[r13+rax*2]
	mov	r10d, edi
	movzx	r9d, WORD PTR [rax]
	movzx	ecx, BYTE PTR 2[rax]
	movsx	eax, di
	sar	r10w, 15
	imul	eax, eax, 26215
	sar	eax, 18
	sub	eax, r10d
	movsx	r12, ax
	lea	eax, [rax+rax*4]
	add	eax, eax
	sub	edi, eax
	movzx	eax, si
	imul	eax, eax, 52429
	movsx	rdi, di
	shr	eax, 19
	movsx	rbp, ax
	lea	eax, [rax+rax*4]
	add	eax, eax
	sub	esi, eax
	movsx	rsi, si
.L580:
	mov	WORD PTR 18[r14], r9w
	add	r15, 2
	mov	BYTE PTR 48[r14], cl
	mov	rcx, r14
	mov	WORD PTR 38[r14], bx
	call	UpdateSpriteAnimation
	lea	eax, 16[rbx]
	mov	WORD PTR -90[r14], ax
	lea	rax, [r12+r12*2]
	lea	rax, 0[r13+rax*2]
	movzx	ecx, WORD PTR [rax]
	movzx	eax, WORD PTR 2[rax]
	mov	BYTE PTR 112[r14], al
	lea	eax, 32[rbx]
	mov	WORD PTR 82[r14], cx
	mov	rcx, QWORD PTR 32[rsp]
	mov	WORD PTR 102[r14], ax
	call	UpdateSpriteAnimation
	lea	rax, [rdi+rdi*2]
	lea	rax, 0[r13+rax*2]
	movzx	ecx, WORD PTR [rax]
	movzx	eax, WORD PTR 2[rax]
	mov	BYTE PTR 176[r14], al
	lea	eax, 48[rbx]
	mov	WORD PTR 146[r14], cx
	lea	rcx, 128[r14]
	mov	WORD PTR 166[r14], ax
	call	UpdateSpriteAnimation
	lea	eax, 64[rbx]
	mov	WORD PTR -26[r14], ax
	lea	rax, 0[rbp+rbp*2]
	lea	rax, 0[r13+rax*2]
	movzx	ecx, WORD PTR [rax]
	movzx	eax, WORD PTR 2[rax]
	mov	BYTE PTR 240[r14], al
	lea	eax, 80[rbx]
	mov	WORD PTR 210[r14], cx
	mov	rcx, QWORD PTR 40[rsp]
	mov	WORD PTR 230[r14], ax
	call	UpdateSpriteAnimation
	lea	rax, [rsi+rsi*2]
	lea	rax, 0[r13+rax*2]
	movzx	ecx, WORD PTR [rax]
	movzx	eax, WORD PTR 2[rax]
	mov	BYTE PTR 304[r14], al
	lea	eax, 96[rbx]
	add	ebx, 8
	mov	WORD PTR 274[r14], cx
	lea	rcx, 256[r14]
	add	r14, 448
	mov	WORD PTR -154[r14], ax
	call	UpdateSpriteAnimation
	cmp	bx, 296
	jne	.L581
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
.L583:
	mov	esi, 9
	mov	ebp, 9
	mov	edi, 9
	mov	r12d, 5
	mov	ecx, 9
	mov	r9d, 1047
	jmp	.L580
	.p2align 4,,10
	.p2align 3
.L578:
	add	r8, QWORD PTR 696[rdx]
	jmp	.L579
	.seh_endproc
	.p2align 4
	.def	Task_TimeRecordsScreenCharacterChangeAnimOut;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_TimeRecordsScreenCharacterChangeAnimOut
Task_TimeRecordsScreenCharacterChangeAnimOut:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, BYTE PTR 2435[rbx]
	mov	rcx, rbx
	sub	eax, 1
	mov	BYTE PTR 2435[rbx], al
	movzx	eax, al
	lea	eax, [rax+rax*8]
	lea	eax, -426[rax+rax]
	mov	WORD PTR 4[rdx], ax
	mov	WORD PTR 8[rdx], ax
	call	TimeRecordsScreenRefreshTimesUI
	mov	ecx, 1
	call	TimeRecordsScreenRenderCoursesViewUI
	cmp	BYTE PTR 2435[rbx], 0
	jne	.L585
	mov	rax, QWORD PTR [rsi]
	lea	rcx, Task_TimeRecordsScreenHandleCharacterChange[rip]
	mov	QWORD PTR 40[rax], rcx
.L585:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_TimeRecordsScreenHandleActChange;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_TimeRecordsScreenHandleActChange
Task_TimeRecordsScreenHandleActChange:
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
	movzx	eax, BYTE PTR 2434[rbx]
	lea	rcx, 304[rbx]
	lea	rdx, [rax+rax*2]
	lea	rax, sTimeRecordsZoneActTitleDigits[rip]
	lea	rax, [rax+rdx*2]
	movzx	edx, WORD PTR [rax]
	movzx	eax, WORD PTR 2[rax]
	mov	WORD PTR 322[rbx], dx
	mov	BYTE PTR 352[rbx], al
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	call	TimeRecordsScreenRefreshTimesUI
	xor	ecx, ecx
	call	TimeRecordsScreenRenderCoursesViewUI
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_TimeRecordsScreenCourseChangeAnim[rip]
	mov	BYTE PTR 2435[rbx], 0
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_TimeRecordsScreenHandleCourseChange;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_TimeRecordsScreenHandleCourseChange
Task_TimeRecordsScreenHandleCourseChange:
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
	lea	r12, sTimeRecordsZoneActTitleDigits[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, BYTE PTR 2433[rbx]
	movzx	esi, BYTE PTR 2443[rbx]
	lea	rcx, 176[rbx]
	lea	rbp, 368[rbx]
	lea	rax, [rax+rax*2]
	lea	rax, [r12+rax*2]
	movzx	edx, WORD PTR [rax]
	movzx	eax, WORD PTR 2[rax]
	mov	WORD PTR 194[rbx], dx
	mov	BYTE PTR 224[rbx], al
	call	UpdateSpriteAnimation
	movzx	eax, sil
	lea	rdx, [rax+rax*4]
	lea	rsi, [rax+rdx*4]
	add	rsi, rsi
	cmp	BYTE PTR 2444[rbx], 0
	je	.L591
.L589:
	movzx	eax, BYTE PTR 2433[rbx]
	lea	rdx, sZoneBossTitles[rip]
	lea	rax, [rax+rax*2]
	lea	rax, [rsi+rax*2]
	add	rax, rdx
.L590:
	movzx	edx, WORD PTR [rax]
	movzx	eax, WORD PTR 2[rax]
	mov	rcx, rbp
	mov	WORD PTR 386[rbx], dx
	mov	BYTE PTR 416[rbx], al
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	call	TimeRecordsScreenRefreshTimesUI
	xor	ecx, ecx
	call	TimeRecordsScreenRenderCoursesViewUI
	mov	rax, QWORD PTR [rdi]
	lea	rdi, Task_TimeRecordsScreenCourseChangeAnim[rip]
	mov	BYTE PTR 2435[rbx], 0
	mov	QWORD PTR 40[rax], rdi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L591:
	movzx	eax, BYTE PTR 2434[rbx]
	lea	rcx, 304[rbx]
	lea	rax, [rax+rax*2]
	lea	rax, [r12+rax*2]
	movzx	edx, WORD PTR [rax]
	movzx	eax, WORD PTR 2[rax]
	mov	WORD PTR 322[rbx], dx
	mov	BYTE PTR 352[rbx], al
	call	UpdateSpriteAnimation
	cmp	BYTE PTR 2444[rbx], 0
	jne	.L589
	movzx	eax, BYTE PTR 2433[rbx]
	lea	rdx, sZoneNameTitles[rip]
	lea	rax, [rax+rax*2]
	lea	rax, [rsi+rax*2]
	add	rax, rdx
	jmp	.L590
	.seh_endproc
	.p2align 4
	.def	sub_806B988;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_806B988
sub_806B988:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	r10, QWORD PTR gUnknown_080D95A4[rip+16]
	mov	r11, QWORD PTR gUnknown_080D95A4[rip+24]
	lea	r9, 12[rcx]
.L597:
	movzx	r8d, WORD PTR [rcx]
	cmp	r8w, -1
	je	.L593
	movdqu	xmm0, XMMWORD PTR gUnknown_080D95A4[rip]
	mov	QWORD PTR 16[rsp], r10
	mov	rdx, rsp
	mov	eax, 17
	mov	QWORD PTR 24[rsp], r11
	movups	XMMWORD PTR [rsp], xmm0
	jmp	.L595
	.p2align 4,,10
	.p2align 3
.L605:
	movzx	eax, WORD PTR 2[rdx]
	add	rdx, 2
	cmp	ax, -1
	je	.L604
.L595:
	cmp	r8w, ax
	jne	.L605
.L594:
	add	rcx, 2
	cmp	rcx, r9
	jne	.L597
.L593:
	xor	eax, eax
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L604:
	cmp	r8w, 267
	ja	.L594
	mov	eax, 1
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.def	Task_ProfileNameScreenMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_ProfileNameScreenMain
Task_ProfileNameScreenMain:
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
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	r12, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [r12]
	mov	rdi, QWORD PTR 24[rax]
	call	ProfileNameScreenRenderUI
	call	Random
	mov	ebx, eax
	call	Random
	sal	ebx, 16
	xor	ecx, ecx
	movzx	eax, ax
	mov	ebp, ebx
	or	ebx, eax
	xor	ebp, eax
	mov	edx, ebx
	call	SeedRng
	call	Random
	mov	esi, eax
	call	Random
	sal	esi, 16
	mov	ecx, ebp
	mov	edx, ebx
	movzx	eax, ax
	xor	esi, eax
	xor	ecx, esi
	call	SeedRng
	mov	rax, QWORD PTR [r12]
	mov	rsi, QWORD PTR .refptr.gRepeatedKeys[rip]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, WORD PTR [rsi]
	test	ah, 2
	jne	.L697
	test	ah, 1
	jne	.L613
	test	al, -16
	je	.L614
	mov	ecx, 108
	call	m4aSongNumStart
	movzx	eax, WORD PTR [rsi]
	test	al, 64
	jne	.L698
	test	al, -128
	jne	.L699
	test	al, 32
	jne	.L700
	test	al, 16
	jne	.L701
	.p2align 4,,10
	.p2align 3
.L614:
	test	al, 1
	je	.L634
	cmp	BYTE PTR 826[rdi], 10
	jle	.L702
	movzx	eax, BYTE PTR 827[rdi]
	cmp	al, 5
	je	.L647
	cmp	al, 6
	je	.L648
	cmp	al, 4
	jne	.L606
	movzx	eax, WORD PTR 1282[rdi]
	test	ax, ax
	je	.L606
	sub	eax, 1
	mov	WORD PTR 1282[rdi], ax
	jmp	.L695
	.p2align 4,,10
	.p2align 3
.L613:
	movzx	eax, WORD PTR 1282[rbx]
	cmp	ax, 4
	ja	.L606
	movzx	edx, ax
	cmp	WORD PTR 1284[rbx+rdx*2], -1
	lea	rcx, 640[rdx]
	jne	.L616
	mov	r12d, 17
	mov	WORD PTR 4[rbx+rcx*2], r12w
.L616:
	add	eax, 1
	mov	WORD PTR 1282[rbx], ax
	jmp	.L695
	.p2align 4,,10
	.p2align 3
.L697:
	movzx	eax, WORD PTR 1282[rbx]
	test	ax, ax
	jne	.L703
.L606:
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.p2align 4,,10
	.p2align 3
.L703:
	lea	edx, -1[rax]
	mov	WORD PTR 1282[rbx], dx
	cmp	dx, 4
	ja	.L695
	cmp	WORD PTR 1284[rbx+rax*2], -1
	je	.L704
.L695:
	mov	ecx, 108
.L696:
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L634:
	mov	rdx, QWORD PTR .refptr.gPressedKeys[rip]
	test	BYTE PTR [rdx], 8
	je	.L651
	cmp	WORD PTR 826[rdi], 1547
	jne	.L652
.L648:
	lea	rcx, 1284[rdi]
	call	sub_806B988
	mov	ecx, 107
	test	ax, ax
	je	.L696
	mov	ecx, 106
	call	m4aSongNumStart
	nop
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	ProfileNameScreenInputComplete
	.p2align 4,,10
	.p2align 3
.L698:
	cmp	BYTE PTR 826[rbx], 10
	movzx	eax, BYTE PTR 827[rbx]
	jg	.L618
	test	al, al
	jne	.L705
	movzx	eax, WORD PTR 824[rbx]
	test	ax, ax
	je	.L621
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	sub	eax, 11
	mov	WORD PTR 824[rbx], ax
	sub	WORD PTR 6[rdx], 16
	jmp	.L606
	.p2align 4,,10
	.p2align 3
.L651:
	test	al, 2
	je	.L606
	mov	ecx, 107
	call	m4aSongNumStart
	movzx	edx, WORD PTR 1282[rdi]
	test	dx, dx
	je	.L660
	movzx	eax, dx
	cmp	WORD PTR 1284[rdi+rax*2], -1
	je	.L662
	cmp	dx, 5
	jbe	.L655
.L662:
	sub	edx, 1
	mov	WORD PTR 1282[rdi], dx
.L655:
	mov	eax, edx
	cmp	dx, 4
	jg	.L657
.L654:
	lea	ecx, 642[rax]
	mov	eax, 5
	sub	eax, edx
	movsx	rcx, cx
	add	rcx, rcx
	movzx	eax, ax
	lea	rdx, 2[rdi+rcx]
	lea	r8, [rax+rax]
	add	rcx, rdi
	call	memmove
.L657:
	mov	eax, -1
	mov	WORD PTR 1294[rdi], ax
	jmp	.L606
	.p2align 4,,10
	.p2align 3
.L702:
	movzx	eax, WORD PTR 1296[rdi]
	movzx	edx, WORD PTR 1282[rdi]
	cmp	ax, 10
	je	.L661
	cmp	ax, 21
	je	.L661
	cmp	dx, 5
	ja	.L606
.L658:
	mov	ecx, 106
	call	m4aSongNumStart
	movzx	edx, WORD PTR 1282[rdi]
	movzx	ecx, WORD PTR 1296[rdi]
	mov	rax, rdx
	mov	WORD PTR 1284[rdi+rdx*2], cx
	cmp	dx, 4
	ja	.L606
	add	eax, 1
	mov	WORD PTR 1282[rdi], ax
	jmp	.L606
	.p2align 4,,10
	.p2align 3
.L652:
	mov	ecx, 106
	call	m4aSongNumStart
	mov	edx, 1547
	mov	WORD PTR 826[rdi], dx
	jmp	.L606
	.p2align 4,,10
	.p2align 3
.L705:
	sub	eax, 1
	mov	BYTE PTR 827[rbx], al
	jmp	.L606
	.p2align 4,,10
	.p2align 3
.L701:
	movzx	eax, BYTE PTR 826[rbx]
	cmp	BYTE PTR 827[rbx], 3
	lea	edx, 1[rax]
	jg	.L631
	cmp	al, 10
	mov	eax, 0
	cmovl	eax, edx
	mov	BYTE PTR 826[rbx], al
	jmp	.L606
	.p2align 4,,10
	.p2align 3
.L661:
	xor	ebx, ebx
	cmp	ax, 10
	movzx	eax, dx
	setne	bl
	add	ebx, 1
	cmp	dx, 5
	ja	.L639
	movzx	eax, WORD PTR 1284[rdi+rax*2]
	cmp	ax, -1
	je	.L706
	mov	ecx, ebx
	movzx	edx, ax
	call	sub_806BA14
	mov	ecx, 106
	test	ax, ax
	je	.L645
	call	m4aSongNumStart
	movzx	eax, WORD PTR 1282[rdi]
	mov	ecx, ebx
	movzx	edx, WORD PTR 1284[rdi+rax*2]
	lea	rbp, 224[rax]
	mov	rsi, rax
	call	sub_806A664
	mov	WORD PTR 836[rdi+rbp*2], ax
.L642:
	cmp	si, 5
	ja	.L606
	movzx	eax, WORD PTR 1296[rdi]
.L644:
	cmp	ax, 10
	je	.L606
	cmp	ax, 21
	je	.L606
	jmp	.L658
	.p2align 4,,10
	.p2align 3
.L618:
	lea	edx, -1[rax]
	cmp	al, 4
	mov	eax, 6
	cmovg	eax, edx
	mov	BYTE PTR 827[rbx], al
	jmp	.L606
	.p2align 4,,10
	.p2align 3
.L699:
	cmp	BYTE PTR 826[rbx], 10
	movzx	eax, BYTE PTR 827[rbx]
	jg	.L624
	cmp	al, 5
	jg	.L625
	add	eax, 1
	mov	BYTE PTR 827[rbx], al
	jmp	.L606
	.p2align 4,,10
	.p2align 3
.L700:
	movzx	eax, BYTE PTR 826[rbx]
	test	al, al
	je	.L629
	sub	eax, 1
	mov	BYTE PTR 826[rbx], al
	jmp	.L606
	.p2align 4,,10
	.p2align 3
.L647:
	movzx	eax, WORD PTR 1282[rdi]
	cmp	ax, 4
	ja	.L606
	movzx	edx, ax
	cmp	WORD PTR 1284[rdi+rdx*2], -1
	lea	rcx, 224[rdx]
	jne	.L649
	mov	r8d, 17
	mov	WORD PTR 836[rdi+rcx*2], r8w
.L649:
	add	eax, 1
	mov	WORD PTR 1282[rdi], ax
	jmp	.L695
	.p2align 4,,10
	.p2align 3
.L624:
	lea	edx, 1[rax]
	cmp	al, 6
	mov	eax, 4
	cmovl	eax, edx
	mov	BYTE PTR 827[rbx], al
	jmp	.L606
	.p2align 4,,10
	.p2align 3
.L621:
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	edi, 201
	mov	ebp, 165
	mov	BYTE PTR 827[rbx], 6
	mov	WORD PTR 824[rbx], bp
	mov	WORD PTR 6[rax], di
	jmp	.L606
	.p2align 4,,10
	.p2align 3
.L704:
	movdqu	xmm0, XMMWORD PTR gUnknown_080D95A4[rip]
	movdqu	xmm1, XMMWORD PTR gUnknown_080D95A4[rip+16]
	movzx	edx, dx
	lea	rcx, 32[rsp]
	movzx	r8d, WORD PTR 1284[rbx+rdx*2]
	mov	eax, 17
	movups	XMMWORD PTR 32[rsp], xmm0
	movups	XMMWORD PTR 48[rsp], xmm1
	jmp	.L611
	.p2align 4,,10
	.p2align 3
.L708:
	movzx	eax, WORD PTR 2[rcx]
	add	rcx, 2
	cmp	ax, -1
	je	.L707
.L611:
	cmp	r8w, ax
	jne	.L708
.L610:
	mov	eax, -1
	mov	WORD PTR 1284[rbx+rdx*2], ax
	jmp	.L695
	.p2align 4,,10
	.p2align 3
.L629:
	cmp	BYTE PTR 827[rbx], 3
	setg	al
	add	eax, 10
	mov	BYTE PTR 826[rbx], al
	jmp	.L606
	.p2align 4,,10
	.p2align 3
.L660:
	xor	eax, eax
	jmp	.L654
	.p2align 4,,10
	.p2align 3
.L625:
	movzx	eax, WORD PTR 824[rbx]
	cmp	ax, 164
	ja	.L626
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	add	eax, 11
	mov	WORD PTR 824[rbx], ax
	add	WORD PTR 6[rdx], 16
	jmp	.L606
.L639:
	sub	eax, 1
	mov	ecx, ebx
	cdqe
	movzx	edx, WORD PTR 1284[rdi+rax*2]
	call	sub_806BA14
	test	ax, ax
	jne	.L709
.L646:
	mov	r9d, 6
	mov	r10d, 1547
	mov	WORD PTR 1282[rdi], r9w
	mov	WORD PTR 826[rdi], r10w
	jmp	.L606
.L631:
	cmp	al, 11
	mov	eax, 0
	cmovl	eax, edx
	mov	BYTE PTR 826[rbx], al
	jmp	.L606
.L707:
	cmp	r8w, 267
	jbe	.L695
	jmp	.L610
.L706:
	mov	ecx, 106
	call	m4aSongNumStart
	movzx	r10d, WORD PTR 1282[rdi]
	mov	ecx, ebx
	lea	eax, -1[r10]
	mov	esi, r10d
	cdqe
	movzx	r11d, WORD PTR 1284[rdi+rax*2]
	lea	rbp, 224[rax]
	mov	edx, r11d
	call	sub_806BA14
	test	ax, ax
	jne	.L710
	movzx	eax, WORD PTR 1296[rdi]
	movsx	r10, r10d
	mov	WORD PTR 1284[rdi+r10*2], ax
	cmp	si, 4
	ja	.L646
	add	esi, 1
	mov	WORD PTR 1282[rdi], si
	jmp	.L644
.L645:
	call	m4aSongNumStart
	movzx	edx, WORD PTR 1282[rdi]
	movzx	eax, WORD PTR 1296[rdi]
	mov	rsi, rdx
	mov	WORD PTR 1284[rdi+rdx*2], ax
	jmp	.L642
.L626:
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	r11d, -39
	xor	esi, esi
	mov	BYTE PTR 827[rbx], 0
	mov	WORD PTR 824[rbx], si
	mov	WORD PTR 6[rax], r11w
	jmp	.L606
.L709:
	mov	ecx, 106
	call	m4aSongNumStart
	movzx	eax, WORD PTR 1282[rdi]
	mov	ecx, ebx
	sub	eax, 1
	cdqe
	movzx	edx, WORD PTR 1284[rdi+rax*2]
	lea	rsi, 224[rax]
	call	sub_806A664
	mov	WORD PTR 836[rdi+rsi*2], ax
	jmp	.L646
.L710:
	mov	edx, r11d
	mov	ecx, ebx
	call	sub_806A664
	mov	WORD PTR 836[rdi+rbp*2], ax
	jmp	.L642
	.seh_endproc
	.p2align 4
	.def	Task_OptionsScreenSubMenuCloseAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_OptionsScreenSubMenuCloseAnim
Task_OptionsScreenSubMenuCloseAnim:
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
	lea	rax, sSubMenuCloseAnim[rip]
	movsx	rdx, BYTE PTR 2295[rbx]
	movzx	ecx, WORD PTR [rax+rdx*2]
	movsx	rdx, BYTE PTR 2292[rbx]
	mov	r8, rdx
	sal	rdx, 6
	lea	eax, 32[rcx]
	mov	WORD PTR 864[rbx], cx
	add	rdx, rbx
	mov	WORD PTR 1166[rdx], ax
	mov	BYTE PTR 1181[rdx], 0
	cmp	r8b, 3
	jg	.L715
	lea	r9d, 152[rcx]
	mov	BYTE PTR 1693[rdx], 0
	mov	WORD PTR 1678[rdx], r9w
	test	r8b, r8b
	jne	.L715
	lea	rax, 1896[rbx]
	lea	edx, 163[rcx]
	lea	r8, 2280[rbx]
	.p2align 4,,10
	.p2align 3
.L716:
	mov	WORD PTR 38[rax], dx
	add	rax, 64
	add	edx, 10
	mov	BYTE PTR -11[rax], 7
	cmp	rax, r8
	jne	.L716
.L715:
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	eax, -216
	sub	eax, ecx
	mov	WORD PTR 8[rdx], ax
	call	OptionsScreenRenderUI
	movzx	eax, BYTE PTR 2295[rbx]
	add	eax, 1
	mov	BYTE PTR 2295[rbx], al
	cmp	al, 15
	jle	.L711
	mov	QWORD PTR gProfileScreenSubMenuNextVramAddress[rip], 0
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_OptionsScreenMain[rip]
	mov	QWORD PTR 40[rax], rsi
.L711:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_PlayerDataMenuFadeInFromTimeRecordsScreen;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_PlayerDataMenuFadeInFromTimeRecordsScreen
Task_PlayerDataMenuFadeInFromTimeRecordsScreen:
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
	call	PlayerDataMenuRenderUI
	add	rbx, 448
	mov	rcx, rbx
	call	UpdateScreenFade
	test	al, al
	je	.L718
	mov	rax, QWORD PTR [rsi]
	lea	rdx, Task_PlayerDataMenuOpenAnimWait[rip]
	mov	QWORD PTR 40[rax], rdx
.L718:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_PlayerDataMenuFadeInFromMultiplayerRecordsScreen;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_PlayerDataMenuFadeInFromMultiplayerRecordsScreen
Task_PlayerDataMenuFadeInFromMultiplayerRecordsScreen:
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
	call	PlayerDataMenuRenderUI
	add	rbx, 448
	mov	rcx, rbx
	call	UpdateScreenFade
	test	al, al
	je	.L723
	mov	rax, QWORD PTR [rsi]
	lea	rdx, Task_PlayerDataMenuOpenAnimWait[rip]
	mov	QWORD PTR 40[rax], rdx
.L723:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_OptionsScreenFadeInFromDeleteScreen;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_OptionsScreenFadeInFromDeleteScreen
Task_OptionsScreenFadeInFromDeleteScreen:
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
	call	OptionsScreenRenderUI
	add	rbx, 2280
	mov	rcx, rbx
	call	UpdateScreenFade
	test	al, al
	je	.L728
	mov	rax, QWORD PTR [rsi]
	lea	rdx, Task_OptionsScreenMain[rip]
	mov	QWORD PTR 40[rax], rdx
.L728:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_OptionScreenFadeIn;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_OptionScreenFadeIn
Task_OptionScreenFadeIn:
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
	call	OptionsScreenRenderUI
	add	rbx, 2280
	mov	rcx, rbx
	call	UpdateScreenFade
	test	al, al
	je	.L733
	mov	rax, QWORD PTR [rsi]
	lea	rdx, Task_OptionsScreenMain[rip]
	mov	QWORD PTR 40[rax], rdx
.L733:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_OptionsScreenFadeInFromSoundTest;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_OptionsScreenFadeInFromSoundTest
Task_OptionsScreenFadeInFromSoundTest:
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
	call	OptionsScreenRenderUI
	add	rbx, 2280
	mov	rcx, rbx
	call	UpdateScreenFade
	test	al, al
	je	.L738
	mov	rax, QWORD PTR [rsi]
	lea	rdx, Task_OptionsScreenMain[rip]
	mov	QWORD PTR 40[rax], rdx
.L738:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_LanguageScreenMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_LanguageScreenMain
Task_LanguageScreenMain:
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
	call	ReseedRng
	mov	rsi, QWORD PTR .refptr.gRepeatedKeys[rip]
	movzx	eax, WORD PTR [rsi]
	test	al, -128
	jne	.L768
	test	al, 64
	jne	.L769
.L746:
	call	LanguageScreenRenderUI
	test	BYTE PTR [rsi], -64
	jne	.L743
	mov	rsi, QWORD PTR .refptr.gPressedKeys[rip]
	cmp	BYTE PTR 697[rbx], 0
	movzx	eax, WORD PTR [rsi]
	jne	.L770
	test	al, 1
	jne	.L771
.L752:
	test	al, 2
	jne	.L772
.L743:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L770:
	test	al, 9
	je	.L743
	mov	ecx, 106
	call	m4aSongNumStart
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rax]
	movzx	eax, BYTE PTR 696[rbx]
	add	eax, 1
	mov	BYTE PTR 6[rdx], al
	jmp	.L767
	.p2align 4,,10
	.p2align 3
.L769:
	mov	ecx, 108
	call	m4aSongNumStart
	movzx	edx, BYTE PTR 696[rbx]
	test	dl, dl
	lea	eax, -1[rdx]
	mov	edx, 5
	cmovle	eax, edx
	mov	BYTE PTR 696[rbx], al
	call	LanguageScreenHandleLanguageChanged
	jmp	.L746
	.p2align 4,,10
	.p2align 3
.L768:
	mov	ecx, 108
	call	m4aSongNumStart
	movzx	edx, BYTE PTR 696[rbx]
	cmp	dl, 5
	lea	eax, 1[rdx]
	mov	edx, 0
	cmovge	eax, edx
	mov	BYTE PTR 696[rbx], al
	call	LanguageScreenHandleLanguageChanged
	jmp	.L746
	.p2align 4,,10
	.p2align 3
.L772:
	mov	ecx, 107
	call	m4aSongNumStart
.L767:
	mov	rax, QWORD PTR [rdi]
	mov	rcx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .LC0[rip]
	mov	QWORD PTR 672[rcx], rax
	add	rcx, 672
	mov	DWORD PTR 8[rcx], 255
	call	UpdateScreenFade
	mov	rax, QWORD PTR [rdi]
	lea	rdi, Task_LanguageScreenFadeOutAndExit[rip]
	mov	QWORD PTR 40[rax], rdi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L771:
	mov	ecx, 106
	call	m4aSongNumStart
	mov	rax, QWORD PTR 688[rbx]
	movzx	edx, BYTE PTR 696[rbx]
	lea	rbx, Task_LanguageScreenFadeOutAndExit[rip]
	mov	BYTE PTR 859[rax], dl
	mov	rax, QWORD PTR [rdi]
	mov	rcx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .LC0[rip]
	mov	QWORD PTR 672[rcx], rax
	add	rcx, 672
	mov	DWORD PTR 8[rcx], 255
	call	UpdateScreenFade
	mov	rax, QWORD PTR [rdi]
	mov	QWORD PTR 40[rax], rbx
	movzx	eax, WORD PTR [rsi]
	jmp	.L752
	.seh_endproc
	.p2align 4
	.globl	CreateOptionsScreen
	.def	CreateOptionsScreen;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateOptionsScreen
CreateOptionsScreen:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	esi, ecx
	mov	ecx, 9
	call	m4aSongNumStart
	mov	r9d, 4
	mov	r8d, 4096
	lea	rax, OptionsScreenTaskDestroyHandler[rip]
	mov	QWORD PTR 32[rsp], rax
	mov	edx, 2304
	lea	rcx, Task_OptionsScreenShow[rip]
	call	TaskCreate
	mov	rbx, QWORD PTR 24[rax]
	mov	rcx, rbx
	call	ReadProfileData
	xor	eax, eax
	mov	ecx, 2056
	movabs	rdx, 1446803456761533460
	mov	WORD PTR 864[rbx], ax
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	BYTE PTR 856[rbx], sil
	movabs	rsi, 578721382704613384
	mov	DWORD PTR 2292[rbx], 16711680
	add	rax, 65536
	mov	QWORD PTR gProfileScreenNextVramAddress[rip], rax
	mov	rax, QWORD PTR .refptr.gKeysFirstRepeatIntervals[rip]
	mov	QWORD PTR gProfileScreenSubMenuNextVramAddress[rip], 0
	mov	QWORD PTR [rax], rdx
	mov	edx, 5140
	mov	WORD PTR 8[rax], dx
	mov	rax, QWORD PTR .refptr.gKeysContinuedRepeatIntervals[rip]
	mov	QWORD PTR [rax], rsi
	mov	WORD PTR 8[rax], cx
	add	rsp, 56
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_806A568
	.def	sub_806A568;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_806A568
sub_806A568:
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
	je	.L776
	mov	rbp, QWORD PTR gProfileScreenSubMenuNextVramAddress[rip]
	test	rbp, rbp
	je	.L780
.L777:
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
	jne	.L774
	sal	ebx, 5
	add	QWORD PTR gProfileScreenSubMenuNextVramAddress[rip], rbx
.L774:
	add	rsp, 104
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L776:
	mov	rsi, QWORD PTR gProfileScreenNextVramAddress[rip]
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
	add	QWORD PTR gProfileScreenNextVramAddress[rip], rbx
	mov	QWORD PTR gProfileScreenSubMenuNextVramAddress[rip], 0
	add	rsp, 104
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L780:
	mov	rbp, QWORD PTR gProfileScreenNextVramAddress[rip]
	mov	QWORD PTR gProfileScreenSubMenuNextVramAddress[rip], rbp
	jmp	.L777
	.seh_endproc
	.p2align 4
	.def	LanguageScreenCreateUI;	.scl	3;	.type	32;	.endef
	.seh_proc	LanguageScreenCreateUI
LanguageScreenCreateUI:
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
	.seh_endprologue
	lea	rax, sLanguageScreenEditControlsText[rip]
	lea	r10, sLanguageScreenTitles[rip]
	lea	r9, sLanguageScreenNewControlsText[rip]
	movsx	rsi, BYTE PTR 696[rcx]
	cmp	BYTE PTR 697[rcx], 0
	cmove	r9, rax
	xor	r8d, r8d
	mov	rax, r10
	mov	r11, rsi
	mov	rbp, rcx
	lea	r12, 128[rcx]
	lea	rdi, 512[rcx]
	lea	rcx, 36[r10]
	.p2align 4,,10
	.p2align 3
.L783:
	movzx	edx, WORD PTR 4[rax]
	cmp	r8d, edx
	cmovl	r8d, edx
	add	rax, 6
	cmp	rax, rcx
	jne	.L783
	lea	rcx, 36[r9]
	mov	rax, r9
	xor	ebx, ebx
	.p2align 4,,10
	.p2align 3
.L784:
	movzx	edx, WORD PTR 4[rax]
	cmp	ebx, edx
	cmovl	ebx, edx
	add	rax, 6
	cmp	rcx, rax
	jne	.L784
	lea	rax, [r11+r11*2]
	mov	rcx, rbp
	movsx	r8d, r8w
	xor	edx, edx
	add	rax, rax
	mov	DWORD PTR 72[rsp], 0
	add	r10, rax
	lea	r13, [r9+rax]
	movzx	eax, BYTE PTR 2[r10]
	mov	DWORD PTR 56[rsp], 13
	mov	DWORD PTR 48[rsp], 26
	mov	DWORD PTR 64[rsp], eax
	mov	DWORD PTR 40[rsp], 120
	mov	DWORD PTR 32[rsp], 12288
	movzx	r9d, WORD PTR [r10]
	call	sub_806A568
	movzx	r9d, WORD PTR 0[r13]
	lea	rcx, 64[rbp]
	xor	edx, edx
	mov	DWORD PTR 72[rsp], 0
	movzx	eax, BYTE PTR 2[r13]
	movsx	r8d, bx
	xor	ebx, ebx
	mov	DWORD PTR 56[rsp], 13
	lea	rbp, sLanguageScreenOptionsText[rip]
	mov	DWORD PTR 64[rsp], eax
	mov	DWORD PTR 48[rsp], 138
	mov	DWORD PTR 40[rsp], 120
	mov	DWORD PTR 32[rsp], 12288
	call	sub_806A568
	.p2align 4,,10
	.p2align 3
.L785:
	mov	DWORD PTR 72[rsp], 0
	movzx	eax, BYTE PTR 2[rbp]
	xor	edx, edx
	mov	rcx, r12
	mov	DWORD PTR 56[rsp], 13
	mov	DWORD PTR 64[rsp], eax
	mov	eax, ebx
	sal	eax, 4
	mov	DWORD PTR 40[rsp], 40
	sub	eax, ebx
	mov	DWORD PTR 32[rsp], 12288
	add	eax, 40
	mov	DWORD PTR 48[rsp], eax
	movzx	r9d, WORD PTR 0[rbp]
	movzx	r8d, WORD PTR 4[rbp]
	call	sub_806A568
	cmp	si, bx
	setne	BYTE PTR 53[r12]
	add	ebx, 1
	add	r12, 64
	add	rbp, 6
	cmp	ebx, 6
	jne	.L785
	mov	eax, esi
	mov	DWORD PTR 72[rsp], 0
	xor	edx, edx
	mov	rcx, rdi
	sal	eax, 4
	mov	DWORD PTR 64[rsp], 5
	mov	r9d, 957
	mov	r8d, 63
	sub	eax, esi
	mov	DWORD PTR 56[rsp], 12
	add	eax, 40
	mov	DWORD PTR 40[rsp], 38
	cwde
	mov	DWORD PTR 32[rsp], 12288
	mov	DWORD PTR 48[rsp], eax
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	xor	r8d, r8d
	xor	edx, edx
	mov	DWORD PTR 64[rsp], 0
	xor	ecx, ecx
	mov	r9d, 964
	mov	DWORD PTR 56[rsp], 0
	mov	DWORD PTR 48[rsp], 0
	mov	DWORD PTR 40[rsp], 0
	mov	DWORD PTR 32[rsp], 0
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	xor	r8d, r8d
	xor	edx, edx
	mov	DWORD PTR 64[rsp], 1
	xor	ecx, ecx
	mov	r9d, 964
	mov	DWORD PTR 56[rsp], 0
	mov	DWORD PTR 48[rsp], 0
	mov	DWORD PTR 40[rsp], 0
	mov	DWORD PTR 32[rsp], 0
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	xor	r8d, r8d
	mov	r9d, 963
	mov	DWORD PTR 64[rsp], 12
	xor	edx, edx
	xor	ecx, ecx
	mov	DWORD PTR 56[rsp], 0
	mov	DWORD PTR 48[rsp], 0
	mov	DWORD PTR 40[rsp], 0
	mov	DWORD PTR 32[rsp], 0
	call	sub_806A568
	nop
	add	rsp, 88
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.seh_endproc
	.p2align 4
	.def	Task_OptionsScreenFadeOutToLanguageScreen;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_OptionsScreenFadeOutToLanguageScreen
Task_OptionsScreenFadeOutToLanguageScreen:
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
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rsi, QWORD PTR 24[rax]
	call	OptionsScreenRenderUI
	lea	rcx, 2280[rsi]
	call	UpdateScreenFade
	test	al, al
	jne	.L795
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L795:
	mov	QWORD PTR 32[rsp], 0
	mov	r9d, 4
	mov	r8d, 8192
	mov	edx, 704
	lea	rcx, Task_LanguageScreenFadeIn[rip]
	call	TaskCreate
	mov	rbp, QWORD PTR .refptr.VRAM[rip]
	mov	QWORD PTR gProfileScreenSubMenuNextVramAddress[rip], 0
	mov	rbx, QWORD PTR 24[rax]
	mov	QWORD PTR 688[rbx], rsi
	movzx	eax, BYTE PTR 859[rsi]
	mov	rcx, rbx
	mov	BYTE PTR 697[rbx], 0
	mov	BYTE PTR 696[rbx], al
	lea	rax, 65536[rbp]
	mov	QWORD PTR gProfileScreenNextVramAddress[rip], rax
	call	LanguageScreenInitRegisters
	xor	eax, eax
	xor	edx, edx
	mov	QWORD PTR 584[rbx], rbp
	add	rbp, 14336
	mov	WORD PTR 594[rbx], ax
	movdqu	xmm0, XMMWORD PTR .LC29[rip]
	lea	rcx, 576[rbx]
	mov	WORD PTR 646[rbx], dx
	mov	QWORD PTR 600[rbx], rbp
	mov	DWORD PTR 636[rbx], 20
	mov	BYTE PTR 640[rbx], 0
	mov	DWORD PTR 642[rbx], 0
	movups	XMMWORD PTR 620[rbx], xmm0
	call	DrawBackground
	mov	rcx, rbx
	call	LanguageScreenCreateUI
	mov	rax, QWORD PTR [rdi]
	lea	rdx, Task_OptionsScreenWaitForLanguageScreenExit[rip]
	mov	BYTE PTR 2296[rsi], 1
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateNewProfileScreen
	.def	CreateNewProfileScreen;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateNewProfileScreen
CreateNewProfileScreen:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	call	Random
	mov	esi, eax
	call	Random
	sal	esi, 16
	xor	ecx, ecx
	movzx	eax, ax
	mov	edi, esi
	or	esi, eax
	xor	edi, eax
	mov	edx, esi
	call	SeedRng
	call	Random
	mov	ebx, eax
	call	Random
	sal	ebx, 16
	mov	edx, esi
	movzx	eax, ax
	xor	ebx, eax
	mov	ecx, ebx
	xor	ecx, edi
	call	SeedRng
	mov	r9d, 4
	mov	QWORD PTR 32[rsp], 0
	mov	r8d, 8192
	mov	edx, 704
	lea	rcx, Task_LanguageScreenFadeIn[rip]
	call	TaskCreate
	mov	edx, 1
	mov	rsi, QWORD PTR .refptr.VRAM[rip]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rax, QWORD PTR [rax]
	mov	rcx, rbx
	mov	QWORD PTR 688[rbx], 0
	movzx	eax, BYTE PTR 6[rax]
	mov	BYTE PTR 697[rbx], 1
	mov	QWORD PTR gProfileScreenSubMenuNextVramAddress[rip], 0
	sub	eax, 1
	cmp	al, 6
	cmovnb	eax, edx
	mov	BYTE PTR 696[rbx], al
	lea	rax, 65536[rsi]
	mov	QWORD PTR gProfileScreenNextVramAddress[rip], rax
	call	LanguageScreenInitRegisters
	mov	QWORD PTR 584[rbx], rsi
	xor	eax, eax
	xor	edx, edx
	add	rsi, 14336
	movdqu	xmm0, XMMWORD PTR .LC29[rip]
	mov	WORD PTR 594[rbx], ax
	lea	rcx, 576[rbx]
	mov	QWORD PTR 600[rbx], rsi
	mov	DWORD PTR 636[rbx], 20
	mov	BYTE PTR 640[rbx], 0
	mov	DWORD PTR 642[rbx], 0
	mov	WORD PTR 646[rbx], dx
	movups	XMMWORD PTR 620[rbx], xmm0
	call	DrawBackground
	mov	rcx, rbx
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	LanguageScreenCreateUI
	.seh_endproc
	.p2align 4
	.def	Task_OptionsScreenFadeOutToDeleteScreen;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_OptionsScreenFadeOutToDeleteScreen
Task_OptionsScreenFadeOutToDeleteScreen:
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
	mov	rbp, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR 0[rbp]
	mov	rsi, QWORD PTR 24[rax]
	call	OptionsScreenRenderUI
	lea	rcx, 2280[rsi]
	call	UpdateScreenFade
	test	al, al
	jne	.L803
	add	rsp, 104
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.p2align 4,,10
	.p2align 3
.L803:
	mov	QWORD PTR 32[rsp], 0
	mov	r9d, 4
	mov	r8d, 8192
	mov	edx, 448
	lea	rcx, Task_DeleteScreenFadeIn[rip]
	call	TaskCreate
	mov	edx, 5952
	mov	ecx, 1795
	mov	rdi, QWORD PTR .refptr.VRAM[rip]
	mov	rbx, QWORD PTR 24[rax]
	mov	eax, 1
	mov	r9d, -2063566848
	mov	DWORD PTR 92[rsp], 0
	mov	QWORD PTR gProfileScreenSubMenuNextVramAddress[rip], 0
	mov	r8, rdi
	mov	QWORD PTR 432[rbx], rsi
	mov	WORD PTR 440[rbx], ax
	movzx	eax, BYTE PTR 859[rsi]
	mov	BYTE PTR 443[rbx], 0
	mov	BYTE PTR 442[rbx], al
	lea	rax, 65536[rdi]
	mov	QWORD PTR gProfileScreenNextVramAddress[rip], rax
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	rdx, QWORD PTR .LC9[rip]
	mov	WORD PTR [rax], cx
	mov	ecx, 3
	mov	DWORD PTR 4[rax], -603042299
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	QWORD PTR 8[rax], rdx
	lea	rdx, 92[rsp]
	mov	DWORD PTR [rax], 0
	call	DmaSet
	mov	rax, QWORD PTR .LC10[rip]
	mov	DWORD PTR 424[rbx], 255
	lea	rcx, 416[rbx]
	mov	QWORD PTR 416[rbx], rax
	call	UpdateScreenFade
	xor	r8d, r8d
	xor	r9d, r9d
	mov	QWORD PTR 328[rbx], rdi
	add	rdi, 14336
	movdqu	xmm0, XMMWORD PTR .LC29[rip]
	mov	WORD PTR 338[rbx], r8w
	lea	rcx, 320[rbx]
	mov	QWORD PTR 344[rbx], rdi
	mov	WORD PTR 390[rbx], r9w
	mov	DWORD PTR 380[rbx], 20
	mov	BYTE PTR 384[rbx], 0
	mov	DWORD PTR 386[rbx], 0
	movups	XMMWORD PTR 364[rbx], xmm0
	call	DrawBackground
	movsx	rdx, BYTE PTR 442[rbx]
	lea	rax, sDeleteScreenConfirmTitleText[rip]
	movzx	edi, BYTE PTR 440[rbx]
	mov	DWORD PTR 72[rsp], 0
	lea	rcx, [rdx+rdx*2]
	lea	rdx, sDeleteScreenOptionsText[rip]
	mov	DWORD PTR 56[rsp], 13
	mov	r13, rcx
	lea	r12, [rdx+rcx*4]
	mov	DWORD PTR 48[rsp], 50
	mov	rcx, rbx
	add	r13, r13
	mov	DWORD PTR 40[rsp], 120
	add	rax, r13
	mov	DWORD PTR 32[rsp], 12288
	movzx	edx, BYTE PTR 2[rax]
	movzx	r9d, WORD PTR [rax]
	movzx	r8d, WORD PTR 4[rax]
	mov	DWORD PTR 64[rsp], edx
	xor	edx, edx
	call	sub_806A568
	lea	rax, sDeleteScreenControlsText[rip]
	mov	DWORD PTR 72[rsp], 0
	lea	rcx, 64[rbx]
	add	rax, r13
	mov	DWORD PTR 56[rsp], 13
	movzx	edx, BYTE PTR 2[rax]
	mov	DWORD PTR 48[rsp], 116
	mov	DWORD PTR 40[rsp], 120
	movzx	r9d, WORD PTR [rax]
	mov	DWORD PTR 64[rsp], edx
	movzx	r8d, WORD PTR 4[rax]
	xor	edx, edx
	mov	DWORD PTR 32[rsp], 12288
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	movzx	eax, BYTE PTR 2[r12]
	xor	edx, edx
	mov	DWORD PTR 56[rsp], 13
	lea	rcx, 128[rbx]
	mov	DWORD PTR 64[rsp], eax
	mov	DWORD PTR 48[rsp], 76
	mov	DWORD PTR 40[rsp], 58
	mov	DWORD PTR 32[rsp], 12288
	movzx	r9d, WORD PTR [r12]
	movzx	r8d, WORD PTR 4[r12]
	call	sub_806A568
	mov	BYTE PTR 181[rbx], 1
	lea	rcx, 192[rbx]
	xor	edx, edx
	mov	DWORD PTR 72[rsp], 0
	movzx	eax, BYTE PTR 8[r12]
	mov	DWORD PTR 56[rsp], 13
	mov	DWORD PTR 64[rsp], eax
	mov	DWORD PTR 48[rsp], 76
	mov	DWORD PTR 40[rsp], 118
	mov	DWORD PTR 32[rsp], 12288
	movzx	r9d, WORD PTR 6[r12]
	movzx	r8d, WORD PTR 10[r12]
	call	sub_806A568
	mov	edx, 60
	mov	eax, edi
	mov	DWORD PTR 72[rsp], 0
	imul	dl
	mov	DWORD PTR 64[rsp], 3
	lea	rcx, 256[rbx]
	xor	edx, edx
	mov	DWORD PTR 56[rsp], 12
	mov	r9d, 952
	mov	r8d, 18
	lea	rdi, Task_OptionsScreenWaitForDeleteScreenExit[rip]
	mov	DWORD PTR 48[rsp], 76
	add	eax, 56
	mov	DWORD PTR 32[rsp], 12288
	cwde
	mov	DWORD PTR 40[rsp], eax
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	xor	r8d, r8d
	xor	edx, edx
	mov	DWORD PTR 64[rsp], 0
	xor	ecx, ecx
	mov	r9d, 964
	mov	DWORD PTR 56[rsp], 0
	mov	DWORD PTR 48[rsp], 0
	mov	DWORD PTR 40[rsp], 0
	mov	DWORD PTR 32[rsp], 0
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	xor	r8d, r8d
	xor	edx, edx
	mov	DWORD PTR 64[rsp], 1
	mov	r9d, 964
	xor	ecx, ecx
	mov	DWORD PTR 56[rsp], 0
	mov	DWORD PTR 48[rsp], 0
	mov	DWORD PTR 40[rsp], 0
	mov	DWORD PTR 32[rsp], 0
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	xor	r8d, r8d
	xor	edx, edx
	mov	DWORD PTR 64[rsp], 12
	mov	r9d, 963
	xor	ecx, ecx
	mov	DWORD PTR 56[rsp], 0
	mov	DWORD PTR 48[rsp], 0
	mov	DWORD PTR 40[rsp], 0
	mov	DWORD PTR 32[rsp], 0
	call	sub_806A568
	mov	rax, QWORD PTR 0[rbp]
	mov	BYTE PTR 2296[rsi], 1
	mov	QWORD PTR 40[rax], rdi
	add	rsp, 104
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
	.seh_endproc
	.p2align 4
	.def	ProfileNameScreenCreateUIText;	.scl	3;	.type	32;	.endef
	.seh_proc	ProfileNameScreenCreateUIText
ProfileNameScreenCreateUIText:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 80
	.seh_stackalloc	80
	.seh_endprologue
	lea	rax, sProfileNameScreenNewTitleText[rip]
	movzx	esi, BYTE PTR 1298[rcx]
	lea	rdx, [rsi+rsi*2]
	add	rdx, rdx
	add	rax, rdx
	cmp	WORD PTR 1282[rcx], 0
	lea	rdi, 64[rcx]
	mov	rbx, rcx
	je	.L806
	lea	rax, sProfileNameScreenEditTitleText[rip]
	add	rax, rdx
.L806:
	movzx	r9d, WORD PTR [rax]
	movzx	r8d, WORD PTR 4[rax]
	xor	edx, edx
	mov	rcx, rbx
	mov	DWORD PTR 72[rsp], 0
	movzx	eax, BYTE PTR 2[rax]
	mov	DWORD PTR 56[rsp], 13
	mov	DWORD PTR 64[rsp], eax
	mov	DWORD PTR 48[rsp], 21
	mov	DWORD PTR 40[rsp], 3
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	xor	edx, edx
	mov	rcx, rdi
	mov	DWORD PTR 64[rsp], 4
	mov	r9d, 954
	mov	r8d, 3
	mov	DWORD PTR 56[rsp], 13
	mov	DWORD PTR 48[rsp], 112
	mov	DWORD PTR 40[rsp], 219
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	xor	edx, edx
	lea	rcx, 128[rbx]
	mov	DWORD PTR 64[rsp], 3
	mov	r9d, 954
	mov	r8d, 3
	mov	DWORD PTR 56[rsp], 13
	mov	DWORD PTR 48[rsp], 128
	mov	DWORD PTR 40[rsp], 219
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	movsx	rax, esi
	mov	DWORD PTR 72[rsp], 0
	lea	rcx, 192[rbx]
	lea	rdx, [rax+rax*2]
	lea	rax, sProfileNameScreenEndButtonText[rip]
	mov	DWORD PTR 56[rsp], 13
	lea	rax, [rax+rdx*2]
	mov	DWORD PTR 48[rsp], 143
	movzx	edx, BYTE PTR 2[rax]
	movzx	r9d, WORD PTR [rax]
	mov	DWORD PTR 40[rsp], 219
	mov	DWORD PTR 32[rsp], 4096
	movzx	r8d, WORD PTR 4[rax]
	mov	DWORD PTR 64[rsp], edx
	xor	edx, edx
	call	sub_806A568
	nop
	add	rsp, 80
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.def	ProfileNameScreenCreateUIContextElements;	.scl	3;	.type	32;	.endef
	.seh_proc	ProfileNameScreenCreateUIContextElements
ProfileNameScreenCreateUIContextElements:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 88
	.seh_stackalloc	88
	.seh_endprologue
	mov	r9d, 954
	mov	r8d, 10
	xor	edx, edx
	mov	DWORD PTR 72[rsp], 0
	mov	rbx, rcx
	lea	rsi, 600[rcx]
	lea	rcx, 472[rcx]
	mov	DWORD PTR 64[rsp], 7
	mov	DWORD PTR 56[rsp], 8
	mov	DWORD PTR 48[rsp], 47
	mov	DWORD PTR 40[rsp], 33
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	movzx	eax, WORD PTR 1296[rbx]
	lea	rcx, 536[rbx]
	cmp	ax, 267
	ja	.L810
	mov	edx, eax
	movzx	eax, al
	and	dx, 256
	cmp	dx, 1
	sbb	r9d, r9d
	and	r9d, -8
	add	r9d, 963
.L808:
	mov	DWORD PTR 64[rsp], eax
	xor	edx, edx
	mov	r8d, 4
	mov	DWORD PTR 72[rsp], 0
	mov	DWORD PTR 56[rsp], 7
	mov	DWORD PTR 48[rsp], 47
	mov	DWORD PTR 40[rsp], 33
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	xor	edx, edx
	mov	rcx, rsi
	mov	DWORD PTR 64[rsp], 0
	mov	r9d, 962
	mov	r8d, 2
	mov	DWORD PTR 56[rsp], 13
	mov	DWORD PTR 48[rsp], 44
	mov	DWORD PTR 40[rsp], 8
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	xor	edx, edx
	lea	rcx, 664[rbx]
	mov	DWORD PTR 64[rsp], 1
	mov	r9d, 962
	mov	r8d, 2
	mov	DWORD PTR 56[rsp], 13
	mov	DWORD PTR 48[rsp], 130
	mov	DWORD PTR 40[rsp], 8
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	nop
	add	rsp, 88
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L810:
	mov	r9d, 955
	mov	eax, 17
	jmp	.L808
	.seh_endproc
	.p2align 4
	.def	ProfileNameScreenCreateInputDisplayUI;	.scl	3;	.type	32;	.endef
	.seh_proc	ProfileNameScreenCreateInputDisplayUI
ProfileNameScreenCreateInputDisplayUI:
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
	sub	rsp, 80
	.seh_stackalloc	80
	.seh_endprologue
	mov	rax, QWORD PTR gProfileScreenNextVramAddress[rip]
	mov	esi, 160
	mov	rdi, rcx
	lea	rbx, 896[rcx]
	lea	rbp, 832[rcx]
	lea	r12, 1284[rcx]
	jmp	.L815
	.p2align 4,,10
	.p2align 3
.L821:
	cmp	dx, 267
	ja	.L817
	mov	ecx, edx
	and	dx, 256
	cmp	dx, 1
	sbb	edx, edx
	and	edx, -8
	add	dx, 963
.L814:
	mov	QWORD PTR 8[rbx], rax
	mov	r8d, 512
	xor	eax, eax
	xor	r9d, r9d
	mov	WORD PTR 18[rbx], dx
	mov	r10d, -1
	mov	edx, 22
	add	r12, 2
	mov	WORD PTR 38[rbx], si
	add	esi, 12
	mov	BYTE PTR 48[rbx], cl
	mov	rcx, rbx
	add	rbx, 64
	mov	WORD PTR -48[rbx], ax
	mov	DWORD PTR -32[rbx], 4096
	mov	WORD PTR -24[rbx], dx
	mov	WORD PTR -22[rbx], r8w
	mov	WORD PTR -20[rbx], r9w
	mov	WORD PTR -18[rbx], r10w
	mov	BYTE PTR -15[rbx], -1
	mov	BYTE PTR -14[rbx], 16
	mov	BYTE PTR -11[rbx], 0
	mov	DWORD PTR -8[rbx], -1
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR gProfileScreenNextVramAddress[rip]
	mov	QWORD PTR gProfileScreenSubMenuNextVramAddress[rip], 0
	sub	rax, -128
	mov	QWORD PTR gProfileScreenNextVramAddress[rip], rax
	cmp	si, 232
	je	.L820
.L815:
	movzx	edx, WORD PTR [r12]
	cmp	dx, -1
	jne	.L821
.L817:
	mov	ecx, 17
	mov	edx, 955
	jmp	.L814
	.p2align 4,,10
	.p2align 3
.L820:
	mov	DWORD PTR 72[rsp], 0
	mov	r9d, 954
	xor	edx, edx
	mov	rcx, rbp
	mov	DWORD PTR 64[rsp], 6
	mov	r8d, 2
	mov	DWORD PTR 56[rsp], 5
	mov	DWORD PTR 48[rsp], 21
	movzx	eax, WORD PTR 1282[rdi]
	mov	DWORD PTR 32[rsp], 4096
	lea	eax, [rax+rax*2]
	lea	eax, 161[0+rax*4]
	cwde
	mov	DWORD PTR 40[rsp], eax
	call	sub_806A568
	nop
	add	rsp, 80
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.p2align 4
	.def	Task_PlayerDataMenuFadeOutToProfileNameScreen;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_PlayerDataMenuFadeOutToProfileNameScreen
Task_PlayerDataMenuFadeOutToProfileNameScreen:
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
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rsi, QWORD PTR 24[rax]
	call	PlayerDataMenuRenderUI
	lea	rcx, 448[rsi]
	call	UpdateScreenFade
	test	al, al
	jne	.L847
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L847:
	mov	QWORD PTR 32[rsp], 0
	mov	r9d, 4
	mov	r8d, 8192
	lea	rcx, Task_ProfileNameScreenFadeIn[rip]
	mov	edx, 1304
	call	TaskCreate
	mov	rbx, QWORD PTR 24[rax]
	mov	QWORD PTR 464[rbx], rsi
	movzx	ecx, BYTE PTR 474[rsi]
	mov	BYTE PTR 1299[rbx], 0
	mov	eax, ecx
	mov	BYTE PTR 1298[rbx], cl
	neg	al
	sbb	ax, ax
	xor	r9d, r9d
	and	eax, 99
	mov	WORD PTR 826[rbx], r9w
	mov	r8, QWORD PTR 464[rsi]
	mov	WORD PTR 1296[rbx], ax
	mov	WORD PTR 824[rbx], ax
	xor	eax, eax
.L826:
	movzx	edx, WORD PTR [r8+rax*2]
	mov	WORD PTR 1284[rbx+rax*2], dx
	cmp	dx, -1
	je	.L825
	add	rax, 1
	cmp	rax, 6
	jne	.L826
	mov	eax, 6
	mov	WORD PTR 1282[rbx], ax
	jmp	.L835
	.p2align 4,,10
	.p2align 3
.L825:
	mov	edx, 6
	mov	WORD PTR 1282[rbx], ax
	mov	r10, -1
	sub	edx, eax
	add	ax, 642
	movzx	edx, dx
	movsx	rax, ax
	add	rdx, rdx
	lea	rax, [rbx+rax*2]
	cmp	edx, 8
	jnb	.L828
	test	dl, 4
	jne	.L848
	test	edx, edx
	je	.L835
	mov	BYTE PTR [rax], -1
	test	dl, 2
	jne	.L849
.L835:
	mov	rbp, QWORD PTR .refptr.VRAM[rip]
	mov	edx, 5952
	cmp	cl, 1
	mov	r8d, 7951
	movdqu	xmm0, XMMWORD PTR .LC33[rip]
	mov	BYTE PTR 320[rbx], 0
	mov	r9d, -24
	lea	rcx, 256[rbx]
	lea	rax, 65536[rbp]
	mov	QWORD PTR 264[rbx], rbp
	mov	QWORD PTR gProfileScreenNextVramAddress[rip], rax
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	DWORD PTR 456[rbx], 255
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	movups	XMMWORD PTR 300[rbx], xmm0
	mov	WORD PTR 4[rax], r8w
	mov	DWORD PTR [rax], -1777989887
	sbb	eax, eax
	xor	r10d, r10d
	xor	r11d, r11d
	and	al, 112
	mov	DWORD PTR [rdx], 0
	add	eax, 105
	mov	WORD PTR 4[rdx], r9w
	mov	WORD PTR 6[rdx], ax
	mov	rax, QWORD PTR .LC10[rip]
	mov	WORD PTR 274[rbx], r10w
	mov	QWORD PTR 448[rbx], rax
	lea	rax, 14336[rbp]
	mov	WORD PTR 326[rbx], r11w
	mov	QWORD PTR 280[rbx], rax
	mov	DWORD PTR 316[rbx], 20
	mov	DWORD PTR 322[rbx], 0
	mov	QWORD PTR 8[rdx], 0
	mov	QWORD PTR gProfileScreenSubMenuNextVramAddress[rip], 0
	call	DrawBackground
	lea	rax, 49152[rbp]
	movdqu	xmm0, XMMWORD PTR .LC34[rip]
	mov	DWORD PTR 412[rbx], 20
	mov	QWORD PTR 360[rbx], rax
	xor	eax, eax
	lea	rcx, 352[rbx]
	mov	WORD PTR 370[rbx], ax
	lea	rax, 63488[rbp]
	mov	QWORD PTR 376[rbx], rax
	xor	eax, eax
	mov	WORD PTR 422[rbx], ax
	mov	BYTE PTR 416[rbx], 0
	mov	DWORD PTR 418[rbx], 2
	movups	XMMWORD PTR 396[rbx], xmm0
	call	DrawBackground
	lea	rax, 16384[rbp]
	add	rbp, 45056
	movdqu	xmm0, XMMWORD PTR .LC35[rip]
	mov	QWORD PTR 736[rbx], rax
	xor	eax, eax
	lea	rcx, 728[rbx]
	mov	WORD PTR 746[rbx], ax
	xor	eax, eax
	mov	WORD PTR 798[rbx], ax
	mov	QWORD PTR 752[rbx], rbp
	mov	DWORD PTR 788[rbx], 44
	mov	BYTE PTR 792[rbx], 0
	mov	DWORD PTR 794[rbx], 1
	movups	XMMWORD PTR 772[rbx], xmm0
	call	DrawBackground
	mov	rcx, rbx
	call	ProfileNameScreenCreateUIText
	mov	rcx, rbx
	call	ProfileNameScreenCreateUIContextElements
	mov	rcx, rbx
	call	ProfileNameScreenCreateInputDisplayUI
	mov	rax, QWORD PTR 464[rsi]
	mov	BYTE PTR 475[rsi], 1
	mov	BYTE PTR 2296[rax], 2
	mov	rax, QWORD PTR [rdi]
	lea	rdi, Task_PlayerDataMenuWaitForProfileNameScreenExit[rip]
	mov	QWORD PTR 40[rax], rdi
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L828:
	lea	r8, 8[rax]
	mov	QWORD PTR [rax], -1
	mov	QWORD PTR -8[rdx+rax], -1
	and	r8, -8
	sub	rax, r8
	add	edx, eax
	and	edx, -8
	cmp	edx, 8
	jb	.L835
	and	edx, -8
	xor	eax, eax
.L832:
	mov	r9d, eax
	add	eax, 8
	mov	QWORD PTR [r8+r9], r10
	cmp	eax, edx
	jb	.L832
	jmp	.L835
.L848:
	mov	DWORD PTR [rax], -1
	mov	DWORD PTR -4[rdx+rax], -1
	jmp	.L835
.L849:
	mov	r8d, -1
	mov	WORD PTR -2[rdx+rax], r8w
	jmp	.L835
	.seh_endproc
	.p2align 4
	.globl	CreateNewProfileNameScreen
	.def	CreateNewProfileNameScreen;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateNewProfileNameScreen
CreateNewProfileNameScreen:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	edx, 1304
	mov	r9d, 4
	mov	r8d, 8192
	mov	QWORD PTR 32[rsp], 0
	mov	esi, ecx
	lea	rcx, Task_ProfileNameScreenFadeIn[rip]
	call	TaskCreate
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	QWORD PTR 464[rbx], 0
	mov	rax, QWORD PTR [rax]
	movzx	eax, BYTE PTR 6[rax]
	mov	BYTE PTR 826[rbx], 0
	sub	eax, 1
	cmp	si, 1
	sete	dl
	mov	BYTE PTR 1298[rbx], al
	add	edx, 1
	mov	BYTE PTR 1299[rbx], dl
	test	al, al
	jne	.L852
	xor	r8d, r8d
	xor	r9d, r9d
	mov	edx, -39
	mov	BYTE PTR 827[rbx], 0
	mov	WORD PTR 1296[rbx], r8w
	mov	WORD PTR 824[rbx], r9w
.L853:
	mov	eax, -1
	mov	ecx, 5952
	xor	r10d, r10d
	xor	r11d, r11d
	mov	rsi, QWORD PTR .refptr.VRAM[rip]
	mov	WORD PTR 1294[rbx], ax
	mov	r8d, 7951
	mov	r9d, -24
	mov	WORD PTR 274[rbx], r10w
	movdqu	xmm0, XMMWORD PTR .LC33[rip]
	lea	rax, 65536[rsi]
	mov	WORD PTR 326[rbx], r11w
	mov	QWORD PTR gProfileScreenNextVramAddress[rip], rax
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	QWORD PTR 264[rbx], rsi
	mov	WORD PTR [rax], cx
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	lea	rcx, 256[rbx]
	mov	DWORD PTR 1290[rbx], -1
	mov	WORD PTR 4[rax], r8w
	mov	DWORD PTR [rax], -1777989887
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	QWORD PTR 1282[rbx], -65536
	mov	WORD PTR 4[rax], r9w
	mov	WORD PTR 6[rax], dx
	mov	DWORD PTR [rax], 0
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR .LC10[rip]
	mov	DWORD PTR 456[rbx], 255
	mov	QWORD PTR 448[rbx], rax
	lea	rax, 14336[rsi]
	mov	QWORD PTR 280[rbx], rax
	mov	DWORD PTR 316[rbx], 20
	mov	BYTE PTR 320[rbx], 0
	mov	DWORD PTR 322[rbx], 0
	movups	XMMWORD PTR 300[rbx], xmm0
	mov	QWORD PTR gProfileScreenSubMenuNextVramAddress[rip], 0
	call	DrawBackground
	lea	rax, 49152[rsi]
	movdqu	xmm0, XMMWORD PTR .LC34[rip]
	mov	DWORD PTR 412[rbx], 20
	mov	QWORD PTR 360[rbx], rax
	xor	eax, eax
	lea	rcx, 352[rbx]
	mov	WORD PTR 370[rbx], ax
	lea	rax, 63488[rsi]
	mov	QWORD PTR 376[rbx], rax
	xor	eax, eax
	mov	WORD PTR 422[rbx], ax
	mov	BYTE PTR 416[rbx], 0
	mov	DWORD PTR 418[rbx], 2
	movups	XMMWORD PTR 396[rbx], xmm0
	call	DrawBackground
	lea	rax, 16384[rsi]
	add	rsi, 45056
	movdqu	xmm0, XMMWORD PTR .LC35[rip]
	mov	QWORD PTR 736[rbx], rax
	xor	eax, eax
	lea	rcx, 728[rbx]
	mov	WORD PTR 746[rbx], ax
	xor	eax, eax
	mov	WORD PTR 798[rbx], ax
	mov	QWORD PTR 752[rbx], rsi
	mov	DWORD PTR 788[rbx], 44
	mov	BYTE PTR 792[rbx], 0
	mov	DWORD PTR 794[rbx], 1
	movups	XMMWORD PTR 772[rbx], xmm0
	call	DrawBackground
	mov	rcx, rbx
	call	ProfileNameScreenCreateUIText
	mov	rcx, rbx
	call	ProfileNameScreenCreateUIContextElements
	mov	rcx, rbx
	add	rsp, 56
	pop	rbx
	pop	rsi
	jmp	ProfileNameScreenCreateInputDisplayUI
	.p2align 4,,10
	.p2align 3
.L852:
	mov	edx, 99
	mov	ecx, 99
	mov	BYTE PTR 827[rbx], 0
	mov	WORD PTR 1296[rbx], dx
	mov	WORD PTR 824[rbx], cx
	cmp	al, 5
	jbe	.L855
	mov	BYTE PTR 1298[rbx], 1
.L855:
	mov	edx, 105
	jmp	.L853
	.seh_endproc
	.p2align 4
	.def	Task_LanguageScreenFadeOutAndExit;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_LanguageScreenFadeOutAndExit
Task_LanguageScreenFadeOutAndExit:
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
	call	ReseedRng
	lea	rcx, 672[rbx]
	call	UpdateScreenFade
	test	al, al
	je	.L861
	cmp	BYTE PTR 697[rbx], 1
	je	.L862
	mov	rax, QWORD PTR 688[rbx]
	mov	rcx, QWORD PTR [rsi]
	mov	BYTE PTR 2296[rax], 0
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L861:
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	LanguageScreenRenderUI
	.p2align 4,,10
	.p2align 3
.L862:
	mov	ecx, 1
	call	CreateNewProfileNameScreen
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.def	Task_TimeRecordsScreenCreateTimesUI;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_TimeRecordsScreenCreateTimesUI
Task_TimeRecordsScreenCreateTimesUI:
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
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8d, 12
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR 24[rax]
	cmp	BYTE PTR 2444[rdx], 0
	lea	rbp, 1088[rdx]
	jne	.L864
	movzx	ecx, BYTE PTR 2434[rdx]
	lea	r8, [rcx+rcx*2]
	add	r8, r8
.L864:
	movzx	ecx, BYTE PTR 2433[rdx]
	movzx	r9d, BYTE PTR 2432[rdx]
	lea	r10, [rcx+rcx*8]
	mov	rcx, r9
	sal	rcx, 6
	sub	rcx, r9
	add	rcx, rcx
	lea	r10, [rcx+r10*2]
	add	r10, r8
	cmp	BYTE PTR 2445[rdx], 2
	je	.L865
	mov	rdx, QWORD PTR 688[rdx]
	mov	rdx, QWORD PTR 464[rdx]
	lea	r10, 12[rdx+r10]
.L866:
	mov	r15d, 84
	mov	r14d, 48
	lea	r13, sTimeRecordDigitTiles[rip]
.L868:
	lea	rax, 128[rbp]
	movzx	edx, WORD PTR [r10]
	mov	QWORD PTR 88[rsp], rax
	lea	rax, 192[rbp]
	mov	QWORD PTR 96[rsp], rax
	lea	rax, 320[rbp]
	mov	QWORD PTR 104[rsp], rax
	cmp	dx, -29537
	ja	.L870
	movzx	ecx, dx
	mov	rax, QWORD PTR .refptr.gMillisUnpackTable[rip]
	imul	ecx, ecx, 34953
	shr	ecx, 21
	mov	r8d, ecx
	sal	r8d, 4
	sub	r8d, ecx
	mov	ecx, edx
	sal	r8d, 2
	sub	ecx, r8d
	sub	edx, ecx
	movzx	r8d, cx
	movzx	edx, dx
	movzx	ebx, BYTE PTR [rax+r8*2]
	movzx	r8d, BYTE PTR 1[rax+r8*2]
	imul	edx, edx, 34953
	lea	ebx, [rbx+rbx*4]
	lea	ebx, [r8+rbx*2]
	shr	edx, 21
	movzx	edi, dx
	imul	edi, edi, 34953
	shr	edi, 21
	mov	ecx, edi
	mov	esi, edi
	movsx	rdi, di
	sal	ecx, 4
	sub	esi, ecx
	lea	esi, [rdx+rsi*4]
	movsx	edx, si
	mov	ecx, esi
	imul	edx, edx, 26215
	sar	cx, 15
	sar	edx, 18
	sub	edx, ecx
	movsx	eax, dx
	lea	edx, [rdx+rdx*4]
	add	edx, edx
	mov	DWORD PTR 116[rsp], eax
	sub	esi, edx
	movzx	edx, bx
	imul	edx, edx, 52429
	movsx	rsi, si
	shr	edx, 19
	movsx	r12, dx
	lea	edx, [rdx+rdx*4]
	add	edx, edx
	sub	ebx, edx
	movsx	rbx, bx
.L867:
	mov	DWORD PTR 48[rsp], r15d
	mov	rcx, rbp
	mov	r9d, 1047
	xor	edx, edx
	mov	DWORD PTR 40[rsp], r14d
	mov	r8d, 4
	mov	DWORD PTR 72[rsp], 0
	mov	DWORD PTR 64[rsp], 10
	mov	DWORD PTR 56[rsp], 8
	mov	DWORD PTR 32[rsp], 12288
	mov	QWORD PTR 120[rsp], r10
	call	sub_806A568
	lea	edx, 48[r14]
	mov	DWORD PTR 48[rsp], r15d
	lea	rcx, 64[rbp]
	mov	DWORD PTR 40[rsp], edx
	mov	r9d, 1047
	mov	r8d, 4
	xor	edx, edx
	mov	DWORD PTR 72[rsp], 0
	mov	DWORD PTR 64[rsp], 10
	mov	DWORD PTR 56[rsp], 8
	mov	DWORD PTR 32[rsp], 12288
	call	sub_806A568
	lea	rdx, [rdi+rdi*2]
	mov	DWORD PTR 48[rsp], r15d
	mov	r8d, 4
	lea	rdx, 0[r13+rdx*2]
	mov	DWORD PTR 72[rsp], 0
	movzx	ecx, BYTE PTR 2[rdx]
	movzx	r9d, WORD PTR [rdx]
	mov	DWORD PTR 56[rsp], 8
	xor	edx, edx
	mov	DWORD PTR 32[rsp], 12288
	mov	DWORD PTR 64[rsp], ecx
	lea	ecx, -16[r14]
	mov	DWORD PTR 40[rsp], ecx
	mov	rcx, QWORD PTR 88[rsp]
	call	sub_806A568
	movsx	rax, DWORD PTR 116[rsp]
	mov	DWORD PTR 48[rsp], r15d
	mov	r8d, 4
	mov	DWORD PTR 72[rsp], 0
	lea	rdx, [rax+rax*2]
	mov	DWORD PTR 56[rsp], 8
	lea	rdx, 0[r13+rdx*2]
	mov	DWORD PTR 32[rsp], 12288
	movzx	ecx, BYTE PTR 2[rdx]
	movzx	r9d, WORD PTR [rdx]
	xor	edx, edx
	mov	DWORD PTR 64[rsp], ecx
	lea	ecx, 16[r14]
	mov	DWORD PTR 40[rsp], ecx
	mov	rcx, QWORD PTR 96[rsp]
	call	sub_806A568
	lea	rdx, [rsi+rsi*2]
	mov	DWORD PTR 48[rsp], r15d
	lea	rcx, 256[rbp]
	lea	rdx, 0[r13+rdx*2]
	mov	DWORD PTR 72[rsp], 0
	movzx	r8d, BYTE PTR 2[rdx]
	movzx	r9d, WORD PTR [rdx]
	mov	DWORD PTR 56[rsp], 8
	xor	edx, edx
	mov	DWORD PTR 32[rsp], 12288
	mov	DWORD PTR 64[rsp], r8d
	lea	r8d, 32[r14]
	mov	DWORD PTR 40[rsp], r8d
	mov	r8d, 4
	call	sub_806A568
	lea	rdx, [r12+r12*2]
	mov	DWORD PTR 48[rsp], r15d
	mov	r8d, 4
	lea	rdx, 0[r13+rdx*2]
	mov	DWORD PTR 72[rsp], 0
	movzx	ecx, BYTE PTR 2[rdx]
	movzx	r9d, WORD PTR [rdx]
	mov	DWORD PTR 56[rsp], 8
	xor	edx, edx
	mov	DWORD PTR 32[rsp], 12288
	mov	DWORD PTR 64[rsp], ecx
	lea	ecx, 64[r14]
	mov	DWORD PTR 40[rsp], ecx
	mov	rcx, QWORD PTR 104[rsp]
	call	sub_806A568
	lea	rdx, [rbx+rbx*2]
	mov	DWORD PTR 48[rsp], r15d
	lea	rcx, 384[rbp]
	lea	rdx, 0[r13+rdx*2]
	mov	DWORD PTR 72[rsp], 0
	add	rbp, 448
	add	r15d, 24
	movzx	r8d, BYTE PTR 2[rdx]
	movzx	r9d, WORD PTR [rdx]
	mov	DWORD PTR 56[rsp], 8
	xor	edx, edx
	mov	DWORD PTR 32[rsp], 12288
	mov	DWORD PTR 64[rsp], r8d
	lea	r8d, 80[r14]
	add	r14d, 8
	mov	DWORD PTR 40[rsp], r8d
	mov	r8d, 4
	call	sub_806A568
	mov	r10, QWORD PTR 120[rsp]
	add	r10, 2
	cmp	r14d, 72
	jne	.L868
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	lea	rdi, Task_TimeRecordsScreenCoursesViewFadeIn[rip]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rax], rdi
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
	.p2align 4,,10
	.p2align 3
.L870:
	mov	ebx, 9
	mov	r12d, 9
	mov	esi, 9
	mov	DWORD PTR 116[rsp], 5
	mov	edi, 9
	jmp	.L867
	.p2align 4,,10
	.p2align 3
.L865:
	add	r10, QWORD PTR 696[rdx]
	jmp	.L866
	.seh_endproc
	.p2align 4
	.def	TimeRecordsScreenCreateCoursesViewUI;	.scl	3;	.type	32;	.endef
	.seh_proc	TimeRecordsScreenCreateCoursesViewUI
TimeRecordsScreenCreateCoursesViewUI:
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
	mov	r9d, 1050
	mov	r8d, 2
	xor	edx, edx
	lea	rbp, sTimeRecordsZoneActTitleDigits[rip]
	xor	r12d, r12d
	movzx	eax, BYTE PTR 2434[rcx]
	movzx	esi, BYTE PTR 2443[rcx]
	movzx	edi, BYTE PTR 2433[rcx]
	mov	DWORD PTR 72[rsp], 0
	mov	rbx, rcx
	lea	r15, 112[rcx]
	lea	r14, 240[rcx]
	mov	DWORD PTR 64[rsp], 0
	lea	r13, 368[rcx]
	lea	rcx, 432[rcx]
	mov	DWORD PTR 56[rsp], 2
	mov	DWORD PTR 48[rsp], 32
	mov	DWORD PTR 40[rsp], 14
	mov	DWORD PTR 32[rsp], 5120
	mov	BYTE PTR 95[rsp], al
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	xor	edx, edx
	lea	rcx, 496[rbx]
	mov	DWORD PTR 64[rsp], 0
	mov	r9d, 1050
	mov	r8d, 2
	mov	DWORD PTR 56[rsp], 2
	mov	DWORD PTR 48[rsp], 32
	mov	DWORD PTR 40[rsp], 156
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	xor	edx, edx
	lea	rcx, 560[rbx]
	mov	DWORD PTR 64[rsp], 1
	mov	r9d, 1050
	mov	r8d, 2
	mov	DWORD PTR 56[rsp], 3
	mov	DWORD PTR 48[rsp], 24
	mov	DWORD PTR 40[rsp], 208
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	xor	edx, edx
	lea	rcx, 624[rbx]
	mov	DWORD PTR 64[rsp], 1
	mov	r9d, 1050
	mov	r8d, 2
	mov	DWORD PTR 56[rsp], 3
	mov	DWORD PTR 48[rsp], 140
	mov	DWORD PTR 40[rsp], 208
	mov	DWORD PTR 32[rsp], 6144
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	xor	edx, edx
	lea	rcx, 896[rbx]
	mov	DWORD PTR 64[rsp], 11
	mov	r9d, 1047
	mov	r8d, 16
	mov	DWORD PTR 56[rsp], 5
	mov	DWORD PTR 48[rsp], 80
	mov	DWORD PTR 40[rsp], 4
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	xor	edx, edx
	lea	rcx, 960[rbx]
	mov	DWORD PTR 64[rsp], 12
	mov	r9d, 1047
	mov	r8d, 16
	mov	DWORD PTR 56[rsp], 5
	mov	DWORD PTR 48[rsp], 104
	mov	DWORD PTR 40[rsp], 12
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	xor	edx, edx
	lea	rcx, 1024[rbx]
	mov	DWORD PTR 64[rsp], 13
	mov	r9d, 1047
	mov	r8d, 16
	mov	DWORD PTR 56[rsp], 5
	mov	DWORD PTR 48[rsp], 128
	mov	DWORD PTR 40[rsp], 20
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	mov	rax, rbp
	lea	rcx, 42[rbp]
	.p2align 4,,10
	.p2align 3
.L873:
	movzx	edx, WORD PTR 4[rax]
	cmp	r12d, edx
	cmovl	r12d, edx
	add	rax, 6
	cmp	rax, rcx
	jne	.L873
	mov	DWORD PTR 72[rsp], 0
	xor	edx, edx
	mov	rcx, r15
	mov	r9d, 1048
	mov	DWORD PTR 64[rsp], 0
	mov	r8d, 20
	movsx	r15d, r12w
	mov	DWORD PTR 56[rsp], 3
	mov	DWORD PTR 48[rsp], 12
	mov	DWORD PTR 40[rsp], 16
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	lea	rax, [rdi+rdi*2]
	mov	r8d, r15d
	mov	DWORD PTR 72[rsp], 0
	lea	rax, 0[rbp+rax*2]
	mov	DWORD PTR 56[rsp], 3
	lea	rcx, 176[rbx]
	movzx	edx, BYTE PTR 2[rax]
	mov	DWORD PTR 48[rsp], 12
	mov	DWORD PTR 40[rsp], 94
	movzx	r9d, WORD PTR [rax]
	mov	DWORD PTR 64[rsp], edx
	xor	edx, edx
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	cmp	BYTE PTR 2444[rbx], 0
	mov	DWORD PTR 72[rsp], 0
	jne	.L874
	mov	DWORD PTR 64[rsp], 1
	mov	r9d, 1048
	xor	edx, edx
	mov	rcx, r14
	mov	DWORD PTR 56[rsp], 3
	mov	r8d, 16
	mov	DWORD PTR 48[rsp], 32
	mov	DWORD PTR 40[rsp], 78
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	movzx	r12d, BYTE PTR 95[rsp]
	mov	r8d, r15d
	mov	DWORD PTR 72[rsp], 0
	mov	DWORD PTR 56[rsp], 3
	lea	rcx, 304[rbx]
	lea	rax, [r12+r12*2]
	mov	DWORD PTR 48[rsp], 32
	lea	rax, 0[rbp+rax*2]
	mov	DWORD PTR 40[rsp], 136
	movzx	edx, BYTE PTR 2[rax]
	movzx	r9d, WORD PTR [rax]
	mov	DWORD PTR 32[rsp], 4096
	mov	DWORD PTR 64[rsp], edx
	xor	edx, edx
	call	sub_806A568
.L875:
	movzx	eax, BYTE PTR 2433[rbx]
	lea	r10, sZoneBossTitles[rip]
	lea	rdx, [rax+rax*2]
	lea	rax, [rsi+rsi*4]
	lea	rax, [rsi+rax*4]
	add	rax, rax
	lea	rax, [rax+rdx*2]
	add	r10, rax
	cmp	BYTE PTR 2444[rbx], 0
	jne	.L877
	lea	r10, sZoneNameTitles[rip]
	add	r10, rax
.L877:
	lea	rcx, 42[r10]
	mov	rax, r10
	xor	r8d, r8d
	.p2align 4,,10
	.p2align 3
.L878:
	movzx	edx, WORD PTR 4[rax]
	cmp	r8d, edx
	cmovl	r8d, edx
	add	rax, 6
	cmp	rcx, rax
	jne	.L878
	movzx	r9d, WORD PTR [r10]
	movsx	r8d, r8w
	xor	edx, edx
	mov	rcx, r13
	mov	DWORD PTR 72[rsp], 0
	movzx	eax, BYTE PTR 2[r10]
	mov	DWORD PTR 56[rsp], 3
	mov	DWORD PTR 64[rsp], eax
	mov	DWORD PTR 48[rsp], 68
	mov	DWORD PTR 40[rsp], 154
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	nop
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
.L874:
	mov	DWORD PTR 64[rsp], 9
	mov	r9d, 1048
	xor	edx, edx
	mov	rcx, r14
	mov	DWORD PTR 56[rsp], 3
	mov	r8d, 20
	mov	DWORD PTR 48[rsp], 32
	mov	DWORD PTR 40[rsp], 78
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	jmp	.L875
	.seh_endproc
	.p2align 4
	.def	TimeRecordsScreenFadeOutToCoursesView;	.scl	3;	.type	32;	.endef
	.seh_proc	TimeRecordsScreenFadeOutToCoursesView
TimeRecordsScreenFadeOutToCoursesView:
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
	mov	rcx, rbx
	call	UpdateScreenFade
	test	al, al
	je	.L883
	mov	BYTE PTR 2445[rbx], 0
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	QWORD PTR gProfileScreenSubMenuNextVramAddress[rip], 0
	add	rax, 65536
	mov	QWORD PTR gProfileScreenNextVramAddress[rip], rax
	call	TimeRecordsScreenInitRegisters
	mov	rcx, rbx
	call	TimeRecordsScreenCreateCoursesViewBackgroundsUI
	mov	rcx, rbx
	call	TimeRecordsScreenCreateCoursesViewUI
	mov	rax, QWORD PTR [rsi]
	lea	rdx, Task_TimeRecordsScreenCreateTimesUI[rip]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L883:
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TimeRecordsScreenRenderModeChoiceUI
	.seh_endproc
	.p2align 4
	.globl	CreateTimeAttackLevelSelectScreen
	.def	CreateTimeAttackLevelSelectScreen;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateTimeAttackLevelSelectScreen
CreateTimeAttackLevelSelectScreen:
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
	mov	r9d, 4
	mov	r8d, 8192
	mov	QWORD PTR 32[rsp], 0
	mov	esi, ecx
	mov	edi, edx
	lea	rcx, Task_TimeRecordsScreenCreateTimesUI[rip]
	mov	edx, 2448
	call	TaskCreate
	mov	rbp, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR 0[rbp]
	movzx	eax, BYTE PTR 19[rax]
	test	al, 2
	je	.L894
	test	al, 4
	je	.L890
	test	al, 8
	je	.L891
	test	al, 16
	je	.L892
	mov	r12d, 5
.L885:
	mov	QWORD PTR 688[rbx], 0
	mov	ecx, 630
	call	EwramMalloc
	mov	rdx, QWORD PTR 0[rbp]
	mov	BYTE PTR 2432[rbx], dil
	mov	r8d, 1
	mov	QWORD PTR 696[rbx], rax
	mov	DWORD PTR 2433[rbx], 0
	mov	BYTE PTR 2437[rbx], r12b
	movzx	ecx, BYTE PTR 7[rdx]
	mov	BYTE PTR 2438[rbx], cl
	movzx	ecx, BYTE PTR 8[rdx]
	mov	BYTE PTR 2439[rbx], cl
	movzx	ecx, BYTE PTR 9[rdx]
	mov	BYTE PTR 2440[rbx], cl
	movzx	ecx, BYTE PTR 10[rdx]
	mov	BYTE PTR 2441[rbx], cl
	movzx	ecx, BYTE PTR 11[rdx]
	mov	BYTE PTR 2442[rbx], cl
	movzx	edi, BYTE PTR 6[rdx]
	mov	BYTE PTR 2444[rbx], sil
	lea	rsi, 50[rdx]
	lea	ecx, -1[rdi]
	mov	BYTE PTR 2445[rbx], 2
	lea	rdi, 8[rax]
	cmp	cl, 6
	cmovnb	ecx, r8d
	and	rdi, -8
	mov	BYTE PTR 2443[rbx], cl
	mov	rcx, QWORD PTR 50[rdx]
	mov	QWORD PTR [rax], rcx
	mov	rdx, QWORD PTR 672[rdx]
	mov	QWORD PTR 622[rax], rdx
	sub	rax, rdi
	sub	rsi, rax
	add	eax, 630
	shr	eax, 3
	mov	ecx, eax
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	rep movsq
	mov	QWORD PTR gProfileScreenSubMenuNextVramAddress[rip], 0
	add	rax, 65536
	mov	QWORD PTR gProfileScreenNextVramAddress[rip], rax
	call	TimeRecordsScreenInitRegisters
	mov	rcx, rbx
	call	TimeRecordsScreenCreateCoursesViewBackgroundsUI
	mov	rcx, rbx
	call	TimeRecordsScreenCreateCoursesViewUI
	mov	ecx, 4
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	m4aSongNumStart
.L894:
	mov	r12d, 1
	jmp	.L885
.L890:
	mov	r12d, 2
	jmp	.L885
.L891:
	mov	r12d, 3
	jmp	.L885
.L892:
	mov	r12d, 4
	jmp	.L885
	.seh_endproc
	.p2align 4
	.def	TimeRecordsScreenCreateChoiceViewUI;	.scl	3;	.type	32;	.endef
	.seh_proc	TimeRecordsScreenCreateChoiceViewUI
TimeRecordsScreenCreateChoiceViewUI:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 88
	.seh_stackalloc	88
	.seh_endprologue
	lea	rax, sTimeRecordsChoiceViewTitles[rip]
	movzx	edx, BYTE PTR 2443[rcx]
	mov	rbx, rcx
	lea	rcx, [rdx+rdx*2]
	lea	rdx, sTimeRecordsScreenChoices[rip]
	mov	DWORD PTR 72[rsp], 0
	lea	rax, [rax+rcx*2]
	lea	rsi, [rdx+rcx*4]
	mov	DWORD PTR 56[rsp], 5
	movzx	edx, BYTE PTR 2[rax]
	mov	DWORD PTR 48[rsp], 26
	lea	rcx, 368[rbx]
	mov	DWORD PTR 40[rsp], 4
	movzx	r9d, WORD PTR [rax]
	mov	DWORD PTR 64[rsp], edx
	movzx	r8d, WORD PTR 4[rax]
	xor	edx, edx
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	movzx	eax, BYTE PTR 2[rsi]
	lea	rcx, 112[rbx]
	mov	DWORD PTR 56[rsp], 5
	xor	edx, edx
	mov	DWORD PTR 64[rsp], eax
	mov	DWORD PTR 48[rsp], 84
	mov	DWORD PTR 40[rsp], 40
	mov	DWORD PTR 32[rsp], 4096
	movzx	r9d, WORD PTR [rsi]
	movzx	r8d, WORD PTR 4[rsi]
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	movzx	eax, BYTE PTR 8[rsi]
	xor	edx, edx
	mov	DWORD PTR 56[rsp], 5
	lea	rcx, 176[rbx]
	mov	DWORD PTR 64[rsp], eax
	mov	DWORD PTR 48[rsp], 84
	mov	DWORD PTR 40[rsp], 134
	mov	DWORD PTR 32[rsp], 4096
	movzx	r9d, WORD PTR 6[rsi]
	movzx	r8d, WORD PTR 10[rsi]
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	xor	edx, edx
	lea	rcx, 432[rbx]
	mov	DWORD PTR 64[rsp], 8
	mov	r9d, 950
	mov	r8d, 2
	mov	DWORD PTR 56[rsp], 6
	mov	DWORD PTR 48[rsp], 75
	mov	DWORD PTR 40[rsp], 100
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	xor	edx, edx
	lea	rcx, 496[rbx]
	mov	DWORD PTR 64[rsp], 9
	mov	r9d, 950
	mov	r8d, 2
	mov	DWORD PTR 56[rsp], 6
	mov	DWORD PTR 48[rsp], 75
	mov	DWORD PTR 40[rsp], 140
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	nop
	add	rsp, 88
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_PlayerDataMenuFadeOutToTimeRecordsScreen;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_PlayerDataMenuFadeOutToTimeRecordsScreen
Task_PlayerDataMenuFadeOutToTimeRecordsScreen:
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
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rsi, QWORD PTR 24[rax]
	call	PlayerDataMenuRenderUI
	lea	rcx, 448[rsi]
	call	UpdateScreenFade
	test	al, al
	je	.L896
	mov	rax, QWORD PTR 464[rsi]
	mov	r9d, 4
	mov	r8d, 8192
	mov	edx, 2448
	cmp	BYTE PTR 861[rax], 0
	mov	QWORD PTR 32[rsp], 0
	jne	.L919
	lea	rcx, Task_TimeRecordsScreenCreateTimesUI[rip]
	call	TaskCreate
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rax]
	movzx	eax, BYTE PTR 19[rdx]
	test	al, 2
	je	.L920
	test	al, 4
	je	.L911
	test	al, 8
	je	.L912
	test	al, 16
	je	.L913
	mov	ecx, 5
.L903:
	mov	QWORD PTR 688[rbx], rsi
	movzx	ecx, cl
	mov	QWORD PTR 696[rbx], 0
	mov	DWORD PTR 2432[rbx], 0
	mov	BYTE PTR 2436[rbx], 0
	movzx	eax, BYTE PTR 9[rdx]
	movzx	r8d, BYTE PTR 8[rdx]
	sal	eax, 8
	or	eax, r8d
	movzx	r8d, BYTE PTR 7[rdx]
	mov	QWORD PTR gProfileScreenSubMenuNextVramAddress[rip], 0
	sal	eax, 8
	or	eax, r8d
	sal	eax, 8
	or	eax, ecx
	mov	DWORD PTR 2437[rbx], eax
	movzx	eax, WORD PTR 10[rdx]
	mov	WORD PTR 2441[rbx], ax
	movzx	eax, BYTE PTR 474[rsi]
	mov	BYTE PTR 2443[rbx], al
	mov	eax, 256
	mov	WORD PTR 2444[rbx], ax
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	add	rax, 65536
	mov	QWORD PTR gProfileScreenNextVramAddress[rip], rax
	call	TimeRecordsScreenInitRegisters
	mov	rcx, rbx
	call	TimeRecordsScreenCreateCoursesViewBackgroundsUI
	mov	rcx, rbx
	call	TimeRecordsScreenCreateCoursesViewUI
.L902:
	mov	rax, QWORD PTR 464[rsi]
	mov	BYTE PTR 475[rsi], 1
	mov	BYTE PTR 2296[rax], 2
	mov	rax, QWORD PTR [rdi]
	lea	rdi, Task_PlayerDataMenuWaitForTimeRecordsScreenExit[rip]
	mov	QWORD PTR 40[rax], rdi
.L896:
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L919:
	lea	rcx, Task_TimeRecordsScreenChoiceViewFadeIn[rip]
	call	TaskCreate
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rax]
	movzx	eax, BYTE PTR 19[rdx]
	test	al, 2
	je	.L921
	test	al, 4
	je	.L907
	test	al, 8
	je	.L908
	test	al, 16
	je	.L909
	mov	ecx, 5
.L899:
	mov	QWORD PTR 688[rbx], rsi
	movzx	ecx, cl
	mov	rbp, QWORD PTR .refptr.VRAM[rip]
	xor	r9d, r9d
	mov	DWORD PTR 2432[rbx], 0
	pxor	xmm0, xmm0
	mov	BYTE PTR 2436[rbx], 0
	movzx	eax, BYTE PTR 9[rdx]
	movzx	r8d, BYTE PTR 8[rdx]
	sal	eax, 8
	or	eax, r8d
	movzx	r8d, BYTE PTR 7[rdx]
	mov	QWORD PTR gProfileScreenSubMenuNextVramAddress[rip], 0
	sal	eax, 8
	or	eax, r8d
	xor	r8d, r8d
	sal	eax, 8
	or	eax, ecx
	mov	ecx, 4928
	mov	DWORD PTR 2437[rbx], eax
	movzx	eax, WORD PTR 10[rdx]
	xor	edx, edx
	mov	WORD PTR 2441[rbx], ax
	movzx	eax, BYTE PTR 474[rsi]
	mov	WORD PTR 2444[rbx], dx
	mov	BYTE PTR 2443[rbx], al
	lea	rax, 65536[rbp]
	mov	QWORD PTR gProfileScreenNextVramAddress[rip], rax
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	WORD PTR 722[rbx], r8w
	mov	WORD PTR [rax], cx
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	lea	rcx, 704[rbx]
	mov	QWORD PTR 712[rbx], rbp
	mov	DWORD PTR [rax], 252053251
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	DWORD PTR 764[rbx], 20
	movups	XMMWORD PTR [rax], xmm0
	mov	rax, QWORD PTR .LC10[rip]
	movdqu	xmm0, XMMWORD PTR .LC34[rip]
	mov	DWORD PTR 8[rbx], 255
	mov	QWORD PTR [rbx], rax
	lea	rax, 14336[rbp]
	mov	QWORD PTR 728[rbx], rax
	movups	XMMWORD PTR 748[rbx], xmm0
	mov	BYTE PTR 768[rbx], 0
	mov	DWORD PTR 770[rbx], 0
	mov	WORD PTR 774[rbx], r9w
	call	DrawBackground
	lea	rax, 16384[rbp]
	xor	r10d, r10d
	xor	r11d, r11d
	add	rbp, 30720
	movdqu	xmm0, XMMWORD PTR .LC40[rip]
	mov	QWORD PTR 808[rbx], rax
	lea	rcx, 800[rbx]
	mov	WORD PTR 818[rbx], r10w
	mov	QWORD PTR 824[rbx], rbp
	mov	DWORD PTR 860[rbx], 20
	mov	BYTE PTR 864[rbx], 0
	mov	DWORD PTR 866[rbx], 1
	mov	WORD PTR 870[rbx], r11w
	movups	XMMWORD PTR 844[rbx], xmm0
	call	DrawBackground
	mov	rcx, rbx
	call	TimeRecordsScreenCreateChoiceViewUI
	jmp	.L902
.L920:
	mov	ecx, 1
	jmp	.L903
.L921:
	mov	ecx, 1
	jmp	.L899
.L907:
	mov	ecx, 2
	jmp	.L899
.L911:
	mov	ecx, 2
	jmp	.L903
.L908:
	mov	ecx, 3
	jmp	.L899
.L912:
	mov	ecx, 3
	jmp	.L903
.L913:
	mov	ecx, 4
	jmp	.L903
.L909:
	mov	ecx, 4
	jmp	.L899
	.seh_endproc
	.p2align 4
	.def	Task_TimeRecordsScreenFadeToPrevious;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_TimeRecordsScreenFadeToPrevious
Task_TimeRecordsScreenFadeToPrevious:
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
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rcx, rbx
	mov	rdi, QWORD PTR 688[rbx]
	call	UpdateScreenFade
	test	al, al
	je	.L927
	movzx	eax, BYTE PTR 2445[rbx]
	cmp	al, 1
	je	.L924
	cmp	al, 2
	je	.L925
	test	al, al
	je	.L928
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L927:
	xor	ecx, ecx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TimeRecordsScreenRenderCoursesViewUI
	.p2align 4,,10
	.p2align 3
.L928:
	mov	rdi, QWORD PTR .refptr.VRAM[rip]
	xor	eax, eax
	mov	edx, 4928
	xor	ecx, ecx
	mov	WORD PTR 2444[rbx], ax
	pxor	xmm0, xmm0
	xor	r8d, r8d
	lea	rax, 65536[rdi]
	mov	WORD PTR 774[rbx], r8w
	mov	QWORD PTR gProfileScreenNextVramAddress[rip], rax
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	QWORD PTR gProfileScreenSubMenuNextVramAddress[rip], 0
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	QWORD PTR 712[rbx], rdi
	mov	DWORD PTR [rax], 252053251
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	WORD PTR 722[rbx], cx
	lea	rcx, 704[rbx]
	movups	XMMWORD PTR [rax], xmm0
	mov	rax, QWORD PTR .LC10[rip]
	movdqu	xmm0, XMMWORD PTR .LC34[rip]
	mov	BYTE PTR 2435[rbx], 0
	mov	QWORD PTR [rbx], rax
	lea	rax, 14336[rdi]
	mov	QWORD PTR 728[rbx], rax
	mov	DWORD PTR 8[rbx], 255
	mov	DWORD PTR 764[rbx], 20
	mov	BYTE PTR 768[rbx], 0
	mov	DWORD PTR 770[rbx], 0
	movups	XMMWORD PTR 748[rbx], xmm0
	call	DrawBackground
	lea	rax, 16384[rdi]
	xor	r9d, r9d
	xor	r10d, r10d
	add	rdi, 30720
	mov	QWORD PTR 808[rbx], rax
	movdqu	xmm0, XMMWORD PTR .LC40[rip]
	lea	rcx, 800[rbx]
	mov	WORD PTR 818[rbx], r9w
	mov	WORD PTR 870[rbx], r10w
	mov	QWORD PTR 824[rbx], rdi
	mov	DWORD PTR 860[rbx], 20
	mov	BYTE PTR 864[rbx], 0
	mov	DWORD PTR 866[rbx], 1
	movups	XMMWORD PTR 844[rbx], xmm0
	call	DrawBackground
	mov	rcx, rbx
	call	TimeRecordsScreenCreateChoiceViewUI
	mov	rax, QWORD PTR [rsi]
	lea	rdx, Task_TimeRecordsScreenChoiceViewFadeIn[rip]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L925:
	mov	rcx, QWORD PTR 696[rbx]
	cmp	BYTE PTR 2437[rbx], 5
	sete	sil
	call	EwramFree
	xor	ecx, ecx
	mov	edx, 65535
	call	TasksDestroyInPriorityRange
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueIndex[rip]
	movzx	ecx, BYTE PTR 2432[rbx]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueCursor[rip]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR .refptr.gBgSpritesCount[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyQueueIndex[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyCursor[rip]
	mov	BYTE PTR [rax], dl
	movzx	edx, sil
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	CreateCharacterSelectionScreen
	.p2align 4,,10
	.p2align 3
.L924:
	mov	rcx, QWORD PTR [rsi]
	mov	BYTE PTR 475[rdi], 0
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.def	Task_MultiplayerRecordsScreenCreateNextTableRowUI;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_MultiplayerRecordsScreenCreateNextTableRowUI
Task_MultiplayerRecordsScreenCreateNextTableRowUI:
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
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	r13, QWORD PTR 24[rax]
	movzx	edi, BYTE PTR 1248[r13]
	mov	rbp, QWORD PTR 1240[r13]
	mov	rbx, rdi
	imul	rdi, rdi, 784
	lea	r14, 0[rbp+rdi]
	cmp	BYTE PTR 12[r14], 0
	je	.L930
	lea	ebx, [rbx+rbx*8]
	mov	r15, r14
	mov	esi, 34
	lea	eax, [rbx+rbx]
	lea	rbx, 16[rbp+rdi]
	lea	r12d, 90[rax]
	mov	WORD PTR 84[rsp], ax
	movzx	r12d, r12w
	jmp	.L933
	.p2align 4,,10
	.p2align 3
.L941:
	cmp	ax, 267
	ja	.L937
	movzx	edx, al
	and	ax, 256
	cmp	ax, 1
	sbb	r9d, r9d
	and	r9d, -8
	add	r9d, 963
.L932:
	mov	DWORD PTR 64[rsp], edx
	mov	rcx, rbx
	xor	edx, edx
	mov	r8d, 4
	mov	DWORD PTR 40[rsp], esi
	add	esi, 12
	add	rbx, 64
	add	r15, 2
	mov	DWORD PTR 72[rsp], 0
	mov	DWORD PTR 56[rsp], 5
	mov	DWORD PTR 48[rsp], r12d
	mov	DWORD PTR 32[rsp], 8192
	call	sub_806A568
	cmp	esi, 106
	je	.L940
.L933:
	movzx	eax, WORD PTR [r15]
	cmp	ax, -1
	jne	.L941
.L937:
	mov	r9d, 955
	mov	edx, 17
	jmp	.L932
	.p2align 4,,10
	.p2align 3
.L940:
	movzx	edx, BYTE PTR 13[r14]
	movzx	r12d, BYTE PTR 14[r14]
	lea	rcx, 400[rbp+rdi]
	movzx	esi, BYTE PTR 15[r14]
	movzx	ebx, WORD PTR 84[rsp]
	lea	r14, sMultiplayerScoreDigitTiles[rip]
	mov	DWORD PTR 72[rsp], 0
	mov	DWORD PTR 92[rsp], edx
	imul	edx, edx, 52429
	add	ebx, 96
	movzx	ebx, bx
	shr	edx, 19
	mov	r10d, edx
	movsx	rdx, dx
	lea	rdx, [rdx+rdx*2]
	mov	DWORD PTR 88[rsp], r10d
	lea	rdx, [r14+rdx*2]
	movzx	r8d, BYTE PTR 2[rdx]
	mov	DWORD PTR 48[rsp], ebx
	mov	DWORD PTR 56[rsp], 13
	mov	DWORD PTR 64[rsp], r8d
	mov	DWORD PTR 40[rsp], 124
	mov	DWORD PTR 32[rsp], 8192
	movzx	r9d, WORD PTR [rdx]
	movzx	r8d, WORD PTR 4[rdx]
	xor	edx, edx
	call	sub_806A568
	mov	r10d, DWORD PTR 88[rsp]
	mov	eax, DWORD PTR 92[rsp]
	mov	DWORD PTR 72[rsp], 0
	lea	rcx, 464[rbp+rdi]
	lea	edx, [r10+r10*4]
	add	edx, edx
	sub	eax, edx
	movsx	rax, ax
	lea	rax, [rax+rax*2]
	lea	rax, [r14+rax*2]
	movzx	edx, BYTE PTR 2[rax]
	mov	DWORD PTR 48[rsp], ebx
	mov	DWORD PTR 56[rsp], 13
	mov	DWORD PTR 64[rsp], edx
	xor	edx, edx
	mov	DWORD PTR 40[rsp], 132
	mov	DWORD PTR 32[rsp], 8192
	movzx	r9d, WORD PTR [rax]
	movzx	r8d, WORD PTR 4[rax]
	call	sub_806A568
	movzx	eax, r12w
	mov	DWORD PTR 72[rsp], 0
	lea	rcx, 528[rbp+rdi]
	imul	eax, eax, 52429
	shr	eax, 19
	movsx	rdx, ax
	mov	DWORD PTR 84[rsp], eax
	lea	rdx, [rdx+rdx*2]
	lea	rdx, [r14+rdx*2]
	movzx	r8d, BYTE PTR 2[rdx]
	mov	DWORD PTR 48[rsp], ebx
	mov	DWORD PTR 56[rsp], 13
	mov	DWORD PTR 64[rsp], r8d
	mov	DWORD PTR 40[rsp], 164
	mov	DWORD PTR 32[rsp], 8192
	movzx	r9d, WORD PTR [rdx]
	movzx	r8d, WORD PTR 4[rdx]
	xor	edx, edx
	call	sub_806A568
	mov	eax, DWORD PTR 84[rsp]
	mov	DWORD PTR 72[rsp], 0
	lea	rcx, 592[rbp+rdi]
	lea	eax, [rax+rax*4]
	add	eax, eax
	sub	r12d, eax
	movsx	r12, r12w
	lea	rax, [r12+r12*2]
	movzx	r12d, si
	imul	r12d, r12d, 52429
	lea	rax, [r14+rax*2]
	movzx	edx, BYTE PTR 2[rax]
	mov	DWORD PTR 48[rsp], ebx
	mov	DWORD PTR 56[rsp], 13
	mov	DWORD PTR 64[rsp], edx
	shr	r12d, 19
	xor	edx, edx
	mov	DWORD PTR 40[rsp], 172
	mov	DWORD PTR 32[rsp], 8192
	movzx	r9d, WORD PTR [rax]
	movzx	r8d, WORD PTR 4[rax]
	call	sub_806A568
	movsx	rax, r12w
	mov	DWORD PTR 72[rsp], 0
	lea	r12d, [r12+r12*4]
	lea	rax, [rax+rax*2]
	add	r12d, r12d
	lea	rcx, 656[rbp+rdi]
	lea	rax, [r14+rax*2]
	sub	esi, r12d
	movzx	edx, BYTE PTR 2[rax]
	mov	DWORD PTR 48[rsp], ebx
	movsx	rsi, si
	mov	DWORD PTR 56[rsp], 13
	mov	DWORD PTR 64[rsp], edx
	xor	edx, edx
	mov	DWORD PTR 40[rsp], 204
	mov	DWORD PTR 32[rsp], 8192
	movzx	r9d, WORD PTR [rax]
	movzx	r8d, WORD PTR 4[rax]
	call	sub_806A568
	lea	rax, [rsi+rsi*2]
	mov	DWORD PTR 72[rsp], 0
	lea	rcx, 720[rbp+rdi]
	lea	rax, [r14+rax*2]
	movzx	edx, BYTE PTR 2[rax]
	mov	DWORD PTR 48[rsp], ebx
	mov	DWORD PTR 56[rsp], 13
	mov	DWORD PTR 64[rsp], edx
	xor	edx, edx
	mov	DWORD PTR 40[rsp], 212
	mov	DWORD PTR 32[rsp], 8192
	movzx	r9d, WORD PTR [rax]
	movzx	r8d, WORD PTR 4[rax]
	call	sub_806A568
	movzx	ebx, BYTE PTR 1248[r13]
.L930:
	add	ebx, 1
	cmp	bl, 9
	ja	.L934
	mov	BYTE PTR 1248[r13], bl
.L929:
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
.L934:
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	lea	rdi, Task_MultiplayerRecordsScreenFadeIn[rip]
	mov	BYTE PTR 1248[r13], 0
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 40[rax], rdi
	jmp	.L929
	.seh_endproc
	.p2align 4
	.def	Task_PlayerDataMenuFadeOutToMultiplayerRecordsScreen;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_PlayerDataMenuFadeOutToMultiplayerRecordsScreen
Task_PlayerDataMenuFadeOutToMultiplayerRecordsScreen:
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
	sub	rsp, 120
	.seh_stackalloc	120
	.seh_endprologue
	mov	rbp, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR 0[rbp]
	mov	rbx, QWORD PTR 24[rax]
	call	PlayerDataMenuRenderUI
	lea	rcx, 448[rbx]
	call	UpdateScreenFade
	test	al, al
	jne	.L972
.L942:
	add	rsp, 120
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
.L972:
	mov	r9d, 4
	mov	r8d, 8192
	mov	edx, 1272
	xor	r13d, r13d
	mov	QWORD PTR 32[rsp], 0
	lea	rcx, Task_MultiplayerRecordsScreenCreateNextTableRowUI[rip]
	mov	edi, 6
	call	TaskCreate
	mov	ecx, 7840
	mov	r14, QWORD PTR 24[rax]
	call	EwramMalloc
	movq	xmm0, rbx
	mov	r9, -1
	movq	xmm1, rax
	mov	BYTE PTR 1248[r14], 0
	lea	rsi, 1252[r14]
	punpcklqdq	xmm0, xmm1
	mov	WORD PTR 1264[r14], r13w
	mov	BYTE PTR 1266[r14], 0
	movups	XMMWORD PTR 1232[r14], xmm0
	movzx	edx, BYTE PTR 474[rbx]
	mov	BYTE PTR 1267[r14], dl
	mov	r8, QWORD PTR 464[rbx]
	mov	rdx, QWORD PTR [r8]
	lea	r11, 200[r8]
	mov	QWORD PTR 1252[r14], rdx
	mov	edx, DWORD PTR 8[r8]
	mov	DWORD PTR 8[rsi], edx
	movzx	edx, WORD PTR 844[r8]
	mov	WORD PTR 1249[r14], dx
	movzx	edx, BYTE PTR 846[r8]
	mov	BYTE PTR 1251[r14], dl
	.p2align 4,,10
	.p2align 3
.L944:
	xor	edx, edx
.L953:
	movzx	ecx, WORD PTR 648[r8+rdx*2]
	mov	WORD PTR [rax+rdx*2], cx
	cmp	cx, -1
	je	.L973
	add	rdx, 1
	cmp	rdx, 6
	jne	.L953
.L954:
	mov	edx, DWORD PTR 660[r8]
	add	r8, 20
	add	rax, 784
	mov	DWORD PTR -772[rax], edx
	cmp	r11, r8
	jne	.L944
	mov	edx, 5952
	mov	ecx, 7951
	xor	r8d, r8d
	xor	r9d, r9d
	mov	rdi, QWORD PTR .refptr.VRAM[rip]
	pxor	xmm0, xmm0
	mov	QWORD PTR gProfileScreenSubMenuNextVramAddress[rip], 0
	lea	r12, 464[r14]
	mov	WORD PTR 34[r14], r8w
	lea	r15, 848[r14]
	lea	rax, 65536[rdi]
	mov	WORD PTR 86[r14], r9w
	mov	QWORD PTR gProfileScreenNextVramAddress[rip], rax
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	QWORD PTR 24[r14], rdi
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	DWORD PTR 76[r14], 20
	mov	WORD PTR 4[rax], cx
	lea	rcx, 16[r14]
	mov	DWORD PTR [rax], -1777989887
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	BYTE PTR 80[r14], 0
	movups	XMMWORD PTR [rax], xmm0
	mov	rax, QWORD PTR .LC10[rip]
	movdqu	xmm0, XMMWORD PTR .LC44[rip]
	mov	DWORD PTR 8[r14], 255
	mov	QWORD PTR [r14], rax
	lea	rax, 14336[rdi]
	mov	QWORD PTR 40[r14], rax
	mov	DWORD PTR 82[r14], 0
	movups	XMMWORD PTR 60[r14], xmm0
	call	DrawBackground
	xor	r10d, r10d
	xor	r11d, r11d
	lea	rcx, 112[r14]
	lea	rax, 16384[rdi]
	add	rdi, 45056
	movdqu	xmm0, XMMWORD PTR .LC34[rip]
	mov	WORD PTR 130[r14], r10w
	mov	WORD PTR 182[r14], r11w
	mov	QWORD PTR 120[r14], rax
	mov	QWORD PTR 136[r14], rdi
	mov	DWORD PTR 172[r14], 20
	mov	BYTE PTR 176[r14], 0
	mov	DWORD PTR 178[r14], 1
	movups	XMMWORD PTR 156[r14], xmm0
	call	DrawBackground
	lea	rax, 976[r14]
	lea	rcx, 208[r14]
	mov	QWORD PTR 88[rsp], rax
	lea	rax, 1104[r14]
	mov	QWORD PTR 96[rsp], rax
	movzx	eax, BYTE PTR 1267[r14]
	mov	DWORD PTR 72[rsp], 0
	lea	rdx, [rax+rax*2]
	lea	rax, sMultiplayerRecordsTitleAndColumnHeadersText[rip]
	lea	rdi, [rax+rdx*4]
	xor	edx, edx
	movzx	eax, BYTE PTR 2[rdi]
	mov	DWORD PTR 56[rsp], 5
	mov	DWORD PTR 48[rsp], 18
	mov	DWORD PTR 64[rsp], eax
	mov	DWORD PTR 40[rsp], 9
	mov	DWORD PTR 32[rsp], 4096
	movzx	r9d, WORD PTR [rdi]
	movzx	r8d, WORD PTR 4[rdi]
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	movzx	eax, BYTE PTR 8[rdi]
	xor	edx, edx
	mov	DWORD PTR 56[rsp], 5
	lea	rcx, 272[r14]
	mov	DWORD PTR 64[rsp], eax
	mov	DWORD PTR 48[rsp], 38
	mov	DWORD PTR 40[rsp], 118
	mov	DWORD PTR 32[rsp], 4096
	movzx	r9d, WORD PTR 6[rdi]
	movzx	r8d, WORD PTR 10[rdi]
	mov	edi, 34
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	xor	edx, edx
	lea	rcx, 336[r14]
	mov	DWORD PTR 64[rsp], 0
	mov	r9d, 962
	mov	r8d, 2
	mov	DWORD PTR 56[rsp], 13
	mov	DWORD PTR 48[rsp], 78
	mov	DWORD PTR 40[rsp], 8
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	xor	edx, edx
	lea	rcx, 400[r14]
	mov	DWORD PTR 64[rsp], 1
	mov	r9d, 962
	mov	r8d, 2
	mov	DWORD PTR 56[rsp], 13
	mov	DWORD PTR 48[rsp], 136
	mov	DWORD PTR 40[rsp], 8
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	jmp	.L957
	.p2align 4,,10
	.p2align 3
.L975:
	cmp	ax, 267
	ja	.L959
	movzx	edx, al
	and	ax, 256
	cmp	ax, 1
	sbb	r9d, r9d
	and	r9d, -8
	add	r9d, 963
.L956:
	mov	DWORD PTR 64[rsp], edx
	mov	rcx, r12
	xor	edx, edx
	mov	r8d, 4
	mov	DWORD PTR 40[rsp], edi
	add	edi, 12
	add	r12, 64
	add	rsi, 2
	mov	DWORD PTR 72[rsp], 0
	mov	DWORD PTR 56[rsp], 5
	mov	DWORD PTR 48[rsp], 58
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	cmp	edi, 106
	je	.L974
.L957:
	movzx	eax, WORD PTR [rsi]
	cmp	ax, -1
	jne	.L975
.L959:
	mov	r9d, 955
	mov	edx, 17
	jmp	.L956
	.p2align 4,,10
	.p2align 3
.L973:
	mov	ecx, edi
	sub	ecx, edx
	movsx	rdx, dx
	movzx	ecx, cx
	lea	rdx, [rax+rdx*2]
	add	rcx, rcx
	cmp	ecx, 8
	jnb	.L946
	test	cl, 4
	jne	.L976
	test	ecx, ecx
	je	.L954
	mov	BYTE PTR [rdx], -1
	test	cl, 2
	je	.L954
	mov	r12d, -1
	mov	WORD PTR -2[rcx+rdx], r12w
	jmp	.L954
	.p2align 4,,10
	.p2align 3
.L946:
	lea	r12, 8[rdx]
	mov	QWORD PTR [rdx], -1
	mov	QWORD PTR -8[rcx+rdx], -1
	and	r12, -8
	sub	rdx, r12
	add	ecx, edx
	and	ecx, -8
	cmp	ecx, 8
	jb	.L954
	and	ecx, -8
	xor	edx, edx
.L950:
	mov	r13d, edx
	add	edx, 8
	mov	QWORD PTR [r12+r13], r9
	cmp	edx, ecx
	jb	.L950
	jmp	.L954
	.p2align 4,,10
	.p2align 3
.L974:
	movzx	edx, BYTE PTR 1249[r14]
	lea	r12, sMultiplayerScoreDigitTiles[rip]
	movzx	edi, BYTE PTR 1250[r14]
	movzx	esi, BYTE PTR 1251[r14]
	mov	DWORD PTR 72[rsp], 0
	mov	DWORD PTR 108[rsp], edx
	imul	edx, edx, 52429
	shr	edx, 19
	mov	r13d, edx
	movsx	rdx, dx
	lea	rdx, [rdx+rdx*2]
	lea	rdx, [r12+rdx*2]
	movzx	ecx, BYTE PTR 2[rdx]
	mov	DWORD PTR 56[rsp], 13
	mov	DWORD PTR 48[rsp], 64
	mov	DWORD PTR 64[rsp], ecx
	mov	rcx, r15
	movzx	r15d, di
	mov	DWORD PTR 40[rsp], 124
	imul	r15d, r15d, 52429
	mov	DWORD PTR 32[rsp], 8192
	movzx	r9d, WORD PTR [rdx]
	movzx	r8d, WORD PTR 4[rdx]
	xor	edx, edx
	shr	r15d, 19
	call	sub_806A568
	mov	eax, DWORD PTR 108[rsp]
	lea	edx, 0[r13+r13*4]
	mov	DWORD PTR 72[rsp], 0
	add	edx, edx
	lea	rcx, 912[r14]
	sub	eax, edx
	movsx	rax, ax
	lea	rax, [rax+rax*2]
	lea	rax, [r12+rax*2]
	movzx	edx, BYTE PTR 2[rax]
	mov	DWORD PTR 56[rsp], 13
	mov	DWORD PTR 48[rsp], 64
	mov	DWORD PTR 64[rsp], edx
	xor	edx, edx
	mov	DWORD PTR 40[rsp], 132
	mov	DWORD PTR 32[rsp], 8192
	movzx	r9d, WORD PTR [rax]
	movzx	r8d, WORD PTR 4[rax]
	call	sub_806A568
	movsx	rax, r15w
	mov	rcx, QWORD PTR 88[rsp]
	mov	DWORD PTR 72[rsp], 0
	lea	rax, [rax+rax*2]
	lea	r15d, [r15+r15*4]
	lea	rax, [r12+rax*2]
	movzx	edx, BYTE PTR 2[rax]
	mov	DWORD PTR 56[rsp], 13
	mov	DWORD PTR 48[rsp], 64
	mov	DWORD PTR 64[rsp], edx
	xor	edx, edx
	mov	DWORD PTR 40[rsp], 164
	mov	DWORD PTR 32[rsp], 8192
	movzx	r9d, WORD PTR [rax]
	movzx	r8d, WORD PTR 4[rax]
	call	sub_806A568
	lea	eax, [r15+r15]
	mov	DWORD PTR 72[rsp], 0
	lea	rcx, 1040[r14]
	sub	edi, eax
	movsx	rax, di
	movzx	edi, si
	imul	edi, edi, 52429
	lea	rax, [rax+rax*2]
	lea	rax, [r12+rax*2]
	movzx	edx, BYTE PTR 2[rax]
	mov	DWORD PTR 56[rsp], 13
	mov	DWORD PTR 48[rsp], 64
	shr	edi, 19
	mov	DWORD PTR 64[rsp], edx
	xor	edx, edx
	mov	DWORD PTR 40[rsp], 172
	mov	DWORD PTR 32[rsp], 8192
	movzx	r9d, WORD PTR [rax]
	movzx	r8d, WORD PTR 4[rax]
	call	sub_806A568
	movsx	rax, di
	mov	rcx, QWORD PTR 96[rsp]
	lea	edi, [rdi+rdi*4]
	lea	rax, [rax+rax*2]
	mov	DWORD PTR 72[rsp], 0
	lea	rax, [r12+rax*2]
	movzx	edx, BYTE PTR 2[rax]
	mov	DWORD PTR 56[rsp], 13
	mov	DWORD PTR 48[rsp], 64
	mov	DWORD PTR 64[rsp], edx
	xor	edx, edx
	mov	DWORD PTR 40[rsp], 204
	mov	DWORD PTR 32[rsp], 8192
	movzx	r9d, WORD PTR [rax]
	movzx	r8d, WORD PTR 4[rax]
	call	sub_806A568
	lea	eax, [rdi+rdi]
	mov	DWORD PTR 72[rsp], 0
	lea	rcx, 1168[r14]
	sub	esi, eax
	movsx	rax, si
	lea	rax, [rax+rax*2]
	lea	rax, [r12+rax*2]
	movzx	edx, BYTE PTR 2[rax]
	mov	DWORD PTR 56[rsp], 13
	mov	DWORD PTR 48[rsp], 64
	mov	DWORD PTR 64[rsp], edx
	xor	edx, edx
	mov	DWORD PTR 40[rsp], 212
	mov	DWORD PTR 32[rsp], 8192
	movzx	r9d, WORD PTR [rax]
	movzx	r8d, WORD PTR 4[rax]
	call	sub_806A568
	mov	rax, QWORD PTR 464[rbx]
	mov	BYTE PTR 475[rbx], 1
	lea	rbx, Task_PlayerDataMenuWaitForMultiplayerRecordsScreenExit[rip]
	mov	BYTE PTR 2296[rax], 2
	mov	rax, QWORD PTR 0[rbp]
	mov	QWORD PTR 40[rax], rbx
	jmp	.L942
.L976:
	mov	DWORD PTR [rdx], -1
	mov	DWORD PTR -4[rcx+rdx], -1
	jmp	.L954
	.seh_endproc
	.p2align 4
	.def	PlayerDataMenuCreateUI;	.scl	3;	.type	32;	.endef
	.seh_proc	PlayerDataMenuCreateUI
PlayerDataMenuCreateUI:
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
	.seh_endprologue
	lea	rax, sPlayerDataMenuTitleText[rip]
	movsx	rdx, BYTE PTR 474[rcx]
	mov	rsi, rcx
	lea	rdi, 128[rcx]
	lea	r14, 384[rcx]
	movsx	r13w, BYTE PTR 472[rsi]
	lea	rcx, [rdx+rdx*2]
	lea	rdx, sPlayerDataMenuItemsText[rip]
	lea	rbx, [rdx+rcx*8]
	mov	rdx, QWORD PTR 464[rsi]
	mov	r15, rcx
	mov	rcx, rsi
	add	r15, r15
	movzx	r12d, WORD PTR 864[rdx]
	add	rax, r15
	mov	DWORD PTR 72[rsp], 0
	movzx	edx, BYTE PTR 2[rax]
	mov	DWORD PTR 56[rsp], 8
	lea	ebp, 336[r12]
	mov	DWORD PTR 48[rsp], 32
	movzx	r9d, WORD PTR [rax]
	movsx	ebp, bp
	mov	DWORD PTR 64[rsp], edx
	movzx	r8d, WORD PTR 4[rax]
	mov	edx, 1
	mov	DWORD PTR 40[rsp], ebp
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	lea	rax, sPlayerDataMenuControlsText[rip]
	mov	DWORD PTR 40[rsp], ebp
	lea	rcx, 64[rsi]
	add	rax, r15
	mov	DWORD PTR 72[rsp], 0
	lea	r15d, 256[r12]
	mov	ebp, 46
	movzx	edx, BYTE PTR 2[rax]
	movzx	r9d, WORD PTR [rax]
	movsx	r15d, r15w
	xor	esi, esi
	mov	DWORD PTR 56[rsp], 8
	movzx	r8d, WORD PTR 4[rax]
	mov	DWORD PTR 64[rsp], edx
	mov	edx, 1
	mov	DWORD PTR 48[rsp], 132
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
.L978:
	mov	DWORD PTR 72[rsp], 0
	movzx	eax, BYTE PTR 2[rbx]
	mov	rcx, rdi
	mov	edx, 1
	mov	DWORD PTR 48[rsp], ebp
	mov	DWORD PTR 64[rsp], eax
	mov	DWORD PTR 56[rsp], 8
	mov	DWORD PTR 40[rsp], r15d
	mov	DWORD PTR 32[rsp], 4096
	movzx	r9d, WORD PTR [rbx]
	movzx	r8d, WORD PTR 4[rbx]
	call	sub_806A568
	cmp	r13w, si
	setne	BYTE PTR 53[rdi]
	add	esi, 1
	add	rdi, 64
	add	rbx, 6
	add	ebp, 19
	cmp	si, 4
	jne	.L978
	lea	eax, 0[r13+r13*8]
	add	r12w, 254
	mov	DWORD PTR 72[rsp], 0
	mov	r9d, 957
	lea	eax, 46[r13+rax*2]
	movsx	r12d, r12w
	mov	DWORD PTR 64[rsp], 5
	mov	r8d, 63
	cwde
	mov	DWORD PTR 40[rsp], r12d
	mov	edx, 1
	mov	rcx, r14
	mov	DWORD PTR 56[rsp], 7
	mov	DWORD PTR 48[rsp], eax
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	nop
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
	.seh_endproc
	.p2align 4
	.def	OptionsScreenCreateUI;	.scl	3;	.type	32;	.endef
	.seh_proc	OptionsScreenCreateUI
OptionsScreenCreateUI:
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
	sub	rsp, 120
	.seh_stackalloc	120
	.seh_endprologue
	mov	r13d, 30
	xor	ebp, ebp
	movzx	ebx, BYTE PTR 859[rcx]
	lea	rsi, [rbx+rbx*2]
	sal	rsi, 4
	lea	rax, 1640[rcx]
	mov	rdi, rcx
	mov	DWORD PTR 92[rsp], edx
	mov	r14d, edx
	mov	QWORD PTR 80[rsp], rax
	movzx	eax, bl
	lea	r12, 1896[rcx]
	lea	r15, 1128[rcx]
	lea	rdx, sOptionsScreenTitleText[rip]
	lea	rcx, [rax+rax*2]
	mov	DWORD PTR 72[rsp], 0
	mov	rbx, r15
	lea	rdx, [rdx+rcx*2]
	mov	DWORD PTR 56[rsp], 15
	lea	rcx, 1064[rdi]
	and	r14d, 1
	movzx	r8d, BYTE PTR 2[rdx]
	mov	DWORD PTR 48[rsp], 15
	mov	DWORD PTR 40[rsp], 0
	movzx	r9d, WORD PTR [rdx]
	mov	DWORD PTR 64[rsp], r8d
	movzx	r8d, WORD PTR 4[rdx]
	xor	edx, edx
	mov	DWORD PTR 32[rsp], 12288
	mov	QWORD PTR 96[rsp], rax
	call	sub_806A568
	mov	QWORD PTR 104[rsp], r12
	mov	r12, rdi
	lea	rdx, sOptionsScreenMenuItemsText[rip]
	mov	edi, r13d
	mov	r13, QWORD PTR 80[rsp]
	add	rsi, rdx
	.p2align 4,,10
	.p2align 3
.L985:
	cmp	BYTE PTR 860[r12], 0
	movsx	ax, BYTE PTR 2292[r12]
	jne	.L1016
	cmp	bp, 5
	je	.L981
.L1016:
	cmp	ax, bp
	setne	al
	movzx	eax, al
	lea	eax, 32[0+rax*8]
	test	bp, bp
	jne	.L984
	test	r14b, r14b
	mov	ecx, -184
	cmovne	eax, ecx
.L984:
	mov	DWORD PTR 72[rsp], 0
	movzx	edx, BYTE PTR 2[rsi]
	cwde
	mov	rcx, rbx
	mov	DWORD PTR 56[rsp], 13
	mov	DWORD PTR 64[rsp], edx
	movsx	edx, di
	add	edi, 15
	mov	DWORD PTR 48[rsp], edx
	xor	edx, edx
	mov	DWORD PTR 40[rsp], eax
	mov	DWORD PTR 32[rsp], 12288
	movzx	r9d, WORD PTR [rsi]
	movzx	r8d, WORD PTR 4[rsi]
	call	sub_806A568
.L981:
	add	rbx, 64
	add	ebp, 1
	add	rsi, 6
	cmp	r13, rbx
	jne	.L985
	mov	rdi, r12
	mov	ecx, -64
	mov	r12, QWORD PTR 104[rsp]
	mov	r9d, 954
	cmp	BYTE PTR 2292[rdi], 1
	mov	DWORD PTR 72[rsp], 0
	mov	r8d, 18
	mov	r14, rdi
	sbb	edx, edx
	mov	DWORD PTR 64[rsp], 0
	and	edx, -8
	mov	DWORD PTR 56[rsp], 12
	add	dx, 160
	cmp	WORD PTR 92[rsp], 1
	mov	DWORD PTR 48[rsp], 30
	cmove	edx, ecx
	mov	DWORD PTR 32[rsp], 12288
	mov	rcx, rbx
	movsx	edx, dx
	mov	DWORD PTR 40[rsp], edx
	xor	edx, edx
	call	sub_806A568
	mov	rax, QWORD PTR 96[rsp]
	xor	ecx, ecx
	movzx	edx, BYTE PTR 857[rdi]
	cmp	BYTE PTR 2292[rdi], 1
	mov	DWORD PTR 72[rsp], 0
	lea	r10, 1704[rdi]
	lea	rsi, [rax+rax*2]
	lea	rdx, [rdx+rdx*2]
	setne	cl
	mov	DWORD PTR 56[rsp], 10
	lea	rbp, 0[0+rsi*4]
	lea	ecx, 152[0+rcx*8]
	mov	DWORD PTR 48[rsp], 45
	lea	r8, 0[rbp+rdx*2]
	lea	rdx, sDifficultyLevelSwitchText[rip]
	mov	DWORD PTR 40[rsp], ecx
	mov	rcx, r10
	add	rdx, r8
	mov	DWORD PTR 32[rsp], 12288
	movzx	r8d, BYTE PTR 2[rdx]
	movzx	r9d, WORD PTR [rdx]
	mov	DWORD PTR 64[rsp], r8d
	movzx	r8d, WORD PTR 4[rdx]
	xor	edx, edx
	call	sub_806A568
	movzx	edx, BYTE PTR 858[rdi]
	xor	ecx, ecx
	cmp	BYTE PTR 2292[rdi], 2
	setne	cl
	mov	DWORD PTR 72[rsp], 0
	lea	r10, 1768[rdi]
	lea	rdx, [rdx+rdx*2]
	lea	ecx, 152[0+rcx*8]
	mov	DWORD PTR 56[rsp], 10
	lea	r8, 0[rbp+rdx*2]
	lea	rdx, sTimeLimitMenuSwitchText[rip]
	mov	DWORD PTR 40[rsp], ecx
	mov	rcx, r10
	add	rdx, r8
	mov	DWORD PTR 48[rsp], 60
	lea	rbp, 2280[rdi]
	movzx	r8d, BYTE PTR 2[rdx]
	movzx	r9d, WORD PTR [rdx]
	mov	DWORD PTR 32[rsp], 12288
	mov	DWORD PTR 64[rsp], r8d
	movzx	r8d, WORD PTR 4[rdx]
	xor	edx, edx
	call	sub_806A568
	lea	rdx, sOptionsScreenSelectedLanguageText[rip]
	xor	ecx, ecx
	cmp	BYTE PTR 2292[rdi], 3
	lea	rdx, [rdx+rsi*2]
	setne	cl
	mov	DWORD PTR 72[rsp], 0
	lea	r10, 1832[rdi]
	movzx	r8d, BYTE PTR 2[rdx]
	lea	ecx, 152[0+rcx*8]
	mov	DWORD PTR 56[rsp], 10
	mov	DWORD PTR 40[rsp], ecx
	movzx	r9d, WORD PTR [rdx]
	mov	rcx, r10
	mov	DWORD PTR 64[rsp], r8d
	movzx	r8d, WORD PTR 4[rdx]
	xor	edx, edx
	mov	DWORD PTR 48[rsp], 75
	mov	DWORD PTR 32[rsp], 12288
	call	sub_806A568
	cmp	BYTE PTR 2292[rdi], 1
	sbb	r13d, r13d
	xor	esi, esi
	and	r13d, -8
	add	r13w, 171
	jmp	.L996
	.p2align 4,,10
	.p2align 3
.L1033:
	movzx	edx, WORD PTR [r14]
	mov	r9d, 955
	mov	eax, 17
	cmp	dx, -1
	je	.L1012
	cmp	dx, 267
	jbe	.L1031
.L994:
	mov	DWORD PTR 64[rsp], eax
	movsx	eax, r13w
	mov	rcx, r12
	xor	edx, edx
	mov	DWORD PTR 40[rsp], eax
	mov	r8d, 4
	mov	DWORD PTR 72[rsp], 0
	mov	DWORD PTR 56[rsp], 10
	mov	DWORD PTR 48[rsp], 38
	mov	DWORD PTR 32[rsp], 12288
	call	sub_806A568
	movsx	cx, BYTE PTR 2292[rdi]
	mov	eax, 7
	cmp	cl, 1
	sbb	al, -1
	add	r12, 64
	add	r13d, 10
	add	r14, 2
	mov	BYTE PTR -11[r12], al
	cmp	rbp, r12
	je	.L1032
.L996:
	test	esi, esi
	je	.L1033
	mov	eax, 17
.L992:
	mov	r9d, 955
	jmp	.L994
	.p2align 4,,10
	.p2align 3
.L1012:
	mov	esi, 1
	jmp	.L994
	.p2align 4,,10
	.p2align 3
.L1032:
	xor	edx, edx
	jmp	.L1004
	.p2align 4,,10
	.p2align 3
.L997:
	mov	BYTE PTR -11[r15], 1
	cmp	dx, 4
	je	.L1000
	lea	rax, 64[rbx]
	add	edx, 1
	mov	r8d, 1
.L1003:
	mov	BYTE PTR 53[rbx], r8b
	mov	rbx, rax
.L1004:
	add	r15, 64
	cmp	dx, cx
	jne	.L997
	mov	BYTE PTR -11[r15], 0
	cmp	dx, 4
	je	.L1000
	lea	rax, 64[rbx]
	add	edx, 1
	xor	r8d, r8d
	jmp	.L1003
	.p2align 4,,10
	.p2align 3
.L1000:
	mov	edx, 4
	lea	eax, 1[rdx]
	cmp	dx, 7
	je	.L1002
.L1034:
	add	r15, 64
	mov	edx, eax
	cmp	ax, cx
	setne	BYTE PTR -11[r15]
	lea	eax, 1[rdx]
	cmp	dx, 7
	jne	.L1034
.L1002:
	mov	DWORD PTR 72[rsp], 0
	xor	r8d, r8d
	xor	edx, edx
	xor	ecx, ecx
	mov	DWORD PTR 64[rsp], 0
	mov	r9d, 964
	mov	DWORD PTR 56[rsp], 0
	mov	DWORD PTR 48[rsp], 0
	mov	DWORD PTR 40[rsp], 0
	mov	DWORD PTR 32[rsp], 0
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	xor	r8d, r8d
	xor	edx, edx
	mov	DWORD PTR 64[rsp], 1
	xor	ecx, ecx
	mov	r9d, 964
	mov	DWORD PTR 56[rsp], 0
	mov	DWORD PTR 48[rsp], 0
	mov	DWORD PTR 40[rsp], 0
	mov	DWORD PTR 32[rsp], 0
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	xor	r8d, r8d
	xor	edx, edx
	mov	DWORD PTR 64[rsp], 12
	xor	ecx, ecx
	mov	r9d, 963
	mov	DWORD PTR 56[rsp], 0
	mov	DWORD PTR 48[rsp], 0
	mov	DWORD PTR 40[rsp], 0
	mov	DWORD PTR 32[rsp], 0
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	xor	r8d, r8d
	mov	r9d, 963
	mov	DWORD PTR 64[rsp], 13
	xor	edx, edx
	xor	ecx, ecx
	mov	DWORD PTR 56[rsp], 0
	mov	DWORD PTR 48[rsp], 0
	mov	DWORD PTR 40[rsp], 0
	mov	DWORD PTR 32[rsp], 0
	call	sub_806A568
	nop
	add	rsp, 120
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
.L1031:
	movzx	eax, dl
	mov	r9d, 963
	and	dh, 1
	jne	.L994
	jmp	.L992
	.seh_endproc
	.p2align 4
	.def	Task_OptionsScreenWaitForLanguageScreenExit;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_OptionsScreenWaitForLanguageScreenExit
Task_OptionsScreenWaitForLanguageScreenExit:
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
	cmp	BYTE PTR 2296[rbx], 0
	jne	.L1035
	mov	rsi, QWORD PTR .refptr.VRAM[rip]
	xor	edx, edx
	mov	rcx, rbx
	mov	QWORD PTR gProfileScreenSubMenuNextVramAddress[rip], 0
	lea	rax, 65536[rsi]
	mov	QWORD PTR gProfileScreenNextVramAddress[rip], rax
	call	OptionsScreenInitRegisters
	xor	eax, eax
	xor	edx, edx
	mov	QWORD PTR 880[rbx], rsi
	mov	WORD PTR 890[rbx], ax
	lea	rax, 14336[rsi]
	movdqu	xmm0, XMMWORD PTR .LC46[rip]
	lea	rcx, 872[rbx]
	mov	WORD PTR 942[rbx], dx
	mov	QWORD PTR 896[rbx], rax
	mov	DWORD PTR 932[rbx], 20
	mov	BYTE PTR 936[rbx], 0
	mov	DWORD PTR 938[rbx], 0
	movups	XMMWORD PTR 916[rbx], xmm0
	call	DrawBackground
	lea	rax, 16384[rsi]
	xor	r8d, r8d
	xor	ecx, ecx
	add	rsi, 28672
	mov	QWORD PTR 976[rbx], rax
	movdqu	xmm0, XMMWORD PTR .LC29[rip]
	mov	WORD PTR 986[rbx], cx
	lea	rcx, 968[rbx]
	mov	WORD PTR 1038[rbx], r8w
	mov	QWORD PTR 992[rbx], rsi
	mov	DWORD PTR 1028[rbx], 20
	mov	BYTE PTR 1032[rbx], 0
	mov	DWORD PTR 1034[rbx], 1
	movups	XMMWORD PTR 1012[rbx], xmm0
	call	DrawBackground
	xor	edx, edx
	mov	rcx, rbx
	call	OptionsScreenCreateUI
	mov	rax, QWORD PTR .LC10[rip]
	lea	rdx, Task_OptionsScreenFadeInFromLanguageScreen[rip]
	mov	DWORD PTR 2288[rbx], 255
	mov	QWORD PTR 2280[rbx], rax
	mov	rax, QWORD PTR [rdi]
	mov	QWORD PTR 40[rax], rdx
.L1035:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_OptionsScreenWaitForSoundTestExit;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_OptionsScreenWaitForSoundTestExit
Task_OptionsScreenWaitForSoundTestExit:
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
	cmp	BYTE PTR 2296[rbx], 0
	jne	.L1037
	mov	rsi, QWORD PTR .refptr.VRAM[rip]
	xor	edx, edx
	mov	rcx, rbx
	mov	QWORD PTR gProfileScreenSubMenuNextVramAddress[rip], 0
	lea	rax, 65536[rsi]
	mov	QWORD PTR gProfileScreenNextVramAddress[rip], rax
	call	OptionsScreenInitRegisters
	xor	eax, eax
	xor	edx, edx
	mov	QWORD PTR 880[rbx], rsi
	mov	WORD PTR 890[rbx], ax
	lea	rax, 14336[rsi]
	movdqu	xmm0, XMMWORD PTR .LC46[rip]
	lea	rcx, 872[rbx]
	mov	WORD PTR 942[rbx], dx
	mov	QWORD PTR 896[rbx], rax
	mov	DWORD PTR 932[rbx], 20
	mov	BYTE PTR 936[rbx], 0
	mov	DWORD PTR 938[rbx], 0
	movups	XMMWORD PTR 916[rbx], xmm0
	call	DrawBackground
	lea	rax, 16384[rsi]
	xor	r8d, r8d
	xor	ecx, ecx
	add	rsi, 28672
	movdqu	xmm0, XMMWORD PTR .LC29[rip]
	mov	QWORD PTR 976[rbx], rax
	mov	WORD PTR 1038[rbx], r8w
	mov	WORD PTR 986[rbx], cx
	lea	rcx, 968[rbx]
	mov	QWORD PTR 992[rbx], rsi
	mov	DWORD PTR 1028[rbx], 20
	mov	BYTE PTR 1032[rbx], 0
	mov	DWORD PTR 1034[rbx], 1
	movups	XMMWORD PTR 1012[rbx], xmm0
	call	DrawBackground
	xor	edx, edx
	mov	rcx, rbx
	call	OptionsScreenCreateUI
	mov	rax, QWORD PTR .LC10[rip]
	mov	ecx, 9
	mov	DWORD PTR 2288[rbx], 255
	mov	QWORD PTR 2280[rbx], rax
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rdi]
	lea	rdx, Task_OptionsScreenFadeInFromSoundTest[rip]
	mov	QWORD PTR 40[rax], rdx
.L1037:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_OptionsScreenWaitForDeleteScreenExit;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_OptionsScreenWaitForDeleteScreenExit
Task_OptionsScreenWaitForDeleteScreenExit:
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
	mov	rdi, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, BYTE PTR 2296[rbx]
	cmp	al, 1
	je	.L1039
	mov	rsi, QWORD PTR .refptr.VRAM[rip]
	movzx	ebp, BYTE PTR 859[rbx]
	mov	QWORD PTR gProfileScreenSubMenuNextVramAddress[rip], 0
	lea	rdx, 65536[rsi]
	mov	QWORD PTR gProfileScreenNextVramAddress[rip], rdx
	test	al, al
	je	.L1046
.L1041:
	mov	BYTE PTR 859[rbx], bpl
	xor	edx, edx
	mov	rcx, rbx
	call	OptionsScreenInitRegisters
	xor	eax, eax
	xor	edx, edx
	mov	QWORD PTR 880[rbx], rsi
	mov	WORD PTR 890[rbx], ax
	lea	rax, 14336[rsi]
	movdqu	xmm0, XMMWORD PTR .LC46[rip]
	lea	rcx, 872[rbx]
	mov	WORD PTR 942[rbx], dx
	mov	QWORD PTR 896[rbx], rax
	mov	DWORD PTR 932[rbx], 20
	mov	BYTE PTR 936[rbx], 0
	mov	DWORD PTR 938[rbx], 0
	movups	XMMWORD PTR 916[rbx], xmm0
	call	DrawBackground
	lea	rax, 16384[rsi]
	xor	r8d, r8d
	xor	ecx, ecx
	add	rsi, 28672
	mov	QWORD PTR 976[rbx], rax
	movdqu	xmm0, XMMWORD PTR .LC29[rip]
	mov	WORD PTR 986[rbx], cx
	lea	rcx, 968[rbx]
	mov	WORD PTR 1038[rbx], r8w
	mov	QWORD PTR 992[rbx], rsi
	mov	DWORD PTR 1028[rbx], 20
	mov	BYTE PTR 1032[rbx], 0
	mov	DWORD PTR 1034[rbx], 1
	movups	XMMWORD PTR 1012[rbx], xmm0
	call	DrawBackground
	xor	edx, edx
	mov	rcx, rbx
	call	OptionsScreenCreateUI
	mov	rax, QWORD PTR .LC10[rip]
	cmp	BYTE PTR 2296[rbx], 0
	mov	DWORD PTR 2288[rbx], 255
	mov	QWORD PTR 2280[rbx], rax
	je	.L1047
.L1042:
	mov	rax, QWORD PTR [rdi]
	lea	rdi, Task_OptionsScreenFadeInFromDeleteScreen[rip]
	mov	BYTE PTR 2296[rbx], 0
	mov	QWORD PTR 40[rax], rdi
.L1039:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L1046:
	mov	rcx, rbx
	call	ReadProfileData
	jmp	.L1041
	.p2align 4,,10
	.p2align 3
.L1047:
	mov	ecx, 9
	call	m4aSongNumStart
	jmp	.L1042
	.seh_endproc
	.p2align 4
	.def	Task_PlayerDataMenuWaitForTimeRecordsScreenExit;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_PlayerDataMenuWaitForTimeRecordsScreenExit
Task_PlayerDataMenuWaitForTimeRecordsScreenExit:
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
	mov	rax, QWORD PTR 0[rbp]
	mov	rsi, QWORD PTR 24[rax]
	cmp	BYTE PTR 475[rsi], 0
	je	.L1050
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L1050:
	mov	rdi, QWORD PTR .refptr.VRAM[rip]
	mov	edx, 1
	mov	rcx, QWORD PTR 464[rsi]
	mov	QWORD PTR gProfileScreenSubMenuNextVramAddress[rip], 0
	lea	rax, 65536[rdi]
	mov	QWORD PTR gProfileScreenNextVramAddress[rip], rax
	call	OptionsScreenInitRegisters
	mov	rbx, QWORD PTR 464[rsi]
	xor	eax, eax
	xor	edx, edx
	movdqu	xmm0, XMMWORD PTR .LC46[rip]
	mov	WORD PTR 890[rbx], ax
	lea	rax, 14336[rdi]
	lea	rcx, 872[rbx]
	mov	WORD PTR 942[rbx], dx
	mov	QWORD PTR 880[rbx], rdi
	mov	QWORD PTR 896[rbx], rax
	mov	DWORD PTR 932[rbx], 20
	mov	BYTE PTR 936[rbx], 0
	mov	DWORD PTR 938[rbx], 0
	movups	XMMWORD PTR 916[rbx], xmm0
	call	DrawBackground
	lea	rax, 16384[rdi]
	xor	r8d, r8d
	xor	ecx, ecx
	add	rdi, 28672
	mov	QWORD PTR 976[rbx], rax
	movdqu	xmm0, XMMWORD PTR .LC29[rip]
	mov	WORD PTR 1038[rbx], r8w
	mov	WORD PTR 986[rbx], cx
	lea	rcx, 968[rbx]
	mov	QWORD PTR 992[rbx], rdi
	mov	DWORD PTR 1028[rbx], 20
	mov	BYTE PTR 1032[rbx], 0
	mov	DWORD PTR 1034[rbx], 1
	movups	XMMWORD PTR 1012[rbx], xmm0
	call	DrawBackground
	mov	rcx, QWORD PTR 464[rsi]
	mov	edx, 1
	call	OptionsScreenCreateUI
	mov	rcx, rsi
	call	PlayerDataMenuCreateUI
	mov	rax, QWORD PTR .LC10[rip]
	mov	DWORD PTR 456[rsi], 255
	lea	rdx, Task_PlayerDataMenuFadeInFromTimeRecordsScreen[rip]
	mov	QWORD PTR 448[rsi], rax
	mov	rax, QWORD PTR 464[rsi]
	mov	BYTE PTR 2296[rax], 1
	mov	rax, QWORD PTR 0[rbp]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.def	Task_OptionsScreenShow;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_OptionsScreenShow
Task_OptionsScreenShow:
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
	xor	edx, edx
	mov	rax, QWORD PTR [rdi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rcx, rbx
	call	OptionsScreenInitRegisters
	mov	rsi, QWORD PTR .refptr.VRAM[rip]
	xor	eax, eax
	xor	edx, edx
	mov	WORD PTR 890[rbx], ax
	movdqu	xmm0, XMMWORD PTR .LC46[rip]
	lea	rcx, 872[rbx]
	lea	rax, 14336[rsi]
	mov	WORD PTR 942[rbx], dx
	mov	QWORD PTR 880[rbx], rsi
	mov	QWORD PTR 896[rbx], rax
	mov	DWORD PTR 932[rbx], 20
	mov	BYTE PTR 936[rbx], 0
	mov	DWORD PTR 938[rbx], 0
	movups	XMMWORD PTR 916[rbx], xmm0
	call	DrawBackground
	lea	rax, 16384[rsi]
	xor	r8d, r8d
	xor	ecx, ecx
	add	rsi, 28672
	mov	QWORD PTR 976[rbx], rax
	movdqu	xmm0, XMMWORD PTR .LC29[rip]
	mov	WORD PTR 986[rbx], cx
	lea	rcx, 968[rbx]
	mov	WORD PTR 1038[rbx], r8w
	mov	QWORD PTR 992[rbx], rsi
	mov	DWORD PTR 1028[rbx], 20
	mov	BYTE PTR 1032[rbx], 0
	mov	DWORD PTR 1034[rbx], 1
	movups	XMMWORD PTR 1012[rbx], xmm0
	call	DrawBackground
	xor	edx, edx
	mov	rcx, rbx
	call	OptionsScreenCreateUI
	mov	rax, QWORD PTR [rdi]
	lea	rdx, Task_OptionScreenFadeIn[rip]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.def	Task_PlayerDataMenuWaitForProfileNameScreenExit;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_PlayerDataMenuWaitForProfileNameScreenExit
Task_PlayerDataMenuWaitForProfileNameScreenExit:
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
	mov	rax, QWORD PTR 0[rbp]
	mov	rsi, QWORD PTR 24[rax]
	cmp	BYTE PTR 475[rsi], 0
	je	.L1054
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L1054:
	mov	rdi, QWORD PTR .refptr.VRAM[rip]
	mov	edx, 1
	mov	rcx, QWORD PTR 464[rsi]
	mov	QWORD PTR gProfileScreenSubMenuNextVramAddress[rip], 0
	lea	rax, 65536[rdi]
	mov	QWORD PTR gProfileScreenNextVramAddress[rip], rax
	call	OptionsScreenInitRegisters
	mov	rbx, QWORD PTR 464[rsi]
	xor	eax, eax
	xor	edx, edx
	movdqu	xmm0, XMMWORD PTR .LC46[rip]
	mov	WORD PTR 890[rbx], ax
	lea	rax, 14336[rdi]
	lea	rcx, 872[rbx]
	mov	WORD PTR 942[rbx], dx
	mov	QWORD PTR 880[rbx], rdi
	mov	QWORD PTR 896[rbx], rax
	mov	DWORD PTR 932[rbx], 20
	mov	BYTE PTR 936[rbx], 0
	mov	DWORD PTR 938[rbx], 0
	movups	XMMWORD PTR 916[rbx], xmm0
	call	DrawBackground
	lea	rax, 16384[rdi]
	xor	r8d, r8d
	xor	ecx, ecx
	add	rdi, 28672
	mov	QWORD PTR 976[rbx], rax
	movdqu	xmm0, XMMWORD PTR .LC29[rip]
	mov	WORD PTR 1038[rbx], r8w
	mov	WORD PTR 986[rbx], cx
	lea	rcx, 968[rbx]
	mov	QWORD PTR 992[rbx], rdi
	mov	DWORD PTR 1028[rbx], 20
	mov	BYTE PTR 1032[rbx], 0
	mov	DWORD PTR 1034[rbx], 1
	movups	XMMWORD PTR 1012[rbx], xmm0
	call	DrawBackground
	mov	rcx, QWORD PTR 464[rsi]
	mov	edx, 1
	call	OptionsScreenCreateUI
	mov	rcx, rsi
	call	PlayerDataMenuCreateUI
	mov	rax, QWORD PTR .LC10[rip]
	mov	DWORD PTR 456[rsi], 255
	lea	rdx, Task_PlayerDataMenuFadeInFromProfileNameScreen[rip]
	mov	QWORD PTR 448[rsi], rax
	mov	rax, QWORD PTR 464[rsi]
	mov	BYTE PTR 2296[rax], 1
	mov	rax, QWORD PTR 0[rbp]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.def	Task_PlayerDataMenuWaitForMultiplayerRecordsScreenExit;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_PlayerDataMenuWaitForMultiplayerRecordsScreenExit
Task_PlayerDataMenuWaitForMultiplayerRecordsScreenExit:
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
	mov	rax, QWORD PTR 0[rbp]
	mov	rsi, QWORD PTR 24[rax]
	cmp	BYTE PTR 475[rsi], 0
	je	.L1057
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L1057:
	mov	rdi, QWORD PTR .refptr.VRAM[rip]
	mov	edx, 1
	mov	rcx, QWORD PTR 464[rsi]
	mov	QWORD PTR gProfileScreenSubMenuNextVramAddress[rip], 0
	lea	rax, 65536[rdi]
	mov	QWORD PTR gProfileScreenNextVramAddress[rip], rax
	call	OptionsScreenInitRegisters
	mov	rbx, QWORD PTR 464[rsi]
	xor	eax, eax
	xor	edx, edx
	movdqu	xmm0, XMMWORD PTR .LC46[rip]
	mov	WORD PTR 890[rbx], ax
	lea	rax, 14336[rdi]
	lea	rcx, 872[rbx]
	mov	WORD PTR 942[rbx], dx
	mov	QWORD PTR 880[rbx], rdi
	mov	QWORD PTR 896[rbx], rax
	mov	DWORD PTR 932[rbx], 20
	mov	BYTE PTR 936[rbx], 0
	mov	DWORD PTR 938[rbx], 0
	movups	XMMWORD PTR 916[rbx], xmm0
	call	DrawBackground
	lea	rax, 16384[rdi]
	xor	r8d, r8d
	xor	ecx, ecx
	add	rdi, 28672
	mov	QWORD PTR 976[rbx], rax
	movdqu	xmm0, XMMWORD PTR .LC29[rip]
	mov	WORD PTR 1038[rbx], r8w
	mov	WORD PTR 986[rbx], cx
	lea	rcx, 968[rbx]
	mov	QWORD PTR 992[rbx], rdi
	mov	DWORD PTR 1028[rbx], 20
	mov	BYTE PTR 1032[rbx], 0
	mov	DWORD PTR 1034[rbx], 1
	movups	XMMWORD PTR 1012[rbx], xmm0
	call	DrawBackground
	mov	rcx, QWORD PTR 464[rsi]
	mov	edx, 1
	call	OptionsScreenCreateUI
	mov	rcx, rsi
	call	PlayerDataMenuCreateUI
	mov	rax, QWORD PTR .LC10[rip]
	mov	DWORD PTR 456[rsi], 255
	lea	rdx, Task_PlayerDataMenuFadeInFromMultiplayerRecordsScreen[rip]
	mov	QWORD PTR 448[rsi], rax
	mov	rax, QWORD PTR 464[rsi]
	mov	BYTE PTR 2296[rax], 1
	mov	rax, QWORD PTR 0[rbp]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.p2align 4
	.def	Task_OptionsScreenMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_OptionsScreenMain
Task_OptionsScreenMain:
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
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rbx]
	mov	rsi, QWORD PTR 24[rax]
	call	OptionsScreenRenderUI
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	movzx	eax, WORD PTR [rax]
	test	al, 1
	jne	.L1093
	test	al, 2
	jne	.L1094
	mov	rax, QWORD PTR .refptr.gRepeatedKeys[rip]
	movzx	eax, WORD PTR [rax]
	test	al, -128
	jne	.L1095
	test	al, 64
	jne	.L1096
.L1058:
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
.L1093:
	mov	ecx, 106
	call	m4aSongNumStart
	movzx	eax, BYTE PTR 2292[rsi]
	cmp	al, 6
	je	.L1060
	jg	.L1061
	cmp	al, 3
	je	.L1062
	cmp	al, 5
	jne	.L1064
	mov	rax, QWORD PTR [rbx]
	mov	rcx, QWORD PTR .LC0[rip]
	lea	rdi, Task_OptionScreenFadeOutToSoundTest[rip]
	mov	rdx, QWORD PTR 24[rax]
	mov	QWORD PTR 2280[rdx], rcx
	mov	DWORD PTR 2288[rdx], 255
	mov	QWORD PTR 40[rax], rdi
	jmp	.L1058
	.p2align 4,,10
	.p2align 3
.L1095:
	mov	ecx, 108
	call	m4aSongNumStart
	movzx	eax, BYTE PTR 2292[rsi]
	mov	BYTE PTR 2293[rsi], al
	cmp	al, 6
	jg	.L1085
	add	eax, 1
	cmp	BYTE PTR 860[rsi], 0
	mov	BYTE PTR 2292[rsi], al
	jne	.L1088
	cmp	al, 5
	jne	.L1088
	mov	BYTE PTR 2292[rsi], 6
	.p2align 4,,10
	.p2align 3
.L1088:
	mov	rax, QWORD PTR [rbx]
	lea	rdi, Task_OptionsScreenMenuCursorMoveAnim[rip]
	mov	BYTE PTR 2295[rsi], 0
	mov	QWORD PTR 40[rax], rdi
	jmp	.L1058
	.p2align 4,,10
	.p2align 3
.L1061:
	cmp	al, 7
	jne	.L1064
	mov	rax, QWORD PTR [rbx]
	mov	rcx, QWORD PTR .LC0[rip]
	mov	rdx, QWORD PTR 24[rax]
	mov	QWORD PTR 2280[rdx], rcx
	mov	DWORD PTR 2288[rdx], 255
	lea	rdx, Task_OptionsScreenFadeOutAndExit[rip]
	mov	QWORD PTR 40[rax], rdx
	jmp	.L1058
	.p2align 4,,10
	.p2align 3
.L1096:
	mov	ecx, 108
	call	m4aSongNumStart
	movzx	eax, BYTE PTR 2292[rsi]
	mov	BYTE PTR 2293[rsi], al
	test	al, al
	jle	.L1087
	sub	eax, 1
	cmp	BYTE PTR 860[rsi], 0
	mov	BYTE PTR 2292[rsi], al
	jne	.L1088
	cmp	al, 5
	jne	.L1088
	mov	BYTE PTR 2292[rsi], 4
	jmp	.L1088
	.p2align 4,,10
	.p2align 3
.L1094:
	mov	ecx, 107
	lea	rdi, Task_OptionsScreenFadeOutAndExit[rip]
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rbx]
	mov	rcx, QWORD PTR .LC0[rip]
	mov	rdx, QWORD PTR 24[rax]
	mov	QWORD PTR 2280[rdx], rcx
	mov	DWORD PTR 2288[rdx], 255
	mov	QWORD PTR 40[rax], rdi
	jmp	.L1058
	.p2align 4,,10
	.p2align 3
.L1060:
	mov	rax, QWORD PTR [rbx]
	mov	rcx, QWORD PTR .LC0[rip]
	lea	rdi, Task_OptionsScreenFadeOutToDeleteScreen[rip]
	mov	rdx, QWORD PTR 24[rax]
	mov	QWORD PTR 2280[rdx], rcx
	mov	DWORD PTR 2288[rdx], 255
	mov	QWORD PTR 40[rax], rdi
	jmp	.L1058
	.p2align 4,,10
	.p2align 3
.L1064:
	mov	rax, QWORD PTR [rbx]
	mov	rsi, QWORD PTR 24[rax]
	movzx	edi, BYTE PTR 2292[rsi]
	cmp	dil, 2
	je	.L1067
	jg	.L1068
	test	dil, dil
	je	.L1069
	cmp	dil, 1
	jne	.L1071
	mov	QWORD PTR 32[rsp], 0
	mov	r9d, 4
	mov	r8d, 8192
	mov	edx, 336
	lea	rcx, Task_DifficultyMenuOpenAnimWait[rip]
	call	TaskCreate
	mov	rdi, QWORD PTR 24[rax]
	lea	rax, sDifficultyMenuTitleText[rip]
	mov	QWORD PTR [rdi], rsi
	movsx	r13w, BYTE PTR 857[rsi]
	mov	BYTE PTR 328[rdi], r13b
	movsx	rdx, BYTE PTR 859[rsi]
	mov	ebp, r13d
	mov	BYTE PTR 329[rdi], 0
	lea	rcx, [rdx+rdx*2]
	mov	BYTE PTR 330[rdi], dl
	movzx	r12d, WORD PTR 864[rsi]
	lea	rdx, sDifficultyLevelSwitchText[rip]
	mov	r10, rcx
	lea	r14, [rdx+rcx*4]
	mov	DWORD PTR 72[rsp], 0
	lea	rcx, 8[rdi]
	add	r10, r10
	lea	r15d, 336[r12]
	mov	DWORD PTR 56[rsp], 8
	add	rax, r10
	movsx	r15d, r15w
	mov	DWORD PTR 48[rsp], 50
	movzx	edx, BYTE PTR 2[rax]
	movzx	r9d, WORD PTR [rax]
	mov	DWORD PTR 40[rsp], r15d
	mov	DWORD PTR 32[rsp], 4096
	movzx	r8d, WORD PTR 4[rax]
	mov	DWORD PTR 64[rsp], edx
	mov	edx, 1
	mov	QWORD PTR 88[rsp], r10
	call	sub_806A568
	lea	rax, sDifficultyMenuControlsText[rip]
.L1092:
	mov	r10, QWORD PTR 88[rsp]
	mov	DWORD PTR 72[rsp], 0
	lea	rcx, 72[rdi]
	mov	DWORD PTR 56[rsp], 8
	add	rax, r10
	mov	DWORD PTR 48[rsp], 116
	movzx	edx, BYTE PTR 2[rax]
	movzx	r9d, WORD PTR [rax]
	mov	DWORD PTR 40[rsp], r15d
	mov	DWORD PTR 32[rsp], 4096
	movzx	r8d, WORD PTR 4[rax]
	mov	DWORD PTR 64[rsp], edx
	mov	edx, 1
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	movzx	eax, BYTE PTR 2[r14]
	lea	rcx, 136[rdi]
	mov	DWORD PTR 56[rsp], 8
	mov	edx, 1
	mov	DWORD PTR 64[rsp], eax
	lea	eax, 274[r12]
	cwde
	mov	DWORD PTR 48[rsp], 76
	mov	DWORD PTR 40[rsp], eax
	mov	DWORD PTR 32[rsp], 4096
	movzx	r9d, WORD PTR [r14]
	movzx	r8d, WORD PTR 4[r14]
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	movzx	eax, BYTE PTR 8[r14]
	lea	rcx, 200[rdi]
	mov	DWORD PTR 56[rsp], 8
	mov	edx, 1
	mov	DWORD PTR 64[rsp], eax
	lea	eax, 334[r12]
	cwde
	mov	DWORD PTR 48[rsp], 76
	mov	DWORD PTR 40[rsp], eax
	mov	DWORD PTR 32[rsp], 4096
	movzx	r9d, WORD PTR 6[r14]
	movzx	r8d, WORD PTR 10[r14]
	call	sub_806A568
	mov	edx, 60
	mov	eax, ebp
	mov	DWORD PTR 72[rsp], 0
	imul	dl
	mov	DWORD PTR 64[rsp], 3
	lea	rcx, 264[rdi]
	mov	r9d, 952
	mov	DWORD PTR 56[rsp], 7
	mov	r8d, 18
	mov	edx, 1
	mov	DWORD PTR 48[rsp], 76
	add	ax, 272
	mov	DWORD PTR 32[rsp], 4096
	cwde
	mov	DWORD PTR 40[rsp], eax
	call	sub_806A568
	test	r13w, r13w
	setne	BYTE PTR 189[rdi]
	cmp	r13w, 1
	setne	BYTE PTR 253[rdi]
	mov	rax, QWORD PTR [rbx]
.L1071:
	lea	rdi, Task_OptionsScreenSubMenuOpenAnim[rip]
	mov	BYTE PTR 2295[rsi], 0
	mov	QWORD PTR 40[rax], rdi
	jmp	.L1058
	.p2align 4,,10
	.p2align 3
.L1062:
	mov	rax, QWORD PTR [rbx]
	mov	rcx, QWORD PTR .LC0[rip]
	lea	rdi, Task_OptionsScreenFadeOutToLanguageScreen[rip]
	mov	rdx, QWORD PTR 24[rax]
	mov	QWORD PTR 2280[rdx], rcx
	mov	DWORD PTR 2288[rdx], 255
	mov	QWORD PTR 40[rax], rdi
	jmp	.L1058
	.p2align 4,,10
	.p2align 3
.L1087:
	mov	BYTE PTR 2292[rsi], 7
	jmp	.L1088
	.p2align 4,,10
	.p2align 3
.L1085:
	mov	BYTE PTR 2292[rsi], 0
	jmp	.L1088
	.p2align 4,,10
	.p2align 3
.L1068:
	cmp	dil, 4
	jne	.L1071
	mov	QWORD PTR 32[rsp], 0
	mov	r9d, 4
	mov	r8d, 8192
	mov	edx, 784
	lea	rcx, Task_ButtonConfigMenuOpenAnimWait[rip]
	call	TaskCreate
	mov	rdi, QWORD PTR 24[rax]
	movzx	eax, WORD PTR 848[rsi]
	mov	QWORD PTR [rdi], rsi
	cmp	ax, 2
	je	.L1074
	cmp	ax, 256
	je	.L1075
	cmp	ax, 1
	jne	.L1076
	mov	BYTE PTR 776[rdi], 0
.L1076:
	movzx	eax, WORD PTR 850[rsi]
	cmp	ax, 2
	je	.L1077
	cmp	ax, 256
	je	.L1078
	cmp	ax, 1
	jne	.L1079
	mov	BYTE PTR 776[rdi], 1
.L1079:
	movzx	eax, WORD PTR 852[rsi]
	cmp	ax, 2
	je	.L1080
	cmp	ax, 256
	je	.L1081
	cmp	ax, 1
	jne	.L1082
	mov	BYTE PTR 776[rdi], 2
.L1082:
	xor	eax, eax
	lea	rbp, sButtonConfigTitleAndControlsText[rip]
	lea	rcx, 8[rdi]
	mov	edx, 1
	mov	WORD PTR 779[rdi], ax
	movsx	rax, BYTE PTR 859[rsi]
	lea	r13, [rax+rax*8]
	mov	BYTE PTR 781[rdi], al
	movzx	r12d, WORD PTR 864[rsi]
	lea	rax, sButtonConfigActionsText[rip]
	add	r13, r13
	mov	DWORD PTR 72[rsp], 0
	add	rbp, r13
	lea	r14d, 336[r12]
	add	r13, rax
	movzx	eax, BYTE PTR 2[rbp]
	movsx	r14d, r14w
	mov	DWORD PTR 56[rsp], 8
	mov	DWORD PTR 48[rsp], 28
	mov	DWORD PTR 64[rsp], eax
	mov	DWORD PTR 40[rsp], r14d
	mov	DWORD PTR 32[rsp], 4096
	movzx	r9d, WORD PTR 0[rbp]
	movzx	r8d, WORD PTR 4[rbp]
	call	sub_806A568
	lea	rcx, 72[rdi]
	mov	edx, 1
	mov	DWORD PTR 72[rsp], 0
	movzx	eax, BYTE PTR 8[rbp]
	mov	DWORD PTR 56[rsp], 8
	mov	DWORD PTR 48[rsp], 122
	mov	DWORD PTR 64[rsp], eax
	mov	DWORD PTR 40[rsp], r14d
	mov	DWORD PTR 32[rsp], 4096
	movzx	r9d, WORD PTR 6[rbp]
	movzx	r8d, WORD PTR 10[rbp]
	call	sub_806A568
	mov	DWORD PTR 72[rsp], 0
	movzx	eax, BYTE PTR 14[rbp]
	lea	rcx, 136[rdi]
	mov	DWORD PTR 56[rsp], 8
	mov	edx, 1
	mov	DWORD PTR 64[rsp], eax
	mov	DWORD PTR 48[rsp], 135
	mov	DWORD PTR 40[rsp], r14d
	mov	DWORD PTR 32[rsp], 4096
	movzx	r9d, WORD PTR 12[rbp]
	movzx	r8d, WORD PTR 16[rbp]
	lea	ebp, 264[r12]
	movsx	ebp, bp
	call	sub_806A568
	mov	DWORD PTR 40[rsp], ebp
	lea	rcx, 200[rdi]
	mov	r9d, 950
	mov	DWORD PTR 72[rsp], 0
	mov	r8d, 12
	mov	edx, 1
	mov	DWORD PTR 64[rsp], 4
	mov	DWORD PTR 56[rsp], 8
	mov	DWORD PTR 48[rsp], 53
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	mov	DWORD PTR 40[rsp], ebp
	lea	rcx, 264[rdi]
	mov	r9d, 950
	mov	DWORD PTR 72[rsp], 0
	mov	r8d, 12
	mov	edx, 1
	mov	DWORD PTR 64[rsp], 5
	mov	DWORD PTR 56[rsp], 8
	mov	DWORD PTR 48[rsp], 77
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	mov	DWORD PTR 40[rsp], ebp
	lea	rcx, 328[rdi]
	mov	r9d, 950
	mov	DWORD PTR 72[rsp], 0
	mov	r8d, 12
	mov	edx, 1
	lea	ebp, 332[r12]
	mov	DWORD PTR 64[rsp], 6
	movsx	ebp, bp
	mov	DWORD PTR 56[rsp], 8
	mov	DWORD PTR 48[rsp], 101
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	movzx	eax, BYTE PTR 776[rdi]
	mov	DWORD PTR 72[rsp], 0
	lea	rcx, 392[rdi]
	lea	rax, [rax+rax*2]
	lea	rax, 0[r13+rax*2]
	movzx	edx, BYTE PTR 2[rax]
	mov	DWORD PTR 56[rsp], 8
	mov	DWORD PTR 48[rsp], 45
	mov	DWORD PTR 64[rsp], edx
	mov	edx, 1
	mov	DWORD PTR 40[rsp], ebp
	mov	DWORD PTR 32[rsp], 4096
	movzx	r9d, WORD PTR [rax]
	movzx	r8d, WORD PTR 4[rax]
	call	sub_806A568
	movzx	eax, BYTE PTR 777[rdi]
	mov	DWORD PTR 72[rsp], 0
	lea	rcx, 456[rdi]
	lea	rax, [rax+rax*2]
	lea	rax, 0[r13+rax*2]
	movzx	edx, BYTE PTR 2[rax]
	mov	DWORD PTR 56[rsp], 8
	mov	DWORD PTR 48[rsp], 69
	mov	DWORD PTR 64[rsp], edx
	mov	edx, 1
	mov	DWORD PTR 40[rsp], ebp
	mov	DWORD PTR 32[rsp], 4096
	movzx	r9d, WORD PTR [rax]
	movzx	r8d, WORD PTR 4[rax]
	call	sub_806A568
	movzx	eax, BYTE PTR 778[rdi]
	mov	DWORD PTR 72[rsp], 0
	lea	rcx, 520[rdi]
	lea	rax, [rax+rax*2]
	lea	rax, 0[r13+rax*2]
	movzx	edx, BYTE PTR 2[rax]
	mov	DWORD PTR 56[rsp], 8
	mov	DWORD PTR 48[rsp], 93
	mov	DWORD PTR 64[rsp], edx
	mov	edx, 1
	mov	DWORD PTR 40[rsp], ebp
	mov	DWORD PTR 32[rsp], 4096
	movzx	r9d, WORD PTR [rax]
	movzx	r8d, WORD PTR 4[rax]
	call	sub_806A568
	lea	eax, 252[r12]
	mov	DWORD PTR 72[rsp], 0
	lea	rcx, 712[rdi]
	cwde
	mov	DWORD PTR 64[rsp], 7
	mov	r9d, 950
	mov	r8d, 66
	mov	DWORD PTR 40[rsp], eax
	mov	edx, 1
	mov	DWORD PTR 56[rsp], 6
	mov	DWORD PTR 48[rsp], 42
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	lea	eax, 323[r12]
	mov	DWORD PTR 72[rsp], 0
	lea	rcx, 584[rdi]
	cwde
	mov	DWORD PTR 64[rsp], 8
	mov	r9d, 950
	mov	r8d, 2
	mov	DWORD PTR 40[rsp], eax
	mov	edx, 1
	mov	DWORD PTR 56[rsp], 6
	mov	DWORD PTR 48[rsp], 53
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	lea	eax, 413[r12]
	mov	DWORD PTR 72[rsp], 0
	lea	rcx, 648[rdi]
	cwde
	mov	DWORD PTR 64[rsp], 9
	mov	r9d, 950
	mov	r8d, 2
	mov	DWORD PTR 40[rsp], eax
	mov	edx, 1
	mov	DWORD PTR 56[rsp], 6
	mov	DWORD PTR 48[rsp], 53
	mov	DWORD PTR 32[rsp], 4096
	call	sub_806A568
	mov	rax, QWORD PTR [rbx]
	jmp	.L1071
	.p2align 4,,10
	.p2align 3
.L1069:
	mov	QWORD PTR 32[rsp], 0
	mov	r9d, 4
	mov	r8d, 8192
	mov	edx, 480
	lea	rcx, Task_PlayerDataMenuOpenAnimWait[rip]
	call	TaskCreate
	mov	rcx, QWORD PTR 24[rax]
	movzx	eax, BYTE PTR 2294[rsi]
	cmp	al, -1
	mov	QWORD PTR 464[rcx], rsi
	cmove	eax, edi
	mov	BYTE PTR 473[rcx], 0
	mov	BYTE PTR 472[rcx], al
	movzx	eax, BYTE PTR 859[rsi]
	mov	BYTE PTR 474[rcx], al
	call	PlayerDataMenuCreateUI
	mov	rax, QWORD PTR [rbx]
	jmp	.L1071
	.p2align 4,,10
	.p2align 3
.L1067:
	mov	QWORD PTR 32[rsp], 0
	mov	r9d, 4
	mov	r8d, 8192
	mov	edx, 336
	lea	rcx, Task_TimeLimitMenuOpenAnimWait[rip]
	call	TaskCreate
	mov	rdi, QWORD PTR 24[rax]
	lea	rax, sTimeLimitMenuTitleText[rip]
	mov	QWORD PTR [rdi], rsi
	movsx	r13w, BYTE PTR 858[rsi]
	mov	BYTE PTR 328[rdi], r13b
	movsx	rdx, BYTE PTR 859[rsi]
	mov	ebp, r13d
	mov	BYTE PTR 329[rdi], 0
	lea	rcx, [rdx+rdx*2]
	mov	BYTE PTR 330[rdi], dl
	movzx	r12d, WORD PTR 864[rsi]
	lea	rdx, sTimeLimitMenuSwitchText[rip]
	mov	r10, rcx
	lea	r14, [rdx+rcx*4]
	mov	DWORD PTR 72[rsp], 0
	lea	rcx, 8[rdi]
	add	r10, r10
	lea	r15d, 336[r12]
	mov	DWORD PTR 56[rsp], 8
	add	rax, r10
	movsx	r15d, r15w
	mov	DWORD PTR 48[rsp], 50
	movzx	edx, BYTE PTR 2[rax]
	movzx	r9d, WORD PTR [rax]
	mov	DWORD PTR 40[rsp], r15d
	mov	DWORD PTR 32[rsp], 4096
	movzx	r8d, WORD PTR 4[rax]
	mov	DWORD PTR 64[rsp], edx
	mov	edx, 1
	mov	QWORD PTR 88[rsp], r10
	call	sub_806A568
	lea	rax, sTimeLimitMenuControlsText[rip]
	jmp	.L1092
.L1075:
	mov	BYTE PTR 778[rdi], 0
	jmp	.L1076
.L1074:
	mov	BYTE PTR 777[rdi], 0
	jmp	.L1076
.L1081:
	mov	BYTE PTR 778[rdi], 2
	jmp	.L1082
.L1080:
	mov	BYTE PTR 777[rdi], 2
	jmp	.L1082
.L1078:
	mov	BYTE PTR 778[rdi], 1
	jmp	.L1079
.L1077:
	mov	BYTE PTR 777[rdi], 1
	jmp	.L1079
	.seh_endproc
	.p2align 4
	.globl	OptionsInitBackground
	.def	OptionsInitBackground;	.scl	2;	.type	32;	.endef
	.seh_proc	OptionsInitBackground
OptionsInitBackground:
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
	.globl	sZoneBossTitles
	.section .rdata,"dr"
	.align 32
sZoneBossTitles:
	.word	1064
	.word	0
	.word	36
	.word	1064
	.word	1
	.word	34
	.word	1064
	.word	2
	.word	24
	.word	1064
	.word	3
	.word	22
	.word	1064
	.word	4
	.word	24
	.word	1064
	.word	5
	.word	28
	.word	1064
	.word	6
	.word	24
	.word	1065
	.word	0
	.word	38
	.word	1065
	.word	1
	.word	38
	.word	1065
	.word	2
	.word	26
	.word	1065
	.word	3
	.word	22
	.word	1065
	.word	4
	.word	28
	.word	1065
	.word	5
	.word	34
	.word	1065
	.word	6
	.word	22
	.word	1065
	.word	0
	.word	38
	.word	1065
	.word	1
	.word	38
	.word	1065
	.word	2
	.word	26
	.word	1065
	.word	3
	.word	22
	.word	1065
	.word	4
	.word	28
	.word	1065
	.word	5
	.word	34
	.word	1065
	.word	6
	.word	22
	.word	1065
	.word	0
	.word	38
	.word	1065
	.word	1
	.word	38
	.word	1065
	.word	2
	.word	26
	.word	1065
	.word	3
	.word	22
	.word	1065
	.word	4
	.word	28
	.word	1065
	.word	5
	.word	34
	.word	1065
	.word	6
	.word	22
	.word	1065
	.word	0
	.word	38
	.word	1065
	.word	1
	.word	38
	.word	1065
	.word	2
	.word	26
	.word	1065
	.word	3
	.word	22
	.word	1065
	.word	4
	.word	28
	.word	1065
	.word	5
	.word	34
	.word	1065
	.word	6
	.word	22
	.word	1065
	.word	0
	.word	38
	.word	1065
	.word	1
	.word	38
	.word	1065
	.word	2
	.word	26
	.word	1065
	.word	3
	.word	22
	.word	1065
	.word	4
	.word	28
	.word	1065
	.word	5
	.word	34
	.word	1065
	.word	6
	.word	22
	.globl	sZoneNameTitles
	.align 32
sZoneNameTitles:
	.word	1049
	.word	0
	.word	28
	.word	1049
	.word	1
	.word	28
	.word	1049
	.word	2
	.word	36
	.word	1049
	.word	3
	.word	30
	.word	1049
	.word	4
	.word	28
	.word	1049
	.word	5
	.word	22
	.word	1049
	.word	6
	.word	30
	.word	1063
	.word	0
	.word	36
	.word	1063
	.word	1
	.word	34
	.word	1063
	.word	2
	.word	34
	.word	1063
	.word	3
	.word	36
	.word	1063
	.word	4
	.word	34
	.word	1063
	.word	5
	.word	36
	.word	1063
	.word	6
	.word	32
	.word	1063
	.word	0
	.word	36
	.word	1063
	.word	1
	.word	34
	.word	1063
	.word	2
	.word	34
	.word	1063
	.word	3
	.word	36
	.word	1063
	.word	4
	.word	34
	.word	1063
	.word	5
	.word	36
	.word	1063
	.word	6
	.word	32
	.word	1063
	.word	0
	.word	36
	.word	1063
	.word	1
	.word	34
	.word	1063
	.word	2
	.word	34
	.word	1063
	.word	3
	.word	36
	.word	1063
	.word	4
	.word	34
	.word	1063
	.word	5
	.word	36
	.word	1063
	.word	6
	.word	32
	.word	1063
	.word	0
	.word	36
	.word	1063
	.word	1
	.word	34
	.word	1063
	.word	2
	.word	34
	.word	1063
	.word	3
	.word	36
	.word	1063
	.word	4
	.word	34
	.word	1063
	.word	5
	.word	36
	.word	1063
	.word	6
	.word	32
	.word	1063
	.word	0
	.word	36
	.word	1063
	.word	1
	.word	34
	.word	1063
	.word	2
	.word	34
	.word	1063
	.word	3
	.word	36
	.word	1063
	.word	4
	.word	34
	.word	1063
	.word	5
	.word	36
	.word	1063
	.word	6
	.word	32
	.globl	sTimeRecordDigitTiles
	.align 32
sTimeRecordDigitTiles:
	.word	1047
	.word	0
	.word	4
	.word	1047
	.word	1
	.word	4
	.word	1047
	.word	2
	.word	4
	.word	1047
	.word	3
	.word	4
	.word	1047
	.word	4
	.word	4
	.word	1047
	.word	5
	.word	4
	.word	1047
	.word	6
	.word	4
	.word	1047
	.word	7
	.word	4
	.word	1047
	.word	8
	.word	4
	.word	1047
	.word	9
	.word	4
	.word	1047
	.word	10
	.word	4
	.globl	sTimeRecordsZoneActTitleDigits
	.align 32
sTimeRecordsZoneActTitleDigits:
	.word	1048
	.word	2
	.word	4
	.word	1048
	.word	3
	.word	6
	.word	1048
	.word	4
	.word	6
	.word	1048
	.word	5
	.word	6
	.word	1048
	.word	6
	.word	6
	.word	1048
	.word	7
	.word	6
	.word	1048
	.word	8
	.word	6
	.globl	sTimeRecordsScreenChoices
	.align 32
sTimeRecordsScreenChoices:
	.word	959
	.word	1
	.word	36
	.word	959
	.word	2
	.word	36
	.word	1015
	.word	1
	.word	36
	.word	1015
	.word	2
	.word	36
	.word	1015
	.word	1
	.word	36
	.word	1015
	.word	2
	.word	36
	.word	1015
	.word	1
	.word	36
	.word	1015
	.word	2
	.word	36
	.word	1015
	.word	1
	.word	36
	.word	1015
	.word	2
	.word	36
	.word	1015
	.word	1
	.word	36
	.word	1015
	.word	2
	.word	36
	.globl	sTimeRecordsChoiceViewTitles
	.align 32
sTimeRecordsChoiceViewTitles:
	.word	959
	.word	0
	.word	66
	.word	1015
	.word	0
	.word	32
	.word	1016
	.word	0
	.word	30
	.word	1017
	.word	0
	.word	44
	.word	1018
	.word	0
	.word	44
	.word	1019
	.word	0
	.word	36
	.globl	sMultiplayerScoreDigitTiles
	.align 32
sMultiplayerScoreDigitTiles:
	.word	1119
	.word	16
	.word	2
	.word	1119
	.word	17
	.word	2
	.word	1119
	.word	18
	.word	2
	.word	1119
	.word	19
	.word	2
	.word	1119
	.word	20
	.word	2
	.word	1119
	.word	21
	.word	2
	.word	1119
	.word	22
	.word	2
	.word	1119
	.word	23
	.word	2
	.word	1119
	.word	24
	.word	2
	.word	1119
	.word	25
	.word	2
	.globl	sMultiplayerRecordsTitleAndColumnHeadersText
	.align 32
sMultiplayerRecordsTitleAndColumnHeadersText:
	.word	961
	.word	0
	.word	48
	.word	961
	.word	1
	.word	28
	.word	1025
	.word	0
	.word	42
	.word	1025
	.word	1
	.word	26
	.word	1026
	.word	0
	.word	28
	.word	1026
	.word	1
	.word	26
	.word	1027
	.word	0
	.word	42
	.word	1027
	.word	1
	.word	24
	.word	1028
	.word	0
	.word	40
	.word	1028
	.word	1
	.word	24
	.word	1029
	.word	0
	.word	40
	.word	1029
	.word	1
	.word	26
	.globl	sProfileNameScreenScrollArrowTiles
	.align 8
sProfileNameScreenScrollArrowTiles:
	.word	962
	.word	0
	.word	2
	.word	962
	.word	1
	.word	2
	.globl	sProfileNameScreenEndButtonText
	.align 32
sProfileNameScreenEndButtonText:
	.word	954
	.word	5
	.word	8
	.word	954
	.word	5
	.word	8
	.word	954
	.word	5
	.word	8
	.word	954
	.word	5
	.word	8
	.word	954
	.word	5
	.word	8
	.word	954
	.word	5
	.word	8
	.globl	sProfileNameScreenArrowTiles
	.align 8
sProfileNameScreenArrowTiles:
	.word	954
	.word	4
	.word	3
	.word	954
	.word	3
	.word	3
	.globl	sProfileNameScreenEditTitleText
	.align 32
sProfileNameScreenEditTitleText:
	.word	954
	.word	1
	.word	48
	.word	1000
	.word	0
	.word	32
	.word	1001
	.word	0
	.word	28
	.word	1002
	.word	0
	.word	34
	.word	1003
	.word	0
	.word	20
	.word	1004
	.word	0
	.word	32
	.globl	sProfileNameScreenNewTitleText
	.align 32
sProfileNameScreenNewTitleText:
	.word	954
	.word	2
	.word	48
	.word	1000
	.word	1
	.word	24
	.word	1001
	.word	1
	.word	28
	.word	1002
	.word	1
	.word	30
	.word	1003
	.word	1
	.word	20
	.word	1004
	.word	1
	.word	26
	.globl	sPlayerDataMenuItemsText
	.align 32
sPlayerDataMenuItemsText:
	.word	957
	.word	0
	.word	40
	.word	957
	.word	1
	.word	40
	.word	957
	.word	2
	.word	40
	.word	957
	.word	3
	.word	40
	.word	1005
	.word	0
	.word	40
	.word	1005
	.word	1
	.word	40
	.word	1005
	.word	2
	.word	40
	.word	1005
	.word	3
	.word	40
	.word	1006
	.word	0
	.word	40
	.word	1006
	.word	1
	.word	40
	.word	1006
	.word	2
	.word	40
	.word	1006
	.word	3
	.word	40
	.word	1007
	.word	0
	.word	40
	.word	1007
	.word	1
	.word	40
	.word	1007
	.word	2
	.word	40
	.word	1007
	.word	3
	.word	40
	.word	1008
	.word	0
	.word	40
	.word	1008
	.word	1
	.word	40
	.word	1008
	.word	2
	.word	40
	.word	1008
	.word	3
	.word	40
	.word	1009
	.word	0
	.word	40
	.word	1009
	.word	1
	.word	40
	.word	1009
	.word	2
	.word	40
	.word	1009
	.word	3
	.word	40
	.globl	sPlayerDataMenuControlsText
	.align 32
sPlayerDataMenuControlsText:
	.word	958
	.word	0
	.word	28
	.word	1010
	.word	0
	.word	22
	.word	1011
	.word	0
	.word	26
	.word	1012
	.word	0
	.word	26
	.word	1013
	.word	0
	.word	26
	.word	1014
	.word	0
	.word	28
	.globl	sPlayerDataMenuTitleText
	.align 32
sPlayerDataMenuTitleText:
	.word	957
	.word	4
	.word	51
	.word	1005
	.word	4
	.word	34
	.word	1006
	.word	4
	.word	38
	.word	1007
	.word	4
	.word	28
	.word	1008
	.word	4
	.word	30
	.word	1009
	.word	4
	.word	28
	.globl	sDeleteScreenOptionsText
	.align 32
sDeleteScreenOptionsText:
	.word	951
	.word	0
	.word	16
	.word	951
	.word	1
	.word	16
	.word	985
	.word	0
	.word	16
	.word	985
	.word	1
	.word	16
	.word	986
	.word	0
	.word	16
	.word	986
	.word	1
	.word	16
	.word	987
	.word	0
	.word	16
	.word	987
	.word	1
	.word	16
	.word	988
	.word	0
	.word	16
	.word	988
	.word	1
	.word	16
	.word	989
	.word	0
	.word	16
	.word	989
	.word	1
	.word	16
	.globl	sDeleteScreenControlsText
	.align 32
sDeleteScreenControlsText:
	.word	958
	.word	0
	.word	28
	.word	1010
	.word	0
	.word	22
	.word	1011
	.word	0
	.word	26
	.word	1012
	.word	0
	.word	26
	.word	1013
	.word	0
	.word	26
	.word	1014
	.word	0
	.word	28
	.globl	sDeleteScreenAbsoluteConfirmTitleText
	.align 32
sDeleteScreenAbsoluteConfirmTitleText:
	.word	951
	.word	3
	.word	39
	.word	985
	.word	3
	.word	38
	.word	986
	.word	3
	.word	44
	.word	987
	.word	3
	.word	42
	.word	988
	.word	3
	.word	63
	.word	989
	.word	3
	.word	22
	.globl	sDeleteScreenConfirmTitleText
	.align 32
sDeleteScreenConfirmTitleText:
	.word	951
	.word	2
	.word	54
	.word	985
	.word	2
	.word	46
	.word	986
	.word	2
	.word	48
	.word	987
	.word	2
	.word	80
	.word	988
	.word	2
	.word	68
	.word	989
	.word	2
	.word	60
	.globl	sLanguageScreenOptionsText
	.align 32
sLanguageScreenOptionsText:
	.word	953
	.word	0
	.word	40
	.word	953
	.word	1
	.word	40
	.word	953
	.word	2
	.word	40
	.word	953
	.word	3
	.word	40
	.word	953
	.word	4
	.word	40
	.word	953
	.word	5
	.word	40
	.globl	sLanguageScreenNewControlsText
	.align 32
sLanguageScreenNewControlsText:
	.word	953
	.word	13
	.word	26
	.word	995
	.word	1
	.word	20
	.word	995
	.word	1
	.word	20
	.word	995
	.word	1
	.word	20
	.word	995
	.word	1
	.word	20
	.word	995
	.word	1
	.word	20
	.globl	sLanguageScreenEditControlsText
	.align 32
sLanguageScreenEditControlsText:
	.word	958
	.word	0
	.word	28
	.word	1010
	.word	0
	.word	22
	.word	1011
	.word	0
	.word	26
	.word	1012
	.word	0
	.word	26
	.word	1013
	.word	0
	.word	26
	.word	1014
	.word	0
	.word	28
	.globl	sLanguageScreenTitles
	.align 32
sLanguageScreenTitles:
	.word	953
	.word	6
	.word	45
	.word	995
	.word	0
	.word	50
	.word	996
	.word	0
	.word	46
	.word	997
	.word	0
	.word	60
	.word	998
	.word	0
	.word	38
	.word	999
	.word	0
	.word	46
	.globl	sButtonConfigActionsText
	.align 32
sButtonConfigActionsText:
	.word	950
	.word	0
	.word	18
	.word	950
	.word	1
	.word	18
	.word	950
	.word	2
	.word	18
	.word	980
	.word	0
	.word	18
	.word	980
	.word	1
	.word	18
	.word	980
	.word	2
	.word	18
	.word	981
	.word	0
	.word	18
	.word	981
	.word	1
	.word	18
	.word	981
	.word	2
	.word	18
	.word	982
	.word	0
	.word	18
	.word	982
	.word	1
	.word	18
	.word	982
	.word	2
	.word	18
	.word	983
	.word	0
	.word	18
	.word	983
	.word	1
	.word	18
	.word	983
	.word	2
	.word	18
	.word	984
	.word	0
	.word	18
	.word	984
	.word	1
	.word	18
	.word	984
	.word	2
	.word	18
	.globl	sButtonConfigButtonIcons
	.align 16
sButtonConfigButtonIcons:
	.word	950
	.word	4
	.word	12
	.word	950
	.word	5
	.word	12
	.word	950
	.word	6
	.word	12
	.globl	sButtonConfigTitleAndControlsText
	.align 32
sButtonConfigTitleAndControlsText:
	.word	950
	.word	3
	.word	51
	.word	958
	.word	0
	.word	28
	.word	950
	.word	10
	.word	14
	.word	980
	.word	3
	.word	38
	.word	1010
	.word	0
	.word	22
	.word	980
	.word	4
	.word	17
	.word	981
	.word	3
	.word	38
	.word	1011
	.word	0
	.word	26
	.word	981
	.word	4
	.word	17
	.word	982
	.word	3
	.word	44
	.word	1012
	.word	0
	.word	26
	.word	982
	.word	4
	.word	17
	.word	983
	.word	3
	.word	40
	.word	1013
	.word	0
	.word	26
	.word	983
	.word	4
	.word	21
	.word	984
	.word	3
	.word	46
	.word	1014
	.word	0
	.word	28
	.word	984
	.word	4
	.word	15
	.globl	sTimeLimitMenuControlsText
	.align 32
sTimeLimitMenuControlsText:
	.word	958
	.word	0
	.word	28
	.word	1010
	.word	0
	.word	22
	.word	1011
	.word	0
	.word	26
	.word	1012
	.word	0
	.word	26
	.word	1013
	.word	0
	.word	26
	.word	1014
	.word	0
	.word	28
	.globl	sTimeLimitMenuTitleText
	.align 32
sTimeLimitMenuTitleText:
	.word	960
	.word	2
	.word	42
	.word	1020
	.word	2
	.word	26
	.word	1021
	.word	2
	.word	24
	.word	1022
	.word	2
	.word	38
	.word	1023
	.word	2
	.word	40
	.word	1024
	.word	2
	.word	36
	.globl	sDifficultyMenuControlsText
	.align 32
sDifficultyMenuControlsText:
	.word	958
	.word	0
	.word	28
	.word	1010
	.word	0
	.word	22
	.word	1011
	.word	0
	.word	26
	.word	1012
	.word	0
	.word	26
	.word	1013
	.word	0
	.word	26
	.word	1014
	.word	0
	.word	28
	.globl	sDifficultyMenuTitleText
	.align 32
sDifficultyMenuTitleText:
	.word	952
	.word	2
	.word	42
	.word	990
	.word	2
	.word	28
	.word	991
	.word	2
	.word	50
	.word	992
	.word	2
	.word	28
	.word	993
	.word	2
	.word	28
	.word	994
	.word	2
	.word	45
	.globl	sOptionsScreenSelectedLanguageText
	.align 32
sOptionsScreenSelectedLanguageText:
	.word	953
	.word	7
	.word	16
	.word	953
	.word	8
	.word	16
	.word	953
	.word	9
	.word	16
	.word	953
	.word	10
	.word	16
	.word	953
	.word	11
	.word	16
	.word	953
	.word	12
	.word	16
	.globl	sTimeLimitMenuSwitchText
	.align 32
sTimeLimitMenuSwitchText:
	.word	960
	.word	0
	.word	16
	.word	960
	.word	1
	.word	16
	.word	1020
	.word	0
	.word	16
	.word	1020
	.word	1
	.word	16
	.word	1021
	.word	0
	.word	16
	.word	1021
	.word	1
	.word	16
	.word	1022
	.word	0
	.word	16
	.word	1022
	.word	1
	.word	16
	.word	1023
	.word	0
	.word	16
	.word	1023
	.word	1
	.word	16
	.word	1024
	.word	0
	.word	16
	.word	1024
	.word	1
	.word	16
	.globl	sDifficultyLevelSwitchText
	.align 32
sDifficultyLevelSwitchText:
	.word	952
	.word	0
	.word	16
	.word	952
	.word	1
	.word	16
	.word	990
	.word	0
	.word	16
	.word	990
	.word	1
	.word	16
	.word	991
	.word	0
	.word	16
	.word	991
	.word	1
	.word	16
	.word	992
	.word	0
	.word	16
	.word	992
	.word	1
	.word	16
	.word	993
	.word	0
	.word	16
	.word	993
	.word	1
	.word	16
	.word	994
	.word	0
	.word	16
	.word	994
	.word	1
	.word	16
	.globl	sOptionsScreenMenuItemsText
	.align 32
sOptionsScreenMenuItemsText:
	.word	956
	.word	0
	.word	50
	.word	956
	.word	1
	.word	50
	.word	956
	.word	2
	.word	50
	.word	956
	.word	3
	.word	50
	.word	956
	.word	4
	.word	50
	.word	956
	.word	6
	.word	50
	.word	956
	.word	5
	.word	50
	.word	956
	.word	7
	.word	50
	.word	975
	.word	0
	.word	50
	.word	975
	.word	1
	.word	50
	.word	975
	.word	2
	.word	50
	.word	975
	.word	3
	.word	50
	.word	975
	.word	4
	.word	50
	.word	975
	.word	6
	.word	50
	.word	975
	.word	5
	.word	50
	.word	975
	.word	7
	.word	50
	.word	976
	.word	0
	.word	50
	.word	976
	.word	1
	.word	50
	.word	976
	.word	2
	.word	50
	.word	976
	.word	3
	.word	50
	.word	976
	.word	4
	.word	50
	.word	976
	.word	6
	.word	50
	.word	976
	.word	5
	.word	50
	.word	976
	.word	7
	.word	50
	.word	977
	.word	0
	.word	50
	.word	977
	.word	1
	.word	50
	.word	977
	.word	2
	.word	50
	.word	977
	.word	3
	.word	50
	.word	977
	.word	4
	.word	50
	.word	977
	.word	6
	.word	50
	.word	977
	.word	5
	.word	50
	.word	977
	.word	7
	.word	50
	.word	978
	.word	0
	.word	50
	.word	978
	.word	1
	.word	50
	.word	978
	.word	2
	.word	50
	.word	978
	.word	3
	.word	50
	.word	978
	.word	4
	.word	50
	.word	978
	.word	6
	.word	50
	.word	978
	.word	5
	.word	50
	.word	978
	.word	7
	.word	50
	.word	979
	.word	0
	.word	50
	.word	979
	.word	1
	.word	50
	.word	979
	.word	2
	.word	50
	.word	979
	.word	3
	.word	50
	.word	979
	.word	4
	.word	50
	.word	979
	.word	6
	.word	50
	.word	979
	.word	5
	.word	50
	.word	979
	.word	7
	.word	50
	.globl	sOptionsScreenTitleText
	.align 32
sOptionsScreenTitleText:
	.word	956
	.word	8
	.word	39
	.word	975
	.word	8
	.word	26
	.word	976
	.word	8
	.word	30
	.word	977
	.word	8
	.word	24
	.word	978
	.word	8
	.word	30
	.word	979
	.word	8
	.word	24
	.globl	gUnknown_080D95D6
	.align 16
gUnknown_080D95D6:
	.word	11
	.word	242
	.word	22
	.word	247
	.word	33
	.word	252
	.word	55
	.word	257
	.globl	gUnknown_080D95D2
	.align 2
gUnknown_080D95D2:
	.word	55
	.word	262
	.globl	gUnknown_080D95C8
	.align 8
gUnknown_080D95C8:
	.word	11
	.word	22
	.word	33
	.word	55
	.word	-1
	.globl	gUnknown_080D95C4
	.align 2
gUnknown_080D95C4:
	.word	55
	.word	-1
	.globl	gUnknown_080D95A4
	.align 32
gUnknown_080D95A4:
	.word	17
	.word	19
	.word	39
	.word	41
	.word	61
	.word	63
	.word	75
	.word	76
	.word	77
	.word	109
	.word	142
	.word	174
	.word	175
	.word	208
	.word	241
	.word	-1
	.align 16
sTimeRecordsCharacterAssets:
	.word	140
	.word	141
	.word	148
	.word	149
	.word	142
	.word	143
	.word	144
	.word	145
	.word	146
	.word	147
	.align 32
sSubMenuCloseAnim:
	.word	-216
	.word	-201
	.word	-186
	.word	-171
	.word	-156
	.word	-141
	.word	-126
	.word	-111
	.word	-96
	.word	-81
	.word	-66
	.word	-51
	.word	-36
	.word	-21
	.word	-6
	.word	0
	.align 32
sSubMenuOpenAnim:
	.word	-16
	.word	-41
	.word	-66
	.word	-91
	.word	-116
	.word	-141
	.word	-166
	.word	-186
	.word	-201
	.word	-216
	.word	-228
	.word	-219
	.word	-210
	.word	-214
	.word	-217
	.word	-216
	.align 16
sMenuCursorMoveAnims:
	.ascii "\10\4\1\377\376\377\1\0"
	.ascii "\1\2\5\7\10\10\10\10"
	.globl	gProfileScreenSubMenuNextVramAddress
	.bss
	.align 8
gProfileScreenSubMenuNextVramAddress:
	.space 8
	.globl	gProfileScreenNextVramAddress
	.align 8
gProfileScreenNextVramAddress:
	.space 8
	.section .rdata,"dr"
	.align 8
.LC0:
	.word	0
	.word	1
	.word	0
	.word	256
	.align 8
.LC9:
	.word	0
	.word	-3
	.word	0
	.word	0
	.align 8
.LC10:
	.word	0
	.word	2
	.word	0
	.word	256
	.align 16
.LC13:
	.word	0
	.word	0
	.word	-168
	.word	0
	.word	-168
	.word	16
	.word	0
	.word	0
	.align 4
.LC14:
	.byte	0
	.byte	0
	.byte	-1
	.byte	64
	.align 8
.LC17:
	.word	-216
	.word	-3
	.word	0
	.word	0
	.align 8
.LC18:
	.word	-240
	.word	0
	.word	-240
	.word	16
	.align 16
.LC22:
	.word	0
	.word	0
	.word	139
	.word	0
	.word	0
	.word	0
	.word	0
	.word	30
	.align 16
.LC29:
	.word	0
	.word	0
	.word	134
	.word	0
	.word	0
	.word	0
	.word	0
	.word	30
	.align 16
.LC33:
	.word	0
	.word	0
	.word	135
	.word	0
	.word	0
	.word	0
	.word	0
	.word	30
	.align 16
.LC34:
	.word	0
	.word	0
	.word	137
	.word	0
	.word	0
	.word	0
	.word	0
	.word	30
	.align 16
.LC35:
	.word	0
	.word	0
	.word	136
	.word	0
	.word	0
	.word	0
	.word	0
	.word	22
	.align 16
.LC40:
	.word	0
	.word	0
	.word	138
	.word	0
	.word	0
	.word	0
	.word	0
	.word	30
	.align 16
.LC44:
	.word	0
	.word	0
	.word	152
	.word	0
	.word	0
	.word	0
	.word	0
	.word	30
	.align 16
.LC46:
	.word	0
	.word	0
	.word	133
	.word	0
	.word	0
	.word	0
	.word	0
	.word	30
	.ident	"GCC: (GNU) 13-win32"
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	UpdateScreenFade;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	Random;	.scl	2;	.type	32;	.endef
	.def	SeedRng;	.scl	2;	.type	32;	.endef
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.def	CreateSoundTestScreen;	.scl	2;	.type	32;	.endef
	.def	NewSaveGame;	.scl	2;	.type	32;	.endef
	.def	WriteSaveGame;	.scl	2;	.type	32;	.endef
	.def	TasksDestroyInPriorityRange;	.scl	2;	.type	32;	.endef
	.def	CreateTitleScreen;	.scl	2;	.type	32;	.endef
	.def	CreateMultiplayerModeSelectScreen;	.scl	2;	.type	32;	.endef
	.def	EwramFree;	.scl	2;	.type	32;	.endef
	.def	CreateTitleScreenAtSinglePlayerMenu;	.scl	2;	.type	32;	.endef
	.def	DrawBackground;	.scl	2;	.type	32;	.endef
	.def	GameStageStart;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	EwramMalloc;	.scl	2;	.type	32;	.endef
	.def	CreateCharacterSelectionScreen;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gKeysContinuedRepeatIntervals, "dr"
	.globl	.refptr.gKeysContinuedRepeatIntervals
	.linkonce	discard
.refptr.gKeysContinuedRepeatIntervals:
	.quad	gKeysContinuedRepeatIntervals
	.section	.rdata$.refptr.gKeysFirstRepeatIntervals, "dr"
	.globl	.refptr.gKeysFirstRepeatIntervals
	.linkonce	discard
.refptr.gKeysFirstRepeatIntervals:
	.quad	gKeysFirstRepeatIntervals
	.section	.rdata$.refptr.gMillisUnpackTable, "dr"
	.globl	.refptr.gMillisUnpackTable
	.linkonce	discard
.refptr.gMillisUnpackTable:
	.quad	gMillisUnpackTable
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
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
	.section	.rdata$.refptr.gBgSpritesCount, "dr"
	.globl	.refptr.gBgSpritesCount
	.linkonce	discard
.refptr.gBgSpritesCount:
	.quad	gBgSpritesCount
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
	.section	.rdata$.refptr.gLoadedSaveGame, "dr"
	.globl	.refptr.gLoadedSaveGame
	.linkonce	discard
.refptr.gLoadedSaveGame:
	.quad	gLoadedSaveGame
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
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
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
	.section	.rdata$.refptr.gBgScrollRegs, "dr"
	.globl	.refptr.gBgScrollRegs
	.linkonce	discard
.refptr.gBgScrollRegs:
	.quad	gBgScrollRegs
	.section	.rdata$.refptr.gPressedKeys, "dr"
	.globl	.refptr.gPressedKeys
	.linkonce	discard
.refptr.gPressedKeys:
	.quad	gPressedKeys
	.section	.rdata$.refptr.gRepeatedKeys, "dr"
	.globl	.refptr.gRepeatedKeys
	.linkonce	discard
.refptr.gRepeatedKeys:
	.quad	gRepeatedKeys
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
