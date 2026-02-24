	.file	"<stdin>"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	Task_8019E70
	.def	Task_8019E70;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_8019E70
Task_8019E70:
	.seh_endprologue
	mov	rax, QWORD PTR .refptr.gCurTask[rip]
	mov	r8, QWORD PTR .refptr.gCamera[rip]
	mov	rax, QWORD PTR [rax]
	mov	rcx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gMultiplayerPlayerTasks[rip]
	movzx	edx, BYTE PTR 64[rcx]
	mov	rax, QWORD PTR [rax+rdx*8]
	mov	rdx, QWORD PTR 24[rax]
	movzx	eax, WORD PTR 96[rdx]
	sub	ax, WORD PTR [r8]
	mov	WORD PTR 38[rcx], ax
	mov	rax, QWORD PTR .refptr.gStageFlags[rip]
	mov	r8d, DWORD PTR 4[r8]
	test	BYTE PTR [rax], -128
	jne	.L2
	mov	eax, -32
	sub	eax, r8d
	add	ax, WORD PTR 98[rdx]
	mov	WORD PTR 40[rcx], ax
	jmp	DisplaySprite
	.p2align 4,,10
	.p2align 3
.L2:
	mov	eax, 32
	sub	eax, r8d
	add	ax, WORD PTR 98[rdx]
	mov	WORD PTR 40[rcx], ax
	jmp	DisplaySprite
	.seh_endproc
	.p2align 4
	.globl	TaskDestructor_8019EF4
	.def	TaskDestructor_8019EF4;	.scl	2;	.type	32;	.endef
	.seh_proc	TaskDestructor_8019EF4
TaskDestructor_8019EF4:
	.seh_endprologue
	mov	rax, QWORD PTR 24[rcx]
	mov	rcx, QWORD PTR 8[rax]
	jmp	VramFree
	.seh_endproc
	.p2align 4
	.globl	Task_801A04C
	.def	Task_801A04C;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_801A04C
Task_801A04C:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, QWORD PTR .refptr.gCurTask[rip]
	mov	edx, 0
	mov	rcx, QWORD PTR .refptr.gRoomEventQueueWritePos[rip]
	mov	rax, QWORD PTR [rbx]
	mov	rsi, QWORD PTR 24[rax]
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rax], 5
	mov	eax, 426
	cmove	eax, edx
	mov	rdx, QWORD PTR .refptr.gRoomEventQueueSendPos[rip]
	movzx	edx, BYTE PTR [rdx]
	cmp	BYTE PTR [rcx], dl
	je	.L12
.L6:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L12:
	movzx	edx, WORD PTR [rsi]
	lea	ecx, 1[rdx]
	mov	WORD PTR [rsi], cx
	cmp	eax, edx
	jnb	.L6
	mov	rax, QWORD PTR .refptr.gBldRegs[rip]
	xor	ecx, ecx
	mov	edx, 191
	mov	WORD PTR 4[rax], cx
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_BGM[rip]
	mov	WORD PTR [rax], dx
	mov	edx, 4
	call	m4aMPlayFadeOut
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_SE1[rip]
	mov	edx, 4
	call	m4aMPlayFadeOut
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_SE2[rip]
	mov	edx, 4
	call	m4aMPlayFadeOut
	mov	rcx, QWORD PTR .refptr.gMPlayInfo_SE3[rip]
	mov	edx, 4
	call	m4aMPlayFadeOut
	mov	rax, QWORD PTR [rbx]
	xor	r8d, r8d
	mov	WORD PTR [rsi], r8w
	lea	rsi, Task_TransitionToResultsScreen[rip]
	mov	QWORD PTR 40[rax], rsi
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	Task_TransitionToResultsScreen
	.def	Task_TransitionToResultsScreen;	.scl	2;	.type	32;	.endef
	.seh_proc	Task_TransitionToResultsScreen
