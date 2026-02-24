	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	TaskDestructor_80945A0
	.def	TaskDestructor_80945A0;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_80945A0
TaskDestructor_80945A0:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_8094360
	.def	Task_8094360;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_8094360
Task_8094360:
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
	mov	rsi, QWORD PTR .refptr.gDispCnt[rip]
	mov	rax, QWORD PTR [rdi]
	movzx	edx, WORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	cmp	BYTE PTR 269[rbx], 0
	jne	.L4
	movsx	eax, BYTE PTR 271[rbx]
	mov	rbp, QWORD PTR .refptr.gBgScrollRegs[rip]
	cmp	al, 1
	jg	.L10
.L5:
	mov	edx, 175
	mov	rcx, rbx
	or	WORD PTR [rsi], 256
	mov	WORD PTR 48[rbx], dx
	mov	DWORD PTR 0[rbp], 0
	call	DrawBackground
.L6:
	mov	rax, QWORD PTR [rdi]
	lea	rdi, sub_809449C[rip]
	mov	QWORD PTR 40[rax], rdi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L10:
	or	dh, 2
	sub	eax, 1
	lea	rcx, 96[rbx]
	mov	DWORD PTR 4[rbp], 26214400
	mov	WORD PTR [rsi], dx
	cdqe
	lea	rdx, sTilemapsPlayerNotifs[rip]
	movzx	eax, WORD PTR [rdx+rax*2]
	mov	WORD PTR 144[rbx], ax
	call	DrawBackground
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L4:
	mov	eax, 181
	mov	rbp, QWORD PTR .refptr.gBgScrollRegs[rip]
	or	dh, 1
	mov	rcx, rbx
	mov	WORD PTR 48[rbx], ax
	mov	WORD PTR [rsi], dx
	mov	DWORD PTR 0[rbp], 0
	call	DrawBackground
	movzx	eax, BYTE PTR 269[rbx]
	movsx	dx, BYTE PTR 271[rbx]
	cmp	al, 1
	ja	.L8
	cmp	dl, 1
	jle	.L6
.L8:
	mov	ecx, eax
	or	WORD PTR [rsi], 512
	not	ecx
	mov	DWORD PTR 4[rbp], 15728640
	lea	eax, [rcx+rax*8]
	lea	rcx, 96[rbx]
	add	eax, edx
	lea	rdx, sTilemapsPlayerNotifs[rip]
	movzx	eax, ax
	movzx	eax, WORD PTR [rdx+rax*2]
	mov	WORD PTR 144[rbx], ax
	call	DrawBackground
	jmp	.L6
	.seh_endproc
	.p2align 4
	.globl	sub_8094570
	.def	sub_8094570;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8094570
sub_8094570:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	rax, QWORD PTR [rbx]
	mov	rdx, QWORD PTR 24[rax]
	mov	eax, DWORD PTR 272[rdx]
	test	eax, eax
	je	.L12
	sub	eax, 1
	mov	DWORD PTR 272[rdx], eax
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L12:
	call	CreateTitleScreen
	mov	rcx, QWORD PTR [rbx]
	add	rsp, 32
	pop	rbx
	jmp	TaskDestroy
	.seh_endproc
	.p2align 4
	.globl	sub_8094530
	.def	sub_8094530;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_8094530
sub_8094530:
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
	movzx	eax, BYTE PTR 269[rbx]
	test	al, al
	je	.L16
	lea	rdi, 192[rbx]
	cmp	al, 3
	ja	.L23
.L17:
	mov	rcx, rdi
	call	UpdateSpriteAnimation
	mov	rcx, rdi
	call	DisplaySprite
.L16:
	mov	eax, DWORD PTR 272[rbx]
	test	eax, eax
	je	.L18
	sub	eax, 1
	mov	DWORD PTR 272[rbx], eax
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L18:
	mov	rax, QWORD PTR [rsi]
	lea	rdx, sub_80944EC[rip]
	mov	DWORD PTR 272[rbx], 180
	mov	QWORD PTR 40[rax], rdx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	cmp	BYTE PTR 270[rbx], 0
	je	.L17
	mov	eax, 810
	mov	BYTE PTR 240[rbx], 1
	mov	WORD PTR 210[rbx], ax
	jmp	.L17
	.seh_endproc
	.p2align 4
	.globl	sub_80944EC
	.def	sub_80944EC;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80944EC
sub_80944EC:
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
	mov	ecx, 1
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, BYTE PTR 269[rbx]
	mov	WORD PTR 258[rbx], cx
	lea	rdi, 256[rbx]
	test	al, al
	je	.L25
	lea	rbp, 192[rbx]
	cmp	al, 3
	ja	.L31
