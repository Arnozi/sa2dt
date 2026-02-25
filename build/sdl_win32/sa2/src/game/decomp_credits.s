	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	TaskDestructor_DecompCredits
	.def	TaskDestructor_DecompCredits;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_DecompCredits
TaskDestructor_DecompCredits:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, QWORD PTR 24[rcx]
	mov	ecx, 232
	call	m4aSongNumStop
	call	Debug_TextPrinterDestroy
	mov	rcx, QWORD PTR 8[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 72[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 136[rbx]
	call	VramFree
	mov	rcx, QWORD PTR 200[rbx]
	call	VramFree
	mov	rdx, QWORD PTR 288[rbx]
	mov	rax, QWORD PTR .refptr.gIntrTable[rip]
	mov	rsi, QWORD PTR .refptr.gFlags[rip]
	mov	QWORD PTR 16[rax], rdx
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyQueueIndex[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyCursor[rip]
	mov	BYTE PTR [rax], dl
	mov	eax, DWORD PTR [rsi]
	test	ah, 1
	jne	.L8
	cmp	BYTE PTR 256[rbx], 0
	je	.L9
	test	ah, 16
	jne	.L10
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	CreateTitleScreen
	.p2align 4,,10
	.p2align 3
.L10:
	call	CreateTitleScreenAndSkipIntro
	and	DWORD PTR [rsi], -4097
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	call	CreateTitleScreen
	nop
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	LoadCompletedSaveGame
	.p2align 4,,10
	.p2align 3
.L9:
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	CreateNewProfileScreen
	.seh_endproc
	.p2align 4
	.globl	customHBlank
	.def	customHBlank;	.scl	2;	.type	32;	.endef
	.seh_proc	customHBlank
customHBlank:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.REG_BASE[rip]
	movzx	eax, WORD PTR 6[rax]
	lea	edx, -223[rax]
	cmp	dx, 15
	jbe	.L14
	sub	eax, 119
	cmp	ax, 119
	mov	rax, QWORD PTR .refptr.PLTT[rip]
	ja	.L13
	movzx	edx, WORD PTR 608[rax]
	mov	WORD PTR [rax], dx
	ret
	.p2align 4,,10
	.p2align 3
.L14:
	mov	rax, QWORD PTR .refptr.PLTT[rip]
	mov	edx, 32767
	mov	WORD PTR [rax], dx
	ret
	.p2align 4,,10
	.p2align 3
.L13:
	movzx	edx, WORD PTR 576[rax]
	mov	WORD PTR [rax], dx
	ret
	.seh_endproc
	.p2align 4
	.globl	logoOllieMove
	.def	logoOllieMove;	.scl	2;	.type	32;	.endef
	.seh_proc	logoOllieMove
logoOllieMove:
	.seh_endprologue
	sal	ecx, 16
	movsx	rdx, ecx
	imul	rdx, rdx, -2004318071
	shr	rdx, 32
	add	edx, ecx
	sar	ecx, 31
	sar	edx, 13
	sub	edx, ecx
	mov	eax, edx
	imul	eax, edx
	sar	eax, 8
	imul	eax, edx
	sar	eax, 8
	imul	eax, edx
	sar	eax, 8
	imul	eax, edx
	sar	eax, 8
	add	eax, 256
	je	.L15
	mov	ecx, eax
	xor	edx, edx
	mov	eax, 65536
	idiv	ecx
.L15:
	ret
	.seh_endproc
	.p2align 4
	.globl	CreateDecompCreditsScreen
	.def	CreateDecompCreditsScreen;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateDecompCreditsScreen
CreateDecompCreditsScreen:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	xor	edx, edx
	mov	esi, ecx
	xor	ecx, ecx
	call	Debug_CreateAsciiTask
	xor	r9d, r9d
	xor	r8d, r8d
	mov	edx, 296
	lea	rax, TaskDestructor_DecompCredits[rip]
	lea	rcx, Task_DecompCreditsFirst[rip]
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	ecx, 64
	mov	rbx, QWORD PTR 24[rax]
	xor	eax, eax
	mov	BYTE PTR 256[rbx], sil
	mov	WORD PTR 258[rbx], ax
	mov	DWORD PTR 260[rbx], 0
	mov	DWORD PTR 284[rbx], -8387328
	mov	DWORD PTR 38[rbx], 6880772
	call	VramMalloc
	xor	edx, edx
	mov	ecx, -252
	mov	BYTE PTR 53[rbx], 0
	mov	QWORD PTR 8[rbx], rax
	movsx	eax, WORD PTR 38[rbx]
	mov	WORD PTR 36[rbx], dx
	sal	eax, 8
	mov	WORD PTR 48[rbx], cx
	mov	ecx, 64
	mov	DWORD PTR 16[rbx], 589824
	mov	DWORD PTR 42[rbx], 1152
	mov	DWORD PTR 56[rbx], -1
	mov	DWORD PTR 32[rbx], 9216
	mov	BYTE PTR 50[rbx], 64
	mov	DWORD PTR 268[rbx], eax
	mov	DWORD PTR 102[rbx], 12583434
	call	VramMalloc
	movzx	esi, WORD PTR .LC6[rip]
	xor	r8d, r8d
	mov	DWORD PTR 80[rbx], 12517376
	mov	QWORD PTR 72[rbx], rax
	movsx	eax, WORD PTR 102[rbx]
	mov	ecx, 64
	mov	WORD PTR 100[rbx], r8w
	sal	eax, 8
	mov	DWORD PTR 106[rbx], 1152
	mov	WORD PTR 112[rbx], si
	mov	DWORD PTR 120[rbx], -1
	mov	DWORD PTR 96[rbx], 8192
	mov	BYTE PTR 117[rbx], 1
	mov	BYTE PTR 114[rbx], 24
	mov	DWORD PTR 272[rbx], eax
	mov	DWORD PTR 166[rbx], 5767405
	call	VramMalloc
	mov	edi, DWORD PTR .LC8[rip]
	xor	r9d, r9d
	mov	r10d, -255
	mov	QWORD PTR 136[rbx], rax
	movsx	eax, WORD PTR 166[rbx]
	mov	ecx, 64
	mov	DWORD PTR 144[rbx], edi
	sal	eax, 8
	mov	WORD PTR 164[rbx], r9w
	mov	DWORD PTR 276[rbx], eax
	movzx	eax, WORD PTR 102[rbx]
	mov	DWORD PTR 170[rbx], 1152
	lea	edx, -64[rax]
	movzx	eax, WORD PTR 104[rbx]
	mov	WORD PTR 176[rbx], r10w
	movzx	edx, dx
	mov	BYTE PTR 178[rbx], 16
	sal	eax, 16
	mov	BYTE PTR 181[rbx], 2
	mov	DWORD PTR 184[rbx], -1
	or	eax, edx
	mov	DWORD PTR 160[rbx], 9216
	mov	DWORD PTR 230[rbx], eax
	call	VramMalloc
	mov	rdx, QWORD PTR .refptr.gDispCnt[rip]
	mov	DWORD PTR 208[rbx], edi
	xor	r11d, r11d
	mov	QWORD PTR 200[rbx], rax
	movsx	eax, WORD PTR 230[rbx]
	lea	rdi, customHBlank[rip]
	mov	ecx, 44
	mov	WORD PTR 228[rbx], r11w
	sal	eax, 8
	mov	WORD PTR 240[rbx], si
	mov	DWORD PTR 280[rbx], eax
	movzx	eax, WORD PTR [rdx]
	mov	DWORD PTR 234[rbx], 1152
	and	al, 127
	mov	BYTE PTR 242[rbx], 16
	or	ax, 4160
	mov	BYTE PTR 245[rbx], 3
	mov	WORD PTR [rdx], ax
	mov	rax, QWORD PTR .refptr.gIntrTable[rip]
	mov	DWORD PTR 248[rbx], -1
	mov	DWORD PTR 224[rbx], 8192
	mov	rdx, QWORD PTR 16[rax]
	mov	QWORD PTR 16[rax], rdi
	mov	QWORD PTR 288[rbx], rdx
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	m4aSongNumStart
	.seh_endproc
	.section .rdata,"dr"
.LC10:
	.ascii "Game decompiled by:\0"
.LC11:
	.ascii "@freshollie\0"
.LC12:
	.ascii "@JaceCear\0"
.LC13:
	.ascii "Press START to continue\0"
	.text
	.p2align 4
	.globl	UpdateSprites
	.def	UpdateSprites;	.scl	2;	.type	32;	.endef
	.seh_proc	UpdateSprites
UpdateSprites:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rdx, QWORD PTR .refptr.REG_BASE[rip]
	mov	r8d, 16
	movzx	eax, WORD PTR 512[rdx]
	or	eax, 2
	mov	WORD PTR 512[rdx], ax
	mov	edx, 8
	mov	rbx, rcx
	lea	rcx, .LC10[rip]
	call	Debug_PrintTextAt
	mov	rcx, rbx
	lea	rsi, 64[rbx]
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	call	DisplaySprite
	movsx	eax, WORD PTR 284[rbx]
	mov	rcx, rsi
	add	eax, DWORD PTR 268[rbx]
	mov	DWORD PTR 268[rbx], eax
	sar	eax, 8
	mov	WORD PTR 38[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	lea	rsi, 128[rbx]
	call	DisplaySprite
	movsx	eax, WORD PTR 286[rbx]
	mov	rcx, rsi
	movzx	edi, WORD PTR 82[rbx]
	add	eax, DWORD PTR 272[rbx]
	mov	DWORD PTR 272[rbx], eax
	sar	eax, 8
	mov	WORD PTR 102[rbx], ax
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	lea	rsi, 192[rbx]
	call	DisplaySprite
	mov	eax, DWORD PTR 276[rbx]
	movzx	r8d, WORD PTR 168[rbx]
	mov	edx, 16
	lea	rcx, .LC11[rip]
	sar	eax, 8
	mov	WORD PTR 166[rbx], ax
	call	Debug_PrintTextAt
	mov	rcx, rsi
	call	UpdateSpriteAnimation
	mov	rcx, rsi
	call	DisplaySprite
	movsx	eax, WORD PTR 286[rbx]
	add	eax, DWORD PTR 280[rbx]
	mov	edx, 16
	mov	DWORD PTR 280[rbx], eax
	sar	eax, 8
	lea	rcx, .LC12[rip]
	mov	WORD PTR 230[rbx], ax
	movzx	eax, WORD PTR 232[rbx]
	lea	r8d, 8[rax]
	movzx	r8d, r8w
	call	Debug_PrintTextAt
	cmp	di, 215
	je	.L23
.L21:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	test	BYTE PTR 258[rbx], 32
	jne	.L21
	mov	r8d, 240
	mov	edx, 8
	lea	rcx, .LC13[rip]
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	Debug_PrintTextAt
	.seh_endproc
	.p2align 4
	.globl	Task_DecompCreditsFirst
	.def	Task_DecompCreditsFirst;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_DecompCreditsFirst
Task_DecompCreditsFirst:
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
	call	UpdateSprites
	cmp	WORD PTR 230[rbx], 237
	jg	.L25
	mov	r10d, 215
	xor	r11d, r11d
	mov	BYTE PTR 112[rbx], 0
	mov	WORD PTR 82[rbx], r10w
	mov	WORD PTR 286[rbx], r11w
	mov	BYTE PTR 114[rbx], 16
.L25:
	movsx	eax, WORD PTR 166[rbx]
	movsx	edx, WORD PTR 38[rbx]
	sub	eax, 20
	cmp	eax, edx
	jle	.L26
	movzx	ecx, WORD PTR 284[rbx]
	test	cx, cx
	jle	.L37
.L32:
	mov	rax, QWORD PTR .refptr.gInput[rip]
	test	BYTE PTR [rax], 8
	jne	.L38
.L33:
	add	WORD PTR 258[rbx], 1
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L26:
	mov	r9d, DWORD PTR 260[rbx]
	test	r9d, r9d
	je	.L39
	movzx	ecx, WORD PTR 284[rbx]
	test	cx, cx
	jle	.L29
.L40:
	sub	ecx, 20
.L30:
	movzx	eax, WORD PTR 258[rbx]
	sub	eax, DWORD PTR 260[rbx]
	mov	WORD PTR 284[rbx], cx
	sal	eax, 16
	movsx	rdx, eax
	imul	rdx, rdx, -2004318071
	shr	rdx, 32
	add	edx, eax
	sar	eax, 31
	sar	edx, 13
	sub	edx, eax
	mov	eax, edx
	imul	eax, edx
	sar	eax, 8
	imul	eax, edx
	sar	eax, 8
	imul	eax, edx
	sar	eax, 8
	imul	eax, edx
	sar	eax, 8
	add	eax, 256
	je	.L31
	mov	r8d, eax
	xor	edx, edx
	mov	eax, 65536
	idiv	r8d
.L31:
	add	DWORD PTR 276[rbx], eax
	test	cx, cx
	jg	.L32
.L37:
	cmp	WORD PTR 38[rbx], 228
	jg	.L32
	xor	eax, eax
	mov	edx, 34
	lea	rcx, Task_SonicArrived[rip]
	mov	BYTE PTR 48[rbx], 0
	mov	WORD PTR 284[rbx], ax
	mov	rax, QWORD PTR [rsi]
	mov	WORD PTR 18[rbx], dx
	mov	BYTE PTR 50[rbx], 16
	mov	QWORD PTR 40[rax], rcx
	mov	rax, QWORD PTR .refptr.gInput[rip]
	test	BYTE PTR [rax], 8
	je	.L33
.L38:
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L39:
	movzx	eax, WORD PTR 258[rbx]
	mov	ecx, 232
	and	DWORD PTR 160[rbx], -1025
	mov	DWORD PTR 260[rbx], eax
	call	m4aSongNumStart
	movzx	ecx, WORD PTR 284[rbx]
	mov	r8d, 8
	mov	BYTE PTR 48[rbx], 0
	mov	WORD PTR 18[rbx], r8w
	test	cx, cx
	jg	.L40
.L29:
	mov	ecx, 232
	call	m4aSongNumStop
	mov	ecx, 9
	and	DWORD PTR 32[rbx], -1025
	mov	WORD PTR 18[rbx], cx
	mov	ecx, -384
	mov	BYTE PTR 48[rbx], 2
	mov	BYTE PTR 50[rbx], 24
	jmp	.L30
	.seh_endproc
	.p2align 4
	.globl	Task_SonicArrived
	.def	Task_SonicArrived;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_SonicArrived
Task_SonicArrived:
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
	call	UpdateSprites
	cmp	WORD PTR 230[rbx], 237
	jg	.L42
	mov	ecx, 215
	xor	r8d, r8d
	mov	BYTE PTR 112[rbx], 0
	mov	WORD PTR 82[rbx], cx
	mov	WORD PTR 286[rbx], r8w
	mov	BYTE PTR 114[rbx], 16
.L42:
	mov	eax, DWORD PTR 264[rbx]
	cmp	eax, 420
	jle	.L43
	mov	edx, 1
	mov	BYTE PTR 48[rbx], 0
	mov	WORD PTR 18[rbx], dx
.L43:
	mov	rdx, QWORD PTR .refptr.gInput[rip]
	test	BYTE PTR [rdx], 8
	jne	.L45
	add	WORD PTR 258[rbx], 1
	add	eax, 1
	mov	DWORD PTR 264[rbx], eax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L45:
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.seh_endproc
	.section .rdata,"dr"
	.align 2
.LC6:
	.byte	0
	.byte	-1
	.align 4
.LC8:
	.word	0
	.word	1133
	.ident	"GCC: (GNU) 13-win32"
	.def	m4aSongNumStop;	.scl	2;	.type	32;	.endef
	.def	Debug_TextPrinterDestroy;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	CreateTitleScreen;	.scl	2;	.type	32;	.endef
	.def	CreateTitleScreenAndSkipIntro;	.scl	2;	.type	32;	.endef
	.def	LoadCompletedSaveGame;	.scl	2;	.type	32;	.endef
	.def	CreateNewProfileScreen;	.scl	2;	.type	32;	.endef
	.def	Debug_CreateAsciiTask;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	Debug_PrintTextAt;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gInput, "dr"
	.globl	.refptr.gInput
	.linkonce	discard
.refptr.gInput:
	.quad	gInput
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
	.section	.rdata$.refptr.gDispCnt, "dr"
	.globl	.refptr.gDispCnt
	.linkonce	discard
.refptr.gDispCnt:
	.quad	gDispCnt
	.section	.rdata$.refptr.PLTT, "dr"
	.globl	.refptr.PLTT
	.linkonce	discard
.refptr.PLTT:
	.quad	PLTT
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
	.section	.rdata$.refptr.gIntrTable, "dr"
	.globl	.refptr.gIntrTable
	.linkonce	discard
.refptr.gIntrTable:
	.quad	gIntrTable