Task_TransitionToResultsScreen:
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
	mov	rdx, QWORD PTR 24[rax]
	movzx	eax, WORD PTR [rdx]
	add	eax, 64
	mov	WORD PTR [rdx], ax
	mov	ecx, eax
	mov	rdx, QWORD PTR .refptr.gBldRegs[rip]
	shr	cx, 8
	mov	WORD PTR 4[rdx], cx
	cmp	ax, 4095
	jbe	.L13
	mov	rdi, QWORD PTR .refptr.gGameMode[rip]
	xor	ecx, ecx
	mov	eax, 191
	lea	rsi, 44[rsp]
	mov	WORD PTR [rdx], ax
	cmp	BYTE PTR [rdi], 5
	mov	WORD PTR 4[rdx], cx
	je	.L50
.L15:
	mov	rbp, QWORD PTR .refptr.gMultiplayerConnections[rip]
	mov	r14, QWORD PTR .refptr.REG_BASE[rip]
	xor	ebx, ebx
	xor	r13d, r13d
	mov	r15, QWORD PTR .refptr.gMultiplayerRanks[rip]
	mov	r12, QWORD PTR .refptr.gMultiplayerNames[rip]
.L32:
	movzx	r8d, BYTE PTR 0[rbp]
	mov	ecx, ebx
	sar	r8d, cl
	and	r8d, 1
	je	.L30
	movzx	eax, BYTE PTR 296[r14]
	shr	al, 4
	and	eax, 3
	cmp	eax, ebx
	je	.L30
	movzx	eax, BYTE PTR 296[r14]
	movzx	edx, BYTE PTR [rbx+r15]
	shr	al, 4
	and	eax, 3
	cmp	BYTE PTR [r15+rax], dl
	jl	.L34
	movzx	eax, BYTE PTR 296[r14]
	shr	al, 4
	and	eax, 3
	cmp	dl, BYTE PTR [r15+rax]
	jl	.L35
	cmp	r13w, 1
	mov	r8d, 2
	setne	r13b
	movzx	r13d, r13b
	add	r13d, 1
.L31:
	lea	rax, [rbx+rbx*2]
	lea	rdx, [r12+rax*4]
	mov	rax, QWORD PTR .refptr.gMultiplayerIds[rip]
	mov	ecx, DWORD PTR [rax+rbx*4]
	call	RecordMultiplayerResult
