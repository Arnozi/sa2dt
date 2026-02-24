	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	DestroyUI;	.scl	3;	.type	32;	.endef
	.seh_proc	DestroyUI
DestroyUI:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rsi, rcx
	mov	rcx, QWORD PTR 216[rcx]
	test	rcx, rcx
	je	.L2
	call	VramFree
	mov	QWORD PTR 216[rsi], 0
.L2:
	lea	rbx, 280[rsi]
	lea	rdi, 792[rsi]
	.p2align 4,,10
	.p2align 3
.L4:
	mov	rcx, QWORD PTR [rbx]
	test	rcx, rcx
	je	.L3
	call	VramFree
	mov	QWORD PTR [rbx], 0
.L3:
	add	rbx, 64
	cmp	rbx, rdi
	jne	.L4
	mov	rcx, QWORD PTR 792[rsi]
	test	rcx, rcx
	je	.L5
	call	VramFree
	mov	QWORD PTR 792[rsi], 0
.L5:
	mov	rcx, QWORD PTR 856[rsi]
	test	rcx, rcx
	je	.L6
	call	VramFree
	mov	QWORD PTR 856[rsi], 0
.L6:
	mov	rcx, QWORD PTR 920[rsi]
	test	rcx, rcx
	je	.L7
	call	VramFree
	mov	QWORD PTR 920[rsi], 0
.L7:
	mov	rcx, QWORD PTR 984[rsi]
	test	rcx, rcx
	je	.L8
	call	VramFree
	mov	QWORD PTR 984[rsi], 0
.L8:
	mov	rcx, QWORD PTR 1048[rsi]
	test	rcx, rcx
	je	.L1
	call	VramFree
	mov	QWORD PTR 1048[rsi], 0
.L1:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.def	CourseSelectionScreenOnDestroy;	.scl	3;	.type	32;	.endef
	.seh_proc	CourseSelectionScreenOnDestroy
CourseSelectionScreenOnDestroy:
	.seh_endprologue
	mov	rcx, QWORD PTR 24[rcx]
	jmp	DestroyUI
	.seh_endproc
	.p2align 4
	.def	RenderUI;	.scl	3;	.type	32;	.endef
	.seh_proc	RenderUI
RenderUI:
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
	mov	r13, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rax, QWORD PTR 0[r13]
	cmp	BYTE PTR 6[rax], 1
	mov	eax, DWORD PTR 1620[rcx]
	setg	sil
	sub	eax, DWORD PTR 1616[rcx]
	sar	eax, 8
	mov	rbx, rcx
	lea	rcx, 208[rcx]
	add	eax, 5
	mov	WORD PTR 38[rcx], ax
	mov	eax, DWORD PTR 1416[rcx]
	sar	eax, 8
	add	eax, 6
	mov	WORD PTR 40[rcx], ax
	call	DisplaySprite
	movzx	eax, BYTE PTR 1631[rbx]
	cmp	al, 13
	jbe	.L42
.L35:
	lea	rdx, sZoneTypeAssets[rip]
	mov	BYTE PTR 961[rbx], -1
	lea	rdi, 912[rbx]
	movzx	esi, sil
	movzx	ecx, WORD PTR [rdx+rax*4]
	movzx	eax, WORD PTR 2[rdx+rax*4]
	sal	esi, 4
	mov	WORD PTR 930[rbx], cx
	mov	rcx, rdi
	mov	BYTE PTR 960[rbx], al
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	lea	rdi, 976[rbx]
	call	DisplaySprite
	movzx	eax, BYTE PTR 1631[rbx]
	lea	rdx, sZoneNameAssets[rip]
	mov	BYTE PTR 1025[rbx], -1
	add	eax, esi
	cdqe
	movzx	ecx, WORD PTR [rdx+rax*4]
	movzx	eax, WORD PTR 2[rdx+rax*4]
	mov	WORD PTR 994[rbx], cx
	mov	rcx, rdi
	mov	BYTE PTR 1024[rbx], al
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	call	DisplaySprite
	lea	rcx, 1040[rbx]
	call	DisplaySprite
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 2
	ja	.L34
	mov	r14, QWORD PTR .refptr.gSelectedCharacter[rip]
	lea	r12, 1168[rbx]
	mov	ebp, 129
	xor	esi, esi
	add	rbx, 1104
	.p2align 4,,10
	.p2align 3
.L39:
	mov	rdx, QWORD PTR 0[r13]
	movsx	rax, BYTE PTR [r14]
	mov	rdi, rbx
	movzx	eax, BYTE PTR 12[rdx+rax]
	bt	eax, esi
	cmovc	rdi, r12
	add	esi, 1
	add	r12, 64
	mov	WORD PTR 38[rdi], bp
	mov	rcx, rdi
	add	ebp, 24
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	call	DisplaySprite
	cmp	esi, 7
	jne	.L39
.L34:
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
.L42:
	mov	edx, 758
	shr	al
	mov	BYTE PTR 833[rbx], -1
	lea	rdi, 784[rbx]
	mov	WORD PTR 802[rbx], dx
	mov	rcx, rdi
	mov	BYTE PTR 832[rbx], al
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	lea	rdi, 848[rbx]
	call	DisplaySprite
	movzx	eax, BYTE PTR 1631[rbx]
	mov	ecx, 758
	mov	BYTE PTR 897[rbx], -1
	mov	WORD PTR 866[rbx], cx
	mov	rcx, rdi
	and	eax, 1
	mov	BYTE PTR 896[rbx], al
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	call	DisplaySprite
	movzx	eax, BYTE PTR 1631[rbx]
	jmp	.L35
	.seh_endproc
	.p2align 4
	.def	RenderZoneMapPathsAndUI;	.scl	3;	.type	32;	.endef
	.seh_proc	RenderZoneMapPathsAndUI
RenderZoneMapPathsAndUI:
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
	cmp	BYTE PTR 1630[rcx], 0
	mov	rbp, rcx
	je	.L44
	lea	r12, sZoneMapPathPositions[rip]
	lea	rdi, 272[rcx]
	xor	ebx, ebx
	lea	rsi, 2[r12]
	.p2align 4,,10
	.p2align 3
.L45:
	movzx	eax, WORD PTR [rsi+rbx*4]
	movzx	edx, WORD PTR [r12+rbx*4]
	mov	rcx, rdi
	add	rbx, 1
	sub	dx, WORD PTR 1617[rbp]
	movzx	edx, dx
	sal	eax, 16
	or	eax, edx
	mov	DWORD PTR 38[rdi], eax
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	add	rdi, 64
	call	DisplaySprite
	cmp	bl, BYTE PTR 1630[rbp]
	jb	.L45
.L44:
	mov	rcx, rbp
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	RenderUI
	.seh_endproc
	.p2align 4
	.def	Task_FadeInIntro;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_FadeInIntro
Task_FadeInIntro:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	edx, 109056
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	add	DWORD PTR 1616[rbx], 768
	mov	eax, DWORD PTR 1616[rbx]
	mov	rcx, rbx
	cmp	eax, edx
	cmovg	eax, edx
	xor	edx, edx
	test	eax, eax
	cmovs	eax, edx
	mov	DWORD PTR 1616[rbx], eax
	call	UpdateScreenFade
	cmp	al, 1
	mov	eax, DWORD PTR 1616[rbx]
	je	.L61
	mov	esi, DWORD PTR 1620[rbx]
	lea	edx, -54528[rsi]
	cmp	eax, edx
	jge	.L52
.L60:
	sar	eax, 8
