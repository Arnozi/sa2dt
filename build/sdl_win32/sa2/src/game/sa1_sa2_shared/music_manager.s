	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.def	MusManager_UpdateBgmParams;	.scl	3;	.type	32;	.endef
	.seh_proc	MusManager_UpdateBgmParams
MusManager_UpdateBgmParams:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gMPlayInfo_BGM[rip]
	mov	rcx, rbx
	call	m4aMPlayImmInit
	mov	r8d, 4
	mov	edx, 255
	mov	rcx, rbx
	call	m4aMPlayVolumeControl
	mov	edx, 4
	mov	rcx, rbx
	call	m4aMPlayFadeIn
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	test	BYTE PTR 59[rax], 4
	jne	.L4
	add	rsp, 32
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	mov	edx, 512
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	m4aMPlayTempoControl
	.seh_endproc
	.p2align 4
	.globl	Task_StageMusicManager
	.def	Task_StageMusicManager;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_StageMusicManager
Task_StageMusicManager:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gMPlayTable[rip]
	mov	rbx, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	rax, QWORD PTR [rax]
	cmp	BYTE PTR [rbx], 0
	mov	rax, QWORD PTR [rax]
	jne	.L5
	mov	rsi, QWORD PTR .refptr.gPlayer[rip]
	test	BYTE PTR 36[rsi], -128
	jne	.L5
	movzx	ecx, BYTE PTR 1[rbx]
	mov	r8d, ecx
	and	r8d, -16
	cmp	r8b, 48
	je	.L39
	movzx	edx, WORD PTR 6[rbx]
	test	dx, dx
	jne	.L40
	mov	rdx, QWORD PTR .refptr.gSongTable[rip]
	cmp	QWORD PTR 496[rdx], rax
	je	.L41
.L12:
	cmp	BYTE PTR 4[rbx], 0
	jne	.L42
	cmp	QWORD PTR 464[rdx], rax
	je	.L43
	cmp	rax, QWORD PTR 6512[rdx]
	je	.L15
	test	BYTE PTR 59[rsi], 2
	je	.L15
	cmp	BYTE PTR 2[rbx], 0
	je	.L44
.L16:
	mov	BYTE PTR 2[rbx], 0
	mov	ecx, 29
	mov	BYTE PTR 5[rbx], 1
.L37:
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	m4aSongNumStart
	.p2align 4,,10
	.p2align 3
.L40:
	shr	dx, 4
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_BGM[rip]
	movzx	edx, dx
	call	m4aMPlayFadeOutTemporarily
	test	BYTE PTR 59[rsi], 4
	jne	.L45
.L11:
	xor	ecx, ecx
	mov	BYTE PTR [rbx], -1
	mov	WORD PTR 6[rbx], cx
	mov	BYTE PTR 5[rbx], 1
.L5:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L39:
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_BGM[rip]
	call	MPlayStop
	and	BYTE PTR 1[rbx], 15
	mov	BYTE PTR [rbx], -1
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L15:
	cmp	BYTE PTR 2[rbx], 0
	jne	.L16
	cmp	BYTE PTR 3[rbx], 0
	jne	.L46
	cmp	r8b, 16
	je	.L47
	mov	rax, QWORD PTR .refptr.gMPlayInfo_BGM[rip]
	mov	eax, DWORD PTR 8[rax]
	test	ax, ax
	je	.L20
	test	eax, eax
	jns	.L5
.L20:
	cmp	r8b, 32
	je	.L48
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	and	ecx, 15
	lea	rdx, gLevelSongs[rip]
	movsx	eax, BYTE PTR [rax]
	add	eax, ecx
	cdqe
	movzx	ecx, WORD PTR [rdx+rax*2]
	call	m4aSongNumStartOrContinue
	cmp	BYTE PTR 5[rbx], 0
	je	.L5
	mov	BYTE PTR 5[rbx], 0
.L38:
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	MusManager_UpdateBgmParams
	.p2align 4,,10
	.p2align 3
.L45:
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_BGM[rip]
	mov	edx, 512
	call	m4aMPlayTempoControl
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L42:
	mov	eax, 256
	mov	ecx, 31
	mov	WORD PTR 4[rbx], ax
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L41:
	mov	r9, QWORD PTR .refptr.gMPlayInfo_BGM[rip]
	mov	r9d, DWORD PTR 8[r9]
	test	r9w, r9w
	je	.L12
	test	r9d, r9d
	js	.L12
	xor	edx, edx
	mov	BYTE PTR 5[rbx], 1
	mov	WORD PTR 2[rbx], dx
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L43:
	mov	rax, QWORD PTR .refptr.gMPlayInfo_BGM[rip]
	mov	eax, DWORD PTR 8[rax]
	test	ax, ax
	je	.L15
	test	eax, eax
	js	.L15
	test	BYTE PTR 59[rsi], 2
	jne	.L15
	mov	ecx, 29
	mov	BYTE PTR 5[rbx], 1
	add	rsp, 40
	pop	rbx
	pop	rsi
	jmp	m4aSongNumStop
	.p2align 4,,10
	.p2align 3