.L30:
	add	rbx, 1
	cmp	rbx, 4
	jne	.L32
	movsx	ecx, r13w
	call	RecordOwnMultiplayerResult
	call	WriteSaveGame
	xor	ecx, ecx
	mov	edx, 65535
	call	TasksDestroyInPriorityRange
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueIndex[rip]
	cmp	BYTE PTR [rdi], 5
	mov	DWORD PTR 44[rsp], 0
	mov	r8, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	r9d, -2063597563
	mov	ecx, 3
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueCursor[rip]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR .refptr.gBgSpritesCount[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyQueueIndex[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyCursor[rip]
	mov	BYTE PTR [rax], dl
	mov	rdx, rsi
	je	.L33
.L49:
	call	DmaSet
	mov	ecx, 1
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	CreateMultiplayerResultsScreen
	.p2align 4,,10
	.p2align 3
.L13:
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
.L34:
	xor	r8d, r8d
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L35:
	mov	r13d, 1
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L50:
	mov	DWORD PTR 40[rsp], 50462976
	call	m4aMPlayAllStop
	mov	r10d, 3
	lea	r11, 40[rsp]
	mov	rax, QWORD PTR .refptr.gMultiplayerCharRings[rip]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR 44[rsp], eax
.L20:
	mov	rax, rsi
	mov	rdx, r11
	xor	ecx, ecx
.L17:
	movzx	r9d, BYTE PTR [rax]
	movzx	r8d, BYTE PTR 1[rax]
	add	ecx, 1
	cmp	r9b, r8b
	jnb	.L16
	mov	BYTE PTR 1[rax], r9b
	movzx	r9d, BYTE PTR [rdx]
	mov	BYTE PTR [rax], r8b
	movzx	r8d, BYTE PTR 1[rdx]
	mov	BYTE PTR 1[rdx], r9b
	mov	BYTE PTR [rdx], r8b
.L16:
	add	rax, 1
	add	rdx, 1
	cmp	ecx, r10d
	jb	.L17
	sub	r10d, 1
	jne	.L20
	movzx	r8d, BYTE PTR 44[rsp]
	movzx	ebx, BYTE PTR 45[rsp]
	xor	eax, eax
	movzx	ebp, BYTE PTR 40[rsp]
	mov	r10, QWORD PTR .refptr.gMultiplayerRanks[rip]
	mov	r9, QWORD PTR .refptr.gMultiplayerCharacters[rip]
.L19:
	test	rax, rax
	je	.L22
.L47:
	movzx	ecx, BYTE PTR [r11+rax]
	cmp	BYTE PTR [rsi+rax], r8b
	sete	dl
	mov	BYTE PTR [r10+rcx], al
	add	edx, 1
	add	rax, 1
	mov	BYTE PTR [r9+rcx], dl
	cmp	rax, 4
	jne	.L19
	cmp	BYTE PTR [rdi], 5
	jne	.L15
	xor	ecx, ecx
	mov	edx, 65535
	call	TasksDestroyInPriorityRange
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueIndex[rip]
	cmp	BYTE PTR [rdi], 5
	mov	DWORD PTR 36[rsp], 0
	mov	r8, QWORD PTR .refptr.gMultiSioSend[rip]
	mov	r9d, -2063597563
	mov	ecx, 3
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gBackgroundsCopyQueueCursor[rip]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR .refptr.gBgSpritesCount[rip]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyQueueIndex[rip]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR .refptr.gVramGraphicsCopyCursor[rip]
	mov	BYTE PTR [rax], dl
	lea	rdx, 36[rsp]
	jne	.L49
.L33:
	call	DmaSet
	mov	ecx, 1
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	CreateMultiplayerSinglePakResultsScreen
	.p2align 4,,10
	.p2align 3
.L22:
	movsx	rax, ebp
	mov	BYTE PTR [r10+rax], 0
	cmp	r8b, bl
	je	.L51
	mov	rdx, QWORD PTR .refptr.gMPRingCollectWins[rip]
	mov	BYTE PTR [r9+rax], 0
	add	BYTE PTR [rdx+rax], 1
.L26:
	mov	eax, 1
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L51:
	mov	BYTE PTR [r9+rax], 2
	jmp	.L26
	.seh_endproc
	.p2align 4
	.globl	CreateMultiplayerFinishResult
	.def	CreateMultiplayerFinishResult;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateMultiplayerFinishResult
CreateMultiplayerFinishResult:
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
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	r13, QWORD PTR .refptr.gMultiplayerRanks[rip]
	movzx	ebp, cl
	mov	r12d, ecx
	mov	ebx, edx
	mov	r14d, edx
	cmp	BYTE PTR 0[r13+rbp], -1
	je	.L77
	add	rsp, 48
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
.L77:
	lea	rax, TaskDestructor_8019EF4[rip]
	mov	edx, 72
	xor	r9d, r9d
	mov	r8d, 8208
	mov	QWORD PTR 32[rsp], rax
	lea	rcx, Task_8019E70[rip]
	call	TaskCreate
	mov	rdx, QWORD PTR .refptr.gMultiplayerPlayerTasks[rip]
	mov	rdi, QWORD PTR 24[rax]
	xor	eax, eax
.L55:
	cmp	QWORD PTR [rdx+rax*8], 0
	je	.L54
	add	rax, 1
	cmp	rax, 4
	jne	.L55
	mov	esi, 4
.L56:
	cmp	bl, 5
	ja	.L57
	xor	ecx, ecx
	mov	BYTE PTR 0[r13+rbp], bl
	mov	WORD PTR 16[rdi], cx
	mov	ecx, 12
	mov	BYTE PTR 64[rdi], r12b
	mov	BYTE PTR 65[rdi], bl
	call	VramMalloc
	mov	QWORD PTR 8[rdi], rax
	cmp	bl, 5
	jne	.L78
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	r14d, 1
	mov	rax, QWORD PTR [rax]
	cmp	BYTE PTR 6[rax], 2
	sbb	eax, eax
	add	ax, 1102
.L62:
	mov	WORD PTR 18[rdi], ax
	mov	rcx, rdi
	mov	eax, 4351
	mov	BYTE PTR 48[rdi], r14b
	mov	DWORD PTR 42[rdi], 0
	mov	WORD PTR 49[rdi], ax
	mov	BYTE PTR 53[rdi], 0
	mov	DWORD PTR 32[rdi], 0
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	jmp	UpdateSpriteAnimation
	.p2align 4,,10
	.p2align 3
.L57:
	lea	eax, -1[rsi]
	xor	edx, edx
	mov	ecx, 12
	mov	BYTE PTR 0[r13+rbp], al
	mov	BYTE PTR 64[rdi], r12b
	mov	BYTE PTR 65[rdi], bl
	mov	WORD PTR 16[rdi], dx
	call	VramMalloc
	mov	QWORD PTR 8[rdi], rax
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
.L60:
	mov	rax, QWORD PTR [rax]
	movzx	eax, BYTE PTR 6[rax]
	cmp	al, 1
	seta	al
	movzx	eax, al
	add	ax, 1101
	cmp	esi, 2
	je	.L62
	mov	rdx, QWORD PTR .refptr.gGameMode[rip]
	cmp	BYTE PTR [rdx], 4
	je	.L62
	lea	r14d, 3[rbx]
	jmp	.L62
	.p2align 4,,10
	.p2align 3
.L78:
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	mov	rdx, QWORD PTR [rax]
	movzx	edx, BYTE PTR 6[rdx]
	cmp	bl, 4
	jne	.L60
	xor	eax, eax
	cmp	dl, 1
	mov	r14d, 2
	seta	al
	add	ax, 1101
	jmp	.L62
	.p2align 4,,10
	.p2align 3
.L54:
	mov	esi, eax
	jmp	.L56
	.seh_endproc
	.p2align 4
	.globl	CreateMultiplayerFinishHandler
	.def	CreateMultiplayerFinishHandler;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateMultiplayerFinishHandler
CreateMultiplayerFinishHandler:
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
	mov	edx, 2
	xor	r9d, r9d
	mov	r8d, 8192
	lea	rcx, Task_801A04C[rip]
	mov	QWORD PTR 32[rsp], 0
	call	TaskCreate
	xor	edx, edx
	mov	rax, QWORD PTR 24[rax]
	mov	WORD PTR [rax], dx
	mov	rax, QWORD PTR .refptr.gGameMode[rip]
	movzx	esi, BYTE PTR [rax]
	cmp	sil, 5
	je	.L79
	mov	rax, QWORD PTR .refptr.gMusicManagerState[rip]
	mov	rdx, QWORD PTR .refptr.gRingCount[rip]
	mov	BYTE PTR [rax], -1
	mov	rax, QWORD PTR .refptr.gLoadedSaveGame[rip]
	movsx	edx, WORD PTR [rdx]
	mov	rax, QWORD PTR [rax]
	add	DWORD PTR 880[rax], edx
	mov	rax, QWORD PTR .refptr.gCourseTime[rip]
	mov	eax, DWORD PTR [rax]
	cmp	eax, 36000
	ja	.L81
	mov	rdx, QWORD PTR .refptr.gStageFlags[rip]
	test	BYTE PTR [rdx], 4
	je	.L79
	test	eax, eax
	jne	.L79
.L81:
	mov	rdi, QWORD PTR .refptr.gMultiplayerPlayerTasks[rip]
	cmp	sil, 4
	je	.L82
	mov	rdi, QWORD PTR .refptr.gMultiplayerPlayerTasks[rip]
	mov	rcx, QWORD PTR .refptr.gMultiplayerRanks[rip]
	xor	eax, eax
	xor	edx, edx
.L85:
	cmp	QWORD PTR [rdi+rax*8], 0
	je	.L86
	cmp	BYTE PTR [rax+rcx], -1
	je	.L84
	add	edx, 1
.L84:
	add	rax, 1
	cmp	rax, 4
	jne	.L85
.L86:
	mov	esi, 4
	test	edx, edx
	jne	.L103
.L82:
	mov	rbp, QWORD PTR .refptr.gMultiplayerRanks[rip]
	xor	ebx, ebx
.L88:
	mov	rax, QWORD PTR [rdi+rbx*8]
	test	rax, rax
	je	.L79
	cmp	BYTE PTR [rbx+rbp], -1
	je	.L104
.L87:
	add	rbx, 1
	cmp	rbx, 4
	jne	.L88
.L79:
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.p2align 4,,10
	.p2align 3
.L104:
	mov	rax, QWORD PTR 24[rax]
	movzx	edx, sil
	mov	ecx, ebx
	or	DWORD PTR 108[rax], 1
	call	CreateMultiplayerFinishResult
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L103:
	sub	eax, 1
	mov	esi, 5
	cmp	eax, edx
	cmove	esi, edx
	jmp	.L82
	.seh_endproc
	.globl	sMPFinishTileInfo
	.section .rdata,"dr"
	.align 32
sMPFinishTileInfo:
	.long	0
	.word	1101
	.byte	0
	.space 1
	.long	0
	.word	1101
	.byte	1
	.space 1
	.long	0
	.word	1101
	.byte	2
	.space 1
	.long	0
	.word	1101
	.byte	3
	.space 1
	.long	0
	.word	1101
	.byte	4
	.space 1
	.long	0
	.word	1101
	.byte	5
	.space 1
	.long	0
	.word	1101
	.byte	6
	.space 1
	.long	0
	.word	1102
	.byte	0
	.space 1
	.long	0
	.word	1102
	.byte	1
	.space 1
	.long	0
	.word	1102
	.byte	2
	.space 1
	.long	0
	.word	1102
	.byte	3
	.space 1
	.long	0
	.word	1102
	.byte	4
	.space 1
	.long	0
	.word	1102
	.byte	5
	.space 1
	.long	0
	.word	1102
	.byte	6
	.space 1
	.ident	"GCC: (GNU) 13-win32"
	.def	DisplaySprite;	.scl	2;	.type	32;	.endef
	.def	VramFree;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayFadeOut;	.scl	2;	.type	32;	.endef
	.def	RecordMultiplayerResult;	.scl	2;	.type	32;	.endef
	.def	RecordOwnMultiplayerResult;	.scl	2;	.type	32;	.endef
	.def	WriteSaveGame;	.scl	2;	.type	32;	.endef
	.def	TasksDestroyInPriorityRange;	.scl	2;	.type	32;	.endef
	.def	DmaSet;	.scl	2;	.type	32;	.endef
	.def	CreateMultiplayerResultsScreen;	.scl	2;	.type	32;	.endef
	.def	m4aMPlayAllStop;	.scl	2;	.type	32;	.endef
	.def	CreateMultiplayerSinglePakResultsScreen;	.scl	2;	.type	32;	.endef
	.def	TaskCreate;	.scl	2;	.type	32;	.endef
	.def	VramMalloc;	.scl	2;	.type	32;	.endef
	.def	UpdateSpriteAnimation;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.gCourseTime, "dr"
	.globl	.refptr.gCourseTime
	.linkonce	discard
.refptr.gCourseTime:
	.quad	gCourseTime
	.section	.rdata$.refptr.gRingCount, "dr"
	.globl	.refptr.gRingCount
	.linkonce	discard
.refptr.gRingCount:
	.quad	gRingCount
	.section	.rdata$.refptr.gMusicManagerState, "dr"
	.globl	.refptr.gMusicManagerState
	.linkonce	discard
.refptr.gMusicManagerState:
	.quad	gMusicManagerState
	.section	.rdata$.refptr.gLoadedSaveGame, "dr"
	.globl	.refptr.gLoadedSaveGame
	.linkonce	discard
.refptr.gLoadedSaveGame:
	.quad	gLoadedSaveGame
	.section	.rdata$.refptr.gMultiplayerIds, "dr"
	.globl	.refptr.gMultiplayerIds
	.linkonce	discard
.refptr.gMultiplayerIds:
	.quad	gMultiplayerIds
	.section	.rdata$.refptr.gMultiplayerNames, "dr"
	.globl	.refptr.gMultiplayerNames
	.linkonce	discard
.refptr.gMultiplayerNames:
	.quad	gMultiplayerNames
	.section	.rdata$.refptr.REG_BASE, "dr"
	.globl	.refptr.REG_BASE
	.linkonce	discard
.refptr.REG_BASE:
	.quad	REG_BASE
	.section	.rdata$.refptr.gMultiplayerConnections, "dr"
	.globl	.refptr.gMultiplayerConnections
	.linkonce	discard
.refptr.gMultiplayerConnections:
	.quad	gMultiplayerConnections
	.section	.rdata$.refptr.gMultiSioSend, "dr"
	.globl	.refptr.gMultiSioSend
	.linkonce	discard
.refptr.gMultiSioSend:
	.quad	gMultiSioSend
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
	.section	.rdata$.refptr.gMPRingCollectWins, "dr"
	.globl	.refptr.gMPRingCollectWins
	.linkonce	discard
.refptr.gMPRingCollectWins:
	.quad	gMPRingCollectWins
	.section	.rdata$.refptr.gMultiplayerCharacters, "dr"
	.globl	.refptr.gMultiplayerCharacters
	.linkonce	discard
.refptr.gMultiplayerCharacters:
	.quad	gMultiplayerCharacters
	.section	.rdata$.refptr.gMultiplayerRanks, "dr"
	.globl	.refptr.gMultiplayerRanks
	.linkonce	discard
.refptr.gMultiplayerRanks:
	.quad	gMultiplayerRanks
	.section	.rdata$.refptr.gMultiplayerCharRings, "dr"
	.globl	.refptr.gMultiplayerCharRings
	.linkonce	discard
.refptr.gMultiplayerCharRings:
	.quad	gMultiplayerCharRings
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
	.section	.rdata$.refptr.gBldRegs, "dr"
	.globl	.refptr.gBldRegs
	.linkonce	discard
.refptr.gBldRegs:
	.quad	gBldRegs
	.section	.rdata$.refptr.gRoomEventQueueSendPos, "dr"
	.globl	.refptr.gRoomEventQueueSendPos
	.linkonce	discard
.refptr.gRoomEventQueueSendPos:
	.quad	gRoomEventQueueSendPos
	.section	.rdata$.refptr.gRoomEventQueueWritePos, "dr"
	.globl	.refptr.gRoomEventQueueWritePos
	.linkonce	discard
.refptr.gRoomEventQueueWritePos:
	.quad	gRoomEventQueueWritePos
	.section	.rdata$.refptr.gGameMode, "dr"
	.globl	.refptr.gGameMode
	.linkonce	discard
.refptr.gGameMode:
	.quad	gGameMode
	.section	.rdata$.refptr.gStageFlags, "dr"
	.globl	.refptr.gStageFlags
	.linkonce	discard
.refptr.gStageFlags:
	.quad	gStageFlags
	.section	.rdata$.refptr.gCamera, "dr"
	.globl	.refptr.gCamera
	.linkonce	discard
.refptr.gCamera:
	.quad	gCamera
	.section	.rdata$.refptr.gMultiplayerPlayerTasks, "dr"
	.globl	.refptr.gMultiplayerPlayerTasks
	.linkonce	discard
.refptr.gMultiplayerPlayerTasks:
	.quad	gMultiplayerPlayerTasks
	.section	.rdata$.refptr.gCurTask, "dr"
	.globl	.refptr.gCurTask
	.linkonce	discard
.refptr.gCurTask:
	.quad	gCurTask
