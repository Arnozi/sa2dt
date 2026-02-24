	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	sub_808EC64;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_808EC64
sub_808EC64:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR 24[rcx]
	cmp	BYTE PTR 109[rax], 0
	je	.L2
	mov	rdx, QWORD PTR .refptr.gPressedKeys[rip]
	test	BYTE PTR [rdx], 8
	jne	.L9
.L2:
	mov	edx, DWORD PTR 116[rax]
	test	edx, edx
	je	.L3
	sub	edx, 1
	mov	DWORD PTR 116[rax], edx
	ret
	.p2align 4,,10
	.p2align 3
.L3:
	lea	rax, sub_808EC28[rip]
	mov	QWORD PTR 40[rcx], rax
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	lea	rdx, sub_808ECB4[rip]
	mov	QWORD PTR 40[rcx], rdx
	jmp	.L2
	.seh_endproc
	.p2align 4
	.def	TaskDestroy_CreditsCutScene;	.scl	3;	.type	32;	.endef
	.seh_proc	TaskDestroy_CreditsCutScene
TaskDestroy_CreditsCutScene:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.def	sub_808EBC4;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_808EBC4
sub_808EBC4:
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
	je	.L12
	mov	rdx, QWORD PTR .refptr.gPressedKeys[rip]
	test	BYTE PTR [rdx], 8
	jne	.L17
.L12:
	call	UpdateScreenFade
	cmp	al, 1
	jne	.L11
	xor	eax, eax
	lea	rdx, sub_808EC64[rip]
	mov	WORD PTR 100[rbx], ax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdx
.L11:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L17:
	lea	rdx, sub_808ECB4[rip]
	mov	QWORD PTR 40[rax], rdx
	jmp	.L12
	.seh_endproc
	.p2align 4
	.def	sub_808EC28;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_808EC28
sub_808EC28:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, QWORD PTR .refptr.gCurTask[rip]
	mov	edx, 1
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	mov	WORD PTR 98[rbx], dx
	lea	rcx, 96[rbx]
	call	UpdateScreenFade
	cmp	al, 1
	jne	.L18
	xor	eax, eax
	lea	rdx, sub_808ED04[rip]
	mov	WORD PTR 100[rbx], ax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdx
.L18:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.def	sub_808ED04;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_808ED04
sub_808ED04:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rbx]
	mov	rax, QWORD PTR 24[rax]
	movzx	edx, BYTE PTR 110[rax]
	movzx	r8d, BYTE PTR 111[rax]
	movzx	ecx, BYTE PTR 108[rax]
	add	edx, 1
	mov	BYTE PTR 110[rax], dl
	cmp	r8b, 3
	ja	.L21
	movzx	edx, dl
	call	CreateCreditsSlidesCutScene
	mov	rcx, QWORD PTR [rbx]
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.p2align 4,,10
	.p2align 3
.L21:
	call	CreateCreditsEndCutScene
	mov	rcx, QWORD PTR [rbx]
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.def	sub_808ECB4;	.scl	3;	.type	32;	.endef
	.seh_proc	sub_808ECB4
sub_808ECB4:
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
	je	.L25
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L25:
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
	.globl	CreateCreditsCutScene
	.def	CreateCreditsCutScene;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateCreditsCutScene
CreateCreditsCutScene:
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
	mov	r10d, 4416
	mov	r11d, 23552
	xor	r9d, r9d
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	WORD PTR [rax], r10w
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	WORD PTR [rax], r11w
	mov	rax, QWORD PTR .refptr.gBgScrollRegs[rip]
	mov	esi, ecx
	mov	ebx, edx
	mov	edi, r8d
	mov	ebp, ecx
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	lea	rcx, sub_808EBC4[rip]
	mov	r8d, 12544
	mov	edx, 120
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	mov	DWORD PTR [rax], 553582592
	lea	rax, TaskDestroy_CreditsCutScene[rip]
	mov	QWORD PTR 32[rsp], rax
	call	TaskCreate
	mov	rcx, QWORD PTR 24[rax]
	xor	eax, eax
	mov	WORD PTR 114[rcx], ax
	mov	BYTE PTR 108[rcx], sil
	mov	BYTE PTR 110[rcx], bl
	mov	BYTE PTR 111[rcx], dil
	mov	DWORD PTR 116[rcx], 180
	cmp	sil, 2
	je	.L33
	mov	BYTE PTR 112[rcx], 0
	cmp	sil, 1
	jne	.L31
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	xor	edx, edx
	mov	rax, QWORD PTR [rax]
	cmp	BYTE PTR 25[rax], 0
	je	.L29
.L28:
	xor	eax, eax
	movzx	ebx, bl
	xor	r8d, r8d
	xor	r9d, r9d
	mov	WORD PTR 96[rcx], ax
	mov	rax, QWORD PTR .LC1[rip]
	add	ebx, edx
	movsx	rbx, ebx
	mov	BYTE PTR 109[rcx], bpl
	mov	QWORD PTR 100[rcx], rax
	mov	rax, QWORD PTR .refptr.VRAM[rip]
	mov	WORD PTR 18[rcx], r8w
	mov	QWORD PTR 8[rcx], rax
	add	rax, 57344
	mov	QWORD PTR 24[rcx], rax
	lea	rax, gUnknown_080E1244[rip]
	movzx	eax, WORD PTR [rax+rbx*2]
	mov	DWORD PTR 44[rcx], 0
	mov	QWORD PTR 50[rcx], 0
	mov	WORD PTR 48[rcx], ax
	mov	DWORD PTR 58[rcx], 1310750
	mov	BYTE PTR 62[rcx], 0
	mov	WORD PTR 66[rcx], r9w
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	DrawBackground
	.p2align 4,,10
	.p2align 3
.L33:
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	BYTE PTR 112[rcx], 5
	mov	edx, 5
	mov	rax, QWORD PTR [rax]
	cmp	BYTE PTR 27[rax], 0
	jne	.L28
.L29:
	xor	ebp, ebp
	jmp	.L28
	.p2align 4,,10
	.p2align 3
.L31:
	xor	edx, edx
	xor	ebp, ebp
	jmp	.L28
	.seh_endproc
	.section .rdata,"dr"
	.align 16
gUnknown_080E1244:
	.word	227
	.word	228
	.word	229
	.word	230
	.word	231
	.word	211
	.word	212
	.word	213
	.word	214
	.word	215
	.align 8
.LC1:
	.word	0
	.word	256
	.word	16383
	.word	0
	.ident	"GCC: (GNU) 13-win32"
	.def	UpdateScreenFade;	.scl	2;	.type	32;	.endef
	.def	CreateCreditsSlidesCutScene;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	CreateCreditsEndCutScene;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayFadeOutTemporarily;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	DrawBackground;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.VRAM, "dr"
	.globl	.refptr.VRAM
	.linkonce	discard
.refptr.VRAM:
	.quad	VRAM
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
