	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	sub_808F068
	.def	sub_808F068;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808F068
sub_808F068:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rcx]
	mov	edx, DWORD PTR 116[rax]
	test	edx, edx
	je	.L2
	sub	edx, 1
	mov	DWORD PTR 116[rax], edx
.L3:
	cmp	BYTE PTR 109[rax], 0
	je	.L1
	mov	rax, QWORD PTR .refptr.gPressedKeys[rip]
	test	BYTE PTR [rax], 8
	je	.L1
	lea	rax, sub_808F0BC[rip]
	mov	QWORD PTR 40[rcx], rax
.L1:
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	lea	rdx, sub_808EF38[rip]
	mov	DWORD PTR 116[rax], 150
	mov	QWORD PTR 40[rcx], rdx
	jmp	.L3
	.seh_endproc
	.p2align 4
	.globl	sub_808F148
	.def	sub_808F148;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808F148
sub_808F148:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	sub_808EF38
	.def	sub_808EF38;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808EF38
sub_808EF38:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	r10d, 1
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 98[rbx], r10w
	lea	rcx, 96[rbx]
	call	UpdateScreenFade
	cmp	al, 1
	je	.L17
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L17:
	movzx	eax, BYTE PTR 112[rbx]
	xor	r9d, r9d
	mov	WORD PTR 100[rbx], r9w
	add	eax, 1
	mov	BYTE PTR 112[rbx], al
	cmp	al, BYTE PTR 113[rbx]
	jnb	.L12
	movzx	eax, al
	lea	rdx, sTilemapsCreditsSlides[rip]
	movzx	eax, WORD PTR [rdx+rax*2]
	test	ax, ax
	jne	.L18
.L13:
	mov	rax, QWORD PTR [rsi]
	lea	rdx, sub_808F004[rip]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L12:
	mov	rax, QWORD PTR [rsi]
	lea	rdx, sub_808F10C[rip]
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L18:
	mov	rdx, QWORD PTR .refptr.VRAM[rip]
	mov	r8d, 1
	mov	WORD PTR 48[rbx], ax
	mov	DWORD PTR 44[rbx], 0
	lea	rcx, 16384[rdx]
	add	rdx, 57344
	mov	QWORD PTR 50[rbx], 0
	mov	QWORD PTR 8[rbx], rcx
	xor	ecx, ecx
	mov	WORD PTR 18[rbx], cx
	mov	rcx, rbx
	mov	QWORD PTR 24[rbx], rdx
	mov	DWORD PTR 58[rbx], 1310750
	mov	BYTE PTR 62[rbx], 0
	mov	WORD PTR 66[rbx], r8w
	call	DrawBackground
	jmp	.L13
	.seh_endproc
	.p2align 4
	.globl	sub_808F004
	.def	sub_808F004;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808F004
sub_808F004:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	edx, 2
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	cmp	BYTE PTR 109[rbx], 0
	mov	WORD PTR 98[rbx], dx
	lea	rcx, 96[rbx]
	je	.L20
	mov	rdx, QWORD PTR .refptr.gPressedKeys[rip]
	test	BYTE PTR [rdx], 8
	jne	.L25
.L20:
	call	UpdateScreenFade
	cmp	al, 1
	jne	.L19
	xor	eax, eax
	lea	rdx, sub_808F068[rip]
	mov	WORD PTR 100[rbx], ax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdx
.L19:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L25:
	lea	rdx, sub_808F0BC[rip]
	mov	QWORD PTR 40[rax], rdx
	jmp	.L20
	.seh_endproc
	.p2align 4
	.globl	sub_808F0BC
	.def	sub_808F0BC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808F0BC
sub_808F0BC:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	edx, 1
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_BGM[rip]
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 98[rbx], dx
	mov	edx, 24
	call	m4aMPlayFadeOutTemporarily
	lea	rcx, 96[rbx]
	call	UpdateScreenFade
	cmp	al, 1
	je	.L28
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L28:
	xor	eax, eax
	movzx	ecx, BYTE PTR 108[rbx]
	mov	WORD PTR 100[rbx], ax
	call	CreateCreditsEndCutScene
	mov	rcx, QWORD PTR [rsi]
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.globl	sub_808F10C
	.def	sub_808F10C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_808F10C
sub_808F10C:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rbx]
	mov	rax, QWORD PTR 24[rax]
	movzx	edx, BYTE PTR 111[rax]
	movzx	ecx, BYTE PTR 108[rax]
	lea	r8d, 1[rdx]
	movzx	edx, BYTE PTR 110[rax]
	mov	BYTE PTR 111[rax], r8b
	movzx	r8d, r8b
	call	CreateCreditsCutScene
	mov	rcx, QWORD PTR [rbx]
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.globl	CreateCreditsSlidesCutScene
	.def	CreateCreditsSlidesCutScene;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateCreditsSlidesCutScene
