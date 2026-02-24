	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_FadeoutToOverScreen
	.def	Task_FadeoutToOverScreen;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_FadeoutToOverScreen
Task_FadeoutToOverScreen:
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
	mov	rcx, QWORD PTR 24[rax]
	movzx	eax, BYTE PTR 16[rcx]
	mov	esi, DWORD PTR 12[rcx]
	test	al, al
	je	.L2
	sub	eax, 1
	mov	BYTE PTR 16[rcx], al
.L1:
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	call	UpdateScreenFade
	test	al, al
	je	.L1
	mov	rdi, QWORD PTR .refptr.gBldRegs[rip]
	mov	r10d, 16
	mov	edx, 65535
	xor	ecx, ecx
	mov	WORD PTR 4[rdi], r10w
	call	TasksDestroyInPriorityRange
	pxor	xmm0, xmm0
	xor	r11d, r11d
	xor	r9d, r9d
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueIndex[rip]
	mov	WORD PTR 4[rdi], r11w
	mov	DWORD PTR [rdi], 0
	mov	r8, QWORD PTR .refptr.gFlags[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueCursor[rip]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR .refptr.gBgSpritesCount[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyQueueIndex[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyCursor[rip]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR .refptr.gWinRegs[rip]
	mov	edx, DWORD PTR [r8]
	movups	XMMWORD PTR [rax], xmm0
	mov	QWORD PTR 16[rax], 0
	mov	rax, QWORD PTR .refptr.gBgPalette[rip]
	and	edx, -5
	or	edx, 1
	lea	rdi, 8[rax]
	mov	QWORD PTR [rax], 0
	mov	QWORD PTR 504[rax], 0
	and	rdi, -8
	sub	rax, rdi
	lea	ecx, 512[rax]
	xor	eax, eax
	shr	ecx, 3
	rep stosq
	lea	rax, TaskDestructor_GameOverTimeOverScreen[rip]
	mov	DWORD PTR [r8], edx
	mov	r8d, 4096
	mov	QWORD PTR 32[rsp], rax
	mov	edx, 152
	and	esi, 1
	je	.L4
	lea	rcx, Task_GameOverScreenMain[rip]
	call	TaskCreate
	mov	ecx, 64
	mov	rbx, QWORD PTR 24[rax]
	mov	DWORD PTR 144[rbx], 140
	lea	rbp, 16[rbx]
	call	VramMalloc
	mov	r9d, 731
	mov	BYTE PTR 64[rbx], 0
	mov	QWORD PTR 24[rbx], rax
	mov	WORD PTR 34[rbx], r9w
.L5:
	mov	edx, 4351
	xor	eax, eax
	mov	BYTE PTR 69[rbx], 0
	mov	rcx, rbp
	movabs	rdi, 824641585152
	mov	WORD PTR 65[rbx], dx
	mov	WORD PTR 32[rbx], ax
	mov	QWORD PTR 54[rbx], rdi
	mov	DWORD PTR 48[rbx], 0
	call	UpdateSpriteAnimation
	mov	ecx, 64
	call	VramMalloc
	mov	ecx, -255
	mov	QWORD PTR 118[rbx], rdi
	mov	WORD PTR 128[rbx], cx
	lea	rcx, 80[rbx]
	mov	QWORD PTR 88[rbx], rax
	mov	DWORD PTR 96[rbx], 47906816
	mov	BYTE PTR 130[rbx], 16
	mov	BYTE PTR 133[rbx], 0
	mov	DWORD PTR 112[rbx], 0
	call	UpdateSpriteAnimation
	mov	rax, QWORD PTR .LC3[rip]
	mov	ecx, 41
	mov	DWORD PTR 8[rbx], 16336
	mov	QWORD PTR [rbx], rax
	test	esi, esi
	jne	.L10
	mov	ecx, 149
.L10:
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L4:
	lea	rcx, Task_TimeOverScreenMain[rip]
	call	TaskCreate
	mov	ecx, 64
	mov	rbx, QWORD PTR 24[rax]
	mov	DWORD PTR 144[rbx], 180
	lea	rbp, 16[rbx]
	call	VramMalloc
	mov	r8d, 731
	mov	BYTE PTR 64[rbx], 4
	mov	QWORD PTR 24[rbx], rax
	mov	WORD PTR 34[rbx], r8w
	jmp	.L5
	.seh_endproc
	.p2align 4
	.globl	Task_GameOverScreenMain
	.def	Task_GameOverScreenMain;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_GameOverScreenMain
Task_GameOverScreenMain:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	edx, 16367
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	mov	WORD PTR [rax], dx
	mov	eax, DWORD PTR 144[rbx]
	cmp	eax, 60
	je	.L18
	cmp	eax, 50
	jne	.L15
	mov	rax, QWORD PTR .LC8[rip]
	mov	DWORD PTR 8[rbx], 16272
	mov	QWORD PTR [rbx], rax
.L14:
	mov	eax, 213
.L16:
	mov	WORD PTR 118[rbx], ax
	mov	rcx, rbx
	mov	WORD PTR 54[rbx], ax
	call	UpdateScreenFade
	sub	DWORD PTR 144[rbx], 1
	jne	.L17
	mov	rax, QWORD PTR .LC9[rip]
	lea	rdx, sub_80369D8[rip]
	mov	DWORD PTR 8[rbx], 16303
	mov	DWORD PTR 144[rbx], 120
	mov	QWORD PTR [rbx], rax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdx
.L17:
	lea	rcx, 16[rbx]
	call	DisplaySprite
	lea	rcx, 80[rbx]
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L15:
	cmp	eax, 60
	jbe	.L14
	add	eax, 60
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L18:
	mov	rax, QWORD PTR .LC6[rip]
	mov	DWORD PTR 8[rbx], 16272
	mov	QWORD PTR [rbx], rax
	jmp	.L14
	.seh_endproc
	.p2align 4
	.globl	sub_80369D8
	.def	sub_80369D8;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80369D8
sub_80369D8:
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
	call	UpdateScreenFade
	sub	DWORD PTR 144[rbx], 1
	je	.L21
.L20:
	lea	rcx, 16[rbx]
	call	DisplaySprite
	lea	rcx, 80[rbx]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L21:
	mov	rcx, QWORD PTR .refptr.gBgPalette[rip]
	mov	rax, QWORD PTR .LC12[rip]
	mov	DWORD PTR 8[rbx], 16319
	lea	rdx, sub_8036B30[rip]
	lea	rdi, 8[rcx]
	mov	QWORD PTR [rbx], rax
	mov	rax, -1
	and	rdi, -8
	mov	QWORD PTR [rcx], -1
	mov	QWORD PTR 504[rcx], -1
	sub	rcx, rdi
	add	ecx, 512
	shr	ecx, 3
	rep stosq
	mov	rax, QWORD PTR .refptr.gFlags[rip]
	or	DWORD PTR [rax], 1
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdx
	jmp	.L20
	.seh_endproc
	.p2align 4
	.globl	sub_8036B30
	.def	sub_8036B30;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8036B30
sub_8036B30:
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
	jne	.L27
.L23:
	lea	rcx, 16[rbx]
	call	DisplaySprite
	lea	rcx, 80[rbx]
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L27:
	mov	DWORD PTR 144[rbx], 140
	mov	rcx, rbx
	call	UpdateScreenFade
	mov	rax, QWORD PTR [rsi]
	lea	rdx, sub_8036B70[rip]
	mov	QWORD PTR 40[rax], rdx
	jmp	.L23
	.seh_endproc
	.p2align 4
	.globl	TaskDestructor_GameOverTimeOverScreen
	.def	TaskDestructor_GameOverTimeOverScreen;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_GameOverTimeOverScreen
TaskDestructor_GameOverTimeOverScreen:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 24[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 88[rbx]
	add	rsp, 32
	pop	rbx
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.globl	sub_8036B70
	.def	sub_8036B70;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8036B70
sub_8036B70:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	sub	DWORD PTR 144[rbx], 1
	jne	.L30
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
	jmp	CreateTitleScreen
	.p2align 4,,10
	.p2align 3
.L30:
	lea	rcx, 16[rbx]
	call	DisplaySprite
	lea	rcx, 80[rbx]
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	CreateGameOverScreen
	.def	CreateGameOverScreen;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateGameOverScreen
CreateGameOverScreen:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	xor	r9d, r9d
	mov	r8d, 8736
	mov	edx, 20
	mov	QWORD PTR 32[rsp], 0
	mov	ebx, ecx
	lea	rcx, Task_FadeoutToOverScreen[rip]
	call	TaskCreate
	mov	rdx, QWORD PTR .LC9[rip]
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_BGM[rip]
	mov	rax, QWORD PTR 24[rax]
	mov	QWORD PTR [rax], rdx
	mov	edx, 8
	mov	DWORD PTR 8[rax], 16383
	mov	DWORD PTR 12[rax], ebx
	mov	BYTE PTR 16[rax], 10
	call	m4aMPlayFadeOut
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_SE1[rip]
	mov	edx, 8
	call	m4aMPlayFadeOut
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_SE2[rip]
	mov	edx, 8
	call	m4aMPlayFadeOut
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_SE3[rip]
	mov	edx, 8
	add	rsp, 48
	pop	rbx
	jmp	m4aMPlayFadeOut
	.seh_endproc
	.p2align 4
	.globl	DisplayOverScreenTextSprites
	.def	DisplayOverScreenTextSprites;	.scl	2;	.type	32;	.endef
	.seh_proc	DisplayOverScreenTextSprites
DisplayOverScreenTextSprites:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	lea	rcx, 16[rcx]
	call	DisplaySprite
	lea	rcx, 80[rbx]
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	UpdateTimeOverScreenSprites
	.def	UpdateTimeOverScreenSprites;	.scl	2;	.type	32;	.endef
	.seh_proc	UpdateTimeOverScreenSprites
UpdateTimeOverScreenSprites:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	eax, DWORD PTR 144[rcx]
	lea	rdx, 16[rcx]
	lea	rbx, 80[rcx]
	cmp	eax, 140
	jbe	.L34
	lea	eax, -160[rax+rax]
.L35:
	mov	WORD PTR 54[rcx], ax
	mov	WORD PTR 118[rcx], ax
	mov	rcx, rdx
	call	DisplaySprite
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L34:
	cmp	eax, 40
	jbe	.L38
	mov	eax, 213
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L38:
	test	eax, eax
	je	.L33
	mov	r8d, 40
	sub	r8d, eax
	mov	eax, 213
	add	r8d, r8d
	sub	eax, r8d
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L33:
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_TimeOverScreenMain
	.def	Task_TimeOverScreenMain;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_TimeOverScreenMain
Task_TimeOverScreenMain:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	ecx, 16367
	mov	rax, QWORD PTR [rax]
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	mov	WORD PTR [rax], cx
	mov	eax, DWORD PTR 144[rbx]
	cmp	eax, 150
	je	.L45
	cmp	eax, 140
	jne	.L42
	mov	rax, QWORD PTR .LC3[rip]
	mov	DWORD PTR 8[rbx], 16272
	mov	QWORD PTR [rbx], rax
.L41:
	mov	rcx, rbx
	call	UpdateScreenFade
	sub	DWORD PTR 144[rbx], 1
	je	.L46
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	UpdateTimeOverScreenSprites
	.p2align 4,,10
	.p2align 3
.L42:
	cmp	eax, 30
	jne	.L41
	mov	rax, QWORD PTR .LC16[rip]
	mov	DWORD PTR 8[rbx], 16336
	mov	QWORD PTR [rbx], rax
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L45:
	mov	rax, QWORD PTR .LC6[rip]
	mov	DWORD PTR 8[rbx], 16272
	mov	QWORD PTR [rbx], rax
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L46:
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
	mov	rax, QWORD PTR .refptr.gRingCount[rip]
	xor	edx, edx
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 1
	je	.L47
	add	rsp, 32
	pop	rbx
	jmp	CreateGameStage
	.p2align 4,,10
	.p2align 3
.L47:
	add	rsp, 32
	pop	rbx
	jmp	CreateTimeAttackLobbyScreen
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC3:
	.word	1
	.word	2
	.word	0
	.word	512
	.align 8
.LC6:
	.word	1
	.word	1
	.word	0
	.word	1024
	.align 8
.LC8:
	.word	1
	.word	2
	.word	0
	.word	1024
	.align 8
.LC9:
	.word	1
	.word	1
	.word	0
	.word	64
	.align 8
.LC12:
	.word	1
	.word	1
	.word	0
	.word	256
	.align 8
.LC16:
	.word	1
	.word	1
	.word	0
	.word	512
	.ident	"GCC: (GNU) 13-win32"
	.def	UpdateScreenFade;	.scl	2;	.type	32;	.endef
	.def	TasksDestroyInPriorityRange;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	CreateTitleScreen;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayFadeOut;	.scl	2;	.type	32;	.endef
	.def	CreateGameStage;	.scl	2;	.type	32;	.endef
	.def	CreateTimeAttackLobbyScreen;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gRingCount, "dr"
	.globl	.refptr.gRingCount
	.linkonce	discard
.refptr.gRingCount:
	.quad	gRingCount
	.section	.rdata$.refptr.gMPlayInfo_SE3, "dr"
	.globl	.refptr.gMPlayInfo_SE3
	.linkonce	discard
.refptr.gMPlayInfo_SE3:
	.quad	gMPlayInfo_SE3
	.section	.rdata$.refptr.gMPlayInfo_SE2, "dr"
	.globl	.refptr.gMPlayInfo_SE2
	.linkonce	discard
.refptr.gMPlayInfo_SE2:
	.quad	gMPlayInfo_SE2
	.section	.rdata$.refptr.gMPlayInfo_SE1, "dr"
	.globl	.refptr.gMPlayInfo_SE1
	.linkonce	discard
.refptr.gMPlayInfo_SE1:
	.quad	gMPlayInfo_SE1
	.section	.rdata$.refptr.gMPlayInfo_BGM, "dr"
	.globl	.refptr.gMPlayInfo_BGM
	.linkonce	discard
.refptr.gMPlayInfo_BGM:
	.quad	gMPlayInfo_BGM
	.section	.rdata$.refptr.gBgPalette, "dr"
	.globl	.refptr.gBgPalette
	.linkonce	discard
.refptr.gBgPalette:
	.quad	gBgPalette
	.section	.rdata$.refptr.gFlags, "dr"
	.globl	.refptr.gFlags
	.linkonce	discard
.refptr.gFlags:
	.quad	gFlags
	.section	.rdata$.refptr.gWinRegs, "dr"
	.globl	.refptr.gWinRegs
	.linkonce	discard
.refptr.gWinRegs:
	.quad	gWinRegs
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
	.section	.rdata$.refptr.gBldRegs, "dr"
	.globl	.refptr.gBldRegs
	.linkonce	discard
.refptr.gBldRegs:
	.quad	gBldRegs
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