.L50:
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	rcx, rbx
	mov	WORD PTR [rdx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	RenderZoneMapPathsAndUI
	.p2align 4,,10
	.p2align 3
.L61:
	mov	ecx, DWORD PTR 1620[rbx]
	lea	edx, -54528[rcx]
	cmp	eax, 109056
	je	.L49
	cmp	eax, edx
	jl	.L60
.L49:
	mov	rcx, QWORD PTR [rsi]
	lea	rax, Task_CourseSelectMain[rip]
	test	BYTE PTR 1633[rbx], 4
	jne	.L62
.L51:
	mov	QWORD PTR 40[rcx], rax
.L52:
	test	edx, edx
	js	.L53
	mov	DWORD PTR 1616[rbx], edx
	sar	edx, 8
	mov	eax, edx
	jmp	.L50
	.p2align 4,,10
	.p2align 3
.L53:
	mov	DWORD PTR 1616[rbx], 0
	xor	eax, eax
	jmp	.L50
	.p2align 4,,10
	.p2align 3
.L62:
	mov	r8, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [r8], 2
	ja	.L51
	add	BYTE PTR 1631[rbx], 1
	lea	rax, Task_UnlockCutSceneScrollToNextCourseAnim[rip]
	jmp	.L51
	.seh_endproc
	.p2align 4
	.def	Task_CourseSelectMain;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_CourseSelectMain
Task_CourseSelectMain:
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
	mov	rsi, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR [rdi]
	movzx	r8d, BYTE PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	cmp	r8b, 2
	jbe	.L64
	mov	rax, QWORD PTR .refptr.gMultiplayerConnections[rip]
	mov	r11, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	xor	ecx, ecx
	mov	r9d, 1
	movzx	ebp, BYTE PTR [rax]
	mov	r10d, DWORD PTR [r11]
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
	mov	edx, ebp
	and	edx, 1
	je	.L72
.L73:
	mov	edx, r9d
	sal	edx, cl
	test	edx, r10d
	jne	.L70
	movzx	edx, BYTE PTR [rax]
	lea	r12d, 1[rdx]
	mov	BYTE PTR [rax], r12b
	cmp	dl, -76
	ja	.L129
.L71:
	add	ecx, 1
	cmp	ecx, 4
	je	.L72
	add	rax, 1
	bt	ebp, ecx
	jc	.L73
	.p2align 4,,10
	.p2align 3
.L72:
	movzx	eax, WORD PTR 1014[rbx]
	and	r10d, 128
	lea	edx, -16[rax]
	jne	.L130
	mov	r8, QWORD PTR .refptr.gMultiSioRecv[rip]
	movzx	esi, WORD PTR [r8]
	cmp	si, 16463
	ja	.L131
	mov	WORD PTR 1014[rbx], dx
	cmp	dx, 265
	jg	.L128
	mov	r10d, 266
	mov	WORD PTR 1014[rbx], r10w
.L128:
	mov	rdx, QWORD PTR .refptr.gMultiSioSend[rip]
	movzx	r8d, BYTE PTR 1631[rbx]
	mov	r9d, 16464
	mov	eax, DWORD PTR 1620[rbx]
	mov	ecx, DWORD PTR 1624[rbx]
	mov	BYTE PTR 2[rdx], r8b
	mov	r8d, eax
	mov	WORD PTR [rdx], r9w
	sar	r8d, 8
	mov	BYTE PTR 3[rdx], ch
	mov	WORD PTR 4[rdx], r8w
	sub	eax, 54528
	jns	.L132
	.p2align 4,,10
	.p2align 3
.L97:
	xor	eax, eax
	xor	edx, edx
	jmp	.L94
	.p2align 4,,10
	.p2align 3
.L70:
	mov	BYTE PTR [rax], 0
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L64:
	sub	WORD PTR 1014[rbx], 16
	movzx	eax, WORD PTR 1014[rbx]
	mov	edx, 266
	cmp	ax, dx
	cmovl	eax, edx
	cmp	BYTE PTR 1636[rbx], 0
	mov	WORD PTR 1014[rbx], ax
	mov	rax, QWORD PTR .refptr.gInput[rip]
	je	.L69
.L127:
	mov	rax, QWORD PTR .LC0[rip]
	mov	DWORD PTR 8[rbx], 255
	mov	ecx, 106
	mov	QWORD PTR [rbx], rax
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rdi]
	lea	rcx, Task_FadeOutAndExitToSelectedLevel[rip]
	mov	QWORD PTR 40[rax], rcx
	movzx	r8d, BYTE PTR [rsi]
.L79:
	mov	eax, DWORD PTR 1620[rbx]
	cmp	r8b, 2
	ja	.L133
.L77:
	sub	eax, 54528
	js	.L97
.L132:
	cmp	eax, 109056
	jg	.L98
	mov	edx, eax
	sar	edx, 8
.L94:
	mov	DWORD PTR 1616[rbx], eax
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	rcx, rbx
	mov	WORD PTR [rax], dx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	RenderZoneMapPathsAndUI
	.p2align 4,,10
	.p2align 3
.L130:
	mov	eax, 266
	cmp	dx, ax
	cmovl	edx, eax
	mov	rax, QWORD PTR .refptr.gInput[rip]
	cmp	BYTE PTR 1636[rbx], 0
	mov	WORD PTR 1014[rbx], dx
	movzx	edx, WORD PTR [rax]
	jne	.L78
.L69:
	movzx	eax, WORD PTR [rax]
	test	al, 32
	jne	.L134
	test	al, 16
	je	.L85
	movzx	eax, BYTE PTR 1631[rbx]
	cmp	al, BYTE PTR 1632[rbx]
	jnb	.L79
	cmp	al, 13
	ja	.L100
	test	al, 1
	je	.L86
.L100:
	mov	ebp, 426
	mov	WORD PTR 1014[rbx], bp
.L86:
	add	eax, 1
	mov	BYTE PTR 1634[rbx], 0
	mov	ecx, 213
	mov	BYTE PTR 1631[rbx], al
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rdi]
	lea	rcx, Task_ScrollToNextLevelAnim[rip]
	mov	QWORD PTR 40[rax], rcx
	movzx	r8d, BYTE PTR [rsi]
	jmp	.L79
	.p2align 4,,10
	.p2align 3
.L78:
	and	edx, 48
	je	.L135
.L126:
	mov	eax, DWORD PTR 1620[rbx]
.L96:
	mov	rdx, QWORD PTR .refptr.gMultiSioRecv[rip]
	mov	r8d, DWORD PTR [r11]
	movzx	r9d, BYTE PTR 1631[rbx]
	mov	r10d, DWORD PTR 1624[rbx]
	movzx	esi, WORD PTR [rdx]
	and	r8d, 128
.L91:
	mov	rdx, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	r11d, 16464
	mov	ecx, r10d
	mov	BYTE PTR 2[rdx], r9b
	mov	r9d, eax
	sar	r9d, 8
	mov	WORD PTR [rdx], r11w
	mov	WORD PTR 4[rdx], r9w
	mov	BYTE PTR 3[rdx], ch
	test	r8d, r8d
	je	.L75
	mov	r8, QWORD PTR .refptr.gPressedKeys[rip]
	test	BYTE PTR [r8], 1
	jne	.L93
	cmp	BYTE PTR 1636[rbx], 0
	je	.L75
.L93:
	mov	r8, QWORD PTR .refptr.gRepeatedKeys[rip]
	test	BYTE PTR [r8], 48
	jne	.L75
	mov	ecx, 16465
	mov	BYTE PTR 1636[rbx], 1
	mov	WORD PTR [rdx], cx
.L75:
	cmp	si, 16465
	jne	.L77
	mov	rax, QWORD PTR .LC0[rip]
	lea	rsi, Task_FadeOutAndExitToSelectedMultiplayerLevel[rip]
	mov	ecx, 106
	mov	DWORD PTR 8[rbx], 255
	mov	QWORD PTR [rbx], rax
	mov	rax, QWORD PTR [rdi]
	mov	QWORD PTR 40[rax], rsi
	call	m4aSongNumStart
	mov	eax, DWORD PTR 1620[rbx]
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L134:
	movzx	eax, BYTE PTR 1631[rbx]
	test	al, al
	je	.L79
	cmp	al, 13
	ja	.L99
	test	al, 1
	jne	.L83
.L99:
	mov	r12d, 426
	mov	WORD PTR 1014[rbx], r12w
.L83:
	sub	eax, 1
	mov	BYTE PTR 1634[rbx], 0
	mov	ecx, 213
	mov	BYTE PTR 1631[rbx], al
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rdi]
	lea	rcx, Task_ScrollToPreviousLevelAnim[rip]
	mov	QWORD PTR 40[rax], rcx
	movzx	r8d, BYTE PTR [rsi]
	jmp	.L79
	.p2align 4,,10
	.p2align 3
.L135:
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	test	BYTE PTR [rax], 1
	je	.L126
.L89:
	cmp	r8b, 3
	jbe	.L90
	mov	rdx, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	movzx	r9d, BYTE PTR 1631[rbx]
	mov	eax, DWORD PTR 1620[rbx]
	mov	r10d, DWORD PTR 1624[rbx]
	mov	r8d, DWORD PTR [rdx]
	mov	rdx, QWORD PTR .refptr.gMultiSioRecv[rip]
	and	r8d, 128
	movzx	esi, WORD PTR [rdx]
	jmp	.L91
	.p2align 4,,10
	.p2align 3