.L26:
	mov	rcx, rbp
	call	UpdateSpriteAnimation
	mov	rcx, rbp
	call	DisplaySprite
.L25:
	mov	rcx, rdi
	call	UpdateScreenFade
	cmp	al, 1
	jne	.L24
	xor	eax, eax
	lea	rdx, sub_8094570[rip]
	mov	WORD PTR 260[rbx], ax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdx
.L24:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L31:
	cmp	BYTE PTR 270[rbx], 0
	je	.L26
	mov	edx, 810
	mov	BYTE PTR 240[rbx], 1
	mov	WORD PTR 210[rbx], dx
	jmp	.L26
	.seh_endproc
	.p2align 4
	.globl	sub_809449C
	.def	sub_809449C;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_809449C
sub_809449C:
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
	mov	ecx, 2
	mov	rax, QWORD PTR [rsi]
	mov	rbx, QWORD PTR 24[rax]
	movzx	eax, BYTE PTR 269[rbx]
	mov	WORD PTR 258[rbx], cx
	lea	rdi, 256[rbx]
	test	al, al
	je	.L33
	lea	rbp, 192[rbx]
	cmp	al, 3
	ja	.L39
.L34:
	mov	rcx, rbp
	call	UpdateSpriteAnimation
	mov	rcx, rbp
	call	DisplaySprite
.L33:
	mov	rcx, rdi
	call	UpdateScreenFade
	cmp	al, 1
	jne	.L32
	xor	eax, eax
	lea	rdx, sub_8094530[rip]
	mov	BYTE PTR 270[rbx], 1
	mov	WORD PTR 260[rbx], ax
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR 40[rax], rdx
.L32:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L39:
	cmp	BYTE PTR 270[rbx], 0
	je	.L34
	mov	edx, 810
	mov	BYTE PTR 240[rbx], 1
	mov	WORD PTR 210[rbx], dx
	jmp	.L34
	.seh_endproc
	.p2align 4
	.globl	CreateMissingChaosEmaraldsCutScene
	.def	CreateMissingChaosEmaraldsCutScene;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateMissingChaosEmaraldsCutScene
CreateMissingChaosEmaraldsCutScene:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gDispCnt[rip]
	mov	ebx, 4160
	xor	esi, esi
	movzx	edi, WORD PTR .LC4[rip]
	mov	rdx, QWORD PTR .LC5[rip]
	mov	ecx, 3
	mov	r9d, -2063581184
	mov	WORD PTR [rax], bx
	mov	rax, QWORD PTR .refptr.gBgCntRegs[rip]
	mov	r8, QWORD PTR .refptr.VRAM[rip]
	mov	DWORD PTR [rax], 470097411
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown1[rip]
	mov	WORD PTR [rax], di
	mov	rax, QWORD PTR .refptr.gBgSprites_Unknown2[rip]
	mov	DWORD PTR 60[rsp], 0
	mov	QWORD PTR [rax], rdx
	lea	rdx, 60[rsp]
	call	DmaSet
	lea	rax, TaskDestructor_80945A0[rip]
	xor	r9d, r9d
	mov	edx, 288
	mov	QWORD PTR 32[rsp], rax
	mov	r8d, 12544
	lea	rcx, Task_8094360[rip]
	call	TaskCreate
	mov	rbx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rax]
	mov	WORD PTR 268[rbx], si
	mov	DWORD PTR 272[rbx], 240
	mov	BYTE PTR 270[rbx], 0
	movzx	eax, BYTE PTR 6[rdx]
	mov	BYTE PTR 271[rbx], al
	mov	rax, QWORD PTR .refptr.gSelectedCharacter[rip]
	movsx	rax, BYTE PTR [rax]
	cmp	BYTE PTR 12[rdx+rax], 0
	js	.L51
.L41:
	call	m4aMPlayAllStop
	cmp	BYTE PTR 269[rbx], 0
	jne	.L44
	mov	ecx, 415
	call	m4aSongNumStart
.L45:
	mov	rax, QWORD PTR .LC6[rip]
	mov	rsi, QWORD PTR .refptr.VRAM[rip]
	mov	r11d, 1
	lea	rcx, 192[rbx]
	cmp	BYTE PTR 269[rbx], 3
	mov	WORD PTR 256[rbx], r11w
	mov	QWORD PTR 260[rbx], rax
	lea	rax, 65536[rsi]
	mov	QWORD PTR 200[rbx], rax
	jbe	.L48
	lea	r8, 68096[rsi]
	mov	edx, 810
	mov	eax, 90