.L46:
	mov	BYTE PTR 3[rbx], 0
	mov	ecx, 407
	mov	BYTE PTR 5[rbx], 1
	jmp	.L37
.L47:
	mov	rax, QWORD PTR .refptr.gCurrentLevel[rip]
	and	ecx, 15
	mov	BYTE PTR 1[rbx], cl
	movzx	ecx, cl
	movsx	eax, BYTE PTR [rax]
	lea	edx, [rax+rcx]
	lea	rax, gLevelSongs[rip]
	movzx	ecx, WORD PTR [rax+rdx*2]
	jmp	.L37
.L44:
	mov	ecx, 29
	mov	BYTE PTR 5[rbx], 1
	call	m4aSongNumStart
	jmp	.L38
.L48:
	lea	rax, gUnkMusicMgrData[rip]
	movzx	ecx, WORD PTR [rax+rcx*2]
	call	m4aSongNumStart
	jmp	.L38
	.seh_endproc
	.p2align 4
	.globl	CreateStageMusicManager
	.def	CreateStageMusicManager;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateStageMusicManager
CreateStageMusicManager:
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	xor	r9d, r9d
	mov	r8d, 16384
	xor	edx, edx
	lea	rcx, Task_StageMusicManager[rip]
	mov	QWORD PTR 32[rsp], 0
	call	TaskCreate
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	QWORD PTR [rax], 0
	add	rsp, 56
	ret
	.seh_endproc
	.p2align 4
	.globl	MusManager_Fadeout
	.def	MusManager_Fadeout;	.scl	2;	.type	32;	.endef
	.seh_proc	MusManager_Fadeout
MusManager_Fadeout:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	shr	cx, 4
	movzx	edx, cx
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_BGM[rip]
	call	m4aMPlayFadeOutTemporarily
	mov	rax, QWORD PTR .refptr.gPlayer[rip]
	test	BYTE PTR 59[rax], 4
	jne	.L52
	add	rsp, 40
	ret
	.p2align 4,,10
	.p2align 3
.L52:
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_BGM[rip]
	mov	edx, 512
	add	rsp, 40
	jmp	m4aMPlayTempoControl
	.seh_endproc
	.globl	gUnkMusicMgrData
	.section .rdata,"dr"
	.align 2
gUnkMusicMgrData:
	.globl	gLevelSongs
	.align 4
gLevelSongs:
	.word	13
	.word	14
	.word	32
	.word	33
	.word	15
	.word	16
	.word	32
	.word	33
	.word	17
	.word	18
	.word	32
	.word	33
	.word	19
	.word	20
	.word	32
	.word	33
	.word	21
	.word	22
	.word	32
	.word	33
	.word	23
	.word	24
	.word	32
	.word	33
	.word	25
	.word	26
	.word	35
	.word	36
	.word	27
	.word	28
	.word	37
	.word	38
	.word	34
	.word	32
	.word	32
	.word	32
	.word	32
	.word	32
	.word	32
	.word	0
	.ident	"GCC: (GNU) 13-win32"
	.def	m4aMPlayImmInit;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayVolumeControl;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayFadeIn;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayTempoControl;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStart;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayFadeOutTemporarily;	.scl	2;	.type	32;	.endef
	.def	MPlayStop;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStartOrContinue;	.scl	2;	.type	32;	.endef
	.def	m4aSongNumStop;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gCurrentLevel, "dr"
	.globl	.refptr.gCurrentLevel
	.linkonce	discard
.refptr.gCurrentLevel:
	.quad	gCurrentLevel
	.section	.rdata$.refptr.gSongTable, "dr"
	.globl	.refptr.gSongTable
	.linkonce	discard
.refptr.gSongTable:
	.quad	gSongTable
	.section	.rdata$.refptr.gMusicManagerState, "dr"
	.globl	.refptr.gMusicManagerState
	.linkonce	discard
.refptr.gMusicManagerState:
	.quad	gMusicManagerState
	.section	.rdata$.refptr.gMPlayTable, "dr"
	.globl	.refptr.gMPlayTable
	.linkonce	discard
.refptr.gMPlayTable:
	.quad	gMPlayTable
	.section	.rdata$.refptr.gPlayer, "dr"
	.globl	.refptr.gPlayer
	.linkonce	discard
.refptr.gPlayer:
	.quad	gPlayer
	.section	.rdata$.refptr.gMPlayInfo_BGM, "dr"
	.globl	.refptr.gMPlayInfo_BGM
	.linkonce	discard
.refptr.gMPlayInfo_BGM:
	.quad	gMPlayInfo_BGM