.L131:
	movzx	r10d, BYTE PTR 2[r8]
	movzx	eax, WORD PTR 4[r8]
	mov	r9d, 266
	mov	r11d, 16464
	movzx	r8d, BYTE PTR 3[r8]
	sal	eax, 8
	mov	BYTE PTR 1631[rbx], r10b
	sal	r8d, 8
	cmp	dx, r9w
	mov	DWORD PTR 1620[rbx], eax
	cmovge	r9d, edx
	mov	rdx, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	ecx, r8d
	mov	DWORD PTR 1624[rbx], r8d
	mov	WORD PTR 1014[rbx], r9w
	mov	r9d, eax
	sar	r9d, 8
	mov	WORD PTR [rdx], r11w
	mov	BYTE PTR 2[rdx], r10b
	mov	WORD PTR 4[rdx], r9w
	mov	BYTE PTR 3[rdx], ch
	jmp	.L75
	.p2align 4,,10
	.p2align 3
.L98:
	mov	eax, 109056
	mov	edx, 426
	jmp	.L94
	.p2align 4,,10
	.p2align 3
.L133:
	mov	r11, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	jmp	.L96
	.p2align 4,,10
	.p2align 3
.L85:
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	movzx	eax, WORD PTR [rax]
	test	al, 1
	je	.L88
	cmp	r8b, 2
	jbe	.L127
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L88:
	test	al, 2
	je	.L79
	cmp	r8b, 2
	ja	.L79
	mov	rax, QWORD PTR .LC0[rip]
	mov	DWORD PTR 8[rbx], 255
	mov	ecx, 107
	mov	QWORD PTR [rbx], rax
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rdi]
	lea	rcx, Task_FadeOutAndExitToCharacterSelect[rip]
	mov	QWORD PTR 40[rax], rcx
	movzx	r8d, BYTE PTR [rsi]
	jmp	.L79
	.p2align 4,,10
	.p2align 3
.L90:
	mov	rax, QWORD PTR .LC0[rip]
	mov	DWORD PTR 8[rbx], 255
	mov	ecx, 106
	mov	QWORD PTR [rbx], rax
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rdi]
	lea	rcx, Task_FadeOutAndExitToSelectedMultiplayerLevel[rip]
	mov	QWORD PTR 40[rax], rcx
	movzx	r8d, BYTE PTR [rsi]
	jmp	.L79
	.p2align 4,,10
	.p2align 3
.L129:
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
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	LinkCommunicationError
	.seh_endproc
	.p2align 4
	.def	Task_FadeOutAndExitToSelectedMultiplayerLevel;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_FadeOutAndExitToSelectedMultiplayerLevel
Task_FadeOutAndExitToSelectedMultiplayerLevel:
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
	cmp	al, 1
	je	.L138
	mov	eax, DWORD PTR 1616[rbx]
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	rcx, rbx
	sar	eax, 8
	mov	WORD PTR [rdx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	RenderZoneMapPathsAndUI
	.p2align 4,,10
	.p2align 3
.L138:
	mov	rcx, rbx
	call	DestroyUI
	movzx	eax, BYTE PTR 1631[rbx]
	lea	rdx, sCourseIndexToLevelIndex[rip]
	movzx	edx, BYTE PTR [rdx+rax]
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	BYTE PTR [rax], dl
	call	GameStageStart
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.def	Task_FadeOutAndExitToCharacterSelect;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_FadeOutAndExitToCharacterSelect
Task_FadeOutAndExitToCharacterSelect:
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
	cmp	al, 1
	je	.L141
	mov	eax, DWORD PTR 1616[rbx]
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	rcx, rbx
	sar	eax, 8
	mov	WORD PTR [rdx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	RenderZoneMapPathsAndUI
	.p2align 4,,10
	.p2align 3
.L141:
	mov	rcx, rbx
	call	DestroyUI
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rax, QWORD PTR [rax]
	movzx	edx, BYTE PTR 19[rax]
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	movzx	ecx, BYTE PTR [rax]
	and	edx, 16
	call	CreateCharacterSelectionScreen
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.def	Task_ScrollToNextLevelAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_ScrollToNextLevelAnim
Task_ScrollToNextLevelAnim:
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
	mov	rsi, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR [rdi]
	movzx	edx, BYTE PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	cmp	dl, 2
	jbe	.L146
	mov	rax, QWORD PTR .refptr.gMultiplayerConnections[rip]
	movzx	r11d, BYTE PTR [rax]
	test	r11b, 1
	je	.L146
	mov	rax, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	xor	ecx, ecx
	mov	r9d, 1
	mov	r10d, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
.L149:
	mov	r8d, r9d
	sal	r8d, cl
	test	r8d, r10d
	jne	.L147
	movzx	r8d, BYTE PTR [rax]
	lea	ebp, 1[r8]
	mov	BYTE PTR [rax], bpl
	cmp	r8b, -76
	ja	.L165
.L148:
	add	ecx, 1
	cmp	ecx, 4
	je	.L146
	add	rax, 1
	bt	r11d, ecx
	jc	.L149
	.p2align 4,,10
	.p2align 3
.L146:
	sub	WORD PTR 1014[rbx], 16
	movzx	eax, WORD PTR 1014[rbx]
	mov	ecx, 266
	movzx	r8d, BYTE PTR 1631[rbx]
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	movq	xmm1, QWORD PTR 1620[rbx]
	cmp	ax, cx
	cmovl	eax, ecx
	mov	WORD PTR 1014[rbx], ax
	lea	rax, sZoneMapPathForwardAngles[rip]
	movzx	ecx, WORD PTR [rax+r8*2]
	lea	eax, 256[rcx]
	cdqe
	movzx	eax, WORD PTR [r9+rax*2]
	sar	ax, 5
	cwde
	movd	xmm0, eax
	movzx	eax, WORD PTR [r9+rcx*2]
	lea	r9, sZoneMapCameraTargets[rip]
	movsx	ecx, WORD PTR [r9+r8*4]
	sar	ax, 5
	cwde
	sal	ecx, 8
	movd	xmm2, eax
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	movq	QWORD PTR 1620[rbx], xmm0
	movd	eax, xmm0
	cmp	ecx, eax
	jl	.L166
.L145:
	mov	ecx, eax
	sub	ecx, 54528
	js	.L153
	cmp	ecx, 109056
	jg	.L154
	mov	r8d, ecx
	sar	r8d, 8
.L150:
	mov	DWORD PTR 1616[rbx], ecx
	mov	rcx, QWORD PTR .refptr.gInput[rip]
	test	BYTE PTR [rcx], 1
	je	.L151
	mov	BYTE PTR 1636[rbx], 1
.L151:
	cmp	dl, 2
	jbe	.L152
	mov	rdx, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	ecx, 16464
	sar	eax, 8
	mov	WORD PTR [rdx], cx
	movzx	ecx, WORD PTR 1625[rbx]
	mov	WORD PTR 4[rdx], ax
	movzx	eax, BYTE PTR 1631[rbx]
	mov	ah, cl
	mov	WORD PTR 2[rdx], ax
.L152:
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	rcx, rbx
	mov	WORD PTR [rax], r8w
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	RenderZoneMapPathsAndUI
	.p2align 4,,10
	.p2align 3
.L154:
	mov	ecx, 109056
	mov	r8d, 426
	jmp	.L150
	.p2align 4,,10
	.p2align 3
.L147:
	mov	BYTE PTR [rax], 0
	jmp	.L148
	.p2align 4,,10
	.p2align 3
.L153:
	xor	ecx, ecx
	xor	r8d, r8d
	jmp	.L150
	.p2align 4,,10
	.p2align 3
.L166:
	movsx	eax, WORD PTR 2[r9+r8*4]
	mov	DWORD PTR 1620[rbx], ecx
	mov	ecx, 215
	sal	eax, 8
	mov	DWORD PTR 1624[rbx], eax
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rdi]
	lea	rdi, Task_DisplayZoneNameAnim[rip]
	movzx	edx, BYTE PTR [rsi]
	mov	QWORD PTR 40[rax], rdi
	mov	eax, DWORD PTR 1620[rbx]
	jmp	.L145
	.p2align 4,,10
	.p2align 3
.L165:
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
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	LinkCommunicationError
	.seh_endproc
	.p2align 4
	.def	Task_DisplayZoneNameAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_DisplayZoneNameAnim
Task_DisplayZoneNameAnim:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	edx, 266
	mov	r8, QWORD PTR [rax]
	mov	rcx, QWORD PTR 24[r8]
	sub	WORD PTR 1014[rcx], 16
	movzx	eax, WORD PTR 1014[rcx]
	cmp	ax, dx
	cmovl	eax, edx
	mov	WORD PTR 1014[rcx], ax
	movzx	eax, BYTE PTR 1634[rcx]
	add	eax, 1
	mov	BYTE PTR 1634[rcx], al
	cmp	al, 5
	jbe	.L168
	lea	rax, Task_CourseSelectMain[rip]
	mov	QWORD PTR 40[r8], rax
.L168:
	mov	rax, QWORD PTR .refptr.gInput[rip]
	test	BYTE PTR [rax], 1
	je	.L169
	mov	BYTE PTR 1636[rcx], 1
.L169:
	mov	eax, DWORD PTR 1616[rcx]
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	sar	eax, 8
	mov	WORD PTR [rdx], ax
	jmp	RenderZoneMapPathsAndUI
	.seh_endproc
	.p2align 4
	.def	Task_ScrollToPreviousLevelAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_ScrollToPreviousLevelAnim
Task_ScrollToPreviousLevelAnim:
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
	mov	rsi, QWORD PTR .refptr.gGameMode[rip]
	mov	rax, QWORD PTR [rdi]
	movzx	edx, BYTE PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	cmp	dl, 2
	jbe	.L177
	mov	rax, QWORD PTR .refptr.gMultiplayerConnections[rip]
	movzx	r11d, BYTE PTR [rax]
	test	r11b, 1
	je	.L177
	mov	rax, QWORD PTR .refptr.gMultiSioStatusFlags[rip]
	xor	ecx, ecx
	mov	r9d, 1
	mov	r10d, DWORD PTR [rax]
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
.L180:
	mov	r8d, r9d
	sal	r8d, cl
	test	r8d, r10d
	jne	.L178
	movzx	r8d, BYTE PTR [rax]
	lea	ebp, 1[r8]
	mov	BYTE PTR [rax], bpl
	cmp	r8b, -76
	ja	.L196
.L179:
	add	ecx, 1
	cmp	ecx, 4
	je	.L177
	add	rax, 1
	bt	r11d, ecx
	jc	.L180
	.p2align 4,,10
	.p2align 3
.L177:
	sub	WORD PTR 1014[rbx], 16
	movzx	eax, WORD PTR 1014[rbx]
	mov	ecx, 266
	movzx	r8d, BYTE PTR 1631[rbx]
	mov	r9, QWORD PTR .refptr.gSineTable[rip]
	movq	xmm1, QWORD PTR 1620[rbx]
	cmp	ax, cx
	cmovl	eax, ecx
	mov	WORD PTR 1014[rbx], ax
	lea	rax, sZoneMapPathReverseAngles[rip]
	movzx	ecx, WORD PTR [rax+r8*2]
	lea	eax, 256[rcx]
	cdqe
	movzx	eax, WORD PTR [r9+rax*2]
	sar	ax, 5
	cwde
	movd	xmm0, eax
	movzx	eax, WORD PTR [r9+rcx*2]
	lea	r9, sZoneMapCameraTargets[rip]
	movsx	ecx, WORD PTR [r9+r8*4]
	sar	ax, 5
	cwde
	sal	ecx, 8
	movd	xmm2, eax
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	movq	QWORD PTR 1620[rbx], xmm0
	movd	eax, xmm0
	cmp	ecx, eax
	jg	.L197
.L176:
	mov	ecx, eax
	sub	ecx, 54528
	js	.L184
	cmp	ecx, 109056
	jg	.L185
	mov	r8d, ecx
	sar	r8d, 8
.L181:
	mov	DWORD PTR 1616[rbx], ecx
	mov	rcx, QWORD PTR .refptr.gInput[rip]
	test	BYTE PTR [rcx], 1
	je	.L182
	mov	BYTE PTR 1636[rbx], 1
.L182:
	cmp	dl, 2
	jbe	.L183
	mov	rdx, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	ecx, 16464
	sar	eax, 8
	mov	WORD PTR [rdx], cx
	movzx	ecx, WORD PTR 1625[rbx]
	mov	WORD PTR 4[rdx], ax
	movzx	eax, BYTE PTR 1631[rbx]
	mov	ah, cl
	mov	WORD PTR 2[rdx], ax
.L183:
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	rcx, rbx
	mov	WORD PTR [rax], r8w
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	RenderZoneMapPathsAndUI
	.p2align 4,,10
	.p2align 3
.L185:
	mov	ecx, 109056
	mov	r8d, 426
	jmp	.L181
	.p2align 4,,10
	.p2align 3
.L178:
	mov	BYTE PTR [rax], 0
	jmp	.L179
	.p2align 4,,10
	.p2align 3
.L184:
	xor	ecx, ecx
	xor	r8d, r8d
	jmp	.L181
	.p2align 4,,10
	.p2align 3
.L197:
	movsx	eax, WORD PTR 2[r9+r8*4]
	mov	DWORD PTR 1620[rbx], ecx
	mov	ecx, 215
	sal	eax, 8
	mov	DWORD PTR 1624[rbx], eax
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rdi]
	lea	rdi, Task_DisplayZoneNameAnim[rip]
	movzx	edx, BYTE PTR [rsi]
	mov	QWORD PTR 40[rax], rdi
	mov	eax, DWORD PTR 1620[rbx]
	jmp	.L176
	.p2align 4,,10
	.p2align 3