.L46:
	mov	WORD PTR 232[rbx], ax
	xor	eax, eax
	mov	WORD PTR 208[rbx], ax
	movabs	rax, 59954170039369728
	mov	QWORD PTR 280[rbx], r8
	mov	WORD PTR 210[rbx], dx
	mov	WORD PTR 240[rbx], di
	mov	DWORD PTR 234[rbx], 0
	mov	BYTE PTR 242[rbx], 16
	mov	BYTE PTR 245[rbx], 0
	mov	QWORD PTR 224[rbx], rax
	mov	DWORD PTR 248[rbx], -1
	call	UpdateSpriteAnimation
	lea	rax, 61440[rsi]
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	QWORD PTR 8[rbx], rsi
	mov	r9d, 30
	mov	r10d, 1
	mov	QWORD PTR 24[rbx], rax
	lea	rax, 16384[rsi]
	add	rsi, 57344
	cmp	BYTE PTR 269[rbx], 1
	mov	QWORD PTR 104[rbx], rax
	sbb	eax, eax
	add	eax, 7
	mov	WORD PTR 18[rbx], dx
	mov	DWORD PTR 44[rbx], 0
	mov	QWORD PTR 50[rbx], 0
	mov	DWORD PTR 58[rbx], 1310750
	mov	BYTE PTR 62[rbx], 0
	mov	WORD PTR 66[rbx], cx
	mov	WORD PTR 114[rbx], r8w
	mov	QWORD PTR 120[rbx], rsi
	mov	DWORD PTR 140[rbx], 0
	mov	QWORD PTR 146[rbx], 0
	mov	WORD PTR 154[rbx], r9w
	mov	WORD PTR 156[rbx], ax
	mov	BYTE PTR 158[rbx], 0
	mov	WORD PTR 162[rbx], r10w
	add	rsp, 64
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L44:
	mov	ecx, 408
	call	m4aSongNumStart
	jmp	.L45
	.p2align 4,,10
	.p2align 3
.L48:
	lea	r8, 67072[rsi]
	mov	edx, 1075
	mov	eax, 85
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L51:
	mov	BYTE PTR 268[rbx], 1
	lea	rax, 21[rdx]
	add	rdx, 25
.L43:
	cmp	BYTE PTR [rax], 0
	je	.L42
	add	BYTE PTR 269[rbx], 1
.L42:
	add	rax, 1
	cmp	rdx, rax
	jne	.L43
	jmp	.L41
	.seh_endproc
	.p2align 4
	.globl	sub_80945A4
	.def	sub_80945A4;	.scl	2;	.type	32;	.endef
	.seh_proc	sub_80945A4
sub_80945A4:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	movzx	eax, BYTE PTR 269[rcx]
	test	al, al
	je	.L52
	lea	rbx, 192[rcx]
	cmp	al, 3
	jbe	.L54
	cmp	BYTE PTR 270[rcx], 0
	je	.L54
	mov	eax, 810
	mov	BYTE PTR 240[rcx], 1
	mov	WORD PTR 210[rcx], ax
.L54:
	mov	rcx, rbx
	call	UpdateSpriteAnimation
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L52:
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 32
sTilemapsPlayerNotifs:
	.word	175
	.word	176
	.word	178
	.word	177
	.word	180
	.word	179
	.word	181
	.word	181
	.word	182
	.word	184
	.word	183
	.word	186
	.word	185
	.word	187
	.word	187
	.word	188
	.word	190
	.word	189
	.word	192
	.word	191
	.word	193
	.word	193
	.word	194
	.word	196
	.word	195
	.word	198
	.word	197
	.word	199
	.word	199
	.word	200
	.word	202
	.word	201
	.word	204
	.word	203
	.align 2
.LC4:
	.byte	0
	.byte	-1
	.align 8
.LC5:
	.byte	0
	.byte	0
	.byte	-1
	.byte	32
	.byte	0
	.byte	0
	.byte	-1
	.byte	32
	.align 8
.LC6:
	.word	0
	.word	128
	.word	16383
	.word	0
	.ident	"GCC: (GNU) 13-win32"
	.def	DrawBackground;	.scl	2;	.type	32;	.endef
	.def	CreateTitleScreen;	.scl	2;	.type	32;	.endef
	.def	TaskDestroy;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	UpdateScreenFade;	.scl	2;	.type	32;	.endef
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayAllStop;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
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