CreateCreditsSlidesCutScene:
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
	mov	r11d, 4673
	xor	r9d, r9d
	mov	WORD PTR [rax], r11w
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	edi, edx
	mov	edx, 7172
	mov	esi, ecx
	mov	ebx, r8d
	mov	WORD PTR 2[rax], dx
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	edx, 128
	lea	rcx, sub_808F004[rip]
	mov	r8d, 12544
	mov	DWORD PTR 4[rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	mov	BYTE PTR 1[rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	mov	DWORD PTR 4[rax], 553582592
	lea	rax, sub_808F148[rip]
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	rcx, QWORD PTR 24[rax]
	mov	BYTE PTR 108[rcx], sil
	mov	BYTE PTR 110[rcx], dil
	mov	BYTE PTR 111[rcx], bl
	mov	BYTE PTR 114[rcx], 0
	mov	DWORD PTR 116[rcx], 150
	mov	BYTE PTR 112[rcx], 0
	cmp	sil, 1
	je	.L39
	xor	eax, eax
	cmp	sil, 2
	je	.L40
.L32:
	mov	BYTE PTR 109[rcx], al
	movzx	edx, bl
	lea	rax, gUnknown_080E12AA[rip]
	movzx	r9d, BYTE PTR [rax+rdx]
	test	bl, bl
	je	.L33
	mov	r8, rdx
	xor	edx, edx
	add	r8, rax
	.p2align 4,,10
	.p2align 3
.L34:
	add	dl, BYTE PTR [rax]
	add	rax, 1
	cmp	rax, r8
	jne	.L34
	mov	rax, QWORD PTR .LC1[rip]
	add	r9d, edx
	mov	BYTE PTR 112[rcx], dl
	movzx	edx, dl
	mov	r10d, 1
	mov	BYTE PTR 113[rcx], r9b
	mov	QWORD PTR 100[rcx], rax
	lea	rax, sTilemapsCreditsSlides[rip]
	movzx	eax, WORD PTR [rax+rdx*2]
	mov	WORD PTR 96[rcx], r10w
	test	ax, ax
	jne	.L36
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L40:
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rax, QWORD PTR [rax]
	cmp	BYTE PTR 27[rax], 0
	setne	al
	add	eax, eax
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L39:
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rax, QWORD PTR [rax]
	cmp	BYTE PTR 25[rax], 0
	setne	al
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L33:
	mov	eax, 1
	mov	BYTE PTR 113[rcx], r9b
	mov	WORD PTR 96[rcx], ax
	mov	rax, QWORD PTR .LC1[rip]
	mov	QWORD PTR 100[rcx], rax
	mov	eax, 234
.L36:
	mov	rdx, QWORD PTR .refptr.VRAM[rip]
	mov	r9d, 1
	mov	WORD PTR 48[rcx], ax
	mov	DWORD PTR 44[rcx], 0
	lea	r8, 16384[rdx]
	add	rdx, 57344
	mov	QWORD PTR 50[rcx], 0
	mov	QWORD PTR 8[rcx], r8
	xor	r8d, r8d
	mov	WORD PTR 18[rcx], r8w
	mov	QWORD PTR 24[rcx], rdx
	mov	DWORD PTR 58[rcx], 1310750
	mov	BYTE PTR 62[rcx], 0
	mov	WORD PTR 66[rcx], r9w
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	DrawBackground
	.seh_endproc
	.section .rdata,"dr"
gUnknown_080E12AA:
	.ascii "\6\6\10\5\0\0"
	.align 32
sTilemapsCreditsSlides:
	.word	234
	.word	235
	.word	236
	.word	237
	.word	238
	.word	239
	.word	240
	.word	241
	.word	242
	.word	243
	.word	244
	.word	245
	.word	246
	.word	247
	.word	248
	.word	249
	.word	250
	.word	251
	.word	252
	.word	253
	.word	254
	.word	255
	.word	256
	.word	257
	.word	258
	.align 8
.LC1:
	.word	0
	.word	512
	.word	16383
	.word	0
	.ident	"GCC: (GNU) 13-win32"
	.def	UpdateScreenFade;	.scl	2;	.type	32;	.endef
	.def	DrawBackground;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayFadeOutTemporarily;	.scl	2;	.type	32;	.endef
	.def	CreateCreditsEndCutScene;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	CreateCreditsCutScene;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr.gMPlayInfo_BGM, "dr"
	.globl	.refptr.gMPlayInfo_BGM
	.linkonce	discard
.refptr.gMPlayInfo_BGM:
	.quad	gMPlayInfo_BGM
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
	.section	.rdata$.refptr.gPressedKeys, "dr"
	.globl	.refptr.gPressedKeys
	.linkonce	discard
.refptr.gPressedKeys:
	.quad	gPressedKeys
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