.L196:
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
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	LinkCommunicationError
	.seh_endproc
	.p2align 4
	.def	Task_UnlockCutSceneScrollToNextCourseAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_UnlockCutSceneScrollToNextCourseAnim
Task_UnlockCutSceneScrollToNextCourseAnim:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	edx, 266
	mov	r8, QWORD PTR .refptr.gSineTable[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	sub	WORD PTR 1014[rbx], 16
	movzx	eax, WORD PTR 1014[rbx]
	movq	xmm1, QWORD PTR 1620[rbx]
	movzx	ecx, BYTE PTR 1631[rbx]
	cmp	ax, dx
	cmovl	eax, edx
	mov	WORD PTR 1014[rbx], ax
	lea	rax, sZoneMapPathForwardAngles[rip]
	movzx	edx, WORD PTR [rax+rcx*2]
	lea	eax, 256[rdx]
	cdqe
	movzx	eax, WORD PTR [r8+rax*2]
	sar	ax, 6
	cwde
	movd	xmm0, eax
	movzx	eax, WORD PTR [r8+rdx*2]
	lea	r8, sZoneMapCameraTargets[rip]
	movsx	edx, WORD PTR [r8+rcx*4]
	sar	ax, 6
	cwde
	sal	edx, 8
	movd	xmm2, eax
	punpckldq	xmm0, xmm2
	paddd	xmm0, xmm1
	movq	QWORD PTR 1620[rbx], xmm0
	movd	eax, xmm0
	cmp	edx, eax
	jl	.L203
.L199:
	sub	eax, 54528
	js	.L201
	cmp	eax, 109056
	jg	.L202
	mov	edx, eax
	sar	edx, 8
.L200:
	mov	DWORD PTR 1616[rbx], eax
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	rcx, rbx
	mov	WORD PTR [rax], dx
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	RenderZoneMapPathsAndUI
	.p2align 4,,10
	.p2align 3
.L202:
	mov	eax, 109056
	mov	edx, 426
	jmp	.L200
	.p2align 4,,10
	.p2align 3
.L201:
	xor	eax, eax
	xor	edx, edx
	jmp	.L200
	.p2align 4,,10
	.p2align 3
.L203:
	movsx	eax, WORD PTR 2[r8+rcx*4]
	mov	DWORD PTR 1620[rbx], edx
	mov	ecx, 215
	sal	eax, 8
	mov	DWORD PTR 1624[rbx], eax
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rsi]
	lea	rsi, Task_UnlockCutSceneNextCoursePause[rip]
	mov	QWORD PTR 40[rax], rsi
	mov	eax, DWORD PTR 1620[rbx]
	jmp	.L199
	.seh_endproc
	.p2align 4
	.def	Task_UnlockCutSceneNextCoursePause;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_UnlockCutSceneNextCoursePause
Task_UnlockCutSceneNextCoursePause:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rdx, QWORD PTR [rax]
	mov	rcx, QWORD PTR 24[rdx]
	movzx	eax, BYTE PTR 1634[rcx]
	add	eax, 1
	mov	BYTE PTR 1634[rcx], al
	cmp	al, 60
	jbe	.L205
	mov	rax, QWORD PTR .LC0[rip]
	mov	DWORD PTR 8[rcx], 255
	mov	QWORD PTR [rcx], rax
	lea	rax, Task_FadeOutAndExitToSelectedLevel[rip]
	mov	QWORD PTR 40[rdx], rax
.L205:
	jmp	RenderZoneMapPathsAndUI
	.seh_endproc
	.p2align 4
	.def	Task_FadeInIntroAndStartUnlockCutScene;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_FadeInIntroAndStartUnlockCutScene
Task_FadeInIntroAndStartUnlockCutScene:
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
	mov	edx, 266
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	sub	WORD PTR 1014[rbx], 16
	movzx	eax, WORD PTR 1014[rbx]
	mov	rcx, rbx
	cmp	ax, dx
	cmovl	eax, edx
	mov	WORD PTR 1014[rbx], ax
	call	UpdateScreenFade
	cmp	al, 1
	je	.L207
	movzx	edx, BYTE PTR 1635[rbx]
	lea	rax, sZoneMapCourseXPositions[rip]
	movsx	eax, WORD PTR [rax+rdx*2]
	sub	eax, 213
	sal	eax, 8
.L208:
	test	eax, eax
	js	.L211
	cmp	eax, 109056
	jg	.L212
	mov	edx, eax
	sar	edx, 8
.L210:
	mov	DWORD PTR 1616[rbx], eax
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	rcx, rbx
	mov	WORD PTR [rax], dx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	RenderZoneMapPathsAndUI
	.p2align 4,,10
	.p2align 3
.L212:
	mov	eax, 109056
	mov	edx, 426
	jmp	.L210
	.p2align 4,,10
	.p2align 3
.L211:
	xor	eax, eax
	xor	edx, edx
	jmp	.L210
	.p2align 4,,10
	.p2align 3
.L207:
	movzx	eax, BYTE PTR 1635[rbx]
	lea	rdi, sZoneMapCourseXPositions[rip]
	mov	edx, DWORD PTR 1616[rbx]
	movsx	eax, WORD PTR [rdi+rax*2]
	sub	eax, 213
	sal	eax, 8
	cmp	edx, 109056
	je	.L209
	cmp	edx, eax
	jl	.L208
.L209:
	mov	DWORD PTR 1616[rbx], eax
	mov	ecx, 214
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rsi]
	lea	rcx, Task_UnlockCutSceneNewPathAnim[rip]
	mov	QWORD PTR 40[rax], rcx
	movzx	eax, BYTE PTR 1635[rbx]
	movsx	eax, WORD PTR [rdi+rax*2]
	sub	eax, 213
	sal	eax, 8
	jmp	.L208
	.seh_endproc
	.p2align 4
	.def	Task_UnlockCutSceneScrollAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_UnlockCutSceneScrollAnim
Task_UnlockCutSceneScrollAnim:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rcx]
	mov	eax, DWORD PTR 1616[rbx]
	mov	edx, DWORD PTR 1620[rbx]
	sub	eax, 768
	mov	DWORD PTR 1616[rbx], eax
	js	.L217
	cmp	eax, 109056
	jg	.L231
	test	eax, eax
	je	.L217
.L219:
	lea	r8d, -54527[rdx]
	cmp	r8d, eax
	jg	.L217
	movzx	eax, WORD PTR 1617[rbx]
.L221:
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	rcx, rbx
	mov	WORD PTR [rdx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	RenderZoneMapPathsAndUI
	.p2align 4,,10
	.p2align 3
.L217:
	lea	eax, -54528[rdx]
	movzx	r8d, BYTE PTR 1632[rbx]
	mov	DWORD PTR 1616[rbx], eax
	test	BYTE PTR 1633[rbx], 1
	jne	.L232
	cmp	r8b, 16
	jne	.L225
	mov	r8d, 756
	mov	BYTE PTR 1632[rbx], 15
	mov	WORD PTR 738[rbx], r8w
	mov	BYTE PTR 768[rbx], 1
.L225:
	lea	rsi, Task_CourseSelectMain[rip]
	mov	QWORD PTR 40[rcx], rsi
	lea	ecx, -54527[rdx]
	cmp	ecx, eax
	jle	.L233
.L226:
	sub	edx, 54528
	js	.L227
	mov	DWORD PTR 1616[rbx], edx
	sar	edx, 8
	mov	eax, edx
	jmp	.L221
	.p2align 4,,10
	.p2align 3
.L232:
	movzx	eax, BYTE PTR 1631[rbx]
	cmp	al, r8b
	jb	.L234
.L223:
	mov	BYTE PTR 1634[rbx], 0
	mov	ecx, 213
	call	m4aSongNumStart
	mov	rax, QWORD PTR [rsi]
	mov	edx, DWORD PTR 1620[rbx]
	lea	rsi, Task_UnlockCutSceneScrollToNextCourseAnim[rip]
	mov	QWORD PTR 40[rax], rsi
	mov	eax, DWORD PTR 1616[rbx]
	lea	ecx, -54527[rdx]
	cmp	ecx, eax
	jg	.L226
.L233:
	sar	eax, 8
	jmp	.L221
	.p2align 4,,10
	.p2align 3
.L231:
	mov	DWORD PTR 1616[rbx], 109056
	mov	eax, 109056
	jmp	.L219
	.p2align 4,,10
	.p2align 3
.L234:
	add	eax, 1
	mov	BYTE PTR 1631[rbx], al
	jmp	.L223
	.p2align 4,,10
	.p2align 3
.L227:
	mov	DWORD PTR 1616[rbx], 0
	xor	eax, eax
	jmp	.L221
	.seh_endproc
	.p2align 4
	.def	Task_UnlockCutSceneNewPathAnim;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_UnlockCutSceneNewPathAnim
Task_UnlockCutSceneNewPathAnim:
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
	mov	edx, 266
	mov	rcx, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	rax, QWORD PTR [rdi]
	mov	r12, QWORD PTR 24[rax]
	sub	WORD PTR 1014[r12], 16
	movzx	eax, WORD PTR 1014[r12]
	add	BYTE PTR 1634[r12], 1
	cmp	ax, dx
	cmovl	eax, edx
	mov	WORD PTR 1014[r12], ax
	mov	eax, DWORD PTR 1616[r12]
	mov	edx, eax
	sar	edx, 8
	cmp	BYTE PTR 1630[r12], 0
	mov	WORD PTR [rcx], dx
	je	.L240
	lea	r13, sZoneMapPathPositions[rip]
	lea	rbp, 272[r12]
	xor	ebx, ebx
	lea	rsi, 2[r13]
	jmp	.L238
	.p2align 4,,10
	.p2align 3
.L237:
	mov	eax, DWORD PTR 1616[r12]
.L238:
	movzx	edx, WORD PTR 0[r13+rbx*4]
	sar	eax, 8
	mov	rcx, rbp
	sub	edx, eax
	movzx	eax, WORD PTR [rsi+rbx*4]
	add	rbx, 1
	movzx	edx, dx
	sal	eax, 16
	or	eax, edx
	mov	DWORD PTR 38[rbp], eax
	call	UpdateSpriteAnimation
	mov	rcx, rbp
	add	rbp, 64
	call	DisplaySprite
	movzx	eax, BYTE PTR 1630[r12]
	cmp	bl, al
	jb	.L237
	movzx	ebx, al
	mov	edx, DWORD PTR 1616[r12]
	movzx	ecx, WORD PTR 0[r13+rax*4]
	sal	rbx, 6
	movzx	r8d, WORD PTR 2[r13+rax*4]
	add	rbx, 272
	sar	edx, 8
.L236:
	sal	rax, 6
	sub	ecx, edx
	add	rbx, r12
	add	rax, r12
	mov	WORD PTR 310[rax], cx
	mov	rcx, rbx
	mov	WORD PTR 312[rax], r8w
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	mov	esi, eax
	call	DisplaySprite
	mov	rcx, r12
	call	RenderUI
	test	esi, esi
	jne	.L235
	mov	rax, QWORD PTR [rdi]
	lea	rdi, Task_UnlockCutSceneScrollAnim[rip]
	mov	QWORD PTR 40[rax], rdi
	mov	eax, 426
	add	BYTE PTR 1630[r12], 1
	add	BYTE PTR 1632[r12], 1
	mov	WORD PTR 1014[r12], ax
.L235:
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
.L240:
	mov	r8d, 80
	mov	ecx, 24
	mov	ebx, 272
	xor	eax, eax
	jmp	.L236
	.seh_endproc
	.p2align 4
	.def	Task_FadeOutAndExitToSelectedLevel;	.scl	3;	.type	32;	.endef
	.seh_proc	Task_FadeOutAndExitToSelectedLevel
Task_FadeOutAndExitToSelectedLevel:
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
	cmp	al, 1
	je	.L245
	mov	eax, DWORD PTR 1616[rbx]
	mov	rdx, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	rcx, rbx
	sar	eax, 8
	mov	WORD PTR [rdx], ax
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	RenderZoneMapPathsAndUI
	.p2align 4,,10
	.p2align 3
.L245:
	mov	rcx, rbx
	call	DestroyUI
	movzx	eax, BYTE PTR 1631[rbx]
	lea	rdx, sCourseIndexToLevelIndex[rip]
	movzx	eax, BYTE PTR [rdx+rax]
	mov	rdx, QWORD PTR .refptr.gCurrentLevel[rip]
	mov	BYTE PTR [rdx], al
	cmp	al, 29
	je	.L243
	call	GameStageStart
.L244:
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L243:
	call	CreateTrueArea53Intro
	jmp	.L244
	.seh_endproc
	.p2align 4
	.globl	CreateCourseSelectionScreen
	.def	CreateCourseSelectionScreen;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateCourseSelectionScreen
CreateCourseSelectionScreen:
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
	mov	rax, QWORD PTR .refptr.gMultiplayerMissingHeartbeats[rip]
	mov	DWORD PTR [rax], 0
	mov	esi, ecx
	mov	ebx, edx
	mov	edi, r8d
	cmp	r8b, 2
	je	.L290
.L247:
	mov	r14, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [r14], 2
	jbe	.L248
	mov	eax, 26
	cmp	bl, al
	cmova	ebx, eax
	lea	ebp, 1[rbx]
.L249:
	mov	ecx, 4
	call	m4aSongNumStart
	movzx	edx, BYTE PTR [r14]
	cmp	dl, 2
	ja	.L254
	test	bpl, 2
	je	.L291
	shr	bpl, 2
	sal	ebp, 25
	sar	ebp, 24
	mov	r12d, ebp
	jmp	.L253
	.p2align 4,,10
	.p2align 3
.L248:
	cmp	bl, 28
	je	.L250
	jbe	.L292
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rax, QWORD PTR [rax]
	cmp	BYTE PTR 26[rax], 0
	je	.L250
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	cmp	BYTE PTR [rax], 0
	je	.L252
.L250:
	mov	ecx, 5
	mov	ebp, 14
	mov	r12d, 14
	call	m4aSongNumStart
	movzx	edx, BYTE PTR [r14]
.L253:
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	ecx, 4928
	test	dil, 3
	setne	r13b
	cmp	dl, 2
	mov	WORD PTR [rax], cx
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	DWORD PTR [rax], 470700035
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	QWORD PTR [rax], 0
	setbe	al
	and	al, r13b
	mov	ebx, eax
	jne	.L293
.L256:
	lea	rax, CourseSelectionScreenOnDestroy[rip]
	xor	r9d, r9d
	mov	r8d, 12544
	mov	edx, 1640
	mov	QWORD PTR 32[rsp], rax
	lea	rcx, Task_FadeInIntro[rip]
	call	TaskCreate
.L257:
	mov	rbx, QWORD PTR 24[rax]
	mov	eax, esi
	and	esi, 1
	lea	rdx, sZoneMapCameraTargets[rip]
	shr	al, 2
	movsx	rbp, ebp
	add	eax, eax
	mov	BYTE PTR 1634[rbx], 0
	or	esi, eax
	mov	BYTE PTR 1636[rbx], 0
	mov	rcx, rsi
	mov	BYTE PTR 1631[rbx], sil
	mov	DWORD PTR 1616[rbx], 0
	and	ecx, 127
	movsx	eax, WORD PTR [rdx+rcx*4]
	sal	eax, 8
	mov	DWORD PTR 1620[rbx], eax
	movsx	eax, WORD PTR 2[rdx+rcx*4]
	sal	eax, 8
	mov	DWORD PTR 1624[rbx], eax
	lea	rax, sCourseIndexToNumZonePaths[rip]
	movzx	eax, BYTE PTR [rax+rbp]
	test	r13b, r13b
	je	.L258
	mov	BYTE PTR 1635[rbx], r12b
	cmp	al, 1
	adc	al, -1
.L258:
	mov	BYTE PTR 1630[rbx], al
	mov	rax, QWORD PTR .LC9[rip]
	mov	rcx, rbx
	mov	BYTE PTR 1632[rbx], r12b
	mov	BYTE PTR 1633[rbx], dil
	mov	QWORD PTR [rbx], rax
	mov	DWORD PTR 8[rbx], 255
	call	UpdateScreenFade
	mov	r12, QWORD PTR .refptr.VRAM[rip]
	lea	rcx, 112[rbx]
	mov	DWORD PTR 156[rbx], 0
	lea	rax, 49152[r12]
	mov	QWORD PTR 120[rbx], rax
	xor	eax, eax
	cmp	BYTE PTR [r14], 2
	mov	WORD PTR 130[rbx], ax
	lea	rax, 57344[r12]
	mov	QWORD PTR 136[rbx], rax
	ja	.L259
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	movsx	ax, BYTE PTR [rax]
	add	eax, 100
.L260:
	mov	ebp, 1
	xor	r15d, r15d
	mov	WORD PTR 160[rbx], ax
	lea	rsi, 208[rbx]
	mov	QWORD PTR 162[rbx], 0
	mov	DWORD PTR 170[rbx], 1310750
	mov	BYTE PTR 174[rbx], 0
	mov	WORD PTR 178[rbx], bp
	call	DrawBackground
	mov	QWORD PTR 24[rbx], r12
	lea	rcx, 16[rbx]
	lea	rax, 32768[r12]
	mov	QWORD PTR 40[rbx], rax
	mov	eax, 20
	movdqu	xmm0, XMMWORD PTR .LC10[rip]
	mov	WORD PTR 76[rbx], ax
	xor	eax, eax
	mov	WORD PTR 82[rbx], ax
	mov	WORD PTR 34[rbx], r15w
	mov	BYTE PTR 78[rbx], 0
	movups	XMMWORD PTR 60[rbx], xmm0
	call	DrawBackground
	mov	ecx, 4
	mov	DWORD PTR 246[rbx], 0
	call	VramMalloc
	cmp	BYTE PTR [r14], 2
	mov	QWORD PTR 216[rbx], rax
	mov	eax, 759
	mov	WORD PTR 226[rbx], ax
	ja	.L261
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	movzx	eax, BYTE PTR [rax]
.L262:
	xor	r10d, r10d
	xor	r11d, r11d
	mov	edi, 4351
	mov	rcx, rsi
	mov	WORD PTR 257[rbx], di
	lea	rsi, 280[rbx]
	lea	rdi, sZoneMapPathAssets[rip]
	xor	ebp, ebp
	mov	BYTE PTR 256[rbx], al
	lea	r15, sZoneMapPathAnimatedAssets[rip+2]
	mov	WORD PTR 224[rbx], r10w
	mov	WORD PTR 244[rbx], r11w
	mov	DWORD PTR 250[rbx], 192
	mov	BYTE PTR 261[rbx], 0
	mov	DWORD PTR 264[rbx], -1
	mov	DWORD PTR 240[rbx], 0
	call	UpdateSpriteAnimation
	jmp	.L265
	.p2align 4,,10
	.p2align 3
.L263:
	movzx	eax, WORD PTR 2[rdi]
	movzx	ecx, BYTE PTR 4[rdi]
.L264:
	mov	BYTE PTR 40[rsi], cl
	mov	edx, 256
	xor	ecx, ecx
	xor	r8d, r8d
	xor	r9d, r9d
	add	ebp, 1
	mov	WORD PTR 10[rsi], ax
	add	rdi, 6
	mov	WORD PTR 34[rsi], dx
	add	r15, 6
	add	rsi, 64
	mov	WORD PTR -56[rsi], cx
	mov	WORD PTR -36[rsi], r8w
	mov	WORD PTR -28[rsi], r9w
	mov	BYTE PTR -23[rsi], -1
	mov	BYTE PTR -22[rsi], 16
	mov	BYTE PTR -19[rsi], 0
	mov	DWORD PTR -16[rsi], -1
	mov	DWORD PTR -40[rsi], 0
	cmp	bpl, 8
	je	.L294
.L265:
	mov	DWORD PTR 30[rsi], 0
	movzx	ecx, WORD PTR [rdi]
	call	VramMalloc
	mov	QWORD PTR [rsi], rax
	test	r13b, r13b
	je	.L263
	cmp	BYTE PTR 1630[rbx], bpl
	jne	.L263
	movzx	eax, WORD PTR [r15]
	movzx	ecx, BYTE PTR 2[r15]
	jmp	.L264
	.p2align 4,,10
	.p2align 3
.L294:
	mov	DWORD PTR 822[rbx], 370
	mov	ecx, 4
	call	VramMalloc
	movzx	esi, WORD PTR .LC13[rip]
	mov	edi, DWORD PTR .LC12[rip]
	mov	DWORD PTR 826[rbx], 256
	mov	QWORD PTR 792[rbx], rax
	xor	eax, eax
	lea	rcx, 784[rbx]
	mov	WORD PTR 832[rbx], si
	mov	DWORD PTR 800[rbx], edi
	mov	WORD PTR 820[rbx], ax
	mov	BYTE PTR 834[rbx], 16
	mov	BYTE PTR 837[rbx], 0
	mov	DWORD PTR 840[rbx], -1
	mov	DWORD PTR 816[rbx], 0
	call	UpdateSpriteAnimation
	mov	ecx, 4
	mov	DWORD PTR 886[rbx], 402
	call	VramMalloc
	mov	WORD PTR 896[rbx], si
	lea	rcx, 848[rbx]
	mov	QWORD PTR 856[rbx], rax
	xor	eax, eax
	mov	DWORD PTR 864[rbx], edi
	mov	WORD PTR 884[rbx], ax
	mov	DWORD PTR 890[rbx], 256
	mov	BYTE PTR 898[rbx], 16
	mov	BYTE PTR 901[rbx], 0
	mov	DWORD PTR 904[rbx], -1
	mov	DWORD PTR 880[rbx], 0
	call	UpdateSpriteAnimation
	mov	ecx, 26
	mov	DWORD PTR 950[rbx], 314
	call	VramMalloc
	mov	WORD PTR 960[rbx], si
	lea	rcx, 912[rbx]
	mov	QWORD PTR 920[rbx], rax
	xor	eax, eax
	mov	DWORD PTR 928[rbx], 49610752
	mov	WORD PTR 948[rbx], ax
	mov	DWORD PTR 954[rbx], 256
	mov	BYTE PTR 962[rbx], 16
	mov	BYTE PTR 965[rbx], 0
	mov	DWORD PTR 968[rbx], -1
	mov	DWORD PTR 944[rbx], 0
	call	UpdateSpriteAnimation
	mov	ecx, 38
	mov	DWORD PTR 1014[rbx], 1573290
	call	VramMalloc
	mov	WORD PTR 1024[rbx], si
	lea	rcx, 976[rbx]
	lea	rsi, 1040[rbx]
	mov	QWORD PTR 984[rbx], rax
	xor	eax, eax
	mov	DWORD PTR 992[rbx], 49872896
	mov	WORD PTR 1012[rbx], ax
	mov	DWORD PTR 1018[rbx], 256
	mov	BYTE PTR 1026[rbx], 16
	mov	BYTE PTR 1029[rbx], 0
	mov	DWORD PTR 1032[rbx], -1
	mov	DWORD PTR 1008[rbx], 0
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	DWORD PTR 1078[rbx], 0
	mov	rax, QWORD PTR [rax]
	cmp	BYTE PTR 6[rax], 1
	je	.L295
	mov	ecx, 28
	mov	r15d, 764
	call	VramMalloc
	cmp	BYTE PTR [r14], 2
	mov	WORD PTR 1058[rbx], r15w
	mov	QWORD PTR 1048[rbx], rax
	jbe	.L289
.L269:
	mov	rax, QWORD PTR .refptr.gMultiplayerCharacters[rip]
	movzx	eax, BYTE PTR [rax]
.L268:
	xor	edi, edi
	xor	ebp, ebp
	mov	r13d, 4351
	mov	BYTE PTR 1088[rbx], al
	mov	WORD PTR 1056[rbx], di
	mov	rcx, rsi
	mov	WORD PTR 1076[rbx], bp
	mov	DWORD PTR 1082[rbx], 256
	mov	WORD PTR 1089[rbx], r13w
	mov	BYTE PTR 1093[rbx], 0
	mov	DWORD PTR 1096[rbx], -1
	mov	DWORD PTR 1072[rbx], 0
	call	UpdateSpriteAnimation
	mov	r9d, DWORD PTR .LC19[rip]
	lea	rcx, 65536[r12]
	lea	rax, 1112[rbx]
	lea	rdx, sChaoEmeraldAssets[rip]
	add	r12, 67840
	.p2align 4,,10
	.p2align 3
.L270:
	mov	QWORD PTR [rax], rcx
	xor	r10d, r10d
	xor	r11d, r11d
	xor	ebx, ebx
	mov	DWORD PTR 30[rax], r9d
	movzx	r8d, WORD PTR [rdx]
	add	rax, 64
	add	rdx, 4
	add	rcx, 288
	mov	WORD PTR -54[rax], r8w
	movzx	r8d, WORD PTR -2[rdx]
	mov	WORD PTR -56[rax], r10w
	mov	BYTE PTR -24[rax], r8b
	mov	r8d, 256
	mov	WORD PTR -30[rax], r8w
	mov	WORD PTR -36[rax], r11w
	mov	WORD PTR -28[rax], bx
	mov	BYTE PTR -23[rax], -1
	mov	BYTE PTR -22[rax], 16
	mov	BYTE PTR -19[rax], 0
	mov	DWORD PTR -16[rax], -1
	mov	DWORD PTR -40[rax], 0
	cmp	r12, rcx
	jne	.L270
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
.L295:
	mov	ecx, 24
	call	VramMalloc
	cmp	BYTE PTR [r14], 2
	mov	QWORD PTR 1048[rbx], rax
	mov	eax, 763
	mov	WORD PTR 1058[rbx], ax
	ja	.L269
.L289:
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	movzx	eax, BYTE PTR [rax]
	jmp	.L268
	.p2align 4,,10
	.p2align 3
.L261:
	mov	rax, QWORD PTR .refptr.gMultiplayerCharacters[rip]
	movzx	eax, BYTE PTR [rax]
	jmp	.L262
	.p2align 4,,10
	.p2align 3
.L259:
	mov	rax, QWORD PTR .refptr.gMultiplayerCharacters[rip]
	movsx	ax, BYTE PTR [rax]
	add	eax, 100
	jmp	.L260
	.p2align 4,,10
	.p2align 3
.L293:
	lea	rax, CourseSelectionScreenOnDestroy[rip]
	xor	r9d, r9d
	mov	edx, 1640
	mov	r13d, ebx
	mov	QWORD PTR 32[rsp], rax
	mov	r8d, 12544
	lea	rcx, Task_FadeInIntroAndStartUnlockCutScene[rip]
	call	TaskCreate
	jmp	.L257
	.p2align 4,,10
	.p2align 3
.L290:
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rax, QWORD PTR [rax]
	mov	BYTE PTR 26[rax], 2
	call	WriteSaveGame
	jmp	.L247
	.p2align 4,,10
	.p2align 3
.L254:
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	edx, 4928
	test	dil, 3
	mov	r12d, ebp
	setne	r13b
	shr	r12b, 2
	and	ebp, 1
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	add	r12d, r12d
	or	r12d, ebp
	mov	DWORD PTR [rax], 470700035
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	movzx	ebp, r12b
	mov	QWORD PTR [rax], 0
	jmp	.L256
	.p2align 4,,10
	.p2align 3
.L252:
	mov	ecx, 6
	mov	ebp, 15
	mov	r12d, 15
	call	m4aSongNumStart
	movzx	edx, BYTE PTR [r14]
	jmp	.L253
.L291:
	mov	r12d, ebp
	and	ebp, 1
	shr	r12b, 2
	add	r12d, r12d
	or	r12d, ebp
	movzx	ebp, r12b
	jmp	.L253
.L292:
	lea	ebp, 1[rbx]
	cmp	bl, 27
	jne	.L249
	jmp	.L250
	.seh_endproc
	.section .rdata,"dr"
	.align 16
sCourseIndexToLevelIndex:
	.ascii "\0\1\4\5\10\11\14\15\20\21\24\25\30\31\34\35"
	.align 32
sZoneMapPathForwardAngles:
	.word	-1
	.word	0
	.word	850
	.word	0
	.word	180
	.word	0
	.word	788
	.word	0
	.word	56
	.word	0
	.word	72
	.word	0
	.word	976
	.word	0
	.word	44
	.word	1000
	.align 32
sZoneMapPathReverseAngles:
	.word	512
	.word	330
	.word	512
	.word	692
	.word	512
	.word	276
	.word	512
	.word	566
	.word	512
	.word	584
	.word	512
	.word	463
	.word	512
	.word	557
	.word	484
	.word	0
	.align 32
sZoneMapPathPositions:
	.word	24
	.word	80
	.word	56
	.word	80
	.word	88
	.word	72
	.word	120
	.word	64
	.word	168
	.word	72
	.word	224
	.word	72
	.word	304
	.word	72
	.word	384
	.word	80
	.align 32
sZoneMapCourseXPositions:
	.word	4
	.word	20
	.word	35
	.word	51
	.word	70
	.word	86
	.word	92
	.word	108
	.word	141
	.word	157
	.word	199
	.word	215
	.word	279
	.word	295
	.word	397
	.word	450
	.align 16
sCourseIndexToNumZonePaths:
	.ascii "\0\0\1\1\2\2\3\3\4\4\5\5\6\6\7\10"
	.align 32
sChaoEmeraldAssets:
	.word	760
	.word	0
	.word	760
	.word	1
	.word	760
	.word	2
	.word	760
	.word	3
	.word	760
	.word	4
	.word	760
	.word	5
	.word	760
	.word	6
	.word	760
	.word	7
	.align 32
sZoneTypeAssets:
	.word	757
	.word	0
	.word	757
	.word	0
	.word	757
	.word	0
	.word	757
	.word	0
	.word	757
	.word	0
	.word	757
	.word	0
	.word	757
	.word	0
	.word	757
	.word	0
	.word	757
	.word	0
	.word	757
	.word	0
	.word	757
	.word	0
	.word	757
	.word	0
	.word	757
	.word	0
	.word	757
	.word	0
	.word	757
	.word	1
	.word	757
	.word	2
	.align 32
sZoneNameAssets:
	.word	761
	.word	0
	.word	761
	.word	0
	.word	761
	.word	1
	.word	761
	.word	1
	.word	761
	.word	2
	.word	761
	.word	2
	.word	761
	.word	3
	.word	761
	.word	3
	.word	761
	.word	4
	.word	761
	.word	4
	.word	761
	.word	5
	.word	761
	.word	5
	.word	761
	.word	6
	.word	761
	.word	6
	.word	761
	.word	7
	.word	761
	.word	8
	.word	762
	.word	0
	.word	762
	.word	0
	.word	762
	.word	1
	.word	762
	.word	1
	.word	762
	.word	2
	.word	762
	.word	2
	.word	762
	.word	3
	.word	762
	.word	3
	.word	762
	.word	4
	.word	762
	.word	4
	.word	762
	.word	5
	.word	762
	.word	5
	.word	762
	.word	6
	.word	762
	.word	6
	.word	762
	.word	7
	.word	762
	.word	8
	.align 32
sZoneMapCameraTargets:
	.word	4
	.word	100
	.word	20
	.word	100
	.word	35
	.word	70
	.word	51
	.word	70
	.word	70
	.word	108
	.word	86
	.word	108
	.word	92
	.word	60
	.word	108
	.word	60
	.word	141
	.word	71
	.word	157
	.word	71
	.word	199
	.word	91
	.word	215
	.word	91
	.word	279
	.word	71
	.word	295
	.word	71
	.word	373
	.word	93
	.word	449
	.word	81
	.align 32
sZoneMapPathAnimatedAssets:
	.word	6
	.word	749
	.word	0
	.word	12
	.word	750
	.word	0
	.word	10
	.word	751
	.word	0
	.word	6
	.word	752
	.word	0
	.word	16
	.word	753
	.word	0
	.word	28
	.word	754
	.word	0
	.word	36
	.word	755
	.word	0
	.word	30
	.word	756
	.word	0
	.align 32
sZoneMapPathAssets:
	.word	6
	.word	749
	.word	1
	.word	12
	.word	750
	.word	1
	.word	10
	.word	751
	.word	1
	.word	6
	.word	752
	.word	1
	.word	16
	.word	753
	.word	1
	.word	21
	.word	754
	.word	1
	.word	36
	.word	755
	.word	1
	.word	30
	.word	756
	.word	1
	.align 8
.LC0:
	.word	0
	.word	1
	.word	0
	.word	384
	.align 8
.LC9:
	.word	0
	.word	2
	.word	0
	.word	384
	.align 16
.LC10:
	.word	0
	.word	0
	.word	105
	.word	0
	.word	0
	.word	0
	.word	0
	.word	60
	.align 4
.LC12:
	.word	0
	.word	758
	.align 2
.LC13:
	.byte	0
	.byte	-1
	.align 4
.LC19:
	.word	0
	.word	216
	.ident	"GCC: (GNU) 13-win32"
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	UpdateScreenFade;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	TasksDestroyInPriorityRange;	.scl	2;	.type	32;	.endef
	.def	LinkCommunicationError;	.scl	2;	.type	32;	.endef
	.def	GameStageStart;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	CreateCharacterSelectionScreen;	.scl	2;	.type	32;	.endef
	.def	CreateTrueArea53Intro;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	DrawBackground;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	WriteSaveGame;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gMultiplayerCharacters, "dr"
	.globl	.refptr.gMultiplayerCharacters
	.linkonce	discard
.refptr.gMultiplayerCharacters:
	.quad	gMultiplayerCharacters
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
	.section	.rdata$.refptr.gSineTable, "dr"
	.globl	.refptr.gSineTable
	.linkonce	discard
.refptr.gSineTable:
	.quad	gSineTable
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.gRepeatedKeys, "dr"
	.globl	.refptr.gRepeatedKeys
	.linkonce	discard
.refptr.gRepeatedKeys:
	.quad	gRepeatedKeys
	.section	.rdata$.refptr.gPressedKeys, "dr"
	.globl	.refptr.gPressedKeys
	.linkonce	discard
.refptr.gPressedKeys:
	.quad	gPressedKeys
	.section	.rdata$.refptr.gInput, "dr"
	.globl	.refptr.gInput
	.linkonce	discard
.refptr.gInput:
	.quad	gInput
	.section	.rdata$.refptr.gMultiSioSend, "dr"
	.globl	.refptr.gMultiSioSend
	.linkonce	discard
.refptr.gMultiSioSend:
	.quad	gMultiSioSend
	.section	.rdata$.refptr.gMultiSioRecv, "dr"
	.globl	.refptr.gMultiSioRecv
	.linkonce	discard
.refptr.gMultiSioRecv:
	.quad	gMultiSioRecv
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
	.section	.rdata$.refptr.gMultiplayerMissingHeartbeats, "dr"
	.globl	.refptr.gMultiplayerMissingHeartbeats
	.linkonce	discard
.refptr.gMultiplayerMissingHeartbeats:
	.quad	gMultiplayerMissingHeartbeats
	.section	.rdata$.refptr.gMultiSioStatusFlags, "dr"
	.globl	.refptr.gMultiSioStatusFlags
	.linkonce	discard
.refptr.gMultiSioStatusFlags:
	.quad	gMultiSioStatusFlags
	.section	.rdata$.refptr.gMultiplayerConnections, "dr"
	.globl	.refptr.gMultiplayerConnections
	.linkonce	discard
.refptr.gMultiplayerConnections:
	.quad	gMultiplayerConnections
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
	.section	.rdata$.refptr.gSelectedCharacter, "dr"
	.globl	.refptr.gSelectedCharacter
	.linkonce	discard
.refptr.gSelectedCharacter:
	.quad	gSelectedCharacter
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gLoadedSaveGame, "dr"
	.globl	.refptr.gLoadedSaveGame
	.linkonce	discard
.refptr.gLoadedSaveGame:
	.quad	gLoadedSaveGame
